#!/bin/bash

# Process the mozilla.txt file
cat wildcards-no-star/mozilla.txt | grep -v '^#' | grep -v '^\s*$' | sed 's/^/*./' | sort | uniq > wildcards-star/mozilla_star.txt

# Create the header and combine with the processed file
(echo "# Title: 🦖 Mozilla Blocklist (Wildcards *)" && \
    echo "# Version: $(date +'%d%B%Yv1')" && \
    echo "# Expires: 12 hours" && \
    echo "# Description: Block Mozilla telemetry, analytics, advertising, sponsored content, & more!" && \
    echo "# Homepage: https://badblock.celenity.dev" && \
    echo "" && \
    cat wildcards-star/mozilla_star.txt) > temp_file && mv -v temp_file wildcards-star/mozilla_star.txt

# Back-up old file
mv -v wildcards-star/mozilla.txt wildcards-star/old/mozilla_old.txt

# Rename new file
mv -v wildcards-star/mozilla_star.txt wildcards-star/mozilla.txt