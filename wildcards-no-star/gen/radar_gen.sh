#!/bin/bash

# Process the radar.txt file
cat base/radar.txt | grep -v '^#' | grep -v '^\s*$' | sort | uniq > wildcards-no-star/radar_no_star.txt

# Create the header and combine with the processed file
(echo "# Title: 📡 BadBlock - Radar (Wildcards no *)" && \
    echo "# Version: $(date +'%d%B%Yv1')" && \
    echo "# Expires: 12 hours" && \
    echo "# Description: Block advertising, analytics, unwanted data collection, tracking, & more as they arise!" && \
    echo "# Homepage: https://badblock.celenity.dev" && \
    echo "" && \
    cat wildcards-no-star/radar_no_star.txt) > temp_file && mv -v temp_file wildcards-no-star/radar_no_star.txt

# Back-up old file
mv -v wildcards-no-star/radar.txt wildcards-no-star/old/radar_old.txt

# Rename new file
mv -v wildcards-no-star/radar_no_star.txt wildcards-no-star/radar.txt