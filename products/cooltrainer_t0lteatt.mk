$(call inherit-product, device/samsung/t0lteatt/full_t0lteatt.mk)
$(call inherit-product, vendor/cooltrainer/config/common.mk)
$(call inherit-product, vendor/cooltrainer/config/gsm.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full.mk)

TARGET_ARCH := arm
ARGET_ARCH_VARIANT := armv7-a-neon

PRODUCT_NAME  := cooltrainer_t0lteatt
PRODUCT_BRAND := Cooltrainer
PRODUCT_MANUFACTURER := Cooltrainer
PRODUCT_MODEL := Galaxy Note II
PRODUCT_DEVICE := t0lteatt
PRODUCT_RESTRICT_VENDOR_FILES := false

TARGET_KERNEL_SOURCE := kernel/samsung/smdk4412-agni

PRODUCT_PROPERTY_OVERRIDES += \
  ro.bq.gpu_to_cpu_unsupported=1 \
  ro.zygote.disable_gl_preload=true

