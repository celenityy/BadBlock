#!/bin/bash

./abp/gen/captcha_whitelist_gen.sh && ./wildcards-no-star/gen/captcha_whitelist_gen.sh && ./wildcards-star/gen/captcha_whitelist_gen.sh

./base/build/whitelists/build_whitelist.sh