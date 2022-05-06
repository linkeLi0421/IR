; ModuleID = '/llk/IR/drivers/regulator/core.c_pt.bc'
source_filename = "../drivers/regulator/core.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rdev_get_name:\09\09\09\09\09"
module asm "\09.asciz \09\22rdev_get_name\22\09\09\09\09\09"
module asm "__kstrtabns_rdev_get_name:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_regulator_get:\09\09\09\09\09"
module asm "\09.asciz \09\22regulator_get\22\09\09\09\09\09"
module asm "__kstrtabns_regulator_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_regulator_get_exclusive:\09\09\09\09\09"
module asm "\09.asciz \09\22regulator_get_exclusive\22\09\09\09\09\09"
module asm "__kstrtabns_regulator_get_exclusive:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_regulator_get_optional:\09\09\09\09\09"
module asm "\09.asciz \09\22regulator_get_optional\22\09\09\09\09\09"
module asm "__kstrtabns_regulator_get_optional:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_regulator_put:\09\09\09\09\09"
module asm "\09.asciz \09\22regulator_put\22\09\09\09\09\09"
module asm "__kstrtabns_regulator_put:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_regulator_register_supply_alias:\09\09\09\09\09"
module asm "\09.asciz \09\22regulator_register_supply_alias\22\09\09\09\09\09"
module asm "__kstrtabns_regulator_register_supply_alias:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_regulator_unregister_supply_alias:\09\09\09\09\09"
module asm "\09.asciz \09\22regulator_unregister_supply_alias\22\09\09\09\09\09"
module asm "__kstrtabns_regulator_unregister_supply_alias:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_regulator_bulk_register_supply_alias:\09\09\09\09\09"
module asm "\09.asciz \09\22regulator_bulk_register_supply_alias\22\09\09\09\09\09"
module asm "__kstrtabns_regulator_bulk_register_supply_alias:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_regulator_bulk_unregister_supply_alias:\09\09\09\09\09"
module asm "\09.asciz \09\22regulator_bulk_unregister_supply_alias\22\09\09\09\09\09"
module asm "__kstrtabns_regulator_bulk_unregister_supply_alias:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_regulator_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22regulator_enable\22\09\09\09\09\09"
module asm "__kstrtabns_regulator_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_regulator_disable:\09\09\09\09\09"
module asm "\09.asciz \09\22regulator_disable\22\09\09\09\09\09"
module asm "__kstrtabns_regulator_disable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_regulator_force_disable:\09\09\09\09\09"
module asm "\09.asciz \09\22regulator_force_disable\22\09\09\09\09\09"
module asm "__kstrtabns_regulator_force_disable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_regulator_disable_deferred:\09\09\09\09\09"
module asm "\09.asciz \09\22regulator_disable_deferred\22\09\09\09\09\09"
module asm "__kstrtabns_regulator_disable_deferred:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_regulator_is_enabled:\09\09\09\09\09"
module asm "\09.asciz \09\22regulator_is_enabled\22\09\09\09\09\09"
module asm "__kstrtabns_regulator_is_enabled:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_regulator_count_voltages:\09\09\09\09\09"
module asm "\09.asciz \09\22regulator_count_voltages\22\09\09\09\09\09"
module asm "__kstrtabns_regulator_count_voltages:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_regulator_list_voltage:\09\09\09\09\09"
module asm "\09.asciz \09\22regulator_list_voltage\22\09\09\09\09\09"
module asm "__kstrtabns_regulator_list_voltage:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_regulator_get_hardware_vsel_register:\09\09\09\09\09"
module asm "\09.asciz \09\22regulator_get_hardware_vsel_register\22\09\09\09\09\09"
module asm "__kstrtabns_regulator_get_hardware_vsel_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_regulator_list_hardware_vsel:\09\09\09\09\09"
module asm "\09.asciz \09\22regulator_list_hardware_vsel\22\09\09\09\09\09"
module asm "__kstrtabns_regulator_list_hardware_vsel:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_regulator_get_linear_step:\09\09\09\09\09"
module asm "\09.asciz \09\22regulator_get_linear_step\22\09\09\09\09\09"
module asm "__kstrtabns_regulator_get_linear_step:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_regulator_is_supported_voltage:\09\09\09\09\09"
module asm "\09.asciz \09\22regulator_is_supported_voltage\22\09\09\09\09\09"
module asm "__kstrtabns_regulator_is_supported_voltage:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_regulator_set_voltage_rdev:\09\09\09\09\09"
module asm "\09.asciz \09\22regulator_set_voltage_rdev\22\09\09\09\09\09"
module asm "__kstrtabns_regulator_set_voltage_rdev:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_regulator_set_voltage:\09\09\09\09\09"
module asm "\09.asciz \09\22regulator_set_voltage\22\09\09\09\09\09"
module asm "__kstrtabns_regulator_set_voltage:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_regulator_suspend_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22regulator_suspend_enable\22\09\09\09\09\09"
module asm "__kstrtabns_regulator_suspend_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_regulator_suspend_disable:\09\09\09\09\09"
module asm "\09.asciz \09\22regulator_suspend_disable\22\09\09\09\09\09"
module asm "__kstrtabns_regulator_suspend_disable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_regulator_set_suspend_voltage:\09\09\09\09\09"
module asm "\09.asciz \09\22regulator_set_suspend_voltage\22\09\09\09\09\09"
module asm "__kstrtabns_regulator_set_suspend_voltage:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_regulator_set_voltage_time:\09\09\09\09\09"
module asm "\09.asciz \09\22regulator_set_voltage_time\22\09\09\09\09\09"
module asm "__kstrtabns_regulator_set_voltage_time:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_regulator_set_voltage_time_sel:\09\09\09\09\09"
module asm "\09.asciz \09\22regulator_set_voltage_time_sel\22\09\09\09\09\09"
module asm "__kstrtabns_regulator_set_voltage_time_sel:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_regulator_sync_voltage:\09\09\09\09\09"
module asm "\09.asciz \09\22regulator_sync_voltage\22\09\09\09\09\09"
module asm "__kstrtabns_regulator_sync_voltage:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_regulator_get_voltage_rdev:\09\09\09\09\09"
module asm "\09.asciz \09\22regulator_get_voltage_rdev\22\09\09\09\09\09"
module asm "__kstrtabns_regulator_get_voltage_rdev:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_regulator_get_voltage:\09\09\09\09\09"
module asm "\09.asciz \09\22regulator_get_voltage\22\09\09\09\09\09"
module asm "__kstrtabns_regulator_get_voltage:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_regulator_set_current_limit:\09\09\09\09\09"
module asm "\09.asciz \09\22regulator_set_current_limit\22\09\09\09\09\09"
module asm "__kstrtabns_regulator_set_current_limit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_regulator_get_current_limit:\09\09\09\09\09"
module asm "\09.asciz \09\22regulator_get_current_limit\22\09\09\09\09\09"
module asm "__kstrtabns_regulator_get_current_limit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_regulator_set_mode:\09\09\09\09\09"
module asm "\09.asciz \09\22regulator_set_mode\22\09\09\09\09\09"
module asm "__kstrtabns_regulator_set_mode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_regulator_get_mode:\09\09\09\09\09"
module asm "\09.asciz \09\22regulator_get_mode\22\09\09\09\09\09"
module asm "__kstrtabns_regulator_get_mode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_regulator_get_error_flags:\09\09\09\09\09"
module asm "\09.asciz \09\22regulator_get_error_flags\22\09\09\09\09\09"
module asm "__kstrtabns_regulator_get_error_flags:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_regulator_set_load:\09\09\09\09\09"
module asm "\09.asciz \09\22regulator_set_load\22\09\09\09\09\09"
module asm "__kstrtabns_regulator_set_load:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_regulator_allow_bypass:\09\09\09\09\09"
module asm "\09.asciz \09\22regulator_allow_bypass\22\09\09\09\09\09"
module asm "__kstrtabns_regulator_allow_bypass:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_regulator_register_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22regulator_register_notifier\22\09\09\09\09\09"
module asm "__kstrtabns_regulator_register_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_regulator_unregister_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22regulator_unregister_notifier\22\09\09\09\09\09"
module asm "__kstrtabns_regulator_unregister_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_regulator_bulk_get:\09\09\09\09\09"
module asm "\09.asciz \09\22regulator_bulk_get\22\09\09\09\09\09"
module asm "__kstrtabns_regulator_bulk_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_regulator_bulk_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22regulator_bulk_enable\22\09\09\09\09\09"
module asm "__kstrtabns_regulator_bulk_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_regulator_bulk_disable:\09\09\09\09\09"
module asm "\09.asciz \09\22regulator_bulk_disable\22\09\09\09\09\09"
module asm "__kstrtabns_regulator_bulk_disable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_regulator_bulk_force_disable:\09\09\09\09\09"
module asm "\09.asciz \09\22regulator_bulk_force_disable\22\09\09\09\09\09"
module asm "__kstrtabns_regulator_bulk_force_disable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_regulator_bulk_free:\09\09\09\09\09"
module asm "\09.asciz \09\22regulator_bulk_free\22\09\09\09\09\09"
module asm "__kstrtabns_regulator_bulk_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_regulator_notifier_call_chain:\09\09\09\09\09"
module asm "\09.asciz \09\22regulator_notifier_call_chain\22\09\09\09\09\09"
module asm "__kstrtabns_regulator_notifier_call_chain:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_regulator_mode_to_status:\09\09\09\09\09"
module asm "\09.asciz \09\22regulator_mode_to_status\22\09\09\09\09\09"
module asm "__kstrtabns_regulator_mode_to_status:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_regulator_register:\09\09\09\09\09"
module asm "\09.asciz \09\22regulator_register\22\09\09\09\09\09"
module asm "__kstrtabns_regulator_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_regulator_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22regulator_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_regulator_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_regulator_has_full_constraints:\09\09\09\09\09"
module asm "\09.asciz \09\22regulator_has_full_constraints\22\09\09\09\09\09"
module asm "__kstrtabns_regulator_has_full_constraints:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rdev_get_drvdata:\09\09\09\09\09"
module asm "\09.asciz \09\22rdev_get_drvdata\22\09\09\09\09\09"
module asm "__kstrtabns_rdev_get_drvdata:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_regulator_get_drvdata:\09\09\09\09\09"
module asm "\09.asciz \09\22regulator_get_drvdata\22\09\09\09\09\09"
module asm "__kstrtabns_regulator_get_drvdata:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_regulator_set_drvdata:\09\09\09\09\09"
module asm "\09.asciz \09\22regulator_set_drvdata\22\09\09\09\09\09"
module asm "__kstrtabns_regulator_set_drvdata:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rdev_get_id:\09\09\09\09\09"
module asm "\09.asciz \09\22rdev_get_id\22\09\09\09\09\09"
module asm "__kstrtabns_rdev_get_id:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rdev_get_dev:\09\09\09\09\09"
module asm "\09.asciz \09\22rdev_get_dev\22\09\09\09\09\09"
module asm "__kstrtabns_rdev_get_dev:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rdev_get_regmap:\09\09\09\09\09"
module asm "\09.asciz \09\22rdev_get_regmap\22\09\09\09\09\09"
module asm "__kstrtabns_rdev_get_regmap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_regulator_get_init_drvdata:\09\09\09\09\09"
module asm "\09.asciz \09\22regulator_get_init_drvdata\22\09\09\09\09\09"
module asm "__kstrtabns_regulator_get_init_drvdata:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.static_call_key = type { ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.trace_event_fields = type { ptr, %union.anon }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, i32, i32, i32, i32 }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.0, %struct.trace_event, ptr, ptr, %union.anon.2, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.0 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.2 = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.ww_class = type { %struct.atomic_t, %struct.lock_class_key, %struct.lock_class_key, ptr, ptr, i32 }
%struct.lock_class_key = type {}
%struct.class = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.regulator_coupler = type { %struct.list_head, ptr, ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.trace_event_raw_regulator_basic = type { %struct.trace_entry, i32, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.trace_event_raw_regulator_range = type { %struct.trace_entry, i32, i32, i32, [0 x i8] }
%struct.trace_event_raw_regulator_value = type { %struct.trace_entry, i32, i32, [0 x i8] }
%struct.regulator_dev = type { ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.coupling_desc, %struct.blocking_notifier_head, %struct.ww_mutex, ptr, i32, ptr, %struct.device, ptr, ptr, ptr, ptr, %struct.delayed_work, ptr, ptr, ptr, i8, i64, i32, i8, %struct.spinlock }
%struct.coupling_desc = type { ptr, ptr, i32, i32 }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
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
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.regulation_constraints = type { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i16 }
%struct.regulator_state = type { i32, i32, i32, i32, i32, i8 }
%struct.notification_limit = type { i32, i32, i32 }
%struct.regulator_voltage = type { i32, i32 }
%struct.regulator_desc = type { ptr, ptr, ptr, i8, ptr, ptr, i32, i8, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, ptr }
%struct.regulator_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.regulator = type { ptr, %struct.list_head, i8, i32, i32, i32, [5 x %struct.regulator_voltage], ptr, %struct.device_attribute, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.regulator_supply_alias = type { %struct.list_head, ptr, ptr, ptr, ptr }
%struct.regulator_map = type { %struct.list_head, ptr, ptr, ptr }
%struct.ww_acquire_ctx = type { ptr, i32, i32, i16, i16 }
%struct.pre_voltage_change_data = type { i32, i32, i32 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.async_domain = type { %struct.list_head, i8 }
%struct.regulator_config = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.regulator_init_data = type { ptr, %struct.regulation_constraints, i32, ptr, ptr, ptr }
%struct.regulator_consumer_supply = type { ptr, ptr }
%struct.regulator_enable_gpio = type { %struct.list_head, ptr, i32, i32 }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, [1 x %struct.cpumask], i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }
%struct.file = type { %union.anon.17, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.17 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.89, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.90, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.91, ptr, %struct.address_space, %struct.list_head, %union.anon.92, i32, i32, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.89 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%union.anon.90 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.91 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.92 = type { ptr }
%struct.summary_lock_data = type { ptr, ptr, ptr }
%struct.summary_data = type { ptr, ptr, i32 }

@__tpstrtab_regulator_enable = internal constant [17 x i8] c"regulator_enable\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_regulator_enable = dso_local global %struct.static_call_key { ptr @__traceiter_regulator_enable }, align 4
@__tracepoint_regulator_enable = dso_local global %struct.tracepoint { ptr @__tpstrtab_regulator_enable, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_regulator_enable, ptr null, ptr @__traceiter_regulator_enable, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_regulator_enable = internal constant ptr @__tracepoint_regulator_enable, section "__tracepoints_ptrs", align 4
@__tpstrtab_regulator_enable_delay = internal constant [23 x i8] c"regulator_enable_delay\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_regulator_enable_delay = dso_local global %struct.static_call_key { ptr @__traceiter_regulator_enable_delay }, align 4
@__tracepoint_regulator_enable_delay = dso_local global %struct.tracepoint { ptr @__tpstrtab_regulator_enable_delay, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_regulator_enable_delay, ptr null, ptr @__traceiter_regulator_enable_delay, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_regulator_enable_delay = internal constant ptr @__tracepoint_regulator_enable_delay, section "__tracepoints_ptrs", align 4
@__tpstrtab_regulator_enable_complete = internal constant [26 x i8] c"regulator_enable_complete\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_regulator_enable_complete = dso_local global %struct.static_call_key { ptr @__traceiter_regulator_enable_complete }, align 4
@__tracepoint_regulator_enable_complete = dso_local global %struct.tracepoint { ptr @__tpstrtab_regulator_enable_complete, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_regulator_enable_complete, ptr null, ptr @__traceiter_regulator_enable_complete, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_regulator_enable_complete = internal constant ptr @__tracepoint_regulator_enable_complete, section "__tracepoints_ptrs", align 4
@__tpstrtab_regulator_disable = internal constant [18 x i8] c"regulator_disable\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_regulator_disable = dso_local global %struct.static_call_key { ptr @__traceiter_regulator_disable }, align 4
@__tracepoint_regulator_disable = dso_local global %struct.tracepoint { ptr @__tpstrtab_regulator_disable, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_regulator_disable, ptr null, ptr @__traceiter_regulator_disable, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_regulator_disable = internal constant ptr @__tracepoint_regulator_disable, section "__tracepoints_ptrs", align 4
@__tpstrtab_regulator_disable_complete = internal constant [27 x i8] c"regulator_disable_complete\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_regulator_disable_complete = dso_local global %struct.static_call_key { ptr @__traceiter_regulator_disable_complete }, align 4
@__tracepoint_regulator_disable_complete = dso_local global %struct.tracepoint { ptr @__tpstrtab_regulator_disable_complete, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_regulator_disable_complete, ptr null, ptr @__traceiter_regulator_disable_complete, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_regulator_disable_complete = internal constant ptr @__tracepoint_regulator_disable_complete, section "__tracepoints_ptrs", align 4
@__tpstrtab_regulator_bypass_enable = internal constant [24 x i8] c"regulator_bypass_enable\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_regulator_bypass_enable = dso_local global %struct.static_call_key { ptr @__traceiter_regulator_bypass_enable }, align 4
@__tracepoint_regulator_bypass_enable = dso_local global %struct.tracepoint { ptr @__tpstrtab_regulator_bypass_enable, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_regulator_bypass_enable, ptr null, ptr @__traceiter_regulator_bypass_enable, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_regulator_bypass_enable = internal constant ptr @__tracepoint_regulator_bypass_enable, section "__tracepoints_ptrs", align 4
@__tpstrtab_regulator_bypass_enable_complete = internal constant [33 x i8] c"regulator_bypass_enable_complete\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_regulator_bypass_enable_complete = dso_local global %struct.static_call_key { ptr @__traceiter_regulator_bypass_enable_complete }, align 4
@__tracepoint_regulator_bypass_enable_complete = dso_local global %struct.tracepoint { ptr @__tpstrtab_regulator_bypass_enable_complete, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_regulator_bypass_enable_complete, ptr null, ptr @__traceiter_regulator_bypass_enable_complete, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_regulator_bypass_enable_complete = internal constant ptr @__tracepoint_regulator_bypass_enable_complete, section "__tracepoints_ptrs", align 4
@__tpstrtab_regulator_bypass_disable = internal constant [25 x i8] c"regulator_bypass_disable\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_regulator_bypass_disable = dso_local global %struct.static_call_key { ptr @__traceiter_regulator_bypass_disable }, align 4
@__tracepoint_regulator_bypass_disable = dso_local global %struct.tracepoint { ptr @__tpstrtab_regulator_bypass_disable, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_regulator_bypass_disable, ptr null, ptr @__traceiter_regulator_bypass_disable, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_regulator_bypass_disable = internal constant ptr @__tracepoint_regulator_bypass_disable, section "__tracepoints_ptrs", align 4
@__tpstrtab_regulator_bypass_disable_complete = internal constant [34 x i8] c"regulator_bypass_disable_complete\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_regulator_bypass_disable_complete = dso_local global %struct.static_call_key { ptr @__traceiter_regulator_bypass_disable_complete }, align 4
@__tracepoint_regulator_bypass_disable_complete = dso_local global %struct.tracepoint { ptr @__tpstrtab_regulator_bypass_disable_complete, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_regulator_bypass_disable_complete, ptr null, ptr @__traceiter_regulator_bypass_disable_complete, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_regulator_bypass_disable_complete = internal constant ptr @__tracepoint_regulator_bypass_disable_complete, section "__tracepoints_ptrs", align 4
@__tpstrtab_regulator_set_voltage = internal constant [22 x i8] c"regulator_set_voltage\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_regulator_set_voltage = dso_local global %struct.static_call_key { ptr @__traceiter_regulator_set_voltage }, align 4
@__tracepoint_regulator_set_voltage = dso_local global %struct.tracepoint { ptr @__tpstrtab_regulator_set_voltage, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_regulator_set_voltage, ptr null, ptr @__traceiter_regulator_set_voltage, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_regulator_set_voltage = internal constant ptr @__tracepoint_regulator_set_voltage, section "__tracepoints_ptrs", align 4
@__tpstrtab_regulator_set_voltage_complete = internal constant [31 x i8] c"regulator_set_voltage_complete\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_regulator_set_voltage_complete = dso_local global %struct.static_call_key { ptr @__traceiter_regulator_set_voltage_complete }, align 4
@__tracepoint_regulator_set_voltage_complete = dso_local global %struct.tracepoint { ptr @__tpstrtab_regulator_set_voltage_complete, %struct.static_key zeroinitializer, ptr @__SCK__tp_func_regulator_set_voltage_complete, ptr null, ptr @__traceiter_regulator_set_voltage_complete, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_regulator_set_voltage_complete = internal constant ptr @__tracepoint_regulator_set_voltage_complete, section "__tracepoints_ptrs", align 4
@trace_event_fields_regulator_basic = internal global [2 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.25, %union.anon { %struct.anon { ptr @.str.26, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_regulator_basic = internal global %struct.trace_event_class { ptr @.str.23, ptr @trace_event_raw_event_regulator_basic, ptr @perf_trace_regulator_basic, ptr @trace_event_reg, ptr @trace_event_fields_regulator_basic, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_regulator_basic, i64 24), ptr getelementptr (i8, ptr @event_class_regulator_basic, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_regulator_basic = internal global %struct.trace_event_functions { ptr @trace_raw_output_regulator_basic, ptr null, ptr null, ptr null }, align 4
@print_fmt_regulator_basic = internal global [27 x i8] c"\22name=%s\22, __get_str(name)\00", align 1
@event_regulator_enable = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_regulator_basic, %union.anon.0 { ptr @__tracepoint_regulator_enable }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_regulator_basic }, ptr @print_fmt_regulator_basic, ptr null, %union.anon.2 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_regulator_enable = internal global ptr @event_regulator_enable, section "_ftrace_events", align 4
@event_regulator_enable_delay = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_regulator_basic, %union.anon.0 { ptr @__tracepoint_regulator_enable_delay }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_regulator_basic }, ptr @print_fmt_regulator_basic, ptr null, %union.anon.2 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_regulator_enable_delay = internal global ptr @event_regulator_enable_delay, section "_ftrace_events", align 4
@event_regulator_enable_complete = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_regulator_basic, %union.anon.0 { ptr @__tracepoint_regulator_enable_complete }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_regulator_basic }, ptr @print_fmt_regulator_basic, ptr null, %union.anon.2 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_regulator_enable_complete = internal global ptr @event_regulator_enable_complete, section "_ftrace_events", align 4
@event_regulator_disable = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_regulator_basic, %union.anon.0 { ptr @__tracepoint_regulator_disable }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_regulator_basic }, ptr @print_fmt_regulator_basic, ptr null, %union.anon.2 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_regulator_disable = internal global ptr @event_regulator_disable, section "_ftrace_events", align 4
@event_regulator_disable_complete = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_regulator_basic, %union.anon.0 { ptr @__tracepoint_regulator_disable_complete }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_regulator_basic }, ptr @print_fmt_regulator_basic, ptr null, %union.anon.2 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_regulator_disable_complete = internal global ptr @event_regulator_disable_complete, section "_ftrace_events", align 4
@event_regulator_bypass_enable = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_regulator_basic, %union.anon.0 { ptr @__tracepoint_regulator_bypass_enable }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_regulator_basic }, ptr @print_fmt_regulator_basic, ptr null, %union.anon.2 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_regulator_bypass_enable = internal global ptr @event_regulator_bypass_enable, section "_ftrace_events", align 4
@event_regulator_bypass_enable_complete = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_regulator_basic, %union.anon.0 { ptr @__tracepoint_regulator_bypass_enable_complete }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_regulator_basic }, ptr @print_fmt_regulator_basic, ptr null, %union.anon.2 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_regulator_bypass_enable_complete = internal global ptr @event_regulator_bypass_enable_complete, section "_ftrace_events", align 4
@event_regulator_bypass_disable = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_regulator_basic, %union.anon.0 { ptr @__tracepoint_regulator_bypass_disable }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_regulator_basic }, ptr @print_fmt_regulator_basic, ptr null, %union.anon.2 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_regulator_bypass_disable = internal global ptr @event_regulator_bypass_disable, section "_ftrace_events", align 4
@event_regulator_bypass_disable_complete = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_regulator_basic, %union.anon.0 { ptr @__tracepoint_regulator_bypass_disable_complete }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_regulator_basic }, ptr @print_fmt_regulator_basic, ptr null, %union.anon.2 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_regulator_bypass_disable_complete = internal global ptr @event_regulator_bypass_disable_complete, section "_ftrace_events", align 4
@trace_event_fields_regulator_range = internal global [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.25, %union.anon { %struct.anon { ptr @.str.26, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.28, %union.anon { %struct.anon { ptr @.str.29, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.28, %union.anon { %struct.anon { ptr @.str.30, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_regulator_range = internal global %struct.trace_event_class { ptr @.str.23, ptr @trace_event_raw_event_regulator_range, ptr @perf_trace_regulator_range, ptr @trace_event_reg, ptr @trace_event_fields_regulator_range, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_regulator_range, i64 24), ptr getelementptr (i8, ptr @event_class_regulator_range, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_regulator_range = internal global %struct.trace_event_functions { ptr @trace_raw_output_regulator_range, ptr null, ptr null, ptr null }, align 4
@print_fmt_regulator_range = internal global [65 x i8] c"\22name=%s (%d-%d)\22, __get_str(name), (int)REC->min, (int)REC->max\00", align 1
@event_regulator_set_voltage = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_regulator_range, %union.anon.0 { ptr @__tracepoint_regulator_set_voltage }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_regulator_range }, ptr @print_fmt_regulator_range, ptr null, %union.anon.2 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_regulator_set_voltage = internal global ptr @event_regulator_set_voltage, section "_ftrace_events", align 4
@trace_event_fields_regulator_value = internal global [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.25, %union.anon { %struct.anon { ptr @.str.26, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.32, %union.anon { %struct.anon { ptr @.str.33, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], align 4
@event_class_regulator_value = internal global %struct.trace_event_class { ptr @.str.23, ptr @trace_event_raw_event_regulator_value, ptr @perf_trace_regulator_value, ptr @trace_event_reg, ptr @trace_event_fields_regulator_value, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_regulator_value, i64 24), ptr getelementptr (i8, ptr @event_class_regulator_value, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_regulator_value = internal global %struct.trace_event_functions { ptr @trace_raw_output_regulator_value, ptr null, ptr null, ptr null }, align 4
@print_fmt_regulator_value = internal global [50 x i8] c"\22name=%s, val=%u\22, __get_str(name), (int)REC->val\00", align 1
@event_regulator_set_voltage_complete = internal global %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_regulator_value, %union.anon.0 { ptr @__tracepoint_regulator_set_voltage_complete }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_regulator_value }, ptr @print_fmt_regulator_value, ptr null, %union.anon.2 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, align 4
@__event_regulator_set_voltage_complete = internal global ptr @event_regulator_set_voltage_complete, section "_ftrace_events", align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@__kstrtab_rdev_get_name = external dso_local constant [0 x i8], align 1
@__kstrtabns_rdev_get_name = external dso_local constant [0 x i8], align 1
@__ksymtab_rdev_get_name = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rdev_get_name to i32), ptr @__kstrtab_rdev_get_name, ptr @__kstrtabns_rdev_get_name }, section "___ksymtab_gpl+rdev_get_name", align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"\013%s: voltage operation not allowed\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"\013%s: unsupportable voltage range: %d-%duV\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"\013%s: Restricting voltage, %u-%uuV\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"invalid type %d in %s\0A\00", align 1
@__func__._regulator_get = private unnamed_addr constant [15 x i8] c"_regulator_get\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"\013get() with no identifier\0A\00", align 1
@.str.6 = private unnamed_addr constant [52 x i8] c"incomplete constraints, dummy supplies not allowed\0A\00", align 1
@.str.7 = private unnamed_addr constant [44 x i8] c"supply %s not found, using dummy regulator\0A\00", align 1
@dummy_regulator_rdev = external dso_local local_unnamed_addr global ptr, align 4
@.str.8 = private unnamed_addr constant [51 x i8] c"dummy supplies not allowed for exclusive requests\0A\00", align 1
@regulator_list_mutex = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @regulator_list_mutex, i64 12), ptr getelementptr (i8, ptr @regulator_list_mutex, i64 12) } }, align 4
@__kstrtab_regulator_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_regulator_get = external dso_local constant [0 x i8], align 1
@__ksymtab_regulator_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @regulator_get to i32), ptr @__kstrtab_regulator_get, ptr @__kstrtabns_regulator_get }, section "___ksymtab_gpl+regulator_get", align 4
@__kstrtab_regulator_get_exclusive = external dso_local constant [0 x i8], align 1
@__kstrtabns_regulator_get_exclusive = external dso_local constant [0 x i8], align 1
@__ksymtab_regulator_get_exclusive = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @regulator_get_exclusive to i32), ptr @__kstrtab_regulator_get_exclusive, ptr @__kstrtabns_regulator_get_exclusive }, section "___ksymtab_gpl+regulator_get_exclusive", align 4
@__kstrtab_regulator_get_optional = external dso_local constant [0 x i8], align 1
@__kstrtabns_regulator_get_optional = external dso_local constant [0 x i8], align 1
@__ksymtab_regulator_get_optional = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @regulator_get_optional to i32), ptr @__kstrtab_regulator_get_optional, ptr @__kstrtabns_regulator_get_optional }, section "___ksymtab_gpl+regulator_get_optional", align 4
@__kstrtab_regulator_put = external dso_local constant [0 x i8], align 1
@__kstrtabns_regulator_put = external dso_local constant [0 x i8], align 1
@__ksymtab_regulator_put = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @regulator_put to i32), ptr @__kstrtab_regulator_put, ptr @__kstrtabns_regulator_put }, section "___ksymtab_gpl+regulator_put", align 4
@regulator_supply_alias_list = internal global %struct.list_head { ptr @regulator_supply_alias_list, ptr @regulator_supply_alias_list }, align 4
@.str.9 = private unnamed_addr constant [42 x i8] c"\016Adding alias for supply %s,%s -> %s,%s\0A\00", align 1
@__kstrtab_regulator_register_supply_alias = external dso_local constant [0 x i8], align 1
@__kstrtabns_regulator_register_supply_alias = external dso_local constant [0 x i8], align 1
@__ksymtab_regulator_register_supply_alias = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @regulator_register_supply_alias to i32), ptr @__kstrtab_regulator_register_supply_alias, ptr @__kstrtabns_regulator_register_supply_alias }, section "___ksymtab_gpl+regulator_register_supply_alias", align 4
@__kstrtab_regulator_unregister_supply_alias = external dso_local constant [0 x i8], align 1
@__kstrtabns_regulator_unregister_supply_alias = external dso_local constant [0 x i8], align 1
@__ksymtab_regulator_unregister_supply_alias = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @regulator_unregister_supply_alias to i32), ptr @__kstrtab_regulator_unregister_supply_alias, ptr @__kstrtabns_regulator_unregister_supply_alias }, section "___ksymtab_gpl+regulator_unregister_supply_alias", align 4
@.str.10 = private unnamed_addr constant [46 x i8] c"Failed to create supply alias %s,%s -> %s,%s\0A\00", align 1
@__kstrtab_regulator_bulk_register_supply_alias = external dso_local constant [0 x i8], align 1
@__kstrtabns_regulator_bulk_register_supply_alias = external dso_local constant [0 x i8], align 1
@__ksymtab_regulator_bulk_register_supply_alias = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @regulator_bulk_register_supply_alias to i32), ptr @__kstrtab_regulator_bulk_register_supply_alias, ptr @__kstrtabns_regulator_bulk_register_supply_alias }, section "___ksymtab_gpl+regulator_bulk_register_supply_alias", align 4
@__kstrtab_regulator_bulk_unregister_supply_alias = external dso_local constant [0 x i8], align 1
@__kstrtabns_regulator_bulk_unregister_supply_alias = external dso_local constant [0 x i8], align 1
@__ksymtab_regulator_bulk_unregister_supply_alias = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @regulator_bulk_unregister_supply_alias to i32), ptr @__kstrtab_regulator_bulk_unregister_supply_alias, ptr @__kstrtabns_regulator_bulk_unregister_supply_alias }, section "___ksymtab_gpl+regulator_bulk_unregister_supply_alias", align 4
@__kstrtab_regulator_enable = external dso_local constant [0 x i8], align 1
@__kstrtabns_regulator_enable = external dso_local constant [0 x i8], align 1
@__ksymtab_regulator_enable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @regulator_enable to i32), ptr @__kstrtab_regulator_enable, ptr @__kstrtabns_regulator_enable }, section "___ksymtab_gpl+regulator_enable", align 4
@__kstrtab_regulator_disable = external dso_local constant [0 x i8], align 1
@__kstrtabns_regulator_disable = external dso_local constant [0 x i8], align 1
@__ksymtab_regulator_disable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @regulator_disable to i32), ptr @__kstrtab_regulator_disable, ptr @__kstrtabns_regulator_disable }, section "___ksymtab_gpl+regulator_disable", align 4
@__kstrtab_regulator_force_disable = external dso_local constant [0 x i8], align 1
@__kstrtabns_regulator_force_disable = external dso_local constant [0 x i8], align 1
@__ksymtab_regulator_force_disable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @regulator_force_disable to i32), ptr @__kstrtab_regulator_force_disable, ptr @__kstrtabns_regulator_force_disable }, section "___ksymtab_gpl+regulator_force_disable", align 4
@system_power_efficient_wq = external dso_local local_unnamed_addr global ptr, align 4
@__kstrtab_regulator_disable_deferred = external dso_local constant [0 x i8], align 1
@__kstrtabns_regulator_disable_deferred = external dso_local constant [0 x i8], align 1
@__ksymtab_regulator_disable_deferred = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @regulator_disable_deferred to i32), ptr @__kstrtab_regulator_disable_deferred, ptr @__kstrtabns_regulator_disable_deferred }, section "___ksymtab_gpl+regulator_disable_deferred", align 4
@__kstrtab_regulator_is_enabled = external dso_local constant [0 x i8], align 1
@__kstrtabns_regulator_is_enabled = external dso_local constant [0 x i8], align 1
@__ksymtab_regulator_is_enabled = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @regulator_is_enabled to i32), ptr @__kstrtab_regulator_is_enabled, ptr @__kstrtabns_regulator_is_enabled }, section "___ksymtab_gpl+regulator_is_enabled", align 4
@__kstrtab_regulator_count_voltages = external dso_local constant [0 x i8], align 1
@__kstrtabns_regulator_count_voltages = external dso_local constant [0 x i8], align 1
@__ksymtab_regulator_count_voltages = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @regulator_count_voltages to i32), ptr @__kstrtab_regulator_count_voltages, ptr @__kstrtabns_regulator_count_voltages }, section "___ksymtab_gpl+regulator_count_voltages", align 4
@__kstrtab_regulator_list_voltage = external dso_local constant [0 x i8], align 1
@__kstrtabns_regulator_list_voltage = external dso_local constant [0 x i8], align 1
@__ksymtab_regulator_list_voltage = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @regulator_list_voltage to i32), ptr @__kstrtab_regulator_list_voltage, ptr @__kstrtabns_regulator_list_voltage }, section "___ksymtab_gpl+regulator_list_voltage", align 4
@__kstrtab_regulator_get_hardware_vsel_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_regulator_get_hardware_vsel_register = external dso_local constant [0 x i8], align 1
@__ksymtab_regulator_get_hardware_vsel_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @regulator_get_hardware_vsel_register to i32), ptr @__kstrtab_regulator_get_hardware_vsel_register, ptr @__kstrtabns_regulator_get_hardware_vsel_register }, section "___ksymtab_gpl+regulator_get_hardware_vsel_register", align 4
@__kstrtab_regulator_list_hardware_vsel = external dso_local constant [0 x i8], align 1
@__kstrtabns_regulator_list_hardware_vsel = external dso_local constant [0 x i8], align 1
@__ksymtab_regulator_list_hardware_vsel = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @regulator_list_hardware_vsel to i32), ptr @__kstrtab_regulator_list_hardware_vsel, ptr @__kstrtabns_regulator_list_hardware_vsel }, section "___ksymtab_gpl+regulator_list_hardware_vsel", align 4
@__kstrtab_regulator_get_linear_step = external dso_local constant [0 x i8], align 1
@__kstrtabns_regulator_get_linear_step = external dso_local constant [0 x i8], align 1
@__ksymtab_regulator_get_linear_step = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @regulator_get_linear_step to i32), ptr @__kstrtab_regulator_get_linear_step, ptr @__kstrtabns_regulator_get_linear_step }, section "___ksymtab_gpl+regulator_get_linear_step", align 4
@__kstrtab_regulator_is_supported_voltage = external dso_local constant [0 x i8], align 1
@__kstrtabns_regulator_is_supported_voltage = external dso_local constant [0 x i8], align 1
@__ksymtab_regulator_is_supported_voltage = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @regulator_is_supported_voltage to i32), ptr @__kstrtab_regulator_is_supported_voltage, ptr @__kstrtabns_regulator_is_supported_voltage }, section "___ksymtab_gpl+regulator_is_supported_voltage", align 4
@.str.11 = private unnamed_addr constant [40 x i8] c"Failed to increase supply voltage: %pe\0A\00", align 1
@.str.12 = private unnamed_addr constant [40 x i8] c"Failed to decrease supply voltage: %pe\0A\00", align 1
@__kstrtab_regulator_set_voltage_rdev = external dso_local constant [0 x i8], align 1
@__kstrtabns_regulator_set_voltage_rdev = external dso_local constant [0 x i8], align 1
@__ksymtab_regulator_set_voltage_rdev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @regulator_set_voltage_rdev to i32), ptr @__kstrtab_regulator_set_voltage_rdev, ptr @__kstrtabns_regulator_set_voltage_rdev }, section "___ksymtab_gpl+regulator_set_voltage_rdev", align 4
@__kstrtab_regulator_set_voltage = external dso_local constant [0 x i8], align 1
@__kstrtabns_regulator_set_voltage = external dso_local constant [0 x i8], align 1
@__ksymtab_regulator_set_voltage = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @regulator_set_voltage to i32), ptr @__kstrtab_regulator_set_voltage, ptr @__kstrtabns_regulator_set_voltage }, section "___ksymtab_gpl+regulator_set_voltage", align 4
@__kstrtab_regulator_suspend_enable = external dso_local constant [0 x i8], align 1
@__kstrtabns_regulator_suspend_enable = external dso_local constant [0 x i8], align 1
@__ksymtab_regulator_suspend_enable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @regulator_suspend_enable to i32), ptr @__kstrtab_regulator_suspend_enable, ptr @__kstrtabns_regulator_suspend_enable }, section "___ksymtab_gpl+regulator_suspend_enable", align 4
@__kstrtab_regulator_suspend_disable = external dso_local constant [0 x i8], align 1
@__kstrtabns_regulator_suspend_disable = external dso_local constant [0 x i8], align 1
@__ksymtab_regulator_suspend_disable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @regulator_suspend_disable to i32), ptr @__kstrtab_regulator_suspend_disable, ptr @__kstrtabns_regulator_suspend_disable }, section "___ksymtab_gpl+regulator_suspend_disable", align 4
@__kstrtab_regulator_set_suspend_voltage = external dso_local constant [0 x i8], align 1
@__kstrtabns_regulator_set_suspend_voltage = external dso_local constant [0 x i8], align 1
@__ksymtab_regulator_set_suspend_voltage = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @regulator_set_suspend_voltage to i32), ptr @__kstrtab_regulator_set_suspend_voltage, ptr @__kstrtabns_regulator_set_suspend_voltage }, section "___ksymtab_gpl+regulator_set_suspend_voltage", align 4
@__kstrtab_regulator_set_voltage_time = external dso_local constant [0 x i8], align 1
@__kstrtabns_regulator_set_voltage_time = external dso_local constant [0 x i8], align 1
@__ksymtab_regulator_set_voltage_time = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @regulator_set_voltage_time to i32), ptr @__kstrtab_regulator_set_voltage_time, ptr @__kstrtabns_regulator_set_voltage_time }, section "___ksymtab_gpl+regulator_set_voltage_time", align 4
@__kstrtab_regulator_set_voltage_time_sel = external dso_local constant [0 x i8], align 1
@__kstrtabns_regulator_set_voltage_time_sel = external dso_local constant [0 x i8], align 1
@__ksymtab_regulator_set_voltage_time_sel = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @regulator_set_voltage_time_sel to i32), ptr @__kstrtab_regulator_set_voltage_time_sel, ptr @__kstrtabns_regulator_set_voltage_time_sel }, section "___ksymtab_gpl+regulator_set_voltage_time_sel", align 4
@__kstrtab_regulator_sync_voltage = external dso_local constant [0 x i8], align 1
@__kstrtabns_regulator_sync_voltage = external dso_local constant [0 x i8], align 1
@__ksymtab_regulator_sync_voltage = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @regulator_sync_voltage to i32), ptr @__kstrtab_regulator_sync_voltage, ptr @__kstrtabns_regulator_sync_voltage }, section "___ksymtab_gpl+regulator_sync_voltage", align 4
@.str.13 = private unnamed_addr constant [41 x i8] c"\013%s: bypassed regulator has no supply!\0A\00", align 1
@__kstrtab_regulator_get_voltage_rdev = external dso_local constant [0 x i8], align 1
@__kstrtabns_regulator_get_voltage_rdev = external dso_local constant [0 x i8], align 1
@__ksymtab_regulator_get_voltage_rdev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @regulator_get_voltage_rdev to i32), ptr @__kstrtab_regulator_get_voltage_rdev, ptr @__kstrtabns_regulator_get_voltage_rdev }, section "___ksymtab_gpl+regulator_get_voltage_rdev", align 4
@__kstrtab_regulator_get_voltage = external dso_local constant [0 x i8], align 1
@__kstrtabns_regulator_get_voltage = external dso_local constant [0 x i8], align 1
@__ksymtab_regulator_get_voltage = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @regulator_get_voltage to i32), ptr @__kstrtab_regulator_get_voltage, ptr @__kstrtabns_regulator_get_voltage }, section "___ksymtab_gpl+regulator_get_voltage", align 4
@__kstrtab_regulator_set_current_limit = external dso_local constant [0 x i8], align 1
@__kstrtabns_regulator_set_current_limit = external dso_local constant [0 x i8], align 1
@__ksymtab_regulator_set_current_limit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @regulator_set_current_limit to i32), ptr @__kstrtab_regulator_set_current_limit, ptr @__kstrtabns_regulator_set_current_limit }, section "___ksymtab_gpl+regulator_set_current_limit", align 4
@__kstrtab_regulator_get_current_limit = external dso_local constant [0 x i8], align 1
@__kstrtabns_regulator_get_current_limit = external dso_local constant [0 x i8], align 1
@__ksymtab_regulator_get_current_limit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @regulator_get_current_limit to i32), ptr @__kstrtab_regulator_get_current_limit, ptr @__kstrtabns_regulator_get_current_limit }, section "___ksymtab_gpl+regulator_get_current_limit", align 4
@__kstrtab_regulator_set_mode = external dso_local constant [0 x i8], align 1
@__kstrtabns_regulator_set_mode = external dso_local constant [0 x i8], align 1
@__ksymtab_regulator_set_mode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @regulator_set_mode to i32), ptr @__kstrtab_regulator_set_mode, ptr @__kstrtabns_regulator_set_mode }, section "___ksymtab_gpl+regulator_set_mode", align 4
@__kstrtab_regulator_get_mode = external dso_local constant [0 x i8], align 1
@__kstrtabns_regulator_get_mode = external dso_local constant [0 x i8], align 1
@__ksymtab_regulator_get_mode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @regulator_get_mode to i32), ptr @__kstrtab_regulator_get_mode, ptr @__kstrtabns_regulator_get_mode }, section "___ksymtab_gpl+regulator_get_mode", align 4
@__kstrtab_regulator_get_error_flags = external dso_local constant [0 x i8], align 1
@__kstrtabns_regulator_get_error_flags = external dso_local constant [0 x i8], align 1
@__ksymtab_regulator_get_error_flags = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @regulator_get_error_flags to i32), ptr @__kstrtab_regulator_get_error_flags, ptr @__kstrtabns_regulator_get_error_flags }, section "___ksymtab_gpl+regulator_get_error_flags", align 4
@__kstrtab_regulator_set_load = external dso_local constant [0 x i8], align 1
@__kstrtabns_regulator_set_load = external dso_local constant [0 x i8], align 1
@__ksymtab_regulator_set_load = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @regulator_set_load to i32), ptr @__kstrtab_regulator_set_load, ptr @__kstrtabns_regulator_set_load }, section "___ksymtab_gpl+regulator_set_load", align 4
@__kstrtab_regulator_allow_bypass = external dso_local constant [0 x i8], align 1
@__kstrtabns_regulator_allow_bypass = external dso_local constant [0 x i8], align 1
@__ksymtab_regulator_allow_bypass = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @regulator_allow_bypass to i32), ptr @__kstrtab_regulator_allow_bypass, ptr @__kstrtabns_regulator_allow_bypass }, section "___ksymtab_gpl+regulator_allow_bypass", align 4
@__kstrtab_regulator_register_notifier = external dso_local constant [0 x i8], align 1
@__kstrtabns_regulator_register_notifier = external dso_local constant [0 x i8], align 1
@__ksymtab_regulator_register_notifier = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @regulator_register_notifier to i32), ptr @__kstrtab_regulator_register_notifier, ptr @__kstrtabns_regulator_register_notifier }, section "___ksymtab_gpl+regulator_register_notifier", align 4
@__kstrtab_regulator_unregister_notifier = external dso_local constant [0 x i8], align 1
@__kstrtabns_regulator_unregister_notifier = external dso_local constant [0 x i8], align 1
@__ksymtab_regulator_unregister_notifier = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @regulator_unregister_notifier to i32), ptr @__kstrtab_regulator_unregister_notifier, ptr @__kstrtabns_regulator_unregister_notifier }, section "___ksymtab_gpl+regulator_unregister_notifier", align 4
@.str.14 = private unnamed_addr constant [32 x i8] c"Failed to get supply '%s': %pe\0A\00", align 1
@__kstrtab_regulator_bulk_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_regulator_bulk_get = external dso_local constant [0 x i8], align 1
@__ksymtab_regulator_bulk_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @regulator_bulk_get to i32), ptr @__kstrtab_regulator_bulk_get, ptr @__kstrtabns_regulator_bulk_get }, section "___ksymtab_gpl+regulator_bulk_get", align 4
@.str.15 = private unnamed_addr constant [28 x i8] c"\013Failed to enable %s: %pe\0A\00", align 1
@__kstrtab_regulator_bulk_enable = external dso_local constant [0 x i8], align 1
@__kstrtabns_regulator_bulk_enable = external dso_local constant [0 x i8], align 1
@__ksymtab_regulator_bulk_enable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @regulator_bulk_enable to i32), ptr @__kstrtab_regulator_bulk_enable, ptr @__kstrtabns_regulator_bulk_enable }, section "___ksymtab_gpl+regulator_bulk_enable", align 4
@.str.16 = private unnamed_addr constant [29 x i8] c"\013Failed to disable %s: %pe\0A\00", align 1
@.str.17 = private unnamed_addr constant [31 x i8] c"\013Failed to re-enable %s: %pe\0A\00", align 1
@__kstrtab_regulator_bulk_disable = external dso_local constant [0 x i8], align 1
@__kstrtabns_regulator_bulk_disable = external dso_local constant [0 x i8], align 1
@__ksymtab_regulator_bulk_disable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @regulator_bulk_disable to i32), ptr @__kstrtab_regulator_bulk_disable, ptr @__kstrtabns_regulator_bulk_disable }, section "___ksymtab_gpl+regulator_bulk_disable", align 4
@__kstrtab_regulator_bulk_force_disable = external dso_local constant [0 x i8], align 1
@__kstrtabns_regulator_bulk_force_disable = external dso_local constant [0 x i8], align 1
@__ksymtab_regulator_bulk_force_disable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @regulator_bulk_force_disable to i32), ptr @__kstrtab_regulator_bulk_force_disable, ptr @__kstrtabns_regulator_bulk_force_disable }, section "___ksymtab_gpl+regulator_bulk_force_disable", align 4
@__kstrtab_regulator_bulk_free = external dso_local constant [0 x i8], align 1
@__kstrtabns_regulator_bulk_free = external dso_local constant [0 x i8], align 1
@__ksymtab_regulator_bulk_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @regulator_bulk_free to i32), ptr @__kstrtab_regulator_bulk_free, ptr @__kstrtabns_regulator_bulk_free }, section "___ksymtab_gpl+regulator_bulk_free", align 4
@__kstrtab_regulator_notifier_call_chain = external dso_local constant [0 x i8], align 1
@__kstrtabns_regulator_notifier_call_chain = external dso_local constant [0 x i8], align 1
@__ksymtab_regulator_notifier_call_chain = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @regulator_notifier_call_chain to i32), ptr @__kstrtab_regulator_notifier_call_chain, ptr @__kstrtabns_regulator_notifier_call_chain }, section "___ksymtab_gpl+regulator_notifier_call_chain", align 4
@__kstrtab_regulator_mode_to_status = external dso_local constant [0 x i8], align 1
@__kstrtabns_regulator_mode_to_status = external dso_local constant [0 x i8], align 1
@__ksymtab_regulator_mode_to_status = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @regulator_mode_to_status to i32), ptr @__kstrtab_regulator_mode_to_status, ptr @__kstrtabns_regulator_mode_to_status }, section "___ksymtab_gpl+regulator_mode_to_status", align 4
@regulator_coupler_list = internal global %struct.list_head { ptr @regulator_coupler_list, ptr @regulator_coupler_list }, align 4
@regulator_register.regulator_no = internal global %struct.atomic_t { i32 -1 }, align 4
@.str.18 = private unnamed_addr constant [25 x i8] c"drivers/regulator/core.c\00", align 1
@regulator_ww_class = internal global %struct.ww_class { %struct.atomic_t zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, ptr @.str.67, ptr @.str.68, i32 0 }, align 4
@regulator_register.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.19 = private unnamed_addr constant [26 x i8] c"&(&rdev->notifier)->rwsem\00", align 1
@.str.20 = private unnamed_addr constant [42 x i8] c"\013%s: Failed to request enable GPIO: %pe\0A\00", align 1
@regulator_class = dso_local global %struct.class { ptr @.str.23, ptr null, ptr null, ptr @regulator_dev_groups, ptr null, ptr null, ptr null, ptr null, ptr @regulator_dev_release, ptr null, ptr null, ptr null, ptr null, ptr @regulator_pm_ops, ptr null }, align 4
@.str.21 = private unnamed_addr constant [14 x i8] c"regulator.%lu\00", align 1
@.str.22 = private unnamed_addr constant [25 x i8] c"Failed to set supply %s\0A\00", align 1
@__kstrtab_regulator_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_regulator_register = external dso_local constant [0 x i8], align 1
@__ksymtab_regulator_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @regulator_register to i32), ptr @__kstrtab_regulator_register, ptr @__kstrtabns_regulator_register }, section "___ksymtab_gpl+regulator_register", align 4
@__kstrtab_regulator_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_regulator_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_regulator_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @regulator_unregister to i32), ptr @__kstrtab_regulator_unregister, ptr @__kstrtabns_regulator_unregister }, section "___ksymtab_gpl+regulator_unregister", align 4
@.str.23 = private constant [10 x i8] c"regulator\00", align 1
@regulator_dev_groups = internal global [2 x ptr] [ptr @regulator_dev_group, ptr null], align 4
@regulator_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @regulator_suspend, ptr @regulator_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@has_full_constraints = internal unnamed_addr global i1 false, align 1
@__kstrtab_regulator_has_full_constraints = external dso_local constant [0 x i8], align 1
@__kstrtabns_regulator_has_full_constraints = external dso_local constant [0 x i8], align 1
@__ksymtab_regulator_has_full_constraints = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @regulator_has_full_constraints to i32), ptr @__kstrtab_regulator_has_full_constraints, ptr @__kstrtabns_regulator_has_full_constraints }, section "___ksymtab_gpl+regulator_has_full_constraints", align 4
@__kstrtab_rdev_get_drvdata = external dso_local constant [0 x i8], align 1
@__kstrtabns_rdev_get_drvdata = external dso_local constant [0 x i8], align 1
@__ksymtab_rdev_get_drvdata = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rdev_get_drvdata to i32), ptr @__kstrtab_rdev_get_drvdata, ptr @__kstrtabns_rdev_get_drvdata }, section "___ksymtab_gpl+rdev_get_drvdata", align 4
@__kstrtab_regulator_get_drvdata = external dso_local constant [0 x i8], align 1
@__kstrtabns_regulator_get_drvdata = external dso_local constant [0 x i8], align 1
@__ksymtab_regulator_get_drvdata = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @regulator_get_drvdata to i32), ptr @__kstrtab_regulator_get_drvdata, ptr @__kstrtabns_regulator_get_drvdata }, section "___ksymtab_gpl+regulator_get_drvdata", align 4
@__kstrtab_regulator_set_drvdata = external dso_local constant [0 x i8], align 1
@__kstrtabns_regulator_set_drvdata = external dso_local constant [0 x i8], align 1
@__ksymtab_regulator_set_drvdata = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @regulator_set_drvdata to i32), ptr @__kstrtab_regulator_set_drvdata, ptr @__kstrtabns_regulator_set_drvdata }, section "___ksymtab_gpl+regulator_set_drvdata", align 4
@__kstrtab_rdev_get_id = external dso_local constant [0 x i8], align 1
@__kstrtabns_rdev_get_id = external dso_local constant [0 x i8], align 1
@__ksymtab_rdev_get_id = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rdev_get_id to i32), ptr @__kstrtab_rdev_get_id, ptr @__kstrtabns_rdev_get_id }, section "___ksymtab_gpl+rdev_get_id", align 4
@__kstrtab_rdev_get_dev = external dso_local constant [0 x i8], align 1
@__kstrtabns_rdev_get_dev = external dso_local constant [0 x i8], align 1
@__ksymtab_rdev_get_dev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rdev_get_dev to i32), ptr @__kstrtab_rdev_get_dev, ptr @__kstrtabns_rdev_get_dev }, section "___ksymtab_gpl+rdev_get_dev", align 4
@__kstrtab_rdev_get_regmap = external dso_local constant [0 x i8], align 1
@__kstrtabns_rdev_get_regmap = external dso_local constant [0 x i8], align 1
@__ksymtab_rdev_get_regmap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rdev_get_regmap to i32), ptr @__kstrtab_rdev_get_regmap, ptr @__kstrtabns_rdev_get_regmap }, section "___ksymtab_gpl+rdev_get_regmap", align 4
@__kstrtab_regulator_get_init_drvdata = external dso_local constant [0 x i8], align 1
@__kstrtabns_regulator_get_init_drvdata = external dso_local constant [0 x i8], align 1
@__ksymtab_regulator_get_init_drvdata = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @regulator_get_init_drvdata to i32), ptr @__kstrtab_regulator_get_init_drvdata, ptr @__kstrtabns_regulator_get_init_drvdata }, section "___ksymtab_gpl+regulator_get_init_drvdata", align 4
@__initcall__kmod_core__327_6012_regulator_init1 = internal global ptr @regulator_init, section ".initcall1.init", align 4
@__initcall__kmod_core__328_6109_regulator_init_complete7s = internal global ptr @regulator_init_complete, section ".initcall7s.init", align 4
@.str.24 = private unnamed_addr constant [7 x i8] c"(null)\00", align 1
@.str.25 = private unnamed_addr constant [18 x i8] c"__data_loc char[]\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"name=%s\0A\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c"min\00", align 1
@.str.30 = private unnamed_addr constant [4 x i8] c"max\00", align 1
@.str.31 = private unnamed_addr constant [17 x i8] c"name=%s (%d-%d)\0A\00", align 1
@.str.32 = private unnamed_addr constant [13 x i8] c"unsigned int\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"val\00", align 1
@.str.34 = private unnamed_addr constant [17 x i8] c"name=%s, val=%u\0A\00", align 1
@.str.35 = private unnamed_addr constant [22 x i8] c"\013%s: no constraints\0A\00", align 1
@regulator_map_list = internal global %struct.list_head { ptr @regulator_map_list, ptr @regulator_map_list }, align 4
@.str.36 = private unnamed_addr constant [10 x i8] c"%s-supply\00", align 1
@of_root = external dso_local local_unnamed_addr global ptr, align 4
@.str.37 = private unnamed_addr constant [36 x i8] c"Failed to resolve %s-supply for %s\0A\00", align 1
@.str.38 = private unnamed_addr constant [39 x i8] c"Supply for %s (%s) resolved to itself\0A\00", align 1
@.str.39 = private unnamed_addr constant [7 x i8] c"SUPPLY\00", align 1
@.str.40 = private unnamed_addr constant [6 x i8] c"%s-%s\00", align 1
@.str.41 = private unnamed_addr constant [8 x i8] c"uA_load\00", align 1
@.str.42 = private unnamed_addr constant [7 x i8] c"min_uV\00", align 1
@.str.43 = private unnamed_addr constant [7 x i8] c"max_uV\00", align 1
@.str.44 = private unnamed_addr constant [17 x i8] c"constraint_flags\00", align 1
@constraint_flags_fops = internal constant %struct.file_operations { ptr null, ptr @default_llseek, ptr @constraint_flags_read_file, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.45 = private unnamed_addr constant [114 x i8] c"always_on: %u\0Aboot_on: %u\0Aapply_uV: %u\0Aramp_disable: %u\0Asoft_start: %u\0Apull_down: %u\0Aover_current_protection: %u\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@regulator_lock_recursive.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@regulator_nesting_mutex = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @regulator_nesting_mutex, i64 12), ptr getelementptr (i8, ptr @regulator_nesting_mutex, i64 12) } }, align 4
@.str.46 = private unnamed_addr constant [32 x i8] c"\013%s: is_enabled() failed: %pe\0A\00", align 1
@.str.47 = private unnamed_addr constant [33 x i8] c"\014%s: enable_time() failed: %pe\0A\00", align 1
@.str.48 = private unnamed_addr constant [31 x i8] c"\013%s: Enabled check timed out\0A\00", align 1
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.50 = private unnamed_addr constant [37 x i8] c"\016%s: get_status returned error: %d\0A\00", align 1
@.str.51 = private unnamed_addr constant [43 x i8] c"\013%s: Underflow of regulator enable count\0A\00", align 1
@.str.52 = private unnamed_addr constant [28 x i8] c"unbalanced disables for %s\0A\00", align 1
@.str.53 = private unnamed_addr constant [30 x i8] c"\013%s: failed to disable: %pe\0A\00", align 1
@.str.54 = private unnamed_addr constant [36 x i8] c"\013%s: failed to force disable: %pe\0A\00", align 1
@.str.55 = private unnamed_addr constant [34 x i8] c"\013%s: failed to set load %d: %pe\0A\00", align 1
@.str.56 = private unnamed_addr constant [36 x i8] c"\013%s: invalid output voltage found\0A\00", align 1
@.str.57 = private unnamed_addr constant [35 x i8] c"\013%s: invalid input voltage found\0A\00", align 1
@.str.58 = private unnamed_addr constant [59 x i8] c"\013%s: failed to get optimum mode @ %d uA %d -> %d uV: %pe\0A\00", align 1
@.str.59 = private unnamed_addr constant [42 x i8] c"\013%s: failed to set optimum mode %x: %pe\0A\00", align 1
@regulator_unlock.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.60 = private unnamed_addr constant [32 x i8] c"\014%s: failed to get delay: %pe\0A\00", align 1
@.str.61 = private unnamed_addr constant [45 x i8] c"\013%s: Not all coupled regulators registered\0A\00", align 1
@.str.62 = private unnamed_addr constant [45 x i8] c"\013%s: The suspend voltage can't be changed!\0A\00", align 1
@.str.63 = private unnamed_addr constant [37 x i8] c"\013%s: current operation not allowed\0A\00", align 1
@.str.64 = private unnamed_addr constant [44 x i8] c"\013%s: unsupportable current range: %d-%duA\0A\00", align 1
@.str.65 = private unnamed_addr constant [33 x i8] c"\013%s: invalid mode %x specified\0A\00", align 1
@.str.66 = private unnamed_addr constant [34 x i8] c"\013%s: mode operation not allowed\0A\00", align 1
@.str.67 = private unnamed_addr constant [27 x i8] c"regulator_ww_class_acquire\00", align 1
@.str.68 = private unnamed_addr constant [25 x i8] c"regulator_ww_class_mutex\00", align 1
@.str.69 = private unnamed_addr constant [36 x i8] c"\013%s: Deferred disable failed: %pe\0A\00", align 1
@regulator_ena_gpio_list = internal global %struct.list_head { ptr @regulator_ena_gpio_list, ptr @regulator_ena_gpio_list }, align 4
@.str.70 = private unnamed_addr constant [38 x i8] c"\013%s: failed to set input limit: %pe\0A\00", align 1
@.str.71 = private unnamed_addr constant [40 x i8] c"\013%s: failed to set suspend state: %pe\0A\00", align 1
@.str.72 = private unnamed_addr constant [29 x i8] c"\013%s: no set_mode operation\0A\00", align 1
@.str.73 = private unnamed_addr constant [39 x i8] c"\013%s: failed to set initial mode: %pe\0A\00", align 1
@.str.74 = private unnamed_addr constant [37 x i8] c"\013%s: failed to set ramp_delay: %pe\0A\00", align 1
@.str.75 = private unnamed_addr constant [36 x i8] c"\013%s: failed to set pull down: %pe\0A\00", align 1
@.str.76 = private unnamed_addr constant [37 x i8] c"\013%s: failed to set soft start: %pe\0A\00", align 1
@.str.77 = private unnamed_addr constant [50 x i8] c"\013%s: failed to set over current protection: %pe\0A\00", align 1
@.str.78 = private unnamed_addr constant [46 x i8] c"\013%s: failed to set over current limits: %pe\0A\00", align 1
@.str.79 = private unnamed_addr constant [57 x i8] c"\014%s: IC does not support requested over-current limits\0A\00", align 1
@.str.80 = private unnamed_addr constant [45 x i8] c"\013%s: failed to set over voltage limits %pe\0A\00", align 1
@.str.81 = private unnamed_addr constant [57 x i8] c"\014%s: IC does not support requested over voltage limits\0A\00", align 1
@.str.82 = private unnamed_addr constant [46 x i8] c"\013%s: failed to set under voltage limits %pe\0A\00", align 1
@.str.83 = private unnamed_addr constant [58 x i8] c"\014%s: IC does not support requested under voltage limits\0A\00", align 1
@.str.84 = private unnamed_addr constant [44 x i8] c"\013%s: failed to set temperature limits %pe\0A\00", align 1
@.str.85 = private unnamed_addr constant [56 x i8] c"\014%s: IC does not support requested temperature limits\0A\00", align 1
@.str.86 = private unnamed_addr constant [43 x i8] c"\013%s: failed to set active discharge: %pe\0A\00", align 1
@.str.87 = private unnamed_addr constant [29 x i8] c"\013%s: failed to enable: %pe\0A\00", align 1
@.str.88 = private unnamed_addr constant [23 x i8] c"\016%s: Setting %d-%duV\0A\00", align 1
@.str.89 = private unnamed_addr constant [46 x i8] c"\013%s: failed to get the current voltage: %pe\0A\00", align 1
@.str.90 = private unnamed_addr constant [34 x i8] c"\016%s: Bringing %duV into %d-%duV\0A\00", align 1
@.str.91 = private unnamed_addr constant [47 x i8] c"\013%s: failed to apply %d-%duV constraint: %pe\0A\00", align 1
@.str.92 = private unnamed_addr constant [35 x i8] c"\013%s: invalid voltage constraints\0A\00", align 1
@.str.93 = private unnamed_addr constant [49 x i8] c"\013%s: unsupportable voltage constraints %u-%uuV\0A\00", align 1
@.str.94 = private unnamed_addr constant [35 x i8] c"\013%s: Invalid current constraints\0A\00", align 1
@.str.95 = private unnamed_addr constant [50 x i8] c"\014%s: Operation of current configuration missing\0A\00", align 1
@.str.96 = private unnamed_addr constant [44 x i8] c"\013%s: Failed to set current constraint, %d\0A\00", align 1
@.str.97 = private unnamed_addr constant [24 x i8] c"\014%s: No configuration\0A\00", align 1
@.str.98 = private unnamed_addr constant [38 x i8] c"\013%s: failed to enabled/disable: %pe\0A\00", align 1
@.str.99 = private unnamed_addr constant [34 x i8] c"\013%s: failed to set voltage: %pe\0A\00", align 1
@.str.100 = private unnamed_addr constant [31 x i8] c"\013%s: failed to set mode: %pe\0A\00", align 1
@.str.101 = private unnamed_addr constant [53 x i8] c"\014%s: Voltage range but no REGULATOR_CHANGE_VOLTAGE\0A\00", align 1
@.str.102 = private unnamed_addr constant [34 x i8] c"\013%s: failed to get coupler: %pe\0A\00", align 1
@.str.103 = private unnamed_addr constant [73 x i8] c"\013%s: Voltage balancing for multiple regulator couples is unimplemented\0A\00", align 1
@debugfs_root = internal unnamed_addr global ptr null, align 4
@.str.104 = private unnamed_addr constant [42 x i8] c"\014%s: Failed to create debugfs directory\0A\00", align 1
@.str.105 = private unnamed_addr constant [10 x i8] c"use_count\00", align 1
@.str.106 = private unnamed_addr constant [11 x i8] c"open_count\00", align 1
@.str.107 = private unnamed_addr constant [13 x i8] c"bypass_count\00", align 1
@.str.108 = private unnamed_addr constant [32 x i8] c"\013%s: coupler mismatch with %s\0A\00", align 1
@.str.109 = private unnamed_addr constant [42 x i8] c"\013%s: failed to detach from coupler: %pe\0A\00", align 1
@regulator_dev_group = internal constant %struct.attribute_group { ptr null, ptr @regulator_attr_is_visible, ptr null, ptr @regulator_dev_attrs, ptr null }, align 4
@regulator_dev_attrs = internal global [24 x ptr] [ptr @dev_attr_name, ptr @dev_attr_num_users, ptr @dev_attr_type, ptr @dev_attr_microvolts, ptr @dev_attr_microamps, ptr @dev_attr_opmode, ptr @dev_attr_state, ptr @dev_attr_status, ptr @dev_attr_bypass, ptr @dev_attr_requested_microamps, ptr @dev_attr_min_microvolts, ptr @dev_attr_max_microvolts, ptr @dev_attr_min_microamps, ptr @dev_attr_max_microamps, ptr @dev_attr_suspend_standby_state, ptr @dev_attr_suspend_mem_state, ptr @dev_attr_suspend_disk_state, ptr @dev_attr_suspend_standby_microvolts, ptr @dev_attr_suspend_mem_microvolts, ptr @dev_attr_suspend_disk_microvolts, ptr @dev_attr_suspend_standby_mode, ptr @dev_attr_suspend_mem_mode, ptr @dev_attr_suspend_disk_mode, ptr null], align 4
@dev_attr_name = internal global %struct.device_attribute { %struct.attribute { ptr @.str.26, i16 292 }, ptr @name_show, ptr null }, align 4
@dev_attr_num_users = internal global %struct.device_attribute { %struct.attribute { ptr @.str.111, i16 292 }, ptr @num_users_show, ptr null }, align 4
@dev_attr_type = internal global %struct.device_attribute { %struct.attribute { ptr @.str.113, i16 292 }, ptr @type_show, ptr null }, align 4
@dev_attr_microvolts = internal global %struct.device_attribute { %struct.attribute { ptr @.str.117, i16 292 }, ptr @microvolts_show, ptr null }, align 4
@dev_attr_microamps = internal global %struct.device_attribute { %struct.attribute { ptr @.str.118, i16 292 }, ptr @microamps_show, ptr null }, align 4
@dev_attr_opmode = internal global %struct.device_attribute { %struct.attribute { ptr @.str.119, i16 292 }, ptr @opmode_show, ptr null }, align 4
@dev_attr_state = internal global %struct.device_attribute { %struct.attribute { ptr @.str.125, i16 292 }, ptr @state_show, ptr null }, align 4
@dev_attr_status = internal global %struct.device_attribute { %struct.attribute { ptr @.str.128, i16 292 }, ptr @status_show, ptr null }, align 4
@dev_attr_bypass = internal global %struct.device_attribute { %struct.attribute { ptr @.str.132, i16 292 }, ptr @bypass_show, ptr null }, align 4
@dev_attr_min_microvolts = internal global %struct.device_attribute { %struct.attribute { ptr @.str.136, i16 292 }, ptr @min_microvolts_show, ptr null }, align 4
@dev_attr_max_microvolts = internal global %struct.device_attribute { %struct.attribute { ptr @.str.138, i16 292 }, ptr @max_microvolts_show, ptr null }, align 4
@dev_attr_min_microamps = internal global %struct.device_attribute { %struct.attribute { ptr @.str.139, i16 292 }, ptr @min_microamps_show, ptr null }, align 4
@dev_attr_max_microamps = internal global %struct.device_attribute { %struct.attribute { ptr @.str.140, i16 292 }, ptr @max_microamps_show, ptr null }, align 4
@dev_attr_suspend_standby_state = internal global %struct.device_attribute { %struct.attribute { ptr @.str.141, i16 292 }, ptr @suspend_standby_state_show, ptr null }, align 4
@dev_attr_suspend_mem_state = internal global %struct.device_attribute { %struct.attribute { ptr @.str.142, i16 292 }, ptr @suspend_mem_state_show, ptr null }, align 4
@dev_attr_suspend_disk_state = internal global %struct.device_attribute { %struct.attribute { ptr @.str.143, i16 292 }, ptr @suspend_disk_state_show, ptr null }, align 4
@dev_attr_suspend_standby_microvolts = internal global %struct.device_attribute { %struct.attribute { ptr @.str.144, i16 292 }, ptr @suspend_standby_microvolts_show, ptr null }, align 4
@dev_attr_suspend_mem_microvolts = internal global %struct.device_attribute { %struct.attribute { ptr @.str.145, i16 292 }, ptr @suspend_mem_microvolts_show, ptr null }, align 4
@dev_attr_suspend_disk_microvolts = internal global %struct.device_attribute { %struct.attribute { ptr @.str.146, i16 292 }, ptr @suspend_disk_microvolts_show, ptr null }, align 4
@dev_attr_suspend_standby_mode = internal global %struct.device_attribute { %struct.attribute { ptr @.str.147, i16 292 }, ptr @suspend_standby_mode_show, ptr null }, align 4
@dev_attr_suspend_mem_mode = internal global %struct.device_attribute { %struct.attribute { ptr @.str.148, i16 292 }, ptr @suspend_mem_mode_show, ptr null }, align 4
@dev_attr_suspend_disk_mode = internal global %struct.device_attribute { %struct.attribute { ptr @.str.149, i16 292 }, ptr @suspend_disk_mode_show, ptr null }, align 4
@.str.110 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.111 = private unnamed_addr constant [10 x i8] c"num_users\00", align 1
@.str.112 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.113 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.114 = private unnamed_addr constant [9 x i8] c"voltage\0A\00", align 1
@.str.115 = private unnamed_addr constant [9 x i8] c"current\0A\00", align 1
@.str.116 = private unnamed_addr constant [9 x i8] c"unknown\0A\00", align 1
@.str.117 = private unnamed_addr constant [11 x i8] c"microvolts\00", align 1
@.str.118 = private unnamed_addr constant [10 x i8] c"microamps\00", align 1
@.str.119 = private unnamed_addr constant [7 x i8] c"opmode\00", align 1
@.str.120 = private unnamed_addr constant [5 x i8] c"fast\00", align 1
@.str.121 = private unnamed_addr constant [7 x i8] c"normal\00", align 1
@.str.122 = private unnamed_addr constant [5 x i8] c"idle\00", align 1
@.str.123 = private unnamed_addr constant [8 x i8] c"standby\00", align 1
@.str.124 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.125 = private unnamed_addr constant [6 x i8] c"state\00", align 1
@.str.126 = private unnamed_addr constant [9 x i8] c"enabled\0A\00", align 1
@.str.127 = private unnamed_addr constant [10 x i8] c"disabled\0A\00", align 1
@.str.128 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str.129 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.130 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.131 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.132 = private unnamed_addr constant [7 x i8] c"bypass\00", align 1
@.str.133 = private unnamed_addr constant [10 x i8] c"undefined\00", align 1
@.str.134 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@.str.135 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@.str.136 = private unnamed_addr constant [15 x i8] c"min_microvolts\00", align 1
@.str.137 = private unnamed_addr constant [24 x i8] c"constraint not defined\0A\00", align 1
@.str.138 = private unnamed_addr constant [15 x i8] c"max_microvolts\00", align 1
@.str.139 = private unnamed_addr constant [14 x i8] c"min_microamps\00", align 1
@.str.140 = private unnamed_addr constant [14 x i8] c"max_microamps\00", align 1
@.str.141 = private unnamed_addr constant [22 x i8] c"suspend_standby_state\00", align 1
@.str.142 = private unnamed_addr constant [18 x i8] c"suspend_mem_state\00", align 1
@.str.143 = private unnamed_addr constant [19 x i8] c"suspend_disk_state\00", align 1
@.str.144 = private unnamed_addr constant [27 x i8] c"suspend_standby_microvolts\00", align 1
@.str.145 = private unnamed_addr constant [23 x i8] c"suspend_mem_microvolts\00", align 1
@.str.146 = private unnamed_addr constant [24 x i8] c"suspend_disk_microvolts\00", align 1
@.str.147 = private unnamed_addr constant [21 x i8] c"suspend_standby_mode\00", align 1
@.str.148 = private unnamed_addr constant [17 x i8] c"suspend_mem_mode\00", align 1
@.str.149 = private unnamed_addr constant [18 x i8] c"suspend_disk_mode\00", align 1
@dev_attr_requested_microamps = internal global %struct.device_attribute { %struct.attribute { ptr @.str.150, i16 292 }, ptr @requested_microamps_show, ptr null }, align 4
@.str.150 = private unnamed_addr constant [20 x i8] c"requested_microamps\00", align 1
@pm_suspend_target_state = external dso_local local_unnamed_addr global i32, align 4
@regulator_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.151 = private unnamed_addr constant [49 x i8] c"\014regulator: Failed to create debugfs directory\0A\00", align 1
@.str.152 = private unnamed_addr constant [11 x i8] c"supply_map\00", align 1
@supply_map_fops = internal constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @supply_map_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.153 = private unnamed_addr constant [18 x i8] c"regulator_summary\00", align 1
@regulator_summary_fops = internal constant %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @regulator_summary_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@generic_regulator_coupler = internal global %struct.regulator_coupler { %struct.list_head zeroinitializer, ptr @generic_coupler_attach, ptr null, ptr null }, align 4
@.str.154 = private unnamed_addr constant [13 x i8] c"%s -> %s.%s\0A\00", align 1
@.str.155 = private unnamed_addr constant [89 x i8] c" regulator                      use open bypass  opmode voltage current     min     max\0A\00", align 1
@.str.156 = private unnamed_addr constant [89 x i8] c"---------------------------------------------------------------------------------------\0A\00", align 1
@regulator_summary_lock_one.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.157 = private unnamed_addr constant [25 x i8] c"%*s%-*s %3d %4d %6d %7s \00", align 1
@.str.158 = private unnamed_addr constant [7 x i8] c"%5dmV \00", align 1
@.str.159 = private unnamed_addr constant [7 x i8] c"%5dmA \00", align 1
@.str.160 = private unnamed_addr constant [13 x i8] c"%5dmV %5dmV \00", align 1
@.str.161 = private unnamed_addr constant [13 x i8] c"%5dmA %5dmA \00", align 1
@.str.162 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.163 = private unnamed_addr constant [9 x i8] c"%*s%-*s \00", align 1
@.str.164 = private unnamed_addr constant [11 x i8] c"deviceless\00", align 1
@.str.165 = private unnamed_addr constant [24 x i8] c"%3d %33dmA%c%5dmV %5dmV\00", align 1
@.str.166 = private unnamed_addr constant [62 x i8] c"\013%s: Coupling of a non always-on regulator is unimplemented\0A\00", align 1
@regulator_init_complete_work = internal global %struct.delayed_work { %struct.work_struct { %struct.atomic_t { i32 -32 }, %struct.list_head { ptr getelementptr (i8, ptr @regulator_init_complete_work, i64 4), ptr getelementptr (i8, ptr @regulator_init_complete_work, i64 4) }, ptr @regulator_init_complete_work_function }, %struct.timer_list { %struct.hlist_node { ptr inttoptr (i32 768 to ptr), ptr null }, i32 0, ptr @delayed_work_timer_fn, i32 2097152 }, ptr null, i32 0 }, align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.167 = private unnamed_addr constant [17 x i8] c"\016%s: disabling\0A\00", align 1
@.str.168 = private unnamed_addr constant [29 x i8] c"\013%s: couldn't disable: %pe\0A\00", align 1
@.str.169 = private unnamed_addr constant [42 x i8] c"\014%s: incomplete constraints, leaving on\0A\00", align 1
@llvm.compiler.used = appending global [105 x ptr] [ptr @__event_regulator_bypass_disable, ptr @__event_regulator_bypass_disable_complete, ptr @__event_regulator_bypass_enable, ptr @__event_regulator_bypass_enable_complete, ptr @__event_regulator_disable, ptr @__event_regulator_disable_complete, ptr @__event_regulator_enable, ptr @__event_regulator_enable_complete, ptr @__event_regulator_enable_delay, ptr @__event_regulator_set_voltage, ptr @__event_regulator_set_voltage_complete, ptr @__initcall__kmod_core__327_6012_regulator_init1, ptr @__initcall__kmod_core__328_6109_regulator_init_complete7s, ptr @__ksymtab_rdev_get_dev, ptr @__ksymtab_rdev_get_drvdata, ptr @__ksymtab_rdev_get_id, ptr @__ksymtab_rdev_get_name, ptr @__ksymtab_rdev_get_regmap, ptr @__ksymtab_regulator_allow_bypass, ptr @__ksymtab_regulator_bulk_disable, ptr @__ksymtab_regulator_bulk_enable, ptr @__ksymtab_regulator_bulk_force_disable, ptr @__ksymtab_regulator_bulk_free, ptr @__ksymtab_regulator_bulk_get, ptr @__ksymtab_regulator_bulk_register_supply_alias, ptr @__ksymtab_regulator_bulk_unregister_supply_alias, ptr @__ksymtab_regulator_count_voltages, ptr @__ksymtab_regulator_disable, ptr @__ksymtab_regulator_disable_deferred, ptr @__ksymtab_regulator_enable, ptr @__ksymtab_regulator_force_disable, ptr @__ksymtab_regulator_get, ptr @__ksymtab_regulator_get_current_limit, ptr @__ksymtab_regulator_get_drvdata, ptr @__ksymtab_regulator_get_error_flags, ptr @__ksymtab_regulator_get_exclusive, ptr @__ksymtab_regulator_get_hardware_vsel_register, ptr @__ksymtab_regulator_get_init_drvdata, ptr @__ksymtab_regulator_get_linear_step, ptr @__ksymtab_regulator_get_mode, ptr @__ksymtab_regulator_get_optional, ptr @__ksymtab_regulator_get_voltage, ptr @__ksymtab_regulator_get_voltage_rdev, ptr @__ksymtab_regulator_has_full_constraints, ptr @__ksymtab_regulator_is_enabled, ptr @__ksymtab_regulator_is_supported_voltage, ptr @__ksymtab_regulator_list_hardware_vsel, ptr @__ksymtab_regulator_list_voltage, ptr @__ksymtab_regulator_mode_to_status, ptr @__ksymtab_regulator_notifier_call_chain, ptr @__ksymtab_regulator_put, ptr @__ksymtab_regulator_register, ptr @__ksymtab_regulator_register_notifier, ptr @__ksymtab_regulator_register_supply_alias, ptr @__ksymtab_regulator_set_current_limit, ptr @__ksymtab_regulator_set_drvdata, ptr @__ksymtab_regulator_set_load, ptr @__ksymtab_regulator_set_mode, ptr @__ksymtab_regulator_set_suspend_voltage, ptr @__ksymtab_regulator_set_voltage, ptr @__ksymtab_regulator_set_voltage_rdev, ptr @__ksymtab_regulator_set_voltage_time, ptr @__ksymtab_regulator_set_voltage_time_sel, ptr @__ksymtab_regulator_suspend_disable, ptr @__ksymtab_regulator_suspend_enable, ptr @__ksymtab_regulator_sync_voltage, ptr @__ksymtab_regulator_unregister, ptr @__ksymtab_regulator_unregister_notifier, ptr @__ksymtab_regulator_unregister_supply_alias, ptr @__tracepoint_ptr_regulator_bypass_disable, ptr @__tracepoint_ptr_regulator_bypass_disable_complete, ptr @__tracepoint_ptr_regulator_bypass_enable, ptr @__tracepoint_ptr_regulator_bypass_enable_complete, ptr @__tracepoint_ptr_regulator_disable, ptr @__tracepoint_ptr_regulator_disable_complete, ptr @__tracepoint_ptr_regulator_enable, ptr @__tracepoint_ptr_regulator_enable_complete, ptr @__tracepoint_ptr_regulator_enable_delay, ptr @__tracepoint_ptr_regulator_set_voltage, ptr @__tracepoint_ptr_regulator_set_voltage_complete, ptr @__tracepoint_regulator_bypass_disable, ptr @__tracepoint_regulator_bypass_disable_complete, ptr @__tracepoint_regulator_bypass_enable, ptr @__tracepoint_regulator_bypass_enable_complete, ptr @__tracepoint_regulator_disable, ptr @__tracepoint_regulator_disable_complete, ptr @__tracepoint_regulator_enable, ptr @__tracepoint_regulator_enable_complete, ptr @__tracepoint_regulator_enable_delay, ptr @__tracepoint_regulator_set_voltage, ptr @__tracepoint_regulator_set_voltage_complete, ptr @event_class_regulator_basic, ptr @event_class_regulator_range, ptr @event_class_regulator_value, ptr @event_regulator_bypass_disable, ptr @event_regulator_bypass_disable_complete, ptr @event_regulator_bypass_enable, ptr @event_regulator_bypass_enable_complete, ptr @event_regulator_disable, ptr @event_regulator_disable_complete, ptr @event_regulator_enable, ptr @event_regulator_enable_complete, ptr @event_regulator_enable_delay, ptr @event_regulator_set_voltage, ptr @event_regulator_set_voltage_complete], section "llvm.metadata"
@switch.table.regulator_mode_to_status = private unnamed_addr constant [8 x i32] [i32 3, i32 4, i32 8, i32 5, i32 8, i32 8, i32 8, i32 6], align 4
@switch.table.status_show = private unnamed_addr constant [9 x ptr] [ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.132, ptr @.str.133], align 4
@switch.table.regulator_summary_show_subtree = private unnamed_addr constant [8 x ptr] [ptr @.str.120, ptr @.str.121, ptr @.str.124, ptr @.str.122, ptr @.str.124, ptr @.str.124, ptr @.str.124, ptr @.str.123], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_regulator_enable(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_regulator_enable, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #26
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_regulator_enable_delay(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_regulator_enable_delay, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #26
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_regulator_enable_complete(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_regulator_enable_complete, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #26
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_regulator_disable(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_regulator_disable, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #26
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_regulator_disable_complete(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_regulator_disable_complete, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #26
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_regulator_bypass_enable(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_regulator_bypass_enable, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #26
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_regulator_bypass_enable_complete(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_regulator_bypass_enable_complete, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #26
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_regulator_bypass_disable(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_regulator_bypass_disable, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #26
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_regulator_bypass_disable_complete(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_regulator_bypass_disable_complete, i32 0, i32 7), align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %10, %5 ], [ %3, %2 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tracepoint_func, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %7(ptr noundef %9, ptr noundef %1) #26
  %10 = getelementptr %struct.tracepoint_func, ptr %6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_regulator_set_voltage(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_regulator_set_voltage, i32 0, i32 7), align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %12, %7 ], [ %5, %4 ]
  %9 = load volatile ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tracepoint_func, ptr %8, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void %9(ptr noundef %11, ptr noundef %1, i32 noundef %2, i32 noundef %3) #26
  %12 = getelementptr %struct.tracepoint_func, ptr %8, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %7

15:                                               ; preds = %7, %4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__traceiter_regulator_set_voltage_complete(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_regulator_set_voltage_complete, i32 0, i32 7), align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %11, %6 ], [ %4, %3 ]
  %8 = load volatile ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.tracepoint_func, ptr %7, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void %8(ptr noundef %10, ptr noundef %1, i32 noundef %2) #26
  %11 = getelementptr %struct.tracepoint_func, ptr %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6

14:                                               ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_regulator_basic(ptr noundef %0, ptr noundef readonly %1) #0 {
  %3 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #26
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %3, i8 0, i32 24, i1 false), !annotation !9
  %4 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 704
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %13, label %8, !prof !10

8:                                                ; preds = %2
  %9 = and i32 %5, 256
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %13, !prof !11

11:                                               ; preds = %8
  %12 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #26
  br i1 %12, label %26, label %13

13:                                               ; preds = %11, %8, %2
  %14 = icmp eq ptr %1, null
  %15 = select i1 %14, ptr @.str.24, ptr %1
  %16 = tail call i32 @strlen(ptr noundef %15) #26
  %17 = add i32 %16, 13
  %18 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %3, ptr noundef %0, i32 noundef %17) #26
  %19 = icmp eq ptr %18, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %13
  %21 = shl i32 %16, 16
  %22 = add i32 %21, 65548
  %23 = getelementptr inbounds %struct.trace_event_raw_regulator_basic, ptr %18, i32 0, i32 1
  store i32 %22, ptr %23, align 4
  %24 = getelementptr i8, ptr %18, i32 12
  %25 = call ptr @strcpy(ptr noundef %24, ptr noundef %15)
  call void @trace_event_buffer_commit(ptr noundef nonnull %3) #26
  br label %26

26:                                               ; preds = %20, %13, %11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #26
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_regulator_basic(ptr noundef %0, ptr noundef readonly %1) #0 {
  %3 = alloca ptr, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #26
  store ptr null, ptr %3, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #26
  store i32 0, ptr %4, align 4, !annotation !9
  %5 = icmp eq ptr %1, null
  %6 = select i1 %5, ptr @.str.24, ptr %1
  %7 = tail call i32 @strlen(ptr noundef %6) #26
  %8 = shl i32 %7, 16
  %9 = add i32 %8, 65548
  %10 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %11 = load ptr, ptr %10, align 4
  %12 = ptrtoint ptr %11 to i32
  %13 = tail call i32 @llvm.read_register.i32(metadata !0) #26
  %14 = inttoptr i32 %13 to ptr
  %15 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %14) #16, !srcloc !12
  %16 = add i32 %15, %12
  %17 = inttoptr i32 %16 to ptr
  %18 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %19 = load volatile ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load volatile ptr, ptr %17, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %46, label %24

24:                                               ; preds = %21, %2
  %25 = add i32 %7, 24
  %26 = and i32 %25, -8
  %27 = add i32 %26, -4
  %28 = call ptr @perf_trace_buf_alloc(i32 noundef %27, ptr noundef nonnull %3, ptr noundef nonnull %4) #26
  %29 = icmp eq ptr %28, null
  br i1 %29, label %46, label %30

30:                                               ; preds = %24
  %31 = load ptr, ptr %3, align 4
  %32 = call ptr @llvm.returnaddress(i32 0) #26
  %33 = ptrtoint ptr %32 to i32
  %34 = getelementptr [18 x i32], ptr %31, i32 0, i32 15
  store i32 %33, ptr %34, align 4
  %35 = call ptr @llvm.frameaddress.p0(i32 0) #26
  %36 = ptrtoint ptr %35 to i32
  %37 = getelementptr [18 x i32], ptr %31, i32 0, i32 11
  store i32 %36, ptr %37, align 4
  %38 = call i32 @llvm.read_register.i32(metadata !0) #26
  %39 = getelementptr [18 x i32], ptr %31, i32 0, i32 13
  store i32 %38, ptr %39, align 4
  %40 = getelementptr [18 x i32], ptr %31, i32 0, i32 16
  store i32 19, ptr %40, align 4
  %41 = getelementptr inbounds %struct.trace_event_raw_regulator_basic, ptr %28, i32 0, i32 1
  store i32 %9, ptr %41, align 4
  %42 = getelementptr i8, ptr %28, i32 12
  %43 = call ptr @strcpy(ptr noundef %42, ptr noundef %6)
  %44 = load i32, ptr %4, align 4
  %45 = load ptr, ptr %3, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %28, i32 noundef %27, i32 noundef %44, ptr noundef %0, i64 noundef 1, ptr noundef %45, ptr noundef %17, ptr noundef null) #26
  br label %46

46:                                               ; preds = %30, %24, %21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #26
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_regulator_range(ptr noundef %0, ptr noundef readonly %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #26
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %5, i8 0, i32 24, i1 false), !annotation !9
  %6 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 704
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %15, label %10, !prof !10

10:                                               ; preds = %4
  %11 = and i32 %7, 256
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15, !prof !11

13:                                               ; preds = %10
  %14 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #26
  br i1 %14, label %30, label %15

15:                                               ; preds = %13, %10, %4
  %16 = icmp eq ptr %1, null
  %17 = select i1 %16, ptr @.str.24, ptr %1
  %18 = tail call i32 @strlen(ptr noundef %17) #26
  %19 = add i32 %18, 21
  %20 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %5, ptr noundef %0, i32 noundef %19) #26
  %21 = icmp eq ptr %20, null
  br i1 %21, label %30, label %22

22:                                               ; preds = %15
  %23 = shl i32 %18, 16
  %24 = add i32 %23, 65556
  %25 = getelementptr inbounds %struct.trace_event_raw_regulator_range, ptr %20, i32 0, i32 1
  store i32 %24, ptr %25, align 4
  %26 = getelementptr i8, ptr %20, i32 20
  %27 = call ptr @strcpy(ptr noundef %26, ptr noundef %17)
  %28 = getelementptr inbounds %struct.trace_event_raw_regulator_range, ptr %20, i32 0, i32 2
  store i32 %2, ptr %28, align 4
  %29 = getelementptr inbounds %struct.trace_event_raw_regulator_range, ptr %20, i32 0, i32 3
  store i32 %3, ptr %29, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %5) #26
  br label %30

30:                                               ; preds = %22, %15, %13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #26
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_regulator_range(ptr noundef %0, ptr noundef readonly %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #26
  store ptr null, ptr %5, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #26
  store i32 0, ptr %6, align 4, !annotation !9
  %7 = icmp eq ptr %1, null
  %8 = select i1 %7, ptr @.str.24, ptr %1
  %9 = tail call i32 @strlen(ptr noundef %8) #26
  %10 = shl i32 %9, 16
  %11 = add i32 %10, 65556
  %12 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %13 = load ptr, ptr %12, align 4
  %14 = ptrtoint ptr %13 to i32
  %15 = tail call i32 @llvm.read_register.i32(metadata !0) #26
  %16 = inttoptr i32 %15 to ptr
  %17 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %16) #16, !srcloc !12
  %18 = add i32 %17, %14
  %19 = inttoptr i32 %18 to ptr
  %20 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %21 = load volatile ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %4
  %24 = load volatile ptr, ptr %19, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %50, label %26

26:                                               ; preds = %23, %4
  %27 = add i32 %9, 32
  %28 = and i32 %27, -8
  %29 = add i32 %28, -4
  %30 = call ptr @perf_trace_buf_alloc(i32 noundef %29, ptr noundef nonnull %5, ptr noundef nonnull %6) #26
  %31 = icmp eq ptr %30, null
  br i1 %31, label %50, label %32

32:                                               ; preds = %26
  %33 = load ptr, ptr %5, align 4
  %34 = call ptr @llvm.returnaddress(i32 0) #26
  %35 = ptrtoint ptr %34 to i32
  %36 = getelementptr [18 x i32], ptr %33, i32 0, i32 15
  store i32 %35, ptr %36, align 4
  %37 = call ptr @llvm.frameaddress.p0(i32 0) #26
  %38 = ptrtoint ptr %37 to i32
  %39 = getelementptr [18 x i32], ptr %33, i32 0, i32 11
  store i32 %38, ptr %39, align 4
  %40 = call i32 @llvm.read_register.i32(metadata !0) #26
  %41 = getelementptr [18 x i32], ptr %33, i32 0, i32 13
  store i32 %40, ptr %41, align 4
  %42 = getelementptr [18 x i32], ptr %33, i32 0, i32 16
  store i32 19, ptr %42, align 4
  %43 = getelementptr inbounds %struct.trace_event_raw_regulator_range, ptr %30, i32 0, i32 1
  store i32 %11, ptr %43, align 4
  %44 = getelementptr i8, ptr %30, i32 20
  %45 = call ptr @strcpy(ptr noundef %44, ptr noundef %8)
  %46 = getelementptr inbounds %struct.trace_event_raw_regulator_range, ptr %30, i32 0, i32 2
  store i32 %2, ptr %46, align 4
  %47 = getelementptr inbounds %struct.trace_event_raw_regulator_range, ptr %30, i32 0, i32 3
  store i32 %3, ptr %47, align 4
  %48 = load i32, ptr %6, align 4
  %49 = load ptr, ptr %5, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %30, i32 noundef %29, i32 noundef %48, ptr noundef %0, i64 noundef 1, ptr noundef %49, ptr noundef %19, ptr noundef null) #26
  br label %50

50:                                               ; preds = %32, %26, %23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #26
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @trace_event_raw_event_regulator_value(ptr noundef %0, ptr noundef readonly %1, i32 noundef %2) #0 {
  %4 = alloca %struct.trace_event_buffer, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #26
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i32 24, i1 false), !annotation !9
  %5 = getelementptr inbounds %struct.trace_event_file, ptr %0, i32 0, i32 7
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 704
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %14, label %9, !prof !10

9:                                                ; preds = %3
  %10 = and i32 %6, 256
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14, !prof !11

12:                                               ; preds = %9
  %13 = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %0) #26
  br i1 %13, label %28, label %14

14:                                               ; preds = %12, %9, %3
  %15 = icmp eq ptr %1, null
  %16 = select i1 %15, ptr @.str.24, ptr %1
  %17 = tail call i32 @strlen(ptr noundef %16) #26
  %18 = add i32 %17, 17
  %19 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %4, ptr noundef %0, i32 noundef %18) #26
  %20 = icmp eq ptr %19, null
  br i1 %20, label %28, label %21

21:                                               ; preds = %14
  %22 = shl i32 %17, 16
  %23 = add i32 %22, 65552
  %24 = getelementptr inbounds %struct.trace_event_raw_regulator_value, ptr %19, i32 0, i32 1
  store i32 %23, ptr %24, align 4
  %25 = getelementptr i8, ptr %19, i32 16
  %26 = call ptr @strcpy(ptr noundef %25, ptr noundef %16)
  %27 = getelementptr inbounds %struct.trace_event_raw_regulator_value, ptr %19, i32 0, i32 2
  store i32 %2, ptr %27, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %4) #26
  br label %28

28:                                               ; preds = %21, %14, %12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #26
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @perf_trace_regulator_value(ptr noundef %0, ptr noundef readonly %1, i32 noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #26
  store ptr null, ptr %4, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #26
  store i32 0, ptr %5, align 4, !annotation !9
  %6 = icmp eq ptr %1, null
  %7 = select i1 %6, ptr @.str.24, ptr %1
  %8 = tail call i32 @strlen(ptr noundef %7) #26
  %9 = shl i32 %8, 16
  %10 = add i32 %9, 65552
  %11 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 10
  %12 = load ptr, ptr %11, align 4
  %13 = ptrtoint ptr %12 to i32
  %14 = tail call i32 @llvm.read_register.i32(metadata !0) #26
  %15 = inttoptr i32 %14 to ptr
  %16 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %15) #16, !srcloc !12
  %17 = add i32 %16, %13
  %18 = inttoptr i32 %17 to ptr
  %19 = getelementptr inbounds %struct.trace_event_call, ptr %0, i32 0, i32 11
  %20 = load volatile ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load volatile ptr, ptr %18, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %48, label %25

25:                                               ; preds = %22, %3
  %26 = add i32 %8, 28
  %27 = and i32 %26, -8
  %28 = add i32 %27, -4
  %29 = call ptr @perf_trace_buf_alloc(i32 noundef %28, ptr noundef nonnull %4, ptr noundef nonnull %5) #26
  %30 = icmp eq ptr %29, null
  br i1 %30, label %48, label %31

31:                                               ; preds = %25
  %32 = load ptr, ptr %4, align 4
  %33 = call ptr @llvm.returnaddress(i32 0) #26
  %34 = ptrtoint ptr %33 to i32
  %35 = getelementptr [18 x i32], ptr %32, i32 0, i32 15
  store i32 %34, ptr %35, align 4
  %36 = call ptr @llvm.frameaddress.p0(i32 0) #26
  %37 = ptrtoint ptr %36 to i32
  %38 = getelementptr [18 x i32], ptr %32, i32 0, i32 11
  store i32 %37, ptr %38, align 4
  %39 = call i32 @llvm.read_register.i32(metadata !0) #26
  %40 = getelementptr [18 x i32], ptr %32, i32 0, i32 13
  store i32 %39, ptr %40, align 4
  %41 = getelementptr [18 x i32], ptr %32, i32 0, i32 16
  store i32 19, ptr %41, align 4
  %42 = getelementptr inbounds %struct.trace_event_raw_regulator_value, ptr %29, i32 0, i32 1
  store i32 %10, ptr %42, align 4
  %43 = getelementptr i8, ptr %29, i32 16
  %44 = call ptr @strcpy(ptr noundef %43, ptr noundef %7)
  %45 = getelementptr inbounds %struct.trace_event_raw_regulator_value, ptr %29, i32 0, i32 2
  store i32 %2, ptr %45, align 4
  %46 = load i32, ptr %5, align 4
  %47 = load ptr, ptr %4, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %29, i32 noundef %28, i32 noundef %46, ptr noundef %0, i64 noundef 1, ptr noundef %47, ptr noundef %18, ptr noundef null) #26
  br label %48

48:                                               ; preds = %31, %25, %22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #26
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local ptr @rdev_get_name(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 14
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %13

8:                                                ; preds = %5, %1
  %9 = load ptr, ptr %0, align 8
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  %12 = select i1 %11, ptr @.str, ptr %10
  br label %13

13:                                               ; preds = %8, %5
  %14 = phi ptr [ %6, %5 ], [ %12, %8 ]
  ret ptr %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @regulator_check_voltage(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  %4 = load i32, ptr %1, align 4
  %5 = load i32, ptr %2, align 4
  %6 = icmp sgt i32 %4, %5
  br i1 %6, label %7, label %8, !prof !11

7:                                                ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/regulator/core.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 423, 0\0A.popsection", ""() #26, !srcloc !13
  unreachable

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 14
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.regulation_constraints, ptr %10, i32 0, i32 11
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %25, label %37

17:                                               ; preds = %8
  %18 = load ptr, ptr %0, align 8
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  %21 = select i1 %20, ptr @.str, ptr %19
  %22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef %21) #27
  %23 = load ptr, ptr %9, align 8
  %24 = icmp eq ptr %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %17, %12
  %26 = phi ptr [ %23, %17 ], [ %10, %12 ]
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %34

29:                                               ; preds = %25, %17
  %30 = load ptr, ptr %0, align 8
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  %33 = select i1 %32, ptr @.str, ptr %31
  br label %34

34:                                               ; preds = %29, %25
  %35 = phi ptr [ %27, %25 ], [ %33, %29 ]
  %36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %35) #27
  br label %71

37:                                               ; preds = %12
  %38 = getelementptr inbounds %struct.regulation_constraints, ptr %10, i32 0, i32 2
  %39 = load i32, ptr %38, align 4
  %40 = icmp sgt i32 %5, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  store i32 %39, ptr %2, align 4
  %42 = load i32, ptr %1, align 4
  %43 = load ptr, ptr %9, align 8
  br label %44

44:                                               ; preds = %41, %37
  %45 = phi i32 [ %39, %41 ], [ %5, %37 ]
  %46 = phi ptr [ %43, %41 ], [ %10, %37 ]
  %47 = phi i32 [ %42, %41 ], [ %4, %37 ]
  %48 = getelementptr inbounds %struct.regulation_constraints, ptr %46, i32 0, i32 1
  %49 = load i32, ptr %48, align 4
  %50 = icmp slt i32 %47, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %44
  store i32 %49, ptr %1, align 4
  %52 = load i32, ptr %2, align 4
  br label %53

53:                                               ; preds = %51, %44
  %54 = phi i32 [ %52, %51 ], [ %45, %44 ]
  %55 = phi i32 [ %49, %51 ], [ %47, %44 ]
  %56 = icmp sgt i32 %55, %54
  br i1 %56, label %57, label %71

57:                                               ; preds = %53
  %58 = load ptr, ptr %9, align 8
  %59 = icmp eq ptr %58, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %57
  %61 = load ptr, ptr %58, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %68

63:                                               ; preds = %60, %57
  %64 = load ptr, ptr %0, align 8
  %65 = load ptr, ptr %64, align 4
  %66 = icmp eq ptr %65, null
  %67 = select i1 %66, ptr @.str, ptr %65
  br label %68

68:                                               ; preds = %63, %60
  %69 = phi ptr [ %61, %60 ], [ %67, %63 ]
  %70 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %69, i32 noundef %55, i32 noundef %54) #27
  br label %71

71:                                               ; preds = %68, %53, %34
  %72 = phi i32 [ -22, %68 ], [ -1, %34 ], [ 0, %53 ]
  ret i32 %72
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @regulator_check_consumers(ptr noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 6
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, %5
  br i1 %7, label %31, label %8

8:                                                ; preds = %28, %4
  %9 = phi ptr [ %29, %28 ], [ %6, %4 ]
  %10 = getelementptr i8, ptr %9, i32 24
  %11 = getelementptr [5 x %struct.regulator_voltage], ptr %10, i32 0, i32 %3
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  %14 = getelementptr inbounds %struct.regulator_voltage, ptr %11, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  %17 = select i1 %13, i1 %16, i1 false
  br i1 %17, label %28, label %18

18:                                               ; preds = %8
  %19 = load i32, ptr %2, align 4
  %20 = icmp sgt i32 %19, %15
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  store i32 %15, ptr %2, align 4
  %22 = load i32, ptr %11, align 4
  br label %23

23:                                               ; preds = %21, %18
  %24 = phi i32 [ %22, %21 ], [ %12, %18 ]
  %25 = load i32, ptr %1, align 4
  %26 = icmp slt i32 %25, %24
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store i32 %24, ptr %1, align 4
  br label %28

28:                                               ; preds = %27, %23, %8
  %29 = load ptr, ptr %9, align 4
  %30 = icmp eq ptr %29, %5
  br i1 %30, label %31, label %8

31:                                               ; preds = %28, %4
  %32 = load i32, ptr %1, align 4
  %33 = load i32, ptr %2, align 4
  %34 = icmp sgt i32 %32, %33
  br i1 %34, label %35, label %50

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 14
  %37 = load ptr, ptr %36, align 8
  %38 = icmp eq ptr %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %35
  %40 = load ptr, ptr %37, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %47

42:                                               ; preds = %39, %35
  %43 = load ptr, ptr %0, align 8
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  %46 = select i1 %45, ptr @.str, ptr %44
  br label %47

47:                                               ; preds = %42, %39
  %48 = phi ptr [ %40, %39 ], [ %46, %42 ]
  %49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %48, i32 noundef %32, i32 noundef %33) #27
  br label %50

50:                                               ; preds = %47, %31
  %51 = phi i32 [ -22, %47 ], [ 0, %31 ]
  ret i32 %51
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @_regulator_get(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp ugt i32 %2, 2
  br i1 %4, label %5, label %6

5:                                                ; preds = %3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.4, i32 noundef %2, ptr noundef nonnull @__func__._regulator_get) #27
  br label %113

6:                                                ; preds = %3
  %7 = icmp eq ptr %1, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #27
  br label %113

10:                                               ; preds = %6
  %11 = tail call fastcc ptr @regulator_dev_lookup(ptr noundef %0, ptr noundef nonnull %1)
  %12 = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  br i1 %12, label %13, label %23

13:                                               ; preds = %10
  %14 = icmp eq ptr %11, inttoptr (i32 -19 to ptr)
  br i1 %14, label %15, label %113

15:                                               ; preds = %13
  %16 = load i1, ptr @has_full_constraints, align 1
  %17 = load ptr, ptr @of_root, align 4
  %18 = icmp ne ptr %17, null
  %19 = select i1 %16, i1 true, i1 %18
  br i1 %19, label %21, label %20

20:                                               ; preds = %15
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.6) #27
  br label %113

21:                                               ; preds = %15
  switch i32 %2, label %113 [
    i32 0, label %27
    i32 1, label %22
  ]

22:                                               ; preds = %21
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.8) #27
  br label %113

23:                                               ; preds = %10
  %24 = getelementptr inbounds %struct.regulator_dev, ptr %11, i32 0, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %37, label %34

27:                                               ; preds = %21
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.7, ptr noundef nonnull %1) #27
  %28 = load ptr, ptr @dummy_regulator_rdev, align 4
  %29 = getelementptr inbounds %struct.regulator_dev, ptr %28, i32 0, i32 13
  %30 = tail call ptr @get_device(ptr noundef %29) #26
  %31 = getelementptr inbounds %struct.regulator_dev, ptr %28, i32 0, i32 1
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %45, label %34

34:                                               ; preds = %27, %23
  %35 = phi ptr [ %28, %27 ], [ %11, %23 ]
  %36 = getelementptr inbounds %struct.regulator_dev, ptr %35, i32 0, i32 13
  tail call void @put_device(ptr noundef %36) #26
  br label %113

37:                                               ; preds = %23
  %38 = icmp eq i32 %2, 1
  br i1 %38, label %39, label %45

39:                                               ; preds = %37
  %40 = getelementptr inbounds %struct.regulator_dev, ptr %11, i32 0, i32 3
  %41 = load i32, ptr %40, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.regulator_dev, ptr %11, i32 0, i32 13
  tail call void @put_device(ptr noundef %44) #26
  br label %113

45:                                               ; preds = %39, %37, %27
  %46 = phi i1 [ true, %39 ], [ false, %37 ], [ false, %27 ]
  %47 = phi ptr [ %24, %39 ], [ %24, %37 ], [ %31, %27 ]
  %48 = phi ptr [ %11, %39 ], [ %11, %37 ], [ %28, %27 ]
  tail call void @mutex_lock(ptr noundef nonnull @regulator_list_mutex) #26
  %49 = getelementptr inbounds %struct.regulator_dev, ptr %48, i32 0, i32 7, i32 2
  %50 = load i32, ptr %49, align 4
  %51 = getelementptr inbounds %struct.regulator_dev, ptr %48, i32 0, i32 7, i32 3
  %52 = load i32, ptr %51, align 4
  %53 = icmp eq i32 %50, %52
  tail call void @mutex_unlock(ptr noundef nonnull @regulator_list_mutex) #26
  br i1 %53, label %56, label %54

54:                                               ; preds = %45
  %55 = getelementptr inbounds %struct.regulator_dev, ptr %48, i32 0, i32 13
  tail call void @put_device(ptr noundef %55) #26
  br label %113

56:                                               ; preds = %45
  %57 = tail call fastcc i32 @regulator_resolve_supply(ptr noundef %48)
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = inttoptr i32 %57 to ptr
  %61 = getelementptr inbounds %struct.regulator_dev, ptr %48, i32 0, i32 13
  tail call void @put_device(ptr noundef %61) #26
  br label %113

62:                                               ; preds = %56
  %63 = getelementptr inbounds %struct.regulator_dev, ptr %48, i32 0, i32 12
  %64 = load ptr, ptr %63, align 8
  %65 = tail call zeroext i1 @try_module_get(ptr noundef %64) #26
  br i1 %65, label %68, label %66

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.regulator_dev, ptr %48, i32 0, i32 13
  tail call void @put_device(ptr noundef %67) #26
  br label %113

68:                                               ; preds = %62
  %69 = tail call fastcc ptr @create_regulator(ptr noundef %48, ptr noundef %0, ptr noundef nonnull %1)
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  %72 = load ptr, ptr %63, align 8
  tail call void @module_put(ptr noundef %72) #26
  %73 = getelementptr inbounds %struct.regulator_dev, ptr %48, i32 0, i32 13
  tail call void @put_device(ptr noundef %73) #26
  br label %113

74:                                               ; preds = %68
  %75 = getelementptr inbounds %struct.regulator_dev, ptr %48, i32 0, i32 3
  %76 = load i32, ptr %75, align 4
  %77 = add i32 %76, 1
  store i32 %77, ptr %75, align 4
  br i1 %46, label %78, label %103

78:                                               ; preds = %74
  store i32 1, ptr %47, align 4
  %79 = getelementptr inbounds %struct.regulator_dev, ptr %48, i32 0, i32 21
  %80 = load ptr, ptr %79, align 4
  %81 = icmp eq ptr %80, null
  br i1 %81, label %87, label %82

82:                                               ; preds = %78
  %83 = getelementptr inbounds %struct.regulator_dev, ptr %48, i32 0, i32 22
  %84 = load i8, ptr %83, align 8
  %85 = and i8 %84, 1
  %86 = zext i8 %85 to i32
  br label %96

87:                                               ; preds = %78
  %88 = load ptr, ptr %48, align 8
  %89 = getelementptr inbounds %struct.regulator_desc, ptr %88, i32 0, i32 10
  %90 = load ptr, ptr %89, align 4
  %91 = getelementptr inbounds %struct.regulator_ops, ptr %90, i32 0, i32 16
  %92 = load ptr, ptr %91, align 4
  %93 = icmp eq ptr %92, null
  br i1 %93, label %100, label %94

94:                                               ; preds = %87
  %95 = tail call i32 %92(ptr noundef %48) #26
  br label %96

96:                                               ; preds = %94, %82
  %97 = phi i32 [ %86, %82 ], [ %95, %94 ]
  %98 = icmp sgt i32 %97, 0
  %99 = zext i1 %98 to i32
  br label %100

100:                                              ; preds = %96, %87
  %101 = phi i32 [ 1, %87 ], [ %99, %96 ]
  %102 = getelementptr inbounds %struct.regulator_dev, ptr %48, i32 0, i32 2
  store i32 %101, ptr %102, align 8
  br label %103

103:                                              ; preds = %100, %74
  %104 = getelementptr inbounds %struct.regulator_dev, ptr %48, i32 0, i32 13
  %105 = tail call ptr @device_link_add(ptr noundef %0, ptr noundef %104, i32 noundef 1) #26
  %106 = icmp eq ptr %105, null
  %107 = icmp ugt ptr %105, inttoptr (i32 -4096 to ptr)
  %108 = or i1 %106, %107
  br i1 %108, label %113, label %109

109:                                              ; preds = %103
  %110 = getelementptr inbounds %struct.regulator, ptr %69, i32 0, i32 2
  %111 = load i8, ptr %110, align 4
  %112 = or i8 %111, 4
  store i8 %112, ptr %110, align 4
  br label %113

113:                                              ; preds = %109, %103, %71, %66, %59, %54, %43, %34, %22, %21, %20, %13, %8, %5
  %114 = phi ptr [ inttoptr (i32 -22 to ptr), %5 ], [ inttoptr (i32 -22 to ptr), %8 ], [ inttoptr (i32 -1 to ptr), %34 ], [ inttoptr (i32 -16 to ptr), %43 ], [ inttoptr (i32 -517 to ptr), %54 ], [ %60, %59 ], [ inttoptr (i32 -12 to ptr), %71 ], [ inttoptr (i32 -517 to ptr), %66 ], [ inttoptr (i32 -19 to ptr), %20 ], [ %69, %109 ], [ %69, %103 ], [ %11, %13 ], [ inttoptr (i32 -19 to ptr), %21 ], [ inttoptr (i32 -19 to ptr), %22 ]
  ret ptr %114
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @regulator_dev_lookup(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.of_phandle_args, align 4
  %4 = alloca [64 x i8], align 1
  %5 = load ptr, ptr @regulator_supply_alias_list, align 4
  %6 = icmp eq ptr %5, @regulator_supply_alias_list
  br i1 %6, label %27, label %7

7:                                                ; preds = %17, %2
  %8 = phi ptr [ %18, %17 ], [ %5, %2 ]
  %9 = getelementptr inbounds %struct.regulator_supply_alias, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, %0
  br i1 %11, label %12, label %17

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.regulator_supply_alias, ptr %8, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 @strcmp(ptr noundef %14, ptr noundef %1) #26
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %12, %7
  %18 = load ptr, ptr %8, align 4
  %19 = icmp eq ptr %18, @regulator_supply_alias_list
  br i1 %19, label %27, label %7

20:                                               ; preds = %12
  %21 = icmp eq ptr %8, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.regulator_supply_alias, ptr %8, i32 0, i32 3
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.regulator_supply_alias, ptr %8, i32 0, i32 4
  %26 = load ptr, ptr %25, align 4
  br label %27

27:                                               ; preds = %22, %20, %17, %2
  %28 = phi ptr [ %0, %2 ], [ %0, %20 ], [ %24, %22 ], [ %0, %17 ]
  %29 = phi ptr [ %1, %2 ], [ %1, %20 ], [ %26, %22 ], [ %1, %17 ]
  %30 = icmp eq ptr %28, null
  br i1 %30, label %59, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.device, ptr %28, i32 0, i32 25
  %33 = load ptr, ptr %32, align 8
  %34 = icmp eq ptr %33, null
  br i1 %34, label %53, label %35

35:                                               ; preds = %31
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #26
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %4, i8 0, i32 64, i1 false) #26, !annotation !9
  %36 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %4, i32 noundef 64, ptr noundef nonnull @.str.36, ptr noundef %29) #26
  %37 = load ptr, ptr %32, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #26
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %3, i8 0, i32 72, i1 false) #26, !annotation !9
  %38 = call i32 @__of_parse_phandle_with_args(ptr noundef %37, ptr noundef nonnull %4, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %3) #26
  %39 = icmp ne i32 %38, 0
  %40 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #26
  %41 = icmp eq ptr %40, null
  %42 = select i1 %39, i1 true, i1 %41
  br i1 %42, label %44, label %43

43:                                               ; preds = %35
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #26
  br label %48

44:                                               ; preds = %35
  %45 = load ptr, ptr %32, align 8
  %46 = call fastcc ptr @of_get_child_regulator(ptr noundef %45, ptr noundef nonnull %4) #26
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #26
  %47 = icmp eq ptr %46, null
  br i1 %47, label %53, label %48

48:                                               ; preds = %44, %43
  %49 = phi ptr [ %40, %43 ], [ %46, %44 ]
  %50 = call ptr @of_find_regulator_by_node(ptr noundef nonnull %49) #26
  %51 = icmp eq ptr %50, null
  %52 = select i1 %51, ptr inttoptr (i32 -517 to ptr), ptr %50
  br label %100

53:                                               ; preds = %44, %31
  %54 = getelementptr inbounds %struct.device, ptr %28, i32 0, i32 3
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %59

57:                                               ; preds = %53
  %58 = load ptr, ptr %28, align 4
  br label %59

59:                                               ; preds = %57, %53, %27
  %60 = phi ptr [ null, %27 ], [ %58, %57 ], [ %55, %53 ]
  call void @mutex_lock(ptr noundef nonnull @regulator_list_mutex) #26
  %61 = load ptr, ptr @regulator_map_list, align 4
  %62 = icmp eq ptr %61, @regulator_map_list
  br i1 %62, label %65, label %63

63:                                               ; preds = %59
  %64 = icmp eq ptr %60, null
  br label %66

65:                                               ; preds = %86, %59
  call void @mutex_unlock(ptr noundef nonnull @regulator_list_mutex) #26
  br label %93

66:                                               ; preds = %86, %63
  %67 = phi ptr [ %61, %63 ], [ %87, %86 ]
  %68 = getelementptr inbounds %struct.regulator_map, ptr %67, i32 0, i32 1
  %69 = load ptr, ptr %68, align 4
  %70 = icmp eq ptr %69, null
  br i1 %70, label %75, label %71

71:                                               ; preds = %66
  br i1 %64, label %86, label %72

72:                                               ; preds = %71
  %73 = call i32 @strcmp(ptr noundef nonnull %69, ptr noundef nonnull %60)
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %86

75:                                               ; preds = %72, %66
  %76 = getelementptr inbounds %struct.regulator_map, ptr %67, i32 0, i32 2
  %77 = load ptr, ptr %76, align 4
  %78 = call i32 @strcmp(ptr noundef %77, ptr noundef %29)
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %75
  %81 = getelementptr inbounds %struct.regulator_map, ptr %67, i32 0, i32 3
  %82 = load ptr, ptr %81, align 4
  %83 = getelementptr inbounds %struct.regulator_dev, ptr %82, i32 0, i32 13
  %84 = call ptr @get_device(ptr noundef %83) #26
  %85 = icmp eq ptr %84, null
  br i1 %85, label %86, label %89

86:                                               ; preds = %80, %75, %72, %71
  %87 = load ptr, ptr %67, align 4
  %88 = icmp eq ptr %87, @regulator_map_list
  br i1 %88, label %65, label %66

89:                                               ; preds = %80
  %90 = getelementptr inbounds %struct.regulator_map, ptr %67, i32 0, i32 3
  %91 = load ptr, ptr %90, align 4
  call void @mutex_unlock(ptr noundef nonnull @regulator_list_mutex) #26
  %92 = icmp eq ptr %91, null
  br i1 %92, label %93, label %100

93:                                               ; preds = %89, %65
  %94 = call ptr @class_find_device(ptr noundef nonnull @regulator_class, ptr noundef null, ptr noundef %29, ptr noundef nonnull @regulator_match) #26
  %95 = icmp eq ptr %94, null
  %96 = getelementptr i8, ptr %94, i32 -120
  %97 = icmp eq ptr %96, null
  %98 = or i1 %95, %97
  %99 = select i1 %98, ptr inttoptr (i32 -19 to ptr), ptr %96
  br label %100

100:                                              ; preds = %93, %89, %48
  %101 = phi ptr [ %91, %89 ], [ %52, %48 ], [ %99, %93 ]
  ret ptr %101
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @regulator_resolve_supply(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 13, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %103, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 15
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %103

11:                                               ; preds = %7
  %12 = tail call fastcc ptr @regulator_dev_lookup(ptr noundef %3, ptr noundef nonnull %5)
  %13 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %13, label %14, label %29

14:                                               ; preds = %11
  %15 = icmp eq ptr %12, inttoptr (i32 -517 to ptr)
  br i1 %15, label %103, label %16

16:                                               ; preds = %14
  %17 = load i1, ptr @has_full_constraints, align 1
  %18 = load ptr, ptr @of_root, align 4
  %19 = icmp ne ptr %18, null
  %20 = select i1 %17, i1 true, i1 %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = load ptr, ptr @dummy_regulator_rdev, align 4
  %23 = getelementptr inbounds %struct.regulator_dev, ptr %22, i32 0, i32 13
  %24 = tail call ptr @get_device(ptr noundef %23) #26
  br label %29

25:                                               ; preds = %16
  %26 = load ptr, ptr %4, align 8
  %27 = load ptr, ptr %0, align 8
  %28 = load ptr, ptr %27, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.37, ptr noundef %26, ptr noundef %28) #27
  br label %103

29:                                               ; preds = %21, %11
  %30 = phi ptr [ %22, %21 ], [ %12, %11 ]
  %31 = icmp eq ptr %30, %0
  br i1 %31, label %32, label %44

32:                                               ; preds = %29
  %33 = load ptr, ptr %0, align 8
  %34 = load ptr, ptr %33, align 4
  %35 = load ptr, ptr %4, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.38, ptr noundef %34, ptr noundef %35) #27
  %36 = load i1, ptr @has_full_constraints, align 1
  %37 = load ptr, ptr @of_root, align 4
  %38 = icmp ne ptr %37, null
  %39 = select i1 %36, i1 true, i1 %38
  br i1 %39, label %40, label %103

40:                                               ; preds = %32
  %41 = load ptr, ptr @dummy_regulator_rdev, align 4
  %42 = getelementptr inbounds %struct.regulator_dev, ptr %41, i32 0, i32 13
  %43 = tail call ptr @get_device(ptr noundef %42) #26
  br label %44

44:                                               ; preds = %40, %29
  %45 = phi ptr [ %41, %40 ], [ %30, %29 ]
  %46 = getelementptr inbounds %struct.regulator_dev, ptr %45, i32 0, i32 13
  %47 = getelementptr inbounds %struct.regulator_dev, ptr %45, i32 0, i32 13, i32 1
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %56, label %50

50:                                               ; preds = %44
  %51 = load ptr, ptr %2, align 4
  %52 = icmp eq ptr %48, %51
  br i1 %52, label %56, label %53

53:                                               ; preds = %50
  %54 = tail call zeroext i1 @device_is_bound(ptr noundef nonnull %48) #26
  br i1 %54, label %56, label %55

55:                                               ; preds = %53
  tail call void @put_device(ptr noundef %46) #26
  br label %103

56:                                               ; preds = %53, %50, %44
  %57 = tail call fastcc i32 @regulator_resolve_supply(ptr noundef %45)
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %56
  tail call void @put_device(ptr noundef %46) #26
  br label %103

60:                                               ; preds = %56
  tail call fastcc void @regulator_lock(ptr noundef %0)
  %61 = load ptr, ptr %8, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %80, label %63

63:                                               ; preds = %60
  tail call void @mutex_lock(ptr noundef nonnull @regulator_nesting_mutex) #26
  %64 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 11
  %65 = load i32, ptr %64, align 4
  %66 = add i32 %65, -1
  store i32 %66, ptr %64, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %63
  %69 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 10
  store ptr null, ptr %69, align 8
  %70 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 9
  tail call void @ww_mutex_unlock(ptr noundef %70) #26
  %71 = load i32, ptr %64, align 4
  br label %72

72:                                               ; preds = %68, %63
  %73 = phi i32 [ %71, %68 ], [ %66, %63 ]
  %74 = icmp slt i32 %73, 0
  %75 = load i1, ptr @regulator_unlock.__already_done, align 1
  %76 = xor i1 %75, true
  %77 = select i1 %74, i1 %76, i1 false
  br i1 %77, label %78, label %79, !prof !11

78:                                               ; preds = %72
  store i1 true, ptr @regulator_unlock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 204, i32 noundef 9, ptr noundef null) #26
  br label %79

79:                                               ; preds = %78, %72
  tail call void @mutex_unlock(ptr noundef nonnull @regulator_nesting_mutex) #26
  tail call void @put_device(ptr noundef %46) #26
  br label %103

80:                                               ; preds = %60
  %81 = getelementptr inbounds %struct.regulator_dev, ptr %45, i32 0, i32 12
  %82 = load ptr, ptr %81, align 8
  %83 = tail call zeroext i1 @try_module_get(ptr noundef %82) #26
  br i1 %83, label %84, label %88

84:                                               ; preds = %80
  %85 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 13
  %86 = tail call fastcc ptr @create_regulator(ptr noundef %45, ptr noundef %85, ptr noundef nonnull @.str.39) #26
  store ptr %86, ptr %8, align 4
  %87 = icmp eq ptr %86, null
  br i1 %87, label %88, label %90

88:                                               ; preds = %84, %80
  %89 = phi i32 [ -12, %84 ], [ -19, %80 ]
  tail call fastcc void @regulator_unlock(ptr noundef %0)
  tail call void @put_device(ptr noundef %46) #26
  br label %103

90:                                               ; preds = %84
  %91 = getelementptr inbounds %struct.regulator_dev, ptr %45, i32 0, i32 3
  %92 = load i32, ptr %91, align 4
  %93 = add i32 %92, 1
  store i32 %93, ptr %91, align 4
  tail call fastcc void @regulator_unlock(ptr noundef %0)
  %94 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 2
  %95 = load i32, ptr %94, align 8
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %103, label %97

97:                                               ; preds = %90
  %98 = load ptr, ptr %8, align 4
  %99 = tail call i32 @regulator_enable(ptr noundef %98)
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %97
  %102 = load ptr, ptr %8, align 4
  tail call fastcc void @_regulator_put(ptr noundef %102)
  store ptr null, ptr %8, align 4
  br label %103

103:                                              ; preds = %101, %97, %90, %88, %79, %59, %55, %32, %25, %14, %7, %1
  %104 = phi i32 [ 0, %1 ], [ 0, %7 ], [ -517, %14 ], [ %57, %59 ], [ %57, %79 ], [ %89, %88 ], [ %99, %101 ], [ %99, %97 ], [ 0, %90 ], [ -517, %55 ], [ -517, %25 ], [ -22, %32 ]
  ret i32 %104
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @create_regulator(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca [64 x i8], align 1
  %5 = icmp eq ptr %1, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #26
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(64) %4, i8 0, i32 64, i1 false), !annotation !9
  %7 = load ptr, ptr %1, align 8
  %8 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %4, i32 noundef 64, ptr noundef nonnull @.str.40, ptr noundef %7, ptr noundef %2)
  %9 = icmp sgt i32 %8, 63
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #26
  br label %111

11:                                               ; preds = %6
  %12 = call noalias ptr @kstrdup(ptr noundef nonnull %4, i32 noundef 3264) #26
  %13 = icmp eq ptr %12, null
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #26
  br i1 %13, label %111, label %17

14:                                               ; preds = %3
  %15 = tail call ptr @kstrdup_const(ptr noundef %2, i32 noundef 3264) #26
  %16 = icmp eq ptr %15, null
  br i1 %16, label %111, label %17

17:                                               ; preds = %14, %11
  %18 = phi ptr [ %12, %11 ], [ %15, %14 ]
  %19 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %20 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %19, i32 noundef 3520, i32 noundef 96) #28
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  call void @kfree(ptr noundef nonnull %18) #26
  br label %111

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.regulator, ptr %20, i32 0, i32 9
  store ptr %0, ptr %24, align 8
  %25 = getelementptr inbounds %struct.regulator, ptr %20, i32 0, i32 7
  store ptr %18, ptr %25, align 4
  call fastcc void @regulator_lock(ptr noundef %0)
  %26 = getelementptr inbounds %struct.regulator, ptr %20, i32 0, i32 1
  %27 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 6
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  store ptr %26, ptr %29, align 4
  store ptr %28, ptr %26, align 4
  %30 = getelementptr inbounds %struct.regulator, ptr %20, i32 0, i32 1, i32 1
  store ptr %27, ptr %30, align 8
  store volatile ptr %26, ptr %27, align 4
  call void @mutex_lock(ptr noundef nonnull @regulator_nesting_mutex) #26
  %31 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 11
  %32 = load i32, ptr %31, align 4
  %33 = add i32 %32, -1
  store i32 %33, ptr %31, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %23
  %36 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 10
  store ptr null, ptr %36, align 8
  %37 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 9
  call void @ww_mutex_unlock(ptr noundef %37) #26
  %38 = load i32, ptr %31, align 4
  br label %39

39:                                               ; preds = %35, %23
  %40 = phi i32 [ %38, %35 ], [ %33, %23 ]
  %41 = icmp slt i32 %40, 0
  %42 = load i1, ptr @regulator_unlock.__already_done, align 1
  %43 = xor i1 %42, true
  %44 = select i1 %41, i1 %43, i1 false
  br i1 %44, label %45, label %46, !prof !11

45:                                               ; preds = %39
  store i1 true, ptr @regulator_unlock.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 204, i32 noundef 9, ptr noundef null) #26
  br label %46

46:                                               ; preds = %45, %39
  call void @mutex_unlock(ptr noundef nonnull @regulator_nesting_mutex) #26
  br i1 %5, label %54, label %47

47:                                               ; preds = %46
  store ptr %1, ptr %20, align 8
  %48 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 13
  %49 = call i32 @sysfs_create_link_nowarn(ptr noundef %48, ptr noundef nonnull %1, ptr noundef nonnull %18) #26
  %50 = icmp eq i32 %49, -17
  br i1 %50, label %51, label %54

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.regulator, ptr %20, i32 0, i32 10
  %53 = load ptr, ptr %52, align 4
  br label %59

54:                                               ; preds = %47, %46
  %55 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 20
  %56 = load ptr, ptr %55, align 8
  %57 = call ptr @debugfs_create_dir(ptr noundef nonnull %18, ptr noundef %56) #26
  %58 = getelementptr inbounds %struct.regulator, ptr %20, i32 0, i32 10
  store ptr %57, ptr %58, align 4
  br label %59

59:                                               ; preds = %54, %51
  %60 = phi ptr [ %53, %51 ], [ %57, %54 ]
  %61 = icmp eq ptr %60, null
  br i1 %61, label %71, label %62

62:                                               ; preds = %59
  %63 = getelementptr inbounds %struct.regulator, ptr %20, i32 0, i32 10
  %64 = getelementptr inbounds %struct.regulator, ptr %20, i32 0, i32 3
  call void @debugfs_create_u32(ptr noundef nonnull @.str.41, i16 noundef zeroext 292, ptr noundef nonnull %60, ptr noundef %64) #26
  %65 = load ptr, ptr %63, align 4
  %66 = getelementptr inbounds %struct.regulator, ptr %20, i32 0, i32 6
  call void @debugfs_create_u32(ptr noundef nonnull @.str.42, i16 noundef zeroext 292, ptr noundef %65, ptr noundef %66) #26
  %67 = load ptr, ptr %63, align 4
  %68 = getelementptr inbounds %struct.regulator, ptr %20, i32 0, i32 6, i32 0, i32 1
  call void @debugfs_create_u32(ptr noundef nonnull @.str.43, i16 noundef zeroext 292, ptr noundef %67, ptr noundef %68) #26
  %69 = load ptr, ptr %63, align 4
  %70 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.44, i16 noundef zeroext 292, ptr noundef %69, ptr noundef nonnull %20, ptr noundef nonnull @constraint_flags_fops) #26
  br label %71

71:                                               ; preds = %62, %59
  %72 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 14
  %73 = load ptr, ptr %72, align 8
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %81

75:                                               ; preds = %71
  %76 = load ptr, ptr %0, align 8
  %77 = load ptr, ptr %76, align 4
  %78 = icmp eq ptr %77, null
  %79 = select i1 %78, ptr @.str, ptr %77
  %80 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef %79) #27
  br label %86

81:                                               ; preds = %71
  %82 = getelementptr inbounds %struct.regulation_constraints, ptr %73, i32 0, i32 11
  %83 = load i32, ptr %82, align 4
  %84 = and i32 %83, 8
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %111

86:                                               ; preds = %81, %75
  %87 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 21
  %88 = load ptr, ptr %87, align 4
  %89 = icmp eq ptr %88, null
  br i1 %89, label %95, label %90

90:                                               ; preds = %86
  %91 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 22
  %92 = load i8, ptr %91, align 8
  %93 = and i8 %92, 1
  %94 = zext i8 %93 to i32
  br label %104

95:                                               ; preds = %86
  %96 = load ptr, ptr %0, align 8
  %97 = getelementptr inbounds %struct.regulator_desc, ptr %96, i32 0, i32 10
  %98 = load ptr, ptr %97, align 4
  %99 = getelementptr inbounds %struct.regulator_ops, ptr %98, i32 0, i32 16
  %100 = load ptr, ptr %99, align 4
  %101 = icmp eq ptr %100, null
  br i1 %101, label %107, label %102

102:                                              ; preds = %95
  %103 = call i32 %100(ptr noundef %0) #26
  br label %104

104:                                              ; preds = %102, %90
  %105 = phi i32 [ %94, %90 ], [ %103, %102 ]
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %111, label %107

107:                                              ; preds = %104, %95
  %108 = getelementptr inbounds %struct.regulator, ptr %20, i32 0, i32 2
  %109 = load i8, ptr %108, align 4
  %110 = or i8 %109, 1
  store i8 %110, ptr %108, align 4
  br label %111

111:                                              ; preds = %107, %104, %81, %22, %14, %11, %10
  %112 = phi ptr [ null, %22 ], [ null, %11 ], [ null, %14 ], [ %20, %107 ], [ %20, %104 ], [ %20, %81 ], [ null, %10 ]
  ret ptr %112
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_link_add(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @regulator_get(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @_regulator_get(ptr noundef %0, ptr noundef %1, i32 noundef 0)
  ret ptr %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @regulator_get_exclusive(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @_regulator_get(ptr noundef %0, ptr noundef %1, i32 noundef 1)
  ret ptr %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @regulator_get_optional(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @_regulator_get(ptr noundef %0, ptr noundef %1, i32 noundef 2)
  ret ptr %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @regulator_put(ptr noundef %0) #0 {
  tail call void @mutex_lock(ptr noundef nonnull @regulator_list_mutex) #26
  tail call fastcc void @_regulator_put(ptr noundef %0)
  tail call void @mutex_unlock(ptr noundef nonnull @regulator_list_mutex) #26
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @_regulator_put(ptr noundef %0) unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  %3 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %4 = or i1 %2, %3
  br i1 %4, label %59, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.regulator, ptr %0, i32 0, i32 4
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9, !prof !10

9:                                                ; preds = %5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 2257, i32 noundef 9, ptr noundef null) #26
  br label %10

10:                                               ; preds = %9, %5
  %11 = getelementptr inbounds %struct.regulator, ptr %0, i32 0, i32 9
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.regulator, ptr %0, i32 0, i32 10
  %14 = load ptr, ptr %13, align 4
  tail call void @debugfs_remove(ptr noundef %14) #26
  %15 = load ptr, ptr %0, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %28, label %17

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.regulator, ptr %0, i32 0, i32 2
  %19 = load i8, ptr %18, align 4
  %20 = and i8 %19, 4
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.regulator_dev, ptr %12, i32 0, i32 13
  tail call void @device_link_remove(ptr noundef nonnull %15, ptr noundef %23) #26
  br label %24

24:                                               ; preds = %22, %17
  %25 = getelementptr inbounds %struct.regulator_dev, ptr %12, i32 0, i32 13
  %26 = getelementptr inbounds %struct.regulator, ptr %0, i32 0, i32 7
  %27 = load ptr, ptr %26, align 4
  tail call void @sysfs_remove_link(ptr noundef %25, ptr noundef %27) #26
  br label %28

28:                                               ; preds = %24, %10
  tail call fastcc void @regulator_lock(ptr noundef %12) #26
  %29 = getelementptr inbounds %struct.regulator, ptr %0, i32 0, i32 1
  %30 = getelementptr inbounds %struct.regulator, ptr %0, i32 0, i32 1, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = load ptr, ptr %29, align 4
  %33 = getelementptr inbounds %struct.list_head, ptr %32, i32 0, i32 1
  store ptr %31, ptr %33, align 4
  store volatile ptr %32, ptr %31, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %29, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %30, align 4
  %34 = getelementptr inbounds %struct.regulator_dev, ptr %12, i32 0, i32 3
  %35 = load i32, ptr %34, align 4
  %36 = add i32 %35, -1
  store i32 %36, ptr %34, align 4
  %37 = getelementptr inbounds %struct.regulator_dev, ptr %12, i32 0, i32 1
  store i32 0, ptr %37, align 4
  tail call void @mutex_lock(ptr noundef nonnull @regulator_nesting_mutex) #26
  %38 = getelementptr inbounds %struct.regulator_dev, ptr %12, i32 0, i32 11
  %39 = load i32, ptr %38, align 4
  %40 = add i32 %39, -1
  store i32 %40, ptr %38, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %28
  %43 = getelementptr inbounds %struct.regulator_dev, ptr %12, i32 0, i32 10
  store ptr null, ptr %43, align 8
  %44 = getelementptr inbounds %struct.regulator_dev, ptr %12, i32 0, i32 9
  tail call void @ww_mutex_unlock(ptr noundef %44) #26
  %45 = load i32, ptr %38, align 4
  br label %46

46:                                               ; preds = %42, %28
  %47 = phi i32 [ %45, %42 ], [ %40, %28 ]
  %48 = icmp slt i32 %47, 0
  %49 = load i1, ptr @regulator_unlock.__already_done, align 1
  %50 = xor i1 %49, true
  %51 = select i1 %48, i1 %50, i1 false
  br i1 %51, label %52, label %53, !prof !11

52:                                               ; preds = %46
  store i1 true, ptr @regulator_unlock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 204, i32 noundef 9, ptr noundef null) #26
  br label %53

53:                                               ; preds = %52, %46
  tail call void @mutex_unlock(ptr noundef nonnull @regulator_nesting_mutex) #26
  %54 = getelementptr inbounds %struct.regulator, ptr %0, i32 0, i32 7
  %55 = load ptr, ptr %54, align 4
  tail call void @kfree_const(ptr noundef %55) #26
  tail call void @kfree(ptr noundef nonnull %0) #26
  %56 = getelementptr inbounds %struct.regulator_dev, ptr %12, i32 0, i32 12
  %57 = load ptr, ptr %56, align 8
  tail call void @module_put(ptr noundef %57) #26
  %58 = getelementptr inbounds %struct.regulator_dev, ptr %12, i32 0, i32 13
  tail call void @put_device(ptr noundef %58) #26
  br label %59

59:                                               ; preds = %53, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @regulator_register_supply_alias(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = load ptr, ptr @regulator_supply_alias_list, align 4
  %6 = icmp eq ptr %5, @regulator_supply_alias_list
  br i1 %6, label %22, label %7

7:                                                ; preds = %17, %4
  %8 = phi ptr [ %18, %17 ], [ %5, %4 ]
  %9 = getelementptr inbounds %struct.regulator_supply_alias, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, %0
  br i1 %11, label %12, label %17

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.regulator_supply_alias, ptr %8, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 @strcmp(ptr noundef %14, ptr noundef %1) #26
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %12, %7
  %18 = load ptr, ptr %8, align 4
  %19 = icmp eq ptr %18, @regulator_supply_alias_list
  br i1 %19, label %22, label %7

20:                                               ; preds = %12
  %21 = icmp eq ptr %8, null
  br i1 %21, label %22, label %49

22:                                               ; preds = %20, %17, %4
  %23 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %24 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %23, i32 noundef 3520, i32 noundef 24) #28
  %25 = icmp eq ptr %24, null
  br i1 %25, label %49, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.regulator_supply_alias, ptr %24, i32 0, i32 1
  store ptr %0, ptr %27, align 8
  %28 = getelementptr inbounds %struct.regulator_supply_alias, ptr %24, i32 0, i32 2
  store ptr %1, ptr %28, align 4
  %29 = getelementptr inbounds %struct.regulator_supply_alias, ptr %24, i32 0, i32 3
  store ptr %2, ptr %29, align 8
  %30 = getelementptr inbounds %struct.regulator_supply_alias, ptr %24, i32 0, i32 4
  store ptr %3, ptr %30, align 4
  %31 = load ptr, ptr @regulator_supply_alias_list, align 4
  %32 = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  store ptr %24, ptr %32, align 4
  store ptr %31, ptr %24, align 8
  %33 = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  store ptr @regulator_supply_alias_list, ptr %33, align 4
  store volatile ptr %24, ptr @regulator_supply_alias_list, align 4
  %34 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %26
  %38 = load ptr, ptr %0, align 4
  br label %39

39:                                               ; preds = %37, %26
  %40 = phi ptr [ %38, %37 ], [ %35, %26 ]
  %41 = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 3
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = load ptr, ptr %2, align 4
  br label %46

46:                                               ; preds = %44, %39
  %47 = phi ptr [ %45, %44 ], [ %42, %39 ]
  %48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %1, ptr noundef %40, ptr noundef %3, ptr noundef %47) #27
  br label %49

49:                                               ; preds = %46, %22, %20
  %50 = phi i32 [ 0, %46 ], [ -17, %20 ], [ -12, %22 ]
  ret i32 %50
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @regulator_unregister_supply_alias(ptr noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr @regulator_supply_alias_list, align 4
  %4 = icmp eq ptr %3, @regulator_supply_alias_list
  br i1 %4, label %25, label %5

5:                                                ; preds = %15, %2
  %6 = phi ptr [ %16, %15 ], [ %3, %2 ]
  %7 = getelementptr inbounds %struct.regulator_supply_alias, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %0
  br i1 %9, label %10, label %15

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.regulator_supply_alias, ptr %6, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 @strcmp(ptr noundef %12, ptr noundef %1) #26
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %10, %5
  %16 = load ptr, ptr %6, align 4
  %17 = icmp eq ptr %16, @regulator_supply_alias_list
  br i1 %17, label %25, label %5

18:                                               ; preds = %10
  %19 = icmp eq ptr %6, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = load ptr, ptr %6, align 4
  %24 = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  store ptr %22, ptr %24, align 4
  store volatile ptr %23, ptr %22, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %6, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %21, align 4
  tail call void @kfree(ptr noundef nonnull %6) #26
  br label %25

25:                                               ; preds = %20, %18, %15, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @regulator_bulk_register_supply_alias(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4) #0 {
  %6 = icmp sgt i32 %4, 0
  br i1 %6, label %7, label %71

7:                                                ; preds = %15, %5
  %8 = phi i32 [ %16, %15 ], [ 0, %5 ]
  %9 = getelementptr ptr, ptr %1, i32 %8
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr ptr, ptr %3, i32 %8
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 @regulator_register_supply_alias(ptr noundef %0, ptr noundef %10, ptr noundef %2, ptr noundef %12)
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %7
  %16 = add nuw nsw i32 %8, 1
  %17 = icmp eq i32 %16, %4
  br i1 %17, label %71, label %7

18:                                               ; preds = %7
  %19 = getelementptr ptr, ptr %1, i32 %8
  %20 = getelementptr ptr, ptr %3, i32 %8
  %21 = load ptr, ptr %19, align 4
  %22 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = load ptr, ptr %0, align 4
  br label %27

27:                                               ; preds = %25, %18
  %28 = phi ptr [ %26, %25 ], [ %23, %18 ]
  %29 = load ptr, ptr %20, align 4
  %30 = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 3
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load ptr, ptr %2, align 4
  br label %35

35:                                               ; preds = %33, %27
  %36 = phi ptr [ %34, %33 ], [ %31, %27 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.10, ptr noundef %21, ptr noundef %28, ptr noundef %29, ptr noundef %36) #27
  %37 = icmp eq i32 %8, 0
  br i1 %37, label %71, label %38

38:                                               ; preds = %35
  %39 = load ptr, ptr @regulator_supply_alias_list, align 4
  br label %40

40:                                               ; preds = %68, %38
  %41 = phi ptr [ %69, %68 ], [ %39, %38 ]
  %42 = phi i32 [ %43, %68 ], [ %8, %38 ]
  %43 = add nsw i32 %42, -1
  %44 = getelementptr ptr, ptr %1, i32 %43
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %41, @regulator_supply_alias_list
  br i1 %46, label %68, label %47

47:                                               ; preds = %57, %40
  %48 = phi ptr [ %58, %57 ], [ %41, %40 ]
  %49 = getelementptr inbounds %struct.regulator_supply_alias, ptr %48, i32 0, i32 1
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, %0
  br i1 %51, label %52, label %57

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.regulator_supply_alias, ptr %48, i32 0, i32 2
  %54 = load ptr, ptr %53, align 4
  %55 = tail call i32 @strcmp(ptr noundef %54, ptr noundef %45) #26
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %52, %47
  %58 = load ptr, ptr %48, align 4
  %59 = icmp eq ptr %58, @regulator_supply_alias_list
  br i1 %59, label %68, label %47

60:                                               ; preds = %52
  %61 = icmp eq ptr %48, null
  br i1 %61, label %68, label %62

62:                                               ; preds = %60
  %63 = getelementptr inbounds %struct.list_head, ptr %48, i32 0, i32 1
  %64 = load ptr, ptr %63, align 4
  %65 = load ptr, ptr %48, align 4
  %66 = getelementptr inbounds %struct.list_head, ptr %65, i32 0, i32 1
  store ptr %64, ptr %66, align 4
  store volatile ptr %65, ptr %64, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %48, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %63, align 4
  tail call void @kfree(ptr noundef nonnull %48) #26
  %67 = load ptr, ptr @regulator_supply_alias_list, align 4
  br label %68

68:                                               ; preds = %62, %60, %57, %40
  %69 = phi ptr [ @regulator_supply_alias_list, %40 ], [ %41, %60 ], [ %67, %62 ], [ %41, %57 ]
  %70 = icmp sgt i32 %42, 1
  br i1 %70, label %40, label %71

71:                                               ; preds = %68, %35, %15, %5
  %72 = phi i32 [ %13, %35 ], [ 0, %5 ], [ %13, %68 ], [ 0, %15 ]
  ret i32 %72
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @regulator_bulk_unregister_supply_alias(ptr noundef readnone %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = icmp sgt i32 %2, 0
  br i1 %4, label %5, label %38

5:                                                ; preds = %3
  %6 = load ptr, ptr @regulator_supply_alias_list, align 4
  br label %7

7:                                                ; preds = %34, %5
  %8 = phi ptr [ %35, %34 ], [ %6, %5 ]
  %9 = phi i32 [ %36, %34 ], [ 0, %5 ]
  %10 = getelementptr ptr, ptr %1, i32 %9
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %8, @regulator_supply_alias_list
  br i1 %12, label %34, label %13

13:                                               ; preds = %23, %7
  %14 = phi ptr [ %24, %23 ], [ %8, %7 ]
  %15 = getelementptr inbounds %struct.regulator_supply_alias, ptr %14, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, %0
  br i1 %17, label %18, label %23

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.regulator_supply_alias, ptr %14, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  %21 = tail call i32 @strcmp(ptr noundef %20, ptr noundef %11) #26
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %18, %13
  %24 = load ptr, ptr %14, align 4
  %25 = icmp eq ptr %24, @regulator_supply_alias_list
  br i1 %25, label %34, label %13

26:                                               ; preds = %18
  %27 = icmp eq ptr %14, null
  br i1 %27, label %34, label %28

28:                                               ; preds = %26
  %29 = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = load ptr, ptr %14, align 4
  %32 = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  store ptr %30, ptr %32, align 4
  store volatile ptr %31, ptr %30, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %14, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %29, align 4
  tail call void @kfree(ptr noundef nonnull %14) #26
  %33 = load ptr, ptr @regulator_supply_alias_list, align 4
  br label %34

34:                                               ; preds = %28, %26, %23, %7
  %35 = phi ptr [ @regulator_supply_alias_list, %7 ], [ %8, %26 ], [ %33, %28 ], [ %8, %23 ]
  %36 = add nuw nsw i32 %9, 1
  %37 = icmp eq i32 %36, %2
  br i1 %37, label %38, label %7

38:                                               ; preds = %34, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @regulator_enable(ptr nocapture noundef %0) #0 {
  %2 = alloca %struct.ww_acquire_ctx, align 4
  %3 = getelementptr inbounds %struct.regulator, ptr %0, i32 0, i32 9
  %4 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #26
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %2, i8 0, i32 16, i1 false), !annotation !9
  call fastcc void @regulator_lock_dependent(ptr noundef %4, ptr noundef nonnull %2)
  %5 = call fastcc i32 @_regulator_enable(ptr noundef %0)
  %6 = getelementptr inbounds %struct.regulator_dev, ptr %4, i32 0, i32 7, i32 3
  %7 = load i32, ptr %6, align 4
  call fastcc void @regulator_unlock_recursive(ptr noundef %4, i32 noundef %7) #26
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #26
  ret i32 %5
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @regulator_lock_dependent(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #26
  store ptr null, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #26
  store ptr null, ptr %4, align 4
  tail call void @mutex_lock(ptr noundef nonnull @regulator_list_mutex) #26
  %5 = tail call ptr @llvm.thread.pointer() #26
  store ptr %5, ptr %1, align 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @regulator_ww_class) #26, !srcloc !14
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @regulator_ww_class, ptr nonnull @regulator_ww_class, i32 1, ptr nonnull elementtype(i32) @regulator_ww_class) #26, !srcloc !15
  %7 = extractvalue { i32, i32 } %6, 0
  %8 = getelementptr inbounds %struct.ww_acquire_ctx, ptr %1, i32 0, i32 1
  store i32 %7, ptr %8, align 4
  %9 = getelementptr inbounds %struct.ww_acquire_ctx, ptr %1, i32 0, i32 2
  store i32 0, ptr %9, align 4
  %10 = getelementptr inbounds %struct.ww_acquire_ctx, ptr %1, i32 0, i32 3
  store i16 0, ptr %10, align 4
  %11 = load i32, ptr getelementptr inbounds (%struct.ww_class, ptr @regulator_ww_class, i32 0, i32 5), align 4
  %12 = trunc i32 %11 to i16
  %13 = getelementptr inbounds %struct.ww_acquire_ctx, ptr %1, i32 0, i32 4
  store i16 %12, ptr %13, align 2
  br label %14

14:                                               ; preds = %46, %2
  %15 = phi ptr [ %47, %46 ], [ null, %2 ]
  %16 = icmp eq ptr %15, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.regulator_dev, ptr %15, i32 0, i32 9
  %19 = tail call i32 @ww_mutex_lock(ptr noundef %18, ptr noundef %1) #26
  store ptr %15, ptr %4, align 4
  %20 = getelementptr inbounds %struct.regulator_dev, ptr %15, i32 0, i32 11
  %21 = load i32, ptr %20, align 4
  %22 = add i32 %21, 1
  store i32 %22, ptr %20, align 4
  br label %23

23:                                               ; preds = %17, %14
  %24 = call fastcc i32 @regulator_lock_recursive(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef %1)
  %25 = load ptr, ptr %4, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %44, label %27

27:                                               ; preds = %23
  tail call void @mutex_lock(ptr noundef nonnull @regulator_nesting_mutex) #26
  %28 = getelementptr inbounds %struct.regulator_dev, ptr %25, i32 0, i32 11
  %29 = load i32, ptr %28, align 4
  %30 = add i32 %29, -1
  store i32 %30, ptr %28, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.regulator_dev, ptr %25, i32 0, i32 10
  store ptr null, ptr %33, align 8
  %34 = getelementptr inbounds %struct.regulator_dev, ptr %25, i32 0, i32 9
  tail call void @ww_mutex_unlock(ptr noundef %34) #26
  %35 = load i32, ptr %28, align 4
  br label %36

36:                                               ; preds = %32, %27
  %37 = phi i32 [ %35, %32 ], [ %30, %27 ]
  %38 = icmp slt i32 %37, 0
  %39 = load i1, ptr @regulator_unlock.__already_done, align 1
  %40 = xor i1 %39, true
  %41 = select i1 %38, i1 %40, i1 false
  br i1 %41, label %42, label %43, !prof !11

42:                                               ; preds = %36
  store i1 true, ptr @regulator_unlock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 204, i32 noundef 9, ptr noundef null) #26
  br label %43

43:                                               ; preds = %42, %36
  tail call void @mutex_unlock(ptr noundef nonnull @regulator_nesting_mutex) #26
  br label %44

44:                                               ; preds = %43, %23
  %45 = icmp eq i32 %24, -35
  br i1 %45, label %46, label %48

46:                                               ; preds = %44
  %47 = load ptr, ptr %3, align 4
  br label %14

48:                                               ; preds = %44
  tail call void @mutex_unlock(ptr noundef nonnull @regulator_list_mutex) #26
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #26
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @_regulator_enable(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.regulator, ptr %0, i32 0, i32 9
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.regulator_dev, ptr %3, i32 0, i32 2
  %5 = load i32, ptr %4, align 8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %14

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.regulator_dev, ptr %3, i32 0, i32 15
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %7
  %12 = tail call fastcc i32 @_regulator_enable(ptr noundef nonnull %9)
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %168, label %14

14:                                               ; preds = %11, %7, %1
  %15 = getelementptr inbounds %struct.regulator_dev, ptr %3, i32 0, i32 7, i32 3
  %16 = load i32, ptr %15, align 4
  %17 = icmp sgt i32 %16, 1
  br i1 %17, label %18, label %52

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.regulator_dev, ptr %3, i32 0, i32 7, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.regulator_dev, ptr %3, i32 0, i32 7, i32 2
  %22 = load i32, ptr %21, align 4
  %23 = icmp slt i32 %22, %16
  br i1 %23, label %24, label %39

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.regulator_dev, ptr %3, i32 0, i32 14
  %26 = load ptr, ptr %25, align 8
  %27 = icmp eq ptr %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %24
  %29 = load ptr, ptr %26, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %36

31:                                               ; preds = %28, %24
  %32 = load ptr, ptr %3, align 8
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  %35 = select i1 %34, ptr @.str, ptr %33
  br label %36

36:                                               ; preds = %31, %28
  %37 = phi ptr [ %29, %28 ], [ %35, %31 ]
  %38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, ptr noundef %37) #27
  br label %158

39:                                               ; preds = %18
  %40 = icmp eq ptr %20, null
  br i1 %40, label %47, label %41

41:                                               ; preds = %39
  %42 = getelementptr inbounds %struct.regulator_coupler, ptr %20, i32 0, i32 3
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %47, label %45

45:                                               ; preds = %41
  %46 = tail call i32 %43(ptr noundef nonnull %20, ptr noundef %3, i32 noundef 0) #26
  br label %49

47:                                               ; preds = %41, %39
  %48 = tail call i32 @regulator_do_balance_voltage(ptr noundef %3, i32 noundef 0, i1 noundef zeroext false) #26
  br label %49

49:                                               ; preds = %47, %45
  %50 = phi i32 [ %46, %45 ], [ %48, %47 ]
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %158, label %52

52:                                               ; preds = %49, %14
  %53 = load ptr, ptr %2, align 4
  %54 = getelementptr inbounds %struct.regulator, ptr %0, i32 0, i32 4
  %55 = load i32, ptr %54, align 4
  %56 = add i32 %55, 1
  store i32 %56, ptr %54, align 4
  %57 = getelementptr inbounds %struct.regulator, ptr %0, i32 0, i32 3
  %58 = load i32, ptr %57, align 4
  %59 = icmp ne i32 %58, 0
  %60 = icmp eq i32 %55, 0
  %61 = select i1 %59, i1 %60, i1 false
  br i1 %61, label %62, label %65

62:                                               ; preds = %52
  %63 = tail call fastcc i32 @drms_uA_update(ptr noundef %53) #26
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %158, label %65

65:                                               ; preds = %62, %52
  %66 = load i32, ptr %4, align 8
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %127

68:                                               ; preds = %65
  %69 = getelementptr inbounds %struct.regulator_dev, ptr %3, i32 0, i32 21
  %70 = load ptr, ptr %69, align 4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %77, label %72

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.regulator_dev, ptr %3, i32 0, i32 22
  %74 = load i8, ptr %73, align 8
  %75 = and i8 %74, 1
  %76 = zext i8 %75 to i32
  br label %86

77:                                               ; preds = %68
  %78 = load ptr, ptr %3, align 8
  %79 = getelementptr inbounds %struct.regulator_desc, ptr %78, i32 0, i32 10
  %80 = load ptr, ptr %79, align 4
  %81 = getelementptr inbounds %struct.regulator_ops, ptr %80, i32 0, i32 16
  %82 = load ptr, ptr %81, align 4
  %83 = icmp eq ptr %82, null
  br i1 %83, label %127, label %84

84:                                               ; preds = %77
  %85 = tail call i32 %82(ptr noundef %3) #26
  br label %86

86:                                               ; preds = %84, %72
  %87 = phi i32 [ %76, %72 ], [ %85, %84 ]
  switch i32 %87, label %109 [
    i32 -22, label %88
    i32 0, label %88
  ]

88:                                               ; preds = %86, %86
  %89 = getelementptr inbounds %struct.regulator_dev, ptr %3, i32 0, i32 14
  %90 = load ptr, ptr %89, align 8
  %91 = icmp eq ptr %90, null
  br i1 %91, label %92, label %98

92:                                               ; preds = %88
  %93 = load ptr, ptr %3, align 8
  %94 = load ptr, ptr %93, align 4
  %95 = icmp eq ptr %94, null
  %96 = select i1 %95, ptr @.str, ptr %94
  %97 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef %96) #27
  br label %130

98:                                               ; preds = %88
  %99 = getelementptr inbounds %struct.regulation_constraints, ptr %90, i32 0, i32 11
  %100 = load i32, ptr %99, align 4
  %101 = and i32 %100, 8
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %130, label %103

103:                                              ; preds = %98
  %104 = tail call fastcc i32 @_regulator_do_enable(ptr noundef %3)
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %130, label %106

106:                                              ; preds = %103
  %107 = getelementptr inbounds %struct.regulator_dev, ptr %3, i32 0, i32 8
  %108 = tail call i32 @blocking_notifier_call_chain(ptr noundef %107, i32 noundef 4096, ptr noundef null) #26
  br label %127

109:                                              ; preds = %86
  %110 = icmp slt i32 %87, 0
  br i1 %110, label %111, label %127

111:                                              ; preds = %109
  %112 = getelementptr inbounds %struct.regulator_dev, ptr %3, i32 0, i32 14
  %113 = load ptr, ptr %112, align 8
  %114 = icmp eq ptr %113, null
  br i1 %114, label %118, label %115

115:                                              ; preds = %111
  %116 = load ptr, ptr %113, align 4
  %117 = icmp eq ptr %116, null
  br i1 %117, label %118, label %123

118:                                              ; preds = %115, %111
  %119 = load ptr, ptr %3, align 8
  %120 = load ptr, ptr %119, align 4
  %121 = icmp eq ptr %120, null
  %122 = select i1 %121, ptr @.str, ptr %120
  br label %123

123:                                              ; preds = %118, %115
  %124 = phi ptr [ %116, %115 ], [ %122, %118 ]
  %125 = inttoptr i32 %87 to ptr
  %126 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef %124, ptr noundef nonnull %125) #27
  br label %130

127:                                              ; preds = %109, %106, %77, %65
  %128 = load i32, ptr %4, align 8
  %129 = add i32 %128, 1
  store i32 %129, ptr %4, align 8
  br label %168

130:                                              ; preds = %123, %103, %98, %92
  %131 = phi i32 [ %104, %103 ], [ %87, %123 ], [ -1, %98 ], [ -1, %92 ]
  %132 = load ptr, ptr %2, align 4
  %133 = load i32, ptr %54, align 4
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %150

135:                                              ; preds = %130
  %136 = getelementptr inbounds %struct.regulator_dev, ptr %132, i32 0, i32 14
  %137 = load ptr, ptr %136, align 8
  %138 = icmp eq ptr %137, null
  br i1 %138, label %142, label %139

139:                                              ; preds = %135
  %140 = load ptr, ptr %137, align 4
  %141 = icmp eq ptr %140, null
  br i1 %141, label %142, label %147

142:                                              ; preds = %139, %135
  %143 = load ptr, ptr %132, align 8
  %144 = load ptr, ptr %143, align 4
  %145 = icmp eq ptr %144, null
  %146 = select i1 %145, ptr @.str, ptr %144
  br label %147

147:                                              ; preds = %142, %139
  %148 = phi ptr [ %140, %139 ], [ %146, %142 ]
  %149 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef %148) #27
  br label %158

150:                                              ; preds = %130
  %151 = add i32 %133, -1
  store i32 %151, ptr %54, align 4
  %152 = load i32, ptr %57, align 4
  %153 = icmp ne i32 %152, 0
  %154 = icmp eq i32 %151, 0
  %155 = select i1 %153, i1 %154, i1 false
  br i1 %155, label %156, label %158

156:                                              ; preds = %150
  %157 = tail call fastcc i32 @drms_uA_update(ptr noundef %132) #26
  br label %158

158:                                              ; preds = %156, %150, %147, %62, %49, %36
  %159 = phi i32 [ %50, %49 ], [ %63, %62 ], [ -1, %36 ], [ %131, %147 ], [ %131, %150 ], [ %131, %156 ]
  %160 = load i32, ptr %4, align 8
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %162, label %168

162:                                              ; preds = %158
  %163 = getelementptr inbounds %struct.regulator_dev, ptr %3, i32 0, i32 15
  %164 = load ptr, ptr %163, align 4
  %165 = icmp eq ptr %164, null
  br i1 %165, label %168, label %166

166:                                              ; preds = %162
  %167 = tail call fastcc i32 @_regulator_disable(ptr noundef nonnull %164)
  br label %168

168:                                              ; preds = %166, %162, %158, %127, %11
  %169 = phi i32 [ 0, %127 ], [ %12, %11 ], [ %159, %166 ], [ %159, %162 ], [ %159, %158 ]
  ret i32 %169
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @regulator_disable(ptr nocapture noundef %0) #0 {
  %2 = alloca %struct.ww_acquire_ctx, align 4
  %3 = getelementptr inbounds %struct.regulator, ptr %0, i32 0, i32 9
  %4 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #26
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %2, i8 0, i32 16, i1 false), !annotation !9
  call fastcc void @regulator_lock_dependent(ptr noundef %4, ptr noundef nonnull %2)
  %5 = call fastcc i32 @_regulator_disable(ptr noundef %0)
  %6 = getelementptr inbounds %struct.regulator_dev, ptr %4, i32 0, i32 7, i32 3
  %7 = load i32, ptr %6, align 4
  call fastcc void @regulator_unlock_recursive(ptr noundef %4, i32 noundef %7) #26
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #26
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @_regulator_disable(ptr nocapture noundef %0) unnamed_addr #0 {
  br label %2

2:                                                ; preds = %139, %1
  %3 = phi ptr [ %0, %1 ], [ %141, %139 ]
  %4 = getelementptr inbounds %struct.regulator, ptr %3, i32 0, i32 9
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.regulator_dev, ptr %5, i32 0, i32 2
  %7 = load i32, ptr %6, align 8
  switch i32 %7, label %61 [
    i32 0, label %8
    i32 1, label %22
  ], !prof !16

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.regulator_dev, ptr %5, i32 0, i32 14
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %8
  %13 = load ptr, ptr %10, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %12, %8
  %16 = load ptr, ptr %5, align 8
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  %19 = select i1 %18, ptr @.str, ptr %17
  br label %20

20:                                               ; preds = %15, %12
  %21 = phi ptr [ %13, %12 ], [ %19, %15 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 2853, i32 noundef 9, ptr noundef nonnull @.str.52, ptr noundef %21) #26
  br label %143

22:                                               ; preds = %2
  %23 = getelementptr inbounds %struct.regulator_dev, ptr %5, i32 0, i32 14
  %24 = load ptr, ptr %23, align 8
  %25 = icmp eq ptr %24, null
  br i1 %25, label %68, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.regulation_constraints, ptr %24, i32 0, i32 28
  %28 = load i16, ptr %27, align 4
  %29 = and i16 %28, 1
  %30 = icmp eq i16 %29, 0
  br i1 %30, label %31, label %68

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.regulation_constraints, ptr %24, i32 0, i32 11
  %33 = load i32, ptr %32, align 4
  %34 = and i32 %33, 8
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %66, label %36

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.regulator_dev, ptr %5, i32 0, i32 8
  %38 = tail call i32 @blocking_notifier_call_chain(ptr noundef %37, i32 noundef 1024, ptr noundef null) #26
  %39 = and i32 %38, 32768
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %143

41:                                               ; preds = %36
  %42 = tail call fastcc i32 @_regulator_do_disable(ptr noundef %5)
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %63

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.regulator_dev, ptr %5, i32 0, i32 14
  %46 = load ptr, ptr %45, align 8
  %47 = icmp eq ptr %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr %46, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %56

51:                                               ; preds = %48, %44
  %52 = load ptr, ptr %5, align 8
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, null
  %55 = select i1 %54, ptr @.str, ptr %53
  br label %56

56:                                               ; preds = %51, %48
  %57 = phi ptr [ %49, %48 ], [ %55, %51 ]
  %58 = inttoptr i32 %42 to ptr
  %59 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef %57, ptr noundef nonnull %58) #27
  %60 = tail call i32 @blocking_notifier_call_chain(ptr noundef %37, i32 noundef 2048, ptr noundef null) #26
  br label %143

61:                                               ; preds = %2
  %62 = add i32 %7, -1
  br label %66

63:                                               ; preds = %41
  %64 = tail call i32 @blocking_notifier_call_chain(ptr noundef %37, i32 noundef 128, ptr noundef null) #26
  store i32 0, ptr %6, align 8
  %65 = icmp eq i32 %42, 0
  br i1 %65, label %68, label %143

66:                                               ; preds = %61, %31
  %67 = phi i32 [ %62, %61 ], [ 0, %31 ]
  store i32 %67, ptr %6, align 8
  br label %68

68:                                               ; preds = %66, %63, %26, %22
  %69 = load ptr, ptr %4, align 4
  %70 = getelementptr inbounds %struct.regulator, ptr %3, i32 0, i32 4
  %71 = load i32, ptr %70, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %88

73:                                               ; preds = %68
  %74 = getelementptr inbounds %struct.regulator_dev, ptr %69, i32 0, i32 14
  %75 = load ptr, ptr %74, align 8
  %76 = icmp eq ptr %75, null
  br i1 %76, label %80, label %77

77:                                               ; preds = %73
  %78 = load ptr, ptr %75, align 4
  %79 = icmp eq ptr %78, null
  br i1 %79, label %80, label %85

80:                                               ; preds = %77, %73
  %81 = load ptr, ptr %69, align 8
  %82 = load ptr, ptr %81, align 4
  %83 = icmp eq ptr %82, null
  %84 = select i1 %83, ptr @.str, ptr %82
  br label %85

85:                                               ; preds = %80, %77
  %86 = phi ptr [ %78, %77 ], [ %84, %80 ]
  %87 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef %86) #27
  br label %143

88:                                               ; preds = %68
  %89 = add i32 %71, -1
  store i32 %89, ptr %70, align 4
  %90 = getelementptr inbounds %struct.regulator, ptr %3, i32 0, i32 3
  %91 = load i32, ptr %90, align 4
  %92 = icmp ne i32 %91, 0
  %93 = icmp eq i32 %89, 0
  %94 = select i1 %92, i1 %93, i1 false
  br i1 %94, label %95, label %98

95:                                               ; preds = %88
  %96 = tail call fastcc i32 @drms_uA_update(ptr noundef %69) #26
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %143

98:                                               ; preds = %95, %88
  %99 = getelementptr inbounds %struct.regulator_dev, ptr %5, i32 0, i32 7, i32 3
  %100 = load i32, ptr %99, align 4
  %101 = icmp sgt i32 %100, 1
  br i1 %101, label %102, label %136

102:                                              ; preds = %98
  %103 = getelementptr inbounds %struct.regulator_dev, ptr %5, i32 0, i32 7, i32 1
  %104 = load ptr, ptr %103, align 4
  %105 = getelementptr inbounds %struct.regulator_dev, ptr %5, i32 0, i32 7, i32 2
  %106 = load i32, ptr %105, align 4
  %107 = icmp slt i32 %106, %100
  br i1 %107, label %108, label %123

108:                                              ; preds = %102
  %109 = getelementptr inbounds %struct.regulator_dev, ptr %5, i32 0, i32 14
  %110 = load ptr, ptr %109, align 8
  %111 = icmp eq ptr %110, null
  br i1 %111, label %115, label %112

112:                                              ; preds = %108
  %113 = load ptr, ptr %110, align 4
  %114 = icmp eq ptr %113, null
  br i1 %114, label %115, label %120

115:                                              ; preds = %112, %108
  %116 = load ptr, ptr %5, align 8
  %117 = load ptr, ptr %116, align 4
  %118 = icmp eq ptr %117, null
  %119 = select i1 %118, ptr @.str, ptr %117
  br label %120

120:                                              ; preds = %115, %112
  %121 = phi ptr [ %113, %112 ], [ %119, %115 ]
  %122 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, ptr noundef %121) #27
  br label %143

123:                                              ; preds = %102
  %124 = icmp eq ptr %104, null
  br i1 %124, label %131, label %125

125:                                              ; preds = %123
  %126 = getelementptr inbounds %struct.regulator_coupler, ptr %104, i32 0, i32 3
  %127 = load ptr, ptr %126, align 4
  %128 = icmp eq ptr %127, null
  br i1 %128, label %131, label %129

129:                                              ; preds = %125
  %130 = tail call i32 %127(ptr noundef nonnull %104, ptr noundef %5, i32 noundef 0) #26
  br label %133

131:                                              ; preds = %125, %123
  %132 = tail call i32 @regulator_do_balance_voltage(ptr noundef %5, i32 noundef 0, i1 noundef zeroext false) #26
  br label %133

133:                                              ; preds = %131, %129
  %134 = phi i32 [ %130, %129 ], [ %132, %131 ]
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %143

136:                                              ; preds = %133, %98
  %137 = load i32, ptr %6, align 8
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %143

139:                                              ; preds = %136
  %140 = getelementptr inbounds %struct.regulator_dev, ptr %5, i32 0, i32 15
  %141 = load ptr, ptr %140, align 4
  %142 = icmp eq ptr %141, null
  br i1 %142, label %143, label %2

143:                                              ; preds = %139, %136, %133, %120, %95, %85, %63, %56, %36, %20
  %144 = phi i32 [ -5, %20 ], [ %42, %56 ], [ -1, %120 ], [ -22, %85 ], [ %42, %63 ], [ %96, %95 ], [ %134, %133 ], [ 0, %136 ], [ 0, %139 ], [ -22, %36 ]
  ret i32 %144
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @regulator_force_disable(ptr nocapture noundef %0) #0 {
  %2 = alloca %struct.ww_acquire_ctx, align 4
  %3 = getelementptr inbounds %struct.regulator, ptr %0, i32 0, i32 9
  %4 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #26
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %2, i8 0, i32 16, i1 false), !annotation !9
  call fastcc void @regulator_lock_dependent(ptr noundef %4, ptr noundef nonnull %2)
  %5 = load ptr, ptr %3, align 4
  %6 = getelementptr inbounds %struct.regulator_dev, ptr %5, i32 0, i32 8
  %7 = call i32 @blocking_notifier_call_chain(ptr noundef %6, i32 noundef 1056, ptr noundef null) #26
  %8 = and i32 %7, 32768
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %33

10:                                               ; preds = %1
  %11 = call fastcc i32 @_regulator_do_disable(ptr noundef %5) #26
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %29

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.regulator_dev, ptr %5, i32 0, i32 14
  %15 = load ptr, ptr %14, align 8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %15, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %17, %13
  %21 = load ptr, ptr %5, align 8
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  %24 = select i1 %23, ptr @.str, ptr %22
  br label %25

25:                                               ; preds = %20, %17
  %26 = phi ptr [ %18, %17 ], [ %24, %20 ]
  %27 = inttoptr i32 %11 to ptr
  %28 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, ptr noundef %26, ptr noundef nonnull %27) #27
  br label %29

29:                                               ; preds = %25, %10
  %30 = phi i32 [ 2080, %25 ], [ 160, %10 ]
  %31 = phi i32 [ %11, %25 ], [ 0, %10 ]
  %32 = call i32 @blocking_notifier_call_chain(ptr noundef %6, i32 noundef %30, ptr noundef null) #26
  br label %33

33:                                               ; preds = %29, %1
  %34 = phi i32 [ -22, %1 ], [ %31, %29 ]
  %35 = getelementptr inbounds %struct.regulator_dev, ptr %4, i32 0, i32 7, i32 3
  %36 = load i32, ptr %35, align 4
  %37 = icmp sgt i32 %36, 1
  br i1 %37, label %38, label %69

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.regulator_dev, ptr %4, i32 0, i32 7, i32 1
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.regulator_dev, ptr %4, i32 0, i32 7, i32 2
  %42 = load i32, ptr %41, align 4
  %43 = icmp slt i32 %42, %36
  br i1 %43, label %44, label %59

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.regulator_dev, ptr %4, i32 0, i32 14
  %46 = load ptr, ptr %45, align 8
  %47 = icmp eq ptr %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr %46, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %56

51:                                               ; preds = %48, %44
  %52 = load ptr, ptr %4, align 8
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, null
  %55 = select i1 %54, ptr @.str, ptr %53
  br label %56

56:                                               ; preds = %51, %48
  %57 = phi ptr [ %49, %48 ], [ %55, %51 ]
  %58 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, ptr noundef %57) #27
  br label %69

59:                                               ; preds = %38
  %60 = icmp eq ptr %40, null
  br i1 %60, label %67, label %61

61:                                               ; preds = %59
  %62 = getelementptr inbounds %struct.regulator_coupler, ptr %40, i32 0, i32 3
  %63 = load ptr, ptr %62, align 4
  %64 = icmp eq ptr %63, null
  br i1 %64, label %67, label %65

65:                                               ; preds = %61
  %66 = call i32 %63(ptr noundef nonnull %40, ptr noundef %4, i32 noundef 0) #26
  br label %69

67:                                               ; preds = %61, %59
  %68 = call i32 @regulator_do_balance_voltage(ptr noundef %4, i32 noundef 0, i1 noundef zeroext false) #26
  br label %69

69:                                               ; preds = %67, %65, %56, %33
  %70 = getelementptr inbounds %struct.regulator, ptr %0, i32 0, i32 3
  %71 = load i32, ptr %70, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %75, label %73

73:                                               ; preds = %69
  store i32 0, ptr %70, align 4
  %74 = call fastcc i32 @drms_uA_update(ptr noundef %4)
  br label %75

75:                                               ; preds = %73, %69
  %76 = phi i32 [ %74, %73 ], [ %34, %69 ]
  %77 = getelementptr inbounds %struct.regulator_dev, ptr %4, i32 0, i32 2
  %78 = load i32, ptr %77, align 8
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %86, label %80

80:                                               ; preds = %75
  %81 = getelementptr inbounds %struct.regulator_dev, ptr %4, i32 0, i32 15
  %82 = load ptr, ptr %81, align 4
  %83 = icmp eq ptr %82, null
  br i1 %83, label %86, label %84

84:                                               ; preds = %80
  %85 = call fastcc i32 @_regulator_disable(ptr noundef nonnull %82)
  br label %86

86:                                               ; preds = %84, %80, %75
  %87 = load i32, ptr %35, align 4
  call fastcc void @regulator_unlock_recursive(ptr noundef %4, i32 noundef %87) #26
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #26
  ret i32 %76
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @drms_uA_update(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.ww_acquire_ctx, align 4
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #26
  %4 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 14
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = load ptr, ptr %0, align 8
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  %11 = select i1 %10, ptr @.str, ptr %9
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef %11) #27
  br label %178

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.regulation_constraints, ptr %5, i32 0, i32 11
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, 16
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %178, label %18

18:                                               ; preds = %13
  %19 = load ptr, ptr %0, align 8
  %20 = getelementptr inbounds %struct.regulator_desc, ptr %19, i32 0, i32 10
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.regulator_ops, ptr %21, i32 0, i32 26
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.regulator_ops, ptr %21, i32 0, i32 27
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %178, label %29

29:                                               ; preds = %25, %18
  %30 = getelementptr inbounds %struct.regulator_ops, ptr %21, i32 0, i32 17
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.regulator_ops, ptr %21, i32 0, i32 27
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %178, label %37

37:                                               ; preds = %33, %29
  %38 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 6
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, %38
  br i1 %40, label %55, label %41

41:                                               ; preds = %51, %37
  %42 = phi ptr [ %53, %51 ], [ %39, %37 ]
  %43 = phi i32 [ %52, %51 ], [ 0, %37 ]
  %44 = getelementptr i8, ptr %42, i32 16
  %45 = load i32, ptr %44, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %41
  %48 = getelementptr i8, ptr %42, i32 12
  %49 = load i32, ptr %48, align 4
  %50 = add i32 %49, %43
  br label %51

51:                                               ; preds = %47, %41
  %52 = phi i32 [ %50, %47 ], [ %43, %41 ]
  %53 = load ptr, ptr %42, align 4
  %54 = icmp eq ptr %53, %38
  br i1 %54, label %55, label %41

55:                                               ; preds = %51, %37
  %56 = phi i32 [ 0, %37 ], [ %52, %51 ]
  %57 = getelementptr inbounds %struct.regulation_constraints, ptr %5, i32 0, i32 7
  %58 = load i32, ptr %57, align 4
  %59 = add i32 %58, %56
  %60 = getelementptr inbounds %struct.regulator_ops, ptr %21, i32 0, i32 27
  %61 = load ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %81, label %63

63:                                               ; preds = %55
  %64 = tail call i32 %61(ptr noundef %0, i32 noundef %59) #26
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %178

66:                                               ; preds = %63
  %67 = load ptr, ptr %4, align 8
  %68 = icmp eq ptr %67, null
  br i1 %68, label %72, label %69

69:                                               ; preds = %66
  %70 = load ptr, ptr %67, align 4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %77

72:                                               ; preds = %69, %66
  %73 = load ptr, ptr %0, align 8
  %74 = load ptr, ptr %73, align 4
  %75 = icmp eq ptr %74, null
  %76 = select i1 %75, ptr @.str, ptr %74
  br label %77

77:                                               ; preds = %72, %69
  %78 = phi ptr [ %70, %69 ], [ %76, %72 ]
  %79 = inttoptr i32 %64 to ptr
  %80 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, ptr noundef %78, i32 noundef %59, ptr noundef nonnull %79) #27
  br label %178

81:                                               ; preds = %55
  %82 = tail call i32 @regulator_get_voltage_rdev(ptr noundef %0)
  %83 = icmp slt i32 %82, 1
  br i1 %83, label %84, label %98

84:                                               ; preds = %81
  %85 = load ptr, ptr %4, align 8
  %86 = icmp eq ptr %85, null
  br i1 %86, label %90, label %87

87:                                               ; preds = %84
  %88 = load ptr, ptr %85, align 4
  %89 = icmp eq ptr %88, null
  br i1 %89, label %90, label %95

90:                                               ; preds = %87, %84
  %91 = load ptr, ptr %0, align 8
  %92 = load ptr, ptr %91, align 4
  %93 = icmp eq ptr %92, null
  %94 = select i1 %93, ptr @.str, ptr %92
  br label %95

95:                                               ; preds = %90, %87
  %96 = phi ptr [ %88, %87 ], [ %94, %90 ]
  %97 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef %96) #27
  br label %178

98:                                               ; preds = %81
  %99 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 15
  %100 = load ptr, ptr %99, align 4
  %101 = icmp eq ptr %100, null
  br i1 %101, label %111, label %102

102:                                              ; preds = %98
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #26
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %2, i8 0, i32 16, i1 false) #26, !annotation !9
  %103 = getelementptr inbounds %struct.regulator, ptr %100, i32 0, i32 9
  %104 = load ptr, ptr %103, align 4
  call fastcc void @regulator_lock_dependent(ptr noundef %104, ptr noundef nonnull %2) #26
  %105 = load ptr, ptr %103, align 4
  %106 = call i32 @regulator_get_voltage_rdev(ptr noundef %105) #26
  %107 = load ptr, ptr %103, align 4
  %108 = getelementptr inbounds %struct.regulator_dev, ptr %107, i32 0, i32 7, i32 3
  %109 = load i32, ptr %108, align 4
  call fastcc void @regulator_unlock_recursive(ptr noundef %107, i32 noundef %109) #26
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #26
  %110 = icmp slt i32 %106, 1
  br i1 %110, label %111, label %129

111:                                              ; preds = %102, %98
  %112 = load ptr, ptr %4, align 8
  %113 = getelementptr inbounds %struct.regulation_constraints, ptr %112, i32 0, i32 12
  %114 = load i32, ptr %113, align 4
  %115 = icmp slt i32 %114, 1
  br i1 %115, label %116, label %129

116:                                              ; preds = %111
  %117 = icmp eq ptr %112, null
  br i1 %117, label %121, label %118

118:                                              ; preds = %116
  %119 = load ptr, ptr %112, align 4
  %120 = icmp eq ptr %119, null
  br i1 %120, label %121, label %126

121:                                              ; preds = %118, %116
  %122 = load ptr, ptr %0, align 8
  %123 = load ptr, ptr %122, align 4
  %124 = icmp eq ptr %123, null
  %125 = select i1 %124, ptr @.str, ptr %123
  br label %126

126:                                              ; preds = %121, %118
  %127 = phi ptr [ %119, %118 ], [ %125, %121 ]
  %128 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef %127) #27
  br label %178

129:                                              ; preds = %111, %102
  %130 = phi i32 [ %114, %111 ], [ %106, %102 ]
  %131 = load ptr, ptr %0, align 8
  %132 = getelementptr inbounds %struct.regulator_desc, ptr %131, i32 0, i32 10
  %133 = load ptr, ptr %132, align 4
  %134 = getelementptr inbounds %struct.regulator_ops, ptr %133, i32 0, i32 26
  %135 = load ptr, ptr %134, align 4
  %136 = call i32 %135(ptr noundef %0, i32 noundef %130, i32 noundef %82, i32 noundef %59) #26
  store i32 %136, ptr %3, align 4
  %137 = call fastcc i32 @regulator_mode_constrain(ptr noundef %0, ptr noundef nonnull %3)
  %138 = icmp slt i32 %137, 0
  br i1 %138, label %139, label %154

139:                                              ; preds = %129
  %140 = load ptr, ptr %4, align 8
  %141 = icmp eq ptr %140, null
  br i1 %141, label %145, label %142

142:                                              ; preds = %139
  %143 = load ptr, ptr %140, align 4
  %144 = icmp eq ptr %143, null
  br i1 %144, label %145, label %150

145:                                              ; preds = %142, %139
  %146 = load ptr, ptr %0, align 8
  %147 = load ptr, ptr %146, align 4
  %148 = icmp eq ptr %147, null
  %149 = select i1 %148, ptr @.str, ptr %147
  br label %150

150:                                              ; preds = %145, %142
  %151 = phi ptr [ %143, %142 ], [ %149, %145 ]
  %152 = inttoptr i32 %137 to ptr
  %153 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef %151, i32 noundef %59, i32 noundef %130, i32 noundef %82, ptr noundef nonnull %152) #27
  br label %178

154:                                              ; preds = %129
  %155 = load ptr, ptr %0, align 8
  %156 = getelementptr inbounds %struct.regulator_desc, ptr %155, i32 0, i32 10
  %157 = load ptr, ptr %156, align 4
  %158 = getelementptr inbounds %struct.regulator_ops, ptr %157, i32 0, i32 17
  %159 = load ptr, ptr %158, align 4
  %160 = load i32, ptr %3, align 4
  %161 = call i32 %159(ptr noundef %0, i32 noundef %160) #26
  %162 = icmp slt i32 %161, 0
  br i1 %162, label %163, label %178

163:                                              ; preds = %154
  %164 = load ptr, ptr %4, align 8
  %165 = icmp eq ptr %164, null
  br i1 %165, label %169, label %166

166:                                              ; preds = %163
  %167 = load ptr, ptr %164, align 4
  %168 = icmp eq ptr %167, null
  br i1 %168, label %169, label %174

169:                                              ; preds = %166, %163
  %170 = load ptr, ptr %0, align 8
  %171 = load ptr, ptr %170, align 4
  %172 = icmp eq ptr %171, null
  %173 = select i1 %172, ptr @.str, ptr %171
  br label %174

174:                                              ; preds = %169, %166
  %175 = phi ptr [ %167, %166 ], [ %173, %169 ]
  %176 = inttoptr i32 %161 to ptr
  %177 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, ptr noundef %175, i32 noundef %160, ptr noundef nonnull %176) #27
  br label %178

178:                                              ; preds = %174, %154, %150, %126, %95, %77, %63, %33, %25, %13, %7
  %179 = phi i32 [ -22, %95 ], [ -22, %126 ], [ %137, %150 ], [ 0, %13 ], [ 0, %25 ], [ -22, %33 ], [ %64, %77 ], [ %64, %63 ], [ %161, %174 ], [ %161, %154 ], [ 0, %7 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #26
  ret i32 %179
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @regulator_disable_deferred(ptr nocapture noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.ww_acquire_ctx, align 4
  %4 = icmp eq i32 %1, 0
  %5 = getelementptr inbounds %struct.regulator, ptr %0, i32 0, i32 9
  %6 = load ptr, ptr %5, align 4
  br i1 %4, label %7, label %11

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #26
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %3, i8 0, i32 16, i1 false) #26, !annotation !9
  call fastcc void @regulator_lock_dependent(ptr noundef %6, ptr noundef nonnull %3) #26
  %8 = call fastcc i32 @_regulator_disable(ptr noundef %0) #26
  %9 = getelementptr inbounds %struct.regulator_dev, ptr %6, i32 0, i32 7, i32 3
  %10 = load i32, ptr %9, align 4
  call fastcc void @regulator_unlock_recursive(ptr noundef %6, i32 noundef %10) #26
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #26
  br label %35

11:                                               ; preds = %2
  tail call fastcc void @regulator_lock(ptr noundef %6)
  %12 = getelementptr inbounds %struct.regulator, ptr %0, i32 0, i32 5
  %13 = load i32, ptr %12, align 4
  %14 = add i32 %13, 1
  store i32 %14, ptr %12, align 4
  %15 = load ptr, ptr @system_power_efficient_wq, align 4
  %16 = getelementptr inbounds %struct.regulator_dev, ptr %6, i32 0, i32 18
  %17 = tail call i32 @__msecs_to_jiffies(i32 noundef %1) #26
  %18 = tail call zeroext i1 @mod_delayed_work_on(i32 noundef 16, ptr noundef %15, ptr noundef %16, i32 noundef %17) #26
  tail call void @mutex_lock(ptr noundef nonnull @regulator_nesting_mutex) #26
  %19 = getelementptr inbounds %struct.regulator_dev, ptr %6, i32 0, i32 11
  %20 = load i32, ptr %19, align 4
  %21 = add i32 %20, -1
  store i32 %21, ptr %19, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %11
  %24 = getelementptr inbounds %struct.regulator_dev, ptr %6, i32 0, i32 10
  store ptr null, ptr %24, align 8
  %25 = getelementptr inbounds %struct.regulator_dev, ptr %6, i32 0, i32 9
  tail call void @ww_mutex_unlock(ptr noundef %25) #26
  %26 = load i32, ptr %19, align 4
  br label %27

27:                                               ; preds = %23, %11
  %28 = phi i32 [ %26, %23 ], [ %21, %11 ]
  %29 = icmp slt i32 %28, 0
  %30 = load i1, ptr @regulator_unlock.__already_done, align 1
  %31 = xor i1 %30, true
  %32 = select i1 %29, i1 %31, i1 false
  br i1 %32, label %33, label %34, !prof !11

33:                                               ; preds = %27
  store i1 true, ptr @regulator_unlock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 204, i32 noundef 9, ptr noundef null) #26
  br label %34

34:                                               ; preds = %33, %27
  tail call void @mutex_unlock(ptr noundef nonnull @regulator_nesting_mutex) #26
  br label %35

35:                                               ; preds = %34, %7
  %36 = phi i32 [ 0, %34 ], [ %8, %7 ]
  ret i32 %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @regulator_lock(ptr noundef %0) unnamed_addr #0 {
  tail call void @mutex_lock(ptr noundef nonnull @regulator_nesting_mutex) #26
  %2 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 9
  %3 = tail call i32 @ww_mutex_trylock(ptr noundef %2, ptr noundef null) #26
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @llvm.thread.pointer() #26
  br label %19

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 10
  %9 = load ptr, ptr %8, align 8
  %10 = tail call ptr @llvm.thread.pointer() #26
  %11 = icmp eq ptr %9, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 11
  %14 = load i32, ptr %13, align 4
  %15 = add i32 %14, 1
  store i32 %15, ptr %13, align 4
  br label %25

16:                                               ; preds = %7
  tail call void @mutex_unlock(ptr noundef nonnull @regulator_nesting_mutex) #26
  %17 = tail call i32 @ww_mutex_lock(ptr noundef %2, ptr noundef null) #26
  tail call void @mutex_lock(ptr noundef nonnull @regulator_nesting_mutex) #26
  %18 = icmp eq i32 %17, -35
  br i1 %18, label %25, label %19

19:                                               ; preds = %16, %5
  %20 = phi ptr [ %6, %5 ], [ %10, %16 ]
  %21 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 11
  %22 = load i32, ptr %21, align 4
  %23 = add i32 %22, 1
  store i32 %23, ptr %21, align 4
  %24 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 10
  store ptr %20, ptr %24, align 8
  br label %25

25:                                               ; preds = %19, %16, %12
  tail call void @mutex_unlock(ptr noundef nonnull @regulator_nesting_mutex) #26
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @regulator_unlock(ptr noundef %0) unnamed_addr #0 {
  tail call void @mutex_lock(ptr noundef nonnull @regulator_nesting_mutex) #26
  %2 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 11
  %3 = load i32, ptr %2, align 4
  %4 = add i32 %3, -1
  store i32 %4, ptr %2, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 10
  store ptr null, ptr %7, align 8
  %8 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 9
  tail call void @ww_mutex_unlock(ptr noundef %8) #26
  %9 = load i32, ptr %2, align 4
  br label %10

10:                                               ; preds = %6, %1
  %11 = phi i32 [ %9, %6 ], [ %4, %1 ]
  %12 = icmp slt i32 %11, 0
  %13 = load i1, ptr @regulator_unlock.__already_done, align 1
  %14 = xor i1 %13, true
  %15 = select i1 %12, i1 %14, i1 false
  br i1 %15, label %16, label %17, !prof !11

16:                                               ; preds = %10
  store i1 true, ptr @regulator_unlock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 204, i32 noundef 9, ptr noundef null) #26
  br label %17

17:                                               ; preds = %16, %10
  tail call void @mutex_unlock(ptr noundef nonnull @regulator_nesting_mutex) #26
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @regulator_is_enabled(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.regulator, ptr %0, i32 0, i32 2
  %3 = load i8, ptr %2, align 4
  %4 = and i8 %3, 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %47

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.regulator, ptr %0, i32 0, i32 9
  %8 = load ptr, ptr %7, align 4
  tail call fastcc void @regulator_lock(ptr noundef %8)
  %9 = load ptr, ptr %7, align 4
  %10 = getelementptr inbounds %struct.regulator_dev, ptr %9, i32 0, i32 21
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.regulator_dev, ptr %9, i32 0, i32 22
  %15 = load i8, ptr %14, align 8
  %16 = and i8 %15, 1
  %17 = zext i8 %16 to i32
  br label %28

18:                                               ; preds = %6
  %19 = load ptr, ptr %9, align 8
  %20 = getelementptr inbounds %struct.regulator_desc, ptr %19, i32 0, i32 10
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.regulator_ops, ptr %21, i32 0, i32 16
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %18
  %26 = tail call i32 %23(ptr noundef %9) #26
  %27 = load ptr, ptr %7, align 4
  br label %28

28:                                               ; preds = %25, %18, %13
  %29 = phi ptr [ %9, %13 ], [ %27, %25 ], [ %9, %18 ]
  %30 = phi i32 [ %17, %13 ], [ %26, %25 ], [ 1, %18 ]
  tail call void @mutex_lock(ptr noundef nonnull @regulator_nesting_mutex) #26
  %31 = getelementptr inbounds %struct.regulator_dev, ptr %29, i32 0, i32 11
  %32 = load i32, ptr %31, align 4
  %33 = add i32 %32, -1
  store i32 %33, ptr %31, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %28
  %36 = getelementptr inbounds %struct.regulator_dev, ptr %29, i32 0, i32 10
  store ptr null, ptr %36, align 8
  %37 = getelementptr inbounds %struct.regulator_dev, ptr %29, i32 0, i32 9
  tail call void @ww_mutex_unlock(ptr noundef %37) #26
  %38 = load i32, ptr %31, align 4
  br label %39

39:                                               ; preds = %35, %28
  %40 = phi i32 [ %38, %35 ], [ %33, %28 ]
  %41 = icmp slt i32 %40, 0
  %42 = load i1, ptr @regulator_unlock.__already_done, align 1
  %43 = xor i1 %42, true
  %44 = select i1 %41, i1 %43, i1 false
  br i1 %44, label %45, label %46, !prof !11

45:                                               ; preds = %39
  store i1 true, ptr @regulator_unlock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 204, i32 noundef 9, ptr noundef null) #26
  br label %46

46:                                               ; preds = %45, %39
  tail call void @mutex_unlock(ptr noundef nonnull @regulator_nesting_mutex) #26
  br label %47

47:                                               ; preds = %46, %1
  %48 = phi i32 [ %30, %46 ], [ 1, %1 ]
  ret i32 %48
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local i32 @regulator_count_voltages(ptr nocapture noundef readonly %0) #6 {
  br label %2

2:                                                ; preds = %15, %1
  %3 = phi ptr [ %0, %1 ], [ %17, %15 ]
  %4 = getelementptr inbounds %struct.regulator, ptr %3, i32 0, i32 9
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.regulator_desc, ptr %6, i32 0, i32 8
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %19

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.regulator_dev, ptr %5, i32 0, i32 22
  %12 = load i8, ptr %11, align 8
  %13 = and i8 %12, 2
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.regulator_dev, ptr %5, i32 0, i32 15
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %2

19:                                               ; preds = %15, %10, %2
  %20 = phi i32 [ %8, %2 ], [ -22, %15 ], [ -22, %10 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @regulator_list_voltage(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.regulator, ptr %0, i32 0, i32 9
  %4 = load ptr, ptr %3, align 4
  %5 = tail call fastcc i32 @_regulator_list_voltage(ptr noundef %4, i32 noundef %1, i32 noundef 1)
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @_regulator_list_voltage(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 8
  %5 = getelementptr inbounds %struct.regulator_desc, ptr %4, i32 0, i32 10
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.regulator_desc, ptr %4, i32 0, i32 17
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.regulator_desc, ptr %4, i32 0, i32 8
  %12 = load i32, ptr %11, align 4
  %13 = icmp ne i32 %12, 1
  %14 = icmp ne i32 %1, 0
  %15 = or i1 %14, %13
  br i1 %15, label %16, label %77

16:                                               ; preds = %10, %3
  %17 = load ptr, ptr %6, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %50, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.regulator_desc, ptr %4, i32 0, i32 8
  %21 = load i32, ptr %20, align 4
  %22 = icmp ugt i32 %21, %1
  br i1 %22, label %23, label %77

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.regulator_desc, ptr %4, i32 0, i32 16
  %25 = load i32, ptr %24, align 4
  %26 = icmp ugt i32 %25, %1
  br i1 %26, label %77, label %27

27:                                               ; preds = %23
  %28 = icmp eq i32 %2, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %27
  %30 = tail call i32 %17(ptr noundef %0, i32 noundef %1) #26
  br label %63

31:                                               ; preds = %27
  tail call fastcc void @regulator_lock(ptr noundef %0)
  %32 = load ptr, ptr %6, align 4
  %33 = tail call i32 %32(ptr noundef %0, i32 noundef %1) #26
  tail call void @mutex_lock(ptr noundef nonnull @regulator_nesting_mutex) #26
  %34 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 11
  %35 = load i32, ptr %34, align 4
  %36 = add i32 %35, -1
  store i32 %36, ptr %34, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %31
  %39 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 10
  store ptr null, ptr %39, align 8
  %40 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 9
  tail call void @ww_mutex_unlock(ptr noundef %40) #26
  %41 = load i32, ptr %34, align 4
  br label %42

42:                                               ; preds = %38, %31
  %43 = phi i32 [ %41, %38 ], [ %36, %31 ]
  %44 = icmp slt i32 %43, 0
  %45 = load i1, ptr @regulator_unlock.__already_done, align 1
  %46 = xor i1 %45, true
  %47 = select i1 %44, i1 %46, i1 false
  br i1 %47, label %48, label %49, !prof !11

48:                                               ; preds = %42
  store i1 true, ptr @regulator_unlock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 204, i32 noundef 9, ptr noundef null) #26
  br label %49

49:                                               ; preds = %48, %42
  tail call void @mutex_unlock(ptr noundef nonnull @regulator_nesting_mutex) #26
  br label %63

50:                                               ; preds = %16
  %51 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 22
  %52 = load i8, ptr %51, align 8
  %53 = and i8 %52, 2
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %77, label %55

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 15
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %77, label %59

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.regulator, ptr %57, i32 0, i32 9
  %61 = load ptr, ptr %60, align 4
  %62 = tail call fastcc i32 @_regulator_list_voltage(ptr noundef %61, i32 noundef %1, i32 noundef %2)
  br label %63

63:                                               ; preds = %59, %49, %29
  %64 = phi i32 [ %33, %49 ], [ %62, %59 ], [ %30, %29 ]
  %65 = icmp sgt i32 %64, 0
  br i1 %65, label %66, label %77

66:                                               ; preds = %63
  %67 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 14
  %68 = load ptr, ptr %67, align 8
  %69 = getelementptr inbounds %struct.regulation_constraints, ptr %68, i32 0, i32 1
  %70 = load i32, ptr %69, align 4
  %71 = icmp slt i32 %64, %70
  br i1 %71, label %77, label %72

72:                                               ; preds = %66
  %73 = getelementptr inbounds %struct.regulation_constraints, ptr %68, i32 0, i32 2
  %74 = load i32, ptr %73, align 4
  %75 = icmp sgt i32 %64, %74
  %76 = select i1 %75, i32 0, i32 %64
  br label %77

77:                                               ; preds = %72, %66, %63, %55, %50, %23, %19, %10
  %78 = phi i32 [ %8, %10 ], [ -22, %19 ], [ 0, %23 ], [ -22, %55 ], [ -22, %50 ], [ %76, %72 ], [ %64, %63 ], [ 0, %66 ]
  ret i32 %78
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local ptr @regulator_get_regmap(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.regulator, ptr %0, i32 0, i32 9
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.regulator_dev, ptr %3, i32 0, i32 17
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  %7 = select i1 %6, ptr inttoptr (i32 -95 to ptr), ptr %5
  ret ptr %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @regulator_get_hardware_vsel_register(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) #7 {
  %4 = getelementptr inbounds %struct.regulator, ptr %0, i32 0, i32 9
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.regulator_desc, ptr %6, i32 0, i32 10
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.regulator_ops, ptr %8, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, @regulator_set_voltage_sel_regmap
  br i1 %11, label %12, label %18

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.regulator_desc, ptr %6, i32 0, i32 27
  %14 = load i32, ptr %13, align 4
  store i32 %14, ptr %1, align 4
  %15 = load ptr, ptr %5, align 8
  %16 = getelementptr inbounds %struct.regulator_desc, ptr %15, i32 0, i32 28
  %17 = load i32, ptr %16, align 4
  store i32 %17, ptr %2, align 4
  br label %18

18:                                               ; preds = %12, %3
  %19 = phi i32 [ 0, %12 ], [ -95, %3 ]
  ret i32 %19
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_voltage_sel_regmap(ptr noundef, i32 noundef) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @regulator_list_hardware_vsel(ptr nocapture noundef readonly %0, i32 noundef %1) #3 {
  %3 = getelementptr inbounds %struct.regulator, ptr %0, i32 0, i32 9
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.regulator_desc, ptr %5, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.regulator_desc, ptr %5, i32 0, i32 8
  %9 = load i32, ptr %8, align 4
  %10 = icmp ugt i32 %9, %1
  br i1 %10, label %11, label %20

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.regulator_desc, ptr %5, i32 0, i32 16
  %13 = load i32, ptr %12, align 4
  %14 = icmp ugt i32 %13, %1
  br i1 %14, label %20, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.regulator_ops, ptr %7, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, @regulator_set_voltage_sel_regmap
  %19 = select i1 %18, i32 %1, i32 -95
  br label %20

20:                                               ; preds = %15, %11, %2
  %21 = phi i32 [ -22, %2 ], [ 0, %11 ], [ %19, %15 ]
  ret i32 %21
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @regulator_get_linear_step(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.regulator, ptr %0, i32 0, i32 9
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.regulator_desc, ptr %4, i32 0, i32 15
  %6 = load i32, ptr %5, align 4
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @regulator_is_supported_voltage(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.ww_acquire_ctx, align 4
  %5 = getelementptr inbounds %struct.regulator, ptr %0, i32 0, i32 9
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.regulator_dev, ptr %6, i32 0, i32 14
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %17

10:                                               ; preds = %3
  %11 = load ptr, ptr %6, align 8
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  %14 = select i1 %13, ptr @.str, ptr %12
  %15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef %14) #27
  %16 = load ptr, ptr %5, align 4
  br label %22

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.regulation_constraints, ptr %8, i32 0, i32 11
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %19, 1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %35

22:                                               ; preds = %17, %10
  %23 = phi ptr [ %16, %10 ], [ %6, %17 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #26
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %4, i8 0, i32 16, i1 false) #26, !annotation !9
  call fastcc void @regulator_lock_dependent(ptr noundef %23, ptr noundef nonnull %4) #26
  %24 = load ptr, ptr %5, align 4
  %25 = call i32 @regulator_get_voltage_rdev(ptr noundef %24) #26
  %26 = load ptr, ptr %5, align 4
  %27 = getelementptr inbounds %struct.regulator_dev, ptr %26, i32 0, i32 7, i32 3
  %28 = load i32, ptr %27, align 4
  call fastcc void @regulator_unlock_recursive(ptr noundef %26, i32 noundef %28) #26
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #26
  %29 = icmp sgt i32 %25, -1
  br i1 %29, label %30, label %89

30:                                               ; preds = %22
  %31 = icmp sge i32 %25, %1
  %32 = icmp sle i32 %25, %2
  %33 = and i1 %31, %32
  %34 = zext i1 %33 to i32
  br label %89

35:                                               ; preds = %17
  %36 = load ptr, ptr %6, align 8
  %37 = getelementptr inbounds %struct.regulator_desc, ptr %36, i32 0, i32 7
  %38 = load i8, ptr %37, align 4
  %39 = and i8 %38, 1
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.regulator_desc, ptr %36, i32 0, i32 8
  %43 = load i32, ptr %42, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %54, label %71

45:                                               ; preds = %35
  %46 = getelementptr inbounds %struct.regulation_constraints, ptr %8, i32 0, i32 1
  %47 = load i32, ptr %46, align 4
  %48 = icmp sgt i32 %47, %1
  br i1 %48, label %89, label %49

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.regulation_constraints, ptr %8, i32 0, i32 2
  %51 = load i32, ptr %50, align 4
  %52 = icmp sge i32 %51, %2
  %53 = zext i1 %52 to i32
  br label %89

54:                                               ; preds = %64, %41
  %55 = phi ptr [ %66, %64 ], [ %6, %41 ]
  %56 = getelementptr inbounds %struct.regulator_dev, ptr %55, i32 0, i32 22
  %57 = load i8, ptr %56, align 8
  %58 = and i8 %57, 2
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %89, label %60

60:                                               ; preds = %54
  %61 = getelementptr inbounds %struct.regulator_dev, ptr %55, i32 0, i32 15
  %62 = load ptr, ptr %61, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %89, label %64

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.regulator, ptr %62, i32 0, i32 9
  %66 = load ptr, ptr %65, align 4
  %67 = load ptr, ptr %66, align 8
  %68 = getelementptr inbounds %struct.regulator_desc, ptr %67, i32 0, i32 8
  %69 = load i32, ptr %68, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %54, label %71

71:                                               ; preds = %64, %41
  %72 = phi i32 [ %43, %41 ], [ %69, %64 ]
  %73 = icmp sgt i32 %72, 0
  br i1 %73, label %74, label %89

74:                                               ; preds = %71
  %75 = tail call fastcc i32 @_regulator_list_voltage(ptr noundef %6, i32 noundef 0, i32 noundef 1) #26
  %76 = icmp slt i32 %75, %1
  %77 = icmp sgt i32 %75, %2
  %78 = or i1 %76, %77
  br i1 %78, label %79, label %89

79:                                               ; preds = %83, %74
  %80 = phi i32 [ %81, %83 ], [ 0, %74 ]
  %81 = add nuw nsw i32 %80, 1
  %82 = icmp eq i32 %81, %72
  br i1 %82, label %89, label %83

83:                                               ; preds = %79
  %84 = load ptr, ptr %5, align 4
  %85 = tail call fastcc i32 @_regulator_list_voltage(ptr noundef %84, i32 noundef %81, i32 noundef 1) #26
  %86 = icmp slt i32 %85, %1
  %87 = icmp sgt i32 %85, %2
  %88 = or i1 %86, %87
  br i1 %88, label %79, label %89

89:                                               ; preds = %83, %79, %74, %71, %60, %54, %49, %45, %30, %22
  %90 = phi i32 [ %34, %30 ], [ %25, %22 ], [ 0, %45 ], [ %53, %49 ], [ 0, %71 ], [ 1, %74 ], [ 1, %83 ], [ 0, %79 ], [ 0, %60 ], [ 0, %54 ]
  ret i32 %90
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @regulator_get_voltage(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca %struct.ww_acquire_ctx, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #26
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %2, i8 0, i32 16, i1 false), !annotation !9
  %3 = getelementptr inbounds %struct.regulator, ptr %0, i32 0, i32 9
  %4 = load ptr, ptr %3, align 4
  call fastcc void @regulator_lock_dependent(ptr noundef %4, ptr noundef nonnull %2)
  %5 = load ptr, ptr %3, align 4
  %6 = call i32 @regulator_get_voltage_rdev(ptr noundef %5)
  %7 = load ptr, ptr %3, align 4
  %8 = getelementptr inbounds %struct.regulator_dev, ptr %7, i32 0, i32 7, i32 3
  %9 = load i32, ptr %8, align 4
  call fastcc void @regulator_unlock_recursive(ptr noundef %7, i32 noundef %9) #26
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #26
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @regulator_set_voltage_rdev(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 15
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %87, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.regulator, ptr %6, i32 0, i32 9
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.regulator_dev, ptr %10, i32 0, i32 14
  %12 = load ptr, ptr %11, align 8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %8
  %15 = load ptr, ptr %10, align 8
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  %18 = select i1 %17, ptr @.str, ptr %16
  %19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef %18) #27
  br label %87

20:                                               ; preds = %8
  %21 = getelementptr inbounds %struct.regulation_constraints, ptr %12, i32 0, i32 11
  %22 = load i32, ptr %21, align 4
  %23 = and i32 %22, 1
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %87, label %25

25:                                               ; preds = %20
  %26 = load ptr, ptr %0, align 8
  %27 = getelementptr inbounds %struct.regulator_desc, ptr %26, i32 0, i32 19
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, 0
  %30 = getelementptr inbounds %struct.regulator_desc, ptr %26, i32 0, i32 10
  %31 = load ptr, ptr %30, align 4
  br i1 %29, label %32, label %40

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.regulator_ops, ptr %31, i32 0, i32 4
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %87

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.regulator_ops, ptr %31, i32 0, i32 5
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %87

40:                                               ; preds = %36, %25
  %41 = getelementptr inbounds %struct.regulator_ops, ptr %31, i32 0, i32 2
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %46, label %44

44:                                               ; preds = %40
  %45 = tail call i32 %42(ptr noundef %0, i32 noundef %1, i32 noundef %2) #26
  br label %61

46:                                               ; preds = %40
  %47 = load ptr, ptr %31, align 4
  %48 = icmp eq ptr %47, @regulator_list_voltage_linear
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  %50 = tail call i32 @regulator_map_voltage_linear(ptr noundef %0, i32 noundef %1, i32 noundef %2) #26
  br label %61

51:                                               ; preds = %46
  %52 = icmp eq ptr %47, @regulator_list_voltage_linear_range
  br i1 %52, label %53, label %55

53:                                               ; preds = %51
  %54 = tail call i32 @regulator_map_voltage_linear_range(ptr noundef %0, i32 noundef %1, i32 noundef %2) #26
  br label %61

55:                                               ; preds = %51
  %56 = icmp eq ptr %47, @regulator_list_voltage_pickable_linear_range
  br i1 %56, label %57, label %59

57:                                               ; preds = %55
  %58 = tail call i32 @regulator_map_voltage_pickable_linear_range(ptr noundef %0, i32 noundef %1, i32 noundef %2) #26
  br label %61

59:                                               ; preds = %55
  %60 = tail call i32 @regulator_map_voltage_iterate(ptr noundef %0, i32 noundef %1, i32 noundef %2) #26
  br label %61

61:                                               ; preds = %59, %57, %53, %49, %44
  %62 = phi i32 [ %45, %44 ], [ %50, %49 ], [ %54, %53 ], [ %58, %57 ], [ %60, %59 ]
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %162, label %64

64:                                               ; preds = %61
  %65 = tail call fastcc i32 @_regulator_list_voltage(ptr noundef %0, i32 noundef %62, i32 noundef 0)
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %162, label %67

67:                                               ; preds = %64
  %68 = load ptr, ptr %0, align 8
  %69 = getelementptr inbounds %struct.regulator_desc, ptr %68, i32 0, i32 19
  %70 = load i32, ptr %69, align 4
  %71 = add i32 %70, %65
  %72 = load ptr, ptr %5, align 4
  %73 = getelementptr inbounds %struct.regulator, ptr %72, i32 0, i32 9
  %74 = load ptr, ptr %73, align 4
  %75 = tail call i32 @regulator_get_voltage_rdev(ptr noundef %74)
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %162, label %77

77:                                               ; preds = %67
  %78 = sub i32 %71, %75
  %79 = icmp sgt i32 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %77
  %81 = load ptr, ptr %5, align 4
  %82 = tail call fastcc i32 @regulator_set_voltage_unlocked(ptr noundef %81, i32 noundef %71, i32 noundef 2147483647, i32 noundef %3)
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %80
  %85 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 13
  %86 = inttoptr i32 %82 to ptr
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %85, ptr noundef nonnull @.str.11, ptr noundef nonnull %86) #27
  br label %162

87:                                               ; preds = %80, %77, %36, %32, %20, %14, %4
  %88 = phi i32 [ %78, %80 ], [ %78, %77 ], [ 0, %32 ], [ 0, %36 ], [ 0, %20 ], [ 0, %4 ], [ 0, %14 ]
  %89 = phi i32 [ %71, %80 ], [ %71, %77 ], [ 0, %32 ], [ 0, %36 ], [ 0, %20 ], [ 0, %4 ], [ 0, %14 ]
  %90 = icmp eq i32 %3, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %87
  %92 = tail call fastcc i32 @_regulator_do_set_voltage(ptr noundef %0, i32 noundef %1, i32 noundef %2)
  br label %150

93:                                               ; preds = %87
  %94 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 14
  %95 = load ptr, ptr %94, align 8
  %96 = icmp eq ptr %95, null
  br i1 %96, label %162, label %97

97:                                               ; preds = %93
  switch i32 %3, label %162 [
    i32 2, label %98
    i32 3, label %100
    i32 4, label %102
  ]

98:                                               ; preds = %97
  %99 = getelementptr inbounds %struct.regulation_constraints, ptr %95, i32 0, i32 15
  br label %104

100:                                              ; preds = %97
  %101 = getelementptr inbounds %struct.regulation_constraints, ptr %95, i32 0, i32 14
  br label %104

102:                                              ; preds = %97
  %103 = getelementptr inbounds %struct.regulation_constraints, ptr %95, i32 0, i32 13
  br label %104

104:                                              ; preds = %102, %100, %98
  %105 = phi ptr [ %103, %102 ], [ %101, %100 ], [ %99, %98 ]
  %106 = icmp eq ptr %105, null
  br i1 %106, label %162, label %107

107:                                              ; preds = %104
  %108 = getelementptr inbounds %struct.regulator_state, ptr %105, i32 0, i32 1
  %109 = load i32, ptr %108, align 4
  %110 = tail call i32 @llvm.smax.i32(i32 %109, i32 %1) #26
  %111 = getelementptr inbounds %struct.regulator_state, ptr %105, i32 0, i32 2
  %112 = load i32, ptr %111, align 4
  %113 = tail call i32 @llvm.smin.i32(i32 %112, i32 %2) #26
  %114 = load ptr, ptr %0, align 8
  %115 = getelementptr inbounds %struct.regulator_desc, ptr %114, i32 0, i32 10
  %116 = load ptr, ptr %115, align 4
  %117 = getelementptr inbounds %struct.regulator_ops, ptr %116, i32 0, i32 2
  %118 = load ptr, ptr %117, align 4
  %119 = icmp eq ptr %118, null
  br i1 %119, label %122, label %120

120:                                              ; preds = %107
  %121 = tail call i32 %118(ptr noundef %0, i32 noundef %110, i32 noundef %113) #26
  br label %137

122:                                              ; preds = %107
  %123 = load ptr, ptr %116, align 4
  %124 = icmp eq ptr %123, @regulator_list_voltage_linear
  br i1 %124, label %125, label %127

125:                                              ; preds = %122
  %126 = tail call i32 @regulator_map_voltage_linear(ptr noundef %0, i32 noundef %110, i32 noundef %113) #26
  br label %137

127:                                              ; preds = %122
  %128 = icmp eq ptr %123, @regulator_list_voltage_linear_range
  br i1 %128, label %129, label %131

129:                                              ; preds = %127
  %130 = tail call i32 @regulator_map_voltage_linear_range(ptr noundef %0, i32 noundef %110, i32 noundef %113) #26
  br label %137

131:                                              ; preds = %127
  %132 = icmp eq ptr %123, @regulator_list_voltage_pickable_linear_range
  br i1 %132, label %133, label %135

133:                                              ; preds = %131
  %134 = tail call i32 @regulator_map_voltage_pickable_linear_range(ptr noundef %0, i32 noundef %110, i32 noundef %113) #26
  br label %137

135:                                              ; preds = %131
  %136 = tail call i32 @regulator_map_voltage_iterate(ptr noundef %0, i32 noundef %110, i32 noundef %113) #26
  br label %137

137:                                              ; preds = %135, %133, %129, %125, %120
  %138 = phi i32 [ %121, %120 ], [ %126, %125 ], [ %130, %129 ], [ %134, %133 ], [ %136, %135 ]
  %139 = icmp slt i32 %138, 0
  br i1 %139, label %162, label %140

140:                                              ; preds = %137
  %141 = load ptr, ptr %0, align 8
  %142 = getelementptr inbounds %struct.regulator_desc, ptr %141, i32 0, i32 10
  %143 = load ptr, ptr %142, align 4
  %144 = load ptr, ptr %143, align 4
  %145 = tail call i32 %144(ptr noundef %0, i32 noundef %138) #26
  %146 = icmp slt i32 %145, %110
  %147 = icmp sgt i32 %145, %113
  %148 = select i1 %146, i1 true, i1 %147
  br i1 %148, label %150, label %149

149:                                              ; preds = %140
  store i32 %145, ptr %105, align 4
  br label %150

150:                                              ; preds = %149, %140, %91
  %151 = phi i32 [ %92, %91 ], [ 0, %149 ], [ 0, %140 ]
  %152 = icmp sgt i32 %151, -1
  %153 = icmp slt i32 %88, 0
  %154 = select i1 %152, i1 %153, i1 false
  br i1 %154, label %155, label %162

155:                                              ; preds = %150
  %156 = load ptr, ptr %5, align 4
  %157 = tail call fastcc i32 @regulator_set_voltage_unlocked(ptr noundef %156, i32 noundef %89, i32 noundef 2147483647, i32 noundef %3)
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %162, label %159

159:                                              ; preds = %155
  %160 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 13
  %161 = inttoptr i32 %157 to ptr
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %160, ptr noundef nonnull @.str.12, ptr noundef nonnull %161) #27
  br label %162

162:                                              ; preds = %159, %155, %150, %137, %104, %97, %93, %84, %67, %64, %61
  %163 = phi i32 [ %82, %84 ], [ %151, %150 ], [ 0, %159 ], [ 0, %155 ], [ %75, %67 ], [ %65, %64 ], [ %62, %61 ], [ -22, %97 ], [ -22, %93 ], [ %138, %137 ], [ -22, %104 ]
  ret i32 %163
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @regulator_get_voltage_rdev(ptr noundef %0) #0 {
  %2 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #26
  store i8 0, ptr %2, align 1, !annotation !9
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.regulator_desc, ptr %3, i32 0, i32 10
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.regulator_ops, ptr %5, i32 0, i32 29
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %42, label %9

9:                                                ; preds = %1
  %10 = call i32 %7(ptr noundef %0, ptr noundef nonnull %2) #26
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %98, label %12

12:                                               ; preds = %9
  %13 = load i8, ptr %2, align 1, !range !17
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %12
  %16 = load ptr, ptr %0, align 8
  %17 = getelementptr inbounds %struct.regulator_desc, ptr %16, i32 0, i32 10
  %18 = load ptr, ptr %17, align 4
  br label %42

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 15
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %38

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 14
  %25 = load ptr, ptr %24, align 8
  %26 = icmp eq ptr %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %23
  %28 = load ptr, ptr %25, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %35

30:                                               ; preds = %27, %23
  %31 = load ptr, ptr %0, align 8
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  %34 = select i1 %33, ptr @.str, ptr %32
  br label %35

35:                                               ; preds = %30, %27
  %36 = phi ptr [ %28, %27 ], [ %34, %30 ]
  %37 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %36) #27
  br label %98

38:                                               ; preds = %19
  %39 = getelementptr inbounds %struct.regulator, ptr %21, i32 0, i32 9
  %40 = load ptr, ptr %39, align 4
  %41 = call i32 @regulator_get_voltage_rdev(ptr noundef %40)
  br label %98

42:                                               ; preds = %15, %1
  %43 = phi ptr [ %18, %15 ], [ %5, %1 ]
  %44 = phi ptr [ %16, %15 ], [ %3, %1 ]
  %45 = getelementptr inbounds %struct.regulator_ops, ptr %43, i32 0, i32 5
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %57, label %48

48:                                               ; preds = %42
  %49 = call i32 %46(ptr noundef %0) #26
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %98, label %51

51:                                               ; preds = %48
  %52 = load ptr, ptr %0, align 8
  %53 = getelementptr inbounds %struct.regulator_desc, ptr %52, i32 0, i32 10
  %54 = load ptr, ptr %53, align 4
  %55 = load ptr, ptr %54, align 4
  %56 = call i32 %55(ptr noundef %0, i32 noundef %49) #26
  br label %89

57:                                               ; preds = %42
  %58 = getelementptr inbounds %struct.regulator_ops, ptr %43, i32 0, i32 4
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %63, label %61

61:                                               ; preds = %57
  %62 = call i32 %59(ptr noundef %0) #26
  br label %89

63:                                               ; preds = %57
  %64 = load ptr, ptr %43, align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %68, label %66

66:                                               ; preds = %63
  %67 = call i32 %64(ptr noundef %0, i32 noundef 0) #26
  br label %89

68:                                               ; preds = %63
  %69 = getelementptr inbounds %struct.regulator_desc, ptr %44, i32 0, i32 17
  %70 = load i32, ptr %69, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.regulator_desc, ptr %44, i32 0, i32 8
  %74 = load i32, ptr %73, align 4
  %75 = icmp eq i32 %74, 1
  br i1 %75, label %89, label %76

76:                                               ; preds = %72, %68
  %77 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 15
  %78 = load ptr, ptr %77, align 4
  %79 = icmp eq ptr %78, null
  br i1 %79, label %84, label %80

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.regulator, ptr %78, i32 0, i32 9
  %82 = load ptr, ptr %81, align 4
  %83 = call i32 @regulator_get_voltage_rdev(ptr noundef %82)
  br label %89

84:                                               ; preds = %76
  %85 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 16
  %86 = load ptr, ptr %85, align 8
  %87 = icmp eq ptr %86, null
  %88 = select i1 %87, i32 -22, i32 -517
  br label %98

89:                                               ; preds = %80, %72, %66, %61, %51
  %90 = phi i32 [ %56, %51 ], [ %62, %61 ], [ %67, %66 ], [ %83, %80 ], [ %70, %72 ]
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %98, label %92

92:                                               ; preds = %89
  %93 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 14
  %94 = load ptr, ptr %93, align 8
  %95 = getelementptr inbounds %struct.regulation_constraints, ptr %94, i32 0, i32 3
  %96 = load i32, ptr %95, align 4
  %97 = sub i32 %90, %96
  br label %98

98:                                               ; preds = %92, %89, %84, %48, %38, %35, %9
  %99 = phi i32 [ %41, %38 ], [ -517, %35 ], [ %97, %92 ], [ %10, %9 ], [ %49, %48 ], [ %88, %84 ], [ %90, %89 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #26
  ret i32 %99
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @regulator_set_voltage_unlocked(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %1, ptr %5, align 4
  store i32 %2, ptr %6, align 4
  %7 = getelementptr inbounds %struct.regulator, ptr %0, i32 0, i32 9
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr %struct.regulator, ptr %0, i32 0, i32 6, i32 %3
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, %1
  br i1 %11, label %12, label %16

12:                                               ; preds = %4
  %13 = getelementptr %struct.regulator, ptr %0, i32 0, i32 6, i32 %3, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, %2
  br i1 %15, label %95, label %16

16:                                               ; preds = %12, %4
  %17 = getelementptr inbounds %struct.regulator_dev, ptr %8, i32 0, i32 14
  %18 = load ptr, ptr %17, align 8
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %26

20:                                               ; preds = %16
  %21 = load ptr, ptr %8, align 8
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  %24 = select i1 %23, ptr @.str, ptr %22
  %25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef %24) #27
  br label %31

26:                                               ; preds = %16
  %27 = getelementptr inbounds %struct.regulation_constraints, ptr %18, i32 0, i32 11
  %28 = load i32, ptr %27, align 4
  %29 = and i32 %28, 1
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %26, %20
  %32 = tail call i32 @regulator_get_voltage_rdev(ptr noundef %8)
  %33 = icmp slt i32 %32, %1
  %34 = icmp sgt i32 %32, %2
  %35 = or i1 %33, %34
  br i1 %35, label %38, label %36

36:                                               ; preds = %31
  store i32 %1, ptr %9, align 4
  %37 = getelementptr %struct.regulator, ptr %0, i32 0, i32 6, i32 %3, i32 1
  store i32 %2, ptr %37, align 4
  br label %95

38:                                               ; preds = %31, %26
  %39 = load ptr, ptr %8, align 8
  %40 = getelementptr inbounds %struct.regulator_desc, ptr %39, i32 0, i32 10
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.regulator_ops, ptr %41, i32 0, i32 1
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %49

45:                                               ; preds = %38
  %46 = getelementptr inbounds %struct.regulator_ops, ptr %41, i32 0, i32 3
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %95, label %49

49:                                               ; preds = %45, %38
  %50 = call i32 @regulator_check_voltage(ptr noundef %8, ptr noundef nonnull %5, ptr noundef nonnull %6)
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %95, label %52

52:                                               ; preds = %49
  %53 = load i32, ptr %9, align 4
  %54 = getelementptr %struct.regulator, ptr %0, i32 0, i32 6, i32 %3, i32 1
  %55 = load i32, ptr %54, align 4
  %56 = load i32, ptr %5, align 4
  store i32 %56, ptr %9, align 4
  %57 = load i32, ptr %6, align 4
  store i32 %57, ptr %54, align 4
  %58 = getelementptr inbounds %struct.regulator_dev, ptr %8, i32 0, i32 7, i32 1
  %59 = load ptr, ptr %58, align 4
  %60 = icmp ne i32 %3, 0
  %61 = getelementptr inbounds %struct.regulator_dev, ptr %8, i32 0, i32 7, i32 2
  %62 = load i32, ptr %61, align 4
  %63 = getelementptr inbounds %struct.regulator_dev, ptr %8, i32 0, i32 7, i32 3
  %64 = load i32, ptr %63, align 4
  %65 = icmp slt i32 %62, %64
  br i1 %65, label %66, label %80

66:                                               ; preds = %52
  %67 = load ptr, ptr %17, align 8
  %68 = icmp eq ptr %67, null
  br i1 %68, label %72, label %69

69:                                               ; preds = %66
  %70 = load ptr, ptr %67, align 4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %77

72:                                               ; preds = %69, %66
  %73 = load ptr, ptr %8, align 8
  %74 = load ptr, ptr %73, align 4
  %75 = icmp eq ptr %74, null
  %76 = select i1 %75, ptr @.str, ptr %74
  br label %77

77:                                               ; preds = %72, %69
  %78 = phi ptr [ %70, %69 ], [ %76, %72 ]
  %79 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, ptr noundef %78) #27
  br label %93

80:                                               ; preds = %52
  %81 = icmp eq ptr %59, null
  br i1 %81, label %88, label %82

82:                                               ; preds = %80
  %83 = getelementptr inbounds %struct.regulator_coupler, ptr %59, i32 0, i32 3
  %84 = load ptr, ptr %83, align 4
  %85 = icmp eq ptr %84, null
  br i1 %85, label %88, label %86

86:                                               ; preds = %82
  %87 = tail call i32 %84(ptr noundef nonnull %59, ptr noundef %8, i32 noundef %3) #26
  br label %90

88:                                               ; preds = %82, %80
  %89 = tail call i32 @regulator_do_balance_voltage(ptr noundef %8, i32 noundef %3, i1 noundef zeroext %60) #26
  br label %90

90:                                               ; preds = %88, %86
  %91 = phi i32 [ %87, %86 ], [ %89, %88 ]
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %90, %77
  %94 = phi i32 [ -1, %77 ], [ %91, %90 ]
  store i32 %53, ptr %9, align 4
  store i32 %55, ptr %54, align 4
  br label %95

95:                                               ; preds = %93, %90, %49, %45, %36, %12
  %96 = phi i32 [ 0, %12 ], [ %50, %49 ], [ %94, %93 ], [ %91, %90 ], [ 0, %36 ], [ -22, %45 ]
  ret i32 %96
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @_regulator_do_set_voltage(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.pre_voltage_change_data, align 4
  %5 = alloca %struct.pre_voltage_change_data, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #26
  store i32 0, ptr %6, align 4, !annotation !9
  %7 = load ptr, ptr %0, align 8
  %8 = getelementptr inbounds %struct.regulator_desc, ptr %7, i32 0, i32 10
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 @regulator_get_voltage_rdev(ptr noundef %0)
  %11 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 14
  %12 = load ptr, ptr %11, align 8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load ptr, ptr %12, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %14, %3
  %18 = load ptr, ptr %0, align 8
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  %21 = select i1 %20, ptr @.str, ptr %19
  br label %22

22:                                               ; preds = %17, %14
  %23 = phi ptr [ %15, %14 ], [ %21, %17 ]
  %24 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_regulator_set_voltage, i32 0, i32 1), align 4
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %50

26:                                               ; preds = %22
  %27 = tail call ptr @llvm.thread.pointer() #26
  %28 = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 2
  %29 = load i32, ptr %28, align 8
  %30 = lshr i32 %29, 5
  %31 = getelementptr i32, ptr @__cpu_online_mask, i32 %30
  %32 = load volatile i32, ptr %31, align 4
  %33 = and i32 %29, 31
  %34 = shl nuw i32 1, %33
  %35 = and i32 %34, %32
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %50, label %37

37:                                               ; preds = %26
  tail call void asm sideeffect "", "~{memory}"() #26, !srcloc !18
  %38 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_regulator_set_voltage, i32 0, i32 7), align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %48, label %40

40:                                               ; preds = %40, %37
  %41 = phi ptr [ %45, %40 ], [ %38, %37 ]
  %42 = load volatile ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.tracepoint_func, ptr %41, i32 0, i32 1
  %44 = load ptr, ptr %43, align 4
  tail call void %42(ptr noundef %44, ptr noundef %23, i32 noundef %1, i32 noundef %2) #26
  %45 = getelementptr %struct.tracepoint_func, ptr %41, i32 1
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %40

48:                                               ; preds = %40, %37
  tail call void asm sideeffect "", "~{memory}"() #26, !srcloc !19
  %49 = load ptr, ptr %11, align 8
  br label %50

50:                                               ; preds = %48, %26, %22
  %51 = phi ptr [ %12, %22 ], [ %12, %26 ], [ %49, %48 ]
  %52 = getelementptr inbounds %struct.regulation_constraints, ptr %51, i32 0, i32 3
  %53 = load i32, ptr %52, align 4
  %54 = add i32 %53, %1
  %55 = add i32 %53, %2
  %56 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 21
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %64, label %59

59:                                               ; preds = %50
  %60 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 22
  %61 = load i8, ptr %60, align 8
  %62 = and i8 %61, 1
  %63 = zext i8 %62 to i32
  br label %73

64:                                               ; preds = %50
  %65 = load ptr, ptr %0, align 8
  %66 = getelementptr inbounds %struct.regulator_desc, ptr %65, i32 0, i32 10
  %67 = load ptr, ptr %66, align 4
  %68 = getelementptr inbounds %struct.regulator_ops, ptr %67, i32 0, i32 16
  %69 = load ptr, ptr %68, align 4
  %70 = icmp eq ptr %69, null
  br i1 %70, label %76, label %71

71:                                               ; preds = %64
  %72 = tail call i32 %69(ptr noundef %0) #26
  br label %73

73:                                               ; preds = %71, %59
  %74 = phi i32 [ %63, %59 ], [ %72, %71 ]
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %87, label %76

76:                                               ; preds = %73, %64
  %77 = getelementptr inbounds %struct.regulator_ops, ptr %9, i32 0, i32 23
  %78 = load ptr, ptr %77, align 4
  %79 = icmp eq ptr %78, null
  br i1 %79, label %87, label %80

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.regulator_ops, ptr %9, i32 0, i32 5
  %82 = load ptr, ptr %81, align 4
  %83 = icmp eq ptr %82, null
  br i1 %83, label %87, label %84

84:                                               ; preds = %80
  %85 = tail call i32 %82(ptr noundef %0) #26
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %397, label %87

87:                                               ; preds = %84, %80, %76, %73
  %88 = phi i32 [ %85, %84 ], [ -1, %80 ], [ -1, %76 ], [ -1, %73 ]
  %89 = getelementptr inbounds %struct.regulator_ops, ptr %9, i32 0, i32 1
  %90 = load ptr, ptr %89, align 4
  %91 = icmp eq ptr %90, null
  br i1 %91, label %122, label %92

92:                                               ; preds = %87
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #26
  %93 = tail call i32 @regulator_get_voltage_rdev(ptr noundef %0) #26
  store i32 %93, ptr %5, align 4
  %94 = getelementptr inbounds %struct.pre_voltage_change_data, ptr %5, i32 0, i32 1
  store i32 %54, ptr %94, align 4
  %95 = getelementptr inbounds %struct.pre_voltage_change_data, ptr %5, i32 0, i32 2
  store i32 %55, ptr %95, align 4
  %96 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 8
  %97 = call i32 @blocking_notifier_call_chain(ptr noundef %96, i32 noundef 256, ptr noundef nonnull %5) #26
  %98 = and i32 %97, 32768
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %112

100:                                              ; preds = %92
  %101 = load ptr, ptr %0, align 8
  %102 = getelementptr inbounds %struct.regulator_desc, ptr %101, i32 0, i32 10
  %103 = load ptr, ptr %102, align 4
  %104 = getelementptr inbounds %struct.regulator_ops, ptr %103, i32 0, i32 1
  %105 = load ptr, ptr %104, align 4
  %106 = call i32 %105(ptr noundef %0, i32 noundef %54, i32 noundef %55, ptr noundef nonnull %6) #26
  %107 = icmp sgt i32 %106, -1
  br i1 %107, label %114, label %108

108:                                              ; preds = %100
  %109 = load i32, ptr %5, align 4
  %110 = inttoptr i32 %109 to ptr
  %111 = call i32 @blocking_notifier_call_chain(ptr noundef %96, i32 noundef 512, ptr noundef %110) #26
  br label %112

112:                                              ; preds = %108, %92
  %113 = phi i32 [ -22, %92 ], [ %106, %108 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #26
  br label %357

114:                                              ; preds = %100
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #26
  %115 = load ptr, ptr %9, align 4
  %116 = icmp eq ptr %115, null
  br i1 %116, label %120, label %117

117:                                              ; preds = %114
  %118 = load i32, ptr %6, align 4
  %119 = call i32 %115(ptr noundef %0, i32 noundef %118) #26
  br label %260

120:                                              ; preds = %114
  %121 = call i32 @regulator_get_voltage_rdev(ptr noundef %0)
  br label %260

122:                                              ; preds = %87
  %123 = getelementptr inbounds %struct.regulator_ops, ptr %9, i32 0, i32 3
  %124 = load ptr, ptr %123, align 4
  %125 = icmp eq ptr %124, null
  br i1 %125, label %357, label %126

126:                                              ; preds = %122
  %127 = load ptr, ptr %0, align 8
  %128 = getelementptr inbounds %struct.regulator_desc, ptr %127, i32 0, i32 10
  %129 = load ptr, ptr %128, align 4
  %130 = getelementptr inbounds %struct.regulator_ops, ptr %129, i32 0, i32 2
  %131 = load ptr, ptr %130, align 4
  %132 = icmp eq ptr %131, null
  br i1 %132, label %135, label %133

133:                                              ; preds = %126
  %134 = tail call i32 %131(ptr noundef %0, i32 noundef %54, i32 noundef %55) #26
  br label %150

135:                                              ; preds = %126
  %136 = load ptr, ptr %129, align 4
  %137 = icmp eq ptr %136, @regulator_list_voltage_linear
  br i1 %137, label %138, label %140

138:                                              ; preds = %135
  %139 = tail call i32 @regulator_map_voltage_linear(ptr noundef %0, i32 noundef %54, i32 noundef %55) #26
  br label %150

140:                                              ; preds = %135
  %141 = icmp eq ptr %136, @regulator_list_voltage_linear_range
  br i1 %141, label %142, label %144

142:                                              ; preds = %140
  %143 = tail call i32 @regulator_map_voltage_linear_range(ptr noundef %0, i32 noundef %54, i32 noundef %55) #26
  br label %150

144:                                              ; preds = %140
  %145 = icmp eq ptr %136, @regulator_list_voltage_pickable_linear_range
  br i1 %145, label %146, label %148

146:                                              ; preds = %144
  %147 = tail call i32 @regulator_map_voltage_pickable_linear_range(ptr noundef %0, i32 noundef %54, i32 noundef %55) #26
  br label %150

148:                                              ; preds = %144
  %149 = tail call i32 @regulator_map_voltage_iterate(ptr noundef %0, i32 noundef %54, i32 noundef %55) #26
  br label %150

150:                                              ; preds = %148, %146, %142, %138, %133
  %151 = phi i32 [ %134, %133 ], [ %139, %138 ], [ %143, %142 ], [ %147, %146 ], [ %149, %148 ]
  %152 = icmp sgt i32 %151, -1
  br i1 %152, label %153, label %357

153:                                              ; preds = %150
  %154 = load ptr, ptr %9, align 4
  %155 = tail call i32 %154(ptr noundef %0, i32 noundef %151) #26
  %156 = icmp sgt i32 %54, %155
  %157 = icmp slt i32 %55, %155
  %158 = or i1 %156, %157
  br i1 %158, label %357, label %159

159:                                              ; preds = %153
  store i32 %151, ptr %6, align 4
  %160 = icmp eq i32 %88, %151
  br i1 %160, label %264, label %161

161:                                              ; preds = %159
  %162 = load ptr, ptr %0, align 8
  %163 = getelementptr inbounds %struct.regulator_desc, ptr %162, i32 0, i32 29
  %164 = load i32, ptr %163, align 4
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %258, label %166

166:                                              ; preds = %161
  %167 = getelementptr inbounds %struct.regulator_desc, ptr %162, i32 0, i32 10
  %168 = load ptr, ptr %167, align 4
  %169 = load ptr, ptr %56, align 4
  %170 = icmp eq ptr %169, null
  br i1 %170, label %176, label %171

171:                                              ; preds = %166
  %172 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 22
  %173 = load i8, ptr %172, align 8
  %174 = and i8 %173, 1
  %175 = zext i8 %174 to i32
  br label %182

176:                                              ; preds = %166
  %177 = getelementptr inbounds %struct.regulator_ops, ptr %168, i32 0, i32 16
  %178 = load ptr, ptr %177, align 4
  %179 = icmp eq ptr %178, null
  br i1 %179, label %185, label %180

180:                                              ; preds = %176
  %181 = tail call i32 %178(ptr noundef %0) #26
  br label %182

182:                                              ; preds = %180, %171
  %183 = phi i32 [ %175, %171 ], [ %181, %180 ]
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %231, label %185

185:                                              ; preds = %182, %176
  %186 = getelementptr inbounds %struct.regulator_ops, ptr %168, i32 0, i32 5
  %187 = load ptr, ptr %186, align 4
  %188 = icmp eq ptr %187, null
  br i1 %188, label %357, label %189

189:                                              ; preds = %185
  %190 = tail call i32 %187(ptr noundef %0) #26
  %191 = icmp slt i32 %190, 0
  br i1 %191, label %357, label %192

192:                                              ; preds = %189
  %193 = icmp eq i32 %151, %190
  br i1 %193, label %264, label %194

194:                                              ; preds = %192
  %195 = icmp ugt i32 %151, %190
  %196 = load ptr, ptr %0, align 8
  %197 = getelementptr inbounds %struct.regulator_desc, ptr %196, i32 0, i32 29
  %198 = load i32, ptr %197, align 4
  br i1 %195, label %199, label %215

199:                                              ; preds = %194
  %200 = add i32 %198, %190
  %201 = icmp slt i32 %200, %151
  br i1 %201, label %202, label %231

202:                                              ; preds = %199
  %203 = getelementptr inbounds %struct.regulator_ops, ptr %168, i32 0, i32 3
  br label %204

204:                                              ; preds = %209, %202
  %205 = phi i32 [ %200, %202 ], [ %213, %209 ]
  %206 = load ptr, ptr %203, align 4
  %207 = tail call i32 %206(ptr noundef %0, i32 noundef %205) #26
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %209, label %253

209:                                              ; preds = %204
  %210 = load ptr, ptr %0, align 8
  %211 = getelementptr inbounds %struct.regulator_desc, ptr %210, i32 0, i32 29
  %212 = load i32, ptr %211, align 4
  %213 = add i32 %212, %205
  %214 = icmp slt i32 %213, %151
  br i1 %214, label %204, label %231

215:                                              ; preds = %194
  %216 = sub i32 %190, %198
  %217 = icmp sgt i32 %216, %151
  br i1 %217, label %218, label %231

218:                                              ; preds = %215
  %219 = getelementptr inbounds %struct.regulator_ops, ptr %168, i32 0, i32 3
  br label %220

220:                                              ; preds = %225, %218
  %221 = phi i32 [ %216, %218 ], [ %229, %225 ]
  %222 = load ptr, ptr %219, align 4
  %223 = tail call i32 %222(ptr noundef %0, i32 noundef %221) #26
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %225, label %253

225:                                              ; preds = %220
  %226 = load ptr, ptr %0, align 8
  %227 = getelementptr inbounds %struct.regulator_desc, ptr %226, i32 0, i32 29
  %228 = load i32, ptr %227, align 4
  %229 = sub i32 %221, %228
  %230 = icmp sgt i32 %229, %151
  br i1 %230, label %220, label %231

231:                                              ; preds = %225, %215, %209, %199, %182
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #26
  %232 = tail call i32 @regulator_get_voltage_rdev(ptr noundef %0) #26
  store i32 %232, ptr %4, align 4
  %233 = getelementptr inbounds %struct.pre_voltage_change_data, ptr %4, i32 0, i32 1
  store i32 %155, ptr %233, align 4
  %234 = getelementptr inbounds %struct.pre_voltage_change_data, ptr %4, i32 0, i32 2
  store i32 %155, ptr %234, align 4
  %235 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 8
  %236 = call i32 @blocking_notifier_call_chain(ptr noundef %235, i32 noundef 256, ptr noundef nonnull %4) #26
  %237 = and i32 %236, 32768
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %239, label %251

239:                                              ; preds = %231
  %240 = load ptr, ptr %0, align 8
  %241 = getelementptr inbounds %struct.regulator_desc, ptr %240, i32 0, i32 10
  %242 = load ptr, ptr %241, align 4
  %243 = getelementptr inbounds %struct.regulator_ops, ptr %242, i32 0, i32 3
  %244 = load ptr, ptr %243, align 4
  %245 = call i32 %244(ptr noundef %0, i32 noundef %151) #26
  %246 = icmp sgt i32 %245, -1
  br i1 %246, label %251, label %247

247:                                              ; preds = %239
  %248 = load i32, ptr %4, align 4
  %249 = inttoptr i32 %248 to ptr
  %250 = call i32 @blocking_notifier_call_chain(ptr noundef %235, i32 noundef 512, ptr noundef %249) #26
  br label %251

251:                                              ; preds = %247, %239, %231
  %252 = phi i32 [ %245, %247 ], [ -22, %231 ], [ %245, %239 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #26
  br label %260

253:                                              ; preds = %220, %204
  %254 = phi i32 [ %207, %204 ], [ %223, %220 ]
  %255 = getelementptr inbounds %struct.regulator_ops, ptr %168, i32 0, i32 3
  %256 = load ptr, ptr %255, align 4
  %257 = tail call i32 %256(ptr noundef %0, i32 noundef %190) #26
  br label %357

258:                                              ; preds = %161
  %259 = tail call fastcc i32 @_regulator_call_set_voltage_sel(ptr noundef %0, i32 noundef %155, i32 noundef %151)
  br label %260

260:                                              ; preds = %258, %251, %120, %117
  %261 = phi i32 [ %106, %117 ], [ %106, %120 ], [ %259, %258 ], [ %252, %251 ]
  %262 = phi i32 [ %119, %117 ], [ %121, %120 ], [ %155, %258 ], [ %155, %251 ]
  %263 = icmp eq i32 %261, 0
  br i1 %263, label %264, label %357

264:                                              ; preds = %260, %192, %159
  %265 = phi i32 [ %262, %260 ], [ %155, %159 ], [ %155, %192 ]
  %266 = getelementptr inbounds %struct.regulator_ops, ptr %9, i32 0, i32 23
  %267 = load ptr, ptr %266, align 4
  %268 = icmp eq ptr %267, null
  br i1 %268, label %276, label %269

269:                                              ; preds = %264
  %270 = icmp sgt i32 %88, -1
  br i1 %270, label %271, label %351

271:                                              ; preds = %269
  %272 = load i32, ptr %6, align 4
  %273 = icmp eq i32 %88, %272
  br i1 %273, label %351, label %274

274:                                              ; preds = %271
  %275 = call i32 %267(ptr noundef %0, i32 noundef %88, i32 noundef %272) #26
  br label %317

276:                                              ; preds = %264
  %277 = icmp eq i32 %265, %10
  br i1 %277, label %351, label %278

278:                                              ; preds = %276
  %279 = getelementptr inbounds %struct.regulator_ops, ptr %9, i32 0, i32 22
  %280 = load ptr, ptr %279, align 4
  %281 = icmp eq ptr %280, null
  br i1 %281, label %284, label %282

282:                                              ; preds = %278
  %283 = call i32 %280(ptr noundef %0, i32 noundef %10, i32 noundef %265) #26
  br label %317

284:                                              ; preds = %278
  %285 = load ptr, ptr %11, align 8
  %286 = getelementptr inbounds %struct.regulation_constraints, ptr %285, i32 0, i32 22
  %287 = load i32, ptr %286, align 4
  %288 = icmp eq i32 %287, 0
  br i1 %288, label %289, label %310

289:                                              ; preds = %284
  %290 = load ptr, ptr %0, align 8
  %291 = getelementptr inbounds %struct.regulator_desc, ptr %290, i32 0, i32 18
  %292 = load i32, ptr %291, align 4
  %293 = icmp eq i32 %292, 0
  br i1 %293, label %294, label %310

294:                                              ; preds = %289
  %295 = getelementptr inbounds %struct.regulation_constraints, ptr %285, i32 0, i32 23
  %296 = load i32, ptr %295, align 4
  %297 = icmp eq i32 %296, 0
  br i1 %297, label %298, label %317

298:                                              ; preds = %294
  %299 = getelementptr inbounds %struct.regulation_constraints, ptr %285, i32 0, i32 24
  %300 = load i32, ptr %299, align 4
  %301 = icmp ne i32 %300, 0
  %302 = icmp sgt i32 %265, %10
  %303 = and i1 %302, %301
  br i1 %303, label %317, label %304

304:                                              ; preds = %298
  %305 = getelementptr inbounds %struct.regulation_constraints, ptr %285, i32 0, i32 25
  %306 = load i32, ptr %305, align 4
  %307 = icmp ne i32 %306, 0
  %308 = icmp slt i32 %265, %10
  %309 = and i1 %308, %307
  br i1 %309, label %317, label %351

310:                                              ; preds = %289, %284
  %311 = phi i32 [ %292, %289 ], [ %287, %284 ]
  %312 = sub i32 %265, %10
  %313 = call i32 @llvm.abs.i32(i32 %312, i1 false) #26
  %314 = add i32 %313, -1
  %315 = add i32 %314, %311
  %316 = udiv i32 %315, %311
  br label %317

317:                                              ; preds = %310, %304, %298, %294, %282, %274
  %318 = phi i32 [ %275, %274 ], [ %283, %282 ], [ %316, %310 ], [ %296, %294 ], [ %300, %298 ], [ %306, %304 ]
  %319 = icmp slt i32 %318, 0
  br i1 %319, label %320, label %335

320:                                              ; preds = %317
  %321 = load ptr, ptr %11, align 8
  %322 = icmp eq ptr %321, null
  br i1 %322, label %326, label %323

323:                                              ; preds = %320
  %324 = load ptr, ptr %321, align 4
  %325 = icmp eq ptr %324, null
  br i1 %325, label %326, label %331

326:                                              ; preds = %323, %320
  %327 = load ptr, ptr %0, align 8
  %328 = load ptr, ptr %327, align 4
  %329 = icmp eq ptr %328, null
  %330 = select i1 %329, ptr @.str, ptr %328
  br label %331

331:                                              ; preds = %326, %323
  %332 = phi ptr [ %324, %323 ], [ %330, %326 ]
  %333 = inttoptr i32 %318 to ptr
  %334 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef %332, ptr noundef nonnull %333) #27
  br label %351

335:                                              ; preds = %317
  %336 = icmp ugt i32 %318, 999
  br i1 %336, label %337, label %347

337:                                              ; preds = %335
  %338 = udiv i32 %318, 1000
  br label %339

339:                                              ; preds = %339, %337
  %340 = phi i32 [ %341, %339 ], [ %338, %337 ]
  %341 = add nsw i32 %340, -1
  %342 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %342(i32 noundef 214748000) #26
  %343 = icmp eq i32 %341, 0
  br i1 %343, label %344, label %339

344:                                              ; preds = %339
  %345 = srem i32 %318, 1000
  %346 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  call void %346(i32 noundef %345) #26
  br label %351

347:                                              ; preds = %335
  %348 = icmp eq i32 %318, 0
  br i1 %348, label %351, label %349

349:                                              ; preds = %347
  %350 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  call void %350(i32 noundef %318) #26
  br label %351

351:                                              ; preds = %349, %347, %344, %331, %304, %276, %271, %269
  %352 = icmp sgt i32 %265, -1
  br i1 %352, label %353, label %357

353:                                              ; preds = %351
  %354 = inttoptr i32 %265 to ptr
  %355 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 8
  %356 = call i32 @blocking_notifier_call_chain(ptr noundef %355, i32 noundef 64, ptr noundef %354) #26
  br label %357

357:                                              ; preds = %353, %351, %260, %253, %189, %185, %153, %150, %122, %112
  %358 = phi i32 [ %265, %351 ], [ %265, %353 ], [ %262, %260 ], [ %155, %253 ], [ %155, %189 ], [ %155, %185 ], [ 0, %112 ], [ 0, %122 ], [ %155, %153 ], [ 0, %150 ]
  %359 = phi i32 [ 0, %351 ], [ 0, %353 ], [ %261, %260 ], [ %254, %253 ], [ %190, %189 ], [ -22, %185 ], [ %113, %112 ], [ -22, %122 ], [ -22, %153 ], [ %151, %150 ]
  %360 = load ptr, ptr %11, align 8
  %361 = icmp eq ptr %360, null
  br i1 %361, label %365, label %362

362:                                              ; preds = %357
  %363 = load ptr, ptr %360, align 4
  %364 = icmp eq ptr %363, null
  br i1 %364, label %365, label %370

365:                                              ; preds = %362, %357
  %366 = load ptr, ptr %0, align 8
  %367 = load ptr, ptr %366, align 4
  %368 = icmp eq ptr %367, null
  %369 = select i1 %368, ptr @.str, ptr %367
  br label %370

370:                                              ; preds = %365, %362
  %371 = phi ptr [ %363, %362 ], [ %369, %365 ]
  %372 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_regulator_set_voltage_complete, i32 0, i32 1), align 4
  %373 = icmp sgt i32 %372, 0
  br i1 %373, label %374, label %397

374:                                              ; preds = %370
  %375 = tail call ptr @llvm.thread.pointer() #26
  %376 = getelementptr inbounds %struct.thread_info, ptr %375, i32 0, i32 2
  %377 = load i32, ptr %376, align 8
  %378 = lshr i32 %377, 5
  %379 = getelementptr i32, ptr @__cpu_online_mask, i32 %378
  %380 = load volatile i32, ptr %379, align 4
  %381 = and i32 %377, 31
  %382 = shl nuw i32 1, %381
  %383 = and i32 %382, %380
  %384 = icmp eq i32 %383, 0
  br i1 %384, label %397, label %385

385:                                              ; preds = %374
  call void asm sideeffect "", "~{memory}"() #26, !srcloc !20
  %386 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_regulator_set_voltage_complete, i32 0, i32 7), align 4
  %387 = icmp eq ptr %386, null
  br i1 %387, label %396, label %388

388:                                              ; preds = %388, %385
  %389 = phi ptr [ %393, %388 ], [ %386, %385 ]
  %390 = load volatile ptr, ptr %389, align 4
  %391 = getelementptr inbounds %struct.tracepoint_func, ptr %389, i32 0, i32 1
  %392 = load ptr, ptr %391, align 4
  call void %390(ptr noundef %392, ptr noundef %371, i32 noundef %358) #26
  %393 = getelementptr %struct.tracepoint_func, ptr %389, i32 1
  %394 = load ptr, ptr %393, align 4
  %395 = icmp eq ptr %394, null
  br i1 %395, label %396, label %388

396:                                              ; preds = %388, %385
  call void asm sideeffect "", "~{memory}"() #26, !srcloc !21
  br label %397

397:                                              ; preds = %396, %374, %370, %84
  %398 = phi i32 [ %85, %84 ], [ %359, %370 ], [ %359, %374 ], [ %359, %396 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #26
  ret i32 %398
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @regulator_do_balance_voltage(ptr nocapture noundef readonly %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #26
  store i32 0, ptr %6, align 4
  %8 = load ptr, ptr %7, align 4
  br i1 %2, label %15, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 7, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = icmp sgt i32 %11, 0
  %13 = icmp eq i32 %11, 1
  %14 = icmp sgt i32 %11, 1
  br i1 %12, label %15, label %307

15:                                               ; preds = %9, %3
  %16 = phi i1 [ %14, %9 ], [ false, %3 ]
  %17 = phi i1 [ %13, %9 ], [ true, %3 ]
  %18 = phi i32 [ %11, %9 ], [ 1, %3 ]
  %19 = icmp eq i32 %1, 0
  br label %20

20:                                               ; preds = %291, %15
  %21 = phi i1 [ false, %15 ], [ %292, %291 ]
  %22 = phi i32 [ 0, %15 ], [ %293, %291 ]
  %23 = phi i32 [ 0, %15 ], [ %294, %291 ]
  %24 = phi i32 [ 0, %15 ], [ %295, %291 ]
  %25 = phi i32 [ 0, %15 ], [ %296, %291 ]
  %26 = phi i32 [ 0, %15 ], [ %297, %291 ]
  %27 = phi ptr [ null, %15 ], [ %298, %291 ]
  %28 = load volatile i32, ptr %6, align 4
  %29 = and i32 %26, 31
  %30 = shl nuw i32 1, %29
  %31 = and i32 %28, %30
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %282

33:                                               ; preds = %20
  %34 = getelementptr ptr, ptr %8, i32 %26
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.regulator_dev, ptr %35, i32 0, i32 7
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.regulator_dev, ptr %35, i32 0, i32 14
  %39 = load ptr, ptr %38, align 8
  br i1 %17, label %40, label %83

40:                                               ; preds = %33
  %41 = getelementptr inbounds %struct.regulation_constraints, ptr %39, i32 0, i32 1
  %42 = load i32, ptr %41, align 4
  %43 = getelementptr inbounds %struct.regulation_constraints, ptr %39, i32 0, i32 2
  %44 = load i32, ptr %43, align 4
  %45 = getelementptr inbounds %struct.regulator_dev, ptr %35, i32 0, i32 6
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, %45
  br i1 %47, label %66, label %48

48:                                               ; preds = %48, %40
  %49 = phi i32 [ %62, %48 ], [ %42, %40 ]
  %50 = phi i32 [ %63, %48 ], [ %44, %40 ]
  %51 = phi ptr [ %64, %48 ], [ %46, %40 ]
  %52 = getelementptr i8, ptr %51, i32 24
  %53 = getelementptr [5 x %struct.regulator_voltage], ptr %52, i32 0, i32 %1
  %54 = load i32, ptr %53, align 4
  %55 = icmp eq i32 %54, 0
  %56 = getelementptr inbounds %struct.regulator_voltage, ptr %53, i32 0, i32 1
  %57 = load i32, ptr %56, align 4
  %58 = icmp eq i32 %57, 0
  %59 = select i1 %55, i1 %58, i1 false
  %60 = call i32 @llvm.smin.i32(i32 %50, i32 %57) #26
  %61 = call i32 @llvm.smax.i32(i32 %49, i32 %54) #26
  %62 = select i1 %59, i32 %49, i32 %61
  %63 = select i1 %59, i32 %50, i32 %60
  %64 = load ptr, ptr %51, align 4
  %65 = icmp eq ptr %64, %45
  br i1 %65, label %66, label %48

66:                                               ; preds = %48, %40
  %67 = phi i32 [ %42, %40 ], [ %62, %48 ]
  %68 = phi i32 [ %44, %40 ], [ %63, %48 ]
  %69 = icmp sgt i32 %67, %68
  br i1 %69, label %70, label %200

70:                                               ; preds = %66
  %71 = icmp eq ptr %39, null
  br i1 %71, label %75, label %72

72:                                               ; preds = %70
  %73 = load ptr, ptr %39, align 4
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %80

75:                                               ; preds = %72, %70
  %76 = load ptr, ptr %35, align 8
  %77 = load ptr, ptr %76, align 4
  %78 = icmp eq ptr %77, null
  %79 = select i1 %78, ptr @.str, ptr %77
  br label %80

80:                                               ; preds = %75, %72
  %81 = phi ptr [ %73, %72 ], [ %79, %75 ]
  %82 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %81, i32 noundef %67, i32 noundef %68) #27
  br label %307

83:                                               ; preds = %131, %33
  %84 = phi i32 [ %133, %131 ], [ 0, %33 ]
  %85 = phi i32 [ %138, %131 ], [ 0, %33 ]
  %86 = phi i32 [ %137, %131 ], [ 2147483647, %33 ]
  %87 = phi i32 [ %136, %131 ], [ 0, %33 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #26
  store i32 0, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #26
  store i32 2147483647, ptr %5, align 4
  %88 = getelementptr ptr, ptr %37, i32 %85
  %89 = load ptr, ptr %88, align 4
  %90 = getelementptr inbounds %struct.regulator_dev, ptr %89, i32 0, i32 6
  %91 = load ptr, ptr %90, align 4
  %92 = icmp eq ptr %91, %90
  br i1 %92, label %128, label %93

93:                                               ; preds = %93, %83
  %94 = phi i32 [ %107, %93 ], [ 0, %83 ]
  %95 = phi i32 [ %108, %93 ], [ 2147483647, %83 ]
  %96 = phi ptr [ %109, %93 ], [ %91, %83 ]
  %97 = getelementptr i8, ptr %96, i32 24
  %98 = getelementptr [5 x %struct.regulator_voltage], ptr %97, i32 0, i32 %1
  %99 = load i32, ptr %98, align 4
  %100 = icmp eq i32 %99, 0
  %101 = getelementptr inbounds %struct.regulator_voltage, ptr %98, i32 0, i32 1
  %102 = load i32, ptr %101, align 4
  %103 = icmp eq i32 %102, 0
  %104 = select i1 %100, i1 %103, i1 false
  %105 = call i32 @llvm.smin.i32(i32 %95, i32 %102) #26
  %106 = call i32 @llvm.smax.i32(i32 %94, i32 %99) #26
  %107 = select i1 %104, i32 %94, i32 %106
  %108 = select i1 %104, i32 %95, i32 %105
  %109 = load ptr, ptr %96, align 4
  %110 = icmp eq ptr %109, %90
  br i1 %110, label %111, label %93

111:                                              ; preds = %93
  store i32 %108, ptr %5, align 4
  store i32 %107, ptr %4, align 4
  %112 = icmp sgt i32 %107, %108
  br i1 %112, label %113, label %128

113:                                              ; preds = %111
  %114 = getelementptr inbounds %struct.regulator_dev, ptr %89, i32 0, i32 14
  %115 = load ptr, ptr %114, align 8
  %116 = icmp eq ptr %115, null
  br i1 %116, label %120, label %117

117:                                              ; preds = %113
  %118 = load ptr, ptr %115, align 4
  %119 = icmp eq ptr %118, null
  br i1 %119, label %120, label %125

120:                                              ; preds = %117, %113
  %121 = load ptr, ptr %89, align 8
  %122 = load ptr, ptr %121, align 4
  %123 = icmp eq ptr %122, null
  %124 = select i1 %123, ptr @.str, ptr %122
  br label %125

125:                                              ; preds = %120, %117
  %126 = phi ptr [ %118, %117 ], [ %124, %120 ]
  %127 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %126, i32 noundef %107, i32 noundef %108) #27
  br label %140

128:                                              ; preds = %111, %83
  %129 = call i32 @regulator_check_voltage(ptr noundef %89, ptr noundef nonnull %4, ptr noundef nonnull %5) #26
  %130 = icmp slt i32 %129, 0
  br i1 %130, label %140, label %131

131:                                              ; preds = %128
  %132 = load i32, ptr %4, align 4
  %133 = call i32 @llvm.smax.i32(i32 %84, i32 %132) #26
  %134 = icmp eq i32 %85, 0
  %135 = load i32, ptr %5, align 4
  %136 = select i1 %134, i32 %132, i32 %87
  %137 = select i1 %134, i32 %135, i32 %86
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #26
  %138 = add nuw nsw i32 %85, 1
  %139 = icmp eq i32 %138, %18
  br i1 %139, label %142, label %83

140:                                              ; preds = %128, %125
  %141 = phi i32 [ -22, %125 ], [ %129, %128 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #26
  br label %307

142:                                              ; preds = %131
  %143 = getelementptr inbounds %struct.regulation_constraints, ptr %39, i32 0, i32 8
  %144 = load ptr, ptr %143, align 4
  %145 = load i32, ptr %144, align 4
  %146 = sub i32 %133, %145
  %147 = call i32 @llvm.smax.i32(i32 %136, i32 %146) #26
  br i1 %16, label %148, label %195

148:                                              ; preds = %183, %142
  %149 = phi i32 [ %185, %183 ], [ 0, %142 ]
  %150 = phi i32 [ %184, %183 ], [ 2147483647, %142 ]
  %151 = phi i32 [ %186, %183 ], [ 1, %142 ]
  %152 = getelementptr ptr, ptr %37, i32 %151
  %153 = load ptr, ptr %152, align 4
  %154 = getelementptr inbounds %struct.regulator_dev, ptr %153, i32 0, i32 21
  %155 = load ptr, ptr %154, align 4
  %156 = icmp eq ptr %155, null
  br i1 %156, label %162, label %157

157:                                              ; preds = %148
  %158 = getelementptr inbounds %struct.regulator_dev, ptr %153, i32 0, i32 22
  %159 = load i8, ptr %158, align 8
  %160 = and i8 %159, 1
  %161 = zext i8 %160 to i32
  br label %171

162:                                              ; preds = %148
  %163 = load ptr, ptr %153, align 8
  %164 = getelementptr inbounds %struct.regulator_desc, ptr %163, i32 0, i32 10
  %165 = load ptr, ptr %164, align 4
  %166 = getelementptr inbounds %struct.regulator_ops, ptr %165, i32 0, i32 16
  %167 = load ptr, ptr %166, align 4
  %168 = icmp eq ptr %167, null
  br i1 %168, label %176, label %169

169:                                              ; preds = %162
  %170 = call i32 %167(ptr noundef %153) #26
  br label %171

171:                                              ; preds = %169, %157
  %172 = phi i32 [ %161, %157 ], [ %170, %169 ]
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %183, label %174

174:                                              ; preds = %171
  %175 = load ptr, ptr %152, align 4
  br label %176

176:                                              ; preds = %174, %162
  %177 = phi ptr [ %175, %174 ], [ %153, %162 ]
  %178 = call i32 @regulator_get_voltage_rdev(ptr noundef %177) #26
  %179 = icmp slt i32 %178, 0
  br i1 %179, label %307, label %180

180:                                              ; preds = %176
  %181 = call i32 @llvm.smin.i32(i32 %178, i32 %150) #26
  %182 = call i32 @llvm.smax.i32(i32 %178, i32 %149) #26
  br label %183

183:                                              ; preds = %180, %171
  %184 = phi i32 [ %150, %171 ], [ %181, %180 ]
  %185 = phi i32 [ %149, %171 ], [ %182, %180 ]
  %186 = add nuw nsw i32 %151, 1
  %187 = icmp eq i32 %186, %18
  br i1 %187, label %188, label %148

188:                                              ; preds = %183
  %189 = icmp eq i32 %185, 0
  br i1 %189, label %195, label %190

190:                                              ; preds = %188
  %191 = sub i32 %185, %145
  %192 = call i32 @llvm.smax.i32(i32 %147, i32 %191) #26
  %193 = add i32 %184, %145
  %194 = call i32 @llvm.smin.i32(i32 %192, i32 %193) #26
  br label %195

195:                                              ; preds = %190, %188, %142
  %196 = phi i32 [ %194, %190 ], [ %147, %188 ], [ %147, %142 ]
  %197 = icmp sgt i32 %196, %137
  br i1 %197, label %307, label %198

198:                                              ; preds = %195
  %199 = icmp eq i32 %196, %147
  br label %200

200:                                              ; preds = %198, %66
  %201 = phi i32 [ %196, %198 ], [ %67, %66 ]
  %202 = phi i32 [ %137, %198 ], [ %68, %66 ]
  %203 = phi i1 [ %199, %198 ], [ true, %66 ]
  br i1 %19, label %204, label %246

204:                                              ; preds = %200
  %205 = load ptr, ptr %38, align 8
  %206 = getelementptr inbounds %struct.regulation_constraints, ptr %205, i32 0, i32 9
  %207 = load i32, ptr %206, align 4
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %246, label %209

209:                                              ; preds = %204
  %210 = getelementptr inbounds %struct.regulator_dev, ptr %35, i32 0, i32 21
  %211 = load ptr, ptr %210, align 4
  %212 = icmp eq ptr %211, null
  br i1 %212, label %218, label %213

213:                                              ; preds = %209
  %214 = getelementptr inbounds %struct.regulator_dev, ptr %35, i32 0, i32 22
  %215 = load i8, ptr %214, align 8
  %216 = and i8 %215, 1
  %217 = zext i8 %216 to i32
  br label %227

218:                                              ; preds = %209
  %219 = load ptr, ptr %35, align 8
  %220 = getelementptr inbounds %struct.regulator_desc, ptr %219, i32 0, i32 10
  %221 = load ptr, ptr %220, align 4
  %222 = getelementptr inbounds %struct.regulator_ops, ptr %221, i32 0, i32 16
  %223 = load ptr, ptr %222, align 4
  %224 = icmp eq ptr %223, null
  br i1 %224, label %230, label %225

225:                                              ; preds = %218
  %226 = call i32 %223(ptr noundef %35) #26
  br label %227

227:                                              ; preds = %225, %213
  %228 = phi i32 [ %217, %213 ], [ %226, %225 ]
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %246, label %230

230:                                              ; preds = %227, %218
  %231 = call i32 @regulator_get_voltage_rdev(ptr noundef %35) #26
  %232 = icmp slt i32 %231, 0
  br i1 %232, label %307, label %233

233:                                              ; preds = %230
  %234 = sub i32 %231, %201
  %235 = call i32 @llvm.abs.i32(i32 %234, i1 false) #26
  %236 = load i32, ptr %206, align 4
  %237 = icmp sgt i32 %235, %236
  br i1 %237, label %238, label %271

238:                                              ; preds = %233
  %239 = icmp slt i32 %231, %201
  br i1 %239, label %240, label %243

240:                                              ; preds = %238
  %241 = add i32 %236, %231
  %242 = call i32 @llvm.smin.i32(i32 %241, i32 %201) #26
  br label %271

243:                                              ; preds = %238
  %244 = sub i32 %231, %236
  %245 = call i32 @llvm.smax.i32(i32 %244, i32 %201) #26
  br label %271

246:                                              ; preds = %227, %204, %200
  br i1 %16, label %247, label %271

247:                                              ; preds = %246
  %248 = getelementptr inbounds %struct.regulator_dev, ptr %35, i32 0, i32 21
  %249 = load ptr, ptr %248, align 4
  %250 = icmp eq ptr %249, null
  br i1 %250, label %256, label %251

251:                                              ; preds = %247
  %252 = getelementptr inbounds %struct.regulator_dev, ptr %35, i32 0, i32 22
  %253 = load i8, ptr %252, align 8
  %254 = and i8 %253, 1
  %255 = zext i8 %254 to i32
  br label %265

256:                                              ; preds = %247
  %257 = load ptr, ptr %35, align 8
  %258 = getelementptr inbounds %struct.regulator_desc, ptr %257, i32 0, i32 10
  %259 = load ptr, ptr %258, align 4
  %260 = getelementptr inbounds %struct.regulator_ops, ptr %259, i32 0, i32 16
  %261 = load ptr, ptr %260, align 4
  %262 = icmp eq ptr %261, null
  br i1 %262, label %268, label %263

263:                                              ; preds = %256
  %264 = call i32 %261(ptr noundef %35) #26
  br label %265

265:                                              ; preds = %263, %251
  %266 = phi i32 [ %255, %251 ], [ %264, %263 ]
  %267 = icmp eq i32 %266, 0
  br i1 %267, label %282, label %268

268:                                              ; preds = %265, %256
  %269 = call i32 @regulator_get_voltage_rdev(ptr noundef %35) #26
  %270 = icmp slt i32 %269, 0
  br i1 %270, label %307, label %271

271:                                              ; preds = %268, %246, %243, %240, %233
  %272 = phi i1 [ %203, %246 ], [ %203, %268 ], [ %203, %233 ], [ false, %243 ], [ false, %240 ]
  %273 = phi i32 [ %201, %246 ], [ %201, %268 ], [ %201, %233 ], [ %245, %243 ], [ %242, %240 ]
  %274 = phi i32 [ -1, %246 ], [ %269, %268 ], [ %231, %233 ], [ %231, %243 ], [ %231, %240 ]
  %275 = sub i32 %273, %274
  %276 = call i32 @llvm.abs.i32(i32 %275, i1 false)
  %277 = icmp eq i32 %273, %274
  %278 = icmp ugt i32 %22, %276
  %279 = select i1 %277, i1 true, i1 %278
  br i1 %279, label %282, label %280

280:                                              ; preds = %271
  %281 = load ptr, ptr %34, align 4
  br label %282

282:                                              ; preds = %280, %271, %265, %20
  %283 = phi ptr [ %27, %271 ], [ %281, %280 ], [ %27, %20 ], [ %27, %265 ]
  %284 = phi i32 [ %25, %271 ], [ %273, %280 ], [ %25, %20 ], [ %25, %265 ]
  %285 = phi i32 [ %24, %271 ], [ %202, %280 ], [ %24, %20 ], [ %24, %265 ]
  %286 = phi i32 [ %23, %271 ], [ %26, %280 ], [ %23, %20 ], [ %23, %265 ]
  %287 = phi i32 [ %22, %271 ], [ %276, %280 ], [ %22, %20 ], [ %22, %265 ]
  %288 = phi i1 [ %21, %271 ], [ %272, %280 ], [ %21, %20 ], [ %21, %265 ]
  %289 = add nuw nsw i32 %26, 1
  %290 = icmp eq i32 %289, %18
  br i1 %290, label %299, label %291

291:                                              ; preds = %306, %282
  %292 = phi i1 [ %288, %282 ], [ false, %306 ]
  %293 = phi i32 [ %287, %282 ], [ 0, %306 ]
  %294 = phi i32 [ %286, %282 ], [ 0, %306 ]
  %295 = phi i32 [ %285, %282 ], [ 0, %306 ]
  %296 = phi i32 [ %284, %282 ], [ 0, %306 ]
  %297 = phi i32 [ %289, %282 ], [ 0, %306 ]
  %298 = phi ptr [ %283, %282 ], [ null, %306 ]
  br label %20

299:                                              ; preds = %282
  %300 = icmp eq ptr %283, null
  br i1 %300, label %307, label %301

301:                                              ; preds = %299
  %302 = call i32 @regulator_set_voltage_rdev(ptr noundef nonnull %283, i32 noundef %284, i32 noundef %285, i32 noundef %1)
  %303 = icmp slt i32 %302, 0
  br i1 %303, label %307, label %304

304:                                              ; preds = %301
  br i1 %288, label %305, label %306

305:                                              ; preds = %304
  call void @_set_bit(i32 noundef %286, ptr noundef nonnull %6) #26
  br label %306

306:                                              ; preds = %305, %304
  br i1 %16, label %291, label %307

307:                                              ; preds = %306, %301, %299, %268, %230, %195, %176, %140, %80, %9
  %308 = phi i32 [ -22, %80 ], [ %141, %140 ], [ 0, %9 ], [ %178, %176 ], [ %302, %301 ], [ %302, %306 ], [ 0, %299 ], [ %231, %230 ], [ %269, %268 ], [ -22, %195 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #26
  ret i32 %308
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @regulator_set_voltage(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.ww_acquire_ctx, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #26
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %4, i8 0, i32 16, i1 false), !annotation !9
  %5 = getelementptr inbounds %struct.regulator, ptr %0, i32 0, i32 9
  %6 = load ptr, ptr %5, align 4
  call fastcc void @regulator_lock_dependent(ptr noundef %6, ptr noundef nonnull %4)
  %7 = call fastcc i32 @regulator_set_voltage_unlocked(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef 0)
  %8 = load ptr, ptr %5, align 4
  %9 = getelementptr inbounds %struct.regulator_dev, ptr %8, i32 0, i32 7, i32 3
  %10 = load i32, ptr %9, align 4
  call fastcc void @regulator_unlock_recursive(ptr noundef %8, i32 noundef %10) #26
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #26
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @regulator_suspend_enable(ptr nocapture noundef readonly %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 14
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %22, label %6

6:                                                ; preds = %2
  switch i32 %1, label %22 [
    i32 2, label %7
    i32 3, label %9
    i32 4, label %11
  ]

7:                                                ; preds = %6
  %8 = getelementptr inbounds %struct.regulation_constraints, ptr %4, i32 0, i32 15
  br label %13

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.regulation_constraints, ptr %4, i32 0, i32 14
  br label %13

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.regulation_constraints, ptr %4, i32 0, i32 13
  br label %13

13:                                               ; preds = %11, %9, %7
  %14 = phi ptr [ %12, %11 ], [ %10, %9 ], [ %8, %7 ]
  %15 = icmp eq ptr %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.regulator_state, ptr %14, i32 0, i32 5
  %18 = load i8, ptr %17, align 4, !range !17
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.regulator_state, ptr %14, i32 0, i32 4
  store i32 2, ptr %21, align 4
  br label %22

22:                                               ; preds = %20, %16, %13, %6, %2
  %23 = phi i32 [ 0, %20 ], [ -22, %13 ], [ -1, %16 ], [ -22, %2 ], [ -22, %6 ]
  ret i32 %23
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @regulator_suspend_disable(ptr noundef readonly %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 6
  br label %4

4:                                                ; preds = %13, %2
  %5 = phi ptr [ %3, %2 ], [ %6, %13 ]
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, %3
  br i1 %7, label %17, label %8

8:                                                ; preds = %4
  %9 = getelementptr i8, ptr %6, i32 24
  %10 = getelementptr [5 x %struct.regulator_voltage], ptr %9, i32 0, i32 %1
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %37

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.regulator_voltage, ptr %10, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %4, label %37

17:                                               ; preds = %4
  %18 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 14
  %19 = load ptr, ptr %18, align 8
  %20 = icmp eq ptr %19, null
  br i1 %20, label %37, label %21

21:                                               ; preds = %17
  switch i32 %1, label %37 [
    i32 2, label %22
    i32 3, label %24
    i32 4, label %26
  ]

22:                                               ; preds = %21
  %23 = getelementptr inbounds %struct.regulation_constraints, ptr %19, i32 0, i32 15
  br label %28

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.regulation_constraints, ptr %19, i32 0, i32 14
  br label %28

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.regulation_constraints, ptr %19, i32 0, i32 13
  br label %28

28:                                               ; preds = %26, %24, %22
  %29 = phi ptr [ %27, %26 ], [ %25, %24 ], [ %23, %22 ]
  %30 = icmp eq ptr %29, null
  br i1 %30, label %37, label %31

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.regulator_state, ptr %29, i32 0, i32 5
  %33 = load i8, ptr %32, align 4, !range !17
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.regulator_state, ptr %29, i32 0, i32 4
  store i32 1, ptr %36, align 4
  br label %37

37:                                               ; preds = %35, %31, %28, %21, %17, %13, %8
  %38 = phi i32 [ 0, %35 ], [ -22, %28 ], [ -1, %31 ], [ -22, %17 ], [ -22, %21 ], [ 0, %13 ], [ 0, %8 ]
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @regulator_set_suspend_voltage(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.ww_acquire_ctx, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #26
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %5, i8 0, i32 16, i1 false), !annotation !9
  %6 = icmp sgt i32 %3, 4
  %7 = icmp ult i32 %3, 2
  %8 = or i1 %6, %7
  br i1 %8, label %50, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.regulator, ptr %0, i32 0, i32 9
  %11 = load ptr, ptr %10, align 4
  call fastcc void @regulator_lock_dependent(ptr noundef %11, ptr noundef nonnull %5)
  %12 = load ptr, ptr %10, align 4
  %13 = getelementptr inbounds %struct.regulator_dev, ptr %12, i32 0, i32 14
  %14 = load ptr, ptr %13, align 8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %45, label %16

16:                                               ; preds = %9
  switch i32 %3, label %45 [
    i32 2, label %17
    i32 3, label %19
    i32 4, label %21
  ]

17:                                               ; preds = %16
  %18 = getelementptr inbounds %struct.regulation_constraints, ptr %14, i32 0, i32 15
  br label %23

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.regulation_constraints, ptr %14, i32 0, i32 14
  br label %23

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.regulation_constraints, ptr %14, i32 0, i32 13
  br label %23

23:                                               ; preds = %21, %19, %17
  %24 = phi ptr [ %22, %21 ], [ %20, %19 ], [ %18, %17 ]
  %25 = icmp eq ptr %24, null
  br i1 %25, label %45, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.regulator_state, ptr %24, i32 0, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr inbounds %struct.regulator_state, ptr %24, i32 0, i32 2
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %28, %30
  br i1 %31, label %32, label %43

32:                                               ; preds = %26
  %33 = load ptr, ptr %14, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %40

35:                                               ; preds = %32
  %36 = load ptr, ptr %12, align 8
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  %39 = select i1 %38, ptr @.str, ptr %37
  br label %40

40:                                               ; preds = %35, %32
  %41 = phi ptr [ %33, %32 ], [ %39, %35 ]
  %42 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, ptr noundef %41) #27
  br label %45

43:                                               ; preds = %26
  %44 = call fastcc i32 @regulator_set_voltage_unlocked(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #26
  br label %45

45:                                               ; preds = %43, %40, %23, %16, %9
  %46 = phi i32 [ -1, %40 ], [ %44, %43 ], [ -22, %23 ], [ -22, %9 ], [ -22, %16 ]
  %47 = load ptr, ptr %10, align 4
  %48 = getelementptr inbounds %struct.regulator_dev, ptr %47, i32 0, i32 7, i32 3
  %49 = load i32, ptr %48, align 4
  call fastcc void @regulator_unlock_recursive(ptr noundef %47, i32 noundef %49) #26
  br label %50

50:                                               ; preds = %45, %4
  %51 = phi i32 [ %46, %45 ], [ -22, %4 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #26
  ret i32 %51
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @regulator_set_voltage_time(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.regulator, ptr %0, i32 0, i32 9
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.regulator_desc, ptr %6, i32 0, i32 10
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.regulator_ops, ptr %8, i32 0, i32 22
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %3
  %13 = tail call i32 %10(ptr noundef %5, i32 noundef %1, i32 noundef %2) #26
  br label %99

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.regulator_ops, ptr %8, i32 0, i32 23
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %52

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.regulator_dev, ptr %5, i32 0, i32 14
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr inbounds %struct.regulation_constraints, ptr %20, i32 0, i32 22
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %45

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.regulator_desc, ptr %6, i32 0, i32 18
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %45

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.regulation_constraints, ptr %20, i32 0, i32 23
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %99

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.regulation_constraints, ptr %20, i32 0, i32 24
  %34 = load i32, ptr %33, align 4
  %35 = icmp ne i32 %34, 0
  %36 = icmp sgt i32 %2, %1
  %37 = and i1 %36, %35
  br i1 %37, label %99, label %38

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.regulation_constraints, ptr %20, i32 0, i32 25
  %40 = load i32, ptr %39, align 4
  %41 = icmp ne i32 %40, 0
  %42 = icmp slt i32 %2, %1
  %43 = and i1 %42, %41
  %44 = select i1 %43, i32 %40, i32 0
  br label %99

45:                                               ; preds = %24, %18
  %46 = phi i32 [ %26, %24 ], [ %22, %18 ]
  %47 = sub i32 %2, %1
  %48 = tail call i32 @llvm.abs.i32(i32 %47, i1 false) #26
  %49 = add i32 %48, -1
  %50 = add i32 %49, %46
  %51 = udiv i32 %50, %46
  br label %99

52:                                               ; preds = %14
  %53 = load ptr, ptr %8, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %99, label %55

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct.regulator_desc, ptr %6, i32 0, i32 8
  %57 = load i32, ptr %56, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %99, label %59

59:                                               ; preds = %82, %55
  %60 = phi ptr [ %86, %82 ], [ %6, %55 ]
  %61 = phi i32 [ %85, %82 ], [ 0, %55 ]
  %62 = phi i32 [ %84, %82 ], [ -1, %55 ]
  %63 = phi i32 [ %83, %82 ], [ -1, %55 ]
  %64 = getelementptr inbounds %struct.regulator_desc, ptr %60, i32 0, i32 16
  %65 = load i32, ptr %64, align 4
  %66 = icmp ult i32 %61, %65
  br i1 %66, label %82, label %67

67:                                               ; preds = %59
  %68 = icmp sgt i32 %63, -1
  %69 = icmp sgt i32 %62, -1
  %70 = select i1 %68, i1 %69, i1 false
  br i1 %70, label %90, label %71

71:                                               ; preds = %67
  %72 = load ptr, ptr %4, align 4
  %73 = tail call fastcc i32 @_regulator_list_voltage(ptr noundef %72, i32 noundef %61, i32 noundef 1) #26
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %99, label %75

75:                                               ; preds = %71
  %76 = icmp eq i32 %73, 0
  br i1 %76, label %82, label %77

77:                                               ; preds = %75
  %78 = icmp eq i32 %73, %1
  %79 = select i1 %78, i32 %61, i32 %63
  %80 = icmp eq i32 %73, %2
  %81 = select i1 %80, i32 %61, i32 %62
  br label %82

82:                                               ; preds = %77, %75, %59
  %83 = phi i32 [ %63, %59 ], [ %63, %75 ], [ %79, %77 ]
  %84 = phi i32 [ %62, %59 ], [ %62, %75 ], [ %81, %77 ]
  %85 = add nuw i32 %61, 1
  %86 = load ptr, ptr %5, align 8
  %87 = getelementptr inbounds %struct.regulator_desc, ptr %86, i32 0, i32 8
  %88 = load i32, ptr %87, align 4
  %89 = icmp ult i32 %85, %88
  br i1 %89, label %59, label %90

90:                                               ; preds = %82, %67
  %91 = phi i32 [ %83, %82 ], [ %63, %67 ]
  %92 = phi i32 [ %84, %82 ], [ %62, %67 ]
  %93 = icmp slt i32 %91, 0
  %94 = icmp slt i32 %92, 0
  %95 = select i1 %93, i1 true, i1 %94
  br i1 %95, label %99, label %96

96:                                               ; preds = %90
  %97 = load ptr, ptr %15, align 4
  %98 = tail call i32 %97(ptr noundef %5, i32 noundef %91, i32 noundef %92) #26
  br label %99

99:                                               ; preds = %96, %90, %71, %55, %52, %45, %38, %32, %28, %12
  %100 = phi i32 [ %13, %12 ], [ %98, %96 ], [ -22, %55 ], [ -22, %52 ], [ -22, %90 ], [ %51, %45 ], [ %30, %28 ], [ %34, %32 ], [ %44, %38 ], [ -22, %71 ]
  ret i32 %100
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @regulator_set_voltage_time_sel(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = load ptr, ptr %0, align 8
  %5 = getelementptr inbounds %struct.regulator_desc, ptr %4, i32 0, i32 10
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %58, label %9

9:                                                ; preds = %3
  %10 = tail call i32 %7(ptr noundef %0, i32 noundef %1) #26
  %11 = load ptr, ptr %0, align 8
  %12 = getelementptr inbounds %struct.regulator_desc, ptr %11, i32 0, i32 10
  %13 = load ptr, ptr %12, align 4
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 %14(ptr noundef %0, i32 noundef %2) #26
  %16 = load ptr, ptr %0, align 8
  %17 = getelementptr inbounds %struct.regulator_desc, ptr %16, i32 0, i32 10
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.regulator_ops, ptr %18, i32 0, i32 22
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %9
  %23 = tail call i32 %20(ptr noundef %0, i32 noundef %10, i32 noundef %15) #26
  br label %58

24:                                               ; preds = %9
  %25 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 14
  %26 = load ptr, ptr %25, align 8
  %27 = getelementptr inbounds %struct.regulation_constraints, ptr %26, i32 0, i32 22
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %51

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.regulator_desc, ptr %16, i32 0, i32 18
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %51

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.regulation_constraints, ptr %26, i32 0, i32 23
  %36 = load i32, ptr %35, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %58

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.regulation_constraints, ptr %26, i32 0, i32 24
  %40 = load i32, ptr %39, align 4
  %41 = icmp ne i32 %40, 0
  %42 = icmp sgt i32 %15, %10
  %43 = and i1 %42, %41
  br i1 %43, label %58, label %44

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.regulation_constraints, ptr %26, i32 0, i32 25
  %46 = load i32, ptr %45, align 4
  %47 = icmp ne i32 %46, 0
  %48 = icmp slt i32 %15, %10
  %49 = and i1 %48, %47
  %50 = select i1 %49, i32 %46, i32 0
  br label %58

51:                                               ; preds = %30, %24
  %52 = phi i32 [ %32, %30 ], [ %28, %24 ]
  %53 = sub i32 %15, %10
  %54 = tail call i32 @llvm.abs.i32(i32 %53, i1 false) #26
  %55 = add i32 %54, -1
  %56 = add i32 %55, %52
  %57 = udiv i32 %56, %52
  br label %58

58:                                               ; preds = %51, %44, %38, %34, %22, %3
  %59 = phi i32 [ %23, %22 ], [ -22, %3 ], [ %57, %51 ], [ %36, %34 ], [ %40, %38 ], [ %50, %44 ]
  ret i32 %59
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @regulator_sync_voltage_rdev(ptr noundef %0) local_unnamed_addr #0 {
  tail call fastcc void @regulator_lock(ptr noundef %0)
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.regulator_desc, ptr %2, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.regulator_ops, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.regulator_ops, ptr %4, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %46, label %12

12:                                               ; preds = %8, %1
  %13 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 7, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = icmp sgt i32 %14, 1
  br i1 %15, label %16, label %46

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 7, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 7, i32 2
  %20 = load i32, ptr %19, align 4
  %21 = icmp slt i32 %20, %14
  br i1 %21, label %22, label %36

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 14
  %24 = load ptr, ptr %23, align 8
  %25 = icmp eq ptr %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %22
  %27 = load ptr, ptr %24, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %26, %22
  %30 = load ptr, ptr %2, align 4
  %31 = icmp eq ptr %30, null
  %32 = select i1 %31, ptr @.str, ptr %30
  br label %33

33:                                               ; preds = %29, %26
  %34 = phi ptr [ %27, %26 ], [ %32, %29 ]
  %35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, ptr noundef %34) #27
  br label %46

36:                                               ; preds = %16
  %37 = icmp eq ptr %18, null
  br i1 %37, label %44, label %38

38:                                               ; preds = %36
  %39 = getelementptr inbounds %struct.regulator_coupler, ptr %18, i32 0, i32 3
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %44, label %42

42:                                               ; preds = %38
  %43 = tail call i32 %40(ptr noundef nonnull %18, ptr noundef %0, i32 noundef 0) #26
  br label %46

44:                                               ; preds = %38, %36
  %45 = tail call i32 @regulator_do_balance_voltage(ptr noundef %0, i32 noundef 0, i1 noundef zeroext false) #26
  br label %46

46:                                               ; preds = %44, %42, %33, %12, %8
  %47 = phi i32 [ -22, %8 ], [ -95, %12 ], [ -1, %33 ], [ %43, %42 ], [ %45, %44 ]
  tail call void @mutex_lock(ptr noundef nonnull @regulator_nesting_mutex) #26
  %48 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 11
  %49 = load i32, ptr %48, align 4
  %50 = add i32 %49, -1
  store i32 %50, ptr %48, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %46
  %53 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 10
  store ptr null, ptr %53, align 8
  %54 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 9
  tail call void @ww_mutex_unlock(ptr noundef %54) #26
  %55 = load i32, ptr %48, align 4
  br label %56

56:                                               ; preds = %52, %46
  %57 = phi i32 [ %55, %52 ], [ %50, %46 ]
  %58 = icmp slt i32 %57, 0
  %59 = load i1, ptr @regulator_unlock.__already_done, align 1
  %60 = xor i1 %59, true
  %61 = select i1 %58, i1 %60, i1 false
  br i1 %61, label %62, label %63, !prof !11

62:                                               ; preds = %56
  store i1 true, ptr @regulator_unlock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 204, i32 noundef 9, ptr noundef null) #26
  br label %63

63:                                               ; preds = %62, %56
  tail call void @mutex_unlock(ptr noundef nonnull @regulator_nesting_mutex) #26
  ret i32 %47
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @regulator_sync_voltage(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.regulator, ptr %0, i32 0, i32 9
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.regulator, ptr %0, i32 0, i32 6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #26
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #26
  %7 = getelementptr inbounds %struct.regulator_dev, ptr %5, i32 0, i32 14
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = load ptr, ptr %5, align 8
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  %14 = select i1 %13, ptr @.str, ptr %12
  %15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef %14) #27
  br label %142

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.regulation_constraints, ptr %8, i32 0, i32 11
  %18 = load i32, ptr %17, align 4
  %19 = and i32 %18, 1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %142, label %21

21:                                               ; preds = %16
  tail call fastcc void @regulator_lock(ptr noundef %5)
  %22 = load ptr, ptr %5, align 8
  %23 = getelementptr inbounds %struct.regulator_desc, ptr %22, i32 0, i32 10
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.regulator_ops, ptr %24, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct.regulator_ops, ptr %24, i32 0, i32 3
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %124, label %32

32:                                               ; preds = %28, %21
  %33 = load i32, ptr %6, align 4
  %34 = icmp eq i32 %33, 0
  %35 = getelementptr inbounds %struct.regulator, ptr %0, i32 0, i32 6, i32 0, i32 1
  %36 = load i32, ptr %35, align 4
  %37 = icmp eq i32 %36, 0
  %38 = select i1 %34, i1 %37, i1 false
  br i1 %38, label %124, label %39

39:                                               ; preds = %32
  store i32 %33, ptr %2, align 4
  store i32 %36, ptr %3, align 4
  %40 = call i32 @regulator_check_voltage(ptr noundef %5, ptr noundef nonnull %2, ptr noundef nonnull %3)
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %124, label %42

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.regulator_dev, ptr %5, i32 0, i32 6
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, %43
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = load i32, ptr %2, align 4
  %48 = load i32, ptr %3, align 4
  br label %70

49:                                               ; preds = %42
  %50 = load i32, ptr %3, align 4
  %51 = load i32, ptr %2, align 4
  br label %52

52:                                               ; preds = %52, %49
  %53 = phi i32 [ %65, %52 ], [ %51, %49 ]
  %54 = phi i32 [ %66, %52 ], [ %50, %49 ]
  %55 = phi ptr [ %67, %52 ], [ %44, %49 ]
  %56 = getelementptr i8, ptr %55, i32 24
  %57 = load i32, ptr %56, align 4
  %58 = icmp eq i32 %57, 0
  %59 = getelementptr i8, ptr %55, i32 28
  %60 = load i32, ptr %59, align 4
  %61 = icmp eq i32 %60, 0
  %62 = select i1 %58, i1 %61, i1 false
  %63 = tail call i32 @llvm.smin.i32(i32 %54, i32 %60)
  %64 = tail call i32 @llvm.smax.i32(i32 %53, i32 %57)
  %65 = select i1 %62, i32 %53, i32 %64
  %66 = select i1 %62, i32 %54, i32 %63
  %67 = load ptr, ptr %55, align 4
  %68 = icmp eq ptr %67, %43
  br i1 %68, label %69, label %52

69:                                               ; preds = %52
  store i32 %66, ptr %3, align 4
  store i32 %65, ptr %2, align 4
  br label %70

70:                                               ; preds = %69, %46
  %71 = phi i32 [ %48, %46 ], [ %66, %69 ]
  %72 = phi i32 [ %47, %46 ], [ %65, %69 ]
  %73 = icmp sgt i32 %72, %71
  br i1 %73, label %74, label %88

74:                                               ; preds = %70
  %75 = load ptr, ptr %7, align 8
  %76 = icmp eq ptr %75, null
  br i1 %76, label %80, label %77

77:                                               ; preds = %74
  %78 = load ptr, ptr %75, align 4
  %79 = icmp eq ptr %78, null
  br i1 %79, label %80, label %85

80:                                               ; preds = %77, %74
  %81 = load ptr, ptr %5, align 8
  %82 = load ptr, ptr %81, align 4
  %83 = icmp eq ptr %82, null
  %84 = select i1 %83, ptr @.str, ptr %82
  br label %85

85:                                               ; preds = %80, %77
  %86 = phi ptr [ %78, %77 ], [ %84, %80 ]
  %87 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %86, i32 noundef %72, i32 noundef %71) #27
  br label %124

88:                                               ; preds = %70
  %89 = getelementptr inbounds %struct.regulator_dev, ptr %5, i32 0, i32 7, i32 3
  %90 = load i32, ptr %89, align 4
  %91 = icmp sgt i32 %90, 1
  br i1 %91, label %92, label %122

92:                                               ; preds = %88
  %93 = getelementptr inbounds %struct.regulator_dev, ptr %5, i32 0, i32 7, i32 1
  %94 = load ptr, ptr %93, align 4
  %95 = getelementptr inbounds %struct.regulator_dev, ptr %5, i32 0, i32 7, i32 2
  %96 = load i32, ptr %95, align 4
  %97 = icmp slt i32 %96, %90
  br i1 %97, label %98, label %112

98:                                               ; preds = %92
  %99 = load ptr, ptr %7, align 8
  %100 = icmp eq ptr %99, null
  br i1 %100, label %104, label %101

101:                                              ; preds = %98
  %102 = load ptr, ptr %99, align 4
  %103 = icmp eq ptr %102, null
  br i1 %103, label %104, label %109

104:                                              ; preds = %101, %98
  %105 = load ptr, ptr %5, align 8
  %106 = load ptr, ptr %105, align 4
  %107 = icmp eq ptr %106, null
  %108 = select i1 %107, ptr @.str, ptr %106
  br label %109

109:                                              ; preds = %104, %101
  %110 = phi ptr [ %102, %101 ], [ %108, %104 ]
  %111 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, ptr noundef %110) #27
  br label %124

112:                                              ; preds = %92
  %113 = icmp eq ptr %94, null
  br i1 %113, label %120, label %114

114:                                              ; preds = %112
  %115 = getelementptr inbounds %struct.regulator_coupler, ptr %94, i32 0, i32 3
  %116 = load ptr, ptr %115, align 4
  %117 = icmp eq ptr %116, null
  br i1 %117, label %120, label %118

118:                                              ; preds = %114
  %119 = tail call i32 %116(ptr noundef nonnull %94, ptr noundef %5, i32 noundef 0) #26
  br label %124

120:                                              ; preds = %114, %112
  %121 = tail call i32 @regulator_do_balance_voltage(ptr noundef %5, i32 noundef 0, i1 noundef zeroext false) #26
  br label %124

122:                                              ; preds = %88
  %123 = tail call fastcc i32 @_regulator_do_set_voltage(ptr noundef %5, i32 noundef %72, i32 noundef %71)
  br label %124

124:                                              ; preds = %122, %120, %118, %109, %85, %39, %32, %28
  %125 = phi i32 [ %40, %39 ], [ %123, %122 ], [ -22, %28 ], [ -22, %85 ], [ -1, %109 ], [ %119, %118 ], [ %121, %120 ], [ -22, %32 ]
  tail call void @mutex_lock(ptr noundef nonnull @regulator_nesting_mutex) #26
  %126 = getelementptr inbounds %struct.regulator_dev, ptr %5, i32 0, i32 11
  %127 = load i32, ptr %126, align 4
  %128 = add i32 %127, -1
  store i32 %128, ptr %126, align 4
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %124
  %131 = getelementptr inbounds %struct.regulator_dev, ptr %5, i32 0, i32 10
  store ptr null, ptr %131, align 8
  %132 = getelementptr inbounds %struct.regulator_dev, ptr %5, i32 0, i32 9
  tail call void @ww_mutex_unlock(ptr noundef %132) #26
  %133 = load i32, ptr %126, align 4
  br label %134

134:                                              ; preds = %130, %124
  %135 = phi i32 [ %133, %130 ], [ %128, %124 ]
  %136 = icmp slt i32 %135, 0
  %137 = load i1, ptr @regulator_unlock.__already_done, align 1
  %138 = xor i1 %137, true
  %139 = select i1 %136, i1 %138, i1 false
  br i1 %139, label %140, label %141, !prof !11

140:                                              ; preds = %134
  store i1 true, ptr @regulator_unlock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 204, i32 noundef 9, ptr noundef null) #26
  br label %141

141:                                              ; preds = %140, %134
  tail call void @mutex_unlock(ptr noundef nonnull @regulator_nesting_mutex) #26
  br label %142

142:                                              ; preds = %141, %16, %10
  %143 = phi i32 [ %125, %141 ], [ 0, %16 ], [ 0, %10 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #26
  ret i32 %143
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @regulator_set_current_limit(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.regulator, ptr %0, i32 0, i32 9
  %5 = load ptr, ptr %4, align 4
  tail call fastcc void @regulator_lock(ptr noundef %5)
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.regulator_desc, ptr %6, i32 0, i32 10
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.regulator_ops, ptr %8, i32 0, i32 6
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %63, label %12

12:                                               ; preds = %3
  %13 = icmp sgt i32 %1, %2
  br i1 %13, label %14, label %15, !prof !11

14:                                               ; preds = %12
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/regulator/core.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 488, 0\0A.popsection", ""() #26, !srcloc !22
  unreachable

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.regulator_dev, ptr %5, i32 0, i32 14
  %17 = load ptr, ptr %16, align 8
  %18 = icmp eq ptr %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.regulation_constraints, ptr %17, i32 0, i32 11
  %21 = load i32, ptr %20, align 4
  %22 = and i32 %21, 2
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %31, label %43

24:                                               ; preds = %15
  %25 = load ptr, ptr %6, align 4
  %26 = icmp eq ptr %25, null
  %27 = select i1 %26, ptr @.str, ptr %25
  %28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef %27) #27
  %29 = load ptr, ptr %16, align 8
  %30 = icmp eq ptr %29, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %24, %19
  %32 = phi ptr [ %29, %24 ], [ %17, %19 ]
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %40

35:                                               ; preds = %31, %24
  %36 = load ptr, ptr %5, align 8
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  %39 = select i1 %38, ptr @.str, ptr %37
  br label %40

40:                                               ; preds = %35, %31
  %41 = phi ptr [ %33, %31 ], [ %39, %35 ]
  %42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, ptr noundef %41) #27
  br label %63

43:                                               ; preds = %19
  %44 = getelementptr inbounds %struct.regulation_constraints, ptr %17, i32 0, i32 5
  %45 = load i32, ptr %44, align 4
  %46 = getelementptr inbounds %struct.regulation_constraints, ptr %17, i32 0, i32 4
  %47 = load i32, ptr %46, align 4
  %48 = tail call i32 @llvm.smax.i32(i32 %47, i32 %1)
  %49 = tail call i32 @llvm.smin.i32(i32 %2, i32 %45)
  %50 = icmp sgt i32 %48, %49
  br i1 %50, label %51, label %61

51:                                               ; preds = %43
  %52 = load ptr, ptr %17, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %58

54:                                               ; preds = %51
  %55 = load ptr, ptr %6, align 4
  %56 = icmp eq ptr %55, null
  %57 = select i1 %56, ptr @.str, ptr %55
  br label %58

58:                                               ; preds = %54, %51
  %59 = phi ptr [ %52, %51 ], [ %57, %54 ]
  %60 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef %59, i32 noundef %48, i32 noundef %49) #27
  br label %63

61:                                               ; preds = %43
  %62 = tail call i32 %10(ptr noundef %5, i32 noundef %48, i32 noundef %49) #26
  br label %63

63:                                               ; preds = %61, %58, %40, %3
  %64 = phi i32 [ %62, %61 ], [ -22, %3 ], [ -1, %40 ], [ -22, %58 ]
  tail call void @mutex_lock(ptr noundef nonnull @regulator_nesting_mutex) #26
  %65 = getelementptr inbounds %struct.regulator_dev, ptr %5, i32 0, i32 11
  %66 = load i32, ptr %65, align 4
  %67 = add i32 %66, -1
  store i32 %67, ptr %65, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %63
  %70 = getelementptr inbounds %struct.regulator_dev, ptr %5, i32 0, i32 10
  store ptr null, ptr %70, align 8
  %71 = getelementptr inbounds %struct.regulator_dev, ptr %5, i32 0, i32 9
  tail call void @ww_mutex_unlock(ptr noundef %71) #26
  %72 = load i32, ptr %65, align 4
  br label %73

73:                                               ; preds = %69, %63
  %74 = phi i32 [ %72, %69 ], [ %67, %63 ]
  %75 = icmp slt i32 %74, 0
  %76 = load i1, ptr @regulator_unlock.__already_done, align 1
  %77 = xor i1 %76, true
  %78 = select i1 %75, i1 %77, i1 false
  br i1 %78, label %79, label %80, !prof !11

79:                                               ; preds = %73
  store i1 true, ptr @regulator_unlock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 204, i32 noundef 9, ptr noundef null) #26
  br label %80

80:                                               ; preds = %79, %73
  tail call void @mutex_unlock(ptr noundef nonnull @regulator_nesting_mutex) #26
  ret i32 %64
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @regulator_get_current_limit(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.regulator, ptr %0, i32 0, i32 9
  %3 = load ptr, ptr %2, align 4
  %4 = tail call fastcc i32 @_regulator_get_current_limit(ptr noundef %3)
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @_regulator_get_current_limit(ptr noundef %0) unnamed_addr #0 {
  tail call fastcc void @regulator_lock(ptr noundef %0)
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.regulator_desc, ptr %2, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.regulator_ops, ptr %4, i32 0, i32 7
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = tail call i32 %6(ptr noundef %0) #26
  br label %10

10:                                               ; preds = %8, %1
  %11 = phi i32 [ %9, %8 ], [ -22, %1 ]
  tail call void @mutex_lock(ptr noundef nonnull @regulator_nesting_mutex) #26
  %12 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 11
  %13 = load i32, ptr %12, align 4
  %14 = add i32 %13, -1
  store i32 %14, ptr %12, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 10
  store ptr null, ptr %17, align 8
  %18 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 9
  tail call void @ww_mutex_unlock(ptr noundef %18) #26
  %19 = load i32, ptr %12, align 4
  br label %20

20:                                               ; preds = %16, %10
  %21 = phi i32 [ %19, %16 ], [ %14, %10 ]
  %22 = icmp slt i32 %21, 0
  %23 = load i1, ptr @regulator_unlock.__already_done, align 1
  %24 = xor i1 %23, true
  %25 = select i1 %22, i1 %24, i1 false
  br i1 %25, label %26, label %27, !prof !11

26:                                               ; preds = %20
  store i1 true, ptr @regulator_unlock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 204, i32 noundef 9, ptr noundef null) #26
  br label %27

27:                                               ; preds = %26, %20
  tail call void @mutex_unlock(ptr noundef nonnull @regulator_nesting_mutex) #26
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @regulator_set_mode(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  store i32 %1, ptr %3, align 4
  %4 = getelementptr inbounds %struct.regulator, ptr %0, i32 0, i32 9
  %5 = load ptr, ptr %4, align 4
  tail call fastcc void @regulator_lock(ptr noundef %5)
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.regulator_desc, ptr %6, i32 0, i32 10
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.regulator_ops, ptr %8, i32 0, i32 17
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %30, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.regulator_ops, ptr %8, i32 0, i32 18
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %12
  %17 = tail call i32 %14(ptr noundef %5) #26
  %18 = icmp eq i32 %17, %1
  br i1 %18, label %30, label %19

19:                                               ; preds = %16, %12
  %20 = call fastcc i32 @regulator_mode_constrain(ptr noundef %5, ptr noundef nonnull %3)
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %30, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr %5, align 8
  %24 = getelementptr inbounds %struct.regulator_desc, ptr %23, i32 0, i32 10
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.regulator_ops, ptr %25, i32 0, i32 17
  %27 = load ptr, ptr %26, align 4
  %28 = load i32, ptr %3, align 4
  %29 = tail call i32 %27(ptr noundef %5, i32 noundef %28) #26
  br label %30

30:                                               ; preds = %22, %19, %16, %2
  %31 = phi i32 [ %20, %19 ], [ %29, %22 ], [ -22, %2 ], [ 0, %16 ]
  tail call void @mutex_lock(ptr noundef nonnull @regulator_nesting_mutex) #26
  %32 = getelementptr inbounds %struct.regulator_dev, ptr %5, i32 0, i32 11
  %33 = load i32, ptr %32, align 4
  %34 = add i32 %33, -1
  store i32 %34, ptr %32, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.regulator_dev, ptr %5, i32 0, i32 10
  store ptr null, ptr %37, align 8
  %38 = getelementptr inbounds %struct.regulator_dev, ptr %5, i32 0, i32 9
  tail call void @ww_mutex_unlock(ptr noundef %38) #26
  %39 = load i32, ptr %32, align 4
  br label %40

40:                                               ; preds = %36, %30
  %41 = phi i32 [ %39, %36 ], [ %34, %30 ]
  %42 = icmp slt i32 %41, 0
  %43 = load i1, ptr @regulator_unlock.__already_done, align 1
  %44 = xor i1 %43, true
  %45 = select i1 %42, i1 %44, i1 false
  br i1 %45, label %46, label %47, !prof !11

46:                                               ; preds = %40
  store i1 true, ptr @regulator_unlock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 204, i32 noundef 9, ptr noundef null) #26
  br label %47

47:                                               ; preds = %46, %40
  tail call void @mutex_unlock(ptr noundef nonnull @regulator_nesting_mutex) #26
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @regulator_mode_constrain(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = load i32, ptr %1, align 4
  switch i32 %3, label %4 [
    i32 1, label %19
    i32 2, label %19
    i32 4, label %19
    i32 8, label %19
  ]

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 14
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr %6, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %8, %4
  %12 = load ptr, ptr %0, align 8
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  %15 = select i1 %14, ptr @.str, ptr %13
  br label %16

16:                                               ; preds = %11, %8
  %17 = phi ptr [ %9, %8 ], [ %15, %11 ]
  %18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, ptr noundef %17, i32 noundef %3) #27
  br label %63

19:                                               ; preds = %2, %2, %2, %2
  %20 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 14
  %21 = load ptr, ptr %20, align 8
  %22 = icmp eq ptr %21, null
  br i1 %22, label %33, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.regulation_constraints, ptr %21, i32 0, i32 11
  %25 = load i32, ptr %24, align 4
  %26 = and i32 %25, 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %41, label %28

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.regulation_constraints, ptr %21, i32 0, i32 10
  %30 = load i32, ptr %29, align 4
  %31 = and i32 %30, %3
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %53, label %63

33:                                               ; preds = %19
  %34 = load ptr, ptr %0, align 8
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  %37 = select i1 %36, ptr @.str, ptr %35
  %38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef %37) #27
  %39 = load ptr, ptr %20, align 8
  %40 = icmp eq ptr %39, null
  br i1 %40, label %45, label %41

41:                                               ; preds = %33, %23
  %42 = phi ptr [ %39, %33 ], [ %21, %23 ]
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %50

45:                                               ; preds = %41, %33
  %46 = load ptr, ptr %0, align 8
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  %49 = select i1 %48, ptr @.str, ptr %47
  br label %50

50:                                               ; preds = %45, %41
  %51 = phi ptr [ %43, %41 ], [ %49, %45 ]
  %52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, ptr noundef %51) #27
  br label %63

53:                                               ; preds = %57, %28
  %54 = phi i32 [ %55, %57 ], [ %3, %28 ]
  %55 = lshr i32 %54, 1
  store i32 %55, ptr %1, align 4
  %56 = icmp ult i32 %54, 2
  br i1 %56, label %63, label %57

57:                                               ; preds = %53
  %58 = load ptr, ptr %20, align 8
  %59 = getelementptr inbounds %struct.regulation_constraints, ptr %58, i32 0, i32 10
  %60 = load i32, ptr %59, align 4
  %61 = and i32 %60, %55
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %53, label %63

63:                                               ; preds = %57, %53, %50, %28, %16
  %64 = phi i32 [ -22, %16 ], [ -1, %50 ], [ 0, %28 ], [ 0, %57 ], [ -22, %53 ]
  ret i32 %64
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @regulator_get_mode(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.regulator, ptr %0, i32 0, i32 9
  %3 = load ptr, ptr %2, align 4
  %4 = tail call fastcc i32 @_regulator_get_mode(ptr noundef %3)
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @_regulator_get_mode(ptr noundef %0) unnamed_addr #0 {
  tail call fastcc void @regulator_lock(ptr noundef %0)
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.regulator_desc, ptr %2, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.regulator_ops, ptr %4, i32 0, i32 18
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = tail call i32 %6(ptr noundef %0) #26
  br label %10

10:                                               ; preds = %8, %1
  %11 = phi i32 [ %9, %8 ], [ -22, %1 ]
  tail call void @mutex_lock(ptr noundef nonnull @regulator_nesting_mutex) #26
  %12 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 11
  %13 = load i32, ptr %12, align 4
  %14 = add i32 %13, -1
  store i32 %14, ptr %12, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 10
  store ptr null, ptr %17, align 8
  %18 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 9
  tail call void @ww_mutex_unlock(ptr noundef %18) #26
  %19 = load i32, ptr %12, align 4
  br label %20

20:                                               ; preds = %16, %10
  %21 = phi i32 [ %19, %16 ], [ %14, %10 ]
  %22 = icmp slt i32 %21, 0
  %23 = load i1, ptr @regulator_unlock.__already_done, align 1
  %24 = xor i1 %23, true
  %25 = select i1 %22, i1 %24, i1 false
  br i1 %25, label %26, label %27, !prof !11

26:                                               ; preds = %20
  store i1 true, ptr @regulator_unlock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 204, i32 noundef 9, ptr noundef null) #26
  br label %27

27:                                               ; preds = %26, %20
  tail call void @mutex_unlock(ptr noundef nonnull @regulator_nesting_mutex) #26
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @regulator_get_error_flags(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.regulator, ptr %0, i32 0, i32 9
  %4 = load ptr, ptr %3, align 4
  tail call fastcc void @regulator_lock(ptr noundef %4) #26
  %5 = getelementptr inbounds %struct.regulator_dev, ptr %4, i32 0, i32 25
  %6 = load i8, ptr %5, align 4, !range !17
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %14, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.regulator_dev, ptr %4, i32 0, i32 26
  tail call void @_raw_spin_lock(ptr noundef %9) #26
  %10 = getelementptr inbounds %struct.regulator_dev, ptr %4, i32 0, i32 24
  %11 = load i32, ptr %10, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #26, !srcloc !23
  %12 = load i16, ptr %9, align 4
  %13 = add i16 %12, 1
  store i16 %13, ptr %9, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #26, !srcloc !24
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #26, !srcloc !25
  tail call void asm sideeffect "", "~{memory}"() #26, !srcloc !26
  br label %14

14:                                               ; preds = %8, %2
  %15 = phi i32 [ %11, %8 ], [ 0, %2 ]
  %16 = load ptr, ptr %4, align 8
  %17 = getelementptr inbounds %struct.regulator_desc, ptr %16, i32 0, i32 10
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.regulator_ops, ptr %18, i32 0, i32 19
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %14
  %23 = tail call i32 %20(ptr noundef %4, ptr noundef %1) #26
  br label %28

24:                                               ; preds = %14
  %25 = load i8, ptr %5, align 4, !range !17
  %26 = icmp eq i8 %25, 0
  %27 = select i1 %26, i32 -22, i32 0
  br label %28

28:                                               ; preds = %24, %22
  %29 = phi i32 [ %23, %22 ], [ %27, %24 ]
  %30 = load i32, ptr %1, align 4
  %31 = or i32 %30, %15
  store i32 %31, ptr %1, align 4
  tail call void @mutex_lock(ptr noundef nonnull @regulator_nesting_mutex) #26
  %32 = getelementptr inbounds %struct.regulator_dev, ptr %4, i32 0, i32 11
  %33 = load i32, ptr %32, align 4
  %34 = add i32 %33, -1
  store i32 %34, ptr %32, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %28
  %37 = getelementptr inbounds %struct.regulator_dev, ptr %4, i32 0, i32 10
  store ptr null, ptr %37, align 8
  %38 = getelementptr inbounds %struct.regulator_dev, ptr %4, i32 0, i32 9
  tail call void @ww_mutex_unlock(ptr noundef %38) #26
  %39 = load i32, ptr %32, align 4
  br label %40

40:                                               ; preds = %36, %28
  %41 = phi i32 [ %39, %36 ], [ %34, %28 ]
  %42 = icmp slt i32 %41, 0
  %43 = load i1, ptr @regulator_unlock.__already_done, align 1
  %44 = xor i1 %43, true
  %45 = select i1 %42, i1 %44, i1 false
  br i1 %45, label %46, label %47, !prof !11

46:                                               ; preds = %40
  store i1 true, ptr @regulator_unlock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 204, i32 noundef 9, ptr noundef null) #26
  br label %47

47:                                               ; preds = %46, %40
  tail call void @mutex_unlock(ptr noundef nonnull @regulator_nesting_mutex) #26
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @regulator_set_load(ptr nocapture noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.regulator, ptr %0, i32 0, i32 9
  %4 = load ptr, ptr %3, align 4
  tail call fastcc void @regulator_lock(ptr noundef %4)
  %5 = getelementptr inbounds %struct.regulator, ptr %0, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  store i32 %1, ptr %5, align 4
  %7 = getelementptr inbounds %struct.regulator, ptr %0, i32 0, i32 4
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  %10 = icmp eq i32 %6, %1
  %11 = select i1 %9, i1 true, i1 %10
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = tail call fastcc i32 @drms_uA_update(ptr noundef %4)
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  store i32 %6, ptr %5, align 4
  br label %16

16:                                               ; preds = %15, %12, %2
  %17 = phi i32 [ %13, %15 ], [ %13, %12 ], [ 0, %2 ]
  tail call void @mutex_lock(ptr noundef nonnull @regulator_nesting_mutex) #26
  %18 = getelementptr inbounds %struct.regulator_dev, ptr %4, i32 0, i32 11
  %19 = load i32, ptr %18, align 4
  %20 = add i32 %19, -1
  store i32 %20, ptr %18, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.regulator_dev, ptr %4, i32 0, i32 10
  store ptr null, ptr %23, align 8
  %24 = getelementptr inbounds %struct.regulator_dev, ptr %4, i32 0, i32 9
  tail call void @ww_mutex_unlock(ptr noundef %24) #26
  %25 = load i32, ptr %18, align 4
  br label %26

26:                                               ; preds = %22, %16
  %27 = phi i32 [ %25, %22 ], [ %20, %16 ]
  %28 = icmp slt i32 %27, 0
  %29 = load i1, ptr @regulator_unlock.__already_done, align 1
  %30 = xor i1 %29, true
  %31 = select i1 %28, i1 %30, i1 false
  br i1 %31, label %32, label %33, !prof !11

32:                                               ; preds = %26
  store i1 true, ptr @regulator_unlock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 204, i32 noundef 9, ptr noundef null) #26
  br label %33

33:                                               ; preds = %32, %26
  tail call void @mutex_unlock(ptr noundef nonnull @regulator_nesting_mutex) #26
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @regulator_allow_bypass(ptr nocapture noundef %0, i1 noundef zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.regulator, ptr %0, i32 0, i32 9
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.regulator_dev, ptr %4, i32 0, i32 14
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr %6, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %8, %2
  %12 = load ptr, ptr %4, align 8
  %13 = getelementptr inbounds %struct.regulator_desc, ptr %12, i32 0, i32 10
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.regulator_ops, ptr %14, i32 0, i32 28
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %158, label %25

18:                                               ; preds = %8
  %19 = load ptr, ptr %4, align 8
  %20 = getelementptr inbounds %struct.regulator_desc, ptr %19, i32 0, i32 10
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.regulator_ops, ptr %21, i32 0, i32 28
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %158, label %31

25:                                               ; preds = %11
  %26 = load ptr, ptr %12, align 4
  %27 = icmp eq ptr %26, null
  %28 = select i1 %27, ptr @.str, ptr %26
  br i1 %7, label %29, label %31

29:                                               ; preds = %25
  %30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef %28) #27
  br label %158

31:                                               ; preds = %25, %18
  %32 = phi ptr [ %28, %25 ], [ %9, %18 ]
  %33 = getelementptr inbounds %struct.regulation_constraints, ptr %6, i32 0, i32 11
  %34 = load i32, ptr %33, align 4
  %35 = and i32 %34, 32
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %158, label %37

37:                                               ; preds = %31
  tail call fastcc void @regulator_lock(ptr noundef %4)
  %38 = getelementptr inbounds %struct.regulator, ptr %0, i32 0, i32 2
  %39 = load i8, ptr %38, align 4
  %40 = and i8 %39, 2
  %41 = icmp eq i8 %40, 0
  br i1 %1, label %42, label %88

42:                                               ; preds = %37
  br i1 %41, label %43, label %134

43:                                               ; preds = %42
  %44 = getelementptr inbounds %struct.regulator_dev, ptr %4, i32 0, i32 4
  %45 = load i32, ptr %44, align 8
  %46 = add i32 %45, 1
  store i32 %46, ptr %44, align 8
  %47 = getelementptr inbounds %struct.regulator_dev, ptr %4, i32 0, i32 3
  %48 = load i32, ptr %47, align 4
  %49 = icmp eq i32 %46, %48
  br i1 %49, label %50, label %134

50:                                               ; preds = %43
  %51 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_regulator_bypass_enable, i32 0, i32 1), align 4
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %76

53:                                               ; preds = %50
  %54 = tail call ptr @llvm.thread.pointer() #26
  %55 = getelementptr inbounds %struct.thread_info, ptr %54, i32 0, i32 2
  %56 = load i32, ptr %55, align 8
  %57 = lshr i32 %56, 5
  %58 = getelementptr i32, ptr @__cpu_online_mask, i32 %57
  %59 = load volatile i32, ptr %58, align 4
  %60 = and i32 %56, 31
  %61 = shl nuw i32 1, %60
  %62 = and i32 %61, %59
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %76, label %64

64:                                               ; preds = %53
  tail call void asm sideeffect "", "~{memory}"() #26, !srcloc !27
  %65 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_regulator_bypass_enable, i32 0, i32 7), align 4
  %66 = icmp eq ptr %65, null
  br i1 %66, label %75, label %67

67:                                               ; preds = %67, %64
  %68 = phi ptr [ %72, %67 ], [ %65, %64 ]
  %69 = load volatile ptr, ptr %68, align 4
  %70 = getelementptr inbounds %struct.tracepoint_func, ptr %68, i32 0, i32 1
  %71 = load ptr, ptr %70, align 4
  tail call void %69(ptr noundef %71, ptr noundef %32) #26
  %72 = getelementptr %struct.tracepoint_func, ptr %68, i32 1
  %73 = load ptr, ptr %72, align 4
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %67

75:                                               ; preds = %67, %64
  tail call void asm sideeffect "", "~{memory}"() #26, !srcloc !28
  br label %76

76:                                               ; preds = %75, %53, %50
  %77 = load ptr, ptr %4, align 8
  %78 = getelementptr inbounds %struct.regulator_desc, ptr %77, i32 0, i32 10
  %79 = load ptr, ptr %78, align 4
  %80 = getelementptr inbounds %struct.regulator_ops, ptr %79, i32 0, i32 28
  %81 = load ptr, ptr %80, align 4
  %82 = tail call i32 %81(ptr noundef %4, i1 noundef zeroext true) #26
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %76
  %85 = load i32, ptr %44, align 8
  %86 = add i32 %85, -1
  store i32 %86, ptr %44, align 8
  br label %140

87:                                               ; preds = %76
  tail call fastcc void @trace_regulator_bypass_enable_complete(ptr noundef %32)
  br label %134

88:                                               ; preds = %37
  br i1 %41, label %134, label %89

89:                                               ; preds = %88
  %90 = getelementptr inbounds %struct.regulator_dev, ptr %4, i32 0, i32 4
  %91 = load i32, ptr %90, align 8
  %92 = add i32 %91, -1
  store i32 %92, ptr %90, align 8
  %93 = getelementptr inbounds %struct.regulator_dev, ptr %4, i32 0, i32 3
  %94 = load i32, ptr %93, align 4
  %95 = icmp eq i32 %92, %94
  br i1 %95, label %134, label %96

96:                                               ; preds = %89
  %97 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_regulator_bypass_disable, i32 0, i32 1), align 4
  %98 = icmp sgt i32 %97, 0
  br i1 %98, label %99, label %122

99:                                               ; preds = %96
  %100 = tail call ptr @llvm.thread.pointer() #26
  %101 = getelementptr inbounds %struct.thread_info, ptr %100, i32 0, i32 2
  %102 = load i32, ptr %101, align 8
  %103 = lshr i32 %102, 5
  %104 = getelementptr i32, ptr @__cpu_online_mask, i32 %103
  %105 = load volatile i32, ptr %104, align 4
  %106 = and i32 %102, 31
  %107 = shl nuw i32 1, %106
  %108 = and i32 %107, %105
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %122, label %110

110:                                              ; preds = %99
  tail call void asm sideeffect "", "~{memory}"() #26, !srcloc !29
  %111 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_regulator_bypass_disable, i32 0, i32 7), align 4
  %112 = icmp eq ptr %111, null
  br i1 %112, label %121, label %113

113:                                              ; preds = %113, %110
  %114 = phi ptr [ %118, %113 ], [ %111, %110 ]
  %115 = load volatile ptr, ptr %114, align 4
  %116 = getelementptr inbounds %struct.tracepoint_func, ptr %114, i32 0, i32 1
  %117 = load ptr, ptr %116, align 4
  tail call void %115(ptr noundef %117, ptr noundef %32) #26
  %118 = getelementptr %struct.tracepoint_func, ptr %114, i32 1
  %119 = load ptr, ptr %118, align 4
  %120 = icmp eq ptr %119, null
  br i1 %120, label %121, label %113

121:                                              ; preds = %113, %110
  tail call void asm sideeffect "", "~{memory}"() #26, !srcloc !30
  br label %122

122:                                              ; preds = %121, %99, %96
  %123 = load ptr, ptr %4, align 8
  %124 = getelementptr inbounds %struct.regulator_desc, ptr %123, i32 0, i32 10
  %125 = load ptr, ptr %124, align 4
  %126 = getelementptr inbounds %struct.regulator_ops, ptr %125, i32 0, i32 28
  %127 = load ptr, ptr %126, align 4
  %128 = tail call i32 %127(ptr noundef %4, i1 noundef zeroext false) #26
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %133, label %130

130:                                              ; preds = %122
  %131 = load i32, ptr %90, align 8
  %132 = add i32 %131, 1
  store i32 %132, ptr %90, align 8
  br label %140

133:                                              ; preds = %122
  tail call fastcc void @trace_regulator_bypass_disable_complete(ptr noundef %32)
  br label %134

134:                                              ; preds = %133, %89, %88, %87, %43, %42
  %135 = phi i8 [ 0, %133 ], [ 0, %89 ], [ 0, %88 ], [ 2, %87 ], [ 2, %43 ], [ 2, %42 ]
  %136 = getelementptr inbounds %struct.regulator, ptr %0, i32 0, i32 2
  %137 = load i8, ptr %136, align 4
  %138 = and i8 %137, -3
  %139 = or i8 %138, %135
  store i8 %139, ptr %136, align 4
  br label %140

140:                                              ; preds = %134, %130, %84
  %141 = phi i32 [ 0, %134 ], [ %128, %130 ], [ %82, %84 ]
  tail call void @mutex_lock(ptr noundef nonnull @regulator_nesting_mutex) #26
  %142 = getelementptr inbounds %struct.regulator_dev, ptr %4, i32 0, i32 11
  %143 = load i32, ptr %142, align 4
  %144 = add i32 %143, -1
  store i32 %144, ptr %142, align 4
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %150

146:                                              ; preds = %140
  %147 = getelementptr inbounds %struct.regulator_dev, ptr %4, i32 0, i32 10
  store ptr null, ptr %147, align 8
  %148 = getelementptr inbounds %struct.regulator_dev, ptr %4, i32 0, i32 9
  tail call void @ww_mutex_unlock(ptr noundef %148) #26
  %149 = load i32, ptr %142, align 4
  br label %150

150:                                              ; preds = %146, %140
  %151 = phi i32 [ %149, %146 ], [ %144, %140 ]
  %152 = icmp slt i32 %151, 0
  %153 = load i1, ptr @regulator_unlock.__already_done, align 1
  %154 = xor i1 %153, true
  %155 = select i1 %152, i1 %154, i1 false
  br i1 %155, label %156, label %157, !prof !11

156:                                              ; preds = %150
  store i1 true, ptr @regulator_unlock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 204, i32 noundef 9, ptr noundef null) #26
  br label %157

157:                                              ; preds = %156, %150
  tail call void @mutex_unlock(ptr noundef nonnull @regulator_nesting_mutex) #26
  br label %158

158:                                              ; preds = %157, %31, %29, %18, %11
  %159 = phi i32 [ %141, %157 ], [ 0, %11 ], [ 0, %31 ], [ 0, %18 ], [ 0, %29 ]
  ret i32 %159
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @trace_regulator_bypass_enable_complete(ptr noundef %0) unnamed_addr #9 {
  %2 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_regulator_bypass_enable_complete, i32 0, i32 1), align 4
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %27

4:                                                ; preds = %1
  %5 = tail call ptr @llvm.thread.pointer() #26
  %6 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %7 = load i32, ptr %6, align 8
  %8 = lshr i32 %7, 5
  %9 = getelementptr i32, ptr @__cpu_online_mask, i32 %8
  %10 = load volatile i32, ptr %9, align 4
  %11 = and i32 %7, 31
  %12 = shl nuw i32 1, %11
  %13 = and i32 %12, %10
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %27, label %15

15:                                               ; preds = %4
  tail call void asm sideeffect "", "~{memory}"() #26, !srcloc !31
  %16 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_regulator_bypass_enable_complete, i32 0, i32 7), align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %26, label %18

18:                                               ; preds = %18, %15
  %19 = phi ptr [ %23, %18 ], [ %16, %15 ]
  %20 = load volatile ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.tracepoint_func, ptr %19, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  tail call void %20(ptr noundef %22, ptr noundef %0) #26
  %23 = getelementptr %struct.tracepoint_func, ptr %19, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %18

26:                                               ; preds = %18, %15
  tail call void asm sideeffect "", "~{memory}"() #26, !srcloc !32
  br label %27

27:                                               ; preds = %26, %4, %1
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @trace_regulator_bypass_disable_complete(ptr noundef %0) unnamed_addr #9 {
  %2 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_regulator_bypass_disable_complete, i32 0, i32 1), align 4
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %27

4:                                                ; preds = %1
  %5 = tail call ptr @llvm.thread.pointer() #26
  %6 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %7 = load i32, ptr %6, align 8
  %8 = lshr i32 %7, 5
  %9 = getelementptr i32, ptr @__cpu_online_mask, i32 %8
  %10 = load volatile i32, ptr %9, align 4
  %11 = and i32 %7, 31
  %12 = shl nuw i32 1, %11
  %13 = and i32 %12, %10
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %27, label %15

15:                                               ; preds = %4
  tail call void asm sideeffect "", "~{memory}"() #26, !srcloc !33
  %16 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_regulator_bypass_disable_complete, i32 0, i32 7), align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %26, label %18

18:                                               ; preds = %18, %15
  %19 = phi ptr [ %23, %18 ], [ %16, %15 ]
  %20 = load volatile ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.tracepoint_func, ptr %19, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  tail call void %20(ptr noundef %22, ptr noundef %0) #26
  %23 = getelementptr %struct.tracepoint_func, ptr %19, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %18

26:                                               ; preds = %18, %15
  tail call void asm sideeffect "", "~{memory}"() #26, !srcloc !34
  br label %27

27:                                               ; preds = %26, %4, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @regulator_register_notifier(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.regulator, ptr %0, i32 0, i32 9
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.regulator_dev, ptr %4, i32 0, i32 8
  %6 = tail call i32 @blocking_notifier_chain_register(ptr noundef %5, ptr noundef %1) #26
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_chain_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @regulator_unregister_notifier(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.regulator, ptr %0, i32 0, i32 9
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.regulator_dev, ptr %4, i32 0, i32 8
  %6 = tail call i32 @blocking_notifier_chain_unregister(ptr noundef %5, ptr noundef %1) #26
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_chain_unregister(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @regulator_bulk_get(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2) #0 {
  %4 = icmp sgt i32 %1, 0
  br i1 %4, label %6, label %34

5:                                                ; preds = %6
  br i1 %4, label %11, label %34

6:                                                ; preds = %6, %3
  %7 = phi i32 [ %9, %6 ], [ 0, %3 ]
  %8 = getelementptr %struct.regulator_bulk_data, ptr %2, i32 %7, i32 1
  store ptr null, ptr %8, align 4
  %9 = add nuw nsw i32 %7, 1
  %10 = icmp eq i32 %9, %1
  br i1 %10, label %5, label %6

11:                                               ; preds = %21, %5
  %12 = phi i32 [ %22, %21 ], [ 0, %5 ]
  %13 = getelementptr %struct.regulator_bulk_data, ptr %2, i32 %12
  %14 = load ptr, ptr %13, align 4
  %15 = tail call ptr @_regulator_get(ptr noundef %0, ptr noundef %14, i32 noundef 0) #26
  %16 = getelementptr %struct.regulator_bulk_data, ptr %2, i32 %12, i32 1
  store ptr %15, ptr %16, align 4
  %17 = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  br i1 %17, label %18, label %21

18:                                               ; preds = %11
  %19 = ptrtoint ptr %15 to i32
  store ptr null, ptr %16, align 4
  %20 = icmp eq ptr %15, inttoptr (i32 -517 to ptr)
  br i1 %20, label %26, label %24

21:                                               ; preds = %11
  %22 = add nuw nsw i32 %12, 1
  %23 = icmp eq i32 %22, %1
  br i1 %23, label %34, label %11

24:                                               ; preds = %18
  %25 = load ptr, ptr %13, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.14, ptr noundef %25, ptr noundef nonnull %15) #27
  br label %26

26:                                               ; preds = %24, %18
  %27 = icmp eq i32 %12, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %28, %26
  %29 = phi i32 [ %30, %28 ], [ %12, %26 ]
  %30 = add nsw i32 %29, -1
  %31 = getelementptr %struct.regulator_bulk_data, ptr %2, i32 %30, i32 1
  %32 = load ptr, ptr %31, align 4
  tail call void @mutex_lock(ptr noundef nonnull @regulator_list_mutex) #26
  tail call fastcc void @_regulator_put(ptr noundef %32) #26
  tail call void @mutex_unlock(ptr noundef nonnull @regulator_list_mutex) #26
  %33 = icmp sgt i32 %29, 1
  br i1 %33, label %28, label %34

34:                                               ; preds = %28, %26, %21, %5, %3
  %35 = phi i32 [ %19, %26 ], [ 0, %5 ], [ 0, %3 ], [ %19, %28 ], [ 0, %21 ]
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @regulator_bulk_enable(i32 noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.ww_acquire_ctx, align 4
  %4 = alloca %struct.async_domain, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #26
  %5 = getelementptr inbounds i8, ptr %4, i32 8
  store i32 0, ptr %5, align 4, !annotation !9
  store ptr %4, ptr %4, align 4
  %6 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  store ptr %4, ptr %6, align 4
  %7 = icmp sgt i32 %0, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  call void @async_synchronize_full_domain(ptr noundef nonnull %4) #26
  br label %45

9:                                                ; preds = %9, %2
  %10 = phi i32 [ %13, %9 ], [ 0, %2 ]
  %11 = getelementptr %struct.regulator_bulk_data, ptr %1, i32 %10
  %12 = call i64 @async_schedule_node_domain(ptr noundef nonnull @regulator_bulk_enable_async, ptr noundef %11, i32 noundef -1, ptr noundef nonnull %4) #26
  %13 = add nuw nsw i32 %10, 1
  %14 = icmp eq i32 %13, %0
  br i1 %14, label %15, label %9

15:                                               ; preds = %9
  call void @async_synchronize_full_domain(ptr noundef nonnull %4) #26
  br i1 %7, label %19, label %45

16:                                               ; preds = %19
  %17 = add nuw nsw i32 %20, 1
  %18 = icmp eq i32 %17, %0
  br i1 %18, label %45, label %19

19:                                               ; preds = %16, %15
  %20 = phi i32 [ %17, %16 ], [ 0, %15 ]
  %21 = getelementptr %struct.regulator_bulk_data, ptr %1, i32 %20, i32 2
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %16, label %24

24:                                               ; preds = %42, %19
  %25 = phi i32 [ %43, %42 ], [ 0, %19 ]
  %26 = getelementptr %struct.regulator_bulk_data, ptr %1, i32 %25, i32 2
  %27 = load i32, ptr %26, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = getelementptr %struct.regulator_bulk_data, ptr %1, i32 %25
  %31 = load ptr, ptr %30, align 4
  %32 = inttoptr i32 %27 to ptr
  %33 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %31, ptr noundef nonnull %32) #27
  br label %42

34:                                               ; preds = %24
  %35 = getelementptr %struct.regulator_bulk_data, ptr %1, i32 %25, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.regulator, ptr %36, i32 0, i32 9
  %38 = load ptr, ptr %37, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #26
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %3, i8 0, i32 16, i1 false) #26, !annotation !9
  call fastcc void @regulator_lock_dependent(ptr noundef %38, ptr noundef nonnull %3) #26
  %39 = call fastcc i32 @_regulator_disable(ptr noundef %36) #26
  %40 = getelementptr inbounds %struct.regulator_dev, ptr %38, i32 0, i32 7, i32 3
  %41 = load i32, ptr %40, align 4
  call fastcc void @regulator_unlock_recursive(ptr noundef %38, i32 noundef %41) #26
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #26
  br label %42

42:                                               ; preds = %34, %29
  %43 = add nuw nsw i32 %25, 1
  %44 = icmp eq i32 %43, %0
  br i1 %44, label %45, label %24

45:                                               ; preds = %42, %16, %15, %8
  %46 = phi i32 [ 0, %15 ], [ 0, %8 ], [ %22, %42 ], [ 0, %16 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #26
  ret i32 %46
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @regulator_bulk_enable_async(ptr nocapture noundef %0, i64 noundef %1) #0 {
  %3 = alloca %struct.ww_acquire_ctx, align 4
  %4 = getelementptr inbounds %struct.regulator_bulk_data, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.regulator, ptr %5, i32 0, i32 9
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #26
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %3, i8 0, i32 16, i1 false) #26, !annotation !9
  call fastcc void @regulator_lock_dependent(ptr noundef %7, ptr noundef nonnull %3) #26
  %8 = call fastcc i32 @_regulator_enable(ptr noundef %5) #26
  %9 = getelementptr inbounds %struct.regulator_dev, ptr %7, i32 0, i32 7, i32 3
  %10 = load i32, ptr %9, align 4
  call fastcc void @regulator_unlock_recursive(ptr noundef %7, i32 noundef %10) #26
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #26
  %11 = getelementptr inbounds %struct.regulator_bulk_data, ptr %0, i32 0, i32 2
  store i32 %8, ptr %11, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @async_synchronize_full_domain(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @regulator_bulk_disable(i32 noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.ww_acquire_ctx, align 4
  %4 = alloca %struct.ww_acquire_ctx, align 4
  br label %5

5:                                                ; preds = %9, %2
  %6 = phi i32 [ %0, %2 ], [ %7, %9 ]
  %7 = add i32 %6, -1
  %8 = icmp sgt i32 %7, -1
  br i1 %8, label %9, label %42

9:                                                ; preds = %5
  %10 = getelementptr %struct.regulator_bulk_data, ptr %1, i32 %7, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.regulator, ptr %11, i32 0, i32 9
  %13 = load ptr, ptr %12, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #26
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %4, i8 0, i32 16, i1 false) #26, !annotation !9
  call fastcc void @regulator_lock_dependent(ptr noundef %13, ptr noundef nonnull %4) #26
  %14 = call fastcc i32 @_regulator_disable(ptr noundef %11) #26
  %15 = getelementptr inbounds %struct.regulator_dev, ptr %13, i32 0, i32 7, i32 3
  %16 = load i32, ptr %15, align 4
  call fastcc void @regulator_unlock_recursive(ptr noundef %13, i32 noundef %16) #26
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #26
  %17 = icmp eq i32 %14, 0
  br i1 %17, label %5, label %18

18:                                               ; preds = %9
  %19 = getelementptr %struct.regulator_bulk_data, ptr %1, i32 %7
  %20 = load ptr, ptr %19, align 4
  %21 = inttoptr i32 %14 to ptr
  %22 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %20, ptr noundef nonnull %21) #27
  %23 = icmp slt i32 %6, %0
  br i1 %23, label %24, label %42

24:                                               ; preds = %39, %18
  %25 = phi i32 [ %40, %39 ], [ %6, %18 ]
  %26 = getelementptr %struct.regulator_bulk_data, ptr %1, i32 %25, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.regulator, ptr %27, i32 0, i32 9
  %29 = load ptr, ptr %28, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #26
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %3, i8 0, i32 16, i1 false) #26, !annotation !9
  call fastcc void @regulator_lock_dependent(ptr noundef %29, ptr noundef nonnull %3) #26
  %30 = call fastcc i32 @_regulator_enable(ptr noundef %27) #26
  %31 = getelementptr inbounds %struct.regulator_dev, ptr %29, i32 0, i32 7, i32 3
  %32 = load i32, ptr %31, align 4
  call fastcc void @regulator_unlock_recursive(ptr noundef %29, i32 noundef %32) #26
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #26
  %33 = icmp eq i32 %30, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %24
  %35 = getelementptr %struct.regulator_bulk_data, ptr %1, i32 %25
  %36 = load ptr, ptr %35, align 4
  %37 = inttoptr i32 %30 to ptr
  %38 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %36, ptr noundef nonnull %37) #27
  br label %39

39:                                               ; preds = %34, %24
  %40 = add i32 %25, 1
  %41 = icmp eq i32 %40, %0
  br i1 %41, label %42, label %24

42:                                               ; preds = %39, %18, %5
  %43 = phi i32 [ %14, %18 ], [ %14, %39 ], [ 0, %5 ]
  ret i32 %43
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @regulator_bulk_force_disable(i32 noundef %0, ptr nocapture noundef %1) #0 {
  %3 = icmp sgt i32 %0, 0
  br i1 %3, label %4, label %17

4:                                                ; preds = %4, %2
  %5 = phi i32 [ %14, %4 ], [ 0, %2 ]
  %6 = phi i32 [ %15, %4 ], [ 0, %2 ]
  %7 = getelementptr %struct.regulator_bulk_data, ptr %1, i32 %6, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 @regulator_force_disable(ptr noundef %8)
  %10 = getelementptr %struct.regulator_bulk_data, ptr %1, i32 %6, i32 2
  store i32 %9, ptr %10, align 4
  %11 = icmp eq i32 %9, 0
  %12 = icmp ne i32 %5, 0
  %13 = select i1 %11, i1 true, i1 %12
  %14 = select i1 %13, i32 %5, i32 %9
  %15 = add nuw nsw i32 %6, 1
  %16 = icmp eq i32 %15, %0
  br i1 %16, label %17, label %4

17:                                               ; preds = %4, %2
  %18 = phi i32 [ 0, %2 ], [ %14, %4 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @regulator_bulk_free(i32 noundef %0, ptr nocapture noundef %1) #0 {
  %3 = icmp sgt i32 %0, 0
  br i1 %3, label %4, label %10

4:                                                ; preds = %4, %2
  %5 = phi i32 [ %8, %4 ], [ 0, %2 ]
  %6 = getelementptr %struct.regulator_bulk_data, ptr %1, i32 %5, i32 1
  %7 = load ptr, ptr %6, align 4
  tail call void @mutex_lock(ptr noundef nonnull @regulator_list_mutex) #26
  tail call fastcc void @_regulator_put(ptr noundef %7) #26
  tail call void @mutex_unlock(ptr noundef nonnull @regulator_list_mutex) #26
  store ptr null, ptr %6, align 4
  %8 = add nuw nsw i32 %5, 1
  %9 = icmp eq i32 %8, %0
  br i1 %9, label %10, label %4

10:                                               ; preds = %4, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @regulator_notifier_call_chain(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 8
  %5 = tail call i32 @blocking_notifier_call_chain(ptr noundef %4, i32 noundef %1, ptr noundef %2) #26
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @regulator_mode_to_status(i32 noundef %0) #10 {
  %2 = add i32 %0, -1
  %3 = icmp ult i32 %2, 8
  br i1 %3, label %4, label %7

4:                                                ; preds = %1
  %5 = getelementptr inbounds [8 x i32], ptr @switch.table.regulator_mode_to_status, i32 0, i32 %2
  %6 = load i32, ptr %5, align 4
  br label %7

7:                                                ; preds = %4, %1
  %8 = phi i32 [ %6, %4 ], [ 8, %1 ]
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @regulator_coupler_register(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @mutex_lock(ptr noundef nonnull @regulator_list_mutex) #26
  %2 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @regulator_coupler_list, i32 0, i32 1), align 4
  store ptr %0, ptr getelementptr inbounds (%struct.list_head, ptr @regulator_coupler_list, i32 0, i32 1), align 4
  store ptr @regulator_coupler_list, ptr %0, align 4
  %3 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  store ptr %2, ptr %3, align 4
  store volatile ptr %0, ptr %2, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @regulator_list_mutex) #26
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @regulator_register(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %315, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.regulator_config, ptr %1, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = icmp ne ptr %6, null
  %8 = icmp eq ptr %0, null
  br i1 %8, label %307, label %9

9:                                                ; preds = %4
  %10 = load ptr, ptr %1, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %13, !prof !11

12:                                               ; preds = %9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 5341, i32 noundef 9, ptr noundef null) #26
  br label %13

13:                                               ; preds = %12, %9
  %14 = load ptr, ptr %0, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %307, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.regulator_desc, ptr %0, i32 0, i32 10
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %307, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.regulator_desc, ptr %0, i32 0, i32 12
  %22 = load i32, ptr %21, align 4
  %23 = icmp ult i32 %22, 2
  br i1 %23, label %24, label %307

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.regulator_ops, ptr %18, i32 0, i32 4
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %34, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.regulator_ops, ptr %18, i32 0, i32 5
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %34, label %32, !prof !10

32:                                               ; preds = %28
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 5356, i32 noundef 9, ptr noundef null) #26
  %33 = load ptr, ptr %17, align 4
  br label %34

34:                                               ; preds = %32, %28, %24
  %35 = phi ptr [ %18, %24 ], [ %33, %32 ], [ %18, %28 ]
  %36 = getelementptr inbounds %struct.regulator_ops, ptr %35, i32 0, i32 1
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %45, label %39

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.regulator_ops, ptr %35, i32 0, i32 3
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %45, label %43, !prof !10

43:                                               ; preds = %39
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 5358, i32 noundef 9, ptr noundef null) #26
  %44 = load ptr, ptr %17, align 4
  br label %45

45:                                               ; preds = %43, %39, %34
  %46 = phi ptr [ %35, %34 ], [ %44, %43 ], [ %35, %39 ]
  %47 = getelementptr inbounds %struct.regulator_ops, ptr %46, i32 0, i32 5
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %45
  %51 = load ptr, ptr %46, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %307, label %53

53:                                               ; preds = %50, %45
  %54 = getelementptr inbounds %struct.regulator_ops, ptr %46, i32 0, i32 3
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %53
  %58 = load ptr, ptr %46, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %307, label %60

60:                                               ; preds = %57, %53
  %61 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %62 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %61, i32 noundef 3520, i32 noundef 696) #28
  %63 = icmp eq ptr %62, null
  br i1 %63, label %307, label %64

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.regulator_dev, ptr %62, i32 0, i32 13
  tail call void @device_initialize(ptr noundef %65) #26
  %66 = getelementptr inbounds %struct.regulator_dev, ptr %62, i32 0, i32 26
  store i32 0, ptr %66, align 8
  %67 = tail call ptr @kmemdup(ptr noundef nonnull %1, i32 noundef 24, i32 noundef 3264) #26
  %68 = icmp eq ptr %67, null
  br i1 %68, label %304, label %69

69:                                               ; preds = %64
  %70 = getelementptr inbounds %struct.regulator_dev, ptr %62, i32 0, i32 13, i32 25
  %71 = tail call ptr @regulator_of_get_init_data(ptr noundef %10, ptr noundef nonnull %0, ptr noundef nonnull %67, ptr noundef %70) #26
  %72 = icmp eq ptr %71, inttoptr (i32 -517 to ptr)
  br i1 %72, label %304, label %73

73:                                               ; preds = %69
  %74 = load ptr, ptr %5, align 4
  %75 = icmp eq ptr %74, null
  br i1 %75, label %76, label %80

76:                                               ; preds = %73
  %77 = getelementptr inbounds %struct.regulator_config, ptr %67, i32 0, i32 5
  %78 = load ptr, ptr %77, align 4
  %79 = icmp ne ptr %78, null
  br label %80

80:                                               ; preds = %76, %73
  %81 = phi i1 [ false, %73 ], [ %79, %76 ]
  %82 = icmp eq ptr %71, null
  br i1 %82, label %83, label %89

83:                                               ; preds = %80
  %84 = getelementptr inbounds %struct.regulator_config, ptr %67, i32 0, i32 1
  %85 = load ptr, ptr %84, align 4
  %86 = getelementptr inbounds %struct.regulator_config, ptr %67, i32 0, i32 3
  %87 = load ptr, ptr %86, align 4
  %88 = tail call ptr @of_node_get(ptr noundef %87) #26
  store ptr %88, ptr %70, align 8
  br label %89

89:                                               ; preds = %83, %80
  %90 = phi ptr [ %71, %80 ], [ %85, %83 ]
  %91 = getelementptr inbounds %struct.regulator_dev, ptr %62, i32 0, i32 9
  %92 = load ptr, ptr getelementptr inbounds (%struct.ww_class, ptr @regulator_ww_class, i32 0, i32 4), align 4
  tail call void @__mutex_init(ptr noundef %91, ptr noundef %92, ptr noundef getelementptr inbounds (%struct.ww_class, ptr @regulator_ww_class, i32 0, i32 3)) #26
  %93 = getelementptr inbounds %struct.regulator_dev, ptr %62, i32 0, i32 9, i32 1
  store ptr null, ptr %93, align 4
  %94 = getelementptr inbounds %struct.regulator_config, ptr %67, i32 0, i32 2
  %95 = load ptr, ptr %94, align 4
  %96 = getelementptr inbounds %struct.regulator_dev, ptr %62, i32 0, i32 19
  store ptr %95, ptr %96, align 4
  %97 = getelementptr inbounds %struct.regulator_desc, ptr %0, i32 0, i32 13
  %98 = load ptr, ptr %97, align 4
  %99 = getelementptr inbounds %struct.regulator_dev, ptr %62, i32 0, i32 12
  store ptr %98, ptr %99, align 8
  store ptr %0, ptr %62, align 8
  %100 = getelementptr inbounds %struct.regulator_config, ptr %67, i32 0, i32 4
  %101 = load ptr, ptr %100, align 4
  %102 = icmp eq ptr %101, null
  br i1 %102, label %103, label %114

103:                                              ; preds = %89
  %104 = tail call ptr @dev_get_regmap(ptr noundef %10, ptr noundef null) #26
  %105 = icmp eq ptr %104, null
  br i1 %105, label %108, label %106

106:                                              ; preds = %103
  %107 = tail call ptr @dev_get_regmap(ptr noundef %10, ptr noundef null) #26
  br label %114

108:                                              ; preds = %103
  %109 = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 1
  %110 = load ptr, ptr %109, align 4
  %111 = icmp eq ptr %110, null
  br i1 %111, label %117, label %112

112:                                              ; preds = %108
  %113 = tail call ptr @dev_get_regmap(ptr noundef nonnull %110, ptr noundef null) #26
  br label %114

114:                                              ; preds = %112, %106, %89
  %115 = phi ptr [ %107, %106 ], [ %113, %112 ], [ %101, %89 ]
  %116 = getelementptr inbounds %struct.regulator_dev, ptr %62, i32 0, i32 17
  store ptr %115, ptr %116, align 4
  br label %117

117:                                              ; preds = %114, %108
  %118 = getelementptr inbounds %struct.regulator_dev, ptr %62, i32 0, i32 6
  store volatile ptr %118, ptr %118, align 4
  %119 = getelementptr inbounds %struct.regulator_dev, ptr %62, i32 0, i32 6, i32 1
  store ptr %118, ptr %119, align 8
  %120 = getelementptr inbounds %struct.regulator_dev, ptr %62, i32 0, i32 5
  store volatile ptr %120, ptr %120, align 4
  %121 = getelementptr inbounds %struct.regulator_dev, ptr %62, i32 0, i32 5, i32 1
  store ptr %120, ptr %121, align 8
  %122 = getelementptr inbounds %struct.regulator_dev, ptr %62, i32 0, i32 8
  tail call void @__init_rwsem(ptr noundef %122, ptr noundef nonnull @.str.19, ptr noundef nonnull @regulator_register.__key) #26
  %123 = getelementptr inbounds %struct.regulator_dev, ptr %62, i32 0, i32 8, i32 1
  store ptr null, ptr %123, align 4
  %124 = getelementptr inbounds %struct.regulator_dev, ptr %62, i32 0, i32 18
  store i32 -32, ptr %124, align 8
  %125 = getelementptr inbounds %struct.regulator_dev, ptr %62, i32 0, i32 18, i32 0, i32 1
  store volatile ptr %125, ptr %125, align 4
  %126 = getelementptr inbounds %struct.regulator_dev, ptr %62, i32 0, i32 18, i32 0, i32 1, i32 1
  store ptr %125, ptr %126, align 8
  %127 = getelementptr inbounds %struct.regulator_dev, ptr %62, i32 0, i32 18, i32 0, i32 2
  store ptr @regulator_disable_work, ptr %127, align 4
  %128 = getelementptr inbounds %struct.regulator_dev, ptr %62, i32 0, i32 18, i32 1
  tail call void @init_timer_key(ptr noundef %128, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #26
  %129 = icmp eq ptr %90, null
  br i1 %129, label %138, label %130

130:                                              ; preds = %117
  %131 = getelementptr inbounds %struct.regulator_init_data, ptr %90, i32 0, i32 4
  %132 = load ptr, ptr %131, align 4
  %133 = icmp eq ptr %132, null
  br i1 %133, label %138, label %134

134:                                              ; preds = %130
  %135 = load ptr, ptr %96, align 4
  %136 = tail call i32 %132(ptr noundef %135) #26
  %137 = icmp slt i32 %136, 0
  br i1 %137, label %298, label %138

138:                                              ; preds = %134, %130, %117
  %139 = getelementptr inbounds %struct.regulator_config, ptr %67, i32 0, i32 5
  %140 = load ptr, ptr %139, align 4
  %141 = icmp eq ptr %140, null
  br i1 %141, label %161, label %142

142:                                              ; preds = %138
  %143 = tail call fastcc i32 @regulator_ena_gpio_request(ptr noundef nonnull %62, ptr noundef nonnull %67)
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %161, label %145

145:                                              ; preds = %142
  %146 = getelementptr inbounds %struct.regulator_dev, ptr %62, i32 0, i32 14
  %147 = load ptr, ptr %146, align 8
  %148 = icmp eq ptr %147, null
  br i1 %148, label %152, label %149

149:                                              ; preds = %145
  %150 = load ptr, ptr %147, align 4
  %151 = icmp eq ptr %150, null
  br i1 %151, label %152, label %157

152:                                              ; preds = %149, %145
  %153 = load ptr, ptr %62, align 8
  %154 = load ptr, ptr %153, align 4
  %155 = icmp eq ptr %154, null
  %156 = select i1 %155, ptr @.str, ptr %154
  br label %157

157:                                              ; preds = %152, %149
  %158 = phi ptr [ %150, %149 ], [ %156, %152 ]
  %159 = inttoptr i32 %143 to ptr
  %160 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %158, ptr noundef nonnull %159) #27
  br i1 %81, label %299, label %304

161:                                              ; preds = %142, %138
  %162 = phi i1 [ %81, %138 ], [ false, %142 ]
  %163 = phi i1 [ %7, %138 ], [ false, %142 ]
  %164 = getelementptr inbounds %struct.regulator_dev, ptr %62, i32 0, i32 13, i32 31
  store ptr @regulator_class, ptr %164, align 4
  %165 = getelementptr inbounds %struct.regulator_dev, ptr %62, i32 0, i32 13, i32 1
  store ptr %10, ptr %165, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #26, !srcloc !35
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @regulator_register.regulator_no) #26, !srcloc !14
  %166 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @regulator_register.regulator_no, ptr nonnull @regulator_register.regulator_no, i32 1, ptr nonnull elementtype(i32) @regulator_register.regulator_no) #26, !srcloc !15
  %167 = extractvalue { i32, i32 } %166, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #26, !srcloc !36
  %168 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %65, ptr noundef nonnull @.str.21, i32 noundef %167) #26
  %169 = getelementptr inbounds %struct.regulator_dev, ptr %62, i32 0, i32 13, i32 8
  store ptr %62, ptr %169, align 8
  br i1 %129, label %170, label %175

170:                                              ; preds = %161
  %171 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %172 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %171, i32 noundef 3520, i32 noundef 208) #28
  %173 = getelementptr inbounds %struct.regulator_dev, ptr %62, i32 0, i32 14
  store ptr %172, ptr %173, align 8
  %174 = icmp eq ptr %172, null
  br i1 %174, label %294, label %183

175:                                              ; preds = %161
  %176 = getelementptr inbounds %struct.regulator_init_data, ptr %90, i32 0, i32 1
  %177 = tail call ptr @kmemdup(ptr noundef %176, i32 noundef 208, i32 noundef 3264) #26
  %178 = getelementptr inbounds %struct.regulator_dev, ptr %62, i32 0, i32 14
  store ptr %177, ptr %178, align 8
  %179 = icmp eq ptr %177, null
  br i1 %179, label %294, label %180

180:                                              ; preds = %175
  %181 = load ptr, ptr %90, align 4
  %182 = icmp eq ptr %181, null
  br i1 %182, label %183, label %187

183:                                              ; preds = %180, %170
  %184 = getelementptr inbounds %struct.regulator_desc, ptr %0, i32 0, i32 1
  %185 = load ptr, ptr %184, align 4
  %186 = icmp eq ptr %185, null
  br i1 %186, label %190, label %187

187:                                              ; preds = %183, %180
  %188 = phi ptr [ %181, %180 ], [ %185, %183 ]
  %189 = getelementptr inbounds %struct.regulator_dev, ptr %62, i32 0, i32 16
  store ptr %188, ptr %189, align 8
  br label %190

190:                                              ; preds = %187, %183
  %191 = tail call fastcc i32 @set_machine_constraints(ptr noundef nonnull %62)
  %192 = icmp eq i32 %191, -517
  br i1 %192, label %193, label %198

193:                                              ; preds = %190
  %194 = tail call fastcc i32 @regulator_resolve_supply(ptr noundef nonnull %62)
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %196, label %198

196:                                              ; preds = %193
  %197 = tail call fastcc i32 @set_machine_constraints(ptr noundef nonnull %62)
  br label %198

198:                                              ; preds = %196, %193, %190
  %199 = phi i32 [ %197, %196 ], [ %191, %190 ], [ %194, %193 ]
  %200 = icmp slt i32 %199, 0
  br i1 %200, label %294, label %201

201:                                              ; preds = %198
  %202 = tail call fastcc i32 @regulator_init_coupling(ptr noundef nonnull %62)
  %203 = icmp slt i32 %202, 0
  br i1 %203, label %294, label %204

204:                                              ; preds = %201
  br i1 %129, label %269, label %205

205:                                              ; preds = %204
  %206 = getelementptr inbounds %struct.regulator_init_data, ptr %90, i32 0, i32 2
  %207 = load i32, ptr %206, align 4
  %208 = icmp sgt i32 %207, 0
  br i1 %208, label %209, label %269

209:                                              ; preds = %205
  %210 = getelementptr inbounds %struct.regulator_init_data, ptr %90, i32 0, i32 3
  br label %211

211:                                              ; preds = %263, %209
  %212 = phi i32 [ 0, %209 ], [ %266, %263 ]
  %213 = load ptr, ptr %210, align 4
  %214 = getelementptr %struct.regulator_consumer_supply, ptr %213, i32 %212
  %215 = load ptr, ptr %214, align 4
  %216 = getelementptr %struct.regulator_consumer_supply, ptr %213, i32 %212, i32 1
  %217 = load ptr, ptr %216, align 4
  %218 = icmp eq ptr %217, null
  br i1 %218, label %258, label %219

219:                                              ; preds = %211
  %220 = icmp ne ptr %215, null
  %221 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %222 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %221, i32 noundef 3520, i32 noundef 20) #28
  %223 = icmp eq ptr %222, null
  br i1 %223, label %258, label %224

224:                                              ; preds = %219
  %225 = getelementptr inbounds %struct.regulator_map, ptr %222, i32 0, i32 3
  store ptr %62, ptr %225, align 8
  %226 = getelementptr inbounds %struct.regulator_map, ptr %222, i32 0, i32 2
  store ptr %217, ptr %226, align 4
  br i1 %220, label %227, label %231

227:                                              ; preds = %224
  %228 = tail call noalias ptr @kstrdup(ptr noundef nonnull %215, i32 noundef 3264) #26
  %229 = getelementptr inbounds %struct.regulator_map, ptr %222, i32 0, i32 1
  store ptr %228, ptr %229, align 8
  %230 = icmp eq ptr %228, null
  br i1 %230, label %256, label %231

231:                                              ; preds = %227, %224
  tail call void @mutex_lock(ptr noundef nonnull @regulator_list_mutex) #26
  %232 = load ptr, ptr @regulator_map_list, align 4
  %233 = icmp eq ptr %232, @regulator_map_list
  br i1 %233, label %263, label %234

234:                                              ; preds = %253, %231
  %235 = phi ptr [ %254, %253 ], [ %232, %231 ]
  %236 = getelementptr inbounds %struct.regulator_map, ptr %235, i32 0, i32 1
  %237 = load ptr, ptr %236, align 4
  %238 = icmp ne ptr %237, null
  %239 = and i1 %220, %238
  br i1 %239, label %240, label %243

240:                                              ; preds = %234
  %241 = tail call i32 @strcmp(ptr noundef nonnull %237, ptr noundef nonnull %215) #26
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %245, label %253

243:                                              ; preds = %234
  %244 = or i1 %220, %238
  br i1 %244, label %253, label %245

245:                                              ; preds = %243, %240
  %246 = getelementptr inbounds %struct.regulator_map, ptr %235, i32 0, i32 2
  %247 = load ptr, ptr %246, align 4
  %248 = tail call i32 @strcmp(ptr noundef %247, ptr noundef nonnull %217) #26
  %249 = icmp eq i32 %248, 0
  br i1 %249, label %250, label %253

250:                                              ; preds = %245
  tail call void @mutex_unlock(ptr noundef nonnull @regulator_list_mutex) #26
  %251 = getelementptr inbounds %struct.regulator_map, ptr %222, i32 0, i32 1
  %252 = load ptr, ptr %251, align 8
  tail call void @kfree(ptr noundef %252) #26
  br label %256

253:                                              ; preds = %245, %243, %240
  %254 = load ptr, ptr %235, align 4
  %255 = icmp eq ptr %254, @regulator_map_list
  br i1 %255, label %263, label %234

256:                                              ; preds = %250, %227
  %257 = phi i32 [ -16, %250 ], [ -12, %227 ]
  tail call void @kfree(ptr noundef nonnull %222) #26
  br label %258

258:                                              ; preds = %256, %219, %211
  %259 = phi i32 [ %257, %256 ], [ -12, %219 ], [ -22, %211 ]
  %260 = load ptr, ptr %210, align 4
  %261 = getelementptr %struct.regulator_consumer_supply, ptr %260, i32 %212, i32 1
  %262 = load ptr, ptr %261, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.22, ptr noundef %262) #27
  br label %292

263:                                              ; preds = %253, %231
  %264 = getelementptr inbounds %struct.list_head, ptr %232, i32 0, i32 1
  store ptr %222, ptr %264, align 4
  store ptr %232, ptr %222, align 8
  %265 = getelementptr inbounds %struct.list_head, ptr %222, i32 0, i32 1
  store ptr @regulator_map_list, ptr %265, align 4
  store volatile ptr %222, ptr @regulator_map_list, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @regulator_list_mutex) #26
  %266 = add nuw nsw i32 %212, 1
  %267 = load i32, ptr %206, align 4
  %268 = icmp slt i32 %266, %267
  br i1 %268, label %211, label %269

269:                                              ; preds = %263, %205, %204
  %270 = load ptr, ptr %62, align 8
  %271 = getelementptr inbounds %struct.regulator_desc, ptr %270, i32 0, i32 10
  %272 = load ptr, ptr %271, align 4
  %273 = getelementptr inbounds %struct.regulator_ops, ptr %272, i32 0, i32 4
  %274 = load ptr, ptr %273, align 4
  %275 = icmp eq ptr %274, null
  br i1 %275, label %276, label %287

276:                                              ; preds = %269
  %277 = load ptr, ptr %272, align 4
  %278 = icmp eq ptr %277, null
  br i1 %278, label %279, label %287

279:                                              ; preds = %276
  %280 = getelementptr inbounds %struct.regulator_desc, ptr %270, i32 0, i32 17
  %281 = load i32, ptr %280, align 4
  %282 = icmp eq i32 %281, 0
  br i1 %282, label %283, label %287

283:                                              ; preds = %279
  %284 = getelementptr inbounds %struct.regulator_dev, ptr %62, i32 0, i32 22
  %285 = load i8, ptr %284, align 8
  %286 = or i8 %285, 2
  store i8 %286, ptr %284, align 8
  br label %287

287:                                              ; preds = %283, %279, %276, %269
  %288 = tail call i32 @device_add(ptr noundef %65) #26
  %289 = icmp eq i32 %288, 0
  br i1 %289, label %290, label %292

290:                                              ; preds = %287
  tail call fastcc void @rdev_init_debugfs(ptr noundef nonnull %62)
  tail call void @mutex_lock(ptr noundef nonnull @regulator_list_mutex) #26
  tail call fastcc void @regulator_resolve_coupling(ptr noundef nonnull %62)
  tail call void @mutex_unlock(ptr noundef nonnull @regulator_list_mutex) #26
  %291 = tail call i32 @class_for_each_device(ptr noundef nonnull @regulator_class, ptr noundef null, ptr noundef null, ptr noundef nonnull @regulator_register_resolve_supply) #26
  tail call void @kfree(ptr noundef nonnull %67) #26
  br label %315

292:                                              ; preds = %287, %258
  %293 = phi i32 [ %259, %258 ], [ %288, %287 ]
  tail call void @mutex_lock(ptr noundef nonnull @regulator_list_mutex) #26
  tail call fastcc void @unset_regulator_supplies(ptr noundef nonnull %62)
  tail call fastcc void @regulator_remove_coupling(ptr noundef nonnull %62)
  tail call void @mutex_unlock(ptr noundef nonnull @regulator_list_mutex) #26
  br label %294

294:                                              ; preds = %292, %201, %198, %175, %170
  %295 = phi i32 [ %199, %198 ], [ %202, %201 ], [ %293, %292 ], [ -12, %170 ], [ -12, %175 ]
  %296 = getelementptr inbounds %struct.regulator_dev, ptr %62, i32 0, i32 7
  %297 = load ptr, ptr %296, align 4
  tail call void @kfree(ptr noundef %297) #26
  tail call void @mutex_lock(ptr noundef nonnull @regulator_list_mutex) #26
  tail call fastcc void @regulator_ena_gpio_free(ptr noundef nonnull %62)
  tail call void @mutex_unlock(ptr noundef nonnull @regulator_list_mutex) #26
  br i1 %162, label %299, label %304

298:                                              ; preds = %134
  br i1 %81, label %299, label %304

299:                                              ; preds = %298, %294, %157
  %300 = phi i1 [ %7, %157 ], [ %7, %298 ], [ %163, %294 ]
  %301 = phi i32 [ %143, %157 ], [ %136, %298 ], [ %295, %294 ]
  %302 = getelementptr inbounds %struct.regulator_config, ptr %67, i32 0, i32 5
  %303 = load ptr, ptr %302, align 4
  tail call void @gpiod_put(ptr noundef %303) #26
  br label %304

304:                                              ; preds = %299, %298, %294, %157, %69, %64
  %305 = phi i1 [ %300, %299 ], [ %7, %298 ], [ %7, %157 ], [ %163, %294 ], [ %7, %64 ], [ %7, %69 ]
  %306 = phi i32 [ %301, %299 ], [ %136, %298 ], [ %143, %157 ], [ %295, %294 ], [ -12, %64 ], [ -517, %69 ]
  tail call void @kfree(ptr noundef %67) #26
  tail call void @put_device(ptr noundef %65) #26
  br i1 %305, label %309, label %312

307:                                              ; preds = %60, %57, %50, %20, %16, %13, %4
  %308 = phi i32 [ -22, %4 ], [ -22, %16 ], [ -22, %13 ], [ -22, %20 ], [ -22, %50 ], [ -22, %57 ], [ -12, %60 ]
  br i1 %7, label %309, label %312

309:                                              ; preds = %307, %304
  %310 = phi i32 [ %306, %304 ], [ %308, %307 ]
  %311 = load ptr, ptr %5, align 4
  tail call void @gpiod_put(ptr noundef %311) #26
  br label %312

312:                                              ; preds = %309, %307, %304
  %313 = phi i32 [ %306, %304 ], [ %310, %309 ], [ %308, %307 ]
  %314 = inttoptr i32 %313 to ptr
  br label %315

315:                                              ; preds = %312, %290, %2
  %316 = phi ptr [ %314, %312 ], [ %62, %290 ], [ inttoptr (i32 -22 to ptr), %2 ]
  ret ptr %316
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_initialize(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @regulator_of_get_init_data(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_node_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_regmap(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_rwsem(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @regulator_disable_work(ptr noundef %0) #0 {
  %2 = alloca %struct.ww_acquire_ctx, align 4
  %3 = getelementptr i8, ptr %0, i32 -608
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #26
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %2, i8 0, i32 16, i1 false), !annotation !9
  call fastcc void @regulator_lock_dependent(ptr noundef %3, ptr noundef nonnull %2)
  %4 = call zeroext i1 @cancel_delayed_work(ptr noundef %0) #26
  %5 = getelementptr i8, ptr %0, i32 -580
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, %5
  br i1 %7, label %48, label %8

8:                                                ; preds = %1
  %9 = getelementptr i8, ptr %0, i32 -16
  br label %10

10:                                               ; preds = %42, %8
  %11 = phi ptr [ %6, %8 ], [ %44, %42 ]
  %12 = phi i32 [ 0, %8 ], [ %43, %42 ]
  %13 = getelementptr i8, ptr %11, i32 -4
  %14 = getelementptr i8, ptr %11, i32 20
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %42, label %17

17:                                               ; preds = %10
  %18 = add i32 %15, %12
  store i32 0, ptr %14, align 4
  %19 = icmp sgt i32 %15, 0
  br i1 %19, label %20, label %42

20:                                               ; preds = %39, %17
  %21 = phi i32 [ %40, %39 ], [ 0, %17 ]
  %22 = call fastcc i32 @_regulator_disable(ptr noundef %13)
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %39, label %24

24:                                               ; preds = %20
  %25 = load ptr, ptr %9, align 8
  %26 = icmp eq ptr %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %24
  %28 = load ptr, ptr %25, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %35

30:                                               ; preds = %27, %24
  %31 = load ptr, ptr %3, align 8
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  %34 = select i1 %33, ptr @.str, ptr %32
  br label %35

35:                                               ; preds = %30, %27
  %36 = phi ptr [ %28, %27 ], [ %34, %30 ]
  %37 = inttoptr i32 %22 to ptr
  %38 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef %36, ptr noundef nonnull %37) #27
  br label %39

39:                                               ; preds = %35, %20
  %40 = add nuw nsw i32 %21, 1
  %41 = icmp eq i32 %40, %15
  br i1 %41, label %42, label %20

42:                                               ; preds = %39, %17, %10
  %43 = phi i32 [ %12, %10 ], [ %18, %17 ], [ %18, %39 ]
  %44 = load ptr, ptr %11, align 4
  %45 = icmp eq ptr %44, %5
  br i1 %45, label %46, label %10

46:                                               ; preds = %42
  %47 = icmp eq i32 %43, 0
  br i1 %47, label %48, label %49, !prof !11

48:                                               ; preds = %46, %1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 3020, i32 noundef 9, ptr noundef null) #26
  br label %49

49:                                               ; preds = %48, %46
  %50 = getelementptr i8, ptr %0, i32 -560
  %51 = load i32, ptr %50, align 4
  %52 = icmp sgt i32 %51, 1
  br i1 %52, label %53, label %84

53:                                               ; preds = %49
  %54 = getelementptr i8, ptr %0, i32 -568
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr i8, ptr %0, i32 -564
  %57 = load i32, ptr %56, align 4
  %58 = icmp slt i32 %57, %51
  br i1 %58, label %59, label %74

59:                                               ; preds = %53
  %60 = getelementptr i8, ptr %0, i32 -16
  %61 = load ptr, ptr %60, align 8
  %62 = icmp eq ptr %61, null
  br i1 %62, label %66, label %63

63:                                               ; preds = %59
  %64 = load ptr, ptr %61, align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %71

66:                                               ; preds = %63, %59
  %67 = load ptr, ptr %3, align 8
  %68 = load ptr, ptr %67, align 4
  %69 = icmp eq ptr %68, null
  %70 = select i1 %69, ptr @.str, ptr %68
  br label %71

71:                                               ; preds = %66, %63
  %72 = phi ptr [ %64, %63 ], [ %70, %66 ]
  %73 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, ptr noundef %72) #27
  br label %84

74:                                               ; preds = %53
  %75 = icmp eq ptr %55, null
  br i1 %75, label %82, label %76

76:                                               ; preds = %74
  %77 = getelementptr inbounds %struct.regulator_coupler, ptr %55, i32 0, i32 3
  %78 = load ptr, ptr %77, align 4
  %79 = icmp eq ptr %78, null
  br i1 %79, label %82, label %80

80:                                               ; preds = %76
  %81 = call i32 %78(ptr noundef nonnull %55, ptr noundef %3, i32 noundef 0) #26
  br label %84

82:                                               ; preds = %76, %74
  %83 = call i32 @regulator_do_balance_voltage(ptr noundef %3, i32 noundef 0, i1 noundef zeroext false) #26
  br label %84

84:                                               ; preds = %82, %80, %71, %49
  %85 = load i32, ptr %50, align 4
  call fastcc void @regulator_unlock_recursive(ptr noundef %3, i32 noundef %85) #26
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #26
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @regulator_ena_gpio_request(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.regulator_config, ptr %1, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 20) #28
  tail call void @mutex_lock(ptr noundef nonnull @regulator_list_mutex) #26
  br label %7

7:                                                ; preds = %11, %2
  %8 = phi ptr [ @regulator_ena_gpio_list, %2 ], [ %9, %11 ]
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, @regulator_ena_gpio_list
  br i1 %10, label %15, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.regulator_enable_gpio, ptr %9, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, %4
  br i1 %14, label %23, label %7

15:                                               ; preds = %7
  %16 = icmp eq ptr %6, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %15
  tail call void @mutex_unlock(ptr noundef nonnull @regulator_list_mutex) #26
  br label %30

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.regulator_enable_gpio, ptr %6, i32 0, i32 1
  store ptr %4, ptr %19, align 8
  %20 = load ptr, ptr @regulator_ena_gpio_list, align 4
  %21 = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  store ptr %6, ptr %21, align 4
  store ptr %20, ptr %6, align 8
  %22 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  store ptr @regulator_ena_gpio_list, ptr %22, align 4
  store volatile ptr %6, ptr @regulator_ena_gpio_list, align 4
  br label %23

23:                                               ; preds = %18, %11
  %24 = phi ptr [ null, %18 ], [ %6, %11 ]
  %25 = phi ptr [ %6, %18 ], [ %9, %11 ]
  %26 = getelementptr inbounds %struct.regulator_enable_gpio, ptr %25, i32 0, i32 3
  %27 = load i32, ptr %26, align 4
  %28 = add i32 %27, 1
  store i32 %28, ptr %26, align 4
  %29 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 21
  store ptr %25, ptr %29, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @regulator_list_mutex) #26
  tail call void @kfree(ptr noundef %24) #26
  br label %30

30:                                               ; preds = %23, %17
  %31 = phi i32 [ 0, %23 ], [ -12, %17 ]
  ret i32 %31
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @set_machine_constraints(ptr noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.regulator_desc, ptr %2, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 14
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.regulation_constraints, ptr %6, i32 0, i32 28
  %8 = load i16, ptr %7, align 4
  %9 = and i16 %8, 4
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %107, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.regulation_constraints, ptr %6, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %107, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.regulation_constraints, ptr %6, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %107, label %19

19:                                               ; preds = %15
  %20 = tail call i32 @regulator_get_voltage_rdev(ptr noundef %0) #26
  %21 = icmp eq i32 %20, -131
  br i1 %21, label %22, label %47

22:                                               ; preds = %19
  %23 = load ptr, ptr %5, align 8
  %24 = icmp eq ptr %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %22
  %26 = load ptr, ptr %23, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %25, %22
  %29 = load ptr, ptr %0, align 8
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  %32 = select i1 %31, ptr @.str, ptr %30
  br label %33

33:                                               ; preds = %28, %25
  %34 = phi ptr [ %26, %25 ], [ %32, %28 ]
  %35 = getelementptr inbounds %struct.regulation_constraints, ptr %23, i32 0, i32 1
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr inbounds %struct.regulation_constraints, ptr %23, i32 0, i32 2
  %38 = load i32, ptr %37, align 4
  %39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.88, ptr noundef %34, i32 noundef %36, i32 noundef %38) #27
  %40 = load ptr, ptr %5, align 8
  %41 = getelementptr inbounds %struct.regulation_constraints, ptr %40, i32 0, i32 1
  %42 = load i32, ptr %41, align 4
  %43 = getelementptr inbounds %struct.regulation_constraints, ptr %40, i32 0, i32 2
  %44 = load i32, ptr %43, align 4
  %45 = tail call fastcc i32 @_regulator_do_set_voltage(ptr noundef %0, i32 noundef %42, i32 noundef %44) #26
  %46 = tail call i32 @regulator_get_voltage_rdev(ptr noundef %0) #26
  br label %47

47:                                               ; preds = %33, %19
  %48 = phi i32 [ %46, %33 ], [ %20, %19 ]
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %67

50:                                               ; preds = %47
  %51 = icmp eq i32 %48, -517
  br i1 %51, label %969, label %52

52:                                               ; preds = %50
  %53 = load ptr, ptr %5, align 8
  %54 = icmp eq ptr %53, null
  br i1 %54, label %58, label %55

55:                                               ; preds = %52
  %56 = load ptr, ptr %53, align 4
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %63

58:                                               ; preds = %55, %52
  %59 = load ptr, ptr %0, align 8
  %60 = load ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, null
  %62 = select i1 %61, ptr @.str, ptr %60
  br label %63

63:                                               ; preds = %58, %55
  %64 = phi ptr [ %56, %55 ], [ %62, %58 ]
  %65 = inttoptr i32 %48 to ptr
  %66 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.89, ptr noundef %64, ptr noundef nonnull %65) #27
  br label %969

67:                                               ; preds = %47
  %68 = load ptr, ptr %5, align 8
  %69 = getelementptr inbounds %struct.regulation_constraints, ptr %68, i32 0, i32 1
  %70 = load i32, ptr %69, align 4
  %71 = tail call i32 @llvm.smax.i32(i32 %48, i32 %70) #26
  %72 = getelementptr inbounds %struct.regulation_constraints, ptr %68, i32 0, i32 2
  %73 = load i32, ptr %72, align 4
  %74 = icmp sgt i32 %48, %73
  %75 = select i1 %74, i32 %73, i32 %71
  %76 = icmp eq i32 %75, %48
  br i1 %76, label %107, label %77

77:                                               ; preds = %67
  %78 = icmp eq ptr %68, null
  br i1 %78, label %82, label %79

79:                                               ; preds = %77
  %80 = load ptr, ptr %68, align 4
  %81 = icmp eq ptr %80, null
  br i1 %81, label %82, label %87

82:                                               ; preds = %79, %77
  %83 = load ptr, ptr %0, align 8
  %84 = load ptr, ptr %83, align 4
  %85 = icmp eq ptr %84, null
  %86 = select i1 %85, ptr @.str, ptr %84
  br label %87

87:                                               ; preds = %82, %79
  %88 = phi ptr [ %80, %79 ], [ %86, %82 ]
  %89 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90, ptr noundef %88, i32 noundef %48, i32 noundef %75, i32 noundef %75) #27
  %90 = tail call fastcc i32 @_regulator_do_set_voltage(ptr noundef %0, i32 noundef %75, i32 noundef %75) #26
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %107

92:                                               ; preds = %87
  %93 = load ptr, ptr %5, align 8
  %94 = icmp eq ptr %93, null
  br i1 %94, label %98, label %95

95:                                               ; preds = %92
  %96 = load ptr, ptr %93, align 4
  %97 = icmp eq ptr %96, null
  br i1 %97, label %98, label %103

98:                                               ; preds = %95, %92
  %99 = load ptr, ptr %0, align 8
  %100 = load ptr, ptr %99, align 4
  %101 = icmp eq ptr %100, null
  %102 = select i1 %101, ptr @.str, ptr %100
  br label %103

103:                                              ; preds = %98, %95
  %104 = phi ptr [ %96, %95 ], [ %102, %98 ]
  %105 = inttoptr i32 %90 to ptr
  %106 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.91, ptr noundef %104, i32 noundef %75, i32 noundef %75, ptr noundef nonnull %105) #27
  br label %969

107:                                              ; preds = %87, %67, %15, %11, %1
  %108 = load ptr, ptr %4, align 4
  %109 = icmp eq ptr %108, null
  br i1 %109, label %205, label %110

110:                                              ; preds = %107
  %111 = load ptr, ptr %0, align 8
  %112 = getelementptr inbounds %struct.regulator_desc, ptr %111, i32 0, i32 8
  %113 = load i32, ptr %112, align 4
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %205, label %115

115:                                              ; preds = %110
  %116 = getelementptr inbounds %struct.regulation_constraints, ptr %6, i32 0, i32 1
  %117 = load i32, ptr %116, align 4
  %118 = getelementptr inbounds %struct.regulation_constraints, ptr %6, i32 0, i32 2
  %119 = icmp ne i32 %113, 1
  %120 = icmp ne i32 %117, 0
  %121 = select i1 %119, i1 true, i1 %120
  br i1 %121, label %123, label %122

122:                                              ; preds = %115
  store i32 1, ptr %116, align 4
  store i32 2147483647, ptr %118, align 4
  br label %128

123:                                              ; preds = %115
  %124 = load i32, ptr %118, align 4
  %125 = icmp eq i32 %117, 0
  %126 = icmp eq i32 %124, 0
  %127 = select i1 %125, i1 %126, i1 false
  br i1 %127, label %205, label %128

128:                                              ; preds = %123, %122
  %129 = phi i32 [ 2147483647, %122 ], [ %124, %123 ]
  %130 = phi i32 [ 1, %122 ], [ %117, %123 ]
  %131 = icmp slt i32 %130, 1
  %132 = icmp slt i32 %129, 1
  %133 = select i1 %131, i1 true, i1 %132
  %134 = icmp slt i32 %129, %130
  %135 = select i1 %133, i1 true, i1 %134
  br i1 %135, label %136, label %150

136:                                              ; preds = %128
  %137 = load ptr, ptr %5, align 8
  %138 = icmp eq ptr %137, null
  br i1 %138, label %142, label %139

139:                                              ; preds = %136
  %140 = load ptr, ptr %137, align 4
  %141 = icmp eq ptr %140, null
  br i1 %141, label %142, label %147

142:                                              ; preds = %139, %136
  %143 = load ptr, ptr %0, align 8
  %144 = load ptr, ptr %143, align 4
  %145 = icmp eq ptr %144, null
  %146 = select i1 %145, ptr @.str, ptr %144
  br label %147

147:                                              ; preds = %142, %139
  %148 = phi ptr [ %140, %139 ], [ %146, %142 ]
  %149 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92, ptr noundef %148) #27
  br label %969

150:                                              ; preds = %128
  %151 = load ptr, ptr %0, align 8
  %152 = getelementptr inbounds %struct.regulator_desc, ptr %151, i32 0, i32 7
  %153 = load i8, ptr %152, align 4
  %154 = and i8 %153, 1
  %155 = icmp eq i8 %154, 0
  br i1 %155, label %156, label %205

156:                                              ; preds = %150
  %157 = icmp sgt i32 %113, 0
  br i1 %157, label %158, label %181

158:                                              ; preds = %174, %156
  %159 = phi i32 [ %176, %174 ], [ -2147483648, %156 ]
  %160 = phi i32 [ %175, %174 ], [ 2147483647, %156 ]
  %161 = phi i32 [ %177, %174 ], [ 0, %156 ]
  %162 = load ptr, ptr %4, align 4
  %163 = tail call i32 %162(ptr noundef %0, i32 noundef %161) #26
  %164 = icmp slt i32 %163, 1
  br i1 %164, label %174, label %165

165:                                              ; preds = %158
  %166 = icmp sge i32 %163, %130
  %167 = icmp slt i32 %163, %160
  %168 = select i1 %166, i1 %167, i1 false
  %169 = select i1 %168, i32 %163, i32 %160
  %170 = icmp sle i32 %163, %129
  %171 = icmp sgt i32 %163, %159
  %172 = select i1 %170, i1 %171, i1 false
  %173 = select i1 %172, i32 %163, i32 %159
  br label %174

174:                                              ; preds = %165, %158
  %175 = phi i32 [ %169, %165 ], [ %160, %158 ]
  %176 = phi i32 [ %173, %165 ], [ %159, %158 ]
  %177 = add nuw nsw i32 %161, 1
  %178 = icmp eq i32 %177, %113
  br i1 %178, label %179, label %158

179:                                              ; preds = %174
  %180 = icmp slt i32 %176, %175
  br i1 %180, label %181, label %197

181:                                              ; preds = %179, %156
  %182 = phi i32 [ %176, %179 ], [ -2147483648, %156 ]
  %183 = phi i32 [ %175, %179 ], [ 2147483647, %156 ]
  %184 = load ptr, ptr %5, align 8
  %185 = icmp eq ptr %184, null
  br i1 %185, label %189, label %186

186:                                              ; preds = %181
  %187 = load ptr, ptr %184, align 4
  %188 = icmp eq ptr %187, null
  br i1 %188, label %189, label %194

189:                                              ; preds = %186, %181
  %190 = load ptr, ptr %0, align 8
  %191 = load ptr, ptr %190, align 4
  %192 = icmp eq ptr %191, null
  %193 = select i1 %192, ptr @.str, ptr %191
  br label %194

194:                                              ; preds = %189, %186
  %195 = phi ptr [ %187, %186 ], [ %193, %189 ]
  %196 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.93, ptr noundef %195, i32 noundef %183, i32 noundef %182) #27
  br label %969

197:                                              ; preds = %179
  %198 = load i32, ptr %116, align 4
  %199 = icmp slt i32 %198, %175
  br i1 %199, label %200, label %201

200:                                              ; preds = %197
  store i32 %175, ptr %116, align 4
  br label %201

201:                                              ; preds = %200, %197
  %202 = load i32, ptr %118, align 4
  %203 = icmp sgt i32 %202, %176
  br i1 %203, label %204, label %205

204:                                              ; preds = %201
  store i32 %176, ptr %118, align 4
  br label %205

205:                                              ; preds = %204, %201, %150, %123, %110, %107
  %206 = load ptr, ptr %5, align 8
  %207 = load ptr, ptr %0, align 8
  %208 = getelementptr inbounds %struct.regulator_desc, ptr %207, i32 0, i32 10
  %209 = load ptr, ptr %208, align 4
  %210 = getelementptr inbounds %struct.regulation_constraints, ptr %206, i32 0, i32 4
  %211 = load i32, ptr %210, align 4
  %212 = icmp eq i32 %211, 0
  %213 = getelementptr inbounds %struct.regulation_constraints, ptr %206, i32 0, i32 5
  %214 = load i32, ptr %213, align 4
  %215 = icmp eq i32 %214, 0
  %216 = select i1 %212, i1 %215, i1 false
  br i1 %216, label %268, label %217

217:                                              ; preds = %205
  %218 = icmp sgt i32 %211, %214
  br i1 %218, label %219, label %231

219:                                              ; preds = %217
  %220 = icmp eq ptr %206, null
  br i1 %220, label %224, label %221

221:                                              ; preds = %219
  %222 = load ptr, ptr %206, align 4
  %223 = icmp eq ptr %222, null
  br i1 %223, label %224, label %228

224:                                              ; preds = %221, %219
  %225 = load ptr, ptr %207, align 4
  %226 = icmp eq ptr %225, null
  %227 = select i1 %226, ptr @.str, ptr %225
  br label %228

228:                                              ; preds = %224, %221
  %229 = phi ptr [ %222, %221 ], [ %227, %224 ]
  %230 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.94, ptr noundef %229) #27
  br label %969

231:                                              ; preds = %217
  %232 = getelementptr inbounds %struct.regulator_ops, ptr %209, i32 0, i32 6
  %233 = load ptr, ptr %232, align 4
  %234 = icmp eq ptr %233, null
  br i1 %234, label %239, label %235

235:                                              ; preds = %231
  %236 = getelementptr inbounds %struct.regulator_ops, ptr %209, i32 0, i32 7
  %237 = load ptr, ptr %236, align 4
  %238 = icmp eq ptr %237, null
  br i1 %238, label %239, label %251

239:                                              ; preds = %235, %231
  %240 = icmp eq ptr %206, null
  br i1 %240, label %244, label %241

241:                                              ; preds = %239
  %242 = load ptr, ptr %206, align 4
  %243 = icmp eq ptr %242, null
  br i1 %243, label %244, label %248

244:                                              ; preds = %241, %239
  %245 = load ptr, ptr %207, align 4
  %246 = icmp eq ptr %245, null
  %247 = select i1 %246, ptr @.str, ptr %245
  br label %248

248:                                              ; preds = %244, %241
  %249 = phi ptr [ %242, %241 ], [ %247, %244 ]
  %250 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.95, ptr noundef %249) #27
  br label %268

251:                                              ; preds = %235
  %252 = tail call i32 %233(ptr noundef %0, i32 noundef %211, i32 noundef %214) #26
  %253 = icmp slt i32 %252, 0
  br i1 %253, label %254, label %268

254:                                              ; preds = %251
  %255 = load ptr, ptr %5, align 8
  %256 = icmp eq ptr %255, null
  br i1 %256, label %260, label %257

257:                                              ; preds = %254
  %258 = load ptr, ptr %255, align 4
  %259 = icmp eq ptr %258, null
  br i1 %259, label %260, label %265

260:                                              ; preds = %257, %254
  %261 = load ptr, ptr %0, align 8
  %262 = load ptr, ptr %261, align 4
  %263 = icmp eq ptr %262, null
  %264 = select i1 %263, ptr @.str, ptr %262
  br label %265

265:                                              ; preds = %260, %257
  %266 = phi ptr [ %258, %257 ], [ %264, %260 ]
  %267 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, ptr noundef %266, i32 noundef %252) #27
  br label %969

268:                                              ; preds = %251, %248, %205
  %269 = load ptr, ptr %5, align 8
  %270 = getelementptr inbounds %struct.regulation_constraints, ptr %269, i32 0, i32 6
  %271 = load i32, ptr %270, align 4
  %272 = icmp eq i32 %271, 0
  br i1 %272, label %295, label %273

273:                                              ; preds = %268
  %274 = getelementptr inbounds %struct.regulator_ops, ptr %4, i32 0, i32 8
  %275 = load ptr, ptr %274, align 4
  %276 = icmp eq ptr %275, null
  br i1 %276, label %295, label %277

277:                                              ; preds = %273
  %278 = tail call i32 %275(ptr noundef %0, i32 noundef %271) #26
  %279 = icmp slt i32 %278, 0
  %280 = load ptr, ptr %5, align 8
  br i1 %279, label %281, label %295

281:                                              ; preds = %277
  %282 = icmp eq ptr %280, null
  br i1 %282, label %286, label %283

283:                                              ; preds = %281
  %284 = load ptr, ptr %280, align 4
  %285 = icmp eq ptr %284, null
  br i1 %285, label %286, label %291

286:                                              ; preds = %283, %281
  %287 = load ptr, ptr %0, align 8
  %288 = load ptr, ptr %287, align 4
  %289 = icmp eq ptr %288, null
  %290 = select i1 %289, ptr @.str, ptr %288
  br label %291

291:                                              ; preds = %286, %283
  %292 = phi ptr [ %284, %283 ], [ %290, %286 ]
  %293 = inttoptr i32 %278 to ptr
  %294 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, ptr noundef %292, ptr noundef nonnull %293) #27
  br label %969

295:                                              ; preds = %277, %273, %268
  %296 = phi ptr [ %269, %268 ], [ %269, %273 ], [ %280, %277 ]
  %297 = phi i32 [ 0, %268 ], [ 0, %273 ], [ %278, %277 ]
  %298 = getelementptr inbounds %struct.regulation_constraints, ptr %296, i32 0, i32 20
  %299 = load i32, ptr %298, align 4
  %300 = icmp eq i32 %299, 0
  br i1 %300, label %357, label %301

301:                                              ; preds = %295
  %302 = icmp eq ptr %296, null
  br i1 %302, label %357, label %303

303:                                              ; preds = %301
  switch i32 %299, label %357 [
    i32 2, label %304
    i32 3, label %306
    i32 4, label %308
  ]

304:                                              ; preds = %303
  %305 = getelementptr inbounds %struct.regulation_constraints, ptr %296, i32 0, i32 15
  br label %310

306:                                              ; preds = %303
  %307 = getelementptr inbounds %struct.regulation_constraints, ptr %296, i32 0, i32 14
  br label %310

308:                                              ; preds = %303
  %309 = getelementptr inbounds %struct.regulation_constraints, ptr %296, i32 0, i32 13
  br label %310

310:                                              ; preds = %308, %306, %304
  %311 = phi ptr [ %309, %308 ], [ %307, %306 ], [ %305, %304 ]
  %312 = icmp eq ptr %311, null
  br i1 %312, label %357, label %313

313:                                              ; preds = %310
  %314 = getelementptr inbounds %struct.regulator_state, ptr %311, i32 0, i32 4
  %315 = load i32, ptr %314, align 4
  %316 = add i32 %315, -1
  %317 = icmp ult i32 %316, 2
  br i1 %317, label %339, label %318

318:                                              ; preds = %313
  %319 = load ptr, ptr %0, align 8
  %320 = getelementptr inbounds %struct.regulator_desc, ptr %319, i32 0, i32 10
  %321 = load ptr, ptr %320, align 4
  %322 = getelementptr inbounds %struct.regulator_ops, ptr %321, i32 0, i32 30
  %323 = load ptr, ptr %322, align 4
  %324 = icmp eq ptr %323, null
  br i1 %324, label %325, label %329

325:                                              ; preds = %318
  %326 = getelementptr inbounds %struct.regulator_ops, ptr %321, i32 0, i32 33
  %327 = load ptr, ptr %326, align 4
  %328 = icmp eq ptr %327, null
  br i1 %328, label %357, label %329

329:                                              ; preds = %325, %318
  %330 = load ptr, ptr %296, align 4
  %331 = icmp eq ptr %330, null
  br i1 %331, label %332, label %336

332:                                              ; preds = %329
  %333 = load ptr, ptr %319, align 4
  %334 = icmp eq ptr %333, null
  %335 = select i1 %334, ptr @.str, ptr %333
  br label %336

336:                                              ; preds = %332, %329
  %337 = phi ptr [ %330, %329 ], [ %335, %332 ]
  %338 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.97, ptr noundef %337) #27
  br label %357

339:                                              ; preds = %313
  %340 = tail call fastcc i32 @__suspend_set_state(ptr noundef %0, ptr noundef nonnull %311) #26
  %341 = icmp slt i32 %340, 0
  br i1 %341, label %342, label %357

342:                                              ; preds = %339
  %343 = load ptr, ptr %5, align 8
  %344 = icmp eq ptr %343, null
  br i1 %344, label %348, label %345

345:                                              ; preds = %342
  %346 = load ptr, ptr %343, align 4
  %347 = icmp eq ptr %346, null
  br i1 %347, label %348, label %353

348:                                              ; preds = %345, %342
  %349 = load ptr, ptr %0, align 8
  %350 = load ptr, ptr %349, align 4
  %351 = icmp eq ptr %350, null
  %352 = select i1 %351, ptr @.str, ptr %350
  br label %353

353:                                              ; preds = %348, %345
  %354 = phi ptr [ %346, %345 ], [ %352, %348 ]
  %355 = inttoptr i32 %340 to ptr
  %356 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, ptr noundef %354, ptr noundef nonnull %355) #27
  br label %969

357:                                              ; preds = %339, %336, %325, %310, %303, %301, %295
  %358 = phi i32 [ %340, %339 ], [ %297, %295 ], [ 0, %310 ], [ 0, %336 ], [ 0, %325 ], [ 0, %301 ], [ 0, %303 ]
  %359 = load ptr, ptr %5, align 8
  %360 = getelementptr inbounds %struct.regulation_constraints, ptr %359, i32 0, i32 21
  %361 = load i32, ptr %360, align 4
  %362 = icmp eq i32 %361, 0
  br i1 %362, label %398, label %363

363:                                              ; preds = %357
  %364 = getelementptr inbounds %struct.regulator_ops, ptr %4, i32 0, i32 17
  %365 = load ptr, ptr %364, align 4
  %366 = icmp eq ptr %365, null
  br i1 %366, label %367, label %380

367:                                              ; preds = %363
  %368 = icmp eq ptr %359, null
  br i1 %368, label %372, label %369

369:                                              ; preds = %367
  %370 = load ptr, ptr %359, align 4
  %371 = icmp eq ptr %370, null
  br i1 %371, label %372, label %377

372:                                              ; preds = %369, %367
  %373 = load ptr, ptr %0, align 8
  %374 = load ptr, ptr %373, align 4
  %375 = icmp eq ptr %374, null
  %376 = select i1 %375, ptr @.str, ptr %374
  br label %377

377:                                              ; preds = %372, %369
  %378 = phi ptr [ %370, %369 ], [ %376, %372 ]
  %379 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, ptr noundef %378) #27
  br label %969

380:                                              ; preds = %363
  %381 = tail call i32 %365(ptr noundef %0, i32 noundef %361) #26
  %382 = icmp slt i32 %381, 0
  br i1 %382, label %383, label %404

383:                                              ; preds = %380
  %384 = load ptr, ptr %5, align 8
  %385 = icmp eq ptr %384, null
  br i1 %385, label %389, label %386

386:                                              ; preds = %383
  %387 = load ptr, ptr %384, align 4
  %388 = icmp eq ptr %387, null
  br i1 %388, label %389, label %394

389:                                              ; preds = %386, %383
  %390 = load ptr, ptr %0, align 8
  %391 = load ptr, ptr %390, align 4
  %392 = icmp eq ptr %391, null
  %393 = select i1 %392, ptr @.str, ptr %391
  br label %394

394:                                              ; preds = %389, %386
  %395 = phi ptr [ %387, %386 ], [ %393, %389 ]
  %396 = inttoptr i32 %381 to ptr
  %397 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73, ptr noundef %395, ptr noundef nonnull %396) #27
  br label %969

398:                                              ; preds = %357
  %399 = getelementptr inbounds %struct.regulation_constraints, ptr %359, i32 0, i32 7
  %400 = load i32, ptr %399, align 4
  %401 = icmp eq i32 %400, 0
  br i1 %401, label %404, label %402

402:                                              ; preds = %398
  %403 = tail call fastcc i32 @drms_uA_update(ptr noundef %0)
  br label %404

404:                                              ; preds = %402, %398, %380
  %405 = phi i32 [ %381, %380 ], [ %358, %402 ], [ %358, %398 ]
  %406 = load ptr, ptr %5, align 8
  %407 = getelementptr inbounds %struct.regulation_constraints, ptr %406, i32 0, i32 22
  %408 = load i32, ptr %407, align 4
  %409 = icmp eq i32 %408, 0
  br i1 %409, label %410, label %415

410:                                              ; preds = %404
  %411 = getelementptr inbounds %struct.regulation_constraints, ptr %406, i32 0, i32 28
  %412 = load i16, ptr %411, align 4
  %413 = and i16 %412, 8
  %414 = icmp eq i16 %413, 0
  br i1 %414, label %437, label %415

415:                                              ; preds = %410, %404
  %416 = getelementptr inbounds %struct.regulator_ops, ptr %4, i32 0, i32 21
  %417 = load ptr, ptr %416, align 4
  %418 = icmp eq ptr %417, null
  br i1 %418, label %437, label %419

419:                                              ; preds = %415
  %420 = tail call i32 %417(ptr noundef %0, i32 noundef %408) #26
  %421 = icmp slt i32 %420, 0
  %422 = load ptr, ptr %5, align 8
  br i1 %421, label %423, label %437

423:                                              ; preds = %419
  %424 = icmp eq ptr %422, null
  br i1 %424, label %428, label %425

425:                                              ; preds = %423
  %426 = load ptr, ptr %422, align 4
  %427 = icmp eq ptr %426, null
  br i1 %427, label %428, label %433

428:                                              ; preds = %425, %423
  %429 = load ptr, ptr %0, align 8
  %430 = load ptr, ptr %429, align 4
  %431 = icmp eq ptr %430, null
  %432 = select i1 %431, ptr @.str, ptr %430
  br label %433

433:                                              ; preds = %428, %425
  %434 = phi ptr [ %426, %425 ], [ %432, %428 ]
  %435 = inttoptr i32 %420 to ptr
  %436 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, ptr noundef %434, ptr noundef nonnull %435) #27
  br label %969

437:                                              ; preds = %419, %415, %410
  %438 = phi ptr [ %406, %415 ], [ %406, %410 ], [ %422, %419 ]
  %439 = phi i32 [ %405, %415 ], [ %405, %410 ], [ %420, %419 ]
  %440 = getelementptr inbounds %struct.regulation_constraints, ptr %438, i32 0, i32 28
  %441 = load i16, ptr %440, align 4
  %442 = and i16 %441, 32
  %443 = icmp eq i16 %442, 0
  br i1 %443, label %469, label %444

444:                                              ; preds = %437
  %445 = getelementptr inbounds %struct.regulator_ops, ptr %4, i32 0, i32 35
  %446 = load ptr, ptr %445, align 4
  %447 = icmp eq ptr %446, null
  br i1 %447, label %469, label %448

448:                                              ; preds = %444
  %449 = tail call i32 %446(ptr noundef %0) #26
  %450 = icmp slt i32 %449, 0
  %451 = load ptr, ptr %5, align 8
  br i1 %450, label %455, label %452

452:                                              ; preds = %448
  %453 = getelementptr inbounds %struct.regulation_constraints, ptr %451, i32 0, i32 28
  %454 = load i16, ptr %453, align 4
  br label %469

455:                                              ; preds = %448
  %456 = icmp eq ptr %451, null
  br i1 %456, label %460, label %457

457:                                              ; preds = %455
  %458 = load ptr, ptr %451, align 4
  %459 = icmp eq ptr %458, null
  br i1 %459, label %460, label %465

460:                                              ; preds = %457, %455
  %461 = load ptr, ptr %0, align 8
  %462 = load ptr, ptr %461, align 4
  %463 = icmp eq ptr %462, null
  %464 = select i1 %463, ptr @.str, ptr %462
  br label %465

465:                                              ; preds = %460, %457
  %466 = phi ptr [ %458, %457 ], [ %464, %460 ]
  %467 = inttoptr i32 %449 to ptr
  %468 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, ptr noundef %466, ptr noundef nonnull %467) #27
  br label %969

469:                                              ; preds = %452, %444, %437
  %470 = phi i16 [ %454, %452 ], [ %441, %444 ], [ %441, %437 ]
  %471 = phi ptr [ %451, %452 ], [ %438, %444 ], [ %438, %437 ]
  %472 = phi i32 [ %449, %452 ], [ %439, %444 ], [ %439, %437 ]
  %473 = and i16 %470, 16
  %474 = icmp eq i16 %473, 0
  br i1 %474, label %500, label %475

475:                                              ; preds = %469
  %476 = getelementptr inbounds %struct.regulator_ops, ptr %4, i32 0, i32 24
  %477 = load ptr, ptr %476, align 4
  %478 = icmp eq ptr %477, null
  br i1 %478, label %500, label %479

479:                                              ; preds = %475
  %480 = tail call i32 %477(ptr noundef %0) #26
  %481 = icmp slt i32 %480, 0
  %482 = load ptr, ptr %5, align 8
  br i1 %481, label %486, label %483

483:                                              ; preds = %479
  %484 = getelementptr inbounds %struct.regulation_constraints, ptr %482, i32 0, i32 28
  %485 = load i16, ptr %484, align 4
  br label %500

486:                                              ; preds = %479
  %487 = icmp eq ptr %482, null
  br i1 %487, label %491, label %488

488:                                              ; preds = %486
  %489 = load ptr, ptr %482, align 4
  %490 = icmp eq ptr %489, null
  br i1 %490, label %491, label %496

491:                                              ; preds = %488, %486
  %492 = load ptr, ptr %0, align 8
  %493 = load ptr, ptr %492, align 4
  %494 = icmp eq ptr %493, null
  %495 = select i1 %494, ptr @.str, ptr %493
  br label %496

496:                                              ; preds = %491, %488
  %497 = phi ptr [ %489, %488 ], [ %495, %491 ]
  %498 = inttoptr i32 %480 to ptr
  %499 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76, ptr noundef %497, ptr noundef nonnull %498) #27
  br label %969

500:                                              ; preds = %483, %475, %469
  %501 = phi i16 [ %485, %483 ], [ %470, %475 ], [ %470, %469 ]
  %502 = phi ptr [ %482, %483 ], [ %471, %475 ], [ %471, %469 ]
  %503 = phi i32 [ %480, %483 ], [ %472, %475 ], [ %472, %469 ]
  %504 = and i16 %501, 64
  %505 = icmp eq i16 %504, 0
  br i1 %505, label %533, label %506

506:                                              ; preds = %500
  %507 = getelementptr inbounds %struct.regulator_ops, ptr %4, i32 0, i32 9
  %508 = load ptr, ptr %507, align 4
  %509 = icmp eq ptr %508, null
  br i1 %509, label %533, label %510

510:                                              ; preds = %506
  %511 = getelementptr inbounds %struct.regulation_constraints, ptr %502, i32 0, i32 16
  %512 = load i32, ptr %511, align 4
  %513 = tail call i32 %508(ptr noundef %0, i32 noundef %512, i32 noundef 0, i1 noundef zeroext true) #26
  %514 = icmp slt i32 %513, 0
  %515 = load ptr, ptr %5, align 8
  br i1 %514, label %519, label %516

516:                                              ; preds = %510
  %517 = getelementptr inbounds %struct.regulation_constraints, ptr %515, i32 0, i32 28
  %518 = load i16, ptr %517, align 4
  br label %533

519:                                              ; preds = %510
  %520 = icmp eq ptr %515, null
  br i1 %520, label %524, label %521

521:                                              ; preds = %519
  %522 = load ptr, ptr %515, align 4
  %523 = icmp eq ptr %522, null
  br i1 %523, label %524, label %529

524:                                              ; preds = %521, %519
  %525 = load ptr, ptr %0, align 8
  %526 = load ptr, ptr %525, align 4
  %527 = icmp eq ptr %526, null
  %528 = select i1 %527, ptr @.str, ptr %526
  br label %529

529:                                              ; preds = %524, %521
  %530 = phi ptr [ %522, %521 ], [ %528, %524 ]
  %531 = inttoptr i32 %513 to ptr
  %532 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77, ptr noundef %530, ptr noundef nonnull %531) #27
  br label %969

533:                                              ; preds = %516, %506, %500
  %534 = phi i16 [ %501, %506 ], [ %501, %500 ], [ %518, %516 ]
  %535 = phi ptr [ %502, %506 ], [ %502, %500 ], [ %515, %516 ]
  %536 = phi i32 [ %503, %506 ], [ %503, %500 ], [ %513, %516 ]
  %537 = and i16 %534, 128
  %538 = icmp eq i16 %537, 0
  br i1 %538, label %578, label %539

539:                                              ; preds = %533
  %540 = getelementptr inbounds %struct.regulator_ops, ptr %4, i32 0, i32 9
  %541 = load ptr, ptr %540, align 4
  %542 = icmp eq ptr %541, null
  br i1 %542, label %597, label %543

543:                                              ; preds = %539
  %544 = getelementptr inbounds %struct.regulation_constraints, ptr %535, i32 0, i32 16
  %545 = load i32, ptr %544, align 4
  %546 = icmp eq i32 %545, 0
  br i1 %546, label %555, label %547

547:                                              ; preds = %543
  %548 = icmp eq i32 %545, -1
  %549 = select i1 %548, i32 0, i32 %545
  %550 = xor i1 %548, true
  %551 = icmp eq i32 %549, -2
  %552 = select i1 %551, i32 0, i32 %549
  %553 = tail call i32 %541(ptr noundef %0, i32 noundef %552, i32 noundef 0, i1 noundef zeroext %550) #26
  %554 = icmp eq i32 %553, 0
  br i1 %554, label %555, label %578

555:                                              ; preds = %547, %543
  %556 = getelementptr inbounds %struct.regulation_constraints, ptr %535, i32 0, i32 16, i32 1
  %557 = load i32, ptr %556, align 4
  %558 = icmp eq i32 %557, 0
  br i1 %558, label %567, label %559

559:                                              ; preds = %555
  %560 = icmp eq i32 %557, -1
  %561 = select i1 %560, i32 0, i32 %557
  %562 = xor i1 %560, true
  %563 = icmp eq i32 %561, -2
  %564 = select i1 %563, i32 0, i32 %561
  %565 = tail call i32 %541(ptr noundef %0, i32 noundef %564, i32 noundef 1, i1 noundef zeroext %562) #26
  %566 = icmp eq i32 %565, 0
  br i1 %566, label %567, label %578

567:                                              ; preds = %559, %555
  %568 = getelementptr inbounds %struct.regulation_constraints, ptr %535, i32 0, i32 16, i32 2
  %569 = load i32, ptr %568, align 4
  %570 = icmp eq i32 %569, 0
  br i1 %570, label %611, label %571

571:                                              ; preds = %567
  %572 = icmp eq i32 %569, -1
  %573 = select i1 %572, i32 0, i32 %569
  %574 = xor i1 %572, true
  %575 = icmp eq i32 %573, -2
  %576 = select i1 %575, i32 0, i32 %573
  %577 = tail call i32 %541(ptr noundef %0, i32 noundef %576, i32 noundef 2, i1 noundef zeroext %574) #26
  br label %578

578:                                              ; preds = %571, %559, %547, %533
  %579 = phi i32 [ %536, %533 ], [ %553, %547 ], [ %565, %559 ], [ %577, %571 ]
  switch i32 %579, label %582 [
    i32 0, label %611
    i32 -95, label %580
  ]

580:                                              ; preds = %578
  %581 = load ptr, ptr %5, align 8
  br label %597

582:                                              ; preds = %578
  %583 = load ptr, ptr %5, align 8
  %584 = icmp eq ptr %583, null
  br i1 %584, label %588, label %585

585:                                              ; preds = %582
  %586 = load ptr, ptr %583, align 4
  %587 = icmp eq ptr %586, null
  br i1 %587, label %588, label %593

588:                                              ; preds = %585, %582
  %589 = load ptr, ptr %0, align 8
  %590 = load ptr, ptr %589, align 4
  %591 = icmp eq ptr %590, null
  %592 = select i1 %591, ptr @.str, ptr %590
  br label %593

593:                                              ; preds = %588, %585
  %594 = phi ptr [ %586, %585 ], [ %592, %588 ]
  %595 = inttoptr i32 %579 to ptr
  %596 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef %594, ptr noundef %595) #27
  br label %969

597:                                              ; preds = %580, %539
  %598 = phi ptr [ %581, %580 ], [ %535, %539 ]
  %599 = icmp eq ptr %598, null
  br i1 %599, label %603, label %600

600:                                              ; preds = %597
  %601 = load ptr, ptr %598, align 4
  %602 = icmp eq ptr %601, null
  br i1 %602, label %603, label %608

603:                                              ; preds = %600, %597
  %604 = load ptr, ptr %0, align 8
  %605 = load ptr, ptr %604, align 4
  %606 = icmp eq ptr %605, null
  %607 = select i1 %606, ptr @.str, ptr %605
  br label %608

608:                                              ; preds = %603, %600
  %609 = phi ptr [ %601, %600 ], [ %607, %603 ]
  %610 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79, ptr noundef %609) #27
  br label %611

611:                                              ; preds = %608, %578, %567
  %612 = phi i32 [ %579, %578 ], [ -95, %608 ], [ 0, %567 ]
  %613 = load ptr, ptr %5, align 8
  %614 = getelementptr inbounds %struct.regulation_constraints, ptr %613, i32 0, i32 28
  %615 = load i16, ptr %614, align 4
  %616 = and i16 %615, 256
  %617 = icmp eq i16 %616, 0
  br i1 %617, label %657, label %618

618:                                              ; preds = %611
  %619 = getelementptr inbounds %struct.regulator_ops, ptr %4, i32 0, i32 10
  %620 = load ptr, ptr %619, align 4
  %621 = icmp eq ptr %620, null
  br i1 %621, label %676, label %622

622:                                              ; preds = %618
  %623 = getelementptr inbounds %struct.regulation_constraints, ptr %613, i32 0, i32 17
  %624 = load i32, ptr %623, align 4
  %625 = icmp eq i32 %624, 0
  br i1 %625, label %634, label %626

626:                                              ; preds = %622
  %627 = icmp eq i32 %624, -1
  %628 = select i1 %627, i32 0, i32 %624
  %629 = xor i1 %627, true
  %630 = icmp eq i32 %628, -2
  %631 = select i1 %630, i32 0, i32 %628
  %632 = tail call i32 %620(ptr noundef %0, i32 noundef %631, i32 noundef 0, i1 noundef zeroext %629) #26
  %633 = icmp eq i32 %632, 0
  br i1 %633, label %634, label %657

634:                                              ; preds = %626, %622
  %635 = getelementptr inbounds %struct.regulation_constraints, ptr %613, i32 0, i32 17, i32 1
  %636 = load i32, ptr %635, align 4
  %637 = icmp eq i32 %636, 0
  br i1 %637, label %646, label %638

638:                                              ; preds = %634
  %639 = icmp eq i32 %636, -1
  %640 = select i1 %639, i32 0, i32 %636
  %641 = xor i1 %639, true
  %642 = icmp eq i32 %640, -2
  %643 = select i1 %642, i32 0, i32 %640
  %644 = tail call i32 %620(ptr noundef %0, i32 noundef %643, i32 noundef 1, i1 noundef zeroext %641) #26
  %645 = icmp eq i32 %644, 0
  br i1 %645, label %646, label %657

646:                                              ; preds = %638, %634
  %647 = getelementptr inbounds %struct.regulation_constraints, ptr %613, i32 0, i32 17, i32 2
  %648 = load i32, ptr %647, align 4
  %649 = icmp eq i32 %648, 0
  br i1 %649, label %690, label %650

650:                                              ; preds = %646
  %651 = icmp eq i32 %648, -1
  %652 = select i1 %651, i32 0, i32 %648
  %653 = xor i1 %651, true
  %654 = icmp eq i32 %652, -2
  %655 = select i1 %654, i32 0, i32 %652
  %656 = tail call i32 %620(ptr noundef %0, i32 noundef %655, i32 noundef 2, i1 noundef zeroext %653) #26
  br label %657

657:                                              ; preds = %650, %638, %626, %611
  %658 = phi i32 [ %612, %611 ], [ %632, %626 ], [ %644, %638 ], [ %656, %650 ]
  switch i32 %658, label %661 [
    i32 0, label %690
    i32 -95, label %659
  ]

659:                                              ; preds = %657
  %660 = load ptr, ptr %5, align 8
  br label %676

661:                                              ; preds = %657
  %662 = load ptr, ptr %5, align 8
  %663 = icmp eq ptr %662, null
  br i1 %663, label %667, label %664

664:                                              ; preds = %661
  %665 = load ptr, ptr %662, align 4
  %666 = icmp eq ptr %665, null
  br i1 %666, label %667, label %672

667:                                              ; preds = %664, %661
  %668 = load ptr, ptr %0, align 8
  %669 = load ptr, ptr %668, align 4
  %670 = icmp eq ptr %669, null
  %671 = select i1 %670, ptr @.str, ptr %669
  br label %672

672:                                              ; preds = %667, %664
  %673 = phi ptr [ %665, %664 ], [ %671, %667 ]
  %674 = inttoptr i32 %658 to ptr
  %675 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, ptr noundef %673, ptr noundef %674) #27
  br label %969

676:                                              ; preds = %659, %618
  %677 = phi ptr [ %660, %659 ], [ %613, %618 ]
  %678 = icmp eq ptr %677, null
  br i1 %678, label %682, label %679

679:                                              ; preds = %676
  %680 = load ptr, ptr %677, align 4
  %681 = icmp eq ptr %680, null
  br i1 %681, label %682, label %687

682:                                              ; preds = %679, %676
  %683 = load ptr, ptr %0, align 8
  %684 = load ptr, ptr %683, align 4
  %685 = icmp eq ptr %684, null
  %686 = select i1 %685, ptr @.str, ptr %684
  br label %687

687:                                              ; preds = %682, %679
  %688 = phi ptr [ %680, %679 ], [ %686, %682 ]
  %689 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, ptr noundef %688) #27
  br label %690

690:                                              ; preds = %687, %657, %646
  %691 = phi i32 [ %658, %657 ], [ -95, %687 ], [ 0, %646 ]
  %692 = load ptr, ptr %5, align 8
  %693 = getelementptr inbounds %struct.regulation_constraints, ptr %692, i32 0, i32 28
  %694 = load i16, ptr %693, align 4
  %695 = and i16 %694, 512
  %696 = icmp eq i16 %695, 0
  br i1 %696, label %736, label %697

697:                                              ; preds = %690
  %698 = getelementptr inbounds %struct.regulator_ops, ptr %4, i32 0, i32 11
  %699 = load ptr, ptr %698, align 4
  %700 = icmp eq ptr %699, null
  br i1 %700, label %755, label %701

701:                                              ; preds = %697
  %702 = getelementptr inbounds %struct.regulation_constraints, ptr %692, i32 0, i32 18
  %703 = load i32, ptr %702, align 4
  %704 = icmp eq i32 %703, 0
  br i1 %704, label %713, label %705

705:                                              ; preds = %701
  %706 = icmp eq i32 %703, -1
  %707 = select i1 %706, i32 0, i32 %703
  %708 = xor i1 %706, true
  %709 = icmp eq i32 %707, -2
  %710 = select i1 %709, i32 0, i32 %707
  %711 = tail call i32 %699(ptr noundef %0, i32 noundef %710, i32 noundef 0, i1 noundef zeroext %708) #26
  %712 = icmp eq i32 %711, 0
  br i1 %712, label %713, label %736

713:                                              ; preds = %705, %701
  %714 = getelementptr inbounds %struct.regulation_constraints, ptr %692, i32 0, i32 18, i32 1
  %715 = load i32, ptr %714, align 4
  %716 = icmp eq i32 %715, 0
  br i1 %716, label %725, label %717

717:                                              ; preds = %713
  %718 = icmp eq i32 %715, -1
  %719 = select i1 %718, i32 0, i32 %715
  %720 = xor i1 %718, true
  %721 = icmp eq i32 %719, -2
  %722 = select i1 %721, i32 0, i32 %719
  %723 = tail call i32 %699(ptr noundef %0, i32 noundef %722, i32 noundef 1, i1 noundef zeroext %720) #26
  %724 = icmp eq i32 %723, 0
  br i1 %724, label %725, label %736

725:                                              ; preds = %717, %713
  %726 = getelementptr inbounds %struct.regulation_constraints, ptr %692, i32 0, i32 18, i32 2
  %727 = load i32, ptr %726, align 4
  %728 = icmp eq i32 %727, 0
  br i1 %728, label %769, label %729

729:                                              ; preds = %725
  %730 = icmp eq i32 %727, -1
  %731 = select i1 %730, i32 0, i32 %727
  %732 = xor i1 %730, true
  %733 = icmp eq i32 %731, -2
  %734 = select i1 %733, i32 0, i32 %731
  %735 = tail call i32 %699(ptr noundef %0, i32 noundef %734, i32 noundef 2, i1 noundef zeroext %732) #26
  br label %736

736:                                              ; preds = %729, %717, %705, %690
  %737 = phi i32 [ %691, %690 ], [ %711, %705 ], [ %723, %717 ], [ %735, %729 ]
  switch i32 %737, label %740 [
    i32 0, label %769
    i32 -95, label %738
  ]

738:                                              ; preds = %736
  %739 = load ptr, ptr %5, align 8
  br label %755

740:                                              ; preds = %736
  %741 = load ptr, ptr %5, align 8
  %742 = icmp eq ptr %741, null
  br i1 %742, label %746, label %743

743:                                              ; preds = %740
  %744 = load ptr, ptr %741, align 4
  %745 = icmp eq ptr %744, null
  br i1 %745, label %746, label %751

746:                                              ; preds = %743, %740
  %747 = load ptr, ptr %0, align 8
  %748 = load ptr, ptr %747, align 4
  %749 = icmp eq ptr %748, null
  %750 = select i1 %749, ptr @.str, ptr %748
  br label %751

751:                                              ; preds = %746, %743
  %752 = phi ptr [ %744, %743 ], [ %750, %746 ]
  %753 = inttoptr i32 %737 to ptr
  %754 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82, ptr noundef %752, ptr noundef %753) #27
  br label %969

755:                                              ; preds = %738, %697
  %756 = phi ptr [ %739, %738 ], [ %692, %697 ]
  %757 = icmp eq ptr %756, null
  br i1 %757, label %761, label %758

758:                                              ; preds = %755
  %759 = load ptr, ptr %756, align 4
  %760 = icmp eq ptr %759, null
  br i1 %760, label %761, label %766

761:                                              ; preds = %758, %755
  %762 = load ptr, ptr %0, align 8
  %763 = load ptr, ptr %762, align 4
  %764 = icmp eq ptr %763, null
  %765 = select i1 %764, ptr @.str, ptr %763
  br label %766

766:                                              ; preds = %761, %758
  %767 = phi ptr [ %759, %758 ], [ %765, %761 ]
  %768 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83, ptr noundef %767) #27
  br label %769

769:                                              ; preds = %766, %736, %725
  %770 = phi i32 [ %737, %736 ], [ -95, %766 ], [ 0, %725 ]
  %771 = load ptr, ptr %5, align 8
  %772 = getelementptr inbounds %struct.regulation_constraints, ptr %771, i32 0, i32 28
  %773 = load i16, ptr %772, align 4
  %774 = and i16 %773, 1024
  %775 = icmp eq i16 %774, 0
  br i1 %775, label %815, label %776

776:                                              ; preds = %769
  %777 = getelementptr inbounds %struct.regulator_ops, ptr %4, i32 0, i32 12
  %778 = load ptr, ptr %777, align 4
  %779 = icmp eq ptr %778, null
  br i1 %779, label %834, label %780

780:                                              ; preds = %776
  %781 = getelementptr inbounds %struct.regulation_constraints, ptr %771, i32 0, i32 19
  %782 = load i32, ptr %781, align 4
  %783 = icmp eq i32 %782, 0
  br i1 %783, label %792, label %784

784:                                              ; preds = %780
  %785 = icmp eq i32 %782, -1
  %786 = select i1 %785, i32 0, i32 %782
  %787 = xor i1 %785, true
  %788 = icmp eq i32 %786, -2
  %789 = select i1 %788, i32 0, i32 %786
  %790 = tail call i32 %778(ptr noundef %0, i32 noundef %789, i32 noundef 0, i1 noundef zeroext %787) #26
  %791 = icmp eq i32 %790, 0
  br i1 %791, label %792, label %815

792:                                              ; preds = %784, %780
  %793 = getelementptr inbounds %struct.regulation_constraints, ptr %771, i32 0, i32 19, i32 1
  %794 = load i32, ptr %793, align 4
  %795 = icmp eq i32 %794, 0
  br i1 %795, label %804, label %796

796:                                              ; preds = %792
  %797 = icmp eq i32 %794, -1
  %798 = select i1 %797, i32 0, i32 %794
  %799 = xor i1 %797, true
  %800 = icmp eq i32 %798, -2
  %801 = select i1 %800, i32 0, i32 %798
  %802 = tail call i32 %778(ptr noundef %0, i32 noundef %801, i32 noundef 1, i1 noundef zeroext %799) #26
  %803 = icmp eq i32 %802, 0
  br i1 %803, label %804, label %815

804:                                              ; preds = %796, %792
  %805 = getelementptr inbounds %struct.regulation_constraints, ptr %771, i32 0, i32 19, i32 2
  %806 = load i32, ptr %805, align 4
  %807 = icmp eq i32 %806, 0
  br i1 %807, label %848, label %808

808:                                              ; preds = %804
  %809 = icmp eq i32 %806, -1
  %810 = select i1 %809, i32 0, i32 %806
  %811 = xor i1 %809, true
  %812 = icmp eq i32 %810, -2
  %813 = select i1 %812, i32 0, i32 %810
  %814 = tail call i32 %778(ptr noundef %0, i32 noundef %813, i32 noundef 2, i1 noundef zeroext %811) #26
  br label %815

815:                                              ; preds = %808, %796, %784, %769
  %816 = phi i32 [ %770, %769 ], [ %790, %784 ], [ %802, %796 ], [ %814, %808 ]
  switch i32 %816, label %819 [
    i32 0, label %848
    i32 -95, label %817
  ]

817:                                              ; preds = %815
  %818 = load ptr, ptr %5, align 8
  br label %834

819:                                              ; preds = %815
  %820 = load ptr, ptr %5, align 8
  %821 = icmp eq ptr %820, null
  br i1 %821, label %825, label %822

822:                                              ; preds = %819
  %823 = load ptr, ptr %820, align 4
  %824 = icmp eq ptr %823, null
  br i1 %824, label %825, label %830

825:                                              ; preds = %822, %819
  %826 = load ptr, ptr %0, align 8
  %827 = load ptr, ptr %826, align 4
  %828 = icmp eq ptr %827, null
  %829 = select i1 %828, ptr @.str, ptr %827
  br label %830

830:                                              ; preds = %825, %822
  %831 = phi ptr [ %823, %822 ], [ %829, %825 ]
  %832 = inttoptr i32 %816 to ptr
  %833 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84, ptr noundef %831, ptr noundef %832) #27
  br label %969

834:                                              ; preds = %817, %776
  %835 = phi ptr [ %818, %817 ], [ %771, %776 ]
  %836 = icmp eq ptr %835, null
  br i1 %836, label %840, label %837

837:                                              ; preds = %834
  %838 = load ptr, ptr %835, align 4
  %839 = icmp eq ptr %838, null
  br i1 %839, label %840, label %845

840:                                              ; preds = %837, %834
  %841 = load ptr, ptr %0, align 8
  %842 = load ptr, ptr %841, align 4
  %843 = icmp eq ptr %842, null
  %844 = select i1 %843, ptr @.str, ptr %842
  br label %845

845:                                              ; preds = %840, %837
  %846 = phi ptr [ %838, %837 ], [ %844, %840 ]
  %847 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85, ptr noundef %846) #27
  br label %848

848:                                              ; preds = %845, %815, %804
  %849 = load ptr, ptr %5, align 8
  %850 = getelementptr inbounds %struct.regulation_constraints, ptr %849, i32 0, i32 27
  %851 = load i32, ptr %850, align 4
  %852 = icmp eq i32 %851, 0
  br i1 %852, label %876, label %853

853:                                              ; preds = %848
  %854 = getelementptr inbounds %struct.regulator_ops, ptr %4, i32 0, i32 13
  %855 = load ptr, ptr %854, align 4
  %856 = icmp eq ptr %855, null
  br i1 %856, label %876, label %857

857:                                              ; preds = %853
  %858 = icmp eq i32 %851, 2
  %859 = tail call i32 %855(ptr noundef %0, i1 noundef zeroext %858) #26
  %860 = icmp slt i32 %859, 0
  %861 = load ptr, ptr %5, align 8
  br i1 %860, label %862, label %876

862:                                              ; preds = %857
  %863 = icmp eq ptr %861, null
  br i1 %863, label %867, label %864

864:                                              ; preds = %862
  %865 = load ptr, ptr %861, align 4
  %866 = icmp eq ptr %865, null
  br i1 %866, label %867, label %872

867:                                              ; preds = %864, %862
  %868 = load ptr, ptr %0, align 8
  %869 = load ptr, ptr %868, align 4
  %870 = icmp eq ptr %869, null
  %871 = select i1 %870, ptr @.str, ptr %869
  br label %872

872:                                              ; preds = %867, %864
  %873 = phi ptr [ %865, %864 ], [ %871, %867 ]
  %874 = inttoptr i32 %859 to ptr
  %875 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.86, ptr noundef %873, ptr noundef nonnull %874) #27
  br label %969

876:                                              ; preds = %857, %853, %848
  %877 = phi ptr [ %849, %853 ], [ %849, %848 ], [ %861, %857 ]
  %878 = getelementptr inbounds %struct.regulation_constraints, ptr %877, i32 0, i32 28
  %879 = load i16, ptr %878, align 4
  %880 = and i16 %879, 3
  %881 = icmp eq i16 %880, 0
  br i1 %881, label %926, label %882

882:                                              ; preds = %876
  %883 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 16
  %884 = load ptr, ptr %883, align 8
  %885 = icmp eq ptr %884, null
  %886 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 15
  %887 = load ptr, ptr %886, align 4
  %888 = icmp eq ptr %887, null
  br i1 %885, label %890, label %889

889:                                              ; preds = %882
  br i1 %888, label %969, label %891

890:                                              ; preds = %882
  br i1 %888, label %897, label %891

891:                                              ; preds = %890, %889
  %892 = tail call i32 @regulator_enable(ptr noundef nonnull %887)
  %893 = icmp slt i32 %892, 0
  br i1 %893, label %894, label %897

894:                                              ; preds = %891
  %895 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 15
  %896 = load ptr, ptr %895, align 4
  tail call fastcc void @_regulator_put(ptr noundef %896)
  store ptr null, ptr %895, align 4
  br label %969

897:                                              ; preds = %891, %890
  %898 = tail call fastcc i32 @_regulator_do_enable(ptr noundef %0)
  %899 = icmp slt i32 %898, 0
  %900 = icmp ne i32 %898, -22
  %901 = and i1 %899, %900
  %902 = load ptr, ptr %5, align 8
  br i1 %901, label %903, label %917

903:                                              ; preds = %897
  %904 = icmp eq ptr %902, null
  br i1 %904, label %908, label %905

905:                                              ; preds = %903
  %906 = load ptr, ptr %902, align 4
  %907 = icmp eq ptr %906, null
  br i1 %907, label %908, label %913

908:                                              ; preds = %905, %903
  %909 = load ptr, ptr %0, align 8
  %910 = load ptr, ptr %909, align 4
  %911 = icmp eq ptr %910, null
  %912 = select i1 %911, ptr @.str, ptr %910
  br label %913

913:                                              ; preds = %908, %905
  %914 = phi ptr [ %906, %905 ], [ %912, %908 ]
  %915 = inttoptr i32 %898 to ptr
  %916 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.87, ptr noundef %914, ptr noundef nonnull %915) #27
  br label %969

917:                                              ; preds = %897
  %918 = getelementptr inbounds %struct.regulation_constraints, ptr %902, i32 0, i32 28
  %919 = load i16, ptr %918, align 4
  %920 = and i16 %919, 1
  %921 = icmp eq i16 %920, 0
  br i1 %921, label %935, label %922

922:                                              ; preds = %917
  %923 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 2
  %924 = load i32, ptr %923, align 8
  %925 = add i32 %924, 1
  store i32 %925, ptr %923, align 8
  br label %935

926:                                              ; preds = %876
  %927 = load ptr, ptr %0, align 8
  %928 = getelementptr inbounds %struct.regulator_desc, ptr %927, i32 0, i32 58
  %929 = load i32, ptr %928, align 4
  %930 = icmp eq i32 %929, 0
  br i1 %930, label %935, label %931

931:                                              ; preds = %926
  %932 = tail call i64 @ktime_get() #26
  %933 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 23
  store i64 %932, ptr %933, align 8
  %934 = load ptr, ptr %5, align 8
  br label %935

935:                                              ; preds = %931, %926, %922, %917
  %936 = phi ptr [ %902, %917 ], [ %902, %922 ], [ %934, %931 ], [ %877, %926 ]
  %937 = getelementptr inbounds %struct.regulation_constraints, ptr %936, i32 0, i32 1
  %938 = load i32, ptr %937, align 4
  %939 = getelementptr inbounds %struct.regulation_constraints, ptr %936, i32 0, i32 2
  %940 = load i32, ptr %939, align 4
  %941 = icmp eq i32 %938, %940
  br i1 %941, label %969, label %942

942:                                              ; preds = %935
  %943 = icmp eq ptr %936, null
  br i1 %943, label %949, label %944

944:                                              ; preds = %942
  %945 = getelementptr inbounds %struct.regulation_constraints, ptr %936, i32 0, i32 11
  %946 = load i32, ptr %945, align 4
  %947 = and i32 %946, 1
  %948 = icmp eq i32 %947, 0
  br i1 %948, label %957, label %969

949:                                              ; preds = %942
  %950 = load ptr, ptr %0, align 8
  %951 = load ptr, ptr %950, align 4
  %952 = icmp eq ptr %951, null
  %953 = select i1 %952, ptr @.str, ptr %951
  %954 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef %953) #27
  %955 = load ptr, ptr %5, align 8
  %956 = icmp eq ptr %955, null
  br i1 %956, label %961, label %957

957:                                              ; preds = %949, %944
  %958 = phi ptr [ %955, %949 ], [ %936, %944 ]
  %959 = load ptr, ptr %958, align 4
  %960 = icmp eq ptr %959, null
  br i1 %960, label %961, label %966

961:                                              ; preds = %957, %949
  %962 = load ptr, ptr %0, align 8
  %963 = load ptr, ptr %962, align 4
  %964 = icmp eq ptr %963, null
  %965 = select i1 %964, ptr @.str, ptr %963
  br label %966

966:                                              ; preds = %961, %957
  %967 = phi ptr [ %959, %957 ], [ %965, %961 ]
  %968 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.101, ptr noundef %967) #27
  br label %969

969:                                              ; preds = %966, %944, %935, %913, %894, %889, %872, %830, %751, %672, %593, %529, %496, %465, %433, %394, %377, %353, %291, %265, %228, %194, %147, %103, %63, %50
  %970 = phi i32 [ %278, %291 ], [ %340, %353 ], [ %381, %394 ], [ %420, %433 ], [ %449, %465 ], [ %480, %496 ], [ %579, %593 ], [ %658, %672 ], [ %737, %751 ], [ %816, %830 ], [ %892, %894 ], [ %898, %913 ], [ -22, %377 ], [ %513, %529 ], [ -517, %889 ], [ -517, %50 ], [ %48, %63 ], [ %90, %103 ], [ -22, %147 ], [ -22, %194 ], [ -22, %228 ], [ %252, %265 ], [ %859, %872 ], [ 0, %935 ], [ 0, %944 ], [ 0, %966 ]
  ret i32 %970
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @regulator_init_coupling(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call i32 @of_get_n_coupled(ptr noundef %0) #26
  %3 = add i32 %2, 1
  %4 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %3, i32 4) #26
  %5 = extractvalue { i32, i1 } %4, 1
  br i1 %5, label %87, label %6, !prof !11

6:                                                ; preds = %1
  %7 = extractvalue { i32, i1 } %4, 0
  %8 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %7, i32 noundef 3520) #29
  %9 = icmp eq ptr %8, null
  br i1 %9, label %87, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 7
  store ptr %8, ptr %11, align 4
  store ptr %0, ptr %8, align 64
  %12 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 7, i32 3
  store i32 %3, ptr %12, align 4
  %13 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 7, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = add i32 %14, 1
  store i32 %15, ptr %13, align 4
  %16 = icmp eq i32 %2, 0
  br i1 %16, label %87, label %17

17:                                               ; preds = %10
  %18 = tail call zeroext i1 @of_check_coupling_data(ptr noundef %0) #26
  br i1 %18, label %19, label %87

19:                                               ; preds = %17
  tail call void @mutex_lock(ptr noundef nonnull @regulator_list_mutex) #26
  %20 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @regulator_coupler_list, i32 0, i32 1), align 4
  %21 = icmp eq ptr %20, @regulator_coupler_list
  br i1 %21, label %66, label %22

22:                                               ; preds = %41, %19
  %23 = phi ptr [ %43, %41 ], [ %20, %19 ]
  %24 = getelementptr inbounds %struct.regulator_coupler, ptr %23, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = tail call i32 %25(ptr noundef %23, ptr noundef %0) #26
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.regulator_coupler, ptr %23, i32 0, i32 3
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %66

32:                                               ; preds = %28
  %33 = load i32, ptr %12, align 4
  %34 = icmp sgt i32 %33, 2
  br i1 %34, label %45, label %66

35:                                               ; preds = %22
  %36 = icmp slt i32 %26, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %35
  %38 = inttoptr i32 %26 to ptr
  br label %66

39:                                               ; preds = %35
  %40 = icmp eq i32 %26, 1
  br i1 %40, label %41, label %66

41:                                               ; preds = %39
  %42 = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, @regulator_coupler_list
  br i1 %44, label %66, label %22

45:                                               ; preds = %32
  %46 = getelementptr inbounds %struct.regulator_coupler, ptr %23, i32 0, i32 2
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %51, label %49

49:                                               ; preds = %45
  %50 = tail call i32 %47(ptr noundef %23, ptr noundef %0) #26
  br label %51

51:                                               ; preds = %49, %45
  %52 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 14
  %53 = load ptr, ptr %52, align 8
  %54 = icmp eq ptr %53, null
  br i1 %54, label %58, label %55

55:                                               ; preds = %51
  %56 = load ptr, ptr %53, align 4
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %63

58:                                               ; preds = %55, %51
  %59 = load ptr, ptr %0, align 8
  %60 = load ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, null
  %62 = select i1 %61, ptr @.str, ptr %60
  br label %63

63:                                               ; preds = %58, %55
  %64 = phi ptr [ %56, %55 ], [ %62, %58 ]
  %65 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.103, ptr noundef %64) #27
  br label %66

66:                                               ; preds = %63, %41, %39, %37, %32, %28, %19
  %67 = phi ptr [ %38, %37 ], [ inttoptr (i32 -1 to ptr), %63 ], [ %23, %32 ], [ %23, %28 ], [ inttoptr (i32 -22 to ptr), %19 ], [ inttoptr (i32 -22 to ptr), %41 ], [ inttoptr (i32 -22 to ptr), %39 ]
  %68 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 7, i32 1
  store ptr %67, ptr %68, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @regulator_list_mutex) #26
  %69 = load ptr, ptr %68, align 4
  %70 = icmp ugt ptr %69, inttoptr (i32 -4096 to ptr)
  br i1 %70, label %71, label %87

71:                                               ; preds = %66
  %72 = ptrtoint ptr %69 to i32
  %73 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 14
  %74 = load ptr, ptr %73, align 8
  %75 = icmp eq ptr %74, null
  br i1 %75, label %79, label %76

76:                                               ; preds = %71
  %77 = load ptr, ptr %74, align 4
  %78 = icmp eq ptr %77, null
  br i1 %78, label %79, label %84

79:                                               ; preds = %76, %71
  %80 = load ptr, ptr %0, align 8
  %81 = load ptr, ptr %80, align 4
  %82 = icmp eq ptr %81, null
  %83 = select i1 %82, ptr @.str, ptr %81
  br label %84

84:                                               ; preds = %79, %76
  %85 = phi ptr [ %77, %76 ], [ %83, %79 ]
  %86 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.102, ptr noundef %85, ptr noundef nonnull %69) #27
  br label %87

87:                                               ; preds = %84, %66, %17, %10, %6, %1
  %88 = phi i32 [ %72, %84 ], [ -12, %6 ], [ 0, %10 ], [ -1, %17 ], [ 0, %66 ], [ -12, %1 ]
  ret i32 %88
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @rdev_init_debugfs(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca [255 x i8], align 1
  %3 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 13, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 14
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = load ptr, ptr %6, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %8, %1
  %12 = load ptr, ptr %0, align 8
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  %15 = select i1 %14, ptr @.str, ptr %13
  br label %16

16:                                               ; preds = %11, %8
  %17 = phi ptr [ %9, %8 ], [ %15, %11 ]
  call void @llvm.lifetime.start.p0(i64 255, ptr nonnull %2) #26
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(255) %2, i8 0, i32 255, i1 false), !annotation !9
  %18 = icmp eq ptr %4, null
  br i1 %18, label %32, label %19

19:                                               ; preds = %16
  %20 = load ptr, ptr %0, align 8
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %17, %21
  br i1 %22, label %23, label %32

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 3
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = load ptr, ptr %4, align 4
  br label %29

29:                                               ; preds = %27, %23
  %30 = phi ptr [ %28, %27 ], [ %25, %23 ]
  %31 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %2, i32 noundef 255, ptr noundef nonnull @.str.40, ptr noundef %30, ptr noundef %17)
  br label %32

32:                                               ; preds = %29, %19, %16
  %33 = phi ptr [ %2, %29 ], [ %17, %19 ], [ %17, %16 ]
  %34 = load ptr, ptr @debugfs_root, align 4
  %35 = call ptr @debugfs_create_dir(ptr noundef %33, ptr noundef %34) #26
  %36 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 20
  store ptr %35, ptr %36, align 8
  %37 = icmp eq ptr %35, null
  br i1 %37, label %38, label %52

38:                                               ; preds = %32
  %39 = load ptr, ptr %5, align 8
  %40 = icmp eq ptr %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %38
  %42 = load ptr, ptr %39, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %49

44:                                               ; preds = %41, %38
  %45 = load ptr, ptr %0, align 8
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, null
  %48 = select i1 %47, ptr @.str, ptr %46
  br label %49

49:                                               ; preds = %44, %41
  %50 = phi ptr [ %42, %41 ], [ %48, %44 ]
  %51 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.104, ptr noundef %50) #27
  br label %58

52:                                               ; preds = %32
  %53 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 2
  call void @debugfs_create_u32(ptr noundef nonnull @.str.105, i16 noundef zeroext 292, ptr noundef nonnull %35, ptr noundef %53) #26
  %54 = load ptr, ptr %36, align 8
  %55 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 3
  call void @debugfs_create_u32(ptr noundef nonnull @.str.106, i16 noundef zeroext 292, ptr noundef %54, ptr noundef %55) #26
  %56 = load ptr, ptr %36, align 8
  %57 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 4
  call void @debugfs_create_u32(ptr noundef nonnull @.str.107, i16 noundef zeroext 292, ptr noundef %56, ptr noundef %57) #26
  br label %58

58:                                               ; preds = %52, %49
  call void @llvm.lifetime.end.p0(i64 255, ptr nonnull %2) #26
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @regulator_resolve_coupling(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 7
  %3 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 7, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 7, i32 3
  %6 = load i32, ptr %5, align 4
  %7 = icmp sgt i32 %6, 1
  br i1 %7, label %8, label %60

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 7, i32 2
  br label %10

10:                                               ; preds = %57, %8
  %11 = phi i32 [ 1, %8 ], [ %58, %57 ]
  %12 = load ptr, ptr %2, align 4
  %13 = getelementptr ptr, ptr %12, i32 %11
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %57

16:                                               ; preds = %10
  %17 = add nsw i32 %11, -1
  %18 = tail call ptr @of_parse_coupled_regulator(ptr noundef %0, i32 noundef %17) #26
  %19 = icmp eq ptr %18, null
  br i1 %19, label %57, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.regulator_dev, ptr %18, i32 0, i32 7, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, %4
  br i1 %23, label %52, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 14
  %26 = load ptr, ptr %25, align 8
  %27 = icmp eq ptr %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %24
  %29 = load ptr, ptr %26, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %36

31:                                               ; preds = %28, %24
  %32 = load ptr, ptr %0, align 8
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  %35 = select i1 %34, ptr @.str, ptr %33
  br label %36

36:                                               ; preds = %31, %28
  %37 = phi ptr [ %29, %28 ], [ %35, %31 ]
  %38 = getelementptr inbounds %struct.regulator_dev, ptr %18, i32 0, i32 14
  %39 = load ptr, ptr %38, align 8
  %40 = icmp eq ptr %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %36
  %42 = load ptr, ptr %39, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %49

44:                                               ; preds = %41, %36
  %45 = load ptr, ptr %18, align 8
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, null
  %48 = select i1 %47, ptr @.str, ptr %46
  br label %49

49:                                               ; preds = %44, %41
  %50 = phi ptr [ %42, %41 ], [ %48, %44 ]
  %51 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.108, ptr noundef %37, ptr noundef %50) #27
  br label %60

52:                                               ; preds = %20
  %53 = load ptr, ptr %2, align 4
  %54 = getelementptr ptr, ptr %53, i32 %11
  store ptr %18, ptr %54, align 4
  %55 = load i32, ptr %9, align 4
  %56 = add i32 %55, 1
  store i32 %56, ptr %9, align 4
  tail call fastcc void @regulator_resolve_coupling(ptr noundef nonnull %18)
  br label %57

57:                                               ; preds = %52, %16, %10
  %58 = add nuw nsw i32 %11, 1
  %59 = icmp eq i32 %58, %6
  br i1 %59, label %60, label %10

60:                                               ; preds = %57, %49, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @class_for_each_device(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @regulator_register_resolve_supply(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 -120
  %4 = tail call fastcc i32 @regulator_resolve_supply(ptr noundef %3)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @unset_regulator_supplies(ptr noundef readnone %0) unnamed_addr #0 {
  %2 = load ptr, ptr @regulator_map_list, align 4
  %3 = icmp eq ptr %2, @regulator_map_list
  br i1 %3, label %18, label %4

4:                                                ; preds = %16, %1
  %5 = phi ptr [ %6, %16 ], [ %2, %1 ]
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.regulator_map, ptr %5, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %0
  br i1 %9, label %10, label %16

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  store ptr %12, ptr %13, align 4
  store volatile ptr %6, ptr %12, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %5, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %11, align 4
  %14 = getelementptr inbounds %struct.regulator_map, ptr %5, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  tail call void @kfree(ptr noundef %15) #26
  tail call void @kfree(ptr noundef %5) #26
  br label %16

16:                                               ; preds = %10, %4
  %17 = icmp eq ptr %6, @regulator_map_list
  br i1 %17, label %18, label %4

18:                                               ; preds = %16, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @regulator_remove_coupling(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 7
  %3 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 7, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 7, i32 3
  %6 = load i32, ptr %5, align 4
  %7 = icmp ugt i32 %6, 1
  br i1 %7, label %8, label %60

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 7, i32 2
  br label %10

10:                                               ; preds = %57, %8
  %11 = phi i32 [ 1, %8 ], [ %58, %57 ]
  %12 = load ptr, ptr %2, align 4
  %13 = getelementptr ptr, ptr %12, i32 %11
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %57, label %16

16:                                               ; preds = %10
  tail call fastcc void @regulator_lock(ptr noundef nonnull %14)
  %17 = getelementptr inbounds %struct.regulator_dev, ptr %14, i32 0, i32 7, i32 3
  %18 = load i32, ptr %17, align 4
  %19 = icmp ugt i32 %18, 1
  br i1 %19, label %20, label %36

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.regulator_dev, ptr %14, i32 0, i32 7
  %22 = load ptr, ptr %21, align 4
  br label %23

23:                                               ; preds = %33, %20
  %24 = phi i32 [ 1, %20 ], [ %34, %33 ]
  %25 = getelementptr ptr, ptr %22, i32 %24
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, %0
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = getelementptr ptr, ptr %22, i32 %24
  store ptr null, ptr %29, align 4
  %30 = getelementptr inbounds %struct.regulator_dev, ptr %14, i32 0, i32 7, i32 2
  %31 = load i32, ptr %30, align 4
  %32 = add i32 %31, -1
  store i32 %32, ptr %30, align 4
  br label %36

33:                                               ; preds = %23
  %34 = add nuw i32 %24, 1
  %35 = icmp eq i32 %34, %18
  br i1 %35, label %36, label %23

36:                                               ; preds = %33, %28, %16
  tail call void @mutex_lock(ptr noundef nonnull @regulator_nesting_mutex) #26
  %37 = getelementptr inbounds %struct.regulator_dev, ptr %14, i32 0, i32 11
  %38 = load i32, ptr %37, align 4
  %39 = add i32 %38, -1
  store i32 %39, ptr %37, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.regulator_dev, ptr %14, i32 0, i32 10
  store ptr null, ptr %42, align 8
  %43 = getelementptr inbounds %struct.regulator_dev, ptr %14, i32 0, i32 9
  tail call void @ww_mutex_unlock(ptr noundef %43) #26
  %44 = load i32, ptr %37, align 4
  br label %45

45:                                               ; preds = %41, %36
  %46 = phi i32 [ %44, %41 ], [ %39, %36 ]
  %47 = icmp slt i32 %46, 0
  %48 = load i1, ptr @regulator_unlock.__already_done, align 1
  %49 = xor i1 %48, true
  %50 = select i1 %47, i1 %49, i1 false
  br i1 %50, label %51, label %52, !prof !11

51:                                               ; preds = %45
  store i1 true, ptr @regulator_unlock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 204, i32 noundef 9, ptr noundef null) #26
  br label %52

52:                                               ; preds = %51, %45
  tail call void @mutex_unlock(ptr noundef nonnull @regulator_nesting_mutex) #26
  %53 = load ptr, ptr %2, align 4
  %54 = getelementptr ptr, ptr %53, i32 %11
  store ptr null, ptr %54, align 4
  %55 = load i32, ptr %9, align 4
  %56 = add i32 %55, -1
  store i32 %56, ptr %9, align 4
  br label %57

57:                                               ; preds = %52, %10
  %58 = add nuw i32 %11, 1
  %59 = icmp eq i32 %58, %6
  br i1 %59, label %60, label %10

60:                                               ; preds = %57, %1
  %61 = icmp eq ptr %4, null
  br i1 %61, label %85, label %62

62:                                               ; preds = %60
  %63 = getelementptr inbounds %struct.regulator_coupler, ptr %4, i32 0, i32 2
  %64 = load ptr, ptr %63, align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %85, label %66

66:                                               ; preds = %62
  %67 = tail call i32 %64(ptr noundef nonnull %4, ptr noundef %0) #26
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %85, label %69

69:                                               ; preds = %66
  %70 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 14
  %71 = load ptr, ptr %70, align 8
  %72 = icmp eq ptr %71, null
  br i1 %72, label %76, label %73

73:                                               ; preds = %69
  %74 = load ptr, ptr %71, align 4
  %75 = icmp eq ptr %74, null
  br i1 %75, label %76, label %81

76:                                               ; preds = %73, %69
  %77 = load ptr, ptr %0, align 8
  %78 = load ptr, ptr %77, align 4
  %79 = icmp eq ptr %78, null
  %80 = select i1 %79, ptr @.str, ptr %78
  br label %81

81:                                               ; preds = %76, %73
  %82 = phi ptr [ %74, %73 ], [ %80, %76 ]
  %83 = inttoptr i32 %67 to ptr
  %84 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.109, ptr noundef %82, ptr noundef nonnull %83) #27
  br label %85

85:                                               ; preds = %81, %66, %62, %60
  %86 = load ptr, ptr %2, align 4
  tail call void @kfree(ptr noundef %86) #26
  store ptr null, ptr %2, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @regulator_ena_gpio_free(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 21
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %24, label %5

5:                                                ; preds = %9, %1
  %6 = phi ptr [ %7, %9 ], [ @regulator_ena_gpio_list, %1 ]
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, @regulator_ena_gpio_list
  br i1 %8, label %23, label %9

9:                                                ; preds = %5
  %10 = icmp eq ptr %7, %3
  br i1 %10, label %11, label %5

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.regulator_enable_gpio, ptr %3, i32 0, i32 3
  %13 = load i32, ptr %12, align 4
  %14 = add i32 %13, -1
  store i32 %14, ptr %12, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.regulator_enable_gpio, ptr %3, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  tail call void @gpiod_put(ptr noundef %18) #26
  %19 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = load ptr, ptr %3, align 4
  %22 = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  store ptr %20, ptr %22, align 4
  store volatile ptr %21, ptr %20, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %3, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %19, align 4
  tail call void @kfree(ptr noundef nonnull %3) #26
  br label %23

23:                                               ; preds = %16, %11, %5
  store ptr null, ptr %2, align 4
  br label %24

24:                                               ; preds = %23, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @regulator_unregister(ptr noundef %0) #0 {
  %2 = alloca %struct.ww_acquire_ctx, align 4
  %3 = icmp eq ptr %0, null
  br i1 %3, label %82, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 15
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %26, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 2
  %10 = load i32, ptr %9, align 8
  %11 = add i32 %10, -1
  store i32 %11, ptr %9, align 8
  %12 = icmp eq i32 %10, 0
  br i1 %12, label %24, label %13

13:                                               ; preds = %13, %8
  %14 = phi ptr [ %23, %13 ], [ %6, %8 ]
  %15 = getelementptr inbounds %struct.regulator, ptr %14, i32 0, i32 9
  %16 = load ptr, ptr %15, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #26
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %2, i8 0, i32 16, i1 false) #26, !annotation !9
  call fastcc void @regulator_lock_dependent(ptr noundef %16, ptr noundef nonnull %2) #26
  %17 = call fastcc i32 @_regulator_disable(ptr noundef %14) #26
  %18 = getelementptr inbounds %struct.regulator_dev, ptr %16, i32 0, i32 7, i32 3
  %19 = load i32, ptr %18, align 4
  call fastcc void @regulator_unlock_recursive(ptr noundef %16, i32 noundef %19) #26
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #26
  %20 = load i32, ptr %9, align 8
  %21 = add i32 %20, -1
  store i32 %21, ptr %9, align 8
  %22 = icmp eq i32 %20, 0
  %23 = load ptr, ptr %5, align 4
  br i1 %22, label %24, label %13

24:                                               ; preds = %13, %8
  %25 = phi ptr [ %6, %8 ], [ %23, %13 ]
  call void @mutex_lock(ptr noundef nonnull @regulator_list_mutex) #26
  call fastcc void @_regulator_put(ptr noundef %25) #26
  call void @mutex_unlock(ptr noundef nonnull @regulator_list_mutex) #26
  br label %26

26:                                               ; preds = %24, %4
  %27 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 18
  %28 = call zeroext i1 @flush_work(ptr noundef %27) #26
  call void @mutex_lock(ptr noundef nonnull @regulator_list_mutex) #26
  %29 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 20
  %30 = load ptr, ptr %29, align 8
  call void @debugfs_remove(ptr noundef %30) #26
  %31 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 3
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %35, label %34, !prof !10

34:                                               ; preds = %26
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 5582, i32 noundef 9, ptr noundef null) #26
  br label %35

35:                                               ; preds = %34, %26
  call fastcc void @regulator_remove_coupling(ptr noundef nonnull %0)
  %36 = load ptr, ptr @regulator_map_list, align 4
  %37 = icmp eq ptr %36, @regulator_map_list
  br i1 %37, label %52, label %38

38:                                               ; preds = %50, %35
  %39 = phi ptr [ %40, %50 ], [ %36, %35 ]
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.regulator_map, ptr %39, i32 0, i32 3
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, %0
  br i1 %43, label %44, label %50

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.list_head, ptr %39, i32 0, i32 1
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr inbounds %struct.list_head, ptr %40, i32 0, i32 1
  store ptr %46, ptr %47, align 4
  store volatile ptr %40, ptr %46, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %39, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %45, align 4
  %48 = getelementptr inbounds %struct.regulator_map, ptr %39, i32 0, i32 1
  %49 = load ptr, ptr %48, align 4
  call void @kfree(ptr noundef %49) #26
  call void @kfree(ptr noundef %39) #26
  br label %50

50:                                               ; preds = %44, %38
  %51 = icmp eq ptr %40, @regulator_map_list
  br i1 %51, label %52, label %38

52:                                               ; preds = %50, %35
  %53 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 5
  %54 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 5, i32 1
  %55 = load ptr, ptr %54, align 4
  %56 = load ptr, ptr %53, align 4
  %57 = getelementptr inbounds %struct.list_head, ptr %56, i32 0, i32 1
  store ptr %55, ptr %57, align 4
  store volatile ptr %56, ptr %55, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %53, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %54, align 4
  %58 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 21
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %80, label %61

61:                                               ; preds = %65, %52
  %62 = phi ptr [ %63, %65 ], [ @regulator_ena_gpio_list, %52 ]
  %63 = load ptr, ptr %62, align 4
  %64 = icmp eq ptr %63, @regulator_ena_gpio_list
  br i1 %64, label %79, label %65

65:                                               ; preds = %61
  %66 = icmp eq ptr %63, %59
  br i1 %66, label %67, label %61

67:                                               ; preds = %65
  %68 = getelementptr inbounds %struct.regulator_enable_gpio, ptr %59, i32 0, i32 3
  %69 = load i32, ptr %68, align 4
  %70 = add i32 %69, -1
  store i32 %70, ptr %68, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %67
  %73 = getelementptr inbounds %struct.regulator_enable_gpio, ptr %59, i32 0, i32 1
  %74 = load ptr, ptr %73, align 4
  call void @gpiod_put(ptr noundef %74) #26
  %75 = getelementptr inbounds %struct.list_head, ptr %59, i32 0, i32 1
  %76 = load ptr, ptr %75, align 4
  %77 = load ptr, ptr %59, align 4
  %78 = getelementptr inbounds %struct.list_head, ptr %77, i32 0, i32 1
  store ptr %76, ptr %78, align 4
  store volatile ptr %77, ptr %76, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %59, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %75, align 4
  call void @kfree(ptr noundef nonnull %59) #26
  br label %79

79:                                               ; preds = %72, %67, %61
  store ptr null, ptr %58, align 4
  br label %80

80:                                               ; preds = %79, %52
  %81 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 13
  call void @device_unregister(ptr noundef %81) #26
  call void @mutex_unlock(ptr noundef nonnull @regulator_list_mutex) #26
  br label %82

82:                                               ; preds = %80, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @regulator_dev_release(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.regulator_dev, ptr %3, i32 0, i32 14
  %5 = load ptr, ptr %4, align 8
  tail call void @kfree(ptr noundef %5) #26
  %6 = getelementptr inbounds %struct.regulator_dev, ptr %3, i32 0, i32 13, i32 25
  %7 = load ptr, ptr %6, align 8
  tail call void @of_node_put(ptr noundef %7) #26
  tail call void @kfree(ptr noundef %3) #26
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local void @regulator_has_full_constraints() #11 {
  store i1 true, ptr @has_full_constraints, align 1
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local ptr @rdev_get_drvdata(ptr nocapture noundef readonly %0) #12 {
  %2 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 19
  %3 = load ptr, ptr %2, align 4
  ret ptr %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local ptr @regulator_get_drvdata(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.regulator, ptr %0, i32 0, i32 9
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.regulator_dev, ptr %3, i32 0, i32 19
  %5 = load ptr, ptr %4, align 4
  ret ptr %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @regulator_set_drvdata(ptr nocapture noundef readonly %0, ptr noundef %1) #7 {
  %3 = getelementptr inbounds %struct.regulator, ptr %0, i32 0, i32 9
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.regulator_dev, ptr %4, i32 0, i32 19
  store ptr %1, ptr %5, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @rdev_get_id(ptr nocapture noundef readonly %0) #3 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.regulator_desc, ptr %2, i32 0, i32 6
  %4 = load i32, ptr %3, align 4
  ret i32 %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local ptr @rdev_get_dev(ptr noundef readnone %0) #10 {
  %2 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 13
  ret ptr %2
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local ptr @rdev_get_regmap(ptr nocapture noundef readonly %0) #12 {
  %2 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 17
  %3 = load ptr, ptr %2, align 4
  ret ptr %3
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local ptr @regulator_get_init_drvdata(ptr nocapture noundef readonly %0) #12 {
  %2 = getelementptr inbounds %struct.regulator_init_data, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  ret ptr %3
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @regulator_init() #13 section ".init.text" {
  %1 = tail call i32 @__class_register(ptr noundef nonnull @regulator_class, ptr noundef nonnull @regulator_init.__key) #26
  %2 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.23, ptr noundef null) #26
  store ptr %2, ptr @debugfs_root, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %7

4:                                                ; preds = %0
  %5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.151) #27
  %6 = load ptr, ptr @debugfs_root, align 4
  br label %7

7:                                                ; preds = %4, %0
  %8 = phi ptr [ %6, %4 ], [ %2, %0 ]
  %9 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.152, i16 noundef zeroext 292, ptr noundef %8, ptr noundef null, ptr noundef nonnull @supply_map_fops) #26
  %10 = load ptr, ptr @debugfs_root, align 4
  %11 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.153, i16 noundef zeroext 292, ptr noundef %10, ptr noundef null, ptr noundef nonnull @regulator_summary_fops) #26
  tail call void @regulator_dummy_init() #27
  tail call void @mutex_lock(ptr noundef nonnull @regulator_list_mutex) #26
  %12 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @regulator_coupler_list, i32 0, i32 1), align 4
  store ptr @generic_regulator_coupler, ptr getelementptr inbounds (%struct.list_head, ptr @regulator_coupler_list, i32 0, i32 1), align 4
  store ptr @regulator_coupler_list, ptr @generic_regulator_coupler, align 4
  store ptr %12, ptr getelementptr inbounds (%struct.regulator_coupler, ptr @generic_regulator_coupler, i32 0, i32 0, i32 1), align 4
  store volatile ptr @generic_regulator_coupler, ptr %12, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @regulator_list_mutex) #26
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @regulator_init_complete() #13 section ".init.text" {
  %1 = load ptr, ptr @of_root, align 4
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  store i1 true, ptr @has_full_constraints, align 1
  br label %4

4:                                                ; preds = %3, %0
  %5 = load ptr, ptr @system_wq, align 4
  %6 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %5, ptr noundef nonnull @regulator_init_complete_work, i32 noundef 3000) #26
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #14

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #15

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_regulator_basic(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #26
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %15

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_regulator_basic, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 65535
  %13 = getelementptr i8, ptr %5, i32 %12
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.27, ptr noundef %13) #26
  %14 = tail call i32 @trace_handle_return(ptr noundef %9) #26
  br label %15

15:                                               ; preds = %8, %3
  %16 = phi i32 [ %14, %8 ], [ %6, %3 ]
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_raw_output_prep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_handle_return(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_regulator_range(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #26
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %19

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_regulator_range, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 65535
  %13 = getelementptr i8, ptr %5, i32 %12
  %14 = getelementptr inbounds %struct.trace_event_raw_regulator_range, ptr %5, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.trace_event_raw_regulator_range, ptr %5, i32 0, i32 3
  %17 = load i32, ptr %16, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.31, ptr noundef %13, i32 noundef %15, i32 noundef %17) #26
  %18 = tail call i32 @trace_handle_return(ptr noundef %9) #26
  br label %19

19:                                               ; preds = %8, %3
  %20 = phi i32 [ %18, %8 ], [ %6, %3 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @trace_raw_output_regulator_value(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @trace_raw_output_prep(ptr noundef %0, ptr noundef %2) #26
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %17

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.trace_iterator, ptr %0, i32 0, i32 15
  %10 = getelementptr inbounds %struct.trace_event_raw_regulator_value, ptr %5, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 65535
  %13 = getelementptr i8, ptr %5, i32 %12
  %14 = getelementptr inbounds %struct.trace_event_raw_regulator_value, ptr %5, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %0, ptr noundef nonnull @.str.34, ptr noundef %13, i32 noundef %15) #26
  %16 = tail call i32 @trace_handle_return(ptr noundef %9) #26
  br label %17

17:                                               ; preds = %8, %3
  %18 = phi i32 [ %16, %8 ], [ %6, %3 ]
  ret i32 %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @perf_trace_buf_alloc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_trace_run_bpf_submit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #16

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #17

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.frameaddress.p0(i32 immarg) #17

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_regulator_by_node(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #15

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #18

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @of_get_child_regulator(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.of_phandle_args, align 4
  %4 = tail call ptr @of_get_next_child(ptr noundef %0, ptr noundef null) #26
  %5 = icmp eq ptr %4, null
  br i1 %5, label %21, label %6

6:                                                ; preds = %16, %2
  %7 = phi ptr [ %17, %16 ], [ %4, %2 ]
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #26
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %3, i8 0, i32 72, i1 false) #26, !annotation !9
  %8 = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %7, ptr noundef %1, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %3) #26
  %9 = icmp ne i32 %8, 0
  %10 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #26
  %11 = icmp eq ptr %10, null
  %12 = select i1 %9, i1 true, i1 %11
  br i1 %12, label %13, label %19

13:                                               ; preds = %6
  %14 = call fastcc ptr @of_get_child_regulator(ptr noundef nonnull %7, ptr noundef %1)
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = call ptr @of_get_next_child(ptr noundef %0, ptr noundef nonnull %7) #26
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %6

19:                                               ; preds = %13, %6
  %20 = phi ptr [ %10, %6 ], [ %14, %13 ]
  call void @of_node_put(ptr noundef nonnull %7) #26
  br label %21

21:                                               ; preds = %19, %16, %2
  %22 = phi ptr [ %20, %19 ], [ null, %2 ], [ null, %16 ]
  ret ptr %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @class_find_device(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @regulator_match(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #19 {
  %3 = getelementptr i8, ptr %0, i32 -120
  %4 = getelementptr i8, ptr %0, i32 472
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %5, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %7, %2
  %11 = load ptr, ptr %3, align 8
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  %14 = select i1 %13, ptr @.str, ptr %12
  br label %15

15:                                               ; preds = %10, %7
  %16 = phi ptr [ %8, %7 ], [ %14, %10 ]
  %17 = tail call i32 @strcmp(ptr noundef %16, ptr noundef %1)
  %18 = icmp eq i32 %17, 0
  %19 = zext i1 %18 to i32
  ret i32 %19
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_is_bound(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kstrdup_const(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_link_nowarn(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_u32(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @default_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @constraint_flags_read_file(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.regulator, ptr %6, i32 0, i32 9
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.regulator_dev, ptr %8, i32 0, i32 14
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %41, label %12

12:                                               ; preds = %4
  %13 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %14 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3264, i32 noundef 4096) #28
  %15 = icmp eq ptr %14, null
  br i1 %15, label %41, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.regulation_constraints, ptr %10, i32 0, i32 28
  %18 = load i16, ptr %17, align 4
  %19 = and i16 %18, 1
  %20 = zext i16 %19 to i32
  %21 = lshr i16 %18, 1
  %22 = and i16 %21, 1
  %23 = zext i16 %22 to i32
  %24 = lshr i16 %18, 2
  %25 = and i16 %24, 1
  %26 = zext i16 %25 to i32
  %27 = lshr i16 %18, 3
  %28 = and i16 %27, 1
  %29 = zext i16 %28 to i32
  %30 = lshr i16 %18, 4
  %31 = and i16 %30, 1
  %32 = zext i16 %31 to i32
  %33 = lshr i16 %18, 5
  %34 = and i16 %33, 1
  %35 = zext i16 %34 to i32
  %36 = lshr i16 %18, 6
  %37 = and i16 %36, 1
  %38 = zext i16 %37 to i32
  %39 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %14, i32 noundef 4096, ptr noundef nonnull @.str.45, i32 noundef %20, i32 noundef %23, i32 noundef %26, i32 noundef %29, i32 noundef %32, i32 noundef %35, i32 noundef %38)
  %40 = tail call i32 @simple_read_from_buffer(ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull %14, i32 noundef %39) #26
  tail call void @kfree(ptr noundef nonnull %14) #26
  br label %41

41:                                               ; preds = %16, %12, %4
  %42 = phi i32 [ %40, %16 ], [ 0, %4 ], [ -12, %12 ]
  ret i32 %42
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_open(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_read_from_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #20

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #21

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_link_remove(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_link(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_const(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @regulator_lock_recursive(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 7, i32 3
  %6 = load i32, ptr %5, align 4
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %110

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 7
  br label %10

10:                                               ; preds = %104, %8
  %11 = phi i32 [ 0, %8 ], [ %105, %104 ]
  %12 = load ptr, ptr %9, align 4
  %13 = getelementptr ptr, ptr %12, i32 %11
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %104, label %16

16:                                               ; preds = %10
  %17 = load ptr, ptr %2, align 4
  %18 = icmp eq ptr %14, %17
  br i1 %18, label %53, label %19

19:                                               ; preds = %16
  tail call void @mutex_lock(ptr noundef nonnull @regulator_nesting_mutex) #26
  %20 = getelementptr inbounds %struct.regulator_dev, ptr %14, i32 0, i32 9
  %21 = tail call i32 @ww_mutex_trylock(ptr noundef %20, ptr noundef %3) #26
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.regulator_dev, ptr %14, i32 0, i32 11
  %25 = load i32, ptr %24, align 4
  %26 = add i32 %25, 1
  store i32 %26, ptr %24, align 4
  %27 = tail call ptr @llvm.thread.pointer() #26
  %28 = getelementptr inbounds %struct.regulator_dev, ptr %14, i32 0, i32 10
  store ptr %27, ptr %28, align 8
  tail call void @mutex_unlock(ptr noundef nonnull @regulator_nesting_mutex) #26
  br label %54

29:                                               ; preds = %19
  %30 = getelementptr inbounds %struct.regulator_dev, ptr %14, i32 0, i32 10
  %31 = load ptr, ptr %30, align 8
  %32 = tail call ptr @llvm.thread.pointer() #26
  %33 = icmp eq ptr %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.regulator_dev, ptr %14, i32 0, i32 11
  %36 = load i32, ptr %35, align 4
  %37 = add i32 %36, 1
  store i32 %37, ptr %35, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @regulator_nesting_mutex) #26
  br label %54

38:                                               ; preds = %29
  tail call void @mutex_unlock(ptr noundef nonnull @regulator_nesting_mutex) #26
  %39 = tail call i32 @ww_mutex_lock(ptr noundef %20, ptr noundef %3) #26
  tail call void @mutex_lock(ptr noundef nonnull @regulator_nesting_mutex) #26
  %40 = icmp eq i32 %39, -35
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  tail call void @mutex_unlock(ptr noundef nonnull @regulator_nesting_mutex) #26
  store ptr %14, ptr %1, align 4
  br label %108

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.regulator_dev, ptr %14, i32 0, i32 11
  %44 = load i32, ptr %43, align 4
  %45 = add i32 %44, 1
  store i32 %45, ptr %43, align 4
  store ptr %32, ptr %30, align 8
  tail call void @mutex_unlock(ptr noundef nonnull @regulator_nesting_mutex) #26
  %46 = icmp eq i32 %39, 0
  br i1 %46, label %54, label %47

47:                                               ; preds = %42
  %48 = icmp ne i32 %39, -114
  %49 = load i1, ptr @regulator_lock_recursive.__already_done, align 1
  %50 = xor i1 %49, true
  %51 = select i1 %48, i1 %50, i1 false
  br i1 %51, label %52, label %54, !prof !11

52:                                               ; preds = %47
  store i1 true, ptr @regulator_lock_recursive.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 271, i32 noundef 9, ptr noundef null) #26
  br label %54

53:                                               ; preds = %16
  store ptr null, ptr %2, align 4
  br label %54

54:                                               ; preds = %53, %52, %47, %42, %34, %23
  %55 = getelementptr inbounds %struct.regulator_dev, ptr %14, i32 0, i32 15
  %56 = load ptr, ptr %55, align 4
  %57 = icmp eq ptr %56, null
  br i1 %57, label %104, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.regulator_dev, ptr %14, i32 0, i32 7, i32 3
  %60 = load i32, ptr %59, align 4
  %61 = icmp sgt i32 %60, 1
  br i1 %61, label %65, label %62

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.regulator, ptr %56, i32 0, i32 9
  %64 = load ptr, ptr %63, align 4
  br label %83

65:                                               ; preds = %58
  %66 = getelementptr inbounds %struct.regulator_dev, ptr %14, i32 0, i32 7
  %67 = load ptr, ptr %66, align 4
  %68 = getelementptr inbounds %struct.regulator, ptr %56, i32 0, i32 9
  %69 = load ptr, ptr %68, align 4
  %70 = getelementptr ptr, ptr %67, i32 1
  %71 = load ptr, ptr %70, align 4
  %72 = icmp eq ptr %69, %71
  br i1 %72, label %104, label %73

73:                                               ; preds = %77, %65
  %74 = phi i32 [ %75, %77 ], [ 1, %65 ]
  %75 = add nuw nsw i32 %74, 1
  %76 = icmp eq i32 %75, %60
  br i1 %76, label %81, label %77

77:                                               ; preds = %73
  %78 = getelementptr ptr, ptr %67, i32 %75
  %79 = load ptr, ptr %78, align 4
  %80 = icmp eq ptr %69, %79
  br i1 %80, label %81, label %73

81:                                               ; preds = %77, %73
  %82 = icmp slt i32 %75, %60
  br i1 %82, label %104, label %83

83:                                               ; preds = %81, %62
  %84 = phi ptr [ %64, %62 ], [ %69, %81 ]
  %85 = tail call fastcc i32 @regulator_lock_recursive(ptr noundef %84, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %104, label %87

87:                                               ; preds = %83
  tail call void @mutex_lock(ptr noundef nonnull @regulator_nesting_mutex) #26
  %88 = getelementptr inbounds %struct.regulator_dev, ptr %14, i32 0, i32 11
  %89 = load i32, ptr %88, align 4
  %90 = add i32 %89, -1
  store i32 %90, ptr %88, align 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %87
  %93 = getelementptr inbounds %struct.regulator_dev, ptr %14, i32 0, i32 10
  store ptr null, ptr %93, align 8
  %94 = getelementptr inbounds %struct.regulator_dev, ptr %14, i32 0, i32 9
  tail call void @ww_mutex_unlock(ptr noundef %94) #26
  %95 = load i32, ptr %88, align 4
  br label %96

96:                                               ; preds = %92, %87
  %97 = phi i32 [ %95, %92 ], [ %90, %87 ]
  %98 = icmp slt i32 %97, 0
  %99 = load i1, ptr @regulator_unlock.__already_done, align 1
  %100 = xor i1 %99, true
  %101 = select i1 %98, i1 %100, i1 false
  br i1 %101, label %102, label %103, !prof !11

102:                                              ; preds = %96
  store i1 true, ptr @regulator_unlock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 204, i32 noundef 9, ptr noundef null) #26
  br label %103

103:                                              ; preds = %102, %96
  tail call void @mutex_unlock(ptr noundef nonnull @regulator_nesting_mutex) #26
  br label %108

104:                                              ; preds = %83, %81, %65, %54, %10
  %105 = add nuw nsw i32 %11, 1
  %106 = load i32, ptr %5, align 4
  %107 = icmp slt i32 %105, %106
  br i1 %107, label %10, label %110

108:                                              ; preds = %103, %41
  %109 = phi i32 [ -35, %41 ], [ %85, %103 ]
  tail call fastcc void @regulator_unlock_recursive(ptr noundef %0, i32 noundef %11)
  br label %110

110:                                              ; preds = %108, %104, %4
  %111 = phi i32 [ %109, %108 ], [ 0, %4 ], [ 0, %104 ]
  ret i32 %111
}

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #17

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ww_mutex_lock(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @regulator_unlock_recursive(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %65

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 7
  br label %6

6:                                                ; preds = %63, %4
  %7 = phi i32 [ %1, %4 ], [ %9, %63 ]
  %8 = load ptr, ptr %5, align 4
  %9 = add nsw i32 %7, -1
  %10 = getelementptr ptr, ptr %8, i32 %9
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %63, label %13

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.regulator_dev, ptr %11, i32 0, i32 15
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %46, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.regulator_dev, ptr %11, i32 0, i32 7, i32 3
  %19 = load i32, ptr %18, align 4
  %20 = icmp sgt i32 %19, 1
  br i1 %20, label %24, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.regulator, ptr %15, i32 0, i32 9
  %23 = load ptr, ptr %22, align 4
  br label %42

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.regulator_dev, ptr %11, i32 0, i32 7
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.regulator, ptr %15, i32 0, i32 9
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr ptr, ptr %26, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %28, %30
  br i1 %31, label %46, label %32

32:                                               ; preds = %36, %24
  %33 = phi i32 [ %34, %36 ], [ 1, %24 ]
  %34 = add nuw nsw i32 %33, 1
  %35 = icmp eq i32 %34, %19
  br i1 %35, label %40, label %36

36:                                               ; preds = %32
  %37 = getelementptr ptr, ptr %26, i32 %34
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %28, %38
  br i1 %39, label %40, label %32

40:                                               ; preds = %36, %32
  %41 = icmp slt i32 %34, %19
  br i1 %41, label %46, label %42

42:                                               ; preds = %40, %21
  %43 = phi ptr [ %23, %21 ], [ %28, %40 ]
  %44 = getelementptr inbounds %struct.regulator_dev, ptr %43, i32 0, i32 7, i32 3
  %45 = load i32, ptr %44, align 4
  tail call fastcc void @regulator_unlock_recursive(ptr noundef %43, i32 noundef %45)
  br label %46

46:                                               ; preds = %42, %40, %24, %13
  tail call void @mutex_lock(ptr noundef nonnull @regulator_nesting_mutex) #26
  %47 = getelementptr inbounds %struct.regulator_dev, ptr %11, i32 0, i32 11
  %48 = load i32, ptr %47, align 4
  %49 = add i32 %48, -1
  store i32 %49, ptr %47, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.regulator_dev, ptr %11, i32 0, i32 10
  store ptr null, ptr %52, align 8
  %53 = getelementptr inbounds %struct.regulator_dev, ptr %11, i32 0, i32 9
  tail call void @ww_mutex_unlock(ptr noundef %53) #26
  %54 = load i32, ptr %47, align 4
  br label %55

55:                                               ; preds = %51, %46
  %56 = phi i32 [ %54, %51 ], [ %49, %46 ]
  %57 = icmp slt i32 %56, 0
  %58 = load i1, ptr @regulator_unlock.__already_done, align 1
  %59 = xor i1 %58, true
  %60 = select i1 %57, i1 %59, i1 false
  br i1 %60, label %61, label %62, !prof !11

61:                                               ; preds = %55
  store i1 true, ptr @regulator_unlock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 204, i32 noundef 9, ptr noundef null) #26
  br label %62

62:                                               ; preds = %61, %55
  tail call void @mutex_unlock(ptr noundef nonnull @regulator_nesting_mutex) #26
  br label %63

63:                                               ; preds = %62, %6
  %64 = icmp sgt i32 %7, 1
  br i1 %64, label %6, label %65

65:                                               ; preds = %63, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ww_mutex_trylock(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @_regulator_do_enable(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 14
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.regulation_constraints, ptr %3, i32 0, i32 26
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %21

9:                                                ; preds = %5, %1
  %10 = load ptr, ptr %0, align 8
  %11 = getelementptr inbounds %struct.regulator_desc, ptr %10, i32 0, i32 10
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.regulator_ops, ptr %12, i32 0, i32 20
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %9
  %17 = tail call i32 %14(ptr noundef %0) #26
  br label %21

18:                                               ; preds = %9
  %19 = getelementptr inbounds %struct.regulator_desc, ptr %10, i32 0, i32 57
  %20 = load i32, ptr %19, align 4
  br label %21

21:                                               ; preds = %18, %16, %5
  %22 = phi i32 [ %17, %16 ], [ %20, %18 ], [ %7, %5 ]
  %23 = icmp sgt i32 %22, -1
  br i1 %23, label %39, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr %2, align 8
  %26 = icmp eq ptr %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %24
  %28 = load ptr, ptr %25, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %35

30:                                               ; preds = %27, %24
  %31 = load ptr, ptr %0, align 8
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  %34 = select i1 %33, ptr @.str, ptr %32
  br label %35

35:                                               ; preds = %30, %27
  %36 = phi ptr [ %28, %27 ], [ %34, %30 ]
  %37 = inttoptr i32 %22 to ptr
  %38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef %36, ptr noundef nonnull %37) #27
  br label %39

39:                                               ; preds = %35, %21
  %40 = phi i32 [ 0, %35 ], [ %22, %21 ]
  %41 = load ptr, ptr %2, align 8
  %42 = icmp eq ptr %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %39
  %44 = load ptr, ptr %41, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %51

46:                                               ; preds = %43, %39
  %47 = load ptr, ptr %0, align 8
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, null
  %50 = select i1 %49, ptr @.str, ptr %48
  br label %51

51:                                               ; preds = %46, %43
  %52 = phi ptr [ %44, %43 ], [ %50, %46 ]
  %53 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_regulator_enable, i32 0, i32 1), align 4
  %54 = icmp sgt i32 %53, 0
  br i1 %54, label %55, label %78

55:                                               ; preds = %51
  %56 = tail call ptr @llvm.thread.pointer() #26
  %57 = getelementptr inbounds %struct.thread_info, ptr %56, i32 0, i32 2
  %58 = load i32, ptr %57, align 8
  %59 = lshr i32 %58, 5
  %60 = getelementptr i32, ptr @__cpu_online_mask, i32 %59
  %61 = load volatile i32, ptr %60, align 4
  %62 = and i32 %58, 31
  %63 = shl nuw i32 1, %62
  %64 = and i32 %63, %61
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %78, label %66

66:                                               ; preds = %55
  tail call void asm sideeffect "", "~{memory}"() #26, !srcloc !37
  %67 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_regulator_enable, i32 0, i32 7), align 4
  %68 = icmp eq ptr %67, null
  br i1 %68, label %77, label %69

69:                                               ; preds = %69, %66
  %70 = phi ptr [ %74, %69 ], [ %67, %66 ]
  %71 = load volatile ptr, ptr %70, align 4
  %72 = getelementptr inbounds %struct.tracepoint_func, ptr %70, i32 0, i32 1
  %73 = load ptr, ptr %72, align 4
  tail call void %71(ptr noundef %73, ptr noundef %52) #26
  %74 = getelementptr %struct.tracepoint_func, ptr %70, i32 1
  %75 = load ptr, ptr %74, align 4
  %76 = icmp eq ptr %75, null
  br i1 %76, label %77, label %69

77:                                               ; preds = %69, %66
  tail call void asm sideeffect "", "~{memory}"() #26, !srcloc !38
  br label %78

78:                                               ; preds = %77, %55, %51
  %79 = load ptr, ptr %0, align 8
  %80 = getelementptr inbounds %struct.regulator_desc, ptr %79, i32 0, i32 58
  %81 = load i32, ptr %80, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %124, label %83

83:                                               ; preds = %78
  %84 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 23
  %85 = load i64, ptr %84, align 8
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %124, label %87

87:                                               ; preds = %83
  %88 = zext i32 %81 to i64
  %89 = mul nuw nsw i64 %88, 1000
  %90 = add i64 %85, %89
  %91 = tail call i64 @ktime_get() #26
  %92 = sub i64 %90, %91
  %93 = tail call i64 @llvm.abs.i64(i64 %92, i1 false) #26
  %94 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %93, i32 0) #30, !srcloc !39
  %95 = extractvalue { i64, i32 } %94, 0
  %96 = extractvalue { i64, i32 } %94, 1
  %97 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %93, i64 %95, i32 %96) #30, !srcloc !40
  %98 = extractvalue { i64, i32 } %97, 0
  %99 = icmp slt i64 %92, 0
  %100 = lshr i64 %98, 9
  %101 = sub nsw i64 0, %100
  %102 = select i1 %99, i64 %101, i64 %100
  %103 = icmp sgt i64 %102, 0
  br i1 %103, label %104, label %124

104:                                              ; preds = %87
  %105 = trunc i64 %102 to i32
  %106 = freeze i32 %105
  %107 = udiv i32 %106, 1000
  %108 = mul i32 %107, 1000
  %109 = sub i32 %106, %108
  %110 = icmp ult i32 %105, 1000
  br i1 %110, label %117, label %111

111:                                              ; preds = %104
  %112 = icmp ult i32 %105, 20000
  br i1 %112, label %113, label %116

113:                                              ; preds = %111
  %114 = mul nuw i32 %107, 1000
  %115 = add i32 %114, %109
  br label %117

116:                                              ; preds = %111
  tail call void @msleep(i32 noundef %107) #26
  br label %117

117:                                              ; preds = %116, %113, %104
  %118 = phi i32 [ %115, %113 ], [ %109, %116 ], [ %109, %104 ]
  %119 = icmp ugt i32 %118, 9
  br i1 %119, label %120, label %122

120:                                              ; preds = %117
  %121 = add i32 %118, 100
  tail call void @usleep_range_state(i32 noundef %118, i32 noundef %121, i32 noundef 2) #26
  br label %124

122:                                              ; preds = %117
  %123 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %123(i32 noundef %118) #26
  br label %124

124:                                              ; preds = %122, %120, %87, %83, %78
  %125 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 21
  %126 = load ptr, ptr %125, align 4
  %127 = icmp eq ptr %126, null
  br i1 %127, label %146, label %128

128:                                              ; preds = %124
  %129 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 22
  %130 = load i8, ptr %129, align 8
  %131 = and i8 %130, 1
  %132 = icmp eq i8 %131, 0
  br i1 %132, label %133, label %156

133:                                              ; preds = %128
  %134 = getelementptr inbounds %struct.regulator_enable_gpio, ptr %126, i32 0, i32 2
  %135 = load i32, ptr %134, align 4
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %133
  %138 = getelementptr inbounds %struct.regulator_enable_gpio, ptr %126, i32 0, i32 1
  %139 = load ptr, ptr %138, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %139, i32 noundef 1) #26
  %140 = load i32, ptr %134, align 4
  br label %141

141:                                              ; preds = %137, %133
  %142 = phi i32 [ %140, %137 ], [ %135, %133 ]
  %143 = add i32 %142, 1
  store i32 %143, ptr %134, align 4
  %144 = load i8, ptr %129, align 8
  %145 = or i8 %144, 1
  store i8 %145, ptr %129, align 8
  br label %156

146:                                              ; preds = %124
  %147 = load ptr, ptr %0, align 8
  %148 = getelementptr inbounds %struct.regulator_desc, ptr %147, i32 0, i32 10
  %149 = load ptr, ptr %148, align 4
  %150 = getelementptr inbounds %struct.regulator_ops, ptr %149, i32 0, i32 14
  %151 = load ptr, ptr %150, align 4
  %152 = icmp eq ptr %151, null
  br i1 %152, label %329, label %153

153:                                              ; preds = %146
  %154 = tail call i32 %151(ptr noundef %0) #26
  %155 = icmp slt i32 %154, 0
  br i1 %155, label %329, label %156

156:                                              ; preds = %153, %141, %128
  %157 = load ptr, ptr %2, align 8
  %158 = icmp eq ptr %157, null
  br i1 %158, label %162, label %159

159:                                              ; preds = %156
  %160 = load ptr, ptr %157, align 4
  %161 = icmp eq ptr %160, null
  br i1 %161, label %162, label %167

162:                                              ; preds = %159, %156
  %163 = load ptr, ptr %0, align 8
  %164 = load ptr, ptr %163, align 4
  %165 = icmp eq ptr %164, null
  %166 = select i1 %165, ptr @.str, ptr %164
  br label %167

167:                                              ; preds = %162, %159
  %168 = phi ptr [ %160, %159 ], [ %166, %162 ]
  %169 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_regulator_enable_delay, i32 0, i32 1), align 4
  %170 = icmp sgt i32 %169, 0
  br i1 %170, label %171, label %194

171:                                              ; preds = %167
  %172 = tail call ptr @llvm.thread.pointer() #26
  %173 = getelementptr inbounds %struct.thread_info, ptr %172, i32 0, i32 2
  %174 = load i32, ptr %173, align 8
  %175 = lshr i32 %174, 5
  %176 = getelementptr i32, ptr @__cpu_online_mask, i32 %175
  %177 = load volatile i32, ptr %176, align 4
  %178 = and i32 %174, 31
  %179 = shl nuw i32 1, %178
  %180 = and i32 %179, %177
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %194, label %182

182:                                              ; preds = %171
  tail call void asm sideeffect "", "~{memory}"() #26, !srcloc !41
  %183 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_regulator_enable_delay, i32 0, i32 7), align 4
  %184 = icmp eq ptr %183, null
  br i1 %184, label %193, label %185

185:                                              ; preds = %185, %182
  %186 = phi ptr [ %190, %185 ], [ %183, %182 ]
  %187 = load volatile ptr, ptr %186, align 4
  %188 = getelementptr inbounds %struct.tracepoint_func, ptr %186, i32 0, i32 1
  %189 = load ptr, ptr %188, align 4
  tail call void %187(ptr noundef %189, ptr noundef %168) #26
  %190 = getelementptr %struct.tracepoint_func, ptr %186, i32 1
  %191 = load ptr, ptr %190, align 4
  %192 = icmp eq ptr %191, null
  br i1 %192, label %193, label %185

193:                                              ; preds = %185, %182
  tail call void asm sideeffect "", "~{memory}"() #26, !srcloc !42
  br label %194

194:                                              ; preds = %193, %171, %167
  %195 = load ptr, ptr %0, align 8
  %196 = getelementptr inbounds %struct.regulator_desc, ptr %195, i32 0, i32 59
  %197 = load i32, ptr %196, align 4
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %272, label %199

199:                                              ; preds = %194
  %200 = icmp eq i32 %40, 0
  br i1 %200, label %258, label %201

201:                                              ; preds = %252, %199
  %202 = phi i32 [ %255, %252 ], [ %197, %199 ]
  %203 = phi i32 [ %256, %252 ], [ %40, %199 ]
  %204 = freeze i32 %202
  %205 = udiv i32 %204, 1000
  %206 = mul i32 %205, 1000
  %207 = sub i32 %204, %206
  %208 = icmp ult i32 %202, 1000
  br i1 %208, label %215, label %209

209:                                              ; preds = %201
  %210 = icmp ult i32 %202, 20000
  br i1 %210, label %211, label %214

211:                                              ; preds = %209
  %212 = mul nuw i32 %205, 1000
  %213 = add i32 %212, %207
  br label %215

214:                                              ; preds = %209
  tail call void @msleep(i32 noundef %205) #26
  br label %215

215:                                              ; preds = %214, %211, %201
  %216 = phi i32 [ %213, %211 ], [ %207, %214 ], [ %207, %201 ]
  %217 = icmp ugt i32 %216, 9
  br i1 %217, label %218, label %220

218:                                              ; preds = %215
  %219 = add i32 %216, 100
  tail call void @usleep_range_state(i32 noundef %216, i32 noundef %219, i32 noundef 2) #26
  br label %222

220:                                              ; preds = %215
  %221 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %221(i32 noundef %216) #26
  br label %222

222:                                              ; preds = %220, %218
  %223 = load ptr, ptr %0, align 8
  %224 = getelementptr inbounds %struct.regulator_desc, ptr %223, i32 0, i32 10
  %225 = load ptr, ptr %224, align 4
  %226 = getelementptr inbounds %struct.regulator_ops, ptr %225, i32 0, i32 25
  %227 = load ptr, ptr %226, align 4
  %228 = icmp eq ptr %227, null
  br i1 %228, label %247, label %229

229:                                              ; preds = %222
  %230 = tail call i32 %227(ptr noundef %0) #26
  %231 = icmp slt i32 %230, 0
  br i1 %231, label %232, label %243

232:                                              ; preds = %229
  %233 = load ptr, ptr %2, align 8
  %234 = icmp eq ptr %233, null
  br i1 %234, label %238, label %235

235:                                              ; preds = %232
  %236 = load ptr, ptr %233, align 4
  %237 = icmp eq ptr %236, null
  br i1 %237, label %238, label %244

238:                                              ; preds = %235, %232
  %239 = load ptr, ptr %0, align 8
  %240 = load ptr, ptr %239, align 4
  %241 = icmp eq ptr %240, null
  %242 = select i1 %241, ptr @.str, ptr %240
  br label %244

243:                                              ; preds = %229
  switch i32 %230, label %291 [
    i32 0, label %252
    i32 2, label %252
    i32 8, label %252
  ]

244:                                              ; preds = %238, %235
  %245 = phi ptr [ %236, %235 ], [ %242, %238 ]
  %246 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, ptr noundef %245, i32 noundef %230) #27
  br label %329

247:                                              ; preds = %222
  %248 = getelementptr inbounds %struct.regulator_ops, ptr %225, i32 0, i32 16
  %249 = load ptr, ptr %248, align 4
  %250 = tail call i32 %249(ptr noundef %0) #26
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %252, label %291

252:                                              ; preds = %247, %243, %243, %243
  %253 = load ptr, ptr %0, align 8
  %254 = getelementptr inbounds %struct.regulator_desc, ptr %253, i32 0, i32 59
  %255 = load i32, ptr %254, align 4
  %256 = sub i32 %203, %255
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %258, label %201

258:                                              ; preds = %252, %199
  %259 = phi ptr [ %195, %199 ], [ %253, %252 ]
  %260 = load ptr, ptr %2, align 8
  %261 = icmp eq ptr %260, null
  br i1 %261, label %265, label %262

262:                                              ; preds = %258
  %263 = load ptr, ptr %260, align 4
  %264 = icmp eq ptr %263, null
  br i1 %264, label %265, label %269

265:                                              ; preds = %262, %258
  %266 = load ptr, ptr %259, align 4
  %267 = icmp eq ptr %266, null
  %268 = select i1 %267, ptr @.str, ptr %266
  br label %269

269:                                              ; preds = %265, %262
  %270 = phi ptr [ %263, %262 ], [ %268, %265 ]
  %271 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef %270) #27
  br label %329

272:                                              ; preds = %194
  %273 = freeze i32 %40
  %274 = udiv i32 %273, 1000
  %275 = mul i32 %274, 1000
  %276 = sub i32 %273, %275
  %277 = icmp ult i32 %40, 1000
  br i1 %277, label %284, label %278

278:                                              ; preds = %272
  %279 = icmp ult i32 %40, 20000
  br i1 %279, label %280, label %283

280:                                              ; preds = %278
  %281 = mul nuw i32 %274, 1000
  %282 = add i32 %281, %276
  br label %284

283:                                              ; preds = %278
  tail call void @msleep(i32 noundef %274) #26
  br label %284

284:                                              ; preds = %283, %280, %272
  %285 = phi i32 [ %282, %280 ], [ %276, %283 ], [ %276, %272 ]
  %286 = icmp ugt i32 %285, 9
  br i1 %286, label %287, label %289

287:                                              ; preds = %284
  %288 = add i32 %285, 100
  tail call void @usleep_range_state(i32 noundef %285, i32 noundef %288, i32 noundef 2) #26
  br label %291

289:                                              ; preds = %284
  %290 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %290(i32 noundef %285) #26
  br label %291

291:                                              ; preds = %289, %287, %247, %243
  %292 = load ptr, ptr %2, align 8
  %293 = icmp eq ptr %292, null
  br i1 %293, label %297, label %294

294:                                              ; preds = %291
  %295 = load ptr, ptr %292, align 4
  %296 = icmp eq ptr %295, null
  br i1 %296, label %297, label %302

297:                                              ; preds = %294, %291
  %298 = load ptr, ptr %0, align 8
  %299 = load ptr, ptr %298, align 4
  %300 = icmp eq ptr %299, null
  %301 = select i1 %300, ptr @.str, ptr %299
  br label %302

302:                                              ; preds = %297, %294
  %303 = phi ptr [ %295, %294 ], [ %301, %297 ]
  %304 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_regulator_enable_complete, i32 0, i32 1), align 4
  %305 = icmp sgt i32 %304, 0
  br i1 %305, label %306, label %329

306:                                              ; preds = %302
  %307 = tail call ptr @llvm.thread.pointer() #26
  %308 = getelementptr inbounds %struct.thread_info, ptr %307, i32 0, i32 2
  %309 = load i32, ptr %308, align 8
  %310 = lshr i32 %309, 5
  %311 = getelementptr i32, ptr @__cpu_online_mask, i32 %310
  %312 = load volatile i32, ptr %311, align 4
  %313 = and i32 %309, 31
  %314 = shl nuw i32 1, %313
  %315 = and i32 %314, %312
  %316 = icmp eq i32 %315, 0
  br i1 %316, label %329, label %317

317:                                              ; preds = %306
  tail call void asm sideeffect "", "~{memory}"() #26, !srcloc !43
  %318 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_regulator_enable_complete, i32 0, i32 7), align 4
  %319 = icmp eq ptr %318, null
  br i1 %319, label %328, label %320

320:                                              ; preds = %320, %317
  %321 = phi ptr [ %325, %320 ], [ %318, %317 ]
  %322 = load volatile ptr, ptr %321, align 4
  %323 = getelementptr inbounds %struct.tracepoint_func, ptr %321, i32 0, i32 1
  %324 = load ptr, ptr %323, align 4
  tail call void %322(ptr noundef %324, ptr noundef %303) #26
  %325 = getelementptr %struct.tracepoint_func, ptr %321, i32 1
  %326 = load ptr, ptr %325, align 4
  %327 = icmp eq ptr %326, null
  br i1 %327, label %328, label %320

328:                                              ; preds = %320, %317
  tail call void asm sideeffect "", "~{memory}"() #26, !srcloc !44
  br label %329

329:                                              ; preds = %328, %306, %302, %269, %244, %153, %146
  %330 = phi i32 [ %154, %153 ], [ -22, %146 ], [ -110, %269 ], [ %230, %244 ], [ 0, %302 ], [ 0, %306 ], [ 0, %328 ]
  ret i32 %330
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @_regulator_do_disable(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 14
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %13

8:                                                ; preds = %5, %1
  %9 = load ptr, ptr %0, align 8
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  %12 = select i1 %11, ptr @.str, ptr %10
  br label %13

13:                                               ; preds = %8, %5
  %14 = phi ptr [ %6, %5 ], [ %12, %8 ]
  %15 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_regulator_disable, i32 0, i32 1), align 4
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %40

17:                                               ; preds = %13
  %18 = tail call ptr @llvm.thread.pointer() #26
  %19 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 2
  %20 = load i32, ptr %19, align 8
  %21 = lshr i32 %20, 5
  %22 = getelementptr i32, ptr @__cpu_online_mask, i32 %21
  %23 = load volatile i32, ptr %22, align 4
  %24 = and i32 %20, 31
  %25 = shl nuw i32 1, %24
  %26 = and i32 %25, %23
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %40, label %28

28:                                               ; preds = %17
  tail call void asm sideeffect "", "~{memory}"() #26, !srcloc !45
  %29 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_regulator_disable, i32 0, i32 7), align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %39, label %31

31:                                               ; preds = %31, %28
  %32 = phi ptr [ %36, %31 ], [ %29, %28 ]
  %33 = load volatile ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.tracepoint_func, ptr %32, i32 0, i32 1
  %35 = load ptr, ptr %34, align 4
  tail call void %33(ptr noundef %35, ptr noundef %14) #26
  %36 = getelementptr %struct.tracepoint_func, ptr %32, i32 1
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %31

39:                                               ; preds = %31, %28
  tail call void asm sideeffect "", "~{memory}"() #26, !srcloc !46
  br label %40

40:                                               ; preds = %39, %17, %13
  %41 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 21
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %62, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 22
  %46 = load i8, ptr %45, align 8
  %47 = and i8 %46, 1
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %72, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.regulator_enable_gpio, ptr %42, i32 0, i32 2
  %51 = load i32, ptr %50, align 4
  %52 = icmp ugt i32 %51, 1
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = add i32 %51, -1
  br label %58

55:                                               ; preds = %49
  %56 = getelementptr inbounds %struct.regulator_enable_gpio, ptr %42, i32 0, i32 1
  %57 = load ptr, ptr %56, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %57, i32 noundef 0) #26
  br label %58

58:                                               ; preds = %55, %53
  %59 = phi i32 [ 0, %55 ], [ %54, %53 ]
  store i32 %59, ptr %50, align 4
  %60 = load i8, ptr %45, align 8
  %61 = and i8 %60, -2
  store i8 %61, ptr %45, align 8
  br label %72

62:                                               ; preds = %40
  %63 = load ptr, ptr %0, align 8
  %64 = getelementptr inbounds %struct.regulator_desc, ptr %63, i32 0, i32 10
  %65 = load ptr, ptr %64, align 4
  %66 = getelementptr inbounds %struct.regulator_ops, ptr %65, i32 0, i32 15
  %67 = load ptr, ptr %66, align 4
  %68 = icmp eq ptr %67, null
  br i1 %68, label %72, label %69

69:                                               ; preds = %62
  %70 = tail call i32 %67(ptr noundef %0) #26
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %118

72:                                               ; preds = %69, %62, %58, %44
  %73 = load ptr, ptr %0, align 8
  %74 = getelementptr inbounds %struct.regulator_desc, ptr %73, i32 0, i32 58
  %75 = load i32, ptr %74, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %72
  %78 = tail call i64 @ktime_get() #26
  %79 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 23
  store i64 %78, ptr %79, align 8
  br label %80

80:                                               ; preds = %77, %72
  %81 = load ptr, ptr %2, align 8
  %82 = icmp eq ptr %81, null
  br i1 %82, label %86, label %83

83:                                               ; preds = %80
  %84 = load ptr, ptr %81, align 4
  %85 = icmp eq ptr %84, null
  br i1 %85, label %86, label %91

86:                                               ; preds = %83, %80
  %87 = load ptr, ptr %0, align 8
  %88 = load ptr, ptr %87, align 4
  %89 = icmp eq ptr %88, null
  %90 = select i1 %89, ptr @.str, ptr %88
  br label %91

91:                                               ; preds = %86, %83
  %92 = phi ptr [ %84, %83 ], [ %90, %86 ]
  %93 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_regulator_disable_complete, i32 0, i32 1), align 4
  %94 = icmp sgt i32 %93, 0
  br i1 %94, label %95, label %118

95:                                               ; preds = %91
  %96 = tail call ptr @llvm.thread.pointer() #26
  %97 = getelementptr inbounds %struct.thread_info, ptr %96, i32 0, i32 2
  %98 = load i32, ptr %97, align 8
  %99 = lshr i32 %98, 5
  %100 = getelementptr i32, ptr @__cpu_online_mask, i32 %99
  %101 = load volatile i32, ptr %100, align 4
  %102 = and i32 %98, 31
  %103 = shl nuw i32 1, %102
  %104 = and i32 %103, %101
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %118, label %106

106:                                              ; preds = %95
  tail call void asm sideeffect "", "~{memory}"() #26, !srcloc !47
  %107 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_regulator_disable_complete, i32 0, i32 7), align 4
  %108 = icmp eq ptr %107, null
  br i1 %108, label %117, label %109

109:                                              ; preds = %109, %106
  %110 = phi ptr [ %114, %109 ], [ %107, %106 ]
  %111 = load volatile ptr, ptr %110, align 4
  %112 = getelementptr inbounds %struct.tracepoint_func, ptr %110, i32 0, i32 1
  %113 = load ptr, ptr %112, align 4
  tail call void %111(ptr noundef %113, ptr noundef %92) #26
  %114 = getelementptr %struct.tracepoint_func, ptr %110, i32 1
  %115 = load ptr, ptr %114, align 4
  %116 = icmp eq ptr %115, null
  br i1 %116, label %117, label %109

117:                                              ; preds = %109, %106
  tail call void asm sideeffect "", "~{memory}"() #26, !srcloc !48
  br label %118

118:                                              ; preds = %117, %95, %91, %69
  %119 = phi i32 [ %70, %69 ], [ 0, %91 ], [ 0, %95 ], [ 0, %117 ]
  ret i32 %119
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mod_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ww_mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_list_voltage_linear(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_map_voltage_linear(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_list_voltage_linear_range(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_map_voltage_linear_range(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_list_voltage_pickable_linear_range(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_map_voltage_pickable_linear_range(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_map_voltage_iterate(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @_regulator_call_set_voltage_sel(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.pre_voltage_change_data, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #26
  %5 = tail call i32 @regulator_get_voltage_rdev(ptr noundef %0)
  store i32 %5, ptr %4, align 4
  %6 = getelementptr inbounds %struct.pre_voltage_change_data, ptr %4, i32 0, i32 1
  store i32 %1, ptr %6, align 4
  %7 = getelementptr inbounds %struct.pre_voltage_change_data, ptr %4, i32 0, i32 2
  store i32 %1, ptr %7, align 4
  %8 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 8
  %9 = call i32 @blocking_notifier_call_chain(ptr noundef %8, i32 noundef 256, ptr noundef nonnull %4) #26
  %10 = and i32 %9, 32768
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %24

12:                                               ; preds = %3
  %13 = load ptr, ptr %0, align 8
  %14 = getelementptr inbounds %struct.regulator_desc, ptr %13, i32 0, i32 10
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.regulator_ops, ptr %15, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  %18 = call i32 %17(ptr noundef %0, i32 noundef %2) #26
  %19 = icmp sgt i32 %18, -1
  br i1 %19, label %24, label %20

20:                                               ; preds = %12
  %21 = load i32, ptr %4, align 4
  %22 = inttoptr i32 %21 to ptr
  %23 = call i32 @blocking_notifier_call_chain(ptr noundef %8, i32 noundef 512, ptr noundef %22) #26
  br label %24

24:                                               ; preds = %20, %12, %3
  %25 = phi i32 [ %18, %20 ], [ -22, %3 ], [ %18, %12 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #26
  ret i32 %25
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @async_schedule_node_domain(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_call_chain(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__suspend_set_state(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.regulator_state, ptr %1, i32 0, i32 4
  %4 = load i32, ptr %3, align 4
  switch i32 %4, label %39 [
    i32 2, label %5
    i32 1, label %12
  ]

5:                                                ; preds = %2
  %6 = load ptr, ptr %0, align 8
  %7 = getelementptr inbounds %struct.regulator_desc, ptr %6, i32 0, i32 10
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.regulator_ops, ptr %8, i32 0, i32 31
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %39, label %19

12:                                               ; preds = %2
  %13 = load ptr, ptr %0, align 8
  %14 = getelementptr inbounds %struct.regulator_desc, ptr %13, i32 0, i32 10
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.regulator_ops, ptr %15, i32 0, i32 32
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %39, label %19

19:                                               ; preds = %12, %5
  %20 = phi ptr [ %10, %5 ], [ %17, %12 ]
  %21 = tail call i32 %20(ptr noundef %0) #26
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %39

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 14
  %25 = load ptr, ptr %24, align 8
  %26 = icmp eq ptr %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %23
  %28 = load ptr, ptr %25, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %35

30:                                               ; preds = %27, %23
  %31 = load ptr, ptr %0, align 8
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  %34 = select i1 %33, ptr @.str, ptr %32
  br label %35

35:                                               ; preds = %30, %27
  %36 = phi ptr [ %28, %27 ], [ %34, %30 ]
  %37 = inttoptr i32 %21 to ptr
  %38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.98, ptr noundef %36, ptr noundef nonnull %37) #27
  br label %102

39:                                               ; preds = %19, %12, %5, %2
  %40 = phi i32 [ %21, %19 ], [ 0, %12 ], [ 0, %5 ], [ 0, %2 ]
  %41 = load ptr, ptr %0, align 8
  %42 = getelementptr inbounds %struct.regulator_desc, ptr %41, i32 0, i32 10
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.regulator_ops, ptr %43, i32 0, i32 30
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %73, label %47

47:                                               ; preds = %39
  %48 = load i32, ptr %1, align 4
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %73

50:                                               ; preds = %47
  %51 = tail call i32 %45(ptr noundef %0, i32 noundef %48) #26
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %50
  %54 = load ptr, ptr %0, align 8
  %55 = getelementptr inbounds %struct.regulator_desc, ptr %54, i32 0, i32 10
  %56 = load ptr, ptr %55, align 4
  br label %73

57:                                               ; preds = %50
  %58 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 14
  %59 = load ptr, ptr %58, align 8
  %60 = icmp eq ptr %59, null
  br i1 %60, label %64, label %61

61:                                               ; preds = %57
  %62 = load ptr, ptr %59, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %69

64:                                               ; preds = %61, %57
  %65 = load ptr, ptr %0, align 8
  %66 = load ptr, ptr %65, align 4
  %67 = icmp eq ptr %66, null
  %68 = select i1 %67, ptr @.str, ptr %66
  br label %69

69:                                               ; preds = %64, %61
  %70 = phi ptr [ %62, %61 ], [ %68, %64 ]
  %71 = inttoptr i32 %51 to ptr
  %72 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.99, ptr noundef %70, ptr noundef nonnull %71) #27
  br label %102

73:                                               ; preds = %53, %47, %39
  %74 = phi ptr [ %56, %53 ], [ %43, %47 ], [ %43, %39 ]
  %75 = phi i32 [ %51, %53 ], [ %40, %47 ], [ %40, %39 ]
  %76 = getelementptr inbounds %struct.regulator_ops, ptr %74, i32 0, i32 33
  %77 = load ptr, ptr %76, align 4
  %78 = icmp eq ptr %77, null
  br i1 %78, label %102, label %79

79:                                               ; preds = %73
  %80 = getelementptr inbounds %struct.regulator_state, ptr %1, i32 0, i32 3
  %81 = load i32, ptr %80, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %102, label %83

83:                                               ; preds = %79
  %84 = tail call i32 %77(ptr noundef %0, i32 noundef %81) #26
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %102

86:                                               ; preds = %83
  %87 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 14
  %88 = load ptr, ptr %87, align 8
  %89 = icmp eq ptr %88, null
  br i1 %89, label %93, label %90

90:                                               ; preds = %86
  %91 = load ptr, ptr %88, align 4
  %92 = icmp eq ptr %91, null
  br i1 %92, label %93, label %98

93:                                               ; preds = %90, %86
  %94 = load ptr, ptr %0, align 8
  %95 = load ptr, ptr %94, align 4
  %96 = icmp eq ptr %95, null
  %97 = select i1 %96, ptr @.str, ptr %95
  br label %98

98:                                               ; preds = %93, %90
  %99 = phi ptr [ %91, %90 ], [ %97, %93 ]
  %100 = inttoptr i32 %84 to ptr
  %101 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.100, ptr noundef %99, ptr noundef nonnull %100) #27
  br label %102

102:                                              ; preds = %98, %83, %79, %73, %69, %35
  %103 = phi i32 [ %21, %35 ], [ %51, %69 ], [ %84, %98 ], [ %84, %83 ], [ %75, %79 ], [ %75, %73 ]
  ret i32 %103
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_n_coupled(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_check_coupling_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #22

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_parse_coupled_regulator(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i16 @regulator_attr_is_visible(ptr noundef %0, ptr noundef readonly %1, i32 noundef %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -120
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.regulator_desc, ptr %5, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.attribute, ptr %1, i32 0, i32 1
  %9 = load i16, ptr %8, align 4
  %10 = icmp eq ptr %1, @dev_attr_name
  %11 = icmp eq ptr %1, @dev_attr_num_users
  %12 = or i1 %10, %11
  %13 = icmp eq ptr %1, @dev_attr_type
  %14 = or i1 %13, %12
  br i1 %14, label %136, label %15

15:                                               ; preds = %3
  %16 = icmp eq ptr %1, @dev_attr_microvolts
  br i1 %16, label %17, label %47

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.regulator_ops, ptr %7, i32 0, i32 4
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %17
  %22 = tail call i32 %19(ptr noundef %4) #26
  %23 = icmp sgt i32 %22, -1
  br i1 %23, label %136, label %24

24:                                               ; preds = %21, %17
  %25 = getelementptr inbounds %struct.regulator_ops, ptr %7, i32 0, i32 5
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %24
  %29 = tail call i32 %26(ptr noundef %4) #26
  %30 = icmp sgt i32 %29, -1
  br i1 %30, label %136, label %31

31:                                               ; preds = %28, %24
  %32 = load ptr, ptr %7, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %31
  %35 = tail call i32 %32(ptr noundef %4, i32 noundef 0) #26
  %36 = icmp sgt i32 %35, -1
  br i1 %36, label %136, label %37

37:                                               ; preds = %34, %31
  %38 = load ptr, ptr %4, align 8
  %39 = getelementptr inbounds %struct.regulator_desc, ptr %38, i32 0, i32 17
  %40 = load i32, ptr %39, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.regulator_desc, ptr %38, i32 0, i32 8
  %44 = load i32, ptr %43, align 4
  %45 = icmp eq i32 %44, 1
  br i1 %45, label %136, label %46

46:                                               ; preds = %42, %37
  br label %136

47:                                               ; preds = %15
  %48 = icmp eq ptr %1, @dev_attr_microamps
  br i1 %48, label %49, label %54

49:                                               ; preds = %47
  %50 = getelementptr inbounds %struct.regulator_ops, ptr %7, i32 0, i32 7
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, null
  %53 = select i1 %52, i16 0, i16 %9
  br label %136

54:                                               ; preds = %47
  %55 = icmp eq ptr %1, @dev_attr_opmode
  br i1 %55, label %56, label %61

56:                                               ; preds = %54
  %57 = getelementptr inbounds %struct.regulator_ops, ptr %7, i32 0, i32 18
  %58 = load ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, null
  %60 = select i1 %59, i16 0, i16 %9
  br label %136

61:                                               ; preds = %54
  %62 = icmp eq ptr %1, @dev_attr_state
  br i1 %62, label %63, label %72

63:                                               ; preds = %61
  %64 = getelementptr i8, ptr %0, i32 540
  %65 = load ptr, ptr %64, align 4
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %71

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.regulator_ops, ptr %7, i32 0, i32 16
  %69 = load ptr, ptr %68, align 4
  %70 = icmp eq ptr %69, null
  br i1 %70, label %136, label %71

71:                                               ; preds = %67, %63
  br label %136

72:                                               ; preds = %61
  %73 = icmp eq ptr %1, @dev_attr_status
  br i1 %73, label %74, label %79

74:                                               ; preds = %72
  %75 = getelementptr inbounds %struct.regulator_ops, ptr %7, i32 0, i32 25
  %76 = load ptr, ptr %75, align 4
  %77 = icmp eq ptr %76, null
  %78 = select i1 %77, i16 0, i16 %9
  br label %136

79:                                               ; preds = %72
  %80 = icmp eq ptr %1, @dev_attr_bypass
  br i1 %80, label %81, label %86

81:                                               ; preds = %79
  %82 = getelementptr inbounds %struct.regulator_ops, ptr %7, i32 0, i32 29
  %83 = load ptr, ptr %82, align 4
  %84 = icmp eq ptr %83, null
  %85 = select i1 %84, i16 0, i16 %9
  br label %136

86:                                               ; preds = %79
  %87 = icmp eq ptr %1, @dev_attr_min_microvolts
  %88 = icmp eq ptr %1, @dev_attr_max_microvolts
  %89 = or i1 %87, %88
  br i1 %89, label %90, label %99

90:                                               ; preds = %86
  %91 = getelementptr inbounds %struct.regulator_ops, ptr %7, i32 0, i32 1
  %92 = load ptr, ptr %91, align 4
  %93 = icmp eq ptr %92, null
  br i1 %93, label %94, label %98

94:                                               ; preds = %90
  %95 = getelementptr inbounds %struct.regulator_ops, ptr %7, i32 0, i32 3
  %96 = load ptr, ptr %95, align 4
  %97 = icmp eq ptr %96, null
  br i1 %97, label %136, label %98

98:                                               ; preds = %94, %90
  br label %136

99:                                               ; preds = %86
  %100 = icmp eq ptr %1, @dev_attr_min_microamps
  %101 = icmp eq ptr %1, @dev_attr_max_microamps
  %102 = or i1 %100, %101
  br i1 %102, label %103, label %108

103:                                              ; preds = %99
  %104 = getelementptr inbounds %struct.regulator_ops, ptr %7, i32 0, i32 6
  %105 = load ptr, ptr %104, align 4
  %106 = icmp eq ptr %105, null
  %107 = select i1 %106, i16 0, i16 %9
  br label %136

108:                                              ; preds = %99
  %109 = icmp eq ptr %1, @dev_attr_suspend_standby_state
  %110 = icmp eq ptr %1, @dev_attr_suspend_mem_state
  %111 = or i1 %109, %110
  %112 = icmp eq ptr %1, @dev_attr_suspend_disk_state
  %113 = or i1 %112, %111
  br i1 %113, label %136, label %114

114:                                              ; preds = %108
  %115 = icmp eq ptr %1, @dev_attr_suspend_standby_microvolts
  %116 = icmp eq ptr %1, @dev_attr_suspend_mem_microvolts
  %117 = or i1 %115, %116
  %118 = icmp eq ptr %1, @dev_attr_suspend_disk_microvolts
  %119 = or i1 %118, %117
  br i1 %119, label %120, label %125

120:                                              ; preds = %114
  %121 = getelementptr inbounds %struct.regulator_ops, ptr %7, i32 0, i32 30
  %122 = load ptr, ptr %121, align 4
  %123 = icmp eq ptr %122, null
  %124 = select i1 %123, i16 0, i16 %9
  br label %136

125:                                              ; preds = %114
  %126 = icmp eq ptr %1, @dev_attr_suspend_standby_mode
  %127 = icmp eq ptr %1, @dev_attr_suspend_mem_mode
  %128 = or i1 %126, %127
  %129 = icmp eq ptr %1, @dev_attr_suspend_disk_mode
  %130 = or i1 %129, %128
  br i1 %130, label %131, label %136

131:                                              ; preds = %125
  %132 = getelementptr inbounds %struct.regulator_ops, ptr %7, i32 0, i32 33
  %133 = load ptr, ptr %132, align 4
  %134 = icmp eq ptr %133, null
  %135 = select i1 %134, i16 0, i16 %9
  br label %136

136:                                              ; preds = %131, %125, %120, %108, %103, %98, %94, %81, %74, %71, %67, %56, %49, %46, %42, %34, %28, %21, %3
  %137 = phi i16 [ 0, %46 ], [ %53, %49 ], [ %60, %56 ], [ %78, %74 ], [ %85, %81 ], [ %107, %103 ], [ %124, %120 ], [ %135, %131 ], [ %9, %3 ], [ %9, %42 ], [ %9, %34 ], [ %9, %28 ], [ %9, %21 ], [ %9, %71 ], [ 0, %67 ], [ %9, %98 ], [ 0, %94 ], [ %9, %108 ], [ %9, %125 ]
  ret i16 %137
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @name_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #23 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.regulator_dev, ptr %5, i32 0, i32 14
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %3
  %10 = load ptr, ptr %7, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %9, %3
  %13 = load ptr, ptr %5, align 8
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  %16 = select i1 %15, ptr @.str, ptr %14
  br label %17

17:                                               ; preds = %12, %9
  %18 = phi ptr [ %10, %9 ], [ %16, %12 ]
  %19 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.110, ptr noundef %18)
  ret i32 %19
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #18

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @num_users_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #23 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.regulator_dev, ptr %5, i32 0, i32 2
  %7 = load i32, ptr %6, align 8
  %8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.112, i32 noundef %7)
  ret i32 %8
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @type_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #24 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.regulator_desc, ptr %6, i32 0, i32 12
  %8 = load i32, ptr %7, align 4
  switch i32 %8, label %11 [
    i32 0, label %9
    i32 1, label %10
  ]

9:                                                ; preds = %3
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(9) %2, ptr noundef nonnull align 1 dereferenceable(9) @.str.114, i32 9, i1 false)
  br label %12

10:                                               ; preds = %3
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(9) %2, ptr noundef nonnull align 1 dereferenceable(9) @.str.115, i32 9, i1 false)
  br label %12

11:                                               ; preds = %3
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(9) %2, ptr noundef nonnull align 1 dereferenceable(9) @.str.116, i32 9, i1 false)
  br label %12

12:                                               ; preds = %11, %10, %9
  ret i32 8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @microvolts_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  tail call fastcc void @regulator_lock(ptr noundef %5)
  %6 = tail call i32 @regulator_get_voltage_rdev(ptr noundef %5)
  tail call void @mutex_lock(ptr noundef nonnull @regulator_nesting_mutex) #26
  %7 = getelementptr inbounds %struct.regulator_dev, ptr %5, i32 0, i32 11
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, -1
  store i32 %9, ptr %7, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.regulator_dev, ptr %5, i32 0, i32 10
  store ptr null, ptr %12, align 8
  %13 = getelementptr inbounds %struct.regulator_dev, ptr %5, i32 0, i32 9
  tail call void @ww_mutex_unlock(ptr noundef %13) #26
  %14 = load i32, ptr %7, align 4
  br label %15

15:                                               ; preds = %11, %3
  %16 = phi i32 [ %14, %11 ], [ %9, %3 ]
  %17 = icmp slt i32 %16, 0
  %18 = load i1, ptr @regulator_unlock.__already_done, align 1
  %19 = xor i1 %18, true
  %20 = select i1 %17, i1 %19, i1 false
  br i1 %20, label %21, label %22, !prof !11

21:                                               ; preds = %15
  store i1 true, ptr @regulator_unlock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 204, i32 noundef 9, ptr noundef null) #26
  br label %22

22:                                               ; preds = %21, %15
  tail call void @mutex_unlock(ptr noundef nonnull @regulator_nesting_mutex) #26
  %23 = icmp slt i32 %6, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %22
  %25 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.112, i32 noundef %6)
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi i32 [ %25, %24 ], [ %6, %22 ]
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @microamps_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = tail call fastcc i32 @_regulator_get_current_limit(ptr noundef %5)
  %7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.112, i32 noundef %6)
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @opmode_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = tail call fastcc i32 @_regulator_get_mode(ptr noundef %5)
  %7 = add i32 %6, -1
  %8 = icmp ult i32 %7, 8
  br i1 %8, label %9, label %12

9:                                                ; preds = %3
  %10 = getelementptr inbounds [8 x ptr], ptr @switch.table.regulator_summary_show_subtree, i32 0, i32 %7
  %11 = load ptr, ptr %10, align 4
  br label %12

12:                                               ; preds = %9, %3
  %13 = phi ptr [ %11, %9 ], [ @.str.124, %3 ]
  %14 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.110, ptr noundef nonnull %13) #26
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @state_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  tail call fastcc void @regulator_lock(ptr noundef %5)
  %6 = getelementptr inbounds %struct.regulator_dev, ptr %5, i32 0, i32 21
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.regulator_dev, ptr %5, i32 0, i32 22
  %11 = load i8, ptr %10, align 8
  %12 = and i8 %11, 1
  %13 = zext i8 %12 to i32
  br label %23

14:                                               ; preds = %3
  %15 = load ptr, ptr %5, align 8
  %16 = getelementptr inbounds %struct.regulator_desc, ptr %15, i32 0, i32 10
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.regulator_ops, ptr %17, i32 0, i32 16
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %14
  %22 = tail call i32 %19(ptr noundef %5) #26
  br label %23

23:                                               ; preds = %21, %9
  %24 = phi i32 [ %13, %9 ], [ %22, %21 ]
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %23, %14
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(9) %2, ptr noundef nonnull align 1 dereferenceable(9) @.str.126, i32 9, i1 false) #26
  br label %31

27:                                               ; preds = %23
  %28 = icmp eq i32 %24, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %27
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(10) %2, ptr noundef nonnull align 1 dereferenceable(10) @.str.127, i32 10, i1 false) #26
  br label %31

30:                                               ; preds = %27
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(9) %2, ptr noundef nonnull align 1 dereferenceable(9) @.str.116, i32 9, i1 false) #26
  br label %31

31:                                               ; preds = %30, %29, %26
  %32 = phi i32 [ 8, %26 ], [ 9, %29 ], [ 8, %30 ]
  tail call void @mutex_lock(ptr noundef nonnull @regulator_nesting_mutex) #26
  %33 = getelementptr inbounds %struct.regulator_dev, ptr %5, i32 0, i32 11
  %34 = load i32, ptr %33, align 4
  %35 = add i32 %34, -1
  store i32 %35, ptr %33, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.regulator_dev, ptr %5, i32 0, i32 10
  store ptr null, ptr %38, align 8
  %39 = getelementptr inbounds %struct.regulator_dev, ptr %5, i32 0, i32 9
  tail call void @ww_mutex_unlock(ptr noundef %39) #26
  %40 = load i32, ptr %33, align 4
  br label %41

41:                                               ; preds = %37, %31
  %42 = phi i32 [ %40, %37 ], [ %35, %31 ]
  %43 = icmp slt i32 %42, 0
  %44 = load i1, ptr @regulator_unlock.__already_done, align 1
  %45 = xor i1 %44, true
  %46 = select i1 %43, i1 %45, i1 false
  br i1 %46, label %47, label %48, !prof !11

47:                                               ; preds = %41
  store i1 true, ptr @regulator_unlock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 204, i32 noundef 9, ptr noundef null) #26
  br label %48

48:                                               ; preds = %47, %41
  tail call void @mutex_unlock(ptr noundef nonnull @regulator_nesting_mutex) #26
  ret i32 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @status_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.regulator_desc, ptr %6, i32 0, i32 10
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.regulator_ops, ptr %8, i32 0, i32 25
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 %10(ptr noundef %5) #26
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %3
  %14 = icmp ult i32 %11, 9
  br i1 %14, label %15, label %19

15:                                               ; preds = %13
  %16 = getelementptr inbounds [9 x ptr], ptr @switch.table.status_show, i32 0, i32 %11
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.110, ptr noundef nonnull %17)
  br label %19

19:                                               ; preds = %15, %13, %3
  %20 = phi i32 [ %18, %15 ], [ %11, %3 ], [ -34, %13 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bypass_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca i8, align 1
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #26
  store i8 0, ptr %4, align 1, !annotation !9
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.regulator_desc, ptr %7, i32 0, i32 10
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.regulator_ops, ptr %9, i32 0, i32 29
  %11 = load ptr, ptr %10, align 4
  %12 = call i32 %11(ptr noundef %6, ptr noundef nonnull %4) #26
  %13 = icmp eq i32 %12, 0
  %14 = load i8, ptr %4, align 1
  %15 = icmp eq i8 %14, 0
  %16 = select i1 %15, ptr @.str.135, ptr @.str.134
  %17 = select i1 %13, ptr %16, ptr @.str.124
  %18 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.110, ptr noundef nonnull %17)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #26
  ret i32 %18
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @min_microvolts_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #23 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.regulator_dev, ptr %5, i32 0, i32 14
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(24) %2, ptr noundef nonnull align 1 dereferenceable(24) @.str.137, i32 24, i1 false)
  br label %14

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.regulation_constraints, ptr %7, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.112, i32 noundef %12)
  br label %14

14:                                               ; preds = %10, %9
  %15 = phi i32 [ %13, %10 ], [ 23, %9 ]
  ret i32 %15
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max_microvolts_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #23 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.regulator_dev, ptr %5, i32 0, i32 14
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(24) %2, ptr noundef nonnull align 1 dereferenceable(24) @.str.137, i32 24, i1 false)
  br label %14

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.regulation_constraints, ptr %7, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.112, i32 noundef %12)
  br label %14

14:                                               ; preds = %10, %9
  %15 = phi i32 [ %13, %10 ], [ 23, %9 ]
  ret i32 %15
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @min_microamps_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #23 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.regulator_dev, ptr %5, i32 0, i32 14
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(24) %2, ptr noundef nonnull align 1 dereferenceable(24) @.str.137, i32 24, i1 false)
  br label %14

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.regulation_constraints, ptr %7, i32 0, i32 4
  %12 = load i32, ptr %11, align 4
  %13 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.112, i32 noundef %12)
  br label %14

14:                                               ; preds = %10, %9
  %15 = phi i32 [ %13, %10 ], [ 23, %9 ]
  ret i32 %15
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max_microamps_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #23 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.regulator_dev, ptr %5, i32 0, i32 14
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(24) %2, ptr noundef nonnull align 1 dereferenceable(24) @.str.137, i32 24, i1 false)
  br label %14

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.regulation_constraints, ptr %7, i32 0, i32 5
  %12 = load i32, ptr %11, align 4
  %13 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.112, i32 noundef %12)
  br label %14

14:                                               ; preds = %10, %9
  %15 = phi i32 [ %13, %10 ], [ 23, %9 ]
  ret i32 %15
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @suspend_standby_state_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #24 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.regulator_dev, ptr %5, i32 0, i32 14
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.regulation_constraints, ptr %7, i32 0, i32 15, i32 4
  %9 = load i32, ptr %8, align 4
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(9) %2, ptr noundef nonnull align 1 dereferenceable(9) @.str.126, i32 9, i1 false) #26
  br label %16

12:                                               ; preds = %3
  %13 = icmp eq i32 %9, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %12
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(10) %2, ptr noundef nonnull align 1 dereferenceable(10) @.str.127, i32 10, i1 false) #26
  br label %16

15:                                               ; preds = %12
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(9) %2, ptr noundef nonnull align 1 dereferenceable(9) @.str.116, i32 9, i1 false) #26
  br label %16

16:                                               ; preds = %15, %14, %11
  %17 = phi i32 [ 8, %11 ], [ 9, %14 ], [ 8, %15 ]
  ret i32 %17
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @suspend_mem_state_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #24 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.regulator_dev, ptr %5, i32 0, i32 14
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.regulation_constraints, ptr %7, i32 0, i32 14, i32 4
  %9 = load i32, ptr %8, align 4
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(9) %2, ptr noundef nonnull align 1 dereferenceable(9) @.str.126, i32 9, i1 false) #26
  br label %16

12:                                               ; preds = %3
  %13 = icmp eq i32 %9, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %12
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(10) %2, ptr noundef nonnull align 1 dereferenceable(10) @.str.127, i32 10, i1 false) #26
  br label %16

15:                                               ; preds = %12
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(9) %2, ptr noundef nonnull align 1 dereferenceable(9) @.str.116, i32 9, i1 false) #26
  br label %16

16:                                               ; preds = %15, %14, %11
  %17 = phi i32 [ 8, %11 ], [ 9, %14 ], [ 8, %15 ]
  ret i32 %17
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @suspend_disk_state_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #24 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.regulator_dev, ptr %5, i32 0, i32 14
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.regulation_constraints, ptr %7, i32 0, i32 13, i32 4
  %9 = load i32, ptr %8, align 4
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(9) %2, ptr noundef nonnull align 1 dereferenceable(9) @.str.126, i32 9, i1 false) #26
  br label %16

12:                                               ; preds = %3
  %13 = icmp eq i32 %9, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %12
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(10) %2, ptr noundef nonnull align 1 dereferenceable(10) @.str.127, i32 10, i1 false) #26
  br label %16

15:                                               ; preds = %12
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(9) %2, ptr noundef nonnull align 1 dereferenceable(9) @.str.116, i32 9, i1 false) #26
  br label %16

16:                                               ; preds = %15, %14, %11
  %17 = phi i32 [ 8, %11 ], [ 9, %14 ], [ 8, %15 ]
  ret i32 %17
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @suspend_standby_microvolts_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #23 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.regulator_dev, ptr %5, i32 0, i32 14
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.regulation_constraints, ptr %7, i32 0, i32 15
  %9 = load i32, ptr %8, align 4
  %10 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.112, i32 noundef %9)
  ret i32 %10
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @suspend_mem_microvolts_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #23 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.regulator_dev, ptr %5, i32 0, i32 14
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.regulation_constraints, ptr %7, i32 0, i32 14
  %9 = load i32, ptr %8, align 4
  %10 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.112, i32 noundef %9)
  ret i32 %10
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @suspend_disk_microvolts_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #23 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.regulator_dev, ptr %5, i32 0, i32 14
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.regulation_constraints, ptr %7, i32 0, i32 13
  %9 = load i32, ptr %8, align 4
  %10 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.112, i32 noundef %9)
  ret i32 %10
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @suspend_standby_mode_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #23 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.regulator_dev, ptr %5, i32 0, i32 14
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.regulation_constraints, ptr %7, i32 0, i32 15, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %9, -1
  %11 = icmp ult i32 %10, 8
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = getelementptr inbounds [8 x ptr], ptr @switch.table.regulator_summary_show_subtree, i32 0, i32 %10
  %14 = load ptr, ptr %13, align 4
  br label %15

15:                                               ; preds = %12, %3
  %16 = phi ptr [ %14, %12 ], [ @.str.124, %3 ]
  %17 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.110, ptr noundef nonnull %16) #26
  ret i32 %17
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @suspend_mem_mode_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #23 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.regulator_dev, ptr %5, i32 0, i32 14
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.regulation_constraints, ptr %7, i32 0, i32 14, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %9, -1
  %11 = icmp ult i32 %10, 8
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = getelementptr inbounds [8 x ptr], ptr @switch.table.regulator_summary_show_subtree, i32 0, i32 %10
  %14 = load ptr, ptr %13, align 4
  br label %15

15:                                               ; preds = %12, %3
  %16 = phi ptr [ %14, %12 ], [ @.str.124, %3 ]
  %17 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.110, ptr noundef nonnull %16) #26
  ret i32 %17
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @suspend_disk_mode_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #23 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.regulator_dev, ptr %5, i32 0, i32 14
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.regulation_constraints, ptr %7, i32 0, i32 13, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %9, -1
  %11 = icmp ult i32 %10, 8
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = getelementptr inbounds [8 x ptr], ptr @switch.table.regulator_summary_show_subtree, i32 0, i32 %10
  %14 = load ptr, ptr %13, align 4
  br label %15

15:                                               ; preds = %12, %3
  %16 = phi ptr [ %14, %12 ], [ @.str.124, %3 ]
  %17 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.110, ptr noundef nonnull %16) #26
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @requested_microamps_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  tail call fastcc void @regulator_lock(ptr noundef %5)
  %6 = getelementptr inbounds %struct.regulator_dev, ptr %5, i32 0, i32 6
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %6
  br i1 %8, label %23, label %9

9:                                                ; preds = %19, %3
  %10 = phi ptr [ %21, %19 ], [ %7, %3 ]
  %11 = phi i32 [ %20, %19 ], [ 0, %3 ]
  %12 = getelementptr i8, ptr %10, i32 16
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %9
  %16 = getelementptr i8, ptr %10, i32 12
  %17 = load i32, ptr %16, align 4
  %18 = add i32 %17, %11
  br label %19

19:                                               ; preds = %15, %9
  %20 = phi i32 [ %18, %15 ], [ %11, %9 ]
  %21 = load ptr, ptr %10, align 4
  %22 = icmp eq ptr %21, %6
  br i1 %22, label %23, label %9

23:                                               ; preds = %19, %3
  %24 = phi i32 [ 0, %3 ], [ %20, %19 ]
  tail call void @mutex_lock(ptr noundef nonnull @regulator_nesting_mutex) #26
  %25 = getelementptr inbounds %struct.regulator_dev, ptr %5, i32 0, i32 11
  %26 = load i32, ptr %25, align 4
  %27 = add i32 %26, -1
  store i32 %27, ptr %25, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.regulator_dev, ptr %5, i32 0, i32 10
  store ptr null, ptr %30, align 8
  %31 = getelementptr inbounds %struct.regulator_dev, ptr %5, i32 0, i32 9
  tail call void @ww_mutex_unlock(ptr noundef %31) #26
  %32 = load i32, ptr %25, align 4
  br label %33

33:                                               ; preds = %29, %23
  %34 = phi i32 [ %32, %29 ], [ %27, %23 ]
  %35 = icmp slt i32 %34, 0
  %36 = load i1, ptr @regulator_unlock.__already_done, align 1
  %37 = xor i1 %36, true
  %38 = select i1 %35, i1 %37, i1 false
  br i1 %38, label %39, label %40, !prof !11

39:                                               ; preds = %33
  store i1 true, ptr @regulator_unlock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 204, i32 noundef 9, ptr noundef null) #26
  br label %40

40:                                               ; preds = %39, %33
  tail call void @mutex_unlock(ptr noundef nonnull @regulator_nesting_mutex) #26
  %41 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.112, i32 noundef %24)
  ret i32 %41
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @regulator_suspend(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -120
  %3 = getelementptr i8, ptr %0, i32 472
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %61, label %6

6:                                                ; preds = %1
  %7 = load i32, ptr @pm_suspend_target_state, align 4
  switch i32 %7, label %61 [
    i32 2, label %8
    i32 3, label %10
    i32 4, label %12
  ]

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.regulation_constraints, ptr %4, i32 0, i32 15
  br label %14

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.regulation_constraints, ptr %4, i32 0, i32 14
  br label %14

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.regulation_constraints, ptr %4, i32 0, i32 13
  br label %14

14:                                               ; preds = %12, %10, %8
  %15 = phi ptr [ %13, %12 ], [ %11, %10 ], [ %9, %8 ]
  %16 = icmp eq ptr %15, null
  br i1 %16, label %61, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.regulator_state, ptr %15, i32 0, i32 4
  %19 = load i32, ptr %18, align 4
  %20 = add i32 %19, -1
  %21 = icmp ult i32 %20, 2
  br i1 %21, label %43, label %22

22:                                               ; preds = %17
  %23 = load ptr, ptr %2, align 8
  %24 = getelementptr inbounds %struct.regulator_desc, ptr %23, i32 0, i32 10
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.regulator_ops, ptr %25, i32 0, i32 30
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.regulator_ops, ptr %25, i32 0, i32 33
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %61, label %33

33:                                               ; preds = %29, %22
  %34 = load ptr, ptr %4, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = load ptr, ptr %23, align 4
  %38 = icmp eq ptr %37, null
  %39 = select i1 %38, ptr @.str, ptr %37
  br label %40

40:                                               ; preds = %36, %33
  %41 = phi ptr [ %34, %33 ], [ %39, %36 ]
  %42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.97, ptr noundef %41) #27
  br label %61

43:                                               ; preds = %17
  tail call fastcc void @regulator_lock(ptr noundef %2)
  %44 = tail call fastcc i32 @__suspend_set_state(ptr noundef %2, ptr noundef nonnull %15)
  tail call void @mutex_lock(ptr noundef nonnull @regulator_nesting_mutex) #26
  %45 = getelementptr i8, ptr %0, i32 -12
  %46 = load i32, ptr %45, align 4
  %47 = add i32 %46, -1
  store i32 %47, ptr %45, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %43
  %50 = getelementptr i8, ptr %0, i32 -16
  store ptr null, ptr %50, align 8
  %51 = getelementptr i8, ptr %0, i32 -40
  tail call void @ww_mutex_unlock(ptr noundef %51) #26
  %52 = load i32, ptr %45, align 4
  br label %53

53:                                               ; preds = %49, %43
  %54 = phi i32 [ %52, %49 ], [ %47, %43 ]
  %55 = icmp slt i32 %54, 0
  %56 = load i1, ptr @regulator_unlock.__already_done, align 1
  %57 = xor i1 %56, true
  %58 = select i1 %55, i1 %57, i1 false
  br i1 %58, label %59, label %60, !prof !11

59:                                               ; preds = %53
  store i1 true, ptr @regulator_unlock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 204, i32 noundef 9, ptr noundef null) #26
  br label %60

60:                                               ; preds = %59, %53
  tail call void @mutex_unlock(ptr noundef nonnull @regulator_nesting_mutex) #26
  br label %61

61:                                               ; preds = %60, %40, %29, %14, %6, %1
  %62 = phi i32 [ %44, %60 ], [ 0, %14 ], [ 0, %40 ], [ 0, %29 ], [ 0, %1 ], [ 0, %6 ]
  ret i32 %62
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @regulator_resume(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -120
  %3 = getelementptr i8, ptr %0, i32 472
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %54, label %6

6:                                                ; preds = %1
  %7 = load i32, ptr @pm_suspend_target_state, align 4
  switch i32 %7, label %54 [
    i32 2, label %8
    i32 3, label %10
    i32 4, label %12
  ]

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.regulation_constraints, ptr %4, i32 0, i32 15
  br label %14

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.regulation_constraints, ptr %4, i32 0, i32 14
  br label %14

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.regulation_constraints, ptr %4, i32 0, i32 13
  br label %14

14:                                               ; preds = %12, %10, %8
  %15 = phi ptr [ %13, %12 ], [ %11, %10 ], [ %9, %8 ]
  %16 = icmp eq ptr %15, null
  br i1 %16, label %54, label %17

17:                                               ; preds = %14
  %18 = load ptr, ptr %2, align 8
  %19 = getelementptr inbounds %struct.regulator_desc, ptr %18, i32 0, i32 10
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.regulator_ops, ptr %20, i32 0, i32 34
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %54, label %24

24:                                               ; preds = %17
  tail call fastcc void @regulator_lock(ptr noundef %2)
  %25 = getelementptr inbounds %struct.regulator_state, ptr %15, i32 0, i32 4
  %26 = load i32, ptr %25, align 4
  %27 = add i32 %26, -1
  %28 = icmp ult i32 %27, 2
  br i1 %28, label %29, label %36

29:                                               ; preds = %24
  %30 = load ptr, ptr %2, align 8
  %31 = getelementptr inbounds %struct.regulator_desc, ptr %30, i32 0, i32 10
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.regulator_ops, ptr %32, i32 0, i32 34
  %34 = load ptr, ptr %33, align 4
  %35 = tail call i32 %34(ptr noundef %2) #26
  br label %36

36:                                               ; preds = %29, %24
  %37 = phi i32 [ %35, %29 ], [ 0, %24 ]
  tail call void @mutex_lock(ptr noundef nonnull @regulator_nesting_mutex) #26
  %38 = getelementptr i8, ptr %0, i32 -12
  %39 = load i32, ptr %38, align 4
  %40 = add i32 %39, -1
  store i32 %40, ptr %38, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %36
  %43 = getelementptr i8, ptr %0, i32 -16
  store ptr null, ptr %43, align 8
  %44 = getelementptr i8, ptr %0, i32 -40
  tail call void @ww_mutex_unlock(ptr noundef %44) #26
  %45 = load i32, ptr %38, align 4
  br label %46

46:                                               ; preds = %42, %36
  %47 = phi i32 [ %45, %42 ], [ %40, %36 ]
  %48 = icmp slt i32 %47, 0
  %49 = load i1, ptr @regulator_unlock.__already_done, align 1
  %50 = xor i1 %49, true
  %51 = select i1 %48, i1 %50, i1 false
  br i1 %51, label %52, label %53, !prof !11

52:                                               ; preds = %46
  store i1 true, ptr @regulator_unlock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 204, i32 noundef 9, ptr noundef null) #26
  br label %53

53:                                               ; preds = %52, %46
  tail call void @mutex_unlock(ptr noundef nonnull @regulator_nesting_mutex) #26
  br label %54

54:                                               ; preds = %53, %17, %14, %6, %1
  %55 = phi i32 [ %37, %53 ], [ 0, %14 ], [ 0, %17 ], [ 0, %1 ], [ 0, %6 ]
  ret i32 %55
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__class_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @regulator_dummy_init() local_unnamed_addr #4 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @supply_map_open(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @supply_map_show, ptr noundef %4) #26
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @supply_map_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = load ptr, ptr @regulator_map_list, align 4
  %4 = icmp eq ptr %3, @regulator_map_list
  br i1 %4, label %28, label %5

5:                                                ; preds = %20, %2
  %6 = phi ptr [ %26, %20 ], [ %3, %2 ]
  %7 = getelementptr inbounds %struct.regulator_map, ptr %6, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.regulator_dev, ptr %8, i32 0, i32 14
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %5
  %13 = load ptr, ptr %10, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %12, %5
  %16 = load ptr, ptr %8, align 8
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  %19 = select i1 %18, ptr @.str, ptr %17
  br label %20

20:                                               ; preds = %15, %12
  %21 = phi ptr [ %13, %12 ], [ %19, %15 ]
  %22 = getelementptr inbounds %struct.regulator_map, ptr %6, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.regulator_map, ptr %6, i32 0, i32 2
  %25 = load ptr, ptr %24, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.154, ptr noundef %21, ptr noundef %23, ptr noundef %25) #26
  %26 = load ptr, ptr %6, align 4
  %27 = icmp eq ptr %26, @regulator_map_list
  br i1 %27, label %28, label %5

28:                                               ; preds = %20, %2
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @regulator_summary_open(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @regulator_summary_show, ptr noundef %4) #26
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @regulator_summary_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = alloca %struct.summary_lock_data, align 4
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca %struct.ww_acquire_ctx, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #26
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.155) #26
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.156) #26
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #26
  store ptr null, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #26
  store ptr null, ptr %5, align 4
  tail call void @mutex_lock(ptr noundef nonnull @regulator_list_mutex) #26
  %7 = tail call ptr @llvm.thread.pointer() #26
  store ptr %7, ptr %6, align 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @regulator_ww_class) #26, !srcloc !14
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @regulator_ww_class, ptr nonnull @regulator_ww_class, i32 1, ptr nonnull elementtype(i32) @regulator_ww_class) #26, !srcloc !15
  %9 = extractvalue { i32, i32 } %8, 0
  %10 = getelementptr inbounds %struct.ww_acquire_ctx, ptr %6, i32 0, i32 1
  store i32 %9, ptr %10, align 4
  %11 = getelementptr inbounds %struct.ww_acquire_ctx, ptr %6, i32 0, i32 2
  store i32 0, ptr %11, align 4
  %12 = getelementptr inbounds %struct.ww_acquire_ctx, ptr %6, i32 0, i32 3
  store i16 0, ptr %12, align 4
  %13 = load i32, ptr getelementptr inbounds (%struct.ww_class, ptr @regulator_ww_class, i32 0, i32 5), align 4
  %14 = trunc i32 %13 to i16
  %15 = getelementptr inbounds %struct.ww_acquire_ctx, ptr %6, i32 0, i32 4
  store i16 %14, ptr %15, align 2
  %16 = getelementptr inbounds %struct.summary_lock_data, ptr %3, i32 0, i32 1
  %17 = getelementptr inbounds %struct.summary_lock_data, ptr %3, i32 0, i32 2
  br label %18

18:                                               ; preds = %55, %2
  %19 = phi ptr [ %56, %55 ], [ null, %2 ]
  %20 = icmp eq ptr %19, null
  br i1 %20, label %28, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.regulator_dev, ptr %19, i32 0, i32 9
  %23 = call i32 @ww_mutex_lock(ptr noundef %22, ptr noundef nonnull %6) #26
  %24 = load ptr, ptr %4, align 4
  store ptr %24, ptr %5, align 4
  %25 = getelementptr inbounds %struct.regulator_dev, ptr %24, i32 0, i32 11
  %26 = load i32, ptr %25, align 4
  %27 = add i32 %26, 1
  store i32 %27, ptr %25, align 4
  br label %28

28:                                               ; preds = %21, %18
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #26
  store ptr %6, ptr %3, align 4
  store ptr %4, ptr %16, align 4
  store ptr %5, ptr %17, align 4
  %29 = call i32 @class_for_each_device(ptr noundef nonnull @regulator_class, ptr noundef null, ptr noundef nonnull %3, ptr noundef nonnull @regulator_summary_lock_one) #26
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %28
  %32 = call i32 @class_for_each_device(ptr noundef nonnull @regulator_class, ptr noundef null, ptr noundef nonnull %3, ptr noundef nonnull @regulator_summary_unlock_one) #26
  br label %33

33:                                               ; preds = %31, %28
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #26
  %34 = load ptr, ptr %5, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %53, label %36

36:                                               ; preds = %33
  call void @mutex_lock(ptr noundef nonnull @regulator_nesting_mutex) #26
  %37 = getelementptr inbounds %struct.regulator_dev, ptr %34, i32 0, i32 11
  %38 = load i32, ptr %37, align 4
  %39 = add i32 %38, -1
  store i32 %39, ptr %37, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.regulator_dev, ptr %34, i32 0, i32 10
  store ptr null, ptr %42, align 8
  %43 = getelementptr inbounds %struct.regulator_dev, ptr %34, i32 0, i32 9
  call void @ww_mutex_unlock(ptr noundef %43) #26
  %44 = load i32, ptr %37, align 4
  br label %45

45:                                               ; preds = %41, %36
  %46 = phi i32 [ %44, %41 ], [ %39, %36 ]
  %47 = icmp slt i32 %46, 0
  %48 = load i1, ptr @regulator_unlock.__already_done, align 1
  %49 = xor i1 %48, true
  %50 = select i1 %47, i1 %49, i1 false
  br i1 %50, label %51, label %52, !prof !11

51:                                               ; preds = %45
  store i1 true, ptr @regulator_unlock.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 204, i32 noundef 9, ptr noundef null) #26
  br label %52

52:                                               ; preds = %51, %45
  call void @mutex_unlock(ptr noundef nonnull @regulator_nesting_mutex) #26
  br label %53

53:                                               ; preds = %52, %33
  %54 = icmp eq i32 %29, -35
  br i1 %54, label %55, label %57

55:                                               ; preds = %53
  %56 = load ptr, ptr %4, align 4
  br label %18

57:                                               ; preds = %53
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #26
  %58 = call i32 @class_for_each_device(ptr noundef nonnull @regulator_class, ptr noundef null, ptr noundef %0, ptr noundef nonnull @regulator_summary_show_roots) #26
  %59 = call i32 @class_for_each_device(ptr noundef nonnull @regulator_class, ptr noundef null, ptr noundef null, ptr noundef nonnull @regulator_summary_unlock_one) #26
  call void @mutex_unlock(ptr noundef nonnull @regulator_list_mutex) #26
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #26
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @regulator_summary_show_roots(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 476
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = getelementptr i8, ptr %0, i32 -120
  tail call fastcc void @regulator_summary_show_subtree(ptr noundef %1, ptr noundef %7, i32 noundef 0)
  br label %8

8:                                                ; preds = %6, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @regulator_summary_lock_one(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 -120
  %4 = getelementptr inbounds %struct.summary_lock_data, ptr %1, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %3, %6
  br i1 %7, label %44, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr %1, align 4
  tail call void @mutex_lock(ptr noundef nonnull @regulator_nesting_mutex) #26
  %10 = getelementptr i8, ptr %0, i32 -40
  %11 = tail call i32 @ww_mutex_trylock(ptr noundef %10, ptr noundef %9) #26
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %8
  %14 = tail call ptr @llvm.thread.pointer() #26
  br label %27

15:                                               ; preds = %8
  %16 = getelementptr i8, ptr %0, i32 -16
  %17 = load ptr, ptr %16, align 8
  %18 = tail call ptr @llvm.thread.pointer() #26
  %19 = icmp eq ptr %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = getelementptr i8, ptr %0, i32 -12
  %22 = load i32, ptr %21, align 4
  %23 = add i32 %22, 1
  store i32 %23, ptr %21, align 4
  br label %37

24:                                               ; preds = %15
  tail call void @mutex_unlock(ptr noundef nonnull @regulator_nesting_mutex) #26
  %25 = tail call i32 @ww_mutex_lock(ptr noundef %10, ptr noundef %9) #26
  tail call void @mutex_lock(ptr noundef nonnull @regulator_nesting_mutex) #26
  %26 = icmp eq i32 %25, -35
  br i1 %26, label %34, label %27

27:                                               ; preds = %24, %13
  %28 = phi ptr [ %14, %13 ], [ %18, %24 ]
  %29 = phi i32 [ 0, %13 ], [ %25, %24 ]
  %30 = getelementptr i8, ptr %0, i32 -12
  %31 = load i32, ptr %30, align 4
  %32 = add i32 %31, 1
  store i32 %32, ptr %30, align 4
  %33 = getelementptr i8, ptr %0, i32 -16
  store ptr %28, ptr %33, align 8
  br label %37

34:                                               ; preds = %24
  tail call void @mutex_unlock(ptr noundef nonnull @regulator_nesting_mutex) #26
  %35 = getelementptr inbounds %struct.summary_lock_data, ptr %1, i32 0, i32 1
  %36 = load ptr, ptr %35, align 4
  store ptr %3, ptr %36, align 4
  br label %45

37:                                               ; preds = %27, %20
  %38 = phi i32 [ %29, %27 ], [ 0, %20 ]
  tail call void @mutex_unlock(ptr noundef nonnull @regulator_nesting_mutex) #26
  %39 = icmp ne i32 %38, 0
  %40 = load i1, ptr @regulator_summary_lock_one.__already_done, align 1
  %41 = xor i1 %40, true
  %42 = select i1 %39, i1 %41, i1 false
  br i1 %42, label %43, label %45, !prof !11

43:                                               ; preds = %37
  store i1 true, ptr @regulator_summary_lock_one.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 5876, i32 noundef 9, ptr noundef null) #26
  br label %45

44:                                               ; preds = %2
  store ptr null, ptr %5, align 4
  br label %45

45:                                               ; preds = %44, %43, %37, %34
  %46 = phi i32 [ -35, %34 ], [ 0, %44 ], [ %38, %43 ], [ %38, %37 ]
  ret i32 %46
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @regulator_summary_unlock_one(ptr noundef %0, ptr noundef readonly %1) #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %2
  %5 = getelementptr i8, ptr %0, i32 -120
  %6 = getelementptr inbounds %struct.summary_lock_data, ptr %1, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %5, %8
  br i1 %9, label %27, label %10

10:                                               ; preds = %4, %2
  tail call void @mutex_lock(ptr noundef nonnull @regulator_nesting_mutex) #26
  %11 = getelementptr i8, ptr %0, i32 -12
  %12 = load i32, ptr %11, align 4
  %13 = add i32 %12, -1
  store i32 %13, ptr %11, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %10
  %16 = getelementptr i8, ptr %0, i32 -16
  store ptr null, ptr %16, align 8
  %17 = getelementptr i8, ptr %0, i32 -40
  tail call void @ww_mutex_unlock(ptr noundef %17) #26
  %18 = load i32, ptr %11, align 4
  br label %19

19:                                               ; preds = %15, %10
  %20 = phi i32 [ %18, %15 ], [ %13, %10 ]
  %21 = icmp slt i32 %20, 0
  %22 = load i1, ptr @regulator_unlock.__already_done, align 1
  %23 = xor i1 %22, true
  %24 = select i1 %21, i1 %23, i1 false
  br i1 %24, label %25, label %26, !prof !11

25:                                               ; preds = %19
  store i1 true, ptr @regulator_unlock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 204, i32 noundef 9, ptr noundef null) #26
  br label %26

26:                                               ; preds = %25, %19
  tail call void @mutex_unlock(ptr noundef nonnull @regulator_nesting_mutex) #26
  br label %27

27:                                               ; preds = %26, %4
  %28 = phi i32 [ 0, %26 ], [ -35, %4 ]
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @regulator_summary_show_subtree(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.summary_data, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #26
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %4, i8 0, i32 12, i1 false), !annotation !9
  %5 = icmp eq ptr %1, null
  br i1 %5, label %140, label %6

6:                                                ; preds = %3
  %7 = load ptr, ptr %1, align 8
  %8 = getelementptr inbounds %struct.regulator_desc, ptr %7, i32 0, i32 10
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.regulator_ops, ptr %9, i32 0, i32 18
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %6
  %14 = tail call i32 %11(ptr noundef nonnull %1) #26
  %15 = add i32 %14, -1
  br label %16

16:                                               ; preds = %13, %6
  %17 = phi i32 [ %15, %13 ], [ -23, %6 ]
  %18 = mul i32 %2, 3
  %19 = add i32 %18, 1
  %20 = sub i32 30, %18
  %21 = getelementptr inbounds %struct.regulator_dev, ptr %1, i32 0, i32 14
  %22 = load ptr, ptr %21, align 8
  %23 = icmp eq ptr %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %16
  %25 = load ptr, ptr %22, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %32

27:                                               ; preds = %24, %16
  %28 = load ptr, ptr %1, align 8
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  %31 = select i1 %30, ptr @.str, ptr %29
  br label %32

32:                                               ; preds = %27, %24
  %33 = phi ptr [ %25, %24 ], [ %31, %27 ]
  %34 = getelementptr inbounds %struct.regulator_dev, ptr %1, i32 0, i32 2
  %35 = load i32, ptr %34, align 8
  %36 = getelementptr inbounds %struct.regulator_dev, ptr %1, i32 0, i32 3
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr inbounds %struct.regulator_dev, ptr %1, i32 0, i32 4
  %39 = load i32, ptr %38, align 8
  %40 = icmp ult i32 %17, 8
  br i1 %40, label %41, label %44

41:                                               ; preds = %32
  %42 = getelementptr inbounds [8 x ptr], ptr @switch.table.regulator_summary_show_subtree, i32 0, i32 %17
  %43 = load ptr, ptr %42, align 4
  br label %44

44:                                               ; preds = %41, %32
  %45 = phi ptr [ %43, %41 ], [ @.str.124, %32 ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.157, i32 noundef %19, ptr noundef nonnull @.str, i32 noundef %20, ptr noundef %33, i32 noundef %35, i32 noundef %37, i32 noundef %39, ptr noundef nonnull %45) #26
  %46 = tail call i32 @regulator_get_voltage_rdev(ptr noundef nonnull %1)
  %47 = sdiv i32 %46, 1000
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.158, i32 noundef %47) #26
  %48 = load ptr, ptr %1, align 8
  %49 = getelementptr inbounds %struct.regulator_desc, ptr %48, i32 0, i32 10
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.regulator_ops, ptr %50, i32 0, i32 7
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %44
  %55 = tail call i32 %52(ptr noundef nonnull %1) #26
  %56 = sdiv i32 %55, 1000
  br label %57

57:                                               ; preds = %54, %44
  %58 = phi i32 [ %56, %54 ], [ 0, %44 ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.159, i32 noundef %58) #26
  %59 = load ptr, ptr %21, align 8
  %60 = icmp eq ptr %59, null
  br i1 %60, label %79, label %61

61:                                               ; preds = %57
  %62 = load ptr, ptr %1, align 8
  %63 = getelementptr inbounds %struct.regulator_desc, ptr %62, i32 0, i32 12
  %64 = load i32, ptr %63, align 4
  switch i32 %64, label %79 [
    i32 0, label %65
    i32 1, label %72
  ]

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.regulation_constraints, ptr %59, i32 0, i32 1
  %67 = load i32, ptr %66, align 4
  %68 = sdiv i32 %67, 1000
  %69 = getelementptr inbounds %struct.regulation_constraints, ptr %59, i32 0, i32 2
  %70 = load i32, ptr %69, align 4
  %71 = sdiv i32 %70, 1000
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.160, i32 noundef %68, i32 noundef %71) #26
  br label %79

72:                                               ; preds = %61
  %73 = getelementptr inbounds %struct.regulation_constraints, ptr %59, i32 0, i32 4
  %74 = load i32, ptr %73, align 4
  %75 = sdiv i32 %74, 1000
  %76 = getelementptr inbounds %struct.regulation_constraints, ptr %59, i32 0, i32 5
  %77 = load i32, ptr %76, align 4
  %78 = sdiv i32 %77, 1000
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.161, i32 noundef %75, i32 noundef %78) #26
  br label %79

79:                                               ; preds = %72, %65, %61, %57
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.162) #26
  %80 = getelementptr inbounds %struct.regulator_dev, ptr %1, i32 0, i32 6
  %81 = load ptr, ptr %80, align 4
  %82 = icmp eq ptr %81, %80
  br i1 %82, label %136, label %83

83:                                               ; preds = %79
  %84 = add i32 %18, 4
  %85 = sub i32 27, %18
  br label %86

86:                                               ; preds = %133, %83
  %87 = phi ptr [ %81, %83 ], [ %134, %133 ]
  %88 = getelementptr i8, ptr %87, i32 -4
  %89 = load ptr, ptr %88, align 4
  %90 = icmp eq ptr %89, null
  br i1 %90, label %95, label %91

91:                                               ; preds = %86
  %92 = getelementptr inbounds %struct.device, ptr %89, i32 0, i32 31
  %93 = load ptr, ptr %92, align 4
  %94 = icmp eq ptr %93, @regulator_class
  br i1 %94, label %133, label %100

95:                                               ; preds = %86
  %96 = getelementptr i8, ptr %87, i32 64
  %97 = load ptr, ptr %96, align 4
  %98 = icmp eq ptr %97, null
  %99 = select i1 %98, ptr @.str.164, ptr %97
  br label %110

100:                                              ; preds = %91
  %101 = getelementptr i8, ptr %87, i32 64
  %102 = load ptr, ptr %101, align 4
  %103 = icmp eq ptr %102, null
  br i1 %103, label %104, label %110

104:                                              ; preds = %100
  %105 = getelementptr inbounds %struct.device, ptr %89, i32 0, i32 3
  %106 = load ptr, ptr %105, align 4
  %107 = icmp eq ptr %106, null
  br i1 %107, label %108, label %110

108:                                              ; preds = %104
  %109 = load ptr, ptr %89, align 4
  br label %110

110:                                              ; preds = %108, %104, %100, %95
  %111 = phi ptr [ %102, %100 ], [ %109, %108 ], [ %106, %104 ], [ %99, %95 ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.163, i32 noundef %84, ptr noundef nonnull @.str, i32 noundef %85, ptr noundef %111) #26
  %112 = load ptr, ptr %1, align 8
  %113 = getelementptr inbounds %struct.regulator_desc, ptr %112, i32 0, i32 12
  %114 = load i32, ptr %113, align 4
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %132

116:                                              ; preds = %110
  %117 = getelementptr i8, ptr %87, i32 16
  %118 = load i32, ptr %117, align 4
  %119 = getelementptr i8, ptr %87, i32 12
  %120 = load i32, ptr %119, align 4
  %121 = sdiv i32 %120, 1000
  %122 = icmp ne i32 %120, 0
  %123 = icmp eq i32 %118, 0
  %124 = and i1 %123, %122
  %125 = select i1 %124, i32 42, i32 32
  %126 = getelementptr i8, ptr %87, i32 24
  %127 = load i32, ptr %126, align 4
  %128 = sdiv i32 %127, 1000
  %129 = getelementptr i8, ptr %87, i32 28
  %130 = load i32, ptr %129, align 4
  %131 = sdiv i32 %130, 1000
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.165, i32 noundef %118, i32 noundef %121, i32 noundef %125, i32 noundef %128, i32 noundef %131) #26
  br label %132

132:                                              ; preds = %116, %110
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.162) #26
  br label %133

133:                                              ; preds = %132, %91
  %134 = load ptr, ptr %87, align 4
  %135 = icmp eq ptr %134, %80
  br i1 %135, label %136, label %86

136:                                              ; preds = %133, %79
  store ptr %0, ptr %4, align 4
  %137 = getelementptr inbounds %struct.summary_data, ptr %4, i32 0, i32 2
  store i32 %2, ptr %137, align 4
  %138 = getelementptr inbounds %struct.summary_data, ptr %4, i32 0, i32 1
  store ptr %1, ptr %138, align 4
  %139 = call i32 @class_for_each_device(ptr noundef nonnull @regulator_class, ptr noundef null, ptr noundef nonnull %4, ptr noundef nonnull @regulator_summary_show_children) #26
  br label %140

140:                                              ; preds = %136, %3
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #26
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @regulator_summary_show_children(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 -120
  %4 = getelementptr i8, ptr %0, i32 476
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %18, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.regulator, ptr %5, i32 0, i32 9
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.summary_data, ptr %1, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %9, %11
  br i1 %12, label %13, label %18

13:                                               ; preds = %7
  %14 = load ptr, ptr %1, align 4
  %15 = getelementptr inbounds %struct.summary_data, ptr %1, i32 0, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = add i32 %16, 1
  tail call fastcc void @regulator_summary_show_subtree(ptr noundef %14, ptr noundef %3, i32 noundef %17)
  br label %18

18:                                               ; preds = %13, %7, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @generic_coupler_attach(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.regulator_dev, ptr %1, i32 0, i32 7, i32 3
  %4 = load i32, ptr %3, align 4
  %5 = icmp sgt i32 %4, 2
  %6 = getelementptr inbounds %struct.regulator_dev, ptr %1, i32 0, i32 14
  %7 = load ptr, ptr %6, align 8
  br i1 %5, label %8, label %21

8:                                                ; preds = %2
  %9 = icmp eq ptr %7, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %8
  %11 = load ptr, ptr %7, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %10, %8
  %14 = load ptr, ptr %1, align 8
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  %17 = select i1 %16, ptr @.str, ptr %15
  br label %18

18:                                               ; preds = %13, %10
  %19 = phi ptr [ %11, %10 ], [ %17, %13 ]
  %20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.103, ptr noundef %19) #27
  br label %39

21:                                               ; preds = %2
  %22 = getelementptr inbounds %struct.regulation_constraints, ptr %7, i32 0, i32 28
  %23 = load i16, ptr %22, align 4
  %24 = and i16 %23, 1
  %25 = icmp eq i16 %24, 0
  br i1 %25, label %26, label %39

26:                                               ; preds = %21
  %27 = icmp eq ptr %7, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %26
  %29 = load ptr, ptr %7, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %36

31:                                               ; preds = %28, %26
  %32 = load ptr, ptr %1, align 8
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  %35 = select i1 %34, ptr @.str, ptr %33
  br label %36

36:                                               ; preds = %31, %28
  %37 = phi ptr [ %29, %28 ], [ %35, %31 ]
  %38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.166, ptr noundef %37) #27
  br label %39

39:                                               ; preds = %36, %21, %18
  %40 = phi i32 [ -1, %18 ], [ -524, %36 ], [ 0, %21 ]
  ret i32 %40
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @regulator_init_complete_work_function(ptr nocapture noundef readnone %0) #0 {
  %2 = tail call i32 @class_for_each_device(ptr noundef nonnull @regulator_class, ptr noundef null, ptr noundef null, ptr noundef nonnull @regulator_register_resolve_supply) #26
  %3 = tail call i32 @class_for_each_device(ptr noundef nonnull @regulator_class, ptr noundef null, ptr noundef null, ptr noundef nonnull @regulator_late_cleanup) #26
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @regulator_late_cleanup(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 -120
  %4 = getelementptr i8, ptr %0, i32 472
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.regulation_constraints, ptr %5, i32 0, i32 28
  %9 = load i16, ptr %8, align 4
  %10 = and i16 %9, 1
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %18, label %113

12:                                               ; preds = %2
  %13 = load ptr, ptr %3, align 8
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  %16 = select i1 %15, ptr @.str, ptr %14
  %17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef %16) #27
  br label %113

18:                                               ; preds = %7
  %19 = getelementptr inbounds %struct.regulation_constraints, ptr %5, i32 0, i32 11
  %20 = load i32, ptr %19, align 4
  %21 = and i32 %20, 8
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %113, label %23

23:                                               ; preds = %18
  tail call fastcc void @regulator_lock(ptr noundef %3)
  %24 = getelementptr i8, ptr %0, i32 -112
  %25 = load i32, ptr %24, align 8
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %96

27:                                               ; preds = %23
  %28 = getelementptr i8, ptr %0, i32 540
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %36, label %31

31:                                               ; preds = %27
  %32 = getelementptr i8, ptr %0, i32 544
  %33 = load i8, ptr %32, align 8
  %34 = and i8 %33, 1
  %35 = zext i8 %34 to i32
  br label %45

36:                                               ; preds = %27
  %37 = load ptr, ptr %3, align 8
  %38 = getelementptr inbounds %struct.regulator_desc, ptr %37, i32 0, i32 10
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.regulator_ops, ptr %39, i32 0, i32 16
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %48, label %43

43:                                               ; preds = %36
  %44 = tail call i32 %41(ptr noundef %3) #26
  br label %45

45:                                               ; preds = %43, %31
  %46 = phi i32 [ %35, %31 ], [ %44, %43 ]
  %47 = icmp slt i32 %46, 1
  br i1 %47, label %96, label %48

48:                                               ; preds = %45, %36
  %49 = load i1, ptr @has_full_constraints, align 1
  %50 = load ptr, ptr @of_root, align 4
  %51 = icmp ne ptr %50, null
  %52 = select i1 %49, i1 true, i1 %51
  %53 = load ptr, ptr %4, align 8
  %54 = icmp eq ptr %53, null
  br i1 %52, label %55, label %84

55:                                               ; preds = %48
  br i1 %54, label %59, label %56

56:                                               ; preds = %55
  %57 = load ptr, ptr %53, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %64

59:                                               ; preds = %56, %55
  %60 = load ptr, ptr %3, align 8
  %61 = load ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, null
  %63 = select i1 %62, ptr @.str, ptr %61
  br label %64

64:                                               ; preds = %59, %56
  %65 = phi ptr [ %57, %56 ], [ %63, %59 ]
  %66 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.167, ptr noundef %65) #27
  %67 = tail call fastcc i32 @_regulator_do_disable(ptr noundef %3)
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %96, label %69

69:                                               ; preds = %64
  %70 = load ptr, ptr %4, align 8
  %71 = icmp eq ptr %70, null
  br i1 %71, label %75, label %72

72:                                               ; preds = %69
  %73 = load ptr, ptr %70, align 4
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %80

75:                                               ; preds = %72, %69
  %76 = load ptr, ptr %3, align 8
  %77 = load ptr, ptr %76, align 4
  %78 = icmp eq ptr %77, null
  %79 = select i1 %78, ptr @.str, ptr %77
  br label %80

80:                                               ; preds = %75, %72
  %81 = phi ptr [ %73, %72 ], [ %79, %75 ]
  %82 = inttoptr i32 %67 to ptr
  %83 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.168, ptr noundef %81, ptr noundef nonnull %82) #27
  br label %96

84:                                               ; preds = %48
  br i1 %54, label %88, label %85

85:                                               ; preds = %84
  %86 = load ptr, ptr %53, align 4
  %87 = icmp eq ptr %86, null
  br i1 %87, label %88, label %93

88:                                               ; preds = %85, %84
  %89 = load ptr, ptr %3, align 8
  %90 = load ptr, ptr %89, align 4
  %91 = icmp eq ptr %90, null
  %92 = select i1 %91, ptr @.str, ptr %90
  br label %93

93:                                               ; preds = %88, %85
  %94 = phi ptr [ %86, %85 ], [ %92, %88 ]
  %95 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.169, ptr noundef %94) #27
  br label %96

96:                                               ; preds = %93, %80, %64, %45, %23
  tail call void @mutex_lock(ptr noundef nonnull @regulator_nesting_mutex) #26
  %97 = getelementptr i8, ptr %0, i32 -12
  %98 = load i32, ptr %97, align 4
  %99 = add i32 %98, -1
  store i32 %99, ptr %97, align 4
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %96
  %102 = getelementptr i8, ptr %0, i32 -16
  store ptr null, ptr %102, align 8
  %103 = getelementptr i8, ptr %0, i32 -40
  tail call void @ww_mutex_unlock(ptr noundef %103) #26
  %104 = load i32, ptr %97, align 4
  br label %105

105:                                              ; preds = %101, %96
  %106 = phi i32 [ %104, %101 ], [ %99, %96 ]
  %107 = icmp slt i32 %106, 0
  %108 = load i1, ptr @regulator_unlock.__already_done, align 1
  %109 = xor i1 %108, true
  %110 = select i1 %107, i1 %109, i1 false
  br i1 %110, label %111, label %112, !prof !11

111:                                              ; preds = %105
  store i1 true, ptr @regulator_unlock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 204, i32 noundef 9, ptr noundef null) #26
  br label %112

112:                                              ; preds = %111, %105
  tail call void @mutex_unlock(ptr noundef nonnull @regulator_nesting_mutex) #26
  br label %113

113:                                              ; preds = %112, %18, %12, %7
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #22

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #22

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #22

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #22

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #25

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nofree nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #16 = { nounwind readonly }
attributes #17 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #18 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #19 = { mustprogress nofree nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #20 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #21 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #22 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #23 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #24 = { mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #25 = { argmemonly nofree nounwind willreturn }
attributes #26 = { nounwind }
attributes #27 = { cold nounwind }
attributes #28 = { nounwind allocsize(2) }
attributes #29 = { nounwind allocsize(0) }
attributes #30 = { nounwind readnone }

!llvm.named.register.sp = !{!0}
!llvm.module.flags = !{!1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{!"sp"}
!1 = !{i32 1, !"wchar_size", i32 2}
!2 = !{i32 1, !"min_enum_size", i32 4}
!3 = !{i32 8, !"branch-target-enforcement", i32 0}
!4 = !{i32 8, !"sign-return-address", i32 0}
!5 = !{i32 8, !"sign-return-address-all", i32 0}
!6 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{!"clang version 15.0.0 (/llk/llvm-project-main/clang 126a1f78513fb688819156df98cf7ea83b5e8c18)"}
!9 = !{!"auto-init"}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{!"branch_weights", i32 1, i32 2000}
!12 = !{i64 480883}
!13 = !{i64 2155015066, i64 2155015555, i64 2155015103, i64 2155015159, i64 2155015193, i64 2155015217, i64 2155015258, i64 2155015279, i64 2155015307, i64 2155015341}
!14 = !{i64 566944, i64 2148056915, i64 2148056941, i64 2148056988, i64 2148057010, i64 2148057038, i64 2148057058}
!15 = !{i64 2148069811, i64 2148069843, i64 2148069872, i64 2148069906, i64 2148069937, i64 2148069960}
!16 = !{!"branch_weights", i32 2000, i32 2, i32 2000}
!17 = !{i8 0, i8 2}
!18 = !{i64 2154033871}
!19 = !{i64 2154034053}
!20 = !{i64 2154050975}
!21 = !{i64 2154051169}
!22 = !{i64 2155021825, i64 2155022314, i64 2155021862, i64 2155021918, i64 2155021952, i64 2155021976, i64 2155022017, i64 2155022038, i64 2155022066, i64 2155022100}
!23 = !{i64 2149164124}
!24 = !{i64 2149159948}
!25 = !{i64 2149160023, i64 2149160050, i64 2149160097, i64 2149160119, i64 2149160147, i64 2149160167}
!26 = !{i64 2149187127}
!27 = !{i64 2153961761}
!28 = !{i64 2153961927}
!29 = !{i64 2153995597}
!30 = !{i64 2153995765}
!31 = !{i64 2153978588}
!32 = !{i64 2153978772}
!33 = !{i64 2154016578}
!34 = !{i64 2154016764}
!35 = !{i64 2148166949}
!36 = !{i64 2148167152}
!37 = !{i64 2153871776}
!38 = !{i64 2153871928}
!39 = !{i64 996763, i64 996790, i64 996812, i64 996840}
!40 = !{i64 997171, i64 997198, i64 997231, i64 997252, i64 997279, i64 997305}
!41 = !{i64 2153887845}
!42 = !{i64 2153888009}
!43 = !{i64 2153908413}
!44 = !{i64 2153908583}
!45 = !{i64 2153924778}
!46 = !{i64 2153924932}
!47 = !{i64 2153941053}
!48 = !{i64 2153941225}
