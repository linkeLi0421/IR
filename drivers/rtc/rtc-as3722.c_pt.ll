; ModuleID = '/llk/IR/drivers/rtc/rtc-as3722.c_pt.bc'
source_filename = "../drivers/rtc/rtc-as3722.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rtc_class_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.as3722_rtc = type { ptr, ptr, ptr, i32, i8 }
%struct.as3722 = type { ptr, ptr, i32, i32, i8, i8, i8, ptr }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rtc_wkalrm = type { i8, i8, %struct.rtc_time }

@__initcall__kmod_rtc_as3722__210_246_as3722_rtc_driver_init6 = internal global ptr @as3722_rtc_driver_init, section ".initcall6.init", align 4
@as3722_rtc_driver = internal global %struct.platform_driver { ptr @as3722_rtc_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @as3722_rtc_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_as3722_rtc_driver_exit = internal global ptr @as3722_rtc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description211 = internal constant [51 x i8] c"rtc_as3722.description=RTC driver for AS3722 PMICs\00", section ".modinfo", align 1
@__UNIQUE_ID_alias212 = internal constant [37 x i8] c"rtc_as3722.alias=platform:as3722-rtc\00", section ".modinfo", align 1
@__UNIQUE_ID_author213 = internal constant [62 x i8] c"rtc_as3722.author=Florian Lobmaier <florian.lobmaier@ams.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author214 = internal constant [57 x i8] c"rtc_as3722.author=Laxman Dewangan <ldewangan@nvidia.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file215 = internal constant [39 x i8] c"rtc_as3722.file=drivers/rtc/rtc-as3722\00", section ".modinfo", align 1
@__UNIQUE_ID_license216 = internal constant [23 x i8] c"rtc_as3722.license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [11 x i8] c"as3722-rtc\00", align 1
@as3722_rtc_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @as3722_rtc_suspend, ptr @as3722_rtc_resume, ptr @as3722_rtc_suspend, ptr @as3722_rtc_resume, ptr @as3722_rtc_suspend, ptr @as3722_rtc_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"RTC_CONTROL reg write failed: %d\0A\00", align 1
@as3722_rtc_ops = internal constant %struct.rtc_class_ops { ptr null, ptr @as3722_rtc_read_time, ptr @as3722_rtc_set_time, ptr @as3722_rtc_read_alarm, ptr @as3722_rtc_set_alarm, ptr null, ptr @as3722_rtc_alarm_irq_enable, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"RTC register failed: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"RTC interrupt %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"rtc-alarm\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"Failed to request alarm IRQ %d: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"RTC_SECOND reg block read failed %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"RTC_SECOND reg block write failed %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [39 x i8] c"RTC_ALARM_SECOND block read failed %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [40 x i8] c"RTC_ALARM_SECOND block write failed %d\0A\00", align 1
@llvm.compiler.used = appending global [9 x ptr] [ptr @__UNIQUE_ID_alias212, ptr @__UNIQUE_ID_author213, ptr @__UNIQUE_ID_author214, ptr @__UNIQUE_ID_description211, ptr @__UNIQUE_ID_file215, ptr @__UNIQUE_ID_license216, ptr @__exitcall_as3722_rtc_driver_exit, ptr @__initcall__kmod_rtc_as3722__210_246_as3722_rtc_driver_init6, ptr @as3722_rtc_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @as3722_rtc_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @as3722_rtc_driver, ptr noundef null) #7
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @as3722_rtc_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @as3722_rtc_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @as3722_rtc_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 20, i32 noundef 3520) #7
  %8 = icmp eq ptr %7, null
  br i1 %8, label %33, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.as3722_rtc, ptr %7, i32 0, i32 2
  store ptr %6, ptr %10, align 4
  %11 = getelementptr inbounds %struct.as3722_rtc, ptr %7, i32 0, i32 1
  store ptr %2, ptr %11, align 4
  %12 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %7, ptr %12, align 8
  %13 = getelementptr inbounds %struct.as3722, ptr %6, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 @regmap_update_bits_base(ptr noundef %14, i32 noundef 96, i32 noundef 6, i32 noundef 6, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.1, i32 noundef %15) #8
  br label %33

18:                                               ; preds = %9
  %19 = tail call i32 @device_init_wakeup(ptr noundef %2, i1 noundef zeroext true) #7
  %20 = tail call ptr @devm_rtc_device_register(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @as3722_rtc_ops, ptr noundef null) #7
  store ptr %20, ptr %7, align 4
  %21 = icmp ugt ptr %20, inttoptr (i32 -4096 to ptr)
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = ptrtoint ptr %20 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.2, i32 noundef %23) #8
  br label %33

24:                                               ; preds = %18
  %25 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #7
  %26 = getelementptr inbounds %struct.as3722_rtc, ptr %7, i32 0, i32 3
  store i32 %25, ptr %26, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %2, ptr noundef nonnull @.str.3, i32 noundef %25) #8
  %27 = load i32, ptr %26, align 4
  %28 = tail call i32 @devm_request_threaded_irq(ptr noundef %2, i32 noundef %27, ptr noundef null, ptr noundef nonnull @as3722_alarm_irq, i32 noundef 8192, ptr noundef nonnull @.str.4, ptr noundef nonnull %7) #7
  %29 = icmp slt i32 %28, 0
  %30 = load i32, ptr %26, align 4
  br i1 %29, label %31, label %32

31:                                               ; preds = %24
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.5, i32 noundef %30, i32 noundef %28) #8
  br label %33

32:                                               ; preds = %24
  tail call void @disable_irq(i32 noundef %30) #7
  br label %33

33:                                               ; preds = %32, %31, %22, %17, %1
  %34 = phi i32 [ %15, %17 ], [ %23, %22 ], [ %28, %31 ], [ 0, %32 ], [ -12, %1 ]
  ret i32 %34
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_rtc_device_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @as3722_alarm_irq(i32 noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = load ptr, ptr %1, align 4
  tail call void @rtc_update_irq(ptr noundef %3, i32 noundef 1, i32 noundef 160) #7
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @as3722_rtc_read_time(ptr noundef %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = alloca [6 x i8], align 1
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.as3722_rtc, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %3) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %3, i8 0, i32 6, i1 false), !annotation !8
  %8 = getelementptr inbounds %struct.as3722, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = call i32 @regmap_bulk_read(ptr noundef %9, i32 noundef 97, ptr noundef nonnull %3, i32 noundef 6) #7
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.6, i32 noundef %10) #8
  br label %44

13:                                               ; preds = %2
  %14 = load i8, ptr %3, align 1
  %15 = and i8 %14, 127
  %16 = call i32 @_bcd2bin(i8 noundef zeroext %15) #9
  store i32 %16, ptr %1, align 4
  %17 = getelementptr inbounds i8, ptr %3, i32 1
  %18 = load i8, ptr %17, align 1
  %19 = and i8 %18, 127
  %20 = call i32 @_bcd2bin(i8 noundef zeroext %19) #9
  %21 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 1
  store i32 %20, ptr %21, align 4
  %22 = getelementptr inbounds i8, ptr %3, i32 2
  %23 = load i8, ptr %22, align 1
  %24 = and i8 %23, 63
  %25 = call i32 @_bcd2bin(i8 noundef zeroext %24) #9
  %26 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 2
  store i32 %25, ptr %26, align 4
  %27 = getelementptr inbounds i8, ptr %3, i32 3
  %28 = load i8, ptr %27, align 1
  %29 = and i8 %28, 63
  %30 = call i32 @_bcd2bin(i8 noundef zeroext %29) #9
  %31 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 3
  store i32 %30, ptr %31, align 4
  %32 = getelementptr inbounds i8, ptr %3, i32 4
  %33 = load i8, ptr %32, align 1
  %34 = and i8 %33, 31
  %35 = call i32 @_bcd2bin(i8 noundef zeroext %34) #9
  %36 = add i32 %35, -1
  %37 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 4
  store i32 %36, ptr %37, align 4
  %38 = getelementptr inbounds i8, ptr %3, i32 5
  %39 = load i8, ptr %38, align 1
  %40 = and i8 %39, 127
  %41 = call i32 @_bcd2bin(i8 noundef zeroext %40) #9
  %42 = add i32 %41, 100
  %43 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 5
  store i32 %42, ptr %43, align 4
  br label %44

44:                                               ; preds = %13, %12
  %45 = phi i32 [ %10, %12 ], [ 0, %13 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %3) #7
  ret i32 %45
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @as3722_rtc_set_time(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca [6 x i8], align 1
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.as3722_rtc, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %3) #7
  %8 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 5
  %9 = load i32, ptr %8, align 4
  %10 = icmp slt i32 %9, 100
  br i1 %10, label %39, label %11

11:                                               ; preds = %2
  %12 = load i32, ptr %1, align 4
  %13 = tail call zeroext i8 @_bin2bcd(i32 noundef %12) #9
  store i8 %13, ptr %3, align 1
  %14 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = tail call zeroext i8 @_bin2bcd(i32 noundef %15) #9
  %17 = getelementptr inbounds i8, ptr %3, i32 1
  store i8 %16, ptr %17, align 1
  %18 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 2
  %19 = load i32, ptr %18, align 4
  %20 = tail call zeroext i8 @_bin2bcd(i32 noundef %19) #9
  %21 = getelementptr inbounds i8, ptr %3, i32 2
  store i8 %20, ptr %21, align 1
  %22 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 3
  %23 = load i32, ptr %22, align 4
  %24 = tail call zeroext i8 @_bin2bcd(i32 noundef %23) #9
  %25 = getelementptr inbounds i8, ptr %3, i32 3
  store i8 %24, ptr %25, align 1
  %26 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 4
  %27 = load i32, ptr %26, align 4
  %28 = add i32 %27, 1
  %29 = tail call zeroext i8 @_bin2bcd(i32 noundef %28) #9
  %30 = getelementptr inbounds i8, ptr %3, i32 4
  store i8 %29, ptr %30, align 1
  %31 = add nsw i32 %9, -100
  %32 = tail call zeroext i8 @_bin2bcd(i32 noundef %31) #9
  %33 = getelementptr inbounds i8, ptr %3, i32 5
  store i8 %32, ptr %33, align 1
  %34 = getelementptr inbounds %struct.as3722, ptr %7, i32 0, i32 1
  %35 = load ptr, ptr %34, align 4
  %36 = call i32 @regmap_bulk_write(ptr noundef %35, i32 noundef 97, ptr noundef nonnull %3, i32 noundef 6) #7
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.7, i32 noundef %36) #8
  br label %39

39:                                               ; preds = %38, %11, %2
  %40 = phi i32 [ -22, %2 ], [ %36, %38 ], [ %36, %11 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %3) #7
  ret i32 %40
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @as3722_rtc_read_alarm(ptr noundef %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = alloca [6 x i8], align 1
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.as3722_rtc, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %3) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %3, i8 0, i32 6, i1 false), !annotation !8
  %8 = getelementptr inbounds %struct.as3722, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = call i32 @regmap_bulk_read(ptr noundef %9, i32 noundef 103, ptr noundef nonnull %3, i32 noundef 6) #7
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.8, i32 noundef %10) #8
  br label %45

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2
  %15 = load i8, ptr %3, align 1
  %16 = and i8 %15, 127
  %17 = call i32 @_bcd2bin(i8 noundef zeroext %16) #9
  store i32 %17, ptr %14, align 4
  %18 = getelementptr inbounds i8, ptr %3, i32 1
  %19 = load i8, ptr %18, align 1
  %20 = and i8 %19, 127
  %21 = call i32 @_bcd2bin(i8 noundef zeroext %20) #9
  %22 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 1
  store i32 %21, ptr %22, align 4
  %23 = getelementptr inbounds i8, ptr %3, i32 2
  %24 = load i8, ptr %23, align 1
  %25 = and i8 %24, 63
  %26 = call i32 @_bcd2bin(i8 noundef zeroext %25) #9
  %27 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 2
  store i32 %26, ptr %27, align 4
  %28 = getelementptr inbounds i8, ptr %3, i32 3
  %29 = load i8, ptr %28, align 1
  %30 = and i8 %29, 63
  %31 = call i32 @_bcd2bin(i8 noundef zeroext %30) #9
  %32 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 3
  store i32 %31, ptr %32, align 4
  %33 = getelementptr inbounds i8, ptr %3, i32 4
  %34 = load i8, ptr %33, align 1
  %35 = and i8 %34, 31
  %36 = call i32 @_bcd2bin(i8 noundef zeroext %35) #9
  %37 = add i32 %36, -1
  %38 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 4
  store i32 %37, ptr %38, align 4
  %39 = getelementptr inbounds i8, ptr %3, i32 5
  %40 = load i8, ptr %39, align 1
  %41 = and i8 %40, 127
  %42 = call i32 @_bcd2bin(i8 noundef zeroext %41) #9
  %43 = add i32 %42, 100
  %44 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 5
  store i32 %43, ptr %44, align 4
  br label %45

45:                                               ; preds = %13, %12
  %46 = phi i32 [ %10, %12 ], [ 0, %13 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %3) #7
  ret i32 %46
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @as3722_rtc_set_alarm(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca [6 x i8], align 1
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.as3722_rtc, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %3) #7
  %8 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2
  %9 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 5
  %10 = load i32, ptr %9, align 4
  %11 = icmp slt i32 %10, 100
  br i1 %11, label %59, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.as3722_rtc, ptr %5, i32 0, i32 4
  %14 = load i8, ptr %13, align 4, !range !9
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.as3722_rtc, ptr %5, i32 0, i32 3
  %18 = load i32, ptr %17, align 4
  tail call void @disable_irq(i32 noundef %18) #7
  store i8 0, ptr %13, align 4
  br label %19

19:                                               ; preds = %16, %12
  %20 = load i32, ptr %8, align 4
  %21 = tail call zeroext i8 @_bin2bcd(i32 noundef %20) #9
  store i8 %21, ptr %3, align 1
  %22 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = tail call zeroext i8 @_bin2bcd(i32 noundef %23) #9
  %25 = getelementptr inbounds i8, ptr %3, i32 1
  store i8 %24, ptr %25, align 1
  %26 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 2
  %27 = load i32, ptr %26, align 4
  %28 = tail call zeroext i8 @_bin2bcd(i32 noundef %27) #9
  %29 = getelementptr inbounds i8, ptr %3, i32 2
  store i8 %28, ptr %29, align 1
  %30 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 3
  %31 = load i32, ptr %30, align 4
  %32 = tail call zeroext i8 @_bin2bcd(i32 noundef %31) #9
  %33 = getelementptr inbounds i8, ptr %3, i32 3
  store i8 %32, ptr %33, align 1
  %34 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 4
  %35 = load i32, ptr %34, align 4
  %36 = add i32 %35, 1
  %37 = tail call zeroext i8 @_bin2bcd(i32 noundef %36) #9
  %38 = getelementptr inbounds i8, ptr %3, i32 4
  store i8 %37, ptr %38, align 1
  %39 = load i32, ptr %9, align 4
  %40 = add i32 %39, -100
  %41 = tail call zeroext i8 @_bin2bcd(i32 noundef %40) #9
  %42 = getelementptr inbounds i8, ptr %3, i32 5
  store i8 %41, ptr %42, align 1
  %43 = getelementptr inbounds %struct.as3722, ptr %7, i32 0, i32 1
  %44 = load ptr, ptr %43, align 4
  %45 = call i32 @regmap_bulk_write(ptr noundef %44, i32 noundef 103, ptr noundef nonnull %3, i32 noundef 6) #7
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %19
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.10, i32 noundef %45) #8
  br label %59

48:                                               ; preds = %19
  %49 = load i8, ptr %1, align 4
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %59, label %51

51:                                               ; preds = %48
  %52 = load ptr, ptr %4, align 8
  %53 = getelementptr inbounds %struct.as3722_rtc, ptr %52, i32 0, i32 4
  %54 = load i8, ptr %53, align 4, !range !9
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.as3722_rtc, ptr %52, i32 0, i32 3
  %58 = load i32, ptr %57, align 4
  call void @enable_irq(i32 noundef %58) #7
  store i8 1, ptr %53, align 4
  br label %59

59:                                               ; preds = %56, %51, %48, %47, %2
  %60 = phi i32 [ %45, %47 ], [ -22, %2 ], [ %45, %48 ], [ 0, %51 ], [ 0, %56 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %3) #7
  ret i32 %60
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @as3722_rtc_alarm_irq_enable(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.as3722_rtc, ptr %4, i32 0, i32 4
  %7 = load i8, ptr %6, align 4, !range !9
  %8 = icmp eq i8 %7, 0
  br i1 %5, label %13, label %9

9:                                                ; preds = %2
  br i1 %8, label %10, label %19

10:                                               ; preds = %9
  %11 = getelementptr inbounds %struct.as3722_rtc, ptr %4, i32 0, i32 3
  %12 = load i32, ptr %11, align 4
  tail call void @enable_irq(i32 noundef %12) #7
  br label %17

13:                                               ; preds = %2
  br i1 %8, label %19, label %14

14:                                               ; preds = %13
  %15 = getelementptr inbounds %struct.as3722_rtc, ptr %4, i32 0, i32 3
  %16 = load i32, ptr %15, align 4
  tail call void @disable_irq(i32 noundef %16) #7
  br label %17

17:                                               ; preds = %14, %10
  %18 = phi i8 [ 0, %14 ], [ 1, %10 ]
  store i8 %18, ptr %6, align 4
  br label %19

19:                                               ; preds = %17, %13, %9
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @_bcd2bin(i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local zeroext i8 @_bin2bcd(i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_update_irq(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @as3722_rtc_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 1
  %5 = load i16, ptr %4, align 4
  %6 = and i16 %5, 1
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %16, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 6
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.as3722_rtc, ptr %3, i32 0, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = tail call i32 @irq_set_irq_wake(i32 noundef %14, i32 noundef 1) #7
  br label %16

16:                                               ; preds = %12, %8, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @as3722_rtc_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 1
  %5 = load i16, ptr %4, align 4
  %6 = and i16 %5, 1
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %16, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 6
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.as3722_rtc, ptr %3, i32 0, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = tail call i32 @irq_set_irq_wake(i32 noundef %14, i32 noundef 0) #7
  br label %16

16:                                               ; preds = %12, %8, %1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind readnone willreturn }

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
