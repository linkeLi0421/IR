; ModuleID = '/llk/IR/drivers/regulator/max8997-regulator.c_pt.bc'
source_filename = "../drivers/regulator/max8997-regulator.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_device_id = type { [20 x i8], i32 }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.voltage_map_desc = type { i32, i32, i32 }
%struct.regulator_desc = type { ptr, ptr, ptr, i8, ptr, ptr, i32, i8, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, ptr }
%struct.regulator_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.regulator_config = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.max8997_dev = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, i32, ptr, i32, i32, ptr, %struct.mutex, [11 x i32], [11 x i32], [187 x i8], [12 x i8] }
%struct.max8997_platform_data = type { i32, ptr, i32, i8, [3 x i32], i32, [8 x i32], i8, [8 x i32], i8, [8 x i32], i8, i32, i32, ptr, ptr, ptr }
%struct.max8997_regulator_data = type { i32, ptr, ptr }
%struct.max8997_data = type { ptr, ptr, i32, i32, i8, i8, i8, [8 x i8], [8 x i8], [8 x i8], [3 x i32], i32, i8, [34 x i8] }
%struct.regulator_dev = type { ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.coupling_desc, %struct.blocking_notifier_head, %struct.ww_mutex, ptr, i32, ptr, %struct.device, ptr, ptr, ptr, ptr, %struct.delayed_work, ptr, ptr, ptr, i8, i64, i32, i8, %struct.spinlock }
%struct.coupling_desc = type { ptr, ptr, i32, i32 }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }

@max8997_pmic_id = internal constant [2 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"max8997-pmic\00\00\00\00\00\00\00\00", i32 0 }, %struct.platform_device_id zeroinitializer], align 4
@__UNIQUE_ID_description247 = internal constant [45 x i8] c"description=MAXIM 8997/8966 Regulator Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author248 = internal constant [47 x i8] c"author=MyungJoo Ham <myungjoo.ham@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_license249 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@max8997_pmic_driver = internal global %struct.platform_driver { ptr @max8997_pmic_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @max8997_pmic_id, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [13 x i8] c"max8997-pmic\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"No platform init data supplied.\0A\00", align 1
@buck1245_voltage_map_desc = internal constant %struct.voltage_map_desc { i32 650000, i32 2225000, i32 25000 }, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"GPIO NOT VALID\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"MAX8997 SET1\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"MAX8997 SET2\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"MAX8997 SET3\00", align 1
@reg_voltage_map = internal unnamed_addr constant [34 x ptr] [ptr @ldo_voltage_map_desc, ptr @ldo_voltage_map_desc, ptr @ldo_voltage_map_desc, ptr @ldo_voltage_map_desc, ptr @ldo_voltage_map_desc, ptr @ldo_voltage_map_desc, ptr @ldo_voltage_map_desc, ptr @ldo_voltage_map_desc, ptr @ldo_voltage_map_desc, ptr @ldo_voltage_map_desc, ptr @ldo_voltage_map_desc, ptr @ldo_voltage_map_desc, ptr @ldo_voltage_map_desc, ptr @ldo_voltage_map_desc, ptr @ldo_voltage_map_desc, ptr @ldo_voltage_map_desc, ptr @ldo_voltage_map_desc, ptr @ldo_voltage_map_desc, ptr @ldo_voltage_map_desc, ptr @buck1245_voltage_map_desc, ptr @buck1245_voltage_map_desc, ptr @buck37_voltage_map_desc, ptr @buck1245_voltage_map_desc, ptr @buck1245_voltage_map_desc, ptr null, ptr @buck37_voltage_map_desc, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @charger_current_map_desc, ptr @topoff_current_map_desc], align 4
@regulators = internal global [34 x %struct.regulator_desc] [%struct.regulator_desc { ptr @.str.25, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 0, i32 0, ptr @max8997_ldo_ops, i32 0, i32 0, ptr @__this_module, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.26, ptr null, ptr null, i8 0, ptr null, ptr null, i32 1, i8 0, i32 0, i32 0, ptr @max8997_ldo_ops, i32 0, i32 0, ptr @__this_module, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.27, ptr null, ptr null, i8 0, ptr null, ptr null, i32 2, i8 0, i32 0, i32 0, ptr @max8997_ldo_ops, i32 0, i32 0, ptr @__this_module, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.28, ptr null, ptr null, i8 0, ptr null, ptr null, i32 3, i8 0, i32 0, i32 0, ptr @max8997_ldo_ops, i32 0, i32 0, ptr @__this_module, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.29, ptr null, ptr null, i8 0, ptr null, ptr null, i32 4, i8 0, i32 0, i32 0, ptr @max8997_ldo_ops, i32 0, i32 0, ptr @__this_module, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.30, ptr null, ptr null, i8 0, ptr null, ptr null, i32 5, i8 0, i32 0, i32 0, ptr @max8997_ldo_ops, i32 0, i32 0, ptr @__this_module, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.31, ptr null, ptr null, i8 0, ptr null, ptr null, i32 6, i8 0, i32 0, i32 0, ptr @max8997_ldo_ops, i32 0, i32 0, ptr @__this_module, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.32, ptr null, ptr null, i8 0, ptr null, ptr null, i32 7, i8 0, i32 0, i32 0, ptr @max8997_ldo_ops, i32 0, i32 0, ptr @__this_module, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.33, ptr null, ptr null, i8 0, ptr null, ptr null, i32 8, i8 0, i32 0, i32 0, ptr @max8997_ldo_ops, i32 0, i32 0, ptr @__this_module, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.34, ptr null, ptr null, i8 0, ptr null, ptr null, i32 9, i8 0, i32 0, i32 0, ptr @max8997_ldo_ops, i32 0, i32 0, ptr @__this_module, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.35, ptr null, ptr null, i8 0, ptr null, ptr null, i32 10, i8 0, i32 0, i32 0, ptr @max8997_ldo_ops, i32 0, i32 0, ptr @__this_module, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.36, ptr null, ptr null, i8 0, ptr null, ptr null, i32 11, i8 0, i32 0, i32 0, ptr @max8997_ldo_ops, i32 0, i32 0, ptr @__this_module, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.37, ptr null, ptr null, i8 0, ptr null, ptr null, i32 12, i8 0, i32 0, i32 0, ptr @max8997_ldo_ops, i32 0, i32 0, ptr @__this_module, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.38, ptr null, ptr null, i8 0, ptr null, ptr null, i32 13, i8 0, i32 0, i32 0, ptr @max8997_ldo_ops, i32 0, i32 0, ptr @__this_module, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.39, ptr null, ptr null, i8 0, ptr null, ptr null, i32 14, i8 0, i32 0, i32 0, ptr @max8997_ldo_ops, i32 0, i32 0, ptr @__this_module, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.40, ptr null, ptr null, i8 0, ptr null, ptr null, i32 15, i8 0, i32 0, i32 0, ptr @max8997_ldo_ops, i32 0, i32 0, ptr @__this_module, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.41, ptr null, ptr null, i8 0, ptr null, ptr null, i32 16, i8 0, i32 0, i32 0, ptr @max8997_ldo_ops, i32 0, i32 0, ptr @__this_module, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.42, ptr null, ptr null, i8 0, ptr null, ptr null, i32 17, i8 0, i32 0, i32 0, ptr @max8997_ldo_ops, i32 0, i32 0, ptr @__this_module, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.43, ptr null, ptr null, i8 0, ptr null, ptr null, i32 18, i8 0, i32 0, i32 0, ptr @max8997_ldo_ops, i32 0, i32 0, ptr @__this_module, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.44, ptr null, ptr null, i8 0, ptr null, ptr null, i32 19, i8 0, i32 0, i32 0, ptr @max8997_buck_ops, i32 0, i32 0, ptr @__this_module, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.45, ptr null, ptr null, i8 0, ptr null, ptr null, i32 20, i8 0, i32 0, i32 0, ptr @max8997_buck_ops, i32 0, i32 0, ptr @__this_module, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.46, ptr null, ptr null, i8 0, ptr null, ptr null, i32 21, i8 0, i32 0, i32 0, ptr @max8997_buck_ops, i32 0, i32 0, ptr @__this_module, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.47, ptr null, ptr null, i8 0, ptr null, ptr null, i32 22, i8 0, i32 0, i32 0, ptr @max8997_buck_ops, i32 0, i32 0, ptr @__this_module, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.48, ptr null, ptr null, i8 0, ptr null, ptr null, i32 23, i8 0, i32 0, i32 0, ptr @max8997_buck_ops, i32 0, i32 0, ptr @__this_module, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.49, ptr null, ptr null, i8 0, ptr null, ptr null, i32 24, i8 0, i32 0, i32 0, ptr @max8997_fixedvolt_ops, i32 0, i32 0, ptr @__this_module, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.50, ptr null, ptr null, i8 0, ptr null, ptr null, i32 25, i8 0, i32 0, i32 0, ptr @max8997_buck_ops, i32 0, i32 0, ptr @__this_module, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.51, ptr null, ptr null, i8 0, ptr null, ptr null, i32 26, i8 0, i32 0, i32 0, ptr @max8997_fixedvolt_ops, i32 0, i32 0, ptr @__this_module, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.52, ptr null, ptr null, i8 0, ptr null, ptr null, i32 27, i8 0, i32 0, i32 0, ptr @max8997_fixedvolt_ops, i32 0, i32 0, ptr @__this_module, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.53, ptr null, ptr null, i8 0, ptr null, ptr null, i32 28, i8 0, i32 0, i32 0, ptr @max8997_fixedvolt_ops, i32 0, i32 0, ptr @__this_module, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.54, ptr null, ptr null, i8 0, ptr null, ptr null, i32 29, i8 0, i32 0, i32 0, ptr @max8997_safeout_ops, i32 0, i32 0, ptr @__this_module, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.55, ptr null, ptr null, i8 0, ptr null, ptr null, i32 30, i8 0, i32 0, i32 0, ptr @max8997_safeout_ops, i32 0, i32 0, ptr @__this_module, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.56, ptr null, ptr null, i8 0, ptr null, ptr null, i32 31, i8 0, i32 0, i32 0, ptr @max8997_fixedstate_ops, i32 0, i32 0, ptr @__this_module, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.57, ptr null, ptr null, i8 0, ptr null, ptr null, i32 32, i8 0, i32 0, i32 0, ptr @max8997_charger_ops, i32 0, i32 1, ptr @__this_module, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.58, ptr null, ptr null, i8 0, ptr null, ptr null, i32 33, i8 0, i32 0, i32 0, ptr @max8997_charger_fixedstate_ops, i32 0, i32 1, ptr @__this_module, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }], align 4
@safeoutvolt = internal constant [4 x i32] [i32 4850000, i32 4900000, i32 4950000, i32 3300000], align 4
@.str.6 = private unnamed_addr constant [30 x i8] c"regulator init failed for %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"regulators\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"could not find regulators sub-node\0A\00", align 1
@.str.10 = private unnamed_addr constant [45 x i8] c"don't know how to configure regulator %pOFn\0A\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"max8997,pmic-buck1-uses-gpio-dvs\00", align 1
@.str.12 = private unnamed_addr constant [33 x i8] c"max8997,pmic-buck2-uses-gpio-dvs\00", align 1
@.str.13 = private unnamed_addr constant [33 x i8] c"max8997,pmic-buck5-uses-gpio-dvs\00", align 1
@.str.14 = private unnamed_addr constant [37 x i8] c"max8997,pmic-buck125-default-dvs-idx\00", align 1
@.str.15 = private unnamed_addr constant [54 x i8] c"invalid value for default dvs index, using 0 instead\0A\00", align 1
@.str.16 = private unnamed_addr constant [40 x i8] c"max8997,pmic-ignore-gpiodvs-side-effect\00", align 1
@.str.17 = private unnamed_addr constant [31 x i8] c"max8997,pmic-buck1-dvs-voltage\00", align 1
@.str.18 = private unnamed_addr constant [30 x i8] c"buck1 voltages not specified\0A\00", align 1
@.str.19 = private unnamed_addr constant [31 x i8] c"max8997,pmic-buck2-dvs-voltage\00", align 1
@.str.20 = private unnamed_addr constant [30 x i8] c"buck2 voltages not specified\0A\00", align 1
@.str.21 = private unnamed_addr constant [31 x i8] c"max8997,pmic-buck5-dvs-voltage\00", align 1
@.str.22 = private unnamed_addr constant [30 x i8] c"buck5 voltages not specified\0A\00", align 1
@.str.23 = private unnamed_addr constant [31 x i8] c"max8997,pmic-buck125-dvs-gpios\00", align 1
@.str.24 = private unnamed_addr constant [22 x i8] c"invalid gpio[%d]: %d\0A\00", align 1
@ldo_voltage_map_desc = internal constant %struct.voltage_map_desc { i32 800000, i32 3950000, i32 50000 }, align 4
@buck37_voltage_map_desc = internal constant %struct.voltage_map_desc { i32 750000, i32 3900000, i32 50000 }, align 4
@charger_current_map_desc = internal constant %struct.voltage_map_desc { i32 200000, i32 950000, i32 50000 }, align 4
@topoff_current_map_desc = internal constant %struct.voltage_map_desc { i32 50000, i32 200000, i32 10000 }, align 4
@.str.25 = private unnamed_addr constant [5 x i8] c"LDO1\00", align 1
@max8997_ldo_ops = internal constant %struct.regulator_ops { ptr @max8997_list_voltage, ptr @max8997_set_voltage_ldobuck, ptr null, ptr null, ptr null, ptr @max8997_get_voltage_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @max8997_reg_enable, ptr @max8997_reg_disable, ptr @max8997_reg_is_enabled, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @max8997_reg_disable_suspend, ptr null, ptr null, ptr null }, align 4
@.str.26 = private unnamed_addr constant [5 x i8] c"LDO2\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"LDO3\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"LDO4\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"LDO5\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"LDO6\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"LDO7\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"LDO8\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"LDO9\00", align 1
@.str.34 = private unnamed_addr constant [6 x i8] c"LDO10\00", align 1
@.str.35 = private unnamed_addr constant [6 x i8] c"LDO11\00", align 1
@.str.36 = private unnamed_addr constant [6 x i8] c"LDO12\00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"LDO13\00", align 1
@.str.38 = private unnamed_addr constant [6 x i8] c"LDO14\00", align 1
@.str.39 = private unnamed_addr constant [6 x i8] c"LDO15\00", align 1
@.str.40 = private unnamed_addr constant [6 x i8] c"LDO16\00", align 1
@.str.41 = private unnamed_addr constant [6 x i8] c"LDO17\00", align 1
@.str.42 = private unnamed_addr constant [6 x i8] c"LDO18\00", align 1
@.str.43 = private unnamed_addr constant [6 x i8] c"LDO21\00", align 1
@.str.44 = private unnamed_addr constant [6 x i8] c"BUCK1\00", align 1
@max8997_buck_ops = internal constant %struct.regulator_ops { ptr @max8997_list_voltage, ptr @max8997_set_voltage_buck, ptr null, ptr null, ptr null, ptr @max8997_get_voltage_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @max8997_reg_enable, ptr @max8997_reg_disable, ptr @max8997_reg_is_enabled, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @max8997_set_voltage_buck_time_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @max8997_reg_disable_suspend, ptr null, ptr null, ptr null }, align 4
@.str.45 = private unnamed_addr constant [6 x i8] c"BUCK2\00", align 1
@.str.46 = private unnamed_addr constant [6 x i8] c"BUCK3\00", align 1
@.str.47 = private unnamed_addr constant [6 x i8] c"BUCK4\00", align 1
@.str.48 = private unnamed_addr constant [6 x i8] c"BUCK5\00", align 1
@.str.49 = private unnamed_addr constant [6 x i8] c"BUCK6\00", align 1
@max8997_fixedvolt_ops = internal constant %struct.regulator_ops { ptr @max8997_list_voltage, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @max8997_reg_enable, ptr @max8997_reg_disable, ptr @max8997_reg_is_enabled, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @max8997_reg_disable_suspend, ptr null, ptr null, ptr null }, align 4
@.str.50 = private unnamed_addr constant [6 x i8] c"BUCK7\00", align 1
@.str.51 = private unnamed_addr constant [11 x i8] c"EN32KHZ_AP\00", align 1
@.str.52 = private unnamed_addr constant [11 x i8] c"EN32KHZ_CP\00", align 1
@.str.53 = private unnamed_addr constant [8 x i8] c"ENVICHG\00", align 1
@.str.54 = private unnamed_addr constant [10 x i8] c"ESAFEOUT1\00", align 1
@max8997_safeout_ops = internal constant %struct.regulator_ops { ptr @regulator_list_voltage_table, ptr null, ptr null, ptr @max8997_set_voltage_safeout_sel, ptr null, ptr @max8997_get_voltage_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @max8997_reg_enable, ptr @max8997_reg_disable, ptr @max8997_reg_is_enabled, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @max8997_reg_disable_suspend, ptr null, ptr null, ptr null }, align 4
@.str.55 = private unnamed_addr constant [10 x i8] c"ESAFEOUT2\00", align 1
@.str.56 = private unnamed_addr constant [11 x i8] c"CHARGER_CV\00", align 1
@max8997_fixedstate_ops = internal constant %struct.regulator_ops { ptr @max8997_list_voltage_charger_cv, ptr @max8997_set_voltage_charger_cv, ptr null, ptr null, ptr null, ptr @max8997_get_voltage_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.57 = private unnamed_addr constant [8 x i8] c"CHARGER\00", align 1
@max8997_charger_ops = internal constant %struct.regulator_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @max8997_set_current_limit, ptr @max8997_get_current_limit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @max8997_reg_enable, ptr @max8997_reg_disable, ptr @max8997_reg_is_enabled, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.58 = private unnamed_addr constant [15 x i8] c"CHARGER_TOPOFF\00", align 1
@max8997_charger_fixedstate_ops = internal constant %struct.regulator_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @max8997_set_current_limit, ptr @max8997_get_current_limit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.59 = private unnamed_addr constant [59 x i8] c"MAX8997 GPIO-DVS Side Effect Warning: GPIO SET:  %d -> %d\0A\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_author248, ptr @__UNIQUE_ID_description247, ptr @__UNIQUE_ID_license249], section "llvm.metadata"
@switch.table.max8997_list_voltage_charger_cv = private unnamed_addr constant [16 x i32] [i32 4200000, i32 4000000, i32 4020000, i32 4040000, i32 4060000, i32 4080000, i32 4100000, i32 4120000, i32 4140000, i32 4160000, i32 4180000, i32 4200000, i32 4220000, i32 4240000, i32 4260000, i32 4350000], align 4

@__mod_platform__max8997_pmic_id_device_table = dso_local alias [2 x %struct.platform_device_id], ptr @max8997_pmic_id

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @max8997_pmic_driver, ptr noundef nonnull @__this_module) #8
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @max8997_pmic_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max8997_pmic_probe(ptr noundef %0) #2 {
  %2 = alloca %struct.regulator_config, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.max8997_dev, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %2, i8 0, i32 24, i1 false)
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.1) #9
  br label %383

12:                                               ; preds = %1
  %13 = load ptr, ptr %7, align 4
  %14 = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 25
  %15 = load ptr, ptr %14, align 8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %137, label %17

17:                                               ; preds = %12
  %18 = tail call ptr @of_get_child_by_name(ptr noundef nonnull %15, ptr noundef nonnull @.str.8) #8
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.9) #9
  br label %383

21:                                               ; preds = %17
  %22 = tail call ptr @of_get_next_child(ptr noundef nonnull %18, ptr noundef null) #8
  %23 = icmp eq ptr %22, null
  br i1 %23, label %30, label %24

24:                                               ; preds = %24, %21
  %25 = phi i32 [ %27, %24 ], [ 0, %21 ]
  %26 = phi ptr [ %28, %24 ], [ %22, %21 ]
  %27 = add i32 %25, 1
  %28 = tail call ptr @of_get_next_child(ptr noundef nonnull %18, ptr noundef nonnull %26) #8
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %24

30:                                               ; preds = %24, %21
  %31 = phi i32 [ 0, %21 ], [ %27, %24 ]
  %32 = getelementptr inbounds %struct.max8997_platform_data, ptr %9, i32 0, i32 2
  store i32 %31, ptr %32, align 4
  %33 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %31, i32 12) #8
  %34 = extractvalue { i32, i1 } %33, 1
  br i1 %34, label %39, label %35, !prof !8

35:                                               ; preds = %30
  %36 = extractvalue { i32, i1 } %33, 0
  %37 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef %36, i32 noundef 3520) #8
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %35, %30
  tail call void @of_node_put(ptr noundef nonnull %18) #8
  br label %383

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.max8997_platform_data, ptr %9, i32 0, i32 1
  store ptr %37, ptr %41, align 4
  %42 = tail call ptr @of_get_next_child(ptr noundef nonnull %18, ptr noundef null) #8
  %43 = icmp eq ptr %42, null
  br i1 %43, label %65, label %44

44:                                               ; preds = %61, %40
  %45 = phi ptr [ %62, %61 ], [ %37, %40 ]
  %46 = phi ptr [ %63, %61 ], [ %42, %40 ]
  br label %47

47:                                               ; preds = %52, %44
  %48 = phi i32 [ 0, %44 ], [ %53, %52 ]
  %49 = getelementptr [34 x %struct.regulator_desc], ptr @regulators, i32 0, i32 %48
  %50 = load ptr, ptr %49, align 4
  %51 = tail call zeroext i1 @of_node_name_eq(ptr noundef nonnull %46, ptr noundef %50) #8
  br i1 %51, label %56, label %52

52:                                               ; preds = %47
  %53 = add nuw nsw i32 %48, 1
  %54 = icmp eq i32 %53, 34
  br i1 %54, label %55, label %47

55:                                               ; preds = %52
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str.10, ptr noundef nonnull %46) #9
  br label %61

56:                                               ; preds = %47
  store i32 %48, ptr %45, align 4
  %57 = tail call ptr @of_get_regulator_init_data(ptr noundef %3, ptr noundef nonnull %46, ptr noundef %49) #8
  %58 = getelementptr inbounds %struct.max8997_regulator_data, ptr %45, i32 0, i32 1
  store ptr %57, ptr %58, align 4
  %59 = getelementptr inbounds %struct.max8997_regulator_data, ptr %45, i32 0, i32 2
  store ptr %46, ptr %59, align 4
  %60 = getelementptr %struct.max8997_regulator_data, ptr %45, i32 1
  br label %61

61:                                               ; preds = %56, %55
  %62 = phi ptr [ %45, %55 ], [ %60, %56 ]
  %63 = tail call ptr @of_get_next_child(ptr noundef nonnull %18, ptr noundef nonnull %46) #8
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %44

65:                                               ; preds = %61, %40
  tail call void @of_node_put(ptr noundef nonnull %18) #8
  %66 = tail call ptr @of_get_property(ptr noundef nonnull %15, ptr noundef nonnull @.str.11, ptr noundef null) #8
  %67 = icmp eq ptr %66, null
  br i1 %67, label %70, label %68

68:                                               ; preds = %65
  %69 = getelementptr inbounds %struct.max8997_platform_data, ptr %9, i32 0, i32 7
  store i8 1, ptr %69, align 4
  br label %70

70:                                               ; preds = %68, %65
  %71 = tail call ptr @of_get_property(ptr noundef nonnull %15, ptr noundef nonnull @.str.12, ptr noundef null) #8
  %72 = icmp eq ptr %71, null
  br i1 %72, label %75, label %73

73:                                               ; preds = %70
  %74 = getelementptr inbounds %struct.max8997_platform_data, ptr %9, i32 0, i32 9
  store i8 1, ptr %74, align 4
  br label %75

75:                                               ; preds = %73, %70
  %76 = tail call ptr @of_get_property(ptr noundef nonnull %15, ptr noundef nonnull @.str.13, ptr noundef null) #8
  %77 = icmp eq ptr %76, null
  br i1 %77, label %80, label %78

78:                                               ; preds = %75
  %79 = getelementptr inbounds %struct.max8997_platform_data, ptr %9, i32 0, i32 11
  store i8 1, ptr %79, align 4
  br label %80

80:                                               ; preds = %78, %75
  %81 = getelementptr inbounds %struct.max8997_platform_data, ptr %9, i32 0, i32 7
  %82 = load i8, ptr %81, align 4, !range !9
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %84, label %92

84:                                               ; preds = %80
  %85 = getelementptr inbounds %struct.max8997_platform_data, ptr %9, i32 0, i32 9
  %86 = load i8, ptr %85, align 4, !range !9
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %84
  %89 = getelementptr inbounds %struct.max8997_platform_data, ptr %9, i32 0, i32 11
  %90 = load i8, ptr %89, align 4, !range !9
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %121, label %92

92:                                               ; preds = %88, %84, %80
  %93 = tail call i32 @of_get_named_gpio_flags(ptr noundef nonnull %15, ptr noundef nonnull @.str.23, i32 noundef 0, ptr noundef null) #8
  %94 = icmp ult i32 %93, 2048
  br i1 %94, label %95, label %103

95:                                               ; preds = %92
  %96 = getelementptr %struct.max8997_platform_data, ptr %9, i32 0, i32 4, i32 0
  store i32 %93, ptr %96, align 4
  %97 = tail call i32 @of_get_named_gpio_flags(ptr noundef nonnull %15, ptr noundef nonnull @.str.23, i32 noundef 1, ptr noundef null) #8
  %98 = icmp ult i32 %97, 2048
  br i1 %98, label %99, label %103

99:                                               ; preds = %95
  %100 = getelementptr %struct.max8997_platform_data, ptr %9, i32 0, i32 4, i32 1
  store i32 %97, ptr %100, align 4
  %101 = tail call i32 @of_get_named_gpio_flags(ptr noundef nonnull %15, ptr noundef nonnull @.str.23, i32 noundef 2, ptr noundef null) #8
  %102 = icmp ult i32 %101, 2048
  br i1 %102, label %106, label %103

103:                                              ; preds = %99, %95, %92
  %104 = phi i32 [ 0, %92 ], [ 1, %95 ], [ 2, %99 ]
  %105 = phi i32 [ %93, %92 ], [ %97, %95 ], [ %101, %99 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.24, i32 noundef %104, i32 noundef %105) #9
  br label %383

106:                                              ; preds = %99
  %107 = getelementptr %struct.max8997_platform_data, ptr %9, i32 0, i32 4, i32 2
  store i32 %101, ptr %107, align 4
  %108 = getelementptr inbounds %struct.max8997_platform_data, ptr %9, i32 0, i32 5
  %109 = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %15, ptr noundef nonnull @.str.14, ptr noundef %108, i32 noundef 1, i32 noundef 0) #8
  %110 = icmp sgt i32 %109, -1
  br i1 %110, label %112, label %111

111:                                              ; preds = %106
  store i32 0, ptr %108, align 4
  br label %116

112:                                              ; preds = %106
  %113 = load i32, ptr %108, align 4
  %114 = icmp sgt i32 %113, 7
  br i1 %114, label %115, label %116

115:                                              ; preds = %112
  store i32 0, ptr %108, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %3, ptr noundef nonnull @.str.15) #9
  br label %116

116:                                              ; preds = %115, %112, %111
  %117 = tail call ptr @of_get_property(ptr noundef nonnull %15, ptr noundef nonnull @.str.16, ptr noundef null) #8
  %118 = icmp eq ptr %117, null
  br i1 %118, label %121, label %119

119:                                              ; preds = %116
  %120 = getelementptr inbounds %struct.max8997_platform_data, ptr %9, i32 0, i32 3
  store i8 1, ptr %120, align 4
  br label %121

121:                                              ; preds = %119, %116, %88
  %122 = phi i32 [ 1, %88 ], [ 8, %119 ], [ 8, %116 ]
  %123 = getelementptr inbounds %struct.max8997_platform_data, ptr %9, i32 0, i32 6
  %124 = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %15, ptr noundef nonnull @.str.17, ptr noundef %123, i32 noundef %122, i32 noundef 0) #8
  %125 = icmp sgt i32 %124, -1
  br i1 %125, label %127, label %126

126:                                              ; preds = %121
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.18) #9
  br label %383

127:                                              ; preds = %121
  %128 = getelementptr inbounds %struct.max8997_platform_data, ptr %9, i32 0, i32 8
  %129 = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %15, ptr noundef nonnull @.str.19, ptr noundef %128, i32 noundef %122, i32 noundef 0) #8
  %130 = icmp sgt i32 %129, -1
  br i1 %130, label %132, label %131

131:                                              ; preds = %127
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.20) #9
  br label %383

132:                                              ; preds = %127
  %133 = getelementptr inbounds %struct.max8997_platform_data, ptr %9, i32 0, i32 10
  %134 = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %15, ptr noundef nonnull @.str.21, ptr noundef %133, i32 noundef %122, i32 noundef 0) #8
  %135 = icmp sgt i32 %134, -1
  br i1 %135, label %137, label %136

136:                                              ; preds = %132
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.22) #9
  br label %383

137:                                              ; preds = %132, %12
  %138 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 96, i32 noundef 3520) #8
  %139 = icmp eq ptr %138, null
  br i1 %139, label %383, label %140

140:                                              ; preds = %137
  store ptr %3, ptr %138, align 4
  %141 = getelementptr inbounds %struct.max8997_data, ptr %138, i32 0, i32 1
  store ptr %7, ptr %141, align 4
  %142 = getelementptr inbounds %struct.max8997_platform_data, ptr %9, i32 0, i32 2
  %143 = load i32, ptr %142, align 4
  %144 = getelementptr inbounds %struct.max8997_data, ptr %138, i32 0, i32 2
  store i32 %143, ptr %144, align 4
  %145 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %138, ptr %145, align 8
  %146 = getelementptr inbounds %struct.max8997_dev, ptr %7, i32 0, i32 2
  %147 = load ptr, ptr %146, align 4
  %148 = getelementptr inbounds %struct.max8997_platform_data, ptr %9, i32 0, i32 5
  %149 = load i32, ptr %148, align 4
  %150 = getelementptr inbounds %struct.max8997_data, ptr %138, i32 0, i32 11
  store i32 %149, ptr %150, align 4
  %151 = getelementptr inbounds %struct.max8997_platform_data, ptr %9, i32 0, i32 7
  %152 = load i8, ptr %151, align 4, !range !9
  %153 = getelementptr inbounds %struct.max8997_data, ptr %138, i32 0, i32 4
  store i8 %152, ptr %153, align 4
  %154 = getelementptr inbounds %struct.max8997_platform_data, ptr %9, i32 0, i32 9
  %155 = load i8, ptr %154, align 4, !range !9
  %156 = getelementptr inbounds %struct.max8997_data, ptr %138, i32 0, i32 5
  store i8 %155, ptr %156, align 1
  %157 = getelementptr inbounds %struct.max8997_platform_data, ptr %9, i32 0, i32 11
  %158 = load i8, ptr %157, align 4, !range !9
  %159 = getelementptr inbounds %struct.max8997_data, ptr %138, i32 0, i32 6
  store i8 %158, ptr %159, align 2
  %160 = getelementptr inbounds %struct.max8997_data, ptr %138, i32 0, i32 10
  %161 = getelementptr inbounds %struct.max8997_platform_data, ptr %9, i32 0, i32 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(12) %160, ptr noundef align 4 dereferenceable(12) %161, i32 12, i1 false)
  %162 = getelementptr inbounds %struct.max8997_platform_data, ptr %9, i32 0, i32 3
  %163 = load i8, ptr %162, align 4, !range !9
  %164 = getelementptr inbounds %struct.max8997_data, ptr %138, i32 0, i32 12
  store i8 %163, ptr %164, align 4
  %165 = load i8, ptr %151, align 4, !range !9
  %166 = icmp eq i8 %165, 0
  br i1 %166, label %167, label %173

167:                                              ; preds = %140
  %168 = load i8, ptr %154, align 4, !range !9
  %169 = icmp eq i8 %168, 0
  br i1 %169, label %170, label %173

170:                                              ; preds = %167
  %171 = load i8, ptr %157, align 4, !range !9
  %172 = icmp eq i8 %171, 0
  br i1 %172, label %174, label %173

173:                                              ; preds = %170, %167, %140
  br label %174

174:                                              ; preds = %173, %170
  %175 = phi i32 [ 8, %173 ], [ 1, %170 ]
  br label %176

176:                                              ; preds = %229, %174
  %177 = phi i8 [ 0, %174 ], [ %234, %229 ]
  %178 = phi i8 [ 0, %174 ], [ %233, %229 ]
  %179 = phi i8 [ 0, %174 ], [ %232, %229 ]
  %180 = phi i32 [ 0, %174 ], [ %235, %229 ]
  %181 = getelementptr %struct.max8997_platform_data, ptr %9, i32 0, i32 6, i32 %180
  %182 = load i32, ptr %181, align 4
  %183 = add i32 %182, -2225001
  %184 = icmp ult i32 %183, -1600001
  br i1 %184, label %193, label %185

185:                                              ; preds = %176
  %186 = add nuw nsw i32 %182, 25000
  %187 = tail call i32 @llvm.smax.i32(i32 %182, i32 650000) #8
  %188 = add nsw i32 %187, -625001
  %189 = udiv i32 %188, 25000
  %190 = mul nuw nsw i32 %189, 25000
  %191 = add nuw nsw i32 %190, 650000
  %192 = icmp ugt i32 %191, %186
  br i1 %192, label %193, label %195

193:                                              ; preds = %185, %176
  %194 = getelementptr %struct.max8997_data, ptr %138, i32 0, i32 7, i32 %180
  store i8 -22, ptr %194, align 1
  br label %383

195:                                              ; preds = %185
  %196 = trunc i32 %189 to i8
  %197 = getelementptr %struct.max8997_data, ptr %138, i32 0, i32 7, i32 %180
  store i8 %196, ptr %197, align 1
  %198 = getelementptr %struct.max8997_platform_data, ptr %9, i32 0, i32 8, i32 %180
  %199 = load i32, ptr %198, align 4
  %200 = add i32 %199, -2225001
  %201 = icmp ult i32 %200, -1600001
  br i1 %201, label %210, label %202

202:                                              ; preds = %195
  %203 = add nuw nsw i32 %199, 25000
  %204 = tail call i32 @llvm.smax.i32(i32 %199, i32 650000) #8
  %205 = add nsw i32 %204, -625001
  %206 = udiv i32 %205, 25000
  %207 = mul nuw nsw i32 %206, 25000
  %208 = add nuw nsw i32 %207, 650000
  %209 = icmp ugt i32 %208, %203
  br i1 %209, label %210, label %212

210:                                              ; preds = %202, %195
  %211 = getelementptr %struct.max8997_data, ptr %138, i32 0, i32 8, i32 %180
  store i8 -22, ptr %211, align 1
  br label %383

212:                                              ; preds = %202
  %213 = trunc i32 %206 to i8
  %214 = getelementptr %struct.max8997_data, ptr %138, i32 0, i32 8, i32 %180
  store i8 %213, ptr %214, align 1
  %215 = getelementptr %struct.max8997_platform_data, ptr %9, i32 0, i32 10, i32 %180
  %216 = load i32, ptr %215, align 4
  %217 = add i32 %216, -2225001
  %218 = icmp ult i32 %217, -1600001
  br i1 %218, label %227, label %219

219:                                              ; preds = %212
  %220 = add nuw nsw i32 %216, 25000
  %221 = tail call i32 @llvm.smax.i32(i32 %216, i32 650000) #8
  %222 = add nsw i32 %221, -625001
  %223 = udiv i32 %222, 25000
  %224 = mul nuw nsw i32 %223, 25000
  %225 = add nuw nsw i32 %224, 650000
  %226 = icmp ugt i32 %225, %220
  br i1 %226, label %227, label %229

227:                                              ; preds = %219, %212
  %228 = getelementptr %struct.max8997_data, ptr %138, i32 0, i32 9, i32 %180
  store i8 -22, ptr %228, align 1
  br label %383

229:                                              ; preds = %219
  %230 = trunc i32 %223 to i8
  %231 = getelementptr %struct.max8997_data, ptr %138, i32 0, i32 9, i32 %180
  store i8 %230, ptr %231, align 1
  %232 = tail call i8 @llvm.umax.i8(i8 %179, i8 %196)
  %233 = tail call i8 @llvm.umax.i8(i8 %178, i8 %213)
  %234 = tail call i8 @llvm.umax.i8(i8 %177, i8 %230)
  %235 = add nuw nsw i32 %180, 1
  %236 = icmp eq i32 %235, %175
  br i1 %236, label %237, label %176

237:                                              ; preds = %237, %229
  %238 = phi i32 [ %246, %237 ], [ 0, %229 ]
  %239 = trunc i32 %238 to i8
  %240 = add i8 %239, 25
  %241 = tail call i32 @max8997_update_reg(ptr noundef %147, i8 noundef zeroext %240, i8 noundef zeroext %232, i8 noundef zeroext 63) #8
  %242 = add i8 %239, 34
  %243 = tail call i32 @max8997_update_reg(ptr noundef %147, i8 noundef zeroext %242, i8 noundef zeroext %233, i8 noundef zeroext 63) #8
  %244 = add i8 %239, 47
  %245 = tail call i32 @max8997_update_reg(ptr noundef %147, i8 noundef zeroext %244, i8 noundef zeroext %234, i8 noundef zeroext 63) #8
  %246 = add nuw nsw i32 %238, 1
  %247 = icmp eq i32 %246, 8
  br i1 %247, label %248, label %237

248:                                              ; preds = %248, %237
  %249 = phi i32 [ %263, %248 ], [ 0, %237 ]
  %250 = trunc i32 %249 to i8
  %251 = add i8 %250, 25
  %252 = getelementptr %struct.max8997_data, ptr %138, i32 0, i32 7, i32 %249
  %253 = load i8, ptr %252, align 1
  %254 = tail call i32 @max8997_update_reg(ptr noundef %147, i8 noundef zeroext %251, i8 noundef zeroext %253, i8 noundef zeroext 63) #8
  %255 = add i8 %250, 34
  %256 = getelementptr %struct.max8997_data, ptr %138, i32 0, i32 8, i32 %249
  %257 = load i8, ptr %256, align 1
  %258 = tail call i32 @max8997_update_reg(ptr noundef %147, i8 noundef zeroext %255, i8 noundef zeroext %257, i8 noundef zeroext 63) #8
  %259 = add i8 %250, 47
  %260 = getelementptr %struct.max8997_data, ptr %138, i32 0, i32 9, i32 %249
  %261 = load i8, ptr %260, align 1
  %262 = tail call i32 @max8997_update_reg(ptr noundef %147, i8 noundef zeroext %259, i8 noundef zeroext %261, i8 noundef zeroext 63) #8
  %263 = add nuw nsw i32 %249, 1
  %264 = icmp eq i32 %263, %175
  br i1 %264, label %265, label %248

265:                                              ; preds = %248
  %266 = load i8, ptr %151, align 4, !range !9
  %267 = icmp eq i8 %266, 0
  br i1 %267, label %268, label %274

268:                                              ; preds = %265
  %269 = load i8, ptr %154, align 4, !range !9
  %270 = icmp eq i8 %269, 0
  br i1 %270, label %271, label %274

271:                                              ; preds = %268
  %272 = load i8, ptr %157, align 4, !range !9
  %273 = icmp eq i8 %272, 0
  br i1 %273, label %318, label %274

274:                                              ; preds = %271, %268, %265
  %275 = load i32, ptr %161, align 4
  %276 = icmp ult i32 %275, 2048
  br i1 %276, label %277, label %285

277:                                              ; preds = %274
  %278 = getelementptr %struct.max8997_platform_data, ptr %9, i32 0, i32 4, i32 1
  %279 = load i32, ptr %278, align 4
  %280 = icmp ult i32 %279, 2048
  br i1 %280, label %281, label %285

281:                                              ; preds = %277
  %282 = getelementptr %struct.max8997_platform_data, ptr %9, i32 0, i32 4, i32 2
  %283 = load i32, ptr %282, align 4
  %284 = icmp ult i32 %283, 2048
  br i1 %284, label %286, label %285

285:                                              ; preds = %281, %277, %274
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.2) #9
  br label %383

286:                                              ; preds = %281
  %287 = tail call i32 @devm_gpio_request(ptr noundef %3, i32 noundef %275, ptr noundef nonnull @.str.3) #8
  %288 = icmp eq i32 %287, 0
  br i1 %288, label %289, label %383

289:                                              ; preds = %286
  %290 = load i32, ptr %278, align 4
  %291 = tail call i32 @devm_gpio_request(ptr noundef %3, i32 noundef %290, ptr noundef nonnull @.str.4) #8
  %292 = icmp eq i32 %291, 0
  br i1 %292, label %293, label %383

293:                                              ; preds = %289
  %294 = load i32, ptr %282, align 4
  %295 = tail call i32 @devm_gpio_request(ptr noundef %3, i32 noundef %294, ptr noundef nonnull @.str.5) #8
  %296 = icmp eq i32 %295, 0
  br i1 %296, label %297, label %383

297:                                              ; preds = %293
  %298 = load i32, ptr %161, align 4
  %299 = load i32, ptr %150, align 4
  %300 = lshr i32 %299, 2
  %301 = and i32 %300, 1
  %302 = tail call ptr @gpio_to_desc(i32 noundef %298) #8
  %303 = tail call i32 @gpiod_direction_output_raw(ptr noundef %302, i32 noundef %301) #8
  %304 = load i32, ptr %278, align 4
  %305 = load i32, ptr %150, align 4
  %306 = lshr i32 %305, 1
  %307 = and i32 %306, 1
  %308 = tail call ptr @gpio_to_desc(i32 noundef %304) #8
  %309 = tail call i32 @gpiod_direction_output_raw(ptr noundef %308, i32 noundef %307) #8
  %310 = load i32, ptr %282, align 4
  %311 = load i32, ptr %150, align 4
  %312 = and i32 %311, 1
  %313 = tail call ptr @gpio_to_desc(i32 noundef %310) #8
  %314 = tail call i32 @gpiod_direction_output_raw(ptr noundef %313, i32 noundef %312) #8
  %315 = load i8, ptr %151, align 4, !range !9
  %316 = icmp eq i8 %315, 0
  %317 = select i1 %316, i8 0, i8 2
  br label %318

318:                                              ; preds = %297, %271
  %319 = phi i8 [ %317, %297 ], [ 0, %271 ]
  %320 = tail call i32 @max8997_update_reg(ptr noundef %147, i8 noundef zeroext 24, i8 noundef zeroext %319, i8 noundef zeroext 2) #8
  %321 = load i8, ptr %154, align 4, !range !9
  %322 = icmp eq i8 %321, 0
  %323 = select i1 %322, i8 0, i8 2
  %324 = tail call i32 @max8997_update_reg(ptr noundef %147, i8 noundef zeroext 33, i8 noundef zeroext %323, i8 noundef zeroext 2) #8
  %325 = load i8, ptr %157, align 4, !range !9
  %326 = icmp eq i8 %325, 0
  %327 = select i1 %326, i8 0, i8 2
  %328 = tail call i32 @max8997_update_reg(ptr noundef %147, i8 noundef zeroext 46, i8 noundef zeroext %327, i8 noundef zeroext 2) #8
  %329 = getelementptr inbounds %struct.max8997_data, ptr %138, i32 0, i32 3
  store i32 10, ptr %329, align 4
  %330 = tail call i32 @max8997_write_reg(ptr noundef %147, i8 noundef zeroext 21, i8 noundef zeroext -7) #8
  %331 = load i32, ptr %142, align 4
  %332 = icmp sgt i32 %331, 0
  br i1 %332, label %333, label %383

333:                                              ; preds = %318
  %334 = getelementptr inbounds %struct.max8997_platform_data, ptr %9, i32 0, i32 1
  %335 = getelementptr inbounds %struct.regulator_config, ptr %2, i32 0, i32 1
  %336 = getelementptr inbounds %struct.regulator_config, ptr %2, i32 0, i32 2
  %337 = getelementptr inbounds %struct.regulator_config, ptr %2, i32 0, i32 3
  br label %342

338:                                              ; preds = %369
  %339 = add nuw nsw i32 %343, 1
  %340 = load i32, ptr %142, align 4
  %341 = icmp slt i32 %339, %340
  br i1 %341, label %342, label %383

342:                                              ; preds = %338, %333
  %343 = phi i32 [ 0, %333 ], [ %339, %338 ]
  %344 = load ptr, ptr %334, align 4
  %345 = getelementptr %struct.max8997_regulator_data, ptr %344, i32 %343
  %346 = load i32, ptr %345, align 4
  %347 = getelementptr [34 x ptr], ptr @reg_voltage_map, i32 0, i32 %346
  %348 = load ptr, ptr %347, align 4
  %349 = icmp eq ptr %348, null
  br i1 %349, label %360, label %350

350:                                              ; preds = %342
  %351 = getelementptr inbounds %struct.voltage_map_desc, ptr %348, i32 0, i32 1
  %352 = load i32, ptr %351, align 4
  %353 = load i32, ptr %348, align 4
  %354 = sub i32 %352, %353
  %355 = getelementptr inbounds %struct.voltage_map_desc, ptr %348, i32 0, i32 2
  %356 = load i32, ptr %355, align 4
  %357 = sdiv i32 %354, %356
  %358 = add i32 %357, 1
  %359 = getelementptr [34 x %struct.regulator_desc], ptr @regulators, i32 0, i32 %346, i32 8
  store i32 %358, ptr %359, align 4
  br label %369

360:                                              ; preds = %342
  %361 = add i32 %346, -29
  %362 = icmp ult i32 %361, 2
  br i1 %362, label %363, label %366

363:                                              ; preds = %360
  %364 = getelementptr [34 x %struct.regulator_desc], ptr @regulators, i32 0, i32 %346, i32 23
  store ptr @safeoutvolt, ptr %364, align 4
  %365 = getelementptr [34 x %struct.regulator_desc], ptr @regulators, i32 0, i32 %346, i32 8
  store i32 4, ptr %365, align 4
  br label %369

366:                                              ; preds = %360
  %367 = icmp eq i32 %346, 31
  br i1 %367, label %368, label %369

368:                                              ; preds = %366
  store i32 16, ptr getelementptr inbounds ([34 x %struct.regulator_desc], ptr @regulators, i32 0, i32 31, i32 8), align 4
  br label %369

369:                                              ; preds = %368, %366, %363, %350
  %370 = load ptr, ptr %138, align 4
  store ptr %370, ptr %2, align 4
  %371 = load ptr, ptr %334, align 4
  %372 = getelementptr %struct.max8997_regulator_data, ptr %371, i32 %343, i32 1
  %373 = load ptr, ptr %372, align 4
  store ptr %373, ptr %335, align 4
  store ptr %138, ptr %336, align 4
  %374 = load ptr, ptr %334, align 4
  %375 = getelementptr %struct.max8997_regulator_data, ptr %374, i32 %343, i32 2
  %376 = load ptr, ptr %375, align 4
  store ptr %376, ptr %337, align 4
  %377 = getelementptr [34 x %struct.regulator_desc], ptr @regulators, i32 0, i32 %346
  %378 = call ptr @devm_regulator_register(ptr noundef %3, ptr noundef %377, ptr noundef nonnull %2) #8
  %379 = icmp ugt ptr %378, inttoptr (i32 -4096 to ptr)
  br i1 %379, label %380, label %338

380:                                              ; preds = %369
  %381 = load ptr, ptr %138, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %381, ptr noundef nonnull @.str.6, i32 noundef %346) #9
  %382 = ptrtoint ptr %378 to i32
  br label %383

383:                                              ; preds = %380, %338, %318, %293, %289, %286, %285, %227, %210, %193, %137, %136, %131, %126, %103, %39, %20, %11
  %384 = phi i32 [ -22, %285 ], [ -19, %11 ], [ -12, %137 ], [ %287, %286 ], [ %291, %289 ], [ %295, %293 ], [ -22, %193 ], [ -22, %210 ], [ -22, %227 ], [ %382, %380 ], [ -22, %103 ], [ -22, %20 ], [ -12, %39 ], [ -22, %136 ], [ -22, %131 ], [ -22, %126 ], [ 0, %318 ], [ 0, %338 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #8
  ret i32 %384
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @max8997_update_reg(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpio_request(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @max8997_write_reg(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_node_name_eq(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_regulator_init_data(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_named_gpio_flags(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_direction_output_raw(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpio_to_desc(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max8997_list_voltage(ptr noundef %0, i32 noundef %1) #2 {
  %3 = tail call i32 @rdev_get_id(ptr noundef %0) #8
  %4 = icmp ugt i32 %3, 33
  br i1 %4, label %19, label %5

5:                                                ; preds = %2
  %6 = getelementptr [34 x ptr], ptr @reg_voltage_map, i32 0, i32 %3
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %19, label %9

9:                                                ; preds = %5
  %10 = load i32, ptr %7, align 4
  %11 = getelementptr inbounds %struct.voltage_map_desc, ptr %7, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = mul i32 %12, %1
  %14 = add i32 %13, %10
  %15 = getelementptr inbounds %struct.voltage_map_desc, ptr %7, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = icmp sgt i32 %14, %16
  %18 = select i1 %17, i32 -22, i32 %14
  br label %19

19:                                               ; preds = %9, %5, %2
  %20 = phi i32 [ -22, %2 ], [ -22, %5 ], [ %18, %9 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max8997_set_voltage_ldobuck(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) #2 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #8
  %9 = getelementptr inbounds %struct.max8997_data, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.max8997_dev, ptr %10, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 @rdev_get_id(ptr noundef %0) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  store i32 0, ptr %5, align 4, !annotation !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #8
  store i32 0, ptr %6, align 4, !annotation !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #8
  store i32 0, ptr %7, align 4, !annotation !10
  switch i32 %13, label %51 [
    i32 0, label %14
    i32 1, label %14
    i32 2, label %14
    i32 3, label %14
    i32 4, label %14
    i32 5, label %14
    i32 6, label %14
    i32 7, label %14
    i32 8, label %14
    i32 9, label %14
    i32 10, label %14
    i32 11, label %14
    i32 12, label %14
    i32 13, label %14
    i32 14, label %14
    i32 15, label %14
    i32 16, label %14
    i32 17, label %14
    i32 18, label %14
    i32 19, label %14
    i32 20, label %14
    i32 21, label %14
    i32 22, label %14
    i32 23, label %14
    i32 33, label %14
    i32 25, label %14
    i32 32, label %14
  ]

14:                                               ; preds = %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4
  %15 = getelementptr [34 x ptr], ptr @reg_voltage_map, i32 0, i32 %13
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %51, label %18

18:                                               ; preds = %14
  %19 = load i32, ptr %16, align 4
  %20 = icmp sgt i32 %19, %2
  br i1 %20, label %51, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.voltage_map_desc, ptr %16, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = icmp slt i32 %23, %1
  br i1 %24, label %51, label %25

25:                                               ; preds = %21
  %26 = tail call i32 @llvm.smax.i32(i32 %19, i32 %1) #8
  %27 = getelementptr inbounds %struct.voltage_map_desc, ptr %16, i32 0, i32 2
  %28 = load i32, ptr %27, align 4
  %29 = xor i32 %19, -1
  %30 = add i32 %26, %29
  %31 = add i32 %30, %28
  %32 = sdiv i32 %31, %28
  %33 = mul i32 %32, %28
  %34 = add i32 %33, %19
  %35 = icmp sgt i32 %34, %2
  br i1 %35, label %51, label %36

36:                                               ; preds = %25
  %37 = icmp slt i32 %32, 0
  br i1 %37, label %51, label %38

38:                                               ; preds = %36
  %39 = call fastcc i32 @max8997_get_voltage_register(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7)
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %38
  %42 = load i32, ptr %5, align 4
  %43 = trunc i32 %42 to i8
  %44 = load i32, ptr %6, align 4
  %45 = shl i32 %32, %44
  %46 = trunc i32 %45 to i8
  %47 = load i32, ptr %7, align 4
  %48 = shl i32 %47, %44
  %49 = trunc i32 %48 to i8
  %50 = tail call i32 @max8997_update_reg(ptr noundef %12, i8 noundef zeroext %43, i8 noundef zeroext %46, i8 noundef zeroext %49) #8
  store i32 %32, ptr %3, align 4
  br label %51

51:                                               ; preds = %41, %38, %36, %25, %21, %18, %14, %4
  %52 = phi i32 [ %50, %41 ], [ -22, %4 ], [ %32, %36 ], [ %39, %38 ], [ -22, %14 ], [ -22, %21 ], [ -22, %18 ], [ -22, %25 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  ret i32 %52
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max8997_get_voltage_sel(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #8
  %7 = getelementptr inbounds %struct.max8997_data, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.max8997_dev, ptr %8, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  store i32 0, ptr %2, align 4, !annotation !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 0, ptr %3, align 4, !annotation !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  store i32 0, ptr %4, align 4, !annotation !10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #8
  store i8 0, ptr %5, align 1, !annotation !10
  %11 = call fastcc i32 @max8997_get_voltage_register(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %25

13:                                               ; preds = %1
  %14 = load i32, ptr %2, align 4
  %15 = trunc i32 %14 to i8
  %16 = call i32 @max8997_read_reg(ptr noundef %10, i8 noundef zeroext %15, ptr noundef nonnull %5) #8
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %13
  %19 = load i32, ptr %3, align 4
  %20 = load i8, ptr %5, align 1
  %21 = zext i8 %20 to i32
  %22 = lshr i32 %21, %19
  %23 = load i32, ptr %4, align 4
  %24 = and i32 %22, %23
  br label %25

25:                                               ; preds = %18, %13, %1
  %26 = phi i32 [ %24, %18 ], [ %11, %1 ], [ %16, %13 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max8997_reg_enable(ptr noundef %0) #2 {
  %2 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #8
  %3 = getelementptr inbounds %struct.max8997_data, ptr %2, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.max8997_dev, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @rdev_get_id(ptr noundef %0) #8
  switch i32 %7, label %30 [
    i32 0, label %8
    i32 1, label %8
    i32 2, label %8
    i32 3, label %8
    i32 4, label %8
    i32 5, label %8
    i32 6, label %8
    i32 7, label %8
    i32 8, label %8
    i32 9, label %8
    i32 10, label %8
    i32 11, label %8
    i32 12, label %8
    i32 13, label %8
    i32 14, label %8
    i32 15, label %8
    i32 16, label %8
    i32 17, label %8
    i32 18, label %8
    i32 19, label %25
    i32 20, label %11
    i32 21, label %12
    i32 22, label %13
    i32 23, label %14
    i32 24, label %15
    i32 25, label %16
    i32 26, label %17
    i32 27, label %17
    i32 28, label %20
    i32 29, label %21
    i32 30, label %21
    i32 32, label %24
  ]

8:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  %9 = trunc i32 %7 to i8
  %10 = add nuw nsw i8 %9, 59
  br label %25

11:                                               ; preds = %1
  br label %25

12:                                               ; preds = %1
  br label %25

13:                                               ; preds = %1
  br label %25

14:                                               ; preds = %1
  br label %25

15:                                               ; preds = %1
  br label %25

16:                                               ; preds = %1
  br label %25

17:                                               ; preds = %1, %1
  %18 = add nsw i32 %7, -26
  %19 = shl nuw nsw i32 1, %18
  br label %25

20:                                               ; preds = %1
  br label %25

21:                                               ; preds = %1, %1
  %22 = add nsw i32 %7, -29
  %23 = shl nuw nsw i32 64, %22
  br label %25

24:                                               ; preds = %1
  br label %25

25:                                               ; preds = %24, %21, %20, %17, %16, %15, %14, %13, %12, %11, %8, %1
  %26 = phi i8 [ 81, %24 ], [ 90, %21 ], [ 80, %20 ], [ 19, %17 ], [ 57, %16 ], [ 55, %15 ], [ 46, %14 ], [ 44, %13 ], [ 42, %12 ], [ 33, %11 ], [ %10, %8 ], [ 24, %1 ]
  %27 = phi i32 [ 64, %24 ], [ %23, %21 ], [ 128, %20 ], [ %19, %17 ], [ 1, %16 ], [ 1, %15 ], [ 1, %14 ], [ 1, %13 ], [ 1, %12 ], [ 1, %11 ], [ 192, %8 ], [ 1, %1 ]
  %28 = trunc i32 %27 to i8
  %29 = tail call i32 @max8997_update_reg(ptr noundef %6, i8 noundef zeroext %26, i8 noundef zeroext %28, i8 noundef zeroext %28) #8
  br label %30

30:                                               ; preds = %25, %1
  %31 = phi i32 [ %29, %25 ], [ -22, %1 ]
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max8997_reg_disable(ptr noundef %0) #2 {
  %2 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #8
  %3 = getelementptr inbounds %struct.max8997_data, ptr %2, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.max8997_dev, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @rdev_get_id(ptr noundef %0) #8
  switch i32 %7, label %31 [
    i32 0, label %8
    i32 1, label %8
    i32 2, label %8
    i32 3, label %8
    i32 4, label %8
    i32 5, label %8
    i32 6, label %8
    i32 7, label %8
    i32 8, label %8
    i32 9, label %8
    i32 10, label %8
    i32 11, label %8
    i32 12, label %8
    i32 13, label %8
    i32 14, label %8
    i32 15, label %8
    i32 16, label %8
    i32 17, label %8
    i32 18, label %8
    i32 19, label %25
    i32 20, label %11
    i32 21, label %12
    i32 22, label %13
    i32 23, label %14
    i32 24, label %15
    i32 25, label %16
    i32 26, label %17
    i32 27, label %17
    i32 28, label %20
    i32 29, label %21
    i32 30, label %21
    i32 32, label %24
  ]

8:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  %9 = trunc i32 %7 to i8
  %10 = add nuw nsw i8 %9, 59
  br label %25

11:                                               ; preds = %1
  br label %25

12:                                               ; preds = %1
  br label %25

13:                                               ; preds = %1
  br label %25

14:                                               ; preds = %1
  br label %25

15:                                               ; preds = %1
  br label %25

16:                                               ; preds = %1
  br label %25

17:                                               ; preds = %1, %1
  %18 = add nsw i32 %7, -26
  %19 = shl nuw nsw i32 1, %18
  br label %25

20:                                               ; preds = %1
  br label %25

21:                                               ; preds = %1, %1
  %22 = add nsw i32 %7, -29
  %23 = shl nuw nsw i32 64, %22
  br label %25

24:                                               ; preds = %1
  br label %25

25:                                               ; preds = %24, %21, %20, %17, %16, %15, %14, %13, %12, %11, %8, %1
  %26 = phi i8 [ 81, %24 ], [ 90, %21 ], [ 80, %20 ], [ 19, %17 ], [ 57, %16 ], [ 55, %15 ], [ 46, %14 ], [ 44, %13 ], [ 42, %12 ], [ 33, %11 ], [ %10, %8 ], [ 24, %1 ]
  %27 = phi i32 [ 64, %24 ], [ %23, %21 ], [ 128, %20 ], [ %19, %17 ], [ 1, %16 ], [ 1, %15 ], [ 1, %14 ], [ 1, %13 ], [ 1, %12 ], [ 1, %11 ], [ 192, %8 ], [ 1, %1 ]
  %28 = trunc i32 %27 to i8
  %29 = xor i8 %28, -1
  %30 = tail call i32 @max8997_update_reg(ptr noundef %6, i8 noundef zeroext %26, i8 noundef zeroext %29, i8 noundef zeroext %28) #8
  br label %31

31:                                               ; preds = %25, %1
  %32 = phi i32 [ %30, %25 ], [ -22, %1 ]
  ret i32 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max8997_reg_is_enabled(ptr noundef %0) #2 {
  %2 = alloca i8, align 1
  %3 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #8
  %4 = getelementptr inbounds %struct.max8997_data, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.max8997_dev, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #8
  store i8 0, ptr %2, align 1, !annotation !10
  %8 = tail call i32 @rdev_get_id(ptr noundef %0) #8
  switch i32 %8, label %37 [
    i32 0, label %9
    i32 1, label %9
    i32 2, label %9
    i32 3, label %9
    i32 4, label %9
    i32 5, label %9
    i32 6, label %9
    i32 7, label %9
    i32 8, label %9
    i32 9, label %9
    i32 10, label %9
    i32 11, label %9
    i32 12, label %9
    i32 13, label %9
    i32 14, label %9
    i32 15, label %9
    i32 16, label %9
    i32 17, label %9
    i32 18, label %9
    i32 19, label %26
    i32 20, label %12
    i32 21, label %13
    i32 22, label %14
    i32 23, label %15
    i32 24, label %16
    i32 25, label %17
    i32 26, label %18
    i32 27, label %18
    i32 28, label %21
    i32 29, label %22
    i32 30, label %22
    i32 32, label %25
  ]

9:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  %10 = trunc i32 %8 to i8
  %11 = add nuw nsw i8 %10, 59
  br label %26

12:                                               ; preds = %1
  br label %26

13:                                               ; preds = %1
  br label %26

14:                                               ; preds = %1
  br label %26

15:                                               ; preds = %1
  br label %26

16:                                               ; preds = %1
  br label %26

17:                                               ; preds = %1
  br label %26

18:                                               ; preds = %1, %1
  %19 = add nsw i32 %8, -26
  %20 = shl nuw nsw i32 1, %19
  br label %26

21:                                               ; preds = %1
  br label %26

22:                                               ; preds = %1, %1
  %23 = add nsw i32 %8, -29
  %24 = shl nuw nsw i32 64, %23
  br label %26

25:                                               ; preds = %1
  br label %26

26:                                               ; preds = %25, %22, %21, %18, %17, %16, %15, %14, %13, %12, %9, %1
  %27 = phi i8 [ 81, %25 ], [ 90, %22 ], [ 80, %21 ], [ 19, %18 ], [ 57, %17 ], [ 55, %16 ], [ 46, %15 ], [ 44, %14 ], [ 42, %13 ], [ 33, %12 ], [ %11, %9 ], [ 24, %1 ]
  %28 = phi i32 [ 64, %25 ], [ %24, %22 ], [ 128, %21 ], [ %20, %18 ], [ 1, %17 ], [ 1, %16 ], [ 1, %15 ], [ 1, %14 ], [ 1, %13 ], [ 1, %12 ], [ 192, %9 ], [ 1, %1 ]
  %29 = call i32 @max8997_read_reg(ptr noundef %7, i8 noundef zeroext %27, ptr noundef nonnull %2) #8
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %26
  %32 = load i8, ptr %2, align 1
  %33 = zext i8 %32 to i32
  %34 = and i32 %28, %33
  %35 = icmp eq i32 %34, %28
  %36 = zext i1 %35 to i32
  br label %37

37:                                               ; preds = %31, %26, %1
  %38 = phi i32 [ %36, %31 ], [ %29, %26 ], [ -22, %1 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #8
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max8997_reg_disable_suspend(ptr noundef %0) #2 {
  %2 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #8
  %3 = getelementptr inbounds %struct.max8997_data, ptr %2, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.max8997_dev, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @rdev_get_id(ptr noundef %0) #8
  %8 = tail call i32 @rdev_get_id(ptr noundef %0) #8
  switch i32 %8, label %38 [
    i32 0, label %9
    i32 1, label %9
    i32 2, label %9
    i32 3, label %9
    i32 4, label %9
    i32 5, label %9
    i32 6, label %9
    i32 7, label %9
    i32 8, label %9
    i32 9, label %9
    i32 10, label %9
    i32 11, label %9
    i32 12, label %9
    i32 13, label %9
    i32 14, label %9
    i32 15, label %9
    i32 16, label %9
    i32 17, label %9
    i32 18, label %9
    i32 19, label %26
    i32 20, label %12
    i32 21, label %13
    i32 22, label %14
    i32 23, label %15
    i32 24, label %16
    i32 25, label %17
    i32 26, label %18
    i32 27, label %18
    i32 28, label %21
    i32 29, label %22
    i32 30, label %22
    i32 32, label %25
  ]

9:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  %10 = trunc i32 %8 to i8
  %11 = add nuw nsw i8 %10, 59
  br label %26

12:                                               ; preds = %1
  br label %26

13:                                               ; preds = %1
  br label %26

14:                                               ; preds = %1
  br label %26

15:                                               ; preds = %1
  br label %26

16:                                               ; preds = %1
  br label %26

17:                                               ; preds = %1
  br label %26

18:                                               ; preds = %1, %1
  %19 = add nsw i32 %8, -26
  %20 = shl nuw nsw i32 1, %19
  br label %26

21:                                               ; preds = %1
  br label %26

22:                                               ; preds = %1, %1
  %23 = add nsw i32 %8, -29
  %24 = shl nuw nsw i32 64, %23
  br label %26

25:                                               ; preds = %1
  br label %26

26:                                               ; preds = %25, %22, %21, %18, %17, %16, %15, %14, %13, %12, %9, %1
  %27 = phi i8 [ 81, %25 ], [ 90, %22 ], [ 80, %21 ], [ 19, %18 ], [ 57, %17 ], [ 55, %16 ], [ 46, %15 ], [ 44, %14 ], [ 42, %13 ], [ 33, %12 ], [ %11, %9 ], [ 24, %1 ]
  %28 = phi i32 [ 64, %25 ], [ %24, %22 ], [ 128, %21 ], [ %20, %18 ], [ 1, %17 ], [ 1, %16 ], [ 1, %15 ], [ 1, %14 ], [ 1, %13 ], [ 1, %12 ], [ 192, %9 ], [ 1, %1 ]
  %29 = getelementptr %struct.max8997_data, ptr %2, i32 0, i32 13, i32 %7
  %30 = tail call i32 @max8997_read_reg(ptr noundef %6, i8 noundef zeroext %27, ptr noundef %29) #8
  switch i32 %7, label %34 [
    i32 18, label %31
    i32 9, label %31
    i32 0, label %31
  ]

31:                                               ; preds = %26, %26, %26
  %32 = trunc i32 %28 to i8
  %33 = tail call i32 @max8997_update_reg(ptr noundef %6, i8 noundef zeroext %27, i8 noundef zeroext 64, i8 noundef zeroext %32) #8
  br label %38

34:                                               ; preds = %26
  %35 = trunc i32 %28 to i8
  %36 = xor i8 %35, -1
  %37 = tail call i32 @max8997_update_reg(ptr noundef %6, i8 noundef zeroext %27, i8 noundef zeroext %36, i8 noundef zeroext %35) #8
  br label %38

38:                                               ; preds = %34, %31, %1
  %39 = phi i32 [ %33, %31 ], [ %37, %34 ], [ -22, %1 ]
  ret i32 %39
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdev_get_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @max8997_get_voltage_register(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) unnamed_addr #2 {
  %5 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #8
  %6 = tail call i32 @rdev_get_id(ptr noundef %0) #8
  switch i32 %6, label %45 [
    i32 0, label %7
    i32 1, label %7
    i32 2, label %7
    i32 3, label %7
    i32 4, label %7
    i32 5, label %7
    i32 6, label %7
    i32 7, label %7
    i32 8, label %7
    i32 9, label %7
    i32 10, label %7
    i32 11, label %7
    i32 12, label %7
    i32 13, label %7
    i32 14, label %7
    i32 15, label %7
    i32 16, label %7
    i32 17, label %7
    i32 18, label %7
    i32 19, label %9
    i32 20, label %17
    i32 21, label %41
    i32 22, label %25
    i32 23, label %26
    i32 25, label %34
    i32 29, label %35
    i32 30, label %35
    i32 31, label %38
    i32 32, label %39
    i32 33, label %40
  ]

7:                                                ; preds = %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4
  %8 = add nuw nsw i32 %6, 59
  br label %41

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.max8997_data, ptr %5, i32 0, i32 4
  %11 = load i8, ptr %10, align 4, !range !9
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %41, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.max8997_data, ptr %5, i32 0, i32 11
  %15 = load i32, ptr %14, align 4
  %16 = add i32 %15, 25
  br label %41

17:                                               ; preds = %4
  %18 = getelementptr inbounds %struct.max8997_data, ptr %5, i32 0, i32 5
  %19 = load i8, ptr %18, align 1, !range !9
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %41, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.max8997_data, ptr %5, i32 0, i32 11
  %23 = load i32, ptr %22, align 4
  %24 = add i32 %23, 34
  br label %41

25:                                               ; preds = %4
  br label %41

26:                                               ; preds = %4
  %27 = getelementptr inbounds %struct.max8997_data, ptr %5, i32 0, i32 6
  %28 = load i8, ptr %27, align 2, !range !9
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %41, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.max8997_data, ptr %5, i32 0, i32 11
  %32 = load i32, ptr %31, align 4
  %33 = add i32 %32, 47
  br label %41

34:                                               ; preds = %4
  br label %41

35:                                               ; preds = %4, %4
  %36 = icmp eq i32 %6, 30
  %37 = select i1 %36, i32 2, i32 0
  br label %41

38:                                               ; preds = %4
  br label %41

39:                                               ; preds = %4
  br label %41

40:                                               ; preds = %4
  br label %41

41:                                               ; preds = %40, %39, %38, %35, %34, %30, %26, %25, %21, %17, %13, %9, %7, %4
  %42 = phi i32 [ 84, %40 ], [ 83, %39 ], [ 82, %38 ], [ 90, %35 ], [ 58, %34 ], [ %33, %30 ], [ 47, %26 ], [ 45, %25 ], [ %24, %21 ], [ 34, %17 ], [ %16, %13 ], [ 25, %9 ], [ %8, %7 ], [ 43, %4 ]
  %43 = phi i32 [ 0, %40 ], [ 0, %39 ], [ 0, %38 ], [ %37, %35 ], [ 0, %34 ], [ 0, %30 ], [ 0, %26 ], [ 0, %25 ], [ 0, %21 ], [ 0, %17 ], [ 0, %13 ], [ 0, %9 ], [ 0, %7 ], [ 0, %4 ]
  %44 = phi i32 [ 15, %40 ], [ 15, %39 ], [ 15, %38 ], [ 3, %35 ], [ 63, %34 ], [ 63, %30 ], [ 63, %26 ], [ 63, %25 ], [ 63, %21 ], [ 63, %17 ], [ 63, %13 ], [ 63, %9 ], [ 63, %7 ], [ 63, %4 ]
  store i32 %42, ptr %1, align 4
  store i32 %43, ptr %2, align 4
  store i32 %44, ptr %3, align 4
  br label %45

45:                                               ; preds = %41, %4
  %46 = phi i32 [ 0, %41 ], [ -22, %4 ]
  ret i32 %46
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @max8997_read_reg(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max8997_set_voltage_buck(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) #2 {
  %5 = alloca [3 x ptr], align 4
  %6 = alloca [8 x i32], align 4
  %7 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #8
  %8 = tail call i32 @rdev_get_id(ptr noundef %0) #8
  %9 = add i32 %8, -26
  %10 = icmp ult i32 %9, -7
  br i1 %10, label %218, label %11

11:                                               ; preds = %4
  switch i32 %8, label %24 [
    i32 19, label %12
    i32 20, label %16
    i32 23, label %20
  ]

12:                                               ; preds = %11
  %13 = getelementptr inbounds %struct.max8997_data, ptr %7, i32 0, i32 4
  %14 = load i8, ptr %13, align 4, !range !9
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %24, label %26

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.max8997_data, ptr %7, i32 0, i32 5
  %18 = load i8, ptr %17, align 1, !range !9
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %24, label %26

20:                                               ; preds = %11
  %21 = getelementptr inbounds %struct.max8997_data, ptr %7, i32 0, i32 6
  %22 = load i8, ptr %21, align 2, !range !9
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %20, %16, %12, %11
  %25 = tail call i32 @max8997_set_voltage_ldobuck(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3)
  br label %218

26:                                               ; preds = %20, %16, %12
  %27 = getelementptr [34 x ptr], ptr @reg_voltage_map, i32 0, i32 %8
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %218, label %30

30:                                               ; preds = %26
  %31 = load i32, ptr %28, align 4
  %32 = icmp sgt i32 %31, %2
  br i1 %32, label %218, label %33

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.voltage_map_desc, ptr %28, i32 0, i32 1
  %35 = load i32, ptr %34, align 4
  %36 = icmp slt i32 %35, %1
  br i1 %36, label %218, label %37

37:                                               ; preds = %33
  %38 = tail call i32 @llvm.smax.i32(i32 %31, i32 %1) #8
  %39 = getelementptr inbounds %struct.voltage_map_desc, ptr %28, i32 0, i32 2
  %40 = load i32, ptr %39, align 4
  %41 = xor i32 %31, -1
  %42 = add i32 %38, %41
  %43 = add i32 %42, %40
  %44 = sdiv i32 %43, %40
  %45 = mul i32 %44, %40
  %46 = add i32 %45, %31
  %47 = icmp sgt i32 %46, %2
  br i1 %47, label %218, label %48

48:                                               ; preds = %37
  %49 = icmp slt i32 %44, 0
  br i1 %49, label %218, label %50

50:                                               ; preds = %48
  %51 = getelementptr inbounds [3 x ptr], ptr %5, i32 0, i32 1
  %52 = getelementptr inbounds [3 x ptr], ptr %5, i32 0, i32 2
  br label %53

53:                                               ; preds = %174, %50
  %54 = phi i32 [ %181, %174 ], [ %44, %50 ]
  %55 = phi i32 [ %178, %174 ], [ -1, %50 ]
  %56 = phi i32 [ %179, %174 ], [ -1, %50 ]
  %57 = phi i32 [ %180, %174 ], [ 2147483647, %50 ]
  %58 = trunc i32 %54 to i8
  %59 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #8
  %60 = tail call i32 @rdev_get_id(ptr noundef %0) #8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %6, i8 0, i32 32, i1 false) #8, !annotation !10
  switch i32 %60, label %168 [
    i32 19, label %63
    i32 20, label %61
    i32 23, label %62
  ]

61:                                               ; preds = %53
  br label %63

62:                                               ; preds = %53
  br label %63

63:                                               ; preds = %62, %61, %53
  %64 = phi i1 [ true, %53 ], [ false, %62 ], [ false, %61 ]
  %65 = phi i1 [ false, %53 ], [ false, %62 ], [ true, %61 ]
  %66 = phi i1 [ false, %53 ], [ true, %62 ], [ false, %61 ]
  %67 = phi i32 [ 0, %53 ], [ 2, %62 ], [ 1, %61 ]
  %68 = getelementptr inbounds %struct.max8997_data, ptr %59, i32 0, i32 7
  store ptr %68, ptr %5, align 4
  %69 = getelementptr inbounds %struct.max8997_data, ptr %59, i32 0, i32 8
  store ptr %69, ptr %51, align 4
  %70 = getelementptr inbounds %struct.max8997_data, ptr %59, i32 0, i32 9
  store ptr %70, ptr %52, align 4
  %71 = getelementptr inbounds %struct.max8997_data, ptr %59, i32 0, i32 4
  %72 = load i8, ptr %71, align 4, !range !9
  %73 = getelementptr inbounds %struct.max8997_data, ptr %59, i32 0, i32 5
  %74 = load i8, ptr %73, align 1, !range !9
  %75 = getelementptr inbounds %struct.max8997_data, ptr %59, i32 0, i32 6
  %76 = load i8, ptr %75, align 2, !range !9
  %77 = getelementptr [3 x ptr], ptr %5, i32 0, i32 %67
  %78 = load ptr, ptr %77, align 4
  %79 = getelementptr inbounds %struct.max8997_data, ptr %59, i32 0, i32 11
  %80 = icmp eq i8 %72, 0
  %81 = icmp eq i8 %74, 0
  %82 = icmp eq i8 %76, 0
  %83 = select i1 %64, i1 true, i1 %80
  %84 = select i1 %65, i1 true, i1 %81
  %85 = select i1 %66, i1 true, i1 %82
  br label %86

86:                                               ; preds = %160, %63
  %87 = phi i32 [ -1, %63 ], [ %161, %160 ]
  %88 = phi i32 [ -1, %63 ], [ %162, %160 ]
  %89 = phi i32 [ 0, %63 ], [ %164, %160 ]
  %90 = phi i32 [ 2147483647, %63 ], [ %163, %160 ]
  %91 = getelementptr i8, ptr %78, i32 %89
  %92 = load i8, ptr %91, align 1
  %93 = icmp eq i8 %92, %58
  %94 = getelementptr [8 x i32], ptr %6, i32 0, i32 %89
  br i1 %93, label %96, label %95

95:                                               ; preds = %86
  store i32 -1, ptr %94, align 4
  br label %160

96:                                               ; preds = %86
  store i32 0, ptr %94, align 4
  br i1 %83, label %113, label %97

97:                                               ; preds = %96
  %98 = getelementptr i8, ptr %68, i32 %89
  %99 = load i8, ptr %98, align 1
  %100 = zext i8 %99 to i32
  %101 = load i32, ptr %79, align 4
  %102 = getelementptr i8, ptr %68, i32 %101
  %103 = load i8, ptr %102, align 1
  %104 = zext i8 %103 to i32
  %105 = sub nsw i32 %100, %104
  %106 = icmp sgt i32 %105, 0
  br i1 %106, label %111, label %107

107:                                              ; preds = %97
  %108 = icmp slt i32 %105, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %107
  %110 = sub nsw i32 0, %105
  br label %111

111:                                              ; preds = %109, %97
  %112 = phi i32 [ %110, %109 ], [ %105, %97 ]
  store i32 %112, ptr %94, align 4
  br label %113

113:                                              ; preds = %111, %107, %96
  %114 = phi i32 [ 0, %107 ], [ 0, %96 ], [ %112, %111 ]
  br i1 %84, label %133, label %115

115:                                              ; preds = %113
  %116 = getelementptr i8, ptr %69, i32 %89
  %117 = load i8, ptr %116, align 1
  %118 = zext i8 %117 to i32
  %119 = load i32, ptr %79, align 4
  %120 = getelementptr i8, ptr %69, i32 %119
  %121 = load i8, ptr %120, align 1
  %122 = zext i8 %121 to i32
  %123 = sub nsw i32 %118, %122
  %124 = icmp sgt i32 %123, 0
  br i1 %124, label %129, label %125

125:                                              ; preds = %115
  %126 = icmp slt i32 %123, 0
  br i1 %126, label %127, label %133

127:                                              ; preds = %125
  %128 = sub nsw i32 %114, %123
  br label %131

129:                                              ; preds = %115
  %130 = add nuw nsw i32 %123, %114
  br label %131

131:                                              ; preds = %129, %127
  %132 = phi i32 [ %130, %129 ], [ %128, %127 ]
  store i32 %132, ptr %94, align 4
  br label %133

133:                                              ; preds = %131, %125, %113
  %134 = phi i32 [ %114, %125 ], [ %114, %113 ], [ %132, %131 ]
  br i1 %85, label %151, label %135

135:                                              ; preds = %133
  %136 = getelementptr i8, ptr %70, i32 %89
  %137 = load i8, ptr %136, align 1
  %138 = zext i8 %137 to i32
  %139 = load i32, ptr %79, align 4
  %140 = getelementptr i8, ptr %70, i32 %139
  %141 = load i8, ptr %140, align 1
  %142 = zext i8 %141 to i32
  %143 = sub nsw i32 %138, %142
  %144 = icmp sgt i32 %143, 0
  br i1 %144, label %149, label %145

145:                                              ; preds = %135
  %146 = icmp slt i32 %143, 0
  br i1 %146, label %147, label %151

147:                                              ; preds = %145
  %148 = sub nsw i32 %134, %143
  br label %154

149:                                              ; preds = %135
  %150 = add nuw nsw i32 %143, %134
  br label %154

151:                                              ; preds = %145, %133
  %152 = icmp eq i32 %134, 0
  br i1 %152, label %153, label %156

153:                                              ; preds = %151
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #8
  br label %196

154:                                              ; preds = %149, %147
  %155 = phi i32 [ %148, %147 ], [ %150, %149 ]
  store i32 %155, ptr %94, align 4
  br label %156

156:                                              ; preds = %154, %151
  %157 = phi i32 [ %134, %151 ], [ %155, %154 ]
  %158 = icmp slt i32 %157, %90
  br i1 %158, label %159, label %160

159:                                              ; preds = %156
  br label %160

160:                                              ; preds = %159, %156, %95
  %161 = phi i32 [ %89, %159 ], [ %87, %156 ], [ %87, %95 ]
  %162 = phi i32 [ %89, %159 ], [ %88, %156 ], [ %88, %95 ]
  %163 = phi i32 [ %157, %159 ], [ %90, %156 ], [ %90, %95 ]
  %164 = add nuw nsw i32 %89, 1
  %165 = icmp eq i32 %164, 8
  br i1 %165, label %166, label %86

166:                                              ; preds = %160
  %167 = icmp eq i32 %162, -1
  br i1 %167, label %168, label %170

168:                                              ; preds = %166, %53
  %169 = phi i32 [ %161, %166 ], [ -1, %53 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #8
  br label %174

170:                                              ; preds = %166
  %171 = getelementptr [8 x i32], ptr %6, i32 0, i32 %162
  %172 = load i32, ptr %171, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #8
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %196, label %174

174:                                              ; preds = %170, %168
  %175 = phi i32 [ -22, %168 ], [ %172, %170 ]
  %176 = phi i32 [ %169, %168 ], [ %161, %170 ]
  %177 = icmp sgt i32 %57, %175
  %178 = select i1 %177, i32 %54, i32 %55
  %179 = select i1 %177, i32 %176, i32 %56
  %180 = tail call i32 @llvm.smin.i32(i32 %57, i32 %175)
  %181 = add i32 %54, 1
  %182 = load i32, ptr %28, align 4
  %183 = load i32, ptr %39, align 4
  %184 = mul i32 %183, %181
  %185 = add i32 %184, %182
  %186 = load i32, ptr %34, align 4
  %187 = icmp sgt i32 %185, %186
  br i1 %187, label %188, label %53

188:                                              ; preds = %174
  %189 = getelementptr inbounds %struct.max8997_data, ptr %7, i32 0, i32 12
  %190 = load i8, ptr %189, align 4, !range !9
  %191 = icmp eq i8 %190, 0
  br i1 %191, label %218, label %192

192:                                              ; preds = %188
  %193 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 13
  %194 = getelementptr inbounds %struct.max8997_data, ptr %7, i32 0, i32 11
  %195 = load i32, ptr %194, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %193, ptr noundef nonnull @.str.59, i32 noundef %195, i32 noundef %179) #9
  br label %196

196:                                              ; preds = %192, %170, %153
  %197 = phi i32 [ %179, %192 ], [ %89, %153 ], [ %161, %170 ]
  %198 = phi i32 [ %178, %192 ], [ %54, %153 ], [ %54, %170 ]
  %199 = icmp slt i32 %197, 0
  %200 = icmp slt i32 %198, 0
  %201 = select i1 %199, i1 true, i1 %200
  br i1 %201, label %218, label %202

202:                                              ; preds = %196
  %203 = getelementptr inbounds %struct.max8997_data, ptr %7, i32 0, i32 11
  store i32 %197, ptr %203, align 4
  %204 = and i32 %197, 1
  %205 = lshr i32 %197, 1
  %206 = and i32 %205, 1
  %207 = lshr i32 %197, 2
  %208 = and i32 %207, 1
  %209 = getelementptr inbounds %struct.max8997_data, ptr %7, i32 0, i32 10
  %210 = load i32, ptr %209, align 4
  %211 = tail call ptr @gpio_to_desc(i32 noundef %210) #8
  tail call void @gpiod_set_raw_value(ptr noundef %211, i32 noundef %208) #8
  %212 = getelementptr %struct.max8997_data, ptr %7, i32 0, i32 10, i32 1
  %213 = load i32, ptr %212, align 4
  %214 = tail call ptr @gpio_to_desc(i32 noundef %213) #8
  tail call void @gpiod_set_raw_value(ptr noundef %214, i32 noundef %206) #8
  %215 = getelementptr %struct.max8997_data, ptr %7, i32 0, i32 10, i32 2
  %216 = load i32, ptr %215, align 4
  %217 = tail call ptr @gpio_to_desc(i32 noundef %216) #8
  tail call void @gpiod_set_raw_value(ptr noundef %217, i32 noundef %204) #8
  store i32 %198, ptr %3, align 4
  br label %218

218:                                              ; preds = %202, %196, %188, %48, %37, %33, %30, %26, %24, %4
  %219 = phi i32 [ 0, %202 ], [ %25, %24 ], [ -22, %4 ], [ %44, %48 ], [ -22, %188 ], [ -22, %196 ], [ -22, %26 ], [ -22, %33 ], [ -22, %30 ], [ -22, %37 ]
  ret i32 %219
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max8997_set_voltage_buck_time_sel(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #8
  %5 = tail call i32 @rdev_get_id(ptr noundef %0) #8
  %6 = getelementptr [34 x ptr], ptr @reg_voltage_map, i32 0, i32 %5
  %7 = load ptr, ptr %6, align 4
  %8 = icmp ugt i32 %2, %1
  br i1 %8, label %9, label %33

9:                                                ; preds = %3
  switch i32 %5, label %33 [
    i32 19, label %10
    i32 20, label %14
    i32 23, label %18
    i32 22, label %22
  ]

10:                                               ; preds = %9
  %11 = getelementptr inbounds %struct.max8997_data, ptr %4, i32 0, i32 4
  %12 = load i8, ptr %11, align 4, !range !9
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %22, label %33

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.max8997_data, ptr %4, i32 0, i32 5
  %16 = load i8, ptr %15, align 1, !range !9
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %22, label %33

18:                                               ; preds = %9
  %19 = getelementptr inbounds %struct.max8997_data, ptr %4, i32 0, i32 6
  %20 = load i8, ptr %19, align 2, !range !9
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %18, %14, %10, %9
  %23 = getelementptr inbounds %struct.voltage_map_desc, ptr %7, i32 0, i32 2
  %24 = load i32, ptr %23, align 4
  %25 = sub i32 %2, %1
  %26 = mul i32 %24, %25
  %27 = getelementptr inbounds %struct.max8997_data, ptr %4, i32 0, i32 3
  %28 = load i32, ptr %27, align 4
  %29 = mul i32 %28, 1000
  %30 = add i32 %26, -1
  %31 = add i32 %30, %29
  %32 = udiv i32 %31, %29
  br label %33

33:                                               ; preds = %22, %18, %14, %10, %9, %3
  %34 = phi i32 [ %32, %22 ], [ 0, %3 ], [ 0, %10 ], [ 0, %14 ], [ 0, %18 ], [ 0, %9 ]
  ret i32 %34
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_raw_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_list_voltage_table(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max8997_set_voltage_safeout_sel(ptr noundef %0, i32 noundef %1) #2 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #8
  %7 = getelementptr inbounds %struct.max8997_data, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.max8997_dev, ptr %8, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 @rdev_get_id(ptr noundef %0) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 0, ptr %3, align 4, !annotation !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  store i32 0, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  store i32 0, ptr %5, align 4, !annotation !10
  %12 = add i32 %11, -31
  %13 = icmp ult i32 %12, -2
  br i1 %13, label %27, label %14

14:                                               ; preds = %2
  %15 = call fastcc i32 @max8997_get_voltage_register(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5)
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %14
  %18 = load i32, ptr %3, align 4
  %19 = trunc i32 %18 to i8
  %20 = load i32, ptr %4, align 4
  %21 = shl i32 %1, %20
  %22 = trunc i32 %21 to i8
  %23 = load i32, ptr %5, align 4
  %24 = shl i32 %23, %20
  %25 = trunc i32 %24 to i8
  %26 = tail call i32 @max8997_update_reg(ptr noundef %10, i8 noundef zeroext %19, i8 noundef zeroext %22, i8 noundef zeroext %25) #8
  br label %27

27:                                               ; preds = %17, %14, %2
  %28 = phi i32 [ %26, %17 ], [ -22, %2 ], [ %15, %14 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max8997_list_voltage_charger_cv(ptr noundef %0, i32 noundef %1) #2 {
  %3 = tail call i32 @rdev_get_id(ptr noundef %0) #8
  %4 = icmp eq i32 %3, 31
  %5 = icmp ult i32 %1, 16
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = getelementptr inbounds [16 x i32], ptr @switch.table.max8997_list_voltage_charger_cv, i32 0, i32 %1
  %9 = load i32, ptr %8, align 4
  br label %10

10:                                               ; preds = %7, %2
  %11 = phi i32 [ -22, %2 ], [ %9, %7 ]
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max8997_set_voltage_charger_cv(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) #2 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #8
  %9 = getelementptr inbounds %struct.max8997_data, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.max8997_dev, ptr %10, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 @rdev_get_id(ptr noundef %0) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  store i32 0, ptr %5, align 4, !annotation !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #8
  store i32 0, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #8
  store i32 0, ptr %7, align 4, !annotation !10
  %14 = icmp eq i32 %13, 31
  br i1 %14, label %15, label %49

15:                                               ; preds = %4
  %16 = call fastcc i32 @max8997_get_voltage_register(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7)
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %49

18:                                               ; preds = %15
  %19 = icmp slt i32 %2, 4000000
  %20 = icmp sgt i32 %1, 4350000
  %21 = or i1 %20, %19
  br i1 %21, label %49, label %22

22:                                               ; preds = %18
  %23 = icmp slt i32 %1, 4000001
  br i1 %23, label %39, label %24

24:                                               ; preds = %22
  %25 = icmp ult i32 %1, 4200001
  %26 = icmp ugt i32 %2, 4199999
  %27 = and i1 %25, %26
  br i1 %27, label %39, label %28

28:                                               ; preds = %24
  %29 = add nsw i32 %1, -4000001
  %30 = udiv i32 %29, 20000
  %31 = add nsw i32 %2, -4000000
  %32 = udiv i32 %31, 20000
  %33 = icmp ult i32 %30, %32
  br i1 %33, label %34, label %49

34:                                               ; preds = %28
  %35 = add nuw nsw i32 %30, 2
  %36 = icmp ult i32 %29, 260000
  br i1 %36, label %39, label %37

37:                                               ; preds = %34
  %38 = icmp ugt i32 %31, 279999
  br i1 %38, label %39, label %49

39:                                               ; preds = %37, %34, %24, %22
  %40 = phi i32 [ 1, %22 ], [ 0, %24 ], [ 15, %37 ], [ %35, %34 ]
  store i32 %40, ptr %3, align 4
  %41 = load i32, ptr %5, align 4
  %42 = trunc i32 %41 to i8
  %43 = load i32, ptr %6, align 4
  %44 = shl i32 %40, %43
  %45 = trunc i32 %44 to i8
  %46 = load i32, ptr %7, align 4
  %47 = trunc i32 %46 to i8
  %48 = tail call i32 @max8997_update_reg(ptr noundef %12, i8 noundef zeroext %42, i8 noundef zeroext %45, i8 noundef zeroext %47) #8
  br label %49

49:                                               ; preds = %39, %37, %28, %18, %15, %4
  %50 = phi i32 [ %48, %39 ], [ -22, %4 ], [ %16, %15 ], [ -22, %18 ], [ -22, %28 ], [ -22, %37 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  ret i32 %50
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max8997_set_current_limit(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  %5 = tail call i32 @rdev_get_id(ptr noundef %0) #8
  %6 = add i32 %5, -34
  %7 = icmp ult i32 %6, -2
  br i1 %7, label %10, label %8

8:                                                ; preds = %3
  %9 = call i32 @max8997_set_voltage_ldobuck(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %4)
  br label %10

10:                                               ; preds = %8, %3
  %11 = phi i32 [ %9, %8 ], [ -22, %3 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max8997_get_current_limit(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = tail call i32 @rdev_get_id(ptr noundef %0) #8
  %7 = add i32 %6, -34
  %8 = icmp ult i32 %7, -2
  br i1 %8, label %50, label %9

9:                                                ; preds = %1
  %10 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #8
  %11 = getelementptr inbounds %struct.max8997_data, ptr %10, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.max8997_dev, ptr %12, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  store i32 0, ptr %2, align 4, !annotation !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 0, ptr %3, align 4, !annotation !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  store i32 0, ptr %4, align 4, !annotation !10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #8
  store i8 0, ptr %5, align 1, !annotation !10
  %15 = call fastcc i32 @max8997_get_voltage_register(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4) #8
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %29

17:                                               ; preds = %9
  %18 = load i32, ptr %2, align 4
  %19 = trunc i32 %18 to i8
  %20 = call i32 @max8997_read_reg(ptr noundef %14, i8 noundef zeroext %19, ptr noundef nonnull %5) #8
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %17
  %23 = load i32, ptr %3, align 4
  %24 = load i8, ptr %5, align 1
  %25 = zext i8 %24 to i32
  %26 = lshr i32 %25, %23
  %27 = load i32, ptr %4, align 4
  %28 = and i32 %26, %27
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  br label %32

29:                                               ; preds = %17, %9
  %30 = phi i32 [ %15, %9 ], [ %20, %17 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %50, label %32

32:                                               ; preds = %29, %22
  %33 = phi i32 [ %28, %22 ], [ %30, %29 ]
  %34 = call i32 @rdev_get_id(ptr noundef %0) #8
  %35 = icmp ugt i32 %34, 33
  br i1 %35, label %50, label %36

36:                                               ; preds = %32
  %37 = getelementptr [34 x ptr], ptr @reg_voltage_map, i32 0, i32 %34
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %50, label %40

40:                                               ; preds = %36
  %41 = load i32, ptr %38, align 4
  %42 = getelementptr inbounds %struct.voltage_map_desc, ptr %38, i32 0, i32 2
  %43 = load i32, ptr %42, align 4
  %44 = mul i32 %43, %33
  %45 = add i32 %44, %41
  %46 = getelementptr inbounds %struct.voltage_map_desc, ptr %38, i32 0, i32 1
  %47 = load i32, ptr %46, align 4
  %48 = icmp sgt i32 %45, %47
  %49 = select i1 %48, i32 -22, i32 %45
  br label %50

50:                                               ; preds = %40, %36, %32, %29, %1
  %51 = phi i32 [ -22, %1 ], [ %30, %29 ], [ -22, %32 ], [ -22, %36 ], [ %49, %40 ]
  ret i32 %51
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umax.i8(i8, i8) #7

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{i8 0, i8 2}
!10 = !{!"auto-init"}
