#!/bin/bash

source ./base/build/common.sh

./abp/gen/monitoring_gen.sh && ./wildcards-no-star/gen/monitoring_gen.sh && ./wildcards-star/gen/monitoring_gen.sh
