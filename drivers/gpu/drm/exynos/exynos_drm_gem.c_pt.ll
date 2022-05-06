; ModuleID = '/llk/IR/drivers/gpu/drm/exynos/exynos_drm_gem.c_pt.bc'
source_filename = "../drivers/gpu/drm/exynos/exynos_drm_gem.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drm_gem_object_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vm_operations_struct = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i32, i32, ptr, ptr, ptr, %struct.dma_resv, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32 }
%struct.list_head = type { ptr, ptr }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root = type { ptr }
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, ptr, ptr }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.seqcount_ww_mutex = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.67, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.73, ptr, i32, ptr, i8, i32 }
%struct.anon.67 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
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
%struct.anon.73 = type { i32, ptr }
%struct.exynos_drm_private = type { ptr, ptr, ptr, ptr, i32, %struct.spinlock, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.exynos_drm_gem = type { %struct.drm_gem_object, i32, i32, ptr, ptr, i32, i32, ptr }
%struct.drm_exynos_gem_create = type { i64, i32, i32 }
%struct.drm_exynos_gem_map = type { i32, i32, i64 }
%struct.drm_exynos_gem_info = type { i32, i32, i64 }
%struct.drm_mode_create_dumb = type { i32, i32, i32, i32, i32, i32, i64 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.9, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%union.anon.9 = type { %struct.anon.10 }
%struct.anon.10 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type {}

@__UNIQUE_ID_import_ns278 = internal constant [18 x i8] c"import_ns=DMA_BUF\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [19 x i8] c"handle count = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"\013\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"*ERROR* invalid GEM buffer flags: %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"*ERROR* invalid GEM buffer size: %lu\0A\00", align 1
@.str.4 = private unnamed_addr constant [101 x i8] c"\014[drm] Non-contiguous allocation is not supported without IOMMU, falling back to contiguous buffer\0A\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"*ERROR* failed to lookup gem object.\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"FB allocation failed.\0A\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"failed to get sgtable, %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [42 x i8] c"buffer chunks must be mapped contiguously\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"dma_addr is invalid.\0A\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"dma_addr(0x%lx), size(0x%lx)\0A\00", align 1
@exynos_drm_gem_object_funcs = internal constant %struct.drm_gem_object_funcs { ptr @exynos_drm_gem_free_object, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @exynos_drm_gem_prime_get_sg_table, ptr null, ptr null, ptr @exynos_drm_gem_mmap, ptr @exynos_drm_gem_vm_ops }, align 4
@.str.11 = private unnamed_addr constant [41 x i8] c"*ERROR* failed to initialize gem object\0A\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"created file object = %pK\0A\00", align 1
@exynos_drm_gem_vm_ops = internal constant %struct.vm_operations_struct { ptr @drm_gem_vm_open, ptr @drm_gem_vm_close, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.13 = private unnamed_addr constant [14 x i8] c"flags = 0x%x\0A\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"failed to mmap.\0A\00", align 1
@.str.15 = private unnamed_addr constant [20 x i8] c"already allocated.\0A\00", align 1
@.str.16 = private unnamed_addr constant [36 x i8] c"*ERROR* failed to allocate buffer.\0A\00", align 1
@.str.17 = private unnamed_addr constant [19 x i8] c"gem handle = 0x%x\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__UNIQUE_ID_import_ns278], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @exynos_drm_gem_destroy(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.exynos_drm_private, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %7, i32 noundef 4, ptr noundef nonnull @.str, i32 noundef %9) #4
  %10 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 8
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.exynos_drm_gem, ptr %0, i32 0, i32 7
  %15 = load ptr, ptr %14, align 8
  tail call void @drm_prime_gem_destroy(ptr noundef %0, ptr noundef %15) #4
  br label %37

16:                                               ; preds = %1
  %17 = load ptr, ptr %2, align 8
  %18 = getelementptr inbounds %struct.exynos_drm_gem, ptr %0, i32 0, i32 5
  %19 = load i32, ptr %18, align 8
  %20 = icmp eq i32 %19, 0
  %21 = getelementptr inbounds %struct.drm_device, ptr %17, i32 0, i32 2
  %22 = load ptr, ptr %21, align 4
  br i1 %20, label %23, label %24

23:                                               ; preds = %16
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %22, i32 noundef 4, ptr noundef nonnull @.str.9) #4
  br label %37

24:                                               ; preds = %16
  %25 = getelementptr inbounds %struct.exynos_drm_gem, ptr %0, i32 0, i32 2
  %26 = load i32, ptr %25, align 4
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %22, i32 noundef 4, ptr noundef nonnull @.str.10, i32 noundef %19, i32 noundef %26) #4
  %27 = getelementptr inbounds %struct.drm_device, ptr %17, i32 0, i32 5
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.exynos_drm_private, ptr %28, i32 0, i32 2
  %30 = load ptr, ptr %29, align 4
  %31 = load i32, ptr %25, align 4
  %32 = getelementptr inbounds %struct.exynos_drm_gem, ptr %0, i32 0, i32 3
  %33 = load ptr, ptr %32, align 8
  %34 = load i32, ptr %18, align 8
  %35 = getelementptr inbounds %struct.exynos_drm_gem, ptr %0, i32 0, i32 6
  %36 = load i32, ptr %35, align 4
  tail call void @dma_free_attrs(ptr noundef %30, i32 noundef %31, ptr noundef %33, i32 noundef %34, i32 noundef %36) #4
  br label %37

37:                                               ; preds = %24, %23, %13
  tail call void @drm_gem_object_release(ptr noundef %0) #4
  tail call void @kfree(ptr noundef %0) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_dbg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_prime_gem_destroy(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_object_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @exynos_drm_gem_create(ptr noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = icmp ult i32 %1, 8
  br i1 %5, label %9, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %8, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef %1) #4
  br label %77

9:                                                ; preds = %4
  %10 = icmp eq i32 %2, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %13, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3, i32 noundef 0) #4
  br label %77

14:                                               ; preds = %9
  %15 = add i32 %2, 4095
  %16 = and i32 %15, -4096
  %17 = tail call fastcc ptr @exynos_drm_gem_init(ptr noundef %0, i32 noundef %16)
  %18 = icmp ugt ptr %17, inttoptr (i32 -4096 to ptr)
  br i1 %18, label %77, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.exynos_drm_private, ptr %21, i32 0, i32 3
  %23 = load ptr, ptr %22, align 4
  %24 = icmp ne ptr %23, null
  %25 = and i32 %1, 1
  %26 = icmp eq i32 %25, 0
  %27 = or i1 %26, %24
  br i1 %27, label %31, label %28

28:                                               ; preds = %19
  %29 = and i32 %1, -2
  %30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #5
  br label %31

31:                                               ; preds = %28, %19
  %32 = phi i32 [ %1, %19 ], [ %29, %28 ]
  %33 = getelementptr inbounds %struct.exynos_drm_gem, ptr %17, i32 0, i32 1
  store i32 %32, ptr %33, align 8
  %34 = getelementptr inbounds %struct.drm_gem_object, ptr %17, i32 0, i32 2
  %35 = load ptr, ptr %34, align 8
  %36 = getelementptr inbounds %struct.exynos_drm_gem, ptr %17, i32 0, i32 5
  %37 = load i32, ptr %36, align 8
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %31
  %40 = getelementptr inbounds %struct.drm_device, ptr %35, i32 0, i32 5
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.exynos_drm_private, ptr %41, i32 0, i32 2
  %43 = load ptr, ptr %42, align 4
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %43, i32 noundef 4, ptr noundef nonnull @.str.15) #4
  br label %77

44:                                               ; preds = %31
  %45 = shl nuw nsw i32 %32, 6
  %46 = and i32 %45, 64
  %47 = xor i32 %46, 64
  %48 = and i32 %32, 6
  %49 = icmp eq i32 %48, 2
  %50 = or i32 %47, 4
  %51 = select i1 %49, i32 %47, i32 %50
  %52 = or i32 %51, 16
  %53 = select i1 %3, i32 %51, i32 %52
  %54 = getelementptr inbounds %struct.exynos_drm_gem, ptr %17, i32 0, i32 6
  store i32 %53, ptr %54, align 4
  %55 = getelementptr inbounds %struct.drm_device, ptr %35, i32 0, i32 5
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr inbounds %struct.exynos_drm_private, ptr %56, i32 0, i32 2
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr inbounds %struct.exynos_drm_gem, ptr %17, i32 0, i32 2
  %60 = load i32, ptr %59, align 4
  %61 = tail call ptr @dma_alloc_attrs(ptr noundef %58, i32 noundef %60, ptr noundef %36, i32 noundef 3264, i32 noundef %53) #4
  %62 = getelementptr inbounds %struct.exynos_drm_gem, ptr %17, i32 0, i32 3
  store ptr %61, ptr %62, align 8
  %63 = icmp eq ptr %61, null
  br i1 %63, label %73, label %64

64:                                               ; preds = %44
  br i1 %3, label %65, label %67

65:                                               ; preds = %64
  %66 = getelementptr inbounds %struct.exynos_drm_gem, ptr %17, i32 0, i32 4
  store ptr %61, ptr %66, align 4
  br label %67

67:                                               ; preds = %65, %64
  %68 = load ptr, ptr %55, align 4
  %69 = getelementptr inbounds %struct.exynos_drm_private, ptr %68, i32 0, i32 2
  %70 = load ptr, ptr %69, align 4
  %71 = load i32, ptr %36, align 8
  %72 = load i32, ptr %59, align 4
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %70, i32 noundef 4, ptr noundef nonnull @.str.10, i32 noundef %71, i32 noundef %72) #4
  br label %77

73:                                               ; preds = %44
  %74 = load ptr, ptr %55, align 4
  %75 = getelementptr inbounds %struct.exynos_drm_private, ptr %74, i32 0, i32 2
  %76 = load ptr, ptr %75, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %76, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.16) #4
  tail call void @drm_gem_object_release(ptr noundef %17) #4
  tail call void @kfree(ptr noundef %17) #4
  br label %77

77:                                               ; preds = %73, %67, %39, %14, %11, %6
  %78 = phi ptr [ inttoptr (i32 -22 to ptr), %6 ], [ inttoptr (i32 -12 to ptr), %73 ], [ inttoptr (i32 -22 to ptr), %11 ], [ %17, %14 ], [ %17, %39 ], [ %17, %67 ]
  ret ptr %78
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @exynos_drm_gem_init(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 240) #6
  %5 = icmp eq ptr %4, null
  br i1 %5, label %25, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.exynos_drm_gem, ptr %4, i32 0, i32 2
  store i32 %1, ptr %7, align 4
  %8 = getelementptr inbounds %struct.drm_gem_object, ptr %4, i32 0, i32 11
  store ptr @exynos_drm_gem_object_funcs, ptr %8, align 8
  %9 = tail call i32 @drm_gem_object_init(ptr noundef %0, ptr noundef nonnull %4, i32 noundef %1) #4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %13, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.11) #4
  tail call void @kfree(ptr noundef nonnull %4) #4
  %14 = inttoptr i32 %9 to ptr
  br label %25

15:                                               ; preds = %6
  %16 = tail call i32 @drm_gem_create_mmap_offset(ptr noundef nonnull %4) #4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  tail call void @drm_gem_object_release(ptr noundef nonnull %4) #4
  tail call void @kfree(ptr noundef nonnull %4) #4
  %19 = inttoptr i32 %16 to ptr
  br label %25

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 2
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.drm_gem_object, ptr %4, i32 0, i32 3
  %24 = load ptr, ptr %23, align 4
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %22, i32 noundef 4, ptr noundef nonnull @.str.12, ptr noundef %24) #4
  br label %25

25:                                               ; preds = %20, %18, %11, %2
  %26 = phi ptr [ %14, %11 ], [ %19, %18 ], [ %4, %20 ], [ inttoptr (i32 -12 to ptr), %2 ]
  ret ptr %26
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @exynos_drm_gem_create_ioctl(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.drm_exynos_gem_create, ptr %1, i32 0, i32 1
  %5 = load i32, ptr %4, align 8
  %6 = load i64, ptr %1, align 8
  %7 = trunc i64 %6 to i32
  %8 = tail call ptr @exynos_drm_gem_create(ptr noundef %0, i32 noundef %5, i32 noundef %7, i1 noundef zeroext false)
  %9 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %9, label %10, label %12

10:                                               ; preds = %3
  %11 = ptrtoint ptr %8 to i32
  br label %17

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.drm_exynos_gem_create, ptr %1, i32 0, i32 2
  %14 = tail call fastcc i32 @exynos_drm_gem_handle_create(ptr noundef %8, ptr noundef %2, ptr noundef %13)
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  tail call void @exynos_drm_gem_destroy(ptr noundef %8)
  br label %17

17:                                               ; preds = %16, %12, %10
  %18 = phi i32 [ %11, %10 ], [ %14, %16 ], [ 0, %12 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @exynos_drm_gem_handle_create(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = tail call i32 @drm_gem_handle_create(ptr noundef %1, ptr noundef %0, ptr noundef %2) #4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %23

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 2
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.drm_device, ptr %8, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.exynos_drm_private, ptr %10, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = load i32, ptr %2, align 4
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %12, i32 noundef 4, ptr noundef nonnull @.str.17, i32 noundef %13) #4
  %14 = icmp eq ptr %0, null
  br i1 %14, label %23, label %15

15:                                               ; preds = %6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %0) #4, !srcloc !9
  %16 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %0, ptr nonnull %0, i32 1, ptr nonnull elementtype(i32) %0) #4, !srcloc !10
  %17 = extractvalue { i32, i32, i32 } %16, 0
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %22, label %19

19:                                               ; preds = %15
  %20 = icmp sgt i32 %17, 0
  br i1 %20, label %23, label %21, !prof !11

21:                                               ; preds = %19
  tail call void @refcount_warn_saturate(ptr noundef nonnull %0, i32 noundef 3) #4
  br label %23

22:                                               ; preds = %15
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !12
  tail call void @drm_gem_object_free(ptr noundef nonnull %0) #4
  br label %23

23:                                               ; preds = %22, %21, %19, %6, %3
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @exynos_drm_gem_map_ioctl(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = load i32, ptr %1, align 8
  %5 = getelementptr inbounds %struct.drm_exynos_gem_map, ptr %1, i32 0, i32 2
  %6 = tail call i32 @drm_gem_dumb_map_offset(ptr noundef %2, ptr noundef %0, i32 noundef %4, ptr noundef %5) #4
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_dumb_map_offset(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @exynos_drm_gem_get(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @drm_gem_object_lookup(ptr noundef %0, i32 noundef %1) #4
  ret ptr %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_object_lookup(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @exynos_drm_gem_get_ioctl(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = load i32, ptr %1, align 8
  %5 = tail call ptr @drm_gem_object_lookup(ptr noundef %2, i32 noundef %4) #4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.5) #4
  br label %25

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.exynos_drm_gem, ptr %5, i32 0, i32 1
  %12 = load i32, ptr %11, align 8
  %13 = getelementptr inbounds %struct.drm_exynos_gem_info, ptr %1, i32 0, i32 1
  store i32 %12, ptr %13, align 4
  %14 = getelementptr inbounds %struct.exynos_drm_gem, ptr %5, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.drm_exynos_gem_info, ptr %1, i32 0, i32 2
  store i64 %16, ptr %17, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %5) #4, !srcloc !9
  %18 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %5, ptr nonnull %5, i32 1, ptr nonnull elementtype(i32) %5) #4, !srcloc !10
  %19 = extractvalue { i32, i32, i32 } %18, 0
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %24, label %21

21:                                               ; preds = %10
  %22 = icmp sgt i32 %19, 0
  br i1 %22, label %25, label %23, !prof !11

23:                                               ; preds = %21
  tail call void @refcount_warn_saturate(ptr noundef nonnull %5, i32 noundef 3) #4
  br label %25

24:                                               ; preds = %10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !12
  tail call void @drm_gem_object_free(ptr noundef nonnull %5) #4
  br label %25

25:                                               ; preds = %24, %23, %21, %7
  %26 = phi i32 [ -22, %7 ], [ 0, %21 ], [ 0, %23 ], [ 0, %24 ]
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @exynos_drm_gem_free_object(ptr noundef %0) #0 {
  tail call void @exynos_drm_gem_destroy(ptr noundef %0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @exynos_drm_gem_dumb_create(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.drm_mode_create_dumb, ptr %2, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.drm_mode_create_dumb, ptr %2, i32 0, i32 2
  %7 = load i32, ptr %6, align 8
  %8 = add i32 %7, 7
  %9 = lshr i32 %8, 3
  %10 = mul i32 %9, %5
  %11 = getelementptr inbounds %struct.drm_mode_create_dumb, ptr %2, i32 0, i32 5
  store i32 %10, ptr %11, align 4
  %12 = load i32, ptr %2, align 8
  %13 = mul i32 %10, %12
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds %struct.drm_mode_create_dumb, ptr %2, i32 0, i32 6
  store i64 %14, ptr %15, align 8
  %16 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.exynos_drm_private, ptr %17, i32 0, i32 3
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  %21 = select i1 %20, i32 4, i32 5
  %22 = tail call ptr @exynos_drm_gem_create(ptr noundef %1, i32 noundef %21, i32 noundef %13, i1 noundef zeroext false)
  %23 = icmp ugt ptr %22, inttoptr (i32 -4096 to ptr)
  br i1 %23, label %24, label %28

24:                                               ; preds = %3
  %25 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %26 = load ptr, ptr %25, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %26, ptr noundef nonnull @.str.6) #5
  %27 = ptrtoint ptr %22 to i32
  br label %33

28:                                               ; preds = %3
  %29 = getelementptr inbounds %struct.drm_mode_create_dumb, ptr %2, i32 0, i32 4
  %30 = tail call fastcc i32 @exynos_drm_gem_handle_create(ptr noundef %22, ptr noundef %0, ptr noundef %29)
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %28
  tail call void @exynos_drm_gem_destroy(ptr noundef %22)
  br label %33

33:                                               ; preds = %32, %28, %24
  %34 = phi i32 [ %27, %24 ], [ %30, %32 ], [ 0, %28 ]
  ret i32 %34
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @exynos_drm_gem_prime_import(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.exynos_drm_private, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = tail call ptr @drm_gem_prime_import_dev(ptr noundef %0, ptr noundef %1, ptr noundef %6) #4
  ret ptr %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_prime_import_dev(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @exynos_drm_gem_prime_get_sg_table(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 12) #6
  %6 = icmp eq ptr %5, null
  br i1 %6, label %24, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.exynos_drm_private, ptr %9, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.exynos_drm_gem, ptr %0, i32 0, i32 3
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.exynos_drm_gem, ptr %0, i32 0, i32 5
  %15 = load i32, ptr %14, align 8
  %16 = getelementptr inbounds %struct.exynos_drm_gem, ptr %0, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.exynos_drm_gem, ptr %0, i32 0, i32 6
  %19 = load i32, ptr %18, align 4
  %20 = tail call i32 @dma_get_sgtable_attrs(ptr noundef %11, ptr noundef nonnull %5, ptr noundef %13, i32 noundef %15, i32 noundef %17, i32 noundef %19) #4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7, i32 noundef %20) #4
  tail call void @kfree(ptr noundef nonnull %5) #4
  %23 = inttoptr i32 %20 to ptr
  br label %24

24:                                               ; preds = %22, %7, %1
  %25 = phi ptr [ %23, %22 ], [ %5, %7 ], [ inttoptr (i32 -12 to ptr), %1 ]
  ret ptr %25
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_get_sgtable_attrs(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @exynos_drm_gem_prime_import_sg_table(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 @drm_prime_get_contiguous_size(ptr noundef %2) #4
  %5 = load ptr, ptr %1, align 4
  %6 = load i32, ptr %5, align 4
  %7 = icmp ult i32 %4, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %3
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.8) #4
  br label %28

9:                                                ; preds = %3
  %10 = tail call fastcc ptr @exynos_drm_gem_init(ptr noundef %0, i32 noundef %6)
  %11 = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  br i1 %11, label %28, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.exynos_drm_private, ptr %14, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.exynos_drm_gem, ptr %10, i32 0, i32 1
  %20 = load i32, ptr %19, align 8
  %21 = or i32 %20, 1
  store i32 %21, ptr %19, align 8
  br label %22

22:                                               ; preds = %18, %12
  %23 = load ptr, ptr %2, align 4
  %24 = getelementptr inbounds %struct.scatterlist, ptr %23, i32 0, i32 3
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.exynos_drm_gem, ptr %10, i32 0, i32 5
  store i32 %25, ptr %26, align 8
  %27 = getelementptr inbounds %struct.exynos_drm_gem, ptr %10, i32 0, i32 7
  store ptr %2, ptr %27, align 8
  br label %28

28:                                               ; preds = %22, %9, %8
  %29 = phi ptr [ inttoptr (i32 -22 to ptr), %8 ], [ %10, %22 ], [ %10, %9 ]
  ret ptr %29
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_prime_get_contiguous_size(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_object_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_create_mmap_offset(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exynos_drm_gem_mmap(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 7
  %8 = load ptr, ptr %7, align 8
  %9 = tail call i32 @dma_buf_mmap(ptr noundef %8, ptr noundef %1, i32 noundef 0) #4
  br label %64

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 8
  %12 = load i32, ptr %11, align 4
  %13 = or i32 %12, 67387392
  store i32 %13, ptr %11, align 4
  %14 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 2
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds %struct.drm_device, ptr %15, i32 0, i32 5
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.exynos_drm_private, ptr %17, i32 0, i32 2
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.exynos_drm_gem, ptr %0, i32 0, i32 1
  %21 = load i32, ptr %20, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %19, i32 noundef 4, ptr noundef nonnull @.str.13, i32 noundef %21) #4
  %22 = load i32, ptr %20, align 8
  %23 = and i32 %22, 2
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %10
  %26 = load i32, ptr %11, align 4
  %27 = tail call i32 @vm_get_page_prot(i32 noundef %26) #4
  br label %34

28:                                               ; preds = %10
  %29 = and i32 %22, 4
  %30 = load i32, ptr %11, align 4
  %31 = tail call i32 @vm_get_page_prot(i32 noundef %30) #4
  %32 = and i32 %31, -61
  %33 = or i32 %29, %32
  br label %34

34:                                               ; preds = %28, %25
  %35 = phi i32 [ %27, %25 ], [ %33, %28 ]
  %36 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 7
  store i32 %35, ptr %36, align 4
  %37 = load ptr, ptr %14, align 8
  %38 = load i32, ptr %11, align 4
  %39 = and i32 %38, -1025
  store i32 %39, ptr %11, align 4
  %40 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 13
  store i32 0, ptr %40, align 4
  %41 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 1
  %42 = load i32, ptr %41, align 4
  %43 = load i32, ptr %1, align 4
  %44 = sub i32 %42, %43
  %45 = getelementptr inbounds %struct.exynos_drm_gem, ptr %0, i32 0, i32 2
  %46 = load i32, ptr %45, align 4
  %47 = icmp ugt i32 %44, %46
  br i1 %47, label %62, label %48

48:                                               ; preds = %34
  %49 = getelementptr inbounds %struct.drm_device, ptr %37, i32 0, i32 5
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.exynos_drm_private, ptr %50, i32 0, i32 2
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.exynos_drm_gem, ptr %0, i32 0, i32 3
  %54 = load ptr, ptr %53, align 8
  %55 = getelementptr inbounds %struct.exynos_drm_gem, ptr %0, i32 0, i32 5
  %56 = load i32, ptr %55, align 8
  %57 = getelementptr inbounds %struct.exynos_drm_gem, ptr %0, i32 0, i32 6
  %58 = load i32, ptr %57, align 4
  %59 = tail call i32 @dma_mmap_attrs(ptr noundef %52, ptr noundef %1, ptr noundef %54, i32 noundef %56, i32 noundef %46, i32 noundef %58) #4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %48
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.14) #4
  br label %62

62:                                               ; preds = %61, %34
  %63 = phi i32 [ -22, %34 ], [ %59, %61 ]
  tail call void @drm_gem_vm_close(ptr noundef %1) #4
  br label %64

64:                                               ; preds = %62, %48, %6
  %65 = phi i32 [ %9, %6 ], [ %63, %62 ], [ 0, %48 ]
  ret i32 %65
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_buf_mmap(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vm_get_page_prot(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_vm_close(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_mmap_attrs(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_vm_open(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_handle_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_object_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { cold nounwind }
attributes #6 = { nounwind allocsize(2) }

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
!8 = !{i64 2148237908}
!9 = !{i64 634866, i64 2148124837, i64 2148124863, i64 2148124910, i64 2148124932, i64 2148124960, i64 2148124980}
!10 = !{i64 2148140067, i64 2148140099, i64 2148140128, i64 2148140162, i64 2148140193, i64 2148140216}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 2149579783}
