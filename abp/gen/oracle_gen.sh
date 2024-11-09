#!/bin/bash

# Process the oracle.txt file
cat base/oracle.txt | grep -v '^#' | grep -v '^\s*$' | sed 's/^/||/' | sed 's/$/^/' | sort | uniq > abp/oracle_abp.txt

# Create the header and combine with the processed file
(echo "! Title: 🍇 BadBlock - Oracle (ABP)" && \
    echo "! Version: $(date +'%d%B%Yv1')" && \
    echo "! Expires: 12 hours" && \
    echo "! Description: Block Oracle advertising, tracking, telemetry, & more!" && \
    echo "! Homepage: https://badblock.celenity.dev" && \
    echo "" && \
    cat abp/overrides/oracle_abp_overrides.txt && \
    cat abp/oracle_abp.txt) > temp_file && mv -v temp_file abp/oracle_abp.txt

# Back-up old file
mv -v abp/oracle.txt abp/old/oracle_old.txt

# Rename new file
mv -v abp/oracle_abp.txt abp/oracle.txt