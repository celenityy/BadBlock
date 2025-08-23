#!/bin/bash

source ./base/build/common.sh

./abp/gen/yahoo_gen.sh && ./wildcards-no-star/gen/yahoo_gen.sh && ./wildcards-star/gen/yahoo_gen.sh
