#!/bin/bash

set -o nounset
set -o errexit

SCRIIPTS_DIR=$(cd $(dirname "${BASH_SOURCE[0]}") && pwd);
PROJECT_DIR=$(dirname $(dirname "$SCRIIPTS_DIR"));
MAX_JOBS=2
if [ -f /proc/cpuinfo ]; then
    MAX_JOBS=$(grep flags /proc/cpuinfo |wc -l)
elif [ ! -z $(which sysctl) ]; then
    MAX_JOBS=$(sysctl -n hw.ncpu)
fi

if [[ "$(uname -s)" != "Linux" ]]; then
    echo "Failed to sync node source. This script can only run on Linux system."
    exit 1;
fi

source "$SCRIIPTS_DIR/node.source-version.sh";

export PATH+=":$PROJECT_DIR/depot_tools";

echo "change dir to $PROJECT_DIR";
cd $PROJECT_DIR;

echo "building";
make -C node/out -j $MAX_JOBS node #V=1;
