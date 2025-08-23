#!/bin/bash

source ./base/build/common.sh

./abp/gen/mozilla_gen.sh && ./wildcards-no-star/gen/mozilla_gen.sh && ./wildcards-star/gen/mozilla_gen.sh

./base/build/build_badblock.sh
