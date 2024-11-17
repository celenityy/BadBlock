#!/bin/bash

# Process the whitelist.txt file
cat base/whitelists/captive.txt | grep -v '^#' | grep -v '^\s*$' | sort | uniq > wildcards-no-star/captive_whitelist_wildcards-no-star.txt

# Create the header and combine with the processed file
(echo "# Title: 🛜 BadBlock - Captive Whitelist (Wildcards no *)" && \
    echo "# Version: $(date +'%d%B%Yv1')" && \
    echo "# Expires: 12 hours" && \
    echo "# Description: Unblock domains required for Captive Portals & Connectivity Checks!" && \
    echo "# Homepage: https://badblock.celenity.dev" && \
    echo "" && \
    cat wildcards-no-star/captive_whitelist_wildcards-no-star.txt) > temp_file && mv -v temp_file wildcards-no-star/captive_whitelist_wildcards-no-star.txt

# Back-up old file
mv -v wildcards-no-star/captive_whitelist.txt wildcards-no-star/old/captive_whitelist_old.txt

# Rename new file
mv -v wildcards-no-star/captive_whitelist_wildcards-no-star.txt wildcards-no-star/captive_whitelist.txt