#!/bin/bash

# Process the nvidia.txt file
cat base/nvidia.txt | grep -v '^#' | grep -v '^\s*$' | sort | uniq > wildcards-no-star/nvidia_no_star.txt

# Create the header and combine with the processed file
(echo "# Title: 👾 BadBlock - NVIDIA (Wildcards no *)" && \
    echo "# Version: $(date +'%d%B%Yv1')" && \
    echo "# Expires: 12 hours" && \
    echo "# Description: Block NVIDIA telemetry, analytics, & more!" && \
    echo "# Homepage: https://badblock.celenity.dev" && \
    echo "" && \
    cat wildcards-no-star/nvidia_no_star.txt) > temp_file && mv -v temp_file wildcards-no-star/nvidia_no_star.txt

# Back-up old file
mv -v wildcards-no-star/nvidia.txt wildcards-no-star/old/nvidia_old.txt

# Rename new file
mv -v wildcards-no-star/nvidia_no_star.txt wildcards-no-star/nvidia.txt