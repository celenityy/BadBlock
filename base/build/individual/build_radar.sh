#!/bin/bash

source ./base/build/common.sh

./abp/gen/radar_gen.sh && ./wildcards-no-star/gen/radar_gen.sh && ./wildcards-star/gen/radar_gen.sh
