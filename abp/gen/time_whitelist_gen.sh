#!/bin/bash

# Process the whitelist.txt file
cat base/whitelists/time.txt | grep -v '^#' | grep -v '^\s*$' | sed 's/^/@@|/' | sed 's/$/^/' | sort | uniq > abp/time_whitelist_abp.txt

# Create the header and combine with the processed file
(echo "! Title: ⏰ BadBlock - Time Servers Whitelist (ABP)" && \
    echo "! Version: $(date +'%d%B%Yv1')" && \
    echo "! Expires: 12 hours" && \
    echo "! Description: Unblock the Good! (Time Edition)" && \
    echo "! Homepage: https://badblock.celenity.dev" && \
    echo "" && \
    cat abp/overrides/time_whitelist_abp_overrides.txt && \
    cat abp/time_whitelist_abp.txt) > temp_file && mv -v temp_file abp/time_whitelist_abp.txt

# Back-up old file
mv -v abp/time_whitelist.txt abp/old/time_whitelist_old.txt

# Rename new file
mv -v abp/time_whitelist_abp.txt abp/time_whitelist.txt
