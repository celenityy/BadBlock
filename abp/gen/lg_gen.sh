#!/bin/bash

# Process the lg.txt file
cat base/lg.txt | grep -v '^#' | grep -v '^\s*$' | sed 's/^/||/' | sed 's/$/^/' | sort | uniq > abp/lg_abp.txt

# Create the header and combine with the processed file
(echo "! Title: 📺 BadBlock - LG (ABP)" && \
    echo "! Version: $(date +'%d%B%Yv1')" && \
    echo "! Expires: 12 hours" && \
    echo "! Description: Block LG advertising, tracking, telemetry, & more!" && \
    echo "! Homepage: https://badblock.celenity.dev" && \
    echo "" && \
    cat abp/overrides/lg_abp_overrides.txt && \
    cat abp/lg_abp.txt) > temp_file && mv -v temp_file abp/lg_abp.txt

# Back-up old file
mv -v abp/lg.txt abp/old/lg_old.txt

# Rename new file
mv -v abp/lg_abp.txt abp/lg.txt
