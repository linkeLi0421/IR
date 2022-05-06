; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/engine/dma/usernv04.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/dma/usernv04.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_dmaobj_func = type { ptr }
%struct.nvkm_mmu_func = type { ptr, i8, %struct.anon.3, %struct.anon.4, %struct.anon.5, ptr, i8 }
%struct.anon.3 = type { %struct.nvkm_sclass }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.anon.4 = type { %struct.nvkm_sclass, ptr, ptr }
%struct.anon.5 = type { %struct.nvkm_sclass, ptr, i8, i32 }
%struct.nvkm_dma = type { ptr, %struct.nvkm_engine }
%struct.nvkm_engine = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.anon.130 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.anon.130 = type { %struct.refcount_struct, %struct.mutex, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_dmaobj = type { ptr, ptr, %struct.nvkm_object, i32, i32, i64, i64 }
%struct.nvkm_object = type { ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, i8, i64, i64, %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.125, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.125 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nv04_dmaobj = type { %struct.nvkm_dmaobj, i8, i32, i32 }
%struct.nvkm_oclass = type { ptr, %struct.nvkm_sclass, ptr, ptr, i32, i8, i64, i64, ptr, ptr, ptr }
%struct.nvkm_mmu = type { ptr, %struct.nvkm_subdev, i8, i32, [4 x %struct.anon.126], i32, [16 x %struct.anon.127], ptr, %struct.anon.128, %struct.anon.128, %struct.mutex, %struct.nvkm_device_oclass }
%struct.anon.126 = type { i8, i64 }
%struct.anon.127 = type { i8, i8 }
%struct.anon.128 = type { %struct.mutex, %struct.list_head }
%struct.nvkm_device_oclass = type { ptr, %struct.nvkm_sclass }
%struct.nvkm_vmm = type { ptr, ptr, ptr, i32, %struct.kref, %struct.mutex, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_root, %struct.rb_root, i8, [51 x %struct.atomic_t], i32, ptr, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.rb_root = type { ptr }
%struct.nvkm_mmu_pt = type { %union.anon.2, ptr, i8, i16, i64, %struct.list_head }
%union.anon.2 = type { ptr }
%struct.nvkm_memory_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_memory = type { ptr, ptr, %struct.kref, ptr }
%struct.nvkm_gpuobj_func = type { ptr, ptr, ptr, ptr, ptr }

@nv04_dmaobj_func = internal constant %struct.nvkm_dmaobj_func { ptr @nv04_dmaobj_bind }, align 4
@nv04_mmu = external dso_local constant %struct.nvkm_mmu_func, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nv04_dmaobj_new(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #0 {
  %6 = alloca ptr, align 4
  %7 = alloca i32, align 4
  store ptr %2, ptr %6, align 4
  store i32 %3, ptr %7, align 4
  %8 = getelementptr inbounds %struct.nvkm_dma, ptr %0, i32 0, i32 1, i32 1, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %11 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 120) #3
  %12 = icmp eq ptr %11, null
  br i1 %12, label %57, label %13

13:                                               ; preds = %5
  store ptr %11, ptr %4, align 4
  %14 = call i32 @nvkm_dmaobj_ctor(ptr noundef nonnull @nv04_dmaobj_func, ptr noundef %0, ptr noundef %1, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %11) #4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %57

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.nvkm_dmaobj, ptr %11, i32 0, i32 3
  %18 = load i32, ptr %17, align 8
  %19 = icmp eq i32 %18, 3
  br i1 %19, label %20, label %32

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.nvkm_device, ptr %9, i32 0, i32 35
  %22 = load ptr, ptr %21, align 8
  %23 = load ptr, ptr %22, align 8
  %24 = icmp eq ptr %23, @nv04_mmu
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.nv04_dmaobj, ptr %11, i32 0, i32 1
  store i8 1, ptr %26, align 8
  br label %27

27:                                               ; preds = %25, %20
  store i32 1, ptr %17, align 8
  %28 = getelementptr inbounds %struct.nvkm_dmaobj, ptr %11, i32 0, i32 4
  store i32 3, ptr %28, align 4
  %29 = getelementptr inbounds %struct.nvkm_oclass, ptr %1, i32 0, i32 1, i32 2
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr inbounds %struct.nv04_dmaobj, ptr %11, i32 0, i32 2
  br label %38

32:                                               ; preds = %16
  %33 = getelementptr inbounds %struct.nvkm_oclass, ptr %1, i32 0, i32 1, i32 2
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr inbounds %struct.nv04_dmaobj, ptr %11, i32 0, i32 2
  store i32 %34, ptr %35, align 4
  switch i32 %18, label %57 [
    i32 0, label %36
    i32 1, label %38
    i32 2, label %42
  ]

36:                                               ; preds = %32
  %37 = or i32 %34, 12288
  store i32 %37, ptr %35, align 4
  br label %44

38:                                               ; preds = %32, %27
  %39 = phi ptr [ %31, %27 ], [ %35, %32 ]
  %40 = phi i32 [ %30, %27 ], [ %34, %32 ]
  %41 = or i32 %40, 143360
  store i32 %41, ptr %39, align 4
  br label %44

42:                                               ; preds = %32
  %43 = or i32 %34, 208896
  store i32 %43, ptr %35, align 4
  br label %44

44:                                               ; preds = %42, %38, %36
  %45 = phi i32 [ %43, %42 ], [ %41, %38 ], [ %37, %36 ]
  %46 = phi ptr [ %35, %42 ], [ %39, %38 ], [ %35, %36 ]
  %47 = getelementptr inbounds %struct.nvkm_dmaobj, ptr %11, i32 0, i32 4
  %48 = load i32, ptr %47, align 4
  switch i32 %48, label %57 [
    i32 1, label %49
    i32 2, label %51
    i32 3, label %53
  ]

49:                                               ; preds = %44
  %50 = or i32 %45, 16384
  store i32 %50, ptr %46, align 4
  br label %57

51:                                               ; preds = %44
  %52 = or i32 %45, 32768
  store i32 %52, ptr %46, align 4
  br label %53

53:                                               ; preds = %51, %44
  %54 = getelementptr inbounds %struct.nv04_dmaobj, ptr %11, i32 0, i32 3
  %55 = load i32, ptr %54, align 8
  %56 = or i32 %55, 2
  store i32 %56, ptr %54, align 8
  br label %57

57:                                               ; preds = %53, %49, %44, %32, %13, %5
  %58 = phi i32 [ -12, %5 ], [ %14, %13 ], [ -22, %32 ], [ -22, %44 ], [ 0, %53 ], [ 0, %49 ]
  ret i32 %58
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_dmaobj_ctor(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nv04_dmaobj_bind(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.nvkm_dmaobj, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nvkm_dma, ptr %6, i32 0, i32 1, i32 1, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nvkm_dmaobj, ptr %0, i32 0, i32 5
  %10 = load i64, ptr %9, align 8
  %11 = and i64 %10, 4294963200
  %12 = getelementptr inbounds %struct.nvkm_dmaobj, ptr %0, i32 0, i32 6
  %13 = load i64, ptr %12, align 8
  %14 = sub i64 %13, %10
  %15 = trunc i64 %14 to i32
  %16 = getelementptr inbounds %struct.nv04_dmaobj, ptr %0, i32 0, i32 1
  %17 = load i8, ptr %16, align 8, !range !8
  %18 = icmp eq i8 %17, 0
  %19 = trunc i64 %11 to i32
  br i1 %18, label %48, label %20

20:                                               ; preds = %4
  %21 = getelementptr inbounds %struct.nvkm_device, ptr %8, i32 0, i32 35
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds %struct.nvkm_mmu, ptr %22, i32 0, i32 7
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.nvkm_vmm, ptr %24, i32 0, i32 8
  %26 = load ptr, ptr %25, align 8
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %27, i32 0, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq i64 %10, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %20
  %32 = tail call i32 @nvkm_gpuobj_wrap(ptr noundef %29, ptr noundef %3) #4
  br label %87

33:                                               ; preds = %20
  %34 = load ptr, ptr %29, align 4
  %35 = getelementptr inbounds %struct.nvkm_memory_func, ptr %34, i32 0, i32 7
  %36 = load ptr, ptr %35, align 4
  %37 = tail call ptr %36(ptr noundef %29) #4
  %38 = getelementptr inbounds %struct.nvkm_memory, ptr %29, i32 0, i32 1
  %39 = load ptr, ptr %38, align 4
  %40 = load ptr, ptr %39, align 4
  %41 = lshr exact i64 %11, 10
  %42 = add nuw nsw i64 %41, 8
  %43 = tail call i32 %40(ptr noundef %29, i64 noundef %42) #4
  %44 = and i32 %43, -4096
  %45 = load ptr, ptr %29, align 4
  %46 = getelementptr inbounds %struct.nvkm_memory_func, ptr %45, i32 0, i32 8
  %47 = load ptr, ptr %46, align 4
  tail call void %47(ptr noundef %29) #4
  br label %48

48:                                               ; preds = %33, %4
  %49 = phi i32 [ %44, %33 ], [ %19, %4 ]
  %50 = tail call i32 @nvkm_gpuobj_new(ptr noundef %8, i32 noundef 16, i32 noundef %2, i1 noundef zeroext false, ptr noundef %1, ptr noundef %3) #4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %87

52:                                               ; preds = %48
  %53 = load ptr, ptr %3, align 4
  %54 = load ptr, ptr %53, align 8
  %55 = load ptr, ptr %54, align 4
  %56 = tail call ptr %55(ptr noundef %53) #4
  %57 = load ptr, ptr %3, align 4
  %58 = load ptr, ptr %57, align 8
  %59 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %58, i32 0, i32 3
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr inbounds %struct.nv04_dmaobj, ptr %0, i32 0, i32 2
  %62 = load i32, ptr %61, align 4
  %63 = trunc i64 %10 to i32
  %64 = shl i32 %63, 20
  %65 = or i32 %62, %64
  tail call void %60(ptr noundef %57, i32 noundef 0, i32 noundef %65) #4
  %66 = load ptr, ptr %3, align 4
  %67 = load ptr, ptr %66, align 8
  %68 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %67, i32 0, i32 3
  %69 = load ptr, ptr %68, align 4
  tail call void %69(ptr noundef %66, i32 noundef 4, i32 noundef %15) #4
  %70 = load ptr, ptr %3, align 4
  %71 = load ptr, ptr %70, align 8
  %72 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %71, i32 0, i32 3
  %73 = load ptr, ptr %72, align 4
  %74 = getelementptr inbounds %struct.nv04_dmaobj, ptr %0, i32 0, i32 3
  %75 = load i32, ptr %74, align 8
  %76 = or i32 %75, %49
  tail call void %73(ptr noundef %70, i32 noundef 8, i32 noundef %76) #4
  %77 = load ptr, ptr %3, align 4
  %78 = load ptr, ptr %77, align 8
  %79 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %78, i32 0, i32 3
  %80 = load ptr, ptr %79, align 4
  %81 = load i32, ptr %74, align 8
  %82 = or i32 %81, %49
  tail call void %80(ptr noundef %77, i32 noundef 12, i32 noundef %82) #4
  %83 = load ptr, ptr %3, align 4
  %84 = load ptr, ptr %83, align 8
  %85 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %84, i32 0, i32 1
  %86 = load ptr, ptr %85, align 4
  tail call void %86(ptr noundef %83) #4
  br label %87

87:                                               ; preds = %52, %48, %31
  %88 = phi i32 [ 0, %52 ], [ %50, %48 ], [ %32, %31 ]
  ret i32 %88
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_gpuobj_wrap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_gpuobj_new(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind allocsize(2) }
attributes #4 = { nounwind }

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
