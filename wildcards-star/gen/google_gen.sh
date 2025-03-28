#!/bin/bash

# Process the google.txt file
cat base/google.txt | grep -v '^#' | grep -v '^\s*$' | sed 's/^/*./' | sort | uniq > wildcards-star/google_star.txt

# Create the header and combine with the processed file
(echo "# Title: 🔤 BadBlock - Google (Wildcards *)" && \
    echo "# Version: $(date +'%d%B%Yv1')" && \
    echo "# Expires: 12 hours" && \
    echo "# Description: Block Google advertising, tracking, promotions, & more!" && \
    echo "# Homepage: https://badblock.celenity.dev" && \
    echo "" && \
    cat wildcards-star/google_star.txt) > temp_file && mv -v temp_file wildcards-star/google_star.txt

# Back-up old file
mv -v wildcards-star/google.txt wildcards-star/old/google_old.txt

# Rename new file
mv -v wildcards-star/google_star.txt wildcards-star/google.txt
