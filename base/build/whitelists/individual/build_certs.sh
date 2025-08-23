#!/bin/bash

source ./base/build/common.sh

./abp/gen/certs_whitelist_gen.sh && ./wildcards-no-star/gen/certs_whitelist_gen.sh && ./wildcards-star/gen/certs_whitelist_gen.sh
