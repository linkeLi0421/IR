; ModuleID = '/llk/IR/drivers/regulator/tps6586x-regulator.c_pt.bc'
source_filename = "../drivers/regulator/tps6586x-regulator.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_regulator_match = type { ptr, ptr, ptr, ptr, ptr }
%struct.tps6586x_regulator = type { %struct.regulator_desc, [2 x i32], [2 x i32] }
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
%struct.tps6586x_platform_data = type { i32, ptr, i32, i32, i8, [15 x ptr] }
%struct.regulator_init_data = type { ptr, %struct.regulation_constraints, i32, ptr, ptr, ptr }
%struct.regulation_constraints = type { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i16 }
%struct.regulator_state = type { i32, i32, i32, i32, i32, i8 }
%struct.notification_limit = type { i32, i32, i32 }

@__initcall__kmod_tps6586x_regulator__247_531_tps6586x_regulator_init4 = internal global ptr @tps6586x_regulator_init, section ".initcall4.init", align 4
@tps6586x_regulator_driver = internal global %struct.platform_driver { ptr @tps6586x_regulator_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_tps6586x_regulator_exit = internal global ptr @tps6586x_regulator_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file248 = internal constant [61 x i8] c"tps6586x_regulator.file=drivers/regulator/tps6586x-regulator\00", section ".modinfo", align 1
@__UNIQUE_ID_license249 = internal constant [31 x i8] c"tps6586x_regulator.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author250 = internal constant [62 x i8] c"tps6586x_regulator.author=Mike Rapoport <mike@compulab.co.il>\00", section ".modinfo", align 1
@__UNIQUE_ID_description251 = internal constant [69 x i8] c"tps6586x_regulator.description=Regulator Driver for TI TPS6586X PMIC\00", section ".modinfo", align 1
@__UNIQUE_ID_alias252 = internal constant [53 x i8] c"tps6586x_regulator.alias=platform:tps6586x-regulator\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [19 x i8] c"tps6586x-regulator\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Platform data not available, exiting\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"invalid regulator ID specified\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"regulator %d preinit failed, e %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"failed to register regulator %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"Slew rate config failed, e %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"regulators\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"regulator node not found\0A\00", align 1
@tps6586x_matches = internal global [15 x %struct.of_regulator_match] [%struct.of_regulator_match { ptr @.str.9, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.10, ptr inttoptr (i32 1 to ptr), ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.11, ptr inttoptr (i32 2 to ptr), ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.12, ptr inttoptr (i32 3 to ptr), ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.13, ptr inttoptr (i32 4 to ptr), ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.14, ptr inttoptr (i32 5 to ptr), ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.15, ptr inttoptr (i32 6 to ptr), ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.16, ptr inttoptr (i32 7 to ptr), ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.17, ptr inttoptr (i32 8 to ptr), ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.18, ptr inttoptr (i32 9 to ptr), ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.19, ptr inttoptr (i32 10 to ptr), ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.20, ptr inttoptr (i32 11 to ptr), ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.21, ptr inttoptr (i32 12 to ptr), ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.22, ptr inttoptr (i32 13 to ptr), ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.23, ptr inttoptr (i32 14 to ptr), ptr null, ptr null, ptr null }], align 4
@.str.8 = private unnamed_addr constant [30 x i8] c"Regulator match failed, e %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"sys\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"sm0\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"sm1\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"sm2\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"ldo0\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"ldo1\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"ldo2\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"ldo3\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"ldo4\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"ldo5\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"ldo6\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"ldo7\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"ldo8\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"ldo9\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"ldo_rtc\00", align 1
@tps658623_regulator = internal global [1 x %struct.tps6586x_regulator] [%struct.tps6586x_regulator { %struct.regulator_desc { ptr @.str.24, ptr @.str.25, ptr null, i8 0, ptr null, ptr null, i32 3, i8 0, i32 32, i32 0, ptr @tps6586x_rw_linear_regulator_ops, i32 0, i32 0, ptr null, i32 1700000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 66, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 18, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, [2 x i32] [i32 7, i32 7], [2 x i32] [i32 18, i32 19] }], align 4
@tps658640_regulator = internal global [8 x %struct.tps6586x_regulator] [%struct.tps6586x_regulator { %struct.regulator_desc { ptr @.str.26, ptr @.str.27, ptr null, i8 0, ptr null, ptr null, i32 7, i8 0, i32 8, i32 0, ptr @tps6586x_rw_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @tps6586x_ldo0_voltages, ptr null, i32 0, i32 0, i32 68, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 18, i32 4, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, [2 x i32] [i32 2, i32 2], [2 x i32] [i32 18, i32 19] }, %struct.tps6586x_regulator { %struct.regulator_desc { ptr @.str.28, ptr @.str.29, ptr null, i8 0, ptr null, ptr null, i32 9, i8 0, i32 8, i32 0, ptr @tps6586x_rw_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @tps6586x_ldo0_voltages, ptr null, i32 0, i32 0, i32 70, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 20, i32 64, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, [2 x i32] [i32 6, i32 6], [2 x i32] [i32 20, i32 20] }, %struct.tps6586x_regulator { %struct.regulator_desc { ptr @.str.30, ptr @.str.31, ptr null, i8 0, ptr null, ptr null, i32 10, i8 0, i32 8, i32 0, ptr @tps6586x_rw_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @tps6586x_ldo0_voltages, ptr null, i32 0, i32 0, i32 67, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 18, i32 16, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, [2 x i32] [i32 4, i32 4], [2 x i32] [i32 18, i32 19] }, %struct.tps6586x_regulator { %struct.regulator_desc { ptr @.str.32, ptr @.str.31, ptr null, i8 0, ptr null, ptr null, i32 11, i8 0, i32 8, i32 0, ptr @tps6586x_rw_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @tps6586x_ldo0_voltages, ptr null, i32 0, i32 0, i32 67, i32 56, i32 0, i32 0, i32 0, i32 0, i32 0, i32 18, i32 32, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, [2 x i32] [i32 5, i32 5], [2 x i32] [i32 18, i32 19] }, %struct.tps6586x_regulator { %struct.regulator_desc { ptr @.str.33, ptr @.str.31, ptr null, i8 0, ptr null, ptr null, i32 12, i8 0, i32 8, i32 0, ptr @tps6586x_rw_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @tps6586x_ldo0_voltages, ptr null, i32 0, i32 0, i32 66, i32 224, i32 0, i32 0, i32 0, i32 0, i32 0, i32 18, i32 64, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, [2 x i32] [i32 6, i32 6], [2 x i32] [i32 18, i32 19] }, %struct.tps6586x_regulator { %struct.regulator_desc { ptr @.str.34, ptr @.str.35, ptr null, i8 0, ptr null, ptr null, i32 13, i8 0, i32 8, i32 0, ptr @tps6586x_rw_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @tps6586x_ldo0_voltages, ptr null, i32 0, i32 0, i32 70, i32 56, i32 0, i32 0, i32 0, i32 0, i32 0, i32 20, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, [2 x i32] [i32 7, i32 7], [2 x i32] [i32 20, i32 20] }, %struct.tps6586x_regulator { %struct.regulator_desc { ptr @.str.24, ptr @.str.25, ptr null, i8 0, ptr null, ptr null, i32 3, i8 0, i32 32, i32 0, ptr @tps6586x_rw_linear_regulator_ops, i32 0, i32 0, ptr null, i32 2150000, i32 50000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 66, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 18, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, [2 x i32] [i32 7, i32 7], [2 x i32] [i32 18, i32 19] }, %struct.tps6586x_regulator { %struct.regulator_desc { ptr @.str.36, ptr @.str.29, ptr null, i8 0, ptr null, ptr null, i32 14, i8 0, i32 4, i32 0, ptr @tps6586x_ro_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @tps658640_rtc_voltages, ptr null, i32 0, i32 0, i32 68, i32 24, i32 0, i32 0, i32 0, i32 0, i32 0, i32 68, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, [2 x i32] [i32 7, i32 7], [2 x i32] [i32 68, i32 68] }], align 4
@tps658643_regulator = internal global [1 x %struct.tps6586x_regulator] [%struct.tps6586x_regulator { %struct.regulator_desc { ptr @.str.24, ptr @.str.25, ptr null, i8 0, ptr null, ptr null, i32 3, i8 0, i32 32, i32 0, ptr @tps6586x_rw_linear_regulator_ops, i32 0, i32 0, ptr null, i32 1025000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 66, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 18, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, [2 x i32] [i32 7, i32 7], [2 x i32] [i32 18, i32 19] }], align 4
@tps6586x_regulator = internal global [15 x %struct.tps6586x_regulator] [%struct.tps6586x_regulator { %struct.regulator_desc { ptr @.str.29, ptr @.str.9, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 0, i32 0, ptr @tps6586x_sys_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, [2 x i32] zeroinitializer, [2 x i32] zeroinitializer }, %struct.tps6586x_regulator { %struct.regulator_desc { ptr @.str.37, ptr @.str.38, ptr null, i8 0, ptr null, ptr null, i32 4, i8 0, i32 8, i32 0, ptr @tps6586x_rw_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @tps6586x_ldo0_voltages, ptr null, i32 0, i32 0, i32 65, i32 224, i32 0, i32 0, i32 0, i32 0, i32 0, i32 18, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, [2 x i32] zeroinitializer, [2 x i32] [i32 18, i32 19] }, %struct.tps6586x_regulator { %struct.regulator_desc { ptr @.str.26, ptr @.str.27, ptr null, i8 0, ptr null, ptr null, i32 7, i8 0, i32 8, i32 0, ptr @tps6586x_rw_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @tps6586x_ldo_voltages, ptr null, i32 0, i32 0, i32 68, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 18, i32 4, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, [2 x i32] [i32 2, i32 2], [2 x i32] [i32 18, i32 19] }, %struct.tps6586x_regulator { %struct.regulator_desc { ptr @.str.28, ptr @.str.29, ptr null, i8 0, ptr null, ptr null, i32 9, i8 0, i32 8, i32 0, ptr @tps6586x_rw_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @tps6586x_ldo_voltages, ptr null, i32 0, i32 0, i32 70, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 20, i32 64, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, [2 x i32] [i32 6, i32 6], [2 x i32] [i32 20, i32 20] }, %struct.tps6586x_regulator { %struct.regulator_desc { ptr @.str.30, ptr @.str.31, ptr null, i8 0, ptr null, ptr null, i32 10, i8 0, i32 8, i32 0, ptr @tps6586x_rw_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @tps6586x_ldo_voltages, ptr null, i32 0, i32 0, i32 67, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 18, i32 16, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, [2 x i32] [i32 4, i32 4], [2 x i32] [i32 18, i32 19] }, %struct.tps6586x_regulator { %struct.regulator_desc { ptr @.str.32, ptr @.str.31, ptr null, i8 0, ptr null, ptr null, i32 11, i8 0, i32 8, i32 0, ptr @tps6586x_rw_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @tps6586x_ldo_voltages, ptr null, i32 0, i32 0, i32 67, i32 56, i32 0, i32 0, i32 0, i32 0, i32 0, i32 18, i32 32, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, [2 x i32] [i32 5, i32 5], [2 x i32] [i32 18, i32 19] }, %struct.tps6586x_regulator { %struct.regulator_desc { ptr @.str.33, ptr @.str.31, ptr null, i8 0, ptr null, ptr null, i32 12, i8 0, i32 8, i32 0, ptr @tps6586x_rw_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @tps6586x_ldo_voltages, ptr null, i32 0, i32 0, i32 66, i32 224, i32 0, i32 0, i32 0, i32 0, i32 0, i32 18, i32 64, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, [2 x i32] [i32 6, i32 6], [2 x i32] [i32 18, i32 19] }, %struct.tps6586x_regulator { %struct.regulator_desc { ptr @.str.34, ptr @.str.35, ptr null, i8 0, ptr null, ptr null, i32 13, i8 0, i32 8, i32 0, ptr @tps6586x_rw_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @tps6586x_ldo_voltages, ptr null, i32 0, i32 0, i32 70, i32 56, i32 0, i32 0, i32 0, i32 0, i32 0, i32 20, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, [2 x i32] [i32 7, i32 7], [2 x i32] [i32 20, i32 20] }, %struct.tps6586x_regulator { %struct.regulator_desc { ptr @.str.36, ptr @.str.29, ptr null, i8 0, ptr null, ptr null, i32 14, i8 0, i32 8, i32 0, ptr @tps6586x_rw_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @tps6586x_ldo_voltages, ptr null, i32 0, i32 0, i32 68, i32 56, i32 0, i32 0, i32 0, i32 0, i32 0, i32 68, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, [2 x i32] [i32 7, i32 7], [2 x i32] [i32 68, i32 68] }, %struct.tps6586x_regulator { %struct.regulator_desc { ptr @.str.39, ptr @.str.38, ptr null, i8 0, ptr null, ptr null, i32 5, i8 0, i32 32, i32 0, ptr @tps6586x_rw_linear_regulator_ops, i32 0, i32 0, ptr null, i32 725000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 65, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 18, i32 2, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, [2 x i32] [i32 1, i32 1], [2 x i32] [i32 18, i32 19] }, %struct.tps6586x_regulator { %struct.regulator_desc { ptr @.str.24, ptr @.str.25, ptr null, i8 0, ptr null, ptr null, i32 3, i8 0, i32 32, i32 0, ptr @tps6586x_rw_linear_regulator_ops, i32 0, i32 0, ptr null, i32 3000000, i32 50000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 66, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 18, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, [2 x i32] [i32 7, i32 7], [2 x i32] [i32 18, i32 19] }, %struct.tps6586x_regulator { %struct.regulator_desc { ptr @.str.40, ptr @.str.27, ptr null, i8 0, ptr null, ptr null, i32 6, i8 0, i32 32, i32 0, ptr @tps6586x_rw_linear_regulator_ops, i32 0, i32 0, ptr null, i32 725000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 47, i32 31, i32 0, i32 0, i32 0, i32 33, i32 64, i32 16, i32 8, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, [2 x i32] [i32 3, i32 3], [2 x i32] [i32 16, i32 17] }, %struct.tps6586x_regulator { %struct.regulator_desc { ptr @.str.41, ptr @.str.42, ptr null, i8 0, ptr null, ptr null, i32 8, i8 0, i32 32, i32 0, ptr @tps6586x_rw_linear_regulator_ops, i32 0, i32 0, ptr null, i32 1700000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 50, i32 31, i32 0, i32 0, i32 0, i32 32, i32 64, i32 18, i32 8, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, [2 x i32] [i32 3, i32 3], [2 x i32] [i32 18, i32 19] }, %struct.tps6586x_regulator { %struct.regulator_desc { ptr @.str.43, ptr @.str.44, ptr null, i8 0, ptr null, ptr null, i32 1, i8 0, i32 32, i32 0, ptr @tps6586x_rw_linear_regulator_ops, i32 0, i32 0, ptr null, i32 725000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 38, i32 31, i32 0, i32 0, i32 0, i32 32, i32 4, i32 16, i32 2, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, [2 x i32] [i32 1, i32 1], [2 x i32] [i32 16, i32 17] }, %struct.tps6586x_regulator { %struct.regulator_desc { ptr @.str.45, ptr @.str.46, ptr null, i8 0, ptr null, ptr null, i32 2, i8 0, i32 32, i32 0, ptr @tps6586x_rw_linear_regulator_ops, i32 0, i32 0, ptr null, i32 725000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 35, i32 31, i32 0, i32 0, i32 0, i32 32, i32 1, i32 16, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, [2 x i32] zeroinitializer, [2 x i32] [i32 16, i32 17] }], align 4
@.str.24 = private unnamed_addr constant [9 x i8] c"REG-SM_2\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"vin-sm2\00", align 1
@tps6586x_rw_linear_regulator_ops = internal constant %struct.regulator_ops { ptr @regulator_list_voltage_linear, ptr null, ptr null, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.26 = private unnamed_addr constant [10 x i8] c"REG-LDO_3\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"vinldo23\00", align 1
@tps6586x_rw_regulator_ops = internal constant %struct.regulator_ops { ptr @regulator_list_voltage_table, ptr null, ptr @regulator_map_voltage_ascend, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@tps6586x_ldo0_voltages = internal constant [8 x i32] [i32 1200000, i32 1500000, i32 1800000, i32 2500000, i32 2700000, i32 2850000, i32 3100000, i32 3300000], align 4
@.str.28 = private unnamed_addr constant [10 x i8] c"REG-LDO_5\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"REG-SYS\00", align 1
@.str.30 = private unnamed_addr constant [10 x i8] c"REG-LDO_6\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"vinldo678\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"REG-LDO_7\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"REG-LDO_8\00", align 1
@.str.34 = private unnamed_addr constant [10 x i8] c"REG-LDO_9\00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c"vinldo9\00", align 1
@.str.36 = private unnamed_addr constant [12 x i8] c"REG-LDO_RTC\00", align 1
@tps6586x_ro_regulator_ops = internal constant %struct.regulator_ops { ptr @regulator_list_voltage_table, ptr null, ptr @regulator_map_voltage_ascend, ptr null, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@tps658640_rtc_voltages = internal constant [4 x i32] [i32 2500000, i32 2850000, i32 3100000, i32 3300000], align 4
@tps6586x_sys_regulator_ops = internal constant %struct.regulator_ops zeroinitializer, align 4
@.str.37 = private unnamed_addr constant [10 x i8] c"REG-LDO_0\00", align 1
@.str.38 = private unnamed_addr constant [9 x i8] c"vinldo01\00", align 1
@tps6586x_ldo_voltages = internal constant [8 x i32] [i32 1250000, i32 1500000, i32 1800000, i32 2500000, i32 2700000, i32 2850000, i32 3100000, i32 3300000], align 4
@.str.39 = private unnamed_addr constant [10 x i8] c"REG-LDO_1\00", align 1
@.str.40 = private unnamed_addr constant [10 x i8] c"REG-LDO_2\00", align 1
@.str.41 = private unnamed_addr constant [10 x i8] c"REG-LDO_4\00", align 1
@.str.42 = private unnamed_addr constant [8 x i8] c"vinldo4\00", align 1
@.str.43 = private unnamed_addr constant [9 x i8] c"REG-SM_0\00", align 1
@.str.44 = private unnamed_addr constant [8 x i8] c"vin-sm0\00", align 1
@.str.45 = private unnamed_addr constant [9 x i8] c"REG-SM_1\00", align 1
@.str.46 = private unnamed_addr constant [8 x i8] c"vin-sm1\00", align 1
@.str.47 = private unnamed_addr constant [32 x i8] c"Only SM0/SM1 can set slew rate\0A\00", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_alias252, ptr @__UNIQUE_ID_author250, ptr @__UNIQUE_ID_description251, ptr @__UNIQUE_ID_file248, ptr @__UNIQUE_ID_license249, ptr @__exitcall_tps6586x_regulator_exit, ptr @__initcall__kmod_tps6586x_regulator__247_531_tps6586x_regulator_init4, ptr @tps6586x_regulator_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @tps6586x_regulator_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @tps6586x_regulator_driver, ptr noundef null) #6
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @tps6586x_regulator_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @tps6586x_regulator_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tps6586x_regulator_probe(ptr noundef %0) #2 {
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  %4 = alloca %struct.regulator_config, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i32 24, i1 false)
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %6 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 7
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %51

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 25
  %13 = load ptr, ptr %12, align 8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %48, label %15

15:                                               ; preds = %11
  %16 = tail call ptr @of_get_child_by_name(ptr noundef nonnull %13, ptr noundef nonnull @.str.6) #6
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.7) #7
  br label %48

19:                                               ; preds = %15
  %20 = tail call i32 @of_regulator_match(ptr noundef %5, ptr noundef nonnull %16, ptr noundef nonnull @tps6586x_matches, i32 noundef 15) #6
  tail call void @of_node_put(ptr noundef nonnull %16) #6
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.8, i32 noundef %20) #7
  br label %48

23:                                               ; preds = %19
  %24 = tail call noalias ptr @devm_kmalloc(ptr noundef %5, i32 noundef 80, i32 noundef 3520) #6
  %25 = icmp eq ptr %24, null
  br i1 %25, label %48, label %26

26:                                               ; preds = %44, %23
  %27 = phi i32 [ %46, %44 ], [ 0, %23 ]
  %28 = phi ptr [ %45, %44 ], [ null, %23 ]
  %29 = getelementptr [15 x %struct.of_regulator_match], ptr @tps6586x_matches, i32 0, i32 %27, i32 2
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %44, label %32

32:                                               ; preds = %26
  %33 = getelementptr %struct.tps6586x_platform_data, ptr %24, i32 0, i32 5, i32 %27
  store ptr %30, ptr %33, align 4
  %34 = getelementptr [15 x %struct.of_regulator_match], ptr @tps6586x_matches, i32 0, i32 %27, i32 1
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.regulator_init_data, ptr %30, i32 0, i32 1
  %39 = load ptr, ptr %38, align 4
  br label %40

40:                                               ; preds = %37, %32
  %41 = phi ptr [ %39, %37 ], [ %28, %32 ]
  %42 = ptrtoint ptr %35 to i32
  switch i32 %42, label %44 [
    i32 14, label %43
    i32 9, label %43
  ]

43:                                               ; preds = %40, %40
  store ptr %41, ptr %30, align 4
  br label %44

44:                                               ; preds = %43, %40, %26
  %45 = phi ptr [ %28, %26 ], [ %41, %40 ], [ %41, %43 ]
  %46 = add nuw nsw i32 %27, 1
  %47 = icmp eq i32 %46, 15
  br i1 %47, label %49, label %26

48:                                               ; preds = %23, %22, %18, %11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.1) #7
  br label %250

49:                                               ; preds = %44
  %50 = load ptr, ptr %6, align 4
  br label %51

51:                                               ; preds = %49, %1
  %52 = phi ptr [ %7, %1 ], [ %50, %49 ]
  %53 = phi ptr [ %9, %1 ], [ %24, %49 ]
  %54 = phi ptr [ null, %1 ], [ @tps6586x_matches, %49 ]
  %55 = tail call i32 @tps6586x_get_version(ptr noundef %52) #6
  %56 = getelementptr inbounds %struct.regulator_config, ptr %4, i32 0, i32 1
  %57 = getelementptr inbounds %struct.regulator_config, ptr %4, i32 0, i32 2
  %58 = getelementptr inbounds %struct.regulator_config, ptr %4, i32 0, i32 3
  br label %59

59:                                               ; preds = %245, %51
  %60 = phi i32 [ 0, %51 ], [ %246, %245 ]
  %61 = getelementptr %struct.tps6586x_platform_data, ptr %53, i32 0, i32 5, i32 %60
  %62 = load ptr, ptr %61, align 4
  switch i32 %55, label %107 [
    i32 27, label %101
    i32 10, label %101
    i32 1, label %63
    i32 2, label %63
    i32 3, label %64
  ]

63:                                               ; preds = %59, %59
  br label %101

64:                                               ; preds = %59
  br label %101

65:                                               ; preds = %101
  br i1 %103, label %107, label %66

66:                                               ; preds = %65
  %67 = getelementptr %struct.tps6586x_regulator, ptr %102, i32 1
  %68 = getelementptr %struct.tps6586x_regulator, ptr %102, i32 1, i32 0, i32 6
  %69 = load i32, ptr %68, align 4
  %70 = icmp eq i32 %69, %60
  br i1 %70, label %152, label %71

71:                                               ; preds = %66
  %72 = getelementptr %struct.tps6586x_regulator, ptr %102, i32 2
  %73 = getelementptr %struct.tps6586x_regulator, ptr %102, i32 2, i32 0, i32 6
  %74 = load i32, ptr %73, align 4
  %75 = icmp eq i32 %74, %60
  br i1 %75, label %152, label %76

76:                                               ; preds = %71
  %77 = getelementptr %struct.tps6586x_regulator, ptr %102, i32 3
  %78 = getelementptr %struct.tps6586x_regulator, ptr %102, i32 3, i32 0, i32 6
  %79 = load i32, ptr %78, align 4
  %80 = icmp eq i32 %79, %60
  br i1 %80, label %152, label %81

81:                                               ; preds = %76
  %82 = getelementptr %struct.tps6586x_regulator, ptr %102, i32 4
  %83 = getelementptr %struct.tps6586x_regulator, ptr %102, i32 4, i32 0, i32 6
  %84 = load i32, ptr %83, align 4
  %85 = icmp eq i32 %84, %60
  br i1 %85, label %152, label %86

86:                                               ; preds = %81
  %87 = getelementptr %struct.tps6586x_regulator, ptr %102, i32 5
  %88 = getelementptr %struct.tps6586x_regulator, ptr %102, i32 5, i32 0, i32 6
  %89 = load i32, ptr %88, align 4
  %90 = icmp eq i32 %89, %60
  br i1 %90, label %152, label %91

91:                                               ; preds = %86
  %92 = getelementptr %struct.tps6586x_regulator, ptr %102, i32 6
  %93 = getelementptr %struct.tps6586x_regulator, ptr %102, i32 6, i32 0, i32 6
  %94 = load i32, ptr %93, align 4
  %95 = icmp eq i32 %94, %60
  br i1 %95, label %152, label %96

96:                                               ; preds = %91
  %97 = getelementptr %struct.tps6586x_regulator, ptr %102, i32 7
  %98 = getelementptr %struct.tps6586x_regulator, ptr %102, i32 7, i32 0, i32 6
  %99 = load i32, ptr %98, align 4
  %100 = icmp eq i32 %99, %60
  br i1 %100, label %152, label %107

101:                                              ; preds = %64, %63, %59, %59
  %102 = phi ptr [ @tps658643_regulator, %64 ], [ @tps658640_regulator, %63 ], [ @tps658623_regulator, %59 ], [ @tps658623_regulator, %59 ]
  %103 = phi i1 [ true, %64 ], [ false, %63 ], [ true, %59 ], [ true, %59 ]
  %104 = getelementptr inbounds %struct.regulator_desc, ptr %102, i32 0, i32 6
  %105 = load i32, ptr %104, align 4
  %106 = icmp eq i32 %105, %60
  br i1 %106, label %152, label %65

107:                                              ; preds = %96, %65, %59
  %108 = load i32, ptr getelementptr inbounds ([15 x %struct.tps6586x_regulator], ptr @tps6586x_regulator, i32 0, i32 0, i32 0, i32 6), align 4
  %109 = icmp eq i32 %108, %60
  br i1 %109, label %156, label %110

110:                                              ; preds = %107
  %111 = load i32, ptr getelementptr inbounds ([15 x %struct.tps6586x_regulator], ptr @tps6586x_regulator, i32 0, i32 1, i32 0, i32 6), align 4
  %112 = icmp eq i32 %111, %60
  br i1 %112, label %156, label %113

113:                                              ; preds = %110
  %114 = load i32, ptr getelementptr inbounds ([15 x %struct.tps6586x_regulator], ptr @tps6586x_regulator, i32 0, i32 2, i32 0, i32 6), align 4
  %115 = icmp eq i32 %114, %60
  br i1 %115, label %156, label %116

116:                                              ; preds = %113
  %117 = load i32, ptr getelementptr inbounds ([15 x %struct.tps6586x_regulator], ptr @tps6586x_regulator, i32 0, i32 3, i32 0, i32 6), align 4
  %118 = icmp eq i32 %117, %60
  br i1 %118, label %156, label %119

119:                                              ; preds = %116
  %120 = load i32, ptr getelementptr inbounds ([15 x %struct.tps6586x_regulator], ptr @tps6586x_regulator, i32 0, i32 4, i32 0, i32 6), align 4
  %121 = icmp eq i32 %120, %60
  br i1 %121, label %156, label %122

122:                                              ; preds = %119
  %123 = load i32, ptr getelementptr inbounds ([15 x %struct.tps6586x_regulator], ptr @tps6586x_regulator, i32 0, i32 5, i32 0, i32 6), align 4
  %124 = icmp eq i32 %123, %60
  br i1 %124, label %156, label %125

125:                                              ; preds = %122
  %126 = load i32, ptr getelementptr inbounds ([15 x %struct.tps6586x_regulator], ptr @tps6586x_regulator, i32 0, i32 6, i32 0, i32 6), align 4
  %127 = icmp eq i32 %126, %60
  br i1 %127, label %156, label %128

128:                                              ; preds = %125
  %129 = load i32, ptr getelementptr inbounds ([15 x %struct.tps6586x_regulator], ptr @tps6586x_regulator, i32 0, i32 7, i32 0, i32 6), align 4
  %130 = icmp eq i32 %129, %60
  br i1 %130, label %156, label %131

131:                                              ; preds = %128
  %132 = load i32, ptr getelementptr inbounds ([15 x %struct.tps6586x_regulator], ptr @tps6586x_regulator, i32 0, i32 8, i32 0, i32 6), align 4
  %133 = icmp eq i32 %132, %60
  br i1 %133, label %156, label %134

134:                                              ; preds = %131
  %135 = load i32, ptr getelementptr inbounds ([15 x %struct.tps6586x_regulator], ptr @tps6586x_regulator, i32 0, i32 9, i32 0, i32 6), align 4
  %136 = icmp eq i32 %135, %60
  br i1 %136, label %156, label %137

137:                                              ; preds = %134
  %138 = load i32, ptr getelementptr inbounds ([15 x %struct.tps6586x_regulator], ptr @tps6586x_regulator, i32 0, i32 10, i32 0, i32 6), align 4
  %139 = icmp eq i32 %138, %60
  br i1 %139, label %156, label %140

140:                                              ; preds = %137
  %141 = load i32, ptr getelementptr inbounds ([15 x %struct.tps6586x_regulator], ptr @tps6586x_regulator, i32 0, i32 11, i32 0, i32 6), align 4
  %142 = icmp eq i32 %141, %60
  br i1 %142, label %156, label %143

143:                                              ; preds = %140
  %144 = load i32, ptr getelementptr inbounds ([15 x %struct.tps6586x_regulator], ptr @tps6586x_regulator, i32 0, i32 12, i32 0, i32 6), align 4
  %145 = icmp eq i32 %144, %60
  br i1 %145, label %156, label %146

146:                                              ; preds = %143
  %147 = load i32, ptr getelementptr inbounds ([15 x %struct.tps6586x_regulator], ptr @tps6586x_regulator, i32 0, i32 13, i32 0, i32 6), align 4
  %148 = icmp eq i32 %147, %60
  br i1 %148, label %156, label %149

149:                                              ; preds = %146
  %150 = load i32, ptr getelementptr inbounds ([15 x %struct.tps6586x_regulator], ptr @tps6586x_regulator, i32 0, i32 14, i32 0, i32 6), align 4
  %151 = icmp eq i32 %150, %60
  br i1 %151, label %156, label %155

152:                                              ; preds = %101, %96, %91, %86, %81, %76, %71, %66
  %153 = phi ptr [ %102, %101 ], [ %67, %66 ], [ %72, %71 ], [ %77, %76 ], [ %82, %81 ], [ %87, %86 ], [ %92, %91 ], [ %97, %96 ]
  %154 = icmp eq ptr %153, null
  br i1 %154, label %155, label %156

155:                                              ; preds = %152, %149
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.2) #7
  br label %250

156:                                              ; preds = %152, %149, %146, %143, %140, %137, %134, %131, %128, %125, %122, %119, %116, %113, %110, %107
  %157 = phi ptr [ %153, %152 ], [ getelementptr inbounds ([15 x %struct.tps6586x_regulator], ptr @tps6586x_regulator, i32 0, i32 13), %146 ], [ getelementptr inbounds ([15 x %struct.tps6586x_regulator], ptr @tps6586x_regulator, i32 0, i32 12), %143 ], [ getelementptr inbounds ([15 x %struct.tps6586x_regulator], ptr @tps6586x_regulator, i32 0, i32 11), %140 ], [ getelementptr inbounds ([15 x %struct.tps6586x_regulator], ptr @tps6586x_regulator, i32 0, i32 10), %137 ], [ getelementptr inbounds ([15 x %struct.tps6586x_regulator], ptr @tps6586x_regulator, i32 0, i32 9), %134 ], [ getelementptr inbounds ([15 x %struct.tps6586x_regulator], ptr @tps6586x_regulator, i32 0, i32 8), %131 ], [ getelementptr inbounds ([15 x %struct.tps6586x_regulator], ptr @tps6586x_regulator, i32 0, i32 7), %128 ], [ getelementptr inbounds ([15 x %struct.tps6586x_regulator], ptr @tps6586x_regulator, i32 0, i32 6), %125 ], [ getelementptr inbounds ([15 x %struct.tps6586x_regulator], ptr @tps6586x_regulator, i32 0, i32 5), %122 ], [ getelementptr inbounds ([15 x %struct.tps6586x_regulator], ptr @tps6586x_regulator, i32 0, i32 4), %119 ], [ getelementptr inbounds ([15 x %struct.tps6586x_regulator], ptr @tps6586x_regulator, i32 0, i32 3), %116 ], [ getelementptr inbounds ([15 x %struct.tps6586x_regulator], ptr @tps6586x_regulator, i32 0, i32 2), %113 ], [ getelementptr inbounds ([15 x %struct.tps6586x_regulator], ptr @tps6586x_regulator, i32 0, i32 1), %110 ], [ @tps6586x_regulator, %107 ], [ getelementptr inbounds ([15 x %struct.tps6586x_regulator], ptr @tps6586x_regulator, i32 0, i32 14), %149 ]
  %158 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #6
  store i8 0, ptr %2, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #6
  store i8 0, ptr %3, align 1, !annotation !8
  %159 = getelementptr inbounds %struct.tps6586x_regulator, ptr %157, i32 0, i32 2
  %160 = load i32, ptr %159, align 4
  %161 = getelementptr %struct.tps6586x_regulator, ptr %157, i32 0, i32 2, i32 1
  %162 = load i32, ptr %161, align 4
  %163 = icmp eq i32 %160, %162
  br i1 %163, label %164, label %170

164:                                              ; preds = %156
  %165 = getelementptr inbounds %struct.tps6586x_regulator, ptr %157, i32 0, i32 1
  %166 = load i32, ptr %165, align 4
  %167 = getelementptr %struct.tps6586x_regulator, ptr %157, i32 0, i32 1, i32 1
  %168 = load i32, ptr %167, align 4
  %169 = icmp eq i32 %166, %168
  br i1 %169, label %203, label %170

170:                                              ; preds = %164, %156
  %171 = call i32 @tps6586x_read(ptr noundef %158, i32 noundef %160, ptr noundef nonnull %2) #6
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %201

173:                                              ; preds = %170
  %174 = load i32, ptr %161, align 4
  %175 = call i32 @tps6586x_read(ptr noundef %158, i32 noundef %174, ptr noundef nonnull %3) #6
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %177, label %201

177:                                              ; preds = %173
  %178 = load i8, ptr %3, align 1
  %179 = zext i8 %178 to i32
  %180 = getelementptr %struct.tps6586x_regulator, ptr %157, i32 0, i32 1, i32 1
  %181 = load i32, ptr %180, align 4
  %182 = shl nuw i32 1, %181
  %183 = and i32 %182, %179
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %203, label %185

185:                                              ; preds = %177
  %186 = getelementptr inbounds %struct.tps6586x_regulator, ptr %157, i32 0, i32 1
  %187 = load i8, ptr %2, align 1
  %188 = zext i8 %187 to i32
  %189 = load i32, ptr %186, align 4
  %190 = shl nuw i32 1, %189
  %191 = and i32 %190, %188
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %193, label %204

193:                                              ; preds = %185
  %194 = load i32, ptr %159, align 4
  %195 = trunc i32 %190 to i8
  %196 = call i32 @tps6586x_set_bits(ptr noundef %158, i32 noundef %194, i8 noundef zeroext %195) #6
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %198, label %201

198:                                              ; preds = %193
  %199 = load i32, ptr %180, align 4
  %200 = shl nuw i32 1, %199
  br label %204

201:                                              ; preds = %193, %173, %170
  %202 = phi i32 [ %196, %193 ], [ %175, %173 ], [ %171, %170 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #6
  br label %210

203:                                              ; preds = %177, %164
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #6
  br label %212

204:                                              ; preds = %198, %185
  %205 = phi i32 [ %200, %198 ], [ %182, %185 ]
  %206 = load i32, ptr %161, align 4
  %207 = trunc i32 %205 to i8
  %208 = call i32 @tps6586x_clr_bits(ptr noundef %158, i32 noundef %206, i8 noundef zeroext %207) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #6
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %212, label %210

210:                                              ; preds = %204, %201
  %211 = phi i32 [ %202, %201 ], [ %208, %204 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.3, i32 noundef %60, i32 noundef %211) #7
  br label %250

212:                                              ; preds = %204, %203
  %213 = load ptr, ptr %6, align 4
  store ptr %213, ptr %4, align 4
  store ptr %62, ptr %56, align 4
  store ptr %157, ptr %57, align 4
  br i1 %10, label %214, label %217

214:                                              ; preds = %212
  %215 = getelementptr %struct.of_regulator_match, ptr %54, i32 %60, i32 3
  %216 = load ptr, ptr %215, align 4
  store ptr %216, ptr %58, align 4
  br label %217

217:                                              ; preds = %214, %212
  %218 = call ptr @devm_regulator_register(ptr noundef %5, ptr noundef nonnull %157, ptr noundef nonnull %4) #6
  %219 = icmp ugt ptr %218, inttoptr (i32 -4096 to ptr)
  br i1 %219, label %220, label %223

220:                                              ; preds = %217
  %221 = load ptr, ptr %157, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.4, ptr noundef %221) #7
  %222 = ptrtoint ptr %218 to i32
  br label %250

223:                                              ; preds = %217
  %224 = icmp eq ptr %62, null
  br i1 %224, label %245, label %225

225:                                              ; preds = %223
  %226 = load ptr, ptr %6, align 4
  %227 = getelementptr inbounds %struct.regulator_init_data, ptr %62, i32 0, i32 5
  %228 = load ptr, ptr %227, align 4
  %229 = icmp eq ptr %228, null
  br i1 %229, label %245, label %230

230:                                              ; preds = %225
  %231 = load i32, ptr %228, align 4
  %232 = and i32 %231, 8
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %245, label %234

234:                                              ; preds = %230
  switch i32 %60, label %236 [
    i32 1, label %237
    i32 2, label %235
  ]

235:                                              ; preds = %234
  br label %237

236:                                              ; preds = %234
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.47) #7
  br label %243

237:                                              ; preds = %235, %234
  %238 = phi i32 [ 37, %235 ], [ 40, %234 ]
  %239 = trunc i32 %231 to i8
  %240 = and i8 %239, 7
  %241 = call i32 @tps6586x_write(ptr noundef %226, i32 noundef %238, i8 noundef zeroext %240) #6
  %242 = icmp slt i32 %241, 0
  br i1 %242, label %243, label %245

243:                                              ; preds = %237, %236
  %244 = phi i32 [ -22, %236 ], [ %241, %237 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.5, i32 noundef %244) #7
  br label %250

245:                                              ; preds = %237, %230, %225, %223
  %246 = add nuw nsw i32 %60, 1
  %247 = icmp eq i32 %246, 15
  br i1 %247, label %248, label %59

248:                                              ; preds = %245
  %249 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %218, ptr %249, align 8
  br label %250

250:                                              ; preds = %248, %243, %220, %210, %155, %48
  %251 = phi i32 [ %211, %210 ], [ %222, %220 ], [ %244, %243 ], [ -22, %155 ], [ 0, %248 ], [ -19, %48 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #6
  ret i32 %251
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tps6586x_get_version(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_regulator_match(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_list_voltage_linear(ptr noundef, i32 noundef) #1

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
declare dso_local i32 @regulator_list_voltage_table(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_map_voltage_ascend(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tps6586x_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tps6586x_set_bits(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tps6586x_clr_bits(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tps6586x_write(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { cold nounwind }

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
