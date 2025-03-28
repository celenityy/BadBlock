#!/bin/bash

# Process the oracle.txt file
cat base/oracle.txt | grep -v '^#' | grep -v '^\s*$' | sort | uniq > wildcards-no-star/oracle_no_star.txt

# Create the header and combine with the processed file
(echo "# Title: 🍇 BadBlock - Oracle (Wildcards no *)" && \
    echo "# Version: $(date +'%d%B%Yv1')" && \
    echo "# Expires: 12 hours" && \
    echo "# Description: Block Oracle advertising, tracking, telemetry, & more!" && \
    echo "# Homepage: https://badblock.celenity.dev" && \
    echo "" && \
    cat wildcards-no-star/oracle_no_star.txt) > temp_file && mv -v temp_file wildcards-no-star/oracle_no_star.txt

# Back-up old file
mv -v wildcards-no-star/oracle.txt wildcards-no-star/old/oracle_old.txt

# Rename new file
mv -v wildcards-no-star/oracle_no_star.txt wildcards-no-star/oracle.txt
