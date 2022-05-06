; ModuleID = '/llk/IR/drivers/regulator/lp872x.c_pt.bc'
source_filename = "../drivers/regulator/lp872x.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.of_regulator_match = type { ptr, ptr, ptr, ptr, ptr }
%struct.regulator_desc = type { ptr, ptr, ptr, i8, ptr, ptr, i32, i8, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, ptr }
%struct.regulator_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.regulator_config = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
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
%struct.lp872x_platform_data = type { i8, i8, [9 x %struct.lp872x_regulator_data], ptr, ptr }
%struct.lp872x_regulator_data = type { i32, ptr }
%struct.lp872x_dvs = type { ptr, i32, i32 }
%struct.lp872x = type { ptr, ptr, i32, ptr, i32, i32 }

@__initcall__kmod_lp872x__247_953_lp872x_driver_init6 = internal global ptr @lp872x_driver_init, section ".initcall6.init", align 4
@lp872x_driver = internal global %struct.i2c_driver { i32 0, ptr @lp872x_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @lp872x_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @lp872x_ids, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, align 4
@__exitcall_lp872x_driver_exit = internal global ptr @lp872x_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description248 = internal constant [73 x i8] c"lp872x.description=TI/National Semiconductor LP872x PMU Regulator Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author249 = internal constant [23 x i8] c"lp872x.author=Milo Kim\00", section ".modinfo", align 1
@__UNIQUE_ID_file250 = internal constant [37 x i8] c"lp872x.file=drivers/regulator/lp872x\00", section ".modinfo", align 1
@__UNIQUE_ID_license251 = internal constant [19 x i8] c"lp872x.license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [7 x i8] c"lp872x\00", align 1
@lp872x_dt_ids = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,lp8720\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,lp8725\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@lp872x_ids = internal constant [3 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"lp8720\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"lp8725\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id zeroinitializer], align 4
@lp872x_probe.lp872x_num_regulators = internal unnamed_addr constant [2 x i32] [i32 6, i32 9], align 4
@lp872x_regmap_config = internal constant %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 15, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"regmap init i2c err: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"ti,general-config\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"ti,update-config\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"ti,dvs-vsel\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"ti,dvs-state\00", align 1
@lp8720_matches = internal global [6 x %struct.of_regulator_match] [%struct.of_regulator_match { ptr @.str.6, ptr null, ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.7, ptr inttoptr (i32 1 to ptr), ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.8, ptr inttoptr (i32 2 to ptr), ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.9, ptr inttoptr (i32 3 to ptr), ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.10, ptr inttoptr (i32 4 to ptr), ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.11, ptr inttoptr (i32 5 to ptr), ptr null, ptr null, ptr null }], align 4
@lp8725_matches = internal global [9 x %struct.of_regulator_match] [%struct.of_regulator_match { ptr @.str.6, ptr inttoptr (i32 6 to ptr), ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.7, ptr inttoptr (i32 7 to ptr), ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.8, ptr inttoptr (i32 8 to ptr), ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.9, ptr inttoptr (i32 9 to ptr), ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.10, ptr inttoptr (i32 10 to ptr), ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.12, ptr inttoptr (i32 11 to ptr), ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.13, ptr inttoptr (i32 12 to ptr), ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.14, ptr inttoptr (i32 13 to ptr), ptr null, ptr null, ptr null }, %struct.of_regulator_match { ptr @.str.15, ptr inttoptr (i32 14 to ptr), ptr null, ptr null, ptr null }], align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"ldo1\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"ldo2\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"ldo3\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"ldo4\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"ldo5\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"buck\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"lilo1\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"lilo2\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"buck1\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"buck2\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@.str.17 = private unnamed_addr constant [23 x i8] c"gpio request err: %ld\0A\00", align 1
@__const.lp872x_init_dvs.mask = private unnamed_addr constant [2 x i8] c"\04\0C", align 1
@__const.lp872x_init_dvs.default_dvs_mode = private unnamed_addr constant [2 x i8] c"\00\04", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"ti,dvs\00", align 1
@lp8720_regulator_desc = internal constant [6 x %struct.regulator_desc] [%struct.regulator_desc { ptr @.str.6, ptr null, ptr @.str.6, i8 0, ptr null, ptr null, i32 0, i8 0, i32 32, i32 0, ptr @lp872x_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @lp872x_ldo_vtbl, ptr null, i32 0, i32 0, i32 1, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 8, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.7, ptr null, ptr @.str.7, i8 0, ptr null, ptr null, i32 1, i8 0, i32 32, i32 0, ptr @lp872x_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @lp872x_ldo_vtbl, ptr null, i32 0, i32 0, i32 2, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 8, i32 2, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.8, ptr null, ptr @.str.8, i8 0, ptr null, ptr null, i32 2, i8 0, i32 32, i32 0, ptr @lp872x_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @lp872x_ldo_vtbl, ptr null, i32 0, i32 0, i32 3, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 8, i32 4, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.9, ptr null, ptr @.str.9, i8 0, ptr null, ptr null, i32 3, i8 0, i32 32, i32 0, ptr @lp872x_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @lp8720_ldo4_vtbl, ptr null, i32 0, i32 0, i32 4, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 8, i32 8, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.10, ptr null, ptr @.str.10, i8 0, ptr null, ptr null, i32 4, i8 0, i32 32, i32 0, ptr @lp872x_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @lp872x_ldo_vtbl, ptr null, i32 0, i32 0, i32 5, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 8, i32 16, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.11, ptr null, ptr @.str.11, i8 0, ptr null, ptr null, i32 5, i8 0, i32 32, i32 0, ptr @lp8720_buck_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @lp8720_buck_vtbl, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 8, i32 32, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }], align 4
@lp8725_regulator_desc = internal constant [9 x %struct.regulator_desc] [%struct.regulator_desc { ptr @.str.6, ptr null, ptr @.str.6, i8 0, ptr null, ptr null, i32 6, i8 0, i32 32, i32 0, ptr @lp872x_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @lp872x_ldo_vtbl, ptr null, i32 0, i32 0, i32 1, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 13, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.7, ptr null, ptr @.str.7, i8 0, ptr null, ptr null, i32 7, i8 0, i32 32, i32 0, ptr @lp872x_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @lp872x_ldo_vtbl, ptr null, i32 0, i32 0, i32 2, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 13, i32 2, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.8, ptr null, ptr @.str.8, i8 0, ptr null, ptr null, i32 8, i8 0, i32 32, i32 0, ptr @lp872x_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @lp872x_ldo_vtbl, ptr null, i32 0, i32 0, i32 3, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 13, i32 4, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.9, ptr null, ptr @.str.9, i8 0, ptr null, ptr null, i32 9, i8 0, i32 32, i32 0, ptr @lp872x_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @lp872x_ldo_vtbl, ptr null, i32 0, i32 0, i32 4, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 13, i32 8, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.10, ptr null, ptr @.str.10, i8 0, ptr null, ptr null, i32 10, i8 0, i32 32, i32 0, ptr @lp872x_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @lp872x_ldo_vtbl, ptr null, i32 0, i32 0, i32 5, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 13, i32 16, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.12, ptr null, ptr @.str.12, i8 0, ptr null, ptr null, i32 11, i8 0, i32 32, i32 0, ptr @lp872x_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @lp8725_lilo_vtbl, ptr null, i32 0, i32 0, i32 6, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 13, i32 32, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.13, ptr null, ptr @.str.13, i8 0, ptr null, ptr null, i32 12, i8 0, i32 32, i32 0, ptr @lp872x_ldo_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @lp8725_lilo_vtbl, ptr null, i32 0, i32 0, i32 7, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 13, i32 64, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.14, ptr null, ptr @.str.14, i8 0, ptr null, ptr null, i32 13, i8 0, i32 32, i32 4, ptr @lp8725_buck_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @lp8725_buck_vtbl, ptr @lp8725_buck_uA, i32 0, i32 0, i32 0, i32 0, i32 0, i32 9, i32 192, i32 0, i32 0, i32 0, i32 1, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.15, ptr null, ptr @.str.15, i8 0, ptr null, ptr null, i32 14, i8 0, i32 32, i32 4, ptr @lp8725_buck_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @lp8725_buck_vtbl, ptr @lp8725_buck_uA, i32 0, i32 0, i32 0, i32 0, i32 0, i32 11, i32 192, i32 0, i32 0, i32 0, i32 16, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }], align 4
@.str.19 = private unnamed_addr constant [23 x i8] c"regulator register err\00", align 1
@lp872x_ldo_ops = internal constant %struct.regulator_ops { ptr @regulator_list_voltage_table, ptr null, ptr @regulator_map_voltage_ascend, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr @lp872x_regulator_enable_time, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@lp872x_ldo_vtbl = internal constant [32 x i32] [i32 1200000, i32 1250000, i32 1300000, i32 1350000, i32 1400000, i32 1450000, i32 1500000, i32 1550000, i32 1600000, i32 1650000, i32 1700000, i32 1750000, i32 1800000, i32 1850000, i32 1900000, i32 2000000, i32 2100000, i32 2200000, i32 2300000, i32 2400000, i32 2500000, i32 2600000, i32 2650000, i32 2700000, i32 2750000, i32 2800000, i32 2850000, i32 2900000, i32 2950000, i32 3000000, i32 3100000, i32 3300000], align 4
@lp8720_ldo4_vtbl = internal constant [32 x i32] [i32 800000, i32 850000, i32 900000, i32 1000000, i32 1100000, i32 1200000, i32 1250000, i32 1300000, i32 1350000, i32 1400000, i32 1450000, i32 1500000, i32 1550000, i32 1600000, i32 1650000, i32 1700000, i32 1750000, i32 1800000, i32 1850000, i32 1900000, i32 2000000, i32 2100000, i32 2200000, i32 2300000, i32 2400000, i32 2500000, i32 2600000, i32 2650000, i32 2700000, i32 2750000, i32 2800000, i32 2850000], align 4
@lp8720_buck_ops = internal constant %struct.regulator_ops { ptr @regulator_list_voltage_table, ptr null, ptr @regulator_map_voltage_ascend, ptr @lp872x_buck_set_voltage_sel, ptr null, ptr @lp872x_buck_get_voltage_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr @lp872x_buck_set_mode, ptr @lp872x_buck_get_mode, ptr null, ptr @lp872x_regulator_enable_time, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@lp8720_buck_vtbl = internal constant [32 x i32] [i32 0, i32 800000, i32 850000, i32 900000, i32 950000, i32 1000000, i32 1050000, i32 1100000, i32 1150000, i32 1200000, i32 1250000, i32 1300000, i32 1350000, i32 1400000, i32 1450000, i32 1500000, i32 1550000, i32 1600000, i32 1650000, i32 1700000, i32 1750000, i32 1800000, i32 1850000, i32 1900000, i32 1950000, i32 2000000, i32 2050000, i32 2100000, i32 2150000, i32 2200000, i32 2250000, i32 2300000], align 4
@__const.lp872x_get_timestep_usec.lp8725_time_usec = private unnamed_addr constant [4 x i32] [i32 32, i32 64, i32 128, i32 256], align 4
@.str.20 = private unnamed_addr constant [23 x i8] c"failed to read 0x%.2x\0A\00", align 1
@lp8725_lilo_vtbl = internal constant [32 x i32] [i32 800000, i32 850000, i32 900000, i32 950000, i32 1000000, i32 1050000, i32 1100000, i32 1150000, i32 1200000, i32 1250000, i32 1300000, i32 1350000, i32 1400000, i32 1500000, i32 1600000, i32 1700000, i32 1800000, i32 1900000, i32 2000000, i32 2100000, i32 2200000, i32 2300000, i32 2400000, i32 2500000, i32 2600000, i32 2700000, i32 2800000, i32 2850000, i32 2900000, i32 3000000, i32 3100000, i32 3300000], align 4
@lp8725_buck_ops = internal constant %struct.regulator_ops { ptr @regulator_list_voltage_table, ptr null, ptr @regulator_map_voltage_ascend, ptr @lp872x_buck_set_voltage_sel, ptr null, ptr @lp872x_buck_get_voltage_sel, ptr @regulator_set_current_limit_regmap, ptr @regulator_get_current_limit_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr @lp872x_buck_set_mode, ptr @lp872x_buck_get_mode, ptr null, ptr @lp872x_regulator_enable_time, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@lp8725_buck_vtbl = internal constant [32 x i32] [i32 800000, i32 850000, i32 900000, i32 950000, i32 1000000, i32 1050000, i32 1100000, i32 1150000, i32 1200000, i32 1250000, i32 1300000, i32 1350000, i32 1400000, i32 1500000, i32 1600000, i32 1700000, i32 1750000, i32 1800000, i32 1850000, i32 1900000, i32 2000000, i32 2100000, i32 2200000, i32 2300000, i32 2400000, i32 2500000, i32 2600000, i32 2700000, i32 2800000, i32 2850000, i32 2900000, i32 3000000], align 4
@lp8725_buck_uA = internal constant [4 x i32] [i32 460000, i32 780000, i32 1050000, i32 1370000], align 4
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author249, ptr @__UNIQUE_ID_description248, ptr @__UNIQUE_ID_file250, ptr @__UNIQUE_ID_license251, ptr @__exitcall_lp872x_driver_exit, ptr @__initcall__kmod_lp872x__247_953_lp872x_driver_init6, ptr @lp872x_driver_exit], section "llvm.metadata"
@switch.table.lp872x_regulator_enable_time = private unnamed_addr constant [15 x i32] [i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 257, i32 258, i32 259, i32 260, i32 261, i32 262, i32 263, i32 264, i32 10], align 4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @lp872x_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @lp872x_driver) #7
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @lp872x_driver_exit() #0 section ".exit.text" {
  tail call void @i2c_del_driver(ptr noundef nonnull @lp872x_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lp872x_probe(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca %struct.regulator_config, align 4
  %4 = alloca i8, align 1
  %5 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  %6 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 25
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %67, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.i2c_device_id, ptr %1, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #7
  store i8 0, ptr %4, align 1, !annotation !8
  %12 = tail call noalias ptr @devm_kmalloc(ptr noundef %5, i32 noundef 84, i32 noundef 3520) #7
  %13 = icmp eq ptr %12, null
  br i1 %13, label %61, label %14

14:                                               ; preds = %9
  %15 = tail call i32 @of_property_read_variable_u8_array(ptr noundef nonnull %7, ptr noundef nonnull @.str.2, ptr noundef nonnull %12, i32 noundef 1, i32 noundef 0) #7
  %16 = tail call ptr @of_find_property(ptr noundef nonnull %7, ptr noundef nonnull @.str.3, ptr noundef null) #7
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.lp872x_platform_data, ptr %12, i32 0, i32 1
  store i8 1, ptr %19, align 1
  br label %20

20:                                               ; preds = %18, %14
  %21 = tail call noalias ptr @devm_kmalloc(ptr noundef %5, i32 noundef 12, i32 noundef 3520) #7
  %22 = getelementptr inbounds %struct.lp872x_platform_data, ptr %12, i32 0, i32 3
  store ptr %21, ptr %22, align 4
  %23 = icmp eq ptr %21, null
  br i1 %23, label %61, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.lp872x_dvs, ptr %21, i32 0, i32 1
  %26 = tail call i32 @of_property_read_variable_u8_array(ptr noundef nonnull %7, ptr noundef nonnull @.str.4, ptr noundef %25, i32 noundef 1, i32 noundef 0) #7
  %27 = call i32 @of_property_read_variable_u8_array(ptr noundef nonnull %7, ptr noundef nonnull @.str.5, ptr noundef nonnull %4, i32 noundef 1, i32 noundef 0) #7
  %28 = load i8, ptr %4, align 1
  %29 = icmp eq i8 %28, 0
  %30 = select i1 %29, i32 3, i32 7
  %31 = load ptr, ptr %22, align 4
  %32 = getelementptr inbounds %struct.lp872x_dvs, ptr %31, i32 0, i32 2
  store i32 %30, ptr %32, align 4
  %33 = call ptr @of_get_next_child(ptr noundef nonnull %7, ptr noundef null) #7
  %34 = icmp eq ptr %33, null
  br i1 %34, label %62, label %35

35:                                               ; preds = %35, %24
  %36 = phi i32 [ %38, %35 ], [ 0, %24 ]
  %37 = phi ptr [ %39, %35 ], [ %33, %24 ]
  %38 = add i32 %36, 1
  %39 = call ptr @of_get_next_child(ptr noundef nonnull %7, ptr noundef nonnull %37) #7
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %35

41:                                               ; preds = %35
  %42 = icmp eq i32 %38, 0
  br i1 %42, label %62, label %43

43:                                               ; preds = %41
  switch i32 %11, label %62 [
    i32 0, label %45
    i32 1, label %44
  ]

44:                                               ; preds = %43
  br label %45

45:                                               ; preds = %44, %43
  %46 = phi ptr [ @lp8725_matches, %44 ], [ @lp8720_matches, %43 ]
  %47 = phi i32 [ 9, %44 ], [ 6, %43 ]
  %48 = call i32 @of_regulator_match(ptr noundef %5, ptr noundef nonnull %7, ptr noundef nonnull %46, i32 noundef %47) #7
  %49 = icmp slt i32 %48, 1
  br i1 %49, label %62, label %50

50:                                               ; preds = %50, %45
  %51 = phi i32 [ %59, %50 ], [ 0, %45 ]
  %52 = getelementptr %struct.of_regulator_match, ptr %46, i32 %51, i32 1
  %53 = load ptr, ptr %52, align 4
  %54 = ptrtoint ptr %53 to i32
  %55 = getelementptr %struct.lp872x_platform_data, ptr %12, i32 0, i32 2, i32 %51
  store i32 %54, ptr %55, align 4
  %56 = getelementptr %struct.of_regulator_match, ptr %46, i32 %51, i32 2
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr %struct.lp872x_platform_data, ptr %12, i32 0, i32 2, i32 %51, i32 1
  store ptr %57, ptr %58, align 4
  %59 = add nuw nsw i32 %51, 1
  %60 = icmp eq i32 %59, %47
  br i1 %60, label %62, label %50

61:                                               ; preds = %20, %9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #7
  br label %64

62:                                               ; preds = %50, %45, %43, %41, %24
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #7
  %63 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %63, label %64, label %70

64:                                               ; preds = %62, %61
  %65 = phi ptr [ inttoptr (i32 -12 to ptr), %61 ], [ %12, %62 ]
  %66 = ptrtoint ptr %65 to i32
  br label %215

67:                                               ; preds = %2
  %68 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 7
  %69 = load ptr, ptr %68, align 4
  br label %70

70:                                               ; preds = %67, %62
  %71 = phi ptr [ %12, %62 ], [ %69, %67 ]
  %72 = call noalias ptr @devm_kmalloc(ptr noundef %5, i32 noundef 24, i32 noundef 3520) #7
  %73 = icmp eq ptr %72, null
  br i1 %73, label %215, label %74

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.i2c_device_id, ptr %1, i32 0, i32 1
  %76 = load i32, ptr %75, align 4
  %77 = getelementptr [2 x i32], ptr @lp872x_probe.lp872x_num_regulators, i32 0, i32 %76
  %78 = load i32, ptr %77, align 4
  %79 = getelementptr inbounds %struct.lp872x, ptr %72, i32 0, i32 4
  store i32 %78, ptr %79, align 4
  %80 = call ptr @__devm_regmap_init_i2c(ptr noundef %0, ptr noundef nonnull @lp872x_regmap_config, ptr noundef null, ptr noundef null) #7
  store ptr %80, ptr %72, align 4
  %81 = icmp ugt ptr %80, inttoptr (i32 -4096 to ptr)
  br i1 %81, label %82, label %84

82:                                               ; preds = %74
  %83 = ptrtoint ptr %80 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.1, i32 noundef %83) #8
  br label %215

84:                                               ; preds = %74
  %85 = getelementptr inbounds %struct.lp872x, ptr %72, i32 0, i32 1
  store ptr %5, ptr %85, align 4
  %86 = getelementptr inbounds %struct.lp872x, ptr %72, i32 0, i32 3
  store ptr %71, ptr %86, align 4
  %87 = load i32, ptr %75, align 4
  %88 = getelementptr inbounds %struct.lp872x, ptr %72, i32 0, i32 2
  store i32 %87, ptr %88, align 4
  %89 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  store ptr %72, ptr %89, align 8
  %90 = icmp eq ptr %71, null
  br i1 %90, label %215, label %91

91:                                               ; preds = %84
  %92 = getelementptr inbounds %struct.lp872x_platform_data, ptr %71, i32 0, i32 4
  %93 = load ptr, ptr %92, align 4
  %94 = icmp eq ptr %93, null
  br i1 %94, label %108, label %95

95:                                               ; preds = %91
  %96 = call ptr @devm_gpiod_get_optional(ptr noundef %5, ptr noundef nonnull @.str.16, i32 noundef 7) #7
  %97 = load ptr, ptr %86, align 4
  %98 = getelementptr inbounds %struct.lp872x_platform_data, ptr %97, i32 0, i32 4
  store ptr %96, ptr %98, align 4
  %99 = load ptr, ptr %86, align 4
  %100 = getelementptr inbounds %struct.lp872x_platform_data, ptr %99, i32 0, i32 4
  %101 = load ptr, ptr %100, align 4
  %102 = icmp ugt ptr %101, inttoptr (i32 -4096 to ptr)
  br i1 %102, label %110, label %103

103:                                              ; preds = %95
  %104 = load i32, ptr %88, align 4
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %103
  call void @usleep_range_state(i32 noundef 200, i32 noundef 300, i32 noundef 2) #7
  br label %108

107:                                              ; preds = %103
  call void @usleep_range_state(i32 noundef 30000, i32 noundef 45000, i32 noundef 2) #7
  br label %108

108:                                              ; preds = %107, %106, %91
  %109 = load ptr, ptr %86, align 4
  br label %118

110:                                              ; preds = %95
  %111 = load ptr, ptr %85, align 4
  %112 = ptrtoint ptr %101 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %111, ptr noundef nonnull @.str.17, i32 noundef %112) #8
  %113 = load ptr, ptr %86, align 4
  %114 = getelementptr inbounds %struct.lp872x_platform_data, ptr %113, i32 0, i32 4
  %115 = load ptr, ptr %114, align 4
  %116 = ptrtoint ptr %115 to i32
  %117 = icmp eq ptr %115, null
  br i1 %117, label %118, label %215

118:                                              ; preds = %110, %108
  %119 = phi ptr [ %109, %108 ], [ %113, %110 ]
  %120 = icmp eq ptr %119, null
  br i1 %120, label %155, label %121

121:                                              ; preds = %118
  %122 = getelementptr inbounds %struct.lp872x_platform_data, ptr %119, i32 0, i32 1
  %123 = load i8, ptr %122, align 1, !range !9
  %124 = icmp eq i8 %123, 0
  br i1 %124, label %134, label %125

125:                                              ; preds = %121
  %126 = load i8, ptr %119, align 4
  %127 = load ptr, ptr %72, align 4
  %128 = zext i8 %126 to i32
  %129 = call i32 @regmap_write(ptr noundef %127, i32 noundef 0, i32 noundef %128) #7
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %215

131:                                              ; preds = %125
  %132 = load ptr, ptr %86, align 4
  %133 = icmp eq ptr %132, null
  br i1 %133, label %155, label %134

134:                                              ; preds = %131, %121
  %135 = phi ptr [ %132, %131 ], [ %119, %121 ]
  %136 = getelementptr inbounds %struct.lp872x_platform_data, ptr %135, i32 0, i32 3
  %137 = load ptr, ptr %136, align 4
  %138 = icmp eq ptr %137, null
  br i1 %138, label %155, label %139

139:                                              ; preds = %134
  %140 = load ptr, ptr %137, align 4
  %141 = icmp eq ptr %140, null
  br i1 %141, label %155, label %142

142:                                              ; preds = %139
  %143 = getelementptr inbounds %struct.lp872x_dvs, ptr %137, i32 0, i32 2
  %144 = load i32, ptr %143, align 4
  %145 = load ptr, ptr %85, align 4
  %146 = call ptr @devm_gpiod_get_optional(ptr noundef %145, ptr noundef nonnull @.str.18, i32 noundef %144) #7
  store ptr %146, ptr %137, align 4
  %147 = icmp ugt ptr %146, inttoptr (i32 -4096 to ptr)
  br i1 %147, label %148, label %153

148:                                              ; preds = %142
  %149 = load ptr, ptr %85, align 4
  %150 = ptrtoint ptr %146 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %149, ptr noundef nonnull @.str.17, i32 noundef %150) #8
  %151 = load ptr, ptr %137, align 4
  %152 = ptrtoint ptr %151 to i32
  br label %165

153:                                              ; preds = %142
  %154 = getelementptr inbounds %struct.lp872x, ptr %72, i32 0, i32 5
  store i32 %144, ptr %154, align 4
  br label %168

155:                                              ; preds = %139, %134, %131, %118
  %156 = load i32, ptr %88, align 4
  %157 = getelementptr [2 x i8], ptr @__const.lp872x_init_dvs.mask, i32 0, i32 %156
  %158 = load i8, ptr %157, align 1
  %159 = zext i8 %158 to i32
  %160 = getelementptr [2 x i8], ptr @__const.lp872x_init_dvs.default_dvs_mode, i32 0, i32 %156
  %161 = load i8, ptr %160, align 1
  %162 = load ptr, ptr %72, align 4
  %163 = zext i8 %161 to i32
  %164 = call i32 @regmap_update_bits_base(ptr noundef %162, i32 noundef 0, i32 noundef %159, i32 noundef %163, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %165

165:                                              ; preds = %155, %148
  %166 = phi i32 [ %152, %148 ], [ %164, %155 ]
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %168, label %215

168:                                              ; preds = %165, %153
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #7
  %169 = getelementptr inbounds i8, ptr %3, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %169, i8 0, i32 20, i1 false) #7
  %170 = load i32, ptr %79, align 4
  %171 = icmp sgt i32 %170, 0
  br i1 %171, label %172, label %213

172:                                              ; preds = %168
  %173 = getelementptr inbounds %struct.regulator_config, ptr %3, i32 0, i32 2
  %174 = getelementptr inbounds %struct.regulator_config, ptr %3, i32 0, i32 4
  br label %179

175:                                              ; preds = %205
  %176 = add nuw nsw i32 %181, 1
  %177 = load i32, ptr %79, align 4
  %178 = icmp slt i32 %176, %177
  br i1 %178, label %179, label %213

179:                                              ; preds = %175, %172
  %180 = phi i32 [ %170, %172 ], [ %177, %175 ]
  %181 = phi i32 [ 0, %172 ], [ %176, %175 ]
  %182 = load i32, ptr %88, align 4
  %183 = icmp eq i32 %182, 0
  %184 = getelementptr [6 x %struct.regulator_desc], ptr @lp8720_regulator_desc, i32 0, i32 %181
  %185 = getelementptr [9 x %struct.regulator_desc], ptr @lp8725_regulator_desc, i32 0, i32 %181
  %186 = select i1 %183, ptr %184, ptr %185
  %187 = load ptr, ptr %85, align 4
  store ptr %187, ptr %3, align 4
  %188 = getelementptr inbounds %struct.regulator_desc, ptr %186, i32 0, i32 6
  %189 = load i32, ptr %188, align 4
  %190 = load ptr, ptr %86, align 4
  %191 = icmp ne ptr %190, null
  %192 = icmp sgt i32 %180, 0
  %193 = select i1 %191, i1 %192, i1 false
  br i1 %193, label %194, label %205

194:                                              ; preds = %202, %179
  %195 = phi i32 [ %203, %202 ], [ 0, %179 ]
  %196 = getelementptr %struct.lp872x_platform_data, ptr %190, i32 0, i32 2, i32 %195
  %197 = load i32, ptr %196, align 4
  %198 = icmp eq i32 %197, %189
  br i1 %198, label %199, label %202

199:                                              ; preds = %194
  %200 = getelementptr %struct.lp872x_platform_data, ptr %190, i32 0, i32 2, i32 %195, i32 1
  %201 = load ptr, ptr %200, align 4
  br label %205

202:                                              ; preds = %194
  %203 = add nuw nsw i32 %195, 1
  %204 = icmp eq i32 %203, %180
  br i1 %204, label %205, label %194

205:                                              ; preds = %202, %199, %179
  %206 = phi ptr [ %201, %199 ], [ null, %179 ], [ null, %202 ]
  store ptr %206, ptr %169, align 4
  store ptr %72, ptr %173, align 4
  %207 = load ptr, ptr %72, align 4
  store ptr %207, ptr %174, align 4
  %208 = call ptr @devm_regulator_register(ptr noundef %187, ptr noundef %186, ptr noundef nonnull %3) #7
  %209 = icmp ugt ptr %208, inttoptr (i32 -4096 to ptr)
  br i1 %209, label %210, label %175

210:                                              ; preds = %205
  %211 = load ptr, ptr %85, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %211, ptr noundef nonnull @.str.19) #8
  %212 = ptrtoint ptr %208 to i32
  br label %213

213:                                              ; preds = %210, %175, %168
  %214 = phi i32 [ %212, %210 ], [ 0, %168 ], [ 0, %175 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #7
  br label %215

215:                                              ; preds = %213, %165, %125, %110, %84, %82, %70, %64
  %216 = phi i32 [ %66, %64 ], [ %83, %82 ], [ %214, %213 ], [ -12, %70 ], [ %116, %110 ], [ %166, %165 ], [ -22, %84 ], [ %129, %125 ]
  ret i32 %216
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_regulator_match(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u8_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_list_voltage_table(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_map_voltage_ascend(ptr noundef, i32 noundef, i32 noundef) #1

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

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lp872x_regulator_enable_time(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [2 x i32], align 8
  %5 = alloca [4 x i32], align 4
  %6 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #7
  %7 = tail call i32 @rdev_get_id(ptr noundef %0) #7
  %8 = getelementptr inbounds %struct.lp872x, ptr %6, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #7
  store i64 214748364825, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #7
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) @__const.lp872x_get_timestep_usec.lp8725_time_usec, i32 16, i1 false) #7
  switch i32 %9, label %29 [
    i32 0, label %11
    i32 1, label %10
  ]

10:                                               ; preds = %1
  br label %11

11:                                               ; preds = %10, %1
  %12 = phi i8 [ -64, %10 ], [ 1, %1 ]
  %13 = phi i8 [ 6, %10 ], [ 0, %1 ]
  %14 = phi ptr [ %5, %10 ], [ %4, %1 ]
  %15 = phi i32 [ 4, %10 ], [ 2, %1 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  store i32 0, ptr %3, align 4, !annotation !8
  %16 = load ptr, ptr %6, align 4
  %17 = call i32 @regmap_read(ptr noundef %16, i32 noundef 0, ptr noundef nonnull %3) #7
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %11
  %20 = getelementptr inbounds %struct.lp872x, ptr %6, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.20, i32 noundef 0) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  br label %29

22:                                               ; preds = %11
  %23 = load i32, ptr %3, align 4
  %24 = trunc i32 %23 to i8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  %25 = and i8 %12, %24
  %26 = lshr i8 %25, %13
  %27 = zext i8 %26 to i32
  %28 = icmp ugt i32 %15, %27
  br i1 %28, label %31, label %29

29:                                               ; preds = %22, %19, %1
  %30 = phi i32 [ -22, %22 ], [ %17, %19 ], [ -22, %1 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #7
  br label %55

31:                                               ; preds = %22
  %32 = getelementptr i32, ptr %14, i32 %27
  %33 = load i32, ptr %32, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #7
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %55, label %35

35:                                               ; preds = %31
  %36 = icmp ult i32 %7, 15
  br i1 %36, label %37, label %55

37:                                               ; preds = %35
  %38 = getelementptr inbounds [15 x i32], ptr @switch.table.lp872x_regulator_enable_time, i32 0, i32 %7
  %39 = load i32, ptr %38, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  store i32 0, ptr %2, align 4, !annotation !8
  %40 = load ptr, ptr %6, align 4
  %41 = and i32 %39, 255
  %42 = call i32 @regmap_read(ptr noundef %40, i32 noundef %41, ptr noundef nonnull %2) #7
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %37
  %45 = getelementptr inbounds %struct.lp872x, ptr %6, i32 0, i32 1
  %46 = load ptr, ptr %45, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %46, ptr noundef nonnull @.str.20, i32 noundef %41) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  br label %55

47:                                               ; preds = %37
  %48 = load i32, ptr %2, align 4
  %49 = trunc i32 %48 to i8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  %50 = lshr i8 %49, 5
  %51 = zext i8 %50 to i32
  %52 = icmp eq i8 %50, 7
  %53 = mul i32 %33, %51
  %54 = select i1 %52, i32 0, i32 %53
  br label %55

55:                                               ; preds = %47, %44, %35, %31, %29
  %56 = phi i32 [ %54, %47 ], [ %33, %31 ], [ -22, %35 ], [ %42, %44 ], [ %30, %29 ]
  ret i32 %56
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdev_get_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lp872x_buck_set_voltage_sel(ptr noundef %0, i32 noundef %1) #2 {
  %3 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #7
  %4 = tail call i32 @rdev_get_id(ptr noundef %0) #7
  %5 = getelementptr inbounds %struct.lp872x, ptr %3, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %21, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.lp872x_platform_data, ptr %6, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %21, label %12

12:                                               ; preds = %8
  %13 = load ptr, ptr %10, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.lp872x_dvs, ptr %10, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 0
  %19 = select i1 %18, i32 7, i32 3
  tail call void @gpiod_set_value(ptr noundef nonnull %13, i32 noundef %19) #7
  %20 = getelementptr inbounds %struct.lp872x, ptr %3, i32 0, i32 5
  store i32 %19, ptr %20, align 4
  br label %21

21:                                               ; preds = %15, %12, %8, %2
  %22 = tail call fastcc zeroext i8 @lp872x_select_buck_vout_addr(ptr noundef %3, i32 noundef %4), !range !10
  %23 = add nsw i8 %22, -6
  %24 = icmp ult i8 %23, 6
  br i1 %24, label %25, label %30

25:                                               ; preds = %21
  %26 = load ptr, ptr %3, align 4
  %27 = zext i8 %22 to i32
  %28 = and i32 %1, 255
  %29 = tail call i32 @regmap_update_bits_base(ptr noundef %26, i32 noundef %27, i32 noundef 31, i32 noundef %28, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %30

30:                                               ; preds = %25, %21
  %31 = phi i32 [ %29, %25 ], [ -22, %21 ]
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lp872x_buck_get_voltage_sel(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #7
  %4 = tail call i32 @rdev_get_id(ptr noundef %0) #7
  %5 = tail call fastcc zeroext i8 @lp872x_select_buck_vout_addr(ptr noundef %3, i32 noundef %4), !range !10
  %6 = add nsw i8 %5, -6
  %7 = icmp ult i8 %6, 6
  br i1 %7, label %8, label %19

8:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  store i32 0, ptr %2, align 4, !annotation !8
  %9 = load ptr, ptr %3, align 4
  %10 = zext i8 %5 to i32
  %11 = call i32 @regmap_read(ptr noundef %9, i32 noundef %10, ptr noundef nonnull %2) #7
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.lp872x, ptr %3, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.20, i32 noundef %10) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  br label %19

16:                                               ; preds = %8
  %17 = load i32, ptr %2, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  %18 = and i32 %17, 31
  br label %19

19:                                               ; preds = %16, %13, %1
  %20 = phi i32 [ %18, %16 ], [ -22, %1 ], [ %11, %13 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lp872x_buck_set_mode(ptr noundef %0, i32 noundef %1) #2 {
  %3 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #7
  %4 = tail call i32 @rdev_get_id(ptr noundef %0) #7
  switch i32 %4, label %18 [
    i32 5, label %7
    i32 13, label %5
    i32 14, label %6
  ]

5:                                                ; preds = %2
  br label %7

6:                                                ; preds = %2
  br label %7

7:                                                ; preds = %6, %5, %2
  %8 = phi i32 [ 12, %6 ], [ 12, %5 ], [ 7, %2 ]
  %9 = phi i32 [ 32, %6 ], [ 2, %5 ], [ 32, %2 ]
  %10 = phi i8 [ 5, %6 ], [ 1, %5 ], [ 5, %2 ]
  switch i32 %1, label %18 [
    i32 1, label %11
    i32 2, label %14
  ]

11:                                               ; preds = %7
  %12 = shl nuw nsw i8 1, %10
  %13 = zext i8 %12 to i32
  br label %14

14:                                               ; preds = %11, %7
  %15 = phi i32 [ %13, %11 ], [ 0, %7 ]
  %16 = load ptr, ptr %3, align 4
  %17 = tail call i32 @regmap_update_bits_base(ptr noundef %16, i32 noundef %8, i32 noundef %9, i32 noundef %15, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %18

18:                                               ; preds = %14, %7, %2
  %19 = phi i32 [ %17, %14 ], [ -22, %2 ], [ -22, %7 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lp872x_buck_get_mode(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #7
  %4 = tail call i32 @rdev_get_id(ptr noundef %0) #7
  switch i32 %4, label %21 [
    i32 5, label %7
    i32 13, label %5
    i32 14, label %6
  ]

5:                                                ; preds = %1
  br label %7

6:                                                ; preds = %1
  br label %7

7:                                                ; preds = %6, %5, %1
  %8 = phi i32 [ 12, %6 ], [ 12, %5 ], [ 7, %1 ]
  %9 = phi i32 [ 32, %6 ], [ 2, %5 ], [ 32, %1 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  store i32 0, ptr %2, align 4, !annotation !8
  %10 = load ptr, ptr %3, align 4
  %11 = call i32 @regmap_read(ptr noundef %10, i32 noundef %8, ptr noundef nonnull %2) #7
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.lp872x, ptr %3, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.20, i32 noundef %8) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  br label %21

16:                                               ; preds = %7
  %17 = load i32, ptr %2, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  %18 = and i32 %9, %17
  %19 = icmp eq i32 %18, 0
  %20 = select i1 %19, i32 2, i32 1
  br label %21

21:                                               ; preds = %16, %13, %1
  %22 = phi i32 [ %20, %16 ], [ -22, %1 ], [ %11, %13 ]
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i8 @lp872x_select_buck_vout_addr(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #2 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  store i32 0, ptr %4, align 4, !annotation !8
  %5 = load ptr, ptr %0, align 4
  %6 = call i32 @regmap_read(ptr noundef %5, i32 noundef 0, ptr noundef nonnull %4) #7
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.lp872x, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.20, i32 noundef 0) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  br label %46

11:                                               ; preds = %2
  %12 = load i32, ptr %4, align 4
  %13 = trunc i32 %12 to i8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  switch i32 %1, label %46 [
    i32 5, label %14
    i32 13, label %34
    i32 14, label %42
  ]

14:                                               ; preds = %11
  %15 = and i8 %13, 4
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.lp872x, ptr %0, i32 0, i32 5
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 7
  %21 = select i1 %20, i8 6, i8 7
  br label %46

22:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  store i32 0, ptr %3, align 4, !annotation !8
  %23 = load ptr, ptr %0, align 4
  %24 = call i32 @regmap_read(ptr noundef %23, i32 noundef 8, ptr noundef nonnull %3) #7
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.lp872x, ptr %0, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.20, i32 noundef 8) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  br label %46

29:                                               ; preds = %22
  %30 = load i32, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  %31 = and i32 %30, 128
  %32 = icmp eq i32 %31, 0
  %33 = select i1 %32, i8 7, i8 6
  br label %46

34:                                               ; preds = %11
  %35 = and i8 %13, 4
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.lp872x, ptr %0, i32 0, i32 5
  %39 = load i32, ptr %38, align 4
  %40 = icmp eq i32 %39, 7
  %41 = select i1 %40, i8 8, i8 9
  br label %46

42:                                               ; preds = %11
  %43 = and i8 %13, 8
  %44 = icmp eq i8 %43, 0
  %45 = select i1 %44, i8 11, i8 10
  br label %46

46:                                               ; preds = %42, %37, %34, %29, %26, %17, %11, %8
  %47 = phi i8 [ 0, %8 ], [ 0, %26 ], [ 0, %11 ], [ %45, %42 ], [ %41, %37 ], [ %21, %17 ], [ %33, %29 ], [ 8, %34 ]
  ret i8 %47
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_current_limit_regmap(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_current_limit_regmap(ptr noundef) #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
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
!9 = !{i8 0, i8 2}
!10 = !{i8 0, i8 12}
