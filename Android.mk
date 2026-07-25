LOCAL_PATH := $(call my-dir)

# Stock taiko: boot.img ramdisk_size=0; first-stage is in vendor_boot PLATFORM.
# Merge Lineage's generic ramdisk tree into vendor_ramdisk before it is packed.
ifdef BUILDING_VENDOR_BOOT_IMAGE
ifdef INTERNAL_VENDOR_RAMDISK_TARGET

TAIKO_MERGE_VENDOR_RAMDISK_STAMP := $(PRODUCT_OUT)/.taiko_merge_first_stage_vendor_ramdisk

$(TAIKO_MERGE_VENDOR_RAMDISK_STAMP): $(filter $(TARGET_RAMDISK_OUT)/%,$(ALL_DEFAULT_INSTALLED_MODULES))
	@echo "taiko: merge first-stage ramdisk into vendor_ramdisk"
	@mkdir -p $(TARGET_VENDOR_RAMDISK_OUT)
	@cp -a $(TARGET_RAMDISK_OUT)/. $(TARGET_VENDOR_RAMDISK_OUT)/
	@touch $@

$(INTERNAL_VENDOR_RAMDISK_TARGET): $(TAIKO_MERGE_VENDOR_RAMDISK_STAMP)

endif
endif
