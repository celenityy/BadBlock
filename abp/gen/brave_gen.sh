#!/bin/bash

# Process the brave.txt file
cat base/brave.txt | grep -v '^#' | grep -v '^\s*$' | sed 's/^/||/' | sed 's/$/^/' | sort | uniq > abp/brave_abp.txt

# Create the header and combine with the processed file
(echo "! Title: 🦁 BadBlock - Brave (ABP)" && \
    echo "! Version: $(date +'%d%B%Yv1')" && \
    echo "! Expires: 12 hours" && \
    echo "! Description: Block Brave telemetry, analytics, advertising, sponsored content, & more!" && \
    echo "! Homepage: https://badblock.celenity.dev" && \
    echo "" && \
    cat abp/overrides/brave_abp_overrides.txt && \
    cat abp/brave_abp.txt) > temp_file && mv -v temp_file abp/brave_abp.txt

# Back-up old file
mv -v abp/brave.txt abp/old/brave_old.txt

# Rename new file
mv -v abp/brave_abp.txt abp/brave.txt
