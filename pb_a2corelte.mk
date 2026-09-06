# Release name
PRODUCT_RELEASE_NAME := a2corelte

$(call inherit-product, build/target/product/embedded.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/pb/config/common.mk)

PRODUCT_PACKAGES += \
	charger_res_images \
	charger

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := a2corelte
PRODUCT_NAME := pb_a2corelte
PRODUCT_MODEL := Galaxy A2 Core (2019)
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
