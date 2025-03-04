#!/bin/bash

./abp/gen/huawei_gen.sh && ./wildcards-no-star/gen/huawei_gen.sh && ./wildcards-star/gen/huawei_gen.sh

./base/build/build_badblock.sh
