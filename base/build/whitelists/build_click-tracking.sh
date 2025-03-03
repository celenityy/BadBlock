#!/bin/bash

./abp/gen/click-tracking_whitelist_gen.sh && ./wildcards-no-star/gen/click-tracking_whitelist_gen.sh && ./wildcards-star/gen/click-tracking_whitelist_gen.sh

./base/build/whitelists/build_whitelist.sh
