#!/bin/bash

cat abp/adobe.txt abp/amazon.txt abp/apple.txt abp/brave.txt abp/data-brokers.txt abp/facebook.txt abp/gaming.txt abp/google.txt abp/huawei.txt abp/lg.txt abp/matomo.txt abp/microsoft.txt abp/mozilla.txt abp/nvidia.txt abp/oracle.txt abp/plausible.txt abp/radar.txt abp/samsung.txt abp/sentry.txt abp/tiktok.txt abp/twitter.txt abp/unity.txt abp/unsafe.txt abp/xiaomi.txt abp/yahoo.txt abp/yandex.txt abp/monitoring.txt | grep -v '^#' | grep -v '^!' | grep -v '^\s*$' | sort | uniq > abp/badblock_regular_abp.txt

(echo "! Title: 🔇 BadBlock (ABP)" && \
    echo "! Version: $(date +'%d%B%Yv1')" && \
    echo "! Expires: 12 hours" && \
    echo "! Description: BadBlock, blocking the bad!" && \
    echo "! Homepage: https://badblock.celenity.dev" && \
    echo "" && \
    cat abp/badblock_regular_abp.txt) > temp_file && mv -v temp_file abp/badblock_regular_abp.txt

mv -v abp/badblock.txt abp/old/badblock_regular_old.txt

mv -v abp/badblock_regular_abp.txt abp/badblock.txt
