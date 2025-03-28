#!/bin/bash

# Process the data-brokers.txt file
cat base/data-brokers.txt | grep -v '^#' | grep -v '^\s*$' | sort | uniq > wildcards-no-star/data-brokers_no_star.txt

# Create the header and combine with the processed file
(echo "# Title: 💰 BadBlock - Data Brokers (Wildcards no *)" && \
    echo "# Version: $(date +'%d%B%Yv1')" && \
    echo "# Expires: 12 hours" && \
    echo "# Description: Stop the People Search!" && \
    echo "# Homepage: https://badblock.celenity.dev" && \
    echo "" && \
    cat wildcards-no-star/data-brokers_no_star.txt) > temp_file && mv -v temp_file wildcards-no-star/data-brokers_no_star.txt

# Back-up old file
mv -v wildcards-no-star/data-brokers.txt wildcards-no-star/old/data-brokers_old.txt

# Rename new file
mv -v wildcards-no-star/data-brokers_no_star.txt wildcards-no-star/data-brokers.txt
