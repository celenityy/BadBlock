#!/bin/bash

source ./base/build/common.sh

./abp/abp_gen_regular.sh && ./wildcards-no-star/no_star_gen_regular.sh && ./wildcards-star/star_gen_regular.sh
