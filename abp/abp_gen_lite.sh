#!/bin/bash

cat abp/apple.txt abp/brave.txt abp/data-brokers.txt abp/google.txt abp/microsoft.txt abp/mozilla.txt abp/gaming.txt abp/radar.txt abp/amazon.txt abp/unsafe.txt | grep -v '^#' | grep -v '^!' | grep -v '^\s*$' | sort | uniq > abp/badblock_lite_abp.txt

(echo "! Title: ⚡️ BadBlock Lite (ABP)" && \
    echo "! Version: $(date +'%d%B%Yv1')" && \
    echo "! Expires: 12 hours" && \
    echo "! Description: BadBlock, but slimmer!" && \
    echo "! Homepage: https://badblock.celenity.dev" && \
    echo "" && \
    cat abp/badblock_lite_abp.txt) > temp_file && mv -v temp_file abp/badblock_lite_abp.txt

mv -v abp/badblock_lite.txt abp/old/badblock_lite_old.txt

mv -v abp/badblock_lite_abp.txt abp/badblock_lite.txt