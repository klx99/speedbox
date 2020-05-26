#!/bin/bash

set -o nounset
set -o errexit

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
ANDROID_API=19;

source "$SCRIIPTS_DIR/node.source-version.sh";

export PATH+=":$PROJECT_DIR/depot_tools";

echo "change dir to $PROJECT_DIR";
cd $PROJECT_DIR;
cd node;

echo "installing deps";
apt install python3-distutils

PATCHED_FILE="android-configure";
echo "patching $PATCHED_FILE";
PATCHED_CONTENT="$(cat $PATCHED_FILE)";
PATCHED_CONTENT=${PATCHED_CONTENT//armv7-linux-androideabi/armv7a-linux-androideabi};
PATCHED_CONTENT=${PATCHED_CONTENT//--without-snapshot/--without-node-snapshot --without-npm --without-intl --fully-static};
echo "$PATCHED_CONTENT" > $PATCHED_FILE;

PATCHED_FILE="common.gypi";
echo "patching $PATCHED_FILE";
PATCHED_CONTENT="$(cat $PATCHED_FILE)";
PATCHED_CONTENT=${PATCHED_CONTENT//llog\'/llog\', \'-L$ANDROID_NDK_HOME/platforms/android-$ANDROID_API/arch-arm/usr/lib\'};
echo "$PATCHED_CONTENT" > $PATCHED_FILE;

#PATCHED_CONTENT=${PATCHED_CONTENT//CC=*clang$'\n'/CC=\"\$TOOLCHAIN/bin/\$SUFFIX-clang --sysroot=\$TOOLCHAIN/sysroot\"$'\n'};
#PATCHED_CONTENT=${PATCHED_CONTENT//clang++$'\n'$'\n'/clang++$'\n'export LDFLAGS+=\" -L\$TOOLCHAIN/sysroot/usr/lib/arm-linux-androideabi/\$ANDROID_SDK_VERSION\"$'\n'};
#PATCHED_CONTENT=${PATCHED_CONTENT//CXX=*clang++$'\n'/CXX=\"\$TOOLCHAIN/bin/\$SUFFIX-clang++ -L\$TOOLCHAIN/sysroot/usr/lib/arm-linux-androideabi/\$ANDROID_SDK_VERSION\"$'\n'};
#PATCHED_CONTENT=${PATCHED_CONTENT//clang++$'\n'$'\n'/clang++$'\n'export LD=\"\$CXX -L\$TOOLCHAIN/sysroot/usr/lib/arm-linux-androideabi/\$ANDROID_SDK_VERSION\"$'\n'};

echo "configing";
./android-configure $ANDROID_NDK_HOME arm 23;

