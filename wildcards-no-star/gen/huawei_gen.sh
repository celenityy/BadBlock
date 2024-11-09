#!/bin/bash

# Process the huawei.txt file
cat base/huawei.txt | grep -v '^#' | grep -v '^\s*$' | sort | uniq > wildcards-no-star/huawei_no_star.txt

# Create the header and combine with the processed file
(echo "# Title: 🪁 BadBlock - Huawei (Wildcards no *)" && \
    echo "# Version: $(date +'%d%B%Yv1')" && \
    echo "# Expires: 12 hours" && \
    echo "# Description: Block Huawei advertising, tracking, telemetry, & more!" && \
    echo "# Homepage: https://badblock.celenity.dev" && \
    echo "" && \
    cat wildcards-no-star/huawei_no_star.txt) > temp_file && mv -v temp_file wildcards-no-star/huawei_no_star.txt

# Back-up old file
mv -v wildcards-no-star/huawei.txt wildcards-no-star/old/huawei_old.txt

# Rename new file
mv -v wildcards-no-star/huawei_no_star.txt wildcards-no-star/huawei.txt