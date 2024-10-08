#!/bin/bash

# Process the drm.txt file
cat wildcards-no-star/drm.txt | grep -v '^#' | grep -v '^\s*$' | sed 's/^/*./' | sort | uniq > wildcards-star/drm_star.txt

# Create the header and combine with the processed file
(echo "# Title: 🔒 DRM Blocklist (Wildcards *)" && \
    echo "# Version: $(date +'%d%B%Yv1')" && \
    echo "# Expires: 12 hours" && \
    echo "# Description: Stop Digital Restrictions Management!" && \
    echo "# Homepage: https://badblock.celenity.dev" && \
    echo "" && \
    cat wildcards-star/drm_star.txt) > temp_file && mv -v temp_file wildcards-star/drm_star.txt

# Back-up old file
mv -v wildcards-star/drm.txt wildcards-star/old/drm_old.txt

# Rename new file
mv -v wildcards-star/drm_star.txt wildcards-star/drm.txt