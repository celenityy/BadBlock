#!/bin/bash

# Process the find-my.txt file
cat base/find-my.txt | grep -v '^#' | grep -v '^\s*$' | sed 's/^/||/' | sed 's/$/^/' | sort | uniq > abp/find-my_abp.txt

# Create the header and combine with the processed file
(echo "! Title: 📍 BadBlock - Find My (ABP)" && \
    echo "! Version: $(date +'%d%B%Yv1')" && \
    echo "! Expires: 12 hours" && \
    echo "! Description: Block services that try 'finding' your device!" && \
    echo "! Homepage: https://badblock.celenity.dev" && \
    echo "" && \
    cat abp/overrides/find-my_abp_overrides.txt && \
    cat abp/find-my_abp.txt) > temp_file && mv -v temp_file abp/find-my_abp.txt

# Back-up old file
mv -v abp/find-my.txt abp/old/find-my_old.txt

# Rename new file
mv -v abp/find-my_abp.txt abp/find-my.txt