#!/bin/bash

./abp/gen/monitoring_gen.sh && ./wildcards-no-star/gen/monitoring_gen.sh && ./wildcards-star/gen/monitoring_gen.sh

./base/build/build_badblock_regular.sh && ./base/build/build_badblock_plus.sh