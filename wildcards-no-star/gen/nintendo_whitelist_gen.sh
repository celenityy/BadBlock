#!/bin/bash

# Process the whitelist.txt file
cat base/whitelists/nintendo.txt | grep -v '^#' | grep -v '^\s*$' | sort | uniq > wildcards-no-star/nintendo_whitelist_wildcards-no-star.txt

# Create the header and combine with the processed file
(echo "# Title: ⭐ BadBlock - Nintendo Whitelist (Wildcards no *)" && \
    echo "# Version: $(date +'%d%B%Yv1')" && \
    echo "# Expires: 1 hour" && \
    echo "# Description: Unblock the Good! (Nintendo Edition)" && \
    echo "# Homepage: https://badblock.celenity.dev" && \
    echo "" && \
    cat wildcards-no-star/nintendo_whitelist_wildcards-no-star.txt) > temp_file && mv -v temp_file wildcards-no-star/nintendo_whitelist_wildcards-no-star.txt

# Back-up old file
mv -v wildcards-no-star/nintendo_whitelist.txt wildcards-no-star/old/nintendo_whitelist_old.txt

# Rename new file
mv -v wildcards-no-star/nintendo_whitelist_wildcards-no-star.txt wildcards-no-star/nintendo_whitelist.txt
