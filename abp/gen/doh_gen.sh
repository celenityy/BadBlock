#!/bin/bash

# Process the doh.txt file
cat base/doh.txt | grep -v '^#' | grep -v '^\s*$' | sort | uniq > abp/doh_abp.txt

# Create the header and combine with the processed file
(echo "! Title: 🍩 BadBlock - D'oh! (ABP)" && \
    echo "! Version: $(date +'%d%B%Yv1')" && \
    echo "! Expires: 12 hours" && \
    echo "! Description: Stop DNS servers from bypassing your firewall!" && \
    echo "! Homepage: https://badblock.celenity.dev" && \
    echo "" && \
    cat abp/doh_abp.txt) > temp_file && mv -v temp_file abp/doh_abp.txt

# Back-up old file
mv -v abp/doh.txt abp/old/doh_old.txt

# Rename new file
mv -v abp/doh_abp.txt abp/doh.txt