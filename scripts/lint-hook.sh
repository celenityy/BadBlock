#!/bin/bash

# Script to configure a git pre-commit hook for linting

set -euo pipefail

# Set-up our environment
if [[ -z "${BADBLOCK_SET_ENVS+x}" ]]; then
  /bin/bash $(dirname $0)/env.sh
fi
source $(dirname $0)/env.sh

# Include utilities
source "${BADBLOCK_UTILS}"

# Set verbosity
if [[ "${BADBLOCK_VERBOSE}" == 1 ]]; then
  set -x
else
  set +x
fi

# Check if the hook has already been set-up
if [[ -f "${BADBLOCK_BUILD}/set-hook" ]]; then
  echo_red_text 'It looks like the git pre-commit hook has already been set-up!'
  read -p "Are you sure you want to continue? [y/N] " -n 1 -r
  echo
  if [[ "${REPLY}" =~ ^[Nn]$ ]]; then
    exit 0
  else
    "${BADBLOCK_RM}" -f "${BADBLOCK_BUILD}/set-hook"
  fi
fi

# Enable the pre-commit hook so shell scripts are linted (shellcheck + shfmt)
# before each commit. CI enforces the same checks, so this is just a fast local
# safeguard (and is bypassable with `git commit --no-verify`).
echo_red_text 'Configuring git pre-commit hook...'
"${BADBLOCK_GIT}" -C "${BADBLOCK_ROOT}" config core.hooksPath scripts/git-hooks
echo_green_text 'SUCCESS: Configured git pre-commit hook'

# Indicate that the hook has been set-up
"${BADBLOCK_MKDIR}" -p "${BADBLOCK_BUILD}"
"${BADBLOCK_TOUCH}" "${BADBLOCK_BUILD}/set-hook"
