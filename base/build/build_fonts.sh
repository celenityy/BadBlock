#!/bin/bash

source ./base/build/common.sh

./abp/gen/fonts_gen.sh && ./wildcards-no-star/gen/fonts_gen.sh && ./wildcards-star/gen/fonts_gen.sh
