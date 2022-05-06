; ModuleID = '/llk/IR/drivers/rtc/rtc-max8907.c_pt.bc'
source_filename = "../drivers/rtc/rtc-max8907.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.max8907 = type { ptr, %struct.mutex, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.max8907_rtc = type { ptr, ptr, ptr, i32 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rtc_wkalrm = type { i8, i8, %struct.rtc_time }

@__initcall__kmod_rtc_max8907__247_218_max8907_rtc_driver_init6 = internal global ptr @max8907_rtc_driver_init, section ".initcall6.init", align 4
@max8907_rtc_driver = internal global %struct.platform_driver { ptr @max8907_rtc_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_max8907_rtc_driver_exit = internal global ptr @max8907_rtc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description248 = internal constant [49 x i8] c"rtc_max8907.description=Maxim MAX8907 RTC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file249 = internal constant [41 x i8] c"rtc_max8907.file=drivers/rtc/rtc-max8907\00", section ".modinfo", align 1
@__UNIQUE_ID_license250 = internal constant [27 x i8] c"rtc_max8907.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [12 x i8] c"max8907-rtc\00", align 1
@max8907_rtc_ops = internal constant %struct.rtc_class_ops { ptr null, ptr @max8907_rtc_read_time, ptr @max8907_rtc_set_time, ptr @max8907_rtc_read_alarm, ptr @max8907_rtc_set_alarm, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Failed to register RTC device: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"max8907-alarm0\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Failed to request IRQ%d: %d\0A\00", align 1
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID_description248, ptr @__UNIQUE_ID_file249, ptr @__UNIQUE_ID_license250, ptr @__exitcall_max8907_rtc_driver_exit, ptr @__initcall__kmod_rtc_max8907__247_218_max8907_rtc_driver_init6, ptr @max8907_rtc_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @max8907_rtc_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @max8907_rtc_driver, ptr noundef null) #7
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @max8907_rtc_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @max8907_rtc_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max8907_rtc_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 16, i32 noundef 3520) #7
  %8 = icmp eq ptr %7, null
  br i1 %8, label %30, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %7, ptr %10, align 8
  store ptr %6, ptr %7, align 4
  %11 = getelementptr inbounds %struct.max8907, ptr %6, i32 0, i32 5
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.max8907_rtc, ptr %7, i32 0, i32 1
  store ptr %12, ptr %13, align 4
  %14 = tail call ptr @devm_rtc_device_register(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @max8907_rtc_ops, ptr noundef null) #7
  %15 = getelementptr inbounds %struct.max8907_rtc, ptr %7, i32 0, i32 2
  store ptr %14, ptr %15, align 4
  %16 = icmp ugt ptr %14, inttoptr (i32 -4096 to ptr)
  br i1 %16, label %17, label %19

17:                                               ; preds = %9
  %18 = ptrtoint ptr %14 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.1, i32 noundef %18) #8
  br label %30

19:                                               ; preds = %9
  %20 = getelementptr inbounds %struct.max8907, ptr %6, i32 0, i32 8
  %21 = load ptr, ptr %20, align 4
  %22 = tail call i32 @regmap_irq_get_virq(ptr noundef %21, i32 noundef 1) #7
  %23 = getelementptr inbounds %struct.max8907_rtc, ptr %7, i32 0, i32 3
  store i32 %22, ptr %23, align 4
  %24 = icmp slt i32 %22, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %19
  %26 = tail call i32 @devm_request_threaded_irq(ptr noundef %2, i32 noundef %22, ptr noundef null, ptr noundef nonnull @max8907_irq_handler, i32 noundef 8192, ptr noundef nonnull @.str.2, ptr noundef nonnull %7) #7
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = load i32, ptr %23, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.3, i32 noundef %29, i32 noundef %26) #8
  br label %30

30:                                               ; preds = %28, %25, %19, %17, %1
  %31 = phi i32 [ %18, %17 ], [ -12, %1 ], [ %22, %19 ], [ %26, %28 ], [ %26, %25 ]
  ret i32 %31
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_rtc_device_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_irq_get_virq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max8907_irq_handler(i32 noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.max8907_rtc, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @regmap_write(ptr noundef %4, i32 noundef 24, i32 noundef 0) #7
  %6 = getelementptr inbounds %struct.max8907_rtc, ptr %1, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  tail call void @rtc_update_irq(ptr noundef %7, i32 noundef 1, i32 noundef 160) #7
  ret i32 1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max8907_rtc_read_time(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #2 {
  %3 = alloca [8 x i8], align 8
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #7
  store i64 0, ptr %3, align 8, !annotation !8
  %6 = getelementptr inbounds %struct.max8907_rtc, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = call i32 @regmap_bulk_read(ptr noundef %7, i32 noundef 0, ptr noundef nonnull %3, i32 noundef 8) #7
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  call fastcc void @regs_to_tm(ptr noundef nonnull %3, ptr noundef %1)
  br label %11

11:                                               ; preds = %10, %2
  %12 = phi i32 [ 0, %10 ], [ %8, %2 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #7
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max8907_rtc_set_time(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca [8 x i8], align 8
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #7
  %6 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 5
  %7 = load i32, ptr %6, align 4
  %8 = srem i32 %7, 100
  %9 = add i32 %7, 1900
  %10 = sdiv i32 %9, 100
  %11 = and i32 %10, 255
  %12 = tail call zeroext i8 @_bin2bcd(i32 noundef %11) #9
  %13 = getelementptr inbounds i8, ptr %3, i32 7
  store i8 %12, ptr %13, align 1
  %14 = and i32 %8, 255
  %15 = tail call zeroext i8 @_bin2bcd(i32 noundef %14) #9
  %16 = getelementptr inbounds i8, ptr %3, i32 6
  store i8 %15, ptr %16, align 2
  %17 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 4
  %18 = load i32, ptr %17, align 4
  %19 = add i32 %18, 1
  %20 = tail call zeroext i8 @_bin2bcd(i32 noundef %19) #9
  %21 = getelementptr inbounds i8, ptr %3, i32 5
  store i8 %20, ptr %21, align 1
  %22 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 3
  %23 = load i32, ptr %22, align 4
  %24 = tail call zeroext i8 @_bin2bcd(i32 noundef %23) #9
  %25 = getelementptr inbounds i8, ptr %3, i32 4
  store i8 %24, ptr %25, align 4
  %26 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 6
  %27 = load i32, ptr %26, align 4
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds i8, ptr %3, i32 3
  store i8 %28, ptr %29, align 1
  %30 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 2
  %31 = load i32, ptr %30, align 4
  %32 = tail call zeroext i8 @_bin2bcd(i32 noundef %31) #9
  %33 = getelementptr inbounds i8, ptr %3, i32 2
  store i8 %32, ptr %33, align 2
  %34 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 1
  %35 = load i32, ptr %34, align 4
  %36 = tail call zeroext i8 @_bin2bcd(i32 noundef %35) #9
  %37 = getelementptr inbounds i8, ptr %3, i32 1
  store i8 %36, ptr %37, align 1
  %38 = load i32, ptr %1, align 4
  %39 = tail call zeroext i8 @_bin2bcd(i32 noundef %38) #9
  store i8 %39, ptr %3, align 8
  %40 = getelementptr inbounds %struct.max8907_rtc, ptr %5, i32 0, i32 1
  %41 = load ptr, ptr %40, align 4
  %42 = call i32 @regmap_bulk_write(ptr noundef %41, i32 noundef 0, ptr noundef nonnull %3, i32 noundef 8) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #7
  ret i32 %42
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max8907_rtc_read_alarm(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #2 {
  %3 = alloca [8 x i8], align 8
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #7
  store i64 0, ptr %3, align 8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  store i32 0, ptr %4, align 4, !annotation !8
  %7 = getelementptr inbounds %struct.max8907_rtc, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = call i32 @regmap_bulk_read(ptr noundef %8, i32 noundef 8, ptr noundef nonnull %3, i32 noundef 8) #7
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %21, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2
  call fastcc void @regs_to_tm(ptr noundef nonnull %3, ptr noundef %12)
  %13 = load ptr, ptr %7, align 4
  %14 = call i32 @regmap_read(ptr noundef %13, i32 noundef 24, ptr noundef nonnull %4) #7
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %11
  %17 = load i32, ptr %4, align 4
  %18 = and i32 %17, 127
  %19 = icmp ne i32 %18, 0
  %20 = zext i1 %19 to i8
  store i8 %20, ptr %1, align 4
  br label %21

21:                                               ; preds = %16, %11, %2
  %22 = phi i32 [ 0, %16 ], [ %9, %2 ], [ %14, %11 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #7
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max8907_rtc_set_alarm(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca [8 x i8], align 8
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #7
  %6 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2
  %7 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 5
  %8 = load i32, ptr %7, align 4
  %9 = srem i32 %8, 100
  %10 = add i32 %8, 1900
  %11 = sdiv i32 %10, 100
  %12 = and i32 %11, 255
  %13 = tail call zeroext i8 @_bin2bcd(i32 noundef %12) #9
  %14 = getelementptr inbounds i8, ptr %3, i32 7
  store i8 %13, ptr %14, align 1
  %15 = and i32 %9, 255
  %16 = tail call zeroext i8 @_bin2bcd(i32 noundef %15) #9
  %17 = getelementptr inbounds i8, ptr %3, i32 6
  store i8 %16, ptr %17, align 2
  %18 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 4
  %19 = load i32, ptr %18, align 4
  %20 = add i32 %19, 1
  %21 = tail call zeroext i8 @_bin2bcd(i32 noundef %20) #9
  %22 = getelementptr inbounds i8, ptr %3, i32 5
  store i8 %21, ptr %22, align 1
  %23 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 3
  %24 = load i32, ptr %23, align 4
  %25 = tail call zeroext i8 @_bin2bcd(i32 noundef %24) #9
  %26 = getelementptr inbounds i8, ptr %3, i32 4
  store i8 %25, ptr %26, align 4
  %27 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 6
  %28 = load i32, ptr %27, align 4
  %29 = trunc i32 %28 to i8
  %30 = getelementptr inbounds i8, ptr %3, i32 3
  store i8 %29, ptr %30, align 1
  %31 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 2
  %32 = load i32, ptr %31, align 4
  %33 = tail call zeroext i8 @_bin2bcd(i32 noundef %32) #9
  %34 = getelementptr inbounds i8, ptr %3, i32 2
  store i8 %33, ptr %34, align 2
  %35 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 1
  %36 = load i32, ptr %35, align 4
  %37 = tail call zeroext i8 @_bin2bcd(i32 noundef %36) #9
  %38 = getelementptr inbounds i8, ptr %3, i32 1
  store i8 %37, ptr %38, align 1
  %39 = load i32, ptr %6, align 4
  %40 = tail call zeroext i8 @_bin2bcd(i32 noundef %39) #9
  store i8 %40, ptr %3, align 8
  %41 = getelementptr inbounds %struct.max8907_rtc, ptr %5, i32 0, i32 1
  %42 = load ptr, ptr %41, align 4
  %43 = tail call i32 @regmap_write(ptr noundef %42, i32 noundef 24, i32 noundef 0) #7
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %55, label %45

45:                                               ; preds = %2
  %46 = load ptr, ptr %41, align 4
  %47 = call i32 @regmap_bulk_write(ptr noundef %46, i32 noundef 8, ptr noundef nonnull %3, i32 noundef 8) #7
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %45
  %50 = load i8, ptr %1, align 4
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %49
  %53 = load ptr, ptr %41, align 4
  %54 = call i32 @regmap_write(ptr noundef %53, i32 noundef 24, i32 noundef 119) #7
  br label %55

55:                                               ; preds = %52, %49, %45, %2
  %56 = phi i32 [ %43, %2 ], [ %47, %45 ], [ %54, %52 ], [ %47, %49 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #7
  ret i32 %56
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal fastcc void @regs_to_tm(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) unnamed_addr #5 {
  %3 = getelementptr i8, ptr %0, i32 7
  %4 = load i8, ptr %3, align 1
  %5 = tail call i32 @_bcd2bin(i8 noundef zeroext %4) #9
  %6 = mul i32 %5, 100
  %7 = getelementptr i8, ptr %0, i32 6
  %8 = load i8, ptr %7, align 1
  %9 = tail call i32 @_bcd2bin(i8 noundef zeroext %8) #9
  %10 = add i32 %6, -1900
  %11 = add i32 %10, %9
  %12 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 5
  store i32 %11, ptr %12, align 4
  %13 = getelementptr i8, ptr %0, i32 5
  %14 = load i8, ptr %13, align 1
  %15 = and i8 %14, 31
  %16 = tail call i32 @_bcd2bin(i8 noundef zeroext %15) #9
  %17 = add i32 %16, -1
  %18 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 4
  store i32 %17, ptr %18, align 4
  %19 = getelementptr i8, ptr %0, i32 4
  %20 = load i8, ptr %19, align 1
  %21 = and i8 %20, 63
  %22 = tail call i32 @_bcd2bin(i8 noundef zeroext %21) #9
  %23 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 3
  store i32 %22, ptr %23, align 4
  %24 = getelementptr i8, ptr %0, i32 3
  %25 = load i8, ptr %24, align 1
  %26 = and i8 %25, 7
  %27 = zext i8 %26 to i32
  %28 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 6
  store i32 %27, ptr %28, align 4
  %29 = getelementptr i8, ptr %0, i32 2
  %30 = load i8, ptr %29, align 1
  %31 = icmp sgt i8 %30, -1
  br i1 %31, label %43, label %32

32:                                               ; preds = %2
  %33 = and i8 %30, 31
  %34 = tail call i32 @_bcd2bin(i8 noundef zeroext %33) #9
  %35 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 2
  %36 = icmp eq i32 %34, 12
  %37 = select i1 %36, i32 0, i32 %34
  store i32 %37, ptr %35, align 4
  %38 = load i8, ptr %29, align 1
  %39 = and i8 %38, 32
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %47, label %41

41:                                               ; preds = %32
  %42 = add i32 %37, 12
  store i32 %42, ptr %35, align 4
  br label %47

43:                                               ; preds = %2
  %44 = and i8 %30, 63
  %45 = tail call i32 @_bcd2bin(i8 noundef zeroext %44) #9
  %46 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 2
  store i32 %45, ptr %46, align 4
  br label %47

47:                                               ; preds = %43, %41, %32
  %48 = getelementptr i8, ptr %0, i32 1
  %49 = load i8, ptr %48, align 1
  %50 = and i8 %49, 127
  %51 = tail call i32 @_bcd2bin(i8 noundef zeroext %50) #9
  %52 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 1
  store i32 %51, ptr %52, align 4
  %53 = load i8, ptr %0, align 1
  %54 = and i8 %53, 127
  %55 = tail call i32 @_bcd2bin(i8 noundef zeroext %54) #9
  store i32 %55, ptr %1, align 4
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @_bcd2bin(i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local zeroext i8 @_bin2bcd(i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_update_irq(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
