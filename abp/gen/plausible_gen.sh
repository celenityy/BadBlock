#!/bin/bash

# Process the plausible.txt file
cat base/plausible.txt | grep -v '^#' | grep -v '^\s*$' | sed 's/^/||/' | sed 's/$/^/' | sort | uniq > abp/plausible_abp.txt

# Create the header and combine with the processed file
(echo "! Title: 🤔 BadBlock - Plausible (ABP)" && \
    echo "! Version: $(date +'%d%B%Yv1')" && \
    echo "! Expires: 12 hours" && \
    echo "! Description: Block Plausible Analytics!" && \
    echo "! Homepage: https://badblock.celenity.dev" && \
    echo "" && \
    cat abp/overrides/plausible_abp_overrides.txt && \
    cat abp/plausible_abp.txt) > temp_file && mv -v temp_file abp/plausible_abp.txt

# Back-up old file
mv -v abp/plausible.txt abp/old/plausible_old.txt

# Rename new file
mv -v abp/plausible_abp.txt abp/plausible.txt
