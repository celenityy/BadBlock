#!/bin/bash

# Process the personal.txt file
cat base/personal.txt | grep -v '^#' | grep -v '^\s*$' | sed 's/^/*./' | sort | uniq > wildcards-star/personal_star.txt

# Create the header and combine with the processed file
(echo "# Title: 🚀 Personal Blocklist (Wildcards *)" && \
    echo "# Version: $(date +'%d%B%Yv1')" && \
    echo "# Expires: 12 hours" && \
    echo "# Description: My Personal Blocklist!" && \
    echo "# Homepage: https://badblock.celenity.dev" && \
    echo "" && \
    cat wildcards-star/personal_star.txt) > temp_file && mv -v temp_file wildcards-star/personal_star.txt

# Back-up old file
mv -v wildcards-star/personal.txt wildcards-star/old/personal_old.txt

# Rename new file
mv -v wildcards-star/personal_star.txt wildcards-star/personal.txt
