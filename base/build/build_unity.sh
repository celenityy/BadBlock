#!/bin/bash

./abp/gen/unity_gen.sh && ./wildcards-no-star/gen/unity_gen.sh && ./wildcards-star/gen/unity_gen.sh

./base/build/build_badblock.sh