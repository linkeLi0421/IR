; ModuleID = '/llk/IR/drivers/regulator/tps65217-regulator.c_pt.bc'
source_filename = "../drivers/regulator/tps65217-regulator.c"
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
%struct.tps65217 = type { ptr, ptr, [7 x %struct.regulator_desc], ptr, ptr, ptr, %struct.mutex, i8, i32 }

@__initcall__kmod_tps65217_regulator__247_277_tps65217_regulator_init4 = internal global ptr @tps65217_regulator_init, section ".initcall4.init", align 4
@tps65217_regulator_driver = internal global %struct.platform_driver { ptr @tps65217_regulator_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_tps65217_regulator_exit = internal global ptr @tps65217_regulator_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author248 = internal constant [58 x i8] c"tps65217_regulator.author=AnilKumar Ch <anilkumar@ti.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description249 = internal constant [65 x i8] c"tps65217_regulator.description=TPS65217 voltage regulator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_alias250 = internal constant [48 x i8] c"tps65217_regulator.alias=platform:tps65217-pmic\00", section ".modinfo", align 1
@__UNIQUE_ID_file251 = internal constant [61 x i8] c"tps65217_regulator.file=drivers/regulator/tps65217-regulator\00", section ".modinfo", align 1
@__UNIQUE_ID_license252 = internal constant [34 x i8] c"tps65217_regulator.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [14 x i8] c"tps65217-pmic\00", align 1
@regulators = internal constant [7 x %struct.regulator_desc] [%struct.regulator_desc { ptr @.str.2, ptr null, ptr @.str.3, i8 0, ptr @.str.4, ptr null, i32 0, i8 0, i32 64, i32 0, ptr @tps65217_pmic_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @tps65217_uv1_ranges, ptr null, i32 4, ptr null, ptr null, i32 0, i32 0, i32 14, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 22, i32 16, i32 0, i32 0, i8 0, i32 25, i32 240, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.5, ptr null, ptr @.str.6, i8 0, ptr @.str.4, ptr null, i32 1, i8 0, i32 64, i32 0, ptr @tps65217_pmic_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @tps65217_uv1_ranges, ptr null, i32 4, ptr null, ptr null, i32 0, i32 0, i32 15, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 22, i32 8, i32 0, i32 0, i8 0, i32 25, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.7, ptr null, ptr @.str.8, i8 0, ptr @.str.4, ptr null, i32 2, i8 0, i32 64, i32 0, ptr @tps65217_pmic_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @tps65217_uv1_ranges, ptr null, i32 4, ptr null, ptr null, i32 0, i32 0, i32 16, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 22, i32 4, i32 0, i32 0, i8 0, i32 26, i32 240, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.9, ptr null, ptr @.str.10, i8 0, ptr @.str.4, ptr null, i32 3, i8 0, i32 16, i32 0, ptr @tps65217_pmic_ldo1_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @LDO1_VSEL_table, ptr null, i32 0, i32 0, i32 18, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 22, i32 2, i32 0, i32 0, i8 0, i32 26, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.11, ptr null, ptr @.str.12, i8 0, ptr @.str.4, ptr null, i32 4, i8 0, i32 64, i32 0, ptr @tps65217_pmic_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @tps65217_uv1_ranges, ptr null, i32 4, ptr null, ptr null, i32 0, i32 0, i32 19, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 22, i32 1, i32 0, i32 0, i8 0, i32 27, i32 240, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.13, ptr null, ptr @.str.14, i8 0, ptr @.str.4, ptr null, i32 5, i8 0, i32 32, i32 0, ptr @tps65217_pmic_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @tps65217_uv2_ranges, ptr null, i32 3, ptr null, ptr null, i32 0, i32 0, i32 20, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 22, i32 96, i32 0, i32 0, i8 0, i32 27, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.15, ptr null, ptr @.str.16, i8 0, ptr @.str.4, ptr null, i32 6, i8 0, i32 32, i32 0, ptr @tps65217_pmic_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @tps65217_uv2_ranges, ptr null, i32 3, ptr null, ptr null, i32 0, i32 0, i32 21, i32 31, i32 0, i32 0, i32 0, i32 0, i32 0, i32 22, i32 32, i32 0, i32 0, i8 0, i32 28, i32 240, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }], align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"failed to register %s regulator\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"DCDC1\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"dcdc1\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"regulators\00", align 1
@tps65217_pmic_ops = internal constant %struct.regulator_ops { ptr @regulator_list_voltage_linear_range, ptr null, ptr @regulator_map_voltage_linear_range, ptr @tps65217_pmic_set_voltage_sel, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tps65217_pmic_enable, ptr @tps65217_pmic_disable, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tps65217_pmic_set_suspend_enable, ptr @tps65217_pmic_set_suspend_disable, ptr null, ptr null, ptr null }, align 4
@tps65217_uv1_ranges = internal constant [4 x %struct.linear_range] [%struct.linear_range { i32 900000, i32 0, i32 24, i32 25000 }, %struct.linear_range { i32 1550000, i32 25, i32 52, i32 50000 }, %struct.linear_range { i32 3000000, i32 53, i32 55, i32 100000 }, %struct.linear_range { i32 3300000, i32 56, i32 63, i32 0 }], align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"DCDC2\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"dcdc2\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"DCDC3\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"dcdc3\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"LDO1\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"ldo1\00", align 1
@tps65217_pmic_ldo1_ops = internal constant %struct.regulator_ops { ptr @regulator_list_voltage_table, ptr null, ptr @regulator_map_voltage_ascend, ptr @tps65217_pmic_set_voltage_sel, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tps65217_pmic_enable, ptr @tps65217_pmic_disable, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tps65217_pmic_set_suspend_enable, ptr @tps65217_pmic_set_suspend_disable, ptr null, ptr null, ptr null }, align 4
@LDO1_VSEL_table = internal constant [16 x i32] [i32 1000000, i32 1100000, i32 1200000, i32 1250000, i32 1300000, i32 1350000, i32 1400000, i32 1500000, i32 1600000, i32 1800000, i32 2500000, i32 2750000, i32 2800000, i32 3000000, i32 3100000, i32 3300000], align 4
@.str.11 = private unnamed_addr constant [5 x i8] c"LDO2\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"ldo2\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"LDO3\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"ldo3\00", align 1
@tps65217_uv2_ranges = internal constant [3 x %struct.linear_range] [%struct.linear_range { i32 1500000, i32 0, i32 8, i32 50000 }, %struct.linear_range { i32 2000000, i32 9, i32 13, i32 100000 }, %struct.linear_range { i32 2450000, i32 14, i32 31, i32 50000 }], align 4
@.str.15 = private unnamed_addr constant [5 x i8] c"LDO4\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"ldo4\00", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_alias250, ptr @__UNIQUE_ID_author248, ptr @__UNIQUE_ID_description249, ptr @__UNIQUE_ID_file251, ptr @__UNIQUE_ID_license252, ptr @__exitcall_tps65217_regulator_exit, ptr @__initcall__kmod_tps65217_regulator__247_277_tps65217_regulator_init4, ptr @tps65217_regulator_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @tps65217_regulator_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @tps65217_regulator_driver, ptr noundef null) #6
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @tps65217_regulator_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @tps65217_regulator_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tps65217_regulator_probe(ptr noundef %0) #2 {
  %2 = alloca %struct.regulator_config, align 4
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 7
  %11 = load ptr, ptr %10, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #6
  %12 = getelementptr inbounds i8, ptr %2, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %12, i8 0, i32 20, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  store i32 0, ptr %3, align 4, !annotation !8
  %13 = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef 7, i32 noundef 3520) #6
  %14 = getelementptr inbounds %struct.tps65217, ptr %8, i32 0, i32 4
  store ptr %13, ptr %14, align 4
  %15 = icmp eq ptr %13, null
  br i1 %15, label %53, label %16

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %8, ptr %17, align 8
  %18 = icmp eq ptr %11, null
  %19 = getelementptr inbounds %struct.regulator_config, ptr %2, i32 0, i32 1
  %20 = getelementptr inbounds %struct.regulator_config, ptr %2, i32 0, i32 2
  %21 = getelementptr inbounds %struct.tps65217, ptr %8, i32 0, i32 3
  %22 = getelementptr inbounds %struct.regulator_config, ptr %2, i32 0, i32 4
  br label %23

23:                                               ; preds = %43, %16
  %24 = phi i32 [ 0, %16 ], [ %51, %43 ]
  %25 = load ptr, ptr %8, align 4
  store ptr %25, ptr %2, align 4
  br i1 %18, label %29, label %26

26:                                               ; preds = %23
  %27 = getelementptr [7 x ptr], ptr %11, i32 0, i32 %24
  %28 = load ptr, ptr %27, align 4
  store ptr %28, ptr %19, align 4
  br label %29

29:                                               ; preds = %26, %23
  store ptr %8, ptr %20, align 4
  %30 = load ptr, ptr %21, align 4
  store ptr %30, ptr %22, align 4
  %31 = getelementptr [7 x %struct.regulator_desc], ptr @regulators, i32 0, i32 %24
  %32 = call ptr @devm_regulator_register(ptr noundef %4, ptr noundef %31, ptr noundef nonnull %2) #6
  %33 = icmp ugt ptr %32, inttoptr (i32 -4096 to ptr)
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load ptr, ptr %8, align 4
  %36 = load ptr, ptr %0, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.1, ptr noundef %36) #7
  %37 = ptrtoint ptr %32 to i32
  br label %53

38:                                               ; preds = %29
  %39 = getelementptr [7 x %struct.regulator_desc], ptr @regulators, i32 0, i32 %24, i32 39
  %40 = load i32, ptr %39, align 4
  %41 = call i32 @tps65217_reg_read(ptr noundef %8, i32 noundef %40, ptr noundef nonnull %3) #6
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %38
  %44 = load i32, ptr %3, align 4
  %45 = getelementptr [7 x %struct.regulator_desc], ptr @regulators, i32 0, i32 %24, i32 40
  %46 = load i32, ptr %45, align 4
  %47 = and i32 %46, %44
  %48 = trunc i32 %47 to i8
  %49 = load ptr, ptr %14, align 4
  %50 = getelementptr i8, ptr %49, i32 %24
  store i8 %48, ptr %50, align 1
  %51 = add nuw nsw i32 %24, 1
  %52 = icmp eq i32 %51, 7
  br i1 %52, label %53, label %23

53:                                               ; preds = %43, %38, %34, %1
  %54 = phi i32 [ %37, %34 ], [ -12, %1 ], [ 0, %43 ], [ %41, %38 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #6
  ret i32 %54
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
declare dso_local i32 @tps65217_reg_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_list_voltage_linear_range(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_map_voltage_linear_range(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tps65217_pmic_set_voltage_sel(ptr noundef %0, i32 noundef %1) #2 {
  %3 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #6
  %4 = tail call i32 @rdev_get_id(ptr noundef %0) #6
  %5 = load ptr, ptr %0, align 8
  %6 = getelementptr inbounds %struct.regulator_desc, ptr %5, i32 0, i32 27
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.regulator_desc, ptr %5, i32 0, i32 28
  %9 = load i32, ptr %8, align 4
  %10 = tail call i32 @tps65217_set_bits(ptr noundef %3, i32 noundef %7, i32 noundef %9, i32 noundef %1, i32 noundef 2) #6
  %11 = icmp ult i32 %4, 3
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = tail call i32 @tps65217_set_bits(ptr noundef %3, i32 noundef 17, i32 noundef 128, i32 noundef 128, i32 noundef 2) #6
  br label %14

14:                                               ; preds = %12, %2
  %15 = phi i32 [ %10, %2 ], [ %13, %12 ]
  ret i32 %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage_sel_regmap(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tps65217_pmic_enable(ptr noundef %0) #2 {
  %2 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #6
  %3 = tail call i32 @rdev_get_id(ptr noundef %0) #6
  %4 = icmp ugt i32 %3, 6
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8
  %7 = getelementptr inbounds %struct.regulator_desc, ptr %6, i32 0, i32 35
  %8 = load i32, ptr %7, align 4
  %9 = tail call i32 @tps65217_set_bits(ptr noundef %2, i32 noundef 22, i32 noundef %8, i32 noundef %8, i32 noundef 1) #6
  br label %10

10:                                               ; preds = %5, %1
  %11 = phi i32 [ %9, %5 ], [ -22, %1 ]
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tps65217_pmic_disable(ptr noundef %0) #2 {
  %2 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #6
  %3 = tail call i32 @rdev_get_id(ptr noundef %0) #6
  %4 = icmp ugt i32 %3, 6
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8
  %7 = getelementptr inbounds %struct.regulator_desc, ptr %6, i32 0, i32 35
  %8 = load i32, ptr %7, align 4
  %9 = tail call i32 @tps65217_clear_bits(ptr noundef %2, i32 noundef 22, i32 noundef %8, i32 noundef 1) #6
  br label %10

10:                                               ; preds = %5, %1
  %11 = phi i32 [ %9, %5 ], [ -22, %1 ]
  ret i32 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_is_enabled_regmap(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tps65217_pmic_set_suspend_enable(ptr noundef %0) #2 {
  %2 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #6
  %3 = tail call i32 @rdev_get_id(ptr noundef %0) #6
  %4 = icmp ugt i32 %3, 6
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8
  %7 = getelementptr inbounds %struct.regulator_desc, ptr %6, i32 0, i32 39
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.regulator_desc, ptr %6, i32 0, i32 40
  %10 = load i32, ptr %9, align 4
  %11 = tail call i32 @tps65217_clear_bits(ptr noundef %2, i32 noundef %8, i32 noundef %10, i32 noundef 1) #6
  br label %12

12:                                               ; preds = %5, %1
  %13 = phi i32 [ %11, %5 ], [ -22, %1 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tps65217_pmic_set_suspend_disable(ptr noundef %0) #2 {
  %2 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #6
  %3 = tail call i32 @rdev_get_id(ptr noundef %0) #6
  %4 = icmp ugt i32 %3, 6
  br i1 %4, label %19, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.tps65217, ptr %2, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 %3
  %9 = load i8, ptr %8, align 1
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %19, label %11

11:                                               ; preds = %5
  %12 = load ptr, ptr %0, align 8
  %13 = getelementptr inbounds %struct.regulator_desc, ptr %12, i32 0, i32 39
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.regulator_desc, ptr %12, i32 0, i32 40
  %16 = load i32, ptr %15, align 4
  %17 = zext i8 %9 to i32
  %18 = tail call i32 @tps65217_set_bits(ptr noundef %2, i32 noundef %14, i32 noundef %16, i32 noundef %17, i32 noundef 1) #6
  br label %19

19:                                               ; preds = %11, %5, %1
  %20 = phi i32 [ %18, %11 ], [ -22, %1 ], [ -22, %5 ]
  ret i32 %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdev_get_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tps65217_set_bits(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tps65217_clear_bits(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_list_voltage_table(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_map_voltage_ascend(ptr noundef, i32 noundef, i32 noundef) #1

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
