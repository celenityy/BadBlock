#!/bin/bash

# Process the radar.txt file
cat base/radar.txt | grep -v '^#' | grep -v '^\s*$' | sed 's/^/||/' | sed 's/$/^/' | sort | uniq > abp/radar_abp.txt

# Create the header and combine with the processed file
(echo "! Title: 📡 BadBlock - Radar (ABP)" && \
    echo "! Version: $(date +'%d%B%Yv1')" && \
    echo "! Expires: 12 hours" && \
    echo "! Description: Block advertising, analytics, unwanted data collection, tracking, & more as they arise!" && \
    echo "! Homepage: https://badblock.celenity.dev" && \
    echo "" && \
    cat abp/overrides/radar_abp_overrides.txt && \
    cat abp/radar_abp.txt) > temp_file && mv -v temp_file abp/radar_abp.txt

# Back-up old file
mv -v abp/radar.txt abp/old/radar_old.txt

# Rename new file
mv -v abp/radar_abp.txt abp/radar.txt