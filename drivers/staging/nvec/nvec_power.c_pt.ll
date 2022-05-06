; ModuleID = '/llk/IR/drivers/staging/nvec/nvec_power.c_pt.bc'
source_filename = "../drivers/staging/nvec/nvec_power.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.power_supply_desc = type { ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.power_supply_config = type { ptr, ptr, ptr, ptr, ptr, i32 }
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
%struct.nvec_power = type { %struct.notifier_block, %struct.delayed_work, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [30 x i8], [30 x i8], [30 x i8] }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.bat_response = type { i8, i8, i8, i8, %union.anon.5 }
%union.anon.5 = type { i16, [28 x i8] }
%struct.power_supply = type { ptr, ptr, i32, ptr, i32, ptr, ptr, %struct.device, %struct.work_struct, %struct.delayed_work, %struct.spinlock, i8, i8, i8, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_nvec_power__166_444_nvec_power_driver_init6 = internal global ptr @nvec_power_driver_init, section ".initcall6.init", align 4
@nvec_power_driver = internal global %struct.platform_driver { ptr @nvec_power_probe, ptr @nvec_power_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_nvec_power_driver_exit = internal global ptr @nvec_power_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author167 = internal constant [55 x i8] c"nvec_power.author=Ilya Petrov <ilya.muromec@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file168 = internal constant [48 x i8] c"nvec_power.file=drivers/staging/nvec/nvec_power\00", section ".modinfo", align 1
@__UNIQUE_ID_license169 = internal constant [23 x i8] c"nvec_power.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description170 = internal constant [50 x i8] c"nvec_power.description=NVEC battery and AC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_alias171 = internal constant [37 x i8] c"nvec_power.alias=platform:nvec-power\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [11 x i8] c"nvec-power\00", align 1
@nvec_psy = internal unnamed_addr global ptr null, align 4
@nvec_psy_desc = internal constant %struct.power_supply_desc { ptr @.str.1, i32 3, ptr null, i32 0, ptr @nvec_power_props, i32 1, ptr @nvec_power_get_property, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0 }, align 4
@nvec_power_supplied_to = internal global [1 x ptr] [ptr @.str.2], align 4
@nvec_bat_psy = internal unnamed_addr global ptr null, align 4
@nvec_bat_psy_desc = internal constant %struct.power_supply_desc { ptr @.str.2, i32 1, ptr null, i32 0, ptr @nvec_battery_props, i32 12, ptr @nvec_battery_get_property, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0 }, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"ac\00", align 1
@nvec_power_props = internal global [1 x i32] [i32 4], align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"battery\00", align 1
@counter = internal unnamed_addr global i32 0, align 4
@bat_iter = internal unnamed_addr constant [4 x i32] [i32 0, i32 1, i32 3, i32 6], align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@nvec_battery_props = internal global [12 x i32] [i32 0, i32 3, i32 47, i32 12, i32 17, i32 22, i32 24, i32 25, i32 26, i32 74, i32 73, i32 6], align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"Li\00", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_alias171, ptr @__UNIQUE_ID_author167, ptr @__UNIQUE_ID_description170, ptr @__UNIQUE_ID_file168, ptr @__UNIQUE_ID_license169, ptr @__exitcall_nvec_power_driver_exit, ptr @__initcall__kmod_nvec_power__166_444_nvec_power_driver_init6, ptr @nvec_power_driver_exit], section "llvm.metadata"
@switch.table.nvec_power_bat_notifier = private unnamed_addr constant [3 x i32] [i32 3, i32 1, i32 2], align 4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @nvec_power_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @nvec_power_driver, ptr noundef null) #8
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @nvec_power_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @nvec_power_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvec_power_probe(ptr noundef %0) #2 {
  %2 = alloca [2 x i8], align 2
  %3 = alloca %struct.power_supply_config, align 4
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %3, i8 0, i32 24, i1 false)
  %9 = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef 208, i32 noundef 2304) #8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %52, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %9, ptr %12, align 8
  %13 = getelementptr inbounds %struct.nvec_power, ptr %9, i32 0, i32 2
  store ptr %8, ptr %13, align 4
  %14 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  switch i32 %15, label %52 [
    i32 0, label %16
    i32 1, label %26
  ]

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.power_supply_config, ptr %3, i32 0, i32 4
  store ptr @nvec_power_supplied_to, ptr %17, align 4
  %18 = getelementptr inbounds %struct.power_supply_config, ptr %3, i32 0, i32 5
  store i32 1, ptr %18, align 4
  store ptr @nvec_power_notifier, ptr %9, align 4
  %19 = getelementptr inbounds %struct.nvec_power, ptr %9, i32 0, i32 1
  store i32 -32, ptr %19, align 4
  %20 = getelementptr inbounds %struct.nvec_power, ptr %9, i32 0, i32 1, i32 0, i32 1
  store volatile ptr %20, ptr %20, align 4
  %21 = getelementptr inbounds %struct.nvec_power, ptr %9, i32 0, i32 1, i32 0, i32 1, i32 1
  store ptr %20, ptr %21, align 4
  %22 = getelementptr inbounds %struct.nvec_power, ptr %9, i32 0, i32 1, i32 0, i32 2
  store ptr @nvec_power_poll, ptr %22, align 4
  %23 = getelementptr inbounds %struct.nvec_power, ptr %9, i32 0, i32 1, i32 1
  tail call void @init_timer_key(ptr noundef %23, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #8
  %24 = load ptr, ptr @system_wq, align 4
  %25 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %24, ptr noundef %19, i32 noundef 500) #8
  br label %27

26:                                               ; preds = %11
  store ptr @nvec_power_bat_notifier, ptr %9, align 4
  br label %27

27:                                               ; preds = %26, %16
  %28 = phi ptr [ @nvec_bat_psy, %26 ], [ @nvec_psy, %16 ]
  %29 = phi ptr [ @nvec_bat_psy_desc, %26 ], [ @nvec_psy_desc, %16 ]
  %30 = tail call i32 @nvec_register_notifier(ptr noundef %8, ptr noundef nonnull %9, i32 noundef 1) #8
  %31 = load i32, ptr %14, align 4
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %33, label %47

33:                                               ; preds = %27
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #8
  store i16 1794, ptr %2, align 2
  %34 = getelementptr inbounds [2 x i8], ptr %2, i32 0, i32 1
  %35 = load ptr, ptr %13, align 4
  %36 = call i32 @nvec_write_async(ptr noundef %35, ptr noundef nonnull %2, i16 noundef signext 2) #8
  store i8 8, ptr %34, align 1
  %37 = load ptr, ptr %13, align 4
  %38 = call i32 @nvec_write_async(ptr noundef %37, ptr noundef nonnull %2, i16 noundef signext 2) #8
  store i8 9, ptr %34, align 1
  %39 = load ptr, ptr %13, align 4
  %40 = call i32 @nvec_write_async(ptr noundef %39, ptr noundef nonnull %2, i16 noundef signext 2) #8
  store i8 11, ptr %34, align 1
  %41 = load ptr, ptr %13, align 4
  %42 = call i32 @nvec_write_async(ptr noundef %41, ptr noundef nonnull %2, i16 noundef signext 2) #8
  store i8 12, ptr %34, align 1
  %43 = load ptr, ptr %13, align 4
  %44 = call i32 @nvec_write_async(ptr noundef %43, ptr noundef nonnull %2, i16 noundef signext 2) #8
  store i8 13, ptr %34, align 1
  %45 = load ptr, ptr %13, align 4
  %46 = call i32 @nvec_write_async(ptr noundef %45, ptr noundef nonnull %2, i16 noundef signext 2) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #8
  br label %47

47:                                               ; preds = %33, %27
  %48 = call ptr @power_supply_register(ptr noundef %4, ptr noundef nonnull %29, ptr noundef nonnull %3) #8
  store ptr %48, ptr %28, align 4
  %49 = icmp ugt ptr %48, inttoptr (i32 -4096 to ptr)
  %50 = ptrtoint ptr %48 to i32
  %51 = select i1 %49, i32 %50, i32 0
  br label %52

52:                                               ; preds = %47, %11, %1
  %53 = phi i32 [ %51, %47 ], [ -12, %1 ], [ -19, %11 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #8
  ret i32 %53
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvec_power_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.nvec_power, ptr %3, i32 0, i32 1
  %5 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %4) #8
  %6 = getelementptr inbounds %struct.nvec_power, ptr %3, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @nvec_unregister_notifier(ptr noundef %7, ptr noundef %3) #8
  %9 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  switch i32 %10, label %15 [
    i32 0, label %12
    i32 1, label %11
  ]

11:                                               ; preds = %1
  br label %12

12:                                               ; preds = %11, %1
  %13 = phi ptr [ @nvec_bat_psy, %11 ], [ @nvec_psy, %1 ]
  %14 = load ptr, ptr %13, align 4
  tail call void @power_supply_unregister(ptr noundef %14) #8
  br label %15

15:                                               ; preds = %12, %1
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvec_power_notifier(ptr nocapture noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) #2 {
  %4 = icmp eq i32 %1, 1
  br i1 %4, label %5, label %18

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.bat_response, ptr %2, i32 0, i32 2
  %7 = load i8, ptr %6, align 2
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %18

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.nvec_power, ptr %0, i32 0, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.bat_response, ptr %2, i32 0, i32 4
  %13 = load i16, ptr %12, align 2
  %14 = zext i16 %13 to i32
  %15 = icmp eq i32 %11, %14
  br i1 %15, label %18, label %16

16:                                               ; preds = %9
  store i32 %14, ptr %10, align 4
  %17 = load ptr, ptr @nvec_psy, align 4
  tail call void @power_supply_changed(ptr noundef %17) #8
  br label %18

18:                                               ; preds = %16, %9, %5, %3
  %19 = phi i32 [ 0, %3 ], [ 32769, %16 ], [ 32769, %9 ], [ 1, %5 ]
  ret i32 %19
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nvec_power_poll(ptr noundef %0) #2 {
  %2 = alloca [2 x i8], align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #8
  store i16 1, ptr %2, align 2
  %3 = load i32, ptr @counter, align 4
  %4 = icmp ugt i32 %3, 3
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  store i32 0, ptr @counter, align 4
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr i8, ptr %0, i32 44
  %8 = load ptr, ptr %7, align 4
  %9 = call i32 @nvec_write_async(ptr noundef %8, ptr noundef nonnull %2, i16 noundef signext 2) #8
  call void @msleep(i32 noundef 100) #8
  store i8 2, ptr %2, align 2
  %10 = load i32, ptr @counter, align 4
  %11 = add i32 %10, 1
  store i32 %11, ptr @counter, align 4
  %12 = getelementptr [4 x i32], ptr @bat_iter, i32 0, i32 %10
  %13 = load i32, ptr %12, align 4
  %14 = trunc i32 %13 to i8
  %15 = getelementptr inbounds [2 x i8], ptr %2, i32 0, i32 1
  store i8 %14, ptr %15, align 1
  %16 = load ptr, ptr %7, align 4
  %17 = call i32 @nvec_write_async(ptr noundef %16, ptr noundef nonnull %2, i16 noundef signext 2) #8
  %18 = load ptr, ptr @system_wq, align 4
  %19 = call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %18, ptr noundef %0, i32 noundef 500) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvec_power_bat_notifier(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) #2 {
  %4 = icmp eq i32 %1, 2
  br i1 %4, label %5, label %135

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.bat_response, ptr %2, i32 0, i32 2
  %7 = load i8, ptr %6, align 2
  switch i8 %7, label %135 [
    i8 0, label %8
    i8 1, label %43
    i8 2, label %49
    i8 3, label %55
    i8 4, label %61
    i8 6, label %67
    i8 7, label %73
    i8 8, label %79
    i8 9, label %85
    i8 10, label %91
    i8 11, label %97
    i8 12, label %108
    i8 13, label %119
  ]

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.bat_response, ptr %2, i32 0, i32 4
  %10 = load i8, ptr %9, align 2
  %11 = and i8 %10, 1
  %12 = icmp eq i8 %11, 0
  %13 = getelementptr inbounds %struct.nvec_power, ptr %0, i32 0, i32 4
  %14 = load i32, ptr %13, align 4
  br i1 %12, label %23, label %15

15:                                               ; preds = %8
  %16 = icmp eq i32 %14, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %15
  tail call fastcc void @get_bat_mfg_data(ptr noundef %0)
  br label %18

18:                                               ; preds = %17, %15
  store i32 1, ptr %13, align 4
  %19 = load i8, ptr %9, align 2
  %20 = lshr i8 %19, 1
  %21 = and i8 %20, 3
  %22 = icmp eq i8 %21, 3
  br i1 %22, label %34, label %30

23:                                               ; preds = %8
  %24 = icmp eq i32 %14, 1
  store i32 0, ptr %13, align 4
  %25 = getelementptr inbounds %struct.nvec_power, ptr %0, i32 0, i32 5
  store i32 0, ptr %25, align 4
  %26 = getelementptr [30 x i8], ptr %9, i32 0, i32 1
  %27 = load i8, ptr %26, align 1
  %28 = zext i8 %27 to i32
  %29 = getelementptr inbounds %struct.nvec_power, ptr %0, i32 0, i32 15
  store i32 %28, ptr %29, align 4
  br i1 %24, label %41, label %135

30:                                               ; preds = %18
  %31 = zext i8 %21 to i32
  %32 = getelementptr inbounds [3 x i32], ptr @switch.table.nvec_power_bat_notifier, i32 0, i32 %31
  %33 = load i32, ptr %32, align 4
  br label %34

34:                                               ; preds = %30, %18
  %35 = phi i32 [ %33, %30 ], [ 0, %18 ]
  %36 = getelementptr inbounds %struct.nvec_power, ptr %0, i32 0, i32 5
  store i32 %35, ptr %36, align 4
  %37 = getelementptr [30 x i8], ptr %9, i32 0, i32 1
  %38 = load i8, ptr %37, align 1
  %39 = zext i8 %38 to i32
  %40 = getelementptr inbounds %struct.nvec_power, ptr %0, i32 0, i32 15
  store i32 %39, ptr %40, align 4
  br i1 %16, label %41, label %135

41:                                               ; preds = %34, %23
  %42 = load ptr, ptr @nvec_bat_psy, align 4
  tail call void @power_supply_changed(ptr noundef %42) #8
  br label %135

43:                                               ; preds = %5
  %44 = getelementptr inbounds %struct.bat_response, ptr %2, i32 0, i32 4
  %45 = load i16, ptr %44, align 2
  %46 = zext i16 %45 to i32
  %47 = mul nuw nsw i32 %46, 1000
  %48 = getelementptr inbounds %struct.nvec_power, ptr %0, i32 0, i32 6
  store i32 %47, ptr %48, align 4
  br label %135

49:                                               ; preds = %5
  %50 = getelementptr inbounds %struct.bat_response, ptr %2, i32 0, i32 4
  %51 = load i16, ptr %50, align 2
  %52 = zext i16 %51 to i32
  %53 = mul nuw nsw i32 %52, 3600
  %54 = getelementptr inbounds %struct.nvec_power, ptr %0, i32 0, i32 9
  store i32 %53, ptr %54, align 4
  br label %135

55:                                               ; preds = %5
  %56 = getelementptr inbounds %struct.bat_response, ptr %2, i32 0, i32 4
  %57 = load i16, ptr %56, align 2
  %58 = sext i16 %57 to i32
  %59 = mul nsw i32 %58, 1000
  %60 = getelementptr inbounds %struct.nvec_power, ptr %0, i32 0, i32 7
  store i32 %59, ptr %60, align 4
  br label %135

61:                                               ; preds = %5
  %62 = getelementptr inbounds %struct.bat_response, ptr %2, i32 0, i32 4
  %63 = load i16, ptr %62, align 2
  %64 = sext i16 %63 to i32
  %65 = mul nsw i32 %64, 1000
  %66 = getelementptr inbounds %struct.nvec_power, ptr %0, i32 0, i32 8
  store i32 %65, ptr %66, align 4
  br label %135

67:                                               ; preds = %5
  %68 = getelementptr inbounds %struct.bat_response, ptr %2, i32 0, i32 4
  %69 = load i16, ptr %68, align 2
  %70 = zext i16 %69 to i32
  %71 = mul nuw nsw i32 %70, 1000
  %72 = getelementptr inbounds %struct.nvec_power, ptr %0, i32 0, i32 13
  store i32 %71, ptr %72, align 4
  br label %135

73:                                               ; preds = %5
  %74 = getelementptr inbounds %struct.bat_response, ptr %2, i32 0, i32 4
  %75 = load i16, ptr %74, align 2
  %76 = zext i16 %75 to i32
  %77 = mul nuw nsw i32 %76, 1000
  %78 = getelementptr inbounds %struct.nvec_power, ptr %0, i32 0, i32 11
  store i32 %77, ptr %78, align 4
  br label %135

79:                                               ; preds = %5
  %80 = getelementptr inbounds %struct.bat_response, ptr %2, i32 0, i32 4
  %81 = load i16, ptr %80, align 2
  %82 = zext i16 %81 to i32
  %83 = mul nuw nsw i32 %82, 1000
  %84 = getelementptr inbounds %struct.nvec_power, ptr %0, i32 0, i32 10
  store i32 %83, ptr %84, align 4
  br label %135

85:                                               ; preds = %5
  %86 = getelementptr inbounds %struct.bat_response, ptr %2, i32 0, i32 4
  %87 = load i16, ptr %86, align 2
  %88 = zext i16 %87 to i32
  %89 = mul nuw nsw i32 %88, 1000
  %90 = getelementptr inbounds %struct.nvec_power, ptr %0, i32 0, i32 12
  store i32 %89, ptr %90, align 4
  br label %135

91:                                               ; preds = %5
  %92 = getelementptr inbounds %struct.bat_response, ptr %2, i32 0, i32 4
  %93 = load i16, ptr %92, align 2
  %94 = zext i16 %93 to i32
  %95 = add nsw i32 %94, -2732
  %96 = getelementptr inbounds %struct.nvec_power, ptr %0, i32 0, i32 14
  store i32 %95, ptr %96, align 4
  br label %135

97:                                               ; preds = %5
  %98 = getelementptr inbounds %struct.nvec_power, ptr %0, i32 0, i32 17
  %99 = getelementptr inbounds %struct.bat_response, ptr %2, i32 0, i32 4
  %100 = getelementptr inbounds %struct.bat_response, ptr %2, i32 0, i32 1
  %101 = load i8, ptr %100, align 1
  %102 = zext i8 %101 to i32
  %103 = add nsw i32 %102, -2
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %98, ptr align 2 %99, i32 %103, i1 false)
  %104 = load i8, ptr %100, align 1
  %105 = zext i8 %104 to i32
  %106 = add nsw i32 %105, -2
  %107 = getelementptr %struct.nvec_power, ptr %0, i32 0, i32 18, i32 %106
  store i8 0, ptr %107, align 1
  br label %135

108:                                              ; preds = %5
  %109 = getelementptr inbounds %struct.nvec_power, ptr %0, i32 0, i32 18
  %110 = getelementptr inbounds %struct.bat_response, ptr %2, i32 0, i32 4
  %111 = getelementptr inbounds %struct.bat_response, ptr %2, i32 0, i32 1
  %112 = load i8, ptr %111, align 1
  %113 = zext i8 %112 to i32
  %114 = add nsw i32 %113, -2
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 2 %109, ptr align 2 %110, i32 %114, i1 false)
  %115 = load i8, ptr %111, align 1
  %116 = zext i8 %115 to i32
  %117 = add nsw i32 %116, -2
  %118 = getelementptr %struct.nvec_power, ptr %0, i32 0, i32 18, i32 %117
  store i8 0, ptr %118, align 1
  br label %135

119:                                              ; preds = %5
  %120 = getelementptr inbounds %struct.nvec_power, ptr %0, i32 0, i32 19
  %121 = getelementptr inbounds %struct.bat_response, ptr %2, i32 0, i32 4
  %122 = getelementptr inbounds %struct.bat_response, ptr %2, i32 0, i32 1
  %123 = load i8, ptr %122, align 1
  %124 = zext i8 %123 to i32
  %125 = add nsw i32 %124, -2
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %120, ptr align 2 %121, i32 %125, i1 false)
  %126 = load i8, ptr %122, align 1
  %127 = zext i8 %126 to i32
  %128 = add nsw i32 %127, -2
  %129 = getelementptr %struct.nvec_power, ptr %0, i32 0, i32 19, i32 %128
  store i8 0, ptr %129, align 1
  %130 = tail call i32 @strncmp(ptr noundef %120, ptr noundef nonnull dereferenceable(3) @.str.3, i32 noundef 30)
  %131 = icmp eq i32 %130, 0
  %132 = getelementptr inbounds %struct.nvec_power, ptr %0, i32 0, i32 16
  br i1 %131, label %133, label %134

133:                                              ; preds = %119
  store i32 2, ptr %132, align 4
  br label %135

134:                                              ; preds = %119
  store i32 0, ptr %132, align 4
  br label %135

135:                                              ; preds = %134, %133, %108, %97, %91, %85, %79, %73, %67, %61, %55, %49, %43, %41, %34, %23, %5, %3
  %136 = phi i32 [ 0, %3 ], [ 32769, %5 ], [ 32769, %133 ], [ 32769, %134 ], [ 32769, %34 ], [ 32769, %41 ], [ 32769, %108 ], [ 32769, %97 ], [ 32769, %91 ], [ 32769, %85 ], [ 32769, %79 ], [ 32769, %73 ], [ 32769, %67 ], [ 32769, %61 ], [ 32769, %55 ], [ 32769, %49 ], [ 32769, %43 ], [ 32769, %23 ]
  ret i32 %136
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvec_register_notifier(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @get_bat_mfg_data(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = alloca [2 x i8], align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #8
  store i16 1794, ptr %2, align 2
  %3 = getelementptr inbounds [2 x i8], ptr %2, i32 0, i32 1
  %4 = getelementptr inbounds %struct.nvec_power, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = call i32 @nvec_write_async(ptr noundef %5, ptr noundef nonnull %2, i16 noundef signext 2) #8
  store i8 8, ptr %3, align 1
  %7 = load ptr, ptr %4, align 4
  %8 = call i32 @nvec_write_async(ptr noundef %7, ptr noundef nonnull %2, i16 noundef signext 2) #8
  store i8 9, ptr %3, align 1
  %9 = load ptr, ptr %4, align 4
  %10 = call i32 @nvec_write_async(ptr noundef %9, ptr noundef nonnull %2, i16 noundef signext 2) #8
  store i8 11, ptr %3, align 1
  %11 = load ptr, ptr %4, align 4
  %12 = call i32 @nvec_write_async(ptr noundef %11, ptr noundef nonnull %2, i16 noundef signext 2) #8
  store i8 12, ptr %3, align 1
  %13 = load ptr, ptr %4, align 4
  %14 = call i32 @nvec_write_async(ptr noundef %13, ptr noundef nonnull %2, i16 noundef signext 2) #8
  store i8 13, ptr %3, align 1
  %15 = load ptr, ptr %4, align 4
  %16 = call i32 @nvec_write_async(ptr noundef %15, ptr noundef nonnull %2, i16 noundef signext 2) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @power_supply_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @nvec_power_get_property(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #6 {
  %4 = icmp eq i32 %1, 4
  br i1 %4, label %5, label %12

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.power_supply, ptr %0, i32 0, i32 7, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 8
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.nvec_power, ptr %9, i32 0, i32 3
  %11 = load i32, ptr %10, align 4
  store i32 %11, ptr %2, align 4
  br label %12

12:                                               ; preds = %5, %3
  %13 = phi i32 [ 0, %5 ], [ -22, %3 ]
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @power_supply_changed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvec_write_async(ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @nvec_battery_get_property(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #6 {
  %4 = getelementptr inbounds %struct.power_supply, ptr %0, i32 0, i32 7, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  switch i32 %1, label %51 [
    i32 0, label %8
    i32 47, label %11
    i32 3, label %14
    i32 12, label %17
    i32 17, label %20
    i32 18, label %23
    i32 60, label %26
    i32 22, label %29
    i32 24, label %32
    i32 25, label %35
    i32 26, label %38
    i32 52, label %41
    i32 74, label %44
    i32 73, label %46
    i32 6, label %48
  ]

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.nvec_power, ptr %7, i32 0, i32 5
  %10 = load i32, ptr %9, align 4
  store i32 %10, ptr %2, align 4
  br label %51

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.nvec_power, ptr %7, i32 0, i32 15
  %13 = load i32, ptr %12, align 4
  store i32 %13, ptr %2, align 4
  br label %51

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.nvec_power, ptr %7, i32 0, i32 4
  %16 = load i32, ptr %15, align 4
  store i32 %16, ptr %2, align 4
  br label %51

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.nvec_power, ptr %7, i32 0, i32 6
  %19 = load i32, ptr %18, align 4
  store i32 %19, ptr %2, align 4
  br label %51

20:                                               ; preds = %3
  %21 = getelementptr inbounds %struct.nvec_power, ptr %7, i32 0, i32 7
  %22 = load i32, ptr %21, align 4
  store i32 %22, ptr %2, align 4
  br label %51

23:                                               ; preds = %3
  %24 = getelementptr inbounds %struct.nvec_power, ptr %7, i32 0, i32 8
  %25 = load i32, ptr %24, align 4
  store i32 %25, ptr %2, align 4
  br label %51

26:                                               ; preds = %3
  %27 = getelementptr inbounds %struct.nvec_power, ptr %7, i32 0, i32 9
  %28 = load i32, ptr %27, align 4
  store i32 %28, ptr %2, align 4
  br label %51

29:                                               ; preds = %3
  %30 = getelementptr inbounds %struct.nvec_power, ptr %7, i32 0, i32 10
  %31 = load i32, ptr %30, align 4
  store i32 %31, ptr %2, align 4
  br label %51

32:                                               ; preds = %3
  %33 = getelementptr inbounds %struct.nvec_power, ptr %7, i32 0, i32 11
  %34 = load i32, ptr %33, align 4
  store i32 %34, ptr %2, align 4
  br label %51

35:                                               ; preds = %3
  %36 = getelementptr inbounds %struct.nvec_power, ptr %7, i32 0, i32 12
  %37 = load i32, ptr %36, align 4
  store i32 %37, ptr %2, align 4
  br label %51

38:                                               ; preds = %3
  %39 = getelementptr inbounds %struct.nvec_power, ptr %7, i32 0, i32 13
  %40 = load i32, ptr %39, align 4
  store i32 %40, ptr %2, align 4
  br label %51

41:                                               ; preds = %3
  %42 = getelementptr inbounds %struct.nvec_power, ptr %7, i32 0, i32 14
  %43 = load i32, ptr %42, align 4
  store i32 %43, ptr %2, align 4
  br label %51

44:                                               ; preds = %3
  %45 = getelementptr inbounds %struct.nvec_power, ptr %7, i32 0, i32 17
  store ptr %45, ptr %2, align 4
  br label %51

46:                                               ; preds = %3
  %47 = getelementptr inbounds %struct.nvec_power, ptr %7, i32 0, i32 18
  store ptr %47, ptr %2, align 4
  br label %51

48:                                               ; preds = %3
  %49 = getelementptr inbounds %struct.nvec_power, ptr %7, i32 0, i32 16
  %50 = load i32, ptr %49, align 4
  store i32 %50, ptr %2, align 4
  br label %51

51:                                               ; preds = %48, %46, %44, %41, %38, %35, %32, %29, %26, %23, %20, %17, %14, %11, %8, %3
  %52 = phi i32 [ -22, %3 ], [ 0, %48 ], [ 0, %46 ], [ 0, %44 ], [ 0, %41 ], [ 0, %38 ], [ 0, %35 ], [ 0, %32 ], [ 0, %29 ], [ 0, %26 ], [ 0, %23 ], [ 0, %20 ], [ 0, %17 ], [ 0, %14 ], [ 0, %11 ], [ 0, %8 ]
  ret i32 %52
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvec_unregister_notifier(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @power_supply_unregister(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }

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
