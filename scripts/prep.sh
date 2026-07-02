#!/bin/bash

set -euo pipefail

# Ensure this is never ran with xtrace...
set +x

# Set-up our environment
if [[ -z "${BADBLOCK_SET_ENVS+x}" ]]; then
  bash -x $(dirname $0)/env.sh
fi
source $(dirname $0)/env.sh

# Include utilities
source "${BADBLOCK_UTILS}"

# S3 storage
function prep_s3() {
  echo_red_text 'Preparing S3 storage...'

  # First, ensure that environment variables specified externally (from CI) are properly set...

  ## S3 access key
  if [[ -z "${BADBLOCK_S3_ACCESS_KEY+x}" ]]; then
    echo_red_text 'ERROR: The BADBLOCK_S3_ACCESS_KEY environment variable is missing! Aborting...'
    exit 1
  fi
  readonly BADBLOCK_S3_ACCESS_KEY

  ## S3 bucket name
  if [[ -z "${BADBLOCK_S3_BUCKET_NAME+x}" ]]; then
    echo_red_text 'ERROR: The BADBLOCK_S3_BUCKET_NAME environment variable is missing! Aborting...'
    exit 1
  fi
  readonly BADBLOCK_S3_BUCKET_NAME

  ## S3 endpoint
  if [[ -z "${BADBLOCK_S3_ENDPOINT+x}" ]]; then
    echo_red_text 'ERROR: The BADBLOCK_S3_ENDPOINT environment variable is missing! Aborting...'
    exit 1
  fi
  readonly BADBLOCK_S3_ENDPOINT

  ## S3 secret key
  if [[ -z "${BADBLOCK_S3_SECRET_KEY+x}" ]]; then
    echo_red_text 'ERROR: The BADBLOCK_S3_SECRET_KEY environment variable is missing! Aborting...'
    exit 1
  fi
  readonly BADBLOCK_S3_SECRET_KEY

  # Now, ensure that our S3 file variables (defined at `env_common.sh`, set at `env_ci.sh`) are properly set...

  if [[ -z "${BADBLOCK_S3_ACCESS_KEY_FILE}" ]]; then
    echo_red_text 'ERROR: The BADBLOCK_S3_ACCESS_KEY_FILE environment variable is missing! Aborting...'
    exit 1
  fi

  if [[ "${BADBLOCK_S3_ACCESS_KEY_FILE}" == 'null' ]]; then
    echo_red_text 'ERROR: The BADBLOCK_S3_ACCESS_KEY_FILE environment variable has not been specified! Aborting...'
    exit 1
  fi

  if [[ -z "${BADBLOCK_S3_BUCKET_NAME_FILE}" ]]; then
    echo_red_text 'ERROR: The BADBLOCK_S3_BUCKET_NAME_FILE environment variable is missing! Aborting...'
    exit 1
  fi

  if [[ "${BADBLOCK_S3_BUCKET_NAME_FILE}" == 'null' ]]; then
    echo_red_text 'ERROR: The BADBLOCK_S3_BUCKET_NAME_FILE environment variable has not been specified! Aborting...'
    exit 1
  fi

  if [[ -z "${BADBLOCK_S3_ENDPOINT_FILE}" ]]; then
    echo_red_text 'ERROR: The BADBLOCK_S3_ENDPOINT_FILE environment variable is missing! Aborting...'
    exit 1
  fi

  if [[ "${BADBLOCK_S3_ENDPOINT_FILE}" == 'null' ]]; then
    echo_red_text 'ERROR: The BADBLOCK_S3_ENDPOINT_FILE environment variable has not been specified! Aborting...'
    exit 1
  fi

  if [[ -z "${BADBLOCK_S3_SECRET_KEY_FILE}" ]]; then
    echo_red_text 'ERROR: The BADBLOCK_S3_SECRET_KEY_FILE environment variable is missing! Aborting...'
    exit 1
  fi

  if [[ "${BADBLOCK_S3_SECRET_KEY_FILE}" == 'null' ]]; then
    echo_red_text 'ERROR: The BADBLOCK_S3_SECRET_KEY_FILE environment variable has not been specified! Aborting...'
    exit 1
  fi

  # Create our directories
  mkdir -p $(dirname "${BADBLOCK_S3_ACCESS_KEY_FILE}")
  mkdir -p $(dirname "${BADBLOCK_S3_BUCKET_NAME_FILE}")
  mkdir -p $(dirname "${BADBLOCK_S3_ENDPOINT_FILE}")
  mkdir -p $(dirname "${BADBLOCK_S3_SECRET_KEY_FILE}")

  # Create the S3 access key file
  touch "${BADBLOCK_S3_ACCESS_KEY_FILE}"
  chmod 600 "${BADBLOCK_S3_ACCESS_KEY_FILE}"
  echo -n "${BADBLOCK_S3_ACCESS_KEY}" > "${BADBLOCK_S3_ACCESS_KEY_FILE}"

  # Create the S3 bucket name file
  touch "${BADBLOCK_S3_BUCKET_NAME_FILE}"
  chmod 600 "${BADBLOCK_S3_BUCKET_NAME_FILE}"
  echo -n "${BADBLOCK_S3_BUCKET_NAME}" > "${BADBLOCK_S3_BUCKET_NAME_FILE}"

  # Create the S3 endpoint file
  touch "${BADBLOCK_S3_ENDPOINT_FILE}"
  chmod 600 "${BADBLOCK_S3_ENDPOINT_FILE}"
  echo -n "${BADBLOCK_S3_ENDPOINT}" > "${BADBLOCK_S3_ENDPOINT_FILE}"

  # Create the S3 secret key file
  touch "${BADBLOCK_S3_SECRET_KEY_FILE}"
  chmod 600 "${BADBLOCK_S3_SECRET_KEY_FILE}"
  echo -n "${BADBLOCK_S3_SECRET_KEY}" > "${BADBLOCK_S3_SECRET_KEY_FILE}"

  # Ensure nothing went wrong...
  if [[ ! -s "${BADBLOCK_S3_ACCESS_KEY_FILE}" ]]; then
    echo_red_text "ERROR: S3 access key file ${BADBLOCK_S3_ACCESS_KEY_FILE} is empty!"
    exit 1
  fi

  if [[ ! -s "${BADBLOCK_S3_BUCKET_NAME_FILE}" ]]; then
    echo_red_text "ERROR: S3 bucket name file ${BADBLOCK_S3_BUCKET_NAME_FILE} is empty!"
    exit 1
  fi

  if [[ ! -s "${BADBLOCK_S3_ENDPOINT_FILE}" ]]; then
    echo_red_text "ERROR: S3 endpoint file ${BADBLOCK_S3_ENDPOINT_FILE} is empty!"
    exit 1
  fi

  if [[ ! -s "${BADBLOCK_S3_SECRET_KEY_FILE}" ]]; then
    echo_red_text "ERROR: S3 secret key file ${BADBLOCK_S3_SECRET_KEY_FILE} is empty!"
    exit 1
  fi

  echo_green_text 'SUCCESS: Prepared S3 storage'
}

# Prepare our secrets...
prep_s3
