#!/bin/bash

# Process the mozilla.txt file
cat base/mozilla.txt | grep -v '^#' | grep -v '^\s*$' | sed 's/^/||/' | sed 's/$/^/' | sort | uniq > abp/mozilla_abp.txt

# Create the header and combine with the processed file
(echo "! Title: 🦖 BadBlock - Mozilla (ABP)" && \
    echo "! Version: $(date +'%d%B%Yv1')" && \
    echo "! Expires: 12 hours" && \
    echo "! Description: Block Mozilla telemetry, analytics, advertising, sponsored content, & more!" && \
    echo "! Homepage: https://badblock.celenity.dev" && \
    echo "" && \
    cat abp/overrides/mozilla_abp_overrides.txt && \
    cat abp/mozilla_abp.txt) > temp_file && mv -v temp_file abp/mozilla_abp.txt

# Back-up old file
mv -v abp/mozilla.txt abp/old/mozilla_old.txt

# Rename new file
mv -v abp/mozilla_abp.txt abp/mozilla.txt
