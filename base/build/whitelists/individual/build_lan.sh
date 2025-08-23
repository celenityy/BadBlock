#!/bin/bash

source ./base/build/common.sh

./abp/gen/lan_whitelist_gen.sh && ./wildcards-no-star/gen/lan_whitelist_gen.sh && ./wildcards-star/gen/lan_whitelist_gen.sh
