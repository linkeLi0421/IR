; ModuleID = '/llk/IR/drivers/rtc/rtc-tegra.c_pt.bc'
source_filename = "../drivers/rtc/rtc-tegra.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rtc_class_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.tegra_rtc_info = type { ptr, ptr, ptr, ptr, i32, %struct.spinlock }
%struct.rtc_device = type { %struct.device, ptr, i32, ptr, %struct.mutex, %struct.cdev, i32, i32, %struct.spinlock, %struct.wait_queue_head, ptr, i32, i32, %struct.timerqueue_head, %struct.rtc_timer, %struct.rtc_timer, %struct.hrtimer, i32, %struct.work_struct, i32, i32, [1 x i32], i64, i64, i64, i64, i8 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.rtc_timer = type { %struct.timerqueue_node, i64, ptr, ptr, i32 }
%struct.rtc_wkalrm = type { i8, i8, %struct.rtc_time }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@__initcall__kmod_rtc_tegra__210_412_tegra_rtc_driver_init6 = internal global ptr @tegra_rtc_driver_init, section ".initcall6.init", align 4
@tegra_rtc_driver = internal global %struct.platform_driver { ptr @tegra_rtc_probe, ptr @tegra_rtc_remove, ptr @tegra_rtc_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @tegra_rtc_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra_rtc_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_tegra_rtc_driver_exit = internal global ptr @tegra_rtc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author211 = internal constant [45 x i8] c"rtc_tegra.author=Jon Mayo <jmayo@nvidia.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description212 = internal constant [52 x i8] c"rtc_tegra.description=driver for Tegra internal RTC\00", section ".modinfo", align 1
@__UNIQUE_ID_file213 = internal constant [37 x i8] c"rtc_tegra.file=drivers/rtc/rtc-tegra\00", section ".modinfo", align 1
@__UNIQUE_ID_license214 = internal constant [22 x i8] c"rtc_tegra.license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [10 x i8] c"tegra_rtc\00", align 1
@tegra_rtc_dt_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra20-rtc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@tegra_rtc_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @tegra_rtc_suspend, ptr @tegra_rtc_resume, ptr @tegra_rtc_suspend, ptr @tegra_rtc_resume, ptr @tegra_rtc_suspend, ptr @tegra_rtc_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@tegra_rtc_ops = internal constant %struct.rtc_class_ops { ptr null, ptr @tegra_rtc_read_time, ptr @tegra_rtc_set_time, ptr @tegra_rtc_read_alarm, ptr @tegra_rtc_set_alarm, ptr @tegra_rtc_proc, ptr @tegra_rtc_alarm_irq_enable, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"failed to request interrupt: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Tegra internal Real Time Clock\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"write failed: retry count exceeded\0A\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"name\09\09: %s\0A\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author211, ptr @__UNIQUE_ID_description212, ptr @__UNIQUE_ID_file213, ptr @__UNIQUE_ID_license214, ptr @__exitcall_tegra_rtc_driver_exit, ptr @__initcall__kmod_rtc_tegra__210_412_tegra_rtc_driver_init6, ptr @tegra_rtc_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @tegra_rtc_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @tegra_rtc_driver, ptr noundef null) #4
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @tegra_rtc_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @tegra_rtc_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_rtc_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 24, i32 noundef 3520) #4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %69, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #4
  %7 = getelementptr inbounds %struct.tegra_rtc_info, ptr %3, i32 0, i32 2
  store ptr %6, ptr %7, align 4
  %8 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %8, label %9, label %11

9:                                                ; preds = %5
  %10 = ptrtoint ptr %6 to i32
  br label %69

11:                                               ; preds = %5
  %12 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #4
  %13 = icmp slt i32 %12, 1
  br i1 %13, label %69, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.tegra_rtc_info, ptr %3, i32 0, i32 4
  store i32 %12, ptr %15, align 4
  %16 = tail call ptr @devm_rtc_allocate_device(ptr noundef %2) #4
  %17 = getelementptr inbounds %struct.tegra_rtc_info, ptr %3, i32 0, i32 1
  store ptr %16, ptr %17, align 4
  %18 = icmp ugt ptr %16, inttoptr (i32 -4096 to ptr)
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = ptrtoint ptr %16 to i32
  br label %69

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.rtc_device, ptr %16, i32 0, i32 3
  store ptr @tegra_rtc_ops, ptr %22, align 8
  %23 = load ptr, ptr %17, align 4
  %24 = getelementptr inbounds %struct.rtc_device, ptr %23, i32 0, i32 23
  store i64 4294967295, ptr %24, align 8
  %25 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef null) #4
  %26 = getelementptr inbounds %struct.tegra_rtc_info, ptr %3, i32 0, i32 3
  store ptr %25, ptr %26, align 4
  %27 = icmp ugt ptr %25, inttoptr (i32 -4096 to ptr)
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = ptrtoint ptr %25 to i32
  br label %69

30:                                               ; preds = %21
  %31 = tail call i32 @clk_prepare(ptr noundef %25) #4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %30
  %34 = tail call i32 @clk_enable(ptr noundef %25) #4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %33
  tail call void @clk_unprepare(ptr noundef %25) #4
  br label %37

37:                                               ; preds = %36, %30
  %38 = phi i32 [ %31, %30 ], [ %34, %36 ]
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %69, label %40

40:                                               ; preds = %37, %33
  store ptr %0, ptr %3, align 4
  %41 = getelementptr inbounds %struct.tegra_rtc_info, ptr %3, i32 0, i32 5
  store i32 0, ptr %41, align 4
  %42 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %3, ptr %42, align 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !8
  tail call void @arm_heavy_mb() #4
  %43 = load ptr, ptr %7, align 4
  %44 = getelementptr i8, ptr %43, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 0) #4, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  %45 = load ptr, ptr %7, align 4
  %46 = getelementptr i8, ptr %45, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 -1) #4, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  %47 = load ptr, ptr %7, align 4
  %48 = getelementptr i8, ptr %47, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 0) #4, !srcloc !9
  %49 = tail call i32 @device_init_wakeup(ptr noundef %2, i1 noundef zeroext true) #4
  %50 = load i32, ptr %15, align 4
  %51 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %56

54:                                               ; preds = %40
  %55 = load ptr, ptr %2, align 4
  br label %56

56:                                               ; preds = %54, %40
  %57 = phi ptr [ %55, %54 ], [ %52, %40 ]
  %58 = tail call i32 @devm_request_threaded_irq(ptr noundef %2, i32 noundef %50, ptr noundef nonnull @tegra_rtc_irq_handler, ptr noundef null, i32 noundef 4, ptr noundef %57, ptr noundef %2) #4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.1, i32 noundef %58) #5
  br label %66

61:                                               ; preds = %56
  %62 = load ptr, ptr %17, align 4
  %63 = tail call i32 @__devm_rtc_register_device(ptr noundef null, ptr noundef %62) #4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %2, ptr noundef nonnull @.str.2) #5
  br label %69

66:                                               ; preds = %61, %60
  %67 = phi i32 [ %58, %60 ], [ %63, %61 ]
  %68 = load ptr, ptr %26, align 4
  tail call void @clk_disable(ptr noundef %68) #4
  tail call void @clk_unprepare(ptr noundef %68) #4
  br label %69

69:                                               ; preds = %66, %65, %37, %28, %19, %11, %9, %1
  %70 = phi i32 [ %10, %9 ], [ %20, %19 ], [ %29, %28 ], [ %67, %66 ], [ 0, %65 ], [ -12, %1 ], [ %12, %11 ], [ %38, %37 ]
  ret i32 %70
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_rtc_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.tegra_rtc_info, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  tail call void @clk_disable(ptr noundef %5) #4
  tail call void @clk_unprepare(ptr noundef %5) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra_rtc_shutdown(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call i32 @tegra_rtc_alarm_irq_enable(ptr noundef %2, i32 noundef 0)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_rtc_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_rtc_irq_handler(i32 noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.tegra_rtc_info, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 44
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #4, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !13
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %38, label %10

10:                                               ; preds = %2
  %11 = load ptr, ptr %3, align 8
  %12 = getelementptr inbounds %struct.tegra_rtc_info, ptr %11, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr i8, ptr %13, i32 4
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #4, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !14
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %30, label %18

18:                                               ; preds = %21, %10
  %19 = phi i32 [ %22, %21 ], [ 500, %10 ]
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %29, label %21

21:                                               ; preds = %18
  %22 = add nsw i32 %19, -1
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 214748) #4
  %24 = load ptr, ptr %12, align 4
  %25 = getelementptr i8, ptr %24, i32 4
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #4, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !14
  %27 = and i32 %26, 1
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %30, label %18

29:                                               ; preds = %18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.3) #5
  br label %30

30:                                               ; preds = %29, %21, %10
  %31 = getelementptr inbounds %struct.tegra_rtc_info, ptr %4, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %31) #4
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !15
  tail call void @arm_heavy_mb() #4
  %32 = load ptr, ptr %5, align 4
  %33 = getelementptr i8, ptr %32, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 0) #4, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !16
  tail call void @arm_heavy_mb() #4
  %34 = load ptr, ptr %5, align 4
  %35 = getelementptr i8, ptr %34, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %8) #4, !srcloc !9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !17
  %36 = load i16, ptr %31, align 4
  %37 = add i16 %36, 1
  store i16 %37, ptr %31, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #4, !srcloc !18
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #4, !srcloc !19
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !20
  br label %38

38:                                               ; preds = %30, %2
  %39 = and i32 %8, 1
  %40 = icmp eq i32 %39, 0
  %41 = select i1 %40, i32 0, i32 160
  %42 = and i32 %8, 8
  %43 = icmp eq i32 %42, 0
  %44 = or i32 %41, 192
  %45 = select i1 %43, i32 %41, i32 %44
  %46 = getelementptr inbounds %struct.tegra_rtc_info, ptr %4, i32 0, i32 1
  %47 = load ptr, ptr %46, align 4
  tail call void @rtc_update_irq(ptr noundef %47, i32 noundef 1, i32 noundef %45) #4
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_rtc_register_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_rtc_read_time(ptr nocapture noundef readonly %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.tegra_rtc_info, ptr %4, i32 0, i32 5
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #4
  %7 = getelementptr inbounds %struct.tegra_rtc_info, ptr %4, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 16
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #4, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !21
  %11 = load ptr, ptr %7, align 4
  %12 = getelementptr i8, ptr %11, i32 12
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #4, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !22
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #4
  %14 = zext i32 %13 to i64
  tail call void @rtc_time64_to_tm(i64 noundef %14, ptr noundef %1) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_rtc_set_time(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = tail call i64 @rtc_tm_to_time64(ptr noundef %1) #4
  %6 = load ptr, ptr %3, align 8
  %7 = getelementptr inbounds %struct.tegra_rtc_info, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #4, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !14
  %11 = and i32 %10, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %25, label %13

13:                                               ; preds = %16, %2
  %14 = phi i32 [ %17, %16 ], [ 500, %2 ]
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %24, label %16

16:                                               ; preds = %13
  %17 = add nsw i32 %14, -1
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 214748) #4
  %19 = load ptr, ptr %7, align 4
  %20 = getelementptr i8, ptr %19, i32 4
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #4, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !14
  %22 = and i32 %21, 1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %25, label %13

24:                                               ; preds = %13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.3) #5
  br label %30

25:                                               ; preds = %16, %2
  %26 = trunc i64 %5 to i32
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !23
  tail call void @arm_heavy_mb() #4
  %27 = getelementptr inbounds %struct.tegra_rtc_info, ptr %4, i32 0, i32 2
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr i8, ptr %28, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %26) #4, !srcloc !9
  br label %30

30:                                               ; preds = %25, %24
  %31 = phi i32 [ 0, %25 ], [ -110, %24 ]
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_rtc_read_alarm(ptr nocapture noundef readonly %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.tegra_rtc_info, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 20
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #4, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !24
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i8 0, ptr %1, align 4
  br label %14

11:                                               ; preds = %2
  store i8 1, ptr %1, align 4
  %12 = zext i32 %8 to i64
  %13 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2
  tail call void @rtc_time64_to_tm(i64 noundef %12, ptr noundef %13) #4
  br label %14

14:                                               ; preds = %11, %10
  %15 = load ptr, ptr %5, align 4
  %16 = getelementptr i8, ptr %15, i32 44
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #4, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !25
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 1
  store i8 %19, ptr %20, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_rtc_set_alarm(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = load i8, ptr %1, align 4
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %12, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2
  %9 = tail call i64 @rtc_tm_to_time64(ptr noundef %8) #4
  %10 = trunc i64 %9 to i32
  %11 = load ptr, ptr %3, align 8
  br label %12

12:                                               ; preds = %7, %2
  %13 = phi ptr [ %11, %7 ], [ %4, %2 ]
  %14 = phi i32 [ %10, %7 ], [ 0, %2 ]
  %15 = getelementptr inbounds %struct.tegra_rtc_info, ptr %13, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr i8, ptr %16, i32 4
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #4, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !14
  %19 = and i32 %18, 1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %33, label %21

21:                                               ; preds = %24, %12
  %22 = phi i32 [ %25, %24 ], [ 500, %12 ]
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %32, label %24

24:                                               ; preds = %21
  %25 = add nsw i32 %22, -1
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %26(i32 noundef 214748) #4
  %27 = load ptr, ptr %15, align 4
  %28 = getelementptr i8, ptr %27, i32 4
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #4, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !14
  %30 = and i32 %29, 1
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %33, label %21

32:                                               ; preds = %21
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.3) #5
  br label %33

33:                                               ; preds = %32, %24, %12
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !26
  tail call void @arm_heavy_mb() #4
  %34 = getelementptr inbounds %struct.tegra_rtc_info, ptr %4, i32 0, i32 2
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr i8, ptr %35, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %14) #4, !srcloc !9
  %37 = icmp ne i32 %14, 0
  %38 = zext i1 %37 to i32
  %39 = tail call i32 @tegra_rtc_alarm_irq_enable(ptr noundef %0, i32 noundef %38)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_rtc_proc(ptr noundef readonly %0, ptr noundef %1) #2 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %16, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 6
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = load ptr, ptr %0, align 4
  br label %14

14:                                               ; preds = %12, %8
  %15 = phi ptr [ %13, %12 ], [ %10, %8 ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.4, ptr noundef %15) #4
  br label %16

16:                                               ; preds = %14, %4, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_rtc_alarm_irq_enable(ptr noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.tegra_rtc_info, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #4, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !14
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %23, label %11

11:                                               ; preds = %14, %2
  %12 = phi i32 [ %15, %14 ], [ 500, %2 ]
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %22, label %14

14:                                               ; preds = %11
  %15 = add nsw i32 %12, -1
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 214748) #4
  %17 = load ptr, ptr %5, align 4
  %18 = getelementptr i8, ptr %17, i32 4
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #4, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !14
  %20 = and i32 %19, 1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %23, label %11

22:                                               ; preds = %11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.3) #5
  br label %23

23:                                               ; preds = %22, %14, %2
  %24 = getelementptr inbounds %struct.tegra_rtc_info, ptr %4, i32 0, i32 5
  %25 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %24) #4
  %26 = load ptr, ptr %5, align 4
  %27 = getelementptr i8, ptr %26, i32 40
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #4, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !27
  %29 = icmp ne i32 %1, 0
  %30 = and i32 %28, -2
  %31 = zext i1 %29 to i32
  %32 = or i32 %30, %31
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !28
  tail call void @arm_heavy_mb() #4
  %33 = load ptr, ptr %5, align 4
  %34 = getelementptr i8, ptr %33, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %32) #4, !srcloc !9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %24, i32 noundef %25) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_time64_to_tm(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @rtc_tm_to_time64(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_update_irq(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_rtc_suspend(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.tegra_rtc_info, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #4, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !14
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %22, label %10

10:                                               ; preds = %13, %1
  %11 = phi i32 [ %14, %13 ], [ 500, %1 ]
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %21, label %13

13:                                               ; preds = %10
  %14 = add nsw i32 %11, -1
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 214748) #4
  %16 = load ptr, ptr %4, align 4
  %17 = getelementptr i8, ptr %16, i32 4
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #4, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !14
  %19 = and i32 %18, 1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %22, label %10

21:                                               ; preds = %10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.3) #5
  br label %22

22:                                               ; preds = %21, %13, %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !29
  tail call void @arm_heavy_mb() #4
  %23 = load ptr, ptr %4, align 4
  %24 = getelementptr i8, ptr %23, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 -1) #4, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !30
  tail call void @arm_heavy_mb() #4
  %25 = load ptr, ptr %4, align 4
  %26 = getelementptr i8, ptr %25, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 1) #4, !srcloc !9
  %27 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 1
  %28 = load i16, ptr %27, align 4
  %29 = and i16 %28, 1
  %30 = icmp eq i16 %29, 0
  br i1 %30, label %39, label %31

31:                                               ; preds = %22
  %32 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 6
  %33 = load ptr, ptr %32, align 8
  %34 = icmp eq ptr %33, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.tegra_rtc_info, ptr %3, i32 0, i32 4
  %37 = load i32, ptr %36, align 4
  %38 = tail call i32 @irq_set_irq_wake(i32 noundef %37, i32 noundef 1) #4
  br label %39

39:                                               ; preds = %35, %31, %22
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra_rtc_resume(ptr nocapture noundef readonly %0) #2 {
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
  %13 = getelementptr inbounds %struct.tegra_rtc_info, ptr %3, i32 0, i32 4
  %14 = load i32, ptr %13, align 4
  %15 = tail call i32 @irq_set_irq_wake(i32 noundef %14, i32 noundef 0) #4
  br label %16

16:                                               ; preds = %12, %8, %1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { cold nounwind }

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
!8 = !{i64 2152388182}
!9 = !{i64 2485500}
!10 = !{i64 2152388507}
!11 = !{i64 2152388841}
!12 = !{i64 2485918}
!13 = !{i64 2152386703}
!14 = !{i64 2152377547}
!15 = !{i64 2152386893}
!16 = !{i64 2152387214}
!17 = !{i64 2148888137}
!18 = !{i64 2148883961}
!19 = !{i64 2148884036, i64 2148884063, i64 2148884110, i64 2148884132, i64 2148884160, i64 2148884180}
!20 = !{i64 2148911140}
!21 = !{i64 2152379390}
!22 = !{i64 2152379733}
!23 = !{i64 2152381073}
!24 = !{i64 2152382528}
!25 = !{i64 2152382871}
!26 = !{i64 2152384112}
!27 = !{i64 2152383575}
!28 = !{i64 2152383784}
!29 = !{i64 2152390471}
!30 = !{i64 2152390817}
