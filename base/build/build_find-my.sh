#!/bin/bash

./abp/gen/find-my_gen.sh && ./wildcards-no-star/gen/find-my_gen.sh && ./wildcards-star/gen/find-my_gen.sh

./base/build/build_badblock_plus.sh
