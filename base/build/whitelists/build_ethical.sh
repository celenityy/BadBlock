#!/bin/bash

source ./base/build/common.sh

./abp/gen/ethical_whitelist_gen.sh && ./wildcards-no-star/gen/ethical_whitelist_gen.sh && ./wildcards-star/gen/ethical_whitelist_gen.sh
