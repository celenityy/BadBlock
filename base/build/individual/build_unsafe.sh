#!/bin/bash

source ./base/build/common.sh

./abp/gen/unsafe_gen.sh && ./wildcards-no-star/gen/unsafe_gen.sh && ./wildcards-star/gen/unsafe_gen.sh
