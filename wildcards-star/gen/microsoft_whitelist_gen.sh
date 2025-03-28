#!/bin/bash

# Process the whitelist.txt file
cat base/whitelists/microsoft.txt | grep -v '^#' | grep -v '^\s*$' | sed 's/^/*./' | sort | uniq > wildcards-star/microsoft_whitelist_wildcards-star.txt

# Create the header and combine with the processed file
(echo "# Title: 🪟 BadBlock - Microsoft Whitelist (Wildcards *)" && \
    echo "# Version: $(date +'%d%B%Yv1')" && \
    echo "# Expires: 12 hours" && \
    echo "# Description: Unblock the Good! (Microsoft Edition)" && \
    echo "# Homepage: https://badblock.celenity.dev" && \
    echo "" && \
    cat wildcards-star/microsoft_whitelist_wildcards-star.txt) > temp_file && mv -v temp_file wildcards-star/microsoft_whitelist_wildcards-star.txt

# Back-up old file
mv -v wildcards-star/microsoft_whitelist.txt wildcards-star/old/microsoft_whitelist_old.txt

# Rename new file
mv -v wildcards-star/microsoft_whitelist_wildcards-star.txt wildcards-star/microsoft_whitelist.txt
