#!/bin/bash

set -euo pipefail

# Set-up our environment
source $(dirname $0)/env.sh || exit 1

# Include utilities
source "${BADBLOCK_UTILS}" || exit 1

# Set verbosity
set_verbosity

if [[ "${BADBLOCK_CI}" != 1 ]]; then
  echo_red_text "ERROR: '$0' should only be called from CI!"
  exit 1
fi

# Get dependencies
echo_red_text 'CI - Downloading dependencies...'
/bin/sudo /bin/dnf update -y --refresh || exit 1
/bin/sudo /bin/dnf install -y curl shasum tar || exit 1
/bin/bash "${BADBLOCK_SCRIPTS}/get_sources.sh" 'all' || exit 1
/bin/bash "${BADBLOCK_SCRIPTS}/get_sources.sh" 's3cmd' || exit 1
echo_green_text 'CI - SUCCESS: Downloaded dependencies.'

# Get secrets
echo_red_text 'CI - Preparing secrets...'
set +x || exit 1
/bin/bash "${BADBLOCK_SCRIPTS}/ci-prep.sh" || exit 1
echo_green_text 'CI - SUCCESS: Prepared secrets.'

# Set verbosity
set_verbosity

# Push lists
echo_red_text 'CI - Pushing lists...'
set +x || exit 1
/bin/bash "${BADBLOCK_SCRIPTS}/ci-push.sh" || exit 1
echo_green_text 'CI - SUCCESS: Pushed lists.'
