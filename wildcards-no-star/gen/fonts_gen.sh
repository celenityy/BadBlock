#!/bin/bash

# Process the fonts.txt file
cat base/fonts.txt | grep -v '^#' | grep -v '^\s*$' | sort | uniq > wildcards-no-star/fonts_no_star.txt

# Create the header and combine with the processed file
(echo "# Title: ✍️ BadBlock - Fonts (Wildcards no *)" && \
    echo "# Version: $(date +'%d%B%Yv1')" && \
    echo "# Expires: 1 hour" && \
    echo "# Description: Block web fonts to improve privacy, security, and performance." && \
    echo "# Homepage: https://badblock.celenity.dev" && \
    echo "" && \
    cat wildcards-no-star/fonts_no_star.txt) > temp_file && mv -v temp_file wildcards-no-star/fonts_no_star.txt

# Back-up old file
mv -v wildcards-no-star/fonts.txt wildcards-no-star/old/fonts_old.txt

# Rename new file
mv -v wildcards-no-star/fonts_no_star.txt wildcards-no-star/fonts.txt
