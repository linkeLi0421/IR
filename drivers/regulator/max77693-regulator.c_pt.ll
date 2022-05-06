; ModuleID = '/llk/IR/drivers/regulator/max77693-regulator.c_pt.bc'
source_filename = "../drivers/regulator/max77693-regulator.c"
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
%struct.chg_reg_data = type { i32, i32, i32, i32 }
%struct.regulator_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.max77693_dev = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
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

@max77693_pmic_id = internal constant [3 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"max77693-pmic\00\00\00\00\00\00\00", i32 1 }, %struct.platform_device_id { [20 x i8] c"max77843-regulator\00\00", i32 2 }, %struct.platform_device_id zeroinitializer], align 4
@__UNIQUE_ID_description247 = internal constant [47 x i8] c"description=MAXIM 77693/77843 regulator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author248 = internal constant [46 x i8] c"author=Jonghwa Lee <jonghwa3.lee@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author249 = internal constant [45 x i8] c"author=Krzysztof Kozlowski <krzk@kernel.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_license250 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@max77693_pmic_driver = internal global %struct.platform_driver { ptr @max77693_pmic_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @max77693_pmic_id, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [14 x i8] c"max77693-pmic\00", align 1
@max77693_supported_regulators = internal constant [3 x %struct.regulator_desc] [%struct.regulator_desc { ptr @.str.3, ptr null, ptr @.str.3, i8 0, ptr @.str.4, ptr null, i32 0, i8 0, i32 4, i32 0, ptr @max77693_safeout_ops, i32 0, i32 0, ptr @__this_module, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @max77693_safeout_table, ptr null, i32 0, i32 0, i32 198, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 198, i32 64, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.5, ptr null, ptr @.str.5, i8 0, ptr @.str.4, ptr null, i32 1, i8 0, i32 4, i32 0, ptr @max77693_safeout_ops, i32 0, i32 0, ptr @__this_module, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @max77693_safeout_table, ptr null, i32 0, i32 0, i32 198, i32 12, i32 0, i32 0, i32 0, i32 0, i32 0, i32 198, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.6, ptr null, ptr @.str.6, i8 0, ptr @.str.4, ptr null, i32 2, i8 0, i32 0, i32 0, ptr @max77693_charger_ops, i32 0, i32 1, ptr @__this_module, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 183, i32 5, i32 5, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }], align 4
@max77693_chg_reg_data = internal constant %struct.chg_reg_data { i32 192, i32 127, i32 20000, i32 3 }, align 4
@max77843_supported_regulators = internal constant [3 x %struct.regulator_desc] [%struct.regulator_desc { ptr @.str.7, ptr null, ptr @.str.7, i8 0, ptr @.str.4, ptr null, i32 0, i8 0, i32 4, i32 0, ptr @max77693_safeout_ops, i32 0, i32 0, ptr @__this_module, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @max77693_safeout_table, ptr null, i32 0, i32 0, i32 198, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 198, i32 64, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.8, ptr null, ptr @.str.8, i8 0, ptr @.str.4, ptr null, i32 1, i8 0, i32 4, i32 0, ptr @max77693_safeout_ops, i32 0, i32 0, ptr @__this_module, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @max77693_safeout_table, ptr null, i32 0, i32 0, i32 198, i32 12, i32 0, i32 0, i32 0, i32 0, i32 0, i32 198, i32 128, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, %struct.regulator_desc { ptr @.str.6, ptr null, ptr @.str.6, i8 0, ptr @.str.4, ptr null, i32 2, i8 0, i32 0, i32 0, ptr @max77693_charger_ops, i32 0, i32 1, ptr @__this_module, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 183, i32 1, i32 1, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }], align 4
@max77843_chg_reg_data = internal constant %struct.chg_reg_data { i32 185, i32 63, i32 50000, i32 2 }, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Unsupported device type: %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Failed to initialize regulator-%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"ESAFEOUT1\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"regulators\00", align 1
@max77693_safeout_ops = internal constant %struct.regulator_ops { ptr @regulator_list_voltage_table, ptr null, ptr null, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@max77693_safeout_table = internal constant [4 x i32] [i32 4850000, i32 4900000, i32 4950000, i32 3300000], align 4
@.str.5 = private unnamed_addr constant [10 x i8] c"ESAFEOUT2\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"CHARGER\00", align 1
@max77693_charger_ops = internal constant %struct.regulator_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @max77693_chg_set_current_limit, ptr @max77693_chg_get_current_limit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.7 = private unnamed_addr constant [9 x i8] c"SAFEOUT1\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"SAFEOUT2\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_author248, ptr @__UNIQUE_ID_author249, ptr @__UNIQUE_ID_description247, ptr @__UNIQUE_ID_license250], section "llvm.metadata"

@__mod_platform__max77693_pmic_id_device_table = dso_local alias [3 x %struct.platform_device_id], ptr @max77693_pmic_id

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @max77693_pmic_driver, ptr noundef nonnull @__this_module) #7
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @max77693_pmic_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max77693_pmic_probe(ptr noundef %0) #2 {
  %2 = alloca %struct.regulator_config, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.platform_device_id, ptr %4, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %8 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 8
  %11 = load ptr, ptr %10, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #7
  %12 = getelementptr inbounds i8, ptr %2, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %12, i8 0, i32 20, i1 false)
  %13 = load ptr, ptr %11, align 4
  store ptr %13, ptr %2, align 4
  switch i32 %6, label %14 [
    i32 1, label %16
    i32 2, label %15
  ]

14:                                               ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.1, i32 noundef %6) #8
  br label %55

15:                                               ; preds = %1
  br label %16

16:                                               ; preds = %15, %1
  %17 = phi ptr [ @max77843_chg_reg_data, %15 ], [ @max77693_chg_reg_data, %1 ]
  %18 = phi i1 [ false, %15 ], [ true, %1 ]
  %19 = phi ptr [ @max77843_supported_regulators, %15 ], [ @max77693_supported_regulators, %1 ]
  %20 = getelementptr inbounds %struct.regulator_config, ptr %2, i32 0, i32 2
  store ptr %17, ptr %20, align 4
  %21 = getelementptr inbounds %struct.regulator_config, ptr %2, i32 0, i32 4
  %22 = getelementptr inbounds %struct.max77693_dev, ptr %11, i32 0, i32 6
  %23 = getelementptr inbounds %struct.max77693_dev, ptr %11, i32 0, i32 9
  %24 = load ptr, ptr %22, align 4
  store ptr %24, ptr %21, align 4
  %25 = call ptr @devm_regulator_register(ptr noundef %7, ptr noundef nonnull %19, ptr noundef nonnull %2) #7
  %26 = icmp ugt ptr %25, inttoptr (i32 -4096 to ptr)
  br i1 %26, label %27, label %31

27:                                               ; preds = %50, %38, %16
  %28 = phi ptr [ %25, %16 ], [ %41, %38 ], [ %53, %50 ]
  %29 = phi i32 [ 0, %16 ], [ 1, %38 ], [ 2, %50 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.2, i32 noundef %29) #8
  %30 = ptrtoint ptr %28 to i32
  br label %55

31:                                               ; preds = %16
  %32 = getelementptr %struct.regulator_desc, ptr %19, i32 1
  br i1 %18, label %38, label %33

33:                                               ; preds = %31
  %34 = getelementptr %struct.regulator_desc, ptr %19, i32 1, i32 6
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %35, 2
  %37 = select i1 %36, ptr %23, ptr %22
  br label %38

38:                                               ; preds = %33, %31
  %39 = phi ptr [ %22, %31 ], [ %37, %33 ]
  %40 = load ptr, ptr %39, align 4
  store ptr %40, ptr %21, align 4
  %41 = call ptr @devm_regulator_register(ptr noundef %7, ptr noundef %32, ptr noundef nonnull %2) #7
  %42 = icmp ugt ptr %41, inttoptr (i32 -4096 to ptr)
  br i1 %42, label %27, label %43

43:                                               ; preds = %38
  %44 = getelementptr %struct.regulator_desc, ptr %19, i32 2
  br i1 %18, label %50, label %45

45:                                               ; preds = %43
  %46 = getelementptr %struct.regulator_desc, ptr %19, i32 2, i32 6
  %47 = load i32, ptr %46, align 4
  %48 = icmp eq i32 %47, 2
  %49 = select i1 %48, ptr %23, ptr %22
  br label %50

50:                                               ; preds = %45, %43
  %51 = phi ptr [ %22, %43 ], [ %49, %45 ]
  %52 = load ptr, ptr %51, align 4
  store ptr %52, ptr %21, align 4
  %53 = call ptr @devm_regulator_register(ptr noundef %7, ptr noundef %44, ptr noundef nonnull %2) #7
  %54 = icmp ugt ptr %53, inttoptr (i32 -4096 to ptr)
  br i1 %54, label %27, label %55

55:                                               ; preds = %50, %27, %14
  %56 = phi i32 [ -19, %14 ], [ %30, %27 ], [ 0, %50 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #7
  ret i32 %56
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_list_voltage_table(ptr noundef, i32 noundef) #1

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
define internal i32 @max77693_chg_set_current_limit(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #7
  %5 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 14
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.regulation_constraints, ptr %6, i32 0, i32 4
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.chg_reg_data, ptr %4, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  br label %11

11:                                               ; preds = %11, %3
  %12 = phi i32 [ 0, %3 ], [ %16, %11 ]
  %13 = mul i32 %10, %12
  %14 = add i32 %13, %8
  %15 = icmp ult i32 %14, %1
  %16 = add i32 %12, 1
  br i1 %15, label %11, label %17

17:                                               ; preds = %11
  %18 = icmp ugt i32 %14, %2
  br i1 %18, label %27, label %19

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.chg_reg_data, ptr %4, i32 0, i32 3
  %21 = load i32, ptr %20, align 4
  %22 = add i32 %21, %12
  %23 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 17
  %24 = load ptr, ptr %23, align 4
  %25 = load i32, ptr %4, align 4
  %26 = tail call i32 @regmap_write(ptr noundef %24, i32 noundef %25, i32 noundef %22) #7
  br label %27

27:                                               ; preds = %19, %17
  %28 = phi i32 [ %26, %19 ], [ -22, %17 ]
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max77693_chg_get_current_limit(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = tail call ptr @rdev_get_drvdata(ptr noundef %0) #7
  %4 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 14
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.regulation_constraints, ptr %5, i32 0, i32 4
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.regulation_constraints, ptr %5, i32 0, i32 5
  %9 = load i32, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  store i32 0, ptr %2, align 4, !annotation !8
  %10 = getelementptr inbounds %struct.regulator_dev, ptr %0, i32 0, i32 17
  %11 = load ptr, ptr %10, align 4
  %12 = load i32, ptr %3, align 4
  %13 = call i32 @regmap_read(ptr noundef %11, i32 noundef %12, ptr noundef nonnull %2) #7
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %29, label %15

15:                                               ; preds = %1
  %16 = load i32, ptr %2, align 4
  %17 = getelementptr inbounds %struct.chg_reg_data, ptr %3, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = and i32 %18, %16
  %20 = getelementptr inbounds %struct.chg_reg_data, ptr %3, i32 0, i32 3
  %21 = load i32, ptr %20, align 4
  %22 = call i32 @llvm.usub.sat.i32(i32 %19, i32 %21)
  %23 = getelementptr inbounds %struct.chg_reg_data, ptr %3, i32 0, i32 2
  %24 = load i32, ptr %23, align 4
  %25 = mul i32 %24, %22
  %26 = add i32 %25, %7
  %27 = icmp ugt i32 %26, %9
  %28 = select i1 %27, i32 -22, i32 %26
  br label %29

29:                                               ; preds = %15, %1
  %30 = phi i32 [ %13, %1 ], [ %28, %15 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  ret i32 %30
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #6

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
