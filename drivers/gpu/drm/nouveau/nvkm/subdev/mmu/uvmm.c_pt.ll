; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/uvmm.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/uvmm.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_object_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_uvmm = type { %struct.nvkm_object, ptr }
%struct.nvkm_object = type { ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, i8, i64, i64, %struct.rb_node }
%struct.list_head = type { ptr, ptr }
%struct.rb_node = type { i32, ptr, ptr }
%struct.nvkm_oclass = type { ptr, %struct.nvkm_sclass, ptr, ptr, i32, i8, i64, i64, ptr, ptr, ptr }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.nvkm_ummu = type { %struct.nvkm_object, ptr }
%struct.nvif_vmm_v0 = type { i8, i8, i8, [5 x i8], i64, i64, [0 x i8] }
%struct.nvkm_mmu = type { ptr, %struct.nvkm_subdev, i8, i32, [4 x %struct.anon.124], i32, [16 x %struct.anon.125], ptr, %struct.anon.126, %struct.anon.126, %struct.mutex, %struct.nvkm_device_oclass }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.anon.124 = type { i8, i64 }
%struct.anon.125 = type { i8, i8 }
%struct.anon.126 = type { %struct.mutex, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_device_oclass = type { ptr, %struct.nvkm_sclass }
%struct.nvkm_mmu_func = type { ptr, i8, %struct.anon, %struct.anon.2, %struct.anon.3, ptr, i8 }
%struct.anon = type { %struct.nvkm_sclass }
%struct.anon.2 = type { %struct.nvkm_sclass, ptr, ptr }
%struct.anon.3 = type { %struct.nvkm_sclass, ptr, i8, i32 }
%struct.nvkm_vmm = type { ptr, ptr, ptr, i32, %struct.kref, %struct.mutex, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_root, %struct.rb_root, i8, [51 x %struct.atomic_t], i32, ptr, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.rb_root = type { ptr }
%struct.nvkm_client = type { %struct.nvkm_object, [32 x i8], i64, i32, [32 x ptr], %struct.rb_root, ptr, ptr, %struct.list_head, %struct.spinlock }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.nvkm_vmm_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, [0 x %struct.nvkm_vmm_page] }
%struct.nvkm_vmm_page = type { i8, ptr, i8 }
%struct.nvif_vmm_page_v0 = type { i8, i8, i8, i8, i8, i8, i8, [1 x i8] }
%struct.nvif_vmm_get_v0 = type { i8, i8, i8, i8, i8, [3 x i8], i64, i64 }
%struct.nvkm_vma = type { %struct.list_head, %struct.rb_node, i64, [7 x i8], i8, ptr, ptr }
%struct.nvif_vmm_put_v0 = type { i8, [7 x i8], i64 }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.123, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.123 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvif_vmm_map_v0 = type { i8, [7 x i8], i64, i64, i64, i64, [0 x i8] }
%struct.nvkm_memory_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvif_vmm_unmap_v0 = type { i8, [7 x i8], i64 }
%struct.nvif_vmm_pfnmap_v0 = type { i8, i8, [6 x i8], i64, i64, [0 x i64] }
%struct.nvif_vmm_pfnclr_v0 = type { i8, [7 x i8], i64, i64 }

@nvkm_uvmm = internal constant %struct.nvkm_object_func { ptr @nvkm_uvmm_dtor, ptr null, ptr null, ptr @nvkm_uvmm_mthd, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str = private unnamed_addr constant [5 x i8] c"user\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"%s: %s: lookup %016llx: %016llx %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"%s: %s: denied %016llx: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"%s: %s: memory %016llx %ld\0A\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"%s: %s: lookup %016llx\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"%s: %s: pfnmap %016llx\0A\00", align 1
@.str.6 = private unnamed_addr constant [56 x i8] c"%s: %s: split %d %d %d %016llx %016llx %016llx %016llx\0A\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"%s: %s: lookup %016llx: %016llx\0A\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"%s: %s: unmapped\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @nvkm_uvmm_search(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @nvkm_object_search(ptr noundef %0, i64 noundef %1, ptr noundef nonnull @nvkm_uvmm) #6
  %4 = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %4, label %8, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.nvkm_uvmm, ptr %3, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8
  br label %8

8:                                                ; preds = %5, %2
  %9 = phi ptr [ %7, %5 ], [ %3, %2 ]
  ret ptr %9
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvkm_object_search(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_uvmm_new(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.nvkm_oclass, ptr %0, i32 0, i32 9
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nvkm_ummu, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.nvkm_oclass, ptr %0, i32 0, i32 1, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = icmp slt i32 %10, 0
  %12 = icmp ugt i32 %2, 23
  br i1 %12, label %13, label %79

13:                                               ; preds = %4
  %14 = load i8, ptr %1, align 8
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %79

16:                                               ; preds = %13
  %17 = getelementptr i8, ptr %1, i32 24
  %18 = add i32 %2, -24
  br i1 %11, label %19, label %21

19:                                               ; preds = %16
  %20 = icmp eq i32 %18, 0
  br i1 %20, label %21, label %79

21:                                               ; preds = %19, %16
  %22 = phi ptr [ %17, %16 ], [ null, %19 ]
  %23 = getelementptr inbounds %struct.nvif_vmm_v0, ptr %1, i32 0, i32 2
  %24 = load i8, ptr %23, align 2
  %25 = icmp ne i8 %24, 0
  %26 = getelementptr inbounds %struct.nvif_vmm_v0, ptr %1, i32 0, i32 4
  %27 = load i64, ptr %26, align 8
  %28 = getelementptr inbounds %struct.nvif_vmm_v0, ptr %1, i32 0, i32 5
  %29 = load i64, ptr %28, align 8
  %30 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %31 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %30, i32 noundef 3520, i32 noundef 80) #7
  %32 = icmp eq ptr %31, null
  br i1 %32, label %79, label %33

33:                                               ; preds = %21
  tail call void @nvkm_object_ctor(ptr noundef nonnull @nvkm_uvmm, ptr noundef %0, ptr noundef nonnull %31) #6
  store ptr %31, ptr %3, align 4
  %34 = getelementptr inbounds %struct.nvkm_mmu, ptr %8, i32 0, i32 7
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %54

37:                                               ; preds = %33
  %38 = load ptr, ptr %8, align 8
  %39 = getelementptr inbounds %struct.nvkm_mmu_func, ptr %38, i32 0, i32 4, i32 1
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.nvkm_uvmm, ptr %31, i32 0, i32 1
  %42 = tail call i32 %40(ptr noundef %8, i1 noundef zeroext %25, i64 noundef %27, i64 noundef %29, ptr noundef %22, i32 noundef %18, ptr noundef null, ptr noundef nonnull @.str, ptr noundef %41) #6
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %79

44:                                               ; preds = %37
  %45 = load ptr, ptr %41, align 8
  %46 = getelementptr inbounds %struct.nvkm_vmm, ptr %45, i32 0, i32 3
  %47 = load i32, ptr %46, align 4
  %48 = getelementptr inbounds %struct.nvkm_oclass, ptr %0, i32 0, i32 8
  %49 = load ptr, ptr %48, align 8
  %50 = getelementptr inbounds %struct.nvkm_client, ptr %49, i32 0, i32 3
  %51 = load i32, ptr %50, align 8
  %52 = tail call i32 @llvm.umax.i32(i32 %47, i32 %51)
  store i32 %52, ptr %46, align 4
  %53 = load ptr, ptr %41, align 8
  br label %59

54:                                               ; preds = %33
  %55 = icmp eq i64 %29, 0
  br i1 %55, label %56, label %79

56:                                               ; preds = %54
  %57 = tail call ptr @nvkm_vmm_ref(ptr noundef nonnull %35) #6
  %58 = getelementptr inbounds %struct.nvkm_uvmm, ptr %31, i32 0, i32 1
  store ptr %57, ptr %58, align 8
  br label %59

59:                                               ; preds = %56, %44
  %60 = phi ptr [ %57, %56 ], [ %53, %44 ]
  %61 = load ptr, ptr %60, align 8
  %62 = getelementptr inbounds %struct.nvkm_vmm_func, ptr %61, i32 0, i32 8
  %63 = getelementptr inbounds %struct.nvif_vmm_v0, ptr %1, i32 0, i32 1
  store i8 0, ptr %63, align 1
  %64 = icmp eq ptr %62, null
  br i1 %64, label %74, label %65

65:                                               ; preds = %70, %59
  %66 = phi ptr [ %71, %70 ], [ %62, %59 ]
  %67 = phi i8 [ %72, %70 ], [ 0, %59 ]
  %68 = load i8, ptr %66, align 4
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %74, label %70

70:                                               ; preds = %65
  %71 = getelementptr %struct.nvkm_vmm_page, ptr %66, i32 1
  %72 = add i8 %67, 1
  store i8 %72, ptr %63, align 1
  %73 = icmp eq ptr %71, null
  br i1 %73, label %74, label %65

74:                                               ; preds = %70, %65, %59
  %75 = getelementptr inbounds %struct.nvkm_vmm, ptr %60, i32 0, i32 6
  %76 = load i64, ptr %75, align 8
  store i64 %76, ptr %26, align 8
  %77 = getelementptr inbounds %struct.nvkm_vmm, ptr %60, i32 0, i32 7
  %78 = load i64, ptr %77, align 8
  store i64 %78, ptr %28, align 8
  br label %79

79:                                               ; preds = %74, %54, %37, %21, %19, %13, %4
  %80 = phi i32 [ 0, %74 ], [ -12, %21 ], [ %42, %37 ], [ -22, %54 ], [ -38, %4 ], [ -38, %13 ], [ -7, %19 ]
  ret i32 %80
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_object_ctor(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvkm_vmm_ref(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @nvkm_uvmm_dtor(ptr noundef returned %0) #0 {
  %2 = getelementptr inbounds %struct.nvkm_uvmm, ptr %0, i32 0, i32 1
  tail call void @nvkm_vmm_unref(ptr noundef %2) #6
  ret ptr %0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvkm_uvmm_mthd(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca ptr, align 4
  %6 = alloca ptr, align 4
  switch i32 %1, label %452 [
    i32 0, label %7
    i32 1, label %48
    i32 2, label %81
    i32 3, label %151
    i32 4, label %319
    i32 5, label %397
    i32 6, label %423
  ]

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.nvkm_uvmm, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.nvkm_vmm_func, ptr %10, i32 0, i32 8
  br label %12

12:                                               ; preds = %12, %7
  %13 = phi i8 [ 0, %7 ], [ %18, %12 ]
  %14 = zext i8 %13 to i32
  %15 = getelementptr %struct.nvkm_vmm_page, ptr %11, i32 %14
  %16 = load i8, ptr %15, align 4
  %17 = icmp eq i8 %16, 0
  %18 = add i8 %13, 1
  br i1 %17, label %19, label %12

19:                                               ; preds = %12
  %20 = icmp ugt i32 %3, 7
  br i1 %20, label %21, label %455

21:                                               ; preds = %19
  %22 = load i8, ptr %2, align 1
  %23 = icmp eq i8 %22, 0
  %24 = icmp eq i32 %3, 8
  %25 = and i1 %24, %23
  br i1 %25, label %26, label %455

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.nvif_vmm_page_v0, ptr %2, i32 0, i32 1
  %28 = load i8, ptr %27, align 1
  %29 = icmp ult i8 %28, %13
  br i1 %29, label %30, label %455

30:                                               ; preds = %26
  %31 = zext i8 %28 to i32
  %32 = getelementptr %struct.nvkm_vmm_page, ptr %11, i32 %31
  %33 = getelementptr %struct.nvkm_vmm_page, ptr %11, i32 %31, i32 2
  %34 = load i8, ptr %33, align 4
  %35 = load i8, ptr %32, align 4
  %36 = getelementptr inbounds %struct.nvif_vmm_page_v0, ptr %2, i32 0, i32 2
  store i8 %35, ptr %36, align 1
  %37 = and i8 %34, 1
  %38 = getelementptr inbounds %struct.nvif_vmm_page_v0, ptr %2, i32 0, i32 3
  store i8 %37, ptr %38, align 1
  %39 = lshr i8 %34, 1
  %40 = and i8 %39, 1
  %41 = getelementptr inbounds %struct.nvif_vmm_page_v0, ptr %2, i32 0, i32 4
  store i8 %40, ptr %41, align 1
  %42 = lshr i8 %34, 2
  %43 = and i8 %42, 1
  %44 = getelementptr inbounds %struct.nvif_vmm_page_v0, ptr %2, i32 0, i32 5
  store i8 %43, ptr %44, align 1
  %45 = lshr i8 %34, 3
  %46 = and i8 %45, 1
  %47 = getelementptr inbounds %struct.nvif_vmm_page_v0, ptr %2, i32 0, i32 6
  store i8 %46, ptr %47, align 1
  br label %455

48:                                               ; preds = %4
  %49 = getelementptr inbounds %struct.nvkm_uvmm, ptr %0, i32 0, i32 1
  %50 = load ptr, ptr %49, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #6
  store ptr null, ptr %6, align 4, !annotation !8
  %51 = icmp ugt i32 %3, 23
  br i1 %51, label %52, label %79

52:                                               ; preds = %48
  %53 = load i8, ptr %2, align 8
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %55, label %79

55:                                               ; preds = %52
  %56 = icmp eq i32 %3, 24
  br i1 %56, label %57, label %79

57:                                               ; preds = %55
  %58 = getelementptr inbounds %struct.nvif_vmm_get_v0, ptr %2, i32 0, i32 1
  %59 = load i8, ptr %58, align 1
  %60 = icmp eq i8 %59, 1
  %61 = icmp eq i8 %59, 0
  %62 = getelementptr inbounds %struct.nvif_vmm_get_v0, ptr %2, i32 0, i32 2
  %63 = load i8, ptr %62, align 2
  %64 = icmp ne i8 %63, 0
  %65 = getelementptr inbounds %struct.nvif_vmm_get_v0, ptr %2, i32 0, i32 3
  %66 = load i8, ptr %65, align 1
  %67 = getelementptr inbounds %struct.nvif_vmm_get_v0, ptr %2, i32 0, i32 4
  %68 = load i8, ptr %67, align 4
  %69 = getelementptr inbounds %struct.nvif_vmm_get_v0, ptr %2, i32 0, i32 6
  %70 = load i64, ptr %69, align 8
  %71 = getelementptr inbounds %struct.nvkm_vmm, ptr %50, i32 0, i32 5
  tail call void @mutex_lock(ptr noundef %71) #6
  %72 = call i32 @nvkm_vmm_get_locked(ptr noundef %50, i1 noundef zeroext %60, i1 noundef zeroext %61, i1 noundef zeroext %64, i8 noundef zeroext %66, i8 noundef zeroext %68, i64 noundef %70, ptr noundef nonnull %6) #6
  call void @mutex_unlock(ptr noundef %71) #6
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %57
  %75 = load ptr, ptr %6, align 4
  %76 = getelementptr inbounds %struct.nvkm_vma, ptr %75, i32 0, i32 2
  %77 = load i64, ptr %76, align 8
  %78 = getelementptr inbounds %struct.nvif_vmm_get_v0, ptr %2, i32 0, i32 7
  store i64 %77, ptr %78, align 8
  br label %79

79:                                               ; preds = %74, %57, %55, %52, %48
  %80 = phi i32 [ 0, %74 ], [ %72, %57 ], [ -38, %48 ], [ -38, %52 ], [ -7, %55 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #6
  br label %455

81:                                               ; preds = %4
  %82 = getelementptr inbounds %struct.nvkm_uvmm, ptr %0, i32 0, i32 1
  %83 = load ptr, ptr %82, align 8
  %84 = icmp ugt i32 %3, 15
  br i1 %84, label %85, label %455

85:                                               ; preds = %81
  %86 = load i8, ptr %2, align 8
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %88, label %455

88:                                               ; preds = %85
  %89 = icmp eq i32 %3, 16
  br i1 %89, label %90, label %455

90:                                               ; preds = %88
  %91 = getelementptr inbounds %struct.nvif_vmm_put_v0, ptr %2, i32 0, i32 2
  %92 = load i64, ptr %91, align 8
  %93 = getelementptr inbounds %struct.nvkm_vmm, ptr %83, i32 0, i32 5
  tail call void @mutex_lock(ptr noundef %93) #6
  %94 = load i64, ptr %91, align 8
  %95 = tail call ptr @nvkm_vmm_node_search(ptr noundef %83, i64 noundef %94) #6
  %96 = icmp eq ptr %95, null
  br i1 %96, label %106, label %97

97:                                               ; preds = %90
  %98 = getelementptr inbounds %struct.nvkm_vma, ptr %95, i32 0, i32 2
  %99 = load i64, ptr %98, align 8
  %100 = icmp eq i64 %99, %92
  br i1 %100, label %101, label %106

101:                                              ; preds = %97
  %102 = getelementptr inbounds %struct.nvkm_vma, ptr %95, i32 0, i32 4
  %103 = load i8, ptr %102, align 1
  %104 = and i8 %103, 16
  %105 = icmp eq i8 %104, 0
  br i1 %105, label %131, label %106

106:                                              ; preds = %101, %97, %90
  %107 = getelementptr inbounds %struct.nvkm_vmm, ptr %83, i32 0, i32 3
  %108 = load i32, ptr %107, align 4
  %109 = icmp ugt i32 %108, 3
  br i1 %109, label %110, label %149

110:                                              ; preds = %106
  %111 = getelementptr inbounds %struct.nvkm_vmm, ptr %83, i32 0, i32 1
  %112 = load ptr, ptr %111, align 4
  %113 = getelementptr inbounds %struct.nvkm_mmu, ptr %112, i32 0, i32 1, i32 1
  %114 = load ptr, ptr %113, align 4
  %115 = getelementptr inbounds %struct.nvkm_device, ptr %114, i32 0, i32 2
  %116 = load ptr, ptr %115, align 8
  %117 = getelementptr inbounds %struct.nvkm_mmu, ptr %112, i32 0, i32 1, i32 4
  %118 = getelementptr inbounds %struct.nvkm_vmm, ptr %83, i32 0, i32 2
  %119 = load ptr, ptr %118, align 8
  br i1 %96, label %128, label %120

120:                                              ; preds = %110
  %121 = getelementptr inbounds %struct.nvkm_vma, ptr %95, i32 0, i32 2
  %122 = load i64, ptr %121, align 8
  %123 = getelementptr inbounds %struct.nvkm_vma, ptr %95, i32 0, i32 4
  %124 = load i8, ptr %123, align 1
  %125 = lshr i8 %124, 4
  %126 = and i8 %125, 1
  %127 = zext i8 %126 to i32
  br label %128

128:                                              ; preds = %120, %110
  %129 = phi i64 [ %122, %120 ], [ -1, %110 ]
  %130 = phi i32 [ %127, %120 ], [ 0, %110 ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %116, ptr noundef nonnull @.str.1, ptr noundef %117, ptr noundef %119, i64 noundef %92, i64 noundef %129, i32 noundef %130) #8
  br label %149

131:                                              ; preds = %101
  %132 = and i8 %103, 32
  %133 = icmp eq i8 %132, 0
  br i1 %133, label %148, label %134

134:                                              ; preds = %131
  %135 = getelementptr inbounds %struct.nvkm_vmm, ptr %83, i32 0, i32 3
  %136 = load i32, ptr %135, align 4
  %137 = icmp ugt i32 %136, 3
  br i1 %137, label %138, label %149

138:                                              ; preds = %134
  %139 = getelementptr inbounds %struct.nvkm_vmm, ptr %83, i32 0, i32 1
  %140 = load ptr, ptr %139, align 4
  %141 = getelementptr inbounds %struct.nvkm_mmu, ptr %140, i32 0, i32 1, i32 1
  %142 = load ptr, ptr %141, align 4
  %143 = getelementptr inbounds %struct.nvkm_device, ptr %142, i32 0, i32 2
  %144 = load ptr, ptr %143, align 8
  %145 = getelementptr inbounds %struct.nvkm_mmu, ptr %140, i32 0, i32 1, i32 4
  %146 = getelementptr inbounds %struct.nvkm_vmm, ptr %83, i32 0, i32 2
  %147 = load ptr, ptr %146, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %144, ptr noundef nonnull @.str.2, ptr noundef %145, ptr noundef %147, i64 noundef %92, i32 noundef 1) #8
  br label %149

148:                                              ; preds = %131
  tail call void @nvkm_vmm_put_locked(ptr noundef %83, ptr noundef nonnull %95) #6
  br label %149

149:                                              ; preds = %148, %138, %134, %128, %106
  %150 = phi i32 [ 0, %148 ], [ -2, %128 ], [ -2, %106 ], [ -2, %138 ], [ -2, %134 ]
  tail call void @mutex_unlock(ptr noundef %93) #6
  br label %455

151:                                              ; preds = %4
  %152 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 1
  %153 = load ptr, ptr %152, align 4
  %154 = getelementptr inbounds %struct.nvkm_uvmm, ptr %0, i32 0, i32 1
  %155 = load ptr, ptr %154, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #6
  %156 = icmp ugt i32 %3, 39
  br i1 %156, label %157, label %317

157:                                              ; preds = %151
  %158 = load i8, ptr %2, align 8
  %159 = icmp eq i8 %158, 0
  br i1 %159, label %160, label %317

160:                                              ; preds = %157
  %161 = getelementptr i8, ptr %2, i32 40
  %162 = add i32 %3, -40
  %163 = getelementptr inbounds %struct.nvif_vmm_map_v0, ptr %2, i32 0, i32 2
  %164 = load i64, ptr %163, align 8
  %165 = getelementptr inbounds %struct.nvif_vmm_map_v0, ptr %2, i32 0, i32 3
  %166 = load i64, ptr %165, align 8
  %167 = getelementptr inbounds %struct.nvif_vmm_map_v0, ptr %2, i32 0, i32 4
  %168 = load i64, ptr %167, align 8
  %169 = getelementptr inbounds %struct.nvif_vmm_map_v0, ptr %2, i32 0, i32 5
  %170 = load i64, ptr %169, align 8
  %171 = tail call ptr @nvkm_umem_search(ptr noundef %153, i64 noundef %168) #6
  store ptr %171, ptr %5, align 4
  %172 = icmp ugt ptr %171, inttoptr (i32 -4096 to ptr)
  br i1 %172, label %173, label %190

173:                                              ; preds = %160
  %174 = getelementptr inbounds %struct.nvkm_vmm, ptr %155, i32 0, i32 3
  %175 = load i32, ptr %174, align 4
  %176 = icmp ugt i32 %175, 3
  br i1 %176, label %179, label %177

177:                                              ; preds = %173
  %178 = ptrtoint ptr %171 to i32
  br label %317

179:                                              ; preds = %173
  %180 = getelementptr inbounds %struct.nvkm_vmm, ptr %155, i32 0, i32 1
  %181 = load ptr, ptr %180, align 4
  %182 = getelementptr inbounds %struct.nvkm_mmu, ptr %181, i32 0, i32 1, i32 1
  %183 = load ptr, ptr %182, align 4
  %184 = getelementptr inbounds %struct.nvkm_device, ptr %183, i32 0, i32 2
  %185 = load ptr, ptr %184, align 8
  %186 = getelementptr inbounds %struct.nvkm_mmu, ptr %181, i32 0, i32 1, i32 4
  %187 = getelementptr inbounds %struct.nvkm_vmm, ptr %155, i32 0, i32 2
  %188 = load ptr, ptr %187, align 8
  %189 = ptrtoint ptr %171 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %185, ptr noundef nonnull @.str.3, ptr noundef %186, ptr noundef %188, i64 noundef %168, i32 noundef %189) #8
  br label %317

190:                                              ; preds = %160
  %191 = getelementptr inbounds %struct.nvkm_vmm, ptr %155, i32 0, i32 5
  tail call void @mutex_lock(ptr noundef %191) #6
  %192 = tail call ptr @nvkm_vmm_node_search(ptr noundef %155, i64 noundef %164) #6
  %193 = icmp eq ptr %192, null
  br i1 %193, label %194, label %208

194:                                              ; preds = %190
  %195 = getelementptr inbounds %struct.nvkm_vmm, ptr %155, i32 0, i32 3
  %196 = load i32, ptr %195, align 4
  %197 = icmp ugt i32 %196, 3
  br i1 %197, label %198, label %315

198:                                              ; preds = %194
  %199 = getelementptr inbounds %struct.nvkm_vmm, ptr %155, i32 0, i32 1
  %200 = load ptr, ptr %199, align 4
  %201 = getelementptr inbounds %struct.nvkm_mmu, ptr %200, i32 0, i32 1, i32 1
  %202 = load ptr, ptr %201, align 4
  %203 = getelementptr inbounds %struct.nvkm_device, ptr %202, i32 0, i32 2
  %204 = load ptr, ptr %203, align 8
  %205 = getelementptr inbounds %struct.nvkm_mmu, ptr %200, i32 0, i32 1, i32 4
  %206 = getelementptr inbounds %struct.nvkm_vmm, ptr %155, i32 0, i32 2
  %207 = load ptr, ptr %206, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %204, ptr noundef nonnull @.str.4, ptr noundef %205, ptr noundef %207, i64 noundef %164) #8
  br label %315

208:                                              ; preds = %190
  %209 = getelementptr inbounds %struct.nvkm_vma, ptr %192, i32 0, i32 4
  %210 = load i8, ptr %209, align 1
  %211 = and i8 %210, 32
  %212 = icmp eq i8 %211, 0
  br i1 %212, label %227, label %213

213:                                              ; preds = %208
  %214 = getelementptr inbounds %struct.nvkm_vmm, ptr %155, i32 0, i32 3
  %215 = load i32, ptr %214, align 4
  %216 = icmp ugt i32 %215, 3
  br i1 %216, label %217, label %315

217:                                              ; preds = %213
  %218 = getelementptr inbounds %struct.nvkm_vmm, ptr %155, i32 0, i32 1
  %219 = load ptr, ptr %218, align 4
  %220 = getelementptr inbounds %struct.nvkm_mmu, ptr %219, i32 0, i32 1, i32 1
  %221 = load ptr, ptr %220, align 4
  %222 = getelementptr inbounds %struct.nvkm_device, ptr %221, i32 0, i32 2
  %223 = load ptr, ptr %222, align 8
  %224 = getelementptr inbounds %struct.nvkm_mmu, ptr %219, i32 0, i32 1, i32 4
  %225 = getelementptr inbounds %struct.nvkm_vmm, ptr %155, i32 0, i32 2
  %226 = load ptr, ptr %225, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %223, ptr noundef nonnull @.str.2, ptr noundef %224, ptr noundef %226, i64 noundef %164, i32 noundef 1) #8
  br label %315

227:                                              ; preds = %208
  %228 = and i8 %210, 64
  %229 = icmp eq i8 %228, 0
  br i1 %229, label %248, label %230

230:                                              ; preds = %227
  %231 = getelementptr inbounds %struct.nvkm_vma, ptr %192, i32 0, i32 5
  %232 = load ptr, ptr %231, align 8
  %233 = icmp eq ptr %232, null
  br i1 %233, label %234, label %248

234:                                              ; preds = %230
  %235 = getelementptr inbounds %struct.nvkm_vmm, ptr %155, i32 0, i32 3
  %236 = load i32, ptr %235, align 4
  %237 = icmp ugt i32 %236, 3
  br i1 %237, label %238, label %315

238:                                              ; preds = %234
  %239 = getelementptr inbounds %struct.nvkm_vmm, ptr %155, i32 0, i32 1
  %240 = load ptr, ptr %239, align 4
  %241 = getelementptr inbounds %struct.nvkm_mmu, ptr %240, i32 0, i32 1, i32 1
  %242 = load ptr, ptr %241, align 4
  %243 = getelementptr inbounds %struct.nvkm_device, ptr %242, i32 0, i32 2
  %244 = load ptr, ptr %243, align 8
  %245 = getelementptr inbounds %struct.nvkm_mmu, ptr %240, i32 0, i32 1, i32 4
  %246 = getelementptr inbounds %struct.nvkm_vmm, ptr %155, i32 0, i32 2
  %247 = load ptr, ptr %246, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %244, ptr noundef nonnull @.str.5, ptr noundef %245, ptr noundef %247, i64 noundef %164) #8
  br label %315

248:                                              ; preds = %230, %227
  %249 = getelementptr inbounds %struct.nvkm_vma, ptr %192, i32 0, i32 2
  %250 = load i64, ptr %249, align 8
  %251 = icmp eq i64 %250, %164
  %252 = getelementptr inbounds %struct.nvkm_vma, ptr %192, i32 0, i32 3
  %253 = load i56, ptr %252, align 8
  %254 = and i56 %253, 1125899906842623
  %255 = zext i56 %254 to i64
  %256 = icmp eq i64 %166, %255
  %257 = select i1 %251, i1 %256, i1 false
  br i1 %257, label %301, label %258

258:                                              ; preds = %248
  %259 = add i64 %166, %164
  %260 = add i64 %250, %255
  %261 = icmp ugt i64 %259, %260
  br i1 %261, label %272, label %262

262:                                              ; preds = %258
  %263 = getelementptr inbounds %struct.nvkm_vma, ptr %192, i32 0, i32 5
  %264 = load ptr, ptr %263, align 8
  %265 = icmp eq ptr %264, null
  br i1 %265, label %266, label %272

266:                                              ; preds = %262
  %267 = and i8 %210, 7
  %268 = icmp eq i8 %267, 7
  %269 = and i56 %253, 1125899906842624
  %270 = icmp eq i56 %269, 0
  %271 = select i1 %268, i1 %270, i1 false
  br i1 %271, label %272, label %295

272:                                              ; preds = %266, %262, %258
  %273 = getelementptr inbounds %struct.nvkm_vmm, ptr %155, i32 0, i32 3
  %274 = load i32, ptr %273, align 4
  %275 = icmp ugt i32 %274, 3
  br i1 %275, label %276, label %315

276:                                              ; preds = %272
  %277 = getelementptr inbounds %struct.nvkm_vmm, ptr %155, i32 0, i32 1
  %278 = load ptr, ptr %277, align 4
  %279 = getelementptr inbounds %struct.nvkm_mmu, ptr %278, i32 0, i32 1, i32 1
  %280 = load ptr, ptr %279, align 4
  %281 = getelementptr inbounds %struct.nvkm_device, ptr %280, i32 0, i32 2
  %282 = load ptr, ptr %281, align 8
  %283 = getelementptr inbounds %struct.nvkm_mmu, ptr %278, i32 0, i32 1, i32 4
  %284 = getelementptr inbounds %struct.nvkm_vmm, ptr %155, i32 0, i32 2
  %285 = load ptr, ptr %284, align 8
  %286 = getelementptr inbounds %struct.nvkm_vma, ptr %192, i32 0, i32 5
  %287 = load ptr, ptr %286, align 8
  %288 = icmp ne ptr %287, null
  %289 = zext i1 %288 to i32
  %290 = and i8 %210, 7
  %291 = zext i8 %290 to i32
  %292 = lshr i56 %253, 50
  %293 = trunc i56 %292 to i32
  %294 = and i32 %293, 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %282, ptr noundef nonnull @.str.6, ptr noundef %283, ptr noundef %285, i32 noundef %289, i32 noundef %291, i32 noundef %294, i64 noundef %164, i64 noundef %166, i64 noundef %250, i64 noundef %255) #8
  br label %315

295:                                              ; preds = %266
  %296 = tail call ptr @nvkm_vmm_node_split(ptr noundef %155, ptr noundef nonnull %192, i64 noundef %164, i64 noundef %166) #6
  %297 = icmp eq ptr %296, null
  br i1 %297, label %315, label %298

298:                                              ; preds = %295
  %299 = getelementptr inbounds %struct.nvkm_vma, ptr %296, i32 0, i32 4
  %300 = load i8, ptr %299, align 1
  br label %301

301:                                              ; preds = %298, %248
  %302 = phi i8 [ %300, %298 ], [ %210, %248 ]
  %303 = phi ptr [ %296, %298 ], [ %192, %248 ]
  %304 = getelementptr inbounds %struct.nvkm_vma, ptr %303, i32 0, i32 4
  %305 = or i8 %302, 32
  store i8 %305, ptr %304, align 1
  tail call void @mutex_unlock(ptr noundef %191) #6
  %306 = load ptr, ptr %171, align 4
  %307 = getelementptr inbounds %struct.nvkm_memory_func, ptr %306, i32 0, i32 9
  %308 = load ptr, ptr %307, align 4
  %309 = tail call i32 %308(ptr noundef %171, i64 noundef %170, ptr noundef %155, ptr noundef nonnull %303, ptr noundef %161, i32 noundef %162) #6
  %310 = icmp eq i32 %309, 0
  br i1 %310, label %311, label %312

311:                                              ; preds = %301
  call void @nvkm_memory_unref(ptr noundef nonnull %5) #6
  br label %317

312:                                              ; preds = %301
  tail call void @mutex_lock(ptr noundef %191) #6
  %313 = load i8, ptr %304, align 1
  %314 = and i8 %313, -33
  store i8 %314, ptr %304, align 1
  tail call void @nvkm_vmm_unmap_region(ptr noundef %155, ptr noundef nonnull %303) #6
  br label %315

315:                                              ; preds = %312, %295, %276, %272, %238, %234, %217, %213, %198, %194
  %316 = phi i32 [ %309, %312 ], [ -2, %198 ], [ -2, %194 ], [ -2, %217 ], [ -2, %213 ], [ -22, %238 ], [ -22, %234 ], [ -22, %276 ], [ -22, %272 ], [ -12, %295 ]
  tail call void @mutex_unlock(ptr noundef %191) #6
  call void @nvkm_memory_unref(ptr noundef nonnull %5) #6
  br label %317

317:                                              ; preds = %315, %311, %179, %177, %157, %151
  %318 = phi i32 [ %316, %315 ], [ 0, %311 ], [ -38, %157 ], [ -38, %151 ], [ %178, %177 ], [ %189, %179 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #6
  br label %455

319:                                              ; preds = %4
  %320 = getelementptr inbounds %struct.nvkm_uvmm, ptr %0, i32 0, i32 1
  %321 = load ptr, ptr %320, align 8
  %322 = icmp ugt i32 %3, 15
  br i1 %322, label %323, label %455

323:                                              ; preds = %319
  %324 = load i8, ptr %2, align 8
  %325 = icmp eq i8 %324, 0
  br i1 %325, label %326, label %455

326:                                              ; preds = %323
  %327 = icmp eq i32 %3, 16
  br i1 %327, label %328, label %455

328:                                              ; preds = %326
  %329 = getelementptr inbounds %struct.nvif_vmm_unmap_v0, ptr %2, i32 0, i32 2
  %330 = load i64, ptr %329, align 8
  %331 = getelementptr inbounds %struct.nvkm_vmm, ptr %321, i32 0, i32 5
  tail call void @mutex_lock(ptr noundef %331) #6
  %332 = tail call ptr @nvkm_vmm_node_search(ptr noundef %321, i64 noundef %330) #6
  %333 = icmp eq ptr %332, null
  br i1 %333, label %338, label %334

334:                                              ; preds = %328
  %335 = getelementptr inbounds %struct.nvkm_vma, ptr %332, i32 0, i32 2
  %336 = load i64, ptr %335, align 8
  %337 = icmp eq i64 %336, %330
  br i1 %337, label %357, label %338

338:                                              ; preds = %334, %328
  %339 = getelementptr inbounds %struct.nvkm_vmm, ptr %321, i32 0, i32 3
  %340 = load i32, ptr %339, align 4
  %341 = icmp ugt i32 %340, 3
  br i1 %341, label %342, label %395

342:                                              ; preds = %338
  %343 = getelementptr inbounds %struct.nvkm_vmm, ptr %321, i32 0, i32 1
  %344 = load ptr, ptr %343, align 4
  %345 = getelementptr inbounds %struct.nvkm_mmu, ptr %344, i32 0, i32 1, i32 1
  %346 = load ptr, ptr %345, align 4
  %347 = getelementptr inbounds %struct.nvkm_device, ptr %346, i32 0, i32 2
  %348 = load ptr, ptr %347, align 8
  %349 = getelementptr inbounds %struct.nvkm_mmu, ptr %344, i32 0, i32 1, i32 4
  %350 = getelementptr inbounds %struct.nvkm_vmm, ptr %321, i32 0, i32 2
  %351 = load ptr, ptr %350, align 8
  br i1 %333, label %355, label %352

352:                                              ; preds = %342
  %353 = getelementptr inbounds %struct.nvkm_vma, ptr %332, i32 0, i32 2
  %354 = load i64, ptr %353, align 8
  br label %355

355:                                              ; preds = %352, %342
  %356 = phi i64 [ %354, %352 ], [ -1, %342 ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %348, ptr noundef nonnull @.str.7, ptr noundef %349, ptr noundef %351, i64 noundef %330, i64 noundef %356) #8
  br label %395

357:                                              ; preds = %334
  %358 = getelementptr inbounds %struct.nvkm_vma, ptr %332, i32 0, i32 4
  %359 = load i8, ptr %358, align 1
  %360 = and i8 %359, 32
  %361 = icmp eq i8 %360, 0
  br i1 %361, label %376, label %362

362:                                              ; preds = %357
  %363 = getelementptr inbounds %struct.nvkm_vmm, ptr %321, i32 0, i32 3
  %364 = load i32, ptr %363, align 4
  %365 = icmp ugt i32 %364, 3
  br i1 %365, label %366, label %395

366:                                              ; preds = %362
  %367 = getelementptr inbounds %struct.nvkm_vmm, ptr %321, i32 0, i32 1
  %368 = load ptr, ptr %367, align 4
  %369 = getelementptr inbounds %struct.nvkm_mmu, ptr %368, i32 0, i32 1, i32 1
  %370 = load ptr, ptr %369, align 4
  %371 = getelementptr inbounds %struct.nvkm_device, ptr %370, i32 0, i32 2
  %372 = load ptr, ptr %371, align 8
  %373 = getelementptr inbounds %struct.nvkm_mmu, ptr %368, i32 0, i32 1, i32 4
  %374 = getelementptr inbounds %struct.nvkm_vmm, ptr %321, i32 0, i32 2
  %375 = load ptr, ptr %374, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %372, ptr noundef nonnull @.str.2, ptr noundef %373, ptr noundef %375, i64 noundef %330, i32 noundef 1) #8
  br label %395

376:                                              ; preds = %357
  %377 = getelementptr inbounds %struct.nvkm_vma, ptr %332, i32 0, i32 5
  %378 = load ptr, ptr %377, align 8
  %379 = icmp eq ptr %378, null
  br i1 %379, label %380, label %394

380:                                              ; preds = %376
  %381 = getelementptr inbounds %struct.nvkm_vmm, ptr %321, i32 0, i32 3
  %382 = load i32, ptr %381, align 4
  %383 = icmp ugt i32 %382, 3
  br i1 %383, label %384, label %395

384:                                              ; preds = %380
  %385 = getelementptr inbounds %struct.nvkm_vmm, ptr %321, i32 0, i32 1
  %386 = load ptr, ptr %385, align 4
  %387 = getelementptr inbounds %struct.nvkm_mmu, ptr %386, i32 0, i32 1, i32 1
  %388 = load ptr, ptr %387, align 4
  %389 = getelementptr inbounds %struct.nvkm_device, ptr %388, i32 0, i32 2
  %390 = load ptr, ptr %389, align 8
  %391 = getelementptr inbounds %struct.nvkm_mmu, ptr %386, i32 0, i32 1, i32 4
  %392 = getelementptr inbounds %struct.nvkm_vmm, ptr %321, i32 0, i32 2
  %393 = load ptr, ptr %392, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %390, ptr noundef nonnull @.str.8, ptr noundef %391, ptr noundef %393) #8
  br label %395

394:                                              ; preds = %376
  tail call void @nvkm_vmm_unmap_locked(ptr noundef %321, ptr noundef nonnull %332, i1 noundef zeroext false) #6
  br label %395

395:                                              ; preds = %394, %384, %380, %366, %362, %355, %338
  %396 = phi i32 [ 0, %394 ], [ -2, %355 ], [ -2, %338 ], [ -2, %366 ], [ -2, %362 ], [ -22, %384 ], [ -22, %380 ]
  tail call void @mutex_unlock(ptr noundef %331) #6
  br label %455

397:                                              ; preds = %4
  %398 = getelementptr inbounds %struct.nvkm_uvmm, ptr %0, i32 0, i32 1
  %399 = load ptr, ptr %398, align 8
  %400 = icmp ugt i32 %3, 23
  br i1 %400, label %401, label %455

401:                                              ; preds = %397
  %402 = load i8, ptr %2, align 8
  %403 = icmp eq i8 %402, 0
  br i1 %403, label %404, label %455

404:                                              ; preds = %401
  %405 = add i32 %3, -24
  %406 = getelementptr inbounds %struct.nvif_vmm_pfnmap_v0, ptr %2, i32 0, i32 1
  %407 = load i8, ptr %406, align 1
  %408 = getelementptr inbounds %struct.nvif_vmm_pfnmap_v0, ptr %2, i32 0, i32 3
  %409 = load i64, ptr %408, align 8
  %410 = getelementptr inbounds %struct.nvif_vmm_pfnmap_v0, ptr %2, i32 0, i32 4
  %411 = load i64, ptr %410, align 8
  %412 = getelementptr inbounds %struct.nvif_vmm_pfnmap_v0, ptr %2, i32 0, i32 5
  %413 = zext i32 %405 to i64
  %414 = zext i8 %407 to i64
  %415 = lshr i64 %411, %414
  %416 = shl i64 %415, 3
  %417 = icmp eq i64 %416, %413
  br i1 %417, label %418, label %455

418:                                              ; preds = %404
  %419 = icmp eq i64 %411, 0
  br i1 %419, label %455, label %420

420:                                              ; preds = %418
  %421 = getelementptr inbounds %struct.nvkm_vmm, ptr %399, i32 0, i32 5
  tail call void @mutex_lock(ptr noundef %421) #6
  %422 = tail call i32 @nvkm_vmm_pfn_map(ptr noundef %399, i8 noundef zeroext %407, i64 noundef %409, i64 noundef %411, ptr noundef %412) #6
  tail call void @mutex_unlock(ptr noundef %421) #6
  br label %455

423:                                              ; preds = %4
  %424 = getelementptr inbounds %struct.nvkm_uvmm, ptr %0, i32 0, i32 1
  %425 = load ptr, ptr %424, align 8
  %426 = icmp ugt i32 %3, 23
  br i1 %426, label %427, label %455

427:                                              ; preds = %423
  %428 = load i8, ptr %2, align 8
  %429 = icmp eq i8 %428, 0
  br i1 %429, label %430, label %455

430:                                              ; preds = %427
  %431 = icmp eq i32 %3, 24
  br i1 %431, label %432, label %455

432:                                              ; preds = %430
  %433 = getelementptr inbounds %struct.nvif_vmm_pfnclr_v0, ptr %2, i32 0, i32 3
  %434 = load i64, ptr %433, align 8
  %435 = icmp eq i64 %434, 0
  br i1 %435, label %455, label %436

436:                                              ; preds = %432
  %437 = getelementptr inbounds %struct.nvif_vmm_pfnclr_v0, ptr %2, i32 0, i32 2
  %438 = load i64, ptr %437, align 8
  %439 = getelementptr inbounds %struct.nvkm_vmm, ptr %425, i32 0, i32 5
  tail call void @mutex_lock(ptr noundef %439) #6
  %440 = tail call i32 @nvkm_vmm_pfn_unmap(ptr noundef %425, i64 noundef %438, i64 noundef %434) #6
  tail call void @mutex_unlock(ptr noundef %439) #6
  br label %455

441:                                              ; preds = %452
  %442 = getelementptr inbounds %struct.nvkm_uvmm, ptr %0, i32 0, i32 1
  %443 = load ptr, ptr %442, align 8
  %444 = load ptr, ptr %443, align 8
  %445 = getelementptr inbounds %struct.nvkm_vmm_func, ptr %444, i32 0, i32 5
  %446 = load ptr, ptr %445, align 4
  %447 = icmp eq ptr %446, null
  br i1 %447, label %455, label %448

448:                                              ; preds = %441
  %449 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 1
  %450 = load ptr, ptr %449, align 4
  %451 = tail call i32 %446(ptr noundef %443, ptr noundef %450, i32 noundef %1, ptr noundef %2, i32 noundef %3) #6
  br label %455

452:                                              ; preds = %4
  %453 = and i32 %1, -128
  %454 = icmp eq i32 %453, 128
  br i1 %454, label %441, label %455

455:                                              ; preds = %452, %448, %441, %436, %432, %430, %427, %423, %420, %418, %404, %401, %397, %395, %326, %323, %319, %317, %149, %88, %85, %81, %79, %30, %26, %21, %19
  %456 = phi i32 [ %451, %448 ], [ %318, %317 ], [ %80, %79 ], [ -22, %452 ], [ -22, %441 ], [ 0, %30 ], [ -22, %26 ], [ -38, %19 ], [ -38, %21 ], [ %150, %149 ], [ -38, %81 ], [ -38, %85 ], [ -7, %88 ], [ %396, %395 ], [ -38, %319 ], [ -38, %323 ], [ -7, %326 ], [ -22, %404 ], [ %422, %420 ], [ 0, %418 ], [ -38, %401 ], [ -38, %397 ], [ %440, %436 ], [ 0, %432 ], [ -38, %423 ], [ -38, %427 ], [ -7, %430 ]
  ret i32 %456
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_vmm_unref(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_vmm_get_locked(ptr noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvkm_vmm_node_search(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_vmm_put_locked(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvkm_umem_search(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvkm_vmm_node_split(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_memory_unref(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_vmm_unmap_region(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_vmm_unmap_locked(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_vmm_pfn_map(ptr noundef, i8 noundef zeroext, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_vmm_pfn_unmap(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind allocsize(2) }
attributes #8 = { cold nounwind }

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
