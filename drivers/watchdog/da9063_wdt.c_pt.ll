; ModuleID = '/llk/IR/drivers/watchdog/da9063_wdt.c_pt.bc'
source_filename = "../drivers/watchdog/da9063_wdt.c"
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
%struct.watchdog_info = type { i32, i32, [32 x i8] }
%struct.watchdog_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.watchdog_device = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, ptr, ptr, i32, %struct.list_head }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.da9063 = type { ptr, i32, i8, i32, ptr, i32, i32, ptr }

@__UNIQUE_ID_author247 = internal constant [55 x i8] c"author=Mariusz Wojtasik <mariusz.wojtasik@diasemi.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description248 = internal constant [46 x i8] c"description=Watchdog driver for Dialog DA9063\00", section ".modinfo", align 1
@__UNIQUE_ID_license249 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias250 = internal constant [31 x i8] c"alias=platform:da9063-watchdog\00", section ".modinfo", align 1
@da9063_wdt_driver = internal global %struct.platform_driver { ptr @da9063_wdt_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [16 x i8] c"da9063-watchdog\00", align 1
@da9063_watchdog_info = internal constant %struct.watchdog_info { i32 32896, i32 0, [32 x i8] c"DA9063 Watchdog\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, align 4
@da9063_watchdog_ops = internal constant %struct.watchdog_ops { ptr @__this_module, ptr @da9063_wdt_start, ptr @da9063_wdt_stop, ptr @da9063_wdt_ping, ptr null, ptr @da9063_wdt_set_timeout, ptr null, ptr null, ptr @da9063_wdt_restart, ptr null }, align 4
@wdt_timeout = internal unnamed_addr constant [8 x i32] [i32 0, i32 2, i32 4, i32 8, i32 16, i32 32, i32 65, i32 131], align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Watchdog failed to start (err = %d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"Watchdog failed to stop (err = %d)\0A\00", align 1
@system_state = external dso_local local_unnamed_addr global i32, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"Failed to ping the watchdog (err = %d)\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"Failed to shutdown (err = %d)\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.5 = private unnamed_addr constant [43 x i8] c"Failed to set watchdog timeout (err = %d)\0A\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_alias250, ptr @__UNIQUE_ID_author247, ptr @__UNIQUE_ID_description248, ptr @__UNIQUE_ID_license249], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @da9063_wdt_driver, ptr noundef nonnull @__this_module) #5
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @da9063_wdt_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @da9063_wdt_probe(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %64, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %64, label %11

11:                                               ; preds = %7
  %12 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 108, i32 noundef 3520) #5
  %13 = icmp eq ptr %12, null
  br i1 %13, label %64, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.watchdog_device, ptr %12, i32 0, i32 3
  store ptr @da9063_watchdog_info, ptr %15, align 4
  %16 = getelementptr inbounds %struct.watchdog_device, ptr %12, i32 0, i32 4
  store ptr @da9063_watchdog_ops, ptr %16, align 4
  %17 = getelementptr inbounds %struct.watchdog_device, ptr %12, i32 0, i32 9
  store i32 2, ptr %17, align 4
  %18 = getelementptr inbounds %struct.watchdog_device, ptr %12, i32 0, i32 10
  store i32 131, ptr %18, align 4
  %19 = getelementptr inbounds %struct.watchdog_device, ptr %12, i32 0, i32 11
  store i32 256, ptr %19, align 4
  %20 = getelementptr inbounds %struct.watchdog_device, ptr %12, i32 0, i32 1
  store ptr %3, ptr %20, align 4
  %21 = getelementptr inbounds %struct.watchdog_device, ptr %12, i32 0, i32 18
  store i32 0, ptr %21, align 4
  tail call void @watchdog_set_restart_priority(ptr noundef nonnull %12, i32 noundef 128) #5
  %22 = getelementptr inbounds %struct.watchdog_device, ptr %12, i32 0, i32 16
  store ptr %9, ptr %22, align 4
  %23 = getelementptr inbounds %struct.watchdog_device, ptr %12, i32 0, i32 7
  store i32 8, ptr %23, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #5
  store i32 0, ptr %2, align 4, !annotation !8
  %24 = getelementptr inbounds %struct.da9063, ptr %9, i32 0, i32 4
  %25 = load ptr, ptr %24, align 4
  %26 = call i32 @regmap_read(ptr noundef %25, i32 noundef 17, ptr noundef nonnull %2) #5
  %27 = load i32, ptr %2, align 4
  %28 = and i32 %27, 7
  %29 = getelementptr [8 x i32], ptr @wdt_timeout, i32 0, i32 %28
  %30 = load i32, ptr %29, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #5
  %31 = icmp eq i32 %28, 0
  br i1 %31, label %58, label %32

32:                                               ; preds = %14
  store i32 %30, ptr %23, align 4
  %33 = call i32 @watchdog_init_timeout(ptr noundef nonnull %12, i32 noundef 0, ptr noundef %3) #5
  %34 = load i32, ptr %23, align 4
  %35 = call i32 @da9063_wdt_set_timeout(ptr noundef nonnull %12, i32 noundef %34)
  %36 = load i32, ptr %23, align 4
  %37 = load ptr, ptr %24, align 4
  %38 = call i32 @regmap_update_bits_base(ptr noundef %37, i32 noundef 17, i32 noundef 7, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %57

40:                                               ; preds = %32
  call void @usleep_range_state(i32 noundef 150, i32 noundef 300, i32 noundef 2) #5
  %41 = icmp ugt i32 %36, 2
  br i1 %41, label %42, label %53

42:                                               ; preds = %40
  %43 = icmp ugt i32 %36, 4
  br i1 %43, label %44, label %53

44:                                               ; preds = %42
  %45 = icmp ugt i32 %36, 8
  br i1 %45, label %46, label %53

46:                                               ; preds = %44
  %47 = icmp ugt i32 %36, 16
  br i1 %47, label %48, label %53

48:                                               ; preds = %46
  %49 = icmp ugt i32 %36, 32
  br i1 %49, label %50, label %53

50:                                               ; preds = %48
  %51 = icmp ugt i32 %36, 65
  %52 = select i1 %51, i32 7, i32 6
  br label %53

53:                                               ; preds = %50, %48, %46, %44, %42, %40
  %54 = phi i32 [ 1, %40 ], [ 2, %42 ], [ 3, %44 ], [ 4, %46 ], [ 5, %48 ], [ %52, %50 ]
  %55 = load ptr, ptr %24, align 4
  %56 = call i32 @regmap_update_bits_base(ptr noundef %55, i32 noundef 17, i32 noundef 7, i32 noundef %54, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %57

57:                                               ; preds = %53, %32
  call void @_set_bit(i32 noundef 3, ptr noundef %21) #5
  br label %62

58:                                               ; preds = %14
  %59 = call i32 @watchdog_init_timeout(ptr noundef nonnull %12, i32 noundef 0, ptr noundef %3) #5
  %60 = load i32, ptr %23, align 4
  %61 = call i32 @da9063_wdt_set_timeout(ptr noundef nonnull %12, i32 noundef %60)
  br label %62

62:                                               ; preds = %58, %57
  %63 = call i32 @devm_watchdog_register_device(ptr noundef %3, ptr noundef nonnull %12) #5
  br label %64

64:                                               ; preds = %62, %11, %7, %1
  %65 = phi i32 [ %63, %62 ], [ -22, %1 ], [ -22, %7 ], [ -12, %11 ]
  ret i32 %65
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @watchdog_set_restart_priority(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @watchdog_init_timeout(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @da9063_wdt_set_timeout(ptr noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 16
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 18
  %6 = load volatile i32, ptr %5, align 4
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %35, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.da9063, ptr %4, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 17, i32 noundef 7, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %32

14:                                               ; preds = %9
  tail call void @usleep_range_state(i32 noundef 150, i32 noundef 300, i32 noundef 2) #5
  %15 = icmp ugt i32 %1, 2
  br i1 %15, label %16, label %27

16:                                               ; preds = %14
  %17 = icmp ugt i32 %1, 4
  br i1 %17, label %18, label %27

18:                                               ; preds = %16
  %19 = icmp ugt i32 %1, 8
  br i1 %19, label %20, label %27

20:                                               ; preds = %18
  %21 = icmp ugt i32 %1, 16
  br i1 %21, label %22, label %27

22:                                               ; preds = %20
  %23 = icmp ugt i32 %1, 32
  br i1 %23, label %24, label %27

24:                                               ; preds = %22
  %25 = icmp ugt i32 %1, 65
  %26 = select i1 %25, i32 7, i32 6
  br label %27

27:                                               ; preds = %24, %22, %20, %18, %16, %14
  %28 = phi i32 [ 1, %14 ], [ 2, %16 ], [ 3, %18 ], [ 4, %20 ], [ 5, %22 ], [ %26, %24 ]
  %29 = load ptr, ptr %10, align 4
  %30 = tail call i32 @regmap_update_bits_base(ptr noundef %29, i32 noundef 17, i32 noundef 7, i32 noundef %28, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %27, %9
  %33 = phi i32 [ %30, %27 ], [ %12, %9 ]
  %34 = load ptr, ptr %4, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.5, i32 noundef %33) #6
  br label %53

35:                                               ; preds = %27, %2
  %36 = icmp ugt i32 %1, 2
  br i1 %36, label %37, label %48

37:                                               ; preds = %35
  %38 = icmp ugt i32 %1, 4
  br i1 %38, label %39, label %48

39:                                               ; preds = %37
  %40 = icmp ugt i32 %1, 8
  br i1 %40, label %41, label %48

41:                                               ; preds = %39
  %42 = icmp ugt i32 %1, 16
  br i1 %42, label %43, label %48

43:                                               ; preds = %41
  %44 = icmp ugt i32 %1, 32
  br i1 %44, label %45, label %48

45:                                               ; preds = %43
  %46 = icmp ugt i32 %1, 65
  %47 = select i1 %46, i32 7, i32 6
  br label %48

48:                                               ; preds = %45, %43, %41, %39, %37, %35
  %49 = phi i32 [ 1, %35 ], [ 2, %37 ], [ 3, %39 ], [ 4, %41 ], [ 5, %43 ], [ %47, %45 ]
  %50 = getelementptr [8 x i32], ptr @wdt_timeout, i32 0, i32 %49
  %51 = load i32, ptr %50, align 4
  %52 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 7
  store i32 %51, ptr %52, align 4
  br label %53

53:                                               ; preds = %48, %32
  %54 = phi i32 [ 0, %48 ], [ %33, %32 ]
  ret i32 %54
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_watchdog_register_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @da9063_wdt_start(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 16
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 7
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.da9063, ptr %3, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 17, i32 noundef 7, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %28

10:                                               ; preds = %1
  tail call void @usleep_range_state(i32 noundef 150, i32 noundef 300, i32 noundef 2) #5
  %11 = icmp ugt i32 %5, 2
  br i1 %11, label %12, label %23

12:                                               ; preds = %10
  %13 = icmp ugt i32 %5, 4
  br i1 %13, label %14, label %23

14:                                               ; preds = %12
  %15 = icmp ugt i32 %5, 8
  br i1 %15, label %16, label %23

16:                                               ; preds = %14
  %17 = icmp ugt i32 %5, 16
  br i1 %17, label %18, label %23

18:                                               ; preds = %16
  %19 = icmp ugt i32 %5, 32
  br i1 %19, label %20, label %23

20:                                               ; preds = %18
  %21 = icmp ugt i32 %5, 65
  %22 = select i1 %21, i32 7, i32 6
  br label %23

23:                                               ; preds = %20, %18, %16, %14, %12, %10
  %24 = phi i32 [ 1, %10 ], [ 2, %12 ], [ 3, %14 ], [ 4, %16 ], [ 5, %18 ], [ %22, %20 ]
  %25 = load ptr, ptr %6, align 4
  %26 = tail call i32 @regmap_update_bits_base(ptr noundef %25, i32 noundef 17, i32 noundef 7, i32 noundef %24, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %23, %1
  %29 = phi i32 [ %26, %23 ], [ %8, %1 ]
  %30 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.1, i32 noundef %29) #6
  br label %31

31:                                               ; preds = %28, %23
  %32 = phi i32 [ %29, %28 ], [ 0, %23 ]
  ret i32 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @da9063_wdt_stop(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 16
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.da9063, ptr %3, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 17, i32 noundef 7, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_alert(ptr noundef %9, ptr noundef nonnull @.str.2, i32 noundef %6) #6
  br label %10

10:                                               ; preds = %8, %1
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @da9063_wdt_ping(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 16
  %3 = load ptr, ptr %2, align 4
  %4 = load i32, ptr @system_state, align 4
  %5 = icmp ugt i32 %4, 3
  br i1 %5, label %13, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.da9063, ptr %3, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 @regmap_write(ptr noundef %8, i32 noundef 19, i32 noundef 1) #5
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %6
  %12 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_alert(ptr noundef %12, ptr noundef nonnull @.str.3, i32 noundef %9) #6
  br label %13

13:                                               ; preds = %11, %6, %1
  %14 = phi i32 [ 0, %1 ], [ %9, %11 ], [ 0, %6 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @da9063_wdt_restart(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readnone %2) #2 {
  %4 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 -32
  %8 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %7, i8 noundef zeroext 19, i8 noundef zeroext 2) #5
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %3
  %11 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_alert(ptr noundef %11, ptr noundef nonnull @.str.4, i32 noundef %8) #6
  br label %12

12:                                               ; preds = %10, %3
  br label %13

13:                                               ; preds = %13, %12
  %14 = phi i32 [ %15, %13 ], [ 500, %12 ]
  %15 = add nsw i32 %14, -1
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 214748000) #5
  %17 = icmp eq i32 %15, 0
  br i1 %17, label %18, label %13

18:                                               ; preds = %13
  ret i32 %8
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_alert(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { cold nounwind }

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
