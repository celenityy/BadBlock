#!/bin/bash

source ./base/build/common.sh

./abp/gen/sentry_gen.sh && ./wildcards-no-star/gen/sentry_gen.sh && ./wildcards-star/gen/sentry_gen.sh
