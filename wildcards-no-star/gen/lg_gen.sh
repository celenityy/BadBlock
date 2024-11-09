#!/bin/bash

# Process the lg.txt file
cat base/lg.txt | grep -v '^#' | grep -v '^\s*$' | sort | uniq > wildcards-no-star/lg_no_star.txt

# Create the header and combine with the processed file
(echo "# Title: 📺 BadBlock - LG (Wildcards no *)" && \
    echo "# Version: $(date +'%d%B%Yv1')" && \
    echo "# Expires: 12 hours" && \
    echo "# Description: Block LG advertising, tracking, telemetry, & more!" && \
    echo "# Homepage: https://badblock.celenity.dev" && \
    echo "" && \
    cat wildcards-no-star/lg_no_star.txt) > temp_file && mv -v temp_file wildcards-no-star/lg_no_star.txt

# Back-up old file
mv -v wildcards-no-star/lg.txt wildcards-no-star/old/lg_old.txt

# Rename new file
mv -v wildcards-no-star/lg_no_star.txt wildcards-no-star/lg.txt