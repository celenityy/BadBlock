#!/bin/bash

# Process the yahoo.txt file
cat base/yahoo.txt | grep -v '^#' | grep -v '^\s*$' | sed 's/^/||/' | sed 's/$/^/' | sort | uniq > abp/yahoo_abp.txt

# Create the header and combine with the processed file
(echo "! Title: 🖀 BadBlock - Yahoo! (ABP)" && \
    echo "! Version: $(date +'%d%B%Yv1')" && \
    echo "! Expires: 12 hours" && \
    echo "! Description: Block Yahoo! advertising, tracking, telemetry, & more!" && \
    echo "! Homepage: https://badblock.celenity.dev" && \
    echo "" && \
    cat abp/overrides/yahoo_abp_overrides.txt && \
    cat abp/yahoo_abp.txt) > temp_file && mv -v temp_file abp/yahoo_abp.txt

# Back-up old file
mv -v abp/yahoo.txt abp/old/yahoo_old.txt

# Rename new file
mv -v abp/yahoo_abp.txt abp/yahoo.txt