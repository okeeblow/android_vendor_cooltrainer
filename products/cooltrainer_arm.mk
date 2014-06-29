$(call inherit-product, $(SRC_TARGET_DIR)/product/full.mk)
$(call inherit-product, vendor/cooltrainer/config/common.mk)

PRODUCT_NAME  := cooltrainer_arm
PRODUCT_BRAND := Android
PRODUCT_MODEL := CoolROM on ARM Emulator
PRODUCT_DEVICE := cooltrainer-emulator

PRODUCT_PROPERTY_OVERRIDES += \
  rild.libargs=-d /dev/ttyS0 \
  rild.libpath=/system/lib/libreference-ril.so \
  ro.config.nocheckin=yes

