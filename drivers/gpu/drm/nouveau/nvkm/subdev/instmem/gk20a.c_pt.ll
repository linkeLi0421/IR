; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/subdev/instmem/gk20a.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/instmem/gk20a.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_instmem_func = type { ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lock_class_key = type {}
%struct.nvkm_memory_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_memory_ptrs = type { ptr, ptr }
%struct.nvkm_device_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.gk20a_instmem = type { %struct.nvkm_instmem, %struct.mutex, i32, i32, %struct.list_head, ptr, ptr, ptr, i32, i16, i32 }
%struct.nvkm_instmem = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.list_head, %struct.list_head, i32, %struct.mutex, ptr, ptr, ptr, ptr }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_device_tegra = type { ptr, %struct.nvkm_device, ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.anon.129, i32, i32 }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.122, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.122 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.anon.129 = type { %struct.mutex, %struct.nvkm_mm, ptr, i32 }
%struct.nvkm_mm = type { %struct.list_head, %struct.list_head, i32, i32 }
%struct.gk20a_instobj_iommu = type { %struct.gk20a_instobj, %struct.list_head, i32, ptr, [0 x ptr] }
%struct.gk20a_instobj = type { %struct.nvkm_memory, ptr, ptr, ptr }
%struct.nvkm_memory = type { ptr, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.nvkm_mm_node = type { %struct.list_head, %struct.list_head, ptr, i8, i8, i32, i32 }
%struct.gk20a_instobj_dma = type { %struct.gk20a_instobj, i32, %struct.nvkm_mm_node }
%struct.nvkm_vmm_map = type { ptr, i64, ptr, ptr, ptr, ptr, i64, ptr, ptr, i64, i64, i64 }

@gk20a_instmem = internal constant %struct.nvkm_instmem_func { ptr @gk20a_instmem_dtor, ptr null, ptr null, ptr null, ptr null, ptr @gk20a_instobj_new, i8 0 }, align 4
@gk20a_instmem_new.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str = private unnamed_addr constant [12 x i8] c"&imem->lock\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"%s: using IOMMU\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"%s: using DMA API\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"%s: instobj LRU not empty!\0A\00", align 1
@.str.4 = private unnamed_addr constant [58 x i8] c"%s: instobj vmap area not empty! 0x%x bytes still mapped\0A\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"%s: %s (%s): size: %x align: %x\0A\00", align 1
@__func__.gk20a_instobj_new = private unnamed_addr constant [18 x i8] c"gk20a_instobj_new\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"IOMMU\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"DMA\00", align 1
@.str.8 = private unnamed_addr constant [50 x i8] c"%s: alloc size: 0x%x, align: 0x%x, gaddr: 0x%llx\0A\00", align 1
@gk20a_instobj_func_iommu = internal constant %struct.nvkm_memory_func { ptr @gk20a_instobj_dtor_iommu, ptr @gk20a_instobj_target, ptr @gk20a_instobj_page, ptr null, ptr @gk20a_instobj_addr, ptr @gk20a_instobj_size, ptr null, ptr @gk20a_instobj_acquire_iommu, ptr @gk20a_instobj_release_iommu, ptr @gk20a_instobj_map }, align 4
@gk20a_instobj_ptrs = internal constant %struct.nvkm_memory_ptrs { ptr @gk20a_instobj_rd32, ptr @gk20a_instobj_wr32 }, align 4
@.str.9 = private unnamed_addr constant [24 x i8] c"%s: DMA mapping error!\0A\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"%s: IOMMU space is full!\0A\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"%s: IOMMU mapping failure: %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [52 x i8] c"drivers/gpu/drm/nouveau/nvkm/subdev/instmem/gk20a.c\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"%s: vaddr used: %x/%x\0A\00", align 1
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@.str.14 = private unnamed_addr constant [59 x i8] c"%s: cannot map instobj - this is not going to end well...\0A\00", align 1
@gk20a_instobj_func_dma = internal constant %struct.nvkm_memory_func { ptr @gk20a_instobj_dtor_dma, ptr @gk20a_instobj_target, ptr @gk20a_instobj_page, ptr null, ptr @gk20a_instobj_addr, ptr @gk20a_instobj_size, ptr null, ptr @gk20a_instobj_acquire_dma, ptr @gk20a_instobj_release_dma, ptr @gk20a_instobj_map }, align 4
@.str.15 = private unnamed_addr constant [32 x i8] c"%s: cannot allocate DMA memory\0A\00", align 1
@.str.16 = private unnamed_addr constant [50 x i8] c"%s: memory not aligned as requested: %pad (0x%x)\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gk20a_instmem_new(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr %0, align 8
  %6 = getelementptr inbounds %struct.nvkm_device_func, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = tail call ptr %7(ptr noundef %0) #11
  %9 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %10 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 176) #12
  %11 = icmp eq ptr %10, null
  br i1 %11, label %50, label %12

12:                                               ; preds = %4
  tail call void @nvkm_instmem_ctor(ptr noundef nonnull @gk20a_instmem, ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %10) #11
  %13 = getelementptr inbounds %struct.gk20a_instmem, ptr %10, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %13, ptr noundef nonnull @.str, ptr noundef nonnull @gk20a_instmem_new.__key) #11
  store ptr %10, ptr %3, align 4
  %14 = getelementptr inbounds %struct.gk20a_instmem, ptr %10, i32 0, i32 2
  store i32 0, ptr %14, align 8
  %15 = getelementptr inbounds %struct.gk20a_instmem, ptr %10, i32 0, i32 3
  store i32 1048576, ptr %15, align 4
  %16 = getelementptr inbounds %struct.gk20a_instmem, ptr %10, i32 0, i32 4
  store volatile ptr %16, ptr %16, align 8
  %17 = getelementptr inbounds %struct.gk20a_instmem, ptr %10, i32 0, i32 4, i32 1
  store ptr %16, ptr %17, align 4
  %18 = getelementptr inbounds %struct.nvkm_device_tegra, ptr %8, i32 0, i32 9, i32 2
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %38, label %21

21:                                               ; preds = %12
  %22 = getelementptr inbounds %struct.nvkm_device_tegra, ptr %8, i32 0, i32 9
  %23 = getelementptr inbounds %struct.gk20a_instmem, ptr %10, i32 0, i32 5
  store ptr %22, ptr %23, align 8
  %24 = getelementptr inbounds %struct.nvkm_device_tegra, ptr %8, i32 0, i32 9, i32 1
  %25 = getelementptr inbounds %struct.gk20a_instmem, ptr %10, i32 0, i32 6
  store ptr %24, ptr %25, align 4
  %26 = load ptr, ptr %18, align 4
  %27 = getelementptr inbounds %struct.gk20a_instmem, ptr %10, i32 0, i32 7
  store ptr %26, ptr %27, align 8
  %28 = getelementptr inbounds %struct.nvkm_device_tegra, ptr %8, i32 0, i32 9, i32 3
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr inbounds %struct.gk20a_instmem, ptr %10, i32 0, i32 8
  store i32 %29, ptr %30, align 4
  %31 = load ptr, ptr %8, align 8
  %32 = load i8, ptr %31, align 1
  %33 = zext i8 %32 to i16
  %34 = getelementptr inbounds %struct.gk20a_instmem, ptr %10, i32 0, i32 9
  store i16 %33, ptr %34, align 8
  %35 = getelementptr inbounds %struct.nvkm_instmem, ptr %10, i32 0, i32 1, i32 5
  %36 = load i32, ptr %35, align 4
  %37 = icmp ugt i32 %36, 2
  br i1 %37, label %43, label %50

38:                                               ; preds = %12
  %39 = getelementptr inbounds %struct.gk20a_instmem, ptr %10, i32 0, i32 10
  store i32 6, ptr %39, align 4
  %40 = getelementptr inbounds %struct.nvkm_instmem, ptr %10, i32 0, i32 1, i32 5
  %41 = load i32, ptr %40, align 4
  %42 = icmp ugt i32 %41, 2
  br i1 %42, label %43, label %50

43:                                               ; preds = %38, %21
  %44 = phi ptr [ @.str.1, %21 ], [ @.str.2, %38 ]
  %45 = getelementptr inbounds %struct.nvkm_instmem, ptr %10, i32 0, i32 1, i32 1
  %46 = load ptr, ptr %45, align 8
  %47 = getelementptr inbounds %struct.nvkm_device, ptr %46, i32 0, i32 2
  %48 = load ptr, ptr %47, align 8
  %49 = getelementptr inbounds %struct.nvkm_instmem, ptr %10, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %48, ptr noundef nonnull %44, ptr noundef %49) #13
  br label %50

50:                                               ; preds = %43, %38, %21, %4
  %51 = phi i32 [ -12, %4 ], [ 0, %38 ], [ 0, %21 ], [ 0, %43 ]
  ret i32 %51
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_instmem_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @gk20a_instmem_dtor(ptr noundef returned %0) #0 {
  %2 = getelementptr inbounds %struct.gk20a_instmem, ptr %0, i32 0, i32 4
  %3 = load volatile ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %15, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.nvkm_instmem, ptr %0, i32 0, i32 1, i32 5
  %7 = load i32, ptr %6, align 4
  %8 = icmp ugt i32 %7, 1
  br i1 %8, label %9, label %15

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.nvkm_instmem, ptr %0, i32 0, i32 1, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.nvkm_device, ptr %11, i32 0, i32 2
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.nvkm_instmem, ptr %0, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %13, ptr noundef nonnull @.str.3, ptr noundef %14) #13
  br label %15

15:                                               ; preds = %9, %5, %1
  %16 = getelementptr inbounds %struct.gk20a_instmem, ptr %0, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %29, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.nvkm_instmem, ptr %0, i32 0, i32 1, i32 5
  %21 = load i32, ptr %20, align 4
  %22 = icmp ugt i32 %21, 1
  br i1 %22, label %23, label %29

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.nvkm_instmem, ptr %0, i32 0, i32 1, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.nvkm_device, ptr %25, i32 0, i32 2
  %27 = load ptr, ptr %26, align 8
  %28 = getelementptr inbounds %struct.nvkm_instmem, ptr %0, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %27, ptr noundef nonnull @.str.4, ptr noundef %28, i32 noundef %17) #13
  br label %29

29:                                               ; preds = %23, %19, %15
  ret ptr %0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gk20a_instobj_new(ptr noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3, ptr nocapture noundef writeonly %4) #0 {
  %6 = alloca ptr, align 4
  %7 = getelementptr inbounds %struct.nvkm_instmem, ptr %0, i32 0, i32 1, i32 5
  %8 = load i32, ptr %7, align 4
  %9 = icmp ugt i32 %8, 3
  br i1 %9, label %10, label %20

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.nvkm_instmem, ptr %0, i32 0, i32 1, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.nvkm_device, ptr %12, i32 0, i32 2
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.nvkm_instmem, ptr %0, i32 0, i32 1, i32 4
  %16 = getelementptr inbounds %struct.gk20a_instmem, ptr %0, i32 0, i32 7
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  %19 = select i1 %18, ptr @.str.7, ptr @.str.6
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %14, ptr noundef nonnull @.str.5, ptr noundef %15, ptr noundef nonnull @__func__.gk20a_instobj_new, ptr noundef nonnull %19, i32 noundef %1, i32 noundef %2) #13
  br label %20

20:                                               ; preds = %10, %5
  %21 = add i32 %1, 4095
  %22 = and i32 %21, -4096
  %23 = tail call i32 @llvm.umax.i32(i32 %22, i32 4096)
  %24 = add i32 %2, 4095
  %25 = and i32 %24, -4096
  %26 = tail call i32 @llvm.umax.i32(i32 %25, i32 4096)
  %27 = getelementptr inbounds %struct.gk20a_instmem, ptr %0, i32 0, i32 7
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  %30 = lshr exact i32 %23, 12
  %31 = getelementptr inbounds %struct.nvkm_instmem, ptr %0, i32 0, i32 1, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.nvkm_device, ptr %32, i32 0, i32 2
  %34 = load ptr, ptr %33, align 8
  br i1 %29, label %155, label %35

35:                                               ; preds = %20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #11
  store ptr null, ptr %6, align 4, !annotation !8
  %36 = lshr exact i32 %23, 9
  %37 = add nuw nsw i32 %36, 44
  %38 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %37, i32 noundef 3520) #14
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #11
  store ptr null, ptr %4, align 4
  br label %216

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.gk20a_instobj_iommu, ptr %38, i32 0, i32 4
  %43 = getelementptr ptr, ptr %42, i32 %30
  %44 = getelementptr inbounds %struct.gk20a_instobj_iommu, ptr %38, i32 0, i32 3
  store ptr %43, ptr %44, align 8
  tail call void @nvkm_memory_ctor(ptr noundef nonnull @gk20a_instobj_func_iommu, ptr noundef nonnull %38) #11
  %45 = getelementptr inbounds %struct.nvkm_memory, ptr %38, i32 0, i32 1
  store ptr @gk20a_instobj_ptrs, ptr %45, align 4
  br label %46

46:                                               ; preds = %62, %41
  %47 = phi i32 [ %65, %62 ], [ 0, %41 ]
  %48 = tail call ptr @__alloc_pages(i32 noundef 3264, i32 noundef 0, i32 noundef 0, ptr noundef null) #11
  %49 = icmp eq ptr %48, null
  br i1 %49, label %137, label %50

50:                                               ; preds = %46
  %51 = getelementptr %struct.gk20a_instobj_iommu, ptr %38, i32 0, i32 4, i32 %47
  store ptr %48, ptr %51, align 4
  %52 = tail call i32 @dma_map_page_attrs(ptr noundef %34, ptr noundef nonnull %48, i32 noundef 0, i32 noundef 4096, i32 noundef 0, i32 noundef 0) #11
  %53 = icmp eq i32 %52, -1
  br i1 %53, label %54, label %62

54:                                               ; preds = %50
  %55 = load i32, ptr %7, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %137, label %57

57:                                               ; preds = %54
  %58 = load ptr, ptr %31, align 4
  %59 = getelementptr inbounds %struct.nvkm_device, ptr %58, i32 0, i32 2
  %60 = load ptr, ptr %59, align 8
  %61 = getelementptr inbounds %struct.nvkm_instmem, ptr %0, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %60, ptr noundef nonnull @.str.9, ptr noundef %61) #13
  br label %137

62:                                               ; preds = %50
  %63 = load ptr, ptr %44, align 8
  %64 = getelementptr i32, ptr %63, i32 %47
  store i32 %52, ptr %64, align 4
  %65 = add nuw nsw i32 %47, 1
  %66 = icmp eq i32 %65, %30
  br i1 %66, label %67, label %46

67:                                               ; preds = %62
  %68 = getelementptr inbounds %struct.gk20a_instmem, ptr %0, i32 0, i32 5
  %69 = load ptr, ptr %68, align 4
  tail call void @mutex_lock(ptr noundef %69) #11
  %70 = getelementptr inbounds %struct.gk20a_instmem, ptr %0, i32 0, i32 6
  %71 = load ptr, ptr %70, align 4
  %72 = getelementptr inbounds %struct.gk20a_instmem, ptr %0, i32 0, i32 8
  %73 = load i32, ptr %72, align 4
  %74 = lshr i32 %26, %73
  %75 = call i32 @nvkm_mm_head(ptr noundef %71, i8 noundef zeroext 0, i8 noundef zeroext 1, i32 noundef %30, i32 noundef %30, i32 noundef %74, ptr noundef nonnull %6) #11
  %76 = load ptr, ptr %68, align 4
  call void @mutex_unlock(ptr noundef %76) #11
  %77 = icmp eq i32 %75, 0
  br i1 %77, label %86, label %78

78:                                               ; preds = %67
  %79 = load i32, ptr %7, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %137, label %81

81:                                               ; preds = %78
  %82 = load ptr, ptr %31, align 4
  %83 = getelementptr inbounds %struct.nvkm_device, ptr %82, i32 0, i32 2
  %84 = load ptr, ptr %83, align 8
  %85 = getelementptr inbounds %struct.nvkm_instmem, ptr %0, i32 0, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %84, ptr noundef nonnull @.str.10, ptr noundef %85) #13
  br label %137

86:                                               ; preds = %118, %67
  %87 = phi i32 [ %119, %118 ], [ 0, %67 ]
  %88 = load ptr, ptr %6, align 4
  %89 = getelementptr inbounds %struct.nvkm_mm_node, ptr %88, i32 0, i32 5
  %90 = load i32, ptr %89, align 4
  %91 = add i32 %90, %87
  %92 = load i32, ptr %72, align 4
  %93 = shl i32 %91, %92
  %94 = load ptr, ptr %27, align 4
  %95 = load ptr, ptr %44, align 8
  %96 = getelementptr i32, ptr %95, i32 %87
  %97 = load i32, ptr %96, align 4
  %98 = call i32 @iommu_map(ptr noundef %94, i32 noundef %93, i32 noundef %97, i32 noundef 4096, i32 noundef 3) #11
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %118

100:                                              ; preds = %86
  %101 = load i32, ptr %7, align 4
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %108, label %103

103:                                              ; preds = %100
  %104 = load ptr, ptr %31, align 4
  %105 = getelementptr inbounds %struct.nvkm_device, ptr %104, i32 0, i32 2
  %106 = load ptr, ptr %105, align 8
  %107 = getelementptr inbounds %struct.nvkm_instmem, ptr %0, i32 0, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %106, ptr noundef nonnull @.str.11, ptr noundef %107, i32 noundef %98) #13
  br label %108

108:                                              ; preds = %103, %100
  %109 = icmp eq i32 %87, 0
  br i1 %109, label %133, label %110

110:                                              ; preds = %110, %108
  %111 = phi i32 [ %114, %110 ], [ %93, %108 ]
  %112 = phi i32 [ %113, %110 ], [ %87, %108 ]
  %113 = add nsw i32 %112, -1
  %114 = add i32 %111, -4096
  %115 = load ptr, ptr %27, align 4
  %116 = call i32 @iommu_unmap(ptr noundef %115, i32 noundef %114, i32 noundef 4096) #11
  %117 = icmp ugt i32 %112, 1
  br i1 %117, label %110, label %133

118:                                              ; preds = %86
  %119 = add nuw nsw i32 %87, 1
  %120 = icmp eq i32 %119, %30
  br i1 %120, label %121, label %86

121:                                              ; preds = %118
  %122 = getelementptr inbounds %struct.gk20a_instmem, ptr %0, i32 0, i32 9
  %123 = load i16, ptr %122, align 4
  %124 = zext i16 %123 to i32
  %125 = load i32, ptr %72, align 4
  %126 = sub i32 %124, %125
  %127 = shl nuw i32 1, %126
  %128 = load ptr, ptr %6, align 4
  %129 = getelementptr inbounds %struct.nvkm_mm_node, ptr %128, i32 0, i32 5
  %130 = load i32, ptr %129, align 4
  %131 = or i32 %130, %127
  store i32 %131, ptr %129, align 4
  %132 = getelementptr inbounds %struct.gk20a_instobj, ptr %38, i32 0, i32 1
  store ptr %128, ptr %132, align 16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #11
  br label %199

133:                                              ; preds = %110, %108
  %134 = load ptr, ptr %68, align 4
  call void @mutex_lock(ptr noundef %134) #11
  %135 = load ptr, ptr %70, align 4
  call void @nvkm_mm_free(ptr noundef %135, ptr noundef nonnull %6) #11
  %136 = load ptr, ptr %68, align 4
  call void @mutex_unlock(ptr noundef %136) #11
  br label %137

137:                                              ; preds = %133, %81, %78, %57, %54, %46
  %138 = phi i32 [ %98, %133 ], [ %75, %81 ], [ %75, %78 ], [ -12, %57 ], [ -12, %54 ], [ -12, %46 ]
  br label %139

139:                                              ; preds = %151, %137
  %140 = phi i32 [ %153, %151 ], [ 0, %137 ]
  %141 = getelementptr %struct.gk20a_instobj_iommu, ptr %38, i32 0, i32 4, i32 %140
  %142 = load ptr, ptr %141, align 4
  %143 = icmp eq ptr %142, null
  br i1 %143, label %198, label %144

144:                                              ; preds = %139
  %145 = load ptr, ptr %44, align 8
  %146 = getelementptr i32, ptr %145, i32 %140
  %147 = load i32, ptr %146, align 4
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %151, label %149

149:                                              ; preds = %144
  call void @dma_unmap_page_attrs(ptr noundef %34, i32 noundef %147, i32 noundef 4096, i32 noundef 0, i32 noundef 0) #11
  %150 = load ptr, ptr %141, align 4
  br label %151

151:                                              ; preds = %149, %144
  %152 = phi ptr [ %150, %149 ], [ %142, %144 ]
  call void @__free_pages(ptr noundef %152, i32 noundef 0) #11
  %153 = add nuw nsw i32 %140, 1
  %154 = icmp eq i32 %153, %30
  br i1 %154, label %198, label %139

155:                                              ; preds = %20
  %156 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %157 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %156, i32 noundef 3520, i32 noundef 64) #12
  %158 = icmp eq ptr %157, null
  br i1 %158, label %197, label %159

159:                                              ; preds = %155
  tail call void @nvkm_memory_ctor(ptr noundef nonnull @gk20a_instobj_func_dma, ptr noundef nonnull %157) #11
  %160 = getelementptr inbounds %struct.nvkm_memory, ptr %157, i32 0, i32 1
  store ptr @gk20a_instobj_ptrs, ptr %160, align 4
  %161 = getelementptr inbounds %struct.gk20a_instobj_dma, ptr %157, i32 0, i32 1
  %162 = getelementptr inbounds %struct.gk20a_instmem, ptr %0, i32 0, i32 10
  %163 = load i32, ptr %162, align 4
  %164 = tail call ptr @dma_alloc_attrs(ptr noundef %34, i32 noundef %23, ptr noundef %161, i32 noundef 3264, i32 noundef %163) #11
  %165 = getelementptr inbounds %struct.gk20a_instobj, ptr %157, i32 0, i32 3
  store ptr %164, ptr %165, align 8
  %166 = icmp eq ptr %164, null
  br i1 %166, label %167, label %175

167:                                              ; preds = %159
  %168 = load i32, ptr %7, align 4
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %197, label %170

170:                                              ; preds = %167
  %171 = load ptr, ptr %31, align 4
  %172 = getelementptr inbounds %struct.nvkm_device, ptr %171, i32 0, i32 2
  %173 = load ptr, ptr %172, align 8
  %174 = getelementptr inbounds %struct.nvkm_instmem, ptr %0, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %173, ptr noundef nonnull @.str.15, ptr noundef %174) #13
  br label %197

175:                                              ; preds = %159
  %176 = load i32, ptr %161, align 4
  %177 = add i32 %26, -1
  %178 = and i32 %176, %177
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %189, label %180, !prof !9

180:                                              ; preds = %175
  %181 = load i32, ptr %7, align 4
  %182 = icmp ugt i32 %181, 1
  br i1 %182, label %183, label %189

183:                                              ; preds = %180
  %184 = load ptr, ptr %31, align 4
  %185 = getelementptr inbounds %struct.nvkm_device, ptr %184, i32 0, i32 2
  %186 = load ptr, ptr %185, align 8
  %187 = getelementptr inbounds %struct.nvkm_instmem, ptr %0, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %186, ptr noundef nonnull @.str.16, ptr noundef %187, ptr noundef %161, i32 noundef %26) #13
  %188 = load i32, ptr %161, align 4
  br label %189

189:                                              ; preds = %183, %180, %175
  %190 = phi i32 [ %176, %180 ], [ %188, %183 ], [ %176, %175 ]
  %191 = getelementptr inbounds %struct.gk20a_instobj_dma, ptr %157, i32 0, i32 2
  %192 = getelementptr inbounds %struct.gk20a_instobj_dma, ptr %157, i32 0, i32 2, i32 4
  store i8 12, ptr %192, align 1
  %193 = lshr i32 %190, 12
  %194 = getelementptr inbounds %struct.gk20a_instobj_dma, ptr %157, i32 0, i32 2, i32 5
  store i32 %193, ptr %194, align 8
  %195 = getelementptr inbounds %struct.gk20a_instobj_dma, ptr %157, i32 0, i32 2, i32 6
  store i32 %30, ptr %195, align 4
  %196 = getelementptr inbounds %struct.gk20a_instobj, ptr %157, i32 0, i32 1
  store ptr %191, ptr %196, align 8
  br label %199

197:                                              ; preds = %170, %167, %155
  store ptr %157, ptr %4, align 4
  br label %216

198:                                              ; preds = %151, %139
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #11
  store ptr %38, ptr %4, align 4
  br label %216

199:                                              ; preds = %189, %121
  %200 = phi ptr [ %38, %121 ], [ %157, %189 ]
  store ptr %200, ptr %4, align 4
  %201 = getelementptr inbounds %struct.gk20a_instobj, ptr %200, i32 0, i32 2
  store ptr %0, ptr %201, align 4
  %202 = load i32, ptr %7, align 4
  %203 = icmp ugt i32 %202, 3
  br i1 %203, label %204, label %216

204:                                              ; preds = %199
  %205 = getelementptr inbounds %struct.nvkm_instmem, ptr %0, i32 0, i32 1, i32 1
  %206 = load ptr, ptr %205, align 4
  %207 = getelementptr inbounds %struct.nvkm_device, ptr %206, i32 0, i32 2
  %208 = load ptr, ptr %207, align 8
  %209 = getelementptr inbounds %struct.nvkm_instmem, ptr %0, i32 0, i32 1, i32 4
  %210 = getelementptr inbounds %struct.gk20a_instobj, ptr %200, i32 0, i32 1
  %211 = load ptr, ptr %210, align 8
  %212 = getelementptr inbounds %struct.nvkm_mm_node, ptr %211, i32 0, i32 5
  %213 = load i32, ptr %212, align 4
  %214 = zext i32 %213 to i64
  %215 = shl nuw nsw i64 %214, 12
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %208, ptr noundef nonnull @.str.8, ptr noundef %209, i32 noundef %23, i32 noundef %26, i64 noundef %215) #13
  br label %216

216:                                              ; preds = %204, %199, %198, %197, %40
  %217 = phi i32 [ %138, %198 ], [ 0, %204 ], [ 0, %199 ], [ -12, %197 ], [ -12, %40 ]
  ret i32 %217
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_memory_ctor(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_mm_head(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iommu_map(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iommu_unmap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_mm_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @gk20a_instobj_dtor_iommu(ptr noundef returned %0) #0 {
  %2 = alloca ptr, align 4
  %3 = getelementptr inbounds %struct.gk20a_instobj, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_instmem, ptr %4, i32 0, i32 1, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nvkm_device, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #11
  %9 = getelementptr inbounds %struct.gk20a_instobj, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  store ptr %10, ptr %2, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %63, label %12, !prof !10

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.gk20a_instmem, ptr %4, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %13) #11
  %14 = getelementptr inbounds %struct.gk20a_instobj, ptr %0, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %12
  tail call fastcc void @gk20a_instobj_iommu_recycle_vaddr(ptr noundef %0)
  br label %18

18:                                               ; preds = %17, %12
  tail call void @mutex_unlock(ptr noundef %13) #11
  %19 = getelementptr inbounds %struct.gk20a_instmem, ptr %4, i32 0, i32 9
  %20 = load i16, ptr %19, align 4
  %21 = zext i16 %20 to i32
  %22 = getelementptr inbounds %struct.gk20a_instmem, ptr %4, i32 0, i32 8
  %23 = load i32, ptr %22, align 4
  %24 = sub i32 %21, %23
  %25 = shl nuw i32 1, %24
  %26 = xor i32 %25, -1
  %27 = getelementptr inbounds %struct.nvkm_mm_node, ptr %10, i32 0, i32 5
  %28 = load i32, ptr %27, align 4
  %29 = and i32 %28, %26
  store i32 %29, ptr %27, align 4
  %30 = load ptr, ptr %9, align 4
  %31 = getelementptr inbounds %struct.nvkm_mm_node, ptr %30, i32 0, i32 6
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %57, label %34

34:                                               ; preds = %18
  %35 = getelementptr inbounds %struct.gk20a_instmem, ptr %4, i32 0, i32 7
  %36 = getelementptr inbounds %struct.gk20a_instobj_iommu, ptr %0, i32 0, i32 3
  br label %37

37:                                               ; preds = %55, %34
  %38 = phi i32 [ %29, %34 ], [ %56, %55 ]
  %39 = phi i32 [ 0, %34 ], [ %50, %55 ]
  %40 = load ptr, ptr %35, align 4
  %41 = add i32 %38, %39
  %42 = load i32, ptr %22, align 4
  %43 = shl i32 %41, %42
  %44 = tail call i32 @iommu_unmap(ptr noundef %40, i32 noundef %43, i32 noundef 4096) #11
  %45 = load ptr, ptr %36, align 4
  %46 = getelementptr i32, ptr %45, i32 %39
  %47 = load i32, ptr %46, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %8, i32 noundef %47, i32 noundef 4096, i32 noundef 0, i32 noundef 0) #11
  %48 = getelementptr %struct.gk20a_instobj_iommu, ptr %0, i32 0, i32 4, i32 %39
  %49 = load ptr, ptr %48, align 4
  tail call void @__free_pages(ptr noundef %49, i32 noundef 0) #11
  %50 = add nuw i32 %39, 1
  %51 = load ptr, ptr %9, align 4
  %52 = getelementptr inbounds %struct.nvkm_mm_node, ptr %51, i32 0, i32 6
  %53 = load i32, ptr %52, align 4
  %54 = icmp ult i32 %50, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %37
  %56 = load i32, ptr %27, align 4
  br label %37

57:                                               ; preds = %37, %18
  %58 = getelementptr inbounds %struct.gk20a_instmem, ptr %4, i32 0, i32 5
  %59 = load ptr, ptr %58, align 4
  tail call void @mutex_lock(ptr noundef %59) #11
  %60 = getelementptr inbounds %struct.gk20a_instmem, ptr %4, i32 0, i32 6
  %61 = load ptr, ptr %60, align 4
  call void @nvkm_mm_free(ptr noundef %61, ptr noundef nonnull %2) #11
  %62 = load ptr, ptr %58, align 4
  call void @mutex_unlock(ptr noundef %62) #11
  br label %63

63:                                               ; preds = %57, %1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #11
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @gk20a_instobj_target(ptr nocapture noundef readnone %0) #6 {
  ret i32 3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal zeroext i8 @gk20a_instobj_page(ptr nocapture noundef readnone %0) #6 {
  ret i8 12
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i64 @gk20a_instobj_addr(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.gk20a_instobj, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_mm_node, ptr %3, i32 0, i32 5
  %5 = load i32, ptr %4, align 4
  %6 = zext i32 %5 to i64
  %7 = shl nuw nsw i64 %6, 12
  ret i64 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i64 @gk20a_instobj_size(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.gk20a_instobj, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_mm_node, ptr %3, i32 0, i32 6
  %5 = load i32, ptr %4, align 4
  %6 = zext i32 %5 to i64
  %7 = shl nuw nsw i64 %6, 12
  ret i64 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @gk20a_instobj_acquire_iommu(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.gk20a_instobj, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_instmem, ptr %3, i32 0, i32 1, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 34
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %0, align 4
  %9 = getelementptr inbounds %struct.nvkm_memory_func, ptr %8, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i64 %10(ptr noundef %0) #11
  tail call void @nvkm_ltc_flush(ptr noundef %7) #11
  %12 = getelementptr inbounds %struct.gk20a_instmem, ptr %3, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %12) #11
  %13 = getelementptr inbounds %struct.gk20a_instobj, ptr %0, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %26, label %16

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.gk20a_instobj_iommu, ptr %0, i32 0, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %78

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.gk20a_instobj_iommu, ptr %0, i32 0, i32 1
  %22 = getelementptr inbounds %struct.gk20a_instobj_iommu, ptr %0, i32 0, i32 1, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = load ptr, ptr %21, align 4
  %25 = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  store ptr %23, ptr %25, align 4
  store volatile ptr %24, ptr %23, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %21, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %22, align 4
  br label %78

26:                                               ; preds = %1
  %27 = getelementptr inbounds %struct.gk20a_instmem, ptr %3, i32 0, i32 4
  %28 = getelementptr inbounds %struct.gk20a_instmem, ptr %3, i32 0, i32 2
  %29 = getelementptr inbounds %struct.gk20a_instmem, ptr %3, i32 0, i32 3
  %30 = load i32, ptr %28, align 4
  %31 = zext i32 %30 to i64
  %32 = add i64 %11, %31
  %33 = load i32, ptr %29, align 4
  %34 = zext i32 %33 to i64
  %35 = icmp ugt i64 %32, %34
  br i1 %35, label %36, label %47

36:                                               ; preds = %39, %26
  %37 = load volatile ptr, ptr %27, align 4
  %38 = icmp eq ptr %37, %27
  br i1 %38, label %47, label %39

39:                                               ; preds = %36
  %40 = getelementptr i8, ptr %37, i32 -28
  tail call fastcc void @gk20a_instobj_iommu_recycle_vaddr(ptr noundef %40) #11
  %41 = load i32, ptr %28, align 4
  %42 = zext i32 %41 to i64
  %43 = add i64 %11, %42
  %44 = load i32, ptr %29, align 4
  %45 = zext i32 %44 to i64
  %46 = icmp ugt i64 %43, %45
  br i1 %46, label %36, label %47

47:                                               ; preds = %39, %36, %26
  %48 = getelementptr inbounds %struct.gk20a_instobj_iommu, ptr %0, i32 0, i32 4
  %49 = lshr i64 %11, 12
  %50 = trunc i64 %49 to i32
  %51 = load i32, ptr @pgprot_kernel, align 4
  %52 = and i32 %51, -573
  %53 = or i32 %52, 516
  %54 = tail call ptr @vmap(ptr noundef %48, i32 noundef %50, i32 noundef 4, i32 noundef %53) #11
  store ptr %54, ptr %13, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %65

56:                                               ; preds = %47
  %57 = getelementptr inbounds %struct.nvkm_instmem, ptr %3, i32 0, i32 1, i32 5
  %58 = load i32, ptr %57, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %78, label %60

60:                                               ; preds = %56
  %61 = load ptr, ptr %4, align 4
  %62 = getelementptr inbounds %struct.nvkm_device, ptr %61, i32 0, i32 2
  %63 = load ptr, ptr %62, align 8
  %64 = getelementptr inbounds %struct.nvkm_instmem, ptr %3, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %63, ptr noundef nonnull @.str.14, ptr noundef %64) #13
  br label %78

65:                                               ; preds = %47
  %66 = load i32, ptr %28, align 4
  %67 = trunc i64 %11 to i32
  %68 = add i32 %66, %67
  store i32 %68, ptr %28, align 4
  %69 = getelementptr inbounds %struct.nvkm_instmem, ptr %3, i32 0, i32 1, i32 5
  %70 = load i32, ptr %69, align 4
  %71 = icmp ugt i32 %70, 3
  br i1 %71, label %72, label %78

72:                                               ; preds = %65
  %73 = load ptr, ptr %4, align 4
  %74 = getelementptr inbounds %struct.nvkm_device, ptr %73, i32 0, i32 2
  %75 = load ptr, ptr %74, align 8
  %76 = getelementptr inbounds %struct.nvkm_instmem, ptr %3, i32 0, i32 1, i32 4
  %77 = load i32, ptr %29, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %75, ptr noundef nonnull @.str.13, ptr noundef %76, i32 noundef %68, i32 noundef %77) #13
  br label %78

78:                                               ; preds = %72, %65, %60, %56, %20, %16
  %79 = getelementptr inbounds %struct.gk20a_instobj_iommu, ptr %0, i32 0, i32 2
  %80 = load i32, ptr %79, align 4
  %81 = add i32 %80, 1
  store i32 %81, ptr %79, align 4
  tail call void @mutex_unlock(ptr noundef %12) #11
  %82 = load ptr, ptr %13, align 4
  ret ptr %82
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gk20a_instobj_release_iommu(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.gk20a_instobj, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_instmem, ptr %3, i32 0, i32 1, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 34
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.gk20a_instmem, ptr %3, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %8) #11
  %9 = getelementptr inbounds %struct.gk20a_instobj_iommu, ptr %0, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13, !prof !10

12:                                               ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 250, i32 noundef 9, ptr noundef null) #11
  br label %22

13:                                               ; preds = %1
  %14 = add i32 %10, -1
  store i32 %14, ptr %9, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.gk20a_instobj_iommu, ptr %0, i32 0, i32 1
  %18 = getelementptr inbounds %struct.gk20a_instmem, ptr %3, i32 0, i32 4
  %19 = getelementptr inbounds %struct.gk20a_instmem, ptr %3, i32 0, i32 4, i32 1
  %20 = load ptr, ptr %19, align 4
  store ptr %17, ptr %19, align 4
  store ptr %18, ptr %17, align 4
  %21 = getelementptr inbounds %struct.gk20a_instobj_iommu, ptr %0, i32 0, i32 1, i32 1
  store ptr %20, ptr %21, align 4
  store volatile ptr %17, ptr %20, align 4
  br label %22

22:                                               ; preds = %16, %13, %12
  tail call void @mutex_unlock(ptr noundef %8) #11
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !11
  tail call void @arm_heavy_mb() #11
  tail call void @nvkm_ltc_invalidate(ptr noundef %7) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gk20a_instobj_map(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #0 {
  %7 = alloca %struct.nvkm_vmm_map, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %7) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %7, i8 0, i64 72, i1 false)
  store ptr %0, ptr %7, align 8
  %8 = getelementptr inbounds %struct.nvkm_vmm_map, ptr %7, i32 0, i32 1
  store i64 %1, ptr %8, align 8
  %9 = getelementptr inbounds %struct.nvkm_vmm_map, ptr %7, i32 0, i32 2
  %10 = getelementptr inbounds %struct.gk20a_instobj, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  store ptr %11, ptr %9, align 8
  %12 = call i32 @nvkm_vmm_map(ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %7) #11
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @gk20a_instobj_iommu_recycle_vaddr(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.gk20a_instobj, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.gk20a_instobj_iommu, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7, !prof !9

7:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 147, i32 noundef 9, ptr noundef null) #11
  br label %8

8:                                                ; preds = %7, %1
  %9 = getelementptr inbounds %struct.gk20a_instobj_iommu, ptr %0, i32 0, i32 1
  %10 = getelementptr inbounds %struct.gk20a_instobj_iommu, ptr %0, i32 0, i32 1, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = load ptr, ptr %9, align 4
  %13 = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  store ptr %11, ptr %13, align 4
  store volatile ptr %12, ptr %11, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %9, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %10, align 4
  %14 = getelementptr inbounds %struct.gk20a_instobj, ptr %0, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  tail call void @vunmap(ptr noundef %15) #11
  store ptr null, ptr %14, align 4
  %16 = load ptr, ptr %0, align 4
  %17 = getelementptr inbounds %struct.nvkm_memory_func, ptr %16, i32 0, i32 5
  %18 = load ptr, ptr %17, align 4
  %19 = tail call i64 %18(ptr noundef %0) #11
  %20 = getelementptr inbounds %struct.gk20a_instmem, ptr %3, i32 0, i32 2
  %21 = load i32, ptr %20, align 4
  %22 = trunc i64 %19 to i32
  %23 = sub i32 %21, %22
  store i32 %23, ptr %20, align 4
  %24 = getelementptr inbounds %struct.nvkm_instmem, ptr %3, i32 0, i32 1, i32 5
  %25 = load i32, ptr %24, align 4
  %26 = icmp ugt i32 %25, 3
  br i1 %26, label %27, label %35

27:                                               ; preds = %8
  %28 = getelementptr inbounds %struct.nvkm_instmem, ptr %3, i32 0, i32 1, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.nvkm_device, ptr %29, i32 0, i32 2
  %31 = load ptr, ptr %30, align 8
  %32 = getelementptr inbounds %struct.nvkm_instmem, ptr %3, i32 0, i32 1, i32 4
  %33 = getelementptr inbounds %struct.gk20a_instmem, ptr %3, i32 0, i32 3
  %34 = load i32, ptr %33, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %31, ptr noundef nonnull @.str.13, ptr noundef %32, i32 noundef %23, i32 noundef %34) #13
  br label %35

35:                                               ; preds = %27, %8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vunmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_ltc_flush(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vmap(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_ltc_invalidate(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_vmm_map(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @gk20a_instobj_rd32(ptr nocapture noundef readonly %0, i64 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.gk20a_instobj, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = lshr i64 %1, 2
  %6 = trunc i64 %5 to i32
  %7 = getelementptr i32, ptr %4, i32 %6
  %8 = load i32, ptr %7, align 4
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @gk20a_instobj_wr32(ptr nocapture noundef readonly %0, i64 noundef %1, i32 noundef %2) #9 {
  %4 = getelementptr inbounds %struct.gk20a_instobj, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = lshr i64 %1, 2
  %7 = trunc i64 %6 to i32
  %8 = getelementptr i32, ptr %5, i32 %7
  store i32 %2, ptr %8, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @gk20a_instobj_dtor_dma(ptr noundef readonly returned %0) #0 {
  %2 = getelementptr inbounds %struct.gk20a_instobj, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %21, label %5, !prof !10

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.gk20a_instobj, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nvkm_instmem, ptr %7, i32 0, i32 1, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.nvkm_device, ptr %9, i32 0, i32 2
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.gk20a_instobj, ptr %0, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.nvkm_mm_node, ptr %13, i32 0, i32 6
  %15 = load i32, ptr %14, align 4
  %16 = shl i32 %15, 12
  %17 = getelementptr inbounds %struct.gk20a_instobj_dma, ptr %0, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.gk20a_instmem, ptr %7, i32 0, i32 10
  %20 = load i32, ptr %19, align 4
  tail call void @dma_free_attrs(ptr noundef %11, i32 noundef %16, ptr noundef nonnull %3, i32 noundef %18, i32 noundef %20) #11
  br label %21

21:                                               ; preds = %5, %1
  ret ptr %0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @gk20a_instobj_acquire_dma(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.gk20a_instobj, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_instmem, ptr %3, i32 0, i32 1, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 34
  %7 = load ptr, ptr %6, align 4
  tail call void @nvkm_ltc_flush(ptr noundef %7) #11
  %8 = getelementptr inbounds %struct.gk20a_instobj, ptr %0, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  ret ptr %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gk20a_instobj_release_dma(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.gk20a_instobj, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_instmem, ptr %3, i32 0, i32 1, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 34
  %7 = load ptr, ptr %6, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !12
  tail call void @arm_heavy_mb() #11
  tail call void @nvkm_ltc_invalidate(ptr noundef %7) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #10

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly nofree nounwind willreturn writeonly }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(0) }

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
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{i64 2154799838}
!12 = !{i64 2154792398}
