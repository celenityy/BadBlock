#!/bin/bash

# Process the nvidia.txt file
cat base/nvidia.txt | grep -v '^#' | grep -v '^\s*$' | sort | uniq > wildcards-star/nvidia_star.txt

# Create the header and combine with the processed file
(echo "# Title: 👾 BadBlock - NVIDIA (Wildcards *)" && \
    echo "# Version: $(date +'%d%B%Yv1')" && \
    echo "# Expires: 12 hours" && \
    echo "# Description: Block NVIDIA telemetry, analytics, & more!" && \
    echo "# Homepage: https://badblock.celenity.dev" && \
    echo "" && \
    cat wildcards-star/nvidia_star.txt) > temp_file && mv -v temp_file wildcards-star/nvidia_star.txt

# Back-up old file
mv -v wildcards-star/nvidia.txt wildcards-star/old/nvidia_old.txt

# Rename new file
mv -v wildcards-star/nvidia_star.txt wildcards-star/nvidia.txt