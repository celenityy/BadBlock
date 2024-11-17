#!/bin/bash

# Process the whitelist.txt file
cat base/whitelists/captive.txt | grep -v '^#' | grep -v '^\s*$' | sed 's/^/@@||/' | sed 's/$/^$important/' | sort | uniq > abp/captive_whitelist_abp.txt

# Create the header and combine with the processed file
(echo "! Title: 🛜 BadBlock - Captive Whitelist (ABP)" && \
    echo "! Version: $(date +'%d%B%Yv1')" && \
    echo "! Expires: 12 hours" && \
    echo "! Description: Unblock domains required for Captive Portals & Connectivity Checks!" && \
    echo "! Homepage: https://badblock.celenity.dev" && \
    echo "" && \
    cat abp/overrides/captive_whitelist_abp_overrides.txt && \
    cat abp/captive_whitelist_abp.txt) > temp_file && mv -v temp_file abp/captive_whitelist_abp.txt

# Back-up old file
mv -v abp/captive_whitelist.txt abp/old/captive_whitelist_old.txt

# Rename new file
mv -v abp/captive_whitelist_abp.txt abp/captive_whitelist.txt