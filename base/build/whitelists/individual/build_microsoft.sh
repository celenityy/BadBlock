#!/bin/bash

source ./base/build/common.sh

./abp/gen/microsoft_whitelist_gen.sh && ./wildcards-no-star/gen/microsoft_whitelist_gen.sh && ./wildcards-star/gen/microsoft_whitelist_gen.sh
