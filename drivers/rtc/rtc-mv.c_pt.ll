; ModuleID = '/llk/IR/drivers/rtc/rtc-mv.c_pt.bc'
source_filename = "../drivers/rtc/rtc-mv.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rtc_class_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
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
%struct.rtc_plat_data = type { ptr, ptr, i32, ptr }
%struct.rtc_device = type { %struct.device, ptr, i32, ptr, %struct.mutex, %struct.cdev, i32, i32, %struct.spinlock, %struct.wait_queue_head, ptr, i32, i32, %struct.timerqueue_head, %struct.rtc_timer, %struct.rtc_timer, %struct.hrtimer, i32, %struct.work_struct, i32, i32, [1 x i32], i64, i64, i64, i64, i8 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.rtc_timer = type { %struct.timerqueue_node, i64, ptr, ptr, i32 }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rtc_wkalrm = type { i8, i8, %struct.rtc_time }

@__initcall__kmod_rtc_mv__210_314_mv_rtc_driver_init6 = internal global ptr @mv_rtc_driver_init, section ".initcall6.init", align 4
@mv_rtc_driver = internal global %struct.platform_driver { ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.3, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @rtc_mv_of_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_mv_rtc_driver_exit = internal global ptr @mv_rtc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author211 = internal constant [48 x i8] c"rtc_mv.author=Saeed Bishara <saeed@marvell.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description212 = internal constant [38 x i8] c"rtc_mv.description=Marvell RTC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file213 = internal constant [31 x i8] c"rtc_mv.file=drivers/rtc/rtc-mv\00", section ".modinfo", align 1
@__UNIQUE_ID_license214 = internal constant [19 x i8] c"rtc_mv.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias215 = internal constant [29 x i8] c"rtc_mv.alias=platform:rtc-mv\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [44 x i8] c"12 Hour mode is enabled but not supported.\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"internal RTC not ticking\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"interrupt not available.\0A\00", align 1
@mv_rtc_ops = internal constant %struct.rtc_class_ops { ptr null, ptr @mv_rtc_read_time, ptr @mv_rtc_set_time, ptr @mv_rtc_read_alarm, ptr @mv_rtc_set_alarm, ptr null, ptr @mv_rtc_alarm_irq_enable, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"rtc-mv\00", align 1
@rtc_mv_of_match_table = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,orion-rtc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@llvm.compiler.used = appending global [9 x ptr] [ptr @__UNIQUE_ID_alias215, ptr @__UNIQUE_ID_author211, ptr @__UNIQUE_ID_description212, ptr @__UNIQUE_ID_file213, ptr @__UNIQUE_ID_license214, ptr @__exitcall_mv_rtc_driver_exit, ptr @__initcall__kmod_rtc_mv__210_314_mv_rtc_driver_init6, ptr @mv_rtc_driver_exit, ptr @mv_rtc_remove], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @mv_rtc_remove(ptr noundef %0) #0 section ".exit.text" {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.rtc_plat_data, ptr %3, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = icmp sgt i32 %5, -1
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %9 = tail call i32 @device_init_wakeup(ptr noundef %8, i1 noundef zeroext false) #5
  br label %10

10:                                               ; preds = %7, %1
  %11 = getelementptr inbounds %struct.rtc_plat_data, ptr %3, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @clk_disable(ptr noundef %12) #5
  tail call void @clk_unprepare(ptr noundef %12) #5
  br label %15

15:                                               ; preds = %14, %10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @mv_rtc_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_probe(ptr noundef nonnull @mv_rtc_driver, ptr noundef nonnull @mv_rtc_probe, ptr noundef null) #5
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @mv_rtc_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @mv_rtc_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_probe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @mv_rtc_probe(ptr noundef %0) #0 section ".init.text" {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 16, i32 noundef 3520) #5
  %4 = icmp eq ptr %3, null
  br i1 %4, label %75, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #5
  %7 = getelementptr inbounds %struct.rtc_plat_data, ptr %3, i32 0, i32 1
  store ptr %6, ptr %7, align 4
  %8 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %8, label %9, label %11

9:                                                ; preds = %5
  %10 = ptrtoint ptr %6 to i32
  br label %75

11:                                               ; preds = %5
  %12 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef null) #5
  %13 = getelementptr inbounds %struct.rtc_plat_data, ptr %3, i32 0, i32 3
  store ptr %12, ptr %13, align 4
  %14 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %14, label %22, label %15

15:                                               ; preds = %11
  %16 = tail call i32 @clk_prepare(ptr noundef %12) #5
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %15
  %19 = tail call i32 @clk_enable(ptr noundef %12) #5
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %18
  tail call void @clk_unprepare(ptr noundef %12) #5
  br label %22

22:                                               ; preds = %21, %18, %15, %11
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %24 = and i32 %23, 4194304
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %22
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str) #6
  br label %70

27:                                               ; preds = %22
  %28 = icmp eq i32 %23, 16777216
  br i1 %28, label %29, label %33

29:                                               ; preds = %27
  tail call void @msleep(i32 noundef 1000) #5
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !10
  %31 = icmp eq i32 %30, 16777216
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.1) #6
  br label %70

33:                                               ; preds = %29, %27
  %34 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #5
  %35 = getelementptr inbounds %struct.rtc_plat_data, ptr %3, i32 0, i32 2
  store i32 %34, ptr %35, align 4
  %36 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %3, ptr %36, align 8
  %37 = tail call ptr @devm_rtc_allocate_device(ptr noundef %2) #5
  store ptr %37, ptr %3, align 4
  %38 = icmp ugt ptr %37, inttoptr (i32 -4096 to ptr)
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = ptrtoint ptr %37 to i32
  br label %70

41:                                               ; preds = %33
  %42 = load i32, ptr %35, align 4
  %43 = icmp sgt i32 %42, -1
  br i1 %43, label %44, label %57

44:                                               ; preds = %41
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !11
  tail call void @arm_heavy_mb() #5
  %45 = load ptr, ptr %7, align 4
  %46 = getelementptr i8, ptr %45, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 0) #5, !srcloc !12
  %47 = load i32, ptr %35, align 4
  %48 = load ptr, ptr %0, align 8
  %49 = tail call i32 @devm_request_threaded_irq(ptr noundef %2, i32 noundef %47, ptr noundef nonnull @mv_rtc_interrupt, ptr noundef null, i32 noundef 128, ptr noundef %48, ptr noundef nonnull %3) #5
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %2, ptr noundef nonnull @.str.2) #6
  store i32 -1, ptr %35, align 4
  br label %57

52:                                               ; preds = %44
  %53 = load i32, ptr %35, align 4
  %54 = icmp sgt i32 %53, -1
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  %56 = tail call i32 @device_init_wakeup(ptr noundef %2, i1 noundef zeroext true) #5
  br label %60

57:                                               ; preds = %52, %51, %41
  %58 = load ptr, ptr %3, align 4
  %59 = getelementptr inbounds %struct.rtc_device, ptr %58, i32 0, i32 21
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %59) #5
  br label %60

60:                                               ; preds = %57, %55
  %61 = load ptr, ptr %3, align 4
  %62 = getelementptr inbounds %struct.rtc_device, ptr %61, i32 0, i32 3
  store ptr @mv_rtc_ops, ptr %62, align 8
  %63 = load ptr, ptr %3, align 4
  %64 = getelementptr inbounds %struct.rtc_device, ptr %63, i32 0, i32 22
  store i64 946684800, ptr %64, align 8
  %65 = load ptr, ptr %3, align 4
  %66 = getelementptr inbounds %struct.rtc_device, ptr %65, i32 0, i32 23
  store i64 4102444799, ptr %66, align 8
  %67 = load ptr, ptr %3, align 4
  %68 = tail call i32 @__devm_rtc_register_device(ptr noundef null, ptr noundef %67) #5
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %75, label %70

70:                                               ; preds = %60, %39, %32, %26
  %71 = phi i32 [ -22, %26 ], [ -19, %32 ], [ %40, %39 ], [ %68, %60 ]
  %72 = load ptr, ptr %13, align 4
  %73 = icmp ugt ptr %72, inttoptr (i32 -4096 to ptr)
  br i1 %73, label %75, label %74

74:                                               ; preds = %70
  tail call void @clk_disable(ptr noundef %72) #5
  tail call void @clk_unprepare(ptr noundef %72) #5
  br label %75

75:                                               ; preds = %74, %70, %60, %9, %1
  %76 = phi i32 [ %10, %9 ], [ -12, %1 ], [ 0, %60 ], [ %71, %74 ], [ %71, %70 ]
  ret i32 %76
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_rtc_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mv_rtc_interrupt(i32 noundef %0, ptr nocapture noundef readonly %1) #3 {
  %3 = getelementptr inbounds %struct.rtc_plat_data, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 20
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !13
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !14
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 0) #5, !srcloc !12
  %9 = load ptr, ptr %1, align 4
  tail call void @rtc_update_irq(ptr noundef %9, i32 noundef 1, i32 noundef 160) #5
  br label %10

10:                                               ; preds = %8, %2
  %11 = phi i32 [ 1, %8 ], [ 0, %2 ]
  ret i32 %11
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_rtc_register_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_update_irq(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mv_rtc_read_time(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #3 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.rtc_plat_data, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !15
  %8 = getelementptr i8, ptr %6, i32 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !16
  %10 = lshr i32 %7, 8
  %11 = lshr i32 %7, 16
  %12 = lshr i32 %7, 24
  %13 = lshr i32 %9, 8
  %14 = trunc i32 %7 to i8
  %15 = and i8 %14, 127
  %16 = tail call i32 @_bcd2bin(i8 noundef zeroext %15) #7
  store i32 %16, ptr %1, align 4
  %17 = trunc i32 %10 to i8
  %18 = and i8 %17, 127
  %19 = tail call i32 @_bcd2bin(i8 noundef zeroext %18) #7
  %20 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 1
  store i32 %19, ptr %20, align 4
  %21 = trunc i32 %11 to i8
  %22 = and i8 %21, 63
  %23 = tail call i32 @_bcd2bin(i8 noundef zeroext %22) #7
  %24 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 2
  store i32 %23, ptr %24, align 4
  %25 = trunc i32 %9 to i8
  %26 = and i8 %25, 63
  %27 = tail call i32 @_bcd2bin(i8 noundef zeroext %26) #7
  %28 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 3
  store i32 %27, ptr %28, align 4
  %29 = trunc i32 %12 to i8
  %30 = and i8 %29, 7
  %31 = tail call i32 @_bcd2bin(i8 noundef zeroext %30) #7
  %32 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 6
  store i32 %31, ptr %32, align 4
  %33 = trunc i32 %13 to i8
  %34 = and i8 %33, 63
  %35 = tail call i32 @_bcd2bin(i8 noundef zeroext %34) #7
  %36 = add i32 %35, -1
  %37 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 4
  store i32 %36, ptr %37, align 4
  %38 = lshr i32 %9, 16
  %39 = trunc i32 %38 to i8
  %40 = tail call i32 @_bcd2bin(i8 noundef zeroext %39) #7
  %41 = add i32 %40, 100
  %42 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 5
  store i32 %41, ptr %42, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mv_rtc_set_time(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #3 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.rtc_plat_data, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = load i32, ptr %1, align 4
  %8 = tail call zeroext i8 @_bin2bcd(i32 noundef %7) #7
  %9 = zext i8 %8 to i32
  %10 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = tail call zeroext i8 @_bin2bcd(i32 noundef %11) #7
  %13 = zext i8 %12 to i32
  %14 = shl nuw nsw i32 %13, 8
  %15 = or i32 %14, %9
  %16 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = tail call zeroext i8 @_bin2bcd(i32 noundef %17) #7
  %19 = zext i8 %18 to i32
  %20 = shl nuw nsw i32 %19, 16
  %21 = or i32 %15, %20
  %22 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 6
  %23 = load i32, ptr %22, align 4
  %24 = tail call zeroext i8 @_bin2bcd(i32 noundef %23) #7
  %25 = zext i8 %24 to i32
  %26 = shl nuw i32 %25, 24
  %27 = or i32 %21, %26
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !17
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %27) #5, !srcloc !12
  %28 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 3
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 4
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr inbounds %struct.rtc_time, ptr %1, i32 0, i32 5
  %33 = load i32, ptr %32, align 4
  %34 = add i32 %33, -100
  %35 = tail call zeroext i8 @_bin2bcd(i32 noundef %34) #7
  %36 = zext i8 %35 to i32
  %37 = add i32 %31, 1
  %38 = tail call zeroext i8 @_bin2bcd(i32 noundef %37) #7
  %39 = zext i8 %38 to i32
  %40 = tail call zeroext i8 @_bin2bcd(i32 noundef %29) #7
  %41 = zext i8 %40 to i32
  %42 = shl nuw nsw i32 %39, 8
  %43 = or i32 %42, %41
  %44 = shl nuw nsw i32 %36, 16
  %45 = or i32 %43, %44
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !18
  tail call void @arm_heavy_mb() #5
  %46 = getelementptr i8, ptr %6, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 %45) #5, !srcloc !12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mv_rtc_read_alarm(ptr nocapture noundef readonly %0, ptr noundef %1) #3 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.rtc_plat_data, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 8
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !19
  %9 = getelementptr i8, ptr %6, i32 12
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !20
  %11 = lshr i32 %8, 8
  %12 = lshr i32 %8, 16
  %13 = lshr i32 %8, 24
  %14 = lshr i32 %10, 8
  %15 = trunc i32 %8 to i8
  %16 = and i8 %15, 127
  %17 = tail call i32 @_bcd2bin(i8 noundef zeroext %16) #7
  %18 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2
  store i32 %17, ptr %18, align 4
  %19 = trunc i32 %11 to i8
  %20 = and i8 %19, 127
  %21 = tail call i32 @_bcd2bin(i8 noundef zeroext %20) #7
  %22 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 1
  store i32 %21, ptr %22, align 4
  %23 = trunc i32 %12 to i8
  %24 = and i8 %23, 63
  %25 = tail call i32 @_bcd2bin(i8 noundef zeroext %24) #7
  %26 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 2
  store i32 %25, ptr %26, align 4
  %27 = trunc i32 %10 to i8
  %28 = and i8 %27, 63
  %29 = tail call i32 @_bcd2bin(i8 noundef zeroext %28) #7
  %30 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 3
  store i32 %29, ptr %30, align 4
  %31 = trunc i32 %13 to i8
  %32 = and i8 %31, 7
  %33 = tail call i32 @_bcd2bin(i8 noundef zeroext %32) #7
  %34 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 6
  store i32 %33, ptr %34, align 4
  %35 = trunc i32 %14 to i8
  %36 = and i8 %35, 63
  %37 = tail call i32 @_bcd2bin(i8 noundef zeroext %36) #7
  %38 = add i32 %37, -1
  %39 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 4
  store i32 %38, ptr %39, align 4
  %40 = lshr i32 %10, 16
  %41 = trunc i32 %40 to i8
  %42 = tail call i32 @_bcd2bin(i8 noundef zeroext %41) #7
  %43 = add i32 %42, 100
  %44 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 5
  store i32 %43, ptr %44, align 4
  %45 = getelementptr i8, ptr %6, i32 16
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %45) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !21
  %47 = icmp ne i32 %46, 0
  %48 = zext i1 %47 to i8
  store i8 %48, ptr %1, align 4
  %49 = tail call i32 @rtc_valid_tm(ptr noundef %18) #5
  ret i32 %49
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mv_rtc_set_alarm(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #3 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.rtc_plat_data, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = icmp sgt i32 %8, -1
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = tail call zeroext i8 @_bin2bcd(i32 noundef %8) #7
  %12 = or i8 %11, -128
  %13 = zext i8 %12 to i32
  br label %14

14:                                               ; preds = %10, %2
  %15 = phi i32 [ %13, %10 ], [ 0, %2 ]
  %16 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = icmp sgt i32 %17, -1
  br i1 %18, label %19, label %25

19:                                               ; preds = %14
  %20 = tail call zeroext i8 @_bin2bcd(i32 noundef %17) #7
  %21 = zext i8 %20 to i32
  %22 = shl nuw nsw i32 %21, 8
  %23 = or i32 %15, %22
  %24 = or i32 %23, 32768
  br label %25

25:                                               ; preds = %19, %14
  %26 = phi i32 [ %24, %19 ], [ %15, %14 ]
  %27 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 2
  %28 = load i32, ptr %27, align 4
  %29 = icmp sgt i32 %28, -1
  br i1 %29, label %30, label %36

30:                                               ; preds = %25
  %31 = tail call zeroext i8 @_bin2bcd(i32 noundef %28) #7
  %32 = zext i8 %31 to i32
  %33 = shl nuw nsw i32 %32, 16
  %34 = or i32 %26, %33
  %35 = or i32 %34, 8388608
  br label %36

36:                                               ; preds = %30, %25
  %37 = phi i32 [ %35, %30 ], [ %26, %25 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !22
  tail call void @arm_heavy_mb() #5
  %38 = getelementptr i8, ptr %6, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 %37) #5, !srcloc !12
  %39 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 3
  %40 = load i32, ptr %39, align 4
  %41 = icmp sgt i32 %40, -1
  br i1 %41, label %42, label %46

42:                                               ; preds = %36
  %43 = tail call zeroext i8 @_bin2bcd(i32 noundef %40) #7
  %44 = or i8 %43, -128
  %45 = zext i8 %44 to i32
  br label %46

46:                                               ; preds = %42, %36
  %47 = phi i32 [ %45, %42 ], [ 0, %36 ]
  %48 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 4
  %49 = load i32, ptr %48, align 4
  %50 = icmp sgt i32 %49, -1
  br i1 %50, label %51, label %58

51:                                               ; preds = %46
  %52 = add nuw i32 %49, 1
  %53 = tail call zeroext i8 @_bin2bcd(i32 noundef %52) #7
  %54 = zext i8 %53 to i32
  %55 = shl nuw nsw i32 %54, 8
  %56 = or i32 %47, %55
  %57 = or i32 %56, 32768
  br label %58

58:                                               ; preds = %51, %46
  %59 = phi i32 [ %57, %51 ], [ %47, %46 ]
  %60 = getelementptr inbounds %struct.rtc_wkalrm, ptr %1, i32 0, i32 2, i32 5
  %61 = load i32, ptr %60, align 4
  %62 = icmp sgt i32 %61, -1
  br i1 %62, label %63, label %70

63:                                               ; preds = %58
  %64 = add nsw i32 %61, -100
  %65 = tail call zeroext i8 @_bin2bcd(i32 noundef %64) #7
  %66 = zext i8 %65 to i32
  %67 = shl nuw nsw i32 %66, 16
  %68 = or i32 %59, %67
  %69 = or i32 %68, 8388608
  br label %70

70:                                               ; preds = %63, %58
  %71 = phi i32 [ %69, %63 ], [ %59, %58 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !23
  tail call void @arm_heavy_mb() #5
  %72 = getelementptr i8, ptr %6, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %72, i32 %71) #5, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !24
  tail call void @arm_heavy_mb() #5
  %73 = getelementptr i8, ptr %6, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %73, i32 0) #5, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !25
  tail call void @arm_heavy_mb() #5
  %74 = load i8, ptr %1, align 4
  %75 = icmp ne i8 %74, 0
  %76 = zext i1 %75 to i32
  %77 = getelementptr i8, ptr %6, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %77, i32 %76) #5, !srcloc !12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mv_rtc_alarm_irq_enable(ptr nocapture noundef readonly %0, i32 noundef %1) #3 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.rtc_plat_data, ptr %4, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %15, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.rtc_plat_data, ptr %4, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq i32 %1, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #5
  tail call void @arm_heavy_mb() #5
  %12 = getelementptr i8, ptr %10, i32 16
  br i1 %11, label %14, label %13

13:                                               ; preds = %8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 1) #5, !srcloc !12
  br label %15

14:                                               ; preds = %8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 0) #5, !srcloc !12
  br label %15

15:                                               ; preds = %14, %13, %2
  %16 = phi i32 [ -22, %2 ], [ 0, %14 ], [ 0, %13 ]
  ret i32 %16
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @_bcd2bin(i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local zeroext i8 @_bin2bcd(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtc_valid_tm(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!8 = !{i64 3066268}
!9 = !{i64 2152462806}
!10 = !{i64 2152463897}
!11 = !{i64 2152464651}
!12 = !{i64 3065850}
!13 = !{i64 2152461767}
!14 = !{i64 2152461951}
!15 = !{i64 2152454581}
!16 = !{i64 2152454896}
!17 = !{i64 2152453269}
!18 = !{i64 2152454136}
!19 = !{i64 2152456182}
!20 = !{i64 2152456505}
!21 = !{i64 2152457803}
!22 = !{i64 2152458821}
!23 = !{i64 2152460028}
!24 = !{i64 2152460344}
!25 = !{i64 2152460668}
