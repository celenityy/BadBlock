#!/bin/bash

source ./base/build/common.sh

./abp/gen/adobe_gen.sh && ./wildcards-no-star/gen/adobe_gen.sh && ./wildcards-star/gen/adobe_gen.sh

./base/build/build_badblock.sh
