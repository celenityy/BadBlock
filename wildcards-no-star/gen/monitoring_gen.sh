#!/bin/bash

# Process the monitoring.txt file
cat base/monitoring.txt | grep -v '^#' | grep -v '^\s*$' | sort | uniq > wildcards-no-star/monitoring_no_star.txt

# Create the header and combine with the processed file
(echo "# Title: 🔎 BadBlock - Anti-Monitoring (Wildcards no *)" && \
    echo "# Version: $(date +'%d%B%Yv1')" && \
    echo "# Expires: 12 hours" && \
    echo "# Description: Stop the spying!" && \
    echo "# Homepage: https://badblock.celenity.dev" && \
    echo "" && \
    cat wildcards-no-star/monitoring_no_star.txt) > temp_file && mv -v temp_file wildcards-no-star/monitoring_no_star.txt

# Back-up old file
mv -v wildcards-no-star/monitoring.txt wildcards-no-star/old/monitoring_old.txt

# Rename new file
mv -v wildcards-no-star/monitoring_no_star.txt wildcards-no-star/monitoring.txt