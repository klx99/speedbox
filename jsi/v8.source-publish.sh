#!/bin/bash

set -o nounset
set -o errexit

SCRIIPTS_DIR=$(cd $(dirname "${BASH_SOURCE[0]}") && pwd);
PROJECT_DIR=$(dirname $(dirname "$SCRIIPTS_DIR"));

source "$SCRIIPTS_DIR/v8.source-version.sh";
V8_NATIVE_VERMAJOR=4;
V8_NATIVE_VERMINOR=$V8_MAINVER;
V8_NATIVE_VERPATCH=0;
V8_NATIVE_VERSION="$V8_NATIVE_VERMAJOR.$V8_NATIVE_VERMINOR.$V8_NATIVE_VERPATCH";

NEED_INSTALL=;
if [[ -z $(which gradle) ]]; then
    NEED_INSTALL+=" gradle";
fi
if [[ -z $(which zip) ]]; then
    NEED_INSTALL+=" zip";
fi
if [[ "$NEED_INSTALL" != "" ]]; then
    sudo apt install -y $NEED_INSTALL;
fi

ANDROID_SDK_HOME="$PROJECT_DIR/v8/third_party/android_sdk/public/";
ANDROID_SDK_VERSION=$(ls $ANDROID_SDK_HOME/platforms)
ANDROID_SDK_VERSION=${ANDROID_SDK_VERSION##*-};

OUTPUT_DIR="$PROJECT_DIR/v8/out.gn";
V8_NATIVE_DIR="$OUTPUT_DIR/v8-native";
echo "change dir to $V8_NATIVE_DIR";
rm -rf "$V8_NATIVE_DIR" && mkdir -p "$V8_NATIVE_DIR" && cd "$V8_NATIVE_DIR";

V8_JNI_DIR="jni";
echo "generating $V8_JNI_DIR";
rm -rf "$V8_JNI_DIR/include" && mkdir -p "$V8_JNI_DIR/"{armeabi-v7a,include/libplatform};
cp -r "$OUTPUT_DIR/android.arm.release/libv8.$V8_MAINVER.so"    "$V8_JNI_DIR/armeabi-v7a/libv8.$V8_MAINVER.so";
cp -r "$OUTPUT_DIR/android.arm.release/snapshot_blob.bin"       "$V8_JNI_DIR/armeabi-v7a/libv8.snapshot.$V8_MAINVER.so";
cp -r "$PROJECT_DIR/v8/include/"*.h                             "$V8_JNI_DIR/include/";
cp -r "$PROJECT_DIR/v8/include/libplatform/"*.h                 "$V8_JNI_DIR/include/libplatform/";

V8_MANIFEST_FILE="AndroidManifest.xml";
echo "generating $V8_MANIFEST_FILE";
echo '<manifest xmlns:android="http://schemas.android.com/apk/res/android"'  > "$V8_MANIFEST_FILE";
echo '    package="com.qcode.jsi.v8native">'                                    >> "$V8_MANIFEST_FILE";
echo '    <uses-sdk'                                                        >> "$V8_MANIFEST_FILE";
echo '          android:minSdkVersion="16"'                                 >> "$V8_MANIFEST_FILE";
echo '          android:targetSdkVersion="'$ANDROID_SDK_VERSION'" />'       >> "$V8_MANIFEST_FILE";
echo '    <application>'                                                    >> "$V8_MANIFEST_FILE";
echo '        <meta-data '                                                  >> "$V8_MANIFEST_FILE";
echo '            android:name="V8MainVersion" '                            >> "$V8_MANIFEST_FILE";
echo '            android:value="'$V8_MAINVER'"/>'                          >> "$V8_MANIFEST_FILE";
echo '    </application>'                                                   >> "$V8_MANIFEST_FILE";
echo '</manifest>'                                                          >> "$V8_MANIFEST_FILE";

PATCHED_FILE="publish.gradle";
echo "generating $PATCHED_FILE";
echo 'apply plugin: "maven-publish"'                                         > "$PATCHED_FILE";
echo 'publishing {'                                                         >> "$PATCHED_FILE";
echo '  publications {'                                                     >> "$PATCHED_FILE";
echo '    maven(MavenPublication) {'                                        >> "$PATCHED_FILE";
echo '      groupId "com.qcode.jsi"'                                          >> "$PATCHED_FILE";
echo '      artifactId "v8-native"'                                         >> "$PATCHED_FILE";
echo '      version "'$V8_NATIVE_VERSION'"'                                     >> "$PATCHED_FILE";
echo '      artifact "./v8-native.aar"'                                      >> "$PATCHED_FILE";
echo '    }'                                                                >> "$PATCHED_FILE";
echo '  }'                                                                  >> "$PATCHED_FILE";
echo '  repositories {'                                                     >> "$PATCHED_FILE";
echo '    maven {'                                                          >> "$PATCHED_FILE";
echo '      url "repo"'                                                     >> "$PATCHED_FILE";
echo '    }'                                                                >> "$PATCHED_FILE";
echo '  }'                                                                  >> "$PATCHED_FILE";
echo '}'                                                                    >> "$PATCHED_FILE";

echo "packaging";
zip -r v8-native.aar $V8_JNI_DIR $V8_MANIFEST_FILE;
gradle wrapper --gradle-version=5.1.1;
./gradlew --build-file=publish.gradle :publish;
