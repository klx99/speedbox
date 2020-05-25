#!/bin/bash

set -o nounset                              # Treat unset variables as an error

CURRENT_DIR=$(cd $(dirname "${BASH_SOURCE[0]}") && pwd);
source "$CURRENT_DIR/docker-run.sh";

DOCKER_RUN_IMG="carrier.express:20.04";
DOCKER_RUN_ARGS=" -p 5000:5000  -p 8000:8000";
DOCKER_USER="root";
DockerRun "$DOCKER_RUN_IMG" "$DOCKER_RUN_ARGS" "$DOCKER_USER";
