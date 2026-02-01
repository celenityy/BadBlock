#!/bin/bash

source ./base/build/common.sh

./abp/gen/nintendo_whitelist_gen.sh && ./wildcards-no-star/gen/nintendo_whitelist_gen.sh && ./wildcards-star/gen/nintendo_whitelist_gen.sh

./base/build/whitelists/build_whitelist.sh
