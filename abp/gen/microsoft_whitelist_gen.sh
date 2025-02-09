#!/bin/bash

# Process the whitelist.txt file
cat base/whitelists/microsoft.txt | grep -v '^#' | grep -v '^\s*$' | sed 's/^/@@|/' | sort | uniq > abp/microsoft_whitelist_abp.txt

# Create the header and combine with the processed file
(echo "! Title: 🪟 BadBlock - Microsoft Whitelist (ABP)" && \
    echo "! Version: $(date +'%d%B%Yv1')" && \
    echo "! Expires: 12 hours" && \
    echo "! Description: Unblock the Good! (Microsoft Edition)" && \
    echo "! Homepage: https://badblock.celenity.dev" && \
    echo "" && \
    cat abp/overrides/microsoft_whitelist_abp_overrides.txt && \
    cat abp/microsoft_whitelist_abp.txt) > temp_file && mv -v temp_file abp/microsoft_whitelist_abp.txt

# Back-up old file
mv -v abp/microsoft_whitelist.txt abp/old/microsoft_whitelist_old.txt

# Rename new file
mv -v abp/microsoft_whitelist_abp.txt abp/microsoft_whitelist.txt
