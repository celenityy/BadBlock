#!/bin/bash

# Process the whitelist.txt file
cat base/whitelists/windows-update.txt | grep -v '^#' | grep -v '^\s*$' | sed 's/^/@@||/' | sed 's/$/^$important/' | sort | uniq > abp/windows-update_whitelist_abp.txt

# Create the header and combine with the processed file
(echo "! Title: 🪟 BadBlock - Windows Update Whitelist (ABP)" && \
    echo "! Version: $(date +'%d%B%Yv1')" && \
    echo "! Expires: 12 hours" && \
    echo "! Description: Unblock the Good! (Windows Update Edition)" && \
    echo "! Homepage: https://badblock.celenity.dev" && \
    echo "" && \
    cat abp/overrides/windows-update_whitelist_abp_overrides.txt && \
    cat abp/windows-update_whitelist_abp.txt) > temp_file && mv -v temp_file abp/windows-update_whitelist_abp.txt

# Back-up old file
mv -v abp/windows-update_whitelist.txt abp/old/windows-update_whitelist_old.txt

# Rename new file
mv -v abp/windows-update_whitelist_abp.txt abp/windows-update_whitelist.txt