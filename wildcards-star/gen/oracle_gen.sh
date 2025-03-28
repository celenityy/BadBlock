#!/bin/bash

# Process the oracle.txt file
cat base/oracle.txt | grep -v '^#' | grep -v '^\s*$' | sed 's/^/*./' | sort | uniq > wildcards-star/oracle_star.txt

# Create the header and combine with the processed file
(echo "# Title: 🍇 BadBlock - Oracle (Wildcards *)" && \
    echo "# Version: $(date +'%d%B%Yv1')" && \
    echo "# Expires: 12 hours" && \
    echo "# Description: Block Oracle advertising, tracking, telemetry, & more!" && \
    echo "# Homepage: https://badblock.celenity.dev" && \
    echo "" && \
    cat wildcards-star/oracle_star.txt) > temp_file && mv -v temp_file wildcards-star/oracle_star.txt

# Back-up old file
mv -v wildcards-star/oracle.txt wildcards-star/old/oracle_old.txt

# Rename new file
mv -v wildcards-star/oracle_star.txt wildcards-star/oracle.txt
