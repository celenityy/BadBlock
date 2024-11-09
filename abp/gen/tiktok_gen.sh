#!/bin/bash

# Process the tiktok.txt file
cat base/tiktok.txt | grep -v '^#' | grep -v '^\s*$' | sed 's/^/||/' | sed 's/$/^/' | sort | uniq > abp/tiktok_abp.txt

# Create the header and combine with the processed file
(echo "! Title: 🎵 BadBlock - TikTok (ABP)" && \
    echo "! Version: $(date +'%d%B%Yv1')" && \
    echo "! Expires: 12 hours" && \
    echo "! Description: Block TikTok (Bytedance) advertising, tracking, telemetry, & more!" && \
    echo "! Homepage: https://badblock.celenity.dev" && \
    echo "" && \
    cat abp/overrides/tiktok_abp_overrides.txt && \
    cat abp/tiktok_abp.txt) > temp_file && mv -v temp_file abp/tiktok_abp.txt

# Back-up old file
mv -v abp/tiktok.txt abp/old/tiktok_old.txt

# Rename new file
mv -v abp/tiktok_abp.txt abp/tiktok.txt