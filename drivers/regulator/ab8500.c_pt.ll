; ModuleID = '/llk/IR/drivers/regulator/ab8500.c_pt.bc'
source_filename = "../drivers/regulator/ab8500.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ab8500_regulator_info = type { ptr, %struct.regulator_desc, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.regulator_desc = type { ptr, ptr, ptr, i8, ptr, ptr, i32, i8, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, ptr }
%struct.of_regulator_match = type { ptr, ptr, ptr, ptr, ptr }
%struct.regulator_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ab8500_shared_mode = type { ptr, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.regulator_config = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.ab8500 = type { ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, i32, ptr, i32, i8, ptr, ptr, ptr, [4 x i32], [4 x i32], ptr, ptr, i32, ptr, i32 }

@__initcall__kmod_ab8500__247_1753_ab8500_regulator_init4 = internal global ptr @ab8500_regulator_init, section ".initcall4.init", align 4
@ab8500_regulator_driver = internal global %struct.platform_driver { ptr @ab8500_regulator_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.1, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_ab8500_regulator_exit = internal global ptr @ab8500_regulator_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file248 = internal constant [37 x i8] c"ab8500.file=drivers/regulator/ab8500\00", section ".modinfo", align 1
@__UNIQUE_ID_license249 = internal constant [22 x i8] c"ab8500.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author250 = internal constant [55 x i8] c"ab8500.author=Sundar Iyer <sundar.iyer@stericsson.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author251 = internal constant [61 x i8] c"ab8500.author=Bengt Jonsson <bengt.g.jonsson@stericsson.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author252 = internal constant [63 x i8] c"ab8500.author=Daniel Willerud <daniel.willerud@stericsson.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description253 = internal constant [74 x i8] c"ab8500.description=Regulator Driver for ST-Ericsson AB8500 Mixed-Sig PMIC\00", section ".modinfo", align 1
@__UNIQUE_ID_alias254 = internal constant [39 x i8] c"ab8500.alias=platform:ab8500-regulator\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [43 x i8] c"\013Failed to register ab8500 regulator: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"ab8500-regulator\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"null mfd parent\0A\00", align 1
@abx500_regulator.0 = internal unnamed_addr global ptr null, align 4
@abx500_regulator.1 = internal unnamed_addr global i32 0, align 4
@abx500_regulator.4 = internal unnamed_addr global ptr null, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"Error parsing regulator init data: %d\0A\00", align 1
@ab8505_regulator_info = internal global [13 x %struct.ab8500_regulator_info] [%struct.ab8500_regulator_info { ptr null, %struct.regulator_desc { ptr @.str.4, ptr null, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 16, i32 0, ptr @ab8500_regulator_volt_mode_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @ldo_vauxn_voltages, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, ptr null, i32 5000, i8 4, i8 9, i8 3, i8 1, i8 3, i8 1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 4, i8 31, i8 15 }, %struct.ab8500_regulator_info { ptr null, %struct.regulator_desc { ptr @.str.5, ptr null, ptr null, i8 0, ptr null, ptr null, i32 1, i8 0, i32 16, i32 0, ptr @ab8500_regulator_volt_mode_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @ldo_vauxn_voltages, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, ptr null, i32 5000, i8 4, i8 9, i8 12, i8 4, i8 12, i8 4, i8 0, i8 0, i8 0, i8 0, i8 0, i8 4, i8 32, i8 15 }, %struct.ab8500_regulator_info { ptr null, %struct.regulator_desc { ptr @.str.6, ptr null, ptr null, i8 0, ptr null, ptr null, i32 2, i8 0, i32 8, i32 0, ptr @ab8500_regulator_volt_mode_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @ldo_vaux3_voltages, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, ptr null, i32 5000, i8 4, i8 10, i8 3, i8 1, i8 3, i8 1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 4, i8 33, i8 7 }, %struct.ab8500_regulator_info { ptr null, %struct.regulator_desc { ptr @.str.7, ptr null, ptr null, i8 0, ptr null, ptr null, i32 3, i8 0, i32 16, i32 0, ptr @ab8500_regulator_volt_mode_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @ldo_vauxn_voltages, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, ptr null, i32 5000, i8 4, i8 46, i8 3, i8 1, i8 3, i8 1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 4, i8 47, i8 15 }, %struct.ab8500_regulator_info { ptr null, %struct.regulator_desc { ptr @.str.8, ptr null, ptr null, i8 0, ptr null, ptr null, i32 4, i8 0, i32 8, i32 0, ptr @ab8500_regulator_volt_mode_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @ldo_vaux56_voltages, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, ptr null, i32 2000, i8 1, i8 85, i8 24, i8 16, i8 24, i8 16, i8 0, i8 0, i8 0, i8 0, i8 0, i8 1, i8 85, i8 7 }, %struct.ab8500_regulator_info { ptr null, %struct.regulator_desc { ptr @.str.9, ptr null, ptr null, i8 0, ptr null, ptr null, i32 5, i8 0, i32 8, i32 0, ptr @ab8500_regulator_volt_mode_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @ldo_vaux56_voltages, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, ptr null, i32 2000, i8 1, i8 86, i8 24, i8 16, i8 24, i8 16, i8 0, i8 0, i8 0, i8 0, i8 0, i8 1, i8 86, i8 7 }, %struct.ab8500_regulator_info { ptr null, %struct.regulator_desc { ptr @.str.10, ptr null, ptr null, i8 0, ptr null, ptr null, i32 6, i8 0, i32 7, i32 0, ptr @ab8500_regulator_volt_mode_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @ldo_vintcore_voltages, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, ptr null, i32 5000, i8 3, i8 -128, i8 68, i8 4, i8 68, i8 4, i8 0, i8 0, i8 0, i8 0, i8 0, i8 3, i8 -128, i8 56 }, %struct.ab8500_regulator_info { ptr null, %struct.regulator_desc { ptr @.str.11, ptr null, ptr null, i8 0, ptr null, ptr null, i32 7, i8 0, i32 1, i32 0, ptr @ab8500_regulator_mode_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @fixed_2000000_voltage, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 10000, i32 0, i32 0, ptr null }, ptr null, i32 1000, i8 3, i8 -128, i8 -126, i8 2, i8 -126, i8 2, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0 }, %struct.ab8500_regulator_info { ptr null, %struct.regulator_desc { ptr @.str.12, ptr null, ptr null, i8 0, ptr null, ptr null, i32 8, i8 0, i32 8, i32 0, ptr @ab8500_regulator_volt_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @ldo_vaudio_voltages, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, ptr null, i32 0, i8 3, i8 -125, i8 2, i8 2, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 1, i8 87, i8 112 }, %struct.ab8500_regulator_info { ptr null, %struct.regulator_desc { ptr @.str.13, ptr null, ptr null, i8 0, ptr null, ptr null, i32 9, i8 0, i32 1, i32 0, ptr @ab8500_regulator_anamic_mode_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @fixed_2050000_voltage, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, ptr @ldo_anamic1_shared, i32 0, i8 3, i8 -125, i8 8, i8 8, i8 0, i8 0, i8 1, i8 84, i8 4, i8 4, i8 0, i8 0, i8 0, i8 0 }, %struct.ab8500_regulator_info { ptr null, %struct.regulator_desc { ptr @.str.14, ptr null, ptr null, i8 0, ptr null, ptr null, i32 10, i8 0, i32 1, i32 0, ptr @ab8500_regulator_anamic_mode_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @fixed_2050000_voltage, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, ptr @ldo_anamic2_shared, i32 0, i8 3, i8 -125, i8 16, i8 16, i8 0, i8 0, i8 1, i8 84, i8 4, i8 4, i8 0, i8 0, i8 0, i8 0 }, %struct.ab8500_regulator_info { ptr null, %struct.regulator_desc { ptr @.str.15, ptr null, ptr null, i8 0, ptr null, ptr null, i32 11, i8 0, i32 1, i32 0, ptr @ab8500_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @fixed_1800000_voltage, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, ptr null, i32 0, i8 3, i8 -125, i8 4, i8 4, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0 }, %struct.ab8500_regulator_info { ptr null, %struct.regulator_desc { ptr @.str.16, ptr null, ptr null, i8 0, ptr null, ptr null, i32 12, i8 0, i32 8, i32 0, ptr @ab8500_regulator_volt_mode_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @ldo_vana_voltages, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, ptr null, i32 1000, i8 4, i8 6, i8 12, i8 4, i8 12, i8 4, i8 0, i8 0, i8 0, i8 0, i8 0, i8 4, i8 41, i8 7 }], align 4
@ab8505_regulator_match = internal global [13 x %struct.of_regulator_match] [%struct.of_regulator_match { ptr @.str.24, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.25, ptr inttoptr (i32 1 to ptr), ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.26, ptr inttoptr (i32 2 to ptr), ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.27, ptr inttoptr (i32 3 to ptr), ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.28, ptr inttoptr (i32 4 to ptr), ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.29, ptr inttoptr (i32 5 to ptr), ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.30, ptr inttoptr (i32 6 to ptr), ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.31, ptr inttoptr (i32 7 to ptr), ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.32, ptr inttoptr (i32 8 to ptr), ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.33, ptr inttoptr (i32 9 to ptr), ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.34, ptr inttoptr (i32 10 to ptr), ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.35, ptr inttoptr (i32 11 to ptr), ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.36, ptr inttoptr (i32 12 to ptr), ptr null, ptr null, ptr null }], align 4
@ab8500_regulator_info = internal global [10 x %struct.ab8500_regulator_info] [%struct.ab8500_regulator_info { ptr null, %struct.regulator_desc { ptr @.str.4, ptr @.str.37, ptr null, i8 0, ptr null, ptr null, i32 0, i8 0, i32 16, i32 0, ptr @ab8500_regulator_volt_mode_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @ldo_vauxn_voltages, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 200, i32 0, i32 0, ptr null }, ptr null, i32 5000, i8 4, i8 9, i8 3, i8 1, i8 3, i8 1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 4, i8 31, i8 15 }, %struct.ab8500_regulator_info { ptr null, %struct.regulator_desc { ptr @.str.5, ptr @.str.37, ptr null, i8 0, ptr null, ptr null, i32 1, i8 0, i32 16, i32 0, ptr @ab8500_regulator_volt_mode_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @ldo_vauxn_voltages, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 200, i32 0, i32 0, ptr null }, ptr null, i32 5000, i8 4, i8 9, i8 12, i8 4, i8 12, i8 4, i8 0, i8 0, i8 0, i8 0, i8 0, i8 4, i8 32, i8 15 }, %struct.ab8500_regulator_info { ptr null, %struct.regulator_desc { ptr @.str.6, ptr @.str.37, ptr null, i8 0, ptr null, ptr null, i32 2, i8 0, i32 8, i32 0, ptr @ab8500_regulator_volt_mode_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @ldo_vaux3_voltages, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 450, i32 0, i32 0, ptr null }, ptr null, i32 5000, i8 4, i8 10, i8 3, i8 1, i8 3, i8 1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 4, i8 33, i8 7 }, %struct.ab8500_regulator_info { ptr null, %struct.regulator_desc { ptr @.str.10, ptr null, ptr null, i8 0, ptr null, ptr null, i32 3, i8 0, i32 7, i32 0, ptr @ab8500_regulator_volt_mode_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @ldo_vintcore_voltages, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 750, i32 0, i32 0, ptr null }, ptr null, i32 5000, i8 3, i8 -128, i8 68, i8 68, i8 68, i8 4, i8 0, i8 0, i8 0, i8 0, i8 0, i8 3, i8 -128, i8 56 }, %struct.ab8500_regulator_info { ptr null, %struct.regulator_desc { ptr @.str.38, ptr null, ptr null, i8 0, ptr null, ptr null, i32 4, i8 0, i32 1, i32 0, ptr @ab8500_regulator_mode_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @fixed_2000000_voltage, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 500, i32 0, i32 0, ptr null }, ptr null, i32 1000, i8 3, i8 -128, i8 -126, i8 2, i8 -126, i8 2, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0 }, %struct.ab8500_regulator_info { ptr null, %struct.regulator_desc { ptr @.str.12, ptr null, ptr null, i8 0, ptr null, ptr null, i32 5, i8 0, i32 1, i32 0, ptr @ab8500_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @fixed_2000000_voltage, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 140, i32 0, i32 0, ptr null }, ptr null, i32 0, i8 3, i8 -125, i8 2, i8 2, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0 }, %struct.ab8500_regulator_info { ptr null, %struct.regulator_desc { ptr @.str.13, ptr null, ptr null, i8 0, ptr null, ptr null, i32 6, i8 0, i32 1, i32 0, ptr @ab8500_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @fixed_2050000_voltage, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 500, i32 0, i32 0, ptr null }, ptr null, i32 0, i8 3, i8 -125, i8 8, i8 8, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0 }, %struct.ab8500_regulator_info { ptr null, %struct.regulator_desc { ptr @.str.14, ptr null, ptr null, i8 0, ptr null, ptr null, i32 7, i8 0, i32 1, i32 0, ptr @ab8500_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @fixed_2050000_voltage, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 500, i32 0, i32 0, ptr null }, ptr null, i32 0, i8 3, i8 -125, i8 16, i8 16, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0 }, %struct.ab8500_regulator_info { ptr null, %struct.regulator_desc { ptr @.str.39, ptr null, ptr null, i8 0, ptr null, ptr null, i32 8, i8 0, i32 1, i32 0, ptr @ab8500_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @fixed_1800000_voltage, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 420, i32 0, i32 0, ptr null }, ptr null, i32 0, i8 3, i8 -125, i8 4, i8 4, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0 }, %struct.ab8500_regulator_info { ptr null, %struct.regulator_desc { ptr @.str.16, ptr null, ptr null, i8 0, ptr null, ptr null, i32 9, i8 0, i32 1, i32 0, ptr @ab8500_regulator_mode_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @fixed_1200000_voltage, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 140, i32 0, i32 0, ptr null }, ptr null, i32 1000, i8 4, i8 6, i8 12, i8 4, i8 12, i8 4, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0 }], align 4
@ab8500_regulator_match = internal global [10 x %struct.of_regulator_match] [%struct.of_regulator_match { ptr @.str.24, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.25, ptr inttoptr (i32 1 to ptr), ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.26, ptr inttoptr (i32 2 to ptr), ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.30, ptr inttoptr (i32 3 to ptr), ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.40, ptr inttoptr (i32 4 to ptr), ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.32, ptr inttoptr (i32 5 to ptr), ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.33, ptr inttoptr (i32 6 to ptr), ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.34, ptr inttoptr (i32 7 to ptr), ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.41, ptr inttoptr (i32 8 to ptr), ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.36, ptr inttoptr (i32 9 to ptr), ptr null, ptr null, ptr null }], align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"LDO-AUX1\00", align 1
@ab8500_regulator_volt_mode_ops = internal constant %struct.regulator_ops { ptr @regulator_list_voltage_table, ptr null, ptr null, ptr @ab8500_regulator_set_voltage_sel, ptr null, ptr @ab8500_regulator_get_voltage_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ab8500_regulator_enable, ptr @ab8500_regulator_disable, ptr @ab8500_regulator_is_enabled, ptr @ab8500_regulator_set_mode, ptr @ab8500_regulator_get_mode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ab8500_regulator_get_optimum_mode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@ldo_vauxn_voltages = internal constant [16 x i32] [i32 1100000, i32 1200000, i32 1300000, i32 1400000, i32 1500000, i32 1800000, i32 1850000, i32 1900000, i32 2500000, i32 2650000, i32 2700000, i32 2750000, i32 2800000, i32 2900000, i32 3000000, i32 3300000], align 4
@.str.5 = private unnamed_addr constant [9 x i8] c"LDO-AUX2\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"LDO-AUX3\00", align 1
@ldo_vaux3_voltages = internal constant [8 x i32] [i32 1200000, i32 1500000, i32 1800000, i32 2100000, i32 2500000, i32 2750000, i32 2790000, i32 2910000], align 4
@.str.7 = private unnamed_addr constant [9 x i8] c"LDO-AUX4\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"LDO-AUX5\00", align 1
@ldo_vaux56_voltages = internal constant [8 x i32] [i32 1800000, i32 1050000, i32 1100000, i32 1200000, i32 1500000, i32 2200000, i32 2500000, i32 2790000], align 4
@.str.9 = private unnamed_addr constant [9 x i8] c"LDO-AUX6\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"LDO-INTCORE\00", align 1
@ldo_vintcore_voltages = internal constant [7 x i32] [i32 1200000, i32 1225000, i32 1250000, i32 1275000, i32 1300000, i32 1325000, i32 1350000], align 4
@.str.11 = private unnamed_addr constant [8 x i8] c"LDO-ADC\00", align 1
@ab8500_regulator_mode_ops = internal constant %struct.regulator_ops { ptr @regulator_list_voltage_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ab8500_regulator_enable, ptr @ab8500_regulator_disable, ptr @ab8500_regulator_is_enabled, ptr @ab8500_regulator_set_mode, ptr @ab8500_regulator_get_mode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ab8500_regulator_get_optimum_mode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@fixed_2000000_voltage = internal constant [1 x i32] [i32 2000000], align 4
@.str.12 = private unnamed_addr constant [10 x i8] c"LDO-AUDIO\00", align 1
@ab8500_regulator_volt_ops = internal constant %struct.regulator_ops { ptr @regulator_list_voltage_table, ptr null, ptr null, ptr @ab8500_regulator_set_voltage_sel, ptr null, ptr @ab8500_regulator_get_voltage_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ab8500_regulator_enable, ptr @ab8500_regulator_disable, ptr @ab8500_regulator_is_enabled, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@ldo_vaudio_voltages = internal constant [8 x i32] [i32 2000000, i32 2100000, i32 2200000, i32 2300000, i32 2400000, i32 2500000, i32 2600000, i32 2600000], align 4
@.str.13 = private unnamed_addr constant [12 x i8] c"LDO-ANAMIC1\00", align 1
@ab8500_regulator_anamic_mode_ops = internal constant %struct.regulator_ops { ptr @regulator_list_voltage_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ab8500_regulator_enable, ptr @ab8500_regulator_disable, ptr @ab8500_regulator_is_enabled, ptr @ab8500_regulator_set_mode, ptr @ab8500_regulator_get_mode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@fixed_2050000_voltage = internal constant [1 x i32] [i32 2050000], align 4
@ldo_anamic1_shared = internal global %struct.ab8500_shared_mode { ptr getelementptr (i8, ptr @ab8505_regulator_info, i64 2720), i8 0 }, align 4
@.str.14 = private unnamed_addr constant [12 x i8] c"LDO-ANAMIC2\00", align 1
@ldo_anamic2_shared = internal global %struct.ab8500_shared_mode { ptr getelementptr (i8, ptr @ab8505_regulator_info, i64 2448), i8 0 }, align 4
@.str.15 = private unnamed_addr constant [9 x i8] c"LDO-AUX8\00", align 1
@ab8500_regulator_ops = internal constant %struct.regulator_ops { ptr @regulator_list_voltage_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ab8500_regulator_enable, ptr @ab8500_regulator_disable, ptr @ab8500_regulator_is_enabled, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@fixed_1800000_voltage = internal constant [1 x i32] [i32 1800000], align 4
@.str.16 = private unnamed_addr constant [8 x i8] c"LDO-ANA\00", align 1
@ldo_vana_voltages = internal constant [8 x i32] [i32 1050000, i32 1075000, i32 1100000, i32 1125000, i32 1150000, i32 1175000, i32 1200000, i32 1225000], align 4
@.str.17 = private unnamed_addr constant [29 x i8] c"regulator info null pointer\0A\00", align 1
@.str.18 = private unnamed_addr constant [40 x i8] c"couldn't set voltage reg for regulator\0A\00", align 1
@.str.19 = private unnamed_addr constant [41 x i8] c"couldn't read voltage reg for regulator\0A\00", align 1
@.str.20 = private unnamed_addr constant [40 x i8] c"couldn't set enable bits for regulator\0A\00", align 1
@.str.21 = private unnamed_addr constant [41 x i8] c"couldn't set disable bits for regulator\0A\00", align 1
@.str.22 = private unnamed_addr constant [29 x i8] c"couldn't read 0x%x register\0A\00", align 1
@shared_mode_mutex = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @shared_mode_mutex, i64 12), ptr getelementptr (i8, ptr @shared_mode_mutex, i64 12) } }, align 4
@.str.23 = private unnamed_addr constant [29 x i8] c"couldn't set regulator mode\0A\00", align 1
@.str.24 = private unnamed_addr constant [16 x i8] c"ab8500_ldo_aux1\00", align 1
@.str.25 = private unnamed_addr constant [16 x i8] c"ab8500_ldo_aux2\00", align 1
@.str.26 = private unnamed_addr constant [16 x i8] c"ab8500_ldo_aux3\00", align 1
@.str.27 = private unnamed_addr constant [16 x i8] c"ab8500_ldo_aux4\00", align 1
@.str.28 = private unnamed_addr constant [16 x i8] c"ab8500_ldo_aux5\00", align 1
@.str.29 = private unnamed_addr constant [16 x i8] c"ab8500_ldo_aux6\00", align 1
@.str.30 = private unnamed_addr constant [19 x i8] c"ab8500_ldo_intcore\00", align 1
@.str.31 = private unnamed_addr constant [15 x i8] c"ab8500_ldo_adc\00", align 1
@.str.32 = private unnamed_addr constant [17 x i8] c"ab8500_ldo_audio\00", align 1
@.str.33 = private unnamed_addr constant [19 x i8] c"ab8500_ldo_anamic1\00", align 1
@.str.34 = private unnamed_addr constant [19 x i8] c"ab8500_ldo_anamic2\00", align 1
@.str.35 = private unnamed_addr constant [16 x i8] c"ab8500_ldo_aux8\00", align 1
@.str.36 = private unnamed_addr constant [15 x i8] c"ab8500_ldo_ana\00", align 1
@.str.37 = private unnamed_addr constant [4 x i8] c"vin\00", align 1
@.str.38 = private unnamed_addr constant [10 x i8] c"LDO-TVOUT\00", align 1
@.str.39 = private unnamed_addr constant [9 x i8] c"LDO-DMIC\00", align 1
@fixed_1200000_voltage = internal constant [1 x i32] [i32 1200000], align 4
@.str.40 = private unnamed_addr constant [17 x i8] c"ab8500_ldo_tvout\00", align 1
@.str.41 = private unnamed_addr constant [16 x i8] c"ab8500_ldo_dmic\00", align 1
@.str.42 = private unnamed_addr constant [33 x i8] c"failed to register regulator %s\0A\00", align 1
@llvm.compiler.used = appending global [10 x ptr] [ptr @__UNIQUE_ID_alias254, ptr @__UNIQUE_ID_author250, ptr @__UNIQUE_ID_author251, ptr @__UNIQUE_ID_author252, ptr @__UNIQUE_ID_description253, ptr @__UNIQUE_ID_file248, ptr @__UNIQUE_ID_license249, ptr @__exitcall_ab8500_regulator_exit, ptr @__initcall__kmod_ab8500__247_1753_ab8500_regulator_init4, ptr @ab8500_regulator_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @ab8500_regulator_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @ab8500_regulator_driver, ptr noundef null) #6
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %5, label %3

3:                                                ; preds = %0
  %4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %1) #7
  br label %5

5:                                                ; preds = %3, %0
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @ab8500_regulator_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @ab8500_regulator_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ab8500_regulator_probe(ptr noundef %0) #4 {
  %2 = alloca %struct.regulator_config, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.2) #7
  br label %68

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.ab8500, ptr %7, i32 0, i32 6
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 1
  %16 = select i1 %15, ptr @ab8505_regulator_info, ptr @ab8500_regulator_info
  %17 = select i1 %15, ptr @ab8505_regulator_match, ptr @ab8500_regulator_match
  %18 = select i1 %15, i32 13, i32 10
  store ptr %16, ptr @abx500_regulator.0, align 4
  store i32 %18, ptr @abx500_regulator.1, align 4
  store ptr %17, ptr @abx500_regulator.4, align 4
  %19 = tail call i32 @of_regulator_match(ptr noundef %3, ptr noundef %12, ptr noundef nonnull %17, i32 noundef %18) #6
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.3, i32 noundef %19) #7
  br label %68

22:                                               ; preds = %10
  %23 = load ptr, ptr @abx500_regulator.4, align 4
  %24 = load i32, ptr @abx500_regulator.1, align 4
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %68

26:                                               ; preds = %22
  %27 = getelementptr inbounds i8, ptr %2, i32 16
  %28 = getelementptr inbounds %struct.regulator_config, ptr %2, i32 0, i32 1
  %29 = getelementptr inbounds %struct.regulator_config, ptr %2, i32 0, i32 2
  %30 = getelementptr inbounds %struct.regulator_config, ptr %2, i32 0, i32 3
  br label %31

31:                                               ; preds = %61, %26
  %32 = phi i32 [ 0, %26 ], [ %62, %61 ]
  %33 = getelementptr %struct.of_regulator_match, ptr %23, i32 %32, i32 2
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr %struct.of_regulator_match, ptr %23, i32 %32, i32 3
  %36 = load ptr, ptr %35, align 4
  %37 = load ptr, ptr %4, align 4
  %38 = getelementptr inbounds %struct.device, ptr %37, i32 0, i32 8
  %39 = load ptr, ptr %38, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #6
  store i64 0, ptr %27, align 4
  %40 = load ptr, ptr @abx500_regulator.0, align 4
  %41 = getelementptr %struct.ab8500_regulator_info, ptr %40, i32 %32
  store ptr %3, ptr %41, align 4
  store ptr %3, ptr %2, align 4
  store ptr %34, ptr %28, align 4
  store ptr %41, ptr %29, align 4
  store ptr %36, ptr %30, align 4
  %42 = getelementptr inbounds %struct.ab8500, ptr %39, i32 0, i32 6
  %43 = load i32, ptr %42, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %57

45:                                               ; preds = %31
  %46 = getelementptr inbounds %struct.ab8500, ptr %39, i32 0, i32 7
  %47 = load i8, ptr %46, align 4
  %48 = icmp ugt i8 %47, 17
  br i1 %48, label %57, label %49

49:                                               ; preds = %45
  %50 = getelementptr %struct.ab8500_regulator_info, ptr %40, i32 %32, i32 1, i32 6
  %51 = load i32, ptr %50, align 4
  %52 = icmp eq i32 %51, 2
  br i1 %52, label %53, label %57

53:                                               ; preds = %49
  %54 = getelementptr %struct.ab8500_regulator_info, ptr %40, i32 %32, i32 1, i32 8
  store i32 16, ptr %54, align 4
  %55 = getelementptr %struct.ab8500_regulator_info, ptr %40, i32 %32, i32 1, i32 23
  store ptr @ldo_vauxn_voltages, ptr %55, align 4
  %56 = getelementptr %struct.ab8500_regulator_info, ptr %40, i32 %32, i32 17
  store i8 15, ptr %56, align 1
  br label %57

57:                                               ; preds = %53, %49, %45, %31
  %58 = getelementptr %struct.ab8500_regulator_info, ptr %40, i32 %32, i32 1
  %59 = call ptr @devm_regulator_register(ptr noundef %3, ptr noundef %58, ptr noundef nonnull %2) #6
  %60 = icmp ugt ptr %59, inttoptr (i32 -4096 to ptr)
  br i1 %60, label %65, label %61

61:                                               ; preds = %57
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #6
  %62 = add nuw nsw i32 %32, 1
  %63 = load i32, ptr @abx500_regulator.1, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %31, label %68

65:                                               ; preds = %57
  %66 = load ptr, ptr %58, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.42, ptr noundef %66) #7
  %67 = ptrtoint ptr %59 to i32
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #6
  br label %68

68:                                               ; preds = %65, %61, %22, %21, %9
  %69 = phi i32 [ %19, %21 ], [ -22, %9 ], [ %67, %65 ], [ 0, %22 ], [ 0, %61 ]
  ret i32 %69
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_regulator_match(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_list_voltage_table(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ab8500_regulator_set_voltage_sel(ptr noundef %0, i32 noundef %1) #4 {
  %3 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #6
  %4 = icmp eq ptr %3, null
  br i1 %4, label %21, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.ab8500_regulator_info, ptr %3, i32 0, i32 17
  %7 = load i8, ptr %6, align 1
  %8 = tail call i8 @llvm.cttz.i8(i8 %7, i1 true), !range !8
  %9 = zext i8 %8 to i32
  %10 = icmp eq i8 %7, 0
  %11 = select i1 %10, i32 -1, i32 %9
  %12 = shl i32 %1, %11
  %13 = trunc i32 %12 to i8
  %14 = load ptr, ptr %3, align 4
  %15 = getelementptr inbounds %struct.ab8500_regulator_info, ptr %3, i32 0, i32 15
  %16 = load i8, ptr %15, align 1
  %17 = getelementptr inbounds %struct.ab8500_regulator_info, ptr %3, i32 0, i32 16
  %18 = load i8, ptr %17, align 4
  %19 = tail call i32 @abx500_mask_and_set_register_interruptible(ptr noundef %14, i8 noundef zeroext %16, i8 noundef zeroext %18, i8 noundef zeroext %7, i8 noundef zeroext %13) #6
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %5, %2
  %22 = phi ptr [ @.str.17, %2 ], [ @.str.18, %5 ]
  %23 = phi i32 [ -22, %2 ], [ %19, %5 ]
  %24 = tail call ptr @rdev_get_dev(ptr noundef %0) #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull %22) #7
  br label %25

25:                                               ; preds = %21, %5
  %26 = phi i32 [ %19, %5 ], [ %23, %21 ]
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ab8500_regulator_get_voltage_sel(ptr noundef %0) #4 {
  %2 = alloca i8, align 1
  %3 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #6
  store i8 0, ptr %2, align 1, !annotation !9
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call ptr @rdev_get_dev(ptr noundef %0) #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.17) #7
  br label %29

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.ab8500_regulator_info, ptr %3, i32 0, i32 17
  %9 = load i8, ptr %8, align 1
  %10 = load ptr, ptr %3, align 4
  %11 = getelementptr inbounds %struct.ab8500_regulator_info, ptr %3, i32 0, i32 15
  %12 = load i8, ptr %11, align 1
  %13 = getelementptr inbounds %struct.ab8500_regulator_info, ptr %3, i32 0, i32 16
  %14 = load i8, ptr %13, align 4
  %15 = call i32 @abx500_get_register_interruptible(ptr noundef %10, i8 noundef zeroext %12, i8 noundef zeroext %14, ptr noundef nonnull %2) #6
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %7
  %18 = call ptr @rdev_get_dev(ptr noundef %0) #6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.19) #7
  br label %29

19:                                               ; preds = %7
  %20 = call i8 @llvm.cttz.i8(i8 %9, i1 true), !range !8
  %21 = zext i8 %20 to i32
  %22 = icmp eq i8 %9, 0
  %23 = select i1 %22, i32 -1, i32 %21
  %24 = load i8, ptr %2, align 1
  %25 = load i8, ptr %8, align 1
  %26 = and i8 %25, %24
  %27 = zext i8 %26 to i32
  %28 = lshr i32 %27, %23
  br label %29

29:                                               ; preds = %19, %17, %5
  %30 = phi i32 [ -22, %5 ], [ %15, %17 ], [ %28, %19 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #6
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ab8500_regulator_enable(ptr noundef %0) #4 {
  %2 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #6
  %3 = icmp eq ptr %2, null
  br i1 %3, label %16, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr %2, align 4
  %6 = getelementptr inbounds %struct.ab8500_regulator_info, ptr %2, i32 0, i32 4
  %7 = load i8, ptr %6, align 4
  %8 = getelementptr inbounds %struct.ab8500_regulator_info, ptr %2, i32 0, i32 5
  %9 = load i8, ptr %8, align 1
  %10 = getelementptr inbounds %struct.ab8500_regulator_info, ptr %2, i32 0, i32 6
  %11 = load i8, ptr %10, align 2
  %12 = getelementptr inbounds %struct.ab8500_regulator_info, ptr %2, i32 0, i32 7
  %13 = load i8, ptr %12, align 1
  %14 = tail call i32 @abx500_mask_and_set_register_interruptible(ptr noundef %5, i8 noundef zeroext %7, i8 noundef zeroext %9, i8 noundef zeroext %11, i8 noundef zeroext %13) #6
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %4, %1
  %17 = phi ptr [ @.str.17, %1 ], [ @.str.20, %4 ]
  %18 = phi i32 [ -22, %1 ], [ %14, %4 ]
  %19 = tail call ptr @rdev_get_dev(ptr noundef %0) #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull %17) #7
  br label %20

20:                                               ; preds = %16, %4
  %21 = phi i32 [ %14, %4 ], [ %18, %16 ]
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ab8500_regulator_disable(ptr noundef %0) #4 {
  %2 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #6
  %3 = icmp eq ptr %2, null
  br i1 %3, label %14, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr %2, align 4
  %6 = getelementptr inbounds %struct.ab8500_regulator_info, ptr %2, i32 0, i32 4
  %7 = load i8, ptr %6, align 4
  %8 = getelementptr inbounds %struct.ab8500_regulator_info, ptr %2, i32 0, i32 5
  %9 = load i8, ptr %8, align 1
  %10 = getelementptr inbounds %struct.ab8500_regulator_info, ptr %2, i32 0, i32 6
  %11 = load i8, ptr %10, align 2
  %12 = tail call i32 @abx500_mask_and_set_register_interruptible(ptr noundef %5, i8 noundef zeroext %7, i8 noundef zeroext %9, i8 noundef zeroext %11, i8 noundef zeroext 0) #6
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %4, %1
  %15 = phi ptr [ @.str.17, %1 ], [ @.str.21, %4 ]
  %16 = phi i32 [ -22, %1 ], [ %12, %4 ]
  %17 = tail call ptr @rdev_get_dev(ptr noundef %0) #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull %15) #7
  br label %18

18:                                               ; preds = %14, %4
  %19 = phi i32 [ %12, %4 ], [ %16, %14 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ab8500_regulator_is_enabled(ptr noundef %0) #4 {
  %2 = alloca i8, align 1
  %3 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #6
  store i8 0, ptr %2, align 1, !annotation !9
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call ptr @rdev_get_dev(ptr noundef %0) #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.17) #7
  br label %26

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 4
  %9 = getelementptr inbounds %struct.ab8500_regulator_info, ptr %3, i32 0, i32 4
  %10 = load i8, ptr %9, align 4
  %11 = getelementptr inbounds %struct.ab8500_regulator_info, ptr %3, i32 0, i32 5
  %12 = load i8, ptr %11, align 1
  %13 = call i32 @abx500_get_register_interruptible(ptr noundef %8, i8 noundef zeroext %10, i8 noundef zeroext %12, ptr noundef nonnull %2) #6
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %7
  %16 = call ptr @rdev_get_dev(ptr noundef %0) #6
  %17 = load i8, ptr %11, align 1
  %18 = zext i8 %17 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.22, i32 noundef %18) #7
  br label %26

19:                                               ; preds = %7
  %20 = load i8, ptr %2, align 1
  %21 = getelementptr inbounds %struct.ab8500_regulator_info, ptr %3, i32 0, i32 6
  %22 = load i8, ptr %21, align 2
  %23 = and i8 %22, %20
  %24 = icmp ne i8 %23, 0
  %25 = zext i1 %24 to i32
  br label %26

26:                                               ; preds = %19, %15, %5
  %27 = phi i32 [ -22, %5 ], [ %13, %15 ], [ %25, %19 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #6
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ab8500_regulator_set_mode(ptr noundef %0, i32 noundef %1) #4 {
  %3 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #6
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = tail call ptr @rdev_get_dev(ptr noundef %0) #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.17) #7
  br label %94

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.ab8500_regulator_info, ptr %3, i32 0, i32 12
  %9 = load i8, ptr %8, align 4
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.ab8500_regulator_info, ptr %3, i32 0, i32 10
  %13 = getelementptr inbounds %struct.ab8500_regulator_info, ptr %3, i32 0, i32 11
  br label %19

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.ab8500_regulator_info, ptr %3, i32 0, i32 4
  %16 = getelementptr inbounds %struct.ab8500_regulator_info, ptr %3, i32 0, i32 5
  %17 = getelementptr inbounds %struct.ab8500_regulator_info, ptr %3, i32 0, i32 6
  %18 = load i8, ptr %17, align 2
  br label %19

19:                                               ; preds = %14, %11
  %20 = phi ptr [ %12, %11 ], [ %15, %14 ]
  %21 = phi ptr [ %13, %11 ], [ %16, %14 ]
  %22 = phi i8 [ %9, %11 ], [ %18, %14 ]
  %23 = load i8, ptr %21, align 1
  %24 = load i8, ptr %20, align 2
  %25 = getelementptr inbounds %struct.ab8500_regulator_info, ptr %3, i32 0, i32 2
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %19
  tail call void @mutex_lock(ptr noundef nonnull @shared_mode_mutex) #6
  br label %29

29:                                               ; preds = %28, %19
  switch i32 %1, label %89 [
    i32 2, label %30
    i32 4, label %37
  ]

30:                                               ; preds = %29
  %31 = load i8, ptr %8, align 4
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.ab8500_regulator_info, ptr %3, i32 0, i32 14
  br label %57

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.ab8500_regulator_info, ptr %3, i32 0, i32 9
  br label %61

37:                                               ; preds = %29
  %38 = load ptr, ptr %25, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %49, label %40

40:                                               ; preds = %37
  %41 = load ptr, ptr %38, align 4
  %42 = getelementptr inbounds %struct.ab8500_regulator_info, ptr %41, i32 0, i32 2
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.ab8500_shared_mode, ptr %43, i32 0, i32 1
  %45 = load i8, ptr %44, align 4, !range !10
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %40
  %48 = getelementptr inbounds %struct.ab8500_shared_mode, ptr %38, i32 0, i32 1
  store i8 1, ptr %48, align 4
  br label %89

49:                                               ; preds = %40, %37
  %50 = xor i1 %39, true
  %51 = load i8, ptr %8, align 4
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.ab8500_regulator_info, ptr %3, i32 0, i32 13
  br label %57

55:                                               ; preds = %49
  %56 = getelementptr inbounds %struct.ab8500_regulator_info, ptr %3, i32 0, i32 8
  br label %61

57:                                               ; preds = %53, %33
  %58 = phi ptr [ %54, %53 ], [ %34, %33 ]
  %59 = phi i1 [ %50, %53 ], [ false, %33 ]
  %60 = load i8, ptr %58, align 1
  br label %67

61:                                               ; preds = %55, %35
  %62 = phi ptr [ %36, %35 ], [ %56, %55 ]
  %63 = phi i1 [ false, %35 ], [ %50, %55 ]
  %64 = load i8, ptr %62, align 1
  %65 = tail call i32 @ab8500_regulator_is_enabled(ptr noundef %0)
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %75, label %67

67:                                               ; preds = %61, %57
  %68 = phi i8 [ %64, %61 ], [ %60, %57 ]
  %69 = phi i1 [ %63, %61 ], [ %59, %57 ]
  %70 = load ptr, ptr %3, align 4
  %71 = tail call i32 @abx500_mask_and_set_register_interruptible(ptr noundef %70, i8 noundef zeroext %24, i8 noundef zeroext %23, i8 noundef zeroext %22, i8 noundef zeroext %68) #6
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %67
  %74 = tail call ptr @rdev_get_dev(ptr noundef %0) #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %74, ptr noundef nonnull @.str.23) #7
  br label %89

75:                                               ; preds = %67, %61
  %76 = phi i8 [ %68, %67 ], [ %64, %61 ]
  %77 = phi i1 [ %69, %67 ], [ %63, %61 ]
  %78 = phi i32 [ %71, %67 ], [ 0, %61 ]
  %79 = load i8, ptr %8, align 4
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %75
  %82 = getelementptr inbounds %struct.ab8500_regulator_info, ptr %3, i32 0, i32 7
  store i8 %76, ptr %82, align 1
  br label %83

83:                                               ; preds = %81, %75
  %84 = load ptr, ptr %25, align 4
  %85 = icmp eq ptr %84, null
  br i1 %85, label %94, label %86

86:                                               ; preds = %83
  %87 = getelementptr inbounds %struct.ab8500_shared_mode, ptr %84, i32 0, i32 1
  %88 = zext i1 %77 to i8
  store i8 %88, ptr %87, align 4
  br label %89

89:                                               ; preds = %86, %73, %47, %29
  %90 = phi i32 [ -22, %29 ], [ %78, %86 ], [ %71, %73 ], [ 0, %47 ]
  %91 = load ptr, ptr %25, align 4
  %92 = icmp eq ptr %91, null
  br i1 %92, label %94, label %93

93:                                               ; preds = %89
  tail call void @mutex_unlock(ptr noundef nonnull @shared_mode_mutex) #6
  br label %94

94:                                               ; preds = %93, %89, %83, %5
  %95 = phi i32 [ -22, %5 ], [ %90, %93 ], [ %90, %89 ], [ %78, %83 ]
  ret i32 %95
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ab8500_regulator_get_mode(ptr noundef %0) #4 {
  %2 = alloca i8, align 1
  %3 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #6
  store i8 0, ptr %2, align 1, !annotation !9
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call ptr @rdev_get_dev(ptr noundef %0) #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.17) #7
  br label %47

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.ab8500_regulator_info, ptr %3, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.ab8500_shared_mode, ptr %9, i32 0, i32 1
  %13 = load i8, ptr %12, align 4, !range !10
  %14 = icmp eq i8 %13, 0
  %15 = select i1 %14, i32 2, i32 4
  br label %47

16:                                               ; preds = %7
  %17 = getelementptr inbounds %struct.ab8500_regulator_info, ptr %3, i32 0, i32 12
  %18 = load i8, ptr %17, align 4
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %32, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr %3, align 4
  %22 = getelementptr inbounds %struct.ab8500_regulator_info, ptr %3, i32 0, i32 10
  %23 = load i8, ptr %22, align 2
  %24 = getelementptr inbounds %struct.ab8500_regulator_info, ptr %3, i32 0, i32 11
  %25 = load i8, ptr %24, align 1
  %26 = call i32 @abx500_get_register_interruptible(ptr noundef %21, i8 noundef zeroext %23, i8 noundef zeroext %25, ptr noundef nonnull %2) #6
  %27 = load i8, ptr %2, align 1
  %28 = load i8, ptr %17, align 4
  %29 = and i8 %28, %27
  %30 = getelementptr inbounds %struct.ab8500_regulator_info, ptr %3, i32 0, i32 14
  %31 = getelementptr inbounds %struct.ab8500_regulator_info, ptr %3, i32 0, i32 13
  br label %37

32:                                               ; preds = %16
  %33 = getelementptr inbounds %struct.ab8500_regulator_info, ptr %3, i32 0, i32 7
  %34 = load i8, ptr %33, align 1
  %35 = getelementptr inbounds %struct.ab8500_regulator_info, ptr %3, i32 0, i32 9
  %36 = getelementptr inbounds %struct.ab8500_regulator_info, ptr %3, i32 0, i32 8
  br label %37

37:                                               ; preds = %32, %20
  %38 = phi i8 [ %29, %20 ], [ %34, %32 ]
  %39 = phi ptr [ %30, %20 ], [ %35, %32 ]
  %40 = phi ptr [ %31, %20 ], [ %36, %32 ]
  %41 = load i8, ptr %39, align 1
  %42 = icmp eq i8 %38, %41
  br i1 %42, label %47, label %43

43:                                               ; preds = %37
  %44 = load i8, ptr %40, align 1
  %45 = icmp eq i8 %38, %44
  %46 = select i1 %45, i32 4, i32 -22
  br label %47

47:                                               ; preds = %43, %37, %11, %5
  %48 = phi i32 [ -22, %5 ], [ %15, %11 ], [ 2, %37 ], [ %46, %43 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #6
  ret i32 %48
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ab8500_regulator_get_optimum_mode(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #4 {
  %5 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #6
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %4
  %8 = tail call ptr @rdev_get_dev(ptr noundef %0) #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.17) #7
  br label %14

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.ab8500_regulator_info, ptr %5, i32 0, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = icmp slt i32 %11, %3
  %13 = select i1 %12, i32 2, i32 4
  br label %14

14:                                               ; preds = %9, %7
  %15 = phi i32 [ -22, %7 ], [ %13, %9 ]
  ret i32 %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdev_get_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @abx500_mask_and_set_register_interruptible(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @abx500_get_register_interruptible(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.cttz.i8(i8, i1 immarg) #5

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
!8 = !{i8 0, i8 9}
!9 = !{!"auto-init"}
!10 = !{i8 0, i8 2}
