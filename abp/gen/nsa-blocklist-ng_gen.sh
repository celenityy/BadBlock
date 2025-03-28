#!/bin/bash

# Process the nsa-blocklist-ng.txt file
cat base/nsa-blocklist-ng.txt | grep -v '^#' | grep -v '^\s*$' | sed 's/^/||/' | sed 's/$/^/' | sort | uniq > abp/nsa-blocklist-ng_abp.txt

# Create the header and combine with the processed file
(echo "! Title: 🕵️ NSA Blocklist - Next Generation (ABP)" && \
    echo "! Version: $(date +'%d%B%Yv1')" && \
    echo "! Expires: 12 hours" && \
    echo "! Description: Block Big Brother!" && \
    echo "! Homepage: https://badblock.celenity.dev" && \
    echo "" && \
    cat abp/overrides/nsa-blocklist-ng_abp_overrides.txt && \
    cat abp/nsa-blocklist-ng_abp.txt) > temp_file && mv -v temp_file abp/nsa-blocklist-ng_abp.txt

# Back-up old file
mv -v abp/nsa-blocklist-ng.txt abp/old/nsa-blocklist-ng_old.txt

# Rename new file
mv -v abp/nsa-blocklist-ng_abp.txt abp/nsa-blocklist-ng.txt
