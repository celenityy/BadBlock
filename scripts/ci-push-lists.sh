#!/bin/bash

set -euo pipefail

# Set-up our environment
if [[ -z "${BADBLOCK_CI+x}" ]]; then
  export BADBLOCK_CI=1
fi
source $(dirname $0)/env.sh

# Include utilities
source "${BADBLOCK_UTILS}"

# Get secrets
echo_red_text 'CI - Preparing secrets...'
set +x
/bin/bash "${BADBLOCK_SCRIPTS}/ci-prep.sh"
echo_green_text 'CI - SUCCESS: Prepared secrets.'

# Set verbosity
if [[ "${BADBLOCK_VERBOSE}" == 1 ]]; then
  set -x
else
  set +x
fi

# Get dependencies
echo_red_text 'CI - Downloading dependencies...'
/bin/sudo /bin/dnf update -y --refresh
/bin/sudo /bin/dnf install -y curl shasum tar
/bin/bash "${BADBLOCK_SCRIPTS}/get_sources.sh" 'all'
/bin/bash "${BADBLOCK_SCRIPTS}/get_sources.sh" 's3cmd'
echo_green_text 'CI - SUCCESS: Downloaded dependencies.'

# Push lists
echo_red_text 'CI - Pushing lists...'
set +x
/bin/bash "${BADBLOCK_SCRIPTS}/ci-push.sh"
echo_green_text 'CI - SUCCESS: Pushed lists.'
