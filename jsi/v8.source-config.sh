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
#DEBIAN_FRONTEND="noninteractive" ./build/install-build-deps-android.sh;

PATCHED_DIR="";
PATCHED_FILE="BUILD.gn";
echo "patching $PATCHED_DIR/$PATCHED_FILE";
pushd "$PATCHED_DIR";
git checkout -- $PATCHED_FILE;
PATCHED_CONTENT="$(cat $PATCHED_FILE)";
PATCHED_CONTENT=${PATCHED_CONTENT/'v8_component("v8_libbase")'/'v8_static_library("v8_libbase")'};
PATCHED_CONTENT=${PATCHED_CONTENT/'v8_component("v8_libplatform")'/'v8_static_library("v8_libplatform")'};
PATCHED_CONTENT=${PATCHED_CONTENT//'":v8_snapshot"'/'":v8_snapshot",":v8_libplatform"'};
#echo "is_android = true" > $PATCHED_FILE;
#echo "$PATCHED_CONTENT" >> $PATCHED_FILE;
echo "$PATCHED_CONTENT" > $PATCHED_FILE;
popd;

PATCHED_DIR="build";
PATCHED_FILE="toolchain/toolchain.gni";
echo "patching $PATCHED_DIR/$PATCHED_FILE";
pushd "$PATCHED_DIR";
git checkout -- $PATCHED_FILE;
PATCHED_CONTENT="$(cat $PATCHED_FILE)";
PATCHED_CONTENT=${PATCHED_CONTENT/cr.so/${V8_MAINVER}.so};
echo "$PATCHED_CONTENT" > $PATCHED_FILE;
popd;

PATCHED_DIR="build";
PATCHED_FILE="config/c++/BUILD.gn";
echo "patching $PATCHED_DIR/$PATCHED_FILE";
pushd "$PATCHED_DIR";
git checkout -- $PATCHED_FILE;
PATCHED_CONTENT="$(cat $PATCHED_FILE)";
PATCHED_CONTENT=${PATCHED_CONTENT//Cr/ndk1};
echo "$PATCHED_CONTENT" > $PATCHED_FILE;
popd;


PATCHED_DIR="build";
PATCHED_FILE="config/c++/c++.gni";
echo "patching $PATCHED_DIR/$PATCHED_FILE";
pushd "$PATCHED_DIR";
git checkout -- $PATCHED_FILE;
PATCHED_CONTENT="$(cat $PATCHED_FILE)";
PATCHED_CONTENT=${PATCHED_CONTENT/libcxx_is_shared = true/libcxx_is_shared = false};
PATCHED_CONTENT=${PATCHED_CONTENT/libcxx_is_shared = *is_component_build$'\n'/libcxx_is_shared = false$'\n'};
echo "$PATCHED_CONTENT" > $PATCHED_FILE;
popd;

PATCHED_DIR="third_party/zlib";
PATCHED_FILE="BUILD.gn";
echo "patching $PATCHED_DIR/$PATCHED_FILE";
pushd "$PATCHED_DIR";
git checkout -- $PATCHED_FILE;
PATCHED_CONTENT="$(cat $PATCHED_FILE)";
PATCHED_CONTENT=${PATCHED_CONTENT/'component("zlib")'/'source_set("zlib")'};
echo "$PATCHED_CONTENT" > $PATCHED_FILE;
popd;

echo "configing";
./tools/dev/v8gen.py android.arm.release -vv -- \
    is_component_build=true \
    use_custom_libcxx=true \
    v8_android_log_stdout=false \
    v8_enable_i18n_support=false \
    v8_target_cpu='"arm"';

echo "done!!!";
