#!/bin/bash

set -o nounset                              # Treat unset variables as an error

CURRENT_DIR=$(cd $(dirname "${BASH_SOURCE[0]}") && pwd);
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
    cmdline+=" -v $HOME/workspace/docker/home:$homedir";
    cmdline+=" -v $HOME/workspace:$homedir/workspace";
    cmdline+=" -v $HOME/workspace/git/jsi/v8:/opt/v8";
    cmdline+=" -w $homedir/workspace";
    cmdline+=" -P";
    cmdline+=" -e TZ=Asia/Shanghai";
    #cmdline+=" -p 1081:1081";
    cmdline+=" --rm -it $img";

    echo $cmdline;
    exec $cmdline;
}
