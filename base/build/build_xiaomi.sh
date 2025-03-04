#!/bin/bash

./abp/gen/xiaomi_gen.sh && ./wildcards-no-star/gen/xiaomi_gen.sh && ./wildcards-star/gen/xiaomi_gen.sh

./base/build/build_badblock.sh
