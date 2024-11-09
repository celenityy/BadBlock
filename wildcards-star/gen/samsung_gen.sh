#!/bin/bash

# Process the samsung.txt file
cat base/samsung.txt | grep -v '^#' | grep -v '^\s*$' | sort | uniq > wildcards-star/samsung_star.txt

# Create the header and combine with the processed file
(echo "# Title: 🦕 BadBlock - Samsung (Wildcards *)" && \
    echo "# Version: $(date +'%d%B%Yv1')" && \
    echo "# Expires: 12 hours" && \
    echo "# Description: Block Samsung advertising, tracking, telemetry, & more!" && \
    echo "# Homepage: https://badblock.celenity.dev" && \
    echo "" && \
    cat wildcards-star/samsung_star.txt) > temp_file && mv -v temp_file wildcards-star/samsung_star.txt

# Back-up old file
mv -v wildcards-star/samsung.txt wildcards-star/old/samsung_old.txt

# Rename new file
mv -v wildcards-star/samsung_star.txt wildcards-star/samsung.txt