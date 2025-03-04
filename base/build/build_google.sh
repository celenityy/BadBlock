#!/bin/bash

./abp/gen/google_gen.sh && ./wildcards-no-star/gen/google_gen.sh && ./wildcards-star/gen/google_gen.sh

./base/build/build_badblock.sh
