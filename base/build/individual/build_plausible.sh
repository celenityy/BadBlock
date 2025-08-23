#!/bin/bash

source ./base/build/common.sh

./abp/gen/plausible_gen.sh && ./wildcards-no-star/gen/plausible_gen.sh && ./wildcards-star/gen/plausible_gen.sh
