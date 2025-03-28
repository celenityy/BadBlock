#!/bin/bash

# Process the microsoft.txt file
cat base/microsoft.txt | grep -v '^#' | grep -v '^\s*$' | sort | uniq > wildcards-no-star/microsoft_no_star.txt

# Create the header and combine with the processed file
(echo "# Title: 🪟 BadBlock - Microsoft (Wildcards no *)" && \
    echo "# Version: $(date +'%d%B%Yv1')" && \
    echo "# Expires: 12 hours" && \
    echo "# Description: Close the Windows! Block M$ advertising, tracking, telemetry, promotions, & more!" && \
    echo "# Homepage: https://badblock.celenity.dev" && \
    echo "" && \
    cat wildcards-no-star/microsoft_no_star.txt) > temp_file && mv -v temp_file wildcards-no-star/microsoft_no_star.txt

# Back-up old file
mv -v wildcards-no-star/microsoft.txt wildcards-no-star/old/microsoft_old.txt

# Rename new file
mv -v wildcards-no-star/microsoft_no_star.txt wildcards-no-star/microsoft.txt
