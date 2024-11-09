#!/bin/bash

# Process the twitter.txt file
cat base/twitter.txt | grep -v '^#' | grep -v '^\s*$' | sed 's/^/||/' | sed 's/$/^/' | sort | uniq > abp/twitter_abp.txt

# Create the header and combine with the processed file
(echo "! Title: 🐦 BadBlock - Twitter (ABP)" && \
    echo "! Version: $(date +'%d%B%Yv1')" && \
    echo "! Expires: 12 hours" && \
    echo "! Description: Block Twitter (X) advertising, tracking, telemetry, & more!" && \
    echo "! Homepage: https://badblock.celenity.dev" && \
    echo "" && \
    cat abp/overrides/twitter_abp_overrides.txt && \
    cat abp/twitter_abp.txt) > temp_file && mv -v temp_file abp/twitter_abp.txt

# Back-up old file
mv -v abp/twitter.txt abp/old/twitter_old.txt

# Rename new file
mv -v abp/twitter_abp.txt abp/twitter.txt