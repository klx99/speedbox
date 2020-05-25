#!/bin/bash

set -o nounset
set -o errexit

SCRIIPTS_DIR=$(cd $(dirname "${BASH_SOURCE[0]}") && pwd);
PROJECT_DIR=$(dirname $(dirname "$SCRIIPTS_DIR"));

if [[ "$(uname -s)" != "Linux" ]]; then
    echo "Failed to sync node source. This script can only run on Linux system."
    exit 1;
fi

source "$SCRIIPTS_DIR/node.source-version.sh";

#export PATH+=":$PROJECT_DIR/depot_tools";

echo "change dir to $PROJECT_DIR";
cd $PROJECT_DIR;

#echo "checking depot_tools";
#set +o errexit
#GCLIENT_PATH=$(which gclient);
#set -o errexit
#if [[ "$GCLIENT_PATH" == "" ]]; then
    #rm -rf depot_tools;
    #git clone https://chromium.googlesource.com/chromium/tools/depot_tools.git;
#fi

NODE_REPO="https://github.com/klx99/node.git";

#echo "generating .gclient";
#echo 'solutions = [ {'                                    >  .gclient;
#echo '  "name": "v8",'                                    >> .gclient;
#echo '  "url": "'$V8_REPO'",'                             >> .gclient;
#echo '  "deps_file": "DEPS",'                             >> .gclient;
#echo '  "managed": False,'                                >> .gclient;
#echo '  "custom_deps": {},'                               >> .gclient;
#echo '}, ]'                                               >> .gclient;
#echo 'target_os = ["android"]'                            >> .gclient;

#echo "updating depot tools";
#update_depot_tools;
#if [[ ! -f "depot_tools/.cipd_bin/vpython" ]]; then
    #echo "Failed to update depot tools!";
    #exit 1;
#fi

echo "fetching node";
if [[ ! -d "node/.git" ]]; then
    git clone "$NODE_REPO";
fi
echo "reseting node to $NODE_VERSION";
pushd node;
git reset --hard $NODE_VERSION;
popd;

#echo "syncing";
#gclient sync -D; # -D auto remove unused packages.

