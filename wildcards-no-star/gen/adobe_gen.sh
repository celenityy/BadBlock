#!/bin/bash

# Process the adobe.txt file
cat base/adobe.txt | grep -v '^#' | grep -v '^\s*$' | sort | uniq > wildcards-no-star/adobe_no_star.txt

# Create the header and combine with the processed file
(echo "# Title: 🎨 BadBlock - Adobe (Wildcards no *)" && \
    echo "# Version: $(date +'%d%B%Yv1')" && \
    echo "# Expires: 12 hours" && \
    echo "# Description: Block Adobe advertising, tracking, telemetry, promotions, & more!" && \
    echo "# Homepage: https://badblock.celenity.dev" && \
    echo "" && \
    cat wildcards-no-star/adobe_no_star.txt) > temp_file && mv -v temp_file wildcards-no-star/adobe_no_star.txt

# Back-up old file
mv -v wildcards-no-star/adobe.txt wildcards-no-star/old/adobe_old.txt

# Rename new file
mv -v wildcards-no-star/adobe_no_star.txt wildcards-no-star/adobe.txt