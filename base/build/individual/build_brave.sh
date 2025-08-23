#!/bin/bash

source ./base/build/common.sh

./abp/gen/brave_gen.sh && ./wildcards-no-star/gen/brave_gen.sh && ./wildcards-star/gen/brave_gen.sh
