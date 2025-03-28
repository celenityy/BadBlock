#!/bin/bash

# Process the brave.txt file
cat base/brave.txt | grep -v '^#' | grep -v '^\s*$' | sed 's/^/*./' | sort | uniq > wildcards-star/brave_star.txt

# Create the header and combine with the processed file
(echo "# Title: 🦁 BadBlock - Brave (Wildcards *)" && \
    echo "# Version: $(date +'%d%B%Yv1')" && \
    echo "# Expires: 12 hours" && \
    echo "# Description: Block Brave telemetry, analytics, advertising, sponsored content, & more!" && \
    echo "# Homepage: https://badblock.celenity.dev" && \
    echo "" && \
    cat wildcards-star/brave_star.txt) > temp_file && mv -v temp_file wildcards-star/brave_star.txt

# Back-up old file
mv -v wildcards-star/brave.txt wildcards-star/old/brave_old.txt

# Rename new file
mv -v wildcards-star/brave_star.txt wildcards-star/brave.txt
