; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/subdev/ltc/base.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/ltc/base.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_subdev_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.119, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.anon.119 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_ltc = type { ptr, %struct.nvkm_subdev, i32, i32, %struct.mutex, i32, i32, ptr, i32, i32, [16 x [4 x i32]], [16 x i32], [16 x i32] }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.nvkm_ltc_func = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }

@nvkm_ltc = internal constant %struct.nvkm_subdev_func { ptr @nvkm_ltc_dtor, ptr null, ptr @nvkm_ltc_oneinit, ptr null, ptr @nvkm_ltc_init, ptr null, ptr @nvkm_ltc_intr }, align 4
@nvkm_ltc_new_.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str = private unnamed_addr constant [12 x i8] c"&ltc->mutex\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvkm_ltc_tags_clear(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.nvkm_device, ptr %0, i32 0, i32 34
  %5 = load ptr, ptr %4, align 4
  %6 = add i32 %1, -1
  %7 = add i32 %6, %2
  %8 = icmp ult i32 %7, %1
  br i1 %8, label %13, label %9, !prof !8

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.nvkm_ltc, ptr %5, i32 0, i32 5
  %11 = load i32, ptr %10, align 4
  %12 = icmp ult i32 %7, %11
  br i1 %12, label %14, label %13, !prof !9

13:                                               ; preds = %9, %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/subdev/ltc/base.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 34, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.nvkm_ltc, ptr %5, i32 0, i32 4
  tail call void @mutex_lock(ptr noundef %15) #5
  %16 = load ptr, ptr %5, align 4
  %17 = getelementptr inbounds %struct.nvkm_ltc_func, ptr %16, i32 0, i32 3
  %18 = load ptr, ptr %17, align 4
  tail call void %18(ptr noundef %5, i32 noundef %1, i32 noundef %7) #5
  %19 = load ptr, ptr %5, align 4
  %20 = getelementptr inbounds %struct.nvkm_ltc_func, ptr %19, i32 0, i32 4
  %21 = load ptr, ptr %20, align 4
  tail call void %21(ptr noundef %5) #5
  tail call void @mutex_unlock(ptr noundef %15) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_ltc_zbc_color_get(ptr noundef %0, i32 noundef returned %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr %struct.nvkm_ltc, ptr %0, i32 0, i32 10, i32 %1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %4, ptr noundef align 4 dereferenceable(16) %2, i32 16, i1 false)
  %5 = load ptr, ptr %0, align 4
  %6 = getelementptr inbounds %struct.nvkm_ltc_func, ptr %5, i32 0, i32 6
  %7 = load ptr, ptr %6, align 4
  tail call void %7(ptr noundef %0, i32 noundef %1, ptr noundef %2) #5
  ret i32 %1
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_ltc_zbc_depth_get(ptr noundef %0, i32 noundef returned %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr %struct.nvkm_ltc, ptr %0, i32 0, i32 11, i32 %1
  store i32 %2, ptr %4, align 4
  %5 = load ptr, ptr %0, align 4
  %6 = getelementptr inbounds %struct.nvkm_ltc_func, ptr %5, i32 0, i32 7
  %7 = load ptr, ptr %6, align 4
  tail call void %7(ptr noundef %0, i32 noundef %1, i32 noundef %2) #5
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_ltc_zbc_stencil_get(ptr noundef %0, i32 noundef returned %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr %struct.nvkm_ltc, ptr %0, i32 0, i32 12, i32 %1
  store i32 %2, ptr %4, align 4
  %5 = load ptr, ptr %0, align 4
  %6 = getelementptr inbounds %struct.nvkm_ltc_func, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 4
  tail call void %7(ptr noundef %0, i32 noundef %1, i32 noundef %2) #5
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvkm_ltc_invalidate(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.nvkm_ltc_func, ptr %2, i32 0, i32 9
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void %4(ptr noundef %0) #5
  br label %7

7:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvkm_ltc_flush(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.nvkm_ltc_func, ptr %2, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void %4(ptr noundef %0) #5
  br label %7

7:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_ltc_new_(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #0 {
  %6 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %7 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 488) #6
  store ptr %7, ptr %4, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %18, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.nvkm_ltc, ptr %7, i32 0, i32 1
  tail call void @nvkm_subdev_ctor(ptr noundef nonnull @nvkm_ltc, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %10) #5
  store ptr %0, ptr %7, align 8
  %11 = getelementptr inbounds %struct.nvkm_ltc, ptr %7, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %11, ptr noundef nonnull @.str, ptr noundef nonnull @nvkm_ltc_new_.__key) #5
  %12 = getelementptr inbounds %struct.nvkm_ltc, ptr %7, i32 0, i32 8
  store i32 1, ptr %12, align 8
  %13 = getelementptr inbounds %struct.nvkm_ltc_func, ptr %0, i32 0, i32 5
  %14 = load i32, ptr %13, align 4
  %15 = tail call i32 @llvm.smin.i32(i32 %14, i32 16)
  %16 = add i32 %15, -1
  %17 = getelementptr inbounds %struct.nvkm_ltc, ptr %7, i32 0, i32 9
  store i32 %16, ptr %17, align 4
  br label %18

18:                                               ; preds = %9, %5
  %19 = phi i32 [ 0, %9 ], [ -12, %5 ]
  ret i32 %19
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_subdev_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @nvkm_ltc_dtor(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -4
  %3 = getelementptr i8, ptr %0, i32 88
  tail call void @nvkm_memory_unref(ptr noundef %3) #5
  ret ptr %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvkm_ltc_oneinit(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -4
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 %4(ptr noundef %2) #5
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvkm_ltc_init(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -4
  %3 = getelementptr i8, ptr %0, i32 92
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr i8, ptr %0, i32 96
  %6 = load i32, ptr %5, align 4
  %7 = icmp sgt i32 %4, %6
  br i1 %7, label %34, label %8

8:                                                ; preds = %1
  %9 = getelementptr i8, ptr %0, i32 100
  %10 = getelementptr i8, ptr %0, i32 356
  %11 = getelementptr i8, ptr %0, i32 420
  br label %12

12:                                               ; preds = %30, %8
  %13 = phi i32 [ %4, %8 ], [ %31, %30 ]
  %14 = load ptr, ptr %2, align 4
  %15 = getelementptr inbounds %struct.nvkm_ltc_func, ptr %14, i32 0, i32 6
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr [16 x [4 x i32]], ptr %9, i32 0, i32 %13
  tail call void %16(ptr noundef %2, i32 noundef %13, ptr noundef %17) #5
  %18 = load ptr, ptr %2, align 4
  %19 = getelementptr inbounds %struct.nvkm_ltc_func, ptr %18, i32 0, i32 7
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr [16 x i32], ptr %10, i32 0, i32 %13
  %22 = load i32, ptr %21, align 4
  tail call void %20(ptr noundef %2, i32 noundef %13, i32 noundef %22) #5
  %23 = load ptr, ptr %2, align 4
  %24 = getelementptr inbounds %struct.nvkm_ltc_func, ptr %23, i32 0, i32 8
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %12
  %28 = getelementptr [16 x i32], ptr %11, i32 0, i32 %13
  %29 = load i32, ptr %28, align 4
  tail call void %25(ptr noundef %2, i32 noundef %13, i32 noundef %29) #5
  br label %30

30:                                               ; preds = %27, %12
  %31 = add i32 %13, 1
  %32 = load i32, ptr %5, align 4
  %33 = icmp sgt i32 %31, %32
  br i1 %33, label %34, label %12

34:                                               ; preds = %30, %1
  %35 = load ptr, ptr %2, align 4
  %36 = getelementptr inbounds %struct.nvkm_ltc_func, ptr %35, i32 0, i32 1
  %37 = load ptr, ptr %36, align 4
  tail call void %37(ptr noundef %2) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nvkm_ltc_intr(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_ltc_func, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  tail call void %5(ptr noundef %2) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_memory_unref(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{i64 2154754812, i64 2154755322, i64 2154754849, i64 2154754905, i64 2154754939, i64 2154754963, i64 2154755004, i64 2154755025, i64 2154755053, i64 2154755087}
