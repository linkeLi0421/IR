; ModuleID = '/llk/IR/drivers/regulator/tps65218-regulator.c_pt.bc'
source_filename = "../drivers/regulator/tps65218-regulator.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device_id = type { [20 x i8], i32 }
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
%struct.tps65218 = type { ptr, i32, i8, %struct.mutex, i32, i32, ptr, [9 x %struct.regulator_desc], ptr, ptr }

@__initcall__kmod_tps65218_regulator__247_365_tps65218_regulator_driver_init6 = internal global ptr @tps65218_regulator_driver_init, section ".initcall6.init", align 4
@tps65218_regulator_driver = internal global %struct.platform_driver { ptr @tps65218_regulator_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @tps65218_regulator_id_table, i8 0 }, align 4
@__exitcall_tps65218_regulator_driver_exit = internal global ptr @tps65218_regulator_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author248 = internal constant [55 x i8] c"tps65218_regulator.author=J Keerthy <j-keerthy@ti.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description249 = internal constant [65 x i8] c"tps65218_regulator.description=TPS65218 voltage regulator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_alias250 = internal constant [48 x i8] c"tps65218_regulator.alias=platform:tps65218-pmic\00", section ".modinfo", align 1
@__UNIQUE_ID_file251 = internal constant [61 x i8] c"tps65218_regulator.file=drivers/regulator/tps65218-regulator\00", section ".modinfo", align 1
@__UNIQUE_ID_license252 = internal constant [34 x i8] c"tps65218_regulator.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [14 x i8] c"tps65218-pmic\00", align 1
@tps65218_regulator_id_table = internal constant [2 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"tps65218-regulator\00\00", i32 0 }, %struct.platform_device_id zeroinitializer], align 4
@regulators = internal constant [9 x %struct.regulator_desc] [%struct.regulator_desc { ptr @.str.2, ptr null, ptr @.str.3, i8 0, ptr null, ptr null, i32 0, i8 0, i32 64, i32 0, ptr @tps65218_dcdc12_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 4000, i32 0, ptr @dcdc1_dcdc2_ranges, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 22, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 17, i32 1, i32 0, i32 0, i8 0, i32 34, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.4, ptr null, ptr @.str.5, i8 0, ptr null, ptr null, i32 1, i8 0, i32 64, i32 0, ptr @tps65218_dcdc12_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 4000, i32 0, ptr @dcdc1_dcdc2_ranges, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 23, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 17, i32 2, i32 0, i32 0, i8 0, i32 34, i32 240, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.6, ptr null, ptr @.str.7, i8 0, ptr null, ptr null, i32 2, i8 0, i32 64, i32 0, ptr @tps65218_ldo1_dcdc34_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @ldo1_dcdc3_ranges, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 24, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 17, i32 4, i32 0, i32 0, i8 0, i32 35, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.8, ptr null, ptr @.str.9, i8 0, ptr null, ptr null, i32 3, i8 0, i32 53, i32 0, ptr @tps65218_ldo1_dcdc34_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @dcdc4_ranges, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 25, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 17, i32 8, i32 0, i32 0, i8 0, i32 35, i32 240, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.10, ptr null, ptr @.str.11, i8 0, ptr null, ptr null, i32 4, i8 0, i32 1, i32 0, ptr @tps65218_dcdc56_pmic_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 1000000, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 17, i32 16, i32 0, i32 0, i8 0, i32 36, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.12, ptr null, ptr @.str.13, i8 0, ptr null, ptr null, i32 5, i8 0, i32 1, i32 0, ptr @tps65218_dcdc56_pmic_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 1800000, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 17, i32 32, i32 0, i32 0, i8 0, i32 36, i32 240, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.14, ptr null, ptr @.str.15, i8 0, ptr null, ptr null, i32 6, i8 0, i32 64, i32 0, ptr @tps65218_ldo1_dcdc34_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @ldo1_dcdc3_ranges, ptr null, i32 2, ptr null, ptr null, i32 0, i32 0, i32 27, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 18, i32 1, i32 0, i32 0, i8 0, i32 37, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.16, ptr null, ptr @.str.17, i8 0, ptr null, ptr null, i32 7, i8 0, i32 0, i32 4, ptr @tps65218_ls23_ops, i32 0, i32 1, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr @ls3_currents, i32 0, i32 0, i32 0, i32 0, i32 0, i32 20, i32 3, i32 0, i32 0, i32 18, i32 4, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.18, ptr null, ptr @.str.19, i8 0, ptr null, ptr null, i32 8, i8 0, i32 0, i32 4, ptr @tps65218_ls23_ops, i32 0, i32 1, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr @ls3_currents, i32 0, i32 0, i32 0, i32 0, i32 0, i32 20, i32 12, i32 0, i32 0, i32 18, i32 8, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }], align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"failed to register %s regulator\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"DCDC1\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"regulator-dcdc1\00", align 1
@tps65218_dcdc12_ops = internal constant %struct.regulator_ops { ptr @regulator_list_voltage_linear_range, ptr null, ptr @regulator_map_voltage_linear_range, ptr @tps65218_pmic_set_voltage_sel, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tps65218_pmic_enable, ptr @tps65218_pmic_disable, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_set_voltage_time_sel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tps65218_pmic_set_suspend_enable, ptr @tps65218_pmic_set_suspend_disable, ptr null, ptr null, ptr null }, align 4
@dcdc1_dcdc2_ranges = internal constant [2 x %struct.linear_range] [%struct.linear_range { i32 850000, i32 0, i32 50, i32 10000 }, %struct.linear_range { i32 1375000, i32 51, i32 63, i32 25000 }], align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"DCDC2\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"regulator-dcdc2\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"DCDC3\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"regulator-dcdc3\00", align 1
@tps65218_ldo1_dcdc34_ops = internal constant %struct.regulator_ops { ptr @regulator_list_voltage_linear_range, ptr null, ptr @regulator_map_voltage_linear_range, ptr @tps65218_pmic_set_voltage_sel, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tps65218_pmic_enable, ptr @tps65218_pmic_disable, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tps65218_pmic_set_suspend_enable, ptr @tps65218_pmic_set_suspend_disable, ptr null, ptr null, ptr null }, align 4
@ldo1_dcdc3_ranges = internal constant [2 x %struct.linear_range] [%struct.linear_range { i32 900000, i32 0, i32 26, i32 25000 }, %struct.linear_range { i32 1600000, i32 27, i32 63, i32 50000 }], align 4
@.str.8 = private unnamed_addr constant [6 x i8] c"DCDC4\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"regulator-dcdc4\00", align 1
@dcdc4_ranges = internal constant [2 x %struct.linear_range] [%struct.linear_range { i32 1175000, i32 0, i32 15, i32 25000 }, %struct.linear_range { i32 1600000, i32 16, i32 52, i32 50000 }], align 4
@.str.10 = private unnamed_addr constant [6 x i8] c"DCDC5\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"regulator-dcdc5\00", align 1
@tps65218_dcdc56_pmic_ops = internal constant %struct.regulator_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tps65218_pmic_enable, ptr @tps65218_pmic_disable, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tps65218_pmic_set_suspend_enable, ptr @tps65218_pmic_set_suspend_disable, ptr null, ptr null, ptr null }, align 4
@.str.12 = private unnamed_addr constant [6 x i8] c"DCDC6\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"regulator-dcdc6\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"LDO1\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"regulator-ldo1\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"LS2\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"regulator-ls2\00", align 1
@tps65218_ls23_ops = internal constant %struct.regulator_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tps65218_pmic_set_current_limit, ptr @regulator_get_current_limit_regmap, ptr @tps65218_pmic_set_input_current_lim, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tps65218_pmic_enable, ptr @tps65218_pmic_disable, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@ls3_currents = internal constant [4 x i32] [i32 100000, i32 200000, i32 500000, i32 1000000], align 4
@.str.18 = private unnamed_addr constant [4 x i8] c"LS3\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"regulator-ls3\00", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_alias250, ptr @__UNIQUE_ID_author248, ptr @__UNIQUE_ID_description249, ptr @__UNIQUE_ID_file251, ptr @__UNIQUE_ID_license252, ptr @__exitcall_tps65218_regulator_driver_exit, ptr @__initcall__kmod_tps65218_regulator__247_365_tps65218_regulator_driver_init6, ptr @tps65218_regulator_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @tps65218_regulator_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @tps65218_regulator_driver, ptr noundef null) #7
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @tps65218_regulator_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @tps65218_regulator_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tps65218_regulator_probe(ptr noundef %0) #2 {
  %2 = alloca %struct.regulator_config, align 4
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #7
  %9 = getelementptr inbounds i8, ptr %2, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %9, i8 0, i32 20, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  store i32 0, ptr %3, align 4, !annotation !8
  store ptr %4, ptr %2, align 4
  %10 = load ptr, ptr %8, align 4
  %11 = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 25
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  store ptr %12, ptr %13, align 8
  %14 = getelementptr inbounds %struct.regulator_config, ptr %2, i32 0, i32 2
  store ptr %8, ptr %14, align 4
  %15 = getelementptr inbounds %struct.tps65218, ptr %8, i32 0, i32 8
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.regulator_config, ptr %2, i32 0, i32 4
  store ptr %16, ptr %17, align 4
  %18 = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef 9, i32 noundef 3520) #7
  %19 = getelementptr inbounds %struct.tps65218, ptr %8, i32 0, i32 9
  store ptr %18, ptr %19, align 4
  %20 = icmp eq ptr %18, null
  br i1 %20, label %46, label %21

21:                                               ; preds = %36, %1
  %22 = phi i32 [ %44, %36 ], [ 0, %1 ]
  %23 = getelementptr [9 x %struct.regulator_desc], ptr @regulators, i32 0, i32 %22
  %24 = call ptr @devm_regulator_register(ptr noundef %4, ptr noundef %23, ptr noundef nonnull %2) #7
  %25 = icmp ugt ptr %24, inttoptr (i32 -4096 to ptr)
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = load ptr, ptr %8, align 4
  %28 = load ptr, ptr %0, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.1, ptr noundef %28) #8
  %29 = ptrtoint ptr %24 to i32
  br label %46

30:                                               ; preds = %21
  %31 = load ptr, ptr %15, align 4
  %32 = getelementptr [9 x %struct.regulator_desc], ptr @regulators, i32 0, i32 %22, i32 39
  %33 = load i32, ptr %32, align 4
  %34 = call i32 @regmap_read(ptr noundef %31, i32 noundef %33, ptr noundef nonnull %3) #7
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %30
  %37 = load i32, ptr %3, align 4
  %38 = getelementptr [9 x %struct.regulator_desc], ptr @regulators, i32 0, i32 %22, i32 40
  %39 = load i32, ptr %38, align 4
  %40 = and i32 %39, %37
  %41 = trunc i32 %40 to i8
  %42 = load ptr, ptr %19, align 4
  %43 = getelementptr i8, ptr %42, i32 %22
  store i8 %41, ptr %43, align 1
  %44 = add nuw nsw i32 %22, 1
  %45 = icmp eq i32 %44, 9
  br i1 %45, label %46, label %21

46:                                               ; preds = %36, %30, %26, %1
  %47 = phi i32 [ %29, %26 ], [ -12, %1 ], [ 0, %36 ], [ %34, %30 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #7
  ret i32 %47
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_list_voltage_linear_range(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_map_voltage_linear_range(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tps65218_pmic_set_voltage_sel(ptr noundef %0, i32 noundef %1) #2 {
  %3 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #7
  %4 = tail call i32 @rdev_get_id(ptr noundef %0) #7
  %5 = load ptr, ptr %0, align 8
  %6 = getelementptr inbounds %struct.regulator_desc, ptr %5, i32 0, i32 27
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.regulator_desc, ptr %5, i32 0, i32 28
  %9 = load i32, ptr %8, align 4
  %10 = tail call i32 @tps65218_set_bits(ptr noundef %3, i32 noundef %7, i32 noundef %9, i32 noundef %1, i32 noundef 1) #7
  %11 = icmp ult i32 %4, 2
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = tail call i32 @tps65218_set_bits(ptr noundef %3, i32 noundef 26, i32 noundef 128, i32 noundef 128, i32 noundef 1) #7
  br label %14

14:                                               ; preds = %12, %2
  %15 = phi i32 [ %10, %2 ], [ %13, %12 ]
  ret i32 %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage_sel_regmap(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tps65218_pmic_enable(ptr noundef %0) #2 {
  %2 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #7
  %3 = tail call i32 @rdev_get_id(ptr noundef %0) #7
  %4 = icmp ugt i32 %3, 6
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8
  %7 = getelementptr inbounds %struct.regulator_desc, ptr %6, i32 0, i32 34
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.regulator_desc, ptr %6, i32 0, i32 35
  %10 = load i32, ptr %9, align 4
  %11 = tail call i32 @tps65218_set_bits(ptr noundef %2, i32 noundef %8, i32 noundef %10, i32 noundef %10, i32 noundef 1) #7
  br label %12

12:                                               ; preds = %5, %1
  %13 = phi i32 [ %11, %5 ], [ -22, %1 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tps65218_pmic_disable(ptr noundef %0) #2 {
  %2 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #7
  %3 = tail call i32 @rdev_get_id(ptr noundef %0) #7
  %4 = icmp ugt i32 %3, 6
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8
  %7 = getelementptr inbounds %struct.regulator_desc, ptr %6, i32 0, i32 34
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.regulator_desc, ptr %6, i32 0, i32 35
  %10 = load i32, ptr %9, align 4
  %11 = tail call i32 @tps65218_clear_bits(ptr noundef %2, i32 noundef %8, i32 noundef %10, i32 noundef 1) #7
  br label %12

12:                                               ; preds = %5, %1
  %13 = phi i32 [ %11, %5 ], [ -22, %1 ]
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_is_enabled_regmap(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_voltage_time_sel(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tps65218_pmic_set_suspend_enable(ptr noundef %0) #2 {
  %2 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #7
  %3 = tail call i32 @rdev_get_id(ptr noundef %0) #7
  %4 = icmp ugt i32 %3, 6
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8
  %7 = getelementptr inbounds %struct.regulator_desc, ptr %6, i32 0, i32 39
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.regulator_desc, ptr %6, i32 0, i32 40
  %10 = load i32, ptr %9, align 4
  %11 = tail call i32 @tps65218_clear_bits(ptr noundef %2, i32 noundef %8, i32 noundef %10, i32 noundef 1) #7
  br label %12

12:                                               ; preds = %5, %1
  %13 = phi i32 [ %11, %5 ], [ -22, %1 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tps65218_pmic_set_suspend_disable(ptr noundef %0) #2 {
  %2 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #7
  %3 = tail call i32 @rdev_get_id(ptr noundef %0) #7
  %4 = icmp ugt i32 %3, 6
  br i1 %4, label %36, label %5

5:                                                ; preds = %1
  %6 = icmp eq i32 %3, 2
  br i1 %6, label %7, label %17

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.tps65218, ptr %2, i32 0, i32 2
  %9 = load i8, ptr %8, align 4
  %10 = icmp eq i8 %9, 3
  br i1 %10, label %36, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.tps65218, ptr %2, i32 0, i32 9
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr i8, ptr %13, i32 2
  %15 = load i8, ptr %14, align 1
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %23, label %25

17:                                               ; preds = %5
  %18 = getelementptr inbounds %struct.tps65218, ptr %2, i32 0, i32 9
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr i8, ptr %19, i32 %3
  %21 = load i8, ptr %20, align 1
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %36, label %25

23:                                               ; preds = %11
  store i8 3, ptr %14, align 1
  %24 = load ptr, ptr %12, align 4
  br label %25

25:                                               ; preds = %23, %17, %11
  %26 = phi ptr [ %19, %17 ], [ %24, %23 ], [ %13, %11 ]
  %27 = load ptr, ptr %0, align 8
  %28 = getelementptr inbounds %struct.regulator_desc, ptr %27, i32 0, i32 39
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr inbounds %struct.regulator_desc, ptr %27, i32 0, i32 40
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr i8, ptr %26, i32 %3
  %33 = load i8, ptr %32, align 1
  %34 = zext i8 %33 to i32
  %35 = tail call i32 @tps65218_set_bits(ptr noundef %2, i32 noundef %29, i32 noundef %31, i32 noundef %34, i32 noundef 1) #7
  br label %36

36:                                               ; preds = %25, %17, %7, %1
  %37 = phi i32 [ %35, %25 ], [ -22, %1 ], [ 0, %7 ], [ -22, %17 ]
  ret i32 %37
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdev_get_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tps65218_set_bits(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tps65218_clear_bits(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tps65218_pmic_set_current_limit(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #7
  %5 = icmp ult i32 %2, 100000
  br i1 %5, label %27, label %6

6:                                                ; preds = %3
  %7 = icmp ult i32 %2, 200000
  br i1 %7, label %13, label %8

8:                                                ; preds = %6
  %9 = icmp ult i32 %2, 500000
  br i1 %9, label %13, label %10

10:                                               ; preds = %8
  %11 = icmp ult i32 %2, 1000000
  %12 = select i1 %11, i32 2, i32 3
  br label %13

13:                                               ; preds = %10, %8, %6
  %14 = phi i32 [ 1, %8 ], [ 0, %6 ], [ %12, %10 ]
  %15 = getelementptr [4 x i32], ptr @ls3_currents, i32 0, i32 %14
  %16 = load i32, ptr %15, align 4
  %17 = icmp ult i32 %16, %1
  br i1 %17, label %27, label %18

18:                                               ; preds = %13
  %19 = load ptr, ptr %0, align 8
  %20 = getelementptr inbounds %struct.regulator_desc, ptr %19, i32 0, i32 30
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.regulator_desc, ptr %19, i32 0, i32 31
  %23 = load i32, ptr %22, align 4
  %24 = tail call i32 @llvm.cttz.i32(i32 %23, i1 false), !range !9
  %25 = shl i32 %14, %24
  %26 = tail call i32 @tps65218_set_bits(ptr noundef %4, i32 noundef %21, i32 noundef %23, i32 noundef %25, i32 noundef 1) #7
  br label %27

27:                                               ; preds = %18, %13, %3
  %28 = phi i32 [ %26, %18 ], [ -22, %13 ], [ -22, %3 ]
  ret i32 %28
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_current_limit_regmap(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tps65218_pmic_set_input_current_lim(ptr noundef %0, i32 noundef %1) #2 {
  %3 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #7
  switch i32 %1, label %17 [
    i32 100000, label %7
    i32 200000, label %4
    i32 500000, label %5
    i32 1000000, label %6
  ]

4:                                                ; preds = %2
  br label %7

5:                                                ; preds = %2
  br label %7

6:                                                ; preds = %2
  br label %7

7:                                                ; preds = %6, %5, %4, %2
  %8 = phi i32 [ 0, %2 ], [ 1, %4 ], [ 2, %5 ], [ 3, %6 ]
  %9 = load ptr, ptr %0, align 8
  %10 = getelementptr inbounds %struct.regulator_desc, ptr %9, i32 0, i32 30
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.regulator_desc, ptr %9, i32 0, i32 31
  %13 = load i32, ptr %12, align 4
  %14 = tail call i32 @llvm.cttz.i32(i32 %13, i1 false), !range !9
  %15 = shl i32 %8, %14
  %16 = tail call i32 @tps65218_set_bits(ptr noundef %3, i32 noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef 1) #7
  br label %17

17:                                               ; preds = %7, %2
  %18 = phi i32 [ %16, %7 ], [ -22, %2 ]
  ret i32 %18
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #6

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
!8 = !{!"auto-init"}
!9 = !{i32 0, i32 33}
