#!/bin/bash

# Process the brave.txt file
cat base/brave.txt | grep -v '^#' | grep -v '^\s*$' | sort | uniq > wildcards-no-star/brave_no_star.txt

# Create the header and combine with the processed file
(echo "# Title: 🦁 BadBlock - Brave (Wildcards no *)" && \
    echo "# Version: $(date +'%d%B%Yv1')" && \
    echo "# Expires: 12 hours" && \
    echo "# Description: Block Brave telemetry, analytics, advertising, sponsored content, & more!" && \
    echo "# Homepage: https://badblock.celenity.dev" && \
    echo "" && \
    cat wildcards-no-star/brave_no_star.txt) > temp_file && mv -v temp_file wildcards-no-star/brave_no_star.txt

# Back-up old file
mv -v wildcards-no-star/brave.txt wildcards-no-star/old/brave_old.txt

# Rename new file
mv -v wildcards-no-star/brave_no_star.txt wildcards-no-star/brave.txt