#!/bin/bash

source ./base/build/common.sh

./abp/gen/crap_gen.sh && ./wildcards-no-star/gen/crap_gen.sh && ./wildcards-star/gen/crap_gen.sh
