; ModuleID = '/llk/IR/drivers/gpu/drm/panfrost/panfrost_gem_shrinker.c_pt.bc'
source_filename = "../drivers/gpu/drm/panfrost/panfrost_gem_shrinker.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.69, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.74, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.69 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
%struct.anon.74 = type { i32, ptr }
%struct.panfrost_device = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], [3 x ptr], i8, %struct.panfrost_features, ptr, %struct.spinlock, i32, i32, i32, %struct.list_head, ptr, [3 x [2 x ptr]], %struct.list_head, ptr, %struct.mutex, %struct.anon.77, %struct.mutex, %struct.list_head, %struct.shrinker, %struct.panfrost_devfreq }
%struct.panfrost_features = type { i16, i16, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32], [16 x i32], i32, i32, [2 x i32], [2 x i32] }
%struct.anon.77 = type { ptr, %struct.work_struct, %struct.atomic_t }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, ptr }
%struct.panfrost_devfreq = type { ptr, ptr, %struct.devfreq_simple_ondemand_data, i8, i64, i64, i64, i32, %struct.spinlock }
%struct.devfreq_simple_ondemand_data = type { i32, i32 }
%struct.shrink_control = type { i32, i32, i32, i32, ptr }

@.str = private unnamed_addr constant [49 x i8] c"drivers/gpu/drm/panfrost/panfrost_gem_shrinker.c\00", align 1
@panfrost_gem_shrinker_scan._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.panfrost_gem_shrinker_scan = private unnamed_addr constant [27 x i8] c"panfrost_gem_shrinker_scan\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"\016Purging %lu bytes\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @panfrost_gem_shrinker_init(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.panfrost_device, ptr %3, i32 0, i32 26
  store ptr @panfrost_gem_shrinker_count, ptr %4, align 4
  %5 = getelementptr inbounds %struct.panfrost_device, ptr %3, i32 0, i32 26, i32 1
  store ptr @panfrost_gem_shrinker_scan, ptr %5, align 4
  %6 = getelementptr inbounds %struct.panfrost_device, ptr %3, i32 0, i32 26, i32 3
  store i32 2, ptr %6, align 4
  %7 = tail call i32 @register_shrinker(ptr noundef %4) #3
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9, !prof !8

9:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 106, i32 noundef 9, ptr noundef null) #3
  br label %10

10:                                               ; preds = %9, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @panfrost_gem_shrinker_count(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 -28
  %4 = tail call i32 @mutex_trylock(ptr noundef %3) #3
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %43, label %6

6:                                                ; preds = %2
  %7 = getelementptr i8, ptr %0, i32 -8
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %7
  br i1 %9, label %41, label %10

10:                                               ; preds = %37, %6
  %11 = phi ptr [ %39, %37 ], [ %8, %6 ]
  %12 = phi i32 [ %38, %37 ], [ 0, %6 ]
  %13 = getelementptr i8, ptr %11, i32 -4
  %14 = load i32, ptr %13, align 4
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %37

16:                                               ; preds = %10
  %17 = getelementptr i8, ptr %11, i32 40
  %18 = load i32, ptr %17, align 8
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %37

20:                                               ; preds = %16
  %21 = getelementptr i8, ptr %11, i32 12
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %37, label %24

24:                                               ; preds = %20
  %25 = getelementptr i8, ptr %11, i32 -88
  %26 = load ptr, ptr %25, align 8
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %37

28:                                               ; preds = %24
  %29 = getelementptr i8, ptr %11, i32 -84
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %37

32:                                               ; preds = %28
  %33 = getelementptr i8, ptr %11, i32 -96
  %34 = load i32, ptr %33, align 8
  %35 = lshr i32 %34, 12
  %36 = add i32 %35, %12
  br label %37

37:                                               ; preds = %32, %28, %24, %20, %16, %10
  %38 = phi i32 [ %36, %32 ], [ %12, %28 ], [ %12, %24 ], [ %12, %20 ], [ %12, %16 ], [ %12, %10 ]
  %39 = load ptr, ptr %11, align 4
  %40 = icmp eq ptr %39, %7
  br i1 %40, label %41, label %10

41:                                               ; preds = %37, %6
  %42 = phi i32 [ 0, %6 ], [ %38, %37 ]
  tail call void @mutex_unlock(ptr noundef %3) #3
  br label %43

43:                                               ; preds = %41, %2
  %44 = phi i32 [ %42, %41 ], [ 0, %2 ]
  ret i32 %44
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @panfrost_gem_shrinker_scan(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 -28
  %4 = tail call i32 @mutex_trylock(ptr noundef %3) #3
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %73, label %6

6:                                                ; preds = %2
  %7 = getelementptr i8, ptr %0, i32 -8
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.shrink_control, ptr %1, i32 0, i32 2
  %10 = icmp eq ptr %8, %7
  br i1 %10, label %11, label %12

11:                                               ; preds = %6
  tail call void @mutex_unlock(ptr noundef %3) #3
  br label %73

12:                                               ; preds = %61, %6
  %13 = phi ptr [ %16, %61 ], [ %8, %6 ]
  %14 = phi i32 [ %62, %61 ], [ 0, %6 ]
  %15 = getelementptr i8, ptr %13, i32 -240
  %16 = load ptr, ptr %13, align 8
  %17 = load i32, ptr %9, align 4
  %18 = icmp ult i32 %14, %17
  br i1 %18, label %19, label %64

19:                                               ; preds = %12
  %20 = getelementptr i8, ptr %13, i32 -4
  %21 = load i32, ptr %20, align 4
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %61

23:                                               ; preds = %19
  %24 = getelementptr i8, ptr %13, i32 40
  %25 = load i32, ptr %24, align 8
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %61

27:                                               ; preds = %23
  %28 = getelementptr i8, ptr %13, i32 12
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %61, label %31

31:                                               ; preds = %27
  %32 = getelementptr i8, ptr %13, i32 -88
  %33 = load ptr, ptr %32, align 8
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %61

35:                                               ; preds = %31
  %36 = getelementptr i8, ptr %13, i32 -84
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %61

39:                                               ; preds = %35
  %40 = getelementptr i8, ptr %13, i32 80
  %41 = load volatile i32, ptr %40, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %61

43:                                               ; preds = %39
  %44 = getelementptr i8, ptr %13, i32 60
  %45 = tail call i32 @mutex_trylock(ptr noundef %44) #3
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %61, label %47

47:                                               ; preds = %43
  %48 = getelementptr i8, ptr %13, i32 -32
  %49 = tail call i32 @mutex_trylock(ptr noundef %48) #3
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  tail call void @mutex_unlock(ptr noundef %44) #3
  br label %61

52:                                               ; preds = %47
  tail call void @panfrost_gem_teardown_mappings_locked(ptr noundef %15) #3
  tail call void @drm_gem_shmem_purge_locked(ptr noundef %15) #3
  tail call void @mutex_unlock(ptr noundef %48) #3
  tail call void @mutex_unlock(ptr noundef %44) #3
  %53 = getelementptr i8, ptr %13, i32 -96
  %54 = load i32, ptr %53, align 8
  %55 = lshr i32 %54, 12
  %56 = add i32 %55, %14
  %57 = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %58 = load ptr, ptr %57, align 4
  %59 = load ptr, ptr %13, align 4
  %60 = getelementptr inbounds %struct.list_head, ptr %59, i32 0, i32 1
  store ptr %58, ptr %60, align 4
  store volatile ptr %59, ptr %58, align 4
  store volatile ptr %13, ptr %13, align 4
  store ptr %13, ptr %57, align 4
  br label %61

61:                                               ; preds = %52, %51, %43, %39, %35, %31, %27, %23, %19
  %62 = phi i32 [ %56, %52 ], [ %14, %51 ], [ %14, %35 ], [ %14, %31 ], [ %14, %27 ], [ %14, %23 ], [ %14, %19 ], [ %14, %39 ], [ %14, %43 ]
  %63 = icmp eq ptr %16, %7
  br i1 %63, label %64, label %12

64:                                               ; preds = %61, %12
  %65 = phi i32 [ %62, %61 ], [ %14, %12 ]
  tail call void @mutex_unlock(ptr noundef %3) #3
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %73, label %67

67:                                               ; preds = %64
  %68 = tail call i32 @___ratelimit(ptr noundef nonnull @panfrost_gem_shrinker_scan._rs, ptr noundef nonnull @__func__.panfrost_gem_shrinker_scan) #3
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %67
  %71 = shl i32 %65, 12
  %72 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %71) #4
  br label %73

73:                                               ; preds = %70, %67, %64, %11, %2
  %74 = phi i32 [ -1, %2 ], [ %65, %67 ], [ %65, %70 ], [ 0, %64 ], [ 0, %11 ]
  ret i32 %74
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_shrinker(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @panfrost_gem_shrinker_cleanup(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.panfrost_device, ptr %3, i32 0, i32 26, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.panfrost_device, ptr %3, i32 0, i32 26
  tail call void @unregister_shrinker(ptr noundef %8) #3
  br label %9

9:                                                ; preds = %7, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_shrinker(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_trylock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @panfrost_gem_teardown_mappings_locked(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_shmem_purge_locked(ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { cold nounwind }

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
