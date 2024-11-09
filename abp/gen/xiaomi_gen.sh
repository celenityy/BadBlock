#!/bin/bash

# Process the xiaomi.txt file
cat base/xiaomi.txt | grep -v '^#' | grep -v '^\s*$' | sed 's/^/||/' | sed 's/$/^/' | sort | uniq > abp/xiaomi_abp.txt

# Create the header and combine with the processed file
(echo "! Title: Ⓜ️ BadBlock - Xiaomi (ABP)" && \
    echo "! Version: $(date +'%d%B%Yv1')" && \
    echo "! Expires: 12 hours" && \
    echo "! Description: Block Xiaomi (Mi) advertising, tracking, telemetry, & more!" && \
    echo "! Homepage: https://badblock.celenity.dev" && \
    echo "" && \
    cat abp/overrides/xiaomi_abp_overrides.txt && \
    cat abp/xiaomi_abp.txt) > temp_file && mv -v temp_file abp/xiaomi_abp.txt

# Back-up old file
mv -v abp/xiaomi.txt abp/old/xiaomi_old.txt

# Rename new file
mv -v abp/xiaomi_abp.txt abp/xiaomi.txt