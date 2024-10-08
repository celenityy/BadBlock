#!/bin/bash

# Process the annoyances.txt file
cat base/annoyances.txt | grep -v '^#' | grep -v '^\s*$' | sed 's/^/||/' | sed 's/$/^/' | sort | uniq > abp/annoyances_abp.txt

# Create the header and combine with the processed file
(echo "! Title: 🍪 Annoyances (ABP)" && \
    echo "! Version: $(date +'%d%B%Yv1')" && \
    echo "! Expires: 12 hours" && \
    echo "! Description: Block Cookie banners, Live Chat widgets, & more!" && \
    echo "! Homepage: https://badblock.celenity.dev" && \
    echo "" && \
    cat abp/overrides/annoyances_abp_overrides.txt && \
    cat abp/annoyances_abp.txt) > temp_file && mv -v temp_file abp/annoyances_abp.txt

# Back-up old file
mv -v abp/annoyances.txt abp/old/annoyances_old.txt

# Rename new file
mv -v abp/annoyances_abp.txt abp/annoyances.txt