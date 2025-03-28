#!/bin/bash

# Process the amazon.txt file
cat base/amazon.txt | grep -v '^#' | grep -v '^\s*$' | sort | uniq > wildcards-no-star/amazon_no_star.txt

# Create the header and combine with the processed file
(echo "# Title: 📦 BadBlock - Amazon (Wildcards no *)" && \
    echo "# Version: $(date +'%d%B%Yv1')" && \
    echo "# Expires: 12 hours" && \
    echo "# Description: Block Amazon advertising, tracking, telemetry, promotions, & more!" && \
    echo "# Homepage: https://badblock.celenity.dev" && \
    echo "" && \
    cat wildcards-no-star/amazon_no_star.txt) > temp_file && mv -v temp_file wildcards-no-star/amazon_no_star.txt

# Back-up old file
mv -v wildcards-no-star/amazon.txt wildcards-no-star/old/amazon_old.txt

# Rename new file
mv -v wildcards-no-star/amazon_no_star.txt wildcards-no-star/amazon.txt
