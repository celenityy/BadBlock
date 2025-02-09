#!/bin/bash

# Process the whitelist.txt file
cat base/whitelists/mozilla.txt | grep -v '^#' | grep -v '^\s*$' | sed 's/^/@@|/' | sort | uniq > abp/mozilla_whitelist_abp.txt

# Create the header and combine with the processed file
(echo "! Title: 🦖 BadBlock - Mozilla Whitelist (ABP)" && \
    echo "! Version: $(date +'%d%B%Yv1')" && \
    echo "! Expires: 12 hours" && \
    echo "! Description: Unblock the Good! (Mozilla Edition)" && \
    echo "! Homepage: https://badblock.celenity.dev" && \
    echo "" && \
    cat abp/overrides/mozilla_whitelist_abp_overrides.txt && \
    cat abp/mozilla_whitelist_abp.txt) > temp_file && mv -v temp_file abp/mozilla_whitelist_abp.txt

# Back-up old file
mv -v abp/mozilla_whitelist.txt abp/old/mozilla_whitelist_old.txt

# Rename new file
mv -v abp/mozilla_whitelist_abp.txt abp/mozilla_whitelist.txt
