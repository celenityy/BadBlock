#!/bin/bash

./abp/gen/certs_whitelist_gen.sh && ./wildcards-no-star/gen/certs_whitelist_gen.sh && ./wildcards-star/gen/certs_whitelist_gen.sh

./base/build/whitelists/build_whitelist.sh
