; ModuleID = '/llk/IR/drivers/regulator/db8500-prcmu.c_pt.bc'
source_filename = "../drivers/regulator/db8500-prcmu.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dbx500_regulator_info = type { %struct.regulator_desc, i8, i16, i8, i8 }
%struct.regulator_desc = type { ptr, ptr, ptr, i8, ptr, ptr, i32, i8, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, ptr }
%struct.regulator_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.regulator_init_data = type { ptr, %struct.regulation_constraints, i32, ptr, ptr, ptr }
%struct.regulation_constraints = type { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i16 }
%struct.regulator_state = type { i32, i32, i32, i32, i32, i8 }
%struct.notification_limit = type { i32, i32, i32 }

@db8500_regulator_driver = internal global %struct.platform_driver { ptr @db8500_regulator_probe, ptr @db8500_regulator_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__initcall__kmod_db8500_prcmu__247_497_db8500_regulator_init3 = internal global ptr @db8500_regulator_init, section ".initcall3.init", align 4
@__exitcall_db8500_regulator_exit = internal global ptr @db8500_regulator_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author248 = internal constant [51 x i8] c"db8500_prcmu.author=STMicroelectronics/ST-Ericsson\00", section ".modinfo", align 1
@__UNIQUE_ID_description249 = internal constant [49 x i8] c"db8500_prcmu.description=DB8500 regulator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file250 = internal constant [49 x i8] c"db8500_prcmu.file=drivers/regulator/db8500-prcmu\00", section ".modinfo", align 1
@__UNIQUE_ID_license251 = internal constant [28 x i8] c"db8500_prcmu.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [24 x i8] c"db8500-prcmu-regulators\00", align 1
@dbx500_regulator_info = internal global [20 x %struct.dbx500_regulator_info] [%struct.dbx500_regulator_info { %struct.regulator_desc { ptr @.str.2, ptr null, ptr @.str.3, i8 0, ptr null, ptr null, i32 0, i8 0, i32 0, i32 0, ptr @db8500_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i8 0, i16 0, i8 0, i8 0 }, %struct.dbx500_regulator_info { %struct.regulator_desc { ptr @.str.4, ptr null, ptr @.str.5, i8 0, ptr null, ptr null, i32 1, i8 0, i32 0, i32 0, ptr @db8500_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i8 0, i16 0, i8 0, i8 0 }, %struct.dbx500_regulator_info { %struct.regulator_desc { ptr @.str.6, ptr null, ptr @.str.7, i8 0, ptr null, ptr null, i32 2, i8 0, i32 0, i32 0, ptr @db8500_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i8 0, i16 0, i8 0, i8 0 }, %struct.dbx500_regulator_info { %struct.regulator_desc { ptr @.str.8, ptr null, ptr @.str.9, i8 0, ptr null, ptr null, i32 3, i8 0, i32 0, i32 0, ptr @db8500_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i8 0, i16 0, i8 0, i8 0 }, %struct.dbx500_regulator_info { %struct.regulator_desc { ptr @.str.10, ptr null, ptr @.str.11, i8 0, ptr null, ptr null, i32 4, i8 0, i32 0, i32 0, ptr @db8500_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i8 0, i16 0, i8 0, i8 0 }, %struct.dbx500_regulator_info { %struct.regulator_desc { ptr @.str.12, ptr null, ptr @.str.13, i8 0, ptr null, ptr null, i32 5, i8 0, i32 1, i32 0, ptr @db8500_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 1800000, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i8 0, i16 0, i8 0, i8 1 }, %struct.dbx500_regulator_info { %struct.regulator_desc { ptr @.str.14, ptr null, ptr @.str.15, i8 0, ptr null, ptr null, i32 6, i8 0, i32 0, i32 0, ptr @db8500_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i8 0, i16 0, i8 0, i8 0 }, %struct.dbx500_regulator_info { %struct.regulator_desc { ptr @.str.16, ptr null, ptr @.str.17, i8 0, ptr null, ptr null, i32 7, i8 0, i32 0, i32 0, ptr @db8500_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i8 0, i16 0, i8 0, i8 0 }, %struct.dbx500_regulator_info { %struct.regulator_desc { ptr @.str.18, ptr null, ptr @.str.19, i8 0, ptr null, ptr null, i32 8, i8 0, i32 0, i32 0, ptr @db8500_regulator_switch_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i8 0, i16 0, i8 0, i8 0 }, %struct.dbx500_regulator_info { %struct.regulator_desc { ptr @.str.20, ptr null, ptr @.str.21, i8 0, ptr null, ptr null, i32 9, i8 0, i32 0, i32 0, ptr @db8500_regulator_switch_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i8 0, i16 0, i8 1, i8 0 }, %struct.dbx500_regulator_info { %struct.regulator_desc { ptr @.str.22, ptr null, ptr @.str.23, i8 0, ptr null, ptr null, i32 10, i8 0, i32 0, i32 0, ptr @db8500_regulator_switch_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i8 0, i16 1, i8 0, i8 0 }, %struct.dbx500_regulator_info { %struct.regulator_desc { ptr @.str.24, ptr null, ptr @.str.25, i8 0, ptr null, ptr null, i32 11, i8 0, i32 0, i32 0, ptr @db8500_regulator_switch_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i8 0, i16 2, i8 0, i8 0 }, %struct.dbx500_regulator_info { %struct.regulator_desc { ptr @.str.26, ptr null, ptr @.str.27, i8 0, ptr null, ptr null, i32 12, i8 0, i32 0, i32 0, ptr @db8500_regulator_switch_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i8 0, i16 2, i8 1, i8 0 }, %struct.dbx500_regulator_info { %struct.regulator_desc { ptr @.str.28, ptr null, ptr @.str.29, i8 0, ptr null, ptr null, i32 13, i8 0, i32 0, i32 0, ptr @db8500_regulator_switch_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i8 0, i16 3, i8 0, i8 0 }, %struct.dbx500_regulator_info { %struct.regulator_desc { ptr @.str.30, ptr null, ptr @.str.31, i8 0, ptr null, ptr null, i32 14, i8 0, i32 0, i32 0, ptr @db8500_regulator_switch_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i8 0, i16 4, i8 0, i8 0 }, %struct.dbx500_regulator_info { %struct.regulator_desc { ptr @.str.32, ptr null, ptr @.str.33, i8 0, ptr null, ptr null, i32 15, i8 0, i32 0, i32 0, ptr @db8500_regulator_switch_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i8 0, i16 5, i8 0, i8 0 }, %struct.dbx500_regulator_info { %struct.regulator_desc { ptr @.str.34, ptr null, ptr @.str.35, i8 0, ptr null, ptr null, i32 16, i8 0, i32 0, i32 0, ptr @db8500_regulator_switch_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i8 1, i16 6, i8 0, i8 0 }, %struct.dbx500_regulator_info { %struct.regulator_desc { ptr @.str.36, ptr null, ptr @.str.37, i8 0, ptr null, ptr null, i32 17, i8 0, i32 0, i32 0, ptr @db8500_regulator_switch_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i8 0, i16 6, i8 1, i8 0 }, %struct.dbx500_regulator_info { %struct.regulator_desc { ptr @.str.38, ptr null, ptr @.str.39, i8 0, ptr null, ptr null, i32 18, i8 0, i32 0, i32 0, ptr @db8500_regulator_switch_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i8 1, i16 7, i8 0, i8 0 }, %struct.dbx500_regulator_info { %struct.regulator_desc { ptr @.str.40, ptr null, ptr @.str.41, i8 0, ptr null, ptr null, i32 19, i8 0, i32 0, i32 0, ptr @db8500_regulator_switch_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, i8 0, i16 7, i8 1, i8 0 }], align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"failed to register %s: err %i\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"db8500-vape\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"db8500_vape\00", align 1
@db8500_regulator_ops = internal constant %struct.regulator_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @db8500_regulator_enable, ptr @db8500_regulator_disable, ptr @db8500_regulator_is_enabled, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"db8500-varm\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"db8500_varm\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"db8500-vmodem\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"db8500_vmodem\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"db8500-vpll\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"db8500_vpll\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"db8500-vsmps1\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"db8500_vsmps1\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"db8500-vsmps2\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"db8500_vsmps2\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"db8500-vsmps3\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"db8500_vsmps3\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"db8500-vrf1\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"db8500_vrf1\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"db8500-sva-mmdsp\00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c"db8500_sva_mmdsp\00", align 1
@db8500_regulator_switch_ops = internal constant %struct.regulator_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @db8500_regulator_switch_enable, ptr @db8500_regulator_switch_disable, ptr @db8500_regulator_switch_is_enabled, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.20 = private unnamed_addr constant [21 x i8] c"db8500-sva-mmdsp-ret\00", align 1
@.str.21 = private unnamed_addr constant [21 x i8] c"db8500_sva_mmdsp_ret\00", align 1
@.str.22 = private unnamed_addr constant [16 x i8] c"db8500-sva-pipe\00", align 1
@.str.23 = private unnamed_addr constant [16 x i8] c"db8500_sva_pipe\00", align 1
@.str.24 = private unnamed_addr constant [17 x i8] c"db8500-sia-mmdsp\00", align 1
@.str.25 = private unnamed_addr constant [17 x i8] c"db8500_sia_mmdsp\00", align 1
@.str.26 = private unnamed_addr constant [21 x i8] c"db8500-sia-mmdsp-ret\00", align 1
@.str.27 = private unnamed_addr constant [21 x i8] c"db8500_sia_mmdsp_ret\00", align 1
@.str.28 = private unnamed_addr constant [16 x i8] c"db8500-sia-pipe\00", align 1
@.str.29 = private unnamed_addr constant [16 x i8] c"db8500_sia_pipe\00", align 1
@.str.30 = private unnamed_addr constant [11 x i8] c"db8500-sga\00", align 1
@.str.31 = private unnamed_addr constant [11 x i8] c"db8500_sga\00", align 1
@.str.32 = private unnamed_addr constant [17 x i8] c"db8500-b2r2-mcde\00", align 1
@.str.33 = private unnamed_addr constant [17 x i8] c"db8500_b2r2_mcde\00", align 1
@.str.34 = private unnamed_addr constant [15 x i8] c"db8500-esram12\00", align 1
@.str.35 = private unnamed_addr constant [15 x i8] c"db8500_esram12\00", align 1
@.str.36 = private unnamed_addr constant [19 x i8] c"db8500-esram12-ret\00", align 1
@.str.37 = private unnamed_addr constant [19 x i8] c"db8500_esram12_ret\00", align 1
@.str.38 = private unnamed_addr constant [15 x i8] c"db8500-esram34\00", align 1
@.str.39 = private unnamed_addr constant [15 x i8] c"db8500_esram34\00", align 1
@.str.40 = private unnamed_addr constant [19 x i8] c"db8500-esram34-ret\00", align 1
@.str.41 = private unnamed_addr constant [19 x i8] c"db8500_esram34_ret\00", align 1
@.str.42 = private unnamed_addr constant [47 x i8] c"regulator-switch-%s-enable: prcmu call failed\0A\00", align 1
@epod_on = internal unnamed_addr global [8 x i8] zeroinitializer, align 1
@epod_ramret = internal unnamed_addr global [8 x i8] zeroinitializer, align 1
@.str.43 = private unnamed_addr constant [48 x i8] c"regulator_switch-%s-disable: prcmu call failed\0A\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author248, ptr @__UNIQUE_ID_description249, ptr @__UNIQUE_ID_file250, ptr @__UNIQUE_ID_license251, ptr @__exitcall_db8500_regulator_exit, ptr @__initcall__kmod_db8500_prcmu__247_497_db8500_regulator_init3, ptr @db8500_regulator_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @db8500_regulator_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @db8500_regulator_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @db8500_regulator_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @db8500_regulator_driver, ptr noundef null) #7
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @db8500_regulator_probe(ptr noundef %0) #2 {
  %2 = alloca %struct.regulator_config, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #7
  %3 = getelementptr inbounds i8, ptr %2, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %3, i8 0, i32 20, i1 false)
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 7
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.regulator_config, ptr %2, i32 0, i32 2
  %8 = icmp eq ptr %6, null
  %9 = getelementptr inbounds %struct.regulator_config, ptr %2, i32 0, i32 1
  br label %13

10:                                               ; preds = %18
  %11 = add nuw nsw i32 %14, 1
  %12 = icmp eq i32 %11, 20
  br i1 %12, label %24, label %13

13:                                               ; preds = %10, %1
  %14 = phi i32 [ 0, %1 ], [ %11, %10 ]
  %15 = getelementptr [20 x %struct.dbx500_regulator_info], ptr @dbx500_regulator_info, i32 0, i32 %14
  store ptr %15, ptr %7, align 4
  store ptr %4, ptr %2, align 4
  br i1 %8, label %18, label %16

16:                                               ; preds = %13
  %17 = getelementptr %struct.regulator_init_data, ptr %6, i32 %14
  store ptr %17, ptr %9, align 4
  br label %18

18:                                               ; preds = %16, %13
  %19 = call ptr @devm_regulator_register(ptr noundef %4, ptr noundef %15, ptr noundef nonnull %2) #7
  %20 = icmp ugt ptr %19, inttoptr (i32 -4096 to ptr)
  br i1 %20, label %21, label %10

21:                                               ; preds = %18
  %22 = ptrtoint ptr %19 to i32
  %23 = load ptr, ptr %15, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.1, ptr noundef %23, i32 noundef %22) #8
  br label %24

24:                                               ; preds = %21, %10
  %25 = phi i32 [ %22, %21 ], [ 0, %10 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #7
  ret i32 %25
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @db8500_regulator_remove(ptr nocapture noundef readnone %0) #3 {
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @db8500_regulator_enable(ptr noundef %0) #2 {
  %2 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #7
  %3 = icmp eq ptr %2, null
  br i1 %3, label %13, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.dbx500_regulator_info, ptr %2, i32 0, i32 1
  %6 = load i8, ptr %5, align 4, !range !8
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %4
  store i8 1, ptr %5, align 4
  %9 = getelementptr inbounds %struct.dbx500_regulator_info, ptr %2, i32 0, i32 4
  %10 = load i8, ptr %9, align 1, !range !8
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  tail call void @power_state_active_enable() #7
  br label %13

13:                                               ; preds = %12, %8, %4, %1
  %14 = phi i32 [ -22, %1 ], [ 0, %8 ], [ 0, %12 ], [ 0, %4 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @db8500_regulator_disable(ptr noundef %0) #2 {
  %2 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #7
  %3 = icmp eq ptr %2, null
  br i1 %3, label %14, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.dbx500_regulator_info, ptr %2, i32 0, i32 1
  %6 = load i8, ptr %5, align 4, !range !8
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %14, label %8

8:                                                ; preds = %4
  store i8 0, ptr %5, align 4
  %9 = getelementptr inbounds %struct.dbx500_regulator_info, ptr %2, i32 0, i32 4
  %10 = load i8, ptr %9, align 1, !range !8
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = tail call i32 @power_state_active_disable() #7
  br label %14

14:                                               ; preds = %12, %8, %4, %1
  %15 = phi i32 [ -22, %1 ], [ 0, %8 ], [ %13, %12 ], [ 0, %4 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @db8500_regulator_is_enabled(ptr noundef %0) #2 {
  %2 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #7
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.dbx500_regulator_info, ptr %2, i32 0, i32 1
  %6 = load i8, ptr %5, align 4, !range !8
  %7 = zext i8 %6 to i32
  br label %8

8:                                                ; preds = %4, %1
  %9 = phi i32 [ %7, %4 ], [ -22, %1 ]
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @power_state_active_enable() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @power_state_active_disable() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @db8500_regulator_switch_enable(ptr noundef %0) #2 {
  %2 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #7
  %3 = icmp eq ptr %2, null
  br i1 %3, label %33, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.dbx500_regulator_info, ptr %2, i32 0, i32 2
  %6 = load i16, ptr %5, align 2
  %7 = getelementptr inbounds %struct.dbx500_regulator_info, ptr %2, i32 0, i32 3
  %8 = load i8, ptr %7, align 4, !range !8
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %20, label %10

10:                                               ; preds = %4
  %11 = zext i16 %6 to i32
  %12 = getelementptr [8 x i8], ptr @epod_on, i32 0, i32 %11
  %13 = load i8, ptr %12, align 1, !range !8
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %10
  %16 = tail call i32 @db8500_prcmu_set_epod(i16 noundef zeroext %6, i8 noundef zeroext 2) #7
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %26, label %18

18:                                               ; preds = %15, %10
  %19 = getelementptr [8 x i8], ptr @epod_ramret, i32 0, i32 %11
  br label %30

20:                                               ; preds = %4
  %21 = tail call i32 @db8500_prcmu_set_epod(i16 noundef zeroext %6, i8 noundef zeroext 4) #7
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  %24 = zext i16 %6 to i32
  %25 = getelementptr [8 x i8], ptr @epod_on, i32 0, i32 %24
  br label %30

26:                                               ; preds = %20, %15
  %27 = phi i32 [ %21, %20 ], [ %16, %15 ]
  %28 = tail call ptr @rdev_get_dev(ptr noundef %0) #7
  %29 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.42, ptr noundef %29) #8
  br label %33

30:                                               ; preds = %23, %18
  %31 = phi ptr [ %19, %18 ], [ %25, %23 ]
  store i8 1, ptr %31, align 1
  %32 = getelementptr inbounds %struct.dbx500_regulator_info, ptr %2, i32 0, i32 1
  store i8 1, ptr %32, align 4
  br label %33

33:                                               ; preds = %30, %26, %1
  %34 = phi i32 [ -22, %1 ], [ 0, %30 ], [ %27, %26 ]
  ret i32 %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @db8500_regulator_switch_disable(ptr noundef %0) #2 {
  %2 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #7
  %3 = icmp eq ptr %2, null
  br i1 %3, label %36, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.dbx500_regulator_info, ptr %2, i32 0, i32 2
  %6 = load i16, ptr %5, align 2
  %7 = getelementptr inbounds %struct.dbx500_regulator_info, ptr %2, i32 0, i32 3
  %8 = load i8, ptr %7, align 4, !range !8
  %9 = icmp eq i8 %8, 0
  %10 = zext i16 %6 to i32
  br i1 %9, label %18, label %11

11:                                               ; preds = %4
  %12 = getelementptr [8 x i8], ptr @epod_on, i32 0, i32 %10
  %13 = load i8, ptr %12, align 1, !range !8
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %32

15:                                               ; preds = %11
  %16 = tail call i32 @db8500_prcmu_set_epod(i16 noundef zeroext %6, i8 noundef zeroext 1) #7
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %28, label %32

18:                                               ; preds = %4
  %19 = getelementptr [8 x i8], ptr @epod_ramret, i32 0, i32 %10
  %20 = load i8, ptr %19, align 1, !range !8
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %18
  %23 = tail call i32 @db8500_prcmu_set_epod(i16 noundef zeroext %6, i8 noundef zeroext 2) #7
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %28, label %32

25:                                               ; preds = %18
  %26 = tail call i32 @db8500_prcmu_set_epod(i16 noundef zeroext %6, i8 noundef zeroext 1) #7
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %25, %22, %15
  %29 = phi i32 [ %26, %25 ], [ %23, %22 ], [ %16, %15 ]
  %30 = tail call ptr @rdev_get_dev(ptr noundef %0) #7
  %31 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.43, ptr noundef %31) #8
  br label %36

32:                                               ; preds = %25, %22, %15, %11
  %33 = phi ptr [ @epod_ramret, %15 ], [ @epod_ramret, %11 ], [ @epod_on, %25 ], [ @epod_on, %22 ]
  %34 = getelementptr [8 x i8], ptr %33, i32 0, i32 %10
  store i8 0, ptr %34, align 1
  %35 = getelementptr inbounds %struct.dbx500_regulator_info, ptr %2, i32 0, i32 1
  store i8 0, ptr %35, align 4
  br label %36

36:                                               ; preds = %32, %28, %1
  %37 = phi i32 [ -22, %1 ], [ 0, %32 ], [ %29, %28 ]
  ret i32 %37
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @db8500_regulator_switch_is_enabled(ptr noundef %0) #2 {
  %2 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #7
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.dbx500_regulator_info, ptr %2, i32 0, i32 1
  %6 = load i8, ptr %5, align 4, !range !8
  %7 = zext i8 %6 to i32
  br label %8

8:                                                ; preds = %4, %1
  %9 = phi i32 [ %7, %4 ], [ -22, %1 ]
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdev_get_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @db8500_prcmu_set_epod(i16 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
!8 = !{i8 0, i8 2}
