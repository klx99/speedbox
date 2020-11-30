#!/bin/bash

set -o nounset
set -o errexit

SCRIIPTS_DIR=$(cd $(dirname "${BASH_SOURCE[0]}") && pwd);
PROJECT_DIR=$(dirname $(dirname "$SCRIIPTS_DIR"));
MAX_JOBS=2
if [ -f /proc/cpuinfo ]; then
	MAX_JOBS=$(grep processor /proc/cpuinfo |wc -l)
elif [ ! -z $(which sysctl) ]; then
	MAX_JOBS=$(sysctl -n hw.ncpu)
fi

LOCAL_SYSTEM=$(uname -s);
RELEASE_NAME="Unknown";
RELEASE_VERSION="0.0";
if [[ -f "/etc/os-release" ]]; then
    RELEASE_NAME=$(source /etc/os-release && echo $NAME);
    RELEASE_VERSION=$(source /etc/os-release && echo $VERSION_ID);
fi

build_type=${1:-Release};
build_dir="$PROJECT_DIR/build/${LOCAL_SYSTEM}-${RELEASE_NAME}-${RELEASE_VERSION}-$build_type";
install_dir="$build_dir/output";
dest_dir="$build_dir/dest";
mkdir -p "$build_dir" && cd "$build_dir";

echo "Build type: $build_type";
cmake \
    -DCMAKE_BUILD_TYPE=$build_type \
    -DCMAKE_INSTALL_PREFIX=$install_dir \
    $PROJECT_DIR;

make VERBOSE=1 && make install;
#make -j$MAX_JOBS && make install;

LIB_SUFFIX=;
case ${LOCAL_SYSTEM} in
    "Linux")
        LIB_SUFFIX="so";
        ;;
    "Darwin")
        LIB_SUFFIX="dylib";
        ;;
    "Windows")
        LIB_SUFFIX="dll";
        ;;
esac

mkdir -p "$dest_dir/include" "$dest_dir/lib";
echo "copy $install_dir/include/*";
echo " ==> $dest_dir/include";
cp -r $install_dir/include "$dest_dir" | true;
echo "copy $install_dir/lib/*.$LIB_SUFFIX";
echo " ==> $dest_dir/lib/";
cp $install_dir/lib/*.$LIB_SUFFIX "$dest_dir/lib";

