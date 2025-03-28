#!/bin/bash

# Process the nvidia.txt file
cat base/nvidia.txt | grep -v '^#' | grep -v '^\s*$' | sed 's/^/||/' | sed 's/$/^/' | sort | uniq > abp/nvidia_abp.txt

# Create the header and combine with the processed file
(echo "! Title: 👾 BadBlock - NVIDIA (ABP)" && \
    echo "! Version: $(date +'%d%B%Yv1')" && \
    echo "! Expires: 12 hours" && \
    echo "! Description: Block NVIDIA telemetry, analytics, & more!" && \
    echo "! Homepage: https://badblock.celenity.dev" && \
    echo "" && \
    cat abp/overrides/nvidia_abp_overrides.txt && \
    cat abp/nvidia_abp.txt) > temp_file && mv -v temp_file abp/nvidia_abp.txt

# Back-up old file
mv -v abp/nvidia.txt abp/old/nvidia_old.txt

# Rename new file
mv -v abp/nvidia_abp.txt abp/nvidia.txt
