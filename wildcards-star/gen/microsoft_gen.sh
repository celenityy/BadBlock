#!/bin/bash

# Process the microsoft.txt file
cat base/microsoft.txt | grep -v '^#' | grep -v '^\s*$' | sed 's/^/*./' | sort | uniq > wildcards-star/microsoft_star.txt

# Create the header and combine with the processed file
(echo "# Title: 🪟 BadBlock - Microsoft (Wildcards *)" && \
    echo "# Version: $(date +'%d%B%Yv1')" && \
    echo "# Expires: 12 hours" && \
    echo "# Description: Close the Windows! Block M$ advertising, tracking, telemetry, promotions, & more!" && \
    echo "# Homepage: https://badblock.celenity.dev" && \
    echo "" && \
    cat wildcards-star/microsoft_star.txt) > temp_file && mv -v temp_file wildcards-star/microsoft_star.txt

# Back-up old file
mv -v wildcards-star/microsoft.txt wildcards-star/old/microsoft_old.txt

# Rename new file
mv -v wildcards-star/microsoft_star.txt wildcards-star/microsoft.txt
