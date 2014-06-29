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

# libmemtrack is needed e.g. by foursquare
# looks like it's available on all devices
PRODUCT_PACKAGES += libmemtrack

-include vendor/cooltrainer/config/fetched_packages.mk

