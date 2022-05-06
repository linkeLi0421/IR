; ModuleID = '/llk/IR/drivers/regulator/max14577-regulator.c_pt.bc'
source_filename = "../drivers/regulator/max14577-regulator.c"
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
%struct.maxim_charger_current = type { i32, i32, i32, i32 }
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
%struct.max14577 = type { ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, i32 }
%struct.max14577_platform_data = type { i32, i32, i32, ptr, ptr, ptr, ptr }
%struct.max14577_regulator_platform_data = type { i32, ptr, ptr }
%struct.regulator_dev = type { ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.coupling_desc, %struct.blocking_notifier_head, %struct.ww_mutex, ptr, i32, ptr, %struct.device, ptr, ptr, ptr, ptr, %struct.delayed_work, ptr, ptr, ptr, i8, i64, i32, i8, %struct.spinlock }
%struct.coupling_desc = type { ptr, ptr, i32, i32 }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }

@max14577_regulator_id = internal constant [3 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"max14577-regulator\00\00", i32 1 }, %struct.platform_device_id { [20 x i8] c"max77836-regulator\00\00", i32 2 }, %struct.platform_device_id zeroinitializer], align 4
@__UNIQUE_ID_author250 = internal constant [45 x i8] c"author=Krzysztof Kozlowski <krzk@kernel.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description251 = internal constant [47 x i8] c"description=Maxim 14577/77836 regulator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license252 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@max14577_regulator_driver = internal global %struct.platform_driver { ptr @max14577_regulator_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @max14577_regulator_id, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [19 x i8] c"max14577-regulator\00", align 1
@max77836_supported_regulators = internal constant [4 x %struct.regulator_desc] [%struct.regulator_desc { ptr @.str.2, ptr null, ptr @.str.2, i8 0, ptr @.str.3, ptr null, i32 0, i8 0, i32 1, i32 0, ptr @max14577_safeout_ops, i32 0, i32 0, ptr @__this_module, i32 4900000, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 13, i32 16, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.4, ptr null, ptr @.str.4, i8 0, ptr @.str.3, ptr null, i32 1, i8 0, i32 0, i32 0, ptr @max14577_charger_ops, i32 0, i32 1, ptr @__this_module, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 16, i32 64, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.5, ptr null, ptr @.str.5, i8 0, ptr @.str.3, ptr null, i32 2, i8 0, i32 64, i32 0, ptr @max77836_ldo_ops, i32 0, i32 0, ptr @__this_module, i32 800000, i32 50000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 81, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 81, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.6, ptr null, ptr @.str.6, i8 0, ptr @.str.3, ptr null, i32 3, i8 0, i32 64, i32 0, ptr @max77836_ldo_ops, i32 0, i32 0, ptr @__this_module, i32 800000, i32 50000, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 83, i32 63, i32 0, i32 0, i32 0, i32 0, i32 0, i32 83, i32 192, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }], align 4
@max14577_supported_regulators = internal constant [2 x %struct.regulator_desc] [%struct.regulator_desc { ptr @.str.2, ptr null, ptr @.str.2, i8 0, ptr @.str.3, ptr null, i32 0, i8 0, i32 1, i32 0, ptr @max14577_safeout_ops, i32 0, i32 0, ptr @__this_module, i32 4900000, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 13, i32 16, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.4, ptr null, ptr @.str.4, i8 0, ptr @.str.3, ptr null, i32 1, i8 0, i32 0, i32 0, ptr @max14577_charger_ops, i32 0, i32 1, ptr @__this_module, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 16, i32 64, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }], align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"Regulator init failed for %d/%s with error: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"SAFEOUT\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"regulators\00", align 1
@max14577_safeout_ops = internal constant %struct.regulator_ops { ptr @regulator_list_voltage_linear, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"CHARGER\00", align 1
@max14577_charger_ops = internal constant %struct.regulator_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @max14577_reg_set_current_limit, ptr @max14577_reg_get_current_limit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @max14577_reg_is_enabled, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"LDO1\00", align 1
@max77836_ldo_ops = internal constant %struct.regulator_ops { ptr @regulator_list_voltage_linear, ptr null, ptr @regulator_map_voltage_linear, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"LDO2\00", align 1
@maxim_charger_currents = external dso_local constant [0 x %struct.maxim_charger_current], align 4
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_author250, ptr @__UNIQUE_ID_description251, ptr @__UNIQUE_ID_license252], section "llvm.metadata"

@__mod_platform__max14577_regulator_id_device_table = dso_local alias [3 x %struct.platform_device_id], ptr @max14577_regulator_id

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @max14577_regulator_driver, ptr noundef nonnull @__this_module) #6
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @max14577_regulator_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max14577_regulator_probe(ptr noundef %0) #2 {
  %2 = alloca %struct.regulator_config, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 7
  %10 = load ptr, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #6
  %11 = getelementptr inbounds i8, ptr %2, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %11, i8 0, i32 20, i1 false)
  %12 = getelementptr inbounds %struct.max14577, ptr %7, i32 0, i32 3
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 2
  %15 = select i1 %14, ptr @max77836_supported_regulators, ptr @max14577_supported_regulators
  %16 = select i1 %14, i32 4, i32 2
  %17 = load ptr, ptr %7, align 4
  store ptr %17, ptr %2, align 4
  %18 = getelementptr inbounds %struct.regulator_config, ptr %2, i32 0, i32 2
  store ptr %7, ptr %18, align 4
  %19 = icmp eq ptr %10, null
  %20 = getelementptr inbounds %struct.regulator_config, ptr %2, i32 0, i32 4
  %21 = getelementptr inbounds %struct.max14577_platform_data, ptr %10, i32 0, i32 6
  %22 = getelementptr inbounds %struct.regulator_config, ptr %2, i32 0, i32 1
  %23 = getelementptr inbounds %struct.regulator_config, ptr %2, i32 0, i32 3
  %24 = getelementptr inbounds %struct.max14577, ptr %7, i32 0, i32 4
  %25 = getelementptr inbounds %struct.max14577, ptr %7, i32 0, i32 5
  br label %26

26:                                               ; preds = %53, %1
  %27 = phi i32 [ 0, %1 ], [ %54, %53 ]
  br i1 %19, label %36, label %28

28:                                               ; preds = %26
  %29 = load ptr, ptr %21, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %36, label %31

31:                                               ; preds = %28
  %32 = getelementptr %struct.max14577_regulator_platform_data, ptr %29, i32 %27, i32 1
  %33 = load ptr, ptr %32, align 4
  store ptr %33, ptr %22, align 4
  %34 = getelementptr %struct.max14577_regulator_platform_data, ptr %29, i32 %27, i32 2
  %35 = load ptr, ptr %34, align 4
  store ptr %35, ptr %23, align 4
  br label %36

36:                                               ; preds = %31, %28, %26
  %37 = getelementptr %struct.regulator_desc, ptr %15, i32 %27
  %38 = load i32, ptr %12, align 4
  %39 = icmp eq i32 %38, 2
  br i1 %39, label %40, label %45

40:                                               ; preds = %36
  %41 = getelementptr %struct.regulator_desc, ptr %15, i32 %27, i32 6
  %42 = load i32, ptr %41, align 4
  %43 = icmp ult i32 %42, 2
  %44 = select i1 %43, ptr %24, ptr %25
  br label %45

45:                                               ; preds = %40, %36
  %46 = phi ptr [ %44, %40 ], [ %24, %36 ]
  %47 = load ptr, ptr %46, align 4
  store ptr %47, ptr %20, align 4
  %48 = call ptr @devm_regulator_register(ptr noundef %3, ptr noundef %37, ptr noundef nonnull %2) #6
  %49 = icmp ugt ptr %48, inttoptr (i32 -4096 to ptr)
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = ptrtoint ptr %48 to i32
  %52 = load ptr, ptr %37, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.1, i32 noundef %27, ptr noundef %52, i32 noundef %51) #7
  br label %56

53:                                               ; preds = %45
  %54 = add nuw nsw i32 %27, 1
  %55 = icmp eq i32 %54, %16
  br i1 %55, label %56, label %26

56:                                               ; preds = %53, %50
  %57 = phi i32 [ %51, %50 ], [ 0, %53 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #6
  ret i32 %57
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
declare dso_local i32 @regulator_list_voltage_linear(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable_regmap(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable_regmap(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_is_enabled_regmap(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max14577_reg_set_current_limit(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #6
  store i8 0, ptr %4, align 1, !annotation !8
  %5 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #6
  %6 = getelementptr inbounds %struct.max14577, ptr %5, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = tail call i32 @rdev_get_id(ptr noundef %0) #6
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %20

10:                                               ; preds = %3
  %11 = getelementptr [0 x %struct.maxim_charger_current], ptr @maxim_charger_currents, i32 0, i32 %7
  %12 = call i32 @maxim_charger_calc_reg_current(ptr noundef %11, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %4) #6
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 17
  %16 = load ptr, ptr %15, align 4
  %17 = load i8, ptr %4, align 1
  %18 = zext i8 %17 to i32
  %19 = call i32 @regmap_update_bits_base(ptr noundef %16, i32 noundef 18, i32 noundef 31, i32 noundef %18, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %20

20:                                               ; preds = %14, %10, %3
  %21 = phi i32 [ %19, %14 ], [ -22, %3 ], [ %12, %10 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #6
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max14577_reg_get_current_limit(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 17
  %4 = load ptr, ptr %3, align 4
  %5 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #6
  %6 = getelementptr inbounds %struct.max14577, ptr %5, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr [0 x %struct.maxim_charger_current], ptr @maxim_charger_currents, i32 0, i32 %7
  %9 = tail call i32 @rdev_get_id(ptr noundef %0) #6
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %11, label %26

11:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  store i32 0, ptr %2, align 4, !annotation !8
  %12 = call i32 @regmap_read(ptr noundef %4, i32 noundef 18, ptr noundef nonnull %2) #6
  %13 = load i32, ptr %2, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  %14 = and i32 %13, 16
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = load i32, ptr %8, align 4
  br label %26

18:                                               ; preds = %11
  %19 = and i32 %13, 15
  %20 = getelementptr [0 x %struct.maxim_charger_current], ptr @maxim_charger_currents, i32 0, i32 %7, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr [0 x %struct.maxim_charger_current], ptr @maxim_charger_currents, i32 0, i32 %7, i32 2
  %23 = load i32, ptr %22, align 4
  %24 = mul i32 %23, %19
  %25 = add i32 %24, %21
  br label %26

26:                                               ; preds = %18, %16, %1
  %27 = phi i32 [ %17, %16 ], [ %25, %18 ], [ -22, %1 ]
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max14577_reg_is_enabled(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = tail call i32 @rdev_get_id(ptr noundef %0) #6
  %5 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 17
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq i32 %4, 1
  br i1 %7, label %8, label %18

8:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  store i32 0, ptr %3, align 4, !annotation !8
  %9 = call i32 @regmap_read(ptr noundef %6, i32 noundef 16, ptr noundef nonnull %3) #6
  %10 = load i32, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  %11 = and i32 %10, 64
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  store i32 0, ptr %2, align 4, !annotation !8
  %14 = call i32 @regmap_read(ptr noundef %6, i32 noundef 6, ptr noundef nonnull %2) #6
  %15 = load i32, ptr %2, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  %16 = lshr i32 %15, 1
  %17 = and i32 %16, 1
  br label %18

18:                                               ; preds = %13, %8, %1
  %19 = phi i32 [ 0, %8 ], [ %17, %13 ], [ -22, %1 ]
  ret i32 %19
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdev_get_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @maxim_charger_calc_reg_current(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_map_voltage_linear(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_voltage_sel_regmap(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage_sel_regmap(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

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
