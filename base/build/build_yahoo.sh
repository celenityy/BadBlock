#!/bin/bash

./abp/gen/yahoo_gen.sh && ./wildcards-no-star/gen/yahoo_gen.sh && ./wildcards-star/gen/yahoo_gen.sh

./base/build/build_badblock.sh