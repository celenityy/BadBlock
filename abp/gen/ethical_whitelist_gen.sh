#!/bin/bash

# Process the whitelist.txt file
cat base/whitelists/ethical.txt | grep -v '^#' | grep -v '^\s*$' | sed 's/^/@@|/' | sed 's/$/^$important/' | sort | uniq > abp/ethical_whitelist_abp.txt

# Create the header and combine with the processed file
(echo "! Title: 😇 BadBlock - Ethical Whitelist (ABP)" && \
    echo "! Version: $(date +'%d%B%Yv1')" && \
    echo "! Expires: 12 hours" && \
    echo "! Description: Unblock "Ethical" Data Collection!" && \
    echo "! Homepage: https://badblock.celenity.dev" && \
    echo "" && \
    cat abp/overrides/ethical_whitelist_abp_overrides.txt && \
    cat abp/ethical_whitelist_abp.txt) > temp_file && mv -v temp_file abp/ethical_whitelist_abp.txt

# Back-up old file
mv -v abp/ethical_whitelist.txt abp/old/ethical_whitelist_old.txt

# Rename new file
mv -v abp/ethical_whitelist_abp.txt abp/ethical_whitelist.txt