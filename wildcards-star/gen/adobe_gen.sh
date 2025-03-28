#!/bin/bash

# Process the adobe.txt file
cat base/adobe.txt | grep -v '^#' | grep -v '^\s*$' | sed 's/^/*./' | sort | uniq > wildcards-star/adobe_star.txt

# Create the header and combine with the processed file
(echo "# Title: 🎨 BadBlock - Adobe (Wildcards *)" && \
    echo "# Version: $(date +'%d%B%Yv1')" && \
    echo "# Expires: 12 hours" && \
    echo "# Description: Block Adobe advertising, tracking, telemetry, promotions, & more!" && \
    echo "# Homepage: https://badblock.celenity.dev" && \
    echo "" && \
    cat wildcards-star/adobe_star.txt) > temp_file && mv -v temp_file wildcards-star/adobe_star.txt

# Back-up old file
mv -v wildcards-star/adobe.txt wildcards-star/old/adobe_old.txt

# Rename new file
mv -v wildcards-star/adobe_star.txt wildcards-star/adobe.txt
