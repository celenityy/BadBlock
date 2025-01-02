#!/bin/bash

cat wildcards-star/android_whitelist.txt wildcards-star/apple_whitelist.txt wildcards-star/browser_whitelist.txt wildcards-star/captcha_whitelist.txt wildcards-star/captive_whitelist.txt wildcards-star/certs_whitelist.txt wildcards-star/content-blocking_whitelist.txt wildcards-star/email_whitelist.txt wildcards-star/emergency_whitelist.txt wildcards-star/lan_whitelist.txt wildcards-star/linux_whitelist.txt wildcards-star/microsoft_whitelist.txt wildcards-star/misc_whitelist.txt wildcards-star/mobile_whitelist.txt wildcards-star/mozilla_whitelist.txt wildcards-star/push_whitelist.txt wildcards-star/safe-browsing_whitelist.txt wildcards-star/time_whitelist.txt | grep -v '^#' | grep -v '^!' | grep -v '^\s*$' | sort | uniq > wildcards-star/whitelist_wildcards-star.txt

(echo "# Title: ✋ BadBlock - Whitelist (Wildcards *)" && \
    echo "# Version: $(date +'%d%B%Yv1')" && \
    echo "# Expires: 12 hours" && \
    echo "# Description: Unblock the good!" && \
    echo "# Homepage: https://badblock.celenity.dev" && \
    echo "" && \
    cat wildcards-star/whitelist_wildcards-star.txt) > temp_file && mv -v temp_file wildcards-star/whitelist_wildcards-star.txt

mv -v wildcards-star/whitelist.txt wildcards-star/old/whitelist_old.txt

mv -v wildcards-star/whitelist_wildcards-star.txt wildcards-star/whitelist.txt
