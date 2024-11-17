#!/bin/bash

./abp/gen/matomo_gen.sh && ./wildcards-no-star/gen/matomo_gen.sh && ./wildcards-star/gen/matomo_gen.sh

./base/build/build_badblock.sh