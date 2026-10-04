#!/bin/bash

set -euo pipefail

# Set-up our environment
if [[ -z "${BADBLOCK_SET_ENVS+x}" ]]; then
  /bin/bash $(dirname $0)/env.sh || exit 1
fi
source $(dirname $0)/env.sh || exit 1

# Include utilities
source "${BADBLOCK_UTILS}" || exit 1

# Ensure we have GNU awk
verify_exec "${BADBLOCK_AWK}" 'BADBLOCK_AWK' || exit 1

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

pushd "${BADBLOCK_ROOT}"

# Build BadBlock
readonly BADBLOCK_FROM_BUILD=1
export BADBLOCK_FROM_BUILD
if [[ "${BADBLOCK_LOG_BUILD}" == 1 ]]; then
  # Ensure we have mkdir
  verify_exec "${BADBLOCK_MKDIR}" 'BADBLOCK_MKDIR' || exit 1

  # Ensure we have rm
  verify_exec "${BADBLOCK_RM}" 'BADBLOCK_RM' || exit 1

  # Ensure we have tee
  verify_exec "${BADBLOCK_TEE}" 'BADBLOCK_TEE' || exit 1

  readonly BUILD_LOG_FILE="${BADBLOCK_LOG_DIR}/build.log"

  # If the log file already exists, remove it
  if [[ -f "${BUILD_LOG_FILE}" ]]; then
    "${BADBLOCK_RM}" "${BUILD_LOG_FILE}"
  fi

  # Ensure our log directory exists
  "${BADBLOCK_MKDIR}" -vp "${BADBLOCK_LOG_DIR}"

  /bin/bash "${BADBLOCK_SCRIPTS}/build-bb.sh" "${list}" "${format}" "${revision}" > >("${BADBLOCK_TEE}" -a "${BUILD_LOG_FILE}") 2>&1 || exit 1
else
  /bin/bash "${BADBLOCK_SCRIPTS}/build-bb.sh" "${list}" "${format}" "${revision}" || exit 1
fi

popd
