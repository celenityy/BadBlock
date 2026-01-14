#!/bin/bash

# Process the monitoring.txt file
cat base/monitoring.txt | grep -v '^#' | grep -v '^\s*$' | $SED 's/^/||/' | $SED 's/$/^/' | sort | uniq > abp/monitoring_abp.txt

# Create the header and combine with the processed file
(echo "! Title: 🔎 BadBlock - Anti-Monitoring (ABP)" && \
    echo "! Version: $(date +'%d%B%Yv1')" && \
    echo "! Expires: 1 hour" && \
    echo "! Description: Stop the spying!" && \
    echo "! Homepage: https://badblock.celenity.dev" && \
    echo "" && \
    cat abp/overrides/monitoring_abp_overrides.txt && \
    cat abp/monitoring_abp.txt) > temp_file && mv -v temp_file abp/monitoring_abp.txt

# Back-up old file
mv -v abp/monitoring.txt abp/old/monitoring_old.txt

# Rename new file
mv -v abp/monitoring_abp.txt abp/monitoring.txt
