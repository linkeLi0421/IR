; ModuleID = '/llk/IR/drivers/rtc/rtc-brcmstb-waketimer.c_pt.bc'
source_filename = "../drivers/rtc/rtc-brcmstb-waketimer.c"
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
%struct.brcmstb_waketmr = type { ptr, ptr, ptr, i32, %struct.notifier_block, ptr, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.rtc_device = type { %struct.device, ptr, i32, ptr, %struct.mutex, %struct.cdev, i32, i32, %struct.spinlock, %struct.wait_queue_head, ptr, i32, i32, %struct.timerqueue_head, %struct.rtc_timer, %struct.rtc_timer, %struct.hrtimer, i32, %struct.work_struct, i32, i32, [1 x i32], i64, i64, i64, i64, i8 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.rtc_timer = type { %struct.timerqueue_node, i64, ptr, ptr, i32 }
%struct.rtc_wkalrm = type { i8, i8, %struct.rtc_time }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@__initcall__kmod_rtc_brcmstb_waketimer__247_323_brcmstb_waketmr_driver_init6 = internal global ptr @brcmstb_waketmr_driver_init, section ".initcall6.init", align 4
@brcmstb_waketmr_driver = internal global %struct.platform_driver { ptr @brcmstb_waketmr_probe, ptr @brcmstb_waketmr_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @brcmstb_waketmr_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @brcmstb_waketmr_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_brcmstb_waketmr_driver_exit = internal global ptr @brcmstb_waketmr_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file248 = internal constant [61 x i8] c"rtc_brcmstb_waketimer.file=drivers/rtc/rtc-brcmstb-waketimer\00", section ".modinfo", align 1
@__UNIQUE_ID_license249 = internal constant [37 x i8] c"rtc_brcmstb_waketimer.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author250 = internal constant [42 x i8] c"rtc_brcmstb_waketimer.author=Brian Norris\00", section ".modinfo", align 1
@__UNIQUE_ID_author251 = internal constant [42 x i8] c"rtc_brcmstb_waketimer.author=Markus Mayer\00", section ".modinfo", align 1
@__UNIQUE_ID_description252 = internal constant [69 x i8] c"rtc_brcmstb_waketimer.description=Wake-up timer driver for STB chips\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [18 x i8] c"brcmstb-waketimer\00", align 1
@brcmstb_waketmr_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,brcmstb-waketimer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@brcmstb_waketmr_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @brcmstb_waketmr_suspend, ptr @brcmstb_waketmr_resume, ptr @brcmstb_waketmr_suspend, ptr @brcmstb_waketmr_resume, ptr @brcmstb_waketmr_suspend, ptr @brcmstb_waketmr_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@brcmstb_waketmr_ops = internal constant %struct.rtc_class_ops { ptr null, ptr @brcmstb_waketmr_gettime, ptr @brcmstb_waketmr_settime, ptr @brcmstb_waketmr_getalarm, ptr @brcmstb_waketmr_setalarm, ptr null, ptr @brcmstb_waketmr_alarm_enable, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"registered, with irq %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"failed to enable wake-up interrupt\0A\00", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_author250, ptr @__UNIQUE_ID_author251, ptr @__UNIQUE_ID_description252, ptr @__UNIQUE_ID_file248, ptr @__UNIQUE_ID_license249, ptr @__exitcall_brcmstb_waketmr_driver_exit, ptr @__initcall__kmod_rtc_brcmstb_waketimer__247_323_brcmstb_waketmr_driver_init6, ptr @brcmstb_waketmr_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @brcmstb_waketmr_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @brcmstb_waketmr_driver, ptr noundef null) #5
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @brcmstb_waketmr_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @brcmstb_waketmr_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmstb_waketmr_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 36, i32 noundef 3520) #5
  %4 = icmp eq ptr %3, null
  br i1 %4, label %63, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %3, ptr %6, align 8
  %7 = getelementptr inbounds %struct.brcmstb_waketmr, ptr %3, i32 0, i32 1
  store ptr %2, ptr %7, align 4
  %8 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #5
  %9 = getelementptr inbounds %struct.brcmstb_waketmr, ptr %3, i32 0, i32 2
  store ptr %8, ptr %9, align 4
  %10 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %10, label %11, label %13

11:                                               ; preds = %5
  %12 = ptrtoint ptr %8 to i32
  br label %63

13:                                               ; preds = %5
  %14 = tail call ptr @devm_rtc_allocate_device(ptr noundef %2) #5
  store ptr %14, ptr %3, align 4
  %15 = icmp ugt ptr %14, inttoptr (i32 -4096 to ptr)
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = ptrtoint ptr %14 to i32
  br label %63

18:                                               ; preds = %13
  tail call void @device_set_wakeup_capable(ptr noundef %2, i1 noundef zeroext true) #5
  %19 = tail call i32 @device_wakeup_enable(ptr noundef %2) #5
  %20 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #5
  %21 = getelementptr inbounds %struct.brcmstb_waketmr, ptr %3, i32 0, i32 3
  store i32 %20, ptr %21, align 4
  %22 = icmp slt i32 %20, 0
  br i1 %22, label %63, label %23

23:                                               ; preds = %18
  %24 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef null) #5
  %25 = getelementptr inbounds %struct.brcmstb_waketmr, ptr %3, i32 0, i32 5
  store ptr %24, ptr %25, align 4
  %26 = icmp ugt ptr %24, inttoptr (i32 -4096 to ptr)
  br i1 %26, label %40, label %27

27:                                               ; preds = %23
  %28 = tail call i32 @clk_prepare(ptr noundef %24) #5
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %63

30:                                               ; preds = %27
  %31 = tail call i32 @clk_enable(ptr noundef %24) #5
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %30
  tail call void @clk_unprepare(ptr noundef %24) #5
  br label %63

34:                                               ; preds = %30
  %35 = load ptr, ptr %25, align 4
  %36 = tail call i32 @clk_get_rate(ptr noundef %35) #5
  %37 = getelementptr inbounds %struct.brcmstb_waketmr, ptr %3, i32 0, i32 6
  %38 = icmp eq i32 %36, 0
  %39 = select i1 %38, i32 27000000, i32 %36
  store i32 %39, ptr %37, align 4
  br label %42

40:                                               ; preds = %23
  %41 = getelementptr inbounds %struct.brcmstb_waketmr, ptr %3, i32 0, i32 6
  store i32 27000000, ptr %41, align 4
  store ptr null, ptr %25, align 4
  br label %42

42:                                               ; preds = %40, %34
  %43 = load i32, ptr %21, align 4
  %44 = tail call i32 @devm_request_threaded_irq(ptr noundef %2, i32 noundef %43, ptr noundef nonnull @brcmstb_waketmr_irq, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull %3) #5
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %60, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.brcmstb_waketmr, ptr %3, i32 0, i32 4
  store ptr @brcmstb_waketmr_reboot, ptr %47, align 4
  %48 = tail call i32 @register_reboot_notifier(ptr noundef %47) #5
  %49 = load ptr, ptr %3, align 4
  %50 = getelementptr inbounds %struct.rtc_device, ptr %49, i32 0, i32 3
  store ptr @brcmstb_waketmr_ops, ptr %50, align 8
  %51 = load ptr, ptr %3, align 4
  %52 = getelementptr inbounds %struct.rtc_device, ptr %51, i32 0, i32 23
  store i64 4294967295, ptr %52, align 8
  %53 = load ptr, ptr %3, align 4
  %54 = tail call i32 @__devm_rtc_register_device(ptr noundef null, ptr noundef %53) #5
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %46
  %57 = load i32, ptr %21, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %2, ptr noundef nonnull @.str.1, i32 noundef %57) #6
  br label %63

58:                                               ; preds = %46
  %59 = tail call i32 @unregister_reboot_notifier(ptr noundef %47) #5
  br label %60

60:                                               ; preds = %58, %42
  %61 = phi i32 [ %44, %42 ], [ %54, %58 ]
  %62 = load ptr, ptr %25, align 4
  tail call void @clk_disable(ptr noundef %62) #5
  tail call void @clk_unprepare(ptr noundef %62) #5
  br label %63

63:                                               ; preds = %60, %56, %33, %27, %18, %16, %11, %1
  %64 = phi i32 [ %12, %11 ], [ %17, %16 ], [ %61, %60 ], [ 0, %56 ], [ -12, %1 ], [ -19, %18 ], [ %31, %33 ], [ %28, %27 ]
  ret i32 %64
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmstb_waketmr_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.brcmstb_waketmr, ptr %3, i32 0, i32 4
  %5 = tail call i32 @unregister_reboot_notifier(ptr noundef %4) #5
  %6 = getelementptr inbounds %struct.brcmstb_waketmr, ptr %3, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  tail call void @clk_disable(ptr noundef %7) #5
  tail call void @clk_unprepare(ptr noundef %7) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_rtc_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_set_wakeup_capable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_wakeup_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmstb_waketmr_irq(i32 noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.brcmstb_waketmr, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  tail call void @pm_wakeup_dev_event(ptr noundef %4, i32 noundef 0, i1 noundef zeroext false) #5
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmstb_waketmr_reboot(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readnone %2) #2 {
  %4 = icmp eq i32 %1, 3
  br i1 %4, label %5, label %22

5:                                                ; preds = %3
  %6 = getelementptr i8, ptr %0, i32 -12
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 11, i32 1
  %9 = load i16, ptr %8, align 4
  %10 = and i16 %9, 1
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %22, label %12

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 11, i32 6
  %14 = load ptr, ptr %13, align 8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %12
  %17 = getelementptr i8, ptr %0, i32 -4
  %18 = load i32, ptr %17, align 4
  %19 = tail call i32 @irq_set_irq_wake(i32 noundef %18, i32 noundef 1) #5
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %16
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.2) #6
  br label %22

22:                                               ; preds = %21, %16, %12, %5, %3
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_reboot_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_rtc_register_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_reboot_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_wakeup_dev_event(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmstb_waketmr_gettime(ptr nocapture noundef readonly %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.brcmstb_waketmr, ptr %4, i32 0, i32 2
  %6 = getelementptr inbounds %struct.brcmstb_waketmr, ptr %4, i32 0, i32 6
  br label %7

7:                                                ; preds = %7, %2
  %8 = load ptr, ptr %5, align 4
  %9 = getelementptr i8, ptr %8, i32 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #5, !srcloc !8
  %11 = load ptr, ptr %5, align 4
  %12 = getelementptr i8, ptr %11, i32 16
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #5, !srcloc !8
  %14 = load i32, ptr %6, align 4
  %15 = icmp ugt i32 %14, %13
  br i1 %15, label %16, label %7

16:                                               ; preds = %7
  %17 = zext i32 %10 to i64
  tail call void @rtc_time64_to_tm(i64 noundef %17, ptr noundef %1) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmstb_waketmr_settime(ptr nocapture noundef readonly %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = tail call i64 @rtc_tm_to_time64(ptr noundef %1) #5
  %6 = trunc i64 %5 to i32
  %7 = getelementptr inbounds %struct.brcmstb_waketmr, ptr %4, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %6) #5, !srcloc !9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmstb_waketmr_getalarm(ptr nocapture noundef readonly %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.brcmstb_waketmr, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 8
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #5, !srcloc !8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = zext i32 %8 to i64
  store i8 1, ptr %1, align 4
  %12 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2
  tail call void @rtc_time64_to_tm(i64 noundef %11, ptr noundef %12) #5
  br label %13

13:                                               ; preds = %10, %2
  %14 = load ptr, ptr %5, align 4
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #5, !srcloc !8
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 1
  store i8 %17, ptr %18, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmstb_waketmr_setalarm(ptr nocapture noundef readonly %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = load i8, ptr %1, align 4
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %12, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2
  %9 = tail call i64 @rtc_tm_to_time64(ptr noundef %8) #5
  %10 = trunc i64 %9 to i32
  %11 = add i32 %10, 1
  br label %12

12:                                               ; preds = %7, %2
  %13 = phi i32 [ %11, %7 ], [ 1, %2 ]
  %14 = getelementptr inbounds %struct.brcmstb_waketmr, ptr %4, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 1) #5, !srcloc !9
  %16 = load ptr, ptr %14, align 4
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #5, !srcloc !8
  %18 = getelementptr inbounds %struct.brcmstb_waketmr, ptr %4, i32 0, i32 6
  %19 = load i32, ptr %18, align 4
  %20 = load ptr, ptr %14, align 4
  %21 = getelementptr i8, ptr %20, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %19) #5, !srcloc !9
  %22 = load ptr, ptr %14, align 4
  %23 = getelementptr i8, ptr %22, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %13) #5, !srcloc !9
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @brcmstb_waketmr_alarm_enable(ptr nocapture noundef readnone %0, i32 noundef %1) #4 {
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_time64_to_tm(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @rtc_tm_to_time64(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmstb_waketmr_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.brcmstb_waketmr, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 11, i32 1
  %7 = load i16, ptr %6, align 4
  %8 = and i16 %7, 1
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %20, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 11, i32 6
  %12 = load ptr, ptr %11, align 8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.brcmstb_waketmr, ptr %3, i32 0, i32 3
  %16 = load i32, ptr %15, align 4
  %17 = tail call i32 @irq_set_irq_wake(i32 noundef %16, i32 noundef 1) #5
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.2) #6
  br label %20

20:                                               ; preds = %19, %14, %10, %1
  %21 = phi i32 [ %17, %19 ], [ 0, %14 ], [ 0, %10 ], [ 0, %1 ]
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmstb_waketmr_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 1
  %5 = load i16, ptr %4, align 4
  %6 = and i16 %5, 1
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %20, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 6
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %20, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.brcmstb_waketmr, ptr %3, i32 0, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = tail call i32 @irq_set_irq_wake(i32 noundef %14, i32 noundef 0) #5
  %16 = getelementptr inbounds %struct.brcmstb_waketmr, ptr %3, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 1) #5, !srcloc !9
  %18 = load ptr, ptr %16, align 4
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #5, !srcloc !8
  br label %20

20:                                               ; preds = %12, %8, %1
  %21 = phi i32 [ %15, %12 ], [ 0, %8 ], [ 0, %1 ]
  ret i32 %21
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!8 = !{i64 3731772}
!9 = !{i64 3731354}
