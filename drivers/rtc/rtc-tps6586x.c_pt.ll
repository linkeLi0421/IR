; ModuleID = '/llk/IR/drivers/rtc/rtc-tps6586x.c_pt.bc'
source_filename = "../drivers/rtc/rtc-tps6586x.c"
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
%struct.tps6586x_rtc = type { ptr, ptr, i32, i8 }
%struct.rtc_device = type { %struct.device, ptr, i32, ptr, %struct.mutex, %struct.cdev, i32, i32, %struct.spinlock, %struct.wait_queue_head, ptr, i32, i32, %struct.timerqueue_head, %struct.rtc_timer, %struct.rtc_timer, %struct.hrtimer, i32, %struct.work_struct, i32, i32, [1 x i32], i64, i64, i64, i64, i8 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.rtc_timer = type { %struct.timerqueue_node, i64, ptr, ptr, i32 }
%struct.rtc_wkalrm = type { i8, i8, %struct.rtc_time }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@__initcall__kmod_rtc_tps6586x__211_322_tps6586x_rtc_driver_init6 = internal global ptr @tps6586x_rtc_driver_init, section ".initcall6.init", align 4
@tps6586x_rtc_driver = internal global %struct.platform_driver { ptr @tps6586x_rtc_probe, ptr @tps6586x_rtc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tps6586x_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_tps6586x_rtc_driver_exit = internal global ptr @tps6586x_rtc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias212 = internal constant [41 x i8] c"rtc_tps6586x.alias=platform:tps6586x-rtc\00", section ".modinfo", align 1
@__UNIQUE_ID_description213 = internal constant [48 x i8] c"rtc_tps6586x.description=TI TPS6586x RTC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author214 = internal constant [59 x i8] c"rtc_tps6586x.author=Laxman dewangan <ldewangan@nvidia.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file215 = internal constant [43 x i8] c"rtc_tps6586x.file=drivers/rtc/rtc-tps6586x\00", section ".modinfo", align 1
@__UNIQUE_ID_license216 = internal constant [28 x i8] c"rtc_tps6586x.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [13 x i8] c"tps6586x-rtc\00", align 1
@tps6586x_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @tps6586x_rtc_suspend, ptr @tps6586x_rtc_resume, ptr @tps6586x_rtc_suspend, ptr @tps6586x_rtc_resume, ptr @tps6586x_rtc_suspend, ptr @tps6586x_rtc_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"unable to start counter\0A\00", align 1
@tps6586x_rtc_ops = internal constant %struct.rtc_class_ops { ptr null, ptr @tps6586x_rtc_read_time, ptr @tps6586x_rtc_set_time, ptr @tps6586x_rtc_read_alarm, ptr @tps6586x_rtc_set_alarm, ptr null, ptr @tps6586x_rtc_alarm_irq_enable, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"request IRQ(%d) failed with ret %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"read counter failed with err %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"failed to clear RTC_ENABLE\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"failed to program new time\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"failed to set RTC_ENABLE\0A\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"read RTC_ALARM1_HI failed with err %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [38 x i8] c"programming alarm failed with err %d\0A\00", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_alias212, ptr @__UNIQUE_ID_author214, ptr @__UNIQUE_ID_description213, ptr @__UNIQUE_ID_file215, ptr @__UNIQUE_ID_license216, ptr @__exitcall_tps6586x_rtc_driver_exit, ptr @__initcall__kmod_rtc_tps6586x__211_322_tps6586x_rtc_driver_init6, ptr @tps6586x_rtc_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @tps6586x_rtc_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @tps6586x_rtc_driver, ptr noundef null) #6
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @tps6586x_rtc_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @tps6586x_rtc_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tps6586x_rtc_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 16, i32 noundef 3520) #6
  %6 = icmp eq ptr %5, null
  br i1 %6, label %50, label %7

7:                                                ; preds = %1
  store ptr %2, ptr %5, align 4
  %8 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #6
  %9 = getelementptr inbounds %struct.tps6586x_rtc, ptr %5, i32 0, i32 2
  store i32 %8, ptr %9, align 4
  %10 = tail call i32 @tps6586x_update(ptr noundef %4, i32 noundef 192, i8 noundef zeroext 96, i8 noundef zeroext 110) #6
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.1) #7
  br label %50

13:                                               ; preds = %7
  %14 = tail call i32 @device_init_wakeup(ptr noundef %2, i1 noundef zeroext true) #6
  %15 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %5, ptr %15, align 8
  %16 = tail call ptr @devm_rtc_allocate_device(ptr noundef %2) #6
  %17 = getelementptr inbounds %struct.tps6586x_rtc, ptr %5, i32 0, i32 1
  store ptr %16, ptr %17, align 4
  %18 = icmp ugt ptr %16, inttoptr (i32 -4096 to ptr)
  br i1 %18, label %19, label %21

19:                                               ; preds = %13
  %20 = ptrtoint ptr %16 to i32
  br label %47

21:                                               ; preds = %13
  %22 = getelementptr inbounds %struct.rtc_device, ptr %16, i32 0, i32 3
  store ptr @tps6586x_rtc_ops, ptr %22, align 8
  %23 = load ptr, ptr %17, align 4
  %24 = getelementptr inbounds %struct.rtc_device, ptr %23, i32 0, i32 23
  store i64 1073741823, ptr %24, align 8
  %25 = tail call i64 @mktime64(i32 noundef 2009, i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 0) #6
  %26 = load ptr, ptr %17, align 4
  %27 = getelementptr inbounds %struct.rtc_device, ptr %26, i32 0, i32 24
  store i64 %25, ptr %27, align 8
  %28 = load ptr, ptr %17, align 4
  %29 = getelementptr inbounds %struct.rtc_device, ptr %28, i32 0, i32 26
  store i8 1, ptr %29, align 8
  %30 = load i32, ptr %9, align 4
  tail call void @irq_modify_status(i32 noundef %30, i32 noundef 0, i32 noundef 4096) #6
  %31 = load i32, ptr %9, align 4
  %32 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %21
  %36 = load ptr, ptr %2, align 4
  br label %37

37:                                               ; preds = %35, %21
  %38 = phi ptr [ %36, %35 ], [ %33, %21 ]
  %39 = tail call i32 @devm_request_threaded_irq(ptr noundef %2, i32 noundef %31, ptr noundef null, ptr noundef nonnull @tps6586x_rtc_irq, i32 noundef 8192, ptr noundef %38, ptr noundef nonnull %5) #6
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = load i32, ptr %9, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.2, i32 noundef %42, i32 noundef %39) #7
  br label %47

43:                                               ; preds = %37
  %44 = load ptr, ptr %17, align 4
  %45 = tail call i32 @__devm_rtc_register_device(ptr noundef null, ptr noundef %44) #6
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %43, %41, %19
  %48 = phi i32 [ %20, %19 ], [ %39, %41 ], [ %45, %43 ]
  %49 = tail call i32 @tps6586x_update(ptr noundef %4, i32 noundef 192, i8 noundef zeroext 0, i8 noundef zeroext 110) #6
  br label %50

50:                                               ; preds = %47, %43, %12, %1
  %51 = phi i32 [ %10, %12 ], [ %48, %47 ], [ -12, %1 ], [ 0, %43 ]
  ret i32 %51
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tps6586x_rtc_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @tps6586x_update(ptr noundef %3, i32 noundef 192, i8 noundef zeroext 0, i8 noundef zeroext 110) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tps6586x_update(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_rtc_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @mktime64(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tps6586x_rtc_irq(i32 noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.tps6586x_rtc, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  tail call void @rtc_update_irq(ptr noundef %4, i32 noundef 1, i32 noundef 160) #6
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_rtc_register_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tps6586x_rtc_read_time(ptr noundef %0, ptr noundef %1) #2 {
  %3 = alloca [6 x i8], align 1
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %3) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %3, i8 0, i32 6, i1 false), !annotation !8
  %6 = call i32 @tps6586x_reads(ptr noundef %5, i32 noundef 197, i32 noundef 6, ptr noundef nonnull %3) #6
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %29, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds [6 x i8], ptr %3, i32 0, i32 1
  %10 = load i8, ptr %9, align 1
  %11 = zext i8 %10 to i64
  %12 = getelementptr inbounds [6 x i8], ptr %3, i32 0, i32 2
  %13 = load i8, ptr %12, align 1
  %14 = zext i8 %13 to i64
  %15 = shl nuw nsw i64 %11, 16
  %16 = shl nuw nsw i64 %14, 8
  %17 = or i64 %15, %16
  %18 = getelementptr inbounds [6 x i8], ptr %3, i32 0, i32 3
  %19 = load i8, ptr %18, align 1
  %20 = zext i8 %19 to i64
  %21 = or i64 %17, %20
  %22 = getelementptr inbounds [6 x i8], ptr %3, i32 0, i32 4
  %23 = load i8, ptr %22, align 1
  %24 = zext i8 %23 to i64
  %25 = shl nuw nsw i64 %21, 16
  %26 = shl nuw nsw i64 %24, 8
  %27 = or i64 %25, %26
  %28 = lshr i64 %27, 10
  call void @rtc_time64_to_tm(i64 noundef %28, ptr noundef %1) #6
  br label %30

29:                                               ; preds = %2
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.3, i32 noundef %6) #7
  br label %30

30:                                               ; preds = %29, %8
  %31 = phi i32 [ %6, %29 ], [ 0, %8 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %3) #6
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tps6586x_rtc_set_time(ptr noundef %0, ptr noundef %1) #2 {
  %3 = alloca [5 x i8], align 1
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %3) #6
  %6 = tail call i64 @rtc_tm_to_time64(ptr noundef %1) #6
  %7 = shl i64 %6, 10
  %8 = lshr i64 %7, 32
  %9 = trunc i64 %8 to i8
  store i8 %9, ptr %3, align 1
  %10 = lshr i64 %7, 24
  %11 = trunc i64 %10 to i8
  %12 = getelementptr inbounds [5 x i8], ptr %3, i32 0, i32 1
  store i8 %11, ptr %12, align 1
  %13 = lshr i64 %7, 16
  %14 = trunc i64 %13 to i8
  %15 = getelementptr inbounds [5 x i8], ptr %3, i32 0, i32 2
  store i8 %14, ptr %15, align 1
  %16 = lshr exact i64 %7, 8
  %17 = trunc i64 %16 to i8
  %18 = getelementptr inbounds [5 x i8], ptr %3, i32 0, i32 3
  store i8 %17, ptr %18, align 1
  %19 = getelementptr inbounds [5 x i8], ptr %3, i32 0, i32 4
  store i8 0, ptr %19, align 1
  %20 = tail call i32 @tps6586x_clr_bits(ptr noundef %5, i32 noundef 192, i8 noundef zeroext 32) #6
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.4) #7
  br label %31

23:                                               ; preds = %2
  %24 = call i32 @tps6586x_writes(ptr noundef %5, i32 noundef 198, i32 noundef 5, ptr noundef nonnull %3) #6
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.5) #7
  br label %31

27:                                               ; preds = %23
  %28 = call i32 @tps6586x_set_bits(ptr noundef %5, i32 noundef 192, i8 noundef zeroext 32) #6
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.6) #7
  br label %31

31:                                               ; preds = %30, %27, %26, %22
  %32 = phi i32 [ %20, %22 ], [ %24, %26 ], [ %28, %30 ], [ 0, %27 ]
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %3) #6
  ret i32 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tps6586x_rtc_read_alarm(ptr noundef %0, ptr noundef %1) #2 {
  %3 = alloca [3 x i8], align 1
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %3) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(3) %3, i8 0, i32 3, i1 false), !annotation !8
  %6 = call i32 @tps6586x_reads(ptr noundef %5, i32 noundef 193, i32 noundef 3, ptr noundef nonnull %3) #6
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.7, i32 noundef %6) #7
  br label %21

9:                                                ; preds = %2
  %10 = load i8, ptr %3, align 1
  %11 = zext i8 %10 to i32
  %12 = shl nuw nsw i32 %11, 16
  %13 = getelementptr inbounds [3 x i8], ptr %3, i32 0, i32 1
  %14 = load i8, ptr %13, align 1
  %15 = zext i8 %14 to i32
  %16 = shl nuw nsw i32 %15, 8
  %17 = or i32 %16, %12
  %18 = lshr i32 %17, 10
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2
  call void @rtc_time64_to_tm(i64 noundef %19, ptr noundef %20) #6
  br label %21

21:                                               ; preds = %9, %8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %3) #6
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tps6586x_rtc_set_alarm(ptr noundef %0, ptr noundef %1) #2 {
  %3 = alloca [3 x i8], align 1
  %4 = alloca [6 x i8], align 1
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %3) #6
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %4) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %4, i8 0, i32 6, i1 false), !annotation !8
  %7 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2
  %8 = tail call i64 @rtc_tm_to_time64(ptr noundef %7) #6
  %9 = load i8, ptr %1, align 4
  %10 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %11 = load ptr, ptr %10, align 8
  %12 = icmp eq i8 %9, 0
  %13 = getelementptr inbounds %struct.tps6586x_rtc, ptr %11, i32 0, i32 3
  %14 = load i8, ptr %13, align 4, !range !9
  %15 = icmp eq i8 %14, 0
  br i1 %12, label %20, label %16

16:                                               ; preds = %2
  br i1 %15, label %17, label %26

17:                                               ; preds = %16
  %18 = getelementptr inbounds %struct.tps6586x_rtc, ptr %11, i32 0, i32 2
  %19 = load i32, ptr %18, align 4
  tail call void @enable_irq(i32 noundef %19) #6
  br label %24

20:                                               ; preds = %2
  br i1 %15, label %26, label %21

21:                                               ; preds = %20
  %22 = getelementptr inbounds %struct.tps6586x_rtc, ptr %11, i32 0, i32 2
  %23 = load i32, ptr %22, align 4
  tail call void @disable_irq(i32 noundef %23) #6
  br label %24

24:                                               ; preds = %21, %17
  %25 = phi i8 [ 0, %21 ], [ 1, %17 ]
  store i8 %25, ptr %13, align 4
  br label %26

26:                                               ; preds = %24, %20, %16
  %27 = call i32 @tps6586x_reads(ptr noundef %6, i32 noundef 197, i32 noundef 6, ptr noundef nonnull %4) #6
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %66, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds [6 x i8], ptr %4, i32 0, i32 1
  %31 = load i8, ptr %30, align 1
  %32 = zext i8 %31 to i64
  %33 = getelementptr inbounds [6 x i8], ptr %4, i32 0, i32 2
  %34 = load i8, ptr %33, align 1
  %35 = zext i8 %34 to i64
  %36 = shl nuw nsw i64 %32, 16
  %37 = shl nuw nsw i64 %35, 8
  %38 = or i64 %36, %37
  %39 = getelementptr inbounds [6 x i8], ptr %4, i32 0, i32 3
  %40 = load i8, ptr %39, align 1
  %41 = zext i8 %40 to i64
  %42 = or i64 %38, %41
  %43 = getelementptr inbounds [6 x i8], ptr %4, i32 0, i32 4
  %44 = load i8, ptr %43, align 1
  %45 = zext i8 %44 to i64
  %46 = shl nuw nsw i64 %42, 16
  %47 = shl nuw nsw i64 %45, 8
  %48 = or i64 %46, %47
  %49 = lshr i64 %48, 10
  %50 = and i64 %49, 4294967295
  %51 = sub i64 %8, %50
  %52 = icmp sgt i64 %51, 16383
  %53 = trunc i64 %8 to i32
  %54 = trunc i64 %49 to i32
  %55 = add i32 %54, 4194303
  %56 = select i1 %52, i32 %55, i32 %53
  %57 = shl i32 %56, 10
  %58 = lshr i32 %57, 16
  %59 = trunc i32 %58 to i8
  store i8 %59, ptr %3, align 1
  %60 = lshr exact i32 %57, 8
  %61 = trunc i32 %60 to i8
  %62 = getelementptr inbounds [3 x i8], ptr %3, i32 0, i32 1
  store i8 %61, ptr %62, align 1
  %63 = getelementptr inbounds [3 x i8], ptr %3, i32 0, i32 2
  store i8 0, ptr %63, align 1
  %64 = call i32 @tps6586x_writes(ptr noundef %6, i32 noundef 193, i32 noundef 3, ptr noundef nonnull %3) #6
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %68, label %67

66:                                               ; preds = %26
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.3, i32 noundef %27) #7
  br label %68

67:                                               ; preds = %29
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.9, i32 noundef %64) #7
  br label %68

68:                                               ; preds = %67, %66, %29
  %69 = phi i32 [ %27, %66 ], [ %64, %67 ], [ 0, %29 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %3) #6
  ret i32 %69
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tps6586x_rtc_alarm_irq_enable(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.tps6586x_rtc, ptr %4, i32 0, i32 3
  %7 = load i8, ptr %6, align 4, !range !9
  %8 = icmp eq i8 %7, 0
  br i1 %5, label %13, label %9

9:                                                ; preds = %2
  br i1 %8, label %10, label %19

10:                                               ; preds = %9
  %11 = getelementptr inbounds %struct.tps6586x_rtc, ptr %4, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  tail call void @enable_irq(i32 noundef %12) #6
  br label %17

13:                                               ; preds = %2
  br i1 %8, label %19, label %14

14:                                               ; preds = %13
  %15 = getelementptr inbounds %struct.tps6586x_rtc, ptr %4, i32 0, i32 2
  %16 = load i32, ptr %15, align 4
  tail call void @disable_irq(i32 noundef %16) #6
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
declare dso_local i32 @tps6586x_reads(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_time64_to_tm(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @rtc_tm_to_time64(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tps6586x_clr_bits(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tps6586x_writes(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tps6586x_set_bits(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_modify_status(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_update_irq(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tps6586x_rtc_suspend(ptr nocapture noundef readonly %0) #2 {
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
  %13 = getelementptr inbounds %struct.tps6586x_rtc, ptr %3, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = tail call i32 @irq_set_irq_wake(i32 noundef %14, i32 noundef 1) #6
  br label %16

16:                                               ; preds = %12, %8, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tps6586x_rtc_resume(ptr nocapture noundef readonly %0) #2 {
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
  %13 = getelementptr inbounds %struct.tps6586x_rtc, ptr %3, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = tail call i32 @irq_set_irq_wake(i32 noundef %14, i32 noundef 0) #6
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
