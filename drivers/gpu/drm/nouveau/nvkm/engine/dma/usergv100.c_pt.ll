; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/engine/dma/usergv100.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/dma/usergv100.c"
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
%struct.gv100_dmaobj = type { %struct.nvkm_dmaobj, i32 }
%struct.nvkm_dmaobj = type { ptr, ptr, %struct.nvkm_object, i32, i32, i64, i64 }
%struct.nvkm_dma = type { ptr, %struct.nvkm_engine }
%struct.nvkm_engine = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.anon.137 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.anon.137 = type { %struct.refcount_struct, %struct.mutex, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_gpuobj_func = type { ptr, ptr, ptr, ptr, ptr }

@gv100_dmaobj_func = internal constant %struct.nvkm_dmaobj_func { ptr @gv100_dmaobj_bind }, align 4
@.str = private unnamed_addr constant [58 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: create gv100 dma size %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [76 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: create gv100 dma vers %d page %d kind %02x\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gv100_dmaobj_new(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #0 {
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
  %14 = call i32 @nvkm_dmaobj_ctor(ptr noundef nonnull @gv100_dmaobj_func, ptr noundef %0, ptr noundef %1, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %11) #5
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
  br i1 %38, label %39, label %76

39:                                               ; preds = %37
  %40 = load ptr, ptr %18, align 4
  %41 = getelementptr inbounds %struct.nvkm_client, ptr %40, i32 0, i32 3
  %42 = load i32, ptr %41, align 8
  %43 = icmp ugt i32 %42, 4
  br i1 %43, label %44, label %61

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
  br label %61

59:                                               ; preds = %31
  %60 = icmp eq i32 %32, 0
  br i1 %60, label %76, label %90

61:                                               ; preds = %44, %39
  %62 = getelementptr inbounds %struct.gf119_dma_v0, ptr %17, i32 0, i32 2
  %63 = load i8, ptr %62, align 1
  %64 = icmp eq i8 %63, 0
  %65 = getelementptr inbounds %struct.gf119_dma_v0, ptr %17, i32 0, i32 1
  %66 = load i8, ptr %65, align 1
  %67 = icmp eq i8 %66, 0
  br i1 %64, label %72, label %68

68:                                               ; preds = %61
  %69 = getelementptr inbounds %struct.gv100_dmaobj, ptr %11, i32 0, i32 1
  %70 = load i32, ptr %69, align 8
  %71 = or i32 %70, 1048576
  store i32 %71, ptr %69, align 8
  br label %72

72:                                               ; preds = %68, %61
  br i1 %67, label %73, label %76

73:                                               ; preds = %72
  %74 = getelementptr inbounds %struct.gv100_dmaobj, ptr %11, i32 0, i32 1
  %75 = load i32, ptr %74, align 8
  br label %80

76:                                               ; preds = %72, %59, %37
  %77 = getelementptr inbounds %struct.gv100_dmaobj, ptr %11, i32 0, i32 1
  %78 = load i32, ptr %77, align 8
  %79 = or i32 %78, 64
  br label %80

80:                                               ; preds = %76, %73
  %81 = phi i32 [ %75, %73 ], [ %79, %76 ]
  %82 = getelementptr inbounds %struct.gv100_dmaobj, ptr %11, i32 0, i32 1
  %83 = or i32 %81, 4
  store i32 %83, ptr %82, align 8
  %84 = getelementptr inbounds %struct.nvkm_dmaobj, ptr %11, i32 0, i32 3
  %85 = load i32, ptr %84, align 8
  %86 = icmp ult i32 %85, 3
  br i1 %86, label %87, label %90

87:                                               ; preds = %80
  %88 = add i32 %85, 5
  %89 = or i32 %81, %88
  store i32 %89, ptr %82, align 8
  br label %90

90:                                               ; preds = %87, %80, %59, %34, %13, %5
  %91 = phi i32 [ -12, %5 ], [ %14, %13 ], [ -38, %59 ], [ -22, %80 ], [ -38, %34 ], [ 0, %87 ]
  ret i32 %91
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_dmaobj_ctor(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gv100_dmaobj_bind(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.nvkm_dmaobj, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nvkm_dma, ptr %6, i32 0, i32 1, i32 1, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nvkm_dmaobj, ptr %0, i32 0, i32 5
  %10 = load i64, ptr %9, align 8
  %11 = getelementptr inbounds %struct.nvkm_dmaobj, ptr %0, i32 0, i32 6
  %12 = load i64, ptr %11, align 8
  %13 = tail call i32 @nvkm_gpuobj_new(ptr noundef %8, i32 noundef 24, i32 noundef %2, i1 noundef zeroext false, ptr noundef %1, ptr noundef %3) #5
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %54

15:                                               ; preds = %4
  %16 = lshr i64 %12, 8
  %17 = lshr i64 %10, 8
  %18 = load ptr, ptr %3, align 4
  %19 = load ptr, ptr %18, align 8
  %20 = load ptr, ptr %19, align 4
  %21 = tail call ptr %20(ptr noundef %18) #5
  %22 = load ptr, ptr %3, align 4
  %23 = load ptr, ptr %22, align 8
  %24 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %23, i32 0, i32 3
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.gv100_dmaobj, ptr %0, i32 0, i32 1
  %27 = load i32, ptr %26, align 8
  tail call void %25(ptr noundef %22, i32 noundef 0, i32 noundef %27) #5
  %28 = load ptr, ptr %3, align 4
  %29 = load ptr, ptr %28, align 8
  %30 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %29, i32 0, i32 3
  %31 = load ptr, ptr %30, align 4
  %32 = trunc i64 %17 to i32
  tail call void %31(ptr noundef %28, i32 noundef 4, i32 noundef %32) #5
  %33 = load ptr, ptr %3, align 4
  %34 = load ptr, ptr %33, align 8
  %35 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %34, i32 0, i32 3
  %36 = load ptr, ptr %35, align 4
  %37 = lshr i64 %10, 40
  %38 = trunc i64 %37 to i32
  tail call void %36(ptr noundef %33, i32 noundef 8, i32 noundef %38) #5
  %39 = load ptr, ptr %3, align 4
  %40 = load ptr, ptr %39, align 8
  %41 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %40, i32 0, i32 3
  %42 = load ptr, ptr %41, align 4
  %43 = trunc i64 %16 to i32
  tail call void %42(ptr noundef %39, i32 noundef 12, i32 noundef %43) #5
  %44 = load ptr, ptr %3, align 4
  %45 = load ptr, ptr %44, align 8
  %46 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %45, i32 0, i32 3
  %47 = load ptr, ptr %46, align 4
  %48 = lshr i64 %12, 40
  %49 = trunc i64 %48 to i32
  tail call void %47(ptr noundef %44, i32 noundef 16, i32 noundef %49) #5
  %50 = load ptr, ptr %3, align 4
  %51 = load ptr, ptr %50, align 8
  %52 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %51, i32 0, i32 1
  %53 = load ptr, ptr %52, align 4
  tail call void %53(ptr noundef %50) #5
  br label %54

54:                                               ; preds = %15, %4
  ret i32 %13
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
