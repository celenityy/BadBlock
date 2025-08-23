#!/bin/bash

source ./base/build/common.sh

./abp/gen/tiktok_gen.sh && ./wildcards-no-star/gen/tiktok_gen.sh && ./wildcards-star/gen/tiktok_gen.sh
