; ModuleID = '/llk/IR/drivers/gpu/drm/drm_pci.c_pt.bc'
source_filename = "../drivers/gpu/drm/drm_pci.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_legacy_pci_init:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_legacy_pci_init\22\09\09\09\09\09"
module asm "__kstrtabns_drm_legacy_pci_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_legacy_pci_exit:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_legacy_pci_exit\22\09\09\09\09\09"
module asm "__kstrtabns_drm_legacy_pci_exit:\09\09\09\09\09"
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
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.anon.66 = type { i32, ptr }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
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
%struct.drm_master = type { %struct.kref, ptr, ptr, i32, %struct.idr, ptr, ptr, i32, %struct.list_head, %struct.list_head, %struct.idr, %struct.idr, %struct.drm_lock_data }
%struct.drm_lock_data = type { ptr, ptr, %struct.wait_queue_head, i32, %struct.spinlock, i32, i32, i32 }
%struct.drm_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.drm_irq_busid = type { i32, i32, i32, i32 }
%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, [2 x i8], ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, [4 x i8], i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [11 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [11 x ptr], [11 x ptr], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, [2 x i8], i32, i32, ptr, i32, [7 x i8], [5 x i8] }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%struct.drm_agp_head = type { %struct.agp_kern_info, %struct.list_head, i32, ptr, i32, i32, i32, i32, i32, i32 }
%struct.agp_kern_info = type { %struct.agp_version, ptr, i32, i32, i32, i32, i32, i32, i8, i32, ptr }
%struct.agp_version = type { i16, i16 }

@.str = private unnamed_addr constant [22 x i8] c"pci:%04x:%02x:%02x.%d\00", align 1
@pci_bus_type = external dso_local global %struct.bus_type, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"drivers/gpu/drm/drm_pci.c\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@__kstrtab_drm_legacy_pci_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_legacy_pci_init = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_legacy_pci_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_legacy_pci_init to i32), ptr @__kstrtab_drm_legacy_pci_init, ptr @__kstrtabns_drm_legacy_pci_init }, section "___ksymtab+drm_legacy_pci_init", align 4
@legacy_dev_list_lock = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @legacy_dev_list_lock, i64 12), ptr getelementptr (i8, ptr @legacy_dev_list_lock, i64 12) } }, align 4
@legacy_dev_list = internal global %struct.list_head { ptr @legacy_dev_list, ptr @legacy_dev_list }, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"\016[drm] Module unloaded\0A\00", align 1
@__kstrtab_drm_legacy_pci_exit = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_legacy_pci_exit = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_legacy_pci_exit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_legacy_pci_exit to i32), ptr @__kstrtab_drm_legacy_pci_exit, ptr @__kstrtabns_drm_legacy_pci_exit }, section "___ksymtab+drm_legacy_pci_exit", align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"%d:%d:%d => IRQ %d\0A\00", align 1
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_drm_legacy_pci_exit, ptr @__ksymtab_drm_legacy_pci_init], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_pci_set_busid(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = load i32, ptr %0, align 4
  %6 = icmp slt i32 %5, 65540
  %7 = getelementptr i8, ptr %4, i32 -128
  %8 = load ptr, ptr %7, align 8
  br i1 %6, label %12, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.pci_bus, ptr %8, i32 0, i32 16
  %11 = load i32, ptr %10, align 8
  br label %12

12:                                               ; preds = %9, %2
  %13 = phi i32 [ %11, %9 ], [ 0, %2 ]
  %14 = getelementptr inbounds %struct.pci_bus, ptr %8, i32 0, i32 12
  %15 = load i8, ptr %14, align 4
  %16 = zext i8 %15 to i32
  %17 = getelementptr i8, ptr %4, i32 -108
  %18 = load i32, ptr %17, align 4
  %19 = lshr i32 %18, 3
  %20 = and i32 %19, 31
  %21 = and i32 %18, 7
  %22 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str, i32 noundef %13, i32 noundef %16, i32 noundef %20, i32 noundef %21) #4
  %23 = getelementptr inbounds %struct.drm_master, ptr %1, i32 0, i32 2
  store ptr %22, ptr %23, align 4
  %24 = icmp eq ptr %22, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %12
  %26 = tail call i32 @strlen(ptr noundef nonnull %22)
  %27 = getelementptr inbounds %struct.drm_master, ptr %1, i32 0, i32 3
  store i32 %26, ptr %27, align 4
  br label %28

28:                                               ; preds = %25, %12
  %29 = phi i32 [ 0, %25 ], [ -12, %12 ]
  ret i32 %29
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_legacy_irq_by_busid(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef readnone %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.drm_driver, ptr %5, i32 0, i32 24
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 10
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, %7
  %11 = and i32 %10, 67108864
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %60, label %13

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.device, ptr %15, i32 0, i32 5
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, @pci_bus_type
  br i1 %18, label %20, label %19, !prof !8

19:                                               ; preds = %13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 114, i32 noundef 9, ptr noundef null) #4
  br label %60

20:                                               ; preds = %13
  %21 = and i32 %10, 1073741824
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %60, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.drm_irq_busid, ptr %1, i32 0, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = ashr i32 %25, 8
  %27 = load i32, ptr %0, align 4
  %28 = icmp slt i32 %27, 65540
  br i1 %28, label %34, label %29

29:                                               ; preds = %23
  %30 = getelementptr i8, ptr %15, i32 -128
  %31 = load ptr, ptr %30, align 8
  %32 = getelementptr inbounds %struct.pci_bus, ptr %31, i32 0, i32 16
  %33 = load i32, ptr %32, align 8
  br label %34

34:                                               ; preds = %29, %23
  %35 = phi i32 [ %33, %29 ], [ 0, %23 ]
  %36 = icmp eq i32 %26, %35
  br i1 %36, label %37, label %60

37:                                               ; preds = %34
  %38 = getelementptr i8, ptr %15, i32 -128
  %39 = load ptr, ptr %38, align 8
  %40 = getelementptr inbounds %struct.pci_bus, ptr %39, i32 0, i32 12
  %41 = load i8, ptr %40, align 4
  %42 = trunc i32 %25 to i8
  %43 = icmp eq i8 %41, %42
  br i1 %43, label %44, label %60

44:                                               ; preds = %37
  %45 = getelementptr inbounds %struct.drm_irq_busid, ptr %1, i32 0, i32 2
  %46 = load i32, ptr %45, align 4
  %47 = getelementptr i8, ptr %15, i32 -108
  %48 = load i32, ptr %47, align 4
  %49 = lshr i32 %48, 3
  %50 = and i32 %49, 31
  %51 = icmp eq i32 %46, %50
  br i1 %51, label %52, label %60

52:                                               ; preds = %44
  %53 = getelementptr inbounds %struct.drm_irq_busid, ptr %1, i32 0, i32 3
  %54 = load i32, ptr %53, align 4
  %55 = and i32 %48, 7
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = getelementptr i8, ptr %15, i32 476
  %59 = load i32, ptr %58, align 4
  store i32 %59, ptr %1, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.4, i32 noundef %25, i32 noundef %46, i32 noundef %54, i32 noundef %59) #4
  br label %60

60:                                               ; preds = %57, %52, %44, %37, %34, %20, %19, %3
  %61 = phi i32 [ -22, %19 ], [ -95, %3 ], [ -95, %20 ], [ 0, %57 ], [ -22, %52 ], [ -22, %44 ], [ -22, %37 ], [ -22, %34 ]
  ret i32 %61
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_legacy_pci_agp_destroy(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 38
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @kfree(ptr noundef nonnull %3) #4
  store ptr null, ptr %2, align 4
  br label %6

6:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_legacy_pci_init(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.2) #4
  %3 = getelementptr inbounds %struct.drm_driver, ptr %0, i32 0, i32 24
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 67108864
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %12, label %7, !prof !9

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.pci_driver, ptr %1, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %105, label %13

12:                                               ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 208, i32 noundef 9, ptr noundef null) #4
  br label %105

13:                                               ; preds = %99, %7
  %14 = phi i32 [ %103, %99 ], [ %10, %7 ]
  %15 = phi ptr [ %102, %99 ], [ %9, %7 ]
  %16 = phi ptr [ %101, %99 ], [ %9, %7 ]
  %17 = phi i32 [ %100, %99 ], [ 0, %7 ]
  %18 = getelementptr %struct.pci_device_id, ptr %16, i32 %17, i32 1
  %19 = getelementptr %struct.pci_device_id, ptr %16, i32 %17, i32 2
  %20 = getelementptr %struct.pci_device_id, ptr %16, i32 %17, i32 3
  %21 = load i32, ptr %18, align 4
  %22 = load i32, ptr %19, align 4
  %23 = load i32, ptr %20, align 4
  %24 = tail call ptr @pci_get_subsys(i32 noundef %14, i32 noundef %21, i32 noundef %22, i32 noundef %23, ptr noundef null) #4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %99, label %26

26:                                               ; preds = %13
  %27 = getelementptr %struct.pci_device_id, ptr %16, i32 %17, i32 5
  %28 = getelementptr %struct.pci_device_id, ptr %16, i32 %17, i32 4
  %29 = getelementptr %struct.pci_device_id, ptr %16, i32 %17, i32 6
  br label %30

30:                                               ; preds = %92, %26
  %31 = phi ptr [ %24, %26 ], [ %97, %92 ]
  %32 = getelementptr inbounds %struct.pci_dev, ptr %31, i32 0, i32 11
  %33 = load i32, ptr %32, align 8
  %34 = load i32, ptr %27, align 4
  %35 = and i32 %34, %33
  %36 = load i32, ptr %28, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %92

38:                                               ; preds = %30
  %39 = tail call ptr @pci_dev_get(ptr noundef nonnull %31) #4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.2) #4
  %40 = getelementptr inbounds %struct.pci_dev, ptr %31, i32 0, i32 44
  %41 = tail call ptr @drm_dev_alloc(ptr noundef %0, ptr noundef %40) #4
  %42 = icmp ugt ptr %41, inttoptr (i32 -4096 to ptr)
  br i1 %42, label %92, label %43

43:                                               ; preds = %38
  %44 = tail call i32 @pci_enable_device(ptr noundef nonnull %31) #4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %91

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.drm_device, ptr %41, i32 0, i32 4
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.drm_driver, ptr %48, i32 0, i32 24
  %50 = load i32, ptr %49, align 4
  %51 = getelementptr inbounds %struct.drm_device, ptr %41, i32 0, i32 10
  %52 = load i32, ptr %51, align 4
  %53 = and i32 %50, 33554432
  %54 = and i32 %53, %52
  %55 = icmp eq i32 %54, 33554432
  br i1 %55, label %56, label %69

56:                                               ; preds = %46
  %57 = getelementptr inbounds %struct.drm_device, ptr %41, i32 0, i32 2
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr i8, ptr %58, i32 -136
  %60 = tail call zeroext i8 @pci_find_capability(ptr noundef %59, i32 noundef 2) #4
  %61 = icmp eq i8 %60, 0
  %62 = getelementptr inbounds %struct.drm_device, ptr %41, i32 0, i32 38
  br i1 %61, label %64, label %63

63:                                               ; preds = %56
  store ptr null, ptr %62, align 4
  br label %69

64:                                               ; preds = %56
  %65 = load ptr, ptr %62, align 4
  %66 = icmp eq ptr %65, null
  br i1 %66, label %69, label %67

67:                                               ; preds = %64
  %68 = getelementptr inbounds %struct.drm_agp_head, ptr %65, i32 0, i32 7
  store i32 0, ptr %68, align 4
  br label %69

69:                                               ; preds = %67, %64, %63, %46
  %70 = load i32, ptr %29, align 4
  %71 = tail call i32 @drm_dev_register(ptr noundef %41, i32 noundef %70) #4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %85

73:                                               ; preds = %69
  %74 = load ptr, ptr %47, align 4
  %75 = getelementptr inbounds %struct.drm_driver, ptr %74, i32 0, i32 24
  %76 = load i32, ptr %75, align 4
  %77 = load i32, ptr %51, align 4
  %78 = and i32 %76, 67108864
  %79 = and i32 %78, %77
  %80 = icmp eq i32 %79, 67108864
  br i1 %80, label %81, label %92

81:                                               ; preds = %73
  tail call void @mutex_lock(ptr noundef nonnull @legacy_dev_list_lock) #4
  %82 = getelementptr inbounds %struct.drm_device, ptr %41, i32 0, i32 37
  %83 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @legacy_dev_list, i32 0, i32 1), align 4
  store ptr %82, ptr getelementptr inbounds (%struct.list_head, ptr @legacy_dev_list, i32 0, i32 1), align 4
  store ptr @legacy_dev_list, ptr %82, align 4
  %84 = getelementptr inbounds %struct.drm_device, ptr %41, i32 0, i32 37, i32 1
  store ptr %83, ptr %84, align 4
  store volatile ptr %82, ptr %83, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @legacy_dev_list_lock) #4
  br label %92

85:                                               ; preds = %69
  %86 = getelementptr inbounds %struct.drm_device, ptr %41, i32 0, i32 38
  %87 = load ptr, ptr %86, align 4
  %88 = icmp eq ptr %87, null
  br i1 %88, label %90, label %89

89:                                               ; preds = %85
  tail call void @kfree(ptr noundef nonnull %87) #4
  store ptr null, ptr %86, align 4
  br label %90

90:                                               ; preds = %89, %85
  tail call void @pci_disable_device(ptr noundef nonnull %31) #4
  br label %91

91:                                               ; preds = %90, %43
  tail call void @drm_dev_put(ptr noundef %41) #4
  br label %92

92:                                               ; preds = %91, %81, %73, %38, %30
  %93 = load i32, ptr %15, align 4
  %94 = load i32, ptr %18, align 4
  %95 = load i32, ptr %19, align 4
  %96 = load i32, ptr %20, align 4
  %97 = tail call ptr @pci_get_subsys(i32 noundef %93, i32 noundef %94, i32 noundef %95, i32 noundef %96, ptr noundef nonnull %31) #4
  %98 = icmp eq ptr %97, null
  br i1 %98, label %99, label %30

99:                                               ; preds = %92, %13
  %100 = add i32 %17, 1
  %101 = load ptr, ptr %8, align 4
  %102 = getelementptr %struct.pci_device_id, ptr %101, i32 %100
  %103 = load i32, ptr %102, align 4
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %13

105:                                              ; preds = %99, %12, %7
  %106 = phi i32 [ -22, %12 ], [ 0, %7 ], [ 0, %99 ]
  ret i32 %106
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_get_subsys(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_dev_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_legacy_pci_exit(ptr noundef readonly %0, ptr nocapture readnone %1) #0 {
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.2) #4
  %3 = getelementptr inbounds %struct.drm_driver, ptr %0, i32 0, i32 24
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 67108864
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 253, i32 noundef 9, ptr noundef null) #4
  br label %25

8:                                                ; preds = %2
  tail call void @mutex_lock(ptr noundef nonnull @legacy_dev_list_lock) #4
  %9 = load ptr, ptr @legacy_dev_list, align 4
  %10 = icmp eq ptr %9, @legacy_dev_list
  br i1 %10, label %24, label %11

11:                                               ; preds = %22, %8
  %12 = phi ptr [ %13, %22 ], [ %9, %8 ]
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr i8, ptr %12, i32 -848
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, %0
  br i1 %16, label %17, label %22

17:                                               ; preds = %11
  %18 = getelementptr i8, ptr %12, i32 -876
  %19 = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  store ptr %20, ptr %21, align 4
  store volatile ptr %13, ptr %20, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %12, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %19, align 4
  tail call void @drm_put_dev(ptr noundef %18) #4
  br label %22

22:                                               ; preds = %17, %11
  %23 = icmp eq ptr %13, @legacy_dev_list
  br i1 %23, label %24, label %11

24:                                               ; preds = %22, %8
  tail call void @mutex_unlock(ptr noundef nonnull @legacy_dev_list_lock) #4
  br label %25

25:                                               ; preds = %24, %7
  %26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_put_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_dev_alloc(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dev_register(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @pci_find_capability(ptr noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
!8 = !{!"branch_weights", i32 2000, i32 1}
!9 = !{!"branch_weights", i32 1, i32 2000}
