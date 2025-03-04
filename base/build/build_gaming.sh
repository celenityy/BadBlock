#!/bin/bash

./abp/gen/gaming_gen.sh && ./wildcards-no-star/gen/gaming_gen.sh && ./wildcards-star/gen/gaming_gen.sh

./base/build/build_badblock.sh
