#!/bin/bash

# Process the whitelist.txt file
cat base/whitelists/mobile.txt | grep -v '^#' | grep -v '^\s*$' | sed 's/^/@@|/' | sort | uniq > abp/mobile_whitelist_abp.txt

# Create the header and combine with the processed file
(echo "! Title: 📶 BadBlock - Mobile Whitelist (ABP)" && \
    echo "! Version: $(date +'%d%B%Yv1')" && \
    echo "! Expires: 12 hours" && \
    echo "! Description: Unblock the Good! (Mobile Edition)" && \
    echo "! Homepage: https://badblock.celenity.dev" && \
    echo "" && \
    cat abp/overrides/mobile_whitelist_abp_overrides.txt && \
    cat abp/mobile_whitelist_abp.txt) > temp_file && mv -v temp_file abp/mobile_whitelist_abp.txt

# Back-up old file
mv -v abp/mobile_whitelist.txt abp/old/mobile_whitelist_old.txt

# Rename new file
mv -v abp/mobile_whitelist_abp.txt abp/mobile_whitelist.txt
