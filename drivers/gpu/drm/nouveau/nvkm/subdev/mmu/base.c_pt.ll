; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/base.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/base.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_subdev_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.nvkm_mmu_pt = type { %union.anon.2, ptr, i8, i16, i64, %struct.list_head }
%union.anon.2 = type { ptr }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_mmu = type { ptr, %struct.nvkm_subdev, i8, i32, [4 x %struct.anon.124], i32, [16 x %struct.anon.125], ptr, %struct.anon.126, %struct.anon.126, %struct.mutex, %struct.nvkm_device_oclass }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.anon.124 = type { i8, i64 }
%struct.anon.125 = type { i8, i8 }
%struct.anon.126 = type { %struct.mutex, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_device_oclass = type { ptr, %struct.nvkm_sclass }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.nvkm_mmu_ptp = type { ptr, %struct.list_head, i8, i16, i16 }
%struct.nvkm_mmu_ptc = type { %struct.list_head, %struct.list_head, i32, i32 }
%struct.nvkm_memory_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_memory = type { ptr, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.nvkm_memory_ptrs = type { ptr, ptr }
%struct.nvkm_mmu_func = type { ptr, i8, %struct.anon, %struct.anon.1, %struct.anon.3, ptr, i8 }
%struct.anon = type { %struct.nvkm_sclass }
%struct.anon.1 = type { %struct.nvkm_sclass, ptr, ptr }
%struct.anon.3 = type { %struct.nvkm_sclass, ptr, i8, i32 }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.123, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.anon.123 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvkm_fb = type { ptr, %struct.nvkm_subdev, %struct.nvkm_blob, ptr, %struct.anon.138, %struct.anon.139, i8, ptr, ptr }
%struct.nvkm_blob = type { ptr, i32 }
%struct.anon.138 = type { %struct.mutex, %struct.nvkm_mm }
%struct.nvkm_mm = type { %struct.list_head, %struct.list_head, i32, i32 }
%struct.anon.139 = type { [16 x %struct.nvkm_fb_tile], i32 }
%struct.nvkm_fb_tile = type { ptr, i32, i32, i32, i32 }
%struct.nvkm_ram = type { ptr, ptr, i32, i64, %struct.nvkm_mm, i64, %struct.mutex, i32, i32, i32, i32, [16 x i32], i32, ptr, %struct.nvkm_ram_data, %struct.nvkm_ram_data, %struct.nvkm_ram_data }
%struct.nvkm_ram_data = type { %struct.list_head, %struct.nvbios_ramcfg, i32 }
%struct.nvbios_ramcfg = type <{ i32, i32, i32, i32, %union.anon.127, i32, i32, i32, i32, i32, i32, %union.anon.131, i32, i32, [11 x i32], %union.anon.135 }>
%union.anon.127 = type { %struct.anon.130 }
%struct.anon.130 = type { i64 }
%union.anon.131 = type { %struct.anon.134 }
%struct.anon.134 = type { i32, i32, i8 }
%union.anon.135 = type <{ %struct.anon.137, [12 x i8] }>
%struct.anon.137 = type { i48 }
%struct.nvkm_mm_node = type { %struct.list_head, %struct.list_head, ptr, i8, i8, i32, i32 }
%struct.nvkm_bar = type { ptr, %struct.nvkm_subdev, %struct.spinlock, i8, i8 }
%struct.nvkm_device_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }

@nvkm_mmu = internal constant %struct.nvkm_subdev_func { ptr @nvkm_mmu_dtor, ptr null, ptr @nvkm_mmu_oneinit, ptr null, ptr @nvkm_mmu_init, ptr null, ptr null }, align 4
@nvkm_mmu_ctor.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str = private unnamed_addr constant [12 x i8] c"&mmu->mutex\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"drivers/gpu/drm/nouveau/nvkm/subdev/mmu/base.c\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"gart\00", align 1
@nvkm_mmu_ptc_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"&mmu->ptc.mutex\00", align 1
@nvkm_mmu_ptc_init.__key.4 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"&mmu->ptp.mutex\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvkm_mmu_ptc_put(ptr noundef %0, i1 noundef zeroext %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr %2, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %66, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %4, i32 0, i32 2
  %8 = load i8, ptr %7, align 8, !range !8
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %45, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.nvkm_mmu, ptr %0, i32 0, i32 9
  tail call void @mutex_lock(ptr noundef %11) #5
  %12 = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %4, i32 0, i32 3
  %13 = load i16, ptr %12, align 2
  %14 = zext i16 %13 to i32
  %15 = load ptr, ptr %4, align 8
  %16 = getelementptr inbounds %struct.nvkm_mmu_ptp, ptr %15, i32 0, i32 2
  %17 = load i8, ptr %16, align 4
  %18 = zext i8 %17 to i32
  %19 = lshr i32 %14, %18
  %20 = getelementptr inbounds %struct.nvkm_mmu_ptp, ptr %15, i32 0, i32 4
  %21 = load i16, ptr %20, align 4
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %10
  %24 = getelementptr inbounds %struct.nvkm_mmu_ptp, ptr %15, i32 0, i32 1
  %25 = getelementptr inbounds %struct.nvkm_mmu, ptr %0, i32 0, i32 9, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  store ptr %24, ptr %27, align 4
  store ptr %26, ptr %24, align 4
  %28 = getelementptr inbounds %struct.nvkm_mmu_ptp, ptr %15, i32 0, i32 1, i32 1
  store ptr %25, ptr %28, align 4
  store volatile ptr %24, ptr %25, align 4
  %29 = load i16, ptr %20, align 4
  br label %30

30:                                               ; preds = %23, %10
  %31 = phi i16 [ %29, %23 ], [ %21, %10 ]
  %32 = shl nuw i32 1, %19
  %33 = trunc i32 %32 to i16
  %34 = or i16 %31, %33
  store i16 %34, ptr %20, align 4
  %35 = getelementptr inbounds %struct.nvkm_mmu_ptp, ptr %15, i32 0, i32 3
  %36 = load i16, ptr %35, align 2
  %37 = icmp eq i16 %34, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %30
  tail call void @nvkm_mmu_ptc_put(ptr noundef %0, i1 noundef zeroext %1, ptr noundef %15) #5
  %39 = getelementptr inbounds %struct.nvkm_mmu_ptp, ptr %15, i32 0, i32 1
  %40 = getelementptr inbounds %struct.nvkm_mmu_ptp, ptr %15, i32 0, i32 1, i32 1
  %41 = load ptr, ptr %40, align 4
  %42 = load ptr, ptr %39, align 4
  %43 = getelementptr inbounds %struct.list_head, ptr %42, i32 0, i32 1
  store ptr %41, ptr %43, align 4
  store volatile ptr %42, ptr %41, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %39, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %40, align 4
  tail call void @kfree(ptr noundef %15) #5
  br label %44

44:                                               ; preds = %38, %30
  tail call void @kfree(ptr noundef nonnull %4) #5
  br label %64

45:                                               ; preds = %6
  %46 = getelementptr inbounds %struct.nvkm_mmu, ptr %0, i32 0, i32 8
  tail call void @mutex_lock(ptr noundef %46) #5
  %47 = load ptr, ptr %4, align 8
  %48 = getelementptr inbounds %struct.nvkm_mmu_ptc, ptr %47, i32 0, i32 3
  %49 = load i32, ptr %48, align 4
  %50 = icmp ugt i32 %49, 7
  %51 = or i1 %50, %1
  br i1 %51, label %62, label %52

52:                                               ; preds = %45
  %53 = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %4, i32 0, i32 5
  %54 = getelementptr inbounds %struct.nvkm_mmu_ptc, ptr %47, i32 0, i32 1
  %55 = getelementptr inbounds %struct.nvkm_mmu_ptc, ptr %47, i32 0, i32 1, i32 1
  %56 = load ptr, ptr %55, align 4
  store ptr %53, ptr %55, align 4
  store ptr %54, ptr %53, align 4
  %57 = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %4, i32 0, i32 5, i32 1
  store ptr %56, ptr %57, align 4
  store volatile ptr %53, ptr %56, align 4
  %58 = load ptr, ptr %4, align 8
  %59 = getelementptr inbounds %struct.nvkm_mmu_ptc, ptr %58, i32 0, i32 3
  %60 = load i32, ptr %59, align 4
  %61 = add i32 %60, 1
  store i32 %61, ptr %59, align 4
  br label %64

62:                                               ; preds = %45
  %63 = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %4, i32 0, i32 1
  tail call void @nvkm_memory_unref(ptr noundef %63) #5
  tail call void @kfree(ptr noundef nonnull %4) #5
  br label %64

64:                                               ; preds = %62, %52, %44
  %65 = phi ptr [ %11, %44 ], [ %46, %62 ], [ %46, %52 ]
  tail call void @mutex_unlock(ptr noundef %65) #5
  br label %66

66:                                               ; preds = %64, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_memory_unref(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @nvkm_mmu_ptc_get(ptr noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = icmp ult i32 %2, 4096
  br i1 %5, label %6, label %93

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.nvkm_mmu, ptr %0, i32 0, i32 9
  tail call void @mutex_lock(ptr noundef %7) #5
  %8 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %9 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 32) #6
  %10 = icmp eq ptr %9, null
  br i1 %10, label %91, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.nvkm_mmu, ptr %0, i32 0, i32 9, i32 1
  %13 = load volatile ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, %12
  %15 = getelementptr i8, ptr %13, i32 -4
  %16 = icmp eq ptr %15, null
  %17 = or i1 %14, %16
  br i1 %17, label %18, label %54

18:                                               ; preds = %11
  %19 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %20 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %19, i32 noundef 3264, i32 noundef 20) #6
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  tail call void @kfree(ptr noundef nonnull %9) #5
  br label %91

23:                                               ; preds = %18
  %24 = tail call ptr @nvkm_mmu_ptc_get(ptr noundef %0, i32 noundef 4096, i32 noundef 4096, i1 noundef zeroext false) #5
  store ptr %24, ptr %20, align 8
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  tail call void @kfree(ptr noundef nonnull %20) #5
  tail call void @kfree(ptr noundef nonnull %9) #5
  br label %91

27:                                               ; preds = %23
  %28 = icmp ugt i32 %2, 1
  %29 = add nsw i32 %2, -1
  %30 = tail call i32 @llvm.ctlz.i32(i32 %29, i1 false) #5, !range !9
  %31 = sub nuw nsw i32 32, %30
  %32 = select i1 %28, i32 %31, i32 0
  %33 = trunc i32 %32 to i8
  %34 = getelementptr inbounds %struct.nvkm_mmu_ptp, ptr %20, i32 0, i32 2
  store i8 %33, ptr %34, align 4
  %35 = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %24, i32 0, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.nvkm_memory_func, ptr %37, i32 0, i32 5
  %39 = load ptr, ptr %38, align 4
  %40 = tail call i64 %39(ptr noundef %36) #5
  %41 = and i32 %32, 255
  %42 = zext i32 %41 to i64
  %43 = lshr i64 %40, %42
  %44 = trunc i64 %43 to i32
  %45 = shl nsw i32 -1, %44
  %46 = trunc i32 %45 to i16
  %47 = xor i16 %46, -1
  %48 = getelementptr inbounds %struct.nvkm_mmu_ptp, ptr %20, i32 0, i32 3
  store i16 %47, ptr %48, align 2
  %49 = getelementptr inbounds %struct.nvkm_mmu_ptp, ptr %20, i32 0, i32 4
  store i16 %47, ptr %49, align 8
  %50 = getelementptr inbounds %struct.nvkm_mmu_ptp, ptr %20, i32 0, i32 1
  %51 = load ptr, ptr %12, align 4
  %52 = getelementptr inbounds %struct.list_head, ptr %51, i32 0, i32 1
  store ptr %50, ptr %52, align 4
  store ptr %51, ptr %50, align 4
  %53 = getelementptr inbounds %struct.nvkm_mmu_ptp, ptr %20, i32 0, i32 1, i32 1
  store ptr %12, ptr %53, align 8
  store volatile ptr %50, ptr %12, align 4
  br label %54

54:                                               ; preds = %27, %11
  %55 = phi ptr [ %15, %11 ], [ %20, %27 ]
  store ptr %55, ptr %9, align 8
  %56 = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %9, i32 0, i32 2
  store i8 1, ptr %56, align 8
  %57 = getelementptr inbounds %struct.nvkm_mmu_ptp, ptr %55, i32 0, i32 4
  %58 = load i16, ptr %57, align 4
  %59 = zext i16 %58 to i32
  %60 = tail call i32 @llvm.cttz.i32(i32 %59, i1 false) #5, !range !9
  %61 = shl nuw i32 1, %60
  %62 = trunc i32 %61 to i16
  %63 = xor i16 %62, -1
  %64 = and i16 %58, %63
  store i16 %64, ptr %57, align 4
  %65 = icmp eq i16 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %54
  %67 = getelementptr inbounds %struct.nvkm_mmu_ptp, ptr %55, i32 0, i32 1
  %68 = getelementptr inbounds %struct.nvkm_mmu_ptp, ptr %55, i32 0, i32 1, i32 1
  %69 = load ptr, ptr %68, align 4
  %70 = load ptr, ptr %67, align 4
  %71 = getelementptr inbounds %struct.list_head, ptr %70, i32 0, i32 1
  store ptr %69, ptr %71, align 4
  store volatile ptr %70, ptr %69, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %67, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %68, align 4
  br label %72

72:                                               ; preds = %66, %54
  %73 = load ptr, ptr %9, align 8
  %74 = load ptr, ptr %73, align 4
  %75 = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %74, i32 0, i32 1
  %76 = load ptr, ptr %75, align 4
  %77 = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %9, i32 0, i32 1
  store ptr %76, ptr %77, align 4
  %78 = getelementptr inbounds %struct.nvkm_mmu_ptp, ptr %55, i32 0, i32 2
  %79 = load i8, ptr %78, align 4
  %80 = zext i8 %79 to i32
  %81 = shl i32 %60, %80
  %82 = trunc i32 %81 to i16
  %83 = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %9, i32 0, i32 3
  store i16 %82, ptr %83, align 2
  %84 = load ptr, ptr %73, align 4
  %85 = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %84, i32 0, i32 4
  %86 = load i64, ptr %85, align 8
  %87 = and i32 %81, 65535
  %88 = zext i32 %87 to i64
  %89 = add i64 %86, %88
  %90 = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %9, i32 0, i32 4
  store i64 %89, ptr %90, align 8
  br label %91

91:                                               ; preds = %72, %26, %22, %6
  %92 = phi ptr [ %9, %72 ], [ null, %26 ], [ null, %22 ], [ null, %6 ]
  tail call void @mutex_unlock(ptr noundef %7) #5
  br label %195

93:                                               ; preds = %4
  %94 = getelementptr inbounds %struct.nvkm_mmu, ptr %0, i32 0, i32 8
  tail call void @mutex_lock(ptr noundef %94) #5
  %95 = getelementptr inbounds %struct.nvkm_mmu, ptr %0, i32 0, i32 8, i32 1
  br label %96

96:                                               ; preds = %100, %93
  %97 = phi ptr [ %95, %93 ], [ %98, %100 ]
  %98 = load ptr, ptr %97, align 4
  %99 = icmp eq ptr %98, %95
  br i1 %99, label %104, label %100

100:                                              ; preds = %96
  %101 = getelementptr inbounds %struct.nvkm_mmu_ptc, ptr %98, i32 0, i32 2
  %102 = load i32, ptr %101, align 4
  %103 = icmp eq i32 %102, %1
  br i1 %103, label %116, label %96

104:                                              ; preds = %96
  %105 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %106 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %105, i32 noundef 3264, i32 noundef 24) #6
  %107 = icmp eq ptr %106, null
  br i1 %107, label %118, label %108

108:                                              ; preds = %104
  %109 = getelementptr inbounds %struct.nvkm_mmu_ptc, ptr %106, i32 0, i32 1
  store volatile ptr %109, ptr %109, align 8
  %110 = getelementptr inbounds %struct.nvkm_mmu_ptc, ptr %106, i32 0, i32 1, i32 1
  store ptr %109, ptr %110, align 4
  %111 = getelementptr inbounds %struct.nvkm_mmu_ptc, ptr %106, i32 0, i32 2
  store i32 %1, ptr %111, align 8
  %112 = getelementptr inbounds %struct.nvkm_mmu_ptc, ptr %106, i32 0, i32 3
  store i32 0, ptr %112, align 4
  %113 = load ptr, ptr %95, align 4
  %114 = getelementptr inbounds %struct.list_head, ptr %113, i32 0, i32 1
  store ptr %106, ptr %114, align 4
  store ptr %113, ptr %106, align 8
  %115 = getelementptr inbounds %struct.list_head, ptr %106, i32 0, i32 1
  store ptr %95, ptr %115, align 4
  store volatile ptr %106, ptr %95, align 4
  br label %119

116:                                              ; preds = %100
  %117 = icmp eq ptr %98, null
  br i1 %117, label %118, label %119

118:                                              ; preds = %116, %104
  tail call void @mutex_unlock(ptr noundef %94) #5
  br label %195

119:                                              ; preds = %116, %108
  %120 = phi ptr [ %106, %108 ], [ %98, %116 ]
  %121 = getelementptr inbounds %struct.nvkm_mmu_ptc, ptr %120, i32 0, i32 1
  %122 = load volatile ptr, ptr %121, align 4
  %123 = icmp eq ptr %122, %121
  %124 = getelementptr i8, ptr %122, i32 -24
  %125 = select i1 %123, ptr null, ptr %124
  %126 = icmp eq ptr %125, null
  br i1 %126, label %174, label %127

127:                                              ; preds = %119
  br i1 %3, label %128, label %165

128:                                              ; preds = %127
  %129 = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %125, i32 0, i32 1
  %130 = load ptr, ptr %129, align 4
  %131 = load ptr, ptr %130, align 4
  %132 = getelementptr inbounds %struct.nvkm_memory_func, ptr %131, i32 0, i32 7
  %133 = load ptr, ptr %132, align 4
  %134 = tail call ptr %133(ptr noundef %130) #5
  %135 = icmp eq ptr %134, null
  br i1 %135, label %136, label %141, !prof !10

136:                                              ; preds = %128
  %137 = icmp ult i32 %1, 8
  br i1 %137, label %160, label %138

138:                                              ; preds = %136
  %139 = lshr i32 %1, 3
  %140 = zext i32 %139 to i64
  br label %143

141:                                              ; preds = %128
  %142 = and i32 %1, -8
  tail call void @mmioset(ptr noundef nonnull %134, i32 noundef 0, i32 noundef %142) #5
  br label %160

143:                                              ; preds = %143, %138
  %144 = phi i64 [ %157, %143 ], [ %140, %138 ]
  %145 = phi i64 [ %158, %143 ], [ 0, %138 ]
  %146 = load ptr, ptr %129, align 4
  %147 = getelementptr inbounds %struct.nvkm_memory, ptr %146, i32 0, i32 1
  %148 = load ptr, ptr %147, align 4
  %149 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %148, i32 0, i32 1
  %150 = load ptr, ptr %149, align 4
  tail call void %150(ptr noundef %146, i64 noundef %145, i32 noundef 0) #5
  %151 = load ptr, ptr %129, align 4
  %152 = getelementptr inbounds %struct.nvkm_memory, ptr %151, i32 0, i32 1
  %153 = load ptr, ptr %152, align 4
  %154 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %153, i32 0, i32 1
  %155 = load ptr, ptr %154, align 4
  %156 = or i64 %145, 4
  tail call void %155(ptr noundef %151, i64 noundef %156, i32 noundef 0) #5
  %157 = add nsw i64 %144, -1
  %158 = add nuw nsw i64 %145, 8
  %159 = icmp eq i64 %157, 0
  br i1 %159, label %160, label %143

160:                                              ; preds = %143, %141, %136
  %161 = load ptr, ptr %129, align 4
  %162 = load ptr, ptr %161, align 4
  %163 = getelementptr inbounds %struct.nvkm_memory_func, ptr %162, i32 0, i32 8
  %164 = load ptr, ptr %163, align 4
  tail call void %164(ptr noundef %161) #5
  br label %165

165:                                              ; preds = %160, %127
  %166 = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %125, i32 0, i32 5
  %167 = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %125, i32 0, i32 5, i32 1
  %168 = load ptr, ptr %167, align 4
  %169 = load ptr, ptr %166, align 4
  %170 = getelementptr inbounds %struct.list_head, ptr %169, i32 0, i32 1
  store ptr %168, ptr %170, align 4
  store volatile ptr %169, ptr %168, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %166, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %167, align 4
  %171 = getelementptr inbounds %struct.nvkm_mmu_ptc, ptr %120, i32 0, i32 3
  %172 = load i32, ptr %171, align 4
  %173 = add i32 %172, -1
  store i32 %173, ptr %171, align 4
  tail call void @mutex_unlock(ptr noundef %94) #5
  br label %195

174:                                              ; preds = %119
  tail call void @mutex_unlock(ptr noundef %94) #5
  %175 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %176 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %175, i32 noundef 3264, i32 noundef 32) #6
  %177 = icmp eq ptr %176, null
  br i1 %177, label %195, label %178

178:                                              ; preds = %174
  store ptr %120, ptr %176, align 8
  %179 = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %176, i32 0, i32 2
  store i8 0, ptr %179, align 8
  %180 = getelementptr inbounds %struct.nvkm_mmu, ptr %0, i32 0, i32 1, i32 1
  %181 = load ptr, ptr %180, align 4
  %182 = zext i32 %1 to i64
  %183 = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %176, i32 0, i32 1
  %184 = tail call i32 @nvkm_memory_new(ptr noundef %181, i32 noundef 0, i64 noundef %182, i32 noundef %2, i1 noundef zeroext %3, ptr noundef %183) #5
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %187, label %186

186:                                              ; preds = %178
  tail call void @kfree(ptr noundef nonnull %176) #5
  br label %195

187:                                              ; preds = %178
  %188 = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %176, i32 0, i32 3
  store i16 0, ptr %188, align 2
  %189 = load ptr, ptr %183, align 4
  %190 = load ptr, ptr %189, align 4
  %191 = getelementptr inbounds %struct.nvkm_memory_func, ptr %190, i32 0, i32 4
  %192 = load ptr, ptr %191, align 4
  %193 = tail call i64 %192(ptr noundef %189) #5
  %194 = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %176, i32 0, i32 4
  store i64 %193, ptr %194, align 8
  br label %195

195:                                              ; preds = %187, %186, %174, %165, %118, %91
  %196 = phi ptr [ %92, %91 ], [ %125, %165 ], [ null, %186 ], [ %176, %187 ], [ null, %118 ], [ null, %174 ]
  ret ptr %196
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_memory_new(ptr noundef, i32 noundef, i64 noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvkm_mmu_ptc_dump(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.nvkm_mmu, ptr %0, i32 0, i32 8, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %23, label %8

5:                                                ; preds = %13, %8
  %6 = load ptr, ptr %9, align 4
  %7 = icmp eq ptr %6, %2
  br i1 %7, label %23, label %8

8:                                                ; preds = %5, %1
  %9 = phi ptr [ %6, %5 ], [ %3, %1 ]
  %10 = getelementptr inbounds %struct.nvkm_mmu_ptc, ptr %9, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, %10
  br i1 %12, label %5, label %13

13:                                               ; preds = %13, %8
  %14 = phi ptr [ %16, %13 ], [ %11, %8 ]
  %15 = getelementptr i8, ptr %14, i32 -24
  %16 = load ptr, ptr %14, align 8
  %17 = getelementptr i8, ptr %14, i32 -20
  tail call void @nvkm_memory_unref(ptr noundef %17) #5
  %18 = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = load ptr, ptr %14, align 4
  %21 = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  store ptr %19, ptr %21, align 4
  store volatile ptr %20, ptr %19, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %14, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %18, align 4
  tail call void @kfree(ptr noundef %15) #5
  %22 = icmp eq ptr %16, %10
  br i1 %22, label %5, label %13

23:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvkm_mmu_ctor(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.nvkm_mmu, ptr %4, i32 0, i32 1
  tail call void @nvkm_subdev_ctor(ptr noundef nonnull @nvkm_mmu, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %6) #5
  store ptr %0, ptr %4, align 8
  %7 = getelementptr inbounds %struct.nvkm_mmu_func, ptr %0, i32 0, i32 1
  %8 = load i8, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nvkm_mmu, ptr %4, i32 0, i32 2
  store i8 %8, ptr %9, align 8
  %10 = getelementptr inbounds %struct.nvkm_mmu, ptr %4, i32 0, i32 8
  tail call void @__mutex_init(ptr noundef %10, ptr noundef nonnull @.str.3, ptr noundef nonnull @nvkm_mmu_ptc_init.__key) #5
  %11 = getelementptr inbounds %struct.nvkm_mmu, ptr %4, i32 0, i32 8, i32 1
  store volatile ptr %11, ptr %11, align 4
  %12 = getelementptr inbounds %struct.nvkm_mmu, ptr %4, i32 0, i32 8, i32 1, i32 1
  store ptr %11, ptr %12, align 4
  %13 = getelementptr inbounds %struct.nvkm_mmu, ptr %4, i32 0, i32 9
  tail call void @__mutex_init(ptr noundef %13, ptr noundef nonnull @.str.5, ptr noundef nonnull @nvkm_mmu_ptc_init.__key.4) #5
  %14 = getelementptr inbounds %struct.nvkm_mmu, ptr %4, i32 0, i32 9, i32 1
  store volatile ptr %14, ptr %14, align 4
  %15 = getelementptr inbounds %struct.nvkm_mmu, ptr %4, i32 0, i32 9, i32 1, i32 1
  store ptr %14, ptr %15, align 4
  %16 = getelementptr inbounds %struct.nvkm_mmu, ptr %4, i32 0, i32 10
  tail call void @__mutex_init(ptr noundef %16, ptr noundef nonnull @.str, ptr noundef nonnull @nvkm_mmu_ctor.__key) #5
  %17 = getelementptr inbounds %struct.nvkm_mmu, ptr %4, i32 0, i32 11
  store ptr @nvkm_ummu_new, ptr %17, align 4
  %18 = getelementptr inbounds %struct.nvkm_mmu, ptr %4, i32 0, i32 11, i32 1
  %19 = getelementptr inbounds %struct.nvkm_mmu_func, ptr %0, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(20) %18, ptr noundef align 4 dereferenceable(20) %19, i32 20, i1 false)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_subdev_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_ummu_new(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_mmu_new_(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #0 {
  %6 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %7 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 272) #6
  store ptr %7, ptr %4, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %24, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.nvkm_mmu, ptr %7, i32 0, i32 1
  tail call void @nvkm_subdev_ctor(ptr noundef nonnull @nvkm_mmu, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %10) #5
  store ptr %0, ptr %7, align 8
  %11 = getelementptr inbounds %struct.nvkm_mmu_func, ptr %0, i32 0, i32 1
  %12 = load i8, ptr %11, align 4
  %13 = getelementptr inbounds %struct.nvkm_mmu, ptr %7, i32 0, i32 2
  store i8 %12, ptr %13, align 8
  %14 = getelementptr inbounds %struct.nvkm_mmu, ptr %7, i32 0, i32 8
  tail call void @__mutex_init(ptr noundef %14, ptr noundef nonnull @.str.3, ptr noundef nonnull @nvkm_mmu_ptc_init.__key) #5
  %15 = getelementptr inbounds %struct.nvkm_mmu, ptr %7, i32 0, i32 8, i32 1
  store volatile ptr %15, ptr %15, align 4
  %16 = getelementptr inbounds %struct.nvkm_mmu, ptr %7, i32 0, i32 8, i32 1, i32 1
  store ptr %15, ptr %16, align 8
  %17 = getelementptr inbounds %struct.nvkm_mmu, ptr %7, i32 0, i32 9
  tail call void @__mutex_init(ptr noundef %17, ptr noundef nonnull @.str.5, ptr noundef nonnull @nvkm_mmu_ptc_init.__key.4) #5
  %18 = getelementptr inbounds %struct.nvkm_mmu, ptr %7, i32 0, i32 9, i32 1
  store volatile ptr %18, ptr %18, align 8
  %19 = getelementptr inbounds %struct.nvkm_mmu, ptr %7, i32 0, i32 9, i32 1, i32 1
  store ptr %18, ptr %19, align 4
  %20 = getelementptr inbounds %struct.nvkm_mmu, ptr %7, i32 0, i32 10
  tail call void @__mutex_init(ptr noundef %20, ptr noundef nonnull @.str, ptr noundef nonnull @nvkm_mmu_ctor.__key) #5
  %21 = getelementptr inbounds %struct.nvkm_mmu, ptr %7, i32 0, i32 11
  store ptr @nvkm_ummu_new, ptr %21, align 4
  %22 = getelementptr inbounds %struct.nvkm_mmu, ptr %7, i32 0, i32 11, i32 1
  %23 = getelementptr inbounds %struct.nvkm_mmu_func, ptr %0, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(20) %22, ptr noundef align 4 dereferenceable(20) %23, i32 20, i1 false) #5
  br label %24

24:                                               ; preds = %9, %5
  %25 = phi i32 [ 0, %9 ], [ -12, %5 ]
  ret i32 %25
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmioset(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @nvkm_mmu_dtor(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 160
  tail call void @nvkm_vmm_unref(ptr noundef %2) #5
  %3 = getelementptr i8, ptr %0, i32 184
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, %3
  br i1 %5, label %20, label %6

6:                                                ; preds = %14, %1
  %7 = phi ptr [ %8, %14 ], [ %4, %1 ]
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nvkm_mmu_ptc, ptr %7, i32 0, i32 1
  %10 = load volatile ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, %9
  br i1 %11, label %14, label %12, !prof !11

12:                                               ; preds = %6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 239, i32 noundef 9, ptr noundef null) #5
  %13 = load ptr, ptr %7, align 4
  br label %14

14:                                               ; preds = %12, %6
  %15 = phi ptr [ %13, %12 ], [ %8, %6 ]
  %16 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  store ptr %17, ptr %18, align 4
  store volatile ptr %15, ptr %17, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %7, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %16, align 4
  tail call void @kfree(ptr noundef %7) #5
  %19 = icmp eq ptr %8, %3
  br i1 %19, label %20, label %6

20:                                               ; preds = %14, %1
  %21 = getelementptr i8, ptr %0, i32 -4
  ret ptr %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvkm_mmu_oneinit(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -4
  %3 = getelementptr %struct.nvkm_subdev, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 33
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %234, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.nvkm_fb, ptr %6, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %234, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.nvkm_ram, ptr %10, i32 0, i32 4
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, %13
  br i1 %15, label %58, label %16

16:                                               ; preds = %26, %12
  %17 = phi ptr [ %28, %26 ], [ %14, %12 ]
  %18 = phi i32 [ %27, %26 ], [ 0, %12 ]
  %19 = getelementptr inbounds %struct.nvkm_mm_node, ptr %17, i32 0, i32 3
  %20 = load i8, ptr %19, align 4
  %21 = icmp eq i8 %20, 1
  br i1 %21, label %22, label %26

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.nvkm_mm_node, ptr %17, i32 0, i32 6
  %24 = load i32, ptr %23, align 4
  %25 = add i32 %24, %18
  br label %26

26:                                               ; preds = %22, %16
  %27 = phi i32 [ %25, %22 ], [ %18, %16 ]
  %28 = load ptr, ptr %17, align 4
  %29 = icmp eq ptr %28, %13
  br i1 %29, label %30, label %16

30:                                               ; preds = %40, %26
  %31 = phi ptr [ %42, %40 ], [ %14, %26 ]
  %32 = phi i32 [ %41, %40 ], [ 0, %26 ]
  %33 = getelementptr inbounds %struct.nvkm_mm_node, ptr %31, i32 0, i32 3
  %34 = load i8, ptr %33, align 4
  %35 = icmp eq i8 %34, 2
  br i1 %35, label %36, label %40

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.nvkm_mm_node, ptr %31, i32 0, i32 6
  %38 = load i32, ptr %37, align 4
  %39 = add i32 %38, %32
  br label %40

40:                                               ; preds = %36, %30
  %41 = phi i32 [ %39, %36 ], [ %32, %30 ]
  %42 = load ptr, ptr %31, align 4
  %43 = icmp eq ptr %42, %13
  br i1 %43, label %44, label %30

44:                                               ; preds = %54, %40
  %45 = phi ptr [ %56, %54 ], [ %14, %40 ]
  %46 = phi i32 [ %55, %54 ], [ 0, %40 ]
  %47 = getelementptr inbounds %struct.nvkm_mm_node, ptr %45, i32 0, i32 3
  %48 = load i8, ptr %47, align 4
  %49 = icmp eq i8 %48, 3
  br i1 %49, label %50, label %54

50:                                               ; preds = %44
  %51 = getelementptr inbounds %struct.nvkm_mm_node, ptr %45, i32 0, i32 6
  %52 = load i32, ptr %51, align 4
  %53 = add i32 %52, %46
  br label %54

54:                                               ; preds = %50, %44
  %55 = phi i32 [ %53, %50 ], [ %46, %44 ]
  %56 = load ptr, ptr %45, align 4
  %57 = icmp eq ptr %56, %13
  br i1 %57, label %58, label %44

58:                                               ; preds = %54, %12
  %59 = phi i32 [ 0, %12 ], [ %41, %54 ]
  %60 = phi i32 [ 0, %12 ], [ %27, %54 ]
  %61 = phi i32 [ 0, %12 ], [ %55, %54 ]
  %62 = zext i32 %60 to i64
  %63 = zext i32 %59 to i64
  %64 = zext i32 %61 to i64
  %65 = load ptr, ptr %2, align 8
  %66 = getelementptr inbounds %struct.nvkm_mmu_func, ptr %65, i32 0, i32 5
  %67 = load ptr, ptr %66, align 4
  %68 = icmp eq ptr %67, null
  %69 = select i1 %68, i8 0, i8 16
  %70 = shl nuw nsw i64 %64, 12
  %71 = icmp eq i32 %61, 0
  br i1 %71, label %82, label %72

72:                                               ; preds = %58
  %73 = getelementptr i8, ptr %0, i32 56
  %74 = load i32, ptr %73, align 4
  %75 = icmp eq i32 %74, 4
  br i1 %75, label %76, label %77, !prof !10

76:                                               ; preds = %72
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 268, i32 noundef 9, ptr noundef null) #5
  br label %82

77:                                               ; preds = %72
  %78 = getelementptr %struct.nvkm_mmu, ptr %2, i32 0, i32 4, i32 %74
  store i8 1, ptr %78, align 8
  %79 = getelementptr %struct.nvkm_mmu, ptr %2, i32 0, i32 4, i32 %74, i32 1
  store i64 %70, ptr %79, align 8
  %80 = load i32, ptr %73, align 4
  %81 = add i32 %80, 1
  store i32 %81, ptr %73, align 4
  br label %82

82:                                               ; preds = %77, %76, %58
  %83 = phi i32 [ %80, %77 ], [ -22, %76 ], [ -22, %58 ]
  %84 = shl nuw nsw i64 %62, 12
  %85 = icmp eq i32 %60, 0
  br i1 %85, label %96, label %86

86:                                               ; preds = %82
  %87 = getelementptr i8, ptr %0, i32 56
  %88 = load i32, ptr %87, align 4
  %89 = icmp eq i32 %88, 4
  br i1 %89, label %90, label %91, !prof !10

90:                                               ; preds = %86
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 268, i32 noundef 9, ptr noundef null) #5
  br label %96

91:                                               ; preds = %86
  %92 = getelementptr %struct.nvkm_mmu, ptr %2, i32 0, i32 4, i32 %88
  store i8 13, ptr %92, align 8
  %93 = getelementptr %struct.nvkm_mmu, ptr %2, i32 0, i32 4, i32 %88, i32 1
  store i64 %84, ptr %93, align 8
  %94 = load i32, ptr %87, align 4
  %95 = add i32 %94, 1
  store i32 %95, ptr %87, align 4
  br label %96

96:                                               ; preds = %91, %90, %82
  %97 = phi i32 [ %94, %91 ], [ -22, %90 ], [ -22, %82 ]
  %98 = shl nuw nsw i64 %63, 12
  %99 = icmp eq i32 %59, 0
  br i1 %99, label %126, label %100

100:                                              ; preds = %96
  %101 = getelementptr i8, ptr %0, i32 56
  %102 = load i32, ptr %101, align 4
  %103 = icmp eq i32 %102, 4
  br i1 %103, label %104, label %105, !prof !10

104:                                              ; preds = %100
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 268, i32 noundef 9, ptr noundef null) #5
  br label %126

105:                                              ; preds = %100
  %106 = getelementptr %struct.nvkm_mmu, ptr %2, i32 0, i32 4, i32 %102
  store i8 13, ptr %106, align 8
  %107 = getelementptr %struct.nvkm_mmu, ptr %2, i32 0, i32 4, i32 %102, i32 1
  store i64 %98, ptr %107, align 8
  %108 = load i32, ptr %101, align 4
  %109 = add i32 %108, 1
  store i32 %109, ptr %101, align 4
  %110 = icmp sgt i32 %108, -1
  br i1 %110, label %111, label %126

111:                                              ; preds = %105
  %112 = getelementptr i8, ptr %0, i32 124
  %113 = load i32, ptr %112, align 8
  %114 = icmp eq i32 %113, 16
  br i1 %114, label %115, label %116, !prof !10

115:                                              ; preds = %111
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 257, i32 noundef 9, ptr noundef null) #5
  br label %126

116:                                              ; preds = %111
  %117 = getelementptr %struct.nvkm_mmu, ptr %2, i32 0, i32 4, i32 %108
  %118 = load i8, ptr %117, align 8
  %119 = or i8 %118, %69
  %120 = getelementptr %struct.nvkm_mmu, ptr %2, i32 0, i32 6, i32 %113
  store i8 %119, ptr %120, align 2
  %121 = trunc i32 %108 to i8
  %122 = load i32, ptr %112, align 8
  %123 = getelementptr %struct.nvkm_mmu, ptr %2, i32 0, i32 6, i32 %122, i32 1
  store i8 %121, ptr %123, align 1
  %124 = load i32, ptr %112, align 8
  %125 = add i32 %124, 1
  store i32 %125, ptr %112, align 8
  br label %126

126:                                              ; preds = %116, %115, %105, %104, %96
  %127 = icmp sgt i32 %97, -1
  br i1 %127, label %128, label %143

128:                                              ; preds = %126
  %129 = getelementptr i8, ptr %0, i32 124
  %130 = load i32, ptr %129, align 8
  %131 = icmp eq i32 %130, 16
  br i1 %131, label %132, label %133, !prof !10

132:                                              ; preds = %128
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 257, i32 noundef 9, ptr noundef null) #5
  br label %143

133:                                              ; preds = %128
  %134 = getelementptr %struct.nvkm_mmu, ptr %2, i32 0, i32 4, i32 %97
  %135 = load i8, ptr %134, align 8
  %136 = or i8 %135, %69
  %137 = getelementptr %struct.nvkm_mmu, ptr %2, i32 0, i32 6, i32 %130
  store i8 %136, ptr %137, align 2
  %138 = trunc i32 %97 to i8
  %139 = load i32, ptr %129, align 8
  %140 = getelementptr %struct.nvkm_mmu, ptr %2, i32 0, i32 6, i32 %139, i32 1
  store i8 %138, ptr %140, align 1
  %141 = load i32, ptr %129, align 8
  %142 = add i32 %141, 1
  store i32 %142, ptr %129, align 8
  br label %143

143:                                              ; preds = %133, %132, %126
  %144 = icmp sgt i32 %83, -1
  br i1 %144, label %145, label %160

145:                                              ; preds = %143
  %146 = getelementptr i8, ptr %0, i32 124
  %147 = load i32, ptr %146, align 8
  %148 = icmp eq i32 %147, 16
  br i1 %148, label %149, label %150, !prof !10

149:                                              ; preds = %145
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 257, i32 noundef 9, ptr noundef null) #5
  br label %160

150:                                              ; preds = %145
  %151 = getelementptr %struct.nvkm_mmu, ptr %2, i32 0, i32 4, i32 %83
  %152 = load i8, ptr %151, align 8
  %153 = or i8 %152, %69
  %154 = getelementptr %struct.nvkm_mmu, ptr %2, i32 0, i32 6, i32 %147
  store i8 %153, ptr %154, align 2
  %155 = trunc i32 %83 to i8
  %156 = load i32, ptr %146, align 8
  %157 = getelementptr %struct.nvkm_mmu, ptr %2, i32 0, i32 6, i32 %156, i32 1
  store i8 %155, ptr %157, align 1
  %158 = load i32, ptr %146, align 8
  %159 = add i32 %158, 1
  store i32 %159, ptr %146, align 8
  br label %160

160:                                              ; preds = %150, %149, %143
  tail call fastcc void @nvkm_mmu_host(ptr noundef %2) #5
  %161 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 36
  %162 = load ptr, ptr %161, align 4
  %163 = icmp eq ptr %162, null
  br i1 %163, label %235, label %164

164:                                              ; preds = %160
  %165 = getelementptr inbounds %struct.nvkm_bar, ptr %162, i32 0, i32 4
  %166 = load i8, ptr %165, align 1, !range !8
  %167 = icmp eq i8 %166, 0
  br i1 %167, label %168, label %201

168:                                              ; preds = %164
  %169 = or i8 %69, 32
  br i1 %127, label %170, label %185

170:                                              ; preds = %168
  %171 = getelementptr i8, ptr %0, i32 124
  %172 = load i32, ptr %171, align 8
  %173 = icmp eq i32 %172, 16
  br i1 %173, label %174, label %175, !prof !10

174:                                              ; preds = %170
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 257, i32 noundef 9, ptr noundef null) #5
  br label %185

175:                                              ; preds = %170
  %176 = getelementptr %struct.nvkm_mmu, ptr %2, i32 0, i32 4, i32 %97
  %177 = load i8, ptr %176, align 8
  %178 = or i8 %177, %169
  %179 = getelementptr %struct.nvkm_mmu, ptr %2, i32 0, i32 6, i32 %172
  store i8 %178, ptr %179, align 2
  %180 = trunc i32 %97 to i8
  %181 = load i32, ptr %171, align 8
  %182 = getelementptr %struct.nvkm_mmu, ptr %2, i32 0, i32 6, i32 %181, i32 1
  store i8 %180, ptr %182, align 1
  %183 = load i32, ptr %171, align 8
  %184 = add i32 %183, 1
  store i32 %184, ptr %171, align 8
  br label %185

185:                                              ; preds = %175, %174, %168
  br i1 %144, label %186, label %201

186:                                              ; preds = %185
  %187 = getelementptr i8, ptr %0, i32 124
  %188 = load i32, ptr %187, align 8
  %189 = icmp eq i32 %188, 16
  br i1 %189, label %190, label %191, !prof !10

190:                                              ; preds = %186
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 257, i32 noundef 9, ptr noundef null) #5
  br label %201

191:                                              ; preds = %186
  %192 = getelementptr %struct.nvkm_mmu, ptr %2, i32 0, i32 4, i32 %83
  %193 = load i8, ptr %192, align 8
  %194 = or i8 %193, %169
  %195 = getelementptr %struct.nvkm_mmu, ptr %2, i32 0, i32 6, i32 %188
  store i8 %194, ptr %195, align 2
  %196 = trunc i32 %83 to i8
  %197 = load i32, ptr %187, align 8
  %198 = getelementptr %struct.nvkm_mmu, ptr %2, i32 0, i32 6, i32 %197, i32 1
  store i8 %196, ptr %198, align 1
  %199 = load i32, ptr %187, align 8
  %200 = add i32 %199, 1
  store i32 %200, ptr %187, align 8
  br label %201

201:                                              ; preds = %191, %190, %185, %164
  %202 = or i8 %69, -32
  br i1 %127, label %203, label %218

203:                                              ; preds = %201
  %204 = getelementptr i8, ptr %0, i32 124
  %205 = load i32, ptr %204, align 8
  %206 = icmp eq i32 %205, 16
  br i1 %206, label %207, label %208, !prof !10

207:                                              ; preds = %203
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 257, i32 noundef 9, ptr noundef null) #5
  br label %218

208:                                              ; preds = %203
  %209 = getelementptr %struct.nvkm_mmu, ptr %2, i32 0, i32 4, i32 %97
  %210 = load i8, ptr %209, align 8
  %211 = or i8 %210, %202
  %212 = getelementptr %struct.nvkm_mmu, ptr %2, i32 0, i32 6, i32 %205
  store i8 %211, ptr %212, align 2
  %213 = trunc i32 %97 to i8
  %214 = load i32, ptr %204, align 8
  %215 = getelementptr %struct.nvkm_mmu, ptr %2, i32 0, i32 6, i32 %214, i32 1
  store i8 %213, ptr %215, align 1
  %216 = load i32, ptr %204, align 8
  %217 = add i32 %216, 1
  store i32 %217, ptr %204, align 8
  br label %218

218:                                              ; preds = %208, %207, %201
  br i1 %144, label %219, label %235

219:                                              ; preds = %218
  %220 = getelementptr i8, ptr %0, i32 124
  %221 = load i32, ptr %220, align 8
  %222 = icmp eq i32 %221, 16
  br i1 %222, label %223, label %224, !prof !10

223:                                              ; preds = %219
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 257, i32 noundef 9, ptr noundef null) #5
  br label %235

224:                                              ; preds = %219
  %225 = getelementptr %struct.nvkm_mmu, ptr %2, i32 0, i32 4, i32 %83
  %226 = load i8, ptr %225, align 8
  %227 = or i8 %226, %202
  %228 = getelementptr %struct.nvkm_mmu, ptr %2, i32 0, i32 6, i32 %221
  store i8 %227, ptr %228, align 2
  %229 = trunc i32 %83 to i8
  %230 = load i32, ptr %220, align 8
  %231 = getelementptr %struct.nvkm_mmu, ptr %2, i32 0, i32 6, i32 %230, i32 1
  store i8 %229, ptr %231, align 1
  %232 = load i32, ptr %220, align 8
  %233 = add i32 %232, 1
  store i32 %233, ptr %220, align 8
  br label %235

234:                                              ; preds = %8, %1
  tail call fastcc void @nvkm_mmu_host(ptr noundef %2)
  br label %235

235:                                              ; preds = %234, %224, %223, %218, %160
  %236 = load ptr, ptr %2, align 8
  %237 = getelementptr inbounds %struct.nvkm_mmu_func, ptr %236, i32 0, i32 4, i32 2
  %238 = load i8, ptr %237, align 4, !range !8
  %239 = icmp eq i8 %238, 0
  br i1 %239, label %245, label %240

240:                                              ; preds = %235
  %241 = load ptr, ptr %3, align 4
  %242 = getelementptr i8, ptr %0, i32 160
  %243 = tail call i32 @nvkm_vmm_new(ptr noundef %241, i64 noundef 0, i64 noundef 0, ptr noundef null, i32 noundef 0, ptr noundef null, ptr noundef nonnull @.str.2, ptr noundef %242) #5
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %245, label %246

245:                                              ; preds = %240, %235
  br label %246

246:                                              ; preds = %245, %240
  %247 = phi i32 [ 0, %245 ], [ %243, %240 ]
  ret i32 %247
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvkm_mmu_init(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -4
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void %4(ptr noundef %2) #5
  br label %7

7:                                                ; preds = %6, %1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_vmm_unref(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @nvkm_mmu_host(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.nvkm_mmu, ptr %0, i32 0, i32 1, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %0, align 8
  %5 = getelementptr inbounds %struct.nvkm_mmu_func, ptr %4, i32 0, i32 6
  %6 = load i8, ptr %5, align 4, !range !8
  %7 = shl nuw nsw i8 %6, 4
  %8 = getelementptr inbounds %struct.nvkm_mmu, ptr %0, i32 0, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 4
  br i1 %10, label %11, label %12, !prof !10

11:                                               ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 268, i32 noundef 9, ptr noundef null) #5
  br label %33

12:                                               ; preds = %1
  %13 = getelementptr %struct.nvkm_mmu, ptr %0, i32 0, i32 4, i32 %9
  store i8 2, ptr %13, align 8
  %14 = getelementptr %struct.nvkm_mmu, ptr %0, i32 0, i32 4, i32 %9, i32 1
  store i64 -1, ptr %14, align 8
  %15 = load i32, ptr %8, align 4
  %16 = add i32 %15, 1
  store i32 %16, ptr %8, align 4
  %17 = icmp sgt i32 %15, -1
  br i1 %17, label %18, label %33

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.nvkm_mmu, ptr %0, i32 0, i32 5
  %20 = load i32, ptr %19, align 8
  %21 = icmp eq i32 %20, 16
  br i1 %21, label %22, label %23, !prof !10

22:                                               ; preds = %18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 257, i32 noundef 9, ptr noundef null) #5
  br label %33

23:                                               ; preds = %18
  %24 = getelementptr %struct.nvkm_mmu, ptr %0, i32 0, i32 4, i32 %15
  %25 = load i8, ptr %24, align 8
  %26 = or i8 %25, %7
  %27 = getelementptr %struct.nvkm_mmu, ptr %0, i32 0, i32 6, i32 %20
  store i8 %26, ptr %27, align 2
  %28 = trunc i32 %15 to i8
  %29 = load i32, ptr %19, align 8
  %30 = getelementptr %struct.nvkm_mmu, ptr %0, i32 0, i32 6, i32 %29, i32 1
  store i8 %28, ptr %30, align 1
  %31 = load i32, ptr %19, align 8
  %32 = add i32 %31, 1
  store i32 %32, ptr %19, align 8
  br label %33

33:                                               ; preds = %23, %22, %12, %11
  %34 = phi i1 [ false, %11 ], [ false, %12 ], [ true, %22 ], [ true, %23 ]
  %35 = phi i32 [ -22, %11 ], [ %15, %12 ], [ %15, %22 ], [ %15, %23 ]
  %36 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 36
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %43, label %39

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.nvkm_bar, ptr %37, i32 0, i32 4
  %41 = load i8, ptr %40, align 1, !range !8
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %59, label %43

43:                                               ; preds = %39, %33
  br i1 %34, label %44, label %76

44:                                               ; preds = %43
  %45 = getelementptr inbounds %struct.nvkm_mmu, ptr %0, i32 0, i32 5
  %46 = load i32, ptr %45, align 8
  %47 = icmp eq i32 %46, 16
  br i1 %47, label %48, label %49, !prof !10

48:                                               ; preds = %44
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 257, i32 noundef 9, ptr noundef null) #5
  br label %76

49:                                               ; preds = %44
  %50 = getelementptr %struct.nvkm_mmu, ptr %0, i32 0, i32 4, i32 %35
  %51 = load i8, ptr %50, align 8
  %52 = or i8 %51, 32
  %53 = getelementptr %struct.nvkm_mmu, ptr %0, i32 0, i32 6, i32 %46
  store i8 %52, ptr %53, align 2
  %54 = trunc i32 %35 to i8
  %55 = load i32, ptr %45, align 8
  %56 = getelementptr %struct.nvkm_mmu, ptr %0, i32 0, i32 6, i32 %55, i32 1
  store i8 %54, ptr %56, align 1
  %57 = load i32, ptr %45, align 8
  %58 = add i32 %57, 1
  store i32 %58, ptr %45, align 8
  br label %76

59:                                               ; preds = %39
  br i1 %34, label %60, label %76

60:                                               ; preds = %59
  %61 = getelementptr inbounds %struct.nvkm_mmu, ptr %0, i32 0, i32 5
  %62 = load i32, ptr %61, align 8
  %63 = icmp eq i32 %62, 16
  br i1 %63, label %64, label %65, !prof !10

64:                                               ; preds = %60
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 257, i32 noundef 9, ptr noundef null) #5
  br label %76

65:                                               ; preds = %60
  %66 = getelementptr %struct.nvkm_mmu, ptr %0, i32 0, i32 4, i32 %35
  %67 = load i8, ptr %66, align 8
  %68 = or i8 %7, %67
  %69 = or i8 %68, 32
  %70 = getelementptr %struct.nvkm_mmu, ptr %0, i32 0, i32 6, i32 %62
  store i8 %69, ptr %70, align 2
  %71 = trunc i32 %35 to i8
  %72 = load i32, ptr %61, align 8
  %73 = getelementptr %struct.nvkm_mmu, ptr %0, i32 0, i32 6, i32 %72, i32 1
  store i8 %71, ptr %73, align 1
  %74 = load i32, ptr %61, align 8
  %75 = add i32 %74, 1
  store i32 %75, ptr %61, align 8
  br label %76

76:                                               ; preds = %65, %64, %59, %49, %48, %43
  %77 = phi i1 [ false, %43 ], [ true, %48 ], [ true, %49 ], [ false, %59 ], [ true, %64 ], [ true, %65 ]
  %78 = load ptr, ptr %3, align 8
  %79 = getelementptr inbounds %struct.nvkm_device_func, ptr %78, i32 0, i32 8
  %80 = load i8, ptr %79, align 4, !range !8
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %98, label %82

82:                                               ; preds = %76
  br i1 %77, label %83, label %115

83:                                               ; preds = %82
  %84 = getelementptr inbounds %struct.nvkm_mmu, ptr %0, i32 0, i32 5
  %85 = load i32, ptr %84, align 8
  %86 = icmp eq i32 %85, 16
  br i1 %86, label %87, label %88, !prof !10

87:                                               ; preds = %83
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 257, i32 noundef 9, ptr noundef null) #5
  br label %99

88:                                               ; preds = %83
  %89 = getelementptr %struct.nvkm_mmu, ptr %0, i32 0, i32 4, i32 %35
  %90 = load i8, ptr %89, align 8
  %91 = or i8 %90, 96
  %92 = getelementptr %struct.nvkm_mmu, ptr %0, i32 0, i32 6, i32 %85
  store i8 %91, ptr %92, align 2
  %93 = trunc i32 %35 to i8
  %94 = load i32, ptr %84, align 8
  %95 = getelementptr %struct.nvkm_mmu, ptr %0, i32 0, i32 6, i32 %94, i32 1
  store i8 %93, ptr %95, align 1
  %96 = load i32, ptr %84, align 8
  %97 = add i32 %96, 1
  store i32 %97, ptr %84, align 8
  br label %99

98:                                               ; preds = %76
  br i1 %77, label %99, label %115

99:                                               ; preds = %98, %88, %87
  %100 = getelementptr inbounds %struct.nvkm_mmu, ptr %0, i32 0, i32 5
  %101 = load i32, ptr %100, align 8
  %102 = icmp eq i32 %101, 16
  br i1 %102, label %103, label %104, !prof !10

103:                                              ; preds = %99
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 257, i32 noundef 9, ptr noundef null) #5
  br label %115

104:                                              ; preds = %99
  %105 = getelementptr %struct.nvkm_mmu, ptr %0, i32 0, i32 4, i32 %35
  %106 = load i8, ptr %105, align 8
  %107 = or i8 %7, %106
  %108 = or i8 %107, -32
  %109 = getelementptr %struct.nvkm_mmu, ptr %0, i32 0, i32 6, i32 %101
  store i8 %108, ptr %109, align 2
  %110 = trunc i32 %35 to i8
  %111 = load i32, ptr %100, align 8
  %112 = getelementptr %struct.nvkm_mmu, ptr %0, i32 0, i32 6, i32 %111, i32 1
  store i8 %110, ptr %112, align 1
  %113 = load i32, ptr %100, align 8
  %114 = add i32 %113, 1
  store i32 %114, ptr %100, align 8
  br label %115

115:                                              ; preds = %104, %103, %98, %82
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_vmm_new(ptr noundef, i64 noundef, i64 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
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
!8 = !{i8 0, i8 2}
!9 = !{i32 0, i32 33}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{!"branch_weights", i32 2000, i32 1}
