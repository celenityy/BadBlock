#!/bin/bash

./abp/gen/microsoft_whitelist_gen.sh && ./wildcards-no-star/gen/microsoft_whitelist_gen.sh && ./wildcards-star/gen/microsoft_whitelist_gen.sh

./base/build/whitelists/build_whitelist.sh