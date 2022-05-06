; ModuleID = '/llk/IR/drivers/rtc/rtc-tps65910.c_pt.bc'
source_filename = "../drivers/rtc/rtc-tps65910.c"
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
%struct.tps65910 = type { ptr, ptr, ptr, i32, ptr, i32, ptr }
%struct.tps65910_rtc = type { ptr, i32 }
%struct.rtc_device = type { %struct.device, ptr, i32, ptr, %struct.mutex, %struct.cdev, i32, i32, %struct.spinlock, %struct.wait_queue_head, ptr, i32, i32, %struct.timerqueue_head, %struct.rtc_timer, %struct.rtc_timer, %struct.hrtimer, i32, %struct.work_struct, i32, i32, [1 x i32], i64, i64, i64, i64, i8 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.rtc_timer = type { %struct.timerqueue_node, i64, ptr, ptr, i32 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rtc_wkalrm = type { i8, i8, %struct.rtc_time }

@__initcall__kmod_rtc_tps65910__210_469_tps65910_rtc_driver_init6 = internal global ptr @tps65910_rtc_driver_init, section ".initcall6.init", align 4
@tps65910_rtc_driver = internal global %struct.platform_driver { ptr @tps65910_rtc_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tps65910_rtc_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_tps65910_rtc_driver_exit = internal global ptr @tps65910_rtc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias211 = internal constant [41 x i8] c"rtc_tps65910.alias=platform:tps65910-rtc\00", section ".modinfo", align 1
@__UNIQUE_ID_author212 = internal constant [61 x i8] c"rtc_tps65910.author=Venu Byravarasu <vbyravarasu@nvidia.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file213 = internal constant [43 x i8] c"rtc_tps65910.file=drivers/rtc/rtc-tps65910\00", section ".modinfo", align 1
@__UNIQUE_ID_license214 = internal constant [25 x i8] c"rtc_tps65910.license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [13 x i8] c"tps65910-rtc\00", align 1
@tps65910_rtc_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @tps65910_rtc_suspend, ptr @tps65910_rtc_resume, ptr @tps65910_rtc_suspend, ptr @tps65910_rtc_resume, ptr @tps65910_rtc_suspend, ptr @tps65910_rtc_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Wake up is not possible as irq = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"wakeup-source\00", align 1
@tps65910_rtc_ops = internal constant %struct.rtc_class_ops { ptr null, ptr @tps65910_rtc_read_time, ptr @tps65910_rtc_set_time, ptr @tps65910_rtc_read_alarm, ptr @tps65910_rtc_set_alarm, ptr null, ptr @tps65910_rtc_alarm_irq_enable, ptr @tps65910_read_offset, ptr @tps65910_set_offset, ptr null, ptr null }, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"RTC CTRL reg update failed with err:%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"reading from RTC failed with err:%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"RTC stop failed with err:%d\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"rtc_set_time error %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"RTC start failed with err:%d\0A\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"rtc_read_alarm error %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"rtc_set_alarm error %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"rtc_get_calibration error: %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [40 x i8] c"RTC calibration value out of range: %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [31 x i8] c"rtc_set_calibration error: %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [40 x i8] c"auto_comp enable failed with error: %d\0A\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_alias211, ptr @__UNIQUE_ID_author212, ptr @__UNIQUE_ID_file213, ptr @__UNIQUE_ID_license214, ptr @__exitcall_tps65910_rtc_driver_exit, ptr @__initcall__kmod_rtc_tps65910__210_469_tps65910_rtc_driver_init6, ptr @tps65910_rtc_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @tps65910_rtc_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @tps65910_rtc_driver, ptr noundef null) #7
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @tps65910_rtc_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @tps65910_rtc_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tps65910_rtc_probe(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  store i32 0, ptr %2, align 4, !annotation !8
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 8, i32 noundef 3520) #7
  %9 = icmp eq ptr %8, null
  br i1 %9, label %69, label %10

10:                                               ; preds = %1
  %11 = tail call ptr @devm_rtc_allocate_device(ptr noundef %3) #7
  store ptr %11, ptr %8, align 4
  %12 = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = ptrtoint ptr %11 to i32
  br label %69

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.tps65910, ptr %7, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = call i32 @regmap_read(ptr noundef %17, i32 noundef 17, ptr noundef nonnull %2) #7
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %69, label %20

20:                                               ; preds = %15
  %21 = load ptr, ptr %16, align 4
  %22 = load i32, ptr %2, align 4
  %23 = call i32 @regmap_write(ptr noundef %21, i32 noundef 17, i32 noundef %22) #7
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %69, label %25

25:                                               ; preds = %20
  %26 = load ptr, ptr %16, align 4
  %27 = call i32 @regmap_update_bits_base(ptr noundef %26, i32 noundef 63, i32 noundef 64, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %69, label %29

29:                                               ; preds = %25
  store i32 1, ptr %2, align 4
  %30 = load ptr, ptr %16, align 4
  %31 = call i32 @regmap_write(ptr noundef %30, i32 noundef 16, i32 noundef 1) #7
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %69, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %8, ptr %34, align 8
  %35 = call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #7
  %36 = icmp slt i32 %35, 1
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str.1, i32 noundef %35) #8
  br label %69

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = load ptr, ptr %3, align 4
  br label %44

44:                                               ; preds = %42, %38
  %45 = phi ptr [ %43, %42 ], [ %40, %38 ]
  %46 = call i32 @devm_request_threaded_irq(ptr noundef %3, i32 noundef %35, ptr noundef null, ptr noundef nonnull @tps65910_rtc_interrupt, i32 noundef 8, ptr noundef %45, ptr noundef %3) #7
  %47 = icmp sgt i32 %46, -1
  %48 = select i1 %47, i32 %35, i32 -1
  %49 = getelementptr inbounds %struct.tps65910_rtc, ptr %8, i32 0, i32 1
  store i32 %48, ptr %49, align 4
  %50 = icmp eq i32 %48, -1
  br i1 %50, label %57, label %51

51:                                               ; preds = %44
  %52 = load ptr, ptr %7, align 4
  %53 = call zeroext i1 @device_property_present(ptr noundef %52, ptr noundef nonnull @.str.2) #7
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = call i32 @device_init_wakeup(ptr noundef %3, i1 noundef zeroext true) #7
  br label %60

56:                                               ; preds = %51
  call void @device_set_wakeup_capable(ptr noundef %3, i1 noundef zeroext true) #7
  br label %60

57:                                               ; preds = %44
  %58 = load ptr, ptr %8, align 4
  %59 = getelementptr inbounds %struct.rtc_device, ptr %58, i32 0, i32 21
  call void @_clear_bit(i32 noundef 0, ptr noundef %59) #7
  br label %60

60:                                               ; preds = %57, %56, %54
  %61 = load ptr, ptr %8, align 4
  %62 = getelementptr inbounds %struct.rtc_device, ptr %61, i32 0, i32 3
  store ptr @tps65910_rtc_ops, ptr %62, align 8
  %63 = load ptr, ptr %8, align 4
  %64 = getelementptr inbounds %struct.rtc_device, ptr %63, i32 0, i32 22
  store i64 946684800, ptr %64, align 8
  %65 = load ptr, ptr %8, align 4
  %66 = getelementptr inbounds %struct.rtc_device, ptr %65, i32 0, i32 23
  store i64 4102444799, ptr %66, align 8
  %67 = load ptr, ptr %8, align 4
  %68 = call i32 @__devm_rtc_register_device(ptr noundef null, ptr noundef %67) #7
  br label %69

69:                                               ; preds = %60, %37, %29, %25, %20, %15, %13, %1
  %70 = phi i32 [ %14, %13 ], [ -6, %37 ], [ %68, %60 ], [ -12, %1 ], [ %18, %15 ], [ %23, %20 ], [ %27, %25 ], [ %31, %29 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  ret i32 %70
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_rtc_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tps65910_rtc_interrupt(i32 noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %9 = load ptr, ptr %8, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  store i32 0, ptr %3, align 4, !annotation !8
  %10 = getelementptr inbounds %struct.tps65910, ptr %7, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = call i32 @regmap_read(ptr noundef %11, i32 noundef 17, ptr noundef nonnull %3) #7
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %2
  %15 = load i32, ptr %3, align 4
  %16 = load ptr, ptr %10, align 4
  %17 = call i32 @regmap_write(ptr noundef %16, i32 noundef 17, i32 noundef %15) #7
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %14
  %20 = and i32 %15, 64
  %21 = icmp eq i32 %20, 0
  %22 = select i1 %21, i32 0, i32 160
  %23 = load ptr, ptr %9, align 4
  call void @rtc_update_irq(ptr noundef %23, i32 noundef 1, i32 noundef %22) #7
  br label %24

24:                                               ; preds = %19, %14, %2
  %25 = phi i32 [ 1, %19 ], [ 0, %2 ], [ 0, %14 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  ret i32 %25
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_set_wakeup_capable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_rtc_register_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_update_irq(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tps65910_rtc_read_time(ptr noundef %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = alloca [6 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %3) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %3, i8 0, i32 6, i1 false), !annotation !8
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.tps65910, ptr %7, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 16, i32 noundef 64, i32 noundef 64, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.3, i32 noundef %10) #8
  br label %43

13:                                               ; preds = %2
  %14 = load ptr, ptr %8, align 4
  %15 = call i32 @regmap_bulk_read(ptr noundef %14, i32 noundef 0, ptr noundef nonnull %3, i32 noundef 6) #7
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.4, i32 noundef %15) #8
  br label %43

18:                                               ; preds = %13
  %19 = load i8, ptr %3, align 1
  %20 = call i32 @_bcd2bin(i8 noundef zeroext %19) #9
  store i32 %20, ptr %1, align 4
  %21 = getelementptr inbounds [6 x i8], ptr %3, i32 0, i32 1
  %22 = load i8, ptr %21, align 1
  %23 = call i32 @_bcd2bin(i8 noundef zeroext %22) #9
  %24 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 1
  store i32 %23, ptr %24, align 4
  %25 = getelementptr inbounds [6 x i8], ptr %3, i32 0, i32 2
  %26 = load i8, ptr %25, align 1
  %27 = call i32 @_bcd2bin(i8 noundef zeroext %26) #9
  %28 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 2
  store i32 %27, ptr %28, align 4
  %29 = getelementptr inbounds [6 x i8], ptr %3, i32 0, i32 3
  %30 = load i8, ptr %29, align 1
  %31 = call i32 @_bcd2bin(i8 noundef zeroext %30) #9
  %32 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 3
  store i32 %31, ptr %32, align 4
  %33 = getelementptr inbounds [6 x i8], ptr %3, i32 0, i32 4
  %34 = load i8, ptr %33, align 1
  %35 = call i32 @_bcd2bin(i8 noundef zeroext %34) #9
  %36 = add i32 %35, -1
  %37 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 4
  store i32 %36, ptr %37, align 4
  %38 = getelementptr inbounds [6 x i8], ptr %3, i32 0, i32 5
  %39 = load i8, ptr %38, align 1
  %40 = call i32 @_bcd2bin(i8 noundef zeroext %39) #9
  %41 = add i32 %40, 100
  %42 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 5
  store i32 %41, ptr %42, align 4
  br label %43

43:                                               ; preds = %18, %17, %12
  %44 = phi i32 [ %10, %12 ], [ %15, %17 ], [ %15, %18 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %3) #7
  ret i32 %44
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tps65910_rtc_set_time(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca [6 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %3) #7
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = load i32, ptr %1, align 4
  %9 = tail call zeroext i8 @_bin2bcd(i32 noundef %8) #9
  store i8 %9, ptr %3, align 1
  %10 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = tail call zeroext i8 @_bin2bcd(i32 noundef %11) #9
  %13 = getelementptr inbounds [6 x i8], ptr %3, i32 0, i32 1
  store i8 %12, ptr %13, align 1
  %14 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = tail call zeroext i8 @_bin2bcd(i32 noundef %15) #9
  %17 = getelementptr inbounds [6 x i8], ptr %3, i32 0, i32 2
  store i8 %16, ptr %17, align 1
  %18 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 3
  %19 = load i32, ptr %18, align 4
  %20 = tail call zeroext i8 @_bin2bcd(i32 noundef %19) #9
  %21 = getelementptr inbounds [6 x i8], ptr %3, i32 0, i32 3
  store i8 %20, ptr %21, align 1
  %22 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 4
  %23 = load i32, ptr %22, align 4
  %24 = add i32 %23, 1
  %25 = tail call zeroext i8 @_bin2bcd(i32 noundef %24) #9
  %26 = getelementptr inbounds [6 x i8], ptr %3, i32 0, i32 4
  store i8 %25, ptr %26, align 1
  %27 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 5
  %28 = load i32, ptr %27, align 4
  %29 = add i32 %28, -100
  %30 = tail call zeroext i8 @_bin2bcd(i32 noundef %29) #9
  %31 = getelementptr inbounds [6 x i8], ptr %3, i32 0, i32 5
  store i8 %30, ptr %31, align 1
  %32 = getelementptr inbounds %struct.tps65910, ptr %7, i32 0, i32 2
  %33 = load ptr, ptr %32, align 4
  %34 = tail call i32 @regmap_update_bits_base(ptr noundef %33, i32 noundef 16, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.5, i32 noundef %34) #8
  br label %47

37:                                               ; preds = %2
  %38 = load ptr, ptr %32, align 4
  %39 = call i32 @regmap_bulk_write(ptr noundef %38, i32 noundef 0, ptr noundef nonnull %3, i32 noundef 6) #7
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.6, i32 noundef %39) #8
  br label %47

42:                                               ; preds = %37
  %43 = load ptr, ptr %32, align 4
  %44 = call i32 @regmap_update_bits_base(ptr noundef %43, i32 noundef 16, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.7, i32 noundef %44) #8
  br label %47

47:                                               ; preds = %46, %42, %41, %36
  %48 = phi i32 [ %34, %36 ], [ %39, %41 ], [ %44, %46 ], [ %44, %42 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %3) #7
  ret i32 %48
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tps65910_rtc_read_alarm(ptr noundef %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = alloca [6 x i8], align 1
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %3) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %3, i8 0, i32 6, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  store i32 0, ptr %4, align 4, !annotation !8
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.tps65910, ptr %8, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = call i32 @regmap_bulk_read(ptr noundef %10, i32 noundef 8, ptr noundef nonnull %3, i32 noundef 6) #7
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.8, i32 noundef %11) #8
  br label %48

14:                                               ; preds = %2
  %15 = load i8, ptr %3, align 1
  %16 = call i32 @_bcd2bin(i8 noundef zeroext %15) #9
  %17 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2
  store i32 %16, ptr %17, align 4
  %18 = getelementptr inbounds [6 x i8], ptr %3, i32 0, i32 1
  %19 = load i8, ptr %18, align 1
  %20 = call i32 @_bcd2bin(i8 noundef zeroext %19) #9
  %21 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 1
  store i32 %20, ptr %21, align 4
  %22 = getelementptr inbounds [6 x i8], ptr %3, i32 0, i32 2
  %23 = load i8, ptr %22, align 1
  %24 = call i32 @_bcd2bin(i8 noundef zeroext %23) #9
  %25 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 2
  store i32 %24, ptr %25, align 4
  %26 = getelementptr inbounds [6 x i8], ptr %3, i32 0, i32 3
  %27 = load i8, ptr %26, align 1
  %28 = call i32 @_bcd2bin(i8 noundef zeroext %27) #9
  %29 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 3
  store i32 %28, ptr %29, align 4
  %30 = getelementptr inbounds [6 x i8], ptr %3, i32 0, i32 4
  %31 = load i8, ptr %30, align 1
  %32 = call i32 @_bcd2bin(i8 noundef zeroext %31) #9
  %33 = add i32 %32, -1
  %34 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 4
  store i32 %33, ptr %34, align 4
  %35 = getelementptr inbounds [6 x i8], ptr %3, i32 0, i32 5
  %36 = load i8, ptr %35, align 1
  %37 = call i32 @_bcd2bin(i8 noundef zeroext %36) #9
  %38 = add i32 %37, 100
  %39 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 5
  store i32 %38, ptr %39, align 4
  %40 = load ptr, ptr %9, align 4
  %41 = call i32 @regmap_read(ptr noundef %40, i32 noundef 18, ptr noundef nonnull %4) #7
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %14
  %44 = load i32, ptr %4, align 4
  %45 = and i32 %44, 8
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %43
  store i8 1, ptr %1, align 4
  br label %48

48:                                               ; preds = %47, %43, %14, %13
  %49 = phi i32 [ %11, %13 ], [ %41, %14 ], [ %41, %47 ], [ %41, %43 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %3) #7
  ret i32 %49
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tps65910_rtc_set_alarm(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca [6 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %3) #7
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.tps65910, ptr %7, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 @regmap_write(ptr noundef %9, i32 noundef 18, i32 noundef 0) #7
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %52

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = tail call zeroext i8 @_bin2bcd(i32 noundef %14) #9
  store i8 %15, ptr %3, align 1
  %16 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = tail call zeroext i8 @_bin2bcd(i32 noundef %17) #9
  %19 = getelementptr inbounds [6 x i8], ptr %3, i32 0, i32 1
  store i8 %18, ptr %19, align 1
  %20 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 2
  %21 = load i32, ptr %20, align 4
  %22 = tail call zeroext i8 @_bin2bcd(i32 noundef %21) #9
  %23 = getelementptr inbounds [6 x i8], ptr %3, i32 0, i32 2
  store i8 %22, ptr %23, align 1
  %24 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 3
  %25 = load i32, ptr %24, align 4
  %26 = tail call zeroext i8 @_bin2bcd(i32 noundef %25) #9
  %27 = getelementptr inbounds [6 x i8], ptr %3, i32 0, i32 3
  store i8 %26, ptr %27, align 1
  %28 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 4
  %29 = load i32, ptr %28, align 4
  %30 = add i32 %29, 1
  %31 = tail call zeroext i8 @_bin2bcd(i32 noundef %30) #9
  %32 = getelementptr inbounds [6 x i8], ptr %3, i32 0, i32 4
  store i8 %31, ptr %32, align 1
  %33 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 5
  %34 = load i32, ptr %33, align 4
  %35 = add i32 %34, -100
  %36 = tail call zeroext i8 @_bin2bcd(i32 noundef %35) #9
  %37 = getelementptr inbounds [6 x i8], ptr %3, i32 0, i32 5
  store i8 %36, ptr %37, align 1
  %38 = load ptr, ptr %8, align 4
  %39 = call i32 @regmap_bulk_write(ptr noundef %38, i32 noundef 8, ptr noundef nonnull %3, i32 noundef 6) #7
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.9, i32 noundef %39) #8
  br label %52

42:                                               ; preds = %12
  %43 = load i8, ptr %1, align 4
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %52, label %45

45:                                               ; preds = %42
  %46 = load ptr, ptr %4, align 4
  %47 = getelementptr inbounds %struct.device, ptr %46, i32 0, i32 8
  %48 = load ptr, ptr %47, align 8
  %49 = getelementptr inbounds %struct.tps65910, ptr %48, i32 0, i32 2
  %50 = load ptr, ptr %49, align 4
  %51 = call i32 @regmap_write(ptr noundef %50, i32 noundef 18, i32 noundef 8) #7
  br label %52

52:                                               ; preds = %45, %42, %41, %2
  %53 = phi i32 [ %39, %41 ], [ %10, %2 ], [ %51, %45 ], [ 0, %42 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %3) #7
  ret i32 %53
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tps65910_rtc_alarm_irq_enable(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq i32 %1, 0
  %8 = getelementptr inbounds %struct.tps65910, ptr %6, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = select i1 %7, i32 0, i32 8
  %11 = tail call i32 @regmap_write(ptr noundef %9, i32 noundef 18, i32 noundef %10) #7
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tps65910_read_offset(ptr noundef %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = alloca i32, align 4
  %4 = alloca [2 x i8], align 2
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #7
  store i16 0, ptr %4, align 2, !annotation !8
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 8
  %9 = load ptr, ptr %8, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #7
  store i32 0, ptr %5, align 4, !annotation !8
  %10 = getelementptr inbounds %struct.tps65910, ptr %9, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = call i32 @regmap_read(ptr noundef %11, i32 noundef 16, ptr noundef nonnull %5) #7
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %24, label %14

14:                                               ; preds = %2
  %15 = load i32, ptr %5, align 4
  %16 = and i32 %15, 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #7
  br label %39

19:                                               ; preds = %14
  %20 = load ptr, ptr %10, align 4
  %21 = call i32 @regmap_bulk_read(ptr noundef %20, i32 noundef 19, ptr noundef nonnull %4, i32 noundef 2) #7
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.10, i32 noundef %21) #8
  br label %24

24:                                               ; preds = %23, %2
  %25 = phi i32 [ %12, %2 ], [ %21, %23 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #7
  br label %44

26:                                               ; preds = %19
  %27 = load i8, ptr %4, align 2
  %28 = zext i8 %27 to i16
  %29 = getelementptr inbounds [2 x i8], ptr %4, i32 0, i32 1
  %30 = load i8, ptr %29, align 1
  %31 = zext i8 %30 to i16
  %32 = shl nuw i16 %31, 8
  %33 = or i16 %32, %28
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #7
  %34 = sext i16 %33 to i64
  %35 = mul nsw i64 %34, 1000000000
  %36 = icmp slt i16 %32, 0
  %37 = select i1 %36, i64 -58982400, i64 58982400
  %38 = add nsw i64 %35, %37
  br label %39

39:                                               ; preds = %26, %18
  %40 = phi i64 [ 58982400, %18 ], [ %38, %26 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  store i32 0, ptr %3, align 4, !annotation !8
  %41 = call i64 @div_s64_rem(i64 noundef %40, i32 noundef 117964800, ptr noundef nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  %42 = trunc i64 %41 to i32
  %43 = sub i32 0, %42
  store i32 %43, ptr %1, align 4
  br label %44

44:                                               ; preds = %39, %24
  %45 = phi i32 [ 0, %39 ], [ %25, %24 ]
  ret i32 %45
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tps65910_set_offset(ptr noundef %0, i32 noundef %1) #2 {
  %3 = alloca [2 x i8], align 2
  %4 = alloca i32, align 4
  %5 = add i32 %1, -277779
  %6 = icmp ult i32 %5, -555540
  br i1 %6, label %40, label %7

7:                                                ; preds = %2
  %8 = sext i32 %1 to i64
  %9 = mul nsw i64 %8, 117964800
  %10 = icmp slt i32 %1, 0
  %11 = select i1 %10, i64 -500000000, i64 500000000
  %12 = add nsw i64 %9, %11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  store i32 0, ptr %4, align 4, !annotation !8
  %13 = call i64 @div_s64_rem(i64 noundef %12, i32 noundef 1000000000, ptr noundef nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  %14 = trunc i64 %13 to i32
  %15 = sub i32 0, %14
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #7
  %16 = add i32 %14, -32769
  %17 = icmp ult i32 %16, -65535
  br i1 %17, label %18, label %19

18:                                               ; preds = %7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef %15) #8
  br label %38

19:                                               ; preds = %7
  %20 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.device, ptr %21, i32 0, i32 8
  %23 = load ptr, ptr %22, align 8
  %24 = trunc i32 %15 to i8
  store i8 %24, ptr %3, align 2
  %25 = lshr i32 %15, 8
  %26 = trunc i32 %25 to i8
  %27 = getelementptr inbounds [2 x i8], ptr %3, i32 0, i32 1
  store i8 %26, ptr %27, align 1
  %28 = getelementptr inbounds %struct.tps65910, ptr %23, i32 0, i32 2
  %29 = load ptr, ptr %28, align 4
  %30 = call i32 @regmap_bulk_write(ptr noundef %29, i32 noundef 19, ptr noundef nonnull %3, i32 noundef 2) #7
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %19
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.12, i32 noundef %30) #8
  br label %38

33:                                               ; preds = %19
  %34 = load ptr, ptr %28, align 4
  %35 = call i32 @regmap_update_bits_base(ptr noundef %34, i32 noundef 16, i32 noundef 4, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.13, i32 noundef %35) #8
  br label %38

38:                                               ; preds = %37, %33, %32, %18
  %39 = phi i32 [ -22, %18 ], [ %30, %32 ], [ %35, %37 ], [ %35, %33 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #7
  br label %40

40:                                               ; preds = %38, %2
  %41 = phi i32 [ %39, %38 ], [ -34, %2 ]
  ret i32 %41
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @_bcd2bin(i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local zeroext i8 @_bin2bcd(i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div_s64_rem(i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tps65910_rtc_suspend(ptr nocapture noundef readonly %0) #2 {
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
  %13 = getelementptr inbounds %struct.tps65910_rtc, ptr %3, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = tail call i32 @irq_set_irq_wake(i32 noundef %14, i32 noundef 1) #7
  br label %16

16:                                               ; preds = %12, %8, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tps65910_rtc_resume(ptr nocapture noundef readonly %0) #2 {
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
  %13 = getelementptr inbounds %struct.tps65910_rtc, ptr %3, i32 0, i32 1
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
