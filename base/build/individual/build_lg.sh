#!/bin/bash

source ./base/build/common.sh

./abp/gen/lg_gen.sh && ./wildcards-no-star/gen/lg_gen.sh && ./wildcards-star/gen/lg_gen.sh
