#!/bin/bash

# Process the whitelist.txt file
cat base/whitelists/emergency.txt | grep -v '^#' | grep -v '^\s*$' | sed 's/^/@@|/' | sed 's/$/^/' | sort | uniq > abp/emergency_whitelist_abp.txt

# Create the header and combine with the processed file
(echo "! Title: 📞 BadBlock - Helpline Whitelist (ABP)" && \
    echo "! Version: $(date +'%d%B%Yv1')" && \
    echo "! Expires: 12 hours" && \
    echo "! Description: Unblock the Good! (Helpline Edition)" && \
    echo "! Homepage: https://badblock.celenity.dev" && \
    echo "" && \
    cat abp/overrides/emergency_whitelist_abp_overrides.txt && \
    cat abp/emergency_whitelist_abp.txt) > temp_file && mv -v temp_file abp/emergency_whitelist_abp.txt

# Back-up old file
mv -v abp/emergency_whitelist.txt abp/old/emergency_whitelist_old.txt

# Rename new file
mv -v abp/emergency_whitelist_abp.txt abp/emergency_whitelist.txt
