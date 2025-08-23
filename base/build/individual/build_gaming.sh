#!/bin/bash

source ./base/build/common.sh

./abp/gen/gaming_gen.sh && ./wildcards-no-star/gen/gaming_gen.sh && ./wildcards-star/gen/gaming_gen.sh
