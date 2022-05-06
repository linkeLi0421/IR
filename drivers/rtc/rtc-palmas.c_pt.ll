; ModuleID = '/llk/IR/drivers/rtc/rtc-palmas.c_pt.bc'
source_filename = "../drivers/rtc/rtc-palmas.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
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
%struct.palmas = type { ptr, [3 x ptr], [3 x ptr], i32, i32, i32, i32, %struct.mutex, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8 }
%struct.palmas_rtc = type { ptr, ptr, i32 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rtc_wkalrm = type { i8, i8, %struct.rtc_time }

@__initcall__kmod_rtc_palmas__252_358_palmas_rtc_driver_init6 = internal global ptr @palmas_rtc_driver_init, section ".initcall6.init", align 4
@palmas_rtc_driver = internal global %struct.platform_driver { ptr @palmas_rtc_probe, ptr @palmas_rtc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @of_palmas_rtc_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @palmas_rtc_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_palmas_rtc_driver_exit = internal global ptr @palmas_rtc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias253 = internal constant [37 x i8] c"rtc_palmas.alias=platform:palmas_rtc\00", section ".modinfo", align 1
@__UNIQUE_ID_description254 = internal constant [51 x i8] c"rtc_palmas.description=TI PALMAS series RTC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author255 = internal constant [57 x i8] c"rtc_palmas.author=Laxman Dewangan <ldewangan@nvidia.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file256 = internal constant [39 x i8] c"rtc_palmas.file=drivers/rtc/rtc-palmas\00", section ".modinfo", align 1
@__UNIQUE_ID_license257 = internal constant [26 x i8] c"rtc_palmas.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [11 x i8] c"palmas-rtc\00", align 1
@of_palmas_rtc_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,palmas-rtc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@palmas_rtc_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @palmas_rtc_suspend, ptr @palmas_rtc_resume, ptr @palmas_rtc_suspend, ptr @palmas_rtc_resume, ptr @palmas_rtc_suspend, ptr @palmas_rtc_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"ti,backup-battery-chargeable\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"ti,backup-battery-charge-high-current\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"clear RTC int failed, err = %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"BACKUP_BATTERY_CTRL update failed, %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"RTC_CTRL write failed, err = %d\0A\00", align 1
@palmas_rtc_ops = internal constant %struct.rtc_class_ops { ptr null, ptr @palmas_rtc_read_time, ptr @palmas_rtc_set_time, ptr @palmas_rtc_read_alarm, ptr @palmas_rtc_set_alarm, ptr null, ptr @palmas_rtc_alarm_irq_enable, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.6 = private unnamed_addr constant [31 x i8] c"RTC register failed, err = %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"IRQ request failed, err = %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"RTC_STATUS read failed, err = %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"RTC_STATUS write failed, err = %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [37 x i8] c"RTC CTRL reg update failed, err: %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [39 x i8] c"RTC_SECONDS reg read failed, err = %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"RTC stop failed, err = %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [40 x i8] c"RTC_SECONDS reg write failed, err = %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [28 x i8] c"RTC start failed, err = %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [41 x i8] c"RTC_ALARM_SECONDS read failed, err = %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [42 x i8] c"RTC_INTERRUPTS reg read failed, err = %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [26 x i8] c"Disable RTC alarm failed\0A\00", align 1
@.str.18 = private unnamed_addr constant [42 x i8] c"ALARM_SECONDS_REG write failed, err = %d\0A\00", align 1
@.str.19 = private unnamed_addr constant [38 x i8] c"RTC interrupt clear failed, err = %d\0A\00", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_alias253, ptr @__UNIQUE_ID_author255, ptr @__UNIQUE_ID_description254, ptr @__UNIQUE_ID_file256, ptr @__UNIQUE_ID_license257, ptr @__exitcall_palmas_rtc_driver_exit, ptr @__initcall__kmod_rtc_palmas__252_358_palmas_rtc_driver_init6, ptr @palmas_rtc_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @palmas_rtc_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @palmas_rtc_driver, ptr noundef null) #7
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @palmas_rtc_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @palmas_rtc_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @palmas_rtc_probe(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %18, label %11

11:                                               ; preds = %1
  %12 = tail call ptr @of_find_property(ptr noundef nonnull %9, ptr noundef nonnull @.str.1, ptr noundef null) #7
  %13 = icmp ne ptr %12, null
  %14 = load ptr, ptr %8, align 8
  %15 = tail call ptr @of_find_property(ptr noundef %14, ptr noundef nonnull @.str.2, ptr noundef null) #7
  %16 = icmp eq ptr %15, null
  %17 = select i1 %16, i32 8, i32 0
  br label %18

18:                                               ; preds = %11, %1
  %19 = phi i1 [ %13, %11 ], [ false, %1 ]
  %20 = phi i32 [ %17, %11 ], [ 8, %1 ]
  %21 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 12, i32 noundef 3520) #7
  %22 = icmp eq ptr %21, null
  br i1 %22, label %81, label %23

23:                                               ; preds = %18
  %24 = load ptr, ptr %4, align 4
  %25 = getelementptr inbounds %struct.device, ptr %24, i32 0, i32 8
  %26 = load ptr, ptr %25, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  store i32 0, ptr %2, align 4, !annotation !8
  %27 = getelementptr inbounds %struct.palmas, ptr %26, i32 0, i32 2
  %28 = load ptr, ptr %27, align 4
  %29 = call i32 @regmap_read(ptr noundef %28, i32 noundef 17, ptr noundef nonnull %2) #7
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.8, i32 noundef %29) #8
  br label %38

32:                                               ; preds = %23
  %33 = load i32, ptr %2, align 4
  %34 = load ptr, ptr %27, align 4
  %35 = call i32 @regmap_write(ptr noundef %34, i32 noundef 17, i32 noundef %33) #7
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.9, i32 noundef %35) #8
  br label %38

38:                                               ; preds = %37, %31
  %39 = phi i32 [ %35, %37 ], [ %29, %31 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.3, i32 noundef %39) #8
  br label %81

40:                                               ; preds = %32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  %41 = getelementptr inbounds %struct.palmas_rtc, ptr %21, i32 0, i32 1
  store ptr %3, ptr %41, align 4
  %42 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %21, ptr %42, align 8
  br i1 %19, label %43, label %54

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.palmas, ptr %7, i32 0, i32 2
  %45 = load ptr, ptr %44, align 4
  %46 = call i32 @regmap_update_bits_base(ptr noundef %45, i32 noundef 168, i32 noundef 8, i32 noundef %20, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.4, i32 noundef %46) #8
  br label %81

49:                                               ; preds = %43
  %50 = load ptr, ptr %44, align 4
  %51 = call i32 @regmap_update_bits_base(ptr noundef %50, i32 noundef 168, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.4, i32 noundef %51) #8
  br label %81

54:                                               ; preds = %49, %40
  %55 = getelementptr inbounds %struct.palmas, ptr %7, i32 0, i32 2
  %56 = load ptr, ptr %55, align 4
  %57 = call i32 @regmap_update_bits_base(ptr noundef %56, i32 noundef 16, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.5, i32 noundef %57) #8
  br label %81

60:                                               ; preds = %54
  %61 = call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #7
  %62 = getelementptr inbounds %struct.palmas_rtc, ptr %21, i32 0, i32 2
  store i32 %61, ptr %62, align 4
  %63 = call i32 @device_init_wakeup(ptr noundef %3, i1 noundef zeroext true) #7
  %64 = load ptr, ptr %0, align 8
  %65 = call ptr @devm_rtc_device_register(ptr noundef %3, ptr noundef %64, ptr noundef nonnull @palmas_rtc_ops, ptr noundef null) #7
  store ptr %65, ptr %21, align 4
  %66 = icmp ugt ptr %65, inttoptr (i32 -4096 to ptr)
  br i1 %66, label %67, label %69

67:                                               ; preds = %60
  %68 = ptrtoint ptr %65 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.6, i32 noundef %68) #8
  br label %81

69:                                               ; preds = %60
  %70 = load i32, ptr %62, align 4
  %71 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %72 = load ptr, ptr %71, align 4
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %76

74:                                               ; preds = %69
  %75 = load ptr, ptr %3, align 4
  br label %76

76:                                               ; preds = %74, %69
  %77 = phi ptr [ %75, %74 ], [ %72, %69 ]
  %78 = call i32 @devm_request_threaded_irq(ptr noundef %3, i32 noundef %70, ptr noundef null, ptr noundef nonnull @palmas_rtc_interrupt, i32 noundef 8200, ptr noundef %77, ptr noundef nonnull %21) #7
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %76
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.7, i32 noundef %78) #8
  br label %81

81:                                               ; preds = %80, %76, %67, %59, %53, %48, %38, %18
  %82 = phi i32 [ %39, %38 ], [ %57, %59 ], [ %68, %67 ], [ %78, %80 ], [ -12, %18 ], [ 0, %76 ], [ %46, %48 ], [ %51, %53 ]
  ret i32 %82
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @palmas_rtc_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.palmas, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 18, i32 noundef 0) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_rtc_device_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @palmas_rtc_interrupt(i32 noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.palmas_rtc, ptr %1, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 8
  %9 = load ptr, ptr %8, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  store i32 0, ptr %3, align 4, !annotation !8
  %10 = getelementptr inbounds %struct.palmas, ptr %9, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = call i32 @regmap_read(ptr noundef %11, i32 noundef 17, ptr noundef nonnull %3) #7
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.8, i32 noundef %12) #8
  br label %21

15:                                               ; preds = %2
  %16 = load i32, ptr %3, align 4
  %17 = load ptr, ptr %10, align 4
  %18 = call i32 @regmap_write(ptr noundef %17, i32 noundef 17, i32 noundef %16) #7
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.9, i32 noundef %18) #8
  br label %21

21:                                               ; preds = %20, %14
  %22 = phi i32 [ %18, %20 ], [ %12, %14 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.19, i32 noundef %22) #8
  br label %25

23:                                               ; preds = %15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  %24 = load ptr, ptr %1, align 4
  call void @rtc_update_irq(ptr noundef %24, i32 noundef 1, i32 noundef 160) #7
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi i32 [ 0, %21 ], [ 1, %23 ]
  ret i32 %26
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @palmas_rtc_read_time(ptr noundef %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = alloca [6 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %3) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %3, i8 0, i32 6, i1 false), !annotation !8
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.palmas, ptr %7, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 16, i32 noundef 64, i32 noundef 64, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.10, i32 noundef %10) #8
  br label %43

13:                                               ; preds = %2
  %14 = load ptr, ptr %8, align 4
  %15 = call i32 @regmap_bulk_read(ptr noundef %14, i32 noundef 0, ptr noundef nonnull %3, i32 noundef 6) #7
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef %15) #8
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
define internal i32 @palmas_rtc_set_time(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
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
  %32 = getelementptr inbounds %struct.palmas, ptr %7, i32 0, i32 2
  %33 = load ptr, ptr %32, align 4
  %34 = tail call i32 @regmap_update_bits_base(ptr noundef %33, i32 noundef 16, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.12, i32 noundef %34) #8
  br label %47

37:                                               ; preds = %2
  %38 = load ptr, ptr %32, align 4
  %39 = call i32 @regmap_bulk_write(ptr noundef %38, i32 noundef 0, ptr noundef nonnull %3, i32 noundef 6) #7
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.13, i32 noundef %39) #8
  br label %47

42:                                               ; preds = %37
  %43 = load ptr, ptr %32, align 4
  %44 = call i32 @regmap_update_bits_base(ptr noundef %43, i32 noundef 16, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.14, i32 noundef %44) #8
  br label %47

47:                                               ; preds = %46, %42, %41, %36
  %48 = phi i32 [ %34, %36 ], [ %39, %41 ], [ %44, %46 ], [ %44, %42 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %3) #7
  ret i32 %48
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @palmas_rtc_read_alarm(ptr noundef %0, ptr nocapture noundef writeonly %1) #2 {
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
  %9 = getelementptr inbounds %struct.palmas, ptr %8, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = call i32 @regmap_bulk_read(ptr noundef %10, i32 noundef 8, ptr noundef nonnull %3, i32 noundef 6) #7
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.15, i32 noundef %11) #8
  br label %49

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
  br i1 %42, label %43, label %44

43:                                               ; preds = %14
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.16, i32 noundef %41) #8
  br label %49

44:                                               ; preds = %14
  %45 = load i32, ptr %4, align 4
  %46 = and i32 %45, 8
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %44
  store i8 1, ptr %1, align 4
  br label %49

49:                                               ; preds = %48, %44, %43, %13
  %50 = phi i32 [ %11, %13 ], [ %41, %43 ], [ %41, %48 ], [ %41, %44 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %3) #7
  ret i32 %50
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @palmas_rtc_set_alarm(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca [6 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %3) #7
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.palmas, ptr %7, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 @regmap_write(ptr noundef %9, i32 noundef 18, i32 noundef 0) #7
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.17) #8
  br label %53

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = tail call zeroext i8 @_bin2bcd(i32 noundef %15) #9
  store i8 %16, ptr %3, align 1
  %17 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = tail call zeroext i8 @_bin2bcd(i32 noundef %18) #9
  %20 = getelementptr inbounds [6 x i8], ptr %3, i32 0, i32 1
  store i8 %19, ptr %20, align 1
  %21 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 2
  %22 = load i32, ptr %21, align 4
  %23 = tail call zeroext i8 @_bin2bcd(i32 noundef %22) #9
  %24 = getelementptr inbounds [6 x i8], ptr %3, i32 0, i32 2
  store i8 %23, ptr %24, align 1
  %25 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 3
  %26 = load i32, ptr %25, align 4
  %27 = tail call zeroext i8 @_bin2bcd(i32 noundef %26) #9
  %28 = getelementptr inbounds [6 x i8], ptr %3, i32 0, i32 3
  store i8 %27, ptr %28, align 1
  %29 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 4
  %30 = load i32, ptr %29, align 4
  %31 = add i32 %30, 1
  %32 = tail call zeroext i8 @_bin2bcd(i32 noundef %31) #9
  %33 = getelementptr inbounds [6 x i8], ptr %3, i32 0, i32 4
  store i8 %32, ptr %33, align 1
  %34 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 5
  %35 = load i32, ptr %34, align 4
  %36 = add i32 %35, -100
  %37 = tail call zeroext i8 @_bin2bcd(i32 noundef %36) #9
  %38 = getelementptr inbounds [6 x i8], ptr %3, i32 0, i32 5
  store i8 %37, ptr %38, align 1
  %39 = load ptr, ptr %8, align 4
  %40 = call i32 @regmap_bulk_write(ptr noundef %39, i32 noundef 8, ptr noundef nonnull %3, i32 noundef 6) #7
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.18, i32 noundef %40) #8
  br label %53

43:                                               ; preds = %13
  %44 = load i8, ptr %1, align 4
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %53, label %46

46:                                               ; preds = %43
  %47 = load ptr, ptr %4, align 4
  %48 = getelementptr inbounds %struct.device, ptr %47, i32 0, i32 8
  %49 = load ptr, ptr %48, align 8
  %50 = getelementptr inbounds %struct.palmas, ptr %49, i32 0, i32 2
  %51 = load ptr, ptr %50, align 4
  %52 = call i32 @regmap_write(ptr noundef %51, i32 noundef 18, i32 noundef 8) #7
  br label %53

53:                                               ; preds = %46, %43, %42, %12
  %54 = phi i32 [ %10, %12 ], [ %40, %42 ], [ %52, %46 ], [ %40, %43 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %3) #7
  ret i32 %54
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @palmas_rtc_alarm_irq_enable(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq i32 %1, 0
  %8 = select i1 %7, i32 0, i32 8
  %9 = getelementptr inbounds %struct.palmas, ptr %6, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 @regmap_write(ptr noundef %10, i32 noundef 18, i32 noundef %8) #7
  ret i32 %11
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @_bcd2bin(i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local zeroext i8 @_bin2bcd(i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_update_irq(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @palmas_rtc_suspend(ptr nocapture noundef readonly %0) #2 {
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
  %13 = getelementptr inbounds %struct.palmas_rtc, ptr %3, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = tail call i32 @irq_set_irq_wake(i32 noundef %14, i32 noundef 1) #7
  br label %16

16:                                               ; preds = %12, %8, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @palmas_rtc_resume(ptr nocapture noundef readonly %0) #2 {
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
  %13 = getelementptr inbounds %struct.palmas_rtc, ptr %3, i32 0, i32 2
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
