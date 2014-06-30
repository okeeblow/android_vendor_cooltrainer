SUPERUSER_EMBEDDED := true

PRODUCT_BRAND := Cooltrainer

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
  vendor/cooltrainer/prebuilt/bin/backuptool.functions:system/bin/backuptool.functions \
  vendor/cooltrainer/prebuilt/bin/backuptool.sh:system/bin/backuptool.sh \
  vendor/cooltrainer/prebuilt/etc/init.local.rc:root/init.cooltrainer.rc \
  vendor/cooltrainer/prebuilt/bin/50-hosts.sh:system/addon.d/50-hosts.sh \
  vendor/cooltrainer/prebuilt/bin/blacklist:system/addon.d/blacklist

# init.d support
PRODUCT_COPY_FILES += \
  vendor/cooltrainer/prebuilt/bin/sysinit:system/bin/sysinit \
  vendor/cooltrainer/prebuilt/etc/init.d/00banner:system/etc/init.d/00banner \
  vendor/cooltrainer/prebuilt/etc/init.d/00check:system/etc/init.d/00check \
  vendor/cooltrainer/prebuilt/etc/init.d/01zipalign:system/etc/init.d/01zipalign \
  vendor/cooltrainer/prebuilt/etc/init.d/02sysctl:system/etc/init.d/02sysctl \
  vendor/cooltrainer/prebuilt/etc/init.d/03firstboot:system/etc/init.d/03firstboot \
  vendor/cooltrainer/prebuilt/etc/init.d/05freemem:system/etc/init.d/05freemem \
  vendor/cooltrainer/prebuilt/etc/init.d/06removecache:system/etc/init.d/06removecache \
  vendor/cooltrainer/prebuilt/etc/init.d/07fixperms:system/etc/init.d/07fixperms \
  vendor/cooltrainer/prebuilt/etc/init.d/09cron:system/etc/init.d/09cron \
  vendor/cooltrainer/prebuilt/etc/init.d/10sdboost:system/etc/init.d/10sdboost \
  vendor/cooltrainer/prebuilt/etc/init.d/11battery:system/etc/init.d/11battery \
  vendor/cooltrainer/prebuilt/etc/init.d/12touch:system/etc/init.d/12touch \
  vendor/cooltrainer/prebuilt/etc/init.d/13minfree:system/etc/init.d/13minfree \
  vendor/cooltrainer/prebuilt/etc/init.d/14gpurender:system/etc/init.d/14gpurender \
  vendor/cooltrainer/prebuilt/etc/init.d/15sleepers:system/etc/init.d/15sleepers \
  vendor/cooltrainer/prebuilt/etc/init.d/16journalism:system/etc/init.d/16journalism \
  vendor/cooltrainer/prebuilt/etc/init.d/17sqlite3:system/etc/init.d/17sqlite3 \
  vendor/cooltrainer/prebuilt/etc/init.d/18wifisleep:system/etc/init.d/18wifisleep \
  vendor/cooltrainer/prebuilt/etc/init.d/19iostats:system/etc/init.d/19iostats \
  vendor/cooltrainer/prebuilt/etc/init.d/20setrenice:system/etc/init.d/20setrenice \
  vendor/cooltrainer/prebuilt/etc/init.d/21tweaks:system/etc/init.d/21tweaks \
  vendor/cooltrainer/prebuilt/etc/init.d/24speedy_modified:system/etc/init.d/24speedy_modified \
  vendor/cooltrainer/prebuilt/etc/init.d/25loopy_smoothness_tweak:system/etc/init.d/25loopy_smoothness_tweak \
  vendor/cooltrainer/prebuilt/etc/init.d/98tweaks:system/etc/init.d/98tweaks \
  vendor/cooltrainer/prebuilt/etc/helpers.sh:system/etc/helpers.sh \
  vendor/cooltrainer/prebuilt/etc/sysctl.conf:system/etc/sysctl.conf \
  vendor/cooltrainer/prebuilt/etc/init.d.cfg:system/etc/init.d.cfg

# userinit support
PRODUCT_COPY_FILES += \
  vendor/cooltrainer/prebuilt/etc/init.d/90userinit:system/etc/init.d/90userinit

# Init script file with DU extras
PRODUCT_COPY_FILES += \
  vendor/cooltrainer/prebuilt/etc/init.local.rc:root/init.du.rc

# Enable SIP and VoIP on all targets
PRODUCT_COPY_FILES += \
  frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# T-Mobile theme engine
include vendor/cooltrainer/configs/themes_common.mk

# HFM Files
PRODUCT_COPY_FILES += \
  vendor/cooltrainer/prebuilt/etc/hosts.alt:system/etc/hosts.alt \
  vendor/cooltrainer/prebuilt/etc/hosts.og:system/etc/hosts.og

PRODUCT_COPY_FILES += \
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

TARGET_CUSTOM_RELEASETOOL := $(ANDROID_BUILD_TOP)/vendor/cooltrainer/tools/squisher

-include vendor/cooltrainer/config/packages.mk

-include vendor/cooltrainer/config/version.mk
