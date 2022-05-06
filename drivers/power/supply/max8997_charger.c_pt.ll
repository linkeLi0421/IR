; ModuleID = '/llk/IR/drivers/power/supply/max8997_charger.c_pt.bc'
source_filename = "../drivers/power/supply/max8997_charger.c"
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
%struct.power_supply_desc = type { ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.power_supply_config = type { ptr, ptr, ptr, ptr, ptr, i32 }
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
%struct.max8997_dev = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, i32, ptr, i32, i32, ptr, %struct.mutex, [11 x i32], [11 x i32], [187 x i8], [12 x i8] }
%struct.max8997_platform_data = type { i32, ptr, i32, i8, [3 x i32], i32, [8 x i32], i8, [8 x i32], i8, [8 x i32], i8, i32, i32, ptr, ptr, ptr }
%struct.charger_data = type { ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, %struct.work_struct }
%struct.notifier_block = type { ptr, ptr, i32 }

@max8997_battery_id = internal constant [2 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"max8997-battery\00\00\00\00\00", i32 0 }, %struct.platform_device_id zeroinitializer], align 4
@__UNIQUE_ID_description247 = internal constant [51 x i8] c"description=MAXIM 8997/8966 battery control driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author248 = internal constant [47 x i8] c"author=MyungJoo Ham <myungjoo.ham@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_license249 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@max8997_battery_driver = internal global %struct.platform_driver { ptr @max8997_battery_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @max8997_battery_id, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [16 x i8] c"max8997-battery\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"No platform data supplied.\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Cannot use i2c bus.\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"incorrect timeout value (%d)\0A\00", align 1
@max8997_battery_desc = internal constant %struct.power_supply_desc { ptr @.str.11, i32 1, ptr null, i32 0, ptr @max8997_battery_props, i32 3, ptr @max8997_battery_get_property, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0 }, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"failed: power supply register\0A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"charger\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"couldn't get charger regulator\0A\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"max8997-muic\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"couldn't get extcon device\0A\00", align 1
@.str.9 = private unnamed_addr constant [42 x i8] c"failed to add extcon evt stop action: %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [36 x i8] c"failed to register extcon notifier\0A\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"max8997_pmic\00", align 1
@max8997_battery_props = internal global [3 x i32] [i32 0, i32 3, i32 4], align 4
@.str.12 = private unnamed_addr constant [33 x i8] c"failed to set current limit: %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [32 x i8] c"failed to enable regulator: %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [33 x i8] c"failed to disable regulator: %d\0A\00", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_author248, ptr @__UNIQUE_ID_description247, ptr @__UNIQUE_ID_license249], section "llvm.metadata"
@switch.table.max8997_battery_probe = private unnamed_addr constant [8 x i8] c"p     0@", align 1

@__mod_platform__max8997_battery_id_device_table = dso_local alias [2 x %struct.platform_device_id], ptr @max8997_battery_id

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @max8997_battery_driver, ptr noundef nonnull @__this_module) #7
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @max8997_battery_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max8997_battery_probe(ptr noundef %0) #2 {
  %2 = alloca %struct.power_supply_config, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.max8997_dev, ptr %7, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.max8997_dev, ptr %7, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %2, i8 0, i32 24, i1 false)
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.1) #8
  br label %99

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.max8997_platform_data, ptr %13, i32 0, i32 12
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %29, label %20

20:                                               ; preds = %16
  %21 = add i32 %18, -50
  %22 = sdiv i32 %21, 10
  %23 = tail call i32 @llvm.smax.i32(i32 %22, i32 0)
  %24 = tail call i32 @llvm.umin.i32(i32 %23, i32 15)
  %25 = trunc i32 %24 to i8
  %26 = tail call i32 @max8997_update_reg(ptr noundef %11, i8 noundef zeroext 84, i8 noundef zeroext %25, i8 noundef zeroext 15) #7
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.2) #8
  br label %99

29:                                               ; preds = %20, %16
  %30 = getelementptr inbounds %struct.max8997_platform_data, ptr %13, i32 0, i32 13
  %31 = load i32, ptr %30, align 4
  %32 = icmp ult i32 %31, 8
  br i1 %32, label %34, label %33

33:                                               ; preds = %34, %29
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.3, i32 noundef %31) #8
  br label %99

34:                                               ; preds = %29
  %35 = trunc i32 %31 to i8
  %36 = lshr i8 -31, %35
  %37 = and i8 %36, 1
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %33, label %39

39:                                               ; preds = %34
  %40 = getelementptr inbounds [8 x i8], ptr @switch.table.max8997_battery_probe, i32 0, i32 %31
  %41 = load i8, ptr %40, align 1
  %42 = tail call i32 @max8997_update_reg(ptr noundef %11, i8 noundef zeroext 80, i8 noundef zeroext %41, i8 noundef zeroext 112) #7
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.2) #8
  br label %99

45:                                               ; preds = %39
  %46 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 48, i32 noundef 3520) #7
  %47 = icmp eq ptr %46, null
  br i1 %47, label %99, label %48

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %46, ptr %49, align 8
  store ptr %3, ptr %46, align 4
  %50 = getelementptr inbounds %struct.charger_data, ptr %46, i32 0, i32 1
  store ptr %7, ptr %50, align 4
  %51 = getelementptr inbounds %struct.power_supply_config, ptr %2, i32 0, i32 2
  store ptr %46, ptr %51, align 4
  %52 = call ptr @devm_power_supply_register(ptr noundef %3, ptr noundef nonnull @max8997_battery_desc, ptr noundef nonnull %2) #7
  %53 = getelementptr inbounds %struct.charger_data, ptr %46, i32 0, i32 2
  store ptr %52, ptr %53, align 4
  %54 = icmp ugt ptr %52, inttoptr (i32 -4096 to ptr)
  br i1 %54, label %55, label %58

55:                                               ; preds = %48
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.4) #8
  %56 = load ptr, ptr %53, align 4
  %57 = ptrtoint ptr %56 to i32
  br label %99

58:                                               ; preds = %48
  %59 = load ptr, ptr %7, align 4
  %60 = getelementptr inbounds %struct.device, ptr %59, i32 0, i32 25
  %61 = load ptr, ptr %60, align 8
  store ptr %61, ptr %8, align 8
  %62 = call ptr @devm_regulator_get_optional(ptr noundef %3, ptr noundef nonnull @.str.5) #7
  %63 = getelementptr inbounds %struct.charger_data, ptr %46, i32 0, i32 3
  store ptr %62, ptr %63, align 4
  store ptr %9, ptr %8, align 8
  %64 = icmp ugt ptr %62, inttoptr (i32 -4096 to ptr)
  br i1 %64, label %65, label %68

65:                                               ; preds = %58
  %66 = icmp eq ptr %62, inttoptr (i32 -517 to ptr)
  br i1 %66, label %99, label %67

67:                                               ; preds = %65
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %3, ptr noundef nonnull @.str.6) #8
  br label %68

68:                                               ; preds = %67, %58
  %69 = call ptr @extcon_get_extcon_dev(ptr noundef nonnull @.str.7) #7
  %70 = getelementptr inbounds %struct.charger_data, ptr %46, i32 0, i32 4
  store ptr %69, ptr %70, align 4
  %71 = icmp eq ptr %69, null
  %72 = icmp ugt ptr %69, inttoptr (i32 -4096 to ptr)
  %73 = or i1 %71, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %68
  br i1 %71, label %99, label %75

75:                                               ; preds = %74
  %76 = load ptr, ptr %46, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %76, ptr noundef nonnull @.str.8) #8
  br label %77

77:                                               ; preds = %75, %68
  %78 = load ptr, ptr %63, align 4
  %79 = icmp ugt ptr %78, inttoptr (i32 -4096 to ptr)
  br i1 %79, label %99, label %80

80:                                               ; preds = %77
  %81 = load ptr, ptr %70, align 4
  %82 = icmp eq ptr %81, null
  %83 = icmp ugt ptr %81, inttoptr (i32 -4096 to ptr)
  %84 = or i1 %82, %83
  br i1 %84, label %99, label %85

85:                                               ; preds = %80
  %86 = getelementptr inbounds %struct.charger_data, ptr %46, i32 0, i32 6
  store i32 -32, ptr %86, align 4
  %87 = getelementptr inbounds %struct.charger_data, ptr %46, i32 0, i32 6, i32 1
  store volatile ptr %87, ptr %87, align 4
  %88 = getelementptr inbounds %struct.charger_data, ptr %46, i32 0, i32 6, i32 1, i32 1
  store ptr %87, ptr %88, align 4
  %89 = getelementptr inbounds %struct.charger_data, ptr %46, i32 0, i32 6, i32 2
  store ptr @max8997_battery_extcon_evt_worker, ptr %89, align 4
  %90 = call i32 @devm_add_action(ptr noundef %3, ptr noundef nonnull @max8997_battery_extcon_evt_stop_work, ptr noundef nonnull %46) #7
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %93, label %92

92:                                               ; preds = %85
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.9, i32 noundef %90) #8
  br label %99

93:                                               ; preds = %85
  %94 = getelementptr inbounds %struct.charger_data, ptr %46, i32 0, i32 5
  store ptr @max8997_battery_extcon_evt, ptr %94, align 4
  %95 = load ptr, ptr %70, align 4
  %96 = call i32 @devm_extcon_register_notifier_all(ptr noundef %3, ptr noundef %95, ptr noundef %94) #7
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %99, label %98

98:                                               ; preds = %93
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.10) #8
  br label %99

99:                                               ; preds = %98, %93, %92, %80, %77, %74, %65, %55, %45, %44, %33, %28, %15
  %100 = phi i32 [ -22, %33 ], [ %42, %44 ], [ %57, %55 ], [ %90, %92 ], [ %96, %98 ], [ -22, %15 ], [ %26, %28 ], [ -12, %45 ], [ -517, %65 ], [ -517, %74 ], [ 0, %93 ], [ 0, %80 ], [ 0, %77 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #7
  ret i32 %100
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @max8997_update_reg(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_power_supply_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @extcon_get_extcon_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @max8997_battery_extcon_evt_worker(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -32
  %3 = getelementptr i8, ptr %0, i32 -16
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @extcon_get_state(ptr noundef %4, i32 noundef 5) #7
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %19, label %7

7:                                                ; preds = %1
  %8 = tail call i32 @extcon_get_state(ptr noundef %4, i32 noundef 6) #7
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %19, label %10

10:                                               ; preds = %7
  %11 = tail call i32 @extcon_get_state(ptr noundef %4, i32 noundef 9) #7
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %10
  %14 = tail call i32 @extcon_get_state(ptr noundef %4, i32 noundef 10) #7
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %13
  %17 = tail call i32 @extcon_get_state(ptr noundef %4, i32 noundef 7) #7
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %33

19:                                               ; preds = %16, %13, %10, %7, %1
  %20 = phi i32 [ 650000, %16 ], [ 650000, %13 ], [ 650000, %10 ], [ 650000, %7 ], [ 450000, %1 ]
  %21 = getelementptr i8, ptr %0, i32 -20
  %22 = load ptr, ptr %21, align 4
  %23 = tail call i32 @regulator_set_current_limit(ptr noundef %22, i32 noundef %20, i32 noundef %20) #7
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %19
  %26 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.12, i32 noundef %23) #8
  br label %40

27:                                               ; preds = %19
  %28 = load ptr, ptr %21, align 4
  %29 = tail call i32 @regulator_enable(ptr noundef %28) #7
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %40, label %31

31:                                               ; preds = %27
  %32 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.13, i32 noundef %29) #8
  br label %40

33:                                               ; preds = %16
  %34 = getelementptr i8, ptr %0, i32 -20
  %35 = load ptr, ptr %34, align 4
  %36 = tail call i32 @regulator_disable(ptr noundef %35) #7
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %33
  %39 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.14, i32 noundef %36) #8
  br label %40

40:                                               ; preds = %38, %33, %31, %27, %25
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @max8997_battery_extcon_evt_stop_work(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.charger_data, ptr %0, i32 0, i32 6
  %3 = tail call zeroext i1 @cancel_work_sync(ptr noundef %2) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max8997_battery_extcon_evt(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readnone %2) #2 {
  %4 = getelementptr i8, ptr %0, i32 12
  %5 = load ptr, ptr @system_wq, align 4
  %6 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %5, ptr noundef %4) #7
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_extcon_register_notifier_all(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max8997_battery_get_property(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #2 {
  %4 = alloca i8, align 1
  %5 = tail call ptr @power_supply_get_drvdata(ptr noundef %0) #7
  %6 = getelementptr inbounds %struct.charger_data, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.max8997_dev, ptr %7, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #7
  store i8 0, ptr %4, align 1, !annotation !8
  switch i32 %1, label %38 [
    i32 0, label %10
    i32 3, label %22
    i32 4, label %29
  ]

10:                                               ; preds = %3
  store i32 0, ptr %2, align 4
  %11 = call i32 @max8997_read_reg(ptr noundef %9, i8 noundef zeroext 16, ptr noundef nonnull %4) #7
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %38

13:                                               ; preds = %10
  %14 = load i8, ptr %4, align 1
  %15 = zext i8 %14 to i32
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %36

18:                                               ; preds = %13
  %19 = and i32 %15, 2
  %20 = icmp eq i32 %19, 0
  %21 = select i1 %20, i32 2, i32 1
  br label %36

22:                                               ; preds = %3
  store i32 0, ptr %2, align 4
  %23 = call i32 @max8997_read_reg(ptr noundef %9, i8 noundef zeroext 16, ptr noundef nonnull %4) #7
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %38

25:                                               ; preds = %22
  %26 = load i8, ptr %4, align 1
  %27 = and i8 %26, 4
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %36, label %38

29:                                               ; preds = %3
  store i32 0, ptr %2, align 4
  %30 = call i32 @max8997_read_reg(ptr noundef %9, i8 noundef zeroext 16, ptr noundef nonnull %4) #7
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %29
  %33 = load i8, ptr %4, align 1
  %34 = and i8 %33, 2
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %32, %25, %18, %13
  %37 = phi i32 [ 4, %13 ], [ %21, %18 ], [ 1, %25 ], [ 1, %32 ]
  store i32 %37, ptr %2, align 4
  br label %38

38:                                               ; preds = %36, %32, %29, %25, %22, %10, %3
  %39 = phi i32 [ %11, %10 ], [ %23, %22 ], [ %30, %29 ], [ -22, %3 ], [ 0, %32 ], [ 0, %25 ], [ 0, %36 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #7
  ret i32 %39
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @power_supply_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @max8997_read_reg(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @extcon_get_state(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_current_limit(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

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
