TARGET_PRODUCT_SHORT := $(TARGET_PRODUCT)
TARGET_PRODUCT_SHORT := $(subst cooltrainer_,,$(TARGET_PRODUCT_SHORT))

DATE = $(shell date +%Y%m%d-%H%M%z)
ROM_VERSION := Cooltrainer-$(PLATFORM_VERSION)-$(DATE)-$(TARGET_PRODUCT_SHORT)

PRODUCT_PROPERTY_OVERRIDES += \
  BUILD_DISPLAY_ID=$(BUILD_ID) \
  ro.modversion=$(ROM_VERSION) \
  ro.du.version=$(ROM_VERSION)
