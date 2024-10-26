#!/bin/bash

# Process the doh.txt file
cat base/doh.txt | grep -v '^#' | grep -v '^\s*$' | sort | uniq > wildcards-no-star/doh_no_star.txt

# Create the header and combine with the processed file
(echo "# Title: 🍩 D'oh! Blocklist (Wildcards no *)" && \
    echo "# Version: $(date +'%d%B%Yv1')" && \
    echo "# Expires: 12 hours" && \
    echo "# Description: Stop DNS servers from bypassing your firewall!" && \
    echo "# Homepage: https://badblock.celenity.dev" && \
    echo "" && \
    cat wildcards-no-star/doh_no_star.txt) > temp_file && mv -v temp_file wildcards-no-star/doh_no_star.txt

# Back-up old file
mv -v wildcards-no-star/doh.txt wildcards-no-star/old/doh_old.txt

# Rename new file
mv -v wildcards-no-star/doh_no_star.txt wildcards-no-star/doh.txt