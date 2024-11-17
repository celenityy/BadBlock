#!/bin/bash

./abp/gen/lg_gen.sh && ./wildcards-no-star/gen/lg_gen.sh && ./wildcards-star/gen/lg_gen.sh

./base/build/build_badblock.sh