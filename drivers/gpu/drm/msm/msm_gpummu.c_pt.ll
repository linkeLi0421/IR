; ModuleID = '/llk/IR/drivers/gpu/drm/msm/msm_gpummu.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/msm_gpummu.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.msm_mmu_funcs = type { ptr, ptr, ptr, ptr, ptr }
%struct.msm_gpummu = type { %struct.msm_mmu, ptr, i32, ptr }
%struct.msm_mmu = type { ptr, ptr, ptr, ptr, i32 }
%struct.sg_dma_page_iter = type { %struct.sg_page_iter }
%struct.sg_page_iter = type { ptr, i32, i32, i32 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.msm_gpu = type { ptr, ptr, ptr, ptr, %struct.adreno_smmu_priv, %struct.spinlock, i8, %struct.anon.95, i32, i32, [5 x i32], ptr, i32, [4 x ptr], i32, i32, %struct.list_head, %struct.mutex, i32, %struct.mutex, i8, i32, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, %struct.timer_list, %struct.msm_gpu_fault_info, %struct.kthread_work, %struct.kthread_work, %struct.wait_queue_head, %struct.kthread_work, ptr, ptr, %struct.msm_gpu_devfreq, i32, ptr, i8, i8, ptr }
%struct.adreno_smmu_priv = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.anon.95 = type { i8, i64 }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.msm_gpu_fault_info = type { i64, i32, i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.msm_gpu_devfreq = type { ptr, %struct.dev_pm_qos_request, %struct.dev_pm_qos_request, i64, i64, i64, %struct.msm_hrtimer_work, %struct.msm_hrtimer_work }
%struct.dev_pm_qos_request = type { i32, %union.anon.68, ptr }
%union.anon.68 = type { %struct.freq_qos_request }
%struct.freq_qos_request = type { i32, %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.msm_hrtimer_work = type { %struct.hrtimer, %struct.kthread_work, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }

@funcs = internal constant %struct.msm_mmu_funcs { ptr @msm_gpummu_detach, ptr @msm_gpummu_map, ptr @msm_gpummu_unmap, ptr @msm_gpummu_destroy, ptr @msm_gpummu_resume_translation }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @msm_gpummu_new(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 32) #8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %16, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.msm_gpummu, ptr %4, i32 0, i32 2
  %8 = tail call ptr @dma_alloc_attrs(ptr noundef %0, i32 noundef 262112, ptr noundef %7, i32 noundef 3520, i32 noundef 64) #9
  %9 = getelementptr inbounds %struct.msm_gpummu, ptr %4, i32 0, i32 3
  store ptr %8, ptr %9, align 4
  %10 = icmp eq ptr %8, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %6
  tail call void @kfree(ptr noundef nonnull %4) #9
  br label %16

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.msm_gpummu, ptr %4, i32 0, i32 1
  store ptr %1, ptr %13, align 4
  %14 = getelementptr inbounds %struct.msm_mmu, ptr %4, i32 0, i32 1
  store ptr %0, ptr %14, align 4
  store ptr @funcs, ptr %4, align 8
  %15 = getelementptr inbounds %struct.msm_mmu, ptr %4, i32 0, i32 4
  store i32 0, ptr %15, align 8
  br label %16

16:                                               ; preds = %12, %11, %2
  %17 = phi ptr [ %4, %12 ], [ inttoptr (i32 -12 to ptr), %11 ], [ inttoptr (i32 -12 to ptr), %2 ]
  ret ptr %17
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @msm_gpummu_params(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #3 {
  %4 = getelementptr inbounds %struct.msm_gpummu, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  store i32 %5, ptr %1, align 4
  %6 = add i32 %5, 262080
  store i32 %6, ptr %2, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @msm_gpummu_detach(ptr nocapture noundef %0) #5 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @msm_gpummu_map(ptr nocapture noundef readonly %0, i64 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca %struct.sg_dma_page_iter, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %6, i8 0, i32 16, i1 false), !annotation !8
  %7 = trunc i32 %4 to i2
  %8 = tail call i2 @llvm.bitreverse.i2(i2 %7)
  %9 = zext i2 %8 to i32
  %10 = load ptr, ptr %2, align 4
  %11 = getelementptr inbounds %struct.sg_table, ptr %2, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  call void @__sg_page_iter_start(ptr noundef nonnull %6, ptr noundef %10, i32 noundef %12, i32 noundef 0) #9
  %13 = call zeroext i1 @__sg_page_iter_dma_next(ptr noundef nonnull %6) #9
  br i1 %13, label %14, label %33

14:                                               ; preds = %5
  %15 = add i64 %1, 17592169267200
  %16 = lshr i64 %15, 12
  %17 = trunc i64 %16 to i32
  %18 = getelementptr inbounds %struct.sg_page_iter, ptr %6, i32 0, i32 1
  %19 = getelementptr inbounds %struct.msm_gpummu, ptr %0, i32 0, i32 3
  br label %20

20:                                               ; preds = %20, %14
  %21 = phi i32 [ %17, %14 ], [ %30, %20 ]
  %22 = load ptr, ptr %6, align 4
  %23 = getelementptr inbounds %struct.scatterlist, ptr %22, i32 0, i32 3
  %24 = load i32, ptr %23, align 4
  %25 = load i32, ptr %18, align 4
  %26 = shl i32 %25, 12
  %27 = add i32 %26, %24
  %28 = or i32 %27, %9
  %29 = load ptr, ptr %19, align 4
  %30 = add i32 %21, 1
  %31 = getelementptr i32, ptr %29, i32 %21
  store i32 %28, ptr %31, align 4
  %32 = call zeroext i1 @__sg_page_iter_dma_next(ptr noundef nonnull %6) #9
  br i1 %32, label %20, label %33

33:                                               ; preds = %20, %5
  %34 = getelementptr inbounds %struct.msm_gpummu, ptr %0, i32 0, i32 1
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.msm_gpu, ptr %35, i32 0, i32 22
  %37 = load ptr, ptr %36, align 8
  %38 = getelementptr i8, ptr %37, i32 276
  call void @msm_writel(i32 noundef 3, ptr noundef %38) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @msm_gpummu_unmap(ptr nocapture noundef readonly %0, i64 noundef %1, i32 noundef %2) #0 {
  %4 = icmp ult i32 %2, 4096
  br i1 %4, label %19, label %5

5:                                                ; preds = %3
  %6 = lshr i32 %2, 12
  %7 = add i64 %1, 17592169267200
  %8 = lshr i64 %7, 12
  %9 = trunc i64 %8 to i32
  %10 = getelementptr inbounds %struct.msm_gpummu, ptr %0, i32 0, i32 3
  br label %11

11:                                               ; preds = %11, %5
  %12 = phi i32 [ 0, %5 ], [ %16, %11 ]
  %13 = phi i32 [ %9, %5 ], [ %17, %11 ]
  %14 = load ptr, ptr %10, align 4
  %15 = getelementptr i32, ptr %14, i32 %13
  store i32 0, ptr %15, align 4
  %16 = add nuw nsw i32 %12, 1
  %17 = add i32 %13, 1
  %18 = icmp eq i32 %16, %6
  br i1 %18, label %19, label %11

19:                                               ; preds = %11, %3
  %20 = getelementptr inbounds %struct.msm_gpummu, ptr %0, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.msm_gpu, ptr %21, i32 0, i32 22
  %23 = load ptr, ptr %22, align 8
  %24 = getelementptr i8, ptr %23, i32 276
  tail call void @msm_writel(i32 noundef 3, ptr noundef %24) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @msm_gpummu_destroy(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.msm_mmu, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.msm_gpummu, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.msm_gpummu, ptr %0, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  tail call void @dma_free_attrs(ptr noundef %3, i32 noundef 262080, ptr noundef %5, i32 noundef %7, i32 noundef 64) #9
  tail call void @kfree(ptr noundef %0) #9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @msm_gpummu_resume_translation(ptr nocapture noundef %0) #5 {
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__sg_page_iter_start(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__sg_page_iter_dma_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_writel(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i2 @llvm.bitreverse.i2(i2) #7

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { nounwind }

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
!8 = !{!"auto-init"}
