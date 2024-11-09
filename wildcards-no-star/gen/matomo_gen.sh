#!/bin/bash

# Process the matomo.txt file
cat base/matomo.txt | grep -v '^#' | grep -v '^\s*$' | sort | uniq > wildcards-no-star/matomo_no_star.txt

# Create the header and combine with the processed file
(echo "# Title: 📊 BadBlock - Matomo (Wildcards no *)" && \
    echo "# Version: $(date +'%d%B%Yv1')" && \
    echo "# Expires: 12 hours" && \
    echo "# Description: Block Matomo Analytics!" && \
    echo "# Homepage: https://badblock.celenity.dev" && \
    echo "" && \
    cat wildcards-no-star/matomo_no_star.txt) > temp_file && mv -v temp_file wildcards-no-star/matomo_no_star.txt

# Back-up old file
mv -v wildcards-no-star/matomo.txt wildcards-no-star/old/matomo_old.txt

# Rename new file
mv -v wildcards-no-star/matomo_no_star.txt wildcards-no-star/matomo.txt