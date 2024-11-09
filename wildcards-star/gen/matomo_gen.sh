#!/bin/bash

# Process the matomo.txt file
cat base/matomo.txt | grep -v '^#' | grep -v '^\s*$' | sort | uniq > wildcards-star/matomo_star.txt

# Create the header and combine with the processed file
(echo "# Title: 📊 BadBlock - Matomo (Wildcards *)" && \
    echo "# Version: $(date +'%d%B%Yv1')" && \
    echo "# Expires: 12 hours" && \
    echo "# Description: Block Matomo Analytics!" && \
    echo "# Homepage: https://badblock.celenity.dev" && \
    echo "" && \
    cat wildcards-star/matomo_star.txt) > temp_file && mv -v temp_file wildcards-star/matomo_star.txt

# Back-up old file
mv -v wildcards-star/matomo.txt wildcards-star/old/matomo_old.txt

# Rename new file
mv -v wildcards-star/matomo_star.txt wildcards-star/matomo.txt