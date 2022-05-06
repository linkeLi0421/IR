; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/engine/disp/head.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/disp/head.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_disp = type { ptr, %struct.nvkm_engine, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.nvkm_event, %struct.nvkm_event, %struct.anon.125 }
%struct.nvkm_engine = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.anon.124 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.anon.124 = type { %struct.refcount_struct, %struct.mutex, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.125 = type { %struct.spinlock, ptr }
%struct.nvkm_object = type { ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, i8, i64, i64, %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%struct.nvkm_client = type { %struct.nvkm_object, [32 x i8], i64, i32, [32 x ptr], %struct.rb_root, ptr, ptr, %struct.list_head, %struct.spinlock }
%struct.rb_root = type { ptr }
%struct.nvkm_head = type { ptr, ptr, i32, %struct.list_head, %struct.nvkm_head_state, %struct.nvkm_head_state }
%struct.nvkm_head_state = type { i16, i16, i16, i16, i16, i16, i16, i16, i32, %struct.anon }
%struct.anon = type { i8 }
%struct.nv04_disp_scanoutpos_v0 = type { i8, [7 x i8], [2 x i64], i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.nvkm_head_func = type { ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.122, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.anon.122 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }

@.str = private unnamed_addr constant [57 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: head scanoutpos size %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [57 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: head scanoutpos vers %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"%s: head-%d: dtor\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"%s: head-%d: ctor\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local ptr @nvkm_head_find(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.nvkm_disp, ptr %0, i32 0, i32 2
  br label %4

4:                                                ; preds = %8, %2
  %5 = phi ptr [ %3, %2 ], [ %6, %8 ]
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, %3
  br i1 %7, label %14, label %8

8:                                                ; preds = %4
  %9 = getelementptr i8, ptr %6, i32 -4
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, %1
  br i1 %11, label %12, label %4

12:                                               ; preds = %8
  %13 = getelementptr i8, ptr %6, i32 -12
  br label %14

14:                                               ; preds = %12, %4
  %15 = phi ptr [ %13, %12 ], [ null, %4 ]
  ret ptr %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_head_mthd_scanoutpos(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #1 {
  %5 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nvkm_client, ptr %6, i32 0, i32 3
  %8 = load i32, ptr %7, align 8
  %9 = icmp ugt i32 %8, 4
  br i1 %9, label %10, label %17

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.nvkm_client, ptr %6, i32 0, i32 1
  %12 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 4
  %13 = load i32, ptr %12, align 8
  %14 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef %3) #5
  br label %17

17:                                               ; preds = %10, %4
  %18 = icmp ugt i32 %3, 39
  br i1 %18, label %19, label %70

19:                                               ; preds = %17
  %20 = load i8, ptr %2, align 8
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %70

22:                                               ; preds = %19
  %23 = icmp eq i32 %3, 40
  br i1 %23, label %24, label %70

24:                                               ; preds = %22
  %25 = load ptr, ptr %5, align 4
  %26 = getelementptr inbounds %struct.nvkm_client, ptr %25, i32 0, i32 3
  %27 = load i32, ptr %26, align 8
  %28 = icmp ugt i32 %27, 4
  br i1 %28, label %29, label %36

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.nvkm_client, ptr %25, i32 0, i32 1
  %31 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 4
  %32 = load i32, ptr %31, align 8
  %33 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 3
  %34 = load i32, ptr %33, align 4
  %35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %30, i32 noundef %32, i32 noundef %34, i32 noundef 0) #5
  br label %36

36:                                               ; preds = %29, %24
  %37 = load ptr, ptr %1, align 4
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.nvkm_head, ptr %1, i32 0, i32 4
  tail call void %38(ptr noundef %1, ptr noundef %39) #6
  %40 = getelementptr inbounds %struct.nvkm_head, ptr %1, i32 0, i32 4, i32 4
  %41 = load i16, ptr %40, align 4
  %42 = getelementptr inbounds %struct.nv04_disp_scanoutpos_v0, ptr %2, i32 0, i32 5
  store i16 %41, ptr %42, align 4
  %43 = getelementptr inbounds %struct.nvkm_head, ptr %1, i32 0, i32 4, i32 7
  %44 = load i16, ptr %43, align 2
  %45 = getelementptr inbounds %struct.nv04_disp_scanoutpos_v0, ptr %2, i32 0, i32 3
  store i16 %44, ptr %45, align 8
  %46 = getelementptr inbounds %struct.nvkm_head, ptr %1, i32 0, i32 4, i32 6
  %47 = load i16, ptr %46, align 4
  %48 = getelementptr inbounds %struct.nv04_disp_scanoutpos_v0, ptr %2, i32 0, i32 4
  store i16 %47, ptr %48, align 2
  %49 = load i16, ptr %39, align 4
  %50 = getelementptr inbounds %struct.nv04_disp_scanoutpos_v0, ptr %2, i32 0, i32 9
  store i16 %49, ptr %50, align 4
  %51 = getelementptr inbounds %struct.nvkm_head, ptr %1, i32 0, i32 4, i32 3
  %52 = load i16, ptr %51, align 2
  %53 = getelementptr inbounds %struct.nv04_disp_scanoutpos_v0, ptr %2, i32 0, i32 7
  store i16 %52, ptr %53, align 8
  %54 = getelementptr inbounds %struct.nvkm_head, ptr %1, i32 0, i32 4, i32 2
  %55 = load i16, ptr %54, align 4
  %56 = getelementptr inbounds %struct.nv04_disp_scanoutpos_v0, ptr %2, i32 0, i32 8
  store i16 %55, ptr %56, align 2
  %57 = icmp eq i16 %41, 0
  %58 = icmp eq i16 %49, 0
  %59 = select i1 %57, i1 true, i1 %58
  br i1 %59, label %70, label %60

60:                                               ; preds = %36
  %61 = tail call i64 @ktime_get() #6
  %62 = getelementptr inbounds %struct.nv04_disp_scanoutpos_v0, ptr %2, i32 0, i32 2
  store i64 %61, ptr %62, align 8
  %63 = load ptr, ptr %1, align 4
  %64 = getelementptr inbounds %struct.nvkm_head_func, ptr %63, i32 0, i32 1
  %65 = load ptr, ptr %64, align 4
  %66 = getelementptr inbounds %struct.nv04_disp_scanoutpos_v0, ptr %2, i32 0, i32 10
  %67 = getelementptr inbounds %struct.nv04_disp_scanoutpos_v0, ptr %2, i32 0, i32 6
  tail call void %65(ptr noundef %1, ptr noundef %66, ptr noundef %67) #6
  %68 = tail call i64 @ktime_get() #6
  %69 = getelementptr %struct.nv04_disp_scanoutpos_v0, ptr %2, i32 0, i32 2, i32 1
  store i64 %68, ptr %69, align 8
  br label %70

70:                                               ; preds = %60, %36, %22, %19, %17
  %71 = phi i32 [ 0, %60 ], [ -524, %36 ], [ -38, %17 ], [ -38, %19 ], [ -7, %22 ]
  ret i32 %71
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvkm_head_del(ptr nocapture noundef %0) local_unnamed_addr #1 {
  %2 = load ptr, ptr %0, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %25, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.nvkm_head, ptr %2, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nvkm_disp, ptr %6, i32 0, i32 1, i32 1, i32 5
  %8 = load i32, ptr %7, align 4
  %9 = icmp ugt i32 %8, 3
  br i1 %9, label %10, label %18

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.nvkm_disp, ptr %6, i32 0, i32 1, i32 1, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.nvkm_device, ptr %12, i32 0, i32 2
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.nvkm_disp, ptr %6, i32 0, i32 1, i32 1, i32 4
  %16 = getelementptr inbounds %struct.nvkm_head, ptr %2, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %14, ptr noundef nonnull @.str.2, ptr noundef %15, i32 noundef %17) #5
  br label %18

18:                                               ; preds = %10, %4
  %19 = getelementptr inbounds %struct.nvkm_head, ptr %2, i32 0, i32 3
  %20 = getelementptr inbounds %struct.nvkm_head, ptr %2, i32 0, i32 3, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = load ptr, ptr %19, align 4
  %23 = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  store ptr %21, ptr %23, align 4
  store volatile ptr %22, ptr %21, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %19, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %20, align 4
  %24 = load ptr, ptr %0, align 4
  tail call void @kfree(ptr noundef %24) #6
  store ptr null, ptr %0, align 4
  br label %25

25:                                               ; preds = %18, %1
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_head_new_(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 {
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 68) #7
  %6 = icmp eq ptr %5, null
  br i1 %6, label %26, label %7

7:                                                ; preds = %3
  store ptr %0, ptr %5, align 8
  %8 = getelementptr inbounds %struct.nvkm_head, ptr %5, i32 0, i32 1
  store ptr %1, ptr %8, align 4
  %9 = getelementptr inbounds %struct.nvkm_head, ptr %5, i32 0, i32 2
  store i32 %2, ptr %9, align 8
  %10 = getelementptr inbounds %struct.nvkm_head, ptr %5, i32 0, i32 3
  %11 = getelementptr inbounds %struct.nvkm_disp, ptr %1, i32 0, i32 2
  %12 = getelementptr inbounds %struct.nvkm_disp, ptr %1, i32 0, i32 2, i32 1
  %13 = load ptr, ptr %12, align 4
  store ptr %10, ptr %12, align 4
  store ptr %11, ptr %10, align 4
  %14 = getelementptr inbounds %struct.nvkm_head, ptr %5, i32 0, i32 3, i32 1
  store ptr %13, ptr %14, align 8
  store volatile ptr %10, ptr %13, align 4
  %15 = load ptr, ptr %8, align 4
  %16 = getelementptr inbounds %struct.nvkm_disp, ptr %15, i32 0, i32 1, i32 1, i32 5
  %17 = load i32, ptr %16, align 4
  %18 = icmp ugt i32 %17, 3
  br i1 %18, label %19, label %26

19:                                               ; preds = %7
  %20 = getelementptr inbounds %struct.nvkm_disp, ptr %15, i32 0, i32 1, i32 1, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.nvkm_device, ptr %21, i32 0, i32 2
  %23 = load ptr, ptr %22, align 8
  %24 = getelementptr inbounds %struct.nvkm_disp, ptr %15, i32 0, i32 1, i32 1, i32 4
  %25 = load i32, ptr %9, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %23, ptr noundef nonnull @.str.3, ptr noundef %24, i32 noundef %25) #5
  br label %26

26:                                               ; preds = %19, %7, %3
  %27 = phi i32 [ -12, %3 ], [ 0, %19 ], [ 0, %7 ]
  ret i32 %27
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold nounwind }
attributes #6 = { nounwind }
attributes #7 = { nounwind allocsize(2) }

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
