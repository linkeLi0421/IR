; ModuleID = '/llk/IR/drivers/gpu/drm/rockchip/rockchip_drm_gem.c_pt.bc'
source_filename = "../drivers/gpu/drm/rockchip/rockchip_drm_gem.c"
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
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.68, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.78, ptr, i32, ptr, i8, i32 }
%struct.anon.68 = type { %struct.list_head, ptr, %struct.spinlock }
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
%struct.anon.78 = type { i32, ptr }
%struct.rockchip_gem_object = type { %struct.drm_gem_object, i32, ptr, i32, i32, %struct.drm_mm_node, i32, ptr, ptr, i32 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.rockchip_drm_private = type { ptr, %struct.mutex, %struct.drm_mm }
%struct.drm_mm = type { ptr, %struct.list_head, %struct.drm_mm_node, %struct.rb_root_cached, %struct.rb_root_cached, %struct.rb_root, i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.drm_mode_create_dumb = type { i32, i32, i32, i32, i32, i32, i64 }
%struct.dma_buf_map = type { %union.anon.76, i8 }
%union.anon.76 = type { ptr }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.9, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%union.anon.9 = type { %struct.anon.10 }
%struct.anon.10 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type {}

@.str = private unnamed_addr constant [28 x i8] c"failed to allocate sgt, %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"failed to import sg table: %d\0A\00", align 1
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@rockchip_gem_object_funcs = internal constant %struct.drm_gem_object_funcs { ptr @rockchip_gem_free_object, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rockchip_gem_prime_get_sg_table, ptr @rockchip_gem_prime_vmap, ptr @rockchip_gem_prime_vunmap, ptr @rockchip_drm_gem_object_mmap, ptr @drm_gem_cma_vm_ops }, align 4
@drm_gem_cma_vm_ops = external dso_local constant %struct.vm_operations_struct, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"failed to vmap() buffer\0A\00", align 1
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"out of I/O virtual memory: %zd\0A\00", align 1
@.str.4 = private unnamed_addr constant [49 x i8] c"failed to map buffer: size=%zd request_size=%zd\0A\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"failed to allocate %zu byte dma buffer\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.6 = private unnamed_addr constant [54 x i8] c"failed to map sg_table to contiguous linear address.\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @rockchip_gem_create_object(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 352) #3
  %6 = icmp eq ptr %5, null
  br i1 %6, label %123, label %7

7:                                                ; preds = %3
  %8 = add i32 %1, -1
  %9 = or i32 %8, 4095
  %10 = add i32 %9, 1
  %11 = getelementptr inbounds %struct.drm_gem_object, ptr %5, i32 0, i32 11
  store ptr @rockchip_gem_object_funcs, ptr %11, align 8
  %12 = tail call i32 @drm_gem_object_init(ptr noundef %0, ptr noundef nonnull %5, i32 noundef %10) #4
  %13 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %13, label %123, label %14

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.drm_gem_object, ptr %5, i32 0, i32 2
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds %struct.drm_device, ptr %16, i32 0, i32 5
  %18 = load ptr, ptr %17, align 4
  %19 = load ptr, ptr %18, align 8
  %20 = icmp eq ptr %19, null
  br i1 %20, label %105, label %21

21:                                               ; preds = %14
  %22 = tail call ptr @drm_gem_get_pages(ptr noundef nonnull %5) #4
  %23 = getelementptr inbounds %struct.rockchip_gem_object, ptr %5, i32 0, i32 7
  store ptr %22, ptr %23, align 4
  %24 = icmp ugt ptr %22, inttoptr (i32 -4096 to ptr)
  br i1 %24, label %70, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.drm_gem_object, ptr %5, i32 0, i32 5
  %27 = load i32, ptr %26, align 8
  %28 = lshr i32 %27, 12
  %29 = getelementptr inbounds %struct.rockchip_gem_object, ptr %5, i32 0, i32 6
  store i32 %28, ptr %29, align 8
  %30 = load ptr, ptr %15, align 8
  %31 = tail call ptr @drm_prime_pages_to_sg(ptr noundef %30, ptr noundef %22, i32 noundef %28) #4
  %32 = getelementptr inbounds %struct.rockchip_gem_object, ptr %5, i32 0, i32 8
  store ptr %31, ptr %32, align 8
  %33 = icmp ugt ptr %31, inttoptr (i32 -4096 to ptr)
  br i1 %33, label %34, label %36

34:                                               ; preds = %25
  %35 = load ptr, ptr %23, align 4
  tail call void @drm_gem_put_pages(ptr noundef nonnull %5, ptr noundef %35, i1 noundef zeroext false, i1 noundef zeroext false) #4
  br label %70

36:                                               ; preds = %25
  %37 = load ptr, ptr %31, align 4
  %38 = getelementptr inbounds %struct.sg_table, ptr %31, i32 0, i32 2
  %39 = load i32, ptr %38, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %65, label %41

41:                                               ; preds = %41, %36
  %42 = phi ptr [ %58, %41 ], [ %37, %36 ]
  %43 = phi i32 [ %57, %41 ], [ 0, %36 ]
  %44 = load i32, ptr %42, align 4
  %45 = and i32 %44, 33554428
  %46 = load ptr, ptr @mem_map, align 4
  %47 = ptrtoint ptr %46 to i32
  %48 = sub i32 %45, %47
  %49 = lshr exact i32 %48, 5
  %50 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %51 = add i32 %49, %50
  %52 = shl i32 %51, 12
  %53 = getelementptr inbounds %struct.scatterlist, ptr %42, i32 0, i32 1
  %54 = load i32, ptr %53, align 4
  %55 = add i32 %52, %54
  %56 = getelementptr inbounds %struct.scatterlist, ptr %42, i32 0, i32 3
  store i32 %55, ptr %56, align 4
  %57 = add nuw i32 %43, 1
  %58 = tail call ptr @sg_next(ptr noundef %42) #4
  %59 = load ptr, ptr %32, align 8
  %60 = getelementptr inbounds %struct.sg_table, ptr %59, i32 0, i32 2
  %61 = load i32, ptr %60, align 4
  %62 = icmp ult i32 %57, %61
  br i1 %62, label %41, label %63

63:                                               ; preds = %41
  %64 = load ptr, ptr %59, align 4
  br label %65

65:                                               ; preds = %63, %36
  %66 = phi ptr [ %37, %36 ], [ %64, %63 ]
  %67 = phi i32 [ 0, %36 ], [ %61, %63 ]
  %68 = getelementptr inbounds %struct.drm_device, ptr %16, i32 0, i32 2
  %69 = load ptr, ptr %68, align 4
  tail call void @dma_sync_sg_for_device(ptr noundef %69, ptr noundef %66, i32 noundef %67, i32 noundef 1) #4
  br label %73

70:                                               ; preds = %34, %21
  %71 = phi ptr [ %31, %34 ], [ %22, %21 ]
  %72 = icmp slt ptr %71, null
  br i1 %72, label %118, label %73

73:                                               ; preds = %70, %65
  %74 = tail call fastcc i32 @rockchip_gem_iommu_map(ptr noundef %5) #4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %99, label %76

76:                                               ; preds = %73
  br i1 %2, label %77, label %123

77:                                               ; preds = %76
  %78 = load ptr, ptr %23, align 4
  %79 = getelementptr inbounds %struct.rockchip_gem_object, ptr %5, i32 0, i32 6
  %80 = load i32, ptr %79, align 8
  %81 = load i32, ptr @pgprot_kernel, align 4
  %82 = and i32 %81, -573
  %83 = or i32 %82, 516
  %84 = tail call ptr @vmap(ptr noundef %78, i32 noundef %80, i32 noundef 4, i32 noundef %83) #4
  %85 = getelementptr inbounds %struct.rockchip_gem_object, ptr %5, i32 0, i32 2
  store ptr %84, ptr %85, align 4
  %86 = icmp eq ptr %84, null
  br i1 %86, label %87, label %123

87:                                               ; preds = %77
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.2) #4
  %88 = load ptr, ptr %15, align 8
  %89 = getelementptr inbounds %struct.drm_device, ptr %88, i32 0, i32 5
  %90 = load ptr, ptr %89, align 4
  %91 = load ptr, ptr %90, align 8
  %92 = getelementptr inbounds %struct.rockchip_gem_object, ptr %5, i32 0, i32 3
  %93 = load i32, ptr %92, align 8
  %94 = getelementptr inbounds %struct.rockchip_gem_object, ptr %5, i32 0, i32 9
  %95 = load i32, ptr %94, align 4
  %96 = tail call i32 @iommu_unmap(ptr noundef %91, i32 noundef %93, i32 noundef %95) #4
  %97 = getelementptr inbounds %struct.rockchip_drm_private, ptr %90, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %97) #4
  %98 = getelementptr inbounds %struct.rockchip_gem_object, ptr %5, i32 0, i32 5
  tail call void @drm_mm_remove_node(ptr noundef %98) #4
  tail call void @mutex_unlock(ptr noundef %97) #4
  br label %99

99:                                               ; preds = %87, %73
  %100 = phi i32 [ %74, %73 ], [ -12, %87 ]
  %101 = getelementptr inbounds %struct.rockchip_gem_object, ptr %5, i32 0, i32 8
  %102 = load ptr, ptr %101, align 8
  tail call void @sg_free_table(ptr noundef %102) #4
  %103 = load ptr, ptr %101, align 8
  tail call void @kfree(ptr noundef %103) #4
  %104 = load ptr, ptr %23, align 4
  tail call void @drm_gem_put_pages(ptr noundef %5, ptr noundef %104, i1 noundef zeroext true, i1 noundef zeroext true) #4
  br label %120

105:                                              ; preds = %14
  %106 = getelementptr inbounds %struct.rockchip_gem_object, ptr %5, i32 0, i32 4
  %107 = select i1 %2, i32 4, i32 20
  store i32 %107, ptr %106, align 4
  %108 = getelementptr inbounds %struct.drm_device, ptr %16, i32 0, i32 2
  %109 = load ptr, ptr %108, align 4
  %110 = getelementptr inbounds %struct.drm_gem_object, ptr %5, i32 0, i32 5
  %111 = load i32, ptr %110, align 8
  %112 = getelementptr inbounds %struct.rockchip_gem_object, ptr %5, i32 0, i32 3
  %113 = tail call ptr @dma_alloc_attrs(ptr noundef %109, i32 noundef %111, ptr noundef %112, i32 noundef 3264, i32 noundef %107) #4
  %114 = getelementptr inbounds %struct.rockchip_gem_object, ptr %5, i32 0, i32 2
  store ptr %113, ptr %114, align 4
  %115 = icmp eq ptr %113, null
  br i1 %115, label %116, label %123

116:                                              ; preds = %105
  %117 = load i32, ptr %110, align 8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.5, i32 noundef %117) #4
  br label %120

118:                                              ; preds = %70
  %119 = ptrtoint ptr %71 to i32
  br label %120

120:                                              ; preds = %118, %116, %99
  %121 = phi i32 [ %119, %118 ], [ -12, %116 ], [ %100, %99 ]
  tail call void @drm_gem_object_release(ptr noundef %5) #4
  tail call void @kfree(ptr noundef %5) #4
  %122 = inttoptr i32 %121 to ptr
  br label %123

123:                                              ; preds = %120, %105, %77, %76, %7, %3
  %124 = phi ptr [ %122, %120 ], [ %5, %7 ], [ inttoptr (i32 -12 to ptr), %3 ], [ %5, %105 ], [ %5, %76 ], [ %5, %77 ]
  ret ptr %124
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rockchip_gem_free_object(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %31, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %20, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.rockchip_gem_object, ptr %0, i32 0, i32 3
  %14 = load i32, ptr %13, align 8
  %15 = getelementptr inbounds %struct.rockchip_gem_object, ptr %0, i32 0, i32 9
  %16 = load i32, ptr %15, align 4
  %17 = tail call i32 @iommu_unmap(ptr noundef nonnull %10, i32 noundef %14, i32 noundef %16) #4
  %18 = getelementptr inbounds %struct.rockchip_drm_private, ptr %9, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %18) #4
  %19 = getelementptr inbounds %struct.rockchip_gem_object, ptr %0, i32 0, i32 5
  tail call void @drm_mm_remove_node(ptr noundef %19) #4
  tail call void @mutex_unlock(ptr noundef %18) #4
  br label %28

20:                                               ; preds = %7
  %21 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 2
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.rockchip_gem_object, ptr %0, i32 0, i32 8
  %24 = load ptr, ptr %23, align 8
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.sg_table, ptr %24, i32 0, i32 2
  %27 = load i32, ptr %26, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %22, ptr noundef %25, i32 noundef %27, i32 noundef 0, i32 noundef 0) #4
  br label %28

28:                                               ; preds = %20, %12
  %29 = getelementptr inbounds %struct.rockchip_gem_object, ptr %0, i32 0, i32 8
  %30 = load ptr, ptr %29, align 8
  tail call void @drm_prime_gem_destroy(ptr noundef %0, ptr noundef %30) #4
  br label %64

31:                                               ; preds = %1
  %32 = getelementptr inbounds %struct.rockchip_gem_object, ptr %0, i32 0, i32 7
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %53, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.rockchip_gem_object, ptr %0, i32 0, i32 2
  %37 = load ptr, ptr %36, align 4
  tail call void @vunmap(ptr noundef %37) #4
  %38 = load ptr, ptr %2, align 8
  %39 = getelementptr inbounds %struct.drm_device, ptr %38, i32 0, i32 5
  %40 = load ptr, ptr %39, align 4
  %41 = load ptr, ptr %40, align 8
  %42 = getelementptr inbounds %struct.rockchip_gem_object, ptr %0, i32 0, i32 3
  %43 = load i32, ptr %42, align 8
  %44 = getelementptr inbounds %struct.rockchip_gem_object, ptr %0, i32 0, i32 9
  %45 = load i32, ptr %44, align 4
  %46 = tail call i32 @iommu_unmap(ptr noundef %41, i32 noundef %43, i32 noundef %45) #4
  %47 = getelementptr inbounds %struct.rockchip_drm_private, ptr %40, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %47) #4
  %48 = getelementptr inbounds %struct.rockchip_gem_object, ptr %0, i32 0, i32 5
  tail call void @drm_mm_remove_node(ptr noundef %48) #4
  tail call void @mutex_unlock(ptr noundef %47) #4
  %49 = getelementptr inbounds %struct.rockchip_gem_object, ptr %0, i32 0, i32 8
  %50 = load ptr, ptr %49, align 8
  tail call void @sg_free_table(ptr noundef %50) #4
  %51 = load ptr, ptr %49, align 8
  tail call void @kfree(ptr noundef %51) #4
  %52 = load ptr, ptr %32, align 4
  tail call void @drm_gem_put_pages(ptr noundef %0, ptr noundef %52, i1 noundef zeroext true, i1 noundef zeroext true) #4
  br label %64

53:                                               ; preds = %31
  %54 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 2
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 5
  %57 = load i32, ptr %56, align 8
  %58 = getelementptr inbounds %struct.rockchip_gem_object, ptr %0, i32 0, i32 2
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr inbounds %struct.rockchip_gem_object, ptr %0, i32 0, i32 3
  %61 = load i32, ptr %60, align 8
  %62 = getelementptr inbounds %struct.rockchip_gem_object, ptr %0, i32 0, i32 4
  %63 = load i32, ptr %62, align 4
  tail call void @dma_free_attrs(ptr noundef %55, i32 noundef %57, ptr noundef %59, i32 noundef %61, i32 noundef %63) #4
  br label %64

64:                                               ; preds = %53, %35, %28
  tail call void @drm_gem_object_release(ptr noundef %0) #4
  tail call void @kfree(ptr noundef %0) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_prime_gem_destroy(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rockchip_gem_dumb_create(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.drm_mode_create_dumb, ptr %2, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.drm_mode_create_dumb, ptr %2, i32 0, i32 2
  %7 = load i32, ptr %6, align 8
  %8 = mul i32 %7, %5
  %9 = add i32 %8, 7
  %10 = lshr i32 %9, 3
  %11 = add nuw nsw i32 %10, 63
  %12 = and i32 %11, 1073741760
  %13 = getelementptr inbounds %struct.drm_mode_create_dumb, ptr %2, i32 0, i32 5
  store i32 %12, ptr %13, align 4
  %14 = load i32, ptr %2, align 8
  %15 = mul i32 %12, %14
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.drm_mode_create_dumb, ptr %2, i32 0, i32 6
  store i64 %16, ptr %17, align 8
  %18 = tail call ptr @rockchip_gem_create_object(ptr noundef %1, i32 noundef %15, i1 noundef zeroext false) #4
  %19 = icmp ugt ptr %18, inttoptr (i32 -4096 to ptr)
  br i1 %19, label %36, label %20

20:                                               ; preds = %3
  %21 = getelementptr inbounds %struct.drm_mode_create_dumb, ptr %2, i32 0, i32 4
  %22 = tail call i32 @drm_gem_handle_create(ptr noundef %0, ptr noundef %18, ptr noundef %21) #4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %20
  %25 = icmp eq ptr %18, null
  br i1 %25, label %36, label %26

26:                                               ; preds = %24
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %18) #4, !srcloc !9
  %27 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %18, ptr nonnull %18, i32 1, ptr nonnull elementtype(i32) %18) #4, !srcloc !10
  %28 = extractvalue { i32, i32, i32 } %27, 0
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %33, label %30

30:                                               ; preds = %26
  %31 = icmp sgt i32 %28, 0
  br i1 %31, label %36, label %32, !prof !11

32:                                               ; preds = %30
  tail call void @refcount_warn_saturate(ptr noundef nonnull %18, i32 noundef 3) #4
  br label %36

33:                                               ; preds = %26
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !12
  tail call void @drm_gem_object_free(ptr noundef nonnull %18) #4
  br label %36

34:                                               ; preds = %20
  tail call void @rockchip_gem_free_object(ptr noundef %18) #4
  %35 = inttoptr i32 %22 to ptr
  br label %36

36:                                               ; preds = %34, %33, %32, %30, %24, %3
  %37 = phi ptr [ %35, %34 ], [ %18, %3 ], [ null, %24 ], [ %18, %30 ], [ %18, %32 ], [ %18, %33 ]
  %38 = icmp ugt ptr %37, inttoptr (i32 -4096 to ptr)
  %39 = ptrtoint ptr %37 to i32
  %40 = select i1 %38, i32 %39, i32 0
  ret i32 %40
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @rockchip_gem_prime_get_sg_table(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.rockchip_gem_object, ptr %0, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.rockchip_gem_object, ptr %0, i32 0, i32 6
  %9 = load i32, ptr %8, align 8
  %10 = tail call ptr @drm_prime_pages_to_sg(ptr noundef %3, ptr noundef nonnull %5, i32 noundef %9) #4
  br label %30

11:                                               ; preds = %1
  %12 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %13 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3520, i32 noundef 12) #3
  %14 = icmp eq ptr %13, null
  br i1 %14, label %30, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.rockchip_gem_object, ptr %0, i32 0, i32 2
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.rockchip_gem_object, ptr %0, i32 0, i32 3
  %21 = load i32, ptr %20, align 8
  %22 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 5
  %23 = load i32, ptr %22, align 8
  %24 = getelementptr inbounds %struct.rockchip_gem_object, ptr %0, i32 0, i32 4
  %25 = load i32, ptr %24, align 4
  %26 = tail call i32 @dma_get_sgtable_attrs(ptr noundef %17, ptr noundef nonnull %13, ptr noundef %19, i32 noundef %21, i32 noundef %23, i32 noundef %25) #4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %15
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, i32 noundef %26) #4
  tail call void @kfree(ptr noundef nonnull %13) #4
  %29 = inttoptr i32 %26 to ptr
  br label %30

30:                                               ; preds = %28, %15, %11, %7
  %31 = phi ptr [ %10, %7 ], [ %29, %28 ], [ %13, %15 ], [ inttoptr (i32 -12 to ptr), %11 ]
  ret ptr %31
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_prime_pages_to_sg(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_get_sgtable_attrs(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @rockchip_gem_prime_import_sg_table(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %1, align 4
  %7 = load i32, ptr %6, align 4
  %8 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %9 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 352) #3
  %10 = icmp eq ptr %9, null
  br i1 %10, label %51, label %11

11:                                               ; preds = %3
  %12 = add i32 %7, -1
  %13 = or i32 %12, 4095
  %14 = add i32 %13, 1
  %15 = getelementptr inbounds %struct.drm_gem_object, ptr %9, i32 0, i32 11
  store ptr @rockchip_gem_object_funcs, ptr %15, align 8
  %16 = tail call i32 @drm_gem_object_init(ptr noundef %0, ptr noundef nonnull %9, i32 noundef %14) #4
  %17 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %17, label %51, label %18

18:                                               ; preds = %11
  %19 = load ptr, ptr %5, align 8
  %20 = icmp eq ptr %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.rockchip_gem_object, ptr %9, i32 0, i32 8
  store ptr %2, ptr %22, align 8
  %23 = tail call fastcc i32 @rockchip_gem_iommu_map(ptr noundef nonnull %9) #4
  br label %45

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 2
  %26 = load ptr, ptr %25, align 4
  %27 = tail call i32 @dma_map_sgtable(ptr noundef %26, ptr noundef %2, i32 noundef 0, i32 noundef 0) #4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %45

29:                                               ; preds = %24
  %30 = tail call i32 @drm_prime_get_contiguous_size(ptr noundef %2) #4
  %31 = load ptr, ptr %1, align 4
  %32 = load i32, ptr %31, align 4
  %33 = icmp ult i32 %30, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.6) #4
  %35 = load ptr, ptr %25, align 4
  %36 = load ptr, ptr %2, align 4
  %37 = getelementptr inbounds %struct.sg_table, ptr %2, i32 0, i32 2
  %38 = load i32, ptr %37, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %35, ptr noundef %36, i32 noundef %38, i32 noundef 0, i32 noundef 0) #4
  br label %48

39:                                               ; preds = %29
  %40 = load ptr, ptr %2, align 4
  %41 = getelementptr inbounds %struct.scatterlist, ptr %40, i32 0, i32 3
  %42 = load i32, ptr %41, align 4
  %43 = getelementptr inbounds %struct.rockchip_gem_object, ptr %9, i32 0, i32 3
  store i32 %42, ptr %43, align 8
  %44 = getelementptr inbounds %struct.rockchip_gem_object, ptr %9, i32 0, i32 8
  store ptr %2, ptr %44, align 8
  br label %51

45:                                               ; preds = %24, %21
  %46 = phi i32 [ %23, %21 ], [ %27, %24 ]
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %45, %34
  %49 = phi i32 [ -22, %34 ], [ %46, %45 ]
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1, i32 noundef %49) #4
  tail call void @drm_gem_object_release(ptr noundef nonnull %9) #4
  tail call void @kfree(ptr noundef nonnull %9) #4
  %50 = inttoptr i32 %49 to ptr
  br label %51

51:                                               ; preds = %48, %45, %39, %11, %3
  %52 = phi ptr [ %50, %48 ], [ %9, %45 ], [ %9, %11 ], [ %9, %39 ], [ inttoptr (i32 -12 to ptr), %3 ]
  ret ptr %52
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rockchip_gem_prime_vmap(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.rockchip_gem_object, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rockchip_gem_object, ptr %0, i32 0, i32 6
  %8 = load i32, ptr %7, align 8
  %9 = load i32, ptr @pgprot_kernel, align 4
  %10 = and i32 %9, -573
  %11 = or i32 %10, 516
  %12 = tail call ptr @vmap(ptr noundef nonnull %4, i32 noundef %8, i32 noundef 4, i32 noundef %11) #4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %25, label %22

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.rockchip_gem_object, ptr %0, i32 0, i32 4
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, 16
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.rockchip_gem_object, ptr %0, i32 0, i32 2
  %21 = load ptr, ptr %20, align 4
  br label %22

22:                                               ; preds = %19, %6
  %23 = phi ptr [ %21, %19 ], [ %12, %6 ]
  store ptr %23, ptr %1, align 4
  %24 = getelementptr inbounds %struct.dma_buf_map, ptr %1, i32 0, i32 1
  store i8 0, ptr %24, align 4
  br label %25

25:                                               ; preds = %22, %14, %6
  %26 = phi i32 [ -12, %6 ], [ -12, %14 ], [ 0, %22 ]
  ret i32 %26
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vmap(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rockchip_gem_prime_vunmap(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.rockchip_gem_object, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %1, align 4
  tail call void @vunmap(ptr noundef %7) #4
  br label %8

8:                                                ; preds = %6, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vunmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_object_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rockchip_drm_gem_object_mmap(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 13
  store i32 0, ptr %3, align 4
  %4 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 8
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, -67388417
  %7 = or i32 %6, 67387392
  store i32 %7, ptr %4, align 4
  %8 = tail call i32 @vm_get_page_prot(i32 noundef %7) #4
  %9 = and i32 %8, -61
  %10 = or i32 %9, 4
  %11 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 7
  store i32 %10, ptr %11, align 4
  %12 = getelementptr inbounds %struct.rockchip_gem_object, ptr %0, i32 0, i32 7
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %26, label %15

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = load i32, ptr %1, align 4
  %19 = sub i32 %17, %18
  %20 = icmp ult i32 %19, 4096
  br i1 %20, label %43, label %21

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 5
  %23 = load i32, ptr %22, align 8
  %24 = lshr i32 %23, 12
  %25 = tail call i32 @vm_map_pages(ptr noundef %1, ptr noundef nonnull %13, i32 noundef %24) #4
  br label %40

26:                                               ; preds = %2
  %27 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 2
  %28 = load ptr, ptr %27, align 8
  %29 = getelementptr inbounds %struct.drm_device, ptr %28, i32 0, i32 2
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.rockchip_gem_object, ptr %0, i32 0, i32 2
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.rockchip_gem_object, ptr %0, i32 0, i32 3
  %34 = load i32, ptr %33, align 8
  %35 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 5
  %36 = load i32, ptr %35, align 8
  %37 = getelementptr inbounds %struct.rockchip_gem_object, ptr %0, i32 0, i32 4
  %38 = load i32, ptr %37, align 4
  %39 = tail call i32 @dma_mmap_attrs(ptr noundef %30, ptr noundef %1, ptr noundef %32, i32 noundef %34, i32 noundef %36, i32 noundef %38) #4
  br label %40

40:                                               ; preds = %26, %21
  %41 = phi i32 [ %39, %26 ], [ %25, %21 ]
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %40, %15
  %44 = phi i32 [ %41, %40 ], [ -6, %15 ]
  tail call void @drm_gem_vm_close(ptr noundef %1) #4
  br label %45

45:                                               ; preds = %43, %40
  %46 = phi i32 [ %44, %43 ], [ 0, %40 ]
  ret i32 %46
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vm_get_page_prot(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_vm_close(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vm_map_pages(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_mmap_attrs(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @rockchip_gem_iommu_map(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.rockchip_drm_private, ptr %5, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %6) #4
  %7 = getelementptr inbounds %struct.rockchip_drm_private, ptr %5, i32 0, i32 2
  %8 = getelementptr inbounds %struct.rockchip_gem_object, ptr %0, i32 0, i32 5
  %9 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 5
  %10 = load i32, ptr %9, align 8
  %11 = zext i32 %10 to i64
  %12 = tail call i32 @drm_mm_insert_node_in_range(ptr noundef %7, ptr noundef %8, i64 noundef %11, i64 noundef 4096, i32 noundef 0, i64 noundef 0, i64 noundef -1, i32 noundef 0) #4
  tail call void @mutex_unlock(ptr noundef %6) #4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3, i32 noundef %12) #4
  br label %32

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.rockchip_gem_object, ptr %0, i32 0, i32 5, i32 1
  %17 = load i64, ptr %16, align 8
  %18 = trunc i64 %17 to i32
  %19 = getelementptr inbounds %struct.rockchip_gem_object, ptr %0, i32 0, i32 3
  store i32 %18, ptr %19, align 8
  %20 = load ptr, ptr %5, align 8
  %21 = getelementptr inbounds %struct.rockchip_gem_object, ptr %0, i32 0, i32 8
  %22 = load ptr, ptr %21, align 8
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.sg_table, ptr %22, i32 0, i32 2
  %25 = load i32, ptr %24, align 4
  %26 = tail call i32 @iommu_map_sg(ptr noundef %20, i32 noundef %18, ptr noundef %23, i32 noundef %25, i32 noundef 3) #4
  %27 = load i32, ptr %9, align 8
  %28 = icmp ult i32 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %15
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4, i32 noundef %26, i32 noundef %27) #4
  tail call void @mutex_lock(ptr noundef %6) #4
  tail call void @drm_mm_remove_node(ptr noundef %8) #4
  tail call void @mutex_unlock(ptr noundef %6) #4
  br label %32

30:                                               ; preds = %15
  %31 = getelementptr inbounds %struct.rockchip_gem_object, ptr %0, i32 0, i32 9
  store i32 %26, ptr %31, align 4
  br label %32

32:                                               ; preds = %30, %29, %14
  %33 = phi i32 [ %12, %14 ], [ -12, %29 ], [ 0, %30 ]
  ret i32 %33
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_get_pages(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_put_pages(ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_sg_for_device(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mm_remove_node(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mm_insert_node_in_range(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iommu_map_sg(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_free_table(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_object_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iommu_unmap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_handle_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_object_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sgtable(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_prime_get_contiguous_size(ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind allocsize(2) }
attributes #4 = { nounwind }

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
!8 = !{i64 2148239757}
!9 = !{i64 636715, i64 2148126686, i64 2148126712, i64 2148126759, i64 2148126781, i64 2148126809, i64 2148126829}
!10 = !{i64 2148141916, i64 2148141948, i64 2148141977, i64 2148142011, i64 2148142042, i64 2148142065}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 2149581632}
