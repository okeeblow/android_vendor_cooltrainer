SUPERUSER_EMBEDDED := true

PRODUCT_BRAND ?= cooltrainer

BUILD_WITH_COLORS := 1

# bootanimations
PRODUCT_COPY_FILES += \
  vendor/cooltrainer/bootanimations/bootanimation.zip:system/media/bootanimation.zip

PRODUCT_PROPERTY_OVERRIDES += \
  keyguard.no_require_sim=true \
  ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
  ro.com.google.clientidbase=android \
  ro.setupwizard.enterprise_mode=1 \
  ro.com.android.dateformat=dd-MM-yyyy \
  ro.com.android.dataroaming=false \
  persist.sys.root_access=3 \
  ro.boot.selinux=disabled \
  debug.sf.nobootanimation=1 \
  persist.sys.dalvik.vm.lib=libart.so

PRODUCT_COPY_FILES += \
  vendor/cooltrainer/prebuilt/bin/sysinit:system/bin/sysinit \
  vendor/cooltrainer/prebuilt/bin/backuptool.functions:system/bin/backuptool.functions \
  vendor/cooltrainer/prebuilt/bin/backuptool.sh:system/bin/backuptool.sh \
  vendor/cooltrainer/prebuilt/etc/init.local.rc:root/init.cooltrainer.rc \
  vendor/cooltrainer/prebuilt/system/org.mozilla.firefox/distribution/preferences.json:system/org.mozilla.firefox/distribution/preferences.json \
  vendor/cooltrainer/prebuilt/system/org.mozilla.firefox/distribution/searchplugins/common/duckduckgo.xml:system/org.mozilla.firefox/distribution/searchplugins/common/duckduckgo.xml \
  vendor/cooltrainer/prebuilt/system/org.mozilla.firefox/distribution/searchplugins/common/list.txt:system/org.mozilla.firefox/distribution/searchplugins/common/list.txt \
  vendor/cooltrainer/prebuilt/system/org.mozilla.firefox/distribution/extensions/jid1-JcGokIiQyjoBAQ@jetpack.xpi:system/org.mozilla.firefox/distribution/extensions/jid1-JcGokIiQyjoBAQ@jetpack.xpi \
  vendor/cooltrainer/prebuilt/system/org.mozilla.firefox/distribution/extensions/https-everywhere@eff.org.xpi:system/org.mozilla.firefox/distribution/extensions/https-everywhere@eff.org.xpi \
  vendor/cooltrainer/prebuilt/system/org.mozilla.firefox/distribution/extensions/jid1-C86cNe1crgj9bw@jetpack.xpi:system/org.mozilla.firefox/distribution/extensions/jid1-C86cNe1crgj9bw@jetpack.xpi \
  vendor/cooltrainer/prebuilt/system/org.mozilla.firefox/distribution/extensions/youtube-o2i@jetpack.xpi:system/org.mozilla.firefox/distribution/extensions/youtube-o2i@jetpack.xpi \
  vendor/cooltrainer/prebuilt/system/org.mozilla.firefox/distribution/extensions/{fe272bd1-5f76-4ea4-8501-a05d35d823fc}.xpi:system/org.mozilla.firefox/distribution/extensions/{fe272bd1-5f76-4ea4-8501-a05d35d823fc}.xpi \
  vendor/cooltrainer/prebuilt/system/org.mozilla.firefox/distribution/extensions/setduckduckgo@measite.de.xpi:system/org.mozilla.firefox/distribution/extensions/setduckduckgo@measite.de.xpi

PRODUCT_PACKAGE_OVERLAYS += vendor/cooltrainer/overlay/common

ifneq ($(TARGET_BUILD_VARIANT),eng)
ADDITIONAL_DEFAULT_PROPERTIES += ro.adb.secure=1
endif

-include vendor/cooltrainer/config/packages.mk

-include vendor/cooltrainer/config/version.mk
