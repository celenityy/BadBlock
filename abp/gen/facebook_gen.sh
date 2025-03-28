#!/bin/bash

# Process the facebook.txt file
cat base/facebook.txt | grep -v '^#' | grep -v '^\s*$' | sed 's/^/||/' | sed 's/$/^/' | sort | uniq > abp/facebook_abp.txt

# Create the header and combine with the processed file
(echo "! Title: 📕 BadBlock - Facebook (ABP)" && \
    echo "! Version: $(date +'%d%B%Yv1')" && \
    echo "! Expires: 12 hours" && \
    echo "! Description: Block Facebook (Meta) advertising, tracking, promotions, & more!" && \
    echo "! Homepage: https://badblock.celenity.dev" && \
    echo "" && \
    cat abp/overrides/facebook_abp_overrides.txt && \
    cat abp/facebook_abp.txt) > temp_file && mv -v temp_file abp/facebook_abp.txt

# Back-up old file
mv -v abp/facebook.txt abp/old/facebook_old.txt

# Rename new file
mv -v abp/facebook_abp.txt abp/facebook.txt
