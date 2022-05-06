; ModuleID = '/llk/IR/drivers/gpu/drm/drm_dma.c_pt.bc'
source_filename = "../drivers/gpu/drm/drm_dma.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.61, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.66, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.61 = type { %struct.list_head, ptr, %struct.spinlock }
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
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
%struct.anon.66 = type { i32, ptr }
%struct.drm_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.drm_buf_entry = type { i32, i32, ptr, i32, i32, ptr, i32, i32 }
%struct.drm_dma_handle = type { i32, ptr, i32 }
%struct.drm_buf = type { i32, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, ptr }
%struct.drm_device_dma = type { [23 x %struct.drm_buf_entry], i32, ptr, i32, i32, ptr, i32, i32 }

@.str = private unnamed_addr constant [42 x i8] c"order %d: buf_count = %d, seg_count = %d\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_legacy_dma_setup(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.drm_driver, ptr %3, i32 0, i32 24
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 10
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, %5
  %9 = and i32 %8, 603979776
  %10 = icmp eq i32 %9, 603979776
  br i1 %10, label %11, label %19

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 49
  store i32 0, ptr %12, align 4
  %13 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 50
  store volatile i32 0, ptr %13, align 4
  %14 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %15 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3520, i32 noundef 764) #6
  %16 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 45
  store ptr %15, ptr %16, align 4
  %17 = icmp eq ptr %15, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(736) %15, i8 0, i64 736, i1 false)
  br label %19

19:                                               ; preds = %18, %11, %1
  %20 = phi i32 [ 0, %1 ], [ -12, %11 ], [ 0, %18 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_legacy_dma_takedown(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 45
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.drm_driver, ptr %5, i32 0, i32 24
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 10
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, %7
  %11 = and i32 %10, 536870912
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %82, label %13

13:                                               ; preds = %1
  %14 = and i32 %10, 67108864
  %15 = icmp eq i32 %14, 0
  %16 = icmp eq ptr %3, null
  %17 = select i1 %15, i1 true, i1 %16
  br i1 %17, label %82, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 2
  br label %20

20:                                               ; preds = %73, %18
  %21 = phi i32 [ 0, %18 ], [ %74, %73 ]
  %22 = getelementptr [23 x %struct.drm_buf_entry], ptr %3, i32 0, i32 %21, i32 3
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %54, label %25

25:                                               ; preds = %20
  %26 = getelementptr [23 x %struct.drm_buf_entry], ptr %3, i32 0, i32 %21, i32 1
  %27 = load i32, ptr %26, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str, i32 noundef %21, i32 noundef %27, i32 noundef %23) #7
  %28 = load i32, ptr %22, align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %51

30:                                               ; preds = %25
  %31 = getelementptr [23 x %struct.drm_buf_entry], ptr %3, i32 0, i32 %21, i32 5
  br label %32

32:                                               ; preds = %47, %30
  %33 = phi i32 [ %28, %30 ], [ %48, %47 ]
  %34 = phi i32 [ 0, %30 ], [ %49, %47 ]
  %35 = load ptr, ptr %31, align 4
  %36 = getelementptr ptr, ptr %35, i32 %34
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %47, label %39

39:                                               ; preds = %32
  %40 = load ptr, ptr %19, align 4
  %41 = getelementptr inbounds %struct.drm_dma_handle, ptr %37, i32 0, i32 2
  %42 = load i32, ptr %41, align 4
  %43 = getelementptr inbounds %struct.drm_dma_handle, ptr %37, i32 0, i32 1
  %44 = load ptr, ptr %43, align 4
  %45 = load i32, ptr %37, align 4
  tail call void @dma_free_attrs(ptr noundef %40, i32 noundef %42, ptr noundef %44, i32 noundef %45, i32 noundef 0) #7
  tail call void @kfree(ptr noundef nonnull %37) #7
  %46 = load i32, ptr %22, align 4
  br label %47

47:                                               ; preds = %39, %32
  %48 = phi i32 [ %33, %32 ], [ %46, %39 ]
  %49 = add nuw nsw i32 %34, 1
  %50 = icmp slt i32 %49, %48
  br i1 %50, label %32, label %51

51:                                               ; preds = %47, %25
  %52 = getelementptr [23 x %struct.drm_buf_entry], ptr %3, i32 0, i32 %21, i32 5
  %53 = load ptr, ptr %52, align 4
  tail call void @kfree(ptr noundef %53) #7
  br label %54

54:                                               ; preds = %51, %20
  %55 = getelementptr [23 x %struct.drm_buf_entry], ptr %3, i32 0, i32 %21, i32 1
  %56 = load i32, ptr %55, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %73, label %58

58:                                               ; preds = %54
  %59 = icmp sgt i32 %56, 0
  br i1 %59, label %60, label %70

60:                                               ; preds = %58
  %61 = getelementptr [23 x %struct.drm_buf_entry], ptr %3, i32 0, i32 %21, i32 2
  br label %62

62:                                               ; preds = %62, %60
  %63 = phi i32 [ 0, %60 ], [ %67, %62 ]
  %64 = load ptr, ptr %61, align 4
  %65 = getelementptr %struct.drm_buf, ptr %64, i32 %63, i32 15
  %66 = load ptr, ptr %65, align 4
  tail call void @kfree(ptr noundef %66) #7
  %67 = add nuw nsw i32 %63, 1
  %68 = load i32, ptr %55, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %62, label %70

70:                                               ; preds = %62, %58
  %71 = getelementptr [23 x %struct.drm_buf_entry], ptr %3, i32 0, i32 %21, i32 2
  %72 = load ptr, ptr %71, align 4
  tail call void @kfree(ptr noundef %72) #7
  br label %73

73:                                               ; preds = %70, %54
  %74 = add nuw nsw i32 %21, 1
  %75 = icmp eq i32 %74, 23
  br i1 %75, label %76, label %20

76:                                               ; preds = %73
  %77 = getelementptr inbounds %struct.drm_device_dma, ptr %3, i32 0, i32 2
  %78 = load ptr, ptr %77, align 4
  tail call void @kfree(ptr noundef %78) #7
  %79 = getelementptr inbounds %struct.drm_device_dma, ptr %3, i32 0, i32 5
  %80 = load ptr, ptr %79, align 4
  tail call void @kfree(ptr noundef %80) #7
  %81 = load ptr, ptr %2, align 4
  tail call void @kfree(ptr noundef %81) #7
  store ptr null, ptr %2, align 4
  br label %82

82:                                               ; preds = %76, %13, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_legacy_free_buffer(ptr nocapture readnone %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %9, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.drm_buf, ptr %1, i32 0, i32 8
  store volatile i32 0, ptr %5, align 4
  %6 = getelementptr inbounds %struct.drm_buf, ptr %1, i32 0, i32 9
  store volatile i32 0, ptr %6, align 4
  %7 = getelementptr inbounds %struct.drm_buf, ptr %1, i32 0, i32 10
  store ptr null, ptr %7, align 4
  %8 = getelementptr inbounds %struct.drm_buf, ptr %1, i32 0, i32 3
  store i32 0, ptr %8, align 4
  br label %9

9:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_legacy_reclaim_buffers(ptr nocapture noundef readonly %0, ptr noundef readnone %1) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 45
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %34, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.drm_device_dma, ptr %4, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %34

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.drm_device_dma, ptr %4, i32 0, i32 2
  br label %12

12:                                               ; preds = %30, %10
  %13 = phi i32 [ 0, %10 ], [ %31, %30 ]
  %14 = load ptr, ptr %11, align 4
  %15 = getelementptr ptr, ptr %14, i32 %13
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.drm_buf, ptr %16, i32 0, i32 10
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, %1
  br i1 %19, label %20, label %30

20:                                               ; preds = %12
  %21 = getelementptr inbounds %struct.drm_buf, ptr %16, i32 0, i32 13
  %22 = load i32, ptr %21, align 4
  switch i32 %22, label %30 [
    i32 0, label %23
    i32 2, label %29
  ]

23:                                               ; preds = %20
  %24 = icmp eq ptr %16, null
  br i1 %24, label %30, label %25

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.drm_buf, ptr %16, i32 0, i32 8
  store volatile i32 0, ptr %26, align 4
  %27 = getelementptr inbounds %struct.drm_buf, ptr %16, i32 0, i32 9
  store volatile i32 0, ptr %27, align 4
  store ptr null, ptr %17, align 4
  %28 = getelementptr inbounds %struct.drm_buf, ptr %16, i32 0, i32 3
  store i32 0, ptr %28, align 4
  br label %30

29:                                               ; preds = %20
  store i32 5, ptr %21, align 4
  br label %30

30:                                               ; preds = %29, %25, %23, %20, %12
  %31 = add nuw nsw i32 %13, 1
  %32 = load i32, ptr %7, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %12, label %34

34:                                               ; preds = %30, %6, %2
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nounwind allocsize(2) }
attributes #7 = { nounwind }

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
