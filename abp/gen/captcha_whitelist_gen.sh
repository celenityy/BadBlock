#!/bin/bash

# Process the whitelist.txt file
cat base/whitelists/captcha.txt | grep -v '^#' | grep -v '^\s*$' | $SED 's/^/@@|/' | $SED 's/$/^/' | sort | uniq > abp/captcha_whitelist_abp.txt

# Create the header and combine with the processed file
(echo "! Title: 🦾 BadBlock - CAPTCHA Whitelist (ABP)" && \
    echo "! Version: $(date +'%d%B%Yv1')" && \
    echo "! Expires: 1 hour" && \
    echo "! Description: Unblock the Good! (CAPTCHA Edition)" && \
    echo "! Homepage: https://badblock.celenity.dev" && \
    echo "" && \
    cat abp/overrides/captcha_whitelist_abp_overrides.txt && \
    cat abp/captcha_whitelist_abp.txt) > temp_file && mv -v temp_file abp/captcha_whitelist_abp.txt

# Back-up old file
mv -v abp/captcha_whitelist.txt abp/old/captcha_whitelist_old.txt

# Rename new file
mv -v abp/captcha_whitelist_abp.txt abp/captcha_whitelist.txt
