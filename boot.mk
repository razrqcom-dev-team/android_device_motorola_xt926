DEVICE_DTB := device/motorola/xt926/devtree

$(INSTALLED_BOOTIMAGE_TARGET): $(MKBOOTIMG) $(INTERNAL_BOOTIMAGE_FILES)
	$(call pretty,"Target boot image: $@")
	$(hide) mv $(INSTALLED_KERNEL_TARGET) $(INSTALLED_KERNEL_TARGET).tmp
	$(hide) cat $(INSTALLED_KERNEL_TARGET).tmp $(DEVICE_DTB) > $(INSTALLED_KERNEL_TARGET)
	$(hide) rm $(INSTALLED_KERNEL_TARGET).tmp
	$(hide) $(MKBOOTIMG) $(INTERNAL_BOOTIMAGE_ARGS) $(BOARD_MKBOOTIMG_ARGS) --output $@
	$(hide) $(call assert-max-image-size,$@,$(BOARD_BOOTIMAGE_PARTITION_SIZE),raw)
	@echo -e ${CL_CYN}"Made boot image: $@"${CL_RST}

$(INSTALLED_RECOVERYIMAGE_TARGET): $(MKBOOTIMG) \
		$(recovery_ramdisk) \
		$(recovery_kernel)
	@echo -e ${CL_CYN}"----- Making recovery image ------"${CL_RST}
	$(hide) mv $(INSTALLED_KERNEL_TARGET) $(INSTALLED_KERNEL_TARGET).tmp
	$(hide) cat $(INSTALLED_KERNEL_TARGET).tmp $(DEVICE_DTB) > $(INSTALLED_KERNEL_TARGET)
	$(hide) rm $(INSTALLED_KERNEL_TARGET).tmp
	$(hide) $(MKBOOTIMG) $(INTERNAL_RECOVERYIMAGE_ARGS) $(BOARD_MKBOOTIMG_ARGS) --output $@
	$(hide) $(call assert-max-image-size,$@,$(BOARD_RECOVERYIMAGE_PARTITION_SIZE),raw)
	@echo -e ${CL_CYN}"Made recovery image: $@"${CL_RST}

