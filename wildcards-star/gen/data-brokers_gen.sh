#!/bin/bash

# Process the data-brokers.txt file
cat wildcards-no-star/data-brokers.txt | grep -v '^#' | grep -v '^\s*$' | sed 's/^/*./' | sort | uniq > wildcards-star/data-brokers_star.txt

# Create the header and combine with the processed file
(echo "# Title: 💰 Data Brokers Blocklist (Wildcards *)" && \
    echo "# Version: $(date +'%d%B%Yv1')" && \
    echo "# Expires: 12 hours" && \
    echo "# Description: Stop the People Search!" && \
    echo "# Homepage: https://badblock.celenity.dev" && \
    echo "" && \
    cat wildcards-star/data-brokers_star.txt) > temp_file && mv -v temp_file wildcards-star/data-brokers_star.txt

# Back-up old file
mv -v wildcards-star/data-brokers.txt wildcards-star/old/data-brokers_old.txt

# Rename new file
mv -v wildcards-star/data-brokers_star.txt wildcards-star/data-brokers.txt