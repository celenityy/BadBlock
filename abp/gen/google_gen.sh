#!/bin/bash

# Process the google.txt file
cat base/google.txt | grep -v '^#' | grep -v '^\s*$' | sed 's/^/||/' | sed 's/$/^/' | sort | uniq > abp/google_abp.txt

# Create the header and combine with the processed file
(echo "! Title: 🔤 BadBlock - Google (ABP)" && \
    echo "! Version: $(date +'%d%B%Yv1')" && \
    echo "! Expires: 12 hours" && \
    echo "! Description: Block Google advertising, tracking, promotions, & more!" && \
    echo "! Homepage: https://badblock.celenity.dev" && \
    echo "" && \
    cat abp/overrides/google_abp_overrides.txt && \
    cat abp/google_abp.txt) > temp_file && mv -v temp_file abp/google_abp.txt

# Back-up old file
mv -v abp/google.txt abp/old/google_old.txt

# Rename new file
mv -v abp/google_abp.txt abp/google.txt
