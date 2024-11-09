#!/bin/bash

# Process the plausible.txt file
cat base/plausible.txt | grep -v '^#' | grep -v '^\s*$' | sort | uniq > wildcards-star/plausible_star.txt

# Create the header and combine with the processed file
(echo "# Title: 🤔 BadBlock - Plausible (Wildcards *)" && \
    echo "# Version: $(date +'%d%B%Yv1')" && \
    echo "# Expires: 12 hours" && \
    echo "# Description: Block Plausible Analytics!" && \
    echo "# Homepage: https://badblock.celenity.dev" && \
    echo "" && \
    cat wildcards-star/plausible_star.txt) > temp_file && mv -v temp_file wildcards-star/plausible_star.txt

# Back-up old file
mv -v wildcards-star/plausible.txt wildcards-star/old/plausible_old.txt

# Rename new file
mv -v wildcards-star/plausible_star.txt wildcards-star/plausible.txt