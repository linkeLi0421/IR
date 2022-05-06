; ModuleID = '/llk/IR/drivers/regulator/max8998.c_pt.bc'
source_filename = "../drivers/regulator/max8998.c"
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
%struct.max8998_dev = type { ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, i32, ptr, i32, i32, [4 x i8], [4 x i8], i32, i8 }
%struct.max8998_platform_data = type { ptr, i32, i32, i32, i8, [4 x i32], [2 x i32], i32, i32, i32, i32, i32, i8, i8, i32, i32, i32 }
%struct.max8998_regulator_data = type { i32, ptr, ptr }
%struct.max8998_data = type { ptr, ptr, i32, [4 x i8], [2 x i8], i32, i32 }

@max8998_pmic_id = internal constant [3 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"max8998-pmic\00\00\00\00\00\00\00\00", i32 0 }, %struct.platform_device_id { [20 x i8] c"lp3974-pmic\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.platform_device_id zeroinitializer], align 4
@__UNIQUE_ID_description247 = internal constant [48 x i8] c"description=MAXIM 8998 voltage regulator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author248 = internal constant [49 x i8] c"author=Kyungmin Park <kyungmin.park@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_license249 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@max8998_pmic_driver = internal global %struct.platform_driver { ptr @max8998_pmic_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @max8998_pmic_id, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [13 x i8] c"max8998-pmic\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"No platform init data supplied\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"MAX8998 SET1 GPIO defined as 0 !\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"drivers/regulator/max8998.c\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"MAX8998 SET2 GPIO defined as 0 !\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"MAX8998 BUCK1_SET1\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"MAX8998 BUCK1_SET2\00", align 1
@regulators = internal constant [26 x %struct.regulator_desc] [%struct.regulator_desc { ptr @.str.25, ptr null, ptr null, i8 0, ptr null, ptr null, i32 2, i8 0, i32 11, i32 0, ptr @max8998_ldo_ops, i32 0, i32 0, ptr @__this_module, i32 800000, i32 50000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.26, ptr null, ptr null, i8 0, ptr null, ptr null, i32 3, i8 0, i32 11, i32 0, ptr @max8998_ldo_ops, i32 0, i32 0, ptr @__this_module, i32 800000, i32 50000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.27, ptr null, ptr null, i8 0, ptr null, ptr null, i32 4, i8 0, i32 21, i32 0, ptr @max8998_ldo_ops, i32 0, i32 0, ptr @__this_module, i32 1600000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.28, ptr null, ptr null, i8 0, ptr null, ptr null, i32 5, i8 0, i32 21, i32 0, ptr @max8998_ldo_ops, i32 0, i32 0, ptr @__this_module, i32 1600000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.29, ptr null, ptr null, i8 0, ptr null, ptr null, i32 6, i8 0, i32 21, i32 0, ptr @max8998_ldo_ops, i32 0, i32 0, ptr @__this_module, i32 1600000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.30, ptr null, ptr null, i8 0, ptr null, ptr null, i32 7, i8 0, i32 21, i32 0, ptr @max8998_ldo_ops, i32 0, i32 0, ptr @__this_module, i32 1600000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.31, ptr null, ptr null, i8 0, ptr null, ptr null, i32 8, i8 0, i32 7, i32 0, ptr @max8998_ldo_ops, i32 0, i32 0, ptr @__this_module, i32 3000000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.32, ptr null, ptr null, i8 0, ptr null, ptr null, i32 9, i8 0, i32 4, i32 0, ptr @max8998_ldo_ops, i32 0, i32 0, ptr @__this_module, i32 2800000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.33, ptr null, ptr null, i8 0, ptr null, ptr null, i32 10, i8 0, i32 8, i32 0, ptr @max8998_ldo_ops, i32 0, i32 0, ptr @__this_module, i32 950000, i32 50000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.34, ptr null, ptr null, i8 0, ptr null, ptr null, i32 11, i8 0, i32 21, i32 0, ptr @max8998_ldo_ops, i32 0, i32 0, ptr @__this_module, i32 1600000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.35, ptr null, ptr null, i8 0, ptr null, ptr null, i32 12, i8 0, i32 26, i32 0, ptr @max8998_ldo_ops, i32 0, i32 0, ptr @__this_module, i32 800000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.36, ptr null, ptr null, i8 0, ptr null, ptr null, i32 13, i8 0, i32 26, i32 0, ptr @max8998_ldo_ops, i32 0, i32 0, ptr @__this_module, i32 800000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.37, ptr null, ptr null, i8 0, ptr null, ptr null, i32 14, i8 0, i32 22, i32 0, ptr @max8998_ldo_ops, i32 0, i32 0, ptr @__this_module, i32 1200000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.38, ptr null, ptr null, i8 0, ptr null, ptr null, i32 15, i8 0, i32 22, i32 0, ptr @max8998_ldo_ops, i32 0, i32 0, ptr @__this_module, i32 1200000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.39, ptr null, ptr null, i8 0, ptr null, ptr null, i32 16, i8 0, i32 21, i32 0, ptr @max8998_ldo_ops, i32 0, i32 0, ptr @__this_module, i32 1600000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.40, ptr null, ptr null, i8 0, ptr null, ptr null, i32 17, i8 0, i32 21, i32 0, ptr @max8998_ldo_ops, i32 0, i32 0, ptr @__this_module, i32 1600000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.41, ptr null, ptr null, i8 0, ptr null, ptr null, i32 18, i8 0, i32 32, i32 0, ptr @max8998_buck_ops, i32 0, i32 0, ptr @__this_module, i32 750000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.42, ptr null, ptr null, i8 0, ptr null, ptr null, i32 19, i8 0, i32 32, i32 0, ptr @max8998_buck_ops, i32 0, i32 0, ptr @__this_module, i32 750000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.43, ptr null, ptr null, i8 0, ptr null, ptr null, i32 20, i8 0, i32 21, i32 0, ptr @max8998_buck_ops, i32 0, i32 0, ptr @__this_module, i32 1600000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.44, ptr null, ptr null, i8 0, ptr null, ptr null, i32 21, i8 0, i32 16, i32 0, ptr @max8998_buck_ops, i32 0, i32 0, ptr @__this_module, i32 800000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.45, ptr null, ptr null, i8 0, ptr null, ptr null, i32 22, i8 0, i32 0, i32 0, ptr @max8998_others_ops, i32 0, i32 0, ptr @__this_module, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.46, ptr null, ptr null, i8 0, ptr null, ptr null, i32 23, i8 0, i32 0, i32 0, ptr @max8998_others_ops, i32 0, i32 0, ptr @__this_module, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.47, ptr null, ptr null, i8 0, ptr null, ptr null, i32 24, i8 0, i32 0, i32 0, ptr @max8998_others_ops, i32 0, i32 0, ptr @__this_module, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.48, ptr null, ptr null, i8 0, ptr null, ptr null, i32 25, i8 0, i32 0, i32 0, ptr @max8998_others_ops, i32 0, i32 0, ptr @__this_module, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.49, ptr null, ptr null, i8 0, ptr null, ptr null, i32 26, i8 0, i32 0, i32 0, ptr @max8998_others_ops, i32 0, i32 0, ptr @__this_module, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.50, ptr null, ptr null, i8 0, ptr null, ptr null, i32 27, i8 0, i32 0, i32 8, ptr @max8998_charger_ops, i32 0, i32 1, ptr @__this_module, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr @charger_current_table, i32 0, i32 0, i32 0, i32 0, i32 0, i32 12, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }], align 4
@.str.7 = private unnamed_addr constant [34 x i8] c"MAX8998 SET3 GPIO defined as 0 !\0A\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"MAX8998 BUCK2_SET3\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"regulator %s init failed (%d)\0A\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"regulators\00", align 1
@.str.11 = private unnamed_addr constant [36 x i8] c"could not find regulators sub-node\0A\00", align 1
@.str.12 = private unnamed_addr constant [31 x i8] c"max8998,pmic-buck-voltage-lock\00", align 1
@.str.13 = private unnamed_addr constant [35 x i8] c"max8998,pmic-buck1-default-dvs-idx\00", align 1
@.str.14 = private unnamed_addr constant [54 x i8] c"invalid value for default dvs index, using 0 instead\0A\00", align 1
@.str.15 = private unnamed_addr constant [35 x i8] c"max8998,pmic-buck2-default-dvs-idx\00", align 1
@.str.16 = private unnamed_addr constant [31 x i8] c"max8998,pmic-buck1-dvs-voltage\00", align 1
@.str.17 = private unnamed_addr constant [30 x i8] c"buck1 voltages not specified\0A\00", align 1
@.str.18 = private unnamed_addr constant [31 x i8] c"max8998,pmic-buck2-dvs-voltage\00", align 1
@.str.19 = private unnamed_addr constant [30 x i8] c"buck2 voltages not specified\0A\00", align 1
@.str.20 = private unnamed_addr constant [29 x i8] c"max8998,pmic-buck1-dvs-gpios\00", align 1
@.str.21 = private unnamed_addr constant [27 x i8] c"invalid buck1 gpio[0]: %d\0A\00", align 1
@.str.22 = private unnamed_addr constant [27 x i8] c"invalid buck1 gpio[1]: %d\0A\00", align 1
@.str.23 = private unnamed_addr constant [28 x i8] c"max8998,pmic-buck2-dvs-gpio\00", align 1
@.str.24 = private unnamed_addr constant [25 x i8] c"invalid buck 2 gpio: %d\0A\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"LDO2\00", align 1
@max8998_ldo_ops = internal constant %struct.regulator_ops { ptr @regulator_list_voltage_linear, ptr null, ptr @regulator_map_voltage_linear, ptr @max8998_set_voltage_ldo_sel, ptr null, ptr @max8998_get_voltage_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @max8998_ldo_enable, ptr @max8998_ldo_disable, ptr @max8998_ldo_is_enabled, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.26 = private unnamed_addr constant [5 x i8] c"LDO3\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"LDO4\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"LDO5\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"LDO6\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"LDO7\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"LDO8\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"LDO9\00", align 1
@.str.33 = private unnamed_addr constant [6 x i8] c"LDO10\00", align 1
@.str.34 = private unnamed_addr constant [6 x i8] c"LDO11\00", align 1
@.str.35 = private unnamed_addr constant [6 x i8] c"LDO12\00", align 1
@.str.36 = private unnamed_addr constant [6 x i8] c"LDO13\00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"LDO14\00", align 1
@.str.38 = private unnamed_addr constant [6 x i8] c"LDO15\00", align 1
@.str.39 = private unnamed_addr constant [6 x i8] c"LDO16\00", align 1
@.str.40 = private unnamed_addr constant [6 x i8] c"LDO17\00", align 1
@.str.41 = private unnamed_addr constant [6 x i8] c"BUCK1\00", align 1
@max8998_buck_ops = internal constant %struct.regulator_ops { ptr @regulator_list_voltage_linear, ptr null, ptr @regulator_map_voltage_linear, ptr @max8998_set_voltage_buck_sel, ptr null, ptr @max8998_get_voltage_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @max8998_ldo_enable, ptr @max8998_ldo_disable, ptr @max8998_ldo_is_enabled, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @max8998_set_voltage_buck_time_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.42 = private unnamed_addr constant [6 x i8] c"BUCK2\00", align 1
@.str.43 = private unnamed_addr constant [6 x i8] c"BUCK3\00", align 1
@.str.44 = private unnamed_addr constant [6 x i8] c"BUCK4\00", align 1
@.str.45 = private unnamed_addr constant [11 x i8] c"EN32KHz-AP\00", align 1
@max8998_others_ops = internal constant %struct.regulator_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @max8998_ldo_enable, ptr @max8998_ldo_disable, ptr @max8998_ldo_is_enabled, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.46 = private unnamed_addr constant [11 x i8] c"EN32KHz-CP\00", align 1
@.str.47 = private unnamed_addr constant [8 x i8] c"ENVICHG\00", align 1
@.str.48 = private unnamed_addr constant [10 x i8] c"ESAFEOUT1\00", align 1
@.str.49 = private unnamed_addr constant [10 x i8] c"ESAFEOUT2\00", align 1
@.str.50 = private unnamed_addr constant [8 x i8] c"CHARGER\00", align 1
@max8998_charger_ops = internal constant %struct.regulator_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @max8998_set_current_limit, ptr @max8998_get_current_limit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @max8998_ldo_disable, ptr @max8998_ldo_enable, ptr @max8998_ldo_is_enabled_inverted, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@charger_current_table = internal constant [8 x i32] [i32 90000, i32 380000, i32 475000, i32 550000, i32 570000, i32 600000, i32 700000, i32 800000], align 4
@max8998_set_voltage_buck_sel.buck1_last_val = internal unnamed_addr global i8 0, align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_author248, ptr @__UNIQUE_ID_description247, ptr @__UNIQUE_ID_license249], section "llvm.metadata"
@switch.table.max8998_ldo_is_enabled = private unnamed_addr constant [26 x i8] c"\11\11\11\11\12\12\12\12\12\12\12\12\13\13\13\13\11\11\11\11\14\14\14\0D\0D\0D", align 1
@switch.table.max8998_ldo_is_enabled.53 = private unnamed_addr constant [26 x i32] [i32 3, i32 2, i32 1, i32 0, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0, i32 7, i32 6, i32 5, i32 4, i32 7, i32 6, i32 5, i32 4, i32 7, i32 6, i32 5, i32 7, i32 6, i32 0], align 4

@__mod_platform__max8998_pmic_id_device_table = dso_local alias [3 x %struct.platform_device_id], ptr @max8998_pmic_id

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @max8998_pmic_driver, ptr noundef nonnull @__this_module) #8
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @max8998_pmic_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max8998_pmic_probe(ptr noundef %0) #2 {
  %2 = alloca %struct.regulator_config, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.max8998_dev, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %2, i8 0, i32 24, i1 false)
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.1) #9
  br label %301

12:                                               ; preds = %1
  %13 = load ptr, ptr %7, align 4
  %14 = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 25
  %15 = load ptr, ptr %14, align 8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %120, label %17

17:                                               ; preds = %12
  %18 = tail call ptr @of_get_child_by_name(ptr noundef nonnull %15, ptr noundef nonnull @.str.10) #8
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = load ptr, ptr %7, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.11) #9
  br label %301

22:                                               ; preds = %17
  %23 = tail call ptr @of_get_next_child(ptr noundef nonnull %18, ptr noundef null) #8
  %24 = icmp eq ptr %23, null
  br i1 %24, label %31, label %25

25:                                               ; preds = %25, %22
  %26 = phi i32 [ %28, %25 ], [ 0, %22 ]
  %27 = phi ptr [ %29, %25 ], [ %23, %22 ]
  %28 = add i32 %26, 1
  %29 = tail call ptr @of_get_next_child(ptr noundef nonnull %18, ptr noundef nonnull %27) #8
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %25

31:                                               ; preds = %25, %22
  %32 = phi i32 [ 0, %22 ], [ %28, %25 ]
  %33 = getelementptr inbounds %struct.max8998_platform_data, ptr %9, i32 0, i32 1
  store i32 %32, ptr %33, align 4
  %34 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %32, i32 12) #8
  %35 = extractvalue { i32, i1 } %34, 1
  br i1 %35, label %41, label %36, !prof !8

36:                                               ; preds = %31
  %37 = load ptr, ptr %7, align 4
  %38 = extractvalue { i32, i1 } %34, 0
  %39 = tail call noalias ptr @devm_kmalloc(ptr noundef %37, i32 noundef %38, i32 noundef 3520) #8
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %36, %31
  tail call void @of_node_put(ptr noundef nonnull %18) #8
  br label %301

42:                                               ; preds = %36
  store ptr %39, ptr %9, align 4
  br label %43

43:                                               ; preds = %58, %42
  %44 = phi i32 [ 0, %42 ], [ %60, %58 ]
  %45 = phi ptr [ %39, %42 ], [ %59, %58 ]
  %46 = getelementptr [26 x %struct.regulator_desc], ptr @regulators, i32 0, i32 %44
  %47 = load ptr, ptr %46, align 4
  %48 = tail call ptr @of_get_child_by_name(ptr noundef nonnull %18, ptr noundef %47) #8
  %49 = icmp eq ptr %48, null
  br i1 %49, label %58, label %50

50:                                               ; preds = %43
  %51 = getelementptr [26 x %struct.regulator_desc], ptr @regulators, i32 0, i32 %44, i32 6
  %52 = load i32, ptr %51, align 4
  store i32 %52, ptr %45, align 4
  %53 = load ptr, ptr %7, align 4
  %54 = tail call ptr @of_get_regulator_init_data(ptr noundef %53, ptr noundef nonnull %48, ptr noundef %46) #8
  %55 = getelementptr inbounds %struct.max8998_regulator_data, ptr %45, i32 0, i32 1
  store ptr %54, ptr %55, align 4
  %56 = getelementptr inbounds %struct.max8998_regulator_data, ptr %45, i32 0, i32 2
  store ptr %48, ptr %56, align 4
  %57 = getelementptr %struct.max8998_regulator_data, ptr %45, i32 1
  br label %58

58:                                               ; preds = %50, %43
  %59 = phi ptr [ %57, %50 ], [ %45, %43 ]
  %60 = add nuw nsw i32 %44, 1
  %61 = icmp eq i32 %60, 26
  br i1 %61, label %62, label %43

62:                                               ; preds = %58
  %63 = load ptr, ptr %9, align 4
  %64 = ptrtoint ptr %59 to i32
  %65 = ptrtoint ptr %63 to i32
  %66 = sub i32 %64, %65
  %67 = sdiv exact i32 %66, 12
  store i32 %67, ptr %33, align 4
  tail call void @of_node_put(ptr noundef %48) #8
  tail call void @of_node_put(ptr noundef nonnull %18) #8
  %68 = tail call i32 @of_get_named_gpio_flags(ptr noundef nonnull %15, ptr noundef nonnull @.str.20, i32 noundef 0, ptr noundef null) #8
  %69 = icmp ult i32 %68, 2048
  br i1 %69, label %72, label %70

70:                                               ; preds = %62
  %71 = load ptr, ptr %7, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %71, ptr noundef nonnull @.str.21, i32 noundef %68) #9
  br label %301

72:                                               ; preds = %62
  %73 = getelementptr inbounds %struct.max8998_platform_data, ptr %9, i32 0, i32 7
  store i32 %68, ptr %73, align 4
  %74 = tail call i32 @of_get_named_gpio_flags(ptr noundef nonnull %15, ptr noundef nonnull @.str.20, i32 noundef 1, ptr noundef null) #8
  %75 = icmp ult i32 %74, 2048
  br i1 %75, label %78, label %76

76:                                               ; preds = %72
  %77 = load ptr, ptr %7, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %77, ptr noundef nonnull @.str.22, i32 noundef %74) #9
  br label %301

78:                                               ; preds = %72
  %79 = getelementptr inbounds %struct.max8998_platform_data, ptr %9, i32 0, i32 8
  store i32 %74, ptr %79, align 4
  %80 = tail call i32 @of_get_named_gpio_flags(ptr noundef nonnull %15, ptr noundef nonnull @.str.23, i32 noundef 0, ptr noundef null) #8
  %81 = icmp ult i32 %80, 2048
  br i1 %81, label %84, label %82

82:                                               ; preds = %78
  %83 = load ptr, ptr %7, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %83, ptr noundef nonnull @.str.24, i32 noundef %80) #9
  br label %301

84:                                               ; preds = %78
  %85 = getelementptr inbounds %struct.max8998_platform_data, ptr %9, i32 0, i32 10
  store i32 %80, ptr %85, align 4
  %86 = tail call ptr @of_find_property(ptr noundef nonnull %15, ptr noundef nonnull @.str.12, ptr noundef null) #8
  %87 = icmp eq ptr %86, null
  br i1 %87, label %90, label %88

88:                                               ; preds = %84
  %89 = getelementptr inbounds %struct.max8998_platform_data, ptr %9, i32 0, i32 4
  store i8 1, ptr %89, align 4
  br label %90

90:                                               ; preds = %88, %84
  %91 = getelementptr inbounds %struct.max8998_platform_data, ptr %9, i32 0, i32 9
  %92 = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %15, ptr noundef nonnull @.str.13, ptr noundef %91, i32 noundef 1, i32 noundef 0) #8
  %93 = icmp sgt i32 %92, -1
  br i1 %93, label %94, label %99

94:                                               ; preds = %90
  %95 = load i32, ptr %91, align 4
  %96 = icmp sgt i32 %95, 3
  br i1 %96, label %97, label %99

97:                                               ; preds = %94
  store i32 0, ptr %91, align 4
  %98 = load ptr, ptr %7, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %98, ptr noundef nonnull @.str.14) #9
  br label %99

99:                                               ; preds = %97, %94, %90
  %100 = getelementptr inbounds %struct.max8998_platform_data, ptr %9, i32 0, i32 11
  %101 = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %15, ptr noundef nonnull @.str.15, ptr noundef %100, i32 noundef 1, i32 noundef 0) #8
  %102 = icmp sgt i32 %101, -1
  br i1 %102, label %103, label %108

103:                                              ; preds = %99
  %104 = load i32, ptr %100, align 4
  %105 = icmp sgt i32 %104, 1
  br i1 %105, label %106, label %108

106:                                              ; preds = %103
  store i32 0, ptr %100, align 4
  %107 = load ptr, ptr %7, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %107, ptr noundef nonnull @.str.14) #9
  br label %108

108:                                              ; preds = %106, %103, %99
  %109 = getelementptr inbounds %struct.max8998_platform_data, ptr %9, i32 0, i32 5
  %110 = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %15, ptr noundef nonnull @.str.16, ptr noundef %109, i32 noundef 4, i32 noundef 0) #8
  %111 = icmp sgt i32 %110, -1
  br i1 %111, label %114, label %112

112:                                              ; preds = %108
  %113 = load ptr, ptr %7, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %113, ptr noundef nonnull @.str.17) #9
  br label %301

114:                                              ; preds = %108
  %115 = getelementptr inbounds %struct.max8998_platform_data, ptr %9, i32 0, i32 6
  %116 = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %15, ptr noundef nonnull @.str.18, ptr noundef %115, i32 noundef 2, i32 noundef 0) #8
  %117 = icmp sgt i32 %116, -1
  br i1 %117, label %120, label %118

118:                                              ; preds = %114
  %119 = load ptr, ptr %7, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %119, ptr noundef nonnull @.str.19) #9
  br label %301

120:                                              ; preds = %114, %12
  %121 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 28, i32 noundef 3520) #8
  %122 = icmp eq ptr %121, null
  br i1 %122, label %301, label %123

123:                                              ; preds = %120
  store ptr %3, ptr %121, align 4
  %124 = getelementptr inbounds %struct.max8998_data, ptr %121, i32 0, i32 1
  store ptr %7, ptr %124, align 4
  %125 = getelementptr inbounds %struct.max8998_platform_data, ptr %9, i32 0, i32 1
  %126 = load i32, ptr %125, align 4
  %127 = getelementptr inbounds %struct.max8998_data, ptr %121, i32 0, i32 2
  store i32 %126, ptr %127, align 4
  %128 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %121, ptr %128, align 8
  %129 = getelementptr inbounds %struct.max8998_dev, ptr %7, i32 0, i32 2
  %130 = load ptr, ptr %129, align 4
  %131 = getelementptr inbounds %struct.max8998_platform_data, ptr %9, i32 0, i32 9
  %132 = load i32, ptr %131, align 4
  %133 = getelementptr inbounds %struct.max8998_data, ptr %121, i32 0, i32 5
  store i32 %132, ptr %133, align 4
  %134 = getelementptr inbounds %struct.max8998_platform_data, ptr %9, i32 0, i32 11
  %135 = load i32, ptr %134, align 4
  %136 = getelementptr inbounds %struct.max8998_data, ptr %121, i32 0, i32 6
  store i32 %135, ptr %136, align 4
  %137 = getelementptr inbounds %struct.max8998_platform_data, ptr %9, i32 0, i32 7
  %138 = load i32, ptr %137, align 4
  %139 = icmp ult i32 %138, 2048
  br i1 %139, label %140, label %226

140:                                              ; preds = %123
  %141 = getelementptr inbounds %struct.max8998_platform_data, ptr %9, i32 0, i32 8
  %142 = load i32, ptr %141, align 4
  %143 = icmp ult i32 %142, 2048
  br i1 %143, label %144, label %226

144:                                              ; preds = %140
  %145 = icmp eq i32 %138, 0
  br i1 %145, label %146, label %150

146:                                              ; preds = %144
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.2) #9
  %147 = load i32, ptr %137, align 4
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %149, label %301, !prof !8

149:                                              ; preds = %146
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 708, i32 noundef 9, ptr noundef null) #8
  br label %301

150:                                              ; preds = %144
  %151 = icmp eq i32 %142, 0
  br i1 %151, label %152, label %156

152:                                              ; preds = %150
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.4) #9
  %153 = load i32, ptr %141, align 4
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %301, !prof !8

155:                                              ; preds = %152
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 715, i32 noundef 9, ptr noundef null) #8
  br label %301

156:                                              ; preds = %150
  %157 = tail call i32 @gpio_request(i32 noundef %138, ptr noundef nonnull @.str.5) #8
  %158 = load i32, ptr %137, align 4
  %159 = load i32, ptr %133, align 4
  %160 = and i32 %159, 1
  %161 = tail call ptr @gpio_to_desc(i32 noundef %158) #8
  %162 = tail call i32 @gpiod_direction_output_raw(ptr noundef %161, i32 noundef %160) #8
  %163 = load i32, ptr %141, align 4
  %164 = tail call i32 @gpio_request(i32 noundef %163, ptr noundef nonnull @.str.6) #8
  %165 = load i32, ptr %141, align 4
  %166 = load i32, ptr %133, align 4
  %167 = lshr i32 %166, 1
  %168 = and i32 %167, 1
  %169 = tail call ptr @gpio_to_desc(i32 noundef %165) #8
  %170 = tail call i32 @gpiod_direction_output_raw(ptr noundef %169, i32 noundef %168) #8
  %171 = getelementptr %struct.max8998_platform_data, ptr %9, i32 0, i32 5, i32 0
  %172 = load i32, ptr %171, align 4
  br label %215

173:                                              ; preds = %221
  %174 = getelementptr %struct.max8998_platform_data, ptr %9, i32 0, i32 5, i32 1
  %175 = load i32, ptr %174, align 4
  br label %176

176:                                              ; preds = %176, %173
  %177 = phi i32 [ %181, %176 ], [ 0, %173 ]
  %178 = mul i32 %177, 25000
  %179 = add i32 %178, 750000
  %180 = icmp ult i32 %179, %175
  %181 = add i32 %177, 1
  br i1 %180, label %176, label %182

182:                                              ; preds = %176
  %183 = trunc i32 %177 to i8
  %184 = getelementptr %struct.max8998_data, ptr %121, i32 0, i32 3, i32 1
  store i8 %183, ptr %184, align 1
  %185 = tail call i32 @max8998_write_reg(ptr noundef %130, i8 noundef zeroext 22, i8 noundef zeroext %183) #8
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %187, label %301

187:                                              ; preds = %182
  %188 = getelementptr %struct.max8998_platform_data, ptr %9, i32 0, i32 5, i32 2
  %189 = load i32, ptr %188, align 4
  br label %190

190:                                              ; preds = %190, %187
  %191 = phi i32 [ %195, %190 ], [ 0, %187 ]
  %192 = mul i32 %191, 25000
  %193 = add i32 %192, 750000
  %194 = icmp ult i32 %193, %189
  %195 = add i32 %191, 1
  br i1 %194, label %190, label %196

196:                                              ; preds = %190
  %197 = trunc i32 %191 to i8
  %198 = getelementptr %struct.max8998_data, ptr %121, i32 0, i32 3, i32 2
  store i8 %197, ptr %198, align 1
  %199 = tail call i32 @max8998_write_reg(ptr noundef %130, i8 noundef zeroext 23, i8 noundef zeroext %197) #8
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %201, label %301

201:                                              ; preds = %196
  %202 = getelementptr %struct.max8998_platform_data, ptr %9, i32 0, i32 5, i32 3
  %203 = load i32, ptr %202, align 4
  br label %204

204:                                              ; preds = %204, %201
  %205 = phi i32 [ %209, %204 ], [ 0, %201 ]
  %206 = mul i32 %205, 25000
  %207 = add i32 %206, 750000
  %208 = icmp ult i32 %207, %203
  %209 = add i32 %205, 1
  br i1 %208, label %204, label %210

210:                                              ; preds = %204
  %211 = trunc i32 %205 to i8
  %212 = getelementptr %struct.max8998_data, ptr %121, i32 0, i32 3, i32 3
  store i8 %211, ptr %212, align 1
  %213 = tail call i32 @max8998_write_reg(ptr noundef %130, i8 noundef zeroext 24, i8 noundef zeroext %211) #8
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %226, label %301

215:                                              ; preds = %215, %156
  %216 = phi i32 [ %220, %215 ], [ 0, %156 ]
  %217 = mul i32 %216, 25000
  %218 = add i32 %217, 750000
  %219 = icmp ult i32 %218, %172
  %220 = add i32 %216, 1
  br i1 %219, label %215, label %221

221:                                              ; preds = %215
  %222 = trunc i32 %216 to i8
  %223 = getelementptr %struct.max8998_data, ptr %121, i32 0, i32 3, i32 0
  store i8 %222, ptr %223, align 1
  %224 = tail call i32 @max8998_write_reg(ptr noundef %130, i8 noundef zeroext 21, i8 noundef zeroext %222) #8
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %173, label %301

226:                                              ; preds = %210, %140, %123
  %227 = getelementptr inbounds %struct.max8998_platform_data, ptr %9, i32 0, i32 10
  %228 = load i32, ptr %227, align 4
  %229 = icmp ult i32 %228, 2048
  br i1 %229, label %230, label %270

230:                                              ; preds = %226
  %231 = icmp eq i32 %228, 0
  br i1 %231, label %232, label %236

232:                                              ; preds = %230
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.7) #9
  %233 = load i32, ptr %227, align 4
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %235, label %301, !prof !8

235:                                              ; preds = %232
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 751, i32 noundef 9, ptr noundef null) #8
  br label %301

236:                                              ; preds = %230
  %237 = tail call i32 @gpio_request(i32 noundef %228, ptr noundef nonnull @.str.8) #8
  %238 = load i32, ptr %227, align 4
  %239 = load i32, ptr %136, align 4
  %240 = and i32 %239, 1
  %241 = tail call ptr @gpio_to_desc(i32 noundef %238) #8
  %242 = tail call i32 @gpiod_direction_output_raw(ptr noundef %241, i32 noundef %240) #8
  %243 = getelementptr %struct.max8998_platform_data, ptr %9, i32 0, i32 6, i32 0
  %244 = load i32, ptr %243, align 4
  br label %259

245:                                              ; preds = %265
  %246 = getelementptr %struct.max8998_platform_data, ptr %9, i32 0, i32 6, i32 1
  %247 = load i32, ptr %246, align 4
  br label %248

248:                                              ; preds = %248, %245
  %249 = phi i32 [ %253, %248 ], [ 0, %245 ]
  %250 = mul i32 %249, 25000
  %251 = add i32 %250, 750000
  %252 = icmp ult i32 %251, %247
  %253 = add i32 %249, 1
  br i1 %252, label %248, label %254

254:                                              ; preds = %248
  %255 = trunc i32 %249 to i8
  %256 = getelementptr %struct.max8998_data, ptr %121, i32 0, i32 4, i32 1
  store i8 %255, ptr %256, align 1
  %257 = tail call i32 @max8998_write_reg(ptr noundef %130, i8 noundef zeroext 26, i8 noundef zeroext %255) #8
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %270, label %301

259:                                              ; preds = %259, %236
  %260 = phi i32 [ %264, %259 ], [ 0, %236 ]
  %261 = mul i32 %260, 25000
  %262 = add i32 %261, 750000
  %263 = icmp ult i32 %262, %244
  %264 = add i32 %260, 1
  br i1 %263, label %259, label %265

265:                                              ; preds = %259
  %266 = trunc i32 %260 to i8
  %267 = getelementptr %struct.max8998_data, ptr %121, i32 0, i32 4, i32 0
  store i8 %266, ptr %267, align 1
  %268 = tail call i32 @max8998_write_reg(ptr noundef %130, i8 noundef zeroext 25, i8 noundef zeroext %266) #8
  %269 = icmp eq i32 %268, 0
  br i1 %269, label %245, label %301

270:                                              ; preds = %254, %226
  %271 = load i32, ptr %125, align 4
  %272 = icmp sgt i32 %271, 0
  br i1 %272, label %273, label %301

273:                                              ; preds = %270
  %274 = getelementptr inbounds %struct.regulator_config, ptr %2, i32 0, i32 3
  %275 = getelementptr inbounds %struct.regulator_config, ptr %2, i32 0, i32 1
  %276 = getelementptr inbounds %struct.regulator_config, ptr %2, i32 0, i32 2
  br label %281

277:                                              ; preds = %281
  %278 = add nuw nsw i32 %282, 1
  %279 = load i32, ptr %125, align 4
  %280 = icmp slt i32 %278, %279
  br i1 %280, label %281, label %301

281:                                              ; preds = %277, %273
  %282 = phi i32 [ 0, %273 ], [ %278, %277 ]
  %283 = load ptr, ptr %9, align 4
  %284 = getelementptr %struct.max8998_regulator_data, ptr %283, i32 %282
  %285 = load i32, ptr %284, align 4
  %286 = add i32 %285, -2
  %287 = load ptr, ptr %121, align 4
  store ptr %287, ptr %2, align 4
  %288 = load ptr, ptr %9, align 4
  %289 = getelementptr %struct.max8998_regulator_data, ptr %288, i32 %282, i32 2
  %290 = load ptr, ptr %289, align 4
  store ptr %290, ptr %274, align 4
  %291 = load ptr, ptr %9, align 4
  %292 = getelementptr %struct.max8998_regulator_data, ptr %291, i32 %282, i32 1
  %293 = load ptr, ptr %292, align 4
  store ptr %293, ptr %275, align 4
  store ptr %121, ptr %276, align 4
  %294 = getelementptr [26 x %struct.regulator_desc], ptr @regulators, i32 0, i32 %286
  %295 = call ptr @devm_regulator_register(ptr noundef %3, ptr noundef %294, ptr noundef nonnull %2) #8
  %296 = icmp ugt ptr %295, inttoptr (i32 -4096 to ptr)
  br i1 %296, label %297, label %277

297:                                              ; preds = %281
  %298 = ptrtoint ptr %295 to i32
  %299 = load ptr, ptr %121, align 4
  %300 = load ptr, ptr %294, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %299, ptr noundef nonnull @.str.9, ptr noundef %300, i32 noundef %298) #9
  br label %301

301:                                              ; preds = %297, %277, %270, %265, %254, %235, %232, %221, %210, %196, %182, %155, %152, %149, %146, %120, %118, %112, %82, %76, %70, %41, %20, %11
  %302 = phi i32 [ -19, %11 ], [ -12, %120 ], [ -5, %149 ], [ -5, %146 ], [ -5, %155 ], [ -5, %152 ], [ -5, %235 ], [ -5, %232 ], [ %298, %297 ], [ -22, %70 ], [ -22, %76 ], [ -22, %82 ], [ -22, %20 ], [ -12, %41 ], [ -22, %118 ], [ -22, %112 ], [ 0, %270 ], [ %268, %265 ], [ %257, %254 ], [ %224, %221 ], [ %185, %182 ], [ %199, %196 ], [ %213, %210 ], [ 0, %277 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #8
  ret i32 %302
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpio_request(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @max8998_write_reg(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_regulator_init_data(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_list_voltage_linear(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_map_voltage_linear(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max8998_set_voltage_ldo_sel(ptr noundef %0, i32 noundef %1) #2 {
  %3 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #8
  %4 = getelementptr inbounds %struct.max8998_data, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.max8998_dev, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @rdev_get_id(ptr noundef %0) #8
  %9 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #8
  switch i32 %8, label %39 [
    i32 21, label %28
    i32 20, label %27
    i32 4, label %11
    i32 5, label %11
    i32 6, label %11
    i32 7, label %11
    i32 3, label %10
    i32 2, label %29
    i32 9, label %14
    i32 8, label %13
    i32 12, label %17
    i32 13, label %17
    i32 14, label %17
    i32 15, label %17
    i32 16, label %17
    i32 17, label %17
    i32 18, label %19
    i32 19, label %23
    i32 10, label %15
    i32 11, label %16
  ]

10:                                               ; preds = %2
  br label %29

11:                                               ; preds = %2, %2, %2, %2
  %12 = add nuw nsw i32 %8, 26
  br label %29

13:                                               ; preds = %2
  br label %29

14:                                               ; preds = %2
  br label %29

15:                                               ; preds = %2
  br label %29

16:                                               ; preds = %2
  br label %29

17:                                               ; preds = %2, %2, %2, %2, %2, %2
  %18 = add nuw nsw i32 %8, 24
  br label %29

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.max8998_data, ptr %9, i32 0, i32 5
  %21 = load i32, ptr %20, align 4
  %22 = add i32 %21, 21
  br label %29

23:                                               ; preds = %2
  %24 = getelementptr inbounds %struct.max8998_data, ptr %9, i32 0, i32 6
  %25 = load i32, ptr %24, align 4
  %26 = add i32 %25, 25
  br label %29

27:                                               ; preds = %2
  br label %29

28:                                               ; preds = %2
  br label %29

29:                                               ; preds = %28, %27, %23, %19, %17, %16, %15, %14, %13, %11, %10, %2
  %30 = phi i32 [ 28, %28 ], [ 27, %27 ], [ %26, %23 ], [ %22, %19 ], [ %18, %17 ], [ 35, %15 ], [ 35, %16 ], [ 34, %13 ], [ 34, %14 ], [ %12, %11 ], [ 29, %10 ], [ 29, %2 ]
  %31 = phi i32 [ 0, %28 ], [ 0, %27 ], [ 0, %23 ], [ 0, %19 ], [ 0, %17 ], [ 5, %15 ], [ 0, %16 ], [ 4, %13 ], [ 0, %14 ], [ 0, %11 ], [ 0, %10 ], [ 4, %2 ]
  %32 = phi i32 [ 255, %28 ], [ 255, %27 ], [ 255, %23 ], [ 255, %19 ], [ 255, %17 ], [ 7, %15 ], [ 31, %16 ], [ 15, %13 ], [ 15, %14 ], [ 255, %11 ], [ 15, %10 ], [ 15, %2 ]
  %33 = trunc i32 %30 to i8
  %34 = shl i32 %1, %31
  %35 = trunc i32 %34 to i8
  %36 = shl nuw nsw i32 %32, %31
  %37 = trunc i32 %36 to i8
  %38 = tail call i32 @max8998_update_reg(ptr noundef %7, i8 noundef zeroext %33, i8 noundef zeroext %35, i8 noundef zeroext %37) #8
  br label %39

39:                                               ; preds = %29, %2
  %40 = phi i32 [ %38, %29 ], [ -22, %2 ]
  ret i32 %40
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max8998_get_voltage_sel(ptr noundef %0) #2 {
  %2 = alloca i8, align 1
  %3 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #8
  %4 = getelementptr inbounds %struct.max8998_data, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.max8998_dev, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #8
  store i8 0, ptr %2, align 1, !annotation !9
  %8 = tail call i32 @rdev_get_id(ptr noundef %0) #8
  %9 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #8
  switch i32 %8, label %41 [
    i32 21, label %28
    i32 20, label %27
    i32 4, label %11
    i32 5, label %11
    i32 6, label %11
    i32 7, label %11
    i32 3, label %10
    i32 2, label %29
    i32 9, label %14
    i32 8, label %13
    i32 12, label %17
    i32 13, label %17
    i32 14, label %17
    i32 15, label %17
    i32 16, label %17
    i32 17, label %17
    i32 18, label %19
    i32 19, label %23
    i32 10, label %15
    i32 11, label %16
  ]

10:                                               ; preds = %1
  br label %29

11:                                               ; preds = %1, %1, %1, %1
  %12 = add nuw nsw i32 %8, 26
  br label %29

13:                                               ; preds = %1
  br label %29

14:                                               ; preds = %1
  br label %29

15:                                               ; preds = %1
  br label %29

16:                                               ; preds = %1
  br label %29

17:                                               ; preds = %1, %1, %1, %1, %1, %1
  %18 = add nuw nsw i32 %8, 24
  br label %29

19:                                               ; preds = %1
  %20 = getelementptr inbounds %struct.max8998_data, ptr %9, i32 0, i32 5
  %21 = load i32, ptr %20, align 4
  %22 = add i32 %21, 21
  br label %29

23:                                               ; preds = %1
  %24 = getelementptr inbounds %struct.max8998_data, ptr %9, i32 0, i32 6
  %25 = load i32, ptr %24, align 4
  %26 = add i32 %25, 25
  br label %29

27:                                               ; preds = %1
  br label %29

28:                                               ; preds = %1
  br label %29

29:                                               ; preds = %28, %27, %23, %19, %17, %16, %15, %14, %13, %11, %10, %1
  %30 = phi i32 [ 28, %28 ], [ 27, %27 ], [ %26, %23 ], [ %22, %19 ], [ %18, %17 ], [ 35, %15 ], [ 35, %16 ], [ 34, %13 ], [ 34, %14 ], [ %12, %11 ], [ 29, %10 ], [ 29, %1 ]
  %31 = phi i32 [ 0, %28 ], [ 0, %27 ], [ 0, %23 ], [ 0, %19 ], [ 0, %17 ], [ 5, %15 ], [ 0, %16 ], [ 4, %13 ], [ 0, %14 ], [ 0, %11 ], [ 0, %10 ], [ 4, %1 ]
  %32 = phi i32 [ 255, %28 ], [ 255, %27 ], [ 255, %23 ], [ 255, %19 ], [ 255, %17 ], [ 7, %15 ], [ 31, %16 ], [ 15, %13 ], [ 15, %14 ], [ 255, %11 ], [ 15, %10 ], [ 15, %1 ]
  %33 = trunc i32 %30 to i8
  %34 = call i32 @max8998_read_reg(ptr noundef %7, i8 noundef zeroext %33, ptr noundef nonnull %2) #8
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %29
  %37 = load i8, ptr %2, align 1
  %38 = zext i8 %37 to i32
  %39 = lshr i32 %38, %31
  %40 = and i32 %39, %32
  br label %41

41:                                               ; preds = %36, %29, %1
  %42 = phi i32 [ %40, %36 ], [ %34, %29 ], [ -22, %1 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #8
  ret i32 %42
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max8998_ldo_enable(ptr noundef %0) #2 {
  %2 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #8
  %3 = getelementptr inbounds %struct.max8998_data, ptr %2, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.max8998_dev, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @rdev_get_id(ptr noundef %0) #8
  %8 = add i32 %7, -2
  %9 = icmp ult i32 %8, 26
  br i1 %9, label %10, label %18

10:                                               ; preds = %1
  %11 = getelementptr inbounds [26 x i8], ptr @switch.table.max8998_ldo_is_enabled, i32 0, i32 %8
  %12 = load i8, ptr %11, align 1
  %13 = getelementptr inbounds [26 x i32], ptr @switch.table.max8998_ldo_is_enabled.53, i32 0, i32 %8
  %14 = load i32, ptr %13, align 4
  %15 = shl nuw nsw i32 1, %14
  %16 = trunc i32 %15 to i8
  %17 = tail call i32 @max8998_update_reg(ptr noundef %6, i8 noundef zeroext %12, i8 noundef zeroext %16, i8 noundef zeroext %16) #8
  br label %18

18:                                               ; preds = %10, %1
  %19 = phi i32 [ %17, %10 ], [ -22, %1 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max8998_ldo_disable(ptr noundef %0) #2 {
  %2 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #8
  %3 = getelementptr inbounds %struct.max8998_data, ptr %2, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.max8998_dev, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @rdev_get_id(ptr noundef %0) #8
  %8 = add i32 %7, -2
  %9 = icmp ult i32 %8, 26
  br i1 %9, label %10, label %18

10:                                               ; preds = %1
  %11 = getelementptr inbounds [26 x i8], ptr @switch.table.max8998_ldo_is_enabled, i32 0, i32 %8
  %12 = load i8, ptr %11, align 1
  %13 = getelementptr inbounds [26 x i32], ptr @switch.table.max8998_ldo_is_enabled.53, i32 0, i32 %8
  %14 = load i32, ptr %13, align 4
  %15 = shl nuw nsw i32 1, %14
  %16 = trunc i32 %15 to i8
  %17 = tail call i32 @max8998_update_reg(ptr noundef %6, i8 noundef zeroext %12, i8 noundef zeroext 0, i8 noundef zeroext %16) #8
  br label %18

18:                                               ; preds = %10, %1
  %19 = phi i32 [ %17, %10 ], [ -22, %1 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max8998_ldo_is_enabled(ptr noundef %0) #2 {
  %2 = alloca i8, align 1
  %3 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #8
  %4 = getelementptr inbounds %struct.max8998_data, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.max8998_dev, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #8
  store i8 0, ptr %2, align 1, !annotation !9
  %8 = tail call i32 @rdev_get_id(ptr noundef %0) #8
  %9 = add i32 %8, -2
  %10 = icmp ult i32 %9, 26
  br i1 %10, label %11, label %23

11:                                               ; preds = %1
  %12 = getelementptr inbounds [26 x i8], ptr @switch.table.max8998_ldo_is_enabled, i32 0, i32 %9
  %13 = load i8, ptr %12, align 1
  %14 = getelementptr inbounds [26 x i32], ptr @switch.table.max8998_ldo_is_enabled.53, i32 0, i32 %9
  %15 = load i32, ptr %14, align 4
  %16 = call i32 @max8998_read_reg(ptr noundef %7, i8 noundef zeroext %13, ptr noundef nonnull %2) #8
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %11
  %19 = load i8, ptr %2, align 1
  %20 = zext i8 %19 to i32
  %21 = shl nuw nsw i32 1, %15
  %22 = and i32 %21, %20
  br label %23

23:                                               ; preds = %18, %11, %1
  %24 = phi i32 [ %22, %18 ], [ %16, %11 ], [ -22, %1 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #8
  ret i32 %24
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @max8998_get_voltage_register(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) unnamed_addr #2 {
  %5 = tail call i32 @rdev_get_id(ptr noundef %0) #8
  %6 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #8
  switch i32 %5, label %30 [
    i32 21, label %25
    i32 20, label %24
    i32 4, label %8
    i32 5, label %8
    i32 6, label %8
    i32 7, label %8
    i32 3, label %7
    i32 2, label %26
    i32 9, label %11
    i32 8, label %10
    i32 12, label %14
    i32 13, label %14
    i32 14, label %14
    i32 15, label %14
    i32 16, label %14
    i32 17, label %14
    i32 18, label %16
    i32 19, label %20
    i32 10, label %12
    i32 11, label %13
  ]

7:                                                ; preds = %4
  br label %26

8:                                                ; preds = %4, %4, %4, %4
  %9 = add nuw nsw i32 %5, 26
  br label %26

10:                                               ; preds = %4
  br label %26

11:                                               ; preds = %4
  br label %26

12:                                               ; preds = %4
  br label %26

13:                                               ; preds = %4
  br label %26

14:                                               ; preds = %4, %4, %4, %4, %4, %4
  %15 = add nuw nsw i32 %5, 24
  br label %26

16:                                               ; preds = %4
  %17 = getelementptr inbounds %struct.max8998_data, ptr %6, i32 0, i32 5
  %18 = load i32, ptr %17, align 4
  %19 = add i32 %18, 21
  br label %26

20:                                               ; preds = %4
  %21 = getelementptr inbounds %struct.max8998_data, ptr %6, i32 0, i32 6
  %22 = load i32, ptr %21, align 4
  %23 = add i32 %22, 25
  br label %26

24:                                               ; preds = %4
  br label %26

25:                                               ; preds = %4
  br label %26

26:                                               ; preds = %25, %24, %20, %16, %14, %13, %12, %11, %10, %8, %7, %4
  %27 = phi i32 [ 28, %25 ], [ 27, %24 ], [ %23, %20 ], [ %19, %16 ], [ %15, %14 ], [ 35, %12 ], [ 35, %13 ], [ 34, %10 ], [ 34, %11 ], [ %9, %8 ], [ 29, %7 ], [ 29, %4 ]
  %28 = phi i32 [ 0, %25 ], [ 0, %24 ], [ 0, %20 ], [ 0, %16 ], [ 0, %14 ], [ 5, %12 ], [ 0, %13 ], [ 4, %10 ], [ 0, %11 ], [ 0, %8 ], [ 0, %7 ], [ 4, %4 ]
  %29 = phi i32 [ 255, %25 ], [ 255, %24 ], [ 255, %20 ], [ 255, %16 ], [ 255, %14 ], [ 7, %12 ], [ 31, %13 ], [ 15, %10 ], [ 15, %11 ], [ 255, %8 ], [ 15, %7 ], [ 15, %4 ]
  store i32 %27, ptr %1, align 4
  store i32 %28, ptr %2, align 4
  store i32 %29, ptr %3, align 4
  br label %30

30:                                               ; preds = %26, %4
  %31 = phi i32 [ 0, %26 ], [ -22, %4 ]
  ret i32 %31
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @max8998_update_reg(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdev_get_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @max8998_read_reg(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max8998_set_voltage_buck_sel(ptr noundef %0, i32 noundef %1) #2 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #8
  %7 = getelementptr inbounds %struct.max8998_data, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.max8998_dev, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.max8998_dev, ptr %8, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 @rdev_get_id(ptr noundef %0) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  %14 = tail call i32 @rdev_get_id(ptr noundef %0) #8
  %15 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #8
  switch i32 %14, label %144 [
    i32 21, label %34
    i32 20, label %33
    i32 4, label %17
    i32 5, label %17
    i32 6, label %17
    i32 7, label %17
    i32 3, label %16
    i32 2, label %35
    i32 9, label %20
    i32 8, label %19
    i32 12, label %23
    i32 13, label %23
    i32 14, label %23
    i32 15, label %23
    i32 16, label %23
    i32 17, label %23
    i32 18, label %25
    i32 19, label %29
    i32 10, label %21
    i32 11, label %22
  ]

16:                                               ; preds = %2
  br label %35

17:                                               ; preds = %2, %2, %2, %2
  %18 = add nuw nsw i32 %14, 26
  br label %35

19:                                               ; preds = %2
  br label %35

20:                                               ; preds = %2
  br label %35

21:                                               ; preds = %2
  br label %35

22:                                               ; preds = %2
  br label %35

23:                                               ; preds = %2, %2, %2, %2, %2, %2
  %24 = add nuw nsw i32 %14, 24
  br label %35

25:                                               ; preds = %2
  %26 = getelementptr inbounds %struct.max8998_data, ptr %15, i32 0, i32 5
  %27 = load i32, ptr %26, align 4
  %28 = add i32 %27, 21
  br label %35

29:                                               ; preds = %2
  %30 = getelementptr inbounds %struct.max8998_data, ptr %15, i32 0, i32 6
  %31 = load i32, ptr %30, align 4
  %32 = add i32 %31, 25
  br label %35

33:                                               ; preds = %2
  br label %35

34:                                               ; preds = %2
  br label %35

35:                                               ; preds = %34, %33, %29, %25, %23, %22, %21, %20, %19, %17, %16, %2
  %36 = phi i32 [ 28, %34 ], [ 27, %33 ], [ %32, %29 ], [ %28, %25 ], [ %24, %23 ], [ 35, %21 ], [ 35, %22 ], [ 34, %19 ], [ 34, %20 ], [ %18, %17 ], [ 29, %16 ], [ 29, %2 ]
  %37 = phi i32 [ 0, %34 ], [ 0, %33 ], [ 0, %29 ], [ 0, %25 ], [ 0, %23 ], [ 5, %21 ], [ 0, %22 ], [ 4, %19 ], [ 0, %20 ], [ 0, %17 ], [ 0, %16 ], [ 4, %2 ]
  %38 = phi i32 [ 255, %34 ], [ 255, %33 ], [ 255, %29 ], [ 255, %25 ], [ 255, %23 ], [ 7, %21 ], [ 31, %22 ], [ 15, %19 ], [ 15, %20 ], [ 255, %17 ], [ 15, %16 ], [ 15, %2 ]
  store i32 %36, ptr %3, align 4
  switch i32 %13, label %144 [
    i32 18, label %39
    i32 19, label %97
    i32 20, label %137
    i32 21, label %137
  ]

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.max8998_platform_data, ptr %10, i32 0, i32 7
  %41 = load i32, ptr %40, align 4
  %42 = icmp ult i32 %41, 2048
  br i1 %42, label %43, label %93

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.max8998_platform_data, ptr %10, i32 0, i32 8
  %45 = load i32, ptr %44, align 4
  %46 = icmp ult i32 %45, 2048
  br i1 %46, label %47, label %93

47:                                               ; preds = %43
  %48 = getelementptr %struct.max8998_data, ptr %6, i32 0, i32 3, i32 0
  %49 = load i8, ptr %48, align 1
  %50 = zext i8 %49 to i32
  %51 = icmp eq i32 %50, %1
  br i1 %51, label %52, label %57

52:                                               ; preds = %67, %62, %57, %47
  %53 = phi i32 [ 0, %47 ], [ 1, %57 ], [ 2, %62 ], [ 3, %67 ]
  %54 = getelementptr inbounds %struct.max8998_data, ptr %6, i32 0, i32 5
  store i32 %53, ptr %54, align 4
  %55 = load i32, ptr %40, align 4
  %56 = load i32, ptr %44, align 4
  tail call fastcc void @buck1_gpio_set(i32 noundef %55, i32 noundef %56, i32 noundef %53)
  br label %144

57:                                               ; preds = %47
  %58 = getelementptr %struct.max8998_data, ptr %6, i32 0, i32 3, i32 1
  %59 = load i8, ptr %58, align 1
  %60 = zext i8 %59 to i32
  %61 = icmp eq i32 %60, %1
  br i1 %61, label %52, label %62

62:                                               ; preds = %57
  %63 = getelementptr %struct.max8998_data, ptr %6, i32 0, i32 3, i32 2
  %64 = load i8, ptr %63, align 1
  %65 = zext i8 %64 to i32
  %66 = icmp eq i32 %65, %1
  br i1 %66, label %52, label %67

67:                                               ; preds = %62
  %68 = getelementptr %struct.max8998_data, ptr %6, i32 0, i32 3, i32 3
  %69 = load i8, ptr %68, align 1
  %70 = zext i8 %69 to i32
  %71 = icmp eq i32 %70, %1
  br i1 %71, label %52, label %72

72:                                               ; preds = %67
  %73 = getelementptr inbounds %struct.max8998_platform_data, ptr %10, i32 0, i32 4
  %74 = load i8, ptr %73, align 4, !range !10
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %76, label %144

76:                                               ; preds = %72
  %77 = load i8, ptr @max8998_set_voltage_buck_sel.buck1_last_val, align 1
  %78 = and i8 %77, 1
  %79 = or i8 %78, 2
  %80 = zext i8 %79 to i32
  %81 = getelementptr inbounds %struct.max8998_data, ptr %6, i32 0, i32 5
  store i32 %80, ptr %81, align 4
  %82 = trunc i32 %1 to i8
  %83 = getelementptr %struct.max8998_data, ptr %6, i32 0, i32 3, i32 %80
  store i8 %82, ptr %83, align 1
  %84 = call fastcc i32 @max8998_get_voltage_register(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5)
  %85 = load i32, ptr %3, align 4
  %86 = trunc i32 %85 to i8
  %87 = tail call i32 @max8998_write_reg(ptr noundef %12, i8 noundef zeroext %86, i8 noundef zeroext %82) #8
  %88 = load i32, ptr %40, align 4
  %89 = load i32, ptr %44, align 4
  %90 = load i32, ptr %81, align 4
  tail call fastcc void @buck1_gpio_set(i32 noundef %88, i32 noundef %89, i32 noundef %90)
  %91 = load i8, ptr @max8998_set_voltage_buck_sel.buck1_last_val, align 1
  %92 = add i8 %91, 1
  store i8 %92, ptr @max8998_set_voltage_buck_sel.buck1_last_val, align 1
  br label %144

93:                                               ; preds = %43, %39
  %94 = trunc i32 %36 to i8
  %95 = trunc i32 %1 to i8
  %96 = tail call i32 @max8998_write_reg(ptr noundef %12, i8 noundef zeroext %94, i8 noundef zeroext %95) #8
  br label %144

97:                                               ; preds = %35
  %98 = getelementptr inbounds %struct.max8998_platform_data, ptr %10, i32 0, i32 10
  %99 = load i32, ptr %98, align 4
  %100 = icmp ult i32 %99, 2048
  br i1 %100, label %101, label %133

101:                                              ; preds = %97
  %102 = getelementptr %struct.max8998_data, ptr %6, i32 0, i32 4, i32 0
  %103 = load i8, ptr %102, align 1
  %104 = zext i8 %103 to i32
  %105 = icmp eq i32 %104, %1
  br i1 %105, label %106, label %111

106:                                              ; preds = %111, %101
  %107 = phi i32 [ 0, %101 ], [ 1, %111 ]
  %108 = getelementptr inbounds %struct.max8998_data, ptr %6, i32 0, i32 6
  store i32 %107, ptr %108, align 4
  %109 = load i32, ptr %98, align 4
  %110 = tail call ptr @gpio_to_desc(i32 noundef %109) #8
  tail call void @gpiod_set_raw_value(ptr noundef %110, i32 noundef %107) #8
  br label %144

111:                                              ; preds = %101
  %112 = getelementptr %struct.max8998_data, ptr %6, i32 0, i32 4, i32 1
  %113 = load i8, ptr %112, align 1
  %114 = zext i8 %113 to i32
  %115 = icmp eq i32 %114, %1
  br i1 %115, label %106, label %116

116:                                              ; preds = %111
  %117 = getelementptr inbounds %struct.max8998_platform_data, ptr %10, i32 0, i32 4
  %118 = load i8, ptr %117, align 4, !range !10
  %119 = icmp eq i8 %118, 0
  br i1 %119, label %120, label %144

120:                                              ; preds = %116
  %121 = call fastcc i32 @max8998_get_voltage_register(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5)
  %122 = load i32, ptr %3, align 4
  %123 = trunc i32 %122 to i8
  %124 = trunc i32 %1 to i8
  %125 = tail call i32 @max8998_write_reg(ptr noundef %12, i8 noundef zeroext %123, i8 noundef zeroext %124) #8
  %126 = getelementptr inbounds %struct.max8998_data, ptr %6, i32 0, i32 6
  %127 = load i32, ptr %126, align 4
  %128 = getelementptr %struct.max8998_data, ptr %6, i32 0, i32 4, i32 %127
  store i8 %124, ptr %128, align 1
  %129 = load i32, ptr %98, align 4
  %130 = load i32, ptr %126, align 4
  %131 = and i32 %130, 1
  %132 = tail call ptr @gpio_to_desc(i32 noundef %129) #8
  tail call void @gpiod_set_raw_value(ptr noundef %132, i32 noundef %131) #8
  br label %144

133:                                              ; preds = %97
  %134 = trunc i32 %36 to i8
  %135 = trunc i32 %1 to i8
  %136 = tail call i32 @max8998_write_reg(ptr noundef %12, i8 noundef zeroext %134, i8 noundef zeroext %135) #8
  br label %144

137:                                              ; preds = %35, %35
  %138 = trunc i32 %36 to i8
  %139 = shl i32 %1, %37
  %140 = trunc i32 %139 to i8
  %141 = shl nuw nsw i32 %38, %37
  %142 = trunc i32 %141 to i8
  %143 = tail call i32 @max8998_update_reg(ptr noundef %12, i8 noundef zeroext %138, i8 noundef zeroext %140, i8 noundef zeroext %142) #8
  br label %144

144:                                              ; preds = %137, %133, %120, %116, %106, %93, %76, %72, %52, %35, %2
  %145 = phi i32 [ -22, %72 ], [ -22, %116 ], [ 0, %35 ], [ %143, %137 ], [ 0, %106 ], [ %125, %120 ], [ %136, %133 ], [ 0, %52 ], [ %87, %76 ], [ %96, %93 ], [ -22, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  ret i32 %145
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max8998_set_voltage_buck_time_sel(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = alloca i8, align 1
  %5 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #8
  %6 = getelementptr inbounds %struct.max8998_data, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.max8998_dev, ptr %7, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 @rdev_get_id(ptr noundef %0) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #8
  store i8 0, ptr %4, align 1
  %11 = add i32 %10, -22
  %12 = icmp ult i32 %11, -4
  br i1 %12, label %41, label %13

13:                                               ; preds = %3
  %14 = call i32 @max8998_read_reg(ptr noundef %9, i8 noundef zeroext 20, ptr noundef nonnull %4) #8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %41

16:                                               ; preds = %13
  %17 = load ptr, ptr %6, align 4
  %18 = getelementptr inbounds %struct.max8998_dev, ptr %17, i32 0, i32 12
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = load i8, ptr %4, align 1
  %23 = and i8 %22, 16
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %41, label %25

25:                                               ; preds = %21, %16
  %26 = sub i32 %2, %1
  %27 = load ptr, ptr %0, align 8
  %28 = getelementptr inbounds %struct.regulator_desc, ptr %27, i32 0, i32 15
  %29 = load i32, ptr %28, align 4
  %30 = mul i32 %29, %26
  %31 = icmp ult i32 %30, 1000
  br i1 %31, label %41, label %32

32:                                               ; preds = %25
  %33 = udiv i32 %30, 1000
  %34 = load i8, ptr %4, align 1
  %35 = and i8 %34, 15
  %36 = add nuw nsw i8 %35, 1
  %37 = zext i8 %36 to i32
  %38 = add nsw i32 %33, -1
  %39 = add nuw nsw i32 %38, %37
  %40 = udiv i32 %39, %37
  br label %41

41:                                               ; preds = %32, %25, %21, %13, %3
  %42 = phi i32 [ %40, %32 ], [ -22, %3 ], [ %14, %13 ], [ 0, %21 ], [ 0, %25 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #8
  ret i32 %42
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @buck1_gpio_set(i32 noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #7 {
  %4 = and i32 %2, 1
  %5 = tail call ptr @gpio_to_desc(i32 noundef %0) #8
  tail call void @gpiod_set_raw_value(ptr noundef %5, i32 noundef %4) #8
  %6 = lshr i32 %2, 1
  %7 = and i32 %6, 1
  %8 = tail call ptr @gpio_to_desc(i32 noundef %1) #8
  tail call void @gpiod_set_raw_value(ptr noundef %8, i32 noundef %7) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_raw_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max8998_set_current_limit(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #8
  %5 = getelementptr inbounds %struct.max8998_data, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.max8998_dev, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %0, align 8
  %10 = getelementptr inbounds %struct.regulator_desc, ptr %9, i32 0, i32 9
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %70, label %13

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.regulator_desc, ptr %9, i32 0, i32 24
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %70, label %17

17:                                               ; preds = %13
  %18 = add i32 %11, -1
  %19 = getelementptr i32, ptr %15, i32 %18
  %20 = load i32, ptr %19, align 4
  %21 = load i32, ptr %15, align 4
  %22 = icmp ugt i32 %20, %21
  br i1 %22, label %27, label %23

23:                                               ; preds = %17
  %24 = icmp ult i32 %21, %1
  %25 = icmp ugt i32 %21, %2
  %26 = or i1 %24, %25
  br i1 %26, label %43, label %53

27:                                               ; preds = %17
  %28 = icmp sgt i32 %18, -1
  br i1 %28, label %29, label %70

29:                                               ; preds = %27
  %30 = icmp ult i32 %20, %1
  %31 = icmp ugt i32 %20, %2
  %32 = or i1 %30, %31
  br i1 %32, label %33, label %56

33:                                               ; preds = %36, %29
  %34 = phi i32 [ %37, %36 ], [ %18, %29 ]
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %70

36:                                               ; preds = %33
  %37 = add nsw i32 %34, -1
  %38 = getelementptr i32, ptr %15, i32 %37
  %39 = load i32, ptr %38, align 4
  %40 = icmp ult i32 %39, %1
  %41 = icmp ugt i32 %39, %2
  %42 = or i1 %40, %41
  br i1 %42, label %33, label %56

43:                                               ; preds = %47, %23
  %44 = phi i32 [ %45, %47 ], [ 0, %23 ]
  %45 = add nuw i32 %44, 1
  %46 = icmp eq i32 %45, %11
  br i1 %46, label %70, label %47

47:                                               ; preds = %43
  %48 = getelementptr i32, ptr %15, i32 %45
  %49 = load i32, ptr %48, align 4
  %50 = icmp ult i32 %49, %1
  %51 = icmp ugt i32 %49, %2
  %52 = or i1 %50, %51
  br i1 %52, label %43, label %53

53:                                               ; preds = %47, %23
  %54 = phi i32 [ 0, %23 ], [ %45, %47 ]
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %70, label %56

56:                                               ; preds = %53, %36, %29
  %57 = phi i32 [ %54, %53 ], [ %18, %29 ], [ %37, %36 ]
  %58 = getelementptr inbounds %struct.regulator_desc, ptr %9, i32 0, i32 31
  %59 = load i32, ptr %58, align 4
  %60 = tail call i32 @llvm.cttz.i32(i32 %59, i1 true), !range !11
  %61 = icmp eq i32 %59, 0
  %62 = select i1 %61, i32 -1, i32 %60
  %63 = shl i32 %57, %62
  %64 = getelementptr inbounds %struct.regulator_desc, ptr %9, i32 0, i32 30
  %65 = load i32, ptr %64, align 4
  %66 = trunc i32 %65 to i8
  %67 = trunc i32 %63 to i8
  %68 = trunc i32 %59 to i8
  %69 = tail call i32 @max8998_update_reg(ptr noundef %8, i8 noundef zeroext %66, i8 noundef zeroext %67, i8 noundef zeroext %68) #8
  br label %70

70:                                               ; preds = %56, %53, %43, %33, %27, %13, %3
  %71 = phi i32 [ %69, %56 ], [ -22, %3 ], [ -22, %53 ], [ -22, %13 ], [ -22, %27 ], [ -22, %33 ], [ -22, %43 ]
  ret i32 %71
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max8998_get_current_limit(ptr noundef %0) #2 {
  %2 = alloca i8, align 1
  %3 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #8
  %4 = getelementptr inbounds %struct.max8998_data, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.max8998_dev, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #8
  store i8 0, ptr %2, align 1, !annotation !9
  %8 = load ptr, ptr %0, align 8
  %9 = getelementptr inbounds %struct.regulator_desc, ptr %8, i32 0, i32 30
  %10 = load i32, ptr %9, align 4
  %11 = trunc i32 %10 to i8
  %12 = call i32 @max8998_read_reg(ptr noundef %7, i8 noundef zeroext %11, ptr noundef nonnull %2) #8
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %36

14:                                               ; preds = %1
  %15 = load ptr, ptr %0, align 8
  %16 = getelementptr inbounds %struct.regulator_desc, ptr %15, i32 0, i32 31
  %17 = load i32, ptr %16, align 4
  %18 = load i8, ptr %2, align 1
  %19 = trunc i32 %17 to i8
  %20 = and i8 %18, %19
  %21 = call i32 @llvm.cttz.i32(i32 %17, i1 true), !range !11
  %22 = icmp eq i32 %17, 0
  %23 = select i1 %22, i32 -1, i32 %21
  %24 = zext i8 %20 to i32
  %25 = lshr i32 %24, %23
  %26 = getelementptr inbounds %struct.regulator_desc, ptr %15, i32 0, i32 24
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %36, label %29

29:                                               ; preds = %14
  %30 = getelementptr inbounds %struct.regulator_desc, ptr %15, i32 0, i32 9
  %31 = load i32, ptr %30, align 4
  %32 = icmp ult i32 %25, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = getelementptr i32, ptr %27, i32 %25
  %35 = load i32, ptr %34, align 4
  br label %36

36:                                               ; preds = %33, %29, %14, %1
  %37 = phi i32 [ %35, %33 ], [ %12, %1 ], [ -22, %29 ], [ -22, %14 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #8
  ret i32 %37
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max8998_ldo_is_enabled_inverted(ptr noundef %0) #2 {
  %2 = tail call i32 @max8998_ldo_is_enabled(ptr noundef %0)
  %3 = icmp eq i32 %2, 0
  %4 = zext i1 %3 to i32
  ret i32 %4
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!9 = !{!"auto-init"}
!10 = !{i8 0, i8 2}
!11 = !{i32 0, i32 33}
