#!/bin/bash

set -o nounset
set -o errexit

SCRIIPTS_DIR=$(cd $(dirname "${BASH_SOURCE[0]}") && pwd);
PROJECT_DIR=$(dirname $(dirname "$SCRIIPTS_DIR"));

if [[ "$(uname -s)" != "Linux" ]]; then
    echo "Failed to sync v8 source. This script can only run on Linux system."
    exit 1;
fi

source "$SCRIIPTS_DIR/v8.source-version.sh";

export PATH+=":$PROJECT_DIR/depot_tools";

echo "change dir to $PROJECT_DIR";
cd $PROJECT_DIR;
cd v8;

echo "installing build-deps-android";
./build/install-build-deps-android.sh;

PATCHED_FILE="build/toolchain/toolchain.gni";
echo "patching $PATCHED_FILE";
PATCHED_CONTENT="$(cat $PATCHED_FILE)";
V8_VER_ARRAY=(${V8_VERSION//\./ });
V8_MAINVER="${V8_VER_ARRAY[0]}${V8_VER_ARRAY[1]}";
PATCHED_CONTENT=${PATCHED_CONTENT/cr.so/${V8_MAINVER}.so};
echo "$PATCHED_CONTENT" > $PATCHED_FILE;


echo "configing";
./tools/dev/v8gen.py android.arm.release -- \
    is_component_build=true \
    use_custom_libcxx=false \
    v8_enable_i18n_support=false \
    v8_target_cpu="arm";

#GN_FILE="out.gn/android.arm.release/args.gn";
#echo 'is_component_build = true'        >> $GN_FILE;
#echo 'use_custom_libcxx = false'        >> $GN_FILE;
#echo 'v8_enable_i18n_support = false'   >> $GN_FILE;
#echo 'v8_target_cpu = "arm"'            >> $GN_FILE;
#cat $GN_FILE;

