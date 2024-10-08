#!/bin/bash

# Process the microsoft.txt file
cat base/microsoft.txt | grep -v '^#' | grep -v '^\s*$' | sed 's/^/||/' | sed 's/$/^/' | sort | uniq > abp/microsoft_abp.txt

# Create the header and combine with the processed file
(echo "! Title: 🪟 Microsoft Blocklist (ABP)" && \
    echo "! Version: $(date +'%d%B%Yv1')" && \
    echo "! Expires: 12 hours" && \
    echo "! Description: Close the Windows! Block M$ advertising, tracking, telemetry, promotions, & more!" && \
    echo "! Homepage: https://badblock.celenity.dev" && \
    echo "" && \
    cat abp/overrides/microsoft_abp_overrides.txt && \
    cat abp/microsoft_abp.txt) > temp_file && mv -v temp_file abp/microsoft_abp.txt

# Back-up old file
mv -v abp/microsoft.txt abp/old/microsoft_old.txt

# Rename new file
mv -v abp/microsoft_abp.txt abp/microsoft.txt