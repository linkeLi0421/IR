; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nouveau_vmm.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nouveau_vmm.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nouveau_vma = type { ptr, i32, %struct.list_head, i64, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.nouveau_vmm = type { ptr, %struct.nvif_vmm, ptr }
%struct.nvif_vmm = type { %struct.nvif_object, i64, i64, ptr, i32 }
%struct.nvif_object = type { ptr, ptr, ptr, i32, i32, ptr, %struct.anon }
%struct.anon = type { ptr, i64 }
%struct.nvif_vma = type { i64, i64 }
%struct.nouveau_bo = type { %struct.ttm_buffer_object, %struct.ttm_placement, i32, [3 x %struct.ttm_place], [3 x %struct.ttm_place], i8, %struct.ttm_bo_kmap_obj, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, i8, i64, %struct.list_head, i24, i32, ptr }
%struct.ttm_buffer_object = type { %struct.drm_gem_object, ptr, i32, i32, ptr, %struct.kref, ptr, ptr, i8, %struct.list_head, %struct.list_head, ptr, i32, i32, ptr }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i32, i32, ptr, ptr, ptr, %struct.dma_resv, ptr }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root = type { ptr }
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, ptr, ptr }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.8 }
%union.anon.8 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.seqcount_ww_mutex = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.ttm_placement = type { i32, ptr, i32, ptr }
%struct.ttm_place = type { i32, i32, i32, i32 }
%struct.ttm_bo_kmap_obj = type { ptr, ptr, i32, ptr }
%struct.ttm_resource = type { i32, i32, i32, i32, %struct.ttm_bus_placement }
%struct.ttm_bus_placement = type { ptr, i32, i8, i32 }
%struct.nouveau_mem = type { %struct.ttm_resource, ptr, i8, i8, %struct.nvif_mem, [2 x %struct.nvif_vma] }
%struct.nvif_mem = type { %struct.nvif_object, i8, i8, i64, i64 }
%struct.nouveau_cli = type { %struct.nvif_client, ptr, %struct.mutex, %struct.nvif_device, %struct.nvif_mmu, %struct.nouveau_vmm, %struct.nouveau_vmm, ptr, %struct.list_head, ptr, %struct.list_head, %struct.list_head, [32 x i8], %struct.work_struct, %struct.list_head, %struct.mutex }
%struct.nvif_client = type { %struct.nvif_object, ptr, i64, i8 }
%struct.nvif_device = type { %struct.nvif_object, %struct.nv_device_info_v0, ptr, i32, %struct.nvif_user }
%struct.nv_device_info_v0 = type { i8, i8, i16, i8, i8, [2 x i8], i64, i64, [16 x i8], [64 x i8] }
%struct.nvif_user = type { ptr, %struct.nvif_object }
%struct.nvif_mmu = type { %struct.nvif_object, i8, i8, i8, i8, i16, i32, ptr, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }

@.str = private unnamed_addr constant [7 x i8] c"drmVmm\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nouveau_vma_unmap(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.nouveau_vma, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8
  %7 = getelementptr inbounds %struct.nouveau_vmm, ptr %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.nouveau_vma, ptr %0, i32 0, i32 3
  %9 = load i64, ptr %8, align 8
  %10 = tail call i32 @nvif_vmm_unmap(ptr noundef %7, i64 noundef %9) #6
  store ptr null, ptr %2, align 8
  br label %11

11:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_vmm_unmap(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nouveau_vma_map(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.nvif_vma, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #6
  %4 = getelementptr inbounds %struct.nouveau_vma, ptr %0, i32 0, i32 3
  %5 = load i64, ptr %4, align 8
  store i64 %5, ptr %3, align 8
  %6 = getelementptr inbounds %struct.nvif_vma, ptr %3, i32 0, i32 1
  store i64 0, ptr %6, align 8
  %7 = load ptr, ptr %0, align 8
  %8 = getelementptr inbounds %struct.nouveau_vmm, ptr %7, i32 0, i32 1
  %9 = call i32 @nouveau_mem_map(ptr noundef %1, ptr noundef %8, ptr noundef nonnull %3) #6
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.nouveau_vma, ptr %0, i32 0, i32 4
  store ptr %1, ptr %12, align 8
  br label %13

13:                                               ; preds = %11, %2
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #6
  ret i32 %9
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_mem_map(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local ptr @nouveau_vma_find(ptr noundef readonly %0, ptr noundef readnone %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.nouveau_bo, ptr %0, i32 0, i32 14
  br label %4

4:                                                ; preds = %8, %2
  %5 = phi ptr [ %3, %2 ], [ %6, %8 ]
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, %3
  br i1 %7, label %14, label %8

8:                                                ; preds = %4
  %9 = getelementptr i8, ptr %6, i32 -8
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, %1
  br i1 %11, label %12, label %4

12:                                               ; preds = %8
  %13 = getelementptr i8, ptr %6, i32 -8
  br label %14

14:                                               ; preds = %12, %4
  %15 = phi ptr [ %13, %12 ], [ null, %4 ]
  ret ptr %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nouveau_vma_del(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.nvif_vma, align 8
  %3 = load ptr, ptr %0, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %25, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.nouveau_vma, ptr %3, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = add i32 %7, -1
  store i32 %8, ptr %6, align 4
  %9 = icmp slt i32 %8, 1
  br i1 %9, label %10, label %25

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.nouveau_vma, ptr %3, i32 0, i32 3
  %12 = load i64, ptr %11, align 8
  %13 = icmp eq i64 %12, -1
  br i1 %13, label %18, label %14, !prof !8

14:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #6
  store i64 %12, ptr %2, align 8
  %15 = getelementptr inbounds %struct.nvif_vma, ptr %2, i32 0, i32 1
  store i64 1, ptr %15, align 8
  %16 = load ptr, ptr %3, align 8
  %17 = getelementptr inbounds %struct.nouveau_vmm, ptr %16, i32 0, i32 1
  call void @nvif_vmm_put(ptr noundef %17, ptr noundef nonnull %2) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #6
  br label %18

18:                                               ; preds = %14, %10
  %19 = getelementptr inbounds %struct.nouveau_vma, ptr %3, i32 0, i32 2
  %20 = getelementptr inbounds %struct.nouveau_vma, ptr %3, i32 0, i32 2, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = load ptr, ptr %19, align 4
  %23 = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  store ptr %21, ptr %23, align 4
  store volatile ptr %22, ptr %21, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %19, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %20, align 4
  %24 = load ptr, ptr %0, align 4
  call void @kfree(ptr noundef %24) #6
  br label %25

25:                                               ; preds = %18, %5, %1
  store ptr null, ptr %0, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvif_vmm_put(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nouveau_vma_new(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.nvif_vma, align 8
  %5 = alloca %struct.nvif_vma, align 8
  %6 = alloca %struct.nvif_vma, align 8
  %7 = getelementptr inbounds %struct.ttm_buffer_object, ptr %0, i32 0, i32 6
  %8 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i32 16, i1 false), !annotation !9
  %9 = getelementptr inbounds %struct.nouveau_bo, ptr %0, i32 0, i32 14
  br label %10

10:                                               ; preds = %15, %3
  %11 = phi ptr [ %9, %3 ], [ %12, %15 ]
  %12 = load ptr, ptr %11, align 8
  %13 = icmp eq ptr %12, %9
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  store ptr null, ptr %2, align 4
  br label %26

15:                                               ; preds = %10
  %16 = getelementptr i8, ptr %12, i32 -8
  %17 = load ptr, ptr %16, align 8
  %18 = icmp eq ptr %17, %1
  br i1 %18, label %19, label %10

19:                                               ; preds = %15
  %20 = getelementptr i8, ptr %12, i32 -8
  store ptr %20, ptr %2, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %19
  %23 = getelementptr i8, ptr %12, i32 -4
  %24 = load i32, ptr %23, align 4
  %25 = add i32 %24, 1
  store i32 %25, ptr %23, align 4
  br label %101

26:                                               ; preds = %19, %14
  %27 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %28 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %27, i32 noundef 3264, i32 noundef 32) #7
  store ptr %28, ptr %2, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %101, label %30

30:                                               ; preds = %26
  store ptr %1, ptr %28, align 8
  %31 = getelementptr inbounds %struct.nouveau_vma, ptr %28, i32 0, i32 1
  store i32 1, ptr %31, align 4
  %32 = getelementptr inbounds %struct.nouveau_vma, ptr %28, i32 0, i32 3
  store i64 -1, ptr %32, align 8
  %33 = getelementptr inbounds %struct.nouveau_vma, ptr %28, i32 0, i32 4
  store ptr null, ptr %33, align 8
  %34 = getelementptr inbounds %struct.nouveau_vma, ptr %28, i32 0, i32 5
  store ptr null, ptr %34, align 4
  %35 = getelementptr inbounds %struct.nouveau_vma, ptr %28, i32 0, i32 2
  %36 = getelementptr inbounds %struct.nouveau_bo, ptr %0, i32 0, i32 14, i32 1
  %37 = load ptr, ptr %36, align 4
  store ptr %35, ptr %36, align 4
  store ptr %9, ptr %35, align 8
  %38 = getelementptr inbounds %struct.nouveau_vma, ptr %28, i32 0, i32 2, i32 1
  store ptr %37, ptr %38, align 4
  store volatile ptr %35, ptr %37, align 4
  %39 = load ptr, ptr %7, align 4
  %40 = getelementptr inbounds %struct.ttm_resource, ptr %39, i32 0, i32 2
  %41 = load i32, ptr %40, align 4
  %42 = icmp eq i32 %41, 0
  %43 = getelementptr inbounds %struct.nouveau_mem, ptr %8, i32 0, i32 4, i32 2
  %44 = load i8, ptr %43, align 1
  br i1 %42, label %67, label %45

45:                                               ; preds = %30
  %46 = zext i8 %44 to i32
  %47 = getelementptr inbounds %struct.nouveau_bo, ptr %0, i32 0, i32 15
  %48 = load i32, ptr %47, align 8
  %49 = lshr i32 %48, 1
  %50 = and i32 %49, 31
  %51 = icmp eq i32 %50, %46
  br i1 %51, label %52, label %67

52:                                               ; preds = %45
  %53 = getelementptr inbounds %struct.nouveau_vmm, ptr %1, i32 0, i32 1
  %54 = getelementptr inbounds %struct.nouveau_mem, ptr %8, i32 0, i32 4, i32 4
  %55 = load i64, ptr %54, align 8
  %56 = call i32 @nvif_vmm_get(ptr noundef %53, i32 noundef 2, i1 noundef zeroext false, i8 noundef zeroext %44, i8 noundef zeroext 0, i64 noundef %55, ptr noundef nonnull %6) #6
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %76

58:                                               ; preds = %52
  %59 = load i64, ptr %6, align 8
  store i64 %59, ptr %32, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #6
  store i64 %59, ptr %5, align 8
  %60 = getelementptr inbounds %struct.nvif_vma, ptr %5, i32 0, i32 1
  store i64 0, ptr %60, align 8
  %61 = load ptr, ptr %28, align 8
  %62 = getelementptr inbounds %struct.nouveau_vmm, ptr %61, i32 0, i32 1
  %63 = call i32 @nouveau_mem_map(ptr noundef %8, ptr noundef %62, ptr noundef nonnull %5) #6
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %58
  store ptr %8, ptr %33, align 8
  br label %66

66:                                               ; preds = %65, %58
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #6
  br label %73

67:                                               ; preds = %45, %30
  %68 = getelementptr inbounds %struct.nouveau_vmm, ptr %1, i32 0, i32 1
  %69 = getelementptr inbounds %struct.nouveau_mem, ptr %8, i32 0, i32 4, i32 4
  %70 = load i64, ptr %69, align 8
  %71 = call i32 @nvif_vmm_get(ptr noundef %68, i32 noundef 1, i1 noundef zeroext false, i8 noundef zeroext %44, i8 noundef zeroext 0, i64 noundef %70, ptr noundef nonnull %6) #6
  %72 = load i64, ptr %6, align 8
  store i64 %72, ptr %32, align 8
  br label %73

73:                                               ; preds = %67, %66
  %74 = phi i32 [ %63, %66 ], [ %71, %67 ]
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %101, label %76

76:                                               ; preds = %73, %52
  %77 = phi i32 [ %74, %73 ], [ %56, %52 ]
  %78 = load ptr, ptr %2, align 4
  %79 = icmp eq ptr %78, null
  br i1 %79, label %100, label %80

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.nouveau_vma, ptr %78, i32 0, i32 1
  %82 = load i32, ptr %81, align 4
  %83 = add i32 %82, -1
  store i32 %83, ptr %81, align 4
  %84 = icmp slt i32 %83, 1
  br i1 %84, label %85, label %100

85:                                               ; preds = %80
  %86 = getelementptr inbounds %struct.nouveau_vma, ptr %78, i32 0, i32 3
  %87 = load i64, ptr %86, align 8
  %88 = icmp eq i64 %87, -1
  br i1 %88, label %93, label %89, !prof !8

89:                                               ; preds = %85
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #6
  store i64 %87, ptr %4, align 8
  %90 = getelementptr inbounds %struct.nvif_vma, ptr %4, i32 0, i32 1
  store i64 1, ptr %90, align 8
  %91 = load ptr, ptr %78, align 8
  %92 = getelementptr inbounds %struct.nouveau_vmm, ptr %91, i32 0, i32 1
  call void @nvif_vmm_put(ptr noundef %92, ptr noundef nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #6
  br label %93

93:                                               ; preds = %89, %85
  %94 = getelementptr inbounds %struct.nouveau_vma, ptr %78, i32 0, i32 2
  %95 = getelementptr inbounds %struct.nouveau_vma, ptr %78, i32 0, i32 2, i32 1
  %96 = load ptr, ptr %95, align 4
  %97 = load ptr, ptr %94, align 4
  %98 = getelementptr inbounds %struct.list_head, ptr %97, i32 0, i32 1
  store ptr %96, ptr %98, align 4
  store volatile ptr %97, ptr %96, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %94, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %95, align 4
  %99 = load ptr, ptr %2, align 4
  call void @kfree(ptr noundef %99) #6
  br label %100

100:                                              ; preds = %93, %80, %76
  store ptr null, ptr %2, align 4
  br label %101

101:                                              ; preds = %100, %73, %26, %22
  %102 = phi i32 [ 0, %22 ], [ -12, %26 ], [ %77, %100 ], [ 0, %73 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #6
  ret i32 %102
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_vmm_get(ptr noundef, i32 noundef, i1 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nouveau_vmm_fini(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.nouveau_vmm, ptr %0, i32 0, i32 1
  tail call void @nvif_vmm_dtor(ptr noundef %2) #6
  store ptr null, ptr %0, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvif_vmm_dtor(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nouveau_vmm_init(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.nouveau_cli, ptr %0, i32 0, i32 4
  %5 = getelementptr inbounds %struct.nouveau_vmm, ptr %2, i32 0, i32 1
  %6 = tail call i32 @nvif_vmm_ctor(ptr noundef %4, ptr noundef nonnull @.str, i32 noundef %1, i1 noundef zeroext false, i64 noundef 4096, i64 noundef 0, ptr noundef null, i32 noundef 0, ptr noundef %5) #6
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %3
  store ptr %0, ptr %2, align 8
  br label %9

9:                                                ; preds = %8, %3
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_vmm_ctor(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i64 noundef, i64 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind allocsize(2) }

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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{!"auto-init"}
