#!/bin/bash

# Process the facebook.txt file
cat base/facebook.txt | grep -v '^#' | grep -v '^\s*$' | sort | uniq > wildcards-no-star/facebook_no_star.txt

# Create the header and combine with the processed file
(echo "# Title: 📕 BadBlock - Facebook (Wildcards no *)" && \
    echo "# Version: $(date +'%d%B%Yv1')" && \
    echo "# Expires: 12 hours" && \
    echo "# Description: Block Facebook (Meta) advertising, tracking, promotions, & more!" && \
    echo "# Homepage: https://badblock.celenity.dev" && \
    echo "" && \
    cat wildcards-no-star/facebook_no_star.txt) > temp_file && mv -v temp_file wildcards-no-star/facebook_no_star.txt

# Back-up old file
mv -v wildcards-no-star/facebook.txt wildcards-no-star/old/facebook_old.txt

# Rename new file
mv -v wildcards-no-star/facebook_no_star.txt wildcards-no-star/facebook.txt