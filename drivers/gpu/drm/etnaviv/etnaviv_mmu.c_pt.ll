; ModuleID = '/llk/IR/drivers/gpu/drm/etnaviv/etnaviv_mmu.c_pt.bc'
source_filename = "../drivers/gpu/drm/etnaviv/etnaviv_mmu.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type {}
%struct.etnaviv_iommu_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.etnaviv_gem_object = type { %struct.drm_gem_object, ptr, %struct.mutex, i32, %struct.list_head, ptr, %struct.atomic_t, i32, ptr, ptr, ptr, %struct.list_head, i32, %struct.etnaviv_gem_userptr }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i32, i32, ptr, ptr, ptr, %struct.dma_resv, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root = type { ptr }
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, ptr, ptr }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.seqcount_ww_mutex = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.etnaviv_gem_userptr = type { i32, ptr, i8 }
%struct.etnaviv_iommu_context = type { %struct.kref, ptr, %struct.mutex, %struct.list_head, %struct.drm_mm, i32, %struct.etnaviv_vram_mapping }
%struct.drm_mm = type { ptr, %struct.list_head, %struct.drm_mm_node, %struct.rb_root_cached, %struct.rb_root_cached, %struct.rb_root, i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.etnaviv_vram_mapping = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, ptr, %struct.drm_mm_node, i32, i32 }
%struct.etnaviv_iommu_global = type { ptr, i32, ptr, i32, %struct.mutex, ptr, i32, i32, %union.anon.77 }
%union.anon.77 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, i32, %struct.spinlock, [16 x i32] }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.sg_table = type { ptr, i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.drm_mm_scan = type { ptr, i64, i64, i64, i64, i64, i64, i64, i32, i32 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.65, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.75, ptr, i32, ptr, i8, i32 }
%struct.anon.65 = type { %struct.list_head, ptr, %struct.spinlock }
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
%struct.anon.75 = type { i32, ptr }
%struct.etnaviv_gpu = type { ptr, ptr, ptr, %struct.mutex, %struct.etnaviv_chip_identity, i32, ptr, %struct.drm_gpu_scheduler, i8, i8, %struct.etnaviv_cmdbuf, i32, [1 x i32], [30 x %struct.etnaviv_event], %struct.completion, %struct.spinlock, i32, %struct.mutex, %struct.idr, i32, i32, %struct.wait_queue_head, i64, %struct.spinlock, %struct.work_struct, i32, i32, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, i32, i32, i32 }
%struct.etnaviv_chip_identity = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.drm_gpu_scheduler = type { ptr, i32, i32, ptr, [4 x %struct.drm_sched_rq], %struct.wait_queue_head, %struct.wait_queue_head, %struct.atomic_t, %struct.atomic64_t, ptr, %struct.delayed_work, ptr, %struct.list_head, %struct.spinlock, i32, ptr, %struct.atomic_t, i8, i8 }
%struct.drm_sched_rq = type { %struct.spinlock, ptr, %struct.list_head, ptr }
%struct.atomic64_t = type { i64 }
%struct.etnaviv_cmdbuf = type { ptr, i32, ptr, i32, i32 }
%struct.etnaviv_event = type { ptr, ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.etnaviv_drm_private = type { i32, [4 x ptr], i32, ptr, ptr, %struct.mutex, %struct.list_head }

@.str = private unnamed_addr constant [38 x i8] c"drivers/gpu/drm/etnaviv/etnaviv_mmu.c\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"command buffer outside valid memory window\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"MMU version doesn't match global version\0A\00", align 1
@etnaviv_iommu_global_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"&global->lock\00", align 1
@etnaviv_iommuv1_ops = external dso_local constant %struct.etnaviv_iommu_ops, align 4
@etnaviv_iommuv2_ops = external dso_local constant %struct.etnaviv_iommu_ops, align 4
@.str.4 = private unnamed_addr constant [60 x i8] c"\013unaligned: iova 0x%lx pa %pa size 0x%zx min_pagesz 0x%zx\0A\00", align 1
@.str.5 = private unnamed_addr constant [53 x i8] c"\013unaligned: iova 0x%lx size 0x%zx min_pagesz 0x%zx\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @etnaviv_iommu_map_gem(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.etnaviv_gem_object, ptr %1, i32 0, i32 9
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.etnaviv_iommu_context, ptr %0, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %8) #6
  %9 = getelementptr inbounds %struct.etnaviv_iommu_context, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.etnaviv_iommu_global, ptr %10, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %39

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct.sg_table, ptr %7, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %18, label %39

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.etnaviv_gem_object, ptr %1, i32 0, i32 3
  %20 = load i32, ptr %19, align 8
  %21 = and i32 %20, 1048576
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %39

23:                                               ; preds = %18
  %24 = load ptr, ptr %7, align 4
  %25 = getelementptr inbounds %struct.scatterlist, ptr %24, i32 0, i32 3
  %26 = load i32, ptr %25, align 4
  %27 = sub i32 %26, %2
  %28 = getelementptr inbounds %struct.scatterlist, ptr %24, i32 0, i32 4
  %29 = load i32, ptr %28, align 4
  %30 = sub i32 -2147483648, %29
  %31 = icmp ult i32 %27, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %23
  %33 = getelementptr inbounds %struct.etnaviv_vram_mapping, ptr %3, i32 0, i32 7
  store i32 %27, ptr %33, align 4
  %34 = getelementptr inbounds %struct.etnaviv_vram_mapping, ptr %3, i32 0, i32 2
  %35 = getelementptr inbounds %struct.etnaviv_iommu_context, ptr %0, i32 0, i32 3
  %36 = getelementptr inbounds %struct.etnaviv_iommu_context, ptr %0, i32 0, i32 3, i32 1
  %37 = load ptr, ptr %36, align 4
  store ptr %34, ptr %36, align 4
  store ptr %35, ptr %34, align 4
  %38 = getelementptr inbounds %struct.etnaviv_vram_mapping, ptr %3, i32 0, i32 2, i32 1
  store ptr %37, ptr %38, align 4
  store volatile ptr %34, ptr %37, align 4
  br label %125

39:                                               ; preds = %23, %18, %14, %5
  %40 = getelementptr inbounds %struct.etnaviv_vram_mapping, ptr %3, i32 0, i32 5
  %41 = icmp eq i64 %4, 0
  %42 = getelementptr inbounds %struct.drm_gem_object, ptr %1, i32 0, i32 5
  %43 = load i32, ptr %42, align 8
  br i1 %41, label %49, label %44

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.etnaviv_iommu_context, ptr %0, i32 0, i32 4
  %46 = zext i32 %43 to i64
  %47 = add i64 %46, %4
  %48 = tail call i32 @drm_mm_insert_node_in_range(ptr noundef %45, ptr noundef %40, i64 noundef %46, i64 noundef 0, i32 noundef 0, i64 noundef %4, i64 noundef %47, i32 noundef -2147483647) #6
  br label %51

49:                                               ; preds = %39
  %50 = tail call fastcc i32 @etnaviv_iommu_find_iova(ptr noundef %0, ptr noundef %40, i32 noundef %43)
  br label %51

51:                                               ; preds = %49, %44
  %52 = phi i32 [ %48, %44 ], [ %50, %49 ]
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %125, label %54

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.etnaviv_vram_mapping, ptr %3, i32 0, i32 5, i32 1
  %56 = load i64, ptr %55, align 8
  %57 = trunc i64 %56 to i32
  %58 = getelementptr inbounds %struct.etnaviv_vram_mapping, ptr %3, i32 0, i32 7
  store i32 %57, ptr %58, align 4
  %59 = icmp ne ptr %0, null
  %60 = icmp ne ptr %7, null
  %61 = and i1 %59, %60
  br i1 %61, label %62, label %113

62:                                               ; preds = %54
  %63 = getelementptr inbounds %struct.sg_table, ptr %7, i32 0, i32 1
  %64 = load i32, ptr %63, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %115, label %66

66:                                               ; preds = %62
  %67 = load ptr, ptr %7, align 4
  br label %68

68:                                               ; preds = %82, %66
  %69 = phi i32 [ %84, %82 ], [ 0, %66 ]
  %70 = phi i32 [ %83, %82 ], [ %57, %66 ]
  %71 = phi ptr [ %85, %82 ], [ %67, %66 ]
  %72 = getelementptr inbounds %struct.scatterlist, ptr %71, i32 0, i32 3
  %73 = load i32, ptr %72, align 4
  %74 = getelementptr inbounds %struct.scatterlist, ptr %71, i32 0, i32 1
  %75 = load i32, ptr %74, align 4
  %76 = sub i32 %73, %75
  %77 = getelementptr inbounds %struct.scatterlist, ptr %71, i32 0, i32 4
  %78 = load i32, ptr %77, align 4
  %79 = add i32 %78, %75
  %80 = tail call fastcc i32 @etnaviv_context_map(ptr noundef nonnull %0, i32 noundef %70, i32 noundef %76, i32 noundef %79, i32 noundef 3) #6
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %68
  %83 = add i32 %79, %70
  %84 = add nuw i32 %69, 1
  %85 = tail call ptr @sg_next(ptr noundef %71) #6
  %86 = load i32, ptr %63, align 4
  %87 = icmp ult i32 %84, %86
  br i1 %87, label %68, label %115

88:                                               ; preds = %68
  %89 = sub i32 %70, %57
  %90 = or i32 %89, %57
  %91 = and i32 %90, 4095
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %88
  %94 = icmp eq i32 %70, %57
  br i1 %94, label %111, label %97

95:                                               ; preds = %88
  %96 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %57, i32 noundef %89, i32 noundef 4096) #7
  br label %111

97:                                               ; preds = %107, %93
  %98 = phi i32 [ %108, %107 ], [ %57, %93 ]
  %99 = phi i32 [ %109, %107 ], [ 0, %93 ]
  %100 = load ptr, ptr %9, align 4
  %101 = getelementptr inbounds %struct.etnaviv_iommu_global, ptr %100, i32 0, i32 2
  %102 = load ptr, ptr %101, align 4
  %103 = getelementptr inbounds %struct.etnaviv_iommu_ops, ptr %102, i32 0, i32 3
  %104 = load ptr, ptr %103, align 4
  %105 = tail call i32 %104(ptr noundef nonnull %0, i32 noundef %98, i32 noundef 4096) #6
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %111, label %107

107:                                              ; preds = %97
  %108 = add i32 %105, %98
  %109 = add i32 %105, %99
  %110 = icmp ult i32 %109, %89
  br i1 %110, label %97, label %111

111:                                              ; preds = %107, %97, %95, %93
  %112 = icmp slt i32 %80, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %111, %54
  %114 = phi i32 [ %80, %111 ], [ -22, %54 ]
  tail call void @drm_mm_remove_node(ptr noundef %40) #6
  br label %125

115:                                              ; preds = %111, %82, %62
  %116 = phi i32 [ %80, %111 ], [ 0, %62 ], [ 0, %82 ]
  %117 = getelementptr inbounds %struct.etnaviv_vram_mapping, ptr %3, i32 0, i32 2
  %118 = getelementptr inbounds %struct.etnaviv_iommu_context, ptr %0, i32 0, i32 3
  %119 = getelementptr inbounds %struct.etnaviv_iommu_context, ptr %0, i32 0, i32 3, i32 1
  %120 = load ptr, ptr %119, align 4
  store ptr %117, ptr %119, align 4
  store ptr %118, ptr %117, align 4
  %121 = getelementptr inbounds %struct.etnaviv_vram_mapping, ptr %3, i32 0, i32 2, i32 1
  store ptr %120, ptr %121, align 4
  store volatile ptr %117, ptr %120, align 4
  %122 = getelementptr inbounds %struct.etnaviv_iommu_context, ptr %0, i32 0, i32 5
  %123 = load i32, ptr %122, align 8
  %124 = add i32 %123, 1
  store i32 %124, ptr %122, align 8
  br label %125

125:                                              ; preds = %115, %113, %51, %32
  %126 = phi i32 [ %52, %51 ], [ %114, %113 ], [ %116, %115 ], [ 0, %32 ]
  tail call void @mutex_unlock(ptr noundef %8) #6
  ret i32 %126
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @etnaviv_iommu_find_iova(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.drm_mm_scan, align 8
  %5 = alloca %struct.list_head, align 8
  %6 = getelementptr inbounds %struct.etnaviv_iommu_context, ptr %0, i32 0, i32 4
  %7 = zext i32 %2 to i64
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %4) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(72) %4, i8 0, i32 72, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #6
  store i64 0, ptr %5, align 8, !annotation !8
  %8 = call i32 @drm_mm_insert_node_in_range(ptr noundef %6, ptr noundef %1, i64 noundef %7, i64 noundef 0, i32 noundef 0, i64 noundef 0, i64 noundef -1, i32 noundef 1) #6
  %9 = icmp eq i32 %8, -28
  br i1 %9, label %10, label %100

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %12 = getelementptr inbounds %struct.etnaviv_iommu_context, ptr %0, i32 0, i32 3
  br label %13

13:                                               ; preds = %97, %10
  %14 = phi i32 [ 1, %10 ], [ 3, %97 ]
  call void @drm_mm_scan_init_with_range(ptr noundef nonnull %4, ptr noundef %6, i64 noundef %7, i64 noundef 0, i32 noundef 0, i64 noundef 0, i64 noundef -1, i32 noundef %14) #6
  store volatile ptr %5, ptr %5, align 8
  store ptr %5, ptr %11, align 4
  %15 = load ptr, ptr %12, align 4
  %16 = icmp eq ptr %15, %12
  br i1 %16, label %38, label %17

17:                                               ; preds = %33, %13
  %18 = phi ptr [ %34, %33 ], [ %15, %13 ]
  %19 = getelementptr i8, ptr %18, i32 16
  %20 = getelementptr i8, ptr %18, i32 40
  %21 = load ptr, ptr %20, align 8
  %22 = icmp eq ptr %21, null
  br i1 %22, label %33, label %23

23:                                               ; preds = %17
  %24 = getelementptr i8, ptr %18, i32 128
  %25 = load i32, ptr %24, align 8
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %23
  %28 = getelementptr i8, ptr %18, i32 -8
  %29 = load ptr, ptr %5, align 8
  %30 = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  store ptr %28, ptr %30, align 4
  store ptr %29, ptr %28, align 4
  %31 = getelementptr i8, ptr %18, i32 -4
  store ptr %5, ptr %31, align 4
  store volatile ptr %28, ptr %5, align 8
  %32 = call zeroext i1 @drm_mm_scan_add_block(ptr noundef nonnull %4, ptr noundef %19) #6
  br i1 %32, label %48, label %33

33:                                               ; preds = %27, %23, %17
  %34 = load ptr, ptr %18, align 4
  %35 = icmp eq ptr %34, %12
  br i1 %35, label %36, label %17

36:                                               ; preds = %33
  %37 = load ptr, ptr %5, align 8
  br label %38

38:                                               ; preds = %36, %13
  %39 = phi ptr [ %37, %36 ], [ %5, %13 ]
  br label %40

40:                                               ; preds = %43, %38
  %41 = phi ptr [ %44, %43 ], [ %39, %38 ]
  %42 = icmp eq ptr %41, %5
  br i1 %42, label %100, label %43

43:                                               ; preds = %40
  %44 = load ptr, ptr %41, align 8
  %45 = getelementptr i8, ptr %41, i32 24
  %46 = call zeroext i1 @drm_mm_scan_remove_block(ptr noundef nonnull %4, ptr noundef %45) #6
  br i1 %46, label %47, label %40, !prof !9

47:                                               ; preds = %43
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_mmu.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 181, 0\0A.popsection", ""() #6, !srcloc !10
  unreachable

48:                                               ; preds = %27
  %49 = load ptr, ptr %5, align 8
  %50 = icmp eq ptr %49, %5
  br i1 %50, label %97, label %51

51:                                               ; preds = %61, %48
  %52 = phi ptr [ %53, %61 ], [ %49, %48 ]
  %53 = load ptr, ptr %52, align 8
  %54 = getelementptr i8, ptr %52, i32 24
  %55 = call zeroext i1 @drm_mm_scan_remove_block(ptr noundef nonnull %4, ptr noundef %54) #6
  br i1 %55, label %61, label %56

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.list_head, ptr %52, i32 0, i32 1
  %58 = load ptr, ptr %57, align 4
  %59 = load ptr, ptr %52, align 4
  %60 = getelementptr inbounds %struct.list_head, ptr %59, i32 0, i32 1
  store ptr %58, ptr %60, align 4
  store volatile ptr %59, ptr %58, align 4
  store volatile ptr %52, ptr %52, align 4
  store ptr %52, ptr %57, align 4
  br label %61

61:                                               ; preds = %56, %51
  %62 = icmp eq ptr %53, %5
  br i1 %62, label %63, label %51

63:                                               ; preds = %61
  %64 = load ptr, ptr %5, align 8
  %65 = icmp eq ptr %64, %5
  br i1 %65, label %97, label %66

66:                                               ; preds = %86, %63
  %67 = phi ptr [ %69, %86 ], [ %64, %63 ]
  %68 = getelementptr i8, ptr %67, i32 -8
  %69 = load ptr, ptr %67, align 8
  call fastcc void @etnaviv_iommu_remove_mapping(ptr noundef %0, ptr noundef %68)
  %70 = getelementptr i8, ptr %67, i32 20
  %71 = load ptr, ptr %70, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !11
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %71) #6, !srcloc !12
  %72 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %71, ptr %71, i32 1, ptr elementtype(i32) %71) #6, !srcloc !13
  %73 = extractvalue { i32, i32, i32 } %72, 0
  %74 = icmp eq i32 %73, 1
  br i1 %74, label %78, label %75

75:                                               ; preds = %66
  %76 = icmp sgt i32 %73, 0
  br i1 %76, label %86, label %77, !prof !14

77:                                               ; preds = %75
  call void @refcount_warn_saturate(ptr noundef %71, i32 noundef 3) #6
  br label %86

78:                                               ; preds = %66
  call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !15
  %79 = getelementptr inbounds %struct.etnaviv_iommu_context, ptr %71, i32 0, i32 6
  call void @etnaviv_cmdbuf_suballoc_unmap(ptr noundef %71, ptr noundef %79) #6
  %80 = getelementptr inbounds %struct.etnaviv_iommu_context, ptr %71, i32 0, i32 1
  %81 = load ptr, ptr %80, align 4
  %82 = getelementptr inbounds %struct.etnaviv_iommu_global, ptr %81, i32 0, i32 2
  %83 = load ptr, ptr %82, align 4
  %84 = getelementptr inbounds %struct.etnaviv_iommu_ops, ptr %83, i32 0, i32 1
  %85 = load ptr, ptr %84, align 4
  call void %85(ptr noundef %71) #6
  br label %86

86:                                               ; preds = %78, %77, %75
  store ptr null, ptr %70, align 4
  %87 = getelementptr i8, ptr %67, i32 8
  %88 = getelementptr i8, ptr %67, i32 12
  %89 = load ptr, ptr %88, align 4
  %90 = load ptr, ptr %87, align 4
  %91 = getelementptr inbounds %struct.list_head, ptr %90, i32 0, i32 1
  store ptr %89, ptr %91, align 4
  store volatile ptr %90, ptr %89, align 4
  store volatile ptr %87, ptr %87, align 4
  store ptr %87, ptr %88, align 4
  %92 = getelementptr inbounds %struct.list_head, ptr %67, i32 0, i32 1
  %93 = load ptr, ptr %92, align 4
  %94 = load ptr, ptr %67, align 4
  %95 = getelementptr inbounds %struct.list_head, ptr %94, i32 0, i32 1
  store ptr %93, ptr %95, align 4
  store volatile ptr %94, ptr %93, align 4
  store volatile ptr %67, ptr %67, align 4
  store ptr %67, ptr %92, align 4
  %96 = icmp eq ptr %69, %5
  br i1 %96, label %97, label %66

97:                                               ; preds = %86, %63, %48
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %4) #6
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %4) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(72) %4, i8 0, i32 72, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #6
  store i64 0, ptr %5, align 8, !annotation !8
  %98 = call i32 @drm_mm_insert_node_in_range(ptr noundef %6, ptr noundef %1, i64 noundef %7, i64 noundef 0, i32 noundef 0, i64 noundef 0, i64 noundef -1, i32 noundef 3) #6
  %99 = icmp eq i32 %98, -28
  br i1 %99, label %13, label %100

100:                                              ; preds = %97, %40, %3
  %101 = phi i32 [ %8, %3 ], [ -28, %40 ], [ %98, %97 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %4) #6
  ret i32 %101
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mm_remove_node(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @etnaviv_iommu_unmap_gem(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.etnaviv_vram_mapping, ptr %1, i32 0, i32 6
  %4 = load i32, ptr %3, align 8
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6, !prof !14

6:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 285, i32 noundef 9, ptr noundef null) #6
  br label %7

7:                                                ; preds = %6, %2
  %8 = getelementptr inbounds %struct.etnaviv_iommu_context, ptr %0, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %8) #6
  %9 = getelementptr inbounds %struct.etnaviv_vram_mapping, ptr %1, i32 0, i32 5, i32 3
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.etnaviv_iommu_context, ptr %0, i32 0, i32 4
  %12 = icmp eq ptr %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %7
  tail call fastcc void @etnaviv_iommu_remove_mapping(ptr noundef %0, ptr noundef %1)
  br label %14

14:                                               ; preds = %13, %7
  %15 = getelementptr inbounds %struct.etnaviv_vram_mapping, ptr %1, i32 0, i32 2
  %16 = getelementptr inbounds %struct.etnaviv_vram_mapping, ptr %1, i32 0, i32 2, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = load ptr, ptr %15, align 4
  %19 = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  store ptr %17, ptr %19, align 4
  store volatile ptr %18, ptr %17, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %15, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %16, align 4
  %20 = getelementptr inbounds %struct.etnaviv_iommu_context, ptr %0, i32 0, i32 5
  %21 = load i32, ptr %20, align 8
  %22 = add i32 %21, 1
  store i32 %22, ptr %20, align 8
  tail call void @mutex_unlock(ptr noundef %8) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @etnaviv_iommu_remove_mapping(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.etnaviv_vram_mapping, ptr %1, i32 0, i32 3
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.etnaviv_gem_object, ptr %4, i32 0, i32 9
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.sg_table, ptr %6, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %56, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.etnaviv_vram_mapping, ptr %1, i32 0, i32 5, i32 1
  %12 = load i64, ptr %11, align 8
  %13 = trunc i64 %12 to i32
  %14 = load ptr, ptr %6, align 4
  %15 = getelementptr inbounds %struct.etnaviv_iommu_context, ptr %0, i32 0, i32 1
  br label %16

16:                                               ; preds = %50, %10
  %17 = phi i32 [ 0, %10 ], [ %52, %50 ]
  %18 = phi i32 [ %13, %10 ], [ %51, %50 ]
  %19 = phi ptr [ %14, %10 ], [ %53, %50 ]
  %20 = getelementptr inbounds %struct.scatterlist, ptr %19, i32 0, i32 4
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.scatterlist, ptr %19, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = add i32 %23, %21
  %25 = or i32 %24, %18
  %26 = and i32 %25, 4095
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %16
  %29 = icmp eq i32 %24, 0
  br i1 %29, label %50, label %32

30:                                               ; preds = %16
  %31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %18, i32 noundef %24, i32 noundef 4096) #7
  br label %46

32:                                               ; preds = %42, %28
  %33 = phi i32 [ %43, %42 ], [ %18, %28 ]
  %34 = phi i32 [ %44, %42 ], [ 0, %28 ]
  %35 = load ptr, ptr %15, align 4
  %36 = getelementptr inbounds %struct.etnaviv_iommu_global, ptr %35, i32 0, i32 2
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.etnaviv_iommu_ops, ptr %37, i32 0, i32 3
  %39 = load ptr, ptr %38, align 4
  %40 = tail call i32 %39(ptr noundef %0, i32 noundef %33, i32 noundef 4096) #6
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %32
  %43 = add i32 %40, %33
  %44 = add i32 %40, %34
  %45 = icmp ult i32 %44, %24
  br i1 %45, label %32, label %46

46:                                               ; preds = %42, %32, %30
  %47 = and i32 %24, 4095
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %50, label %49, !prof !14

49:                                               ; preds = %46
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/etnaviv/etnaviv_mmu.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 116, 0\0A.popsection", ""() #6, !srcloc !16
  unreachable

50:                                               ; preds = %46, %28
  %51 = add i32 %24, %18
  %52 = add nuw i32 %17, 1
  %53 = tail call ptr @sg_next(ptr noundef %19) #6
  %54 = load i32, ptr %7, align 4
  %55 = icmp ult i32 %52, %54
  br i1 %55, label %16, label %56

56:                                               ; preds = %50, %2
  %57 = getelementptr inbounds %struct.etnaviv_vram_mapping, ptr %1, i32 0, i32 5
  tail call void @drm_mm_remove_node(ptr noundef %57) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @etnaviv_iommu_context_put(ptr noundef %0) local_unnamed_addr #0 {
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #6, !srcloc !12
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 1, ptr elementtype(i32) %0) #6, !srcloc !13
  %3 = extractvalue { i32, i32, i32 } %2, 0
  %4 = icmp eq i32 %3, 1
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = icmp sgt i32 %3, 0
  br i1 %6, label %16, label %7, !prof !14

7:                                                ; preds = %5
  tail call void @refcount_warn_saturate(ptr noundef %0, i32 noundef 3) #6
  br label %16

8:                                                ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !15
  %9 = getelementptr inbounds %struct.etnaviv_iommu_context, ptr %0, i32 0, i32 6
  tail call void @etnaviv_cmdbuf_suballoc_unmap(ptr noundef %0, ptr noundef %9) #6
  %10 = getelementptr inbounds %struct.etnaviv_iommu_context, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.etnaviv_iommu_global, ptr %11, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.etnaviv_iommu_ops, ptr %13, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  tail call void %15(ptr noundef %0) #6
  br label %16

16:                                               ; preds = %8, %7, %5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @etnaviv_iommu_context_init(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.etnaviv_iommu_global, ptr %0, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = tail call ptr @etnaviv_iommuv1_context_alloc(ptr noundef %0) #6
  br label %10

8:                                                ; preds = %2
  %9 = tail call ptr @etnaviv_iommuv2_context_alloc(ptr noundef %0) #6
  br label %10

10:                                               ; preds = %8, %6
  %11 = phi ptr [ %7, %6 ], [ %9, %8 ]
  %12 = icmp eq ptr %11, null
  br i1 %12, label %33, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.etnaviv_iommu_context, ptr %11, i32 0, i32 6
  %15 = getelementptr inbounds %struct.etnaviv_iommu_global, ptr %0, i32 0, i32 7
  %16 = load i32, ptr %15, align 4
  %17 = tail call i32 @etnaviv_cmdbuf_suballoc_map(ptr noundef %1, ptr noundef nonnull %11, ptr noundef %14, i32 noundef %16) #6
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %13
  %20 = load i32, ptr %3, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.etnaviv_iommu_context, ptr %11, i32 0, i32 6, i32 7
  %24 = load i32, ptr %23, align 4
  %25 = icmp ugt i32 %24, -2147483648
  br i1 %25, label %26, label %33

26:                                               ; preds = %22
  %27 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.1) #7
  tail call void @etnaviv_cmdbuf_suballoc_unmap(ptr noundef nonnull %11, ptr noundef %14) #6
  br label %28

28:                                               ; preds = %26, %13
  %29 = getelementptr inbounds %struct.etnaviv_iommu_global, ptr %0, i32 0, i32 2
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.etnaviv_iommu_ops, ptr %30, i32 0, i32 1
  %32 = load ptr, ptr %31, align 4
  tail call void %32(ptr noundef nonnull %11) #6
  br label %33

33:                                               ; preds = %28, %22, %19, %10
  %34 = phi ptr [ null, %28 ], [ null, %10 ], [ %11, %22 ], [ %11, %19 ]
  ret ptr %34
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @etnaviv_iommuv1_context_alloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @etnaviv_iommuv2_context_alloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @etnaviv_cmdbuf_suballoc_map(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @etnaviv_cmdbuf_suballoc_unmap(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @etnaviv_iommu_restore(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.etnaviv_iommu_context, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.etnaviv_iommu_global, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.etnaviv_iommu_ops, ptr %6, i32 0, i32 6
  %8 = load ptr, ptr %7, align 4
  tail call void %8(ptr noundef %0, ptr noundef %1) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @etnaviv_iommu_get_suballoc_va(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.etnaviv_iommu_context, ptr %0, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %6) #6
  %7 = getelementptr inbounds %struct.etnaviv_vram_mapping, ptr %1, i32 0, i32 6
  %8 = load i32, ptr %7, align 8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %5
  %11 = add i32 %8, 1
  store i32 %11, ptr %7, align 8
  br label %43

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.etnaviv_iommu_context, ptr %0, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.etnaviv_iommu_global, ptr %14, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %12
  %19 = sub i32 %3, %2
  %20 = getelementptr inbounds %struct.etnaviv_vram_mapping, ptr %1, i32 0, i32 7
  store i32 %19, ptr %20, align 4
  br label %37

21:                                               ; preds = %12
  %22 = getelementptr inbounds %struct.etnaviv_vram_mapping, ptr %1, i32 0, i32 5
  %23 = tail call fastcc i32 @etnaviv_iommu_find_iova(ptr noundef %0, ptr noundef %22, i32 noundef %4)
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %43, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.etnaviv_vram_mapping, ptr %1, i32 0, i32 5, i32 1
  %27 = load i64, ptr %26, align 8
  %28 = trunc i64 %27 to i32
  %29 = getelementptr inbounds %struct.etnaviv_vram_mapping, ptr %1, i32 0, i32 7
  store i32 %28, ptr %29, align 4
  %30 = tail call fastcc i32 @etnaviv_context_map(ptr noundef %0, i32 noundef %28, i32 noundef %3, i32 noundef %4, i32 noundef 1)
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  tail call void @drm_mm_remove_node(ptr noundef %22) #6
  br label %43

33:                                               ; preds = %25
  %34 = getelementptr inbounds %struct.etnaviv_iommu_context, ptr %0, i32 0, i32 5
  %35 = load i32, ptr %34, align 8
  %36 = add i32 %35, 1
  store i32 %36, ptr %34, align 8
  br label %37

37:                                               ; preds = %33, %18
  %38 = getelementptr inbounds %struct.etnaviv_vram_mapping, ptr %1, i32 0, i32 2
  %39 = getelementptr inbounds %struct.etnaviv_iommu_context, ptr %0, i32 0, i32 3
  %40 = getelementptr inbounds %struct.etnaviv_iommu_context, ptr %0, i32 0, i32 3, i32 1
  %41 = load ptr, ptr %40, align 4
  store ptr %38, ptr %40, align 4
  store ptr %39, ptr %38, align 4
  %42 = getelementptr inbounds %struct.etnaviv_vram_mapping, ptr %1, i32 0, i32 2, i32 1
  store ptr %41, ptr %42, align 4
  store volatile ptr %38, ptr %41, align 4
  store i32 1, ptr %7, align 8
  br label %43

43:                                               ; preds = %37, %32, %21, %10
  %44 = phi i32 [ 0, %10 ], [ 0, %37 ], [ %30, %32 ], [ %23, %21 ]
  tail call void @mutex_unlock(ptr noundef %6) #6
  ret i32 %44
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @etnaviv_context_map(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = alloca i32, align 4
  store i32 %2, ptr %6, align 4
  %7 = or i32 %2, %1
  %8 = or i32 %7, %3
  %9 = and i32 %8, 4095
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %5
  %12 = icmp eq i32 %3, 0
  br i1 %12, label %56, label %13

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.etnaviv_iommu_context, ptr %0, i32 0, i32 1
  br label %17

15:                                               ; preds = %5
  %16 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %1, ptr noundef nonnull %6, i32 noundef %3, i32 noundef 4096) #7
  br label %58

17:                                               ; preds = %28, %13
  %18 = phi i32 [ %1, %13 ], [ %29, %28 ]
  %19 = phi i32 [ %3, %13 ], [ %31, %28 ]
  %20 = phi i32 [ %2, %13 ], [ %30, %28 ]
  %21 = load ptr, ptr %14, align 4
  %22 = getelementptr inbounds %struct.etnaviv_iommu_global, ptr %21, i32 0, i32 2
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.etnaviv_iommu_ops, ptr %23, i32 0, i32 2
  %25 = load ptr, ptr %24, align 4
  %26 = tail call i32 %25(ptr noundef %0, i32 noundef %18, i32 noundef %20, i32 noundef 4096, i32 noundef %4) #6
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %17
  %29 = add i32 %18, 4096
  %30 = add i32 %20, 4096
  %31 = add i32 %19, -4096
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %56, label %17

33:                                               ; preds = %17
  store i32 %20, ptr %6, align 4
  %34 = sub i32 %3, %19
  %35 = or i32 %34, %1
  %36 = and i32 %35, 4095
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = icmp eq i32 %19, %3
  br i1 %39, label %58, label %42

40:                                               ; preds = %33
  %41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %1, i32 noundef %34, i32 noundef 4096) #7
  br label %58

42:                                               ; preds = %52, %38
  %43 = phi i32 [ %53, %52 ], [ %1, %38 ]
  %44 = phi i32 [ %54, %52 ], [ 0, %38 ]
  %45 = load ptr, ptr %14, align 4
  %46 = getelementptr inbounds %struct.etnaviv_iommu_global, ptr %45, i32 0, i32 2
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr inbounds %struct.etnaviv_iommu_ops, ptr %47, i32 0, i32 3
  %49 = load ptr, ptr %48, align 4
  %50 = tail call i32 %49(ptr noundef %0, i32 noundef %43, i32 noundef 4096) #6
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %58, label %52

52:                                               ; preds = %42
  %53 = add i32 %50, %43
  %54 = add i32 %50, %44
  %55 = icmp ult i32 %54, %34
  br i1 %55, label %42, label %58

56:                                               ; preds = %28, %11
  %57 = phi i32 [ %2, %11 ], [ %30, %28 ]
  store i32 %57, ptr %6, align 4
  br label %58

58:                                               ; preds = %56, %52, %42, %40, %38, %15
  %59 = phi i32 [ -22, %15 ], [ %26, %38 ], [ %26, %40 ], [ 0, %56 ], [ %26, %42 ], [ %26, %52 ]
  ret i32 %59
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @etnaviv_iommu_put_suballoc_va(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.etnaviv_vram_mapping, ptr %1, i32 0, i32 5
  %4 = getelementptr inbounds %struct.etnaviv_iommu_context, ptr %0, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %4) #6
  %5 = getelementptr inbounds %struct.etnaviv_vram_mapping, ptr %1, i32 0, i32 6
  %6 = load i32, ptr %5, align 8
  %7 = add i32 %6, -1
  store i32 %7, ptr %5, align 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %52

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.etnaviv_iommu_context, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.etnaviv_iommu_global, ptr %11, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %52, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.etnaviv_vram_mapping, ptr %1, i32 0, i32 5, i32 1
  %17 = load i64, ptr %16, align 8
  %18 = trunc i64 %17 to i32
  %19 = getelementptr inbounds %struct.etnaviv_vram_mapping, ptr %1, i32 0, i32 5, i32 2
  %20 = load i64, ptr %19, align 8
  %21 = trunc i64 %20 to i32
  %22 = or i64 %20, %17
  %23 = and i64 %22, 4095
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %15
  %26 = icmp eq i32 %21, 0
  br i1 %26, label %51, label %27

27:                                               ; preds = %25
  %28 = getelementptr inbounds %struct.etnaviv_iommu_global, ptr %11, i32 0, i32 2
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.etnaviv_iommu_ops, ptr %29, i32 0, i32 3
  %31 = load ptr, ptr %30, align 4
  %32 = tail call i32 %31(ptr noundef %0, i32 noundef %18, i32 noundef 4096) #6
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %51, label %36

34:                                               ; preds = %15
  %35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %18, i32 noundef %21, i32 noundef 4096) #7
  br label %51

36:                                               ; preds = %42, %27
  %37 = phi i32 [ %49, %42 ], [ %32, %27 ]
  %38 = phi i32 [ %40, %42 ], [ 0, %27 ]
  %39 = phi i32 [ %43, %42 ], [ %18, %27 ]
  %40 = add i32 %37, %38
  %41 = icmp ult i32 %40, %21
  br i1 %41, label %42, label %51

42:                                               ; preds = %36
  %43 = add i32 %37, %39
  %44 = load ptr, ptr %10, align 4
  %45 = getelementptr inbounds %struct.etnaviv_iommu_global, ptr %44, i32 0, i32 2
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr inbounds %struct.etnaviv_iommu_ops, ptr %46, i32 0, i32 3
  %48 = load ptr, ptr %47, align 4
  %49 = tail call i32 %48(ptr noundef %0, i32 noundef %43, i32 noundef 4096) #6
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %36

51:                                               ; preds = %42, %36, %34, %27, %25
  tail call void @drm_mm_remove_node(ptr noundef %3) #6
  br label %52

52:                                               ; preds = %51, %9, %2
  tail call void @mutex_unlock(ptr noundef %4) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @etnaviv_iommu_dump_size(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.etnaviv_iommu_context, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.etnaviv_iommu_global, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.etnaviv_iommu_ops, ptr %5, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 %7(ptr noundef %0) #6
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @etnaviv_iommu_dump(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.etnaviv_iommu_context, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.etnaviv_iommu_global, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.etnaviv_iommu_ops, ptr %6, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  tail call void %8(ptr noundef %0, ptr noundef %1) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @etnaviv_iommu_global_init(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 4, i32 7
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 268435456
  %10 = icmp eq i32 %9, 0
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = getelementptr inbounds %struct.etnaviv_drm_private, ptr %4, i32 0, i32 4
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %27, label %16

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.etnaviv_iommu_global, ptr %14, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, %12
  br i1 %19, label %23, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.etnaviv_gpu, ptr %0, i32 0, i32 2
  %22 = load ptr, ptr %21, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.2) #7
  br label %53

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.etnaviv_iommu_global, ptr %14, i32 0, i32 3
  %25 = load i32, ptr %24, align 4
  %26 = add i32 %25, 1
  store i32 %26, ptr %24, align 4
  br label %53

27:                                               ; preds = %1
  %28 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %29 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %28, i32 noundef 3520, i32 noundef 124) #8
  %30 = icmp eq ptr %29, null
  br i1 %30, label %53, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.etnaviv_iommu_global, ptr %29, i32 0, i32 6
  %33 = tail call ptr @dma_alloc_attrs(ptr noundef %6, i32 noundef 4096, ptr noundef %32, i32 noundef 3264, i32 noundef 4) #6
  %34 = getelementptr inbounds %struct.etnaviv_iommu_global, ptr %29, i32 0, i32 5
  store ptr %33, ptr %34, align 4
  %35 = icmp eq ptr %33, null
  br i1 %35, label %52, label %36

36:                                               ; preds = %31
  %37 = tail call ptr @__memset32(ptr noundef nonnull %33, i32 noundef -559065686, i32 noundef 4096) #6
  br i1 %10, label %43, label %38

38:                                               ; preds = %36
  %39 = getelementptr inbounds %struct.etnaviv_iommu_global, ptr %29, i32 0, i32 8
  %40 = getelementptr inbounds %struct.etnaviv_iommu_global, ptr %29, i32 0, i32 8, i32 0, i32 1
  %41 = tail call ptr @dma_alloc_attrs(ptr noundef %6, i32 noundef 4096, ptr noundef %40, i32 noundef 3264, i32 noundef 4) #6
  store ptr %41, ptr %39, align 8
  %42 = icmp eq ptr %41, null
  br i1 %42, label %49, label %43

43:                                               ; preds = %38, %36
  %44 = phi ptr [ @etnaviv_iommuv1_ops, %36 ], [ @etnaviv_iommuv2_ops, %38 ]
  store ptr %6, ptr %29, align 8
  %45 = getelementptr inbounds %struct.etnaviv_iommu_global, ptr %29, i32 0, i32 1
  store i32 %12, ptr %45, align 4
  %46 = getelementptr inbounds %struct.etnaviv_iommu_global, ptr %29, i32 0, i32 3
  store i32 1, ptr %46, align 4
  %47 = getelementptr inbounds %struct.etnaviv_iommu_global, ptr %29, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %47, ptr noundef nonnull @.str.3, ptr noundef nonnull @etnaviv_iommu_global_init.__key) #6
  %48 = getelementptr inbounds %struct.etnaviv_iommu_global, ptr %29, i32 0, i32 2
  store ptr %44, ptr %48, align 8
  store ptr %29, ptr %13, align 4
  br label %53

49:                                               ; preds = %38
  %50 = load ptr, ptr %34, align 4
  %51 = load i32, ptr %32, align 8
  tail call void @dma_free_attrs(ptr noundef %6, i32 noundef 4096, ptr noundef %50, i32 noundef %51, i32 noundef 4) #6
  br label %52

52:                                               ; preds = %49, %31
  tail call void @kfree(ptr noundef nonnull %29) #6
  br label %53

53:                                               ; preds = %52, %43, %27, %23, %20
  %54 = phi i32 [ -6, %20 ], [ 0, %23 ], [ 0, %43 ], [ -12, %52 ], [ -12, %27 ]
  ret i32 %54
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @etnaviv_iommu_global_fini(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.etnaviv_drm_private, ptr %4, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.etnaviv_iommu_global, ptr %6, i32 0, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, -1
  store i32 %9, ptr %7, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %28

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.etnaviv_iommu_global, ptr %6, i32 0, i32 8
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %6, align 4
  %17 = getelementptr inbounds %struct.etnaviv_iommu_global, ptr %6, i32 0, i32 8, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  tail call void @dma_free_attrs(ptr noundef %16, i32 noundef 4096, ptr noundef nonnull %13, i32 noundef %18, i32 noundef 4) #6
  br label %19

19:                                               ; preds = %15, %11
  %20 = getelementptr inbounds %struct.etnaviv_iommu_global, ptr %6, i32 0, i32 5
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = load ptr, ptr %6, align 4
  %25 = getelementptr inbounds %struct.etnaviv_iommu_global, ptr %6, i32 0, i32 6
  %26 = load i32, ptr %25, align 4
  tail call void @dma_free_attrs(ptr noundef %24, i32 noundef 4096, ptr noundef nonnull %21, i32 noundef %26, i32 noundef 4) #6
  br label %27

27:                                               ; preds = %23, %19
  tail call void @kfree(ptr noundef %6) #6
  store ptr null, ptr %5, align 4
  br label %28

28:                                               ; preds = %27, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mm_insert_node_in_range(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_mm_scan_add_block(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_mm_scan_remove_block(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mm_scan_init_with_range(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__memset32(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { cold nounwind }
attributes #8 = { nounwind allocsize(2) }

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
!10 = !{i64 2155216147, i64 2155216649, i64 2155216184, i64 2155216240, i64 2155216274, i64 2155216298, i64 2155216339, i64 2155216360, i64 2155216388, i64 2155216422}
!11 = !{i64 2148287000}
!12 = !{i64 620492, i64 2148122058, i64 2148122084, i64 2148122131, i64 2148122153, i64 2148122181, i64 2148122201}
!13 = !{i64 2148189135, i64 2148189167, i64 2148189196, i64 2148189230, i64 2148189261, i64 2148189284}
!14 = !{!"branch_weights", i32 2000, i32 1}
!15 = !{i64 2149313995}
!16 = !{i64 2155202587, i64 2155203089, i64 2155202624, i64 2155202680, i64 2155202714, i64 2155202738, i64 2155202779, i64 2155202800, i64 2155202828, i64 2155202862}
