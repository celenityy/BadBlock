#!/bin/bash

source ./base/build/common.sh

./abp/gen/emergency_whitelist_gen.sh && ./wildcards-no-star/gen/emergency_whitelist_gen.sh && ./wildcards-star/gen/emergency_whitelist_gen.sh
