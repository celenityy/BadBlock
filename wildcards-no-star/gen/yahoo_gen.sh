#!/bin/bash

# Process the yahoo.txt file
cat base/yahoo.txt | grep -v '^#' | grep -v '^\s*$' | sort | uniq > wildcards-no-star/yahoo_no_star.txt

# Create the header and combine with the processed file
(echo "# Title: 🖀 BadBlock - Yahoo! (Wildcards no *)" && \
    echo "# Version: $(date +'%d%B%Yv1')" && \
    echo "# Expires: 12 hours" && \
    echo "# Description: Block Yahoo! advertising, tracking, telemetry, & more!" && \
    echo "# Homepage: https://badblock.celenity.dev" && \
    echo "" && \
    cat wildcards-no-star/yahoo_no_star.txt) > temp_file && mv -v temp_file wildcards-no-star/yahoo_no_star.txt

# Back-up old file
mv -v wildcards-no-star/yahoo.txt wildcards-no-star/old/yahoo_old.txt

# Rename new file
mv -v wildcards-no-star/yahoo_no_star.txt wildcards-no-star/yahoo.txt
