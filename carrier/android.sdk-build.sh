#!/bin/bash

set -o nounset
set -o errexit

SCRIIPTS_DIR=$(cd $(dirname "${BASH_SOURCE[0]}") && pwd);
PROJECT_DIR=$(dirname $(dirname "$SCRIIPTS_DIR"));

NATIVE_SDK_DIR="$PROJECT_DIR/../Elastos.NET.Carrier.Native.SDK";

$NATIVE_SDK_DIR/speedbox/carrier/native.sdk-build.android.sh;

echo "=========================================";
echo "copy $NATIVE_SDK_DIR/build/Android/dest/*";
echo " ==> app/native-dist/";
cp -r $NATIVE_SDK_DIR/build/Android/dest/* $PROJECT_DIR/app/native-dist/;

cd "$PROJECT_DIR";
if [[ ! -f "local.properties" ]]; then
    SDK_HOME="$HOME/Library/Android/sdk";
    NDK_HOME=$(ls -d $SDK_HOME/ndk/*);
    echo "sdk.dir=$SDK_HOME" >  "local.properties";
    echo "ndk.dir=$NDK_HOME" >> "local.properties";
fi

#GRADLE=$(find ~/.gradle/ -name gradle |grep bin);
#$GRADLE wrapper;
./gradlew :app:assembleDebug;
