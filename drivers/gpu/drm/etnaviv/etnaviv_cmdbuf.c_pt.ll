; ModuleID = '/llk/IR/drivers/gpu/drm/etnaviv/etnaviv_cmdbuf.c_pt.bc'
source_filename = "../drivers/gpu/drm/etnaviv/etnaviv_cmdbuf.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type {}
%struct.etnaviv_cmdbuf_suballoc = type { ptr, ptr, i32, %struct.mutex, [4 x i32], i32, %struct.wait_queue_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.etnaviv_cmdbuf = type { ptr, i32, ptr, i32, i32 }
%struct.etnaviv_vram_mapping = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, ptr, %struct.drm_mm_node, i32, i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32 }
%struct.rb_node = type { i32, ptr, ptr }

@etnaviv_cmdbuf_suballoc_new.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str = private unnamed_addr constant [16 x i8] c"&suballoc->lock\00", align 1
@etnaviv_cmdbuf_suballoc_new.__key.1 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"&suballoc->free_event\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"Timeout waiting for cmdbuf space\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @etnaviv_cmdbuf_suballoc_new(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 64) #9
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %1
  store ptr %0, ptr %3, align 8
  %6 = getelementptr inbounds %struct.etnaviv_cmdbuf_suballoc, ptr %3, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %6, ptr noundef nonnull @.str, ptr noundef nonnull @etnaviv_cmdbuf_suballoc_new.__key) #10
  %7 = getelementptr inbounds %struct.etnaviv_cmdbuf_suballoc, ptr %3, i32 0, i32 6
  tail call void @__init_waitqueue_head(ptr noundef %7, ptr noundef nonnull @.str.2, ptr noundef nonnull @etnaviv_cmdbuf_suballoc_new.__key.1) #10
  %8 = getelementptr inbounds %struct.etnaviv_cmdbuf_suballoc, ptr %3, i32 0, i32 2
  %9 = tail call ptr @dma_alloc_attrs(ptr noundef %0, i32 noundef 524288, ptr noundef %8, i32 noundef 3264, i32 noundef 4) #10
  %10 = getelementptr inbounds %struct.etnaviv_cmdbuf_suballoc, ptr %3, i32 0, i32 1
  store ptr %9, ptr %10, align 4
  %11 = icmp eq ptr %9, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %5
  tail call void @kfree(ptr noundef nonnull %3) #10
  br label %13

13:                                               ; preds = %12, %5, %1
  %14 = phi ptr [ inttoptr (i32 -12 to ptr), %12 ], [ %3, %5 ], [ inttoptr (i32 -12 to ptr), %1 ]
  ret ptr %14
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @etnaviv_cmdbuf_suballoc_map(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.etnaviv_cmdbuf_suballoc, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = tail call i32 @etnaviv_iommu_get_suballoc_va(ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %6, i32 noundef 524288) #10
  ret i32 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @etnaviv_iommu_get_suballoc_va(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @etnaviv_cmdbuf_suballoc_unmap(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  tail call void @etnaviv_iommu_put_suballoc_va(ptr noundef %0, ptr noundef %1) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @etnaviv_iommu_put_suballoc_va(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @etnaviv_cmdbuf_suballoc_destroy(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.etnaviv_cmdbuf_suballoc, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.etnaviv_cmdbuf_suballoc, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  tail call void @dma_free_attrs(ptr noundef %2, i32 noundef 524288, ptr noundef %4, i32 noundef %6, i32 noundef 4) #10
  tail call void @kfree(ptr noundef %0) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @etnaviv_cmdbuf_init(ptr noundef %0, ptr nocapture noundef writeonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.wait_queue_entry, align 4
  store ptr %0, ptr %1, align 4
  %5 = getelementptr inbounds %struct.etnaviv_cmdbuf, ptr %1, i32 0, i32 3
  store i32 %2, ptr %5, align 4
  %6 = add i32 %2, 4095
  %7 = lshr i32 %6, 12
  %8 = icmp ugt i32 %6, 8191
  %9 = add nsw i32 %7, -1
  %10 = tail call i32 @llvm.ctlz.i32(i32 %9, i1 false) #10, !range !8
  %11 = sub nuw nsw i32 32, %10
  %12 = select i1 %8, i32 %11, i32 0
  %13 = getelementptr inbounds %struct.etnaviv_cmdbuf_suballoc, ptr %0, i32 0, i32 3
  %14 = getelementptr inbounds %struct.etnaviv_cmdbuf_suballoc, ptr %0, i32 0, i32 4
  %15 = getelementptr inbounds %struct.etnaviv_cmdbuf_suballoc, ptr %0, i32 0, i32 5
  %16 = getelementptr inbounds %struct.etnaviv_cmdbuf_suballoc, ptr %0, i32 0, i32 6
  br label %17

17:                                               ; preds = %46, %3
  call void @mutex_lock(ptr noundef %13) #10
  %18 = call i32 @bitmap_find_free_region(ptr noundef %14, i32 noundef 128, i32 noundef %12) #10
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %51

20:                                               ; preds = %17
  store i32 0, ptr %15, align 4
  call void @mutex_unlock(ptr noundef %13) #10
  %21 = load i32, ptr %15, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %46

23:                                               ; preds = %20
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %4, i8 0, i32 20, i1 false), !annotation !9
  call void @init_wait_entry(ptr noundef nonnull %4, i32 noundef 0) #10
  %24 = call i32 @prepare_to_wait_event(ptr noundef %16, ptr noundef nonnull %4, i32 noundef 1) #10
  %25 = load i32, ptr %15, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %42

27:                                               ; preds = %31, %23
  %28 = phi i32 [ %39, %31 ], [ 1000, %23 ]
  %29 = phi i32 [ %33, %31 ], [ %24, %23 ]
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %44

31:                                               ; preds = %27
  %32 = call i32 @schedule_timeout(i32 noundef %28) #10
  %33 = call i32 @prepare_to_wait_event(ptr noundef %16, ptr noundef nonnull %4, i32 noundef 1) #10
  %34 = load i32, ptr %15, align 4
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = icmp ne i32 %32, 0
  %38 = select i1 %36, i1 true, i1 %37
  %39 = select i1 %38, i32 %32, i32 1
  %40 = icmp eq i32 %39, 0
  %41 = select i1 %35, i1 true, i1 %40
  br i1 %41, label %42, label %27

42:                                               ; preds = %31, %23
  %43 = phi i32 [ 1000, %23 ], [ %39, %31 ]
  call void @finish_wait(ptr noundef %16, ptr noundef nonnull %4) #10
  br label %44

44:                                               ; preds = %42, %27
  %45 = phi i32 [ %43, %42 ], [ %29, %27 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #10
  br label %46

46:                                               ; preds = %44, %20
  %47 = phi i32 [ 1000, %20 ], [ %45, %44 ]
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %17

49:                                               ; preds = %46
  %50 = load ptr, ptr %0, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %50, ptr noundef nonnull @.str.3) #11
  br label %58

51:                                               ; preds = %17
  call void @mutex_unlock(ptr noundef %13) #10
  %52 = shl i32 %18, 12
  %53 = getelementptr inbounds %struct.etnaviv_cmdbuf, ptr %1, i32 0, i32 1
  store i32 %52, ptr %53, align 4
  %54 = getelementptr inbounds %struct.etnaviv_cmdbuf_suballoc, ptr %0, i32 0, i32 1
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr i8, ptr %55, i32 %52
  %57 = getelementptr inbounds %struct.etnaviv_cmdbuf, ptr %1, i32 0, i32 2
  store ptr %56, ptr %57, align 4
  br label %58

58:                                               ; preds = %51, %49
  %59 = phi i32 [ -110, %49 ], [ 0, %51 ]
  ret i32 %59
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bitmap_find_free_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @etnaviv_cmdbuf_free(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.etnaviv_cmdbuf, ptr %0, i32 0, i32 3
  %4 = load i32, ptr %3, align 4
  %5 = add i32 %4, 4095
  %6 = lshr i32 %5, 12
  %7 = icmp ugt i32 %5, 8191
  %8 = add nsw i32 %6, -1
  %9 = tail call i32 @llvm.ctlz.i32(i32 %8, i1 false) #10, !range !8
  %10 = sub nuw nsw i32 32, %9
  %11 = select i1 %7, i32 %10, i32 0
  %12 = getelementptr inbounds %struct.etnaviv_cmdbuf_suballoc, ptr %2, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %12) #10
  %13 = getelementptr inbounds %struct.etnaviv_cmdbuf_suballoc, ptr %2, i32 0, i32 4
  %14 = getelementptr inbounds %struct.etnaviv_cmdbuf, ptr %0, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = sdiv i32 %15, 4096
  tail call void @bitmap_release_region(ptr noundef %13, i32 noundef %16, i32 noundef %11) #10
  %17 = getelementptr inbounds %struct.etnaviv_cmdbuf_suballoc, ptr %2, i32 0, i32 5
  store i32 1, ptr %17, align 4
  tail call void @mutex_unlock(ptr noundef %12) #10
  %18 = getelementptr inbounds %struct.etnaviv_cmdbuf_suballoc, ptr %2, i32 0, i32 6
  tail call void @__wake_up(ptr noundef %18, i32 noundef 3, i32 noundef 0, ptr noundef null) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bitmap_release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @etnaviv_cmdbuf_get_va(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.etnaviv_vram_mapping, ptr %1, i32 0, i32 7
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.etnaviv_cmdbuf, ptr %0, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = add i32 %6, %4
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @etnaviv_cmdbuf_get_pa(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.etnaviv_cmdbuf_suballoc, ptr %2, i32 0, i32 2
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.etnaviv_cmdbuf, ptr %0, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = add i32 %6, %4
  ret i32 %7
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { nounwind }
attributes #11 = { cold nounwind }

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
!8 = !{i32 0, i32 33}
!9 = !{!"auto-init"}
