#!/bin/bash

./abp/gen/mobile_whitelist_gen.sh && ./wildcards-no-star/gen/mobile_whitelist_gen.sh && ./wildcards-star/gen/mobile_whitelist_gen.sh

./base/build/whitelists/build_whitelist.sh