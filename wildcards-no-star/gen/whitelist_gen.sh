#!/bin/bash

# Process the whitelist.txt file
cat base/whitelist.txt | grep -v '^#' | grep -v '^\s*$' | sort | uniq > wildcards-no-star/whitelist_no_star.txt

# Create the header and combine with the processed file
(echo "# Title: ✋ BadBlock -  Whitelist (Wildcards no *)" && \
    echo "# Version: $(date +'%d%B%Yv1')" && \
    echo "# Expires: 12 hours" && \
    echo "# Description: Unblock the Good!" && \
    echo "# Homepage: https://badblock.celenity.dev" && \
    echo "" && \
    cat wildcards-no-star/whitelist_no_star.txt) > temp_file && mv -v temp_file wildcards-no-star/whitelist_no_star.txt

# Back-up old file
mv -v wildcards-no-star/whitelist.txt wildcards-no-star/old/whitelist_old.txt

# Rename new file
mv -v wildcards-no-star/whitelist_no_star.txt wildcards-no-star/whitelist.txt