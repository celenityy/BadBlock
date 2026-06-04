#!/bin/bash

set -euo pipefail

# Set-up our environment
if [[ -z "${BADBLOCK_SET_ENVS+x}" ]]; then
    bash -x $(dirname $0)/env.sh
fi
source $(dirname $0)/env.sh

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
    readonly SOURCES_LOG_FILE="${BADBLOCK_LOG_DIR}/get_sources.log"

    # If the log file already exists, remove it
    if [[ -f "${SOURCES_LOG_FILE}" ]]; then
        rm "${SOURCES_LOG_FILE}"
    fi

    # Ensure our log directory exists
    mkdir -vp "${BADBLOCK_LOG_DIR}"

    bash -x "${BADBLOCK_SCRIPTS}/get_sources-bb.sh" "${target}" "${mode}" > >(tee -a "${SOURCES_LOG_FILE}") 2>&1
else
    bash -x "${BADBLOCK_SCRIPTS}/get_sources-bb.sh" "${target}" "${mode}"
fi
