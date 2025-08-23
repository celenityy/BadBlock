#!/bin/bash

source ./base/build/common.sh

./base/build/build_badblock_lite.sh && ./base/build/build_badblock_regular.sh && ./base/build/build_badblock_plus.sh
