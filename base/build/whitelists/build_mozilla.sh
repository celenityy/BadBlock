#!/bin/bash

./abp/gen/mozilla_whitelist_gen.sh && ./wildcards-no-star/gen/mozilla_whitelist_gen.sh && ./wildcards-star/gen/mozilla_whitelist_gen.sh

./base/build/whitelists/build_whitelist.sh