; ModuleID = '/llk/IR/drivers/regulator/axp20x-regulator.c_pt.bc'
source_filename = "../drivers/regulator/axp20x-regulator.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.regulator_desc = type { ptr, ptr, ptr, i8, ptr, ptr, i32, i8, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, ptr }
%struct.regulator_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.linear_range = type { i32, i32, i32, i32 }
%struct.regulator_config = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.axp20x_dev = type { ptr, i32, i32, ptr, ptr, i32, i32, ptr, ptr, ptr }
%struct.regulator_dev = type { ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.coupling_desc, %struct.blocking_notifier_head, %struct.ww_mutex, ptr, i32, ptr, %struct.device, ptr, ptr, ptr, ptr, %struct.delayed_work, ptr, ptr, ptr, i8, i64, i32, i8, %struct.spinlock }
%struct.coupling_desc = type { ptr, ptr, i32, i32 }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.regulation_constraints = type { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i16 }
%struct.regulator_state = type { i32, i32, i32, i32, i32, i8 }
%struct.notification_limit = type { i32, i32, i32 }

@__initcall__kmod_axp20x_regulator__247_1370_axp20x_regulator_driver_init6 = internal global ptr @axp20x_regulator_driver_init, section ".initcall6.init", align 4
@axp20x_regulator_driver = internal global %struct.platform_driver { ptr @axp20x_regulator_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_axp20x_regulator_driver_exit = internal global ptr @axp20x_regulator_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file248 = internal constant [57 x i8] c"axp20x_regulator.file=drivers/regulator/axp20x-regulator\00", section ".modinfo", align 1
@__UNIQUE_ID_license249 = internal constant [32 x i8] c"axp20x_regulator.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author250 = internal constant [56 x i8] c"axp20x_regulator.author=Carlo Caione <carlo@caione.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description251 = internal constant [62 x i8] c"axp20x_regulator.description=Regulator Driver for AXP20X PMIC\00", section ".modinfo", align 1
@__UNIQUE_ID_alias252 = internal constant [49 x i8] c"axp20x_regulator.alias=platform:axp20x-regulator\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [17 x i8] c"axp20x-regulator\00", align 1
@axp22x_regulators = internal constant [20 x %struct.regulator_desc] [%struct.regulator_desc { ptr @.str.8, ptr @.str.9, ptr @.str.8, i8 0, ptr @.str.10, ptr null, i32 0, i8 0, i32 19, i32 0, ptr @axp20x_ops, i32 0, i32 0, ptr null, i32 1600000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 33, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 16, i32 2, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.11, ptr @.str.12, ptr @.str.11, i8 0, ptr @.str.10, ptr null, i32 1, i8 0, i32 48, i32 0, ptr @axp20x_ops, i32 0, i32 0, ptr null, i32 600000, i32 20000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 34, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 16, i32 4, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.13, ptr @.str.14, ptr @.str.13, i8 0, ptr @.str.10, ptr null, i32 2, i8 0, i32 64, i32 0, ptr @axp20x_ops, i32 0, i32 0, ptr null, i32 600000, i32 20000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 35, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 16, i32 8, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.15, ptr @.str.16, ptr @.str.15, i8 0, ptr @.str.10, ptr null, i32 3, i8 0, i32 48, i32 0, ptr @axp20x_ops, i32 0, i32 0, ptr null, i32 600000, i32 20000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 36, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 16, i32 16, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.17, ptr @.str.18, ptr @.str.17, i8 0, ptr @.str.10, ptr null, i32 4, i8 0, i32 32, i32 0, ptr @axp20x_ops, i32 0, i32 0, ptr null, i32 1000000, i32 50000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 37, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 16, i32 32, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.19, ptr null, ptr @.str.19, i8 0, ptr @.str.10, ptr null, i32 5, i8 0, i32 0, i32 0, ptr @axp20x_ops_sw, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 18, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.20, ptr null, ptr @.str.20, i8 0, ptr @.str.10, ptr null, i32 6, i8 0, i32 8, i32 0, ptr @axp20x_ops, i32 0, i32 0, ptr null, i32 700000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 28, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 16, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.21, ptr @.str.22, ptr @.str.21, i8 0, ptr @.str.10, ptr null, i32 7, i8 0, i32 27, i32 0, ptr @axp20x_ops, i32 0, i32 0, ptr null, i32 700000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 40, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 16, i32 64, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.23, ptr @.str.22, ptr @.str.23, i8 0, ptr @.str.10, ptr null, i32 8, i8 0, i32 27, i32 0, ptr @axp20x_ops, i32 0, i32 0, ptr null, i32 700000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 41, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 16, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.24, ptr @.str.22, ptr @.str.24, i8 0, ptr @.str.10, ptr null, i32 9, i8 0, i32 27, i32 0, ptr @axp20x_ops, i32 0, i32 0, ptr null, i32 700000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 42, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 19, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.25, ptr @.str.26, ptr @.str.25, i8 0, ptr @.str.10, ptr null, i32 10, i8 0, i32 27, i32 0, ptr @axp20x_ops, i32 0, i32 0, ptr null, i32 700000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 25, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 18, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.27, ptr @.str.26, ptr @.str.27, i8 0, ptr @.str.10, ptr null, i32 11, i8 0, i32 27, i32 0, ptr @axp20x_ops, i32 0, i32 0, ptr null, i32 700000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 26, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 18, i32 2, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.28, ptr @.str.26, ptr @.str.28, i8 0, ptr @.str.10, ptr null, i32 12, i8 0, i32 27, i32 0, ptr @axp20x_ops, i32 0, i32 0, ptr null, i32 700000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 27, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 18, i32 4, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.29, ptr @.str.30, ptr @.str.29, i8 0, ptr @.str.10, ptr null, i32 13, i8 0, i32 27, i32 0, ptr @axp20x_ops, i32 0, i32 0, ptr null, i32 700000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 21, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 18, i32 8, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.31, ptr @.str.30, ptr @.str.31, i8 0, ptr @.str.10, ptr null, i32 14, i8 0, i32 27, i32 0, ptr @axp20x_ops, i32 0, i32 0, ptr null, i32 700000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 22, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 18, i32 16, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.32, ptr @.str.30, ptr @.str.32, i8 0, ptr @.str.10, ptr null, i32 15, i8 0, i32 27, i32 0, ptr @axp20x_ops, i32 0, i32 0, ptr null, i32 700000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 23, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 18, i32 32, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.33, ptr @.str.30, ptr @.str.33, i8 0, ptr @.str.10, ptr null, i32 16, i8 0, i32 27, i32 0, ptr @axp20x_ops, i32 0, i32 0, ptr null, i32 700000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 24, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 18, i32 64, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.34, ptr @.str.35, ptr @.str.34, i8 0, ptr @.str.10, ptr null, i32 17, i8 0, i32 1, i32 0, ptr @axp20x_ops_fixed, i32 0, i32 0, ptr null, i32 3000000, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.36, ptr @.str.35, ptr @.str.36, i8 0, ptr @.str.10, ptr null, i32 18, i8 0, i32 32, i32 0, ptr @axp20x_ops, i32 0, i32 0, ptr null, i32 700000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 145, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 144, i32 15, i32 3, i32 4, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.37, ptr @.str.35, ptr @.str.37, i8 0, ptr @.str.10, ptr null, i32 19, i8 0, i32 32, i32 0, ptr @axp20x_ops, i32 0, i32 0, ptr null, i32 700000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 147, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 146, i32 15, i32 3, i32 4, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }], align 4
@axp20x_regulators = internal constant [7 x %struct.regulator_desc] [%struct.regulator_desc { ptr @.str.39, ptr @.str.40, ptr @.str.39, i8 0, ptr @.str.10, ptr null, i32 0, i8 0, i32 1, i32 0, ptr @axp20x_ops_fixed, i32 0, i32 0, ptr null, i32 1300000, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.41, ptr @.str.42, ptr @.str.41, i8 0, ptr @.str.10, ptr null, i32 1, i8 0, i32 16, i32 0, ptr @axp20x_ops, i32 0, i32 0, ptr null, i32 1800000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 40, i32 240, i32 0, i32 0, i32 0, i32 0, i32 0, i32 18, i32 4, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.43, ptr @.str.44, ptr @.str.43, i8 0, ptr @.str.10, ptr null, i32 2, i8 0, i32 113, i32 0, ptr @axp20x_ops, i32 0, i32 0, ptr null, i32 700000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 41, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 18, i32 64, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.45, ptr @.str.42, ptr @.str.45, i8 0, ptr @.str.10, ptr null, i32 3, i8 0, i32 16, i32 0, ptr @axp20x_ops_range, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @axp20x_ldo4_ranges, ptr null, i32 5, ptr null, ptr null, i32 0, i32 0, i32 40, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 18, i32 8, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.46, ptr @.str.47, ptr @.str.46, i8 0, ptr @.str.10, ptr null, i32 4, i8 0, i32 16, i32 0, ptr @axp20x_ops, i32 0, i32 0, ptr null, i32 1800000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 145, i32 240, i32 0, i32 0, i32 0, i32 0, i32 0, i32 144, i32 15, i32 3, i32 7, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.11, ptr @.str.12, ptr @.str.11, i8 0, ptr @.str.10, ptr null, i32 5, i8 0, i32 64, i32 0, ptr @axp20x_ops, i32 0, i32 0, ptr null, i32 700000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 35, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 18, i32 16, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.13, ptr @.str.14, ptr @.str.13, i8 0, ptr @.str.10, ptr null, i32 6, i8 0, i32 113, i32 0, ptr @axp20x_ops, i32 0, i32 0, ptr null, i32 700000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 39, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i32 18, i32 2, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }], align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"x-powers,drive-vbus-en\00", align 1
@axp803_regulators = internal constant [22 x %struct.regulator_desc] [%struct.regulator_desc { ptr @.str.8, ptr @.str.9, ptr @.str.8, i8 0, ptr @.str.10, ptr null, i32 0, i8 0, i32 19, i32 0, ptr @axp20x_ops, i32 0, i32 0, ptr null, i32 1600000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 32, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 16, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.11, ptr @.str.12, ptr @.str.11, i8 0, ptr @.str.10, ptr null, i32 1, i8 0, i32 76, i32 0, ptr @axp20x_ops_range, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @axp803_dcdc234_ranges, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 33, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 16, i32 2, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.13, ptr @.str.14, ptr @.str.13, i8 0, ptr @.str.10, ptr null, i32 2, i8 0, i32 76, i32 0, ptr @axp20x_ops_range, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @axp803_dcdc234_ranges, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 34, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 16, i32 4, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.15, ptr @.str.16, ptr @.str.15, i8 0, ptr @.str.10, ptr null, i32 3, i8 0, i32 76, i32 0, ptr @axp20x_ops_range, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @axp803_dcdc234_ranges, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 35, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 16, i32 8, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.17, ptr @.str.18, ptr @.str.17, i8 0, ptr @.str.10, ptr null, i32 4, i8 0, i32 69, i32 0, ptr @axp20x_ops_range, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @axp803_dcdc5_ranges, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 36, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 16, i32 16, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.48, ptr @.str.49, ptr @.str.48, i8 0, ptr @.str.10, ptr null, i32 5, i8 0, i32 72, i32 0, ptr @axp20x_ops_range, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @axp803_dcdc6_ranges, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 37, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 16, i32 32, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.19, ptr null, ptr @.str.19, i8 0, ptr @.str.10, ptr null, i32 6, i8 0, i32 0, i32 0, ptr @axp20x_ops_sw, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 18, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.21, ptr @.str.22, ptr @.str.21, i8 0, ptr @.str.10, ptr null, i32 7, i8 0, i32 27, i32 0, ptr @axp20x_ops, i32 0, i32 0, ptr null, i32 700000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 40, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 19, i32 32, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.23, ptr @.str.22, ptr @.str.23, i8 0, ptr @.str.10, ptr null, i32 8, i8 0, i32 27, i32 0, ptr @axp20x_ops, i32 0, i32 0, ptr null, i32 700000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 41, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 19, i32 64, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.24, ptr @.str.22, ptr @.str.24, i8 0, ptr @.str.10, ptr null, i32 9, i8 0, i32 27, i32 0, ptr @axp20x_ops, i32 0, i32 0, ptr null, i32 700000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 42, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 19, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.29, ptr @.str.30, ptr @.str.29, i8 0, ptr @.str.10, ptr null, i32 10, i8 0, i32 27, i32 0, ptr @axp20x_ops, i32 0, i32 0, ptr null, i32 700000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 21, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 18, i32 8, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.31, ptr @.str.30, ptr @.str.31, i8 0, ptr @.str.10, ptr null, i32 11, i8 0, i32 32, i32 0, ptr @axp20x_ops_range, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @axp803_dldo2_ranges, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 22, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 18, i32 16, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.32, ptr @.str.30, ptr @.str.32, i8 0, ptr @.str.10, ptr null, i32 12, i8 0, i32 27, i32 0, ptr @axp20x_ops, i32 0, i32 0, ptr null, i32 700000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 23, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 18, i32 32, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.33, ptr @.str.30, ptr @.str.33, i8 0, ptr @.str.10, ptr null, i32 13, i8 0, i32 27, i32 0, ptr @axp20x_ops, i32 0, i32 0, ptr null, i32 700000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 24, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 18, i32 64, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.25, ptr @.str.26, ptr @.str.25, i8 0, ptr @.str.10, ptr null, i32 14, i8 0, i32 25, i32 0, ptr @axp20x_ops, i32 0, i32 0, ptr null, i32 700000, i32 50000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 25, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 18, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.27, ptr @.str.26, ptr @.str.27, i8 0, ptr @.str.10, ptr null, i32 15, i8 0, i32 25, i32 0, ptr @axp20x_ops, i32 0, i32 0, ptr null, i32 700000, i32 50000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 26, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 18, i32 2, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.28, ptr @.str.26, ptr @.str.28, i8 0, ptr @.str.10, ptr null, i32 16, i8 0, i32 25, i32 0, ptr @axp20x_ops, i32 0, i32 0, ptr null, i32 700000, i32 50000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 27, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 18, i32 4, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.50, ptr @.str.51, ptr @.str.50, i8 0, ptr @.str.10, ptr null, i32 17, i8 0, i32 16, i32 0, ptr @axp20x_ops, i32 0, i32 0, ptr null, i32 700000, i32 50000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 28, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 19, i32 4, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.52, ptr @.str.51, ptr @.str.52, i8 0, ptr @.str.10, ptr null, i32 18, i8 0, i32 16, i32 0, ptr @axp20x_ops, i32 0, i32 0, ptr null, i32 700000, i32 50000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 29, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 19, i32 8, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.53, ptr @.str.35, ptr @.str.53, i8 0, ptr @.str.10, ptr null, i32 19, i8 0, i32 1, i32 0, ptr @axp20x_ops_fixed, i32 0, i32 0, ptr null, i32 3000000, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.54, ptr @.str.35, ptr @.str.54, i8 0, ptr @.str.10, ptr null, i32 20, i8 0, i32 27, i32 0, ptr @axp20x_ops, i32 0, i32 0, ptr null, i32 700000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 145, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 144, i32 15, i32 3, i32 4, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.55, ptr @.str.35, ptr @.str.55, i8 0, ptr @.str.10, ptr null, i32 21, i8 0, i32 27, i32 0, ptr @axp20x_ops, i32 0, i32 0, ptr null, i32 700000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 147, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 146, i32 15, i32 3, i32 4, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }], align 4
@axp806_regulators = internal constant [16 x %struct.regulator_desc] [%struct.regulator_desc { ptr @.str.56, ptr @.str.57, ptr @.str.56, i8 0, ptr @.str.10, ptr null, i32 0, i8 0, i32 72, i32 0, ptr @axp20x_ops_range, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @axp806_dcdca_ranges, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 18, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 16, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.58, ptr @.str.59, ptr @.str.58, i8 0, ptr @.str.10, ptr null, i32 1, i8 0, i32 32, i32 0, ptr @axp20x_ops, i32 0, i32 0, ptr null, i32 1000000, i32 50000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 19, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 16, i32 2, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.60, ptr @.str.61, ptr @.str.60, i8 0, ptr @.str.10, ptr null, i32 2, i8 0, i32 72, i32 0, ptr @axp20x_ops_range, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @axp806_dcdca_ranges, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 20, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 16, i32 4, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.62, ptr @.str.63, ptr @.str.62, i8 0, ptr @.str.10, ptr null, i32 3, i8 0, i32 64, i32 0, ptr @axp20x_ops_range, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @axp806_dcdcd_ranges, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 21, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 16, i32 8, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.64, ptr @.str.65, ptr @.str.64, i8 0, ptr @.str.10, ptr null, i32 4, i8 0, i32 24, i32 0, ptr @axp20x_ops, i32 0, i32 0, ptr null, i32 1100000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 22, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 16, i32 16, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.21, ptr @.str.22, ptr @.str.21, i8 0, ptr @.str.10, ptr null, i32 5, i8 0, i32 27, i32 0, ptr @axp20x_ops, i32 0, i32 0, ptr null, i32 700000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 23, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 16, i32 32, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.23, ptr @.str.22, ptr @.str.23, i8 0, ptr @.str.10, ptr null, i32 6, i8 0, i32 28, i32 0, ptr @axp20x_ops, i32 0, i32 0, ptr null, i32 700000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 24, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 16, i32 64, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.24, ptr @.str.22, ptr @.str.24, i8 0, ptr @.str.10, ptr null, i32 7, i8 0, i32 27, i32 0, ptr @axp20x_ops, i32 0, i32 0, ptr null, i32 700000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 25, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 16, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.66, ptr @.str.67, ptr @.str.66, i8 0, ptr @.str.10, ptr null, i32 8, i8 0, i32 13, i32 0, ptr @axp20x_ops, i32 0, i32 0, ptr null, i32 700000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 32, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 17, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.68, ptr @.str.67, ptr @.str.68, i8 0, ptr @.str.10, ptr null, i32 9, i8 0, i32 13, i32 0, ptr @axp20x_ops, i32 0, i32 0, ptr null, i32 700000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 33, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 17, i32 2, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.69, ptr @.str.67, ptr @.str.69, i8 0, ptr @.str.10, ptr null, i32 10, i8 0, i32 13, i32 0, ptr @axp20x_ops, i32 0, i32 0, ptr null, i32 700000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 34, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 17, i32 4, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.70, ptr @.str.67, ptr @.str.70, i8 0, ptr @.str.10, ptr null, i32 11, i8 0, i32 13, i32 0, ptr @axp20x_ops, i32 0, i32 0, ptr null, i32 700000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 35, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 17, i32 8, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.71, ptr @.str.72, ptr @.str.71, i8 0, ptr @.str.10, ptr null, i32 12, i8 0, i32 27, i32 0, ptr @axp20x_ops, i32 0, i32 0, ptr null, i32 700000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 36, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 17, i32 16, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.73, ptr @.str.72, ptr @.str.73, i8 0, ptr @.str.10, ptr null, i32 13, i8 0, i32 32, i32 0, ptr @axp20x_ops_range, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @axp803_dldo2_ranges, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 37, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 17, i32 32, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.74, ptr @.str.72, ptr @.str.74, i8 0, ptr @.str.10, ptr null, i32 14, i8 0, i32 27, i32 0, ptr @axp20x_ops, i32 0, i32 0, ptr null, i32 700000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 38, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 17, i32 64, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.75, ptr @.str.76, ptr @.str.75, i8 0, ptr @.str.10, ptr null, i32 15, i8 0, i32 0, i32 0, ptr @axp20x_ops_sw, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 17, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }], align 4
@axp809_regulators = internal constant [19 x %struct.regulator_desc] [%struct.regulator_desc { ptr @.str.8, ptr @.str.9, ptr @.str.8, i8 0, ptr @.str.10, ptr null, i32 0, i8 0, i32 19, i32 0, ptr @axp20x_ops, i32 0, i32 0, ptr null, i32 1600000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 33, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 16, i32 2, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.11, ptr @.str.12, ptr @.str.11, i8 0, ptr @.str.10, ptr null, i32 1, i8 0, i32 48, i32 0, ptr @axp20x_ops, i32 0, i32 0, ptr null, i32 600000, i32 20000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 34, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 16, i32 4, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.13, ptr @.str.14, ptr @.str.13, i8 0, ptr @.str.10, ptr null, i32 2, i8 0, i32 64, i32 0, ptr @axp20x_ops, i32 0, i32 0, ptr null, i32 600000, i32 20000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 35, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 16, i32 8, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.15, ptr @.str.16, ptr @.str.15, i8 0, ptr @.str.10, ptr null, i32 3, i8 0, i32 57, i32 0, ptr @axp20x_ops_range, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @axp809_dcdc4_ranges, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 36, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 16, i32 16, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.17, ptr @.str.18, ptr @.str.17, i8 0, ptr @.str.10, ptr null, i32 4, i8 0, i32 32, i32 0, ptr @axp20x_ops, i32 0, i32 0, ptr null, i32 1000000, i32 50000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 37, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 16, i32 32, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.19, ptr null, ptr @.str.19, i8 0, ptr @.str.10, ptr null, i32 5, i8 0, i32 0, i32 0, ptr @axp20x_ops_sw, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 18, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.20, ptr null, ptr @.str.20, i8 0, ptr @.str.10, ptr null, i32 6, i8 0, i32 8, i32 0, ptr @axp20x_ops, i32 0, i32 0, ptr null, i32 700000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 28, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 16, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.21, ptr @.str.22, ptr @.str.21, i8 0, ptr @.str.10, ptr null, i32 7, i8 0, i32 27, i32 0, ptr @axp20x_ops, i32 0, i32 0, ptr null, i32 700000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 40, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 16, i32 64, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.23, ptr @.str.22, ptr @.str.23, i8 0, ptr @.str.10, ptr null, i32 8, i8 0, i32 27, i32 0, ptr @axp20x_ops, i32 0, i32 0, ptr null, i32 700000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 41, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 16, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.24, ptr @.str.22, ptr @.str.24, i8 0, ptr @.str.10, ptr null, i32 9, i8 0, i32 27, i32 0, ptr @axp20x_ops, i32 0, i32 0, ptr null, i32 700000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 42, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 18, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.25, ptr @.str.26, ptr @.str.25, i8 0, ptr @.str.10, ptr null, i32 10, i8 0, i32 27, i32 0, ptr @axp20x_ops, i32 0, i32 0, ptr null, i32 700000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 25, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 18, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.27, ptr @.str.26, ptr @.str.27, i8 0, ptr @.str.10, ptr null, i32 11, i8 0, i32 27, i32 0, ptr @axp20x_ops, i32 0, i32 0, ptr null, i32 700000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 26, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 18, i32 2, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.28, ptr @.str.26, ptr @.str.28, i8 0, ptr @.str.10, ptr null, i32 12, i8 0, i32 27, i32 0, ptr @axp20x_ops, i32 0, i32 0, ptr null, i32 700000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 27, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 18, i32 4, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.29, ptr @.str.30, ptr @.str.29, i8 0, ptr @.str.10, ptr null, i32 13, i8 0, i32 32, i32 0, ptr @axp20x_ops_range, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @axp803_dldo2_ranges, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 21, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 18, i32 8, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.31, ptr @.str.30, ptr @.str.31, i8 0, ptr @.str.10, ptr null, i32 14, i8 0, i32 27, i32 0, ptr @axp20x_ops, i32 0, i32 0, ptr null, i32 700000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 22, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 18, i32 16, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.34, ptr @.str.35, ptr @.str.34, i8 0, ptr @.str.10, ptr null, i32 15, i8 0, i32 1, i32 0, ptr @axp20x_ops_fixed, i32 0, i32 0, ptr null, i32 1800000, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.36, ptr @.str.35, ptr @.str.36, i8 0, ptr @.str.10, ptr null, i32 16, i8 0, i32 32, i32 0, ptr @axp20x_ops, i32 0, i32 0, ptr null, i32 700000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 145, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 144, i32 15, i32 3, i32 4, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.37, ptr @.str.35, ptr @.str.37, i8 0, ptr @.str.10, ptr null, i32 17, i8 0, i32 32, i32 0, ptr @axp20x_ops, i32 0, i32 0, ptr null, i32 700000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 147, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 146, i32 15, i32 3, i32 4, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.75, ptr @.str.76, ptr @.str.75, i8 0, ptr @.str.10, ptr null, i32 18, i8 0, i32 0, i32 0, ptr @axp20x_ops_sw, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 18, i32 64, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }], align 4
@axp813_regulators = internal constant [24 x %struct.regulator_desc] [%struct.regulator_desc { ptr @.str.8, ptr @.str.9, ptr @.str.8, i8 0, ptr @.str.10, ptr null, i32 0, i8 0, i32 19, i32 0, ptr @axp20x_ops, i32 0, i32 0, ptr null, i32 1600000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 32, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 16, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.11, ptr @.str.12, ptr @.str.11, i8 0, ptr @.str.10, ptr null, i32 1, i8 0, i32 76, i32 0, ptr @axp20x_ops_range, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @axp803_dcdc234_ranges, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 33, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 16, i32 2, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.13, ptr @.str.14, ptr @.str.13, i8 0, ptr @.str.10, ptr null, i32 2, i8 0, i32 76, i32 0, ptr @axp20x_ops_range, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @axp803_dcdc234_ranges, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 34, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 16, i32 4, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.15, ptr @.str.16, ptr @.str.15, i8 0, ptr @.str.10, ptr null, i32 3, i8 0, i32 76, i32 0, ptr @axp20x_ops_range, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @axp803_dcdc234_ranges, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 35, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 16, i32 8, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.17, ptr @.str.18, ptr @.str.17, i8 0, ptr @.str.10, ptr null, i32 4, i8 0, i32 69, i32 0, ptr @axp20x_ops_range, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @axp803_dcdc5_ranges, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 36, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 16, i32 16, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.48, ptr @.str.49, ptr @.str.48, i8 0, ptr @.str.10, ptr null, i32 5, i8 0, i32 72, i32 0, ptr @axp20x_ops_range, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @axp803_dcdc6_ranges, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 37, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 16, i32 32, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.77, ptr @.str.78, ptr @.str.77, i8 0, ptr @.str.10, ptr null, i32 6, i8 0, i32 72, i32 0, ptr @axp20x_ops_range, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @axp803_dcdc6_ranges, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 38, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 16, i32 64, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.21, ptr @.str.22, ptr @.str.21, i8 0, ptr @.str.10, ptr null, i32 7, i8 0, i32 27, i32 0, ptr @axp20x_ops, i32 0, i32 0, ptr null, i32 700000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 40, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 19, i32 32, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.23, ptr @.str.22, ptr @.str.23, i8 0, ptr @.str.10, ptr null, i32 8, i8 0, i32 27, i32 0, ptr @axp20x_ops, i32 0, i32 0, ptr null, i32 700000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 41, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 19, i32 64, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.24, ptr @.str.22, ptr @.str.24, i8 0, ptr @.str.10, ptr null, i32 9, i8 0, i32 27, i32 0, ptr @axp20x_ops, i32 0, i32 0, ptr null, i32 700000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 42, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 19, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.29, ptr @.str.30, ptr @.str.29, i8 0, ptr @.str.10, ptr null, i32 10, i8 0, i32 27, i32 0, ptr @axp20x_ops, i32 0, i32 0, ptr null, i32 700000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 21, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 18, i32 8, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.31, ptr @.str.30, ptr @.str.31, i8 0, ptr @.str.10, ptr null, i32 11, i8 0, i32 32, i32 0, ptr @axp20x_ops_range, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @axp803_dldo2_ranges, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 22, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 18, i32 16, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.32, ptr @.str.30, ptr @.str.32, i8 0, ptr @.str.10, ptr null, i32 12, i8 0, i32 27, i32 0, ptr @axp20x_ops, i32 0, i32 0, ptr null, i32 700000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 23, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 18, i32 32, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.33, ptr @.str.30, ptr @.str.33, i8 0, ptr @.str.10, ptr null, i32 13, i8 0, i32 27, i32 0, ptr @axp20x_ops, i32 0, i32 0, ptr null, i32 700000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 24, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 18, i32 64, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.25, ptr @.str.26, ptr @.str.25, i8 0, ptr @.str.10, ptr null, i32 14, i8 0, i32 25, i32 0, ptr @axp20x_ops, i32 0, i32 0, ptr null, i32 700000, i32 50000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 25, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 18, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.27, ptr @.str.26, ptr @.str.27, i8 0, ptr @.str.10, ptr null, i32 15, i8 0, i32 25, i32 0, ptr @axp20x_ops, i32 0, i32 0, ptr null, i32 700000, i32 50000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 26, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 18, i32 2, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.28, ptr @.str.26, ptr @.str.28, i8 0, ptr @.str.10, ptr null, i32 16, i8 0, i32 25, i32 0, ptr @axp20x_ops, i32 0, i32 0, ptr null, i32 700000, i32 50000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 27, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 18, i32 4, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.50, ptr @.str.51, ptr @.str.50, i8 0, ptr @.str.10, ptr null, i32 17, i8 0, i32 16, i32 0, ptr @axp20x_ops, i32 0, i32 0, ptr null, i32 700000, i32 50000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 28, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 19, i32 4, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.52, ptr @.str.51, ptr @.str.52, i8 0, ptr @.str.10, ptr null, i32 18, i8 0, i32 16, i32 0, ptr @axp20x_ops, i32 0, i32 0, ptr null, i32 700000, i32 50000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 29, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 19, i32 8, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc zeroinitializer, %struct.regulator_desc { ptr @.str.53, ptr @.str.35, ptr @.str.53, i8 0, ptr @.str.10, ptr null, i32 20, i8 0, i32 1, i32 0, ptr @axp20x_ops_fixed, i32 0, i32 0, ptr null, i32 1800000, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.54, ptr @.str.35, ptr @.str.54, i8 0, ptr @.str.10, ptr null, i32 21, i8 0, i32 27, i32 0, ptr @axp20x_ops, i32 0, i32 0, ptr null, i32 700000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 145, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 144, i32 15, i32 3, i32 4, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.55, ptr @.str.35, ptr @.str.55, i8 0, ptr @.str.10, ptr null, i32 22, i8 0, i32 27, i32 0, ptr @axp20x_ops, i32 0, i32 0, ptr null, i32 700000, i32 100000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 147, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 146, i32 15, i32 3, i32 4, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.75, ptr @.str.76, ptr @.str.75, i8 0, ptr @.str.10, ptr null, i32 23, i8 0, i32 0, i32 0, ptr @axp20x_ops_sw, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 18, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }], align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"Unsupported AXP variant: %ld\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Failed to register %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"x-powers,dcdc-workmode\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"Failed to set workmode on %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"regulator-name\00", align 1
@axp22x_drivevbus_regulator = internal constant %struct.regulator_desc { ptr @.str.86, ptr @.str.86, ptr @.str.86, i8 0, ptr @.str.10, ptr null, i32 0, i8 0, i32 0, i32 0, ptr @axp20x_ops_sw, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 48, i32 4, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, align 4
@.str.7 = private unnamed_addr constant [30 x i8] c"Failed to register drivevbus\0A\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"dcdc1\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"vin1\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"regulators\00", align 1
@axp20x_ops = internal constant %struct.regulator_ops { ptr @regulator_list_voltage_linear, ptr null, ptr null, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @axp20x_regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr @axp20x_set_ramp_delay, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.11 = private unnamed_addr constant [6 x i8] c"dcdc2\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"vin2\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"dcdc3\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"vin3\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"dcdc4\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"vin4\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"dcdc5\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"vin5\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"dc1sw\00", align 1
@axp20x_ops_sw = internal constant %struct.regulator_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.20 = private unnamed_addr constant [7 x i8] c"dc5ldo\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"aldo1\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"aldoin\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"aldo2\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"aldo3\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"eldo1\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"eldoin\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"eldo2\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"eldo3\00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"dldo1\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"dldoin\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"dldo2\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"dldo3\00", align 1
@.str.33 = private unnamed_addr constant [6 x i8] c"dldo4\00", align 1
@.str.34 = private unnamed_addr constant [8 x i8] c"rtc_ldo\00", align 1
@.str.35 = private unnamed_addr constant [4 x i8] c"ips\00", align 1
@axp20x_ops_fixed = internal constant %struct.regulator_ops { ptr @regulator_list_voltage_linear, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.36 = private unnamed_addr constant [8 x i8] c"ldo_io0\00", align 1
@.str.37 = private unnamed_addr constant [8 x i8] c"ldo_io1\00", align 1
@.str.38 = private unnamed_addr constant [26 x i8] c"unsupported ramp value %d\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"ldo1\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c"acin\00", align 1
@.str.41 = private unnamed_addr constant [5 x i8] c"ldo2\00", align 1
@.str.42 = private unnamed_addr constant [8 x i8] c"ldo24in\00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c"ldo3\00", align 1
@.str.44 = private unnamed_addr constant [7 x i8] c"ldo3in\00", align 1
@.str.45 = private unnamed_addr constant [5 x i8] c"ldo4\00", align 1
@axp20x_ops_range = internal constant %struct.regulator_ops { ptr @regulator_list_voltage_linear_range, ptr null, ptr null, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@axp20x_ldo4_ranges = internal constant [5 x %struct.linear_range] [%struct.linear_range { i32 1250000, i32 0, i32 0, i32 0 }, %struct.linear_range { i32 1300000, i32 1, i32 8, i32 100000 }, %struct.linear_range { i32 2500000, i32 9, i32 9, i32 0 }, %struct.linear_range { i32 2700000, i32 10, i32 11, i32 100000 }, %struct.linear_range { i32 3000000, i32 12, i32 15, i32 100000 }], align 4
@.str.46 = private unnamed_addr constant [5 x i8] c"ldo5\00", align 1
@.str.47 = private unnamed_addr constant [7 x i8] c"ldo5in\00", align 1
@axp803_dcdc234_ranges = internal constant [2 x %struct.linear_range] [%struct.linear_range { i32 500000, i32 0, i32 70, i32 10000 }, %struct.linear_range { i32 1220000, i32 71, i32 75, i32 20000 }], align 4
@axp803_dcdc5_ranges = internal constant [2 x %struct.linear_range] [%struct.linear_range { i32 800000, i32 0, i32 32, i32 10000 }, %struct.linear_range { i32 1140000, i32 33, i32 68, i32 20000 }], align 4
@.str.48 = private unnamed_addr constant [6 x i8] c"dcdc6\00", align 1
@.str.49 = private unnamed_addr constant [5 x i8] c"vin6\00", align 1
@axp803_dcdc6_ranges = internal constant [2 x %struct.linear_range] [%struct.linear_range { i32 600000, i32 0, i32 50, i32 10000 }, %struct.linear_range { i32 1120000, i32 51, i32 71, i32 20000 }], align 4
@axp803_dldo2_ranges = internal constant [2 x %struct.linear_range] [%struct.linear_range { i32 700000, i32 0, i32 26, i32 100000 }, %struct.linear_range { i32 3400000, i32 27, i32 31, i32 200000 }], align 4
@.str.50 = private unnamed_addr constant [6 x i8] c"fldo1\00", align 1
@.str.51 = private unnamed_addr constant [7 x i8] c"fldoin\00", align 1
@.str.52 = private unnamed_addr constant [6 x i8] c"fldo2\00", align 1
@.str.53 = private unnamed_addr constant [8 x i8] c"rtc-ldo\00", align 1
@.str.54 = private unnamed_addr constant [8 x i8] c"ldo-io0\00", align 1
@.str.55 = private unnamed_addr constant [8 x i8] c"ldo-io1\00", align 1
@.str.56 = private unnamed_addr constant [6 x i8] c"dcdca\00", align 1
@.str.57 = private unnamed_addr constant [5 x i8] c"vina\00", align 1
@axp806_dcdca_ranges = internal constant [2 x %struct.linear_range] [%struct.linear_range { i32 600000, i32 0, i32 50, i32 10000 }, %struct.linear_range { i32 1120000, i32 51, i32 71, i32 20000 }], align 4
@.str.58 = private unnamed_addr constant [6 x i8] c"dcdcb\00", align 1
@.str.59 = private unnamed_addr constant [5 x i8] c"vinb\00", align 1
@.str.60 = private unnamed_addr constant [6 x i8] c"dcdcc\00", align 1
@.str.61 = private unnamed_addr constant [5 x i8] c"vinc\00", align 1
@.str.62 = private unnamed_addr constant [6 x i8] c"dcdcd\00", align 1
@.str.63 = private unnamed_addr constant [5 x i8] c"vind\00", align 1
@axp806_dcdcd_ranges = internal constant [2 x %struct.linear_range] [%struct.linear_range { i32 600000, i32 0, i32 45, i32 20000 }, %struct.linear_range { i32 1600000, i32 46, i32 63, i32 100000 }], align 4
@.str.64 = private unnamed_addr constant [6 x i8] c"dcdce\00", align 1
@.str.65 = private unnamed_addr constant [5 x i8] c"vine\00", align 1
@.str.66 = private unnamed_addr constant [6 x i8] c"bldo1\00", align 1
@.str.67 = private unnamed_addr constant [7 x i8] c"bldoin\00", align 1
@.str.68 = private unnamed_addr constant [6 x i8] c"bldo2\00", align 1
@.str.69 = private unnamed_addr constant [6 x i8] c"bldo3\00", align 1
@.str.70 = private unnamed_addr constant [6 x i8] c"bldo4\00", align 1
@.str.71 = private unnamed_addr constant [6 x i8] c"cldo1\00", align 1
@.str.72 = private unnamed_addr constant [7 x i8] c"cldoin\00", align 1
@.str.73 = private unnamed_addr constant [6 x i8] c"cldo2\00", align 1
@.str.74 = private unnamed_addr constant [6 x i8] c"cldo3\00", align 1
@.str.75 = private unnamed_addr constant [3 x i8] c"sw\00", align 1
@.str.76 = private unnamed_addr constant [5 x i8] c"swin\00", align 1
@axp809_dcdc4_ranges = internal constant [2 x %struct.linear_range] [%struct.linear_range { i32 600000, i32 0, i32 47, i32 20000 }, %struct.linear_range { i32 1800000, i32 48, i32 56, i32 100000 }], align 4
@.str.77 = private unnamed_addr constant [6 x i8] c"dcdc7\00", align 1
@.str.78 = private unnamed_addr constant [5 x i8] c"vin7\00", align 1
@.str.79 = private unnamed_addr constant [27 x i8] c"regulators node not found\0A\00", align 1
@.str.80 = private unnamed_addr constant [19 x i8] c"x-powers,dcdc-freq\00", align 1
@.str.81 = private unnamed_addr constant [34 x i8] c"Error setting dcdc frequency: %d\0A\00", align 1
@.str.82 = private unnamed_addr constant [52 x i8] c"Setting DCDC frequency for unsupported AXP variant\0A\00", align 1
@.str.83 = private unnamed_addr constant [38 x i8] c"DCDC frequency too low. Set to %ukHz\0A\00", align 1
@.str.84 = private unnamed_addr constant [39 x i8] c"DCDC frequency too high. Set to %ukHz\0A\00", align 1
@.str.85 = private unnamed_addr constant [37 x i8] c"drivers/regulator/axp20x-regulator.c\00", align 1
@.str.86 = private unnamed_addr constant [10 x i8] c"drivevbus\00", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_alias252, ptr @__UNIQUE_ID_author250, ptr @__UNIQUE_ID_description251, ptr @__UNIQUE_ID_file248, ptr @__UNIQUE_ID_license249, ptr @__exitcall_axp20x_regulator_driver_exit, ptr @__initcall__kmod_axp20x_regulator__247_1370_axp20x_regulator_driver_init6, ptr @axp20x_regulator_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @axp20x_regulator_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @axp20x_regulator_driver, ptr noundef null) #7
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @axp20x_regulator_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @axp20x_regulator_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @axp20x_regulator_probe(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.regulator_config, align 4
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 4
  %7 = alloca ptr, align 4
  %8 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %9 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 8
  %12 = load ptr, ptr %11, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #7
  store ptr %10, ptr %4, align 4
  %13 = getelementptr inbounds %struct.regulator_config, ptr %4, i32 0, i32 1
  store ptr null, ptr %13, align 4
  %14 = getelementptr inbounds %struct.regulator_config, ptr %4, i32 0, i32 2
  store ptr %12, ptr %14, align 4
  %15 = getelementptr inbounds %struct.regulator_config, ptr %4, i32 0, i32 3
  store ptr null, ptr %15, align 4
  %16 = getelementptr inbounds %struct.regulator_config, ptr %4, i32 0, i32 4
  %17 = getelementptr inbounds %struct.axp20x_dev, ptr %12, i32 0, i32 3
  %18 = load ptr, ptr %17, align 4
  store ptr %18, ptr %16, align 4
  %19 = getelementptr inbounds %struct.regulator_config, ptr %4, i32 0, i32 5
  store ptr null, ptr %19, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #7
  store i32 0, ptr %5, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #7
  store ptr @.str.8, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #7
  store ptr @.str.17, ptr %7, align 4
  %20 = getelementptr inbounds %struct.axp20x_dev, ptr %12, i32 0, i32 5
  %21 = load i32, ptr %20, align 4
  switch i32 %21, label %39 [
    i32 1, label %40
    i32 2, label %40
    i32 3, label %22
    i32 4, label %22
    i32 6, label %27
    i32 7, label %32
    i32 8, label %33
    i32 9, label %34
  ]

22:                                               ; preds = %1, %1
  %23 = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 25
  %24 = load ptr, ptr %23, align 8
  %25 = tail call ptr @of_find_property(ptr noundef %24, ptr noundef nonnull @.str.1, ptr noundef null) #7
  %26 = icmp ne ptr %25, null
  br label %40

27:                                               ; preds = %1
  %28 = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 25
  %29 = load ptr, ptr %28, align 8
  %30 = tail call ptr @of_find_property(ptr noundef %29, ptr noundef nonnull @.str.1, ptr noundef null) #7
  %31 = icmp ne ptr %30, null
  br label %40

32:                                               ; preds = %1
  br label %40

33:                                               ; preds = %1
  br label %40

34:                                               ; preds = %1
  %35 = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 25
  %36 = load ptr, ptr %35, align 8
  %37 = tail call ptr @of_find_property(ptr noundef %36, ptr noundef nonnull @.str.1, ptr noundef null) #7
  %38 = icmp ne ptr %37, null
  br label %40

39:                                               ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.2, i32 noundef %21) #8
  br label %236

40:                                               ; preds = %34, %33, %32, %27, %22, %1, %1
  %41 = phi i1 [ false, %34 ], [ false, %33 ], [ false, %32 ], [ false, %27 ], [ true, %22 ], [ false, %1 ], [ false, %1 ]
  %42 = phi i1 [ false, %34 ], [ false, %33 ], [ false, %32 ], [ true, %27 ], [ false, %22 ], [ false, %1 ], [ false, %1 ]
  %43 = phi i1 [ false, %34 ], [ true, %33 ], [ false, %32 ], [ false, %27 ], [ false, %22 ], [ false, %1 ], [ false, %1 ]
  %44 = phi ptr [ @axp813_regulators, %34 ], [ @axp809_regulators, %33 ], [ @axp806_regulators, %32 ], [ @axp803_regulators, %27 ], [ @axp22x_regulators, %22 ], [ @axp20x_regulators, %1 ], [ @axp20x_regulators, %1 ]
  %45 = phi i32 [ 24, %34 ], [ 19, %33 ], [ 16, %32 ], [ 22, %27 ], [ 20, %22 ], [ 7, %1 ], [ 7, %1 ]
  %46 = phi i1 [ %38, %34 ], [ false, %33 ], [ false, %32 ], [ %31, %27 ], [ %26, %22 ], [ false, %1 ], [ false, %1 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  store i32 0, ptr %3, align 4
  %47 = load ptr, ptr %9, align 4
  %48 = getelementptr inbounds %struct.device, ptr %47, i32 0, i32 25
  %49 = load ptr, ptr %48, align 8
  %50 = tail call ptr @of_node_get(ptr noundef %49) #7
  %51 = icmp eq ptr %50, null
  br i1 %51, label %98, label %52

52:                                               ; preds = %40
  %53 = tail call ptr @of_get_child_by_name(ptr noundef nonnull %50, ptr noundef nonnull @.str.10) #7
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %8, ptr noundef nonnull @.str.79) #8
  br label %97

56:                                               ; preds = %52
  %57 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %53, ptr noundef nonnull @.str.80, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #7
  %58 = load i32, ptr %3, align 4
  %59 = load ptr, ptr %9, align 4
  %60 = getelementptr inbounds %struct.device, ptr %59, i32 0, i32 8
  %61 = load ptr, ptr %60, align 8
  %62 = getelementptr inbounds %struct.axp20x_dev, ptr %61, i32 0, i32 5
  %63 = load i32, ptr %62, align 4
  switch i32 %63, label %71 [
    i32 1, label %72
    i32 2, label %72
    i32 6, label %64
    i32 9, label %64
    i32 7, label %65
    i32 3, label %69
    i32 4, label %69
    i32 8, label %69
  ]

64:                                               ; preds = %56, %56
  br label %65

65:                                               ; preds = %64, %56
  %66 = phi i32 [ 55, %56 ], [ 59, %64 ]
  %67 = icmp eq i32 %63, 7
  %68 = select i1 %67, i32 28, i32 %66
  br label %69

69:                                               ; preds = %65, %56, %56, %56
  %70 = phi i32 [ 55, %56 ], [ 55, %56 ], [ 55, %56 ], [ %68, %65 ]
  br label %72

71:                                               ; preds = %56
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.82) #8
  br label %94

72:                                               ; preds = %69, %56, %56
  %73 = phi i32 [ %70, %69 ], [ 55, %56 ], [ 55, %56 ]
  %74 = phi i32 [ 1800, %69 ], [ 750, %56 ], [ 750, %56 ]
  %75 = phi i32 [ 4050, %69 ], [ 1875, %56 ], [ 1875, %56 ]
  %76 = phi i32 [ 3000, %69 ], [ 1500, %56 ], [ 1500, %56 ]
  %77 = phi i32 [ 150, %69 ], [ 75, %56 ], [ 75, %56 ]
  %78 = icmp eq i32 %58, 0
  %79 = select i1 %78, i32 %76, i32 %58
  %80 = icmp ult i32 %79, %74
  br i1 %80, label %81, label %82

81:                                               ; preds = %72
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %8, ptr noundef nonnull @.str.83, i32 noundef %74) #8
  br label %82

82:                                               ; preds = %81, %72
  %83 = phi i32 [ %74, %81 ], [ %79, %72 ]
  %84 = icmp ugt i32 %83, %75
  br i1 %84, label %85, label %86

85:                                               ; preds = %82
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %8, ptr noundef nonnull @.str.84, i32 noundef %75) #8
  br label %86

86:                                               ; preds = %85, %82
  %87 = phi i32 [ %75, %85 ], [ %83, %82 ]
  %88 = sub i32 %87, %74
  %89 = udiv i32 %88, %77
  %90 = getelementptr inbounds %struct.axp20x_dev, ptr %61, i32 0, i32 3
  %91 = load ptr, ptr %90, align 4
  %92 = call i32 @regmap_update_bits_base(ptr noundef %91, i32 noundef %73, i32 noundef 15, i32 noundef %89, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %86, %71
  %95 = phi i32 [ -22, %71 ], [ %92, %86 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.81, i32 noundef %95) #8
  br label %96

96:                                               ; preds = %94, %86
  call void @of_node_put(ptr noundef nonnull %53) #7
  br label %97

97:                                               ; preds = %96, %55
  call void @of_node_put(ptr noundef nonnull %50) #7
  br label %98

98:                                               ; preds = %97, %40
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  br label %99

99:                                               ; preds = %225, %98
  %100 = phi i32 [ 0, %98 ], [ %226, %225 ]
  %101 = getelementptr %struct.regulator_desc, ptr %44, i32 %100
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  store i32 0, ptr %2, align 4
  %102 = load i32, ptr %20, align 4
  switch i32 %102, label %129 [
    i32 6, label %103
    i32 9, label %103
    i32 7, label %110
  ]

103:                                              ; preds = %99, %99
  %104 = load ptr, ptr %17, align 4
  %105 = call i32 @regmap_read(ptr noundef %104, i32 noundef 20, ptr noundef nonnull %2) #7
  switch i32 %100, label %129 [
    i32 2, label %125
    i32 5, label %106
  ]

106:                                              ; preds = %103
  %107 = load i32, ptr %2, align 4
  %108 = and i32 %107, 32
  %109 = icmp eq i32 %108, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  br i1 %109, label %134, label %225

110:                                              ; preds = %99
  %111 = load ptr, ptr %17, align 4
  %112 = call i32 @regmap_read(ptr noundef %111, i32 noundef 27, ptr noundef nonnull %2) #7
  switch i32 %100, label %129 [
    i32 1, label %113
    i32 2, label %117
    i32 4, label %121
  ]

113:                                              ; preds = %110
  %114 = load i32, ptr %2, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  %115 = trunc i32 %114 to i8
  %116 = and i8 %115, -64
  switch i8 %116, label %134 [
    i8 -128, label %225
    i8 64, label %225
  ]

117:                                              ; preds = %110
  %118 = load i32, ptr %2, align 4
  %119 = and i32 %118, 192
  %120 = icmp eq i32 %119, 128
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  br i1 %120, label %225, label %134

121:                                              ; preds = %110
  %122 = load i32, ptr %2, align 4
  %123 = and i32 %122, 32
  %124 = icmp eq i32 %123, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  br i1 %124, label %134, label %225

125:                                              ; preds = %103
  %126 = load i32, ptr %2, align 4
  %127 = and i32 %126, 64
  %128 = icmp eq i32 %127, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  br i1 %128, label %134, label %225

129:                                              ; preds = %110, %103, %99
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  %130 = load i32, ptr %20, align 4
  %131 = icmp eq i32 %130, 9
  %132 = icmp eq i32 %100, 19
  %133 = select i1 %131, i1 %132, i1 false
  br i1 %133, label %225, label %134

134:                                              ; preds = %129, %125, %121, %117, %113, %106
  %135 = icmp eq i32 %100, 5
  %136 = select i1 %41, i1 %135, i1 false
  %137 = icmp eq i32 %100, 6
  %138 = select i1 %42, i1 %137, i1 false
  %139 = select i1 %136, i1 true, i1 %138
  %140 = select i1 %43, i1 %135, i1 false
  %141 = select i1 %139, i1 true, i1 %140
  br i1 %141, label %142, label %148

142:                                              ; preds = %134
  %143 = call noalias ptr @devm_kmalloc(ptr noundef %8, i32 noundef 244, i32 noundef 3520) #7
  %144 = icmp eq ptr %143, null
  br i1 %144, label %236, label %145

145:                                              ; preds = %142
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(244) %143, ptr noundef align 4 dereferenceable(244) %101, i32 244, i1 false)
  %146 = load ptr, ptr %6, align 4
  %147 = getelementptr inbounds %struct.regulator_desc, ptr %143, i32 0, i32 1
  store ptr %146, ptr %147, align 4
  br label %148

148:                                              ; preds = %145, %134
  %149 = phi ptr [ %143, %145 ], [ %101, %134 ]
  %150 = select i1 %41, i1 %137, i1 false
  %151 = select i1 %43, i1 %137, i1 false
  %152 = select i1 %150, i1 true, i1 %151
  br i1 %152, label %153, label %159

153:                                              ; preds = %148
  %154 = call noalias ptr @devm_kmalloc(ptr noundef %8, i32 noundef 244, i32 noundef 3520) #7
  %155 = icmp eq ptr %154, null
  br i1 %155, label %236, label %156

156:                                              ; preds = %153
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(244) %154, ptr noundef align 4 dereferenceable(244) %101, i32 244, i1 false)
  %157 = load ptr, ptr %7, align 4
  %158 = getelementptr inbounds %struct.regulator_desc, ptr %154, i32 0, i32 1
  store ptr %157, ptr %158, align 4
  br label %159

159:                                              ; preds = %156, %148
  %160 = phi ptr [ %154, %156 ], [ %149, %148 ]
  %161 = call ptr @devm_regulator_register(ptr noundef %8, ptr noundef %160, ptr noundef nonnull %4) #7
  %162 = icmp ugt ptr %161, inttoptr (i32 -4096 to ptr)
  br i1 %162, label %163, label %166

163:                                              ; preds = %159
  %164 = load ptr, ptr %101, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.3, ptr noundef %164) #8
  %165 = ptrtoint ptr %161 to i32
  br label %236

166:                                              ; preds = %159
  %167 = getelementptr inbounds %struct.regulator_dev, ptr %161, i32 0, i32 13, i32 25
  %168 = load ptr, ptr %167, align 8
  %169 = call i32 @of_property_read_variable_u32_array(ptr noundef %168, ptr noundef nonnull @.str.4, ptr noundef nonnull %5, i32 noundef 1, i32 noundef 0) #7
  %170 = icmp sgt i32 %169, -1
  br i1 %170, label %171, label %209

171:                                              ; preds = %166
  %172 = load i32, ptr %5, align 4
  %173 = call ptr @rdev_get_drvdata(ptr noundef %161) #7
  %174 = getelementptr inbounds %struct.axp20x_dev, ptr %173, i32 0, i32 5
  %175 = load i32, ptr %174, align 4
  switch i32 %175, label %196 [
    i32 1, label %176
    i32 2, label %176
    i32 7, label %182
    i32 3, label %183
    i32 4, label %183
    i32 8, label %183
    i32 6, label %188
    i32 9, label %192
  ]

176:                                              ; preds = %171, %171
  %177 = add nsw i32 %100, -7
  %178 = icmp ult i32 %177, -2
  br i1 %178, label %206, label %179

179:                                              ; preds = %176
  %180 = select i1 %137, i32 2, i32 4
  %181 = call i32 @llvm.cttz.i32(i32 %180, i1 true) #7, !range !9
  br label %197

182:                                              ; preds = %171
  br label %183

183:                                              ; preds = %182, %171, %171, %171
  %184 = phi i32 [ 128, %171 ], [ 128, %171 ], [ 128, %171 ], [ 27, %182 ]
  %185 = icmp ugt i32 %100, 4
  br i1 %185, label %206, label %186

186:                                              ; preds = %183
  %187 = shl nuw nsw i32 1, %100
  br label %197

188:                                              ; preds = %171
  %189 = icmp ugt i32 %100, 5
  br i1 %189, label %206, label %190

190:                                              ; preds = %188
  %191 = shl nuw nsw i32 1, %100
  br label %197

192:                                              ; preds = %171
  %193 = icmp ugt i32 %100, 6
  br i1 %193, label %206, label %194

194:                                              ; preds = %192
  %195 = shl nuw nsw i32 1, %100
  br label %197

196:                                              ; preds = %171
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.85, i32 noundef 1150, i32 noundef 9, ptr noundef null) #7
  br label %206

197:                                              ; preds = %194, %190, %186, %179
  %198 = phi i32 [ %100, %194 ], [ %100, %190 ], [ %100, %186 ], [ %181, %179 ]
  %199 = phi i32 [ 128, %194 ], [ 128, %190 ], [ %184, %186 ], [ 128, %179 ]
  %200 = phi i32 [ %195, %194 ], [ %191, %190 ], [ %187, %186 ], [ %180, %179 ]
  %201 = shl i32 %172, %198
  %202 = getelementptr inbounds %struct.regulator_dev, ptr %161, i32 0, i32 17
  %203 = load ptr, ptr %202, align 4
  %204 = call i32 @regmap_update_bits_base(ptr noundef %203, i32 noundef %199, i32 noundef %200, i32 noundef %201, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %209, label %206

206:                                              ; preds = %197, %196, %192, %188, %183, %176
  %207 = load ptr, ptr %161, align 8
  %208 = load ptr, ptr %207, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.5, ptr noundef %208) #8
  br label %209

209:                                              ; preds = %206, %197, %166
  %210 = icmp eq i32 %100, 0
  %211 = select i1 %41, i1 %210, i1 false
  %212 = select i1 %43, i1 %210, i1 false
  %213 = select i1 %211, i1 true, i1 %212
  br i1 %213, label %214, label %217

214:                                              ; preds = %209
  %215 = load ptr, ptr %167, align 8
  %216 = call i32 @of_property_read_string(ptr noundef %215, ptr noundef nonnull @.str.6, ptr noundef nonnull %6) #7
  br label %217

217:                                              ; preds = %214, %209
  %218 = icmp eq i32 %100, 4
  %219 = select i1 %41, i1 %218, i1 false
  %220 = select i1 %43, i1 %218, i1 false
  %221 = select i1 %219, i1 true, i1 %220
  br i1 %221, label %222, label %225

222:                                              ; preds = %217
  %223 = load ptr, ptr %167, align 8
  %224 = call i32 @of_property_read_string(ptr noundef %223, ptr noundef nonnull @.str.6, ptr noundef nonnull %7) #7
  br label %225

225:                                              ; preds = %222, %217, %129, %125, %121, %117, %113, %113, %106
  %226 = add nuw nsw i32 %100, 1
  %227 = icmp eq i32 %226, %45
  br i1 %227, label %228, label %99

228:                                              ; preds = %225
  br i1 %46, label %229, label %236

229:                                              ; preds = %228
  %230 = load ptr, ptr %17, align 4
  %231 = call i32 @regmap_update_bits_base(ptr noundef %230, i32 noundef 143, i32 noundef 16, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %232 = call ptr @devm_regulator_register(ptr noundef %8, ptr noundef nonnull @axp22x_drivevbus_regulator, ptr noundef nonnull %4) #7
  %233 = icmp ugt ptr %232, inttoptr (i32 -4096 to ptr)
  br i1 %233, label %234, label %236

234:                                              ; preds = %229
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.7) #8
  %235 = ptrtoint ptr %232 to i32
  br label %236

236:                                              ; preds = %234, %229, %228, %163, %153, %142, %39
  %237 = phi i32 [ -22, %39 ], [ %235, %234 ], [ 0, %229 ], [ 0, %228 ], [ %165, %163 ], [ -12, %153 ], [ -12, %142 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #7
  ret i32 %237
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_list_voltage_linear(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_voltage_sel_regmap(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage_sel_regmap(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @axp20x_regulator_enable_regmap(ptr noundef %0) #2 {
  %2 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #7
  %3 = tail call i32 @rdev_get_id(ptr noundef %0) #7
  %4 = getelementptr inbounds %struct.axp20x_dev, ptr %2, i32 0, i32 5
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 2
  %7 = icmp eq i32 %3, 2
  %8 = select i1 %6, i1 %7, i1 false
  br i1 %8, label %9, label %32

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 14
  %11 = load ptr, ptr %10, align 8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %32, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.regulation_constraints, ptr %11, i32 0, i32 28
  %15 = load i16, ptr %14, align 4
  %16 = and i16 %15, 16
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %32, label %18

18:                                               ; preds = %13
  %19 = tail call i32 @regulator_is_enabled_regmap(ptr noundef %0) #7
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %18
  %22 = tail call i32 @regulator_get_voltage_sel_regmap(ptr noundef %0) #7
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %34, label %24

24:                                               ; preds = %21
  %25 = icmp eq i32 %22, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %24
  %27 = tail call i32 @regulator_set_voltage_sel_regmap(ptr noundef %0, i32 noundef 0) #7
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 5000, i32 noundef 2) #7
  %28 = tail call i32 @regulator_enable_regmap(ptr noundef %0) #7
  %29 = or i32 %28, %27
  %30 = tail call i32 @regulator_set_voltage_sel_regmap(ptr noundef %0, i32 noundef %22) #7
  %31 = or i32 %29, %30
  br label %34

32:                                               ; preds = %24, %18, %13, %9, %1
  %33 = tail call i32 @regulator_enable_regmap(ptr noundef %0) #7
  br label %34

34:                                               ; preds = %32, %26, %21
  %35 = phi i32 [ %33, %32 ], [ %31, %26 ], [ %22, %21 ]
  ret i32 %35
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable_regmap(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_is_enabled_regmap(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @axp20x_set_ramp_delay(ptr noundef %0, i32 noundef %1) #2 {
  %3 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #7
  %4 = tail call i32 @rdev_get_id(ptr noundef %0) #7
  %5 = getelementptr inbounds %struct.axp20x_dev, ptr %3, i32 0, i32 5
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 2
  br i1 %7, label %8, label %35

8:                                                ; preds = %2
  %9 = icmp eq i32 %4, 5
  br i1 %9, label %12, label %10

10:                                               ; preds = %8
  %11 = icmp eq i32 %4, 2
  br i1 %11, label %12, label %35

12:                                               ; preds = %10, %8
  %13 = phi i8 [ 4, %8 ], [ 8, %10 ]
  %14 = phi i32 [ 5, %8 ], [ 10, %10 ]
  %15 = icmp sgt i32 %1, 0
  %16 = select i1 %15, i8 %13, i8 0
  %17 = icmp eq i32 %1, 0
  br i1 %17, label %29, label %18

18:                                               ; preds = %12
  %19 = icmp sgt i32 %1, 1600
  br i1 %19, label %27, label %20

20:                                               ; preds = %18
  %21 = xor i1 %9, true
  %22 = zext i1 %21 to i8
  %23 = icmp sgt i32 %1, 800
  %24 = shl nuw nsw i8 1, %22
  %25 = select i1 %23, i8 0, i8 %24
  %26 = or i8 %25, %16
  br label %29

27:                                               ; preds = %18
  %28 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.38, i32 noundef %1) #8
  br label %35

29:                                               ; preds = %20, %12
  %30 = phi i8 [ %26, %20 ], [ %16, %12 ]
  %31 = getelementptr inbounds %struct.axp20x_dev, ptr %3, i32 0, i32 3
  %32 = load ptr, ptr %31, align 4
  %33 = zext i8 %30 to i32
  %34 = tail call i32 @regmap_update_bits_base(ptr noundef %32, i32 noundef 37, i32 noundef %14, i32 noundef %33, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %35

35:                                               ; preds = %29, %27, %10, %2
  %36 = phi i32 [ %34, %29 ], [ -524, %10 ], [ -524, %2 ], [ -22, %27 ]
  ret i32 %36
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdev_get_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable_regmap(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_list_voltage_linear_range(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_node_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn }
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
!8 = !{!"auto-init"}
!9 = !{i32 1, i32 33}
