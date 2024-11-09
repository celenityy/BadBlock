#!/bin/bash

# Process the sentry.txt file
cat base/sentry.txt | grep -v '^#' | grep -v '^\s*$' | sort | uniq > wildcards-star/sentry_star.txt

# Create the header and combine with the processed file
(echo "# Title: 🪖 BadBlock - Sentry (Wildcards *)" && \
    echo "# Version: $(date +'%d%B%Yv1')" && \
    echo "# Expires: 12 hours" && \
    echo "# Description: Block Sentry Analytics!" && \
    echo "# Homepage: https://badblock.celenity.dev" && \
    echo "" && \
    cat wildcards-star/sentry_star.txt) > temp_file && mv -v temp_file wildcards-star/sentry_star.txt

# Back-up old file
mv -v wildcards-star/sentry.txt wildcards-star/old/sentry_old.txt

# Rename new file
mv -v wildcards-star/sentry_star.txt wildcards-star/sentry.txt