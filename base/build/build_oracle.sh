#!/bin/bash

./abp/gen/oracle_gen.sh && ./wildcards-no-star/gen/oracle_gen.sh && ./wildcards-star/gen/oracle_gen.sh

./base/build/build_badblock.sh