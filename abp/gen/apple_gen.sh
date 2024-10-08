#!/bin/bash

# Process the apple.txt file
cat base/apple.txt | grep -v '^#' | grep -v '^\s*$' | sed 's/^/||/' | sed 's/$/^/' | sort | uniq > abp/apple_abp.txt

# Create the header and combine with the processed file
(echo "! Title:  Apple Blocklist (ABP)" && \
    echo "! Version: $(date +'%d%B%Yv1')" && \
    echo "! Expires: 12 hours" && \
    echo "! Description: Block Apple advertising, telemetry, promotions, & more!" && \
    echo "! Homepage: https://badblock.celenity.dev" && \
    echo "" && \
    cat abp/overrides/apple_abp_overrides.txt && \
    cat abp/apple_abp.txt) > temp_file && mv -v temp_file abp/apple_abp.txt

# Back-up old file
mv -v abp/apple.txt abp/old/apple_old.txt

# Rename new file
mv -v abp/apple_abp.txt abp/apple.txt