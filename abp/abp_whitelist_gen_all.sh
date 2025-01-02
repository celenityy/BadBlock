#!/bin/bash

./abp/gen/android_whitelist_gen.sh && ./abp/gen/apple_whitelist_gen.sh && ./abp/gen/browser_whitelist_gen.sh && ./abp/gen/captcha_whitelist_gen.sh && ./abp/gen/captive_whitelist_gen.sh && ./abp/gen/certs_whitelist_gen.sh && ./abp/gen/content-blocking_whitelist_gen.sh && ./abp/gen/email_whitelist_gen.sh && ./abp/gen/emergency_whitelist_gen.sh && ./abp/gen/ethical_whitelist_gen.sh && ./abp/gen/lan_whitelist_gen.sh && ./abp/gen/linux_whitelist_gen.sh && ./abp/gen/microsoft_whitelist_gen.sh && ./abp/gen/misc_whitelist_gen.sh && ./abp/gen/mobile_whitelist_gen.sh && ./abp/mozilla_whitelist_gen.sh && ./abp/gen/push_whitelist_gen.sh && ./abp/gen/safe-browsing_whitelist_gen.sh && ./abp/gen/time_whitelist_gen.sh

./abp/abp_whitelist_gen.sh
