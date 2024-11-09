#!/bin/bash

# Process the facebook.txt file
cat wildcards-no-star/facebook.txt | grep -v '^#' | grep -v '^\s*$' | sed 's/^/*./' | sort | uniq > wildcards-star/facebook_star.txt

# Create the header and combine with the processed file
(echo "# Title: 📕 BadBlock - Facebook (Wildcards *)" && \
    echo "# Version: $(date +'%d%B%Yv1')" && \
    echo "# Expires: 12 hours" && \
    echo "# Description: Block Facebook (Meta) advertising, tracking, promotions, & more!" && \
    echo "# Homepage: https://badblock.celenity.dev" && \
    echo "" && \
    cat wildcards-star/facebook_star.txt) > temp_file && mv -v temp_file wildcards-star/facebook_star.txt

# Back-up old file
mv -v wildcards-star/facebook.txt wildcards-star/old/facebook_old.txt

# Rename new file
mv -v wildcards-star/facebook_star.txt wildcards-star/facebook.txt