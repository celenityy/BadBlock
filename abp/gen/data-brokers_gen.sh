#!/bin/bash

# Process the data-brokers.txt file
cat base/data-brokers.txt | grep -v '^#' | grep -v '^\s*$' | sed 's/^/||/' | sed 's/$/^/' | sort | uniq > abp/data-brokers_abp.txt

# Create the header and combine with the processed file
(echo "! Title: 💰 Data Brokers Blocklist (ABP)" && \
    echo "! Version: $(date +'%d%B%Yv1')" && \
    echo "! Expires: 12 hours" && \
    echo "! Description: Stop the People Search!" && \
    echo "! Homepage: https://badblock.celenity.dev" && \
    echo "" && \
    cat abp/overrides/data-brokers_abp_overrides.txt && \
    cat abp/data-brokers_abp.txt) > temp_file && mv -v temp_file abp/data-brokers_abp.txt

# Back-up old file
mv -v abp/data-brokers.txt abp/old/data-brokers_old.txt

# Rename new file
mv -v abp/data-brokers_abp.txt abp/data-brokers.txt