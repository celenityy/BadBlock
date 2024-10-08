#!/bin/bash

# Process the roblox.txt file
cat base/roblox.txt | grep -v '^#' | grep -v '^\s*$' | sed 's/^/||/' | sed 's/$/^/' | sort | uniq > abp/roblox_abp.txt

# Create the header and combine with the processed file
(echo "! Title: 🎮 Roblox Blocklist (ABP)" && \
    echo "! Version: $(date +'%d%B%Yv1')" && \
    echo "! Expires: 12 hours" && \
    echo "! Description: Block Roblox telemetry, analytics, advertising, tracking, & more!" && \
    echo "! Homepage: https://badblock.celenity.dev" && \
    echo "" && \
    cat abp/overrides/roblox_abp_overrides.txt && \
    cat abp/roblox_abp.txt) > temp_file && mv -v temp_file abp/roblox_abp.txt

# Back-up old file
mv -v abp/roblox.txt abp/old/roblox_old.txt

# Rename new file
mv -v abp/roblox_abp.txt abp/roblox.txt