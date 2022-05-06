; ModuleID = '/llk/IR/drivers/regulator/palmas-regulator.c_pt.bc'
source_filename = "../drivers/regulator/palmas-regulator.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.palmas_regs_info = type { ptr, ptr, i8, i8, i8, i32 }
%struct.palmas_pmic_driver_data = type { i32, i32, i32, i32, i32, i8, ptr, ptr, ptr, ptr, ptr }
%struct.of_regulator_match = type { ptr, ptr, ptr, ptr, ptr }
%struct.palmas_sleep_requestor_info = type { i32, i32, i32 }
%struct.regulator_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.linear_range = type { i32, i32, i32, i32 }
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
%struct.palmas_pmic = type { ptr, ptr, [27 x %struct.regulator_desc], %struct.mutex, i32, i32, i32, [10 x i32], [10 x i32], [10 x i32] }
%struct.regulator_desc = type { ptr, ptr, ptr, i8, ptr, ptr, i32, i8, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, ptr }
%struct.palmas = type { ptr, [3 x ptr], [3 x ptr], i32, i32, i32, i32, %struct.mutex, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8 }
%struct.palmas_pmic_platform_data = type { [27 x ptr], [27 x ptr], i32, i8 }
%struct.palmas_reg_init = type { i32, i32, i32, i8 }
%struct.regulator_config = type { ptr, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_palmas_regulator__252_1678_palmas_init4 = internal global ptr @palmas_init, section ".initcall4.init", align 4
@palmas_driver = internal global %struct.platform_driver { ptr @palmas_regulators_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @of_palmas_match_tbl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_palmas_exit = internal global ptr @palmas_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author253 = internal constant [60 x i8] c"palmas_regulator.author=Graeme Gregory <gg@slimlogic.co.uk>\00", section ".modinfo", align 1
@__UNIQUE_ID_description254 = internal constant [61 x i8] c"palmas_regulator.description=Palmas voltage regulator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file255 = internal constant [57 x i8] c"palmas_regulator.file=drivers/regulator/palmas-regulator\00", section ".modinfo", align 1
@__UNIQUE_ID_license256 = internal constant [29 x i8] c"palmas_regulator.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias257 = internal constant [44 x i8] c"palmas_regulator.alias=platform:palmas-pmic\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [12 x i8] c"palmas-pmic\00", align 1
@of_palmas_match_tbl = internal constant [10 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,palmas-pmic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @palmas_ddata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,twl6035-pmic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @palmas_ddata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,twl6036-pmic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @palmas_ddata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,twl6037-pmic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @palmas_ddata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,tps65913-pmic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @palmas_ddata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,tps65914-pmic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @palmas_ddata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,tps80036-pmic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @palmas_ddata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,tps659038-pmic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @palmas_ddata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,tps65917-pmic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tps65917_ddata }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"ti,tps659038-pmic\00", align 1
@palmas_generic_regs_info = internal global [27 x %struct.palmas_regs_info] [%struct.palmas_regs_info { ptr @.str.2, ptr @.str.3, i8 3, i8 0, i8 1, i32 7 }, %struct.palmas_regs_info { ptr @.str.4, ptr @.str.3, i8 3, i8 0, i8 1, i32 7 }, %struct.palmas_regs_info { ptr @.str.5, ptr @.str.6, i8 7, i8 4, i8 0, i32 8 }, %struct.palmas_regs_info { ptr @.str.7, ptr @.str.8, i8 11, i8 8, i8 9, i32 9 }, %struct.palmas_regs_info { ptr @.str.9, ptr @.str.8, i8 11, i8 8, i8 9, i32 9 }, %struct.palmas_regs_info { ptr @.str.10, ptr @.str.11, i8 15, i8 12, i8 13, i32 10 }, %struct.palmas_regs_info { ptr @.str.12, ptr @.str.13, i8 19, i8 16, i8 0, i32 11 }, %struct.palmas_regs_info { ptr @.str.14, ptr @.str.15, i8 23, i8 20, i8 21, i32 12 }, %struct.palmas_regs_info { ptr @.str.16, ptr @.str.17, i8 27, i8 24, i8 0, i32 13 }, %struct.palmas_regs_info { ptr @.str.18, ptr @.str.19, i8 0, i8 28, i8 0, i32 14 }, %struct.palmas_regs_info { ptr @.str.20, ptr @.str.21, i8 0, i8 28, i8 0, i32 14 }, %struct.palmas_regs_info { ptr @.str.22, ptr @.str.23, i8 1, i8 0, i8 0, i32 15 }, %struct.palmas_regs_info { ptr @.str.24, ptr @.str.25, i8 3, i8 2, i8 0, i32 16 }, %struct.palmas_regs_info { ptr @.str.26, ptr @.str.27, i8 5, i8 4, i8 0, i32 17 }, %struct.palmas_regs_info { ptr @.str.28, ptr @.str.29, i8 7, i8 6, i8 0, i32 18 }, %struct.palmas_regs_info { ptr @.str.30, ptr @.str.31, i8 9, i8 8, i8 0, i32 19 }, %struct.palmas_regs_info { ptr @.str.32, ptr @.str.33, i8 11, i8 10, i8 0, i32 20 }, %struct.palmas_regs_info { ptr @.str.34, ptr @.str.35, i8 13, i8 12, i8 0, i32 21 }, %struct.palmas_regs_info { ptr @.str.36, ptr @.str.37, i8 15, i8 14, i8 0, i32 22 }, %struct.palmas_regs_info { ptr @.str.38, ptr @.str.39, i8 17, i8 16, i8 0, i32 23 }, %struct.palmas_regs_info { ptr @.str.40, ptr @.str.41, i8 19, i8 18, i8 0, i32 24 }, %struct.palmas_regs_info { ptr @.str.42, ptr @.str.43, i8 21, i8 20, i8 0, i32 25 }, %struct.palmas_regs_info { ptr @.str.44, ptr null, i8 0, i8 2, i8 0, i32 0 }, %struct.palmas_regs_info { ptr @.str.45, ptr null, i8 0, i8 3, i8 0, i32 1 }, %struct.palmas_regs_info { ptr @.str.46, ptr null, i8 0, i8 18, i8 0, i32 6 }, %struct.palmas_regs_info { ptr @.str.47, ptr null, i8 0, i8 4, i8 0, i32 2 }, %struct.palmas_regs_info { ptr @.str.48, ptr null, i8 0, i8 5, i8 0, i32 3 }], align 4
@palmas_ddata = internal global %struct.palmas_pmic_driver_data { i32 0, i32 10, i32 11, i32 21, i32 27, i8 1, ptr @palmas_generic_regs_info, ptr @palmas_matches, ptr @palma_sleep_req_info, ptr @palmas_smps_registration, ptr @palmas_ldo_registration }, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"SMPS12\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"smps1-in\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"SMPS123\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"SMPS3\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"smps3-in\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"SMPS45\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"smps4-in\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"SMPS457\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"SMPS6\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"smps6-in\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"SMPS7\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"smps7-in\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"SMPS8\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"smps8-in\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"SMPS9\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"smps9-in\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"SMPS10_OUT2\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"smps10-in\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"SMPS10_OUT1\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"smps10-out2\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"LDO1\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"ldo1-in\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"LDO2\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"ldo2-in\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"LDO3\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"ldo3-in\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"LDO4\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"ldo4-in\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"LDO5\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c"ldo5-in\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"LDO6\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"ldo6-in\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"LDO7\00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c"ldo7-in\00", align 1
@.str.36 = private unnamed_addr constant [5 x i8] c"LDO8\00", align 1
@.str.37 = private unnamed_addr constant [8 x i8] c"ldo8-in\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"LDO9\00", align 1
@.str.39 = private unnamed_addr constant [8 x i8] c"ldo9-in\00", align 1
@.str.40 = private unnamed_addr constant [6 x i8] c"LDOLN\00", align 1
@.str.41 = private unnamed_addr constant [9 x i8] c"ldoln-in\00", align 1
@.str.42 = private unnamed_addr constant [7 x i8] c"LDOUSB\00", align 1
@.str.43 = private unnamed_addr constant [10 x i8] c"ldousb-in\00", align 1
@.str.44 = private unnamed_addr constant [7 x i8] c"REGEN1\00", align 1
@.str.45 = private unnamed_addr constant [7 x i8] c"REGEN2\00", align 1
@.str.46 = private unnamed_addr constant [7 x i8] c"REGEN3\00", align 1
@.str.47 = private unnamed_addr constant [7 x i8] c"SYSEN1\00", align 1
@.str.48 = private unnamed_addr constant [7 x i8] c"SYSEN2\00", align 1
@palmas_matches = internal global [27 x %struct.of_regulator_match] [%struct.of_regulator_match { ptr @.str.49, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.50, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.51, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.52, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.53, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.54, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.55, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.56, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.57, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.58, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.59, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.60, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.61, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.62, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.63, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.64, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.65, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.66, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.67, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.68, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.69, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.70, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.71, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.72, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.73, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.74, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.75, ptr null, ptr null, ptr null, ptr null }], align 4
@palma_sleep_req_info = internal global [26 x %struct.palmas_sleep_requestor_info] [%struct.palmas_sleep_requestor_info zeroinitializer, %struct.palmas_sleep_requestor_info { i32 1, i32 0, i32 1 }, %struct.palmas_sleep_requestor_info { i32 2, i32 0, i32 2 }, %struct.palmas_sleep_requestor_info { i32 3, i32 0, i32 3 }, %struct.palmas_sleep_requestor_info { i32 4, i32 0, i32 4 }, %struct.palmas_sleep_requestor_info { i32 5, i32 0, i32 5 }, %struct.palmas_sleep_requestor_info { i32 6, i32 0, i32 6 }, %struct.palmas_sleep_requestor_info { i32 7, i32 1, i32 0 }, %struct.palmas_sleep_requestor_info { i32 8, i32 1, i32 1 }, %struct.palmas_sleep_requestor_info { i32 9, i32 1, i32 2 }, %struct.palmas_sleep_requestor_info { i32 10, i32 1, i32 3 }, %struct.palmas_sleep_requestor_info { i32 11, i32 1, i32 4 }, %struct.palmas_sleep_requestor_info { i32 12, i32 1, i32 5 }, %struct.palmas_sleep_requestor_info { i32 13, i32 1, i32 6 }, %struct.palmas_sleep_requestor_info { i32 14, i32 1, i32 7 }, %struct.palmas_sleep_requestor_info { i32 15, i32 2, i32 0 }, %struct.palmas_sleep_requestor_info { i32 16, i32 2, i32 1 }, %struct.palmas_sleep_requestor_info { i32 17, i32 2, i32 2 }, %struct.palmas_sleep_requestor_info { i32 18, i32 2, i32 3 }, %struct.palmas_sleep_requestor_info { i32 19, i32 2, i32 4 }, %struct.palmas_sleep_requestor_info { i32 20, i32 2, i32 5 }, %struct.palmas_sleep_requestor_info { i32 21, i32 2, i32 6 }, %struct.palmas_sleep_requestor_info { i32 22, i32 2, i32 7 }, %struct.palmas_sleep_requestor_info { i32 23, i32 3, i32 0 }, %struct.palmas_sleep_requestor_info { i32 24, i32 3, i32 1 }, %struct.palmas_sleep_requestor_info { i32 25, i32 3, i32 2 }], align 4
@.str.49 = private unnamed_addr constant [7 x i8] c"smps12\00", align 1
@.str.50 = private unnamed_addr constant [8 x i8] c"smps123\00", align 1
@.str.51 = private unnamed_addr constant [6 x i8] c"smps3\00", align 1
@.str.52 = private unnamed_addr constant [7 x i8] c"smps45\00", align 1
@.str.53 = private unnamed_addr constant [8 x i8] c"smps457\00", align 1
@.str.54 = private unnamed_addr constant [6 x i8] c"smps6\00", align 1
@.str.55 = private unnamed_addr constant [6 x i8] c"smps7\00", align 1
@.str.56 = private unnamed_addr constant [6 x i8] c"smps8\00", align 1
@.str.57 = private unnamed_addr constant [6 x i8] c"smps9\00", align 1
@.str.58 = private unnamed_addr constant [12 x i8] c"smps10_out2\00", align 1
@.str.59 = private unnamed_addr constant [12 x i8] c"smps10_out1\00", align 1
@.str.60 = private unnamed_addr constant [5 x i8] c"ldo1\00", align 1
@.str.61 = private unnamed_addr constant [5 x i8] c"ldo2\00", align 1
@.str.62 = private unnamed_addr constant [5 x i8] c"ldo3\00", align 1
@.str.63 = private unnamed_addr constant [5 x i8] c"ldo4\00", align 1
@.str.64 = private unnamed_addr constant [5 x i8] c"ldo5\00", align 1
@.str.65 = private unnamed_addr constant [5 x i8] c"ldo6\00", align 1
@.str.66 = private unnamed_addr constant [5 x i8] c"ldo7\00", align 1
@.str.67 = private unnamed_addr constant [5 x i8] c"ldo8\00", align 1
@.str.68 = private unnamed_addr constant [5 x i8] c"ldo9\00", align 1
@.str.69 = private unnamed_addr constant [6 x i8] c"ldoln\00", align 1
@.str.70 = private unnamed_addr constant [7 x i8] c"ldousb\00", align 1
@.str.71 = private unnamed_addr constant [7 x i8] c"regen1\00", align 1
@.str.72 = private unnamed_addr constant [7 x i8] c"regen2\00", align 1
@.str.73 = private unnamed_addr constant [7 x i8] c"regen3\00", align 1
@.str.74 = private unnamed_addr constant [7 x i8] c"sysen1\00", align 1
@.str.75 = private unnamed_addr constant [7 x i8] c"sysen2\00", align 1
@.str.76 = private unnamed_addr constant [30 x i8] c"reading TSTEP reg failed: %d\0A\00", align 1
@palmas_smps_ramp_delay = internal unnamed_addr constant [4 x i32] [i32 0, i32 10000, i32 5000, i32 2500], align 4
@palmas_ops_smps10 = internal constant %struct.regulator_ops { ptr @regulator_list_voltage_linear, ptr null, ptr @regulator_map_voltage_linear, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_set_bypass_regmap, ptr @regulator_get_bypass_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@smps_high_ranges = internal constant [4 x %struct.linear_range] [%struct.linear_range zeroinitializer, %struct.linear_range { i32 1000000, i32 1, i32 6, i32 0 }, %struct.linear_range { i32 1020000, i32 7, i32 121, i32 20000 }, %struct.linear_range { i32 3300000, i32 122, i32 127, i32 0 }], align 4
@smps_low_ranges = internal constant [4 x %struct.linear_range] [%struct.linear_range zeroinitializer, %struct.linear_range { i32 500000, i32 1, i32 6, i32 0 }, %struct.linear_range { i32 510000, i32 7, i32 121, i32 10000 }, %struct.linear_range { i32 1650000, i32 122, i32 127, i32 0 }], align 4
@palmas_ops_ext_control_smps = internal constant %struct.regulator_ops { ptr @regulator_list_voltage_linear_range, ptr null, ptr @regulator_map_voltage_linear_range, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @palmas_set_mode_smps, ptr @palmas_get_mode_smps, ptr null, ptr null, ptr @palmas_smps_set_ramp_delay, ptr null, ptr @regulator_set_voltage_time_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@palmas_ops_smps = internal constant %struct.regulator_ops { ptr @regulator_list_voltage_linear_range, ptr null, ptr @regulator_map_voltage_linear_range, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr @palmas_set_mode_smps, ptr @palmas_get_mode_smps, ptr null, ptr null, ptr @palmas_smps_set_ramp_delay, ptr null, ptr @regulator_set_voltage_time_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.77 = private unnamed_addr constant [33 x i8] c"failed to register %s regulator\0A\00", align 1
@.str.78 = private unnamed_addr constant [47 x i8] c"Ext control config for regulator %d failed %d\0A\00", align 1
@.str.79 = private unnamed_addr constant [24 x i8] c"TSTEP write failed: %d\0A\00", align 1
@palmas_ops_ext_control_ldo = internal constant %struct.regulator_ops { ptr @regulator_list_voltage_linear, ptr null, ptr @regulator_map_voltage_linear, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@palmas_ops_ldo = internal constant %struct.regulator_ops { ptr @regulator_list_voltage_linear, ptr null, ptr @regulator_map_voltage_linear, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @palmas_is_enabled_ldo, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@palmas_ops_ldo9 = internal constant %struct.regulator_ops { ptr @regulator_list_voltage_linear, ptr null, ptr @regulator_map_voltage_linear, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @palmas_is_enabled_ldo, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_set_bypass_regmap, ptr @regulator_get_bypass_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@palmas_ops_ext_control_extreg = internal constant %struct.regulator_ops zeroinitializer, align 4
@palmas_ops_extreg = internal constant %struct.regulator_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.80 = private unnamed_addr constant [35 x i8] c"Error in reading ldo8 control reg\0A\00", align 1
@.str.81 = private unnamed_addr constant [33 x i8] c"Error in enabling tracking mode\0A\00", align 1
@.str.82 = private unnamed_addr constant [35 x i8] c"Error in reading ldo8 voltage reg\0A\00", align 1
@.str.83 = private unnamed_addr constant [35 x i8] c"Error in setting ldo8 voltage reg\0A\00", align 1
@.str.84 = private unnamed_addr constant [38 x i8] c"LDO Register 0x%02x update failed %d\0A\00", align 1
@.str.85 = private unnamed_addr constant [38 x i8] c"Resource reg 0x%02x update failed %d\0A\00", align 1
@.str.86 = private unnamed_addr constant [43 x i8] c"Resource Register 0x%02x update failed %d\0A\00", align 1
@.str.87 = private unnamed_addr constant [11 x i8] c"regulators\00", align 1
@.str.88 = private unnamed_addr constant [26 x i8] c"regulator node not found\0A\00", align 1
@.str.89 = private unnamed_addr constant [39 x i8] c"Error parsing regulator init data: %d\0A\00", align 1
@.str.90 = private unnamed_addr constant [14 x i8] c"ti,warm-reset\00", align 1
@.str.91 = private unnamed_addr constant [14 x i8] c"ti,roof-floor\00", align 1
@.str.92 = private unnamed_addr constant [37 x i8] c"drivers/regulator/palmas-regulator.c\00", align 1
@.str.93 = private unnamed_addr constant [35 x i8] c"%s: Invalid roof-floor option: %u\0A\00", align 1
@.str.94 = private unnamed_addr constant [14 x i8] c"ti,mode-sleep\00", align 1
@.str.95 = private unnamed_addr constant [14 x i8] c"ti,smps-range\00", align 1
@.str.96 = private unnamed_addr constant [24 x i8] c"ti,enable-ldo8-tracking\00", align 1
@.str.97 = private unnamed_addr constant [17 x i8] c"ti,ldo6-vibrator\00", align 1
@tps65917_ddata = internal global %struct.palmas_pmic_driver_data { i32 0, i32 5, i32 6, i32 10, i32 14, i8 1, ptr @tps65917_regs_info, ptr @tps65917_matches, ptr @tps65917_sleep_req_info, ptr @tps65917_smps_registration, ptr @tps65917_ldo_registration }, align 4
@tps65917_regs_info = internal global [14 x %struct.palmas_regs_info] [%struct.palmas_regs_info { ptr @.str.98, ptr @.str.3, i8 3, i8 0, i8 0, i32 3 }, %struct.palmas_regs_info { ptr @.str.99, ptr @.str.100, i8 7, i8 4, i8 0, i32 4 }, %struct.palmas_regs_info { ptr @.str.5, ptr @.str.6, i8 15, i8 12, i8 0, i32 5 }, %struct.palmas_regs_info { ptr @.str.101, ptr @.str.8, i8 19, i8 16, i8 0, i32 6 }, %struct.palmas_regs_info { ptr @.str.102, ptr @.str.103, i8 27, i8 24, i8 0, i32 7 }, %struct.palmas_regs_info { ptr @.str.2, ptr @.str.3, i8 3, i8 0, i8 0, i32 8 }, %struct.palmas_regs_info { ptr @.str.22, ptr @.str.23, i8 1, i8 0, i8 0, i32 9 }, %struct.palmas_regs_info { ptr @.str.24, ptr @.str.25, i8 3, i8 2, i8 0, i32 10 }, %struct.palmas_regs_info { ptr @.str.26, ptr @.str.27, i8 5, i8 4, i8 0, i32 11 }, %struct.palmas_regs_info { ptr @.str.28, ptr @.str.29, i8 15, i8 14, i8 0, i32 12 }, %struct.palmas_regs_info { ptr @.str.30, ptr @.str.31, i8 19, i8 18, i8 0, i32 13 }, %struct.palmas_regs_info { ptr @.str.44, ptr null, i8 0, i8 2, i8 0, i32 0 }, %struct.palmas_regs_info { ptr @.str.45, ptr null, i8 0, i8 18, i8 0, i32 1 }, %struct.palmas_regs_info { ptr @.str.46, ptr null, i8 0, i8 19, i8 0, i32 2 }], align 4
@tps65917_matches = internal global [16 x %struct.of_regulator_match] [%struct.of_regulator_match { ptr @.str.104, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.105, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.51, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.106, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.107, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.49, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.60, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.61, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.62, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.63, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.64, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.71, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.72, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.73, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.74, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.75, ptr null, ptr null, ptr null, ptr null }], align 4
@tps65917_sleep_req_info = internal global [14 x %struct.palmas_sleep_requestor_info] [%struct.palmas_sleep_requestor_info zeroinitializer, %struct.palmas_sleep_requestor_info { i32 1, i32 0, i32 1 }, %struct.palmas_sleep_requestor_info { i32 2, i32 0, i32 6 }, %struct.palmas_sleep_requestor_info { i32 3, i32 1, i32 0 }, %struct.palmas_sleep_requestor_info { i32 4, i32 1, i32 1 }, %struct.palmas_sleep_requestor_info { i32 5, i32 1, i32 2 }, %struct.palmas_sleep_requestor_info { i32 6, i32 1, i32 3 }, %struct.palmas_sleep_requestor_info { i32 7, i32 1, i32 4 }, %struct.palmas_sleep_requestor_info { i32 8, i32 1, i32 5 }, %struct.palmas_sleep_requestor_info { i32 9, i32 2, i32 0 }, %struct.palmas_sleep_requestor_info { i32 10, i32 2, i32 1 }, %struct.palmas_sleep_requestor_info { i32 11, i32 2, i32 2 }, %struct.palmas_sleep_requestor_info { i32 12, i32 2, i32 3 }, %struct.palmas_sleep_requestor_info { i32 13, i32 2, i32 4 }], align 4
@.str.98 = private unnamed_addr constant [6 x i8] c"SMPS1\00", align 1
@.str.99 = private unnamed_addr constant [6 x i8] c"SMPS2\00", align 1
@.str.100 = private unnamed_addr constant [9 x i8] c"smps2-in\00", align 1
@.str.101 = private unnamed_addr constant [6 x i8] c"SMPS4\00", align 1
@.str.102 = private unnamed_addr constant [6 x i8] c"SMPS5\00", align 1
@.str.103 = private unnamed_addr constant [9 x i8] c"smps5-in\00", align 1
@.str.104 = private unnamed_addr constant [6 x i8] c"smps1\00", align 1
@.str.105 = private unnamed_addr constant [6 x i8] c"smps2\00", align 1
@.str.106 = private unnamed_addr constant [6 x i8] c"smps4\00", align 1
@.str.107 = private unnamed_addr constant [6 x i8] c"smps5\00", align 1
@tps65917_ops_ext_control_smps = internal constant %struct.regulator_ops { ptr @regulator_list_voltage_linear_range, ptr null, ptr @regulator_map_voltage_linear_range, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @palmas_set_mode_smps, ptr @palmas_get_mode_smps, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@tps65917_ops_smps = internal constant %struct.regulator_ops { ptr @regulator_list_voltage_linear_range, ptr null, ptr @regulator_map_voltage_linear_range, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr @palmas_set_mode_smps, ptr @palmas_get_mode_smps, ptr null, ptr null, ptr null, ptr null, ptr @regulator_set_voltage_time_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@tps65917_ops_ldo = internal constant %struct.regulator_ops { ptr @regulator_list_voltage_linear, ptr null, ptr @regulator_map_voltage_linear, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @palmas_is_enabled_ldo, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_set_voltage_time_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@tps65917_ops_ldo_1_2 = internal constant %struct.regulator_ops { ptr @regulator_list_voltage_linear, ptr null, ptr @regulator_map_voltage_linear, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @palmas_is_enabled_ldo, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_set_voltage_time_sel, ptr null, ptr null, ptr null, ptr null, ptr @regulator_set_bypass_regmap, ptr @regulator_get_bypass_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_alias257, ptr @__UNIQUE_ID_author253, ptr @__UNIQUE_ID_description254, ptr @__UNIQUE_ID_file255, ptr @__UNIQUE_ID_license256, ptr @__exitcall_palmas_exit, ptr @__initcall__kmod_palmas_regulator__252_1678_palmas_init4, ptr @palmas_exit], section "llvm.metadata"
@switch.table.palmas_regulators_probe = private unnamed_addr constant [3 x i32] [i32 1, i32 2, i32 4], align 4
@switch.table.palmas_get_mode_smps = private unnamed_addr constant [3 x i32] [i32 2, i32 4, i32 1], align 4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @palmas_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @palmas_driver, ptr noundef null) #6
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @palmas_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @palmas_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @palmas_regulators_probe(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %10 = load ptr, ptr %9, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  store i32 0, ptr %3, align 4, !annotation !8
  %11 = tail call ptr @of_match_device(ptr noundef nonnull @of_palmas_match_tbl, ptr noundef %4) #6
  %12 = icmp eq ptr %11, null
  br i1 %12, label %147, label %13

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.of_device_id, ptr %11, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef 224, i32 noundef 3520) #6
  %17 = icmp eq ptr %16, null
  br i1 %17, label %147, label %18

18:                                               ; preds = %13
  %19 = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef 6748, i32 noundef 3520) #6
  %20 = icmp eq ptr %19, null
  br i1 %20, label %147, label %21

21:                                               ; preds = %18
  %22 = tail call i32 @of_device_is_compatible(ptr noundef %10, ptr noundef nonnull @.str.1) #6
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %21
  store i8 18, ptr getelementptr inbounds ([27 x %struct.palmas_regs_info], ptr @palmas_generic_regs_info, i32 0, i32 23, i32 3), align 1
  store i8 0, ptr getelementptr inbounds (%struct.palmas_pmic_driver_data, ptr @palmas_ddata, i32 0, i32 5), align 4
  br label %25

25:                                               ; preds = %24, %21
  %26 = getelementptr inbounds %struct.palmas_pmic, ptr %19, i32 0, i32 1
  store ptr %4, ptr %26, align 4
  store ptr %8, ptr %19, align 4
  %27 = getelementptr inbounds %struct.palmas, ptr %8, i32 0, i32 10
  store ptr %19, ptr %27, align 4
  %28 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %19, ptr %28, align 8
  %29 = load ptr, ptr %19, align 4
  %30 = getelementptr inbounds %struct.palmas, ptr %29, i32 0, i32 9
  store ptr %15, ptr %30, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  store i32 0, ptr %2, align 4, !annotation !8
  %31 = tail call ptr @of_get_child_by_name(ptr noundef %10, ptr noundef nonnull @.str.87) #6
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %4, ptr noundef nonnull @.str.88) #7
  br label %110

34:                                               ; preds = %25
  %35 = getelementptr inbounds %struct.palmas_pmic_driver_data, ptr %15, i32 0, i32 7
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.palmas_pmic_driver_data, ptr %15, i32 0, i32 4
  %38 = load i32, ptr %37, align 4
  %39 = tail call i32 @of_regulator_match(ptr noundef %4, ptr noundef nonnull %31, ptr noundef %36, i32 noundef %38) #6
  tail call void @of_node_put(ptr noundef nonnull %31) #6
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %34
  %42 = load i32, ptr %37, align 4
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %104

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.palmas_pmic_platform_data, ptr %16, i32 0, i32 3
  br label %47

46:                                               ; preds = %34
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.89, i32 noundef %39) #7
  br label %110

47:                                               ; preds = %100, %44
  %48 = phi i32 [ 0, %44 ], [ %101, %100 ]
  %49 = load ptr, ptr %35, align 4
  %50 = getelementptr %struct.of_regulator_match, ptr %49, i32 %48
  %51 = getelementptr %struct.of_regulator_match, ptr %49, i32 %48, i32 3
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr %struct.of_regulator_match, ptr %49, i32 %48, i32 2
  %54 = load ptr, ptr %53, align 4
  %55 = icmp ne ptr %54, null
  %56 = icmp ne ptr %52, null
  %57 = select i1 %55, i1 %56, i1 false
  br i1 %57, label %58, label %100

58:                                               ; preds = %47
  %59 = call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef 16, i32 noundef 3520) #6
  %60 = icmp eq ptr %59, null
  br i1 %60, label %109, label %61

61:                                               ; preds = %58
  %62 = load ptr, ptr %53, align 4
  %63 = getelementptr [27 x ptr], ptr %16, i32 0, i32 %48
  store ptr %62, ptr %63, align 4
  %64 = getelementptr %struct.palmas_pmic_platform_data, ptr %16, i32 0, i32 1, i32 %48
  store ptr %59, ptr %64, align 4
  %65 = call ptr @of_find_property(ptr noundef nonnull %52, ptr noundef nonnull @.str.90, ptr noundef null) #6
  %66 = icmp ne ptr %65, null
  %67 = zext i1 %66 to i32
  store i32 %67, ptr %59, align 4
  %68 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %52, ptr noundef nonnull @.str.91, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #6
  %69 = call i32 @llvm.smin.i32(i32 %68, i32 0) #6
  switch i32 %69, label %80 [
    i32 -22, label %83
    i32 0, label %70
  ]

70:                                               ; preds = %61
  %71 = load i32, ptr %2, align 4
  %72 = add i32 %71, -1
  %73 = icmp ult i32 %72, 3
  br i1 %73, label %77, label %74

74:                                               ; preds = %70
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.92, i32 noundef 1527, i32 noundef 9, ptr noundef null) #6
  %75 = load ptr, ptr %50, align 4
  %76 = load i32, ptr %2, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %4, ptr noundef nonnull @.str.93, ptr noundef %75, i32 noundef %76) #7
  br label %80

77:                                               ; preds = %70
  %78 = getelementptr inbounds [3 x i32], ptr @switch.table.palmas_regulators_probe, i32 0, i32 %72
  %79 = load i32, ptr %78, align 4
  br label %80

80:                                               ; preds = %77, %74, %61
  %81 = phi i32 [ 4, %74 ], [ 4, %61 ], [ %79, %77 ]
  %82 = getelementptr inbounds %struct.palmas_reg_init, ptr %59, i32 0, i32 1
  store i32 %81, ptr %82, align 4
  br label %83

83:                                               ; preds = %80, %61
  %84 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %52, ptr noundef nonnull @.str.94, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #6
  %85 = icmp sgt i32 %84, -1
  br i1 %85, label %86, label %89

86:                                               ; preds = %83
  %87 = load i32, ptr %2, align 4
  %88 = getelementptr inbounds %struct.palmas_reg_init, ptr %59, i32 0, i32 2
  store i32 %87, ptr %88, align 4
  br label %89

89:                                               ; preds = %86, %83
  %90 = call ptr @of_find_property(ptr noundef nonnull %52, ptr noundef nonnull @.str.95, ptr noundef null) #6
  %91 = icmp eq ptr %90, null
  br i1 %91, label %94, label %92

92:                                               ; preds = %89
  %93 = getelementptr inbounds %struct.palmas_reg_init, ptr %59, i32 0, i32 3
  store i8 -128, ptr %93, align 4
  br label %94

94:                                               ; preds = %92, %89
  %95 = icmp eq i32 %48, 18
  br i1 %95, label %96, label %100

96:                                               ; preds = %94
  %97 = call ptr @of_find_property(ptr noundef nonnull %52, ptr noundef nonnull @.str.96, ptr noundef null) #6
  %98 = icmp ne ptr %97, null
  %99 = zext i1 %98 to i8
  store i8 %99, ptr %45, align 4
  br label %100

100:                                              ; preds = %96, %94, %47
  %101 = add nuw nsw i32 %48, 1
  %102 = load i32, ptr %37, align 4
  %103 = icmp slt i32 %101, %102
  br i1 %103, label %47, label %104

104:                                              ; preds = %100, %41
  %105 = call ptr @of_find_property(ptr noundef %10, ptr noundef nonnull @.str.97, ptr noundef null) #6
  %106 = icmp ne ptr %105, null
  %107 = zext i1 %106 to i32
  %108 = getelementptr inbounds %struct.palmas_pmic_platform_data, ptr %16, i32 0, i32 2
  store i32 %107, ptr %108, align 4
  br label %110

109:                                              ; preds = %58
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  br label %147

110:                                              ; preds = %104, %46, %33
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  %111 = getelementptr inbounds %struct.palmas, ptr %8, i32 0, i32 2
  %112 = load ptr, ptr %111, align 4
  %113 = call i32 @regmap_read(ptr noundef %112, i32 noundef 68, ptr noundef nonnull %3) #6
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %147

115:                                              ; preds = %110
  %116 = load i32, ptr %3, align 4
  %117 = and i32 %116, 16
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %122, label %119

119:                                              ; preds = %115
  %120 = getelementptr inbounds %struct.palmas_pmic, ptr %19, i32 0, i32 4
  store i32 1, ptr %120, align 4
  %121 = getelementptr inbounds %struct.palmas_pmic, ptr %19, i32 0, i32 6
  store i32 1, ptr %121, align 4
  br label %122

122:                                              ; preds = %119, %115
  %123 = and i32 %116, 32
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %127, label %125

125:                                              ; preds = %122
  %126 = getelementptr inbounds %struct.palmas_pmic, ptr %19, i32 0, i32 5
  store i32 1, ptr %126, align 4
  br label %127

127:                                              ; preds = %125, %122
  %128 = load ptr, ptr %111, align 4
  %129 = load ptr, ptr %0, align 8
  %130 = getelementptr inbounds %struct.palmas_pmic_driver_data, ptr %15, i32 0, i32 9
  %131 = load ptr, ptr %130, align 4
  %132 = ptrtoint ptr %4 to i32
  %133 = insertvalue [6 x i32] poison, i32 %132, 0
  %134 = insertvalue [6 x i32] %133, i32 0, 1
  %135 = ptrtoint ptr %19 to i32
  %136 = insertvalue [6 x i32] %134, i32 %135, 2
  %137 = insertvalue [6 x i32] %136, i32 0, 3
  %138 = ptrtoint ptr %128 to i32
  %139 = insertvalue [6 x i32] %137, i32 %138, 4
  %140 = insertvalue [6 x i32] %139, i32 0, 5
  %141 = call i32 %131(ptr noundef nonnull %19, ptr noundef %15, ptr noundef nonnull %16, ptr noundef %129, [6 x i32] %140) #6
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %147

143:                                              ; preds = %127
  %144 = getelementptr inbounds %struct.palmas_pmic_driver_data, ptr %15, i32 0, i32 10
  %145 = load ptr, ptr %144, align 4
  %146 = call i32 %145(ptr noundef nonnull %19, ptr noundef %15, ptr noundef nonnull %16, ptr noundef %129, [6 x i32] %140) #6
  br label %147

147:                                              ; preds = %143, %127, %110, %109, %18, %13, %1
  %148 = phi i32 [ %146, %143 ], [ -61, %1 ], [ -12, %13 ], [ -12, %18 ], [ -12, %109 ], [ %113, %110 ], [ %141, %127 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  ret i32 %148
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @palmas_smps_registration(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2, ptr noundef %3, [6 x i32] %4) #2 {
  %6 = alloca %struct.regulator_config, align 4
  %7 = alloca i32, align 4
  %8 = extractvalue [6 x i32] %4, 0
  store i32 %8, ptr %6, align 4
  %9 = extractvalue [6 x i32] %4, 1
  %10 = getelementptr inbounds [6 x i32], ptr %6, i32 0, i32 1
  store i32 %9, ptr %10, align 4
  %11 = extractvalue [6 x i32] %4, 2
  %12 = getelementptr inbounds [6 x i32], ptr %6, i32 0, i32 2
  store i32 %11, ptr %12, align 4
  %13 = extractvalue [6 x i32] %4, 3
  %14 = getelementptr inbounds [6 x i32], ptr %6, i32 0, i32 3
  store i32 %13, ptr %14, align 4
  %15 = extractvalue [6 x i32] %4, 4
  %16 = getelementptr inbounds [6 x i32], ptr %6, i32 0, i32 4
  store i32 %15, ptr %16, align 4
  %17 = extractvalue [6 x i32] %4, 5
  %18 = getelementptr inbounds [6 x i32], ptr %6, i32 0, i32 5
  store i32 %17, ptr %18, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #6
  store i32 0, ptr %7, align 4, !annotation !8
  %19 = load i32, ptr %1, align 4
  %20 = getelementptr inbounds %struct.palmas_pmic_driver_data, ptr %1, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = icmp sgt i32 %19, %21
  br i1 %22, label %205, label %23

23:                                               ; preds = %5
  %24 = getelementptr inbounds %struct.palmas_pmic, ptr %0, i32 0, i32 5
  %25 = getelementptr inbounds %struct.palmas_pmic, ptr %0, i32 0, i32 4
  %26 = getelementptr inbounds %struct.palmas_pmic_driver_data, ptr %1, i32 0, i32 6
  %27 = icmp eq ptr %2, null
  %28 = getelementptr inbounds %struct.palmas_pmic_driver_data, ptr %1, i32 0, i32 7
  %29 = getelementptr inbounds %struct.palmas_pmic, ptr %0, i32 0, i32 1
  br label %30

30:                                               ; preds = %201, %23
  %31 = phi i32 [ %21, %23 ], [ %202, %201 ]
  %32 = phi i32 [ %19, %23 ], [ %203, %201 ]
  switch i32 %32, label %59 [
    i32 0, label %33
    i32 2, label %33
    i32 1, label %38
    i32 3, label %41
    i32 6, label %41
    i32 4, label %46
    i32 10, label %49
    i32 9, label %49
  ]

33:                                               ; preds = %30, %30
  %34 = load i32, ptr %25, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %201

36:                                               ; preds = %33
  %37 = icmp eq i32 %32, 0
  br label %59

38:                                               ; preds = %30
  %39 = load i32, ptr %25, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %201, label %55

41:                                               ; preds = %30, %30
  %42 = load i32, ptr %24, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %201

44:                                               ; preds = %41
  %45 = icmp eq i32 %32, 3
  br label %59

46:                                               ; preds = %30
  %47 = load i32, ptr %24, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %201, label %55

49:                                               ; preds = %30, %30
  %50 = load ptr, ptr %0, align 4
  %51 = getelementptr inbounds %struct.palmas, ptr %50, i32 0, i32 4
  %52 = load i32, ptr %51, align 4
  %53 = and i32 %52, 1
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %201, label %59

55:                                               ; preds = %46, %38
  %56 = load ptr, ptr %26, align 4
  %57 = getelementptr %struct.palmas_regs_info, ptr %56, i32 %32
  %58 = getelementptr %struct.palmas_pmic, ptr %0, i32 0, i32 2, i32 %32
  br label %67

59:                                               ; preds = %49, %44, %36, %30
  %60 = phi i1 [ false, %30 ], [ false, %49 ], [ %37, %36 ], [ %45, %44 ]
  %61 = load ptr, ptr %26, align 4
  %62 = getelementptr %struct.palmas_regs_info, ptr %61, i32 %32
  %63 = getelementptr %struct.palmas_pmic, ptr %0, i32 0, i32 2, i32 %32
  %64 = and i32 %32, -3
  %65 = icmp eq i32 %64, 5
  %66 = or i1 %65, %60
  br i1 %66, label %67, label %89

67:                                               ; preds = %59, %55
  %68 = phi ptr [ %58, %55 ], [ %63, %59 ]
  %69 = phi ptr [ %57, %55 ], [ %62, %59 ]
  %70 = phi ptr [ %56, %55 ], [ %61, %59 ]
  %71 = getelementptr %struct.palmas_regs_info, ptr %70, i32 %32, i32 4
  %72 = load i8, ptr %71, align 2
  %73 = zext i8 %72 to i32
  %74 = load ptr, ptr %0, align 4
  %75 = add nuw nsw i32 %73, 32
  %76 = getelementptr inbounds %struct.palmas, ptr %74, i32 0, i32 2
  %77 = load ptr, ptr %76, align 4
  %78 = call i32 @regmap_read(ptr noundef %77, i32 noundef %75, ptr noundef nonnull %7) #6
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %67
  %81 = load ptr, ptr %29, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %81, ptr noundef nonnull @.str.76, i32 noundef %78) #7
  br label %205

82:                                               ; preds = %67
  %83 = load i32, ptr %7, align 4
  %84 = and i32 %83, 3
  %85 = getelementptr [4 x i32], ptr @palmas_smps_ramp_delay, i32 0, i32 %84
  %86 = load i32, ptr %85, align 4
  %87 = getelementptr %struct.palmas_pmic, ptr %0, i32 0, i32 2, i32 %32, i32 18
  store i32 %86, ptr %87, align 4
  %88 = getelementptr %struct.palmas_pmic, ptr %0, i32 0, i32 8, i32 %32
  store i32 %86, ptr %88, align 4
  br label %89

89:                                               ; preds = %82, %59
  %90 = phi ptr [ %68, %82 ], [ %63, %59 ]
  %91 = phi ptr [ %69, %82 ], [ %62, %59 ]
  %92 = phi ptr [ %70, %82 ], [ %61, %59 ]
  br i1 %27, label %101, label %93

93:                                               ; preds = %89
  %94 = getelementptr %struct.palmas_pmic_platform_data, ptr %2, i32 0, i32 1, i32 %32
  %95 = load ptr, ptr %94, align 4
  %96 = icmp eq ptr %95, null
  br i1 %96, label %101, label %97

97:                                               ; preds = %93
  %98 = load ptr, ptr %0, align 4
  %99 = call fastcc i32 @palmas_smps_init(ptr noundef %98, i32 noundef %32, ptr noundef nonnull %95)
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %205

101:                                              ; preds = %97, %93, %89
  %102 = phi ptr [ %95, %97 ], [ null, %93 ], [ null, %89 ]
  %103 = load ptr, ptr %91, align 4
  store ptr %103, ptr %90, align 4
  %104 = getelementptr %struct.palmas_pmic, ptr %0, i32 0, i32 2, i32 %32, i32 6
  store i32 %32, ptr %104, align 4
  %105 = add i32 %32, -9
  %106 = icmp ult i32 %105, 2
  br i1 %106, label %107, label %121

107:                                              ; preds = %101
  %108 = getelementptr %struct.palmas_pmic, ptr %0, i32 0, i32 2, i32 %32, i32 8
  store i32 2, ptr %108, align 4
  %109 = getelementptr %struct.palmas_pmic, ptr %0, i32 0, i32 2, i32 %32, i32 10
  store ptr @palmas_ops_smps10, ptr %109, align 4
  %110 = getelementptr %struct.palmas_pmic, ptr %0, i32 0, i32 2, i32 %32, i32 27
  store i32 60, ptr %110, align 4
  %111 = getelementptr %struct.palmas_pmic, ptr %0, i32 0, i32 2, i32 %32, i32 28
  store i32 8, ptr %111, align 4
  %112 = getelementptr %struct.palmas_pmic, ptr %0, i32 0, i32 2, i32 %32, i32 34
  store i32 60, ptr %112, align 4
  %113 = icmp eq i32 %32, 10
  %114 = select i1 %113, i32 1, i32 4
  %115 = getelementptr %struct.palmas_pmic, ptr %0, i32 0, i32 2, i32 %32, i32 35
  store i32 %114, ptr %115, align 4
  %116 = getelementptr %struct.palmas_pmic, ptr %0, i32 0, i32 2, i32 %32, i32 39
  store i32 60, ptr %116, align 4
  %117 = getelementptr %struct.palmas_pmic, ptr %0, i32 0, i32 2, i32 %32, i32 41
  store i32 2, ptr %117, align 4
  %118 = getelementptr %struct.palmas_pmic, ptr %0, i32 0, i32 2, i32 %32, i32 40
  store i32 2, ptr %118, align 4
  %119 = getelementptr %struct.palmas_pmic, ptr %0, i32 0, i32 2, i32 %32, i32 14
  store i32 3750000, ptr %119, align 4
  %120 = getelementptr %struct.palmas_pmic, ptr %0, i32 0, i32 2, i32 %32, i32 15
  store i32 1250000, ptr %120, align 4
  br label %179

121:                                              ; preds = %101
  %122 = getelementptr %struct.palmas_regs_info, ptr %92, i32 %32, i32 2
  %123 = load i8, ptr %122, align 4
  %124 = zext i8 %123 to i32
  %125 = getelementptr %struct.palmas_pmic, ptr %0, i32 0, i32 2, i32 %32, i32 22
  store i32 3, ptr %125, align 4
  %126 = load ptr, ptr %0, align 4
  %127 = add nuw nsw i32 %124, 32
  %128 = getelementptr inbounds %struct.palmas, ptr %126, i32 0, i32 2
  %129 = load ptr, ptr %128, align 4
  %130 = call i32 @regmap_read(ptr noundef %129, i32 noundef %127, ptr noundef nonnull %7) #6
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %205

132:                                              ; preds = %121
  %133 = load i32, ptr %7, align 4
  %134 = and i32 %133, 128
  %135 = icmp eq i32 %134, 0
  %136 = getelementptr %struct.palmas_pmic, ptr %0, i32 0, i32 7, i32 %32
  br i1 %135, label %138, label %137

137:                                              ; preds = %132
  store i32 1, ptr %136, align 4
  br label %142

138:                                              ; preds = %132
  %139 = load i32, ptr %136, align 4
  %140 = icmp eq i32 %139, 0
  %141 = select i1 %140, ptr @smps_low_ranges, ptr @smps_high_ranges
  br label %142

142:                                              ; preds = %138, %137
  %143 = phi ptr [ @smps_high_ranges, %137 ], [ %141, %138 ]
  %144 = getelementptr %struct.palmas_pmic, ptr %0, i32 0, i32 2, i32 %32, i32 20
  store ptr %143, ptr %144, align 4
  %145 = icmp eq ptr %102, null
  br i1 %145, label %150, label %146

146:                                              ; preds = %142
  %147 = getelementptr inbounds %struct.palmas_reg_init, ptr %102, i32 0, i32 1
  %148 = load i32, ptr %147, align 4
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %146, %142
  br label %151

151:                                              ; preds = %150, %146
  %152 = phi ptr [ @palmas_ops_smps, %150 ], [ @palmas_ops_ext_control_smps, %146 ]
  %153 = getelementptr %struct.palmas_pmic, ptr %0, i32 0, i32 2, i32 %32, i32 10
  store ptr %152, ptr %153, align 4
  %154 = getelementptr %struct.palmas_pmic, ptr %0, i32 0, i32 2, i32 %32, i32 8
  store i32 122, ptr %154, align 4
  %155 = load i8, ptr %122, align 4
  %156 = zext i8 %155 to i32
  %157 = add nuw nsw i32 %156, 32
  %158 = getelementptr %struct.palmas_pmic, ptr %0, i32 0, i32 2, i32 %32, i32 27
  store i32 %157, ptr %158, align 4
  %159 = getelementptr %struct.palmas_pmic, ptr %0, i32 0, i32 2, i32 %32, i32 28
  store i32 127, ptr %159, align 4
  %160 = getelementptr %struct.palmas_regs_info, ptr %92, i32 %32, i32 3
  %161 = load i8, ptr %160, align 1
  %162 = zext i8 %161 to i32
  %163 = load ptr, ptr %0, align 4
  %164 = add nuw nsw i32 %162, 32
  %165 = getelementptr inbounds %struct.palmas, ptr %163, i32 0, i32 2
  %166 = load ptr, ptr %165, align 4
  %167 = call i32 @regmap_read(ptr noundef %166, i32 noundef %164, ptr noundef nonnull %7) #6
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %205

169:                                              ; preds = %151
  %170 = load i32, ptr %7, align 4
  %171 = and i32 %170, 3
  %172 = getelementptr %struct.palmas_pmic, ptr %0, i32 0, i32 9, i32 %32
  store i32 %171, ptr %172, align 4
  %173 = load i8, ptr %160, align 1
  %174 = zext i8 %173 to i32
  %175 = add nuw nsw i32 %174, 32
  %176 = getelementptr %struct.palmas_pmic, ptr %0, i32 0, i32 2, i32 %32, i32 34
  store i32 %175, ptr %176, align 4
  %177 = getelementptr %struct.palmas_pmic, ptr %0, i32 0, i32 2, i32 %32, i32 35
  store i32 3, ptr %177, align 4
  %178 = getelementptr %struct.palmas_pmic, ptr %0, i32 0, i32 2, i32 %32, i32 36
  store i32 1, ptr %178, align 4
  br label %179

179:                                              ; preds = %169, %107
  %180 = getelementptr %struct.palmas_pmic, ptr %0, i32 0, i32 2, i32 %32, i32 12
  store i32 0, ptr %180, align 4
  %181 = getelementptr %struct.palmas_pmic, ptr %0, i32 0, i32 2, i32 %32, i32 13
  store ptr null, ptr %181, align 4
  br i1 %27, label %185, label %182

182:                                              ; preds = %179
  %183 = getelementptr [27 x ptr], ptr %2, i32 0, i32 %32
  %184 = load ptr, ptr %183, align 4
  br label %185

185:                                              ; preds = %182, %179
  %186 = phi ptr [ %184, %182 ], [ null, %179 ]
  store ptr %186, ptr %10, align 4
  %187 = getelementptr %struct.palmas_regs_info, ptr %92, i32 %32, i32 1
  %188 = load ptr, ptr %187, align 4
  %189 = getelementptr %struct.palmas_pmic, ptr %0, i32 0, i32 2, i32 %32, i32 1
  store ptr %188, ptr %189, align 4
  %190 = load ptr, ptr %28, align 4
  %191 = getelementptr %struct.of_regulator_match, ptr %190, i32 %32, i32 3
  %192 = load ptr, ptr %191, align 4
  store ptr %192, ptr %14, align 4
  %193 = load ptr, ptr %29, align 4
  %194 = call ptr @devm_regulator_register(ptr noundef %193, ptr noundef %90, ptr noundef nonnull %6) #6
  %195 = icmp ugt ptr %194, inttoptr (i32 -4096 to ptr)
  br i1 %195, label %198, label %196

196:                                              ; preds = %185
  %197 = load i32, ptr %20, align 4
  br label %201

198:                                              ; preds = %185
  %199 = load ptr, ptr %29, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %199, ptr noundef nonnull @.str.77, ptr noundef %3) #7
  %200 = ptrtoint ptr %194 to i32
  br label %205

201:                                              ; preds = %196, %49, %46, %41, %38, %33
  %202 = phi i32 [ %197, %196 ], [ %31, %33 ], [ %31, %38 ], [ %31, %41 ], [ %31, %46 ], [ %31, %49 ]
  %203 = add i32 %32, 1
  %204 = icmp sgt i32 %203, %202
  br i1 %204, label %205, label %30

205:                                              ; preds = %201, %198, %151, %121, %97, %80, %5
  %206 = phi i32 [ %78, %80 ], [ %200, %198 ], [ 0, %5 ], [ 0, %201 ], [ %167, %151 ], [ %130, %121 ], [ %99, %97 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #6
  ret i32 %206
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @palmas_ldo_registration(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2, ptr noundef %3, [6 x i32] %4) #2 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.regulator_config, align 4
  %8 = extractvalue [6 x i32] %4, 0
  store i32 %8, ptr %7, align 4
  %9 = extractvalue [6 x i32] %4, 1
  %10 = getelementptr inbounds [6 x i32], ptr %7, i32 0, i32 1
  store i32 %9, ptr %10, align 4
  %11 = extractvalue [6 x i32] %4, 2
  %12 = getelementptr inbounds [6 x i32], ptr %7, i32 0, i32 2
  store i32 %11, ptr %12, align 4
  %13 = extractvalue [6 x i32] %4, 3
  %14 = getelementptr inbounds [6 x i32], ptr %7, i32 0, i32 3
  store i32 %13, ptr %14, align 4
  %15 = extractvalue [6 x i32] %4, 4
  %16 = getelementptr inbounds [6 x i32], ptr %7, i32 0, i32 4
  store i32 %15, ptr %16, align 4
  %17 = extractvalue [6 x i32] %4, 5
  %18 = getelementptr inbounds [6 x i32], ptr %7, i32 0, i32 5
  store i32 %17, ptr %18, align 4
  %19 = getelementptr inbounds %struct.palmas_pmic_driver_data, ptr %1, i32 0, i32 2
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.palmas_pmic_driver_data, ptr %1, i32 0, i32 4
  %22 = load i32, ptr %21, align 4
  %23 = icmp slt i32 %20, %22
  br i1 %23, label %24, label %196

24:                                               ; preds = %5
  %25 = icmp ne ptr %2, null
  %26 = getelementptr inbounds %struct.palmas_pmic_driver_data, ptr %1, i32 0, i32 6
  %27 = getelementptr inbounds %struct.palmas_pmic_driver_data, ptr %1, i32 0, i32 5
  %28 = getelementptr inbounds %struct.palmas_pmic_platform_data, ptr %2, i32 0, i32 3
  %29 = getelementptr inbounds %struct.palmas_pmic_platform_data, ptr %2, i32 0, i32 2
  %30 = getelementptr inbounds %struct.palmas_pmic_driver_data, ptr %1, i32 0, i32 7
  %31 = getelementptr inbounds %struct.palmas_pmic, ptr %0, i32 0, i32 1
  %32 = getelementptr inbounds %struct.palmas_pmic_driver_data, ptr %1, i32 0, i32 3
  %33 = getelementptr %struct.palmas_pmic, ptr %0, i32 0, i32 2, i32 19, i32 10
  %34 = getelementptr %struct.palmas_pmic, ptr %0, i32 0, i32 2, i32 19, i32 39
  %35 = getelementptr %struct.palmas_pmic, ptr %0, i32 0, i32 2, i32 19, i32 41
  %36 = getelementptr %struct.palmas_pmic, ptr %0, i32 0, i32 2, i32 19, i32 40
  br label %37

37:                                               ; preds = %192, %24
  %38 = phi i32 [ %20, %24 ], [ %193, %192 ]
  br i1 %25, label %39, label %43

39:                                               ; preds = %37
  %40 = getelementptr %struct.palmas_pmic_platform_data, ptr %2, i32 0, i32 1, i32 %38
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %39, %37
  br label %44

44:                                               ; preds = %43, %39
  %45 = phi ptr [ null, %43 ], [ %41, %39 ]
  %46 = load ptr, ptr %26, align 4
  %47 = getelementptr %struct.palmas_regs_info, ptr %46, i32 %38
  %48 = getelementptr %struct.palmas_pmic, ptr %0, i32 0, i32 2, i32 %38
  %49 = load ptr, ptr %47, align 4
  store ptr %49, ptr %48, align 4
  %50 = getelementptr %struct.palmas_pmic, ptr %0, i32 0, i32 2, i32 %38, i32 6
  store i32 %38, ptr %50, align 4
  %51 = getelementptr %struct.palmas_pmic, ptr %0, i32 0, i32 2, i32 %38, i32 12
  store i32 0, ptr %51, align 4
  %52 = getelementptr %struct.palmas_pmic, ptr %0, i32 0, i32 2, i32 %38, i32 13
  store ptr null, ptr %52, align 4
  %53 = icmp slt i32 %38, 22
  br i1 %53, label %54, label %136

54:                                               ; preds = %44
  %55 = getelementptr %struct.palmas_pmic, ptr %0, i32 0, i32 2, i32 %38, i32 8
  store i32 50, ptr %55, align 4
  %56 = icmp eq ptr %45, null
  br i1 %56, label %61, label %57

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct.palmas_reg_init, ptr %45, i32 0, i32 1
  %59 = load i32, ptr %58, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %57, %54
  br label %62

62:                                               ; preds = %61, %57
  %63 = phi ptr [ @palmas_ops_ldo, %61 ], [ @palmas_ops_ext_control_ldo, %57 ]
  %64 = getelementptr %struct.palmas_pmic, ptr %0, i32 0, i32 2, i32 %38, i32 10
  store ptr %63, ptr %64, align 4
  %65 = getelementptr %struct.palmas_pmic, ptr %0, i32 0, i32 2, i32 %38, i32 14
  store i32 900000, ptr %65, align 4
  %66 = getelementptr %struct.palmas_pmic, ptr %0, i32 0, i32 2, i32 %38, i32 15
  store i32 50000, ptr %66, align 4
  %67 = getelementptr %struct.palmas_pmic, ptr %0, i32 0, i32 2, i32 %38, i32 16
  store i32 1, ptr %67, align 4
  %68 = getelementptr %struct.palmas_pmic, ptr %0, i32 0, i32 2, i32 %38, i32 57
  store i32 500, ptr %68, align 4
  %69 = getelementptr %struct.palmas_regs_info, ptr %46, i32 %38, i32 2
  %70 = load i8, ptr %69, align 4
  %71 = zext i8 %70 to i32
  %72 = add nuw nsw i32 %71, 80
  %73 = getelementptr %struct.palmas_pmic, ptr %0, i32 0, i32 2, i32 %38, i32 27
  store i32 %72, ptr %73, align 4
  %74 = getelementptr %struct.palmas_pmic, ptr %0, i32 0, i32 2, i32 %38, i32 28
  store i32 63, ptr %74, align 4
  %75 = getelementptr %struct.palmas_regs_info, ptr %46, i32 %38, i32 3
  %76 = load i8, ptr %75, align 1
  %77 = zext i8 %76 to i32
  %78 = add nuw nsw i32 %77, 80
  %79 = getelementptr %struct.palmas_pmic, ptr %0, i32 0, i32 2, i32 %38, i32 34
  store i32 %78, ptr %79, align 4
  %80 = getelementptr %struct.palmas_pmic, ptr %0, i32 0, i32 2, i32 %38, i32 35
  store i32 1, ptr %80, align 4
  %81 = icmp eq i32 %38, 18
  %82 = select i1 %25, i1 %81, i1 false
  br i1 %82, label %83, label %125

83:                                               ; preds = %62
  %84 = load i8, ptr %28, align 4, !range !9
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %125, label %86

86:                                               ; preds = %83
  %87 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #6
  store i32 0, ptr %6, align 4, !annotation !8
  %88 = getelementptr inbounds %struct.palmas, ptr %87, i32 0, i32 9
  %89 = load ptr, ptr %88, align 4
  %90 = getelementptr inbounds %struct.palmas_pmic_driver_data, ptr %89, i32 0, i32 6
  %91 = load ptr, ptr %90, align 4
  %92 = getelementptr %struct.palmas_regs_info, ptr %91, i32 18, i32 3
  %93 = load i8, ptr %92, align 1
  %94 = zext i8 %93 to i32
  %95 = add nuw nsw i32 %94, 80
  %96 = getelementptr inbounds %struct.palmas, ptr %87, i32 0, i32 2
  %97 = load ptr, ptr %96, align 4
  %98 = call i32 @regmap_read(ptr noundef %97, i32 noundef %95, ptr noundef nonnull %6) #6
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %121

100:                                              ; preds = %86
  %101 = load i32, ptr %6, align 4
  %102 = or i32 %101, 64
  store i32 %102, ptr %6, align 4
  %103 = load ptr, ptr %96, align 4
  %104 = call i32 @regmap_write(ptr noundef %103, i32 noundef %95, i32 noundef %102) #6
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %121, label %106

106:                                              ; preds = %100
  %107 = getelementptr %struct.palmas_regs_info, ptr %91, i32 18, i32 2
  %108 = load i8, ptr %107, align 4
  %109 = zext i8 %108 to i32
  %110 = add nuw nsw i32 %109, 80
  %111 = load ptr, ptr %96, align 4
  %112 = call i32 @regmap_read(ptr noundef %111, i32 noundef %110, ptr noundef nonnull %6) #6
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %121

114:                                              ; preds = %106
  %115 = load i32, ptr %6, align 4
  %116 = shl i32 %115, 1
  %117 = and i32 %116, 62
  store i32 %117, ptr %6, align 4
  %118 = load ptr, ptr %96, align 4
  %119 = call i32 @regmap_write(ptr noundef %118, i32 noundef %110, i32 noundef %117) #6
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %114, %106, %100, %86
  %122 = phi ptr [ @.str.80, %86 ], [ @.str.81, %100 ], [ @.str.82, %106 ], [ @.str.83, %114 ]
  %123 = load ptr, ptr %87, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %123, ptr noundef nonnull %122) #7
  br label %124

124:                                              ; preds = %121, %114
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #6
  store i32 450000, ptr %65, align 4
  store i32 25000, ptr %66, align 4
  br label %125

125:                                              ; preds = %124, %83, %62
  br i1 %25, label %126, label %132

126:                                              ; preds = %125
  %127 = load i32, ptr %29, align 4
  %128 = icmp ne i32 %127, 0
  %129 = icmp eq i32 %38, 16
  %130 = select i1 %128, i1 %129, i1 false
  br i1 %130, label %131, label %132

131:                                              ; preds = %126
  store i32 2000, ptr %68, align 4
  br label %159

132:                                              ; preds = %126, %125
  %133 = icmp eq i32 %38, 19
  br i1 %133, label %134, label %158

134:                                              ; preds = %132
  store ptr @palmas_ops_ldo9, ptr %33, align 4
  %135 = load i32, ptr %79, align 4
  store i32 %135, ptr %34, align 4
  store i32 64, ptr %35, align 4
  store i32 64, ptr %36, align 4
  br label %158

136:                                              ; preds = %44
  %137 = load i8, ptr %27, align 4, !range !9
  %138 = icmp eq i8 %137, 0
  %139 = icmp eq i32 %38, 24
  %140 = select i1 %138, i1 %139, i1 false
  br i1 %140, label %192, label %141

141:                                              ; preds = %136
  %142 = getelementptr %struct.palmas_pmic, ptr %0, i32 0, i32 2, i32 %38, i32 8
  store i32 1, ptr %142, align 4
  %143 = icmp eq ptr %45, null
  br i1 %143, label %148, label %144

144:                                              ; preds = %141
  %145 = getelementptr inbounds %struct.palmas_reg_init, ptr %45, i32 0, i32 1
  %146 = load i32, ptr %145, align 4
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %144, %141
  br label %149

149:                                              ; preds = %148, %144
  %150 = phi ptr [ @palmas_ops_extreg, %148 ], [ @palmas_ops_ext_control_extreg, %144 ]
  %151 = getelementptr %struct.palmas_pmic, ptr %0, i32 0, i32 2, i32 %38, i32 10
  store ptr %150, ptr %151, align 4
  %152 = getelementptr %struct.palmas_regs_info, ptr %46, i32 %38, i32 3
  %153 = load i8, ptr %152, align 1
  %154 = zext i8 %153 to i32
  %155 = add nuw nsw i32 %154, 212
  %156 = getelementptr %struct.palmas_pmic, ptr %0, i32 0, i32 2, i32 %38, i32 34
  store i32 %155, ptr %156, align 4
  %157 = getelementptr %struct.palmas_pmic, ptr %0, i32 0, i32 2, i32 %38, i32 35
  store i32 1, ptr %157, align 4
  br label %158

158:                                              ; preds = %149, %134, %132
  br i1 %25, label %159, label %162

159:                                              ; preds = %158, %131
  %160 = getelementptr [27 x ptr], ptr %2, i32 0, i32 %38
  %161 = load ptr, ptr %160, align 4
  br label %162

162:                                              ; preds = %159, %158
  %163 = phi ptr [ %161, %159 ], [ null, %158 ]
  store ptr %163, ptr %10, align 4
  %164 = getelementptr %struct.palmas_regs_info, ptr %46, i32 %38, i32 1
  %165 = load ptr, ptr %164, align 4
  %166 = getelementptr %struct.palmas_pmic, ptr %0, i32 0, i32 2, i32 %38, i32 1
  store ptr %165, ptr %166, align 4
  %167 = load ptr, ptr %30, align 4
  %168 = getelementptr %struct.of_regulator_match, ptr %167, i32 %38, i32 3
  %169 = load ptr, ptr %168, align 4
  store ptr %169, ptr %14, align 4
  %170 = load ptr, ptr %31, align 4
  %171 = call ptr @devm_regulator_register(ptr noundef %170, ptr noundef %48, ptr noundef nonnull %7) #6
  %172 = icmp ugt ptr %171, inttoptr (i32 -4096 to ptr)
  br i1 %172, label %173, label %176

173:                                              ; preds = %162
  %174 = load ptr, ptr %31, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %174, ptr noundef nonnull @.str.77, ptr noundef %3) #7
  %175 = ptrtoint ptr %171 to i32
  br label %196

176:                                              ; preds = %162
  br i1 %25, label %177, label %192

177:                                              ; preds = %176
  %178 = getelementptr %struct.palmas_pmic_platform_data, ptr %2, i32 0, i32 1, i32 %38
  %179 = load ptr, ptr %178, align 4
  %180 = icmp eq ptr %179, null
  br i1 %180, label %192, label %181

181:                                              ; preds = %177
  %182 = load i32, ptr %32, align 4
  %183 = icmp sgt i32 %38, %182
  %184 = load ptr, ptr %0, align 4
  br i1 %183, label %187, label %185

185:                                              ; preds = %181
  %186 = call fastcc i32 @palmas_ldo_init(ptr noundef %184, i32 noundef %38, ptr noundef nonnull %179)
  br label %189

187:                                              ; preds = %181
  %188 = call fastcc i32 @palmas_extreg_init(ptr noundef %184, i32 noundef %38, ptr noundef nonnull %179)
  br label %189

189:                                              ; preds = %187, %185
  %190 = phi i32 [ %186, %185 ], [ %188, %187 ]
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %192, label %196

192:                                              ; preds = %189, %177, %176, %136
  %193 = add nsw i32 %38, 1
  %194 = load i32, ptr %21, align 4
  %195 = icmp slt i32 %193, %194
  br i1 %195, label %37, label %196

196:                                              ; preds = %192, %189, %173, %5
  %197 = phi i32 [ %175, %173 ], [ 0, %5 ], [ %190, %189 ], [ 0, %192 ]
  ret i32 %197
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @palmas_smps_init(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #2 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #6
  store i32 0, ptr %4, align 4, !annotation !8
  %5 = getelementptr inbounds %struct.palmas, ptr %0, i32 0, i32 9
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.palmas_pmic_driver_data, ptr %6, i32 0, i32 6
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr %struct.palmas_regs_info, ptr %8, i32 %1, i32 3
  %10 = load i8, ptr %9, align 1
  %11 = zext i8 %10 to i32
  %12 = add nuw nsw i32 %11, 32
  %13 = getelementptr inbounds %struct.palmas, ptr %0, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = call i32 @regmap_read(ptr noundef %14, i32 noundef %12, ptr noundef nonnull %4) #6
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %99

17:                                               ; preds = %3
  %18 = add i32 %1, -9
  %19 = icmp ult i32 %18, 2
  br i1 %19, label %20, label %29

20:                                               ; preds = %17
  %21 = load i32, ptr %4, align 4
  %22 = and i32 %21, -241
  store i32 %22, ptr %4, align 4
  %23 = getelementptr inbounds %struct.palmas_reg_init, ptr %2, i32 0, i32 2
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %47, label %26

26:                                               ; preds = %20
  %27 = shl i32 %24, 4
  %28 = or i32 %27, %22
  store i32 %28, ptr %4, align 4
  br label %47

29:                                               ; preds = %17
  %30 = load i32, ptr %2, align 4
  %31 = icmp eq i32 %30, 0
  %32 = load i32, ptr %4, align 4
  %33 = and i32 %32, -205
  %34 = select i1 %31, i32 0, i32 128
  %35 = or i32 %33, %34
  %36 = getelementptr inbounds %struct.palmas_reg_init, ptr %2, i32 0, i32 1
  %37 = load i32, ptr %36, align 4
  %38 = icmp eq i32 %37, 0
  %39 = select i1 %38, i32 0, i32 64
  %40 = or i32 %39, %35
  store i32 %40, ptr %4, align 4
  %41 = getelementptr inbounds %struct.palmas_reg_init, ptr %2, i32 0, i32 2
  %42 = load i32, ptr %41, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %29
  %45 = shl i32 %42, 2
  %46 = or i32 %40, %45
  store i32 %46, ptr %4, align 4
  br label %47

47:                                               ; preds = %44, %29, %26, %20
  %48 = phi i32 [ %40, %29 ], [ %46, %44 ], [ %22, %20 ], [ %28, %26 ]
  %49 = load ptr, ptr %13, align 4
  %50 = call i32 @regmap_write(ptr noundef %49, i32 noundef %12, i32 noundef %48) #6
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %99

52:                                               ; preds = %47
  %53 = getelementptr %struct.palmas_regs_info, ptr %8, i32 %1, i32 2
  %54 = load i8, ptr %53, align 4
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %68, label %56

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.palmas_reg_init, ptr %2, i32 0, i32 3
  %58 = load i8, ptr %57, align 4
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %68, label %60

60:                                               ; preds = %56
  %61 = zext i8 %58 to i32
  store i32 %61, ptr %4, align 4
  %62 = load i8, ptr %53, align 4
  %63 = zext i8 %62 to i32
  %64 = add nuw nsw i32 %63, 32
  %65 = load ptr, ptr %13, align 4
  %66 = call i32 @regmap_write(ptr noundef %65, i32 noundef %64, i32 noundef %61) #6
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %99

68:                                               ; preds = %60, %56, %52
  %69 = getelementptr inbounds %struct.palmas_reg_init, ptr %2, i32 0, i32 1
  %70 = load i32, ptr %69, align 4
  %71 = icmp ne i32 %70, 0
  %72 = add i32 %1, -11
  %73 = icmp ult i32 %72, -2
  %74 = and i1 %73, %71
  br i1 %74, label %75, label %99

75:                                               ; preds = %68
  %76 = load ptr, ptr %13, align 4
  %77 = call i32 @regmap_read(ptr noundef %76, i32 noundef %12, ptr noundef nonnull %4) #6
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %99, label %79

79:                                               ; preds = %75
  %80 = load i32, ptr %4, align 4
  %81 = and i32 %80, 3
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %79
  %84 = or i32 %80, 1
  store i32 %84, ptr %4, align 4
  %85 = load ptr, ptr %13, align 4
  %86 = call i32 @regmap_write(ptr noundef %85, i32 noundef %12, i32 noundef %84) #6
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %99, label %88

88:                                               ; preds = %83, %79
  %89 = load ptr, ptr %5, align 4
  %90 = getelementptr inbounds %struct.palmas_pmic_driver_data, ptr %89, i32 0, i32 6
  %91 = load ptr, ptr %90, align 4
  %92 = getelementptr %struct.palmas_regs_info, ptr %91, i32 %1, i32 5
  %93 = load i32, ptr %92, align 4
  %94 = load i32, ptr %69, align 4
  %95 = call i32 @palmas_ext_control_req_config(ptr noundef %0, i32 noundef %93, i32 noundef %94, i1 noundef zeroext true) #6
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %88
  %98 = load ptr, ptr %0, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %98, ptr noundef nonnull @.str.78, i32 noundef %1, i32 noundef %95) #7
  br label %99

99:                                               ; preds = %97, %88, %83, %75, %68, %60, %47, %3
  %100 = phi i32 [ %15, %3 ], [ %50, %47 ], [ %66, %60 ], [ %77, %75 ], [ %86, %83 ], [ 0, %68 ], [ %95, %88 ], [ %95, %97 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  ret i32 %100
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @palmas_ext_control_req_config(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

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
declare dso_local i32 @regulator_set_bypass_regmap(ptr noundef, i1 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_bypass_regmap(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_list_voltage_linear_range(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_map_voltage_linear_range(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @palmas_set_mode_smps(ptr noundef %0, i32 noundef %1) #2 {
  %3 = alloca i32, align 4
  %4 = tail call i32 @rdev_get_id(ptr noundef %0) #6
  %5 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #6
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.palmas, ptr %6, i32 0, i32 9
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.palmas_pmic_driver_data, ptr %8, i32 0, i32 6
  %10 = load ptr, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  store i32 0, ptr %3, align 4, !annotation !8
  %11 = load ptr, ptr %5, align 4
  %12 = getelementptr %struct.palmas_regs_info, ptr %10, i32 %4, i32 3
  %13 = load i8, ptr %12, align 1
  %14 = zext i8 %13 to i32
  %15 = add nuw nsw i32 %14, 32
  %16 = getelementptr inbounds %struct.palmas, ptr %11, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = call i32 @regmap_read(ptr noundef %17, i32 noundef %15, ptr noundef nonnull %3) #6
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %47

20:                                               ; preds = %2
  %21 = load i32, ptr %3, align 4
  %22 = and i32 %21, -4
  %23 = icmp eq i32 %22, 0
  switch i32 %1, label %47 [
    i32 2, label %24
    i32 4, label %26
    i32 1, label %28
  ]

24:                                               ; preds = %20
  %25 = or i32 %22, 1
  store i32 %25, ptr %3, align 4
  br label %30

26:                                               ; preds = %20
  %27 = or i32 %22, 2
  store i32 %27, ptr %3, align 4
  br label %30

28:                                               ; preds = %20
  %29 = or i32 %21, 3
  store i32 %29, ptr %3, align 4
  br label %30

30:                                               ; preds = %28, %26, %24
  %31 = phi i32 [ %29, %28 ], [ %27, %26 ], [ %25, %24 ]
  %32 = and i32 %31, 3
  %33 = getelementptr %struct.palmas_pmic, ptr %5, i32 0, i32 9, i32 %4
  store i32 %32, ptr %33, align 4
  br i1 %23, label %44, label %34

34:                                               ; preds = %30
  %35 = load ptr, ptr %5, align 4
  %36 = load i8, ptr %12, align 1
  %37 = zext i8 %36 to i32
  %38 = load i32, ptr %3, align 4
  %39 = add nuw nsw i32 %37, 32
  %40 = getelementptr inbounds %struct.palmas, ptr %35, i32 0, i32 2
  %41 = load ptr, ptr %40, align 4
  %42 = call i32 @regmap_write(ptr noundef %41, i32 noundef %39, i32 noundef %38) #6
  %43 = load i32, ptr %33, align 4
  br label %44

44:                                               ; preds = %34, %30
  %45 = phi i32 [ %43, %34 ], [ %32, %30 ]
  %46 = getelementptr %struct.palmas_pmic, ptr %5, i32 0, i32 2, i32 %4, i32 36
  store i32 %45, ptr %46, align 4
  br label %47

47:                                               ; preds = %44, %20, %2
  %48 = phi i32 [ 0, %44 ], [ %18, %2 ], [ -22, %20 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  ret i32 %48
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @palmas_get_mode_smps(ptr noundef %0) #2 {
  %2 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #6
  %3 = tail call i32 @rdev_get_id(ptr noundef %0) #6
  %4 = getelementptr %struct.palmas_pmic, ptr %2, i32 0, i32 9, i32 %3
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 3
  %7 = add nsw i32 %6, -1
  %8 = icmp ult i32 %7, 3
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = getelementptr inbounds [3 x i32], ptr @switch.table.palmas_get_mode_smps, i32 0, i32 %7
  %11 = load i32, ptr %10, align 4
  br label %12

12:                                               ; preds = %9, %1
  %13 = phi i32 [ %11, %9 ], [ 0, %1 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @palmas_smps_set_ramp_delay(ptr noundef %0, i32 noundef %1) #2 {
  %3 = tail call i32 @rdev_get_id(ptr noundef %0) #6
  %4 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #6
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.palmas, ptr %5, i32 0, i32 9
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.palmas_pmic_driver_data, ptr %7, i32 0, i32 6
  %9 = load ptr, ptr %8, align 4
  switch i32 %3, label %10 [
    i32 2, label %34
    i32 6, label %34
  ]

10:                                               ; preds = %2
  %11 = icmp slt i32 %1, 1
  br i1 %11, label %17, label %12

12:                                               ; preds = %10
  %13 = icmp ult i32 %1, 2501
  br i1 %13, label %17, label %14

14:                                               ; preds = %12
  %15 = icmp ult i32 %1, 5001
  %16 = select i1 %15, i32 2, i32 1
  br label %17

17:                                               ; preds = %14, %12, %10
  %18 = phi i32 [ 0, %10 ], [ 3, %12 ], [ %16, %14 ]
  %19 = getelementptr %struct.palmas_regs_info, ptr %9, i32 %3, i32 4
  %20 = load i8, ptr %19, align 2
  %21 = zext i8 %20 to i32
  %22 = add nuw nsw i32 %21, 32
  %23 = getelementptr inbounds %struct.palmas, ptr %5, i32 0, i32 2
  %24 = load ptr, ptr %23, align 4
  %25 = tail call i32 @regmap_write(ptr noundef %24, i32 noundef %22, i32 noundef %18) #6
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %17
  %28 = load ptr, ptr %4, align 4
  %29 = load ptr, ptr %28, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.79, i32 noundef %25) #7
  br label %34

30:                                               ; preds = %17
  %31 = getelementptr [4 x i32], ptr @palmas_smps_ramp_delay, i32 0, i32 %18
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr %struct.palmas_pmic, ptr %4, i32 0, i32 8, i32 %3
  store i32 %32, ptr %33, align 4
  br label %34

34:                                               ; preds = %30, %27, %2, %2
  %35 = phi i32 [ %25, %27 ], [ %25, %30 ], [ 0, %2 ], [ 0, %2 ]
  ret i32 %35
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_voltage_time_sel(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdev_get_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @palmas_ldo_init(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #2 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #6
  store i32 0, ptr %4, align 4, !annotation !8
  %5 = getelementptr inbounds %struct.palmas, ptr %0, i32 0, i32 9
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.palmas_pmic_driver_data, ptr %6, i32 0, i32 6
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr %struct.palmas_regs_info, ptr %8, i32 %1, i32 3
  %10 = load i8, ptr %9, align 1
  %11 = zext i8 %10 to i32
  %12 = add nuw nsw i32 %11, 80
  %13 = getelementptr inbounds %struct.palmas, ptr %0, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = call i32 @regmap_read(ptr noundef %14, i32 noundef %12, ptr noundef nonnull %4) #6
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %53

17:                                               ; preds = %3
  %18 = load i32, ptr %2, align 4
  %19 = icmp eq i32 %18, 0
  %20 = load i32, ptr %4, align 4
  %21 = and i32 %20, -133
  %22 = select i1 %19, i32 0, i32 128
  %23 = or i32 %21, %22
  %24 = getelementptr inbounds %struct.palmas_reg_init, ptr %2, i32 0, i32 2
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 0
  %27 = select i1 %26, i32 0, i32 4
  %28 = or i32 %27, %23
  store i32 %28, ptr %4, align 4
  %29 = load ptr, ptr %13, align 4
  %30 = call i32 @regmap_write(ptr noundef %29, i32 noundef %12, i32 noundef %28) #6
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %53

32:                                               ; preds = %17
  %33 = getelementptr inbounds %struct.palmas_reg_init, ptr %2, i32 0, i32 1
  %34 = load i32, ptr %33, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %53, label %36

36:                                               ; preds = %32
  %37 = load ptr, ptr %13, align 4
  %38 = call i32 @regmap_update_bits_base(ptr noundef %37, i32 noundef %12, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = load ptr, ptr %0, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.84, i32 noundef %11, i32 noundef %38) #7
  br label %53

42:                                               ; preds = %36
  %43 = load ptr, ptr %5, align 4
  %44 = getelementptr inbounds %struct.palmas_pmic_driver_data, ptr %43, i32 0, i32 6
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr %struct.palmas_regs_info, ptr %45, i32 %1, i32 5
  %47 = load i32, ptr %46, align 4
  %48 = load i32, ptr %33, align 4
  %49 = call i32 @palmas_ext_control_req_config(ptr noundef %0, i32 noundef %47, i32 noundef %48, i1 noundef zeroext true) #6
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %42
  %52 = load ptr, ptr %0, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %52, ptr noundef nonnull @.str.78, i32 noundef %1, i32 noundef %49) #7
  br label %53

53:                                               ; preds = %51, %42, %40, %32, %17, %3
  %54 = phi i32 [ %38, %40 ], [ %15, %3 ], [ %30, %17 ], [ 0, %32 ], [ %49, %42 ], [ %49, %51 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  ret i32 %54
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @palmas_extreg_init(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.palmas, ptr %0, i32 0, i32 9
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.palmas_pmic_driver_data, ptr %5, i32 0, i32 6
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr %struct.palmas_regs_info, ptr %7, i32 %1, i32 3
  %9 = load i8, ptr %8, align 1
  %10 = zext i8 %9 to i32
  %11 = getelementptr inbounds %struct.palmas_reg_init, ptr %2, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  %14 = select i1 %13, i32 0, i32 4
  %15 = add nuw nsw i32 %10, 212
  %16 = getelementptr inbounds %struct.palmas, ptr %0, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i32 @regmap_update_bits_base(ptr noundef %17, i32 noundef %15, i32 noundef 4, i32 noundef %14, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.85, i32 noundef %10, i32 noundef %18) #7
  br label %43

22:                                               ; preds = %3
  %23 = getelementptr inbounds %struct.palmas_reg_init, ptr %2, i32 0, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %43, label %26

26:                                               ; preds = %22
  %27 = load ptr, ptr %16, align 4
  %28 = tail call i32 @regmap_update_bits_base(ptr noundef %27, i32 noundef %15, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.86, i32 noundef %10, i32 noundef %28) #7
  br label %43

32:                                               ; preds = %26
  %33 = load ptr, ptr %4, align 4
  %34 = getelementptr inbounds %struct.palmas_pmic_driver_data, ptr %33, i32 0, i32 6
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr %struct.palmas_regs_info, ptr %35, i32 %1, i32 5
  %37 = load i32, ptr %36, align 4
  %38 = load i32, ptr %23, align 4
  %39 = tail call i32 @palmas_ext_control_req_config(ptr noundef %0, i32 noundef %37, i32 noundef %38, i1 noundef zeroext true) #6
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %32
  %42 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.78, i32 noundef %1, i32 noundef %39) #7
  br label %43

43:                                               ; preds = %41, %32, %30, %22, %20
  %44 = phi i32 [ %18, %20 ], [ %28, %30 ], [ 0, %22 ], [ %39, %32 ], [ %39, %41 ]
  ret i32 %44
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @palmas_is_enabled_ldo(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = tail call i32 @rdev_get_id(ptr noundef %0) #6
  %4 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #6
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.palmas, ptr %5, i32 0, i32 9
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.palmas_pmic_driver_data, ptr %7, i32 0, i32 6
  %9 = load ptr, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  store i32 0, ptr %2, align 4, !annotation !8
  %10 = load ptr, ptr %4, align 4
  %11 = getelementptr %struct.palmas_regs_info, ptr %9, i32 %3, i32 3
  %12 = load i8, ptr %11, align 1
  %13 = zext i8 %12 to i32
  %14 = add nuw nsw i32 %13, 80
  %15 = getelementptr inbounds %struct.palmas, ptr %10, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  %17 = call i32 @regmap_read(ptr noundef %16, i32 noundef %14, ptr noundef nonnull %2) #6
  %18 = load i32, ptr %2, align 4
  %19 = lshr i32 %18, 4
  %20 = and i32 %19, 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  ret i32 %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_regulator_match(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tps65917_smps_registration(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2, ptr noundef %3, [6 x i32] %4) #2 {
  %6 = alloca %struct.regulator_config, align 4
  %7 = alloca i32, align 4
  %8 = extractvalue [6 x i32] %4, 0
  store i32 %8, ptr %6, align 4
  %9 = extractvalue [6 x i32] %4, 1
  %10 = getelementptr inbounds [6 x i32], ptr %6, i32 0, i32 1
  store i32 %9, ptr %10, align 4
  %11 = extractvalue [6 x i32] %4, 2
  %12 = getelementptr inbounds [6 x i32], ptr %6, i32 0, i32 2
  store i32 %11, ptr %12, align 4
  %13 = extractvalue [6 x i32] %4, 3
  %14 = getelementptr inbounds [6 x i32], ptr %6, i32 0, i32 3
  store i32 %13, ptr %14, align 4
  %15 = extractvalue [6 x i32] %4, 4
  %16 = getelementptr inbounds [6 x i32], ptr %6, i32 0, i32 4
  store i32 %15, ptr %16, align 4
  %17 = extractvalue [6 x i32] %4, 5
  %18 = getelementptr inbounds [6 x i32], ptr %6, i32 0, i32 5
  store i32 %17, ptr %18, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #6
  store i32 0, ptr %7, align 4, !annotation !8
  %19 = load i32, ptr %1, align 4
  %20 = getelementptr inbounds %struct.palmas_pmic_driver_data, ptr %1, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = icmp sgt i32 %19, %21
  br i1 %22, label %132, label %23

23:                                               ; preds = %5
  %24 = getelementptr inbounds %struct.palmas_pmic, ptr %0, i32 0, i32 6
  %25 = icmp eq ptr %2, null
  %26 = getelementptr inbounds %struct.palmas_pmic_driver_data, ptr %1, i32 0, i32 6
  %27 = getelementptr inbounds %struct.palmas_pmic_driver_data, ptr %1, i32 0, i32 7
  %28 = getelementptr inbounds %struct.palmas_pmic, ptr %0, i32 0, i32 1
  br label %29

29:                                               ; preds = %128, %23
  %30 = phi i32 [ %19, %23 ], [ %129, %128 ]
  %31 = getelementptr %struct.palmas_pmic, ptr %0, i32 0, i32 2, i32 %30
  %32 = getelementptr %struct.palmas_pmic, ptr %0, i32 0, i32 2, i32 %30, i32 22
  store i32 3, ptr %32, align 4
  %33 = icmp ult i32 %30, 2
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load i32, ptr %24, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %128

37:                                               ; preds = %34, %29
  br i1 %25, label %46, label %38

38:                                               ; preds = %37
  %39 = getelementptr %struct.palmas_pmic_platform_data, ptr %2, i32 0, i32 1, i32 %30
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %46, label %42

42:                                               ; preds = %38
  %43 = load ptr, ptr %0, align 4
  %44 = call fastcc i32 @palmas_smps_init(ptr noundef %43, i32 noundef %30, ptr noundef nonnull %40)
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %132

46:                                               ; preds = %42, %38, %37
  %47 = phi ptr [ %40, %42 ], [ null, %38 ], [ null, %37 ]
  %48 = load ptr, ptr %26, align 4
  %49 = getelementptr %struct.palmas_regs_info, ptr %48, i32 %30
  %50 = load ptr, ptr %49, align 4
  store ptr %50, ptr %31, align 4
  %51 = getelementptr %struct.palmas_pmic, ptr %0, i32 0, i32 2, i32 %30, i32 6
  store i32 %30, ptr %51, align 4
  %52 = getelementptr %struct.palmas_regs_info, ptr %48, i32 %30, i32 2
  %53 = load i8, ptr %52, align 4
  %54 = zext i8 %53 to i32
  %55 = load ptr, ptr %0, align 4
  %56 = add nuw nsw i32 %54, 32
  %57 = getelementptr inbounds %struct.palmas, ptr %55, i32 0, i32 2
  %58 = load ptr, ptr %57, align 4
  %59 = call i32 @regmap_read(ptr noundef %58, i32 noundef %56, ptr noundef nonnull %7) #6
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %132

61:                                               ; preds = %46
  %62 = load i32, ptr %7, align 4
  %63 = and i32 %62, 128
  %64 = icmp eq i32 %63, 0
  %65 = getelementptr %struct.palmas_pmic, ptr %0, i32 0, i32 7, i32 %30
  br i1 %64, label %67, label %66

66:                                               ; preds = %61
  store i32 1, ptr %65, align 4
  br label %71

67:                                               ; preds = %61
  %68 = load i32, ptr %65, align 4
  %69 = icmp eq i32 %68, 0
  %70 = select i1 %69, ptr @smps_low_ranges, ptr @smps_high_ranges
  br label %71

71:                                               ; preds = %67, %66
  %72 = phi ptr [ @smps_high_ranges, %66 ], [ %70, %67 ]
  %73 = getelementptr %struct.palmas_pmic, ptr %0, i32 0, i32 2, i32 %30, i32 20
  store ptr %72, ptr %73, align 4
  %74 = icmp eq ptr %47, null
  br i1 %74, label %79, label %75

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.palmas_reg_init, ptr %47, i32 0, i32 1
  %77 = load i32, ptr %76, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %75, %71
  br label %80

80:                                               ; preds = %79, %75
  %81 = phi ptr [ @tps65917_ops_smps, %79 ], [ @tps65917_ops_ext_control_smps, %75 ]
  %82 = getelementptr %struct.palmas_pmic, ptr %0, i32 0, i32 2, i32 %30, i32 10
  store ptr %81, ptr %82, align 4
  %83 = getelementptr %struct.palmas_pmic, ptr %0, i32 0, i32 2, i32 %30, i32 8
  store i32 122, ptr %83, align 4
  %84 = load i8, ptr %52, align 4
  %85 = zext i8 %84 to i32
  %86 = add nuw nsw i32 %85, 32
  %87 = getelementptr %struct.palmas_pmic, ptr %0, i32 0, i32 2, i32 %30, i32 27
  store i32 %86, ptr %87, align 4
  %88 = getelementptr %struct.palmas_pmic, ptr %0, i32 0, i32 2, i32 %30, i32 28
  store i32 127, ptr %88, align 4
  %89 = getelementptr %struct.palmas_pmic, ptr %0, i32 0, i32 2, i32 %30, i32 18
  store i32 2500, ptr %89, align 4
  %90 = getelementptr %struct.palmas_regs_info, ptr %48, i32 %30, i32 3
  %91 = load i8, ptr %90, align 1
  %92 = zext i8 %91 to i32
  %93 = load ptr, ptr %0, align 4
  %94 = add nuw nsw i32 %92, 32
  %95 = getelementptr inbounds %struct.palmas, ptr %93, i32 0, i32 2
  %96 = load ptr, ptr %95, align 4
  %97 = call i32 @regmap_read(ptr noundef %96, i32 noundef %94, ptr noundef nonnull %7) #6
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %132

99:                                               ; preds = %80
  %100 = load i32, ptr %7, align 4
  %101 = and i32 %100, 3
  %102 = getelementptr %struct.palmas_pmic, ptr %0, i32 0, i32 9, i32 %30
  store i32 %101, ptr %102, align 4
  %103 = load i8, ptr %90, align 1
  %104 = zext i8 %103 to i32
  %105 = add nuw nsw i32 %104, 32
  %106 = getelementptr %struct.palmas_pmic, ptr %0, i32 0, i32 2, i32 %30, i32 34
  store i32 %105, ptr %106, align 4
  %107 = getelementptr %struct.palmas_pmic, ptr %0, i32 0, i32 2, i32 %30, i32 35
  store i32 3, ptr %107, align 4
  %108 = getelementptr %struct.palmas_pmic, ptr %0, i32 0, i32 2, i32 %30, i32 36
  store i32 1, ptr %108, align 4
  %109 = getelementptr %struct.palmas_pmic, ptr %0, i32 0, i32 2, i32 %30, i32 12
  store i32 0, ptr %109, align 4
  %110 = getelementptr %struct.palmas_pmic, ptr %0, i32 0, i32 2, i32 %30, i32 13
  store ptr null, ptr %110, align 4
  br i1 %25, label %114, label %111

111:                                              ; preds = %99
  %112 = getelementptr [27 x ptr], ptr %2, i32 0, i32 %30
  %113 = load ptr, ptr %112, align 4
  br label %114

114:                                              ; preds = %111, %99
  %115 = phi ptr [ %113, %111 ], [ null, %99 ]
  store ptr %115, ptr %10, align 4
  %116 = getelementptr %struct.palmas_regs_info, ptr %48, i32 %30, i32 1
  %117 = load ptr, ptr %116, align 4
  %118 = getelementptr %struct.palmas_pmic, ptr %0, i32 0, i32 2, i32 %30, i32 1
  store ptr %117, ptr %118, align 4
  %119 = load ptr, ptr %27, align 4
  %120 = getelementptr %struct.of_regulator_match, ptr %119, i32 %30, i32 3
  %121 = load ptr, ptr %120, align 4
  store ptr %121, ptr %14, align 4
  %122 = load ptr, ptr %28, align 4
  %123 = call ptr @devm_regulator_register(ptr noundef %122, ptr noundef %31, ptr noundef nonnull %6) #6
  %124 = icmp ugt ptr %123, inttoptr (i32 -4096 to ptr)
  br i1 %124, label %125, label %128

125:                                              ; preds = %114
  %126 = load ptr, ptr %28, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %126, ptr noundef nonnull @.str.77, ptr noundef %3) #7
  %127 = ptrtoint ptr %123 to i32
  br label %132

128:                                              ; preds = %114, %34
  %129 = add i32 %30, 1
  %130 = load i32, ptr %20, align 4
  %131 = icmp sgt i32 %129, %130
  br i1 %131, label %132, label %29

132:                                              ; preds = %128, %125, %80, %46, %42, %5
  %133 = phi i32 [ %127, %125 ], [ 0, %5 ], [ %44, %42 ], [ %59, %46 ], [ %97, %80 ], [ 0, %128 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #6
  ret i32 %133
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tps65917_ldo_registration(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2, ptr noundef %3, [6 x i32] %4) #2 {
  %6 = alloca %struct.regulator_config, align 4
  %7 = extractvalue [6 x i32] %4, 0
  store i32 %7, ptr %6, align 4
  %8 = extractvalue [6 x i32] %4, 1
  %9 = getelementptr inbounds [6 x i32], ptr %6, i32 0, i32 1
  store i32 %8, ptr %9, align 4
  %10 = extractvalue [6 x i32] %4, 2
  %11 = getelementptr inbounds [6 x i32], ptr %6, i32 0, i32 2
  store i32 %10, ptr %11, align 4
  %12 = extractvalue [6 x i32] %4, 3
  %13 = getelementptr inbounds [6 x i32], ptr %6, i32 0, i32 3
  store i32 %12, ptr %13, align 4
  %14 = extractvalue [6 x i32] %4, 4
  %15 = getelementptr inbounds [6 x i32], ptr %6, i32 0, i32 4
  store i32 %14, ptr %15, align 4
  %16 = extractvalue [6 x i32] %4, 5
  %17 = getelementptr inbounds [6 x i32], ptr %6, i32 0, i32 5
  store i32 %16, ptr %17, align 4
  %18 = getelementptr inbounds %struct.palmas_pmic_driver_data, ptr %1, i32 0, i32 2
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.palmas_pmic_driver_data, ptr %1, i32 0, i32 4
  %21 = load i32, ptr %20, align 4
  %22 = icmp slt i32 %19, %21
  br i1 %22, label %23, label %132

23:                                               ; preds = %5
  %24 = icmp eq ptr %2, null
  %25 = getelementptr inbounds %struct.palmas_pmic_driver_data, ptr %1, i32 0, i32 6
  %26 = getelementptr inbounds %struct.palmas_pmic_driver_data, ptr %1, i32 0, i32 7
  %27 = getelementptr inbounds %struct.palmas_pmic, ptr %0, i32 0, i32 1
  br label %28

28:                                               ; preds = %128, %23
  %29 = phi i32 [ %19, %23 ], [ %129, %128 ]
  br i1 %24, label %34, label %30

30:                                               ; preds = %28
  %31 = getelementptr %struct.palmas_pmic_platform_data, ptr %2, i32 0, i32 1, i32 %29
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %30, %28
  br label %35

35:                                               ; preds = %34, %30
  %36 = phi ptr [ null, %34 ], [ %32, %30 ]
  %37 = load ptr, ptr %25, align 4
  %38 = getelementptr %struct.palmas_regs_info, ptr %37, i32 %29
  %39 = getelementptr %struct.palmas_pmic, ptr %0, i32 0, i32 2, i32 %29
  %40 = load ptr, ptr %38, align 4
  store ptr %40, ptr %39, align 4
  %41 = getelementptr %struct.palmas_pmic, ptr %0, i32 0, i32 2, i32 %29, i32 6
  store i32 %29, ptr %41, align 4
  %42 = getelementptr %struct.palmas_pmic, ptr %0, i32 0, i32 2, i32 %29, i32 12
  store i32 0, ptr %42, align 4
  %43 = getelementptr %struct.palmas_pmic, ptr %0, i32 0, i32 2, i32 %29, i32 13
  store ptr null, ptr %43, align 4
  %44 = icmp slt i32 %29, 11
  %45 = getelementptr %struct.palmas_pmic, ptr %0, i32 0, i32 2, i32 %29, i32 8
  br i1 %44, label %46, label %80

46:                                               ; preds = %35
  store i32 50, ptr %45, align 4
  %47 = icmp eq ptr %36, null
  br i1 %47, label %52, label %48

48:                                               ; preds = %46
  %49 = getelementptr inbounds %struct.palmas_reg_init, ptr %36, i32 0, i32 1
  %50 = load i32, ptr %49, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %48, %46
  br label %53

53:                                               ; preds = %52, %48
  %54 = phi ptr [ @tps65917_ops_ldo, %52 ], [ @palmas_ops_ext_control_ldo, %48 ]
  %55 = getelementptr %struct.palmas_pmic, ptr %0, i32 0, i32 2, i32 %29, i32 10
  store ptr %54, ptr %55, align 4
  %56 = getelementptr %struct.palmas_pmic, ptr %0, i32 0, i32 2, i32 %29, i32 14
  store i32 900000, ptr %56, align 4
  %57 = getelementptr %struct.palmas_pmic, ptr %0, i32 0, i32 2, i32 %29, i32 15
  store i32 50000, ptr %57, align 4
  %58 = getelementptr %struct.palmas_pmic, ptr %0, i32 0, i32 2, i32 %29, i32 16
  store i32 1, ptr %58, align 4
  %59 = getelementptr %struct.palmas_pmic, ptr %0, i32 0, i32 2, i32 %29, i32 57
  store i32 500, ptr %59, align 4
  %60 = getelementptr %struct.palmas_regs_info, ptr %37, i32 %29, i32 2
  %61 = load i8, ptr %60, align 4
  %62 = zext i8 %61 to i32
  %63 = add nuw nsw i32 %62, 80
  %64 = getelementptr %struct.palmas_pmic, ptr %0, i32 0, i32 2, i32 %29, i32 27
  store i32 %63, ptr %64, align 4
  %65 = getelementptr %struct.palmas_pmic, ptr %0, i32 0, i32 2, i32 %29, i32 28
  store i32 63, ptr %65, align 4
  %66 = getelementptr %struct.palmas_regs_info, ptr %37, i32 %29, i32 3
  %67 = load i8, ptr %66, align 1
  %68 = zext i8 %67 to i32
  %69 = add nuw nsw i32 %68, 80
  %70 = getelementptr %struct.palmas_pmic, ptr %0, i32 0, i32 2, i32 %29, i32 34
  store i32 %69, ptr %70, align 4
  %71 = getelementptr %struct.palmas_pmic, ptr %0, i32 0, i32 2, i32 %29, i32 35
  store i32 1, ptr %71, align 4
  %72 = getelementptr %struct.palmas_pmic, ptr %0, i32 0, i32 2, i32 %29, i32 18
  store i32 2500, ptr %72, align 4
  %73 = and i32 %29, -2
  %74 = icmp eq i32 %73, 6
  br i1 %74, label %75, label %96

75:                                               ; preds = %53
  %76 = getelementptr %struct.palmas_pmic, ptr %0, i32 0, i32 2, i32 %29, i32 10
  store ptr @tps65917_ops_ldo_1_2, ptr %76, align 4
  %77 = getelementptr %struct.palmas_pmic, ptr %0, i32 0, i32 2, i32 %29, i32 39
  store i32 %69, ptr %77, align 4
  %78 = getelementptr %struct.palmas_pmic, ptr %0, i32 0, i32 2, i32 %29, i32 41
  store i32 64, ptr %78, align 4
  %79 = getelementptr %struct.palmas_pmic, ptr %0, i32 0, i32 2, i32 %29, i32 40
  store i32 64, ptr %79, align 4
  br label %96

80:                                               ; preds = %35
  store i32 1, ptr %45, align 4
  %81 = icmp eq ptr %36, null
  br i1 %81, label %86, label %82

82:                                               ; preds = %80
  %83 = getelementptr inbounds %struct.palmas_reg_init, ptr %36, i32 0, i32 1
  %84 = load i32, ptr %83, align 4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %82, %80
  br label %87

87:                                               ; preds = %86, %82
  %88 = phi ptr [ @palmas_ops_extreg, %86 ], [ @palmas_ops_ext_control_extreg, %82 ]
  %89 = getelementptr %struct.palmas_pmic, ptr %0, i32 0, i32 2, i32 %29, i32 10
  store ptr %88, ptr %89, align 4
  %90 = getelementptr %struct.palmas_regs_info, ptr %37, i32 %29, i32 3
  %91 = load i8, ptr %90, align 1
  %92 = zext i8 %91 to i32
  %93 = add nuw nsw i32 %92, 212
  %94 = getelementptr %struct.palmas_pmic, ptr %0, i32 0, i32 2, i32 %29, i32 34
  store i32 %93, ptr %94, align 4
  %95 = getelementptr %struct.palmas_pmic, ptr %0, i32 0, i32 2, i32 %29, i32 35
  store i32 1, ptr %95, align 4
  br label %96

96:                                               ; preds = %87, %75, %53
  br i1 %24, label %100, label %97

97:                                               ; preds = %96
  %98 = getelementptr [27 x ptr], ptr %2, i32 0, i32 %29
  %99 = load ptr, ptr %98, align 4
  br label %100

100:                                              ; preds = %97, %96
  %101 = phi ptr [ %99, %97 ], [ null, %96 ]
  store ptr %101, ptr %9, align 4
  %102 = getelementptr %struct.palmas_regs_info, ptr %37, i32 %29, i32 1
  %103 = load ptr, ptr %102, align 4
  %104 = getelementptr %struct.palmas_pmic, ptr %0, i32 0, i32 2, i32 %29, i32 1
  store ptr %103, ptr %104, align 4
  %105 = load ptr, ptr %26, align 4
  %106 = getelementptr %struct.of_regulator_match, ptr %105, i32 %29, i32 3
  %107 = load ptr, ptr %106, align 4
  store ptr %107, ptr %13, align 4
  %108 = load ptr, ptr %27, align 4
  %109 = call ptr @devm_regulator_register(ptr noundef %108, ptr noundef %39, ptr noundef nonnull %6) #6
  %110 = icmp ugt ptr %109, inttoptr (i32 -4096 to ptr)
  br i1 %110, label %111, label %114

111:                                              ; preds = %100
  %112 = load ptr, ptr %27, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %112, ptr noundef nonnull @.str.77, ptr noundef %3) #7
  %113 = ptrtoint ptr %109 to i32
  br label %132

114:                                              ; preds = %100
  br i1 %24, label %128, label %115

115:                                              ; preds = %114
  %116 = getelementptr %struct.palmas_pmic_platform_data, ptr %2, i32 0, i32 1, i32 %29
  %117 = load ptr, ptr %116, align 4
  %118 = icmp eq ptr %117, null
  br i1 %118, label %128, label %119

119:                                              ; preds = %115
  %120 = load ptr, ptr %0, align 4
  br i1 %44, label %121, label %123

121:                                              ; preds = %119
  %122 = call fastcc i32 @palmas_ldo_init(ptr noundef %120, i32 noundef %29, ptr noundef nonnull %117)
  br label %125

123:                                              ; preds = %119
  %124 = call fastcc i32 @palmas_extreg_init(ptr noundef %120, i32 noundef %29, ptr noundef nonnull %117)
  br label %125

125:                                              ; preds = %123, %121
  %126 = phi i32 [ %122, %121 ], [ %124, %123 ]
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %125, %115, %114
  %129 = add nsw i32 %29, 1
  %130 = load i32, ptr %20, align 4
  %131 = icmp slt i32 %129, %130
  br i1 %131, label %28, label %132

132:                                              ; preds = %128, %125, %111, %5
  %133 = phi i32 [ %113, %111 ], [ 0, %5 ], [ %126, %125 ], [ 0, %128 ]
  ret i32 %133
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
!8 = !{!"auto-init"}
!9 = !{i8 0, i8 2}
