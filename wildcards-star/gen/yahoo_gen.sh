#!/bin/bash

# Process the yahoo.txt file
cat base/yahoo.txt | grep -v '^#' | grep -v '^\s*$' | sed 's/^/*./' | sort | uniq > wildcards-star/yahoo_star.txt

# Create the header and combine with the processed file
(echo "# Title: 🖀 BadBlock - Yahoo! (Wildcards *)" && \
    echo "# Version: $(date +'%d%B%Yv1')" && \
    echo "# Expires: 12 hours" && \
    echo "# Description: Block Yahoo! advertising, tracking, telemetry, & more!" && \
    echo "# Homepage: https://badblock.celenity.dev" && \
    echo "" && \
    cat wildcards-star/yahoo_star.txt) > temp_file && mv -v temp_file wildcards-star/yahoo_star.txt

# Back-up old file
mv -v wildcards-star/yahoo.txt wildcards-star/old/yahoo_old.txt

# Rename new file
mv -v wildcards-star/yahoo_star.txt wildcards-star/yahoo.txt
