#!/bin/bash

./abp/gen/yandex_gen.sh && ./wildcards-no-star/gen/yandex_gen.sh && ./wildcards-star/gen/yandex_gen.sh

./base/build/build_badblock.sh
