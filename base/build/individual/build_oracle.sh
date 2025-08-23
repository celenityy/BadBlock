#!/bin/bash

source ./base/build/common.sh

./abp/gen/oracle_gen.sh && ./wildcards-no-star/gen/oracle_gen.sh && ./wildcards-star/gen/oracle_gen.sh
