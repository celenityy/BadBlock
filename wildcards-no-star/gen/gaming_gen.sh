#!/bin/bash

# Process the gaming.txt file
cat base/gaming.txt | grep -v '^#' | grep -v '^\s*$' | sort | uniq > wildcards-no-star/gaming_no_star.txt

# Create the header and combine with the processed file
(echo "# Title: 🎮 Gaming Blocklist (Wildcards no *)" && \
    echo "# Version: $(date +'%d%B%Yv1')" && \
    echo "# Expires: 12 hours" && \
    echo "# Description: Block gaming telemetry, analytics, advertising, tracking, & more!" && \
    echo "# Homepage: https://badblock.celenity.dev" && \
    echo "" && \
    cat wildcards-no-star/gaming_no_star.txt) > temp_file && mv -v temp_file wildcards-no-star/gaming_no_star.txt

# Back-up old file
mv -v wildcards-no-star/gaming.txt wildcards-no-star/old/gaming_old.txt

# Rename new file
mv -v wildcards-no-star/gaming_no_star.txt wildcards-no-star/gaming.txt