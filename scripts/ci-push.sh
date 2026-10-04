#!/bin/bash

set -euo pipefail

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

# Push BadBlock
readonly BADBLOCK_FROM_PUSH=1
export BADBLOCK_FROM_PUSH
if [[ "${BADBLOCK_LOG_PUSH}" == 1 ]]; then
  # Ensure we have mkdir
  verify_exec "${BADBLOCK_MKDIR}" 'BADBLOCK_MKDIR' || exit 1

  # Ensure we have rm
  verify_exec "${BADBLOCK_RM}" 'BADBLOCK_RM' || exit 1

  # Ensure we have tee
  verify_exec "${BADBLOCK_TEE}" 'BADBLOCK_TEE' || exit 1

  readonly PUSH_LOG_FILE="${BADBLOCK_LOG_DIR}/push-lists.log"

  # If the log file already exists, remove it
  if [[ -f "${PUSH_LOG_FILE}" ]]; then
    "${BADBLOCK_RM}" "${PUSH_LOG_FILE}"
  fi

  # Ensure our log directory exists
  "${BADBLOCK_MKDIR}" -vp "${BADBLOCK_LOG_DIR}"

  /bin/bash "${BADBLOCK_SCRIPTS}/ci-push-bb.sh" > >("${BADBLOCK_TEE}" -a "${PUSH_LOG_FILE}") 2>&1 || exit 1
else
  /bin/bash "${BADBLOCK_SCRIPTS}/ci-push-bb.sh" || exit 1
fi
