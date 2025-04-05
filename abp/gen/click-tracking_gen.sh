#!/bin/bash

# Process the click-tracking.txt file
cat base/click-tracking.txt | grep -v '^#' | grep -v '^\s*$' | sed 's/^/||/' | sed 's/$/^$third-party,document/' | sort | uniq > abp/click-tracking_abp.txt

# Create the header and combine with the processed file
(echo "! Title: 🖱️ BadBlock - Click Tracking/Referral Domains (ABP)" && \
    echo "! Version: $(date +'%d%B%Yv1')" && \
    echo "! Expires: 12 hours" && \
    echo "! Description: Block click tracking!" && \
    echo "! Homepage: https://badblock.celenity.dev" && \
    echo "" && \
    cat abp/overrides/click-tracking_abp_overrides.txt && \
    cat abp/click-tracking_abp.txt) > temp_file && mv -v temp_file abp/click-tracking_abp.txt

# Back-up old file
mv -v abp/click-tracking.txt abp/old/click-tracking_old.txt

# Rename new file
mv -v abp/click-tracking_abp.txt abp/click-tracking.txt
