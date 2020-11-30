#!/bin/bash

set -o errexit
set -o nounset

print_usage()
{
	echo '
NAME
       jsi.source-build.sh

SYNOPSIS
       jsi.source-build.sh [options]

DESCRIPTION
       Auto build jsi-devtools packages script.

OPTIONS
       --ndk-home=(ndk home)
                 Required. The ndk home. If unspecified, use or with an ANDROID_NDK_HOME environment variable.

       --nodejs-dir=(node dir)
                 Required. The node.js dir.

       --v8-dir=(v8 dir)
                 Optional. The v8 dir.

       --output-path=(output path)
                 Optional. output path. If unspecified, use [out] as default.

       --debug
                 Optional. Print debug verbose.

       -h, --help
                 Optional. Print help infomation and exit successfully.';
}

parse_options()
{
	cmd_getopt="getopt";
	if [ "$KERNEL_NAME" == "Darwin" ]; then
		cmd_getopt="/usr/local/Cellar/gnu-getopt/*/bin/getopt";
	fi

	options=`$cmd_getopt -o "h" \
			 --long "sdk-home:, ndk-home:, nodejs-dir:, v8-dir:, output-path:, debug, help" \
			 -n 'autobuild-jsi-devtools' -- "$@"`;
	eval set -- "$options"
	while true; do
		case "$1" in
			(--ndk-home)
				NDK_HOME=$(cd "$2" && pwd);
				shift 2;
				;;
			(--nodejs-dir)
				NODEJS_DIR=$(cd "$2" && pwd);
				shift 2;
				;;
			(--v8-dir)
				V8_DIR=$(cd "$2" && pwd);
				V8_HEADER_DIR="$(cd "$2" && pwd)/include";
				V8_LIB_DIR="$(cd "$2" && pwd)/out.gn/android.arm.release";
				shift 2;
				;;
			(--output-path)
				PROJECT_OUTPUT_DIR=$(cd "$2" && pwd);
				shift 2;
				;;
			(--debug)
				DEBUG_VERBOSE=true;
				shift 1;
				;;
			(-h | --help)
				print_usage;
				exit 0;
				;;
			(- | --)
				shift;
				break;
				;;
			(*)
				echo "Internal error!";
				exit 1;
				;;
		esac
	done
}

logdbg()
{
	if [[ $DEBUG_VERBOSE == false ]]; then
		return;
	fi

	echo -e " [d]: $@";
}

logtrace()
{
	echo -e "\033[1;34m [-]: $@ \033[00m";
}

loginfo()
{
	echo -e "\033[1;32m [+]: $@ \033[00m";
}

logwarn()
{
	echo -e "\033[1;33m [!]: $@ \033[00m";
}

logerr_and_exit()
{
	echo -e "\033[1;31m [x]: $@ \033[00m";
	exit 1;
}

trim() {
	local var="$*"
	var="${var#"${var%%[![:space:]]*}"}"   # remove leading whitespace characters
	var="${var%"${var##*[![:space:]]}"}"   # remove trailing whitespace characters
	echo -n "$var"
}

print_input_log()
{
	logtrace "*********************************************************";
	logtrace " Input infomation";
	logtrace "    ndk home         : $NDK_HOME";
	logtrace "    nodejs dir       : $NODEJS_DIR";
	logtrace "    v8 header dir    : $V8_HEADER_DIR";
	logtrace "    v8 library dir   : $V8_LIB_DIR";
	logtrace "    debug verbose    : $DEBUG_VERBOSE";
	logtrace "*********************************************************";
}

prepare_env()
{
	if [[ -z "$NDK_HOME"
	|| -z "$NODEJS_DIR"
	|| -z "$V8_HEADER_DIR"
	|| -z "$V8_LIB_DIR" ]]; then
		logerr_and_exit "arguments is not correct. use -h or --help for prompt.";
	fi
}

build_jsidt()
{
	#./autobuild-node-static.sh;

	rm -rf "$PROJECT_OUTPUT_DIR" && mkdir -p "$PROJECT_OUTPUT_DIR";
	cd "$PROJECT_OUTPUT_DIR";

	cmake "$PROJECT_DIR/jsidt/" \
		-DANDROID_PLATFORM=android-19 \
		-DANDROID_ABI=armeabi-v7a \
		-DANDROID_STL=c++_static \
		-DCMAKE_TOOLCHAIN_FILE="$NDK_HOME/build/cmake/android.toolchain.cmake" \
		-DLOCAL_LIBC_DIR="$PROJECT_DIR/libc" \
		-DNODEJS_DIR="$NODEJS_DIR" \
		-DV8_HEADER_DIR="$V8_HEADER_DIR" \
		-DV8_LIB_DIR="$V8_LIB_DIR";

		#-DCMAKE_BUILD_TYPE=Debug \
		#-DANDROID_PLATFORM=android-21 \
		#-DANDROID_ABI=armeabi-v7a \
		#-DANDROID_STL=c++_static \
		#-DCMAKE_TOOLCHAIN_FILE="$NDK_HOME/build/cmake/android.toolchain.cmake" \
		#-DNODEJS_DIR="$NODEJS_DIR" \
		#-DV8_DIR="$V8_DIR";

	#make VERBOSE=1 -j16;
	make VERBOSE=1;
}


SCRIPT_DIR=$(cd $(dirname "${BASH_SOURCE[0]}") && pwd);
PROJECT_DIR=$(dirname $(dirname "$SCRIPT_DIR"));
KERNEL_NAME=$(uname -s);

NDK_HOME=;
NODEJS_DIR=;
V8_HEADER_DIR=;
V8_LIB_DIR=;
PROJECT_OUTPUT_DIR="$PROJECT_DIR/out";
DEBUG_VERBOSE=false;

main_run()
{
	loginfo "parsing options";
	parse_options $@;

	print_input_log;

	cd "$PROJECT_DIR";
	loginfo "change directory to $PROJECT_DIR";

	loginfo "preparing environment";
	prepare_env;

	loginfo "build jsi-devtools";
	build_jsidt;

	loginfo "DONE !!!";
}

main_run $@;
