#!/bin/bash

source ./base/build/common.sh

./abp/abp_whitelist_gen.sh && ./wildcards-no-star/no-star_whitelist_gen.sh && ./wildcards-star/star_whitelist_gen.sh
