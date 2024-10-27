#!/bin/bash

cat wildcards-no-star/apple.txt wildcards-no-star/brave.txt wildcards-no-star/data-brokers.txt wildcards-no-star/google.txt wildcards-no-star/microsoft.txt wildcards-no-star/mozilla.txt wildcards-no-star/gaming.txt wildcards-no-star/radar.txt wildcards-no-star/amazon.txt wildcards-no-star/unsafe.txt | grep -v '^#' | grep -v '^!' | grep -v '^\s*$' | sort | uniq > wildcards-no-star/badblock_plus_no_star.txt

(echo "# Title: 🔥 BadBlock+ (Wildcards no *)" && \
    echo "# Version: $(date +'%d%B%Yv1')" && \
    echo "# Expires: 12 hours" && \
    echo "# Description: BadBlock, but slimmer!" && \
    echo "# Homepage: https://badblock.celenity.dev" && \
    echo "" && \
    cat wildcards-no-star/badblock_plus_no_star.txt) > temp_file && mv -v temp_file wildcards-no-star/badblock_plus_no_star.txt

mv -v wildcards-no-star/badblock_plus.txt wildcards-no-star/old/badblock_plus_old.txt

mv -v wildcards-no-star/badblock_plus_no_star.txt wildcards-no-star/badblock_plus.txt