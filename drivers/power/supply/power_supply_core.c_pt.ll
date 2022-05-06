; ModuleID = '/llk/IR/drivers/power/supply/power_supply_core.c_pt.bc'
source_filename = "../drivers/power/supply/power_supply_core.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_power_supply_class:\09\09\09\09\09"
module asm "\09.asciz \09\22power_supply_class\22\09\09\09\09\09"
module asm "__kstrtabns_power_supply_class:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_power_supply_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22power_supply_notifier\22\09\09\09\09\09"
module asm "__kstrtabns_power_supply_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_power_supply_changed:\09\09\09\09\09"
module asm "\09.asciz \09\22power_supply_changed\22\09\09\09\09\09"
module asm "__kstrtabns_power_supply_changed:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_power_supply_am_i_supplied:\09\09\09\09\09"
module asm "\09.asciz \09\22power_supply_am_i_supplied\22\09\09\09\09\09"
module asm "__kstrtabns_power_supply_am_i_supplied:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_power_supply_is_system_supplied:\09\09\09\09\09"
module asm "\09.asciz \09\22power_supply_is_system_supplied\22\09\09\09\09\09"
module asm "__kstrtabns_power_supply_is_system_supplied:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_power_supply_set_input_current_limit_from_supplier:\09\09\09\09\09"
module asm "\09.asciz \09\22power_supply_set_input_current_limit_from_supplier\22\09\09\09\09\09"
module asm "__kstrtabns_power_supply_set_input_current_limit_from_supplier:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_power_supply_set_battery_charged:\09\09\09\09\09"
module asm "\09.asciz \09\22power_supply_set_battery_charged\22\09\09\09\09\09"
module asm "__kstrtabns_power_supply_set_battery_charged:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_power_supply_get_by_name:\09\09\09\09\09"
module asm "\09.asciz \09\22power_supply_get_by_name\22\09\09\09\09\09"
module asm "__kstrtabns_power_supply_get_by_name:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_power_supply_put:\09\09\09\09\09"
module asm "\09.asciz \09\22power_supply_put\22\09\09\09\09\09"
module asm "__kstrtabns_power_supply_put:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_power_supply_get_by_phandle:\09\09\09\09\09"
module asm "\09.asciz \09\22power_supply_get_by_phandle\22\09\09\09\09\09"
module asm "__kstrtabns_power_supply_get_by_phandle:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_power_supply_get_by_phandle:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_power_supply_get_by_phandle\22\09\09\09\09\09"
module asm "__kstrtabns_devm_power_supply_get_by_phandle:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_power_supply_get_battery_info:\09\09\09\09\09"
module asm "\09.asciz \09\22power_supply_get_battery_info\22\09\09\09\09\09"
module asm "__kstrtabns_power_supply_get_battery_info:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_power_supply_put_battery_info:\09\09\09\09\09"
module asm "\09.asciz \09\22power_supply_put_battery_info\22\09\09\09\09\09"
module asm "__kstrtabns_power_supply_put_battery_info:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_power_supply_temp2resist_simple:\09\09\09\09\09"
module asm "\09.asciz \09\22power_supply_temp2resist_simple\22\09\09\09\09\09"
module asm "__kstrtabns_power_supply_temp2resist_simple:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_power_supply_ocv2cap_simple:\09\09\09\09\09"
module asm "\09.asciz \09\22power_supply_ocv2cap_simple\22\09\09\09\09\09"
module asm "__kstrtabns_power_supply_ocv2cap_simple:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_power_supply_find_ocv2cap_table:\09\09\09\09\09"
module asm "\09.asciz \09\22power_supply_find_ocv2cap_table\22\09\09\09\09\09"
module asm "__kstrtabns_power_supply_find_ocv2cap_table:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_power_supply_batinfo_ocv2cap:\09\09\09\09\09"
module asm "\09.asciz \09\22power_supply_batinfo_ocv2cap\22\09\09\09\09\09"
module asm "__kstrtabns_power_supply_batinfo_ocv2cap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_power_supply_get_property:\09\09\09\09\09"
module asm "\09.asciz \09\22power_supply_get_property\22\09\09\09\09\09"
module asm "__kstrtabns_power_supply_get_property:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_power_supply_set_property:\09\09\09\09\09"
module asm "\09.asciz \09\22power_supply_set_property\22\09\09\09\09\09"
module asm "__kstrtabns_power_supply_set_property:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_power_supply_property_is_writeable:\09\09\09\09\09"
module asm "\09.asciz \09\22power_supply_property_is_writeable\22\09\09\09\09\09"
module asm "__kstrtabns_power_supply_property_is_writeable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_power_supply_external_power_changed:\09\09\09\09\09"
module asm "\09.asciz \09\22power_supply_external_power_changed\22\09\09\09\09\09"
module asm "__kstrtabns_power_supply_external_power_changed:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_power_supply_powers:\09\09\09\09\09"
module asm "\09.asciz \09\22power_supply_powers\22\09\09\09\09\09"
module asm "__kstrtabns_power_supply_powers:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_power_supply_reg_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22power_supply_reg_notifier\22\09\09\09\09\09"
module asm "__kstrtabns_power_supply_reg_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_power_supply_unreg_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22power_supply_unreg_notifier\22\09\09\09\09\09"
module asm "__kstrtabns_power_supply_unreg_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_power_supply_register:\09\09\09\09\09"
module asm "\09.asciz \09\22power_supply_register\22\09\09\09\09\09"
module asm "__kstrtabns_power_supply_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_power_supply_register_no_ws:\09\09\09\09\09"
module asm "\09.asciz \09\22power_supply_register_no_ws\22\09\09\09\09\09"
module asm "__kstrtabns_power_supply_register_no_ws:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_power_supply_register:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_power_supply_register\22\09\09\09\09\09"
module asm "__kstrtabns_devm_power_supply_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_power_supply_register_no_ws:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_power_supply_register_no_ws\22\09\09\09\09\09"
module asm "__kstrtabns_devm_power_supply_register_no_ws:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_power_supply_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22power_supply_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_power_supply_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_power_supply_get_drvdata:\09\09\09\09\09"
module asm "\09.asciz \09\22power_supply_get_drvdata\22\09\09\09\09\09"
module asm "__kstrtabns_power_supply_get_drvdata:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.atomic_notifier_head = type { %struct.spinlock, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.device_type = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fwnode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.thermal_zone_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.thermal_cooling_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.power_supply = type { ptr, ptr, i32, ptr, i32, ptr, ptr, %struct.device, %struct.work_struct, %struct.delayed_work, %struct.spinlock, i8, i8, i8, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.list_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.psy_am_i_supplied_data = type { ptr, i32 }
%union.power_supply_propval = type { i32 }
%struct.power_supply_desc = type { ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.power_supply_battery_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [20 x i32], i32, i32, i32, i32, i32, i32, [20 x ptr], [20 x i32], ptr, i32 }
%struct.power_supply_battery_ocv_table = type { i32, i32 }
%struct.power_supply_resistance_temp_table = type { i32, i32 }
%struct.power_supply_config = type { ptr, ptr, ptr, ptr, ptr, i32 }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.class = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.thermal_zone_device = type { i32, [20 x i8], %struct.device, %struct.attribute_group, ptr, ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, %struct.list_head, %struct.ida, %struct.mutex, %struct.list_head, %struct.delayed_work, i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.thermal_cooling_device = type { i32, ptr, %struct.device, ptr, ptr, ptr, ptr, i8, %struct.mutex, %struct.list_head, %struct.list_head }

@power_supply_class = dso_local global ptr null, align 4
@__kstrtab_power_supply_class = external dso_local constant [0 x i8], align 1
@__kstrtabns_power_supply_class = external dso_local constant [0 x i8], align 1
@__ksymtab_power_supply_class = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @power_supply_class to i32), ptr @__kstrtab_power_supply_class, ptr @__kstrtabns_power_supply_class }, section "___ksymtab_gpl+power_supply_class", align 4
@power_supply_notifier = dso_local global %struct.atomic_notifier_head zeroinitializer, align 4
@__kstrtab_power_supply_notifier = external dso_local constant [0 x i8], align 1
@__kstrtabns_power_supply_notifier = external dso_local constant [0 x i8], align 1
@__ksymtab_power_supply_notifier = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @power_supply_notifier to i32), ptr @__kstrtab_power_supply_notifier, ptr @__kstrtabns_power_supply_notifier }, section "___ksymtab_gpl+power_supply_notifier", align 4
@__kstrtab_power_supply_changed = external dso_local constant [0 x i8], align 1
@__kstrtabns_power_supply_changed = external dso_local constant [0 x i8], align 1
@__ksymtab_power_supply_changed = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @power_supply_changed to i32), ptr @__kstrtab_power_supply_changed, ptr @__kstrtabns_power_supply_changed }, section "___ksymtab_gpl+power_supply_changed", align 4
@__kstrtab_power_supply_am_i_supplied = external dso_local constant [0 x i8], align 1
@__kstrtabns_power_supply_am_i_supplied = external dso_local constant [0 x i8], align 1
@__ksymtab_power_supply_am_i_supplied = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @power_supply_am_i_supplied to i32), ptr @__kstrtab_power_supply_am_i_supplied, ptr @__kstrtabns_power_supply_am_i_supplied }, section "___ksymtab_gpl+power_supply_am_i_supplied", align 4
@__kstrtab_power_supply_is_system_supplied = external dso_local constant [0 x i8], align 1
@__kstrtabns_power_supply_is_system_supplied = external dso_local constant [0 x i8], align 1
@__ksymtab_power_supply_is_system_supplied = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @power_supply_is_system_supplied to i32), ptr @__kstrtab_power_supply_is_system_supplied, ptr @__kstrtabns_power_supply_is_system_supplied }, section "___ksymtab_gpl+power_supply_is_system_supplied", align 4
@__kstrtab_power_supply_set_input_current_limit_from_supplier = external dso_local constant [0 x i8], align 1
@__kstrtabns_power_supply_set_input_current_limit_from_supplier = external dso_local constant [0 x i8], align 1
@__ksymtab_power_supply_set_input_current_limit_from_supplier = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @power_supply_set_input_current_limit_from_supplier to i32), ptr @__kstrtab_power_supply_set_input_current_limit_from_supplier, ptr @__kstrtabns_power_supply_set_input_current_limit_from_supplier }, section "___ksymtab_gpl+power_supply_set_input_current_limit_from_supplier", align 4
@__kstrtab_power_supply_set_battery_charged = external dso_local constant [0 x i8], align 1
@__kstrtabns_power_supply_set_battery_charged = external dso_local constant [0 x i8], align 1
@__ksymtab_power_supply_set_battery_charged = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @power_supply_set_battery_charged to i32), ptr @__kstrtab_power_supply_set_battery_charged, ptr @__kstrtabns_power_supply_set_battery_charged }, section "___ksymtab_gpl+power_supply_set_battery_charged", align 4
@__kstrtab_power_supply_get_by_name = external dso_local constant [0 x i8], align 1
@__kstrtabns_power_supply_get_by_name = external dso_local constant [0 x i8], align 1
@__ksymtab_power_supply_get_by_name = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @power_supply_get_by_name to i32), ptr @__kstrtab_power_supply_get_by_name, ptr @__kstrtabns_power_supply_get_by_name }, section "___ksymtab_gpl+power_supply_get_by_name", align 4
@__kstrtab_power_supply_put = external dso_local constant [0 x i8], align 1
@__kstrtabns_power_supply_put = external dso_local constant [0 x i8], align 1
@__ksymtab_power_supply_put = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @power_supply_put to i32), ptr @__kstrtab_power_supply_put, ptr @__kstrtabns_power_supply_put }, section "___ksymtab_gpl+power_supply_put", align 4
@__kstrtab_power_supply_get_by_phandle = external dso_local constant [0 x i8], align 1
@__kstrtabns_power_supply_get_by_phandle = external dso_local constant [0 x i8], align 1
@__ksymtab_power_supply_get_by_phandle = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @power_supply_get_by_phandle to i32), ptr @__kstrtab_power_supply_get_by_phandle, ptr @__kstrtabns_power_supply_get_by_phandle }, section "___ksymtab_gpl+power_supply_get_by_phandle", align 4
@.str = private unnamed_addr constant [22 x i8] c"devm_power_supply_put\00", align 1
@__kstrtab_devm_power_supply_get_by_phandle = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_power_supply_get_by_phandle = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_power_supply_get_by_phandle = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_power_supply_get_by_phandle to i32), ptr @__kstrtab_devm_power_supply_get_by_phandle, ptr @__kstrtabns_devm_power_supply_get_by_phandle }, section "___ksymtab_gpl+devm_power_supply_get_by_phandle", align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"%s currently only supports devicetree\0A\00", align 1
@__func__.power_supply_get_battery_info = private unnamed_addr constant [30 x i8] c"power_supply_get_battery_info\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"monitored-battery\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"compatible\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"simple-battery\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"device-chemistry\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"nickel-cadmium\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"nickel-metal-hydride\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"lithium-ion\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"lithium-ion-polymer\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"lithium-ion-iron-phosphate\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"lithium-ion-manganese-oxide\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"%s unknown battery type\0A\00", align 1
@.str.13 = private unnamed_addr constant [35 x i8] c"energy-full-design-microwatt-hours\00", align 1
@.str.14 = private unnamed_addr constant [34 x i8] c"charge-full-design-microamp-hours\00", align 1
@.str.15 = private unnamed_addr constant [29 x i8] c"voltage-min-design-microvolt\00", align 1
@.str.16 = private unnamed_addr constant [29 x i8] c"voltage-max-design-microvolt\00", align 1
@.str.17 = private unnamed_addr constant [32 x i8] c"trickle-charge-current-microamp\00", align 1
@.str.18 = private unnamed_addr constant [27 x i8] c"precharge-current-microamp\00", align 1
@.str.19 = private unnamed_addr constant [32 x i8] c"precharge-upper-limit-microvolt\00", align 1
@.str.20 = private unnamed_addr constant [29 x i8] c"charge-term-current-microamp\00", align 1
@.str.21 = private unnamed_addr constant [28 x i8] c"re-charge-voltage-microvolt\00", align 1
@.str.22 = private unnamed_addr constant [33 x i8] c"over-voltage-threshold-microvolt\00", align 1
@.str.23 = private unnamed_addr constant [37 x i8] c"constant-charge-current-max-microamp\00", align 1
@.str.24 = private unnamed_addr constant [38 x i8] c"constant-charge-voltage-max-microvolt\00", align 1
@.str.25 = private unnamed_addr constant [39 x i8] c"factory-internal-resistance-micro-ohms\00", align 1
@.str.26 = private unnamed_addr constant [16 x i8] c"ambient-celsius\00", align 1
@.str.27 = private unnamed_addr constant [14 x i8] c"alert-celsius\00", align 1
@.str.28 = private unnamed_addr constant [24 x i8] c"operating-range-celsius\00", align 1
@.str.29 = private unnamed_addr constant [21 x i8] c"ocv-capacity-celsius\00", align 1
@.str.30 = private unnamed_addr constant [29 x i8] c"Too many temperature values\0A\00", align 1
@.str.31 = private unnamed_addr constant [22 x i8] c"ocv-capacity-table-%d\00", align 1
@.str.32 = private unnamed_addr constant [18 x i8] c"failed to get %s\0A\00", align 1
@.str.33 = private unnamed_addr constant [22 x i8] c"resistance-temp-table\00", align 1
@__kstrtab_power_supply_get_battery_info = external dso_local constant [0 x i8], align 1
@__kstrtabns_power_supply_get_battery_info = external dso_local constant [0 x i8], align 1
@__ksymtab_power_supply_get_battery_info = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @power_supply_get_battery_info to i32), ptr @__kstrtab_power_supply_get_battery_info, ptr @__kstrtabns_power_supply_get_battery_info }, section "___ksymtab_gpl+power_supply_get_battery_info", align 4
@__kstrtab_power_supply_put_battery_info = external dso_local constant [0 x i8], align 1
@__kstrtabns_power_supply_put_battery_info = external dso_local constant [0 x i8], align 1
@__ksymtab_power_supply_put_battery_info = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @power_supply_put_battery_info to i32), ptr @__kstrtab_power_supply_put_battery_info, ptr @__kstrtabns_power_supply_put_battery_info }, section "___ksymtab_gpl+power_supply_put_battery_info", align 4
@__kstrtab_power_supply_temp2resist_simple = external dso_local constant [0 x i8], align 1
@__kstrtabns_power_supply_temp2resist_simple = external dso_local constant [0 x i8], align 1
@__ksymtab_power_supply_temp2resist_simple = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @power_supply_temp2resist_simple to i32), ptr @__kstrtab_power_supply_temp2resist_simple, ptr @__kstrtabns_power_supply_temp2resist_simple }, section "___ksymtab_gpl+power_supply_temp2resist_simple", align 4
@__kstrtab_power_supply_ocv2cap_simple = external dso_local constant [0 x i8], align 1
@__kstrtabns_power_supply_ocv2cap_simple = external dso_local constant [0 x i8], align 1
@__ksymtab_power_supply_ocv2cap_simple = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @power_supply_ocv2cap_simple to i32), ptr @__kstrtab_power_supply_ocv2cap_simple, ptr @__kstrtabns_power_supply_ocv2cap_simple }, section "___ksymtab_gpl+power_supply_ocv2cap_simple", align 4
@__kstrtab_power_supply_find_ocv2cap_table = external dso_local constant [0 x i8], align 1
@__kstrtabns_power_supply_find_ocv2cap_table = external dso_local constant [0 x i8], align 1
@__ksymtab_power_supply_find_ocv2cap_table = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @power_supply_find_ocv2cap_table to i32), ptr @__kstrtab_power_supply_find_ocv2cap_table, ptr @__kstrtabns_power_supply_find_ocv2cap_table }, section "___ksymtab_gpl+power_supply_find_ocv2cap_table", align 4
@__kstrtab_power_supply_batinfo_ocv2cap = external dso_local constant [0 x i8], align 1
@__kstrtabns_power_supply_batinfo_ocv2cap = external dso_local constant [0 x i8], align 1
@__ksymtab_power_supply_batinfo_ocv2cap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @power_supply_batinfo_ocv2cap to i32), ptr @__kstrtab_power_supply_batinfo_ocv2cap, ptr @__kstrtabns_power_supply_batinfo_ocv2cap }, section "___ksymtab_gpl+power_supply_batinfo_ocv2cap", align 4
@__kstrtab_power_supply_get_property = external dso_local constant [0 x i8], align 1
@__kstrtabns_power_supply_get_property = external dso_local constant [0 x i8], align 1
@__ksymtab_power_supply_get_property = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @power_supply_get_property to i32), ptr @__kstrtab_power_supply_get_property, ptr @__kstrtabns_power_supply_get_property }, section "___ksymtab_gpl+power_supply_get_property", align 4
@__kstrtab_power_supply_set_property = external dso_local constant [0 x i8], align 1
@__kstrtabns_power_supply_set_property = external dso_local constant [0 x i8], align 1
@__ksymtab_power_supply_set_property = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @power_supply_set_property to i32), ptr @__kstrtab_power_supply_set_property, ptr @__kstrtabns_power_supply_set_property }, section "___ksymtab_gpl+power_supply_set_property", align 4
@__kstrtab_power_supply_property_is_writeable = external dso_local constant [0 x i8], align 1
@__kstrtabns_power_supply_property_is_writeable = external dso_local constant [0 x i8], align 1
@__ksymtab_power_supply_property_is_writeable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @power_supply_property_is_writeable to i32), ptr @__kstrtab_power_supply_property_is_writeable, ptr @__kstrtabns_power_supply_property_is_writeable }, section "___ksymtab_gpl+power_supply_property_is_writeable", align 4
@__kstrtab_power_supply_external_power_changed = external dso_local constant [0 x i8], align 1
@__kstrtabns_power_supply_external_power_changed = external dso_local constant [0 x i8], align 1
@__ksymtab_power_supply_external_power_changed = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @power_supply_external_power_changed to i32), ptr @__kstrtab_power_supply_external_power_changed, ptr @__kstrtabns_power_supply_external_power_changed }, section "___ksymtab_gpl+power_supply_external_power_changed", align 4
@.str.34 = private unnamed_addr constant [7 x i8] c"powers\00", align 1
@__kstrtab_power_supply_powers = external dso_local constant [0 x i8], align 1
@__kstrtabns_power_supply_powers = external dso_local constant [0 x i8], align 1
@__ksymtab_power_supply_powers = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @power_supply_powers to i32), ptr @__kstrtab_power_supply_powers, ptr @__kstrtabns_power_supply_powers }, section "___ksymtab_gpl+power_supply_powers", align 4
@__kstrtab_power_supply_reg_notifier = external dso_local constant [0 x i8], align 1
@__kstrtabns_power_supply_reg_notifier = external dso_local constant [0 x i8], align 1
@__ksymtab_power_supply_reg_notifier = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @power_supply_reg_notifier to i32), ptr @__kstrtab_power_supply_reg_notifier, ptr @__kstrtabns_power_supply_reg_notifier }, section "___ksymtab_gpl+power_supply_reg_notifier", align 4
@__kstrtab_power_supply_unreg_notifier = external dso_local constant [0 x i8], align 1
@__kstrtabns_power_supply_unreg_notifier = external dso_local constant [0 x i8], align 1
@__ksymtab_power_supply_unreg_notifier = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @power_supply_unreg_notifier to i32), ptr @__kstrtab_power_supply_unreg_notifier, ptr @__kstrtabns_power_supply_unreg_notifier }, section "___ksymtab_gpl+power_supply_unreg_notifier", align 4
@__kstrtab_power_supply_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_power_supply_register = external dso_local constant [0 x i8], align 1
@__ksymtab_power_supply_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @power_supply_register to i32), ptr @__kstrtab_power_supply_register, ptr @__kstrtabns_power_supply_register }, section "___ksymtab_gpl+power_supply_register", align 4
@__kstrtab_power_supply_register_no_ws = external dso_local constant [0 x i8], align 1
@__kstrtabns_power_supply_register_no_ws = external dso_local constant [0 x i8], align 1
@__ksymtab_power_supply_register_no_ws = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @power_supply_register_no_ws to i32), ptr @__kstrtab_power_supply_register_no_ws, ptr @__kstrtabns_power_supply_register_no_ws }, section "___ksymtab_gpl+power_supply_register_no_ws", align 4
@.str.35 = private unnamed_addr constant [26 x i8] c"devm_power_supply_release\00", align 1
@__kstrtab_devm_power_supply_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_power_supply_register = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_power_supply_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_power_supply_register to i32), ptr @__kstrtab_devm_power_supply_register, ptr @__kstrtabns_devm_power_supply_register }, section "___ksymtab_gpl+devm_power_supply_register", align 4
@__kstrtab_devm_power_supply_register_no_ws = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_power_supply_register_no_ws = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_power_supply_register_no_ws = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_power_supply_register_no_ws to i32), ptr @__kstrtab_devm_power_supply_register_no_ws, ptr @__kstrtabns_devm_power_supply_register_no_ws }, section "___ksymtab_gpl+devm_power_supply_register_no_ws", align 4
@.str.36 = private unnamed_addr constant [41 x i8] c"drivers/power/supply/power_supply_core.c\00", align 1
@__kstrtab_power_supply_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_power_supply_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_power_supply_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @power_supply_unregister to i32), ptr @__kstrtab_power_supply_unregister, ptr @__kstrtabns_power_supply_unregister }, section "___ksymtab_gpl+power_supply_unregister", align 4
@__kstrtab_power_supply_get_drvdata = external dso_local constant [0 x i8], align 1
@__kstrtabns_power_supply_get_drvdata = external dso_local constant [0 x i8], align 1
@__ksymtab_power_supply_get_drvdata = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @power_supply_get_drvdata to i32), ptr @__kstrtab_power_supply_get_drvdata, ptr @__kstrtabns_power_supply_get_drvdata }, section "___ksymtab_gpl+power_supply_get_drvdata", align 4
@__initcall__kmod_power_supply__166_1428_power_supply_class_init4 = internal global ptr @power_supply_class_init, section ".initcall4.init", align 4
@__exitcall_power_supply_class_exit = internal global ptr @power_supply_class_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description167 = internal constant [62 x i8] c"power_supply.description=Universal power supply monitor class\00", section ".modinfo", align 1
@__UNIQUE_ID_author168 = internal constant [96 x i8] c"power_supply.author=Ian Molton <spyro@f2s.com>, Szabolcs Gyurko, Anton Vorontsov <cbou@mail.ru>\00", section ".modinfo", align 1
@__UNIQUE_ID_file169 = internal constant [52 x i8] c"power_supply.file=drivers/power/supply/power_supply\00", section ".modinfo", align 1
@__UNIQUE_ID_license170 = internal constant [25 x i8] c"power_supply.license=GPL\00", section ".modinfo", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.37 = private unnamed_addr constant [46 x i8] c"\014%s: Expected proper parent device for '%s'\0A\00", align 1
@__func__.__power_supply_register = private unnamed_addr constant [24 x i8] c"__power_supply_register\00", align 1
@power_supply_dev_type = internal global %struct.device_type zeroinitializer, align 4
@.str.38 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@system_power_efficient_wq = external dso_local local_unnamed_addr global ptr, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@of_fwnode_ops = external dso_local constant %struct.fwnode_operations, align 4
@.str.39 = private unnamed_addr constant [15 x i8] c"power-supplies\00", align 1
@psy_tzd_ops = internal global %struct.thermal_zone_device_ops { ptr null, ptr null, ptr @power_supply_read_temp, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@psy_tcd_ops = internal constant %struct.thermal_cooling_device_ops { ptr @ps_get_max_charge_cntl_limit, ptr @ps_get_cur_charge_cntl_limit, ptr @ps_set_cur_charge_cntl_limit, ptr null, ptr null, ptr null }, align 4
@power_supply_class_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.40 = private unnamed_addr constant [13 x i8] c"power_supply\00", align 1
@llvm.compiler.used = appending global [37 x ptr] [ptr @__UNIQUE_ID_author168, ptr @__UNIQUE_ID_description167, ptr @__UNIQUE_ID_file169, ptr @__UNIQUE_ID_license170, ptr @__exitcall_power_supply_class_exit, ptr @__initcall__kmod_power_supply__166_1428_power_supply_class_init4, ptr @__ksymtab_devm_power_supply_get_by_phandle, ptr @__ksymtab_devm_power_supply_register, ptr @__ksymtab_devm_power_supply_register_no_ws, ptr @__ksymtab_power_supply_am_i_supplied, ptr @__ksymtab_power_supply_batinfo_ocv2cap, ptr @__ksymtab_power_supply_changed, ptr @__ksymtab_power_supply_class, ptr @__ksymtab_power_supply_external_power_changed, ptr @__ksymtab_power_supply_find_ocv2cap_table, ptr @__ksymtab_power_supply_get_battery_info, ptr @__ksymtab_power_supply_get_by_name, ptr @__ksymtab_power_supply_get_by_phandle, ptr @__ksymtab_power_supply_get_drvdata, ptr @__ksymtab_power_supply_get_property, ptr @__ksymtab_power_supply_is_system_supplied, ptr @__ksymtab_power_supply_notifier, ptr @__ksymtab_power_supply_ocv2cap_simple, ptr @__ksymtab_power_supply_powers, ptr @__ksymtab_power_supply_property_is_writeable, ptr @__ksymtab_power_supply_put, ptr @__ksymtab_power_supply_put_battery_info, ptr @__ksymtab_power_supply_reg_notifier, ptr @__ksymtab_power_supply_register, ptr @__ksymtab_power_supply_register_no_ws, ptr @__ksymtab_power_supply_set_battery_charged, ptr @__ksymtab_power_supply_set_input_current_limit_from_supplier, ptr @__ksymtab_power_supply_set_property, ptr @__ksymtab_power_supply_temp2resist_simple, ptr @__ksymtab_power_supply_unreg_notifier, ptr @__ksymtab_power_supply_unregister, ptr @power_supply_class_exit], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @power_supply_changed(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.power_supply, ptr %0, i32 0, i32 10
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #15
  %4 = getelementptr inbounds %struct.power_supply, ptr %0, i32 0, i32 11
  store i8 1, ptr %4, align 8
  %5 = getelementptr inbounds %struct.power_supply, ptr %0, i32 0, i32 7
  tail call void @pm_stay_awake(ptr noundef %5) #15
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %3) #15
  %6 = getelementptr inbounds %struct.power_supply, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr @system_wq, align 4
  %8 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %7, ptr noundef %6) #15
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_stay_awake(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @power_supply_am_i_supplied(ptr noundef %0) #0 {
  %2 = alloca %struct.psy_am_i_supplied_data, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #15
  store ptr %0, ptr %2, align 8
  %3 = getelementptr inbounds %struct.psy_am_i_supplied_data, ptr %2, i32 0, i32 1
  store i32 0, ptr %3, align 4
  %4 = load ptr, ptr @power_supply_class, align 4
  %5 = call i32 @class_for_each_device(ptr noundef %4, ptr noundef null, ptr noundef nonnull %2, ptr noundef nonnull @__power_supply_am_i_supplied) #15
  %6 = load i32, ptr %3, align 4
  %7 = icmp eq i32 %6, 0
  %8 = select i1 %7, i32 -19, i32 %5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #15
  ret i32 %8
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @class_for_each_device(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @__power_supply_am_i_supplied(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #0 {
  %3 = alloca %union.power_supply_propval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #15
  store i32 0, ptr %3, align 4
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %1, align 4
  %7 = getelementptr inbounds %struct.power_supply, ptr %6, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.power_supply, ptr %5, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %59, label %31

14:                                               ; preds = %2
  %15 = load ptr, ptr %5, align 8
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %59, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.power_supply, ptr %6, i32 0, i32 4
  %20 = load i32, ptr %19, align 8
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %59, label %25

22:                                               ; preds = %25
  %23 = add nuw i32 %26, 1
  %24 = icmp eq i32 %23, %20
  br i1 %24, label %59, label %25

25:                                               ; preds = %22, %18
  %26 = phi i32 [ %23, %22 ], [ 0, %18 ]
  %27 = getelementptr ptr, ptr %8, i32 %26
  %28 = load ptr, ptr %27, align 4
  %29 = tail call i32 @strcmp(ptr noundef nonnull %16, ptr noundef %28) #15
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %48, label %22

31:                                               ; preds = %10
  %32 = load ptr, ptr %6, align 8
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %59, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.power_supply, ptr %5, i32 0, i32 2
  %37 = load i32, ptr %36, align 8
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %59, label %42

39:                                               ; preds = %42
  %40 = add nuw i32 %43, 1
  %41 = icmp eq i32 %40, %37
  br i1 %41, label %59, label %42

42:                                               ; preds = %39, %35
  %43 = phi i32 [ %40, %39 ], [ 0, %35 ]
  %44 = getelementptr ptr, ptr %12, i32 %43
  %45 = load ptr, ptr %44, align 4
  %46 = tail call i32 @strcmp(ptr noundef %45, ptr noundef nonnull %33) #15
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %39

48:                                               ; preds = %42, %25
  %49 = getelementptr inbounds %struct.psy_am_i_supplied_data, ptr %1, i32 0, i32 1
  %50 = load i32, ptr %49, align 4
  %51 = add i32 %50, 1
  store i32 %51, ptr %49, align 4
  %52 = load ptr, ptr %5, align 8
  %53 = getelementptr inbounds %struct.power_supply_desc, ptr %52, i32 0, i32 6
  %54 = load ptr, ptr %53, align 4
  %55 = call i32 %54(ptr noundef %5, i32 noundef 4, ptr noundef nonnull %3) #15
  %56 = icmp eq i32 %55, 0
  %57 = load i32, ptr %3, align 4
  %58 = select i1 %56, i32 %57, i32 0
  br label %59

59:                                               ; preds = %48, %39, %35, %31, %22, %18, %14, %10
  %60 = phi i32 [ %58, %48 ], [ 0, %10 ], [ 0, %14 ], [ 0, %31 ], [ 0, %35 ], [ 0, %18 ], [ 0, %39 ], [ 0, %22 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #15
  ret i32 %60
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @power_supply_is_system_supplied() #0 {
  %1 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #15
  store i32 0, ptr %1, align 4
  %2 = load ptr, ptr @power_supply_class, align 4
  %3 = call i32 @class_for_each_device(ptr noundef %2, ptr noundef null, ptr noundef nonnull %1, ptr noundef nonnull @__power_supply_is_system_supplied) #15
  %4 = load i32, ptr %1, align 4
  %5 = icmp eq i32 %4, 0
  %6 = select i1 %5, i32 1, i32 %3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #15
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @__power_supply_is_system_supplied(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #0 {
  %3 = alloca %union.power_supply_propval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #15
  store i32 0, ptr %3, align 4
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = load i32, ptr %1, align 4
  %7 = add i32 %6, 1
  store i32 %7, ptr %1, align 4
  %8 = load ptr, ptr %5, align 8
  %9 = getelementptr inbounds %struct.power_supply_desc, ptr %8, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %19, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.power_supply_desc, ptr %8, i32 0, i32 6
  %14 = load ptr, ptr %13, align 4
  %15 = call i32 %14(ptr noundef %5, i32 noundef 4, ptr noundef nonnull %3) #15
  %16 = icmp eq i32 %15, 0
  %17 = load i32, ptr %3, align 4
  %18 = select i1 %16, i32 %17, i32 0
  br label %19

19:                                               ; preds = %12, %2
  %20 = phi i32 [ 0, %2 ], [ %18, %12 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #15
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @power_supply_set_input_current_limit_from_supplier(ptr noundef %0) #0 {
  %2 = alloca %union.power_supply_propval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #15
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.power_supply_desc, ptr %3, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %19, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr @power_supply_class, align 4
  %9 = tail call i32 @class_for_each_device(ptr noundef %8, ptr noundef null, ptr noundef %0, ptr noundef nonnull @__power_supply_get_supplier_max_current) #15
  %10 = icmp slt i32 %9, 1
  br i1 %10, label %11, label %14

11:                                               ; preds = %7
  %12 = icmp eq i32 %9, 0
  %13 = select i1 %12, i32 -19, i32 %9
  br label %19

14:                                               ; preds = %7
  store i32 %9, ptr %2, align 4
  %15 = load ptr, ptr %0, align 8
  %16 = getelementptr inbounds %struct.power_supply_desc, ptr %15, i32 0, i32 7
  %17 = load ptr, ptr %16, align 4
  %18 = call i32 %17(ptr noundef %0, i32 noundef 38, ptr noundef nonnull %2) #15
  br label %19

19:                                               ; preds = %14, %11, %1
  %20 = phi i32 [ %13, %11 ], [ %18, %14 ], [ -22, %1 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #15
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @__power_supply_get_supplier_max_current(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %union.power_supply_propval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #15
  store i32 0, ptr %3, align 4
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.power_supply, ptr %1, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.power_supply, ptr %5, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %57, label %30

13:                                               ; preds = %2
  %14 = load ptr, ptr %5, align 8
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %57, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.power_supply, ptr %1, i32 0, i32 4
  %19 = load i32, ptr %18, align 8
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %57, label %24

21:                                               ; preds = %24
  %22 = add nuw i32 %25, 1
  %23 = icmp eq i32 %22, %19
  br i1 %23, label %57, label %24

24:                                               ; preds = %21, %17
  %25 = phi i32 [ %22, %21 ], [ 0, %17 ]
  %26 = getelementptr ptr, ptr %7, i32 %25
  %27 = load ptr, ptr %26, align 4
  %28 = tail call i32 @strcmp(ptr noundef nonnull %15, ptr noundef %27) #15
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %49, label %21

30:                                               ; preds = %9
  %31 = load ptr, ptr %1, align 8
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %57, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.power_supply, ptr %5, i32 0, i32 2
  %36 = load i32, ptr %35, align 8
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %57, label %41

38:                                               ; preds = %41
  %39 = add nuw i32 %42, 1
  %40 = icmp eq i32 %39, %36
  br i1 %40, label %57, label %41

41:                                               ; preds = %38, %34
  %42 = phi i32 [ %39, %38 ], [ 0, %34 ]
  %43 = getelementptr ptr, ptr %11, i32 %42
  %44 = load ptr, ptr %43, align 4
  %45 = tail call i32 @strcmp(ptr noundef %44, ptr noundef nonnull %32) #15
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %38

47:                                               ; preds = %41
  %48 = load ptr, ptr %5, align 8
  br label %49

49:                                               ; preds = %47, %24
  %50 = phi ptr [ %48, %47 ], [ %14, %24 ]
  %51 = getelementptr inbounds %struct.power_supply_desc, ptr %50, i32 0, i32 6
  %52 = load ptr, ptr %51, align 4
  %53 = call i32 %52(ptr noundef %5, i32 noundef 16, ptr noundef nonnull %3) #15
  %54 = icmp eq i32 %53, 0
  %55 = load i32, ptr %3, align 4
  %56 = select i1 %54, i32 %55, i32 0
  br label %57

57:                                               ; preds = %49, %38, %34, %30, %21, %17, %13, %9
  %58 = phi i32 [ %56, %49 ], [ 0, %9 ], [ 0, %13 ], [ 0, %30 ], [ 0, %34 ], [ 0, %17 ], [ 0, %38 ], [ 0, %21 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #15
  ret i32 %58
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @power_supply_set_battery_charged(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.power_supply, ptr %0, i32 0, i32 14
  %3 = load volatile i32, ptr %2, align 4
  %4 = icmp sgt i32 %3, -1
  br i1 %4, label %5, label %15

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8
  %7 = getelementptr inbounds %struct.power_supply_desc, ptr %6, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %15

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.power_supply_desc, ptr %6, i32 0, i32 10
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void %12(ptr noundef %0) #15
  br label %15

15:                                               ; preds = %14, %10, %5, %1
  %16 = phi i32 [ 0, %14 ], [ -22, %10 ], [ -22, %5 ], [ -22, %1 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @power_supply_get_by_name(ptr noundef %0) #0 {
  %2 = load ptr, ptr @power_supply_class, align 4
  %3 = tail call ptr @class_find_device(ptr noundef %2, ptr noundef null, ptr noundef %0, ptr noundef nonnull @power_supply_match_device_by_name) #15
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.power_supply, ptr %7, i32 0, i32 14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %8) #15, !srcloc !8
  %9 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %8, ptr %8, i32 1, ptr elementtype(i32) %8) #15, !srcloc !9
  br label %10

10:                                               ; preds = %5, %1
  %11 = phi ptr [ %7, %5 ], [ null, %1 ]
  ret ptr %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @class_find_device(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @power_supply_match_device_by_name(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #4 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @strcmp(ptr noundef %6, ptr noundef %1)
  %8 = icmp eq i32 %7, 0
  %9 = zext i1 %8 to i32
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @power_supply_put(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.power_supply, ptr %0, i32 0, i32 14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #15, !srcloc !8
  %3 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %2, ptr %2, i32 1, ptr elementtype(i32) %2) #15, !srcloc !10
  %4 = getelementptr inbounds %struct.power_supply, ptr %0, i32 0, i32 7
  tail call void @put_device(ptr noundef %4) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @power_supply_get_by_phandle(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.of_phandle_args, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %3, i8 0, i32 72, i1 false) #15, !annotation !11
  %4 = call i32 @__of_parse_phandle_with_args(ptr noundef %0, ptr noundef %1, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %3) #15
  %5 = icmp ne i32 %4, 0
  %6 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #15
  %7 = icmp eq ptr %6, null
  %8 = select i1 %5, i1 true, i1 %7
  br i1 %8, label %18, label %9

9:                                                ; preds = %2
  %10 = load ptr, ptr @power_supply_class, align 4
  %11 = call ptr @class_find_device(ptr noundef %10, ptr noundef null, ptr noundef nonnull %6, ptr noundef nonnull @power_supply_match_device_node) #15
  call void @of_node_put(ptr noundef nonnull %6) #15
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 8
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds %struct.power_supply, ptr %15, i32 0, i32 14
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %16) #15, !srcloc !8
  %17 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %16, ptr %16, i32 1, ptr elementtype(i32) %16) #15, !srcloc !9
  br label %18

18:                                               ; preds = %13, %9, %2
  %19 = phi ptr [ %15, %13 ], [ null, %9 ], [ inttoptr (i32 -19 to ptr), %2 ]
  ret ptr %19
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @power_supply_match_device_node(ptr nocapture noundef readonly %0, ptr noundef readnone %1) #5 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 25
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, %1
  %10 = zext i1 %9 to i32
  br label %11

11:                                               ; preds = %6, %2
  %12 = phi i32 [ 0, %2 ], [ %10, %6 ]
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @devm_power_supply_get_by_phandle(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.of_phandle_args, align 4
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %32, label %7

7:                                                ; preds = %2
  %8 = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @devm_power_supply_put, i32 noundef 4, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str) #15
  %9 = icmp eq ptr %8, null
  br i1 %9, label %32, label %10

10:                                               ; preds = %7
  %11 = load ptr, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %3, i8 0, i32 72, i1 false) #15, !annotation !11
  %12 = call i32 @__of_parse_phandle_with_args(ptr noundef %11, ptr noundef %1, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %3) #15
  %13 = icmp ne i32 %12, 0
  %14 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #15
  %15 = icmp eq ptr %14, null
  %16 = select i1 %13, i1 true, i1 %15
  br i1 %16, label %29, label %17

17:                                               ; preds = %10
  %18 = load ptr, ptr @power_supply_class, align 4
  %19 = call ptr @class_find_device(ptr noundef %18, ptr noundef null, ptr noundef nonnull %14, ptr noundef nonnull @power_supply_match_device_node) #15
  call void @of_node_put(ptr noundef nonnull %14) #15
  %20 = icmp eq ptr %19, null
  br i1 %20, label %29, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.device, ptr %19, i32 0, i32 8
  %23 = load ptr, ptr %22, align 8
  %24 = getelementptr inbounds %struct.power_supply, ptr %23, i32 0, i32 14
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %24) #15, !srcloc !8
  %25 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %24, ptr %24, i32 1, ptr elementtype(i32) %24) #15, !srcloc !9
  %26 = icmp eq ptr %23, null
  %27 = icmp ugt ptr %23, inttoptr (i32 -4096 to ptr)
  %28 = or i1 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %21, %17, %10
  %30 = phi ptr [ %23, %21 ], [ inttoptr (i32 -19 to ptr), %10 ], [ null, %17 ]
  call void @devres_free(ptr noundef nonnull %8) #15
  br label %32

31:                                               ; preds = %21
  store ptr %23, ptr %8, align 4
  call void @devres_add(ptr noundef %0, ptr noundef nonnull %8) #15
  br label %32

32:                                               ; preds = %31, %29, %7, %2
  %33 = phi ptr [ %23, %31 ], [ %30, %29 ], [ inttoptr (i32 -19 to ptr), %2 ], [ inttoptr (i32 -12 to ptr), %7 ]
  ret ptr %33
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @__devres_alloc_node(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @devm_power_supply_put(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr %1, align 4
  %4 = getelementptr inbounds %struct.power_supply, ptr %3, i32 0, i32 14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %4) #15, !srcloc !8
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %4, ptr %4, i32 1, ptr elementtype(i32) %4) #15, !srcloc !10
  %6 = getelementptr inbounds %struct.power_supply, ptr %3, i32 0, i32 7
  tail call void @put_device(ptr noundef %6) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @power_supply_get_battery_info(ptr noundef %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca %struct.of_phandle_args, align 4
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #15
  store ptr null, ptr %4, align 4, !annotation !11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #15
  store i32 0, ptr %5, align 4, !annotation !11
  %7 = getelementptr inbounds %struct.power_supply, ptr %0, i32 0, i32 7
  %8 = tail call noalias ptr @devm_kmalloc(ptr noundef %7, i32 noundef 328, i32 noundef 3264) #15
  %9 = icmp eq ptr %8, null
  br i1 %9, label %253, label %10

10:                                               ; preds = %2
  store i32 0, ptr %8, align 4
  %11 = getelementptr inbounds %struct.power_supply_battery_info, ptr %8, i32 0, i32 1
  store i32 -22, ptr %11, align 4
  %12 = getelementptr inbounds %struct.power_supply_battery_info, ptr %8, i32 0, i32 2
  store i32 -22, ptr %12, align 4
  %13 = getelementptr inbounds %struct.power_supply_battery_info, ptr %8, i32 0, i32 3
  store i32 -22, ptr %13, align 4
  %14 = getelementptr inbounds %struct.power_supply_battery_info, ptr %8, i32 0, i32 4
  store i32 -22, ptr %14, align 4
  %15 = getelementptr inbounds %struct.power_supply_battery_info, ptr %8, i32 0, i32 6
  store i32 -22, ptr %15, align 4
  %16 = getelementptr inbounds %struct.power_supply_battery_info, ptr %8, i32 0, i32 8
  store i32 -22, ptr %16, align 4
  %17 = getelementptr inbounds %struct.power_supply_battery_info, ptr %8, i32 0, i32 11
  store i32 -22, ptr %17, align 4
  %18 = getelementptr inbounds %struct.power_supply_battery_info, ptr %8, i32 0, i32 12
  store i32 -22, ptr %18, align 4
  %19 = getelementptr inbounds %struct.power_supply_battery_info, ptr %8, i32 0, i32 5
  store i32 -22, ptr %19, align 4
  %20 = getelementptr inbounds %struct.power_supply_battery_info, ptr %8, i32 0, i32 7
  store i32 -22, ptr %20, align 4
  %21 = getelementptr inbounds %struct.power_supply_battery_info, ptr %8, i32 0, i32 9
  store i32 -22, ptr %21, align 4
  %22 = getelementptr inbounds %struct.power_supply_battery_info, ptr %8, i32 0, i32 10
  store i32 -22, ptr %22, align 4
  %23 = getelementptr inbounds %struct.power_supply_battery_info, ptr %8, i32 0, i32 15
  store i32 -2147483648, ptr %23, align 4
  %24 = getelementptr inbounds %struct.power_supply_battery_info, ptr %8, i32 0, i32 16
  store i32 2147483647, ptr %24, align 4
  %25 = getelementptr inbounds %struct.power_supply_battery_info, ptr %8, i32 0, i32 17
  store i32 -2147483648, ptr %25, align 4
  %26 = getelementptr inbounds %struct.power_supply_battery_info, ptr %8, i32 0, i32 18
  store i32 2147483647, ptr %26, align 4
  %27 = getelementptr inbounds %struct.power_supply_battery_info, ptr %8, i32 0, i32 19
  store i32 -2147483648, ptr %27, align 4
  %28 = getelementptr inbounds %struct.power_supply_battery_info, ptr %8, i32 0, i32 20
  store i32 2147483647, ptr %28, align 4
  %29 = getelementptr inbounds %struct.power_supply_battery_info, ptr %8, i32 0, i32 13
  store i32 -22, ptr %29, align 4
  %30 = getelementptr inbounds %struct.power_supply_battery_info, ptr %8, i32 0, i32 23
  store ptr null, ptr %30, align 4
  %31 = getelementptr %struct.power_supply_battery_info, ptr %8, i32 0, i32 21, i32 0
  store ptr null, ptr %31, align 4
  %32 = getelementptr %struct.power_supply_battery_info, ptr %8, i32 0, i32 14, i32 0
  store i32 -22, ptr %32, align 4
  %33 = getelementptr %struct.power_supply_battery_info, ptr %8, i32 0, i32 22, i32 0
  store i32 -22, ptr %33, align 4
  %34 = getelementptr %struct.power_supply_battery_info, ptr %8, i32 0, i32 21, i32 1
  store ptr null, ptr %34, align 4
  %35 = getelementptr %struct.power_supply_battery_info, ptr %8, i32 0, i32 14, i32 1
  store i32 -22, ptr %35, align 4
  %36 = getelementptr %struct.power_supply_battery_info, ptr %8, i32 0, i32 22, i32 1
  store i32 -22, ptr %36, align 4
  %37 = getelementptr %struct.power_supply_battery_info, ptr %8, i32 0, i32 21, i32 2
  store ptr null, ptr %37, align 4
  %38 = getelementptr %struct.power_supply_battery_info, ptr %8, i32 0, i32 14, i32 2
  store i32 -22, ptr %38, align 4
  %39 = getelementptr %struct.power_supply_battery_info, ptr %8, i32 0, i32 22, i32 2
  store i32 -22, ptr %39, align 4
  %40 = getelementptr %struct.power_supply_battery_info, ptr %8, i32 0, i32 21, i32 3
  store ptr null, ptr %40, align 4
  %41 = getelementptr %struct.power_supply_battery_info, ptr %8, i32 0, i32 14, i32 3
  store i32 -22, ptr %41, align 4
  %42 = getelementptr %struct.power_supply_battery_info, ptr %8, i32 0, i32 22, i32 3
  store i32 -22, ptr %42, align 4
  %43 = getelementptr %struct.power_supply_battery_info, ptr %8, i32 0, i32 21, i32 4
  store ptr null, ptr %43, align 4
  %44 = getelementptr %struct.power_supply_battery_info, ptr %8, i32 0, i32 14, i32 4
  store i32 -22, ptr %44, align 4
  %45 = getelementptr %struct.power_supply_battery_info, ptr %8, i32 0, i32 22, i32 4
  store i32 -22, ptr %45, align 4
  %46 = getelementptr %struct.power_supply_battery_info, ptr %8, i32 0, i32 21, i32 5
  store ptr null, ptr %46, align 4
  %47 = getelementptr %struct.power_supply_battery_info, ptr %8, i32 0, i32 14, i32 5
  store i32 -22, ptr %47, align 4
  %48 = getelementptr %struct.power_supply_battery_info, ptr %8, i32 0, i32 22, i32 5
  store i32 -22, ptr %48, align 4
  %49 = getelementptr %struct.power_supply_battery_info, ptr %8, i32 0, i32 21, i32 6
  store ptr null, ptr %49, align 4
  %50 = getelementptr %struct.power_supply_battery_info, ptr %8, i32 0, i32 14, i32 6
  store i32 -22, ptr %50, align 4
  %51 = getelementptr %struct.power_supply_battery_info, ptr %8, i32 0, i32 22, i32 6
  store i32 -22, ptr %51, align 4
  %52 = getelementptr %struct.power_supply_battery_info, ptr %8, i32 0, i32 21, i32 7
  store ptr null, ptr %52, align 4
  %53 = getelementptr %struct.power_supply_battery_info, ptr %8, i32 0, i32 14, i32 7
  store i32 -22, ptr %53, align 4
  %54 = getelementptr %struct.power_supply_battery_info, ptr %8, i32 0, i32 22, i32 7
  store i32 -22, ptr %54, align 4
  %55 = getelementptr %struct.power_supply_battery_info, ptr %8, i32 0, i32 21, i32 8
  store ptr null, ptr %55, align 4
  %56 = getelementptr %struct.power_supply_battery_info, ptr %8, i32 0, i32 14, i32 8
  store i32 -22, ptr %56, align 4
  %57 = getelementptr %struct.power_supply_battery_info, ptr %8, i32 0, i32 22, i32 8
  store i32 -22, ptr %57, align 4
  %58 = getelementptr %struct.power_supply_battery_info, ptr %8, i32 0, i32 21, i32 9
  store ptr null, ptr %58, align 4
  %59 = getelementptr %struct.power_supply_battery_info, ptr %8, i32 0, i32 14, i32 9
  store i32 -22, ptr %59, align 4
  %60 = getelementptr %struct.power_supply_battery_info, ptr %8, i32 0, i32 22, i32 9
  store i32 -22, ptr %60, align 4
  %61 = getelementptr %struct.power_supply_battery_info, ptr %8, i32 0, i32 21, i32 10
  store ptr null, ptr %61, align 4
  %62 = getelementptr %struct.power_supply_battery_info, ptr %8, i32 0, i32 14, i32 10
  store i32 -22, ptr %62, align 4
  %63 = getelementptr %struct.power_supply_battery_info, ptr %8, i32 0, i32 22, i32 10
  store i32 -22, ptr %63, align 4
  %64 = getelementptr %struct.power_supply_battery_info, ptr %8, i32 0, i32 21, i32 11
  store ptr null, ptr %64, align 4
  %65 = getelementptr %struct.power_supply_battery_info, ptr %8, i32 0, i32 14, i32 11
  store i32 -22, ptr %65, align 4
  %66 = getelementptr %struct.power_supply_battery_info, ptr %8, i32 0, i32 22, i32 11
  store i32 -22, ptr %66, align 4
  %67 = getelementptr %struct.power_supply_battery_info, ptr %8, i32 0, i32 21, i32 12
  store ptr null, ptr %67, align 4
  %68 = getelementptr %struct.power_supply_battery_info, ptr %8, i32 0, i32 14, i32 12
  store i32 -22, ptr %68, align 4
  %69 = getelementptr %struct.power_supply_battery_info, ptr %8, i32 0, i32 22, i32 12
  store i32 -22, ptr %69, align 4
  %70 = getelementptr %struct.power_supply_battery_info, ptr %8, i32 0, i32 21, i32 13
  store ptr null, ptr %70, align 4
  %71 = getelementptr %struct.power_supply_battery_info, ptr %8, i32 0, i32 14, i32 13
  store i32 -22, ptr %71, align 4
  %72 = getelementptr %struct.power_supply_battery_info, ptr %8, i32 0, i32 22, i32 13
  store i32 -22, ptr %72, align 4
  %73 = getelementptr %struct.power_supply_battery_info, ptr %8, i32 0, i32 21, i32 14
  store ptr null, ptr %73, align 4
  %74 = getelementptr %struct.power_supply_battery_info, ptr %8, i32 0, i32 14, i32 14
  store i32 -22, ptr %74, align 4
  %75 = getelementptr %struct.power_supply_battery_info, ptr %8, i32 0, i32 22, i32 14
  store i32 -22, ptr %75, align 4
  %76 = getelementptr %struct.power_supply_battery_info, ptr %8, i32 0, i32 21, i32 15
  store ptr null, ptr %76, align 4
  %77 = getelementptr %struct.power_supply_battery_info, ptr %8, i32 0, i32 14, i32 15
  store i32 -22, ptr %77, align 4
  %78 = getelementptr %struct.power_supply_battery_info, ptr %8, i32 0, i32 22, i32 15
  store i32 -22, ptr %78, align 4
  %79 = getelementptr %struct.power_supply_battery_info, ptr %8, i32 0, i32 21, i32 16
  store ptr null, ptr %79, align 4
  %80 = getelementptr %struct.power_supply_battery_info, ptr %8, i32 0, i32 14, i32 16
  store i32 -22, ptr %80, align 4
  %81 = getelementptr %struct.power_supply_battery_info, ptr %8, i32 0, i32 22, i32 16
  store i32 -22, ptr %81, align 4
  %82 = getelementptr %struct.power_supply_battery_info, ptr %8, i32 0, i32 21, i32 17
  store ptr null, ptr %82, align 4
  %83 = getelementptr %struct.power_supply_battery_info, ptr %8, i32 0, i32 14, i32 17
  store i32 -22, ptr %83, align 4
  %84 = getelementptr %struct.power_supply_battery_info, ptr %8, i32 0, i32 22, i32 17
  store i32 -22, ptr %84, align 4
  %85 = getelementptr %struct.power_supply_battery_info, ptr %8, i32 0, i32 21, i32 18
  store ptr null, ptr %85, align 4
  %86 = getelementptr %struct.power_supply_battery_info, ptr %8, i32 0, i32 14, i32 18
  store i32 -22, ptr %86, align 4
  %87 = getelementptr %struct.power_supply_battery_info, ptr %8, i32 0, i32 22, i32 18
  store i32 -22, ptr %87, align 4
  %88 = getelementptr %struct.power_supply_battery_info, ptr %8, i32 0, i32 21, i32 19
  store ptr null, ptr %88, align 4
  %89 = getelementptr %struct.power_supply_battery_info, ptr %8, i32 0, i32 14, i32 19
  store i32 -22, ptr %89, align 4
  %90 = getelementptr %struct.power_supply_battery_info, ptr %8, i32 0, i32 22, i32 19
  store i32 -22, ptr %90, align 4
  %91 = getelementptr inbounds %struct.power_supply, ptr %0, i32 0, i32 5
  %92 = load ptr, ptr %91, align 4
  %93 = icmp eq ptr %92, null
  br i1 %93, label %94, label %95

94:                                               ; preds = %10
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %7, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.power_supply_get_battery_info) #16
  br label %253

95:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %3, i8 0, i32 72, i1 false) #15, !annotation !11
  %96 = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %92, ptr noundef nonnull @.str.2, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %3) #15
  %97 = icmp ne i32 %96, 0
  %98 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #15
  %99 = icmp eq ptr %98, null
  %100 = select i1 %97, i1 true, i1 %99
  br i1 %100, label %253, label %101

101:                                              ; preds = %95
  %102 = call i32 @of_property_read_string(ptr noundef nonnull %98, ptr noundef nonnull @.str.3, ptr noundef nonnull %4) #15
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %251

104:                                              ; preds = %101
  %105 = load ptr, ptr %4, align 4
  %106 = call i32 @strcmp(ptr noundef nonnull dereferenceable(15) @.str.4, ptr noundef %105)
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %251

108:                                              ; preds = %104
  %109 = call i32 @of_property_read_string(ptr noundef nonnull %98, ptr noundef nonnull @.str.5, ptr noundef nonnull %4) #15
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %137

111:                                              ; preds = %108
  %112 = load ptr, ptr %4, align 4
  %113 = call i32 @strcmp(ptr noundef nonnull dereferenceable(15) @.str.6, ptr noundef %112)
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %111
  store i32 5, ptr %8, align 4
  br label %137

116:                                              ; preds = %111
  %117 = call i32 @strcmp(ptr noundef nonnull dereferenceable(21) @.str.7, ptr noundef %112)
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %116
  store i32 1, ptr %8, align 4
  br label %137

120:                                              ; preds = %116
  %121 = call i32 @strcmp(ptr noundef nonnull dereferenceable(12) @.str.8, ptr noundef %112)
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %120
  store i32 2, ptr %8, align 4
  br label %137

124:                                              ; preds = %120
  %125 = call i32 @strcmp(ptr noundef nonnull dereferenceable(20) @.str.9, ptr noundef %112)
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %124
  store i32 3, ptr %8, align 4
  br label %137

128:                                              ; preds = %124
  %129 = call i32 @strcmp(ptr noundef nonnull dereferenceable(27) @.str.10, ptr noundef %112)
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %128
  store i32 4, ptr %8, align 4
  br label %137

132:                                              ; preds = %128
  %133 = call i32 @strcmp(ptr noundef nonnull dereferenceable(28) @.str.11, ptr noundef %112)
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %132
  store i32 6, ptr %8, align 4
  br label %137

136:                                              ; preds = %132
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %7, ptr noundef nonnull @.str.12, ptr noundef %112) #16
  br label %137

137:                                              ; preds = %136, %135, %131, %127, %123, %119, %115, %108
  %138 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %98, ptr noundef nonnull @.str.13, ptr noundef %11, i32 noundef 1, i32 noundef 0) #15
  %139 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %98, ptr noundef nonnull @.str.14, ptr noundef %12, i32 noundef 1, i32 noundef 0) #15
  %140 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %98, ptr noundef nonnull @.str.15, ptr noundef %13, i32 noundef 1, i32 noundef 0) #15
  %141 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %98, ptr noundef nonnull @.str.16, ptr noundef %14, i32 noundef 1, i32 noundef 0) #15
  %142 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %98, ptr noundef nonnull @.str.17, ptr noundef %19, i32 noundef 1, i32 noundef 0) #15
  %143 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %98, ptr noundef nonnull @.str.18, ptr noundef %15, i32 noundef 1, i32 noundef 0) #15
  %144 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %98, ptr noundef nonnull @.str.19, ptr noundef %20, i32 noundef 1, i32 noundef 0) #15
  %145 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %98, ptr noundef nonnull @.str.20, ptr noundef %16, i32 noundef 1, i32 noundef 0) #15
  %146 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %98, ptr noundef nonnull @.str.21, ptr noundef %21, i32 noundef 1, i32 noundef 0) #15
  %147 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %98, ptr noundef nonnull @.str.22, ptr noundef %22, i32 noundef 1, i32 noundef 0) #15
  %148 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %98, ptr noundef nonnull @.str.23, ptr noundef %17, i32 noundef 1, i32 noundef 0) #15
  %149 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %98, ptr noundef nonnull @.str.24, ptr noundef %18, i32 noundef 1, i32 noundef 0) #15
  %150 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %98, ptr noundef nonnull @.str.25, ptr noundef %29, i32 noundef 1, i32 noundef 0) #15
  %151 = call i32 @of_property_read_u32_index(ptr noundef nonnull %98, ptr noundef nonnull @.str.26, i32 noundef 0, ptr noundef %23) #15
  %152 = call i32 @of_property_read_u32_index(ptr noundef nonnull %98, ptr noundef nonnull @.str.26, i32 noundef 1, ptr noundef %24) #15
  %153 = call i32 @of_property_read_u32_index(ptr noundef nonnull %98, ptr noundef nonnull @.str.27, i32 noundef 0, ptr noundef %25) #15
  %154 = call i32 @of_property_read_u32_index(ptr noundef nonnull %98, ptr noundef nonnull @.str.27, i32 noundef 1, ptr noundef %26) #15
  %155 = call i32 @of_property_read_u32_index(ptr noundef nonnull %98, ptr noundef nonnull @.str.28, i32 noundef 0, ptr noundef %27) #15
  %156 = call i32 @of_property_read_u32_index(ptr noundef nonnull %98, ptr noundef nonnull @.str.28, i32 noundef 1, ptr noundef %28) #15
  %157 = call i32 @of_property_count_elems_of_size(ptr noundef nonnull %98, ptr noundef nonnull @.str.29, i32 noundef 4) #15
  store i32 %157, ptr %5, align 4
  %158 = icmp slt i32 %157, 0
  %159 = icmp ne i32 %157, -22
  %160 = and i1 %158, %159
  br i1 %160, label %251, label %161

161:                                              ; preds = %137
  %162 = icmp sgt i32 %157, 20
  br i1 %162, label %163, label %164

163:                                              ; preds = %161
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.30) #16
  br label %251

164:                                              ; preds = %161
  %165 = icmp sgt i32 %157, 0
  br i1 %165, label %166, label %221

166:                                              ; preds = %164
  %167 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %98, ptr noundef nonnull @.str.29, ptr noundef %32, i32 noundef %157, i32 noundef 0) #15
  br label %168

168:                                              ; preds = %218, %166
  %169 = phi i32 [ %219, %218 ], [ 0, %166 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #15
  store i32 0, ptr %6, align 4, !annotation !11
  %170 = call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.31, i32 noundef %169) #15
  %171 = call ptr @of_get_property(ptr noundef %98, ptr noundef %170, ptr noundef nonnull %6) #15
  %172 = icmp ne ptr %171, null
  %173 = load i32, ptr %6, align 4
  %174 = icmp ne i32 %173, 0
  %175 = select i1 %172, i1 %174, i1 false
  br i1 %175, label %177, label %176

176:                                              ; preds = %168
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.32, ptr noundef %170) #16
  call void @kfree(ptr noundef %170) #15
  call void @power_supply_put_battery_info(ptr noundef %0, ptr noundef %8)
  br label %216

177:                                              ; preds = %168
  call void @kfree(ptr noundef %170) #15
  %178 = load i32, ptr %6, align 4
  %179 = lshr i32 %178, 3
  %180 = getelementptr %struct.power_supply_battery_info, ptr %8, i32 0, i32 22, i32 %169
  store i32 %179, ptr %180, align 4
  %181 = and i32 %178, -8
  %182 = call noalias ptr @devm_kmalloc(ptr noundef %7, i32 noundef %181, i32 noundef 3520) #15
  %183 = getelementptr %struct.power_supply_battery_info, ptr %8, i32 0, i32 21, i32 %169
  store ptr %182, ptr %183, align 4
  %184 = icmp eq ptr %182, null
  br i1 %184, label %189, label %185

185:                                              ; preds = %177
  %186 = icmp ult i32 %178, 8
  br i1 %186, label %218, label %187

187:                                              ; preds = %185
  %188 = call i32 @llvm.umax.i32(i32 %179, i32 1)
  br label %203

189:                                              ; preds = %195, %177
  %190 = phi i32 [ %196, %195 ], [ 0, %177 ]
  %191 = getelementptr %struct.power_supply_battery_info, ptr %8, i32 0, i32 21, i32 %190
  %192 = load ptr, ptr %191, align 4
  %193 = icmp eq ptr %192, null
  br i1 %193, label %195, label %194

194:                                              ; preds = %189
  call void @devm_kfree(ptr noundef %7, ptr noundef nonnull %192) #15
  br label %195

195:                                              ; preds = %194, %189
  %196 = add nuw nsw i32 %190, 1
  %197 = icmp eq i32 %196, 20
  br i1 %197, label %198, label %189

198:                                              ; preds = %195
  %199 = load ptr, ptr %30, align 4
  %200 = icmp eq ptr %199, null
  br i1 %200, label %202, label %201

201:                                              ; preds = %198
  call void @devm_kfree(ptr noundef %7, ptr noundef nonnull %199) #15
  br label %202

202:                                              ; preds = %201, %198
  call void @devm_kfree(ptr noundef %7, ptr noundef %8) #15
  br label %216

203:                                              ; preds = %203, %187
  %204 = phi i32 [ %214, %203 ], [ 0, %187 ]
  %205 = phi ptr [ %213, %203 ], [ %171, %187 ]
  %206 = load i32, ptr %205, align 4
  %207 = call i32 @llvm.bswap.i32(i32 %206)
  %208 = getelementptr %struct.power_supply_battery_ocv_table, ptr %182, i32 %204
  store i32 %207, ptr %208, align 4
  %209 = getelementptr i32, ptr %205, i32 1
  %210 = load i32, ptr %209, align 4
  %211 = call i32 @llvm.bswap.i32(i32 %210)
  %212 = getelementptr %struct.power_supply_battery_ocv_table, ptr %182, i32 %204, i32 1
  store i32 %211, ptr %212, align 4
  %213 = getelementptr i32, ptr %205, i32 2
  %214 = add nuw nsw i32 %204, 1
  %215 = icmp eq i32 %214, %188
  br i1 %215, label %218, label %203

216:                                              ; preds = %202, %176
  %217 = phi i32 [ -22, %176 ], [ -12, %202 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #15
  br label %251

218:                                              ; preds = %203, %185
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #15
  %219 = add nuw nsw i32 %169, 1
  %220 = icmp slt i32 %219, %157
  br i1 %220, label %168, label %221

221:                                              ; preds = %218, %164
  %222 = call ptr @of_get_property(ptr noundef %98, ptr noundef nonnull @.str.33, ptr noundef nonnull %5) #15
  %223 = icmp ne ptr %222, null
  %224 = load i32, ptr %5, align 4
  %225 = icmp ne i32 %224, 0
  %226 = select i1 %223, i1 %225, i1 false
  br i1 %226, label %227, label %250

227:                                              ; preds = %221
  %228 = lshr i32 %224, 3
  %229 = getelementptr inbounds %struct.power_supply_battery_info, ptr %8, i32 0, i32 24
  store i32 %228, ptr %229, align 4
  %230 = and i32 %224, -8
  %231 = call noalias ptr @devm_kmalloc(ptr noundef %7, i32 noundef %230, i32 noundef 3520) #15
  store ptr %231, ptr %30, align 4
  %232 = icmp eq ptr %231, null
  br i1 %232, label %236, label %233

233:                                              ; preds = %227
  %234 = load i32, ptr %229, align 4
  %235 = icmp sgt i32 %234, 0
  br i1 %235, label %237, label %250

236:                                              ; preds = %227
  call void @power_supply_put_battery_info(ptr noundef %0, ptr noundef %8)
  br label %251

237:                                              ; preds = %237, %233
  %238 = phi ptr [ %244, %237 ], [ %222, %233 ]
  %239 = phi i32 [ %248, %237 ], [ 0, %233 ]
  %240 = getelementptr i32, ptr %238, i32 1
  %241 = load i32, ptr %238, align 4
  %242 = call i32 @llvm.bswap.i32(i32 %241)
  %243 = getelementptr %struct.power_supply_resistance_temp_table, ptr %231, i32 %239
  store i32 %242, ptr %243, align 4
  %244 = getelementptr i32, ptr %238, i32 2
  %245 = load i32, ptr %240, align 4
  %246 = call i32 @llvm.bswap.i32(i32 %245)
  %247 = getelementptr %struct.power_supply_resistance_temp_table, ptr %231, i32 %239, i32 1
  store i32 %246, ptr %247, align 4
  %248 = add nuw nsw i32 %239, 1
  %249 = icmp eq i32 %248, %234
  br i1 %249, label %250, label %237

250:                                              ; preds = %237, %233, %221
  store ptr %8, ptr %1, align 4
  br label %251

251:                                              ; preds = %250, %236, %216, %163, %137, %104, %101
  %252 = phi i32 [ %102, %101 ], [ -22, %163 ], [ 0, %250 ], [ -12, %236 ], [ -19, %104 ], [ %157, %137 ], [ %217, %216 ]
  call void @of_node_put(ptr noundef %98) #15
  br label %253

253:                                              ; preds = %251, %95, %94, %2
  %254 = phi i32 [ %252, %251 ], [ -6, %94 ], [ -12, %2 ], [ -19, %95 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #15
  ret i32 %254
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_u32_index(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @power_supply_put_battery_info(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.power_supply, ptr %0, i32 0, i32 7
  br label %4

4:                                                ; preds = %10, %2
  %5 = phi i32 [ 0, %2 ], [ %11, %10 ]
  %6 = getelementptr %struct.power_supply_battery_info, ptr %1, i32 0, i32 21, i32 %5
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %4
  tail call void @devm_kfree(ptr noundef %3, ptr noundef nonnull %7) #15
  br label %10

10:                                               ; preds = %9, %4
  %11 = add nuw nsw i32 %5, 1
  %12 = icmp eq i32 %11, 20
  br i1 %12, label %13, label %4

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.power_supply_battery_info, ptr %1, i32 0, i32 23
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  tail call void @devm_kfree(ptr noundef %3, ptr noundef nonnull %15) #15
  br label %18

18:                                               ; preds = %17, %13
  tail call void @devm_kfree(ptr noundef %3, ptr noundef %1) #15
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local i32 @power_supply_temp2resist_simple(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #9 {
  %4 = add i32 %1, -1
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %14

6:                                                ; preds = %11, %3
  %7 = phi i32 [ %12, %11 ], [ 0, %3 ]
  %8 = getelementptr %struct.power_supply_resistance_temp_table, ptr %0, i32 %7
  %9 = load i32, ptr %8, align 4
  %10 = icmp slt i32 %9, %2
  br i1 %10, label %14, label %11

11:                                               ; preds = %6
  %12 = add nuw nsw i32 %7, 1
  %13 = icmp eq i32 %12, %4
  br i1 %13, label %14, label %6

14:                                               ; preds = %11, %6, %3
  %15 = phi i32 [ 0, %3 ], [ %7, %6 ], [ %4, %11 ]
  %16 = icmp ne i32 %15, 0
  %17 = icmp ne i32 %15, %4
  %18 = and i1 %16, %17
  %19 = sext i1 %18 to i32
  %20 = add nsw i32 %15, %19
  %21 = getelementptr %struct.power_supply_resistance_temp_table, ptr %0, i32 %15
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr %struct.power_supply_resistance_temp_table, ptr %0, i32 %15, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr %struct.power_supply_resistance_temp_table, ptr %0, i32 %20
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr %struct.power_supply_resistance_temp_table, ptr %0, i32 %20, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, %24
  %30 = icmp eq i32 %22, %2
  %31 = or i1 %30, %29
  br i1 %31, label %43, label %32

32:                                               ; preds = %14
  %33 = icmp eq i32 %26, %22
  %34 = icmp eq i32 %26, %2
  %35 = or i1 %33, %34
  br i1 %35, label %43, label %36

36:                                               ; preds = %32
  %37 = sub i32 %28, %24
  %38 = sub i32 %2, %22
  %39 = mul i32 %37, %38
  %40 = sub i32 %26, %22
  %41 = sdiv i32 %39, %40
  %42 = add i32 %41, %24
  br label %43

43:                                               ; preds = %36, %32, %14
  %44 = phi i32 [ %42, %36 ], [ %24, %14 ], [ %28, %32 ]
  ret i32 %44
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local i32 @power_supply_ocv2cap_simple(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #9 {
  %4 = add i32 %1, -1
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %14

6:                                                ; preds = %11, %3
  %7 = phi i32 [ %12, %11 ], [ 0, %3 ]
  %8 = getelementptr %struct.power_supply_battery_ocv_table, ptr %0, i32 %7
  %9 = load i32, ptr %8, align 4
  %10 = icmp slt i32 %9, %2
  br i1 %10, label %14, label %11

11:                                               ; preds = %6
  %12 = add nuw nsw i32 %7, 1
  %13 = icmp eq i32 %12, %4
  br i1 %13, label %14, label %6

14:                                               ; preds = %11, %6, %3
  %15 = phi i32 [ 0, %3 ], [ %7, %6 ], [ %4, %11 ]
  %16 = icmp eq i32 %15, 0
  %17 = icmp eq i32 %15, %4
  %18 = or i1 %16, %17
  %19 = sext i1 %18 to i32
  %20 = add nsw i32 %15, %19
  %21 = getelementptr %struct.power_supply_battery_ocv_table, ptr %0, i32 %15
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr %struct.power_supply_battery_ocv_table, ptr %0, i32 %15, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr %struct.power_supply_battery_ocv_table, ptr %0, i32 %20
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr %struct.power_supply_battery_ocv_table, ptr %0, i32 %20, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, %24
  %30 = icmp eq i32 %22, %2
  %31 = or i1 %30, %29
  br i1 %31, label %43, label %32

32:                                               ; preds = %14
  %33 = icmp eq i32 %26, %22
  %34 = icmp eq i32 %26, %2
  %35 = or i1 %33, %34
  br i1 %35, label %43, label %36

36:                                               ; preds = %32
  %37 = sub i32 %28, %24
  %38 = sub i32 %2, %22
  %39 = mul i32 %37, %38
  %40 = sub i32 %26, %22
  %41 = sdiv i32 %39, %40
  %42 = add i32 %41, %24
  br label %43

43:                                               ; preds = %36, %32, %14
  %44 = phi i32 [ %42, %36 ], [ %24, %14 ], [ %28, %32 ]
  ret i32 %44
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @power_supply_find_ocv2cap_table(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #10 {
  %4 = getelementptr inbounds %struct.power_supply_battery_info, ptr %0, i32 0, i32 21
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %32, label %7

7:                                                ; preds = %14, %3
  %8 = phi i32 [ %23, %14 ], [ 0, %3 ]
  %9 = phi i32 [ %22, %14 ], [ 2147483647, %3 ]
  %10 = phi i8 [ %21, %14 ], [ 0, %3 ]
  %11 = getelementptr %struct.power_supply_battery_info, ptr %0, i32 0, i32 21, i32 %8
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %25, label %14

14:                                               ; preds = %7
  %15 = getelementptr %struct.power_supply_battery_info, ptr %0, i32 0, i32 14, i32 %8
  %16 = load i32, ptr %15, align 4
  %17 = sub i32 %16, %1
  %18 = tail call i32 @llvm.abs.i32(i32 %17, i1 false)
  %19 = icmp slt i32 %18, %9
  %20 = trunc i32 %8 to i8
  %21 = select i1 %19, i8 %20, i8 %10
  %22 = tail call i32 @llvm.smin.i32(i32 %18, i32 %9)
  %23 = add nuw nsw i32 %8, 1
  %24 = icmp eq i32 %23, 20
  br i1 %24, label %25, label %7

25:                                               ; preds = %14, %7
  %26 = phi i8 [ %10, %7 ], [ %21, %14 ]
  %27 = zext i8 %26 to i32
  %28 = getelementptr %struct.power_supply_battery_info, ptr %0, i32 0, i32 22, i32 %27
  %29 = load i32, ptr %28, align 4
  store i32 %29, ptr %2, align 4
  %30 = getelementptr %struct.power_supply_battery_info, ptr %0, i32 0, i32 21, i32 %27
  %31 = load ptr, ptr %30, align 4
  br label %32

32:                                               ; preds = %25, %3
  %33 = phi ptr [ %31, %25 ], [ null, %3 ]
  ret ptr %33
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local i32 @power_supply_batinfo_ocv2cap(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #11 {
  %4 = getelementptr inbounds %struct.power_supply_battery_info, ptr %0, i32 0, i32 21
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %73, label %7

7:                                                ; preds = %14, %3
  %8 = phi i32 [ %23, %14 ], [ 0, %3 ]
  %9 = phi i32 [ %22, %14 ], [ 2147483647, %3 ]
  %10 = phi i8 [ %21, %14 ], [ 0, %3 ]
  %11 = getelementptr %struct.power_supply_battery_info, ptr %0, i32 0, i32 21, i32 %8
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %25, label %14

14:                                               ; preds = %7
  %15 = getelementptr %struct.power_supply_battery_info, ptr %0, i32 0, i32 14, i32 %8
  %16 = load i32, ptr %15, align 4
  %17 = sub i32 %16, %2
  %18 = tail call i32 @llvm.abs.i32(i32 %17, i1 false) #15
  %19 = icmp slt i32 %18, %9
  %20 = trunc i32 %8 to i8
  %21 = select i1 %19, i8 %20, i8 %10
  %22 = tail call i32 @llvm.smin.i32(i32 %18, i32 %9) #15
  %23 = add nuw nsw i32 %8, 1
  %24 = icmp eq i32 %23, 20
  br i1 %24, label %25, label %7

25:                                               ; preds = %14, %7
  %26 = phi i8 [ %10, %7 ], [ %21, %14 ]
  %27 = zext i8 %26 to i32
  %28 = getelementptr %struct.power_supply_battery_info, ptr %0, i32 0, i32 21, i32 %27
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %73, label %31

31:                                               ; preds = %25
  %32 = getelementptr %struct.power_supply_battery_info, ptr %0, i32 0, i32 22, i32 %27
  %33 = load i32, ptr %32, align 4
  %34 = add i32 %33, -1
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %41, %31
  %37 = phi i32 [ %42, %41 ], [ 0, %31 ]
  %38 = getelementptr %struct.power_supply_battery_ocv_table, ptr %29, i32 %37
  %39 = load i32, ptr %38, align 4
  %40 = icmp slt i32 %39, %1
  br i1 %40, label %44, label %41

41:                                               ; preds = %36
  %42 = add nuw nsw i32 %37, 1
  %43 = icmp eq i32 %42, %34
  br i1 %43, label %44, label %36

44:                                               ; preds = %41, %36, %31
  %45 = phi i32 [ 0, %31 ], [ %34, %41 ], [ %37, %36 ]
  %46 = icmp eq i32 %45, 0
  %47 = icmp eq i32 %45, %34
  %48 = or i1 %46, %47
  %49 = sext i1 %48 to i32
  %50 = add nsw i32 %45, %49
  %51 = getelementptr %struct.power_supply_battery_ocv_table, ptr %29, i32 %45
  %52 = load i32, ptr %51, align 4
  %53 = getelementptr %struct.power_supply_battery_ocv_table, ptr %29, i32 %45, i32 1
  %54 = load i32, ptr %53, align 4
  %55 = getelementptr %struct.power_supply_battery_ocv_table, ptr %29, i32 %50
  %56 = load i32, ptr %55, align 4
  %57 = getelementptr %struct.power_supply_battery_ocv_table, ptr %29, i32 %50, i32 1
  %58 = load i32, ptr %57, align 4
  %59 = icmp eq i32 %58, %54
  %60 = icmp eq i32 %52, %1
  %61 = or i1 %60, %59
  br i1 %61, label %73, label %62

62:                                               ; preds = %44
  %63 = icmp eq i32 %56, %52
  %64 = icmp eq i32 %56, %1
  %65 = or i1 %63, %64
  br i1 %65, label %73, label %66

66:                                               ; preds = %62
  %67 = sub i32 %58, %54
  %68 = sub i32 %1, %52
  %69 = mul i32 %67, %68
  %70 = sub i32 %56, %52
  %71 = sdiv i32 %69, %70
  %72 = add i32 %71, %54
  br label %73

73:                                               ; preds = %66, %62, %44, %25, %3
  %74 = phi i32 [ -22, %25 ], [ %72, %66 ], [ %54, %44 ], [ %58, %62 ], [ -22, %3 ]
  ret i32 %74
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @power_supply_get_property(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.power_supply, ptr %0, i32 0, i32 14
  %5 = load volatile i32, ptr %4, align 4
  %6 = icmp slt i32 %5, 1
  br i1 %6, label %7, label %12

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.power_supply, ptr %0, i32 0, i32 12
  %9 = load i8, ptr %8, align 1, !range !12
  %10 = icmp eq i8 %9, 0
  %11 = select i1 %10, i32 -11, i32 -19
  br label %17

12:                                               ; preds = %3
  %13 = load ptr, ptr %0, align 8
  %14 = getelementptr inbounds %struct.power_supply_desc, ptr %13, i32 0, i32 6
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 %15(ptr noundef %0, i32 noundef %1, ptr noundef %2) #15
  br label %17

17:                                               ; preds = %12, %7
  %18 = phi i32 [ %16, %12 ], [ %11, %7 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @power_supply_set_property(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.power_supply, ptr %0, i32 0, i32 14
  %5 = load volatile i32, ptr %4, align 4
  %6 = icmp slt i32 %5, 1
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr %0, align 8
  %9 = getelementptr inbounds %struct.power_supply_desc, ptr %8, i32 0, i32 7
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %7
  %13 = tail call i32 %10(ptr noundef %0, i32 noundef %1, ptr noundef %2) #15
  br label %14

14:                                               ; preds = %12, %7, %3
  %15 = phi i32 [ %13, %12 ], [ -19, %7 ], [ -19, %3 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @power_supply_property_is_writeable(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.power_supply, ptr %0, i32 0, i32 14
  %4 = load volatile i32, ptr %3, align 4
  %5 = icmp slt i32 %4, 1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 8
  %8 = getelementptr inbounds %struct.power_supply_desc, ptr %7, i32 0, i32 8
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %6
  %12 = tail call i32 %9(ptr noundef %0, i32 noundef %1) #15
  br label %13

13:                                               ; preds = %11, %6, %2
  %14 = phi i32 [ %12, %11 ], [ -19, %6 ], [ -19, %2 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @power_supply_external_power_changed(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.power_supply, ptr %0, i32 0, i32 14
  %3 = load volatile i32, ptr %2, align 4
  %4 = icmp slt i32 %3, 1
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8
  %7 = getelementptr inbounds %struct.power_supply_desc, ptr %6, i32 0, i32 9
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %5
  tail call void %8(ptr noundef %0) #15
  br label %11

11:                                               ; preds = %10, %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @power_supply_powers(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.power_supply, ptr %0, i32 0, i32 7
  %4 = tail call i32 @sysfs_create_link(ptr noundef %3, ptr noundef %1, ptr noundef nonnull @.str.34) #15
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_link(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @power_supply_reg_notifier(ptr noundef %0) #0 {
  %2 = tail call i32 @atomic_notifier_chain_register(ptr noundef nonnull @power_supply_notifier, ptr noundef %0) #15
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomic_notifier_chain_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @power_supply_unreg_notifier(ptr noundef %0) #0 {
  %2 = tail call i32 @atomic_notifier_chain_unregister(ptr noundef nonnull @power_supply_notifier, ptr noundef %0) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomic_notifier_chain_unregister(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @power_supply_register(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call fastcc ptr @__power_supply_register(ptr noundef %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext true)
  ret ptr %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @__power_supply_register(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2, i1 noundef zeroext %3) unnamed_addr #0 {
  %5 = alloca %struct.of_phandle_args, align 4
  %6 = icmp eq ptr %0, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %4
  %8 = load ptr, ptr %1, align 4
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef nonnull @__func__.__power_supply_register, ptr noundef %8) #16
  br label %10

10:                                               ; preds = %7, %4
  %11 = icmp eq ptr %1, null
  br i1 %11, label %204, label %12

12:                                               ; preds = %10
  %13 = load ptr, ptr %1, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %204, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.power_supply_desc, ptr %1, i32 0, i32 4
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %204, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.power_supply_desc, ptr %1, i32 0, i32 5
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %204, label %23

23:                                               ; preds = %19
  %24 = load i32, ptr %17, align 4
  %25 = icmp eq i32 %24, 65
  br i1 %25, label %36, label %26

26:                                               ; preds = %30, %23
  %27 = phi i32 [ %28, %30 ], [ 0, %23 ]
  %28 = add nuw i32 %27, 1
  %29 = icmp eq i32 %28, %21
  br i1 %29, label %34, label %30

30:                                               ; preds = %26
  %31 = getelementptr i32, ptr %17, i32 %28
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %32, 65
  br i1 %33, label %34, label %26

34:                                               ; preds = %30, %26
  %35 = icmp ult i32 %28, %21
  br i1 %35, label %36, label %44

36:                                               ; preds = %34, %23
  %37 = getelementptr inbounds %struct.power_supply_desc, ptr %1, i32 0, i32 2
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %204, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.power_supply_desc, ptr %1, i32 0, i32 3
  %42 = load i32, ptr %41, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %204, label %44

44:                                               ; preds = %40, %34
  %45 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %46 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %45, i32 noundef 3520, i32 noundef 624) #17
  %47 = icmp eq ptr %46, null
  br i1 %47, label %204, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.power_supply, ptr %46, i32 0, i32 7
  tail call void @device_initialize(ptr noundef %49) #15
  %50 = load ptr, ptr @power_supply_class, align 4
  %51 = getelementptr inbounds %struct.power_supply, ptr %46, i32 0, i32 7, i32 31
  store ptr %50, ptr %51, align 4
  %52 = getelementptr inbounds %struct.power_supply, ptr %46, i32 0, i32 7, i32 4
  store ptr @power_supply_dev_type, ptr %52, align 8
  %53 = getelementptr inbounds %struct.power_supply, ptr %46, i32 0, i32 7, i32 1
  store ptr %0, ptr %53, align 4
  %54 = getelementptr inbounds %struct.power_supply, ptr %46, i32 0, i32 7, i32 33
  store ptr @power_supply_dev_release, ptr %54, align 4
  %55 = getelementptr inbounds %struct.power_supply, ptr %46, i32 0, i32 7, i32 8
  store ptr %46, ptr %55, align 8
  store ptr %1, ptr %46, align 8
  %56 = icmp eq ptr %2, null
  br i1 %56, label %86, label %57

57:                                               ; preds = %48
  %58 = getelementptr inbounds %struct.power_supply_config, ptr %2, i32 0, i32 3
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr inbounds %struct.power_supply, ptr %46, i32 0, i32 7, i32 32
  store ptr %59, ptr %60, align 8
  %61 = getelementptr inbounds %struct.power_supply_config, ptr %2, i32 0, i32 2
  %62 = load ptr, ptr %61, align 4
  %63 = getelementptr inbounds %struct.power_supply, ptr %46, i32 0, i32 6
  store ptr %62, ptr %63, align 8
  %64 = getelementptr inbounds %struct.power_supply_config, ptr %2, i32 0, i32 1
  %65 = load ptr, ptr %64, align 4
  %66 = icmp eq ptr %65, null
  br i1 %66, label %75, label %67

67:                                               ; preds = %57
  %68 = icmp ugt ptr %65, inttoptr (i32 -4096 to ptr)
  br i1 %68, label %77, label %69

69:                                               ; preds = %67
  %70 = getelementptr inbounds %struct.fwnode_handle, ptr %65, i32 0, i32 1
  %71 = load ptr, ptr %70, align 4
  %72 = icmp eq ptr %71, @of_fwnode_ops
  %73 = getelementptr i8, ptr %65, i32 -12
  %74 = select i1 %72, ptr %73, ptr null
  br label %77

75:                                               ; preds = %57
  %76 = load ptr, ptr %2, align 4
  br label %77

77:                                               ; preds = %75, %69, %67
  %78 = phi ptr [ %76, %75 ], [ null, %67 ], [ %74, %69 ]
  %79 = getelementptr inbounds %struct.power_supply, ptr %46, i32 0, i32 5
  store ptr %78, ptr %79, align 4
  %80 = getelementptr inbounds %struct.power_supply_config, ptr %2, i32 0, i32 4
  %81 = load ptr, ptr %80, align 4
  %82 = getelementptr inbounds %struct.power_supply, ptr %46, i32 0, i32 1
  store ptr %81, ptr %82, align 4
  %83 = getelementptr inbounds %struct.power_supply_config, ptr %2, i32 0, i32 5
  %84 = load i32, ptr %83, align 4
  %85 = getelementptr inbounds %struct.power_supply, ptr %46, i32 0, i32 2
  store i32 %84, ptr %85, align 8
  br label %86

86:                                               ; preds = %77, %48
  %87 = load ptr, ptr %1, align 4
  %88 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %49, ptr noundef nonnull @.str.38, ptr noundef %87) #15
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %201

90:                                               ; preds = %86
  %91 = getelementptr inbounds %struct.power_supply, ptr %46, i32 0, i32 8
  store i32 -32, ptr %91, align 8
  %92 = getelementptr inbounds %struct.power_supply, ptr %46, i32 0, i32 8, i32 1
  store volatile ptr %92, ptr %92, align 4
  %93 = getelementptr inbounds %struct.power_supply, ptr %46, i32 0, i32 8, i32 1, i32 1
  store ptr %92, ptr %93, align 8
  %94 = getelementptr inbounds %struct.power_supply, ptr %46, i32 0, i32 8, i32 2
  store ptr @power_supply_changed_work, ptr %94, align 4
  %95 = getelementptr inbounds %struct.power_supply, ptr %46, i32 0, i32 9
  store i32 -32, ptr %95, align 8
  %96 = getelementptr inbounds %struct.power_supply, ptr %46, i32 0, i32 9, i32 0, i32 1
  store volatile ptr %96, ptr %96, align 4
  %97 = getelementptr inbounds %struct.power_supply, ptr %46, i32 0, i32 9, i32 0, i32 1, i32 1
  store ptr %96, ptr %97, align 8
  %98 = getelementptr inbounds %struct.power_supply, ptr %46, i32 0, i32 9, i32 0, i32 2
  store ptr @power_supply_deferred_register_work, ptr %98, align 4
  %99 = getelementptr inbounds %struct.power_supply, ptr %46, i32 0, i32 9, i32 1
  tail call void @init_timer_key(ptr noundef %99, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #15
  %100 = getelementptr inbounds %struct.power_supply, ptr %46, i32 0, i32 3
  %101 = load ptr, ptr %100, align 4
  %102 = icmp eq ptr %101, null
  br i1 %102, label %107, label %103

103:                                              ; preds = %90
  %104 = getelementptr inbounds %struct.power_supply, ptr %46, i32 0, i32 4
  %105 = load i32, ptr %104, align 8
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %157

107:                                              ; preds = %103, %90
  %108 = getelementptr inbounds %struct.power_supply, ptr %46, i32 0, i32 5
  %109 = load ptr, ptr %108, align 4
  %110 = icmp eq ptr %109, null
  br i1 %110, label %157, label %111

111:                                              ; preds = %107
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %5) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %5, i8 0, i32 72, i1 false) #15, !annotation !11
  %112 = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %109, ptr noundef nonnull @.str.39, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %5) #15
  %113 = icmp ne i32 %112, 0
  %114 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %5) #15
  %115 = icmp eq ptr %114, null
  %116 = select i1 %113, i1 true, i1 %115
  br i1 %116, label %157, label %117

117:                                              ; preds = %127, %111
  %118 = phi ptr [ %132, %127 ], [ %114, %111 ]
  %119 = phi i32 [ %128, %127 ], [ 0, %111 ]
  %120 = load ptr, ptr @power_supply_class, align 4
  %121 = call i32 @class_for_each_device(ptr noundef %120, ptr noundef null, ptr noundef nonnull %118, ptr noundef nonnull @__power_supply_find_supply_from_node) #15
  %122 = icmp eq i32 %121, 0
  %123 = icmp eq i32 %121, 1
  %124 = select i1 %123, i32 0, i32 %121
  %125 = select i1 %122, i32 -517, i32 %124
  call void @of_node_put(ptr noundef nonnull %118) #15
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %201

127:                                              ; preds = %117
  %128 = add i32 %119, 1
  %129 = load ptr, ptr %108, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %5) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %5, i8 0, i32 72, i1 false) #15, !annotation !11
  %130 = call i32 @__of_parse_phandle_with_args(ptr noundef %129, ptr noundef nonnull @.str.39, ptr noundef null, i32 noundef 0, i32 noundef %128, ptr noundef nonnull %5) #15
  %131 = icmp ne i32 %130, 0
  %132 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %5) #15
  %133 = icmp eq ptr %132, null
  %134 = select i1 %131, i1 true, i1 %133
  br i1 %134, label %135, label %117

135:                                              ; preds = %127
  %136 = icmp eq i32 %128, 0
  br i1 %136, label %157, label %137

137:                                              ; preds = %135
  %138 = call noalias ptr @devm_kmalloc(ptr noundef %49, i32 noundef 4, i32 noundef 3520) #15
  store ptr %138, ptr %100, align 4
  %139 = icmp eq ptr %138, null
  br i1 %139, label %201, label %140

140:                                              ; preds = %137
  %141 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %128, i32 4) #15
  %142 = extractvalue { i32, i1 } %141, 1
  br i1 %142, label %147, label %143, !prof !13

143:                                              ; preds = %140
  %144 = extractvalue { i32, i1 } %141, 0
  %145 = call noalias ptr @devm_kmalloc(ptr noundef %49, i32 noundef %144, i32 noundef 3520) #15
  %146 = load ptr, ptr %100, align 4
  br label %147

147:                                              ; preds = %143, %140
  %148 = phi ptr [ %146, %143 ], [ %138, %140 ]
  %149 = phi ptr [ %145, %143 ], [ null, %140 ]
  store ptr %149, ptr %148, align 4
  %150 = load ptr, ptr %100, align 4
  %151 = load ptr, ptr %150, align 4
  %152 = icmp eq ptr %151, null
  br i1 %152, label %201, label %153

153:                                              ; preds = %147
  %154 = load ptr, ptr @power_supply_class, align 4
  %155 = call i32 @class_for_each_device(ptr noundef %154, ptr noundef null, ptr noundef %46, ptr noundef nonnull @__power_supply_populate_supplied_from) #15
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %157, label %201

157:                                              ; preds = %153, %135, %111, %107, %103
  %158 = getelementptr inbounds %struct.power_supply, ptr %46, i32 0, i32 10
  store i32 0, ptr %158, align 4
  %159 = call i32 @device_add(ptr noundef %49) #15
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %201

161:                                              ; preds = %157
  %162 = call i32 @device_init_wakeup(ptr noundef %49, i1 noundef zeroext %3) #15
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %164, label %201

164:                                              ; preds = %161
  %165 = call fastcc i32 @psy_register_thermal(ptr noundef nonnull %46)
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %167, label %199

167:                                              ; preds = %164
  %168 = call fastcc i32 @psy_register_cooler(ptr noundef nonnull %46)
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %170, label %191

170:                                              ; preds = %167
  %171 = call i32 @power_supply_create_triggers(ptr noundef nonnull %46) #15
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %183

173:                                              ; preds = %170
  %174 = call i32 @power_supply_add_hwmon_sysfs(ptr noundef nonnull %46) #15
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %176, label %182

176:                                              ; preds = %173
  %177 = getelementptr inbounds %struct.power_supply, ptr %46, i32 0, i32 14
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %177) #15, !srcloc !8
  %178 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %177, ptr %177, i32 1, ptr elementtype(i32) %177) #15, !srcloc !9
  %179 = getelementptr inbounds %struct.power_supply, ptr %46, i32 0, i32 12
  store i8 1, ptr %179, align 1
  %180 = load ptr, ptr @system_power_efficient_wq, align 4
  %181 = call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %180, ptr noundef %95, i32 noundef 1) #15
  br label %204

182:                                              ; preds = %173
  call void @power_supply_remove_triggers(ptr noundef nonnull %46) #15
  br label %183

183:                                              ; preds = %182, %170
  %184 = phi i32 [ %171, %170 ], [ %174, %182 ]
  %185 = getelementptr inbounds %struct.power_supply, ptr %46, i32 0, i32 16
  %186 = load ptr, ptr %185, align 4
  %187 = icmp eq ptr %186, null
  %188 = icmp ugt ptr %186, inttoptr (i32 -4096 to ptr)
  %189 = or i1 %187, %188
  br i1 %189, label %191, label %190

190:                                              ; preds = %183
  call void @thermal_cooling_device_unregister(ptr noundef nonnull %186) #15
  br label %191

191:                                              ; preds = %190, %183, %167
  %192 = phi i32 [ %168, %167 ], [ %184, %183 ], [ %184, %190 ]
  %193 = getelementptr inbounds %struct.power_supply, ptr %46, i32 0, i32 15
  %194 = load ptr, ptr %193, align 8
  %195 = icmp eq ptr %194, null
  %196 = icmp ugt ptr %194, inttoptr (i32 -4096 to ptr)
  %197 = or i1 %195, %196
  br i1 %197, label %199, label %198

198:                                              ; preds = %191
  call void @thermal_zone_device_unregister(ptr noundef nonnull %194) #15
  br label %199

199:                                              ; preds = %198, %191, %164
  %200 = phi i32 [ %165, %164 ], [ %192, %191 ], [ %192, %198 ]
  call void @device_del(ptr noundef %49) #15
  br label %201

201:                                              ; preds = %199, %161, %157, %153, %147, %137, %117, %86
  %202 = phi i32 [ %88, %86 ], [ %155, %153 ], [ %159, %157 ], [ %162, %161 ], [ %200, %199 ], [ -12, %147 ], [ -12, %137 ], [ %125, %117 ]
  call void @put_device(ptr noundef %49) #15
  %203 = inttoptr i32 %202 to ptr
  br label %204

204:                                              ; preds = %201, %176, %44, %40, %36, %19, %15, %12, %10
  %205 = phi ptr [ %203, %201 ], [ %46, %176 ], [ inttoptr (i32 -22 to ptr), %19 ], [ inttoptr (i32 -22 to ptr), %15 ], [ inttoptr (i32 -22 to ptr), %12 ], [ inttoptr (i32 -22 to ptr), %10 ], [ inttoptr (i32 -22 to ptr), %40 ], [ inttoptr (i32 -22 to ptr), %36 ], [ inttoptr (i32 -12 to ptr), %44 ]
  ret ptr %205
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @power_supply_register_no_ws(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call fastcc ptr @__power_supply_register(ptr noundef %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext false)
  ret ptr %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @devm_power_supply_register(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @devm_power_supply_release, i32 noundef 4, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str.35) #15
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @__power_supply_register(ptr noundef %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext true)
  %8 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %8, label %9, label %10

9:                                                ; preds = %6
  tail call void @devres_free(ptr noundef nonnull %4) #15
  br label %11

10:                                               ; preds = %6
  store ptr %7, ptr %4, align 4
  tail call void @devres_add(ptr noundef %0, ptr noundef nonnull %4) #15
  br label %11

11:                                               ; preds = %10, %9, %3
  %12 = phi ptr [ %7, %10 ], [ %7, %9 ], [ inttoptr (i32 -12 to ptr), %3 ]
  ret ptr %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @devm_power_supply_release(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr %1, align 4
  tail call void @power_supply_unregister(ptr noundef %3)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @devm_power_supply_register_no_ws(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @devm_power_supply_release, i32 noundef 4, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str.35) #15
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @__power_supply_register(ptr noundef %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext false)
  %8 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %8, label %9, label %10

9:                                                ; preds = %6
  tail call void @devres_free(ptr noundef nonnull %4) #15
  br label %11

10:                                               ; preds = %6
  store ptr %7, ptr %4, align 4
  tail call void @devres_add(ptr noundef %0, ptr noundef nonnull %4) #15
  br label %11

11:                                               ; preds = %10, %9, %3
  %12 = phi ptr [ %7, %10 ], [ %7, %9 ], [ inttoptr (i32 -12 to ptr), %3 ]
  ret ptr %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @power_supply_unregister(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.power_supply, ptr %0, i32 0, i32 14
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #15, !srcloc !8
  %3 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %2, ptr %2, i32 1, ptr elementtype(i32) %2) #15, !srcloc !15
  %4 = extractvalue { i32, i32 } %3, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #15, !srcloc !16
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6, !prof !17

6:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.36, i32 noundef 1390, i32 noundef 9, ptr noundef null) #15
  br label %7

7:                                                ; preds = %6, %1
  %8 = getelementptr inbounds %struct.power_supply, ptr %0, i32 0, i32 13
  store i8 1, ptr %8, align 2
  %9 = getelementptr inbounds %struct.power_supply, ptr %0, i32 0, i32 8
  %10 = tail call zeroext i1 @cancel_work_sync(ptr noundef %9) #15
  %11 = getelementptr inbounds %struct.power_supply, ptr %0, i32 0, i32 9
  %12 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %11) #15
  %13 = getelementptr inbounds %struct.power_supply, ptr %0, i32 0, i32 7
  tail call void @sysfs_remove_link(ptr noundef %13, ptr noundef nonnull @.str.34) #15
  tail call void @power_supply_remove_hwmon_sysfs(ptr noundef %0) #15
  tail call void @power_supply_remove_triggers(ptr noundef %0) #15
  %14 = getelementptr inbounds %struct.power_supply, ptr %0, i32 0, i32 16
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  %17 = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  %18 = or i1 %16, %17
  br i1 %18, label %20, label %19

19:                                               ; preds = %7
  tail call void @thermal_cooling_device_unregister(ptr noundef nonnull %15) #15
  br label %20

20:                                               ; preds = %19, %7
  %21 = getelementptr inbounds %struct.power_supply, ptr %0, i32 0, i32 15
  %22 = load ptr, ptr %21, align 8
  %23 = icmp eq ptr %22, null
  %24 = icmp ugt ptr %22, inttoptr (i32 -4096 to ptr)
  %25 = or i1 %23, %24
  br i1 %25, label %27, label %26

26:                                               ; preds = %20
  tail call void @thermal_zone_device_unregister(ptr noundef nonnull %22) #15
  br label %27

27:                                               ; preds = %26, %20
  %28 = tail call i32 @device_init_wakeup(ptr noundef %13, i1 noundef zeroext false) #15
  tail call void @device_unregister(ptr noundef %13) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_link(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @power_supply_remove_hwmon_sysfs(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @power_supply_remove_triggers(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local ptr @power_supply_get_drvdata(ptr nocapture noundef readonly %0) #12 {
  %2 = getelementptr inbounds %struct.power_supply, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @power_supply_class_exit() #13 section ".exit.text" {
  %1 = load ptr, ptr @power_supply_class, align 4
  tail call void @class_destroy(ptr noundef %1) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @class_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @power_supply_class_init() #13 section ".init.text" {
  %1 = tail call ptr @__class_create(ptr noundef null, ptr noundef nonnull @.str.40, ptr noundef nonnull @power_supply_class_init.__key) #15
  store ptr %1, ptr @power_supply_class, align 4
  %2 = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  %4 = ptrtoint ptr %1 to i32
  br label %7

5:                                                ; preds = %0
  %6 = getelementptr inbounds %struct.class, ptr %1, i32 0, i32 5
  store ptr @power_supply_uevent, ptr %6, align 4
  tail call void @power_supply_init_attrs(ptr noundef nonnull @power_supply_dev_type) #15
  br label %7

7:                                                ; preds = %5, %3
  %8 = phi i32 [ %4, %3 ], [ 0, %5 ]
  ret i32 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_count_elems_of_size(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #8

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_initialize(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @power_supply_dev_release(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -32
  tail call void @kfree(ptr noundef %2) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @power_supply_changed_work(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 60
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #15
  %4 = getelementptr i8, ptr %0, i32 64
  %5 = load i8, ptr %4, align 8, !range !12
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %17, label %7, !prof !13

7:                                                ; preds = %1
  %8 = getelementptr i8, ptr %0, i32 -504
  store i8 0, ptr %4, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %3) #15
  %9 = load ptr, ptr @power_supply_class, align 4
  %10 = tail call i32 @class_for_each_device(ptr noundef %9, ptr noundef null, ptr noundef %8, ptr noundef nonnull @__power_supply_changed_work) #15
  tail call void @power_supply_update_leds(ptr noundef %8) #15
  %11 = tail call i32 @atomic_notifier_call_chain(ptr noundef nonnull @power_supply_notifier, i32 noundef 0, ptr noundef %8) #15
  %12 = getelementptr i8, ptr %0, i32 -472
  %13 = tail call i32 @kobject_uevent(ptr noundef %12, i32 noundef 2) #15
  %14 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #15
  %15 = load i8, ptr %4, align 8
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %20, !prof !17

17:                                               ; preds = %7, %1
  %18 = phi i32 [ %14, %7 ], [ %3, %1 ]
  %19 = getelementptr i8, ptr %0, i32 -472
  tail call void @pm_relax(ptr noundef %19) #15
  br label %20

20:                                               ; preds = %17, %7
  %21 = phi i32 [ %18, %17 ], [ %14, %7 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %21) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @power_supply_deferred_register_work(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -452
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %19, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 9
  %7 = tail call i32 @mutex_trylock(ptr noundef %6) #15
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %19

9:                                                ; preds = %5
  %10 = getelementptr i8, ptr %0, i32 50
  br label %11

11:                                               ; preds = %14, %9
  %12 = load i8, ptr %10, align 2, !range !12
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %31

14:                                               ; preds = %11
  tail call void @msleep(i32 noundef 10) #15
  %15 = load ptr, ptr %2, align 4
  %16 = getelementptr inbounds %struct.device, ptr %15, i32 0, i32 9
  %17 = tail call i32 @mutex_trylock(ptr noundef %16) #15
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %11, label %19

19:                                               ; preds = %14, %5, %1
  %20 = getelementptr i8, ptr %0, i32 44
  %21 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %20) #15
  %22 = getelementptr i8, ptr %0, i32 48
  store i8 1, ptr %22, align 8
  %23 = getelementptr i8, ptr %0, i32 -488
  tail call void @pm_stay_awake(ptr noundef %23) #15
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %20, i32 noundef %21) #15
  %24 = getelementptr i8, ptr %0, i32 -16
  %25 = load ptr, ptr @system_wq, align 4
  %26 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %25, ptr noundef %24) #15
  %27 = load ptr, ptr %2, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %19
  %30 = getelementptr inbounds %struct.device, ptr %27, i32 0, i32 9
  tail call void @mutex_unlock(ptr noundef %30) #15
  br label %31

31:                                               ; preds = %29, %19, %11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @psy_register_thermal(ptr noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.power_supply_desc, ptr %2, i32 0, i32 11
  %4 = load i8, ptr %3, align 4, !range !12
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %37

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.power_supply_desc, ptr %2, i32 0, i32 5
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %37, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.power_supply_desc, ptr %2, i32 0, i32 4
  %12 = load ptr, ptr %11, align 4
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 52
  br i1 %14, label %25, label %15

15:                                               ; preds = %19, %10
  %16 = phi i32 [ %17, %19 ], [ 0, %10 ]
  %17 = add nuw i32 %16, 1
  %18 = icmp eq i32 %17, %8
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = getelementptr i32, ptr %12, i32 %17
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 52
  br i1 %22, label %23, label %15

23:                                               ; preds = %19, %15
  %24 = icmp ult i32 %17, %8
  br i1 %24, label %25, label %37

25:                                               ; preds = %23, %10
  %26 = load ptr, ptr %2, align 4
  %27 = tail call ptr @thermal_zone_device_register(ptr noundef %26, i32 noundef 0, i32 noundef 0, ptr noundef %0, ptr noundef nonnull @psy_tzd_ops, ptr noundef null, i32 noundef 0, i32 noundef 0) #15
  %28 = getelementptr inbounds %struct.power_supply, ptr %0, i32 0, i32 15
  store ptr %27, ptr %28, align 8
  %29 = icmp ugt ptr %27, inttoptr (i32 -4096 to ptr)
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = ptrtoint ptr %27 to i32
  br label %37

32:                                               ; preds = %25
  %33 = tail call i32 @thermal_zone_device_enable(ptr noundef %27) #15
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %32
  %36 = load ptr, ptr %28, align 8
  tail call void @thermal_zone_device_unregister(ptr noundef %36) #15
  br label %37

37:                                               ; preds = %35, %32, %30, %23, %6, %1
  %38 = phi i32 [ %31, %30 ], [ 0, %1 ], [ %33, %35 ], [ 0, %32 ], [ 0, %23 ], [ 0, %6 ]
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @psy_register_cooler(ptr noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.power_supply_desc, ptr %2, i32 0, i32 5
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %28, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.power_supply_desc, ptr %2, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 33
  br i1 %10, label %21, label %11

11:                                               ; preds = %15, %6
  %12 = phi i32 [ %13, %15 ], [ 0, %6 ]
  %13 = add nuw i32 %12, 1
  %14 = icmp eq i32 %13, %4
  br i1 %14, label %19, label %15

15:                                               ; preds = %11
  %16 = getelementptr i32, ptr %8, i32 %13
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 33
  br i1 %18, label %19, label %11

19:                                               ; preds = %15, %11
  %20 = icmp ult i32 %13, %4
  br i1 %20, label %21, label %28

21:                                               ; preds = %19, %6
  %22 = load ptr, ptr %2, align 4
  %23 = tail call ptr @thermal_cooling_device_register(ptr noundef %22, ptr noundef %0, ptr noundef nonnull @psy_tcd_ops) #15
  %24 = getelementptr inbounds %struct.power_supply, ptr %0, i32 0, i32 16
  store ptr %23, ptr %24, align 4
  %25 = icmp ugt ptr %23, inttoptr (i32 -4096 to ptr)
  %26 = ptrtoint ptr %23 to i32
  %27 = select i1 %25, i32 %26, i32 0
  br label %28

28:                                               ; preds = %21, %19, %1
  %29 = phi i32 [ %27, %21 ], [ 0, %19 ], [ 0, %1 ]
  ret i32 %29
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @power_supply_create_triggers(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @power_supply_add_hwmon_sysfs(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #14

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @__power_supply_changed_work(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.power_supply, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.power_supply, ptr %1, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %54, label %29

12:                                               ; preds = %2
  %13 = load ptr, ptr %1, align 8
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %54, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.power_supply, ptr %4, i32 0, i32 4
  %18 = load i32, ptr %17, align 8
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %54, label %23

20:                                               ; preds = %23
  %21 = add nuw i32 %24, 1
  %22 = icmp eq i32 %21, %18
  br i1 %22, label %54, label %23

23:                                               ; preds = %20, %16
  %24 = phi i32 [ %21, %20 ], [ 0, %16 ]
  %25 = getelementptr ptr, ptr %6, i32 %24
  %26 = load ptr, ptr %25, align 4
  %27 = tail call i32 @strcmp(ptr noundef nonnull %14, ptr noundef %26) #15
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %46, label %20

29:                                               ; preds = %8
  %30 = load ptr, ptr %4, align 8
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %54, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.power_supply, ptr %1, i32 0, i32 2
  %35 = load i32, ptr %34, align 8
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %54, label %40

37:                                               ; preds = %40
  %38 = add nuw i32 %41, 1
  %39 = icmp eq i32 %38, %35
  br i1 %39, label %54, label %40

40:                                               ; preds = %37, %33
  %41 = phi i32 [ %38, %37 ], [ 0, %33 ]
  %42 = getelementptr ptr, ptr %10, i32 %41
  %43 = load ptr, ptr %42, align 4
  %44 = tail call i32 @strcmp(ptr noundef %43, ptr noundef nonnull %31) #15
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %48, label %37

46:                                               ; preds = %23
  %47 = load ptr, ptr %4, align 8
  br label %48

48:                                               ; preds = %46, %40
  %49 = phi ptr [ %47, %46 ], [ %30, %40 ]
  %50 = getelementptr inbounds %struct.power_supply_desc, ptr %49, i32 0, i32 9
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %48
  tail call void %51(ptr noundef %4) #15
  br label %54

54:                                               ; preds = %53, %48, %37, %33, %29, %20, %16, %12, %8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @power_supply_update_leds(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomic_notifier_call_chain(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_uevent(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_relax(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_trylock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @__power_supply_find_supply_from_node(ptr nocapture noundef readonly %0, ptr noundef readnone %1) #5 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.power_supply, ptr %4, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, %1
  %8 = zext i1 %7 to i32
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @__power_supply_populate_supplied_from(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #0 {
  %3 = alloca %struct.of_phandle_args, align 4
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.power_supply, ptr %1, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %3, i8 0, i32 72, i1 false) #15, !annotation !11
  %8 = call i32 @__of_parse_phandle_with_args(ptr noundef %7, ptr noundef nonnull @.str.39, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %3) #15
  %9 = icmp ne i32 %8, 0
  %10 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #15
  %11 = icmp eq ptr %10, null
  %12 = select i1 %9, i1 true, i1 %11
  br i1 %12, label %41, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.power_supply, ptr %5, i32 0, i32 5
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %10, %15
  br i1 %16, label %21, label %32

17:                                               ; preds = %32
  %18 = add i32 %33, 1
  %19 = load ptr, ptr %14, align 4
  %20 = icmp eq ptr %38, %19
  br i1 %20, label %21, label %32

21:                                               ; preds = %17, %13
  %22 = phi ptr [ %10, %13 ], [ %38, %17 ]
  %23 = phi i32 [ 0, %13 ], [ %33, %17 ]
  %24 = load ptr, ptr %5, align 8
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.power_supply, ptr %1, i32 0, i32 3
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr ptr, ptr %27, i32 %23
  store ptr %25, ptr %28, align 4
  %29 = getelementptr inbounds %struct.power_supply, ptr %1, i32 0, i32 4
  %30 = load i32, ptr %29, align 8
  %31 = add i32 %30, 1
  store i32 %31, ptr %29, align 8
  call void @of_node_put(ptr noundef nonnull %22) #15
  br label %41

32:                                               ; preds = %17, %13
  %33 = phi i32 [ %18, %17 ], [ 1, %13 ]
  %34 = phi ptr [ %38, %17 ], [ %10, %13 ]
  call void @of_node_put(ptr noundef nonnull %34) #15
  %35 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #15
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %3, i8 0, i32 72, i1 false) #15, !annotation !11
  %36 = call i32 @__of_parse_phandle_with_args(ptr noundef %35, ptr noundef nonnull @.str.39, ptr noundef null, i32 noundef 0, i32 noundef %33, ptr noundef nonnull %3) #15
  %37 = icmp ne i32 %36, 0
  %38 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #15
  %39 = icmp eq ptr %38, null
  %40 = select i1 %37, i1 true, i1 %39
  br i1 %40, label %41, label %17

41:                                               ; preds = %32, %21, %2
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @thermal_zone_device_register(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @thermal_zone_device_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @thermal_zone_device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @power_supply_read_temp(ptr noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca %union.power_supply_propval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #15
  store i32 0, ptr %3, align 4, !annotation !11
  %4 = icmp eq ptr %0, null
  br i1 %4, label %5, label %6, !prof !13

5:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.36, i32 noundef 998, i32 noundef 9, ptr noundef null) #15
  br label %6

6:                                                ; preds = %5, %2
  %7 = getelementptr inbounds %struct.thermal_zone_device, ptr %0, i32 0, i32 8
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.power_supply, ptr %8, i32 0, i32 14
  %10 = load volatile i32, ptr %9, align 4
  %11 = icmp slt i32 %10, 1
  br i1 %11, label %12, label %17

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.power_supply, ptr %8, i32 0, i32 12
  %14 = load i8, ptr %13, align 1, !range !12
  %15 = icmp eq i8 %14, 0
  %16 = select i1 %15, i32 -11, i32 -19
  br label %26

17:                                               ; preds = %6
  %18 = load ptr, ptr %8, align 8
  %19 = getelementptr inbounds %struct.power_supply_desc, ptr %18, i32 0, i32 6
  %20 = load ptr, ptr %19, align 4
  %21 = call i32 %20(ptr noundef %8, i32 noundef 52, ptr noundef nonnull %3) #15
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = load i32, ptr %3, align 4
  %25 = mul i32 %24, 100
  store i32 %25, ptr %1, align 4
  br label %26

26:                                               ; preds = %23, %17, %12
  %27 = phi i32 [ %16, %12 ], [ %21, %17 ], [ 0, %23 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #15
  ret i32 %27
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @thermal_cooling_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ps_get_max_charge_cntl_limit(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca %union.power_supply_propval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #15
  store i32 0, ptr %3, align 4, !annotation !11
  %4 = getelementptr inbounds %struct.thermal_cooling_device, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.power_supply, ptr %5, i32 0, i32 14
  %7 = load volatile i32, ptr %6, align 4
  %8 = icmp slt i32 %7, 1
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.power_supply, ptr %5, i32 0, i32 12
  %11 = load i8, ptr %10, align 1, !range !12
  %12 = icmp eq i8 %11, 0
  %13 = select i1 %12, i32 -11, i32 -19
  br label %22

14:                                               ; preds = %2
  %15 = load ptr, ptr %5, align 8
  %16 = getelementptr inbounds %struct.power_supply_desc, ptr %15, i32 0, i32 6
  %17 = load ptr, ptr %16, align 4
  %18 = call i32 %17(ptr noundef %5, i32 noundef 34, ptr noundef nonnull %3) #15
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = load i32, ptr %3, align 4
  store i32 %21, ptr %1, align 4
  br label %22

22:                                               ; preds = %20, %14, %9
  %23 = phi i32 [ %13, %9 ], [ %18, %14 ], [ 0, %20 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #15
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ps_get_cur_charge_cntl_limit(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca %union.power_supply_propval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #15
  store i32 0, ptr %3, align 4, !annotation !11
  %4 = getelementptr inbounds %struct.thermal_cooling_device, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.power_supply, ptr %5, i32 0, i32 14
  %7 = load volatile i32, ptr %6, align 4
  %8 = icmp slt i32 %7, 1
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.power_supply, ptr %5, i32 0, i32 12
  %11 = load i8, ptr %10, align 1, !range !12
  %12 = icmp eq i8 %11, 0
  %13 = select i1 %12, i32 -11, i32 -19
  br label %22

14:                                               ; preds = %2
  %15 = load ptr, ptr %5, align 8
  %16 = getelementptr inbounds %struct.power_supply_desc, ptr %15, i32 0, i32 6
  %17 = load ptr, ptr %16, align 4
  %18 = call i32 %17(ptr noundef %5, i32 noundef 33, ptr noundef nonnull %3) #15
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = load i32, ptr %3, align 4
  store i32 %21, ptr %1, align 4
  br label %22

22:                                               ; preds = %20, %14, %9
  %23 = phi i32 [ %13, %9 ], [ %18, %14 ], [ 0, %20 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #15
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ps_set_cur_charge_cntl_limit(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = alloca %union.power_supply_propval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #15
  %4 = getelementptr inbounds %struct.thermal_cooling_device, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  store i32 %1, ptr %3, align 4
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.power_supply_desc, ptr %6, i32 0, i32 7
  %8 = load ptr, ptr %7, align 4
  %9 = call i32 %8(ptr noundef %5, i32 noundef 33, ptr noundef nonnull %3) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #15
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @thermal_cooling_device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__class_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @power_supply_uevent(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @power_supply_init_attrs(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { mustprogress nofree nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nofree nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { nounwind }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind allocsize(2) }

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
!8 = !{i64 579088, i64 2148069059, i64 2148069085, i64 2148069132, i64 2148069154, i64 2148069182, i64 2148069202}
!9 = !{i64 2148080474, i64 2148080500, i64 2148080529, i64 2148080563, i64 2148080594, i64 2148080617}
!10 = !{i64 2148082831, i64 2148082857, i64 2148082886, i64 2148082920, i64 2148082951, i64 2148082974}
!11 = !{!"auto-init"}
!12 = !{i8 0, i8 2}
!13 = !{!"branch_weights", i32 1, i32 2000}
!14 = !{i64 2148181153}
!15 = !{i64 2148083515, i64 2148083547, i64 2148083576, i64 2148083610, i64 2148083641, i64 2148083664}
!16 = !{i64 2148181356}
!17 = !{!"branch_weights", i32 2000, i32 1}
