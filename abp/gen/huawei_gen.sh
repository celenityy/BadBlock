#!/bin/bash

# Process the huawei.txt file
cat base/huawei.txt | grep -v '^#' | grep -v '^\s*$' | sed 's/^/||/' | sed 's/$/^/' | sort | uniq > abp/huawei_abp.txt

# Create the header and combine with the processed file
(echo "! Title: 🪁 BadBlock - Huawei (ABP)" && \
    echo "! Version: $(date +'%d%B%Yv1')" && \
    echo "! Expires: 12 hours" && \
    echo "! Description: Block Huawei advertising, tracking, telemetry, & more!" && \
    echo "! Homepage: https://badblock.celenity.dev" && \
    echo "" && \
    cat abp/overrides/huawei_abp_overrides.txt && \
    cat abp/huawei_abp.txt) > temp_file && mv -v temp_file abp/huawei_abp.txt

# Back-up old file
mv -v abp/huawei.txt abp/old/huawei_old.txt

# Rename new file
mv -v abp/huawei_abp.txt abp/huawei.txt