#!/bin/bash

# Process the personal.txt file
cat base/personal.txt | grep -v '^#' | grep -v '^\s*$' | sed 's/^/||/' | sed 's/$/^/' | sort | uniq > abp/personal_abp.txt

# Create the header and combine with the processed file
(echo "! Title: 🚀 Personal Blocklist (ABP)" && \
    echo "! Version: $(date +'%d%B%Yv1')" && \
    echo "! Expires: 12 hours" && \
    echo "! Description: My Personal Blocklist!" && \
    echo "! Homepage: https://badblock.celenity.dev" && \
    echo "" && \
    cat abp/overrides/personal_abp_overrides.txt && \
    cat abp/personal_abp.txt) > temp_file && mv -v temp_file abp/personal_abp.txt

# Back-up old file
mv -v abp/personal.txt abp/old/personal_old.txt

# Rename new file
mv -v abp/personal_abp.txt abp/personal.txt
