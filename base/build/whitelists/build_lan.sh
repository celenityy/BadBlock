#!/bin/bash

./abp/gen/lan_whitelist_gen.sh && ./wildcards-no-star/gen/lan_whitelist_gen.sh && ./wildcards-star/gen/lan_whitelist_gen.sh

./base/build/whitelists/build_whitelist.sh