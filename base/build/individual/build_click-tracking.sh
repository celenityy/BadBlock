#!/bin/bash

source ./base/build/common.sh

./abp/gen/click-tracking_gen.sh && ./wildcards-no-star/gen/click-tracking_gen.sh && ./wildcards-star/gen/click-tracking_gen.sh

./abp/gen/click-tracking_whitelist_gen.sh && ./wildcards-no-star/gen/click-tracking_whitelist_gen.sh && ./wildcards-star/gen/click-tracking_whitelist_gen.sh
