Make a new File, name it Android.mk, with the below content

# Replace a523_y83_arm64 with your Device CodeName's Value. Mine is Primo_RX5.
# Replace Allwinner with your Brand/Vendor/Manufacturer's Value, Mine is WALTON 

ifneq ($(filter a523_y83_arm64,$(TARGET_DEVICE)),)
LOCAL_PATH := device/Allwinner/a523_y83_arm64
include $(call all-makefiles-under,$(LOCAL_PATH))
endif