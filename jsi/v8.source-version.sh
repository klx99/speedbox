#!/bin/bash

set -o nounset
set -o errexit

V8_VERSION="8.1.307.30";
V8_VER_ARRAY=(${V8_VERSION//\./ });
V8_MAINVER="${V8_VER_ARRAY[0]}${V8_VER_ARRAY[1]}";

if [[ "$(uname -s)" != "Linux" ]]; then
    echo "Failed to process v8 source. This script can only run on Linux system."
    exit 1;
fi

