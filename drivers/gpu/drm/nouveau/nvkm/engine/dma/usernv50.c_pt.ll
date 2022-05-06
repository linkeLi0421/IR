; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/engine/dma/usernv50.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/dma/usernv50.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_dmaobj_func = type { ptr }
%struct.nvkm_oclass = type { ptr, %struct.nvkm_sclass, ptr, ptr, i32, i8, i64, i64, ptr, ptr, ptr }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.nvkm_object = type { ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, i8, i64, i64, %struct.rb_node }
%struct.list_head = type { ptr, ptr }
%struct.rb_node = type { i32, ptr, ptr }
%struct.nvkm_client = type { %struct.nvkm_object, [32 x i8], i64, i32, [32 x ptr], %struct.rb_root, ptr, ptr, %struct.list_head, %struct.spinlock }
%struct.rb_root = type { ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.nv50_dma_v0 = type { i8, i8, i8, i8, i8, [3 x i8] }
%struct.nvkm_dmaobj = type { ptr, ptr, %struct.nvkm_object, i32, i32, i64, i64 }
%struct.nv50_dmaobj = type { %struct.nvkm_dmaobj, i32, i32 }
%struct.nvkm_dma = type { ptr, %struct.nvkm_engine }
%struct.nvkm_engine = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.anon.137 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.anon.137 = type { %struct.refcount_struct, %struct.mutex, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_gpuobj_func = type { ptr, ptr, ptr, ptr, ptr }

@nv50_dmaobj_func = internal constant %struct.nvkm_dmaobj_func { ptr @nv50_dmaobj_bind }, align 4
@.str = private unnamed_addr constant [57 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: create nv50 dma size %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [91 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: create nv50 dma vers %d priv %d part %d comp %d kind %02x\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nv50_dmaobj_new(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #0 {
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  store ptr %2, ptr %6, align 4
  store i32 %3, ptr %7, align 4
  %8 = getelementptr inbounds %struct.nvkm_oclass, ptr %1, i32 0, i32 9
  %9 = load ptr, ptr %8, align 4
  %10 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %11 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 112) #4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %128, label %13

13:                                               ; preds = %5
  store ptr %11, ptr %4, align 4
  %14 = call i32 @nvkm_dmaobj_ctor(ptr noundef nonnull @nv50_dmaobj_func, ptr noundef %0, ptr noundef %1, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %11) #5
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %128

16:                                               ; preds = %13
  %17 = load ptr, ptr %6, align 4
  %18 = getelementptr inbounds %struct.nvkm_object, ptr %9, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.nvkm_client, ptr %19, i32 0, i32 3
  %21 = load i32, ptr %20, align 8
  %22 = icmp ugt i32 %21, 4
  br i1 %22, label %23, label %31

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.nvkm_client, ptr %19, i32 0, i32 1
  %25 = getelementptr inbounds %struct.nvkm_object, ptr %9, i32 0, i32 4
  %26 = load i32, ptr %25, align 8
  %27 = getelementptr inbounds %struct.nvkm_object, ptr %9, i32 0, i32 3
  %28 = load i32, ptr %27, align 4
  %29 = load i32, ptr %7, align 4
  %30 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %24, i32 noundef %26, i32 noundef %28, i32 noundef %29) #6
  br label %31

31:                                               ; preds = %23, %16
  %32 = load i32, ptr %7, align 4
  %33 = icmp ugt i32 %32, 7
  br i1 %33, label %34, label %78

34:                                               ; preds = %31
  %35 = load i8, ptr %17, align 1
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %128

37:                                               ; preds = %34
  %38 = icmp eq i32 %32, 8
  store ptr null, ptr %6, align 4
  store i32 0, ptr %7, align 4
  br i1 %38, label %39, label %80

39:                                               ; preds = %37
  %40 = load ptr, ptr %18, align 4
  %41 = getelementptr inbounds %struct.nvkm_client, ptr %40, i32 0, i32 3
  %42 = load i32, ptr %41, align 8
  %43 = icmp ugt i32 %42, 4
  br i1 %43, label %44, label %65

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.nvkm_client, ptr %40, i32 0, i32 1
  %46 = getelementptr inbounds %struct.nvkm_object, ptr %9, i32 0, i32 4
  %47 = load i32, ptr %46, align 8
  %48 = getelementptr inbounds %struct.nvkm_object, ptr %9, i32 0, i32 3
  %49 = load i32, ptr %48, align 4
  %50 = load i8, ptr %17, align 1
  %51 = zext i8 %50 to i32
  %52 = getelementptr inbounds %struct.nv50_dma_v0, ptr %17, i32 0, i32 1
  %53 = load i8, ptr %52, align 1
  %54 = zext i8 %53 to i32
  %55 = getelementptr inbounds %struct.nv50_dma_v0, ptr %17, i32 0, i32 2
  %56 = load i8, ptr %55, align 1
  %57 = zext i8 %56 to i32
  %58 = getelementptr inbounds %struct.nv50_dma_v0, ptr %17, i32 0, i32 3
  %59 = load i8, ptr %58, align 1
  %60 = zext i8 %59 to i32
  %61 = getelementptr inbounds %struct.nv50_dma_v0, ptr %17, i32 0, i32 4
  %62 = load i8, ptr %61, align 1
  %63 = zext i8 %62 to i32
  %64 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %45, i32 noundef %47, i32 noundef %49, i32 noundef %51, i32 noundef %54, i32 noundef %57, i32 noundef %60, i32 noundef %63) #6
  br label %65

65:                                               ; preds = %44, %39
  %66 = getelementptr inbounds %struct.nv50_dma_v0, ptr %17, i32 0, i32 1
  %67 = load i8, ptr %66, align 1
  %68 = zext i8 %67 to i32
  %69 = getelementptr inbounds %struct.nv50_dma_v0, ptr %17, i32 0, i32 2
  %70 = load i8, ptr %69, align 1
  %71 = zext i8 %70 to i32
  %72 = getelementptr inbounds %struct.nv50_dma_v0, ptr %17, i32 0, i32 3
  %73 = load i8, ptr %72, align 1
  %74 = zext i8 %73 to i32
  %75 = getelementptr inbounds %struct.nv50_dma_v0, ptr %17, i32 0, i32 4
  %76 = load i8, ptr %75, align 1
  %77 = zext i8 %76 to i32
  br label %88

78:                                               ; preds = %31
  %79 = icmp eq i32 %32, 0
  br i1 %79, label %80, label %128

80:                                               ; preds = %78, %37
  %81 = getelementptr inbounds %struct.nvkm_dmaobj, ptr %11, i32 0, i32 3
  %82 = load i32, ptr %81, align 8
  %83 = icmp eq i32 %82, 3
  %84 = xor i1 %83, true
  %85 = zext i1 %84 to i32
  %86 = select i1 %83, i32 3, i32 0
  %87 = select i1 %83, i32 127, i32 0
  br label %88

88:                                               ; preds = %80, %65
  %89 = phi i32 [ %68, %65 ], [ %85, %80 ]
  %90 = phi i32 [ %71, %65 ], [ %85, %80 ]
  %91 = phi i32 [ %74, %65 ], [ %86, %80 ]
  %92 = phi i32 [ %77, %65 ], [ %87, %80 ]
  %93 = icmp ugt i32 %89, 2
  %94 = icmp ugt i32 %90, 2
  %95 = select i1 %93, i1 true, i1 %94
  %96 = icmp ugt i32 %91, 3
  %97 = select i1 %95, i1 true, i1 %96
  %98 = icmp ugt i32 %92, 127
  %99 = select i1 %97, i1 true, i1 %98
  br i1 %99, label %128, label %100

100:                                              ; preds = %88
  %101 = shl nuw nsw i32 %91, 29
  %102 = shl nuw nsw i32 %92, 22
  %103 = shl nuw nsw i32 %89, 20
  %104 = getelementptr inbounds %struct.nvkm_oclass, ptr %1, i32 0, i32 1, i32 2
  %105 = load i32, ptr %104, align 4
  %106 = or i32 %101, %103
  %107 = or i32 %106, %102
  %108 = or i32 %107, %105
  %109 = getelementptr inbounds %struct.nv50_dmaobj, ptr %11, i32 0, i32 1
  store i32 %108, ptr %109, align 8
  %110 = shl nuw nsw i32 %90, 16
  %111 = getelementptr inbounds %struct.nv50_dmaobj, ptr %11, i32 0, i32 2
  store i32 %110, ptr %111, align 4
  %112 = getelementptr inbounds %struct.nvkm_dmaobj, ptr %11, i32 0, i32 3
  %113 = load i32, ptr %112, align 8
  switch i32 %113, label %128 [
    i32 3, label %119
    i32 0, label %116
    i32 1, label %114
    i32 2, label %115
  ]

114:                                              ; preds = %100
  br label %116

115:                                              ; preds = %100
  br label %116

116:                                              ; preds = %115, %114, %100
  %117 = phi i32 [ 131072, %114 ], [ 196608, %115 ], [ 65536, %100 ]
  %118 = or i32 %108, %117
  store i32 %118, ptr %109, align 8
  br label %119

119:                                              ; preds = %116, %100
  %120 = phi i32 [ %108, %100 ], [ %118, %116 ]
  %121 = getelementptr inbounds %struct.nvkm_dmaobj, ptr %11, i32 0, i32 4
  %122 = load i32, ptr %121, align 4
  switch i32 %122, label %128 [
    i32 8, label %127
    i32 1, label %124
    i32 2, label %123
    i32 3, label %123
  ]

123:                                              ; preds = %119, %119
  br label %124

124:                                              ; preds = %123, %119
  %125 = phi i32 [ 524288, %123 ], [ 262144, %119 ]
  %126 = or i32 %120, %125
  store i32 %126, ptr %109, align 8
  br label %127

127:                                              ; preds = %124, %119
  br label %128

128:                                              ; preds = %127, %119, %100, %88, %78, %34, %13, %5
  %129 = phi i32 [ 0, %127 ], [ -12, %5 ], [ %14, %13 ], [ -38, %78 ], [ -22, %88 ], [ -22, %100 ], [ -22, %119 ], [ -38, %34 ]
  ret i32 %129
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_dmaobj_ctor(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nv50_dmaobj_bind(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.nvkm_dmaobj, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nvkm_dma, ptr %6, i32 0, i32 1, i32 1, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 @nvkm_gpuobj_new(ptr noundef %8, i32 noundef 24, i32 noundef %2, i1 noundef zeroext false, ptr noundef %1, ptr noundef %3) #5
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %62

11:                                               ; preds = %4
  %12 = load ptr, ptr %3, align 4
  %13 = load ptr, ptr %12, align 8
  %14 = load ptr, ptr %13, align 4
  %15 = tail call ptr %14(ptr noundef %12) #5
  %16 = load ptr, ptr %3, align 4
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %17, i32 0, i32 3
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.nv50_dmaobj, ptr %0, i32 0, i32 1
  %21 = load i32, ptr %20, align 8
  tail call void %19(ptr noundef %16, i32 noundef 0, i32 noundef %21) #5
  %22 = load ptr, ptr %3, align 4
  %23 = load ptr, ptr %22, align 8
  %24 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %23, i32 0, i32 3
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.nvkm_dmaobj, ptr %0, i32 0, i32 6
  %27 = load i64, ptr %26, align 8
  %28 = trunc i64 %27 to i32
  tail call void %25(ptr noundef %22, i32 noundef 4, i32 noundef %28) #5
  %29 = load ptr, ptr %3, align 4
  %30 = load ptr, ptr %29, align 8
  %31 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %30, i32 0, i32 3
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.nvkm_dmaobj, ptr %0, i32 0, i32 5
  %34 = load i64, ptr %33, align 8
  %35 = trunc i64 %34 to i32
  tail call void %32(ptr noundef %29, i32 noundef 8, i32 noundef %35) #5
  %36 = load ptr, ptr %3, align 4
  %37 = load ptr, ptr %36, align 8
  %38 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %37, i32 0, i32 3
  %39 = load ptr, ptr %38, align 4
  %40 = load i64, ptr %26, align 8
  %41 = lshr i64 %40, 8
  %42 = trunc i64 %41 to i32
  %43 = and i32 %42, -16777216
  %44 = load i64, ptr %33, align 8
  %45 = lshr i64 %44, 32
  %46 = trunc i64 %45 to i32
  %47 = or i32 %43, %46
  tail call void %39(ptr noundef %36, i32 noundef 12, i32 noundef %47) #5
  %48 = load ptr, ptr %3, align 4
  %49 = load ptr, ptr %48, align 8
  %50 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %49, i32 0, i32 3
  %51 = load ptr, ptr %50, align 4
  tail call void %51(ptr noundef %48, i32 noundef 16, i32 noundef 0) #5
  %52 = load ptr, ptr %3, align 4
  %53 = load ptr, ptr %52, align 8
  %54 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %53, i32 0, i32 3
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr inbounds %struct.nv50_dmaobj, ptr %0, i32 0, i32 2
  %57 = load i32, ptr %56, align 4
  tail call void %55(ptr noundef %52, i32 noundef 20, i32 noundef %57) #5
  %58 = load ptr, ptr %3, align 4
  %59 = load ptr, ptr %58, align 8
  %60 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %59, i32 0, i32 1
  %61 = load ptr, ptr %60, align 4
  tail call void %61(ptr noundef %58) #5
  br label %62

62:                                               ; preds = %11, %4
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_gpuobj_new(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind allocsize(2) }
attributes #5 = { nounwind }
attributes #6 = { cold nounwind }

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
