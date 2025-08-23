#!/bin/bash

source ./base/build/common.sh

./abp/gen/drm_gen.sh && ./wildcards-no-star/gen/drm_gen.sh && ./wildcards-star/gen/drm_gen.sh
