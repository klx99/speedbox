#!/bin/bash

set -o nounset
set -o errexit

SCRIIPTS_DIR=$(cd $(dirname "${BASH_SOURCE[0]}") && pwd);
PROJECT_DIR=$(dirname $(dirname "$SCRIIPTS_DIR"));

source "$SCRIIPTS_DIR/v8.source-version.sh";

export PATH+=":$PROJECT_DIR/depot_tools";

echo "change dir to $PROJECT_DIR";
cd $PROJECT_DIR;

echo "building";
ninja -C v8/out.gn/android.arm.release d8;


