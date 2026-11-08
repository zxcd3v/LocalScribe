#!/usr/bin/env bash
set -euo pipefail
: "${ANDROID_SDK_ROOT:?Set ANDROID_SDK_ROOT to your Android SDK}"
: "${1:?Usage: tools/check_apk.sh app-debug.apk}"
"$ANDROID_SDK_ROOT/build-tools/36.0.0/apksigner" verify --verbose "$1"
"$ANDROID_SDK_ROOT/build-tools/36.0.0/zipalign" -c -P 16 -v 4 "$1"
"$ANDROID_SDK_ROOT/build-tools/36.0.0/aapt" dump badging "$1"
