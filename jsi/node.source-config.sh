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
#ANDROID_OPTS+=" --without-intl";
ANDROID_OPTS+=" --with-intl=full-icu";
ANDROID_OPTS+=" --fully-static";
ANDROID_OPTS+=" --without-bundled-v8";
#ANDROID_OPTS+=" --without-v8-platform";

ANDROID_LIBLOG="$ANDROID_NDK_HOME/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/lib/arm-linux-androideabi/$ANDROID_API/liblog.so";

source "$SCRIIPTS_DIR/node.source-version.sh";

export PATH+=":$PROJECT_DIR/depot_tools";

echo "change dir to $PROJECT_DIR";
cd $PROJECT_DIR;
cd node;

echo "installing deps";
apt install -y python3-distutils

function PatchFile()
{
	local file="$1";
	local reset="$2";
	local from="$3";
	local to="$4";
	local ext="${5:-}";

	echo "patching $file:";
    echo "  from: $from"
    echo "  to:   $to";
    echo "  ext:  $ext";
    if [[ ! -f "$file" ]]; then
        echo "File not found: $PWD/$file."
        exit 1;
    fi
    if [[ "$reset" == true ]]; then
        git checkout HEAD -- "$file";
    fi

	local content="$(cat $file)";
    if [[ -z "$ext" ]]; then
	    content=${content//"$from"/$to};
    else
        content=${content//"$from"/$to$'\n'$ext};
    fi
	echo "$content" > "$file";
}

PatchFile "android-configure" true  "armv7-linux-androideabi" "armv7a-linux-androideabi";
PatchFile "android-configure" false "--without-snapshot" "$ANDROID_OPTS";

PATCHED_FROM="'libraries': [ '-llog' ]";
PATCHED_CFLAGS="'cflags': [ '-I$V8_INCLUDE_PATH', '-D_LIBCPP_HAS_NO_OFF_T_FUNCTIONS' ]";
PATCHED_LDFLAGS="'ldflags': [ '-l$V8_LIBRARY_PATH', '-l$ANDROID_LIBLOG', '-Wl,--allow-multiple-definition' ]";
PatchFile "common.gypi" true  "$PATCHED_FROM" "$PATCHED_CFLAGS," "$PATCHED_LDFLAGS";

PatchFile "node.gyp" true  "'<(obj_dir)/tools/v8_gypfiles/<(STATIC_LIB_PREFIX)v8_base_without_compiler<(STATIC_LIB_SUFFIX)'," "";

PatchFile "deps/cares/cares.gyp" true  "'_LARGEFILE_SOURCE'," "";
PatchFile "deps/cares/cares.gyp" false "'_FILE_OFFSET_BITS=64'," "'_FILE_OFFSET_BITS=32',";

PatchFile "deps/uv/CMakeLists.txt" true  "_FILE_OFFSET_BITS=64 _LARGEFILE_SOURCE" "_FILE_OFFSET_BITS=32";

PatchFile "deps/uv/uv.gyp" true  "'_LARGEFILE_SOURCE'," "";
PatchFile "deps/uv/uv.gyp" false "'_FILE_OFFSET_BITS=64'," "'_FILE_OFFSET_BITS=32',";

PatchFile "src/debug_utils.cc" true  "__linux__" "__linux__jsidt_removed__";
PatchFile "src/debug_utils.cc" false "HAVE_EXECINFO_H 1" "HAVE_EXECINFO_H 0";

PatchFile "deps/cares/config/sunos/ares_config.h" true  "#define _FILE_OFFSET_BITS 64" "// #define _FILE_OFFSET_BITS 64";

#fix runtime crash issue.
PatchFile 'src/node_metadata.cc' true  'brotli =' 'brotli = "1.0.7";';
PatchFile 'src/node_metadata.cc' false  'std::to_string' '// std::to_string';
PatchFile 'src/node_metadata.cc' false '"." +' '// "." +';

# redirect error log.
PatchFile 'src/node.cc' true  'namespace node {' '#include<android/log.h>' 'namespace node {';
PatchFile 'src/node.cc' false 'fprintf(stderr,' '__android_log_print(ANDROID_LOG_WARN, "DevTools",';

PatchFile 'src/inspector_agent.cc' true  'namespace node {' '#include<android/log.h>' 'namespace node {';
PatchFile 'src/inspector_agent.cc' false 'fprintf(stderr,' '__android_log_print(ANDROID_LOG_WARN, "DevTools",';

PatchFile 'src/inspector_io.cc' true  'namespace node {' '#include<android/log.h>' 'namespace node {';
PatchFile 'src/inspector_io.cc' false 'fprintf(stderr,' '__android_log_print(ANDROID_LOG_WARN, "DevTools",';

PatchFile 'src/inspector_socket_server.cc' true  'namespace node {' '#include<android/log.h>' 'namespace node {';
PatchFile 'src/inspector_socket_server.cc' false 'fprintf(out,' '__android_log_print(ANDROID_LOG_WARN, "DevTools",';
PatchFile 'src/inspector_socket_server.cc' false 'fprintf(out_,' '__android_log_print(ANDROID_LOG_WARN, "DevTools",';


echo "configing";
rm -f config.gypi;
./android-configure $ANDROID_NDK_HOME arm 19;
PatchFile "config.gypi" false "'variables': {" "'variables': {'v8_enable_inspector': 1,";
