#!/bin/bash

# Process the xiaomi.txt file
cat base/xiaomi.txt | grep -v '^#' | grep -v '^\s*$' | sort | uniq > wildcards-star/xiaomi_star.txt

# Create the header and combine with the processed file
(echo "# Title: Ⓜ️ BadBlock - Xiaomi (Wildcards *)" && \
    echo "# Version: $(date +'%d%B%Yv1')" && \
    echo "# Expires: 12 hours" && \
    echo "# Description: Block Xiaomi (Mi) advertising, tracking, telemetry, & more!" && \
    echo "# Homepage: https://badblock.celenity.dev" && \
    echo "" && \
    cat wildcards-star/xiaomi_star.txt) > temp_file && mv -v temp_file wildcards-star/xiaomi_star.txt

# Back-up old file
mv -v wildcards-star/xiaomi.txt wildcards-star/old/xiaomi_old.txt

# Rename new file
mv -v wildcards-star/xiaomi_star.txt wildcards-star/xiaomi.txt