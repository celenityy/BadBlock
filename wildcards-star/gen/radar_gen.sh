#!/bin/bash

# Process the radar.txt file
cat wildcards-no-star/radar.txt | grep -v '^#' | grep -v '^\s*$' | sed 's/^/*./' | sort | uniq > wildcards-star/radar_star.txt

# Create the header and combine with the processed file
(echo "# Title: 📡 BadBlock - Radar (Wildcards *)" && \
    echo "# Version: $(date +'%d%B%Yv1')" && \
    echo "# Expires: 12 hours" && \
    echo "# Description: Block advertising, analytics, unwanted data collection, tracking, & more as they arise!" && \
    echo "# Homepage: https://badblock.celenity.dev" && \
    echo "" && \
    cat wildcards-star/radar_star.txt) > temp_file && mv -v temp_file wildcards-star/radar_star.txt

# Back-up old file
mv -v wildcards-star/radar.txt wildcards-star/old/radar_old.txt

# Rename new file
mv -v wildcards-star/radar_star.txt wildcards-star/radar.txt