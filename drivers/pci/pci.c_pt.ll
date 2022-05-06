; ModuleID = '/llk/IR/drivers/pci/pci.c_pt.bc'
source_filename = "../drivers/pci/pci.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_power_names:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_power_names\22\09\09\09\09\09"
module asm "__kstrtabns_pci_power_names:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_isa_dma_bridge_buggy:\09\09\09\09\09"
module asm "\09.asciz \09\22isa_dma_bridge_buggy\22\09\09\09\09\09"
module asm "__kstrtabns_isa_dma_bridge_buggy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_pci_problems:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_pci_problems\22\09\09\09\09\09"
module asm "__kstrtabns_pci_pci_problems:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_ats_disabled:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_ats_disabled\22\09\09\09\09\09"
module asm "__kstrtabns_pci_ats_disabled:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_bus_max_busnr:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_bus_max_busnr\22\09\09\09\09\09"
module asm "__kstrtabns_pci_bus_max_busnr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_status_get_and_clear_errors:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_status_get_and_clear_errors\22\09\09\09\09\09"
module asm "__kstrtabns_pci_status_get_and_clear_errors:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_ioremap_bar:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_ioremap_bar\22\09\09\09\09\09"
module asm "__kstrtabns_pci_ioremap_bar:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_ioremap_wc_bar:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_ioremap_wc_bar\22\09\09\09\09\09"
module asm "__kstrtabns_pci_ioremap_wc_bar:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_find_next_capability:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_find_next_capability\22\09\09\09\09\09"
module asm "__kstrtabns_pci_find_next_capability:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_find_capability:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_find_capability\22\09\09\09\09\09"
module asm "__kstrtabns_pci_find_capability:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_bus_find_capability:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_bus_find_capability\22\09\09\09\09\09"
module asm "__kstrtabns_pci_bus_find_capability:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_find_next_ext_capability:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_find_next_ext_capability\22\09\09\09\09\09"
module asm "__kstrtabns_pci_find_next_ext_capability:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_find_ext_capability:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_find_ext_capability\22\09\09\09\09\09"
module asm "__kstrtabns_pci_find_ext_capability:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_get_dsn:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_get_dsn\22\09\09\09\09\09"
module asm "__kstrtabns_pci_get_dsn:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_find_next_ht_capability:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_find_next_ht_capability\22\09\09\09\09\09"
module asm "__kstrtabns_pci_find_next_ht_capability:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_find_ht_capability:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_find_ht_capability\22\09\09\09\09\09"
module asm "__kstrtabns_pci_find_ht_capability:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_find_vsec_capability:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_find_vsec_capability\22\09\09\09\09\09"
module asm "__kstrtabns_pci_find_vsec_capability:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_find_dvsec_capability:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_find_dvsec_capability\22\09\09\09\09\09"
module asm "__kstrtabns_pci_find_dvsec_capability:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_find_parent_resource:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_find_parent_resource\22\09\09\09\09\09"
module asm "__kstrtabns_pci_find_parent_resource:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_find_resource:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_find_resource\22\09\09\09\09\09"
module asm "__kstrtabns_pci_find_resource:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_platform_power_transition:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_platform_power_transition\22\09\09\09\09\09"
module asm "__kstrtabns_pci_platform_power_transition:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_set_power_state:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_set_power_state\22\09\09\09\09\09"
module asm "__kstrtabns_pci_set_power_state:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_save_state:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_save_state\22\09\09\09\09\09"
module asm "__kstrtabns_pci_save_state:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_restore_state:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_restore_state\22\09\09\09\09\09"
module asm "__kstrtabns_pci_restore_state:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_store_saved_state:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_store_saved_state\22\09\09\09\09\09"
module asm "__kstrtabns_pci_store_saved_state:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_load_saved_state:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_load_saved_state\22\09\09\09\09\09"
module asm "__kstrtabns_pci_load_saved_state:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_load_and_free_saved_state:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_load_and_free_saved_state\22\09\09\09\09\09"
module asm "__kstrtabns_pci_load_and_free_saved_state:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_reenable_device:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_reenable_device\22\09\09\09\09\09"
module asm "__kstrtabns_pci_reenable_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_enable_device_io:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_enable_device_io\22\09\09\09\09\09"
module asm "__kstrtabns_pci_enable_device_io:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_enable_device_mem:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_enable_device_mem\22\09\09\09\09\09"
module asm "__kstrtabns_pci_enable_device_mem:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_enable_device:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_enable_device\22\09\09\09\09\09"
module asm "__kstrtabns_pci_enable_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pcim_enable_device:\09\09\09\09\09"
module asm "\09.asciz \09\22pcim_enable_device\22\09\09\09\09\09"
module asm "__kstrtabns_pcim_enable_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pcim_pin_device:\09\09\09\09\09"
module asm "\09.asciz \09\22pcim_pin_device\22\09\09\09\09\09"
module asm "__kstrtabns_pcim_pin_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_disable_device:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_disable_device\22\09\09\09\09\09"
module asm "__kstrtabns_pci_disable_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_set_pcie_reset_state:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_set_pcie_reset_state\22\09\09\09\09\09"
module asm "__kstrtabns_pci_set_pcie_reset_state:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_pme_capable:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_pme_capable\22\09\09\09\09\09"
module asm "__kstrtabns_pci_pme_capable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_pme_active:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_pme_active\22\09\09\09\09\09"
module asm "__kstrtabns_pci_pme_active:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_enable_wake:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_enable_wake\22\09\09\09\09\09"
module asm "__kstrtabns_pci_enable_wake:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_wake_from_d3:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_wake_from_d3\22\09\09\09\09\09"
module asm "__kstrtabns_pci_wake_from_d3:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_prepare_to_sleep:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_prepare_to_sleep\22\09\09\09\09\09"
module asm "__kstrtabns_pci_prepare_to_sleep:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_back_from_sleep:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_back_from_sleep\22\09\09\09\09\09"
module asm "__kstrtabns_pci_back_from_sleep:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_dev_run_wake:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_dev_run_wake\22\09\09\09\09\09"
module asm "__kstrtabns_pci_dev_run_wake:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_choose_state:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_choose_state\22\09\09\09\09\09"
module asm "__kstrtabns_pci_choose_state:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_d3cold_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_d3cold_enable\22\09\09\09\09\09"
module asm "__kstrtabns_pci_d3cold_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_d3cold_disable:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_d3cold_disable\22\09\09\09\09\09"
module asm "__kstrtabns_pci_d3cold_disable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_rebar_get_possible_sizes:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_rebar_get_possible_sizes\22\09\09\09\09\09"
module asm "__kstrtabns_pci_rebar_get_possible_sizes:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_enable_atomic_ops_to_root:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_enable_atomic_ops_to_root\22\09\09\09\09\09"
module asm "__kstrtabns_pci_enable_atomic_ops_to_root:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_common_swizzle:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_common_swizzle\22\09\09\09\09\09"
module asm "__kstrtabns_pci_common_swizzle:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_release_region:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_release_region\22\09\09\09\09\09"
module asm "__kstrtabns_pci_release_region:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_request_region:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_request_region\22\09\09\09\09\09"
module asm "__kstrtabns_pci_request_region:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_release_selected_regions:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_release_selected_regions\22\09\09\09\09\09"
module asm "__kstrtabns_pci_release_selected_regions:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_request_selected_regions:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_request_selected_regions\22\09\09\09\09\09"
module asm "__kstrtabns_pci_request_selected_regions:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_request_selected_regions_exclusive:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_request_selected_regions_exclusive\22\09\09\09\09\09"
module asm "__kstrtabns_pci_request_selected_regions_exclusive:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_release_regions:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_release_regions\22\09\09\09\09\09"
module asm "__kstrtabns_pci_release_regions:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_request_regions:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_request_regions\22\09\09\09\09\09"
module asm "__kstrtabns_pci_request_regions:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_request_regions_exclusive:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_request_regions_exclusive\22\09\09\09\09\09"
module asm "__kstrtabns_pci_request_regions_exclusive:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_pio_to_address:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_pio_to_address\22\09\09\09\09\09"
module asm "__kstrtabns_pci_pio_to_address:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_unmap_iospace:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_unmap_iospace\22\09\09\09\09\09"
module asm "__kstrtabns_pci_unmap_iospace:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_pci_remap_iospace:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_pci_remap_iospace\22\09\09\09\09\09"
module asm "__kstrtabns_devm_pci_remap_iospace:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_pci_remap_cfgspace:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_pci_remap_cfgspace\22\09\09\09\09\09"
module asm "__kstrtabns_devm_pci_remap_cfgspace:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_pci_remap_cfg_resource:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_pci_remap_cfg_resource\22\09\09\09\09\09"
module asm "__kstrtabns_devm_pci_remap_cfg_resource:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_set_master:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_set_master\22\09\09\09\09\09"
module asm "__kstrtabns_pci_set_master:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_clear_master:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_clear_master\22\09\09\09\09\09"
module asm "__kstrtabns_pci_clear_master:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_set_cacheline_size:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_set_cacheline_size\22\09\09\09\09\09"
module asm "__kstrtabns_pci_set_cacheline_size:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_set_mwi:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_set_mwi\22\09\09\09\09\09"
module asm "__kstrtabns_pci_set_mwi:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pcim_set_mwi:\09\09\09\09\09"
module asm "\09.asciz \09\22pcim_set_mwi\22\09\09\09\09\09"
module asm "__kstrtabns_pcim_set_mwi:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_try_set_mwi:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_try_set_mwi\22\09\09\09\09\09"
module asm "__kstrtabns_pci_try_set_mwi:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_clear_mwi:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_clear_mwi\22\09\09\09\09\09"
module asm "__kstrtabns_pci_clear_mwi:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_intx:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_intx\22\09\09\09\09\09"
module asm "__kstrtabns_pci_intx:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_check_and_mask_intx:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_check_and_mask_intx\22\09\09\09\09\09"
module asm "__kstrtabns_pci_check_and_mask_intx:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_check_and_unmask_intx:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_check_and_unmask_intx\22\09\09\09\09\09"
module asm "__kstrtabns_pci_check_and_unmask_intx:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_wait_for_pending_transaction:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_wait_for_pending_transaction\22\09\09\09\09\09"
module asm "__kstrtabns_pci_wait_for_pending_transaction:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pcie_flr:\09\09\09\09\09"
module asm "\09.asciz \09\22pcie_flr\22\09\09\09\09\09"
module asm "__kstrtabns_pcie_flr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pcie_reset_flr:\09\09\09\09\09"
module asm "\09.asciz \09\22pcie_reset_flr\22\09\09\09\09\09"
module asm "__kstrtabns_pcie_reset_flr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_bridge_secondary_bus_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_bridge_secondary_bus_reset\22\09\09\09\09\09"
module asm "__kstrtabns_pci_bridge_secondary_bus_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_dev_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_dev_lock\22\09\09\09\09\09"
module asm "__kstrtabns_pci_dev_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_dev_trylock:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_dev_trylock\22\09\09\09\09\09"
module asm "__kstrtabns_pci_dev_trylock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_dev_unlock:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_dev_unlock\22\09\09\09\09\09"
module asm "__kstrtabns_pci_dev_unlock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___pci_reset_function_locked:\09\09\09\09\09"
module asm "\09.asciz \09\22__pci_reset_function_locked\22\09\09\09\09\09"
module asm "__kstrtabns___pci_reset_function_locked:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_reset_function:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_reset_function\22\09\09\09\09\09"
module asm "__kstrtabns_pci_reset_function:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_reset_function_locked:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_reset_function_locked\22\09\09\09\09\09"
module asm "__kstrtabns_pci_reset_function_locked:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_try_reset_function:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_try_reset_function\22\09\09\09\09\09"
module asm "__kstrtabns_pci_try_reset_function:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_probe_reset_slot:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_probe_reset_slot\22\09\09\09\09\09"
module asm "__kstrtabns_pci_probe_reset_slot:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_probe_reset_bus:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_probe_reset_bus\22\09\09\09\09\09"
module asm "__kstrtabns_pci_probe_reset_bus:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_reset_bus:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_reset_bus\22\09\09\09\09\09"
module asm "__kstrtabns_pci_reset_bus:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pcix_get_max_mmrbc:\09\09\09\09\09"
module asm "\09.asciz \09\22pcix_get_max_mmrbc\22\09\09\09\09\09"
module asm "__kstrtabns_pcix_get_max_mmrbc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pcix_get_mmrbc:\09\09\09\09\09"
module asm "\09.asciz \09\22pcix_get_mmrbc\22\09\09\09\09\09"
module asm "__kstrtabns_pcix_get_mmrbc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pcix_set_mmrbc:\09\09\09\09\09"
module asm "\09.asciz \09\22pcix_set_mmrbc\22\09\09\09\09\09"
module asm "__kstrtabns_pcix_set_mmrbc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pcie_get_readrq:\09\09\09\09\09"
module asm "\09.asciz \09\22pcie_get_readrq\22\09\09\09\09\09"
module asm "__kstrtabns_pcie_get_readrq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pcie_set_readrq:\09\09\09\09\09"
module asm "\09.asciz \09\22pcie_set_readrq\22\09\09\09\09\09"
module asm "__kstrtabns_pcie_set_readrq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pcie_get_mps:\09\09\09\09\09"
module asm "\09.asciz \09\22pcie_get_mps\22\09\09\09\09\09"
module asm "__kstrtabns_pcie_get_mps:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pcie_set_mps:\09\09\09\09\09"
module asm "\09.asciz \09\22pcie_set_mps\22\09\09\09\09\09"
module asm "__kstrtabns_pcie_set_mps:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pcie_bandwidth_available:\09\09\09\09\09"
module asm "\09.asciz \09\22pcie_bandwidth_available\22\09\09\09\09\09"
module asm "__kstrtabns_pcie_bandwidth_available:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pcie_get_speed_cap:\09\09\09\09\09"
module asm "\09.asciz \09\22pcie_get_speed_cap\22\09\09\09\09\09"
module asm "__kstrtabns_pcie_get_speed_cap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pcie_get_width_cap:\09\09\09\09\09"
module asm "\09.asciz \09\22pcie_get_width_cap\22\09\09\09\09\09"
module asm "__kstrtabns_pcie_get_width_cap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pcie_print_link_status:\09\09\09\09\09"
module asm "\09.asciz \09\22pcie_print_link_status\22\09\09\09\09\09"
module asm "__kstrtabns_pcie_print_link_status:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_select_bars:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_select_bars\22\09\09\09\09\09"
module asm "__kstrtabns_pci_select_bars:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_device_is_present:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_device_is_present\22\09\09\09\09\09"
module asm "__kstrtabns_pci_device_is_present:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_ignore_hotplug:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_ignore_hotplug\22\09\09\09\09\09"
module asm "__kstrtabns_pci_ignore_hotplug:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_fixup_cardbus:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_fixup_cardbus\22\09\09\09\09\09"
module asm "__kstrtabns_pci_fixup_cardbus:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.dmi_system_id = type { ptr, ptr, [4 x %struct.dmi_strmatch], ptr }
%struct.dmi_strmatch = type { i8, [79 x i8] }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.pci_reset_fn_method = type { ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type {}
%struct.bus_attribute = type { %struct.attribute, ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, [2 x i8], ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, [4 x i8], i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [11 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [11 x ptr], [11 x ptr], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, [2 x i8], i32, i32, ptr, i32, [7 x i8], [5 x i8] }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }
%struct.pci_cap_saved_state = type { %struct.hlist_node, %struct.pci_cap_saved_data }
%struct.pci_cap_saved_data = type { i16, i8, i32, [0 x i32] }
%struct.pci_saved_state = type { [16 x i32], [0 x %struct.pci_cap_saved_data] }
%struct.pci_pme_device = type { %struct.list_head, ptr }
%struct.pci_devres = type { i8, i32 }
%struct.logic_pio_hwaddr = type { %struct.list_head, ptr, i32, i32, i32, i32, ptr, ptr }
%struct.pci_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.pci_error_handlers = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_slot = type { ptr, %struct.list_head, ptr, i8, %struct.kobject }
%struct.hotplug_slot = type { ptr, %struct.list_head, ptr, ptr, ptr }
%struct.hotplug_slot_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@pci_slot_mutex = dso_local global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @pci_slot_mutex, i64 12), ptr getelementptr (i8, ptr @pci_slot_mutex, i64 12) } }, align 4
@.str = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"D0\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"D1\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"D2\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"D3hot\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"D3cold\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@pci_power_names = dso_local global [7 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], align 4
@__kstrtab_pci_power_names = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_power_names = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_power_names = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_power_names to i32), ptr @__kstrtab_pci_power_names, ptr @__kstrtabns_pci_power_names }, section "___ksymtab_gpl+pci_power_names", align 4
@isa_dma_bridge_buggy = dso_local global i32 0, align 4
@__kstrtab_isa_dma_bridge_buggy = external dso_local constant [0 x i8], align 1
@__kstrtabns_isa_dma_bridge_buggy = external dso_local constant [0 x i8], align 1
@__ksymtab_isa_dma_bridge_buggy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @isa_dma_bridge_buggy to i32), ptr @__kstrtab_isa_dma_bridge_buggy, ptr @__kstrtabns_isa_dma_bridge_buggy }, section "___ksymtab+isa_dma_bridge_buggy", align 4
@pci_pci_problems = dso_local global i32 0, align 4
@__kstrtab_pci_pci_problems = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_pci_problems = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_pci_problems = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_pci_problems to i32), ptr @__kstrtab_pci_pci_problems, ptr @__kstrtabns_pci_pci_problems }, section "___ksymtab+pci_pci_problems", align 4
@pci_domains_supported = dso_local local_unnamed_addr global i32 1, align 4
@pci_cardbus_io_size = dso_local local_unnamed_addr global i32 256, align 4
@pci_cardbus_mem_size = dso_local local_unnamed_addr global i32 67108864, align 4
@pci_hotplug_io_size = dso_local local_unnamed_addr global i32 256, align 4
@pci_hotplug_mmio_size = dso_local local_unnamed_addr global i32 2097152, align 4
@pci_hotplug_mmio_pref_size = dso_local local_unnamed_addr global i32 2097152, align 4
@pci_hotplug_bus_size = dso_local local_unnamed_addr global i32 1, align 4
@pcie_bus_config = dso_local local_unnamed_addr global i32 1, align 4
@pci_dfl_cache_line_size = dso_local local_unnamed_addr global i8 16, align 1
@pcibios_max_latency = dso_local local_unnamed_addr global i32 255, align 4
@pcie_ats_disabled = internal unnamed_addr global i1 false, align 1
@__kstrtab_pci_ats_disabled = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_ats_disabled = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_ats_disabled = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_ats_disabled to i32), ptr @__kstrtab_pci_ats_disabled, ptr @__kstrtabns_pci_ats_disabled }, section "___ksymtab_gpl+pci_ats_disabled", align 4
@__setup_str_pcie_port_pm_setup = internal constant [14 x i8] c"pcie_port_pm=\00", section ".init.rodata", align 1
@__setup_pcie_port_pm_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_pcie_port_pm_setup, ptr @pcie_port_pm_setup, i32 0 }, section ".init.setup", align 4
@__kstrtab_pci_bus_max_busnr = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_bus_max_busnr = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_bus_max_busnr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_bus_max_busnr to i32), ptr @__kstrtab_pci_bus_max_busnr, ptr @__kstrtabns_pci_bus_max_busnr }, section "___ksymtab_gpl+pci_bus_max_busnr", align 4
@__kstrtab_pci_status_get_and_clear_errors = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_status_get_and_clear_errors = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_status_get_and_clear_errors = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_status_get_and_clear_errors to i32), ptr @__kstrtab_pci_status_get_and_clear_errors, ptr @__kstrtabns_pci_status_get_and_clear_errors }, section "___ksymtab_gpl+pci_status_get_and_clear_errors", align 4
@__kstrtab_pci_ioremap_bar = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_ioremap_bar = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_ioremap_bar = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_ioremap_bar to i32), ptr @__kstrtab_pci_ioremap_bar, ptr @__kstrtabns_pci_ioremap_bar }, section "___ksymtab_gpl+pci_ioremap_bar", align 4
@__kstrtab_pci_ioremap_wc_bar = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_ioremap_wc_bar = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_ioremap_wc_bar = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_ioremap_wc_bar to i32), ptr @__kstrtab_pci_ioremap_wc_bar, ptr @__kstrtabns_pci_ioremap_wc_bar }, section "___ksymtab_gpl+pci_ioremap_wc_bar", align 4
@__kstrtab_pci_find_next_capability = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_find_next_capability = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_find_next_capability = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_find_next_capability to i32), ptr @__kstrtab_pci_find_next_capability, ptr @__kstrtabns_pci_find_next_capability }, section "___ksymtab_gpl+pci_find_next_capability", align 4
@__kstrtab_pci_find_capability = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_find_capability = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_find_capability = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_find_capability to i32), ptr @__kstrtab_pci_find_capability, ptr @__kstrtabns_pci_find_capability }, section "___ksymtab+pci_find_capability", align 4
@__kstrtab_pci_bus_find_capability = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_bus_find_capability = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_bus_find_capability = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_bus_find_capability to i32), ptr @__kstrtab_pci_bus_find_capability, ptr @__kstrtabns_pci_bus_find_capability }, section "___ksymtab+pci_bus_find_capability", align 4
@__kstrtab_pci_find_next_ext_capability = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_find_next_ext_capability = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_find_next_ext_capability = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_find_next_ext_capability to i32), ptr @__kstrtab_pci_find_next_ext_capability, ptr @__kstrtabns_pci_find_next_ext_capability }, section "___ksymtab_gpl+pci_find_next_ext_capability", align 4
@__kstrtab_pci_find_ext_capability = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_find_ext_capability = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_find_ext_capability = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_find_ext_capability to i32), ptr @__kstrtab_pci_find_ext_capability, ptr @__kstrtabns_pci_find_ext_capability }, section "___ksymtab_gpl+pci_find_ext_capability", align 4
@__kstrtab_pci_get_dsn = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_get_dsn = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_get_dsn = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_get_dsn to i32), ptr @__kstrtab_pci_get_dsn, ptr @__kstrtabns_pci_get_dsn }, section "___ksymtab_gpl+pci_get_dsn", align 4
@__kstrtab_pci_find_next_ht_capability = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_find_next_ht_capability = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_find_next_ht_capability = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_find_next_ht_capability to i32), ptr @__kstrtab_pci_find_next_ht_capability, ptr @__kstrtabns_pci_find_next_ht_capability }, section "___ksymtab_gpl+pci_find_next_ht_capability", align 4
@__kstrtab_pci_find_ht_capability = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_find_ht_capability = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_find_ht_capability = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_find_ht_capability to i32), ptr @__kstrtab_pci_find_ht_capability, ptr @__kstrtabns_pci_find_ht_capability }, section "___ksymtab_gpl+pci_find_ht_capability", align 4
@__kstrtab_pci_find_vsec_capability = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_find_vsec_capability = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_find_vsec_capability = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_find_vsec_capability to i32), ptr @__kstrtab_pci_find_vsec_capability, ptr @__kstrtabns_pci_find_vsec_capability }, section "___ksymtab_gpl+pci_find_vsec_capability", align 4
@__kstrtab_pci_find_dvsec_capability = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_find_dvsec_capability = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_find_dvsec_capability = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_find_dvsec_capability to i32), ptr @__kstrtab_pci_find_dvsec_capability, ptr @__kstrtabns_pci_find_dvsec_capability }, section "___ksymtab_gpl+pci_find_dvsec_capability", align 4
@__kstrtab_pci_find_parent_resource = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_find_parent_resource = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_find_parent_resource = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_find_parent_resource to i32), ptr @__kstrtab_pci_find_parent_resource, ptr @__kstrtabns_pci_find_parent_resource }, section "___ksymtab+pci_find_parent_resource", align 4
@__kstrtab_pci_find_resource = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_find_resource = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_find_resource = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_find_resource to i32), ptr @__kstrtab_pci_find_resource, ptr @__kstrtabns_pci_find_resource }, section "___ksymtab+pci_find_resource", align 4
@pci_acs_enable = internal unnamed_addr global i1 false, align 4
@__kstrtab_pci_platform_power_transition = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_platform_power_transition = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_platform_power_transition = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_platform_power_transition to i32), ptr @__kstrtab_pci_platform_power_transition, ptr @__kstrtabns_pci_platform_power_transition }, section "___ksymtab_gpl+pci_platform_power_transition", align 4
@__kstrtab_pci_set_power_state = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_set_power_state = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_set_power_state = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_set_power_state to i32), ptr @__kstrtab_pci_set_power_state, ptr @__kstrtabns_pci_set_power_state }, section "___ksymtab+pci_set_power_state", align 4
@__kstrtab_pci_save_state = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_save_state = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_save_state = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_save_state to i32), ptr @__kstrtab_pci_save_state, ptr @__kstrtabns_pci_save_state }, section "___ksymtab+pci_save_state", align 4
@__kstrtab_pci_restore_state = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_restore_state = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_restore_state = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_restore_state to i32), ptr @__kstrtab_pci_restore_state, ptr @__kstrtabns_pci_restore_state }, section "___ksymtab+pci_restore_state", align 4
@__kstrtab_pci_store_saved_state = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_store_saved_state = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_store_saved_state = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_store_saved_state to i32), ptr @__kstrtab_pci_store_saved_state, ptr @__kstrtabns_pci_store_saved_state }, section "___ksymtab_gpl+pci_store_saved_state", align 4
@__kstrtab_pci_load_saved_state = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_load_saved_state = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_load_saved_state = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_load_saved_state to i32), ptr @__kstrtab_pci_load_saved_state, ptr @__kstrtabns_pci_load_saved_state }, section "___ksymtab_gpl+pci_load_saved_state", align 4
@__kstrtab_pci_load_and_free_saved_state = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_load_and_free_saved_state = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_load_and_free_saved_state = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_load_and_free_saved_state to i32), ptr @__kstrtab_pci_load_and_free_saved_state, ptr @__kstrtabns_pci_load_and_free_saved_state }, section "___ksymtab_gpl+pci_load_and_free_saved_state", align 4
@__kstrtab_pci_reenable_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_reenable_device = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_reenable_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_reenable_device to i32), ptr @__kstrtab_pci_reenable_device, ptr @__kstrtabns_pci_reenable_device }, section "___ksymtab+pci_reenable_device", align 4
@__kstrtab_pci_enable_device_io = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_enable_device_io = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_enable_device_io = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_enable_device_io to i32), ptr @__kstrtab_pci_enable_device_io, ptr @__kstrtabns_pci_enable_device_io }, section "___ksymtab+pci_enable_device_io", align 4
@__kstrtab_pci_enable_device_mem = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_enable_device_mem = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_enable_device_mem = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_enable_device_mem to i32), ptr @__kstrtab_pci_enable_device_mem, ptr @__kstrtabns_pci_enable_device_mem }, section "___ksymtab+pci_enable_device_mem", align 4
@__kstrtab_pci_enable_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_enable_device = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_enable_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_enable_device to i32), ptr @__kstrtab_pci_enable_device, ptr @__kstrtabns_pci_enable_device }, section "___ksymtab+pci_enable_device", align 4
@__kstrtab_pcim_enable_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_pcim_enable_device = external dso_local constant [0 x i8], align 1
@__ksymtab_pcim_enable_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pcim_enable_device to i32), ptr @__kstrtab_pcim_enable_device, ptr @__kstrtabns_pcim_enable_device }, section "___ksymtab+pcim_enable_device", align 4
@.str.7 = private unnamed_addr constant [18 x i8] c"drivers/pci/pci.c\00", align 1
@__kstrtab_pcim_pin_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_pcim_pin_device = external dso_local constant [0 x i8], align 1
@__ksymtab_pcim_pin_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pcim_pin_device to i32), ptr @__kstrtab_pcim_pin_device, ptr @__kstrtabns_pcim_pin_device }, section "___ksymtab+pcim_pin_device", align 4
@pci_disable_device.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"%s %s: disabling already-disabled device\00", align 1
@__kstrtab_pci_disable_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_disable_device = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_disable_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_disable_device to i32), ptr @__kstrtab_pci_disable_device, ptr @__kstrtabns_pci_disable_device }, section "___ksymtab+pci_disable_device", align 4
@__kstrtab_pci_set_pcie_reset_state = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_set_pcie_reset_state = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_set_pcie_reset_state = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_set_pcie_reset_state to i32), ptr @__kstrtab_pci_set_pcie_reset_state, ptr @__kstrtabns_pci_set_pcie_reset_state }, section "___ksymtab_gpl+pci_set_pcie_reset_state", align 4
@__kstrtab_pci_pme_capable = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_pme_capable = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_pme_capable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_pme_capable to i32), ptr @__kstrtab_pci_pme_capable, ptr @__kstrtabns_pci_pme_capable }, section "___ksymtab+pci_pme_capable", align 4
@.str.9 = private unnamed_addr constant [19 x i8] c"can't enable PME#\0A\00", align 1
@pci_pme_list_mutex = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @pci_pme_list_mutex, i64 12), ptr getelementptr (i8, ptr @pci_pme_list_mutex, i64 12) } }, align 4
@pci_pme_list = internal global %struct.list_head { ptr @pci_pme_list, ptr @pci_pme_list }, align 4
@system_freezable_wq = external dso_local local_unnamed_addr global ptr, align 4
@pci_pme_work = internal global %struct.delayed_work { %struct.work_struct { %struct.atomic_t { i32 -32 }, %struct.list_head { ptr getelementptr (i8, ptr @pci_pme_work, i64 4), ptr getelementptr (i8, ptr @pci_pme_work, i64 4) }, ptr @pci_pme_list_scan }, %struct.timer_list { %struct.hlist_node { ptr inttoptr (i32 768 to ptr), ptr null }, i32 0, ptr @delayed_work_timer_fn, i32 2097152 }, ptr null, i32 0 }, align 4
@__kstrtab_pci_pme_active = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_pme_active = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_pme_active = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_pme_active to i32), ptr @__kstrtab_pci_pme_active, ptr @__kstrtabns_pci_pme_active }, section "___ksymtab+pci_pme_active", align 4
@__kstrtab_pci_enable_wake = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_enable_wake = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_enable_wake = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_enable_wake to i32), ptr @__kstrtab_pci_enable_wake, ptr @__kstrtabns_pci_enable_wake }, section "___ksymtab+pci_enable_wake", align 4
@__kstrtab_pci_wake_from_d3 = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_wake_from_d3 = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_wake_from_d3 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_wake_from_d3 to i32), ptr @__kstrtab_pci_wake_from_d3, ptr @__kstrtabns_pci_wake_from_d3 }, section "___ksymtab+pci_wake_from_d3", align 4
@__kstrtab_pci_prepare_to_sleep = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_prepare_to_sleep = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_prepare_to_sleep = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_prepare_to_sleep to i32), ptr @__kstrtab_pci_prepare_to_sleep, ptr @__kstrtabns_pci_prepare_to_sleep }, section "___ksymtab+pci_prepare_to_sleep", align 4
@__kstrtab_pci_back_from_sleep = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_back_from_sleep = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_back_from_sleep = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_back_from_sleep to i32), ptr @__kstrtab_pci_back_from_sleep, ptr @__kstrtabns_pci_back_from_sleep }, section "___ksymtab+pci_back_from_sleep", align 4
@__kstrtab_pci_dev_run_wake = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_dev_run_wake = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_dev_run_wake = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_dev_run_wake to i32), ptr @__kstrtab_pci_dev_run_wake, ptr @__kstrtabns_pci_dev_run_wake }, section "___ksymtab_gpl+pci_dev_run_wake", align 4
@__kstrtab_pci_choose_state = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_choose_state = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_choose_state = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_choose_state to i32), ptr @__kstrtab_pci_choose_state, ptr @__kstrtabns_pci_choose_state }, section "___ksymtab+pci_choose_state", align 4
@pci_bridge_d3_disable = internal unnamed_addr global i1 false, align 1
@pci_bridge_d3_force = internal unnamed_addr global i1 false, align 1
@bridge_d3_blacklist = internal constant [1 x %struct.dmi_system_id] zeroinitializer, align 4
@__kstrtab_pci_d3cold_enable = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_d3cold_enable = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_d3cold_enable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_d3cold_enable to i32), ptr @__kstrtab_pci_d3cold_enable, ptr @__kstrtabns_pci_d3cold_enable }, section "___ksymtab_gpl+pci_d3cold_enable", align 4
@__kstrtab_pci_d3cold_disable = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_d3cold_disable = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_d3cold_disable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_d3cold_disable to i32), ptr @__kstrtab_pci_d3cold_disable, ptr @__kstrtabns_pci_d3cold_disable }, section "___ksymtab_gpl+pci_d3cold_disable", align 4
@.str.10 = private unnamed_addr constant [38 x i8] c"unsupported PM cap regs version (%u)\0A\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"supports%s%s\0A\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c" D1\00", align 1
@.str.13 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.14 = private unnamed_addr constant [4 x i8] c" D2\00", align 1
@.str.15 = private unnamed_addr constant [31 x i8] c"PME# supported from%s%s%s%s%s\0A\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c" D0\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c" D3hot\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c" D3cold\00", align 1
@.str.19 = private unnamed_addr constant [47 x i8] c"unable to preallocate PCI Express save buffer\0A\00", align 1
@.str.20 = private unnamed_addr constant [41 x i8] c"unable to preallocate PCI-X save buffer\0A\00", align 1
@.str.21 = private unnamed_addr constant [43 x i8] c"unable to allocate suspend buffer for LTR\0A\00", align 1
@pcie_ari_disabled = internal unnamed_addr global i1 false, align 1
@__kstrtab_pci_rebar_get_possible_sizes = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_rebar_get_possible_sizes = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_rebar_get_possible_sizes = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_rebar_get_possible_sizes to i32), ptr @__kstrtab_pci_rebar_get_possible_sizes, ptr @__kstrtabns_pci_rebar_get_possible_sizes }, section "___ksymtab+pci_rebar_get_possible_sizes", align 4
@__kstrtab_pci_enable_atomic_ops_to_root = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_enable_atomic_ops_to_root = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_enable_atomic_ops_to_root = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_enable_atomic_ops_to_root to i32), ptr @__kstrtab_pci_enable_atomic_ops_to_root, ptr @__kstrtabns_pci_enable_atomic_ops_to_root }, section "___ksymtab+pci_enable_atomic_ops_to_root", align 4
@__kstrtab_pci_common_swizzle = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_common_swizzle = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_common_swizzle = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_common_swizzle to i32), ptr @__kstrtab_pci_common_swizzle, ptr @__kstrtabns_pci_common_swizzle }, section "___ksymtab_gpl+pci_common_swizzle", align 4
@ioport_resource = external dso_local global %struct.resource, align 4
@iomem_resource = external dso_local global %struct.resource, align 4
@__kstrtab_pci_release_region = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_release_region = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_release_region = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_release_region to i32), ptr @__kstrtab_pci_release_region, ptr @__kstrtabns_pci_release_region }, section "___ksymtab+pci_release_region", align 4
@__kstrtab_pci_request_region = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_request_region = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_request_region = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_request_region to i32), ptr @__kstrtab_pci_request_region, ptr @__kstrtabns_pci_request_region }, section "___ksymtab+pci_request_region", align 4
@__kstrtab_pci_release_selected_regions = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_release_selected_regions = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_release_selected_regions = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_release_selected_regions to i32), ptr @__kstrtab_pci_release_selected_regions, ptr @__kstrtabns_pci_release_selected_regions }, section "___ksymtab+pci_release_selected_regions", align 4
@__kstrtab_pci_request_selected_regions = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_request_selected_regions = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_request_selected_regions = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_request_selected_regions to i32), ptr @__kstrtab_pci_request_selected_regions, ptr @__kstrtabns_pci_request_selected_regions }, section "___ksymtab+pci_request_selected_regions", align 4
@__kstrtab_pci_request_selected_regions_exclusive = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_request_selected_regions_exclusive = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_request_selected_regions_exclusive = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_request_selected_regions_exclusive to i32), ptr @__kstrtab_pci_request_selected_regions_exclusive, ptr @__kstrtabns_pci_request_selected_regions_exclusive }, section "___ksymtab+pci_request_selected_regions_exclusive", align 4
@__kstrtab_pci_release_regions = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_release_regions = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_release_regions = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_release_regions to i32), ptr @__kstrtab_pci_release_regions, ptr @__kstrtabns_pci_release_regions }, section "___ksymtab+pci_release_regions", align 4
@__kstrtab_pci_request_regions = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_request_regions = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_request_regions = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_request_regions to i32), ptr @__kstrtab_pci_request_regions, ptr @__kstrtabns_pci_request_regions }, section "___ksymtab+pci_request_regions", align 4
@__kstrtab_pci_request_regions_exclusive = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_request_regions_exclusive = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_request_regions_exclusive = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_request_regions_exclusive to i32), ptr @__kstrtab_pci_request_regions_exclusive, ptr @__kstrtabns_pci_request_regions_exclusive }, section "___ksymtab+pci_request_regions_exclusive", align 4
@__kstrtab_pci_pio_to_address = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_pio_to_address = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_pio_to_address = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_pio_to_address to i32), ptr @__kstrtab_pci_pio_to_address, ptr @__kstrtabns_pci_pio_to_address }, section "___ksymtab_gpl+pci_pio_to_address", align 4
@__kstrtab_pci_unmap_iospace = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_unmap_iospace = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_unmap_iospace = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_unmap_iospace to i32), ptr @__kstrtab_pci_unmap_iospace, ptr @__kstrtabns_pci_unmap_iospace }, section "___ksymtab+pci_unmap_iospace", align 4
@.str.22 = private unnamed_addr constant [23 x i8] c"devm_pci_unmap_iospace\00", align 1
@__kstrtab_devm_pci_remap_iospace = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_pci_remap_iospace = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_pci_remap_iospace = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_pci_remap_iospace to i32), ptr @__kstrtab_devm_pci_remap_iospace, ptr @__kstrtabns_devm_pci_remap_iospace }, section "___ksymtab+devm_pci_remap_iospace", align 4
@.str.23 = private unnamed_addr constant [21 x i8] c"devm_ioremap_release\00", align 1
@__kstrtab_devm_pci_remap_cfgspace = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_pci_remap_cfgspace = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_pci_remap_cfgspace = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_pci_remap_cfgspace to i32), ptr @__kstrtab_devm_pci_remap_cfgspace, ptr @__kstrtabns_devm_pci_remap_cfgspace }, section "___ksymtab+devm_pci_remap_cfgspace", align 4
@.str.24 = private unnamed_addr constant [18 x i8] c"invalid resource\0A\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@.str.26 = private unnamed_addr constant [39 x i8] c"can't request region for resource %pR\0A\00", align 1
@.str.27 = private unnamed_addr constant [33 x i8] c"ioremap failed for resource %pR\0A\00", align 1
@__kstrtab_devm_pci_remap_cfg_resource = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_pci_remap_cfg_resource = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_pci_remap_cfg_resource = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_pci_remap_cfg_resource to i32), ptr @__kstrtab_devm_pci_remap_cfg_resource, ptr @__kstrtabns_devm_pci_remap_cfg_resource }, section "___ksymtab+devm_pci_remap_cfg_resource", align 4
@__kstrtab_pci_set_master = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_set_master = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_set_master = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_set_master to i32), ptr @__kstrtab_pci_set_master, ptr @__kstrtabns_pci_set_master }, section "___ksymtab+pci_set_master", align 4
@__kstrtab_pci_clear_master = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_clear_master = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_clear_master = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_clear_master to i32), ptr @__kstrtab_pci_clear_master, ptr @__kstrtabns_pci_clear_master }, section "___ksymtab+pci_clear_master", align 4
@pci_cache_line_size = dso_local local_unnamed_addr global i8 0, align 1
@__kstrtab_pci_set_cacheline_size = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_set_cacheline_size = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_set_cacheline_size = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_set_cacheline_size to i32), ptr @__kstrtab_pci_set_cacheline_size, ptr @__kstrtabns_pci_set_cacheline_size }, section "___ksymtab_gpl+pci_set_cacheline_size", align 4
@__kstrtab_pci_set_mwi = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_set_mwi = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_set_mwi = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_set_mwi to i32), ptr @__kstrtab_pci_set_mwi, ptr @__kstrtabns_pci_set_mwi }, section "___ksymtab+pci_set_mwi", align 4
@__kstrtab_pcim_set_mwi = external dso_local constant [0 x i8], align 1
@__kstrtabns_pcim_set_mwi = external dso_local constant [0 x i8], align 1
@__ksymtab_pcim_set_mwi = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pcim_set_mwi to i32), ptr @__kstrtab_pcim_set_mwi, ptr @__kstrtabns_pcim_set_mwi }, section "___ksymtab+pcim_set_mwi", align 4
@__kstrtab_pci_try_set_mwi = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_try_set_mwi = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_try_set_mwi = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_try_set_mwi to i32), ptr @__kstrtab_pci_try_set_mwi, ptr @__kstrtabns_pci_try_set_mwi }, section "___ksymtab+pci_try_set_mwi", align 4
@__kstrtab_pci_clear_mwi = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_clear_mwi = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_clear_mwi = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_clear_mwi to i32), ptr @__kstrtab_pci_clear_mwi, ptr @__kstrtabns_pci_clear_mwi }, section "___ksymtab+pci_clear_mwi", align 4
@__kstrtab_pci_intx = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_intx = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_intx = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_intx to i32), ptr @__kstrtab_pci_intx, ptr @__kstrtabns_pci_intx }, section "___ksymtab_gpl+pci_intx", align 4
@__kstrtab_pci_check_and_mask_intx = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_check_and_mask_intx = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_check_and_mask_intx = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_check_and_mask_intx to i32), ptr @__kstrtab_pci_check_and_mask_intx, ptr @__kstrtabns_pci_check_and_mask_intx }, section "___ksymtab_gpl+pci_check_and_mask_intx", align 4
@__kstrtab_pci_check_and_unmask_intx = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_check_and_unmask_intx = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_check_and_unmask_intx = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_check_and_unmask_intx to i32), ptr @__kstrtab_pci_check_and_unmask_intx, ptr @__kstrtabns_pci_check_and_unmask_intx }, section "___ksymtab_gpl+pci_check_and_unmask_intx", align 4
@__kstrtab_pci_wait_for_pending_transaction = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_wait_for_pending_transaction = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_wait_for_pending_transaction = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_wait_for_pending_transaction to i32), ptr @__kstrtab_pci_wait_for_pending_transaction, ptr @__kstrtabns_pci_wait_for_pending_transaction }, section "___ksymtab+pci_wait_for_pending_transaction", align 4
@.str.28 = private unnamed_addr constant [83 x i8] c"timed out waiting for pending transaction; performing function level reset anyway\0A\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c"FLR\00", align 1
@__kstrtab_pcie_flr = external dso_local constant [0 x i8], align 1
@__kstrtabns_pcie_flr = external dso_local constant [0 x i8], align 1
@__ksymtab_pcie_flr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pcie_flr to i32), ptr @__kstrtab_pcie_flr, ptr @__kstrtabns_pcie_flr }, section "___ksymtab_gpl+pcie_flr", align 4
@__kstrtab_pcie_reset_flr = external dso_local constant [0 x i8], align 1
@__kstrtabns_pcie_reset_flr = external dso_local constant [0 x i8], align 1
@__ksymtab_pcie_reset_flr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pcie_reset_flr to i32), ptr @__kstrtab_pcie_reset_flr, ptr @__kstrtabns_pcie_reset_flr }, section "___ksymtab_gpl+pcie_reset_flr", align 4
@pci_bus_sem = external dso_local global %struct.rw_semaphore, align 4
@.str.30 = private unnamed_addr constant [50 x i8] c"Data Link Layer Link Active not set in 1000 msec\0A\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"bus reset\00", align 1
@__kstrtab_pci_bridge_secondary_bus_reset = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_bridge_secondary_bus_reset = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_bridge_secondary_bus_reset = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_bridge_secondary_bus_reset to i32), ptr @__kstrtab_pci_bridge_secondary_bus_reset, ptr @__kstrtabns_pci_bridge_secondary_bus_reset }, section "___ksymtab_gpl+pci_bridge_secondary_bus_reset", align 4
@__kstrtab_pci_dev_lock = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_dev_lock = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_dev_lock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_dev_lock to i32), ptr @__kstrtab_pci_dev_lock, ptr @__kstrtabns_pci_dev_lock }, section "___ksymtab_gpl+pci_dev_lock", align 4
@__kstrtab_pci_dev_trylock = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_dev_trylock = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_dev_trylock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_dev_trylock to i32), ptr @__kstrtab_pci_dev_trylock, ptr @__kstrtabns_pci_dev_trylock }, section "___ksymtab_gpl+pci_dev_trylock", align 4
@__kstrtab_pci_dev_unlock = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_dev_unlock = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_dev_unlock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_dev_unlock to i32), ptr @__kstrtab_pci_dev_unlock, ptr @__kstrtabns_pci_dev_unlock }, section "___ksymtab_gpl+pci_dev_unlock", align 4
@pci_dev_reset_method_attrs = internal global [2 x ptr] [ptr @dev_attr_reset_method, ptr null], align 4
@pci_dev_reset_method_attr_group = dso_local local_unnamed_addr constant %struct.attribute_group { ptr null, ptr @pci_dev_reset_method_attr_is_visible, ptr null, ptr @pci_dev_reset_method_attrs, ptr null }, align 4
@pci_reset_fn_methods = internal unnamed_addr constant [7 x %struct.pci_reset_fn_method] [%struct.pci_reset_fn_method zeroinitializer, %struct.pci_reset_fn_method { ptr @pci_dev_specific_reset, ptr @.str.80 }, %struct.pci_reset_fn_method { ptr @pci_dev_acpi_reset, ptr @.str.81 }, %struct.pci_reset_fn_method { ptr @pcie_reset_flr, ptr @.str.82 }, %struct.pci_reset_fn_method { ptr @pci_af_flr, ptr @.str.83 }, %struct.pci_reset_fn_method { ptr @pci_pm_reset, ptr @.str.84 }, %struct.pci_reset_fn_method { ptr @pci_reset_bus_function, ptr @.str.85 }], align 4
@__kstrtab___pci_reset_function_locked = external dso_local constant [0 x i8], align 1
@__kstrtabns___pci_reset_function_locked = external dso_local constant [0 x i8], align 1
@__ksymtab___pci_reset_function_locked = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__pci_reset_function_locked to i32), ptr @__kstrtab___pci_reset_function_locked, ptr @__kstrtabns___pci_reset_function_locked }, section "___ksymtab_gpl+__pci_reset_function_locked", align 4
@__kstrtab_pci_reset_function = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_reset_function = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_reset_function = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_reset_function to i32), ptr @__kstrtab_pci_reset_function, ptr @__kstrtabns_pci_reset_function }, section "___ksymtab_gpl+pci_reset_function", align 4
@__kstrtab_pci_reset_function_locked = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_reset_function_locked = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_reset_function_locked = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_reset_function_locked to i32), ptr @__kstrtab_pci_reset_function_locked, ptr @__kstrtabns_pci_reset_function_locked }, section "___ksymtab_gpl+pci_reset_function_locked", align 4
@__kstrtab_pci_try_reset_function = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_try_reset_function = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_try_reset_function = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_try_reset_function to i32), ptr @__kstrtab_pci_try_reset_function, ptr @__kstrtabns_pci_try_reset_function }, section "___ksymtab_gpl+pci_try_reset_function", align 4
@__kstrtab_pci_probe_reset_slot = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_probe_reset_slot = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_probe_reset_slot = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_probe_reset_slot to i32), ptr @__kstrtab_pci_probe_reset_slot, ptr @__kstrtabns_pci_probe_reset_slot }, section "___ksymtab_gpl+pci_probe_reset_slot", align 4
@__kstrtab_pci_probe_reset_bus = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_probe_reset_bus = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_probe_reset_bus = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_probe_reset_bus to i32), ptr @__kstrtab_pci_probe_reset_bus, ptr @__kstrtabns_pci_probe_reset_bus }, section "___ksymtab_gpl+pci_probe_reset_bus", align 4
@__kstrtab_pci_reset_bus = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_reset_bus = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_reset_bus = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_reset_bus to i32), ptr @__kstrtab_pci_reset_bus, ptr @__kstrtabns_pci_reset_bus }, section "___ksymtab_gpl+pci_reset_bus", align 4
@__kstrtab_pcix_get_max_mmrbc = external dso_local constant [0 x i8], align 1
@__kstrtabns_pcix_get_max_mmrbc = external dso_local constant [0 x i8], align 1
@__ksymtab_pcix_get_max_mmrbc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pcix_get_max_mmrbc to i32), ptr @__kstrtab_pcix_get_max_mmrbc, ptr @__kstrtabns_pcix_get_max_mmrbc }, section "___ksymtab+pcix_get_max_mmrbc", align 4
@__kstrtab_pcix_get_mmrbc = external dso_local constant [0 x i8], align 1
@__kstrtabns_pcix_get_mmrbc = external dso_local constant [0 x i8], align 1
@__ksymtab_pcix_get_mmrbc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pcix_get_mmrbc to i32), ptr @__kstrtab_pcix_get_mmrbc, ptr @__kstrtabns_pcix_get_mmrbc }, section "___ksymtab+pcix_get_mmrbc", align 4
@__kstrtab_pcix_set_mmrbc = external dso_local constant [0 x i8], align 1
@__kstrtabns_pcix_set_mmrbc = external dso_local constant [0 x i8], align 1
@__ksymtab_pcix_set_mmrbc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pcix_set_mmrbc to i32), ptr @__kstrtab_pcix_set_mmrbc, ptr @__kstrtabns_pcix_set_mmrbc }, section "___ksymtab+pcix_set_mmrbc", align 4
@__kstrtab_pcie_get_readrq = external dso_local constant [0 x i8], align 1
@__kstrtabns_pcie_get_readrq = external dso_local constant [0 x i8], align 1
@__ksymtab_pcie_get_readrq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pcie_get_readrq to i32), ptr @__kstrtab_pcie_get_readrq, ptr @__kstrtabns_pcie_get_readrq }, section "___ksymtab+pcie_get_readrq", align 4
@__kstrtab_pcie_set_readrq = external dso_local constant [0 x i8], align 1
@__kstrtabns_pcie_set_readrq = external dso_local constant [0 x i8], align 1
@__ksymtab_pcie_set_readrq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pcie_set_readrq to i32), ptr @__kstrtab_pcie_set_readrq, ptr @__kstrtabns_pcie_set_readrq }, section "___ksymtab+pcie_set_readrq", align 4
@__kstrtab_pcie_get_mps = external dso_local constant [0 x i8], align 1
@__kstrtabns_pcie_get_mps = external dso_local constant [0 x i8], align 1
@__ksymtab_pcie_get_mps = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pcie_get_mps to i32), ptr @__kstrtab_pcie_get_mps, ptr @__kstrtabns_pcie_get_mps }, section "___ksymtab+pcie_get_mps", align 4
@__kstrtab_pcie_set_mps = external dso_local constant [0 x i8], align 1
@__kstrtabns_pcie_set_mps = external dso_local constant [0 x i8], align 1
@__ksymtab_pcie_set_mps = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pcie_set_mps to i32), ptr @__kstrtab_pcie_set_mps, ptr @__kstrtabns_pcie_set_mps }, section "___ksymtab+pcie_set_mps", align 4
@pcie_link_speed = external dso_local local_unnamed_addr constant [0 x i8], align 1
@__kstrtab_pcie_bandwidth_available = external dso_local constant [0 x i8], align 1
@__kstrtabns_pcie_bandwidth_available = external dso_local constant [0 x i8], align 1
@__ksymtab_pcie_bandwidth_available = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pcie_bandwidth_available to i32), ptr @__kstrtab_pcie_bandwidth_available, ptr @__kstrtabns_pcie_bandwidth_available }, section "___ksymtab+pcie_bandwidth_available", align 4
@__kstrtab_pcie_get_speed_cap = external dso_local constant [0 x i8], align 1
@__kstrtabns_pcie_get_speed_cap = external dso_local constant [0 x i8], align 1
@__ksymtab_pcie_get_speed_cap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pcie_get_speed_cap to i32), ptr @__kstrtab_pcie_get_speed_cap, ptr @__kstrtabns_pcie_get_speed_cap }, section "___ksymtab+pcie_get_speed_cap", align 4
@__kstrtab_pcie_get_width_cap = external dso_local constant [0 x i8], align 1
@__kstrtabns_pcie_get_width_cap = external dso_local constant [0 x i8], align 1
@__ksymtab_pcie_get_width_cap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pcie_get_width_cap to i32), ptr @__kstrtab_pcie_get_width_cap, ptr @__kstrtabns_pcie_get_width_cap }, section "___ksymtab+pcie_get_width_cap", align 4
@.str.32 = private unnamed_addr constant [53 x i8] c"%u.%03u Gb/s available PCIe bandwidth (%s x%d link)\0A\00", align 1
@.str.33 = private unnamed_addr constant [112 x i8] c"%u.%03u Gb/s available PCIe bandwidth, limited by %s x%d link at %s (capable of %u.%03u Gb/s with %s x%d link)\0A\00", align 1
@.str.34 = private unnamed_addr constant [10 x i8] c"<unknown>\00", align 1
@__kstrtab_pcie_print_link_status = external dso_local constant [0 x i8], align 1
@__kstrtabns_pcie_print_link_status = external dso_local constant [0 x i8], align 1
@__ksymtab_pcie_print_link_status = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pcie_print_link_status to i32), ptr @__kstrtab_pcie_print_link_status, ptr @__kstrtabns_pcie_print_link_status }, section "___ksymtab+pcie_print_link_status", align 4
@__kstrtab_pci_select_bars = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_select_bars = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_select_bars = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_select_bars to i32), ptr @__kstrtab_pci_select_bars, ptr @__kstrtabns_pci_select_bars }, section "___ksymtab+pci_select_bars", align 4
@arch_set_vga_state = internal unnamed_addr global ptr null, align 4
@.str.35 = private unnamed_addr constant [35 x i8] c"Unable to allocate DMA alias mask\0A\00", align 1
@.str.36 = private unnamed_addr constant [37 x i8] c"Enabling fixed DMA alias to %02x.%d\0A\00", align 1
@.str.37 = private unnamed_addr constant [66 x i8] c"Enabling fixed DMA alias for devfn range from %02x.%d to %02x.%d\0A\00", align 1
@__kstrtab_pci_device_is_present = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_device_is_present = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_device_is_present = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_device_is_present to i32), ptr @__kstrtab_pci_device_is_present, ptr @__kstrtabns_pci_device_is_present }, section "___ksymtab_gpl+pci_device_is_present", align 4
@__kstrtab_pci_ignore_hotplug = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_ignore_hotplug = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_ignore_hotplug = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_ignore_hotplug to i32), ptr @__kstrtab_pci_ignore_hotplug, ptr @__kstrtabns_pci_ignore_hotplug }, section "___ksymtab_gpl+pci_ignore_hotplug", align 4
@.str.38 = private unnamed_addr constant [41 x i8] c"Can't reassign resources to host bridge\0A\00", align 1
@__initcall__kmod_pci__236_6696_pci_resource_alignment_sysfs_init7 = internal global ptr @pci_resource_alignment_sysfs_init, section ".initcall7.init", align 4
@__kstrtab_pci_fixup_cardbus = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_fixup_cardbus = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_fixup_cardbus = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_fixup_cardbus to i32), ptr @__kstrtab_pci_fixup_cardbus, ptr @__kstrtabns_pci_fixup_cardbus }, section "___ksymtab+pci_fixup_cardbus", align 4
@__setup_str_pci_setup = internal constant [4 x i8] c"pci\00", section ".init.rodata", align 1
@__setup_pci_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_pci_setup, ptr @pci_setup, i32 1 }, section ".init.setup", align 4
@__initcall__kmod_pci__237_6871_pci_realloc_setup_params0 = internal global ptr @pci_realloc_setup_params, section ".initcall0.init", align 4
@pci_pm_d3hot_delay = dso_local local_unnamed_addr global i32 0, align 4
@pci_early_dump = dso_local local_unnamed_addr global i8 0, align 1
@.str.39 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.40 = private unnamed_addr constant [6 x i8] c"force\00", align 1
@.str.41 = private unnamed_addr constant [27 x i8] c"can't ioremap BAR %d: %pR\0A\00", align 1
@.str.42 = private unnamed_addr constant [42 x i8] c"invalid power transition (from %s to %s)\0A\00", align 1
@.str.43 = private unnamed_addr constant [68 x i8] c"can't change power state from %s to %s (config space inaccessible)\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@pci_raw_set_power_state._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.pci_raw_set_power_state = private unnamed_addr constant [24 x i8] c"pci_raw_set_power_state\00", align 1
@.str.44 = private unnamed_addr constant [45 x i8] c"refused to change power state from %s to %s\0A\00", align 1
@.str.45 = private unnamed_addr constant [24 x i8] c"buffer not found in %s\0A\00", align 1
@__func__.pci_save_pcie_state = private unnamed_addr constant [20 x i8] c"pci_save_pcie_state\00", align 1
@__func__.pci_save_pcix_state = private unnamed_addr constant [20 x i8] c"pci_save_pcix_state\00", align 1
@.str.46 = private unnamed_addr constant [62 x i8] c"no suspend buffer for LTR; ASPM issues possible after resume\0A\00", align 1
@disable_acs_redir_param = internal unnamed_addr global ptr null, align 4
@pci_disable_acs_redir.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.47 = private unnamed_addr constant [52 x i8] c"\016PCI: Can't parse disable_acs_redir parameter: %s\0A\00", align 1
@.str.48 = private unnamed_addr constant [84 x i8] c"cannot disable ACS redirect for this hardware as it does not have ACS capabilities\0A\00", align 1
@.str.49 = private unnamed_addr constant [23 x i8] c"disabled ACS redirect\0A\00", align 1
@.str.50 = private unnamed_addr constant [5 x i8] c"pci:\00", align 1
@.str.51 = private unnamed_addr constant [18 x i8] c"%hx:%hx:%hx:%hx%n\00", align 1
@.str.52 = private unnamed_addr constant [10 x i8] c"%hx:%hx%n\00", align 1
@.str.53 = private unnamed_addr constant [9 x i8] c"/%x.%x%c\00", align 1
@.str.54 = private unnamed_addr constant [14 x i8] c"%x:%x:%x.%x%c\00", align 1
@.str.55 = private unnamed_addr constant [11 x i8] c"%x:%x.%x%c\00", align 1
@.str.56 = private unnamed_addr constant [40 x i8] c"Error enabling bridge (%d), continuing\0A\00", align 1
@.str.57 = private unnamed_addr constant [13 x i8] c"pcim_release\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.58 = private unnamed_addr constant [30 x i8] c"Unsupported EA entry BEI: %u\0A\00", align 1
@.str.59 = private unnamed_addr constant [32 x i8] c"Unsupported EA properties: %#x\0A\00", align 1
@.str.60 = private unnamed_addr constant [35 x i8] c"EA Entry crosses address boundary\0A\00", align 1
@.str.61 = private unnamed_addr constant [52 x i8] c"EA Entry Size (%d) does not match length read (%d)\0A\00", align 1
@.str.62 = private unnamed_addr constant [58 x i8] c"BAR %d: %pR (from Enhanced Allocation, properties %#02x)\0A\00", align 1
@.str.63 = private unnamed_addr constant [55 x i8] c"ROM: %pR (from Enhanced Allocation, properties %#02x)\0A\00", align 1
@.str.64 = private unnamed_addr constant [61 x i8] c"VF BAR %d: %pR (from Enhanced Allocation, properties %#02x)\0A\00", align 1
@.str.65 = private unnamed_addr constant [62 x i8] c"BEI %d res: %pR (from Enhanced Allocation, properties %#02x)\0A\00", align 1
@.str.66 = private unnamed_addr constant [27 x i8] c"BAR %d: can't reserve %pR\0A\00", align 1
@pci_lock = external dso_local global %struct.raw_spinlock, align 4
@.str.67 = private unnamed_addr constant [36 x i8] c"not ready %dms after %s; giving up\0A\00", align 1
@.str.68 = private unnamed_addr constant [34 x i8] c"not ready %dms after %s; waiting\0A\00", align 1
@.str.69 = private unnamed_addr constant [21 x i8] c"ready %dms after %s\0A\00", align 1
@dev_attr_reset_method = internal global %struct.device_attribute { %struct.attribute { ptr @.str.70, i16 420 }, ptr @reset_method_show, ptr @reset_method_store }, align 4
@.str.70 = private unnamed_addr constant [13 x i8] c"reset_method\00", align 1
@.str.71 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.72 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.73 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.74 = private unnamed_addr constant [42 x i8] c"All device reset methods disabled by user\00", align 1
@.str.75 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.76 = private unnamed_addr constant [26 x i8] c"Invalid reset method '%s'\00", align 1
@.str.77 = private unnamed_addr constant [30 x i8] c"Unsupported reset method '%s'\00", align 1
@.str.78 = private unnamed_addr constant [24 x i8] c"Too many reset methods\0A\00", align 1
@.str.79 = private unnamed_addr constant [54 x i8] c"Device-specific reset disabled/de-prioritized by user\00", align 1
@.str.80 = private unnamed_addr constant [16 x i8] c"device_specific\00", align 1
@.str.81 = private unnamed_addr constant [5 x i8] c"acpi\00", align 1
@.str.82 = private unnamed_addr constant [4 x i8] c"flr\00", align 1
@.str.83 = private unnamed_addr constant [7 x i8] c"af_flr\00", align 1
@.str.84 = private unnamed_addr constant [3 x i8] c"pm\00", align 1
@.str.85 = private unnamed_addr constant [4 x i8] c"bus\00", align 1
@.str.86 = private unnamed_addr constant [86 x i8] c"timed out waiting for pending transaction; performing AF function level reset anyway\0A\00", align 1
@.str.87 = private unnamed_addr constant [7 x i8] c"AF_FLR\00", align 1
@.str.88 = private unnamed_addr constant [13 x i8] c"PM D3hot->D0\00", align 1
@resource_alignment_lock = internal global %struct.spinlock zeroinitializer, align 4
@resource_alignment_param = internal unnamed_addr global ptr null, align 4
@pci_specified_resource_alignment.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.89 = private unnamed_addr constant [55 x i8] c"\016PCI: Ignoring requested alignments (PCI_PROBE_ONLY)\0A\00", align 1
@.str.90 = private unnamed_addr constant [5 x i8] c"%d%n\00", align 1
@.str.91 = private unnamed_addr constant [47 x i8] c"\013PCI: Invalid requested alignment (order %d)\0A\00", align 1
@.str.92 = private unnamed_addr constant [53 x i8] c"\013PCI: Can't parse resource_alignment parameter: %s\0A\00", align 1
@pci_flags = external dso_local local_unnamed_addr global i32, align 4
@.str.93 = private unnamed_addr constant [47 x i8] c"BAR%d %pR: ignoring requested alignment %#llx\0A\00", align 1
@.str.94 = private unnamed_addr constant [42 x i8] c"BAR%d %pR: requesting alignment to %#llx\0A\00", align 1
@pci_bus_type = external dso_local global %struct.bus_type, align 4
@bus_attr_resource_alignment = internal global %struct.bus_attribute { %struct.attribute { ptr @.str.95, i16 420 }, ptr @resource_alignment_show, ptr @resource_alignment_store }, align 4
@.str.95 = private unnamed_addr constant [19 x i8] c"resource_alignment\00", align 1
@.str.96 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@of_pci_bus_find_domain_nr.use_dt_domains = internal unnamed_addr global i32 -1, align 4
@.str.97 = private unnamed_addr constant [17 x i8] c"\013Node %pOF has \00", align 1
@.str.98 = private unnamed_addr constant [50 x i8] c"\013Inconsistent \22linux,pci-domain\22 property in DT\0A\00", align 1
@__domain_nr = internal global %struct.atomic_t { i32 -1 }, align 4
@.str.99 = private unnamed_addr constant [6 x i8] c"nomsi\00", align 1
@.str.100 = private unnamed_addr constant [6 x i8] c"noats\00", align 1
@.str.101 = private unnamed_addr constant [25 x i8] c"\016PCIe: ATS is disabled\0A\00", align 1
@.str.102 = private unnamed_addr constant [6 x i8] c"noaer\00", align 1
@.str.103 = private unnamed_addr constant [10 x i8] c"earlydump\00", align 1
@.str.104 = private unnamed_addr constant [9 x i8] c"realloc=\00", align 1
@.str.105 = private unnamed_addr constant [8 x i8] c"realloc\00", align 1
@.str.106 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.107 = private unnamed_addr constant [10 x i8] c"nodomains\00", align 1
@.str.108 = private unnamed_addr constant [6 x i8] c"noari\00", align 1
@.str.109 = private unnamed_addr constant [10 x i8] c"cbiosize=\00", align 1
@.str.110 = private unnamed_addr constant [11 x i8] c"cbmemsize=\00", align 1
@.str.111 = private unnamed_addr constant [20 x i8] c"resource_alignment=\00", align 1
@.str.112 = private unnamed_addr constant [6 x i8] c"ecrc=\00", align 1
@.str.113 = private unnamed_addr constant [10 x i8] c"hpiosize=\00", align 1
@.str.114 = private unnamed_addr constant [12 x i8] c"hpmmiosize=\00", align 1
@.str.115 = private unnamed_addr constant [16 x i8] c"hpmmioprefsize=\00", align 1
@.str.116 = private unnamed_addr constant [11 x i8] c"hpmemsize=\00", align 1
@.str.117 = private unnamed_addr constant [11 x i8] c"hpbussize=\00", align 1
@.str.118 = private unnamed_addr constant [18 x i8] c"pcie_bus_tune_off\00", align 1
@.str.119 = private unnamed_addr constant [14 x i8] c"pcie_bus_safe\00", align 1
@.str.120 = private unnamed_addr constant [14 x i8] c"pcie_bus_perf\00", align 1
@.str.121 = private unnamed_addr constant [19 x i8] c"pcie_bus_peer2peer\00", align 1
@.str.122 = private unnamed_addr constant [14 x i8] c"pcie_scan_all\00", align 1
@.str.123 = private unnamed_addr constant [19 x i8] c"disable_acs_redir=\00", align 1
@.str.124 = private unnamed_addr constant [28 x i8] c"\013PCI: Unknown option `%s'\0A\00", align 1
@llvm.compiler.used = appending global [104 x ptr] [ptr @__initcall__kmod_pci__236_6696_pci_resource_alignment_sysfs_init7, ptr @__initcall__kmod_pci__237_6871_pci_realloc_setup_params0, ptr @__ksymtab___pci_reset_function_locked, ptr @__ksymtab_devm_pci_remap_cfg_resource, ptr @__ksymtab_devm_pci_remap_cfgspace, ptr @__ksymtab_devm_pci_remap_iospace, ptr @__ksymtab_isa_dma_bridge_buggy, ptr @__ksymtab_pci_ats_disabled, ptr @__ksymtab_pci_back_from_sleep, ptr @__ksymtab_pci_bridge_secondary_bus_reset, ptr @__ksymtab_pci_bus_find_capability, ptr @__ksymtab_pci_bus_max_busnr, ptr @__ksymtab_pci_check_and_mask_intx, ptr @__ksymtab_pci_check_and_unmask_intx, ptr @__ksymtab_pci_choose_state, ptr @__ksymtab_pci_clear_master, ptr @__ksymtab_pci_clear_mwi, ptr @__ksymtab_pci_common_swizzle, ptr @__ksymtab_pci_d3cold_disable, ptr @__ksymtab_pci_d3cold_enable, ptr @__ksymtab_pci_dev_lock, ptr @__ksymtab_pci_dev_run_wake, ptr @__ksymtab_pci_dev_trylock, ptr @__ksymtab_pci_dev_unlock, ptr @__ksymtab_pci_device_is_present, ptr @__ksymtab_pci_disable_device, ptr @__ksymtab_pci_enable_atomic_ops_to_root, ptr @__ksymtab_pci_enable_device, ptr @__ksymtab_pci_enable_device_io, ptr @__ksymtab_pci_enable_device_mem, ptr @__ksymtab_pci_enable_wake, ptr @__ksymtab_pci_find_capability, ptr @__ksymtab_pci_find_dvsec_capability, ptr @__ksymtab_pci_find_ext_capability, ptr @__ksymtab_pci_find_ht_capability, ptr @__ksymtab_pci_find_next_capability, ptr @__ksymtab_pci_find_next_ext_capability, ptr @__ksymtab_pci_find_next_ht_capability, ptr @__ksymtab_pci_find_parent_resource, ptr @__ksymtab_pci_find_resource, ptr @__ksymtab_pci_find_vsec_capability, ptr @__ksymtab_pci_fixup_cardbus, ptr @__ksymtab_pci_get_dsn, ptr @__ksymtab_pci_ignore_hotplug, ptr @__ksymtab_pci_intx, ptr @__ksymtab_pci_ioremap_bar, ptr @__ksymtab_pci_ioremap_wc_bar, ptr @__ksymtab_pci_load_and_free_saved_state, ptr @__ksymtab_pci_load_saved_state, ptr @__ksymtab_pci_pci_problems, ptr @__ksymtab_pci_pio_to_address, ptr @__ksymtab_pci_platform_power_transition, ptr @__ksymtab_pci_pme_active, ptr @__ksymtab_pci_pme_capable, ptr @__ksymtab_pci_power_names, ptr @__ksymtab_pci_prepare_to_sleep, ptr @__ksymtab_pci_probe_reset_bus, ptr @__ksymtab_pci_probe_reset_slot, ptr @__ksymtab_pci_rebar_get_possible_sizes, ptr @__ksymtab_pci_reenable_device, ptr @__ksymtab_pci_release_region, ptr @__ksymtab_pci_release_regions, ptr @__ksymtab_pci_release_selected_regions, ptr @__ksymtab_pci_request_region, ptr @__ksymtab_pci_request_regions, ptr @__ksymtab_pci_request_regions_exclusive, ptr @__ksymtab_pci_request_selected_regions, ptr @__ksymtab_pci_request_selected_regions_exclusive, ptr @__ksymtab_pci_reset_bus, ptr @__ksymtab_pci_reset_function, ptr @__ksymtab_pci_reset_function_locked, ptr @__ksymtab_pci_restore_state, ptr @__ksymtab_pci_save_state, ptr @__ksymtab_pci_select_bars, ptr @__ksymtab_pci_set_cacheline_size, ptr @__ksymtab_pci_set_master, ptr @__ksymtab_pci_set_mwi, ptr @__ksymtab_pci_set_pcie_reset_state, ptr @__ksymtab_pci_set_power_state, ptr @__ksymtab_pci_status_get_and_clear_errors, ptr @__ksymtab_pci_store_saved_state, ptr @__ksymtab_pci_try_reset_function, ptr @__ksymtab_pci_try_set_mwi, ptr @__ksymtab_pci_unmap_iospace, ptr @__ksymtab_pci_wait_for_pending_transaction, ptr @__ksymtab_pci_wake_from_d3, ptr @__ksymtab_pcie_bandwidth_available, ptr @__ksymtab_pcie_flr, ptr @__ksymtab_pcie_get_mps, ptr @__ksymtab_pcie_get_readrq, ptr @__ksymtab_pcie_get_speed_cap, ptr @__ksymtab_pcie_get_width_cap, ptr @__ksymtab_pcie_print_link_status, ptr @__ksymtab_pcie_reset_flr, ptr @__ksymtab_pcie_set_mps, ptr @__ksymtab_pcie_set_readrq, ptr @__ksymtab_pcim_enable_device, ptr @__ksymtab_pcim_pin_device, ptr @__ksymtab_pcim_set_mwi, ptr @__ksymtab_pcix_get_max_mmrbc, ptr @__ksymtab_pcix_get_mmrbc, ptr @__ksymtab_pcix_set_mmrbc, ptr @__setup_pci_setup, ptr @__setup_pcie_port_pm_setup], section "llvm.metadata"
@switch.table.pci_ea_init = private unnamed_addr constant [5 x i32] [i32 560, i32 8752, i32 304, i32 8752, i32 560], align 4
@switch.table.pcie_set_mps = private unnamed_addr constant [9 x i32] [i32 -2, i32 -34, i32 -25, i32 -34, i32 -34, i32 -19, i32 -14, i32 -5, i32 -28], align 4
@switch.table.__pcie_print_link_status = private unnamed_addr constant [5 x i32] [i32 4000, i32 7876, i32 15753, i32 31507, i32 63015], align 4

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @pci_reset_supported(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 66
  %3 = load i8, ptr %2, align 4
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @pci_ats_disabled() #1 {
  %1 = load i1, ptr @pcie_ats_disabled, align 1
  ret i1 %1
}

; Function Attrs: cold mustprogress nofree nounwind null_pointer_is_valid optsize sspstrong willreturn uwtable(sync)
define internal i32 @pcie_port_pm_setup(ptr nocapture noundef readonly %0) #2 section ".init.text" {
  %2 = tail call i32 @strcmp(ptr noundef %0, ptr noundef nonnull dereferenceable(4) @.str.39)
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = tail call i32 @strcmp(ptr noundef %0, ptr noundef nonnull dereferenceable(6) @.str.40)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %4, %1
  %8 = phi ptr [ @pci_bridge_d3_disable, %1 ], [ @pci_bridge_d3_force, %4 ]
  store i1 true, ptr %8, align 1
  br label %9

9:                                                ; preds = %7, %4
  ret i32 1
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local zeroext i8 @pci_bus_max_busnr(ptr noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 8, i32 1
  %3 = load i32, ptr %2, align 4
  %4 = trunc i32 %3 to i8
  %5 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, %5
  br i1 %7, label %15, label %8

8:                                                ; preds = %8, %1
  %9 = phi ptr [ %13, %8 ], [ %6, %1 ]
  %10 = phi i8 [ %12, %8 ], [ %4, %1 ]
  %11 = tail call zeroext i8 @pci_bus_max_busnr(ptr noundef %9)
  %12 = tail call i8 @llvm.umax.i8(i8 %11, i8 %10)
  %13 = load ptr, ptr %9, align 4
  %14 = icmp eq ptr %13, %5
  br i1 %14, label %15, label %8

15:                                               ; preds = %8, %1
  %16 = phi i8 [ %4, %1 ], [ %12, %8 ]
  ret i8 %16
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pci_status_get_and_clear_errors(ptr noundef %0) #5 {
  %2 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #25
  store i16 0, ptr %2, align 2, !annotation !8
  %3 = call i32 @pci_read_config_word(ptr noundef %0, i32 noundef 6, ptr noundef nonnull %2) #25
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %13

5:                                                ; preds = %1
  %6 = load i16, ptr %2, align 2
  %7 = and i16 %6, -1792
  store i16 %7, ptr %2, align 2
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = call i32 @pci_write_config_word(ptr noundef %0, i32 noundef 6, i16 noundef zeroext %7) #25
  %11 = load i16, ptr %2, align 2
  %12 = zext i16 %11 to i32
  br label %13

13:                                               ; preds = %9, %5, %1
  %14 = phi i32 [ -5, %1 ], [ %12, %9 ], [ 0, %5 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #25
  ret i32 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_word(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @pci_ioremap_bar(ptr noundef %0, i32 noundef %1) #5 {
  %3 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 %1
  %4 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 %1, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 536871424
  %7 = icmp eq i32 %6, 512
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.41, i32 noundef %1, ptr noundef %3) #26
  br label %17

10:                                               ; preds = %2
  %11 = load i32, ptr %3, align 4
  %12 = sub i32 1, %11
  %13 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 %1, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = add i32 %12, %14
  %16 = tail call ptr @ioremap(i32 noundef %11, i32 noundef %15) #25
  br label %17

17:                                               ; preds = %10, %8
  %18 = phi ptr [ null, %8 ], [ %16, %10 ]
  ret ptr %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @pci_ioremap_wc_bar(ptr noundef %0, i32 noundef %1) #5 {
  %3 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 %1
  %4 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 %1, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 536871424
  %7 = icmp eq i32 %6, 512
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.41, i32 noundef %1, ptr noundef %3) #26
  br label %17

10:                                               ; preds = %2
  %11 = load i32, ptr %3, align 4
  %12 = sub i32 1, %11
  %13 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 %1, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = add i32 %12, %14
  %16 = tail call ptr @ioremap_wc(i32 noundef %11, i32 noundef %15) #25
  br label %17

17:                                               ; preds = %10, %8
  %18 = phi ptr [ null, %8 ], [ %16, %10 ]
  ret ptr %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i8 @pci_find_next_capability(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i32 noundef %2) #5 {
  %4 = alloca i8, align 1
  %5 = alloca i16, align 2
  %6 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 6
  %9 = load i32, ptr %8, align 4
  %10 = add i8 %1, 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #25
  store i8 %10, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #25
  store i16 0, ptr %5, align 2, !annotation !8
  %11 = zext i8 %10 to i32
  %12 = call i32 @pci_bus_read_config_byte(ptr noundef %7, i32 noundef %9, i32 noundef %11, ptr noundef nonnull %4) #25
  %13 = load i8, ptr %4, align 1
  %14 = icmp ult i8 %13, 64
  br i1 %14, label %36, label %15

15:                                               ; preds = %29, %3
  %16 = phi i32 [ %32, %29 ], [ 47, %3 ]
  %17 = phi i8 [ %31, %29 ], [ %13, %3 ]
  %18 = and i8 %17, -4
  store i8 %18, ptr %4, align 1
  %19 = zext i8 %18 to i32
  %20 = call i32 @pci_bus_read_config_word(ptr noundef %7, i32 noundef %9, i32 noundef %19, ptr noundef nonnull %5) #25
  %21 = load i16, ptr %5, align 2
  %22 = and i16 %21, 255
  %23 = icmp eq i16 %22, 255
  br i1 %23, label %36, label %24

24:                                               ; preds = %15
  %25 = zext i16 %22 to i32
  %26 = icmp eq i32 %25, %2
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = load i8, ptr %4, align 1
  br label %36

29:                                               ; preds = %24
  %30 = lshr i16 %21, 8
  %31 = trunc i16 %30 to i8
  store i8 %31, ptr %4, align 1
  %32 = add nsw i32 %16, -1
  %33 = icmp eq i32 %16, 0
  %34 = icmp ult i8 %31, 64
  %35 = select i1 %33, i1 true, i1 %34
  br i1 %35, label %36, label %15

36:                                               ; preds = %29, %27, %15, %3
  %37 = phi i8 [ %28, %27 ], [ 0, %3 ], [ 0, %29 ], [ 0, %15 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #25
  ret i8 %37
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i8 @pci_find_capability(ptr nocapture noundef readonly %0, i32 noundef %1) #5 {
  %3 = alloca i8, align 1
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  %6 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 6
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 13
  %11 = load i8, ptr %10, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #25
  store i16 0, ptr %5, align 2, !annotation !8
  %12 = call i32 @pci_bus_read_config_word(ptr noundef %7, i32 noundef %9, i32 noundef 6, ptr noundef nonnull %5) #25
  %13 = load i16, ptr %5, align 2
  %14 = and i16 %13, 16
  %15 = icmp ne i16 %14, 0
  %16 = icmp ult i8 %11, 3
  %17 = select i1 %15, i1 %16, i1 false
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #25
  br label %54

19:                                               ; preds = %2
  %20 = zext i8 %11 to i24
  %21 = shl nuw nsw i24 %20, 3
  %22 = lshr i24 1324084, %21
  %23 = trunc i24 %22 to i8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #25
  %24 = load ptr, ptr %6, align 8
  %25 = load i32, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #25
  store i8 %23, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #25
  store i16 0, ptr %4, align 2, !annotation !8
  %26 = and i24 %22, 255
  %27 = zext i24 %26 to i32
  %28 = call i32 @pci_bus_read_config_byte(ptr noundef %24, i32 noundef %25, i32 noundef %27, ptr noundef nonnull %3) #25
  %29 = load i8, ptr %3, align 1
  %30 = icmp ult i8 %29, 64
  br i1 %30, label %52, label %31

31:                                               ; preds = %45, %19
  %32 = phi i32 [ %48, %45 ], [ 47, %19 ]
  %33 = phi i8 [ %47, %45 ], [ %29, %19 ]
  %34 = and i8 %33, -4
  store i8 %34, ptr %3, align 1
  %35 = zext i8 %34 to i32
  %36 = call i32 @pci_bus_read_config_word(ptr noundef %24, i32 noundef %25, i32 noundef %35, ptr noundef nonnull %4) #25
  %37 = load i16, ptr %4, align 2
  %38 = and i16 %37, 255
  %39 = icmp eq i16 %38, 255
  br i1 %39, label %52, label %40

40:                                               ; preds = %31
  %41 = zext i16 %38 to i32
  %42 = icmp eq i32 %41, %1
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = load i8, ptr %3, align 1
  br label %52

45:                                               ; preds = %40
  %46 = lshr i16 %37, 8
  %47 = trunc i16 %46 to i8
  store i8 %47, ptr %3, align 1
  %48 = add nsw i32 %32, -1
  %49 = icmp eq i32 %32, 0
  %50 = icmp ult i8 %47, 64
  %51 = select i1 %49, i1 true, i1 %50
  br i1 %51, label %52, label %31

52:                                               ; preds = %45, %43, %31, %19
  %53 = phi i8 [ %44, %43 ], [ 0, %19 ], [ 0, %45 ], [ 0, %31 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #25
  br label %54

54:                                               ; preds = %52, %18
  %55 = phi i8 [ %53, %52 ], [ 0, %18 ]
  ret i8 %55
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i8 @pci_bus_find_capability(ptr noundef %0, i32 noundef %1, i32 noundef %2) #5 {
  %4 = alloca i8, align 1
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #25
  store i8 0, ptr %7, align 1, !annotation !8
  %8 = call i32 @pci_bus_read_config_byte(ptr noundef %0, i32 noundef %1, i32 noundef 14, ptr noundef nonnull %7) #25
  %9 = load i8, ptr %7, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #25
  store i16 0, ptr %6, align 2, !annotation !8
  %10 = call i32 @pci_bus_read_config_word(ptr noundef %0, i32 noundef %1, i32 noundef 6, ptr noundef nonnull %6) #25
  %11 = load i16, ptr %6, align 2
  %12 = and i16 %11, 16
  %13 = icmp ne i16 %12, 0
  %14 = trunc i8 %9 to i7
  %15 = icmp ult i7 %14, 3
  %16 = select i1 %13, i1 %15, i1 false
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #25
  br label %52

18:                                               ; preds = %3
  %19 = and i8 %9, 127
  %20 = zext i8 %19 to i24
  %21 = shl nuw nsw i24 %20, 3
  %22 = lshr i24 1324084, %21
  %23 = trunc i24 %22 to i8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #25
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #25
  store i8 %23, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #25
  store i16 0, ptr %5, align 2, !annotation !8
  %24 = and i24 %22, 255
  %25 = zext i24 %24 to i32
  %26 = call i32 @pci_bus_read_config_byte(ptr noundef %0, i32 noundef %1, i32 noundef %25, ptr noundef nonnull %4) #25
  %27 = load i8, ptr %4, align 1
  %28 = icmp ult i8 %27, 64
  br i1 %28, label %50, label %29

29:                                               ; preds = %43, %18
  %30 = phi i32 [ %46, %43 ], [ 47, %18 ]
  %31 = phi i8 [ %45, %43 ], [ %27, %18 ]
  %32 = and i8 %31, -4
  store i8 %32, ptr %4, align 1
  %33 = zext i8 %32 to i32
  %34 = call i32 @pci_bus_read_config_word(ptr noundef %0, i32 noundef %1, i32 noundef %33, ptr noundef nonnull %5) #25
  %35 = load i16, ptr %5, align 2
  %36 = and i16 %35, 255
  %37 = icmp eq i16 %36, 255
  br i1 %37, label %50, label %38

38:                                               ; preds = %29
  %39 = zext i16 %36 to i32
  %40 = icmp eq i32 %39, %2
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = load i8, ptr %4, align 1
  br label %50

43:                                               ; preds = %38
  %44 = lshr i16 %35, 8
  %45 = trunc i16 %44 to i8
  store i8 %45, ptr %4, align 1
  %46 = add nsw i32 %30, -1
  %47 = icmp eq i32 %30, 0
  %48 = icmp ult i8 %45, 64
  %49 = select i1 %47, i1 true, i1 %48
  br i1 %49, label %50, label %29

50:                                               ; preds = %43, %41, %29, %18
  %51 = phi i8 [ %42, %41 ], [ 0, %18 ], [ 0, %43 ], [ 0, %29 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #25
  br label %52

52:                                               ; preds = %50, %17
  %53 = phi i8 [ %51, %50 ], [ 0, %17 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #25
  ret i8 %53
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_bus_read_config_byte(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i16 @pci_find_next_ext_capability(ptr noundef %0, i16 noundef zeroext %1, i32 noundef %2) #5 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #25
  store i32 0, ptr %4, align 4, !annotation !8
  %5 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 45
  %6 = load i32, ptr %5, align 8
  %7 = icmp slt i32 %6, 257
  br i1 %7, label %37, label %8

8:                                                ; preds = %3
  %9 = icmp eq i16 %1, 0
  %10 = select i1 %9, i16 256, i16 %1
  %11 = zext i16 %10 to i32
  %12 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef %11, ptr noundef nonnull %4) #25
  %13 = icmp ne i32 %12, 0
  %14 = load i32, ptr %4, align 4
  %15 = icmp eq i32 %14, 0
  %16 = select i1 %13, i1 true, i1 %15
  br i1 %16, label %37, label %17

17:                                               ; preds = %33, %8
  %18 = phi i32 [ %20, %33 ], [ 480, %8 ]
  %19 = phi i16 [ %31, %33 ], [ %10, %8 ]
  %20 = add nsw i32 %18, -1
  %21 = icmp eq i32 %18, 0
  br i1 %21, label %37, label %22

22:                                               ; preds = %17
  %23 = load i32, ptr %4, align 4
  %24 = and i32 %23, 65535
  %25 = icmp ne i32 %24, %2
  %26 = icmp eq i16 %19, %1
  %27 = select i1 %25, i1 true, i1 %26
  br i1 %27, label %28, label %37

28:                                               ; preds = %22
  %29 = lshr i32 %23, 20
  %30 = trunc i32 %29 to i16
  %31 = and i16 %30, 4092
  %32 = icmp ult i16 %31, 256
  br i1 %32, label %37, label %33

33:                                               ; preds = %28
  %34 = zext i16 %31 to i32
  %35 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef %34, ptr noundef nonnull %4) #25
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %17, label %37

37:                                               ; preds = %33, %28, %22, %17, %8, %3
  %38 = phi i16 [ 0, %3 ], [ 0, %8 ], [ 0, %17 ], [ 0, %28 ], [ 0, %33 ], [ %19, %22 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #25
  ret i16 %38
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i16 @pci_find_ext_capability(ptr noundef %0, i32 noundef %1) #5 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #25
  store i32 0, ptr %3, align 4, !annotation !8
  %4 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 45
  %5 = load i32, ptr %4, align 8
  %6 = icmp slt i32 %5, 257
  br i1 %6, label %34, label %7

7:                                                ; preds = %2
  %8 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef 256, ptr noundef nonnull %3) #25
  %9 = icmp ne i32 %8, 0
  %10 = load i32, ptr %3, align 4
  %11 = icmp eq i32 %10, 0
  %12 = select i1 %9, i1 true, i1 %11
  br i1 %12, label %34, label %13

13:                                               ; preds = %7
  %14 = and i32 %10, 65535
  %15 = icmp eq i32 %14, %1
  br i1 %15, label %34, label %21

16:                                               ; preds = %28
  %17 = add nsw i32 %22, -1
  %18 = load i32, ptr %3, align 4
  %19 = and i32 %18, 65535
  %20 = icmp eq i32 %19, %1
  br i1 %20, label %34, label %21

21:                                               ; preds = %16, %13
  %22 = phi i32 [ %17, %16 ], [ 479, %13 ]
  %23 = phi i32 [ %18, %16 ], [ %10, %13 ]
  %24 = lshr i32 %23, 20
  %25 = trunc i32 %24 to i16
  %26 = and i16 %25, 4092
  %27 = icmp ult i16 %26, 256
  br i1 %27, label %34, label %28

28:                                               ; preds = %21
  %29 = zext i16 %26 to i32
  %30 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef %29, ptr noundef nonnull %3) #25
  %31 = icmp ne i32 %30, 0
  %32 = icmp eq i32 %22, 0
  %33 = select i1 %31, i1 true, i1 %32
  br i1 %33, label %34, label %16

34:                                               ; preds = %28, %21, %16, %13, %7, %2
  %35 = phi i16 [ 0, %2 ], [ 0, %7 ], [ 256, %13 ], [ %26, %16 ], [ 0, %21 ], [ 0, %28 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #25
  ret i16 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i64 @pci_get_dsn(ptr noundef %0) #5 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #25
  store i32 0, ptr %3, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #25
  store i32 0, ptr %2, align 4, !annotation !8
  %4 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 45
  %5 = load i32, ptr %4, align 8
  %6 = icmp slt i32 %5, 257
  br i1 %6, label %34, label %7

7:                                                ; preds = %1
  %8 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef 256, ptr noundef nonnull %2) #25
  %9 = icmp ne i32 %8, 0
  %10 = load i32, ptr %2, align 4
  %11 = icmp eq i32 %10, 0
  %12 = select i1 %9, i1 true, i1 %11
  br i1 %12, label %34, label %13

13:                                               ; preds = %7
  %14 = and i32 %10, 65535
  %15 = icmp eq i32 %14, 3
  br i1 %15, label %35, label %21

16:                                               ; preds = %28
  %17 = add nsw i32 %22, -1
  %18 = load i32, ptr %2, align 4
  %19 = and i32 %18, 65535
  %20 = icmp eq i32 %19, 3
  br i1 %20, label %35, label %21

21:                                               ; preds = %16, %13
  %22 = phi i32 [ %17, %16 ], [ 479, %13 ]
  %23 = phi i32 [ %18, %16 ], [ %10, %13 ]
  %24 = lshr i32 %23, 20
  %25 = trunc i32 %24 to i16
  %26 = and i16 %25, 4092
  %27 = icmp ult i16 %26, 256
  br i1 %27, label %34, label %28

28:                                               ; preds = %21
  %29 = zext i16 %26 to i32
  %30 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef %29, ptr noundef nonnull %2) #25
  %31 = icmp ne i32 %30, 0
  %32 = icmp eq i32 %22, 0
  %33 = select i1 %31, i1 true, i1 %32
  br i1 %33, label %34, label %16

34:                                               ; preds = %28, %21, %7, %1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #25
  br label %47

35:                                               ; preds = %16, %13
  %36 = phi i32 [ 256, %13 ], [ %29, %16 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #25
  %37 = add nuw nsw i32 %36, 4
  %38 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef %37, ptr noundef nonnull %3) #25
  %39 = load i32, ptr %3, align 4
  %40 = zext i32 %39 to i64
  %41 = add nuw nsw i32 %36, 8
  %42 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef %41, ptr noundef nonnull %3) #25
  %43 = load i32, ptr %3, align 4
  %44 = zext i32 %43 to i64
  %45 = shl nuw i64 %44, 32
  %46 = or i64 %45, %40
  br label %47

47:                                               ; preds = %35, %34
  %48 = phi i64 [ %46, %35 ], [ 0, %34 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #25
  ret i64 %48
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i8 @pci_find_next_ht_capability(ptr noundef %0, i8 noundef zeroext %1, i32 noundef %2) #5 {
  %4 = add i8 %1, 1
  %5 = tail call fastcc zeroext i8 @__pci_find_next_ht_cap(ptr noundef %0, i8 noundef zeroext %4, i32 noundef %2)
  ret i8 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i8 @__pci_find_next_ht_cap(ptr noundef %0, i8 noundef zeroext %1, i32 noundef %2) unnamed_addr #5 {
  %4 = alloca i8, align 1
  %5 = alloca i16, align 2
  %6 = alloca i8, align 1
  %7 = alloca i16, align 2
  %8 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #25
  store i8 0, ptr %8, align 1, !annotation !8
  %9 = and i32 %2, -33
  %10 = icmp eq i32 %9, 0
  %11 = select i1 %10, i32 224, i32 248
  %12 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 1
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 6
  %15 = load i32, ptr %14, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6)
  store i8 %1, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #25
  store i16 0, ptr %7, align 2, !annotation !8
  %16 = zext i8 %1 to i32
  %17 = call i32 @pci_bus_read_config_byte(ptr noundef %13, i32 noundef %15, i32 noundef %16, ptr noundef nonnull %6) #25
  %18 = load i8, ptr %6, align 1
  %19 = icmp ult i8 %18, 64
  br i1 %19, label %35, label %20

20:                                               ; preds = %28, %3
  %21 = phi i32 [ %31, %28 ], [ 47, %3 ]
  %22 = phi i8 [ %30, %28 ], [ %18, %3 ]
  %23 = and i8 %22, -4
  store i8 %23, ptr %6, align 1
  %24 = zext i8 %23 to i32
  %25 = call i32 @pci_bus_read_config_word(ptr noundef %13, i32 noundef %15, i32 noundef %24, ptr noundef nonnull %7) #25
  %26 = load i16, ptr %7, align 2
  %27 = trunc i16 %26 to i8
  switch i8 %27, label %28 [
    i8 -1, label %35
    i8 8, label %36
  ]

28:                                               ; preds = %20
  %29 = lshr i16 %26, 8
  %30 = trunc i16 %29 to i8
  store i8 %30, ptr %6, align 1
  %31 = add nsw i32 %21, -1
  %32 = icmp eq i32 %21, 0
  %33 = icmp ult i8 %30, 64
  %34 = select i1 %32, i1 true, i1 %33
  br i1 %34, label %35, label %20

35:                                               ; preds = %28, %20, %3
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6)
  br label %80

36:                                               ; preds = %20
  %37 = load i8, ptr %6, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6)
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %80, label %39

39:                                               ; preds = %77, %36
  %40 = phi i8 [ %78, %77 ], [ %37, %36 ]
  %41 = phi i32 [ %64, %77 ], [ %21, %36 ]
  %42 = zext i8 %40 to i32
  %43 = add nuw nsw i32 %42, 3
  %44 = call i32 @pci_read_config_byte(ptr noundef %0, i32 noundef %43, ptr noundef nonnull %8) #25
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %80

46:                                               ; preds = %39
  %47 = load i8, ptr %8, align 1
  %48 = zext i8 %47 to i32
  %49 = and i32 %11, %48
  %50 = icmp eq i32 %49, %2
  br i1 %50, label %80, label %51

51:                                               ; preds = %46
  %52 = load ptr, ptr %12, align 8
  %53 = load i32, ptr %14, align 4
  %54 = add i8 %40, 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4)
  store i8 %54, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #25
  store i16 0, ptr %5, align 2, !annotation !8
  %55 = zext i8 %54 to i32
  %56 = call i32 @pci_bus_read_config_byte(ptr noundef %52, i32 noundef %53, i32 noundef %55, ptr noundef nonnull %4) #25
  %57 = icmp eq i32 %41, 0
  %58 = load i8, ptr %4, align 1
  %59 = icmp ult i8 %58, 64
  %60 = select i1 %57, i1 true, i1 %59
  br i1 %60, label %76, label %61

61:                                               ; preds = %70, %51
  %62 = phi i32 [ %64, %70 ], [ %41, %51 ]
  %63 = phi i8 [ %72, %70 ], [ %58, %51 ]
  %64 = add i32 %62, -1
  %65 = and i8 %63, -4
  store i8 %65, ptr %4, align 1
  %66 = zext i8 %65 to i32
  %67 = call i32 @pci_bus_read_config_word(ptr noundef %52, i32 noundef %53, i32 noundef %66, ptr noundef nonnull %5) #25
  %68 = load i16, ptr %5, align 2
  %69 = trunc i16 %68 to i8
  switch i8 %69, label %70 [
    i8 -1, label %76
    i8 8, label %77
  ]

70:                                               ; preds = %61
  %71 = lshr i16 %68, 8
  %72 = trunc i16 %71 to i8
  store i8 %72, ptr %4, align 1
  %73 = icmp eq i32 %64, 0
  %74 = icmp ult i8 %72, 64
  %75 = select i1 %73, i1 true, i1 %74
  br i1 %75, label %76, label %61

76:                                               ; preds = %70, %61, %51
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4)
  br label %80

77:                                               ; preds = %61
  %78 = load i8, ptr %4, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4)
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %80, label %39

80:                                               ; preds = %77, %76, %46, %39, %36, %35
  %81 = phi i8 [ 0, %36 ], [ 0, %35 ], [ 0, %76 ], [ 0, %77 ], [ %40, %46 ], [ 0, %39 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #25
  ret i8 %81
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i8 @pci_find_ht_capability(ptr noundef %0, i32 noundef %1) #5 {
  %3 = alloca i16, align 2
  %4 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 6
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 13
  %9 = load i8, ptr %8, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #25
  store i16 0, ptr %3, align 2, !annotation !8
  %10 = call i32 @pci_bus_read_config_word(ptr noundef %5, i32 noundef %7, i32 noundef 6, ptr noundef nonnull %3) #25
  %11 = load i16, ptr %3, align 2
  %12 = and i16 %11, 16
  %13 = icmp ne i16 %12, 0
  %14 = icmp ult i8 %9, 3
  %15 = select i1 %13, i1 %14, i1 false
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #25
  br label %23

17:                                               ; preds = %2
  %18 = zext i8 %9 to i24
  %19 = shl nuw nsw i24 %18, 3
  %20 = lshr i24 1324084, %19
  %21 = trunc i24 %20 to i8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #25
  %22 = call fastcc zeroext i8 @__pci_find_next_ht_cap(ptr noundef %0, i8 noundef zeroext %21, i32 noundef %1)
  br label %23

23:                                               ; preds = %17, %16
  %24 = phi i8 [ %22, %17 ], [ 0, %16 ]
  ret i8 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i16 @pci_find_vsec_capability(ptr noundef %0, i16 noundef zeroext %1, i32 noundef %2) #5 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #25
  store i32 0, ptr %5, align 4, !annotation !8
  %6 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 7
  %7 = load i16, ptr %6, align 8
  %8 = icmp eq i16 %7, %1
  br i1 %8, label %9, label %56

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 45
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #25
  store i32 0, ptr %4, align 4, !annotation !8
  %11 = load i32, ptr %10, align 8
  %12 = icmp slt i32 %11, 257
  br i1 %12, label %43, label %13

13:                                               ; preds = %53, %9
  %14 = phi i16 [ %25, %53 ], [ 0, %9 ]
  %15 = icmp eq i16 %14, 0
  %16 = select i1 %15, i16 256, i16 %14
  %17 = zext i16 %16 to i32
  %18 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef %17, ptr noundef nonnull %4) #25
  %19 = icmp ne i32 %18, 0
  %20 = load i32, ptr %4, align 4
  %21 = icmp eq i32 %20, 0
  %22 = select i1 %19, i1 true, i1 %21
  br i1 %22, label %43, label %23

23:                                               ; preds = %39, %13
  %24 = phi i32 [ %26, %39 ], [ 480, %13 ]
  %25 = phi i16 [ %37, %39 ], [ %16, %13 ]
  %26 = add nsw i32 %24, -1
  %27 = icmp eq i32 %24, 0
  br i1 %27, label %43, label %28

28:                                               ; preds = %23
  %29 = load i32, ptr %4, align 4
  %30 = and i32 %29, 65535
  %31 = icmp ne i32 %30, 11
  %32 = icmp eq i16 %25, %14
  %33 = select i1 %31, i1 true, i1 %32
  br i1 %33, label %34, label %44

34:                                               ; preds = %28
  %35 = lshr i32 %29, 20
  %36 = trunc i32 %35 to i16
  %37 = and i16 %36, 4092
  %38 = icmp ult i16 %37, 256
  br i1 %38, label %43, label %39

39:                                               ; preds = %34
  %40 = zext i16 %37 to i32
  %41 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef %40, ptr noundef nonnull %4) #25
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %23, label %43

43:                                               ; preds = %53, %39, %34, %23, %13, %9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #25
  br label %56

44:                                               ; preds = %28
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #25
  %45 = zext i16 %25 to i32
  %46 = add nuw nsw i32 %45, 4
  %47 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef %46, ptr noundef nonnull %5) #25
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %44
  %50 = load i32, ptr %5, align 4
  %51 = and i32 %50, 65535
  %52 = icmp eq i32 %51, %2
  br i1 %52, label %56, label %53

53:                                               ; preds = %49, %44
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #25
  store i32 0, ptr %4, align 4, !annotation !8
  %54 = load i32, ptr %10, align 8
  %55 = icmp slt i32 %54, 257
  br i1 %55, label %43, label %13

56:                                               ; preds = %49, %43, %3
  %57 = phi i16 [ 0, %3 ], [ 0, %43 ], [ %25, %49 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #25
  ret i16 %57
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i16 @pci_find_dvsec_capability(ptr noundef %0, i16 noundef zeroext %1, i16 noundef zeroext %2) #5 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #25
  store i32 0, ptr %5, align 4, !annotation !8
  %8 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 45
  %9 = load i32, ptr %8, align 8
  %10 = icmp slt i32 %9, 257
  br i1 %10, label %38, label %11

11:                                               ; preds = %3
  %12 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef 256, ptr noundef nonnull %5) #25
  %13 = icmp ne i32 %12, 0
  %14 = load i32, ptr %5, align 4
  %15 = icmp eq i32 %14, 0
  %16 = select i1 %13, i1 true, i1 %15
  br i1 %16, label %38, label %17

17:                                               ; preds = %11
  %18 = and i32 %14, 65535
  %19 = icmp eq i32 %18, 35
  br i1 %19, label %39, label %25

20:                                               ; preds = %32
  %21 = add nsw i32 %26, -1
  %22 = load i32, ptr %5, align 4
  %23 = and i32 %22, 65535
  %24 = icmp eq i32 %23, 35
  br i1 %24, label %39, label %25

25:                                               ; preds = %20, %17
  %26 = phi i32 [ %21, %20 ], [ 479, %17 ]
  %27 = phi i32 [ %22, %20 ], [ %14, %17 ]
  %28 = lshr i32 %27, 20
  %29 = trunc i32 %28 to i16
  %30 = and i16 %29, 4092
  %31 = icmp ult i16 %30, 256
  br i1 %31, label %38, label %32

32:                                               ; preds = %25
  %33 = zext i16 %30 to i32
  %34 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef %33, ptr noundef nonnull %5) #25
  %35 = icmp ne i32 %34, 0
  %36 = icmp eq i32 %26, 0
  %37 = select i1 %35, i1 true, i1 %36
  br i1 %37, label %38, label %20

38:                                               ; preds = %32, %25, %11, %3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #25
  br label %90

39:                                               ; preds = %20, %17
  %40 = phi i32 [ 256, %17 ], [ %33, %20 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #25
  br label %41

41:                                               ; preds = %87, %39
  %42 = phi i32 [ %40, %39 ], [ %88, %87 ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #25
  store i16 0, ptr %6, align 2, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #25
  store i16 0, ptr %7, align 2, !annotation !8
  %43 = add nuw nsw i32 %42, 4
  %44 = call i32 @pci_read_config_word(ptr noundef %0, i32 noundef %43, ptr noundef nonnull %6) #25
  %45 = add nuw nsw i32 %42, 8
  %46 = call i32 @pci_read_config_word(ptr noundef %0, i32 noundef %45, ptr noundef nonnull %7) #25
  %47 = load i16, ptr %6, align 2
  %48 = icmp eq i16 %47, %1
  %49 = load i16, ptr %7, align 2
  %50 = icmp eq i16 %49, %2
  %51 = select i1 %48, i1 %50, i1 false
  %52 = trunc i32 %42 to i16
  br i1 %51, label %53, label %55

53:                                               ; preds = %41
  %54 = trunc i32 %42 to i16
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #25
  br label %90

55:                                               ; preds = %41
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #25
  store i32 0, ptr %4, align 4, !annotation !8
  %56 = load i32, ptr %8, align 8
  %57 = icmp slt i32 %56, 257
  br i1 %57, label %89, label %58

58:                                               ; preds = %55
  %59 = icmp eq i16 %52, 0
  %60 = select i1 %59, i16 256, i16 %52
  %61 = zext i16 %60 to i32
  %62 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef %61, ptr noundef nonnull %4) #25
  %63 = icmp ne i32 %62, 0
  %64 = load i32, ptr %4, align 4
  %65 = icmp eq i32 %64, 0
  %66 = select i1 %63, i1 true, i1 %65
  br i1 %66, label %89, label %67

67:                                               ; preds = %83, %58
  %68 = phi i32 [ %70, %83 ], [ 480, %58 ]
  %69 = phi i16 [ %81, %83 ], [ %60, %58 ]
  %70 = add nsw i32 %68, -1
  %71 = icmp eq i32 %68, 0
  br i1 %71, label %89, label %72

72:                                               ; preds = %67
  %73 = load i32, ptr %4, align 4
  %74 = and i32 %73, 65535
  %75 = icmp ne i32 %74, 35
  %76 = icmp eq i16 %69, %52
  %77 = select i1 %75, i1 true, i1 %76
  br i1 %77, label %78, label %87

78:                                               ; preds = %72
  %79 = lshr i32 %73, 20
  %80 = trunc i32 %79 to i16
  %81 = and i16 %80, 4092
  %82 = icmp ult i16 %81, 256
  br i1 %82, label %89, label %83

83:                                               ; preds = %78
  %84 = zext i16 %81 to i32
  %85 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef %84, ptr noundef nonnull %4) #25
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %67, label %89

87:                                               ; preds = %72
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #25
  %88 = zext i16 %69 to i32
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #25
  br label %41

89:                                               ; preds = %83, %78, %67, %58, %55
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #25
  br label %90

90:                                               ; preds = %89, %53, %38
  %91 = phi i16 [ 0, %38 ], [ %54, %53 ], [ 0, %89 ]
  ret i16 %91
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @pci_find_parent_resource(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #5 {
  %3 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = tail call ptr @pci_bus_resource_n(ptr noundef %4, i32 noundef 0) #25
  %6 = icmp ne ptr %5, null
  %7 = getelementptr inbounds %struct.resource, ptr %1, i32 0, i32 3
  %8 = getelementptr inbounds %struct.resource, ptr %1, i32 0, i32 1
  br label %9

9:                                                ; preds = %41, %2
  %10 = phi i1 [ %6, %2 ], [ %44, %41 ]
  %11 = phi ptr [ %5, %2 ], [ %43, %41 ]
  %12 = phi i32 [ 0, %2 ], [ %42, %41 ]
  br i1 %10, label %13, label %41

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.resource, ptr %11, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = load i32, ptr %7, align 4
  %17 = xor i32 %16, %15
  %18 = and i32 %17, 7936
  %19 = and i32 %15, 536870912
  %20 = or i32 %18, %19
  %21 = icmp eq i32 %20, 0
  %22 = and i32 %16, 536870912
  %23 = icmp eq i32 %22, 0
  %24 = select i1 %21, i1 %23, i1 false
  br i1 %24, label %25, label %41

25:                                               ; preds = %13
  %26 = load i32, ptr %11, align 4
  %27 = load i32, ptr %1, align 4
  %28 = icmp ugt i32 %26, %27
  br i1 %28, label %41, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.resource, ptr %11, i32 0, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = load i32, ptr %8, align 4
  %33 = icmp ult i32 %31, %32
  br i1 %33, label %41, label %34

34:                                               ; preds = %29
  %35 = and i32 %15, 8192
  %36 = icmp ne i32 %35, 0
  %37 = and i32 %16, 8192
  %38 = icmp eq i32 %37, 0
  %39 = select i1 %36, i1 %38, i1 false
  %40 = select i1 %39, ptr null, ptr %11
  br label %47

41:                                               ; preds = %29, %25, %13, %9
  %42 = add i32 %12, 1
  %43 = tail call ptr @pci_bus_resource_n(ptr noundef %4, i32 noundef %42) #25
  %44 = icmp ne ptr %43, null
  %45 = icmp slt i32 %42, 4
  %46 = or i1 %45, %44
  br i1 %46, label %9, label %47

47:                                               ; preds = %41, %34
  %48 = phi ptr [ %40, %34 ], [ null, %41 ]
  ret ptr %48
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_bus_resource_n(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local ptr @pci_find_resource(ptr noundef readonly %0, ptr nocapture noundef readonly %1) #7 {
  %3 = getelementptr inbounds %struct.resource, ptr %1, i32 0, i32 3
  %4 = getelementptr inbounds %struct.resource, ptr %1, i32 0, i32 1
  %5 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 0
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %28, label %8

8:                                                ; preds = %2
  %9 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = load i32, ptr %3, align 4
  %12 = xor i32 %11, %10
  %13 = and i32 %12, 7936
  %14 = and i32 %10, 536870912
  %15 = or i32 %13, %14
  %16 = icmp eq i32 %15, 0
  %17 = and i32 %11, 536870912
  %18 = icmp eq i32 %17, 0
  %19 = select i1 %16, i1 %18, i1 false
  br i1 %19, label %20, label %28

20:                                               ; preds = %8
  %21 = load i32, ptr %1, align 4
  %22 = icmp ugt i32 %6, %21
  br i1 %22, label %28, label %23

23:                                               ; preds = %20
  %24 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 0, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = load i32, ptr %4, align 4
  %27 = icmp ult i32 %25, %26
  br i1 %27, label %28, label %149

28:                                               ; preds = %23, %20, %8, %2
  %29 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %52, label %32

32:                                               ; preds = %28
  %33 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 1, i32 3
  %34 = load i32, ptr %33, align 4
  %35 = load i32, ptr %3, align 4
  %36 = xor i32 %35, %34
  %37 = and i32 %36, 7936
  %38 = and i32 %34, 536870912
  %39 = or i32 %37, %38
  %40 = icmp eq i32 %39, 0
  %41 = and i32 %35, 536870912
  %42 = icmp eq i32 %41, 0
  %43 = select i1 %40, i1 %42, i1 false
  br i1 %43, label %44, label %52

44:                                               ; preds = %32
  %45 = load i32, ptr %1, align 4
  %46 = icmp ugt i32 %30, %45
  br i1 %46, label %52, label %47

47:                                               ; preds = %44
  %48 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 1, i32 1
  %49 = load i32, ptr %48, align 4
  %50 = load i32, ptr %4, align 4
  %51 = icmp ult i32 %49, %50
  br i1 %51, label %52, label %149

52:                                               ; preds = %47, %44, %32, %28
  %53 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 2
  %54 = load i32, ptr %53, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %76, label %56

56:                                               ; preds = %52
  %57 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 2, i32 3
  %58 = load i32, ptr %57, align 4
  %59 = load i32, ptr %3, align 4
  %60 = xor i32 %59, %58
  %61 = and i32 %60, 7936
  %62 = and i32 %58, 536870912
  %63 = or i32 %61, %62
  %64 = icmp eq i32 %63, 0
  %65 = and i32 %59, 536870912
  %66 = icmp eq i32 %65, 0
  %67 = select i1 %64, i1 %66, i1 false
  br i1 %67, label %68, label %76

68:                                               ; preds = %56
  %69 = load i32, ptr %1, align 4
  %70 = icmp ugt i32 %54, %69
  br i1 %70, label %76, label %71

71:                                               ; preds = %68
  %72 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 2, i32 1
  %73 = load i32, ptr %72, align 4
  %74 = load i32, ptr %4, align 4
  %75 = icmp ult i32 %73, %74
  br i1 %75, label %76, label %149

76:                                               ; preds = %71, %68, %56, %52
  %77 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 3
  %78 = load i32, ptr %77, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %100, label %80

80:                                               ; preds = %76
  %81 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 3, i32 3
  %82 = load i32, ptr %81, align 4
  %83 = load i32, ptr %3, align 4
  %84 = xor i32 %83, %82
  %85 = and i32 %84, 7936
  %86 = and i32 %82, 536870912
  %87 = or i32 %85, %86
  %88 = icmp eq i32 %87, 0
  %89 = and i32 %83, 536870912
  %90 = icmp eq i32 %89, 0
  %91 = select i1 %88, i1 %90, i1 false
  br i1 %91, label %92, label %100

92:                                               ; preds = %80
  %93 = load i32, ptr %1, align 4
  %94 = icmp ugt i32 %78, %93
  br i1 %94, label %100, label %95

95:                                               ; preds = %92
  %96 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 3, i32 1
  %97 = load i32, ptr %96, align 4
  %98 = load i32, ptr %4, align 4
  %99 = icmp ult i32 %97, %98
  br i1 %99, label %100, label %149

100:                                              ; preds = %95, %92, %80, %76
  %101 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 4
  %102 = load i32, ptr %101, align 4
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %124, label %104

104:                                              ; preds = %100
  %105 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 4, i32 3
  %106 = load i32, ptr %105, align 4
  %107 = load i32, ptr %3, align 4
  %108 = xor i32 %107, %106
  %109 = and i32 %108, 7936
  %110 = and i32 %106, 536870912
  %111 = or i32 %109, %110
  %112 = icmp eq i32 %111, 0
  %113 = and i32 %107, 536870912
  %114 = icmp eq i32 %113, 0
  %115 = select i1 %112, i1 %114, i1 false
  br i1 %115, label %116, label %124

116:                                              ; preds = %104
  %117 = load i32, ptr %1, align 4
  %118 = icmp ugt i32 %102, %117
  br i1 %118, label %124, label %119

119:                                              ; preds = %116
  %120 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 4, i32 1
  %121 = load i32, ptr %120, align 4
  %122 = load i32, ptr %4, align 4
  %123 = icmp ult i32 %121, %122
  br i1 %123, label %124, label %149

124:                                              ; preds = %119, %116, %104, %100
  %125 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 5
  %126 = load i32, ptr %125, align 4
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %148, label %128

128:                                              ; preds = %124
  %129 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 5, i32 3
  %130 = load i32, ptr %129, align 4
  %131 = load i32, ptr %3, align 4
  %132 = xor i32 %131, %130
  %133 = and i32 %132, 7936
  %134 = and i32 %130, 536870912
  %135 = or i32 %133, %134
  %136 = icmp eq i32 %135, 0
  %137 = and i32 %131, 536870912
  %138 = icmp eq i32 %137, 0
  %139 = select i1 %136, i1 %138, i1 false
  br i1 %139, label %140, label %148

140:                                              ; preds = %128
  %141 = load i32, ptr %1, align 4
  %142 = icmp ugt i32 %126, %141
  br i1 %142, label %148, label %143

143:                                              ; preds = %140
  %144 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 5, i32 1
  %145 = load i32, ptr %144, align 4
  %146 = load i32, ptr %4, align 4
  %147 = icmp ult i32 %145, %146
  br i1 %147, label %148, label %149

148:                                              ; preds = %143, %140, %128, %124
  br label %149

149:                                              ; preds = %148, %143, %119, %95, %71, %47, %23
  %150 = phi ptr [ %5, %23 ], [ %29, %47 ], [ %53, %71 ], [ %77, %95 ], [ %101, %119 ], [ %125, %143 ], [ null, %148 ]
  ret ptr %150
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pci_wait_for_pending(ptr noundef %0, i32 noundef %1, i16 noundef zeroext %2) local_unnamed_addr #5 {
  %4 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #25
  store i16 0, ptr %4, align 2, !annotation !8
  %5 = call i32 @pci_read_config_word(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %4) #25
  %6 = load i16, ptr %4, align 2
  %7 = and i16 %6, %2
  %8 = icmp eq i16 %7, 0
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #25
  br i1 %8, label %25, label %9

9:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #25
  store i16 0, ptr %4, align 2, !annotation !8
  call void @msleep(i32 noundef 100) #25
  %10 = call i32 @pci_read_config_word(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %4) #25
  %11 = load i16, ptr %4, align 2
  %12 = and i16 %11, %2
  %13 = icmp eq i16 %12, 0
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #25
  br i1 %13, label %25, label %14

14:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #25
  store i16 0, ptr %4, align 2, !annotation !8
  call void @msleep(i32 noundef 200) #25
  %15 = call i32 @pci_read_config_word(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %4) #25
  %16 = load i16, ptr %4, align 2
  %17 = and i16 %16, %2
  %18 = icmp eq i16 %17, 0
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #25
  br i1 %18, label %25, label %19

19:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #25
  store i16 0, ptr %4, align 2, !annotation !8
  call void @msleep(i32 noundef 400) #25
  %20 = call i32 @pci_read_config_word(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %4) #25
  %21 = load i16, ptr %4, align 2
  %22 = and i16 %21, %2
  %23 = icmp eq i16 %22, 0
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #25
  %24 = zext i1 %23 to i32
  br label %25

25:                                               ; preds = %19, %14, %9, %3
  %26 = phi i32 [ 1, %3 ], [ 1, %9 ], [ 1, %14 ], [ %24, %19 ]
  ret i32 %26
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local void @pci_request_acs() local_unnamed_addr #8 {
  store i1 true, ptr @pci_acs_enable, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pci_update_current_state(ptr noundef %0, i32 noundef %1) local_unnamed_addr #5 {
  %3 = alloca i32, align 4
  %4 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #25
  store i32 0, ptr %3, align 4, !annotation !8
  %5 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 43
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 3
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #25
  br label %15

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 6
  %13 = load i32, ptr %12, align 4
  %14 = call zeroext i1 @pci_bus_read_dev_vendor_id(ptr noundef %11, i32 noundef %13, ptr noundef nonnull %3, i32 noundef 0) #25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #25
  br i1 %14, label %17, label %15

15:                                               ; preds = %9, %8
  %16 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 30
  store i32 4, ptr %16, align 4
  br label %31

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 32
  %19 = load i8, ptr %18, align 1
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %29, label %21

21:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #25
  store i16 0, ptr %4, align 2, !annotation !8
  %22 = zext i8 %19 to i32
  %23 = add nuw nsw i32 %22, 4
  %24 = call i32 @pci_read_config_word(ptr noundef %0, i32 noundef %23, ptr noundef nonnull %4) #25
  %25 = load i16, ptr %4, align 2
  %26 = and i16 %25, 3
  %27 = zext i16 %26 to i32
  %28 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 30
  store i32 %27, ptr %28, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #25
  br label %31

29:                                               ; preds = %17
  %30 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 30
  store i32 %1, ptr %30, align 4
  br label %31

31:                                               ; preds = %29, %21, %15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @pci_device_is_present(ptr nocapture noundef readonly %0) #5 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #25
  store i32 0, ptr %2, align 4, !annotation !8
  %3 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 43
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 3
  br i1 %5, label %12, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 6
  %10 = load i32, ptr %9, align 4
  %11 = call zeroext i1 @pci_bus_read_dev_vendor_id(ptr noundef %8, i32 noundef %10, ptr noundef nonnull %2, i32 noundef 0) #25
  br label %12

12:                                               ; preds = %6, %1
  %13 = phi i1 [ %11, %6 ], [ false, %1 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #25
  ret i1 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pci_refresh_power_state(ptr noundef %0) local_unnamed_addr #5 {
  %2 = alloca i32, align 4
  %3 = alloca i16, align 2
  %4 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 30
  %5 = load i32, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #25
  store i32 0, ptr %2, align 4, !annotation !8
  %6 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 43
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 3
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #25
  br label %16

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 1
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 6
  %14 = load i32, ptr %13, align 4
  %15 = call zeroext i1 @pci_bus_read_dev_vendor_id(ptr noundef %12, i32 noundef %14, ptr noundef nonnull %2, i32 noundef 0) #25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #25
  br i1 %15, label %17, label %16

16:                                               ; preds = %10, %9
  store i32 4, ptr %4, align 4
  br label %29

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 32
  %19 = load i8, ptr %18, align 1
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #25
  store i16 0, ptr %3, align 2, !annotation !8
  %22 = zext i8 %19 to i32
  %23 = add nuw nsw i32 %22, 4
  %24 = call i32 @pci_read_config_word(ptr noundef %0, i32 noundef %23, ptr noundef nonnull %3) #25
  %25 = load i16, ptr %3, align 2
  %26 = and i16 %25, 3
  %27 = zext i16 %26 to i32
  store i32 %27, ptr %4, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #25
  br label %29

28:                                               ; preds = %17
  store i32 %5, ptr %4, align 4
  br label %29

29:                                               ; preds = %28, %21, %16
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @pci_platform_power_transition(ptr nocapture noundef %0, i32 %1) #9 {
  %3 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 32
  %4 = load i8, ptr %3, align 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 30
  store i32 0, ptr %7, align 4
  br label %8

8:                                                ; preds = %6, %2
  ret i32 -19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pci_resume_bus(ptr noundef %0) local_unnamed_addr #5 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %1
  tail call void @pci_walk_bus(ptr noundef nonnull %0, ptr noundef nonnull @pci_resume_one, ptr noundef null) #25
  br label %4

4:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_walk_bus(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pci_resume_one(ptr noundef %0, ptr nocapture noundef readnone %1) #5 {
  %3 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  %4 = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 1) #25
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pci_power_up(ptr noundef %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 32
  %3 = load i8, ptr %2, align 1
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 30
  store i32 0, ptr %6, align 4
  br label %7

7:                                                ; preds = %5, %1
  %8 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 33
  %9 = load i32, ptr %8, align 2
  %10 = and i32 %9, 16384
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  tail call void @pci_walk_bus(ptr noundef nonnull %14, ptr noundef nonnull @pci_resume_one, ptr noundef null) #25
  br label %17

17:                                               ; preds = %16, %12, %7
  %18 = tail call fastcc i32 @pci_raw_set_power_state(ptr noundef %0, i32 noundef 0)
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @pci_raw_set_power_state(ptr noundef %0, i32 noundef %1) unnamed_addr #5 {
  %3 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #25
  store i16 0, ptr %3, align 2, !annotation !8
  %4 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 30
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, %1
  br i1 %6, label %116, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 32
  %9 = load i8, ptr %8, align 1
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %116, label %11

11:                                               ; preds = %7
  %12 = icmp sgt i32 %1, 3
  br i1 %12, label %116, label %13

13:                                               ; preds = %11
  %14 = icmp ne i32 %1, 0
  %15 = icmp slt i32 %5, 5
  %16 = select i1 %14, i1 %15, i1 false
  %17 = icmp sgt i32 %5, %1
  %18 = select i1 %16, i1 %17, i1 false
  br i1 %18, label %19, label %27

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  %21 = add nsw i32 %5, 1
  %22 = getelementptr [0 x ptr], ptr @pci_power_names, i32 0, i32 %21
  %23 = load ptr, ptr %22, align 4
  %24 = add nsw i32 %1, 1
  %25 = getelementptr [0 x ptr], ptr @pci_power_names, i32 0, i32 %24
  %26 = load ptr, ptr %25, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.42, ptr noundef %23, ptr noundef %26) #26
  br label %116

27:                                               ; preds = %13
  switch i32 %1, label %38 [
    i32 1, label %28
    i32 2, label %33
  ]

28:                                               ; preds = %27
  %29 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 33
  %30 = load i32, ptr %29, align 2
  %31 = and i32 %30, 64
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %116, label %38

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 33
  %35 = load i32, ptr %34, align 2
  %36 = and i32 %35, 128
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %116, label %38

38:                                               ; preds = %33, %28, %27
  %39 = phi i1 [ true, %33 ], [ false, %28 ], [ false, %27 ]
  %40 = zext i8 %9 to i32
  %41 = add nuw nsw i32 %40, 4
  %42 = call i32 @pci_read_config_word(ptr noundef %0, i32 noundef %41, ptr noundef nonnull %3) #25
  %43 = load i16, ptr %3, align 2
  %44 = icmp eq i16 %43, -1
  br i1 %44, label %45, label %54

45:                                               ; preds = %38
  %46 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  %47 = load i32, ptr %4, align 4
  %48 = add i32 %47, 1
  %49 = getelementptr [0 x ptr], ptr @pci_power_names, i32 0, i32 %48
  %50 = load ptr, ptr %49, align 4
  %51 = add nsw i32 %1, 1
  %52 = getelementptr [0 x ptr], ptr @pci_power_names, i32 0, i32 %51
  %53 = load ptr, ptr %52, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %46, ptr noundef nonnull @.str.43, ptr noundef %50, ptr noundef %53) #26
  br label %116

54:                                               ; preds = %38
  %55 = load i32, ptr %4, align 4
  switch i32 %55, label %63 [
    i32 0, label %56
    i32 1, label %56
    i32 2, label %56
    i32 3, label %60
    i32 4, label %60
    i32 5, label %60
  ]

56:                                               ; preds = %54, %54, %54
  %57 = and i16 %43, -4
  %58 = trunc i32 %1 to i16
  %59 = or i16 %57, %58
  br label %63

60:                                               ; preds = %54, %54, %54
  %61 = and i16 %43, 11
  %62 = icmp eq i16 %61, 3
  br label %63

63:                                               ; preds = %60, %56, %54
  %64 = phi i16 [ %59, %56 ], [ 0, %54 ], [ 0, %60 ]
  %65 = phi i1 [ false, %56 ], [ false, %54 ], [ %62, %60 ]
  store i16 %64, ptr %3, align 2
  %66 = load i8, ptr %8, align 1
  %67 = zext i8 %66 to i32
  %68 = add nuw nsw i32 %67, 4
  %69 = call i32 @pci_write_config_word(ptr noundef %0, i32 noundef %68, i16 noundef zeroext %64) #25
  %70 = icmp eq i32 %1, 3
  br i1 %70, label %74, label %71

71:                                               ; preds = %63
  %72 = load i32, ptr %4, align 4
  %73 = icmp eq i32 %72, 3
  br i1 %73, label %74, label %81

74:                                               ; preds = %71, %63
  %75 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 35
  %76 = load i32, ptr %75, align 8
  %77 = load i32, ptr @pci_pm_d3hot_delay, align 4
  %78 = call i32 @llvm.umax.i32(i32 %76, i32 %77) #25
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %86, label %80

80:                                               ; preds = %74
  call void @msleep(i32 noundef %78) #25
  br label %86

81:                                               ; preds = %71
  %82 = icmp eq i32 %72, 2
  %83 = select i1 %39, i1 true, i1 %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %81
  %85 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %85(i32 noundef 42949600) #25
  br label %86

86:                                               ; preds = %84, %81, %80, %74
  %87 = load i8, ptr %8, align 1
  %88 = zext i8 %87 to i32
  %89 = add nuw nsw i32 %88, 4
  %90 = call i32 @pci_read_config_word(ptr noundef %0, i32 noundef %89, ptr noundef nonnull %3) #25
  %91 = load i16, ptr %3, align 2
  %92 = and i16 %91, 3
  %93 = zext i16 %92 to i32
  store i32 %93, ptr %4, align 4
  %94 = icmp eq i32 %93, %1
  br i1 %94, label %107, label %95

95:                                               ; preds = %86
  %96 = call i32 @___ratelimit(ptr noundef nonnull @pci_raw_set_power_state._rs, ptr noundef nonnull @__func__.pci_raw_set_power_state) #25
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %107, label %98

98:                                               ; preds = %95
  %99 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  %100 = load i32, ptr %4, align 4
  %101 = add i32 %100, 1
  %102 = getelementptr [0 x ptr], ptr @pci_power_names, i32 0, i32 %101
  %103 = load ptr, ptr %102, align 4
  %104 = add nsw i32 %1, 1
  %105 = getelementptr [0 x ptr], ptr @pci_power_names, i32 0, i32 %104
  %106 = load ptr, ptr %105, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %99, ptr noundef nonnull @.str.44, ptr noundef %103, ptr noundef %106) #26
  br label %107

107:                                              ; preds = %98, %95, %86
  br i1 %65, label %108, label %109

108:                                              ; preds = %107
  call void @pci_update_resource(ptr noundef %0, i32 noundef 0) #25
  call void @pci_update_resource(ptr noundef %0, i32 noundef 1) #25
  call void @pci_update_resource(ptr noundef %0, i32 noundef 2) #25
  call void @pci_update_resource(ptr noundef %0, i32 noundef 3) #25
  call void @pci_update_resource(ptr noundef %0, i32 noundef 4) #25
  call void @pci_update_resource(ptr noundef %0, i32 noundef 5) #25
  call void @pci_update_resource(ptr noundef %0, i32 noundef 6) #25
  br label %109

109:                                              ; preds = %108, %107
  %110 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 1
  %111 = load ptr, ptr %110, align 8
  %112 = getelementptr inbounds %struct.pci_bus, ptr %111, i32 0, i32 4
  %113 = load ptr, ptr %112, align 4
  %114 = icmp eq ptr %113, null
  br i1 %114, label %116, label %115

115:                                              ; preds = %109
  call void @pcie_aspm_pm_state_change(ptr noundef nonnull %113) #25
  br label %116

116:                                              ; preds = %115, %109, %45, %33, %28, %19, %11, %7, %2
  %117 = phi i32 [ -22, %19 ], [ -5, %45 ], [ 0, %2 ], [ -5, %7 ], [ -22, %11 ], [ -5, %33 ], [ -5, %28 ], [ 0, %115 ], [ 0, %109 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #25
  ret i32 %117
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pci_bus_set_current_state(ptr noundef %0, i32 noundef %1) local_unnamed_addr #5 {
  %3 = alloca i32, align 4
  store i32 %1, ptr %3, align 4
  %4 = icmp eq ptr %0, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %2
  call void @pci_walk_bus(ptr noundef nonnull %0, ptr noundef nonnull @__pci_dev_set_current_state, ptr noundef nonnull %3) #25
  br label %6

6:                                                ; preds = %5, %2
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @__pci_dev_set_current_state(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) #9 {
  %3 = load i32, ptr %1, align 4
  %4 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 30
  store i32 %3, ptr %4, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pci_set_power_state(ptr noundef %0, i32 noundef %1) #5 {
  %3 = icmp sgt i32 %1, 4
  br i1 %3, label %35, label %4

4:                                                ; preds = %2
  %5 = icmp slt i32 %1, 0
  br i1 %5, label %31, label %6

6:                                                ; preds = %4
  %7 = add nsw i32 %1, -1
  %8 = icmp ult i32 %7, 2
  br i1 %8, label %9, label %27

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.pci_bus, ptr %11, i32 0, i32 4
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 33
  %17 = load i32, ptr %16, align 2
  %18 = and i32 %17, 256
  %19 = icmp ne i32 %18, 0
  br label %20

20:                                               ; preds = %15, %9
  %21 = phi i1 [ %19, %15 ], [ false, %9 ]
  %22 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 33
  %23 = load i32, ptr %22, align 2
  %24 = and i32 %23, 256
  %25 = icmp ne i32 %24, 0
  %26 = select i1 %25, i1 true, i1 %21
  br i1 %26, label %77, label %27

27:                                               ; preds = %20, %6
  %28 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 30
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %29, %1
  br i1 %30, label %77, label %39

31:                                               ; preds = %4
  %32 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 30
  %33 = load i32, ptr %32, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %77, label %41

35:                                               ; preds = %2
  %36 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 30
  %37 = load i32, ptr %36, align 4
  %38 = icmp eq i32 %37, 4
  br i1 %38, label %77, label %61

39:                                               ; preds = %27
  %40 = icmp eq i32 %1, 0
  br i1 %40, label %41, label %59

41:                                               ; preds = %39, %31
  %42 = phi ptr [ %28, %39 ], [ %32, %31 ]
  %43 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 32
  %44 = load i8, ptr %43, align 1
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  store i32 0, ptr %42, align 4
  br label %47

47:                                               ; preds = %46, %41
  %48 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 33
  %49 = load i32, ptr %48, align 2
  %50 = and i32 %49, 16384
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 2
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %52
  tail call void @pci_walk_bus(ptr noundef nonnull %54, ptr noundef nonnull @pci_resume_one, ptr noundef null) #25
  br label %57

57:                                               ; preds = %56, %52, %47
  %58 = tail call fastcc i32 @pci_raw_set_power_state(ptr noundef %0, i32 noundef 0) #25
  br label %77

59:                                               ; preds = %39
  %60 = icmp ugt i32 %1, 2
  br i1 %60, label %61, label %68

61:                                               ; preds = %59, %35
  %62 = phi ptr [ %28, %59 ], [ %36, %35 ]
  %63 = phi i32 [ %1, %59 ], [ 4, %35 ]
  %64 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 50
  %65 = load i16, ptr %64, align 2
  %66 = and i16 %65, 2
  %67 = icmp eq i16 %66, 0
  br i1 %67, label %68, label %77

68:                                               ; preds = %61, %59
  %69 = phi ptr [ %62, %61 ], [ %28, %59 ]
  %70 = phi i32 [ %63, %61 ], [ %1, %59 ]
  %71 = tail call i32 @llvm.smin.i32(i32 %70, i32 3)
  %72 = tail call fastcc i32 @pci_raw_set_power_state(ptr noundef %0, i32 noundef %71)
  %73 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 32
  %74 = load i8, ptr %73, align 1
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %68
  store i32 0, ptr %69, align 4
  br label %77

77:                                               ; preds = %76, %68, %61, %57, %35, %31, %27, %20
  %78 = phi i32 [ %58, %57 ], [ 0, %20 ], [ 0, %27 ], [ 0, %61 ], [ 0, %35 ], [ %72, %68 ], [ %72, %76 ], [ 0, %31 ]
  ret i32 %78
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local ptr @pci_find_saved_cap(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) local_unnamed_addr #10 {
  %3 = zext i8 %1 to i16
  %4 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 53
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %19, label %7

7:                                                ; preds = %16, %2
  %8 = phi ptr [ %17, %16 ], [ %5, %2 ]
  %9 = getelementptr inbounds %struct.pci_cap_saved_state, ptr %8, i32 0, i32 1, i32 1
  %10 = load i8, ptr %9, align 2, !range !9
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.pci_cap_saved_state, ptr %8, i32 0, i32 1
  %14 = load i16, ptr %13, align 4
  %15 = icmp eq i16 %14, %3
  br i1 %15, label %19, label %16

16:                                               ; preds = %12, %7
  %17 = load ptr, ptr %8, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %7

19:                                               ; preds = %16, %12, %2
  %20 = phi ptr [ null, %2 ], [ %8, %12 ], [ null, %16 ]
  ret ptr %20
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local ptr @pci_find_saved_ext_cap(ptr nocapture noundef readonly %0, i16 noundef zeroext %1) local_unnamed_addr #10 {
  %3 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 53
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %18, label %6

6:                                                ; preds = %15, %2
  %7 = phi ptr [ %16, %15 ], [ %4, %2 ]
  %8 = getelementptr inbounds %struct.pci_cap_saved_state, ptr %7, i32 0, i32 1, i32 1
  %9 = load i8, ptr %8, align 2, !range !9
  %10 = icmp eq i8 %9, 1
  br i1 %10, label %11, label %15

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.pci_cap_saved_state, ptr %7, i32 0, i32 1
  %13 = load i16, ptr %12, align 4
  %14 = icmp eq i16 %13, %1
  br i1 %14, label %18, label %15

15:                                               ; preds = %11, %6
  %16 = load ptr, ptr %7, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %6

18:                                               ; preds = %15, %11, %2
  %19 = phi ptr [ null, %2 ], [ %7, %11 ], [ null, %15 ]
  ret ptr %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pci_bridge_reconfigure_ltr(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #25
  store i32 0, ptr %2, align 4, !annotation !8
  %3 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.pci_bus, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %24, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.pci_bus, ptr %4, i32 0, i32 4
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %24, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 38
  %14 = load i8, ptr %13, align 4
  %15 = and i8 %14, 1
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %12
  %18 = call i32 @pcie_capability_read_dword(ptr noundef nonnull %10, i32 noundef 40, ptr noundef nonnull %2) #25
  %19 = load i32, ptr %2, align 4
  %20 = and i32 %19, 1024
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = call i32 @pcie_capability_clear_and_set_word(ptr noundef nonnull %10, i32 noundef 40, i16 noundef zeroext 0, i16 noundef zeroext 1024) #25
  br label %24

24:                                               ; preds = %22, %17, %12, %8, %1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #25
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcie_capability_read_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pci_save_state(ptr noundef %0) #5 {
  %2 = alloca i32, align 4
  %3 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 52, i32 0
  %4 = tail call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef 0, ptr noundef %3) #25
  %5 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 52, i32 1
  %6 = tail call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef 4, ptr noundef %5) #25
  %7 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 52, i32 2
  %8 = tail call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef 8, ptr noundef %7) #25
  %9 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 52, i32 3
  %10 = tail call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef 12, ptr noundef %9) #25
  %11 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 52, i32 4
  %12 = tail call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef 16, ptr noundef %11) #25
  %13 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 52, i32 5
  %14 = tail call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef 20, ptr noundef %13) #25
  %15 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 52, i32 6
  %16 = tail call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef 24, ptr noundef %15) #25
  %17 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 52, i32 7
  %18 = tail call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef 28, ptr noundef %17) #25
  %19 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 52, i32 8
  %20 = tail call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef 32, ptr noundef %19) #25
  %21 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 52, i32 9
  %22 = tail call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef 36, ptr noundef %21) #25
  %23 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 52, i32 10
  %24 = tail call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef 40, ptr noundef %23) #25
  %25 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 52, i32 11
  %26 = tail call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef 44, ptr noundef %25) #25
  %27 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 52, i32 12
  %28 = tail call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef 48, ptr noundef %27) #25
  %29 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 52, i32 13
  %30 = tail call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef 52, ptr noundef %29) #25
  %31 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 52, i32 14
  %32 = tail call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef 56, ptr noundef %31) #25
  %33 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 52, i32 15
  %34 = tail call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef 60, ptr noundef %33) #25
  %35 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 49
  %36 = load i40, ptr %35, align 1
  %37 = or i40 %36, 2097152
  store i40 %37, ptr %35, align 1
  %38 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 18
  %39 = load i8, ptr %38, align 4
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %74, label %41

41:                                               ; preds = %1
  %42 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 53
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %72, label %45

45:                                               ; preds = %54, %41
  %46 = phi ptr [ %55, %54 ], [ %43, %41 ]
  %47 = getelementptr inbounds %struct.pci_cap_saved_state, ptr %46, i32 0, i32 1, i32 1
  %48 = load i8, ptr %47, align 2, !range !9
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.pci_cap_saved_state, ptr %46, i32 0, i32 1
  %52 = load i16, ptr %51, align 4
  %53 = icmp eq i16 %52, 16
  br i1 %53, label %57, label %54

54:                                               ; preds = %50, %45
  %55 = load ptr, ptr %46, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %72, label %45

57:                                               ; preds = %50
  %58 = getelementptr inbounds %struct.pci_cap_saved_state, ptr %46, i32 1
  %59 = tail call i32 @pcie_capability_read_word(ptr noundef %0, i32 noundef 8, ptr noundef %58) #25
  %60 = getelementptr i16, ptr %58, i32 1
  %61 = tail call i32 @pcie_capability_read_word(ptr noundef %0, i32 noundef 16, ptr noundef %60) #25
  %62 = getelementptr %struct.pci_cap_saved_state, ptr %46, i32 1, i32 0, i32 1
  %63 = tail call i32 @pcie_capability_read_word(ptr noundef %0, i32 noundef 24, ptr noundef %62) #25
  %64 = getelementptr i16, ptr %58, i32 3
  %65 = tail call i32 @pcie_capability_read_word(ptr noundef %0, i32 noundef 28, ptr noundef %64) #25
  %66 = getelementptr %struct.pci_cap_saved_state, ptr %46, i32 1, i32 1
  %67 = tail call i32 @pcie_capability_read_word(ptr noundef %0, i32 noundef 40, ptr noundef %66) #25
  %68 = getelementptr %struct.pci_cap_saved_state, ptr %46, i32 1, i32 1, i32 1
  %69 = tail call i32 @pcie_capability_read_word(ptr noundef %0, i32 noundef 48, ptr noundef %68) #25
  %70 = getelementptr %struct.pci_cap_saved_state, ptr %46, i32 1, i32 1, i32 2
  %71 = tail call i32 @pcie_capability_read_word(ptr noundef %0, i32 noundef 56, ptr noundef %70) #25
  br label %74

72:                                               ; preds = %54, %41
  %73 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %73, ptr noundef nonnull @.str.45, ptr noundef nonnull @__func__.pci_save_pcie_state) #26
  br label %162

74:                                               ; preds = %57, %1
  %75 = tail call zeroext i8 @pci_find_capability(ptr noundef %0, i32 noundef 7) #25
  %76 = zext i8 %75 to i32
  %77 = icmp eq i8 %75, 0
  br i1 %77, label %100, label %78

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 53
  %80 = load ptr, ptr %79, align 4
  %81 = icmp eq ptr %80, null
  br i1 %81, label %98, label %82

82:                                               ; preds = %91, %78
  %83 = phi ptr [ %92, %91 ], [ %80, %78 ]
  %84 = getelementptr inbounds %struct.pci_cap_saved_state, ptr %83, i32 0, i32 1, i32 1
  %85 = load i8, ptr %84, align 2, !range !9
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %82
  %88 = getelementptr inbounds %struct.pci_cap_saved_state, ptr %83, i32 0, i32 1
  %89 = load i16, ptr %88, align 4
  %90 = icmp eq i16 %89, 7
  br i1 %90, label %94, label %91

91:                                               ; preds = %87, %82
  %92 = load ptr, ptr %83, align 4
  %93 = icmp eq ptr %92, null
  br i1 %93, label %98, label %82

94:                                               ; preds = %87
  %95 = add nuw nsw i32 %76, 2
  %96 = getelementptr inbounds %struct.pci_cap_saved_state, ptr %83, i32 1
  %97 = tail call i32 @pci_read_config_word(ptr noundef %0, i32 noundef %95, ptr noundef %96) #25
  br label %100

98:                                               ; preds = %91, %78
  %99 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %99, ptr noundef nonnull @.str.45, ptr noundef nonnull @__func__.pci_save_pcix_state) #26
  br label %162

100:                                              ; preds = %94, %74
  %101 = load i8, ptr %38, align 4
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %160, label %103

103:                                              ; preds = %100
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #25
  store i32 0, ptr %2, align 4, !annotation !8
  %104 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 45
  %105 = load i32, ptr %104, align 8
  %106 = icmp slt i32 %105, 257
  br i1 %106, label %134, label %107

107:                                              ; preds = %103
  %108 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef 256, ptr noundef nonnull %2) #25
  %109 = icmp ne i32 %108, 0
  %110 = load i32, ptr %2, align 4
  %111 = icmp eq i32 %110, 0
  %112 = select i1 %109, i1 true, i1 %111
  br i1 %112, label %134, label %113

113:                                              ; preds = %107
  %114 = and i32 %110, 65535
  %115 = icmp eq i32 %114, 24
  br i1 %115, label %138, label %121

116:                                              ; preds = %128
  %117 = add nsw i32 %122, -1
  %118 = load i32, ptr %2, align 4
  %119 = and i32 %118, 65535
  %120 = icmp eq i32 %119, 24
  br i1 %120, label %135, label %121

121:                                              ; preds = %116, %113
  %122 = phi i32 [ %117, %116 ], [ 479, %113 ]
  %123 = phi i32 [ %118, %116 ], [ %110, %113 ]
  %124 = lshr i32 %123, 20
  %125 = trunc i32 %124 to i16
  %126 = and i16 %125, 4092
  %127 = icmp ult i16 %126, 256
  br i1 %127, label %134, label %128

128:                                              ; preds = %121
  %129 = zext i16 %126 to i32
  %130 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef %129, ptr noundef nonnull %2) #25
  %131 = icmp ne i32 %130, 0
  %132 = icmp eq i32 %122, 0
  %133 = select i1 %131, i1 true, i1 %132
  br i1 %133, label %134, label %116

134:                                              ; preds = %128, %121, %107, %103
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #25
  br label %160

135:                                              ; preds = %116
  %136 = add nuw nsw i16 %126, 4
  %137 = zext i16 %136 to i32
  br label %138

138:                                              ; preds = %135, %113
  %139 = phi i32 [ %137, %135 ], [ 260, %113 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #25
  %140 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 53
  %141 = load ptr, ptr %140, align 4
  %142 = icmp eq ptr %141, null
  br i1 %142, label %155, label %143

143:                                              ; preds = %152, %138
  %144 = phi ptr [ %153, %152 ], [ %141, %138 ]
  %145 = getelementptr inbounds %struct.pci_cap_saved_state, ptr %144, i32 0, i32 1, i32 1
  %146 = load i8, ptr %145, align 2, !range !9
  %147 = icmp eq i8 %146, 1
  br i1 %147, label %148, label %152

148:                                              ; preds = %143
  %149 = getelementptr inbounds %struct.pci_cap_saved_state, ptr %144, i32 0, i32 1
  %150 = load i16, ptr %149, align 4
  %151 = icmp eq i16 %150, 24
  br i1 %151, label %157, label %152

152:                                              ; preds = %148, %143
  %153 = load ptr, ptr %144, align 4
  %154 = icmp eq ptr %153, null
  br i1 %154, label %155, label %143

155:                                              ; preds = %152, %138
  %156 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %156, ptr noundef nonnull @.str.46) #26
  br label %160

157:                                              ; preds = %148
  %158 = getelementptr inbounds %struct.pci_cap_saved_state, ptr %144, i32 1
  %159 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef %139, ptr noundef %158) #25
  br label %160

160:                                              ; preds = %157, %155, %134, %100
  %161 = call i32 @pci_save_vc_state(ptr noundef %0) #25
  br label %162

162:                                              ; preds = %160, %98, %72
  %163 = phi i32 [ %161, %160 ], [ -12, %72 ], [ -12, %98 ]
  ret i32 %163
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_save_vc_state(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pci_restore_state(ptr noundef %0) #5 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 49
  %14 = load i40, ptr %13, align 1
  %15 = and i40 %14, 2097152
  %16 = icmp eq i40 %15, 0
  br i1 %16, label %412, label %17

17:                                               ; preds = %1
  %18 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 53
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %33, label %21

21:                                               ; preds = %30, %17
  %22 = phi ptr [ %31, %30 ], [ %19, %17 ]
  %23 = getelementptr inbounds %struct.pci_cap_saved_state, ptr %22, i32 0, i32 1, i32 1
  %24 = load i8, ptr %23, align 2, !range !9
  %25 = icmp eq i8 %24, 1
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.pci_cap_saved_state, ptr %22, i32 0, i32 1
  %28 = load i16, ptr %27, align 4
  %29 = icmp eq i16 %28, 24
  br i1 %29, label %33, label %30

30:                                               ; preds = %26, %21
  %31 = load ptr, ptr %22, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %21

33:                                               ; preds = %30, %26, %17
  %34 = phi ptr [ null, %17 ], [ %22, %26 ], [ null, %30 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #25
  store i32 0, ptr %12, align 4, !annotation !8
  %35 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 45
  %36 = load i32, ptr %35, align 8
  %37 = icmp slt i32 %36, 257
  br i1 %37, label %65, label %38

38:                                               ; preds = %33
  %39 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef 256, ptr noundef nonnull %12) #25
  %40 = icmp ne i32 %39, 0
  %41 = load i32, ptr %12, align 4
  %42 = icmp eq i32 %41, 0
  %43 = select i1 %40, i1 true, i1 %42
  br i1 %43, label %65, label %44

44:                                               ; preds = %38
  %45 = and i32 %41, 65535
  %46 = icmp eq i32 %45, 24
  br i1 %46, label %69, label %52

47:                                               ; preds = %59
  %48 = add nsw i32 %53, -1
  %49 = load i32, ptr %12, align 4
  %50 = and i32 %49, 65535
  %51 = icmp eq i32 %50, 24
  br i1 %51, label %66, label %52

52:                                               ; preds = %47, %44
  %53 = phi i32 [ %48, %47 ], [ 479, %44 ]
  %54 = phi i32 [ %49, %47 ], [ %41, %44 ]
  %55 = lshr i32 %54, 20
  %56 = trunc i32 %55 to i16
  %57 = and i16 %56, 4092
  %58 = icmp ult i16 %57, 256
  br i1 %58, label %65, label %59

59:                                               ; preds = %52
  %60 = zext i16 %57 to i32
  %61 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef %60, ptr noundef nonnull %12) #25
  %62 = icmp ne i32 %61, 0
  %63 = icmp eq i32 %53, 0
  %64 = select i1 %62, i1 true, i1 %63
  br i1 %64, label %65, label %47

65:                                               ; preds = %59, %52, %38, %33
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #25
  br label %76

66:                                               ; preds = %47
  %67 = add nuw nsw i16 %57, 4
  %68 = zext i16 %67 to i32
  br label %69

69:                                               ; preds = %66, %44
  %70 = phi i32 [ %68, %66 ], [ 260, %44 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #25
  %71 = icmp eq ptr %34, null
  br i1 %71, label %76, label %72

72:                                               ; preds = %69
  %73 = getelementptr inbounds %struct.pci_cap_saved_state, ptr %34, i32 1
  %74 = load i32, ptr %73, align 4
  %75 = call i32 @pci_write_config_dword(ptr noundef %0, i32 noundef %70, i32 noundef %74) #25
  br label %76

76:                                               ; preds = %72, %69, %65
  %77 = load ptr, ptr %18, align 4
  %78 = icmp eq ptr %77, null
  br i1 %78, label %135, label %79

79:                                               ; preds = %88, %76
  %80 = phi ptr [ %89, %88 ], [ %77, %76 ]
  %81 = getelementptr inbounds %struct.pci_cap_saved_state, ptr %80, i32 0, i32 1, i32 1
  %82 = load i8, ptr %81, align 2, !range !9
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %79
  %85 = getelementptr inbounds %struct.pci_cap_saved_state, ptr %80, i32 0, i32 1
  %86 = load i16, ptr %85, align 4
  %87 = icmp eq i16 %86, 16
  br i1 %87, label %91, label %88

88:                                               ; preds = %84, %79
  %89 = load ptr, ptr %80, align 4
  %90 = icmp eq ptr %89, null
  br i1 %90, label %135, label %79

91:                                               ; preds = %84
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #25
  store i32 0, ptr %11, align 4, !annotation !8
  %92 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 1
  %93 = load ptr, ptr %92, align 8
  %94 = getelementptr inbounds %struct.pci_bus, ptr %93, i32 0, i32 1
  %95 = load ptr, ptr %94, align 8
  %96 = icmp eq ptr %95, null
  br i1 %96, label %113, label %97

97:                                               ; preds = %91
  %98 = getelementptr inbounds %struct.pci_bus, ptr %93, i32 0, i32 4
  %99 = load ptr, ptr %98, align 4
  %100 = icmp eq ptr %99, null
  br i1 %100, label %113, label %101

101:                                              ; preds = %97
  %102 = getelementptr inbounds %struct.pci_dev, ptr %99, i32 0, i32 38
  %103 = load i8, ptr %102, align 4
  %104 = and i8 %103, 1
  %105 = icmp eq i8 %104, 0
  br i1 %105, label %113, label %106

106:                                              ; preds = %101
  %107 = call i32 @pcie_capability_read_dword(ptr noundef nonnull %99, i32 noundef 40, ptr noundef nonnull %11) #25
  %108 = load i32, ptr %11, align 4
  %109 = and i32 %108, 1024
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %106
  %112 = call i32 @pcie_capability_clear_and_set_word(ptr noundef nonnull %99, i32 noundef 40, i16 noundef zeroext 0, i16 noundef zeroext 1024) #25
  br label %113

113:                                              ; preds = %111, %106, %101, %97, %91
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #25
  %114 = getelementptr inbounds %struct.pci_cap_saved_state, ptr %80, i32 1
  %115 = load i16, ptr %114, align 2
  %116 = call i32 @pcie_capability_write_word(ptr noundef %0, i32 noundef 8, i16 noundef zeroext %115) #25
  %117 = getelementptr i16, ptr %114, i32 1
  %118 = load i16, ptr %117, align 2
  %119 = call i32 @pcie_capability_write_word(ptr noundef %0, i32 noundef 16, i16 noundef zeroext %118) #25
  %120 = getelementptr %struct.pci_cap_saved_state, ptr %80, i32 1, i32 0, i32 1
  %121 = load i16, ptr %120, align 2
  %122 = call i32 @pcie_capability_write_word(ptr noundef %0, i32 noundef 24, i16 noundef zeroext %121) #25
  %123 = getelementptr i16, ptr %114, i32 3
  %124 = load i16, ptr %123, align 2
  %125 = call i32 @pcie_capability_write_word(ptr noundef %0, i32 noundef 28, i16 noundef zeroext %124) #25
  %126 = getelementptr %struct.pci_cap_saved_state, ptr %80, i32 1, i32 1
  %127 = load i16, ptr %126, align 2
  %128 = call i32 @pcie_capability_write_word(ptr noundef %0, i32 noundef 40, i16 noundef zeroext %127) #25
  %129 = getelementptr %struct.pci_cap_saved_state, ptr %80, i32 1, i32 1, i32 1
  %130 = load i16, ptr %129, align 2
  %131 = call i32 @pcie_capability_write_word(ptr noundef %0, i32 noundef 48, i16 noundef zeroext %130) #25
  %132 = getelementptr %struct.pci_cap_saved_state, ptr %80, i32 1, i32 1, i32 2
  %133 = load i16, ptr %132, align 2
  %134 = call i32 @pcie_capability_write_word(ptr noundef %0, i32 noundef 56, i16 noundef zeroext %133) #25
  br label %135

135:                                              ; preds = %113, %88, %76
  call void @pci_restore_vc_state(ptr noundef %0) #25
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #25
  store i32 0, ptr %10, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #25
  store i32 0, ptr %9, align 4, !annotation !8
  %136 = load i32, ptr %35, align 8
  %137 = icmp slt i32 %136, 257
  br i1 %137, label %165, label %138

138:                                              ; preds = %135
  %139 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef 256, ptr noundef nonnull %9) #25
  %140 = icmp ne i32 %139, 0
  %141 = load i32, ptr %9, align 4
  %142 = icmp eq i32 %141, 0
  %143 = select i1 %140, i1 true, i1 %142
  br i1 %143, label %165, label %144

144:                                              ; preds = %138
  %145 = and i32 %141, 65535
  %146 = icmp eq i32 %145, 21
  br i1 %146, label %166, label %152

147:                                              ; preds = %159
  %148 = add nsw i32 %153, -1
  %149 = load i32, ptr %9, align 4
  %150 = and i32 %149, 65535
  %151 = icmp eq i32 %150, 21
  br i1 %151, label %166, label %152

152:                                              ; preds = %147, %144
  %153 = phi i32 [ %148, %147 ], [ 479, %144 ]
  %154 = phi i32 [ %149, %147 ], [ %141, %144 ]
  %155 = lshr i32 %154, 20
  %156 = trunc i32 %155 to i16
  %157 = and i16 %156, 4092
  %158 = icmp ult i16 %157, 256
  br i1 %158, label %165, label %159

159:                                              ; preds = %152
  %160 = zext i16 %157 to i32
  %161 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef %160, ptr noundef nonnull %9) #25
  %162 = icmp ne i32 %161, 0
  %163 = icmp eq i32 %153, 0
  %164 = select i1 %162, i1 true, i1 %163
  br i1 %164, label %165, label %147

165:                                              ; preds = %159, %152, %138, %135
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #25
  br label %203

166:                                              ; preds = %147, %144
  %167 = phi i32 [ 256, %144 ], [ %160, %147 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #25
  %168 = add nuw nsw i32 %167, 8
  %169 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef %168, ptr noundef nonnull %10) #25
  %170 = load i32, ptr %10, align 4
  %171 = lshr i32 %170, 5
  %172 = and i32 %171, 7
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %203, label %174

174:                                              ; preds = %166
  %175 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 47
  br label %176

176:                                              ; preds = %176, %174
  %177 = phi i32 [ %167, %174 ], [ %179, %176 ]
  %178 = phi i32 [ 0, %174 ], [ %201, %176 ]
  %179 = add nuw nsw i32 %177, 8
  %180 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef %179, ptr noundef nonnull %10) #25
  %181 = load i32, ptr %10, align 4
  %182 = and i32 %181, 7
  %183 = getelementptr %struct.resource, ptr %175, i32 %182, i32 1
  %184 = load i32, ptr %183, align 4
  %185 = getelementptr %struct.resource, ptr %175, i32 %182
  %186 = load i32, ptr %185, align 4
  %187 = sub i32 %184, %186
  %188 = icmp eq i32 %184, %186
  %189 = call i32 @llvm.ctlz.i32(i32 %187, i1 false) #25, !range !10
  %190 = sub nuw nsw i32 32, %189
  %191 = shl nuw i32 1, %190
  %192 = call i32 @llvm.ctlz.i32(i32 %191, i1 true), !range !10
  %193 = xor i32 %192, 31
  %194 = call i32 @llvm.smax.i32(i32 %193, i32 20)
  %195 = and i32 %181, -7937
  %196 = shl nuw nsw i32 %194, 8
  %197 = add nsw i32 %196, -5120
  %198 = select i1 %188, i32 0, i32 %197
  %199 = or i32 %198, %195
  store i32 %199, ptr %10, align 4
  %200 = call i32 @pci_write_config_dword(ptr noundef %0, i32 noundef %179, i32 noundef %199) #25
  %201 = add nuw nsw i32 %178, 1
  %202 = icmp eq i32 %201, %172
  br i1 %202, label %203, label %176

203:                                              ; preds = %176, %166, %165
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #25
  %204 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 13
  %205 = load i8, ptr %204, align 1
  switch i8 %205, label %369 [
    i8 0, label %212
    i8 1, label %206
  ]

206:                                              ; preds = %203
  %207 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 52, i32 15
  %208 = load i32, ptr %207, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #25
  store i32 0, ptr %6, align 4, !annotation !8
  %209 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef 60, ptr noundef nonnull %6) #25
  %210 = load i32, ptr %6, align 4
  %211 = icmp eq i32 %210, %208
  br i1 %211, label %319, label %317

212:                                              ; preds = %203
  %213 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 52, i32 15
  %214 = load i32, ptr %213, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #25
  store i32 0, ptr %8, align 4, !annotation !8
  %215 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef 60, ptr noundef nonnull %8) #25
  %216 = load i32, ptr %8, align 4
  %217 = icmp eq i32 %216, %214
  br i1 %217, label %220, label %218

218:                                              ; preds = %212
  %219 = call i32 @pci_write_config_dword(ptr noundef %0, i32 noundef 60, i32 noundef %214) #25
  br label %220

220:                                              ; preds = %218, %212
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #25
  %221 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 52, i32 14
  %222 = load i32, ptr %221, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #25
  store i32 0, ptr %8, align 4, !annotation !8
  %223 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef 56, ptr noundef nonnull %8) #25
  %224 = load i32, ptr %8, align 4
  %225 = icmp eq i32 %224, %222
  br i1 %225, label %228, label %226

226:                                              ; preds = %220
  %227 = call i32 @pci_write_config_dword(ptr noundef %0, i32 noundef 56, i32 noundef %222) #25
  br label %228

228:                                              ; preds = %226, %220
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #25
  %229 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 52, i32 13
  %230 = load i32, ptr %229, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #25
  store i32 0, ptr %8, align 4, !annotation !8
  %231 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef 52, ptr noundef nonnull %8) #25
  %232 = load i32, ptr %8, align 4
  %233 = icmp eq i32 %232, %230
  br i1 %233, label %236, label %234

234:                                              ; preds = %228
  %235 = call i32 @pci_write_config_dword(ptr noundef %0, i32 noundef 52, i32 noundef %230) #25
  br label %236

236:                                              ; preds = %234, %228
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #25
  %237 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 52, i32 12
  %238 = load i32, ptr %237, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #25
  store i32 0, ptr %8, align 4, !annotation !8
  %239 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef 48, ptr noundef nonnull %8) #25
  %240 = load i32, ptr %8, align 4
  %241 = icmp eq i32 %240, %238
  br i1 %241, label %244, label %242

242:                                              ; preds = %236
  %243 = call i32 @pci_write_config_dword(ptr noundef %0, i32 noundef 48, i32 noundef %238) #25
  br label %244

244:                                              ; preds = %242, %236
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #25
  %245 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 52, i32 11
  %246 = load i32, ptr %245, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #25
  store i32 0, ptr %8, align 4, !annotation !8
  %247 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef 44, ptr noundef nonnull %8) #25
  %248 = load i32, ptr %8, align 4
  %249 = icmp eq i32 %248, %246
  br i1 %249, label %252, label %250

250:                                              ; preds = %244
  %251 = call i32 @pci_write_config_dword(ptr noundef %0, i32 noundef 44, i32 noundef %246) #25
  br label %252

252:                                              ; preds = %250, %244
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #25
  %253 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 52, i32 10
  %254 = load i32, ptr %253, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #25
  store i32 0, ptr %8, align 4, !annotation !8
  %255 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef 40, ptr noundef nonnull %8) #25
  %256 = load i32, ptr %8, align 4
  %257 = icmp eq i32 %256, %254
  br i1 %257, label %260, label %258

258:                                              ; preds = %252
  %259 = call i32 @pci_write_config_dword(ptr noundef %0, i32 noundef 40, i32 noundef %254) #25
  br label %260

260:                                              ; preds = %258, %252
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #25
  br label %261

261:                                              ; preds = %281, %260
  %262 = phi i32 [ 9, %260 ], [ %282, %281 ]
  %263 = shl i32 %262, 2
  %264 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 52, i32 %262
  %265 = load i32, ptr %264, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #25
  store i32 0, ptr %2, align 4, !annotation !8
  %266 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef %263, ptr noundef nonnull %2) #25
  %267 = load i32, ptr %2, align 4
  %268 = icmp eq i32 %267, %265
  br i1 %268, label %281, label %269

269:                                              ; preds = %261
  %270 = call i32 @pci_write_config_dword(ptr noundef %0, i32 noundef %263, i32 noundef %265) #25
  br label %271

271:                                              ; preds = %276, %269
  %272 = phi i32 [ %277, %276 ], [ 10, %269 ]
  %273 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef %263, ptr noundef nonnull %2) #25
  %274 = load i32, ptr %2, align 4
  %275 = icmp eq i32 %274, %265
  br i1 %275, label %281, label %276

276:                                              ; preds = %271
  %277 = add nsw i32 %272, -1
  %278 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %278(i32 noundef 214748000) #25
  %279 = call i32 @pci_write_config_dword(ptr noundef %0, i32 noundef %263, i32 noundef %265) #25
  %280 = icmp ult i32 %272, 2
  br i1 %280, label %281, label %271

281:                                              ; preds = %276, %271, %261
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #25
  %282 = add nsw i32 %262, -1
  %283 = icmp ult i32 %282, 4
  br i1 %283, label %284, label %261

284:                                              ; preds = %281
  %285 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 52, i32 3
  %286 = load i32, ptr %285, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #25
  store i32 0, ptr %7, align 4, !annotation !8
  %287 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef 12, ptr noundef nonnull %7) #25
  %288 = load i32, ptr %7, align 4
  %289 = icmp eq i32 %288, %286
  br i1 %289, label %292, label %290

290:                                              ; preds = %284
  %291 = call i32 @pci_write_config_dword(ptr noundef %0, i32 noundef 12, i32 noundef %286) #25
  br label %292

292:                                              ; preds = %290, %284
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #25
  %293 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 52, i32 2
  %294 = load i32, ptr %293, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #25
  store i32 0, ptr %7, align 4, !annotation !8
  %295 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef 8, ptr noundef nonnull %7) #25
  %296 = load i32, ptr %7, align 4
  %297 = icmp eq i32 %296, %294
  br i1 %297, label %300, label %298

298:                                              ; preds = %292
  %299 = call i32 @pci_write_config_dword(ptr noundef %0, i32 noundef 8, i32 noundef %294) #25
  br label %300

300:                                              ; preds = %298, %292
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #25
  %301 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 52, i32 1
  %302 = load i32, ptr %301, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #25
  store i32 0, ptr %7, align 4, !annotation !8
  %303 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef 4, ptr noundef nonnull %7) #25
  %304 = load i32, ptr %7, align 4
  %305 = icmp eq i32 %304, %302
  br i1 %305, label %308, label %306

306:                                              ; preds = %300
  %307 = call i32 @pci_write_config_dword(ptr noundef %0, i32 noundef 4, i32 noundef %302) #25
  br label %308

308:                                              ; preds = %306, %300
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #25
  %309 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 52, i32 0
  %310 = load i32, ptr %309, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #25
  store i32 0, ptr %7, align 4, !annotation !8
  %311 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %7) #25
  %312 = load i32, ptr %7, align 4
  %313 = icmp eq i32 %312, %310
  br i1 %313, label %316, label %314

314:                                              ; preds = %308
  %315 = call i32 @pci_write_config_dword(ptr noundef %0, i32 noundef 0, i32 noundef %310) #25
  br label %316

316:                                              ; preds = %314, %308
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #25
  br label %382

317:                                              ; preds = %206
  %318 = call i32 @pci_write_config_dword(ptr noundef %0, i32 noundef 60, i32 noundef %208) #25
  br label %319

319:                                              ; preds = %317, %206
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #25
  %320 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 52, i32 14
  %321 = load i32, ptr %320, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #25
  store i32 0, ptr %6, align 4, !annotation !8
  %322 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef 56, ptr noundef nonnull %6) #25
  %323 = load i32, ptr %6, align 4
  %324 = icmp eq i32 %323, %321
  br i1 %324, label %327, label %325

325:                                              ; preds = %319
  %326 = call i32 @pci_write_config_dword(ptr noundef %0, i32 noundef 56, i32 noundef %321) #25
  br label %327

327:                                              ; preds = %325, %319
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #25
  %328 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 52, i32 13
  %329 = load i32, ptr %328, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #25
  store i32 0, ptr %6, align 4, !annotation !8
  %330 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef 52, ptr noundef nonnull %6) #25
  %331 = load i32, ptr %6, align 4
  %332 = icmp eq i32 %331, %329
  br i1 %332, label %335, label %333

333:                                              ; preds = %327
  %334 = call i32 @pci_write_config_dword(ptr noundef %0, i32 noundef 52, i32 noundef %329) #25
  br label %335

335:                                              ; preds = %333, %327
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #25
  %336 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 52, i32 12
  %337 = load i32, ptr %336, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #25
  store i32 0, ptr %6, align 4, !annotation !8
  %338 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef 48, ptr noundef nonnull %6) #25
  %339 = load i32, ptr %6, align 4
  %340 = icmp eq i32 %339, %337
  br i1 %340, label %343, label %341

341:                                              ; preds = %335
  %342 = call i32 @pci_write_config_dword(ptr noundef %0, i32 noundef 48, i32 noundef %337) #25
  br label %343

343:                                              ; preds = %341, %335
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #25
  %344 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 52, i32 11
  %345 = load i32, ptr %344, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #25
  store i32 0, ptr %5, align 4, !annotation !8
  %346 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef 44, ptr noundef nonnull %5) #25
  %347 = call i32 @pci_write_config_dword(ptr noundef %0, i32 noundef 44, i32 noundef %345) #25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #25
  %348 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 52, i32 10
  %349 = load i32, ptr %348, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #25
  store i32 0, ptr %5, align 4, !annotation !8
  %350 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef 40, ptr noundef nonnull %5) #25
  %351 = call i32 @pci_write_config_dword(ptr noundef %0, i32 noundef 40, i32 noundef %349) #25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #25
  %352 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 52, i32 9
  %353 = load i32, ptr %352, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #25
  store i32 0, ptr %5, align 4, !annotation !8
  %354 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef 36, ptr noundef nonnull %5) #25
  %355 = call i32 @pci_write_config_dword(ptr noundef %0, i32 noundef 36, i32 noundef %353) #25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #25
  br label %356

356:                                              ; preds = %366, %343
  %357 = phi i32 [ %367, %366 ], [ 8, %343 ]
  %358 = shl i32 %357, 2
  %359 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 52, i32 %357
  %360 = load i32, ptr %359, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #25
  store i32 0, ptr %4, align 4, !annotation !8
  %361 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef %358, ptr noundef nonnull %4) #25
  %362 = load i32, ptr %4, align 4
  %363 = icmp eq i32 %362, %360
  br i1 %363, label %366, label %364

364:                                              ; preds = %356
  %365 = call i32 @pci_write_config_dword(ptr noundef %0, i32 noundef %358, i32 noundef %360) #25
  br label %366

366:                                              ; preds = %364, %356
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #25
  %367 = add nsw i32 %357, -1
  %368 = icmp eq i32 %357, 0
  br i1 %368, label %382, label %356

369:                                              ; preds = %379, %203
  %370 = phi i32 [ %380, %379 ], [ 15, %203 ]
  %371 = shl i32 %370, 2
  %372 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 52, i32 %370
  %373 = load i32, ptr %372, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #25
  store i32 0, ptr %3, align 4, !annotation !8
  %374 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef %371, ptr noundef nonnull %3) #25
  %375 = load i32, ptr %3, align 4
  %376 = icmp eq i32 %375, %373
  br i1 %376, label %379, label %377

377:                                              ; preds = %369
  %378 = call i32 @pci_write_config_dword(ptr noundef %0, i32 noundef %371, i32 noundef %373) #25
  br label %379

379:                                              ; preds = %377, %369
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #25
  %380 = add nsw i32 %370, -1
  %381 = icmp eq i32 %370, 0
  br i1 %381, label %382, label %369

382:                                              ; preds = %379, %366, %316
  %383 = load ptr, ptr %18, align 4
  %384 = icmp eq ptr %383, null
  br i1 %384, label %397, label %385

385:                                              ; preds = %394, %382
  %386 = phi ptr [ %395, %394 ], [ %383, %382 ]
  %387 = getelementptr inbounds %struct.pci_cap_saved_state, ptr %386, i32 0, i32 1, i32 1
  %388 = load i8, ptr %387, align 2, !range !9
  %389 = icmp eq i8 %388, 0
  br i1 %389, label %390, label %394

390:                                              ; preds = %385
  %391 = getelementptr inbounds %struct.pci_cap_saved_state, ptr %386, i32 0, i32 1
  %392 = load i16, ptr %391, align 4
  %393 = icmp eq i16 %392, 7
  br i1 %393, label %397, label %394

394:                                              ; preds = %390, %385
  %395 = load ptr, ptr %386, align 4
  %396 = icmp eq ptr %395, null
  br i1 %396, label %397, label %385

397:                                              ; preds = %394, %390, %382
  %398 = phi ptr [ null, %382 ], [ %386, %390 ], [ null, %394 ]
  %399 = call zeroext i8 @pci_find_capability(ptr noundef %0, i32 noundef 7) #25
  %400 = icmp ne ptr %398, null
  %401 = icmp ne i8 %399, 0
  %402 = select i1 %400, i1 %401, i1 false
  br i1 %402, label %403, label %409

403:                                              ; preds = %397
  %404 = zext i8 %399 to i32
  %405 = getelementptr inbounds %struct.pci_cap_saved_state, ptr %398, i32 1
  %406 = add nuw nsw i32 %404, 2
  %407 = load i16, ptr %405, align 2
  %408 = call i32 @pci_write_config_word(ptr noundef %0, i32 noundef %406, i16 noundef zeroext %407) #25
  br label %409

409:                                              ; preds = %403, %397
  call void @pci_restore_msi_state(ptr noundef %0) #25
  call fastcc void @pci_enable_acs(ptr noundef %0)
  %410 = load i40, ptr %13, align 1
  %411 = and i40 %410, -2097153
  store i40 %411, ptr %13, align 1
  br label %412

412:                                              ; preds = %409, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_restore_vc_state(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_restore_msi_state(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @pci_enable_acs(ptr noundef %0) unnamed_addr #5 {
  %2 = alloca ptr, align 4
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  %6 = load i1, ptr @pci_acs_enable, align 4
  br i1 %6, label %7, label %43

7:                                                ; preds = %1
  %8 = tail call i32 @pci_dev_specific_enable_acs(ptr noundef %0) #25
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %43, label %10

10:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #25
  store i16 0, ptr %4, align 2, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #25
  store i16 0, ptr %5, align 2, !annotation !8
  %11 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 60
  %12 = load i16, ptr %11, align 8
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %42, label %14

14:                                               ; preds = %10
  %15 = zext i16 %12 to i32
  %16 = add nuw nsw i32 %15, 4
  %17 = call i32 @pci_read_config_word(ptr noundef %0, i32 noundef %16, ptr noundef nonnull %4) #25
  %18 = add nuw nsw i32 %15, 6
  %19 = call i32 @pci_read_config_word(ptr noundef %0, i32 noundef %18, ptr noundef nonnull %5) #25
  %20 = load i16, ptr %4, align 2
  %21 = and i16 %20, 1
  %22 = load i16, ptr %5, align 2
  %23 = or i16 %22, %21
  %24 = and i16 %20, 4
  %25 = or i16 %23, %24
  %26 = and i16 %20, 8
  %27 = or i16 %25, %26
  %28 = and i16 %20, 16
  %29 = or i16 %27, %28
  store i16 %29, ptr %5, align 2
  %30 = load i1, ptr @pcie_ats_disabled, align 1
  br i1 %30, label %36, label %31

31:                                               ; preds = %14
  %32 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 49
  %33 = load i40, ptr %32, align 1
  %34 = and i40 %33, 402653184
  %35 = icmp eq i40 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %31, %14
  %37 = and i16 %20, 2
  %38 = or i16 %29, %37
  store i16 %38, ptr %5, align 2
  br label %39

39:                                               ; preds = %36, %31
  %40 = phi i16 [ %29, %31 ], [ %38, %36 ]
  %41 = call i32 @pci_write_config_word(ptr noundef %0, i32 noundef %18, i16 noundef zeroext %40) #25
  br label %42

42:                                               ; preds = %39, %10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #25
  br label %43

43:                                               ; preds = %42, %7, %1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #25
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #25
  store i16 0, ptr %3, align 2, !annotation !8
  %44 = load ptr, ptr @disable_acs_redir_param, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %84, label %46

46:                                               ; preds = %43
  store ptr %44, ptr %2, align 4
  %47 = load i8, ptr %44, align 1
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %84, label %49

49:                                               ; preds = %63, %46
  %50 = phi ptr [ %64, %63 ], [ %44, %46 ]
  %51 = call fastcc i32 @pci_dev_str_match(ptr noundef %0, ptr noundef %50, ptr noundef nonnull %2) #25
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %49
  %54 = load i1, ptr @pci_disable_acs_redir.__already_done, align 1
  br i1 %54, label %84, label %55, !prof !11

55:                                               ; preds = %53
  store i1 true, ptr @pci_disable_acs_redir.__already_done, align 1
  %56 = load ptr, ptr @disable_acs_redir_param, align 4
  %57 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef %56) #26
  br label %84

58:                                               ; preds = %49
  %59 = icmp eq i32 %51, 1
  br i1 %59, label %67, label %60

60:                                               ; preds = %58
  %61 = load ptr, ptr %2, align 4
  %62 = load i8, ptr %61, align 1
  switch i8 %62, label %84 [
    i8 59, label %63
    i8 44, label %63
  ]

63:                                               ; preds = %60, %60
  %64 = getelementptr i8, ptr %61, i32 1
  store ptr %64, ptr %2, align 4
  %65 = load i8, ptr %64, align 1
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %84, label %49

67:                                               ; preds = %58
  %68 = call i32 @pci_dev_specific_disable_acs_redir(ptr noundef %0) #25
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %84, label %70

70:                                               ; preds = %67
  %71 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 60
  %72 = load i16, ptr %71, align 8
  %73 = icmp eq i16 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %75, ptr noundef nonnull @.str.48) #26
  br label %84

76:                                               ; preds = %70
  %77 = zext i16 %72 to i32
  %78 = add nuw nsw i32 %77, 6
  %79 = call i32 @pci_read_config_word(ptr noundef %0, i32 noundef %78, ptr noundef nonnull %3) #25
  %80 = load i16, ptr %3, align 2
  %81 = and i16 %80, -45
  store i16 %81, ptr %3, align 2
  %82 = call i32 @pci_write_config_word(ptr noundef %0, i32 noundef %78, i16 noundef zeroext %81) #25
  %83 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %83, ptr noundef nonnull @.str.49) #26
  br label %84

84:                                               ; preds = %76, %74, %67, %63, %60, %55, %53, %46, %43
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #25
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @pci_store_saved_state(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 49
  %3 = load i40, ptr %2, align 1
  %4 = and i40 %3, 2097152
  %5 = icmp eq i40 %4, 0
  br i1 %5, label %39, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 53
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %19, label %10

10:                                               ; preds = %10, %6
  %11 = phi ptr [ %17, %10 ], [ %8, %6 ]
  %12 = phi i32 [ %16, %10 ], [ 72, %6 ]
  %13 = getelementptr inbounds %struct.pci_cap_saved_state, ptr %11, i32 0, i32 1, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = add i32 %12, 8
  %16 = add i32 %15, %14
  %17 = load ptr, ptr %11, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %10

19:                                               ; preds = %10, %6
  %20 = phi i32 [ 72, %6 ], [ %16, %10 ]
  %21 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %20, i32 noundef 3520) #27
  %22 = icmp eq ptr %21, null
  br i1 %22, label %39, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 52
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 64 dereferenceable(64) %21, ptr noundef align 4 dereferenceable(64) %24, i32 64, i1 false)
  %25 = load ptr, ptr %7, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %39, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.pci_saved_state, ptr %21, i32 0, i32 1
  br label %29

29:                                               ; preds = %29, %27
  %30 = phi ptr [ %37, %29 ], [ %25, %27 ]
  %31 = phi ptr [ %36, %29 ], [ %28, %27 ]
  %32 = getelementptr inbounds %struct.pci_cap_saved_state, ptr %30, i32 0, i32 1
  %33 = getelementptr inbounds %struct.pci_cap_saved_state, ptr %30, i32 0, i32 1, i32 2
  %34 = load i32, ptr %33, align 4
  %35 = add i32 %34, 8
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %31, ptr align 4 %32, i32 %35, i1 false)
  %36 = getelementptr i8, ptr %31, i32 %35
  %37 = load ptr, ptr %30, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %29

39:                                               ; preds = %29, %23, %19, %1
  %40 = phi ptr [ null, %1 ], [ null, %19 ], [ %21, %23 ], [ %21, %29 ]
  ret ptr %40
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #11

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pci_load_saved_state(ptr nocapture noundef %0, ptr noundef readonly %1) #12 {
  %3 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 49
  %4 = load i40, ptr %3, align 1
  %5 = and i40 %4, -2097153
  store i40 %5, ptr %3, align 1
  %6 = icmp eq ptr %1, null
  br i1 %6, label %54, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 52
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(64) %8, ptr noundef nonnull align 4 dereferenceable(64) %1, i32 64, i1 false)
  %9 = getelementptr inbounds %struct.pci_saved_state, ptr %1, i32 1, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %51, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.pci_saved_state, ptr %1, i32 0, i32 1
  %14 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 53
  br label %15

15:                                               ; preds = %41, %12
  %16 = phi i32 [ %10, %12 ], [ %47, %41 ]
  %17 = phi ptr [ %9, %12 ], [ %46, %41 ]
  %18 = phi ptr [ %13, %12 ], [ %45, %41 ]
  %19 = load i16, ptr %18, align 4
  %20 = load ptr, ptr %14, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %54, label %22

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.pci_cap_saved_data, ptr %18, i32 0, i32 1
  %24 = load i8, ptr %23, align 2, !range !9
  br label %25

25:                                               ; preds = %34, %22
  %26 = phi ptr [ %20, %22 ], [ %35, %34 ]
  %27 = getelementptr inbounds %struct.pci_cap_saved_state, ptr %26, i32 0, i32 1, i32 1
  %28 = load i8, ptr %27, align 2, !range !9
  %29 = icmp eq i8 %28, %24
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.pci_cap_saved_state, ptr %26, i32 0, i32 1
  %32 = load i16, ptr %31, align 4
  %33 = icmp eq i16 %32, %19
  br i1 %33, label %37, label %34

34:                                               ; preds = %30, %25
  %35 = load ptr, ptr %26, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %54, label %25

37:                                               ; preds = %30
  %38 = getelementptr inbounds %struct.pci_cap_saved_state, ptr %26, i32 0, i32 1, i32 2
  %39 = load i32, ptr %38, align 4
  %40 = icmp eq i32 %39, %16
  br i1 %40, label %41, label %54

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.pci_cap_saved_state, ptr %26, i32 1
  %43 = getelementptr %struct.pci_cap_saved_data, ptr %18, i32 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %42, ptr align 4 %43, i32 %16, i1 false)
  %44 = load i32, ptr %17, align 4
  %45 = getelementptr i8, ptr %43, i32 %44
  %46 = getelementptr inbounds %struct.pci_cap_saved_data, ptr %45, i32 0, i32 2
  %47 = load i32, ptr %46, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %15

49:                                               ; preds = %41
  %50 = load i40, ptr %3, align 1
  br label %51

51:                                               ; preds = %49, %7
  %52 = phi i40 [ %50, %49 ], [ %5, %7 ]
  %53 = or i40 %52, 2097152
  store i40 %53, ptr %3, align 1
  br label %54

54:                                               ; preds = %51, %37, %34, %15, %2
  %55 = phi i32 [ 0, %51 ], [ 0, %2 ], [ -22, %34 ], [ -22, %37 ], [ -22, %15 ]
  ret i32 %55
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pci_load_and_free_saved_state(ptr nocapture noundef %0, ptr nocapture noundef %1) #5 {
  %3 = load ptr, ptr %1, align 4
  %4 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 49
  %5 = load i40, ptr %4, align 1
  %6 = and i40 %5, -2097153
  store i40 %6, ptr %4, align 1
  %7 = icmp eq ptr %3, null
  br i1 %7, label %55, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 52
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(64) %9, ptr noundef nonnull align 4 dereferenceable(64) %3, i32 64, i1 false) #25
  %10 = getelementptr inbounds %struct.pci_saved_state, ptr %3, i32 1, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %52, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.pci_saved_state, ptr %3, i32 0, i32 1
  %15 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 53
  br label %16

16:                                               ; preds = %42, %13
  %17 = phi i32 [ %11, %13 ], [ %48, %42 ]
  %18 = phi ptr [ %10, %13 ], [ %47, %42 ]
  %19 = phi ptr [ %14, %13 ], [ %46, %42 ]
  %20 = load i16, ptr %19, align 4
  %21 = load ptr, ptr %15, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %55, label %23

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.pci_cap_saved_data, ptr %19, i32 0, i32 1
  %25 = load i8, ptr %24, align 2, !range !9
  br label %26

26:                                               ; preds = %35, %23
  %27 = phi ptr [ %21, %23 ], [ %36, %35 ]
  %28 = getelementptr inbounds %struct.pci_cap_saved_state, ptr %27, i32 0, i32 1, i32 1
  %29 = load i8, ptr %28, align 2, !range !9
  %30 = icmp eq i8 %29, %25
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.pci_cap_saved_state, ptr %27, i32 0, i32 1
  %33 = load i16, ptr %32, align 4
  %34 = icmp eq i16 %33, %20
  br i1 %34, label %38, label %35

35:                                               ; preds = %31, %26
  %36 = load ptr, ptr %27, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %55, label %26

38:                                               ; preds = %31
  %39 = getelementptr inbounds %struct.pci_cap_saved_state, ptr %27, i32 0, i32 1, i32 2
  %40 = load i32, ptr %39, align 4
  %41 = icmp eq i32 %40, %17
  br i1 %41, label %42, label %55

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.pci_cap_saved_state, ptr %27, i32 1
  %44 = getelementptr %struct.pci_cap_saved_data, ptr %19, i32 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %43, ptr align 4 %44, i32 %17, i1 false) #25
  %45 = load i32, ptr %18, align 4
  %46 = getelementptr i8, ptr %44, i32 %45
  %47 = getelementptr inbounds %struct.pci_cap_saved_data, ptr %46, i32 0, i32 2
  %48 = load i32, ptr %47, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %16

50:                                               ; preds = %42
  %51 = load i40, ptr %4, align 1
  br label %52

52:                                               ; preds = %50, %8
  %53 = phi i40 [ %51, %50 ], [ %6, %8 ]
  %54 = or i40 %53, 2097152
  store i40 %54, ptr %4, align 1
  br label %55

55:                                               ; preds = %52, %38, %35, %16, %2
  %56 = phi i32 [ 0, %52 ], [ 0, %2 ], [ -22, %35 ], [ -22, %38 ], [ -22, %16 ]
  %57 = load ptr, ptr %1, align 4
  tail call void @kfree(ptr noundef %57) #25
  store ptr null, ptr %1, align 4
  ret i32 %56
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define weak dso_local i32 @pcibios_enable_device(ptr noundef %0, i32 noundef %1) local_unnamed_addr #5 {
  %3 = tail call i32 @pci_enable_resources(ptr noundef %0, i32 noundef %1) #25
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_resources(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pci_reenable_device(ptr noundef %0) #5 {
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 51
  %3 = load volatile i32, ptr %2, align 4
  %4 = icmp slt i32 %3, 1
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call fastcc i32 @do_pci_enable_device(ptr noundef %0, i32 noundef 2047)
  br label %7

7:                                                ; preds = %5, %1
  %8 = phi i32 [ %6, %5 ], [ 0, %1 ]
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @do_pci_enable_device(ptr noundef %0, i32 noundef %1) unnamed_addr #5 {
  %3 = alloca i16, align 2
  %4 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #25
  store i16 0, ptr %3, align 2, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #25
  store i8 0, ptr %4, align 1, !annotation !8
  %5 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 30
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %28, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 32
  %10 = load i8, ptr %9, align 1
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  store i32 0, ptr %5, align 4
  br label %13

13:                                               ; preds = %12, %8
  %14 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 33
  %15 = load i32, ptr %14, align 2
  %16 = and i32 %15, 16384
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  tail call void @pci_walk_bus(ptr noundef nonnull %20, ptr noundef nonnull @pci_resume_one, ptr noundef null) #25
  br label %23

23:                                               ; preds = %22, %18, %13
  %24 = tail call fastcc i32 @pci_raw_set_power_state(ptr noundef %0, i32 noundef 0) #25
  %25 = icmp slt i32 %24, 0
  %26 = icmp ne i32 %24, -5
  %27 = and i1 %25, %26
  br i1 %27, label %59, label %28

28:                                               ; preds = %23, %2
  %29 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 1
  %30 = load ptr, ptr %29, align 8
  %31 = getelementptr inbounds %struct.pci_bus, ptr %30, i32 0, i32 1
  %32 = load ptr, ptr %31, align 8
  %33 = icmp eq ptr %32, null
  br i1 %33, label %39, label %34

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.pci_bus, ptr %30, i32 0, i32 4
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %34
  tail call void @pcie_aspm_powersave_config_link(ptr noundef nonnull %36) #25
  br label %39

39:                                               ; preds = %38, %34, %28
  %40 = tail call i32 @pcibios_enable_device(ptr noundef %0, i32 noundef %1)
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %59, label %42

42:                                               ; preds = %39
  tail call void @pci_fixup_device(i32 noundef 3, ptr noundef %0) #25
  %43 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 49
  %44 = load i40, ptr %43, align 1
  %45 = and i40 %44, 12288
  %46 = icmp eq i40 %45, 0
  br i1 %46, label %47, label %59

47:                                               ; preds = %42
  %48 = call i32 @pci_read_config_byte(ptr noundef %0, i32 noundef 61, ptr noundef nonnull %4) #25
  %49 = load i8, ptr %4, align 1
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %59, label %51

51:                                               ; preds = %47
  %52 = call i32 @pci_read_config_word(ptr noundef %0, i32 noundef 4, ptr noundef nonnull %3) #25
  %53 = load i16, ptr %3, align 2
  %54 = and i16 %53, 1024
  %55 = icmp eq i16 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %51
  %57 = and i16 %53, -1025
  %58 = call i32 @pci_write_config_word(ptr noundef %0, i32 noundef 4, i16 noundef zeroext %57) #25
  br label %59

59:                                               ; preds = %56, %51, %47, %42, %39, %23
  %60 = phi i32 [ %24, %23 ], [ %40, %39 ], [ 0, %42 ], [ 0, %51 ], [ 0, %56 ], [ 0, %47 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #25
  ret i32 %60
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pci_enable_device_io(ptr noundef %0) #5 {
  %2 = tail call fastcc i32 @pci_enable_device_flags(ptr noundef %0, i32 noundef 256)
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @pci_enable_device_flags(ptr noundef %0, i32 noundef %1) unnamed_addr #5 {
  %3 = alloca i32, align 4
  %4 = alloca i16, align 2
  %5 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 30
  %6 = load i32, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #25
  store i32 0, ptr %3, align 4, !annotation !8
  %7 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 43
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 3
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #25
  br label %17

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 1
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 6
  %15 = load i32, ptr %14, align 4
  %16 = call zeroext i1 @pci_bus_read_dev_vendor_id(ptr noundef %13, i32 noundef %15, ptr noundef nonnull %3, i32 noundef 0) #25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #25
  br i1 %16, label %18, label %17

17:                                               ; preds = %11, %10
  store i32 4, ptr %5, align 4
  br label %30

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 32
  %20 = load i8, ptr %19, align 1
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %29, label %22

22:                                               ; preds = %18
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #25
  store i16 0, ptr %4, align 2, !annotation !8
  %23 = zext i8 %20 to i32
  %24 = add nuw nsw i32 %23, 4
  %25 = call i32 @pci_read_config_word(ptr noundef %0, i32 noundef %24, ptr noundef nonnull %4) #25
  %26 = load i16, ptr %4, align 2
  %27 = and i16 %26, 3
  %28 = zext i16 %27 to i32
  store i32 %28, ptr %5, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #25
  br label %30

29:                                               ; preds = %18
  store i32 %6, ptr %5, align 4
  br label %30

30:                                               ; preds = %29, %22, %17
  %31 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 51
  call void asm sideeffect "dmb ish", "~{memory}"() #25, !srcloc !12
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %31) #25, !srcloc !13
  %32 = call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %31, ptr %31, i32 1, ptr elementtype(i32) %31) #25, !srcloc !14
  %33 = extractvalue { i32, i32 } %32, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #25, !srcloc !15
  %34 = icmp sgt i32 %33, 1
  br i1 %34, label %116, label %35

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 1
  %37 = load ptr, ptr %36, align 8
  %38 = getelementptr inbounds %struct.pci_bus, ptr %37, i32 0, i32 1
  %39 = load ptr, ptr %38, align 8
  %40 = icmp eq ptr %39, null
  br i1 %40, label %46, label %41

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.pci_bus, ptr %37, i32 0, i32 4
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %41
  call fastcc void @pci_enable_bridge(ptr noundef nonnull %43)
  br label %46

46:                                               ; preds = %45, %41, %35
  %47 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 0, i32 3
  %48 = load i32, ptr %47, align 4
  %49 = and i32 %48, %1
  %50 = icmp ne i32 %49, 0
  %51 = zext i1 %50 to i32
  %52 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 1, i32 3
  %53 = load i32, ptr %52, align 4
  %54 = and i32 %53, %1
  %55 = icmp eq i32 %54, 0
  %56 = select i1 %55, i32 0, i32 2
  %57 = or i32 %56, %51
  %58 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 2, i32 3
  %59 = load i32, ptr %58, align 4
  %60 = and i32 %59, %1
  %61 = icmp eq i32 %60, 0
  %62 = select i1 %61, i32 0, i32 4
  %63 = or i32 %57, %62
  %64 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 3, i32 3
  %65 = load i32, ptr %64, align 4
  %66 = and i32 %65, %1
  %67 = icmp eq i32 %66, 0
  %68 = select i1 %67, i32 0, i32 8
  %69 = or i32 %63, %68
  %70 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 4, i32 3
  %71 = load i32, ptr %70, align 4
  %72 = and i32 %71, %1
  %73 = icmp eq i32 %72, 0
  %74 = select i1 %73, i32 0, i32 16
  %75 = or i32 %69, %74
  %76 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 5, i32 3
  %77 = load i32, ptr %76, align 4
  %78 = and i32 %77, %1
  %79 = icmp eq i32 %78, 0
  %80 = select i1 %79, i32 0, i32 32
  %81 = or i32 %75, %80
  %82 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 6, i32 3
  %83 = load i32, ptr %82, align 4
  %84 = and i32 %83, %1
  %85 = icmp eq i32 %84, 0
  %86 = select i1 %85, i32 0, i32 64
  %87 = or i32 %81, %86
  %88 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 7, i32 3
  %89 = load i32, ptr %88, align 4
  %90 = and i32 %89, %1
  %91 = icmp eq i32 %90, 0
  %92 = select i1 %91, i32 0, i32 128
  %93 = or i32 %87, %92
  %94 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 8, i32 3
  %95 = load i32, ptr %94, align 4
  %96 = and i32 %95, %1
  %97 = icmp eq i32 %96, 0
  %98 = select i1 %97, i32 0, i32 256
  %99 = or i32 %93, %98
  %100 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 9, i32 3
  %101 = load i32, ptr %100, align 4
  %102 = and i32 %101, %1
  %103 = icmp eq i32 %102, 0
  %104 = select i1 %103, i32 0, i32 512
  %105 = or i32 %99, %104
  %106 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 10, i32 3
  %107 = load i32, ptr %106, align 4
  %108 = and i32 %107, %1
  %109 = icmp eq i32 %108, 0
  %110 = select i1 %109, i32 0, i32 1024
  %111 = or i32 %105, %110
  %112 = call fastcc i32 @do_pci_enable_device(ptr noundef %0, i32 noundef %111)
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %46
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %31) #25, !srcloc !13
  %115 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %31, ptr %31, i32 1, ptr elementtype(i32) %31) #25, !srcloc !16
  br label %116

116:                                              ; preds = %114, %46, %30
  %117 = phi i32 [ 0, %30 ], [ %112, %114 ], [ %112, %46 ]
  ret i32 %117
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pci_enable_device_mem(ptr noundef %0) #5 {
  %2 = tail call fastcc i32 @pci_enable_device_flags(ptr noundef %0, i32 noundef 512)
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pci_enable_device(ptr noundef %0) #5 {
  %2 = tail call fastcc i32 @pci_enable_device_flags(ptr noundef %0, i32 noundef 768)
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pcim_enable_device(ptr noundef %0) #5 {
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  %3 = tail call ptr @devres_find(ptr noundef %2, ptr noundef nonnull @pcim_release, ptr noundef null, ptr noundef null) #25
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %11

5:                                                ; preds = %1
  %6 = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @pcim_release, i32 noundef 8, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str.57) #25
  %7 = icmp eq ptr %6, null
  br i1 %7, label %25, label %8

8:                                                ; preds = %5
  %9 = tail call ptr @devres_get(ptr noundef %2, ptr noundef nonnull %6, ptr noundef null, ptr noundef null) #25
  %10 = icmp eq ptr %9, null
  br i1 %10, label %25, label %11, !prof !17

11:                                               ; preds = %8, %1
  %12 = phi ptr [ %9, %8 ], [ %3, %1 ]
  %13 = load i8, ptr %12, align 4
  %14 = and i8 %13, 1
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %11
  %17 = tail call fastcc i32 @pci_enable_device_flags(ptr noundef %0, i32 noundef 768) #25
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 49
  %21 = load i40, ptr %20, align 1
  %22 = or i40 %21, 262144
  store i40 %22, ptr %20, align 1
  %23 = load i8, ptr %12, align 4
  %24 = or i8 %23, 1
  store i8 %24, ptr %12, align 4
  br label %25

25:                                               ; preds = %19, %16, %11, %8, %5
  %26 = phi i32 [ -12, %8 ], [ 0, %11 ], [ 0, %19 ], [ %17, %16 ], [ -12, %5 ]
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pcim_pin_device(ptr noundef %0) #5 {
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 49
  %3 = load i40, ptr %2, align 1
  %4 = and i40 %3, 262144
  %5 = icmp eq i40 %4, 0
  br i1 %5, label %19, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  %8 = tail call ptr @devres_find(ptr noundef %7, ptr noundef nonnull @pcim_release, ptr noundef null, ptr noundef null) #25
  %9 = icmp eq ptr %8, null
  br i1 %9, label %19, label %10

10:                                               ; preds = %6
  %11 = load i8, ptr %8, align 4
  %12 = and i8 %11, 1
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %16, !prof !17

14:                                               ; preds = %10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 2101, i32 noundef 9, ptr noundef null) #25
  %15 = load i8, ptr %8, align 4
  br label %16

16:                                               ; preds = %14, %10
  %17 = phi i8 [ %11, %10 ], [ %15, %14 ]
  %18 = or i8 %17, 2
  store i8 %18, ptr %8, align 4
  br label %20

19:                                               ; preds = %6, %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 2101, i32 noundef 9, ptr noundef null) #25
  br label %20

20:                                               ; preds = %19, %16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define weak dso_local i32 @pcibios_device_add(ptr noundef %0) local_unnamed_addr #5 {
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define weak dso_local void @pcibios_release_device(ptr noundef %0) local_unnamed_addr #5 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define weak dso_local void @pcibios_disable_device(ptr noundef %0) local_unnamed_addr #5 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define weak dso_local void @pcibios_penalize_isa_irq(i32 noundef %0, i32 noundef %1) local_unnamed_addr #5 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pci_disable_enabled_device(ptr noundef %0) local_unnamed_addr #5 {
  %2 = alloca i16, align 2
  %3 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 51
  %4 = load volatile i32, ptr %3, align 4
  %5 = icmp slt i32 %4, 1
  br i1 %5, label %15, label %6

6:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #25
  store i16 0, ptr %2, align 2, !annotation !8
  %7 = call i32 @pci_read_config_word(ptr noundef %0, i32 noundef 4, ptr noundef nonnull %2) #25
  %8 = load i16, ptr %2, align 2
  %9 = and i16 %8, 4
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %6
  %12 = and i16 %8, -5
  store i16 %12, ptr %2, align 2
  %13 = call i32 @pci_write_config_word(ptr noundef %0, i32 noundef 4, i16 noundef zeroext %12) #25
  br label %14

14:                                               ; preds = %11, %6
  call void @pcibios_disable_device(ptr noundef %0) #25
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #25
  br label %15

15:                                               ; preds = %14, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pci_disable_device(ptr noundef %0) #5 {
  %2 = alloca i16, align 2
  %3 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 49
  %4 = load i40, ptr %3, align 1
  %5 = and i40 %4, 262144
  %6 = icmp eq i40 %5, 0
  br i1 %6, label %14, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  %9 = tail call ptr @devres_find(ptr noundef %8, ptr noundef nonnull @pcim_release, ptr noundef null, ptr noundef null) #25
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %7
  %12 = load i8, ptr %9, align 4
  %13 = and i8 %12, -2
  store i8 %13, ptr %9, align 4
  br label %14

14:                                               ; preds = %11, %7, %1
  %15 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 51
  %16 = load volatile i32, ptr %15, align 4
  %17 = icmp slt i32 %16, 1
  %18 = load i1, ptr @pci_disable_device.__already_done, align 1
  %19 = xor i1 %18, true
  %20 = select i1 %17, i1 %19, i1 false
  br i1 %20, label %21, label %31, !prof !17

21:                                               ; preds = %14
  store i1 true, ptr @pci_disable_device.__already_done, align 1
  %22 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  %23 = tail call ptr @dev_driver_string(ptr noundef %22) #25
  %24 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44, i32 3
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load ptr, ptr %22, align 4
  br label %29

29:                                               ; preds = %27, %21
  %30 = phi ptr [ %28, %27 ], [ %25, %21 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 2197, i32 noundef 9, ptr noundef nonnull @.str.8, ptr noundef %23, ptr noundef %30) #25
  br label %31

31:                                               ; preds = %29, %14
  tail call void asm sideeffect "dmb ish", "~{memory}"() #25, !srcloc !18
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %15) #25, !srcloc !13
  %32 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %15, ptr %15, i32 1, ptr elementtype(i32) %15) #25, !srcloc !19
  %33 = extractvalue { i32, i32 } %32, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #25, !srcloc !20
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %46

35:                                               ; preds = %31
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #25
  store i16 0, ptr %2, align 2, !annotation !8
  %36 = call i32 @pci_read_config_word(ptr noundef %0, i32 noundef 4, ptr noundef nonnull %2) #25
  %37 = load i16, ptr %2, align 2
  %38 = and i16 %37, 4
  %39 = icmp eq i16 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %35
  %41 = and i16 %37, -5
  store i16 %41, ptr %2, align 2
  %42 = call i32 @pci_write_config_word(ptr noundef %0, i32 noundef 4, i16 noundef zeroext %41) #25
  br label %43

43:                                               ; preds = %40, %35
  call void @pcibios_disable_device(ptr noundef %0) #25
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #25
  %44 = load i40, ptr %3, align 1
  %45 = and i40 %44, -33
  store i40 %45, ptr %3, align 1
  br label %46

46:                                               ; preds = %43, %31
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define weak dso_local i32 @pcibios_set_pcie_reset_state(ptr noundef %0, i32 noundef %1) local_unnamed_addr #5 {
  ret i32 -22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pci_set_pcie_reset_state(ptr noundef %0, i32 noundef %1) #5 {
  %3 = tail call i32 @pcibios_set_pcie_reset_state(ptr noundef %0, i32 noundef %1)
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pcie_clear_root_pme_status(ptr noundef %0) local_unnamed_addr #5 {
  %2 = tail call i32 @pcie_capability_clear_and_set_dword(ptr noundef %0, i32 noundef 32, i32 noundef 0, i32 noundef 65536) #25
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @pci_check_pme_status(ptr noundef %0) local_unnamed_addr #5 {
  %2 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #25
  store i16 0, ptr %2, align 2, !annotation !8
  %3 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 32
  %4 = load i8, ptr %3, align 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %20, label %6

6:                                                ; preds = %1
  %7 = zext i8 %4 to i32
  %8 = add nuw nsw i32 %7, 4
  %9 = call i32 @pci_read_config_word(ptr noundef %0, i32 noundef %8, ptr noundef nonnull %2) #25
  %10 = load i16, ptr %2, align 2
  %11 = icmp sgt i16 %10, -1
  br i1 %11, label %20, label %12

12:                                               ; preds = %6
  %13 = or i16 %10, -32768
  %14 = and i16 %10, 256
  %15 = icmp eq i16 %14, 0
  %16 = and i16 %13, -257
  %17 = select i1 %15, i16 %13, i16 %16
  %18 = xor i1 %15, true
  store i16 %17, ptr %2, align 2
  %19 = call i32 @pci_write_config_word(ptr noundef %0, i32 noundef %8, i16 noundef zeroext %17) #25
  br label %20

20:                                               ; preds = %12, %6, %1
  %21 = phi i1 [ %18, %12 ], [ false, %1 ], [ false, %6 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #25
  ret i1 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pci_pme_wakeup_bus(ptr noundef %0) local_unnamed_addr #5 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %1
  tail call void @pci_walk_bus(ptr noundef nonnull %0, ptr noundef nonnull @pci_pme_wakeup, ptr noundef nonnull inttoptr (i32 1 to ptr)) #25
  br label %4

4:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pci_pme_wakeup(ptr noundef %0, ptr noundef readnone %1) #5 {
  %3 = alloca i16, align 2
  %4 = icmp eq ptr %1, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 33
  %7 = load i32, ptr %6, align 2
  %8 = and i32 %7, 32
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %5
  %11 = and i32 %7, -33
  store i32 %11, ptr %6, align 2
  br label %12

12:                                               ; preds = %10, %5, %2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #25
  store i16 0, ptr %3, align 2, !annotation !8
  %13 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 32
  %14 = load i8, ptr %13, align 1
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %12
  %17 = zext i8 %14 to i32
  %18 = add nuw nsw i32 %17, 4
  %19 = call i32 @pci_read_config_word(ptr noundef %0, i32 noundef %18, ptr noundef nonnull %3) #25
  %20 = load i16, ptr %3, align 2
  %21 = icmp sgt i16 %20, -1
  br i1 %21, label %22, label %23

22:                                               ; preds = %16, %12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #25
  br label %33

23:                                               ; preds = %16
  %24 = or i16 %20, -32768
  %25 = and i16 %20, 256
  %26 = icmp eq i16 %25, 0
  %27 = and i16 %24, -257
  %28 = select i1 %26, i16 %24, i16 %27
  store i16 %28, ptr %3, align 2
  %29 = call i32 @pci_write_config_word(ptr noundef %0, i32 noundef %18, i16 noundef zeroext %28) #25
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #25
  br i1 %26, label %33, label %30

30:                                               ; preds = %23
  %31 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  call void @pm_wakeup_dev_event(ptr noundef %31, i32 noundef 100, i1 noundef zeroext false) #25
  %32 = call i32 @__pm_runtime_resume(ptr noundef %31, i32 noundef 1) #25
  br label %33

33:                                               ; preds = %30, %23, %22
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @pci_pme_capable(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 32
  %4 = load i8, ptr %3, align 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 33
  %8 = load i32, ptr %7, align 2
  %9 = shl nuw i32 1, %1
  %10 = and i32 %9, 31
  %11 = and i32 %10, %8
  %12 = icmp ne i32 %11, 0
  br label %13

13:                                               ; preds = %6, %2
  %14 = phi i1 [ %12, %6 ], [ false, %2 ]
  ret i1 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pci_pme_restore(ptr noundef %0) local_unnamed_addr #5 {
  %2 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #25
  store i16 0, ptr %2, align 2, !annotation !8
  %3 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 33
  %4 = load i32, ptr %3, align 2
  %5 = and i32 %4, 31
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 32
  %9 = load i8, ptr %8, align 1
  %10 = zext i8 %9 to i32
  %11 = add nuw nsw i32 %10, 4
  %12 = call i32 @pci_read_config_word(ptr noundef %0, i32 noundef %11, ptr noundef nonnull %2) #25
  %13 = load i32, ptr %3, align 2
  %14 = and i32 %13, 8192
  %15 = icmp eq i32 %14, 0
  %16 = load i16, ptr %2, align 2
  %17 = and i16 %16, 32511
  %18 = select i1 %15, i16 -32768, i16 256
  %19 = or i16 %17, %18
  store i16 %19, ptr %2, align 2
  %20 = load i8, ptr %8, align 1
  %21 = zext i8 %20 to i32
  %22 = add nuw nsw i32 %21, 4
  %23 = call i32 @pci_write_config_word(ptr noundef %0, i32 noundef %22, i16 noundef zeroext %19) #25
  br label %24

24:                                               ; preds = %7, %1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #25
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pci_pme_active(ptr noundef %0, i1 noundef zeroext %1) #5 {
  %3 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #25
  store i16 0, ptr %3, align 2, !annotation !8
  %4 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 33
  %5 = load i32, ptr %4, align 2
  %6 = and i32 %5, 31
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %23, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 32
  %10 = load i8, ptr %9, align 1
  %11 = zext i8 %10 to i32
  %12 = add nuw nsw i32 %11, 4
  %13 = call i32 @pci_read_config_word(ptr noundef %0, i32 noundef %12, ptr noundef nonnull %3) #25
  %14 = load i16, ptr %3, align 2
  %15 = or i16 %14, -32512
  %16 = and i16 %15, -257
  %17 = select i1 %1, i16 %15, i16 %16
  store i16 %17, ptr %3, align 2
  %18 = load i8, ptr %9, align 1
  %19 = zext i8 %18 to i32
  %20 = add nuw nsw i32 %19, 4
  %21 = call i32 @pci_write_config_word(ptr noundef %0, i32 noundef %20, i16 noundef zeroext %17) #25
  %22 = load i32, ptr %4, align 2
  br label %23

23:                                               ; preds = %8, %2
  %24 = phi i32 [ %5, %2 ], [ %22, %8 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #25
  %25 = and i32 %24, 32
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %63, label %27

27:                                               ; preds = %23
  br i1 %1, label %28, label %48

28:                                               ; preds = %27
  %29 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %30 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %29, i32 noundef 3264, i32 noundef 12) #28
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %33, ptr noundef nonnull @.str.9) #26
  br label %63

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.pci_pme_device, ptr %30, i32 0, i32 1
  store ptr %0, ptr %35, align 8
  call void @mutex_lock(ptr noundef nonnull @pci_pme_list_mutex) #25
  %36 = load ptr, ptr @pci_pme_list, align 4
  %37 = getelementptr inbounds %struct.list_head, ptr %36, i32 0, i32 1
  store ptr %30, ptr %37, align 4
  store ptr %36, ptr %30, align 8
  %38 = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  store ptr @pci_pme_list, ptr %38, align 4
  store volatile ptr %30, ptr @pci_pme_list, align 4
  %39 = load volatile ptr, ptr @pci_pme_list, align 4
  %40 = icmp eq ptr %39, @pci_pme_list
  %41 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @pci_pme_list, i32 0, i32 1), align 4
  %42 = icmp ne ptr %39, %41
  %43 = select i1 %40, i1 true, i1 %42
  br i1 %43, label %47, label %44

44:                                               ; preds = %34
  %45 = load ptr, ptr @system_freezable_wq, align 4
  %46 = call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %45, ptr noundef nonnull @pci_pme_work, i32 noundef 100) #25
  br label %47

47:                                               ; preds = %44, %34
  call void @mutex_unlock(ptr noundef nonnull @pci_pme_list_mutex) #25
  br label %63

48:                                               ; preds = %27
  call void @mutex_lock(ptr noundef nonnull @pci_pme_list_mutex) #25
  br label %49

49:                                               ; preds = %53, %48
  %50 = phi ptr [ @pci_pme_list, %48 ], [ %51, %53 ]
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, @pci_pme_list
  br i1 %52, label %62, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.pci_pme_device, ptr %51, i32 0, i32 1
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, %0
  br i1 %56, label %57, label %49

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.list_head, ptr %51, i32 0, i32 1
  %59 = load ptr, ptr %58, align 4
  %60 = load ptr, ptr %51, align 4
  %61 = getelementptr inbounds %struct.list_head, ptr %60, i32 0, i32 1
  store ptr %59, ptr %61, align 4
  store volatile ptr %60, ptr %59, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %51, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %58, align 4
  call void @kfree(ptr noundef %51) #25
  br label %62

62:                                               ; preds = %57, %49
  call void @mutex_unlock(ptr noundef nonnull @pci_pme_list_mutex) #25
  br label %63

63:                                               ; preds = %62, %47, %32, %23
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pci_enable_wake(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2) #5 {
  br i1 %2, label %4, label %13

4:                                                ; preds = %3
  %5 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44, i32 11, i32 1
  %6 = load i16, ptr %5, align 4
  %7 = and i16 %6, 1
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %45, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44, i32 11, i32 6
  %11 = load ptr, ptr %10, align 8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %45, label %13

13:                                               ; preds = %9, %3
  %14 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = icmp ne ptr %15, null
  %17 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 33
  %18 = load i32, ptr %17, align 2
  %19 = and i32 %18, 1024
  %20 = icmp eq i32 %19, 0
  %21 = select i1 %16, i1 %20, i1 false
  br i1 %21, label %45, label %22

22:                                               ; preds = %13
  %23 = and i32 %18, 8192
  %24 = icmp eq i32 %23, 0
  %25 = xor i1 %24, %2
  br i1 %25, label %45, label %26

26:                                               ; preds = %22
  br i1 %2, label %27, label %40

27:                                               ; preds = %26
  %28 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 32
  %29 = load i8, ptr %28, align 1
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %45, label %31

31:                                               ; preds = %27
  %32 = shl nuw i32 1, %1
  %33 = and i32 %32, 15
  %34 = or i32 %33, 16
  %35 = and i32 %18, %34
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %45, label %37

37:                                               ; preds = %31
  tail call void @pci_pme_active(ptr noundef %0, i1 noundef zeroext true) #25
  %38 = load i32, ptr %17, align 2
  %39 = or i32 %38, 8192
  br label %43

40:                                               ; preds = %26
  tail call void @pci_pme_active(ptr noundef %0, i1 noundef zeroext false) #25
  %41 = load i32, ptr %17, align 2
  %42 = and i32 %41, -8193
  br label %43

43:                                               ; preds = %40, %37
  %44 = phi i32 [ %42, %40 ], [ %39, %37 ]
  store i32 %44, ptr %17, align 2
  br label %45

45:                                               ; preds = %43, %31, %27, %22, %13, %9, %4
  %46 = phi i32 [ -22, %9 ], [ 0, %22 ], [ -19, %27 ], [ -19, %31 ], [ 0, %13 ], [ 0, %43 ], [ -22, %4 ]
  ret i32 %46
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pci_wake_from_d3(ptr noundef %0, i1 noundef zeroext %1) #5 {
  %3 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 32
  %4 = load i8, ptr %3, align 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %41, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 33
  %8 = load i32, ptr %7, align 2
  %9 = and i32 %8, 16
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %41, label %11

11:                                               ; preds = %6
  br i1 %1, label %12, label %21

12:                                               ; preds = %11
  %13 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44, i32 11, i32 1
  %14 = load i16, ptr %13, align 4
  %15 = and i16 %14, 1
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %77, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44, i32 11, i32 6
  %19 = load ptr, ptr %18, align 8
  %20 = icmp eq ptr %19, null
  br i1 %20, label %77, label %21

21:                                               ; preds = %17, %11
  %22 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 2
  %23 = load ptr, ptr %22, align 4
  %24 = icmp ne ptr %23, null
  %25 = and i32 %8, 1024
  %26 = icmp eq i32 %25, 0
  %27 = select i1 %24, i1 %26, i1 false
  br i1 %27, label %77, label %28

28:                                               ; preds = %21
  %29 = and i32 %8, 8192
  %30 = icmp eq i32 %29, 0
  %31 = xor i1 %30, %1
  br i1 %31, label %77, label %32

32:                                               ; preds = %28
  br i1 %1, label %33, label %36

33:                                               ; preds = %32
  tail call void @pci_pme_active(ptr noundef %0, i1 noundef zeroext true) #25
  %34 = load i32, ptr %7, align 2
  %35 = or i32 %34, 8192
  br label %39

36:                                               ; preds = %32
  tail call void @pci_pme_active(ptr noundef %0, i1 noundef zeroext false) #25
  %37 = load i32, ptr %7, align 2
  %38 = and i32 %37, -8193
  br label %39

39:                                               ; preds = %36, %33
  %40 = phi i32 [ %38, %36 ], [ %35, %33 ]
  store i32 %40, ptr %7, align 2
  br label %77

41:                                               ; preds = %6, %2
  br i1 %1, label %42, label %51

42:                                               ; preds = %41
  %43 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44, i32 11, i32 1
  %44 = load i16, ptr %43, align 4
  %45 = and i16 %44, 1
  %46 = icmp eq i16 %45, 0
  br i1 %46, label %77, label %47

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44, i32 11, i32 6
  %49 = load ptr, ptr %48, align 8
  %50 = icmp eq ptr %49, null
  br i1 %50, label %77, label %51

51:                                               ; preds = %47, %41
  %52 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 2
  %53 = load ptr, ptr %52, align 4
  %54 = icmp ne ptr %53, null
  %55 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 33
  %56 = load i32, ptr %55, align 2
  %57 = and i32 %56, 1024
  %58 = icmp eq i32 %57, 0
  %59 = select i1 %54, i1 %58, i1 false
  br i1 %59, label %77, label %60

60:                                               ; preds = %51
  %61 = and i32 %56, 8192
  %62 = icmp eq i32 %61, 0
  %63 = xor i1 %62, %1
  br i1 %63, label %77, label %64

64:                                               ; preds = %60
  br i1 %1, label %65, label %72

65:                                               ; preds = %64
  %66 = and i32 %56, 24
  %67 = icmp eq i32 %66, 0
  %68 = select i1 %5, i1 true, i1 %67
  br i1 %68, label %77, label %69

69:                                               ; preds = %65
  tail call void @pci_pme_active(ptr noundef %0, i1 noundef zeroext true) #25
  %70 = load i32, ptr %55, align 2
  %71 = or i32 %70, 8192
  br label %75

72:                                               ; preds = %64
  tail call void @pci_pme_active(ptr noundef %0, i1 noundef zeroext false) #25
  %73 = load i32, ptr %55, align 2
  %74 = and i32 %73, -8193
  br label %75

75:                                               ; preds = %72, %69
  %76 = phi i32 [ %74, %72 ], [ %71, %69 ]
  store i32 %76, ptr %55, align 2
  br label %77

77:                                               ; preds = %75, %65, %60, %51, %47, %42, %39, %28, %21, %17, %12
  %78 = phi i32 [ -22, %17 ], [ 0, %28 ], [ 0, %21 ], [ 0, %39 ], [ -22, %12 ], [ -22, %47 ], [ 0, %60 ], [ -19, %65 ], [ 0, %51 ], [ 0, %75 ], [ -22, %42 ]
  ret i32 %78
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pci_prepare_to_sleep(ptr noundef %0) #5 {
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44, i32 11, i32 1
  %3 = load i16, ptr %2, align 4
  %4 = and i16 %3, 1
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44, i32 11, i32 6
  %8 = load ptr, ptr %7, align 8
  %9 = icmp ne ptr %8, null
  br label %10

10:                                               ; preds = %6, %1
  %11 = phi i1 [ false, %1 ], [ %9, %6 ]
  %12 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 30
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 4
  br i1 %14, label %41, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 32
  %17 = load i8, ptr %16, align 1
  %18 = icmp eq i8 %17, 0
  %19 = xor i1 %11, true
  %20 = or i1 %18, %19
  %21 = select i1 %18, i32 0, i32 3
  br i1 %20, label %41, label %22

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 33
  %24 = load i32, ptr %23, align 2
  %25 = and i32 %24, 31
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %41, label %27

27:                                               ; preds = %22
  %28 = and i32 %24, 8
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %27
  %31 = and i32 %24, 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %30
  %34 = and i32 %24, 2
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = and i32 %24, 1
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %36, %33, %30, %27
  %40 = phi i32 [ 0, %36 ], [ 3, %27 ], [ 2, %30 ], [ 1, %33 ]
  br label %41

41:                                               ; preds = %39, %36, %22, %15, %10
  %42 = phi i32 [ 4, %10 ], [ %21, %15 ], [ %40, %39 ], [ 3, %36 ], [ 3, %22 ]
  br i1 %11, label %43, label %48

43:                                               ; preds = %41
  br i1 %5, label %80, label %44

44:                                               ; preds = %43
  %45 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44, i32 11, i32 6
  %46 = load ptr, ptr %45, align 8
  %47 = icmp eq ptr %46, null
  br i1 %47, label %80, label %48

48:                                               ; preds = %44, %41
  %49 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 2
  %50 = load ptr, ptr %49, align 4
  %51 = icmp ne ptr %50, null
  %52 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 33
  %53 = load i32, ptr %52, align 2
  %54 = and i32 %53, 1024
  %55 = icmp eq i32 %54, 0
  %56 = select i1 %51, i1 %55, i1 false
  br i1 %56, label %80, label %57

57:                                               ; preds = %48
  %58 = and i32 %53, 8192
  %59 = icmp eq i32 %58, 0
  %60 = xor i1 %11, %59
  br i1 %60, label %80, label %61

61:                                               ; preds = %57
  br i1 %11, label %62, label %75

62:                                               ; preds = %61
  %63 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 32
  %64 = load i8, ptr %63, align 1
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %80, label %66

66:                                               ; preds = %62
  %67 = shl nuw nsw i32 1, %42
  %68 = and i32 %67, 15
  %69 = or i32 %68, 16
  %70 = and i32 %53, %69
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %80, label %72

72:                                               ; preds = %66
  tail call void @pci_pme_active(ptr noundef %0, i1 noundef zeroext true) #25
  %73 = load i32, ptr %52, align 2
  %74 = or i32 %73, 8192
  br label %78

75:                                               ; preds = %61
  tail call void @pci_pme_active(ptr noundef %0, i1 noundef zeroext false) #25
  %76 = load i32, ptr %52, align 2
  %77 = and i32 %76, -8193
  br label %78

78:                                               ; preds = %75, %72
  %79 = phi i32 [ %77, %75 ], [ %74, %72 ]
  store i32 %79, ptr %52, align 2
  br label %80

80:                                               ; preds = %78, %66, %62, %57, %48, %44, %43
  %81 = tail call i32 @pci_set_power_state(ptr noundef %0, i32 noundef %42)
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %98, label %83

83:                                               ; preds = %80
  %84 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 2
  %85 = load ptr, ptr %84, align 4
  %86 = icmp ne ptr %85, null
  %87 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 33
  %88 = load i32, ptr %87, align 2
  %89 = and i32 %88, 1024
  %90 = icmp eq i32 %89, 0
  %91 = select i1 %86, i1 %90, i1 false
  %92 = and i32 %88, 8192
  %93 = icmp eq i32 %92, 0
  %94 = select i1 %91, i1 true, i1 %93
  br i1 %94, label %98, label %95

95:                                               ; preds = %83
  tail call void @pci_pme_active(ptr noundef %0, i1 noundef zeroext false) #25
  %96 = load i32, ptr %87, align 2
  %97 = and i32 %96, -8193
  store i32 %97, ptr %87, align 2
  br label %98

98:                                               ; preds = %95, %83, %80
  ret i32 %81
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pci_back_from_sleep(ptr noundef %0) #5 {
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 30
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %23, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 32
  %7 = load i8, ptr %6, align 1
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %5
  store i32 0, ptr %2, align 4
  br label %10

10:                                               ; preds = %9, %5
  %11 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 33
  %12 = load i32, ptr %11, align 2
  %13 = and i32 %12, 16384
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  tail call void @pci_walk_bus(ptr noundef nonnull %17, ptr noundef nonnull @pci_resume_one, ptr noundef null) #25
  br label %20

20:                                               ; preds = %19, %15, %10
  %21 = tail call fastcc i32 @pci_raw_set_power_state(ptr noundef %0, i32 noundef 0) #25
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %38

23:                                               ; preds = %20, %1
  %24 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 2
  %25 = load ptr, ptr %24, align 4
  %26 = icmp ne ptr %25, null
  %27 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 33
  %28 = load i32, ptr %27, align 2
  %29 = and i32 %28, 1024
  %30 = icmp eq i32 %29, 0
  %31 = select i1 %26, i1 %30, i1 false
  %32 = and i32 %28, 8192
  %33 = icmp eq i32 %32, 0
  %34 = select i1 %31, i1 true, i1 %33
  br i1 %34, label %38, label %35

35:                                               ; preds = %23
  tail call void @pci_pme_active(ptr noundef %0, i1 noundef zeroext false) #25
  %36 = load i32, ptr %27, align 2
  %37 = and i32 %36, -8193
  store i32 %37, ptr %27, align 2
  br label %38

38:                                               ; preds = %35, %23, %20
  %39 = phi i32 [ %21, %20 ], [ 0, %23 ], [ 0, %35 ]
  ret i32 %39
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pci_finish_runtime_suspend(ptr noundef %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 30
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 4
  br i1 %4, label %34, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44, i32 11, i32 1
  %7 = load i16, ptr %6, align 4
  %8 = and i16 %7, 1
  %9 = icmp eq i16 %8, 0
  %10 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 32
  %11 = load i8, ptr %10, align 1
  %12 = icmp eq i8 %11, 0
  %13 = or i1 %12, %9
  %14 = select i1 %12, i32 0, i32 3
  br i1 %13, label %34, label %15

15:                                               ; preds = %5
  %16 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 33
  %17 = load i32, ptr %16, align 2
  %18 = and i32 %17, 31
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %34, label %20

20:                                               ; preds = %15
  %21 = and i32 %17, 8
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %20
  %24 = and i32 %17, 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %23
  %27 = and i32 %17, 2
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = and i32 %17, 1
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %29, %26, %23, %20
  %33 = phi i32 [ 0, %29 ], [ 3, %20 ], [ 2, %23 ], [ 1, %26 ]
  br label %34

34:                                               ; preds = %32, %29, %15, %5, %1
  %35 = phi i32 [ 3, %15 ], [ 3, %29 ], [ %33, %32 ], [ %14, %5 ], [ 4, %1 ]
  %36 = phi i32 [ 0, %15 ], [ 0, %29 ], [ 0, %32 ], [ 0, %5 ], [ 16384, %1 ]
  %37 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 33
  %38 = load i32, ptr %37, align 2
  %39 = and i32 %38, -16385
  %40 = or i32 %39, %36
  store i32 %40, ptr %37, align 2
  %41 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 1
  %42 = load ptr, ptr %41, align 8
  %43 = and i32 %38, 31
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %96, label %45

45:                                               ; preds = %34
  %46 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 32
  %47 = load i8, ptr %46, align 1
  %48 = icmp eq i8 %47, 0
  br i1 %4, label %64, label %49

49:                                               ; preds = %45
  br i1 %48, label %96, label %50

50:                                               ; preds = %49
  %51 = and i32 %38, 8
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %50
  %54 = and i32 %38, 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %53
  %57 = and i32 %38, 2
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = and i32 %38, 1
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %59, %56, %53, %50
  %63 = phi i32 [ 0, %59 ], [ 3, %50 ], [ 2, %53 ], [ 1, %56 ]
  br label %65

64:                                               ; preds = %45
  br i1 %48, label %96, label %65

65:                                               ; preds = %64, %62, %59
  %66 = phi i32 [ 4, %64 ], [ 3, %59 ], [ %63, %62 ]
  %67 = shl nuw nsw i32 1, %66
  %68 = and i32 %67, %40
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %96, label %70

70:                                               ; preds = %65
  %71 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44, i32 11, i32 1
  %72 = load i16, ptr %71, align 4
  %73 = and i16 %72, 1
  %74 = icmp eq i16 %73, 0
  br i1 %74, label %75, label %96

75:                                               ; preds = %80, %70
  %76 = phi ptr [ %78, %80 ], [ %42, %70 ]
  %77 = getelementptr inbounds %struct.pci_bus, ptr %76, i32 0, i32 1
  %78 = load ptr, ptr %77, align 8
  %79 = icmp eq ptr %78, null
  br i1 %79, label %87, label %80

80:                                               ; preds = %75
  %81 = getelementptr inbounds %struct.pci_bus, ptr %76, i32 0, i32 4
  %82 = load ptr, ptr %81, align 4
  %83 = getelementptr inbounds %struct.pci_dev, ptr %82, i32 0, i32 44, i32 11, i32 1
  %84 = load i16, ptr %83, align 4
  %85 = and i16 %84, 1
  %86 = icmp eq i16 %85, 0
  br i1 %86, label %75, label %96

87:                                               ; preds = %75
  %88 = getelementptr inbounds %struct.pci_bus, ptr %76, i32 0, i32 20
  %89 = load ptr, ptr %88, align 8
  %90 = icmp eq ptr %89, null
  br i1 %90, label %96, label %91

91:                                               ; preds = %87
  %92 = getelementptr inbounds %struct.device, ptr %89, i32 0, i32 11, i32 1
  %93 = load i16, ptr %92, align 4
  %94 = and i16 %93, 1
  %95 = icmp ne i16 %94, 0
  br label %96

96:                                               ; preds = %91, %87, %80, %70, %65, %64, %49, %34
  %97 = phi i1 [ %95, %91 ], [ false, %34 ], [ false, %65 ], [ true, %70 ], [ false, %87 ], [ false, %64 ], [ false, %49 ], [ true, %80 ]
  %98 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 2
  %99 = load ptr, ptr %98, align 4
  %100 = icmp ne ptr %99, null
  %101 = and i32 %38, 1024
  %102 = icmp eq i32 %101, 0
  %103 = select i1 %100, i1 %102, i1 false
  br i1 %103, label %127, label %104

104:                                              ; preds = %96
  %105 = and i32 %38, 8192
  %106 = icmp eq i32 %105, 0
  %107 = xor i1 %106, %97
  br i1 %107, label %127, label %108

108:                                              ; preds = %104
  br i1 %97, label %109, label %122

109:                                              ; preds = %108
  %110 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 32
  %111 = load i8, ptr %110, align 1
  %112 = icmp eq i8 %111, 0
  br i1 %112, label %127, label %113

113:                                              ; preds = %109
  %114 = shl nuw i32 1, %35
  %115 = and i32 %114, 15
  %116 = or i32 %115, 16
  %117 = and i32 %116, %38
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %127, label %119

119:                                              ; preds = %113
  tail call void @pci_pme_active(ptr noundef %0, i1 noundef zeroext true) #25
  %120 = load i32, ptr %37, align 2
  %121 = or i32 %120, 8192
  br label %125

122:                                              ; preds = %108
  tail call void @pci_pme_active(ptr noundef %0, i1 noundef zeroext false) #25
  %123 = load i32, ptr %37, align 2
  %124 = and i32 %123, -8193
  br label %125

125:                                              ; preds = %122, %119
  %126 = phi i32 [ %124, %122 ], [ %121, %119 ]
  store i32 %126, ptr %37, align 2
  br label %127

127:                                              ; preds = %125, %113, %109, %104, %96
  %128 = tail call i32 @pci_set_power_state(ptr noundef %0, i32 noundef %35)
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %146, label %130

130:                                              ; preds = %127
  %131 = load ptr, ptr %98, align 4
  %132 = icmp ne ptr %131, null
  %133 = load i32, ptr %37, align 2
  %134 = and i32 %133, 1024
  %135 = icmp eq i32 %134, 0
  %136 = select i1 %132, i1 %135, i1 false
  %137 = and i32 %133, 8192
  %138 = icmp eq i32 %137, 0
  %139 = select i1 %136, i1 true, i1 %138
  br i1 %139, label %143, label %140

140:                                              ; preds = %130
  tail call void @pci_pme_active(ptr noundef %0, i1 noundef zeroext false) #25
  %141 = load i32, ptr %37, align 2
  %142 = and i32 %141, -8193
  br label %143

143:                                              ; preds = %140, %130
  %144 = phi i32 [ %133, %130 ], [ %142, %140 ]
  %145 = and i32 %144, -16385
  store i32 %145, ptr %37, align 2
  br label %146

146:                                              ; preds = %143, %127
  ret i32 %128
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local zeroext i1 @pci_dev_run_wake(ptr nocapture noundef readonly %0) #10 {
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 33
  %5 = load i32, ptr %4, align 2
  %6 = and i32 %5, 31
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %62, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 30
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 4
  %12 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 32
  %13 = load i8, ptr %12, align 1
  %14 = icmp eq i8 %13, 0
  br i1 %11, label %30, label %15

15:                                               ; preds = %8
  br i1 %14, label %62, label %16

16:                                               ; preds = %15
  %17 = and i32 %5, 8
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %16
  %20 = and i32 %5, 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %19
  %23 = and i32 %5, 2
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = and i32 %5, 1
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %25, %22, %19, %16
  %29 = phi i32 [ 0, %25 ], [ 3, %16 ], [ 2, %19 ], [ 1, %22 ]
  br label %31

30:                                               ; preds = %8
  br i1 %14, label %62, label %31

31:                                               ; preds = %30, %28, %25
  %32 = phi i32 [ 4, %30 ], [ 3, %25 ], [ %29, %28 ]
  %33 = shl nuw nsw i32 1, %32
  %34 = and i32 %33, %5
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %62, label %36

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44, i32 11, i32 1
  %38 = load i16, ptr %37, align 4
  %39 = and i16 %38, 1
  %40 = icmp eq i16 %39, 0
  br i1 %40, label %41, label %62

41:                                               ; preds = %46, %36
  %42 = phi ptr [ %44, %46 ], [ %3, %36 ]
  %43 = getelementptr inbounds %struct.pci_bus, ptr %42, i32 0, i32 1
  %44 = load ptr, ptr %43, align 8
  %45 = icmp eq ptr %44, null
  br i1 %45, label %53, label %46

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.pci_bus, ptr %42, i32 0, i32 4
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.pci_dev, ptr %48, i32 0, i32 44, i32 11, i32 1
  %50 = load i16, ptr %49, align 4
  %51 = and i16 %50, 1
  %52 = icmp eq i16 %51, 0
  br i1 %52, label %41, label %62

53:                                               ; preds = %41
  %54 = getelementptr inbounds %struct.pci_bus, ptr %42, i32 0, i32 20
  %55 = load ptr, ptr %54, align 8
  %56 = icmp eq ptr %55, null
  br i1 %56, label %62, label %57

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.device, ptr %55, i32 0, i32 11, i32 1
  %59 = load i16, ptr %58, align 4
  %60 = and i16 %59, 1
  %61 = icmp ne i16 %60, 0
  br label %62

62:                                               ; preds = %57, %53, %46, %36, %31, %30, %15, %1
  %63 = phi i1 [ %61, %57 ], [ false, %1 ], [ false, %31 ], [ true, %36 ], [ false, %53 ], [ false, %30 ], [ false, %15 ], [ true, %46 ]
  ret i1 %63
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @pci_dev_need_resume(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44, i32 11, i32 18
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 2
  br i1 %4, label %5, label %56

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44, i32 11, i32 15
  %7 = load i16, ptr %6, align 8
  %8 = and i16 %7, 7
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %10, label %56

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44, i32 11, i32 1
  %12 = load i16, ptr %11, align 4
  %13 = and i16 %12, 1
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44, i32 11, i32 6
  %17 = load ptr, ptr %16, align 8
  %18 = icmp eq ptr %17, null
  br label %19

19:                                               ; preds = %15, %10
  %20 = phi i1 [ true, %10 ], [ %18, %15 ]
  %21 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 30
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 4
  br i1 %23, label %49, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 32
  %26 = load i8, ptr %25, align 1
  %27 = icmp eq i8 %26, 0
  %28 = or i1 %20, %27
  %29 = select i1 %27, i32 0, i32 3
  br i1 %28, label %49, label %30

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 33
  %32 = load i32, ptr %31, align 2
  %33 = and i32 %32, 31
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %49, label %35

35:                                               ; preds = %30
  %36 = and i32 %32, 8
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %35
  %39 = and i32 %32, 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %38
  %42 = and i32 %32, 2
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = and i32 %32, 1
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %44, %41, %38, %35
  %48 = phi i32 [ 0, %44 ], [ 3, %35 ], [ 2, %38 ], [ 1, %41 ]
  br label %49

49:                                               ; preds = %47, %44, %30, %24, %19
  %50 = phi i32 [ 4, %19 ], [ %29, %24 ], [ %48, %47 ], [ 3, %44 ], [ 3, %30 ]
  %51 = icmp ne i32 %50, %22
  %52 = icmp ne i32 %50, 4
  %53 = and i1 %51, %52
  %54 = icmp ne i32 %22, 3
  %55 = and i1 %54, %53
  br label %56

56:                                               ; preds = %49, %5, %1
  %57 = phi i1 [ true, %5 ], [ %55, %49 ], [ true, %1 ]
  ret i1 %57
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pci_dev_adjust_pme(ptr noundef %0) local_unnamed_addr #5 {
  %2 = alloca i16, align 2
  %3 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44, i32 11, i32 3
  tail call void @_raw_spin_lock_irq(ptr noundef %3) #25
  %4 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44, i32 11, i32 18
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 2
  br i1 %6, label %7, label %44

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44, i32 11, i32 15
  %9 = load i16, ptr %8, align 8
  %10 = and i16 %9, 7
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %12, label %44

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44, i32 11, i32 1
  %14 = load i16, ptr %13, align 4
  %15 = and i16 %14, 1
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44, i32 11, i32 6
  %19 = load ptr, ptr %18, align 8
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %44

21:                                               ; preds = %17, %12
  %22 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 30
  %23 = load i32, ptr %22, align 4
  %24 = icmp slt i32 %23, 4
  br i1 %24, label %25, label %44

25:                                               ; preds = %21
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #25
  store i16 0, ptr %2, align 2, !annotation !8
  %26 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 33
  %27 = load i32, ptr %26, align 2
  %28 = and i32 %27, 31
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %43, label %30

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 32
  %32 = load i8, ptr %31, align 1
  %33 = zext i8 %32 to i32
  %34 = add nuw nsw i32 %33, 4
  %35 = call i32 @pci_read_config_word(ptr noundef %0, i32 noundef %34, ptr noundef nonnull %2) #25
  %36 = load i16, ptr %2, align 2
  %37 = and i16 %36, 32511
  %38 = or i16 %37, -32768
  store i16 %38, ptr %2, align 2
  %39 = load i8, ptr %31, align 1
  %40 = zext i8 %39 to i32
  %41 = add nuw nsw i32 %40, 4
  %42 = call i32 @pci_write_config_word(ptr noundef %0, i32 noundef %41, i16 noundef zeroext %38) #25
  br label %43

43:                                               ; preds = %30, %25
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #25
  br label %44

44:                                               ; preds = %43, %21, %17, %7, %1
  call void asm sideeffect "dmb ish", "~{memory}"() #25, !srcloc !21
  %45 = load i16, ptr %3, align 4
  %46 = add i16 %45, 1
  store i16 %46, ptr %3, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #25, !srcloc !22
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #25, !srcloc !23
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #25, !srcloc !24
  call void asm sideeffect "", "~{memory}"() #25, !srcloc !25
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pci_dev_complete_resume(ptr noundef %0) local_unnamed_addr #5 {
  %2 = alloca i16, align 2
  %3 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 33
  %6 = load i32, ptr %5, align 2
  %7 = and i32 %6, 31
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %95, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 30
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 4
  %13 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 32
  %14 = load i8, ptr %13, align 1
  %15 = icmp eq i8 %14, 0
  br i1 %12, label %31, label %16

16:                                               ; preds = %9
  br i1 %15, label %95, label %17

17:                                               ; preds = %16
  %18 = and i32 %6, 8
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %17
  %21 = and i32 %6, 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %20
  %24 = and i32 %6, 2
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = and i32 %6, 1
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %26, %23, %20, %17
  %30 = phi i32 [ 0, %26 ], [ 3, %17 ], [ 2, %20 ], [ 1, %23 ]
  br label %32

31:                                               ; preds = %9
  br i1 %15, label %95, label %32

32:                                               ; preds = %31, %29, %26
  %33 = phi i32 [ 4, %31 ], [ 3, %26 ], [ %30, %29 ]
  %34 = shl nuw nsw i32 1, %33
  %35 = and i32 %34, %6
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %95, label %37

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44, i32 11, i32 1
  %39 = load i16, ptr %38, align 4
  %40 = and i16 %39, 1
  %41 = icmp eq i16 %40, 0
  br i1 %41, label %42, label %63

42:                                               ; preds = %47, %37
  %43 = phi ptr [ %45, %47 ], [ %4, %37 ]
  %44 = getelementptr inbounds %struct.pci_bus, ptr %43, i32 0, i32 1
  %45 = load ptr, ptr %44, align 8
  %46 = icmp eq ptr %45, null
  br i1 %46, label %54, label %47

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.pci_bus, ptr %43, i32 0, i32 4
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.pci_dev, ptr %49, i32 0, i32 44, i32 11, i32 1
  %51 = load i16, ptr %50, align 4
  %52 = and i16 %51, 1
  %53 = icmp eq i16 %52, 0
  br i1 %53, label %42, label %63

54:                                               ; preds = %42
  %55 = getelementptr inbounds %struct.pci_bus, ptr %43, i32 0, i32 20
  %56 = load ptr, ptr %55, align 8
  %57 = icmp eq ptr %56, null
  br i1 %57, label %95, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.device, ptr %56, i32 0, i32 11, i32 1
  %60 = load i16, ptr %59, align 4
  %61 = and i16 %60, 1
  %62 = icmp eq i16 %61, 0
  br i1 %62, label %95, label %63

63:                                               ; preds = %58, %47, %37
  %64 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44, i32 11, i32 3
  tail call void @_raw_spin_lock_irq(ptr noundef %64) #25
  %65 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44, i32 11, i32 18
  %66 = load i32, ptr %65, align 4
  %67 = icmp eq i32 %66, 2
  br i1 %67, label %68, label %92

68:                                               ; preds = %63
  %69 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44, i32 11, i32 15
  %70 = load i16, ptr %69, align 8
  %71 = and i16 %70, 7
  %72 = icmp eq i16 %71, 0
  br i1 %72, label %73, label %92

73:                                               ; preds = %68
  %74 = load i32, ptr %10, align 4
  %75 = icmp slt i32 %74, 4
  br i1 %75, label %76, label %92

76:                                               ; preds = %73
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #25
  store i16 0, ptr %2, align 2, !annotation !8
  %77 = load i32, ptr %5, align 2
  %78 = and i32 %77, 31
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %91, label %80

80:                                               ; preds = %76
  %81 = load i8, ptr %13, align 1
  %82 = zext i8 %81 to i32
  %83 = add nuw nsw i32 %82, 4
  %84 = call i32 @pci_read_config_word(ptr noundef %0, i32 noundef %83, ptr noundef nonnull %2) #25
  %85 = load i16, ptr %2, align 2
  %86 = or i16 %85, -32512
  store i16 %86, ptr %2, align 2
  %87 = load i8, ptr %13, align 1
  %88 = zext i8 %87 to i32
  %89 = add nuw nsw i32 %88, 4
  %90 = call i32 @pci_write_config_word(ptr noundef %0, i32 noundef %89, i16 noundef zeroext %86) #25
  br label %91

91:                                               ; preds = %80, %76
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #25
  br label %92

92:                                               ; preds = %91, %73, %68, %63
  call void asm sideeffect "dmb ish", "~{memory}"() #25, !srcloc !21
  %93 = load i16, ptr %64, align 4
  %94 = add i16 %93, 1
  store i16 %94, ptr %64, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #25, !srcloc !22
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #25, !srcloc !23
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #25, !srcloc !24
  call void asm sideeffect "", "~{memory}"() #25, !srcloc !25
  br label %95

95:                                               ; preds = %92, %58, %54, %32, %31, %16, %1
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @pci_choose_state(ptr nocapture noundef readonly %0, [1 x i32] %1) #0 {
  %3 = extractvalue [1 x i32] %1, 0
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %14, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 30
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 4
  br i1 %8, label %14, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 32
  %11 = load i8, ptr %10, align 1
  %12 = icmp eq i8 %11, 0
  %13 = select i1 %12, i32 0, i32 3
  br label %14

14:                                               ; preds = %9, %5, %2
  %15 = phi i32 [ 0, %2 ], [ 4, %5 ], [ %13, %9 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pci_config_pm_runtime_get(ptr noundef %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  %3 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = tail call i32 @__pm_runtime_resume(ptr noundef nonnull %4, i32 noundef 4) #25
  br label %8

8:                                                ; preds = %6, %1
  %9 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44, i32 11, i32 13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %9) #25, !srcloc !13
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %9, ptr %9, i32 1, ptr elementtype(i32) %9) #25, !srcloc !26
  %11 = tail call i32 @pm_runtime_barrier(ptr noundef %2) #25
  %12 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 30
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 4
  br i1 %14, label %15, label %17

15:                                               ; preds = %8
  %16 = tail call i32 @__pm_runtime_resume(ptr noundef %2, i32 noundef 0) #25
  br label %17

17:                                               ; preds = %15, %8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_barrier(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pci_config_pm_runtime_put(ptr noundef %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  %3 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @__pm_runtime_idle(ptr noundef %2, i32 noundef 5) #25
  %6 = icmp eq ptr %4, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = tail call i32 @__pm_runtime_idle(ptr noundef nonnull %4, i32 noundef 4) #25
  br label %9

9:                                                ; preds = %7, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @pci_bridge_d3_possible(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 18
  %3 = load i8, ptr %2, align 4
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %32, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 24
  %7 = load i16, ptr %6, align 2
  %8 = lshr i16 %7, 4
  %9 = and i16 %8, 15
  %10 = zext i16 %9 to i32
  %11 = add nsw i32 %10, -4
  %12 = icmp ult i32 %11, 3
  br i1 %12, label %13, label %31

13:                                               ; preds = %5
  %14 = load i1, ptr @pci_bridge_d3_disable, align 1
  br i1 %14, label %32, label %15

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 49
  %17 = load i40, ptr %16, align 1
  %18 = and i40 %17, 16777216
  %19 = icmp ne i40 %18, 0
  %20 = load i1, ptr @pci_bridge_d3_force, align 1
  %21 = and i40 %17, 67108864
  %22 = icmp ne i40 %21, 0
  %23 = select i1 %20, i1 true, i1 %22
  %24 = select i1 %23, i1 true, i1 %19
  br i1 %24, label %32, label %25

25:                                               ; preds = %15
  %26 = tail call i32 @dmi_check_system(ptr noundef nonnull @bridge_d3_blacklist) #25
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = tail call i32 @dmi_get_bios_year() #25
  %30 = icmp sgt i32 %29, 2014
  br i1 %30, label %32, label %31

31:                                               ; preds = %28, %5
  br label %32

32:                                               ; preds = %31, %28, %25, %15, %13, %1
  %33 = phi i1 [ false, %31 ], [ false, %1 ], [ false, %13 ], [ %23, %15 ], [ false, %25 ], [ true, %28 ]
  ret i1 %33
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dmi_check_system(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dmi_get_bios_year() local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pci_bridge_d3_update(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = alloca i8, align 1
  %3 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44, i32 0, i32 7
  %4 = load i8, ptr %3, align 8
  %5 = and i8 %4, 2
  %6 = icmp eq i8 %5, 0
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #25
  store i8 1, ptr %2, align 1
  %7 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.pci_bus, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %103, label %12

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.pci_bus, ptr %8, i32 0, i32 4
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %103, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 18
  %18 = load i8, ptr %17, align 4
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %103, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 24
  %22 = load i16, ptr %21, align 2
  %23 = lshr i16 %22, 4
  %24 = and i16 %23, 15
  %25 = zext i16 %24 to i32
  %26 = add nsw i32 %25, -4
  %27 = icmp ult i32 %26, 3
  br i1 %27, label %28, label %103

28:                                               ; preds = %20
  %29 = load i1, ptr @pci_bridge_d3_disable, align 1
  br i1 %29, label %103, label %30

30:                                               ; preds = %28
  %31 = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 49
  %32 = load i40, ptr %31, align 1
  %33 = and i40 %32, 16777216
  %34 = icmp ne i40 %33, 0
  %35 = load i1, ptr @pci_bridge_d3_force, align 1
  %36 = and i40 %32, 67108864
  %37 = icmp ne i40 %36, 0
  %38 = select i1 %35, i1 true, i1 %37
  %39 = select i1 %38, i1 true, i1 %34
  br i1 %39, label %46, label %40

40:                                               ; preds = %30
  %41 = tail call i32 @dmi_check_system(ptr noundef nonnull @bridge_d3_blacklist) #25
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %103

43:                                               ; preds = %40
  %44 = tail call i32 @dmi_get_bios_year() #25
  %45 = icmp sgt i32 %44, 2014
  br i1 %45, label %47, label %103

46:                                               ; preds = %30
  br i1 %38, label %47, label %103

47:                                               ; preds = %46, %43
  br i1 %6, label %48, label %53

48:                                               ; preds = %47
  %49 = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 33
  %50 = load i32, ptr %49, align 2
  %51 = and i32 %50, 1024
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %82, label %103

53:                                               ; preds = %47
  %54 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 33
  %55 = load i32, ptr %54, align 2
  %56 = and i32 %55, 2560
  %57 = icmp eq i32 %56, 2048
  br i1 %57, label %58, label %81

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44, i32 11, i32 1
  %60 = load i16, ptr %59, align 4
  %61 = and i16 %60, 1
  %62 = icmp eq i16 %61, 0
  br i1 %62, label %74, label %63

63:                                               ; preds = %58
  %64 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44, i32 11, i32 6
  %65 = load ptr, ptr %64, align 8
  %66 = icmp eq ptr %65, null
  br i1 %66, label %74, label %67

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 32
  %69 = load i8, ptr %68, align 1
  %70 = icmp ne i8 %69, 0
  %71 = and i32 %55, 16
  %72 = icmp ne i32 %71, 0
  %73 = select i1 %70, i1 %72, i1 false
  br i1 %73, label %74, label %81

74:                                               ; preds = %67, %63, %58
  %75 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 2
  %76 = load ptr, ptr %75, align 4
  %77 = icmp eq ptr %76, null
  %78 = and i32 %55, 1024
  %79 = icmp ne i32 %78, 0
  %80 = select i1 %77, i1 true, i1 %79
  br i1 %80, label %82, label %81

81:                                               ; preds = %74, %67, %53
  store i8 0, ptr %2, align 1
  br label %92

82:                                               ; preds = %74, %48
  %83 = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 33
  %84 = load i32, ptr %83, align 2
  %85 = and i32 %84, 1024
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %82
  %88 = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 2
  %89 = load ptr, ptr %88, align 4
  call void @pci_walk_bus(ptr noundef %89, ptr noundef nonnull @pci_dev_check_d3cold, ptr noundef nonnull %2) #25
  %90 = load i8, ptr %2, align 1, !range !9
  %91 = zext i8 %90 to i32
  br label %92

92:                                               ; preds = %87, %82, %81
  %93 = phi i32 [ 0, %81 ], [ %91, %87 ], [ 1, %82 ]
  %94 = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 33
  %95 = load i32, ptr %94, align 2
  %96 = lshr i32 %95, 10
  %97 = and i32 %96, 1
  %98 = icmp eq i32 %97, %93
  br i1 %98, label %103, label %99

99:                                               ; preds = %92
  %100 = shl nuw nsw i32 %93, 10
  %101 = and i32 %95, -1025
  %102 = or i32 %100, %101
  store i32 %102, ptr %94, align 2
  call void @pci_bridge_d3_update(ptr noundef nonnull %14)
  br label %103

103:                                              ; preds = %99, %92, %48, %46, %43, %40, %28, %20, %16, %12, %1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #25
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @pci_dev_check_d3cold(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #9 {
  %3 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 33
  %4 = load i32, ptr %3, align 2
  %5 = and i32 %4, 2560
  %6 = icmp eq i32 %5, 2048
  br i1 %6, label %7, label %34

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44, i32 11, i32 1
  %9 = load i16, ptr %8, align 4
  %10 = and i16 %9, 1
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %23, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44, i32 11, i32 6
  %14 = load ptr, ptr %13, align 8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %23, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 32
  %18 = load i8, ptr %17, align 1
  %19 = icmp ne i8 %18, 0
  %20 = and i32 %4, 16
  %21 = icmp ne i32 %20, 0
  %22 = select i1 %19, i1 %21, i1 false
  br i1 %22, label %23, label %34

23:                                               ; preds = %16, %12, %7
  %24 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 2
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  %27 = and i32 %4, 1024
  %28 = icmp ne i32 %27, 0
  %29 = select i1 %26, i1 true, i1 %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %23
  %31 = load i8, ptr %1, align 1, !range !9
  %32 = xor i8 %31, 1
  %33 = zext i8 %32 to i32
  br label %35

34:                                               ; preds = %23, %16, %2
  store i8 0, ptr %1, align 1
  br label %35

35:                                               ; preds = %34, %30
  %36 = phi i32 [ %33, %30 ], [ 1, %34 ]
  ret i32 %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pci_d3cold_enable(ptr nocapture noundef %0) #5 {
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 33
  %3 = load i32, ptr %2, align 2
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = and i32 %3, -513
  store i32 %7, ptr %2, align 2
  tail call void @pci_bridge_d3_update(ptr noundef %0)
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pci_d3cold_disable(ptr nocapture noundef %0) #5 {
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 33
  %3 = load i32, ptr %2, align 2
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = or i32 %3, 512
  store i32 %7, ptr %2, align 2
  tail call void @pci_bridge_d3_update(ptr noundef %0)
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pci_pm_init(ptr noundef %0) local_unnamed_addr #5 {
  %2 = alloca i16, align 2
  %3 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #25
  store i16 0, ptr %2, align 2, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #25
  store i16 0, ptr %3, align 2, !annotation !8
  %4 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  tail call void @pm_runtime_forbid(ptr noundef %4) #25
  %5 = tail call i32 @__pm_runtime_set_status(ptr noundef %4, i32 noundef 0) #25
  tail call void @pm_runtime_enable(ptr noundef %4) #25
  %6 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44, i32 11, i32 1
  %7 = load i16, ptr %6, align 4
  %8 = and i16 %7, 8
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = or i16 %7, 2
  store i16 %11, ptr %6, align 4
  br label %12

12:                                               ; preds = %10, %1
  %13 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 33
  %14 = load i32, ptr %13, align 2
  %15 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 32
  store i8 0, ptr %15, align 1
  %16 = and i32 %14, -8224
  store i32 %16, ptr %13, align 2
  %17 = tail call zeroext i8 @pci_find_capability(ptr noundef %0, i32 noundef 1)
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %149, label %19

19:                                               ; preds = %12
  %20 = zext i8 %17 to i32
  %21 = add nuw nsw i32 %20, 2
  %22 = call i32 @pci_read_config_word(ptr noundef %0, i32 noundef %21, ptr noundef nonnull %3) #25
  %23 = load i16, ptr %3, align 2
  %24 = and i16 %23, 7
  %25 = icmp ugt i16 %24, 3
  br i1 %25, label %26, label %28

26:                                               ; preds = %19
  %27 = zext i16 %24 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.10, i32 noundef %27) #26
  br label %149

28:                                               ; preds = %19
  store i8 %17, ptr %15, align 1
  %29 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 35
  store i32 10, ptr %29, align 8
  %30 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 36
  store i32 100, ptr %30, align 4
  %31 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 18
  %32 = load i8, ptr %31, align 4
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %62, label %34

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 24
  %36 = load i16, ptr %35, align 2
  %37 = lshr i16 %36, 4
  %38 = and i16 %37, 15
  %39 = zext i16 %38 to i32
  %40 = add nsw i32 %39, -4
  %41 = icmp ult i32 %40, 3
  br i1 %41, label %42, label %62

42:                                               ; preds = %34
  %43 = load i1, ptr @pci_bridge_d3_disable, align 1
  br i1 %43, label %62, label %44

44:                                               ; preds = %42
  %45 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 49
  %46 = load i40, ptr %45, align 1
  %47 = and i40 %46, 16777216
  %48 = icmp ne i40 %47, 0
  %49 = load i1, ptr @pci_bridge_d3_force, align 1
  %50 = and i40 %46, 67108864
  %51 = icmp ne i40 %50, 0
  %52 = select i1 %49, i1 true, i1 %51
  %53 = select i1 %52, i1 true, i1 %48
  br i1 %53, label %64, label %54

54:                                               ; preds = %44
  %55 = call i32 @dmi_check_system(ptr noundef nonnull @bridge_d3_blacklist) #25
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %54
  %58 = call i32 @dmi_get_bios_year() #25
  %59 = icmp sgt i32 %58, 2014
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  %61 = load i32, ptr %13, align 2
  br label %66

62:                                               ; preds = %57, %54, %42, %34, %28
  %63 = load i32, ptr %13, align 2
  br label %68

64:                                               ; preds = %44
  %65 = load i32, ptr %13, align 2
  br i1 %52, label %66, label %68

66:                                               ; preds = %64, %60
  %67 = phi i32 [ %61, %60 ], [ %65, %64 ]
  br label %68

68:                                               ; preds = %66, %64, %62
  %69 = phi i32 [ %67, %66 ], [ %65, %64 ], [ %63, %62 ]
  %70 = phi i32 [ 1024, %66 ], [ 0, %64 ], [ 0, %62 ]
  %71 = and i32 %69, -3265
  %72 = or i32 %71, %70
  %73 = or i32 %72, 2048
  store i32 %73, ptr %13, align 2
  %74 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 1
  %75 = load ptr, ptr %74, align 8
  %76 = getelementptr inbounds %struct.pci_bus, ptr %75, i32 0, i32 4
  %77 = load ptr, ptr %76, align 4
  %78 = icmp eq ptr %77, null
  br i1 %78, label %84, label %79

79:                                               ; preds = %68
  %80 = getelementptr inbounds %struct.pci_dev, ptr %77, i32 0, i32 33
  %81 = load i32, ptr %80, align 2
  %82 = and i32 %81, 256
  %83 = icmp ne i32 %82, 0
  br label %84

84:                                               ; preds = %79, %68
  %85 = phi i1 [ %83, %79 ], [ false, %68 ]
  %86 = and i32 %69, 256
  %87 = icmp ne i32 %86, 0
  %88 = select i1 %87, i1 true, i1 %85
  br i1 %88, label %112, label %89

89:                                               ; preds = %84
  %90 = load i16, ptr %3, align 2
  %91 = and i16 %90, 512
  %92 = icmp eq i16 %91, 0
  %93 = or i32 %72, 2112
  %94 = select i1 %92, i32 %73, i32 %93
  %95 = lshr i16 %90, 3
  %96 = and i16 %95, 128
  %97 = zext i16 %96 to i32
  %98 = or i32 %94, %97
  %99 = and i16 %90, 1536
  %100 = icmp eq i16 %99, 0
  br i1 %100, label %102, label %101

101:                                              ; preds = %89
  store i32 %98, ptr %13, align 2
  br label %102

102:                                              ; preds = %101, %89
  %103 = and i32 %98, 192
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %112, label %105

105:                                              ; preds = %102
  %106 = and i32 %98, 128
  %107 = icmp eq i32 %106, 0
  %108 = and i32 %94, 64
  %109 = icmp eq i32 %108, 0
  %110 = select i1 %109, ptr @.str.13, ptr @.str.12
  %111 = select i1 %107, ptr @.str.13, ptr @.str.14
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %4, ptr noundef nonnull @.str.11, ptr noundef nonnull %110, ptr noundef nonnull %111) #26
  br label %112

112:                                              ; preds = %105, %102, %84
  %113 = load i16, ptr %3, align 2
  %114 = and i16 %113, -2048
  store i16 %114, ptr %3, align 2
  %115 = icmp eq i16 %114, 0
  br i1 %115, label %140, label %116

116:                                              ; preds = %112
  %117 = zext i16 %114 to i32
  %118 = and i32 %117, 2048
  %119 = icmp eq i32 %118, 0
  %120 = select i1 %119, ptr @.str.13, ptr @.str.16
  %121 = and i32 %117, 4096
  %122 = icmp eq i32 %121, 0
  %123 = select i1 %122, ptr @.str.13, ptr @.str.12
  %124 = and i32 %117, 8192
  %125 = icmp eq i32 %124, 0
  %126 = select i1 %125, ptr @.str.13, ptr @.str.14
  %127 = and i32 %117, 16384
  %128 = icmp eq i32 %127, 0
  %129 = select i1 %128, ptr @.str.13, ptr @.str.17
  %130 = and i32 %117, 32768
  %131 = icmp eq i32 %130, 0
  %132 = select i1 %131, ptr @.str.13, ptr @.str.18
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %4, ptr noundef nonnull @.str.15, ptr noundef nonnull %120, ptr noundef nonnull %123, ptr noundef nonnull %126, ptr noundef nonnull %129, ptr noundef nonnull %132) #26
  %133 = load i16, ptr %3, align 2
  %134 = lshr i16 %133, 11
  %135 = load i32, ptr %13, align 2
  %136 = and i32 %135, -64
  %137 = or i16 %134, 32
  %138 = zext i16 %137 to i32
  %139 = or i32 %136, %138
  store i32 %139, ptr %13, align 2
  call void @device_set_wakeup_capable(ptr noundef %4, i1 noundef zeroext true) #25
  call void @pci_pme_active(ptr noundef %0, i1 noundef zeroext false)
  br label %140

140:                                              ; preds = %116, %112
  %141 = call i32 @pci_read_config_word(ptr noundef %0, i32 noundef 6, ptr noundef nonnull %2) #25
  %142 = load i16, ptr %2, align 2
  %143 = and i16 %142, 1
  %144 = icmp eq i16 %143, 0
  br i1 %144, label %149, label %145

145:                                              ; preds = %140
  %146 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 31
  %147 = load i8, ptr %146, align 8
  %148 = or i8 %147, 1
  store i8 %148, ptr %146, align 8
  br label %149

149:                                              ; preds = %145, %140, %26, %12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #25
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_forbid(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #13

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_set_wakeup_capable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pci_ea_init(ptr noundef %0) local_unnamed_addr #5 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #25
  store i8 0, ptr %7, align 1, !annotation !8
  %8 = tail call zeroext i8 @pci_find_capability(ptr noundef %0, i32 noundef 20)
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %140, label %10

10:                                               ; preds = %1
  %11 = zext i8 %8 to i32
  %12 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 1
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 6
  %15 = load i32, ptr %14, align 4
  %16 = add nuw nsw i32 %11, 2
  %17 = call i32 @pci_bus_read_config_byte(ptr noundef %13, i32 noundef %15, i32 noundef %16, ptr noundef nonnull %7) #25
  %18 = load i8, ptr %7, align 1
  %19 = and i8 %18, 63
  store i8 %19, ptr %7, align 1
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %140, label %21

21:                                               ; preds = %10
  %22 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 13
  %23 = load i8, ptr %22, align 1
  %24 = icmp eq i8 %23, 1
  %25 = select i1 %24, i32 8, i32 4
  %26 = add nuw nsw i32 %25, %11
  %27 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 6
  %28 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  %29 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44, i32 3
  br label %30

30:                                               ; preds = %134, %21
  %31 = phi i32 [ 0, %21 ], [ %136, %134 ]
  %32 = phi i32 [ %26, %21 ], [ %135, %134 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #25
  store i32 0, ptr %2, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #25
  store i32 0, ptr %3, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #25
  store i32 0, ptr %4, align 4, !annotation !8
  %33 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef %32, ptr noundef nonnull %2) #25
  %34 = add i32 %32, 4
  %35 = load i32, ptr %2, align 4
  %36 = shl i32 %35, 2
  %37 = and i32 %36, 28
  %38 = add nuw nsw i32 %37, 4
  %39 = icmp sgt i32 %35, -1
  br i1 %39, label %134, label %40

40:                                               ; preds = %30
  %41 = lshr i32 %35, 4
  %42 = and i32 %41, 15
  %43 = lshr i32 %35, 8
  %44 = and i32 %43, 255
  %45 = add nsw i32 %44, -8
  %46 = icmp ult i32 %45, 245
  %47 = lshr i32 %35, 16
  %48 = and i32 %47, 255
  %49 = select i1 %46, i32 %48, i32 %43
  %50 = trunc i32 %49 to i8
  %51 = and i32 %49, 255
  %52 = icmp ugt i32 %51, 7
  br i1 %52, label %134, label %53

53:                                               ; preds = %40
  %54 = trunc i32 %42 to i8
  %55 = icmp ult i8 %54, 6
  %56 = icmp ult i8 %50, 3
  %57 = and i1 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %53
  %59 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 %42
  br label %62

60:                                               ; preds = %53
  %61 = icmp eq i8 %54, 8
  br i1 %61, label %62, label %65

62:                                               ; preds = %60, %58
  %63 = phi ptr [ %59, %58 ], [ %27, %60 ]
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %66

65:                                               ; preds = %62, %60
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.58, i32 noundef %42) #26
  br label %134

66:                                               ; preds = %62
  %67 = icmp ult i8 %50, 5
  br i1 %67, label %69, label %68

68:                                               ; preds = %66
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.59, i32 noundef %51) #26
  br label %134

69:                                               ; preds = %66
  %70 = shl i32 %49, 24
  %71 = ashr exact i32 %70, 24
  %72 = getelementptr inbounds [5 x i32], ptr @switch.table.pci_ea_init, i32 0, i32 %71
  %73 = load i32, ptr %72, align 4
  %74 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef %34, ptr noundef nonnull %3) #25
  %75 = load i32, ptr %3, align 4
  %76 = and i32 %75, -4
  %77 = add i32 %32, 8
  %78 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef %77, ptr noundef nonnull %4) #25
  %79 = add i32 %32, 12
  %80 = load i32, ptr %3, align 4
  %81 = and i32 %80, 2
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %89, label %83

83:                                               ; preds = %69
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #25
  store i32 0, ptr %5, align 4, !annotation !8
  %84 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef %79, ptr noundef nonnull %5) #25
  %85 = add i32 %32, 16
  %86 = or i32 %73, 1048576
  %87 = load i32, ptr %5, align 4
  %88 = icmp eq i32 %87, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #25
  br i1 %88, label %89, label %134

89:                                               ; preds = %83, %69
  %90 = phi i32 [ %85, %83 ], [ %79, %69 ]
  %91 = phi i32 [ %86, %83 ], [ %73, %69 ]
  %92 = load i32, ptr %4, align 4
  %93 = or i32 %92, 3
  %94 = add i32 %93, %76
  %95 = and i32 %92, 2
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %103, label %97

97:                                               ; preds = %89
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #25
  store i32 0, ptr %6, align 4, !annotation !8
  %98 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef %90, ptr noundef nonnull %6) #25
  %99 = add i32 %90, 4
  %100 = or i32 %91, 1048576
  %101 = load i32, ptr %6, align 4
  %102 = icmp eq i32 %101, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #25
  br i1 %102, label %103, label %134

103:                                              ; preds = %97, %89
  %104 = phi i32 [ %99, %97 ], [ %90, %89 ]
  %105 = phi i32 [ %100, %97 ], [ %91, %89 ]
  %106 = icmp ult i32 %94, %76
  br i1 %106, label %107, label %108

107:                                              ; preds = %103
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.60) #26
  br label %134

108:                                              ; preds = %103
  %109 = sub i32 %104, %32
  %110 = icmp eq i32 %38, %109
  br i1 %110, label %112, label %111

111:                                              ; preds = %108
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.61, i32 noundef %38, i32 noundef %109) #26
  br label %134

112:                                              ; preds = %108
  %113 = load ptr, ptr %29, align 4
  %114 = icmp eq ptr %113, null
  br i1 %114, label %115, label %117

115:                                              ; preds = %112
  %116 = load ptr, ptr %28, align 4
  br label %117

117:                                              ; preds = %115, %112
  %118 = phi ptr [ %116, %115 ], [ %113, %112 ]
  %119 = getelementptr inbounds %struct.resource, ptr %63, i32 0, i32 2
  store ptr %118, ptr %119, align 4
  store i32 %76, ptr %63, align 4
  %120 = getelementptr inbounds %struct.resource, ptr %63, i32 0, i32 1
  store i32 %94, ptr %120, align 4
  %121 = getelementptr inbounds %struct.resource, ptr %63, i32 0, i32 3
  store i32 %105, ptr %121, align 4
  %122 = icmp ult i32 %42, 6
  br i1 %122, label %123, label %124

123:                                              ; preds = %117
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %28, ptr noundef nonnull @.str.62, i32 noundef %42, ptr noundef nonnull %63, i32 noundef %51) #26
  br label %134

124:                                              ; preds = %117
  %125 = icmp eq i32 %42, 8
  br i1 %125, label %126, label %127

126:                                              ; preds = %124
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %28, ptr noundef nonnull @.str.63, ptr noundef nonnull %63, i32 noundef %51) #26
  br label %134

127:                                              ; preds = %124
  %128 = icmp ugt i32 %42, 8
  %129 = icmp ne i32 %42, 15
  %130 = and i1 %128, %129
  br i1 %130, label %131, label %133

131:                                              ; preds = %127
  %132 = add nsw i32 %42, -9
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %28, ptr noundef nonnull @.str.64, i32 noundef %132, ptr noundef nonnull %63, i32 noundef %51) #26
  br label %134

133:                                              ; preds = %127
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %28, ptr noundef nonnull @.str.65, i32 noundef %42, ptr noundef nonnull %63, i32 noundef %51) #26
  br label %134

134:                                              ; preds = %133, %131, %126, %123, %111, %107, %97, %83, %68, %65, %40, %30
  %135 = add i32 %38, %32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #25
  %136 = add nuw nsw i32 %31, 1
  %137 = load i8, ptr %7, align 1
  %138 = zext i8 %137 to i32
  %139 = icmp ult i32 %136, %138
  br i1 %139, label %30, label %140

140:                                              ; preds = %134, %10, %1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #25
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pci_add_cap_save_buffer(ptr noundef %0, i8 noundef zeroext %1, i32 noundef %2) local_unnamed_addr #5 {
  %4 = zext i8 %1 to i16
  %5 = zext i8 %1 to i32
  %6 = tail call zeroext i8 @pci_find_capability(ptr noundef %0, i32 noundef %5) #25
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %23, label %8

8:                                                ; preds = %3
  %9 = add i32 %2, 16
  %10 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %9, i32 noundef 3520) #27
  %11 = icmp eq ptr %10, null
  br i1 %11, label %23, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.pci_cap_saved_state, ptr %10, i32 0, i32 1
  store i16 %4, ptr %13, align 8
  %14 = getelementptr inbounds %struct.pci_cap_saved_state, ptr %10, i32 0, i32 1, i32 1
  store i8 0, ptr %14, align 2
  %15 = getelementptr inbounds %struct.pci_cap_saved_state, ptr %10, i32 0, i32 1, i32 2
  store i32 %2, ptr %15, align 4
  %16 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 53
  %17 = load ptr, ptr %16, align 4
  store volatile ptr %17, ptr %10, align 64
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.hlist_node, ptr %17, i32 0, i32 1
  store volatile ptr %10, ptr %20, align 4
  br label %21

21:                                               ; preds = %19, %12
  store volatile ptr %10, ptr %16, align 4
  %22 = getelementptr inbounds %struct.hlist_node, ptr %10, i32 0, i32 1
  store volatile ptr %16, ptr %22, align 4
  br label %23

23:                                               ; preds = %21, %8, %3
  %24 = phi i32 [ 0, %21 ], [ 0, %3 ], [ -12, %8 ]
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pci_add_ext_cap_save_buffer(ptr noundef %0, i16 noundef zeroext %1, i32 noundef %2) local_unnamed_addr #5 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #25
  store i32 0, ptr %4, align 4, !annotation !8
  %5 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 45
  %6 = load i32, ptr %5, align 8
  %7 = icmp slt i32 %6, 257
  br i1 %7, label %36, label %8

8:                                                ; preds = %3
  %9 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef 256, ptr noundef nonnull %4) #25
  %10 = icmp ne i32 %9, 0
  %11 = load i32, ptr %4, align 4
  %12 = icmp eq i32 %11, 0
  %13 = select i1 %10, i1 true, i1 %12
  br i1 %13, label %36, label %14

14:                                               ; preds = %8
  %15 = trunc i32 %11 to i16
  %16 = icmp eq i16 %15, %1
  br i1 %16, label %17, label %23

17:                                               ; preds = %14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #25
  br label %38

18:                                               ; preds = %30
  %19 = add nsw i32 %24, -1
  %20 = load i32, ptr %4, align 4
  %21 = trunc i32 %20 to i16
  %22 = icmp eq i16 %21, %1
  br i1 %22, label %37, label %23

23:                                               ; preds = %18, %14
  %24 = phi i32 [ %19, %18 ], [ 479, %14 ]
  %25 = phi i32 [ %20, %18 ], [ %11, %14 ]
  %26 = lshr i32 %25, 20
  %27 = trunc i32 %26 to i16
  %28 = and i16 %27, 4092
  %29 = icmp ult i16 %28, 256
  br i1 %29, label %36, label %30

30:                                               ; preds = %23
  %31 = zext i16 %28 to i32
  %32 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef %31, ptr noundef nonnull %4) #25
  %33 = icmp ne i32 %32, 0
  %34 = icmp eq i32 %24, 0
  %35 = select i1 %33, i1 true, i1 %34
  br i1 %35, label %36, label %18

36:                                               ; preds = %30, %23, %8, %3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #25
  br label %53

37:                                               ; preds = %18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #25
  br label %38

38:                                               ; preds = %37, %17
  %39 = add i32 %2, 16
  %40 = call noalias align 64 ptr @__kmalloc(i32 noundef %39, i32 noundef 3520) #27
  %41 = icmp eq ptr %40, null
  br i1 %41, label %53, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.pci_cap_saved_state, ptr %40, i32 0, i32 1
  store i16 %1, ptr %43, align 8
  %44 = getelementptr inbounds %struct.pci_cap_saved_state, ptr %40, i32 0, i32 1, i32 1
  store i8 1, ptr %44, align 2
  %45 = getelementptr inbounds %struct.pci_cap_saved_state, ptr %40, i32 0, i32 1, i32 2
  store i32 %2, ptr %45, align 4
  %46 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 53
  %47 = load ptr, ptr %46, align 4
  store volatile ptr %47, ptr %40, align 64
  %48 = icmp eq ptr %47, null
  br i1 %48, label %51, label %49

49:                                               ; preds = %42
  %50 = getelementptr inbounds %struct.hlist_node, ptr %47, i32 0, i32 1
  store volatile ptr %40, ptr %50, align 4
  br label %51

51:                                               ; preds = %49, %42
  store volatile ptr %40, ptr %46, align 4
  %52 = getelementptr inbounds %struct.hlist_node, ptr %40, i32 0, i32 1
  store volatile ptr %46, ptr %52, align 4
  br label %53

53:                                               ; preds = %51, %38, %36
  %54 = phi i32 [ 0, %51 ], [ -12, %38 ], [ 0, %36 ]
  ret i32 %54
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pci_allocate_cap_save_buffers(ptr noundef %0) local_unnamed_addr #5 {
  %2 = tail call zeroext i8 @pci_find_capability(ptr noundef %0, i32 noundef 16) #25
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %21, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 30) #28
  %7 = icmp eq ptr %6, null
  br i1 %7, label %19, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.pci_cap_saved_state, ptr %6, i32 0, i32 1
  store i16 16, ptr %9, align 8
  %10 = getelementptr inbounds %struct.pci_cap_saved_state, ptr %6, i32 0, i32 1, i32 1
  store i8 0, ptr %10, align 2
  %11 = getelementptr inbounds %struct.pci_cap_saved_state, ptr %6, i32 0, i32 1, i32 2
  store i32 14, ptr %11, align 4
  %12 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 53
  %13 = load ptr, ptr %12, align 4
  store volatile ptr %13, ptr %6, align 8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.hlist_node, ptr %13, i32 0, i32 1
  store volatile ptr %6, ptr %16, align 4
  br label %17

17:                                               ; preds = %15, %8
  store volatile ptr %6, ptr %12, align 4
  %18 = getelementptr inbounds %struct.hlist_node, ptr %6, i32 0, i32 1
  store volatile ptr %12, ptr %18, align 4
  br label %21

19:                                               ; preds = %4
  %20 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.19) #26
  br label %21

21:                                               ; preds = %19, %17, %1
  %22 = tail call zeroext i8 @pci_find_capability(ptr noundef %0, i32 noundef 7) #25
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %41, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %26 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %25, i32 noundef 3520, i32 noundef 18) #28
  %27 = icmp eq ptr %26, null
  br i1 %27, label %39, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.pci_cap_saved_state, ptr %26, i32 0, i32 1
  store i16 7, ptr %29, align 8
  %30 = getelementptr inbounds %struct.pci_cap_saved_state, ptr %26, i32 0, i32 1, i32 1
  store i8 0, ptr %30, align 2
  %31 = getelementptr inbounds %struct.pci_cap_saved_state, ptr %26, i32 0, i32 1, i32 2
  store i32 2, ptr %31, align 4
  %32 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 53
  %33 = load ptr, ptr %32, align 4
  store volatile ptr %33, ptr %26, align 8
  %34 = icmp eq ptr %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %28
  %36 = getelementptr inbounds %struct.hlist_node, ptr %33, i32 0, i32 1
  store volatile ptr %26, ptr %36, align 4
  br label %37

37:                                               ; preds = %35, %28
  store volatile ptr %26, ptr %32, align 4
  %38 = getelementptr inbounds %struct.hlist_node, ptr %26, i32 0, i32 1
  store volatile ptr %32, ptr %38, align 4
  br label %41

39:                                               ; preds = %24
  %40 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.20) #26
  br label %41

41:                                               ; preds = %39, %37, %21
  %42 = tail call i32 @pci_add_ext_cap_save_buffer(ptr noundef %0, i16 noundef zeroext 24, i32 noundef 4)
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.21) #26
  br label %46

46:                                               ; preds = %44, %41
  tail call void @pci_allocate_vc_save_buffers(ptr noundef %0) #25
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_allocate_vc_save_buffers(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pci_free_cap_save_buffers(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 53
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %5, %1
  %6 = phi ptr [ %7, %5 ], [ %3, %1 ]
  %7 = load ptr, ptr %6, align 4
  tail call void @kfree(ptr noundef nonnull %6) #25
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %5

9:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pci_configure_ari(ptr noundef %0) local_unnamed_addr #5 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #25
  store i32 0, ptr %3, align 4, !annotation !8
  %4 = load i1, ptr @pcie_ari_disabled, align 1
  br i1 %4, label %65, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 18
  %7 = load i8, ptr %6, align 4
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %65, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 6
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %65

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 1
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds %struct.pci_bus, ptr %15, i32 0, i32 4
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %65, label %19

19:                                               ; preds = %13
  %20 = call i32 @pcie_capability_read_dword(ptr noundef nonnull %17, i32 noundef 36, ptr noundef nonnull %3) #25
  %21 = load i32, ptr %3, align 4
  %22 = and i32 %21, 32
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %65, label %24

24:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #25
  store i32 0, ptr %2, align 4, !annotation !8
  %25 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 45
  %26 = load i32, ptr %25, align 8
  %27 = icmp slt i32 %26, 257
  br i1 %27, label %60, label %28

28:                                               ; preds = %24
  %29 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef 256, ptr noundef nonnull %2) #25
  %30 = icmp ne i32 %29, 0
  %31 = load i32, ptr %2, align 4
  %32 = icmp eq i32 %31, 0
  %33 = select i1 %30, i1 true, i1 %32
  br i1 %33, label %60, label %34

34:                                               ; preds = %28
  %35 = and i32 %31, 65535
  %36 = icmp eq i32 %35, 14
  br i1 %36, label %55, label %42

37:                                               ; preds = %49
  %38 = add nsw i32 %43, -1
  %39 = load i32, ptr %2, align 4
  %40 = and i32 %39, 65535
  %41 = icmp eq i32 %40, 14
  br i1 %41, label %55, label %42

42:                                               ; preds = %37, %34
  %43 = phi i32 [ %38, %37 ], [ 479, %34 ]
  %44 = phi i32 [ %39, %37 ], [ %31, %34 ]
  %45 = lshr i32 %44, 20
  %46 = trunc i32 %45 to i16
  %47 = and i16 %46, 4092
  %48 = icmp ult i16 %47, 256
  br i1 %48, label %60, label %49

49:                                               ; preds = %42
  %50 = zext i16 %47 to i32
  %51 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef %50, ptr noundef nonnull %2) #25
  %52 = icmp ne i32 %51, 0
  %53 = icmp eq i32 %43, 0
  %54 = select i1 %52, i1 true, i1 %53
  br i1 %54, label %60, label %37

55:                                               ; preds = %37, %34
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #25
  %56 = call i32 @pcie_capability_clear_and_set_word(ptr noundef nonnull %17, i32 noundef 40, i16 noundef zeroext 0, i16 noundef zeroext 32) #25
  %57 = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 49
  %58 = load i40, ptr %57, align 1
  %59 = or i40 %58, 16384
  store i40 %59, ptr %57, align 1
  br label %65

60:                                               ; preds = %49, %42, %28, %24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #25
  %61 = call i32 @pcie_capability_clear_and_set_word(ptr noundef nonnull %17, i32 noundef 40, i16 noundef zeroext 32, i16 noundef zeroext 0) #25
  %62 = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 49
  %63 = load i40, ptr %62, align 1
  %64 = and i40 %63, -16385
  store i40 %64, ptr %62, align 1
  br label %65

65:                                               ; preds = %60, %55, %19, %13, %9, %5, %1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #25
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @pci_acs_enabled(ptr noundef %0, i16 noundef zeroext %1) local_unnamed_addr #5 {
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = tail call i32 @pci_dev_specific_acs_enabled(ptr noundef %0, i16 noundef zeroext %1) #25
  %8 = icmp sgt i32 %7, -1
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = icmp ne i32 %7, 0
  br label %63

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 18
  %13 = load i8, ptr %12, align 4
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %63, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 24
  %17 = load i16, ptr %16, align 2
  %18 = lshr i16 %17, 4
  %19 = and i16 %18, 15
  %20 = zext i16 %19 to i32
  switch i32 %20, label %62 [
    i32 8, label %63
    i32 7, label %63
    i32 10, label %63
    i32 6, label %21
    i32 4, label %21
    i32 0, label %39
    i32 5, label %39
    i32 1, label %39
    i32 9, label %39
  ]

21:                                               ; preds = %15, %15
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #25
  store i16 0, ptr %5, align 2, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #25
  store i16 0, ptr %6, align 2, !annotation !8
  %22 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 60
  %23 = load i16, ptr %22, align 8
  %24 = icmp eq i16 %23, 0
  br i1 %24, label %37, label %25

25:                                               ; preds = %21
  %26 = zext i16 %23 to i32
  %27 = add nuw nsw i32 %26, 4
  %28 = call i32 @pci_read_config_word(ptr noundef %0, i32 noundef %27, ptr noundef nonnull %5) #25
  %29 = load i16, ptr %5, align 2
  %30 = or i16 %29, 32
  %31 = and i16 %30, %1
  %32 = add nuw nsw i32 %26, 6
  %33 = call i32 @pci_read_config_word(ptr noundef %0, i32 noundef %32, ptr noundef nonnull %6) #25
  %34 = load i16, ptr %6, align 2
  %35 = and i16 %34, %31
  %36 = icmp eq i16 %35, %31
  br label %37

37:                                               ; preds = %25, %21
  %38 = phi i1 [ %36, %25 ], [ false, %21 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #25
  br label %63

39:                                               ; preds = %15, %15, %15, %15
  %40 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 49
  %41 = load i40, ptr %40, align 1
  %42 = and i40 %41, 16
  %43 = icmp eq i40 %42, 0
  br i1 %43, label %62, label %44

44:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #25
  store i16 0, ptr %3, align 2, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #25
  store i16 0, ptr %4, align 2, !annotation !8
  %45 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 60
  %46 = load i16, ptr %45, align 8
  %47 = icmp eq i16 %46, 0
  br i1 %47, label %60, label %48

48:                                               ; preds = %44
  %49 = zext i16 %46 to i32
  %50 = add nuw nsw i32 %49, 4
  %51 = call i32 @pci_read_config_word(ptr noundef %0, i32 noundef %50, ptr noundef nonnull %3) #25
  %52 = load i16, ptr %3, align 2
  %53 = or i16 %52, 32
  %54 = and i16 %53, %1
  %55 = add nuw nsw i32 %49, 6
  %56 = call i32 @pci_read_config_word(ptr noundef %0, i32 noundef %55, ptr noundef nonnull %4) #25
  %57 = load i16, ptr %4, align 2
  %58 = and i16 %57, %54
  %59 = icmp eq i16 %58, %54
  br label %60

60:                                               ; preds = %48, %44
  %61 = phi i1 [ %59, %48 ], [ false, %44 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #25
  br label %63

62:                                               ; preds = %39, %15
  br label %63

63:                                               ; preds = %62, %60, %37, %15, %15, %15, %11, %9
  %64 = phi i1 [ %10, %9 ], [ true, %62 ], [ %61, %60 ], [ %38, %37 ], [ false, %11 ], [ false, %15 ], [ false, %15 ], [ false, %15 ]
  ret i1 %64
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_dev_specific_acs_enabled(ptr noundef, i16 noundef zeroext) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @pci_acs_path_enabled(ptr noundef %0, ptr noundef readnone %1, i16 noundef zeroext %2) local_unnamed_addr #5 {
  br label %4

4:                                                ; preds = %15, %3
  %5 = phi ptr [ %0, %3 ], [ %17, %15 ]
  %6 = tail call zeroext i1 @pci_acs_enabled(ptr noundef %5, i16 noundef zeroext %2)
  br i1 %6, label %7, label %19

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.pci_bus, ptr %9, i32 0, i32 1
  %11 = load ptr, ptr %10, align 8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %7
  %14 = icmp eq ptr %1, null
  br label %19

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.pci_bus, ptr %9, i32 0, i32 4
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %5, %1
  br i1 %18, label %19, label %4

19:                                               ; preds = %15, %13, %4
  %20 = phi i1 [ %14, %13 ], [ %6, %4 ], [ %6, %15 ]
  ret i1 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pci_acs_init(ptr noundef %0) local_unnamed_addr #5 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #25
  store i32 0, ptr %2, align 4, !annotation !8
  %3 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 45
  %4 = load i32, ptr %3, align 8
  %5 = icmp slt i32 %4, 257
  br i1 %5, label %33, label %6

6:                                                ; preds = %1
  %7 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef 256, ptr noundef nonnull %2) #25
  %8 = icmp ne i32 %7, 0
  %9 = load i32, ptr %2, align 4
  %10 = icmp eq i32 %9, 0
  %11 = select i1 %8, i1 true, i1 %10
  br i1 %11, label %33, label %12

12:                                               ; preds = %6
  %13 = and i32 %9, 65535
  %14 = icmp eq i32 %13, 13
  br i1 %14, label %33, label %20

15:                                               ; preds = %27
  %16 = add nsw i32 %21, -1
  %17 = load i32, ptr %2, align 4
  %18 = and i32 %17, 65535
  %19 = icmp eq i32 %18, 13
  br i1 %19, label %33, label %20

20:                                               ; preds = %15, %12
  %21 = phi i32 [ %16, %15 ], [ 479, %12 ]
  %22 = phi i32 [ %17, %15 ], [ %9, %12 ]
  %23 = lshr i32 %22, 20
  %24 = trunc i32 %23 to i16
  %25 = and i16 %24, 4092
  %26 = icmp ult i16 %25, 256
  br i1 %26, label %33, label %27

27:                                               ; preds = %20
  %28 = zext i16 %25 to i32
  %29 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef %28, ptr noundef nonnull %2) #25
  %30 = icmp ne i32 %29, 0
  %31 = icmp eq i32 %21, 0
  %32 = select i1 %30, i1 true, i1 %31
  br i1 %32, label %33, label %15

33:                                               ; preds = %27, %20, %15, %12, %6, %1
  %34 = phi i16 [ 0, %1 ], [ 0, %6 ], [ 256, %12 ], [ 0, %27 ], [ 0, %20 ], [ %25, %15 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #25
  %35 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 60
  store i16 %34, ptr %35, align 8
  call fastcc void @pci_enable_acs(ptr noundef %0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pci_rebar_get_possible_sizes(ptr noundef %0, i32 noundef %1) #5 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #25
  store i32 0, ptr %3, align 4, !annotation !8
  %4 = tail call fastcc i32 @pci_rebar_find_pos(ptr noundef %0, i32 noundef %1)
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %26, label %6

6:                                                ; preds = %2
  %7 = add nuw i32 %4, 4
  %8 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef %7, ptr noundef nonnull %3) #25
  %9 = load i32, ptr %3, align 4
  %10 = and i32 %9, 16777200
  %11 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 7
  %12 = load i16, ptr %11, align 8
  %13 = icmp eq i16 %12, 4098
  br i1 %13, label %14, label %23

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 8
  %16 = load i16, ptr %15, align 2
  %17 = icmp eq i16 %16, 29471
  %18 = icmp eq i32 %1, 0
  %19 = and i1 %18, %17
  %20 = icmp eq i32 %10, 28672
  %21 = select i1 %19, i1 %20, i1 false
  %22 = select i1 %21, i32 258048, i32 %10
  br label %23

23:                                               ; preds = %14, %6
  %24 = phi i32 [ %10, %6 ], [ %22, %14 ]
  %25 = lshr exact i32 %24, 4
  br label %26

26:                                               ; preds = %23, %2
  %27 = phi i32 [ %25, %23 ], [ 0, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #25
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @pci_rebar_find_pos(ptr noundef %0, i32 noundef %1) unnamed_addr #5 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #25
  store i32 0, ptr %4, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #25
  store i32 0, ptr %3, align 4, !annotation !8
  %5 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 45
  %6 = load i32, ptr %5, align 8
  %7 = icmp slt i32 %6, 257
  br i1 %7, label %35, label %8

8:                                                ; preds = %2
  %9 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef 256, ptr noundef nonnull %3) #25
  %10 = icmp ne i32 %9, 0
  %11 = load i32, ptr %3, align 4
  %12 = icmp eq i32 %11, 0
  %13 = select i1 %10, i1 true, i1 %12
  br i1 %13, label %35, label %14

14:                                               ; preds = %8
  %15 = and i32 %11, 65535
  %16 = icmp eq i32 %15, 21
  br i1 %16, label %36, label %22

17:                                               ; preds = %29
  %18 = add nsw i32 %23, -1
  %19 = load i32, ptr %3, align 4
  %20 = and i32 %19, 65535
  %21 = icmp eq i32 %20, 21
  br i1 %21, label %36, label %22

22:                                               ; preds = %17, %14
  %23 = phi i32 [ %18, %17 ], [ 479, %14 ]
  %24 = phi i32 [ %19, %17 ], [ %11, %14 ]
  %25 = lshr i32 %24, 20
  %26 = trunc i32 %25 to i16
  %27 = and i16 %26, 4092
  %28 = icmp ult i16 %27, 256
  br i1 %28, label %35, label %29

29:                                               ; preds = %22
  %30 = zext i16 %27 to i32
  %31 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef %30, ptr noundef nonnull %3) #25
  %32 = icmp ne i32 %31, 0
  %33 = icmp eq i32 %23, 0
  %34 = select i1 %32, i1 true, i1 %33
  br i1 %34, label %35, label %17

35:                                               ; preds = %29, %22, %8, %2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #25
  br label %99

36:                                               ; preds = %17, %14
  %37 = phi i32 [ 256, %14 ], [ %30, %17 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #25
  %38 = add nuw nsw i32 %37, 8
  %39 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef %38, ptr noundef nonnull %4) #25
  %40 = load i32, ptr %4, align 4
  %41 = lshr i32 %40, 5
  %42 = and i32 %41, 7
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %99, label %93

44:                                               ; preds = %93
  %45 = icmp eq i32 %42, 1
  br i1 %45, label %99, label %46

46:                                               ; preds = %44
  %47 = add nuw nsw i32 %37, 16
  %48 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef %47, ptr noundef nonnull %4) #25
  %49 = load i32, ptr %4, align 4
  %50 = and i32 %49, 7
  %51 = icmp eq i32 %50, %1
  br i1 %51, label %99, label %52

52:                                               ; preds = %46
  %53 = icmp eq i32 %42, 2
  br i1 %53, label %99, label %54

54:                                               ; preds = %52
  %55 = add nuw nsw i32 %37, 24
  %56 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef %55, ptr noundef nonnull %4) #25
  %57 = load i32, ptr %4, align 4
  %58 = and i32 %57, 7
  %59 = icmp eq i32 %58, %1
  br i1 %59, label %99, label %60

60:                                               ; preds = %54
  %61 = icmp eq i32 %42, 3
  br i1 %61, label %99, label %62

62:                                               ; preds = %60
  %63 = add nuw nsw i32 %37, 32
  %64 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef %63, ptr noundef nonnull %4) #25
  %65 = load i32, ptr %4, align 4
  %66 = and i32 %65, 7
  %67 = icmp eq i32 %66, %1
  br i1 %67, label %99, label %68

68:                                               ; preds = %62
  %69 = icmp eq i32 %42, 4
  br i1 %69, label %99, label %70

70:                                               ; preds = %68
  %71 = add nuw nsw i32 %37, 40
  %72 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef %71, ptr noundef nonnull %4) #25
  %73 = load i32, ptr %4, align 4
  %74 = and i32 %73, 7
  %75 = icmp eq i32 %74, %1
  br i1 %75, label %99, label %76

76:                                               ; preds = %70
  %77 = icmp eq i32 %42, 5
  br i1 %77, label %99, label %78

78:                                               ; preds = %76
  %79 = add nuw nsw i32 %37, 48
  %80 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef %79, ptr noundef nonnull %4) #25
  %81 = load i32, ptr %4, align 4
  %82 = and i32 %81, 7
  %83 = icmp eq i32 %82, %1
  br i1 %83, label %99, label %84

84:                                               ; preds = %78
  %85 = icmp eq i32 %42, 6
  br i1 %85, label %99, label %86

86:                                               ; preds = %84
  %87 = add nuw nsw i32 %37, 56
  %88 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef %87, ptr noundef nonnull %4) #25
  %89 = load i32, ptr %4, align 4
  %90 = and i32 %89, 7
  %91 = icmp eq i32 %90, %1
  %92 = select i1 %91, i32 %79, i32 -2
  br label %99

93:                                               ; preds = %36
  %94 = add nuw nsw i32 %37, 8
  %95 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef %94, ptr noundef nonnull %4) #25
  %96 = load i32, ptr %4, align 4
  %97 = and i32 %96, 7
  %98 = icmp eq i32 %97, %1
  br i1 %98, label %99, label %44

99:                                               ; preds = %93, %86, %84, %78, %76, %70, %68, %62, %60, %54, %52, %46, %44, %36, %35
  %100 = phi i32 [ -524, %35 ], [ -2, %36 ], [ %37, %93 ], [ -2, %44 ], [ %94, %46 ], [ -2, %52 ], [ %47, %54 ], [ -2, %60 ], [ %55, %62 ], [ -2, %68 ], [ %63, %70 ], [ -2, %76 ], [ %71, %78 ], [ -2, %84 ], [ %92, %86 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #25
  ret i32 %100
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pci_rebar_get_current_size(ptr noundef %0, i32 noundef %1) local_unnamed_addr #5 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #25
  store i32 0, ptr %3, align 4, !annotation !8
  %4 = tail call fastcc i32 @pci_rebar_find_pos(ptr noundef %0, i32 noundef %1)
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = add nuw i32 %4, 8
  %8 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef %7, ptr noundef nonnull %3) #25
  %9 = load i32, ptr %3, align 4
  %10 = lshr i32 %9, 8
  %11 = and i32 %10, 31
  br label %12

12:                                               ; preds = %6, %2
  %13 = phi i32 [ %11, %6 ], [ %4, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #25
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pci_rebar_set_size(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #5 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #25
  store i32 0, ptr %4, align 4, !annotation !8
  %5 = tail call fastcc i32 @pci_rebar_find_pos(ptr noundef %0, i32 noundef %1)
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %15, label %7

7:                                                ; preds = %3
  %8 = add nuw i32 %5, 8
  %9 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef %8, ptr noundef nonnull %4) #25
  %10 = load i32, ptr %4, align 4
  %11 = and i32 %10, -7937
  %12 = shl i32 %2, 8
  %13 = or i32 %11, %12
  store i32 %13, ptr %4, align 4
  %14 = call i32 @pci_write_config_dword(ptr noundef %0, i32 noundef %8, i32 noundef %13) #25
  br label %15

15:                                               ; preds = %7, %3
  %16 = phi i32 [ 0, %7 ], [ %5, %3 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #25
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_dword(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pci_enable_atomic_ops_to_root(ptr noundef %0, i32 noundef %1) #5 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #25
  store i32 0, ptr %3, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #25
  store i32 0, ptr %4, align 4, !annotation !8
  %7 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 49
  %8 = load i40, ptr %7, align 1
  %9 = and i40 %8, 8388608
  %10 = icmp eq i40 %9, 0
  br i1 %10, label %11, label %58

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 18
  %13 = load i8, ptr %12, align 4
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %58, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 24
  %17 = load i16, ptr %16, align 2
  %18 = lshr i16 %17, 4
  %19 = and i16 %18, 15
  %20 = zext i16 %19 to i32
  switch i32 %20, label %58 [
    i32 0, label %21
    i32 1, label %21
    i32 9, label %21
  ]

21:                                               ; preds = %15, %15, %15
  %22 = getelementptr inbounds %struct.pci_bus, ptr %6, i32 0, i32 1
  %23 = load ptr, ptr %22, align 8
  %24 = icmp eq ptr %23, null
  br i1 %24, label %56, label %25

25:                                               ; preds = %51, %21
  %26 = phi ptr [ %53, %51 ], [ %22, %21 ]
  %27 = phi ptr [ %52, %51 ], [ %6, %21 ]
  %28 = getelementptr inbounds %struct.pci_bus, ptr %27, i32 0, i32 4
  %29 = load ptr, ptr %28, align 4
  %30 = call i32 @pcie_capability_read_dword(ptr noundef %29, i32 noundef 36, ptr noundef nonnull %3) #25
  %31 = getelementptr inbounds %struct.pci_dev, ptr %29, i32 0, i32 24
  %32 = load i16, ptr %31, align 2
  %33 = lshr i16 %32, 4
  %34 = and i16 %33, 15
  %35 = zext i16 %34 to i32
  switch i32 %35, label %51 [
    i32 5, label %36
    i32 6, label %36
    i32 4, label %40
  ]

36:                                               ; preds = %25, %25
  %37 = load i32, ptr %3, align 4
  %38 = and i32 %37, 64
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %58, label %44

40:                                               ; preds = %25
  %41 = load i32, ptr %3, align 4
  %42 = and i32 %41, %1
  %43 = icmp eq i32 %42, %1
  br i1 %43, label %51, label %58

44:                                               ; preds = %36
  %45 = icmp eq i16 %34, 5
  br i1 %45, label %46, label %51

46:                                               ; preds = %44
  %47 = call i32 @pcie_capability_read_dword(ptr noundef %29, i32 noundef 40, ptr noundef nonnull %4) #25
  %48 = load i32, ptr %4, align 4
  %49 = and i32 %48, 128
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %46, %44, %40, %25
  %52 = load ptr, ptr %26, align 8
  %53 = getelementptr inbounds %struct.pci_bus, ptr %52, i32 0, i32 1
  %54 = load ptr, ptr %53, align 8
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %25

56:                                               ; preds = %51, %21
  %57 = call i32 @pcie_capability_clear_and_set_word(ptr noundef %0, i32 noundef 40, i16 noundef zeroext 0, i16 noundef zeroext 64) #25
  br label %58

58:                                               ; preds = %56, %46, %40, %36, %15, %11, %2
  %59 = phi i32 [ 0, %56 ], [ -22, %2 ], [ -22, %11 ], [ -22, %15 ], [ -22, %36 ], [ -22, %40 ], [ -22, %46 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #25
  ret i32 %59
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @pci_swizzle_interrupt_pin(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.pci_bus, ptr %4, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 49
  %10 = load i40, ptr %9, align 1
  %11 = and i40 %10, 16384
  %12 = icmp eq i40 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %8, %2
  %14 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 6
  %15 = load i32, ptr %14, align 4
  %16 = lshr i32 %15, 3
  %17 = and i32 %16, 31
  br label %18

18:                                               ; preds = %13, %8
  %19 = phi i32 [ %17, %13 ], [ 0, %8 ]
  %20 = zext i8 %1 to i32
  %21 = add nuw nsw i32 %20, 65535
  %22 = add nuw nsw i32 %21, %19
  %23 = trunc i32 %22 to i16
  %24 = srem i16 %23, 4
  %25 = trunc i16 %24 to i8
  %26 = add nsw i8 %25, 1
  ret i8 %26
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pci_get_interrupt_pin(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #14 {
  %3 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 23
  %4 = load i8, ptr %3, align 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %47, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.pci_bus, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %43, label %12

12:                                               ; preds = %29, %6
  %13 = phi ptr [ %39, %29 ], [ %8, %6 ]
  %14 = phi i8 [ %37, %29 ], [ %4, %6 ]
  %15 = phi ptr [ %17, %29 ], [ %0, %6 ]
  %16 = getelementptr inbounds %struct.pci_bus, ptr %13, i32 0, i32 4
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 49
  %21 = load i40, ptr %20, align 1
  %22 = and i40 %21, 16384
  %23 = icmp eq i40 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %19, %12
  %25 = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 6
  %26 = load i32, ptr %25, align 4
  %27 = lshr i32 %26, 3
  %28 = and i32 %27, 31
  br label %29

29:                                               ; preds = %24, %19
  %30 = phi i32 [ %28, %24 ], [ 0, %19 ]
  %31 = zext i8 %14 to i32
  %32 = add nuw nsw i32 %31, 65535
  %33 = add nuw nsw i32 %32, %30
  %34 = trunc i32 %33 to i16
  %35 = srem i16 %34, 4
  %36 = trunc i16 %35 to i8
  %37 = add nsw i8 %36, 1
  %38 = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 1
  %39 = load ptr, ptr %38, align 8
  %40 = getelementptr inbounds %struct.pci_bus, ptr %39, i32 0, i32 1
  %41 = load ptr, ptr %40, align 8
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %12

43:                                               ; preds = %29, %6
  %44 = phi ptr [ %0, %6 ], [ %17, %29 ]
  %45 = phi i8 [ %4, %6 ], [ %37, %29 ]
  store ptr %44, ptr %1, align 4
  %46 = zext i8 %45 to i32
  br label %47

47:                                               ; preds = %43, %2
  %48 = phi i32 [ %46, %43 ], [ -1, %2 ]
  ret i32 %48
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i8 @pci_common_swizzle(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #14 {
  %3 = load i8, ptr %1, align 1
  %4 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.pci_bus, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %40, label %9

9:                                                ; preds = %26, %2
  %10 = phi ptr [ %36, %26 ], [ %5, %2 ]
  %11 = phi i8 [ %34, %26 ], [ %3, %2 ]
  %12 = phi ptr [ %14, %26 ], [ %0, %2 ]
  %13 = getelementptr inbounds %struct.pci_bus, ptr %10, i32 0, i32 4
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 49
  %18 = load i40, ptr %17, align 1
  %19 = and i40 %18, 16384
  %20 = icmp eq i40 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %16, %9
  %22 = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 6
  %23 = load i32, ptr %22, align 4
  %24 = lshr i32 %23, 3
  %25 = and i32 %24, 31
  br label %26

26:                                               ; preds = %21, %16
  %27 = phi i32 [ %25, %21 ], [ 0, %16 ]
  %28 = zext i8 %11 to i32
  %29 = add nuw nsw i32 %28, 65535
  %30 = add nuw nsw i32 %29, %27
  %31 = trunc i32 %30 to i16
  %32 = srem i16 %31, 4
  %33 = trunc i16 %32 to i8
  %34 = add nsw i8 %33, 1
  %35 = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 1
  %36 = load ptr, ptr %35, align 8
  %37 = getelementptr inbounds %struct.pci_bus, ptr %36, i32 0, i32 1
  %38 = load ptr, ptr %37, align 8
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %9

40:                                               ; preds = %26, %2
  %41 = phi ptr [ %0, %2 ], [ %14, %26 ]
  %42 = phi i8 [ %3, %2 ], [ %34, %26 ]
  store i8 %42, ptr %1, align 1
  %43 = getelementptr inbounds %struct.pci_dev, ptr %41, i32 0, i32 6
  %44 = load i32, ptr %43, align 4
  %45 = trunc i32 %44 to i8
  %46 = lshr i8 %45, 3
  ret i8 %46
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pci_release_region(ptr noundef %0, i32 noundef %1) #5 {
  %3 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 %1, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %37, label %6

6:                                                ; preds = %2
  %7 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 %1
  %8 = load i32, ptr %7, align 8
  %9 = sub i32 %4, %8
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %37, label %11

11:                                               ; preds = %6
  %12 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 %1, i32 3
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, 256
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %11
  %17 = and i32 %13, 512
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %16, %11
  %20 = phi ptr [ @ioport_resource, %11 ], [ @iomem_resource, %16 ]
  %21 = add nuw i32 %9, 1
  tail call void @__release_region(ptr noundef nonnull %20, i32 noundef %8, i32 noundef %21) #25
  br label %22

22:                                               ; preds = %19, %16
  %23 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 49
  %24 = load i40, ptr %23, align 1
  %25 = and i40 %24, 262144
  %26 = icmp eq i40 %25, 0
  br i1 %26, label %37, label %27

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  %29 = tail call ptr @devres_find(ptr noundef %28, ptr noundef nonnull @pcim_release, ptr noundef null, ptr noundef null) #25
  %30 = icmp eq ptr %29, null
  br i1 %30, label %37, label %31

31:                                               ; preds = %27
  %32 = shl nuw i32 1, %1
  %33 = xor i32 %32, -1
  %34 = getelementptr inbounds %struct.pci_devres, ptr %29, i32 0, i32 1
  %35 = load i32, ptr %34, align 4
  %36 = and i32 %35, %33
  store i32 %36, ptr %34, align 4
  br label %37

37:                                               ; preds = %31, %27, %22, %6, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pci_request_region(ptr noundef %0, i32 noundef %1, ptr noundef %2) #5 {
  %4 = tail call fastcc i32 @__pci_request_region(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef 0)
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__pci_request_region(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #5 {
  %5 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 %1
  %6 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 %1, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %45, label %9

9:                                                ; preds = %4
  %10 = load i32, ptr %5, align 8
  %11 = sub i32 %7, %10
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %45, label %13

13:                                               ; preds = %9
  %14 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 %1, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, 256
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %13
  %19 = add nuw i32 %11, 1
  %20 = tail call ptr @__request_region(ptr noundef nonnull @ioport_resource, i32 noundef %10, i32 noundef %19, ptr noundef %2, i32 noundef 0) #25
  %21 = icmp eq ptr %20, null
  br i1 %21, label %43, label %29

22:                                               ; preds = %13
  %23 = and i32 %15, 512
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %22
  %26 = add nuw i32 %11, 1
  %27 = tail call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %10, i32 noundef %26, ptr noundef %2, i32 noundef %3) #25
  %28 = icmp eq ptr %27, null
  br i1 %28, label %43, label %29

29:                                               ; preds = %25, %22, %18
  %30 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 49
  %31 = load i40, ptr %30, align 1
  %32 = and i40 %31, 262144
  %33 = icmp eq i40 %32, 0
  br i1 %33, label %45, label %34

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  %36 = tail call ptr @devres_find(ptr noundef %35, ptr noundef nonnull @pcim_release, ptr noundef null, ptr noundef null) #25
  %37 = icmp eq ptr %36, null
  br i1 %37, label %45, label %38

38:                                               ; preds = %34
  %39 = shl nuw i32 1, %1
  %40 = getelementptr inbounds %struct.pci_devres, ptr %36, i32 0, i32 1
  %41 = load i32, ptr %40, align 4
  %42 = or i32 %41, %39
  store i32 %42, ptr %40, align 4
  br label %45

43:                                               ; preds = %25, %18
  %44 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %44, ptr noundef nonnull @.str.66, i32 noundef %1, ptr noundef %5) #26
  br label %45

45:                                               ; preds = %43, %38, %34, %29, %9, %4
  %46 = phi i32 [ -16, %43 ], [ 0, %9 ], [ 0, %38 ], [ 0, %34 ], [ 0, %4 ], [ 0, %29 ]
  ret i32 %46
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pci_release_selected_regions(ptr noundef %0, i32 noundef %1) #5 {
  %3 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 49
  %4 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  br label %5

5:                                                ; preds = %42, %2
  %6 = phi i32 [ 0, %2 ], [ %43, %42 ]
  %7 = shl nuw nsw i32 1, %6
  %8 = and i32 %7, %1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %42, label %10

10:                                               ; preds = %5
  %11 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 %6, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %42, label %14

14:                                               ; preds = %10
  %15 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 %6
  %16 = load i32, ptr %15, align 8
  %17 = sub i32 %12, %16
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %42, label %19

19:                                               ; preds = %14
  %20 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 %6, i32 3
  %21 = load i32, ptr %20, align 4
  %22 = and i32 %21, 256
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = and i32 %21, 512
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %24, %19
  %28 = phi ptr [ @ioport_resource, %19 ], [ @iomem_resource, %24 ]
  %29 = add nuw i32 %17, 1
  tail call void @__release_region(ptr noundef nonnull %28, i32 noundef %16, i32 noundef %29) #25
  br label %30

30:                                               ; preds = %27, %24
  %31 = load i40, ptr %3, align 1
  %32 = and i40 %31, 262144
  %33 = icmp eq i40 %32, 0
  br i1 %33, label %42, label %34

34:                                               ; preds = %30
  %35 = tail call ptr @devres_find(ptr noundef %4, ptr noundef nonnull @pcim_release, ptr noundef null, ptr noundef null) #25
  %36 = icmp eq ptr %35, null
  br i1 %36, label %42, label %37

37:                                               ; preds = %34
  %38 = xor i32 %7, -1
  %39 = getelementptr inbounds %struct.pci_devres, ptr %35, i32 0, i32 1
  %40 = load i32, ptr %39, align 4
  %41 = and i32 %40, %38
  store i32 %41, ptr %39, align 4
  br label %42

42:                                               ; preds = %37, %34, %30, %14, %10, %5
  %43 = add nuw nsw i32 %6, 1
  %44 = icmp eq i32 %43, 6
  br i1 %44, label %45, label %5

45:                                               ; preds = %42
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pci_request_selected_regions(ptr noundef %0, i32 noundef %1, ptr noundef %2) #5 {
  %4 = tail call fastcc i32 @__pci_request_selected_regions(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef 0)
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__pci_request_selected_regions(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #5 {
  %5 = and i32 %1, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %14, label %7

7:                                                ; preds = %4
  %8 = tail call fastcc i32 @__pci_request_region(ptr noundef %0, i32 noundef 0, ptr noundef %2, i32 noundef %3)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %14, label %84

10:                                               ; preds = %41, %35, %29, %23, %17
  %11 = phi i32 [ 0, %17 ], [ 1, %23 ], [ 2, %29 ], [ 3, %35 ], [ 4, %41 ]
  %12 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 49
  %13 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  br label %44

14:                                               ; preds = %7, %4
  %15 = and i32 %1, 2
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = tail call fastcc i32 @__pci_request_region(ptr noundef %0, i32 noundef 1, ptr noundef %2, i32 noundef %3)
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %10

20:                                               ; preds = %17, %14
  %21 = and i32 %1, 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  %24 = tail call fastcc i32 @__pci_request_region(ptr noundef %0, i32 noundef 2, ptr noundef %2, i32 noundef %3)
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %10

26:                                               ; preds = %23, %20
  %27 = and i32 %1, 8
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %26
  %30 = tail call fastcc i32 @__pci_request_region(ptr noundef %0, i32 noundef 3, ptr noundef %2, i32 noundef %3)
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %10

32:                                               ; preds = %29, %26
  %33 = and i32 %1, 16
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %32
  %36 = tail call fastcc i32 @__pci_request_region(ptr noundef %0, i32 noundef 4, ptr noundef %2, i32 noundef %3)
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %10

38:                                               ; preds = %35, %32
  %39 = and i32 %1, 32
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %84, label %41

41:                                               ; preds = %38
  %42 = tail call fastcc i32 @__pci_request_region(ptr noundef %0, i32 noundef 5, ptr noundef %2, i32 noundef %3)
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %84, label %10

44:                                               ; preds = %81, %10
  %45 = phi i32 [ %11, %10 ], [ %82, %81 ]
  %46 = shl nuw i32 1, %45
  %47 = and i32 %46, %1
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %81, label %49

49:                                               ; preds = %44
  %50 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 %45, i32 1
  %51 = load i32, ptr %50, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %81, label %53

53:                                               ; preds = %49
  %54 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 %45
  %55 = load i32, ptr %54, align 8
  %56 = sub i32 %51, %55
  %57 = icmp eq i32 %56, -1
  br i1 %57, label %81, label %58

58:                                               ; preds = %53
  %59 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 %45, i32 3
  %60 = load i32, ptr %59, align 4
  %61 = and i32 %60, 256
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %58
  %64 = and i32 %60, 512
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %63, %58
  %67 = phi ptr [ @ioport_resource, %58 ], [ @iomem_resource, %63 ]
  %68 = add nuw i32 %56, 1
  tail call void @__release_region(ptr noundef nonnull %67, i32 noundef %55, i32 noundef %68) #25
  br label %69

69:                                               ; preds = %66, %63
  %70 = load i40, ptr %12, align 1
  %71 = and i40 %70, 262144
  %72 = icmp eq i40 %71, 0
  br i1 %72, label %81, label %73

73:                                               ; preds = %69
  %74 = tail call ptr @devres_find(ptr noundef %13, ptr noundef nonnull @pcim_release, ptr noundef null, ptr noundef null) #25
  %75 = icmp eq ptr %74, null
  br i1 %75, label %81, label %76

76:                                               ; preds = %73
  %77 = xor i32 %46, -1
  %78 = getelementptr inbounds %struct.pci_devres, ptr %74, i32 0, i32 1
  %79 = load i32, ptr %78, align 4
  %80 = and i32 %79, %77
  store i32 %80, ptr %78, align 4
  br label %81

81:                                               ; preds = %76, %73, %69, %53, %49, %44
  %82 = add nsw i32 %45, -1
  %83 = icmp sgt i32 %45, 0
  br i1 %83, label %44, label %84

84:                                               ; preds = %81, %41, %38, %7
  %85 = phi i32 [ -16, %7 ], [ 0, %41 ], [ 0, %38 ], [ -16, %81 ]
  ret i32 %85
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pci_request_selected_regions_exclusive(ptr noundef %0, i32 noundef %1, ptr noundef %2) #5 {
  %4 = tail call fastcc i32 @__pci_request_selected_regions(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef 134217728)
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pci_release_regions(ptr noundef %0) #5 {
  tail call void @pci_release_selected_regions(ptr noundef %0, i32 noundef 63)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pci_request_regions(ptr noundef %0, ptr noundef %1) #5 {
  %3 = tail call fastcc i32 @__pci_request_selected_regions(ptr noundef %0, i32 noundef 63, ptr noundef %1, i32 noundef 0) #25
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pci_request_regions_exclusive(ptr noundef %0, ptr noundef %1) #5 {
  %3 = tail call fastcc i32 @__pci_request_selected_regions(ptr noundef %0, i32 noundef 63, ptr noundef %1, i32 noundef 134217728) #25
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pci_register_io_range(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #5 {
  %4 = xor i32 %1, -1
  %5 = add i32 %2, -1
  %6 = icmp ult i32 %5, %4
  br i1 %6, label %7, label %22

7:                                                ; preds = %3
  %8 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %9 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 2848, i32 noundef 36) #28
  %10 = icmp eq ptr %9, null
  br i1 %10, label %22, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.logic_pio_hwaddr, ptr %9, i32 0, i32 1
  store ptr %0, ptr %12, align 8
  %13 = getelementptr inbounds %struct.logic_pio_hwaddr, ptr %9, i32 0, i32 4
  store i32 %2, ptr %13, align 4
  %14 = getelementptr inbounds %struct.logic_pio_hwaddr, ptr %9, i32 0, i32 2
  store i32 %1, ptr %14, align 4
  %15 = getelementptr inbounds %struct.logic_pio_hwaddr, ptr %9, i32 0, i32 5
  store i32 1, ptr %15, align 8
  %16 = tail call i32 @logic_pio_register_range(ptr noundef nonnull %9) #25
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %11
  tail call void @kfree(ptr noundef nonnull %9) #25
  br label %19

19:                                               ; preds = %18, %11
  %20 = icmp eq i32 %16, -17
  %21 = select i1 %20, i32 0, i32 %16
  br label %22

22:                                               ; preds = %19, %7, %3
  %23 = phi i32 [ %21, %19 ], [ -22, %3 ], [ -12, %7 ]
  ret i32 %23
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @logic_pio_register_range(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pci_pio_to_address(i32 noundef %0) #5 {
  %2 = icmp ugt i32 %0, 1048574
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @logic_pio_to_hwaddr(i32 noundef %0) #25
  br label %5

5:                                                ; preds = %3, %1
  %6 = phi i32 [ %4, %3 ], [ -1, %1 ]
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @logic_pio_to_hwaddr(i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define weak dso_local i32 @pci_address_to_pio(i32 noundef %0) local_unnamed_addr #5 {
  %2 = tail call i32 @logic_pio_trans_cpuaddr(i32 noundef %0) #25
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @logic_pio_trans_cpuaddr(i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pci_unmap_iospace(ptr nocapture noundef readonly %0) #5 {
  %2 = load i32, ptr %0, align 4
  %3 = add i32 %2, -18874368
  %4 = getelementptr inbounds %struct.resource, ptr %0, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = add i32 %5, -18874367
  tail call void @vunmap_range(i32 noundef %3, i32 noundef %6) #25
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vunmap_range(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @devm_pci_remap_iospace(ptr noundef %0, ptr noundef %1, i32 noundef %2) #5 {
  %4 = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @devm_pci_unmap_iospace, i32 noundef 4, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str.22) #25
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %3
  %7 = tail call i32 @pci_remap_iospace(ptr noundef %1, i32 noundef %2) #25
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  tail call void @devres_free(ptr noundef nonnull %4) #25
  br label %11

10:                                               ; preds = %6
  store ptr %1, ptr %4, align 4
  tail call void @devres_add(ptr noundef %0, ptr noundef nonnull %4) #25
  br label %11

11:                                               ; preds = %10, %9, %3
  %12 = phi i32 [ -12, %3 ], [ 0, %10 ], [ %7, %9 ]
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @__devres_alloc_node(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @devm_pci_unmap_iospace(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #5 {
  %3 = load ptr, ptr %1, align 4
  %4 = load i32, ptr %3, align 4
  %5 = add i32 %4, -18874368
  %6 = getelementptr inbounds %struct.resource, ptr %3, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = add i32 %7, -18874367
  tail call void @vunmap_range(i32 noundef %5, i32 noundef %8) #25
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_remap_iospace(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_free(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_add(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @devm_pci_remap_cfgspace(ptr noundef %0, i32 noundef %1, i32 noundef %2) #5 {
  %4 = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @devm_ioremap_release, i32 noundef 4, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str.23) #25
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %3
  %7 = tail call ptr @pci_remap_cfgspace(i32 noundef %1, i32 noundef %2) #25
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  store ptr %7, ptr %4, align 4
  tail call void @devres_add(ptr noundef %0, ptr noundef nonnull %4) #25
  br label %11

10:                                               ; preds = %6
  tail call void @devres_free(ptr noundef nonnull %4) #25
  br label %11

11:                                               ; preds = %10, %9, %3
  %12 = phi ptr [ null, %3 ], [ null, %10 ], [ %7, %9 ]
  ret ptr %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_ioremap_release(ptr noundef, ptr noundef) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_remap_cfgspace(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @devm_pci_remap_cfg_resource(ptr noundef %0, ptr noundef %1) #5 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %5, !prof !17

4:                                                ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/pci/pci.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 4304, 0\0A.popsection", ""() #25, !srcloc !27
  unreachable

5:                                                ; preds = %2
  %6 = icmp eq ptr %1, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.resource, ptr %1, i32 0, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 7936
  %11 = icmp eq i32 %10, 512
  br i1 %11, label %13, label %12

12:                                               ; preds = %7, %5
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %0, ptr noundef nonnull @.str.24) #26
  br label %56

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.resource, ptr %1, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = load i32, ptr %1, align 4
  %17 = add i32 %15, 1
  %18 = sub i32 %17, %16
  %19 = getelementptr inbounds %struct.resource, ptr %1, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  %22 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %21, label %31, label %25

25:                                               ; preds = %13
  br i1 %24, label %26, label %28

26:                                               ; preds = %25
  %27 = load ptr, ptr %0, align 4
  br label %28

28:                                               ; preds = %26, %25
  %29 = phi ptr [ %27, %26 ], [ %23, %25 ]
  %30 = tail call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef nonnull %0, i32 noundef 3264, ptr noundef nonnull @.str.25, ptr noundef %29, ptr noundef nonnull %20) #25
  br label %37

31:                                               ; preds = %13
  br i1 %24, label %32, label %34

32:                                               ; preds = %31
  %33 = load ptr, ptr %0, align 4
  br label %34

34:                                               ; preds = %32, %31
  %35 = phi ptr [ %33, %32 ], [ %23, %31 ]
  %36 = tail call noalias ptr @devm_kstrdup(ptr noundef nonnull %0, ptr noundef %35, i32 noundef 3264) #25
  br label %37

37:                                               ; preds = %34, %28
  %38 = phi ptr [ %30, %28 ], [ %36, %34 ]
  %39 = icmp eq ptr %38, null
  br i1 %39, label %56, label %40

40:                                               ; preds = %37
  %41 = load i32, ptr %1, align 4
  %42 = tail call ptr @__devm_request_region(ptr noundef nonnull %0, ptr noundef nonnull @iomem_resource, i32 noundef %41, i32 noundef %18, ptr noundef nonnull %38) #25
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %0, ptr noundef nonnull @.str.26, ptr noundef nonnull %1) #26
  br label %56

45:                                               ; preds = %40
  %46 = load i32, ptr %1, align 4
  %47 = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @devm_ioremap_release, i32 noundef 4, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str.23) #25
  %48 = icmp eq ptr %47, null
  br i1 %48, label %54, label %49

49:                                               ; preds = %45
  %50 = tail call ptr @pci_remap_cfgspace(i32 noundef %46, i32 noundef %18) #25
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  tail call void @devres_free(ptr noundef nonnull %47) #25
  br label %54

53:                                               ; preds = %49
  store ptr %50, ptr %47, align 4
  tail call void @devres_add(ptr noundef nonnull %0, ptr noundef nonnull %47) #25
  br label %56

54:                                               ; preds = %52, %45
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %0, ptr noundef nonnull @.str.27, ptr noundef nonnull %1) #26
  %55 = load i32, ptr %1, align 4
  tail call void @__devm_release_region(ptr noundef nonnull %0, ptr noundef nonnull @iomem_resource, i32 noundef %55, i32 noundef %18) #25
  br label %56

56:                                               ; preds = %54, %53, %44, %37, %12
  %57 = phi ptr [ inttoptr (i32 -22 to ptr), %12 ], [ inttoptr (i32 -16 to ptr), %44 ], [ %50, %53 ], [ inttoptr (i32 -12 to ptr), %54 ], [ inttoptr (i32 -12 to ptr), %37 ]
  ret ptr %57
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kstrdup(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_request_region(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__devm_release_region(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define weak dso_local ptr @pcibios_setup(ptr noundef %0) local_unnamed_addr #15 section ".init.text" {
  ret ptr %0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define weak dso_local void @pcibios_set_master(ptr noundef %0) local_unnamed_addr #5 {
  %2 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #25
  store i8 0, ptr %2, align 1, !annotation !8
  %3 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 18
  %4 = load i8, ptr %3, align 4
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %21

6:                                                ; preds = %1
  %7 = call i32 @pci_read_config_byte(ptr noundef %0, i32 noundef 13, ptr noundef nonnull %2) #25
  %8 = load i8, ptr %2, align 1
  %9 = icmp ult i8 %8, 16
  br i1 %9, label %10, label %13

10:                                               ; preds = %6
  %11 = load i32, ptr @pcibios_max_latency, align 4
  %12 = call i32 @llvm.umin.i32(i32 %11, i32 64)
  br label %17

13:                                               ; preds = %6
  %14 = zext i8 %8 to i32
  %15 = load i32, ptr @pcibios_max_latency, align 4
  %16 = icmp ult i32 %15, %14
  br i1 %16, label %17, label %21

17:                                               ; preds = %13, %10
  %18 = phi i32 [ %12, %10 ], [ %15, %13 ]
  %19 = trunc i32 %18 to i8
  store i8 %19, ptr %2, align 1
  %20 = call i32 @pci_write_config_byte(ptr noundef %0, i32 noundef 13, i8 noundef zeroext %19) #25
  br label %21

21:                                               ; preds = %17, %13, %1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #25
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_byte(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_byte(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pci_set_master(ptr noundef %0) #5 {
  %2 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #25
  store i16 0, ptr %2, align 2, !annotation !8
  %3 = call i32 @pci_read_config_word(ptr noundef %0, i32 noundef 4, ptr noundef nonnull %2) #25
  %4 = load i16, ptr %2, align 2
  %5 = or i16 %4, 4
  %6 = icmp eq i16 %5, %4
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = call i32 @pci_write_config_word(ptr noundef %0, i32 noundef 4, i16 noundef zeroext %5) #25
  br label %9

9:                                                ; preds = %7, %1
  %10 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 49
  %11 = load i40, ptr %10, align 1
  %12 = or i40 %11, 32
  store i40 %12, ptr %10, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #25
  call void @pcibios_set_master(ptr noundef %0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pci_clear_master(ptr noundef %0) #5 {
  %2 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #25
  store i16 0, ptr %2, align 2, !annotation !8
  %3 = call i32 @pci_read_config_word(ptr noundef %0, i32 noundef 4, ptr noundef nonnull %2) #25
  %4 = load i16, ptr %2, align 2
  %5 = and i16 %4, -5
  %6 = icmp eq i16 %5, %4
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = call i32 @pci_write_config_word(ptr noundef %0, i32 noundef 4, i16 noundef zeroext %5) #25
  br label %9

9:                                                ; preds = %7, %1
  %10 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 49
  %11 = load i40, ptr %10, align 1
  %12 = and i40 %11, -33
  store i40 %12, ptr %10, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #25
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pci_set_cacheline_size(ptr noundef %0) #5 {
  %2 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #25
  store i8 0, ptr %2, align 1, !annotation !8
  %3 = load i8, ptr @pci_cache_line_size, align 1
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %20, label %5

5:                                                ; preds = %1
  %6 = call i32 @pci_read_config_byte(ptr noundef %0, i32 noundef 12, ptr noundef nonnull %2) #25
  %7 = load i8, ptr %2, align 1
  %8 = load i8, ptr @pci_cache_line_size, align 1
  %9 = icmp ult i8 %7, %8
  br i1 %9, label %13, label %10

10:                                               ; preds = %5
  %11 = urem i8 %7, %8
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %20, label %13

13:                                               ; preds = %10, %5
  %14 = call i32 @pci_write_config_byte(ptr noundef %0, i32 noundef 12, i8 noundef zeroext %8) #25
  %15 = call i32 @pci_read_config_byte(ptr noundef %0, i32 noundef 12, ptr noundef nonnull %2) #25
  %16 = load i8, ptr %2, align 1
  %17 = load i8, ptr @pci_cache_line_size, align 1
  %18 = icmp eq i8 %16, %17
  %19 = select i1 %18, i32 0, i32 -22
  br label %20

20:                                               ; preds = %13, %10, %1
  %21 = phi i32 [ -22, %1 ], [ 0, %10 ], [ %19, %13 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #25
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pci_set_mwi(ptr noundef %0) #5 {
  %2 = alloca i8, align 1
  %3 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #25
  store i16 0, ptr %3, align 2, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #25
  store i8 0, ptr %2, align 1, !annotation !8
  %4 = load i8, ptr @pci_cache_line_size, align 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %20, label %6

6:                                                ; preds = %1
  %7 = call i32 @pci_read_config_byte(ptr noundef %0, i32 noundef 12, ptr noundef nonnull %2) #25
  %8 = load i8, ptr %2, align 1
  %9 = load i8, ptr @pci_cache_line_size, align 1
  %10 = icmp ult i8 %8, %9
  br i1 %10, label %14, label %11

11:                                               ; preds = %6
  %12 = urem i8 %8, %9
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %21, label %14

14:                                               ; preds = %11, %6
  %15 = call i32 @pci_write_config_byte(ptr noundef %0, i32 noundef 12, i8 noundef zeroext %9) #25
  %16 = call i32 @pci_read_config_byte(ptr noundef %0, i32 noundef 12, ptr noundef nonnull %2) #25
  %17 = load i8, ptr %2, align 1
  %18 = load i8, ptr @pci_cache_line_size, align 1
  %19 = icmp eq i8 %17, %18
  br i1 %19, label %21, label %20

20:                                               ; preds = %14, %1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #25
  br label %29

21:                                               ; preds = %14, %11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #25
  %22 = call i32 @pci_read_config_word(ptr noundef %0, i32 noundef 4, ptr noundef nonnull %3) #25
  %23 = load i16, ptr %3, align 2
  %24 = and i16 %23, 16
  %25 = icmp eq i16 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = or i16 %23, 16
  store i16 %27, ptr %3, align 2
  %28 = call i32 @pci_write_config_word(ptr noundef %0, i32 noundef 4, i16 noundef zeroext %27) #25
  br label %29

29:                                               ; preds = %26, %21, %20
  %30 = phi i32 [ -22, %20 ], [ 0, %26 ], [ 0, %21 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #25
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pcim_set_mwi(ptr noundef %0) #5 {
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 49
  %3 = load i40, ptr %2, align 1
  %4 = and i40 %3, 262144
  %5 = icmp eq i40 %4, 0
  br i1 %5, label %14, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  %8 = tail call ptr @devres_find(ptr noundef %7, ptr noundef nonnull @pcim_release, ptr noundef null, ptr noundef null) #25
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %6
  %11 = load i8, ptr %8, align 4
  %12 = or i8 %11, 16
  store i8 %12, ptr %8, align 4
  %13 = tail call i32 @pci_set_mwi(ptr noundef %0)
  br label %14

14:                                               ; preds = %10, %6, %1
  %15 = phi i32 [ %13, %10 ], [ -12, %6 ], [ -12, %1 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pci_try_set_mwi(ptr noundef %0) #5 {
  %2 = tail call i32 @pci_set_mwi(ptr noundef %0)
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pci_clear_mwi(ptr noundef %0) #5 {
  %2 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #25
  store i16 0, ptr %2, align 2, !annotation !8
  %3 = call i32 @pci_read_config_word(ptr noundef %0, i32 noundef 4, ptr noundef nonnull %2) #25
  %4 = load i16, ptr %2, align 2
  %5 = and i16 %4, 16
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = and i16 %4, -17
  store i16 %8, ptr %2, align 2
  %9 = call i32 @pci_write_config_word(ptr noundef %0, i32 noundef 4, i16 noundef zeroext %8) #25
  br label %10

10:                                               ; preds = %7, %1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #25
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pci_disable_parity(ptr noundef %0) local_unnamed_addr #5 {
  %2 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #25
  store i16 0, ptr %2, align 2, !annotation !8
  %3 = call i32 @pci_read_config_word(ptr noundef %0, i32 noundef 4, ptr noundef nonnull %2) #25
  %4 = load i16, ptr %2, align 2
  %5 = and i16 %4, 64
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = and i16 %4, -65
  store i16 %8, ptr %2, align 2
  %9 = call i32 @pci_write_config_word(ptr noundef %0, i32 noundef 4, i16 noundef zeroext %8) #25
  br label %10

10:                                               ; preds = %7, %1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #25
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pci_intx(ptr noundef %0, i32 noundef %1) #5 {
  %3 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #25
  store i16 0, ptr %3, align 2, !annotation !8
  %4 = call i32 @pci_read_config_word(ptr noundef %0, i32 noundef 4, ptr noundef nonnull %3) #25
  %5 = icmp eq i32 %1, 0
  %6 = load i16, ptr %3, align 2
  %7 = and i16 %6, -1025
  %8 = select i1 %5, i16 1024, i16 0
  %9 = or i16 %7, %8
  %10 = icmp eq i16 %9, %6
  br i1 %10, label %29, label %11

11:                                               ; preds = %2
  %12 = call i32 @pci_write_config_word(ptr noundef %0, i32 noundef 4, i16 noundef zeroext %9) #25
  %13 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 49
  %14 = load i40, ptr %13, align 1
  %15 = and i40 %14, 262144
  %16 = icmp eq i40 %15, 0
  br i1 %16, label %29, label %17

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  %19 = call ptr @devres_find(ptr noundef %18, ptr noundef nonnull @pcim_release, ptr noundef null, ptr noundef null) #25
  %20 = icmp eq ptr %19, null
  br i1 %20, label %29, label %21

21:                                               ; preds = %17
  %22 = load i8, ptr %19, align 4
  %23 = and i8 %22, 8
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = and i8 %22, -13
  %27 = select i1 %5, i8 12, i8 8
  %28 = or i8 %26, %27
  store i8 %28, ptr %19, align 4
  br label %29

29:                                               ; preds = %25, %21, %17, %11, %2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #25
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @pci_check_and_mask_intx(ptr nocapture noundef readonly %0) #5 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #25
  store i32 0, ptr %2, align 4, !annotation !8
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @pci_lock) #25
  %6 = getelementptr inbounds %struct.pci_bus, ptr %4, i32 0, i32 9
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.pci_ops, ptr %7, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 6
  %11 = load i32, ptr %10, align 4
  %12 = call i32 %9(ptr noundef %4, i32 noundef %11, i32 noundef 4, i32 noundef 4, ptr noundef nonnull %2) #25
  %13 = load i32, ptr %2, align 4
  %14 = and i32 %13, 524288
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %1
  %17 = and i32 %13, 65535
  %18 = and i32 %13, 64511
  %19 = or i32 %18, 1024
  %20 = icmp eq i32 %17, %19
  br i1 %20, label %27, label %21

21:                                               ; preds = %16
  %22 = load ptr, ptr %6, align 8
  %23 = getelementptr inbounds %struct.pci_ops, ptr %22, i32 0, i32 4
  %24 = load ptr, ptr %23, align 4
  %25 = load i32, ptr %10, align 4
  %26 = call i32 %24(ptr noundef %4, i32 noundef %25, i32 noundef 4, i32 noundef 2, i32 noundef %19) #25
  br label %27

27:                                               ; preds = %21, %16, %1
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @pci_lock, i32 noundef %5) #25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #25
  ret i1 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @pci_check_and_unmask_intx(ptr nocapture noundef readonly %0) #5 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #25
  store i32 0, ptr %2, align 4, !annotation !8
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @pci_lock) #25
  %6 = getelementptr inbounds %struct.pci_bus, ptr %4, i32 0, i32 9
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.pci_ops, ptr %7, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 6
  %11 = load i32, ptr %10, align 4
  %12 = call i32 %9(ptr noundef %4, i32 noundef %11, i32 noundef 4, i32 noundef 4, ptr noundef nonnull %2) #25
  %13 = load i32, ptr %2, align 4
  %14 = and i32 %13, 524288
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %1
  %17 = and i32 %13, 65535
  %18 = and i32 %13, 64511
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %26, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr %6, align 8
  %22 = getelementptr inbounds %struct.pci_ops, ptr %21, i32 0, i32 4
  %23 = load ptr, ptr %22, align 4
  %24 = load i32, ptr %10, align 4
  %25 = call i32 %23(ptr noundef %4, i32 noundef %24, i32 noundef 4, i32 noundef 2, i32 noundef %18) #25
  br label %26

26:                                               ; preds = %20, %16, %1
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @pci_lock, i32 noundef %5) #25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #25
  ret i1 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pci_wait_for_pending_transaction(ptr noundef %0) #5 {
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 18
  %3 = load i8, ptr %2, align 4
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = zext i8 %3 to i32
  %7 = add nuw nsw i32 %6, 10
  %8 = tail call i32 @pci_wait_for_pending(ptr noundef %0, i32 noundef %7, i16 noundef zeroext 32)
  br label %9

9:                                                ; preds = %5, %1
  %10 = phi i32 [ %8, %5 ], [ 1, %1 ]
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pcie_flr(ptr noundef %0) #5 {
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 18
  %3 = load i8, ptr %2, align 4
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = zext i8 %3 to i32
  %7 = add nuw nsw i32 %6, 10
  %8 = tail call i32 @pci_wait_for_pending(ptr noundef %0, i32 noundef %7, i16 noundef zeroext 32) #25
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.28) #26
  br label %12

12:                                               ; preds = %10, %5, %1
  %13 = tail call i32 @pcie_capability_clear_and_set_word(ptr noundef %0, i32 noundef 8, i16 noundef zeroext 0, i16 noundef zeroext -32768) #25
  %14 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 31
  %15 = load i8, ptr %14, align 8
  %16 = and i8 %15, 1
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %12
  tail call void @msleep(i32 noundef 100) #25
  %19 = tail call fastcc i32 @pci_dev_wait(ptr noundef %0, ptr noundef nonnull @.str.29)
  br label %20

20:                                               ; preds = %18, %12
  %21 = phi i32 [ %19, %18 ], [ 0, %12 ]
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @pci_dev_wait(ptr noundef %0, ptr noundef %1) unnamed_addr #5 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #25
  store i32 0, ptr %3, align 4, !annotation !8
  %4 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef 4, ptr noundef nonnull %3) #25
  %5 = load i32, ptr %3, align 4
  %6 = icmp eq i32 %5, -1
  br i1 %6, label %7, label %28

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  br label %9

9:                                                ; preds = %18, %7
  %10 = phi i32 [ 1, %7 ], [ %19, %18 ]
  %11 = icmp sgt i32 %10, 60000
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = add nsw i32 %10, -1
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %8, ptr noundef nonnull @.str.67, i32 noundef %13, ptr noundef %1) #26
  br label %28

14:                                               ; preds = %9
  %15 = icmp sgt i32 %10, 1000
  br i1 %15, label %16, label %18

16:                                               ; preds = %14
  %17 = add nsw i32 %10, -1
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %8, ptr noundef nonnull @.str.68, i32 noundef %17, ptr noundef %1) #26
  br label %18

18:                                               ; preds = %16, %14
  call void @msleep(i32 noundef %10) #25
  %19 = shl i32 %10, 1
  %20 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef 4, ptr noundef nonnull %3) #25
  %21 = load i32, ptr %3, align 4
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %9, label %23

23:                                               ; preds = %18
  %24 = icmp sgt i32 %19, 1000
  br i1 %24, label %25, label %28

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  %27 = add nsw i32 %19, -1
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %26, ptr noundef nonnull @.str.69, i32 noundef %27, ptr noundef %1) #26
  br label %28

28:                                               ; preds = %25, %23, %12, %2
  %29 = phi i32 [ -25, %12 ], [ 0, %25 ], [ 0, %23 ], [ 0, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #25
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pcie_reset_flr(ptr noundef %0, i1 noundef zeroext %1) #5 {
  %3 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 50
  %4 = load i16, ptr %3, align 2
  %5 = and i16 %4, 1024
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %7, label %16

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 17
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 268435456
  %11 = icmp eq i32 %10, 0
  %12 = or i1 %11, %1
  %13 = select i1 %11, i32 -25, i32 0
  br i1 %12, label %16, label %14

14:                                               ; preds = %7
  %15 = tail call i32 @pcie_flr(ptr noundef %0)
  br label %16

16:                                               ; preds = %14, %7, %2
  %17 = phi i32 [ %15, %14 ], [ -25, %2 ], [ %13, %7 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @pcie_wait_for_link(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #5 {
  %3 = tail call fastcc zeroext i1 @pcie_wait_for_link_delay(ptr noundef %0, i1 noundef zeroext %1, i32 noundef 100)
  ret i1 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @pcie_wait_for_link_delay(ptr noundef %0, i1 noundef zeroext %1, i32 noundef %2) unnamed_addr #5 {
  %4 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #25
  store i16 0, ptr %4, align 2, !annotation !8
  %5 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 49
  %6 = load i40, ptr %5, align 1
  %7 = and i40 %6, 17179869184
  %8 = icmp eq i40 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %3
  %10 = add i32 %2, 1000
  tail call void @msleep(i32 noundef %10) #25
  br label %37

11:                                               ; preds = %3
  br i1 %1, label %12, label %13

12:                                               ; preds = %11
  tail call void @msleep(i32 noundef 20) #25
  br label %13

13:                                               ; preds = %12, %11
  %14 = call i32 @pcie_capability_read_word(ptr noundef %0, i32 noundef 18, ptr noundef nonnull %4) #25
  %15 = load i16, ptr %4, align 2
  %16 = and i16 %15, 8192
  %17 = lshr exact i16 %16, 13
  %18 = zext i1 %1 to i16
  %19 = icmp eq i16 %17, %18
  br i1 %19, label %30, label %20

20:                                               ; preds = %20, %13
  %21 = phi i32 [ %22, %20 ], [ 1000, %13 ]
  call void @msleep(i32 noundef 10) #25
  %22 = add nsw i32 %21, -10
  %23 = call i32 @pcie_capability_read_word(ptr noundef %0, i32 noundef 18, ptr noundef nonnull %4) #25
  %24 = load i16, ptr %4, align 2
  %25 = and i16 %24, 8192
  %26 = lshr exact i16 %25, 13
  %27 = icmp eq i16 %26, %18
  %28 = icmp ult i32 %21, 11
  %29 = select i1 %27, i1 true, i1 %28
  br i1 %29, label %30, label %20

30:                                               ; preds = %20, %13
  %31 = phi i16 [ %16, %13 ], [ %25, %20 ]
  %32 = phi i1 [ true, %13 ], [ %27, %20 ]
  %33 = icmp eq i16 %31, 0
  %34 = xor i1 %1, true
  %35 = select i1 %34, i1 true, i1 %33
  br i1 %35, label %37, label %36

36:                                               ; preds = %30
  call void @msleep(i32 noundef %2) #25
  br label %37

37:                                               ; preds = %36, %30, %9
  %38 = phi i1 [ true, %9 ], [ %32, %30 ], [ %32, %36 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #25
  ret i1 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pci_bridge_wait_for_secondary_bus(ptr noundef %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 43
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 3
  br i1 %4, label %62, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 13
  %7 = load i8, ptr %6, align 1
  %8 = add i8 %7, -1
  %9 = icmp ult i8 %8, 2
  br i1 %9, label %10, label %62

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 33
  %12 = load i32, ptr %11, align 2
  %13 = and i32 %12, 1024
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %62, label %15

15:                                               ; preds = %10
  tail call void @down_read(ptr noundef nonnull @pci_bus_sem) #25
  %16 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.pci_bus, ptr %17, i32 0, i32 3
  %21 = load volatile ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, %20
  br i1 %22, label %23, label %24

23:                                               ; preds = %19, %15
  tail call void @up_read(ptr noundef nonnull @pci_bus_sem) #25
  br label %62

24:                                               ; preds = %24, %19
  %25 = phi ptr [ %32, %24 ], [ %21, %19 ]
  %26 = phi i32 [ %30, %24 ], [ 100, %19 ]
  %27 = phi i32 [ %31, %24 ], [ 0, %19 ]
  %28 = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 36
  %29 = load i32, ptr %28, align 4
  %30 = tail call i32 @llvm.umin.i32(i32 %29, i32 %26) #25
  %31 = tail call i32 @llvm.umax.i32(i32 %29, i32 %27) #25
  %32 = load ptr, ptr %25, align 4
  %33 = icmp eq ptr %32, %20
  br i1 %33, label %34, label %24

34:                                               ; preds = %24
  %35 = tail call i32 @llvm.smax.i32(i32 %30, i32 %31) #25
  %36 = icmp eq i32 %35, 0
  tail call void @up_read(ptr noundef nonnull @pci_bus_sem) #25
  br i1 %36, label %62, label %37

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 18
  %39 = load i8, ptr %38, align 4
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = add i32 %35, 1000
  tail call void @msleep(i32 noundef %42) #25
  br label %62

43:                                               ; preds = %37
  %44 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 24
  %45 = load i16, ptr %44, align 2
  %46 = and i16 %45, 208
  %47 = icmp eq i16 %46, 64
  %48 = and i16 %45, 240
  %49 = icmp eq i16 %48, 128
  %50 = or i1 %47, %49
  br i1 %50, label %51, label %62

51:                                               ; preds = %43
  %52 = tail call i32 @pcie_get_speed_cap(ptr noundef %0)
  %53 = icmp ult i32 %52, 22
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  tail call void @msleep(i32 noundef %35) #25
  br label %59

55:                                               ; preds = %51
  %56 = tail call fastcc zeroext i1 @pcie_wait_for_link_delay(ptr noundef %0, i1 noundef zeroext true, i32 noundef %35)
  br i1 %56, label %59, label %57

57:                                               ; preds = %55
  %58 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %58, ptr noundef nonnull @.str.30) #26
  br label %62

59:                                               ; preds = %55, %54
  %60 = tail call zeroext i1 @pci_device_is_present(ptr noundef %21)
  br i1 %60, label %62, label %61

61:                                               ; preds = %59
  tail call void @msleep(i32 noundef %35) #25
  br label %62

62:                                               ; preds = %61, %59, %57, %43, %41, %34, %23, %10, %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pcie_get_speed_cap(ptr noundef %0) #5 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #25
  store i32 0, ptr %2, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #25
  store i32 0, ptr %3, align 4, !annotation !8
  %4 = call i32 @pcie_capability_read_dword(ptr noundef %0, i32 noundef 44, ptr noundef nonnull %2) #25
  %5 = load i32, ptr %2, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %26, label %7

7:                                                ; preds = %1
  %8 = and i32 %5, 64
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %34

10:                                               ; preds = %7
  %11 = and i32 %5, 32
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %34

13:                                               ; preds = %10
  %14 = and i32 %5, 16
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %34

16:                                               ; preds = %13
  %17 = and i32 %5, 8
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %34

19:                                               ; preds = %16
  %20 = and i32 %5, 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %34

22:                                               ; preds = %19
  %23 = and i32 %5, 2
  %24 = icmp eq i32 %23, 0
  %25 = select i1 %24, i32 255, i32 20
  br label %34

26:                                               ; preds = %1
  %27 = call i32 @pcie_capability_read_dword(ptr noundef %0, i32 noundef 12, ptr noundef nonnull %3) #25
  %28 = load i32, ptr %3, align 4
  %29 = and i32 %28, 15
  %30 = icmp eq i32 %29, 1
  %31 = select i1 %30, i32 20, i32 255
  %32 = icmp eq i32 %29, 2
  %33 = select i1 %32, i32 21, i32 %31
  br label %34

34:                                               ; preds = %26, %22, %19, %16, %13, %10, %7
  %35 = phi i32 [ 25, %7 ], [ 24, %10 ], [ 23, %13 ], [ 22, %16 ], [ %25, %22 ], [ 21, %19 ], [ %33, %26 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #25
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pci_reset_secondary_bus(ptr noundef %0) local_unnamed_addr #5 {
  %2 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #25
  store i16 0, ptr %2, align 2, !annotation !8
  %3 = call i32 @pci_read_config_word(ptr noundef %0, i32 noundef 62, ptr noundef nonnull %2) #25
  %4 = load i16, ptr %2, align 2
  %5 = or i16 %4, 64
  store i16 %5, ptr %2, align 2
  %6 = call i32 @pci_write_config_word(ptr noundef %0, i32 noundef 62, i16 noundef zeroext %5) #25
  call void @msleep(i32 noundef 2) #25
  %7 = load i16, ptr %2, align 2
  %8 = and i16 %7, -65
  store i16 %8, ptr %2, align 2
  %9 = call i32 @pci_write_config_word(ptr noundef %0, i32 noundef 62, i16 noundef zeroext %8) #25
  call void @msleep(i32 noundef 1000) #25
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #25
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define weak dso_local void @pcibios_reset_secondary_bus(ptr noundef %0) local_unnamed_addr #5 {
  %2 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #25
  store i16 0, ptr %2, align 2, !annotation !8
  %3 = call i32 @pci_read_config_word(ptr noundef %0, i32 noundef 62, ptr noundef nonnull %2) #25
  %4 = load i16, ptr %2, align 2
  %5 = or i16 %4, 64
  store i16 %5, ptr %2, align 2
  %6 = call i32 @pci_write_config_word(ptr noundef %0, i32 noundef 62, i16 noundef zeroext %5) #25
  call void @msleep(i32 noundef 2) #25
  %7 = load i16, ptr %2, align 2
  %8 = and i16 %7, -65
  store i16 %8, ptr %2, align 2
  %9 = call i32 @pci_write_config_word(ptr noundef %0, i32 noundef 62, i16 noundef zeroext %8) #25
  call void @msleep(i32 noundef 1000) #25
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #25
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pci_bridge_secondary_bus_reset(ptr noundef %0) #5 {
  tail call void @pcibios_reset_secondary_bus(ptr noundef %0)
  %2 = tail call fastcc i32 @pci_dev_wait(ptr noundef %0, ptr noundef nonnull @.str.31)
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pci_dev_lock(ptr noundef %0) #5 {
  tail call void @pci_cfg_access_lock(ptr noundef %0) #25
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44, i32 9
  tail call void @mutex_lock(ptr noundef %2) #25
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_cfg_access_lock(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pci_dev_trylock(ptr noundef %0) #5 {
  %2 = tail call zeroext i1 @pci_cfg_access_trylock(ptr noundef %0) #25
  br i1 %2, label %3, label %8

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44, i32 9
  %5 = tail call i32 @mutex_trylock(ptr noundef %4) #25
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  tail call void @pci_cfg_access_unlock(ptr noundef %0) #25
  br label %8

8:                                                ; preds = %7, %3, %1
  %9 = phi i32 [ 1, %3 ], [ 0, %7 ], [ 0, %1 ]
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @pci_cfg_access_trylock(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_cfg_access_unlock(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pci_dev_unlock(ptr noundef %0) #5 {
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44, i32 9
  tail call void @mutex_unlock(ptr noundef %2) #25
  tail call void @pci_cfg_access_unlock(ptr noundef %0) #25
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal zeroext i16 @pci_dev_reset_method_attr_is_visible(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 1060
  %5 = load i8, ptr %4, align 4
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.attribute, ptr %1, i32 0, i32 1
  %9 = load i16, ptr %8, align 4
  br label %10

10:                                               ; preds = %7, %3
  %11 = phi i16 [ %9, %7 ], [ 0, %3 ]
  ret i16 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__pci_reset_function_locked(ptr noundef %0) #5 {
  %2 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 66, i32 0
  %3 = load i8, ptr %2, align 1
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %70, label %5

5:                                                ; preds = %1
  %6 = zext i8 %3 to i32
  %7 = getelementptr [7 x %struct.pci_reset_fn_method], ptr @pci_reset_fn_methods, i32 0, i32 %6
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 %8(ptr noundef %0, i1 noundef zeroext false) #25
  %10 = icmp eq i32 %9, -25
  br i1 %10, label %11, label %70

11:                                               ; preds = %5
  %12 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 66, i32 1
  %13 = load i8, ptr %12, align 1
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %70, label %15

15:                                               ; preds = %11
  %16 = zext i8 %13 to i32
  %17 = getelementptr [7 x %struct.pci_reset_fn_method], ptr @pci_reset_fn_methods, i32 0, i32 %16
  %18 = load ptr, ptr %17, align 4
  %19 = tail call i32 %18(ptr noundef %0, i1 noundef zeroext false) #25
  %20 = icmp eq i32 %19, -25
  br i1 %20, label %21, label %70

21:                                               ; preds = %15
  %22 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 66, i32 2
  %23 = load i8, ptr %22, align 1
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %70, label %25

25:                                               ; preds = %21
  %26 = zext i8 %23 to i32
  %27 = getelementptr [7 x %struct.pci_reset_fn_method], ptr @pci_reset_fn_methods, i32 0, i32 %26
  %28 = load ptr, ptr %27, align 4
  %29 = tail call i32 %28(ptr noundef %0, i1 noundef zeroext false) #25
  %30 = icmp eq i32 %29, -25
  br i1 %30, label %31, label %70

31:                                               ; preds = %25
  %32 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 66, i32 3
  %33 = load i8, ptr %32, align 1
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %70, label %35

35:                                               ; preds = %31
  %36 = zext i8 %33 to i32
  %37 = getelementptr [7 x %struct.pci_reset_fn_method], ptr @pci_reset_fn_methods, i32 0, i32 %36
  %38 = load ptr, ptr %37, align 4
  %39 = tail call i32 %38(ptr noundef %0, i1 noundef zeroext false) #25
  %40 = icmp eq i32 %39, -25
  br i1 %40, label %41, label %70

41:                                               ; preds = %35
  %42 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 66, i32 4
  %43 = load i8, ptr %42, align 1
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %70, label %45

45:                                               ; preds = %41
  %46 = zext i8 %43 to i32
  %47 = getelementptr [7 x %struct.pci_reset_fn_method], ptr @pci_reset_fn_methods, i32 0, i32 %46
  %48 = load ptr, ptr %47, align 4
  %49 = tail call i32 %48(ptr noundef %0, i1 noundef zeroext false) #25
  %50 = icmp eq i32 %49, -25
  br i1 %50, label %51, label %70

51:                                               ; preds = %45
  %52 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 66, i32 5
  %53 = load i8, ptr %52, align 1
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %70, label %55

55:                                               ; preds = %51
  %56 = zext i8 %53 to i32
  %57 = getelementptr [7 x %struct.pci_reset_fn_method], ptr @pci_reset_fn_methods, i32 0, i32 %56
  %58 = load ptr, ptr %57, align 4
  %59 = tail call i32 %58(ptr noundef %0, i1 noundef zeroext false) #25
  %60 = icmp eq i32 %59, -25
  br i1 %60, label %61, label %70

61:                                               ; preds = %55
  %62 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 66, i32 6
  %63 = load i8, ptr %62, align 1
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %70, label %65

65:                                               ; preds = %61
  %66 = zext i8 %63 to i32
  %67 = getelementptr [7 x %struct.pci_reset_fn_method], ptr @pci_reset_fn_methods, i32 0, i32 %66
  %68 = load ptr, ptr %67, align 4
  %69 = tail call i32 %68(ptr noundef %0, i1 noundef zeroext false) #25
  br label %70

70:                                               ; preds = %65, %61, %55, %51, %45, %41, %35, %31, %25, %21, %15, %11, %5, %1
  %71 = phi i32 [ -25, %1 ], [ -25, %11 ], [ -25, %21 ], [ -25, %31 ], [ -25, %41 ], [ -25, %51 ], [ -25, %61 ], [ %9, %5 ], [ %19, %15 ], [ %29, %25 ], [ %39, %35 ], [ %49, %45 ], [ %59, %55 ], [ %69, %65 ]
  ret i32 %71
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pci_init_reset_methods(ptr noundef %0) local_unnamed_addr #5 {
  %2 = alloca i16, align 2
  %3 = alloca i8, align 1
  %4 = tail call i32 @pci_dev_specific_reset(ptr noundef %0, i1 noundef zeroext true) #25
  switch i32 %4, label %67 [
    i32 0, label %5
    i32 -25, label %7
  ]

5:                                                ; preds = %1
  %6 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 66, i32 0
  store i8 1, ptr %6, align 1
  br label %7

7:                                                ; preds = %5, %1
  %8 = phi i32 [ 1, %5 ], [ 0, %1 ]
  %9 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 50
  %10 = load i16, ptr %9, align 2
  %11 = and i16 %10, 1024
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 17
  %15 = load i32, ptr %14, align 8
  %16 = and i32 %15, 268435456
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %13
  %19 = add nuw nsw i32 %8, 1
  %20 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 66, i32 %8
  store i8 3, ptr %20, align 1
  br label %21

21:                                               ; preds = %18, %13, %7
  %22 = phi i32 [ %19, %18 ], [ %8, %7 ], [ %8, %13 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #25
  store i8 0, ptr %3, align 1, !annotation !8
  %23 = tail call zeroext i8 @pci_find_capability(ptr noundef %0, i32 noundef 19) #25
  %24 = zext i8 %23 to i32
  %25 = icmp eq i8 %23, 0
  br i1 %25, label %36, label %26

26:                                               ; preds = %21
  %27 = load i16, ptr %9, align 2
  %28 = and i16 %27, 1024
  %29 = icmp eq i16 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %26
  %31 = add nuw nsw i32 %24, 3
  %32 = call i32 @pci_read_config_byte(ptr noundef %0, i32 noundef %31, ptr noundef nonnull %3) #25
  %33 = load i8, ptr %3, align 1
  %34 = and i8 %33, 3
  %35 = icmp eq i8 %34, 3
  br i1 %35, label %37, label %36

36:                                               ; preds = %30, %26, %21
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #25
  br label %40

37:                                               ; preds = %30
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #25
  %38 = add nuw nsw i32 %22, 1
  %39 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 66, i32 %22
  store i8 4, ptr %39, align 1
  br label %40

40:                                               ; preds = %37, %36
  %41 = phi i32 [ %38, %37 ], [ %22, %36 ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #25
  store i16 0, ptr %2, align 2, !annotation !8
  %42 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 32
  %43 = load i8, ptr %42, align 1
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %56, label %45

45:                                               ; preds = %40
  %46 = load i16, ptr %9, align 2
  %47 = and i16 %46, 128
  %48 = icmp eq i16 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %45
  %50 = zext i8 %43 to i32
  %51 = add nuw nsw i32 %50, 4
  %52 = call i32 @pci_read_config_word(ptr noundef %0, i32 noundef %51, ptr noundef nonnull %2) #25
  %53 = load i16, ptr %2, align 2
  %54 = and i16 %53, 8
  %55 = icmp eq i16 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %49, %45, %40
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #25
  br label %60

57:                                               ; preds = %49
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #25
  %58 = add nuw nsw i32 %41, 1
  %59 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 66, i32 %41
  store i8 5, ptr %59, align 1
  br label %60

60:                                               ; preds = %57, %56
  %61 = phi i32 [ %58, %57 ], [ %41, %56 ]
  %62 = tail call i32 @pci_reset_bus_function(ptr noundef %0, i1 noundef zeroext true) #25
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %60
  %65 = add nuw nsw i32 %61, 1
  %66 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 66, i32 %61
  store i8 6, ptr %66, align 1
  br label %67

67:                                               ; preds = %64, %60, %1
  %68 = phi i32 [ 0, %1 ], [ %65, %64 ], [ %61, %60 ]
  %69 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 66, i32 %68
  store i8 0, ptr %69, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pci_reset_function(ptr noundef %0) #5 {
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 66
  %3 = load i8, ptr %2, align 4
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %22, label %5

5:                                                ; preds = %1
  tail call void @pci_cfg_access_lock(ptr noundef %0) #25
  %6 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44, i32 9
  tail call void @mutex_lock(ptr noundef %6) #25
  tail call fastcc void @pci_dev_save_and_disable(ptr noundef %0)
  %7 = tail call i32 @__pci_reset_function_locked(ptr noundef %0)
  %8 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 26
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %5
  tail call void @pci_restore_state(ptr noundef %0) #25
  br label %21

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.pci_driver, ptr %9, i32 0, i32 11
  %14 = load ptr, ptr %13, align 4
  tail call void @pci_restore_state(ptr noundef %0) #25
  %15 = icmp eq ptr %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.pci_error_handlers, ptr %14, i32 0, i32 4
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  tail call void %18(ptr noundef %0) #25
  br label %21

21:                                               ; preds = %20, %16, %12, %11
  tail call void @mutex_unlock(ptr noundef %6) #25
  tail call void @pci_cfg_access_unlock(ptr noundef %0) #25
  br label %22

22:                                               ; preds = %21, %1
  %23 = phi i32 [ %7, %21 ], [ -25, %1 ]
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @pci_dev_save_and_disable(ptr noundef %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 26
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.pci_driver, ptr %3, i32 0, i32 11
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.pci_error_handlers, ptr %7, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  tail call void %11(ptr noundef %0) #25
  br label %14

14:                                               ; preds = %13, %9, %5, %1
  %15 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 30
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %35, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 32
  %20 = load i8, ptr %19, align 1
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  store i32 0, ptr %15, align 4
  br label %23

23:                                               ; preds = %22, %18
  %24 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 33
  %25 = load i32, ptr %24, align 2
  %26 = and i32 %25, 16384
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 2
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %28
  tail call void @pci_walk_bus(ptr noundef nonnull %30, ptr noundef nonnull @pci_resume_one, ptr noundef null) #25
  br label %33

33:                                               ; preds = %32, %28, %23
  %34 = tail call fastcc i32 @pci_raw_set_power_state(ptr noundef %0, i32 noundef 0) #25
  br label %35

35:                                               ; preds = %33, %14
  %36 = tail call i32 @pci_save_state(ptr noundef %0)
  %37 = tail call i32 @pci_write_config_word(ptr noundef %0, i32 noundef 4, i16 noundef zeroext 1024) #25
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pci_reset_function_locked(ptr noundef %0) #5 {
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 66
  %3 = load i8, ptr %2, align 4
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %20, label %5

5:                                                ; preds = %1
  tail call fastcc void @pci_dev_save_and_disable(ptr noundef %0)
  %6 = tail call i32 @__pci_reset_function_locked(ptr noundef %0)
  %7 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 26
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %5
  tail call void @pci_restore_state(ptr noundef %0) #25
  br label %20

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.pci_driver, ptr %8, i32 0, i32 11
  %13 = load ptr, ptr %12, align 4
  tail call void @pci_restore_state(ptr noundef %0) #25
  %14 = icmp eq ptr %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.pci_error_handlers, ptr %13, i32 0, i32 4
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  tail call void %17(ptr noundef %0) #25
  br label %20

20:                                               ; preds = %19, %15, %11, %10, %1
  %21 = phi i32 [ -25, %1 ], [ %6, %10 ], [ %6, %11 ], [ %6, %15 ], [ %6, %19 ]
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pci_try_reset_function(ptr noundef %0) #5 {
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 66
  %3 = load i8, ptr %2, align 4
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %29, label %5

5:                                                ; preds = %1
  %6 = tail call zeroext i1 @pci_cfg_access_trylock(ptr noundef %0) #25
  br i1 %6, label %7, label %29

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44, i32 9
  %9 = tail call i32 @mutex_trylock(ptr noundef %8) #25
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %27, label %11

11:                                               ; preds = %7
  tail call fastcc void @pci_dev_save_and_disable(ptr noundef %0)
  %12 = tail call i32 @__pci_reset_function_locked(ptr noundef %0)
  %13 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 26
  %14 = load ptr, ptr %13, align 8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  tail call void @pci_restore_state(ptr noundef %0) #25
  br label %26

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.pci_driver, ptr %14, i32 0, i32 11
  %19 = load ptr, ptr %18, align 4
  tail call void @pci_restore_state(ptr noundef %0) #25
  %20 = icmp eq ptr %19, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.pci_error_handlers, ptr %19, i32 0, i32 4
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  tail call void %23(ptr noundef %0) #25
  br label %26

26:                                               ; preds = %25, %21, %17, %16
  tail call void @mutex_unlock(ptr noundef %8) #25
  br label %27

27:                                               ; preds = %26, %7
  %28 = phi i32 [ %12, %26 ], [ -11, %7 ]
  tail call void @pci_cfg_access_unlock(ptr noundef %0) #25
  br label %29

29:                                               ; preds = %27, %5, %1
  %30 = phi i32 [ -25, %1 ], [ -11, %5 ], [ %28, %27 ]
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pci_probe_reset_slot(ptr noundef %0) #5 {
  %2 = tail call fastcc i32 @pci_slot_reset(ptr noundef %0, i1 noundef zeroext true)
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @pci_slot_reset(ptr noundef readonly %0, i1 noundef zeroext %1) unnamed_addr #5 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %105, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %0, align 4
  %6 = getelementptr inbounds %struct.pci_bus, ptr %5, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 50
  %11 = load i16, ptr %10, align 2
  %12 = and i16 %11, 64
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %14, label %105

14:                                               ; preds = %9, %4
  %15 = getelementptr inbounds %struct.pci_bus, ptr %5, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, %15
  br i1 %17, label %59, label %18

18:                                               ; preds = %36, %14
  %19 = phi ptr [ %37, %36 ], [ %16, %14 ]
  %20 = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 5
  %21 = load ptr, ptr %20, align 8
  %22 = icmp ne ptr %21, null
  %23 = icmp eq ptr %21, %0
  %24 = and i1 %22, %23
  br i1 %24, label %25, label %36

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 50
  %27 = load i16, ptr %26, align 2
  %28 = and i16 %27, 64
  %29 = icmp eq i16 %28, 0
  br i1 %29, label %30, label %105

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 2
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %30
  %35 = tail call fastcc zeroext i1 @pci_bus_resetable(ptr noundef nonnull %32) #25
  br i1 %35, label %36, label %105

36:                                               ; preds = %34, %30, %18
  %37 = load ptr, ptr %19, align 4
  %38 = icmp eq ptr %37, %15
  br i1 %38, label %39, label %18

39:                                               ; preds = %36
  %40 = select i1 %1, i1 true, i1 %17
  br i1 %40, label %59, label %41

41:                                               ; preds = %54, %39
  %42 = phi ptr [ %55, %54 ], [ %16, %39 ]
  %43 = getelementptr inbounds %struct.pci_dev, ptr %42, i32 0, i32 5
  %44 = load ptr, ptr %43, align 8
  %45 = icmp ne ptr %44, null
  %46 = icmp eq ptr %44, %0
  %47 = and i1 %45, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %41
  tail call void @pci_cfg_access_lock(ptr noundef %42) #25
  %49 = getelementptr inbounds %struct.pci_dev, ptr %42, i32 0, i32 44, i32 9
  tail call void @mutex_lock(ptr noundef %49) #25
  %50 = getelementptr inbounds %struct.pci_dev, ptr %42, i32 0, i32 2
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %48
  tail call fastcc void @pci_bus_lock(ptr noundef nonnull %51) #25
  br label %54

54:                                               ; preds = %53, %48, %41
  %55 = load ptr, ptr %42, align 4
  %56 = load ptr, ptr %0, align 4
  %57 = getelementptr inbounds %struct.pci_bus, ptr %56, i32 0, i32 3
  %58 = icmp eq ptr %55, %57
  br i1 %58, label %59, label %41

59:                                               ; preds = %54, %39, %14
  %60 = getelementptr inbounds %struct.pci_slot, ptr %0, i32 0, i32 2
  %61 = load ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %77, label %63

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.hotplug_slot, ptr %61, i32 0, i32 3
  %65 = load ptr, ptr %64, align 4
  %66 = tail call zeroext i1 @try_module_get(ptr noundef %65) #25
  br i1 %66, label %67, label %77

67:                                               ; preds = %63
  %68 = load ptr, ptr %61, align 4
  %69 = getelementptr inbounds %struct.hotplug_slot_ops, ptr %68, i32 0, i32 8
  %70 = load ptr, ptr %69, align 4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %74, label %72

72:                                               ; preds = %67
  %73 = tail call i32 %70(ptr noundef nonnull %61, i1 noundef zeroext %1) #25
  br label %74

74:                                               ; preds = %72, %67
  %75 = phi i32 [ %73, %72 ], [ -25, %67 ]
  %76 = load ptr, ptr %64, align 4
  tail call void @module_put(ptr noundef %76) #25
  br label %77

77:                                               ; preds = %74, %63, %59
  %78 = phi i32 [ %75, %74 ], [ -25, %63 ], [ -25, %59 ]
  br i1 %1, label %105, label %79

79:                                               ; preds = %77
  %80 = load ptr, ptr %0, align 4
  %81 = getelementptr inbounds %struct.pci_bus, ptr %80, i32 0, i32 3
  %82 = load ptr, ptr %81, align 4
  %83 = icmp eq ptr %82, %81
  br i1 %83, label %105, label %84

84:                                               ; preds = %100, %79
  %85 = phi ptr [ %101, %100 ], [ %80, %79 ]
  %86 = phi ptr [ %102, %100 ], [ %82, %79 ]
  %87 = getelementptr inbounds %struct.pci_dev, ptr %86, i32 0, i32 5
  %88 = load ptr, ptr %87, align 8
  %89 = icmp ne ptr %88, null
  %90 = icmp eq ptr %88, %0
  %91 = and i1 %89, %90
  br i1 %91, label %92, label %100

92:                                               ; preds = %84
  %93 = getelementptr inbounds %struct.pci_dev, ptr %86, i32 0, i32 2
  %94 = load ptr, ptr %93, align 4
  %95 = icmp eq ptr %94, null
  br i1 %95, label %97, label %96

96:                                               ; preds = %92
  tail call fastcc void @pci_bus_unlock(ptr noundef nonnull %94) #25
  br label %97

97:                                               ; preds = %96, %92
  %98 = getelementptr inbounds %struct.pci_dev, ptr %86, i32 0, i32 44, i32 9
  tail call void @mutex_unlock(ptr noundef %98) #25
  tail call void @pci_cfg_access_unlock(ptr noundef %86) #25
  %99 = load ptr, ptr %0, align 4
  br label %100

100:                                              ; preds = %97, %84
  %101 = phi ptr [ %85, %84 ], [ %99, %97 ]
  %102 = load ptr, ptr %86, align 4
  %103 = getelementptr inbounds %struct.pci_bus, ptr %101, i32 0, i32 3
  %104 = icmp eq ptr %102, %103
  br i1 %104, label %105, label %84

105:                                              ; preds = %100, %79, %77, %34, %25, %9, %2
  %106 = phi i32 [ -25, %2 ], [ %78, %77 ], [ %78, %79 ], [ -25, %9 ], [ %78, %100 ], [ -25, %34 ], [ -25, %25 ]
  ret i32 %106
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pci_bus_error_reset(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %36, label %5

5:                                                ; preds = %1
  tail call void @mutex_lock(ptr noundef nonnull @pci_slot_mutex) #25
  %6 = getelementptr inbounds %struct.pci_bus, ptr %3, i32 0, i32 5
  %7 = load volatile ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %6
  br i1 %8, label %26, label %9

9:                                                ; preds = %14, %5
  %10 = phi ptr [ %15, %14 ], [ %7, %5 ]
  %11 = getelementptr i8, ptr %10, i32 -4
  %12 = tail call fastcc i32 @pci_slot_reset(ptr noundef %11, i1 noundef zeroext true) #25
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %26

14:                                               ; preds = %9
  %15 = load ptr, ptr %10, align 4
  %16 = icmp eq ptr %15, %6
  br i1 %16, label %17, label %9

17:                                               ; preds = %21, %14
  %18 = phi ptr [ %19, %21 ], [ %6, %14 ]
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, %6
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = getelementptr i8, ptr %19, i32 -4
  %23 = tail call fastcc i32 @pci_slot_reset(ptr noundef %22, i1 noundef zeroext false)
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %17, label %26

25:                                               ; preds = %17
  tail call void @mutex_unlock(ptr noundef nonnull @pci_slot_mutex) #25
  br label %36

26:                                               ; preds = %21, %9, %5
  tail call void @mutex_unlock(ptr noundef nonnull @pci_slot_mutex) #25
  %27 = load ptr, ptr %2, align 4
  %28 = getelementptr inbounds %struct.pci_bus, ptr %27, i32 0, i32 4
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %36, label %31

31:                                               ; preds = %26
  %32 = tail call fastcc zeroext i1 @pci_bus_resetable(ptr noundef %27) #25
  br i1 %32, label %33, label %36

33:                                               ; preds = %31
  tail call fastcc void @pci_bus_lock(ptr noundef %27) #25
  %34 = load ptr, ptr %28, align 4
  tail call void @pcibios_reset_secondary_bus(ptr noundef %34) #25
  %35 = tail call fastcc i32 @pci_dev_wait(ptr noundef %34, ptr noundef nonnull @.str.31) #25
  tail call fastcc void @pci_bus_unlock(ptr noundef %27) #25
  br label %36

36:                                               ; preds = %33, %31, %26, %25, %1
  %37 = phi i32 [ 0, %25 ], [ -25, %1 ], [ %35, %33 ], [ -25, %31 ], [ -25, %26 ]
  ret i32 %37
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local i32 @pci_probe_reset_bus(ptr noundef %0) #3 {
  %2 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = tail call fastcc zeroext i1 @pci_bus_resetable(ptr noundef %0) #25
  %7 = select i1 %6, i32 0, i32 -25
  br label %8

8:                                                ; preds = %5, %1
  %9 = phi i32 [ %7, %5 ], [ -25, %1 ]
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pci_reset_bus(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 8
  %4 = tail call fastcc i32 @pci_slot_reset(ptr noundef %3, i1 noundef zeroext true) #25
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %177

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 8
  %8 = tail call fastcc i32 @pci_slot_reset(ptr noundef %7, i1 noundef zeroext true) #25
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %191

10:                                               ; preds = %6
  %11 = load ptr, ptr %7, align 4
  %12 = getelementptr inbounds %struct.pci_bus, ptr %11, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, %12
  br i1 %14, label %72, label %15

15:                                               ; preds = %36, %10
  %16 = phi ptr [ %37, %36 ], [ %13, %10 ]
  %17 = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 5
  %18 = load ptr, ptr %17, align 8
  %19 = icmp ne ptr %18, null
  %20 = icmp eq ptr %18, %7
  %21 = and i1 %19, %20
  br i1 %21, label %22, label %36

22:                                               ; preds = %15
  %23 = tail call zeroext i1 @pci_cfg_access_trylock(ptr noundef %16) #25
  br i1 %23, label %24, label %42

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44, i32 9
  %26 = tail call i32 @mutex_trylock(ptr noundef %25) #25
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %41, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 2
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %36, label %32

32:                                               ; preds = %28
  %33 = tail call fastcc i32 @pci_bus_trylock(ptr noundef nonnull %30) #25
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  tail call void @mutex_unlock(ptr noundef %25) #25
  br label %41

36:                                               ; preds = %32, %28, %15
  %37 = load ptr, ptr %16, align 4
  %38 = load ptr, ptr %7, align 4
  %39 = getelementptr inbounds %struct.pci_bus, ptr %38, i32 0, i32 3
  %40 = icmp eq ptr %37, %39
  br i1 %40, label %70, label %15

41:                                               ; preds = %35, %24
  tail call void @pci_cfg_access_unlock(ptr noundef %16) #25
  br label %42

42:                                               ; preds = %41, %22
  %43 = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %44 = load ptr, ptr %43, align 4
  %45 = load ptr, ptr %7, align 4
  %46 = getelementptr inbounds %struct.pci_bus, ptr %45, i32 0, i32 3
  %47 = icmp eq ptr %44, %46
  br i1 %47, label %191, label %48

48:                                               ; preds = %64, %42
  %49 = phi ptr [ %65, %64 ], [ %45, %42 ]
  %50 = phi ptr [ %67, %64 ], [ %44, %42 ]
  %51 = getelementptr inbounds %struct.pci_dev, ptr %50, i32 0, i32 5
  %52 = load ptr, ptr %51, align 8
  %53 = icmp ne ptr %52, null
  %54 = icmp eq ptr %52, %7
  %55 = and i1 %53, %54
  br i1 %55, label %56, label %64

56:                                               ; preds = %48
  %57 = getelementptr inbounds %struct.pci_dev, ptr %50, i32 0, i32 2
  %58 = load ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %61, label %60

60:                                               ; preds = %56
  tail call fastcc void @pci_bus_unlock(ptr noundef nonnull %58) #25
  br label %61

61:                                               ; preds = %60, %56
  %62 = getelementptr inbounds %struct.pci_dev, ptr %50, i32 0, i32 44, i32 9
  tail call void @mutex_unlock(ptr noundef %62) #25
  tail call void @pci_cfg_access_unlock(ptr noundef %50) #25
  %63 = load ptr, ptr %7, align 4
  br label %64

64:                                               ; preds = %61, %48
  %65 = phi ptr [ %49, %48 ], [ %63, %61 ]
  %66 = getelementptr inbounds %struct.list_head, ptr %50, i32 0, i32 1
  %67 = load ptr, ptr %66, align 4
  %68 = getelementptr inbounds %struct.pci_bus, ptr %65, i32 0, i32 3
  %69 = icmp eq ptr %67, %68
  br i1 %69, label %191, label %48

70:                                               ; preds = %36
  %71 = load ptr, ptr %37, align 4
  br label %72

72:                                               ; preds = %70, %10
  %73 = phi ptr [ %71, %70 ], [ %12, %10 ]
  %74 = phi ptr [ %38, %70 ], [ %11, %10 ]
  %75 = getelementptr inbounds %struct.pci_bus, ptr %74, i32 0, i32 3
  %76 = icmp eq ptr %73, %75
  br i1 %76, label %94, label %77

77:                                               ; preds = %89, %72
  %78 = phi ptr [ %90, %89 ], [ %73, %72 ]
  %79 = getelementptr inbounds %struct.pci_dev, ptr %78, i32 0, i32 5
  %80 = load ptr, ptr %79, align 8
  %81 = icmp ne ptr %80, null
  %82 = icmp eq ptr %80, %7
  %83 = and i1 %81, %82
  br i1 %83, label %84, label %89

84:                                               ; preds = %77
  tail call fastcc void @pci_dev_save_and_disable(ptr noundef %78) #25
  %85 = getelementptr inbounds %struct.pci_dev, ptr %78, i32 0, i32 2
  %86 = load ptr, ptr %85, align 4
  %87 = icmp eq ptr %86, null
  br i1 %87, label %89, label %88

88:                                               ; preds = %84
  tail call fastcc void @pci_bus_save_and_disable_locked(ptr noundef nonnull %86) #25
  br label %89

89:                                               ; preds = %88, %84, %77
  %90 = load ptr, ptr %78, align 4
  %91 = load ptr, ptr %7, align 4
  %92 = getelementptr inbounds %struct.pci_bus, ptr %91, i32 0, i32 3
  %93 = icmp eq ptr %90, %92
  br i1 %93, label %94, label %77

94:                                               ; preds = %89, %72
  %95 = getelementptr inbounds %struct.pci_slot, ptr %7, i32 0, i32 2
  %96 = load ptr, ptr %95, align 4
  %97 = icmp eq ptr %96, null
  br i1 %97, label %112, label %98

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct.hotplug_slot, ptr %96, i32 0, i32 3
  %100 = load ptr, ptr %99, align 4
  %101 = tail call zeroext i1 @try_module_get(ptr noundef %100) #25
  br i1 %101, label %102, label %112

102:                                              ; preds = %98
  %103 = load ptr, ptr %96, align 4
  %104 = getelementptr inbounds %struct.hotplug_slot_ops, ptr %103, i32 0, i32 8
  %105 = load ptr, ptr %104, align 4
  %106 = icmp eq ptr %105, null
  br i1 %106, label %109, label %107

107:                                              ; preds = %102
  %108 = tail call i32 %105(ptr noundef nonnull %96, i1 noundef zeroext false) #25
  br label %109

109:                                              ; preds = %107, %102
  %110 = phi i32 [ %108, %107 ], [ -25, %102 ]
  %111 = load ptr, ptr %99, align 4
  tail call void @module_put(ptr noundef %111) #25
  br label %112

112:                                              ; preds = %109, %98, %94
  %113 = phi i32 [ %110, %109 ], [ -25, %98 ], [ -25, %94 ]
  %114 = load ptr, ptr %7, align 4
  %115 = getelementptr inbounds %struct.pci_bus, ptr %114, i32 0, i32 3
  %116 = load ptr, ptr %115, align 4
  %117 = icmp eq ptr %116, %115
  br i1 %117, label %151, label %118

118:                                              ; preds = %144, %112
  %119 = phi ptr [ %145, %144 ], [ %116, %112 ]
  %120 = getelementptr inbounds %struct.pci_dev, ptr %119, i32 0, i32 5
  %121 = load ptr, ptr %120, align 8
  %122 = icmp ne ptr %121, null
  %123 = icmp eq ptr %121, %7
  %124 = and i1 %122, %123
  br i1 %124, label %125, label %144

125:                                              ; preds = %118
  %126 = getelementptr inbounds %struct.pci_dev, ptr %119, i32 0, i32 26
  %127 = load ptr, ptr %126, align 8
  %128 = icmp eq ptr %127, null
  br i1 %128, label %129, label %130

129:                                              ; preds = %125
  tail call void @pci_restore_state(ptr noundef %119) #25
  br label %139

130:                                              ; preds = %125
  %131 = getelementptr inbounds %struct.pci_driver, ptr %127, i32 0, i32 11
  %132 = load ptr, ptr %131, align 4
  tail call void @pci_restore_state(ptr noundef %119) #25
  %133 = icmp eq ptr %132, null
  br i1 %133, label %139, label %134

134:                                              ; preds = %130
  %135 = getelementptr inbounds %struct.pci_error_handlers, ptr %132, i32 0, i32 4
  %136 = load ptr, ptr %135, align 4
  %137 = icmp eq ptr %136, null
  br i1 %137, label %139, label %138

138:                                              ; preds = %134
  tail call void %136(ptr noundef %119) #25
  br label %139

139:                                              ; preds = %138, %134, %130, %129
  %140 = getelementptr inbounds %struct.pci_dev, ptr %119, i32 0, i32 2
  %141 = load ptr, ptr %140, align 4
  %142 = icmp eq ptr %141, null
  br i1 %142, label %144, label %143

143:                                              ; preds = %139
  tail call fastcc void @pci_bus_restore_locked(ptr noundef nonnull %141) #25
  br label %144

144:                                              ; preds = %143, %139, %118
  %145 = load ptr, ptr %119, align 4
  %146 = load ptr, ptr %7, align 4
  %147 = getelementptr inbounds %struct.pci_bus, ptr %146, i32 0, i32 3
  %148 = icmp eq ptr %145, %147
  br i1 %148, label %149, label %118

149:                                              ; preds = %144
  %150 = load ptr, ptr %145, align 4
  br label %151

151:                                              ; preds = %149, %112
  %152 = phi ptr [ %150, %149 ], [ %115, %112 ]
  %153 = phi ptr [ %146, %149 ], [ %114, %112 ]
  %154 = getelementptr inbounds %struct.pci_bus, ptr %153, i32 0, i32 3
  %155 = icmp eq ptr %152, %154
  br i1 %155, label %191, label %156

156:                                              ; preds = %172, %151
  %157 = phi ptr [ %173, %172 ], [ %153, %151 ]
  %158 = phi ptr [ %174, %172 ], [ %152, %151 ]
  %159 = getelementptr inbounds %struct.pci_dev, ptr %158, i32 0, i32 5
  %160 = load ptr, ptr %159, align 8
  %161 = icmp ne ptr %160, null
  %162 = icmp eq ptr %160, %7
  %163 = and i1 %161, %162
  br i1 %163, label %164, label %172

164:                                              ; preds = %156
  %165 = getelementptr inbounds %struct.pci_dev, ptr %158, i32 0, i32 2
  %166 = load ptr, ptr %165, align 4
  %167 = icmp eq ptr %166, null
  br i1 %167, label %169, label %168

168:                                              ; preds = %164
  tail call fastcc void @pci_bus_unlock(ptr noundef nonnull %166) #25
  br label %169

169:                                              ; preds = %168, %164
  %170 = getelementptr inbounds %struct.pci_dev, ptr %158, i32 0, i32 44, i32 9
  tail call void @mutex_unlock(ptr noundef %170) #25
  tail call void @pci_cfg_access_unlock(ptr noundef %158) #25
  %171 = load ptr, ptr %7, align 4
  br label %172

172:                                              ; preds = %169, %156
  %173 = phi ptr [ %157, %156 ], [ %171, %169 ]
  %174 = load ptr, ptr %158, align 4
  %175 = getelementptr inbounds %struct.pci_bus, ptr %173, i32 0, i32 3
  %176 = icmp eq ptr %174, %175
  br i1 %176, label %191, label %156

177:                                              ; preds = %1
  %178 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 1
  %179 = load ptr, ptr %178, align 8
  %180 = getelementptr inbounds %struct.pci_bus, ptr %179, i32 0, i32 4
  %181 = load ptr, ptr %180, align 4
  %182 = icmp eq ptr %181, null
  br i1 %182, label %191, label %183

183:                                              ; preds = %177
  %184 = tail call fastcc zeroext i1 @pci_bus_resetable(ptr noundef %179) #25
  br i1 %184, label %185, label %191

185:                                              ; preds = %183
  %186 = tail call fastcc i32 @pci_bus_trylock(ptr noundef %179) #25
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %191, label %188

188:                                              ; preds = %185
  tail call fastcc void @pci_bus_save_and_disable_locked(ptr noundef %179) #25
  %189 = load ptr, ptr %180, align 4
  tail call void @pcibios_reset_secondary_bus(ptr noundef %189) #25
  %190 = tail call fastcc i32 @pci_dev_wait(ptr noundef %189, ptr noundef nonnull @.str.31) #25
  tail call fastcc void @pci_bus_restore_locked(ptr noundef %179) #25
  tail call fastcc void @pci_bus_unlock(ptr noundef %179) #25
  br label %191

191:                                              ; preds = %188, %185, %183, %177, %172, %151, %64, %42, %6
  %192 = phi i32 [ %8, %6 ], [ %113, %151 ], [ -11, %42 ], [ %190, %188 ], [ -11, %185 ], [ -25, %183 ], [ -25, %177 ], [ %113, %172 ], [ -11, %64 ]
  ret i32 %192
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pcix_get_max_mmrbc(ptr noundef %0) #5 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #25
  store i32 0, ptr %2, align 4, !annotation !8
  %3 = tail call zeroext i8 @pci_find_capability(ptr noundef %0, i32 noundef 7)
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %15, label %5

5:                                                ; preds = %1
  %6 = zext i8 %3 to i32
  %7 = add nuw nsw i32 %6, 4
  %8 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef %7, ptr noundef nonnull %2) #25
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %5
  %11 = load i32, ptr %2, align 4
  %12 = lshr i32 %11, 21
  %13 = and i32 %12, 3
  %14 = shl nuw nsw i32 512, %13
  br label %15

15:                                               ; preds = %10, %5, %1
  %16 = phi i32 [ %14, %10 ], [ -22, %1 ], [ -22, %5 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #25
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pcix_get_mmrbc(ptr noundef %0) #5 {
  %2 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #25
  store i16 0, ptr %2, align 2, !annotation !8
  %3 = tail call zeroext i8 @pci_find_capability(ptr noundef %0, i32 noundef 7)
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %16, label %5

5:                                                ; preds = %1
  %6 = zext i8 %3 to i32
  %7 = add nuw nsw i32 %6, 2
  %8 = call i32 @pci_read_config_word(ptr noundef %0, i32 noundef %7, ptr noundef nonnull %2) #25
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %5
  %11 = load i16, ptr %2, align 2
  %12 = lshr i16 %11, 2
  %13 = and i16 %12, 3
  %14 = zext i16 %13 to i32
  %15 = shl nuw nsw i32 512, %14
  br label %16

16:                                               ; preds = %10, %5, %1
  %17 = phi i32 [ %15, %10 ], [ -22, %1 ], [ -22, %5 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #25
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pcix_set_mmrbc(ptr noundef %0, i32 noundef %1) #5 {
  %3 = alloca i32, align 4
  %4 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #25
  store i32 0, ptr %3, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #25
  store i16 0, ptr %4, align 2, !annotation !8
  %5 = add i32 %1, -512
  %6 = icmp ult i32 %5, 3585
  %7 = tail call i32 @llvm.ctpop.i32(i32 %1) #25, !range !10
  %8 = icmp ult i32 %7, 2
  %9 = and i1 %6, %8
  br i1 %9, label %10, label %52

10:                                               ; preds = %2
  %11 = tail call i32 @llvm.cttz.i32(i32 %1, i1 true), !range !10
  %12 = add nsw i32 %11, -9
  %13 = tail call zeroext i8 @pci_find_capability(ptr noundef %0, i32 noundef 7)
  %14 = zext i8 %13 to i32
  %15 = icmp eq i8 %13, 0
  br i1 %15, label %52, label %16

16:                                               ; preds = %10
  %17 = add nuw nsw i32 %14, 4
  %18 = call i32 @pci_read_config_dword(ptr noundef %0, i32 noundef %17, ptr noundef nonnull %3) #25
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %52

20:                                               ; preds = %16
  %21 = load i32, ptr %3, align 4
  %22 = lshr i32 %21, 21
  %23 = and i32 %22, 3
  %24 = icmp ugt i32 %12, %23
  br i1 %24, label %52, label %25

25:                                               ; preds = %20
  %26 = add nuw nsw i32 %14, 2
  %27 = call i32 @pci_read_config_word(ptr noundef %0, i32 noundef %26, ptr noundef nonnull %4) #25
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %52

29:                                               ; preds = %25
  %30 = load i16, ptr %4, align 2
  %31 = lshr i16 %30, 2
  %32 = and i16 %31, 3
  %33 = zext i16 %32 to i32
  %34 = icmp eq i32 %12, %33
  br i1 %34, label %51, label %35

35:                                               ; preds = %29
  %36 = icmp ugt i32 %12, %33
  br i1 %36, label %37, label %44

37:                                               ; preds = %35
  %38 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 1
  %39 = load ptr, ptr %38, align 8
  %40 = getelementptr inbounds %struct.pci_bus, ptr %39, i32 0, i32 19
  %41 = load i16, ptr %40, align 2
  %42 = and i16 %41, 2
  %43 = icmp eq i16 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %37, %35
  %45 = and i16 %30, -13
  %46 = trunc i32 %12 to i16
  %47 = shl nsw i16 %46, 2
  %48 = or i16 %45, %47
  store i16 %48, ptr %4, align 2
  %49 = call i32 @pci_write_config_word(ptr noundef %0, i32 noundef %26, i16 noundef zeroext %48) #25
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %44, %29
  br label %52

52:                                               ; preds = %51, %44, %37, %25, %20, %16, %10, %2
  %53 = phi i32 [ 0, %51 ], [ -22, %2 ], [ -22, %10 ], [ -22, %16 ], [ -7, %20 ], [ -22, %25 ], [ -5, %37 ], [ -5, %44 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #25
  ret i32 %53
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #16

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pcie_get_readrq(ptr noundef %0) #5 {
  %2 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #25
  store i16 0, ptr %2, align 2, !annotation !8
  %3 = call i32 @pcie_capability_read_word(ptr noundef %0, i32 noundef 8, ptr noundef nonnull %2) #25
  %4 = load i16, ptr %2, align 2
  %5 = lshr i16 %4, 12
  %6 = and i16 %5, 7
  %7 = zext i16 %6 to i32
  %8 = shl nuw nsw i32 128, %7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #25
  ret i32 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcie_capability_read_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pcie_set_readrq(ptr noundef %0, i32 noundef %1) #5 {
  %3 = alloca i16, align 2
  %4 = add i32 %1, -128
  %5 = icmp ult i32 %4, 3969
  %6 = tail call i32 @llvm.ctpop.i32(i32 %1) #25, !range !10
  %7 = icmp ult i32 %6, 2
  %8 = and i1 %5, %7
  br i1 %8, label %9, label %34

9:                                                ; preds = %2
  %10 = load i32, ptr @pcie_bus_config, align 4
  %11 = icmp eq i32 %10, 3
  br i1 %11, label %12, label %20

12:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #25
  store i16 0, ptr %3, align 2, !annotation !8
  %13 = call i32 @pcie_capability_read_word(ptr noundef %0, i32 noundef 8, ptr noundef nonnull %3) #25
  %14 = load i16, ptr %3, align 2
  %15 = lshr i16 %14, 5
  %16 = and i16 %15, 7
  %17 = zext i16 %16 to i32
  %18 = shl nuw nsw i32 128, %17
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #25
  %19 = call i32 @llvm.umin.i32(i32 %18, i32 %1)
  br label %20

20:                                               ; preds = %12, %9
  %21 = phi i32 [ %19, %12 ], [ %1, %9 ]
  %22 = call i32 @llvm.cttz.i32(i32 %21, i1 true), !range !10
  %23 = trunc i32 %22 to i16
  %24 = shl i16 %23, 12
  %25 = add i16 %24, -28672
  %26 = call i32 @pcie_capability_clear_and_set_word(ptr noundef %0, i32 noundef 8, i16 noundef zeroext 28672, i16 noundef zeroext %25) #25
  %27 = icmp slt i32 %26, 1
  br i1 %27, label %34, label %28

28:                                               ; preds = %20
  %29 = add i32 %26, -129
  %30 = icmp ult i32 %29, 9
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = getelementptr inbounds [9 x i32], ptr @switch.table.pcie_set_mps, i32 0, i32 %29
  %33 = load i32, ptr %32, align 4
  br label %34

34:                                               ; preds = %31, %28, %20, %2
  %35 = phi i32 [ -22, %2 ], [ %26, %20 ], [ %33, %31 ], [ -34, %28 ]
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pcie_get_mps(ptr noundef %0) #5 {
  %2 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #25
  store i16 0, ptr %2, align 2, !annotation !8
  %3 = call i32 @pcie_capability_read_word(ptr noundef %0, i32 noundef 8, ptr noundef nonnull %2) #25
  %4 = load i16, ptr %2, align 2
  %5 = lshr i16 %4, 5
  %6 = and i16 %5, 7
  %7 = zext i16 %6 to i32
  %8 = shl nuw nsw i32 128, %7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #25
  ret i32 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcie_capability_clear_and_set_word(ptr noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pcie_set_mps(ptr noundef %0, i32 noundef %1) #5 {
  %3 = add i32 %1, -128
  %4 = icmp ult i32 %3, 3969
  %5 = tail call i32 @llvm.ctpop.i32(i32 %1) #25, !range !10
  %6 = icmp ult i32 %5, 2
  %7 = and i1 %4, %6
  br i1 %7, label %8, label %28

8:                                                ; preds = %2
  %9 = tail call i32 @llvm.cttz.i32(i32 %1, i1 true), !range !10
  %10 = add nuw nsw i32 %9, 65529
  %11 = and i32 %10, 65535
  %12 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 21
  %13 = load i8, ptr %12, align 1
  %14 = and i8 %13, 7
  %15 = zext i8 %14 to i32
  %16 = icmp ugt i32 %11, %15
  br i1 %16, label %28, label %17

17:                                               ; preds = %8
  %18 = trunc i32 %10 to i16
  %19 = shl nsw i16 %18, 5
  %20 = tail call i32 @pcie_capability_clear_and_set_word(ptr noundef %0, i32 noundef 8, i16 noundef zeroext 224, i16 noundef zeroext %19) #25
  %21 = icmp slt i32 %20, 1
  br i1 %21, label %28, label %22

22:                                               ; preds = %17
  %23 = add i32 %20, -129
  %24 = icmp ult i32 %23, 9
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = getelementptr inbounds [9 x i32], ptr @switch.table.pcie_set_mps, i32 0, i32 %23
  %27 = load i32, ptr %26, align 4
  br label %28

28:                                               ; preds = %25, %22, %17, %8, %2
  %29 = phi i32 [ -22, %2 ], [ -22, %8 ], [ %20, %17 ], [ %27, %25 ], [ -34, %22 ]
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pcie_bandwidth_available(ptr noundef %0, ptr noundef writeonly %1, ptr noundef writeonly %2, ptr noundef writeonly %3) #5 {
  %5 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #25
  store i16 0, ptr %5, align 2, !annotation !8
  %6 = icmp eq ptr %2, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  store i32 255, ptr %2, align 4
  br label %8

8:                                                ; preds = %7, %4
  %9 = icmp eq ptr %3, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %8
  store i32 255, ptr %3, align 4
  br label %11

11:                                               ; preds = %10, %8
  %12 = icmp eq ptr %0, null
  br i1 %12, label %59, label %13

13:                                               ; preds = %11
  %14 = icmp eq ptr %1, null
  br label %15

15:                                               ; preds = %55, %13
  %16 = phi i32 [ 0, %13 ], [ %49, %55 ]
  %17 = phi ptr [ %0, %13 ], [ %57, %55 ]
  %18 = call i32 @pcie_capability_read_word(ptr noundef nonnull %17, i32 noundef 18, ptr noundef nonnull %5) #25
  %19 = load i16, ptr %5, align 2
  %20 = zext i16 %19 to i32
  %21 = and i32 %20, 15
  %22 = getelementptr [0 x i8], ptr @pcie_link_speed, i32 0, i32 %21
  %23 = load i8, ptr %22, align 1
  %24 = zext i8 %23 to i32
  %25 = lshr i32 %20, 4
  %26 = and i32 %25, 63
  %27 = add i8 %23, -21
  %28 = icmp ult i8 %27, 5
  br i1 %28, label %32, label %29

29:                                               ; preds = %15
  %30 = icmp eq i8 %23, 20
  %31 = select i1 %30, i32 2000, i32 0
  br label %36

32:                                               ; preds = %15
  %33 = sext i8 %27 to i32
  %34 = getelementptr inbounds [5 x i32], ptr @switch.table.__pcie_print_link_status, i32 0, i32 %33
  %35 = load i32, ptr %34, align 4
  br label %36

36:                                               ; preds = %32, %29
  %37 = phi i32 [ %31, %29 ], [ %35, %32 ]
  %38 = mul nuw nsw i32 %37, %26
  %39 = icmp ne i32 %16, 0
  %40 = icmp ugt i32 %38, %16
  %41 = select i1 %39, i1 %40, i1 false
  br i1 %41, label %48, label %42

42:                                               ; preds = %36
  br i1 %14, label %44, label %43

43:                                               ; preds = %42
  store ptr %17, ptr %1, align 4
  br label %44

44:                                               ; preds = %43, %42
  br i1 %6, label %46, label %45

45:                                               ; preds = %44
  store i32 %24, ptr %2, align 4
  br label %46

46:                                               ; preds = %45, %44
  br i1 %9, label %48, label %47

47:                                               ; preds = %46
  store i32 %26, ptr %3, align 4
  br label %48

48:                                               ; preds = %47, %46, %36
  %49 = phi i32 [ %38, %47 ], [ %38, %46 ], [ %16, %36 ]
  %50 = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 1
  %51 = load ptr, ptr %50, align 8
  %52 = getelementptr inbounds %struct.pci_bus, ptr %51, i32 0, i32 1
  %53 = load ptr, ptr %52, align 8
  %54 = icmp eq ptr %53, null
  br i1 %54, label %59, label %55

55:                                               ; preds = %48
  %56 = getelementptr inbounds %struct.pci_bus, ptr %51, i32 0, i32 4
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %15

59:                                               ; preds = %55, %48, %11
  %60 = phi i32 [ 0, %11 ], [ %49, %55 ], [ %49, %48 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #25
  ret i32 %60
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pcie_get_width_cap(ptr noundef %0) #5 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #25
  store i32 0, ptr %2, align 4, !annotation !8
  %3 = call i32 @pcie_capability_read_dword(ptr noundef %0, i32 noundef 12, ptr noundef nonnull %2) #25
  %4 = load i32, ptr %2, align 4
  %5 = icmp eq i32 %4, 0
  %6 = lshr i32 %4, 4
  %7 = and i32 %6, 63
  %8 = select i1 %5, i32 255, i32 %7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #25
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pcie_bandwidth_capable(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #5 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #25
  store i32 0, ptr %5, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #25
  store i32 0, ptr %6, align 4, !annotation !8
  %7 = call i32 @pcie_capability_read_dword(ptr noundef %0, i32 noundef 44, ptr noundef nonnull %5) #25
  %8 = load i32, ptr %5, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %29, label %10

10:                                               ; preds = %3
  %11 = and i32 %8, 64
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %37

13:                                               ; preds = %10
  %14 = and i32 %8, 32
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %37

16:                                               ; preds = %13
  %17 = and i32 %8, 16
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %37

19:                                               ; preds = %16
  %20 = and i32 %8, 8
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %37

22:                                               ; preds = %19
  %23 = and i32 %8, 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %37

25:                                               ; preds = %22
  %26 = and i32 %8, 2
  %27 = icmp eq i32 %26, 0
  %28 = select i1 %27, i32 255, i32 20
  br label %37

29:                                               ; preds = %3
  %30 = call i32 @pcie_capability_read_dword(ptr noundef %0, i32 noundef 12, ptr noundef nonnull %6) #25
  %31 = load i32, ptr %6, align 4
  %32 = and i32 %31, 15
  %33 = icmp eq i32 %32, 1
  %34 = select i1 %33, i32 20, i32 255
  %35 = icmp eq i32 %32, 2
  %36 = select i1 %35, i32 21, i32 %34
  br label %37

37:                                               ; preds = %29, %25, %22, %19, %16, %13, %10
  %38 = phi i32 [ 25, %10 ], [ 24, %13 ], [ 23, %16 ], [ 22, %19 ], [ %28, %25 ], [ 21, %22 ], [ %36, %29 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #25
  store i32 %38, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #25
  store i32 0, ptr %4, align 4, !annotation !8
  %39 = call i32 @pcie_capability_read_dword(ptr noundef %0, i32 noundef 12, ptr noundef nonnull %4) #25
  %40 = load i32, ptr %4, align 4
  %41 = icmp eq i32 %40, 0
  %42 = lshr i32 %40, 4
  %43 = and i32 %42, 63
  %44 = select i1 %41, i32 255, i32 %43
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #25
  store i32 %44, ptr %2, align 4
  %45 = load i32, ptr %1, align 4
  %46 = icmp eq i32 %45, 255
  %47 = select i1 %46, i1 true, i1 %41
  br i1 %47, label %60, label %48

48:                                               ; preds = %37
  %49 = add i32 %45, -21
  %50 = icmp ult i32 %49, 5
  br i1 %50, label %54, label %51

51:                                               ; preds = %48
  %52 = icmp eq i32 %45, 20
  %53 = select i1 %52, i32 2000, i32 0
  br label %57

54:                                               ; preds = %48
  %55 = getelementptr inbounds [5 x i32], ptr @switch.table.__pcie_print_link_status, i32 0, i32 %49
  %56 = load i32, ptr %55, align 4
  br label %57

57:                                               ; preds = %54, %51
  %58 = phi i32 [ %53, %51 ], [ %56, %54 ]
  %59 = mul nuw nsw i32 %58, %44
  br label %60

60:                                               ; preds = %57, %37
  %61 = phi i32 [ %59, %57 ], [ 0, %37 ]
  ret i32 %61
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__pcie_print_link_status(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #5 {
  %3 = alloca i16, align 2
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #25
  store i32 0, ptr %4, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #25
  store i32 0, ptr %5, align 4, !annotation !8
  %6 = call i32 @pcie_bandwidth_capable(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %4)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #25
  store i16 0, ptr %3, align 2, !annotation !8
  %7 = icmp eq ptr %0, null
  br i1 %7, label %53, label %8

8:                                                ; preds = %49, %2
  %9 = phi i32 [ %40, %49 ], [ 255, %2 ]
  %10 = phi i32 [ %41, %49 ], [ 255, %2 ]
  %11 = phi ptr [ %42, %49 ], [ null, %2 ]
  %12 = phi i32 [ %43, %49 ], [ 0, %2 ]
  %13 = phi ptr [ %51, %49 ], [ %0, %2 ]
  %14 = call i32 @pcie_capability_read_word(ptr noundef nonnull %13, i32 noundef 18, ptr noundef nonnull %3) #25
  %15 = load i16, ptr %3, align 2
  %16 = zext i16 %15 to i32
  %17 = and i32 %16, 15
  %18 = getelementptr [0 x i8], ptr @pcie_link_speed, i32 0, i32 %17
  %19 = load i8, ptr %18, align 1
  %20 = zext i8 %19 to i32
  %21 = lshr i32 %16, 4
  %22 = and i32 %21, 63
  %23 = add i8 %19, -21
  %24 = icmp ult i8 %23, 5
  br i1 %24, label %28, label %25

25:                                               ; preds = %8
  %26 = icmp eq i8 %19, 20
  %27 = select i1 %26, i32 2000, i32 0
  br label %32

28:                                               ; preds = %8
  %29 = sext i8 %23 to i32
  %30 = getelementptr inbounds [5 x i32], ptr @switch.table.__pcie_print_link_status, i32 0, i32 %29
  %31 = load i32, ptr %30, align 4
  br label %32

32:                                               ; preds = %28, %25
  %33 = phi i32 [ %27, %25 ], [ %31, %28 ]
  %34 = mul nuw nsw i32 %33, %22
  %35 = icmp ne i32 %12, 0
  %36 = icmp ugt i32 %34, %12
  %37 = select i1 %35, i1 %36, i1 false
  br i1 %37, label %39, label %38

38:                                               ; preds = %32
  br label %39

39:                                               ; preds = %38, %32
  %40 = phi i32 [ %9, %32 ], [ %22, %38 ]
  %41 = phi i32 [ %10, %32 ], [ %20, %38 ]
  %42 = phi ptr [ %11, %32 ], [ %13, %38 ]
  %43 = phi i32 [ %12, %32 ], [ %34, %38 ]
  %44 = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 1
  %45 = load ptr, ptr %44, align 8
  %46 = getelementptr inbounds %struct.pci_bus, ptr %45, i32 0, i32 1
  %47 = load ptr, ptr %46, align 8
  %48 = icmp eq ptr %47, null
  br i1 %48, label %53, label %49

49:                                               ; preds = %39
  %50 = getelementptr inbounds %struct.pci_bus, ptr %45, i32 0, i32 4
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %8

53:                                               ; preds = %49, %39, %2
  %54 = phi i32 [ 255, %2 ], [ %40, %49 ], [ %40, %39 ]
  %55 = phi i32 [ 255, %2 ], [ %41, %49 ], [ %41, %39 ]
  %56 = phi ptr [ null, %2 ], [ %42, %49 ], [ %42, %39 ]
  %57 = phi i32 [ 0, %2 ], [ %43, %49 ], [ %43, %39 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #25
  %58 = icmp ult i32 %57, %6
  %59 = xor i1 %1, true
  %60 = or i1 %58, %59
  br i1 %60, label %68, label %61

61:                                               ; preds = %53
  %62 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  %63 = udiv i32 %6, 1000
  %64 = urem i32 %6, 1000
  %65 = load i32, ptr %5, align 4
  %66 = call ptr @pci_speed_string(i32 noundef %65) #25
  %67 = load i32, ptr %4, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %62, ptr noundef nonnull @.str.32, i32 noundef %63, i32 noundef %64, ptr noundef %66, i32 noundef %67) #26
  br label %93

68:                                               ; preds = %53
  br i1 %58, label %69, label %93

69:                                               ; preds = %68
  %70 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  %71 = freeze i32 %57
  %72 = udiv i32 %71, 1000
  %73 = mul i32 %72, 1000
  %74 = sub i32 %71, %73
  %75 = call ptr @pci_speed_string(i32 noundef %55) #25
  %76 = icmp eq ptr %56, null
  br i1 %76, label %84, label %77

77:                                               ; preds = %69
  %78 = getelementptr inbounds %struct.pci_dev, ptr %56, i32 0, i32 44, i32 3
  %79 = load ptr, ptr %78, align 4
  %80 = icmp eq ptr %79, null
  br i1 %80, label %81, label %84

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.pci_dev, ptr %56, i32 0, i32 44
  %83 = load ptr, ptr %82, align 4
  br label %84

84:                                               ; preds = %81, %77, %69
  %85 = phi ptr [ @.str.34, %69 ], [ %83, %81 ], [ %79, %77 ]
  %86 = freeze i32 %6
  %87 = udiv i32 %86, 1000
  %88 = mul i32 %87, 1000
  %89 = sub i32 %86, %88
  %90 = load i32, ptr %5, align 4
  %91 = call ptr @pci_speed_string(i32 noundef %90) #25
  %92 = load i32, ptr %4, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %70, ptr noundef nonnull @.str.33, i32 noundef %72, i32 noundef %74, ptr noundef %75, i32 noundef %54, ptr noundef %85, i32 noundef %87, i32 noundef %89, ptr noundef %91, i32 noundef %92) #26
  br label %93

93:                                               ; preds = %84, %68, %61
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #25
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_speed_string(i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pcie_print_link_status(ptr noundef %0) #5 {
  tail call void @__pcie_print_link_status(ptr noundef %0, i1 noundef zeroext true)
  ret void
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local i32 @pci_select_bars(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 0, i32 3
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, %1
  %6 = icmp ne i32 %5, 0
  %7 = zext i1 %6 to i32
  %8 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 1, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, %1
  %11 = icmp eq i32 %10, 0
  %12 = select i1 %11, i32 0, i32 2
  %13 = or i32 %12, %7
  %14 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 2, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, %1
  %17 = icmp eq i32 %16, 0
  %18 = select i1 %17, i32 0, i32 4
  %19 = or i32 %18, %13
  %20 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 3, i32 3
  %21 = load i32, ptr %20, align 4
  %22 = and i32 %21, %1
  %23 = icmp eq i32 %22, 0
  %24 = select i1 %23, i32 0, i32 8
  %25 = or i32 %24, %19
  %26 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 4, i32 3
  %27 = load i32, ptr %26, align 4
  %28 = and i32 %27, %1
  %29 = icmp eq i32 %28, 0
  %30 = select i1 %29, i32 0, i32 16
  %31 = or i32 %30, %25
  %32 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 5, i32 3
  %33 = load i32, ptr %32, align 4
  %34 = and i32 %33, %1
  %35 = icmp eq i32 %34, 0
  %36 = select i1 %35, i32 0, i32 32
  %37 = or i32 %36, %31
  %38 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 6, i32 3
  %39 = load i32, ptr %38, align 4
  %40 = and i32 %39, %1
  %41 = icmp eq i32 %40, 0
  %42 = select i1 %41, i32 0, i32 64
  %43 = or i32 %42, %37
  %44 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 7, i32 3
  %45 = load i32, ptr %44, align 4
  %46 = and i32 %45, %1
  %47 = icmp eq i32 %46, 0
  %48 = select i1 %47, i32 0, i32 128
  %49 = or i32 %48, %43
  %50 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 8, i32 3
  %51 = load i32, ptr %50, align 4
  %52 = and i32 %51, %1
  %53 = icmp eq i32 %52, 0
  %54 = select i1 %53, i32 0, i32 256
  %55 = or i32 %54, %49
  %56 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 9, i32 3
  %57 = load i32, ptr %56, align 4
  %58 = and i32 %57, %1
  %59 = icmp eq i32 %58, 0
  %60 = select i1 %59, i32 0, i32 512
  %61 = or i32 %60, %55
  %62 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 10, i32 3
  %63 = load i32, ptr %62, align 4
  %64 = and i32 %63, %1
  %65 = icmp eq i32 %64, 0
  %66 = select i1 %65, i32 0, i32 1024
  %67 = or i32 %66, %61
  ret i32 %67
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn writeonly uwtable(sync)
define dso_local void @pci_register_set_vga_state(ptr noundef %0) local_unnamed_addr #17 section ".init.text" {
  store ptr %0, ptr @arch_set_vga_state, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pci_set_vga_state(ptr noundef %0, i1 noundef zeroext %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #5 {
  %5 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #25
  store i16 0, ptr %5, align 2, !annotation !8
  %6 = and i32 %3, 2
  %7 = icmp ne i32 %6, 0
  %8 = icmp ugt i32 %2, 3
  %9 = and i1 %8, %7
  br i1 %9, label %10, label %11, !prof !17

10:                                               ; preds = %4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 6295, i32 noundef 9, ptr noundef null) #25
  br label %11

11:                                               ; preds = %10, %4
  %12 = load ptr, ptr @arch_set_vga_state, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %11
  %15 = tail call i32 %12(ptr noundef %0, i1 noundef zeroext %1, i32 noundef %2, i32 noundef %3) #25
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %51

17:                                               ; preds = %14, %11
  br i1 %7, label %18, label %27

18:                                               ; preds = %17
  %19 = call i32 @pci_read_config_word(ptr noundef %0, i32 noundef 4, ptr noundef nonnull %5) #25
  %20 = load i16, ptr %5, align 2
  %21 = trunc i32 %2 to i16
  %22 = xor i16 %21, -1
  %23 = and i16 %20, %22
  %24 = or i16 %20, %21
  %25 = select i1 %1, i16 %24, i16 %23
  store i16 %25, ptr %5, align 2
  %26 = call i32 @pci_write_config_word(ptr noundef %0, i32 noundef 4, i16 noundef zeroext %25) #25
  br label %27

27:                                               ; preds = %18, %17
  %28 = and i32 %3, 1
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %51, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 1
  %32 = load ptr, ptr %31, align 8
  %33 = icmp eq ptr %32, null
  br i1 %33, label %51, label %34

34:                                               ; preds = %30
  %35 = select i1 %1, i16 8, i16 0
  br label %36

36:                                               ; preds = %47, %34
  %37 = phi ptr [ %32, %34 ], [ %49, %47 ]
  %38 = getelementptr inbounds %struct.pci_bus, ptr %37, i32 0, i32 4
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %47, label %41

41:                                               ; preds = %36
  %42 = call i32 @pci_read_config_word(ptr noundef nonnull %39, i32 noundef 62, ptr noundef nonnull %5) #25
  %43 = load i16, ptr %5, align 2
  %44 = and i16 %43, -9
  %45 = or i16 %44, %35
  store i16 %45, ptr %5, align 2
  %46 = call i32 @pci_write_config_word(ptr noundef nonnull %39, i32 noundef 62, i16 noundef zeroext %45) #25
  br label %47

47:                                               ; preds = %41, %36
  %48 = getelementptr inbounds %struct.pci_bus, ptr %37, i32 0, i32 1
  %49 = load ptr, ptr %48, align 8
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %36

51:                                               ; preds = %47, %30, %27, %14
  %52 = phi i32 [ %15, %14 ], [ 0, %27 ], [ 0, %30 ], [ 0, %47 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #25
  ret i32 %52
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pci_add_dma_alias(ptr noundef %0, i8 noundef zeroext %1, i32 noundef %2) local_unnamed_addr #5 {
  %4 = zext i8 %1 to i32
  %5 = sub nuw nsw i32 256, %4
  %6 = tail call i32 @llvm.umin.i32(i32 %5, i32 %2)
  %7 = add nsw i32 %4, -1
  %8 = add nsw i32 %7, %6
  %9 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 25
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %3
  %13 = tail call ptr @bitmap_zalloc(i32 noundef 256, i32 noundef 3264) #25
  store ptr %13, ptr %9, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %16, ptr noundef nonnull @.str.35) #26
  br label %29

17:                                               ; preds = %12, %3
  %18 = phi ptr [ %13, %12 ], [ %10, %3 ]
  %19 = and i32 %4, 7
  tail call void @__bitmap_set(ptr noundef nonnull %18, i32 noundef %4, i32 noundef %6) #25
  switch i32 %6, label %23 [
    i32 1, label %20
    i32 0, label %29
  ]

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  %22 = lshr i32 %4, 3
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %21, ptr noundef nonnull @.str.36, i32 noundef %22, i32 noundef %19) #26
  br label %29

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  %25 = lshr i32 %4, 3
  %26 = lshr i32 %8, 3
  %27 = and i32 %26, 31
  %28 = and i32 %8, 7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %24, ptr noundef nonnull @.str.37, i32 noundef %25, i32 noundef %19, i32 noundef %27, i32 noundef %28) #26
  br label %29

29:                                               ; preds = %23, %20, %17, %15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bitmap_zalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @pci_devs_are_dma_aliases(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 25
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %16, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 6
  %8 = load i32, ptr %7, align 4
  %9 = lshr i32 %8, 5
  %10 = getelementptr i32, ptr %4, i32 %9
  %11 = load volatile i32, ptr %10, align 4
  %12 = and i32 %8, 31
  %13 = shl nuw i32 1, %12
  %14 = and i32 %13, %11
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %36

16:                                               ; preds = %6, %2
  %17 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 25
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %30, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 6
  %22 = load i32, ptr %21, align 4
  %23 = lshr i32 %22, 5
  %24 = getelementptr i32, ptr %18, i32 %23
  %25 = load volatile i32, ptr %24, align 4
  %26 = and i32 %22, 31
  %27 = shl nuw i32 1, %26
  %28 = and i32 %27, %25
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %20, %16
  %31 = tail call ptr @pci_real_dma_dev(ptr noundef %0)
  %32 = icmp eq ptr %31, %1
  br i1 %32, label %36, label %33

33:                                               ; preds = %30
  %34 = tail call ptr @pci_real_dma_dev(ptr noundef %1)
  %35 = icmp eq ptr %34, %0
  br label %36

36:                                               ; preds = %33, %30, %20, %6
  %37 = phi i1 [ true, %30 ], [ true, %20 ], [ true, %6 ], [ %35, %33 ]
  ret i1 %37
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define weak dso_local ptr @pci_real_dma_dev(ptr noundef %0) local_unnamed_addr #5 {
  ret ptr %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @pci_bus_read_dev_vendor_id(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @pci_ignore_hotplug(ptr nocapture noundef %0) #18 {
  %2 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.pci_bus, ptr %3, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 33
  %7 = load i32, ptr %6, align 2
  %8 = or i32 %7, 65536
  store i32 %8, ptr %6, align 2
  %9 = icmp eq ptr %5, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 33
  %12 = load i32, ptr %11, align 2
  %13 = or i32 %12, 65536
  store i32 %13, ptr %11, align 2
  br label %14

14:                                               ; preds = %10, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define weak dso_local i32 @pcibios_default_alignment() local_unnamed_addr #5 {
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define weak dso_local void @pci_resource_to_user(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #5 {
  %6 = load i32, ptr %2, align 4
  store i32 %6, ptr %3, align 4
  %7 = getelementptr inbounds %struct.resource, ptr %2, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  store i32 %8, ptr %4, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pci_reassigndev_resource_alignment(ptr noundef %0) local_unnamed_addr #5 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 4
  %5 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #25
  store i16 0, ptr %5, align 2, !annotation !8
  %6 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 49
  %7 = load i40, ptr %6, align 1
  %8 = and i40 %7, 8388608
  %9 = icmp eq i40 %8, 0
  br i1 %9, label %10, label %172

10:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #25
  store i32 0, ptr %2, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #25
  store i32 0, ptr %3, align 4, !annotation !8
  %11 = tail call i32 @pcibios_default_alignment() #25
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #25
  tail call void @_raw_spin_lock(ptr noundef nonnull @resource_alignment_lock) #25
  %12 = load ptr, ptr @resource_alignment_param, align 4
  store ptr %12, ptr %4, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %62, label %14

14:                                               ; preds = %10
  %15 = load i8, ptr %12, align 1
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %62, label %17

17:                                               ; preds = %14
  %18 = load i32, ptr @pci_flags, align 4
  %19 = and i32 %18, 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = load i1, ptr @pci_specified_resource_alignment.__already_done, align 1
  br i1 %22, label %62, label %23, !prof !11

23:                                               ; preds = %21
  store i1 true, ptr @pci_specified_resource_alignment.__already_done, align 1
  %24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.89) #26
  br label %62

25:                                               ; preds = %58, %17
  %26 = phi ptr [ %59, %58 ], [ %12, %17 ]
  store i32 0, ptr %3, align 4
  %27 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %26, ptr noundef nonnull @.str.90, ptr noundef nonnull %2, ptr noundef nonnull %3) #25
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %41

29:                                               ; preds = %25
  %30 = load i32, ptr %3, align 4
  %31 = getelementptr i8, ptr %26, i32 %30
  %32 = load i8, ptr %31, align 1
  %33 = icmp eq i8 %32, 64
  br i1 %33, label %34, label %41

34:                                               ; preds = %29
  %35 = add i32 %30, 1
  %36 = getelementptr i8, ptr %26, i32 %35
  store ptr %36, ptr %4, align 4
  %37 = load i32, ptr %2, align 4
  %38 = icmp sgt i32 %37, 63
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.91, i32 noundef %37) #26
  store i32 12, ptr %2, align 4
  br label %42

41:                                               ; preds = %29, %25
  store i32 12, ptr %2, align 4
  br label %42

42:                                               ; preds = %41, %39, %34
  %43 = phi ptr [ %36, %34 ], [ %36, %39 ], [ %26, %41 ]
  %44 = call fastcc i32 @pci_dev_str_match(ptr noundef %0, ptr noundef %43, ptr noundef nonnull %4) #25
  %45 = icmp eq i32 %44, 1
  br i1 %45, label %46, label %51

46:                                               ; preds = %42
  %47 = load i32, ptr %2, align 4
  %48 = zext i32 %47 to i64
  %49 = shl nuw i64 1, %48
  %50 = trunc i64 %49 to i32
  br label %62

51:                                               ; preds = %42
  %52 = icmp slt i32 %44, 0
  %53 = load ptr, ptr %4, align 4
  br i1 %52, label %54, label %56

54:                                               ; preds = %51
  %55 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92, ptr noundef %53) #26
  br label %62

56:                                               ; preds = %51
  %57 = load i8, ptr %53, align 1
  switch i8 %57, label %62 [
    i8 59, label %58
    i8 44, label %58
  ]

58:                                               ; preds = %56, %56
  %59 = getelementptr i8, ptr %53, i32 1
  store ptr %59, ptr %4, align 4
  %60 = load i8, ptr %59, align 1
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %62, label %25

62:                                               ; preds = %58, %56, %54, %46, %23, %21, %14, %10
  %63 = phi i1 [ true, %10 ], [ true, %14 ], [ true, %21 ], [ true, %23 ], [ false, %46 ], [ true, %54 ], [ true, %58 ], [ true, %56 ]
  %64 = phi i32 [ %11, %10 ], [ %11, %14 ], [ 0, %21 ], [ 0, %23 ], [ %50, %46 ], [ %11, %54 ], [ %11, %58 ], [ %11, %56 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #25, !srcloc !21
  %65 = load i16, ptr @resource_alignment_lock, align 4
  %66 = add i16 %65, 1
  store i16 %66, ptr @resource_alignment_lock, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #25, !srcloc !22
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #25, !srcloc !23
  call void asm sideeffect "", "~{memory}"() #25, !srcloc !28
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #25
  %67 = icmp eq i32 %64, 0
  br i1 %67, label %172, label %68

68:                                               ; preds = %62
  %69 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 13
  %70 = load i8, ptr %69, align 1
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 11
  %74 = load i32, ptr %73, align 8
  %75 = and i32 %74, -256
  %76 = icmp eq i32 %75, 393216
  br i1 %76, label %77, label %79

77:                                               ; preds = %72
  %78 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %78, ptr noundef nonnull @.str.38) #26
  br label %172

79:                                               ; preds = %72, %68
  %80 = call i32 @pci_read_config_word(ptr noundef %0, i32 noundef 4, ptr noundef nonnull %5) #25
  %81 = load i16, ptr %5, align 2
  %82 = and i16 %81, -3
  store i16 %82, ptr %5, align 2
  %83 = call i32 @pci_write_config_word(ptr noundef %0, i32 noundef 4, i16 noundef zeroext %82) #25
  %84 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  %85 = zext i32 %64 to i64
  %86 = add i32 %64, -1
  br label %87

87:                                               ; preds = %117, %79
  %88 = phi i32 [ 0, %79 ], [ %118, %117 ]
  %89 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 %88
  %90 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 %88, i32 3
  %91 = load i32, ptr %90, align 4
  %92 = and i32 %91, 512
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %117, label %94

94:                                               ; preds = %87
  %95 = and i32 %91, 16
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %98, label %97

97:                                               ; preds = %94
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %84, ptr noundef nonnull @.str.93, i32 noundef %88, ptr noundef %89, i64 noundef %85) #26
  br label %117

98:                                               ; preds = %94
  %99 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 %88, i32 1
  %100 = load i32, ptr %99, align 4
  %101 = load i32, ptr %89, align 4
  %102 = add i32 %100, 1
  %103 = sub i32 %102, %101
  %104 = icmp ult i32 %103, %64
  br i1 %104, label %105, label %117

105:                                              ; preds = %98
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %84, ptr noundef nonnull @.str.94, i32 noundef %88, ptr noundef %89, i64 noundef %85) #26
  br i1 %63, label %108, label %106

106:                                              ; preds = %105
  store i32 0, ptr %89, align 4
  %107 = load i32, ptr %90, align 4
  br label %113

108:                                              ; preds = %105
  %109 = load i32, ptr %90, align 4
  %110 = and i32 %109, -786433
  %111 = or i32 %110, 524288
  store i32 %64, ptr %89, align 4
  %112 = add i32 %86, %103
  br label %113

113:                                              ; preds = %108, %106
  %114 = phi i32 [ %107, %106 ], [ %111, %108 ]
  %115 = phi i32 [ %86, %106 ], [ %112, %108 ]
  store i32 %115, ptr %99, align 4
  %116 = or i32 %114, 536870912
  store i32 %116, ptr %90, align 4
  br label %117

117:                                              ; preds = %113, %98, %97, %87
  %118 = add nuw nsw i32 %88, 1
  %119 = icmp eq i32 %118, 7
  br i1 %119, label %120, label %87

120:                                              ; preds = %117
  %121 = load i8, ptr %69, align 1
  %122 = icmp eq i8 %121, 1
  br i1 %122, label %123, label %172

123:                                              ; preds = %120
  %124 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 7, i32 3
  %125 = load i32, ptr %124, align 4
  %126 = and i32 %125, 512
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %135, label %128

128:                                              ; preds = %123
  %129 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 7
  %130 = or i32 %125, 536870912
  store i32 %130, ptr %124, align 4
  %131 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 7, i32 1
  %132 = load i32, ptr %131, align 4
  %133 = load i32, ptr %129, align 4
  %134 = sub i32 %132, %133
  store i32 %134, ptr %131, align 4
  store i32 0, ptr %129, align 4
  br label %135

135:                                              ; preds = %128, %123
  %136 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 8, i32 3
  %137 = load i32, ptr %136, align 4
  %138 = and i32 %137, 512
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %147, label %140

140:                                              ; preds = %135
  %141 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 8
  %142 = or i32 %137, 536870912
  store i32 %142, ptr %136, align 4
  %143 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 8, i32 1
  %144 = load i32, ptr %143, align 4
  %145 = load i32, ptr %141, align 4
  %146 = sub i32 %144, %145
  store i32 %146, ptr %143, align 4
  store i32 0, ptr %141, align 4
  br label %147

147:                                              ; preds = %140, %135
  %148 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 9, i32 3
  %149 = load i32, ptr %148, align 4
  %150 = and i32 %149, 512
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %159, label %152

152:                                              ; preds = %147
  %153 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 9
  %154 = or i32 %149, 536870912
  store i32 %154, ptr %148, align 4
  %155 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 9, i32 1
  %156 = load i32, ptr %155, align 4
  %157 = load i32, ptr %153, align 4
  %158 = sub i32 %156, %157
  store i32 %158, ptr %155, align 4
  store i32 0, ptr %153, align 4
  br label %159

159:                                              ; preds = %152, %147
  %160 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 10, i32 3
  %161 = load i32, ptr %160, align 4
  %162 = and i32 %161, 512
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %171, label %164

164:                                              ; preds = %159
  %165 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 10
  %166 = or i32 %161, 536870912
  store i32 %166, ptr %160, align 4
  %167 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 10, i32 1
  %168 = load i32, ptr %167, align 4
  %169 = load i32, ptr %165, align 4
  %170 = sub i32 %168, %169
  store i32 %170, ptr %167, align 4
  store i32 0, ptr %165, align 4
  br label %171

171:                                              ; preds = %164, %159
  call void @pci_disable_bridge_window(ptr noundef %0) #25
  br label %172

172:                                              ; preds = %171, %120, %77, %62, %1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #25
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_bridge_window(ptr noundef) local_unnamed_addr #6

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @pci_resource_alignment_sysfs_init() #15 section ".init.text" {
  %1 = tail call i32 @bus_create_file(ptr noundef nonnull @pci_bus_type, ptr noundef nonnull @bus_attr_resource_alignment) #25
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pci_bus_find_domain_nr(ptr nocapture noundef readnone %0, ptr noundef readonly %1) local_unnamed_addr #5 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %13, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 25
  %6 = load ptr, ptr %5, align 8
  %7 = tail call i32 @of_get_pci_domain_nr(ptr noundef %6) #25
  %8 = icmp sgt i32 %7, -1
  %9 = load i32, ptr @of_pci_bus_find_domain_nr.use_dt_domains, align 4
  %10 = icmp ne i32 %9, 0
  %11 = select i1 %8, i1 %10, i1 false
  br i1 %11, label %12, label %16

12:                                               ; preds = %4
  store i32 1, ptr @of_pci_bus_find_domain_nr.use_dt_domains, align 4
  br label %28

13:                                               ; preds = %2
  %14 = load i32, ptr @of_pci_bus_find_domain_nr.use_dt_domains, align 4
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %26, label %20

16:                                               ; preds = %4
  %17 = icmp slt i32 %7, 0
  %18 = icmp ne i32 %9, 1
  %19 = select i1 %17, i1 %18, i1 false
  br i1 %19, label %20, label %23

20:                                               ; preds = %16, %13
  store i32 0, ptr @of_pci_bus_find_domain_nr.use_dt_domains, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #25, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @__domain_nr) #25, !srcloc !13
  %21 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @__domain_nr, ptr nonnull @__domain_nr, i32 1, ptr nonnull elementtype(i32) @__domain_nr) #25, !srcloc !14
  %22 = extractvalue { i32, i32 } %21, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #25, !srcloc !15
  br label %28

23:                                               ; preds = %16
  %24 = load ptr, ptr %5, align 8
  %25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.97, ptr noundef %24) #26
  br label %26

26:                                               ; preds = %23, %13
  %27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.98) #26
  br label %28

28:                                               ; preds = %26, %20, %12
  %29 = phi i32 [ %7, %12 ], [ %22, %20 ], [ -1, %26 ]
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define weak dso_local i32 @pci_ext_cfg_avail() local_unnamed_addr #5 {
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define weak dso_local void @pci_fixup_cardbus(ptr noundef %0) #5 {
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @pci_setup(ptr noundef %0) #15 section ".init.text" {
  %2 = alloca ptr, align 4
  store ptr %0, ptr %2, align 4
  %3 = icmp eq ptr %0, null
  br i1 %3, label %144, label %4

4:                                                ; preds = %142, %1
  %5 = phi ptr [ %13, %142 ], [ %0, %1 ]
  %6 = call ptr @strchr(ptr noundef nonnull %5, i32 noundef 44)
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = getelementptr i8, ptr %6, i32 1
  store i8 0, ptr %6, align 1
  %10 = load ptr, ptr %2, align 4
  br label %11

11:                                               ; preds = %8, %4
  %12 = phi ptr [ %10, %8 ], [ %5, %4 ]
  %13 = phi ptr [ %9, %8 ], [ null, %4 ]
  %14 = load i8, ptr %12, align 1
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %142, label %16

16:                                               ; preds = %11
  %17 = call ptr @pcibios_setup(ptr noundef %12) #29
  store ptr %17, ptr %2, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %142, label %19

19:                                               ; preds = %16
  %20 = load i8, ptr %17, align 1
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %142, label %22

22:                                               ; preds = %19
  %23 = call i32 @strcmp(ptr noundef nonnull %17, ptr noundef nonnull dereferenceable(6) @.str.99)
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  call void @pci_no_msi() #25
  br label %142

26:                                               ; preds = %22
  %27 = call i32 @strncmp(ptr noundef nonnull %17, ptr noundef nonnull dereferenceable(6) @.str.100, i32 noundef 5)
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.101) #26
  store i1 true, ptr @pcie_ats_disabled, align 1
  br label %142

31:                                               ; preds = %26
  %32 = call i32 @strcmp(ptr noundef nonnull %17, ptr noundef nonnull dereferenceable(6) @.str.102)
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %142, label %34

34:                                               ; preds = %31
  %35 = call i32 @strcmp(ptr noundef nonnull %17, ptr noundef nonnull dereferenceable(10) @.str.103)
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  store i8 1, ptr @pci_early_dump, align 1
  br label %142

38:                                               ; preds = %34
  %39 = call i32 @strncmp(ptr noundef nonnull %17, ptr noundef nonnull dereferenceable(9) @.str.104, i32 noundef 8)
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = getelementptr i8, ptr %17, i32 8
  call void @pci_realloc_get_opt(ptr noundef %42) #25
  br label %142

43:                                               ; preds = %38
  %44 = call i32 @strncmp(ptr noundef nonnull %17, ptr noundef nonnull dereferenceable(8) @.str.105, i32 noundef 7)
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  call void @pci_realloc_get_opt(ptr noundef nonnull @.str.106) #25
  br label %142

47:                                               ; preds = %43
  %48 = call i32 @strcmp(ptr noundef nonnull %17, ptr noundef nonnull dereferenceable(10) @.str.107)
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  store i32 0, ptr @pci_domains_supported, align 4
  br label %142

51:                                               ; preds = %47
  %52 = call i32 @strncmp(ptr noundef nonnull %17, ptr noundef nonnull dereferenceable(6) @.str.108, i32 noundef 5)
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  store i1 true, ptr @pcie_ari_disabled, align 1
  br label %142

55:                                               ; preds = %51
  %56 = call i32 @strncmp(ptr noundef nonnull %17, ptr noundef nonnull dereferenceable(10) @.str.109, i32 noundef 9)
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %55
  %59 = getelementptr i8, ptr %17, i32 9
  %60 = call i64 @memparse(ptr noundef %59, ptr noundef nonnull %2) #25
  %61 = trunc i64 %60 to i32
  store i32 %61, ptr @pci_cardbus_io_size, align 4
  br label %142

62:                                               ; preds = %55
  %63 = call i32 @strncmp(ptr noundef nonnull %17, ptr noundef nonnull dereferenceable(11) @.str.110, i32 noundef 10)
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %62
  %66 = getelementptr i8, ptr %17, i32 10
  %67 = call i64 @memparse(ptr noundef %66, ptr noundef nonnull %2) #25
  %68 = trunc i64 %67 to i32
  store i32 %68, ptr @pci_cardbus_mem_size, align 4
  br label %142

69:                                               ; preds = %62
  %70 = call i32 @strncmp(ptr noundef nonnull %17, ptr noundef nonnull dereferenceable(20) @.str.111, i32 noundef 19)
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %69
  %73 = getelementptr i8, ptr %17, i32 19
  store ptr %73, ptr @resource_alignment_param, align 4
  br label %142

74:                                               ; preds = %69
  %75 = call i32 @strncmp(ptr noundef nonnull %17, ptr noundef nonnull dereferenceable(6) @.str.112, i32 noundef 5)
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %142, label %77

77:                                               ; preds = %74
  %78 = call i32 @strncmp(ptr noundef nonnull %17, ptr noundef nonnull dereferenceable(10) @.str.113, i32 noundef 9)
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %77
  %81 = getelementptr i8, ptr %17, i32 9
  %82 = call i64 @memparse(ptr noundef %81, ptr noundef nonnull %2) #25
  %83 = trunc i64 %82 to i32
  store i32 %83, ptr @pci_hotplug_io_size, align 4
  br label %142

84:                                               ; preds = %77
  %85 = call i32 @strncmp(ptr noundef nonnull %17, ptr noundef nonnull dereferenceable(12) @.str.114, i32 noundef 11)
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %84
  %88 = getelementptr i8, ptr %17, i32 11
  %89 = call i64 @memparse(ptr noundef %88, ptr noundef nonnull %2) #25
  %90 = trunc i64 %89 to i32
  store i32 %90, ptr @pci_hotplug_mmio_size, align 4
  br label %142

91:                                               ; preds = %84
  %92 = call i32 @strncmp(ptr noundef nonnull %17, ptr noundef nonnull dereferenceable(16) @.str.115, i32 noundef 15)
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %91
  %95 = getelementptr i8, ptr %17, i32 15
  %96 = call i64 @memparse(ptr noundef %95, ptr noundef nonnull %2) #25
  %97 = trunc i64 %96 to i32
  store i32 %97, ptr @pci_hotplug_mmio_pref_size, align 4
  br label %142

98:                                               ; preds = %91
  %99 = call i32 @strncmp(ptr noundef nonnull %17, ptr noundef nonnull dereferenceable(11) @.str.116, i32 noundef 10)
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %98
  %102 = getelementptr i8, ptr %17, i32 10
  %103 = call i64 @memparse(ptr noundef %102, ptr noundef nonnull %2) #25
  %104 = trunc i64 %103 to i32
  store i32 %104, ptr @pci_hotplug_mmio_size, align 4
  store i32 %104, ptr @pci_hotplug_mmio_pref_size, align 4
  br label %142

105:                                              ; preds = %98
  %106 = call i32 @strncmp(ptr noundef nonnull %17, ptr noundef nonnull dereferenceable(11) @.str.117, i32 noundef 10)
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %105
  %109 = getelementptr i8, ptr %17, i32 10
  %110 = call i32 @simple_strtoul(ptr noundef %109, ptr noundef nonnull %2, i32 noundef 0) #25
  %111 = icmp ugt i32 %110, 255
  %112 = select i1 %111, i32 1, i32 %110
  store i32 %112, ptr @pci_hotplug_bus_size, align 4
  br label %142

113:                                              ; preds = %105
  %114 = call i32 @strncmp(ptr noundef nonnull %17, ptr noundef nonnull dereferenceable(18) @.str.118, i32 noundef 17)
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %113
  store i32 0, ptr @pcie_bus_config, align 4
  br label %142

117:                                              ; preds = %113
  %118 = call i32 @strncmp(ptr noundef nonnull %17, ptr noundef nonnull dereferenceable(14) @.str.119, i32 noundef 13)
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %117
  store i32 2, ptr @pcie_bus_config, align 4
  br label %142

121:                                              ; preds = %117
  %122 = call i32 @strncmp(ptr noundef nonnull %17, ptr noundef nonnull dereferenceable(14) @.str.120, i32 noundef 13)
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %121
  store i32 3, ptr @pcie_bus_config, align 4
  br label %142

125:                                              ; preds = %121
  %126 = call i32 @strncmp(ptr noundef nonnull %17, ptr noundef nonnull dereferenceable(19) @.str.121, i32 noundef 18)
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %125
  store i32 4, ptr @pcie_bus_config, align 4
  br label %142

129:                                              ; preds = %125
  %130 = call i32 @strncmp(ptr noundef nonnull %17, ptr noundef nonnull dereferenceable(14) @.str.122, i32 noundef 13)
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %129
  %133 = load i32, ptr @pci_flags, align 4
  %134 = or i32 %133, 64
  store i32 %134, ptr @pci_flags, align 4
  br label %142

135:                                              ; preds = %129
  %136 = call i32 @strncmp(ptr noundef nonnull %17, ptr noundef nonnull dereferenceable(19) @.str.123, i32 noundef 18)
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %135
  %139 = getelementptr i8, ptr %17, i32 18
  store ptr %139, ptr @disable_acs_redir_param, align 4
  br label %142

140:                                              ; preds = %135
  %141 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.124, ptr noundef nonnull %17) #26
  br label %142

142:                                              ; preds = %140, %138, %132, %128, %124, %120, %116, %108, %101, %94, %87, %80, %74, %72, %65, %58, %54, %50, %46, %41, %37, %31, %29, %25, %19, %16, %11
  store ptr %13, ptr %2, align 4
  %143 = icmp eq ptr %13, null
  br i1 %143, label %144, label %4

144:                                              ; preds = %142, %1
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @pci_realloc_setup_params() #15 section ".init.text" {
  %1 = load ptr, ptr @resource_alignment_param, align 4
  %2 = tail call noalias ptr @kstrdup(ptr noundef %1, i32 noundef 3264) #25
  store ptr %2, ptr @resource_alignment_param, align 4
  %3 = load ptr, ptr @disable_acs_redir_param, align 4
  %4 = tail call noalias ptr @kstrdup(ptr noundef %3, i32 noundef 3264) #25
  store ptr %4, ptr @disable_acs_redir_param, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #19

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap_wc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_bus_read_config_word(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcie_aspm_pm_state_change(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_update_resource(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcie_capability_write_word(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #16

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_dev_specific_enable_acs(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @pci_dev_str_match(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #5 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca i16, align 2
  %11 = alloca i16, align 2
  %12 = alloca i16, align 2
  %13 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #25
  store i32 0, ptr %9, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %10) #25
  store i16 0, ptr %10, align 2, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %11) #25
  store i16 0, ptr %11, align 2, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %12) #25
  store i16 0, ptr %12, align 2, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %13) #25
  store i16 0, ptr %13, align 2, !annotation !8
  %14 = tail call i32 @strncmp(ptr noundef %1, ptr noundef nonnull dereferenceable(5) @.str.50, i32 noundef 4)
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %54

16:                                               ; preds = %3
  %17 = getelementptr i8, ptr %1, i32 4
  %18 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %17, ptr noundef nonnull @.str.51, ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %12, ptr noundef nonnull %13, ptr noundef nonnull %9)
  %19 = icmp eq i32 %18, 4
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %17, ptr noundef nonnull @.str.52, ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %9)
  %22 = icmp eq i32 %21, 2
  br i1 %22, label %23, label %129

23:                                               ; preds = %20
  store i16 0, ptr %12, align 2
  store i16 0, ptr %13, align 2
  br label %24

24:                                               ; preds = %23, %16
  %25 = load i32, ptr %9, align 4
  %26 = getelementptr i8, ptr %17, i32 %25
  %27 = load i16, ptr %10, align 2
  %28 = icmp eq i16 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 7
  %31 = load i16, ptr %30, align 8
  %32 = icmp eq i16 %27, %31
  br i1 %32, label %33, label %125

33:                                               ; preds = %29, %24
  %34 = load i16, ptr %11, align 2
  %35 = icmp eq i16 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 8
  %38 = load i16, ptr %37, align 2
  %39 = icmp eq i16 %34, %38
  br i1 %39, label %40, label %125

40:                                               ; preds = %36, %33
  %41 = load i16, ptr %12, align 2
  %42 = icmp eq i16 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 9
  %45 = load i16, ptr %44, align 4
  %46 = icmp eq i16 %41, %45
  br i1 %46, label %47, label %125

47:                                               ; preds = %43, %40
  %48 = load i16, ptr %13, align 2
  %49 = icmp eq i16 %48, 0
  br i1 %49, label %127, label %50

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 10
  %52 = load i16, ptr %51, align 2
  %53 = icmp eq i16 %48, %52
  br i1 %53, label %127, label %125

54:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #25
  store i32 0, ptr %4, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #25
  store i32 0, ptr %5, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #25
  store i32 0, ptr %6, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #25
  store i32 0, ptr %7, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #25
  store i8 0, ptr %8, align 1, !annotation !8
  %55 = tail call ptr @strchrnul(ptr noundef %1, i32 noundef 59) #25
  %56 = ptrtoint ptr %55 to i32
  %57 = ptrtoint ptr %1 to i32
  %58 = sub i32 %56, %57
  %59 = tail call ptr @kmemdup_nul(ptr noundef %1, i32 noundef %58, i32 noundef 2592) #25
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %62

61:                                               ; preds = %54
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #25
  br label %129

62:                                               ; preds = %54
  %63 = tail call ptr @strrchr(ptr noundef nonnull %59, i32 noundef 47) #25
  %64 = icmp eq ptr %63, null
  br i1 %64, label %93, label %65

65:                                               ; preds = %90, %62
  %66 = phi ptr [ %91, %90 ], [ %63, %62 ]
  %67 = phi ptr [ %88, %90 ], [ %0, %62 ]
  %68 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef nonnull %66, ptr noundef nonnull @.str.53, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8) #25
  %69 = icmp eq i32 %68, 2
  br i1 %69, label %70, label %113

70:                                               ; preds = %65
  %71 = getelementptr inbounds %struct.pci_dev, ptr %67, i32 0, i32 6
  %72 = load i32, ptr %71, align 4
  %73 = load i32, ptr %6, align 4
  %74 = shl i32 %73, 3
  %75 = and i32 %74, 248
  %76 = load i32, ptr %7, align 4
  %77 = and i32 %76, 7
  %78 = or i32 %75, %77
  %79 = icmp eq i32 %72, %78
  br i1 %79, label %80, label %114

80:                                               ; preds = %70
  %81 = getelementptr inbounds %struct.pci_dev, ptr %67, i32 0, i32 1
  %82 = load ptr, ptr %81, align 8
  %83 = getelementptr inbounds %struct.pci_bus, ptr %82, i32 0, i32 1
  %84 = load ptr, ptr %83, align 8
  %85 = icmp eq ptr %84, null
  br i1 %85, label %114, label %86

86:                                               ; preds = %80
  %87 = getelementptr inbounds %struct.pci_bus, ptr %82, i32 0, i32 4
  %88 = load ptr, ptr %87, align 4
  %89 = icmp eq ptr %88, null
  br i1 %89, label %114, label %90

90:                                               ; preds = %86
  store i8 0, ptr %66, align 1
  %91 = call ptr @strrchr(ptr noundef nonnull %59, i32 noundef 47) #25
  %92 = icmp eq ptr %91, null
  br i1 %92, label %93, label %65

93:                                               ; preds = %90, %62
  %94 = phi ptr [ %0, %62 ], [ %88, %90 ]
  %95 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef nonnull %59, ptr noundef nonnull @.str.54, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8) #25
  %96 = icmp eq i32 %95, 4
  br i1 %96, label %100, label %97

97:                                               ; preds = %93
  store i32 0, ptr %4, align 4
  %98 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef nonnull %59, ptr noundef nonnull @.str.55, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8) #25
  %99 = icmp eq i32 %98, 3
  br i1 %99, label %100, label %113

100:                                              ; preds = %97, %93
  %101 = load i32, ptr %4, align 4
  %102 = getelementptr inbounds %struct.pci_dev, ptr %94, i32 0, i32 1
  %103 = load ptr, ptr %102, align 8
  %104 = getelementptr inbounds %struct.pci_bus, ptr %103, i32 0, i32 16
  %105 = load i32, ptr %104, align 8
  %106 = icmp eq i32 %101, %105
  br i1 %106, label %107, label %114

107:                                              ; preds = %100
  %108 = load i32, ptr %5, align 4
  %109 = getelementptr inbounds %struct.pci_bus, ptr %103, i32 0, i32 12
  %110 = load i8, ptr %109, align 4
  %111 = zext i8 %110 to i32
  %112 = icmp eq i32 %108, %111
  br i1 %112, label %115, label %114

113:                                              ; preds = %97, %65
  call void @kfree(ptr noundef nonnull %59) #25
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #25
  br label %129

114:                                              ; preds = %107, %100, %86, %80, %70
  call void @kfree(ptr noundef nonnull %59) #25
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #25
  br label %125

115:                                              ; preds = %107
  %116 = getelementptr inbounds %struct.pci_dev, ptr %94, i32 0, i32 6
  %117 = load i32, ptr %116, align 4
  %118 = load i32, ptr %6, align 4
  %119 = shl i32 %118, 3
  %120 = and i32 %119, 248
  %121 = load i32, ptr %7, align 4
  %122 = and i32 %121, 7
  %123 = or i32 %120, %122
  %124 = icmp eq i32 %117, %123
  call void @kfree(ptr noundef nonnull %59) #25
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #25
  br i1 %124, label %127, label %125

125:                                              ; preds = %115, %114, %50, %43, %36, %29
  %126 = phi ptr [ %26, %50 ], [ %26, %43 ], [ %26, %36 ], [ %26, %29 ], [ %55, %115 ], [ %55, %114 ]
  store ptr %126, ptr %2, align 4
  br label %129

127:                                              ; preds = %115, %50, %47
  %128 = phi ptr [ %26, %47 ], [ %26, %50 ], [ %55, %115 ]
  store ptr %128, ptr %2, align 4
  br label %129

129:                                              ; preds = %127, %125, %113, %61, %20
  %130 = phi i32 [ 1, %127 ], [ 0, %125 ], [ -22, %20 ], [ -22, %113 ], [ -12, %61 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %13) #25
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %12) #25
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %10) #25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #25
  ret i32 %130
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_dev_specific_disable_acs_redir(ptr noundef) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #19

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #20

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strchrnul(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup_nul(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #19

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcie_aspm_powersave_config_link(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_fixup_device(i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @pci_enable_bridge(ptr noundef %0) unnamed_addr #5 {
  %2 = alloca i16, align 2
  %3 = alloca i16, align 2
  %4 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.pci_bus, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.pci_bus, ptr %5, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  tail call fastcc void @pci_enable_bridge(ptr noundef nonnull %11)
  br label %14

14:                                               ; preds = %13, %9, %1
  %15 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 51
  %16 = load volatile i32, ptr %15, align 4
  %17 = icmp slt i32 %16, 1
  br i1 %17, label %33, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 49
  %20 = load i40, ptr %19, align 1
  %21 = and i40 %20, 32
  %22 = icmp eq i40 %21, 0
  br i1 %22, label %23, label %50

23:                                               ; preds = %18
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #25
  store i16 0, ptr %3, align 2, !annotation !8
  %24 = call i32 @pci_read_config_word(ptr noundef %0, i32 noundef 4, ptr noundef nonnull %3) #25
  %25 = load i16, ptr %3, align 2
  %26 = or i16 %25, 4
  %27 = icmp eq i16 %26, %25
  br i1 %27, label %30, label %28

28:                                               ; preds = %23
  %29 = call i32 @pci_write_config_word(ptr noundef %0, i32 noundef 4, i16 noundef zeroext %26) #25
  br label %30

30:                                               ; preds = %28, %23
  %31 = load i40, ptr %19, align 1
  %32 = or i40 %31, 32
  store i40 %32, ptr %19, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #25
  br label %49

33:                                               ; preds = %14
  %34 = tail call fastcc i32 @pci_enable_device_flags(ptr noundef %0, i32 noundef 768) #25
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.56, i32 noundef %34) #26
  br label %38

38:                                               ; preds = %36, %33
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #25
  store i16 0, ptr %2, align 2, !annotation !8
  %39 = call i32 @pci_read_config_word(ptr noundef %0, i32 noundef 4, ptr noundef nonnull %2) #25
  %40 = load i16, ptr %2, align 2
  %41 = or i16 %40, 4
  %42 = icmp eq i16 %41, %40
  br i1 %42, label %45, label %43

43:                                               ; preds = %38
  %44 = call i32 @pci_write_config_word(ptr noundef %0, i32 noundef 4, i16 noundef zeroext %41) #25
  br label %45

45:                                               ; preds = %43, %38
  %46 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 49
  %47 = load i40, ptr %46, align 1
  %48 = or i40 %47, 32
  store i40 %48, ptr %46, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #25
  br label %49

49:                                               ; preds = %45, %30
  call void @pcibios_set_master(ptr noundef %0) #25
  br label %50

50:                                               ; preds = %49, %18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devres_find(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pcim_release(ptr noundef %0, ptr nocapture noundef readonly %1) #5 {
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  %5 = getelementptr i8, ptr %0, i32 -136
  %6 = getelementptr inbounds %struct.pci_devres, ptr %1, i32 0, i32 1
  %7 = getelementptr i8, ptr %0, i32 833
  br label %8

8:                                                ; preds = %46, %2
  %9 = phi i32 [ 0, %2 ], [ %47, %46 ]
  %10 = load i32, ptr %6, align 4
  %11 = shl nuw nsw i32 1, %9
  %12 = and i32 %10, %11
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %46, label %14

14:                                               ; preds = %8
  %15 = getelementptr %struct.pci_dev, ptr %5, i32 0, i32 47, i32 %9, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %46, label %18

18:                                               ; preds = %14
  %19 = getelementptr %struct.pci_dev, ptr %5, i32 0, i32 47, i32 %9
  %20 = load i32, ptr %19, align 8
  %21 = sub i32 %16, %20
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %46, label %23

23:                                               ; preds = %18
  %24 = getelementptr %struct.pci_dev, ptr %5, i32 0, i32 47, i32 %9, i32 3
  %25 = load i32, ptr %24, align 4
  %26 = and i32 %25, 256
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = and i32 %25, 512
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %28, %23
  %32 = phi ptr [ @ioport_resource, %23 ], [ @iomem_resource, %28 ]
  %33 = add nuw i32 %21, 1
  tail call void @__release_region(ptr noundef nonnull %32, i32 noundef %20, i32 noundef %33) #25
  br label %34

34:                                               ; preds = %31, %28
  %35 = load i40, ptr %7, align 1
  %36 = and i40 %35, 262144
  %37 = icmp eq i40 %36, 0
  br i1 %37, label %46, label %38

38:                                               ; preds = %34
  %39 = tail call ptr @devres_find(ptr noundef %0, ptr noundef nonnull @pcim_release, ptr noundef null, ptr noundef null) #25
  %40 = icmp eq ptr %39, null
  br i1 %40, label %46, label %41

41:                                               ; preds = %38
  %42 = xor i32 %11, -1
  %43 = getelementptr inbounds %struct.pci_devres, ptr %39, i32 0, i32 1
  %44 = load i32, ptr %43, align 4
  %45 = and i32 %44, %42
  store i32 %45, ptr %43, align 4
  br label %46

46:                                               ; preds = %41, %38, %34, %18, %14, %8
  %47 = add nuw nsw i32 %9, 1
  %48 = icmp eq i32 %47, 11
  br i1 %48, label %49, label %8

49:                                               ; preds = %46
  %50 = load i8, ptr %1, align 4
  %51 = and i8 %50, 16
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %63, label %53

53:                                               ; preds = %49
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #25
  store i16 0, ptr %4, align 2, !annotation !8
  %54 = call i32 @pci_read_config_word(ptr noundef %5, i32 noundef 4, ptr noundef nonnull %4) #25
  %55 = load i16, ptr %4, align 2
  %56 = and i16 %55, 16
  %57 = icmp eq i16 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %53
  %59 = and i16 %55, -17
  store i16 %59, ptr %4, align 2
  %60 = call i32 @pci_write_config_word(ptr noundef %5, i32 noundef 4, i16 noundef zeroext %59) #25
  br label %61

61:                                               ; preds = %58, %53
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #25
  %62 = load i8, ptr %1, align 4
  br label %63

63:                                               ; preds = %61, %49
  %64 = phi i8 [ %62, %61 ], [ %50, %49 ]
  %65 = and i8 %64, 8
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %95, label %67

67:                                               ; preds = %63
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #25
  store i16 0, ptr %3, align 2, !annotation !8
  %68 = call i32 @pci_read_config_word(ptr noundef %5, i32 noundef 4, ptr noundef nonnull %3) #25
  %69 = and i8 %64, 4
  %70 = load i16, ptr %3, align 2
  %71 = and i16 %70, -1025
  %72 = zext i8 %69 to i16
  %73 = shl nuw nsw i16 %72, 8
  %74 = or i16 %71, %73
  %75 = xor i16 %74, 1024
  %76 = icmp eq i16 %75, %70
  br i1 %76, label %93, label %77

77:                                               ; preds = %67
  %78 = call i32 @pci_write_config_word(ptr noundef %5, i32 noundef 4, i16 noundef zeroext %75) #25
  %79 = load i40, ptr %7, align 1
  %80 = and i40 %79, 262144
  %81 = icmp eq i40 %80, 0
  br i1 %81, label %93, label %82

82:                                               ; preds = %77
  %83 = call ptr @devres_find(ptr noundef %0, ptr noundef nonnull @pcim_release, ptr noundef null, ptr noundef null) #25
  %84 = icmp eq ptr %83, null
  br i1 %84, label %93, label %85

85:                                               ; preds = %82
  %86 = load i8, ptr %83, align 4
  %87 = and i8 %86, 8
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %85
  %90 = and i8 %86, -13
  %91 = or i8 %90, %69
  %92 = xor i8 %91, 12
  store i8 %92, ptr %83, align 4
  br label %93

93:                                               ; preds = %89, %85, %82, %77, %67
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #25
  %94 = load i8, ptr %1, align 4
  br label %95

95:                                               ; preds = %93, %63
  %96 = phi i8 [ %94, %93 ], [ %64, %63 ]
  %97 = and i8 %96, 3
  %98 = icmp eq i8 %97, 1
  br i1 %98, label %99, label %100

99:                                               ; preds = %95
  call void @pci_disable_device(ptr noundef %5)
  br label %100

100:                                              ; preds = %99, %95
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devres_get(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcie_capability_clear_and_set_dword(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_wakeup_dev_event(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #21

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #22

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pci_pme_list_scan(ptr nocapture noundef readnone %0) #5 {
  %2 = alloca i16, align 2
  tail call void @mutex_lock(ptr noundef nonnull @pci_pme_list_mutex) #25
  %3 = load ptr, ptr @pci_pme_list, align 4
  %4 = icmp eq ptr %3, @pci_pme_list
  br i1 %4, label %55, label %5

5:                                                ; preds = %53, %1
  %6 = phi ptr [ %7, %53 ], [ %3, %1 ]
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.pci_pme_device, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 33
  %11 = load i32, ptr %10, align 2
  %12 = and i32 %11, 32
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %49, label %14

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 1
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds %struct.pci_bus, ptr %16, i32 0, i32 4
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 30
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %53

24:                                               ; preds = %20, %14
  %25 = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 30
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, 4
  br i1 %27, label %53, label %28

28:                                               ; preds = %24
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #25
  store i16 0, ptr %2, align 2, !annotation !8
  %29 = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 32
  %30 = load i8, ptr %29, align 1
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %28
  %33 = zext i8 %30 to i32
  %34 = add nuw nsw i32 %33, 4
  %35 = call i32 @pci_read_config_word(ptr noundef %9, i32 noundef %34, ptr noundef nonnull %2) #25
  %36 = load i16, ptr %2, align 2
  %37 = icmp sgt i16 %36, -1
  br i1 %37, label %38, label %39

38:                                               ; preds = %32, %28
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #25
  br label %53

39:                                               ; preds = %32
  %40 = or i16 %36, -32768
  %41 = and i16 %36, 256
  %42 = icmp eq i16 %41, 0
  %43 = and i16 %40, -257
  %44 = select i1 %42, i16 %40, i16 %43
  store i16 %44, ptr %2, align 2
  %45 = call i32 @pci_write_config_word(ptr noundef %9, i32 noundef %34, i16 noundef zeroext %44) #25
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #25
  br i1 %42, label %53, label %46

46:                                               ; preds = %39
  %47 = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  call void @pm_wakeup_dev_event(ptr noundef %47, i32 noundef 100, i1 noundef zeroext false) #25
  %48 = call i32 @__pm_runtime_resume(ptr noundef %47, i32 noundef 1) #25
  br label %53

49:                                               ; preds = %5
  %50 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  store ptr %51, ptr %52, align 4
  store volatile ptr %7, ptr %51, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %6, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %50, align 4
  call void @kfree(ptr noundef %6) #25
  br label %53

53:                                               ; preds = %49, %46, %39, %38, %24, %20
  %54 = icmp eq ptr %7, @pci_pme_list
  br i1 %54, label %55, label %5

55:                                               ; preds = %53, %1
  %56 = load volatile ptr, ptr @pci_pme_list, align 4
  %57 = icmp eq ptr %56, @pci_pme_list
  br i1 %57, label %61, label %58

58:                                               ; preds = %55
  %59 = load ptr, ptr @system_freezable_wq, align 4
  %60 = call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %59, ptr noundef nonnull @pci_pme_work, i32 noundef 100) #25
  br label %61

61:                                               ; preds = %58, %55
  call void @mutex_unlock(ptr noundef nonnull @pci_pme_list_mutex) #25
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #6 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #6 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #6 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_trylock(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @reset_method_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #5 {
  %4 = getelementptr i8, ptr %0, i32 1060
  %5 = load i8, ptr %4, align 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %84, label %7

7:                                                ; preds = %3
  %8 = zext i8 %5 to i32
  %9 = getelementptr [7 x %struct.pci_reset_fn_method], ptr @pci_reset_fn_methods, i32 0, i32 %8, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %2, i32 noundef 0, ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.13, ptr noundef %10) #25
  %12 = getelementptr i8, ptr %0, i32 1061
  %13 = load i8, ptr %12, align 1
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %78, label %15

15:                                               ; preds = %7
  %16 = zext i8 %13 to i32
  %17 = icmp eq i32 %11, 0
  %18 = select i1 %17, ptr @.str.13, ptr @.str.72
  %19 = getelementptr [7 x %struct.pci_reset_fn_method], ptr @pci_reset_fn_methods, i32 0, i32 %16, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %2, i32 noundef %11, ptr noundef nonnull @.str.71, ptr noundef nonnull %18, ptr noundef %20) #25
  %22 = add i32 %21, %11
  %23 = getelementptr i8, ptr %0, i32 1062
  %24 = load i8, ptr %23, align 1
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %78, label %26

26:                                               ; preds = %15
  %27 = zext i8 %24 to i32
  %28 = icmp eq i32 %22, 0
  %29 = select i1 %28, ptr @.str.13, ptr @.str.72
  %30 = getelementptr [7 x %struct.pci_reset_fn_method], ptr @pci_reset_fn_methods, i32 0, i32 %27, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %2, i32 noundef %22, ptr noundef nonnull @.str.71, ptr noundef nonnull %29, ptr noundef %31) #25
  %33 = add i32 %32, %22
  %34 = getelementptr i8, ptr %0, i32 1063
  %35 = load i8, ptr %34, align 1
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %78, label %37

37:                                               ; preds = %26
  %38 = zext i8 %35 to i32
  %39 = icmp eq i32 %33, 0
  %40 = select i1 %39, ptr @.str.13, ptr @.str.72
  %41 = getelementptr [7 x %struct.pci_reset_fn_method], ptr @pci_reset_fn_methods, i32 0, i32 %38, i32 1
  %42 = load ptr, ptr %41, align 4
  %43 = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %2, i32 noundef %33, ptr noundef nonnull @.str.71, ptr noundef nonnull %40, ptr noundef %42) #25
  %44 = add i32 %43, %33
  %45 = getelementptr i8, ptr %0, i32 1064
  %46 = load i8, ptr %45, align 1
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %78, label %48

48:                                               ; preds = %37
  %49 = zext i8 %46 to i32
  %50 = icmp eq i32 %44, 0
  %51 = select i1 %50, ptr @.str.13, ptr @.str.72
  %52 = getelementptr [7 x %struct.pci_reset_fn_method], ptr @pci_reset_fn_methods, i32 0, i32 %49, i32 1
  %53 = load ptr, ptr %52, align 4
  %54 = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %2, i32 noundef %44, ptr noundef nonnull @.str.71, ptr noundef nonnull %51, ptr noundef %53) #25
  %55 = add i32 %54, %44
  %56 = getelementptr i8, ptr %0, i32 1065
  %57 = load i8, ptr %56, align 1
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %78, label %59

59:                                               ; preds = %48
  %60 = zext i8 %57 to i32
  %61 = icmp eq i32 %55, 0
  %62 = select i1 %61, ptr @.str.13, ptr @.str.72
  %63 = getelementptr [7 x %struct.pci_reset_fn_method], ptr @pci_reset_fn_methods, i32 0, i32 %60, i32 1
  %64 = load ptr, ptr %63, align 4
  %65 = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %2, i32 noundef %55, ptr noundef nonnull @.str.71, ptr noundef nonnull %62, ptr noundef %64) #25
  %66 = add i32 %65, %55
  %67 = getelementptr i8, ptr %0, i32 1066
  %68 = load i8, ptr %67, align 1
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %78, label %70

70:                                               ; preds = %59
  %71 = zext i8 %68 to i32
  %72 = icmp eq i32 %66, 0
  %73 = select i1 %72, ptr @.str.13, ptr @.str.72
  %74 = getelementptr [7 x %struct.pci_reset_fn_method], ptr @pci_reset_fn_methods, i32 0, i32 %71, i32 1
  %75 = load ptr, ptr %74, align 4
  %76 = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %2, i32 noundef %66, ptr noundef nonnull @.str.71, ptr noundef nonnull %73, ptr noundef %75) #25
  %77 = add i32 %76, %66
  br label %78

78:                                               ; preds = %70, %59, %48, %37, %26, %15, %7
  %79 = phi i32 [ %11, %7 ], [ %22, %15 ], [ %33, %26 ], [ %44, %37 ], [ %55, %48 ], [ %66, %59 ], [ %77, %70 ]
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %78
  %82 = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %2, i32 noundef %79, ptr noundef nonnull @.str.73) #25
  %83 = add i32 %82, %79
  br label %84

84:                                               ; preds = %81, %78, %3
  %85 = phi i32 [ %83, %81 ], [ 0, %78 ], [ 0, %3 ]
  ret i32 %85
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @reset_method_store(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #5 {
  %5 = alloca ptr, align 4
  %6 = alloca [7 x i8], align 1
  %7 = getelementptr i8, ptr %0, i32 -136
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %6) #25
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(7) %6, i8 0, i32 7, i1 false)
  %8 = tail call zeroext i1 @sysfs_streq(ptr noundef %2, ptr noundef nonnull @.str.13) #25
  br i1 %8, label %9, label %11

9:                                                ; preds = %4
  %10 = getelementptr i8, ptr %0, i32 1060
  store i8 0, ptr %10, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.74) #26
  br label %65

11:                                               ; preds = %4
  %12 = tail call zeroext i1 @sysfs_streq(ptr noundef %2, ptr noundef nonnull @.str.75) #25
  br i1 %12, label %13, label %14

13:                                               ; preds = %11
  tail call void @pci_init_reset_methods(ptr noundef %7)
  br label %65

14:                                               ; preds = %11
  %15 = tail call ptr @kstrndup(ptr noundef %2, i32 noundef %3, i32 noundef 3264) #25
  store ptr %15, ptr %5, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %65, label %17

17:                                               ; preds = %48, %14
  %18 = phi i32 [ %50, %48 ], [ 0, %14 ]
  br label %19

19:                                               ; preds = %22, %17
  %20 = call ptr @strsep(ptr noundef nonnull %5, ptr noundef nonnull @.str.72) #25
  %21 = icmp eq ptr %20, null
  br i1 %21, label %52, label %22

22:                                               ; preds = %19
  %23 = call zeroext i1 @sysfs_streq(ptr noundef nonnull %20, ptr noundef nonnull @.str.13) #25
  br i1 %23, label %19, label %24

24:                                               ; preds = %22
  %25 = call ptr @strim(ptr noundef nonnull %20) #25
  %26 = call zeroext i1 @sysfs_streq(ptr noundef %25, ptr noundef nonnull @.str.80) #25
  br i1 %26, label %38, label %27

27:                                               ; preds = %24
  %28 = call zeroext i1 @sysfs_streq(ptr noundef %25, ptr noundef nonnull @.str.81) #25
  br i1 %28, label %38, label %29

29:                                               ; preds = %27
  %30 = call zeroext i1 @sysfs_streq(ptr noundef %25, ptr noundef nonnull @.str.82) #25
  br i1 %30, label %38, label %31

31:                                               ; preds = %29
  %32 = call zeroext i1 @sysfs_streq(ptr noundef %25, ptr noundef nonnull @.str.83) #25
  br i1 %32, label %38, label %33

33:                                               ; preds = %31
  %34 = call zeroext i1 @sysfs_streq(ptr noundef %25, ptr noundef nonnull @.str.84) #25
  br i1 %34, label %38, label %35

35:                                               ; preds = %33
  %36 = call zeroext i1 @sysfs_streq(ptr noundef %25, ptr noundef nonnull @.str.85) #25
  br i1 %36, label %38, label %37

37:                                               ; preds = %35
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.76, ptr noundef %25) #26
  br label %63

38:                                               ; preds = %35, %33, %31, %29, %27, %24
  %39 = phi i32 [ 5, %33 ], [ 4, %31 ], [ 3, %29 ], [ 2, %27 ], [ 1, %24 ], [ 6, %35 ]
  %40 = getelementptr [7 x %struct.pci_reset_fn_method], ptr @pci_reset_fn_methods, i32 0, i32 %39
  %41 = load ptr, ptr %40, align 4
  %42 = call i32 %41(ptr noundef %7, i1 noundef zeroext true) #25
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %38
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.77, ptr noundef %25) #26
  br label %63

45:                                               ; preds = %38
  %46 = icmp eq i32 %18, 6
  br i1 %46, label %47, label %48

47:                                               ; preds = %45
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.78) #26
  br label %63

48:                                               ; preds = %45
  %49 = trunc i32 %39 to i8
  %50 = add nuw nsw i32 %18, 1
  %51 = getelementptr [7 x i8], ptr %6, i32 0, i32 %18
  store i8 %49, ptr %51, align 1
  br label %17

52:                                               ; preds = %19
  %53 = getelementptr [7 x i8], ptr %6, i32 0, i32 %18
  store i8 0, ptr %53, align 1
  %54 = call i32 @pci_dev_specific_reset(ptr noundef %7, i1 noundef zeroext true) #25
  %55 = icmp eq i32 %54, 0
  %56 = load i8, ptr %6, align 1
  %57 = icmp ne i8 %56, 1
  %58 = select i1 %55, i1 %57, i1 false
  br i1 %58, label %59, label %60

59:                                               ; preds = %52
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.79) #26
  br label %60

60:                                               ; preds = %59, %52
  %61 = getelementptr i8, ptr %0, i32 1060
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(7) %61, ptr noundef nonnull align 1 dereferenceable(7) %6, i32 7, i1 false)
  %62 = load ptr, ptr %5, align 4
  call void @kfree(ptr noundef %62) #25
  br label %65

63:                                               ; preds = %47, %44, %37
  %64 = load ptr, ptr %5, align 4
  call void @kfree(ptr noundef %64) #25
  br label %65

65:                                               ; preds = %63, %60, %14, %13, %9
  %66 = phi i32 [ %3, %9 ], [ %3, %13 ], [ -22, %63 ], [ %3, %60 ], [ -12, %14 ]
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #25
  ret i32 %66
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit_at(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #23

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @sysfs_streq(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kstrndup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strim(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_dev_specific_reset(ptr noundef, i1 noundef zeroext) #6

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @pci_dev_acpi_reset(ptr nocapture noundef readnone %0, i1 noundef zeroext %1) #24 {
  ret i32 -25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pci_af_flr(ptr noundef %0, i1 noundef zeroext %1) #5 {
  %3 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #25
  store i8 0, ptr %3, align 1, !annotation !8
  %4 = tail call zeroext i8 @pci_find_capability(ptr noundef %0, i32 noundef 19)
  %5 = zext i8 %4 to i32
  %6 = icmp eq i8 %4, 0
  br i1 %6, label %34, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 50
  %9 = load i16, ptr %8, align 2
  %10 = and i16 %9, 1024
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %12, label %34

12:                                               ; preds = %7
  %13 = add nuw nsw i32 %5, 3
  %14 = call i32 @pci_read_config_byte(ptr noundef %0, i32 noundef %13, ptr noundef nonnull %3) #25
  %15 = load i8, ptr %3, align 1
  %16 = and i8 %15, 3
  %17 = icmp ne i8 %16, 3
  %18 = or i1 %17, %1
  %19 = select i1 %17, i32 -25, i32 0
  br i1 %18, label %34, label %20

20:                                               ; preds = %12
  %21 = add nuw nsw i32 %5, 4
  %22 = call i32 @pci_wait_for_pending(ptr noundef %0, i32 noundef %21, i16 noundef zeroext 256)
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.86) #26
  br label %26

26:                                               ; preds = %24, %20
  %27 = call i32 @pci_write_config_byte(ptr noundef %0, i32 noundef %21, i8 noundef zeroext 1) #25
  %28 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 31
  %29 = load i8, ptr %28, align 8
  %30 = and i8 %29, 1
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  call void @msleep(i32 noundef 100) #25
  %33 = call fastcc i32 @pci_dev_wait(ptr noundef %0, ptr noundef nonnull @.str.87)
  br label %34

34:                                               ; preds = %32, %26, %12, %7, %2
  %35 = phi i32 [ %33, %32 ], [ -25, %2 ], [ -25, %7 ], [ %19, %12 ], [ 0, %26 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #25
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pci_pm_reset(ptr noundef %0, i1 noundef zeroext %1) #5 {
  %3 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #25
  store i16 0, ptr %3, align 2, !annotation !8
  %4 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 32
  %5 = load i8, ptr %4, align 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %51, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 50
  %9 = load i16, ptr %8, align 2
  %10 = and i16 %9, 128
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %12, label %51

12:                                               ; preds = %7
  %13 = zext i8 %5 to i32
  %14 = add nuw nsw i32 %13, 4
  %15 = call i32 @pci_read_config_word(ptr noundef %0, i32 noundef %14, ptr noundef nonnull %3) #25
  %16 = load i16, ptr %3, align 2
  %17 = and i16 %16, 8
  %18 = icmp ne i16 %17, 0
  %19 = or i1 %18, %1
  %20 = select i1 %18, i32 -25, i32 0
  br i1 %19, label %51, label %21

21:                                               ; preds = %12
  %22 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 30
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %51

25:                                               ; preds = %21
  %26 = or i16 %16, 3
  store i16 %26, ptr %3, align 2
  %27 = load i8, ptr %4, align 1
  %28 = zext i8 %27 to i32
  %29 = add nuw nsw i32 %28, 4
  %30 = call i32 @pci_write_config_word(ptr noundef %0, i32 noundef %29, i16 noundef zeroext %26) #25
  %31 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 35
  %32 = load i32, ptr %31, align 8
  %33 = load i32, ptr @pci_pm_d3hot_delay, align 4
  %34 = call i32 @llvm.umax.i32(i32 %32, i32 %33) #25
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %25
  call void @msleep(i32 noundef %34) #25
  br label %37

37:                                               ; preds = %36, %25
  %38 = load i16, ptr %3, align 2
  %39 = and i16 %38, -4
  store i16 %39, ptr %3, align 2
  %40 = load i8, ptr %4, align 1
  %41 = zext i8 %40 to i32
  %42 = add nuw nsw i32 %41, 4
  %43 = call i32 @pci_write_config_word(ptr noundef %0, i32 noundef %42, i16 noundef zeroext %39) #25
  %44 = load i32, ptr %31, align 8
  %45 = load i32, ptr @pci_pm_d3hot_delay, align 4
  %46 = call i32 @llvm.umax.i32(i32 %44, i32 %45) #25
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %37
  call void @msleep(i32 noundef %46) #25
  br label %49

49:                                               ; preds = %48, %37
  %50 = call fastcc i32 @pci_dev_wait(ptr noundef %0, ptr noundef nonnull @.str.88)
  br label %51

51:                                               ; preds = %49, %21, %12, %7, %2
  %52 = phi i32 [ %50, %49 ], [ -25, %7 ], [ -25, %2 ], [ %20, %12 ], [ -22, %21 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #25
  ret i32 %52
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pci_reset_bus_function(ptr noundef readonly %0, i1 noundef zeroext %1) #5 {
  %3 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 49
  %4 = load i40, ptr %3, align 1
  %5 = and i40 %4, 16
  %6 = icmp eq i40 %5, 0
  br i1 %6, label %7, label %39

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %39

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 5
  %13 = load ptr, ptr %12, align 8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %39, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 50
  %17 = load i16, ptr %16, align 2
  %18 = and i16 %17, 64
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %20, label %39

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.pci_slot, ptr %13, i32 0, i32 2
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %39, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.hotplug_slot, ptr %22, i32 0, i32 3
  %26 = load ptr, ptr %25, align 4
  %27 = tail call zeroext i1 @try_module_get(ptr noundef %26) #25
  br i1 %27, label %28, label %39

28:                                               ; preds = %24
  %29 = load ptr, ptr %22, align 4
  %30 = getelementptr inbounds %struct.hotplug_slot_ops, ptr %29, i32 0, i32 8
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load ptr, ptr %25, align 4
  tail call void @module_put(ptr noundef %34) #25
  br label %39

35:                                               ; preds = %28
  %36 = tail call i32 %31(ptr noundef nonnull %22, i1 noundef zeroext %1) #25
  %37 = load ptr, ptr %25, align 4
  tail call void @module_put(ptr noundef %37) #25
  %38 = icmp eq i32 %36, -25
  br i1 %38, label %39, label %69

39:                                               ; preds = %35, %33, %24, %20, %15, %11, %7, %2
  %40 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 1
  %41 = load ptr, ptr %40, align 8
  %42 = getelementptr inbounds %struct.pci_bus, ptr %41, i32 0, i32 1
  %43 = load ptr, ptr %42, align 8
  %44 = icmp eq ptr %43, null
  br i1 %44, label %69, label %45

45:                                               ; preds = %39
  %46 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 2
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %69

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.pci_bus, ptr %41, i32 0, i32 4
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %69, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 50
  %55 = load i16, ptr %54, align 2
  %56 = and i16 %55, 64
  %57 = icmp eq i16 %56, 0
  br i1 %57, label %58, label %69

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.pci_bus, ptr %41, i32 0, i32 3
  br label %60

60:                                               ; preds = %64, %58
  %61 = phi ptr [ %59, %58 ], [ %0, %64 ]
  %62 = load ptr, ptr %61, align 4
  %63 = icmp eq ptr %62, %59
  br i1 %63, label %66, label %64

64:                                               ; preds = %60
  %65 = icmp eq ptr %62, %0
  br i1 %65, label %60, label %69

66:                                               ; preds = %60
  br i1 %1, label %69, label %67

67:                                               ; preds = %66
  tail call void @pcibios_reset_secondary_bus(ptr noundef nonnull %51) #25
  %68 = tail call fastcc i32 @pci_dev_wait(ptr noundef nonnull %51, ptr noundef nonnull @.str.31) #25
  br label %69

69:                                               ; preds = %67, %66, %64, %53, %49, %45, %39, %35
  %70 = phi i32 [ %36, %35 ], [ %68, %67 ], [ -25, %53 ], [ -25, %49 ], [ -25, %45 ], [ -25, %39 ], [ 0, %66 ], [ -25, %64 ]
  ret i32 %70
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #6

; Function Attrs: nofree nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define internal fastcc zeroext i1 @pci_bus_resetable(ptr noundef readonly %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 50
  %7 = load i16, ptr %6, align 2
  %8 = and i16 %7, 64
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %10, label %29

10:                                               ; preds = %5, %1
  %11 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, %11
  br i1 %13, label %29, label %14

14:                                               ; preds = %26, %10
  %15 = phi ptr [ %27, %26 ], [ %12, %10 ]
  %16 = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 50
  %17 = load i16, ptr %16, align 2
  %18 = and i16 %17, 64
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 2
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %20
  %25 = tail call fastcc zeroext i1 @pci_bus_resetable(ptr noundef nonnull %22)
  br i1 %25, label %26, label %29

26:                                               ; preds = %24, %20
  %27 = load ptr, ptr %15, align 4
  %28 = icmp eq ptr %27, %11
  br i1 %28, label %29, label %14

29:                                               ; preds = %26, %24, %14, %10, %5
  %30 = phi i1 [ false, %5 ], [ true, %10 ], [ false, %24 ], [ false, %14 ], [ true, %26 ]
  ret i1 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @pci_bus_lock(ptr noundef readonly %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %15, label %5

5:                                                ; preds = %12, %1
  %6 = phi ptr [ %13, %12 ], [ %3, %1 ]
  tail call void @pci_cfg_access_lock(ptr noundef %6) #25
  %7 = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44, i32 9
  tail call void @mutex_lock(ptr noundef %7) #25
  %8 = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %5
  tail call fastcc void @pci_bus_lock(ptr noundef nonnull %9)
  br label %12

12:                                               ; preds = %11, %5
  %13 = load ptr, ptr %6, align 4
  %14 = icmp eq ptr %13, %2
  br i1 %14, label %15, label %5

15:                                               ; preds = %12, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @pci_bus_unlock(ptr noundef readonly %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %15, label %5

5:                                                ; preds = %11, %1
  %6 = phi ptr [ %13, %11 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %5
  tail call fastcc void @pci_bus_unlock(ptr noundef nonnull %8)
  br label %11

11:                                               ; preds = %10, %5
  %12 = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44, i32 9
  tail call void @mutex_unlock(ptr noundef %12) #25
  tail call void @pci_cfg_access_unlock(ptr noundef %6) #25
  %13 = load ptr, ptr %6, align 4
  %14 = icmp eq ptr %13, %2
  br i1 %14, label %15, label %5

15:                                               ; preds = %11, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @pci_bus_trylock(ptr noundef readonly %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %39, label %5

5:                                                ; preds = %20, %1
  %6 = phi ptr [ %21, %20 ], [ %3, %1 ]
  %7 = tail call zeroext i1 @pci_cfg_access_trylock(ptr noundef %6) #25
  br i1 %7, label %8, label %24

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44, i32 9
  %10 = tail call i32 @mutex_trylock(ptr noundef %9) #25
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %23, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %12
  %17 = tail call fastcc i32 @pci_bus_trylock(ptr noundef nonnull %14)
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  tail call void @mutex_unlock(ptr noundef %9) #25
  br label %23

20:                                               ; preds = %16, %12
  %21 = load ptr, ptr %6, align 4
  %22 = icmp eq ptr %21, %2
  br i1 %22, label %39, label %5

23:                                               ; preds = %19, %8
  tail call void @pci_cfg_access_unlock(ptr noundef %6) #25
  br label %24

24:                                               ; preds = %23, %5
  %25 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, %2
  br i1 %27, label %39, label %28

28:                                               ; preds = %34, %24
  %29 = phi ptr [ %37, %34 ], [ %26, %24 ]
  %30 = getelementptr inbounds %struct.pci_dev, ptr %29, i32 0, i32 2
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %28
  tail call fastcc void @pci_bus_unlock(ptr noundef nonnull %31)
  br label %34

34:                                               ; preds = %33, %28
  %35 = getelementptr inbounds %struct.pci_dev, ptr %29, i32 0, i32 44, i32 9
  tail call void @mutex_unlock(ptr noundef %35) #25
  tail call void @pci_cfg_access_unlock(ptr noundef %29) #25
  %36 = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, %2
  br i1 %38, label %39, label %28

39:                                               ; preds = %34, %24, %20, %1
  %40 = phi i32 [ 0, %24 ], [ 1, %1 ], [ 0, %34 ], [ 1, %20 ]
  ret i32 %40
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @pci_bus_save_and_disable_locked(ptr noundef readonly %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %14, label %5

5:                                                ; preds = %11, %1
  %6 = phi ptr [ %12, %11 ], [ %3, %1 ]
  tail call fastcc void @pci_dev_save_and_disable(ptr noundef %6)
  %7 = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %5
  tail call fastcc void @pci_bus_save_and_disable_locked(ptr noundef nonnull %8)
  br label %11

11:                                               ; preds = %10, %5
  %12 = load ptr, ptr %6, align 4
  %13 = icmp eq ptr %12, %2
  br i1 %13, label %14, label %5

14:                                               ; preds = %11, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @pci_bus_restore_locked(ptr noundef readonly %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %28, label %5

5:                                                ; preds = %25, %1
  %6 = phi ptr [ %26, %25 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 26
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %5
  tail call void @pci_restore_state(ptr noundef %6) #25
  br label %20

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.pci_driver, ptr %8, i32 0, i32 11
  %13 = load ptr, ptr %12, align 4
  tail call void @pci_restore_state(ptr noundef %6) #25
  %14 = icmp eq ptr %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.pci_error_handlers, ptr %13, i32 0, i32 4
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  tail call void %17(ptr noundef %6) #25
  br label %20

20:                                               ; preds = %19, %15, %11, %10
  %21 = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 2
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  tail call fastcc void @pci_bus_restore_locked(ptr noundef nonnull %22)
  br label %25

25:                                               ; preds = %24, %20
  %26 = load ptr, ptr %6, align 4
  %27 = icmp eq ptr %26, %2
  br i1 %27, label %28, label %5

28:                                               ; preds = %25, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #6 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bus_create_file(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @resource_alignment_show(ptr nocapture noundef readnone %0, ptr noundef %1) #5 {
  tail call void @_raw_spin_lock(ptr noundef nonnull @resource_alignment_lock) #25
  %3 = load ptr, ptr @resource_alignment_param, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %1, ptr noundef nonnull @.str.96, ptr noundef nonnull %3) #25
  br label %7

7:                                                ; preds = %5, %2
  %8 = phi i32 [ %6, %5 ], [ 0, %2 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #25, !srcloc !21
  %9 = load i16, ptr @resource_alignment_lock, align 4
  %10 = add i16 %9, 1
  store i16 %10, ptr @resource_alignment_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #25, !srcloc !22
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #25, !srcloc !23
  tail call void asm sideeffect "", "~{memory}"() #25, !srcloc !28
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @resource_alignment_store(ptr nocapture noundef readnone %0, ptr noundef %1, i32 noundef %2) #5 {
  %4 = icmp ugt i32 %2, 4094
  br i1 %4, label %21, label %5

5:                                                ; preds = %3
  %6 = tail call ptr @kstrndup(ptr noundef %1, i32 noundef %2, i32 noundef 3264) #25
  %7 = icmp eq ptr %6, null
  br i1 %7, label %21, label %8

8:                                                ; preds = %5
  %9 = tail call ptr @strchr(ptr noundef nonnull %6, i32 noundef 10)
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %8
  store i8 0, ptr %9, align 1
  br label %12

12:                                               ; preds = %11, %8
  tail call void @_raw_spin_lock(ptr noundef nonnull @resource_alignment_lock) #25
  %13 = load ptr, ptr @resource_alignment_param, align 4
  %14 = load i8, ptr %6, align 1
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  tail call void @kfree(ptr noundef nonnull %6) #25
  br label %17

17:                                               ; preds = %16, %12
  %18 = phi ptr [ null, %16 ], [ %6, %12 ]
  store ptr %18, ptr @resource_alignment_param, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #25, !srcloc !21
  %19 = load i16, ptr @resource_alignment_lock, align 4
  %20 = add i16 %19, 1
  store i16 %20, ptr @resource_alignment_lock, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #25, !srcloc !22
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #25, !srcloc !23
  tail call void asm sideeffect "", "~{memory}"() #25, !srcloc !28
  tail call void @kfree(ptr noundef %13) #25
  br label %21

21:                                               ; preds = %17, %5, %3
  %22 = phi i32 [ %2, %17 ], [ -22, %3 ], [ -12, %5 ]
  ret i32 %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #19

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_pci_domain_nr(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_no_msi() local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_realloc_get_opt(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @memparse(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #16

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #16

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #16

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #16

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umax.i8(i8, i8) #16

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #16

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { cold mustprogress nofree nounwind null_pointer_is_valid optsize sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nofree nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { argmemonly nofree nounwind willreturn }
attributes #12 = { nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #16 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #17 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #19 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #20 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #21 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #22 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #23 = { argmemonly nofree nounwind willreturn writeonly }
attributes #24 = { inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #25 = { nounwind }
attributes #26 = { cold nounwind }
attributes #27 = { nounwind allocsize(0) }
attributes #28 = { nounwind allocsize(2) }
attributes #29 = { cold }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 8, !"branch-target-enforcement", i32 0}
!3 = !{i32 8, !"sign-return-address", i32 0}
!4 = !{i32 8, !"sign-return-address-all", i32 0}
!5 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{!"clang version 15.0.0 (/llk/llvm-project-main/clang 126a1f78513fb688819156df98cf7ea83b5e8c18)"}
!8 = !{!"auto-init"}
!9 = !{i8 0, i8 2}
!10 = !{i32 0, i32 33}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 2148286284}
!13 = !{i64 686267, i64 2148176238, i64 2148176264, i64 2148176311, i64 2148176333, i64 2148176361, i64 2148176381}
!14 = !{i64 2148189134, i64 2148189166, i64 2148189195, i64 2148189229, i64 2148189260, i64 2148189283}
!15 = !{i64 2148286487}
!16 = !{i64 2148190807, i64 2148190833, i64 2148190862, i64 2148190896, i64 2148190927, i64 2148190950}
!17 = !{!"branch_weights", i32 1, i32 2000}
!18 = !{i64 2148289117}
!19 = !{i64 2148191491, i64 2148191523, i64 2148191552, i64 2148191586, i64 2148191617, i64 2148191640}
!20 = !{i64 2148289320}
!21 = !{i64 2149292049}
!22 = !{i64 2149287873}
!23 = !{i64 2149287948, i64 2149287975, i64 2149288022, i64 2149288044, i64 2149288072, i64 2149288092}
!24 = !{i64 581751}
!25 = !{i64 2149316193}
!26 = !{i64 2148188450, i64 2148188476, i64 2148188505, i64 2148188539, i64 2148188570, i64 2148188593}
!27 = !{i64 2154196413, i64 2154196896, i64 2154196450, i64 2154196506, i64 2154196540, i64 2154196564, i64 2154196605, i64 2154196626, i64 2154196654, i64 2154196688}
!28 = !{i64 2149315052}
