; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/subdev/top/base.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/top/base.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_subdev_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_top_device = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_top = type { ptr, %struct.nvkm_subdev, %struct.list_head }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
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

@nvkm_top = internal constant %struct.nvkm_subdev_func { ptr @nvkm_top_dtor, ptr null, ptr @nvkm_top_oneinit, ptr null, ptr null, ptr null, ptr null }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @nvkm_top_device_new(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 40) #5
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5

5:                                                ; preds = %1
  store i32 51, ptr %3, align 8
  %6 = getelementptr inbounds %struct.nvkm_top_device, ptr %3, i32 0, i32 1
  store i32 -1, ptr %6, align 4
  %7 = getelementptr inbounds %struct.nvkm_top_device, ptr %3, i32 0, i32 2
  store i32 0, ptr %7, align 8
  %8 = getelementptr inbounds %struct.nvkm_top_device, ptr %3, i32 0, i32 3
  %9 = getelementptr inbounds %struct.nvkm_top_device, ptr %3, i32 0, i32 8
  %10 = getelementptr inbounds %struct.nvkm_top, ptr %0, i32 0, i32 2
  %11 = getelementptr inbounds %struct.nvkm_top, ptr %0, i32 0, i32 2, i32 1
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(20) %8, i8 -1, i64 20, i1 false)
  %12 = load ptr, ptr %11, align 4
  store ptr %9, ptr %11, align 4
  store ptr %10, ptr %9, align 8
  %13 = getelementptr inbounds %struct.nvkm_top_device, ptr %3, i32 0, i32 8, i32 1
  store ptr %12, ptr %13, align 4
  store volatile ptr %9, ptr %12, align 4
  br label %14

14:                                               ; preds = %5, %1
  ret ptr %3
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local i32 @nvkm_top_addr(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #1 {
  %4 = getelementptr inbounds %struct.nvkm_device, ptr %0, i32 0, i32 23
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %26, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.nvkm_top, ptr %5, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, %8
  br i1 %10, label %26, label %11

11:                                               ; preds = %23, %7
  %12 = phi ptr [ %24, %23 ], [ %9, %7 ]
  %13 = getelementptr i8, ptr %12, i32 -32
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, %1
  br i1 %15, label %16, label %23

16:                                               ; preds = %11
  %17 = getelementptr i8, ptr %12, i32 -28
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, %2
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = getelementptr i8, ptr %12, i32 -24
  %22 = load i32, ptr %21, align 4
  br label %26

23:                                               ; preds = %16, %11
  %24 = load ptr, ptr %12, align 4
  %25 = icmp eq ptr %24, %8
  br i1 %25, label %26, label %11

26:                                               ; preds = %23, %20, %7, %3
  %27 = phi i32 [ %22, %20 ], [ 0, %3 ], [ 0, %7 ], [ 0, %23 ]
  ret i32 %27
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local i32 @nvkm_top_reset(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #1 {
  %4 = getelementptr inbounds %struct.nvkm_device, ptr %0, i32 0, i32 23
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %29, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.nvkm_top, ptr %5, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, %8
  br i1 %10, label %29, label %11

11:                                               ; preds = %26, %7
  %12 = phi ptr [ %27, %26 ], [ %9, %7 ]
  %13 = getelementptr i8, ptr %12, i32 -32
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, %1
  br i1 %15, label %16, label %26

16:                                               ; preds = %11
  %17 = getelementptr i8, ptr %12, i32 -28
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, %2
  br i1 %19, label %20, label %26

20:                                               ; preds = %16
  %21 = getelementptr i8, ptr %12, i32 -8
  %22 = load i32, ptr %21, align 4
  %23 = icmp sgt i32 %22, -1
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = shl nuw i32 1, %22
  br label %29

26:                                               ; preds = %20, %16, %11
  %27 = load ptr, ptr %12, align 4
  %28 = icmp eq ptr %27, %8
  br i1 %28, label %29, label %11

29:                                               ; preds = %26, %24, %7, %3
  %30 = phi i32 [ %25, %24 ], [ 0, %3 ], [ 0, %7 ], [ 0, %26 ]
  ret i32 %30
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local i32 @nvkm_top_intr_mask(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #1 {
  %4 = getelementptr inbounds %struct.nvkm_device, ptr %0, i32 0, i32 23
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %29, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.nvkm_top, ptr %5, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, %8
  br i1 %10, label %29, label %11

11:                                               ; preds = %26, %7
  %12 = phi ptr [ %27, %26 ], [ %9, %7 ]
  %13 = getelementptr i8, ptr %12, i32 -32
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, %1
  br i1 %15, label %16, label %26

16:                                               ; preds = %11
  %17 = getelementptr i8, ptr %12, i32 -28
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, %2
  br i1 %19, label %20, label %26

20:                                               ; preds = %16
  %21 = getelementptr i8, ptr %12, i32 -4
  %22 = load i32, ptr %21, align 4
  %23 = icmp sgt i32 %22, -1
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = shl nuw i32 1, %22
  br label %29

26:                                               ; preds = %20, %16, %11
  %27 = load ptr, ptr %12, align 4
  %28 = icmp eq ptr %27, %8
  br i1 %28, label %29, label %11

29:                                               ; preds = %26, %24, %7, %3
  %30 = phi i32 [ %25, %24 ], [ 0, %3 ], [ 0, %7 ], [ 0, %26 ]
  ret i32 %30
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local i32 @nvkm_top_fault_id(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #1 {
  %4 = getelementptr inbounds %struct.nvkm_device, ptr %0, i32 0, i32 23
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.nvkm_top, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %6
  br i1 %8, label %25, label %9

9:                                                ; preds = %22, %3
  %10 = phi ptr [ %23, %22 ], [ %7, %3 ]
  %11 = getelementptr i8, ptr %10, i32 -32
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, %1
  br i1 %13, label %14, label %22

14:                                               ; preds = %9
  %15 = getelementptr i8, ptr %10, i32 -28
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, %2
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = getelementptr i8, ptr %10, i32 -20
  %20 = load i32, ptr %19, align 4
  %21 = icmp sgt i32 %20, -1
  br i1 %21, label %25, label %22

22:                                               ; preds = %18, %14, %9
  %23 = load ptr, ptr %10, align 4
  %24 = icmp eq ptr %23, %6
  br i1 %24, label %25, label %9

25:                                               ; preds = %22, %18, %3
  %26 = phi i32 [ -2, %3 ], [ -2, %22 ], [ %20, %18 ]
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @nvkm_top_fault(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.nvkm_device, ptr %0, i32 0, i32 23
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.nvkm_top, ptr %4, i32 0, i32 2
  br label %6

6:                                                ; preds = %10, %2
  %7 = phi ptr [ %5, %2 ], [ %8, %10 ]
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %5
  br i1 %9, label %20, label %10

10:                                               ; preds = %6
  %11 = getelementptr i8, ptr %8, i32 -20
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, %1
  br i1 %13, label %14, label %6

14:                                               ; preds = %10
  %15 = getelementptr i8, ptr %8, i32 -32
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr i8, ptr %8, i32 -28
  %18 = load i32, ptr %17, align 4
  %19 = tail call ptr @nvkm_device_subdev(ptr noundef %0, i32 noundef %16, i32 noundef %18) #6
  br label %20

20:                                               ; preds = %14, %6
  %21 = phi ptr [ %19, %14 ], [ null, %6 ]
  ret ptr %21
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvkm_device_subdev(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_top_new_(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #0 {
  %6 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %7 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 64) #5
  store ptr %7, ptr %4, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.nvkm_top, ptr %7, i32 0, i32 1
  tail call void @nvkm_subdev_ctor(ptr noundef nonnull @nvkm_top, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %10) #6
  store ptr %0, ptr %7, align 8
  %11 = getelementptr inbounds %struct.nvkm_top, ptr %7, i32 0, i32 2
  store volatile ptr %11, ptr %11, align 8
  %12 = getelementptr inbounds %struct.nvkm_top, ptr %7, i32 0, i32 2, i32 1
  store ptr %11, ptr %12, align 4
  br label %13

13:                                               ; preds = %9, %5
  %14 = phi i32 [ 0, %9 ], [ -12, %5 ]
  ret i32 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_subdev_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @nvkm_top_dtor(ptr noundef readonly %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 52
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %13, label %5

5:                                                ; preds = %5, %1
  %6 = phi ptr [ %8, %5 ], [ %3, %1 ]
  %7 = getelementptr i8, ptr %6, i32 -32
  %8 = load ptr, ptr %6, align 4
  %9 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  store ptr %10, ptr %11, align 4
  store volatile ptr %8, ptr %10, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %6, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %9, align 4
  tail call void @kfree(ptr noundef %7) #6
  %12 = icmp eq ptr %8, %2
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %1
  %14 = getelementptr i8, ptr %0, i32 -4
  ret ptr %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvkm_top_oneinit(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -4
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 %4(ptr noundef %2) #6
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nounwind allocsize(2) }
attributes #6 = { nounwind }

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
