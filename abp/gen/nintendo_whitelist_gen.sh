#!/bin/bash

# Process the whitelist.txt file
cat base/whitelists/nintendo.txt | grep -v '^#' | grep -v '^\s*$' | $SED 's/^/@@|/' | $SED 's/$/^/' | sort | uniq > abp/nintendo_whitelist_abp.txt

# Create the header and combine with the processed file
(echo "! Title: ⭐ BadBlock - Nintendo Whitelist (ABP)" && \
    echo "! Version: $(date +'%d%B%Yv1')" && \
    echo "! Expires: 1 hour" && \
    echo "! Description: Unblock the Good! (Nintendo Edition)" && \
    echo "! Homepage: https://badblock.celenity.dev" && \
    echo "" && \
    cat abp/overrides/nintendo_whitelist_abp_overrides.txt && \
    cat abp/nintendo_whitelist_abp.txt) > temp_file && mv -v temp_file abp/nintendo_whitelist_abp.txt

# Back-up old file
mv -v abp/nintendo_whitelist.txt abp/old/nintendo_whitelist_old.txt

# Rename new file
mv -v abp/nintendo_whitelist_abp.txt abp/nintendo_whitelist.txt
