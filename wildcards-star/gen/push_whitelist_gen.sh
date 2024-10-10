#!/bin/bash

# Process the whitelist.txt file
cat base/whitelists/push.txt | grep -v '^#' | grep -v '^\s*$' | sed 's/^/*./' | sort | uniq > wildcards-star/push_whitelist_wildcards-star.txt

# Create the header and combine with the processed file
(echo "# Title: 🔔 BadBlock - Push Notifications Whitelist (Wildcards *)" && \
    echo "# Version: $(date +'%d%B%Yv1')" && \
    echo "# Expires: 12 hours" && \
    echo "# Description: Never miss a message!" && \
    echo "# Homepage: https://badblock.celenity.dev" && \
    echo "" && \
    cat wildcards-star/push_whitelist_wildcards-star.txt) > temp_file && mv -v temp_file wildcards-star/push_whitelist_wildcards-star.txt

# Back-up old file
mv -v wildcards-star/push_whitelist.txt wildcards-star/old/push_whitelist_old.txt

# Rename new file
mv -v wildcards-star/push_whitelist_wildcards-star.txt wildcards-star/push_whitelist.txt