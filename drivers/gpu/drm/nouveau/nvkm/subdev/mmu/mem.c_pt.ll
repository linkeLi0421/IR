; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/mem.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/mem.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_memory_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_mem = type { %struct.nvkm_memory, i32, ptr, i64, ptr, %union.anon.132 }
%struct.nvkm_memory = type { ptr, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%union.anon.132 = type { ptr }
%struct.nvkm_mmu = type { ptr, %struct.nvkm_subdev, i8, i32, [4 x %struct.anon.123], i32, [16 x %struct.anon.124], ptr, %struct.anon.125, %struct.anon.125, %struct.mutex, %struct.nvkm_device_oclass }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.anon.123 = type { i8, i64 }
%struct.anon.124 = type { i8, i8 }
%struct.anon.125 = type { %struct.mutex, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_device_oclass = type { ptr, %struct.nvkm_sclass }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.nvif_mem_ram_v0 = type { i8, [7 x i8], ptr, ptr }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.122, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.anon.122 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvkm_mmu_func = type { ptr, i8, %struct.anon, %struct.anon.0, %struct.anon.1, ptr, i8 }
%struct.anon = type { %struct.nvkm_sclass }
%struct.anon.0 = type { %struct.nvkm_sclass, ptr, ptr }
%struct.anon.1 = type { %struct.nvkm_sclass, ptr, i8, i32 }
%struct.nvkm_vmm_map = type { ptr, i64, ptr, ptr, ptr, ptr, i64, ptr, ptr, i64, i64, i64 }

@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@nvkm_mem_dma = internal constant %struct.nvkm_memory_func { ptr @nvkm_mem_dtor, ptr @nvkm_mem_target, ptr @nvkm_mem_page, ptr null, ptr @nvkm_mem_addr, ptr @nvkm_mem_size, ptr null, ptr null, ptr null, ptr @nvkm_mem_map_dma }, align 4
@nvkm_mem_sgl = internal constant %struct.nvkm_memory_func { ptr @nvkm_mem_dtor, ptr @nvkm_mem_target, ptr @nvkm_mem_page, ptr null, ptr @nvkm_mem_addr, ptr @nvkm_mem_size, ptr null, ptr null, ptr null, ptr @nvkm_mem_map_sgl }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_mem_map_host(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.nvkm_mem, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %15, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.nvkm_mem, ptr %0, i32 0, i32 3
  %8 = load i64, ptr %7, align 8
  %9 = trunc i64 %8 to i32
  %10 = load i32, ptr @pgprot_kernel, align 4
  %11 = or i32 %10, 512
  %12 = tail call ptr @vmap(ptr noundef nonnull %4, i32 noundef %9, i32 noundef 4, i32 noundef %11) #10
  store ptr %12, ptr %1, align 4
  %13 = icmp eq ptr %12, null
  %14 = select i1 %13, i32 -14, i32 0
  br label %15

15:                                               ; preds = %6, %2
  %16 = phi i32 [ %14, %6 ], [ -22, %2 ]
  ret i32 %16
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vmap(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_mem_new_type(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %2, i64 noundef %3, ptr noundef %4, i32 noundef %5, ptr nocapture noundef writeonly %6) local_unnamed_addr #0 {
  %8 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #10
  store ptr null, ptr %8, align 4
  %9 = getelementptr %struct.nvkm_mmu, ptr %0, i32 0, i32 6, i32 %1
  %10 = load i8, ptr %9, align 2
  %11 = and i8 %10, 1
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %103

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.nvkm_mmu, ptr %0, i32 0, i32 1, i32 1
  %15 = and i8 %10, -64
  %16 = icmp eq i8 %15, 64
  %17 = select i1 %16, i32 2, i32 3
  %18 = icmp eq i8 %2, 12
  br i1 %18, label %19, label %109

19:                                               ; preds = %13
  %20 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %21 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %20, i32 noundef 3520, i32 noundef 40) #11
  %22 = icmp eq ptr %21, null
  br i1 %22, label %109, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.nvkm_mem, ptr %21, i32 0, i32 1
  store i32 %17, ptr %24, align 8
  %25 = getelementptr inbounds %struct.nvkm_mem, ptr %21, i32 0, i32 2
  store ptr %0, ptr %25, align 4
  store ptr %21, ptr %8, align 4
  %26 = icmp ugt i32 %5, 15
  br i1 %26, label %27, label %48

27:                                               ; preds = %23
  %28 = load i8, ptr %4, align 4
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %50

30:                                               ; preds = %27
  %31 = icmp eq i32 %5, 16
  br i1 %31, label %32, label %50

32:                                               ; preds = %30
  %33 = getelementptr inbounds %struct.nvif_mem_ram_v0, ptr %4, i32 0, i32 2
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %32
  tail call void @nvkm_memory_ctor(ptr noundef nonnull @nvkm_mem_dma, ptr noundef nonnull %21) #10
  br label %39

37:                                               ; preds = %32
  tail call void @nvkm_memory_ctor(ptr noundef nonnull @nvkm_mem_sgl, ptr noundef nonnull %21) #10
  %38 = getelementptr inbounds %struct.nvif_mem_ram_v0, ptr %4, i32 0, i32 3
  br label %39

39:                                               ; preds = %37, %36
  %40 = phi ptr [ %38, %37 ], [ %33, %36 ]
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.nvkm_mem, ptr %21, i32 0, i32 5
  store ptr %41, ptr %42, align 4
  %43 = and i64 %3, 4095
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %109

45:                                               ; preds = %39
  %46 = lshr i64 %3, 12
  %47 = getelementptr inbounds %struct.nvkm_mem, ptr %21, i32 0, i32 3
  store i64 %46, ptr %47, align 8
  br label %111

48:                                               ; preds = %23
  %49 = icmp eq i32 %5, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %48, %30, %27
  %51 = phi i32 [ -38, %48 ], [ -38, %27 ], [ -7, %30 ]
  tail call void @kfree(ptr noundef nonnull %21) #10
  br label %109

52:                                               ; preds = %48
  tail call void @nvkm_memory_ctor(ptr noundef nonnull @nvkm_mem_dma, ptr noundef nonnull %21) #10
  %53 = add i64 %3, 4095
  %54 = lshr i64 %53, 12
  %55 = trunc i64 %54 to i32
  %56 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %55, i32 4) #10
  %57 = extractvalue { i32, i1 } %56, 1
  br i1 %57, label %58, label %60, !prof !8

58:                                               ; preds = %52
  %59 = getelementptr inbounds %struct.nvkm_mem, ptr %21, i32 0, i32 4
  store ptr null, ptr %59, align 8
  br label %109

60:                                               ; preds = %52
  %61 = extractvalue { i32, i1 } %56, 0
  %62 = tail call noalias ptr @kvmalloc_node(i32 noundef %61, i32 noundef 3264, i32 noundef -1) #12
  %63 = getelementptr inbounds %struct.nvkm_mem, ptr %21, i32 0, i32 4
  store ptr %62, ptr %63, align 8
  %64 = icmp eq ptr %62, null
  br i1 %64, label %109, label %65

65:                                               ; preds = %60
  %66 = tail call noalias ptr @kvmalloc_node(i32 noundef %61, i32 noundef 3264, i32 noundef -1) #12
  %67 = getelementptr inbounds %struct.nvkm_mem, ptr %21, i32 0, i32 5
  store ptr %66, ptr %67, align 4
  %68 = icmp eq ptr %66, null
  br i1 %68, label %109, label %69

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.nvkm_mmu, ptr %0, i32 0, i32 2
  %71 = load i8, ptr %70, align 8
  %72 = icmp ugt i8 %71, 32
  %73 = select i1 %72, i32 1052098, i32 1052100
  %74 = getelementptr inbounds %struct.nvkm_mem, ptr %21, i32 0, i32 3
  store i64 0, ptr %74, align 8
  %75 = icmp ult i64 %53, 4096
  br i1 %75, label %111, label %76

76:                                               ; preds = %96, %69
  %77 = phi i64 [ %99, %96 ], [ %54, %69 ]
  %78 = tail call ptr @__alloc_pages(i32 noundef %73, i32 noundef 0, i32 noundef 0, ptr noundef null) #10
  %79 = icmp eq ptr %78, null
  br i1 %79, label %109, label %80

80:                                               ; preds = %76
  %81 = load ptr, ptr %14, align 4
  %82 = getelementptr inbounds %struct.nvkm_device, ptr %81, i32 0, i32 2
  %83 = load ptr, ptr %82, align 8
  %84 = tail call i32 @dma_map_page_attrs(ptr noundef %83, ptr noundef nonnull %78, i32 noundef 0, i32 noundef 4096, i32 noundef 0, i32 noundef 0) #10
  %85 = load ptr, ptr %67, align 4
  %86 = load i64, ptr %74, align 8
  %87 = trunc i64 %86 to i32
  %88 = getelementptr i32, ptr %85, i32 %87
  store i32 %84, ptr %88, align 4
  %89 = load ptr, ptr %67, align 4
  %90 = load i64, ptr %74, align 8
  %91 = trunc i64 %90 to i32
  %92 = getelementptr i32, ptr %89, i32 %91
  %93 = load i32, ptr %92, align 4
  %94 = icmp eq i32 %93, -1
  br i1 %94, label %95, label %96

95:                                               ; preds = %80
  tail call void @__free_pages(ptr noundef nonnull %78, i32 noundef 0) #10
  br label %109

96:                                               ; preds = %80
  %97 = load ptr, ptr %63, align 8
  %98 = getelementptr ptr, ptr %97, i32 %91
  store ptr %78, ptr %98, align 4
  %99 = add nsw i64 %77, -1
  %100 = load i64, ptr %74, align 8
  %101 = add i64 %100, 1
  store i64 %101, ptr %74, align 8
  %102 = icmp eq i64 %99, 0
  br i1 %102, label %111, label %76

103:                                              ; preds = %7
  %104 = load ptr, ptr %0, align 8
  %105 = getelementptr inbounds %struct.nvkm_mmu_func, ptr %104, i32 0, i32 3, i32 1
  %106 = load ptr, ptr %105, align 4
  %107 = call i32 %106(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %2, i64 noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef nonnull %8) #10
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %111, label %109

109:                                              ; preds = %103, %95, %76, %65, %60, %58, %50, %39, %19, %13
  %110 = phi i32 [ %107, %103 ], [ -12, %58 ], [ -12, %95 ], [ -12, %65 ], [ -12, %60 ], [ -22, %39 ], [ -12, %19 ], [ -22, %13 ], [ %51, %50 ], [ -12, %76 ]
  call void @nvkm_memory_unref(ptr noundef nonnull %8) #10
  br label %111

111:                                              ; preds = %109, %103, %96, %69, %45
  %112 = phi i32 [ %110, %109 ], [ 0, %103 ], [ 0, %45 ], [ 0, %69 ], [ 0, %96 ]
  %113 = load ptr, ptr %8, align 4
  store ptr %113, ptr %6, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #10
  ret i32 %112
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_memory_unref(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_memory_ctor(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @nvkm_mem_dtor(ptr noundef returned %0) #0 {
  %2 = getelementptr inbounds %struct.nvkm_mem, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %37, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.nvkm_mem, ptr %0, i32 0, i32 3
  %7 = load i64, ptr %6, align 8
  %8 = add i64 %7, -1
  store i64 %8, ptr %6, align 8
  %9 = icmp eq i64 %7, 0
  br i1 %9, label %33, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.nvkm_mem, ptr %0, i32 0, i32 2
  %12 = getelementptr inbounds %struct.nvkm_mem, ptr %0, i32 0, i32 5
  %13 = trunc i64 %8 to i32
  br label %14

14:                                               ; preds = %14, %10
  %15 = phi i32 [ %13, %10 ], [ %32, %14 ]
  %16 = load ptr, ptr %11, align 4
  %17 = getelementptr inbounds %struct.nvkm_mmu, ptr %16, i32 0, i32 1, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.nvkm_device, ptr %18, i32 0, i32 2
  %20 = load ptr, ptr %19, align 8
  %21 = load ptr, ptr %12, align 4
  %22 = getelementptr i32, ptr %21, i32 %15
  %23 = load i32, ptr %22, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %20, i32 noundef %23, i32 noundef 4096, i32 noundef 0, i32 noundef 0) #10
  %24 = load ptr, ptr %2, align 8
  %25 = load i64, ptr %6, align 8
  %26 = trunc i64 %25 to i32
  %27 = getelementptr ptr, ptr %24, i32 %26
  %28 = load ptr, ptr %27, align 4
  tail call void @__free_pages(ptr noundef %28, i32 noundef 0) #10
  %29 = load i64, ptr %6, align 8
  %30 = add i64 %29, -1
  store i64 %30, ptr %6, align 8
  %31 = icmp eq i64 %29, 0
  %32 = trunc i64 %30 to i32
  br i1 %31, label %33, label %14

33:                                               ; preds = %14, %5
  %34 = getelementptr inbounds %struct.nvkm_mem, ptr %0, i32 0, i32 5
  %35 = load ptr, ptr %34, align 4
  tail call void @kvfree(ptr noundef %35) #10
  %36 = load ptr, ptr %2, align 8
  tail call void @kvfree(ptr noundef %36) #10
  br label %37

37:                                               ; preds = %33, %1
  ret ptr %0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @nvkm_mem_target(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.nvkm_mem, ptr %0, i32 0, i32 1
  %3 = load i32, ptr %2, align 8
  ret i32 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal zeroext i8 @nvkm_mem_page(ptr nocapture noundef readnone %0) #5 {
  ret i8 12
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i64 @nvkm_mem_addr(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.nvkm_mem, ptr %0, i32 0, i32 3
  %3 = load i64, ptr %2, align 8
  %4 = icmp eq i64 %3, 1
  br i1 %4, label %5, label %14

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.nvkm_mem, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.nvkm_mem, ptr %0, i32 0, i32 5
  %11 = load ptr, ptr %10, align 4
  %12 = load i32, ptr %11, align 4
  %13 = zext i32 %12 to i64
  br label %14

14:                                               ; preds = %9, %5, %1
  %15 = phi i64 [ %13, %9 ], [ -1, %5 ], [ -1, %1 ]
  ret i64 %15
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i64 @nvkm_mem_size(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.nvkm_mem, ptr %0, i32 0, i32 3
  %3 = load i64, ptr %2, align 8
  %4 = shl i64 %3, 12
  ret i64 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvkm_mem_map_dma(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #0 {
  %7 = alloca %struct.nvkm_vmm_map, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %7) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %7, i8 0, i64 72, i1 false)
  store ptr %0, ptr %7, align 8
  %8 = getelementptr inbounds %struct.nvkm_vmm_map, ptr %7, i32 0, i32 1
  store i64 %1, ptr %8, align 8
  %9 = getelementptr inbounds %struct.nvkm_vmm_map, ptr %7, i32 0, i32 4
  %10 = getelementptr inbounds %struct.nvkm_mem, ptr %0, i32 0, i32 5
  %11 = load ptr, ptr %10, align 4
  store ptr %11, ptr %9, align 8
  %12 = call i32 @nvkm_vmm_map(ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %7) #10
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_vmm_map(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvkm_mem_map_sgl(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #0 {
  %7 = alloca %struct.nvkm_vmm_map, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %7) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %7, i8 0, i64 72, i1 false)
  store ptr %0, ptr %7, align 8
  %8 = getelementptr inbounds %struct.nvkm_vmm_map, ptr %7, i32 0, i32 1
  store i64 %1, ptr %8, align 8
  %9 = getelementptr inbounds %struct.nvkm_vmm_map, ptr %7, i32 0, i32 3
  %10 = getelementptr inbounds %struct.nvkm_mem, ptr %0, i32 0, i32 5
  %11 = load ptr, ptr %10, align 4
  store ptr %11, ptr %9, align 4
  %12 = call i32 @nvkm_vmm_map(ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %7) #10
  ret i32 %12
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { nounwind allocsize(0) }

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
