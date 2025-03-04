#!/bin/bash

cat wildcards-star/adobe.txt wildcards-star/amazon.txt wildcards-star/apple.txt wildcards-star/brave.txt wildcards-star/data-brokers.txt wildcards-star/facebook.txt wildcards-star/gaming.txt wildcards-star/google.txt wildcards-star/huawei.txt wildcards-star/lg.txt wildcards-star/matomo.txt wildcards-star/microsoft.txt wildcards-star/mozilla.txt wildcards-star/nvidia.txt wildcards-star/oracle.txt wildcards-star/plausible.txt wildcards-star/radar.txt wildcards-star/samsung.txt wildcards-star/sentry.txt wildcards-star/tiktok.txt wildcards-star/twitter.txt wildcards-star/unity.txt wildcards-star/unsafe.txt wildcards-star/xiaomi.txt wildcards-star/yahoo.txt wildcards-star/yandex.txt wildcards-star/monitoring.txt wildcards-star/annoyances.txt wildcards-star/crap.txt wildcards-star/find-my.txt | grep -v '^#' | grep -v '^!' | grep -v '^\s*$' | sort | uniq > wildcards-star/badblock_plus_star.txt

(echo "# Title: 🔥 BadBlock+ (Wildcards *)" && \
    echo "# Version: $(date +'%d%B%Yv1')" && \
    echo "# Expires: 12 hours" && \
    echo "# Description: BadBlock, but slimmer!" && \
    echo "# Homepage: https://badblock.celenity.dev" && \
    echo "" && \
    cat wildcards-star/badblock_plus_star.txt) > temp_file && mv -v temp_file wildcards-star/badblock_plus_star.txt

mv -v wildcards-star/badblock_plus.txt wildcards-star/old/badblock_plus_old.txt

mv -v wildcards-star/badblock_plus_star.txt wildcards-star/badblock_plus.txt
