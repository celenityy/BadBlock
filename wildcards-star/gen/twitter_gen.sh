#!/bin/bash

# Process the twitter.txt file
cat base/twitter.txt | grep -v '^#' | grep -v '^\s*$' | sed 's/^/*./' | sort | uniq > wildcards-star/twitter_star.txt

# Create the header and combine with the processed file
(echo "# Title: 🐦 BadBlock - Twitter (Wildcards *)" && \
    echo "# Version: $(date +'%d%B%Yv1')" && \
    echo "# Expires: 12 hours" && \
    echo "# Description: Block Twitter (X) advertising, tracking, telemetry, & more!" && \
    echo "# Homepage: https://badblock.celenity.dev" && \
    echo "" && \
    cat wildcards-star/twitter_star.txt) > temp_file && mv -v temp_file wildcards-star/twitter_star.txt

# Back-up old file
mv -v wildcards-star/twitter.txt wildcards-star/old/twitter_old.txt

# Rename new file
mv -v wildcards-star/twitter_star.txt wildcards-star/twitter.txt
