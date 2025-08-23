#!/bin/bash

source ./base/build/common.sh

./abp/gen/email_whitelist_gen.sh && ./wildcards-no-star/gen/email_whitelist_gen.sh && ./wildcards-star/gen/email_whitelist_gen.sh
