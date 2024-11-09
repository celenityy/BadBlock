#!/bin/bash

# Process the twitter.txt file
cat base/twitter.txt | grep -v '^#' | grep -v '^\s*$' | sort | uniq > wildcards-no-star/twitter_no_star.txt

# Create the header and combine with the processed file
(echo "# Title: 🐦 BadBlock - Twitter (Wildcards no *)" && \
    echo "# Version: $(date +'%d%B%Yv1')" && \
    echo "# Expires: 12 hours" && \
    echo "# Description: Block Twitter (X) advertising, tracking, telemetry, & more!" && \
    echo "# Homepage: https://badblock.celenity.dev" && \
    echo "" && \
    cat wildcards-no-star/twitter_no_star.txt) > temp_file && mv -v temp_file wildcards-no-star/twitter_no_star.txt

# Back-up old file
mv -v wildcards-no-star/twitter.txt wildcards-no-star/old/twitter_old.txt

# Rename new file
mv -v wildcards-no-star/twitter_no_star.txt wildcards-no-star/twitter.txt