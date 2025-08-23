#!/bin/bash

source ./base/build/common.sh

./abp/gen/doh_gen.sh && ./wildcards-no-star/gen/doh_gen.sh && ./wildcards-star/gen/doh_gen.sh
