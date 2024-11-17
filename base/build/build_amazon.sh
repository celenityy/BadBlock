#!/bin/bash

./abp/gen/amazon_gen.sh && ./wildcards-no-star/gen/amazon_gen.sh && ./wildcards-star/gen/amazon_gen.sh

./base/build/build_badblock.sh