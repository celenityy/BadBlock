#!/bin/bash

# Process the matomo.txt file
cat base/matomo.txt | grep -v '^#' | grep -v '^\s*$' | sed 's/^/||/' | sed 's/$/^/' | sort | uniq > abp/matomo_abp.txt

# Create the header and combine with the processed file
(echo "! Title: 📊 BadBlock - Matomo (ABP)" && \
    echo "! Version: $(date +'%d%B%Yv1')" && \
    echo "! Expires: 12 hours" && \
    echo "! Description: Block Matomo Analytics!" && \
    echo "! Homepage: https://badblock.celenity.dev" && \
    echo "" && \
    cat abp/overrides/matomo_abp_overrides.txt && \
    cat abp/matomo_abp.txt) > temp_file && mv -v temp_file abp/matomo_abp.txt

# Back-up old file
mv -v abp/matomo.txt abp/old/matomo_old.txt

# Rename new file
mv -v abp/matomo_abp.txt abp/matomo.txt
