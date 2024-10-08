#!/bin/bash

# Process the unsafe.txt file
cat wildcards-no-star/unsafe.txt | grep -v '^#' | grep -v '^\s*$' | sed 's/^/*./' | sort | uniq > wildcards-star/unsafe_star.txt

# Create the header and combine with the processed file
(echo "# Title: ⚠️ BadBlock - Unsafe (Wildcards *)" && \
    echo "# Version: $(date +'%d%B%Yv1')" && \
    echo "# Expires: 12 hours" && \
    echo "# Description: Block nasty domains!" && \
    echo "# Homepage: https://badblock.celenity.dev" && \
    echo "" && \
    cat wildcards-star/unsafe_star.txt) > temp_file && mv -v temp_file wildcards-star/unsafe_star.txt

# Back-up old file
mv -v wildcards-star/unsafe.txt wildcards-star/old/unsafe_old.txt

# Rename new file
mv -v wildcards-star/unsafe_star.txt wildcards-star/unsafe.txt