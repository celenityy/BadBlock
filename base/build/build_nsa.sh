#!/bin/bash

source ./base/build/common.sh

./abp/gen/nsa-blocklist-ng_gen.sh && ./wildcards-no-star/gen/nsa-blocklist-ng_gen.sh && ./wildcards-star/gen/nsa-blocklist-ng_gen.sh
