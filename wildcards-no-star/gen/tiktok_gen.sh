#!/bin/bash

# Process the tiktok.txt file
cat base/tiktok.txt | grep -v '^#' | grep -v '^\s*$' | sort | uniq > wildcards-no-star/tiktok_no_star.txt

# Create the header and combine with the processed file
(echo "# Title: 🎵 BadBlock - TikTok (Wildcards no *)" && \
    echo "# Version: $(date +'%d%B%Yv1')" && \
    echo "# Expires: 12 hours" && \
    echo "# Description: Block TikTok (Bytedance) advertising, tracking, telemetry, & more!" && \
    echo "# Homepage: https://badblock.celenity.dev" && \
    echo "" && \
    cat wildcards-no-star/tiktok_no_star.txt) > temp_file && mv -v temp_file wildcards-no-star/tiktok_no_star.txt

# Back-up old file
mv -v wildcards-no-star/tiktok.txt wildcards-no-star/old/tiktok_old.txt

# Rename new file
mv -v wildcards-no-star/tiktok_no_star.txt wildcards-no-star/tiktok.txt
