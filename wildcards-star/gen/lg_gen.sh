#!/bin/bash

# Process the lg.txt file
cat base/lg.txt | grep -v '^#' | grep -v '^\s*$' | sed 's/^/*./' | sort | uniq > wildcards-star/lg_star.txt

# Create the header and combine with the processed file
(echo "# Title: 📺 BadBlock - LG (Wildcards *)" && \
    echo "# Version: $(date +'%d%B%Yv1')" && \
    echo "# Expires: 12 hours" && \
    echo "# Description: Block LG advertising, tracking, telemetry, & more!" && \
    echo "# Homepage: https://badblock.celenity.dev" && \
    echo "" && \
    cat wildcards-star/lg_star.txt) > temp_file && mv -v temp_file wildcards-star/lg_star.txt

# Back-up old file
mv -v wildcards-star/lg.txt wildcards-star/old/lg_old.txt

# Rename new file
mv -v wildcards-star/lg_star.txt wildcards-star/lg.txt
