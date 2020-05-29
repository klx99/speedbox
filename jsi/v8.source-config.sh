#!/bin/bash

set -o nounset
set -o errexit

SCRIIPTS_DIR=$(cd $(dirname "${BASH_SOURCE[0]}") && pwd);
PROJECT_DIR=$(dirname $(dirname "$SCRIIPTS_DIR"));

source "$SCRIIPTS_DIR/v8.source-version.sh";

export PATH+=":$PROJECT_DIR/depot_tools";

echo "change dir to $PROJECT_DIR";
cd $PROJECT_DIR;
cd v8;

echo "installing build-deps-android";
./build/install-build-deps-android.sh;

echo "resetting sources";
git checkout -- .;

PATCHED_FILE="build/toolchain/toolchain.gni";
echo "patching $PATCHED_FILE";
PATCHED_CONTENT="$(cat $PATCHED_FILE)";
PATCHED_CONTENT=${PATCHED_CONTENT/cr.so/${V8_MAINVER}.so};
echo "$PATCHED_CONTENT" > $PATCHED_FILE;

PATCHED_FILE="BUILD.gn";
echo "patching $PATCHED_FILE";
PATCHED_CONTENT="$(cat $PATCHED_FILE)";
PATCHED_CONTENT=${PATCHED_CONTENT/'v8_component("v8_libbase")'/'v8_static_library("v8_libbase")'};
PATCHED_CONTENT=${PATCHED_CONTENT/'v8_component("v8_libplatform")'/'v8_static_library("v8_libplatform")'};
PATCHED_CONTENT=${PATCHED_CONTENT//'":v8_snapshot"'/'":v8_snapshot",":v8_libplatform"'};
echo "$PATCHED_CONTENT" > $PATCHED_FILE;

#PATCHED_FILE="include/libplatform/libplatform-export.h";
#echo "patching $PATCHED_FILE";
#PATCHED_CONTENT="$(cat $PATCHED_FILE)";
#PATCHED_CONTENT=${PATCHED_CONTENT//V8_PLATFORM_EXPORT$'\n'/'V8_PLATFORM_EXPORT __attribute__((visibility("default")))'$'\n'};
#echo "$PATCHED_CONTENT" > $PATCHED_FILE;

PATCHED_FILE="third_party/zlib/BUILD.gn";
echo "patching $PATCHED_FILE";
PATCHED_CONTENT="$(cat $PATCHED_FILE)";
PATCHED_CONTENT=${PATCHED_CONTENT/'component("zlib")'/'source_set("zlib")'};
echo "$PATCHED_CONTENT" > $PATCHED_FILE;

echo "configing";
./tools/dev/v8gen.py android.arm.release -- \
    is_component_build=true \
    use_custom_libcxx=false \
    v8_enable_i18n_support=false \
    v8_target_cpu='"arm"';

