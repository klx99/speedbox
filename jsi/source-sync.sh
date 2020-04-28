#!/bin/bash

set -o nounset
set -o errexit

SCRIIPTS_DIR=$(cd $(dirname "${BASH_SOURCE[0]}") && pwd);
PROJECT_DIR=$(dirname $(dirname "$SCRIIPTS_DIR"));

export PATH+=":$PROJECT_DIR/depot_tools";

echo "change dir to $PROJECT_DIR";
cd $PROJECT_DIR;

echo "checking depot_tools";
set +o errexit
GCLIENT_PATH=$(which gclient);
set -o errexit
if [[ "$GCLIENT_PATH" == "" ]]; then
    rm -rf depot_tools;
    git clone https://chromium.googlesource.com/chromium/tools/depot_tools.git;
fi

echo "generating .gclient";
echo 'solutions = [ {'                                    >  .gclient;
echo '  "name": "v8",'                                    >> .gclient;
echo '  "url": "https://github.com/m15998568620/v8.git",' >> .gclient;
echo '  "deps_file": "DEPS",'                             >> .gclient;
echo '  "managed": False,'                                >> .gclient;
echo '  "custom_deps": {},'                               >> .gclient;
echo '}, ]'                                               >> .gclient;
echo 'target_os = ["android"]'                            >> .gclient;

echo "syncing";
gclient sync;
