#!/bin/bash

./abp/gen/crap_gen.sh && ./wildcards-no-star/gen/crap_gen.sh && ./wildcards-star/gen/crap_gen.sh

./base/build/build_badblock_plus.sh
