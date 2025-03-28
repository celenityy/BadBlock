#!/bin/bash

# Process the yandex.txt file
cat base/yandex.txt | grep -v '^#' | grep -v '^\s*$' | sed 's/^/*./' | sort | uniq > wildcards-star/yandex_star.txt

# Create the header and combine with the processed file
(echo "# Title: 🗞️ BadBlock - Yandex (Wildcards *)" && \
    echo "# Version: $(date +'%d%B%Yv1')" && \
    echo "# Expires: 12 hours" && \
    echo "# Description: Block Yandex advertising, tracking, telemetry, & more!" && \
    echo "# Homepage: https://badblock.celenity.dev" && \
    echo "" && \
    cat wildcards-star/yandex_star.txt) > temp_file && mv -v temp_file wildcards-star/yandex_star.txt

# Back-up old file
mv -v wildcards-star/yandex.txt wildcards-star/old/yandex_old.txt

# Rename new file
mv -v wildcards-star/yandex_star.txt wildcards-star/yandex.txt
