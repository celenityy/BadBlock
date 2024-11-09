#!/bin/bash

# Process the amazon.txt file
cat wildcards-no-star/amazon.txt | grep -v '^#' | grep -v '^\s*$' | sed 's/^/*./' | sort | uniq > wildcards-star/amazon_star.txt

# Create the header and combine with the processed file
(echo "# Title: 📦 BadBlock - Amazon (Wildcards *)" && \
    echo "# Version: $(date +'%d%B%Yv1')" && \
    echo "# Expires: 12 hours" && \
    echo "# Description: Block Amazon advertising, tracking, telemetry, promotions, & more!" && \
    echo "# Homepage: https://badblock.celenity.dev" && \
    echo "" && \
    cat wildcards-star/amazon_star.txt) > temp_file && mv -v temp_file wildcards-star/amazon_star.txt

# Back-up old file
mv -v wildcards-star/amazon.txt wildcards-star/old/amazon_old.txt

# Rename new file
mv -v wildcards-star/amazon_star.txt wildcards-star/amazon.txt