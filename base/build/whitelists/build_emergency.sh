#!/bin/bash

./abp/gen/emergency_whitelist_gen.sh && ./wildcards-no-star/gen/emergency_whitelist_gen.sh && ./wildcards-star/gen/emergency_whitelist_gen.sh

./base/build/whitelists/build_whitelist.sh
