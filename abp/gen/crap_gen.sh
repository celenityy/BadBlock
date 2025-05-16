#!/bin/bash

# Process the crap.txt file
cat base/crap.txt | grep -v '^#' | grep -v '^\s*$' | sed 's/^/||/' | sed 's/$/^$document/' | sort | uniq > abp/crap_abp.txt

# Create the header and combine with the processed file
(echo "! Title: 🗑️ BadBlock - Crap (ABP)" && \
    echo "! Version: $(date +'%d%B%Yv1')" && \
    echo "! Expires: 12 hours" && \
    echo "! Description: Block toxic domains!" && \
    echo "! Homepage: https://badblock.celenity.dev" && \
    echo "" && \
    cat abp/overrides/crap_abp_overrides.txt && \
    cat abp/crap_abp.txt) > temp_file && mv -v temp_file abp/crap_abp.txt

# Back-up old file
mv -v abp/crap.txt abp/old/crap_old.txt

# Rename new file
mv -v abp/crap_abp.txt abp/crap.txt
