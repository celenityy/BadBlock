#!/bin/bash

# Process the whitelist.txt file
cat base/whitelists/email.txt | grep -v '^#' | grep -v '^\s*$' | sed 's/^/@@|/' | sed 's/$/^/' | sort | uniq > abp/email_whitelist_abp.txt

# Create the header and combine with the processed file
(echo "! Title: 💌 BadBlock - Email Whitelist (ABP)" && \
    echo "! Version: $(date +'%d%B%Yv1')" && \
    echo "! Expires: 12 hours" && \
    echo "! Description: Unblock the Good! (Email Edition)" && \
    echo "! Homepage: https://badblock.celenity.dev" && \
    echo "" && \
    cat abp/overrides/email_whitelist_abp_overrides.txt && \
    cat abp/email_whitelist_abp.txt) > temp_file && mv -v temp_file abp/email_whitelist_abp.txt

# Back-up old file
mv -v abp/email_whitelist.txt abp/old/email_whitelist_old.txt

# Rename new file
mv -v abp/email_whitelist_abp.txt abp/email_whitelist.txt
