#!/bin/bash

# Use GNU Sed on macOS instead of the built-in sed, due to differences in syntax
if [[ "$OSTYPE" == "darwin"* ]]; then
    export SED=gsed
else
    export SED=sed
fi

# Create back-up directories (if they don't already exist...)
mkdir -vp abp/old
mkdir -vp wildcards-no-star/old
mkdir -vp wildcards-star/old
