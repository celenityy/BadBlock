#!/bin/bash

# Process the adobe.txt file
cat base/adobe.txt | grep -v '^#' | grep -v '^\s*$' | sed 's/^/||/' | sed 's/$/^/' | sort | uniq > abp/adobe_abp.txt

# Create the header and combine with the processed file
(echo "! Title: 🎨 BadBlock - Adobe (ABP)" && \
    echo "! Version: $(date +'%d%B%Yv1')" && \
    echo "! Expires: 12 hours" && \
    echo "! Description: Block Adobe advertising, tracking, telemetry, promotions, & more!" && \
    echo "! Homepage: https://badblock.celenity.dev" && \
    echo "" && \
    cat abp/overrides/adobe_abp_overrides.txt && \
    cat abp/adobe_abp.txt) > temp_file && mv -v temp_file abp/adobe_abp.txt

# Back-up old file
mv -v abp/adobe.txt abp/old/adobe_old.txt

# Rename new file
mv -v abp/adobe_abp.txt abp/adobe.txt
