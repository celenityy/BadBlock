#!/bin/bash

# Process the drm.txt file
cat base/drm.txt | grep -v '^#' | grep -v '^\s*$' | sed 's/^/||/' | sed 's/$/^/' | sort | uniq > abp/drm_abp.txt

# Create the header and combine with the processed file
(echo "! Title: 🔒 BadBlock - DRM (ABP)" && \
    echo "! Version: $(date +'%d%B%Yv1')" && \
    echo "! Expires: 12 hours" && \
    echo "! Description: Stop Digital Restrictions Management!" && \
    echo "! Homepage: https://badblock.celenity.dev" && \
    echo "" && \
    cat abp/overrides/drm_abp_overrides.txt && \
    cat abp/drm_abp.txt) > temp_file && mv -v temp_file abp/drm_abp.txt

# Back-up old file
mv -v abp/drm.txt abp/old/drm_old.txt

# Rename new file
mv -v abp/drm_abp.txt abp/drm.txt
