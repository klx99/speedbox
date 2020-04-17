#!/bin/bash

set -o nounset
set -o errexit

SCRIIPTS_DIR=$(cd $(dirname "${BASH_SOURCE[0]}") && pwd);
PROJECT_DIR=$(dirname "$SCRIIPTS_DIR");
MAX_JOBS=2
if [ -f /proc/cpuinfo ]; then
	MAX_JOBS=$(grep flags /proc/cpuinfo |wc -l)
elif [ ! -z $(which sysctl) ]; then
	MAX_JOBS=$(sysctl -n hw.ncpu)
fi

if [ -z "$ANDROID_NDK_HOME" ]; then
	echo "Please set your ANDROID_NDK_HOME environment variable first"
	exit 1
fi

if [[ "$ANDROID_NDK_HOME" == .* ]]; then
	echo "Please set your ANDROID_NDK_HOME to an absolute path"
	exit 1
fi
ANDROID_NDK_HOME=$(eval cd "$ANDROID_NDK_HOME" && pwd);


ARCH_LIST=(armeabi-v7a arm64-v8a x86 x86_64)
HOST_LIST=(arm-linux-androideabi aarch64-linux-android i686-linux-android x86_64-linux-android)
for idx in "${!ARCH_LIST[@]}"; do
    build_dir="$PROJECT_DIR/build/android/${ARCH_LIST[$idx]}";
    install_dir="$build_dir/output";
    dest_dir="$PROJECT_DIR/build/android/dest";
    mkdir -p "$build_dir" && cd "$build_dir";

    cmake \
        -DANDROID_ABI=${ARCH_LIST[$idx]} \
        -DCMAKE_ANDROID_ARCH_HEADER_TRIPLE=${HOST_LIST[$idx]} \
        -DANDROID_NDK_HOME=$ANDROID_NDK_HOME \
        -DCMAKE_TOOLCHAIN_FILE=$PROJECT_DIR/cmake/AndroidToolchain.cmake \
        -DCMAKE_INSTALL_PREFIX=$install_dir \
        $PROJECT_DIR;

    #make -j$MAX_JOBS VERBOSE=1 && make install;
    make -j$MAX_JOBS && make install;

    mkdir -p "$dest_dir/include" "$dest_dir/${ARCH_LIST[$idx]}";
    echo "copy $install_dir/include/*";
    echo " ==> $dest_dir/include";
    cp -r $install_dir/include/* "$dest_dir/include";
    echo "copy $install_dir/lib/*.so";
    echo " ==> $dest_dir/${ARCH_LIST[$idx]}";
    cp $install_dir/lib/*.so "$dest_dir/${ARCH_LIST[$idx]}";
done

