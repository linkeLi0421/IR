; ModuleID = '/llk/IR/drivers/regulator/s2mpa01.c_pt.bc'
source_filename = "../drivers/regulator/s2mpa01.c"
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
%struct.sec_pmic_dev = type { ptr, ptr, ptr, ptr, i32, i32, ptr }
%struct.s2mpa01_info = type { i32, i32, i32, i32, i32, i32 }
%struct.regulator_dev = type { ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.coupling_desc, %struct.blocking_notifier_head, %struct.ww_mutex, ptr, i32, ptr, %struct.device, ptr, ptr, ptr, ptr, %struct.delayed_work, ptr, ptr, ptr, i8, i64, i32, i8, %struct.spinlock }
%struct.coupling_desc = type { ptr, ptr, i32, i32 }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }

@s2mpa01_pmic_id = internal constant [2 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"s2mpa01-pmic\00\00\00\00\00\00\00\00", i32 0 }, %struct.platform_device_id zeroinitializer], align 4
@__UNIQUE_ID_author247 = internal constant [42 x i8] c"author=Sangbeom Kim <sbkim73@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author248 = internal constant [47 x i8] c"author=Sachin Kamat <sachin.kamat@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description249 = internal constant [45 x i8] c"description=Samsung S2MPA01 Regulator Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license250 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@s2mpa01_pmic_driver = internal global %struct.platform_driver { ptr @s2mpa01_pmic_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @s2mpa01_pmic_id, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [13 x i8] c"s2mpa01-pmic\00", align 1
@regulators = internal constant [36 x %struct.regulator_desc] [%struct.regulator_desc { ptr @.str.2, ptr null, ptr @.str.2, i8 0, ptr @.str.3, ptr null, i32 0, i8 0, i32 64, i32 0, ptr @s2mpa01_ldo_ops, i32 0, i32 0, ptr @__this_module, i32 800000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 64, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 64, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.4, ptr null, ptr @.str.4, i8 0, ptr @.str.3, ptr null, i32 1, i8 0, i32 64, i32 0, ptr @s2mpa01_ldo_ops, i32 0, i32 0, ptr @__this_module, i32 800000, i32 50000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 65, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 65, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.5, ptr null, ptr @.str.5, i8 0, ptr @.str.3, ptr null, i32 2, i8 0, i32 64, i32 0, ptr @s2mpa01_ldo_ops, i32 0, i32 0, ptr @__this_module, i32 800000, i32 50000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 66, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 66, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.6, ptr null, ptr @.str.6, i8 0, ptr @.str.3, ptr null, i32 3, i8 0, i32 64, i32 0, ptr @s2mpa01_ldo_ops, i32 0, i32 0, ptr @__this_module, i32 800000, i32 50000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 67, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 67, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.7, ptr null, ptr @.str.7, i8 0, ptr @.str.3, ptr null, i32 4, i8 0, i32 64, i32 0, ptr @s2mpa01_ldo_ops, i32 0, i32 0, ptr @__this_module, i32 800000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 68, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 68, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.8, ptr null, ptr @.str.8, i8 0, ptr @.str.3, ptr null, i32 5, i8 0, i32 64, i32 0, ptr @s2mpa01_ldo_ops, i32 0, i32 0, ptr @__this_module, i32 800000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 69, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 69, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.9, ptr null, ptr @.str.9, i8 0, ptr @.str.3, ptr null, i32 6, i8 0, i32 64, i32 0, ptr @s2mpa01_ldo_ops, i32 0, i32 0, ptr @__this_module, i32 800000, i32 50000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 70, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 70, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.10, ptr null, ptr @.str.10, i8 0, ptr @.str.3, ptr null, i32 7, i8 0, i32 64, i32 0, ptr @s2mpa01_ldo_ops, i32 0, i32 0, ptr @__this_module, i32 800000, i32 50000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 71, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 71, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.11, ptr null, ptr @.str.11, i8 0, ptr @.str.3, ptr null, i32 8, i8 0, i32 64, i32 0, ptr @s2mpa01_ldo_ops, i32 0, i32 0, ptr @__this_module, i32 800000, i32 50000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 72, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 72, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.12, ptr null, ptr @.str.12, i8 0, ptr @.str.3, ptr null, i32 9, i8 0, i32 64, i32 0, ptr @s2mpa01_ldo_ops, i32 0, i32 0, ptr @__this_module, i32 800000, i32 50000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 73, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 73, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.13, ptr null, ptr @.str.13, i8 0, ptr @.str.3, ptr null, i32 10, i8 0, i32 64, i32 0, ptr @s2mpa01_ldo_ops, i32 0, i32 0, ptr @__this_module, i32 800000, i32 50000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 74, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 74, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.14, ptr null, ptr @.str.14, i8 0, ptr @.str.3, ptr null, i32 11, i8 0, i32 64, i32 0, ptr @s2mpa01_ldo_ops, i32 0, i32 0, ptr @__this_module, i32 800000, i32 50000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 75, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 75, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.15, ptr null, ptr @.str.15, i8 0, ptr @.str.3, ptr null, i32 12, i8 0, i32 64, i32 0, ptr @s2mpa01_ldo_ops, i32 0, i32 0, ptr @__this_module, i32 800000, i32 50000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 76, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 76, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.16, ptr null, ptr @.str.16, i8 0, ptr @.str.3, ptr null, i32 13, i8 0, i32 64, i32 0, ptr @s2mpa01_ldo_ops, i32 0, i32 0, ptr @__this_module, i32 800000, i32 50000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 77, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 77, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.17, ptr null, ptr @.str.17, i8 0, ptr @.str.3, ptr null, i32 14, i8 0, i32 64, i32 0, ptr @s2mpa01_ldo_ops, i32 0, i32 0, ptr @__this_module, i32 800000, i32 50000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 78, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 78, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.18, ptr null, ptr @.str.18, i8 0, ptr @.str.3, ptr null, i32 15, i8 0, i32 64, i32 0, ptr @s2mpa01_ldo_ops, i32 0, i32 0, ptr @__this_module, i32 800000, i32 50000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 79, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 79, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.19, ptr null, ptr @.str.19, i8 0, ptr @.str.3, ptr null, i32 16, i8 0, i32 64, i32 0, ptr @s2mpa01_ldo_ops, i32 0, i32 0, ptr @__this_module, i32 800000, i32 50000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 80, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 80, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.20, ptr null, ptr @.str.20, i8 0, ptr @.str.3, ptr null, i32 17, i8 0, i32 64, i32 0, ptr @s2mpa01_ldo_ops, i32 0, i32 0, ptr @__this_module, i32 800000, i32 50000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 81, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 81, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.21, ptr null, ptr @.str.21, i8 0, ptr @.str.3, ptr null, i32 18, i8 0, i32 64, i32 0, ptr @s2mpa01_ldo_ops, i32 0, i32 0, ptr @__this_module, i32 800000, i32 50000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 82, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 82, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.22, ptr null, ptr @.str.22, i8 0, ptr @.str.3, ptr null, i32 19, i8 0, i32 64, i32 0, ptr @s2mpa01_ldo_ops, i32 0, i32 0, ptr @__this_module, i32 800000, i32 50000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 83, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 83, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.23, ptr null, ptr @.str.23, i8 0, ptr @.str.3, ptr null, i32 20, i8 0, i32 64, i32 0, ptr @s2mpa01_ldo_ops, i32 0, i32 0, ptr @__this_module, i32 800000, i32 50000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 84, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 84, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.24, ptr null, ptr @.str.24, i8 0, ptr @.str.3, ptr null, i32 21, i8 0, i32 64, i32 0, ptr @s2mpa01_ldo_ops, i32 0, i32 0, ptr @__this_module, i32 800000, i32 50000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 85, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 85, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.25, ptr null, ptr @.str.25, i8 0, ptr @.str.3, ptr null, i32 22, i8 0, i32 64, i32 0, ptr @s2mpa01_ldo_ops, i32 0, i32 0, ptr @__this_module, i32 800000, i32 50000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 86, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 86, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.26, ptr null, ptr @.str.26, i8 0, ptr @.str.3, ptr null, i32 23, i8 0, i32 64, i32 0, ptr @s2mpa01_ldo_ops, i32 0, i32 0, ptr @__this_module, i32 800000, i32 50000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 87, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 87, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.27, ptr null, ptr @.str.27, i8 0, ptr @.str.3, ptr null, i32 24, i8 0, i32 64, i32 0, ptr @s2mpa01_ldo_ops, i32 0, i32 0, ptr @__this_module, i32 800000, i32 50000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 88, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 88, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.28, ptr null, ptr @.str.28, i8 0, ptr @.str.3, ptr null, i32 25, i8 0, i32 64, i32 0, ptr @s2mpa01_ldo_ops, i32 0, i32 0, ptr @__this_module, i32 800000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 89, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 89, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.29, ptr null, ptr @.str.29, i8 0, ptr @.str.3, ptr null, i32 26, i8 0, i32 256, i32 0, ptr @s2mpa01_buck_ops, i32 0, i32 0, ptr @__this_module, i32 600000, i32 6250, i32 0, i32 0, i32 12500, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 41, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 40, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.30, ptr null, ptr @.str.30, i8 0, ptr @.str.3, ptr null, i32 27, i8 0, i32 256, i32 0, ptr @s2mpa01_buck_ops, i32 0, i32 0, ptr @__this_module, i32 600000, i32 6250, i32 0, i32 0, i32 12500, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 43, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 42, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.31, ptr null, ptr @.str.31, i8 0, ptr @.str.3, ptr null, i32 28, i8 0, i32 256, i32 0, ptr @s2mpa01_buck_ops, i32 0, i32 0, ptr @__this_module, i32 600000, i32 6250, i32 0, i32 0, i32 12500, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 45, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 44, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.32, ptr null, ptr @.str.32, i8 0, ptr @.str.3, ptr null, i32 29, i8 0, i32 256, i32 0, ptr @s2mpa01_buck_ops, i32 0, i32 0, ptr @__this_module, i32 600000, i32 6250, i32 0, i32 0, i32 12500, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 47, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 46, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.33, ptr null, ptr @.str.33, i8 0, ptr @.str.3, ptr null, i32 30, i8 0, i32 256, i32 0, ptr @s2mpa01_buck_ops, i32 0, i32 0, ptr @__this_module, i32 800000, i32 6250, i32 0, i32 0, i32 12500, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 49, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 48, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.34, ptr null, ptr @.str.34, i8 0, ptr @.str.3, ptr null, i32 31, i8 0, i32 256, i32 0, ptr @s2mpa01_buck_ops, i32 0, i32 0, ptr @__this_module, i32 600000, i32 6250, i32 0, i32 0, i32 12500, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 55, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 54, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.35, ptr null, ptr @.str.35, i8 0, ptr @.str.3, ptr null, i32 32, i8 0, i32 256, i32 0, ptr @s2mpa01_buck_ops, i32 0, i32 0, ptr @__this_module, i32 600000, i32 6250, i32 0, i32 0, i32 12500, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 57, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 56, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.36, ptr null, ptr @.str.36, i8 0, ptr @.str.3, ptr null, i32 33, i8 0, i32 256, i32 0, ptr @s2mpa01_buck_ops, i32 0, i32 0, ptr @__this_module, i32 800000, i32 12500, i32 0, i32 0, i32 12500, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 59, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 58, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.37, ptr null, ptr @.str.37, i8 0, ptr @.str.3, ptr null, i32 34, i8 0, i32 256, i32 0, ptr @s2mpa01_buck_ops, i32 0, i32 0, ptr @__this_module, i32 1500000, i32 12500, i32 0, i32 0, i32 12500, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 61, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 60, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.38, ptr null, ptr @.str.38, i8 0, ptr @.str.3, ptr null, i32 35, i8 0, i32 256, i32 0, ptr @s2mpa01_buck_ops, i32 0, i32 0, ptr @__this_module, i32 1000000, i32 12500, i32 0, i32 0, i32 12500, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 63, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 62, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }], align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"regulator init failed for %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"LDO1\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"regulators\00", align 1
@s2mpa01_ldo_ops = internal constant %struct.regulator_ops { ptr @regulator_list_voltage_linear, ptr null, ptr @regulator_map_voltage_linear, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_set_voltage_time_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"LDO2\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"LDO3\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"LDO4\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"LDO5\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"LDO6\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"LDO7\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"LDO8\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"LDO9\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"LDO10\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"LDO11\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"LDO12\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"LDO13\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"LDO14\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"LDO15\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"LDO16\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"LDO17\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"LDO18\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"LDO19\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"LDO20\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"LDO21\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"LDO22\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"LDO23\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"LDO24\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"LDO25\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"LDO26\00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"BUCK1\00", align 1
@s2mpa01_buck_ops = internal constant %struct.regulator_ops { ptr @regulator_list_voltage_linear, ptr null, ptr @regulator_map_voltage_linear, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr @s2mpa01_set_ramp_delay, ptr null, ptr @s2mpa01_regulator_set_voltage_time_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.30 = private unnamed_addr constant [6 x i8] c"BUCK2\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"BUCK3\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"BUCK4\00", align 1
@.str.33 = private unnamed_addr constant [6 x i8] c"BUCK5\00", align 1
@.str.34 = private unnamed_addr constant [6 x i8] c"BUCK6\00", align 1
@.str.35 = private unnamed_addr constant [6 x i8] c"BUCK7\00", align 1
@.str.36 = private unnamed_addr constant [6 x i8] c"BUCK8\00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"BUCK9\00", align 1
@.str.38 = private unnamed_addr constant [7 x i8] c"BUCK10\00", align 1
@.str.39 = private unnamed_addr constant [28 x i8] c"failed to enable ramp rate\0A\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_author247, ptr @__UNIQUE_ID_author248, ptr @__UNIQUE_ID_description249, ptr @__UNIQUE_ID_license250], section "llvm.metadata"

@__mod_platform__s2mpa01_pmic_id_device_table = dso_local alias [2 x %struct.platform_device_id], ptr @s2mpa01_pmic_id

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @s2mpa01_pmic_driver, ptr noundef nonnull @__this_module) #7
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @s2mpa01_pmic_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s2mpa01_pmic_probe(ptr noundef %0) #2 {
  %2 = alloca %struct.regulator_config, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #7
  %8 = getelementptr inbounds i8, ptr %2, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %8, i8 0, i32 20, i1 false)
  %9 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 24, i32 noundef 3520) #7
  %10 = icmp eq ptr %9, null
  br i1 %10, label %27, label %11

11:                                               ; preds = %1
  %12 = load ptr, ptr %7, align 4
  store ptr %12, ptr %2, align 4
  %13 = getelementptr inbounds %struct.sec_pmic_dev, ptr %7, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.regulator_config, ptr %2, i32 0, i32 4
  store ptr %14, ptr %15, align 4
  %16 = getelementptr inbounds %struct.regulator_config, ptr %2, i32 0, i32 2
  store ptr %9, ptr %16, align 4
  br label %17

17:                                               ; preds = %24, %11
  %18 = phi i32 [ 0, %11 ], [ %25, %24 ]
  %19 = getelementptr [36 x %struct.regulator_desc], ptr @regulators, i32 0, i32 %18
  %20 = call ptr @devm_regulator_register(ptr noundef %3, ptr noundef %19, ptr noundef nonnull %2) #7
  %21 = icmp ugt ptr %20, inttoptr (i32 -4096 to ptr)
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.1, i32 noundef %18) #8
  %23 = ptrtoint ptr %20 to i32
  br label %27

24:                                               ; preds = %17
  %25 = add nuw nsw i32 %18, 1
  %26 = icmp eq i32 %25, 36
  br i1 %26, label %27, label %17

27:                                               ; preds = %24, %22, %1
  %28 = phi i32 [ -12, %1 ], [ %23, %22 ], [ 0, %24 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #7
  ret i32 %28
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_list_voltage_linear(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_map_voltage_linear(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_voltage_sel_regmap(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage_sel_regmap(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable_regmap(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable_regmap(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_is_enabled_regmap(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_voltage_time_sel(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s2mpa01_set_ramp_delay(ptr noundef %0, i32 noundef %1) #2 {
  %3 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #7
  %4 = tail call i32 @rdev_get_id(ptr noundef %0) #7
  switch i32 %4, label %84 [
    i32 26, label %5
    i32 27, label %11
    i32 28, label %16
    i32 29, label %20
    i32 30, label %25
    i32 31, label %27
    i32 32, label %31
    i32 33, label %33
    i32 34, label %33
    i32 35, label %33
  ]

5:                                                ; preds = %2
  %6 = icmp eq i32 %1, 0
  br i1 %6, label %78, label %7

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.s2mpa01_info, ptr %3, i32 0, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = icmp slt i32 %9, %1
  br i1 %10, label %37, label %42

11:                                               ; preds = %2
  %12 = icmp eq i32 %1, 0
  br i1 %12, label %78, label %13

13:                                               ; preds = %11
  %14 = load i32, ptr %3, align 4
  %15 = icmp slt i32 %14, %1
  br i1 %15, label %37, label %42

16:                                               ; preds = %2
  %17 = icmp eq i32 %1, 0
  br i1 %17, label %78, label %18

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.s2mpa01_info, ptr %3, i32 0, i32 1
  br label %37

20:                                               ; preds = %2
  %21 = icmp eq i32 %1, 0
  br i1 %21, label %78, label %22

22:                                               ; preds = %20
  %23 = load i32, ptr %3, align 4
  %24 = icmp slt i32 %23, %1
  br i1 %24, label %37, label %42

25:                                               ; preds = %2
  %26 = getelementptr inbounds %struct.s2mpa01_info, ptr %3, i32 0, i32 2
  br label %37

27:                                               ; preds = %2
  %28 = getelementptr inbounds %struct.s2mpa01_info, ptr %3, i32 0, i32 3
  %29 = load i32, ptr %28, align 4
  %30 = icmp slt i32 %29, %1
  br i1 %30, label %37, label %42

31:                                               ; preds = %2
  %32 = getelementptr inbounds %struct.s2mpa01_info, ptr %3, i32 0, i32 4
  br label %37

33:                                               ; preds = %2, %2, %2
  %34 = getelementptr inbounds %struct.s2mpa01_info, ptr %3, i32 0, i32 5
  %35 = load i32, ptr %34, align 4
  %36 = icmp slt i32 %35, %1
  br i1 %36, label %37, label %42

37:                                               ; preds = %33, %31, %27, %25, %22, %18, %13, %7
  %38 = phi ptr [ %32, %31 ], [ %26, %25 ], [ %19, %18 ], [ %8, %7 ], [ %3, %13 ], [ %3, %22 ], [ %28, %27 ], [ %34, %33 ]
  %39 = phi i32 [ 2, %31 ], [ 6, %25 ], [ 4, %18 ], [ 4, %7 ], [ 6, %13 ], [ 6, %22 ], [ 4, %27 ], [ 0, %33 ]
  %40 = phi i32 [ 17, %31 ], [ 17, %25 ], [ 16, %18 ], [ 17, %7 ], [ 16, %13 ], [ 16, %22 ], [ 17, %27 ], [ 17, %33 ]
  %41 = phi i32 [ 0, %31 ], [ 0, %25 ], [ 1, %18 ], [ 3, %7 ], [ 2, %13 ], [ 0, %22 ], [ 0, %27 ], [ 0, %33 ]
  store i32 %1, ptr %38, align 4
  br label %42

42:                                               ; preds = %37, %33, %27, %22, %13, %7
  %43 = phi i32 [ %35, %33 ], [ %29, %27 ], [ %23, %22 ], [ %14, %13 ], [ %9, %7 ], [ %1, %37 ]
  %44 = phi i32 [ 0, %33 ], [ 4, %27 ], [ 6, %22 ], [ 6, %13 ], [ 4, %7 ], [ %39, %37 ]
  %45 = phi i32 [ 17, %33 ], [ 17, %27 ], [ 16, %22 ], [ 16, %13 ], [ 17, %7 ], [ %40, %37 ]
  %46 = phi i32 [ 0, %33 ], [ 0, %27 ], [ 0, %22 ], [ 2, %13 ], [ 3, %7 ], [ %41, %37 ]
  %47 = tail call i32 @rdev_get_id(ptr noundef %0) #7
  %48 = icmp sgt i32 %47, 25
  br i1 %48, label %49, label %60

49:                                               ; preds = %42
  %50 = tail call i32 @rdev_get_id(ptr noundef %0) #7
  %51 = icmp slt i32 %50, 30
  br i1 %51, label %52, label %60

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 17
  %54 = load ptr, ptr %53, align 4
  %55 = shl nuw nsw i32 1, %46
  %56 = tail call i32 @regmap_update_bits_base(ptr noundef %54, i32 noundef 16, i32 noundef %55, i32 noundef %55, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %52
  %59 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %59, ptr noundef nonnull @.str.39) #8
  br label %84

60:                                               ; preds = %52, %49, %42
  %61 = sdiv i32 %43, 6250
  %62 = icmp ult i32 %61, 2
  br i1 %62, label %69, label %63

63:                                               ; preds = %63, %60
  %64 = phi i8 [ %67, %63 ], [ 0, %60 ]
  %65 = phi i32 [ %66, %63 ], [ %61, %60 ]
  %66 = ashr i32 %65, 1
  %67 = add i8 %64, 1
  %68 = icmp ult i32 %65, 4
  br i1 %68, label %69, label %63

69:                                               ; preds = %63, %60
  %70 = phi i8 [ 0, %60 ], [ %67, %63 ]
  %71 = tail call i8 @llvm.umin.i8(i8 %70, i8 3) #7
  %72 = zext i8 %71 to i32
  %73 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 17
  %74 = load ptr, ptr %73, align 4
  %75 = shl i32 3, %44
  %76 = shl i32 %72, %44
  %77 = tail call i32 @regmap_update_bits_base(ptr noundef %74, i32 noundef %45, i32 noundef %75, i32 noundef %76, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %84

78:                                               ; preds = %20, %16, %11, %5
  %79 = phi i32 [ 3, %5 ], [ 2, %11 ], [ 1, %16 ], [ 0, %20 ]
  %80 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 17
  %81 = load ptr, ptr %80, align 4
  %82 = shl nuw nsw i32 1, %79
  %83 = tail call i32 @regmap_update_bits_base(ptr noundef %81, i32 noundef 16, i32 noundef %82, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %84

84:                                               ; preds = %78, %69, %58, %2
  %85 = phi i32 [ %56, %58 ], [ %77, %69 ], [ %83, %78 ], [ 0, %2 ]
  ret i32 %85
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s2mpa01_regulator_set_voltage_time_sel(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #7
  %5 = tail call i32 @rdev_get_id(ptr noundef %0) #7
  switch i32 %5, label %22 [
    i32 27, label %16
    i32 29, label %16
    i32 28, label %6
    i32 30, label %8
    i32 26, label %10
    i32 31, label %10
    i32 32, label %12
    i32 33, label %14
    i32 34, label %14
    i32 35, label %14
  ]

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.s2mpa01_info, ptr %4, i32 0, i32 1
  br label %16

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.s2mpa01_info, ptr %4, i32 0, i32 2
  br label %16

10:                                               ; preds = %3, %3
  %11 = getelementptr inbounds %struct.s2mpa01_info, ptr %4, i32 0, i32 3
  br label %16

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.s2mpa01_info, ptr %4, i32 0, i32 4
  br label %16

14:                                               ; preds = %3, %3, %3
  %15 = getelementptr inbounds %struct.s2mpa01_info, ptr %4, i32 0, i32 5
  br label %16

16:                                               ; preds = %14, %12, %10, %8, %6, %3, %3
  %17 = phi ptr [ %15, %14 ], [ %13, %12 ], [ %11, %10 ], [ %9, %8 ], [ %7, %6 ], [ %4, %3 ], [ %4, %3 ]
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr %0, align 8
  br label %26

22:                                               ; preds = %16, %3
  %23 = load ptr, ptr %0, align 8
  %24 = getelementptr inbounds %struct.regulator_desc, ptr %23, i32 0, i32 18
  %25 = load i32, ptr %24, align 4
  br label %26

26:                                               ; preds = %22, %20
  %27 = phi ptr [ %23, %22 ], [ %21, %20 ]
  %28 = phi i32 [ %25, %22 ], [ %18, %20 ]
  %29 = getelementptr inbounds %struct.regulator_desc, ptr %27, i32 0, i32 15
  %30 = load i32, ptr %29, align 4
  %31 = sub i32 %2, %1
  %32 = mul i32 %31, %30
  %33 = tail call i32 @llvm.abs.i32(i32 %32, i1 false)
  %34 = add i32 %28, -1
  %35 = add i32 %34, %33
  %36 = udiv i32 %35, %28
  ret i32 %36
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdev_get_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #6

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }

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
