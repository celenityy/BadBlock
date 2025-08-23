#!/bin/bash

source ./base/build/common.sh

./abp/gen/time_whitelist_gen.sh && ./wildcards-no-star/gen/time_whitelist_gen.sh && ./wildcards-star/gen/time_whitelist_gen.sh
