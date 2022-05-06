; ModuleID = '/llk/IR/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_merge3d.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_merge3d.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.dpu_hw_merge_3d = type { %struct.dpu_hw_blk, %struct.dpu_hw_blk_reg_map, i32, ptr, %struct.dpu_hw_merge_3d_ops }
%struct.dpu_hw_blk = type {}
%struct.dpu_hw_blk_reg_map = type { ptr, i32, i32, i32, i32, i32 }
%struct.dpu_hw_merge_3d_ops = type { ptr }
%struct.dpu_mdss_cfg = type { i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, %struct.dpu_reg_dma_cfg, i32, i32, ptr, %struct.dpu_perf_cfg, ptr, ptr, ptr, i32 }
%struct.dpu_reg_dma_cfg = type { [16 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dpu_perf_cfg = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], [3 x i32], [3 x %struct.dpu_qos_lut_tbl], [2 x %struct.dpu_perf_cdp_cfg] }
%struct.dpu_qos_lut_tbl = type { i32, ptr }
%struct.dpu_perf_cdp_cfg = type { i8, i8 }
%struct.dpu_merge_3d_cfg = type { [16 x i8], i32, i32, i32, i32, ptr }

@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str = private unnamed_addr constant [14 x i8] c"MERGE_3D_MODE\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"MERGE_3D_MUX\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @dpu_hw_merge_3d_init(i32 noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 36) #3
  %6 = icmp eq ptr %5, null
  br i1 %6, label %42, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.dpu_hw_merge_3d, ptr %5, i32 0, i32 1
  %9 = getelementptr inbounds %struct.dpu_mdss_cfg, ptr %2, i32 0, i32 12
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %37, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.dpu_mdss_cfg, ptr %2, i32 0, i32 13
  %14 = load ptr, ptr %13, align 4
  br label %15

15:                                               ; preds = %20, %12
  %16 = phi i32 [ 0, %12 ], [ %21, %20 ]
  %17 = getelementptr %struct.dpu_merge_3d_cfg, ptr %14, i32 %16, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, %0
  br i1 %19, label %23, label %20

20:                                               ; preds = %15
  %21 = add nuw i32 %16, 1
  %22 = icmp eq i32 %21, %10
  br i1 %22, label %37, label %15

23:                                               ; preds = %15
  store ptr %1, ptr %8, align 8
  %24 = getelementptr %struct.dpu_merge_3d_cfg, ptr %14, i32 %16, i32 2
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.dpu_hw_merge_3d, ptr %5, i32 0, i32 1, i32 1
  store i32 %25, ptr %26, align 4
  %27 = getelementptr %struct.dpu_merge_3d_cfg, ptr %14, i32 %16, i32 3
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr inbounds %struct.dpu_hw_merge_3d, ptr %5, i32 0, i32 1, i32 2
  store i32 %28, ptr %29, align 8
  %30 = load i32, ptr %2, align 4
  %31 = getelementptr inbounds %struct.dpu_hw_merge_3d, ptr %5, i32 0, i32 1, i32 4
  store i32 %30, ptr %31, align 8
  %32 = getelementptr inbounds %struct.dpu_hw_merge_3d, ptr %5, i32 0, i32 1, i32 5
  store i32 16, ptr %32, align 4
  %33 = getelementptr %struct.dpu_merge_3d_cfg, ptr %14, i32 %16
  %34 = icmp eq ptr %33, null
  %35 = icmp ugt ptr %33, inttoptr (i32 -4096 to ptr)
  %36 = or i1 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %23, %20, %7
  tail call void @kfree(ptr noundef nonnull %5) #4
  br label %42

38:                                               ; preds = %23
  %39 = getelementptr inbounds %struct.dpu_hw_merge_3d, ptr %5, i32 0, i32 2
  store i32 %0, ptr %39, align 8
  %40 = getelementptr inbounds %struct.dpu_hw_merge_3d, ptr %5, i32 0, i32 3
  store ptr %33, ptr %40, align 4
  %41 = getelementptr inbounds %struct.dpu_hw_merge_3d, ptr %5, i32 0, i32 4
  store ptr @dpu_hw_merge_3d_setup_3d_mode, ptr %41, align 8
  br label %42

42:                                               ; preds = %38, %37, %3
  %43 = phi ptr [ inttoptr (i32 -22 to ptr), %37 ], [ %5, %38 ], [ inttoptr (i32 -12 to ptr), %3 ]
  ret ptr %43
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dpu_hw_merge_3d_destroy(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @kfree(ptr noundef %0) #4
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dpu_hw_merge_3d_setup_3d_mode(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.dpu_hw_merge_3d, ptr %0, i32 0, i32 1
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  tail call void @dpu_reg_write(ptr noundef %3, i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str) #4
  tail call void @dpu_reg_write(ptr noundef %3, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.1) #4
  br label %9

6:                                                ; preds = %2
  %7 = shl i32 %1, 1
  %8 = add i32 %7, -1
  tail call void @dpu_reg_write(ptr noundef %3, i32 noundef 4, i32 noundef %8, ptr noundef nonnull @.str) #4
  br label %9

9:                                                ; preds = %6, %5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dpu_reg_write(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

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
