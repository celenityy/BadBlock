#!/bin/bash

set -euo pipefail

# Ensure this is never ran with xtrace...
set +x || exit 1

# Set-up our environment
if [[ -z "${BADBLOCK_SET_ENVS+x}" ]]; then
  /bin/bash $(dirname $0)/env.sh || exit 1
fi
source $(dirname $0)/env.sh || exit 1

# Include utilities
source "${BADBLOCK_UTILS}" || exit 1

if [[ "${BADBLOCK_CI}" != 1 ]]; then
  echo_red_text "ERROR: '$0' should only be called from CI!"
  exit 1
fi

# Create a secret key file
function create_key_file() {
  function print_usage() {
    echo "Usage: create_key_file 'key' 'path/to/key_file'"
  }

  if [[ -z "${1+x}" ]]; then
    echo_red_text 'ERROR: Please specify the secret key!'
    print_usage
    exit 1
  fi

  if [[ -z "${2+x}" ]]; then
    echo_red_text 'ERROR: Please specify the path to the key file!'
    print_usage
    exit 1
  fi

  # Ensure we have chmod
  verify_exec "${BADBLOCK_CHMOD}" 'BADBLOCK_CHMOD' || exit 1

  # Ensure we have dirname
  verify_exec "${BADBLOCK_DIRNAME}" 'BADBLOCK_DIRNAME' || exit 1

  # Ensure we have mkdir
  verify_exec "${BADBLOCK_MKDIR}" 'BADBLOCK_MKDIR' || exit 1

  # Ensure we have rm
  verify_exec "${BADBLOCK_RM}" 'BADBLOCK_RM' || exit 1

  # Ensure we have touch
  verify_exec "${BADBLOCK_TOUCH}" 'BADBLOCK_TOUCH' || exit 1

  local -r key="$1"
  local -r key_file="$2"
  local -r key_file_dir=$("${BADBLOCK_DIRNAME}" "${key_file}")

  echo_red_text "Creating key file: '${key_file}'..."

  # Ensure the key file doesn't already exist
  "${BADBLOCK_RM}" -f "${key_file}"

  # By default, we know the key file creation has not failed...
  local file_creation_failed=0

  # If necessary, create the key file directory
  if [[ ! -d "${key_file_dir}" ]]; then
    "${BADBLOCK_MKDIR}" -vp "${key_file_dir}" || local file_creation_failed=1
    local -r created_key_file_dir=1
  else
    local -r created_key_file_dir=0
  fi

  # Create the key file
  "${BADBLOCK_TOUCH}" "${key_file}" || local file_creation_failed=1
  "${BADBLOCK_CHMOD}" 600 "${key_file}" || local file_creation_failed=1
  echo -n "${key}" > "${key_file}" || local file_creation_failed=1

  # Ensure nothing went wrong...
  if [[ "${file_creation_failed}" != 1 ]]; then
    verify_file "${key_file}" || local file_creation_failed=1
  fi

  if [[ "${file_creation_failed}" == 1 ]]; then
    # If a directory was created just for this key file, remove it
    if [[ "${created_key_file_dir}" == 1 ]]; then
      "${BADBLOCK_RM}" -rf "${key_file_dir}"
    fi
    echo_red_text "ERROR: Unable to create key file: '${key_file}'!"
    exit 1
  else
    echo_green_text "SUCCESS: Created key file: '${key_file}'!"
  fi
}

# Prepare secrets for S3 storage
function prep_s3() {
  function print_usage() {
    echo "Usage: prep_s3 's3_access_key' 's3_bucket_name' 's3_endpoint' 's3_secret_key' '/path/to/s3_access_key_file'
      '/path/to/s3_bucket_name_file' '/path/to/s3_endpoint_file' '/path/to/s3_secret_key_file'"
  }

  if [[ -z "${1+x}" ]]; then
    echo_red_text 'ERROR: Please specify the S3 access key!'
    print_usage
    exit 1
  fi

  if [[ -z "${2+x}" ]]; then
    echo_red_text 'ERROR: Please specify the S3 bucket name!'
    print_usage
    exit 1
  fi

  if [[ -z "${3+x}" ]]; then
    echo_red_text 'ERROR: Please specify the S3 endpoint!'
    print_usage
    exit 1
  fi

  if [[ -z "${4+x}" ]]; then
    echo_red_text 'ERROR: Please specify the S3 secret key!'
    print_usage
    exit 1
  fi

  if [[ -z "${5+x}" ]]; then
    echo_red_text 'ERROR: Please specify the path to the S3 access key file!'
    print_usage
    exit 1
  fi

  if [[ -z "${6+x}" ]]; then
    echo_red_text 'ERROR: Please specify the path to the S3 bucket name file!'
    print_usage
    exit 1
  fi

  if [[ -z "${7+x}" ]]; then
    echo_red_text 'ERROR: Please specify the path to the S3 endpoint file!'
    print_usage
    exit 1
  fi

  if [[ -z "${8+x}" ]]; then
    echo_red_text 'ERROR: Please specify the path to the S3 secret key file!'
    print_usage
    exit 1
  fi

  local -r s3_access_key="$1"
  local -r s3_bucket_name="$2"
  local -r s3_endpoint="$3"
  local -r s3_secret_key="$4"
  local -r s3_access_key_file="$5"
  local -r s3_bucket_name_file="$6"
  local -r s3_endpoint_file="$7"
  local -r s3_secret_key_file="$8"

  # Create the S3 access key file
  create_key_file "${s3_access_key}" "${s3_access_key_file}"

  # Create the S3 bucket name file
  create_key_file "${s3_bucket_name}" "${s3_bucket_name_file}"

  # Create the S3 endpoint file
  create_key_file "${s3_endpoint}" "${s3_endpoint_file}"

  # Create the S3 secret key file
  create_key_file "${s3_secret_key}" "${s3_secret_key_file}"
}

# Prepare secrets for S3 storage
function prep_s3_badblock() {
  echo_red_text 'Preparing S3 storage...'

  # First, check environment variables specified externally (via CI)

  # Ensure we have `BADBLOCK_S3_ACCESS_KEY`
  if [[ -z "${BADBLOCK_S3_ACCESS_KEY+x}" ]] || [[ "${BADBLOCK_S3_ACCESS_KEY}" == "" ]] ||
    [[ "${BADBLOCK_S3_ACCESS_KEY}" == "null" ]]; then
    echo_red_text "ERROR: 'BADBLOCK_S3_ACCESS_KEY' is missing!"
    exit 1
  fi

  # Ensure we have `BADBLOCK_S3_BUCKET_NAME`
  if [[ -z "${BADBLOCK_S3_BUCKET_NAME+x}" ]] || [[ "${BADBLOCK_S3_BUCKET_NAME}" == "" ]] ||
    [[ "${BADBLOCK_S3_BUCKET_NAME}" == "null" ]]; then
    echo_red_text "ERROR: 'BADBLOCK_S3_BUCKET_NAME' is missing!"
    exit 1
  fi

  # Ensure we have `BADBLOCK_S3_ENDPOINT`
  if [[ -z "${BADBLOCK_S3_ENDPOINT+x}" ]] || [[ "${BADBLOCK_S3_ENDPOINT}" == "" ]] ||
    [[ "${BADBLOCK_S3_ENDPOINT}" == "null" ]]; then
    echo_red_text "ERROR: 'BADBLOCK_S3_ENDPOINT' is missing!"
    exit 1
  fi

  # Ensure we have `BADBLOCK_S3_SECRET_KEY`
  if [[ -z "${BADBLOCK_S3_SECRET_KEY+x}" ]] || [[ "${BADBLOCK_S3_SECRET_KEY}" == "" ]] ||
    [[ "${BADBLOCK_S3_SECRET_KEY}" == "null" ]]; then
    echo_red_text "ERROR: 'BADBLOCK_S3_SECRET_KEY' is missing!"
    exit 1
  fi

  # Now, check environment variables specified directly (via `env_ci.sh`/`env_common.sh`)

  # Ensure we have `BADBLOCK_S3_ACCESS_KEY_FILE`
  if [[ -z "${BADBLOCK_S3_ACCESS_KEY_FILE+x}" ]] || [[ "${BADBLOCK_S3_ACCESS_KEY_FILE}" == "" ]] ||
    [[ "${BADBLOCK_S3_ACCESS_KEY_FILE}" == "null" ]]; then
    echo_red_text "ERROR: 'BADBLOCK_S3_ACCESS_KEY_FILE' is missing!"
    exit 1
  fi

  # Ensure we have `BADBLOCK_S3_BUCKET_NAME_FILE`
  if [[ -z "${BADBLOCK_S3_BUCKET_NAME_FILE+x}" ]] || [[ "${BADBLOCK_S3_BUCKET_NAME_FILE}" == "" ]] ||
    [[ "${BADBLOCK_S3_BUCKET_NAME_FILE}" == "null" ]]; then
    echo_red_text "ERROR: 'BADBLOCK_S3_BUCKET_NAME_FILE' is missing!"
    exit 1
  fi

  # Ensure we have `BADBLOCK_S3_ENDPOINT_FILE`
  if [[ -z "${BADBLOCK_S3_ENDPOINT_FILE+x}" ]] || [[ "${BADBLOCK_S3_ENDPOINT_FILE}" == "" ]] ||
    [[ "${BADBLOCK_S3_ENDPOINT_FILE}" == "null" ]]; then
    echo_red_text "ERROR: 'BADBLOCK_S3_ENDPOINT_FILE' is missing!"
    exit 1
  fi

  # Ensure we have `BADBLOCK_S3_SECRET_KEY_FILE`
  if [[ -z "${BADBLOCK_S3_SECRET_KEY_FILE+x}" ]] || [[ "${BADBLOCK_S3_SECRET_KEY_FILE}" == "" ]] ||
    [[ "${BADBLOCK_S3_SECRET_KEY_FILE}" == "null" ]]; then
    echo_red_text "ERROR: 'BADBLOCK_S3_SECRET_KEY_FILE' is missing!"
    exit 1
  fi

  # Prepare our secrets
  prep_s3 "${BADBLOCK_S3_ACCESS_KEY}" "${BADBLOCK_S3_BUCKET_NAME}" "${BADBLOCK_S3_ENDPOINT}" "${BADBLOCK_S3_SECRET_KEY}" "${BADBLOCK_S3_ACCESS_KEY_FILE}" "${BADBLOCK_S3_BUCKET_NAME_FILE}" "${BADBLOCK_S3_ENDPOINT_FILE}" "${BADBLOCK_S3_SECRET_KEY_FILE}"

  echo_green_text 'SUCCESS: Prepared S3 storage!'
}

# Prepare our secrets...
prep_s3_badblock
