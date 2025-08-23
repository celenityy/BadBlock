#!/bin/bash

# This builds all lists in all formats!

source ./base/build/common.sh

./abp/abp_gen_all.sh && ./wildcards-no-star/no_star_gen_all.sh && ./wildcards-star/star_gen_all.sh
