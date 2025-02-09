#!/bin/bash

# Process the whitelist.txt file
cat base/whitelists/browser.txt | grep -v '^#' | grep -v '^\s*$' | sed 's/^/@@|/' | sort | uniq > abp/browser_whitelist_abp.txt

# Create the header and combine with the processed file
(echo "! Title: 🌐 BadBlock - Browser Whitelist (ABP)" && \
    echo "! Version: $(date +'%d%B%Yv1')" && \
    echo "! Expires: 12 hours" && \
    echo "! Description: Unblock the Good! (Browser Edition)" && \
    echo "! Homepage: https://badblock.celenity.dev" && \
    echo "" && \
    cat abp/overrides/browser_whitelist_abp_overrides.txt && \
    cat abp/browser_whitelist_abp.txt) > temp_file && mv -v temp_file abp/browser_whitelist_abp.txt

# Back-up old file
mv -v abp/browser_whitelist.txt abp/old/browser_whitelist_old.txt

# Rename new file
mv -v abp/browser_whitelist_abp.txt abp/browser_whitelist.txt
