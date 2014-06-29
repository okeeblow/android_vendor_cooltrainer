#!/bin/bash

function fetch {
  export URL=$1
  export NAME=$2
  export LOCATION=$3
  if [ "$3" == "" ] ; then
    export LOCATION=data
  fi
  export FILE=$(echo $URL | sed 's:.*/::')
  if [ "$NAME" == "" ]; then
    export NAME=$(echo $FILE | sed 's:[.]apk$::' | sed 's:_[0-9]*$::')
  fi
  export FILE="$NAME.apk"
  (
    cd prebuilt/apps
    if ! [ -f "$FILE" ]; then
      wget "$URL" -O "${NAME}.apk"
    fi
  )
  cat >> prebuilt/apps/Android.mk << EOF

include \$(CLEAR_VARS)
LOCAL_MODULE := ${NAME}-cooltrainer
LOCAL_MODULE_OWNER := cooltrainer
LOCAL_SRC_FILES := ${NAME}.apk
LOCAL_MODULE_SUFFIX := .apk
LOCAL_MODULE_CLASS := APPS
LOCAL_CERTIFICATE := PRESIGNED
EOF

  case "$LOCATION" in
    data) echo "LOCAL_MODULE_PATH := \$(TARGET_OUT_DATA_APPS)" >> prebuilt/apps/Android.mk ;;
    vendor) echo "LOCAL_PROPRIETARY_MODULE := true" >> prebuilt/apps/Android.mk ;;
    system) echo "LOCAL_MODULE_PATH := \$(TARGET_OUT_APPS)" >> prebuilt/apps/Android.mk ;;
    priv) echo "LOCAL_PRIVILEGED_MODULE := true" >> prebuilt/apps/Android.mk ;;
  esac

  echo "include \$(BUILD_PREBUILT)" >> prebuilt/apps/Android.mk

  echo -e -n " \\\\\n  ${NAME}-cooltrainer" >> config/fetched_packages.mk
}

echo LOCAL_PATH := \$\(call my-dir\) > prebuilt/apps/Android.mk
echo -n PRODUCT_PACKAGES += > config/fetched_packages.mk

VERSION=6
if ! grep "$VERSION" prebuilt/apps/version &> /dev/null ; then
  echo
  echo "Version mismatch, deleting old APKs"
  rm prebuilt/apps/*.apk
  echo "$VERSION" > prebuilt/apps/version
fi


fetch 'https://f-droid.org/FDroid.apk' 'fdroid' 'priv'
fetch 'http://nightlies.csipsimple.com/armeabi-v7a/CSipSimple-latest-armeabi-v7a.apk'
fetch 'http://fbreader.org/files/android/FBReaderJ_ice-cream-sandwich.apk'
fetch 'https://f-droid.org/repo/org.birthdayadapter_18.apk'
fetch 'https://f-droid.org/repo/at.bitfire.davdroid_37.apk'
fetch 'https://f-droid.org/repo/eu.siacs.conversations_16.apk'
fetch 'http://dev-builds.libreoffice.org/daily/master/Android-ARM@24-Bytemark-Hosting/current/master~2014-06-28_05.28.09_LibreOffice4Android-debug.apk' 'libreoffice'

echo >> config/fetched_packages.mk
