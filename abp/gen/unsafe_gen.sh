#!/bin/bash

# Process the unsafe.txt file
cat base/unsafe.txt | grep -v '^#' | grep -v '^\s*$' | sed 's/^/||/' | sed 's/$/^/' | sort | uniq > abp/unsafe_abp.txt

# Create the header and combine with the processed file
(echo "! Title: ⚠️ BadBlock - Unsafe (ABP)" && \
    echo "! Version: $(date +'%d%B%Yv1')" && \
    echo "! Expires: 12 hours" && \
    echo "! Description: Block nasty domains!" && \
    echo "! Homepage: https://badblock.celenity.dev" && \
    echo "" && \
    cat abp/overrides/unsafe_abp_overrides.txt && \
    cat abp/unsafe_abp.txt) > temp_file && mv -v temp_file abp/unsafe_abp.txt

# Back-up old file
mv -v abp/unsafe.txt abp/old/unsafe_old.txt

# Rename new file
mv -v abp/unsafe_abp.txt abp/unsafe.txt