; ModuleID = '/llk/IR/drivers/gpu/drm/drm_irq.c_pt.bc'
source_filename = "../drivers/gpu/drm/drm_irq.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_legacy_irq_uninstall:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_legacy_irq_uninstall\22\09\09\09\09\09"
module asm "__kstrtabns_drm_legacy_irq_uninstall:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type {}
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.61, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.66, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.61 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
%struct.anon.66 = type { i32, ptr }
%struct.drm_vblank_crtc = type { ptr, %struct.wait_queue_head, %struct.timer_list, %struct.seqlock_t, %struct.atomic64_t, i64, %struct.atomic_t, i32, i32, i32, i32, i32, i32, %struct.drm_display_mode, i8, ptr, %struct.list_head, %struct.wait_queue_head }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.atomic64_t = type { i64 }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.drm_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
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
%struct.drm_control = type { i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"drivers/gpu/drm/drm_irq.c\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"irq=%d\0A\00", align 1
@__kstrtab_drm_legacy_irq_uninstall = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_legacy_irq_uninstall = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_legacy_irq_uninstall = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_legacy_irq_uninstall to i32), ptr @__kstrtab_drm_legacy_irq_uninstall, ptr @__kstrtabns_drm_legacy_irq_uninstall }, section "___ksymtab+drm_legacy_irq_uninstall", align 4
@pci_bus_type = external dso_local global %struct.bus_type, align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_drm_legacy_irq_uninstall], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_legacy_irq_uninstall(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 55
  %3 = load i8, ptr %2, align 4, !range !8
  %4 = icmp eq i8 %3, 0
  store i8 0, ptr %2, align 4
  %5 = tail call zeroext i1 @drm_dev_has_vblank(ptr noundef %0) #2
  br i1 %5, label %6, label %40

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 25
  %8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #2
  %9 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 29
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %39, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 23
  %14 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 4
  %15 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 10
  br label %16

16:                                               ; preds = %35, %12
  %17 = phi i32 [ %10, %12 ], [ %36, %35 ]
  %18 = phi i32 [ 0, %12 ], [ %37, %35 ]
  %19 = load ptr, ptr %13, align 4
  %20 = getelementptr %struct.drm_vblank_crtc, ptr %19, i32 %18, i32 14
  %21 = load i8, ptr %20, align 4, !range !8
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %35, label %23

23:                                               ; preds = %16
  %24 = load ptr, ptr %14, align 4
  %25 = getelementptr inbounds %struct.drm_driver, ptr %24, i32 0, i32 24
  %26 = load i32, ptr %25, align 4
  %27 = load i32, ptr %15, align 4
  %28 = and i32 %26, 2
  %29 = and i32 %28, %27
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %31, label %32, !prof !9

31:                                               ; preds = %23
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 138, i32 noundef 9, ptr noundef null) #2
  br label %32

32:                                               ; preds = %31, %23
  tail call void @drm_vblank_disable_and_save(ptr noundef %0, i32 noundef %18) #2
  %33 = getelementptr %struct.drm_vblank_crtc, ptr %19, i32 %18, i32 1
  tail call void @__wake_up(ptr noundef %33, i32 noundef 3, i32 noundef 1, ptr noundef null) #2
  %34 = load i32, ptr %9, align 4
  br label %35

35:                                               ; preds = %32, %16
  %36 = phi i32 [ %17, %16 ], [ %34, %32 ]
  %37 = add nuw i32 %18, 1
  %38 = icmp ult i32 %37, %36
  br i1 %38, label %16, label %39

39:                                               ; preds = %35, %6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %8) #2
  br label %40

40:                                               ; preds = %39, %1
  br i1 %4, label %68, label %41

41:                                               ; preds = %40
  %42 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 56
  %43 = load i32, ptr %42, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef %43) #2
  %44 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 4
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.drm_driver, ptr %45, i32 0, i32 24
  %47 = load i32, ptr %46, align 4
  %48 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 10
  %49 = load i32, ptr %48, align 4
  %50 = and i32 %47, 67108864
  %51 = and i32 %50, %49
  %52 = icmp eq i32 %51, 67108864
  br i1 %52, label %53, label %59

53:                                               ; preds = %41
  %54 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 2
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr i8, ptr %55, i32 -136
  %57 = tail call i32 @vga_client_register(ptr noundef %56, ptr noundef null) #2
  %58 = load ptr, ptr %44, align 4
  br label %59

59:                                               ; preds = %53, %41
  %60 = phi ptr [ %58, %53 ], [ %45, %41 ]
  %61 = getelementptr inbounds %struct.drm_driver, ptr %60, i32 0, i32 36
  %62 = load ptr, ptr %61, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %65, label %64

64:                                               ; preds = %59
  tail call void %62(ptr noundef %0) #2
  br label %65

65:                                               ; preds = %64, %59
  %66 = load i32, ptr %42, align 4
  %67 = tail call ptr @free_irq(i32 noundef %66, ptr noundef %0) #2
  br label %68

68:                                               ; preds = %65, %40
  %69 = phi i32 [ 0, %65 ], [ -22, %40 ]
  ret i32 %69
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_dev_has_vblank(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_vblank_disable_and_save(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_legacy_irq_control(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.drm_driver, ptr %5, i32 0, i32 24
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 10
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, %7
  %11 = and i32 %10, 1140850688
  %12 = icmp eq i32 %11, 1140850688
  br i1 %12, label %13, label %89

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.device, ptr %15, i32 0, i32 5
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, @pci_bus_type
  br i1 %18, label %20, label %19, !prof !10

19:                                               ; preds = %13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 179, i32 noundef 9, ptr noundef null) #2
  br label %89

20:                                               ; preds = %13
  %21 = load i32, ptr %1, align 4
  switch i32 %21, label %89 [
    i32 2, label %22
    i32 3, label %86
  ]

22:                                               ; preds = %20
  %23 = getelementptr i8, ptr %15, i32 476
  %24 = load i32, ptr %23, align 4
  %25 = load i32, ptr %0, align 4
  %26 = icmp slt i32 %25, 65538
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.drm_control, ptr %1, i32 0, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %29, %24
  br i1 %30, label %31, label %89

31:                                               ; preds = %27, %22
  %32 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 14
  tail call void @mutex_lock(ptr noundef %32) #2
  %33 = icmp eq i32 %24, 0
  br i1 %33, label %84, label %34

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 55
  %36 = load i8, ptr %35, align 4, !range !8
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %38, label %84

38:                                               ; preds = %34
  store i8 1, ptr %35, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef %24) #2
  %39 = load ptr, ptr %4, align 4
  %40 = getelementptr inbounds %struct.drm_driver, ptr %39, i32 0, i32 34
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %45, label %43

43:                                               ; preds = %38
  tail call void %41(ptr noundef %0) #2
  %44 = load ptr, ptr %4, align 4
  br label %45

45:                                               ; preds = %43, %38
  %46 = phi ptr [ %44, %43 ], [ %39, %38 ]
  %47 = load ptr, ptr %14, align 4
  %48 = getelementptr inbounds %struct.device, ptr %47, i32 0, i32 5
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, @pci_bus_type
  %51 = select i1 %50, i32 128, i32 0
  %52 = getelementptr inbounds %struct.drm_driver, ptr %46, i32 0, i32 33
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.drm_driver, ptr %46, i32 0, i32 21
  %55 = load ptr, ptr %54, align 4
  %56 = tail call i32 @request_threaded_irq(i32 noundef %24, ptr noundef %53, ptr noundef null, i32 noundef %51, ptr noundef %55, ptr noundef %0) #2
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %45
  store i8 0, ptr %35, align 4
  br label %84

59:                                               ; preds = %45
  %60 = load ptr, ptr %4, align 4
  %61 = getelementptr inbounds %struct.drm_driver, ptr %60, i32 0, i32 35
  %62 = load ptr, ptr %61, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %81, label %64

64:                                               ; preds = %59
  %65 = tail call i32 %62(ptr noundef %0) #2
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %81

67:                                               ; preds = %64
  store i8 0, ptr %35, align 4
  %68 = load ptr, ptr %4, align 4
  %69 = getelementptr inbounds %struct.drm_driver, ptr %68, i32 0, i32 24
  %70 = load i32, ptr %69, align 4
  %71 = load i32, ptr %8, align 4
  %72 = and i32 %70, 67108864
  %73 = and i32 %72, %71
  %74 = icmp eq i32 %73, 67108864
  br i1 %74, label %75, label %79

75:                                               ; preds = %67
  %76 = load ptr, ptr %14, align 4
  %77 = getelementptr i8, ptr %76, i32 -136
  %78 = tail call i32 @vga_client_register(ptr noundef %77, ptr noundef null) #2
  br label %79

79:                                               ; preds = %75, %67
  %80 = tail call ptr @free_irq(i32 noundef %24, ptr noundef %0) #2
  br label %84

81:                                               ; preds = %64, %59
  %82 = phi i32 [ %65, %64 ], [ %56, %59 ]
  %83 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 56
  store i32 %24, ptr %83, align 4
  br label %84

84:                                               ; preds = %81, %79, %58, %34, %31
  %85 = phi i32 [ %56, %58 ], [ -22, %31 ], [ -16, %34 ], [ %82, %81 ], [ %65, %79 ]
  tail call void @mutex_unlock(ptr noundef %32) #2
  br label %89

86:                                               ; preds = %20
  %87 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 14
  tail call void @mutex_lock(ptr noundef %87) #2
  %88 = tail call i32 @drm_legacy_irq_uninstall(ptr noundef %0)
  tail call void @mutex_unlock(ptr noundef %87) #2
  br label %89

89:                                               ; preds = %86, %84, %27, %20, %19, %3
  %90 = phi i32 [ -22, %19 ], [ %88, %86 ], [ %85, %84 ], [ 0, %3 ], [ -22, %27 ], [ -22, %20 ]
  ret i32 %90
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vga_client_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }

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
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{!"branch_weights", i32 2000, i32 1}
