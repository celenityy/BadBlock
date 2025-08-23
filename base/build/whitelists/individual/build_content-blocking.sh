#!/bin/bash

source ./base/build/common.sh

./abp/gen/content-blocking_whitelist_gen.sh && ./wildcards-no-star/gen/content-blocking_whitelist_gen.sh && ./wildcards-star/gen/content-blocking_whitelist_gen.sh
