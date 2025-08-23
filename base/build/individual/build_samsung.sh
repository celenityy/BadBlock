#!/bin/bash

source ./base/build/common.sh

./abp/gen/samsung_gen.sh && ./wildcards-no-star/gen/samsung_gen.sh && ./wildcards-star/gen/samsung_gen.sh
