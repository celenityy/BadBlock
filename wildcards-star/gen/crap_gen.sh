#!/bin/bash

# Process the crap.txt file
cat base/crap.txt | grep -v '^#' | grep -v '^\s*$' | sed 's/^/*./' | sort | uniq > wildcards-star/crap_star.txt

# Create the header and combine with the processed file
(echo "# Title: 🗑️ BadBlock - Crap (Wildcards *)" && \
    echo "# Version: $(date +'%d%B%Yv1')" && \
    echo "# Expires: 12 hours" && \
    echo "# Description: Block toxic domains!" && \
    echo "# Homepage: https://badblock.celenity.dev" && \
    echo "" && \
    cat wildcards-star/crap_star.txt) > temp_file && mv -v temp_file wildcards-star/crap_star.txt

# Back-up old file
mv -v wildcards-star/crap.txt wildcards-star/old/crap_old.txt

# Rename new file
mv -v wildcards-star/crap_star.txt wildcards-star/crap.txt
