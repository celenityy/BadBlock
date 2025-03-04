#!/bin/bash

./abp/gen/facebook_gen.sh && ./wildcards-no-star/gen/facebook_gen.sh && ./wildcards-star/gen/facebook_gen.sh

./base/build/build_badblock.sh
