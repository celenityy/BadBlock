#!/bin/bash

# Process the fonts.txt file
cat base/fonts.txt | grep -v '^#' | grep -v '^\s*$' | $SED 's/^/||/' | $SED 's/$/^/' | sort | uniq > abp/fonts_abp.txt

# Create the header and combine with the processed file
(echo "! Title: ✍️ BadBlock - Fonts (ABP)" && \
    echo "! Version: $(date +'%d%B%Yv1')" && \
    echo "! Expires: 1 hour" && \
    echo "! Description: Block web fonts to improve privacy, security, and performance." && \
    echo "! Homepage: https://badblock.celenity.dev" && \
    echo "" && \
    cat abp/overrides/fonts_abp_overrides.txt && \
    cat abp/fonts_abp.txt) > temp_file && mv -v temp_file abp/fonts_abp.txt

# Back-up old file
mv -v abp/fonts.txt abp/old/fonts_old.txt

# Rename new file
mv -v abp/fonts_abp.txt abp/fonts.txt
