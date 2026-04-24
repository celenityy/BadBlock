#!/bin/bash

set -euo pipefail

# Ensure this is never ran with xtrace...
set +x

# Set-up our environment
source $(dirname $0)/env.sh

# Include utilities
source "${BADBLOCK_UTILS}"

if [[ -z "${BADBLOCK_FROM_PUSH+x}" ]]; then
    echo_red_text 'ERROR: Do not call push-lists-bb.sh directly. Instead, use push-lists.sh.' >&1
    exit 1
fi

if [[ -z "${BADBLOCK_S3_ACCESS_KEY_FILE}" ]]; then
    echo_red_text 'ERROR: The BADBLOCK_S3_ACCESS_KEY_FILE environment variable is missing! Aborting...'
    exit 1
fi

if ! [[ -f "${BADBLOCK_S3_ACCESS_KEY_FILE}" ]]; then
    echo_red_text "ERROR: S3 access key file not found! (${BADBLOCK_S3_ACCESS_KEY_FILE})"
    echo_green_text "Please ensure the BADBLOCK_S3_ACCESS_KEY_FILE environment variable is set to the correct path in which the key file is located."
    echo_red_text "Aborting..."
    exit 1
fi

if ! [[ -s "${BADBLOCK_S3_ACCESS_KEY_FILE}" ]]; then
    echo_red_text "ERROR: S3 access key file ${BADBLOCK_S3_ACCESS_KEY_FILE} is empty!"
    exit 1
fi

if [[ -z "${BADBLOCK_S3_BUCKET_NAME_FILE}" ]]; then
    echo_red_text 'ERROR: The BADBLOCK_S3_BUCKET_NAME_FILE environment variable is missing! Aborting...'
    exit 1
fi

if ! [[ -f "${BADBLOCK_S3_BUCKET_NAME_FILE}" ]]; then
    echo_red_text "ERROR: S3 bucket name file not found! (${BADBLOCK_S3_BUCKET_NAME_FILE})"
    echo_green_text "Please ensure the BADBLOCK_S3_BUCKET_NAME_FILE environment variable is set to the correct path in which the bucket name file is located."
    echo_red_text "Aborting..."
    exit 1
fi

if ! [[ -s "${BADBLOCK_S3_BUCKET_NAME_FILE}" ]]; then
    echo_red_text "ERROR: S3 bucket name file ${BADBLOCK_S3_BUCKET_NAME_FILE} is empty!"
    exit 1
fi

if [[ -z "${BADBLOCK_S3_ENDPOINT_FILE}" ]]; then
    echo_red_text 'ERROR: The BADBLOCK_S3_ENDPOINT_FILE environment variable is missing! Aborting...'
    exit 1
fi

if ! [[ -f "${BADBLOCK_S3_ENDPOINT_FILE}" ]]; then
    echo_red_text "ERROR: S3 endpoint file not found! (${BADBLOCK_S3_ENDPOINT_FILE})"
    echo_green_text "Please ensure the BADBLOCK_S3_ENDPOINT_FILE environment variable is set to the correct path in which the endpoint file is located."
    echo_red_text "Aborting..."
    exit 1
fi

if ! [[ -s "${BADBLOCK_S3_ENDPOINT_FILE}" ]]; then
    echo_red_text "ERROR: S3 bucket name file ${BADBLOCK_S3_ENDPOINT_FILE} is empty!"
    exit 1
fi

if [[ -z "${BADBLOCK_S3_SECRET_KEY_FILE}" ]]; then
    echo_red_text 'ERROR: The BADBLOCK_S3_SECRET_KEY_FILE environment variable is missing! Aborting...'
    exit 1
fi

if ! [[ -f "${BADBLOCK_S3_SECRET_KEY_FILE}" ]]; then
    echo_red_text "ERROR: S3 secret key file not found! (${BADBLOCK_S3_SECRET_KEY_FILE})"
    echo_green_text "Please ensure the BADBLOCK_S3_SECRET_KEY_FILE environment variable is set to the correct path in which the key file is located."
    echo_red_text "Aborting..."
    exit 1
fi

if ! [[ -s "${BADBLOCK_S3_SECRET_KEY_FILE}" ]]; then
    echo_red_text "ERROR: S3 secret key file ${BADBLOCK_S3_SECRET_KEY_FILE} is empty!"
    exit 1
fi

# Set timezone to UTC for consistency
unset TZ
export TZ="UTC"

function push_dir() {
    local readonly push_dir="$1"
    local readonly s3_path="$2"
    local readonly s3_full_path="${s3_path}/$(basename "${push_dir}")"

    if ! [[ -d "${push_dir}" ]]; then
        echo_red_text "ERROR: Directory ${push_dir} does not exist!"
        exit 1
    fi

    # First, if necessary, clean our directory...
    if [ "${BADBLOCK_OS}" == 'osx' ]; then
        /usr/sbin/dot_clean -mv "${push_dir}"
    fi

    local readonly s3_access_key=$(cat "${BADBLOCK_S3_ACCESS_KEY_FILE}" | xargs)
    local readonly s3_bucket_name=$(cat "${BADBLOCK_S3_BUCKET_NAME_FILE}" | xargs)
    local readonly s3_endpoint=$(cat "${BADBLOCK_S3_ENDPOINT_FILE}" | xargs)
    local readonly s3_secret_key=$(cat "${BADBLOCK_S3_SECRET_KEY_FILE}" | xargs)

    echo_red_text "Pushing ${push_dir} to S3..."
    source "${BADBLOCK_PYENV}"
    "${BADBLOCK_S3CMD}" ${BADBLOCK_S3CMD_FLAGS} --recursive sync "${push_dir}/" "s3://${s3_bucket_name}/${s3_path}/" \
      --access_key="${s3_access_key}" \
      --secret_key="${s3_secret_key}" \
      --host="${s3_endpoint}" \
      --host-bucket="${s3_endpoint}" \
      --exclude ".DS_Store" \
      --exclude "*/.DS_Store"
    echo_green_text "SUCCESS: Pushed ${push_dir} to S3"
}

function push_file() {
    local readonly push_file="$1"

    if [[ -z "${2+x}" ]]; then
        local readonly s3_full_path=$(basename "${push_file}")
    else
        local readonly s3_path="$2"
        local readonly s3_full_path="${s3_path}/$(basename "${push_file}")"
    fi

    if ! [[ -f "${push_file}" ]]; then
        echo_red_text "ERROR: File ${push_file} does not exist!"
        exit 1
    fi

    if ! [[ -s "${push_file}" ]]; then
        echo_red_text "ERROR: File ${push_file} is empty!"
        exit 1
    fi

    local readonly s3_access_key=$(cat "${BADBLOCK_S3_ACCESS_KEY_FILE}" | xargs)
    local readonly s3_bucket_name=$(cat "${BADBLOCK_S3_BUCKET_NAME_FILE}" | xargs)
    local readonly s3_endpoint=$(cat "${BADBLOCK_S3_ENDPOINT_FILE}" | xargs)
    local readonly s3_secret_key=$(cat "${BADBLOCK_S3_SECRET_KEY_FILE}" | xargs)

    echo_red_text "Pushing ${push_file} to S3..."
    source "${BADBLOCK_PYENV}"
    "${BADBLOCK_S3CMD}" ${BADBLOCK_S3CMD_FLAGS} put "${push_file}" "s3://${s3_bucket_name}/${s3_full_path}" \
      --access_key="${s3_access_key}" \
      --secret_key="${s3_secret_key}" \
      --host="${s3_endpoint}" \
      --host-bucket="${s3_endpoint}"
    echo_green_text "SUCCESS: Pushed ${push_file} to S3"
}

function add_sha512sum() {
    local readonly sha512sum_file_in="$1"
    local readonly sha512sum_file_name=$(basename "${sha512sum_file_in}")
    local readonly sha512sum_file_path=$(dirname "${sha512sum_file_in}")
    local readonly sha512sum_file_out="${sha512sum_file_path}/${sha512sum_file_name}-sha512sum.txt"

    # If there's already a SHA512sum file, remove it
    if [ -f "${sha512sum_file_out}" ]; then
        rm -f "${sha512sum_file_out}"
    fi

    local readonly local_sha512sum=$(sha512sum "${sha512sum_file_in}" | "${BADBLOCK_AWK}" '{print $1}')
    echo -n "${local_sha512sum}" > "${sha512sum_file_out}"

    local readonly sha512sum_s3path=$(basename "${sha512sum_file_path}" | "${BADBLOCK_AWK}" '{print tolower($0)}')

    if [[ -z "${2+x}" ]]; then
        push_file "${sha512sum_file_out}"
    else
        push_file "${sha512sum_file_out}" "${sha512sum_s3path}"
    fi
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
    push_file "${BADBLOCK_ROOT}/dns-ips.txt"
    add_sha512sum "${BADBLOCK_ROOT}/dns-ips.txt"

    push_file "${BADBLOCK_ROOT}/mozilla-ips.txt"
    add_sha512sum "${BADBLOCK_ROOT}/mozilla-ips.txt"

    push_file "${BADBLOCK_ROOT}/nintendo-agh.txt"
    add_sha512sum "${BADBLOCK_ROOT}/nintendo-agh.txt"

    push_file "${BADBLOCK_ROOT}/nintendo.txt"
    add_sha512sum "${BADBLOCK_ROOT}/nintendo.txt"

    push_file "${BADBLOCK_ROOT}/skynet.list"
    add_sha512sum "${BADBLOCK_ROOT}/skynet.list"

    push_file "${BADBLOCK_ROOT}/wildcards.txt"
    add_sha512sum "${BADBLOCK_ROOT}/wildcards.txt"
}

push_abp_lists
push_hardened_lists
push_wc_lists
push_wc_ns_lists
push_misc_lists
