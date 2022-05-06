; ModuleID = '/llk/IR/drivers/gpu/drm/drm_aperture.c_pt.bc'
source_filename = "../drivers/gpu/drm/drm_aperture.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_aperture_acquire_from_firmware:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_aperture_acquire_from_firmware\22\09\09\09\09\09"
module asm "__kstrtabns_devm_aperture_acquire_from_firmware:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_aperture_remove_conflicting_framebuffers:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_aperture_remove_conflicting_framebuffers\22\09\09\09\09\09"
module asm "__kstrtabns_drm_aperture_remove_conflicting_framebuffers:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_aperture_remove_conflicting_pci_framebuffers:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_aperture_remove_conflicting_pci_framebuffers\22\09\09\09\09\09"
module asm "__kstrtabns_drm_aperture_remove_conflicting_pci_framebuffers:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type {}
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.65, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.70, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.65 = type { %struct.list_head, ptr, %struct.spinlock }
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
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.anon.70 = type { i32, ptr }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.drm_aperture = type { ptr, i32, i32, %struct.list_head, ptr }
%struct.apertures_struct = type { i32, [0 x %struct.aperture] }
%struct.aperture = type { i32, i32 }
%struct.drm_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, [2 x i8], ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, [4 x i8], i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [11 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [11 x ptr], [11 x ptr], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, [2 x i8], i32, i32, ptr, i32, [7 x i8], [5 x i8] }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }

@platform_bus_type = external dso_local global %struct.bus_type, align 4
@.str = private unnamed_addr constant [31 x i8] c"drivers/gpu/drm/drm_aperture.c\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"%s %s: %s\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"drm_WARN_ON(!((dev->dev)->bus == &platform_bus_type))\00", align 1
@__kstrtab_devm_aperture_acquire_from_firmware = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_aperture_acquire_from_firmware = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_aperture_acquire_from_firmware = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_aperture_acquire_from_firmware to i32), ptr @__kstrtab_devm_aperture_acquire_from_firmware, ptr @__kstrtabns_devm_aperture_acquire_from_firmware }, section "___ksymtab+devm_aperture_acquire_from_firmware", align 4
@__kstrtab_drm_aperture_remove_conflicting_framebuffers = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_aperture_remove_conflicting_framebuffers = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_aperture_remove_conflicting_framebuffers = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_aperture_remove_conflicting_framebuffers to i32), ptr @__kstrtab_drm_aperture_remove_conflicting_framebuffers, ptr @__kstrtabns_drm_aperture_remove_conflicting_framebuffers }, section "___ksymtab+drm_aperture_remove_conflicting_framebuffers", align 4
@__kstrtab_drm_aperture_remove_conflicting_pci_framebuffers = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_aperture_remove_conflicting_pci_framebuffers = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_aperture_remove_conflicting_pci_framebuffers = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_aperture_remove_conflicting_pci_framebuffers to i32), ptr @__kstrtab_drm_aperture_remove_conflicting_pci_framebuffers, ptr @__kstrtabns_drm_aperture_remove_conflicting_pci_framebuffers }, section "___ksymtab+drm_aperture_remove_conflicting_pci_framebuffers", align 4
@drm_apertures_lock = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @drm_apertures_lock, i64 12), ptr getelementptr (i8, ptr @drm_apertures_lock, i64 12) } }, align 4
@drm_apertures = internal global %struct.list_head { ptr @drm_apertures, ptr @drm_apertures }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@drm_aperture_detach_drivers.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__ksymtab_devm_aperture_acquire_from_firmware, ptr @__ksymtab_drm_aperture_remove_conflicting_framebuffers, ptr @__ksymtab_drm_aperture_remove_conflicting_pci_framebuffers], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @devm_aperture_acquire_from_firmware(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, @platform_bus_type
  br i1 %8, label %19, label %9, !prof !8

9:                                                ; preds = %3
  %10 = tail call ptr @dev_driver_string(ptr noundef %5) #3
  %11 = load ptr, ptr %4, align 4
  %12 = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %9
  %16 = load ptr, ptr %11, align 4
  br label %17

17:                                               ; preds = %15, %9
  %18 = phi ptr [ %16, %15 ], [ %13, %9 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 242, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %10, ptr noundef %18, ptr noundef nonnull @.str.2) #3
  br label %58

19:                                               ; preds = %3
  %20 = add i32 %2, %1
  tail call void @mutex_lock(ptr noundef nonnull @drm_apertures_lock) #3
  br label %21

21:                                               ; preds = %25, %19
  %22 = phi ptr [ @drm_apertures, %19 ], [ %23, %25 ]
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, @drm_apertures
  br i1 %24, label %34, label %25

25:                                               ; preds = %21
  %26 = getelementptr i8, ptr %23, i32 -8
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr i8, ptr %23, i32 -4
  %29 = load i32, ptr %28, align 4
  %30 = add i32 %29, %27
  %31 = icmp ugt i32 %30, %1
  %32 = icmp ugt i32 %20, %27
  %33 = and i1 %32, %31
  br i1 %33, label %56, label %21

34:                                               ; preds = %21
  %35 = load ptr, ptr %4, align 4
  %36 = tail call noalias ptr @devm_kmalloc(ptr noundef %35, i32 noundef 24, i32 noundef 3520) #3
  %37 = icmp eq ptr %36, null
  br i1 %37, label %56, label %38

38:                                               ; preds = %34
  store ptr %0, ptr %36, align 4
  %39 = getelementptr inbounds %struct.drm_aperture, ptr %36, i32 0, i32 1
  store i32 %1, ptr %39, align 4
  %40 = getelementptr inbounds %struct.drm_aperture, ptr %36, i32 0, i32 2
  store i32 %2, ptr %40, align 4
  %41 = getelementptr inbounds %struct.drm_aperture, ptr %36, i32 0, i32 4
  store ptr @drm_aperture_detach_firmware, ptr %41, align 4
  %42 = getelementptr inbounds %struct.drm_aperture, ptr %36, i32 0, i32 3
  store volatile ptr %42, ptr %42, align 4
  %43 = getelementptr inbounds %struct.drm_aperture, ptr %36, i32 0, i32 3, i32 1
  %44 = load ptr, ptr @drm_apertures, align 4
  %45 = getelementptr inbounds %struct.list_head, ptr %44, i32 0, i32 1
  store ptr %42, ptr %45, align 4
  store ptr %44, ptr %42, align 4
  store ptr @drm_apertures, ptr %43, align 4
  store volatile ptr %42, ptr @drm_apertures, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @drm_apertures_lock) #3
  %46 = load ptr, ptr %4, align 4
  %47 = tail call i32 @devm_add_action(ptr noundef %46, ptr noundef nonnull @devm_aperture_acquire_release, ptr noundef nonnull %36) #3
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %58, label %49

49:                                               ; preds = %38
  %50 = load ptr, ptr %36, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %58, label %52

52:                                               ; preds = %49
  tail call void @mutex_lock(ptr noundef nonnull @drm_apertures_lock) #3
  %53 = load ptr, ptr %43, align 4
  %54 = load ptr, ptr %42, align 4
  %55 = getelementptr inbounds %struct.list_head, ptr %54, i32 0, i32 1
  store ptr %53, ptr %55, align 4
  store volatile ptr %54, ptr %53, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %42, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %43, align 4
  br label %56

56:                                               ; preds = %52, %34, %25
  %57 = phi i32 [ %47, %52 ], [ -12, %34 ], [ -16, %25 ]
  tail call void @mutex_unlock(ptr noundef nonnull @drm_apertures_lock) #3
  br label %58

58:                                               ; preds = %56, %49, %38, %17
  %59 = phi i32 [ -22, %17 ], [ 0, %38 ], [ %47, %49 ], [ %57, %56 ]
  ret i32 %59
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @drm_aperture_detach_firmware(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 -16
  tail call void @platform_device_unregister(ptr noundef %4) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_aperture_remove_conflicting_framebuffers(i32 noundef %0, i32 noundef %1, i1 noundef zeroext %2, ptr nocapture noundef readonly %3) #0 {
  %5 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 12) #4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %4
  store i32 1, ptr %6, align 8
  %9 = getelementptr inbounds %struct.apertures_struct, ptr %6, i32 0, i32 1
  store i32 %0, ptr %9, align 4
  %10 = getelementptr inbounds %struct.apertures_struct, ptr %6, i32 2
  store i32 %1, ptr %10, align 8
  %11 = getelementptr inbounds %struct.drm_driver, ptr %3, i32 0, i32 21
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 @remove_conflicting_framebuffers(ptr noundef nonnull %6, ptr noundef %12, i1 noundef zeroext %2) #3
  tail call void @kfree(ptr noundef nonnull %6) #3
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %8
  tail call fastcc void @drm_aperture_detach_drivers(i32 noundef %0, i32 noundef %1)
  br label %16

16:                                               ; preds = %15, %8, %4
  %17 = phi i32 [ 0, %15 ], [ %13, %8 ], [ -12, %4 ]
  ret i32 %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @remove_conflicting_framebuffers(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @drm_aperture_detach_drivers(i32 noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = add i32 %1, %0
  tail call void @mutex_lock(ptr noundef nonnull @drm_apertures_lock) #3
  %4 = load ptr, ptr @drm_apertures, align 4
  %5 = icmp eq ptr %4, @drm_apertures
  br i1 %5, label %35, label %6

6:                                                ; preds = %33, %2
  %7 = phi ptr [ %8, %33 ], [ %4, %2 ]
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %7, i32 -12
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  %12 = load i1, ptr @drm_aperture_detach_drivers.__already_done, align 1
  %13 = xor i1 %12, true
  %14 = select i1 %11, i1 %13, i1 false
  br i1 %14, label %15, label %16, !prof !9

15:                                               ; preds = %6
  store i1 true, ptr @drm_aperture_detach_drivers.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 261, i32 noundef 9, ptr noundef null) #3
  br label %16

16:                                               ; preds = %15, %6
  br i1 %11, label %33, label %17

17:                                               ; preds = %16
  %18 = getelementptr i8, ptr %7, i32 -8
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr i8, ptr %7, i32 -4
  %21 = load i32, ptr %20, align 4
  %22 = add i32 %21, %19
  %23 = icmp ugt i32 %22, %0
  %24 = icmp ugt i32 %3, %19
  %25 = and i1 %24, %23
  br i1 %25, label %26, label %33

26:                                               ; preds = %17
  store ptr null, ptr %9, align 4
  %27 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = load ptr, ptr %7, align 4
  %30 = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  store ptr %28, ptr %30, align 4
  store volatile ptr %29, ptr %28, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %7, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %27, align 4
  %31 = getelementptr i8, ptr %7, i32 8
  %32 = load ptr, ptr %31, align 4
  tail call void %32(ptr noundef nonnull %10) #3
  br label %33

33:                                               ; preds = %26, %17, %16
  %34 = icmp eq ptr %8, @drm_apertures
  br i1 %34, label %35, label %6

35:                                               ; preds = %33, %2
  tail call void @mutex_unlock(ptr noundef nonnull @drm_apertures_lock) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_aperture_remove_conflicting_pci_framebuffers(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 0, i32 3
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 512
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %16, label %7

7:                                                ; preds = %2
  %8 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 0
  %9 = load i32, ptr %8, align 8
  %10 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  %13 = sub i32 1, %9
  %14 = add i32 %13, %11
  %15 = select i1 %12, i32 0, i32 %14
  tail call fastcc void @drm_aperture_detach_drivers(i32 noundef %9, i32 noundef %15)
  br label %16

16:                                               ; preds = %7, %2
  %17 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 1, i32 3
  %18 = load i32, ptr %17, align 4
  %19 = and i32 %18, 512
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %30, label %21

21:                                               ; preds = %16
  %22 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 1
  %23 = load i32, ptr %22, align 8
  %24 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 1, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 0
  %27 = sub i32 1, %23
  %28 = add i32 %27, %25
  %29 = select i1 %26, i32 0, i32 %28
  tail call fastcc void @drm_aperture_detach_drivers(i32 noundef %23, i32 noundef %29)
  br label %30

30:                                               ; preds = %21, %16
  %31 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 2, i32 3
  %32 = load i32, ptr %31, align 4
  %33 = and i32 %32, 512
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %44, label %35

35:                                               ; preds = %30
  %36 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 2
  %37 = load i32, ptr %36, align 8
  %38 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 2, i32 1
  %39 = load i32, ptr %38, align 4
  %40 = icmp eq i32 %39, 0
  %41 = sub i32 1, %37
  %42 = add i32 %41, %39
  %43 = select i1 %40, i32 0, i32 %42
  tail call fastcc void @drm_aperture_detach_drivers(i32 noundef %37, i32 noundef %43)
  br label %44

44:                                               ; preds = %35, %30
  %45 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 3, i32 3
  %46 = load i32, ptr %45, align 4
  %47 = and i32 %46, 512
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %58, label %49

49:                                               ; preds = %44
  %50 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 3
  %51 = load i32, ptr %50, align 8
  %52 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 3, i32 1
  %53 = load i32, ptr %52, align 4
  %54 = icmp eq i32 %53, 0
  %55 = sub i32 1, %51
  %56 = add i32 %55, %53
  %57 = select i1 %54, i32 0, i32 %56
  tail call fastcc void @drm_aperture_detach_drivers(i32 noundef %51, i32 noundef %57)
  br label %58

58:                                               ; preds = %49, %44
  %59 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 4, i32 3
  %60 = load i32, ptr %59, align 4
  %61 = and i32 %60, 512
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %72, label %63

63:                                               ; preds = %58
  %64 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 4
  %65 = load i32, ptr %64, align 8
  %66 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 4, i32 1
  %67 = load i32, ptr %66, align 4
  %68 = icmp eq i32 %67, 0
  %69 = sub i32 1, %65
  %70 = add i32 %69, %67
  %71 = select i1 %68, i32 0, i32 %70
  tail call fastcc void @drm_aperture_detach_drivers(i32 noundef %65, i32 noundef %71)
  br label %72

72:                                               ; preds = %63, %58
  %73 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 5, i32 3
  %74 = load i32, ptr %73, align 4
  %75 = and i32 %74, 512
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %86, label %77

77:                                               ; preds = %72
  %78 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 5
  %79 = load i32, ptr %78, align 8
  %80 = getelementptr %struct.pci_dev, ptr %0, i32 0, i32 47, i32 5, i32 1
  %81 = load i32, ptr %80, align 4
  %82 = icmp eq i32 %81, 0
  %83 = sub i32 1, %79
  %84 = add i32 %83, %81
  %85 = select i1 %82, i32 0, i32 %84
  tail call fastcc void @drm_aperture_detach_drivers(i32 noundef %79, i32 noundef %85)
  br label %86

86:                                               ; preds = %77, %72
  %87 = getelementptr inbounds %struct.drm_driver, ptr %1, i32 0, i32 21
  %88 = load ptr, ptr %87, align 4
  %89 = tail call i32 @remove_conflicting_pci_framebuffers(ptr noundef %0, ptr noundef %88) #3
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %86
  %92 = tail call i32 @vga_remove_vgacon(ptr noundef %0) #3
  br label %93

93:                                               ; preds = %91, %86
  %94 = phi i32 [ %92, %91 ], [ %89, %86 ]
  ret i32 %94
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @remove_conflicting_pci_framebuffers(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vga_remove_vgacon(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @devm_aperture_acquire_release(ptr nocapture noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %1
  tail call void @mutex_lock(ptr noundef nonnull @drm_apertures_lock) #3
  %5 = getelementptr inbounds %struct.drm_aperture, ptr %0, i32 0, i32 3
  %6 = getelementptr inbounds %struct.drm_aperture, ptr %0, i32 0, i32 3, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %5, align 4
  %9 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  store ptr %7, ptr %9, align 4
  store volatile ptr %8, ptr %7, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %5, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %6, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @drm_apertures_lock) #3
  br label %10

10:                                               ; preds = %4, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind allocsize(2) }

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
!8 = !{!"branch_weights", i32 2000, i32 1}
!9 = !{!"branch_weights", i32 1, i32 2000}
