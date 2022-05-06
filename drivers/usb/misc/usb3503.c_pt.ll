; ModuleID = '/llk/IR/drivers/usb/misc/usb3503.c_pt.bc'
source_filename = "../drivers/usb/misc/usb3503.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.usb3503 = type { i32, ptr, ptr, ptr, i8, ptr, ptr, ptr, i8 }
%struct.usb3503_platform_data = type { i32, i8 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }

@__initcall__kmod_usb3503__247_427_usb3503_init6 = internal global ptr @usb3503_init, section ".initcall6.init", align 4
@usb3503_platform_driver = internal global %struct.platform_driver { ptr @usb3503_platform_probe, ptr @usb3503_platform_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.2, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @usb3503_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @usb3503_platform_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@usb3503_i2c_driver = internal global %struct.i2c_driver { i32 0, ptr @usb3503_i2c_probe, ptr @usb3503_i2c_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.2, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @usb3503_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @usb3503_i2c_pm_ops, ptr null, ptr null }, ptr @usb3503_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, align 4
@__exitcall_usb3503_exit = internal global ptr @usb3503_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author248 = internal constant [48 x i8] c"usb3503.author=Dongjin Kim <tobetter@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description249 = internal constant [43 x i8] c"usb3503.description=USB3503 USB HUB driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file250 = internal constant [38 x i8] c"usb3503.file=drivers/usb/misc/usb3503\00", section ".modinfo", align 1
@__UNIQUE_ID_license251 = internal constant [20 x i8] c"usb3503.license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [46 x i8] c"\013usb3503: Failed to register I2C driver: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"\013usb3503: Failed to register platform driver: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"usb3503\00", align 1
@usb3503_of_match = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"smsc,usb3503\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"smsc,usb3503a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@usb3503_platform_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @usb3503_platform_suspend, ptr @usb3503_platform_resume, ptr @usb3503_platform_suspend, ptr @usb3503_platform_resume, ptr @usb3503_platform_suspend, ptr @usb3503_platform_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"refclk-frequency\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"unsupported reference clock rate (%d)\0A\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"refclk\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"unable to request refclk (%ld)\0A\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"unable to set reference clock rate to %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"unable to enable reference clock\0A\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"disabled-ports\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"initial-mode\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"intn\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"usb3503 intn\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"connect\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"usb3503 connect\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"usb3503 reset\00", align 1
@.str.17 = private unnamed_addr constant [42 x i8] c"Ports disabled with no control interface\0A\00", align 1
@.str.18 = private unnamed_addr constant [23 x i8] c"%s: probed in %s mode\0A\00", align 1
@__func__.usb3503_probe = private unnamed_addr constant [14 x i8] c"usb3503_probe\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"hub\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"standby\00", align 1
@.str.21 = private unnamed_addr constant [26 x i8] c"switched to STANDBY mode\0A\00", align 1
@.str.22 = private unnamed_addr constant [27 x i8] c"unknown mode is requested\0A\00", align 1
@.str.23 = private unnamed_addr constant [22 x i8] c"SP_ILOCK failed (%d)\0A\00", align 1
@.str.24 = private unnamed_addr constant [17 x i8] c"PDS failed (%d)\0A\00", align 1
@.str.25 = private unnamed_addr constant [18 x i8] c"CFG1 failed (%d)\0A\00", align 1
@.str.26 = private unnamed_addr constant [22 x i8] c"switched to HUB mode\0A\00", align 1
@usb3503_i2c_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @usb3503_i2c_suspend, ptr @usb3503_i2c_resume, ptr @usb3503_i2c_suspend, ptr @usb3503_i2c_resume, ptr @usb3503_i2c_suspend, ptr @usb3503_i2c_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@usb3503_id = internal constant [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"usb3503\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], align 4
@usb3503_regmap_config = internal constant %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 255, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@.str.27 = private unnamed_addr constant [33 x i8] c"Failed to initialise regmap: %d\0A\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author248, ptr @__UNIQUE_ID_description249, ptr @__UNIQUE_ID_file250, ptr @__UNIQUE_ID_license251, ptr @__exitcall_usb3503_exit, ptr @__initcall__kmod_usb3503__247_427_usb3503_init6, ptr @usb3503_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @usb3503_init() #0 section ".init.text" {
  %1 = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @usb3503_i2c_driver) #6
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %5, label %3

3:                                                ; preds = %0
  %4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %1) #7
  br label %10

5:                                                ; preds = %0
  %6 = tail call i32 @__platform_driver_register(ptr noundef nonnull @usb3503_platform_driver, ptr noundef null) #6
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %5
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %6) #7
  tail call void @i2c_del_driver(ptr noundef nonnull @usb3503_i2c_driver) #6
  br label %10

10:                                               ; preds = %8, %5, %3
  %11 = phi i32 [ %1, %3 ], [ %6, %8 ], [ 0, %5 ]
  ret i32 %11
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @usb3503_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @usb3503_platform_driver) #6
  tail call void @i2c_del_driver(ptr noundef nonnull @usb3503_i2c_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @usb3503_platform_probe(ptr noundef %0) #4 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 36, i32 noundef 3520) #6
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.usb3503, ptr %3, i32 0, i32 2
  store ptr %2, ptr %6, align 4
  %7 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %3, ptr %7, align 8
  %8 = tail call fastcc i32 @usb3503_probe(ptr noundef nonnull %3)
  br label %9

9:                                                ; preds = %5, %1
  %10 = phi i32 [ %8, %5 ], [ -12, %1 ]
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @usb3503_platform_remove(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.usb3503, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  tail call void @clk_disable(ptr noundef %5) #6
  tail call void @clk_unprepare(ptr noundef %5) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @usb3503_probe(ptr nocapture noundef %0) unnamed_addr #4 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.usb3503, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 7
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 25
  %10 = load ptr, ptr %9, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  store i32 1, ptr %2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  store i32 0, ptr %3, align 4, !annotation !8
  %11 = icmp eq ptr %8, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.usb3503_platform_data, ptr %8, i32 0, i32 1
  %14 = load i8, ptr %13, align 4
  %15 = getelementptr inbounds %struct.usb3503, ptr %0, i32 0, i32 4
  store i8 %14, ptr %15, align 4
  %16 = load i32, ptr %8, align 4
  store i32 %16, ptr %0, align 4
  br label %87

17:                                               ; preds = %1
  %18 = icmp eq ptr %10, null
  br i1 %18, label %87, label %19

19:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #6
  store i32 0, ptr %4, align 4
  %20 = getelementptr inbounds %struct.usb3503, ptr %0, i32 0, i32 4
  store i8 0, ptr %20, align 4
  %21 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %10, ptr noundef nonnull @.str.3, ptr noundef nonnull %4, i32 noundef 1, i32 noundef 0) #6
  %22 = icmp sgt i32 %21, -1
  br i1 %22, label %23, label %30

23:                                               ; preds = %19
  %24 = load i32, ptr %4, align 4
  switch i32 %24, label %26 [
    i32 38400000, label %27
    i32 26000000, label %27
    i32 19200000, label %27
    i32 12000000, label %27
    i32 24000000, label %25
    i32 27000000, label %25
    i32 25000000, label %25
    i32 50000000, label %25
  ]

25:                                               ; preds = %23, %23, %23, %23
  br label %27

26:                                               ; preds = %23
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.4, i32 noundef %24) #7
  br label %82

27:                                               ; preds = %25, %23, %23, %23, %23
  %28 = phi i8 [ 1, %25 ], [ 0, %23 ], [ 0, %23 ], [ 0, %23 ], [ 0, %23 ]
  %29 = getelementptr inbounds %struct.usb3503, ptr %0, i32 0, i32 8
  store i8 %28, ptr %29, align 4
  br label %30

30:                                               ; preds = %27, %19
  %31 = call ptr @devm_clk_get_optional(ptr noundef %6, ptr noundef nonnull @.str.5) #6
  %32 = getelementptr inbounds %struct.usb3503, ptr %0, i32 0, i32 3
  store ptr %31, ptr %32, align 4
  %33 = icmp ugt ptr %31, inttoptr (i32 -4096 to ptr)
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = ptrtoint ptr %31 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.6, i32 noundef %35) #7
  %36 = load ptr, ptr %32, align 4
  %37 = ptrtoint ptr %36 to i32
  br label %82

38:                                               ; preds = %30
  %39 = load i32, ptr %4, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %48, label %41

41:                                               ; preds = %38
  %42 = call i32 @clk_set_rate(ptr noundef %31, i32 noundef %39) #6
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = load ptr, ptr %32, align 4
  br label %48

46:                                               ; preds = %41
  %47 = load i32, ptr %4, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.7, i32 noundef %47) #7
  br label %82

48:                                               ; preds = %44, %38
  %49 = phi ptr [ %45, %44 ], [ %31, %38 ]
  %50 = call i32 @clk_prepare(ptr noundef %49) #6
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %48
  %53 = call i32 @clk_enable(ptr noundef %49) #6
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %52
  call void @clk_unprepare(ptr noundef %49) #6
  br label %56

56:                                               ; preds = %55, %48
  %57 = phi i32 [ %53, %55 ], [ %50, %48 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.8) #7
  br label %82

58:                                               ; preds = %52
  %59 = call ptr @of_get_property(ptr noundef nonnull %10, ptr noundef nonnull @.str.9, ptr noundef nonnull %3) #6
  %60 = icmp eq ptr %59, null
  %61 = load i32, ptr %3, align 4
  %62 = icmp ult i32 %61, 4
  %63 = select i1 %60, i1 true, i1 %62
  br i1 %63, label %84, label %64

64:                                               ; preds = %58
  %65 = lshr i32 %61, 2
  br label %66

66:                                               ; preds = %79, %64
  %67 = phi i32 [ %80, %79 ], [ 0, %64 ]
  %68 = getelementptr i32, ptr %59, i32 %67
  %69 = load i32, ptr %68, align 4
  %70 = call i32 @llvm.bswap.i32(i32 %69)
  %71 = icmp ne i32 %69, 0
  %72 = icmp ult i32 %70, 4
  %73 = select i1 %71, i1 %72, i1 false
  br i1 %73, label %74, label %79

74:                                               ; preds = %66
  %75 = shl nuw nsw i32 1, %70
  %76 = load i8, ptr %20, align 4
  %77 = trunc i32 %75 to i8
  %78 = or i8 %76, %77
  store i8 %78, ptr %20, align 4
  br label %79

79:                                               ; preds = %74, %66
  %80 = add nuw nsw i32 %67, 1
  %81 = icmp eq i32 %80, %65
  br i1 %81, label %84, label %66

82:                                               ; preds = %56, %46, %34, %26
  %83 = phi i32 [ -22, %26 ], [ %57, %56 ], [ %42, %46 ], [ %37, %34 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  br label %136

84:                                               ; preds = %79, %58
  %85 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %10, ptr noundef nonnull @.str.10, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #6
  %86 = load i32, ptr %2, align 4
  store i32 %86, ptr %0, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  br label %87

87:                                               ; preds = %84, %17, %12
  %88 = getelementptr inbounds %struct.usb3503, ptr %0, i32 0, i32 8
  %89 = load i8, ptr %88, align 4, !range !9
  %90 = icmp eq i8 %89, 0
  %91 = select i1 %90, i32 7, i32 3
  %92 = call ptr @devm_gpiod_get_optional(ptr noundef %6, ptr noundef nonnull @.str.11, i32 noundef %91) #6
  %93 = getelementptr inbounds %struct.usb3503, ptr %0, i32 0, i32 5
  store ptr %92, ptr %93, align 4
  %94 = icmp ugt ptr %92, inttoptr (i32 -4096 to ptr)
  br i1 %94, label %95, label %97

95:                                               ; preds = %87
  %96 = ptrtoint ptr %92 to i32
  br label %136

97:                                               ; preds = %87
  %98 = icmp eq ptr %92, null
  br i1 %98, label %101, label %99

99:                                               ; preds = %97
  %100 = call i32 @gpiod_set_consumer_name(ptr noundef nonnull %92, ptr noundef nonnull @.str.12) #6
  br label %101

101:                                              ; preds = %99, %97
  %102 = call ptr @devm_gpiod_get_optional(ptr noundef %6, ptr noundef nonnull @.str.13, i32 noundef 3) #6
  %103 = getelementptr inbounds %struct.usb3503, ptr %0, i32 0, i32 7
  store ptr %102, ptr %103, align 4
  %104 = icmp ugt ptr %102, inttoptr (i32 -4096 to ptr)
  br i1 %104, label %105, label %107

105:                                              ; preds = %101
  %106 = ptrtoint ptr %102 to i32
  br label %136

107:                                              ; preds = %101
  %108 = icmp eq ptr %102, null
  br i1 %108, label %111, label %109

109:                                              ; preds = %107
  %110 = call i32 @gpiod_set_consumer_name(ptr noundef nonnull %102, ptr noundef nonnull @.str.14) #6
  br label %111

111:                                              ; preds = %109, %107
  %112 = call ptr @devm_gpiod_get_optional(ptr noundef %6, ptr noundef nonnull @.str.15, i32 noundef 7) #6
  %113 = getelementptr inbounds %struct.usb3503, ptr %0, i32 0, i32 6
  store ptr %112, ptr %113, align 4
  %114 = icmp ugt ptr %112, inttoptr (i32 -4096 to ptr)
  br i1 %114, label %115, label %117

115:                                              ; preds = %111
  %116 = ptrtoint ptr %112 to i32
  br label %136

117:                                              ; preds = %111
  %118 = icmp eq ptr %112, null
  br i1 %118, label %122, label %119

119:                                              ; preds = %117
  call void @usleep_range_state(i32 noundef 100, i32 noundef 10000, i32 noundef 2) #6
  %120 = load ptr, ptr %113, align 4
  %121 = call i32 @gpiod_set_consumer_name(ptr noundef %120, ptr noundef nonnull @.str.16) #6
  br label %122

122:                                              ; preds = %119, %117
  %123 = getelementptr inbounds %struct.usb3503, ptr %0, i32 0, i32 4
  %124 = load i8, ptr %123, align 4
  %125 = icmp eq i8 %124, 0
  br i1 %125, label %131, label %126

126:                                              ; preds = %122
  %127 = getelementptr inbounds %struct.usb3503, ptr %0, i32 0, i32 1
  %128 = load ptr, ptr %127, align 4
  %129 = icmp eq ptr %128, null
  br i1 %129, label %130, label %131

130:                                              ; preds = %126
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.17) #7
  br label %131

131:                                              ; preds = %130, %126, %122
  %132 = load i32, ptr %0, align 4
  call fastcc void @usb3503_switch_mode(ptr noundef %0, i32 noundef %132)
  %133 = load i32, ptr %0, align 4
  %134 = icmp eq i32 %133, 1
  %135 = select i1 %134, ptr @.str.19, ptr @.str.20
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %6, ptr noundef nonnull @.str.18, ptr noundef nonnull @__func__.usb3503_probe, ptr noundef nonnull %135) #7
  br label %136

136:                                              ; preds = %131, %115, %105, %95, %82
  %137 = phi i32 [ %96, %95 ], [ %106, %105 ], [ %116, %115 ], [ 0, %131 ], [ %83, %82 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  ret i32 %137
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_set_consumer_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @usb3503_switch_mode(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.usb3503, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  switch i32 %1, label %55 [
    i32 1, label %5
    i32 2, label %44
  ]

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.usb3503, ptr %0, i32 0, i32 6
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %7, i32 noundef 0) #6
  br label %10

10:                                               ; preds = %9, %5
  tail call void @usleep_range_state(i32 noundef 4000, i32 noundef 10000, i32 noundef 2) #6
  %11 = getelementptr inbounds %struct.usb3503, ptr %0, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %38, label %14

14:                                               ; preds = %10
  %15 = tail call i32 @regmap_write(ptr noundef nonnull %12, i32 noundef 231, i32 noundef 3) #6
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.23, i32 noundef %15) #7
  br label %56

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.usb3503, ptr %0, i32 0, i32 4
  %20 = load i8, ptr %19, align 4
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %18
  %23 = load ptr, ptr %11, align 4
  %24 = zext i8 %20 to i32
  %25 = tail call i32 @regmap_update_bits_base(ptr noundef %23, i32 noundef 10, i32 noundef %24, i32 noundef %24, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.24, i32 noundef %25) #7
  br label %56

28:                                               ; preds = %22, %18
  %29 = load ptr, ptr %11, align 4
  %30 = tail call i32 @regmap_update_bits_base(ptr noundef %29, i32 noundef 6, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.25, i32 noundef %30) #7
  br label %56

33:                                               ; preds = %28
  %34 = load ptr, ptr %11, align 4
  %35 = tail call i32 @regmap_update_bits_base(ptr noundef %34, i32 noundef 231, i32 noundef 3, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.23, i32 noundef %35) #7
  br label %56

38:                                               ; preds = %33, %10
  %39 = getelementptr inbounds %struct.usb3503, ptr %0, i32 0, i32 7
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %38
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %40, i32 noundef 1) #6
  br label %43

43:                                               ; preds = %42, %38
  store i32 1, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %4, ptr noundef nonnull @.str.26) #7
  br label %56

44:                                               ; preds = %2
  %45 = getelementptr inbounds %struct.usb3503, ptr %0, i32 0, i32 7
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %44
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %46, i32 noundef 0) #6
  br label %49

49:                                               ; preds = %48, %44
  %50 = getelementptr inbounds %struct.usb3503, ptr %0, i32 0, i32 6
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %49
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %51, i32 noundef 1) #6
  br label %54

54:                                               ; preds = %53, %49
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %4, ptr noundef nonnull @.str.21) #7
  br label %56

55:                                               ; preds = %2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.22) #7
  br label %56

56:                                               ; preds = %55, %54, %43, %37, %32, %27, %17
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @usb3503_platform_suspend(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.usb3503, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.usb3503, ptr %3, i32 0, i32 7
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %7, i32 noundef 0) #6
  br label %10

10:                                               ; preds = %9, %1
  %11 = getelementptr inbounds %struct.usb3503, ptr %3, i32 0, i32 6
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %12, i32 noundef 1) #6
  br label %15

15:                                               ; preds = %14, %10
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull @.str.21) #7
  %16 = getelementptr inbounds %struct.usb3503, ptr %3, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  tail call void @clk_disable(ptr noundef %17) #6
  tail call void @clk_unprepare(ptr noundef %17) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @usb3503_platform_resume(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.usb3503, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @clk_prepare(ptr noundef %5) #6
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = tail call i32 @clk_enable(ptr noundef %5) #6
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %8
  tail call void @clk_unprepare(ptr noundef %5) #6
  br label %12

12:                                               ; preds = %11, %8, %1
  %13 = load i32, ptr %3, align 4
  tail call fastcc void @usb3503_switch_mode(ptr noundef %3, i32 noundef %13) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @usb3503_i2c_probe(ptr noundef %0, ptr nocapture noundef readnone %1) #4 {
  %3 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  %4 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 36, i32 noundef 3520) #6
  %5 = icmp eq ptr %4, null
  br i1 %5, label %16, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  store ptr %4, ptr %7, align 8
  %8 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %0, ptr noundef nonnull @usb3503_regmap_config, ptr noundef null, ptr noundef null) #6
  %9 = getelementptr inbounds %struct.usb3503, ptr %4, i32 0, i32 1
  store ptr %8, ptr %9, align 4
  %10 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %10, label %11, label %13

11:                                               ; preds = %6
  %12 = ptrtoint ptr %8 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.27, i32 noundef %12) #7
  br label %16

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.usb3503, ptr %4, i32 0, i32 2
  store ptr %3, ptr %14, align 4
  %15 = tail call fastcc i32 @usb3503_probe(ptr noundef nonnull %4)
  br label %16

16:                                               ; preds = %13, %11, %2
  %17 = phi i32 [ %12, %11 ], [ %15, %13 ], [ -12, %2 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @usb3503_i2c_remove(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.usb3503, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  tail call void @clk_disable(ptr noundef %5) #6
  tail call void @clk_unprepare(ptr noundef %5) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @usb3503_i2c_suspend(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr i8, ptr %0, i32 64
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.usb3503, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.usb3503, ptr %3, i32 0, i32 7
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %7, i32 noundef 0) #6
  br label %10

10:                                               ; preds = %9, %1
  %11 = getelementptr inbounds %struct.usb3503, ptr %3, i32 0, i32 6
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %12, i32 noundef 1) #6
  br label %15

15:                                               ; preds = %14, %10
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull @.str.21) #7
  %16 = getelementptr inbounds %struct.usb3503, ptr %3, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  tail call void @clk_disable(ptr noundef %17) #6
  tail call void @clk_unprepare(ptr noundef %17) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @usb3503_i2c_resume(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr i8, ptr %0, i32 64
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.usb3503, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @clk_prepare(ptr noundef %5) #6
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = tail call i32 @clk_enable(ptr noundef %5) #6
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %8
  tail call void @clk_unprepare(ptr noundef %5) #6
  br label %12

12:                                               ; preds = %11, %8, %1
  %13 = load i32, ptr %3, align 4
  tail call fastcc void @usb3503_switch_mode(ptr noundef %3, i32 noundef %13) #6
  ret i32 0
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
!9 = !{i8 0, i8 2}
