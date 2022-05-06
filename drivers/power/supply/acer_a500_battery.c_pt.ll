; ModuleID = '/llk/IR/drivers/power/supply/acer_a500_battery.c_pt.bc'
source_filename = "../drivers/power/supply/acer_a500_battery.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.power_supply_desc = type { ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.battery_register = type { i32, i32 }
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
%struct.a500_battery = type { %struct.delayed_work, ptr, ptr, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.power_supply = type { ptr, ptr, i32, ptr, i32, ptr, ptr, %struct.device, %struct.work_struct, %struct.delayed_work, %struct.spinlock, i8, i8, i8, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__UNIQUE_ID_description168 = internal constant [58 x i8] c"description=Battery gauge driver for Acer Iconia Tab A500\00", section ".modinfo", align 1
@__UNIQUE_ID_author169 = internal constant [42 x i8] c"author=Dmitry Osipenko <digetx@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_alias170 = internal constant [40 x i8] c"alias=platform:acer-a500-iconia-battery\00", section ".modinfo", align 1
@__UNIQUE_ID_license171 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@a500_battery_driver = internal global %struct.platform_driver { ptr @a500_battery_probe, ptr @a500_battery_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @a500_battery_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [25 x i8] c"acer-a500-iconia-battery\00", align 1
@a500_battery_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @a500_battery_suspend, ptr @a500_battery_resume, ptr @a500_battery_suspend, ptr @a500_battery_resume, ptr @a500_battery_suspend, ptr @a500_battery_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"KB930\00", align 1
@a500_battery_desc = internal constant %struct.power_supply_desc { ptr @.str.3, i32 1, ptr null, i32 0, ptr @a500_battery_properties, i32 8, ptr @a500_battery_get_property, ptr null, ptr null, ptr @power_supply_changed, ptr null, i8 0, i32 0 }, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"failed to register battery\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"ec-battery\00", align 1
@a500_battery_properties = internal constant [8 x i32] [i32 47, i32 22, i32 17, i32 3, i32 0, i32 6, i32 52, i32 12], align 4
@ec_data = internal unnamed_addr constant [5 x %struct.battery_register] [%struct.battery_register { i32 47, i32 0 }, %struct.battery_register { i32 12, i32 1 }, %struct.battery_register { i32 17, i32 3 }, %struct.battery_register { i32 22, i32 8 }, %struct.battery_register { i32 52, i32 10 }], align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"%s: invalid property %u\0A\00", align 1
@__func__.a500_battery_get_property = private unnamed_addr constant [26 x i8] c"a500_battery_get_property\00", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_alias170, ptr @__UNIQUE_ID_author169, ptr @__UNIQUE_ID_description168, ptr @__UNIQUE_ID_license171], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @a500_battery_driver, ptr noundef nonnull @__this_module) #7
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @a500_battery_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @a500_battery_probe(ptr noundef %0) #2 {
  %2 = alloca %struct.power_supply_config, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #7
  %3 = getelementptr inbounds i8, ptr %2, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %3, i8 0, i32 20, i1 false)
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %5 = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef 56, i32 noundef 3520) #7
  %6 = icmp eq ptr %5, null
  br i1 %6, label %31, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %5, ptr %8, align 8
  %9 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 25
  %12 = load ptr, ptr %11, align 8
  store ptr %12, ptr %2, align 4
  %13 = getelementptr inbounds %struct.power_supply_config, ptr %2, i32 0, i32 2
  store ptr %5, ptr %13, align 4
  %14 = tail call ptr @dev_get_regmap(ptr noundef %10, ptr noundef nonnull @.str.1) #7
  %15 = getelementptr inbounds %struct.a500_battery, ptr %5, i32 0, i32 2
  store ptr %14, ptr %15, align 4
  %16 = icmp eq ptr %14, null
  br i1 %16, label %31, label %17

17:                                               ; preds = %7
  %18 = call ptr @devm_power_supply_register_no_ws(ptr noundef %4, ptr noundef nonnull @a500_battery_desc, ptr noundef nonnull %2) #7
  %19 = getelementptr inbounds %struct.a500_battery, ptr %5, i32 0, i32 1
  store ptr %18, ptr %19, align 4
  %20 = icmp ugt ptr %18, inttoptr (i32 -4096 to ptr)
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = ptrtoint ptr %18 to i32
  %23 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %4, i32 noundef %22, ptr noundef nonnull @.str.2) #7
  br label %31

24:                                               ; preds = %17
  store i32 -32, ptr %5, align 4
  %25 = getelementptr inbounds %struct.work_struct, ptr %5, i32 0, i32 1
  store volatile ptr %25, ptr %25, align 4
  %26 = getelementptr inbounds %struct.work_struct, ptr %5, i32 0, i32 1, i32 1
  store ptr %25, ptr %26, align 4
  %27 = getelementptr inbounds %struct.work_struct, ptr %5, i32 0, i32 2
  store ptr @a500_battery_poll_work, ptr %27, align 4
  %28 = getelementptr inbounds %struct.delayed_work, ptr %5, i32 0, i32 1
  call void @init_timer_key(ptr noundef %28, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #7
  %29 = load ptr, ptr @system_wq, align 4
  %30 = call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %29, ptr noundef nonnull %5, i32 noundef 100) #7
  br label %31

31:                                               ; preds = %24, %21, %7, %1
  %32 = phi i32 [ %23, %21 ], [ 0, %24 ], [ -12, %1 ], [ -22, %7 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #7
  ret i32 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @a500_battery_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %3) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_regmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_power_supply_register_no_ws(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @a500_battery_poll_work(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  store i32 0, ptr %2, align 4, !annotation !8
  %3 = getelementptr inbounds %struct.a500_battery, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = call i32 @regmap_read(ptr noundef %4, i32 noundef 0, ptr noundef nonnull %2) #7
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = load i32, ptr %2, align 4
  %9 = call i32 @llvm.umin.i32(i32 %8, i32 100) #7
  %10 = getelementptr inbounds %struct.a500_battery, ptr %0, i32 0, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, %9
  br i1 %12, label %13, label %14

13:                                               ; preds = %7, %1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  br label %17

14:                                               ; preds = %7
  store i32 %9, ptr %10, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  %15 = getelementptr inbounds %struct.a500_battery, ptr %0, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  call void @power_supply_changed(ptr noundef %16) #7
  br label %17

17:                                               ; preds = %14, %13
  %18 = load ptr, ptr @system_wq, align 4
  %19 = call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %18, ptr noundef %0, i32 noundef 3000) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @a500_battery_get_property(ptr noundef %0, i32 noundef %1, ptr noundef %2) #2 {
  %4 = alloca i32, align 4
  %5 = tail call ptr @power_supply_get_drvdata(ptr noundef %0) #7
  switch i32 %1, label %43 [
    i32 0, label %6
    i32 6, label %18
    i32 47, label %19
    i32 22, label %36
    i32 17, label %36
    i32 12, label %36
    i32 3, label %36
    i32 52, label %36
  ]

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.a500_battery, ptr %5, i32 0, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = icmp ult i32 %8, 100
  br i1 %9, label %10, label %16

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.a500_battery, ptr %5, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 @power_supply_am_i_supplied(ptr noundef %12) #7
  %14 = icmp eq i32 %13, 0
  %15 = select i1 %14, i32 2, i32 1
  br label %16

16:                                               ; preds = %10, %6
  %17 = phi i32 [ %15, %10 ], [ 4, %6 ]
  store i32 %17, ptr %2, align 4
  br label %67

18:                                               ; preds = %3
  store i32 2, ptr %2, align 4
  br label %67

19:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  store i32 0, ptr %4, align 4, !annotation !8
  %20 = getelementptr inbounds %struct.a500_battery, ptr %5, i32 0, i32 2
  %21 = load ptr, ptr %20, align 4
  %22 = call i32 @regmap_read(ptr noundef %21, i32 noundef 0, ptr noundef nonnull %4) #7
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.a500_battery, ptr %5, i32 0, i32 3
  %26 = load i32, ptr %25, align 4
  br label %34

27:                                               ; preds = %19
  %28 = load i32, ptr %4, align 4
  %29 = call i32 @llvm.umin.i32(i32 %28, i32 100) #7
  %30 = getelementptr inbounds %struct.a500_battery, ptr %5, i32 0, i32 3
  %31 = load i32, ptr %30, align 4
  %32 = icmp eq i32 %31, %29
  br i1 %32, label %34, label %33

33:                                               ; preds = %27
  store i32 %29, ptr %30, align 4
  br label %34

34:                                               ; preds = %33, %27, %24
  %35 = phi i32 [ %26, %24 ], [ %29, %27 ], [ %29, %33 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  store i32 %35, ptr %2, align 4
  br label %67

36:                                               ; preds = %3, %3, %3, %3, %3
  %37 = icmp eq i32 %1, 3
  %38 = select i1 %37, i32 22, i32 %1
  switch i32 %38, label %67 [
    i32 47, label %46
    i32 12, label %39
    i32 17, label %40
    i32 22, label %41
    i32 52, label %42
  ]

39:                                               ; preds = %36
  br label %46

40:                                               ; preds = %36
  br label %46

41:                                               ; preds = %36
  br label %46

42:                                               ; preds = %36
  br label %46

43:                                               ; preds = %3
  %44 = getelementptr inbounds %struct.power_supply, ptr %0, i32 0, i32 7, i32 1
  %45 = load ptr, ptr %44, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.a500_battery_get_property, i32 noundef %1) #8
  br label %67

46:                                               ; preds = %42, %41, %40, %39, %36
  %47 = phi i32 [ 4, %42 ], [ 3, %41 ], [ 2, %40 ], [ 1, %39 ], [ 0, %36 ]
  %48 = getelementptr inbounds %struct.a500_battery, ptr %5, i32 0, i32 2
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr [5 x %struct.battery_register], ptr @ec_data, i32 0, i32 %47, i32 1
  %51 = load i32, ptr %50, align 4
  %52 = tail call i32 @regmap_read(ptr noundef %49, i32 noundef %51, ptr noundef %2) #7
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %67

54:                                               ; preds = %46
  switch i32 %1, label %67 [
    i32 22, label %55
    i32 17, label %55
    i32 12, label %55
    i32 52, label %58
    i32 3, label %61
  ]

55:                                               ; preds = %54, %54, %54
  %56 = load i32, ptr %2, align 4
  %57 = mul i32 %56, 1000
  br label %65

58:                                               ; preds = %54
  %59 = load i32, ptr %2, align 4
  %60 = add i32 %59, -2731
  br label %65

61:                                               ; preds = %54
  %62 = load i32, ptr %2, align 4
  %63 = icmp ne i32 %62, 0
  %64 = zext i1 %63 to i32
  br label %65

65:                                               ; preds = %61, %58, %55
  %66 = phi i32 [ %64, %61 ], [ %60, %58 ], [ %57, %55 ]
  store i32 %66, ptr %2, align 4
  br label %67

67:                                               ; preds = %65, %54, %46, %43, %36, %34, %18, %16
  %68 = phi i32 [ -22, %43 ], [ -61, %46 ], [ 0, %54 ], [ 0, %65 ], [ -61, %36 ], [ 0, %16 ], [ 0, %18 ], [ 0, %34 ]
  ret i32 %68
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @power_supply_changed(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @power_supply_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @power_supply_am_i_supplied(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @a500_battery_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %3) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @a500_battery_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr @system_wq, align 4
  %5 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %4, ptr noundef %3, i32 noundef 100) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

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
