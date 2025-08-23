#!/bin/bash

source ./base/build/common.sh

./abp/gen/personal_gen.sh && ./wildcards-no-star/gen/personal_gen.sh && ./wildcards-star/gen/personal_gen.sh
