#!/bin/bash

./abp/gen/android_whitelist_gen.sh && ./abp/gen/apple_whitelist_gen.sh && ./abp/gen/browser_whitelist_gen.sh && ./abp/gen/captcha_whitelist_gen.sh && ./abp/gen/captive_whitelist_gen.sh && ./abp/gen/certs_whitelist_gen.sh && ./abp/gen/content-blocking_whitelist_gen.sh && ./abp/gen/email_whitelist_gen.sh && ./abp/gen/emergency_whitelist_gen.sh && ./abp/gen/ethical_whitelist_gen.sh && ./abp/gen/lan_whitelist_gen.sh && ./abp/gen/linux_whitelist_gen.sh && ./abp/gen/microsoft_whitelist_gen.sh && ./abp/gen/misc_whitelist_gen.sh && ./abp/gen/mobile_whitelist_gen.sh && ./abp/mozilla_whitelist_gen.sh && ./abp/gen/push_whitelist_gen.sh && ./abp/gen/safe-browsing_whitelist_gen.sh && ./abp/gen/time_whitelist_gen.sh

cat abp/android_whitelist.txt abp/apple_whitelist.txt abp/browser_whitelist.txt abp/captcha_whitelist.txt abp/certs_whitelist.txt abp/content-blocking_whitelist.txt abp/email_whitelist.txt abp/emergency_whitelist.txt abp/lan_whitelist.txt abp/linux_whitelist.txt abp/microsoft_whitelist.txt abp/misc_whitelist.txt abp/mobile_whitelist.txt abp/mozilla_whitelist.txt abp/push_whitelist.txt abp/safe-browsing_whitelist.txt abp/time_whitelist.txt | grep -v '^#' | grep -v '^!' | grep -v '^\s*$' | sort | uniq > abp/whitelist_abp.txt

(echo "! Title: ✋ BadBlock - Whitelist (ABP)" && \
    echo "! Version: $(date +'%d%B%Yv1')" && \
    echo "! Expires: 12 hours" && \
    echo "! Description: Unblock the good!" && \
    echo "! Homepage: https://badblock.celenity.dev" && \
    echo "" && \
    cat abp/whitelist_abp.txt) > temp_file && mv -v temp_file abp/whitelist_abp.txt

mv -v abp/whitelist.txt abp/old/whitelist_old.txt

mv -v abp/whitelist_abp.txt abp/whitelist.txt