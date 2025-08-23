#!/bin/bash

source ./base/build/common.sh

./abp/gen/safe-browsing_whitelist_gen.sh && ./wildcards-no-star/gen/safe-browsing_whitelist_gen.sh && ./wildcards-star/gen/safe-browsing_whitelist_gen.sh
