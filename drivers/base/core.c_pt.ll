; ModuleID = '/llk/IR/drivers/base/core.c_pt.bc'
source_filename = "../drivers/base/core.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fw_devlink_purge_absent_suppliers:\09\09\09\09\09"
module asm "\09.asciz \09\22fw_devlink_purge_absent_suppliers\22\09\09\09\09\09"
module asm "__kstrtabns_fw_devlink_purge_absent_suppliers:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_device_link_add:\09\09\09\09\09"
module asm "\09.asciz \09\22device_link_add\22\09\09\09\09\09"
module asm "__kstrtabns_device_link_add:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_device_link_del:\09\09\09\09\09"
module asm "\09.asciz \09\22device_link_del\22\09\09\09\09\09"
module asm "__kstrtabns_device_link_del:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_device_link_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22device_link_remove\22\09\09\09\09\09"
module asm "__kstrtabns_device_link_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dev_driver_string:\09\09\09\09\09"
module asm "\09.asciz \09\22dev_driver_string\22\09\09\09\09\09"
module asm "__kstrtabns_dev_driver_string:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_device_store_ulong:\09\09\09\09\09"
module asm "\09.asciz \09\22device_store_ulong\22\09\09\09\09\09"
module asm "__kstrtabns_device_store_ulong:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_device_show_ulong:\09\09\09\09\09"
module asm "\09.asciz \09\22device_show_ulong\22\09\09\09\09\09"
module asm "__kstrtabns_device_show_ulong:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_device_store_int:\09\09\09\09\09"
module asm "\09.asciz \09\22device_store_int\22\09\09\09\09\09"
module asm "__kstrtabns_device_store_int:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_device_show_int:\09\09\09\09\09"
module asm "\09.asciz \09\22device_show_int\22\09\09\09\09\09"
module asm "__kstrtabns_device_show_int:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_device_store_bool:\09\09\09\09\09"
module asm "\09.asciz \09\22device_store_bool\22\09\09\09\09\09"
module asm "__kstrtabns_device_store_bool:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_device_show_bool:\09\09\09\09\09"
module asm "\09.asciz \09\22device_show_bool\22\09\09\09\09\09"
module asm "__kstrtabns_device_show_bool:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_device_add_groups:\09\09\09\09\09"
module asm "\09.asciz \09\22device_add_groups\22\09\09\09\09\09"
module asm "__kstrtabns_device_add_groups:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_device_remove_groups:\09\09\09\09\09"
module asm "\09.asciz \09\22device_remove_groups\22\09\09\09\09\09"
module asm "__kstrtabns_device_remove_groups:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_device_add_group:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_device_add_group\22\09\09\09\09\09"
module asm "__kstrtabns_devm_device_add_group:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_device_remove_group:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_device_remove_group\22\09\09\09\09\09"
module asm "__kstrtabns_devm_device_remove_group:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_device_add_groups:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_device_add_groups\22\09\09\09\09\09"
module asm "__kstrtabns_devm_device_add_groups:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_device_remove_groups:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_device_remove_groups\22\09\09\09\09\09"
module asm "__kstrtabns_devm_device_remove_groups:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_device_create_file:\09\09\09\09\09"
module asm "\09.asciz \09\22device_create_file\22\09\09\09\09\09"
module asm "__kstrtabns_device_create_file:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_device_remove_file:\09\09\09\09\09"
module asm "\09.asciz \09\22device_remove_file\22\09\09\09\09\09"
module asm "__kstrtabns_device_remove_file:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_device_remove_file_self:\09\09\09\09\09"
module asm "\09.asciz \09\22device_remove_file_self\22\09\09\09\09\09"
module asm "__kstrtabns_device_remove_file_self:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_device_create_bin_file:\09\09\09\09\09"
module asm "\09.asciz \09\22device_create_bin_file\22\09\09\09\09\09"
module asm "__kstrtabns_device_create_bin_file:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_device_remove_bin_file:\09\09\09\09\09"
module asm "\09.asciz \09\22device_remove_bin_file\22\09\09\09\09\09"
module asm "__kstrtabns_device_remove_bin_file:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_device_initialize:\09\09\09\09\09"
module asm "\09.asciz \09\22device_initialize\22\09\09\09\09\09"
module asm "__kstrtabns_device_initialize:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dev_set_name:\09\09\09\09\09"
module asm "\09.asciz \09\22dev_set_name\22\09\09\09\09\09"
module asm "__kstrtabns_dev_set_name:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_device_add:\09\09\09\09\09"
module asm "\09.asciz \09\22device_add\22\09\09\09\09\09"
module asm "__kstrtabns_device_add:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_device_register:\09\09\09\09\09"
module asm "\09.asciz \09\22device_register\22\09\09\09\09\09"
module asm "__kstrtabns_device_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_get_device:\09\09\09\09\09"
module asm "\09.asciz \09\22get_device\22\09\09\09\09\09"
module asm "__kstrtabns_get_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_put_device:\09\09\09\09\09"
module asm "\09.asciz \09\22put_device\22\09\09\09\09\09"
module asm "__kstrtabns_put_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kill_device:\09\09\09\09\09"
module asm "\09.asciz \09\22kill_device\22\09\09\09\09\09"
module asm "__kstrtabns_kill_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_device_del:\09\09\09\09\09"
module asm "\09.asciz \09\22device_del\22\09\09\09\09\09"
module asm "__kstrtabns_device_del:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_device_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22device_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_device_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_device_for_each_child:\09\09\09\09\09"
module asm "\09.asciz \09\22device_for_each_child\22\09\09\09\09\09"
module asm "__kstrtabns_device_for_each_child:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_device_for_each_child_reverse:\09\09\09\09\09"
module asm "\09.asciz \09\22device_for_each_child_reverse\22\09\09\09\09\09"
module asm "__kstrtabns_device_for_each_child_reverse:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_device_find_child:\09\09\09\09\09"
module asm "\09.asciz \09\22device_find_child\22\09\09\09\09\09"
module asm "__kstrtabns_device_find_child:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_device_find_child_by_name:\09\09\09\09\09"
module asm "\09.asciz \09\22device_find_child_by_name\22\09\09\09\09\09"
module asm "__kstrtabns_device_find_child_by_name:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___root_device_register:\09\09\09\09\09"
module asm "\09.asciz \09\22__root_device_register\22\09\09\09\09\09"
module asm "__kstrtabns___root_device_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_root_device_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22root_device_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_root_device_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_device_create:\09\09\09\09\09"
module asm "\09.asciz \09\22device_create\22\09\09\09\09\09"
module asm "__kstrtabns_device_create:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_device_create_with_groups:\09\09\09\09\09"
module asm "\09.asciz \09\22device_create_with_groups\22\09\09\09\09\09"
module asm "__kstrtabns_device_create_with_groups:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_device_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22device_destroy\22\09\09\09\09\09"
module asm "__kstrtabns_device_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_device_rename:\09\09\09\09\09"
module asm "\09.asciz \09\22device_rename\22\09\09\09\09\09"
module asm "__kstrtabns_device_rename:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_device_move:\09\09\09\09\09"
module asm "\09.asciz \09\22device_move\22\09\09\09\09\09"
module asm "__kstrtabns_device_move:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_device_change_owner:\09\09\09\09\09"
module asm "\09.asciz \09\22device_change_owner\22\09\09\09\09\09"
module asm "__kstrtabns_device_change_owner:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dev_vprintk_emit:\09\09\09\09\09"
module asm "\09.asciz \09\22dev_vprintk_emit\22\09\09\09\09\09"
module asm "__kstrtabns_dev_vprintk_emit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dev_printk_emit:\09\09\09\09\09"
module asm "\09.asciz \09\22dev_printk_emit\22\09\09\09\09\09"
module asm "__kstrtabns_dev_printk_emit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab__dev_printk:\09\09\09\09\09"
module asm "\09.asciz \09\22_dev_printk\22\09\09\09\09\09"
module asm "__kstrtabns__dev_printk:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab__dev_emerg:\09\09\09\09\09"
module asm "\09.asciz \09\22_dev_emerg\22\09\09\09\09\09"
module asm "__kstrtabns__dev_emerg:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab__dev_alert:\09\09\09\09\09"
module asm "\09.asciz \09\22_dev_alert\22\09\09\09\09\09"
module asm "__kstrtabns__dev_alert:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab__dev_crit:\09\09\09\09\09"
module asm "\09.asciz \09\22_dev_crit\22\09\09\09\09\09"
module asm "__kstrtabns__dev_crit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab__dev_err:\09\09\09\09\09"
module asm "\09.asciz \09\22_dev_err\22\09\09\09\09\09"
module asm "__kstrtabns__dev_err:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab__dev_warn:\09\09\09\09\09"
module asm "\09.asciz \09\22_dev_warn\22\09\09\09\09\09"
module asm "__kstrtabns__dev_warn:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab__dev_notice:\09\09\09\09\09"
module asm "\09.asciz \09\22_dev_notice\22\09\09\09\09\09"
module asm "__kstrtabns__dev_notice:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab__dev_info:\09\09\09\09\09"
module asm "\09.asciz \09\22_dev_info\22\09\09\09\09\09"
module asm "__kstrtabns__dev_info:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dev_err_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22dev_err_probe\22\09\09\09\09\09"
module asm "__kstrtabns_dev_err_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_set_primary_fwnode:\09\09\09\09\09"
module asm "\09.asciz \09\22set_primary_fwnode\22\09\09\09\09\09"
module asm "__kstrtabns_set_primary_fwnode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_set_secondary_fwnode:\09\09\09\09\09"
module asm "\09.asciz \09\22set_secondary_fwnode\22\09\09\09\09\09"
module asm "__kstrtabns_set_secondary_fwnode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_device_set_of_node_from_dev:\09\09\09\09\09"
module asm "\09.asciz \09\22device_set_of_node_from_dev\22\09\09\09\09\09"
module asm "__kstrtabns_device_set_of_node_from_dev:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_device_set_node:\09\09\09\09\09"
module asm "\09.asciz \09\22device_set_node\22\09\09\09\09\09"
module asm "__kstrtabns_device_set_node:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_device_match_name:\09\09\09\09\09"
module asm "\09.asciz \09\22device_match_name\22\09\09\09\09\09"
module asm "__kstrtabns_device_match_name:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_device_match_of_node:\09\09\09\09\09"
module asm "\09.asciz \09\22device_match_of_node\22\09\09\09\09\09"
module asm "__kstrtabns_device_match_of_node:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_device_match_fwnode:\09\09\09\09\09"
module asm "\09.asciz \09\22device_match_fwnode\22\09\09\09\09\09"
module asm "__kstrtabns_device_match_fwnode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_device_match_devt:\09\09\09\09\09"
module asm "\09.asciz \09\22device_match_devt\22\09\09\09\09\09"
module asm "__kstrtabns_device_match_devt:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_device_match_acpi_dev:\09\09\09\09\09"
module asm "\09.asciz \09\22device_match_acpi_dev\22\09\09\09\09\09"
module asm "__kstrtabns_device_match_acpi_dev:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_device_match_acpi_handle:\09\09\09\09\09"
module asm "\09.asciz \09\22device_match_acpi_handle\22\09\09\09\09\09"
module asm "__kstrtabns_device_match_acpi_handle:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_device_match_any:\09\09\09\09\09"
module asm "\09.asciz \09\22device_match_any\22\09\09\09\09\09"
module asm "__kstrtabns_device_match_any:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.srcu_struct = type { [1 x %struct.srcu_node], [2 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type {}
%struct.class = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.kobj_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.kset_uevent_ops = type { ptr, ptr, ptr }
%struct.srcu_data = type { [2 x i32], [2 x i32], [48 x i8], %struct.spinlock, %struct.rcu_segcblist, i32, i32, i8, %struct.timer_list, %struct.work_struct, %struct.callback_head, ptr, i32, i32, ptr, [56 x i8] }
%struct.rcu_segcblist = type { ptr, [4 x ptr], [4 x i32], i32, [4 x i32], i8 }
%struct.callback_head = type { ptr, ptr }
%struct.class_interface = type { %struct.list_head, ptr, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.sysfs_ops = type { ptr, ptr }
%struct.device_type = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fwnode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.fwnode_link = type { ptr, %struct.list_head, ptr, %struct.list_head }
%struct.klist_iter = type { ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.kset = type { %struct.list_head, %struct.spinlock, %struct.kobject, ptr }
%struct.device_link = type { ptr, %struct.list_head, ptr, %struct.list_head, %struct.device, i32, i32, %struct.refcount_struct, %struct.kref, %struct.work_struct, i8 }
%struct.__va_list = type { ptr }
%struct.va_format = type { ptr, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_ext_attribute = type { %struct.device_attribute, ptr }
%struct.device_private = type { %struct.klist, %struct.klist_node, %struct.klist_node, %struct.klist_node, %struct.klist_node, %struct.list_head, ptr, ptr, ptr, i8 }
%struct.klist = type { %struct.spinlock, %struct.list_head, ptr, ptr }
%struct.klist_node = type { ptr, %struct.list_head, %struct.kref }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.subsys_private = type { %struct.kset, ptr, %struct.list_head, %struct.mutex, ptr, %struct.klist, %struct.klist, %struct.blocking_notifier_head, i8, ptr, %struct.kset, ptr }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.class_dir = type { %struct.kobject, ptr }
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, ptr, ptr, %struct.rb_node, ptr, i32, %union.anon.61, ptr, i64, i16, i16, ptr }
%union.anon.61 = type { %struct.kernfs_elem_attr }
%struct.kernfs_elem_attr = type { ptr, ptr, i64, ptr }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.76, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.19 }
%struct.llist_node = type { ptr }
%union.anon.19 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, [56 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [8 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.sched_statistics = type {}
%struct.cpumask = type { [1 x i32] }
%struct.sched_info = type {}
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.20 }
%union.anon.20 = type { %struct.anon.21 }
%struct.anon.21 = type { ptr, i32, i32, i32, i64, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.task_io_accounting = type {}
%struct.tlbflush_unmap_batch = type {}
%union.anon.76 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.root_device = type { %struct.device, ptr }
%struct.dev_printk_info = type { [16 x i8], [48 x i8] }
%struct.kobj_uevent_env = type { [3 x ptr], [64 x ptr], i32, [2048 x i8], i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }

@fwnode_link_lock = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @fwnode_link_lock, i64 12), ptr getelementptr (i8, ptr @fwnode_link_lock, i64 12) } }, align 4
@__kstrtab_fw_devlink_purge_absent_suppliers = external dso_local constant [0 x i8], align 1
@__kstrtabns_fw_devlink_purge_absent_suppliers = external dso_local constant [0 x i8], align 1
@__ksymtab_fw_devlink_purge_absent_suppliers = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fw_devlink_purge_absent_suppliers to i32), ptr @__kstrtab_fw_devlink_purge_absent_suppliers, ptr @__kstrtabns_fw_devlink_purge_absent_suppliers }, section "___ksymtab_gpl+fw_devlink_purge_absent_suppliers", align 4
@device_links_srcu = internal global %struct.srcu_struct { [1 x %struct.srcu_node] zeroinitializer, [2 x ptr] zeroinitializer, %struct.mutex zeroinitializer, %struct.spinlock zeroinitializer, %struct.mutex zeroinitializer, i32 0, i32 0, i32 -1, i32 0, i32 0, ptr @device_links_srcu_srcu_data, i32 0, %struct.mutex zeroinitializer, %struct.completion zeroinitializer, %struct.atomic_t zeroinitializer, %struct.delayed_work { %struct.work_struct { %struct.atomic_t { i32 -32 }, %struct.list_head { ptr getelementptr (i8, ptr @device_links_srcu, i64 176), ptr getelementptr (i8, ptr @device_links_srcu, i64 176) }, ptr null }, %struct.timer_list { %struct.hlist_node { ptr inttoptr (i32 768 to ptr), ptr null }, i32 0, ptr @delayed_work_timer_fn, i32 2097152 }, ptr null, i32 0 }, %struct.lockdep_map zeroinitializer }, align 4
@__initcall__kmod_core__339_617_devlink_class_init2 = internal global ptr @devlink_class_init, section ".initcall2.init", align 4
@devlink_class = internal global %struct.class { ptr @.str.36, ptr null, ptr null, ptr @devlink_groups, ptr null, ptr null, ptr null, ptr null, ptr @devlink_dev_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str = private unnamed_addr constant [13 x i8] c"%s:%s--%s:%s\00", align 1
@__kstrtab_device_link_add = external dso_local constant [0 x i8], align 1
@__kstrtabns_device_link_add = external dso_local constant [0 x i8], align 1
@__ksymtab_device_link_add = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @device_link_add to i32), ptr @__kstrtab_device_link_add, ptr @__kstrtabns_device_link_add }, section "___ksymtab_gpl+device_link_add", align 4
@__kstrtab_device_link_del = external dso_local constant [0 x i8], align 1
@__kstrtabns_device_link_del = external dso_local constant [0 x i8], align 1
@__ksymtab_device_link_del = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @device_link_del to i32), ptr @__kstrtab_device_link_del, ptr @__kstrtabns_device_link_del }, section "___ksymtab_gpl+device_link_del", align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"drivers/base/core.c\00", align 1
@__kstrtab_device_link_remove = external dso_local constant [0 x i8], align 1
@__kstrtabns_device_link_remove = external dso_local constant [0 x i8], align 1
@__ksymtab_device_link_remove = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @device_link_remove to i32), ptr @__kstrtab_device_link_remove, ptr @__kstrtabns_device_link_remove }, section "___ksymtab_gpl+device_link_remove", align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"wait for supplier %pfwP\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"supplier %s not ready\0A\00", align 1
@defer_sync_state_count = internal unnamed_addr global i32 1, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"Unmatched sync_state pause/resume!\00", align 1
@deferred_sync = internal global %struct.list_head { ptr @deferred_sync, ptr @deferred_sync }, align 4
@__initcall__kmod_core__343_1151_sync_state_resume_initcall7 = internal global ptr @sync_state_resume_initcall, section ".initcall7.init", align 4
@dev_attr_waiting_for_supplier = internal global %struct.device_attribute { %struct.attribute { ptr @.str.54, i16 292 }, ptr @waiting_for_supplier_show, ptr null }, align 4
@__setup_str_fw_devlink_setup = internal constant [11 x i8] c"fw_devlink\00", section ".init.rodata", align 1
@__setup_fw_devlink_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_fw_devlink_setup, ptr @fw_devlink_setup, i32 1 }, section ".init.setup", align 4
@__setup_str_fw_devlink_strict_setup = internal constant [18 x i8] c"fw_devlink.strict\00", section ".init.rodata", align 1
@__setup_fw_devlink_strict_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_fw_devlink_strict_setup, ptr @fw_devlink_strict_setup, i32 1 }, section ".init.setup", align 4
@fw_devlink_flags = internal unnamed_addr global i32 288, align 4
@fw_devlink_strict = internal global i8 0, align 1
@fw_devlink_drv_reg_done = internal unnamed_addr global i1 false, align 1
@platform_notify = dso_local local_unnamed_addr global ptr null, align 4
@platform_notify_remove = dso_local local_unnamed_addr global ptr null, align 4
@device_hotplug_lock = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @device_hotplug_lock, i64 12), ptr getelementptr (i8, ptr @device_hotplug_lock, i64 12) } }, align 4
@__kstrtab_dev_driver_string = external dso_local constant [0 x i8], align 1
@__kstrtabns_dev_driver_string = external dso_local constant [0 x i8], align 1
@__ksymtab_dev_driver_string = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dev_driver_string to i32), ptr @__kstrtab_dev_driver_string, ptr @__kstrtabns_dev_driver_string }, section "___ksymtab+dev_driver_string", align 4
@__kstrtab_device_store_ulong = external dso_local constant [0 x i8], align 1
@__kstrtabns_device_store_ulong = external dso_local constant [0 x i8], align 1
@__ksymtab_device_store_ulong = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @device_store_ulong to i32), ptr @__kstrtab_device_store_ulong, ptr @__kstrtabns_device_store_ulong }, section "___ksymtab_gpl+device_store_ulong", align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"%lx\0A\00", align 1
@__kstrtab_device_show_ulong = external dso_local constant [0 x i8], align 1
@__kstrtabns_device_show_ulong = external dso_local constant [0 x i8], align 1
@__ksymtab_device_show_ulong = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @device_show_ulong to i32), ptr @__kstrtab_device_show_ulong, ptr @__kstrtabns_device_show_ulong }, section "___ksymtab_gpl+device_show_ulong", align 4
@__kstrtab_device_store_int = external dso_local constant [0 x i8], align 1
@__kstrtabns_device_store_int = external dso_local constant [0 x i8], align 1
@__ksymtab_device_store_int = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @device_store_int to i32), ptr @__kstrtab_device_store_int, ptr @__kstrtabns_device_store_int }, section "___ksymtab_gpl+device_store_int", align 4
@.str.6 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@__kstrtab_device_show_int = external dso_local constant [0 x i8], align 1
@__kstrtabns_device_show_int = external dso_local constant [0 x i8], align 1
@__ksymtab_device_show_int = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @device_show_int to i32), ptr @__kstrtab_device_show_int, ptr @__kstrtabns_device_show_int }, section "___ksymtab_gpl+device_show_int", align 4
@__kstrtab_device_store_bool = external dso_local constant [0 x i8], align 1
@__kstrtabns_device_store_bool = external dso_local constant [0 x i8], align 1
@__ksymtab_device_store_bool = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @device_store_bool to i32), ptr @__kstrtab_device_store_bool, ptr @__kstrtabns_device_store_bool }, section "___ksymtab_gpl+device_store_bool", align 4
@__kstrtab_device_show_bool = external dso_local constant [0 x i8], align 1
@__kstrtabns_device_show_bool = external dso_local constant [0 x i8], align 1
@__ksymtab_device_show_bool = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @device_show_bool to i32), ptr @__kstrtab_device_show_bool, ptr @__kstrtabns_device_show_bool }, section "___ksymtab_gpl+device_show_bool", align 4
@__kstrtab_device_add_groups = external dso_local constant [0 x i8], align 1
@__kstrtabns_device_add_groups = external dso_local constant [0 x i8], align 1
@__ksymtab_device_add_groups = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @device_add_groups to i32), ptr @__kstrtab_device_add_groups, ptr @__kstrtabns_device_add_groups }, section "___ksymtab_gpl+device_add_groups", align 4
@__kstrtab_device_remove_groups = external dso_local constant [0 x i8], align 1
@__kstrtabns_device_remove_groups = external dso_local constant [0 x i8], align 1
@__ksymtab_device_remove_groups = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @device_remove_groups to i32), ptr @__kstrtab_device_remove_groups, ptr @__kstrtabns_device_remove_groups }, section "___ksymtab_gpl+device_remove_groups", align 4
@.str.7 = private unnamed_addr constant [23 x i8] c"devm_attr_group_remove\00", align 1
@__kstrtab_devm_device_add_group = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_device_add_group = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_device_add_group = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_device_add_group to i32), ptr @__kstrtab_devm_device_add_group, ptr @__kstrtabns_devm_device_add_group }, section "___ksymtab_gpl+devm_device_add_group", align 4
@__kstrtab_devm_device_remove_group = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_device_remove_group = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_device_remove_group = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_device_remove_group to i32), ptr @__kstrtab_devm_device_remove_group, ptr @__kstrtabns_devm_device_remove_group }, section "___ksymtab_gpl+devm_device_remove_group", align 4
@.str.8 = private unnamed_addr constant [24 x i8] c"devm_attr_groups_remove\00", align 1
@__kstrtab_devm_device_add_groups = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_device_add_groups = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_device_add_groups = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_device_add_groups to i32), ptr @__kstrtab_devm_device_add_groups, ptr @__kstrtabns_devm_device_add_groups }, section "___ksymtab_gpl+devm_device_add_groups", align 4
@__kstrtab_devm_device_remove_groups = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_device_remove_groups = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_device_remove_groups = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_device_remove_groups to i32), ptr @__kstrtab_devm_device_remove_groups, ptr @__kstrtabns_devm_device_remove_groups }, section "___ksymtab_gpl+devm_device_remove_groups", align 4
@devices_kset = dso_local local_unnamed_addr global ptr null, align 4
@.str.9 = private unnamed_addr constant [48 x i8] c"Attribute %s: write permission without 'store'\0A\00", align 1
@.str.10 = private unnamed_addr constant [46 x i8] c"Attribute %s: read permission without 'show'\0A\00", align 1
@__kstrtab_device_create_file = external dso_local constant [0 x i8], align 1
@__kstrtabns_device_create_file = external dso_local constant [0 x i8], align 1
@__ksymtab_device_create_file = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @device_create_file to i32), ptr @__kstrtab_device_create_file, ptr @__kstrtabns_device_create_file }, section "___ksymtab_gpl+device_create_file", align 4
@__kstrtab_device_remove_file = external dso_local constant [0 x i8], align 1
@__kstrtabns_device_remove_file = external dso_local constant [0 x i8], align 1
@__ksymtab_device_remove_file = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @device_remove_file to i32), ptr @__kstrtab_device_remove_file, ptr @__kstrtabns_device_remove_file }, section "___ksymtab_gpl+device_remove_file", align 4
@__kstrtab_device_remove_file_self = external dso_local constant [0 x i8], align 1
@__kstrtabns_device_remove_file_self = external dso_local constant [0 x i8], align 1
@__ksymtab_device_remove_file_self = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @device_remove_file_self to i32), ptr @__kstrtab_device_remove_file_self, ptr @__kstrtabns_device_remove_file_self }, section "___ksymtab_gpl+device_remove_file_self", align 4
@__kstrtab_device_create_bin_file = external dso_local constant [0 x i8], align 1
@__kstrtabns_device_create_bin_file = external dso_local constant [0 x i8], align 1
@__ksymtab_device_create_bin_file = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @device_create_bin_file to i32), ptr @__kstrtab_device_create_bin_file, ptr @__kstrtabns_device_create_bin_file }, section "___ksymtab_gpl+device_create_bin_file", align 4
@__kstrtab_device_remove_bin_file = external dso_local constant [0 x i8], align 1
@__kstrtabns_device_remove_bin_file = external dso_local constant [0 x i8], align 1
@__ksymtab_device_remove_bin_file = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @device_remove_bin_file to i32), ptr @__kstrtab_device_remove_bin_file, ptr @__kstrtabns_device_remove_bin_file }, section "___ksymtab_gpl+device_remove_bin_file", align 4
@device_ktype = internal global %struct.kobj_type { ptr @device_release, ptr @dev_sysfs_ops, ptr null, ptr null, ptr null, ptr @device_namespace, ptr @device_get_ownership }, align 4
@device_initialize.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"&dev->mutex\00", align 1
@__kstrtab_device_initialize = external dso_local constant [0 x i8], align 1
@__kstrtabns_device_initialize = external dso_local constant [0 x i8], align 1
@__ksymtab_device_initialize = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @device_initialize to i32), ptr @__kstrtab_device_initialize, ptr @__kstrtabns_device_initialize }, section "___ksymtab_gpl+device_initialize", align 4
@virtual_device_parent.virtual_dir = internal unnamed_addr global ptr null, align 4
@.str.12 = private unnamed_addr constant [8 x i8] c"virtual\00", align 1
@__kstrtab_dev_set_name = external dso_local constant [0 x i8], align 1
@__kstrtabns_dev_set_name = external dso_local constant [0 x i8], align 1
@__ksymtab_dev_set_name = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dev_set_name to i32), ptr @__kstrtab_dev_set_name, ptr @__kstrtabns_dev_set_name }, section "___ksymtab_gpl+dev_set_name", align 4
@.str.13 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"%s%u\00", align 1
@dev_attr_uevent = internal global %struct.device_attribute { %struct.attribute { ptr @.str.62, i16 420 }, ptr @uevent_show, ptr @uevent_store }, align 4
@dev_attr_dev = internal global %struct.device_attribute { %struct.attribute { ptr @.str.16, i16 292 }, ptr @dev_show, ptr null }, align 4
@__kstrtab_device_add = external dso_local constant [0 x i8], align 1
@__kstrtabns_device_add = external dso_local constant [0 x i8], align 1
@__ksymtab_device_add = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @device_add to i32), ptr @__kstrtab_device_add, ptr @__kstrtabns_device_add }, section "___ksymtab_gpl+device_add", align 4
@__kstrtab_device_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_device_register = external dso_local constant [0 x i8], align 1
@__ksymtab_device_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @device_register to i32), ptr @__kstrtab_device_register, ptr @__kstrtabns_device_register }, section "___ksymtab_gpl+device_register", align 4
@__kstrtab_get_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_get_device = external dso_local constant [0 x i8], align 1
@__ksymtab_get_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @get_device to i32), ptr @__kstrtab_get_device, ptr @__kstrtabns_get_device }, section "___ksymtab_gpl+get_device", align 4
@__kstrtab_put_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_put_device = external dso_local constant [0 x i8], align 1
@__ksymtab_put_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @put_device to i32), ptr @__kstrtab_put_device, ptr @__kstrtabns_put_device }, section "___ksymtab_gpl+put_device", align 4
@__kstrtab_kill_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_kill_device = external dso_local constant [0 x i8], align 1
@__ksymtab_kill_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kill_device to i32), ptr @__kstrtab_kill_device, ptr @__kstrtabns_kill_device }, section "___ksymtab_gpl+kill_device", align 4
@__kstrtab_device_del = external dso_local constant [0 x i8], align 1
@__kstrtabns_device_del = external dso_local constant [0 x i8], align 1
@__ksymtab_device_del = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @device_del to i32), ptr @__kstrtab_device_del, ptr @__kstrtabns_device_del }, section "___ksymtab_gpl+device_del", align 4
@__kstrtab_device_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_device_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_device_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @device_unregister to i32), ptr @__kstrtab_device_unregister, ptr @__kstrtabns_device_unregister }, section "___ksymtab_gpl+device_unregister", align 4
@__kstrtab_device_for_each_child = external dso_local constant [0 x i8], align 1
@__kstrtabns_device_for_each_child = external dso_local constant [0 x i8], align 1
@__ksymtab_device_for_each_child = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @device_for_each_child to i32), ptr @__kstrtab_device_for_each_child, ptr @__kstrtabns_device_for_each_child }, section "___ksymtab_gpl+device_for_each_child", align 4
@__kstrtab_device_for_each_child_reverse = external dso_local constant [0 x i8], align 1
@__kstrtabns_device_for_each_child_reverse = external dso_local constant [0 x i8], align 1
@__ksymtab_device_for_each_child_reverse = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @device_for_each_child_reverse to i32), ptr @__kstrtab_device_for_each_child_reverse, ptr @__kstrtabns_device_for_each_child_reverse }, section "___ksymtab_gpl+device_for_each_child_reverse", align 4
@__kstrtab_device_find_child = external dso_local constant [0 x i8], align 1
@__kstrtabns_device_find_child = external dso_local constant [0 x i8], align 1
@__ksymtab_device_find_child = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @device_find_child to i32), ptr @__kstrtab_device_find_child, ptr @__kstrtabns_device_find_child }, section "___ksymtab_gpl+device_find_child", align 4
@__kstrtab_device_find_child_by_name = external dso_local constant [0 x i8], align 1
@__kstrtabns_device_find_child_by_name = external dso_local constant [0 x i8], align 1
@__ksymtab_device_find_child_by_name = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @device_find_child_by_name to i32), ptr @__kstrtab_device_find_child_by_name, ptr @__kstrtabns_device_find_child_by_name }, section "___ksymtab_gpl+device_find_child_by_name", align 4
@.str.15 = private unnamed_addr constant [8 x i8] c"devices\00", align 1
@device_uevent_ops = internal constant %struct.kset_uevent_ops { ptr @dev_uevent_filter, ptr @dev_uevent_name, ptr @dev_uevent }, align 4
@.str.16 = private unnamed_addr constant [4 x i8] c"dev\00", align 1
@dev_kobj = internal unnamed_addr global ptr null, align 4
@.str.17 = private unnamed_addr constant [6 x i8] c"block\00", align 1
@sysfs_dev_block_kobj = dso_local local_unnamed_addr global ptr null, align 4
@.str.18 = private unnamed_addr constant [5 x i8] c"char\00", align 1
@sysfs_dev_char_kobj = dso_local local_unnamed_addr global ptr null, align 4
@.str.19 = private unnamed_addr constant [7 x i8] c"module\00", align 1
@__kstrtab___root_device_register = external dso_local constant [0 x i8], align 1
@__kstrtabns___root_device_register = external dso_local constant [0 x i8], align 1
@__ksymtab___root_device_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__root_device_register to i32), ptr @__kstrtab___root_device_register, ptr @__kstrtabns___root_device_register }, section "___ksymtab_gpl+__root_device_register", align 4
@__kstrtab_root_device_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_root_device_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_root_device_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @root_device_unregister to i32), ptr @__kstrtab_root_device_unregister, ptr @__kstrtabns_root_device_unregister }, section "___ksymtab_gpl+root_device_unregister", align 4
@__kstrtab_device_create = external dso_local constant [0 x i8], align 1
@__kstrtabns_device_create = external dso_local constant [0 x i8], align 1
@__ksymtab_device_create = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @device_create to i32), ptr @__kstrtab_device_create, ptr @__kstrtabns_device_create }, section "___ksymtab_gpl+device_create", align 4
@__kstrtab_device_create_with_groups = external dso_local constant [0 x i8], align 1
@__kstrtabns_device_create_with_groups = external dso_local constant [0 x i8], align 1
@__ksymtab_device_create_with_groups = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @device_create_with_groups to i32), ptr @__kstrtab_device_create_with_groups, ptr @__kstrtabns_device_create_with_groups }, section "___ksymtab_gpl+device_create_with_groups", align 4
@__kstrtab_device_destroy = external dso_local constant [0 x i8], align 1
@__kstrtabns_device_destroy = external dso_local constant [0 x i8], align 1
@__ksymtab_device_destroy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @device_destroy to i32), ptr @__kstrtab_device_destroy, ptr @__kstrtabns_device_destroy }, section "___ksymtab_gpl+device_destroy", align 4
@__kstrtab_device_rename = external dso_local constant [0 x i8], align 1
@__kstrtabns_device_rename = external dso_local constant [0 x i8], align 1
@__ksymtab_device_rename = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @device_rename to i32), ptr @__kstrtab_device_rename, ptr @__kstrtabns_device_rename }, section "___ksymtab_gpl+device_rename", align 4
@__kstrtab_device_move = external dso_local constant [0 x i8], align 1
@__kstrtabns_device_move = external dso_local constant [0 x i8], align 1
@__ksymtab_device_move = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @device_move to i32), ptr @__kstrtab_device_move, ptr @__kstrtabns_device_move }, section "___ksymtab_gpl+device_move", align 4
@__kstrtab_device_change_owner = external dso_local constant [0 x i8], align 1
@__kstrtabns_device_change_owner = external dso_local constant [0 x i8], align 1
@__ksymtab_device_change_owner = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @device_change_owner to i32), ptr @__kstrtab_device_change_owner, ptr @__kstrtabns_device_change_owner }, section "___ksymtab_gpl+device_change_owner", align 4
@initcall_debug = external dso_local local_unnamed_addr global i8, align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"shutdown_pre\0A\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"shutdown\0A\00", align 1
@__kstrtab_dev_vprintk_emit = external dso_local constant [0 x i8], align 1
@__kstrtabns_dev_vprintk_emit = external dso_local constant [0 x i8], align 1
@__ksymtab_dev_vprintk_emit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dev_vprintk_emit to i32), ptr @__kstrtab_dev_vprintk_emit, ptr @__kstrtabns_dev_vprintk_emit }, section "___ksymtab+dev_vprintk_emit", align 4
@__kstrtab_dev_printk_emit = external dso_local constant [0 x i8], align 1
@__kstrtabns_dev_printk_emit = external dso_local constant [0 x i8], align 1
@__ksymtab_dev_printk_emit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dev_printk_emit to i32), ptr @__kstrtab_dev_printk_emit, ptr @__kstrtabns_dev_printk_emit }, section "___ksymtab+dev_printk_emit", align 4
@__kstrtab__dev_printk = external dso_local constant [0 x i8], align 1
@__kstrtabns__dev_printk = external dso_local constant [0 x i8], align 1
@__ksymtab__dev_printk = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @_dev_printk to i32), ptr @__kstrtab__dev_printk, ptr @__kstrtabns__dev_printk }, section "___ksymtab+_dev_printk", align 4
@.str.22 = private unnamed_addr constant [3 x i8] c"\010\00", align 1
@__kstrtab__dev_emerg = external dso_local constant [0 x i8], align 1
@__kstrtabns__dev_emerg = external dso_local constant [0 x i8], align 1
@__ksymtab__dev_emerg = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @_dev_emerg to i32), ptr @__kstrtab__dev_emerg, ptr @__kstrtabns__dev_emerg }, section "___ksymtab+_dev_emerg", align 4
@.str.23 = private unnamed_addr constant [3 x i8] c"\011\00", align 1
@__kstrtab__dev_alert = external dso_local constant [0 x i8], align 1
@__kstrtabns__dev_alert = external dso_local constant [0 x i8], align 1
@__ksymtab__dev_alert = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @_dev_alert to i32), ptr @__kstrtab__dev_alert, ptr @__kstrtabns__dev_alert }, section "___ksymtab+_dev_alert", align 4
@.str.24 = private unnamed_addr constant [3 x i8] c"\012\00", align 1
@__kstrtab__dev_crit = external dso_local constant [0 x i8], align 1
@__kstrtabns__dev_crit = external dso_local constant [0 x i8], align 1
@__ksymtab__dev_crit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @_dev_crit to i32), ptr @__kstrtab__dev_crit, ptr @__kstrtabns__dev_crit }, section "___ksymtab+_dev_crit", align 4
@.str.25 = private unnamed_addr constant [3 x i8] c"\013\00", align 1
@__kstrtab__dev_err = external dso_local constant [0 x i8], align 1
@__kstrtabns__dev_err = external dso_local constant [0 x i8], align 1
@__ksymtab__dev_err = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @_dev_err to i32), ptr @__kstrtab__dev_err, ptr @__kstrtabns__dev_err }, section "___ksymtab+_dev_err", align 4
@.str.26 = private unnamed_addr constant [3 x i8] c"\014\00", align 1
@__kstrtab__dev_warn = external dso_local constant [0 x i8], align 1
@__kstrtabns__dev_warn = external dso_local constant [0 x i8], align 1
@__ksymtab__dev_warn = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @_dev_warn to i32), ptr @__kstrtab__dev_warn, ptr @__kstrtabns__dev_warn }, section "___ksymtab+_dev_warn", align 4
@.str.27 = private unnamed_addr constant [3 x i8] c"\015\00", align 1
@__kstrtab__dev_notice = external dso_local constant [0 x i8], align 1
@__kstrtabns__dev_notice = external dso_local constant [0 x i8], align 1
@__ksymtab__dev_notice = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @_dev_notice to i32), ptr @__kstrtab__dev_notice, ptr @__kstrtabns__dev_notice }, section "___ksymtab+_dev_notice", align 4
@.str.28 = private unnamed_addr constant [3 x i8] c"\016\00", align 1
@__kstrtab__dev_info = external dso_local constant [0 x i8], align 1
@__kstrtabns__dev_info = external dso_local constant [0 x i8], align 1
@__ksymtab__dev_info = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @_dev_info to i32), ptr @__kstrtab__dev_info, ptr @__kstrtabns__dev_info }, section "___ksymtab+_dev_info", align 4
@.str.29 = private unnamed_addr constant [15 x i8] c"error %pe: %pV\00", align 1
@__kstrtab_dev_err_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns_dev_err_probe = external dso_local constant [0 x i8], align 1
@__ksymtab_dev_err_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dev_err_probe to i32), ptr @__kstrtab_dev_err_probe, ptr @__kstrtabns_dev_err_probe }, section "___ksymtab_gpl+dev_err_probe", align 4
@__kstrtab_set_primary_fwnode = external dso_local constant [0 x i8], align 1
@__kstrtabns_set_primary_fwnode = external dso_local constant [0 x i8], align 1
@__ksymtab_set_primary_fwnode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @set_primary_fwnode to i32), ptr @__kstrtab_set_primary_fwnode, ptr @__kstrtabns_set_primary_fwnode }, section "___ksymtab_gpl+set_primary_fwnode", align 4
@__kstrtab_set_secondary_fwnode = external dso_local constant [0 x i8], align 1
@__kstrtabns_set_secondary_fwnode = external dso_local constant [0 x i8], align 1
@__ksymtab_set_secondary_fwnode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @set_secondary_fwnode to i32), ptr @__kstrtab_set_secondary_fwnode, ptr @__kstrtabns_set_secondary_fwnode }, section "___ksymtab_gpl+set_secondary_fwnode", align 4
@__kstrtab_device_set_of_node_from_dev = external dso_local constant [0 x i8], align 1
@__kstrtabns_device_set_of_node_from_dev = external dso_local constant [0 x i8], align 1
@__ksymtab_device_set_of_node_from_dev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @device_set_of_node_from_dev to i32), ptr @__kstrtab_device_set_of_node_from_dev, ptr @__kstrtabns_device_set_of_node_from_dev }, section "___ksymtab_gpl+device_set_of_node_from_dev", align 4
@__kstrtab_device_set_node = external dso_local constant [0 x i8], align 1
@__kstrtabns_device_set_node = external dso_local constant [0 x i8], align 1
@__ksymtab_device_set_node = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @device_set_node to i32), ptr @__kstrtab_device_set_node, ptr @__kstrtabns_device_set_node }, section "___ksymtab_gpl+device_set_node", align 4
@__kstrtab_device_match_name = external dso_local constant [0 x i8], align 1
@__kstrtabns_device_match_name = external dso_local constant [0 x i8], align 1
@__ksymtab_device_match_name = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @device_match_name to i32), ptr @__kstrtab_device_match_name, ptr @__kstrtabns_device_match_name }, section "___ksymtab_gpl+device_match_name", align 4
@__kstrtab_device_match_of_node = external dso_local constant [0 x i8], align 1
@__kstrtabns_device_match_of_node = external dso_local constant [0 x i8], align 1
@__ksymtab_device_match_of_node = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @device_match_of_node to i32), ptr @__kstrtab_device_match_of_node, ptr @__kstrtabns_device_match_of_node }, section "___ksymtab_gpl+device_match_of_node", align 4
@__kstrtab_device_match_fwnode = external dso_local constant [0 x i8], align 1
@__kstrtabns_device_match_fwnode = external dso_local constant [0 x i8], align 1
@__ksymtab_device_match_fwnode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @device_match_fwnode to i32), ptr @__kstrtab_device_match_fwnode, ptr @__kstrtabns_device_match_fwnode }, section "___ksymtab_gpl+device_match_fwnode", align 4
@__kstrtab_device_match_devt = external dso_local constant [0 x i8], align 1
@__kstrtabns_device_match_devt = external dso_local constant [0 x i8], align 1
@__ksymtab_device_match_devt = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @device_match_devt to i32), ptr @__kstrtab_device_match_devt, ptr @__kstrtabns_device_match_devt }, section "___ksymtab_gpl+device_match_devt", align 4
@__kstrtab_device_match_acpi_dev = external dso_local constant [0 x i8], align 1
@__kstrtabns_device_match_acpi_dev = external dso_local constant [0 x i8], align 1
@__ksymtab_device_match_acpi_dev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @device_match_acpi_dev to i32), ptr @__kstrtab_device_match_acpi_dev, ptr @__kstrtabns_device_match_acpi_dev }, section "___ksymtab+device_match_acpi_dev", align 4
@__kstrtab_device_match_acpi_handle = external dso_local constant [0 x i8], align 1
@__kstrtabns_device_match_acpi_handle = external dso_local constant [0 x i8], align 1
@__ksymtab_device_match_acpi_handle = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @device_match_acpi_handle to i32), ptr @__kstrtab_device_match_acpi_handle, ptr @__kstrtabns_device_match_acpi_handle }, section "___ksymtab+device_match_acpi_handle", align 4
@__kstrtab_device_match_any = external dso_local constant [0 x i8], align 1
@__kstrtabns_device_match_any = external dso_local constant [0 x i8], align 1
@__ksymtab_device_match_any = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @device_match_any to i32), ptr @__kstrtab_device_match_any, ptr @__kstrtabns_device_match_any }, section "___ksymtab_gpl+device_match_any", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@device_links_srcu_srcu_data = internal global %struct.srcu_data zeroinitializer, section ".data..percpu", align 64
@srcu_read_unlock.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.30 = private unnamed_addr constant [21 x i8] c"include/linux/srcu.h\00", align 1
@devlink_class_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@devlink_class_intf = internal global %struct.class_interface { %struct.list_head zeroinitializer, ptr @devlink_class, ptr @devlink_add_symlinks, ptr @devlink_remove_symlinks }, align 4
@.str.31 = private unnamed_addr constant [9 x i8] c"supplier\00", align 1
@.str.32 = private unnamed_addr constant [9 x i8] c"consumer\00", align 1
@.str.33 = private unnamed_addr constant [15 x i8] c"consumer:%s:%s\00", align 1
@.str.34 = private unnamed_addr constant [15 x i8] c"supplier:%s:%s\00", align 1
@.str.35 = private unnamed_addr constant [47 x i8] c"Unable to properly free device link symlinks!\0A\00", align 1
@device_links_lock = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @device_links_lock, i64 12), ptr getelementptr (i8, ptr @device_links_lock, i64 12) } }, align 4
@.str.36 = private unnamed_addr constant [8 x i8] c"devlink\00", align 1
@devlink_groups = internal global [2 x ptr] [ptr @devlink_group, ptr null], align 4
@devlink_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @devlink_attrs, ptr null }, align 4
@devlink_attrs = internal global [5 x ptr] [ptr @dev_attr_status, ptr @dev_attr_auto_remove_on, ptr @dev_attr_runtime_pm, ptr @dev_attr_sync_state_only, ptr null], align 4
@dev_attr_status = internal global %struct.device_attribute { %struct.attribute { ptr @.str.37, i16 292 }, ptr @status_show, ptr null }, align 4
@dev_attr_auto_remove_on = internal global %struct.device_attribute { %struct.attribute { ptr @.str.46, i16 292 }, ptr @auto_remove_on_show, ptr null }, align 4
@dev_attr_runtime_pm = internal global %struct.device_attribute { %struct.attribute { ptr @.str.50, i16 292 }, ptr @runtime_pm_show, ptr null }, align 4
@dev_attr_sync_state_only = internal global %struct.device_attribute { %struct.attribute { ptr @.str.51, i16 292 }, ptr @sync_state_only_show, ptr null }, align 4
@.str.37 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str.38 = private unnamed_addr constant [12 x i8] c"not tracked\00", align 1
@.str.39 = private unnamed_addr constant [8 x i8] c"dormant\00", align 1
@.str.40 = private unnamed_addr constant [10 x i8] c"available\00", align 1
@.str.41 = private unnamed_addr constant [17 x i8] c"consumer probing\00", align 1
@.str.42 = private unnamed_addr constant [7 x i8] c"active\00", align 1
@.str.43 = private unnamed_addr constant [19 x i8] c"supplier unbinding\00", align 1
@.str.44 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.45 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.46 = private unnamed_addr constant [15 x i8] c"auto_remove_on\00", align 1
@.str.47 = private unnamed_addr constant [16 x i8] c"supplier unbind\00", align 1
@.str.48 = private unnamed_addr constant [16 x i8] c"consumer unbind\00", align 1
@.str.49 = private unnamed_addr constant [6 x i8] c"never\00", align 1
@.str.50 = private unnamed_addr constant [11 x i8] c"runtime_pm\00", align 1
@.str.51 = private unnamed_addr constant [16 x i8] c"sync_state_only\00", align 1
@system_long_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.52 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.53 = private unnamed_addr constant [48 x i8] c"Unable to drop a managed device link reference\0A\00", align 1
@.str.54 = private unnamed_addr constant [21 x i8] c"waiting_for_supplier\00", align 1
@.str.55 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@.str.56 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.57 = private unnamed_addr constant [11 x i8] c"permissive\00", align 1
@.str.58 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.59 = private unnamed_addr constant [4 x i8] c"rpm\00", align 1
@dev_sysfs_ops = internal constant %struct.sysfs_ops { ptr @dev_attr_show, ptr @dev_attr_store }, align 4
@.str.60 = private unnamed_addr constant [123 x i8] c"\013Device '%s' does not have a release() function, it is broken and must be fixed. See Documentation/core-api/kobject.rst.\0A\00", align 1
@.str.61 = private unnamed_addr constant [39 x i8] c"dev_attr_show: %pS returned bad count\0A\00", align 1
@gdp_mutex = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @gdp_mutex, i64 12), ptr getelementptr (i8, ptr @gdp_mutex, i64 12) } }, align 4
@class_dir_ktype = internal global %struct.kobj_type { ptr @class_dir_release, ptr @kobj_sysfs_ops, ptr null, ptr null, ptr @class_dir_child_ns_type, ptr null, ptr null }, align 4
@kobj_sysfs_ops = external dso_local constant %struct.sysfs_ops, align 4
@.str.62 = private unnamed_addr constant [7 x i8] c"uevent\00", align 1
@.str.63 = private unnamed_addr constant [41 x i8] c"uevent: failed to send synthetic uevent\0A\00", align 1
@.str.64 = private unnamed_addr constant [8 x i8] c"of_node\00", align 1
@.str.65 = private unnamed_addr constant [32 x i8] c"Error %d creating of_node link\0A\00", align 1
@.str.66 = private unnamed_addr constant [10 x i8] c"subsystem\00", align 1
@.str.67 = private unnamed_addr constant [7 x i8] c"device\00", align 1
@part_type = external dso_local global %struct.device_type, align 4
@dev_attr_online = internal global %struct.device_attribute { %struct.attribute { ptr @.str.68, i16 420 }, ptr @online_show, ptr @online_store }, align 4
@dev_attr_removable = internal global %struct.device_attribute { %struct.attribute { ptr @.str.69, i16 292 }, ptr @removable_show, ptr null }, align 4
@.str.68 = private unnamed_addr constant [7 x i8] c"online\00", align 1
@.str.69 = private unnamed_addr constant [10 x i8] c"removable\00", align 1
@.str.70 = private unnamed_addr constant [6 x i8] c"fixed\00", align 1
@.str.71 = private unnamed_addr constant [7 x i8] c"%u:%u\0A\00", align 1
@.str.72 = private unnamed_addr constant [6 x i8] c"%u:%u\00", align 1
@.str.73 = private unnamed_addr constant [37 x i8] c"Fixing up cyclic dependency with %s\0A\00", align 1
@.str.74 = private unnamed_addr constant [45 x i8] c"Fixing up cyclic dependency with %pfwP (%s)\0A\00", align 1
@kobject_has_children.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.75 = private unnamed_addr constant [9 x i8] c"MAJOR=%u\00", align 1
@.str.76 = private unnamed_addr constant [9 x i8] c"MINOR=%u\00", align 1
@.str.77 = private unnamed_addr constant [11 x i8] c"DEVNAME=%s\00", align 1
@.str.78 = private unnamed_addr constant [12 x i8] c"DEVMODE=%#o\00", align 1
@.str.79 = private unnamed_addr constant [10 x i8] c"DEVUID=%u\00", align 1
@.str.80 = private unnamed_addr constant [10 x i8] c"DEVGID=%u\00", align 1
@.str.81 = private unnamed_addr constant [11 x i8] c"DEVTYPE=%s\00", align 1
@.str.82 = private unnamed_addr constant [10 x i8] c"DRIVER=%s\00", align 1
@.str.83 = private unnamed_addr constant [8 x i8] c"%c%u:%u\00", align 1
@.str.84 = private unnamed_addr constant [4 x i8] c"net\00", align 1
@.str.85 = private unnamed_addr constant [4 x i8] c"n%u\00", align 1
@.str.86 = private unnamed_addr constant [7 x i8] c"+%s:%s\00", align 1
@.str.87 = private unnamed_addr constant [11 x i8] c"%s %s: %pV\00", align 1
@.str.88 = private unnamed_addr constant [23 x i8] c"%s(NULL device *): %pV\00", align 1
@of_fwnode_ops = external dso_local constant %struct.fwnode_operations, align 4
@llvm.compiler.used = appending global [69 x ptr] [ptr @__initcall__kmod_core__339_617_devlink_class_init2, ptr @__initcall__kmod_core__343_1151_sync_state_resume_initcall7, ptr @__ksymtab___root_device_register, ptr @__ksymtab__dev_alert, ptr @__ksymtab__dev_crit, ptr @__ksymtab__dev_emerg, ptr @__ksymtab__dev_err, ptr @__ksymtab__dev_info, ptr @__ksymtab__dev_notice, ptr @__ksymtab__dev_printk, ptr @__ksymtab__dev_warn, ptr @__ksymtab_dev_driver_string, ptr @__ksymtab_dev_err_probe, ptr @__ksymtab_dev_printk_emit, ptr @__ksymtab_dev_set_name, ptr @__ksymtab_dev_vprintk_emit, ptr @__ksymtab_device_add, ptr @__ksymtab_device_add_groups, ptr @__ksymtab_device_change_owner, ptr @__ksymtab_device_create, ptr @__ksymtab_device_create_bin_file, ptr @__ksymtab_device_create_file, ptr @__ksymtab_device_create_with_groups, ptr @__ksymtab_device_del, ptr @__ksymtab_device_destroy, ptr @__ksymtab_device_find_child, ptr @__ksymtab_device_find_child_by_name, ptr @__ksymtab_device_for_each_child, ptr @__ksymtab_device_for_each_child_reverse, ptr @__ksymtab_device_initialize, ptr @__ksymtab_device_link_add, ptr @__ksymtab_device_link_del, ptr @__ksymtab_device_link_remove, ptr @__ksymtab_device_match_acpi_dev, ptr @__ksymtab_device_match_acpi_handle, ptr @__ksymtab_device_match_any, ptr @__ksymtab_device_match_devt, ptr @__ksymtab_device_match_fwnode, ptr @__ksymtab_device_match_name, ptr @__ksymtab_device_match_of_node, ptr @__ksymtab_device_move, ptr @__ksymtab_device_register, ptr @__ksymtab_device_remove_bin_file, ptr @__ksymtab_device_remove_file, ptr @__ksymtab_device_remove_file_self, ptr @__ksymtab_device_remove_groups, ptr @__ksymtab_device_rename, ptr @__ksymtab_device_set_node, ptr @__ksymtab_device_set_of_node_from_dev, ptr @__ksymtab_device_show_bool, ptr @__ksymtab_device_show_int, ptr @__ksymtab_device_show_ulong, ptr @__ksymtab_device_store_bool, ptr @__ksymtab_device_store_int, ptr @__ksymtab_device_store_ulong, ptr @__ksymtab_device_unregister, ptr @__ksymtab_devm_device_add_group, ptr @__ksymtab_devm_device_add_groups, ptr @__ksymtab_devm_device_remove_group, ptr @__ksymtab_devm_device_remove_groups, ptr @__ksymtab_fw_devlink_purge_absent_suppliers, ptr @__ksymtab_get_device, ptr @__ksymtab_kill_device, ptr @__ksymtab_put_device, ptr @__ksymtab_root_device_unregister, ptr @__ksymtab_set_primary_fwnode, ptr @__ksymtab_set_secondary_fwnode, ptr @__setup_fw_devlink_setup, ptr @__setup_fw_devlink_strict_setup], section "llvm.metadata"
@switch.table.status_show = private unnamed_addr constant [6 x ptr] [ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fwnode_link_add(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  tail call void @mutex_lock(ptr noundef nonnull @fwnode_link_lock) #22
  %3 = getelementptr inbounds %struct.fwnode_handle, ptr %1, i32 0, i32 4
  br label %4

4:                                                ; preds = %8, %2
  %5 = phi ptr [ %3, %2 ], [ %6, %8 ]
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, %3
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = getelementptr i8, ptr %6, i32 8
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, %0
  br i1 %11, label %27, label %4

12:                                               ; preds = %4
  %13 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %14 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3520, i32 noundef 24) #23
  %15 = icmp eq ptr %14, null
  br i1 %15, label %27, label %16

16:                                               ; preds = %12
  store ptr %1, ptr %14, align 8
  %17 = getelementptr inbounds %struct.fwnode_link, ptr %14, i32 0, i32 1
  store volatile ptr %17, ptr %17, align 4
  %18 = getelementptr inbounds %struct.fwnode_link, ptr %14, i32 0, i32 1, i32 1
  %19 = getelementptr inbounds %struct.fwnode_link, ptr %14, i32 0, i32 2
  store ptr %0, ptr %19, align 4
  %20 = getelementptr inbounds %struct.fwnode_link, ptr %14, i32 0, i32 3
  store volatile ptr %20, ptr %20, align 8
  %21 = getelementptr inbounds %struct.fwnode_link, ptr %14, i32 0, i32 3, i32 1
  %22 = load ptr, ptr %3, align 4
  %23 = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  store ptr %17, ptr %23, align 4
  store ptr %22, ptr %17, align 4
  store ptr %3, ptr %18, align 8
  store volatile ptr %17, ptr %3, align 4
  %24 = getelementptr inbounds %struct.fwnode_handle, ptr %0, i32 0, i32 3
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  store ptr %20, ptr %26, align 4
  store ptr %25, ptr %20, align 8
  store ptr %24, ptr %21, align 4
  store volatile ptr %20, ptr %24, align 4
  br label %27

27:                                               ; preds = %16, %12, %8
  %28 = phi i32 [ 0, %16 ], [ -12, %12 ], [ 0, %8 ]
  tail call void @mutex_unlock(ptr noundef nonnull @fwnode_link_lock) #22
  ret i32 %28
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @fwnode_links_purge(ptr noundef readonly %0) local_unnamed_addr #0 {
  tail call void @mutex_lock(ptr noundef nonnull @fwnode_link_lock) #22
  %2 = getelementptr inbounds %struct.fwnode_handle, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %19, label %5

5:                                                ; preds = %5, %1
  %6 = phi ptr [ %8, %5 ], [ %3, %1 ]
  %7 = getelementptr i8, ptr %6, i32 -16
  %8 = load ptr, ptr %6, align 4
  %9 = getelementptr i8, ptr %6, i32 -12
  %10 = getelementptr i8, ptr %6, i32 -8
  %11 = load ptr, ptr %10, align 4
  %12 = load ptr, ptr %9, align 4
  %13 = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  store ptr %11, ptr %13, align 4
  store volatile ptr %12, ptr %11, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %9, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %10, align 4
  %14 = getelementptr i8, ptr %6, i32 4
  %15 = load ptr, ptr %14, align 4
  %16 = load ptr, ptr %6, align 4
  %17 = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  store ptr %15, ptr %17, align 4
  store volatile ptr %16, ptr %15, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %6, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %14, align 4
  tail call void @kfree(ptr noundef %7) #22
  %18 = icmp eq ptr %8, %2
  br i1 %18, label %19, label %5

19:                                               ; preds = %5, %1
  tail call void @mutex_unlock(ptr noundef nonnull @fwnode_link_lock) #22
  tail call void @mutex_lock(ptr noundef nonnull @fwnode_link_lock) #22
  %20 = getelementptr inbounds %struct.fwnode_handle, ptr %0, i32 0, i32 4
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, %20
  br i1 %22, label %36, label %23

23:                                               ; preds = %23, %19
  %24 = phi ptr [ %26, %23 ], [ %21, %19 ]
  %25 = getelementptr i8, ptr %24, i32 -4
  %26 = load ptr, ptr %24, align 4
  %27 = getelementptr i8, ptr %24, i32 4
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  store ptr %28, ptr %29, align 4
  store volatile ptr %26, ptr %28, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %24, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %27, align 4
  %30 = getelementptr i8, ptr %24, i32 12
  %31 = getelementptr i8, ptr %24, i32 16
  %32 = load ptr, ptr %31, align 4
  %33 = load ptr, ptr %30, align 4
  %34 = getelementptr inbounds %struct.list_head, ptr %33, i32 0, i32 1
  store ptr %32, ptr %34, align 4
  store volatile ptr %33, ptr %32, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %30, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %31, align 4
  tail call void @kfree(ptr noundef %25) #22
  %35 = icmp eq ptr %26, %20
  br i1 %35, label %36, label %23

36:                                               ; preds = %23, %19
  tail call void @mutex_unlock(ptr noundef nonnull @fwnode_link_lock) #22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @fw_devlink_purge_absent_suppliers(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.fwnode_handle, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %32

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.fwnode_handle, ptr %0, i32 0, i32 5
  %7 = load i8, ptr %6, align 4
  %8 = or i8 %7, 2
  store i8 %8, ptr %6, align 4
  tail call void @mutex_lock(ptr noundef nonnull @fwnode_link_lock) #22
  %9 = getelementptr inbounds %struct.fwnode_handle, ptr %0, i32 0, i32 4
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, %9
  br i1 %11, label %25, label %12

12:                                               ; preds = %12, %5
  %13 = phi ptr [ %15, %12 ], [ %10, %5 ]
  %14 = getelementptr i8, ptr %13, i32 -4
  %15 = load ptr, ptr %13, align 4
  %16 = getelementptr i8, ptr %13, i32 4
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  store ptr %17, ptr %18, align 4
  store volatile ptr %15, ptr %17, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %13, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %16, align 4
  %19 = getelementptr i8, ptr %13, i32 12
  %20 = getelementptr i8, ptr %13, i32 16
  %21 = load ptr, ptr %20, align 4
  %22 = load ptr, ptr %19, align 4
  %23 = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  store ptr %21, ptr %23, align 4
  store volatile ptr %22, ptr %21, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %19, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %20, align 4
  tail call void @kfree(ptr noundef %14) #22
  %24 = icmp eq ptr %15, %9
  br i1 %24, label %25, label %12

25:                                               ; preds = %12, %5
  tail call void @mutex_unlock(ptr noundef nonnull @fwnode_link_lock) #22
  %26 = tail call ptr @fwnode_get_next_available_child_node(ptr noundef %0, ptr noundef null) #22
  %27 = icmp eq ptr %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %28, %25
  %29 = phi ptr [ %30, %28 ], [ %26, %25 ]
  tail call void @fw_devlink_purge_absent_suppliers(ptr noundef nonnull %29)
  %30 = tail call ptr @fwnode_get_next_available_child_node(ptr noundef %0, ptr noundef nonnull %29) #22
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %28

32:                                               ; preds = %28, %25, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fwnode_get_next_available_child_node(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @device_links_read_lock() local_unnamed_addr #0 {
  %1 = tail call i32 @__srcu_read_lock(ptr noundef nonnull @device_links_srcu) #22
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @device_links_read_unlock(i32 noundef %0) local_unnamed_addr #0 {
  %2 = icmp ugt i32 %0, 1
  %3 = load i1, ptr @srcu_read_unlock.__already_done, align 1
  %4 = xor i1 %3, true
  %5 = select i1 %2, i1 %4, i1 false
  br i1 %5, label %6, label %7, !prof !8

6:                                                ; preds = %1
  store i1 true, ptr @srcu_read_unlock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.30, i32 noundef 189, i32 noundef 9, ptr noundef null) #22
  br label %7

7:                                                ; preds = %6, %1
  tail call void @__srcu_read_unlock(ptr noundef nonnull @device_links_srcu, i32 noundef %0) #22
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @device_links_read_lock_held() local_unnamed_addr #3 {
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @device_is_dependent(ptr noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.klist_iter, align 8
  %4 = icmp eq ptr %0, %1
  br i1 %4, label %51, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %8, %5 ], [ %1, %2 ]
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  %10 = icmp eq ptr %8, %0
  %11 = or i1 %9, %10
  br i1 %11, label %12, label %5

12:                                               ; preds = %5
  br i1 %9, label %13, label %51

13:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #22
  store i64 0, ptr %3, align 8, !annotation !9
  %14 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 2
  %15 = load ptr, ptr %14, align 8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #22
  br label %31

18:                                               ; preds = %13
  call void @klist_iter_init(ptr noundef nonnull %15, ptr noundef nonnull %3) #22
  br label %19

19:                                               ; preds = %26, %18
  %20 = call ptr @klist_next(ptr noundef nonnull %3) #22
  %21 = icmp eq ptr %20, null
  br i1 %21, label %29, label %22

22:                                               ; preds = %19
  %23 = getelementptr i8, ptr %20, i32 80
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %22
  %27 = call i32 @device_is_dependent(ptr noundef nonnull %24, ptr noundef %1) #22
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %19, label %30

29:                                               ; preds = %22, %19
  call void @klist_iter_exit(ptr noundef nonnull %3) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #22
  br label %31

30:                                               ; preds = %26
  call void @klist_iter_exit(ptr noundef nonnull %3) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #22
  br label %51

31:                                               ; preds = %29, %17
  %32 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 10, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, %32
  br i1 %34, label %51, label %35

35:                                               ; preds = %48, %31
  %36 = phi ptr [ %49, %48 ], [ %33, %31 ]
  %37 = getelementptr i8, ptr %36, i32 496
  %38 = load i32, ptr %37, align 4
  %39 = and i32 %38, -257
  %40 = icmp eq i32 %39, 192
  br i1 %40, label %48, label %41

41:                                               ; preds = %35
  %42 = getelementptr i8, ptr %36, i32 8
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, %1
  br i1 %44, label %51, label %45

45:                                               ; preds = %41
  %46 = call i32 @device_is_dependent(ptr noundef %43, ptr noundef %1)
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %45, %35
  %49 = load ptr, ptr %36, align 4
  %50 = icmp eq ptr %49, %32
  br i1 %50, label %51, label %35

51:                                               ; preds = %48, %45, %41, %31, %30, %12, %2
  %52 = phi i32 [ 1, %12 ], [ 1, %2 ], [ %27, %30 ], [ 0, %31 ], [ 1, %41 ], [ %46, %45 ], [ 0, %48 ]
  ret i32 %52
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @device_for_each_child(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca %struct.klist_iter, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #22
  store i64 0, ptr %4, align 8, !annotation !9
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %21, label %8

8:                                                ; preds = %3
  call void @klist_iter_init(ptr noundef nonnull %6, ptr noundef nonnull %4) #22
  br label %9

9:                                                ; preds = %16, %8
  %10 = call ptr @klist_next(ptr noundef nonnull %4) #22
  %11 = icmp eq ptr %10, null
  br i1 %11, label %19, label %12

12:                                               ; preds = %9
  %13 = getelementptr i8, ptr %10, i32 80
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %12
  %17 = call i32 %2(ptr noundef nonnull %14, ptr noundef %1) #22
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %9, label %19

19:                                               ; preds = %16, %12, %9
  %20 = phi i32 [ 0, %9 ], [ %17, %16 ], [ 0, %12 ]
  call void @klist_iter_exit(ptr noundef nonnull %4) #22
  br label %21

21:                                               ; preds = %19, %3
  %22 = phi i32 [ %20, %19 ], [ 0, %3 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #22
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @device_pm_move_to_tail(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @__srcu_read_lock(ptr noundef nonnull @device_links_srcu) #22
  tail call void @device_pm_lock() #22
  %3 = tail call fastcc i32 @device_reorder_to_tail(ptr noundef %0, ptr noundef null)
  tail call void @device_pm_unlock() #22
  %4 = icmp ugt i32 %2, 1
  %5 = load i1, ptr @srcu_read_unlock.__already_done, align 1
  %6 = xor i1 %5, true
  %7 = select i1 %4, i1 %6, i1 false
  br i1 %7, label %8, label %9, !prof !8

8:                                                ; preds = %1
  store i1 true, ptr @srcu_read_unlock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.30, i32 noundef 189, i32 noundef 9, ptr noundef null) #22
  br label %9

9:                                                ; preds = %8, %1
  tail call void @__srcu_read_unlock(ptr noundef nonnull @device_links_srcu, i32 noundef %2) #22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_pm_lock() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @device_reorder_to_tail(ptr noundef %0, ptr nocapture noundef readnone %1) unnamed_addr #0 {
  %3 = alloca %struct.klist_iter, align 8
  %4 = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 7
  %5 = load i8, ptr %4, align 8
  %6 = and i8 %5, 2
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %25, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr @devices_kset, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %25, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.kset, ptr %9, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %12) #22
  %13 = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 1
  %14 = load ptr, ptr @devices_kset, align 4
  %15 = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 1, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = load ptr, ptr %13, align 4
  %18 = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  store ptr %16, ptr %18, align 4
  store volatile ptr %17, ptr %16, align 4
  %19 = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  store ptr %13, ptr %19, align 4
  store ptr %14, ptr %13, align 4
  store ptr %20, ptr %15, align 4
  store volatile ptr %13, ptr %20, align 4
  %21 = load ptr, ptr @devices_kset, align 4
  %22 = getelementptr inbounds %struct.kset, ptr %21, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !10
  %23 = load i16, ptr %22, align 4
  %24 = add i16 %23, 1
  store i16 %24, ptr %22, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #22, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #22, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !13
  br label %25

25:                                               ; preds = %11, %8, %2
  %26 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 1
  %27 = load i16, ptr %26, align 4
  %28 = and i16 %27, 4
  %29 = icmp eq i16 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %25
  tail call void @device_pm_move_last(ptr noundef %0) #22
  br label %31

31:                                               ; preds = %30, %25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #22
  store i64 0, ptr %3, align 8, !annotation !9
  %32 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 2
  %33 = load ptr, ptr %32, align 8
  %34 = icmp eq ptr %33, null
  br i1 %34, label %47, label %35

35:                                               ; preds = %31
  call void @klist_iter_init(ptr noundef nonnull %33, ptr noundef nonnull %3) #22
  br label %36

36:                                               ; preds = %43, %35
  %37 = call ptr @klist_next(ptr noundef nonnull %3) #22
  %38 = icmp eq ptr %37, null
  br i1 %38, label %46, label %39

39:                                               ; preds = %36
  %40 = getelementptr i8, ptr %37, i32 80
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %39
  %44 = call fastcc i32 @device_reorder_to_tail(ptr noundef nonnull %41, ptr noundef null) #22
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %36, label %46

46:                                               ; preds = %43, %39, %36
  call void @klist_iter_exit(ptr noundef nonnull %3) #22
  br label %47

47:                                               ; preds = %46, %31
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #22
  %48 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 10, i32 1
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, %48
  br i1 %50, label %64, label %51

51:                                               ; preds = %61, %47
  %52 = phi ptr [ %62, %61 ], [ %49, %47 ]
  %53 = getelementptr i8, ptr %52, i32 496
  %54 = load i32, ptr %53, align 4
  %55 = and i32 %54, -257
  %56 = icmp eq i32 %55, 192
  br i1 %56, label %61, label %57

57:                                               ; preds = %51
  %58 = getelementptr i8, ptr %52, i32 8
  %59 = load ptr, ptr %58, align 4
  %60 = call fastcc i32 @device_reorder_to_tail(ptr noundef %59, ptr noundef null)
  br label %61

61:                                               ; preds = %57, %51
  %62 = load ptr, ptr %52, align 4
  %63 = icmp eq ptr %62, %48
  br i1 %63, label %64, label %51

64:                                               ; preds = %61, %47
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_pm_unlock() local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @devlink_class_init() #4 section ".init.text" {
  %1 = tail call i32 @__class_register(ptr noundef nonnull @devlink_class, ptr noundef nonnull @devlink_class_init.__key) #22
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %7

3:                                                ; preds = %0
  %4 = tail call i32 @class_interface_register(ptr noundef nonnull @devlink_class_intf) #22
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void @class_unregister(ptr noundef nonnull @devlink_class) #22
  br label %7

7:                                                ; preds = %6, %3, %0
  %8 = phi i32 [ %1, %0 ], [ %4, %6 ], [ 0, %3 ]
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @device_link_add(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = icmp eq ptr %0, null
  %5 = icmp eq ptr %1, null
  %6 = or i1 %4, %5
  %7 = icmp eq ptr %0, %1
  %8 = or i1 %7, %6
  %9 = and i32 %2, -448
  %10 = icmp ne i32 %9, 0
  %11 = or i1 %8, %10
  br i1 %11, label %251, label %12

12:                                               ; preds = %3
  %13 = and i32 %2, 1
  %14 = icmp eq i32 %13, 0
  %15 = and i32 %2, 434
  %16 = icmp eq i32 %15, 0
  %17 = or i1 %14, %16
  br i1 %17, label %18, label %251

18:                                               ; preds = %12
  %19 = and i32 %2, 128
  %20 = icmp eq i32 %19, 0
  %21 = and i32 %2, -257
  %22 = icmp eq i32 %21, 128
  %23 = or i1 %20, %22
  br i1 %23, label %24, label %251

24:                                               ; preds = %18
  %25 = and i32 %2, 32
  %26 = icmp eq i32 %25, 0
  %27 = and i32 %2, 18
  %28 = icmp eq i32 %27, 0
  %29 = or i1 %26, %28
  br i1 %29, label %30, label %251

30:                                               ; preds = %24
  %31 = and i32 %2, 12
  %32 = icmp eq i32 %31, 12
  br i1 %32, label %33, label %42

33:                                               ; preds = %30
  %34 = tail call i32 @__pm_runtime_resume(ptr noundef nonnull %1, i32 noundef 4) #22
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %37) #22, !srcloc !15
  %38 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %37, ptr %37, i32 0, i32 -1, ptr elementtype(i32) %37) #22, !srcloc !16
  %39 = extractvalue { i32, i32, i32 } %38, 0
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %251, label %41

41:                                               ; preds = %36
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !17
  br label %251

42:                                               ; preds = %33, %30
  %43 = or i32 %2, 64
  %44 = select i1 %14, i32 %43, i32 %2
  tail call void @mutex_lock(ptr noundef nonnull @device_links_lock) #22
  tail call void @device_pm_lock() #22
  %45 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 11, i32 1
  %46 = load i16, ptr %45, align 4
  %47 = and i16 %46, 4
  %48 = icmp eq i16 %47, 0
  br i1 %48, label %239, label %49

49:                                               ; preds = %42
  %50 = and i32 %44, 128
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = tail call i32 @device_is_dependent(ptr noundef nonnull %0, ptr noundef nonnull %1)
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %59, label %239

55:                                               ; preds = %49
  %56 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 10, i32 3
  %57 = load i32, ptr %56, align 8
  %58 = icmp ult i32 %57, 2
  br i1 %58, label %59, label %239

59:                                               ; preds = %55, %52
  %60 = and i32 %44, 16
  %61 = icmp eq i32 %60, 0
  %62 = and i32 %44, -3
  %63 = select i1 %61, i32 %44, i32 %62
  %64 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 10, i32 1
  br label %65

65:                                               ; preds = %69, %59
  %66 = phi ptr [ %64, %59 ], [ %67, %69 ]
  %67 = load ptr, ptr %66, align 4
  %68 = icmp eq ptr %67, %64
  br i1 %68, label %144, label %69

69:                                               ; preds = %65
  %70 = getelementptr i8, ptr %67, i32 8
  %71 = load ptr, ptr %70, align 4
  %72 = icmp eq ptr %71, %0
  br i1 %72, label %73, label %65

73:                                               ; preds = %69
  %74 = getelementptr i8, ptr %67, i32 -4
  %75 = getelementptr i8, ptr %67, i32 496
  %76 = load i32, ptr %75, align 4
  %77 = and i32 %76, 256
  %78 = icmp ne i32 %77, 0
  %79 = and i32 %63, 256
  %80 = icmp eq i32 %79, 0
  %81 = select i1 %78, i1 %80, i1 false
  br i1 %81, label %82, label %84

82:                                               ; preds = %73
  %83 = and i32 %76, -257
  store i32 %83, ptr %75, align 4
  br label %84

84:                                               ; preds = %82, %73
  %85 = phi i32 [ %83, %82 ], [ %76, %73 ]
  %86 = and i32 %63, 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %99, label %88

88:                                               ; preds = %84
  %89 = and i32 %85, 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %88
  tail call void @pm_runtime_new_link(ptr noundef nonnull %0) #22
  %92 = load i32, ptr %75, align 4
  %93 = or i32 %92, 4
  store i32 %93, ptr %75, align 4
  br label %94

94:                                               ; preds = %91, %88
  %95 = and i32 %63, 8
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %99, label %97

97:                                               ; preds = %94
  %98 = getelementptr i8, ptr %67, i32 500
  tail call fastcc void @refcount_inc(ptr noundef %98)
  br label %99

99:                                               ; preds = %97, %94, %84
  %100 = and i32 %63, 1
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %108, label %102

102:                                              ; preds = %99
  %103 = getelementptr i8, ptr %67, i32 504
  tail call fastcc void @kref_get(ptr noundef %103)
  %104 = load i32, ptr %75, align 4
  %105 = and i32 %104, 129
  %106 = icmp eq i32 %105, 128
  %107 = or i32 %104, 1
  store i32 %107, ptr %75, align 4
  br i1 %106, label %236, label %239

108:                                              ; preds = %99
  %109 = and i32 %63, 16
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %118, label %111

111:                                              ; preds = %108
  %112 = load i32, ptr %75, align 4
  %113 = and i32 %112, 2
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %126, label %115

115:                                              ; preds = %111
  %116 = and i32 %112, -19
  %117 = or i32 %116, 16
  br label %124

118:                                              ; preds = %108
  %119 = and i32 %63, 2
  %120 = icmp eq i32 %119, 0
  %121 = load i32, ptr %75, align 4
  br i1 %120, label %122, label %126

122:                                              ; preds = %118
  %123 = and i32 %121, -19
  br label %124

124:                                              ; preds = %122, %115
  %125 = phi i32 [ %123, %122 ], [ %117, %115 ]
  store i32 %125, ptr %75, align 4
  br label %126

126:                                              ; preds = %124, %118, %111
  %127 = phi i32 [ %112, %111 ], [ %121, %118 ], [ %125, %124 ]
  %128 = and i32 %127, 64
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %135

130:                                              ; preds = %126
  %131 = getelementptr i8, ptr %67, i32 504
  tail call fastcc void @kref_get(ptr noundef %131)
  %132 = load i32, ptr %75, align 4
  %133 = or i32 %132, 64
  store i32 %133, ptr %75, align 4
  tail call fastcc void @device_link_init_status(ptr noundef %74, ptr noundef nonnull %0, ptr noundef nonnull %1)
  %134 = load i32, ptr %75, align 4
  br label %135

135:                                              ; preds = %130, %126
  %136 = phi i32 [ %134, %130 ], [ %127, %126 ]
  %137 = and i32 %136, 128
  %138 = icmp ne i32 %137, 0
  %139 = and i32 %63, 128
  %140 = icmp eq i32 %139, 0
  %141 = select i1 %138, i1 %140, i1 false
  br i1 %141, label %142, label %239

142:                                              ; preds = %135
  %143 = and i32 %136, -129
  store i32 %143, ptr %75, align 4
  br label %236

144:                                              ; preds = %65
  %145 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %146 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %145, i32 noundef 3520, i32 noundef 536) #23
  %147 = icmp eq ptr %146, null
  br i1 %147, label %239, label %148

148:                                              ; preds = %144
  %149 = getelementptr inbounds %struct.device_link, ptr %146, i32 0, i32 7
  store volatile i32 1, ptr %149, align 8
  %150 = tail call ptr @kobject_get(ptr noundef nonnull %1) #22
  store ptr %1, ptr %146, align 8
  %151 = getelementptr inbounds %struct.device_link, ptr %146, i32 0, i32 1
  store volatile ptr %151, ptr %151, align 4
  %152 = getelementptr inbounds %struct.device_link, ptr %146, i32 0, i32 1, i32 1
  store ptr %151, ptr %152, align 8
  %153 = tail call ptr @kobject_get(ptr noundef nonnull %0) #22
  %154 = getelementptr inbounds %struct.device_link, ptr %146, i32 0, i32 2
  store ptr %0, ptr %154, align 4
  %155 = getelementptr inbounds %struct.device_link, ptr %146, i32 0, i32 3
  store volatile ptr %155, ptr %155, align 8
  %156 = getelementptr inbounds %struct.device_link, ptr %146, i32 0, i32 3, i32 1
  store ptr %155, ptr %156, align 4
  %157 = getelementptr inbounds %struct.device_link, ptr %146, i32 0, i32 6
  store i32 %63, ptr %157, align 4
  %158 = getelementptr inbounds %struct.device_link, ptr %146, i32 0, i32 8
  store volatile i32 1, ptr %158, align 4
  %159 = getelementptr inbounds %struct.device_link, ptr %146, i32 0, i32 4
  %160 = getelementptr inbounds %struct.device_link, ptr %146, i32 0, i32 4, i32 31
  store ptr @devlink_class, ptr %160, align 4
  %161 = getelementptr inbounds %struct.device_link, ptr %146, i32 0, i32 4, i32 11, i32 1
  %162 = load i16, ptr %161, align 4
  %163 = or i16 %162, 128
  store i16 %163, ptr %161, align 4
  %164 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 5
  %165 = load ptr, ptr %164, align 4
  %166 = icmp eq ptr %165, null
  br i1 %166, label %167, label %171

167:                                              ; preds = %148
  %168 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 31
  %169 = load ptr, ptr %168, align 4
  %170 = icmp eq ptr %169, null
  br i1 %170, label %174, label %171

171:                                              ; preds = %167, %148
  %172 = phi ptr [ %165, %148 ], [ %169, %167 ]
  %173 = load ptr, ptr %172, align 4
  br label %174

174:                                              ; preds = %171, %167
  %175 = phi ptr [ @.str.52, %167 ], [ %173, %171 ]
  %176 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 3
  %177 = load ptr, ptr %176, align 4
  %178 = icmp eq ptr %177, null
  br i1 %178, label %179, label %181

179:                                              ; preds = %174
  %180 = load ptr, ptr %1, align 4
  br label %181

181:                                              ; preds = %179, %174
  %182 = phi ptr [ %180, %179 ], [ %177, %174 ]
  %183 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 5
  %184 = load ptr, ptr %183, align 4
  %185 = icmp eq ptr %184, null
  br i1 %185, label %186, label %190

186:                                              ; preds = %181
  %187 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 31
  %188 = load ptr, ptr %187, align 4
  %189 = icmp eq ptr %188, null
  br i1 %189, label %193, label %190

190:                                              ; preds = %186, %181
  %191 = phi ptr [ %184, %181 ], [ %188, %186 ]
  %192 = load ptr, ptr %191, align 4
  br label %193

193:                                              ; preds = %190, %186
  %194 = phi ptr [ @.str.52, %186 ], [ %192, %190 ]
  %195 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3
  %196 = load ptr, ptr %195, align 4
  %197 = icmp eq ptr %196, null
  br i1 %197, label %198, label %200

198:                                              ; preds = %193
  %199 = load ptr, ptr %0, align 4
  br label %200

200:                                              ; preds = %198, %193
  %201 = phi ptr [ %199, %198 ], [ %196, %193 ]
  %202 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %159, ptr noundef nonnull @.str, ptr noundef %175, ptr noundef %182, ptr noundef %194, ptr noundef %201)
  tail call void @device_initialize(ptr noundef %159) #22
  %203 = tail call i32 @device_add(ptr noundef %159) #22
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %208, label %205

205:                                              ; preds = %200
  %206 = icmp eq ptr %159, null
  br i1 %206, label %239, label %207

207:                                              ; preds = %205
  tail call void @kobject_put(ptr noundef nonnull %159) #22
  br label %239

208:                                              ; preds = %200
  %209 = and i32 %63, 4
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %216, label %211

211:                                              ; preds = %208
  %212 = and i32 %63, 8
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %215, label %214

214:                                              ; preds = %211
  tail call fastcc void @refcount_inc(ptr noundef %149)
  br label %215

215:                                              ; preds = %214, %211
  tail call void @pm_runtime_new_link(ptr noundef nonnull %0) #22
  br label %216

216:                                              ; preds = %215, %208
  %217 = and i32 %63, 1
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %221, label %219

219:                                              ; preds = %216
  %220 = getelementptr inbounds %struct.device_link, ptr %146, i32 0, i32 5
  store i32 -1, ptr %220, align 8
  br label %228

221:                                              ; preds = %216
  tail call fastcc void @device_link_init_status(ptr noundef nonnull %146, ptr noundef nonnull %0, ptr noundef nonnull %1)
  %222 = getelementptr inbounds %struct.device_link, ptr %146, i32 0, i32 5
  %223 = load i32, ptr %222, align 8
  %224 = icmp ne i32 %223, 2
  %225 = select i1 %224, i1 true, i1 %210
  br i1 %225, label %228, label %226

226:                                              ; preds = %221
  %227 = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 0) #22
  br label %228

228:                                              ; preds = %226, %221, %219
  %229 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 10, i32 1, i32 1
  %230 = load ptr, ptr %229, align 4
  store ptr %64, ptr %151, align 4
  store ptr %230, ptr %152, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !18
  store volatile ptr %151, ptr %230, align 4
  store ptr %151, ptr %229, align 4
  %231 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 10
  %232 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 10, i32 0, i32 1
  %233 = load ptr, ptr %232, align 4
  store ptr %231, ptr %155, align 8
  store ptr %233, ptr %156, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !18
  store volatile ptr %155, ptr %233, align 4
  store ptr %155, ptr %232, align 4
  %234 = and i32 %63, 128
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %236, label %239

236:                                              ; preds = %228, %142, %102
  %237 = phi ptr [ %74, %142 ], [ %146, %228 ], [ %74, %102 ]
  %238 = tail call fastcc i32 @device_reorder_to_tail(ptr noundef nonnull %0, ptr noundef null)
  br label %239

239:                                              ; preds = %236, %228, %207, %205, %144, %135, %102, %55, %52, %42
  %240 = phi ptr [ %237, %236 ], [ %74, %135 ], [ %146, %228 ], [ null, %144 ], [ null, %52 ], [ null, %42 ], [ null, %55 ], [ null, %205 ], [ null, %207 ], [ %74, %102 ]
  %241 = phi i32 [ %63, %236 ], [ %63, %135 ], [ %63, %228 ], [ %63, %144 ], [ %44, %52 ], [ %44, %42 ], [ %44, %55 ], [ %63, %205 ], [ %63, %207 ], [ %63, %102 ]
  tail call void @device_pm_unlock() #22
  tail call void @mutex_unlock(ptr noundef nonnull @device_links_lock) #22
  %242 = and i32 %241, 4
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %251, label %244

244:                                              ; preds = %239
  %245 = and i32 %241, 8
  %246 = icmp eq i32 %245, 0
  %247 = icmp ne ptr %240, null
  %248 = select i1 %246, i1 true, i1 %247
  br i1 %248, label %251, label %249

249:                                              ; preds = %244
  %250 = tail call i32 @__pm_runtime_idle(ptr noundef %1, i32 noundef 5) #22
  br label %251

251:                                              ; preds = %249, %244, %239, %41, %36, %24, %18, %12, %3
  %252 = phi ptr [ null, %24 ], [ null, %18 ], [ null, %12 ], [ null, %3 ], [ null, %249 ], [ %240, %244 ], [ %240, %239 ], [ null, %36 ], [ null, %41 ]
  ret ptr %252
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_new_link(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @refcount_inc(ptr noundef %0) unnamed_addr #5 {
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #22, !srcloc !15
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 1, ptr elementtype(i32) %0) #22, !srcloc !19
  %3 = extractvalue { i32, i32, i32 } %2, 0
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %9, label %5, !prof !8

5:                                                ; preds = %1
  %6 = add i32 %3, 1
  %7 = or i32 %6, %3
  %8 = icmp sgt i32 %7, -1
  br i1 %8, label %11, label %9, !prof !20

9:                                                ; preds = %5, %1
  %10 = phi i32 [ 2, %1 ], [ 1, %5 ]
  tail call void @refcount_warn_saturate(ptr noundef %0, i32 noundef %10) #22
  br label %11

11:                                               ; preds = %9, %5
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @kref_get(ptr noundef %0) unnamed_addr #5 {
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #22, !srcloc !15
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 1, ptr elementtype(i32) %0) #22, !srcloc !19
  %3 = extractvalue { i32, i32, i32 } %2, 0
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %9, label %5, !prof !8

5:                                                ; preds = %1
  %6 = add i32 %3, 1
  %7 = or i32 %6, %3
  %8 = icmp sgt i32 %7, -1
  br i1 %8, label %11, label %9, !prof !20

9:                                                ; preds = %5, %1
  %10 = phi i32 [ 2, %1 ], [ 1, %5 ]
  tail call void @refcount_warn_saturate(ptr noundef %0, i32 noundef %10) #22
  br label %11

11:                                               ; preds = %9, %5
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal fastcc void @device_link_init_status(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #6 {
  %4 = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 10, i32 3
  %5 = load i32, ptr %4, align 8
  switch i32 %5, label %24 [
    i32 1, label %6
    i32 2, label %13
    i32 3, label %22
  ]

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 10, i32 3
  %8 = load i32, ptr %7, align 8
  %9 = icmp eq i32 %8, 1
  %10 = getelementptr inbounds %struct.device_link, ptr %0, i32 0, i32 5
  br i1 %9, label %11, label %12

11:                                               ; preds = %6
  store i32 2, ptr %10, align 8
  br label %26

12:                                               ; preds = %6
  store i32 0, ptr %10, align 8
  br label %26

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 10, i32 3
  %15 = load i32, ptr %14, align 8
  switch i32 %15, label %20 [
    i32 1, label %16
    i32 2, label %18
  ]

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.device_link, ptr %0, i32 0, i32 5
  store i32 2, ptr %17, align 8
  br label %26

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.device_link, ptr %0, i32 0, i32 5
  store i32 3, ptr %19, align 8
  br label %26

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.device_link, ptr %0, i32 0, i32 5
  store i32 1, ptr %21, align 8
  br label %26

22:                                               ; preds = %3
  %23 = getelementptr inbounds %struct.device_link, ptr %0, i32 0, i32 5
  store i32 4, ptr %23, align 8
  br label %26

24:                                               ; preds = %3
  %25 = getelementptr inbounds %struct.device_link, ptr %0, i32 0, i32 5
  store i32 0, ptr %25, align 8
  br label %26

26:                                               ; preds = %24, %22, %20, %18, %16, %12, %11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @get_device(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = tail call ptr @kobject_get(ptr noundef nonnull %0) #22
  br label %5

5:                                                ; preds = %3, %1
  %6 = phi ptr [ %4, %3 ], [ null, %1 ]
  ret ptr %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dev_set_name(ptr noundef %0, ptr noundef %1, ...) #0 {
  %3 = alloca %struct.__va_list, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #22
  store i32 0, ptr %3, align 4, !annotation !9
  call void @llvm.va_start(ptr nonnull %3)
  %4 = load i32, ptr %3, align 4
  %5 = insertvalue [1 x i32] poison, i32 %4, 0
  %6 = call i32 @kobject_set_name_vargs(ptr noundef %0, ptr noundef %1, [1 x i32] %5) #22
  call void @llvm.va_end(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #22
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @device_register(ptr noundef %0) #0 {
  tail call void @device_initialize(ptr noundef %0)
  %2 = tail call i32 @device_add(ptr noundef %0)
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @put_device(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %1
  tail call void @kobject_put(ptr noundef nonnull %0) #22
  br label %4

4:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @device_link_del(ptr noundef %0) #0 {
  tail call void @mutex_lock(ptr noundef nonnull @device_links_lock) #22
  tail call fastcc void @device_link_put_kref(ptr noundef %0)
  tail call void @mutex_unlock(ptr noundef nonnull @device_links_lock) #22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @device_link_put_kref(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.device_link, ptr %0, i32 0, i32 6
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %28, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.device_link, ptr %0, i32 0, i32 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !21
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %7) #22, !srcloc !15
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %7, ptr %7, i32 1, ptr elementtype(i32) %7) #22, !srcloc !22
  %9 = extractvalue { i32, i32, i32 } %8, 0
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %14, label %11

11:                                               ; preds = %6
  %12 = icmp sgt i32 %9, 0
  br i1 %12, label %50, label %13, !prof !20

13:                                               ; preds = %11
  tail call void @refcount_warn_saturate(ptr noundef %7, i32 noundef 3) #22
  br label %50

14:                                               ; preds = %6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !23
  tail call void @pm_runtime_drop_link(ptr noundef %0) #22
  %15 = getelementptr %struct.device_link, ptr %0, i32 0, i32 1
  %16 = getelementptr %struct.device_link, ptr %0, i32 0, i32 1, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = load ptr, ptr %15, align 4
  %19 = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  store ptr %17, ptr %19, align 4
  store volatile ptr %18, ptr %17, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %16, align 4
  %20 = getelementptr %struct.device_link, ptr %0, i32 0, i32 3
  %21 = getelementptr %struct.device_link, ptr %0, i32 0, i32 3, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = load ptr, ptr %20, align 4
  %24 = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  store ptr %22, ptr %24, align 4
  store volatile ptr %23, ptr %22, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %21, align 4
  %25 = getelementptr %struct.device_link, ptr %0, i32 0, i32 4
  tail call void @device_del(ptr noundef %25) #22
  %26 = icmp eq ptr %25, null
  br i1 %26, label %50, label %27

27:                                               ; preds = %14
  tail call void @kobject_put(ptr noundef nonnull %25) #22
  br label %50

28:                                               ; preds = %1
  %29 = getelementptr inbounds %struct.device_link, ptr %0, i32 0, i32 2
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.kobject, ptr %30, i32 0, i32 7
  %32 = load i8, ptr %31, align 8
  %33 = and i8 %32, 2
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %49

35:                                               ; preds = %28
  tail call void @pm_runtime_drop_link(ptr noundef %0) #22
  %36 = getelementptr %struct.device_link, ptr %0, i32 0, i32 1
  %37 = getelementptr %struct.device_link, ptr %0, i32 0, i32 1, i32 1
  %38 = load ptr, ptr %37, align 4
  %39 = load ptr, ptr %36, align 4
  %40 = getelementptr inbounds %struct.list_head, ptr %39, i32 0, i32 1
  store ptr %38, ptr %40, align 4
  store volatile ptr %39, ptr %38, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %37, align 4
  %41 = getelementptr %struct.device_link, ptr %0, i32 0, i32 3
  %42 = getelementptr %struct.device_link, ptr %0, i32 0, i32 3, i32 1
  %43 = load ptr, ptr %42, align 4
  %44 = load ptr, ptr %41, align 4
  %45 = getelementptr inbounds %struct.list_head, ptr %44, i32 0, i32 1
  store ptr %43, ptr %45, align 4
  store volatile ptr %44, ptr %43, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %42, align 4
  %46 = getelementptr %struct.device_link, ptr %0, i32 0, i32 4
  tail call void @device_del(ptr noundef %46) #22
  %47 = icmp eq ptr %46, null
  br i1 %47, label %50, label %48

48:                                               ; preds = %35
  tail call void @kobject_put(ptr noundef nonnull %46) #22
  br label %50

49:                                               ; preds = %28
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 902, i32 noundef 9, ptr noundef nonnull @.str.53) #22
  br label %50

50:                                               ; preds = %49, %48, %35, %27, %14, %13, %11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @device_link_remove(ptr noundef readnone %0, ptr noundef readonly %1) #0 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %4, label %5, !prof !8

4:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 934, i32 noundef 9, ptr noundef null) #22
  br label %18

5:                                                ; preds = %2
  tail call void @mutex_lock(ptr noundef nonnull @device_links_lock) #22
  %6 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 10, i32 1
  br label %7

7:                                                ; preds = %11, %5
  %8 = phi ptr [ %6, %5 ], [ %9, %11 ]
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, %6
  br i1 %10, label %17, label %11

11:                                               ; preds = %7
  %12 = getelementptr i8, ptr %9, i32 8
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, %0
  br i1 %14, label %15, label %7

15:                                               ; preds = %11
  %16 = getelementptr i8, ptr %9, i32 -4
  tail call fastcc void @device_link_put_kref(ptr noundef %16)
  br label %17

17:                                               ; preds = %15, %7
  tail call void @mutex_unlock(ptr noundef nonnull @device_links_lock) #22
  br label %18

18:                                               ; preds = %17, %4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @device_links_check_suppliers(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @mutex_lock(ptr noundef nonnull @fwnode_link_lock) #22
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 26
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %16, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.fwnode_handle, ptr %3, i32 0, i32 3
  %7 = load volatile ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %6
  %9 = load i32, ptr @fw_devlink_flags, align 4
  %10 = icmp eq i32 %9, 384
  %11 = select i1 %8, i1 true, i1 %10
  br i1 %11, label %16, label %12

12:                                               ; preds = %5
  %13 = getelementptr i8, ptr %7, i32 -16
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %0, i32 noundef -517, ptr noundef nonnull @.str.2, ptr noundef %14)
  br label %76

16:                                               ; preds = %5, %1
  tail call void @mutex_unlock(ptr noundef nonnull @fwnode_link_lock) #22
  tail call void @mutex_lock(ptr noundef nonnull @device_links_lock) #22
  %17 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 10
  %18 = load ptr, ptr %17, align 8
  %19 = icmp eq ptr %18, %17
  br i1 %19, label %73, label %20

20:                                               ; preds = %70, %16
  %21 = phi ptr [ %71, %70 ], [ %18, %16 ]
  %22 = getelementptr i8, ptr %21, i32 484
  %23 = load i32, ptr %22, align 4
  %24 = and i32 %23, 64
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %70, label %26

26:                                               ; preds = %20
  %27 = getelementptr i8, ptr %21, i32 480
  %28 = load i32, ptr %27, align 8
  %29 = icmp ne i32 %28, 1
  %30 = and i32 %23, 128
  %31 = icmp eq i32 %30, 0
  %32 = select i1 %29, i1 %31, i1 false
  br i1 %32, label %33, label %69

33:                                               ; preds = %26
  %34 = getelementptr i8, ptr %21, i32 -16
  %35 = load ptr, ptr %17, align 8
  %36 = icmp eq ptr %35, %17
  br i1 %36, label %59, label %37

37:                                               ; preds = %56, %33
  %38 = phi ptr [ %57, %56 ], [ %35, %33 ]
  %39 = getelementptr i8, ptr %38, i32 480
  %40 = load i32, ptr %39, align 8
  %41 = icmp eq i32 %40, 2
  br i1 %41, label %42, label %56

42:                                               ; preds = %37
  %43 = getelementptr i8, ptr %38, i32 -16
  %44 = load ptr, ptr %43, align 8
  %45 = getelementptr inbounds %struct.device, ptr %44, i32 0, i32 10, i32 3
  %46 = load i32, ptr %45, align 8
  %47 = icmp eq i32 %46, 2
  br i1 %47, label %54, label %48

48:                                               ; preds = %42
  %49 = getelementptr i8, ptr %38, i32 484
  %50 = load i32, ptr %49, align 4
  %51 = and i32 %50, 128
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %54, !prof !8

53:                                               ; preds = %48
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 961, i32 noundef 9, ptr noundef null) #22
  br label %54

54:                                               ; preds = %53, %48, %42
  %55 = phi i32 [ 1, %42 ], [ 0, %53 ], [ 0, %48 ]
  store volatile i32 %55, ptr %39, align 8
  br label %56

56:                                               ; preds = %54, %37
  %57 = load ptr, ptr %38, align 8
  %58 = icmp eq ptr %57, %17
  br i1 %58, label %59, label %37

59:                                               ; preds = %56, %33
  %60 = load ptr, ptr %34, align 8
  %61 = getelementptr inbounds %struct.device, ptr %60, i32 0, i32 3
  %62 = load ptr, ptr %61, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %66

64:                                               ; preds = %59
  %65 = load ptr, ptr %60, align 4
  br label %66

66:                                               ; preds = %64, %59
  %67 = phi ptr [ %65, %64 ], [ %62, %59 ]
  %68 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %0, i32 noundef -517, ptr noundef nonnull @.str.3, ptr noundef %67)
  br label %73

69:                                               ; preds = %26
  store volatile i32 2, ptr %27, align 8
  br label %70

70:                                               ; preds = %69, %20
  %71 = load ptr, ptr %21, align 8
  %72 = icmp eq ptr %71, %17
  br i1 %72, label %73, label %20

73:                                               ; preds = %70, %66, %16
  %74 = phi i32 [ -517, %66 ], [ 0, %16 ], [ 0, %70 ]
  %75 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 10, i32 3
  store i32 1, ptr %75, align 8
  br label %76

76:                                               ; preds = %73, %12
  %77 = phi ptr [ @device_links_lock, %73 ], [ @fwnode_link_lock, %12 ]
  %78 = phi i32 [ %74, %73 ], [ -517, %12 ]
  tail call void @mutex_unlock(ptr noundef nonnull %77) #22
  ret i32 %78
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dev_err_probe(ptr noundef %0, i32 noundef returned %1, ptr noundef %2, ...) #0 {
  %4 = alloca %struct.va_format, align 8
  %5 = alloca %struct.__va_list, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #22
  store i32 0, ptr %5, align 4, !annotation !9
  call void @llvm.va_start(ptr nonnull %5)
  store ptr %2, ptr %4, align 8
  %6 = getelementptr inbounds %struct.va_format, ptr %4, i32 0, i32 1
  store ptr %5, ptr %6, align 4
  %7 = icmp eq i32 %1, -517
  br i1 %7, label %10, label %8

8:                                                ; preds = %3
  %9 = inttoptr i32 %1 to ptr
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.29, ptr noundef %9, ptr noundef nonnull %4) #24
  br label %11

10:                                               ; preds = %3
  call void @device_set_deferred_probe_reason(ptr noundef %0, ptr noundef nonnull %4) #22
  br label %11

11:                                               ; preds = %10, %8
  call void @llvm.va_end(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #22
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @device_links_supplier_sync_state_pause() local_unnamed_addr #0 {
  tail call void @mutex_lock(ptr noundef nonnull @device_links_lock) #22
  %1 = load i32, ptr @defer_sync_state_count, align 4
  %2 = add i32 %1, 1
  store i32 %2, ptr @defer_sync_state_count, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @device_links_lock) #22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @device_links_supplier_sync_state_resume() local_unnamed_addr #0 {
  %1 = alloca %struct.list_head, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #22
  store ptr %1, ptr %1, align 8
  %2 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  store ptr %1, ptr %2, align 4
  call void @mutex_lock(ptr noundef nonnull @device_links_lock) #22
  %3 = load i32, ptr @defer_sync_state_count, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1125, i32 noundef 9, ptr noundef nonnull @.str.4) #22
  br label %20

6:                                                ; preds = %0
  %7 = add i32 %3, -1
  store i32 %7, ptr @defer_sync_state_count, align 4
  %8 = icmp ne i32 %7, 0
  %9 = load ptr, ptr @deferred_sync, align 4
  %10 = icmp eq ptr %9, @deferred_sync
  %11 = select i1 %8, i1 true, i1 %10
  br i1 %11, label %20, label %12

12:                                               ; preds = %12, %6
  %13 = phi ptr [ %15, %12 ], [ %9, %6 ]
  %14 = getelementptr i8, ptr %13, i32 -104
  %15 = load ptr, ptr %13, align 8
  %16 = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  store ptr %17, ptr %18, align 4
  store volatile ptr %15, ptr %17, align 4
  store volatile ptr %13, ptr %13, align 4
  store ptr %13, ptr %16, align 4
  call fastcc void @__device_links_queue_sync_state(ptr noundef %14, ptr noundef nonnull %1)
  %19 = icmp eq ptr %15, @deferred_sync
  br i1 %19, label %20, label %12

20:                                               ; preds = %12, %6, %5
  call void @mutex_unlock(ptr noundef nonnull @device_links_lock) #22
  %21 = load ptr, ptr %1, align 8
  %22 = icmp eq ptr %21, %1
  br i1 %22, label %54, label %23

23:                                               ; preds = %52, %20
  %24 = phi ptr [ %26, %52 ], [ %21, %20 ]
  %25 = getelementptr i8, ptr %24, i32 -104
  %26 = load ptr, ptr %24, align 8
  %27 = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  store ptr %28, ptr %29, align 4
  store volatile ptr %26, ptr %28, align 4
  store volatile ptr %24, ptr %24, align 4
  store ptr %24, ptr %27, align 4
  %30 = icmp eq ptr %25, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %23
  %32 = getelementptr i8, ptr %24, i32 -36
  call void @mutex_lock(ptr noundef %32) #22
  br label %33

33:                                               ; preds = %31, %23
  %34 = getelementptr i8, ptr %24, i32 -52
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.bus_type, ptr %35, i32 0, i32 9
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %47

39:                                               ; preds = %33
  %40 = getelementptr i8, ptr %24, i32 -48
  %41 = load ptr, ptr %40, align 8
  %42 = icmp eq ptr %41, null
  br i1 %42, label %49, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.device_driver, ptr %41, i32 0, i32 9
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %49, label %47

47:                                               ; preds = %43, %33
  %48 = phi ptr [ %37, %33 ], [ %45, %43 ]
  call void %48(ptr noundef %25) #22
  br label %49

49:                                               ; preds = %47, %43, %39
  br i1 %30, label %52, label %50

50:                                               ; preds = %49
  %51 = getelementptr i8, ptr %24, i32 -36
  call void @mutex_unlock(ptr noundef %51) #22
  call void @kobject_put(ptr noundef nonnull %25) #22
  br label %52

52:                                               ; preds = %50, %49
  %53 = icmp eq ptr %26, %1
  br i1 %53, label %54, label %23

54:                                               ; preds = %52, %20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #22
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__device_links_queue_sync_state(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %53, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 6
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.device_driver, ptr %6, i32 0, i32 9
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %20

12:                                               ; preds = %8, %4
  %13 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 5
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %53, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.bus_type, ptr %14, i32 0, i32 9
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %53, label %20

20:                                               ; preds = %16, %8
  %21 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 37
  %22 = load i8, ptr %21, align 4
  %23 = and i8 %22, 8
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %53

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 10, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, %26
  br i1 %28, label %42, label %29

29:                                               ; preds = %39, %25
  %30 = phi ptr [ %40, %39 ], [ %27, %25 ]
  %31 = getelementptr i8, ptr %30, i32 496
  %32 = load i32, ptr %31, align 4
  %33 = and i32 %32, 64
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %29
  %36 = getelementptr i8, ptr %30, i32 492
  %37 = load i32, ptr %36, align 8
  %38 = icmp eq i32 %37, 3
  br i1 %38, label %39, label %53

39:                                               ; preds = %35, %29
  %40 = load ptr, ptr %30, align 4
  %41 = icmp eq ptr %40, %26
  br i1 %41, label %42, label %29

42:                                               ; preds = %39, %25
  %43 = or i8 %22, 8
  store i8 %43, ptr %21, align 4
  %44 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 10, i32 2
  %45 = load volatile ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, %44
  br i1 %46, label %48, label %47, !prof !20

47:                                               ; preds = %42
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1071, i32 noundef 9, ptr noundef null) #22
  br label %53

48:                                               ; preds = %42
  %49 = tail call ptr @kobject_get(ptr noundef nonnull %0) #22
  %50 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %51 = load ptr, ptr %50, align 4
  store ptr %44, ptr %50, align 4
  store ptr %1, ptr %44, align 4
  %52 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 10, i32 2, i32 1
  store ptr %51, ptr %52, align 4
  store volatile ptr %44, ptr %51, align 4
  br label %53

53:                                               ; preds = %48, %47, %35, %20, %16, %12, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sync_state_resume_initcall() #0 {
  tail call void @device_links_supplier_sync_state_resume()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @device_links_force_bind(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @mutex_lock(ptr noundef nonnull @device_links_lock) #22
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 10
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %21, label %5

5:                                                ; preds = %19, %1
  %6 = phi ptr [ %8, %19 ], [ %3, %1 ]
  %7 = getelementptr i8, ptr %6, i32 -16
  %8 = load ptr, ptr %6, align 8
  %9 = getelementptr i8, ptr %6, i32 484
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 64
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %5
  %14 = getelementptr i8, ptr %6, i32 480
  %15 = load i32, ptr %14, align 8
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  tail call fastcc void @device_link_drop_managed(ptr noundef %7)
  br label %19

18:                                               ; preds = %13
  store volatile i32 2, ptr %14, align 8
  br label %19

19:                                               ; preds = %18, %17, %5
  %20 = icmp eq ptr %8, %2
  br i1 %20, label %21, label %5

21:                                               ; preds = %19, %1
  %22 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 10, i32 3
  store i32 1, ptr %22, align 8
  tail call void @mutex_unlock(ptr noundef nonnull @device_links_lock) #22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @device_link_drop_managed(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.device_link, ptr %0, i32 0, i32 6
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, -65
  store i32 %4, ptr %2, align 4
  %5 = getelementptr inbounds %struct.device_link, ptr %0, i32 0, i32 5
  store volatile i32 -1, ptr %5, align 8
  %6 = getelementptr inbounds %struct.device_link, ptr %0, i32 0, i32 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !21
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %6) #22, !srcloc !15
  %7 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %6, ptr %6, i32 1, ptr elementtype(i32) %6) #22, !srcloc !22
  %8 = extractvalue { i32, i32, i32 } %7, 0
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = icmp sgt i32 %8, 0
  br i1 %11, label %27, label %12, !prof !20

12:                                               ; preds = %10
  tail call void @refcount_warn_saturate(ptr noundef %6, i32 noundef 3) #22
  br label %27

13:                                               ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !23
  tail call void @pm_runtime_drop_link(ptr noundef %0) #22
  %14 = getelementptr %struct.device_link, ptr %0, i32 0, i32 1
  %15 = getelementptr %struct.device_link, ptr %0, i32 0, i32 1, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = load ptr, ptr %14, align 4
  %18 = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  store ptr %16, ptr %18, align 4
  store volatile ptr %17, ptr %16, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %15, align 4
  %19 = getelementptr %struct.device_link, ptr %0, i32 0, i32 3
  %20 = getelementptr %struct.device_link, ptr %0, i32 0, i32 3, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = load ptr, ptr %19, align 4
  %23 = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  store ptr %21, ptr %23, align 4
  store volatile ptr %22, ptr %21, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %20, align 4
  %24 = getelementptr %struct.device_link, ptr %0, i32 0, i32 4
  tail call void @device_del(ptr noundef %24) #22
  %25 = icmp eq ptr %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %13
  tail call void @kobject_put(ptr noundef nonnull %24) #22
  br label %27

27:                                               ; preds = %26, %13, %12, %10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @device_links_driver_bound(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.list_head, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #22
  store ptr %2, ptr %2, align 8
  %3 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  store ptr %2, ptr %3, align 4
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 26
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %38, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.fwnode_handle, ptr %5, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, %0
  br i1 %10, label %11, label %38

11:                                               ; preds = %7
  call void @mutex_lock(ptr noundef nonnull @fwnode_link_lock) #22
  %12 = getelementptr inbounds %struct.fwnode_handle, ptr %5, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, %12
  br i1 %14, label %29, label %15

15:                                               ; preds = %15, %11
  %16 = phi ptr [ %18, %15 ], [ %13, %11 ]
  %17 = getelementptr i8, ptr %16, i32 -16
  %18 = load ptr, ptr %16, align 4
  %19 = getelementptr i8, ptr %16, i32 -12
  %20 = getelementptr i8, ptr %16, i32 -8
  %21 = load ptr, ptr %20, align 4
  %22 = load ptr, ptr %19, align 4
  %23 = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  store ptr %21, ptr %23, align 4
  store volatile ptr %22, ptr %21, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %19, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %20, align 4
  %24 = getelementptr i8, ptr %16, i32 4
  %25 = load ptr, ptr %24, align 4
  %26 = load ptr, ptr %16, align 4
  %27 = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  store ptr %25, ptr %27, align 4
  store volatile ptr %26, ptr %25, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %16, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %24, align 4
  call void @kfree(ptr noundef %17) #22
  %28 = icmp eq ptr %18, %12
  br i1 %28, label %29, label %15

29:                                               ; preds = %15, %11
  call void @mutex_unlock(ptr noundef nonnull @fwnode_link_lock) #22
  %30 = load ptr, ptr %4, align 4
  %31 = call ptr @fwnode_get_next_available_child_node(ptr noundef %30, ptr noundef null) #22
  %32 = icmp eq ptr %31, null
  br i1 %32, label %38, label %33

33:                                               ; preds = %33, %29
  %34 = phi ptr [ %36, %33 ], [ %31, %29 ]
  call void @fw_devlink_purge_absent_suppliers(ptr noundef nonnull %34)
  %35 = load ptr, ptr %4, align 4
  %36 = call ptr @fwnode_get_next_available_child_node(ptr noundef %35, ptr noundef nonnull %34) #22
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %33

38:                                               ; preds = %33, %29, %7, %1
  %39 = icmp eq ptr %0, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %38
  call void @sysfs_remove_file_ns(ptr noundef nonnull %0, ptr noundef nonnull @dev_attr_waiting_for_supplier, ptr noundef null) #22
  br label %41

41:                                               ; preds = %40, %38
  call void @mutex_lock(ptr noundef nonnull @device_links_lock) #22
  %42 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 10
  %43 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 10, i32 1
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, %43
  br i1 %45, label %66, label %46

46:                                               ; preds = %63, %41
  %47 = phi ptr [ %64, %63 ], [ %44, %41 ]
  %48 = getelementptr i8, ptr %47, i32 496
  %49 = load i32, ptr %48, align 4
  %50 = and i32 %49, 64
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %63, label %52

52:                                               ; preds = %46
  %53 = getelementptr i8, ptr %47, i32 492
  %54 = load i32, ptr %53, align 8
  switch i32 %54, label %55 [
    i32 2, label %63
    i32 3, label %63
    i32 0, label %56
  ], !prof !24

55:                                               ; preds = %52
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1265, i32 noundef 9, ptr noundef null) #22
  br label %56

56:                                               ; preds = %55, %52
  store volatile i32 1, ptr %53, align 8
  %57 = load i32, ptr %48, align 4
  %58 = and i32 %57, 32
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %56
  %61 = getelementptr i8, ptr %47, i32 8
  %62 = load ptr, ptr %61, align 4
  call void @driver_deferred_probe_add(ptr noundef %62) #22
  br label %63

63:                                               ; preds = %60, %56, %52, %52, %46
  %64 = load ptr, ptr %47, align 4
  %65 = icmp eq ptr %64, %43
  br i1 %65, label %66, label %46

66:                                               ; preds = %63, %41
  %67 = load i32, ptr @defer_sync_state_count, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %93, label %69

69:                                               ; preds = %66
  %70 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 10, i32 2
  %71 = load volatile ptr, ptr %70, align 4
  %72 = icmp ne ptr %71, %70
  %73 = or i1 %39, %72
  br i1 %73, label %94, label %74

74:                                               ; preds = %69
  %75 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 6
  %76 = load ptr, ptr %75, align 8
  %77 = icmp eq ptr %76, null
  br i1 %77, label %82, label %78

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.device_driver, ptr %76, i32 0, i32 9
  %80 = load ptr, ptr %79, align 4
  %81 = icmp eq ptr %80, null
  br i1 %81, label %82, label %90

82:                                               ; preds = %78, %74
  %83 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 5
  %84 = load ptr, ptr %83, align 4
  %85 = icmp eq ptr %84, null
  br i1 %85, label %94, label %86

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct.bus_type, ptr %84, i32 0, i32 9
  %88 = load ptr, ptr %87, align 4
  %89 = icmp eq ptr %88, null
  br i1 %89, label %94, label %90

90:                                               ; preds = %86, %78
  %91 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @deferred_sync, i32 0, i32 1), align 4
  store ptr %70, ptr getelementptr inbounds (%struct.list_head, ptr @deferred_sync, i32 0, i32 1), align 4
  store ptr @deferred_sync, ptr %70, align 4
  %92 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 10, i32 2, i32 1
  store ptr %91, ptr %92, align 4
  store volatile ptr %70, ptr %91, align 4
  br label %94

93:                                               ; preds = %66
  call fastcc void @__device_links_queue_sync_state(ptr noundef %0, ptr noundef nonnull %2)
  br label %94

94:                                               ; preds = %93, %90, %86, %82, %69
  %95 = load ptr, ptr %42, align 8
  %96 = icmp eq ptr %95, %42
  br i1 %96, label %147, label %97

97:                                               ; preds = %145, %94
  %98 = phi ptr [ %100, %145 ], [ %95, %94 ]
  %99 = getelementptr i8, ptr %98, i32 -16
  %100 = load ptr, ptr %98, align 8
  %101 = getelementptr i8, ptr %98, i32 484
  %102 = load i32, ptr %101, align 4
  %103 = and i32 %102, 64
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %145, label %105

105:                                              ; preds = %97
  %106 = load ptr, ptr %99, align 8
  %107 = and i32 %102, 128
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %110, label %109

109:                                              ; preds = %105
  call fastcc void @device_link_drop_managed(ptr noundef %99)
  br label %116

110:                                              ; preds = %105
  %111 = getelementptr i8, ptr %98, i32 480
  %112 = load i32, ptr %111, align 8
  %113 = icmp eq i32 %112, 2
  br i1 %113, label %115, label %114, !prof !20

114:                                              ; preds = %110
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1292, i32 noundef 9, ptr noundef null) #22
  br label %115

115:                                              ; preds = %114, %110
  store volatile i32 3, ptr %111, align 8
  br label %116

116:                                              ; preds = %115, %109
  %117 = load i32, ptr @defer_sync_state_count, align 4
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %144, label %119

119:                                              ; preds = %116
  %120 = getelementptr inbounds %struct.device, ptr %106, i32 0, i32 10, i32 2
  %121 = load volatile ptr, ptr %120, align 4
  %122 = icmp ne ptr %121, %120
  %123 = icmp eq ptr %106, null
  %124 = or i1 %123, %122
  br i1 %124, label %145, label %125

125:                                              ; preds = %119
  %126 = getelementptr inbounds %struct.device, ptr %106, i32 0, i32 6
  %127 = load ptr, ptr %126, align 8
  %128 = icmp eq ptr %127, null
  br i1 %128, label %133, label %129

129:                                              ; preds = %125
  %130 = getelementptr inbounds %struct.device_driver, ptr %127, i32 0, i32 9
  %131 = load ptr, ptr %130, align 4
  %132 = icmp eq ptr %131, null
  br i1 %132, label %133, label %141

133:                                              ; preds = %129, %125
  %134 = getelementptr inbounds %struct.device, ptr %106, i32 0, i32 5
  %135 = load ptr, ptr %134, align 4
  %136 = icmp eq ptr %135, null
  br i1 %136, label %145, label %137

137:                                              ; preds = %133
  %138 = getelementptr inbounds %struct.bus_type, ptr %135, i32 0, i32 9
  %139 = load ptr, ptr %138, align 4
  %140 = icmp eq ptr %139, null
  br i1 %140, label %145, label %141

141:                                              ; preds = %137, %129
  %142 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @deferred_sync, i32 0, i32 1), align 4
  store ptr %120, ptr getelementptr inbounds (%struct.list_head, ptr @deferred_sync, i32 0, i32 1), align 4
  store ptr @deferred_sync, ptr %120, align 4
  %143 = getelementptr inbounds %struct.device, ptr %106, i32 0, i32 10, i32 2, i32 1
  store ptr %142, ptr %143, align 4
  store volatile ptr %120, ptr %142, align 4
  br label %145

144:                                              ; preds = %116
  call fastcc void @__device_links_queue_sync_state(ptr noundef %106, ptr noundef nonnull %2)
  br label %145

145:                                              ; preds = %144, %141, %137, %133, %119, %97
  %146 = icmp eq ptr %100, %42
  br i1 %146, label %147, label %97

147:                                              ; preds = %145, %94
  %148 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 10, i32 3
  store i32 2, ptr %148, align 8
  call void @mutex_unlock(ptr noundef nonnull @device_links_lock) #22
  %149 = load ptr, ptr %2, align 8
  %150 = icmp eq ptr %149, %2
  br i1 %150, label %185, label %151

151:                                              ; preds = %183, %147
  %152 = phi ptr [ %154, %183 ], [ %149, %147 ]
  %153 = getelementptr i8, ptr %152, i32 -104
  %154 = load ptr, ptr %152, align 8
  %155 = getelementptr inbounds %struct.list_head, ptr %152, i32 0, i32 1
  %156 = load ptr, ptr %155, align 4
  %157 = getelementptr inbounds %struct.list_head, ptr %154, i32 0, i32 1
  store ptr %156, ptr %157, align 4
  store volatile ptr %154, ptr %156, align 4
  store volatile ptr %152, ptr %152, align 4
  store ptr %152, ptr %155, align 4
  %158 = icmp eq ptr %153, %0
  br i1 %158, label %161, label %159

159:                                              ; preds = %151
  %160 = getelementptr i8, ptr %152, i32 -36
  call void @mutex_lock(ptr noundef %160) #22
  br label %161

161:                                              ; preds = %159, %151
  %162 = getelementptr i8, ptr %152, i32 -52
  %163 = load ptr, ptr %162, align 4
  %164 = getelementptr inbounds %struct.bus_type, ptr %163, i32 0, i32 9
  %165 = load ptr, ptr %164, align 4
  %166 = icmp eq ptr %165, null
  br i1 %166, label %167, label %175

167:                                              ; preds = %161
  %168 = getelementptr i8, ptr %152, i32 -48
  %169 = load ptr, ptr %168, align 8
  %170 = icmp eq ptr %169, null
  br i1 %170, label %177, label %171

171:                                              ; preds = %167
  %172 = getelementptr inbounds %struct.device_driver, ptr %169, i32 0, i32 9
  %173 = load ptr, ptr %172, align 4
  %174 = icmp eq ptr %173, null
  br i1 %174, label %177, label %175

175:                                              ; preds = %171, %161
  %176 = phi ptr [ %165, %161 ], [ %173, %171 ]
  call void %176(ptr noundef %153) #22
  br label %177

177:                                              ; preds = %175, %171, %167
  br i1 %158, label %180, label %178

178:                                              ; preds = %177
  %179 = getelementptr i8, ptr %152, i32 -36
  call void @mutex_unlock(ptr noundef %179) #22
  br label %180

180:                                              ; preds = %178, %177
  %181 = icmp eq ptr %153, null
  br i1 %181, label %183, label %182

182:                                              ; preds = %180
  call void @kobject_put(ptr noundef nonnull %153) #22
  br label %183

183:                                              ; preds = %182, %180
  %184 = icmp eq ptr %154, %2
  br i1 %184, label %185, label %151

185:                                              ; preds = %183, %147
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @device_remove_file(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %2
  tail call void @sysfs_remove_file_ns(ptr noundef nonnull %0, ptr noundef %1, ptr noundef null) #22
  br label %5

5:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_deferred_probe_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @device_links_no_driver(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @mutex_lock(ptr noundef nonnull @device_links_lock) #22
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 10, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %20, label %5

5:                                                ; preds = %17, %1
  %6 = phi ptr [ %18, %17 ], [ %3, %1 ]
  %7 = getelementptr i8, ptr %6, i32 496
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 64
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %5
  %12 = getelementptr i8, ptr %6, i32 492
  %13 = load i32, ptr %12, align 8
  %14 = and i32 %13, -2
  %15 = icmp eq i32 %14, 2
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  store volatile i32 0, ptr %12, align 8
  br label %17

17:                                               ; preds = %16, %11, %5
  %18 = load ptr, ptr %6, align 4
  %19 = icmp eq ptr %18, %2
  br i1 %19, label %20, label %5

20:                                               ; preds = %17, %1
  %21 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 10
  %22 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 10, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, %21
  br i1 %24, label %56, label %25

25:                                               ; preds = %54, %20
  %26 = phi ptr [ %29, %54 ], [ %23, %20 ]
  %27 = getelementptr i8, ptr %26, i32 -16
  %28 = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr i8, ptr %26, i32 484
  %31 = load i32, ptr %30, align 4
  %32 = and i32 %31, 64
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %54, label %34

34:                                               ; preds = %25
  %35 = and i32 %31, 2
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %34
  tail call fastcc void @device_link_drop_managed(ptr noundef %27) #22
  br label %54

38:                                               ; preds = %34
  %39 = getelementptr i8, ptr %26, i32 480
  %40 = load i32, ptr %39, align 8
  %41 = and i32 %40, -2
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %54

43:                                               ; preds = %38
  %44 = load ptr, ptr %27, align 8
  %45 = getelementptr inbounds %struct.device, ptr %44, i32 0, i32 10, i32 3
  %46 = load i32, ptr %45, align 8
  %47 = icmp eq i32 %46, 2
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  store volatile i32 1, ptr %39, align 8
  br label %54

49:                                               ; preds = %43
  %50 = and i32 %31, 128
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %53, !prof !8

52:                                               ; preds = %49
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1347, i32 noundef 9, ptr noundef null) #22
  br label %53

53:                                               ; preds = %52, %49
  store volatile i32 0, ptr %39, align 8
  br label %54

54:                                               ; preds = %53, %48, %38, %37, %25
  %55 = icmp eq ptr %29, %21
  br i1 %55, label %56, label %25

56:                                               ; preds = %54, %20
  %57 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 10, i32 3
  store i32 0, ptr %57, align 8
  tail call void @mutex_unlock(ptr noundef nonnull @device_links_lock) #22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @device_links_driver_cleanup(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @mutex_lock(ptr noundef nonnull @device_links_lock) #22
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 10, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %32, label %5

5:                                                ; preds = %30, %1
  %6 = phi ptr [ %8, %30 ], [ %3, %1 ]
  %7 = getelementptr i8, ptr %6, i32 -4
  %8 = load ptr, ptr %6, align 4
  %9 = getelementptr i8, ptr %6, i32 496
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 64
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %30, label %13

13:                                               ; preds = %5
  %14 = and i32 %10, 2
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %17, label %16, !prof !20

16:                                               ; preds = %13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1412, i32 noundef 9, ptr noundef null) #22
  br label %17

17:                                               ; preds = %16, %13
  %18 = getelementptr i8, ptr %6, i32 492
  %19 = load i32, ptr %18, align 8
  %20 = icmp eq i32 %19, 4
  br i1 %20, label %24, label %21, !prof !20

21:                                               ; preds = %17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1413, i32 noundef 9, ptr noundef null) #22
  %22 = load i32, ptr %18, align 8
  %23 = icmp eq i32 %22, 4
  br i1 %23, label %24, label %29

24:                                               ; preds = %21, %17
  %25 = load i32, ptr %9, align 4
  %26 = and i32 %25, 16
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %24
  tail call fastcc void @device_link_drop_managed(ptr noundef %7)
  br label %29

29:                                               ; preds = %28, %24, %21
  store volatile i32 0, ptr %18, align 8
  br label %30

30:                                               ; preds = %29, %5
  %31 = icmp eq ptr %8, %2
  br i1 %31, label %32, label %5

32:                                               ; preds = %30, %1
  %33 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 10, i32 2
  %34 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 10, i32 2, i32 1
  %35 = load ptr, ptr %34, align 4
  %36 = load ptr, ptr %33, align 4
  %37 = getelementptr inbounds %struct.list_head, ptr %36, i32 0, i32 1
  store ptr %35, ptr %37, align 4
  store volatile ptr %36, ptr %35, align 4
  store volatile ptr %33, ptr %33, align 4
  store ptr %33, ptr %34, align 4
  %38 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 10
  %39 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 10, i32 0, i32 1
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, %38
  br i1 %41, label %73, label %42

42:                                               ; preds = %71, %32
  %43 = phi ptr [ %46, %71 ], [ %40, %32 ]
  %44 = getelementptr i8, ptr %43, i32 -16
  %45 = getelementptr inbounds %struct.list_head, ptr %43, i32 0, i32 1
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr i8, ptr %43, i32 484
  %48 = load i32, ptr %47, align 4
  %49 = and i32 %48, 64
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %71, label %51

51:                                               ; preds = %42
  %52 = and i32 %48, 2
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %51
  tail call fastcc void @device_link_drop_managed(ptr noundef %44) #22
  br label %71

55:                                               ; preds = %51
  %56 = getelementptr i8, ptr %43, i32 480
  %57 = load i32, ptr %56, align 8
  %58 = and i32 %57, -2
  %59 = icmp eq i32 %58, 2
  br i1 %59, label %60, label %71

60:                                               ; preds = %55
  %61 = load ptr, ptr %44, align 8
  %62 = getelementptr inbounds %struct.device, ptr %61, i32 0, i32 10, i32 3
  %63 = load i32, ptr %62, align 8
  %64 = icmp eq i32 %63, 2
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  store volatile i32 1, ptr %56, align 8
  br label %71

66:                                               ; preds = %60
  %67 = and i32 %48, 128
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %70, !prof !8

69:                                               ; preds = %66
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1347, i32 noundef 9, ptr noundef null) #22
  br label %70

70:                                               ; preds = %69, %66
  store volatile i32 0, ptr %56, align 8
  br label %71

71:                                               ; preds = %70, %65, %55, %54, %42
  %72 = icmp eq ptr %46, %38
  br i1 %72, label %73, label %42

73:                                               ; preds = %71, %32
  %74 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 10, i32 3
  store i32 0, ptr %74, align 8
  tail call void @mutex_unlock(ptr noundef nonnull @device_links_lock) #22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @device_links_busy(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @mutex_lock(ptr noundef nonnull @device_links_lock) #22
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 10, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %20, label %5

5:                                                ; preds = %17, %1
  %6 = phi ptr [ %18, %17 ], [ %3, %1 ]
  %7 = getelementptr i8, ptr %6, i32 496
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 64
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %5
  %12 = getelementptr i8, ptr %6, i32 492
  %13 = load i32, ptr %12, align 8
  %14 = and i32 %13, -2
  %15 = icmp eq i32 %14, 2
  br i1 %15, label %20, label %16

16:                                               ; preds = %11
  store volatile i32 4, ptr %12, align 8
  br label %17

17:                                               ; preds = %16, %5
  %18 = load ptr, ptr %6, align 4
  %19 = icmp eq ptr %18, %2
  br i1 %19, label %20, label %5

20:                                               ; preds = %17, %11, %1
  %21 = phi i1 [ false, %1 ], [ true, %11 ], [ false, %17 ]
  %22 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 10, i32 3
  store i32 3, ptr %22, align 8
  tail call void @mutex_unlock(ptr noundef nonnull @device_links_lock) #22
  ret i1 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @device_links_unbind_consumers(ptr noundef readonly %0) local_unnamed_addr #0 {
  tail call void @mutex_lock(ptr noundef nonnull @device_links_lock) #22
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 10, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %36, label %5

5:                                                ; preds = %21, %1
  %6 = phi ptr [ %22, %21 ], [ %3, %1 ]
  %7 = getelementptr i8, ptr %6, i32 496
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 192
  %10 = icmp eq i32 %9, 64
  br i1 %10, label %11, label %18

11:                                               ; preds = %5
  %12 = getelementptr i8, ptr %6, i32 492
  %13 = load i32, ptr %12, align 8
  %14 = icmp eq i32 %13, 2
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  tail call void @mutex_unlock(ptr noundef nonnull @device_links_lock) #22
  tail call void @wait_for_device_probe() #22
  br label %33

16:                                               ; preds = %11
  store volatile i32 4, ptr %12, align 8
  %17 = icmp eq i32 %13, 3
  br i1 %17, label %23, label %18

18:                                               ; preds = %16, %5
  %19 = load ptr, ptr %6, align 4
  %20 = icmp eq ptr %19, %2
  br i1 %20, label %36, label %21

21:                                               ; preds = %33, %18
  %22 = phi ptr [ %19, %18 ], [ %34, %33 ]
  br label %5

23:                                               ; preds = %16
  %24 = getelementptr i8, ptr %6, i32 8
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = tail call ptr @kobject_get(ptr noundef nonnull %25) #22
  tail call void @mutex_unlock(ptr noundef nonnull @device_links_lock) #22
  %29 = getelementptr inbounds %struct.device, ptr %25, i32 0, i32 1
  %30 = load ptr, ptr %29, align 4
  tail call void @device_release_driver_internal(ptr noundef nonnull %25, ptr noundef null, ptr noundef %30) #22
  tail call void @kobject_put(ptr noundef nonnull %25) #22
  br label %33

31:                                               ; preds = %23
  tail call void @mutex_unlock(ptr noundef nonnull @device_links_lock) #22
  %32 = load ptr, ptr inttoptr (i32 36 to ptr), align 4
  tail call void @device_release_driver_internal(ptr noundef null, ptr noundef null, ptr noundef %32) #22
  br label %33

33:                                               ; preds = %31, %27, %15
  tail call void @mutex_lock(ptr noundef nonnull @device_links_lock) #22
  %34 = load ptr, ptr %2, align 4
  %35 = icmp eq ptr %34, %2
  br i1 %35, label %36, label %21

36:                                               ; preds = %33, %18, %1
  tail call void @mutex_unlock(ptr noundef nonnull @device_links_lock) #22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_device_probe() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_release_driver_internal(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress nofree nounwind null_pointer_is_valid optsize sspstrong willreturn uwtable(sync)
define internal i32 @fw_devlink_setup(ptr noundef readonly %0) #8 section ".init.text" {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %17, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @strcmp(ptr noundef nonnull %0, ptr noundef nonnull dereferenceable(4) @.str.56)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %15, label %6

6:                                                ; preds = %3
  %7 = tail call i32 @strcmp(ptr noundef nonnull %0, ptr noundef nonnull dereferenceable(11) @.str.57)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %15, label %9

9:                                                ; preds = %6
  %10 = tail call i32 @strcmp(ptr noundef nonnull %0, ptr noundef nonnull dereferenceable(3) @.str.58)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %9
  %13 = tail call i32 @strcmp(ptr noundef nonnull %0, ptr noundef nonnull dereferenceable(4) @.str.59)
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %12, %9, %6, %3
  %16 = phi i32 [ 0, %3 ], [ 384, %6 ], [ 288, %9 ], [ 292, %12 ]
  store i32 %16, ptr @fw_devlink_flags, align 4
  br label %17

17:                                               ; preds = %15, %12, %1
  %18 = phi i32 [ -22, %1 ], [ 0, %12 ], [ 0, %15 ]
  ret i32 %18
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @fw_devlink_strict_setup(ptr noundef %0) #4 section ".init.text" {
  %2 = tail call i32 @kstrtobool(ptr noundef %0, ptr noundef nonnull @fw_devlink_strict) #22
  ret i32 %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @fw_devlink_get_flags() local_unnamed_addr #9 {
  %1 = load i32, ptr @fw_devlink_flags, align 4
  ret i32 %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @fw_devlink_is_strict() local_unnamed_addr #9 {
  %1 = load i8, ptr @fw_devlink_strict, align 1, !range !25
  %2 = icmp ne i8 %1, 0
  %3 = load i32, ptr @fw_devlink_flags, align 4
  %4 = icmp ne i32 %3, 384
  %5 = select i1 %2, i1 %4, i1 false
  ret i1 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @fw_devlink_drivers_done() local_unnamed_addr #0 {
  store i1 true, ptr @fw_devlink_drv_reg_done, align 1
  tail call void @mutex_lock(ptr noundef nonnull @device_links_lock) #22
  %1 = tail call i32 @class_for_each_device(ptr noundef nonnull @devlink_class, ptr noundef null, ptr noundef null, ptr noundef nonnull @fw_devlink_no_driver) #22
  tail call void @mutex_unlock(ptr noundef nonnull @device_links_lock) #22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @class_for_each_device(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fw_devlink_no_driver(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 -24
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 37
  %6 = load i8, ptr %5, align 4
  %7 = and i8 %6, 16
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %17

9:                                                ; preds = %2
  %10 = getelementptr i8, ptr %0, i32 476
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 256
  %13 = icmp eq i32 %12, 0
  %14 = icmp eq i32 %11, 448
  %15 = or i1 %14, %13
  br i1 %15, label %17, label %16

16:                                               ; preds = %9
  tail call void @pm_runtime_drop_link(ptr noundef %3) #22
  store i32 448, ptr %10, align 4
  br label %17

17:                                               ; preds = %16, %9, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @lock_device_hotplug() local_unnamed_addr #0 {
  tail call void @mutex_lock(ptr noundef nonnull @device_hotplug_lock) #22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @unlock_device_hotplug() local_unnamed_addr #0 {
  tail call void @mutex_unlock(ptr noundef nonnull @device_hotplug_lock) #22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @lock_device_hotplug_sysfs() local_unnamed_addr #0 {
  %1 = tail call i32 @mutex_trylock(ptr noundef nonnull @device_hotplug_lock) #22
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  tail call void @msleep(i32 noundef 5) #22
  %4 = tail call ptr @llvm.thread.pointer() #22
  tail call void @_set_bit(i32 noundef 0, ptr noundef %4) #22
  br label %5

5:                                                ; preds = %3, %0
  %6 = phi i32 [ -513, %3 ], [ 0, %0 ]
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_trylock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local ptr @dev_driver_string(ptr noundef %0) #10 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 6
  %3 = load volatile ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %13

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 31
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %9, %5, %1
  %14 = phi ptr [ %3, %1 ], [ %7, %5 ], [ %11, %9 ]
  %15 = load ptr, ptr %14, align 4
  br label %16

16:                                               ; preds = %13, %9
  %17 = phi ptr [ @.str.52, %9 ], [ %15, %13 ]
  ret ptr %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @device_store_ulong(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #22
  store i32 0, ptr %5, align 4, !annotation !9
  %6 = call i32 @_kstrtoul(ptr noundef %2, i32 noundef 0, ptr noundef nonnull %5) #22
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %4
  %9 = load i32, ptr %5, align 4
  %10 = getelementptr inbounds %struct.dev_ext_attribute, ptr %1, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  store i32 %9, ptr %11, align 4
  br label %12

12:                                               ; preds = %8, %4
  %13 = phi i32 [ %3, %8 ], [ %6, %4 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #22
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @device_show_ulong(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.dev_ext_attribute, ptr %1, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = load i32, ptr %5, align 4
  %7 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.5, i32 noundef %6) #22
  ret i32 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @device_store_int(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #22
  store i32 0, ptr %5, align 4, !annotation !9
  %6 = call i32 @_kstrtol(ptr noundef %2, i32 noundef 0, ptr noundef nonnull %5) #22
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %4
  %9 = load i32, ptr %5, align 4
  %10 = getelementptr inbounds %struct.dev_ext_attribute, ptr %1, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  store i32 %9, ptr %11, align 4
  br label %12

12:                                               ; preds = %8, %4
  %13 = phi i32 [ %3, %8 ], [ %6, %4 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #22
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @device_show_int(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.dev_ext_attribute, ptr %1, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = load i32, ptr %5, align 4
  %7 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.6, i32 noundef %6) #22
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @device_store_bool(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.dev_ext_attribute, ptr %1, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @kstrtobool(ptr noundef %2, ptr noundef %6) #22
  %8 = icmp slt i32 %7, 0
  %9 = select i1 %8, i32 -22, i32 %3
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @device_show_bool(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.dev_ext_attribute, ptr %1, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = load i8, ptr %5, align 1, !range !25
  %7 = zext i8 %6 to i32
  %8 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.6, i32 noundef %7) #22
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @device_add_groups(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call i32 @sysfs_create_groups(ptr noundef %0, ptr noundef %1) #22
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_groups(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @device_remove_groups(ptr noundef %0, ptr noundef %1) #0 {
  tail call void @sysfs_remove_groups(ptr noundef %0, ptr noundef %1) #22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_groups(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @devm_device_add_group(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @devm_attr_group_remove, i32 noundef 4, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str.7) #22
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = tail call i32 @sysfs_create_group(ptr noundef %0, ptr noundef %1) #22
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %5
  tail call void @devres_free(ptr noundef nonnull %3) #22
  br label %10

9:                                                ; preds = %5
  store ptr %1, ptr %3, align 4
  tail call void @devres_add(ptr noundef %0, ptr noundef nonnull %3) #22
  br label %10

10:                                               ; preds = %9, %8, %2
  %11 = phi i32 [ %6, %8 ], [ 0, %9 ], [ -12, %2 ]
  ret i32 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @__devres_alloc_node(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @devm_attr_group_remove(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr %1, align 4
  tail call void @sysfs_remove_group(ptr noundef %0, ptr noundef %3) #22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @devm_device_remove_group(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call i32 @devres_release(ptr noundef %0, ptr noundef nonnull @devm_attr_group_remove, ptr noundef nonnull @devm_attr_group_match, ptr noundef %1) #22
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %6, label %5, !prof !20

5:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 2555, i32 noundef 9, ptr noundef null) #22
  br label %6

6:                                                ; preds = %5, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devres_release(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @devm_attr_group_match(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr noundef readnone %2) #11 {
  %4 = load ptr, ptr %1, align 4
  %5 = icmp eq ptr %4, %2
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @devm_device_add_groups(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @devm_attr_groups_remove, i32 noundef 4, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str.8) #22
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = tail call i32 @sysfs_create_groups(ptr noundef %0, ptr noundef %1) #22
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %5
  tail call void @devres_free(ptr noundef nonnull %3) #22
  br label %10

9:                                                ; preds = %5
  store ptr %1, ptr %3, align 4
  tail call void @devres_add(ptr noundef %0, ptr noundef nonnull %3) #22
  br label %10

10:                                               ; preds = %9, %8, %2
  %11 = phi i32 [ %6, %8 ], [ 0, %9 ], [ -12, %2 ]
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @devm_attr_groups_remove(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr %1, align 4
  tail call void @sysfs_remove_groups(ptr noundef %0, ptr noundef %3) #22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @devm_device_remove_groups(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call i32 @devres_release(ptr noundef %0, ptr noundef nonnull @devm_attr_groups_remove, ptr noundef nonnull @devm_attr_group_match, ptr noundef %1) #22
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %6, label %5, !prof !20

5:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 2608, i32 noundef 9, ptr noundef null) #22
  br label %6

6:                                                ; preds = %5, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @devices_kset_move_last(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @devices_kset, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %18, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.kset, ptr %2, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %5) #22
  %6 = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr @devices_kset, align 4
  %8 = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 1, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = load ptr, ptr %6, align 4
  %11 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  store ptr %9, ptr %11, align 4
  store volatile ptr %10, ptr %9, align 4
  %12 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  store ptr %6, ptr %12, align 4
  store ptr %7, ptr %6, align 4
  store ptr %13, ptr %8, align 4
  store volatile ptr %6, ptr %13, align 4
  %14 = load ptr, ptr @devices_kset, align 4
  %15 = getelementptr inbounds %struct.kset, ptr %14, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !10
  %16 = load i16, ptr %15, align 4
  %17 = add i16 %16, 1
  store i16 %17, ptr %15, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #22, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #22, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !13
  br label %18

18:                                               ; preds = %4, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @device_create_file(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %28, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.attribute, ptr %1, i32 0, i32 1
  %6 = load i16, ptr %5, align 4
  %7 = and i16 %6, 146
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %16, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.device_attribute, ptr %1, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %16, !prof !8

13:                                               ; preds = %9
  %14 = load ptr, ptr %1, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 2756, i32 noundef 9, ptr noundef nonnull @.str.9, ptr noundef %14) #22
  %15 = load i16, ptr %5, align 4
  br label %16

16:                                               ; preds = %13, %9, %4
  %17 = phi i16 [ %6, %4 ], [ %15, %13 ], [ %6, %9 ]
  %18 = and i16 %17, 292
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.device_attribute, ptr %1, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %26, !prof !8

24:                                               ; preds = %20
  %25 = load ptr, ptr %1, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 2759, i32 noundef 9, ptr noundef nonnull @.str.10, ptr noundef %25) #22
  br label %26

26:                                               ; preds = %24, %20, %16
  %27 = tail call i32 @sysfs_create_file_ns(ptr noundef nonnull %0, ptr noundef %1, ptr noundef null) #22
  br label %28

28:                                               ; preds = %26, %2
  %29 = phi i32 [ %27, %26 ], [ 0, %2 ]
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @device_remove_file_self(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = tail call zeroext i1 @sysfs_remove_file_self(ptr noundef nonnull %0, ptr noundef %1) #22
  br label %6

6:                                                ; preds = %4, %2
  %7 = phi i1 [ %5, %4 ], [ false, %2 ]
  ret i1 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @sysfs_remove_file_self(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @device_create_bin_file(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = tail call i32 @sysfs_create_bin_file(ptr noundef nonnull %0, ptr noundef %1) #22
  br label %6

6:                                                ; preds = %4, %2
  %7 = phi i32 [ %5, %4 ], [ -22, %2 ]
  ret i32 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_bin_file(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @device_remove_bin_file(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %2
  tail call void @sysfs_remove_bin_file(ptr noundef nonnull %0, ptr noundef %1) #22
  br label %5

5:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_bin_file(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @device_initialize(ptr noundef %0) #0 {
  %2 = load ptr, ptr @devices_kset, align 4
  %3 = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 3
  store ptr %2, ptr %3, align 8
  tail call void @kobject_init(ptr noundef %0, ptr noundef nonnull @device_ktype) #22
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 21
  store volatile ptr %4, ptr %4, align 4
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 21, i32 1
  store ptr %4, ptr %5, align 4
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 9
  tail call void @__mutex_init(ptr noundef %6, ptr noundef nonnull @.str.11, ptr noundef nonnull @device_initialize.__key) #22
  %7 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 29
  store i32 0, ptr %7, align 8
  %8 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 30
  store volatile ptr %8, ptr %8, align 4
  %9 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 30, i32 1
  store ptr %8, ptr %9, align 4
  %10 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 1
  %11 = load i16, ptr %10, align 4
  %12 = and i16 %11, 256
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 3
  store i32 0, ptr %15, align 4
  %16 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 28
  store ptr null, ptr %16, align 8
  %17 = or i16 %11, 256
  store i16 %17, ptr %10, align 4
  br label %18

18:                                               ; preds = %14, %1
  tail call void @device_pm_sleep_init(ptr noundef %0) #22
  tail call void @pm_runtime_init(ptr noundef %0) #22
  %19 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 10
  %20 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 10, i32 1
  store volatile ptr %20, ptr %20, align 4
  %21 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 10, i32 1, i32 1
  store ptr %20, ptr %21, align 4
  store volatile ptr %19, ptr %19, align 4
  %22 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 10, i32 0, i32 1
  store ptr %19, ptr %22, align 4
  %23 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 10, i32 2
  store volatile ptr %23, ptr %23, align 4
  %24 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 10, i32 2, i32 1
  store ptr %23, ptr %24, align 4
  %25 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 10, i32 3
  store i32 0, ptr %25, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @virtual_device_parent(ptr nocapture readnone %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @virtual_device_parent.virtual_dir, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  %5 = load ptr, ptr @devices_kset, align 4
  %6 = getelementptr inbounds %struct.kset, ptr %5, i32 0, i32 2
  %7 = tail call ptr @kobject_create_and_add(ptr noundef nonnull @.str.12, ptr noundef %6) #22
  store ptr %7, ptr @virtual_device_parent.virtual_dir, align 4
  br label %8

8:                                                ; preds = %4, %1
  %9 = phi ptr [ %7, %4 ], [ %2, %1 ]
  ret ptr %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kobject_create_and_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #12

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_set_name_vargs(ptr noundef, ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #12

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @device_add(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %241, label %3

3:                                                ; preds = %1
  %4 = tail call ptr @kobject_get(ptr noundef nonnull %0) #22
  %5 = icmp eq ptr %4, null
  br i1 %5, label %241, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 2
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %19

10:                                               ; preds = %6
  %11 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %12 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3520, i32 noundef 108) #23
  store ptr %12, ptr %7, align 8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %239, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.device_private, ptr %12, i32 0, i32 8
  store ptr %4, ptr %15, align 4
  tail call void @klist_init(ptr noundef nonnull %12, ptr noundef nonnull @klist_children_get, ptr noundef nonnull @klist_children_put) #22
  %16 = load ptr, ptr %7, align 8
  %17 = getelementptr inbounds %struct.device_private, ptr %16, i32 0, i32 5
  store volatile ptr %17, ptr %17, align 4
  %18 = getelementptr inbounds %struct.device_private, ptr %16, i32 0, i32 5, i32 1
  store ptr %17, ptr %18, align 4
  br label %19

19:                                               ; preds = %14, %6
  %20 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 3
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %19
  %24 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef nonnull %4, ptr noundef nonnull @.str.13, ptr noundef nonnull %21)
  store ptr null, ptr %20, align 4
  br label %25

25:                                               ; preds = %23, %19
  %26 = load ptr, ptr %4, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %45

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 5
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %273, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.bus_type, ptr %30, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %273, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 28
  %38 = load i32, ptr %37, align 4
  %39 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef nonnull %4, ptr noundef nonnull @.str.14, ptr noundef nonnull %34, i32 noundef %38)
  %40 = load ptr, ptr %20, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = load ptr, ptr %4, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %273, label %45

45:                                               ; preds = %42, %36, %25
  %46 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 1
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %51, label %49

49:                                               ; preds = %45
  %50 = tail call ptr @kobject_get(ptr noundef nonnull %47) #22
  br label %51

51:                                               ; preds = %49, %45
  %52 = phi ptr [ %50, %49 ], [ null, %45 ]
  %53 = tail call fastcc ptr @get_device_parent(ptr noundef nonnull %4, ptr noundef %52)
  %54 = icmp ugt ptr %53, inttoptr (i32 -4096 to ptr)
  br i1 %54, label %55, label %57

55:                                               ; preds = %51
  %56 = ptrtoint ptr %53 to i32
  br label %269

57:                                               ; preds = %51
  %58 = icmp eq ptr %53, null
  %59 = getelementptr inbounds %struct.kobject, ptr %4, i32 0, i32 2
  br i1 %58, label %60, label %62

60:                                               ; preds = %57
  %61 = load ptr, ptr %59, align 4
  br label %63

62:                                               ; preds = %57
  store ptr %53, ptr %59, align 4
  br label %63

63:                                               ; preds = %62, %60
  %64 = phi ptr [ %61, %60 ], [ %53, %62 ]
  %65 = icmp eq ptr %52, null
  %66 = tail call i32 (ptr, ptr, ptr, ...) @kobject_add(ptr noundef nonnull %4, ptr noundef %64, ptr noundef null) #22
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %70, label %68

68:                                               ; preds = %63
  %69 = load ptr, ptr %59, align 4
  br label %266

70:                                               ; preds = %63
  tail call void @software_node_notify(ptr noundef nonnull %4) #22
  %71 = load ptr, ptr @platform_notify, align 4
  %72 = icmp eq ptr %71, null
  br i1 %72, label %75, label %73

73:                                               ; preds = %70
  %74 = tail call i32 %71(ptr noundef nonnull %4) #22
  br label %75

75:                                               ; preds = %73, %70
  %76 = load i16, ptr getelementptr inbounds (%struct.device_attribute, ptr @dev_attr_uevent, i32 0, i32 0, i32 1), align 4
  %77 = and i16 %76, 146
  %78 = icmp ne i16 %77, 0
  %79 = load ptr, ptr getelementptr inbounds (%struct.device_attribute, ptr @dev_attr_uevent, i32 0, i32 2), align 4
  %80 = icmp eq ptr %79, null
  %81 = select i1 %78, i1 %80, i1 false
  br i1 %81, label %82, label %85, !prof !26

82:                                               ; preds = %75
  %83 = load ptr, ptr @dev_attr_uevent, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 2756, i32 noundef 9, ptr noundef nonnull @.str.9, ptr noundef %83) #22
  %84 = load i16, ptr getelementptr inbounds (%struct.device_attribute, ptr @dev_attr_uevent, i32 0, i32 0, i32 1), align 4
  br label %85

85:                                               ; preds = %82, %75
  %86 = phi i16 [ %76, %75 ], [ %84, %82 ]
  %87 = and i16 %86, 292
  %88 = icmp ne i16 %87, 0
  %89 = load ptr, ptr getelementptr inbounds (%struct.device_attribute, ptr @dev_attr_uevent, i32 0, i32 1), align 4
  %90 = icmp eq ptr %89, null
  %91 = select i1 %88, i1 %90, i1 false
  br i1 %91, label %92, label %94, !prof !26

92:                                               ; preds = %85
  %93 = load ptr, ptr @dev_attr_uevent, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 2759, i32 noundef 9, ptr noundef nonnull @.str.10, ptr noundef %93) #22
  br label %94

94:                                               ; preds = %92, %85
  %95 = tail call i32 @sysfs_create_file_ns(ptr noundef nonnull %4, ptr noundef nonnull @dev_attr_uevent, ptr noundef null) #22
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %257

97:                                               ; preds = %94
  %98 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 25
  %99 = load ptr, ptr %98, align 8
  %100 = icmp eq ptr %99, null
  br i1 %100, label %106, label %101

101:                                              ; preds = %97
  %102 = getelementptr inbounds %struct.device_node, ptr %99, i32 0, i32 9
  %103 = tail call i32 @sysfs_create_link(ptr noundef nonnull %4, ptr noundef %102, ptr noundef nonnull @.str.64) #22
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %106, label %105

105:                                              ; preds = %101
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef nonnull %4, ptr noundef nonnull @.str.65, i32 noundef %103) #25
  br label %106

106:                                              ; preds = %105, %101, %97
  %107 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 31
  %108 = load ptr, ptr %107, align 4
  %109 = icmp eq ptr %108, null
  br i1 %109, label %144, label %110

110:                                              ; preds = %106
  %111 = getelementptr inbounds %struct.class, ptr %108, i32 0, i32 14
  %112 = load ptr, ptr %111, align 4
  %113 = getelementptr inbounds %struct.kset, ptr %112, i32 0, i32 2
  %114 = tail call i32 @sysfs_create_link(ptr noundef nonnull %4, ptr noundef %113, ptr noundef nonnull @.str.66) #22
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %142

116:                                              ; preds = %110
  %117 = load ptr, ptr %46, align 4
  %118 = icmp eq ptr %117, null
  br i1 %118, label %126, label %119

119:                                              ; preds = %116
  %120 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 4
  %121 = load ptr, ptr %120, align 8
  %122 = icmp eq ptr %121, @part_type
  br i1 %122, label %126, label %123

123:                                              ; preds = %119
  %124 = tail call i32 @sysfs_create_link(ptr noundef nonnull %4, ptr noundef nonnull %117, ptr noundef nonnull @.str.67) #22
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %140

126:                                              ; preds = %123, %119, %116
  %127 = load ptr, ptr %107, align 4
  %128 = getelementptr inbounds %struct.class, ptr %127, i32 0, i32 14
  %129 = load ptr, ptr %128, align 4
  %130 = getelementptr inbounds %struct.kset, ptr %129, i32 0, i32 2
  %131 = load ptr, ptr %20, align 4
  %132 = icmp eq ptr %131, null
  br i1 %132, label %133, label %135

133:                                              ; preds = %126
  %134 = load ptr, ptr %4, align 4
  br label %135

135:                                              ; preds = %133, %126
  %136 = phi ptr [ %134, %133 ], [ %131, %126 ]
  %137 = tail call i32 @sysfs_create_link(ptr noundef %130, ptr noundef nonnull %4, ptr noundef %136) #22
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %144, label %139

139:                                              ; preds = %135
  tail call void @sysfs_remove_link(ptr noundef nonnull %4, ptr noundef nonnull @.str.67) #22
  br label %140

140:                                              ; preds = %139, %123
  %141 = phi i32 [ %124, %123 ], [ %137, %139 ]
  tail call void @sysfs_remove_link(ptr noundef nonnull %4, ptr noundef nonnull @.str.66) #22
  br label %142

142:                                              ; preds = %140, %110
  %143 = phi i32 [ %114, %110 ], [ %141, %140 ]
  tail call void @sysfs_remove_link(ptr noundef nonnull %4, ptr noundef nonnull @.str.64) #22
  br label %255

144:                                              ; preds = %135, %106
  %145 = tail call fastcc i32 @device_add_attrs(ptr noundef nonnull %4)
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %253

147:                                              ; preds = %144
  %148 = tail call i32 @bus_add_device(ptr noundef nonnull %4) #22
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %251

150:                                              ; preds = %147
  %151 = tail call i32 @dpm_sysfs_add(ptr noundef nonnull %4) #22
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %249

153:                                              ; preds = %150
  tail call void @device_pm_add(ptr noundef nonnull %4) #22
  %154 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 27
  %155 = load i32, ptr %154, align 8
  %156 = icmp ult i32 %155, 1048576
  br i1 %156, label %165, label %157

157:                                              ; preds = %153
  %158 = tail call i32 @device_create_file(ptr noundef nonnull %4, ptr noundef nonnull @dev_attr_dev)
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %247

160:                                              ; preds = %157
  %161 = tail call fastcc i32 @device_create_sys_dev_entry(ptr noundef nonnull %4)
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %163, label %243

163:                                              ; preds = %160
  %164 = tail call i32 @devtmpfs_create_node(ptr noundef nonnull %4) #22
  br label %165

165:                                              ; preds = %163, %153
  %166 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 5
  %167 = load ptr, ptr %166, align 4
  %168 = icmp eq ptr %167, null
  br i1 %168, label %174, label %169

169:                                              ; preds = %165
  %170 = getelementptr inbounds %struct.bus_type, ptr %167, i32 0, i32 20
  %171 = load ptr, ptr %170, align 4
  %172 = getelementptr inbounds %struct.subsys_private, ptr %171, i32 0, i32 7
  %173 = tail call i32 @blocking_notifier_call_chain(ptr noundef %172, i32 noundef 1, ptr noundef nonnull %4) #22
  br label %174

174:                                              ; preds = %169, %165
  %175 = tail call i32 @kobject_uevent(ptr noundef nonnull %4, i32 noundef 0) #22
  %176 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 26
  %177 = load ptr, ptr %176, align 4
  %178 = icmp eq ptr %177, null
  br i1 %178, label %184, label %179

179:                                              ; preds = %174
  %180 = getelementptr inbounds %struct.fwnode_handle, ptr %177, i32 0, i32 2
  %181 = load ptr, ptr %180, align 4
  %182 = icmp eq ptr %181, null
  br i1 %182, label %183, label %184

183:                                              ; preds = %179
  store ptr %4, ptr %180, align 4
  tail call fastcc void @fw_devlink_link_device(ptr noundef nonnull %4)
  br label %184

184:                                              ; preds = %183, %179, %174
  tail call void @bus_probe_device(ptr noundef nonnull %4) #22
  %185 = load ptr, ptr %176, align 4
  %186 = icmp eq ptr %185, null
  br i1 %186, label %195, label %187

187:                                              ; preds = %184
  %188 = load i1, ptr @fw_devlink_drv_reg_done, align 1
  br i1 %188, label %189, label %195

189:                                              ; preds = %187
  %190 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 37
  %191 = load i8, ptr %190, align 4
  %192 = and i8 %191, 16
  %193 = icmp eq i8 %192, 0
  br i1 %193, label %194, label %195

194:                                              ; preds = %189
  tail call fastcc void @fw_devlink_unblock_consumers(ptr noundef nonnull %4)
  br label %195

195:                                              ; preds = %194, %189, %187, %184
  br i1 %65, label %201, label %196

196:                                              ; preds = %195
  %197 = load ptr, ptr %7, align 8
  %198 = getelementptr inbounds %struct.device_private, ptr %197, i32 0, i32 1
  %199 = getelementptr inbounds %struct.device, ptr %52, i32 0, i32 2
  %200 = load ptr, ptr %199, align 8
  tail call void @klist_add_tail(ptr noundef %198, ptr noundef %200) #22
  br label %201

201:                                              ; preds = %196, %195
  %202 = load ptr, ptr %107, align 4
  %203 = icmp eq ptr %202, null
  br i1 %203, label %239, label %204

204:                                              ; preds = %201
  %205 = getelementptr inbounds %struct.class, ptr %202, i32 0, i32 14
  %206 = load ptr, ptr %205, align 4
  %207 = getelementptr inbounds %struct.subsys_private, ptr %206, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %207) #22
  %208 = load ptr, ptr %7, align 8
  %209 = getelementptr inbounds %struct.device_private, ptr %208, i32 0, i32 4
  %210 = load ptr, ptr %107, align 4
  %211 = getelementptr inbounds %struct.class, ptr %210, i32 0, i32 14
  %212 = load ptr, ptr %211, align 4
  %213 = getelementptr inbounds %struct.subsys_private, ptr %212, i32 0, i32 5
  tail call void @klist_add_tail(ptr noundef %209, ptr noundef %213) #22
  %214 = load ptr, ptr %107, align 4
  %215 = getelementptr inbounds %struct.class, ptr %214, i32 0, i32 14
  %216 = load ptr, ptr %215, align 4
  %217 = getelementptr inbounds %struct.subsys_private, ptr %216, i32 0, i32 2
  %218 = load ptr, ptr %217, align 4
  %219 = icmp eq ptr %218, %217
  br i1 %219, label %236, label %220

220:                                              ; preds = %229, %204
  %221 = phi ptr [ %230, %229 ], [ %214, %204 ]
  %222 = phi ptr [ %231, %229 ], [ %218, %204 ]
  %223 = getelementptr inbounds %struct.class_interface, ptr %222, i32 0, i32 2
  %224 = load ptr, ptr %223, align 4
  %225 = icmp eq ptr %224, null
  br i1 %225, label %229, label %226

226:                                              ; preds = %220
  %227 = tail call i32 %224(ptr noundef %4, ptr noundef %222) #22
  %228 = load ptr, ptr %107, align 4
  br label %229

229:                                              ; preds = %226, %220
  %230 = phi ptr [ %221, %220 ], [ %228, %226 ]
  %231 = load ptr, ptr %222, align 4
  %232 = getelementptr inbounds %struct.class, ptr %230, i32 0, i32 14
  %233 = load ptr, ptr %232, align 4
  %234 = getelementptr inbounds %struct.subsys_private, ptr %233, i32 0, i32 2
  %235 = icmp eq ptr %231, %234
  br i1 %235, label %236, label %220

236:                                              ; preds = %229, %204
  %237 = phi ptr [ %216, %204 ], [ %233, %229 ]
  %238 = getelementptr inbounds %struct.subsys_private, ptr %237, i32 0, i32 3
  tail call void @mutex_unlock(ptr noundef %238) #22
  br label %239

239:                                              ; preds = %273, %236, %201, %10
  %240 = phi i32 [ 0, %236 ], [ -12, %10 ], [ 0, %201 ], [ %274, %273 ]
  tail call void @kobject_put(ptr noundef nonnull %4) #22
  br label %241

241:                                              ; preds = %239, %3, %1
  %242 = phi i32 [ %240, %239 ], [ -22, %3 ], [ -22, %1 ]
  ret i32 %242

243:                                              ; preds = %160
  %244 = load i32, ptr %154, align 8
  %245 = icmp ult i32 %244, 1048576
  br i1 %245, label %247, label %246

246:                                              ; preds = %243
  tail call void @sysfs_remove_file_ns(ptr noundef nonnull %4, ptr noundef nonnull @dev_attr_dev, ptr noundef null) #22
  br label %247

247:                                              ; preds = %246, %243, %157
  %248 = phi i32 [ %158, %157 ], [ %161, %246 ], [ %161, %243 ]
  tail call void @device_pm_remove(ptr noundef nonnull %4) #22
  tail call void @dpm_sysfs_remove(ptr noundef nonnull %4) #22
  br label %249

249:                                              ; preds = %247, %150
  %250 = phi i32 [ %151, %150 ], [ %248, %247 ]
  tail call void @bus_remove_device(ptr noundef nonnull %4) #22
  br label %251

251:                                              ; preds = %249, %147
  %252 = phi i32 [ %148, %147 ], [ %250, %249 ]
  tail call fastcc void @device_remove_attrs(ptr noundef nonnull %4)
  br label %253

253:                                              ; preds = %251, %144
  %254 = phi i32 [ %145, %144 ], [ %252, %251 ]
  tail call fastcc void @device_remove_class_symlinks(ptr noundef nonnull %4)
  br label %255

255:                                              ; preds = %253, %142
  %256 = phi i32 [ %143, %142 ], [ %254, %253 ]
  tail call void @sysfs_remove_file_ns(ptr noundef nonnull %4, ptr noundef nonnull @dev_attr_uevent, ptr noundef null) #22
  br label %257

257:                                              ; preds = %255, %94
  %258 = phi i32 [ %95, %94 ], [ %256, %255 ]
  tail call void @software_node_notify_remove(ptr noundef nonnull %4) #22
  %259 = load ptr, ptr @platform_notify_remove, align 4
  %260 = icmp eq ptr %259, null
  br i1 %260, label %263, label %261

261:                                              ; preds = %257
  %262 = tail call i32 %259(ptr noundef nonnull %4) #22
  br label %263

263:                                              ; preds = %261, %257
  %264 = tail call i32 @kobject_uevent(ptr noundef nonnull %4, i32 noundef 1) #22
  %265 = load ptr, ptr %59, align 4
  tail call void @kobject_del(ptr noundef nonnull %4) #22
  br label %266

266:                                              ; preds = %263, %68
  %267 = phi ptr [ %69, %68 ], [ %265, %263 ]
  %268 = phi i32 [ %66, %68 ], [ %258, %263 ]
  tail call fastcc void @cleanup_glue_dir(ptr noundef nonnull %4, ptr noundef %267)
  br label %269

269:                                              ; preds = %266, %55
  %270 = phi i32 [ %56, %55 ], [ %268, %266 ]
  %271 = icmp eq ptr %52, null
  br i1 %271, label %273, label %272

272:                                              ; preds = %269
  tail call void @kobject_put(ptr noundef nonnull %52) #22
  br label %273

273:                                              ; preds = %272, %269, %42, %32, %28
  %274 = phi i32 [ -22, %42 ], [ %270, %269 ], [ %270, %272 ], [ -22, %28 ], [ -22, %32 ]
  %275 = load ptr, ptr %7, align 8
  tail call void @kfree(ptr noundef %275) #22
  store ptr null, ptr %7, align 8
  br label %239
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @get_device_parent(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 31
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  %6 = icmp eq ptr %1, null
  br i1 %5, label %73, label %7

7:                                                ; preds = %2
  br i1 %6, label %8, label %15

8:                                                ; preds = %7
  %9 = load ptr, ptr @virtual_device_parent.virtual_dir, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %23

11:                                               ; preds = %8
  %12 = load ptr, ptr @devices_kset, align 4
  %13 = getelementptr inbounds %struct.kset, ptr %12, i32 0, i32 2
  %14 = tail call ptr @kobject_create_and_add(ptr noundef nonnull @.str.12, ptr noundef %13) #22
  store ptr %14, ptr @virtual_device_parent.virtual_dir, align 4
  br label %23

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 31
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.class, ptr %4, i32 0, i32 10
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %83, label %23

23:                                               ; preds = %19, %15, %11, %8
  %24 = phi ptr [ %1, %19 ], [ %1, %15 ], [ %14, %11 ], [ %9, %8 ]
  tail call void @mutex_lock(ptr noundef nonnull @gdp_mutex) #22
  %25 = load ptr, ptr %3, align 4
  %26 = getelementptr inbounds %struct.class, ptr %25, i32 0, i32 14
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.subsys_private, ptr %27, i32 0, i32 10, i32 1
  tail call void @_raw_spin_lock(ptr noundef %28) #22
  %29 = load ptr, ptr %3, align 4
  %30 = getelementptr inbounds %struct.class, ptr %29, i32 0, i32 14
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.subsys_private, ptr %31, i32 0, i32 10
  br label %33

33:                                               ; preds = %37, %23
  %34 = phi ptr [ %32, %23 ], [ %35, %37 ]
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, %32
  br i1 %36, label %47, label %37

37:                                               ; preds = %33
  %38 = getelementptr i8, ptr %35, i32 8
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, %24
  br i1 %40, label %41, label %33

41:                                               ; preds = %37
  %42 = getelementptr i8, ptr %35, i32 -4
  %43 = tail call ptr @kobject_get(ptr noundef %42) #22
  %44 = load ptr, ptr %3, align 4
  %45 = getelementptr inbounds %struct.class, ptr %44, i32 0, i32 14
  %46 = load ptr, ptr %45, align 4
  br label %47

47:                                               ; preds = %41, %33
  %48 = phi ptr [ %46, %41 ], [ %31, %33 ]
  %49 = phi ptr [ %43, %41 ], [ null, %33 ]
  %50 = getelementptr inbounds %struct.subsys_private, ptr %48, i32 0, i32 10, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !10
  %51 = load i16, ptr %50, align 4
  %52 = add i16 %51, 1
  store i16 %52, ptr %50, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #22, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #22, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !13
  %53 = icmp eq ptr %49, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %47
  tail call void @mutex_unlock(ptr noundef nonnull @gdp_mutex) #22
  br label %83

55:                                               ; preds = %47
  %56 = load ptr, ptr %3, align 4
  %57 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %58 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %57, i32 noundef 3520, i32 noundef 40) #23
  %59 = icmp eq ptr %58, null
  br i1 %59, label %71, label %60

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct.class_dir, ptr %58, i32 0, i32 1
  store ptr %56, ptr %61, align 4
  tail call void @kobject_init(ptr noundef nonnull %58, ptr noundef nonnull @class_dir_ktype) #22
  %62 = getelementptr inbounds %struct.class, ptr %56, i32 0, i32 14
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr inbounds %struct.subsys_private, ptr %63, i32 0, i32 10
  %65 = getelementptr inbounds %struct.kobject, ptr %58, i32 0, i32 3
  store ptr %64, ptr %65, align 8
  %66 = load ptr, ptr %56, align 4
  %67 = tail call i32 (ptr, ptr, ptr, ...) @kobject_add(ptr noundef nonnull %58, ptr noundef %24, ptr noundef nonnull @.str.13, ptr noundef %66) #22
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %60
  tail call void @kobject_put(ptr noundef nonnull %58) #22
  %70 = inttoptr i32 %67 to ptr
  br label %71

71:                                               ; preds = %69, %60, %55
  %72 = phi ptr [ %70, %69 ], [ %58, %60 ], [ inttoptr (i32 -12 to ptr), %55 ]
  tail call void @mutex_unlock(ptr noundef nonnull @gdp_mutex) #22
  br label %83

73:                                               ; preds = %2
  br i1 %6, label %74, label %82

74:                                               ; preds = %73
  %75 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 5
  %76 = load ptr, ptr %75, align 4
  %77 = icmp eq ptr %76, null
  br i1 %77, label %82, label %78

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.bus_type, ptr %76, i32 0, i32 2
  %80 = load ptr, ptr %79, align 4
  %81 = icmp eq ptr %80, null
  br i1 %81, label %82, label %83

82:                                               ; preds = %78, %74, %73
  br label %83

83:                                               ; preds = %82, %78, %71, %54, %19
  %84 = phi ptr [ %49, %54 ], [ %72, %71 ], [ %1, %19 ], [ %80, %78 ], [ %1, %82 ]
  ret ptr %84
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_add(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @device_add_attrs(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 31
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %3, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.class, ptr %3, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 @sysfs_create_groups(ptr noundef %0, ptr noundef %9) #22
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %139

12:                                               ; preds = %7, %1
  %13 = icmp eq ptr %5, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.device_type, ptr %5, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = tail call i32 @sysfs_create_groups(ptr noundef %0, ptr noundef %16) #22
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %134

19:                                               ; preds = %14, %12
  %20 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 32
  %21 = load ptr, ptr %20, align 8
  %22 = tail call i32 @sysfs_create_groups(ptr noundef %0, ptr noundef %21) #22
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %129

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 5
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %65, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.bus_type, ptr %26, i32 0, i32 13
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %65, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.bus_type, ptr %26, i32 0, i32 12
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %65, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 37
  %38 = load i8, ptr %37, align 4
  %39 = and i8 %38, 1
  %40 = icmp ne i8 %39, 0
  %41 = icmp eq ptr %0, null
  %42 = or i1 %41, %40
  br i1 %42, label %65, label %43

43:                                               ; preds = %36
  %44 = load i16, ptr getelementptr inbounds (%struct.device_attribute, ptr @dev_attr_online, i32 0, i32 0, i32 1), align 4
  %45 = and i16 %44, 146
  %46 = icmp ne i16 %45, 0
  %47 = load ptr, ptr getelementptr inbounds (%struct.device_attribute, ptr @dev_attr_online, i32 0, i32 2), align 4
  %48 = icmp eq ptr %47, null
  %49 = select i1 %46, i1 %48, i1 false
  br i1 %49, label %50, label %53, !prof !26

50:                                               ; preds = %43
  %51 = load ptr, ptr @dev_attr_online, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 2756, i32 noundef 9, ptr noundef nonnull @.str.9, ptr noundef %51) #22
  %52 = load i16, ptr getelementptr inbounds (%struct.device_attribute, ptr @dev_attr_online, i32 0, i32 0, i32 1), align 4
  br label %53

53:                                               ; preds = %50, %43
  %54 = phi i16 [ %44, %43 ], [ %52, %50 ]
  %55 = and i16 %54, 292
  %56 = icmp ne i16 %55, 0
  %57 = load ptr, ptr getelementptr inbounds (%struct.device_attribute, ptr @dev_attr_online, i32 0, i32 1), align 4
  %58 = icmp eq ptr %57, null
  %59 = select i1 %56, i1 %58, i1 false
  br i1 %59, label %60, label %62, !prof !26

60:                                               ; preds = %53
  %61 = load ptr, ptr @dev_attr_online, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 2759, i32 noundef 9, ptr noundef nonnull @.str.10, ptr noundef %61) #22
  br label %62

62:                                               ; preds = %60, %53
  %63 = tail call i32 @sysfs_create_file_ns(ptr noundef nonnull %0, ptr noundef nonnull @dev_attr_online, ptr noundef null) #22
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %126

65:                                               ; preds = %62, %36, %32, %28, %24
  %66 = load i32, ptr @fw_devlink_flags, align 4
  switch i32 %66, label %67 [
    i32 0, label %95
    i32 384, label %95
  ]

67:                                               ; preds = %65
  %68 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 26
  %69 = load ptr, ptr %68, align 4
  %70 = icmp eq ptr %69, null
  br i1 %70, label %95, label %71

71:                                               ; preds = %67
  %72 = icmp eq ptr %0, null
  br i1 %72, label %139, label %73

73:                                               ; preds = %71
  %74 = load i16, ptr getelementptr inbounds (%struct.device_attribute, ptr @dev_attr_waiting_for_supplier, i32 0, i32 0, i32 1), align 4
  %75 = and i16 %74, 146
  %76 = icmp ne i16 %75, 0
  %77 = load ptr, ptr getelementptr inbounds (%struct.device_attribute, ptr @dev_attr_waiting_for_supplier, i32 0, i32 2), align 4
  %78 = icmp eq ptr %77, null
  %79 = select i1 %76, i1 %78, i1 false
  br i1 %79, label %80, label %83, !prof !26

80:                                               ; preds = %73
  %81 = load ptr, ptr @dev_attr_waiting_for_supplier, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 2756, i32 noundef 9, ptr noundef nonnull @.str.9, ptr noundef %81) #22
  %82 = load i16, ptr getelementptr inbounds (%struct.device_attribute, ptr @dev_attr_waiting_for_supplier, i32 0, i32 0, i32 1), align 4
  br label %83

83:                                               ; preds = %80, %73
  %84 = phi i16 [ %74, %73 ], [ %82, %80 ]
  %85 = and i16 %84, 292
  %86 = icmp ne i16 %85, 0
  %87 = load ptr, ptr getelementptr inbounds (%struct.device_attribute, ptr @dev_attr_waiting_for_supplier, i32 0, i32 1), align 4
  %88 = icmp eq ptr %87, null
  %89 = select i1 %86, i1 %88, i1 false
  br i1 %89, label %90, label %92, !prof !26

90:                                               ; preds = %83
  %91 = load ptr, ptr @dev_attr_waiting_for_supplier, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 2759, i32 noundef 9, ptr noundef nonnull @.str.10, ptr noundef %91) #22
  br label %92

92:                                               ; preds = %90, %83
  %93 = tail call i32 @sysfs_create_file_ns(ptr noundef nonnull %0, ptr noundef nonnull @dev_attr_waiting_for_supplier, ptr noundef null) #22
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %124

95:                                               ; preds = %92, %67, %65, %65
  %96 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 36
  %97 = load i32, ptr %96, align 8
  %98 = icmp eq i32 %97, 0
  %99 = icmp eq ptr %0, null
  %100 = or i1 %99, %98
  br i1 %100, label %139, label %101

101:                                              ; preds = %95
  %102 = load i16, ptr getelementptr inbounds (%struct.device_attribute, ptr @dev_attr_removable, i32 0, i32 0, i32 1), align 4
  %103 = and i16 %102, 146
  %104 = icmp ne i16 %103, 0
  %105 = load ptr, ptr getelementptr inbounds (%struct.device_attribute, ptr @dev_attr_removable, i32 0, i32 2), align 4
  %106 = icmp eq ptr %105, null
  %107 = select i1 %104, i1 %106, i1 false
  br i1 %107, label %108, label %111, !prof !26

108:                                              ; preds = %101
  %109 = load ptr, ptr @dev_attr_removable, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 2756, i32 noundef 9, ptr noundef nonnull @.str.9, ptr noundef %109) #22
  %110 = load i16, ptr getelementptr inbounds (%struct.device_attribute, ptr @dev_attr_removable, i32 0, i32 0, i32 1), align 4
  br label %111

111:                                              ; preds = %108, %101
  %112 = phi i16 [ %102, %101 ], [ %110, %108 ]
  %113 = and i16 %112, 292
  %114 = icmp ne i16 %113, 0
  %115 = load ptr, ptr getelementptr inbounds (%struct.device_attribute, ptr @dev_attr_removable, i32 0, i32 1), align 4
  %116 = icmp eq ptr %115, null
  %117 = select i1 %114, i1 %116, i1 false
  br i1 %117, label %118, label %120, !prof !26

118:                                              ; preds = %111
  %119 = load ptr, ptr @dev_attr_removable, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 2759, i32 noundef 9, ptr noundef nonnull @.str.10, ptr noundef %119) #22
  br label %120

120:                                              ; preds = %118, %111
  %121 = tail call i32 @sysfs_create_file_ns(ptr noundef nonnull %0, ptr noundef nonnull @dev_attr_removable, ptr noundef null) #22
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %139, label %123

123:                                              ; preds = %120
  tail call void @sysfs_remove_file_ns(ptr noundef nonnull %0, ptr noundef nonnull @dev_attr_waiting_for_supplier, ptr noundef null) #22
  br label %124

124:                                              ; preds = %123, %92
  %125 = phi i32 [ %121, %123 ], [ %93, %92 ]
  tail call void @sysfs_remove_file_ns(ptr noundef nonnull %0, ptr noundef nonnull @dev_attr_online, ptr noundef null) #22
  br label %126

126:                                              ; preds = %124, %62
  %127 = phi i32 [ %125, %124 ], [ %63, %62 ]
  %128 = load ptr, ptr %20, align 8
  tail call void @sysfs_remove_groups(ptr noundef nonnull %0, ptr noundef %128) #22
  br label %129

129:                                              ; preds = %126, %19
  %130 = phi i32 [ %22, %19 ], [ %127, %126 ]
  br i1 %13, label %134, label %131

131:                                              ; preds = %129
  %132 = getelementptr inbounds %struct.device_type, ptr %5, i32 0, i32 1
  %133 = load ptr, ptr %132, align 4
  tail call void @sysfs_remove_groups(ptr noundef %0, ptr noundef %133) #22
  br label %134

134:                                              ; preds = %131, %129, %14
  %135 = phi i32 [ %17, %14 ], [ %130, %131 ], [ %130, %129 ]
  br i1 %6, label %139, label %136

136:                                              ; preds = %134
  %137 = getelementptr inbounds %struct.class, ptr %3, i32 0, i32 3
  %138 = load ptr, ptr %137, align 4
  tail call void @sysfs_remove_groups(ptr noundef %0, ptr noundef %138) #22
  br label %139

139:                                              ; preds = %136, %134, %120, %95, %71, %7
  %140 = phi i32 [ %10, %7 ], [ 0, %120 ], [ 0, %95 ], [ %135, %136 ], [ %135, %134 ], [ 0, %71 ]
  ret i32 %140
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bus_add_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpm_sysfs_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_pm_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @device_create_sys_dev_entry(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca [15 x i8], align 1
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 31
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  %6 = getelementptr inbounds %struct.class, ptr %4, i32 0, i32 4
  %7 = select i1 %5, ptr @sysfs_dev_char_kobj, ptr %6
  %8 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 15, ptr nonnull %2) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(15) %2, i8 0, i32 15, i1 false), !annotation !9
  %9 = icmp eq ptr %8, null
  br i1 %9, label %17, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 27
  %12 = load i32, ptr %11, align 8
  %13 = lshr i32 %12, 20
  %14 = and i32 %12, 1048575
  %15 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %2, ptr noundef nonnull @.str.72, i32 noundef %13, i32 noundef %14)
  %16 = call i32 @sysfs_create_link(ptr noundef nonnull %8, ptr noundef %0, ptr noundef nonnull %2) #22
  br label %17

17:                                               ; preds = %10, %1
  %18 = phi i32 [ %16, %10 ], [ 0, %1 ]
  call void @llvm.lifetime.end.p0(i64 15, ptr nonnull %2) #22
  ret i32 %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devtmpfs_create_node(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_call_chain(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_uevent(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @fw_devlink_link_device(ptr noundef %0) unnamed_addr #0 {
  %2 = load i32, ptr @fw_devlink_flags, align 4
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %55, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 26
  %6 = load ptr, ptr %5, align 4
  tail call fastcc void @fw_devlink_parse_fwtree(ptr noundef %6)
  tail call void @mutex_lock(ptr noundef nonnull @fwnode_link_lock) #22
  %7 = load ptr, ptr %5, align 4
  %8 = getelementptr inbounds %struct.fwnode_handle, ptr %7, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, %8
  br i1 %10, label %54, label %11

11:                                               ; preds = %52, %4
  %12 = phi ptr [ %14, %52 ], [ %9, %4 ]
  %13 = getelementptr i8, ptr %12, i32 -4
  %14 = load ptr, ptr %12, align 4
  %15 = getelementptr i8, ptr %12, i32 8
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.fwnode_handle, ptr %16, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %11
  %21 = load i32, ptr @fw_devlink_flags, align 4
  %22 = tail call ptr @kobject_get(ptr noundef nonnull %18) #22
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %35

24:                                               ; preds = %20
  %25 = load ptr, ptr %15, align 4
  br label %26

26:                                               ; preds = %24, %11
  %27 = phi ptr [ %25, %24 ], [ %16, %11 ]
  %28 = tail call ptr @fwnode_get_next_parent_dev(ptr noundef %27) #22
  %29 = icmp eq ptr %28, null
  br i1 %29, label %52, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.device, ptr %28, i32 0, i32 26
  %32 = load ptr, ptr %31, align 4
  %33 = tail call zeroext i1 @fwnode_is_ancestor_of(ptr noundef %32, ptr noundef %7) #22
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  tail call void @kobject_put(ptr noundef nonnull %28) #22
  br label %52

35:                                               ; preds = %30, %20
  %36 = phi i32 [ %21, %20 ], [ 384, %30 ]
  %37 = phi ptr [ %22, %20 ], [ %28, %30 ]
  %38 = phi i1 [ false, %20 ], [ true, %30 ]
  %39 = tail call fastcc i32 @fw_devlink_create_devlink(ptr noundef nonnull %37, ptr noundef %7, i32 noundef %36) #22
  tail call void @kobject_put(ptr noundef nonnull %37) #22
  %40 = icmp eq i32 %39, -11
  %41 = select i1 %38, i1 true, i1 %40
  br i1 %41, label %52, label %42

42:                                               ; preds = %35
  %43 = getelementptr i8, ptr %12, i32 4
  %44 = load ptr, ptr %43, align 4
  %45 = load ptr, ptr %12, align 4
  %46 = getelementptr inbounds %struct.list_head, ptr %45, i32 0, i32 1
  store ptr %44, ptr %46, align 4
  store volatile ptr %45, ptr %44, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %12, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %43, align 4
  %47 = getelementptr i8, ptr %12, i32 12
  %48 = getelementptr i8, ptr %12, i32 16
  %49 = load ptr, ptr %48, align 4
  %50 = load ptr, ptr %47, align 4
  %51 = getelementptr inbounds %struct.list_head, ptr %50, i32 0, i32 1
  store ptr %49, ptr %51, align 4
  store volatile ptr %50, ptr %49, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %47, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %48, align 4
  tail call void @kfree(ptr noundef %13) #22
  br label %52

52:                                               ; preds = %42, %35, %34, %26
  %53 = icmp eq ptr %14, %8
  br i1 %53, label %54, label %11

54:                                               ; preds = %52, %4
  tail call fastcc void @__fw_devlink_link_to_suppliers(ptr noundef %0, ptr noundef %6)
  tail call void @mutex_unlock(ptr noundef nonnull @fwnode_link_lock) #22
  br label %55

55:                                               ; preds = %54, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bus_probe_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @fw_devlink_unblock_consumers(ptr noundef readonly %0) unnamed_addr #0 {
  %2 = load i32, ptr @fw_devlink_flags, align 4
  switch i32 %2, label %3 [
    i32 0, label %21
    i32 384, label %21
  ]

3:                                                ; preds = %1
  tail call void @mutex_lock(ptr noundef nonnull @device_links_lock) #22
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 10, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %4
  br i1 %6, label %20, label %7

7:                                                ; preds = %17, %3
  %8 = phi ptr [ %18, %17 ], [ %5, %3 ]
  %9 = getelementptr i8, ptr %8, i32 496
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 256
  %12 = icmp eq i32 %11, 0
  %13 = icmp eq i32 %10, 448
  %14 = or i1 %13, %12
  br i1 %14, label %17, label %15

15:                                               ; preds = %7
  %16 = getelementptr i8, ptr %8, i32 -4
  tail call void @pm_runtime_drop_link(ptr noundef %16) #22
  store i32 448, ptr %9, align 4
  br label %17

17:                                               ; preds = %15, %7
  %18 = load ptr, ptr %8, align 4
  %19 = icmp eq ptr %18, %4
  br i1 %19, label %20, label %7

20:                                               ; preds = %17, %3
  tail call void @mutex_unlock(ptr noundef nonnull @device_links_lock) #22
  br label %21

21:                                               ; preds = %20, %1, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @klist_add_tail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_pm_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dpm_sysfs_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bus_remove_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @device_remove_attrs(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 31
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %0, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  tail call void @sysfs_remove_file_ns(ptr noundef nonnull %0, ptr noundef nonnull @dev_attr_removable, ptr noundef null) #22
  tail call void @sysfs_remove_file_ns(ptr noundef nonnull %0, ptr noundef nonnull @dev_attr_waiting_for_supplier, ptr noundef null) #22
  tail call void @sysfs_remove_file_ns(ptr noundef nonnull %0, ptr noundef nonnull @dev_attr_online, ptr noundef null) #22
  br label %8

8:                                                ; preds = %7, %1
  %9 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 32
  %10 = load ptr, ptr %9, align 8
  tail call void @sysfs_remove_groups(ptr noundef %0, ptr noundef %10) #22
  %11 = icmp eq ptr %5, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.device_type, ptr %5, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  tail call void @sysfs_remove_groups(ptr noundef %0, ptr noundef %14) #22
  br label %15

15:                                               ; preds = %12, %8
  %16 = icmp eq ptr %3, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.class, ptr %3, i32 0, i32 3
  %19 = load ptr, ptr %18, align 4
  tail call void @sysfs_remove_groups(ptr noundef %0, ptr noundef %19) #22
  br label %20

20:                                               ; preds = %17, %15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @device_remove_class_symlinks(ptr noundef %0) unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %8, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  tail call void @sysfs_remove_link(ptr noundef nonnull %0, ptr noundef nonnull @.str.64) #22
  br label %8

8:                                                ; preds = %7, %3, %1
  %9 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 31
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %33, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 4
  %18 = load ptr, ptr %17, align 8
  %19 = icmp eq ptr %18, @part_type
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  tail call void @sysfs_remove_link(ptr noundef %0, ptr noundef nonnull @.str.67) #22
  br label %21

21:                                               ; preds = %20, %16, %12
  tail call void @sysfs_remove_link(ptr noundef %0, ptr noundef nonnull @.str.66) #22
  %22 = load ptr, ptr %9, align 4
  %23 = getelementptr inbounds %struct.class, ptr %22, i32 0, i32 14
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.kset, ptr %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %21
  %30 = load ptr, ptr %0, align 4
  br label %31

31:                                               ; preds = %29, %21
  %32 = phi ptr [ %30, %29 ], [ %27, %21 ]
  tail call void @sysfs_delete_link(ptr noundef %25, ptr noundef %0, ptr noundef %32) #22
  br label %33

33:                                               ; preds = %31, %8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @cleanup_glue_dir(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %38, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 31
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %38, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.kobject, ptr %1, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.class, ptr %6, i32 0, i32 14
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.subsys_private, ptr %12, i32 0, i32 10
  %14 = icmp eq ptr %10, %13
  br i1 %14, label %15, label %38

15:                                               ; preds = %8
  tail call void @mutex_lock(ptr noundef nonnull @gdp_mutex) #22
  %16 = getelementptr inbounds %struct.kobject, ptr %1, i32 0, i32 6
  %17 = load volatile i32, ptr %16, align 4
  %18 = load volatile i32, ptr %16, align 4
  %19 = icmp eq i32 %18, 0
  %20 = load i1, ptr @kobject_has_children.__already_done, align 1
  %21 = xor i1 %20, true
  %22 = select i1 %19, i1 %21, i1 false
  br i1 %22, label %23, label %24, !prof !8

23:                                               ; preds = %15
  store i1 true, ptr @kobject_has_children.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 3038, i32 noundef 9, ptr noundef null) #22
  br label %24

24:                                               ; preds = %23, %15
  %25 = getelementptr inbounds %struct.kobject, ptr %1, i32 0, i32 5
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.kernfs_node, ptr %26, i32 0, i32 7
  %30 = load i32, ptr %29, align 8
  %31 = icmp eq i32 %30, 0
  br label %32

32:                                               ; preds = %28, %24
  %33 = phi i1 [ true, %24 ], [ %31, %28 ]
  %34 = icmp eq i32 %17, 1
  %35 = select i1 %33, i1 %34, i1 false
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  tail call void @kobject_del(ptr noundef nonnull %1) #22
  br label %37

37:                                               ; preds = %36, %32
  tail call void @kobject_put(ptr noundef nonnull %1) #22
  tail call void @mutex_unlock(ptr noundef nonnull @gdp_mutex) #22
  br label %38

38:                                               ; preds = %37, %8, %4, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kobject_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @kill_device(ptr nocapture noundef readonly %0) #13 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.device_private, ptr %3, i32 0, i32 9
  %5 = load i8, ptr %4, align 4
  %6 = and i8 %5, 1
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = or i8 %5, 1
  store i8 %9, ptr %4, align 4
  br label %10

10:                                               ; preds = %8, %1
  ret i1 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @device_del(ptr noundef %0) #0 {
  %2 = alloca [15 x i8], align 1
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 9
  tail call void @mutex_lock(ptr noundef %5) #22
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.device_private, ptr %7, i32 0, i32 9
  %9 = load i8, ptr %8, align 4
  %10 = and i8 %9, 1
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = or i8 %9, 1
  store i8 %13, ptr %8, align 4
  br label %14

14:                                               ; preds = %12, %1
  tail call void @mutex_unlock(ptr noundef %5) #22
  %15 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 26
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.fwnode_handle, ptr %16, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, %0
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  store ptr null, ptr %19, align 4
  br label %23

23:                                               ; preds = %22, %18, %14
  %24 = tail call ptr @llvm.thread.pointer() #22
  %25 = getelementptr inbounds %struct.task_struct, ptr %24, i32 0, i32 4
  %26 = load i32, ptr %25, align 4
  %27 = and i32 %26, 524288
  %28 = or i32 %26, 524288
  store i32 %28, ptr %25, align 4
  %29 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 5
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %37, label %32

32:                                               ; preds = %23
  %33 = getelementptr inbounds %struct.bus_type, ptr %30, i32 0, i32 20
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.subsys_private, ptr %34, i32 0, i32 7
  %36 = tail call i32 @blocking_notifier_call_chain(ptr noundef %35, i32 noundef 2, ptr noundef %0) #22
  br label %37

37:                                               ; preds = %32, %23
  tail call void @dpm_sysfs_remove(ptr noundef %0) #22
  %38 = icmp eq ptr %4, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %37
  %40 = load ptr, ptr %6, align 8
  %41 = getelementptr inbounds %struct.device_private, ptr %40, i32 0, i32 1
  tail call void @klist_del(ptr noundef %41) #22
  br label %42

42:                                               ; preds = %39, %37
  %43 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 27
  %44 = load i32, ptr %43, align 8
  %45 = icmp ult i32 %44, 1048576
  br i1 %45, label %63, label %46

46:                                               ; preds = %42
  %47 = tail call i32 @devtmpfs_delete_node(ptr noundef %0) #22
  %48 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 31
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  %51 = getelementptr inbounds %struct.class, ptr %49, i32 0, i32 4
  %52 = select i1 %50, ptr @sysfs_dev_char_kobj, ptr %51
  %53 = load ptr, ptr %52, align 4
  call void @llvm.lifetime.start.p0(i64 15, ptr nonnull %2) #22
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(15) %2, i8 0, i32 15, i1 false) #22, !annotation !9
  %54 = icmp eq ptr %53, null
  br i1 %54, label %60, label %55

55:                                               ; preds = %46
  %56 = load i32, ptr %43, align 8
  %57 = lshr i32 %56, 20
  %58 = and i32 %56, 1048575
  %59 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %2, ptr noundef nonnull @.str.72, i32 noundef %57, i32 noundef %58) #22
  call void @sysfs_remove_link(ptr noundef nonnull %53, ptr noundef nonnull %2) #22
  br label %60

60:                                               ; preds = %55, %46
  call void @llvm.lifetime.end.p0(i64 15, ptr nonnull %2) #22
  %61 = icmp eq ptr %0, null
  br i1 %61, label %63, label %62

62:                                               ; preds = %60
  call void @sysfs_remove_file_ns(ptr noundef nonnull %0, ptr noundef nonnull @dev_attr_dev, ptr noundef null) #22
  br label %63

63:                                               ; preds = %62, %60, %42
  %64 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 31
  %65 = load ptr, ptr %64, align 4
  %66 = icmp eq ptr %65, null
  br i1 %66, label %100, label %67

67:                                               ; preds = %63
  call fastcc void @device_remove_class_symlinks(ptr noundef %0)
  %68 = load ptr, ptr %64, align 4
  %69 = getelementptr inbounds %struct.class, ptr %68, i32 0, i32 14
  %70 = load ptr, ptr %69, align 4
  %71 = getelementptr inbounds %struct.subsys_private, ptr %70, i32 0, i32 3
  call void @mutex_lock(ptr noundef %71) #22
  %72 = load ptr, ptr %64, align 4
  %73 = getelementptr inbounds %struct.class, ptr %72, i32 0, i32 14
  %74 = load ptr, ptr %73, align 4
  %75 = getelementptr inbounds %struct.subsys_private, ptr %74, i32 0, i32 2
  %76 = load ptr, ptr %75, align 4
  %77 = icmp eq ptr %76, %75
  br i1 %77, label %93, label %78

78:                                               ; preds = %86, %67
  %79 = phi ptr [ %87, %86 ], [ %72, %67 ]
  %80 = phi ptr [ %88, %86 ], [ %76, %67 ]
  %81 = getelementptr inbounds %struct.class_interface, ptr %80, i32 0, i32 3
  %82 = load ptr, ptr %81, align 4
  %83 = icmp eq ptr %82, null
  br i1 %83, label %86, label %84

84:                                               ; preds = %78
  call void %82(ptr noundef %0, ptr noundef %80) #22
  %85 = load ptr, ptr %64, align 4
  br label %86

86:                                               ; preds = %84, %78
  %87 = phi ptr [ %79, %78 ], [ %85, %84 ]
  %88 = load ptr, ptr %80, align 4
  %89 = getelementptr inbounds %struct.class, ptr %87, i32 0, i32 14
  %90 = load ptr, ptr %89, align 4
  %91 = getelementptr inbounds %struct.subsys_private, ptr %90, i32 0, i32 2
  %92 = icmp eq ptr %88, %91
  br i1 %92, label %93, label %78

93:                                               ; preds = %86, %67
  %94 = load ptr, ptr %6, align 8
  %95 = getelementptr inbounds %struct.device_private, ptr %94, i32 0, i32 4
  call void @klist_del(ptr noundef %95) #22
  %96 = load ptr, ptr %64, align 4
  %97 = getelementptr inbounds %struct.class, ptr %96, i32 0, i32 14
  %98 = load ptr, ptr %97, align 4
  %99 = getelementptr inbounds %struct.subsys_private, ptr %98, i32 0, i32 3
  call void @mutex_unlock(ptr noundef %99) #22
  br label %100

100:                                              ; preds = %93, %63
  %101 = icmp eq ptr %0, null
  br i1 %101, label %103, label %102

102:                                              ; preds = %100
  call void @sysfs_remove_file_ns(ptr noundef nonnull %0, ptr noundef nonnull @dev_attr_uevent, ptr noundef null) #22
  br label %103

103:                                              ; preds = %102, %100
  call fastcc void @device_remove_attrs(ptr noundef %0)
  call void @bus_remove_device(ptr noundef %0) #22
  call void @device_pm_remove(ptr noundef %0) #22
  call void @driver_deferred_probe_del(ptr noundef %0) #22
  call void @software_node_notify_remove(ptr noundef %0) #22
  %104 = load ptr, ptr @platform_notify_remove, align 4
  %105 = icmp eq ptr %104, null
  br i1 %105, label %108, label %106

106:                                              ; preds = %103
  %107 = call i32 %104(ptr noundef %0) #22
  br label %108

108:                                              ; preds = %106, %103
  %109 = load ptr, ptr %64, align 4
  %110 = icmp eq ptr %109, @devlink_class
  br i1 %110, label %169, label %111

111:                                              ; preds = %108
  call void @mutex_lock(ptr noundef nonnull @device_links_lock) #22
  %112 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 10
  %113 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 10, i32 0, i32 1
  %114 = load ptr, ptr %113, align 4
  %115 = icmp eq ptr %114, %112
  br i1 %115, label %139, label %116

116:                                              ; preds = %137, %111
  %117 = phi ptr [ %119, %137 ], [ %114, %111 ]
  %118 = getelementptr %struct.list_head, ptr %117, i32 0, i32 1
  %119 = load ptr, ptr %118, align 4
  %120 = getelementptr i8, ptr %117, i32 480
  %121 = load i32, ptr %120, align 8
  %122 = icmp eq i32 %121, 3
  br i1 %122, label %123, label %124, !prof !8

123:                                              ; preds = %116
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1544, i32 noundef 9, ptr noundef null) #22
  br label %124

124:                                              ; preds = %123, %116
  %125 = getelementptr i8, ptr %117, i32 -16
  call void @pm_runtime_drop_link(ptr noundef %125) #22
  %126 = getelementptr i8, ptr %117, i32 -12
  %127 = getelementptr i8, ptr %117, i32 -8
  %128 = load ptr, ptr %127, align 4
  %129 = load ptr, ptr %126, align 4
  %130 = getelementptr inbounds %struct.list_head, ptr %129, i32 0, i32 1
  store ptr %128, ptr %130, align 4
  store volatile ptr %129, ptr %128, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %127, align 4
  %131 = load ptr, ptr %118, align 4
  %132 = load ptr, ptr %117, align 4
  %133 = getelementptr inbounds %struct.list_head, ptr %132, i32 0, i32 1
  store ptr %131, ptr %133, align 4
  store volatile ptr %132, ptr %131, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %118, align 4
  %134 = getelementptr i8, ptr %117, i32 8
  call void @device_del(ptr noundef %134) #22
  %135 = icmp eq ptr %134, null
  br i1 %135, label %137, label %136

136:                                              ; preds = %124
  call void @kobject_put(ptr noundef nonnull %134) #22
  br label %137

137:                                              ; preds = %136, %124
  %138 = icmp eq ptr %119, %112
  br i1 %138, label %139, label %116

139:                                              ; preds = %137, %111
  %140 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 10, i32 1
  %141 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 10, i32 1, i32 1
  %142 = load ptr, ptr %141, align 4
  %143 = icmp eq ptr %142, %140
  br i1 %143, label %168, label %144

144:                                              ; preds = %166, %139
  %145 = phi ptr [ %147, %166 ], [ %142, %139 ]
  %146 = getelementptr %struct.list_head, ptr %145, i32 0, i32 1
  %147 = load ptr, ptr %146, align 4
  %148 = getelementptr i8, ptr %145, i32 492
  %149 = load i32, ptr %148, align 8
  %150 = add i32 %149, -1
  %151 = icmp ult i32 %150, -2
  br i1 %151, label %152, label %153, !prof !8

152:                                              ; preds = %144
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1550, i32 noundef 9, ptr noundef null) #22
  br label %153

153:                                              ; preds = %152, %144
  %154 = getelementptr i8, ptr %145, i32 -4
  call void @pm_runtime_drop_link(ptr noundef %154) #22
  %155 = load ptr, ptr %146, align 4
  %156 = load ptr, ptr %145, align 4
  %157 = getelementptr inbounds %struct.list_head, ptr %156, i32 0, i32 1
  store ptr %155, ptr %157, align 4
  store volatile ptr %156, ptr %155, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %146, align 4
  %158 = getelementptr i8, ptr %145, i32 12
  %159 = getelementptr i8, ptr %145, i32 16
  %160 = load ptr, ptr %159, align 4
  %161 = load ptr, ptr %158, align 4
  %162 = getelementptr inbounds %struct.list_head, ptr %161, i32 0, i32 1
  store ptr %160, ptr %162, align 4
  store volatile ptr %161, ptr %160, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %159, align 4
  %163 = getelementptr i8, ptr %145, i32 20
  call void @device_del(ptr noundef %163) #22
  %164 = icmp eq ptr %163, null
  br i1 %164, label %166, label %165

165:                                              ; preds = %153
  call void @kobject_put(ptr noundef nonnull %163) #22
  br label %166

166:                                              ; preds = %165, %153
  %167 = icmp eq ptr %147, %140
  br i1 %167, label %168, label %144

168:                                              ; preds = %166, %139
  call void @mutex_unlock(ptr noundef nonnull @device_links_lock) #22
  br label %169

169:                                              ; preds = %168, %108
  %170 = load ptr, ptr %29, align 4
  %171 = icmp eq ptr %170, null
  br i1 %171, label %177, label %172

172:                                              ; preds = %169
  %173 = getelementptr inbounds %struct.bus_type, ptr %170, i32 0, i32 20
  %174 = load ptr, ptr %173, align 4
  %175 = getelementptr inbounds %struct.subsys_private, ptr %174, i32 0, i32 7
  %176 = call i32 @blocking_notifier_call_chain(ptr noundef %175, i32 noundef 3, ptr noundef %0) #22
  br label %177

177:                                              ; preds = %172, %169
  %178 = call i32 @kobject_uevent(ptr noundef %0, i32 noundef 1) #22
  %179 = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 2
  %180 = load ptr, ptr %179, align 4
  call void @kobject_del(ptr noundef %0) #22
  call fastcc void @cleanup_glue_dir(ptr noundef %0, ptr noundef %180)
  %181 = load i32, ptr %25, align 4
  %182 = and i32 %181, -524289
  %183 = or i32 %182, %27
  store i32 %183, ptr %25, align 4
  br i1 %38, label %185, label %184

184:                                              ; preds = %177
  call void @kobject_put(ptr noundef nonnull %4) #22
  br label %185

185:                                              ; preds = %184, %177
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @klist_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devtmpfs_delete_node(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_deferred_probe_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @device_unregister(ptr noundef %0) #0 {
  tail call void @device_del(ptr noundef %0)
  %2 = icmp eq ptr %0, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %1
  tail call void @kobject_put(ptr noundef nonnull %0) #22
  br label %4

4:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @device_get_devnode(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #0 {
  store ptr null, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %16, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.device_type, ptr %7, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %9
  %14 = tail call ptr %11(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #22
  store ptr %14, ptr %4, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %44

16:                                               ; preds = %13, %9, %5
  %17 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 31
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %27, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.class, ptr %18, i32 0, i32 6
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %20
  %25 = tail call ptr %22(ptr noundef %0, ptr noundef %1) #22
  store ptr %25, ptr %4, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %44

27:                                               ; preds = %24, %20, %16
  %28 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = load ptr, ptr %0, align 4
  %33 = tail call ptr @strchr(ptr noundef %32, i32 noundef 33)
  %34 = icmp eq ptr %33, null
  br i1 %34, label %44, label %38

35:                                               ; preds = %27
  %36 = tail call ptr @strchr(ptr noundef nonnull %29, i32 noundef 33)
  %37 = icmp eq ptr %36, null
  br i1 %37, label %44, label %38

38:                                               ; preds = %35, %31
  %39 = phi ptr [ %29, %35 ], [ %32, %31 ]
  %40 = tail call noalias ptr @kstrdup(ptr noundef %39, i32 noundef 3264) #22
  %41 = icmp eq ptr %40, null
  br i1 %41, label %44, label %42

42:                                               ; preds = %38
  %43 = tail call ptr @strreplace(ptr noundef nonnull %40, i8 noundef zeroext 33, i8 noundef zeroext 47) #22
  store ptr %40, ptr %4, align 4
  br label %44

44:                                               ; preds = %42, %38, %35, %31, %24, %13
  %45 = phi ptr [ %40, %42 ], [ %14, %13 ], [ %25, %24 ], [ null, %38 ], [ %29, %35 ], [ %32, %31 ]
  ret ptr %45
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #14

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strreplace(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @klist_iter_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @klist_iter_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @device_for_each_child_reverse(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca %struct.klist_iter, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #22
  store i64 0, ptr %4, align 8, !annotation !9
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %25, label %8

8:                                                ; preds = %3
  call void @klist_iter_init(ptr noundef nonnull %6, ptr noundef nonnull %4) #22
  %9 = call ptr @klist_prev(ptr noundef nonnull %4) #22
  %10 = icmp eq ptr %9, null
  br i1 %10, label %23, label %11

11:                                               ; preds = %19, %8
  %12 = phi ptr [ %21, %19 ], [ %9, %8 ]
  %13 = phi i32 [ %20, %19 ], [ 0, %8 ]
  %14 = getelementptr i8, ptr %12, i32 80
  %15 = load ptr, ptr %14, align 4
  %16 = icmp ne ptr %15, null
  %17 = icmp eq i32 %13, 0
  %18 = select i1 %16, i1 %17, i1 false
  br i1 %18, label %19, label %23

19:                                               ; preds = %11
  %20 = call i32 %2(ptr noundef nonnull %15, ptr noundef %1) #22
  %21 = call ptr @klist_prev(ptr noundef nonnull %4) #22
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %11

23:                                               ; preds = %19, %11, %8
  %24 = phi i32 [ 0, %8 ], [ %20, %19 ], [ %13, %11 ]
  call void @klist_iter_exit(ptr noundef nonnull %4) #22
  br label %25

25:                                               ; preds = %23, %3
  %26 = phi i32 [ %24, %23 ], [ 0, %3 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #22
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @device_find_child(ptr noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca %struct.klist_iter, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #22
  store i64 0, ptr %4, align 8, !annotation !9
  %5 = icmp eq ptr %0, null
  br i1 %5, label %27, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 2
  %8 = load ptr, ptr %7, align 8
  call void @klist_iter_init(ptr noundef %8, ptr noundef nonnull %4) #22
  %9 = call ptr @klist_next(ptr noundef nonnull %4) #22
  %10 = icmp eq ptr %9, null
  br i1 %10, label %25, label %11

11:                                               ; preds = %22, %6
  %12 = phi ptr [ %23, %22 ], [ %9, %6 ]
  %13 = getelementptr i8, ptr %12, i32 80
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %25, label %16

16:                                               ; preds = %11
  %17 = call i32 %2(ptr noundef nonnull %14, ptr noundef %1) #22
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %16
  %20 = call ptr @kobject_get(ptr noundef nonnull %14) #22
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %19, %16
  %23 = call ptr @klist_next(ptr noundef nonnull %4) #22
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %11

25:                                               ; preds = %22, %19, %11, %6
  %26 = phi ptr [ null, %6 ], [ null, %22 ], [ %14, %19 ], [ null, %11 ]
  call void @klist_iter_exit(ptr noundef nonnull %4) #22
  br label %27

27:                                               ; preds = %25, %3
  %28 = phi ptr [ %26, %25 ], [ null, %3 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #22
  ret ptr %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @device_find_child_by_name(ptr noundef readonly %0, ptr noundef %1) #0 {
  %3 = alloca %struct.klist_iter, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #22
  store i64 0, ptr %3, align 8, !annotation !9
  %4 = icmp eq ptr %0, null
  br i1 %4, label %32, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8
  call void @klist_iter_init(ptr noundef %7, ptr noundef nonnull %3) #22
  %8 = call ptr @klist_next(ptr noundef nonnull %3) #22
  %9 = icmp eq ptr %8, null
  br i1 %9, label %30, label %10

10:                                               ; preds = %27, %5
  %11 = phi ptr [ %28, %27 ], [ %8, %5 ]
  %12 = getelementptr i8, ptr %11, i32 80
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %30, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = load ptr, ptr %13, align 4
  br label %21

21:                                               ; preds = %19, %15
  %22 = phi ptr [ %20, %19 ], [ %17, %15 ]
  %23 = call zeroext i1 @sysfs_streq(ptr noundef %22, ptr noundef %1) #22
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = call ptr @kobject_get(ptr noundef nonnull %13) #22
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %24, %21
  %28 = call ptr @klist_next(ptr noundef nonnull %3) #22
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %10

30:                                               ; preds = %27, %24, %10, %5
  %31 = phi ptr [ null, %5 ], [ null, %27 ], [ %13, %24 ], [ null, %10 ]
  call void @klist_iter_exit(ptr noundef nonnull %3) #22
  br label %32

32:                                               ; preds = %30, %2
  %33 = phi ptr [ %31, %30 ], [ null, %2 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #22
  ret ptr %33
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @sysfs_streq(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @devices_init() local_unnamed_addr #4 section ".init.text" {
  %1 = tail call ptr @kset_create_and_add(ptr noundef nonnull @.str.15, ptr noundef nonnull @device_uevent_ops, ptr noundef null) #22
  store ptr %1, ptr @devices_kset, align 4
  %2 = icmp eq ptr %1, null
  br i1 %2, label %19, label %3

3:                                                ; preds = %0
  %4 = tail call ptr @kobject_create_and_add(ptr noundef nonnull @.str.16, ptr noundef null) #22
  store ptr %4, ptr @dev_kobj, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %17, label %6

6:                                                ; preds = %3
  %7 = tail call ptr @kobject_create_and_add(ptr noundef nonnull @.str.17, ptr noundef nonnull %4) #22
  store ptr %7, ptr @sysfs_dev_block_kobj, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %6
  %10 = load ptr, ptr @dev_kobj, align 4
  %11 = tail call ptr @kobject_create_and_add(ptr noundef nonnull @.str.18, ptr noundef %10) #22
  store ptr %11, ptr @sysfs_dev_char_kobj, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %9
  %14 = load ptr, ptr @sysfs_dev_block_kobj, align 4
  tail call void @kobject_put(ptr noundef %14) #22
  br label %15

15:                                               ; preds = %13, %6
  %16 = load ptr, ptr @dev_kobj, align 4
  tail call void @kobject_put(ptr noundef %16) #22
  br label %17

17:                                               ; preds = %15, %3
  %18 = load ptr, ptr @devices_kset, align 4
  tail call void @kset_unregister(ptr noundef %18) #22
  br label %19

19:                                               ; preds = %17, %9, %0
  %20 = phi i32 [ -12, %17 ], [ -12, %0 ], [ 0, %9 ]
  ret i32 %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kset_create_and_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kset_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @device_offline(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.klist_iter, align 8
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 37
  %4 = load i8, ptr %3, align 4
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %51

7:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #22
  store i64 0, ptr %2, align 8, !annotation !9
  %8 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 2
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #22
  br label %25

12:                                               ; preds = %7
  call void @klist_iter_init(ptr noundef nonnull %9, ptr noundef nonnull %2) #22
  br label %13

13:                                               ; preds = %20, %12
  %14 = call ptr @klist_next(ptr noundef nonnull %2) #22
  %15 = icmp eq ptr %14, null
  br i1 %15, label %23, label %16

16:                                               ; preds = %13
  %17 = getelementptr i8, ptr %14, i32 80
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %16
  %21 = call fastcc i32 @device_check_offline(ptr noundef nonnull %18, ptr noundef null) #22
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %13, label %24

23:                                               ; preds = %16, %13
  call void @klist_iter_exit(ptr noundef nonnull %2) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #22
  br label %25

24:                                               ; preds = %20
  call void @klist_iter_exit(ptr noundef nonnull %2) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #22
  br label %51

25:                                               ; preds = %23, %11
  %26 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 9
  call void @mutex_lock(ptr noundef %26) #22
  %27 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 5
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %49, label %30

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.bus_type, ptr %28, i32 0, i32 13
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %49, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.bus_type, ptr %28, i32 0, i32 12
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %49, label %38

38:                                               ; preds = %34
  %39 = load i8, ptr %3, align 4
  %40 = and i8 %39, 2
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %38
  %43 = call i32 %32(ptr noundef %0) #22
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %42
  %46 = call i32 @kobject_uevent(ptr noundef %0, i32 noundef 5) #22
  %47 = load i8, ptr %3, align 4
  %48 = or i8 %47, 2
  store i8 %48, ptr %3, align 4
  br label %49

49:                                               ; preds = %45, %42, %38, %34, %30, %25
  %50 = phi i32 [ %43, %42 ], [ 0, %45 ], [ 0, %34 ], [ 1, %38 ], [ 0, %30 ], [ 0, %25 ]
  call void @mutex_unlock(ptr noundef %26) #22
  br label %51

51:                                               ; preds = %49, %24, %1
  %52 = phi i32 [ %50, %49 ], [ -1, %1 ], [ %21, %24 ]
  ret i32 %52
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @device_check_offline(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) unnamed_addr #0 {
  %3 = alloca %struct.klist_iter, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #22
  store i64 0, ptr %3, align 8, !annotation !9
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #22
  br label %21

8:                                                ; preds = %2
  call void @klist_iter_init(ptr noundef nonnull %5, ptr noundef nonnull %3) #22
  br label %9

9:                                                ; preds = %16, %8
  %10 = call ptr @klist_next(ptr noundef nonnull %3) #22
  %11 = icmp eq ptr %10, null
  br i1 %11, label %19, label %12

12:                                               ; preds = %9
  %13 = getelementptr i8, ptr %10, i32 80
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %12
  %17 = call fastcc i32 @device_check_offline(ptr noundef nonnull %14, ptr noundef null) #22
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %9, label %20

19:                                               ; preds = %12, %9
  call void @klist_iter_exit(ptr noundef nonnull %3) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #22
  br label %21

20:                                               ; preds = %16
  call void @klist_iter_exit(ptr noundef nonnull %3) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #22
  br label %39

21:                                               ; preds = %19, %7
  %22 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 5
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %39, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.bus_type, ptr %23, i32 0, i32 13
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %39, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.bus_type, ptr %23, i32 0, i32 12
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %39, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 37
  %35 = load i8, ptr %34, align 4
  %36 = and i8 %35, 2
  %37 = icmp eq i8 %36, 0
  %38 = select i1 %37, i32 -16, i32 0
  br label %39

39:                                               ; preds = %33, %29, %25, %21, %20
  %40 = phi i32 [ %17, %20 ], [ 0, %29 ], [ %38, %33 ], [ 0, %25 ], [ 0, %21 ]
  ret i32 %40
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @device_online(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 9
  tail call void @mutex_lock(ptr noundef %2) #22
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %26, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.bus_type, ptr %4, i32 0, i32 13
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %26, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.bus_type, ptr %4, i32 0, i32 12
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %26, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 37
  %16 = load i8, ptr %15, align 4
  %17 = and i8 %16, 2
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %14
  %20 = tail call i32 %12(ptr noundef %0) #22
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = tail call i32 @kobject_uevent(ptr noundef %0, i32 noundef 4) #22
  %24 = load i8, ptr %15, align 4
  %25 = and i8 %24, -3
  store i8 %25, ptr %15, align 4
  br label %26

26:                                               ; preds = %22, %19, %14, %10, %6, %1
  %27 = phi i32 [ %20, %19 ], [ 0, %22 ], [ 0, %10 ], [ 1, %14 ], [ 0, %6 ], [ 0, %1 ]
  tail call void @mutex_unlock(ptr noundef %2) #22
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @__root_device_register(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 480) #23
  %5 = icmp eq ptr %4, null
  br i1 %5, label %27, label %6

6:                                                ; preds = %2
  %7 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef nonnull %4, ptr noundef nonnull @.str.13, ptr noundef %0)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  tail call void @kfree(ptr noundef nonnull %4) #22
  %10 = inttoptr i32 %7 to ptr
  br label %27

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 33
  store ptr @root_device_release, ptr %12, align 4
  tail call void @device_initialize(ptr noundef nonnull %4) #22
  %13 = tail call i32 @device_add(ptr noundef nonnull %4) #22
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  tail call void @kobject_put(ptr noundef nonnull %4) #22
  %16 = inttoptr i32 %13 to ptr
  br label %27

17:                                               ; preds = %11
  %18 = icmp eq ptr %1, null
  br i1 %18, label %27, label %19

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.module, ptr %1, i32 0, i32 3
  %21 = tail call i32 @sysfs_create_link(ptr noundef nonnull %4, ptr noundef %20, ptr noundef nonnull @.str.19) #22
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.root_device, ptr %4, i32 0, i32 1
  store ptr %1, ptr %24, align 8
  br label %27

25:                                               ; preds = %19
  tail call void @device_del(ptr noundef nonnull %4) #22
  tail call void @kobject_put(ptr noundef nonnull %4) #22
  %26 = inttoptr i32 %21 to ptr
  br label %27

27:                                               ; preds = %25, %23, %17, %15, %9, %2
  %28 = phi ptr [ %10, %9 ], [ %16, %15 ], [ %26, %25 ], [ inttoptr (i32 -12 to ptr), %2 ], [ %4, %23 ], [ %4, %17 ]
  ret ptr %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @root_device_release(ptr noundef %0) #0 {
  tail call void @kfree(ptr noundef %0) #22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_link(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @root_device_unregister(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.root_device, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @sysfs_remove_link(ptr noundef %0, ptr noundef nonnull @.str.19) #22
  br label %6

6:                                                ; preds = %5, %1
  tail call void @device_del(ptr noundef %0) #22
  %7 = icmp eq ptr %0, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %6
  tail call void @kobject_put(ptr noundef nonnull %0) #22
  br label %9

9:                                                ; preds = %8, %6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_link(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @device_create(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ...) #0 {
  %6 = alloca %struct.__va_list, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #22
  store i32 0, ptr %6, align 4, !annotation !9
  call void @llvm.va_start(ptr nonnull %6)
  %7 = load i32, ptr %6, align 4
  %8 = insertvalue [1 x i32] poison, i32 %7, 0
  %9 = icmp eq ptr %0, null
  %10 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %11 = or i1 %9, %10
  br i1 %11, label %30, label %12

12:                                               ; preds = %5
  %13 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %14 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3520, i32 noundef 472) #23
  %15 = icmp eq ptr %14, null
  br i1 %15, label %30, label %16

16:                                               ; preds = %12
  call void @device_initialize(ptr noundef nonnull %14) #22
  %17 = getelementptr inbounds %struct.device, ptr %14, i32 0, i32 27
  store i32 %2, ptr %17, align 8
  %18 = getelementptr inbounds %struct.device, ptr %14, i32 0, i32 31
  store ptr %0, ptr %18, align 4
  %19 = getelementptr inbounds %struct.device, ptr %14, i32 0, i32 1
  store ptr %1, ptr %19, align 4
  %20 = getelementptr inbounds %struct.device, ptr %14, i32 0, i32 32
  store ptr null, ptr %20, align 8
  %21 = getelementptr inbounds %struct.device, ptr %14, i32 0, i32 33
  store ptr @device_create_release, ptr %21, align 4
  %22 = getelementptr inbounds %struct.device, ptr %14, i32 0, i32 8
  store ptr %3, ptr %22, align 8
  %23 = call i32 @kobject_set_name_vargs(ptr noundef nonnull %14, ptr noundef %4, [1 x i32] %8) #22
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %16
  %26 = call i32 @device_add(ptr noundef nonnull %14) #22
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %25, %16
  %29 = phi i32 [ %23, %16 ], [ %26, %25 ]
  call void @kobject_put(ptr noundef nonnull %14) #22
  br label %30

30:                                               ; preds = %28, %12, %5
  %31 = phi i32 [ %29, %28 ], [ -12, %12 ], [ -19, %5 ]
  %32 = inttoptr i32 %31 to ptr
  br label %33

33:                                               ; preds = %30, %25
  %34 = phi ptr [ %32, %30 ], [ %14, %25 ]
  call void @llvm.va_end(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #22
  ret ptr %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @device_create_with_groups(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ...) #0 {
  %7 = alloca %struct.__va_list, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #22
  store i32 0, ptr %7, align 4, !annotation !9
  call void @llvm.va_start(ptr nonnull %7)
  %8 = load i32, ptr %7, align 4
  %9 = insertvalue [1 x i32] poison, i32 %8, 0
  %10 = icmp eq ptr %0, null
  %11 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %12 = or i1 %10, %11
  br i1 %12, label %31, label %13

13:                                               ; preds = %6
  %14 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %15 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3520, i32 noundef 472) #23
  %16 = icmp eq ptr %15, null
  br i1 %16, label %31, label %17

17:                                               ; preds = %13
  call void @device_initialize(ptr noundef nonnull %15) #22
  %18 = getelementptr inbounds %struct.device, ptr %15, i32 0, i32 27
  store i32 %2, ptr %18, align 8
  %19 = getelementptr inbounds %struct.device, ptr %15, i32 0, i32 31
  store ptr %0, ptr %19, align 4
  %20 = getelementptr inbounds %struct.device, ptr %15, i32 0, i32 1
  store ptr %1, ptr %20, align 4
  %21 = getelementptr inbounds %struct.device, ptr %15, i32 0, i32 32
  store ptr %4, ptr %21, align 8
  %22 = getelementptr inbounds %struct.device, ptr %15, i32 0, i32 33
  store ptr @device_create_release, ptr %22, align 4
  %23 = getelementptr inbounds %struct.device, ptr %15, i32 0, i32 8
  store ptr %3, ptr %23, align 8
  %24 = call i32 @kobject_set_name_vargs(ptr noundef nonnull %15, ptr noundef %5, [1 x i32] %9) #22
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %17
  %27 = call i32 @device_add(ptr noundef nonnull %15) #22
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %26, %17
  %30 = phi i32 [ %24, %17 ], [ %27, %26 ]
  call void @kobject_put(ptr noundef nonnull %15) #22
  br label %31

31:                                               ; preds = %29, %13, %6
  %32 = phi i32 [ %30, %29 ], [ -12, %13 ], [ -19, %6 ]
  %33 = inttoptr i32 %32 to ptr
  br label %34

34:                                               ; preds = %31, %26
  %35 = phi ptr [ %33, %31 ], [ %15, %26 ]
  call void @llvm.va_end(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #22
  ret ptr %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @device_destroy(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3)
  store i32 %1, ptr %3, align 4
  %4 = call ptr @class_find_device(ptr noundef %0, ptr noundef null, ptr noundef nonnull %3, ptr noundef nonnull @device_match_devt) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3)
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  call void @kobject_put(ptr noundef nonnull %4) #22
  call void @device_del(ptr noundef nonnull %4) #22
  call void @kobject_put(ptr noundef nonnull %4) #22
  br label %7

7:                                                ; preds = %6, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @device_rename(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %32, label %4

4:                                                ; preds = %2
  %5 = tail call ptr @kobject_get(ptr noundef nonnull %0) #22
  %6 = icmp eq ptr %5, null
  br i1 %6, label %32, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %7
  %12 = load ptr, ptr %5, align 4
  br label %13

13:                                               ; preds = %11, %7
  %14 = phi ptr [ %12, %11 ], [ %9, %7 ]
  %15 = tail call noalias ptr @kstrdup(ptr noundef %14, i32 noundef 3264) #22
  %16 = icmp eq ptr %15, null
  br i1 %16, label %30, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 31
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %28, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.class, ptr %19, i32 0, i32 14
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.kset, ptr %23, i32 0, i32 2
  %25 = tail call ptr @kobject_namespace(ptr noundef nonnull %0) #22
  %26 = tail call i32 @sysfs_rename_link_ns(ptr noundef %24, ptr noundef nonnull %0, ptr noundef nonnull %15, ptr noundef %1, ptr noundef %25) #22
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %21, %17
  %29 = tail call i32 @kobject_rename(ptr noundef nonnull %0, ptr noundef %1) #22
  br label %30

30:                                               ; preds = %28, %21, %13
  %31 = phi i32 [ %26, %21 ], [ %29, %28 ], [ -12, %13 ]
  tail call void @kobject_put(ptr noundef nonnull %5) #22
  tail call void @kfree(ptr noundef %15) #22
  br label %32

32:                                               ; preds = %30, %4, %2
  %33 = phi i32 [ %31, %30 ], [ -22, %4 ], [ -22, %2 ]
  ret i32 %33
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_rename_link_ns(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kobject_namespace(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_rename(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @device_move(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %81, label %5

5:                                                ; preds = %3
  %6 = tail call ptr @kobject_get(ptr noundef nonnull %0) #22
  %7 = icmp eq ptr %6, null
  br i1 %7, label %81, label %8

8:                                                ; preds = %5
  tail call void @device_pm_lock() #22
  %9 = icmp eq ptr %1, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %8
  %11 = tail call ptr @kobject_get(ptr noundef nonnull %1) #22
  %12 = tail call fastcc ptr @get_device_parent(ptr noundef nonnull %6, ptr noundef %11)
  %13 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %13, label %19, label %23

14:                                               ; preds = %8
  %15 = tail call fastcc ptr @get_device_parent(ptr noundef nonnull %6, ptr noundef null)
  %16 = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  br i1 %16, label %17, label %23

17:                                               ; preds = %14
  %18 = ptrtoint ptr %15 to i32
  br label %79

19:                                               ; preds = %10
  %20 = ptrtoint ptr %12 to i32
  %21 = icmp eq ptr %11, null
  br i1 %21, label %79, label %22

22:                                               ; preds = %19
  tail call void @kobject_put(ptr noundef nonnull %11) #22
  br label %79

23:                                               ; preds = %14, %10
  %24 = phi ptr [ %15, %14 ], [ %12, %10 ]
  %25 = phi ptr [ null, %14 ], [ %11, %10 ]
  %26 = tail call i32 @kobject_move(ptr noundef nonnull %6, ptr noundef %24) #22
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %23
  tail call fastcc void @cleanup_glue_dir(ptr noundef nonnull %6, ptr noundef %24)
  %29 = icmp eq ptr %25, null
  br i1 %29, label %79, label %30

30:                                               ; preds = %28
  tail call void @kobject_put(ptr noundef nonnull %25) #22
  br label %79

31:                                               ; preds = %23
  %32 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 1
  %33 = load ptr, ptr %32, align 4
  store ptr %25, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 2
  %37 = load ptr, ptr %36, align 8
  %38 = getelementptr inbounds %struct.device_private, ptr %37, i32 0, i32 1
  tail call void @klist_remove(ptr noundef %38) #22
  br label %39

39:                                               ; preds = %35, %31
  %40 = icmp eq ptr %25, null
  br i1 %40, label %47, label %41

41:                                               ; preds = %39
  %42 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 2
  %43 = load ptr, ptr %42, align 8
  %44 = getelementptr inbounds %struct.device_private, ptr %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.device, ptr %25, i32 0, i32 2
  %46 = load ptr, ptr %45, align 8
  tail call void @klist_add_tail(ptr noundef %44, ptr noundef %46) #22
  br label %47

47:                                               ; preds = %41, %39
  %48 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 31
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %73, label %51

51:                                               ; preds = %47
  br i1 %34, label %53, label %52

52:                                               ; preds = %51
  tail call void @sysfs_remove_link(ptr noundef nonnull %6, ptr noundef nonnull @.str.67) #22
  br label %53

53:                                               ; preds = %52, %51
  br i1 %40, label %73, label %54

54:                                               ; preds = %53
  %55 = tail call i32 @sysfs_create_link(ptr noundef nonnull %6, ptr noundef nonnull %25, ptr noundef nonnull @.str.67) #22
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %73, label %57

57:                                               ; preds = %54
  tail call void @sysfs_remove_link(ptr noundef nonnull %6, ptr noundef nonnull @.str.67) #22
  br i1 %34, label %60, label %58

58:                                               ; preds = %57
  %59 = tail call i32 @sysfs_create_link(ptr noundef nonnull %6, ptr noundef nonnull %33, ptr noundef nonnull @.str.67) #22
  br label %60

60:                                               ; preds = %58, %57
  %61 = tail call i32 @kobject_move(ptr noundef nonnull %6, ptr noundef %33) #22
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %72

63:                                               ; preds = %60
  %64 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 2
  %65 = load ptr, ptr %64, align 8
  %66 = getelementptr inbounds %struct.device_private, ptr %65, i32 0, i32 1
  tail call void @klist_remove(ptr noundef %66) #22
  store ptr %33, ptr %32, align 4
  br i1 %34, label %72, label %67

67:                                               ; preds = %63
  %68 = load ptr, ptr %64, align 8
  %69 = getelementptr inbounds %struct.device_private, ptr %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.device, ptr %33, i32 0, i32 2
  %71 = load ptr, ptr %70, align 8
  tail call void @klist_add_tail(ptr noundef %69, ptr noundef %71) #22
  br label %72

72:                                               ; preds = %67, %63, %60
  tail call fastcc void @cleanup_glue_dir(ptr noundef nonnull %6, ptr noundef %24)
  tail call void @kobject_put(ptr noundef nonnull %25) #22
  br label %79

73:                                               ; preds = %54, %53, %47
  switch i32 %2, label %77 [
    i32 3, label %76
    i32 1, label %74
    i32 2, label %75
  ]

74:                                               ; preds = %73
  tail call void @device_pm_move_after(ptr noundef nonnull %6, ptr noundef %25) #22
  tail call fastcc void @devices_kset_move_after(ptr noundef nonnull %6, ptr noundef %25)
  br label %77

75:                                               ; preds = %73
  tail call void @device_pm_move_before(ptr noundef %25, ptr noundef nonnull %6) #22
  tail call fastcc void @devices_kset_move_before(ptr noundef %25, ptr noundef nonnull %6)
  br label %77

76:                                               ; preds = %73
  tail call void @device_pm_move_last(ptr noundef nonnull %6) #22
  tail call void @devices_kset_move_last(ptr noundef nonnull %6)
  br label %77

77:                                               ; preds = %76, %75, %74, %73
  br i1 %34, label %79, label %78

78:                                               ; preds = %77
  tail call void @kobject_put(ptr noundef nonnull %33) #22
  br label %79

79:                                               ; preds = %78, %77, %72, %30, %28, %22, %19, %17
  %80 = phi i32 [ %55, %72 ], [ %18, %17 ], [ %20, %19 ], [ %20, %22 ], [ %26, %28 ], [ %26, %30 ], [ 0, %77 ], [ 0, %78 ]
  tail call void @device_pm_unlock() #22
  tail call void @kobject_put(ptr noundef nonnull %6) #22
  br label %81

81:                                               ; preds = %79, %5, %3
  %82 = phi i32 [ %80, %79 ], [ -22, %5 ], [ -22, %3 ]
  ret i32 %82
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_move(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @klist_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_pm_move_after(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @devices_kset_move_after(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = load ptr, ptr @devices_kset, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %19, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.kset, ptr %3, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %6) #22
  %7 = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 1
  %8 = getelementptr inbounds %struct.kobject, ptr %1, i32 0, i32 1
  %9 = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 1, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = load ptr, ptr %7, align 4
  %12 = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  store ptr %10, ptr %12, align 4
  store volatile ptr %11, ptr %10, align 4
  %13 = load ptr, ptr %8, align 4
  %14 = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  store ptr %7, ptr %14, align 4
  store ptr %13, ptr %7, align 4
  store ptr %8, ptr %9, align 4
  store volatile ptr %7, ptr %8, align 4
  %15 = load ptr, ptr @devices_kset, align 4
  %16 = getelementptr inbounds %struct.kset, ptr %15, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !10
  %17 = load i16, ptr %16, align 4
  %18 = add i16 %17, 1
  store i16 %18, ptr %16, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #22, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #22, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !13
  br label %19

19:                                               ; preds = %5, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_pm_move_before(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @devices_kset_move_before(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = load ptr, ptr @devices_kset, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %19, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.kset, ptr %3, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %6) #22
  %7 = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 1
  %8 = getelementptr inbounds %struct.kobject, ptr %1, i32 0, i32 1
  %9 = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 1, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = load ptr, ptr %7, align 4
  %12 = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  store ptr %10, ptr %12, align 4
  store volatile ptr %11, ptr %10, align 4
  %13 = getelementptr inbounds %struct.kobject, ptr %1, i32 0, i32 1, i32 1
  %14 = load ptr, ptr %13, align 4
  store ptr %7, ptr %13, align 4
  store ptr %8, ptr %7, align 4
  store ptr %14, ptr %9, align 4
  store volatile ptr %7, ptr %14, align 4
  %15 = load ptr, ptr @devices_kset, align 4
  %16 = getelementptr inbounds %struct.kset, ptr %15, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !10
  %17 = load i16, ptr %16, align 4
  %18 = add i16 %17, 1
  store i16 %18, ptr %16, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #22, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #22, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !13
  br label %19

19:                                               ; preds = %5, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_pm_move_last(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @device_change_owner(ptr noundef %0, [1 x i32] %1, [1 x i32] %2) #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %77, label %5

5:                                                ; preds = %3
  %6 = tail call ptr @kobject_get(ptr noundef nonnull %0) #22
  %7 = icmp eq ptr %6, null
  br i1 %7, label %77, label %8

8:                                                ; preds = %5
  %9 = tail call i32 @sysfs_change_owner(ptr noundef nonnull %0, [1 x i32] %1, [1 x i32] %2) #22
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %75

11:                                               ; preds = %8
  %12 = load ptr, ptr @dev_attr_uevent, align 4
  %13 = tail call i32 @sysfs_file_change_owner(ptr noundef nonnull %0, ptr noundef %12, [1 x i32] %1, [1 x i32] %2) #22
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %75

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 31
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 4
  %19 = load ptr, ptr %18, align 8
  %20 = icmp eq ptr %17, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.class, ptr %17, i32 0, i32 3
  %23 = load ptr, ptr %22, align 4
  %24 = tail call i32 @sysfs_groups_change_owner(ptr noundef nonnull %6, ptr noundef %23, [1 x i32] %1, [1 x i32] %2) #22
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %75

26:                                               ; preds = %21, %15
  %27 = icmp eq ptr %19, null
  br i1 %27, label %33, label %28

28:                                               ; preds = %26
  %29 = getelementptr inbounds %struct.device_type, ptr %19, i32 0, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = tail call i32 @sysfs_groups_change_owner(ptr noundef nonnull %6, ptr noundef %30, [1 x i32] %1, [1 x i32] %2) #22
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %75

33:                                               ; preds = %28, %26
  %34 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 32
  %35 = load ptr, ptr %34, align 8
  %36 = tail call i32 @sysfs_groups_change_owner(ptr noundef nonnull %6, ptr noundef %35, [1 x i32] %1, [1 x i32] %2) #22
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %75

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 5
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %59, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.bus_type, ptr %40, i32 0, i32 13
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %59, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.bus_type, ptr %40, i32 0, i32 12
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %59, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 37
  %52 = load i8, ptr %51, align 4
  %53 = and i8 %52, 1
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %50
  %56 = load ptr, ptr @dev_attr_online, align 4
  %57 = tail call i32 @sysfs_file_change_owner(ptr noundef nonnull %6, ptr noundef %56, [1 x i32] %1, [1 x i32] %2) #22
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %75

59:                                               ; preds = %55, %50, %46, %42, %38
  %60 = tail call i32 @dpm_sysfs_change_owner(ptr noundef nonnull %6, [1 x i32] %1, [1 x i32] %2) #22
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %75

62:                                               ; preds = %59
  %63 = load ptr, ptr %16, align 4
  %64 = getelementptr inbounds %struct.class, ptr %63, i32 0, i32 14
  %65 = load ptr, ptr %64, align 4
  %66 = getelementptr inbounds %struct.kset, ptr %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 3
  %68 = load ptr, ptr %67, align 4
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %72

70:                                               ; preds = %62
  %71 = load ptr, ptr %6, align 4
  br label %72

72:                                               ; preds = %70, %62
  %73 = phi ptr [ %71, %70 ], [ %68, %62 ]
  %74 = tail call i32 @sysfs_link_change_owner(ptr noundef %66, ptr noundef nonnull %6, ptr noundef %73, [1 x i32] %1, [1 x i32] %2) #22
  br label %75

75:                                               ; preds = %72, %59, %55, %33, %28, %21, %11, %8
  %76 = phi i32 [ %9, %8 ], [ %13, %11 ], [ %60, %59 ], [ %74, %72 ], [ %57, %55 ], [ %36, %33 ], [ %31, %28 ], [ %24, %21 ]
  tail call void @kobject_put(ptr noundef nonnull %6) #22
  br label %77

77:                                               ; preds = %75, %5, %3
  %78 = phi i32 [ %76, %75 ], [ -22, %5 ], [ -22, %3 ]
  ret i32 %78
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_change_owner(ptr noundef, [1 x i32], [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_file_change_owner(ptr noundef, ptr noundef, [1 x i32], [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpm_sysfs_change_owner(ptr noundef, [1 x i32], [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_link_change_owner(ptr noundef, ptr noundef, ptr noundef, [1 x i32], [1 x i32]) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @device_shutdown() local_unnamed_addr #0 {
  tail call void @wait_for_device_probe() #22
  tail call void @device_block_probing() #22
  tail call void @cpufreq_suspend() #22
  %1 = load ptr, ptr @devices_kset, align 4
  %2 = getelementptr inbounds %struct.kset, ptr %1, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %2) #22
  %3 = load ptr, ptr @devices_kset, align 4
  %4 = load volatile ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, %3
  br i1 %5, label %101, label %6

6:                                                ; preds = %95, %0
  %7 = phi ptr [ %98, %95 ], [ %3, %0 ]
  %8 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 -4
  %11 = getelementptr i8, ptr %9, i32 32
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %6
  %15 = tail call ptr @kobject_get(ptr noundef nonnull %12) #22
  br label %16

16:                                               ; preds = %14, %6
  %17 = phi ptr [ %15, %14 ], [ null, %6 ]
  %18 = icmp eq ptr %10, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %16
  %20 = tail call ptr @kobject_get(ptr noundef nonnull %10) #22
  br label %21

21:                                               ; preds = %19, %16
  %22 = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = load ptr, ptr %9, align 4
  %25 = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  store ptr %23, ptr %25, align 4
  store volatile ptr %24, ptr %23, align 4
  store volatile ptr %9, ptr %9, align 4
  store ptr %9, ptr %22, align 4
  %26 = load ptr, ptr @devices_kset, align 4
  %27 = getelementptr inbounds %struct.kset, ptr %26, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !10
  %28 = load i16, ptr %27, align 4
  %29 = add i16 %28, 1
  store i16 %29, ptr %27, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #22, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #22, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !13
  %30 = icmp eq ptr %17, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %21
  %32 = getelementptr inbounds %struct.device, ptr %17, i32 0, i32 9
  tail call void @mutex_lock(ptr noundef %32) #22
  br label %33

33:                                               ; preds = %31, %21
  %34 = getelementptr i8, ptr %9, i32 64
  tail call void @mutex_lock(ptr noundef %34) #22
  %35 = getelementptr i8, ptr %9, i32 252
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %35) #22, !srcloc !15
  %36 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %35, ptr %35, i32 1, ptr elementtype(i32) %35) #22, !srcloc !27
  %37 = tail call i32 @pm_runtime_barrier(ptr noundef %10) #22
  %38 = getelementptr i8, ptr %9, i32 440
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %55, label %41

41:                                               ; preds = %33
  %42 = getelementptr inbounds %struct.class, ptr %39, i32 0, i32 9
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %55, label %45

45:                                               ; preds = %41
  %46 = load i8, ptr @initcall_debug, align 1, !range !25
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %45
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %10, ptr noundef nonnull @.str.20) #24
  %49 = load ptr, ptr %38, align 4
  %50 = getelementptr inbounds %struct.class, ptr %49, i32 0, i32 9
  %51 = load ptr, ptr %50, align 4
  br label %52

52:                                               ; preds = %48, %45
  %53 = phi ptr [ %51, %48 ], [ %43, %45 ]
  %54 = tail call i32 %53(ptr noundef %10) #22
  br label %55

55:                                               ; preds = %52, %41, %33
  %56 = getelementptr i8, ptr %9, i32 48
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %69, label %59

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.bus_type, ptr %57, i32 0, i32 11
  %61 = load ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %69, label %63

63:                                               ; preds = %59
  %64 = load i8, ptr @initcall_debug, align 1, !range !25
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %86, label %66

66:                                               ; preds = %63
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %10, ptr noundef nonnull @.str.21) #24
  %67 = load ptr, ptr %56, align 4
  %68 = getelementptr inbounds %struct.bus_type, ptr %67, i32 0, i32 11
  br label %83

69:                                               ; preds = %59, %55
  %70 = getelementptr i8, ptr %9, i32 52
  %71 = load ptr, ptr %70, align 8
  %72 = icmp eq ptr %71, null
  br i1 %72, label %88, label %73

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.device_driver, ptr %71, i32 0, i32 11
  %75 = load ptr, ptr %74, align 4
  %76 = icmp eq ptr %75, null
  br i1 %76, label %88, label %77

77:                                               ; preds = %73
  %78 = load i8, ptr @initcall_debug, align 1, !range !25
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %86, label %80

80:                                               ; preds = %77
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %10, ptr noundef nonnull @.str.21) #24
  %81 = load ptr, ptr %70, align 8
  %82 = getelementptr inbounds %struct.device_driver, ptr %81, i32 0, i32 11
  br label %83

83:                                               ; preds = %80, %66
  %84 = phi ptr [ %82, %80 ], [ %68, %66 ]
  %85 = load ptr, ptr %84, align 4
  br label %86

86:                                               ; preds = %83, %77, %63
  %87 = phi ptr [ %61, %63 ], [ %75, %77 ], [ %85, %83 ]
  tail call void %87(ptr noundef %10) #22
  br label %88

88:                                               ; preds = %86, %73, %69
  tail call void @mutex_unlock(ptr noundef %34) #22
  br i1 %30, label %91, label %89

89:                                               ; preds = %88
  %90 = getelementptr inbounds %struct.device, ptr %17, i32 0, i32 9
  tail call void @mutex_unlock(ptr noundef %90) #22
  br label %91

91:                                               ; preds = %89, %88
  br i1 %18, label %93, label %92

92:                                               ; preds = %91
  tail call void @kobject_put(ptr noundef nonnull %10) #22
  br label %93

93:                                               ; preds = %92, %91
  br i1 %30, label %95, label %94

94:                                               ; preds = %93
  tail call void @kobject_put(ptr noundef nonnull %17) #22
  br label %95

95:                                               ; preds = %94, %93
  %96 = load ptr, ptr @devices_kset, align 4
  %97 = getelementptr inbounds %struct.kset, ptr %96, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %97) #22
  %98 = load ptr, ptr @devices_kset, align 4
  %99 = load volatile ptr, ptr %98, align 4
  %100 = icmp eq ptr %99, %98
  br i1 %100, label %101, label %6

101:                                              ; preds = %95, %0
  %102 = phi ptr [ %3, %0 ], [ %98, %95 ]
  %103 = getelementptr inbounds %struct.kset, ptr %102, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #22, !srcloc !10
  %104 = load i16, ptr %103, align 4
  %105 = add i16 %104, 1
  store i16 %105, ptr %103, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #22, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #22, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_block_probing() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpufreq_suspend() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_barrier(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @_dev_info(ptr noundef %0, ptr noundef %1, ...) #4 {
  %3 = alloca %struct.va_format, align 8
  %4 = alloca %struct.__va_list, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #22
  store i32 0, ptr %4, align 4, !annotation !9
  call void @llvm.va_start(ptr nonnull %4)
  store ptr %1, ptr %3, align 8
  %5 = getelementptr inbounds %struct.va_format, ptr %3, i32 0, i32 1
  store ptr %4, ptr %5, align 4
  call fastcc void @__dev_printk(ptr noundef nonnull @.str.28, ptr noundef %0, ptr noundef nonnull %3)
  call void @llvm.va_end(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #22
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @dev_vprintk_emit(i32 noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, [1 x i32] %3) #4 {
  %5 = alloca %struct.dev_printk_info, align 1
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #22
  %6 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %5, i8 0, i64 64, i1 false)
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 5
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %45, label %13

13:                                               ; preds = %9, %4
  %14 = phi ptr [ %7, %4 ], [ %11, %9 ]
  %15 = load ptr, ptr %14, align 4
  %16 = call i32 @strscpy(ptr noundef nonnull %5, ptr noundef %15, i32 noundef 16) #22
  %17 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %18 = load i32, ptr %17, align 8
  %19 = icmp ult i32 %18, 1048576
  br i1 %19, label %28, label %20

20:                                               ; preds = %13
  %21 = call i32 @strcmp(ptr noundef %15, ptr noundef nonnull dereferenceable(6) @.str.17) #22
  %22 = icmp eq i32 %21, 0
  %23 = select i1 %22, i32 98, i32 99
  %24 = getelementptr inbounds %struct.dev_printk_info, ptr %5, i32 0, i32 1
  %25 = lshr i32 %18, 20
  %26 = and i32 %18, 1048575
  %27 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %24, i32 noundef 48, ptr noundef nonnull @.str.83, i32 noundef %23, i32 noundef %25, i32 noundef %26) #22
  br label %45

28:                                               ; preds = %13
  %29 = call i32 @strcmp(ptr noundef %15, ptr noundef nonnull dereferenceable(4) @.str.84) #22
  %30 = icmp eq i32 %29, 0
  %31 = getelementptr inbounds %struct.dev_printk_info, ptr %5, i32 0, i32 1
  br i1 %30, label %32, label %36

32:                                               ; preds = %28
  %33 = getelementptr i8, ptr %1, i32 -564
  %34 = load i32, ptr %33, align 4
  %35 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %31, i32 noundef 48, ptr noundef nonnull @.str.85, i32 noundef %34) #22
  br label %45

36:                                               ; preds = %28
  %37 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 3
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = load ptr, ptr %1, align 4
  br label %42

42:                                               ; preds = %40, %36
  %43 = phi ptr [ %41, %40 ], [ %38, %36 ]
  %44 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %31, i32 noundef 48, ptr noundef nonnull @.str.86, ptr noundef %15, ptr noundef %43) #22
  br label %45

45:                                               ; preds = %42, %32, %20, %9
  %46 = call i32 @vprintk_emit(i32 noundef 0, i32 noundef %0, ptr noundef nonnull %5, ptr noundef %2, [1 x i32] %3) #22
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #22
  ret i32 %46
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vprintk_emit(i32 noundef, i32 noundef, ptr noundef, ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @dev_printk_emit(i32 noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ...) #4 {
  %4 = alloca %struct.__va_list, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #22
  store i32 0, ptr %4, align 4, !annotation !9
  call void @llvm.va_start(ptr nonnull %4)
  %5 = load i32, ptr %4, align 4
  %6 = insertvalue [1 x i32] poison, i32 %5, 0
  %7 = call i32 @dev_vprintk_emit(i32 noundef %0, ptr noundef %1, ptr noundef %2, [1 x i32] %6) #24
  call void @llvm.va_end(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #22
  ret i32 %7
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @_dev_printk(ptr noundef %0, ptr noundef %1, ptr noundef %2, ...) #4 {
  %4 = alloca %struct.va_format, align 8
  %5 = alloca %struct.__va_list, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #22
  store i32 0, ptr %5, align 4, !annotation !9
  call void @llvm.va_start(ptr nonnull %5)
  store ptr %2, ptr %4, align 8
  %6 = getelementptr inbounds %struct.va_format, ptr %4, i32 0, i32 1
  store ptr %5, ptr %6, align 4
  call fastcc void @__dev_printk(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %4)
  call void @llvm.va_end(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__dev_printk(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %34, label %5

5:                                                ; preds = %3
  %6 = getelementptr i8, ptr %0, i32 1
  %7 = load i8, ptr %6, align 1
  %8 = zext i8 %7 to i32
  %9 = add nsw i32 %8, -48
  %10 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 6
  %11 = load volatile ptr, ptr %10, align 8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %21

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 5
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 31
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %17, %13, %5
  %22 = phi ptr [ %11, %5 ], [ %15, %13 ], [ %19, %17 ]
  %23 = load ptr, ptr %22, align 4
  br label %24

24:                                               ; preds = %21, %17
  %25 = phi ptr [ @.str.52, %17 ], [ %23, %21 ]
  %26 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 3
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load ptr, ptr %1, align 4
  br label %31

31:                                               ; preds = %29, %24
  %32 = phi ptr [ %30, %29 ], [ %27, %24 ]
  %33 = tail call i32 (i32, ptr, ptr, ...) @dev_printk_emit(i32 noundef %9, ptr noundef nonnull %1, ptr noundef nonnull @.str.87, ptr noundef %25, ptr noundef %32, ptr noundef %2) #24
  br label %36

34:                                               ; preds = %3
  %35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.88, ptr noundef %0, ptr noundef %2) #25
  br label %36

36:                                               ; preds = %34, %31
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @_dev_emerg(ptr noundef %0, ptr noundef %1, ...) #4 {
  %3 = alloca %struct.va_format, align 8
  %4 = alloca %struct.__va_list, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #22
  store i32 0, ptr %4, align 4, !annotation !9
  call void @llvm.va_start(ptr nonnull %4)
  store ptr %1, ptr %3, align 8
  %5 = getelementptr inbounds %struct.va_format, ptr %3, i32 0, i32 1
  store ptr %4, ptr %5, align 4
  call fastcc void @__dev_printk(ptr noundef nonnull @.str.22, ptr noundef %0, ptr noundef nonnull %3)
  call void @llvm.va_end(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #22
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @_dev_alert(ptr noundef %0, ptr noundef %1, ...) #4 {
  %3 = alloca %struct.va_format, align 8
  %4 = alloca %struct.__va_list, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #22
  store i32 0, ptr %4, align 4, !annotation !9
  call void @llvm.va_start(ptr nonnull %4)
  store ptr %1, ptr %3, align 8
  %5 = getelementptr inbounds %struct.va_format, ptr %3, i32 0, i32 1
  store ptr %4, ptr %5, align 4
  call fastcc void @__dev_printk(ptr noundef nonnull @.str.23, ptr noundef %0, ptr noundef nonnull %3)
  call void @llvm.va_end(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #22
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @_dev_crit(ptr noundef %0, ptr noundef %1, ...) #4 {
  %3 = alloca %struct.va_format, align 8
  %4 = alloca %struct.__va_list, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #22
  store i32 0, ptr %4, align 4, !annotation !9
  call void @llvm.va_start(ptr nonnull %4)
  store ptr %1, ptr %3, align 8
  %5 = getelementptr inbounds %struct.va_format, ptr %3, i32 0, i32 1
  store ptr %4, ptr %5, align 4
  call fastcc void @__dev_printk(ptr noundef nonnull @.str.24, ptr noundef %0, ptr noundef nonnull %3)
  call void @llvm.va_end(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #22
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @_dev_err(ptr noundef %0, ptr noundef %1, ...) #4 {
  %3 = alloca %struct.va_format, align 8
  %4 = alloca %struct.__va_list, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #22
  store i32 0, ptr %4, align 4, !annotation !9
  call void @llvm.va_start(ptr nonnull %4)
  store ptr %1, ptr %3, align 8
  %5 = getelementptr inbounds %struct.va_format, ptr %3, i32 0, i32 1
  store ptr %4, ptr %5, align 4
  call fastcc void @__dev_printk(ptr noundef nonnull @.str.25, ptr noundef %0, ptr noundef nonnull %3)
  call void @llvm.va_end(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #22
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @_dev_warn(ptr noundef %0, ptr noundef %1, ...) #4 {
  %3 = alloca %struct.va_format, align 8
  %4 = alloca %struct.__va_list, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #22
  store i32 0, ptr %4, align 4, !annotation !9
  call void @llvm.va_start(ptr nonnull %4)
  store ptr %1, ptr %3, align 8
  %5 = getelementptr inbounds %struct.va_format, ptr %3, i32 0, i32 1
  store ptr %4, ptr %5, align 4
  call fastcc void @__dev_printk(ptr noundef nonnull @.str.26, ptr noundef %0, ptr noundef nonnull %3)
  call void @llvm.va_end(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #22
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @_dev_notice(ptr noundef %0, ptr noundef %1, ...) #4 {
  %3 = alloca %struct.va_format, align 8
  %4 = alloca %struct.__va_list, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #22
  store i32 0, ptr %4, align 4, !annotation !9
  call void @llvm.va_start(ptr nonnull %4)
  store ptr %1, ptr %3, align 8
  %5 = getelementptr inbounds %struct.va_format, ptr %3, i32 0, i32 1
  store ptr %4, ptr %5, align 4
  call fastcc void @__dev_printk(ptr noundef nonnull @.str.27, ptr noundef %0, ptr noundef nonnull %3)
  call void @llvm.va_end(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_set_deferred_probe_reason(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @set_primary_fwnode(ptr nocapture noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 26
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %1, null
  %8 = icmp eq ptr %6, null
  br i1 %7, label %22, label %9

9:                                                ; preds = %2
  br i1 %8, label %21, label %10

10:                                               ; preds = %9
  %11 = load ptr, ptr %6, align 4
  %12 = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  br i1 %12, label %15, label %13

13:                                               ; preds = %10
  %14 = icmp eq ptr %11, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %13, %10
  %16 = phi ptr [ %11, %13 ], [ %6, %10 ]
  %17 = load ptr, ptr %1, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19, !prof !20

19:                                               ; preds = %15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 4760, i32 noundef 9, ptr noundef null) #22
  br label %20

20:                                               ; preds = %19, %15
  store ptr %16, ptr %1, align 4
  br label %21

21:                                               ; preds = %20, %13, %9
  store ptr %1, ptr %5, align 4
  br label %34

22:                                               ; preds = %2
  br i1 %8, label %33, label %23

23:                                               ; preds = %22
  %24 = load ptr, ptr %6, align 4
  %25 = icmp ugt ptr %24, inttoptr (i32 -4096 to ptr)
  br i1 %25, label %33, label %26

26:                                               ; preds = %23
  store ptr %24, ptr %5, align 4
  %27 = icmp eq ptr %4, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %26
  %29 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 26
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %6, %30
  br i1 %31, label %34, label %32

32:                                               ; preds = %28, %26
  store ptr null, ptr %6, align 4
  br label %34

33:                                               ; preds = %23, %22
  store ptr null, ptr %5, align 4
  br label %34

34:                                               ; preds = %33, %32, %28, %21
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @set_secondary_fwnode(ptr nocapture noundef %0, ptr noundef %1) #13 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %2
  store ptr inttoptr (i32 -19 to ptr), ptr %1, align 4
  br label %5

5:                                                ; preds = %4, %2
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 26
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr %7, align 4
  %11 = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  br i1 %11, label %12, label %13

12:                                               ; preds = %9, %5
  br label %13

13:                                               ; preds = %12, %9
  %14 = phi ptr [ %6, %12 ], [ %7, %9 ]
  store ptr %1, ptr %14, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @device_set_of_node_from_dev(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %4 = load ptr, ptr %3, align 8
  tail call void @of_node_put(ptr noundef %4) #22
  %5 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 25
  %6 = load ptr, ptr %5, align 8
  %7 = tail call ptr @of_node_get(ptr noundef %6) #22
  store ptr %7, ptr %3, align 8
  %8 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 37
  %9 = load i8, ptr %8, align 4
  %10 = or i8 %9, 4
  store i8 %10, ptr %8, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_node_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @device_set_node(ptr nocapture noundef writeonly %0, ptr noundef %1) #6 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 26
  store ptr %1, ptr %3, align 4
  %4 = icmp eq ptr %1, null
  %5 = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  %6 = or i1 %4, %5
  br i1 %6, label %13, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.fwnode_handle, ptr %1, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, @of_fwnode_ops
  %11 = getelementptr i8, ptr %1, i32 -12
  %12 = select i1 %10, ptr %11, ptr null
  br label %13

13:                                               ; preds = %7, %2
  %14 = phi ptr [ null, %2 ], [ %12, %7 ]
  %15 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  store ptr %14, ptr %15, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @device_match_name(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 4
  br label %8

8:                                                ; preds = %6, %2
  %9 = phi ptr [ %7, %6 ], [ %4, %2 ]
  %10 = tail call zeroext i1 @sysfs_streq(ptr noundef %9, ptr noundef %1) #22
  %11 = zext i1 %10 to i32
  ret i32 %11
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @device_match_of_node(ptr nocapture noundef readonly %0, ptr noundef readnone %1) #11 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, %1
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @device_match_fwnode(ptr noundef %0, ptr noundef readnone %1) #0 {
  %3 = tail call ptr @dev_fwnode(ptr noundef %0) #22
  %4 = icmp eq ptr %3, %1
  %5 = zext i1 %4 to i32
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_fwnode(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @device_match_devt(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #11 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 27
  %4 = load i32, ptr %3, align 8
  %5 = load i32, ptr %1, align 4
  %6 = icmp eq i32 %4, %5
  %7 = zext i1 %6 to i32
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @device_match_acpi_dev(ptr nocapture readnone %0, ptr noundef readnone %1) #3 {
  %3 = icmp eq ptr %1, null
  %4 = zext i1 %3 to i32
  ret i32 %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @device_match_acpi_handle(ptr nocapture readnone %0, ptr noundef readnone %1) #3 {
  %3 = icmp eq ptr %1, null
  %4 = zext i1 %3 to i32
  ret i32 %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @device_match_any(ptr nocapture readnone %0, ptr nocapture readnone %1) #3 {
  ret i32 1
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #15

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #16

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__srcu_read_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__srcu_read_unlock(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__class_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @class_interface_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @class_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @devlink_add_symlinks(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 -24
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr i8, ptr %0, i32 -12
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 31
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %10, %2
  %15 = phi ptr [ %8, %2 ], [ %12, %10 ]
  %16 = load ptr, ptr %15, align 4
  br label %17

17:                                               ; preds = %14, %10
  %18 = phi ptr [ @.str.52, %10 ], [ %16, %14 ]
  %19 = tail call i32 @strlen(ptr noundef %18)
  %20 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 3
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = load ptr, ptr %4, align 4
  br label %25

25:                                               ; preds = %23, %17
  %26 = phi ptr [ %24, %23 ], [ %21, %17 ]
  %27 = tail call i32 @strlen(ptr noundef %26)
  %28 = add i32 %27, %19
  %29 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 5
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 31
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %32, %25
  %37 = phi ptr [ %30, %25 ], [ %34, %32 ]
  %38 = load ptr, ptr %37, align 4
  br label %39

39:                                               ; preds = %36, %32
  %40 = phi ptr [ @.str.52, %32 ], [ %38, %36 ]
  %41 = tail call i32 @strlen(ptr noundef %40)
  %42 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 3
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = load ptr, ptr %6, align 4
  br label %47

47:                                               ; preds = %45, %39
  %48 = phi ptr [ %46, %45 ], [ %43, %39 ]
  %49 = tail call i32 @strlen(ptr noundef %48)
  %50 = add i32 %49, %41
  %51 = tail call i32 @llvm.umax.i32(i32 %28, i32 %50)
  %52 = add i32 %51, 11
  %53 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %52, i32 noundef 3520) #26
  %54 = icmp eq ptr %53, null
  br i1 %54, label %128, label %55

55:                                               ; preds = %47
  %56 = tail call i32 @sysfs_create_link(ptr noundef %0, ptr noundef %4, ptr noundef nonnull @.str.31) #22
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %126

58:                                               ; preds = %55
  %59 = tail call i32 @sysfs_create_link(ptr noundef %0, ptr noundef %6, ptr noundef nonnull @.str.32) #22
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %124

61:                                               ; preds = %58
  %62 = load ptr, ptr %29, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %68

64:                                               ; preds = %61
  %65 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 31
  %66 = load ptr, ptr %65, align 4
  %67 = icmp eq ptr %66, null
  br i1 %67, label %71, label %68

68:                                               ; preds = %64, %61
  %69 = phi ptr [ %62, %61 ], [ %66, %64 ]
  %70 = load ptr, ptr %69, align 4
  br label %71

71:                                               ; preds = %68, %64
  %72 = phi ptr [ @.str.52, %64 ], [ %70, %68 ]
  %73 = load ptr, ptr %42, align 4
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %77

75:                                               ; preds = %71
  %76 = load ptr, ptr %6, align 4
  br label %77

77:                                               ; preds = %75, %71
  %78 = phi ptr [ %76, %75 ], [ %73, %71 ]
  %79 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %53, i32 noundef %52, ptr noundef nonnull @.str.33, ptr noundef %72, ptr noundef %78)
  %80 = tail call i32 @sysfs_create_link(ptr noundef %4, ptr noundef %0, ptr noundef nonnull %53) #22
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %122

82:                                               ; preds = %77
  %83 = load ptr, ptr %7, align 4
  %84 = icmp eq ptr %83, null
  br i1 %84, label %85, label %89

85:                                               ; preds = %82
  %86 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 31
  %87 = load ptr, ptr %86, align 4
  %88 = icmp eq ptr %87, null
  br i1 %88, label %92, label %89

89:                                               ; preds = %85, %82
  %90 = phi ptr [ %83, %82 ], [ %87, %85 ]
  %91 = load ptr, ptr %90, align 4
  br label %92

92:                                               ; preds = %89, %85
  %93 = phi ptr [ @.str.52, %85 ], [ %91, %89 ]
  %94 = load ptr, ptr %20, align 4
  %95 = icmp eq ptr %94, null
  br i1 %95, label %96, label %98

96:                                               ; preds = %92
  %97 = load ptr, ptr %4, align 4
  br label %98

98:                                               ; preds = %96, %92
  %99 = phi ptr [ %97, %96 ], [ %94, %92 ]
  %100 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %53, i32 noundef %52, ptr noundef nonnull @.str.34, ptr noundef %93, ptr noundef %99)
  %101 = tail call i32 @sysfs_create_link(ptr noundef %6, ptr noundef %0, ptr noundef nonnull %53) #22
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %126, label %103

103:                                              ; preds = %98
  %104 = load ptr, ptr %29, align 4
  %105 = icmp eq ptr %104, null
  br i1 %105, label %106, label %110

106:                                              ; preds = %103
  %107 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 31
  %108 = load ptr, ptr %107, align 4
  %109 = icmp eq ptr %108, null
  br i1 %109, label %113, label %110

110:                                              ; preds = %106, %103
  %111 = phi ptr [ %104, %103 ], [ %108, %106 ]
  %112 = load ptr, ptr %111, align 4
  br label %113

113:                                              ; preds = %110, %106
  %114 = phi ptr [ @.str.52, %106 ], [ %112, %110 ]
  %115 = load ptr, ptr %42, align 4
  %116 = icmp eq ptr %115, null
  br i1 %116, label %117, label %119

117:                                              ; preds = %113
  %118 = load ptr, ptr %6, align 4
  br label %119

119:                                              ; preds = %117, %113
  %120 = phi ptr [ %118, %117 ], [ %115, %113 ]
  %121 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %53, i32 noundef %52, ptr noundef nonnull @.str.33, ptr noundef %114, ptr noundef %120)
  tail call void @sysfs_remove_link(ptr noundef %4, ptr noundef nonnull %53) #22
  br label %122

122:                                              ; preds = %119, %77
  %123 = phi i32 [ %80, %77 ], [ %101, %119 ]
  tail call void @sysfs_remove_link(ptr noundef %0, ptr noundef nonnull @.str.32) #22
  br label %124

124:                                              ; preds = %122, %58
  %125 = phi i32 [ %59, %58 ], [ %123, %122 ]
  tail call void @sysfs_remove_link(ptr noundef %0, ptr noundef nonnull @.str.31) #22
  br label %126

126:                                              ; preds = %124, %98, %55
  %127 = phi i32 [ %56, %55 ], [ %125, %124 ], [ 0, %98 ]
  tail call void @kfree(ptr noundef nonnull %53) #22
  br label %128

128:                                              ; preds = %126, %47
  %129 = phi i32 [ %127, %126 ], [ -12, %47 ]
  ret i32 %129
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @devlink_remove_symlinks(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 -24
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr i8, ptr %0, i32 -12
  %6 = load ptr, ptr %5, align 4
  tail call void @sysfs_remove_link(ptr noundef %0, ptr noundef nonnull @.str.32) #22
  tail call void @sysfs_remove_link(ptr noundef %0, ptr noundef nonnull @.str.31) #22
  %7 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 31
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %10, %2
  %15 = phi ptr [ %8, %2 ], [ %12, %10 ]
  %16 = load ptr, ptr %15, align 4
  br label %17

17:                                               ; preds = %14, %10
  %18 = phi ptr [ @.str.52, %10 ], [ %16, %14 ]
  %19 = tail call i32 @strlen(ptr noundef %18)
  %20 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 3
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = load ptr, ptr %4, align 4
  br label %25

25:                                               ; preds = %23, %17
  %26 = phi ptr [ %24, %23 ], [ %21, %17 ]
  %27 = tail call i32 @strlen(ptr noundef %26)
  %28 = add i32 %27, %19
  %29 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 5
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 31
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %32, %25
  %37 = phi ptr [ %30, %25 ], [ %34, %32 ]
  %38 = load ptr, ptr %37, align 4
  br label %39

39:                                               ; preds = %36, %32
  %40 = phi ptr [ @.str.52, %32 ], [ %38, %36 ]
  %41 = tail call i32 @strlen(ptr noundef %40)
  %42 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 3
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = load ptr, ptr %6, align 4
  br label %47

47:                                               ; preds = %45, %39
  %48 = phi ptr [ %46, %45 ], [ %43, %39 ]
  %49 = tail call i32 @strlen(ptr noundef %48)
  %50 = add i32 %49, %41
  %51 = tail call i32 @llvm.umax.i32(i32 %28, i32 %50)
  %52 = add i32 %51, 11
  %53 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %52, i32 noundef 3520) #26
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %56

55:                                               ; preds = %47
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 584, i32 noundef 9, ptr noundef nonnull @.str.35) #22
  br label %99

56:                                               ; preds = %47
  %57 = getelementptr inbounds %struct.kobject, ptr %6, i32 0, i32 7
  %58 = load i8, ptr %57, align 8
  %59 = and i8 %58, 2
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %80, label %61

61:                                               ; preds = %56
  %62 = load ptr, ptr %7, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %68

64:                                               ; preds = %61
  %65 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 31
  %66 = load ptr, ptr %65, align 4
  %67 = icmp eq ptr %66, null
  br i1 %67, label %71, label %68

68:                                               ; preds = %64, %61
  %69 = phi ptr [ %62, %61 ], [ %66, %64 ]
  %70 = load ptr, ptr %69, align 4
  br label %71

71:                                               ; preds = %68, %64
  %72 = phi ptr [ @.str.52, %64 ], [ %70, %68 ]
  %73 = load ptr, ptr %20, align 4
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %77

75:                                               ; preds = %71
  %76 = load ptr, ptr %4, align 4
  br label %77

77:                                               ; preds = %75, %71
  %78 = phi ptr [ %76, %75 ], [ %73, %71 ]
  %79 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %53, i32 noundef %52, ptr noundef nonnull @.str.34, ptr noundef %72, ptr noundef %78)
  tail call void @sysfs_remove_link(ptr noundef %6, ptr noundef nonnull %53) #22
  br label %80

80:                                               ; preds = %77, %56
  %81 = load ptr, ptr %29, align 4
  %82 = icmp eq ptr %81, null
  br i1 %82, label %83, label %87

83:                                               ; preds = %80
  %84 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 31
  %85 = load ptr, ptr %84, align 4
  %86 = icmp eq ptr %85, null
  br i1 %86, label %90, label %87

87:                                               ; preds = %83, %80
  %88 = phi ptr [ %81, %80 ], [ %85, %83 ]
  %89 = load ptr, ptr %88, align 4
  br label %90

90:                                               ; preds = %87, %83
  %91 = phi ptr [ @.str.52, %83 ], [ %89, %87 ]
  %92 = load ptr, ptr %42, align 4
  %93 = icmp eq ptr %92, null
  br i1 %93, label %94, label %96

94:                                               ; preds = %90
  %95 = load ptr, ptr %6, align 4
  br label %96

96:                                               ; preds = %94, %90
  %97 = phi ptr [ %95, %94 ], [ %92, %90 ]
  %98 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %53, i32 noundef %52, ptr noundef nonnull @.str.33, ptr noundef %91, ptr noundef %97)
  tail call void @sysfs_remove_link(ptr noundef %4, ptr noundef nonnull %53) #22
  tail call void @kfree(ptr noundef nonnull %53) #22
  br label %99

99:                                               ; preds = %96, %55
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #17

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @devlink_dev_release(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 488
  store i32 -32, ptr %2, align 8
  %3 = getelementptr i8, ptr %0, i32 492
  store volatile ptr %3, ptr %3, align 4
  %4 = getelementptr i8, ptr %0, i32 496
  store ptr %3, ptr %4, align 4
  %5 = getelementptr i8, ptr %0, i32 500
  store ptr @device_link_release_fn, ptr %5, align 4
  %6 = load ptr, ptr @system_long_wq, align 4
  %7 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %6, ptr noundef %2) #22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @status_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 472
  %5 = load i32, ptr %4, align 8
  %6 = add i32 %5, 1
  %7 = icmp ult i32 %6, 6
  br i1 %7, label %8, label %11

8:                                                ; preds = %3
  %9 = getelementptr inbounds [6 x ptr], ptr @switch.table.status_show, i32 0, i32 %6
  %10 = load ptr, ptr %9, align 4
  br label %11

11:                                               ; preds = %8, %3
  %12 = phi ptr [ %10, %8 ], [ @.str.44, %3 ]
  %13 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.45, ptr noundef nonnull %12) #22
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @auto_remove_on_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 476
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 16
  %7 = icmp eq i32 %6, 0
  %8 = and i32 %5, 2
  %9 = icmp eq i32 %8, 0
  %10 = select i1 %9, ptr @.str.49, ptr @.str.48
  %11 = select i1 %7, ptr %10, ptr @.str.47
  %12 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.45, ptr noundef nonnull %11) #22
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @runtime_pm_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 476
  %5 = load i32, ptr %4, align 4
  %6 = lshr i32 %5, 2
  %7 = and i32 %6, 1
  %8 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.6, i32 noundef %7) #22
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sync_state_only_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 476
  %5 = load i32, ptr %4, align 4
  %6 = lshr i32 %5, 7
  %7 = and i32 %6, 1
  %8 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.6, i32 noundef %7) #22
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @device_link_release_fn(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -512
  tail call void @synchronize_srcu(ptr noundef nonnull @device_links_srcu) #22
  tail call void @pm_runtime_release_supplier(ptr noundef %2, i1 noundef zeroext true) #22
  %3 = getelementptr i8, ptr %0, i32 -500
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @kobject_put(ptr noundef nonnull %4) #22
  br label %7

7:                                                ; preds = %6, %1
  %8 = load ptr, ptr %2, align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %7
  tail call void @kobject_put(ptr noundef nonnull %8) #22
  br label %11

11:                                               ; preds = %10, %7
  tail call void @kfree(ptr noundef %2) #22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_release_supplier(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_srcu(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_drop_link(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @waiting_for_supplier_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 9
  tail call void @mutex_lock(ptr noundef %4) #22
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 26
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.fwnode_handle, ptr %6, i32 0, i32 3
  %8 = load volatile ptr, ptr %7, align 4
  %9 = icmp ne ptr %8, %7
  tail call void @mutex_unlock(ptr noundef %4) #22
  %10 = zext i1 %9 to i32
  %11 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.55, i32 noundef %10) #22
  ret i32 %11
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #18

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtol(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtobool(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_file_ns(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_file_ns(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @device_release(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @devres_release_all(ptr noundef %0) #22
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 19
  %6 = load ptr, ptr %5, align 8
  tail call void @kfree(ptr noundef %6) #22
  %7 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 33
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  tail call void %8(ptr noundef %0) #22
  br label %37

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 4
  %13 = load ptr, ptr %12, align 8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.device_type, ptr %13, i32 0, i32 4
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  tail call void %17(ptr noundef %0) #22
  br label %37

20:                                               ; preds = %15, %11
  %21 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 31
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.class, ptr %22, i32 0, i32 8
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %24
  tail call void %26(ptr noundef %0) #22
  br label %37

29:                                               ; preds = %24, %20
  %30 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = load ptr, ptr %0, align 4
  br label %35

35:                                               ; preds = %33, %29
  %36 = phi ptr [ %34, %33 ], [ %31, %29 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 2232, i32 noundef 9, ptr noundef nonnull @.str.60, ptr noundef %36) #22
  br label %37

37:                                               ; preds = %35, %28, %19, %10
  tail call void @kfree(ptr noundef %3) #22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @device_namespace(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 31
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.class, ptr %3, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.class, ptr %3, i32 0, i32 11
  %11 = load ptr, ptr %10, align 4
  %12 = tail call ptr %11(ptr noundef %0) #22
  br label %13

13:                                               ; preds = %9, %5, %1
  %14 = phi ptr [ %12, %9 ], [ null, %5 ], [ null, %1 ]
  ret ptr %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @device_get_ownership(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 31
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.class, ptr %5, i32 0, i32 12
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  tail call void %9(ptr noundef %0, ptr noundef %1, ptr noundef %2) #22
  br label %12

12:                                               ; preds = %11, %7, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devres_release_all(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dev_attr_show(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.device_attribute, ptr %1, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %3
  %8 = tail call i32 %5(ptr noundef %0, ptr noundef %1, ptr noundef %2) #22
  %9 = icmp sgt i32 %8, 4095
  br i1 %9, label %10, label %13

10:                                               ; preds = %7
  %11 = load ptr, ptr %4, align 4
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, ptr noundef %11) #25
  br label %13

13:                                               ; preds = %10, %7, %3
  %14 = phi i32 [ %8, %10 ], [ %8, %7 ], [ -5, %3 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dev_attr_store(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.device_attribute, ptr %1, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %4
  %9 = tail call i32 %6(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #22
  br label %10

10:                                               ; preds = %8, %4
  %11 = phi i32 [ %9, %8 ], [ -5, %4 ]
  ret i32 %11
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #19

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_pm_sleep_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @klist_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @klist_children_get(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 80
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @kobject_get(ptr noundef nonnull %3) #22
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @klist_children_put(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 80
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @kobject_put(ptr noundef nonnull %3) #22
  br label %6

6:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @class_dir_release(ptr noundef %0) #0 {
  tail call void @kfree(ptr noundef %0) #22
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal ptr @class_dir_child_ns_type(ptr nocapture noundef readonly %0) #9 {
  %2 = getelementptr inbounds %struct.class_dir, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.class, ptr %3, i32 0, i32 10
  %5 = load ptr, ptr %4, align 4
  ret ptr %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @software_node_notify(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uevent_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  br label %4

4:                                                ; preds = %9, %3
  %5 = phi ptr [ %0, %3 ], [ %11, %9 ]
  %6 = getelementptr inbounds %struct.kobject, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.kobject, ptr %5, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %51, label %4

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.kset, ptr %7, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %51, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.kset_uevent_ops, ptr %15, i32 0, i32 2
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %51, label %21

21:                                               ; preds = %17
  %22 = load ptr, ptr %15, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  %25 = tail call i32 %22(ptr noundef %0) #22
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %51, label %27

27:                                               ; preds = %24, %21
  %28 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %29 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %28, i32 noundef 3520, i32 noundef 2324) #23
  %30 = icmp eq ptr %29, null
  br i1 %30, label %54, label %31

31:                                               ; preds = %27
  %32 = load ptr, ptr %14, align 4
  %33 = getelementptr inbounds %struct.kset_uevent_ops, ptr %32, i32 0, i32 2
  %34 = load ptr, ptr %33, align 4
  %35 = tail call i32 %34(ptr noundef %0, ptr noundef nonnull %29) #22
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %51

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.kobj_uevent_env, ptr %29, i32 0, i32 2
  %39 = load i32, ptr %38, align 4
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %41, %37
  %42 = phi i32 [ %47, %41 ], [ 0, %37 ]
  %43 = phi i32 [ %48, %41 ], [ 0, %37 ]
  %44 = getelementptr %struct.kobj_uevent_env, ptr %29, i32 0, i32 1, i32 %43
  %45 = load ptr, ptr %44, align 4
  %46 = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %2, i32 noundef %42, ptr noundef nonnull @.str.45, ptr noundef %45) #22
  %47 = add i32 %46, %42
  %48 = add nuw nsw i32 %43, 1
  %49 = load i32, ptr %38, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %41, label %51

51:                                               ; preds = %41, %37, %31, %24, %17, %13, %9
  %52 = phi ptr [ %29, %31 ], [ null, %24 ], [ null, %17 ], [ null, %13 ], [ %29, %37 ], [ %29, %41 ], [ null, %9 ]
  %53 = phi i32 [ 0, %31 ], [ 0, %24 ], [ 0, %17 ], [ 0, %13 ], [ 0, %37 ], [ %47, %41 ], [ 0, %9 ]
  tail call void @kfree(ptr noundef %52) #22
  br label %54

54:                                               ; preds = %51, %27
  %55 = phi i32 [ %53, %51 ], [ -12, %27 ]
  ret i32 %55
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uevent_store(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = tail call i32 @kobject_synth_uevent(ptr noundef %0, ptr noundef %2, i32 noundef %3) #22
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.63) #24
  br label %8

8:                                                ; preds = %7, %4
  %9 = phi i32 [ %5, %7 ], [ %3, %4 ]
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit_at(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_synth_uevent(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @online_show(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 9
  tail call void @mutex_lock(ptr noundef %4) #22
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 37
  %6 = load i8, ptr %5, align 4
  tail call void @mutex_unlock(ptr noundef %4) #22
  %7 = lshr i8 %6, 1
  %8 = and i8 %7, 1
  %9 = xor i8 %8, 1
  %10 = zext i8 %9 to i32
  %11 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.55, i32 noundef %10) #22
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @online_store(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #22
  store i8 0, ptr %5, align 1, !annotation !9
  %6 = call i32 @kstrtobool(ptr noundef %2, ptr noundef nonnull %5) #22
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %49, label %8

8:                                                ; preds = %4
  %9 = call i32 @mutex_trylock(ptr noundef nonnull @device_hotplug_lock) #22
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  call void @msleep(i32 noundef 5) #22
  %12 = tail call ptr @llvm.thread.pointer() #22
  call void @_set_bit(i32 noundef 0, ptr noundef %12) #22
  br label %49

13:                                               ; preds = %8
  %14 = load i8, ptr %5, align 1, !range !25
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %43, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 9
  call void @mutex_lock(ptr noundef %17) #22
  %18 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 5
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %41, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.bus_type, ptr %19, i32 0, i32 13
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %41, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.bus_type, ptr %19, i32 0, i32 12
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %41, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 37
  %31 = load i8, ptr %30, align 4
  %32 = and i8 %31, 2
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %41, label %34

34:                                               ; preds = %29
  %35 = call i32 %27(ptr noundef %0) #22
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = call i32 @kobject_uevent(ptr noundef %0, i32 noundef 4) #22
  %39 = load i8, ptr %30, align 4
  %40 = and i8 %39, -3
  store i8 %40, ptr %30, align 4
  br label %41

41:                                               ; preds = %37, %34, %29, %25, %21, %16
  %42 = phi i32 [ %35, %34 ], [ 0, %37 ], [ 0, %25 ], [ 1, %29 ], [ 0, %21 ], [ 0, %16 ]
  call void @mutex_unlock(ptr noundef %17) #22
  br label %45

43:                                               ; preds = %13
  %44 = call i32 @device_offline(ptr noundef %0)
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi i32 [ %42, %41 ], [ %44, %43 ]
  call void @mutex_unlock(ptr noundef nonnull @device_hotplug_lock) #22
  %47 = icmp slt i32 %46, 0
  %48 = select i1 %47, i32 %46, i32 %3
  br label %49

49:                                               ; preds = %45, %11, %4
  %50 = phi i32 [ %48, %45 ], [ %6, %4 ], [ -513, %11 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #22
  ret i32 %50
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @removable_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 36
  %5 = load i32, ptr %4, align 8
  %6 = icmp eq i32 %5, 2
  %7 = select i1 %6, ptr @.str.70, ptr @.str.44
  %8 = icmp eq i32 %5, 3
  %9 = select i1 %8, ptr @.str.69, ptr %7
  %10 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.45, ptr noundef nonnull %9) #22
  ret i32 %10
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dev_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #20 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 27
  %5 = load i32, ptr %4, align 8
  %6 = lshr i32 %5, 20
  %7 = and i32 %5, 1048575
  %8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.71, i32 noundef %6, i32 noundef %7)
  ret i32 %8
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #17

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @fw_devlink_parse_fwtree(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.fwnode_handle, ptr %0, i32 0, i32 5
  %3 = load i8, ptr %2, align 4
  %4 = and i8 %3, 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %22

6:                                                ; preds = %1
  %7 = icmp eq ptr %0, null
  br i1 %7, label %19, label %8

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.fwnode_handle, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %19, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.fwnode_operations, ptr %10, i32 0, i32 17
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %12
  %17 = tail call i32 %14(ptr noundef nonnull %0) #22
  %18 = load i8, ptr %2, align 4
  br label %19

19:                                               ; preds = %16, %12, %8, %6
  %20 = phi i8 [ %3, %6 ], [ %18, %16 ], [ %3, %12 ], [ %3, %8 ]
  %21 = or i8 %20, 1
  store i8 %21, ptr %2, align 4
  br label %22

22:                                               ; preds = %19, %1
  %23 = tail call ptr @fwnode_get_next_available_child_node(ptr noundef %0, ptr noundef null) #22
  %24 = icmp eq ptr %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %25, %22
  %26 = phi ptr [ %27, %25 ], [ %23, %22 ]
  tail call fastcc void @fw_devlink_parse_fwtree(ptr noundef nonnull %26)
  %27 = tail call ptr @fwnode_get_next_available_child_node(ptr noundef %0, ptr noundef nonnull %26) #22
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %25

29:                                               ; preds = %25, %22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__fw_devlink_link_to_suppliers(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 26
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, %1
  %6 = load i32, ptr @fw_devlink_flags, align 4
  %7 = select i1 %5, i32 %6, i32 384
  %8 = getelementptr inbounds %struct.fwnode_handle, ptr %1, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, %8
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = xor i1 %5, true
  br label %16

13:                                               ; preds = %47, %2
  %14 = tail call ptr @fwnode_get_next_available_child_node(ptr noundef %1, ptr noundef null) #22
  %15 = icmp eq ptr %14, null
  br i1 %15, label %53, label %49

16:                                               ; preds = %47, %11
  %17 = phi ptr [ %9, %11 ], [ %19, %47 ]
  %18 = getelementptr i8, ptr %17, i32 -16
  %19 = load ptr, ptr %17, align 4
  %20 = load ptr, ptr %18, align 4
  %21 = tail call fastcc i32 @fw_devlink_create_devlink(ptr noundef %0, ptr noundef %20, i32 noundef %7)
  %22 = icmp eq i32 %21, -11
  %23 = select i1 %12, i1 true, i1 %22
  br i1 %23, label %47, label %24

24:                                               ; preds = %16
  %25 = getelementptr i8, ptr %17, i32 -12
  %26 = getelementptr i8, ptr %17, i32 -8
  %27 = load ptr, ptr %26, align 4
  %28 = load ptr, ptr %25, align 4
  %29 = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  store ptr %27, ptr %29, align 4
  store volatile ptr %28, ptr %27, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %25, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %26, align 4
  %30 = getelementptr i8, ptr %17, i32 4
  %31 = load ptr, ptr %30, align 4
  %32 = load ptr, ptr %17, align 4
  %33 = getelementptr inbounds %struct.list_head, ptr %32, i32 0, i32 1
  store ptr %31, ptr %33, align 4
  store volatile ptr %32, ptr %31, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %17, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %30, align 4
  tail call void @kfree(ptr noundef %18) #22
  %34 = icmp eq i32 %21, 0
  br i1 %34, label %35, label %47

35:                                               ; preds = %24
  %36 = getelementptr inbounds %struct.fwnode_handle, ptr %20, i32 0, i32 2
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = load ptr, ptr inttoptr (i32 420 to ptr), align 4
  tail call fastcc void @__fw_devlink_link_to_suppliers(ptr noundef null, ptr noundef %40)
  br label %47

41:                                               ; preds = %35
  %42 = tail call ptr @kobject_get(ptr noundef nonnull %37) #22
  %43 = getelementptr inbounds %struct.device, ptr %42, i32 0, i32 26
  %44 = load ptr, ptr %43, align 4
  tail call fastcc void @__fw_devlink_link_to_suppliers(ptr noundef %42, ptr noundef %44)
  %45 = icmp eq ptr %42, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %41
  tail call void @kobject_put(ptr noundef nonnull %42) #22
  br label %47

47:                                               ; preds = %46, %41, %39, %24, %16
  %48 = icmp eq ptr %19, %8
  br i1 %48, label %13, label %16

49:                                               ; preds = %49, %13
  %50 = phi ptr [ %51, %49 ], [ %14, %13 ]
  tail call fastcc void @__fw_devlink_link_to_suppliers(ptr noundef %0, ptr noundef nonnull %50)
  %51 = tail call ptr @fwnode_get_next_available_child_node(ptr noundef %1, ptr noundef nonnull %50) #22
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %49

53:                                               ; preds = %49, %13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fwnode_get_next_parent_dev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @fwnode_is_ancestor_of(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @fw_devlink_create_devlink(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.fwnode_handle, ptr %1, i32 0, i32 5
  %5 = load i8, ptr %4, align 4
  %6 = and i8 %5, 8
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 26
  %10 = load ptr, ptr %9, align 4
  %11 = tail call zeroext i1 @fwnode_is_ancestor_of(ptr noundef %1, ptr noundef %10) #22
  br i1 %11, label %68, label %12

12:                                               ; preds = %8, %3
  %13 = getelementptr inbounds %struct.fwnode_handle, ptr %1, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %43, label %16

16:                                               ; preds = %12
  %17 = tail call ptr @kobject_get(ptr noundef nonnull %14) #22
  %18 = icmp eq ptr %17, null
  br i1 %18, label %43, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.device, ptr %17, i32 0, i32 10, i32 3
  %21 = load i32, ptr %20, align 8
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = load i8, ptr %4, align 4
  %25 = and i8 %24, 4
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %65

27:                                               ; preds = %23, %19
  %28 = tail call ptr @device_link_add(ptr noundef %0, ptr noundef nonnull %17, i32 noundef %2)
  %29 = icmp eq ptr %28, null
  %30 = and i32 %2, 128
  %31 = icmp eq i32 %30, 0
  %32 = and i1 %31, %29
  br i1 %32, label %33, label %65

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.device, ptr %17, i32 0, i32 3
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load ptr, ptr %17, align 4
  br label %39

39:                                               ; preds = %37, %33
  %40 = phi ptr [ %38, %37 ], [ %35, %33 ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %0, ptr noundef nonnull @.str.73, ptr noundef %40) #24
  tail call void @mutex_lock(ptr noundef nonnull @device_links_lock) #22
  %41 = tail call fastcc i32 @fw_devlink_relax_cycle(ptr noundef %0, ptr noundef nonnull %17)
  tail call void @mutex_unlock(ptr noundef nonnull @device_links_lock) #22
  %42 = tail call ptr @device_link_add(ptr noundef %0, ptr noundef nonnull %17, i32 noundef 384)
  br label %65

43:                                               ; preds = %16, %12
  %44 = load i8, ptr %4, align 4
  %45 = and i8 %44, 4
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %47, label %68

47:                                               ; preds = %43
  %48 = and i32 %2, 128
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %68

50:                                               ; preds = %47
  %51 = tail call ptr @fwnode_get_next_parent_dev(ptr noundef %1) #22
  %52 = icmp eq ptr %51, null
  br i1 %52, label %68, label %53

53:                                               ; preds = %50
  %54 = tail call i32 @device_is_dependent(ptr noundef %0, ptr noundef nonnull %51)
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %65, label %56

56:                                               ; preds = %53
  %57 = getelementptr inbounds %struct.device, ptr %51, i32 0, i32 3
  %58 = load ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %62

60:                                               ; preds = %56
  %61 = load ptr, ptr %51, align 4
  br label %62

62:                                               ; preds = %60, %56
  %63 = phi ptr [ %61, %60 ], [ %58, %56 ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %0, ptr noundef nonnull @.str.74, ptr noundef %1, ptr noundef %63) #24
  tail call void @mutex_lock(ptr noundef nonnull @device_links_lock) #22
  %64 = tail call fastcc i32 @fw_devlink_relax_cycle(ptr noundef %0, ptr noundef nonnull %51)
  tail call void @mutex_unlock(ptr noundef nonnull @device_links_lock) #22
  br label %65

65:                                               ; preds = %62, %53, %39, %27, %23
  %66 = phi ptr [ %51, %53 ], [ %17, %23 ], [ %51, %62 ], [ %17, %39 ], [ %17, %27 ]
  %67 = phi i32 [ -11, %53 ], [ -22, %23 ], [ -22, %62 ], [ -22, %39 ], [ 0, %27 ]
  tail call void @kobject_put(ptr noundef nonnull %66) #22
  br label %68

68:                                               ; preds = %65, %50, %47, %43, %8
  %69 = phi i32 [ -22, %8 ], [ -22, %43 ], [ -11, %47 ], [ %67, %65 ], [ -11, %50 ]
  ret i32 %69
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @fw_devlink_relax_cycle(ptr noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.klist_iter, align 8
  %4 = icmp eq ptr %0, %1
  br i1 %4, label %51, label %5

5:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #22
  store i64 0, ptr %3, align 8, !annotation !9
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #22
  br label %23

10:                                               ; preds = %5
  call void @klist_iter_init(ptr noundef nonnull %7, ptr noundef nonnull %3) #22
  br label %11

11:                                               ; preds = %18, %10
  %12 = call ptr @klist_next(ptr noundef nonnull %3) #22
  %13 = icmp eq ptr %12, null
  br i1 %13, label %21, label %14

14:                                               ; preds = %11
  %15 = getelementptr i8, ptr %12, i32 80
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %14
  %19 = call fastcc i32 @fw_devlink_relax_cycle(ptr noundef nonnull %16, ptr noundef %1) #22
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %11, label %22

21:                                               ; preds = %14, %11
  call void @klist_iter_exit(ptr noundef nonnull %3) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #22
  br label %23

22:                                               ; preds = %18
  call void @klist_iter_exit(ptr noundef nonnull %3) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #22
  br label %51

23:                                               ; preds = %21, %9
  %24 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 10, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, %24
  br i1 %26, label %51, label %27

27:                                               ; preds = %47, %23
  %28 = phi ptr [ %49, %47 ], [ %25, %23 ]
  %29 = phi i32 [ %48, %47 ], [ 0, %23 ]
  %30 = getelementptr i8, ptr %28, i32 -4
  %31 = getelementptr i8, ptr %28, i32 496
  %32 = load i32, ptr %31, align 4
  %33 = and i32 %32, -257
  %34 = icmp eq i32 %33, 192
  br i1 %34, label %47, label %35

35:                                               ; preds = %27
  %36 = getelementptr i8, ptr %28, i32 8
  %37 = load ptr, ptr %36, align 4
  %38 = call fastcc i32 @fw_devlink_relax_cycle(ptr noundef %37, ptr noundef %1)
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %47, label %40

40:                                               ; preds = %35
  %41 = load i32, ptr %31, align 4
  %42 = and i32 %41, 256
  %43 = icmp eq i32 %42, 0
  %44 = icmp eq i32 %41, 448
  %45 = or i1 %44, %43
  br i1 %45, label %47, label %46

46:                                               ; preds = %40
  call void @pm_runtime_drop_link(ptr noundef %30) #22
  store i32 448, ptr %31, align 4
  br label %47

47:                                               ; preds = %46, %40, %35, %27
  %48 = phi i32 [ %29, %27 ], [ %29, %35 ], [ 1, %40 ], [ 1, %46 ]
  %49 = load ptr, ptr %28, align 4
  %50 = icmp eq ptr %49, %24
  br i1 %50, label %51, label %27

51:                                               ; preds = %47, %23, %22, %2
  %52 = phi i32 [ 1, %2 ], [ %19, %22 ], [ 0, %23 ], [ %48, %47 ]
  ret i32 %52
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_delete_link(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @software_node_notify_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @klist_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @klist_prev(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @dev_uevent_filter(ptr nocapture noundef readonly %0) #11 {
  %2 = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, @device_ktype
  br i1 %4, label %5, label %13

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %14

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 31
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %9, %1
  br label %14

14:                                               ; preds = %13, %9, %5
  %15 = phi i32 [ 0, %13 ], [ 1, %9 ], [ 1, %5 ]
  ret i32 %15
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal ptr @dev_uevent_name(ptr nocapture noundef readonly %0) #9 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 31
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %5, %1
  %10 = phi ptr [ %3, %1 ], [ %7, %5 ]
  %11 = load ptr, ptr %10, align 4
  br label %12

12:                                               ; preds = %9, %5
  %13 = phi ptr [ null, %5 ], [ %11, %9 ]
  ret ptr %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dev_uevent(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca i16, align 2
  %5 = alloca %struct.kuid_t, align 4
  %6 = alloca %struct.kgid_t, align 4
  %7 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 27
  %8 = load i32, ptr %7, align 8
  %9 = icmp ult i32 %8, 1048576
  br i1 %9, label %39, label %10

10:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #22
  store ptr null, ptr %3, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #22
  store i16 0, ptr %4, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #22
  store i32 0, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #22
  store i32 0, ptr %6, align 4
  %11 = lshr i32 %8, 20
  %12 = tail call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef %1, ptr noundef nonnull @.str.75, i32 noundef %11) #22
  %13 = load i32, ptr %7, align 8
  %14 = and i32 %13, 1048575
  %15 = tail call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef %1, ptr noundef nonnull @.str.76, i32 noundef %14) #22
  %16 = call ptr @device_get_devnode(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %3)
  %17 = icmp eq ptr %16, null
  br i1 %17, label %38, label %18

18:                                               ; preds = %10
  %19 = call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef %1, ptr noundef nonnull @.str.77, ptr noundef nonnull %16) #22
  %20 = load i16, ptr %4, align 2
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = and i16 %20, 511
  %24 = zext i16 %23 to i32
  %25 = call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef %1, ptr noundef nonnull @.str.78, i32 noundef %24) #22
  br label %26

26:                                               ; preds = %22, %18
  %27 = load i32, ptr %5, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %26
  %30 = call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef %1, ptr noundef nonnull @.str.79, i32 noundef %27) #22
  br label %31

31:                                               ; preds = %29, %26
  %32 = load i32, ptr %6, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %31
  %35 = call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef %1, ptr noundef nonnull @.str.80, i32 noundef %32) #22
  br label %36

36:                                               ; preds = %34, %31
  %37 = load ptr, ptr %3, align 4
  call void @kfree(ptr noundef %37) #22
  br label %38

38:                                               ; preds = %36, %10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #22
  br label %39

39:                                               ; preds = %38, %2
  %40 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 4
  %41 = load ptr, ptr %40, align 8
  %42 = icmp eq ptr %41, null
  br i1 %42, label %48, label %43

43:                                               ; preds = %39
  %44 = load ptr, ptr %41, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %48, label %46

46:                                               ; preds = %43
  %47 = call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef %1, ptr noundef nonnull @.str.81, ptr noundef nonnull %44) #22
  br label %48

48:                                               ; preds = %46, %43, %39
  %49 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 6
  %50 = load ptr, ptr %49, align 8
  %51 = icmp eq ptr %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %48
  %53 = load ptr, ptr %50, align 4
  %54 = call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef %1, ptr noundef nonnull @.str.82, ptr noundef %53) #22
  br label %55

55:                                               ; preds = %52, %48
  call void @of_device_uevent(ptr noundef %0, ptr noundef %1) #22
  %56 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 5
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %65, label %59

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.bus_type, ptr %57, i32 0, i32 7
  %61 = load ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %65, label %63

63:                                               ; preds = %59
  %64 = call i32 %61(ptr noundef %0, ptr noundef %1) #22
  br label %65

65:                                               ; preds = %63, %59, %55
  %66 = phi i32 [ 0, %59 ], [ 0, %55 ], [ %64, %63 ]
  %67 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 31
  %68 = load ptr, ptr %67, align 4
  %69 = icmp eq ptr %68, null
  br i1 %69, label %76, label %70

70:                                               ; preds = %65
  %71 = getelementptr inbounds %struct.class, ptr %68, i32 0, i32 5
  %72 = load ptr, ptr %71, align 4
  %73 = icmp eq ptr %72, null
  br i1 %73, label %76, label %74

74:                                               ; preds = %70
  %75 = call i32 %72(ptr noundef %0, ptr noundef %1) #22
  br label %76

76:                                               ; preds = %74, %70, %65
  %77 = phi i32 [ %66, %70 ], [ %66, %65 ], [ %75, %74 ]
  %78 = load ptr, ptr %40, align 8
  %79 = icmp eq ptr %78, null
  br i1 %79, label %86, label %80

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.device_type, ptr %78, i32 0, i32 2
  %82 = load ptr, ptr %81, align 4
  %83 = icmp eq ptr %82, null
  br i1 %83, label %86, label %84

84:                                               ; preds = %80
  %85 = call i32 %82(ptr noundef %0, ptr noundef %1) #22
  br label %86

86:                                               ; preds = %84, %80, %76
  %87 = phi i32 [ %77, %80 ], [ %77, %76 ], [ %85, %84 ]
  ret i32 %87
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @add_uevent_var(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_device_uevent(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @device_create_release(ptr noundef %0) #0 {
  tail call void @kfree(ptr noundef %0) #22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @class_find_device(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_groups_change_owner(ptr noundef, ptr noundef, [1 x i32], [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #21

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { cold mustprogress nofree nounwind null_pointer_is_valid optsize sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nocallback nofree nosync nounwind willreturn }
attributes #13 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #16 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #17 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #18 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #19 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #20 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #21 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #22 = { nounwind }
attributes #23 = { nounwind allocsize(2) }
attributes #24 = { cold }
attributes #25 = { cold nounwind }
attributes #26 = { nounwind allocsize(0) }

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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{!"auto-init"}
!10 = !{i64 2149242081}
!11 = !{i64 2149237905}
!12 = !{i64 2149237980, i64 2149238007, i64 2149238054, i64 2149238076, i64 2149238104, i64 2149238124}
!13 = !{i64 2149265084}
!14 = !{i64 2148137989}
!15 = !{i64 636299, i64 2148126270, i64 2148126296, i64 2148126343, i64 2148126365, i64 2148126393, i64 2148126413}
!16 = !{i64 622868, i64 622893, i64 622915, i64 622931, i64 622943, i64 622963, i64 622987, i64 623003, i64 623015}
!17 = !{i64 2148138115}
!18 = !{i64 2150799201}
!19 = !{i64 2148139940, i64 2148139972, i64 2148140001, i64 2148140035, i64 2148140066, i64 2148140089}
!20 = !{!"branch_weights", i32 2000, i32 1}
!21 = !{i64 2148240150}
!22 = !{i64 2148142297, i64 2148142329, i64 2148142358, i64 2148142392, i64 2148142423, i64 2148142446}
!23 = !{i64 2149579176}
!24 = !{!"branch_weights", i32 1, i32 2001, i32 2001, i32 2000}
!25 = !{i8 0, i8 2}
!26 = !{!"branch_weights", i32 1, i32 4001}
!27 = !{i64 2148138482, i64 2148138508, i64 2148138537, i64 2148138571, i64 2148138602, i64 2148138625}
