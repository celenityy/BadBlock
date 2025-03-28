#!/bin/bash

# Process the whitelist.txt file
cat base/whitelists/captive.txt | grep -v '^#' | grep -v '^\s*$' | sed 's/^/*./' | sort | uniq > wildcards-star/captive_whitelist_wildcards-star.txt

# Create the header and combine with the processed file
(echo "# Title: 🛜 BadBlock - Captive Whitelist (Wildcards *)" && \
    echo "# Version: $(date +'%d%B%Yv1')" && \
    echo "# Expires: 12 hours" && \
    echo "# Description: Unblock domains required for Captive Portals & Connectivity Checks!" && \
    echo "# Homepage: https://badblock.celenity.dev" && \
    echo "" && \
    cat wildcards-star/captive_whitelist_wildcards-star.txt) > temp_file && mv -v temp_file wildcards-star/captive_whitelist_wildcards-star.txt

# Back-up old file
mv -v wildcards-star/captive_whitelist.txt wildcards-star/old/captive_whitelist_old.txt

# Rename new file
mv -v wildcards-star/captive_whitelist_wildcards-star.txt wildcards-star/captive_whitelist.txt
