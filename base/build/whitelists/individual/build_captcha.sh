#!/bin/bash

source ./base/build/common.sh

./abp/gen/captcha_whitelist_gen.sh && ./wildcards-no-star/gen/captcha_whitelist_gen.sh && ./wildcards-star/gen/captcha_whitelist_gen.sh
