#!/bin/bash

# Process the whitelist.txt file
cat base/whitelists/lan.txt | grep -v '^#' | grep -v '^\s*$' | sed 's/^/@@|/' | sed 's/$/^$important/' | sort | uniq > abp/lan_whitelist_abp.txt

# Create the header and combine with the processed file
(echo "! Title: 🛜 BadBlock - LAN Whitelist (ABP)" && \
    echo "! Version: $(date +'%d%B%Yv1')" && \
    echo "! Expires: 12 hours" && \
    echo "! Description: Unblock the Good! (LAN Edition)" && \
    echo "! Homepage: https://badblock.celenity.dev" && \
    echo "" && \
    cat abp/overrides/lan_whitelist_abp_overrides.txt && \
    cat abp/lan_whitelist_abp.txt) > temp_file && mv -v temp_file abp/lan_whitelist_abp.txt

# Back-up old file
mv -v abp/lan_whitelist.txt abp/old/lan_whitelist_old.txt

# Rename new file
mv -v abp/lan_whitelist_abp.txt abp/lan_whitelist.txt