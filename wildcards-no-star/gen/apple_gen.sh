#!/bin/bash

# Process the apple.txt file
cat base/apple.txt | grep -v '^#' | grep -v '^\s*$' | sed 's/^/*./' | sort | uniq > wildcards-no-star/apple_no_star.txt

# Create the header and combine with the processed file
(echo "# Title:  Apple Blocklist (Wildcards no *)" && \
    echo "# Version: $(date +'%d%B%Yv1')" && \
    echo "# Expires: 12 hours" && \
    echo "# Description: Block Apple advertising, telemetry, promotions, & more!" && \
    echo "# Homepage: https://badblock.celenity.dev" && \
    echo "" && \
    cat wildcards-no-star/apple_no_star.txt) > temp_file && mv -v temp_file wildcards-no-star/apple_no_star.txt

# Back-up old file
mv -v wildcards-no-star/apple.txt wildcards-no-star/old/apple_old.txt

# Rename new file
mv -v wildcards-no-star/apple_no_star.txt wildcards-no-star/apple.txt