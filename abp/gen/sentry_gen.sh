#!/bin/bash

# Process the sentry.txt file
cat base/sentry.txt | grep -v '^#' | grep -v '^\s*$' | sed 's/^/||/' | sed 's/$/^/' | sort | uniq > abp/sentry_abp.txt

# Create the header and combine with the processed file
(echo "! Title: 🪖 BadBlock - Sentry (ABP)" && \
    echo "! Version: $(date +'%d%B%Yv1')" && \
    echo "! Expires: 12 hours" && \
    echo "! Description: Block Sentry Analytics!" && \
    echo "! Homepage: https://badblock.celenity.dev" && \
    echo "" && \
    cat abp/overrides/sentry_abp_overrides.txt && \
    cat abp/sentry_abp.txt) > temp_file && mv -v temp_file abp/sentry_abp.txt

# Back-up old file
mv -v abp/sentry.txt abp/old/sentry_old.txt

# Rename new file
mv -v abp/sentry_abp.txt abp/sentry.txt