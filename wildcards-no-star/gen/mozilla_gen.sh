#!/bin/bash

# Process the mozilla.txt file
cat base/mozilla.txt | grep -v '^#' | grep -v '^\s*$' | sort | uniq > wildcards-no-star/mozilla_no_star.txt

# Create the header and combine with the processed file
(echo "# Title: 🦖 BadBlock - Mozilla (Wildcards no *)" && \
    echo "# Version: $(date +'%d%B%Yv1')" && \
    echo "# Expires: 12 hours" && \
    echo "# Description: Block Mozilla telemetry, analytics, advertising, sponsored content, & more!" && \
    echo "# Homepage: https://badblock.celenity.dev" && \
    echo "" && \
    cat wildcards-no-star/mozilla_no_star.txt) > temp_file && mv -v temp_file wildcards-no-star/mozilla_no_star.txt

# Back-up old file
mv -v wildcards-no-star/mozilla.txt wildcards-no-star/old/mozilla_old.txt

# Rename new file
mv -v wildcards-no-star/mozilla_no_star.txt wildcards-no-star/mozilla.txt