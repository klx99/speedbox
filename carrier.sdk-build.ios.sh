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

XCODE="/Applications/Xcode.app/Contents/Developer"
if [ ! -d "$XCODE" ]; then
	echo "You have to install Xcode and the command line tools first"
	exit 1
fi


ARCH_LIST=(iphoneos iphonesimulator)
SDK_LIST=(iPhoneOS iPhoneSimulator)
for idx in "${!ARCH_LIST[@]}"; do
    build_dir="$PROJECT_DIR/build/iOS";
    install_dir="$build_dir/${ARCH_LIST[$idx]}/output";
    dest_dir="$build_dir/dest";
    mkdir -p "$build_dir" && cd "$build_dir";

    cmake \
        -DIOS_PLATFORM=${ARCH_LIST[$idx]} \
        -DCMAKE_TOOLCHAIN_FILE=$PROJECT_DIR/cmake/iOSToolchain.cmake \
        -DCMAKE_INSTALL_PREFIX=$install_dir \
        $PROJECT_DIR;

    #make -j$MAX_JOBS VERBOSE=1 && make install;
    make -j$MAX_JOBS && make install;

    mkdir -p "$dest_dir/include" "$dest_dir/lib/${ARCH_LIST[$idx]}";
    echo "copy $install_dir/include/*";
    echo " ==> $dest_dir/include";
    cp -r $install_dir/include/* "$dest_dir/include";
    echo "copy $install_dir/lib/*.so";
    echo " ==> $dest_dir/lib/${ARCH_LIST[$idx]}";
    cp $install_dir/lib/*.so "$dest_dir/lib/${ARCH_LIST[$idx]}";
done

