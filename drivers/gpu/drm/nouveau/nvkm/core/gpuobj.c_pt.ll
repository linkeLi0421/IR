; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/core/gpuobj.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/core/gpuobj.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_gpuobj_func = type { ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_gpuobj = type { %union.anon, ptr, ptr, ptr, i64, i32, %struct.nvkm_mm, ptr }
%union.anon = type { ptr }
%struct.nvkm_mm = type { %struct.list_head, %struct.list_head, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_mm_node = type { %struct.list_head, %struct.list_head, ptr, i8, i8, i32, i32 }
%struct.nvkm_memory_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_memory = type { ptr, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.nvkm_memory_ptrs = type { ptr, ptr }

@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@nvkm_gpuobj_func = internal constant %struct.nvkm_gpuobj_func { ptr @nvkm_gpuobj_acquire, ptr null, ptr null, ptr null, ptr @nvkm_gpuobj_map }, align 4
@nvkm_gpuobj_heap = internal constant %struct.nvkm_gpuobj_func { ptr @nvkm_gpuobj_heap_acquire, ptr null, ptr null, ptr null, ptr @nvkm_gpuobj_heap_map }, align 4
@nvkm_gpuobj_fast = internal constant %struct.nvkm_gpuobj_func { ptr null, ptr @nvkm_gpuobj_release, ptr @nvkm_gpuobj_rd32_fast, ptr @nvkm_gpuobj_wr32_fast, ptr @nvkm_gpuobj_map }, align 4
@nvkm_gpuobj_slow = internal constant %struct.nvkm_gpuobj_func { ptr null, ptr @nvkm_gpuobj_release, ptr @nvkm_gpuobj_rd32, ptr @nvkm_gpuobj_wr32, ptr @nvkm_gpuobj_map }, align 4
@nvkm_gpuobj_heap_fast = internal constant %struct.nvkm_gpuobj_func { ptr null, ptr @nvkm_gpuobj_heap_release, ptr @nvkm_gpuobj_rd32_fast, ptr @nvkm_gpuobj_wr32_fast, ptr @nvkm_gpuobj_heap_map }, align 4
@nvkm_gpuobj_heap_slow = internal constant %struct.nvkm_gpuobj_func { ptr null, ptr @nvkm_gpuobj_heap_release, ptr @nvkm_gpuobj_heap_rd32, ptr @nvkm_gpuobj_heap_wr32, ptr @nvkm_gpuobj_heap_map }, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvkm_gpuobj_del(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %16, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.nvkm_gpuobj, ptr %2, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.nvkm_gpuobj, ptr %6, i32 0, i32 6
  %10 = getelementptr inbounds %struct.nvkm_gpuobj, ptr %2, i32 0, i32 3
  tail call void @nvkm_mm_free(ptr noundef %9, ptr noundef %10) #4
  br label %11

11:                                               ; preds = %8, %4
  %12 = getelementptr inbounds %struct.nvkm_gpuobj, ptr %2, i32 0, i32 6
  %13 = tail call i32 @nvkm_mm_fini(ptr noundef %12) #4
  %14 = getelementptr inbounds %struct.nvkm_gpuobj, ptr %2, i32 0, i32 2
  tail call void @nvkm_memory_unref(ptr noundef %14) #4
  %15 = load ptr, ptr %0, align 4
  tail call void @kfree(ptr noundef %15) #4
  store ptr null, ptr %0, align 4
  br label %16

16:                                               ; preds = %11, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_mm_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_mm_fini(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_memory_unref(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_gpuobj_new(ptr noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3, ptr noundef %4, ptr nocapture noundef %5) local_unnamed_addr #0 {
  %7 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %8 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 56) #5
  store ptr %8, ptr %5, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %110, label %10

10:                                               ; preds = %6
  %11 = icmp eq ptr %4, null
  br i1 %11, label %69, label %12

12:                                               ; preds = %10
  %13 = icmp sgt i32 %2, -1
  %14 = getelementptr inbounds %struct.nvkm_gpuobj, ptr %4, i32 0, i32 6
  br i1 %13, label %15, label %19

15:                                               ; preds = %12
  %16 = tail call i32 @llvm.smax.i32(i32 %2, i32 1) #4
  %17 = getelementptr inbounds %struct.nvkm_gpuobj, ptr %8, i32 0, i32 3
  %18 = tail call i32 @nvkm_mm_head(ptr noundef %14, i8 noundef zeroext 0, i8 noundef zeroext 1, i32 noundef %1, i32 noundef %1, i32 noundef %16, ptr noundef %17) #4
  br label %23

19:                                               ; preds = %12
  %20 = sub i32 0, %2
  %21 = getelementptr inbounds %struct.nvkm_gpuobj, ptr %8, i32 0, i32 3
  %22 = tail call i32 @nvkm_mm_tail(ptr noundef %14, i8 noundef zeroext 0, i8 noundef zeroext 1, i32 noundef %1, i32 noundef %1, i32 noundef %20, ptr noundef %21) #4
  br label %23

23:                                               ; preds = %19, %15
  %24 = phi i32 [ %18, %15 ], [ %22, %19 ]
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %94

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.nvkm_gpuobj, ptr %8, i32 0, i32 1
  store ptr %4, ptr %27, align 4
  store ptr @nvkm_gpuobj_func, ptr %8, align 8
  %28 = getelementptr inbounds %struct.nvkm_gpuobj, ptr %4, i32 0, i32 4
  %29 = load i64, ptr %28, align 8
  %30 = getelementptr inbounds %struct.nvkm_gpuobj, ptr %8, i32 0, i32 3
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.nvkm_mm_node, ptr %31, i32 0, i32 5
  %33 = load i32, ptr %32, align 4
  %34 = zext i32 %33 to i64
  %35 = add i64 %29, %34
  %36 = getelementptr inbounds %struct.nvkm_gpuobj, ptr %8, i32 0, i32 4
  store i64 %35, ptr %36, align 8
  %37 = getelementptr inbounds %struct.nvkm_mm_node, ptr %31, i32 0, i32 6
  %38 = load i32, ptr %37, align 4
  %39 = getelementptr inbounds %struct.nvkm_gpuobj, ptr %8, i32 0, i32 5
  store i32 %38, ptr %39, align 8
  br i1 %3, label %40, label %89

40:                                               ; preds = %26
  %41 = load ptr, ptr %4, align 8
  %42 = load ptr, ptr %41, align 4
  %43 = tail call ptr %42(ptr noundef nonnull %4) #4
  %44 = getelementptr inbounds %struct.nvkm_gpuobj, ptr %8, i32 0, i32 7
  store ptr %43, ptr %44, align 4
  %45 = icmp eq ptr %43, null
  br i1 %45, label %51, label %46, !prof !8

46:                                               ; preds = %40
  %47 = load ptr, ptr %30, align 4
  %48 = getelementptr inbounds %struct.nvkm_mm_node, ptr %47, i32 0, i32 5
  %49 = load i32, ptr %48, align 4
  %50 = getelementptr i8, ptr %43, i32 %49
  store ptr %50, ptr %44, align 4
  br label %51

51:                                               ; preds = %46, %40
  %52 = phi ptr [ @nvkm_gpuobj_fast, %46 ], [ @nvkm_gpuobj_slow, %40 ]
  store ptr %52, ptr %8, align 8
  %53 = load i32, ptr %39, align 8
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %64, label %55

55:                                               ; preds = %55, %51
  %56 = phi ptr [ %63, %55 ], [ %52, %51 ]
  %57 = phi i32 [ %60, %55 ], [ 0, %51 ]
  %58 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %56, i32 0, i32 3
  %59 = load ptr, ptr %58, align 4
  tail call void %59(ptr noundef nonnull %8, i32 noundef %57, i32 noundef 0) #4
  %60 = add i32 %57, 4
  %61 = load i32, ptr %39, align 8
  %62 = icmp ult i32 %60, %61
  %63 = load ptr, ptr %8, align 8
  br i1 %62, label %55, label %64

64:                                               ; preds = %55, %51
  %65 = phi ptr [ %52, %51 ], [ %63, %55 ]
  %66 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %65, i32 0, i32 1
  %67 = load ptr, ptr %66, align 4
  tail call void %67(ptr noundef nonnull %8) #4
  %68 = load i32, ptr %39, align 8
  br label %89

69:                                               ; preds = %10
  %70 = zext i32 %1 to i64
  %71 = tail call i32 @llvm.abs.i32(i32 %2, i1 false) #4
  %72 = getelementptr inbounds %struct.nvkm_gpuobj, ptr %8, i32 0, i32 2
  %73 = tail call i32 @nvkm_memory_new(ptr noundef %0, i32 noundef 0, i64 noundef %70, i32 noundef %71, i1 noundef zeroext %3, ptr noundef %72) #4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %94

75:                                               ; preds = %69
  store ptr @nvkm_gpuobj_heap, ptr %8, align 8
  %76 = load ptr, ptr %72, align 8
  %77 = load ptr, ptr %76, align 4
  %78 = getelementptr inbounds %struct.nvkm_memory_func, ptr %77, i32 0, i32 4
  %79 = load ptr, ptr %78, align 4
  %80 = tail call i64 %79(ptr noundef %76) #4
  %81 = getelementptr inbounds %struct.nvkm_gpuobj, ptr %8, i32 0, i32 4
  store i64 %80, ptr %81, align 8
  %82 = load ptr, ptr %72, align 8
  %83 = load ptr, ptr %82, align 4
  %84 = getelementptr inbounds %struct.nvkm_memory_func, ptr %83, i32 0, i32 5
  %85 = load ptr, ptr %84, align 4
  %86 = tail call i64 %85(ptr noundef %82) #4
  %87 = trunc i64 %86 to i32
  %88 = getelementptr inbounds %struct.nvkm_gpuobj, ptr %8, i32 0, i32 5
  store i32 %87, ptr %88, align 8
  br label %89

89:                                               ; preds = %75, %64, %26
  %90 = phi i32 [ %38, %26 ], [ %68, %64 ], [ %87, %75 ]
  %91 = getelementptr inbounds %struct.nvkm_gpuobj, ptr %8, i32 0, i32 6
  %92 = tail call i32 @nvkm_mm_init(ptr noundef %91, i8 noundef zeroext 0, i32 noundef 0, i32 noundef %90, i32 noundef 1) #4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %110, label %94

94:                                               ; preds = %89, %69, %23
  %95 = phi i32 [ %92, %89 ], [ %73, %69 ], [ %24, %23 ]
  %96 = load ptr, ptr %5, align 4
  %97 = icmp eq ptr %96, null
  br i1 %97, label %110, label %98

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct.nvkm_gpuobj, ptr %96, i32 0, i32 1
  %100 = load ptr, ptr %99, align 4
  %101 = icmp eq ptr %100, null
  br i1 %101, label %105, label %102

102:                                              ; preds = %98
  %103 = getelementptr inbounds %struct.nvkm_gpuobj, ptr %100, i32 0, i32 6
  %104 = getelementptr inbounds %struct.nvkm_gpuobj, ptr %96, i32 0, i32 3
  tail call void @nvkm_mm_free(ptr noundef %103, ptr noundef %104) #4
  br label %105

105:                                              ; preds = %102, %98
  %106 = getelementptr inbounds %struct.nvkm_gpuobj, ptr %96, i32 0, i32 6
  %107 = tail call i32 @nvkm_mm_fini(ptr noundef %106) #4
  %108 = getelementptr inbounds %struct.nvkm_gpuobj, ptr %96, i32 0, i32 2
  tail call void @nvkm_memory_unref(ptr noundef %108) #4
  %109 = load ptr, ptr %5, align 4
  tail call void @kfree(ptr noundef %109) #4
  store ptr null, ptr %5, align 4
  br label %110

110:                                              ; preds = %105, %94, %89, %6
  %111 = phi i32 [ -12, %6 ], [ 0, %89 ], [ %95, %94 ], [ %95, %105 ]
  ret i32 %111
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_gpuobj_wrap(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 56) #5
  store ptr %4, ptr %1, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %20, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 4
  %8 = getelementptr inbounds %struct.nvkm_memory_func, ptr %7, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i64 %9(ptr noundef %0) #4
  %11 = load ptr, ptr %1, align 4
  %12 = getelementptr inbounds %struct.nvkm_gpuobj, ptr %11, i32 0, i32 4
  store i64 %10, ptr %12, align 8
  %13 = load ptr, ptr %0, align 4
  %14 = getelementptr inbounds %struct.nvkm_memory_func, ptr %13, i32 0, i32 5
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i64 %15(ptr noundef %0) #4
  %17 = trunc i64 %16 to i32
  %18 = load ptr, ptr %1, align 4
  %19 = getelementptr inbounds %struct.nvkm_gpuobj, ptr %18, i32 0, i32 5
  store i32 %17, ptr %19, align 8
  br label %20

20:                                               ; preds = %6, %2
  %21 = phi i32 [ 0, %6 ], [ -12, %2 ]
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvkm_gpuobj_memcpy_to(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = icmp eq i32 %3, 0
  br i1 %5, label %16, label %6

6:                                                ; preds = %6, %4
  %7 = phi i32 [ %14, %6 ], [ 0, %4 ]
  %8 = load ptr, ptr %0, align 8
  %9 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %8, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = add i32 %7, %1
  %12 = getelementptr i8, ptr %2, i32 %7
  %13 = load i32, ptr %12, align 4
  tail call void %10(ptr noundef %0, i32 noundef %11, i32 noundef %13) #4
  %14 = add i32 %7, 4
  %15 = icmp ult i32 %14, %3
  br i1 %15, label %6, label %16

16:                                               ; preds = %6, %4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvkm_gpuobj_memcpy_from(ptr nocapture noundef readnone %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = icmp eq i32 %3, 0
  br i1 %5, label %17, label %6

6:                                                ; preds = %6, %4
  %7 = phi i32 [ %15, %6 ], [ 0, %4 ]
  %8 = load ptr, ptr %1, align 8
  %9 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %8, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = add i32 %7, %2
  %12 = tail call i32 %10(ptr noundef %1, i32 noundef %11) #4
  %13 = sdiv i32 %7, 4
  %14 = getelementptr i32, ptr %1, i32 %13
  store i32 %12, ptr %14, align 4
  %15 = add i32 %7, 4
  %16 = icmp ult i32 %15, %3
  br i1 %16, label %6, label %17

17:                                               ; preds = %6, %4
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_mm_head(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_mm_tail(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_memory_new(ptr noundef, i32 noundef, i64 noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_mm_init(ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @nvkm_gpuobj_acquire(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.nvkm_gpuobj, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %3, align 8
  %5 = load ptr, ptr %4, align 4
  %6 = tail call ptr %5(ptr noundef %3) #4
  %7 = getelementptr inbounds %struct.nvkm_gpuobj, ptr %0, i32 0, i32 7
  store ptr %6, ptr %7, align 4
  %8 = icmp eq ptr %6, null
  br i1 %8, label %15, label %9, !prof !8

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.nvkm_gpuobj, ptr %0, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.nvkm_mm_node, ptr %11, i32 0, i32 5
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr i8, ptr %6, i32 %13
  store ptr %14, ptr %7, align 4
  br label %15

15:                                               ; preds = %9, %1
  %16 = phi ptr [ %14, %9 ], [ null, %1 ]
  %17 = phi ptr [ @nvkm_gpuobj_fast, %9 ], [ @nvkm_gpuobj_slow, %1 ]
  store ptr %17, ptr %0, align 8
  ret ptr %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvkm_gpuobj_map(ptr nocapture noundef readonly %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #0 {
  %7 = getelementptr inbounds %struct.nvkm_gpuobj, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %9, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.nvkm_gpuobj, ptr %0, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.nvkm_mm_node, ptr %13, i32 0, i32 5
  %15 = load i32, ptr %14, align 4
  %16 = zext i32 %15 to i64
  %17 = add i64 %16, %1
  %18 = tail call i32 %11(ptr noundef %8, i64 noundef %17, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #4
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nvkm_gpuobj_release(ptr nocapture noundef %0) #0 {
  store ptr @nvkm_gpuobj_func, ptr %0, align 8
  %2 = getelementptr inbounds %struct.nvkm_gpuobj, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  tail call void %6(ptr noundef %3) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvkm_gpuobj_rd32_fast(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.nvkm_gpuobj, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 %1
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #4, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !10
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nvkm_gpuobj_wr32_fast(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.nvkm_gpuobj, ptr %0, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %2) #4, !srcloc !12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvkm_gpuobj_rd32(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.nvkm_gpuobj, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nvkm_gpuobj, ptr %0, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.nvkm_mm_node, ptr %9, i32 0, i32 5
  %11 = load i32, ptr %10, align 4
  %12 = add i32 %11, %1
  %13 = tail call i32 %7(ptr noundef %4, i32 noundef %12) #4
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nvkm_gpuobj_wr32(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.nvkm_gpuobj, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %6, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nvkm_gpuobj, ptr %0, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.nvkm_mm_node, ptr %10, i32 0, i32 5
  %12 = load i32, ptr %11, align 4
  %13 = add i32 %12, %1
  tail call void %8(ptr noundef %5, i32 noundef %13, i32 noundef %2) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @nvkm_gpuobj_heap_acquire(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.nvkm_gpuobj, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_memory_func, ptr %4, i32 0, i32 7
  %6 = load ptr, ptr %5, align 4
  %7 = tail call ptr %6(ptr noundef %3) #4
  %8 = getelementptr inbounds %struct.nvkm_gpuobj, ptr %0, i32 0, i32 7
  store ptr %7, ptr %8, align 4
  %9 = icmp eq ptr %7, null
  %10 = select i1 %9, ptr @nvkm_gpuobj_heap_slow, ptr @nvkm_gpuobj_heap_fast, !prof !8
  store ptr %10, ptr %0, align 8
  ret ptr %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvkm_gpuobj_heap_map(ptr nocapture noundef readonly %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #0 {
  %7 = getelementptr inbounds %struct.nvkm_gpuobj, ptr %0, i32 0, i32 2
  %8 = load ptr, ptr %7, align 8
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.nvkm_memory_func, ptr %9, i32 0, i32 9
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 %11(ptr noundef %8, i64 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #4
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nvkm_gpuobj_heap_release(ptr nocapture noundef %0) #0 {
  store ptr @nvkm_gpuobj_heap, ptr %0, align 8
  %2 = getelementptr inbounds %struct.nvkm_gpuobj, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_memory_func, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 4
  tail call void %6(ptr noundef %3) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvkm_gpuobj_heap_rd32(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.nvkm_gpuobj, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.nvkm_memory, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = zext i32 %1 to i64
  %9 = tail call i32 %7(ptr noundef %4, i64 noundef %8) #4
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nvkm_gpuobj_heap_wr32(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.nvkm_gpuobj, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.nvkm_memory, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = zext i32 %1 to i64
  tail call void %9(ptr noundef %5, i64 noundef %10, i32 noundef %2) #4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind allocsize(2) }

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
!9 = !{i64 3942023}
!10 = !{i64 2151481476}
!11 = !{i64 2151482698}
!12 = !{i64 3941605}
