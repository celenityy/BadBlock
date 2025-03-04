#!/bin/bash

# Process the unity.txt file
cat base/unity.txt | grep -v '^#' | grep -v '^\s*$' | sort | uniq > wildcards-no-star/unity_no_star.txt

# Create the header and combine with the processed file
(echo "# Title: 🧰 BadBlock - Unity (Wildcards no *)" && \
    echo "# Version: $(date +'%d%B%Yv1')" && \
    echo "# Expires: 12 hours" && \
    echo "# Description: Block Unity advertising, tracking, telemetry, & more!" && \
    echo "# Homepage: https://badblock.celenity.dev" && \
    echo "" && \
    cat wildcards-no-star/unity_no_star.txt) > temp_file && mv -v temp_file wildcards-no-star/unity_no_star.txt

# Back-up old file
mv -v wildcards-no-star/unity.txt wildcards-no-star/old/unity_old.txt

# Rename new file
mv -v wildcards-no-star/unity_no_star.txt wildcards-no-star/unity.txt
