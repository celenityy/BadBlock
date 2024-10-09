#!/bin/bash

# Process the google.txt file
cat base/google.txt | grep -v '^#' | grep -v '^\s*$' | sort | uniq > wildcards-no-star/google_no_star.txt

# Create the header and combine with the processed file
(echo "# Title: 🔤 Google (Wildcards no *)" && \
    echo "# Version: $(date +'%d%B%Yv1')" && \
    echo "# Expires: 12 hours" && \
    echo "# Description: Block Google advertising, tracking, promotions, & more!" && \
    echo "# Homepage: https://badblock.celenity.dev" && \
    echo "" && \
    cat wildcards-no-star/google_no_star.txt) > temp_file && mv -v temp_file wildcards-no-star/google_no_star.txt

# Back-up old file
mv -v wildcards-no-star/google.txt wildcards-no-star/old/google_old.txt

# Rename new file
mv -v wildcards-no-star/google_no_star.txt wildcards-no-star/google.txt