#!/bin/bash

# Process the click-tracking.txt file
cat base/click-tracking.txt | grep -v '^#' | grep -v '^\s*$' | sort | uniq > wildcards-no-star/click-tracking_no_star.txt

# Create the header and combine with the processed file
(echo "# Title: 🖱️ BadBlock - Click Tracking/Referral Domains (Wildcards no *)" && \
    echo "# Version: $(date +'%d%B%Yv1')" && \
    echo "# Expires: 12 hours" && \
    echo "# Description: Block click tracking!" && \
    echo "# Homepage: https://badblock.celenity.dev" && \
    echo "" && \
    cat wildcards-no-star/click-tracking_no_star.txt) > temp_file && mv -v temp_file wildcards-no-star/click-tracking_no_star.txt

# Back-up old file
mv -v wildcards-no-star/click-tracking.txt wildcards-no-star/old/click-tracking_old.txt

# Rename new file
mv -v wildcards-no-star/click-tracking_no_star.txt wildcards-no-star/click-tracking.txt
