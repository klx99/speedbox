#!/bin/bash

set -o nounset                              # Treat unset variables as an error

CURRENT_DIR=$(cd $(dirname "${BASH_SOURCE[0]}") && pwd);
DOCKER_DIR=$(dirname "$CURRENT_DIR");

source "$CURRENT_DIR/docker-env.sh";

function DockerRun() {
    local img="$1";
    local args="$2";
    local user="$3";
    local homedir="/home/$user";
    if [[ $user == "root" ]]; then
        homedir="/root";
    fi

    local cmdline="docker run";
    cmdline+=" $args";
    cmdline+=" -v $DOCKER_DIR/home:$homedir";
    cmdline+=" -v $HOME/workspace:/opt/workspace";
    cmdline+=" -w /opt/workspace";
    #cmdline+=" -p 5000:5000";
    cmdline+=" -P";
    #cmdline+=" -e TZ=Asia/Shanghai";
    #cmdline+=" -p 1081:1081";
    cmdline+=" --rm -it $img";

    echo $cmdline;
    exec $cmdline;
}
