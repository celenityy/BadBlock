#!/bin/bash

# Process the whitelist.txt file
cat base/whitelists/safe-browsing.txt | grep -v '^#' | grep -v '^\s*$' | sed 's/^/@@|/' | sed 's/$/^/' | sort | uniq > abp/safe-browsing_whitelist_abp.txt

# Create the header and combine with the processed file
(echo "! Title: 🔒 BadBlock - Safe Browsing Whitelist (ABP)" && \
    echo "! Version: $(date +'%d%B%Yv1')" && \
    echo "! Expires: 12 hours" && \
    echo "! Description: Unblock the Good! (Safe Browsing Edition)" && \
    echo "! Homepage: https://badblock.celenity.dev" && \
    echo "" && \
    cat abp/overrides/safe-browsing_whitelist_abp_overrides.txt && \
    cat abp/safe-browsing_whitelist_abp.txt) > temp_file && mv -v temp_file abp/safe-browsing_whitelist_abp.txt

# Back-up old file
mv -v abp/safe-browsing_whitelist.txt abp/old/safe-browsing_whitelist_old.txt

# Rename new file
mv -v abp/safe-browsing_whitelist_abp.txt abp/safe-browsing_whitelist.txt
