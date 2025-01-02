#!/bin/bash

cat wildcards-no-star/android_whitelist.txt wildcards-no-star/apple_whitelist.txt wildcards-no-star/browser_whitelist.txt wildcards-no-star/captcha_whitelist.txt wildcards-no-star/captive_whitelist.txt wildcards-no-star/certs_whitelist.txt wildcards-no-star/content-blocking_whitelist.txt wildcards-no-star/email_whitelist.txt wildcards-no-star/emergency_whitelist.txt wildcards-no-star/lan_whitelist.txt wildcards-no-star/linux_whitelist.txt wildcards-no-star/microsoft_whitelist.txt wildcards-no-star/misc_whitelist.txt wildcards-no-star/mobile_whitelist.txt wildcards-no-star/mozilla_whitelist.txt wildcards-no-star/push_whitelist.txt wildcards-no-star/safe-browsing_whitelist.txt wildcards-no-star/time_whitelist.txt | grep -v '^#' | grep -v '^!' | grep -v '^\s*$' | sort | uniq > wildcards-no-star/whitelist_wildcards-no-star.txt

(echo "# Title: ✋ BadBlock - Whitelist (Wildcards no *)" && \
    echo "# Version: $(date +'%d%B%Yv1')" && \
    echo "# Expires: 12 hours" && \
    echo "# Description: Unblock the good!" && \
    echo "# Homepage: https://badblock.celenity.dev" && \
    echo "" && \
    cat wildcards-no-star/whitelist_wildcards-no-star.txt) > temp_file && mv -v temp_file wildcards-no-star/whitelist_wildcards-no-star.txt

mv -v wildcards-no-star/whitelist.txt wildcards-no-star/old/whitelist_old.txt

mv -v wildcards-no-star/whitelist_wildcards-no-star.txt wildcards-no-star/whitelist.txt
