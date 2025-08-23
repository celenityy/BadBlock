#!/bin/bash

source ./base/build/common.sh

./abp/gen/unity_gen.sh && ./wildcards-no-star/gen/unity_gen.sh && ./wildcards-star/gen/unity_gen.sh
