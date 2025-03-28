#!/bin/bash

# Process the samsung.txt file
cat base/samsung.txt | grep -v '^#' | grep -v '^\s*$' | sed 's/^/||/' | sed 's/$/^/' | sort | uniq > abp/samsung_abp.txt

# Create the header and combine with the processed file
(echo "! Title: 🦕 BadBlock - Samsung (ABP)" && \
    echo "! Version: $(date +'%d%B%Yv1')" && \
    echo "! Expires: 12 hours" && \
    echo "! Description: Block Samsung advertising, tracking, telemetry, & more!" && \
    echo "! Homepage: https://badblock.celenity.dev" && \
    echo "" && \
    cat abp/overrides/samsung_abp_overrides.txt && \
    cat abp/samsung_abp.txt) > temp_file && mv -v temp_file abp/samsung_abp.txt

# Back-up old file
mv -v abp/samsung.txt abp/old/samsung_old.txt

# Rename new file
mv -v abp/samsung_abp.txt abp/samsung.txt
