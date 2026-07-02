#!/bin/bash

set -euo pipefail

# Set-up our environment
if [[ -z "${BADBLOCK_SET_ENVS+x}" ]]; then
  bash -x $(dirname $0)/env.sh
fi
source $(dirname $0)/env.sh

# Set up target parameters
if [[ -z "${1+x}" ]]; then
  readonly list='all'
else
  readonly list=$(echo "${1}" | "${BADBLOCK_AWK}" '{print tolower($0)}')
fi

if [[ -z "${2+x}" ]]; then
  readonly format='all'
else
  readonly format=$(echo "${2}" | "${BADBLOCK_AWK}" '{print tolower($0)}')
fi

if [[ -z "${3+x}" ]]; then
  readonly revision='1'
else
  readonly revision=$(echo "${3}" | "${BADBLOCK_AWK}" '{print tolower($0)}')
fi

# Build BadBlock
readonly BADBLOCK_FROM_BUILD=1
export BADBLOCK_FROM_BUILD
if [[ "${BADBLOCK_LOG_BUILD}" == 1 ]]; then
  readonly BUILD_LOG_FILE="${BADBLOCK_LOG_DIR}/build.log"

  # If the log file already exists, remove it
  if [[ -f "${BUILD_LOG_FILE}" ]]; then
    rm "${BUILD_LOG_FILE}"
  fi

  # Ensure our log directory exists
  mkdir -vp "${BADBLOCK_LOG_DIR}"

  bash -x "${BADBLOCK_SCRIPTS}/build-bb.sh" "${list}" "${format}" "${revision}" > >(tee -a "${BUILD_LOG_FILE}") 2>&1
else
  bash -x "${BADBLOCK_SCRIPTS}/build-bb.sh" "${list}" "${format}" "${revision}"
fi
