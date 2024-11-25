#!/bin/bash

# Process the whitelist.txt file
cat base/whitelists/certs.txt | grep -v '^#' | grep -v '^\s*$' | sed 's/^/@@|/' | sed 's/$/^$important/' | sort | uniq > abp/certs_whitelist_abp.txt

# Create the header and combine with the processed file
(echo "! Title: 🖆 BadBlock - Certificate Validation Whitelist (ABP)" && \
    echo "! Version: $(date +'%d%B%Yv1')" && \
    echo "! Expires: 12 hours" && \
    echo "! Description: Unblock the Good! (Certificate Validation Edition)" && \
    echo "! Homepage: https://badblock.celenity.dev" && \
    echo "" && \
    cat abp/overrides/certs_whitelist_abp_overrides.txt && \
    cat abp/certs_whitelist_abp.txt) > temp_file && mv -v temp_file abp/certs_whitelist_abp.txt

# Back-up old file
mv -v abp/certs_whitelist.txt abp/old/certs_whitelist_old.txt

# Rename new file
mv -v abp/certs_whitelist_abp.txt abp/certs_whitelist.txt