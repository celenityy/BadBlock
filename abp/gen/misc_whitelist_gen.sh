#!/bin/bash

# Process the whitelist.txt file
cat base/whitelists/misc.txt | grep -v '^#' | grep -v '^\s*$' | sed 's/^/@@|/' | sort | uniq > abp/misc_whitelist_abp.txt

# Create the header and combine with the processed file
(echo "! Title: 🏠 BadBlock - Misc. Whitelist (ABP)" && \
    echo "! Version: $(date +'%d%B%Yv1')" && \
    echo "! Expires: 12 hours" && \
    echo "! Description: Unblock the Good! (Misc. Edition)" && \
    echo "! Homepage: https://badblock.celenity.dev" && \
    echo "" && \
    cat abp/overrides/misc_whitelist_abp_overrides.txt && \
    cat abp/misc_whitelist_abp.txt) > temp_file && mv -v temp_file abp/misc_whitelist_abp.txt

# Back-up old file
mv -v abp/misc_whitelist.txt abp/old/misc_whitelist_old.txt

# Rename new file
mv -v abp/misc_whitelist_abp.txt abp/misc_whitelist.txt
