#!/bin/bash

# Process the nsa-blocklist-ng.txt file
cat base/nsa-blocklist-ng.txt | grep -v '^#' | grep -v '^\s*$' | sed 's/^/*./' | sort | uniq > wildcards-star/nsa-blocklist-ng_star.txt

# Create the header and combine with the processed file
(echo "# Title: 🕵️ NSA Blocklist - Next Generation (Wildcards *)" && \
    echo "# Version: $(date +'%d%B%Yv1')" && \
    echo "# Expires: 12 hours" && \
    echo "# Description: Block Big Brother!" && \
    echo "# Homepage: https://badblock.celenity.dev" && \
    echo "" && \
    cat wildcards-star/nsa-blocklist-ng_star.txt) > temp_file && mv -v temp_file wildcards-star/nsa-blocklist-ng_star.txt

# Back-up old file
mv -v wildcards-star/nsa-blocklist-ng.txt wildcards-star/old/nsa-blocklist-ng_old.txt

# Rename new file
mv -v wildcards-star/nsa-blocklist-ng_star.txt wildcards-star/nsa-blocklist-ng.txt
