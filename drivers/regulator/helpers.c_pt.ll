; ModuleID = '/llk/IR/drivers/regulator/helpers.c_pt.bc'
source_filename = "../drivers/regulator/helpers.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_regulator_is_enabled_regmap:\09\09\09\09\09"
module asm "\09.asciz \09\22regulator_is_enabled_regmap\22\09\09\09\09\09"
module asm "__kstrtabns_regulator_is_enabled_regmap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_regulator_enable_regmap:\09\09\09\09\09"
module asm "\09.asciz \09\22regulator_enable_regmap\22\09\09\09\09\09"
module asm "__kstrtabns_regulator_enable_regmap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_regulator_disable_regmap:\09\09\09\09\09"
module asm "\09.asciz \09\22regulator_disable_regmap\22\09\09\09\09\09"
module asm "__kstrtabns_regulator_disable_regmap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_regulator_get_voltage_sel_pickable_regmap:\09\09\09\09\09"
module asm "\09.asciz \09\22regulator_get_voltage_sel_pickable_regmap\22\09\09\09\09\09"
module asm "__kstrtabns_regulator_get_voltage_sel_pickable_regmap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_regulator_set_voltage_sel_pickable_regmap:\09\09\09\09\09"
module asm "\09.asciz \09\22regulator_set_voltage_sel_pickable_regmap\22\09\09\09\09\09"
module asm "__kstrtabns_regulator_set_voltage_sel_pickable_regmap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_regulator_get_voltage_sel_regmap:\09\09\09\09\09"
module asm "\09.asciz \09\22regulator_get_voltage_sel_regmap\22\09\09\09\09\09"
module asm "__kstrtabns_regulator_get_voltage_sel_regmap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_regulator_set_voltage_sel_regmap:\09\09\09\09\09"
module asm "\09.asciz \09\22regulator_set_voltage_sel_regmap\22\09\09\09\09\09"
module asm "__kstrtabns_regulator_set_voltage_sel_regmap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_regulator_map_voltage_iterate:\09\09\09\09\09"
module asm "\09.asciz \09\22regulator_map_voltage_iterate\22\09\09\09\09\09"
module asm "__kstrtabns_regulator_map_voltage_iterate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_regulator_map_voltage_ascend:\09\09\09\09\09"
module asm "\09.asciz \09\22regulator_map_voltage_ascend\22\09\09\09\09\09"
module asm "__kstrtabns_regulator_map_voltage_ascend:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_regulator_map_voltage_linear:\09\09\09\09\09"
module asm "\09.asciz \09\22regulator_map_voltage_linear\22\09\09\09\09\09"
module asm "__kstrtabns_regulator_map_voltage_linear:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_regulator_map_voltage_linear_range:\09\09\09\09\09"
module asm "\09.asciz \09\22regulator_map_voltage_linear_range\22\09\09\09\09\09"
module asm "__kstrtabns_regulator_map_voltage_linear_range:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_regulator_map_voltage_pickable_linear_range:\09\09\09\09\09"
module asm "\09.asciz \09\22regulator_map_voltage_pickable_linear_range\22\09\09\09\09\09"
module asm "__kstrtabns_regulator_map_voltage_pickable_linear_range:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_regulator_desc_list_voltage_linear:\09\09\09\09\09"
module asm "\09.asciz \09\22regulator_desc_list_voltage_linear\22\09\09\09\09\09"
module asm "__kstrtabns_regulator_desc_list_voltage_linear:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_regulator_list_voltage_linear:\09\09\09\09\09"
module asm "\09.asciz \09\22regulator_list_voltage_linear\22\09\09\09\09\09"
module asm "__kstrtabns_regulator_list_voltage_linear:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_regulator_list_voltage_pickable_linear_range:\09\09\09\09\09"
module asm "\09.asciz \09\22regulator_list_voltage_pickable_linear_range\22\09\09\09\09\09"
module asm "__kstrtabns_regulator_list_voltage_pickable_linear_range:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_regulator_desc_list_voltage_linear_range:\09\09\09\09\09"
module asm "\09.asciz \09\22regulator_desc_list_voltage_linear_range\22\09\09\09\09\09"
module asm "__kstrtabns_regulator_desc_list_voltage_linear_range:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_regulator_list_voltage_linear_range:\09\09\09\09\09"
module asm "\09.asciz \09\22regulator_list_voltage_linear_range\22\09\09\09\09\09"
module asm "__kstrtabns_regulator_list_voltage_linear_range:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_regulator_list_voltage_table:\09\09\09\09\09"
module asm "\09.asciz \09\22regulator_list_voltage_table\22\09\09\09\09\09"
module asm "__kstrtabns_regulator_list_voltage_table:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_regulator_set_bypass_regmap:\09\09\09\09\09"
module asm "\09.asciz \09\22regulator_set_bypass_regmap\22\09\09\09\09\09"
module asm "__kstrtabns_regulator_set_bypass_regmap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_regulator_set_soft_start_regmap:\09\09\09\09\09"
module asm "\09.asciz \09\22regulator_set_soft_start_regmap\22\09\09\09\09\09"
module asm "__kstrtabns_regulator_set_soft_start_regmap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_regulator_set_pull_down_regmap:\09\09\09\09\09"
module asm "\09.asciz \09\22regulator_set_pull_down_regmap\22\09\09\09\09\09"
module asm "__kstrtabns_regulator_set_pull_down_regmap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_regulator_get_bypass_regmap:\09\09\09\09\09"
module asm "\09.asciz \09\22regulator_get_bypass_regmap\22\09\09\09\09\09"
module asm "__kstrtabns_regulator_get_bypass_regmap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_regulator_set_active_discharge_regmap:\09\09\09\09\09"
module asm "\09.asciz \09\22regulator_set_active_discharge_regmap\22\09\09\09\09\09"
module asm "__kstrtabns_regulator_set_active_discharge_regmap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_regulator_set_current_limit_regmap:\09\09\09\09\09"
module asm "\09.asciz \09\22regulator_set_current_limit_regmap\22\09\09\09\09\09"
module asm "__kstrtabns_regulator_set_current_limit_regmap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_regulator_get_current_limit_regmap:\09\09\09\09\09"
module asm "\09.asciz \09\22regulator_get_current_limit_regmap\22\09\09\09\09\09"
module asm "__kstrtabns_regulator_get_current_limit_regmap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_regulator_bulk_set_supply_names:\09\09\09\09\09"
module asm "\09.asciz \09\22regulator_bulk_set_supply_names\22\09\09\09\09\09"
module asm "__kstrtabns_regulator_bulk_set_supply_names:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_regulator_is_equal:\09\09\09\09\09"
module asm "\09.asciz \09\22regulator_is_equal\22\09\09\09\09\09"
module asm "__kstrtabns_regulator_is_equal:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_regulator_set_ramp_delay_regmap:\09\09\09\09\09"
module asm "\09.asciz \09\22regulator_set_ramp_delay_regmap\22\09\09\09\09\09"
module asm "__kstrtabns_regulator_set_ramp_delay_regmap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.regulator_dev = type { ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.coupling_desc, %struct.blocking_notifier_head, %struct.ww_mutex, ptr, i32, ptr, %struct.device, ptr, ptr, ptr, ptr, %struct.delayed_work, ptr, ptr, ptr, i8, i64, i32, i8, %struct.spinlock }
%struct.list_head = type { ptr, ptr }
%struct.coupling_desc = type { ptr, ptr, i32, i32 }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
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
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.regulator_desc = type { ptr, ptr, ptr, i8, ptr, ptr, i32, i8, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, ptr }
%struct.linear_range = type { i32, i32, i32, i32 }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.regulator = type { ptr, %struct.list_head, i8, i32, i32, i32, [5 x %struct.regulator_voltage], ptr, %struct.device_attribute, ptr, ptr }
%struct.regulator_voltage = type { i32, i32 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }

@__kstrtab_regulator_is_enabled_regmap = external dso_local constant [0 x i8], align 1
@__kstrtabns_regulator_is_enabled_regmap = external dso_local constant [0 x i8], align 1
@__ksymtab_regulator_is_enabled_regmap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @regulator_is_enabled_regmap to i32), ptr @__kstrtab_regulator_is_enabled_regmap, ptr @__kstrtabns_regulator_is_enabled_regmap }, section "___ksymtab_gpl+regulator_is_enabled_regmap", align 4
@__kstrtab_regulator_enable_regmap = external dso_local constant [0 x i8], align 1
@__kstrtabns_regulator_enable_regmap = external dso_local constant [0 x i8], align 1
@__ksymtab_regulator_enable_regmap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @regulator_enable_regmap to i32), ptr @__kstrtab_regulator_enable_regmap, ptr @__kstrtabns_regulator_enable_regmap }, section "___ksymtab_gpl+regulator_enable_regmap", align 4
@__kstrtab_regulator_disable_regmap = external dso_local constant [0 x i8], align 1
@__kstrtabns_regulator_disable_regmap = external dso_local constant [0 x i8], align 1
@__ksymtab_regulator_disable_regmap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @regulator_disable_regmap to i32), ptr @__kstrtab_regulator_disable_regmap, ptr @__kstrtabns_regulator_disable_regmap }, section "___ksymtab_gpl+regulator_disable_regmap", align 4
@__kstrtab_regulator_get_voltage_sel_pickable_regmap = external dso_local constant [0 x i8], align 1
@__kstrtabns_regulator_get_voltage_sel_pickable_regmap = external dso_local constant [0 x i8], align 1
@__ksymtab_regulator_get_voltage_sel_pickable_regmap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @regulator_get_voltage_sel_pickable_regmap to i32), ptr @__kstrtab_regulator_get_voltage_sel_pickable_regmap, ptr @__kstrtabns_regulator_get_voltage_sel_pickable_regmap }, section "___ksymtab_gpl+regulator_get_voltage_sel_pickable_regmap", align 4
@__kstrtab_regulator_set_voltage_sel_pickable_regmap = external dso_local constant [0 x i8], align 1
@__kstrtabns_regulator_set_voltage_sel_pickable_regmap = external dso_local constant [0 x i8], align 1
@__ksymtab_regulator_set_voltage_sel_pickable_regmap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @regulator_set_voltage_sel_pickable_regmap to i32), ptr @__kstrtab_regulator_set_voltage_sel_pickable_regmap, ptr @__kstrtabns_regulator_set_voltage_sel_pickable_regmap }, section "___ksymtab_gpl+regulator_set_voltage_sel_pickable_regmap", align 4
@__kstrtab_regulator_get_voltage_sel_regmap = external dso_local constant [0 x i8], align 1
@__kstrtabns_regulator_get_voltage_sel_regmap = external dso_local constant [0 x i8], align 1
@__ksymtab_regulator_get_voltage_sel_regmap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @regulator_get_voltage_sel_regmap to i32), ptr @__kstrtab_regulator_get_voltage_sel_regmap, ptr @__kstrtabns_regulator_get_voltage_sel_regmap }, section "___ksymtab_gpl+regulator_get_voltage_sel_regmap", align 4
@__kstrtab_regulator_set_voltage_sel_regmap = external dso_local constant [0 x i8], align 1
@__kstrtabns_regulator_set_voltage_sel_regmap = external dso_local constant [0 x i8], align 1
@__ksymtab_regulator_set_voltage_sel_regmap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @regulator_set_voltage_sel_regmap to i32), ptr @__kstrtab_regulator_set_voltage_sel_regmap, ptr @__kstrtabns_regulator_set_voltage_sel_regmap }, section "___ksymtab_gpl+regulator_set_voltage_sel_regmap", align 4
@__kstrtab_regulator_map_voltage_iterate = external dso_local constant [0 x i8], align 1
@__kstrtabns_regulator_map_voltage_iterate = external dso_local constant [0 x i8], align 1
@__ksymtab_regulator_map_voltage_iterate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @regulator_map_voltage_iterate to i32), ptr @__kstrtab_regulator_map_voltage_iterate, ptr @__kstrtabns_regulator_map_voltage_iterate }, section "___ksymtab_gpl+regulator_map_voltage_iterate", align 4
@__kstrtab_regulator_map_voltage_ascend = external dso_local constant [0 x i8], align 1
@__kstrtabns_regulator_map_voltage_ascend = external dso_local constant [0 x i8], align 1
@__ksymtab_regulator_map_voltage_ascend = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @regulator_map_voltage_ascend to i32), ptr @__kstrtab_regulator_map_voltage_ascend, ptr @__kstrtabns_regulator_map_voltage_ascend }, section "___ksymtab_gpl+regulator_map_voltage_ascend", align 4
@__kstrtab_regulator_map_voltage_linear = external dso_local constant [0 x i8], align 1
@__kstrtabns_regulator_map_voltage_linear = external dso_local constant [0 x i8], align 1
@__ksymtab_regulator_map_voltage_linear = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @regulator_map_voltage_linear to i32), ptr @__kstrtab_regulator_map_voltage_linear, ptr @__kstrtabns_regulator_map_voltage_linear }, section "___ksymtab_gpl+regulator_map_voltage_linear", align 4
@__kstrtab_regulator_map_voltage_linear_range = external dso_local constant [0 x i8], align 1
@__kstrtabns_regulator_map_voltage_linear_range = external dso_local constant [0 x i8], align 1
@__ksymtab_regulator_map_voltage_linear_range = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @regulator_map_voltage_linear_range to i32), ptr @__kstrtab_regulator_map_voltage_linear_range, ptr @__kstrtabns_regulator_map_voltage_linear_range }, section "___ksymtab_gpl+regulator_map_voltage_linear_range", align 4
@__kstrtab_regulator_map_voltage_pickable_linear_range = external dso_local constant [0 x i8], align 1
@__kstrtabns_regulator_map_voltage_pickable_linear_range = external dso_local constant [0 x i8], align 1
@__ksymtab_regulator_map_voltage_pickable_linear_range = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @regulator_map_voltage_pickable_linear_range to i32), ptr @__kstrtab_regulator_map_voltage_pickable_linear_range, ptr @__kstrtabns_regulator_map_voltage_pickable_linear_range }, section "___ksymtab_gpl+regulator_map_voltage_pickable_linear_range", align 4
@__kstrtab_regulator_desc_list_voltage_linear = external dso_local constant [0 x i8], align 1
@__kstrtabns_regulator_desc_list_voltage_linear = external dso_local constant [0 x i8], align 1
@__ksymtab_regulator_desc_list_voltage_linear = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @regulator_desc_list_voltage_linear to i32), ptr @__kstrtab_regulator_desc_list_voltage_linear, ptr @__kstrtabns_regulator_desc_list_voltage_linear }, section "___ksymtab_gpl+regulator_desc_list_voltage_linear", align 4
@__kstrtab_regulator_list_voltage_linear = external dso_local constant [0 x i8], align 1
@__kstrtabns_regulator_list_voltage_linear = external dso_local constant [0 x i8], align 1
@__ksymtab_regulator_list_voltage_linear = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @regulator_list_voltage_linear to i32), ptr @__kstrtab_regulator_list_voltage_linear, ptr @__kstrtabns_regulator_list_voltage_linear }, section "___ksymtab_gpl+regulator_list_voltage_linear", align 4
@__kstrtab_regulator_list_voltage_pickable_linear_range = external dso_local constant [0 x i8], align 1
@__kstrtabns_regulator_list_voltage_pickable_linear_range = external dso_local constant [0 x i8], align 1
@__ksymtab_regulator_list_voltage_pickable_linear_range = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @regulator_list_voltage_pickable_linear_range to i32), ptr @__kstrtab_regulator_list_voltage_pickable_linear_range, ptr @__kstrtabns_regulator_list_voltage_pickable_linear_range }, section "___ksymtab_gpl+regulator_list_voltage_pickable_linear_range", align 4
@__kstrtab_regulator_desc_list_voltage_linear_range = external dso_local constant [0 x i8], align 1
@__kstrtabns_regulator_desc_list_voltage_linear_range = external dso_local constant [0 x i8], align 1
@__ksymtab_regulator_desc_list_voltage_linear_range = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @regulator_desc_list_voltage_linear_range to i32), ptr @__kstrtab_regulator_desc_list_voltage_linear_range, ptr @__kstrtabns_regulator_desc_list_voltage_linear_range }, section "___ksymtab_gpl+regulator_desc_list_voltage_linear_range", align 4
@__kstrtab_regulator_list_voltage_linear_range = external dso_local constant [0 x i8], align 1
@__kstrtabns_regulator_list_voltage_linear_range = external dso_local constant [0 x i8], align 1
@__ksymtab_regulator_list_voltage_linear_range = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @regulator_list_voltage_linear_range to i32), ptr @__kstrtab_regulator_list_voltage_linear_range, ptr @__kstrtabns_regulator_list_voltage_linear_range }, section "___ksymtab_gpl+regulator_list_voltage_linear_range", align 4
@__kstrtab_regulator_list_voltage_table = external dso_local constant [0 x i8], align 1
@__kstrtabns_regulator_list_voltage_table = external dso_local constant [0 x i8], align 1
@__ksymtab_regulator_list_voltage_table = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @regulator_list_voltage_table to i32), ptr @__kstrtab_regulator_list_voltage_table, ptr @__kstrtabns_regulator_list_voltage_table }, section "___ksymtab_gpl+regulator_list_voltage_table", align 4
@__kstrtab_regulator_set_bypass_regmap = external dso_local constant [0 x i8], align 1
@__kstrtabns_regulator_set_bypass_regmap = external dso_local constant [0 x i8], align 1
@__ksymtab_regulator_set_bypass_regmap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @regulator_set_bypass_regmap to i32), ptr @__kstrtab_regulator_set_bypass_regmap, ptr @__kstrtabns_regulator_set_bypass_regmap }, section "___ksymtab_gpl+regulator_set_bypass_regmap", align 4
@__kstrtab_regulator_set_soft_start_regmap = external dso_local constant [0 x i8], align 1
@__kstrtabns_regulator_set_soft_start_regmap = external dso_local constant [0 x i8], align 1
@__ksymtab_regulator_set_soft_start_regmap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @regulator_set_soft_start_regmap to i32), ptr @__kstrtab_regulator_set_soft_start_regmap, ptr @__kstrtabns_regulator_set_soft_start_regmap }, section "___ksymtab_gpl+regulator_set_soft_start_regmap", align 4
@__kstrtab_regulator_set_pull_down_regmap = external dso_local constant [0 x i8], align 1
@__kstrtabns_regulator_set_pull_down_regmap = external dso_local constant [0 x i8], align 1
@__ksymtab_regulator_set_pull_down_regmap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @regulator_set_pull_down_regmap to i32), ptr @__kstrtab_regulator_set_pull_down_regmap, ptr @__kstrtabns_regulator_set_pull_down_regmap }, section "___ksymtab_gpl+regulator_set_pull_down_regmap", align 4
@__kstrtab_regulator_get_bypass_regmap = external dso_local constant [0 x i8], align 1
@__kstrtabns_regulator_get_bypass_regmap = external dso_local constant [0 x i8], align 1
@__ksymtab_regulator_get_bypass_regmap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @regulator_get_bypass_regmap to i32), ptr @__kstrtab_regulator_get_bypass_regmap, ptr @__kstrtabns_regulator_get_bypass_regmap }, section "___ksymtab_gpl+regulator_get_bypass_regmap", align 4
@__kstrtab_regulator_set_active_discharge_regmap = external dso_local constant [0 x i8], align 1
@__kstrtabns_regulator_set_active_discharge_regmap = external dso_local constant [0 x i8], align 1
@__ksymtab_regulator_set_active_discharge_regmap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @regulator_set_active_discharge_regmap to i32), ptr @__kstrtab_regulator_set_active_discharge_regmap, ptr @__kstrtabns_regulator_set_active_discharge_regmap }, section "___ksymtab_gpl+regulator_set_active_discharge_regmap", align 4
@__kstrtab_regulator_set_current_limit_regmap = external dso_local constant [0 x i8], align 1
@__kstrtabns_regulator_set_current_limit_regmap = external dso_local constant [0 x i8], align 1
@__ksymtab_regulator_set_current_limit_regmap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @regulator_set_current_limit_regmap to i32), ptr @__kstrtab_regulator_set_current_limit_regmap, ptr @__kstrtabns_regulator_set_current_limit_regmap }, section "___ksymtab_gpl+regulator_set_current_limit_regmap", align 4
@__kstrtab_regulator_get_current_limit_regmap = external dso_local constant [0 x i8], align 1
@__kstrtabns_regulator_get_current_limit_regmap = external dso_local constant [0 x i8], align 1
@__ksymtab_regulator_get_current_limit_regmap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @regulator_get_current_limit_regmap to i32), ptr @__kstrtab_regulator_get_current_limit_regmap, ptr @__kstrtabns_regulator_get_current_limit_regmap }, section "___ksymtab_gpl+regulator_get_current_limit_regmap", align 4
@__kstrtab_regulator_bulk_set_supply_names = external dso_local constant [0 x i8], align 1
@__kstrtabns_regulator_bulk_set_supply_names = external dso_local constant [0 x i8], align 1
@__ksymtab_regulator_bulk_set_supply_names = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @regulator_bulk_set_supply_names to i32), ptr @__kstrtab_regulator_bulk_set_supply_names, ptr @__kstrtabns_regulator_bulk_set_supply_names }, section "___ksymtab_gpl+regulator_bulk_set_supply_names", align 4
@__kstrtab_regulator_is_equal = external dso_local constant [0 x i8], align 1
@__kstrtabns_regulator_is_equal = external dso_local constant [0 x i8], align 1
@__ksymtab_regulator_is_equal = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @regulator_is_equal to i32), ptr @__kstrtab_regulator_is_equal, ptr @__kstrtabns_regulator_is_equal }, section "___ksymtab_gpl+regulator_is_equal", align 4
@.str = private unnamed_addr constant [28 x i8] c"drivers/regulator/helpers.c\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Can't set ramp-delay %u, setting %u\0A\00", align 1
@__kstrtab_regulator_set_ramp_delay_regmap = external dso_local constant [0 x i8], align 1
@__kstrtabns_regulator_set_ramp_delay_regmap = external dso_local constant [0 x i8], align 1
@__ksymtab_regulator_set_ramp_delay_regmap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @regulator_set_ramp_delay_regmap to i32), ptr @__kstrtab_regulator_set_ramp_delay_regmap, ptr @__kstrtabns_regulator_set_ramp_delay_regmap }, section "___ksymtab_gpl+regulator_set_ramp_delay_regmap", align 4
@llvm.compiler.used = appending global [28 x ptr] [ptr @__ksymtab_regulator_bulk_set_supply_names, ptr @__ksymtab_regulator_desc_list_voltage_linear, ptr @__ksymtab_regulator_desc_list_voltage_linear_range, ptr @__ksymtab_regulator_disable_regmap, ptr @__ksymtab_regulator_enable_regmap, ptr @__ksymtab_regulator_get_bypass_regmap, ptr @__ksymtab_regulator_get_current_limit_regmap, ptr @__ksymtab_regulator_get_voltage_sel_pickable_regmap, ptr @__ksymtab_regulator_get_voltage_sel_regmap, ptr @__ksymtab_regulator_is_enabled_regmap, ptr @__ksymtab_regulator_is_equal, ptr @__ksymtab_regulator_list_voltage_linear, ptr @__ksymtab_regulator_list_voltage_linear_range, ptr @__ksymtab_regulator_list_voltage_pickable_linear_range, ptr @__ksymtab_regulator_list_voltage_table, ptr @__ksymtab_regulator_map_voltage_ascend, ptr @__ksymtab_regulator_map_voltage_iterate, ptr @__ksymtab_regulator_map_voltage_linear, ptr @__ksymtab_regulator_map_voltage_linear_range, ptr @__ksymtab_regulator_map_voltage_pickable_linear_range, ptr @__ksymtab_regulator_set_active_discharge_regmap, ptr @__ksymtab_regulator_set_bypass_regmap, ptr @__ksymtab_regulator_set_current_limit_regmap, ptr @__ksymtab_regulator_set_pull_down_regmap, ptr @__ksymtab_regulator_set_ramp_delay_regmap, ptr @__ksymtab_regulator_set_soft_start_regmap, ptr @__ksymtab_regulator_set_voltage_sel_pickable_regmap, ptr @__ksymtab_regulator_set_voltage_sel_regmap], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @regulator_is_enabled_regmap(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  store i32 0, ptr %2, align 4, !annotation !8
  %3 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 17
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %0, align 8
  %6 = getelementptr inbounds %struct.regulator_desc, ptr %5, i32 0, i32 34
  %7 = load i32, ptr %6, align 4
  %8 = call i32 @regmap_read(ptr noundef %4, i32 noundef %7, ptr noundef nonnull %2) #8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %36

10:                                               ; preds = %1
  %11 = load ptr, ptr %0, align 8
  %12 = getelementptr inbounds %struct.regulator_desc, ptr %11, i32 0, i32 35
  %13 = load i32, ptr %12, align 4
  %14 = load i32, ptr %2, align 4
  %15 = and i32 %14, %13
  %16 = getelementptr inbounds %struct.regulator_desc, ptr %11, i32 0, i32 38
  %17 = load i8, ptr %16, align 4, !range !9
  %18 = icmp eq i8 %17, 0
  %19 = getelementptr inbounds %struct.regulator_desc, ptr %11, i32 0, i32 36
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %18, label %29, label %22

22:                                               ; preds = %10
  br i1 %21, label %26, label %23

23:                                               ; preds = %22
  %24 = icmp ne i32 %15, %20
  %25 = zext i1 %24 to i32
  br label %36

26:                                               ; preds = %22
  %27 = icmp eq i32 %15, 0
  %28 = zext i1 %27 to i32
  br label %36

29:                                               ; preds = %10
  br i1 %21, label %33, label %30

30:                                               ; preds = %29
  %31 = icmp eq i32 %15, %20
  %32 = zext i1 %31 to i32
  br label %36

33:                                               ; preds = %29
  %34 = icmp ne i32 %15, 0
  %35 = zext i1 %34 to i32
  br label %36

36:                                               ; preds = %33, %30, %26, %23, %1
  %37 = phi i32 [ %25, %23 ], [ %28, %26 ], [ %32, %30 ], [ %35, %33 ], [ %8, %1 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  ret i32 %37
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @regulator_enable_regmap(ptr nocapture noundef readonly %0) #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.regulator_desc, ptr %2, i32 0, i32 38
  %4 = load i8, ptr %3, align 4, !range !9
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.regulator_desc, ptr %2, i32 0, i32 37
  br label %14

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.regulator_desc, ptr %2, i32 0, i32 36
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.regulator_desc, ptr %2, i32 0, i32 35
  br label %14

14:                                               ; preds = %12, %6
  %15 = phi ptr [ %13, %12 ], [ %7, %6 ]
  %16 = load i32, ptr %15, align 4
  br label %17

17:                                               ; preds = %14, %8
  %18 = phi i32 [ %10, %8 ], [ %16, %14 ]
  %19 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 17
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.regulator_desc, ptr %2, i32 0, i32 34
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.regulator_desc, ptr %2, i32 0, i32 35
  %24 = load i32, ptr %23, align 4
  %25 = tail call i32 @regmap_update_bits_base(ptr noundef %20, i32 noundef %22, i32 noundef %24, i32 noundef %18, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @regulator_disable_regmap(ptr nocapture noundef readonly %0) #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.regulator_desc, ptr %2, i32 0, i32 38
  %4 = load i8, ptr %3, align 4, !range !9
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %12, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.regulator_desc, ptr %2, i32 0, i32 36
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.regulator_desc, ptr %2, i32 0, i32 35
  br label %14

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.regulator_desc, ptr %2, i32 0, i32 37
  br label %14

14:                                               ; preds = %12, %10
  %15 = phi ptr [ %11, %10 ], [ %13, %12 ]
  %16 = load i32, ptr %15, align 4
  br label %17

17:                                               ; preds = %14, %6
  %18 = phi i32 [ %8, %6 ], [ %16, %14 ]
  %19 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 17
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.regulator_desc, ptr %2, i32 0, i32 34
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.regulator_desc, ptr %2, i32 0, i32 35
  %24 = load i32, ptr %23, align 4
  %25 = tail call i32 @regmap_update_bits_base(ptr noundef %20, i32 noundef %22, i32 noundef %24, i32 noundef %18, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @regulator_get_voltage_sel_pickable_regmap(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  store i32 0, ptr %2, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 0, ptr %3, align 4, !annotation !8
  %4 = load ptr, ptr %0, align 8
  %5 = getelementptr inbounds %struct.regulator_desc, ptr %4, i32 0, i32 20
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %55, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 17
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.regulator_desc, ptr %4, i32 0, i32 27
  %12 = load i32, ptr %11, align 4
  %13 = call i32 @regmap_read(ptr noundef %10, i32 noundef %12, ptr noundef nonnull %3) #8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %55

15:                                               ; preds = %8
  %16 = load ptr, ptr %9, align 4
  %17 = load ptr, ptr %0, align 8
  %18 = getelementptr inbounds %struct.regulator_desc, ptr %17, i32 0, i32 25
  %19 = load i32, ptr %18, align 4
  %20 = call i32 @regmap_read(ptr noundef %16, i32 noundef %19, ptr noundef nonnull %2) #8
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %55

22:                                               ; preds = %15
  %23 = load ptr, ptr %0, align 8
  %24 = getelementptr inbounds %struct.regulator_desc, ptr %23, i32 0, i32 28
  %25 = load i32, ptr %24, align 4
  %26 = load i32, ptr %3, align 4
  %27 = and i32 %26, %25
  %28 = call i32 @llvm.cttz.i32(i32 %25, i1 true), !range !10
  %29 = icmp eq i32 %25, 0
  %30 = select i1 %29, i32 -1, i32 %28
  %31 = lshr i32 %27, %30
  store i32 %31, ptr %3, align 4
  %32 = getelementptr inbounds %struct.regulator_desc, ptr %23, i32 0, i32 21
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %55, label %35

35:                                               ; preds = %22
  %36 = load i32, ptr %2, align 4
  %37 = getelementptr inbounds %struct.regulator_desc, ptr %23, i32 0, i32 26
  %38 = load i32, ptr %37, align 4
  %39 = and i32 %38, %36
  %40 = getelementptr inbounds %struct.regulator_desc, ptr %23, i32 0, i32 22
  %41 = load i32, ptr %40, align 4
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %55

43:                                               ; preds = %48, %35
  %44 = phi i32 [ %49, %48 ], [ 0, %35 ]
  %45 = getelementptr i32, ptr %33, i32 %44
  %46 = load i32, ptr %45, align 4
  %47 = icmp eq i32 %46, %39
  br i1 %47, label %51, label %48

48:                                               ; preds = %43
  %49 = add nuw nsw i32 %44, 1
  %50 = icmp eq i32 %49, %41
  br i1 %50, label %55, label %43

51:                                               ; preds = %43
  %52 = call i32 @linear_range_values_in_range_array(ptr noundef nonnull %6, i32 noundef %44) #8
  %53 = load i32, ptr %3, align 4
  %54 = add i32 %53, %52
  br label %55

55:                                               ; preds = %51, %48, %35, %22, %15, %8, %1
  %56 = phi i32 [ %54, %51 ], [ -22, %1 ], [ %13, %8 ], [ %20, %15 ], [ -22, %22 ], [ -22, %35 ], [ -22, %48 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  ret i32 %56
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @linear_range_values_in_range_array(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @regulator_set_voltage_sel_pickable_regmap(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.regulator_desc, ptr %3, i32 0, i32 22
  %5 = load i32, ptr %4, align 4
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %27

7:                                                ; preds = %20, %2
  %8 = phi ptr [ %23, %20 ], [ %3, %2 ]
  %9 = phi i32 [ %22, %20 ], [ 0, %2 ]
  %10 = phi i32 [ %21, %20 ], [ %1, %2 ]
  %11 = getelementptr inbounds %struct.regulator_desc, ptr %8, i32 0, i32 20
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr %struct.linear_range, ptr %12, i32 %9
  %14 = tail call i32 @linear_range_values_in_range(ptr noundef %13) #8
  %15 = icmp ult i32 %10, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %7
  %17 = load ptr, ptr %0, align 8
  %18 = getelementptr inbounds %struct.regulator_desc, ptr %17, i32 0, i32 22
  %19 = load i32, ptr %18, align 4
  br label %27

20:                                               ; preds = %7
  %21 = sub i32 %10, %14
  %22 = add nuw nsw i32 %9, 1
  %23 = load ptr, ptr %0, align 8
  %24 = getelementptr inbounds %struct.regulator_desc, ptr %23, i32 0, i32 22
  %25 = load i32, ptr %24, align 4
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %7, label %27

27:                                               ; preds = %20, %16, %2
  %28 = phi i32 [ %5, %2 ], [ %19, %16 ], [ %25, %20 ]
  %29 = phi ptr [ %3, %2 ], [ %17, %16 ], [ %23, %20 ]
  %30 = phi i32 [ %1, %2 ], [ %10, %16 ], [ %21, %20 ]
  %31 = phi i32 [ 0, %2 ], [ %9, %16 ], [ %22, %20 ]
  %32 = icmp eq i32 %31, %28
  br i1 %32, label %87, label %33

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.regulator_desc, ptr %29, i32 0, i32 28
  %35 = load i32, ptr %34, align 4
  %36 = tail call i32 @llvm.cttz.i32(i32 %35, i1 true), !range !10
  %37 = icmp eq i32 %35, 0
  %38 = select i1 %37, i32 -1, i32 %36
  %39 = shl i32 %30, %38
  %40 = getelementptr inbounds %struct.regulator_desc, ptr %29, i32 0, i32 20
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr %struct.linear_range, ptr %41, i32 %31, i32 1
  %43 = load i32, ptr %42, align 4
  %44 = add i32 %39, %43
  %45 = getelementptr inbounds %struct.regulator_desc, ptr %29, i32 0, i32 21
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr i32, ptr %46, i32 %31
  %48 = load i32, ptr %47, align 4
  %49 = getelementptr inbounds %struct.regulator_desc, ptr %29, i32 0, i32 27
  %50 = load i32, ptr %49, align 4
  %51 = getelementptr inbounds %struct.regulator_desc, ptr %29, i32 0, i32 25
  %52 = load i32, ptr %51, align 4
  %53 = icmp eq i32 %50, %52
  %54 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 17
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr inbounds %struct.regulator_desc, ptr %29, i32 0, i32 26
  %57 = load i32, ptr %56, align 4
  br i1 %53, label %58, label %62

58:                                               ; preds = %33
  %59 = or i32 %57, %35
  %60 = or i32 %44, %48
  %61 = tail call i32 @regmap_update_bits_base(ptr noundef %55, i32 noundef %50, i32 noundef %59, i32 noundef %60, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %73

62:                                               ; preds = %33
  %63 = tail call i32 @regmap_update_bits_base(ptr noundef %55, i32 noundef %52, i32 noundef %57, i32 noundef %48, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %87

65:                                               ; preds = %62
  %66 = load ptr, ptr %54, align 4
  %67 = load ptr, ptr %0, align 8
  %68 = getelementptr inbounds %struct.regulator_desc, ptr %67, i32 0, i32 27
  %69 = load i32, ptr %68, align 4
  %70 = getelementptr inbounds %struct.regulator_desc, ptr %67, i32 0, i32 28
  %71 = load i32, ptr %70, align 4
  %72 = tail call i32 @regmap_update_bits_base(ptr noundef %66, i32 noundef %69, i32 noundef %71, i32 noundef %44, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %73

73:                                               ; preds = %65, %58
  %74 = phi i32 [ %61, %58 ], [ %72, %65 ]
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %87

76:                                               ; preds = %73
  %77 = load ptr, ptr %0, align 8
  %78 = getelementptr inbounds %struct.regulator_desc, ptr %77, i32 0, i32 33
  %79 = load i32, ptr %78, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %87, label %81

81:                                               ; preds = %76
  %82 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 17
  %83 = load ptr, ptr %82, align 4
  %84 = getelementptr inbounds %struct.regulator_desc, ptr %77, i32 0, i32 32
  %85 = load i32, ptr %84, align 4
  %86 = tail call i32 @regmap_update_bits_base(ptr noundef %83, i32 noundef %85, i32 noundef %79, i32 noundef %79, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %87

87:                                               ; preds = %81, %76, %73, %62, %27
  %88 = phi i32 [ -22, %27 ], [ %63, %62 ], [ %74, %73 ], [ %86, %81 ], [ 0, %76 ]
  ret i32 %88
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @linear_range_values_in_range(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @regulator_get_voltage_sel_regmap(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  store i32 0, ptr %2, align 4, !annotation !8
  %3 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 17
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %0, align 8
  %6 = getelementptr inbounds %struct.regulator_desc, ptr %5, i32 0, i32 27
  %7 = load i32, ptr %6, align 4
  %8 = call i32 @regmap_read(ptr noundef %4, i32 noundef %7, ptr noundef nonnull %2) #8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %20

10:                                               ; preds = %1
  %11 = load ptr, ptr %0, align 8
  %12 = getelementptr inbounds %struct.regulator_desc, ptr %11, i32 0, i32 28
  %13 = load i32, ptr %12, align 4
  %14 = load i32, ptr %2, align 4
  %15 = and i32 %14, %13
  %16 = call i32 @llvm.cttz.i32(i32 %13, i1 true), !range !10
  %17 = icmp eq i32 %13, 0
  %18 = select i1 %17, i32 -1, i32 %16
  %19 = lshr i32 %15, %18
  br label %20

20:                                               ; preds = %10, %1
  %21 = phi i32 [ %19, %10 ], [ %8, %1 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @regulator_set_voltage_sel_regmap(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.regulator_desc, ptr %3, i32 0, i32 28
  %5 = load i32, ptr %4, align 4
  %6 = tail call i32 @llvm.cttz.i32(i32 %5, i1 true), !range !10
  %7 = icmp eq i32 %5, 0
  %8 = select i1 %7, i32 -1, i32 %6
  %9 = shl i32 %1, %8
  %10 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 17
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.regulator_desc, ptr %3, i32 0, i32 27
  %13 = load i32, ptr %12, align 4
  %14 = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef %13, i32 noundef %5, i32 noundef %9, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %2
  %17 = load ptr, ptr %0, align 8
  %18 = getelementptr inbounds %struct.regulator_desc, ptr %17, i32 0, i32 33
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %16
  %22 = load ptr, ptr %10, align 4
  %23 = getelementptr inbounds %struct.regulator_desc, ptr %17, i32 0, i32 32
  %24 = load i32, ptr %23, align 4
  %25 = tail call i32 @regmap_update_bits_base(ptr noundef %22, i32 noundef %24, i32 noundef %19, i32 noundef %19, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %26

26:                                               ; preds = %21, %16, %2
  %27 = phi i32 [ %14, %2 ], [ %25, %21 ], [ 0, %16 ]
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @regulator_map_voltage_iterate(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = load ptr, ptr %0, align 8
  %5 = getelementptr inbounds %struct.regulator_desc, ptr %4, i32 0, i32 8
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %34, label %8

8:                                                ; preds = %8, %3
  %9 = phi ptr [ %27, %8 ], [ %4, %3 ]
  %10 = phi i32 [ %26, %8 ], [ 0, %3 ]
  %11 = phi i32 [ %25, %8 ], [ 0, %3 ]
  %12 = phi i32 [ %24, %8 ], [ 2147483647, %3 ]
  %13 = getelementptr inbounds %struct.regulator_desc, ptr %9, i32 0, i32 10
  %14 = load ptr, ptr %13, align 4
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 %15(ptr noundef %0, i32 noundef %10) #8
  %17 = icmp slt i32 %16, 0
  %18 = icmp sge i32 %16, %12
  %19 = select i1 %17, i1 true, i1 %18
  %20 = icmp slt i32 %16, %1
  %21 = or i1 %20, %19
  %22 = icmp sgt i32 %16, %2
  %23 = or i1 %22, %21
  %24 = select i1 %23, i32 %12, i32 %16
  %25 = select i1 %23, i32 %11, i32 %10
  %26 = add nuw i32 %10, 1
  %27 = load ptr, ptr %0, align 8
  %28 = getelementptr inbounds %struct.regulator_desc, ptr %27, i32 0, i32 8
  %29 = load i32, ptr %28, align 4
  %30 = icmp ult i32 %26, %29
  br i1 %30, label %8, label %31

31:                                               ; preds = %8
  %32 = icmp eq i32 %24, 2147483647
  %33 = select i1 %32, i32 -22, i32 %25
  br label %34

34:                                               ; preds = %31, %3
  %35 = phi i32 [ -22, %3 ], [ %33, %31 ]
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @regulator_map_voltage_ascend(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = load ptr, ptr %0, align 8
  %5 = getelementptr inbounds %struct.regulator_desc, ptr %4, i32 0, i32 8
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %26, label %8

8:                                                ; preds = %20, %3
  %9 = phi ptr [ %22, %20 ], [ %4, %3 ]
  %10 = phi i32 [ %21, %20 ], [ 0, %3 ]
  %11 = getelementptr inbounds %struct.regulator_desc, ptr %9, i32 0, i32 10
  %12 = load ptr, ptr %11, align 4
  %13 = load ptr, ptr %12, align 4
  %14 = tail call i32 %13(ptr noundef %0, i32 noundef %10) #8
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %8
  %17 = icmp sgt i32 %14, %2
  br i1 %17, label %26, label %18

18:                                               ; preds = %16
  %19 = icmp slt i32 %14, %1
  br i1 %19, label %20, label %26

20:                                               ; preds = %18, %8
  %21 = add nuw i32 %10, 1
  %22 = load ptr, ptr %0, align 8
  %23 = getelementptr inbounds %struct.regulator_desc, ptr %22, i32 0, i32 8
  %24 = load i32, ptr %23, align 4
  %25 = icmp ult i32 %21, %24
  br i1 %25, label %8, label %26

26:                                               ; preds = %20, %18, %16, %3
  %27 = phi i32 [ -22, %3 ], [ -22, %20 ], [ -22, %16 ], [ %10, %18 ]
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @regulator_map_voltage_linear(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = load ptr, ptr %0, align 8
  %5 = getelementptr inbounds %struct.regulator_desc, ptr %4, i32 0, i32 8
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 1
  %8 = getelementptr inbounds %struct.regulator_desc, ptr %4, i32 0, i32 15
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %7, label %11, label %19

11:                                               ; preds = %3
  br i1 %10, label %12, label %21

12:                                               ; preds = %11
  %13 = getelementptr inbounds %struct.regulator_desc, ptr %4, i32 0, i32 14
  %14 = load i32, ptr %13, align 4
  %15 = icmp ult i32 %14, %1
  %16 = icmp ugt i32 %14, %2
  %17 = or i1 %15, %16
  %18 = select i1 %17, i32 -22, i32 0
  br label %42

19:                                               ; preds = %3
  br i1 %10, label %20, label %21

20:                                               ; preds = %19
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/regulator/helpers.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 375, 0\0A.popsection", ""() #8, !srcloc !11
  unreachable

21:                                               ; preds = %19, %11
  %22 = getelementptr inbounds %struct.regulator_desc, ptr %4, i32 0, i32 14
  %23 = load i32, ptr %22, align 4
  %24 = tail call i32 @llvm.umax.i32(i32 %23, i32 %1)
  %25 = xor i32 %23, -1
  %26 = add i32 %9, %25
  %27 = add i32 %26, %24
  %28 = udiv i32 %27, %9
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %42, label %30

30:                                               ; preds = %21
  %31 = getelementptr inbounds %struct.regulator_desc, ptr %4, i32 0, i32 16
  %32 = load i32, ptr %31, align 4
  %33 = add i32 %32, %28
  %34 = getelementptr inbounds %struct.regulator_desc, ptr %4, i32 0, i32 10
  %35 = load ptr, ptr %34, align 4
  %36 = load ptr, ptr %35, align 4
  %37 = tail call i32 %36(ptr noundef %0, i32 noundef %33) #8
  %38 = icmp slt i32 %37, %24
  %39 = icmp sgt i32 %37, %2
  %40 = or i1 %38, %39
  %41 = select i1 %40, i32 -22, i32 %33
  br label %42

42:                                               ; preds = %30, %21, %12
  %43 = phi i32 [ %28, %21 ], [ %18, %12 ], [ %41, %30 ]
  ret i32 %43
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @regulator_map_voltage_linear_range(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  store i32 0, ptr %4, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #8
  store i8 0, ptr %5, align 1, !annotation !8
  %6 = load ptr, ptr %0, align 8
  %7 = getelementptr inbounds %struct.regulator_desc, ptr %6, i32 0, i32 22
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %3
  %11 = icmp sgt i32 %8, 0
  br i1 %11, label %13, label %42

12:                                               ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/regulator/helpers.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 417, 0\0A.popsection", ""() #8, !srcloc !12
  unreachable

13:                                               ; preds = %35, %10
  %14 = phi ptr [ %38, %35 ], [ %6, %10 ]
  %15 = phi i32 [ %37, %35 ], [ 0, %10 ]
  %16 = getelementptr inbounds %struct.regulator_desc, ptr %14, i32 0, i32 20
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr %struct.linear_range, ptr %17, i32 %15
  %19 = call i32 @linear_range_get_selector_high(ptr noundef %18, i32 noundef %1, ptr noundef nonnull %4, ptr noundef nonnull %5) #8
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %35

21:                                               ; preds = %13
  %22 = load i32, ptr %4, align 4
  %23 = load ptr, ptr %0, align 8
  %24 = getelementptr inbounds %struct.regulator_desc, ptr %23, i32 0, i32 10
  %25 = load ptr, ptr %24, align 4
  %26 = load ptr, ptr %25, align 4
  %27 = call i32 %26(ptr noundef %0, i32 noundef %22) #8
  %28 = icmp slt i32 %27, %1
  %29 = icmp sgt i32 %27, %2
  %30 = or i1 %28, %29
  br i1 %30, label %35, label %31

31:                                               ; preds = %21
  %32 = load ptr, ptr %0, align 8
  %33 = getelementptr inbounds %struct.regulator_desc, ptr %32, i32 0, i32 22
  %34 = load i32, ptr %33, align 4
  br label %42

35:                                               ; preds = %21, %13
  %36 = phi i32 [ %19, %13 ], [ %22, %21 ]
  %37 = add nuw nsw i32 %15, 1
  %38 = load ptr, ptr %0, align 8
  %39 = getelementptr inbounds %struct.regulator_desc, ptr %38, i32 0, i32 22
  %40 = load i32, ptr %39, align 4
  %41 = icmp slt i32 %37, %40
  br i1 %41, label %13, label %42

42:                                               ; preds = %35, %31, %10
  %43 = phi i32 [ %8, %10 ], [ %34, %31 ], [ %40, %35 ]
  %44 = phi i32 [ 0, %10 ], [ %15, %31 ], [ %37, %35 ]
  %45 = phi i32 [ -22, %10 ], [ %22, %31 ], [ %36, %35 ]
  %46 = icmp eq i32 %44, %43
  %47 = select i1 %46, i32 -22, i32 %45
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  ret i32 %47
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @linear_range_get_selector_high(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @regulator_map_voltage_pickable_linear_range(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  %6 = load ptr, ptr %0, align 8
  %7 = getelementptr inbounds %struct.regulator_desc, ptr %6, i32 0, i32 22
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %3
  %11 = icmp sgt i32 %8, 0
  br i1 %11, label %13, label %56

12:                                               ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/regulator/helpers.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 465, 0\0A.popsection", ""() #8, !srcloc !13
  unreachable

13:                                               ; preds = %47, %10
  %14 = phi ptr [ %52, %47 ], [ %6, %10 ]
  %15 = phi i32 [ %50, %47 ], [ 0, %10 ]
  %16 = phi i32 [ %51, %47 ], [ 0, %10 ]
  %17 = phi i32 [ %48, %47 ], [ -22, %10 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #8
  store i8 0, ptr %4, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  store i32 0, ptr %5, align 4, !annotation !8
  %18 = getelementptr inbounds %struct.regulator_desc, ptr %14, i32 0, i32 20
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr %struct.linear_range, ptr %19, i32 %16
  %21 = call i32 @linear_range_get_max_value(ptr noundef %20) #8
  %22 = icmp slt i32 %21, %1
  br i1 %22, label %47, label %23

23:                                               ; preds = %13
  %24 = load i32, ptr %20, align 4
  %25 = icmp ugt i32 %24, %2
  br i1 %25, label %47, label %26

26:                                               ; preds = %23
  %27 = call i32 @linear_range_get_selector_high(ptr noundef %20, i32 noundef %1, ptr noundef nonnull %5, ptr noundef nonnull %4) #8
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %47

29:                                               ; preds = %26
  %30 = load i32, ptr %5, align 4
  %31 = add i32 %30, %15
  %32 = getelementptr %struct.linear_range, ptr %19, i32 %16, i32 1
  %33 = load i32, ptr %32, align 4
  %34 = sub i32 %31, %33
  %35 = load ptr, ptr %0, align 8
  %36 = getelementptr inbounds %struct.regulator_desc, ptr %35, i32 0, i32 10
  %37 = load ptr, ptr %36, align 4
  %38 = load ptr, ptr %37, align 4
  %39 = call i32 %38(ptr noundef %0, i32 noundef %34) #8
  %40 = icmp slt i32 %39, %1
  %41 = icmp sgt i32 %39, %2
  %42 = or i1 %40, %41
  br i1 %42, label %47, label %43

43:                                               ; preds = %29
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #8
  %44 = load ptr, ptr %0, align 8
  %45 = getelementptr inbounds %struct.regulator_desc, ptr %44, i32 0, i32 22
  %46 = load i32, ptr %45, align 4
  br label %56

47:                                               ; preds = %29, %26, %23, %13
  %48 = phi i32 [ %17, %23 ], [ %17, %13 ], [ %27, %26 ], [ %34, %29 ]
  %49 = call i32 @linear_range_values_in_range(ptr noundef %20) #8
  %50 = add i32 %49, %15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #8
  %51 = add nuw nsw i32 %16, 1
  %52 = load ptr, ptr %0, align 8
  %53 = getelementptr inbounds %struct.regulator_desc, ptr %52, i32 0, i32 22
  %54 = load i32, ptr %53, align 4
  %55 = icmp slt i32 %51, %54
  br i1 %55, label %13, label %56

56:                                               ; preds = %47, %43, %10
  %57 = phi i32 [ %46, %43 ], [ %8, %10 ], [ %54, %47 ]
  %58 = phi i32 [ %16, %43 ], [ 0, %10 ], [ %51, %47 ]
  %59 = phi i32 [ %34, %43 ], [ -22, %10 ], [ %48, %47 ]
  %60 = icmp eq i32 %58, %57
  %61 = select i1 %60, i32 -22, i32 %59
  ret i32 %61
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @linear_range_get_max_value(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @regulator_desc_list_voltage_linear(ptr nocapture noundef readonly %0, i32 noundef %1) #4 {
  %3 = getelementptr inbounds %struct.regulator_desc, ptr %0, i32 0, i32 8
  %4 = load i32, ptr %3, align 4
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %6, label %18

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.regulator_desc, ptr %0, i32 0, i32 16
  %8 = load i32, ptr %7, align 4
  %9 = icmp ugt i32 %8, %1
  br i1 %9, label %18, label %10

10:                                               ; preds = %6
  %11 = sub i32 %1, %8
  %12 = getelementptr inbounds %struct.regulator_desc, ptr %0, i32 0, i32 14
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.regulator_desc, ptr %0, i32 0, i32 15
  %15 = load i32, ptr %14, align 4
  %16 = mul i32 %15, %11
  %17 = add i32 %16, %13
  br label %18

18:                                               ; preds = %10, %6, %2
  %19 = phi i32 [ %17, %10 ], [ -22, %2 ], [ 0, %6 ]
  ret i32 %19
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @regulator_list_voltage_linear(ptr nocapture noundef readonly %0, i32 noundef %1) #5 {
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.regulator_desc, ptr %3, i32 0, i32 8
  %5 = load i32, ptr %4, align 4
  %6 = icmp ugt i32 %5, %1
  br i1 %6, label %7, label %19

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.regulator_desc, ptr %3, i32 0, i32 16
  %9 = load i32, ptr %8, align 4
  %10 = icmp ugt i32 %9, %1
  br i1 %10, label %19, label %11

11:                                               ; preds = %7
  %12 = sub i32 %1, %9
  %13 = getelementptr inbounds %struct.regulator_desc, ptr %3, i32 0, i32 14
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.regulator_desc, ptr %3, i32 0, i32 15
  %16 = load i32, ptr %15, align 4
  %17 = mul i32 %16, %12
  %18 = add i32 %17, %14
  br label %19

19:                                               ; preds = %11, %7, %2
  %20 = phi i32 [ %18, %11 ], [ -22, %2 ], [ 0, %7 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @regulator_list_voltage_pickable_linear_range(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.regulator_desc, ptr %3, i32 0, i32 22
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = icmp sgt i32 %5, 0
  br i1 %8, label %10, label %34

9:                                                ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/regulator/helpers.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 572, 0\0A.popsection", ""() #8, !srcloc !14
  unreachable

10:                                               ; preds = %28, %7
  %11 = phi ptr [ %30, %28 ], [ %3, %7 ]
  %12 = phi i32 [ %18, %28 ], [ 0, %7 ]
  %13 = phi i32 [ %29, %28 ], [ 0, %7 ]
  %14 = getelementptr inbounds %struct.regulator_desc, ptr %11, i32 0, i32 20
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr %struct.linear_range, ptr %15, i32 %13
  %17 = tail call i32 @linear_range_values_in_range(ptr noundef %16) #8
  %18 = add i32 %17, %12
  %19 = add i32 %18, -1
  %20 = icmp ult i32 %19, %1
  br i1 %20, label %28, label %21

21:                                               ; preds = %10
  %22 = sub i32 %1, %12
  %23 = load i32, ptr %16, align 4
  %24 = getelementptr %struct.linear_range, ptr %15, i32 %13, i32 3
  %25 = load i32, ptr %24, align 4
  %26 = mul i32 %25, %22
  %27 = add i32 %26, %23
  br label %34

28:                                               ; preds = %10
  %29 = add nuw nsw i32 %13, 1
  %30 = load ptr, ptr %0, align 8
  %31 = getelementptr inbounds %struct.regulator_desc, ptr %30, i32 0, i32 22
  %32 = load i32, ptr %31, align 4
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %10, label %34

34:                                               ; preds = %28, %21, %7
  %35 = phi i32 [ %27, %21 ], [ -22, %7 ], [ -22, %28 ]
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @regulator_desc_list_voltage_linear_range(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 0, ptr %3, align 4, !annotation !8
  %4 = getelementptr inbounds %struct.regulator_desc, ptr %0, i32 0, i32 22
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8, !prof !15

7:                                                ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/regulator/helpers.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 623, 0\0A.popsection", ""() #8, !srcloc !16
  unreachable

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.regulator_desc, ptr %0, i32 0, i32 20
  %10 = load ptr, ptr %9, align 4
  %11 = call i32 @linear_range_get_value_array(ptr noundef %10, i32 noundef %5, i32 noundef %1, ptr noundef nonnull %3) #8
  %12 = icmp eq i32 %11, 0
  %13 = load i32, ptr %3, align 4
  %14 = select i1 %12, i32 %13, i32 %11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  ret i32 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @linear_range_get_value_array(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @regulator_list_voltage_linear_range(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = load ptr, ptr %0, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 0, ptr %3, align 4, !annotation !8
  %5 = getelementptr inbounds %struct.regulator_desc, ptr %4, i32 0, i32 22
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %9, !prof !15

8:                                                ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/regulator/helpers.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 623, 0\0A.popsection", ""() #8, !srcloc !16
  unreachable

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.regulator_desc, ptr %4, i32 0, i32 20
  %11 = load ptr, ptr %10, align 4
  %12 = call i32 @linear_range_get_value_array(ptr noundef %11, i32 noundef %6, i32 noundef %1, ptr noundef nonnull %3) #8
  %13 = icmp eq i32 %12, 0
  %14 = load i32, ptr %3, align 4
  %15 = select i1 %13, i32 %14, i32 %12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @regulator_list_voltage_table(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.regulator_desc, ptr %3, i32 0, i32 23
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/regulator/helpers.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 666, 0\0A.popsection", ""() #8, !srcloc !17
  unreachable

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.regulator_desc, ptr %3, i32 0, i32 8
  %10 = load i32, ptr %9, align 4
  %11 = icmp ugt i32 %10, %1
  br i1 %11, label %12, label %19

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.regulator_desc, ptr %3, i32 0, i32 16
  %14 = load i32, ptr %13, align 4
  %15 = icmp ugt i32 %14, %1
  br i1 %15, label %19, label %16

16:                                               ; preds = %12
  %17 = getelementptr i32, ptr %5, i32 %1
  %18 = load i32, ptr %17, align 4
  br label %19

19:                                               ; preds = %16, %12, %8
  %20 = phi i32 [ %18, %16 ], [ -22, %8 ], [ 0, %12 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @regulator_set_bypass_regmap(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) #0 {
  %3 = load ptr, ptr %0, align 8
  br i1 %1, label %4, label %10

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.regulator_desc, ptr %3, i32 0, i32 41
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %15

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.regulator_desc, ptr %3, i32 0, i32 40
  br label %12

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.regulator_desc, ptr %3, i32 0, i32 42
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi ptr [ %9, %8 ], [ %11, %10 ]
  %14 = load i32, ptr %13, align 4
  br label %15

15:                                               ; preds = %12, %4
  %16 = phi i32 [ %6, %4 ], [ %14, %12 ]
  %17 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 17
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.regulator_desc, ptr %3, i32 0, i32 39
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.regulator_desc, ptr %3, i32 0, i32 40
  %22 = load i32, ptr %21, align 4
  %23 = tail call i32 @regmap_update_bits_base(ptr noundef %18, i32 noundef %20, i32 noundef %22, i32 noundef %16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @regulator_set_soft_start_regmap(ptr nocapture noundef readonly %0) #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.regulator_desc, ptr %2, i32 0, i32 49
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  %6 = getelementptr inbounds %struct.regulator_desc, ptr %2, i32 0, i32 48
  %7 = load i32, ptr %6, align 4
  %8 = select i1 %5, i32 %7, i32 %4
  %9 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 17
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.regulator_desc, ptr %2, i32 0, i32 47
  %12 = load i32, ptr %11, align 4
  %13 = tail call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef %12, i32 noundef %7, i32 noundef %8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @regulator_set_pull_down_regmap(ptr nocapture noundef readonly %0) #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.regulator_desc, ptr %2, i32 0, i32 52
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  %6 = getelementptr inbounds %struct.regulator_desc, ptr %2, i32 0, i32 51
  %7 = load i32, ptr %6, align 4
  %8 = select i1 %5, i32 %7, i32 %4
  %9 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 17
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.regulator_desc, ptr %2, i32 0, i32 50
  %12 = load i32, ptr %11, align 4
  %13 = tail call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef %12, i32 noundef %7, i32 noundef %8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @regulator_get_bypass_regmap(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 0, ptr %3, align 4, !annotation !8
  %4 = load ptr, ptr %0, align 8
  %5 = getelementptr inbounds %struct.regulator_desc, ptr %4, i32 0, i32 41
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 17
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.regulator_desc, ptr %4, i32 0, i32 39
  %10 = load i32, ptr %9, align 4
  %11 = call i32 @regmap_read(ptr noundef %8, i32 noundef %10, ptr noundef nonnull %3) #8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %2
  %14 = icmp eq i32 %6, 0
  %15 = load ptr, ptr %0, align 8
  %16 = getelementptr inbounds %struct.regulator_desc, ptr %15, i32 0, i32 40
  %17 = load i32, ptr %16, align 4
  %18 = select i1 %14, i32 %17, i32 %6
  %19 = load i32, ptr %3, align 4
  %20 = and i32 %17, %19
  %21 = icmp eq i32 %20, %18
  %22 = zext i1 %21 to i8
  store i8 %22, ptr %1, align 1
  br label %23

23:                                               ; preds = %13, %2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @regulator_set_active_discharge_regmap(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) #0 {
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.regulator_desc, ptr %3, i32 0, i32 43
  %5 = getelementptr inbounds %struct.regulator_desc, ptr %3, i32 0, i32 44
  %6 = select i1 %1, ptr %4, ptr %5
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 17
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.regulator_desc, ptr %3, i32 0, i32 46
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.regulator_desc, ptr %3, i32 0, i32 45
  %13 = load i32, ptr %12, align 4
  %14 = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef %11, i32 noundef %13, i32 noundef %7, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @regulator_set_current_limit_regmap(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = load ptr, ptr %0, align 8
  %5 = getelementptr inbounds %struct.regulator_desc, ptr %4, i32 0, i32 9
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %64, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.regulator_desc, ptr %4, i32 0, i32 24
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %64, label %12

12:                                               ; preds = %8
  %13 = add i32 %6, -1
  %14 = getelementptr i32, ptr %10, i32 %13
  %15 = load i32, ptr %14, align 4
  %16 = load i32, ptr %10, align 4
  %17 = icmp ugt i32 %15, %16
  br i1 %17, label %22, label %18

18:                                               ; preds = %12
  %19 = icmp ult i32 %16, %1
  %20 = icmp ugt i32 %16, %2
  %21 = or i1 %19, %20
  br i1 %21, label %38, label %48

22:                                               ; preds = %12
  %23 = icmp sgt i32 %13, -1
  br i1 %23, label %24, label %64

24:                                               ; preds = %22
  %25 = icmp ult i32 %15, %1
  %26 = icmp ugt i32 %15, %2
  %27 = or i1 %25, %26
  br i1 %27, label %28, label %51

28:                                               ; preds = %31, %24
  %29 = phi i32 [ %32, %31 ], [ %13, %24 ]
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %64

31:                                               ; preds = %28
  %32 = add nsw i32 %29, -1
  %33 = getelementptr i32, ptr %10, i32 %32
  %34 = load i32, ptr %33, align 4
  %35 = icmp ult i32 %34, %1
  %36 = icmp ugt i32 %34, %2
  %37 = or i1 %35, %36
  br i1 %37, label %28, label %51

38:                                               ; preds = %42, %18
  %39 = phi i32 [ %40, %42 ], [ 0, %18 ]
  %40 = add nuw i32 %39, 1
  %41 = icmp eq i32 %40, %6
  br i1 %41, label %64, label %42

42:                                               ; preds = %38
  %43 = getelementptr i32, ptr %10, i32 %40
  %44 = load i32, ptr %43, align 4
  %45 = icmp ult i32 %44, %1
  %46 = icmp ugt i32 %44, %2
  %47 = or i1 %45, %46
  br i1 %47, label %38, label %48

48:                                               ; preds = %42, %18
  %49 = phi i32 [ 0, %18 ], [ %40, %42 ]
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %64, label %51

51:                                               ; preds = %48, %31, %24
  %52 = phi i32 [ %49, %48 ], [ %13, %24 ], [ %32, %31 ]
  %53 = getelementptr inbounds %struct.regulator_desc, ptr %4, i32 0, i32 31
  %54 = load i32, ptr %53, align 4
  %55 = tail call i32 @llvm.cttz.i32(i32 %54, i1 true), !range !10
  %56 = icmp eq i32 %54, 0
  %57 = select i1 %56, i32 -1, i32 %55
  %58 = shl i32 %52, %57
  %59 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 17
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr inbounds %struct.regulator_desc, ptr %4, i32 0, i32 30
  %62 = load i32, ptr %61, align 4
  %63 = tail call i32 @regmap_update_bits_base(ptr noundef %60, i32 noundef %62, i32 noundef %54, i32 noundef %58, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %64

64:                                               ; preds = %51, %48, %38, %28, %22, %8, %3
  %65 = phi i32 [ %63, %51 ], [ -22, %3 ], [ -22, %48 ], [ -22, %8 ], [ -22, %22 ], [ -22, %28 ], [ -22, %38 ]
  ret i32 %65
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @regulator_get_current_limit_regmap(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  store i32 0, ptr %2, align 4, !annotation !8
  %3 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 17
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %0, align 8
  %6 = getelementptr inbounds %struct.regulator_desc, ptr %5, i32 0, i32 30
  %7 = load i32, ptr %6, align 4
  %8 = call i32 @regmap_read(ptr noundef %4, i32 noundef %7, ptr noundef nonnull %2) #8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %30

10:                                               ; preds = %1
  %11 = load ptr, ptr %0, align 8
  %12 = getelementptr inbounds %struct.regulator_desc, ptr %11, i32 0, i32 31
  %13 = load i32, ptr %12, align 4
  %14 = load i32, ptr %2, align 4
  %15 = and i32 %14, %13
  %16 = call i32 @llvm.cttz.i32(i32 %13, i1 true), !range !10
  %17 = icmp eq i32 %13, 0
  %18 = select i1 %17, i32 -1, i32 %16
  %19 = lshr i32 %15, %18
  store i32 %19, ptr %2, align 4
  %20 = getelementptr inbounds %struct.regulator_desc, ptr %11, i32 0, i32 24
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %30, label %23

23:                                               ; preds = %10
  %24 = getelementptr inbounds %struct.regulator_desc, ptr %11, i32 0, i32 9
  %25 = load i32, ptr %24, align 4
  %26 = icmp ult i32 %19, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = getelementptr i32, ptr %21, i32 %19
  %29 = load i32, ptr %28, align 4
  br label %30

30:                                               ; preds = %27, %23, %10, %1
  %31 = phi i32 [ %29, %27 ], [ %8, %1 ], [ -22, %23 ], [ -22, %10 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  ret i32 %31
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @regulator_bulk_set_supply_names(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) #6 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %12, label %5

5:                                                ; preds = %5, %3
  %6 = phi i32 [ %10, %5 ], [ 0, %3 ]
  %7 = getelementptr ptr, ptr %1, i32 %6
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr %struct.regulator_bulk_data, ptr %0, i32 %6
  store ptr %8, ptr %9, align 4
  %10 = add nuw i32 %6, 1
  %11 = icmp eq i32 %10, %2
  br i1 %11, label %12, label %5

12:                                               ; preds = %5, %3
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @regulator_is_equal(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #4 {
  %3 = getelementptr inbounds %struct.regulator, ptr %0, i32 0, i32 9
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.regulator, ptr %1, i32 0, i32 9
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %4, %6
  ret i1 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @regulator_set_ramp_delay_regmap(ptr noundef %0, i32 noundef %1) #0 {
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.regulator_desc, ptr %3, i32 0, i32 56
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.regulator_desc, ptr %3, i32 0, i32 55
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %12, !prof !15

11:                                               ; preds = %7, %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 951, i32 noundef 9, ptr noundef null) #8
  br label %65

12:                                               ; preds = %7
  %13 = load i32, ptr %9, align 4
  br label %14

14:                                               ; preds = %39, %12
  %15 = phi i32 [ 0, %12 ], [ %34, %39 ]
  %16 = phi i32 [ %13, %12 ], [ %41, %39 ]
  %17 = phi i1 [ false, %12 ], [ %36, %39 ]
  %18 = phi i32 [ 0, %12 ], [ %24, %39 ]
  %19 = phi i32 [ %13, %12 ], [ %23, %39 ]
  %20 = phi i32 [ 0, %12 ], [ %35, %39 ]
  %21 = phi i32 [ 0, %12 ], [ %37, %39 ]
  %22 = icmp ugt i32 %16, %19
  %23 = tail call i32 @llvm.umax.i32(i32 %16, i32 %19) #8
  %24 = select i1 %22, i32 %21, i32 %18
  %25 = icmp ult i32 %16, %1
  br i1 %25, label %33, label %26

26:                                               ; preds = %14
  br i1 %17, label %27, label %31

27:                                               ; preds = %26
  %28 = sub i32 %16, %1
  %29 = sub i32 %20, %1
  %30 = icmp ult i32 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %27, %26
  %32 = icmp eq i32 %16, %1
  br i1 %32, label %51, label %33

33:                                               ; preds = %31, %27, %14
  %34 = phi i32 [ %15, %14 ], [ %21, %31 ], [ %15, %27 ]
  %35 = phi i32 [ %20, %14 ], [ %16, %31 ], [ %20, %27 ]
  %36 = phi i1 [ %17, %14 ], [ true, %31 ], [ true, %27 ]
  %37 = add nuw i32 %21, 1
  %38 = icmp eq i32 %37, %5
  br i1 %38, label %42, label %39

39:                                               ; preds = %33
  %40 = getelementptr i32, ptr %9, i32 %37
  %41 = load i32, ptr %40, align 4
  br label %14

42:                                               ; preds = %33
  br i1 %36, label %51, label %43

43:                                               ; preds = %42
  %44 = tail call ptr @rdev_get_dev(ptr noundef %0) #8
  %45 = load ptr, ptr %0, align 8
  %46 = getelementptr inbounds %struct.regulator_desc, ptr %45, i32 0, i32 55
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr i32, ptr %47, i32 %24
  %49 = load i32, ptr %48, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %44, ptr noundef nonnull @.str.1, i32 noundef %1, i32 noundef %49) #9
  %50 = load ptr, ptr %0, align 8
  br label %51

51:                                               ; preds = %43, %42, %31
  %52 = phi ptr [ %50, %43 ], [ %3, %42 ], [ %3, %31 ]
  %53 = phi i32 [ %24, %43 ], [ %34, %42 ], [ %21, %31 ]
  %54 = getelementptr inbounds %struct.regulator_desc, ptr %52, i32 0, i32 54
  %55 = load i32, ptr %54, align 4
  %56 = tail call i32 @llvm.cttz.i32(i32 %55, i1 true), !range !10
  %57 = icmp eq i32 %55, 0
  %58 = select i1 %57, i32 -1, i32 %56
  %59 = shl i32 %53, %58
  %60 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 17
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr inbounds %struct.regulator_desc, ptr %52, i32 0, i32 53
  %63 = load i32, ptr %62, align 4
  %64 = tail call i32 @regmap_update_bits_base(ptr noundef %61, i32 noundef %63, i32 noundef %55, i32 noundef %59, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %65

65:                                               ; preds = %51, %11
  %66 = phi i32 [ -22, %11 ], [ %64, %51 ]
  ret i32 %66
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdev_get_dev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }

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
!11 = !{i64 2153531343, i64 2153531835, i64 2153531380, i64 2153531436, i64 2153531470, i64 2153531494, i64 2153531535, i64 2153531556, i64 2153531584, i64 2153531618}
!12 = !{i64 2153534049, i64 2153534541, i64 2153534086, i64 2153534142, i64 2153534176, i64 2153534200, i64 2153534241, i64 2153534262, i64 2153534290, i64 2153534324}
!13 = !{i64 2153536773, i64 2153537265, i64 2153536810, i64 2153536866, i64 2153536900, i64 2153536924, i64 2153536965, i64 2153536986, i64 2153537014, i64 2153537048}
!14 = !{i64 2153542871, i64 2153543363, i64 2153542908, i64 2153542964, i64 2153542998, i64 2153543022, i64 2153543063, i64 2153543084, i64 2153543112, i64 2153543146}
!15 = !{!"branch_weights", i32 1, i32 2000}
!16 = !{i64 2153545800, i64 2153546292, i64 2153545837, i64 2153545893, i64 2153545927, i64 2153545951, i64 2153545992, i64 2153546013, i64 2153546041, i64 2153546075}
!17 = !{i64 2153554363, i64 2153554855, i64 2153554400, i64 2153554456, i64 2153554490, i64 2153554514, i64 2153554555, i64 2153554576, i64 2153554604, i64 2153554638}
