#!/bin/bash

# Process the whitelist.txt file
cat base/whitelist.txt | grep -v '^#' | grep -v '^\s*$' | sed 's/^/@@||/' | sed 's/$/^$important/' | sort | uniq > abp/whitelist_abp.txt

# Create the header and combine with the processed file
(echo "! Title: ✋ BadBlock -  Whitelist (ABP)" && \
    echo "! Version: $(date +'%d%B%Yv1')" && \
    echo "! Expires: 12 hours" && \
    echo "! Description: Unblock the Good!" && \
    echo "! Homepage: https://badblock.celenity.dev" && \
    echo "" && \
    cat abp/overrides/whitelist_abp_overrides.txt && \
    cat abp/whitelist_abp.txt) > temp_file && mv -v temp_file abp/whitelist_abp.txt

# Back-up old file
mv -v abp/whitelist.txt abp/old/whitelist_old.txt

# Rename new file
mv -v abp/whitelist_abp.txt abp/whitelist.txt