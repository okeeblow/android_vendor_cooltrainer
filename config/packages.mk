# Extras
PRODUCT_PACKAGES += \
  su \
  CMFileManager \
  Superuser

# microg
PRODUCT_PACKAGES += \
  NetworkLocation \
  GSMLocation \
  UnifiedNlpApi \
  com.google.android.maps \
  com.google.android.maps.xml \
  FusedLocation \
  GmsCore \
  FakeStore

# Additional packages
PRODUCT_PACKAGES += \
  Development \
  LatinIME \
  VideoEditor \
  VoiceDialer \
  SoundRecorder \
  Basic

# Additional apps
PRODUCT_PACKAGES += \
  Apollo \
  DashClock \
  DSPManager \
  DU_about \
  DU_changelog \
  DU_walls \
  libcyanogen-dsp \
  audio_effects.conf \
  MonthCalendarWidget \
  OmniSwitch \
  Terminal

PRODUCT_PACKAGES += \
  CellBroadcastReceiver

# Additional tools
PRODUCT_PACKAGES += \
  zip \
  unrar \
  openvpn \
  e2fsck \
  mke2fs \
  tune2fs \
  bash \
  vim \
  nano \
  htop \
  powertop \
  lsof \
  mount.exfat \
  fsck.exfat \
  mkfs.exfat

# libmemtrack is needed e.g. by foursquare
# looks like it's available on all devices
PRODUCT_PACKAGES += libmemtrack

-include vendor/cooltrainer/config/fetched_packages.mk

