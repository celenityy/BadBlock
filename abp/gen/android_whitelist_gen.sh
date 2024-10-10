#!/bin/bash

# Process the whitelist.txt file
cat base/whitelists/android.txt | grep -v '^#' | grep -v '^\s*$' | sed 's/^/@@||/' | sed 's/$/^$important/' | sort | uniq > abp/android_whitelist_abp.txt

# Create the header and combine with the processed file
(echo "! Title: 🤖 BadBlock - Android Whitelist (ABP)" && \
    echo "! Version: $(date +'%d%B%Yv1')" && \
    echo "! Expires: 12 hours" && \
    echo "! Description: Unblock the Good! (Android Edition)" && \
    echo "! Homepage: https://badblock.celenity.dev" && \
    echo "" && \
    cat abp/overrides/android_whitelist_abp_overrides.txt && \
    cat abp/android_whitelist_abp.txt) > temp_file && mv -v temp_file abp/android_whitelist_abp.txt

# Back-up old file
mv -v abp/android_whitelist.txt abp/old/android_whitelist_old.txt

# Rename new file
mv -v abp/android_whitelist_abp.txt abp/android_whitelist.txt