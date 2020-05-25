#!/bin/bash

set -o nounset                              # Treat unset variables as an error

CURRENT_DIR=$(cd $(dirname "${BASH_SOURCE[0]}") && pwd);
source "$CURRENT_DIR/docker-run.sh";

NDK_NAME="android-ndk-r21b";
DOCKER_RUN_IMG="v8.builder:18.04";
DOCKER_RUN_ARGS="-e NDK_NAME=$NDK_NAME";
DOCKER_USER="root";
DockerRun "$DOCKER_RUN_IMG" "$DOCKER_RUN_ARGS" "$DOCKER_USER";
