; ModuleID = '/llk/IR/drivers/watchdog/rn5t618_wdt.c_pt.bc'
source_filename = "../drivers/watchdog/rn5t618_wdt.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.4 }
%union.anon.4 = type { ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.5 = type { i8, i32 }
%struct.watchdog_info = type { i32, i32, [32 x i8] }
%struct.watchdog_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.rn5t618_wdt = type { %struct.watchdog_device, ptr }
%struct.watchdog_device = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, ptr, ptr, i32, %struct.list_head }
%struct.notifier_block = type { ptr, ptr, i32 }

@__param_str_timeout = internal constant [20 x i8] c"rn5t618_wdt.timeout\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@timeout = internal global i32 0, align 4
@__param_timeout = internal constant %struct.kernel_param { ptr @__param_str_timeout, ptr null, ptr @param_ops_uint, i16 0, i8 -1, i8 0, %union.anon.4 { ptr @timeout } }, section "__param", align 4
@__UNIQUE_ID_timeouttype162 = internal constant [34 x i8] c"rn5t618_wdt.parmtype=timeout:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_timeout163 = internal constant [61 x i8] c"rn5t618_wdt.parm=timeout:Initial watchdog timeout in seconds\00", section ".modinfo", align 1
@__param_str_nowayout = internal constant [21 x i8] c"rn5t618_wdt.nowayout\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@nowayout = internal global i8 0, align 1
@__param_nowayout = internal constant %struct.kernel_param { ptr @__param_str_nowayout, ptr null, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.4 { ptr @nowayout } }, section "__param", align 4
@__UNIQUE_ID_nowayouttype164 = internal constant [35 x i8] c"rn5t618_wdt.parmtype=nowayout:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_nowayout165 = internal constant [78 x i8] c"rn5t618_wdt.parm=nowayout:Watchdog cannot be stopped once started (default=0)\00", section ".modinfo", align 1
@__initcall__kmod_rn5t618_wdt__166_189_rn5t618_wdt_driver_init6 = internal global ptr @rn5t618_wdt_driver_init, section ".initcall6.init", align 4
@rn5t618_wdt_driver = internal global %struct.platform_driver { ptr @rn5t618_wdt_probe, ptr @rn5t618_wdt_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_rn5t618_wdt_driver_exit = internal global ptr @rn5t618_wdt_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias167 = internal constant [39 x i8] c"rn5t618_wdt.alias=platform:rn5t618-wdt\00", section ".modinfo", align 1
@__UNIQUE_ID_author168 = internal constant [59 x i8] c"rn5t618_wdt.author=Beniamino Galvani <b.galvani@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description169 = internal constant [48 x i8] c"rn5t618_wdt.description=RN5T618 watchdog driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file170 = internal constant [46 x i8] c"rn5t618_wdt.file=drivers/watchdog/rn5t618_wdt\00", section ".modinfo", align 1
@__UNIQUE_ID_license171 = internal constant [27 x i8] c"rn5t618_wdt.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [12 x i8] c"rn5t618-wdt\00", align 1
@rn5t618_wdt_map = internal unnamed_addr constant [4 x %struct.anon.5] [%struct.anon.5 { i8 0, i32 1 }, %struct.anon.5 { i8 1, i32 8 }, %struct.anon.5 { i8 2, i32 32 }, %struct.anon.5 { i8 3, i32 128 }], align 4
@rn5t618_wdt_info = internal constant %struct.watchdog_info { i32 33152, i32 0, [32 x i8] c"rn5t618-wdt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, align 4
@rn5t618_wdt_ops = internal constant %struct.watchdog_ops { ptr null, ptr @rn5t618_wdt_start, ptr @rn5t618_wdt_stop, ptr @rn5t618_wdt_ping, ptr null, ptr @rn5t618_wdt_set_timeout, ptr null, ptr null, ptr null, ptr null }, align 4
@llvm.compiler.used = appending global [14 x ptr] [ptr @__UNIQUE_ID_alias167, ptr @__UNIQUE_ID_author168, ptr @__UNIQUE_ID_description169, ptr @__UNIQUE_ID_file170, ptr @__UNIQUE_ID_license171, ptr @__UNIQUE_ID_nowayout165, ptr @__UNIQUE_ID_nowayouttype164, ptr @__UNIQUE_ID_timeout163, ptr @__UNIQUE_ID_timeouttype162, ptr @__exitcall_rn5t618_wdt_driver_exit, ptr @__initcall__kmod_rn5t618_wdt__166_189_rn5t618_wdt_driver_init6, ptr @__param_nowayout, ptr @__param_timeout, ptr @rn5t618_wdt_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @rn5t618_wdt_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @rn5t618_wdt_driver, ptr noundef null) #4
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @rn5t618_wdt_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @rn5t618_wdt_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rn5t618_wdt_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 112, i32 noundef 3520) #4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %27, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.rn5t618_wdt, ptr %7, i32 0, i32 1
  store ptr %6, ptr %10, align 4
  %11 = getelementptr inbounds %struct.watchdog_device, ptr %7, i32 0, i32 3
  store ptr @rn5t618_wdt_info, ptr %11, align 4
  %12 = getelementptr inbounds %struct.watchdog_device, ptr %7, i32 0, i32 4
  store ptr @rn5t618_wdt_ops, ptr %12, align 4
  %13 = getelementptr inbounds %struct.watchdog_device, ptr %7, i32 0, i32 9
  store i32 1, ptr %13, align 4
  %14 = getelementptr inbounds %struct.watchdog_device, ptr %7, i32 0, i32 10
  store i32 128, ptr %14, align 4
  %15 = getelementptr inbounds %struct.watchdog_device, ptr %7, i32 0, i32 7
  store i32 128, ptr %15, align 4
  %16 = getelementptr inbounds %struct.watchdog_device, ptr %7, i32 0, i32 1
  store ptr %2, ptr %16, align 4
  %17 = getelementptr inbounds %struct.watchdog_device, ptr %7, i32 0, i32 16
  store ptr %7, ptr %17, align 4
  %18 = load i32, ptr @timeout, align 4
  %19 = tail call i32 @watchdog_init_timeout(ptr noundef nonnull %7, i32 noundef %18, ptr noundef %2) #4
  %20 = load i8, ptr @nowayout, align 1, !range !8
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %9
  %23 = getelementptr inbounds %struct.watchdog_device, ptr %7, i32 0, i32 18
  tail call void @_set_bit(i32 noundef 1, ptr noundef %23) #4
  br label %24

24:                                               ; preds = %22, %9
  %25 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %7, ptr %25, align 8
  %26 = tail call i32 @watchdog_register_device(ptr noundef nonnull %7) #4
  br label %27

27:                                               ; preds = %24, %1
  %28 = phi i32 [ %26, %24 ], [ -12, %1 ]
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rn5t618_wdt_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  tail call void @watchdog_unregister_device(ptr noundef %3) #4
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @watchdog_init_timeout(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @watchdog_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rn5t618_wdt_start(ptr nocapture noundef %0) #2 {
  %2 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 16
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 7
  %5 = load i32, ptr %4, align 4
  %6 = icmp ugt i32 %5, 2
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = icmp ugt i32 %5, 9
  br i1 %8, label %9, label %13

9:                                                ; preds = %7
  %10 = icmp ugt i32 %5, 33
  br i1 %10, label %11, label %13

11:                                               ; preds = %9
  %12 = icmp ugt i32 %5, 129
  br i1 %12, label %39, label %13

13:                                               ; preds = %11, %9, %7, %1
  %14 = phi i32 [ 0, %1 ], [ 1, %7 ], [ 2, %9 ], [ 3, %11 ]
  %15 = getelementptr inbounds %struct.rn5t618_wdt, ptr %3, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr [4 x %struct.anon.5], ptr @rn5t618_wdt_map, i32 0, i32 %14
  %19 = load i8, ptr %18, align 4
  %20 = zext i8 %19 to i32
  %21 = tail call i32 @regmap_update_bits_base(ptr noundef %17, i32 noundef 11, i32 noundef 3, i32 noundef %20, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %39

23:                                               ; preds = %13
  %24 = getelementptr [4 x %struct.anon.5], ptr @rn5t618_wdt_map, i32 0, i32 %14, i32 1
  %25 = load i32, ptr %24, align 4
  store i32 %25, ptr %4, align 4
  %26 = load ptr, ptr %15, align 4
  %27 = load ptr, ptr %26, align 4
  %28 = tail call i32 @regmap_update_bits_base(ptr noundef %27, i32 noundef 15, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %23
  %31 = load ptr, ptr %15, align 4
  %32 = load ptr, ptr %31, align 4
  %33 = tail call i32 @regmap_update_bits_base(ptr noundef %32, i32 noundef 11, i32 noundef 4, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = load ptr, ptr %15, align 4
  %37 = load ptr, ptr %36, align 4
  %38 = tail call i32 @regmap_update_bits_base(ptr noundef %37, i32 noundef 18, i32 noundef 64, i32 noundef 64, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  br label %39

39:                                               ; preds = %35, %30, %23, %13, %11
  %40 = phi i32 [ %38, %35 ], [ %28, %23 ], [ %33, %30 ], [ -22, %11 ], [ %21, %13 ]
  ret i32 %40
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rn5t618_wdt_stop(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 16
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.rn5t618_wdt, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef 11, i32 noundef 4, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rn5t618_wdt_ping(ptr nocapture noundef readonly %0) #2 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 16
  %4 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #4
  store i32 0, ptr %2, align 4, !annotation !9
  %5 = getelementptr inbounds %struct.rn5t618_wdt, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = call i32 @regmap_read(ptr noundef %7, i32 noundef 11, ptr noundef nonnull %2) #4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %20

10:                                               ; preds = %1
  %11 = load ptr, ptr %5, align 4
  %12 = load ptr, ptr %11, align 4
  %13 = load i32, ptr %2, align 4
  %14 = call i32 @regmap_write(ptr noundef %12, i32 noundef 11, i32 noundef %13) #4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %10
  %17 = load ptr, ptr %5, align 4
  %18 = load ptr, ptr %17, align 4
  %19 = call i32 @regmap_update_bits_base(ptr noundef %18, i32 noundef 19, i32 noundef 64, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  br label %20

20:                                               ; preds = %16, %10, %1
  %21 = phi i32 [ %19, %16 ], [ %8, %1 ], [ %14, %10 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #4
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rn5t618_wdt_set_timeout(ptr nocapture noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 16
  %4 = load ptr, ptr %3, align 4
  %5 = icmp ugt i32 %1, 2
  br i1 %5, label %6, label %12

6:                                                ; preds = %2
  %7 = icmp ugt i32 %1, 9
  br i1 %7, label %8, label %12

8:                                                ; preds = %6
  %9 = icmp ugt i32 %1, 33
  br i1 %9, label %10, label %12

10:                                               ; preds = %8
  %11 = icmp ugt i32 %1, 129
  br i1 %11, label %26, label %12

12:                                               ; preds = %10, %8, %6, %2
  %13 = phi i32 [ 0, %2 ], [ 1, %6 ], [ 2, %8 ], [ 3, %10 ]
  %14 = getelementptr inbounds %struct.rn5t618_wdt, ptr %4, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr [4 x %struct.anon.5], ptr @rn5t618_wdt_map, i32 0, i32 %13
  %18 = load i8, ptr %17, align 4
  %19 = zext i8 %18 to i32
  %20 = tail call i32 @regmap_update_bits_base(ptr noundef %16, i32 noundef 11, i32 noundef 3, i32 noundef %19, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %12
  %23 = getelementptr [4 x %struct.anon.5], ptr @rn5t618_wdt_map, i32 0, i32 %13, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 7
  store i32 %24, ptr %25, align 4
  br label %26

26:                                               ; preds = %22, %12, %10
  %27 = phi i32 [ 0, %22 ], [ %20, %12 ], [ -22, %10 ]
  ret i32 %27
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @watchdog_unregister_device(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind }

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
!8 = !{i8 0, i8 2}
!9 = !{!"auto-init"}
