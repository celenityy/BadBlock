#!/bin/bash

# Process the unity.txt file
cat base/unity.txt | grep -v '^#' | grep -v '^\s*$' | sed 's/^/||/' | sed 's/$/^/' | sort | uniq > abp/unity_abp.txt

# Create the header and combine with the processed file
(echo "! Title: 🧰 BadBlock - Unity (ABP)" && \
    echo "! Version: $(date +'%d%B%Yv1')" && \
    echo "! Expires: 12 hours" && \
    echo "! Description: Block Unity advertising, tracking, telemetry, & more!" && \
    echo "! Homepage: https://badblock.celenity.dev" && \
    echo "" && \
    cat abp/overrides/unity_abp_overrides.txt && \
    cat abp/unity_abp.txt) > temp_file && mv -v temp_file abp/unity_abp.txt

# Back-up old file
mv -v abp/unity.txt abp/old/unity_old.txt

# Rename new file
mv -v abp/unity_abp.txt abp/unity.txt
