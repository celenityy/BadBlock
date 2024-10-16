#!/bin/bash

# Process the whitelist.txt file
cat base/whitelists/windows.txt | grep -v '^#' | grep -v '^\s*$' | sed 's/^/*./' | sort | uniq > wildcards-star/windows_whitelist_wildcards-star.txt

# Create the header and combine with the processed file
(echo "# Title: 🪟 BadBlock - Windows Whitelist (Wildcards *)" && \
    echo "# Version: $(date +'%d%B%Yv1')" && \
    echo "# Expires: 12 hours" && \
    echo "# Description: Unblock the Good! (Windows Edition)" && \
    echo "# Homepage: https://badblock.celenity.dev" && \
    echo "" && \
    cat wildcards-star/windows_whitelist_wildcards-star.txt) > temp_file && mv -v temp_file wildcards-star/windows_whitelist_wildcards-star.txt

# Back-up old file
mv -v wildcards-star/windows_whitelist.txt wildcards-star/old/windows_whitelist_old.txt

# Rename new file
mv -v wildcards-star/windows_whitelist_wildcards-star.txt wildcards-star/windows_whitelist.txt