#!/bin/bash

# Process the roblox.txt file
cat wildcards-no-star/roblox.txt | grep -v '^#' | grep -v '^\s*$' | sed 's/^/*./' | sort | uniq > wildcards-star/roblox_star.txt

# Create the header and combine with the processed file
(echo "# Title: 🎮 Roblox Blocklist (Wildcards *)" && \
    echo "# Version: $(date +'%d%B%Yv1')" && \
    echo "# Expires: 12 hours" && \
    echo "# Description: Block Roblox telemetry, analytics, advertising, tracking, & more!" && \
    echo "# Homepage: https://badblock.celenity.dev" && \
    echo "" && \
    cat wildcards-star/roblox_star.txt) > temp_file && mv -v temp_file wildcards-star/roblox_star.txt

# Back-up old file
mv -v wildcards-star/roblox.txt wildcards-star/old/roblox_old.txt

# Rename new file
mv -v wildcards-star/roblox_star.txt wildcards-star/roblox.txt