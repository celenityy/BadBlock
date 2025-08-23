#!/bin/bash

source ./base/build/common.sh

./abp/gen/data-brokers_gen.sh && ./wildcards-no-star/gen/data-brokers_gen.sh && ./wildcards-star/gen/data-brokers_gen.sh

./base/build/build_badblock.sh
