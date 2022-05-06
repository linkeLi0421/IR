; ModuleID = '/llk/IR/drivers/gpu/drm/ttm/ttm_sys_manager.c_pt.bc'
source_filename = "../drivers/gpu/drm/ttm/ttm_sys_manager.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ttm_resource_manager_func = type { ptr, ptr, ptr }
%struct.ttm_device = type { %struct.list_head, ptr, %struct.ttm_resource_manager, [8 x ptr], ptr, %struct.ttm_pool, %struct.spinlock, %struct.list_head, %struct.list_head, ptr, %struct.delayed_work }
%struct.ttm_resource_manager = type { i8, i8, i64, ptr, %struct.spinlock, [4 x %struct.list_head], ptr }
%struct.ttm_pool = type { ptr, i8, i8, [3 x %struct.anon.59] }
%struct.anon.59 = type { [12 x %struct.ttm_pool_type] }
%struct.ttm_pool_type = type { ptr, i32, i32, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.atomic_t = type { i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }

@ttm_sys_manager_func = internal constant %struct.ttm_resource_manager_func { ptr @ttm_sys_man_alloc, ptr @ttm_sys_man_free, ptr null }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str = private unnamed_addr constant [31 x i8] c"include/drm/ttm/ttm_resource.h\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ttm_sys_man_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ttm_device, ptr %0, i32 0, i32 2
  %3 = getelementptr inbounds %struct.ttm_device, ptr %0, i32 0, i32 2, i32 1
  store i8 1, ptr %3, align 1
  %4 = getelementptr inbounds %struct.ttm_device, ptr %0, i32 0, i32 2, i32 3
  store ptr @ttm_sys_manager_func, ptr %4, align 8
  tail call void @ttm_resource_manager_init(ptr noundef %2, i32 noundef 0) #3
  %5 = getelementptr inbounds %struct.ttm_device, ptr %0, i32 0, i32 3
  store ptr %2, ptr %5, align 4
  %6 = getelementptr %struct.ttm_device, ptr %0, i32 0, i32 2, i32 5
  %7 = load volatile ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %6
  br i1 %8, label %10, label %9, !prof !8

9:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 229, i32 noundef 9, ptr noundef null) #3
  br label %10

10:                                               ; preds = %9, %1
  %11 = getelementptr %struct.ttm_device, ptr %0, i32 0, i32 2, i32 5, i32 1
  %12 = load volatile ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, %11
  br i1 %13, label %15, label %14, !prof !8

14:                                               ; preds = %10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 229, i32 noundef 9, ptr noundef null) #3
  br label %15

15:                                               ; preds = %14, %10
  %16 = getelementptr %struct.ttm_device, ptr %0, i32 0, i32 2, i32 5, i32 2
  %17 = load volatile ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, %16
  br i1 %18, label %20, label %19, !prof !8

19:                                               ; preds = %15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 229, i32 noundef 9, ptr noundef null) #3
  br label %20

20:                                               ; preds = %19, %15
  %21 = getelementptr %struct.ttm_device, ptr %0, i32 0, i32 2, i32 5, i32 3
  %22 = load volatile ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, %21
  br i1 %23, label %25, label %24, !prof !8

24:                                               ; preds = %20
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 229, i32 noundef 9, ptr noundef null) #3
  br label %25

25:                                               ; preds = %24, %20
  store i8 1, ptr %2, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ttm_resource_manager_init(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ttm_sys_man_alloc(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 32) #4
  store ptr %6, ptr %3, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %4
  tail call void @ttm_resource_init(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %6) #3
  br label %9

9:                                                ; preds = %8, %4
  %10 = phi i32 [ 0, %8 ], [ -12, %4 ]
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ttm_sys_man_free(ptr nocapture noundef readnone %0, ptr noundef %1) #0 {
  tail call void @kfree(ptr noundef %1) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ttm_resource_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind allocsize(2) }

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
!8 = !{!"branch_weights", i32 2000, i32 1}
