#!/bin/bash

./abp/gen/twitter_gen.sh && ./wildcards-no-star/gen/twitter_gen.sh && ./wildcards-star/gen/twitter_gen.sh

./base/build/build_badblock.sh