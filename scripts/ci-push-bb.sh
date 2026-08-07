#!/bin/bash

set -euo pipefail

# Ensure this is never ran with xtrace...
set +x

# Set-up our environment
if [[ -z "${BADBLOCK_CI+x}" ]]; then
  export BADBLOCK_CI=1
fi
source $(dirname $0)/env.sh

# Include utilities
source "${BADBLOCK_UTILS}"

if [[ -z "${BADBLOCK_FROM_PUSH+x}" ]]; then
  echo_red_text 'ERROR: Do not call ci-push-bb.sh directly. Instead, use ci-push.sh.' >&1
  exit 1
fi

# Verify secrets
verify_file_with_env "${BADBLOCK_S3_ACCESS_KEY_FILE}" 'BADBLOCK_S3_ACCESS_KEY_FILE' || exit 1
verify_file_with_env "${BADBLOCK_S3_BUCKET_NAME_FILE}" 'BADBLOCK_S3_BUCKET_NAME_FILE' || exit 1
verify_file_with_env "${BADBLOCK_S3_ENDPOINT_FILE}" 'BADBLOCK_S3_ENDPOINT_FILE' || exit 1
verify_file_with_env "${BADBLOCK_S3_SECRET_KEY_FILE}" 'BADBLOCK_S3_SECRET_KEY_FILE' || exit 1

# Pushes a file to S3
function push_file() {
  function print_usage() {
    echo "Usage: push_file '/path/to/file' 'path/on/s3'"
  }

  if [[ -z "${1+x}" ]]; then
    echo_red_text 'ERROR: Please specify the path to a file that should be uploaded to S3 storage'
    print_usage
    exit 1
  fi

  if [[ -z "${2+x}" ]]; then
    echo_red_text 'ERROR: Please specify the target path on S3 storage for where the file should be uploaded'
    print_usage
    exit 1
  fi

  local -r push_file="$1"
  local -r s3_path="$2"
  local -r s3_full_path="${s3_path}/$("${BADBLOCK_BASENAME}" "${push_file}")"

  # Ensure our file to push is valid
  verify_file "${push_file}" || exit 1

  # Set our MIME type
  case "${push_file}" in
    *.list)
      local -r mime_type='text/plain'
      ;;
    *.txt)
      local -r mime_type='text/plain'
      ;;
    *)
      echo_red_text "ERROR: Unsupported file type: ${push_file}"
      exit 1
      ;;
  esac

  local -r s3_access_key=$("${BADBLOCK_CAT}" "${BADBLOCK_S3_ACCESS_KEY_FILE}" | "${BADBLOCK_XARGS}")
  local -r s3_bucket_name=$("${BADBLOCK_CAT}" "${BADBLOCK_S3_BUCKET_NAME_FILE}" | "${BADBLOCK_XARGS}")
  local -r s3_endpoint=$("${BADBLOCK_CAT}" "${BADBLOCK_S3_ENDPOINT_FILE}" | "${BADBLOCK_XARGS}")
  local -r s3_secret_key=$("${BADBLOCK_CAT}" "${BADBLOCK_S3_SECRET_KEY_FILE}" | "${BADBLOCK_XARGS}")

  if [[ "${s3_path}" == 'root' ]]; then
    local -r s3_target_path="s3://${s3_bucket_name}"
  else
    local -r s3_target_path="s3://${s3_bucket_name}/${s3_full_path}"
  fi

  echo_red_text "Pushing ${push_file} to S3..."
  source "${BADBLOCK_PYENV}"
  "${BADBLOCK_S3CMD}" ${BADBLOCK_S3CMD_FLAGS} --mime-type="${mime_type}" put "${push_file}" "${s3_target_path}" \
    --access_key="${s3_access_key}" \
    --secret_key="${s3_secret_key}" \
    --host="${s3_endpoint}" \
    --host-bucket="${s3_endpoint}"
  echo_green_text "SUCCESS: Pushed ${push_file} to S3"
}

# Pushes a directory to S3
function push_dir() {
  local -r push_dir="$1"

  if [[ -z "${2+x}" ]]; then
    local -r target_s3_path='null'
  else
    local -r target_s3_path="$2"
  fi

  if [[ ! -d "${push_dir}" ]]; then
    echo_red_text "ERROR: Directory ${push_dir} does not exist!"
    exit 1
  fi

  # First, if necessary, clean our directory...
  if [[ "${BADBLOCK_OS}" == 'osx' ]]; then
    /usr/sbin/dot_clean -mv "${push_dir}"
  fi

  echo_red_text "Pushing ${push_dir} to S3..."
  for file in $("${BADBLOCK_FIND}" "${push_dir}" -type f); do
    local file_basename=$("${BADBLOCK_BASENAME}" "${file}")
    if [[ "${file_basename}" != '.DS_Store' ]] && [[ "${file_basename}" != 'README.md' ]]; then
      local file_path="${file#"${push_dir}"}"
      local target_path=$("${BADBLOCK_DIRNAME}" "${file_path}")
      if [[ "${target_s3_path}" == 'root' ]]; then
        local s3_path='root'
      elif [[ "${target_path}" == '/' ]]; then
        local s3_path=$("${BADBLOCK_BASENAME}" "${push_dir}")
      else
        local s3_path="${target_s3_path}${target_path}"
      fi
      push_file "${file}" "${s3_path}"
    else
      echo "Skipping upload of file: ${file}"
    fi
  done
  echo_green_text "SUCCESS: Pushed ${push_dir} to S3"
}

# Creates and pushes a SHA512sum for a file to S3
function add_sha512sum() {
  function print_usage() {
    echo "Usage: add_sha512sum '/path/to/file'"
  }

  if [[ -z "${1+x}" ]]; then
    echo_red_text 'ERROR: Please specify the path to a file that a SHA512sum should be created for'
    print_usage
    exit 1
  fi

  local -r sha512sum_file_in="$1"
  local -r sha512sum_file_name=$("${BADBLOCK_BASENAME}" "${sha512sum_file_in}")
  local -r sha512sum_file_path=$("${BADBLOCK_DIRNAME}" "${sha512sum_file_in}")

  if [[ -z "${2+x}" ]]; then
    local -r sha512sum_s3path=$("${BADBLOCK_BASENAME}" "${sha512sum_file_path}" | "${BADBLOCK_AWK}" '{print tolower($0)}')
  else
    local -r sha512sum_s3path="$2"
  fi

  # Ensure our file to create a SHA512sum for is valid
  verify_file "${sha512sum_file_in}" || exit 1

  local -r sha512sum_file_out="${sha512sum_file_path}/${sha512sum_file_name}-sha512sum.txt"

  # If there's already a SHA512sum file, remove it
  if [[ -f "${sha512sum_file_out}" ]]; then
    "${BADBLOCK_RM}" -f "${sha512sum_file_out}"
  fi

  local -r local_sha512sum=$("${BADBLOCK_SHASUM}" -a 512 "${sha512sum_file_in}" | "${BADBLOCK_AWK}" '{print $1}')
  echo -n "${local_sha512sum}" > "${sha512sum_file_out}"

  push_file "${sha512sum_file_out}" "${sha512sum_s3path}"
}

# Creates a SHA512sum for and pushes a file to S3
function push_and_add_sha512sum() {
  function print_usage() {
    echo "Usage: push_and_add_sha512sum '/path/to/file' 'path/on/s3'"
  }

  if [[ -z "${1+x}" ]]; then
    echo_red_text 'ERROR: Please specify the path to a file that should be uploaded to S3 storage'
    print_usage
    exit 1
  fi

  if [[ -z "${2+x}" ]]; then
    echo_red_text 'ERROR: Please specify the target path on S3 storage for where the file should be uploaded'
    print_usage
    exit 1
  fi

  local -r file_in="$1"
  local -r s3_path_out="$2"

  # Ensure our file to create a SHA512sum for and push is valid
  verify_file "${file_in}" || exit 1

  # Push our file to S3
  push_file "${file_in}" "${s3_path_out}"

  # Create and push a SHA512sum for our file to S3
  add_sha512sum "${file_in}" "${s3_path_out}"
}

function push_abp_lists() {
  push_dir "${BADBLOCK_ROOT}/abp" 'abp'
}

function push_hardened_lists() {
  push_dir "${BADBLOCK_ROOT}/hardened" 'hardened'
}

function push_nsa_archive() {
  push_dir "${BADBLOCK_ROOT}/nsablocklist-archive" 'nsablocklist-archive'
}

function push_wc_lists() {
  push_dir "${BADBLOCK_ROOT}/wildcards-star" 'wildcards-star'
}

function push_wc_ns_lists() {
  push_dir "${BADBLOCK_ROOT}/wildcards-no-star" 'wildcards-no-star'
}

# Misc. individual files (from the root...) to push
function push_misc_lists() {
  push_and_add_sha512sum "${BADBLOCK_ROOT}/dns-ips.txt" 'root'
  push_and_add_sha512sum "${BADBLOCK_ROOT}/mozilla-ips.txt" 'root'
  push_and_add_sha512sum "${BADBLOCK_ROOT}/nintendo-agh.txt" 'root'
  push_and_add_sha512sum "${BADBLOCK_ROOT}/nintendo.txt" 'root'
  push_and_add_sha512sum "${BADBLOCK_ROOT}/skynet.list" 'root'
  push_and_add_sha512sum "${BADBLOCK_ROOT}/wildcards.txt" 'root'
}

push_abp_lists
push_hardened_lists
push_nsa_archive
push_wc_lists
push_wc_ns_lists
push_misc_lists
