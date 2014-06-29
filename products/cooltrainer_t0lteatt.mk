$(call inherit-product, device/samsung/t0lteatt/full_t0lteatt.mk)
$(call inherit-product, vendor/cooltrainer/config/common.mk)
$(call inherit-product, vendor/cooltrainer/config/gsm.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full.mk)

TARGET_ARCH := arm
ARGET_ARCH_VARIANT := armv7-a-neon

PRODUCT_NAME  := cooltrainer_t0lteatt
PRODUCT_BRAND := Android
PRODUCT_MODEL := CoolROM on t0lteatt
PRODUCT_DEVICE := t0lteatt
PRODUCT_RESTRICT_VENDOR_FILES := false

PRODUCT_PROPERTY_OVERRIDES += \
  ro.bq.gpu_to_cpu_unsupported=1 \
  ro.zygote.disable_gl_preload=true

PRODUCT_BUILD_PROP_OVERRIDES := \
  PRODUCT_NAME=yakju \
  BUILD_FINGERPRINT=google/yakju/t0lteatt:4.3/JWR66Y/776638:user/release-keys \
  PRIVATE_BUILD_DESC="yakju-user 4.3 JWR66Y 776638 release-keys"

