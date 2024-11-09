#!/bin/bash

# Process the annoyances.txt file
cat base/annoyances.txt | grep -v '^#' | grep -v '^\s*$' | sort | uniq > wildcards-no-star/annoyances_no_star.txt

# Create the header and combine with the processed file
(echo "# Title: 🍪 BadBlock - Annoyances (Wildcards no *)" && \
    echo "# Version: $(date +'%d%B%Yv1')" && \
    echo "# Expires: 12 hours" && \
    echo "# Description: Block Cookie banners, Live Chat widgets, & more!" && \
    echo "# Homepage: https://badblock.celenity.dev" && \
    echo "" && \
    cat wildcards-no-star/annoyances_no_star.txt) > temp_file && mv -v temp_file wildcards-no-star/annoyances_no_star.txt

# Back-up old file
mv -v wildcards-no-star/annoyances.txt wildcards-no-star/old/annoyances_old.txt

# Rename new file
mv -v wildcards-no-star/annoyances_no_star.txt wildcards-no-star/annoyances.txt