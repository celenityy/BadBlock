#!/bin/bash

cat wildcards-star/apple.txt wildcards-star/brave.txt wildcards-star/data-brokers.txt wildcards-star/google.txt wildcards-star/microsoft.txt wildcards-star/mozilla.txt wildcards-star/gaming.txt wildcards-star/radar.txt wildcards-star/amazon.txt wildcards-star/unsafe.txt | grep -v '^#' | grep -v '^!' | grep -v '^\s*$' | sort | uniq > wildcards-star/badblock_lite_star.txt

(echo "# Title: ⚡️ BadBlock Lite (Wildcards *)" && \
    echo "# Version: $(date +'%d%B%Yv1')" && \
    echo "# Expires: 12 hours" && \
    echo "# Description: BadBlock, but slimmer!" && \
    echo "# Homepage: https://badblock.celenity.dev" && \
    echo "" && \
    cat wildcards-star/badblock_lite_star.txt) > temp_file && mv -v temp_file wildcards-star/badblock_lite_star.txt

mv -v wildcards-star/badblock_lite.txt wildcards-star/old/badblock_lite_old.txt

mv -v wildcards-star/badblock_lite_star.txt wildcards-star/badblock_lite.txt