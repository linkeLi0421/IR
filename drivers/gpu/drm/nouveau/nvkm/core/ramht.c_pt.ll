; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/core/ramht.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/core/ramht.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_ramht = type { ptr, ptr, ptr, i32, i32, [0 x %struct.nvkm_ramht_data] }
%struct.nvkm_ramht_data = type { ptr, i32, i32 }
%struct.nvkm_gpuobj_func = type { ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.123, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.anon.123 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_gpuobj = type { %union.anon, ptr, ptr, ptr, i64, i32, %struct.nvkm_mm, ptr }
%union.anon = type { ptr }
%struct.nvkm_mm = type { %struct.list_head, %struct.list_head, i32, i32 }
%struct.nvkm_mm_node = type { %struct.list_head, %struct.list_head, ptr, i8, i8, i32, i32 }

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local ptr @nvkm_ramht_search(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq i32 %2, 0
  %5 = getelementptr inbounds %struct.nvkm_ramht, ptr %0, i32 0, i32 4
  %6 = load i32, ptr %5, align 4
  br i1 %4, label %17, label %7

7:                                                ; preds = %3
  %8 = shl nsw i32 -1, %6
  %9 = xor i32 %8, -1
  br label %10

10:                                               ; preds = %10, %7
  %11 = phi i32 [ 0, %7 ], [ %14, %10 ]
  %12 = phi i32 [ %2, %7 ], [ %15, %10 ]
  %13 = and i32 %12, %9
  %14 = xor i32 %13, %11
  %15 = lshr i32 %12, %6
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %10

17:                                               ; preds = %10, %3
  %18 = phi i32 [ 0, %3 ], [ %14, %10 ]
  %19 = add i32 %6, -4
  %20 = shl i32 %1, %19
  %21 = xor i32 %18, %20
  %22 = getelementptr inbounds %struct.nvkm_ramht, ptr %0, i32 0, i32 3
  br label %23

23:                                               ; preds = %35, %17
  %24 = phi i32 [ %21, %17 ], [ %39, %35 ]
  %25 = getelementptr %struct.nvkm_ramht, ptr %0, i32 0, i32 5, i32 %24, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, %1
  br i1 %27, label %28, label %35

28:                                               ; preds = %23
  %29 = getelementptr %struct.nvkm_ramht, ptr %0, i32 0, i32 5, i32 %24, i32 2
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, %2
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = getelementptr %struct.nvkm_ramht, ptr %0, i32 0, i32 5, i32 %24
  %34 = load ptr, ptr %33, align 4
  br label %41

35:                                               ; preds = %28, %23
  %36 = add i32 %24, 1
  %37 = load i32, ptr %22, align 4
  %38 = icmp ult i32 %36, %37
  %39 = select i1 %38, i32 %36, i32 0
  %40 = icmp eq i32 %39, %21
  br i1 %40, label %41, label %23

41:                                               ; preds = %35, %32
  %42 = phi ptr [ %34, %32 ], [ null, %35 ]
  ret ptr %42
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvkm_ramht_remove(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = add i32 %1, -1
  %4 = icmp sgt i32 %3, -1
  br i1 %4, label %5, label %28

5:                                                ; preds = %2
  %6 = getelementptr %struct.nvkm_ramht, ptr %0, i32 0, i32 5, i32 %3
  tail call void @nvkm_gpuobj_del(ptr noundef %6) #5
  %7 = getelementptr %struct.nvkm_ramht, ptr %0, i32 0, i32 5, i32 %3, i32 1
  store i32 -1, ptr %7, align 4
  %8 = getelementptr %struct.nvkm_ramht, ptr %0, i32 0, i32 5, i32 %3, i32 2
  store i32 0, ptr %8, align 4
  %9 = getelementptr inbounds %struct.nvkm_ramht, ptr %0, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = load ptr, ptr %10, align 8
  %12 = load ptr, ptr %11, align 4
  %13 = tail call ptr %12(ptr noundef %10) #5
  %14 = load ptr, ptr %9, align 4
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %15, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  %18 = shl i32 %3, 3
  tail call void %17(ptr noundef %14, i32 noundef %18, i32 noundef 0) #5
  %19 = load ptr, ptr %9, align 4
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %20, i32 0, i32 3
  %22 = load ptr, ptr %21, align 4
  %23 = or i32 %18, 4
  tail call void %22(ptr noundef %19, i32 noundef %23, i32 noundef 0) #5
  %24 = load ptr, ptr %9, align 4
  %25 = load ptr, ptr %24, align 8
  %26 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %25, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  tail call void %27(ptr noundef %24) #5
  br label %28

28:                                               ; preds = %5, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_ramht_insert(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #1 {
  %7 = icmp eq i32 %4, 0
  %8 = getelementptr inbounds %struct.nvkm_ramht, ptr %0, i32 0, i32 4
  %9 = load i32, ptr %8, align 4
  br i1 %7, label %20, label %10

10:                                               ; preds = %6
  %11 = shl nsw i32 -1, %9
  %12 = xor i32 %11, -1
  br label %13

13:                                               ; preds = %13, %10
  %14 = phi i32 [ 0, %10 ], [ %17, %13 ]
  %15 = phi i32 [ %4, %10 ], [ %18, %13 ]
  %16 = and i32 %15, %12
  %17 = xor i32 %16, %14
  %18 = lshr i32 %15, %9
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %13

20:                                               ; preds = %13, %6
  %21 = phi i32 [ 0, %6 ], [ %17, %13 ]
  %22 = add i32 %9, -4
  %23 = shl i32 %2, %22
  %24 = xor i32 %21, %23
  %25 = getelementptr inbounds %struct.nvkm_ramht, ptr %0, i32 0, i32 3
  br label %26

26:                                               ; preds = %35, %20
  %27 = phi i32 [ %24, %20 ], [ %39, %35 ]
  %28 = getelementptr %struct.nvkm_ramht, ptr %0, i32 0, i32 5, i32 %27, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %29, %2
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = getelementptr %struct.nvkm_ramht, ptr %0, i32 0, i32 5, i32 %27, i32 2
  %33 = load i32, ptr %32, align 4
  %34 = icmp eq i32 %33, %4
  br i1 %34, label %41, label %35

35:                                               ; preds = %31, %26
  %36 = add i32 %27, 1
  %37 = load i32, ptr %25, align 4
  %38 = icmp ult i32 %36, %37
  %39 = select i1 %38, i32 %36, i32 0
  %40 = icmp eq i32 %39, %24
  br i1 %40, label %45, label %26

41:                                               ; preds = %31
  %42 = getelementptr %struct.nvkm_ramht, ptr %0, i32 0, i32 5, i32 %27
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %133

45:                                               ; preds = %41, %35
  br i1 %7, label %56, label %46

46:                                               ; preds = %45
  %47 = shl nsw i32 -1, %9
  %48 = xor i32 %47, -1
  br label %49

49:                                               ; preds = %49, %46
  %50 = phi i32 [ 0, %46 ], [ %53, %49 ]
  %51 = phi i32 [ %4, %46 ], [ %54, %49 ]
  %52 = and i32 %51, %48
  %53 = xor i32 %52, %50
  %54 = lshr i32 %51, %9
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %49

56:                                               ; preds = %49, %45
  %57 = phi i32 [ 0, %45 ], [ %53, %49 ]
  %58 = xor i32 %57, %23
  br label %59

59:                                               ; preds = %127, %56
  %60 = phi i32 [ %58, %56 ], [ %131, %127 ]
  %61 = getelementptr %struct.nvkm_ramht, ptr %0, i32 0, i32 5, i32 %60, i32 1
  %62 = load i32, ptr %61, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %127

64:                                               ; preds = %59
  %65 = getelementptr %struct.nvkm_ramht, ptr %0, i32 0, i32 5, i32 %60
  tail call void @nvkm_gpuobj_del(ptr noundef %65) #5
  store i32 %2, ptr %61, align 4
  %66 = getelementptr %struct.nvkm_ramht, ptr %0, i32 0, i32 5, i32 %60, i32 2
  store i32 %4, ptr %66, align 4
  %67 = icmp eq ptr %1, null
  br i1 %67, label %105, label %68

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.nvkm_ramht, ptr %0, i32 0, i32 1
  %70 = load ptr, ptr %69, align 4
  %71 = tail call i32 @nvkm_object_bind(ptr noundef nonnull %1, ptr noundef %70, i32 noundef 16, ptr noundef %65) #5
  switch i32 %71, label %72 [
    i32 0, label %74
    i32 -19, label %73
  ]

72:                                               ; preds = %68
  store i32 -1, ptr %61, align 4
  br label %133

73:                                               ; preds = %68
  store ptr null, ptr %65, align 4
  br label %91

74:                                               ; preds = %68
  %75 = load ptr, ptr %65, align 4
  %76 = icmp eq ptr %75, null
  br i1 %76, label %91, label %77

77:                                               ; preds = %74
  %78 = load ptr, ptr %0, align 4
  %79 = getelementptr inbounds %struct.nvkm_device, ptr %78, i32 0, i32 15
  %80 = load i32, ptr %79, align 8
  %81 = icmp ugt i32 %80, 79
  br i1 %81, label %82, label %88

82:                                               ; preds = %77
  %83 = getelementptr inbounds %struct.nvkm_gpuobj, ptr %75, i32 0, i32 3
  %84 = load ptr, ptr %83, align 4
  %85 = getelementptr inbounds %struct.nvkm_mm_node, ptr %84, i32 0, i32 5
  %86 = load i32, ptr %85, align 4
  %87 = zext i32 %86 to i64
  br label %91

88:                                               ; preds = %77
  %89 = getelementptr inbounds %struct.nvkm_gpuobj, ptr %75, i32 0, i32 4
  %90 = load i64, ptr %89, align 8
  br label %91

91:                                               ; preds = %88, %82, %74, %73
  %92 = phi i64 [ %87, %82 ], [ %90, %88 ], [ 64, %74 ], [ 64, %73 ]
  %93 = icmp slt i32 %3, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %91
  %95 = sub i32 0, %3
  %96 = zext i32 %95 to i64
  %97 = shl i64 %92, %96
  %98 = trunc i64 %97 to i32
  %99 = or i32 %98, %5
  br label %105

100:                                              ; preds = %91
  %101 = zext i32 %3 to i64
  %102 = lshr i64 %92, %101
  %103 = trunc i64 %102 to i32
  %104 = or i32 %103, %5
  br label %105

105:                                              ; preds = %100, %94, %64
  %106 = phi i32 [ %99, %94 ], [ %104, %100 ], [ %5, %64 ]
  %107 = getelementptr inbounds %struct.nvkm_ramht, ptr %0, i32 0, i32 2
  %108 = load ptr, ptr %107, align 4
  %109 = load ptr, ptr %108, align 8
  %110 = load ptr, ptr %109, align 4
  %111 = tail call ptr %110(ptr noundef %108) #5
  %112 = load ptr, ptr %107, align 4
  %113 = load ptr, ptr %112, align 8
  %114 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %113, i32 0, i32 3
  %115 = load ptr, ptr %114, align 4
  %116 = shl i32 %60, 3
  tail call void %115(ptr noundef %112, i32 noundef %116, i32 noundef %4) #5
  %117 = load ptr, ptr %107, align 4
  %118 = load ptr, ptr %117, align 8
  %119 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %118, i32 0, i32 3
  %120 = load ptr, ptr %119, align 4
  %121 = or i32 %116, 4
  tail call void %120(ptr noundef %117, i32 noundef %121, i32 noundef %106) #5
  %122 = load ptr, ptr %107, align 4
  %123 = load ptr, ptr %122, align 8
  %124 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %123, i32 0, i32 1
  %125 = load ptr, ptr %124, align 4
  tail call void %125(ptr noundef %122) #5
  %126 = add i32 %60, 1
  br label %133

127:                                              ; preds = %59
  %128 = add i32 %60, 1
  %129 = load i32, ptr %25, align 4
  %130 = icmp ult i32 %128, %129
  %131 = select i1 %130, i32 %128, i32 0
  %132 = icmp eq i32 %131, %58
  br i1 %132, label %133, label %59

133:                                              ; preds = %127, %105, %72, %41
  %134 = phi i32 [ -17, %41 ], [ %71, %72 ], [ %126, %105 ], [ -28, %127 ]
  ret i32 %134
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvkm_ramht_del(ptr nocapture noundef %0) local_unnamed_addr #1 {
  %2 = load ptr, ptr %0, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.nvkm_ramht, ptr %2, i32 0, i32 2
  tail call void @nvkm_gpuobj_del(ptr noundef %5) #5
  %6 = load ptr, ptr %0, align 4
  tail call void @vfree(ptr noundef %6) #5
  store ptr null, ptr %0, align 4
  br label %7

7:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_gpuobj_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_ramht_new(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #1 {
  %6 = lshr i32 %1, 3
  %7 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %6, i32 12) #5
  %8 = extractvalue { i32, i1 } %7, 1
  %9 = extractvalue { i32, i1 } %7, 0
  %10 = tail call i32 @llvm.uadd.sat.i32(i32 %9, i32 20) #5
  %11 = select i1 %8, i32 -1, i32 %10
  %12 = tail call noalias ptr @vzalloc(i32 noundef %11) #6
  store ptr %12, ptr %4, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %48, label %14

14:                                               ; preds = %5
  store ptr %0, ptr %12, align 4
  %15 = getelementptr inbounds %struct.nvkm_ramht, ptr %12, i32 0, i32 1
  store ptr %3, ptr %15, align 4
  %16 = getelementptr inbounds %struct.nvkm_ramht, ptr %12, i32 0, i32 3
  store i32 %6, ptr %16, align 4
  %17 = icmp ugt i32 %1, 15
  br i1 %17, label %18, label %23

18:                                               ; preds = %14
  %19 = add nsw i32 %6, -1
  %20 = tail call i32 @llvm.ctlz.i32(i32 %19, i1 false) #5, !range !8
  %21 = sub nuw nsw i32 32, %20
  %22 = getelementptr inbounds %struct.nvkm_ramht, ptr %12, i32 0, i32 4
  store i32 %21, ptr %22, align 4
  br label %26

23:                                               ; preds = %14
  %24 = getelementptr inbounds %struct.nvkm_ramht, ptr %12, i32 0, i32 4
  store i32 0, ptr %24, align 4
  %25 = icmp ult i32 %1, 8
  br i1 %25, label %36, label %26

26:                                               ; preds = %23, %18
  br label %27

27:                                               ; preds = %27, %26
  %28 = phi i32 [ %30, %27 ], [ 0, %26 ]
  %29 = getelementptr %struct.nvkm_ramht, ptr %12, i32 0, i32 5, i32 %28, i32 1
  store i32 -1, ptr %29, align 4
  %30 = add nuw nsw i32 %28, 1
  %31 = load i32, ptr %16, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %27, label %33

33:                                               ; preds = %27
  %34 = load ptr, ptr %12, align 4
  %35 = load ptr, ptr %15, align 4
  br label %36

36:                                               ; preds = %33, %23
  %37 = phi ptr [ %35, %33 ], [ %3, %23 ]
  %38 = phi ptr [ %34, %33 ], [ %0, %23 ]
  %39 = getelementptr inbounds %struct.nvkm_ramht, ptr %12, i32 0, i32 2
  %40 = tail call i32 @nvkm_gpuobj_new(ptr noundef %38, i32 noundef %1, i32 noundef %2, i1 noundef zeroext true, ptr noundef %37, ptr noundef %39) #5
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %36
  %43 = load ptr, ptr %4, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.nvkm_ramht, ptr %43, i32 0, i32 2
  tail call void @nvkm_gpuobj_del(ptr noundef %46) #5
  %47 = load ptr, ptr %4, align 4
  tail call void @vfree(ptr noundef %47) #5
  store ptr null, ptr %4, align 4
  br label %48

48:                                               ; preds = %45, %42, %36, %5
  %49 = phi i32 [ -12, %5 ], [ 0, %36 ], [ %40, %42 ], [ %40, %45 ]
  ret i32 %49
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vzalloc(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_gpuobj_new(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_object_bind(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #4

attributes #0 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind allocsize(0) }

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
!8 = !{i32 0, i32 33}
