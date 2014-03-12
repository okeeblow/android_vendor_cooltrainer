PRODUCT_PACKAGES += \
  bash \
  e2fsck \
  fsck.exfat \
  htop \
  lsof \
  mke2fs \
  mkfs.exfat \
  mount.exfat \
  nano \
  openvpn \
  powertop \
  su \
  tune2fs \
  vim \
  CMFileManager \
  OmniTorch \
  OpenDelta \
  Apollo \
  Superuser \
  UnifiedNlp \
  UnifiedNlpApi \
  NetworkLocation \
  LegacyNetworkLocation \
  GSMLocation

# libmemtrack is needed e.g. by foursquare
# looks like it's available on all devices
PRODUCT_PACKAGES += libmemtrack

-include vendor/gfreed/config/fetched_packages.mk

