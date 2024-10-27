#!/bin/bash

# Process the gaming.txt file
cat wildcards-no-star/gaming.txt | grep -v '^#' | grep -v '^\s*$' | sed 's/^/*./' | sort | uniq > wildcards-star/gaming_star.txt

# Create the header and combine with the processed file
(echo "# Title: 🎮 Gaming Blocklist (Wildcards *)" && \
    echo "# Version: $(date +'%d%B%Yv1')" && \
    echo "# Expires: 12 hours" && \
    echo "# Description: Block gaming telemetry, analytics, advertising, tracking, & more!" && \
    echo "# Homepage: https://badblock.celenity.dev" && \
    echo "" && \
    cat wildcards-star/gaming_star.txt) > temp_file && mv -v temp_file wildcards-star/gaming_star.txt

# Back-up old file
mv -v wildcards-star/gaming.txt wildcards-star/old/gaming_old.txt

# Rename new file
mv -v wildcards-star/gaming_star.txt wildcards-star/gaming.txt