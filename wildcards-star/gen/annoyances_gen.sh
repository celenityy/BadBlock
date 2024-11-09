#!/bin/bash

# Process the annoyances.txt file
cat wildcards-no-star/annoyances.txt | grep -v '^#' | grep -v '^\s*$' | sed 's/^/*./' | sort | uniq > wildcards-star/annoyances_star.txt

# Create the header and combine with the processed file
(echo "# Title: 🍪 BadBlock - Annoyances (Wildcards *)" && \
    echo "# Version: $(date +'%d%B%Yv1')" && \
    echo "# Expires: 12 hours" && \
    echo "# Description: Block Cookie banners, Live Chat widgets, & more!" && \
    echo "# Homepage: https://badblock.celenity.dev" && \
    echo "" && \
    cat wildcards-star/annoyances_star.txt) > temp_file && mv -v temp_file wildcards-star/annoyances_star.txt

# Back-up old file
mv -v wildcards-star/annoyances.txt wildcards-star/old/annoyances_old.txt

# Rename new file
mv -v wildcards-star/annoyances_star.txt wildcards-star/annoyances.txt