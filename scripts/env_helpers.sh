
# Set platform
if [[ "${OSTYPE}" == "darwin"* ]]; then
    readonly BADBLOCK_PLATFORM='darwin'
else
    readonly BADBLOCK_PLATFORM='linux'
fi
export BADBLOCK_PLATFORM

# Set OS
if [[ "${BADBLOCK_PLATFORM}" == 'darwin' ]]; then
    readonly BADBLOCK_OS='osx'
elif [[ "${BADBLOCK_PLATFORM}" == 'linux' ]]; then
    if [[ -f "/etc/os-release" ]]; then
        source /etc/os-release
        if [[ -n "${ID}" ]]; then
            readonly BADBLOCK_OS="${ID}"
        else
            readonly BADBLOCK_OS='unknown'
        fi
    else
        readonly BADBLOCK_OS='unknown'
    fi
else
    readonly BADBLOCK_OS='unknown'
fi
export BADBLOCK_OS
