# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from TB-X304L device
$(call inherit-product, device/lenovo/tb_x304l/device.mk)

# Device identifier
TARGET_VENDOR := Lenovo
PRODUCT_DEVICE := tb_x304l
PRODUCT_NAME := full_tb_x304l
PRODUCT_BRAND := Lenovo
PRODUCT_MODEL := Tab4 10
PRODUCT_MANUFACTURER := Lenovo
