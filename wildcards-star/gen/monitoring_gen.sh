#!/bin/bash

# Process the monitoring.txt file
cat wildcards-no-star/monitoring.txt | grep -v '^#' | grep -v '^\s*$' | sed 's/^/*./' | sort | uniq > wildcards-star/monitoring_star.txt

# Create the header and combine with the processed file
(echo "# Title: 🔎 BadBlock - Anti-Monitoring (Wildcards *)" && \
    echo "# Version: $(date +'%d%B%Yv1')" && \
    echo "# Expires: 12 hours" && \
    echo "# Description: Stop the spying!" && \
    echo "# Homepage: https://badblock.celenity.dev" && \
    echo "" && \
    cat wildcards-star/monitoring_star.txt) > temp_file && mv -v temp_file wildcards-star/monitoring_star.txt

# Back-up old file
mv -v wildcards-star/monitoring.txt wildcards-star/old/monitoring_old.txt

# Rename new file
mv -v wildcards-star/monitoring_star.txt wildcards-star/monitoring.txt