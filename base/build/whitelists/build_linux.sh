#!/bin/bash

./abp/gen/linux_whitelist_gen.sh && ./wildcards-no-star/gen/linux_whitelist_gen.sh && ./wildcards-star/gen/linux_whitelist_gen.sh

./base/build/whitelists/build_whitelist.sh