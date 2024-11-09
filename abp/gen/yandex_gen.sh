#!/bin/bash

# Process the yandex.txt file
cat base/yandex.txt | grep -v '^#' | grep -v '^\s*$' | sed 's/^/||/' | sed 's/$/^/' | sort | uniq > abp/yandex_abp.txt

# Create the header and combine with the processed file
(echo "! Title: 🗞️ BadBlock - Yandex (ABP)" && \
    echo "! Version: $(date +'%d%B%Yv1')" && \
    echo "! Expires: 12 hours" && \
    echo "! Description: Block Yandex advertising, tracking, telemetry, & more!" && \
    echo "! Homepage: https://badblock.celenity.dev" && \
    echo "" && \
    cat abp/overrides/yandex_abp_overrides.txt && \
    cat abp/yandex_abp.txt) > temp_file && mv -v temp_file abp/yandex_abp.txt

# Back-up old file
mv -v abp/yandex.txt abp/old/yandex_old.txt

# Rename new file
mv -v abp/yandex_abp.txt abp/yandex.txt