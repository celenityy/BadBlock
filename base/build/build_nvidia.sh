#!/bin/bash

./abp/gen/nvidia_gen.sh && ./wildcards-no-star/gen/nvidia_gen.sh && ./wildcards-star/gen/nvidia_gen.sh

./base/build/build_badblock.sh