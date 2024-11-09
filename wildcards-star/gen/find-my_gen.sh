#!/bin/bash

# Process the find-my.txt file
cat base/find-my.txt | grep -v '^#' | grep -v '^\s*$' | sort | uniq > wildcards-star/find-my_star.txt

# Create the header and combine with the processed file
(echo "# Title: 📍 BadBlock - Find My (Wildcards *)" && \
    echo "# Version: $(date +'%d%B%Yv1')" && \
    echo "# Expires: 12 hours" && \
    echo "# Description: Block services that try 'finding' your device!" && \
    echo "# Homepage: https://badblock.celenity.dev" && \
    echo "" && \
    cat wildcards-star/find-my_star.txt) > temp_file && mv -v temp_file wildcards-star/find-my_star.txt

# Back-up old file
mv -v wildcards-star/find-my.txt wildcards-star/old/find-my_old.txt

# Rename new file
mv -v wildcards-star/find-my_star.txt wildcards-star/find-my.txt