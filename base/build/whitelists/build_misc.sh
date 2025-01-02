#!/bin/bash

./abp/gen/misc_whitelist_gen.sh && ./wildcards-no-star/gen/misc_whitelist_gen.sh && ./wildcards-star/gen/misc_whitelist_gen.sh

./base/build/whitelists/build_whitelist.sh
