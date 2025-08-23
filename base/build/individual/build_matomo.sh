#!/bin/bash

source ./base/build/common.sh

./abp/gen/matomo_gen.sh && ./wildcards-no-star/gen/matomo_gen.sh && ./wildcards-star/gen/matomo_gen.sh
