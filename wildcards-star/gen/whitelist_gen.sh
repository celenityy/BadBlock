#!/bin/bash

# Process the whitelist.txt file
cat wildcards-no-star/whitelist.txt | grep -v '^#' | grep -v '^\s*$' | sed 's/^/*./' | sort | uniq > wildcards-star/whitelist_star.txt

# Create the header and combine with the processed file
(echo "# Title: ✋ BadBlock -  Whitelist (Wildcards *)" && \
    echo "# Version: $(date +'%d%B%Yv1')" && \
    echo "# Expires: 12 hours" && \
    echo "# Description: Unblock the Good!" && \
    echo "# Homepage: https://badblock.celenity.dev" && \
    echo "" && \
    cat wildcards-star/whitelist_star.txt) > temp_file && mv -v temp_file wildcards-star/whitelist_star.txt

# Back-up old file
mv -v wildcards-star/whitelist.txt wildcards-star/old/whitelist_old.txt

# Rename new file
mv -v wildcards-star/whitelist_star.txt wildcards-star/whitelist.txt