#!/bin/bash

# Process the personal.txt file
cat base/personal.txt | grep -v '^#' | grep -v '^\s*$' | sort | uniq > wildcards-no-star/personal_no_star.txt

# Create the header and combine with the processed file
(echo "# Title: 🚀 Personal Blocklist (Wildcards no *)" && \
    echo "# Version: $(date +'%d%B%Yv1')" && \
    echo "# Expires: 12 hours" && \
    echo "# Description: My Personal Blocklist!" && \
    echo "# Homepage: https://badblock.celenity.dev" && \
    echo "" && \
    cat wildcards-no-star/personal_no_star.txt) > temp_file && mv -v temp_file wildcards-no-star/personal_no_star.txt

# Back-up old file
mv -v wildcards-no-star/personal.txt wildcards-no-star/old/personal_old.txt

# Rename new file
mv -v wildcards-no-star/personal_no_star.txt wildcards-no-star/personal.txt