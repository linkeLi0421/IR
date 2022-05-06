; ModuleID = '/llk/IR/arch/arm/mach-omap2/omap_device.c_pt.bc'
source_filename = "../arch/arm/mach-omap2/omap_device.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.dev_pm_domain = type { %struct.dev_pm_ops, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type {}
%struct.notifier_block = type { ptr, ptr, i32 }
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
%struct.omap_device = type { ptr, ptr, i32, i8, i8, i8 }
%struct.omap_hwmod = type { ptr, ptr, ptr, ptr, %union.anon.65, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, ptr, %struct.spinlock, %struct.lock_class_key, %struct.list_head, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr }
%union.anon.65 = type { %struct.omap_hwmod_omap4_prcm }
%struct.omap_hwmod_omap4_prcm = type { i16, i16, i16, i16, i32, i8, i8, i8, i32 }
%struct.omap_hwmod_opt_clk = type { ptr, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }

@.str = private unnamed_addr constant [32 x i8] c"omap_device: build failed (%d)\0A\00", align 1
@omap_device_fail_pm_domain = dso_local global %struct.dev_pm_domain { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @_od_fail_runtime_suspend, ptr @_od_fail_runtime_resume, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@omap_device_pm_domain = dso_local global %struct.dev_pm_domain { %struct.dev_pm_ops { ptr null, ptr null, ptr @platform_pm_suspend, ptr @platform_pm_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @_od_suspend_noirq, ptr @_od_resume_noirq, ptr @_od_suspend_noirq, ptr @_od_resume_noirq, ptr @_od_suspend_noirq, ptr @_od_resume_noirq, ptr @_od_runtime_suspend, ptr @_od_runtime_resume, ptr null }, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"omap_device: %s() called from invalid state %d\0A\00", align 1
@__func__.omap_device_enable = private unnamed_addr constant [19 x i8] c"omap_device_enable\00", align 1
@__func__.omap_device_idle = private unnamed_addr constant [17 x i8] c"omap_device_idle\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"arch/arm/mach-omap2/omap_device.c\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"%s: no hwmod name!\0A\00", align 1
@__func__.omap_device_get_by_hwmod_name = private unnamed_addr constant [30 x i8] c"omap_device_get_by_hwmod_name\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"%s: no hwmod for %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"%s: no omap_device for %s\0A\00", align 1
@__initcall__kmod_omap_device__248_656___omap_device_init2 = internal global ptr @__omap_device_init, section ".initcall2.init", align 4
@__initcall__kmod_omap_device__249_706___omap_device_late_init7s = internal global ptr @__omap_device_late_init, section ".initcall7s.init", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.6 = private unnamed_addr constant [4 x i8] c"fck\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"clkdev_alloc for %s failed\0A\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"clk_get for %s failed\0A\00", align 1
@.str.9 = private unnamed_addr constant [40 x i8] c"%s: FIXME: missing hwmod/omap_dev info\0A\00", align 1
@__func__._od_fail_runtime_suspend = private unnamed_addr constant [25 x i8] c"_od_fail_runtime_suspend\00", align 1
@__func__._od_fail_runtime_resume = private unnamed_addr constant [24 x i8] c"_od_fail_runtime_resume\00", align 1
@.str.10 = private unnamed_addr constant [46 x i8] c"use pm_runtime_put_sync_suspend() in driver?\0A\00", align 1
@platform_bus_type = external dso_local global %struct.bus_type, align 4
@platform_nb = internal global %struct.notifier_block { ptr @_omap_device_notifier_call, ptr null, i32 0 }, align 4
@.str.11 = private unnamed_addr constant [30 x i8] c"enabled after unload, idling\0A\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"failed to idle\0A\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"ti,hwmods\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"dma_system\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"dma\00", align 1
@.str.16 = private unnamed_addr constant [26 x i8] c"Cannot lookup hwmod '%s'\0A\00", align 1
@.str.17 = private unnamed_addr constant [37 x i8] c"Cannot allocate omap_device for :%s\0A\00", align 1
@.str.18 = private unnamed_addr constant [36 x i8] c"%s: enabled but no driver.  Idling\0A\00", align 1
@__func__.omap_device_late_idle = private unnamed_addr constant [22 x i8] c"omap_device_late_idle\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__initcall__kmod_omap_device__248_656___omap_device_init2, ptr @__initcall__kmod_omap_device__249_706___omap_device_late_init7s, ptr @__omap_device_init, ptr @__omap_device_late_init], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @omap_device_get_context_loss_count(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 8
  br label %6

6:                                                ; preds = %3, %1
  %7 = phi ptr [ %5, %3 ], [ null, %1 ]
  %8 = getelementptr inbounds %struct.omap_device, ptr %7, i32 0, i32 3
  %9 = load i8, ptr %8, align 4
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.omap_device, ptr %7, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 @omap_hwmod_get_context_loss_count(ptr noundef %14) #10
  br label %16

16:                                               ; preds = %11, %6
  %17 = phi i32 [ %15, %11 ], [ 0, %6 ]
  ret i32 %17
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_hwmod_get_context_loss_count(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @omap_device_alloc(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 16) #11
  %6 = icmp eq ptr %5, null
  br i1 %6, label %45, label %7

7:                                                ; preds = %3
  %8 = trunc i32 %2 to i8
  %9 = getelementptr inbounds %struct.omap_device, ptr %5, i32 0, i32 3
  store i8 %8, ptr %9, align 4
  %10 = shl i32 %2, 2
  %11 = tail call ptr @kmemdup(ptr noundef %1, i32 noundef %10, i32 noundef 3264) #10
  %12 = icmp eq ptr %11, null
  br i1 %12, label %44, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.omap_device, ptr %5, i32 0, i32 1
  store ptr %11, ptr %14, align 4
  store ptr %0, ptr %5, align 8
  %15 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 11
  store ptr %5, ptr %15, align 8
  %16 = icmp sgt i32 %2, 0
  br i1 %16, label %17, label %47

17:                                               ; preds = %41, %13
  %18 = phi i32 [ %42, %41 ], [ 0, %13 ]
  %19 = getelementptr ptr, ptr %11, i32 %18
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.omap_hwmod, ptr %20, i32 0, i32 2
  store ptr %5, ptr %21, align 4
  %22 = load ptr, ptr %19, align 4
  %23 = getelementptr inbounds %struct.omap_hwmod, ptr %22, i32 0, i32 5
  %24 = load ptr, ptr %23, align 4
  tail call fastcc void @_add_clkdev(ptr noundef nonnull %5, ptr noundef nonnull @.str.6, ptr noundef %24) #10
  %25 = getelementptr inbounds %struct.omap_hwmod, ptr %22, i32 0, i32 22
  %26 = load i8, ptr %25, align 1
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %41, label %28

28:                                               ; preds = %17
  %29 = getelementptr inbounds %struct.omap_hwmod, ptr %22, i32 0, i32 7
  br label %30

30:                                               ; preds = %30, %28
  %31 = phi i32 [ 0, %28 ], [ %37, %30 ]
  %32 = load ptr, ptr %29, align 4
  %33 = getelementptr %struct.omap_hwmod_opt_clk, ptr %32, i32 %31
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr %struct.omap_hwmod_opt_clk, ptr %32, i32 %31, i32 1
  %36 = load ptr, ptr %35, align 4
  tail call fastcc void @_add_clkdev(ptr noundef nonnull %5, ptr noundef %34, ptr noundef %36) #10
  %37 = add nuw nsw i32 %31, 1
  %38 = load i8, ptr %25, align 1
  %39 = zext i8 %38 to i32
  %40 = icmp ult i32 %37, %39
  br i1 %40, label %30, label %41

41:                                               ; preds = %30, %17
  %42 = add nuw nsw i32 %18, 1
  %43 = icmp eq i32 %42, %2
  br i1 %43, label %47, label %17

44:                                               ; preds = %7
  tail call void @kfree(ptr noundef nonnull %5) #10
  br label %45

45:                                               ; preds = %44, %3
  %46 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %46, ptr noundef nonnull @.str, i32 noundef -12) #12
  br label %47

47:                                               ; preds = %45, %41, %13
  %48 = phi ptr [ inttoptr (i32 -12 to ptr), %45 ], [ %5, %13 ], [ %5, %41 ]
  ret ptr %48
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @omap_device_delete(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %8, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.platform_device, ptr %4, i32 0, i32 11
  store ptr null, ptr %5, align 8
  %6 = getelementptr inbounds %struct.omap_device, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  tail call void @kfree(ptr noundef %7) #10
  tail call void @kfree(ptr noundef nonnull %0) #10
  br label %8

8:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @_od_fail_runtime_suspend(ptr noundef %0) #0 {
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__._od_fail_runtime_suspend) #12
  ret i32 -19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @_od_fail_runtime_resume(ptr noundef %0) #0 {
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__._od_fail_runtime_resume) #12
  ret i32 -19
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_pm_suspend(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_pm_resume(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @_od_suspend_noirq(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -16
  %3 = icmp eq ptr %2, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr i8, ptr %0, i32 512
  %6 = load ptr, ptr %5, align 8
  br label %7

7:                                                ; preds = %4, %1
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  %9 = getelementptr inbounds %struct.omap_device, ptr %8, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 5
  br i1 %11, label %12, label %58

12:                                               ; preds = %7
  %13 = tail call i32 @pm_generic_suspend_noirq(ptr noundef %0) #10
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %58

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 18
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 2
  br i1 %18, label %58, label %19

19:                                               ; preds = %15
  %20 = tail call i32 @pm_generic_runtime_suspend(ptr noundef %0) #10
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %58

22:                                               ; preds = %19
  br i1 %3, label %26, label %23

23:                                               ; preds = %22
  %24 = getelementptr i8, ptr %0, i32 512
  %25 = load ptr, ptr %24, align 8
  br label %26

26:                                               ; preds = %23, %22
  %27 = phi ptr [ %25, %23 ], [ null, %22 ]
  %28 = getelementptr inbounds %struct.omap_device, ptr %27, i32 0, i32 4
  %29 = load i8, ptr %28, align 1
  %30 = icmp eq i8 %29, 1
  br i1 %30, label %33, label %31

31:                                               ; preds = %26
  %32 = zext i8 %29 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.omap_device_idle, i32 noundef %32) #12
  br label %54

33:                                               ; preds = %26
  %34 = getelementptr inbounds %struct.omap_device, ptr %27, i32 0, i32 3
  %35 = load i8, ptr %34, align 4
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %53, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.omap_device, ptr %27, i32 0, i32 1
  br label %39

39:                                               ; preds = %39, %37
  %40 = phi i32 [ 0, %37 ], [ %47, %39 ]
  %41 = phi i32 [ 0, %37 ], [ %46, %39 ]
  %42 = load ptr, ptr %38, align 4
  %43 = getelementptr ptr, ptr %42, i32 %40
  %44 = load ptr, ptr %43, align 4
  %45 = tail call i32 @omap_hwmod_idle(ptr noundef %44) #10
  %46 = or i32 %45, %41
  %47 = add nuw nsw i32 %40, 1
  %48 = load i8, ptr %34, align 4
  %49 = zext i8 %48 to i32
  %50 = icmp ult i32 %47, %49
  br i1 %50, label %39, label %51

51:                                               ; preds = %39
  %52 = icmp eq i32 %46, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %51, %33
  store i8 2, ptr %28, align 1
  br label %54

54:                                               ; preds = %53, %51, %31
  %55 = getelementptr inbounds %struct.omap_device, ptr %8, i32 0, i32 5
  %56 = load i8, ptr %55, align 2
  %57 = or i8 %56, 1
  store i8 %57, ptr %55, align 2
  br label %58

58:                                               ; preds = %54, %19, %15, %12, %7
  %59 = phi i32 [ 0, %7 ], [ 0, %19 ], [ 0, %54 ], [ 0, %15 ], [ %13, %12 ]
  ret i32 %59
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @_od_resume_noirq(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -16
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  %5 = load i8, ptr inttoptr (i32 14 to ptr), align 2
  %6 = and i8 %5, 1
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %49, label %15

8:                                                ; preds = %1
  %9 = getelementptr i8, ptr %0, i32 512
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.omap_device, ptr %10, i32 0, i32 5
  %12 = load i8, ptr %11, align 2
  %13 = and i8 %12, 1
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %49, label %17

15:                                               ; preds = %4
  %16 = and i8 %5, -2
  store i8 %16, ptr inttoptr (i32 14 to ptr), align 2
  br label %20

17:                                               ; preds = %8
  %18 = and i8 %12, -2
  store i8 %18, ptr %11, align 2
  %19 = load ptr, ptr %9, align 8
  br label %20

20:                                               ; preds = %17, %15
  %21 = phi ptr [ %19, %17 ], [ null, %15 ]
  %22 = getelementptr inbounds %struct.omap_device, ptr %21, i32 0, i32 4
  %23 = load i8, ptr %22, align 1
  %24 = icmp eq i8 %23, 1
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.omap_device_enable, i32 noundef 1) #12
  br label %47

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.omap_device, ptr %21, i32 0, i32 3
  %28 = load i8, ptr %27, align 4
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %46, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.omap_device, ptr %21, i32 0, i32 1
  br label %32

32:                                               ; preds = %32, %30
  %33 = phi i32 [ 0, %30 ], [ %40, %32 ]
  %34 = phi i32 [ 0, %30 ], [ %39, %32 ]
  %35 = load ptr, ptr %31, align 4
  %36 = getelementptr ptr, ptr %35, i32 %33
  %37 = load ptr, ptr %36, align 4
  %38 = tail call i32 @omap_hwmod_enable(ptr noundef %37) #10
  %39 = or i32 %38, %34
  %40 = add nuw nsw i32 %33, 1
  %41 = load i8, ptr %27, align 4
  %42 = zext i8 %41 to i32
  %43 = icmp ult i32 %40, %42
  br i1 %43, label %32, label %44

44:                                               ; preds = %32
  %45 = icmp eq i32 %39, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %44, %26
  store i8 1, ptr %22, align 1
  br label %47

47:                                               ; preds = %46, %44, %25
  %48 = tail call i32 @pm_generic_runtime_resume(ptr noundef %0) #10
  br label %49

49:                                               ; preds = %47, %8, %4
  %50 = tail call i32 @pm_generic_resume_noirq(ptr noundef %0) #10
  ret i32 %50
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @_od_runtime_suspend(ptr noundef %0) #0 {
  %2 = tail call i32 @pm_generic_runtime_suspend(ptr noundef %0) #10
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %38

4:                                                ; preds = %1
  %5 = getelementptr i8, ptr %0, i32 -16
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %4
  %8 = getelementptr i8, ptr %0, i32 512
  %9 = load ptr, ptr %8, align 8
  br label %10

10:                                               ; preds = %7, %4
  %11 = phi ptr [ %9, %7 ], [ null, %4 ]
  %12 = getelementptr inbounds %struct.omap_device, ptr %11, i32 0, i32 4
  %13 = load i8, ptr %12, align 1
  %14 = icmp eq i8 %13, 1
  br i1 %14, label %17, label %15

15:                                               ; preds = %10
  %16 = zext i8 %13 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.omap_device_idle, i32 noundef %16) #12
  br label %38

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.omap_device, ptr %11, i32 0, i32 3
  %19 = load i8, ptr %18, align 4
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %37, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.omap_device, ptr %11, i32 0, i32 1
  br label %23

23:                                               ; preds = %23, %21
  %24 = phi i32 [ 0, %21 ], [ %31, %23 ]
  %25 = phi i32 [ 0, %21 ], [ %30, %23 ]
  %26 = load ptr, ptr %22, align 4
  %27 = getelementptr ptr, ptr %26, i32 %24
  %28 = load ptr, ptr %27, align 4
  %29 = tail call i32 @omap_hwmod_idle(ptr noundef %28) #10
  %30 = or i32 %29, %25
  %31 = add nuw nsw i32 %24, 1
  %32 = load i8, ptr %18, align 4
  %33 = zext i8 %32 to i32
  %34 = icmp ult i32 %31, %33
  br i1 %34, label %23, label %35

35:                                               ; preds = %23
  %36 = icmp eq i32 %30, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %35, %17
  store i8 2, ptr %12, align 1
  br label %38

38:                                               ; preds = %37, %35, %15, %1
  %39 = phi i32 [ %2, %1 ], [ -22, %15 ], [ 0, %37 ], [ %30, %35 ]
  ret i32 %39
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @_od_runtime_resume(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -16
  %3 = icmp eq ptr %2, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr i8, ptr %0, i32 512
  %6 = load ptr, ptr %5, align 8
  br label %7

7:                                                ; preds = %4, %1
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  %9 = getelementptr inbounds %struct.omap_device, ptr %8, i32 0, i32 4
  %10 = load i8, ptr %9, align 1
  %11 = icmp eq i8 %10, 1
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.omap_device_enable, i32 noundef 1) #12
  br label %33

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.omap_device, ptr %8, i32 0, i32 3
  %15 = load i8, ptr %14, align 4
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %35, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.omap_device, ptr %8, i32 0, i32 1
  br label %19

19:                                               ; preds = %19, %17
  %20 = phi i32 [ 0, %17 ], [ %27, %19 ]
  %21 = phi i32 [ 0, %17 ], [ %26, %19 ]
  %22 = load ptr, ptr %18, align 4
  %23 = getelementptr ptr, ptr %22, i32 %20
  %24 = load ptr, ptr %23, align 4
  %25 = tail call i32 @omap_hwmod_enable(ptr noundef %24) #10
  %26 = or i32 %25, %21
  %27 = add nuw nsw i32 %20, 1
  %28 = load i8, ptr %14, align 4
  %29 = zext i8 %28 to i32
  %30 = icmp ult i32 %27, %29
  br i1 %30, label %19, label %31

31:                                               ; preds = %19
  %32 = icmp eq i32 %26, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %31, %12
  %34 = phi i32 [ %26, %31 ], [ -22, %12 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.10) #12
  br label %37

35:                                               ; preds = %31, %13
  store i8 1, ptr %9, align 1
  %36 = tail call i32 @pm_generic_runtime_resume(ptr noundef %0) #10
  br label %37

37:                                               ; preds = %35, %33
  %38 = phi i32 [ %34, %33 ], [ %36, %35 ]
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @omap_device_register(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void @dev_pm_domain_set(ptr noundef %2, ptr noundef nonnull @omap_device_pm_domain) #10
  %3 = tail call i32 @platform_device_add(ptr noundef %0) #10
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_domain_set(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @omap_device_enable(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 8
  br label %6

6:                                                ; preds = %3, %1
  %7 = phi ptr [ %5, %3 ], [ null, %1 ]
  %8 = getelementptr inbounds %struct.omap_device, ptr %7, i32 0, i32 4
  %9 = load i8, ptr %8, align 1
  %10 = icmp eq i8 %9, 1
  br i1 %10, label %11, label %13

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %12, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.omap_device_enable, i32 noundef 1) #12
  br label %34

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.omap_device, ptr %7, i32 0, i32 3
  %15 = load i8, ptr %14, align 4
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %33, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.omap_device, ptr %7, i32 0, i32 1
  br label %19

19:                                               ; preds = %19, %17
  %20 = phi i32 [ 0, %17 ], [ %27, %19 ]
  %21 = phi i32 [ 0, %17 ], [ %26, %19 ]
  %22 = load ptr, ptr %18, align 4
  %23 = getelementptr ptr, ptr %22, i32 %20
  %24 = load ptr, ptr %23, align 4
  %25 = tail call i32 @omap_hwmod_enable(ptr noundef %24) #10
  %26 = or i32 %25, %21
  %27 = add nuw nsw i32 %20, 1
  %28 = load i8, ptr %14, align 4
  %29 = zext i8 %28 to i32
  %30 = icmp ult i32 %27, %29
  br i1 %30, label %19, label %31

31:                                               ; preds = %19
  %32 = icmp eq i32 %26, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %31, %13
  store i8 1, ptr %8, align 1
  br label %34

34:                                               ; preds = %33, %31, %11
  %35 = phi i32 [ -22, %11 ], [ 0, %33 ], [ %26, %31 ]
  ret i32 %35
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @omap_device_idle(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 8
  br label %6

6:                                                ; preds = %3, %1
  %7 = phi ptr [ %5, %3 ], [ null, %1 ]
  %8 = getelementptr inbounds %struct.omap_device, ptr %7, i32 0, i32 4
  %9 = load i8, ptr %8, align 1
  %10 = icmp eq i8 %9, 1
  br i1 %10, label %14, label %11

11:                                               ; preds = %6
  %12 = zext i8 %9 to i32
  %13 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %13, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.omap_device_idle, i32 noundef %12) #12
  br label %35

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.omap_device, ptr %7, i32 0, i32 3
  %16 = load i8, ptr %15, align 4
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %34, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.omap_device, ptr %7, i32 0, i32 1
  br label %20

20:                                               ; preds = %20, %18
  %21 = phi i32 [ 0, %18 ], [ %28, %20 ]
  %22 = phi i32 [ 0, %18 ], [ %27, %20 ]
  %23 = load ptr, ptr %19, align 4
  %24 = getelementptr ptr, ptr %23, i32 %21
  %25 = load ptr, ptr %24, align 4
  %26 = tail call i32 @omap_hwmod_idle(ptr noundef %25) #10
  %27 = or i32 %26, %22
  %28 = add nuw nsw i32 %21, 1
  %29 = load i8, ptr %15, align 4
  %30 = zext i8 %29 to i32
  %31 = icmp ult i32 %28, %30
  br i1 %31, label %20, label %32

32:                                               ; preds = %20
  %33 = icmp eq i32 %27, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %32, %14
  store i8 2, ptr %8, align 1
  br label %35

35:                                               ; preds = %34, %32, %11
  %36 = phi i32 [ -22, %11 ], [ 0, %34 ], [ %27, %32 ]
  ret i32 %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @omap_device_assert_hardreset(ptr noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 11
  %6 = load ptr, ptr %5, align 8
  br label %7

7:                                                ; preds = %4, %2
  %8 = phi ptr [ %6, %4 ], [ null, %2 ]
  %9 = getelementptr inbounds %struct.omap_device, ptr %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.omap_device, ptr %8, i32 0, i32 3
  %11 = load i8, ptr %10, align 4
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %25, label %18

13:                                               ; preds = %18
  %14 = add nuw nsw i32 %19, 1
  %15 = load i8, ptr %10, align 4
  %16 = zext i8 %15 to i32
  %17 = icmp ult i32 %14, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %13, %7
  %19 = phi i32 [ %14, %13 ], [ 0, %7 ]
  %20 = load ptr, ptr %9, align 4
  %21 = getelementptr ptr, ptr %20, i32 %19
  %22 = load ptr, ptr %21, align 4
  %23 = tail call i32 @omap_hwmod_assert_hardreset(ptr noundef %22, ptr noundef %1) #10
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %13, label %25

25:                                               ; preds = %18, %13, %7
  %26 = phi i32 [ 0, %7 ], [ %23, %18 ], [ 0, %13 ]
  ret i32 %26
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_hwmod_assert_hardreset(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @omap_device_deassert_hardreset(ptr noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 11
  %6 = load ptr, ptr %5, align 8
  br label %7

7:                                                ; preds = %4, %2
  %8 = phi ptr [ %6, %4 ], [ null, %2 ]
  %9 = getelementptr inbounds %struct.omap_device, ptr %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.omap_device, ptr %8, i32 0, i32 3
  %11 = load i8, ptr %10, align 4
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %25, label %18

13:                                               ; preds = %18
  %14 = add nuw nsw i32 %19, 1
  %15 = load i8, ptr %10, align 4
  %16 = zext i8 %15 to i32
  %17 = icmp ult i32 %14, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %13, %7
  %19 = phi i32 [ %14, %13 ], [ 0, %7 ]
  %20 = load ptr, ptr %9, align 4
  %21 = getelementptr ptr, ptr %20, i32 %19
  %22 = load ptr, ptr %21, align 4
  %23 = tail call i32 @omap_hwmod_deassert_hardreset(ptr noundef %22, ptr noundef %1) #10
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %13, label %25

25:                                               ; preds = %18, %13, %7
  %26 = phi i32 [ 0, %7 ], [ %23, %18 ], [ 0, %13 ]
  ret i32 %26
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_hwmod_deassert_hardreset(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @omap_device_get_by_hwmod_name(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 628, i32 noundef 9, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.omap_device_get_by_hwmod_name) #10
  br label %16

4:                                                ; preds = %1
  %5 = tail call ptr @omap_hwmod_lookup(ptr noundef nonnull %0) #10
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 635, i32 noundef 9, ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.omap_device_get_by_hwmod_name, ptr noundef nonnull %0) #10
  br label %16

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.omap_hwmod, ptr %5, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 640, i32 noundef 9, ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.omap_device_get_by_hwmod_name, ptr noundef nonnull %0) #10
  br label %16

13:                                               ; preds = %8
  %14 = load ptr, ptr %10, align 4
  %15 = getelementptr inbounds %struct.platform_device, ptr %14, i32 0, i32 3
  br label %16

16:                                               ; preds = %13, %12, %7, %3
  %17 = phi ptr [ %15, %13 ], [ inttoptr (i32 -19 to ptr), %12 ], [ inttoptr (i32 -19 to ptr), %7 ], [ inttoptr (i32 -22 to ptr), %3 ]
  ret ptr %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @omap_hwmod_lookup(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @__omap_device_init() #4 section ".init.text" {
  %1 = tail call i32 @omap_rev() #10
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %5, label %3

3:                                                ; preds = %0
  %4 = tail call i32 @bus_register_notifier(ptr noundef nonnull @platform_bus_type, ptr noundef nonnull @platform_nb) #10
  br label %5

5:                                                ; preds = %3, %0
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @__omap_device_late_init() #4 section ".init.text" {
  %1 = tail call i32 @omap_rev() #10
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %5, label %3

3:                                                ; preds = %0
  %4 = tail call i32 @bus_for_each_dev(ptr noundef nonnull @platform_bus_type, ptr noundef null, ptr noundef null, ptr noundef nonnull @omap_device_late_idle) #10
  br label %5

5:                                                ; preds = %3, %0
  ret i32 0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @_add_clkdev(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.of_phandle_args, align 4
  %5 = icmp ne ptr %1, null
  %6 = icmp ne ptr %2, null
  %7 = and i1 %5, %6
  br i1 %7, label %8, label %57

8:                                                ; preds = %3
  %9 = load ptr, ptr %0, align 4
  %10 = getelementptr inbounds %struct.platform_device, ptr %9, i32 0, i32 3, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.platform_device, ptr %9, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  br label %16

16:                                               ; preds = %13, %8
  %17 = phi ptr [ %15, %13 ], [ %11, %8 ]
  %18 = tail call ptr @clk_get_sys(ptr noundef %17, ptr noundef nonnull %1) #10
  %19 = icmp ugt ptr %18, inttoptr (i32 -4096 to ptr)
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  tail call void @clk_put(ptr noundef %18) #10
  br label %57

21:                                               ; preds = %16
  %22 = tail call ptr @clk_get_sys(ptr noundef null, ptr noundef nonnull %2) #10
  %23 = icmp ugt ptr %22, inttoptr (i32 -4096 to ptr)
  br i1 %23, label %24, label %38

24:                                               ; preds = %21
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %4) #10
  %25 = getelementptr inbounds i8, ptr %4, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %25, i8 0, i32 68, i1 false), !annotation !8
  %26 = tail call ptr @of_find_node_by_name(ptr noundef null, ptr noundef nonnull %2) #10
  store ptr %26, ptr %4, align 4
  %27 = call ptr @of_clk_get_from_provider(ptr noundef nonnull %4) #10
  %28 = load ptr, ptr %0, align 4
  %29 = getelementptr inbounds %struct.platform_device, ptr %28, i32 0, i32 3, i32 3
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %24
  %33 = getelementptr inbounds %struct.platform_device, ptr %28, i32 0, i32 3
  %34 = load ptr, ptr %33, align 4
  br label %35

35:                                               ; preds = %32, %24
  %36 = phi ptr [ %34, %32 ], [ %30, %24 ]
  %37 = call i32 @clk_register_clkdev(ptr noundef %27, ptr noundef nonnull %1, ptr noundef %36) #10
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %4) #10
  br label %49

38:                                               ; preds = %21
  %39 = load ptr, ptr %0, align 4
  %40 = getelementptr inbounds %struct.platform_device, ptr %39, i32 0, i32 3, i32 3
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.platform_device, ptr %39, i32 0, i32 3
  %45 = load ptr, ptr %44, align 4
  br label %46

46:                                               ; preds = %43, %38
  %47 = phi ptr [ %45, %43 ], [ %41, %38 ]
  %48 = tail call i32 @clk_add_alias(ptr noundef nonnull %1, ptr noundef %47, ptr noundef nonnull %2, ptr noundef null) #10
  br label %49

49:                                               ; preds = %46, %35
  %50 = phi i32 [ %37, %35 ], [ %48, %46 ]
  switch i32 %50, label %54 [
    i32 0, label %57
    i32 -12, label %51
    i32 -19, label %51
  ]

51:                                               ; preds = %49, %49
  %52 = load ptr, ptr %0, align 4
  %53 = getelementptr inbounds %struct.platform_device, ptr %52, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %53, ptr noundef nonnull @.str.7, ptr noundef nonnull %1) #12
  br label %57

54:                                               ; preds = %49
  %55 = load ptr, ptr %0, align 4
  %56 = getelementptr inbounds %struct.platform_device, ptr %55, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %56, ptr noundef nonnull @.str.8, ptr noundef nonnull %2) #12
  br label %57

57:                                               ; preds = %54, %51, %49, %20, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get_sys(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_node_by_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_from_provider(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_register_clkdev(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_add_alias(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_generic_suspend_noirq(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_generic_runtime_suspend(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_generic_runtime_resume(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_generic_resume_noirq(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_hwmod_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_hwmod_idle(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_rev() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bus_register_notifier(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @_omap_device_notifier_call(ptr nocapture noundef readnone %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = alloca %struct.resource, align 4
  %5 = alloca ptr, align 4
  %6 = getelementptr i8, ptr %2, i32 -16
  switch i32 %1, label %165 [
    i32 3, label %7
    i32 7, label %16
    i32 4, label %30
    i32 1, label %47
  ]

7:                                                ; preds = %3
  %8 = getelementptr i8, ptr %2, i32 512
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %173, label %11

11:                                               ; preds = %7
  %12 = load ptr, ptr %9, align 4
  %13 = getelementptr inbounds %struct.platform_device, ptr %12, i32 0, i32 11
  store ptr null, ptr %13, align 8
  %14 = getelementptr inbounds %struct.omap_device, ptr %9, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  tail call void @kfree(ptr noundef %15) #10
  tail call void @kfree(ptr noundef nonnull %9) #10
  br label %173

16:                                               ; preds = %3
  %17 = icmp eq ptr %6, null
  br i1 %17, label %173, label %18

18:                                               ; preds = %16
  %19 = getelementptr i8, ptr %2, i32 512
  %20 = load ptr, ptr %19, align 8
  %21 = icmp eq ptr %20, null
  br i1 %21, label %173, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.omap_device, ptr %20, i32 0, i32 4
  %24 = load i8, ptr %23, align 1
  %25 = icmp eq i8 %24, 1
  br i1 %25, label %26, label %173

26:                                               ; preds = %22
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %2, ptr noundef nonnull @.str.11) #12
  %27 = tail call i32 @omap_device_idle(ptr noundef nonnull %6)
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %173, label %29

29:                                               ; preds = %26
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.12) #12
  br label %173

30:                                               ; preds = %3
  %31 = icmp eq ptr %6, null
  br i1 %31, label %173, label %32

32:                                               ; preds = %30
  %33 = getelementptr i8, ptr %2, i32 512
  %34 = load ptr, ptr %33, align 8
  %35 = icmp eq ptr %34, null
  br i1 %35, label %173, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.omap_device, ptr %34, i32 0, i32 2
  store i32 4, ptr %37, align 4
  %38 = getelementptr inbounds %struct.omap_device, ptr %34, i32 0, i32 4
  %39 = load i8, ptr %38, align 1
  %40 = icmp eq i8 %39, 1
  br i1 %40, label %41, label %173

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 11, i32 18
  %43 = load i32, ptr %42, align 4
  %44 = icmp eq i32 %43, 2
  br i1 %44, label %45, label %173

45:                                               ; preds = %41
  %46 = tail call i32 @__pm_runtime_set_status(ptr noundef %2, i32 noundef 0) #10
  br label %173

47:                                               ; preds = %3
  %48 = getelementptr %struct.device, ptr %2, i32 0, i32 25
  %49 = load ptr, ptr %48, align 8
  %50 = icmp eq ptr %49, null
  br i1 %50, label %164, label %51

51:                                               ; preds = %47
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %4, i8 0, i32 32, i1 false) #10, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  store ptr null, ptr %5, align 4, !annotation !8
  %52 = tail call i32 @of_property_read_string_helper(ptr noundef nonnull %49, ptr noundef nonnull @.str.13, ptr noundef null, i32 noundef 0, i32 noundef 0) #10
  %53 = icmp slt i32 %52, 1
  br i1 %53, label %163, label %54

54:                                               ; preds = %51
  %55 = call i32 @of_property_read_string_helper(ptr noundef nonnull %49, ptr noundef nonnull @.str.13, ptr noundef nonnull %5, i32 noundef 1, i32 noundef 0) #10
  %56 = icmp sgt i32 %55, -1
  br i1 %56, label %57, label %64

57:                                               ; preds = %54
  %58 = load ptr, ptr %5, align 4
  %59 = call i32 @strncmp(ptr noundef nonnull dereferenceable(11) @.str.14, ptr noundef %58, i32 noundef 10) #10
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %67, label %61

61:                                               ; preds = %57
  %62 = call i32 @strncmp(ptr noundef nonnull dereferenceable(4) @.str.15, ptr noundef %58, i32 noundef 3) #10
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %61, %54
  %65 = call i32 @omap_hwmod_parse_module_range(ptr noundef null, ptr noundef nonnull %49, ptr noundef nonnull %4) #10
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %163, label %67

67:                                               ; preds = %64, %61, %57
  %68 = phi i1 [ false, %64 ], [ true, %57 ], [ true, %61 ]
  %69 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %52, i32 4) #10
  %70 = extractvalue { i32, i1 } %69, 1
  br i1 %70, label %162, label %71, !prof !9

71:                                               ; preds = %67
  %72 = extractvalue { i32, i1 } %69, 0
  %73 = call noalias align 64 ptr @__kmalloc(i32 noundef %72, i32 noundef 3520) #13
  %74 = icmp eq ptr %73, null
  br i1 %74, label %162, label %75

75:                                               ; preds = %84, %71
  %76 = phi i1 [ %90, %84 ], [ false, %71 ]
  %77 = phi i32 [ %91, %84 ], [ 0, %71 ]
  %78 = call i32 @of_property_read_string_helper(ptr noundef nonnull %49, ptr noundef nonnull @.str.13, ptr noundef nonnull %5, i32 noundef 1, i32 noundef %77) #10
  %79 = load ptr, ptr %5, align 4
  %80 = call ptr @omap_hwmod_lookup(ptr noundef %79) #10
  %81 = icmp eq ptr %80, null
  br i1 %81, label %82, label %84

82:                                               ; preds = %75
  %83 = load ptr, ptr %5, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.16, ptr noundef %83) #12
  br label %161

84:                                               ; preds = %75
  %85 = getelementptr ptr, ptr %73, i32 %77
  store ptr %80, ptr %85, align 4
  %86 = getelementptr inbounds %struct.omap_hwmod, ptr %80, i32 0, i32 18
  %87 = load i32, ptr %86, align 4
  %88 = and i32 %87, 8
  %89 = icmp ne i32 %88, 0
  %90 = select i1 %89, i1 true, i1 %76
  %91 = add nuw nsw i32 %77, 1
  %92 = icmp eq i32 %91, %52
  br i1 %92, label %93, label %75

93:                                               ; preds = %84
  %94 = call ptr @omap_device_alloc(ptr noundef %6, ptr noundef nonnull %73, i32 noundef %52) #10
  %95 = icmp ugt ptr %94, inttoptr (i32 -4096 to ptr)
  br i1 %95, label %103, label %96

96:                                               ; preds = %93
  %97 = getelementptr i8, ptr %2, i32 492
  %98 = load i32, ptr %97, align 4
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %124, label %100

100:                                              ; preds = %96
  %101 = getelementptr i8, ptr %2, i32 496
  %102 = getelementptr i8, ptr %2, i32 44
  br label %105

103:                                              ; preds = %93
  %104 = load ptr, ptr %5, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.17, ptr noundef %104) #12
  br label %161

105:                                              ; preds = %120, %100
  %106 = phi i32 [ %98, %100 ], [ %121, %120 ]
  %107 = phi i32 [ 0, %100 ], [ %122, %120 ]
  %108 = load ptr, ptr %101, align 8
  %109 = getelementptr %struct.resource, ptr %108, i32 %107, i32 2
  %110 = load ptr, ptr %109, align 4
  %111 = icmp eq ptr %110, null
  br i1 %111, label %112, label %120

112:                                              ; preds = %105
  %113 = load ptr, ptr %102, align 4
  %114 = icmp eq ptr %113, null
  br i1 %114, label %115, label %117

115:                                              ; preds = %112
  %116 = load ptr, ptr %2, align 4
  br label %117

117:                                              ; preds = %115, %112
  %118 = phi ptr [ %116, %115 ], [ %113, %112 ]
  store ptr %118, ptr %109, align 4
  %119 = load i32, ptr %97, align 4
  br label %120

120:                                              ; preds = %117, %105
  %121 = phi i32 [ %119, %117 ], [ %106, %105 ]
  %122 = add nuw i32 %107, 1
  %123 = icmp ult i32 %122, %121
  br i1 %123, label %105, label %124

124:                                              ; preds = %120, %96
  br i1 %68, label %160, label %125

125:                                              ; preds = %124
  call void @dev_pm_domain_set(ptr noundef %2, ptr noundef nonnull @omap_device_pm_domain) #10
  br i1 %90, label %126, label %160

126:                                              ; preds = %125
  %127 = icmp eq ptr %6, null
  br i1 %127, label %131, label %128

128:                                              ; preds = %126
  %129 = getelementptr i8, ptr %2, i32 512
  %130 = load ptr, ptr %129, align 8
  br label %131

131:                                              ; preds = %128, %126
  %132 = phi ptr [ %130, %128 ], [ null, %126 ]
  %133 = getelementptr inbounds %struct.omap_device, ptr %132, i32 0, i32 4
  %134 = load i8, ptr %133, align 1
  %135 = icmp eq i8 %134, 1
  br i1 %135, label %136, label %137

136:                                              ; preds = %131
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %2, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.omap_device_enable, i32 noundef 1) #12
  br label %158

137:                                              ; preds = %131
  %138 = getelementptr inbounds %struct.omap_device, ptr %132, i32 0, i32 3
  %139 = load i8, ptr %138, align 4
  %140 = icmp eq i8 %139, 0
  br i1 %140, label %157, label %141

141:                                              ; preds = %137
  %142 = getelementptr inbounds %struct.omap_device, ptr %132, i32 0, i32 1
  br label %143

143:                                              ; preds = %143, %141
  %144 = phi i32 [ 0, %141 ], [ %151, %143 ]
  %145 = phi i32 [ 0, %141 ], [ %150, %143 ]
  %146 = load ptr, ptr %142, align 4
  %147 = getelementptr ptr, ptr %146, i32 %144
  %148 = load ptr, ptr %147, align 4
  %149 = call i32 @omap_hwmod_enable(ptr noundef %148) #10
  %150 = or i32 %149, %145
  %151 = add nuw nsw i32 %144, 1
  %152 = load i8, ptr %138, align 4
  %153 = zext i8 %152 to i32
  %154 = icmp ult i32 %151, %153
  br i1 %154, label %143, label %155

155:                                              ; preds = %143
  %156 = icmp eq i32 %150, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %155, %137
  store i8 1, ptr %133, align 1
  br label %158

158:                                              ; preds = %157, %155, %136
  %159 = call i32 @__pm_runtime_set_status(ptr noundef %2, i32 noundef 0) #10
  br label %160

160:                                              ; preds = %158, %125, %124
  call void @kfree(ptr noundef nonnull %73) #10
  br i1 %56, label %163, label %162

161:                                              ; preds = %103, %82
  call void @kfree(ptr noundef nonnull %73) #10
  br label %162

162:                                              ; preds = %161, %160, %71, %67
  call void @dev_pm_domain_set(ptr noundef %2, ptr noundef nonnull @omap_device_fail_pm_domain) #10
  br label %163

163:                                              ; preds = %162, %160, %64, %51
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #10
  br label %164

164:                                              ; preds = %163, %47
  call void @omap_auxdata_legacy_init(ptr noundef %2) #10
  br label %165

165:                                              ; preds = %164, %3
  %166 = icmp eq ptr %6, null
  br i1 %166, label %173, label %167

167:                                              ; preds = %165
  %168 = getelementptr i8, ptr %2, i32 512
  %169 = load ptr, ptr %168, align 8
  %170 = icmp eq ptr %169, null
  br i1 %170, label %173, label %171

171:                                              ; preds = %167
  %172 = getelementptr inbounds %struct.omap_device, ptr %169, i32 0, i32 2
  store i32 %1, ptr %172, align 4
  br label %173

173:                                              ; preds = %171, %167, %165, %45, %41, %36, %32, %30, %29, %26, %22, %18, %16, %11, %7
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap_auxdata_legacy_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_hwmod_parse_module_range(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string_helper(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bus_for_each_dev(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @omap_device_late_idle(ptr noundef %0, ptr nocapture noundef readnone %1) #4 section ".init.text" {
  %3 = getelementptr i8, ptr %0, i32 -16
  %4 = icmp eq ptr %3, null
  br i1 %4, label %39, label %5

5:                                                ; preds = %2
  %6 = getelementptr i8, ptr %0, i32 512
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %39, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.omap_device, ptr %7, i32 0, i32 3
  %11 = load i8, ptr %10, align 4
  %12 = zext i8 %11 to i32
  %13 = icmp eq i8 %11, 0
  br i1 %13, label %28, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.omap_device, ptr %7, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  br label %20

17:                                               ; preds = %20
  %18 = add nuw nsw i32 %21, 1
  %19 = icmp eq i32 %18, %12
  br i1 %19, label %28, label %20

20:                                               ; preds = %17, %14
  %21 = phi i32 [ 0, %14 ], [ %18, %17 ]
  %22 = getelementptr ptr, ptr %16, i32 %21
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.omap_hwmod, ptr %23, i32 0, i32 18
  %25 = load i32, ptr %24, align 4
  %26 = and i32 %25, 8
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %17, label %39

28:                                               ; preds = %17, %9
  %29 = getelementptr inbounds %struct.omap_device, ptr %7, i32 0, i32 2
  %30 = load i32, ptr %29, align 4
  %31 = and i32 %30, -2
  %32 = icmp eq i32 %31, 4
  br i1 %32, label %39, label %33

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.omap_device, ptr %7, i32 0, i32 4
  %35 = load i8, ptr %34, align 1
  %36 = icmp eq i8 %35, 1
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.18, ptr noundef nonnull @__func__.omap_device_late_idle) #12
  %38 = tail call i32 @omap_device_idle(ptr noundef nonnull %3)
  br label %39

39:                                               ; preds = %37, %33, %28, %20, %5, %2
  ret i32 0
}

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(0) }

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
!9 = !{!"branch_weights", i32 1, i32 2000}
