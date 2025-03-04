#!/bin/bash

cat wildcards-no-star/adobe.txt wildcards-no-star/amazon.txt wildcards-no-star/apple.txt wildcards-no-star/brave.txt wildcards-no-star/data-brokers.txt wildcards-no-star/facebook.txt wildcards-no-star/gaming.txt wildcards-no-star/google.txt wildcards-no-star/huawei.txt wildcards-no-star/lg.txt wildcards-no-star/matomo.txt wildcards-no-star/microsoft.txt wildcards-no-star/mozilla.txt wildcards-no-star/nvidia.txt wildcards-no-star/oracle.txt wildcards-no-star/plausible.txt wildcards-no-star/radar.txt wildcards-no-star/samsung.txt wildcards-no-star/sentry.txt wildcards-no-star/tiktok.txt wildcards-no-star/twitter.txt wildcards-no-star/unity.txt wildcards-no-star/unsafe.txt wildcards-no-star/xiaomi.txt wildcards-no-star/yahoo.txt wildcards-no-star/yandex.txt | grep -v '^#' | grep -v '^!' | grep -v '^\s*$' | sort | uniq > wildcards-no-star/badblock_lite_no_star.txt

(echo "# Title: ⚡️ BadBlock Lite (Wildcards no *)" && \
    echo "# Version: $(date +'%d%B%Yv1')" && \
    echo "# Expires: 12 hours" && \
    echo "# Description: BadBlock, but slimmer!" && \
    echo "# Homepage: https://badblock.celenity.dev" && \
    echo "" && \
    cat wildcards-no-star/badblock_lite_no_star.txt) > temp_file && mv -v temp_file wildcards-no-star/badblock_lite_no_star.txt

mv -v wildcards-no-star/badblock_lite.txt wildcards-no-star/old/badblock_lite_old.txt

mv -v wildcards-no-star/badblock_lite_no_star.txt wildcards-no-star/badblock_lite.txt
