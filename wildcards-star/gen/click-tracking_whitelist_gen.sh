#!/bin/bash

# Process the whitelist.txt file
cat base/click-tracking.txt | grep -v '^#' | grep -v '^\s*$' | sed 's/^/*./' | sort | uniq > wildcards-star/click-tracking_whitelist_wildcards-star.txt

# Create the header and combine with the processed file
(echo "# Title: 💌 BadBlock - Click Tracking/Referral Domains Whitelist (Wildcards *)" && \
    echo "# Version: $(date +'%d%B%Yv1')" && \
    echo "# Expires: 12 hours" && \
    echo "# Description: Unblock click tracking!" && \
    echo "# Homepage: https://badblock.celenity.dev" && \
    echo "" && \
    cat wildcards-star/click-tracking_whitelist_wildcards-star.txt) > temp_file && mv -v temp_file wildcards-star/click-tracking_whitelist_wildcards-star.txt

# Back-up old file
mv -v wildcards-star/click-tracking_whitelist.txt wildcards-star/old/click-tracking_whitelist_old.txt

# Rename new file
mv -v wildcards-star/click-tracking_whitelist_wildcards-star.txt wildcards-star/click-tracking_whitelist.txt
