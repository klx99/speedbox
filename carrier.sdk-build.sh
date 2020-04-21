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

LOCAL_SYSTEM=$(uname -s);

build_dir="$PROJECT_DIR/build/${LOCAL_SYSTEM}";
install_dir="$build_dir/output";
dest_dir="$build_dir/dest";
mkdir -p "$build_dir" && cd "$build_dir";

cmake \
    -DCMAKE_BUILD_TYPE=Release \
    -DCMAKE_INSTALL_PREFIX=$install_dir \
    $PROJECT_DIR;

#make -j$MAX_JOBS VERBOSE=1 && make install;
make -j$MAX_JOBS && make install;

mkdir -p "$dest_dir/include" "$dest_dir/lib";
echo "copy $install_dir/include/*";
echo " ==> $dest_dir/include";
cp -r $install_dir/include/* "$dest_dir/include";
echo "copy $install_dir/lib/*.{so,dylib,dll}";
echo " ==> $dest_dir/lib/";
cp $install_dir/lib/*.{so,dylib,dll} "$dest_dir/lib";

