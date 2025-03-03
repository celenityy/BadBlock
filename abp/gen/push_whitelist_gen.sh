#!/bin/bash

# Process the whitelist.txt file
cat base/whitelists/push.txt | grep -v '^#' | grep -v '^\s*$' | sed 's/^/@@|/' | sed 's/$/^/' | sort | uniq > abp/push_whitelist_abp.txt

# Create the header and combine with the processed file
(echo "! Title: 🔔 BadBlock - Push Notifications Whitelist (ABP)" && \
    echo "! Version: $(date +'%d%B%Yv1')" && \
    echo "! Expires: 12 hours" && \
    echo "! Description: Never miss a message!" && \
    echo "! Homepage: https://badblock.celenity.dev" && \
    echo "" && \
    cat abp/overrides/push_whitelist_abp_overrides.txt && \
    cat abp/push_whitelist_abp.txt) > temp_file && mv -v temp_file abp/push_whitelist_abp.txt

# Back-up old file
mv -v abp/push_whitelist.txt abp/old/push_whitelist_old.txt

# Rename new file
mv -v abp/push_whitelist_abp.txt abp/push_whitelist.txt
