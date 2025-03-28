#!/bin/bash

# Process the gaming.txt file
cat base/gaming.txt | grep -v '^#' | grep -v '^\s*$' | sed 's/^/||/' | sed 's/$/^/' | sort | uniq > abp/gaming_abp.txt

# Create the header and combine with the processed file
(echo "! Title: 🎮 BadBlock - Gaming (ABP)" && \
    echo "! Version: $(date +'%d%B%Yv1')" && \
    echo "! Expires: 12 hours" && \
    echo "! Description: Block gaming telemetry, analytics, advertising, tracking, & more!" && \
    echo "! Homepage: https://badblock.celenity.dev" && \
    echo "" && \
    cat abp/overrides/gaming_abp_overrides.txt && \
    cat abp/gaming_abp.txt) > temp_file && mv -v temp_file abp/gaming_abp.txt

# Back-up old file
mv -v abp/gaming.txt abp/old/gaming_old.txt

# Rename new file
mv -v abp/gaming_abp.txt abp/gaming.txt
