#!/bin/bash

# Process the apple.txt file
cat base/apple.txt | grep -v '^#' | grep -v '^\s*$' | sed 's/^/*./' | sort | uniq > wildcards-star/apple_star.txt

# Create the header and combine with the processed file
(echo "# Title:  BadBlock - Apple (Wildcards *)" && \
    echo "# Version: $(date +'%d%B%Yv1')" && \
    echo "# Expires: 12 hours" && \
    echo "# Description: Block Apple advertising, telemetry, promotions, & more!" && \
    echo "# Homepage: https://badblock.celenity.dev" && \
    echo "" && \
    cat wildcards-star/apple_star.txt) > temp_file && mv -v temp_file wildcards-star/apple_star.txt

# Back-up old file
mv -v wildcards-star/apple.txt wildcards-star/old/apple_old.txt

# Rename new file
mv -v wildcards-star/apple_star.txt wildcards-star/apple.txt
