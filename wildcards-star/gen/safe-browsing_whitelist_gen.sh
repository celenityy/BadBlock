#!/bin/bash

# Process the whitelist.txt file
cat base/whitelists/safe-browsing.txt | grep -v '^#' | grep -v '^\s*$' | sed 's/^/*./' | sort | uniq > wildcards-star/safe-browsing_whitelist_wildcards-star.txt

# Create the header and combine with the processed file
(echo "# Title: 🔒 BadBlock - Safe Browsing Whitelist (Wildcards *)" && \
    echo "# Version: $(date +'%d%B%Yv1')" && \
    echo "# Expires: 12 hours" && \
    echo "# Description: Unblock the Good! (Safe Browsing Edition)" && \
    echo "# Homepage: https://badblock.celenity.dev" && \
    echo "" && \
    cat wildcards-star/safe-browsing_whitelist_wildcards-star.txt) > temp_file && mv -v temp_file wildcards-star/safe-browsing_whitelist_wildcards-star.txt

# Back-up old file
mv -v wildcards-star/safe-browsing_whitelist.txt wildcards-star/old/safe-browsing_whitelist_old.txt

# Rename new file
mv -v wildcards-star/safe-browsing_whitelist_wildcards-star.txt wildcards-star/safe-browsing_whitelist.txt