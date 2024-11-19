#!/bin/bash

./abp/gen/content-blocking_whitelist_gen.sh && ./wildcards-no-star/gen/content-blocking_whitelist_gen.sh && ./wildcards-star/gen/content-blocking_whitelist_gen.sh

./base/build/whitelists/build_whitelist.sh