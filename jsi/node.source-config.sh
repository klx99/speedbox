#!/bin/bash

set -o errexit

V8_INCLUDE_PATH="$1";
V8_LIBRARY_PATH="$2";

set -o nounset

SCRIIPTS_DIR=$(cd $(dirname "${BASH_SOURCE[0]}") && pwd);
PROJECT_DIR=$(dirname $(dirname "$SCRIIPTS_DIR"));

if [[ "$(uname -s)" != "Linux" ]]; then
    echo "Failed to sync node source. This script can only run on Linux system."
    exit 1;
fi

if [ -z "$ANDROID_NDK_HOME" ]; then
	echo "Please set your ANDROID_NDK_HOME environment variable first"
	exit 1
fi
ANDROID_NDK_HOME=$(eval cd "$ANDROID_NDK_HOME" && pwd);

if [[ -z "$V8_INCLUDE_PATH" \
   || -z "$V8_LIBRARY_PATH" ]]; then
	echo "Please set your args [V8_INCLUDE_PATH] [V8_LIBRARY_PATH]";
	exit 1
fi
V8_INCLUDE_PATH=$(realpath "$V8_INCLUDE_PATH");
V8_LIBRARY_PATH=$(realpath "$V8_LIBRARY_PATH");

ANDROID_API=19;
ANDROID_OPTS=;
ANDROID_OPTS+=" --without-node-snapshot";
ANDROID_OPTS+=" --without-npm";
ANDROID_OPTS+=" --without-intl";
ANDROID_OPTS+=" --fully-static";
ANDROID_OPTS+=" --without-bundled-v8";
ANDROID_OPTS+=" --without-v8-platform";

ANDROID_LIBLOG="$ANDROID_NDK_HOME/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/lib/arm-linux-androideabi/$ANDROID_API/liblog.so";

source "$SCRIIPTS_DIR/node.source-version.sh";

export PATH+=":$PROJECT_DIR/depot_tools";

echo "change dir to $PROJECT_DIR";
cd $PROJECT_DIR;
cd node;

echo "installing deps";
apt install python3-distutils


PATCHED_FILE="android-configure";
echo "patching $PATCHED_FILE";
git checkout HEAD -- $PATCHED_FILE;
PATCHED_CONTENT="$(cat $PATCHED_FILE)";
PATCHED_CONTENT=${PATCHED_CONTENT//armv7-linux-androideabi/armv7a-linux-androideabi};
#PATCHED_CONTENT=${PATCHED_CONTENT//CXX=*clang++$'\n'/CXX=\"\$TOOLCHAIN/bin/\$SUFFIX-clang++ $CFLAGS\"$'\n'};
PATCHED_CONTENT=${PATCHED_CONTENT//--without-snapshot/$ANDROID_OPTS};
echo "$PATCHED_CONTENT" > $PATCHED_FILE;

PATCHED_FILE="common.gypi";
echo "patching $PATCHED_FILE";
PATCHED_FROM="'libraries': [ '-llog' ]";
PATCHED_CFLAGS="'cflags': [ '-I$V8_INCLUDE_PATH', '-D_LIBCPP_HAS_NO_OFF_T_FUNCTIONS' ]";
PATCHED_LDFLAGS="'ldflags': [ '-l$V8_LIBRARY_PATH', '-l$ANDROID_LIBLOG' ]";

git checkout HEAD -- $PATCHED_FILE;
PATCHED_CONTENT="$(cat $PATCHED_FILE)";
PATCHED_CONTENT=${PATCHED_CONTENT//"$PATCHED_FROM"/$PATCHED_CFLAGS,$'\n'$PATCHED_LDFLAGS};
echo "$PATCHED_CONTENT" > $PATCHED_FILE;

echo "configing";
./android-configure $ANDROID_NDK_HOME arm 23;

