#!/bin/bash

# Process the whitelist.txt file
cat base/whitelists/content-blocking.txt | grep -v '^#' | grep -v '^\s*$' | sed 's/^/@@|/' | sed 's/$/^$important/' | sort | uniq > abp/content-blocking_whitelist_abp.txt

# Create the header and combine with the processed file
(echo "! Title: 🛡️ BadBlock - Content Blocking Whitelist (ABP)" && \
    echo "! Version: $(date +'%d%B%Yv1')" && \
    echo "! Expires: 12 hours" && \
    echo "! Description: Unblock the Good! (Content Blocking Edition)" && \
    echo "! Homepage: https://badblock.celenity.dev" && \
    echo "" && \
    cat abp/overrides/content-blocking_whitelist_abp_overrides.txt && \
    cat abp/content-blocking_whitelist_abp.txt) > temp_file && mv -v temp_file abp/content-blocking_whitelist_abp.txt

# Back-up old file
mv -v abp/content-blocking_whitelist.txt abp/old/content-blocking_whitelist_old.txt

# Rename new file
mv -v abp/content-blocking_whitelist_abp.txt abp/content-blocking_whitelist.txt