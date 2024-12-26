$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Add this line if your device is 64-bit
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
# Otherwise, If you have 32-bit device, add the below line instead of above line
#$(call inherit-product, $(SRC_TARGET_DIR)/product/core_minimal.mk

# Another common config inclusion
$(call inherit-product, $(SRC_TARGET_DIR)/product/embedded.mk)

# If you are building from OmniROM's minimal source, Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Replace a523_y83_arm64 with your Device Name's Value. a523_y83_arm64
# Replace Allwinner with your Brand's / Manufacturer's Value. Allwinner
PRODUCT_COPY_FILES += device/Allwinner/a523_y83_arm64/prebuilt/kernel:kernel
# Fles under $(LOCAL_PATH)/recovery/root/ gets automatically copied into recovery
# PRODUCT_COPY_FILES += $(LOCAL_PATH)/recovery/root/*:root/*

PRODUCT_DEVICE := a523_y83_arm64
PRODUCT_NAME := omni_a523_y83_arm64
PRODUCT_BRAND := Allwinner
PRODUCT_MODEL := a523_y83_arm64
PRODUCT_MANUFACTURER := Allwinner

# Forcefully add mtp support (adb is already there)
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp

# Add fingerprint from Stock ROM build.prop
PRODUCT_BUILD_PROP_OVERRIDES += \
    # These lines are from my device. You MUST Replace yours.
    BUILD_FINGERPRINT="Jeazans/KT1016/KT1016:14/UP1A.231105.001.A1/20240717:user/release-keys" \
    PRIVATE_BUILD_DESC="a523_y83_arm64-user 14 UP1A.231105.001.A1 20240717 release-keys"