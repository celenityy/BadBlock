#!/bin/bash

source ./base/build/common.sh

./abp/gen/yandex_gen.sh && ./wildcards-no-star/gen/yandex_gen.sh && ./wildcards-star/gen/yandex_gen.sh
