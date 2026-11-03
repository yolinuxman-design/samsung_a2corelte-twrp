# OrangeFox-specific configuration for a2corelte
# OF_* variables are safe in .mk files; FOX_* variables go in vendorsetup.sh

# Keymaster version of the blobs shipped in this tree
# (recovery/root/vendor/bin/hw/android.hardware.keymaster@3.0-service)
OF_DEFAULT_KEYMASTER_VERSION := 3.0

# We are not MIUI
OF_DISABLE_MIUI_SPECIFIC_FEATURES := 1
#OF_SUPPORT_ALL_BLOCK_OTA_UPDATES := 1
#OF_FIX_OTA_UPDATE_MANUAL_FLASH_ERROR := 1

# Samsung device extras
OF_USE_MAGISKBOOT := 1
OF_USE_NEW_MAGISKBOOT := 1
OF_NO_TREBLE_COMPATIBILITY_CHECK := 1
OF_FORCE_CASEFULPATH := 0

# Display (540x960 panel)
OF_SCREEN_H := 960
OF_STATUS_H := 24

# Reduce recovery size if the image overflows BOARD_RECOVERYIMAGE_PARTITION_SIZE
# OF_USE_LZMA_COMPRESSION := 1

# Features
FOX_USE_NANO_EDITOR := 1
FOX_ENABLE_APP_MANAGER := 1
FOX_DELETE_AROMAFM := 1
