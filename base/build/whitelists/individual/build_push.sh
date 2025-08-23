#!/bin/bash

source ./base/build/common.sh

./abp/gen/push_whitelist_gen.sh && ./wildcards-no-star/gen/push_whitelist_gen.sh && ./wildcards-star/gen/push_whitelist_gen.sh
