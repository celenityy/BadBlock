#!/bin/bash

# Process the yandex.txt file
cat base/yandex.txt | grep -v '^#' | grep -v '^\s*$' | sort | uniq > wildcards-no-star/yandex_no_star.txt

# Create the header and combine with the processed file
(echo "# Title: 🗞️ BadBlock - Yandex (Wildcards no *)" && \
    echo "# Version: $(date +'%d%B%Yv1')" && \
    echo "# Expires: 12 hours" && \
    echo "# Description: Block Yandex advertising, tracking, telemetry, & more!" && \
    echo "# Homepage: https://badblock.celenity.dev" && \
    echo "" && \
    cat wildcards-no-star/yandex_no_star.txt) > temp_file && mv -v temp_file wildcards-no-star/yandex_no_star.txt

# Back-up old file
mv -v wildcards-no-star/yandex.txt wildcards-no-star/old/yandex_old.txt

# Rename new file
mv -v wildcards-no-star/yandex_no_star.txt wildcards-no-star/yandex.txt
