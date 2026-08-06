#!/bin/bash

# BadBlock environment variables

set -euo pipefail

if [[ ! -f "$(dirname $0)/env_local.sh" ]]; then
  readonly ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
  readonly ENV_LOCAL="${ROOT}/scripts/env_local.sh"

  # Write env_local.sh
  echo "Writing ${ENV_LOCAL}..."
  cat > "${ENV_LOCAL}" << EOF
readonly BADBLOCK_ROOT="${ROOT}"
export BADBLOCK_ROOT

source "\${BADBLOCK_ROOT}/scripts/env_common.sh"
EOF
fi

if [[ -z "${BADBLOCK_SET_ENVS+x}" ]]; then
  source "$(dirname $0)/env_local.sh"

  # Set-up our PATH
  "${BADBLOCK_RM}" -rf                          "${BADBLOCK_PATH}"
  "${BADBLOCK_MKDIR}" -p                        "${BADBLOCK_PATH}"

  "${BADBLOCK_LN}" -sf "${BADBLOCK_AWK}"        "${BADBLOCK_PATH}/awk"
  "${BADBLOCK_LN}" -sf "${BADBLOCK_AWK}"        "${BADBLOCK_PATH}/gawk"
  "${BADBLOCK_LN}" -sf "${BADBLOCK_BASENAME}"   "${BADBLOCK_PATH}/basename"
  "${BADBLOCK_LN}" -sf "${BADBLOCK_CAT}"        "${BADBLOCK_PATH}/cat"
  "${BADBLOCK_LN}" -sf "${BADBLOCK_CHMOD}"      "${BADBLOCK_PATH}/chmod"
  "${BADBLOCK_LN}" -sf "${BADBLOCK_CP}"         "${BADBLOCK_PATH}/cp"
  "${BADBLOCK_LN}" -sf "${BADBLOCK_CURL}"       "${BADBLOCK_PATH}/curl"
  "${BADBLOCK_LN}" -sf "${BADBLOCK_DATE}"       "${BADBLOCK_PATH}/date"
  "${BADBLOCK_LN}" -sf "${BADBLOCK_DATE}"       "${BADBLOCK_PATH}/gdate"
  "${BADBLOCK_LN}" -sf "${BADBLOCK_DIRNAME}"    "${BADBLOCK_PATH}/dirname"
  "${BADBLOCK_LN}" -sf "${BADBLOCK_FIND}"       "${BADBLOCK_PATH}/find"
  "${BADBLOCK_LN}" -sf "${BADBLOCK_GIT}"        "${BADBLOCK_PATH}/git"
  "${BADBLOCK_LN}" -sf "${BADBLOCK_GREP}"       "${BADBLOCK_PATH}/grep"
  "${BADBLOCK_LN}" -sf "${BADBLOCK_GZIP}"       "${BADBLOCK_PATH}/gzip"
  "${BADBLOCK_LN}" -sf "${BADBLOCK_LN}"         "${BADBLOCK_PATH}/ln"
  "${BADBLOCK_LN}" -sf "${BADBLOCK_LS}"         "${BADBLOCK_PATH}/ls"
  "${BADBLOCK_LN}" -sf "${BADBLOCK_MD5SUM}"     "${BADBLOCK_PATH}/md5sum"
  "${BADBLOCK_LN}" -sf "${BADBLOCK_MKDIR}"      "${BADBLOCK_PATH}/mkdir"
  "${BADBLOCK_LN}" -sf "${BADBLOCK_MV}"         "${BADBLOCK_PATH}/mv"
  "${BADBLOCK_LN}" -sf "${BADBLOCK_PYTHON}"     "${BADBLOCK_PATH}/python"
  "${BADBLOCK_LN}" -sf "${BADBLOCK_PYTHON}"     "${BADBLOCK_PATH}/python3"
  "${BADBLOCK_LN}" -sf "${BADBLOCK_RM}"         "${BADBLOCK_PATH}/rm"
  "${BADBLOCK_LN}" -sf "${BADBLOCK_S3CMD}"      "${BADBLOCK_PATH}/s3cmd"
  "${BADBLOCK_LN}" -sf "${BADBLOCK_SED}"        "${BADBLOCK_PATH}/gsed"
  "${BADBLOCK_LN}" -sf "${BADBLOCK_SED}"        "${BADBLOCK_PATH}/sed"
  "${BADBLOCK_LN}" -sf "${BADBLOCK_SHASUM}"     "${BADBLOCK_PATH}/shasum"
  "${BADBLOCK_LN}" -sf "${BADBLOCK_SORT}"       "${BADBLOCK_PATH}/sort"
  "${BADBLOCK_LN}" -sf "${BADBLOCK_TAR}"        "${BADBLOCK_PATH}/gtar"
  "${BADBLOCK_LN}" -sf "${BADBLOCK_TAR}"        "${BADBLOCK_PATH}/tar"
  "${BADBLOCK_LN}" -sf "${BADBLOCK_TEE}"        "${BADBLOCK_PATH}/tee"
  "${BADBLOCK_LN}" -sf "${BADBLOCK_TOUCH}"      "${BADBLOCK_PATH}/touch"
  "${BADBLOCK_LN}" -sf "${BADBLOCK_UNAME}"      "${BADBLOCK_PATH}/uname"
  "${BADBLOCK_LN}" -sf "${BADBLOCK_UNIQ}"       "${BADBLOCK_PATH}/uniq"
  "${BADBLOCK_LN}" -sf "${BADBLOCK_UNZIP}"      "${BADBLOCK_PATH}/unzip"
  "${BADBLOCK_LN}" -sf "${BADBLOCK_UV}"         "${BADBLOCK_PATH}/uv"
  "${BADBLOCK_LN}" -sf "${BADBLOCK_XARGS}"      "${BADBLOCK_PATH}/xargs"

  # OS X-specific
  if [[ "${BADBLOCK_PLATFORM}" == 'darwin' ]]; then
    "${BADBLOCK_LN}" -sf "${BADBLOCK_DOT_CLEAN}"  "${BADBLOCK_PATH}/"
  fi

  readonly PATH="${BADBLOCK_PATH}"
  export PATH
fi
