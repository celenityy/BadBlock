#!/bin/bash

./abp/gen/android_whitelist_gen.sh && ./wildcards-no-star/gen/android_whitelist_gen.sh && ./wildcards-star/gen/android_whitelist_gen.sh

./base/build/whitelists/build_whitelist.sh