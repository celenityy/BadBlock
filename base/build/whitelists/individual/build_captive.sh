#!/bin/bash

source ./base/build/common.sh

./abp/gen/captive_whitelist_gen.sh && ./wildcards-no-star/gen/captive_whitelist_gen.sh && ./wildcards-star/gen/captive_whitelist_gen.sh
