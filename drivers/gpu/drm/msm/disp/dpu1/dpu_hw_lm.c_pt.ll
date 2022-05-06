; ModuleID = '/llk/IR/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_lm.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_lm.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.dpu_hw_mixer = type { %struct.dpu_hw_blk, %struct.dpu_hw_blk_reg_map, i32, ptr, ptr, ptr, %struct.dpu_hw_lm_ops, %struct.dpu_hw_mixer_cfg }
%struct.dpu_hw_blk = type {}
%struct.dpu_hw_blk_reg_map = type { ptr, i32, i32, i32, i32, i32 }
%struct.dpu_hw_lm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dpu_hw_mixer_cfg = type { i32, i32, i8, i32 }
%struct.dpu_mdss_cfg = type { i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, %struct.dpu_reg_dma_cfg, i32, i32, ptr, %struct.dpu_perf_cfg, ptr, ptr, ptr, i32 }
%struct.dpu_reg_dma_cfg = type { [16 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dpu_perf_cfg = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], [3 x i32], [3 x %struct.dpu_qos_lut_tbl], [2 x %struct.dpu_perf_cdp_cfg] }
%struct.dpu_qos_lut_tbl = type { i32, ptr }
%struct.dpu_perf_cdp_cfg = type { i8, i8 }
%struct.dpu_lm_cfg = type { [16 x i8], i32, i32, i32, i32, ptr, i32, i32, i32 }
%struct.dpu_lm_sub_blks = type { i32, i32, [12 x i32], %struct.dpu_pp_blk }
%struct.dpu_pp_blk = type { [16 x i8], i32, i32, i32, i32 }
%struct.dpu_mdss_color = type { i32, i32, i32, i32 }

@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str = private unnamed_addr constant [12 x i8] c"LM_OUT_SIZE\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"LM_OP_MODE\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"drivers/gpu/drm/msm/disp/dpu1/dpu_hw_lm.c\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"LM_BLEND0_CONST_ALPHA + stage_off\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"LM_BLEND0_OP + stage_off\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"LM_BLEND0_FG_ALPHA + stage_off\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"LM_BLEND0_BG_ALPHA + stage_off\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"LM_BORDER_COLOR_0\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"LM_BORDER_COLOR_1\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"LM_MISR_CTRL\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @dpu_hw_lm_init(i32 noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 80) #3
  %6 = icmp eq ptr %5, null
  br i1 %6, label %49, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.dpu_hw_mixer, ptr %5, i32 0, i32 1
  %9 = getelementptr inbounds %struct.dpu_mdss_cfg, ptr %2, i32 0, i32 8
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %37, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.dpu_mdss_cfg, ptr %2, i32 0, i32 9
  %14 = load ptr, ptr %13, align 4
  br label %15

15:                                               ; preds = %20, %12
  %16 = phi i32 [ 0, %12 ], [ %21, %20 ]
  %17 = getelementptr %struct.dpu_lm_cfg, ptr %14, i32 %16, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, %0
  br i1 %19, label %23, label %20

20:                                               ; preds = %15
  %21 = add nuw i32 %16, 1
  %22 = icmp eq i32 %21, %10
  br i1 %22, label %37, label %15

23:                                               ; preds = %15
  store ptr %1, ptr %8, align 8
  %24 = getelementptr %struct.dpu_lm_cfg, ptr %14, i32 %16, i32 2
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.dpu_hw_mixer, ptr %5, i32 0, i32 1, i32 1
  store i32 %25, ptr %26, align 4
  %27 = getelementptr %struct.dpu_lm_cfg, ptr %14, i32 %16, i32 3
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr inbounds %struct.dpu_hw_mixer, ptr %5, i32 0, i32 1, i32 2
  store i32 %28, ptr %29, align 8
  %30 = load i32, ptr %2, align 4
  %31 = getelementptr inbounds %struct.dpu_hw_mixer, ptr %5, i32 0, i32 1, i32 4
  store i32 %30, ptr %31, align 8
  %32 = getelementptr inbounds %struct.dpu_hw_mixer, ptr %5, i32 0, i32 1, i32 5
  store i32 4, ptr %32, align 4
  %33 = getelementptr %struct.dpu_lm_cfg, ptr %14, i32 %16
  %34 = icmp eq ptr %33, null
  %35 = icmp ugt ptr %33, inttoptr (i32 -4096 to ptr)
  %36 = or i1 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %23, %20, %7
  tail call void @kfree(ptr noundef nonnull %5) #4
  br label %49

38:                                               ; preds = %23
  %39 = getelementptr inbounds %struct.dpu_hw_mixer, ptr %5, i32 0, i32 2
  store i32 %0, ptr %39, align 8
  %40 = getelementptr inbounds %struct.dpu_hw_mixer, ptr %5, i32 0, i32 3
  store ptr %33, ptr %40, align 4
  %41 = getelementptr inbounds %struct.dpu_hw_mixer, ptr %5, i32 0, i32 6
  store ptr @dpu_hw_lm_setup_out, ptr %41, align 8
  %42 = icmp ugt i32 %30, 1073741823
  %43 = select i1 %42, ptr @dpu_hw_lm_setup_blend_config_sdm845, ptr @dpu_hw_lm_setup_blend_config
  %44 = getelementptr inbounds %struct.dpu_hw_mixer, ptr %5, i32 0, i32 6, i32 1
  store ptr %43, ptr %44, align 4
  %45 = getelementptr inbounds %struct.dpu_hw_mixer, ptr %5, i32 0, i32 6, i32 2
  store ptr @dpu_hw_lm_setup_color3, ptr %45, align 8
  %46 = getelementptr inbounds %struct.dpu_hw_mixer, ptr %5, i32 0, i32 6, i32 3
  store ptr @dpu_hw_lm_setup_border_color, ptr %46, align 4
  %47 = getelementptr inbounds %struct.dpu_hw_mixer, ptr %5, i32 0, i32 6, i32 4
  store ptr @dpu_hw_lm_setup_misr, ptr %47, align 8
  %48 = getelementptr inbounds %struct.dpu_hw_mixer, ptr %5, i32 0, i32 6, i32 5
  store ptr @dpu_hw_lm_collect_misr, ptr %48, align 4
  br label %49

49:                                               ; preds = %38, %37, %3
  %50 = phi ptr [ inttoptr (i32 -22 to ptr), %37 ], [ %5, %38 ], [ inttoptr (i32 -12 to ptr), %3 ]
  ret ptr %50
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dpu_hw_lm_destroy(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @kfree(ptr noundef %0) #4
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dpu_hw_lm_setup_out(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.dpu_hw_mixer, ptr %0, i32 0, i32 1
  %4 = tail call i32 @dpu_reg_read(ptr noundef %3, i32 noundef 0) #4
  %5 = getelementptr inbounds %struct.dpu_hw_mixer_cfg, ptr %1, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = shl i32 %6, 16
  %8 = load i32, ptr %1, align 4
  %9 = or i32 %7, %8
  tail call void @dpu_reg_write(ptr noundef %3, i32 noundef 4, i32 noundef %9, ptr noundef nonnull @.str) #4
  %10 = getelementptr inbounds %struct.dpu_hw_mixer_cfg, ptr %1, i32 0, i32 2
  %11 = load i8, ptr %10, align 4, !range !8
  %12 = icmp eq i8 %11, 0
  %13 = and i32 %4, 2147483647
  %14 = select i1 %12, i32 0, i32 -2147483648
  %15 = or i32 %14, %13
  tail call void @dpu_reg_write(ptr noundef %3, i32 noundef 0, i32 noundef %15, ptr noundef nonnull @.str.1) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dpu_hw_lm_setup_blend_config_sdm845(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = getelementptr inbounds %struct.dpu_hw_mixer, ptr %0, i32 0, i32 1
  %7 = icmp eq i32 %1, 0
  br i1 %7, label %28, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.dpu_hw_mixer, ptr %0, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.dpu_lm_cfg, ptr %10, i32 0, i32 5
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.dpu_lm_sub_blks, ptr %12, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = icmp ult i32 %14, %1
  br i1 %15, label %21, label %16

16:                                               ; preds = %8
  %17 = add i32 %1, -1
  %18 = getelementptr %struct.dpu_lm_sub_blks, ptr %12, i32 0, i32 2, i32 %17
  %19 = load i32, ptr %18, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %22, !prof !9

21:                                               ; preds = %16, %8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 162, i32 noundef 9, ptr noundef null) #4
  br label %28

22:                                               ; preds = %16
  %23 = and i32 %3, 255
  %24 = shl i32 %2, 16
  %25 = and i32 %24, 16711680
  %26 = or i32 %23, %25
  %27 = add nuw i32 %19, 4
  tail call void @dpu_reg_write(ptr noundef %6, i32 noundef %27, i32 noundef %26, ptr noundef nonnull @.str.3) #4
  tail call void @dpu_reg_write(ptr noundef %6, i32 noundef %19, i32 noundef %4, ptr noundef nonnull @.str.4) #4
  br label %28

28:                                               ; preds = %22, %21, %5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dpu_hw_lm_setup_blend_config(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = getelementptr inbounds %struct.dpu_hw_mixer, ptr %0, i32 0, i32 1
  %7 = icmp eq i32 %1, 0
  br i1 %7, label %25, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.dpu_hw_mixer, ptr %0, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.dpu_lm_cfg, ptr %10, i32 0, i32 5
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.dpu_lm_sub_blks, ptr %12, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = icmp ult i32 %14, %1
  br i1 %15, label %21, label %16

16:                                               ; preds = %8
  %17 = add i32 %1, -1
  %18 = getelementptr %struct.dpu_lm_sub_blks, ptr %12, i32 0, i32 2, i32 %17
  %19 = load i32, ptr %18, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %22, !prof !9

21:                                               ; preds = %16, %8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 180, i32 noundef 9, ptr noundef null) #4
  br label %25

22:                                               ; preds = %16
  %23 = add nuw i32 %19, 4
  tail call void @dpu_reg_write(ptr noundef %6, i32 noundef %23, i32 noundef %2, ptr noundef nonnull @.str.5) #4
  %24 = add nuw i32 %19, 8
  tail call void @dpu_reg_write(ptr noundef %6, i32 noundef %24, i32 noundef %3, ptr noundef nonnull @.str.6) #4
  tail call void @dpu_reg_write(ptr noundef %6, i32 noundef %19, i32 noundef %4, ptr noundef nonnull @.str.4) #4
  br label %25

25:                                               ; preds = %22, %21, %5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dpu_hw_lm_setup_color3(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.dpu_hw_mixer, ptr %0, i32 0, i32 1
  %4 = tail call i32 @dpu_reg_read(ptr noundef %3, i32 noundef 0) #4
  %5 = and i32 %4, -1073741824
  %6 = or i32 %5, %1
  tail call void @dpu_reg_write(ptr noundef %3, i32 noundef 0, i32 noundef %6, ptr noundef nonnull @.str.1) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dpu_hw_lm_setup_border_color(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) #0 {
  %4 = icmp eq i8 %2, 0
  br i1 %4, label %22, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.dpu_hw_mixer, ptr %0, i32 0, i32 1
  %7 = load i32, ptr %1, align 4
  %8 = and i32 %7, 4095
  %9 = getelementptr inbounds %struct.dpu_mdss_color, ptr %1, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = shl i32 %10, 16
  %12 = and i32 %11, 268369920
  %13 = or i32 %12, %8
  tail call void @dpu_reg_write(ptr noundef %6, i32 noundef 8, i32 noundef %13, ptr noundef nonnull @.str.7) #4
  %14 = getelementptr inbounds %struct.dpu_mdss_color, ptr %1, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, 4095
  %17 = getelementptr inbounds %struct.dpu_mdss_color, ptr %1, i32 0, i32 3
  %18 = load i32, ptr %17, align 4
  %19 = shl i32 %18, 16
  %20 = and i32 %19, 268369920
  %21 = or i32 %20, %16
  tail call void @dpu_reg_write(ptr noundef %6, i32 noundef 16, i32 noundef %21, ptr noundef nonnull @.str.8) #4
  br label %22

22:                                               ; preds = %5, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dpu_hw_lm_setup_misr(ptr noundef %0, i1 noundef zeroext %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.dpu_hw_mixer, ptr %0, i32 0, i32 1
  tail call void @dpu_reg_write(ptr noundef %4, i32 noundef 784, i32 noundef 1024, ptr noundef nonnull @.str.9) #4
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !10
  tail call void @arm_heavy_mb() #4
  %5 = and i32 %2, 255
  %6 = or i32 %5, -2147483392
  %7 = select i1 %1, i32 %6, i32 0
  tail call void @dpu_reg_write(ptr noundef %4, i32 noundef 784, i32 noundef %7, ptr noundef nonnull @.str.9) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dpu_hw_lm_collect_misr(ptr noundef %0, ptr noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.dpu_hw_mixer, ptr %0, i32 0, i32 1
  %4 = icmp eq ptr %1, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %2
  %6 = tail call i32 @dpu_reg_read(ptr noundef %3, i32 noundef 784) #4
  %7 = and i32 %6, 768
  %8 = icmp eq i32 %7, 768
  br i1 %8, label %9, label %11

9:                                                ; preds = %5
  %10 = tail call i32 @dpu_reg_read(ptr noundef %3, i32 noundef 788) #4
  store i32 %10, ptr %1, align 4
  br label %11

11:                                               ; preds = %9, %5, %2
  %12 = phi i32 [ 0, %9 ], [ -22, %2 ], [ -22, %5 ]
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpu_reg_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dpu_reg_write(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

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
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 2155723293}
