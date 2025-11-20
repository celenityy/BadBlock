#!/bin/bash

# Process the fonts.txt file
cat base/fonts.txt | grep -v '^#' | grep -v '^\s*$' | $SED 's/^/*./' | sort | uniq > wildcards-star/fonts_star.txt

# Create the header and combine with the processed file
(echo "# Title: ✍️ BadBlock - Fonts (Wildcards *)" && \
    echo "# Version: $(date +'%d%B%Yv1')" && \
    echo "# Expires: 12 hours" && \
    echo "# Description: Block web fonts to improve privacy, security, and performance." && \
    echo "# Homepage: https://badblock.celenity.dev" && \
    echo "" && \
    cat wildcards-star/fonts_star.txt) > temp_file && mv -v temp_file wildcards-star/fonts_star.txt

# Back-up old file
mv -v wildcards-star/fonts.txt wildcards-star/old/fonts_old.txt

# Rename new file
mv -v wildcards-star/fonts_star.txt wildcards-star/fonts.txt
