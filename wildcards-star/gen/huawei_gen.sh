#!/bin/bash

# Process the huawei.txt file
cat base/huawei.txt | grep -v '^#' | grep -v '^\s*$' | sed 's/^/*./' | sort | uniq > wildcards-star/huawei_star.txt

# Create the header and combine with the processed file
(echo "# Title: 🪁 BadBlock - Huawei (Wildcards *)" && \
    echo "# Version: $(date +'%d%B%Yv1')" && \
    echo "# Expires: 12 hours" && \
    echo "# Description: Block Huawei advertising, tracking, telemetry, & more!" && \
    echo "# Homepage: https://badblock.celenity.dev" && \
    echo "" && \
    cat wildcards-star/huawei_star.txt) > temp_file && mv -v temp_file wildcards-star/huawei_star.txt

# Back-up old file
mv -v wildcards-star/huawei.txt wildcards-star/old/huawei_old.txt

# Rename new file
mv -v wildcards-star/huawei_star.txt wildcards-star/huawei.txt
