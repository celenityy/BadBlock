#!/bin/bash

# Process the doh.txt file
cat base/doh.txt | grep -v '^#' | grep -v '^\s*$' | sort | uniq > wildcards-star/doh_star.txt

# Create the header and combine with the processed file
(echo "# Title: 🍩 D'oh! Blocklist (Wildcards *)" && \
    echo "# Version: $(date +'%d%B%Yv1')" && \
    echo "# Expires: 12 hours" && \
    echo "# Description: Stop DNS servers from bypassing your firewall!" && \
    echo "# Homepage: https://badblock.celenity.dev" && \
    echo "" && \
    cat wildcards-star/doh_star.txt) > temp_file && mv -v temp_file wildcards-star/doh_star.txt

# Back-up old file
mv -v wildcards-star/doh.txt wildcards-star/old/doh_old.txt

# Rename new file
mv -v wildcards-star/doh_no_star.txt wildcards-star/doh.txt