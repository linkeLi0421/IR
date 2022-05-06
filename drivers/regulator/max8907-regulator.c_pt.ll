; ModuleID = '/llk/IR/drivers/regulator/max8907-regulator.c_pt.bc'
source_filename = "../drivers/regulator/max8907-regulator.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.regulator_desc = type { ptr, ptr, ptr, i8, ptr, ptr, i32, i8, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, ptr }
%struct.regulator_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_regulator_match = type { ptr, ptr, ptr, ptr, ptr }
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
%struct.max8907 = type { ptr, %struct.mutex, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.regulator_init_data = type { ptr, %struct.regulation_constraints, i32, ptr, ptr, ptr }
%struct.regulation_constraints = type { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i16 }
%struct.regulator_state = type { i32, i32, i32, i32, i32, i8 }
%struct.notification_limit = type { i32, i32, i32 }

@__initcall__kmod_max8907_regulator__247_384_max8907_regulator_init4 = internal global ptr @max8907_regulator_init, section ".initcall4.init", align 4
@max8907_regulator_driver = internal global %struct.platform_driver { ptr @max8907_regulator_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_max8907_reg_exit = internal global ptr @max8907_reg_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description248 = internal constant [55 x i8] c"max8907_regulator.description=MAX8907 regulator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author249 = internal constant [61 x i8] c"max8907_regulator.author=Gyungoh Yoo <jack.yoo@maxim-ic.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file250 = internal constant [59 x i8] c"max8907_regulator.file=drivers/regulator/max8907-regulator\00", section ".modinfo", align 1
@__UNIQUE_ID_license251 = internal constant [33 x i8] c"max8907_regulator.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias252 = internal constant [51 x i8] c"max8907_regulator.alias=platform:max8907-regulator\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [18 x i8] c"max8907-regulator\00", align 1
@max8907_regulators = internal constant [29 x %struct.regulator_desc] [%struct.regulator_desc { ptr @.str.34, ptr @.str.5, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 0, i32 0, ptr @max8907_mbatt_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.35, ptr @.str.36, ptr null, i8 0, ptr null, ptr null, i32 1, i8 0, i32 64, i32 0, ptr @max8907_ldo_ops, i32 0, i32 0, ptr null, i32 650000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 6, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.37, ptr @.str.38, ptr null, i8 0, ptr null, ptr null, i32 2, i8 0, i32 64, i32 0, ptr @max8907_ldo_ops, i32 0, i32 0, ptr null, i32 637500, i32 12500, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 9, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.39, ptr @.str.40, ptr null, i8 0, ptr null, ptr null, i32 3, i8 0, i32 64, i32 0, ptr @max8907_ldo_ops, i32 0, i32 0, ptr null, i32 750000, i32 50000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 12, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 10, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.41, ptr @.str.42, ptr null, i8 0, ptr null, ptr null, i32 4, i8 0, i32 64, i32 0, ptr @max8907_ldo_ops, i32 0, i32 0, ptr null, i32 750000, i32 50000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 26, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 24, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.43, ptr @.str.44, ptr null, i8 0, ptr null, ptr null, i32 5, i8 0, i32 64, i32 0, ptr @max8907_ldo_ops, i32 0, i32 0, ptr null, i32 650000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 30, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 28, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.45, ptr @.str.46, ptr null, i8 0, ptr null, ptr null, i32 6, i8 0, i32 64, i32 0, ptr @max8907_ldo_ops, i32 0, i32 0, ptr null, i32 650000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 34, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 32, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.47, ptr @.str.48, ptr null, i8 0, ptr null, ptr null, i32 7, i8 0, i32 64, i32 0, ptr @max8907_ldo_ops, i32 0, i32 0, ptr null, i32 750000, i32 50000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 38, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 36, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.49, ptr @.str.50, ptr null, i8 0, ptr null, ptr null, i32 8, i8 0, i32 64, i32 0, ptr @max8907_ldo_ops, i32 0, i32 0, ptr null, i32 750000, i32 50000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 42, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 40, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.51, ptr @.str.52, ptr null, i8 0, ptr null, ptr null, i32 9, i8 0, i32 64, i32 0, ptr @max8907_ldo_ops, i32 0, i32 0, ptr null, i32 750000, i32 50000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 46, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 44, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.53, ptr @.str.54, ptr null, i8 0, ptr null, ptr null, i32 10, i8 0, i32 64, i32 0, ptr @max8907_ldo_ops, i32 0, i32 0, ptr null, i32 750000, i32 50000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 50, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 48, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.55, ptr @.str.56, ptr null, i8 0, ptr null, ptr null, i32 11, i8 0, i32 64, i32 0, ptr @max8907_ldo_ops, i32 0, i32 0, ptr null, i32 750000, i32 50000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 54, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 52, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.57, ptr @.str.58, ptr null, i8 0, ptr null, ptr null, i32 12, i8 0, i32 64, i32 0, ptr @max8907_ldo_ops, i32 0, i32 0, ptr null, i32 750000, i32 50000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 58, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 56, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.59, ptr @.str.60, ptr null, i8 0, ptr null, ptr null, i32 13, i8 0, i32 64, i32 0, ptr @max8907_ldo_ops, i32 0, i32 0, ptr null, i32 750000, i32 50000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 62, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 60, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.61, ptr @.str.62, ptr null, i8 0, ptr null, ptr null, i32 14, i8 0, i32 64, i32 0, ptr @max8907_ldo_ops, i32 0, i32 0, ptr null, i32 750000, i32 50000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 66, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 64, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.63, ptr @.str.64, ptr null, i8 0, ptr null, ptr null, i32 15, i8 0, i32 64, i32 0, ptr @max8907_ldo_ops, i32 0, i32 0, ptr null, i32 750000, i32 50000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 70, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 68, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.65, ptr @.str.66, ptr null, i8 0, ptr null, ptr null, i32 16, i8 0, i32 64, i32 0, ptr @max8907_ldo_ops, i32 0, i32 0, ptr null, i32 750000, i32 50000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 74, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 72, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.67, ptr @.str.68, ptr null, i8 0, ptr null, ptr null, i32 17, i8 0, i32 64, i32 0, ptr @max8907_ldo_ops, i32 0, i32 0, ptr null, i32 750000, i32 50000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 78, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 76, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.69, ptr @.str.70, ptr null, i8 0, ptr null, ptr null, i32 18, i8 0, i32 64, i32 0, ptr @max8907_ldo_ops, i32 0, i32 0, ptr null, i32 750000, i32 50000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 82, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 80, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.71, ptr @.str.72, ptr null, i8 0, ptr null, ptr null, i32 19, i8 0, i32 64, i32 0, ptr @max8907_ldo_ops, i32 0, i32 0, ptr null, i32 750000, i32 50000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 18, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 16, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.73, ptr @.str.74, ptr null, i8 0, ptr null, ptr null, i32 20, i8 0, i32 64, i32 0, ptr @max8907_ldo_ops, i32 0, i32 0, ptr null, i32 650000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 22, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 20, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.75, ptr @.str.76, ptr null, i8 0, ptr null, ptr null, i32 21, i8 0, i32 64, i32 0, ptr @max8907_ldo_ops, i32 0, i32 0, ptr null, i32 650000, i32 25000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 116, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 114, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.77, ptr @.str.78, ptr null, i8 0, ptr null, ptr null, i32 22, i8 0, i32 64, i32 0, ptr @max8907_ldo_ops, i32 0, i32 0, ptr null, i32 750000, i32 50000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 94, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 92, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.79, ptr @.str.80, ptr null, i8 0, ptr null, ptr null, i32 23, i8 0, i32 64, i32 0, ptr @max8907_ldo_ops, i32 0, i32 0, ptr null, i32 750000, i32 50000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 158, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 156, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.81, ptr @.str.5, ptr null, i8 0, ptr null, ptr null, i32 24, i8 0, i32 1, i32 0, ptr @max8907_out5v_ops, i32 0, i32 0, ptr null, i32 5000000, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 84, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.82, ptr @.str.5, ptr null, i8 0, ptr null, ptr null, i32 25, i8 0, i32 1, i32 0, ptr @max8907_out5v_ops, i32 0, i32 0, ptr null, i32 3300000, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 88, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.83, ptr @.str.34, ptr null, i8 0, ptr null, ptr null, i32 26, i8 0, i32 4, i32 0, ptr @max8907_bbat_ops, i32 0, i32 0, ptr null, i32 2400000, i32 200000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 120, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.84, ptr @.str.34, ptr null, i8 0, ptr null, ptr null, i32 27, i8 0, i32 1, i32 0, ptr @max8907_fixed_ops, i32 0, i32 0, ptr null, i32 1200000, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.85, ptr @.str.34, ptr null, i8 0, ptr null, ptr null, i32 28, i8 0, i32 1, i32 0, ptr @max8907_fixed_ops, i32 0, i32 0, ptr null, i32 3300000, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }], align 4
@max8907_ldo_ops = internal constant %struct.regulator_ops { ptr @regulator_list_voltage_linear, ptr null, ptr null, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@max8907_ldo_hwctl_ops = internal constant %struct.regulator_ops { ptr @regulator_list_voltage_linear, ptr null, ptr null, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@max8907_out5v_ops = internal constant %struct.regulator_ops { ptr @regulator_list_voltage_linear, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@max8907_out5v_hwctl_ops = internal constant %struct.regulator_ops { ptr @regulator_list_voltage_linear, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"failed to register %s regulator\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"regulators\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"regulators node not found\0A\00", align 1
@max8907_matches = internal global [29 x %struct.of_regulator_match] [%struct.of_regulator_match { ptr @.str.5, ptr @max8907_regulators, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.6, ptr getelementptr (i8, ptr @max8907_regulators, i64 244), ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.7, ptr getelementptr (i8, ptr @max8907_regulators, i64 488), ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.8, ptr getelementptr (i8, ptr @max8907_regulators, i64 732), ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.9, ptr getelementptr (i8, ptr @max8907_regulators, i64 976), ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.10, ptr getelementptr (i8, ptr @max8907_regulators, i64 1220), ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.11, ptr getelementptr (i8, ptr @max8907_regulators, i64 1464), ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.12, ptr getelementptr (i8, ptr @max8907_regulators, i64 1708), ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.13, ptr getelementptr (i8, ptr @max8907_regulators, i64 1952), ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.14, ptr getelementptr (i8, ptr @max8907_regulators, i64 2196), ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.15, ptr getelementptr (i8, ptr @max8907_regulators, i64 2440), ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.16, ptr getelementptr (i8, ptr @max8907_regulators, i64 2684), ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.17, ptr getelementptr (i8, ptr @max8907_regulators, i64 2928), ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.18, ptr getelementptr (i8, ptr @max8907_regulators, i64 3172), ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.19, ptr getelementptr (i8, ptr @max8907_regulators, i64 3416), ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.20, ptr getelementptr (i8, ptr @max8907_regulators, i64 3660), ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.21, ptr getelementptr (i8, ptr @max8907_regulators, i64 3904), ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.22, ptr getelementptr (i8, ptr @max8907_regulators, i64 4148), ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.23, ptr getelementptr (i8, ptr @max8907_regulators, i64 4392), ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.24, ptr getelementptr (i8, ptr @max8907_regulators, i64 4636), ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.25, ptr getelementptr (i8, ptr @max8907_regulators, i64 4880), ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.26, ptr getelementptr (i8, ptr @max8907_regulators, i64 5124), ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.27, ptr getelementptr (i8, ptr @max8907_regulators, i64 5368), ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.28, ptr getelementptr (i8, ptr @max8907_regulators, i64 5612), ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.29, ptr getelementptr (i8, ptr @max8907_regulators, i64 5856), ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.30, ptr getelementptr (i8, ptr @max8907_regulators, i64 6100), ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.31, ptr getelementptr (i8, ptr @max8907_regulators, i64 6344), ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.32, ptr getelementptr (i8, ptr @max8907_regulators, i64 6588), ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.33, ptr getelementptr (i8, ptr @max8907_regulators, i64 6832), ptr null, ptr null, ptr null }], align 4
@.str.4 = private unnamed_addr constant [39 x i8] c"Error parsing regulator init data: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"mbatt\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"sd1\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"sd2\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"sd3\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"ldo1\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"ldo2\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"ldo3\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"ldo4\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"ldo5\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"ldo6\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"ldo7\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"ldo8\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"ldo9\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"ldo10\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"ldo11\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"ldo12\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"ldo13\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"ldo14\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"ldo15\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"ldo16\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"ldo17\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"ldo18\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"ldo19\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"ldo20\00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"out5v\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"out33v\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"bbat\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"sdby\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"vrtc\00", align 1
@.str.34 = private unnamed_addr constant [6 x i8] c"MBATT\00", align 1
@max8907_mbatt_ops = internal constant %struct.regulator_ops zeroinitializer, align 4
@.str.35 = private unnamed_addr constant [4 x i8] c"SD1\00", align 1
@.str.36 = private unnamed_addr constant [6 x i8] c"in-v1\00", align 1
@.str.37 = private unnamed_addr constant [4 x i8] c"SD2\00", align 1
@.str.38 = private unnamed_addr constant [6 x i8] c"in-v2\00", align 1
@.str.39 = private unnamed_addr constant [4 x i8] c"SD3\00", align 1
@.str.40 = private unnamed_addr constant [6 x i8] c"in-v3\00", align 1
@.str.41 = private unnamed_addr constant [5 x i8] c"LDO1\00", align 1
@.str.42 = private unnamed_addr constant [4 x i8] c"in1\00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c"LDO2\00", align 1
@.str.44 = private unnamed_addr constant [4 x i8] c"in2\00", align 1
@.str.45 = private unnamed_addr constant [5 x i8] c"LDO3\00", align 1
@.str.46 = private unnamed_addr constant [4 x i8] c"in3\00", align 1
@.str.47 = private unnamed_addr constant [5 x i8] c"LDO4\00", align 1
@.str.48 = private unnamed_addr constant [4 x i8] c"in4\00", align 1
@.str.49 = private unnamed_addr constant [5 x i8] c"LDO5\00", align 1
@.str.50 = private unnamed_addr constant [4 x i8] c"in5\00", align 1
@.str.51 = private unnamed_addr constant [5 x i8] c"LDO6\00", align 1
@.str.52 = private unnamed_addr constant [4 x i8] c"in6\00", align 1
@.str.53 = private unnamed_addr constant [5 x i8] c"LDO7\00", align 1
@.str.54 = private unnamed_addr constant [4 x i8] c"in7\00", align 1
@.str.55 = private unnamed_addr constant [5 x i8] c"LDO8\00", align 1
@.str.56 = private unnamed_addr constant [4 x i8] c"in8\00", align 1
@.str.57 = private unnamed_addr constant [5 x i8] c"LDO9\00", align 1
@.str.58 = private unnamed_addr constant [4 x i8] c"in9\00", align 1
@.str.59 = private unnamed_addr constant [6 x i8] c"LDO10\00", align 1
@.str.60 = private unnamed_addr constant [5 x i8] c"in10\00", align 1
@.str.61 = private unnamed_addr constant [6 x i8] c"LDO11\00", align 1
@.str.62 = private unnamed_addr constant [5 x i8] c"in11\00", align 1
@.str.63 = private unnamed_addr constant [6 x i8] c"LDO12\00", align 1
@.str.64 = private unnamed_addr constant [5 x i8] c"in12\00", align 1
@.str.65 = private unnamed_addr constant [6 x i8] c"LDO13\00", align 1
@.str.66 = private unnamed_addr constant [5 x i8] c"in13\00", align 1
@.str.67 = private unnamed_addr constant [6 x i8] c"LDO14\00", align 1
@.str.68 = private unnamed_addr constant [5 x i8] c"in14\00", align 1
@.str.69 = private unnamed_addr constant [6 x i8] c"LDO15\00", align 1
@.str.70 = private unnamed_addr constant [5 x i8] c"in15\00", align 1
@.str.71 = private unnamed_addr constant [6 x i8] c"LDO16\00", align 1
@.str.72 = private unnamed_addr constant [5 x i8] c"in16\00", align 1
@.str.73 = private unnamed_addr constant [6 x i8] c"LDO17\00", align 1
@.str.74 = private unnamed_addr constant [5 x i8] c"in17\00", align 1
@.str.75 = private unnamed_addr constant [6 x i8] c"LDO18\00", align 1
@.str.76 = private unnamed_addr constant [5 x i8] c"in18\00", align 1
@.str.77 = private unnamed_addr constant [6 x i8] c"LDO19\00", align 1
@.str.78 = private unnamed_addr constant [5 x i8] c"in19\00", align 1
@.str.79 = private unnamed_addr constant [6 x i8] c"LDO20\00", align 1
@.str.80 = private unnamed_addr constant [5 x i8] c"in20\00", align 1
@.str.81 = private unnamed_addr constant [6 x i8] c"OUT5V\00", align 1
@.str.82 = private unnamed_addr constant [7 x i8] c"OUT33V\00", align 1
@.str.83 = private unnamed_addr constant [5 x i8] c"BBAT\00", align 1
@max8907_bbat_ops = internal constant %struct.regulator_ops { ptr @regulator_list_voltage_linear, ptr null, ptr null, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.84 = private unnamed_addr constant [5 x i8] c"SDBY\00", align 1
@max8907_fixed_ops = internal constant %struct.regulator_ops { ptr @regulator_list_voltage_linear, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.85 = private unnamed_addr constant [5 x i8] c"VRTC\00", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_alias252, ptr @__UNIQUE_ID_author249, ptr @__UNIQUE_ID_description248, ptr @__UNIQUE_ID_file250, ptr @__UNIQUE_ID_license251, ptr @__exitcall_max8907_reg_exit, ptr @__initcall__kmod_max8907_regulator__247_384_max8907_regulator_init4, ptr @max8907_reg_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @max8907_regulator_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @max8907_regulator_driver, ptr noundef null) #6
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @max8907_reg_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @max8907_regulator_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max8907_regulator_probe(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.regulator_config, align 4
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 7
  %11 = load ptr, ptr %10, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  store i32 0, ptr %2, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #6
  %12 = getelementptr inbounds i8, ptr %3, i32 20
  store i32 0, ptr %12, align 4
  %13 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 25
  %14 = load ptr, ptr %13, align 8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %24, label %16

16:                                               ; preds = %1
  %17 = tail call ptr @of_get_child_by_name(ptr noundef nonnull %14, ptr noundef nonnull @.str.2) #6
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.3) #7
  br label %108

20:                                               ; preds = %16
  %21 = tail call i32 @of_regulator_match(ptr noundef %4, ptr noundef nonnull %17, ptr noundef nonnull @max8907_matches, i32 noundef 29) #6
  tail call void @of_node_put(ptr noundef nonnull %17) #6
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.4, i32 noundef %21) #7
  br label %108

24:                                               ; preds = %20, %1
  %25 = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef 7076, i32 noundef 3520) #6
  %26 = icmp eq ptr %25, null
  br i1 %26, label %108, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %25, ptr %28, align 8
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(7076) %25, ptr noundef nonnull align 4 dereferenceable(7076) @max8907_regulators, i32 7076, i1 false)
  %29 = getelementptr inbounds %struct.max8907, ptr %8, i32 0, i32 4
  %30 = load ptr, ptr %29, align 4
  %31 = call i32 @regmap_read(ptr noundef %30, i32 noundef 143, ptr noundef nonnull %2) #6
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %108

33:                                               ; preds = %27
  %34 = load i32, ptr %2, align 4
  %35 = and i32 %34, 240
  %36 = icmp eq i32 %35, 16
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = getelementptr [29 x %struct.regulator_desc], ptr %25, i32 0, i32 1, i32 14
  store i32 637500, ptr %38, align 4
  %39 = getelementptr [29 x %struct.regulator_desc], ptr %25, i32 0, i32 1, i32 15
  store i32 12500, ptr %39, align 4
  %40 = getelementptr [29 x %struct.regulator_desc], ptr %25, i32 0, i32 1, i32 8
  store i32 64, ptr %40, align 4
  br label %41

41:                                               ; preds = %37, %33
  %42 = icmp eq ptr %11, null
  %43 = getelementptr inbounds %struct.regulator_config, ptr %3, i32 0, i32 1
  %44 = getelementptr inbounds %struct.regulator_config, ptr %3, i32 0, i32 2
  %45 = getelementptr inbounds %struct.regulator_config, ptr %3, i32 0, i32 4
  %46 = getelementptr inbounds %struct.regulator_config, ptr %3, i32 0, i32 3
  br label %50

47:                                               ; preds = %102
  %48 = add nuw nsw i32 %52, 1
  %49 = icmp eq i32 %48, 29
  br i1 %49, label %108, label %50

50:                                               ; preds = %47, %41
  %51 = phi ptr [ null, %41 ], [ %74, %47 ]
  %52 = phi i32 [ 0, %41 ], [ %48, %47 ]
  %53 = load ptr, ptr %5, align 4
  store ptr %53, ptr %3, align 4
  %54 = getelementptr [29 x ptr], ptr %11, i32 0, i32 %52
  %55 = getelementptr [29 x %struct.of_regulator_match], ptr @max8907_matches, i32 0, i32 %52, i32 2
  %56 = select i1 %42, ptr %55, ptr %54
  %57 = load ptr, ptr %56, align 4
  store ptr %57, ptr %43, align 4
  store ptr %25, ptr %44, align 4
  %58 = load ptr, ptr %29, align 4
  store ptr %58, ptr %45, align 4
  %59 = getelementptr [29 x %struct.of_regulator_match], ptr @max8907_matches, i32 0, i32 %52, i32 3
  %60 = load ptr, ptr %59, align 4
  store ptr %60, ptr %46, align 4
  %61 = getelementptr [29 x %struct.regulator_desc], ptr %25, i32 0, i32 %52
  %62 = getelementptr [29 x %struct.regulator_desc], ptr %25, i32 0, i32 %52, i32 6
  %63 = load i32, ptr %62, align 4
  switch i32 %63, label %73 [
    i32 0, label %64
    i32 26, label %72
    i32 27, label %72
    i32 28, label %72
  ]

64:                                               ; preds = %50
  %65 = icmp eq ptr %57, null
  br i1 %65, label %70, label %66

66:                                               ; preds = %64
  %67 = getelementptr inbounds %struct.regulator_init_data, ptr %57, i32 0, i32 1
  %68 = load ptr, ptr %67, align 4
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %73

70:                                               ; preds = %66, %64
  %71 = load ptr, ptr %61, align 4
  br label %73

72:                                               ; preds = %50, %50, %50
  store ptr %51, ptr %57, align 4
  br label %73

73:                                               ; preds = %72, %70, %66, %50
  %74 = phi ptr [ %51, %50 ], [ %51, %72 ], [ %71, %70 ], [ %68, %66 ]
  %75 = getelementptr [29 x %struct.regulator_desc], ptr %25, i32 0, i32 %52, i32 10
  %76 = load ptr, ptr %75, align 4
  %77 = icmp eq ptr %76, @max8907_ldo_ops
  br i1 %77, label %78, label %88

78:                                               ; preds = %73
  %79 = load ptr, ptr %45, align 4
  %80 = getelementptr [29 x %struct.regulator_desc], ptr %25, i32 0, i32 %52, i32 34
  %81 = load i32, ptr %80, align 4
  %82 = call i32 @regmap_read(ptr noundef %79, i32 noundef %81, ptr noundef nonnull %2) #6
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %108

84:                                               ; preds = %78
  %85 = load i32, ptr %2, align 4
  %86 = and i32 %85, 28
  %87 = icmp eq i32 %86, 28
  br i1 %87, label %102, label %100

88:                                               ; preds = %73
  %89 = icmp eq ptr %76, @max8907_out5v_ops
  br i1 %89, label %90, label %102

90:                                               ; preds = %88
  %91 = load ptr, ptr %45, align 4
  %92 = getelementptr [29 x %struct.regulator_desc], ptr %25, i32 0, i32 %52, i32 34
  %93 = load i32, ptr %92, align 4
  %94 = call i32 @regmap_read(ptr noundef %91, i32 noundef %93, ptr noundef nonnull %2) #6
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %108

96:                                               ; preds = %90
  %97 = load i32, ptr %2, align 4
  %98 = and i32 %97, 30
  %99 = icmp eq i32 %98, 14
  br i1 %99, label %102, label %100

100:                                              ; preds = %96, %84
  %101 = phi ptr [ @max8907_ldo_hwctl_ops, %84 ], [ @max8907_out5v_hwctl_ops, %96 ]
  store ptr %101, ptr %75, align 4
  br label %102

102:                                              ; preds = %100, %96, %88, %84
  %103 = call ptr @devm_regulator_register(ptr noundef %4, ptr noundef %61, ptr noundef nonnull %3) #6
  %104 = icmp ugt ptr %103, inttoptr (i32 -4096 to ptr)
  br i1 %104, label %105, label %47

105:                                              ; preds = %102
  %106 = load ptr, ptr %61, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.1, ptr noundef %106) #7
  %107 = ptrtoint ptr %103 to i32
  br label %108

108:                                              ; preds = %105, %90, %78, %47, %27, %24, %23, %19
  %109 = phi i32 [ -12, %24 ], [ %31, %27 ], [ %21, %23 ], [ -22, %19 ], [ %107, %105 ], [ %82, %78 ], [ %94, %90 ], [ 0, %47 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  ret i32 %109
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

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

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn }
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
