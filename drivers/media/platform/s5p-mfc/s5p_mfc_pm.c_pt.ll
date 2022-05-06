; ModuleID = '/llk/IR/drivers/media/platform/s5p-mfc/s5p_mfc_pm.c_pt.bc'
source_filename = "../drivers/media/platform/s5p-mfc/s5p_mfc_pm.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.s5p_mfc_dev = type { %struct.v4l2_device, ptr, ptr, ptr, [2 x ptr], ptr, i32, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.s5p_mfc_pm, ptr, i32, %struct.spinlock, %struct.spinlock, %struct.mutex, i32, i32, i32, %struct.wait_queue_head, %struct.s5p_mfc_priv_buf, i32, i32, ptr, ptr, [2 x i32], i32, [4 x ptr], i32, i32, %struct.atomic_t, %struct.timer_list, ptr, %struct.work_struct, i32, %struct.s5p_mfc_priv_buf, i32, ptr, ptr, ptr, i32, i8, i8 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.list_head = type { ptr, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.s5p_mfc_pm = type { ptr, ptr, [4 x ptr], i32, i8, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.s5p_mfc_priv_buf = type { i32, ptr, i32, i32, i32 }
%struct.s5p_mfc_variant = type { i32, i32, i32, ptr, [2 x ptr], [4 x ptr], i32, i8 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }

@pm = internal unnamed_addr global ptr null, align 4
@p_dev = internal unnamed_addr global ptr null, align 4
@.str = private unnamed_addr constant [34 x i8] c"\013%s:%d: Failed to get clock: %s\0A\00", align 1
@__func__.s5p_mfc_init_pm = private unnamed_addr constant [16 x i8] c"s5p_mfc_init_pm\00", align 1
@clk_ref = internal global %struct.atomic_t zeroinitializer, align 4
@mfc_debug_level = external dso_local local_unnamed_addr global i32, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"\017%s:%d: + %d\0A\00", align 1
@__func__.s5p_mfc_clock_on = private unnamed_addr constant [17 x i8] c"s5p_mfc_clock_on\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"\017%s:%d: - %d\0A\00", align 1
@__func__.s5p_mfc_clock_off = private unnamed_addr constant [18 x i8] c"s5p_mfc_clock_off\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"\013%s:%d: clock prepare failed for clock: %s\0A\00", align 1
@__func__.s5p_mfc_power_on = private unnamed_addr constant [17 x i8] c"s5p_mfc_power_on\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @s5p_mfc_init_pm(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %0, i32 0, i32 9
  store ptr %2, ptr @pm, align 4
  store ptr %0, ptr @p_dev, align 4
  %3 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %0, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.s5p_mfc_variant, ptr %4, i32 0, i32 6
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %0, i32 0, i32 9, i32 3
  store i32 %6, ptr %7, align 4
  %8 = getelementptr inbounds %struct.s5p_mfc_variant, ptr %4, i32 0, i32 5
  %9 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %0, i32 0, i32 9, i32 1
  store ptr %8, ptr %9, align 4
  %10 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %0, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.platform_device, ptr %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %0, i32 0, i32 9, i32 5
  store ptr %12, ptr %13, align 4
  store ptr null, ptr %2, align 4
  %14 = icmp sgt i32 %6, 0
  br i1 %14, label %15, label %50

15:                                               ; preds = %43, %1
  %16 = phi ptr [ %25, %43 ], [ %2, %1 ]
  %17 = phi i32 [ %44, %43 ], [ 0, %1 ]
  %18 = getelementptr inbounds %struct.s5p_mfc_pm, ptr %16, i32 0, i32 5
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.s5p_mfc_pm, ptr %16, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr ptr, ptr %21, i32 %17
  %23 = load ptr, ptr %22, align 4
  %24 = tail call ptr @devm_clk_get(ptr noundef %19, ptr noundef %23) #3
  %25 = load ptr, ptr @pm, align 4
  %26 = getelementptr %struct.s5p_mfc_pm, ptr %25, i32 0, i32 2, i32 %17
  store ptr %24, ptr %26, align 4
  %27 = icmp ugt ptr %24, inttoptr (i32 -4096 to ptr)
  br i1 %27, label %28, label %43

28:                                               ; preds = %15
  %29 = icmp ne i32 %17, 0
  %30 = icmp eq ptr %24, inttoptr (i32 -2 to ptr)
  %31 = select i1 %29, i1 %30, i1 false
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  store ptr null, ptr %26, align 4
  br label %43

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.s5p_mfc_pm, ptr %25, i32 0, i32 1
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr ptr, ptr %35, i32 %17
  %37 = load ptr, ptr %36, align 4
  %38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.s5p_mfc_init_pm, i32 noundef 43, ptr noundef %37) #4
  %39 = load ptr, ptr @pm, align 4
  %40 = getelementptr %struct.s5p_mfc_pm, ptr %39, i32 0, i32 2, i32 %17
  %41 = load ptr, ptr %40, align 4
  %42 = ptrtoint ptr %41 to i32
  br label %62

43:                                               ; preds = %32, %15
  %44 = add nuw nsw i32 %17, 1
  %45 = getelementptr inbounds %struct.s5p_mfc_pm, ptr %25, i32 0, i32 3
  %46 = load i32, ptr %45, align 4
  %47 = icmp slt i32 %44, %46
  br i1 %47, label %15, label %48

48:                                               ; preds = %43
  %49 = load ptr, ptr %3, align 4
  br label %50

50:                                               ; preds = %48, %1
  %51 = phi ptr [ %4, %1 ], [ %49, %48 ]
  %52 = phi ptr [ %2, %1 ], [ %25, %48 ]
  %53 = getelementptr inbounds %struct.s5p_mfc_variant, ptr %51, i32 0, i32 7
  %54 = load i8, ptr %53, align 4, !range !8
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %50
  %57 = getelementptr inbounds %struct.s5p_mfc_pm, ptr %52, i32 0, i32 2
  %58 = load ptr, ptr %57, align 4
  store ptr %58, ptr %52, align 4
  br label %59

59:                                               ; preds = %56, %50
  %60 = getelementptr inbounds %struct.s5p_mfc_pm, ptr %52, i32 0, i32 5
  %61 = load ptr, ptr %60, align 4
  tail call void @pm_runtime_enable(ptr noundef %61) #3
  store volatile i32 0, ptr @clk_ref, align 4
  br label %62

62:                                               ; preds = %59, %33
  %63 = phi i32 [ %42, %33 ], [ 0, %59 ]
  ret i32 %63
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @s5p_mfc_final_pm(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @pm, align 4
  %3 = getelementptr inbounds %struct.s5p_mfc_pm, ptr %2, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  tail call void @__pm_runtime_disable(ptr noundef %4, i1 noundef zeroext true) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @s5p_mfc_clock_on() local_unnamed_addr #0 {
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @clk_ref) #3, !srcloc !9
  %1 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @clk_ref, ptr nonnull @clk_ref, i32 1, ptr nonnull elementtype(i32) @clk_ref) #3, !srcloc !10
  %2 = load i32, ptr @mfc_debug_level, align 4
  %3 = icmp sgt i32 %2, 2
  br i1 %3, label %4, label %7

4:                                                ; preds = %0
  %5 = load volatile i32, ptr @clk_ref, align 4
  %6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.s5p_mfc_clock_on, i32 noundef 64, i32 noundef %5) #4
  br label %7

7:                                                ; preds = %4, %0
  %8 = load ptr, ptr @pm, align 4
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 @clk_enable(ptr noundef %9) #3
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @s5p_mfc_clock_off() local_unnamed_addr #0 {
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @clk_ref) #3, !srcloc !9
  %1 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @clk_ref, ptr nonnull @clk_ref, i32 1, ptr nonnull elementtype(i32) @clk_ref) #3, !srcloc !11
  %2 = load i32, ptr @mfc_debug_level, align 4
  %3 = icmp sgt i32 %2, 2
  br i1 %3, label %4, label %7

4:                                                ; preds = %0
  %5 = load volatile i32, ptr @clk_ref, align 4
  %6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.s5p_mfc_clock_off, i32 noundef 72, i32 noundef %5) #4
  br label %7

7:                                                ; preds = %4, %0
  %8 = load ptr, ptr @pm, align 4
  %9 = load ptr, ptr %8, align 4
  tail call void @clk_disable(ptr noundef %9) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @s5p_mfc_power_on() local_unnamed_addr #0 {
  %1 = load ptr, ptr @pm, align 4
  %2 = getelementptr inbounds %struct.s5p_mfc_pm, ptr %1, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #3
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %11, label %6

6:                                                ; preds = %0
  %7 = load ptr, ptr @pm, align 4
  %8 = getelementptr inbounds %struct.s5p_mfc_pm, ptr %7, i32 0, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %17, label %45

11:                                               ; preds = %0
  %12 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #3, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %12) #3, !srcloc !9
  %13 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %12, ptr %12, i32 0, i32 -1, ptr elementtype(i32) %12) #3, !srcloc !13
  %14 = extractvalue { i32, i32, i32 } %13, 0
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %60, label %16

16:                                               ; preds = %11
  tail call void asm sideeffect "dmb ish", "~{memory}"() #3, !srcloc !14
  br label %60

17:                                               ; preds = %39, %6
  %18 = phi ptr [ %41, %39 ], [ %7, %6 ]
  %19 = phi i32 [ %40, %39 ], [ 0, %6 ]
  %20 = getelementptr %struct.s5p_mfc_pm, ptr %18, i32 0, i32 2, i32 %19
  %21 = load ptr, ptr %20, align 4
  %22 = tail call i32 @clk_prepare(ptr noundef %21) #3
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %17
  %25 = tail call i32 @clk_enable(ptr noundef %21) #3
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %39, label %27

27:                                               ; preds = %24
  tail call void @clk_unprepare(ptr noundef %21) #3
  br label %28

28:                                               ; preds = %27, %17
  %29 = phi i32 [ %22, %17 ], [ %25, %27 ]
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %28
  %32 = load ptr, ptr @pm, align 4
  %33 = getelementptr inbounds %struct.s5p_mfc_pm, ptr %32, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr ptr, ptr %34, i32 %19
  %36 = load ptr, ptr %35, align 4
  %37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.s5p_mfc_power_on, i32 noundef 90, ptr noundef %36) #4
  %38 = icmp eq i32 %19, 0
  br i1 %38, label %55, label %48

39:                                               ; preds = %28, %24
  %40 = add nuw nsw i32 %19, 1
  %41 = load ptr, ptr @pm, align 4
  %42 = getelementptr inbounds %struct.s5p_mfc_pm, ptr %41, i32 0, i32 3
  %43 = load i32, ptr %42, align 4
  %44 = icmp slt i32 %40, %43
  br i1 %44, label %17, label %45

45:                                               ; preds = %39, %6
  %46 = phi ptr [ %7, %6 ], [ %41, %39 ]
  %47 = load ptr, ptr %46, align 4
  tail call void @clk_disable(ptr noundef %47) #3
  br label %60

48:                                               ; preds = %48, %31
  %49 = phi i32 [ %53, %48 ], [ %19, %31 ]
  %50 = load ptr, ptr @pm, align 4
  %51 = getelementptr %struct.s5p_mfc_pm, ptr %50, i32 0, i32 2, i32 %49
  %52 = load ptr, ptr %51, align 4
  tail call void @clk_disable(ptr noundef %52) #3
  tail call void @clk_unprepare(ptr noundef %52) #3
  %53 = add nsw i32 %49, -1
  %54 = icmp sgt i32 %49, 1
  br i1 %54, label %48, label %55

55:                                               ; preds = %48, %31
  %56 = load ptr, ptr @pm, align 4
  %57 = getelementptr inbounds %struct.s5p_mfc_pm, ptr %56, i32 0, i32 5
  %58 = load ptr, ptr %57, align 4
  %59 = tail call i32 @__pm_runtime_idle(ptr noundef %58, i32 noundef 5) #3
  br label %60

60:                                               ; preds = %55, %45, %16, %11
  %61 = phi i32 [ %29, %55 ], [ 0, %45 ], [ %4, %11 ], [ %4, %16 ]
  ret i32 %61
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @s5p_mfc_power_off() local_unnamed_addr #0 {
  %1 = load ptr, ptr @pm, align 4
  %2 = load ptr, ptr %1, align 4
  %3 = tail call i32 @clk_enable(ptr noundef %2) #3
  %4 = load ptr, ptr @pm, align 4
  %5 = getelementptr inbounds %struct.s5p_mfc_pm, ptr %4, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %18

8:                                                ; preds = %8, %0
  %9 = phi ptr [ %14, %8 ], [ %4, %0 ]
  %10 = phi i32 [ %13, %8 ], [ 0, %0 ]
  %11 = getelementptr %struct.s5p_mfc_pm, ptr %9, i32 0, i32 2, i32 %10
  %12 = load ptr, ptr %11, align 4
  tail call void @clk_disable(ptr noundef %12) #3
  tail call void @clk_unprepare(ptr noundef %12) #3
  %13 = add nuw nsw i32 %10, 1
  %14 = load ptr, ptr @pm, align 4
  %15 = getelementptr inbounds %struct.s5p_mfc_pm, ptr %14, i32 0, i32 3
  %16 = load i32, ptr %15, align 4
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %8, label %18

18:                                               ; preds = %8, %0
  %19 = phi ptr [ %4, %0 ], [ %14, %8 ]
  %20 = getelementptr inbounds %struct.s5p_mfc_pm, ptr %19, i32 0, i32 5
  %21 = load ptr, ptr %20, align 4
  %22 = tail call i32 @__pm_runtime_idle(ptr noundef %21, i32 noundef 4) #3
  ret i32 %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { cold nounwind }

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
!8 = !{i8 0, i8 2}
!9 = !{i64 441019, i64 2147930990, i64 2147931016, i64 2147931063, i64 2147931085, i64 2147931113, i64 2147931133}
!10 = !{i64 2147943202, i64 2147943228, i64 2147943257, i64 2147943291, i64 2147943322, i64 2147943345}
!11 = !{i64 2147945559, i64 2147945585, i64 2147945614, i64 2147945648, i64 2147945679, i64 2147945702}
!12 = !{i64 2147942709}
!13 = !{i64 427588, i64 427613, i64 427635, i64 427651, i64 427663, i64 427683, i64 427707, i64 427723, i64 427735}
!14 = !{i64 2147942835}
