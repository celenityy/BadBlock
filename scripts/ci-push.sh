#!/bin/bash

set -euo pipefail

# Set-up our environment
if [[ -z "${BADBLOCK_CI+x}" ]]; then
  export BADBLOCK_CI=1
fi
if [[ -z "${BADBLOCK_SET_ENVS+x}" ]]; then
  /bin/bash $(dirname $0)/env.sh
fi
source $(dirname $0)/env.sh

# Include utilities
source "${BADBLOCK_UTILS}"

# Push BadBlock
readonly BADBLOCK_FROM_PUSH=1
export BADBLOCK_FROM_PUSH
if [[ "${BADBLOCK_LOG_PUSH}" == 1 ]]; then
  readonly PUSH_LOG_FILE="${BADBLOCK_LOG_DIR}/push-lists.log"

  # If the log file already exists, remove it
  if [[ -f "${PUSH_LOG_FILE}" ]]; then
    "${BADBLOCK_RM}" "${PUSH_LOG_FILE}"
  fi

  # Ensure our log directory exists
  "${BADBLOCK_MKDIR}" -vp "${BADBLOCK_LOG_DIR}"

  /bin/bash "${BADBLOCK_SCRIPTS}/push-lists-bb.sh" > >("${BADBLOCK_TEE}" -a "${PUSH_LOG_FILE}") 2>&1
else
  /bin/bash "${BADBLOCK_SCRIPTS}/push-lists-bb.sh"
fi
