#!/bin/bash

# Process the nsa-blocklist-ng.txt file
cat base/nsa-blocklist-ng.txt | grep -v '^#' | grep -v '^\s*$' | sort | uniq > wildcards-no-star/nsa-blocklist-ng_no_star.txt

# Create the header and combine with the processed file
(echo "# Title: 🕵️ NSA Blocklist - Next Generation (Wildcards no *)" && \
    echo "# Version: $(date +'%d%B%Yv1')" && \
    echo "# Expires: 12 hours" && \
    echo "# Description: Block Big Brother!" && \
    echo "# Homepage: https://badblock.celenity.dev" && \
    echo "" && \
    cat wildcards-no-star/nsa-blocklist-ng_no_star.txt) > temp_file && mv -v temp_file wildcards-no-star/nsa-blocklist-ng_no_star.txt

# Back-up old file
mv -v wildcards-no-star/nsa-blocklist-ng.txt wildcards-no-star/old/nsa-blocklist-ng_old.txt

# Rename new file
mv -v wildcards-no-star/nsa-blocklist-ng_no_star.txt wildcards-no-star/nsa-blocklist-ng.txt