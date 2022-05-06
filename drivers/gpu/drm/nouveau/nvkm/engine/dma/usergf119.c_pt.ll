; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/engine/dma/usergf119.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/dma/usergf119.c"
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
%struct.gf119_dma_v0 = type { i8, i8, i8, [5 x i8] }
%struct.nvkm_dmaobj = type { ptr, ptr, %struct.nvkm_object, i32, i32, i64, i64 }
%struct.gf119_dmaobj = type { %struct.nvkm_dmaobj, i32 }
%struct.nvkm_dma = type { ptr, %struct.nvkm_engine }
%struct.nvkm_engine = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.anon.137 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.anon.137 = type { %struct.refcount_struct, %struct.mutex, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_gpuobj_func = type { ptr, ptr, ptr, ptr, ptr }

@gf119_dmaobj_func = internal constant %struct.nvkm_dmaobj_func { ptr @gf119_dmaobj_bind }, align 4
@.str = private unnamed_addr constant [58 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: create gf119 dma size %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [76 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: create gf100 dma vers %d page %d kind %02x\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gf119_dmaobj_new(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #0 {
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  store ptr %2, ptr %6, align 4
  store i32 %3, ptr %7, align 4
  %8 = getelementptr inbounds %struct.nvkm_oclass, ptr %1, i32 0, i32 9
  %9 = load ptr, ptr %8, align 4
  %10 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %11 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 112) #4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %90, label %13

13:                                               ; preds = %5
  store ptr %11, ptr %4, align 4
  %14 = call i32 @nvkm_dmaobj_ctor(ptr noundef nonnull @gf119_dmaobj_func, ptr noundef %0, ptr noundef %1, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %11) #5
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %90

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
  br i1 %33, label %34, label %59

34:                                               ; preds = %31
  %35 = load i8, ptr %17, align 1
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %90

37:                                               ; preds = %34
  %38 = icmp eq i32 %32, 8
  store ptr null, ptr %6, align 4
  store i32 0, ptr %7, align 4
  br i1 %38, label %39, label %61

39:                                               ; preds = %37
  %40 = load ptr, ptr %18, align 4
  %41 = getelementptr inbounds %struct.nvkm_client, ptr %40, i32 0, i32 3
  %42 = load i32, ptr %41, align 8
  %43 = icmp ugt i32 %42, 4
  br i1 %43, label %44, label %68

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.nvkm_client, ptr %40, i32 0, i32 1
  %46 = getelementptr inbounds %struct.nvkm_object, ptr %9, i32 0, i32 4
  %47 = load i32, ptr %46, align 8
  %48 = getelementptr inbounds %struct.nvkm_object, ptr %9, i32 0, i32 3
  %49 = load i32, ptr %48, align 4
  %50 = load i8, ptr %17, align 1
  %51 = zext i8 %50 to i32
  %52 = getelementptr inbounds %struct.gf119_dma_v0, ptr %17, i32 0, i32 1
  %53 = load i8, ptr %52, align 1
  %54 = zext i8 %53 to i32
  %55 = getelementptr inbounds %struct.gf119_dma_v0, ptr %17, i32 0, i32 2
  %56 = load i8, ptr %55, align 1
  %57 = zext i8 %56 to i32
  %58 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %45, i32 noundef %47, i32 noundef %49, i32 noundef %51, i32 noundef %54, i32 noundef %57) #6
  br label %68

59:                                               ; preds = %31
  %60 = icmp eq i32 %32, 0
  br i1 %60, label %61, label %90

61:                                               ; preds = %59, %37
  %62 = getelementptr inbounds %struct.nvkm_dmaobj, ptr %11, i32 0, i32 3
  %63 = load i32, ptr %62, align 8
  %64 = icmp eq i32 %63, 3
  %65 = select i1 %64, i32 267386880, i32 0
  %66 = xor i1 %64, true
  %67 = zext i1 %66 to i32
  br label %80

68:                                               ; preds = %44, %39
  %69 = getelementptr inbounds %struct.gf119_dma_v0, ptr %17, i32 0, i32 1
  %70 = load i8, ptr %69, align 1
  %71 = icmp ugt i8 %70, 1
  br i1 %71, label %90, label %72

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.gf119_dma_v0, ptr %17, i32 0, i32 2
  %74 = load i8, ptr %73, align 1
  %75 = zext i8 %74 to i32
  %76 = shl nuw nsw i32 %75, 20
  %77 = zext i8 %70 to i32
  %78 = getelementptr inbounds %struct.nvkm_dmaobj, ptr %11, i32 0, i32 3
  %79 = load i32, ptr %78, align 8
  br label %80

80:                                               ; preds = %72, %61
  %81 = phi i32 [ %63, %61 ], [ %79, %72 ]
  %82 = phi i32 [ %67, %61 ], [ %77, %72 ]
  %83 = phi i32 [ %65, %61 ], [ %76, %72 ]
  %84 = shl nuw nsw i32 %82, 6
  %85 = or i32 %83, %84
  %86 = getelementptr inbounds %struct.gf119_dmaobj, ptr %11, i32 0, i32 1
  store i32 %85, ptr %86, align 8
  switch i32 %81, label %90 [
    i32 0, label %87
    i32 3, label %89
    i32 1, label %89
    i32 2, label %89
  ]

87:                                               ; preds = %80
  %88 = or i32 %85, 9
  store i32 %88, ptr %86, align 8
  br label %89

89:                                               ; preds = %87, %80, %80, %80
  br label %90

90:                                               ; preds = %89, %80, %68, %59, %34, %13, %5
  %91 = phi i32 [ 0, %89 ], [ -12, %5 ], [ %14, %13 ], [ -38, %59 ], [ -22, %68 ], [ -22, %80 ], [ -38, %34 ]
  ret i32 %91
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_dmaobj_ctor(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gf119_dmaobj_bind(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.nvkm_dmaobj, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nvkm_dma, ptr %6, i32 0, i32 1, i32 1, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 @nvkm_gpuobj_new(ptr noundef %8, i32 noundef 24, i32 noundef %2, i1 noundef zeroext false, ptr noundef %1, ptr noundef %3) #5
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %54

11:                                               ; preds = %4
  %12 = load ptr, ptr %3, align 4
  %13 = load ptr, ptr %12, align 8
  %14 = load ptr, ptr %13, align 4
  %15 = tail call ptr %14(ptr noundef %12) #5
  %16 = load ptr, ptr %3, align 4
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %17, i32 0, i32 3
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.gf119_dmaobj, ptr %0, i32 0, i32 1
  %21 = load i32, ptr %20, align 8
  tail call void %19(ptr noundef %16, i32 noundef 0, i32 noundef %21) #5
  %22 = load ptr, ptr %3, align 4
  %23 = load ptr, ptr %22, align 8
  %24 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %23, i32 0, i32 3
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.nvkm_dmaobj, ptr %0, i32 0, i32 5
  %27 = load i64, ptr %26, align 8
  %28 = lshr i64 %27, 8
  %29 = trunc i64 %28 to i32
  tail call void %25(ptr noundef %22, i32 noundef 4, i32 noundef %29) #5
  %30 = load ptr, ptr %3, align 4
  %31 = load ptr, ptr %30, align 8
  %32 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %31, i32 0, i32 3
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.nvkm_dmaobj, ptr %0, i32 0, i32 6
  %35 = load i64, ptr %34, align 8
  %36 = lshr i64 %35, 8
  %37 = trunc i64 %36 to i32
  tail call void %33(ptr noundef %30, i32 noundef 8, i32 noundef %37) #5
  %38 = load ptr, ptr %3, align 4
  %39 = load ptr, ptr %38, align 8
  %40 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %39, i32 0, i32 3
  %41 = load ptr, ptr %40, align 4
  tail call void %41(ptr noundef %38, i32 noundef 12, i32 noundef 0) #5
  %42 = load ptr, ptr %3, align 4
  %43 = load ptr, ptr %42, align 8
  %44 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %43, i32 0, i32 3
  %45 = load ptr, ptr %44, align 4
  tail call void %45(ptr noundef %42, i32 noundef 16, i32 noundef 0) #5
  %46 = load ptr, ptr %3, align 4
  %47 = load ptr, ptr %46, align 8
  %48 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %47, i32 0, i32 3
  %49 = load ptr, ptr %48, align 4
  tail call void %49(ptr noundef %46, i32 noundef 20, i32 noundef 0) #5
  %50 = load ptr, ptr %3, align 4
  %51 = load ptr, ptr %50, align 8
  %52 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %51, i32 0, i32 1
  %53 = load ptr, ptr %52, align 4
  tail call void %53(ptr noundef %50) #5
  br label %54

54:                                               ; preds = %11, %4
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
