#!/bin/bash

# Process the whitelist.txt file
cat base/whitelists/nintendo.txt | grep -v '^#' | grep -v '^\s*$' | $SED 's/^/*./' | sort | uniq > wildcards-star/nintendo_whitelist_wildcards-star.txt

# Create the header and combine with the processed file
(echo "# Title: ⭐ BadBlock - Nintendo Whitelist (Wildcards *)" && \
    echo "# Version: $(date +'%d%B%Yv1')" && \
    echo "# Expires: 1 hour" && \
    echo "# Description: Unblock the Good! (Nintendo Edition)" && \
    echo "# Homepage: https://badblock.celenity.dev" && \
    echo "" && \
    cat wildcards-star/nintendo_whitelist_wildcards-star.txt) > temp_file && mv -v temp_file wildcards-star/nintendo_whitelist_wildcards-star.txt

# Back-up old file
mv -v wildcards-star/nintendo_whitelist.txt wildcards-star/old/nintendo_whitelist_old.txt

# Rename new file
mv -v wildcards-star/nintendo_whitelist_wildcards-star.txt wildcards-star/nintendo_whitelist.txt
