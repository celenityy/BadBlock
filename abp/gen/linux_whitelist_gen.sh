#!/bin/bash

# Process the whitelist.txt file
cat base/whitelists/linux.txt | grep -v '^#' | grep -v '^\s*$' | sed 's/^/@@|/' | sort | uniq > abp/linux_whitelist_abp.txt

# Create the header and combine with the processed file
(echo "! Title: 🐧 BadBlock - GNU/Linux Whitelist (ABP)" && \
    echo "! Version: $(date +'%d%B%Yv1')" && \
    echo "! Expires: 12 hours" && \
    echo "! Description: Unblock the Good! (GNU/Linux Edition)" && \
    echo "! Homepage: https://badblock.celenity.dev" && \
    echo "" && \
    cat abp/overrides/linux_whitelist_abp_overrides.txt && \
    cat abp/linux_whitelist_abp.txt) > temp_file && mv -v temp_file abp/linux_whitelist_abp.txt

# Back-up old file
mv -v abp/linux_whitelist.txt abp/old/linux_whitelist_old.txt

# Rename new file
mv -v abp/linux_whitelist_abp.txt abp/linux_whitelist.txt
