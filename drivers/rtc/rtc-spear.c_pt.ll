; ModuleID = '/llk/IR/drivers/rtc/rtc-spear.c_pt.bc'
source_filename = "../drivers/rtc/rtc-spear.c"
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
%struct.spear_rtc_config = type { ptr, ptr, %struct.spinlock, ptr, i32 }
%struct.rtc_device = type { %struct.device, ptr, i32, ptr, %struct.mutex, %struct.cdev, i32, i32, %struct.spinlock, %struct.wait_queue_head, ptr, i32, i32, %struct.timerqueue_head, %struct.rtc_timer, %struct.rtc_timer, %struct.hrtimer, i32, %struct.work_struct, i32, i32, [1 x i32], i64, i64, i64, i64, i8 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.rtc_timer = type { %struct.timerqueue_node, i64, ptr, ptr, i32 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rtc_wkalrm = type { i8, i8, %struct.rtc_time }

@__initcall__kmod_rtc_spear__210_486_spear_rtc_driver_init6 = internal global ptr @spear_rtc_driver_init, section ".initcall6.init", align 4
@spear_rtc_driver = internal global %struct.platform_driver { ptr @spear_rtc_probe, ptr @spear_rtc_remove, ptr @spear_rtc_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @spear_rtc_id_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @spear_rtc_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_spear_rtc_driver_exit = internal global ptr @spear_rtc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias211 = internal constant [35 x i8] c"rtc_spear.alias=platform:rtc-spear\00", section ".modinfo", align 1
@__UNIQUE_ID_author212 = internal constant [56 x i8] c"rtc_spear.author=Rajeev Kumar <rajeev-dlh.kumar@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description213 = internal constant [59 x i8] c"rtc_spear.description=ST SPEAr Realtime Clock Driver (RTC)\00", section ".modinfo", align 1
@__UNIQUE_ID_file214 = internal constant [37 x i8] c"rtc_spear.file=drivers/rtc/rtc-spear\00", section ".modinfo", align 1
@__UNIQUE_ID_license215 = internal constant [22 x i8] c"rtc_spear.license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [10 x i8] c"rtc-spear\00", align 1
@spear_rtc_id_table = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,spear600-rtc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@spear_rtc_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @spear_rtc_suspend, ptr @spear_rtc_resume, ptr @spear_rtc_suspend, ptr @spear_rtc_resume, ptr @spear_rtc_suspend, ptr @spear_rtc_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Alarm interrupt IRQ%d already claimed\0A\00", align 1
@spear_rtc_ops = internal constant %struct.rtc_class_ops { ptr null, ptr @spear_rtc_read_time, ptr @spear_rtc_set_time, ptr @spear_rtc_read_alarm, ptr @spear_rtc_set_alarm, ptr null, ptr @spear_alarm_irq_enable, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"can't register RTC device, err %ld\0A\00", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_alias211, ptr @__UNIQUE_ID_author212, ptr @__UNIQUE_ID_description213, ptr @__UNIQUE_ID_file214, ptr @__UNIQUE_ID_license215, ptr @__exitcall_spear_rtc_driver_exit, ptr @__initcall__kmod_rtc_spear__210_486_spear_rtc_driver_init6, ptr @spear_rtc_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @spear_rtc_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @spear_rtc_driver, ptr noundef null) #5
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @spear_rtc_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @spear_rtc_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @spear_rtc_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 20, i32 noundef 3520) #5
  %4 = icmp eq ptr %3, null
  br i1 %4, label %54, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #5
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %54, label %8

8:                                                ; preds = %5
  %9 = load ptr, ptr %0, align 8
  %10 = tail call i32 @devm_request_threaded_irq(ptr noundef %2, i32 noundef %6, ptr noundef nonnull @spear_rtc_irq, ptr noundef null, i32 noundef 0, ptr noundef %9, ptr noundef nonnull %3) #5
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.1, i32 noundef %6) #6
  br label %54

13:                                               ; preds = %8
  %14 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #5
  %15 = getelementptr inbounds %struct.spear_rtc_config, ptr %3, i32 0, i32 3
  store ptr %14, ptr %15, align 4
  %16 = icmp ugt ptr %14, inttoptr (i32 -4096 to ptr)
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = ptrtoint ptr %14 to i32
  br label %54

19:                                               ; preds = %13
  %20 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef null) #5
  %21 = getelementptr inbounds %struct.spear_rtc_config, ptr %3, i32 0, i32 1
  store ptr %20, ptr %21, align 4
  %22 = icmp ugt ptr %20, inttoptr (i32 -4096 to ptr)
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = ptrtoint ptr %20 to i32
  br label %54

25:                                               ; preds = %19
  %26 = tail call i32 @clk_prepare(ptr noundef %20) #5
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = tail call i32 @clk_enable(ptr noundef %20) #5
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %28
  tail call void @clk_unprepare(ptr noundef %20) #5
  br label %32

32:                                               ; preds = %31, %25
  %33 = phi i32 [ %26, %25 ], [ %29, %31 ]
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %54, label %35

35:                                               ; preds = %32, %28
  %36 = getelementptr inbounds %struct.spear_rtc_config, ptr %3, i32 0, i32 2
  store i32 0, ptr %36, align 4
  %37 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %3, ptr %37, align 8
  %38 = load ptr, ptr %0, align 8
  %39 = tail call ptr @devm_rtc_device_register(ptr noundef %2, ptr noundef %38, ptr noundef nonnull @spear_rtc_ops, ptr noundef null) #5
  store ptr %39, ptr %3, align 4
  %40 = icmp ugt ptr %39, inttoptr (i32 -4096 to ptr)
  br i1 %40, label %41, label %46

41:                                               ; preds = %35
  %42 = ptrtoint ptr %39 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.2, i32 noundef %42) #6
  %43 = load ptr, ptr %3, align 4
  %44 = ptrtoint ptr %43 to i32
  %45 = load ptr, ptr %21, align 4
  tail call void @clk_disable(ptr noundef %45) #5
  tail call void @clk_unprepare(ptr noundef %45) #5
  br label %54

46:                                               ; preds = %35
  %47 = getelementptr inbounds %struct.rtc_device, ptr %39, i32 0, i32 19
  store i32 1, ptr %47, align 4
  %48 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 11, i32 1
  %49 = load i16, ptr %48, align 4
  %50 = and i16 %49, 1
  %51 = icmp eq i16 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %46
  %53 = tail call i32 @device_init_wakeup(ptr noundef %2, i1 noundef zeroext true) #5
  br label %54

54:                                               ; preds = %52, %46, %41, %32, %23, %17, %12, %5, %1
  %55 = phi i32 [ %10, %12 ], [ %18, %17 ], [ %24, %23 ], [ %44, %41 ], [ -12, %1 ], [ %6, %5 ], [ %33, %32 ], [ 0, %52 ], [ 0, %46 ]
  ret i32 %55
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @spear_rtc_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.spear_rtc_config, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 16
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %8 = icmp sgt i32 %7, -1
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = and i32 %7, 2147483647
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  %11 = load ptr, ptr %4, align 4
  %12 = getelementptr i8, ptr %11, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %10) #5, !srcloc !11
  br label %13

13:                                               ; preds = %9, %1
  %14 = getelementptr inbounds %struct.spear_rtc_config, ptr %3, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  tail call void @clk_disable(ptr noundef %15) #5
  tail call void @clk_unprepare(ptr noundef %15) #5
  %16 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %17 = tail call i32 @device_init_wakeup(ptr noundef %16, i1 noundef zeroext false) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @spear_rtc_shutdown(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.spear_rtc_config, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 16
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %8 = icmp sgt i32 %7, -1
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = and i32 %7, 2147483647
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  %11 = load ptr, ptr %4, align 4
  %12 = getelementptr i8, ptr %11, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %10) #5, !srcloc !11
  br label %13

13:                                               ; preds = %9, %1
  %14 = getelementptr inbounds %struct.spear_rtc_config, ptr %3, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  tail call void @clk_disable(ptr noundef %15) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @spear_rtc_irq(i32 noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.spear_rtc_config, ptr %1, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %3) #5
  %4 = getelementptr inbounds %struct.spear_rtc_config, ptr %1, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 20
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !13
  %8 = load i16, ptr %3, align 4
  %9 = add i16 %8, 1
  store i16 %9, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !16
  %10 = icmp sgt i32 %7, -1
  br i1 %10, label %20, label %11

11:                                               ; preds = %2
  %12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #5
  %13 = load ptr, ptr %4, align 4
  %14 = getelementptr i8, ptr %13, i32 20
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !17
  %16 = or i32 %15, -2147483648
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !18
  tail call void @arm_heavy_mb() #5
  %17 = load ptr, ptr %4, align 4
  %18 = getelementptr i8, ptr %17, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %16) #5, !srcloc !11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %12) #5
  %19 = load ptr, ptr %1, align 4
  tail call void @rtc_update_irq(ptr noundef %19, i32 noundef 1, i32 noundef 160) #5
  br label %20

20:                                               ; preds = %11, %2
  %21 = phi i32 [ 1, %11 ], [ 0, %2 ]
  ret i32 %21
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_rtc_device_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_update_irq(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @spear_rtc_read_time(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #2 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.spear_rtc_config, ptr %4, i32 0, i32 2
  %6 = getelementptr inbounds %struct.spear_rtc_config, ptr %4, i32 0, i32 3
  br label %7

7:                                                ; preds = %15, %2
  %8 = phi i32 [ 0, %2 ], [ %16, %15 ]
  %9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #5
  %10 = load ptr, ptr %6, align 4
  %11 = getelementptr i8, ptr %10, i32 20
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !19
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %9) #5
  %13 = and i32 %12, 12
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %7
  tail call void @msleep(i32 noundef 1) #5
  %16 = add nuw nsw i32 %8, 1
  %17 = icmp eq i32 %16, 80
  br i1 %17, label %18, label %7

18:                                               ; preds = %15, %7
  %19 = load ptr, ptr %6, align 4
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !20
  %21 = load ptr, ptr %6, align 4
  %22 = getelementptr i8, ptr %21, i32 4
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !21
  %24 = lshr i32 %20, 8
  %25 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 1
  %26 = lshr i32 %20, 16
  %27 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 2
  %28 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 3
  %29 = lshr i32 %23, 8
  %30 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 4
  %31 = trunc i32 %20 to i8
  %32 = and i8 %31, 127
  %33 = tail call i32 @_bcd2bin(i8 noundef zeroext %32) #7
  store i32 %33, ptr %1, align 4
  %34 = trunc i32 %24 to i8
  %35 = and i8 %34, 127
  %36 = tail call i32 @_bcd2bin(i8 noundef zeroext %35) #7
  store i32 %36, ptr %25, align 4
  %37 = trunc i32 %26 to i8
  %38 = and i8 %37, 63
  %39 = tail call i32 @_bcd2bin(i8 noundef zeroext %38) #7
  store i32 %39, ptr %27, align 4
  %40 = trunc i32 %23 to i8
  %41 = and i8 %40, 63
  %42 = tail call i32 @_bcd2bin(i8 noundef zeroext %41) #7
  store i32 %42, ptr %28, align 4
  %43 = trunc i32 %29 to i8
  %44 = and i8 %43, 127
  %45 = tail call i32 @_bcd2bin(i8 noundef zeroext %44) #7
  %46 = add i32 %45, -1
  store i32 %46, ptr %30, align 4
  %47 = lshr i32 %23, 16
  %48 = trunc i32 %47 to i8
  %49 = tail call i32 @_bcd2bin(i8 noundef zeroext %48) #7
  %50 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 5
  store i32 %49, ptr %50, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @spear_rtc_set_time(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #2 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = load i32, ptr %1, align 4
  %6 = tail call zeroext i8 @_bin2bcd(i32 noundef %5) #7
  %7 = zext i8 %6 to i32
  store i32 %7, ptr %1, align 4
  %8 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = tail call zeroext i8 @_bin2bcd(i32 noundef %9) #7
  %11 = zext i8 %10 to i32
  store i32 %11, ptr %8, align 4
  %12 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = tail call zeroext i8 @_bin2bcd(i32 noundef %13) #7
  %15 = zext i8 %14 to i32
  store i32 %15, ptr %12, align 4
  %16 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 3
  %17 = load i32, ptr %16, align 4
  %18 = tail call zeroext i8 @_bin2bcd(i32 noundef %17) #7
  %19 = zext i8 %18 to i32
  store i32 %19, ptr %16, align 4
  %20 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 4
  %21 = load i32, ptr %20, align 4
  %22 = add i32 %21, 1
  %23 = tail call zeroext i8 @_bin2bcd(i32 noundef %22) #7
  %24 = zext i8 %23 to i32
  store i32 %24, ptr %20, align 4
  %25 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 5
  %26 = load i32, ptr %25, align 4
  %27 = tail call zeroext i8 @_bin2bcd(i32 noundef %26) #7
  %28 = zext i8 %27 to i32
  store i32 %28, ptr %25, align 4
  %29 = getelementptr inbounds %struct.spear_rtc_config, ptr %4, i32 0, i32 2
  %30 = getelementptr inbounds %struct.spear_rtc_config, ptr %4, i32 0, i32 3
  br label %31

31:                                               ; preds = %39, %2
  %32 = phi i32 [ 0, %2 ], [ %40, %39 ]
  %33 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %29) #5
  %34 = load ptr, ptr %30, align 4
  %35 = getelementptr i8, ptr %34, i32 20
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !19
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %29, i32 noundef %33) #5
  %37 = and i32 %36, 12
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %31
  tail call void @msleep(i32 noundef 1) #5
  %40 = add nuw nsw i32 %32, 1
  %41 = icmp eq i32 %40, 80
  br i1 %41, label %42, label %31

42:                                               ; preds = %39, %31
  %43 = load i32, ptr %1, align 4
  %44 = load i32, ptr %8, align 4
  %45 = shl i32 %44, 8
  %46 = or i32 %45, %43
  %47 = load i32, ptr %12, align 4
  %48 = shl i32 %47, 16
  %49 = or i32 %46, %48
  %50 = load i32, ptr %16, align 4
  %51 = load i32, ptr %20, align 4
  %52 = shl i32 %51, 8
  %53 = or i32 %52, %50
  %54 = load i32, ptr %25, align 4
  %55 = shl i32 %54, 16
  %56 = or i32 %53, %55
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !22
  tail call void @arm_heavy_mb() #5
  %57 = load ptr, ptr %30, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 %49) #5, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !23
  tail call void @arm_heavy_mb() #5
  %58 = load ptr, ptr %30, align 4
  %59 = getelementptr i8, ptr %58, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %59, i32 %56) #5, !srcloc !11
  %60 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %29) #5
  %61 = load ptr, ptr %30, align 4
  %62 = getelementptr i8, ptr %61, i32 20
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %62) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !24
  %64 = and i32 %63, 48
  %65 = icmp eq i32 %64, 0
  %66 = select i1 %65, i32 0, i32 -5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %29, i32 noundef %60) #5
  ret i32 %66
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @spear_rtc_read_alarm(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #2 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.spear_rtc_config, ptr %4, i32 0, i32 2
  %6 = getelementptr inbounds %struct.spear_rtc_config, ptr %4, i32 0, i32 3
  br label %7

7:                                                ; preds = %15, %2
  %8 = phi i32 [ 0, %2 ], [ %16, %15 ]
  %9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #5
  %10 = load ptr, ptr %6, align 4
  %11 = getelementptr i8, ptr %10, i32 20
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !19
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %9) #5
  %13 = and i32 %12, 12
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %7
  tail call void @msleep(i32 noundef 1) #5
  %16 = add nuw nsw i32 %8, 1
  %17 = icmp eq i32 %16, 80
  br i1 %17, label %18, label %7

18:                                               ; preds = %15, %7
  %19 = load ptr, ptr %6, align 4
  %20 = getelementptr i8, ptr %19, i32 8
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !25
  %22 = load ptr, ptr %6, align 4
  %23 = getelementptr i8, ptr %22, i32 12
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !26
  %25 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2
  %26 = lshr i32 %21, 8
  %27 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 1
  %28 = lshr i32 %21, 16
  %29 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 2
  %30 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 3
  %31 = lshr i32 %24, 8
  %32 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 4
  %33 = trunc i32 %21 to i8
  %34 = and i8 %33, 127
  %35 = tail call i32 @_bcd2bin(i8 noundef zeroext %34) #7
  store i32 %35, ptr %25, align 4
  %36 = trunc i32 %26 to i8
  %37 = and i8 %36, 127
  %38 = tail call i32 @_bcd2bin(i8 noundef zeroext %37) #7
  store i32 %38, ptr %27, align 4
  %39 = trunc i32 %28 to i8
  %40 = and i8 %39, 63
  %41 = tail call i32 @_bcd2bin(i8 noundef zeroext %40) #7
  store i32 %41, ptr %29, align 4
  %42 = trunc i32 %24 to i8
  %43 = and i8 %42, 63
  %44 = tail call i32 @_bcd2bin(i8 noundef zeroext %43) #7
  store i32 %44, ptr %30, align 4
  %45 = trunc i32 %31 to i8
  %46 = and i8 %45, 127
  %47 = tail call i32 @_bcd2bin(i8 noundef zeroext %46) #7
  %48 = add i32 %47, -1
  store i32 %48, ptr %32, align 4
  %49 = lshr i32 %24, 16
  %50 = trunc i32 %49 to i8
  %51 = tail call i32 @_bcd2bin(i8 noundef zeroext %50) #7
  %52 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 5
  store i32 %51, ptr %52, align 4
  %53 = load ptr, ptr %6, align 4
  %54 = getelementptr i8, ptr %53, i32 16
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %54) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !27
  store i8 0, ptr %1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @spear_rtc_set_alarm(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #2 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = tail call zeroext i8 @_bin2bcd(i32 noundef %6) #7
  %8 = zext i8 %7 to i32
  store i32 %8, ptr %5, align 4
  %9 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = tail call zeroext i8 @_bin2bcd(i32 noundef %10) #7
  %12 = zext i8 %11 to i32
  store i32 %12, ptr %9, align 4
  %13 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = tail call zeroext i8 @_bin2bcd(i32 noundef %14) #7
  %16 = zext i8 %15 to i32
  store i32 %16, ptr %13, align 4
  %17 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 3
  %18 = load i32, ptr %17, align 4
  %19 = tail call zeroext i8 @_bin2bcd(i32 noundef %18) #7
  %20 = zext i8 %19 to i32
  store i32 %20, ptr %17, align 4
  %21 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 4
  %22 = load i32, ptr %21, align 4
  %23 = add i32 %22, 1
  %24 = tail call zeroext i8 @_bin2bcd(i32 noundef %23) #7
  %25 = zext i8 %24 to i32
  store i32 %25, ptr %21, align 4
  %26 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 5
  %27 = load i32, ptr %26, align 4
  %28 = tail call zeroext i8 @_bin2bcd(i32 noundef %27) #7
  %29 = zext i8 %28 to i32
  store i32 %29, ptr %26, align 4
  %30 = getelementptr inbounds %struct.spear_rtc_config, ptr %4, i32 0, i32 2
  %31 = getelementptr inbounds %struct.spear_rtc_config, ptr %4, i32 0, i32 3
  br label %32

32:                                               ; preds = %40, %2
  %33 = phi i32 [ 0, %2 ], [ %41, %40 ]
  %34 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %30) #5
  %35 = load ptr, ptr %31, align 4
  %36 = getelementptr i8, ptr %35, i32 20
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %36) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !19
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %30, i32 noundef %34) #5
  %38 = and i32 %37, 12
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %32
  tail call void @msleep(i32 noundef 1) #5
  %41 = add nuw nsw i32 %33, 1
  %42 = icmp eq i32 %41, 80
  br i1 %42, label %43, label %32

43:                                               ; preds = %40, %32
  %44 = load i32, ptr %5, align 4
  %45 = load i32, ptr %9, align 4
  %46 = shl i32 %45, 8
  %47 = or i32 %46, %44
  %48 = load i32, ptr %13, align 4
  %49 = shl i32 %48, 16
  %50 = or i32 %47, %49
  %51 = load i32, ptr %17, align 4
  %52 = load i32, ptr %21, align 4
  %53 = shl i32 %52, 8
  %54 = or i32 %53, %51
  %55 = load i32, ptr %26, align 4
  %56 = shl i32 %55, 16
  %57 = or i32 %54, %56
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !28
  tail call void @arm_heavy_mb() #5
  %58 = load ptr, ptr %31, align 4
  %59 = getelementptr i8, ptr %58, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %59, i32 %50) #5, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !29
  tail call void @arm_heavy_mb() #5
  %60 = load ptr, ptr %31, align 4
  %61 = getelementptr i8, ptr %60, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %61, i32 %57) #5, !srcloc !11
  %62 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %30) #5
  %63 = load ptr, ptr %31, align 4
  %64 = getelementptr i8, ptr %63, i32 20
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %64) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !24
  %66 = and i32 %65, 48
  %67 = icmp eq i32 %66, 0
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %30, i32 noundef %62) #5
  br i1 %67, label %68, label %92

68:                                               ; preds = %43
  %69 = load i8, ptr %1, align 4
  %70 = icmp eq i8 %69, 0
  %71 = load ptr, ptr %31, align 4
  %72 = getelementptr i8, ptr %71, i32 16
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %72) #5
  tail call void asm sideeffect "dsb ", "~{memory}"() #5
  %74 = icmp sgt i32 %73, -1
  br i1 %70, label %87, label %75

75:                                               ; preds = %68
  br i1 %74, label %76, label %92

76:                                               ; preds = %75
  %77 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %30) #5
  %78 = load ptr, ptr %31, align 4
  %79 = getelementptr i8, ptr %78, i32 20
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %79) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !17
  %81 = or i32 %80, -2147483648
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !18
  tail call void @arm_heavy_mb() #5
  %82 = load ptr, ptr %31, align 4
  %83 = getelementptr i8, ptr %82, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %83, i32 %81) #5, !srcloc !11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %30, i32 noundef %77) #5
  %84 = or i32 %73, -2147483648
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !30
  tail call void @arm_heavy_mb() #5
  %85 = load ptr, ptr %31, align 4
  %86 = getelementptr i8, ptr %85, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %86, i32 %84) #5, !srcloc !11
  br label %92

87:                                               ; preds = %68
  br i1 %74, label %92, label %88

88:                                               ; preds = %87
  %89 = and i32 %73, 2147483647
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  %90 = load ptr, ptr %31, align 4
  %91 = getelementptr i8, ptr %90, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %91, i32 %89) #5, !srcloc !11
  br label %92

92:                                               ; preds = %88, %87, %76, %75, %43
  %93 = phi i32 [ -5, %43 ], [ 0, %75 ], [ 0, %76 ], [ 0, %87 ], [ 0, %88 ]
  ret i32 %93
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @spear_alarm_irq_enable(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.spear_rtc_config, ptr %4, i32 0, i32 2
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #5
  %7 = getelementptr inbounds %struct.spear_rtc_config, ptr %4, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 20
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !17
  %11 = or i32 %10, -2147483648
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !18
  tail call void @arm_heavy_mb() #5
  %12 = load ptr, ptr %7, align 4
  %13 = getelementptr i8, ptr %12, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %11) #5, !srcloc !11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #5
  switch i32 %1, label %39 [
    i32 0, label %14
    i32 1, label %23
  ]

14:                                               ; preds = %2
  %15 = load ptr, ptr %7, align 4
  %16 = getelementptr i8, ptr %15, i32 16
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %18 = icmp sgt i32 %17, -1
  br i1 %18, label %39, label %19

19:                                               ; preds = %14
  %20 = and i32 %17, 2147483647
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  %21 = load ptr, ptr %7, align 4
  %22 = getelementptr i8, ptr %21, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %20) #5, !srcloc !11
  br label %39

23:                                               ; preds = %2
  %24 = load ptr, ptr %7, align 4
  %25 = getelementptr i8, ptr %24, i32 16
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !31
  %27 = icmp sgt i32 %26, -1
  br i1 %27, label %28, label %39

28:                                               ; preds = %23
  %29 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #5
  %30 = load ptr, ptr %7, align 4
  %31 = getelementptr i8, ptr %30, i32 20
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !17
  %33 = or i32 %32, -2147483648
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !18
  tail call void @arm_heavy_mb() #5
  %34 = load ptr, ptr %7, align 4
  %35 = getelementptr i8, ptr %34, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %33) #5, !srcloc !11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %29) #5
  %36 = or i32 %26, -2147483648
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !30
  tail call void @arm_heavy_mb() #5
  %37 = load ptr, ptr %7, align 4
  %38 = getelementptr i8, ptr %37, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 %36) #5, !srcloc !11
  br label %39

39:                                               ; preds = %28, %23, %19, %14, %2
  %40 = phi i32 [ -22, %2 ], [ 0, %14 ], [ 0, %19 ], [ 0, %23 ], [ 0, %28 ]
  ret i32 %40
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @_bcd2bin(i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local zeroext i8 @_bin2bcd(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @spear_rtc_suspend(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -16
  %3 = getelementptr i8, ptr %0, i32 64
  %4 = load ptr, ptr %3, align 8
  %5 = tail call i32 @platform_get_irq(ptr noundef %2, i32 noundef 0) #5
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 1
  %7 = load i16, ptr %6, align 4
  %8 = and i16 %7, 1
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %19, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 6
  %12 = load ptr, ptr %11, align 8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %10
  %15 = tail call i32 @irq_set_irq_wake(i32 noundef %5, i32 noundef 1) #5
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %32

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.spear_rtc_config, ptr %4, i32 0, i32 4
  store i32 1, ptr %18, align 4
  br label %32

19:                                               ; preds = %10, %1
  %20 = getelementptr inbounds %struct.spear_rtc_config, ptr %4, i32 0, i32 3
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr i8, ptr %21, i32 16
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %24 = icmp sgt i32 %23, -1
  br i1 %24, label %29, label %25

25:                                               ; preds = %19
  %26 = and i32 %23, 2147483647
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  %27 = load ptr, ptr %20, align 4
  %28 = getelementptr i8, ptr %27, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %26) #5, !srcloc !11
  br label %29

29:                                               ; preds = %25, %19
  %30 = getelementptr inbounds %struct.spear_rtc_config, ptr %4, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  tail call void @clk_disable(ptr noundef %31) #5
  br label %32

32:                                               ; preds = %29, %17, %14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @spear_rtc_resume(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -16
  %3 = getelementptr i8, ptr %0, i32 64
  %4 = load ptr, ptr %3, align 8
  %5 = tail call i32 @platform_get_irq(ptr noundef %2, i32 noundef 0) #5
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 1
  %7 = load i16, ptr %6, align 4
  %8 = and i16 %7, 1
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %20, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 6
  %12 = load ptr, ptr %11, align 8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.spear_rtc_config, ptr %4, i32 0, i32 4
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %41, label %18

18:                                               ; preds = %14
  %19 = tail call i32 @irq_set_irq_wake(i32 noundef %5, i32 noundef 0) #5
  store i32 0, ptr %15, align 4
  br label %41

20:                                               ; preds = %10, %1
  %21 = getelementptr inbounds %struct.spear_rtc_config, ptr %4, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = tail call i32 @clk_enable(ptr noundef %22) #5
  %24 = getelementptr inbounds %struct.spear_rtc_config, ptr %4, i32 0, i32 3
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr i8, ptr %25, i32 16
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !31
  %28 = icmp sgt i32 %27, -1
  br i1 %28, label %29, label %41

29:                                               ; preds = %20
  %30 = getelementptr inbounds %struct.spear_rtc_config, ptr %4, i32 0, i32 2
  %31 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %30) #5
  %32 = load ptr, ptr %24, align 4
  %33 = getelementptr i8, ptr %32, i32 20
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !17
  %35 = or i32 %34, -2147483648
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !18
  tail call void @arm_heavy_mb() #5
  %36 = load ptr, ptr %24, align 4
  %37 = getelementptr i8, ptr %36, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 %35) #5, !srcloc !11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %30, i32 noundef %31) #5
  %38 = or i32 %27, -2147483648
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !30
  tail call void @arm_heavy_mb() #5
  %39 = load ptr, ptr %24, align 4
  %40 = getelementptr i8, ptr %39, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 %38) #5, !srcloc !11
  br label %41

41:                                               ; preds = %29, %20, %18, %14
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { cold nounwind }
attributes #7 = { nounwind readnone willreturn }

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
!8 = !{i64 2488299}
!9 = !{i64 2152463195}
!10 = !{i64 2152463405}
!11 = !{i64 2487881}
!12 = !{i64 2152465566}
!13 = !{i64 2148890518}
!14 = !{i64 2148886342}
!15 = !{i64 2148886417, i64 2148886444, i64 2148886491, i64 2148886513, i64 2148886541, i64 2148886561}
!16 = !{i64 2148913521}
!17 = !{i64 2152461477}
!18 = !{i64 2152461679}
!19 = !{i64 2152465171}
!20 = !{i64 2152467941}
!21 = !{i64 2152468292}
!22 = !{i64 2152468579}
!23 = !{i64 2152468909}
!24 = !{i64 2152464416}
!25 = !{i64 2152469395}
!26 = !{i64 2152469746}
!27 = !{i64 2152470159}
!28 = !{i64 2152470392}
!29 = !{i64 2152470722}
!30 = !{i64 2152462542}
!31 = !{i64 2152462332}
