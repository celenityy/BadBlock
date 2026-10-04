#!/bin/bash

set -euo pipefail

# Ensure this is never ran with xtrace...
set +x || exit 1

# Set-up our environment
source $(dirname $0)/env.sh || exit 1

# Include utilities
source "${BADBLOCK_UTILS}" || exit 1

# Include download utilities
source "${BADBLOCK_DOWNLOAD_UTILS}" || exit 1

# Include S3 utilities
source "${BADBLOCK_S3_UTILS}" || exit 1

if [[ -z "${BADBLOCK_FROM_PUSH+x}" ]]; then
  echo_red_text "ERROR: Do not call 'ci-push-bb.sh' directly! Instead, use 'ci-push.sh'." >&1
  exit 1
fi

if [[ "${BADBLOCK_CI}" != 1 ]]; then
  echo_red_text "ERROR: '$0' should only be called from CI!"
  exit 1
fi

# Verify secrets
verify_file_with_env "${BADBLOCK_S3_ACCESS_KEY_FILE}" 'BADBLOCK_S3_ACCESS_KEY_FILE' || exit 1
verify_file_with_env "${BADBLOCK_S3_BUCKET_NAME_FILE}" 'BADBLOCK_S3_BUCKET_NAME_FILE' || exit 1
verify_file_with_env "${BADBLOCK_S3_ENDPOINT_FILE}" 'BADBLOCK_S3_ENDPOINT_FILE' || exit 1
verify_file_with_env "${BADBLOCK_S3_SECRET_KEY_FILE}" 'BADBLOCK_S3_SECRET_KEY_FILE' || exit 1

# Push a file with a SHA512sum to S3 storage
function push_to_s3() {
  function print_usage() {
    echo "Usage: push_to_s3 '/path/to/file' 'path/on/s3'"
  }

  if [[ -z "${1+x}" ]]; then
    echo_red_text 'ERROR: Please specify the path to a file that should be uploaded to S3 storage!'
    print_usage
    exit 1
  fi

  if [[ -z "${2+x}" ]]; then
    echo_red_text 'ERROR: Please specify the target path on S3 storage for where the file should be uploaded!'
    print_usage
    exit 1
  fi

  local -r push_file="$1"
  local -r s3_path="$2"

  local -r s3_access_key_file="${BADBLOCK_S3_ACCESS_KEY_FILE}"
  local -r s3_bucket_name_file="${BADBLOCK_S3_BUCKET_NAME_FILE}"
  local -r s3_endpoint_file="${BADBLOCK_S3_ENDPOINT_FILE}"
  local -r s3_secret_key_file="${BADBLOCK_S3_SECRET_KEY_FILE}"

  # Ensure our file to push is valid
  verify_file "${push_file}" || exit 1

  # Create and push a SHA512sum for our file to S3 storage
  push_and_add_sha512sum "${push_file}" "${s3_path}" "${s3_access_key_file}" "${s3_bucket_name_file}" "${s3_endpoint_file}" "${s3_secret_key_file}"
}

# Push a directory to S3
function push_dir_to_s3() {
  function print_usage() {
    echo "Usage: push_dir_to_s3 '/path/to/dir' 'path/on/s3'"
  }

  if [[ -z "${1+x}" ]]; then
    echo_red_text 'ERROR: Please specify the path to a directory that should be uploaded to S3 storage!'
    print_usage
    exit 1
  fi

  if [[ -z "${2+x}" ]]; then
    echo_red_text 'ERROR: Please specify the target path on S3 storage for where the directory should be uploaded!'
    print_usage
    exit 1
  fi

  local -r push_dir="$1"
  local -r s3_path="$2"

  local -r s3_access_key_file="${BADBLOCK_S3_ACCESS_KEY_FILE}"
  local -r s3_bucket_name_file="${BADBLOCK_S3_BUCKET_NAME_FILE}"
  local -r s3_endpoint_file="${BADBLOCK_S3_ENDPOINT_FILE}"
  local -r s3_secret_key_file="${BADBLOCK_S3_SECRET_KEY_FILE}"

  # Ensure our directory to push is valid
  if [[ ! -d "${push_dir}" ]]; then
    echo_red_text "ERROR: Directory does not exist: '${push_dir}'!"
    exit 1
  fi

  # Create and push SHA512sums for our directory to S3 storage
  push_dir_and_add_sha512sum "${push_dir}" "${s3_path}" "${s3_access_key_file}" "${s3_bucket_name_file}" "${s3_endpoint_file}" "${s3_secret_key_file}"
}

function push_abp_lists() {
  push_dir_to_s3 "${BADBLOCK_ROOT}/abp" 'abp'
}

function push_hardened_lists() {
  push_dir_to_s3 "${BADBLOCK_ROOT}/hardened" 'hardened'
}

function push_nsa_archive() {
  push_dir_to_s3 "${BADBLOCK_ROOT}/nsablocklist-archive" 'nsablocklist-archive'
}

function push_wc_lists() {
  push_dir_to_s3 "${BADBLOCK_ROOT}/wildcards-star" 'wildcards-star'
}

function push_wc_ns_lists() {
  push_dir_to_s3 "${BADBLOCK_ROOT}/wildcards-no-star" 'wildcards-no-star'
}

# Misc. individual files (from the root...) to push
function push_misc_lists() {
  push_to_s3 "${BADBLOCK_ROOT}/dns-ips.txt" 'root'
  push_to_s3 "${BADBLOCK_ROOT}/mozilla-ips.txt" 'root'
  push_to_s3 "${BADBLOCK_ROOT}/nintendo-agh.txt" 'root'
  push_to_s3 "${BADBLOCK_ROOT}/nintendo.txt" 'root'
  push_to_s3 "${BADBLOCK_ROOT}/skynet.list" 'root'
  push_to_s3 "${BADBLOCK_ROOT}/wildcards.txt" 'root'
}

push_abp_lists
push_hardened_lists
push_nsa_archive
push_wc_lists
push_wc_ns_lists
push_misc_lists
