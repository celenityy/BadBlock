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
  readonly target='all'
else
  readonly target=$(echo "${1}" | "${BADBLOCK_AWK}" '{print tolower($0)}')
fi

if [[ -z "${2+x}" ]]; then
  readonly mode='download'
else
  readonly mode=$(echo "${2}" | "${BADBLOCK_AWK}" '{print tolower($0)}')
fi

# Get sources
readonly BADBLOCK_FROM_SOURCES=1
export BADBLOCK_FROM_SOURCES
if [[ "${BADBLOCK_LOG_SOURCES}" == 1 ]]; then
  # Ensure we have mkdir
  verify_exec "${BADBLOCK_MKDIR}" 'BADBLOCK_MKDIR' || exit 1

  # Ensure we have rm
  verify_exec "${BADBLOCK_RM}" 'BADBLOCK_RM' || exit 1

  # Ensure we have tee
  verify_exec "${BADBLOCK_TEE}" 'BADBLOCK_TEE' || exit 1

  readonly SOURCES_LOG_FILE="${BADBLOCK_LOG_DIR}/get_sources.log"

  # If the log file already exists, remove it
  if [[ -f "${SOURCES_LOG_FILE}" ]]; then
    "${BADBLOCK_RM}" "${SOURCES_LOG_FILE}"
  fi

  # Ensure our log directory exists
  "${BADBLOCK_MKDIR}" -vp "${BADBLOCK_LOG_DIR}"

  /bin/bash "${BADBLOCK_SCRIPTS}/get_sources-bb.sh" "${target}" "${mode}" > >("${BADBLOCK_TEE}" -a "${SOURCES_LOG_FILE}") 2>&1 || exit 1
else
  /bin/bash "${BADBLOCK_SCRIPTS}/get_sources-bb.sh" "${target}" "${mode}" || exit 1
fi
