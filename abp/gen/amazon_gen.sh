#!/bin/bash

# Process the amazon.txt file
cat base/amazon.txt | grep -v '^#' | grep -v '^\s*$' | sed 's/^/||/' | sed 's/$/^/' | sort | uniq > abp/amazon_abp.txt

# Create the header and combine with the processed file
(echo "! Title: 📦 BadBlock - Amazon (ABP)" && \
    echo "! Version: $(date +'%d%B%Yv1')" && \
    echo "! Expires: 12 hours" && \
    echo "! Description: Block Amazon advertising, tracking, telemetry, promotions, & more!" && \
    echo "! Homepage: https://badblock.celenity.dev" && \
    echo "" && \
    cat abp/overrides/amazon_abp_overrides.txt && \
    cat abp/amazon_abp.txt) > temp_file && mv -v temp_file abp/amazon_abp.txt

# Back-up old file
mv -v abp/amazon.txt abp/old/amazon_old.txt

# Rename new file
mv -v abp/amazon_abp.txt abp/amazon.txt