#!/bin/bash

# Process the crap.txt file
cat base/crap.txt | grep -v '^#' | grep -v '^\s*$' | sort | uniq > wildcards-no-star/crap_no_star.txt

# Create the header and combine with the processed file
(echo "# Title: 🗑️ BadBlock - Crap (Wildcards no *)" && \
    echo "# Version: $(date +'%d%B%Yv1')" && \
    echo "# Expires: 12 hours" && \
    echo "# Description: Block toxic domains!" && \
    echo "# Homepage: https://badblock.celenity.dev" && \
    echo "" && \
    cat wildcards-no-star/crap_no_star.txt) > temp_file && mv -v temp_file wildcards-no-star/crap_no_star.txt

# Back-up old file
mv -v wildcards-no-star/crap.txt wildcards-no-star/old/crap_old.txt

# Rename new file
mv -v wildcards-no-star/crap_no_star.txt wildcards-no-star/crap.txt
