LOCAL_PATH := $(call my-dir)

FLASH_IMAGE_TARGET ?= $(PRODUCT_OUT)/recovery.tar

# Boot image rule
$(INSTALLED_BOOTIMAGE_TARGET): $(MKBOOTIMG) $(INTERNAL_BOOTIMAGE_FILES)
	@echo -e ${CL_GRN}"----- Making boot image ------"${CL_RST}
	$(hide) $(MKBOOTIMG) $(INTERNAL_BOOTIMAGE_ARGS) $(BOARD_MKBOOTIMG_ARGS) --output $@
	@echo -e ${CL_CYN}"Made boot image: $@"${CL_RST}

# Recovery image rule — append dt to kernel first
$(INSTALLED_RECOVERYIMAGE_TARGET): $(MKBOOTIMG) $(recovery_kernel) $(recovery_ramdisk)
	@echo -e ${CL_GRN}"----- Appending dt to kernel ------"${CL_RST}
	$(hide) cat $(LOCAL_PATH)/prebuilt/dt.img >> $(recovery_kernel)
	@echo -e ${CL_GRN}"----- Making recovery image ------"${CL_RST}
	$(hide) $(MKBOOTIMG) $(INTERNAL_RECOVERYIMAGE_ARGS) $(BOARD_MKBOOTIMG_ARGS) --output $@ --ramdisk $(recovery_ramdisk)
	@echo -e ${CL_CYN}"Made recovery image: $@"${CL_RST}
	@echo -e ${CL_GRN}"----- Lying about SEAndroid state to Samsung bootloader ------"${CL_RST}
	$(hide) printf "SEANDROIDENFORCE" >> $(INSTALLED_RECOVERYIMAGE_TARGET)
	$(hide) $(call assert-max-image-size,$@,$(BOARD_RECOVERYIMAGE_PARTITION_SIZE),raw)
	$(hide) tar -C $(PRODUCT_OUT) -H ustar -c recovery.img > $(FLASH_IMAGE_TARGET)
	@echo -e ${CL_CYN}"Made Odin flashable recovery tar: ${FLASH_IMAGE_TARGET}"${CL_RST}
