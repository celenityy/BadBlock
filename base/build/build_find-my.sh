#!/bin/bash

source ./base/build/common.sh

./abp/gen/find-my_gen.sh && ./wildcards-no-star/gen/find-my_gen.sh && ./wildcards-star/gen/find-my_gen.sh
