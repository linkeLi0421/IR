; ModuleID = '/llk/IR/drivers/net/phy/phy_device.c_pt.bc'
source_filename = "../drivers/net/phy/phy_device.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_phy_basic_features:\09\09\09\09\09"
module asm "\09.asciz \09\22phy_basic_features\22\09\09\09\09\09"
module asm "__kstrtabns_phy_basic_features:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_phy_basic_t1_features:\09\09\09\09\09"
module asm "\09.asciz \09\22phy_basic_t1_features\22\09\09\09\09\09"
module asm "__kstrtabns_phy_basic_t1_features:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_phy_gbit_features:\09\09\09\09\09"
module asm "\09.asciz \09\22phy_gbit_features\22\09\09\09\09\09"
module asm "__kstrtabns_phy_gbit_features:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_phy_gbit_fibre_features:\09\09\09\09\09"
module asm "\09.asciz \09\22phy_gbit_fibre_features\22\09\09\09\09\09"
module asm "__kstrtabns_phy_gbit_fibre_features:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_phy_gbit_all_ports_features:\09\09\09\09\09"
module asm "\09.asciz \09\22phy_gbit_all_ports_features\22\09\09\09\09\09"
module asm "__kstrtabns_phy_gbit_all_ports_features:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_phy_10gbit_features:\09\09\09\09\09"
module asm "\09.asciz \09\22phy_10gbit_features\22\09\09\09\09\09"
module asm "__kstrtabns_phy_10gbit_features:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_phy_10gbit_fec_features:\09\09\09\09\09"
module asm "\09.asciz \09\22phy_10gbit_fec_features\22\09\09\09\09\09"
module asm "__kstrtabns_phy_10gbit_fec_features:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_phy_basic_ports_array:\09\09\09\09\09"
module asm "\09.asciz \09\22phy_basic_ports_array\22\09\09\09\09\09"
module asm "__kstrtabns_phy_basic_ports_array:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_phy_fibre_port_array:\09\09\09\09\09"
module asm "\09.asciz \09\22phy_fibre_port_array\22\09\09\09\09\09"
module asm "__kstrtabns_phy_fibre_port_array:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_phy_all_ports_features_array:\09\09\09\09\09"
module asm "\09.asciz \09\22phy_all_ports_features_array\22\09\09\09\09\09"
module asm "__kstrtabns_phy_all_ports_features_array:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_phy_10_100_features_array:\09\09\09\09\09"
module asm "\09.asciz \09\22phy_10_100_features_array\22\09\09\09\09\09"
module asm "__kstrtabns_phy_10_100_features_array:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_phy_basic_t1_features_array:\09\09\09\09\09"
module asm "\09.asciz \09\22phy_basic_t1_features_array\22\09\09\09\09\09"
module asm "__kstrtabns_phy_basic_t1_features_array:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_phy_gbit_features_array:\09\09\09\09\09"
module asm "\09.asciz \09\22phy_gbit_features_array\22\09\09\09\09\09"
module asm "__kstrtabns_phy_gbit_features_array:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_phy_10gbit_features_array:\09\09\09\09\09"
module asm "\09.asciz \09\22phy_10gbit_features_array\22\09\09\09\09\09"
module asm "__kstrtabns_phy_10gbit_features_array:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_phy_10gbit_full_features:\09\09\09\09\09"
module asm "\09.asciz \09\22phy_10gbit_full_features\22\09\09\09\09\09"
module asm "__kstrtabns_phy_10gbit_full_features:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_phy_device_free:\09\09\09\09\09"
module asm "\09.asciz \09\22phy_device_free\22\09\09\09\09\09"
module asm "__kstrtabns_phy_device_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_phy_register_fixup:\09\09\09\09\09"
module asm "\09.asciz \09\22phy_register_fixup\22\09\09\09\09\09"
module asm "__kstrtabns_phy_register_fixup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_phy_register_fixup_for_uid:\09\09\09\09\09"
module asm "\09.asciz \09\22phy_register_fixup_for_uid\22\09\09\09\09\09"
module asm "__kstrtabns_phy_register_fixup_for_uid:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_phy_register_fixup_for_id:\09\09\09\09\09"
module asm "\09.asciz \09\22phy_register_fixup_for_id\22\09\09\09\09\09"
module asm "__kstrtabns_phy_register_fixup_for_id:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_phy_unregister_fixup:\09\09\09\09\09"
module asm "\09.asciz \09\22phy_unregister_fixup\22\09\09\09\09\09"
module asm "__kstrtabns_phy_unregister_fixup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_phy_unregister_fixup_for_uid:\09\09\09\09\09"
module asm "\09.asciz \09\22phy_unregister_fixup_for_uid\22\09\09\09\09\09"
module asm "__kstrtabns_phy_unregister_fixup_for_uid:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_phy_unregister_fixup_for_id:\09\09\09\09\09"
module asm "\09.asciz \09\22phy_unregister_fixup_for_id\22\09\09\09\09\09"
module asm "__kstrtabns_phy_unregister_fixup_for_id:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_phy_device_create:\09\09\09\09\09"
module asm "\09.asciz \09\22phy_device_create\22\09\09\09\09\09"
module asm "__kstrtabns_phy_device_create:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fwnode_get_phy_id:\09\09\09\09\09"
module asm "\09.asciz \09\22fwnode_get_phy_id\22\09\09\09\09\09"
module asm "__kstrtabns_fwnode_get_phy_id:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_get_phy_device:\09\09\09\09\09"
module asm "\09.asciz \09\22get_phy_device\22\09\09\09\09\09"
module asm "__kstrtabns_get_phy_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_phy_device_register:\09\09\09\09\09"
module asm "\09.asciz \09\22phy_device_register\22\09\09\09\09\09"
module asm "__kstrtabns_phy_device_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_phy_device_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22phy_device_remove\22\09\09\09\09\09"
module asm "__kstrtabns_phy_device_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_phy_get_c45_ids:\09\09\09\09\09"
module asm "\09.asciz \09\22phy_get_c45_ids\22\09\09\09\09\09"
module asm "__kstrtabns_phy_get_c45_ids:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_phy_find_first:\09\09\09\09\09"
module asm "\09.asciz \09\22phy_find_first\22\09\09\09\09\09"
module asm "__kstrtabns_phy_find_first:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_phy_connect_direct:\09\09\09\09\09"
module asm "\09.asciz \09\22phy_connect_direct\22\09\09\09\09\09"
module asm "__kstrtabns_phy_connect_direct:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_phy_connect:\09\09\09\09\09"
module asm "\09.asciz \09\22phy_connect\22\09\09\09\09\09"
module asm "__kstrtabns_phy_connect:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_phy_disconnect:\09\09\09\09\09"
module asm "\09.asciz \09\22phy_disconnect\22\09\09\09\09\09"
module asm "__kstrtabns_phy_disconnect:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_phy_init_hw:\09\09\09\09\09"
module asm "\09.asciz \09\22phy_init_hw\22\09\09\09\09\09"
module asm "__kstrtabns_phy_init_hw:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_phy_attached_info:\09\09\09\09\09"
module asm "\09.asciz \09\22phy_attached_info\22\09\09\09\09\09"
module asm "__kstrtabns_phy_attached_info:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_phy_attached_info_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22phy_attached_info_irq\22\09\09\09\09\09"
module asm "__kstrtabns_phy_attached_info_irq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_phy_attached_print:\09\09\09\09\09"
module asm "\09.asciz \09\22phy_attached_print\22\09\09\09\09\09"
module asm "__kstrtabns_phy_attached_print:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_phy_sfp_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22phy_sfp_attach\22\09\09\09\09\09"
module asm "__kstrtabns_phy_sfp_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_phy_sfp_detach:\09\09\09\09\09"
module asm "\09.asciz \09\22phy_sfp_detach\22\09\09\09\09\09"
module asm "__kstrtabns_phy_sfp_detach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_phy_sfp_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22phy_sfp_probe\22\09\09\09\09\09"
module asm "__kstrtabns_phy_sfp_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_phy_attach_direct:\09\09\09\09\09"
module asm "\09.asciz \09\22phy_attach_direct\22\09\09\09\09\09"
module asm "__kstrtabns_phy_attach_direct:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_phy_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22phy_attach\22\09\09\09\09\09"
module asm "__kstrtabns_phy_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_phy_driver_is_genphy:\09\09\09\09\09"
module asm "\09.asciz \09\22phy_driver_is_genphy\22\09\09\09\09\09"
module asm "__kstrtabns_phy_driver_is_genphy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_phy_driver_is_genphy_10g:\09\09\09\09\09"
module asm "\09.asciz \09\22phy_driver_is_genphy_10g\22\09\09\09\09\09"
module asm "__kstrtabns_phy_driver_is_genphy_10g:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_phy_package_join:\09\09\09\09\09"
module asm "\09.asciz \09\22phy_package_join\22\09\09\09\09\09"
module asm "__kstrtabns_phy_package_join:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_phy_package_leave:\09\09\09\09\09"
module asm "\09.asciz \09\22phy_package_leave\22\09\09\09\09\09"
module asm "__kstrtabns_phy_package_leave:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_phy_package_join:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_phy_package_join\22\09\09\09\09\09"
module asm "__kstrtabns_devm_phy_package_join:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_phy_detach:\09\09\09\09\09"
module asm "\09.asciz \09\22phy_detach\22\09\09\09\09\09"
module asm "__kstrtabns_phy_detach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_phy_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22phy_suspend\22\09\09\09\09\09"
module asm "__kstrtabns_phy_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___phy_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22__phy_resume\22\09\09\09\09\09"
module asm "__kstrtabns___phy_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_phy_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22phy_resume\22\09\09\09\09\09"
module asm "__kstrtabns_phy_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_phy_loopback:\09\09\09\09\09"
module asm "\09.asciz \09\22phy_loopback\22\09\09\09\09\09"
module asm "__kstrtabns_phy_loopback:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_phy_reset_after_clk_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22phy_reset_after_clk_enable\22\09\09\09\09\09"
module asm "__kstrtabns_phy_reset_after_clk_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_genphy_config_eee_advert:\09\09\09\09\09"
module asm "\09.asciz \09\22genphy_config_eee_advert\22\09\09\09\09\09"
module asm "__kstrtabns_genphy_config_eee_advert:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_genphy_setup_forced:\09\09\09\09\09"
module asm "\09.asciz \09\22genphy_setup_forced\22\09\09\09\09\09"
module asm "__kstrtabns_genphy_setup_forced:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_genphy_restart_aneg:\09\09\09\09\09"
module asm "\09.asciz \09\22genphy_restart_aneg\22\09\09\09\09\09"
module asm "__kstrtabns_genphy_restart_aneg:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_genphy_check_and_restart_aneg:\09\09\09\09\09"
module asm "\09.asciz \09\22genphy_check_and_restart_aneg\22\09\09\09\09\09"
module asm "__kstrtabns_genphy_check_and_restart_aneg:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___genphy_config_aneg:\09\09\09\09\09"
module asm "\09.asciz \09\22__genphy_config_aneg\22\09\09\09\09\09"
module asm "__kstrtabns___genphy_config_aneg:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_genphy_c37_config_aneg:\09\09\09\09\09"
module asm "\09.asciz \09\22genphy_c37_config_aneg\22\09\09\09\09\09"
module asm "__kstrtabns_genphy_c37_config_aneg:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_genphy_aneg_done:\09\09\09\09\09"
module asm "\09.asciz \09\22genphy_aneg_done\22\09\09\09\09\09"
module asm "__kstrtabns_genphy_aneg_done:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_genphy_update_link:\09\09\09\09\09"
module asm "\09.asciz \09\22genphy_update_link\22\09\09\09\09\09"
module asm "__kstrtabns_genphy_update_link:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_genphy_read_lpa:\09\09\09\09\09"
module asm "\09.asciz \09\22genphy_read_lpa\22\09\09\09\09\09"
module asm "__kstrtabns_genphy_read_lpa:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_genphy_read_status_fixed:\09\09\09\09\09"
module asm "\09.asciz \09\22genphy_read_status_fixed\22\09\09\09\09\09"
module asm "__kstrtabns_genphy_read_status_fixed:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_genphy_read_status:\09\09\09\09\09"
module asm "\09.asciz \09\22genphy_read_status\22\09\09\09\09\09"
module asm "__kstrtabns_genphy_read_status:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_genphy_c37_read_status:\09\09\09\09\09"
module asm "\09.asciz \09\22genphy_c37_read_status\22\09\09\09\09\09"
module asm "__kstrtabns_genphy_c37_read_status:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_genphy_soft_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22genphy_soft_reset\22\09\09\09\09\09"
module asm "__kstrtabns_genphy_soft_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_genphy_handle_interrupt_no_ack:\09\09\09\09\09"
module asm "\09.asciz \09\22genphy_handle_interrupt_no_ack\22\09\09\09\09\09"
module asm "__kstrtabns_genphy_handle_interrupt_no_ack:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_genphy_read_abilities:\09\09\09\09\09"
module asm "\09.asciz \09\22genphy_read_abilities\22\09\09\09\09\09"
module asm "__kstrtabns_genphy_read_abilities:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_genphy_read_mmd_unsupported:\09\09\09\09\09"
module asm "\09.asciz \09\22genphy_read_mmd_unsupported\22\09\09\09\09\09"
module asm "__kstrtabns_genphy_read_mmd_unsupported:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_genphy_write_mmd_unsupported:\09\09\09\09\09"
module asm "\09.asciz \09\22genphy_write_mmd_unsupported\22\09\09\09\09\09"
module asm "__kstrtabns_genphy_write_mmd_unsupported:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_genphy_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22genphy_suspend\22\09\09\09\09\09"
module asm "__kstrtabns_genphy_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_genphy_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22genphy_resume\22\09\09\09\09\09"
module asm "__kstrtabns_genphy_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_genphy_loopback:\09\09\09\09\09"
module asm "\09.asciz \09\22genphy_loopback\22\09\09\09\09\09"
module asm "__kstrtabns_genphy_loopback:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_phy_remove_link_mode:\09\09\09\09\09"
module asm "\09.asciz \09\22phy_remove_link_mode\22\09\09\09\09\09"
module asm "__kstrtabns_phy_remove_link_mode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_phy_advertise_supported:\09\09\09\09\09"
module asm "\09.asciz \09\22phy_advertise_supported\22\09\09\09\09\09"
module asm "__kstrtabns_phy_advertise_supported:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_phy_support_sym_pause:\09\09\09\09\09"
module asm "\09.asciz \09\22phy_support_sym_pause\22\09\09\09\09\09"
module asm "__kstrtabns_phy_support_sym_pause:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_phy_support_asym_pause:\09\09\09\09\09"
module asm "\09.asciz \09\22phy_support_asym_pause\22\09\09\09\09\09"
module asm "__kstrtabns_phy_support_asym_pause:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_phy_set_sym_pause:\09\09\09\09\09"
module asm "\09.asciz \09\22phy_set_sym_pause\22\09\09\09\09\09"
module asm "__kstrtabns_phy_set_sym_pause:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_phy_set_asym_pause:\09\09\09\09\09"
module asm "\09.asciz \09\22phy_set_asym_pause\22\09\09\09\09\09"
module asm "__kstrtabns_phy_set_asym_pause:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_phy_validate_pause:\09\09\09\09\09"
module asm "\09.asciz \09\22phy_validate_pause\22\09\09\09\09\09"
module asm "__kstrtabns_phy_validate_pause:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_phy_get_pause:\09\09\09\09\09"
module asm "\09.asciz \09\22phy_get_pause\22\09\09\09\09\09"
module asm "__kstrtabns_phy_get_pause:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_phy_get_internal_delay:\09\09\09\09\09"
module asm "\09.asciz \09\22phy_get_internal_delay\22\09\09\09\09\09"
module asm "__kstrtabns_phy_get_internal_delay:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fwnode_mdio_find_device:\09\09\09\09\09"
module asm "\09.asciz \09\22fwnode_mdio_find_device\22\09\09\09\09\09"
module asm "__kstrtabns_fwnode_mdio_find_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fwnode_phy_find_device:\09\09\09\09\09"
module asm "\09.asciz \09\22fwnode_phy_find_device\22\09\09\09\09\09"
module asm "__kstrtabns_fwnode_phy_find_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_device_phy_find_device:\09\09\09\09\09"
module asm "\09.asciz \09\22device_phy_find_device\22\09\09\09\09\09"
module asm "__kstrtabns_device_phy_find_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fwnode_get_phy_node:\09\09\09\09\09"
module asm "\09.asciz \09\22fwnode_get_phy_node\22\09\09\09\09\09"
module asm "__kstrtabns_fwnode_get_phy_node:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_phy_driver_register:\09\09\09\09\09"
module asm "\09.asciz \09\22phy_driver_register\22\09\09\09\09\09"
module asm "__kstrtabns_phy_driver_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_phy_drivers_register:\09\09\09\09\09"
module asm "\09.asciz \09\22phy_drivers_register\22\09\09\09\09\09"
module asm "__kstrtabns_phy_drivers_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_phy_driver_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22phy_driver_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_phy_driver_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_phy_drivers_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22phy_drivers_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_phy_drivers_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type {}
%struct.device_type = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.phy_driver = type { %struct.mdio_driver_common, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mdio_driver_common = type { %struct.device_driver, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_phy_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.phy_fixup = type { %struct.list_head, [64 x i8], i32, i32, ptr }
%struct.mii_bus = type { ptr, ptr, [61 x i8], ptr, ptr, ptr, ptr, [32 x %struct.mdio_bus_stats], %struct.mutex, ptr, i32, %struct.device, [32 x ptr], i32, i32, [32 x i32], i32, i32, ptr, i32, %struct.mutex, [32 x ptr] }
%struct.mdio_bus_stats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32 }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.mdio_device = type { %struct.device, ptr, [32 x i8], ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct.phy_device = type { %struct.mdio_device, ptr, i32, %struct.phy_c45_device_ids, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, %struct.mutex, i8, ptr, ptr, ptr, ptr, i8, i8, ptr, ptr }
%struct.phy_c45_device_ids = type { i32, i32, [32 x i32] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.91, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [8 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, %struct.possible_net_t, ptr, i32, %union.anon.108, %struct.device, [4 x ptr], ptr, ptr, i32, i16, i16, [16 x %struct.netdev_tc_txq], [16 x i8], ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], %struct.netdevice_tracker, %struct.netdevice_tracker, [48 x i8] }
%struct.anon.91 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type {}
%struct.possible_net_t = type {}
%union.anon.108 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.netdevice_tracker = type {}
%struct.ethtool_wolinfo = type { i32, i32, i32, [6 x i8] }
%struct.__va_list = type { ptr }
%struct.mii_timestamper = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.phy_package_shared = type { i32, %struct.refcount_struct, i32, i32, ptr }
%struct.ethtool_pauseparam = type { i32, i32, i32, i32 }

@__UNIQUE_ID_description330 = internal constant [31 x i8] c"libphy.description=PHY library\00", section ".modinfo", align 1
@__UNIQUE_ID_author331 = internal constant [27 x i8] c"libphy.author=Andy Fleming\00", section ".modinfo", align 1
@__UNIQUE_ID_file332 = internal constant [35 x i8] c"libphy.file=drivers/net/phy/libphy\00", section ".modinfo", align 1
@__UNIQUE_ID_license333 = internal constant [19 x i8] c"libphy.license=GPL\00", section ".modinfo", align 1
@phy_basic_features = dso_local global [3 x i32] zeroinitializer, section ".data..ro_after_init", align 4
@__kstrtab_phy_basic_features = external dso_local constant [0 x i8], align 1
@__kstrtabns_phy_basic_features = external dso_local constant [0 x i8], align 1
@__ksymtab_phy_basic_features = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @phy_basic_features to i32), ptr @__kstrtab_phy_basic_features, ptr @__kstrtabns_phy_basic_features }, section "___ksymtab_gpl+phy_basic_features", align 4
@phy_basic_t1_features = dso_local global [3 x i32] zeroinitializer, section ".data..ro_after_init", align 4
@__kstrtab_phy_basic_t1_features = external dso_local constant [0 x i8], align 1
@__kstrtabns_phy_basic_t1_features = external dso_local constant [0 x i8], align 1
@__ksymtab_phy_basic_t1_features = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @phy_basic_t1_features to i32), ptr @__kstrtab_phy_basic_t1_features, ptr @__kstrtabns_phy_basic_t1_features }, section "___ksymtab_gpl+phy_basic_t1_features", align 4
@phy_gbit_features = dso_local global [3 x i32] zeroinitializer, section ".data..ro_after_init", align 4
@__kstrtab_phy_gbit_features = external dso_local constant [0 x i8], align 1
@__kstrtabns_phy_gbit_features = external dso_local constant [0 x i8], align 1
@__ksymtab_phy_gbit_features = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @phy_gbit_features to i32), ptr @__kstrtab_phy_gbit_features, ptr @__kstrtabns_phy_gbit_features }, section "___ksymtab_gpl+phy_gbit_features", align 4
@phy_gbit_fibre_features = dso_local global [3 x i32] zeroinitializer, section ".data..ro_after_init", align 4
@__kstrtab_phy_gbit_fibre_features = external dso_local constant [0 x i8], align 1
@__kstrtabns_phy_gbit_fibre_features = external dso_local constant [0 x i8], align 1
@__ksymtab_phy_gbit_fibre_features = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @phy_gbit_fibre_features to i32), ptr @__kstrtab_phy_gbit_fibre_features, ptr @__kstrtabns_phy_gbit_fibre_features }, section "___ksymtab_gpl+phy_gbit_fibre_features", align 4
@phy_gbit_all_ports_features = dso_local global [3 x i32] zeroinitializer, section ".data..ro_after_init", align 4
@__kstrtab_phy_gbit_all_ports_features = external dso_local constant [0 x i8], align 1
@__kstrtabns_phy_gbit_all_ports_features = external dso_local constant [0 x i8], align 1
@__ksymtab_phy_gbit_all_ports_features = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @phy_gbit_all_ports_features to i32), ptr @__kstrtab_phy_gbit_all_ports_features, ptr @__kstrtabns_phy_gbit_all_ports_features }, section "___ksymtab_gpl+phy_gbit_all_ports_features", align 4
@phy_10gbit_features = dso_local global [3 x i32] zeroinitializer, section ".data..ro_after_init", align 4
@__kstrtab_phy_10gbit_features = external dso_local constant [0 x i8], align 1
@__kstrtabns_phy_10gbit_features = external dso_local constant [0 x i8], align 1
@__ksymtab_phy_10gbit_features = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @phy_10gbit_features to i32), ptr @__kstrtab_phy_10gbit_features, ptr @__kstrtabns_phy_10gbit_features }, section "___ksymtab_gpl+phy_10gbit_features", align 4
@phy_10gbit_fec_features = dso_local global [3 x i32] zeroinitializer, section ".data..ro_after_init", align 4
@__kstrtab_phy_10gbit_fec_features = external dso_local constant [0 x i8], align 1
@__kstrtabns_phy_10gbit_fec_features = external dso_local constant [0 x i8], align 1
@__ksymtab_phy_10gbit_fec_features = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @phy_10gbit_fec_features to i32), ptr @__kstrtab_phy_10gbit_fec_features, ptr @__kstrtabns_phy_10gbit_fec_features }, section "___ksymtab_gpl+phy_10gbit_fec_features", align 4
@phy_basic_ports_array = dso_local constant [3 x i32] [i32 6, i32 7, i32 9], align 4
@__kstrtab_phy_basic_ports_array = external dso_local constant [0 x i8], align 1
@__kstrtabns_phy_basic_ports_array = external dso_local constant [0 x i8], align 1
@__ksymtab_phy_basic_ports_array = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @phy_basic_ports_array to i32), ptr @__kstrtab_phy_basic_ports_array, ptr @__kstrtabns_phy_basic_ports_array }, section "___ksymtab_gpl+phy_basic_ports_array", align 4
@phy_fibre_port_array = dso_local constant [1 x i32] [i32 10], align 4
@__kstrtab_phy_fibre_port_array = external dso_local constant [0 x i8], align 1
@__kstrtabns_phy_fibre_port_array = external dso_local constant [0 x i8], align 1
@__ksymtab_phy_fibre_port_array = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @phy_fibre_port_array to i32), ptr @__kstrtab_phy_fibre_port_array, ptr @__kstrtabns_phy_fibre_port_array }, section "___ksymtab_gpl+phy_fibre_port_array", align 4
@phy_all_ports_features_array = dso_local constant [7 x i32] [i32 6, i32 7, i32 9, i32 10, i32 8, i32 11, i32 16], align 4
@__kstrtab_phy_all_ports_features_array = external dso_local constant [0 x i8], align 1
@__kstrtabns_phy_all_ports_features_array = external dso_local constant [0 x i8], align 1
@__ksymtab_phy_all_ports_features_array = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @phy_all_ports_features_array to i32), ptr @__kstrtab_phy_all_ports_features_array, ptr @__kstrtabns_phy_all_ports_features_array }, section "___ksymtab_gpl+phy_all_ports_features_array", align 4
@phy_10_100_features_array = dso_local constant [4 x i32] [i32 0, i32 1, i32 2, i32 3], align 4
@__kstrtab_phy_10_100_features_array = external dso_local constant [0 x i8], align 1
@__kstrtabns_phy_10_100_features_array = external dso_local constant [0 x i8], align 1
@__ksymtab_phy_10_100_features_array = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @phy_10_100_features_array to i32), ptr @__kstrtab_phy_10_100_features_array, ptr @__kstrtabns_phy_10_100_features_array }, section "___ksymtab_gpl+phy_10_100_features_array", align 4
@phy_basic_t1_features_array = dso_local constant [2 x i32] [i32 7, i32 67], align 4
@__kstrtab_phy_basic_t1_features_array = external dso_local constant [0 x i8], align 1
@__kstrtabns_phy_basic_t1_features_array = external dso_local constant [0 x i8], align 1
@__ksymtab_phy_basic_t1_features_array = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @phy_basic_t1_features_array to i32), ptr @__kstrtab_phy_basic_t1_features_array, ptr @__kstrtabns_phy_basic_t1_features_array }, section "___ksymtab_gpl+phy_basic_t1_features_array", align 4
@phy_gbit_features_array = dso_local constant [2 x i32] [i32 4, i32 5], align 4
@__kstrtab_phy_gbit_features_array = external dso_local constant [0 x i8], align 1
@__kstrtabns_phy_gbit_features_array = external dso_local constant [0 x i8], align 1
@__ksymtab_phy_gbit_features_array = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @phy_gbit_features_array to i32), ptr @__kstrtab_phy_gbit_features_array, ptr @__kstrtabns_phy_gbit_features_array }, section "___ksymtab_gpl+phy_gbit_features_array", align 4
@phy_10gbit_features_array = dso_local constant [1 x i32] [i32 12], align 4
@__kstrtab_phy_10gbit_features_array = external dso_local constant [0 x i8], align 1
@__kstrtabns_phy_10gbit_features_array = external dso_local constant [0 x i8], align 1
@__ksymtab_phy_10gbit_features_array = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @phy_10gbit_features_array to i32), ptr @__kstrtab_phy_10gbit_features_array, ptr @__kstrtabns_phy_10gbit_features_array }, section "___ksymtab_gpl+phy_10gbit_features_array", align 4
@phy_10gbit_full_features = dso_local global [3 x i32] zeroinitializer, section ".data..ro_after_init", align 4
@__kstrtab_phy_10gbit_full_features = external dso_local constant [0 x i8], align 1
@__kstrtabns_phy_10gbit_full_features = external dso_local constant [0 x i8], align 1
@__ksymtab_phy_10gbit_full_features = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @phy_10gbit_full_features to i32), ptr @__kstrtab_phy_10gbit_full_features, ptr @__kstrtabns_phy_10gbit_full_features }, section "___ksymtab_gpl+phy_10gbit_full_features", align 4
@__kstrtab_phy_device_free = external dso_local constant [0 x i8], align 1
@__kstrtabns_phy_device_free = external dso_local constant [0 x i8], align 1
@__ksymtab_phy_device_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @phy_device_free to i32), ptr @__kstrtab_phy_device_free, ptr @__kstrtabns_phy_device_free }, section "___ksymtab+phy_device_free", align 4
@phy_fixup_lock = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @phy_fixup_lock, i64 12), ptr getelementptr (i8, ptr @phy_fixup_lock, i64 12) } }, align 4
@phy_fixup_list = internal global %struct.list_head { ptr @phy_fixup_list, ptr @phy_fixup_list }, align 4
@__kstrtab_phy_register_fixup = external dso_local constant [0 x i8], align 1
@__kstrtabns_phy_register_fixup = external dso_local constant [0 x i8], align 1
@__ksymtab_phy_register_fixup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @phy_register_fixup to i32), ptr @__kstrtab_phy_register_fixup, ptr @__kstrtabns_phy_register_fixup }, section "___ksymtab+phy_register_fixup", align 4
@.str = private unnamed_addr constant [14 x i8] c"MATCH ANY PHY\00", align 1
@__kstrtab_phy_register_fixup_for_uid = external dso_local constant [0 x i8], align 1
@__kstrtabns_phy_register_fixup_for_uid = external dso_local constant [0 x i8], align 1
@__ksymtab_phy_register_fixup_for_uid = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @phy_register_fixup_for_uid to i32), ptr @__kstrtab_phy_register_fixup_for_uid, ptr @__kstrtabns_phy_register_fixup_for_uid }, section "___ksymtab+phy_register_fixup_for_uid", align 4
@__kstrtab_phy_register_fixup_for_id = external dso_local constant [0 x i8], align 1
@__kstrtabns_phy_register_fixup_for_id = external dso_local constant [0 x i8], align 1
@__ksymtab_phy_register_fixup_for_id = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @phy_register_fixup_for_id to i32), ptr @__kstrtab_phy_register_fixup_for_id, ptr @__kstrtabns_phy_register_fixup_for_id }, section "___ksymtab+phy_register_fixup_for_id", align 4
@__kstrtab_phy_unregister_fixup = external dso_local constant [0 x i8], align 1
@__kstrtabns_phy_unregister_fixup = external dso_local constant [0 x i8], align 1
@__ksymtab_phy_unregister_fixup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @phy_unregister_fixup to i32), ptr @__kstrtab_phy_unregister_fixup, ptr @__kstrtabns_phy_unregister_fixup }, section "___ksymtab+phy_unregister_fixup", align 4
@__kstrtab_phy_unregister_fixup_for_uid = external dso_local constant [0 x i8], align 1
@__kstrtabns_phy_unregister_fixup_for_uid = external dso_local constant [0 x i8], align 1
@__ksymtab_phy_unregister_fixup_for_uid = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @phy_unregister_fixup_for_uid to i32), ptr @__kstrtab_phy_unregister_fixup_for_uid, ptr @__kstrtabns_phy_unregister_fixup_for_uid }, section "___ksymtab+phy_unregister_fixup_for_uid", align 4
@__kstrtab_phy_unregister_fixup_for_id = external dso_local constant [0 x i8], align 1
@__kstrtabns_phy_unregister_fixup_for_id = external dso_local constant [0 x i8], align 1
@__ksymtab_phy_unregister_fixup_for_id = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @phy_unregister_fixup_for_id to i32), ptr @__kstrtab_phy_unregister_fixup_for_id, ptr @__kstrtabns_phy_unregister_fixup_for_id }, section "___ksymtab+phy_unregister_fixup_for_id", align 4
@mdio_bus_type = external dso_local global %struct.bus_type, align 4
@mdio_bus_phy_type = internal constant %struct.device_type { ptr @.str.37, ptr @phy_dev_groups, ptr null, ptr null, ptr @phy_device_release, ptr @mdio_bus_phy_pm_ops }, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"%s:%02x\00", align 1
@phy_device_create.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"&dev->lock\00", align 1
@__kstrtab_phy_device_create = external dso_local constant [0 x i8], align 1
@__kstrtabns_phy_device_create = external dso_local constant [0 x i8], align 1
@__ksymtab_phy_device_create = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @phy_device_create to i32), ptr @__kstrtab_phy_device_create, ptr @__kstrtabns_phy_device_create }, section "___ksymtab+phy_device_create", align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"compatible\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"ethernet-phy-id%4x.%4x\00", align 1
@__kstrtab_fwnode_get_phy_id = external dso_local constant [0 x i8], align 1
@__kstrtabns_fwnode_get_phy_id = external dso_local constant [0 x i8], align 1
@__ksymtab_fwnode_get_phy_id = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fwnode_get_phy_id to i32), ptr @__kstrtab_fwnode_get_phy_id, ptr @__kstrtabns_fwnode_get_phy_id }, section "___ksymtab+fwnode_get_phy_id", align 4
@__kstrtab_get_phy_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_get_phy_device = external dso_local constant [0 x i8], align 1
@__ksymtab_get_phy_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @get_phy_device to i32), ptr @__kstrtab_get_phy_device, ptr @__kstrtabns_get_phy_device }, section "___ksymtab+get_phy_device", align 4
@.str.5 = private unnamed_addr constant [22 x i8] c"failed to initialize\0A\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"failed to add\0A\00", align 1
@__kstrtab_phy_device_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_phy_device_register = external dso_local constant [0 x i8], align 1
@__ksymtab_phy_device_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @phy_device_register to i32), ptr @__kstrtab_phy_device_register, ptr @__kstrtabns_phy_device_register }, section "___ksymtab+phy_device_register", align 4
@__kstrtab_phy_device_remove = external dso_local constant [0 x i8], align 1
@__kstrtabns_phy_device_remove = external dso_local constant [0 x i8], align 1
@__ksymtab_phy_device_remove = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @phy_device_remove to i32), ptr @__kstrtab_phy_device_remove, ptr @__kstrtabns_phy_device_remove }, section "___ksymtab+phy_device_remove", align 4
@__kstrtab_phy_get_c45_ids = external dso_local constant [0 x i8], align 1
@__kstrtabns_phy_get_c45_ids = external dso_local constant [0 x i8], align 1
@__ksymtab_phy_get_c45_ids = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @phy_get_c45_ids to i32), ptr @__kstrtab_phy_get_c45_ids, ptr @__kstrtabns_phy_get_c45_ids }, section "___ksymtab+phy_get_c45_ids", align 4
@__kstrtab_phy_find_first = external dso_local constant [0 x i8], align 1
@__kstrtabns_phy_find_first = external dso_local constant [0 x i8], align 1
@__ksymtab_phy_find_first = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @phy_find_first to i32), ptr @__kstrtab_phy_find_first, ptr @__kstrtabns_phy_find_first }, section "___ksymtab+phy_find_first", align 4
@__kstrtab_phy_connect_direct = external dso_local constant [0 x i8], align 1
@__kstrtabns_phy_connect_direct = external dso_local constant [0 x i8], align 1
@__ksymtab_phy_connect_direct = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @phy_connect_direct to i32), ptr @__kstrtab_phy_connect_direct, ptr @__kstrtabns_phy_connect_direct }, section "___ksymtab+phy_connect_direct", align 4
@.str.7 = private unnamed_addr constant [28 x i8] c"\013libphy: PHY %s not found\0A\00", align 1
@__kstrtab_phy_connect = external dso_local constant [0 x i8], align 1
@__kstrtabns_phy_connect = external dso_local constant [0 x i8], align 1
@__ksymtab_phy_connect = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @phy_connect to i32), ptr @__kstrtab_phy_connect, ptr @__kstrtabns_phy_connect }, section "___ksymtab+phy_connect", align 4
@__kstrtab_phy_disconnect = external dso_local constant [0 x i8], align 1
@__kstrtabns_phy_disconnect = external dso_local constant [0 x i8], align 1
@__ksymtab_phy_disconnect = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @phy_disconnect to i32), ptr @__kstrtab_phy_disconnect, ptr @__kstrtabns_phy_disconnect }, section "___ksymtab+phy_disconnect", align 4
@__kstrtab_phy_init_hw = external dso_local constant [0 x i8], align 1
@__kstrtabns_phy_init_hw = external dso_local constant [0 x i8], align 1
@__ksymtab_phy_init_hw = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @phy_init_hw to i32), ptr @__kstrtab_phy_init_hw, ptr @__kstrtabns_phy_init_hw }, section "___ksymtab+phy_init_hw", align 4
@__kstrtab_phy_attached_info = external dso_local constant [0 x i8], align 1
@__kstrtabns_phy_attached_info = external dso_local constant [0 x i8], align 1
@__ksymtab_phy_attached_info = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @phy_attached_info to i32), ptr @__kstrtab_phy_attached_info, ptr @__kstrtabns_phy_attached_info }, section "___ksymtab+phy_attached_info", align 4
@.str.8 = private unnamed_addr constant [5 x i8] c"POLL\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"MAC\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@__kstrtab_phy_attached_info_irq = external dso_local constant [0 x i8], align 1
@__kstrtabns_phy_attached_info_irq = external dso_local constant [0 x i8], align 1
@__ksymtab_phy_attached_info_irq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @phy_attached_info_irq to i32), ptr @__kstrtab_phy_attached_info_irq, ptr @__kstrtabns_phy_attached_info_irq }, section "___ksymtab+phy_attached_info_irq", align 4
@.str.12 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"[unbound] \00", align 1
@.str.14 = private unnamed_addr constant [53 x i8] c"attached PHY driver %s(mii_bus:phy_addr=%s, irq=%s)\0A\00", align 1
@.str.15 = private unnamed_addr constant [52 x i8] c"attached PHY driver %s(mii_bus:phy_addr=%s, irq=%s)\00", align 1
@__kstrtab_phy_attached_print = external dso_local constant [0 x i8], align 1
@__kstrtabns_phy_attached_print = external dso_local constant [0 x i8], align 1
@__ksymtab_phy_attached_print = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @phy_attached_print to i32), ptr @__kstrtab_phy_attached_print, ptr @__kstrtabns_phy_attached_print }, section "___ksymtab+phy_attached_print", align 4
@__kstrtab_phy_sfp_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_phy_sfp_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_phy_sfp_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @phy_sfp_attach to i32), ptr @__kstrtab_phy_sfp_attach, ptr @__kstrtabns_phy_sfp_attach }, section "___ksymtab+phy_sfp_attach", align 4
@__kstrtab_phy_sfp_detach = external dso_local constant [0 x i8], align 1
@__kstrtabns_phy_sfp_detach = external dso_local constant [0 x i8], align 1
@__ksymtab_phy_sfp_detach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @phy_sfp_detach to i32), ptr @__kstrtab_phy_sfp_detach, ptr @__kstrtabns_phy_sfp_detach }, section "___ksymtab+phy_sfp_detach", align 4
@__kstrtab_phy_sfp_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns_phy_sfp_probe = external dso_local constant [0 x i8], align 1
@__ksymtab_phy_sfp_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @phy_sfp_probe to i32), ptr @__kstrtab_phy_sfp_probe, ptr @__kstrtabns_phy_sfp_probe }, section "___ksymtab+phy_sfp_probe", align 4
@.str.16 = private unnamed_addr constant [30 x i8] c"failed to get the bus module\0A\00", align 1
@genphy_c45_driver = external dso_local global %struct.phy_driver, align 4
@genphy_driver = internal global %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 -1, ptr @.str.81, i32 -1, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr @genphy_read_abilities, ptr @genphy_suspend, ptr @genphy_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @genphy_loopback, ptr null, ptr null }, align 4
@.str.17 = private unnamed_addr constant [40 x i8] c"failed to get the device driver module\0A\00", align 1
@.str.18 = private unnamed_addr constant [22 x i8] c"PHY already attached\0A\00", align 1
@dev_attr_phy_standalone = internal global %struct.device_attribute { %struct.attribute { ptr @.str.79, i16 292 }, ptr @phy_standalone_show, ptr null }, align 4
@.str.19 = private unnamed_addr constant [45 x i8] c"error creating 'phy_standalone' sysfs entry\0A\00", align 1
@__kstrtab_phy_attach_direct = external dso_local constant [0 x i8], align 1
@__kstrtabns_phy_attach_direct = external dso_local constant [0 x i8], align 1
@__ksymtab_phy_attach_direct = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @phy_attach_direct to i32), ptr @__kstrtab_phy_attach_direct, ptr @__kstrtabns_phy_attach_direct }, section "___ksymtab+phy_attach_direct", align 4
@__kstrtab_phy_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_phy_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_phy_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @phy_attach to i32), ptr @__kstrtab_phy_attach, ptr @__kstrtabns_phy_attach }, section "___ksymtab+phy_attach", align 4
@__kstrtab_phy_driver_is_genphy = external dso_local constant [0 x i8], align 1
@__kstrtabns_phy_driver_is_genphy = external dso_local constant [0 x i8], align 1
@__ksymtab_phy_driver_is_genphy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @phy_driver_is_genphy to i32), ptr @__kstrtab_phy_driver_is_genphy, ptr @__kstrtabns_phy_driver_is_genphy }, section "___ksymtab_gpl+phy_driver_is_genphy", align 4
@__kstrtab_phy_driver_is_genphy_10g = external dso_local constant [0 x i8], align 1
@__kstrtabns_phy_driver_is_genphy_10g = external dso_local constant [0 x i8], align 1
@__ksymtab_phy_driver_is_genphy_10g = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @phy_driver_is_genphy_10g to i32), ptr @__kstrtab_phy_driver_is_genphy_10g, ptr @__kstrtabns_phy_driver_is_genphy_10g }, section "___ksymtab_gpl+phy_driver_is_genphy_10g", align 4
@__kstrtab_phy_package_join = external dso_local constant [0 x i8], align 1
@__kstrtabns_phy_package_join = external dso_local constant [0 x i8], align 1
@__ksymtab_phy_package_join = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @phy_package_join to i32), ptr @__kstrtab_phy_package_join, ptr @__kstrtabns_phy_package_join }, section "___ksymtab_gpl+phy_package_join", align 4
@__kstrtab_phy_package_leave = external dso_local constant [0 x i8], align 1
@__kstrtabns_phy_package_leave = external dso_local constant [0 x i8], align 1
@__ksymtab_phy_package_leave = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @phy_package_leave to i32), ptr @__kstrtab_phy_package_leave, ptr @__kstrtabns_phy_package_leave }, section "___ksymtab_gpl+phy_package_leave", align 4
@.str.20 = private unnamed_addr constant [23 x i8] c"devm_phy_package_leave\00", align 1
@__kstrtab_devm_phy_package_join = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_phy_package_join = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_phy_package_join = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_phy_package_join to i32), ptr @__kstrtab_devm_phy_package_join, ptr @__kstrtabns_devm_phy_package_join }, section "___ksymtab_gpl+devm_phy_package_join", align 4
@.str.21 = private unnamed_addr constant [7 x i8] c"phydev\00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"attached_dev\00", align 1
@__kstrtab_phy_detach = external dso_local constant [0 x i8], align 1
@__kstrtabns_phy_detach = external dso_local constant [0 x i8], align 1
@__ksymtab_phy_detach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @phy_detach to i32), ptr @__kstrtab_phy_detach, ptr @__kstrtabns_phy_detach }, section "___ksymtab+phy_detach", align 4
@__const.phy_suspend.wol = private unnamed_addr constant { i32, i32, i32, [6 x i8], [2 x i8] } { i32 5, i32 0, i32 0, [6 x i8] zeroinitializer, [2 x i8] zeroinitializer }, align 4
@__kstrtab_phy_suspend = external dso_local constant [0 x i8], align 1
@__kstrtabns_phy_suspend = external dso_local constant [0 x i8], align 1
@__ksymtab_phy_suspend = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @phy_suspend to i32), ptr @__kstrtab_phy_suspend, ptr @__kstrtabns_phy_suspend }, section "___ksymtab+phy_suspend", align 4
@__kstrtab___phy_resume = external dso_local constant [0 x i8], align 1
@__kstrtabns___phy_resume = external dso_local constant [0 x i8], align 1
@__ksymtab___phy_resume = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__phy_resume to i32), ptr @__kstrtab___phy_resume, ptr @__kstrtabns___phy_resume }, section "___ksymtab+__phy_resume", align 4
@__kstrtab_phy_resume = external dso_local constant [0 x i8], align 1
@__kstrtabns_phy_resume = external dso_local constant [0 x i8], align 1
@__ksymtab_phy_resume = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @phy_resume to i32), ptr @__kstrtab_phy_resume, ptr @__kstrtabns_phy_resume }, section "___ksymtab+phy_resume", align 4
@__kstrtab_phy_loopback = external dso_local constant [0 x i8], align 1
@__kstrtabns_phy_loopback = external dso_local constant [0 x i8], align 1
@__ksymtab_phy_loopback = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @phy_loopback to i32), ptr @__kstrtab_phy_loopback, ptr @__kstrtabns_phy_loopback }, section "___ksymtab+phy_loopback", align 4
@__kstrtab_phy_reset_after_clk_enable = external dso_local constant [0 x i8], align 1
@__kstrtabns_phy_reset_after_clk_enable = external dso_local constant [0 x i8], align 1
@__ksymtab_phy_reset_after_clk_enable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @phy_reset_after_clk_enable to i32), ptr @__kstrtab_phy_reset_after_clk_enable, ptr @__kstrtabns_phy_reset_after_clk_enable }, section "___ksymtab+phy_reset_after_clk_enable", align 4
@__kstrtab_genphy_config_eee_advert = external dso_local constant [0 x i8], align 1
@__kstrtabns_genphy_config_eee_advert = external dso_local constant [0 x i8], align 1
@__ksymtab_genphy_config_eee_advert = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @genphy_config_eee_advert to i32), ptr @__kstrtab_genphy_config_eee_advert, ptr @__kstrtabns_genphy_config_eee_advert }, section "___ksymtab+genphy_config_eee_advert", align 4
@__kstrtab_genphy_setup_forced = external dso_local constant [0 x i8], align 1
@__kstrtabns_genphy_setup_forced = external dso_local constant [0 x i8], align 1
@__ksymtab_genphy_setup_forced = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @genphy_setup_forced to i32), ptr @__kstrtab_genphy_setup_forced, ptr @__kstrtabns_genphy_setup_forced }, section "___ksymtab+genphy_setup_forced", align 4
@__kstrtab_genphy_restart_aneg = external dso_local constant [0 x i8], align 1
@__kstrtabns_genphy_restart_aneg = external dso_local constant [0 x i8], align 1
@__ksymtab_genphy_restart_aneg = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @genphy_restart_aneg to i32), ptr @__kstrtab_genphy_restart_aneg, ptr @__kstrtabns_genphy_restart_aneg }, section "___ksymtab+genphy_restart_aneg", align 4
@__kstrtab_genphy_check_and_restart_aneg = external dso_local constant [0 x i8], align 1
@__kstrtabns_genphy_check_and_restart_aneg = external dso_local constant [0 x i8], align 1
@__ksymtab_genphy_check_and_restart_aneg = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @genphy_check_and_restart_aneg to i32), ptr @__kstrtab_genphy_check_and_restart_aneg, ptr @__kstrtabns_genphy_check_and_restart_aneg }, section "___ksymtab+genphy_check_and_restart_aneg", align 4
@__kstrtab___genphy_config_aneg = external dso_local constant [0 x i8], align 1
@__kstrtabns___genphy_config_aneg = external dso_local constant [0 x i8], align 1
@__ksymtab___genphy_config_aneg = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__genphy_config_aneg to i32), ptr @__kstrtab___genphy_config_aneg, ptr @__kstrtabns___genphy_config_aneg }, section "___ksymtab+__genphy_config_aneg", align 4
@__kstrtab_genphy_c37_config_aneg = external dso_local constant [0 x i8], align 1
@__kstrtabns_genphy_c37_config_aneg = external dso_local constant [0 x i8], align 1
@__ksymtab_genphy_c37_config_aneg = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @genphy_c37_config_aneg to i32), ptr @__kstrtab_genphy_c37_config_aneg, ptr @__kstrtabns_genphy_c37_config_aneg }, section "___ksymtab+genphy_c37_config_aneg", align 4
@__kstrtab_genphy_aneg_done = external dso_local constant [0 x i8], align 1
@__kstrtabns_genphy_aneg_done = external dso_local constant [0 x i8], align 1
@__ksymtab_genphy_aneg_done = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @genphy_aneg_done to i32), ptr @__kstrtab_genphy_aneg_done, ptr @__kstrtabns_genphy_aneg_done }, section "___ksymtab+genphy_aneg_done", align 4
@__kstrtab_genphy_update_link = external dso_local constant [0 x i8], align 1
@__kstrtabns_genphy_update_link = external dso_local constant [0 x i8], align 1
@__ksymtab_genphy_update_link = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @genphy_update_link to i32), ptr @__kstrtab_genphy_update_link, ptr @__kstrtabns_genphy_update_link }, section "___ksymtab+genphy_update_link", align 4
@.str.23 = private unnamed_addr constant [68 x i8] c"Master/Slave resolution failed, maybe conflicting manual settings?\0A\00", align 1
@.str.24 = private unnamed_addr constant [32 x i8] c"Master/Slave resolution failed\0A\00", align 1
@__kstrtab_genphy_read_lpa = external dso_local constant [0 x i8], align 1
@__kstrtabns_genphy_read_lpa = external dso_local constant [0 x i8], align 1
@__ksymtab_genphy_read_lpa = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @genphy_read_lpa to i32), ptr @__kstrtab_genphy_read_lpa, ptr @__kstrtabns_genphy_read_lpa }, section "___ksymtab+genphy_read_lpa", align 4
@__kstrtab_genphy_read_status_fixed = external dso_local constant [0 x i8], align 1
@__kstrtabns_genphy_read_status_fixed = external dso_local constant [0 x i8], align 1
@__ksymtab_genphy_read_status_fixed = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @genphy_read_status_fixed to i32), ptr @__kstrtab_genphy_read_status_fixed, ptr @__kstrtabns_genphy_read_status_fixed }, section "___ksymtab+genphy_read_status_fixed", align 4
@__kstrtab_genphy_read_status = external dso_local constant [0 x i8], align 1
@__kstrtabns_genphy_read_status = external dso_local constant [0 x i8], align 1
@__ksymtab_genphy_read_status = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @genphy_read_status to i32), ptr @__kstrtab_genphy_read_status, ptr @__kstrtabns_genphy_read_status }, section "___ksymtab+genphy_read_status", align 4
@__kstrtab_genphy_c37_read_status = external dso_local constant [0 x i8], align 1
@__kstrtabns_genphy_c37_read_status = external dso_local constant [0 x i8], align 1
@__ksymtab_genphy_c37_read_status = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @genphy_c37_read_status to i32), ptr @__kstrtab_genphy_c37_read_status, ptr @__kstrtabns_genphy_c37_read_status }, section "___ksymtab+genphy_c37_read_status", align 4
@__kstrtab_genphy_soft_reset = external dso_local constant [0 x i8], align 1
@__kstrtabns_genphy_soft_reset = external dso_local constant [0 x i8], align 1
@__ksymtab_genphy_soft_reset = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @genphy_soft_reset to i32), ptr @__kstrtab_genphy_soft_reset, ptr @__kstrtabns_genphy_soft_reset }, section "___ksymtab+genphy_soft_reset", align 4
@__kstrtab_genphy_handle_interrupt_no_ack = external dso_local constant [0 x i8], align 1
@__kstrtabns_genphy_handle_interrupt_no_ack = external dso_local constant [0 x i8], align 1
@__ksymtab_genphy_handle_interrupt_no_ack = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @genphy_handle_interrupt_no_ack to i32), ptr @__kstrtab_genphy_handle_interrupt_no_ack, ptr @__kstrtabns_genphy_handle_interrupt_no_ack }, section "___ksymtab+genphy_handle_interrupt_no_ack", align 4
@__kstrtab_genphy_read_abilities = external dso_local constant [0 x i8], align 1
@__kstrtabns_genphy_read_abilities = external dso_local constant [0 x i8], align 1
@__ksymtab_genphy_read_abilities = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @genphy_read_abilities to i32), ptr @__kstrtab_genphy_read_abilities, ptr @__kstrtabns_genphy_read_abilities }, section "___ksymtab+genphy_read_abilities", align 4
@__kstrtab_genphy_read_mmd_unsupported = external dso_local constant [0 x i8], align 1
@__kstrtabns_genphy_read_mmd_unsupported = external dso_local constant [0 x i8], align 1
@__ksymtab_genphy_read_mmd_unsupported = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @genphy_read_mmd_unsupported to i32), ptr @__kstrtab_genphy_read_mmd_unsupported, ptr @__kstrtabns_genphy_read_mmd_unsupported }, section "___ksymtab+genphy_read_mmd_unsupported", align 4
@__kstrtab_genphy_write_mmd_unsupported = external dso_local constant [0 x i8], align 1
@__kstrtabns_genphy_write_mmd_unsupported = external dso_local constant [0 x i8], align 1
@__ksymtab_genphy_write_mmd_unsupported = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @genphy_write_mmd_unsupported to i32), ptr @__kstrtab_genphy_write_mmd_unsupported, ptr @__kstrtabns_genphy_write_mmd_unsupported }, section "___ksymtab+genphy_write_mmd_unsupported", align 4
@__kstrtab_genphy_suspend = external dso_local constant [0 x i8], align 1
@__kstrtabns_genphy_suspend = external dso_local constant [0 x i8], align 1
@__ksymtab_genphy_suspend = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @genphy_suspend to i32), ptr @__kstrtab_genphy_suspend, ptr @__kstrtabns_genphy_suspend }, section "___ksymtab+genphy_suspend", align 4
@__kstrtab_genphy_resume = external dso_local constant [0 x i8], align 1
@__kstrtabns_genphy_resume = external dso_local constant [0 x i8], align 1
@__ksymtab_genphy_resume = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @genphy_resume to i32), ptr @__kstrtab_genphy_resume, ptr @__kstrtabns_genphy_resume }, section "___ksymtab+genphy_resume", align 4
@.str.25 = private unnamed_addr constant [15 x i8] c"%s failed: %d\0A\00", align 1
@__func__.genphy_loopback = private unnamed_addr constant [16 x i8] c"genphy_loopback\00", align 1
@__kstrtab_genphy_loopback = external dso_local constant [0 x i8], align 1
@__kstrtabns_genphy_loopback = external dso_local constant [0 x i8], align 1
@__ksymtab_genphy_loopback = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @genphy_loopback to i32), ptr @__kstrtab_genphy_loopback, ptr @__kstrtabns_genphy_loopback }, section "___ksymtab+genphy_loopback", align 4
@__kstrtab_phy_remove_link_mode = external dso_local constant [0 x i8], align 1
@__kstrtabns_phy_remove_link_mode = external dso_local constant [0 x i8], align 1
@__ksymtab_phy_remove_link_mode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @phy_remove_link_mode to i32), ptr @__kstrtab_phy_remove_link_mode, ptr @__kstrtabns_phy_remove_link_mode }, section "___ksymtab+phy_remove_link_mode", align 4
@__kstrtab_phy_advertise_supported = external dso_local constant [0 x i8], align 1
@__kstrtabns_phy_advertise_supported = external dso_local constant [0 x i8], align 1
@__ksymtab_phy_advertise_supported = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @phy_advertise_supported to i32), ptr @__kstrtab_phy_advertise_supported, ptr @__kstrtabns_phy_advertise_supported }, section "___ksymtab+phy_advertise_supported", align 4
@__kstrtab_phy_support_sym_pause = external dso_local constant [0 x i8], align 1
@__kstrtabns_phy_support_sym_pause = external dso_local constant [0 x i8], align 1
@__ksymtab_phy_support_sym_pause = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @phy_support_sym_pause to i32), ptr @__kstrtab_phy_support_sym_pause, ptr @__kstrtabns_phy_support_sym_pause }, section "___ksymtab+phy_support_sym_pause", align 4
@__kstrtab_phy_support_asym_pause = external dso_local constant [0 x i8], align 1
@__kstrtabns_phy_support_asym_pause = external dso_local constant [0 x i8], align 1
@__ksymtab_phy_support_asym_pause = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @phy_support_asym_pause to i32), ptr @__kstrtab_phy_support_asym_pause, ptr @__kstrtabns_phy_support_asym_pause }, section "___ksymtab+phy_support_asym_pause", align 4
@__kstrtab_phy_set_sym_pause = external dso_local constant [0 x i8], align 1
@__kstrtabns_phy_set_sym_pause = external dso_local constant [0 x i8], align 1
@__ksymtab_phy_set_sym_pause = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @phy_set_sym_pause to i32), ptr @__kstrtab_phy_set_sym_pause, ptr @__kstrtabns_phy_set_sym_pause }, section "___ksymtab+phy_set_sym_pause", align 4
@__kstrtab_phy_set_asym_pause = external dso_local constant [0 x i8], align 1
@__kstrtabns_phy_set_asym_pause = external dso_local constant [0 x i8], align 1
@__ksymtab_phy_set_asym_pause = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @phy_set_asym_pause to i32), ptr @__kstrtab_phy_set_asym_pause, ptr @__kstrtabns_phy_set_asym_pause }, section "___ksymtab+phy_set_asym_pause", align 4
@__kstrtab_phy_validate_pause = external dso_local constant [0 x i8], align 1
@__kstrtabns_phy_validate_pause = external dso_local constant [0 x i8], align 1
@__ksymtab_phy_validate_pause = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @phy_validate_pause to i32), ptr @__kstrtab_phy_validate_pause, ptr @__kstrtabns_phy_validate_pause }, section "___ksymtab+phy_validate_pause", align 4
@__kstrtab_phy_get_pause = external dso_local constant [0 x i8], align 1
@__kstrtabns_phy_get_pause = external dso_local constant [0 x i8], align 1
@__ksymtab_phy_get_pause = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @phy_get_pause to i32), ptr @__kstrtab_phy_get_pause, ptr @__kstrtabns_phy_get_pause }, section "___ksymtab+phy_get_pause", align 4
@.str.26 = private unnamed_addr constant [21 x i8] c"rx-internal-delay-ps\00", align 1
@.str.27 = private unnamed_addr constant [21 x i8] c"tx-internal-delay-ps\00", align 1
@.str.28 = private unnamed_addr constant [26 x i8] c"Delay %d is out of range\0A\00", align 1
@.str.29 = private unnamed_addr constant [43 x i8] c"error finding internal delay index for %d\0A\00", align 1
@__kstrtab_phy_get_internal_delay = external dso_local constant [0 x i8], align 1
@__kstrtabns_phy_get_internal_delay = external dso_local constant [0 x i8], align 1
@__ksymtab_phy_get_internal_delay = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @phy_get_internal_delay to i32), ptr @__kstrtab_phy_get_internal_delay, ptr @__kstrtabns_phy_get_internal_delay }, section "___ksymtab+phy_get_internal_delay", align 4
@__kstrtab_fwnode_mdio_find_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_fwnode_mdio_find_device = external dso_local constant [0 x i8], align 1
@__ksymtab_fwnode_mdio_find_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fwnode_mdio_find_device to i32), ptr @__kstrtab_fwnode_mdio_find_device, ptr @__kstrtabns_fwnode_mdio_find_device }, section "___ksymtab+fwnode_mdio_find_device", align 4
@__kstrtab_fwnode_phy_find_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_fwnode_phy_find_device = external dso_local constant [0 x i8], align 1
@__ksymtab_fwnode_phy_find_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fwnode_phy_find_device to i32), ptr @__kstrtab_fwnode_phy_find_device, ptr @__kstrtabns_fwnode_phy_find_device }, section "___ksymtab+fwnode_phy_find_device", align 4
@__kstrtab_device_phy_find_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_device_phy_find_device = external dso_local constant [0 x i8], align 1
@__ksymtab_device_phy_find_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @device_phy_find_device to i32), ptr @__kstrtab_device_phy_find_device, ptr @__kstrtabns_device_phy_find_device }, section "___ksymtab_gpl+device_phy_find_device", align 4
@.str.30 = private unnamed_addr constant [11 x i8] c"phy-handle\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c"phy\00", align 1
@.str.32 = private unnamed_addr constant [11 x i8] c"phy-device\00", align 1
@__kstrtab_fwnode_get_phy_node = external dso_local constant [0 x i8], align 1
@__kstrtabns_fwnode_get_phy_node = external dso_local constant [0 x i8], align 1
@__ksymtab_fwnode_get_phy_node = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fwnode_get_phy_node to i32), ptr @__kstrtab_fwnode_get_phy_node, ptr @__kstrtabns_fwnode_get_phy_node }, section "___ksymtab_gpl+fwnode_get_phy_node", align 4
@.str.33 = private unnamed_addr constant [29 x i8] c"drivers/net/phy/phy_device.c\00", align 1
@.str.34 = private unnamed_addr constant [62 x i8] c"\013libphy: %s: features and get_features must not both be set\0A\00", align 1
@.str.35 = private unnamed_addr constant [46 x i8] c"%s: driver must not provide a DT match table\0A\00", align 1
@.str.36 = private unnamed_addr constant [46 x i8] c"\013libphy: %s: Error %d in registering driver\0A\00", align 1
@__kstrtab_phy_driver_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_phy_driver_register = external dso_local constant [0 x i8], align 1
@__ksymtab_phy_driver_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @phy_driver_register to i32), ptr @__kstrtab_phy_driver_register, ptr @__kstrtabns_phy_driver_register }, section "___ksymtab+phy_driver_register", align 4
@__kstrtab_phy_drivers_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_phy_drivers_register = external dso_local constant [0 x i8], align 1
@__ksymtab_phy_drivers_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @phy_drivers_register to i32), ptr @__kstrtab_phy_drivers_register, ptr @__kstrtabns_phy_drivers_register }, section "___ksymtab+phy_drivers_register", align 4
@__kstrtab_phy_driver_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_phy_driver_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_phy_driver_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @phy_driver_unregister to i32), ptr @__kstrtab_phy_driver_unregister, ptr @__kstrtabns_phy_driver_unregister }, section "___ksymtab+phy_driver_unregister", align 4
@__kstrtab_phy_drivers_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_phy_drivers_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_phy_drivers_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @phy_drivers_unregister to i32), ptr @__kstrtab_phy_drivers_unregister, ptr @__kstrtabns_phy_drivers_unregister }, section "___ksymtab+phy_drivers_unregister", align 4
@__initcall__kmod_libphy__334_3268_phy_init4 = internal global ptr @phy_init, section ".initcall4.init", align 4
@__exitcall_phy_exit = internal global ptr @phy_exit, section ".exitcall.exit", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.37 = private unnamed_addr constant [4 x i8] c"PHY\00", align 1
@phy_dev_groups = internal global [2 x ptr] [ptr @phy_dev_group, ptr null], align 4
@mdio_bus_phy_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @mdio_bus_phy_suspend, ptr @mdio_bus_phy_resume, ptr @mdio_bus_phy_suspend, ptr @mdio_bus_phy_resume, ptr @mdio_bus_phy_suspend, ptr @mdio_bus_phy_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@phy_dev_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @phy_dev_attrs, ptr null }, align 4
@phy_dev_attrs = internal global [5 x ptr] [ptr @dev_attr_phy_id, ptr @dev_attr_phy_interface, ptr @dev_attr_phy_has_fixups, ptr @dev_attr_phy_dev_flags, ptr null], align 4
@dev_attr_phy_id = internal global %struct.device_attribute { %struct.attribute { ptr @.str.38, i16 292 }, ptr @phy_id_show, ptr null }, align 4
@dev_attr_phy_interface = internal global %struct.device_attribute { %struct.attribute { ptr @.str.40, i16 292 }, ptr @phy_interface_show, ptr null }, align 4
@dev_attr_phy_has_fixups = internal global %struct.device_attribute { %struct.attribute { ptr @.str.72, i16 292 }, ptr @phy_has_fixups_show, ptr null }, align 4
@dev_attr_phy_dev_flags = internal global %struct.device_attribute { %struct.attribute { ptr @.str.74, i16 292 }, ptr @phy_dev_flags_show, ptr null }, align 4
@.str.38 = private unnamed_addr constant [7 x i8] c"phy_id\00", align 1
@.str.39 = private unnamed_addr constant [9 x i8] c"0x%.8lx\0A\00", align 1
@.str.40 = private unnamed_addr constant [14 x i8] c"phy_interface\00", align 1
@.str.41 = private unnamed_addr constant [9 x i8] c"internal\00", align 1
@.str.42 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.43 = private unnamed_addr constant [4 x i8] c"mii\00", align 1
@.str.44 = private unnamed_addr constant [5 x i8] c"gmii\00", align 1
@.str.45 = private unnamed_addr constant [6 x i8] c"sgmii\00", align 1
@.str.46 = private unnamed_addr constant [4 x i8] c"tbi\00", align 1
@.str.47 = private unnamed_addr constant [8 x i8] c"rev-mii\00", align 1
@.str.48 = private unnamed_addr constant [5 x i8] c"rmii\00", align 1
@.str.49 = private unnamed_addr constant [9 x i8] c"rev-rmii\00", align 1
@.str.50 = private unnamed_addr constant [6 x i8] c"rgmii\00", align 1
@.str.51 = private unnamed_addr constant [9 x i8] c"rgmii-id\00", align 1
@.str.52 = private unnamed_addr constant [11 x i8] c"rgmii-rxid\00", align 1
@.str.53 = private unnamed_addr constant [11 x i8] c"rgmii-txid\00", align 1
@.str.54 = private unnamed_addr constant [5 x i8] c"rtbi\00", align 1
@.str.55 = private unnamed_addr constant [5 x i8] c"smii\00", align 1
@.str.56 = private unnamed_addr constant [6 x i8] c"xgmii\00", align 1
@.str.57 = private unnamed_addr constant [7 x i8] c"xlgmii\00", align 1
@.str.58 = private unnamed_addr constant [5 x i8] c"moca\00", align 1
@.str.59 = private unnamed_addr constant [7 x i8] c"qsgmii\00", align 1
@.str.60 = private unnamed_addr constant [7 x i8] c"trgmii\00", align 1
@.str.61 = private unnamed_addr constant [11 x i8] c"1000base-x\00", align 1
@.str.62 = private unnamed_addr constant [11 x i8] c"2500base-x\00", align 1
@.str.63 = private unnamed_addr constant [9 x i8] c"5gbase-r\00", align 1
@.str.64 = private unnamed_addr constant [6 x i8] c"rxaui\00", align 1
@.str.65 = private unnamed_addr constant [5 x i8] c"xaui\00", align 1
@.str.66 = private unnamed_addr constant [10 x i8] c"10gbase-r\00", align 1
@.str.67 = private unnamed_addr constant [10 x i8] c"25gbase-r\00", align 1
@.str.68 = private unnamed_addr constant [8 x i8] c"usxgmii\00", align 1
@.str.69 = private unnamed_addr constant [11 x i8] c"10gbase-kr\00", align 1
@.str.70 = private unnamed_addr constant [10 x i8] c"100base-x\00", align 1
@.str.71 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.72 = private unnamed_addr constant [15 x i8] c"phy_has_fixups\00", align 1
@.str.73 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.74 = private unnamed_addr constant [14 x i8] c"phy_dev_flags\00", align 1
@.str.75 = private unnamed_addr constant [8 x i8] c"0x%08x\0A\00", align 1
@.str.76 = private unnamed_addr constant [70 x i8] c"mdio:%u%u%u%u%u%u%u%u%u%u%u%u%u%u%u%u%u%u%u%u%u%u%u%u%u%u%u%u%u%u%u%u\00", align 1
@.str.77 = private unnamed_addr constant [51 x i8] c"error %d loading PHY driver module for ID 0x%08lx\0A\00", align 1
@.str.78 = private unnamed_addr constant [40 x i8] c"could not add device link to %s err %d\0A\00", align 1
@.str.79 = private unnamed_addr constant [15 x i8] c"phy_standalone\00", align 1
@.str.80 = private unnamed_addr constant [31 x i8] c"Unsupported Master/Slave mode\0A\00", align 1
@__func__.phy_poll_reset = private unnamed_addr constant [15 x i8] c"phy_poll_reset\00", align 1
@.str.81 = private unnamed_addr constant [12 x i8] c"Generic PHY\00", align 1
@phy_ethtool_phy_ops = internal constant %struct.ethtool_phy_ops { ptr @phy_ethtool_get_sset_count, ptr @phy_ethtool_get_strings, ptr @phy_ethtool_get_stats, ptr @phy_start_cable_test, ptr @phy_start_cable_test_tdr }, align 4
@llvm.compiler.used = appending global [96 x ptr] [ptr @__UNIQUE_ID_author331, ptr @__UNIQUE_ID_description330, ptr @__UNIQUE_ID_file332, ptr @__UNIQUE_ID_license333, ptr @__exitcall_phy_exit, ptr @__initcall__kmod_libphy__334_3268_phy_init4, ptr @__ksymtab___genphy_config_aneg, ptr @__ksymtab___phy_resume, ptr @__ksymtab_device_phy_find_device, ptr @__ksymtab_devm_phy_package_join, ptr @__ksymtab_fwnode_get_phy_id, ptr @__ksymtab_fwnode_get_phy_node, ptr @__ksymtab_fwnode_mdio_find_device, ptr @__ksymtab_fwnode_phy_find_device, ptr @__ksymtab_genphy_aneg_done, ptr @__ksymtab_genphy_c37_config_aneg, ptr @__ksymtab_genphy_c37_read_status, ptr @__ksymtab_genphy_check_and_restart_aneg, ptr @__ksymtab_genphy_config_eee_advert, ptr @__ksymtab_genphy_handle_interrupt_no_ack, ptr @__ksymtab_genphy_loopback, ptr @__ksymtab_genphy_read_abilities, ptr @__ksymtab_genphy_read_lpa, ptr @__ksymtab_genphy_read_mmd_unsupported, ptr @__ksymtab_genphy_read_status, ptr @__ksymtab_genphy_read_status_fixed, ptr @__ksymtab_genphy_restart_aneg, ptr @__ksymtab_genphy_resume, ptr @__ksymtab_genphy_setup_forced, ptr @__ksymtab_genphy_soft_reset, ptr @__ksymtab_genphy_suspend, ptr @__ksymtab_genphy_update_link, ptr @__ksymtab_genphy_write_mmd_unsupported, ptr @__ksymtab_get_phy_device, ptr @__ksymtab_phy_10_100_features_array, ptr @__ksymtab_phy_10gbit_features, ptr @__ksymtab_phy_10gbit_features_array, ptr @__ksymtab_phy_10gbit_fec_features, ptr @__ksymtab_phy_10gbit_full_features, ptr @__ksymtab_phy_advertise_supported, ptr @__ksymtab_phy_all_ports_features_array, ptr @__ksymtab_phy_attach, ptr @__ksymtab_phy_attach_direct, ptr @__ksymtab_phy_attached_info, ptr @__ksymtab_phy_attached_info_irq, ptr @__ksymtab_phy_attached_print, ptr @__ksymtab_phy_basic_features, ptr @__ksymtab_phy_basic_ports_array, ptr @__ksymtab_phy_basic_t1_features, ptr @__ksymtab_phy_basic_t1_features_array, ptr @__ksymtab_phy_connect, ptr @__ksymtab_phy_connect_direct, ptr @__ksymtab_phy_detach, ptr @__ksymtab_phy_device_create, ptr @__ksymtab_phy_device_free, ptr @__ksymtab_phy_device_register, ptr @__ksymtab_phy_device_remove, ptr @__ksymtab_phy_disconnect, ptr @__ksymtab_phy_driver_is_genphy, ptr @__ksymtab_phy_driver_is_genphy_10g, ptr @__ksymtab_phy_driver_register, ptr @__ksymtab_phy_driver_unregister, ptr @__ksymtab_phy_drivers_register, ptr @__ksymtab_phy_drivers_unregister, ptr @__ksymtab_phy_fibre_port_array, ptr @__ksymtab_phy_find_first, ptr @__ksymtab_phy_gbit_all_ports_features, ptr @__ksymtab_phy_gbit_features, ptr @__ksymtab_phy_gbit_features_array, ptr @__ksymtab_phy_gbit_fibre_features, ptr @__ksymtab_phy_get_c45_ids, ptr @__ksymtab_phy_get_internal_delay, ptr @__ksymtab_phy_get_pause, ptr @__ksymtab_phy_init_hw, ptr @__ksymtab_phy_loopback, ptr @__ksymtab_phy_package_join, ptr @__ksymtab_phy_package_leave, ptr @__ksymtab_phy_register_fixup, ptr @__ksymtab_phy_register_fixup_for_id, ptr @__ksymtab_phy_register_fixup_for_uid, ptr @__ksymtab_phy_remove_link_mode, ptr @__ksymtab_phy_reset_after_clk_enable, ptr @__ksymtab_phy_resume, ptr @__ksymtab_phy_set_asym_pause, ptr @__ksymtab_phy_set_sym_pause, ptr @__ksymtab_phy_sfp_attach, ptr @__ksymtab_phy_sfp_detach, ptr @__ksymtab_phy_sfp_probe, ptr @__ksymtab_phy_support_asym_pause, ptr @__ksymtab_phy_support_sym_pause, ptr @__ksymtab_phy_suspend, ptr @__ksymtab_phy_unregister_fixup, ptr @__ksymtab_phy_unregister_fixup_for_id, ptr @__ksymtab_phy_unregister_fixup_for_uid, ptr @__ksymtab_phy_validate_pause, ptr @phy_exit], section "llvm.metadata"
@switch.table.phy_interface_show = private unnamed_addr constant [30 x ptr] [ptr @.str.12, ptr @.str.41, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.70, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @phy_device_free(ptr noundef %0) #0 {
  tail call void @put_device(ptr noundef %0) #21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @phy_register_fixup(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 84) #22
  %7 = icmp eq ptr %6, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.phy_fixup, ptr %6, i32 0, i32 1
  %10 = tail call i32 @strlcpy(ptr noundef %9, ptr noundef %0, i32 noundef 64) #21
  %11 = getelementptr inbounds %struct.phy_fixup, ptr %6, i32 0, i32 2
  store i32 %1, ptr %11, align 8
  %12 = getelementptr inbounds %struct.phy_fixup, ptr %6, i32 0, i32 3
  store i32 %2, ptr %12, align 4
  %13 = getelementptr inbounds %struct.phy_fixup, ptr %6, i32 0, i32 4
  store ptr %3, ptr %13, align 8
  tail call void @mutex_lock(ptr noundef nonnull @phy_fixup_lock) #21
  %14 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @phy_fixup_list, i32 0, i32 1), align 4
  store ptr %6, ptr getelementptr inbounds (%struct.list_head, ptr @phy_fixup_list, i32 0, i32 1), align 4
  store ptr @phy_fixup_list, ptr %6, align 8
  %15 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  store ptr %14, ptr %15, align 4
  store volatile ptr %6, ptr %14, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @phy_fixup_lock) #21
  br label %16

16:                                               ; preds = %8, %4
  %17 = phi i32 [ 0, %8 ], [ -12, %4 ]
  ret i32 %17
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @phy_register_fixup_for_uid(i32 noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 84) #22
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.phy_fixup, ptr %5, i32 0, i32 1
  %9 = tail call i32 @strlcpy(ptr noundef %8, ptr noundef nonnull @.str, i32 noundef 64) #21
  %10 = getelementptr inbounds %struct.phy_fixup, ptr %5, i32 0, i32 2
  store i32 %0, ptr %10, align 8
  %11 = getelementptr inbounds %struct.phy_fixup, ptr %5, i32 0, i32 3
  store i32 %1, ptr %11, align 4
  %12 = getelementptr inbounds %struct.phy_fixup, ptr %5, i32 0, i32 4
  store ptr %2, ptr %12, align 8
  tail call void @mutex_lock(ptr noundef nonnull @phy_fixup_lock) #21
  %13 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @phy_fixup_list, i32 0, i32 1), align 4
  store ptr %5, ptr getelementptr inbounds (%struct.list_head, ptr @phy_fixup_list, i32 0, i32 1), align 4
  store ptr @phy_fixup_list, ptr %5, align 8
  %14 = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  store ptr %13, ptr %14, align 4
  store volatile ptr %5, ptr %13, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @phy_fixup_lock) #21
  br label %15

15:                                               ; preds = %7, %3
  %16 = phi i32 [ 0, %7 ], [ -12, %3 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @phy_register_fixup_for_id(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 84) #22
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.phy_fixup, ptr %4, i32 0, i32 1
  %8 = tail call i32 @strlcpy(ptr noundef %7, ptr noundef %0, i32 noundef 64) #21
  %9 = getelementptr inbounds %struct.phy_fixup, ptr %4, i32 0, i32 2
  store i32 -1, ptr %9, align 8
  %10 = getelementptr inbounds %struct.phy_fixup, ptr %4, i32 0, i32 3
  store i32 -1, ptr %10, align 4
  %11 = getelementptr inbounds %struct.phy_fixup, ptr %4, i32 0, i32 4
  store ptr %1, ptr %11, align 8
  tail call void @mutex_lock(ptr noundef nonnull @phy_fixup_lock) #21
  %12 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @phy_fixup_list, i32 0, i32 1), align 4
  store ptr %4, ptr getelementptr inbounds (%struct.list_head, ptr @phy_fixup_list, i32 0, i32 1), align 4
  store ptr @phy_fixup_list, ptr %4, align 8
  %13 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  store ptr %12, ptr %13, align 4
  store volatile ptr %4, ptr %12, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @phy_fixup_lock) #21
  br label %14

14:                                               ; preds = %6, %2
  %15 = phi i32 [ 0, %6 ], [ -12, %2 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @phy_unregister_fixup(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  tail call void @mutex_lock(ptr noundef nonnull @phy_fixup_lock) #21
  %4 = load ptr, ptr @phy_fixup_list, align 4
  %5 = icmp eq ptr %4, @phy_fixup_list
  br i1 %5, label %24, label %6

6:                                                ; preds = %22, %3
  %7 = phi ptr [ %8, %22 ], [ %4, %3 ]
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.phy_fixup, ptr %7, i32 0, i32 1
  %10 = tail call i32 @strcmp(ptr noundef %9, ptr noundef %0)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.phy_fixup, ptr %7, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = xor i32 %14, %1
  %16 = and i32 %15, %2
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  store ptr %20, ptr %21, align 4
  store volatile ptr %8, ptr %20, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %7, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %19, align 4
  tail call void @kfree(ptr noundef %7) #21
  br label %24

22:                                               ; preds = %12, %6
  %23 = icmp eq ptr %8, @phy_fixup_list
  br i1 %23, label %24, label %6

24:                                               ; preds = %22, %18, %3
  %25 = phi i32 [ 0, %18 ], [ -19, %3 ], [ -19, %22 ]
  tail call void @mutex_unlock(ptr noundef nonnull @phy_fixup_lock) #21
  ret i32 %25
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @phy_unregister_fixup_for_uid(i32 noundef %0, i32 noundef %1) #0 {
  tail call void @mutex_lock(ptr noundef nonnull @phy_fixup_lock) #21
  %3 = load ptr, ptr @phy_fixup_list, align 4
  %4 = icmp eq ptr %3, @phy_fixup_list
  br i1 %4, label %23, label %5

5:                                                ; preds = %21, %2
  %6 = phi ptr [ %7, %21 ], [ %3, %2 ]
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.phy_fixup, ptr %6, i32 0, i32 1
  %9 = tail call i32 @strcmp(ptr noundef %8, ptr noundef nonnull dereferenceable(14) @.str) #21
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %21

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.phy_fixup, ptr %6, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = xor i32 %13, %0
  %15 = and i32 %14, %1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  store ptr %19, ptr %20, align 4
  store volatile ptr %7, ptr %19, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %6, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %18, align 4
  tail call void @kfree(ptr noundef %6) #21
  br label %23

21:                                               ; preds = %11, %5
  %22 = icmp eq ptr %7, @phy_fixup_list
  br i1 %22, label %23, label %5

23:                                               ; preds = %21, %17, %2
  %24 = phi i32 [ 0, %17 ], [ -19, %2 ], [ -19, %21 ]
  tail call void @mutex_unlock(ptr noundef nonnull @phy_fixup_lock) #21
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @phy_unregister_fixup_for_id(ptr nocapture noundef readonly %0) #0 {
  tail call void @mutex_lock(ptr noundef nonnull @phy_fixup_lock) #21
  %2 = load ptr, ptr @phy_fixup_list, align 4
  %3 = icmp eq ptr %2, @phy_fixup_list
  br i1 %3, label %20, label %4

4:                                                ; preds = %18, %1
  %5 = phi ptr [ %6, %18 ], [ %2, %1 ]
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.phy_fixup, ptr %5, i32 0, i32 1
  %8 = tail call i32 @strcmp(ptr noundef %7, ptr noundef %0) #21
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.phy_fixup, ptr %5, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %14, label %18

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  store ptr %16, ptr %17, align 4
  store volatile ptr %6, ptr %16, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %5, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %15, align 4
  tail call void @kfree(ptr noundef %5) #21
  br label %20

18:                                               ; preds = %10, %4
  %19 = icmp eq ptr %6, @phy_fixup_list
  br i1 %19, label %20, label %4

20:                                               ; preds = %18, %14, %1
  %21 = phi i32 [ 0, %14 ], [ -19, %1 ], [ -19, %18 ]
  tail call void @mutex_unlock(ptr noundef nonnull @phy_fixup_lock) #21
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @phy_device_create(ptr noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3, ptr noundef readonly %4) #0 {
  %6 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %7 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 904) #22
  %8 = icmp eq ptr %7, null
  br i1 %8, label %67, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.mii_bus, ptr %0, i32 0, i32 11
  %11 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 1
  store ptr %10, ptr %11, align 4
  %12 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 5
  store ptr @mdio_bus_type, ptr %12, align 4
  %13 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 4
  store ptr @mdio_bus_phy_type, ptr %13, align 8
  %14 = getelementptr inbounds %struct.mdio_device, ptr %7, i32 0, i32 1
  store ptr %0, ptr %14, align 8
  %15 = getelementptr inbounds %struct.mdio_device, ptr %7, i32 0, i32 3
  store ptr @phy_bus_match, ptr %15, align 4
  %16 = getelementptr inbounds %struct.mdio_device, ptr %7, i32 0, i32 6
  store i32 %1, ptr %16, align 8
  %17 = getelementptr inbounds %struct.mdio_device, ptr %7, i32 0, i32 7
  store i32 1, ptr %17, align 4
  %18 = getelementptr inbounds %struct.mdio_device, ptr %7, i32 0, i32 4
  store ptr @phy_mdio_device_free, ptr %18, align 8
  %19 = getelementptr inbounds %struct.mdio_device, ptr %7, i32 0, i32 5
  store ptr @phy_mdio_device_remove, ptr %19, align 4
  %20 = getelementptr inbounds %struct.phy_device, ptr %7, i32 0, i32 8
  store i32 -1, ptr %20, align 8
  %21 = getelementptr inbounds %struct.phy_device, ptr %7, i32 0, i32 9
  store i32 255, ptr %21, align 4
  %22 = getelementptr inbounds %struct.phy_device, ptr %7, i32 0, i32 11
  store i32 0, ptr %22, align 4
  %23 = getelementptr inbounds %struct.phy_device, ptr %7, i32 0, i32 12
  store i32 0, ptr %23, align 8
  %24 = getelementptr inbounds %struct.phy_device, ptr %7, i32 0, i32 4
  %25 = load i16, ptr %24, align 8
  %26 = getelementptr inbounds %struct.phy_device, ptr %7, i32 0, i32 10
  store i32 0, ptr %26, align 8
  %27 = getelementptr inbounds %struct.phy_device, ptr %7, i32 0, i32 7
  store i32 3, ptr %27, align 4
  %28 = and i16 %25, -12290
  %29 = zext i1 %3 to i16
  %30 = or i16 %28, %29
  %31 = or i16 %30, 4096
  store i16 %31, ptr %24, align 8
  %32 = getelementptr inbounds %struct.phy_device, ptr %7, i32 0, i32 2
  store i32 %2, ptr %32, align 4
  %33 = icmp ne ptr %4, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %9
  %35 = getelementptr inbounds %struct.phy_device, ptr %7, i32 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(136) %35, ptr noundef nonnull align 4 dereferenceable(136) %4, i32 136, i1 false)
  br label %36

36:                                               ; preds = %34, %9
  %37 = getelementptr %struct.mii_bus, ptr %0, i32 0, i32 15, i32 %1
  %38 = load i32, ptr %37, align 4
  %39 = getelementptr inbounds %struct.phy_device, ptr %7, i32 0, i32 21
  store i32 %38, ptr %39, align 4
  %40 = getelementptr inbounds %struct.mii_bus, ptr %0, i32 0, i32 2
  %41 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef nonnull %7, ptr noundef nonnull @.str.1, ptr noundef %40, i32 noundef %1) #21
  tail call void @device_initialize(ptr noundef nonnull %7) #21
  %42 = getelementptr inbounds %struct.phy_device, ptr %7, i32 0, i32 5
  store i32 0, ptr %42, align 4
  %43 = getelementptr inbounds %struct.phy_device, ptr %7, i32 0, i32 28
  tail call void @__mutex_init(ptr noundef %43, ptr noundef nonnull @.str.2, ptr noundef nonnull @phy_device_create.__key) #21
  %44 = getelementptr inbounds %struct.phy_device, ptr %7, i32 0, i32 27
  store i32 -32, ptr %44, align 4
  %45 = getelementptr inbounds %struct.phy_device, ptr %7, i32 0, i32 27, i32 0, i32 1
  store volatile ptr %45, ptr %45, align 8
  %46 = getelementptr inbounds %struct.phy_device, ptr %7, i32 0, i32 27, i32 0, i32 1, i32 1
  store ptr %45, ptr %46, align 4
  %47 = getelementptr inbounds %struct.phy_device, ptr %7, i32 0, i32 27, i32 0, i32 2
  store ptr @phy_state_machine, ptr %47, align 8
  %48 = getelementptr inbounds %struct.phy_device, ptr %7, i32 0, i32 27, i32 1
  tail call void @init_timer_key(ptr noundef %48, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #21
  %49 = and i1 %33, %3
  br i1 %49, label %50, label %61

50:                                               ; preds = %58, %36
  %51 = phi i32 [ %59, %58 ], [ 1, %36 ]
  %52 = getelementptr %struct.phy_c45_device_ids, ptr %4, i32 0, i32 2, i32 %51
  %53 = load i32, ptr %52, align 4
  %54 = icmp eq i32 %53, -1
  br i1 %54, label %58, label %55

55:                                               ; preds = %50
  %56 = tail call fastcc i32 @phy_request_driver_module(ptr noundef nonnull %7, i32 noundef %53)
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %55, %50
  %59 = add nuw nsw i32 %51, 1
  %60 = icmp eq i32 %59, 32
  br i1 %60, label %67, label %50

61:                                               ; preds = %36
  %62 = tail call fastcc i32 @phy_request_driver_module(ptr noundef nonnull %7, i32 noundef %2)
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %61, %55
  %65 = phi i32 [ %62, %61 ], [ %56, %55 ]
  tail call void @put_device(ptr noundef nonnull %7) #21
  %66 = inttoptr i32 %65 to ptr
  br label %67

67:                                               ; preds = %64, %61, %58, %5
  %68 = phi ptr [ %66, %64 ], [ %7, %61 ], [ inttoptr (i32 -12 to ptr), %5 ], [ %7, %58 ]
  ret ptr %68
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @phy_bus_match(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.mdio_driver_common, ptr %1, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = icmp sgt i32 %4, -1
  br i1 %5, label %44, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.phy_driver, ptr %1, i32 0, i32 19
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = tail call i32 %8(ptr noundef %0) #21
  br label %44

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 4
  %14 = load i16, ptr %13, align 8
  %15 = and i16 %14, 1
  %16 = icmp eq i16 %15, 0
  %17 = getelementptr inbounds %struct.phy_driver, ptr %1, i32 0, i32 1
  br i1 %16, label %34, label %18

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.phy_driver, ptr %1, i32 0, i32 3
  br label %20

20:                                               ; preds = %31, %18
  %21 = phi i32 [ 1, %18 ], [ %32, %31 ]
  %22 = getelementptr %struct.phy_device, ptr %0, i32 0, i32 3, i32 2, i32 %21
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %31, label %25

25:                                               ; preds = %20
  %26 = load i32, ptr %17, align 4
  %27 = load i32, ptr %19, align 4
  %28 = xor i32 %26, %23
  %29 = and i32 %28, %27
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %44, label %31

31:                                               ; preds = %25, %20
  %32 = add nuw nsw i32 %21, 1
  %33 = icmp eq i32 %32, 32
  br i1 %33, label %44, label %20

34:                                               ; preds = %12
  %35 = load i32, ptr %17, align 4
  %36 = getelementptr inbounds %struct.phy_driver, ptr %1, i32 0, i32 3
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 2
  %39 = load i32, ptr %38, align 4
  %40 = xor i32 %39, %35
  %41 = and i32 %40, %37
  %42 = icmp eq i32 %41, 0
  %43 = zext i1 %42 to i32
  br label %44

44:                                               ; preds = %34, %31, %25, %10, %2
  %45 = phi i32 [ %11, %10 ], [ %43, %34 ], [ 0, %2 ], [ 0, %31 ], [ 1, %25 ]
  ret i32 %45
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @phy_mdio_device_free(ptr noundef %0) #0 {
  tail call void @put_device(ptr noundef %0) #21
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @phy_mdio_device_remove(ptr noundef %0) #0 {
  tail call void @device_del(ptr noundef %0) #21
  tail call void @mdio_device_reset(ptr noundef %0, i32 noundef 1) #21
  %2 = tail call i32 @mdiobus_unregister_device(ptr noundef %0) #21
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_initialize(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_state_machine(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @phy_request_driver_module(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = lshr i32 %1, 31
  %4 = lshr i32 %1, 30
  %5 = and i32 %4, 1
  %6 = lshr i32 %1, 29
  %7 = and i32 %6, 1
  %8 = lshr i32 %1, 28
  %9 = and i32 %8, 1
  %10 = lshr i32 %1, 27
  %11 = and i32 %10, 1
  %12 = lshr i32 %1, 26
  %13 = and i32 %12, 1
  %14 = lshr i32 %1, 25
  %15 = and i32 %14, 1
  %16 = lshr i32 %1, 24
  %17 = and i32 %16, 1
  %18 = lshr i32 %1, 23
  %19 = and i32 %18, 1
  %20 = lshr i32 %1, 22
  %21 = and i32 %20, 1
  %22 = lshr i32 %1, 21
  %23 = and i32 %22, 1
  %24 = lshr i32 %1, 20
  %25 = and i32 %24, 1
  %26 = lshr i32 %1, 19
  %27 = and i32 %26, 1
  %28 = lshr i32 %1, 18
  %29 = and i32 %28, 1
  %30 = lshr i32 %1, 17
  %31 = and i32 %30, 1
  %32 = lshr i32 %1, 16
  %33 = and i32 %32, 1
  %34 = lshr i32 %1, 15
  %35 = and i32 %34, 1
  %36 = lshr i32 %1, 14
  %37 = and i32 %36, 1
  %38 = lshr i32 %1, 13
  %39 = and i32 %38, 1
  %40 = lshr i32 %1, 12
  %41 = and i32 %40, 1
  %42 = lshr i32 %1, 11
  %43 = and i32 %42, 1
  %44 = lshr i32 %1, 10
  %45 = and i32 %44, 1
  %46 = lshr i32 %1, 9
  %47 = and i32 %46, 1
  %48 = lshr i32 %1, 8
  %49 = and i32 %48, 1
  %50 = lshr i32 %1, 7
  %51 = and i32 %50, 1
  %52 = lshr i32 %1, 6
  %53 = and i32 %52, 1
  %54 = lshr i32 %1, 5
  %55 = and i32 %54, 1
  %56 = lshr i32 %1, 4
  %57 = and i32 %56, 1
  %58 = lshr i32 %1, 3
  %59 = and i32 %58, 1
  %60 = lshr i32 %1, 2
  %61 = and i32 %60, 1
  %62 = lshr i32 %1, 1
  %63 = and i32 %62, 1
  %64 = and i32 %1, 1
  %65 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.76, i32 noundef %3, i32 noundef %5, i32 noundef %7, i32 noundef %9, i32 noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef %17, i32 noundef %19, i32 noundef %21, i32 noundef %23, i32 noundef %25, i32 noundef %27, i32 noundef %29, i32 noundef %31, i32 noundef %33, i32 noundef %35, i32 noundef %37, i32 noundef %39, i32 noundef %41, i32 noundef %43, i32 noundef %45, i32 noundef %47, i32 noundef %49, i32 noundef %51, i32 noundef %53, i32 noundef %55, i32 noundef %57, i32 noundef %59, i32 noundef %61, i32 noundef %63, i32 noundef %64) #21
  %66 = icmp slt i32 %65, 0
  %67 = icmp ne i32 %65, -2
  %68 = and i1 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.77, i32 noundef %65, i32 noundef %1) #23
  br label %70

70:                                               ; preds = %69, %2
  %71 = phi i32 [ %65, %69 ], [ 0, %2 ]
  ret i32 %71
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fwnode_get_phy_id(ptr noundef %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #21
  store i32 0, ptr %3, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #21
  store i32 0, ptr %4, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #21
  store ptr null, ptr %5, align 4, !annotation !8
  %6 = call i32 @fwnode_property_read_string(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef nonnull %5) #21
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %18

8:                                                ; preds = %2
  %9 = load ptr, ptr %5, align 4
  %10 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %9, ptr noundef nonnull @.str.4, ptr noundef nonnull %3, ptr noundef nonnull %4)
  %11 = icmp eq i32 %10, 2
  br i1 %11, label %12, label %18

12:                                               ; preds = %8
  %13 = load i32, ptr %3, align 4
  %14 = shl i32 %13, 16
  %15 = load i32, ptr %4, align 4
  %16 = and i32 %15, 65535
  %17 = or i32 %16, %14
  store i32 %17, ptr %1, align 4
  br label %18

18:                                               ; preds = %12, %8, %2
  %19 = phi i32 [ 0, %12 ], [ %6, %2 ], [ -22, %8 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #21
  ret i32 %19
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fwnode_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @get_phy_device(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2) #0 {
  %4 = alloca %struct.phy_c45_device_ids, align 8
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %4) #21
  %5 = getelementptr inbounds %struct.phy_c45_device_ids, ptr %4, i32 0, i32 2
  store i64 0, ptr %4, align 8
  call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(128) %5, i8 -1, i32 128, i1 false)
  br i1 %2, label %27, label %6

6:                                                ; preds = %3
  %7 = tail call i32 @mdiobus_read(ptr noundef %0, i32 noundef %1, i32 noundef 2) #21
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %6
  %10 = icmp eq i32 %7, -5
  %11 = icmp eq i32 %7, -19
  %12 = or i1 %10, %11
  %13 = select i1 %12, i32 -19, i32 -5
  br label %30

14:                                               ; preds = %6
  %15 = tail call i32 @mdiobus_read(ptr noundef %0, i32 noundef %1, i32 noundef 3) #21
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %14
  %18 = icmp eq i32 %15, -5
  %19 = icmp eq i32 %15, -19
  %20 = or i1 %18, %19
  %21 = select i1 %20, i32 -19, i32 -5
  br label %30

22:                                               ; preds = %14
  %23 = shl i32 %7, 16
  %24 = or i32 %15, %23
  %25 = and i32 %24, 536870911
  %26 = icmp eq i32 %25, 536870911
  br i1 %26, label %30, label %33

27:                                               ; preds = %3
  %28 = call fastcc i32 @get_phy_c45_ids(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %4)
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %44, label %30

30:                                               ; preds = %27, %22, %17, %9
  %31 = phi i32 [ %28, %27 ], [ %21, %17 ], [ %13, %9 ], [ -19, %22 ]
  %32 = inttoptr i32 %31 to ptr
  br label %47

33:                                               ; preds = %22
  %34 = icmp eq i32 %24, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %33
  %36 = getelementptr inbounds %struct.mii_bus, ptr %0, i32 0, i32 19
  %37 = load i32, ptr %36, align 4
  %38 = icmp ugt i32 %37, 1
  br i1 %38, label %39, label %44

39:                                               ; preds = %35
  %40 = call fastcc i32 @get_phy_c45_ids(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %4)
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = call ptr @phy_device_create(ptr noundef %0, i32 noundef %1, i32 noundef 0, i1 noundef zeroext true, ptr noundef nonnull %4)
  br label %47

44:                                               ; preds = %39, %35, %33, %27
  %45 = phi i32 [ 0, %39 ], [ 0, %35 ], [ %24, %33 ], [ 0, %27 ]
  %46 = call ptr @phy_device_create(ptr noundef %0, i32 noundef %1, i32 noundef %45, i1 noundef zeroext %2, ptr noundef nonnull %4)
  br label %47

47:                                               ; preds = %44, %42, %30
  %48 = phi ptr [ %32, %30 ], [ %46, %44 ], [ %43, %42 ]
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %4) #21
  ret ptr %48
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @get_phy_c45_ids(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2) unnamed_addr #0 {
  br label %4

4:                                                ; preds = %33, %3
  %5 = phi i32 [ 1, %3 ], [ %35, %33 ]
  %6 = phi i32 [ 0, %3 ], [ %34, %33 ]
  %7 = icmp eq i32 %6, 0
  %8 = and i32 %6, 536870911
  %9 = icmp eq i32 %8, 536870911
  %10 = or i1 %7, %9
  br i1 %10, label %11, label %37

11:                                               ; preds = %4
  %12 = and i32 %5, 2147483646
  %13 = icmp eq i32 %12, 30
  %14 = shl i32 %5, 16
  br i1 %13, label %15, label %22

15:                                               ; preds = %11
  %16 = or i32 %14, 1073741832
  %17 = tail call i32 @mdiobus_read(ptr noundef %0, i32 noundef %1, i32 noundef %16) #21
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %89, label %19

19:                                               ; preds = %15
  %20 = and i32 %17, 49152
  %21 = icmp eq i32 %20, 32768
  br i1 %21, label %22, label %33

22:                                               ; preds = %19, %11
  %23 = or i32 %14, 1073741830
  %24 = tail call i32 @mdiobus_read(ptr noundef %0, i32 noundef %1, i32 noundef %23) #21
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %89, label %26

26:                                               ; preds = %22
  %27 = or i32 %14, 1073741829
  %28 = tail call i32 @mdiobus_read(ptr noundef %0, i32 noundef %1, i32 noundef %27) #21
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %89, label %30

30:                                               ; preds = %26
  %31 = shl i32 %24, 16
  %32 = or i32 %28, %31
  br label %33

33:                                               ; preds = %30, %19
  %34 = phi i32 [ %6, %19 ], [ %32, %30 ]
  %35 = add nuw nsw i32 %5, 1
  %36 = icmp eq i32 %35, 32
  br i1 %36, label %37, label %4

37:                                               ; preds = %33, %4
  %38 = phi i32 [ %34, %33 ], [ %6, %4 ]
  %39 = and i32 %38, 536870911
  %40 = icmp eq i32 %39, 536870911
  br i1 %40, label %41, label %52

41:                                               ; preds = %37
  %42 = tail call i32 @mdiobus_read(ptr noundef %0, i32 noundef %1, i32 noundef 1073741830) #21
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %89, label %44

44:                                               ; preds = %41
  %45 = tail call i32 @mdiobus_read(ptr noundef %0, i32 noundef %1, i32 noundef 1073741829) #21
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %89, label %47

47:                                               ; preds = %44
  %48 = shl i32 %42, 16
  %49 = or i32 %45, %48
  %50 = and i32 %49, 536870911
  %51 = icmp eq i32 %50, 536870911
  br i1 %51, label %89, label %52

52:                                               ; preds = %47, %37
  %53 = phi i32 [ %49, %47 ], [ %38, %37 ]
  br label %54

54:                                               ; preds = %83, %52
  %55 = phi i32 [ 1, %52 ], [ %84, %83 ]
  %56 = shl nuw i32 1, %55
  %57 = and i32 %56, %53
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %83, label %59

59:                                               ; preds = %54
  %60 = and i32 %55, 2147483646
  %61 = icmp eq i32 %60, 30
  %62 = shl i32 %55, 16
  br i1 %61, label %63, label %70

63:                                               ; preds = %59
  %64 = or i32 %62, 1073741832
  %65 = tail call i32 @mdiobus_read(ptr noundef %0, i32 noundef %1, i32 noundef %64) #21
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %89, label %67

67:                                               ; preds = %63
  %68 = and i32 %65, 49152
  %69 = icmp eq i32 %68, 32768
  br i1 %69, label %70, label %83

70:                                               ; preds = %67, %59
  %71 = or i32 %62, 1073741826
  %72 = tail call i32 @mdiobus_read(ptr noundef %0, i32 noundef %1, i32 noundef %71) #21
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %89, label %74

74:                                               ; preds = %70
  %75 = shl i32 %72, 16
  %76 = getelementptr %struct.phy_c45_device_ids, ptr %2, i32 0, i32 2, i32 %55
  store i32 %75, ptr %76, align 4
  %77 = or i32 %62, 1073741827
  %78 = tail call i32 @mdiobus_read(ptr noundef %0, i32 noundef %1, i32 noundef %77) #21
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %89, label %80

80:                                               ; preds = %74
  %81 = load i32, ptr %76, align 4
  %82 = or i32 %81, %78
  store i32 %82, ptr %76, align 4
  br label %83

83:                                               ; preds = %80, %67, %54
  %84 = add nuw nsw i32 %55, 1
  %85 = icmp eq i32 %84, 32
  br i1 %85, label %86, label %54

86:                                               ; preds = %83
  store i32 %53, ptr %2, align 4
  %87 = and i32 %53, -2
  %88 = getelementptr inbounds %struct.phy_c45_device_ids, ptr %2, i32 0, i32 1
  store i32 %87, ptr %88, align 4
  br label %89

89:                                               ; preds = %86, %74, %70, %63, %47, %44, %41, %26, %22, %15
  %90 = phi i32 [ 0, %86 ], [ -19, %47 ], [ -5, %41 ], [ -5, %44 ], [ -5, %74 ], [ -5, %70 ], [ %65, %63 ], [ -5, %15 ], [ -5, %22 ], [ -5, %26 ]
  ret i32 %90
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @phy_device_register(ptr noundef %0) #0 {
  %2 = tail call i32 @mdiobus_register_device(ptr noundef %0) #21
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %14

4:                                                ; preds = %1
  tail call void @mdio_device_reset(ptr noundef %0, i32 noundef 0) #21
  %5 = tail call fastcc i32 @phy_scan_fixups(ptr noundef %0)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %4
  %8 = tail call i32 @device_add(ptr noundef %0) #21
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %7, %4
  %11 = phi ptr [ @.str.5, %4 ], [ @.str.6, %7 ]
  %12 = phi i32 [ %5, %4 ], [ %8, %7 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull %11) #23
  tail call void @mdio_device_reset(ptr noundef %0, i32 noundef 1) #21
  %13 = tail call i32 @mdiobus_unregister_device(ptr noundef %0) #21
  br label %14

14:                                               ; preds = %10, %7, %1
  %15 = phi i32 [ %12, %10 ], [ %2, %1 ], [ 0, %7 ]
  ret i32 %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdiobus_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @phy_scan_fixups(ptr noundef %0) unnamed_addr #0 {
  tail call void @mutex_lock(ptr noundef nonnull @phy_fixup_lock) #21
  %2 = load ptr, ptr @phy_fixup_list, align 4
  %3 = icmp eq ptr %2, @phy_fixup_list
  br i1 %3, label %44, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3
  %6 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 2
  %7 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 4
  br label %8

8:                                                ; preds = %41, %4
  %9 = phi ptr [ %2, %4 ], [ %42, %41 ]
  %10 = getelementptr inbounds %struct.phy_fixup, ptr %9, i32 0, i32 1
  %11 = load ptr, ptr %5, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %8
  %14 = load ptr, ptr %0, align 4
  br label %15

15:                                               ; preds = %13, %8
  %16 = phi ptr [ %14, %13 ], [ %11, %8 ]
  %17 = tail call i32 @strcmp(ptr noundef %10, ptr noundef %16) #21
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %15
  %20 = tail call i32 @strcmp(ptr noundef %10, ptr noundef nonnull dereferenceable(14) @.str) #21
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %41

22:                                               ; preds = %19, %15
  %23 = getelementptr inbounds %struct.phy_fixup, ptr %9, i32 0, i32 2
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds %struct.phy_fixup, ptr %9, i32 0, i32 3
  %26 = load i32, ptr %25, align 4
  %27 = load i32, ptr %6, align 4
  %28 = xor i32 %27, %24
  %29 = and i32 %28, %26
  %30 = icmp ne i32 %29, 0
  %31 = icmp ne i32 %24, -1
  %32 = select i1 %30, i1 %31, i1 false
  br i1 %32, label %41, label %33

33:                                               ; preds = %22
  %34 = getelementptr inbounds %struct.phy_fixup, ptr %9, i32 0, i32 4
  %35 = load ptr, ptr %34, align 4
  %36 = tail call i32 %35(ptr noundef %0) #21
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %33
  %39 = load i16, ptr %7, align 8
  %40 = or i16 %39, 16
  store i16 %40, ptr %7, align 8
  br label %41

41:                                               ; preds = %38, %22, %19
  %42 = load ptr, ptr %9, align 4
  %43 = icmp eq ptr %42, @phy_fixup_list
  br i1 %43, label %44, label %8

44:                                               ; preds = %41, %33, %1
  %45 = phi i32 [ 0, %1 ], [ %36, %33 ], [ 0, %41 ]
  tail call void @mutex_unlock(ptr noundef nonnull @phy_fixup_lock) #21
  ret i32 %45
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdiobus_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @phy_device_remove(ptr noundef %0) #0 {
  tail call void @device_del(ptr noundef %0) #21
  tail call void @mdio_device_reset(ptr noundef %0, i32 noundef 1) #21
  %2 = tail call i32 @mdiobus_unregister_device(ptr noundef %0) #21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @phy_get_c45_ids(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %5 = load i32, ptr %4, align 8
  %6 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 3
  %7 = tail call fastcc i32 @get_phy_c45_ids(ptr noundef %3, i32 noundef %5, ptr noundef %6)
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @phy_find_first(ptr noundef %0) #0 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = phi i32 [ 0, %1 ], [ %6, %2 ]
  %4 = tail call ptr @mdiobus_get_phy(ptr noundef %0, i32 noundef %3) #21
  %5 = icmp ne ptr %4, null
  %6 = add nuw nsw i32 %3, 1
  %7 = icmp eq i32 %6, 32
  %8 = select i1 %5, i1 true, i1 %7
  br i1 %8, label %9, label %2

9:                                                ; preds = %2
  ret ptr %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mdiobus_get_phy(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @phy_connect_direct(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = icmp eq ptr %0, null
  br i1 %5, label %17, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 6
  %8 = load i32, ptr %7, align 8
  %9 = tail call i32 @phy_attach_direct(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %8, i32 noundef %3)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 37
  store ptr %2, ptr %12, align 8
  %13 = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 21
  %14 = load i32, ptr %13, align 4
  %15 = icmp ult i32 %14, -2
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  tail call void @phy_request_interrupt(ptr noundef %1) #21
  br label %17

17:                                               ; preds = %16, %11, %6, %4
  %18 = phi i32 [ -22, %4 ], [ %9, %6 ], [ 0, %16 ], [ 0, %11 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @phy_attach_direct(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.mdio_device, ptr %1, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %0, null
  br i1 %7, label %15, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 111, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 6
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.device_driver, ptr %12, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  br label %15

15:                                               ; preds = %8, %4
  %16 = phi ptr [ %14, %8 ], [ null, %4 ]
  %17 = load ptr, ptr %6, align 8
  %18 = icmp eq ptr %16, %17
  br i1 %18, label %22, label %19

19:                                               ; preds = %15
  %20 = tail call zeroext i1 @try_module_get(ptr noundef %17) #21
  br i1 %20, label %22, label %21

21:                                               ; preds = %19
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.16) #23
  br label %184

22:                                               ; preds = %19, %15
  %23 = tail call ptr @get_device(ptr noundef %1) #21
  %24 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 6
  %25 = load ptr, ptr %24, align 8
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %37

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 4
  %29 = load i16, ptr %28, align 8
  %30 = and i16 %29, 1
  %31 = icmp eq i16 %30, 0
  %32 = select i1 %31, ptr @genphy_driver, ptr @genphy_c45_driver
  store ptr %32, ptr %24, align 8
  %33 = load ptr, ptr getelementptr inbounds (%struct.phy_driver, ptr @genphy_driver, i32 0, i32 0, i32 0, i32 2), align 4
  %34 = load ptr, ptr getelementptr inbounds (%struct.phy_driver, ptr @genphy_c45_driver, i32 0, i32 0, i32 0, i32 2), align 4
  %35 = select i1 %31, ptr %33, ptr %34
  %36 = tail call zeroext i1 @try_module_get(ptr noundef %35) #21
  br i1 %36, label %42, label %41

37:                                               ; preds = %22
  %38 = getelementptr inbounds %struct.device_driver, ptr %25, i32 0, i32 2
  %39 = load ptr, ptr %38, align 4
  %40 = tail call zeroext i1 @try_module_get(ptr noundef %39) #21
  br i1 %40, label %51, label %41

41:                                               ; preds = %37, %27
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.17) #23
  br label %179

42:                                               ; preds = %27
  %43 = load ptr, ptr %24, align 8
  %44 = getelementptr inbounds %struct.device_driver, ptr %43, i32 0, i32 8
  %45 = load ptr, ptr %44, align 4
  %46 = tail call i32 %45(ptr noundef %1) #21
  %47 = icmp sgt i32 %46, -1
  br i1 %47, label %48, label %174

48:                                               ; preds = %42
  %49 = tail call i32 @device_bind_driver(ptr noundef %1) #21
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %174

51:                                               ; preds = %48, %37
  %52 = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 32
  %53 = load ptr, ptr %52, align 8
  %54 = icmp eq ptr %53, null
  br i1 %54, label %57, label %55

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 111
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %56, ptr noundef nonnull @.str.18) #23
  br label %172

57:                                               ; preds = %51
  %58 = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 36
  store ptr @phy_link_change, ptr %58, align 4
  br i1 %7, label %59, label %63

59:                                               ; preds = %57
  %60 = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 4
  %61 = load i16, ptr %60, align 8
  %62 = and i16 %61, -129
  store i16 %62, ptr %60, align 8
  br label %98

63:                                               ; preds = %57
  store ptr %0, ptr %52, align 8
  %64 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 120
  store ptr %1, ptr %64, align 8
  %65 = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 29
  %66 = load i8, ptr %65, align 4, !range !9
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %72, label %68

68:                                               ; preds = %63
  %69 = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 30
  %70 = load ptr, ptr %69, align 8
  %71 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 121
  store ptr %70, ptr %71, align 4
  br label %80

72:                                               ; preds = %63
  %73 = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 121
  %74 = load ptr, ptr %73, align 4
  %75 = icmp eq ptr %74, null
  br i1 %75, label %80, label %76

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 4
  %78 = load i16, ptr %77, align 8
  %79 = or i16 %78, 1024
  store i16 %79, ptr %77, align 8
  br label %80

80:                                               ; preds = %76, %72, %68
  %81 = load ptr, ptr %52, align 8
  %82 = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 4
  %83 = load i16, ptr %82, align 8
  %84 = and i16 %83, -129
  store i16 %84, ptr %82, align 8
  %85 = icmp eq ptr %81, null
  br i1 %85, label %98, label %86

86:                                               ; preds = %80
  %87 = getelementptr inbounds %struct.net_device, ptr %81, i32 0, i32 111
  %88 = tail call i32 @sysfs_create_link(ptr noundef %1, ptr noundef %87, ptr noundef nonnull @.str.22) #21
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %98

90:                                               ; preds = %86
  %91 = tail call i32 @sysfs_create_link_nowarn(ptr noundef %87, ptr noundef %1, ptr noundef nonnull @.str.21) #21
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %95, label %93

93:                                               ; preds = %90
  %94 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %87, ptr noundef nonnull @.str.78, ptr noundef %94, i32 noundef %91) #23
  br label %95

95:                                               ; preds = %93, %90
  %96 = load i16, ptr %82, align 8
  %97 = or i16 %96, 128
  store i16 %97, ptr %82, align 8
  br label %98

98:                                               ; preds = %95, %86, %80, %59
  %99 = phi ptr [ %60, %59 ], [ %82, %80 ], [ %82, %86 ], [ %82, %95 ]
  %100 = load ptr, ptr %52, align 8
  %101 = icmp eq ptr %100, null
  br i1 %101, label %102, label %106

102:                                              ; preds = %98
  %103 = tail call i32 @sysfs_create_file_ns(ptr noundef %1, ptr noundef nonnull @dev_attr_phy_standalone, ptr noundef null) #21
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %106, label %105

105:                                              ; preds = %102
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.19) #23
  br label %106

106:                                              ; preds = %105, %102, %98
  %107 = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 6
  %108 = load i32, ptr %107, align 8
  %109 = or i32 %108, %2
  store i32 %109, ptr %107, align 8
  %110 = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 7
  store i32 %3, ptr %110, align 4
  %111 = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 5
  store i32 1, ptr %111, align 4
  br i1 %26, label %112, label %114

112:                                              ; preds = %106
  %113 = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 10
  store i32 2, ptr %113, align 8
  br label %114

114:                                              ; preds = %112, %106
  br i1 %7, label %117, label %115

115:                                              ; preds = %114
  %116 = load ptr, ptr %52, align 8
  tail call void @netif_carrier_off(ptr noundef %116) #21
  br label %117

117:                                              ; preds = %115, %114
  tail call void @mdio_device_reset(ptr noundef %1, i32 noundef 0) #21
  %118 = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 1
  %119 = load ptr, ptr %118, align 8
  %120 = icmp eq ptr %119, null
  br i1 %120, label %154, label %121

121:                                              ; preds = %117
  %122 = getelementptr inbounds %struct.phy_driver, ptr %119, i32 0, i32 7
  %123 = load ptr, ptr %122, align 4
  %124 = icmp eq ptr %123, null
  br i1 %124, label %133, label %125

125:                                              ; preds = %121
  %126 = tail call i32 %123(ptr noundef %1) #21
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %125
  %129 = load i16, ptr %99, align 8
  %130 = and i16 %129, -33
  store i16 %130, ptr %99, align 8
  br label %133

131:                                              ; preds = %125
  %132 = icmp slt i32 %126, 0
  br i1 %132, label %172, label %133

133:                                              ; preds = %131, %128, %121
  %134 = tail call fastcc i32 @phy_scan_fixups(ptr noundef %1) #21
  %135 = icmp slt i32 %134, 0
  br i1 %135, label %172, label %136

136:                                              ; preds = %133
  %137 = load ptr, ptr %118, align 8
  %138 = getelementptr inbounds %struct.phy_driver, ptr %137, i32 0, i32 8
  %139 = load ptr, ptr %138, align 4
  %140 = icmp eq ptr %139, null
  br i1 %140, label %146, label %141

141:                                              ; preds = %136
  %142 = tail call i32 %139(ptr noundef %1) #21
  %143 = icmp slt i32 %142, 0
  br i1 %143, label %172, label %144

144:                                              ; preds = %141
  %145 = load ptr, ptr %118, align 8
  br label %146

146:                                              ; preds = %144, %136
  %147 = phi ptr [ %145, %144 ], [ %137, %136 ]
  %148 = getelementptr inbounds %struct.phy_driver, ptr %147, i32 0, i32 16
  %149 = load ptr, ptr %148, align 4
  %150 = icmp eq ptr %149, null
  br i1 %150, label %154, label %151

151:                                              ; preds = %146
  %152 = tail call i32 %149(ptr noundef %1) #21
  %153 = icmp slt i32 %152, 0
  br i1 %153, label %172, label %154

154:                                              ; preds = %151, %146, %117
  %155 = tail call i32 @phy_disable_interrupts(ptr noundef %1) #21
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %157, label %184

157:                                              ; preds = %154
  %158 = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 28
  tail call void @mutex_lock(ptr noundef %158) #21
  %159 = load ptr, ptr %118, align 8
  %160 = icmp eq ptr %159, null
  br i1 %160, label %171, label %161

161:                                              ; preds = %157
  %162 = getelementptr inbounds %struct.phy_driver, ptr %159, i32 0, i32 12
  %163 = load ptr, ptr %162, align 4
  %164 = icmp eq ptr %163, null
  br i1 %164, label %171, label %165

165:                                              ; preds = %161
  %166 = tail call i32 %163(ptr noundef %1) #21
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %168, label %171

168:                                              ; preds = %165
  %169 = load i16, ptr %99, align 8
  %170 = and i16 %169, -33
  store i16 %170, ptr %99, align 8
  br label %171

171:                                              ; preds = %168, %165, %161, %157
  tail call void @mutex_unlock(ptr noundef %158) #21
  br label %184

172:                                              ; preds = %151, %141, %133, %131, %55
  %173 = phi i32 [ -16, %55 ], [ %152, %151 ], [ %142, %141 ], [ %134, %133 ], [ %126, %131 ]
  tail call void @phy_detach(ptr noundef %1)
  br label %184

174:                                              ; preds = %48, %42
  %175 = phi i32 [ %49, %48 ], [ %46, %42 ]
  %176 = load ptr, ptr %24, align 8
  %177 = getelementptr inbounds %struct.device_driver, ptr %176, i32 0, i32 2
  %178 = load ptr, ptr %177, align 4
  tail call void @module_put(ptr noundef %178) #21
  br label %179

179:                                              ; preds = %174, %41
  %180 = phi i32 [ %175, %174 ], [ -5, %41 ]
  tail call void @put_device(ptr noundef %1) #21
  %181 = load ptr, ptr %6, align 8
  %182 = icmp eq ptr %16, %181
  br i1 %182, label %184, label %183

183:                                              ; preds = %179
  tail call void @module_put(ptr noundef %181) #21
  br label %184

184:                                              ; preds = %183, %179, %172, %171, %154, %21
  %185 = phi i32 [ %173, %172 ], [ 0, %171 ], [ -5, %21 ], [ %155, %154 ], [ %180, %183 ], [ %180, %179 ]
  ret i32 %185
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_request_interrupt(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @phy_connect(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = tail call ptr @bus_find_device(ptr noundef nonnull @mdio_bus_type, ptr noundef null, ptr noundef %1, ptr noundef nonnull @device_match_name) #21
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %4
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %1) #23
  br label %26

9:                                                ; preds = %4
  %10 = icmp eq ptr %0, null
  br i1 %10, label %23, label %11

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.phy_device, ptr %5, i32 0, i32 6
  %13 = load i32, ptr %12, align 8
  %14 = tail call i32 @phy_attach_direct(ptr noundef nonnull %0, ptr noundef nonnull %5, i32 noundef %13, i32 noundef %3) #21
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.phy_device, ptr %5, i32 0, i32 37
  store ptr %2, ptr %17, align 8
  %18 = getelementptr inbounds %struct.phy_device, ptr %5, i32 0, i32 21
  %19 = load i32, ptr %18, align 4
  %20 = icmp ult i32 %19, -2
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  tail call void @phy_request_interrupt(ptr noundef nonnull %5) #21
  br label %22

22:                                               ; preds = %21, %16
  tail call void @put_device(ptr noundef nonnull %5) #21
  br label %26

23:                                               ; preds = %11, %9
  %24 = phi i32 [ -22, %9 ], [ %14, %11 ]
  tail call void @put_device(ptr noundef nonnull %5) #21
  %25 = inttoptr i32 %24 to ptr
  br label %26

26:                                               ; preds = %23, %22, %7
  %27 = phi ptr [ %25, %23 ], [ inttoptr (i32 -19 to ptr), %7 ], [ %5, %22 ]
  ret ptr %27
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @phy_disconnect(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 5
  %3 = load i32, ptr %2, align 4
  %4 = icmp ugt i32 %3, 2
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  tail call void @phy_stop(ptr noundef %0) #21
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 21
  %8 = load i32, ptr %7, align 4
  %9 = icmp ult i32 %8, -2
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  tail call void @phy_free_interrupt(ptr noundef %0) #21
  br label %11

11:                                               ; preds = %10, %6
  %12 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 37
  store ptr null, ptr %12, align 8
  tail call void @phy_detach(ptr noundef %0)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_free_interrupt(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @phy_detach(ptr noundef %0) #0 {
  %2 = alloca %struct.ethtool_wolinfo, align 4
  %3 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 32
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 4
  %6 = load i16, ptr %5, align 8
  %7 = and i16 %6, 128
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %15, label %9

9:                                                ; preds = %1
  %10 = icmp eq ptr %4, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 111
  tail call void @sysfs_remove_link(ptr noundef %12, ptr noundef nonnull @.str.21) #21
  br label %13

13:                                               ; preds = %11, %9
  tail call void @sysfs_remove_link(ptr noundef %0, ptr noundef nonnull @.str.22) #21
  %14 = load ptr, ptr %3, align 8
  br label %15

15:                                               ; preds = %13, %1
  %16 = phi ptr [ %14, %13 ], [ %4, %1 ]
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  tail call void @sysfs_remove_file_ns(ptr noundef %0, ptr noundef nonnull @dev_attr_phy_standalone, ptr noundef null) #21
  %19 = load ptr, ptr %3, align 8
  br label %20

20:                                               ; preds = %18, %15
  %21 = phi ptr [ %19, %18 ], [ %16, %15 ]
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #21
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %2, ptr noundef nonnull align 4 dereferenceable(20) @__const.phy_suspend.wol, i32 20, i1 false) #21
  %22 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 1
  %23 = load ptr, ptr %22, align 8
  %24 = load i16, ptr %5, align 8
  %25 = and i16 %24, 32
  %26 = icmp eq i16 %25, 0
  br i1 %26, label %27, label %52

27:                                               ; preds = %20
  call void @phy_ethtool_get_wol(ptr noundef %0, ptr noundef nonnull %2) #21
  %28 = getelementptr inbounds %struct.ethtool_wolinfo, ptr %2, i32 0, i32 2
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %52

31:                                               ; preds = %27
  %32 = icmp eq ptr %21, null
  br i1 %32, label %40, label %33

33:                                               ; preds = %31
  %34 = getelementptr inbounds %struct.net_device, ptr %21, i32 0, i32 124
  %35 = load i8, ptr %34, align 1
  %36 = and i8 %35, 1
  %37 = icmp ne i8 %36, 0
  %38 = icmp eq ptr %23, null
  %39 = select i1 %37, i1 true, i1 %38
  br i1 %39, label %52, label %42

40:                                               ; preds = %31
  %41 = icmp eq ptr %23, null
  br i1 %41, label %52, label %42

42:                                               ; preds = %40, %33
  %43 = getelementptr inbounds %struct.phy_driver, ptr %23, i32 0, i32 11
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %52, label %46

46:                                               ; preds = %42
  %47 = call i32 %44(ptr noundef %0) #21
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load i16, ptr %5, align 8
  %51 = or i16 %50, 32
  store i16 %51, ptr %5, align 8
  br label %52

52:                                               ; preds = %49, %46, %42, %40, %33, %27, %20
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #21
  %53 = icmp eq ptr %4, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %52
  %55 = load ptr, ptr %3, align 8
  %56 = getelementptr inbounds %struct.net_device, ptr %55, i32 0, i32 120
  store ptr null, ptr %56, align 8
  store ptr null, ptr %3, align 8
  br label %57

57:                                               ; preds = %54, %52
  %58 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 31
  store ptr null, ptr %58, align 4
  %59 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 6
  %60 = load ptr, ptr %59, align 8
  %61 = icmp eq ptr %60, null
  br i1 %61, label %65, label %62

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.device_driver, ptr %60, i32 0, i32 2
  %64 = load ptr, ptr %63, align 4
  call void @module_put(ptr noundef %64) #21
  br label %65

65:                                               ; preds = %62, %57
  %66 = load ptr, ptr %22, align 8
  %67 = icmp eq ptr %66, null
  br i1 %67, label %80, label %68

68:                                               ; preds = %65
  %69 = call ptr @get_device(ptr noundef %0) #21
  %70 = load ptr, ptr %59, align 8
  %71 = icmp eq ptr %70, @genphy_driver
  call void @put_device(ptr noundef %0) #21
  br i1 %71, label %79, label %72

72:                                               ; preds = %68
  %73 = load ptr, ptr %22, align 8
  %74 = icmp eq ptr %73, null
  br i1 %74, label %80, label %75

75:                                               ; preds = %72
  %76 = call ptr @get_device(ptr noundef %0) #21
  %77 = load ptr, ptr %59, align 8
  %78 = icmp eq ptr %77, @genphy_c45_driver
  call void @put_device(ptr noundef %0) #21
  br i1 %78, label %79, label %80

79:                                               ; preds = %75, %68
  call void @device_release_driver(ptr noundef %0) #21
  br label %80

80:                                               ; preds = %79, %75, %72, %65
  call void @mdio_device_reset(ptr noundef %0, i32 noundef 1) #21
  %81 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %82 = load ptr, ptr %81, align 8
  call void @put_device(ptr noundef %0) #21
  br i1 %53, label %90, label %83

83:                                               ; preds = %80
  %84 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 111, i32 1
  %85 = load ptr, ptr %84, align 4
  %86 = getelementptr inbounds %struct.device, ptr %85, i32 0, i32 6
  %87 = load ptr, ptr %86, align 8
  %88 = getelementptr inbounds %struct.device_driver, ptr %87, i32 0, i32 2
  %89 = load ptr, ptr %88, align 4
  br label %90

90:                                               ; preds = %83, %80
  %91 = phi ptr [ %89, %83 ], [ null, %80 ]
  %92 = load ptr, ptr %82, align 8
  %93 = icmp eq ptr %91, %92
  br i1 %93, label %95, label %94

94:                                               ; preds = %90
  call void @module_put(ptr noundef %92) #21
  br label %95

95:                                               ; preds = %94, %90
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @phy_init_hw(ptr noundef %0) #0 {
  tail call void @mdio_device_reset(ptr noundef %0, i32 noundef 0) #21
  %2 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %40, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.phy_driver, ptr %3, i32 0, i32 7
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %18, label %9

9:                                                ; preds = %5
  %10 = tail call i32 %7(ptr noundef %0) #21
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 4
  %14 = load i16, ptr %13, align 8
  %15 = and i16 %14, -33
  store i16 %15, ptr %13, align 8
  br label %18

16:                                               ; preds = %9
  %17 = icmp slt i32 %10, 0
  br i1 %17, label %40, label %18

18:                                               ; preds = %16, %12, %5
  %19 = tail call fastcc i32 @phy_scan_fixups(ptr noundef %0)
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %40, label %21

21:                                               ; preds = %18
  %22 = load ptr, ptr %2, align 8
  %23 = getelementptr inbounds %struct.phy_driver, ptr %22, i32 0, i32 8
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %31, label %26

26:                                               ; preds = %21
  %27 = tail call i32 %24(ptr noundef %0) #21
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %40, label %29

29:                                               ; preds = %26
  %30 = load ptr, ptr %2, align 8
  br label %31

31:                                               ; preds = %29, %21
  %32 = phi ptr [ %30, %29 ], [ %22, %21 ]
  %33 = getelementptr inbounds %struct.phy_driver, ptr %32, i32 0, i32 16
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %31
  %37 = tail call i32 %34(ptr noundef %0) #21
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %36, %31
  br label %40

40:                                               ; preds = %39, %36, %26, %18, %16, %1
  %41 = phi i32 [ 0, %39 ], [ 0, %1 ], [ %10, %16 ], [ %19, %18 ], [ %27, %26 ], [ %37, %36 ]
  ret i32 %41
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @phy_attached_info(ptr noundef %0) #0 {
  tail call void (ptr, ptr, ...) @phy_attached_print(ptr noundef %0, ptr noundef null)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @phy_attached_print(ptr noundef %0, ptr noundef %1, ...) #0 {
  %3 = alloca [8 x i8], align 8
  %4 = alloca %struct.__va_list, align 4
  %5 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  %8 = select i1 %7, ptr @.str.13, ptr @.str.12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #21
  store i64 0, ptr %3, align 8, !annotation !8
  %9 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 21
  %10 = load i32, ptr %9, align 4
  switch i32 %10, label %12 [
    i32 -1, label %14
    i32 -2, label %11
  ]

11:                                               ; preds = %2
  br label %14

12:                                               ; preds = %2
  %13 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %3, i32 noundef 8, ptr noundef nonnull @.str.10, i32 noundef %10) #21
  br label %14

14:                                               ; preds = %12, %11, %2
  %15 = phi ptr [ %3, %12 ], [ @.str.9, %11 ], [ @.str.8, %2 ]
  %16 = call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.11, ptr noundef nonnull %15) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #21
  %17 = icmp eq ptr %1, null
  br i1 %17, label %18, label %26

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = load ptr, ptr %0, align 4
  br label %24

24:                                               ; preds = %22, %18
  %25 = phi ptr [ %23, %22 ], [ %20, %18 ]
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %0, ptr noundef nonnull @.str.14, ptr noundef nonnull %8, ptr noundef %25, ptr noundef %16) #23
  br label %37

26:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #21
  store i32 0, ptr %4, align 4, !annotation !8
  %27 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = load ptr, ptr %0, align 4
  br label %32

32:                                               ; preds = %30, %26
  %33 = phi ptr [ %31, %30 ], [ %28, %26 ]
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %0, ptr noundef nonnull @.str.15, ptr noundef nonnull %8, ptr noundef %33, ptr noundef %16) #23
  call void @llvm.va_start(ptr nonnull %4)
  %34 = load i32, ptr %4, align 4
  %35 = insertvalue [1 x i32] poison, i32 %34, 0
  %36 = call i32 @vprintk(ptr noundef nonnull %1, [1 x i32] %35) #21
  call void @llvm.va_end(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #21
  br label %37

37:                                               ; preds = %32, %24
  call void @kfree(ptr noundef %16) #21
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local noalias ptr @phy_attached_info_irq(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca [8 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #21
  store i64 0, ptr %2, align 8, !annotation !8
  %3 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 21
  %4 = load i32, ptr %3, align 4
  switch i32 %4, label %6 [
    i32 -1, label %8
    i32 -2, label %5
  ]

5:                                                ; preds = %1
  br label %8

6:                                                ; preds = %1
  %7 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %2, i32 noundef 8, ptr noundef nonnull @.str.10, i32 noundef %4)
  br label %8

8:                                                ; preds = %6, %5, %1
  %9 = phi ptr [ %2, %6 ], [ @.str.9, %5 ], [ @.str.8, %1 ]
  %10 = call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.11, ptr noundef nonnull %9) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #21
  ret ptr %10
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vprintk(ptr noundef, [1 x i32]) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #9

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @phy_sfp_attach(ptr nocapture noundef %0, ptr noundef %1) #10 {
  %3 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 32
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 121
  store ptr %1, ptr %7, align 4
  br label %8

8:                                                ; preds = %6, %2
  %9 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 29
  store i8 1, ptr %9, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @phy_sfp_detach(ptr nocapture noundef %0, ptr nocapture readnone %1) #10 {
  %3 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 32
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 121
  store ptr null, ptr %7, align 4
  br label %8

8:                                                ; preds = %6, %2
  %9 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 29
  store i8 0, ptr %9, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @phy_sfp_probe(ptr nocapture noundef %0, ptr nocapture readnone %1) #11 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 26
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 30
  store ptr null, ptr %7, align 8
  br label %8

8:                                                ; preds = %6, %2
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_bind_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @phy_link_change(ptr noundef %0, i1 noundef zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 32
  %4 = load ptr, ptr %3, align 8
  br i1 %1, label %5, label %6

5:                                                ; preds = %2
  tail call void @netif_carrier_on(ptr noundef %4) #21
  br label %7

6:                                                ; preds = %2
  tail call void @netif_carrier_off(ptr noundef %4) #21
  br label %7

7:                                                ; preds = %6, %5
  %8 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 37
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef %4) #21
  %10 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 33
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.mii_timestamper, ptr %11, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  tail call void %15(ptr noundef nonnull %11, ptr noundef %0) #21
  br label %18

18:                                               ; preds = %17, %13, %7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_disable_interrupts(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @phy_resume(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 28
  tail call void @mutex_lock(ptr noundef %2) #21
  %3 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %17, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.phy_driver, ptr %4, i32 0, i32 12
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %17, label %10

10:                                               ; preds = %6
  %11 = tail call i32 %8(ptr noundef %0) #21
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 4
  %15 = load i16, ptr %14, align 8
  %16 = and i16 %15, -33
  store i16 %16, ptr %14, align 8
  br label %17

17:                                               ; preds = %13, %10, %6, %1
  %18 = phi i32 [ 0, %6 ], [ 0, %1 ], [ 0, %13 ], [ %11, %10 ]
  tail call void @mutex_unlock(ptr noundef %2) #21
  ret i32 %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @phy_attach(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %17, label %5

5:                                                ; preds = %3
  %6 = tail call ptr @bus_find_device(ptr noundef nonnull @mdio_bus_type, ptr noundef null, ptr noundef %1, ptr noundef nonnull @device_match_name) #21
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %1) #23
  br label %17

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.phy_device, ptr %6, i32 0, i32 6
  %12 = load i32, ptr %11, align 8
  %13 = tail call i32 @phy_attach_direct(ptr noundef nonnull %0, ptr noundef nonnull %6, i32 noundef %12, i32 noundef %2)
  tail call void @put_device(ptr noundef nonnull %6) #21
  %14 = icmp eq i32 %13, 0
  %15 = inttoptr i32 %13 to ptr
  %16 = select i1 %14, ptr %6, ptr %15
  br label %17

17:                                               ; preds = %10, %8, %3
  %18 = phi ptr [ inttoptr (i32 -19 to ptr), %8 ], [ inttoptr (i32 -22 to ptr), %3 ], [ %16, %10 ]
  ret ptr %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @phy_driver_is_genphy(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @get_device(ptr noundef %0) #21
  %7 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 6
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, @genphy_driver
  tail call void @put_device(ptr noundef %0) #21
  br label %10

10:                                               ; preds = %5, %1
  %11 = phi i1 [ %9, %5 ], [ false, %1 ]
  ret i1 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @phy_driver_is_genphy_10g(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @get_device(ptr noundef %0) #21
  %7 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 6
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, @genphy_c45_driver
  tail call void @put_device(ptr noundef %0) #21
  br label %10

10:                                               ; preds = %5, %1
  %11 = phi i1 [ %9, %5 ], [ false, %1 ]
  ret i1 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @phy_package_join(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = icmp ugt i32 %1, 31
  br i1 %4, label %49, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.mii_bus, ptr %7, i32 0, i32 20
  tail call void @mutex_lock(ptr noundef %8) #21
  %9 = getelementptr %struct.mii_bus, ptr %7, i32 0, i32 21, i32 %1
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %26

12:                                               ; preds = %5
  %13 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %14 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3520, i32 noundef 20) #22
  %15 = icmp eq ptr %14, null
  br i1 %15, label %47, label %16

16:                                               ; preds = %12
  %17 = icmp eq i32 %2, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %16
  %19 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %2, i32 noundef 3520) #24
  %20 = getelementptr inbounds %struct.phy_package_shared, ptr %14, i32 0, i32 4
  store ptr %19, ptr %20, align 8
  %21 = icmp eq ptr %19, null
  br i1 %21, label %46, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.phy_package_shared, ptr %14, i32 0, i32 3
  store i32 %2, ptr %23, align 4
  br label %24

24:                                               ; preds = %22, %16
  store i32 %1, ptr %14, align 8
  %25 = getelementptr inbounds %struct.phy_package_shared, ptr %14, i32 0, i32 1
  store volatile i32 1, ptr %25, align 4
  store ptr %14, ptr %9, align 4
  br label %43

26:                                               ; preds = %5
  %27 = icmp eq i32 %2, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %26
  %29 = getelementptr inbounds %struct.phy_package_shared, ptr %10, i32 0, i32 3
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, %2
  br i1 %31, label %32, label %47

32:                                               ; preds = %28, %26
  %33 = getelementptr inbounds %struct.phy_package_shared, ptr %10, i32 0, i32 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %33) #21, !srcloc !10
  %34 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %33, ptr %33, i32 1, ptr elementtype(i32) %33) #21, !srcloc !11
  %35 = extractvalue { i32, i32, i32 } %34, 0
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %41, label %37, !prof !12

37:                                               ; preds = %32
  %38 = add i32 %35, 1
  %39 = or i32 %38, %35
  %40 = icmp sgt i32 %39, -1
  br i1 %40, label %43, label %41, !prof !13

41:                                               ; preds = %37, %32
  %42 = phi i32 [ 2, %32 ], [ 1, %37 ]
  tail call void @refcount_warn_saturate(ptr noundef %33, i32 noundef %42) #21
  br label %43

43:                                               ; preds = %41, %37, %24
  %44 = phi ptr [ %14, %24 ], [ %10, %37 ], [ %10, %41 ]
  tail call void @mutex_unlock(ptr noundef %8) #21
  %45 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 23
  store ptr %44, ptr %45, align 4
  br label %49

46:                                               ; preds = %18
  tail call void @kfree(ptr noundef nonnull %14) #21
  br label %47

47:                                               ; preds = %46, %28, %12
  %48 = phi i32 [ -22, %28 ], [ -12, %46 ], [ -12, %12 ]
  tail call void @mutex_unlock(ptr noundef %8) #21
  br label %49

49:                                               ; preds = %47, %43, %3
  %50 = phi i32 [ %48, %47 ], [ 0, %43 ], [ -22, %3 ]
  ret i32 %50
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @phy_package_leave(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 23
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %3, null
  br i1 %6, label %17, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.phy_package_shared, ptr %3, i32 0, i32 1
  %9 = getelementptr inbounds %struct.mii_bus, ptr %5, i32 0, i32 20
  %10 = tail call zeroext i1 @refcount_dec_and_mutex_lock(ptr noundef %8, ptr noundef %9) #21
  br i1 %10, label %11, label %16

11:                                               ; preds = %7
  %12 = load i32, ptr %3, align 4
  %13 = getelementptr %struct.mii_bus, ptr %5, i32 0, i32 21, i32 %12
  store ptr null, ptr %13, align 4
  tail call void @mutex_unlock(ptr noundef %9) #21
  %14 = getelementptr inbounds %struct.phy_package_shared, ptr %3, i32 0, i32 4
  %15 = load ptr, ptr %14, align 4
  tail call void @kfree(ptr noundef %15) #21
  tail call void @kfree(ptr noundef nonnull %3) #21
  br label %16

16:                                               ; preds = %11, %7
  store ptr null, ptr %2, align 4
  br label %17

17:                                               ; preds = %16, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @refcount_dec_and_mutex_lock(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @devm_phy_package_join(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @devm_phy_package_leave, i32 noundef 4, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str.20) #21
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %4
  %8 = tail call i32 @phy_package_join(ptr noundef %1, i32 noundef %2, i32 noundef %3)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  store ptr %1, ptr %5, align 4
  tail call void @devres_add(ptr noundef %0, ptr noundef nonnull %5) #21
  br label %12

11:                                               ; preds = %7
  tail call void @devres_free(ptr noundef nonnull %5) #21
  br label %12

12:                                               ; preds = %11, %10, %4
  %13 = phi i32 [ -12, %4 ], [ %8, %11 ], [ 0, %10 ]
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @__devres_alloc_node(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @devm_phy_package_leave(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr %1, align 4
  %4 = getelementptr inbounds %struct.phy_device, ptr %3, i32 0, i32 23
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.mdio_device, ptr %3, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %5, null
  br i1 %8, label %19, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.phy_package_shared, ptr %5, i32 0, i32 1
  %11 = getelementptr inbounds %struct.mii_bus, ptr %7, i32 0, i32 20
  %12 = tail call zeroext i1 @refcount_dec_and_mutex_lock(ptr noundef %10, ptr noundef %11) #21
  br i1 %12, label %13, label %18

13:                                               ; preds = %9
  %14 = load i32, ptr %5, align 4
  %15 = getelementptr %struct.mii_bus, ptr %7, i32 0, i32 21, i32 %14
  store ptr null, ptr %15, align 4
  tail call void @mutex_unlock(ptr noundef %11) #21
  %16 = getelementptr inbounds %struct.phy_package_shared, ptr %5, i32 0, i32 4
  %17 = load ptr, ptr %16, align 4
  tail call void @kfree(ptr noundef %17) #21
  tail call void @kfree(ptr noundef nonnull %5) #21
  br label %18

18:                                               ; preds = %13, %9
  store ptr null, ptr %4, align 4
  br label %19

19:                                               ; preds = %18, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_link(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @phy_suspend(ptr noundef %0) #0 {
  %2 = alloca %struct.ethtool_wolinfo, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #21
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %2, ptr noundef nonnull align 4 dereferenceable(20) @__const.phy_suspend.wol, i32 20, i1 false)
  %3 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 32
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 4
  %8 = load i16, ptr %7, align 8
  %9 = and i16 %8, 32
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %11, label %34

11:                                               ; preds = %1
  call void @phy_ethtool_get_wol(ptr noundef %0, ptr noundef nonnull %2) #21
  %12 = getelementptr inbounds %struct.ethtool_wolinfo, ptr %2, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %34

15:                                               ; preds = %11
  %16 = icmp eq ptr %4, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 124
  %19 = load i8, ptr %18, align 1
  %20 = and i8 %19, 1
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %34

22:                                               ; preds = %17, %15
  %23 = icmp eq ptr %6, null
  br i1 %23, label %34, label %24

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.phy_driver, ptr %6, i32 0, i32 11
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %34, label %28

28:                                               ; preds = %24
  %29 = call i32 %26(ptr noundef %0) #21
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load i16, ptr %7, align 8
  %33 = or i16 %32, 32
  store i16 %33, ptr %7, align 8
  br label %34

34:                                               ; preds = %31, %28, %24, %22, %17, %11, %1
  %35 = phi i32 [ 0, %1 ], [ -16, %17 ], [ -16, %11 ], [ 0, %24 ], [ 0, %22 ], [ 0, %31 ], [ %29, %28 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #21
  ret i32 %35
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_release_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_ethtool_get_wol(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__phy_resume(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %16, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.phy_driver, ptr %3, i32 0, i32 12
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %16, label %9

9:                                                ; preds = %5
  %10 = tail call i32 %7(ptr noundef %0) #21
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 4
  %14 = load i16, ptr %13, align 8
  %15 = and i16 %14, -33
  store i16 %15, ptr %13, align 8
  br label %16

16:                                               ; preds = %12, %9, %5, %1
  %17 = phi i32 [ 0, %5 ], [ 0, %1 ], [ 0, %12 ], [ %10, %9 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @phy_loopback(ptr noundef %0, i1 noundef zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %34, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 28
  tail call void @mutex_lock(ptr noundef %7) #21
  %8 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 4
  %9 = load i16, ptr %8, align 8
  %10 = and i16 %9, 256
  %11 = icmp eq i16 %10, 0
  br i1 %1, label %12, label %13

12:                                               ; preds = %6
  br i1 %11, label %14, label %32

13:                                               ; preds = %6
  br i1 %11, label %32, label %14

14:                                               ; preds = %13, %12
  %15 = load ptr, ptr %3, align 8
  %16 = getelementptr inbounds %struct.phy_driver, ptr %15, i32 0, i32 37
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %14
  %20 = tail call i32 %17(ptr noundef %0, i1 noundef zeroext %1) #21
  br label %23

21:                                               ; preds = %14
  %22 = tail call i32 @genphy_loopback(ptr noundef %0, i1 noundef zeroext %1)
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi i32 [ %20, %19 ], [ %22, %21 ]
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 4
  %28 = load i16, ptr %27, align 8
  %29 = select i1 %1, i16 256, i16 0
  %30 = and i16 %28, -257
  %31 = or i16 %30, %29
  store i16 %31, ptr %27, align 8
  br label %32

32:                                               ; preds = %26, %23, %13, %12
  %33 = phi i32 [ %24, %23 ], [ 0, %26 ], [ -16, %12 ], [ -22, %13 ]
  tail call void @mutex_unlock(ptr noundef %7) #21
  br label %34

34:                                               ; preds = %32, %2
  %35 = phi i32 [ %33, %32 ], [ -5, %2 ]
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @genphy_loopback(ptr noundef %0, i1 noundef zeroext %1) #0 {
  br i1 %1, label %3, label %43

3:                                                ; preds = %2
  %4 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 8
  %5 = load i32, ptr %4, align 8
  %6 = icmp eq i32 %5, 100
  %7 = select i1 %6, i16 24576, i16 16384
  %8 = icmp eq i32 %5, 1000
  %9 = select i1 %8, i16 16448, i16 %7
  %10 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 9
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 1
  %13 = or i16 %9, 256
  %14 = select i1 %12, i16 %13, i16 %9
  %15 = tail call i32 @phy_modify(ptr noundef %0, i32 noundef 0, i16 noundef zeroext -1, i16 noundef zeroext %14) #21
  %16 = tail call i64 @ktime_get() #21
  %17 = add i64 %16, 500000000
  tail call void @usleep_range_state(i32 noundef 1251, i32 noundef 5000, i32 noundef 2) #21
  %18 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %19 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %20 = load ptr, ptr %18, align 8
  %21 = load i32, ptr %19, align 8
  %22 = tail call i32 @mdiobus_read(ptr noundef %20, i32 noundef %21, i32 noundef 1) #21
  %23 = and i32 %22, 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %38

25:                                               ; preds = %32, %3
  %26 = tail call i64 @ktime_get() #21
  %27 = icmp sgt i64 %26, %17
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = load ptr, ptr %18, align 8
  %30 = load i32, ptr %19, align 8
  %31 = tail call i32 @mdiobus_read(ptr noundef %29, i32 noundef %30, i32 noundef 1) #21
  br label %38

32:                                               ; preds = %25
  tail call void @usleep_range_state(i32 noundef 1251, i32 noundef 5000, i32 noundef 2) #21
  %33 = load ptr, ptr %18, align 8
  %34 = load i32, ptr %19, align 8
  %35 = tail call i32 @mdiobus_read(ptr noundef %33, i32 noundef %34, i32 noundef 1) #21
  %36 = and i32 %35, 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %25, label %38

38:                                               ; preds = %32, %28, %3
  %39 = phi i32 [ %31, %28 ], [ %22, %3 ], [ %35, %32 ]
  %40 = and i32 %39, 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.25, ptr noundef nonnull @__func__.genphy_loopback, i32 noundef -110) #23
  br label %46

43:                                               ; preds = %2
  %44 = tail call i32 @phy_modify(ptr noundef %0, i32 noundef 0, i16 noundef zeroext 16384, i16 noundef zeroext 0) #21
  %45 = tail call i32 @phy_config_aneg(ptr noundef %0) #21
  br label %46

46:                                               ; preds = %43, %42, %38
  %47 = phi i32 [ -110, %42 ], [ 0, %43 ], [ 0, %38 ]
  ret i32 %47
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @phy_reset_after_clk_enable(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %13, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.phy_driver, ptr %5, i32 0, i32 5
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 2
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %7
  tail call void @mdio_device_reset(ptr noundef nonnull %0, i32 noundef 1) #21
  tail call void @mdio_device_reset(ptr noundef nonnull %0, i32 noundef 0) #21
  br label %13

13:                                               ; preds = %12, %7, %3, %1
  %14 = phi i32 [ 1, %12 ], [ -19, %3 ], [ -19, %1 ], [ 0, %7 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @genphy_config_eee_advert(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 20
  %3 = load i32, ptr %2, align 8
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = trunc i32 %3 to i16
  %7 = tail call i32 @phy_modify_mmd_changed(ptr noundef %0, i32 noundef 7, i32 noundef 60, i16 noundef zeroext %6, i16 noundef zeroext 0) #21
  %8 = tail call i32 @llvm.smax.i32(i32 %7, i32 0)
  br label %9

9:                                                ; preds = %5, %1
  %10 = phi i32 [ %8, %5 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_modify_mmd_changed(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @genphy_setup_forced(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 11
  store i32 0, ptr %2, align 4
  %3 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 12
  store i32 0, ptr %3, align 8
  %4 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 8
  %5 = load i32, ptr %4, align 8
  %6 = icmp eq i32 %5, 100
  %7 = select i1 %6, i16 8192, i16 0
  %8 = icmp eq i32 %5, 1000
  %9 = select i1 %8, i16 64, i16 %7
  %10 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 9
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 1
  %13 = or i16 %9, 256
  %14 = select i1 %12, i16 %13, i16 %9
  %15 = tail call i32 @phy_modify(ptr noundef %0, i32 noundef 0, i16 noundef zeroext -19457, i16 noundef zeroext %14) #21
  ret i32 %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_modify(ptr noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @genphy_restart_aneg(ptr noundef %0) #0 {
  %2 = tail call i32 @phy_modify(ptr noundef %0, i32 noundef 0, i16 noundef zeroext 1024, i16 noundef zeroext 4608) #21
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @genphy_check_and_restart_aneg(ptr noundef %0, i1 noundef zeroext %1) #0 {
  br i1 %1, label %13, label %3

3:                                                ; preds = %2
  %4 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %7 = load i32, ptr %6, align 8
  %8 = tail call i32 @mdiobus_read(ptr noundef %5, i32 noundef %7, i32 noundef 0) #21
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %3
  %11 = and i32 %8, 5120
  %12 = icmp eq i32 %11, 4096
  br i1 %12, label %15, label %13

13:                                               ; preds = %10, %2
  %14 = tail call i32 @phy_modify(ptr noundef %0, i32 noundef 0, i16 noundef zeroext 1024, i16 noundef zeroext 4608) #21
  br label %15

15:                                               ; preds = %13, %10, %3
  %16 = phi i32 [ %14, %13 ], [ %8, %3 ], [ 0, %10 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__genphy_config_aneg(ptr noundef %0, i1 noundef zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 20
  %4 = load i32, ptr %3, align 8
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = trunc i32 %4 to i16
  %8 = tail call i32 @phy_modify_mmd_changed(ptr noundef %0, i32 noundef 7, i32 noundef 60, i16 noundef zeroext %7, i16 noundef zeroext 0) #21
  %9 = icmp slt i32 %8, 1
  br i1 %9, label %10, label %11

10:                                               ; preds = %6, %2
  br label %11

11:                                               ; preds = %10, %6
  %12 = phi i1 [ %1, %10 ], [ true, %6 ]
  %13 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 4
  %14 = load i16, ptr %13, align 8
  %15 = and i16 %14, 8
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %31, label %17

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 14
  %19 = load i8, ptr %18, align 1
  switch i8 %19, label %24 [
    i8 2, label %20
    i8 3, label %25
    i8 4, label %21
    i8 5, label %22
    i8 1, label %31
    i8 0, label %31
  ]

20:                                               ; preds = %17
  br label %25

21:                                               ; preds = %17
  br label %22

22:                                               ; preds = %21, %17
  %23 = phi i16 [ 4096, %17 ], [ 6144, %21 ]
  br label %25

24:                                               ; preds = %17
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.80) #23
  br label %122

25:                                               ; preds = %22, %20, %17
  %26 = phi i16 [ %23, %22 ], [ 0, %17 ], [ 1024, %20 ]
  %27 = tail call i32 @phy_modify_changed(ptr noundef %0, i32 noundef 9, i16 noundef zeroext 7168, i16 noundef zeroext %26) #21
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %122, label %29

29:                                               ; preds = %25
  %30 = icmp eq i32 %27, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %29, %17, %17, %11
  br label %32

32:                                               ; preds = %31, %29
  %33 = phi i1 [ %12, %31 ], [ true, %29 ]
  %34 = load i16, ptr %13, align 8
  %35 = and i16 %34, 4096
  %36 = icmp eq i16 %35, 0
  br i1 %36, label %37, label %52

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 11
  store i32 0, ptr %38, align 4
  %39 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 12
  store i32 0, ptr %39, align 8
  %40 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 8
  %41 = load i32, ptr %40, align 8
  %42 = icmp eq i32 %41, 100
  %43 = select i1 %42, i16 8192, i16 0
  %44 = icmp eq i32 %41, 1000
  %45 = select i1 %44, i16 64, i16 %43
  %46 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 9
  %47 = load i32, ptr %46, align 4
  %48 = icmp eq i32 %47, 1
  %49 = or i16 %45, 256
  %50 = select i1 %48, i16 %49, i16 %45
  %51 = tail call i32 @phy_modify(ptr noundef %0, i32 noundef 0, i16 noundef zeroext -19457, i16 noundef zeroext %50) #21
  br label %122

52:                                               ; preds = %32
  %53 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 17
  %54 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 16
  %55 = tail call i32 @__bitmap_and(ptr noundef %53, ptr noundef %53, ptr noundef %54, i32 noundef 92) #21
  %56 = load volatile i32, ptr %53, align 4
  %57 = shl i32 %56, 5
  %58 = and i32 %57, 32
  %59 = load volatile i32, ptr %53, align 4
  %60 = shl i32 %59, 5
  %61 = and i32 %60, 64
  %62 = or i32 %61, %58
  %63 = load volatile i32, ptr %53, align 4
  %64 = shl i32 %63, 5
  %65 = and i32 %64, 128
  %66 = or i32 %62, %65
  %67 = load volatile i32, ptr %53, align 4
  %68 = shl i32 %67, 5
  %69 = and i32 %68, 256
  %70 = or i32 %66, %69
  %71 = load volatile i32, ptr %53, align 4
  %72 = lshr i32 %71, 3
  %73 = and i32 %72, 1024
  %74 = or i32 %70, %73
  %75 = load volatile i32, ptr %53, align 4
  %76 = lshr i32 %75, 3
  %77 = and i32 %76, 2048
  %78 = or i32 %74, %77
  %79 = trunc i32 %78 to i16
  %80 = tail call i32 @phy_modify_changed(ptr noundef %0, i32 noundef 4, i16 noundef zeroext 4064, i16 noundef zeroext %79) #21
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %122, label %82

82:                                               ; preds = %52
  %83 = icmp ne i32 %80, 0
  %84 = zext i1 %83 to i32
  %85 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %86 = load ptr, ptr %85, align 8
  %87 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %88 = load i32, ptr %87, align 8
  %89 = tail call i32 @mdiobus_read(ptr noundef %86, i32 noundef %88, i32 noundef 1) #21
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %122, label %91

91:                                               ; preds = %82
  %92 = and i32 %89, 256
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %108, label %94

94:                                               ; preds = %91
  %95 = load volatile i32, ptr %53, align 4
  %96 = shl i32 %95, 4
  %97 = and i32 %96, 256
  %98 = load volatile i32, ptr %53, align 4
  %99 = shl i32 %98, 4
  %100 = and i32 %99, 512
  %101 = or i32 %100, %97
  %102 = trunc i32 %101 to i16
  %103 = tail call i32 @phy_modify_changed(ptr noundef %0, i32 noundef 9, i16 noundef zeroext 768, i16 noundef zeroext %102) #21
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %122, label %105

105:                                              ; preds = %94
  %106 = icmp eq i32 %103, 0
  %107 = select i1 %106, i32 %84, i32 1
  br label %108

108:                                              ; preds = %105, %91
  %109 = phi i32 [ %107, %105 ], [ %84, %91 ]
  %110 = icmp ne i32 %109, 0
  %111 = or i1 %33, %110
  br i1 %111, label %120, label %112

112:                                              ; preds = %108
  %113 = load ptr, ptr %85, align 8
  %114 = load i32, ptr %87, align 8
  %115 = tail call i32 @mdiobus_read(ptr noundef %113, i32 noundef %114, i32 noundef 0) #21
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %122, label %117

117:                                              ; preds = %112
  %118 = and i32 %115, 5120
  %119 = icmp eq i32 %118, 4096
  br i1 %119, label %122, label %120

120:                                              ; preds = %117, %108
  %121 = tail call i32 @phy_modify(ptr noundef %0, i32 noundef 0, i16 noundef zeroext 1024, i16 noundef zeroext 4608) #21
  br label %122

122:                                              ; preds = %120, %117, %112, %94, %82, %52, %37, %25, %24
  %123 = phi i32 [ %51, %37 ], [ %27, %25 ], [ -95, %24 ], [ %121, %120 ], [ %115, %112 ], [ 0, %117 ], [ %103, %94 ], [ %89, %82 ], [ %80, %52 ]
  ret i32 %123
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @genphy_c37_config_aneg(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 4
  %3 = load i16, ptr %2, align 8
  %4 = and i16 %3, 4096
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %6, label %21

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 11
  store i32 0, ptr %7, align 4
  %8 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 12
  store i32 0, ptr %8, align 8
  %9 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 8
  %10 = load i32, ptr %9, align 8
  %11 = icmp eq i32 %10, 100
  %12 = select i1 %11, i16 8192, i16 0
  %13 = icmp eq i32 %10, 1000
  %14 = select i1 %13, i16 64, i16 %12
  %15 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 9
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 1
  %18 = or i16 %14, 256
  %19 = select i1 %17, i16 %18, i16 %14
  %20 = tail call i32 @phy_modify(ptr noundef %0, i32 noundef 0, i16 noundef zeroext -19457, i16 noundef zeroext %19) #21
  br label %59

21:                                               ; preds = %1
  %22 = tail call i32 @phy_modify(ptr noundef %0, i32 noundef 0, i16 noundef zeroext 8256, i16 noundef zeroext 64) #21
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %59

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 17
  %26 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 16
  %27 = tail call i32 @__bitmap_and(ptr noundef %25, ptr noundef %25, ptr noundef %26, i32 noundef 92) #21
  %28 = getelementptr %struct.phy_device, ptr %0, i32 0, i32 17, i32 1
  %29 = load volatile i32, ptr %28, align 4
  %30 = trunc i32 %29 to i16
  %31 = lshr i16 %30, 4
  %32 = and i16 %31, 32
  %33 = load volatile i32, ptr %25, align 4
  %34 = trunc i32 %33 to i16
  %35 = lshr i16 %34, 6
  %36 = and i16 %35, 128
  %37 = or i16 %36, %32
  %38 = load volatile i32, ptr %25, align 4
  %39 = trunc i32 %38 to i16
  %40 = lshr i16 %39, 6
  %41 = and i16 %40, 256
  %42 = or i16 %37, %41
  %43 = tail call i32 @phy_modify_changed(ptr noundef %0, i32 noundef 4, i16 noundef zeroext 480, i16 noundef zeroext %42) #21
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %59, label %45

45:                                               ; preds = %24
  %46 = icmp eq i32 %43, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %45
  %48 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %49 = load ptr, ptr %48, align 8
  %50 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %51 = load i32, ptr %50, align 8
  %52 = tail call i32 @mdiobus_read(ptr noundef %49, i32 noundef %51, i32 noundef 0) #21
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %47
  %55 = and i32 %52, 5120
  %56 = icmp eq i32 %55, 4096
  br i1 %56, label %59, label %57

57:                                               ; preds = %54, %45
  %58 = tail call i32 @phy_modify(ptr noundef %0, i32 noundef 0, i16 noundef zeroext 1024, i16 noundef zeroext 4608) #21
  br label %59

59:                                               ; preds = %57, %54, %47, %24, %21, %6
  %60 = phi i32 [ %20, %6 ], [ %58, %57 ], [ %22, %21 ], [ %43, %24 ], [ 0, %54 ], [ %52, %47 ]
  ret i32 %60
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @genphy_aneg_done(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %5 = load i32, ptr %4, align 8
  %6 = tail call i32 @mdiobus_read(ptr noundef %3, i32 noundef %5, i32 noundef 1) #21
  %7 = icmp slt i32 %6, 0
  %8 = and i32 %6, 32
  %9 = select i1 %7, i32 %6, i32 %8
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @genphy_update_link(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %5 = load i32, ptr %4, align 8
  %6 = tail call i32 @mdiobus_read(ptr noundef %3, i32 noundef %5, i32 noundef 0) #21
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %61, label %8

8:                                                ; preds = %1
  %9 = and i32 %6, 512
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %44

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 5
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 6
  br i1 %14, label %15, label %22

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 1
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %struct.phy_driver, ptr %17, i32 0, i32 5
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %19, 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %15, %11
  %23 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 21
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %26, label %31

26:                                               ; preds = %22, %15
  %27 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 4
  %28 = load i16, ptr %27, align 8
  %29 = and i16 %28, 8192
  %30 = icmp eq i16 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %26, %22
  %32 = load ptr, ptr %2, align 8
  %33 = load i32, ptr %4, align 8
  %34 = tail call i32 @mdiobus_read(ptr noundef %32, i32 noundef %33, i32 noundef 1) #21
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %61, label %36

36:                                               ; preds = %31
  %37 = and i32 %34, 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %36, %26
  %40 = load ptr, ptr %2, align 8
  %41 = load i32, ptr %4, align 8
  %42 = tail call i32 @mdiobus_read(ptr noundef %40, i32 noundef %41, i32 noundef 1) #21
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %61, label %44

44:                                               ; preds = %39, %36, %8
  %45 = phi i32 [ 0, %8 ], [ %42, %39 ], [ %34, %36 ]
  %46 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 4
  %47 = trunc i32 %45 to i16
  %48 = load i16, ptr %46, align 8
  %49 = shl i16 %47, 11
  %50 = and i16 %49, 8192
  %51 = and i16 %48, -24577
  %52 = shl i16 %47, 9
  %53 = and i16 %52, 16384
  %54 = or i16 %53, %51
  %55 = or i16 %54, %50
  %56 = and i16 %48, 4096
  %57 = icmp ne i16 %56, 0
  %58 = icmp eq i16 %53, 0
  %59 = select i1 %57, i1 %58, i1 false
  %60 = select i1 %59, i16 %51, i16 %55
  store i16 %60, ptr %46, align 8
  br label %61

61:                                               ; preds = %44, %39, %31, %1
  %62 = phi i32 [ %6, %1 ], [ %34, %31 ], [ %42, %39 ], [ 0, %44 ]
  ret i32 %62
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @genphy_read_lpa(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 4
  %3 = load i16, ptr %2, align 8
  %4 = and i16 %3, 4096
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %67, label %6

6:                                                ; preds = %1
  %7 = and i16 %3, 16384
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 18
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, -24704
  store i32 %12, ptr %10, align 4
  br label %69

13:                                               ; preds = %6
  %14 = and i16 %3, 8
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %43, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %20 = load i32, ptr %19, align 8
  %21 = tail call i32 @mdiobus_read(ptr noundef %18, i32 noundef %20, i32 noundef 10) #21
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %69, label %23

23:                                               ; preds = %16
  %24 = and i32 %21, 32768
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %36, label %26

26:                                               ; preds = %23
  %27 = load ptr, ptr %17, align 8
  %28 = load i32, ptr %19, align 8
  %29 = tail call i32 @mdiobus_read(ptr noundef %27, i32 noundef %28, i32 noundef 9) #21
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %69, label %31

31:                                               ; preds = %26
  %32 = and i32 %29, 4096
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %31
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.23) #23
  br label %69

35:                                               ; preds = %31
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.24) #23
  br label %69

36:                                               ; preds = %23
  %37 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 18
  %38 = load i32, ptr %37, align 4
  %39 = and i32 %38, -49
  %40 = lshr i32 %21, 6
  %41 = and i32 %40, 48
  %42 = or i32 %41, %39
  store i32 %42, ptr %37, align 4
  br label %43

43:                                               ; preds = %36, %13
  %44 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %45 = load ptr, ptr %44, align 8
  %46 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %47 = load i32, ptr %46, align 8
  %48 = tail call i32 @mdiobus_read(ptr noundef %45, i32 noundef %47, i32 noundef 5) #21
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %69, label %50

50:                                               ; preds = %43
  %51 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 18
  %52 = load i32, ptr %51, align 4
  %53 = and i32 %52, -24656
  %54 = lshr i32 %48, 5
  %55 = and i32 %54, 1
  %56 = shl i32 %48, 3
  %57 = and i32 %56, 8192
  %58 = and i32 %56, 16384
  %59 = and i32 %54, 14
  %60 = lshr i32 %48, 8
  %61 = and i32 %60, 64
  %62 = or i32 %59, %57
  %63 = or i32 %62, %58
  %64 = or i32 %63, %55
  %65 = or i32 %64, %61
  %66 = or i32 %65, %53
  store i32 %66, ptr %51, align 4
  br label %69

67:                                               ; preds = %1
  %68 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 18
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(12) %68, i8 0, i32 12, i1 false) #21
  br label %69

69:                                               ; preds = %67, %50, %43, %35, %34, %26, %16, %9
  %70 = phi i32 [ 0, %9 ], [ %21, %16 ], [ %29, %26 ], [ -67, %35 ], [ -67, %34 ], [ %48, %43 ], [ 0, %67 ], [ 0, %50 ]
  ret i32 %70
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @genphy_read_status_fixed(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %5 = load i32, ptr %4, align 8
  %6 = tail call i32 @mdiobus_read(ptr noundef %3, i32 noundef %5, i32 noundef 0) #21
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %22, label %8

8:                                                ; preds = %1
  %9 = lshr i32 %6, 8
  %10 = and i32 %9, 1
  %11 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 9
  store i32 %10, ptr %11, align 4
  %12 = and i32 %6, 64
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 8
  store i32 1000, ptr %15, align 8
  br label %22

16:                                               ; preds = %8
  %17 = and i32 %6, 8192
  %18 = icmp eq i32 %17, 0
  %19 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 8
  br i1 %18, label %21, label %20

20:                                               ; preds = %16
  store i32 100, ptr %19, align 8
  br label %22

21:                                               ; preds = %16
  store i32 10, ptr %19, align 8
  br label %22

22:                                               ; preds = %21, %20, %14, %1
  %23 = phi i32 [ %6, %1 ], [ 0, %20 ], [ 0, %21 ], [ 0, %14 ]
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @genphy_read_status(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 4
  %3 = load i16, ptr %2, align 8
  %4 = tail call i32 @genphy_update_link(ptr noundef %0)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %93

6:                                                ; preds = %1
  %7 = load i16, ptr %2, align 8
  %8 = and i16 %7, 4096
  %9 = icmp eq i16 %8, 0
  %10 = and i16 %3, 8192
  %11 = icmp eq i16 %10, 0
  %12 = select i1 %9, i1 true, i1 %11
  %13 = and i16 %7, 8192
  %14 = icmp eq i16 %13, 0
  %15 = select i1 %12, i1 true, i1 %14
  br i1 %15, label %16, label %93

16:                                               ; preds = %6
  %17 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 8
  store i32 -1, ptr %17, align 8
  %18 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 9
  store i32 255, ptr %18, align 4
  %19 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 11
  store i32 0, ptr %19, align 4
  %20 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 12
  store i32 0, ptr %20, align 8
  %21 = and i16 %7, 8
  %22 = icmp eq i16 %21, 0
  %23 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 13
  br i1 %22, label %24, label %26

24:                                               ; preds = %16
  store i8 0, ptr %23, align 4
  %25 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 15
  store i8 0, ptr %25, align 2
  br label %64

26:                                               ; preds = %16
  store i8 1, ptr %23, align 4
  %27 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 15
  store i8 1, ptr %27, align 2
  %28 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %29 = load ptr, ptr %28, align 8
  %30 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %31 = load i32, ptr %30, align 8
  %32 = tail call i32 @mdiobus_read(ptr noundef %29, i32 noundef %31, i32 noundef 9) #21
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %93, label %34

34:                                               ; preds = %26
  %35 = and i32 %32, 4096
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %34
  %38 = and i32 %32, 2048
  %39 = icmp eq i32 %38, 0
  %40 = select i1 %39, i8 5, i8 4
  br label %45

41:                                               ; preds = %34
  %42 = and i32 %32, 1024
  %43 = icmp eq i32 %42, 0
  %44 = select i1 %43, i8 3, i8 2
  br label %45

45:                                               ; preds = %41, %37
  %46 = phi i8 [ %40, %37 ], [ %44, %41 ]
  %47 = load ptr, ptr %28, align 8
  %48 = load i32, ptr %30, align 8
  %49 = tail call i32 @mdiobus_read(ptr noundef %47, i32 noundef %48, i32 noundef 10) #21
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %93, label %51

51:                                               ; preds = %45
  %52 = and i32 %49, 32768
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %51
  %55 = load i16, ptr %2, align 8
  %56 = and i16 %55, 8192
  %57 = icmp eq i16 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %54
  %59 = and i32 %49, 16384
  %60 = icmp eq i32 %59, 0
  %61 = select i1 %60, i8 3, i8 2
  br label %62

62:                                               ; preds = %58, %54, %51
  %63 = phi i8 [ 4, %51 ], [ %61, %58 ], [ 1, %54 ]
  store i8 %46, ptr %23, align 4
  store i8 %63, ptr %27, align 2
  br label %64

64:                                               ; preds = %62, %24
  %65 = tail call i32 @genphy_read_lpa(ptr noundef %0)
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %93, label %67

67:                                               ; preds = %64
  %68 = load i16, ptr %2, align 8
  %69 = and i16 %68, 20480
  %70 = icmp eq i16 %69, 20480
  br i1 %70, label %71, label %72

71:                                               ; preds = %67
  tail call void @phy_resolve_aneg_linkmode(ptr noundef %0) #21
  br label %93

72:                                               ; preds = %67
  %73 = and i16 %68, 4096
  %74 = icmp eq i16 %73, 0
  br i1 %74, label %75, label %93

75:                                               ; preds = %72
  %76 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %77 = load ptr, ptr %76, align 8
  %78 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %79 = load i32, ptr %78, align 8
  %80 = tail call i32 @mdiobus_read(ptr noundef %77, i32 noundef %79, i32 noundef 0) #21
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %93, label %82

82:                                               ; preds = %75
  %83 = lshr i32 %80, 8
  %84 = and i32 %83, 1
  store i32 %84, ptr %18, align 4
  %85 = and i32 %80, 64
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %82
  store i32 1000, ptr %17, align 8
  br label %93

88:                                               ; preds = %82
  %89 = and i32 %80, 8192
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %92, label %91

91:                                               ; preds = %88
  store i32 100, ptr %17, align 8
  br label %93

92:                                               ; preds = %88
  store i32 10, ptr %17, align 8
  br label %93

93:                                               ; preds = %92, %91, %87, %75, %72, %71, %64, %45, %26, %6, %1
  %94 = phi i32 [ %4, %1 ], [ 0, %6 ], [ %65, %64 ], [ %80, %75 ], [ 0, %72 ], [ 0, %71 ], [ %49, %45 ], [ %32, %26 ], [ 0, %91 ], [ 0, %92 ], [ 0, %87 ]
  ret i32 %94
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_resolve_aneg_linkmode(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @genphy_c37_read_status(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 4
  %3 = load i16, ptr %2, align 8
  %4 = tail call i32 @genphy_update_link(ptr noundef %0)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %56

6:                                                ; preds = %1
  %7 = load i16, ptr %2, align 8
  %8 = and i16 %7, 4096
  %9 = icmp eq i16 %8, 0
  %10 = and i16 %3, 8192
  %11 = icmp eq i16 %10, 0
  %12 = select i1 %9, i1 true, i1 %11
  %13 = and i16 %7, 8192
  %14 = icmp eq i16 %13, 0
  %15 = select i1 %12, i1 true, i1 %14
  br i1 %15, label %16, label %56

16:                                               ; preds = %6
  %17 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 9
  store i32 255, ptr %17, align 4
  %18 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 11
  store i32 0, ptr %18, align 4
  %19 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 12
  store i32 0, ptr %19, align 8
  %20 = and i16 %7, 20480
  %21 = icmp eq i16 %20, 20480
  br i1 %21, label %22, label %45

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %24 = load ptr, ptr %23, align 8
  %25 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %26 = load i32, ptr %25, align 8
  %27 = tail call i32 @mdiobus_read(ptr noundef %24, i32 noundef %26, i32 noundef 5) #21
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %56, label %29

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 18
  %31 = load i32, ptr %30, align 4
  %32 = and i32 %31, -24641
  %33 = lshr i32 %27, 8
  %34 = and i32 %33, 64
  %35 = or i32 %32, %34
  %36 = getelementptr %struct.phy_device, ptr %0, i32 0, i32 18, i32 1
  %37 = load i32, ptr %36, align 4
  %38 = and i32 %37, -513
  %39 = shl i32 %27, 4
  %40 = and i32 %39, 512
  %41 = or i32 %38, %40
  store i32 %41, ptr %36, align 4
  %42 = shl i32 %27, 6
  %43 = and i32 %42, 24576
  %44 = or i32 %43, %35
  store i32 %44, ptr %30, align 4
  tail call void @phy_resolve_aneg_linkmode(ptr noundef %0) #21
  br label %56

45:                                               ; preds = %16
  br i1 %9, label %46, label %56

46:                                               ; preds = %45
  %47 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %48 = load ptr, ptr %47, align 8
  %49 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %50 = load i32, ptr %49, align 8
  %51 = tail call i32 @mdiobus_read(ptr noundef %48, i32 noundef %50, i32 noundef 0) #21
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %46
  %54 = lshr i32 %51, 8
  %55 = and i32 %54, 1
  store i32 %55, ptr %17, align 4
  br label %56

56:                                               ; preds = %53, %46, %45, %29, %22, %6, %1
  %57 = phi i32 [ %4, %1 ], [ 0, %6 ], [ %27, %22 ], [ 0, %53 ], [ 0, %45 ], [ 0, %29 ], [ %51, %46 ]
  ret i32 %57
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @genphy_soft_reset(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 4
  %3 = load i16, ptr %2, align 8
  %4 = and i16 %3, 4096
  %5 = icmp eq i16 %4, 0
  %6 = select i1 %5, i16 -32768, i16 -32256
  %7 = tail call i32 @phy_modify(ptr noundef %0, i32 noundef 0, i16 noundef zeroext 1024, i16 noundef zeroext %6) #21
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %63, label %9

9:                                                ; preds = %1
  %10 = load i16, ptr %2, align 8
  %11 = and i16 %10, -33
  store i16 %11, ptr %2, align 8
  %12 = tail call i64 @ktime_get() #21
  %13 = add i64 %12, 600000000
  tail call void @usleep_range_state(i32 noundef 12501, i32 noundef 50000, i32 noundef 2) #21
  %14 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %15 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %16 = load ptr, ptr %14, align 8
  %17 = load i32, ptr %15, align 8
  %18 = tail call i32 @mdiobus_read(ptr noundef %16, i32 noundef %17, i32 noundef 0) #21
  %19 = and i32 %18, -2147450880
  %20 = icmp eq i32 %19, 32768
  br i1 %20, label %21, label %35

21:                                               ; preds = %29, %9
  %22 = tail call i64 @ktime_get() #21
  %23 = icmp sgt i64 %22, %13
  br i1 %23, label %24, label %29

24:                                               ; preds = %21
  %25 = load ptr, ptr %14, align 8
  %26 = load i32, ptr %15, align 8
  %27 = tail call i32 @mdiobus_read(ptr noundef %25, i32 noundef %26, i32 noundef 0) #21
  %28 = and i32 %27, -2147450880
  br label %35

29:                                               ; preds = %21
  tail call void @usleep_range_state(i32 noundef 12501, i32 noundef 50000, i32 noundef 2) #21
  %30 = load ptr, ptr %14, align 8
  %31 = load i32, ptr %15, align 8
  %32 = tail call i32 @mdiobus_read(ptr noundef %30, i32 noundef %31, i32 noundef 0) #21
  %33 = and i32 %32, -2147450880
  %34 = icmp eq i32 %33, 32768
  br i1 %34, label %21, label %35

35:                                               ; preds = %29, %24, %9
  %36 = phi i32 [ %19, %9 ], [ %28, %24 ], [ %33, %29 ]
  %37 = phi i32 [ %18, %9 ], [ %27, %24 ], [ %32, %29 ]
  %38 = icmp slt i32 %37, 0
  %39 = icmp eq i32 %36, 32768
  %40 = select i1 %39, i32 -110, i32 0
  %41 = select i1 %38, i32 %37, i32 %40
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %35
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.25, ptr noundef nonnull @__func__.phy_poll_reset, i32 noundef %41) #23
  br label %63

44:                                               ; preds = %35
  tail call void @msleep(i32 noundef 1) #21
  %45 = load i16, ptr %2, align 8
  %46 = and i16 %45, 4096
  %47 = icmp eq i16 %46, 0
  br i1 %47, label %48, label %63

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 11
  store i32 0, ptr %49, align 4
  %50 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 12
  store i32 0, ptr %50, align 8
  %51 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 8
  %52 = load i32, ptr %51, align 8
  %53 = icmp eq i32 %52, 100
  %54 = select i1 %53, i16 8192, i16 0
  %55 = icmp eq i32 %52, 1000
  %56 = select i1 %55, i16 64, i16 %54
  %57 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 9
  %58 = load i32, ptr %57, align 4
  %59 = icmp eq i32 %58, 1
  %60 = or i16 %56, 256
  %61 = select i1 %59, i16 %60, i16 %56
  %62 = tail call i32 @phy_modify(ptr noundef %0, i32 noundef 0, i16 noundef zeroext -19457, i16 noundef zeroext %61) #21
  br label %63

63:                                               ; preds = %48, %44, %43, %1
  %64 = phi i32 [ %7, %1 ], [ %41, %43 ], [ %62, %48 ], [ 0, %44 ]
  ret i32 %64
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @genphy_handle_interrupt_no_ack(ptr noundef %0) #0 {
  tail call void @phy_trigger_machine(ptr noundef %0) #21
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_trigger_machine(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @genphy_read_abilities(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 16
  %3 = load i32, ptr %2, align 4
  %4 = or i32 %3, 704
  store i32 %4, ptr %2, align 4
  %5 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %8 = load i32, ptr %7, align 8
  %9 = tail call i32 @mdiobus_read(ptr noundef %6, i32 noundef %8, i32 noundef 1) #21
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %42, label %11

11:                                               ; preds = %1
  %12 = load i32, ptr %2, align 4
  %13 = and i32 %12, -80
  %14 = shl i32 %9, 3
  %15 = and i32 %14, 64
  %16 = or i32 %13, %15
  %17 = lshr i32 %9, 11
  %18 = and i32 %17, 15
  %19 = or i32 %18, %16
  store i32 %19, ptr %2, align 4
  %20 = and i32 %9, 256
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %42, label %22

22:                                               ; preds = %11
  %23 = load ptr, ptr %5, align 8
  %24 = load i32, ptr %7, align 8
  %25 = tail call i32 @mdiobus_read(ptr noundef %23, i32 noundef %24, i32 noundef 15) #21
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %42, label %27

27:                                               ; preds = %22
  %28 = load i32, ptr %2, align 4
  %29 = and i32 %28, -49
  %30 = lshr i32 %25, 8
  %31 = and i32 %30, 32
  %32 = or i32 %29, %31
  %33 = lshr i32 %25, 8
  %34 = and i32 %33, 16
  %35 = or i32 %32, %34
  store i32 %35, ptr %2, align 4
  %36 = getelementptr %struct.phy_device, ptr %0, i32 0, i32 16, i32 1
  %37 = load i32, ptr %36, align 4
  %38 = and i32 %37, -513
  %39 = lshr i32 %25, 6
  %40 = and i32 %39, 512
  %41 = or i32 %38, %40
  store i32 %41, ptr %36, align 4
  br label %42

42:                                               ; preds = %27, %22, %11, %1
  %43 = phi i32 [ %9, %1 ], [ %25, %22 ], [ 0, %27 ], [ 0, %11 ]
  ret i32 %43
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @genphy_read_mmd_unsupported(ptr nocapture readnone %0, i32 %1, i16 zeroext %2) #12 {
  ret i32 -95
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @genphy_write_mmd_unsupported(ptr nocapture readnone %0, i32 %1, i16 zeroext %2, i16 zeroext %3) #12 {
  ret i32 -95
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @genphy_suspend(ptr noundef %0) #0 {
  %2 = tail call i32 @phy_modify(ptr noundef %0, i32 noundef 0, i16 noundef zeroext 0, i16 noundef zeroext 2048) #21
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @genphy_resume(ptr noundef %0) #0 {
  %2 = tail call i32 @phy_modify(ptr noundef %0, i32 noundef 0, i16 noundef zeroext 2048, i16 noundef zeroext 0) #21
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_config_aneg(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @phy_remove_link_mode(ptr noundef %0, i32 noundef %1) #13 {
  %3 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 16
  %4 = and i32 %1, 31
  %5 = shl nuw i32 1, %4
  %6 = lshr i32 %1, 5
  %7 = getelementptr i32, ptr %3, i32 %6
  %8 = xor i32 %5, -1
  %9 = load i32, ptr %7, align 4
  %10 = and i32 %9, %8
  store i32 %10, ptr %7, align 4
  %11 = load i32, ptr %3, align 4
  %12 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 16, i32 1
  %13 = load i64, ptr %12, align 4
  %14 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 17
  %15 = load volatile i32, ptr %14, align 4
  %16 = and i32 %15, 16384
  %17 = and i32 %11, -24577
  %18 = or i32 %16, %17
  %19 = load volatile i32, ptr %14, align 4
  %20 = and i32 %19, 8192
  %21 = or i32 %18, %20
  store i32 %21, ptr %14, align 4
  %22 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 17, i32 1
  store i64 %13, ptr %22, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @phy_advertise_supported(ptr noundef %0) #14 {
  %2 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 16
  %3 = load i32, ptr %2, align 4
  %4 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 16, i32 1
  %5 = load i64, ptr %4, align 4
  %6 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 17
  %7 = load volatile i32, ptr %6, align 4
  %8 = and i32 %7, 16384
  %9 = and i32 %3, -24577
  %10 = or i32 %8, %9
  %11 = load volatile i32, ptr %6, align 4
  %12 = and i32 %11, 8192
  %13 = or i32 %10, %12
  store i32 %13, ptr %6, align 4
  %14 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 17, i32 1
  store i64 %5, ptr %14, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @phy_support_sym_pause(ptr noundef %0) #13 {
  %2 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 16
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, -16385
  store i32 %4, ptr %2, align 4
  %5 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 17
  %6 = load volatile i32, ptr %2, align 4
  %7 = and i32 %6, 16384
  %8 = load i32, ptr %5, align 4
  %9 = and i32 %8, -24577
  %10 = or i32 %9, %7
  %11 = load volatile i32, ptr %2, align 4
  %12 = and i32 %11, 8192
  %13 = or i32 %12, %10
  store i32 %13, ptr %5, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @phy_support_asym_pause(ptr noundef %0) #13 {
  %2 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 17
  %3 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 16
  %4 = load volatile i32, ptr %3, align 4
  %5 = and i32 %4, 16384
  %6 = load i32, ptr %2, align 4
  %7 = and i32 %6, -24577
  %8 = or i32 %7, %5
  %9 = load volatile i32, ptr %3, align 4
  %10 = and i32 %9, 8192
  %11 = or i32 %10, %8
  store i32 %11, ptr %2, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @phy_set_sym_pause(ptr nocapture noundef %0, i1 noundef zeroext %1, i1 noundef zeroext %2, i1 noundef zeroext %3) #15 {
  %5 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 16
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, -8193
  %8 = and i1 %1, %2
  %9 = and i1 %8, %3
  %10 = select i1 %9, i32 8192, i32 0
  %11 = or i32 %7, %10
  store i32 %11, ptr %5, align 4
  %12 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 17
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(12) %12, ptr noundef align 4 dereferenceable(12) %5, i32 12, i1 false) #21
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @phy_set_asym_pause(ptr noundef %0, i1 noundef zeroext %1, i1 noundef zeroext %2) #0 {
  %4 = alloca [3 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #21
  %5 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 17
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %4, ptr noundef align 4 dereferenceable(12) %5, i32 12, i1 false) #21
  tail call void @linkmode_set_pause(ptr noundef %5, i1 noundef zeroext %2, i1 noundef zeroext %1) #21
  %6 = call i32 @__bitmap_equal(ptr noundef nonnull %4, ptr noundef %5, i32 noundef 92) #21
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %15

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 4
  %10 = load i16, ptr %9, align 8
  %11 = and i16 %10, 4096
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %8
  %14 = call i32 @phy_start_aneg(ptr noundef %0) #21
  br label %15

15:                                               ; preds = %13, %8, %3
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @linkmode_set_pause(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_start_aneg(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @phy_validate_pause(ptr noundef %0, ptr nocapture noundef readonly %1) #13 {
  %3 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 16
  %4 = load volatile i32, ptr %3, align 4
  %5 = and i32 %4, 8192
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.ethtool_pauseparam, ptr %1, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %22

11:                                               ; preds = %7, %2
  %12 = load volatile i32, ptr %3, align 4
  %13 = and i32 %12, 16384
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.ethtool_pauseparam, ptr %1, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.ethtool_pauseparam, ptr %1, i32 0, i32 3
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %17, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %15, %11
  br label %22

22:                                               ; preds = %21, %15, %7
  %23 = phi i1 [ true, %21 ], [ false, %7 ], [ false, %15 ]
  ret i1 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @phy_get_pause(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 9
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  store i8 0, ptr %1, align 1
  store i8 0, ptr %2, align 1
  br label %11

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 17
  %10 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 18
  tail call void @linkmode_resolve_pause(ptr noundef %9, ptr noundef %10, ptr noundef %1, ptr noundef %2) #21
  br label %11

11:                                               ; preds = %8, %7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @linkmode_resolve_pause(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @phy_get_internal_delay(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i1 noundef zeroext %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  br i1 %4, label %8, label %22

8:                                                ; preds = %5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #21
  store i32 0, ptr %7, align 4, !annotation !8
  %9 = call i32 @device_property_read_u32_array(ptr noundef %1, ptr noundef nonnull @.str.26, ptr noundef nonnull %7, i32 noundef 1) #21
  %10 = icmp eq i32 %9, 0
  %11 = load i32, ptr %7, align 4
  %12 = select i1 %10, i32 %11, i32 %9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #21
  %13 = icmp slt i32 %12, 0
  %14 = icmp eq i32 %3, 0
  %15 = and i1 %14, %13
  br i1 %15, label %16, label %37

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 7
  %18 = load i32, ptr %17, align 4
  %19 = and i32 %18, -2
  %20 = icmp eq i32 %19, 10
  %21 = zext i1 %20 to i32
  br label %78

22:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #21
  store i32 0, ptr %6, align 4, !annotation !8
  %23 = call i32 @device_property_read_u32_array(ptr noundef %1, ptr noundef nonnull @.str.27, ptr noundef nonnull %6, i32 noundef 1) #21
  %24 = icmp eq i32 %23, 0
  %25 = load i32, ptr %6, align 4
  %26 = select i1 %24, i32 %25, i32 %23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #21
  %27 = icmp slt i32 %26, 0
  %28 = icmp eq i32 %3, 0
  %29 = and i1 %28, %27
  br i1 %29, label %30, label %37

30:                                               ; preds = %22
  %31 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 7
  %32 = load i32, ptr %31, align 4
  %33 = add i32 %32, -10
  %34 = and i32 %33, -3
  %35 = icmp eq i32 %34, 0
  %36 = zext i1 %35 to i32
  br label %78

37:                                               ; preds = %22, %8
  %38 = phi i32 [ %12, %8 ], [ %26, %22 ]
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %78, label %40

40:                                               ; preds = %37
  %41 = icmp ne i32 %38, 0
  %42 = icmp eq i32 %3, 0
  %43 = and i1 %42, %41
  br i1 %43, label %78, label %44

44:                                               ; preds = %40
  %45 = load i32, ptr %2, align 4
  %46 = icmp slt i32 %38, %45
  br i1 %46, label %52, label %47

47:                                               ; preds = %44
  %48 = add i32 %3, -1
  %49 = getelementptr i32, ptr %2, i32 %48
  %50 = load i32, ptr %49, align 4
  %51 = icmp sgt i32 %38, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %47, %44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.28, i32 noundef %38) #23
  br label %78

53:                                               ; preds = %47
  %54 = icmp eq i32 %38, %45
  br i1 %54, label %78, label %55

55:                                               ; preds = %53
  %56 = icmp sgt i32 %3, 1
  br i1 %56, label %57, label %77

57:                                               ; preds = %74, %55
  %58 = phi i32 [ %75, %74 ], [ 1, %55 ]
  %59 = getelementptr i32, ptr %2, i32 %58
  %60 = load i32, ptr %59, align 4
  %61 = icmp eq i32 %60, %38
  br i1 %61, label %78, label %62

62:                                               ; preds = %57
  %63 = add nsw i32 %58, -1
  %64 = getelementptr i32, ptr %2, i32 %63
  %65 = load i32, ptr %64, align 4
  %66 = icmp sgt i32 %38, %65
  %67 = icmp sgt i32 %60, %38
  %68 = select i1 %66, i1 %67, i1 false
  br i1 %68, label %69, label %74

69:                                               ; preds = %62
  %70 = sub i32 %38, %65
  %71 = sub i32 %60, %38
  %72 = icmp slt i32 %70, %71
  %73 = select i1 %72, i32 %63, i32 %58
  br label %78

74:                                               ; preds = %62
  %75 = add nuw nsw i32 %58, 1
  %76 = icmp eq i32 %75, %3
  br i1 %76, label %77, label %57

77:                                               ; preds = %74, %55
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.29, i32 noundef %38) #23
  br label %78

78:                                               ; preds = %77, %69, %57, %53, %52, %40, %37, %30, %16
  %79 = phi i32 [ -22, %52 ], [ -22, %77 ], [ %38, %37 ], [ %38, %40 ], [ 0, %53 ], [ %73, %69 ], [ %21, %16 ], [ %36, %30 ], [ %58, %57 ]
  ret i32 %79
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @fwnode_mdio_find_device(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = tail call ptr @bus_find_device(ptr noundef nonnull @mdio_bus_type, ptr noundef null, ptr noundef nonnull %0, ptr noundef nonnull @device_match_fwnode) #21
  br label %5

5:                                                ; preds = %3, %1
  %6 = phi ptr [ null, %1 ], [ %4, %3 ]
  ret ptr %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @fwnode_phy_find_device(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %12, label %3

3:                                                ; preds = %1
  %4 = tail call ptr @bus_find_device(ptr noundef nonnull @mdio_bus_type, ptr noundef null, ptr noundef nonnull %0, ptr noundef nonnull @device_match_fwnode) #21
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.mdio_device, ptr %4, i32 0, i32 7
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %6
  tail call void @put_device(ptr noundef nonnull %4) #21
  br label %12

12:                                               ; preds = %11, %6, %3, %1
  %13 = phi ptr [ null, %11 ], [ null, %3 ], [ %4, %6 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @device_phy_find_device(ptr noundef %0) #0 {
  %2 = tail call ptr @dev_fwnode(ptr noundef %0) #21
  %3 = icmp eq ptr %2, null
  br i1 %3, label %13, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @bus_find_device(ptr noundef nonnull @mdio_bus_type, ptr noundef null, ptr noundef nonnull %2, ptr noundef nonnull @device_match_fwnode) #21
  %6 = icmp eq ptr %5, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.mdio_device, ptr %5, i32 0, i32 7
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  tail call void @put_device(ptr noundef nonnull %5) #21
  br label %13

13:                                               ; preds = %12, %7, %4, %1
  %14 = phi ptr [ null, %12 ], [ null, %4 ], [ %5, %7 ], [ null, %1 ]
  ret ptr %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_fwnode(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @fwnode_get_phy_node(ptr noundef %0) #0 {
  %2 = tail call ptr @fwnode_find_reference(ptr noundef %0, ptr noundef nonnull @.str.30, i32 noundef 0) #21
  %3 = icmp ugt ptr %2, inttoptr (i32 -4096 to ptr)
  br i1 %3, label %4, label %9

4:                                                ; preds = %1
  %5 = tail call ptr @fwnode_find_reference(ptr noundef %0, ptr noundef nonnull @.str.31, i32 noundef 0) #21
  %6 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %6, label %7, label %9

7:                                                ; preds = %4
  %8 = tail call ptr @fwnode_find_reference(ptr noundef %0, ptr noundef nonnull @.str.32, i32 noundef 0) #21
  br label %9

9:                                                ; preds = %7, %4, %1
  %10 = phi ptr [ %2, %1 ], [ %8, %7 ], [ %5, %4 ]
  ret ptr %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fwnode_find_reference(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @phy_driver_register(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.phy_driver, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.phy_driver, ptr %0, i32 0, i32 10
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10, !prof !13

10:                                               ; preds = %6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.33, i32 noundef 3146, i32 noundef 9, ptr noundef null) #21
  %11 = getelementptr inbounds %struct.phy_driver, ptr %0, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef %12) #23
  br label %38

14:                                               ; preds = %6, %2
  %15 = getelementptr inbounds %struct.device_driver, ptr %0, i32 0, i32 6
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %21, label %18, !prof !13

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.phy_driver, ptr %0, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.33, i32 noundef 3159, i32 noundef 9, ptr noundef nonnull @.str.35, ptr noundef %20) #21
  br label %38

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.mdio_driver_common, ptr %0, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = or i32 %23, -2147483648
  store i32 %24, ptr %22, align 4
  %25 = getelementptr inbounds %struct.phy_driver, ptr %0, i32 0, i32 2
  %26 = load ptr, ptr %25, align 4
  store ptr %26, ptr %0, align 4
  %27 = getelementptr inbounds %struct.device_driver, ptr %0, i32 0, i32 1
  store ptr @mdio_bus_type, ptr %27, align 4
  %28 = getelementptr inbounds %struct.device_driver, ptr %0, i32 0, i32 8
  store ptr @phy_probe, ptr %28, align 4
  %29 = getelementptr inbounds %struct.device_driver, ptr %0, i32 0, i32 10
  store ptr @phy_remove, ptr %29, align 4
  %30 = getelementptr inbounds %struct.device_driver, ptr %0, i32 0, i32 11
  store ptr @phy_shutdown, ptr %30, align 4
  %31 = getelementptr inbounds %struct.device_driver, ptr %0, i32 0, i32 2
  store ptr %1, ptr %31, align 4
  %32 = getelementptr inbounds %struct.device_driver, ptr %0, i32 0, i32 5
  store i32 2, ptr %32, align 4
  %33 = tail call i32 @driver_register(ptr noundef %0) #21
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %21
  %36 = load ptr, ptr %25, align 4
  %37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef %36, i32 noundef %33) #23
  br label %38

38:                                               ; preds = %35, %21, %18, %10
  %39 = phi i32 [ -22, %10 ], [ -22, %18 ], [ %33, %35 ], [ 0, %21 ]
  ret i32 %39
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @phy_probe(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 1
  store ptr %3, ptr %4, align 8
  %5 = getelementptr inbounds %struct.phy_driver, ptr %3, i32 0, i32 16
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.phy_driver, ptr %3, i32 0, i32 17
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %8, %1
  %13 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 21
  %14 = load i32, ptr %13, align 4
  %15 = icmp ult i32 %14, -2
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  store i32 -1, ptr %13, align 4
  br label %17

17:                                               ; preds = %16, %12, %8
  %18 = getelementptr inbounds %struct.phy_driver, ptr %3, i32 0, i32 5
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %19, 1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 4
  %24 = load i16, ptr %23, align 8
  %25 = or i16 %24, 2
  store i16 %25, ptr %23, align 8
  br label %26

26:                                               ; preds = %22, %17
  %27 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 28
  tail call void @mutex_lock(ptr noundef %27) #21
  tail call void @mdio_device_reset(ptr noundef %0, i32 noundef 0) #21
  %28 = load ptr, ptr %4, align 8
  %29 = getelementptr inbounds %struct.phy_driver, ptr %28, i32 0, i32 9
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %26
  %33 = tail call i32 %30(ptr noundef %0) #21
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %108

35:                                               ; preds = %32, %26
  %36 = getelementptr inbounds %struct.phy_driver, ptr %3, i32 0, i32 4
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %41, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 16
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(12) %40, ptr noundef nonnull align 4 dereferenceable(12) %37, i32 12, i1 false) #21
  br label %59

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.phy_driver, ptr %3, i32 0, i32 10
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %47, label %45

45:                                               ; preds = %41
  %46 = tail call i32 %43(ptr noundef %0) #21
  br label %56

47:                                               ; preds = %41
  %48 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 4
  %49 = load i16, ptr %48, align 8
  %50 = and i16 %49, 1
  %51 = icmp eq i16 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %47
  %53 = tail call i32 @genphy_c45_pma_read_abilities(ptr noundef %0) #21
  br label %56

54:                                               ; preds = %47
  %55 = tail call i32 @genphy_read_abilities(ptr noundef %0)
  br label %56

56:                                               ; preds = %54, %52, %45
  %57 = phi i32 [ %46, %45 ], [ %53, %52 ], [ %55, %54 ]
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %108

59:                                               ; preds = %56, %39
  %60 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 16
  %61 = load volatile i32, ptr %60, align 4
  %62 = and i32 %61, 64
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %59
  %65 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 4
  %66 = load i16, ptr %65, align 8
  %67 = and i16 %66, -4097
  store i16 %67, ptr %65, align 8
  br label %68

68:                                               ; preds = %64, %59
  %69 = load volatile i32, ptr %60, align 4
  %70 = and i32 %69, 16
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 4
  %74 = load i16, ptr %73, align 8
  %75 = or i16 %74, 8
  store i16 %75, ptr %73, align 8
  br label %76

76:                                               ; preds = %72, %68
  %77 = load volatile i32, ptr %60, align 4
  %78 = and i32 %77, 32
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %84, label %80

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 4
  %82 = load i16, ptr %81, align 8
  %83 = or i16 %82, 8
  store i16 %83, ptr %81, align 8
  br label %84

84:                                               ; preds = %80, %76
  tail call void @of_set_phy_supported(ptr noundef %0) #21
  %85 = load i32, ptr %60, align 4
  %86 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 16, i32 1
  %87 = load i64, ptr %86, align 4
  %88 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 17
  %89 = load volatile i32, ptr %88, align 4
  %90 = and i32 %89, 16384
  %91 = and i32 %85, -24577
  %92 = or i32 %90, %91
  %93 = load volatile i32, ptr %88, align 4
  %94 = and i32 %93, 8192
  %95 = or i32 %92, %94
  store i32 %95, ptr %88, align 4
  %96 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 17, i32 1
  store i64 %87, ptr %96, align 4
  tail call void @of_set_phy_eee_broken(ptr noundef %0) #21
  %97 = load volatile i32, ptr %60, align 4
  %98 = and i32 %97, 8192
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %84
  %101 = load volatile i32, ptr %60, align 4
  %102 = and i32 %101, 16384
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %100
  %105 = or i32 %101, 24576
  store i32 %105, ptr %60, align 4
  br label %106

106:                                              ; preds = %104, %100, %84
  %107 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 5
  store i32 1, ptr %107, align 4
  br label %110

108:                                              ; preds = %56, %32
  %109 = phi i32 [ %57, %56 ], [ %33, %32 ]
  tail call void @mdio_device_reset(ptr noundef %0, i32 noundef 1) #21
  br label %110

110:                                              ; preds = %108, %106
  %111 = phi i32 [ %109, %108 ], [ 0, %106 ]
  tail call void @mutex_unlock(ptr noundef %27) #21
  ret i32 %111
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @phy_remove(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 27
  %3 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %2) #21
  %4 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 28
  tail call void @mutex_lock(ptr noundef %4) #21
  %5 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 5
  store i32 0, ptr %5, align 4
  tail call void @mutex_unlock(ptr noundef %4) #21
  %6 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 30
  store ptr null, ptr %6, align 8
  %7 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.phy_driver, ptr %8, i32 0, i32 18
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void %12(ptr noundef %0) #21
  br label %15

15:                                               ; preds = %14, %10, %1
  tail call void @mdio_device_reset(ptr noundef %0, i32 noundef 1) #21
  store ptr null, ptr %7, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @phy_shutdown(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 5
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 1
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 32
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  %10 = tail call i32 @phy_disable_interrupts(ptr noundef %0) #21
  br label %11

11:                                               ; preds = %9, %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @driver_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @phy_drivers_register(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = icmp sgt i32 %1, 0
  br i1 %4, label %5, label %20

5:                                                ; preds = %17, %3
  %6 = phi i32 [ %18, %17 ], [ 0, %3 ]
  %7 = getelementptr %struct.phy_driver, ptr %0, i32 %6
  %8 = tail call i32 @phy_driver_register(ptr noundef %7, ptr noundef %2)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %17, label %10

10:                                               ; preds = %5
  %11 = icmp eq i32 %6, 0
  br i1 %11, label %20, label %12

12:                                               ; preds = %12, %10
  %13 = phi i32 [ %14, %12 ], [ %6, %10 ]
  %14 = add nsw i32 %13, -1
  %15 = getelementptr %struct.phy_driver, ptr %0, i32 %14
  tail call void @driver_unregister(ptr noundef %15) #21
  %16 = icmp sgt i32 %13, 1
  br i1 %16, label %12, label %20

17:                                               ; preds = %5
  %18 = add nuw nsw i32 %6, 1
  %19 = icmp eq i32 %18, %1
  br i1 %19, label %20, label %5

20:                                               ; preds = %17, %12, %10, %3
  %21 = phi i32 [ %8, %10 ], [ 0, %3 ], [ %8, %12 ], [ 0, %17 ]
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @phy_driver_unregister(ptr noundef %0) #0 {
  tail call void @driver_unregister(ptr noundef %0) #21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @phy_drivers_unregister(ptr noundef %0, i32 noundef %1) #0 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %9

4:                                                ; preds = %4, %2
  %5 = phi i32 [ %7, %4 ], [ 0, %2 ]
  %6 = getelementptr %struct.phy_driver, ptr %0, i32 %5
  tail call void @driver_unregister(ptr noundef %6) #21
  %7 = add nuw nsw i32 %5, 1
  %8 = icmp eq i32 %7, %1
  br i1 %8, label %9, label %4

9:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @phy_exit() #16 section ".exit.text" {
  tail call void @driver_unregister(ptr noundef nonnull @genphy_c45_driver) #21
  tail call void @driver_unregister(ptr noundef nonnull @genphy_driver) #21
  tail call void @mdio_bus_exit() #21
  tail call void @ethtool_set_ethtool_phy_ops(ptr noundef null) #21
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdio_bus_exit() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ethtool_set_ethtool_phy_ops(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @phy_init() #16 section ".init.text" {
  %1 = tail call i32 @mdio_bus_init() #23
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %30

3:                                                ; preds = %0
  tail call void @ethtool_set_ethtool_phy_ops(ptr noundef nonnull @phy_ethtool_phy_ops) #21
  %4 = load i32, ptr @phy_basic_features, align 4
  %5 = or i32 %4, 719
  store i32 %5, ptr @phy_basic_features, align 4
  %6 = load i32, ptr @phy_basic_t1_features, align 4
  %7 = or i32 %6, 128
  store i32 %7, ptr @phy_basic_t1_features, align 4
  %8 = load i32, ptr getelementptr inbounds ([3 x i32], ptr @phy_basic_t1_features, i32 0, i32 2), align 4
  %9 = or i32 %8, 8
  store i32 %9, ptr getelementptr inbounds ([3 x i32], ptr @phy_basic_t1_features, i32 0, i32 2), align 4
  %10 = load i32, ptr @phy_gbit_features, align 4
  %11 = or i32 %10, 767
  store i32 %11, ptr @phy_gbit_features, align 4
  %12 = load i32, ptr @phy_gbit_fibre_features, align 4
  %13 = or i32 %12, 1791
  store i32 %13, ptr @phy_gbit_fibre_features, align 4
  %14 = load i32, ptr @phy_gbit_all_ports_features, align 4
  %15 = or i32 %14, 69631
  store i32 %15, ptr @phy_gbit_all_ports_features, align 4
  %16 = load i32, ptr @phy_10gbit_features, align 4
  %17 = or i32 %16, 73727
  store i32 %17, ptr @phy_10gbit_features, align 4
  %18 = load i32, ptr @phy_10gbit_full_features, align 4
  %19 = or i32 %18, 73706
  store i32 %19, ptr @phy_10gbit_full_features, align 4
  %20 = load i32, ptr @phy_10gbit_fec_features, align 4
  %21 = or i32 %20, 1048576
  store i32 %21, ptr @phy_10gbit_fec_features, align 4
  %22 = tail call i32 @phy_driver_register(ptr noundef nonnull @genphy_c45_driver, ptr noundef null)
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %3
  %25 = tail call i32 @phy_driver_register(ptr noundef nonnull @genphy_driver, ptr noundef null)
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %24
  tail call void @driver_unregister(ptr noundef nonnull @genphy_c45_driver) #21
  br label %28

28:                                               ; preds = %27, %3
  %29 = phi i32 [ %22, %3 ], [ %25, %27 ]
  tail call void @mdio_bus_exit() #21
  br label %30

30:                                               ; preds = %28, %24, %0
  %31 = phi i32 [ %1, %0 ], [ %29, %28 ], [ 0, %24 ]
  ret i32 %31
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #17

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #18

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @phy_device_release(ptr noundef %0) #0 {
  tail call void @kfree(ptr noundef %0) #21
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @phy_id_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #19 {
  %4 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.39, i32 noundef %5)
  ret i32 %6
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @phy_interface_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #19 {
  %4 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 4
  %5 = load i16, ptr %4, align 8
  %6 = and i16 %5, 2
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %8, label %15

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 7
  %10 = load i32, ptr %9, align 4
  %11 = icmp ult i32 %10, 30
  br i1 %11, label %12, label %15

12:                                               ; preds = %8
  %13 = getelementptr inbounds [30 x ptr], ptr @switch.table.phy_interface_show, i32 0, i32 %10
  %14 = load ptr, ptr %13, align 4
  br label %15

15:                                               ; preds = %12, %8, %3
  %16 = phi ptr [ @.str.41, %3 ], [ %14, %12 ], [ @.str.71, %8 ]
  %17 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.42, ptr noundef nonnull %16)
  ret i32 %17
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @phy_has_fixups_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #19 {
  %4 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 4
  %5 = load i16, ptr %4, align 8
  %6 = lshr i16 %5, 4
  %7 = and i16 %6, 1
  %8 = zext i16 %7 to i32
  %9 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.73, i32 noundef %8)
  ret i32 %9
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @phy_dev_flags_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #19 {
  %4 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 6
  %5 = load i32, ptr %4, align 8
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.75, i32 noundef %5)
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mdio_bus_phy_suspend(ptr noundef %0) #0 {
  %2 = alloca %struct.ethtool_wolinfo, align 4
  %3 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 4
  %4 = load i16, ptr %3, align 8
  %5 = and i16 %4, 2048
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %7, label %86

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 32
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %17, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 37
  %13 = load ptr, ptr %12, align 8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  tail call void @phy_stop_machine(ptr noundef %0) #21
  %16 = load ptr, ptr %8, align 8
  br label %17

17:                                               ; preds = %15, %11, %7
  %18 = phi ptr [ null, %7 ], [ %9, %11 ], [ %16, %15 ]
  %19 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 6
  %20 = load ptr, ptr %19, align 8
  %21 = icmp eq ptr %20, null
  br i1 %21, label %86, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.phy_driver, ptr %20, i32 0, i32 11
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %86, label %26

26:                                               ; preds = %22
  %27 = icmp eq ptr %18, null
  br i1 %27, label %55, label %28

28:                                               ; preds = %26
  %29 = getelementptr inbounds %struct.net_device, ptr %18, i32 0, i32 124
  %30 = load i8, ptr %29, align 1
  %31 = and i8 %30, 1
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %86

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.net_device, ptr %18, i32 0, i32 111, i32 1
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %46, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.device, ptr %35, i32 0, i32 11, i32 1
  %39 = load i16, ptr %38, align 4
  %40 = and i16 %39, 1
  %41 = icmp eq i16 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.device, ptr %35, i32 0, i32 11, i32 6
  %44 = load ptr, ptr %43, align 8
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %86

46:                                               ; preds = %42, %37, %33
  %47 = getelementptr inbounds %struct.net_device, ptr %18, i32 0, i32 111, i32 11, i32 1
  %48 = load i16, ptr %47, align 4
  %49 = and i16 %48, 1
  %50 = icmp eq i16 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.net_device, ptr %18, i32 0, i32 111, i32 11, i32 6
  %53 = load ptr, ptr %52, align 8
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %86

55:                                               ; preds = %51, %46, %26
  %56 = load i16, ptr %3, align 8
  %57 = and i16 %56, 32
  %58 = icmp eq i16 %57, 0
  br i1 %58, label %59, label %86

59:                                               ; preds = %55
  %60 = or i16 %56, 64
  store i16 %60, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #21
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %2, ptr noundef nonnull align 4 dereferenceable(20) @__const.phy_suspend.wol, i32 20, i1 false) #21
  %61 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 1
  %62 = load ptr, ptr %61, align 8
  call void @phy_ethtool_get_wol(ptr noundef %0, ptr noundef nonnull %2) #21
  %63 = getelementptr inbounds %struct.ethtool_wolinfo, ptr %2, i32 0, i32 2
  %64 = load i32, ptr %63, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %84

66:                                               ; preds = %59
  br i1 %27, label %72, label %67

67:                                               ; preds = %66
  %68 = getelementptr inbounds %struct.net_device, ptr %18, i32 0, i32 124
  %69 = load i8, ptr %68, align 1
  %70 = and i8 %69, 1
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %72, label %84

72:                                               ; preds = %67, %66
  %73 = icmp eq ptr %62, null
  br i1 %73, label %84, label %74

74:                                               ; preds = %72
  %75 = getelementptr inbounds %struct.phy_driver, ptr %62, i32 0, i32 11
  %76 = load ptr, ptr %75, align 4
  %77 = icmp eq ptr %76, null
  br i1 %77, label %84, label %78

78:                                               ; preds = %74
  %79 = call i32 %76(ptr noundef %0) #21
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %78
  %82 = load i16, ptr %3, align 8
  %83 = or i16 %82, 32
  store i16 %83, ptr %3, align 8
  br label %84

84:                                               ; preds = %81, %78, %74, %72, %67, %59
  %85 = phi i32 [ -16, %67 ], [ -16, %59 ], [ 0, %74 ], [ 0, %72 ], [ 0, %81 ], [ %79, %78 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #21
  br label %86

86:                                               ; preds = %84, %55, %51, %42, %28, %22, %17, %1
  %87 = phi i32 [ %85, %84 ], [ 0, %1 ], [ 0, %55 ], [ 0, %22 ], [ 0, %17 ], [ 0, %28 ], [ 0, %42 ], [ 0, %51 ]
  ret i32 %87
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mdio_bus_phy_resume(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 4
  %3 = load i16, ptr %2, align 8
  %4 = and i16 %3, 2048
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %6, label %73

6:                                                ; preds = %1
  %7 = and i16 %3, 64
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %64, label %9

9:                                                ; preds = %6
  %10 = and i16 %3, -65
  store i16 %10, ptr %2, align 8
  tail call void @mdio_device_reset(ptr noundef %0, i32 noundef 0) #21
  %11 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 1
  %12 = load ptr, ptr %11, align 8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %47, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.phy_driver, ptr %12, i32 0, i32 7
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %26, label %18

18:                                               ; preds = %14
  %19 = tail call i32 %16(ptr noundef %0) #21
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i16, ptr %2, align 8
  %23 = and i16 %22, -33
  store i16 %23, ptr %2, align 8
  br label %26

24:                                               ; preds = %18
  %25 = icmp slt i32 %19, 0
  br i1 %25, label %73, label %26

26:                                               ; preds = %24, %21, %14
  %27 = tail call fastcc i32 @phy_scan_fixups(ptr noundef %0) #21
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %73, label %29

29:                                               ; preds = %26
  %30 = load ptr, ptr %11, align 8
  %31 = getelementptr inbounds %struct.phy_driver, ptr %30, i32 0, i32 8
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %39, label %34

34:                                               ; preds = %29
  %35 = tail call i32 %32(ptr noundef %0) #21
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %73, label %37

37:                                               ; preds = %34
  %38 = load ptr, ptr %11, align 8
  br label %39

39:                                               ; preds = %37, %29
  %40 = phi ptr [ %38, %37 ], [ %30, %29 ]
  %41 = getelementptr inbounds %struct.phy_driver, ptr %40, i32 0, i32 16
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %39
  %45 = tail call i32 %42(ptr noundef %0) #21
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %73, label %47

47:                                               ; preds = %44, %39, %9
  %48 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 28
  tail call void @mutex_lock(ptr noundef %48) #21
  %49 = load ptr, ptr %11, align 8
  %50 = icmp eq ptr %49, null
  br i1 %50, label %61, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.phy_driver, ptr %49, i32 0, i32 12
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %61, label %55

55:                                               ; preds = %51
  %56 = tail call i32 %53(ptr noundef %0) #21
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %55
  %59 = load i16, ptr %2, align 8
  %60 = and i16 %59, -33
  store i16 %60, ptr %2, align 8
  br label %61

61:                                               ; preds = %58, %51, %47
  tail call void @mutex_unlock(ptr noundef %48) #21
  br label %64

62:                                               ; preds = %55
  tail call void @mutex_unlock(ptr noundef %48) #21
  %63 = icmp slt i32 %56, 0
  br i1 %63, label %73, label %64

64:                                               ; preds = %62, %61, %6
  %65 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 32
  %66 = load ptr, ptr %65, align 8
  %67 = icmp eq ptr %66, null
  br i1 %67, label %73, label %68

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 37
  %70 = load ptr, ptr %69, align 8
  %71 = icmp eq ptr %70, null
  br i1 %71, label %73, label %72

72:                                               ; preds = %68
  tail call void @phy_start_machine(ptr noundef %0) #21
  br label %73

73:                                               ; preds = %72, %68, %64, %62, %44, %34, %26, %24, %1
  %74 = phi i32 [ 0, %1 ], [ %56, %62 ], [ 0, %72 ], [ 0, %68 ], [ 0, %64 ], [ %45, %44 ], [ %35, %34 ], [ %27, %26 ], [ %19, %24 ]
  ret i32 %74
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_stop_machine(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_start_machine(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdiobus_read(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdio_device_reset(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bus_find_device(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_match_name(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_link(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_link_nowarn(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_file_ns(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @phy_standalone_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #19 {
  %4 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 32
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  %7 = zext i1 %6 to i32
  %8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.73, i32 noundef %7)
  ret i32 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_file_ns(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_modify_changed(ptr noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_and(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_equal(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_match_fwnode(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_c45_pma_read_abilities(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_set_phy_supported(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_set_phy_eee_broken(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @mdio_bus_init() local_unnamed_addr #8 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_get_sset_count(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_get_strings(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_get_stats(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_start_cable_test(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_start_cable_test_tdr(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #20

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nofree null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind willreturn }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #16 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #17 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #18 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #19 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #20 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #21 = { nounwind }
attributes #22 = { nounwind allocsize(2) }
attributes #23 = { cold nounwind }
attributes #24 = { nounwind allocsize(0) }

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
!10 = !{i64 589970, i64 2148079941, i64 2148079967, i64 2148080014, i64 2148080036, i64 2148080064, i64 2148080084}
!11 = !{i64 2148093611, i64 2148093643, i64 2148093672, i64 2148093706, i64 2148093737, i64 2148093760}
!12 = !{!"branch_weights", i32 1, i32 2000}
!13 = !{!"branch_weights", i32 2000, i32 1}
