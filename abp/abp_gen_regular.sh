#!/bin/bash

cat abp/apple.txt abp/brave.txt abp/data-brokers.txt abp/google.txt abp/microsoft.txt abp/mozilla.txt abp/roblox.txt abp/radar.txt abp/amazon.txt abp/unsafe.txt | grep -v '^#' | grep -v '^!' | grep -v '^\s*$' | sort | uniq > abp/badblock_regular_abp.txt

(echo "! Title: 🔇 BadBlock (ABP)" && \
    echo "! Version: $(date +'%d%B%Yv1')" && \
    echo "! Expires: 12 hours" && \
    echo "! Description: BadBlock, blocking the bad!" && \
    echo "! Homepage: https://badblock.celenity.dev" && \
    echo "" && \
    cat abp/badblock_regular_abp.txt) > temp_file && mv -v temp_file abp/badblock_regular_abp.txt

mv -v abp/badblock.txt abp/old/badblock_regular_old.txt

mv -v abp/badblock_regular_abp.txt abp/badblock.txt