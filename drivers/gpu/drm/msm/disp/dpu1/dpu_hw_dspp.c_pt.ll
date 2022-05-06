; ModuleID = '/llk/IR/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_dspp.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_dspp.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.dpu_hw_dspp = type { %struct.dpu_hw_blk, %struct.dpu_hw_blk_reg_map, i32, ptr, %struct.dpu_hw_dspp_ops }
%struct.dpu_hw_blk = type {}
%struct.dpu_hw_blk_reg_map = type { ptr, i32, i32, i32, i32, i32 }
%struct.dpu_hw_dspp_ops = type { ptr }
%struct.dpu_mdss_cfg = type { i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, %struct.dpu_reg_dma_cfg, i32, i32, ptr, %struct.dpu_perf_cfg, ptr, ptr, ptr, i32 }
%struct.dpu_reg_dma_cfg = type { [16 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dpu_perf_cfg = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], [3 x i32], [3 x %struct.dpu_qos_lut_tbl], [2 x %struct.dpu_perf_cdp_cfg] }
%struct.dpu_qos_lut_tbl = type { i32, ptr }
%struct.dpu_perf_cdp_cfg = type { i8, i8 }
%struct.dpu_dspp_cfg = type { [16 x i8], i32, i32, i32, i32, ptr }
%struct.dpu_dspp_sub_blks = type { %struct.dpu_pp_blk, %struct.dpu_pp_blk }
%struct.dpu_pp_blk = type { [16 x i8], i32, i32, i32, i32 }
%struct.dpu_hw_pcc_coeff = type { i32, i32, i32 }
%struct.dpu_hw_pcc_cfg = type { %struct.dpu_hw_pcc_coeff, %struct.dpu_hw_pcc_coeff, %struct.dpu_hw_pcc_coeff }

@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str = private unnamed_addr constant [17 x i8] c"invalid ctx %pK\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"invalid ctx %pK pcc base 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"disable pcc feature\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"base\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"base + PCC_RED_R_OFF\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"base + PCC_RED_G_OFF\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"base + PCC_RED_B_OFF\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"base + PCC_GREEN_R_OFF\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"base + PCC_GREEN_G_OFF\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"base + PCC_GREEN_B_OFF\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"base + PCC_BLUE_R_OFF\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"base + PCC_BLUE_G_OFF\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"base + PCC_BLUE_B_OFF\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @dpu_hw_dspp_init(i32 noundef %0, ptr noundef %1, ptr noundef readonly %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = icmp ne ptr %1, null
  %6 = icmp ne ptr %2, null
  %7 = and i1 %5, %6
  br i1 %7, label %8, label %56

8:                                                ; preds = %3
  %9 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %10 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 36) #4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %56, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.dpu_hw_dspp, ptr %10, i32 0, i32 1
  %14 = icmp eq ptr %13, null
  br i1 %14, label %44, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.dpu_mdss_cfg, ptr %2, i32 0, i32 21
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %44, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.dpu_mdss_cfg, ptr %2, i32 0, i32 22
  %21 = load ptr, ptr %20, align 4
  br label %22

22:                                               ; preds = %27, %19
  %23 = phi i32 [ 0, %19 ], [ %28, %27 ]
  %24 = getelementptr %struct.dpu_dspp_cfg, ptr %21, i32 %23, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, %0
  br i1 %26, label %30, label %27

27:                                               ; preds = %22
  %28 = add nuw i32 %23, 1
  %29 = icmp eq i32 %28, %17
  br i1 %29, label %44, label %22

30:                                               ; preds = %22
  store ptr %1, ptr %13, align 8
  %31 = getelementptr %struct.dpu_dspp_cfg, ptr %21, i32 %23, i32 2
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr inbounds %struct.dpu_hw_dspp, ptr %10, i32 0, i32 1, i32 1
  store i32 %32, ptr %33, align 4
  %34 = getelementptr %struct.dpu_dspp_cfg, ptr %21, i32 %23, i32 3
  %35 = load i32, ptr %34, align 4
  %36 = getelementptr inbounds %struct.dpu_hw_dspp, ptr %10, i32 0, i32 1, i32 2
  store i32 %35, ptr %36, align 8
  %37 = load i32, ptr %2, align 4
  %38 = getelementptr inbounds %struct.dpu_hw_dspp, ptr %10, i32 0, i32 1, i32 4
  store i32 %37, ptr %38, align 8
  %39 = getelementptr inbounds %struct.dpu_hw_dspp, ptr %10, i32 0, i32 1, i32 5
  store i32 1024, ptr %39, align 4
  %40 = getelementptr %struct.dpu_dspp_cfg, ptr %21, i32 %23
  %41 = icmp eq ptr %40, null
  %42 = icmp ugt ptr %40, inttoptr (i32 -4096 to ptr)
  %43 = or i1 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %30, %27, %15, %12
  tail call void @kfree(ptr noundef nonnull %10) #5
  br label %56

45:                                               ; preds = %30
  %46 = getelementptr inbounds %struct.dpu_hw_dspp, ptr %10, i32 0, i32 2
  store i32 %0, ptr %46, align 8
  %47 = getelementptr inbounds %struct.dpu_hw_dspp, ptr %10, i32 0, i32 3
  store ptr %40, ptr %47, align 4
  %48 = getelementptr %struct.dpu_dspp_cfg, ptr %21, i32 %23, i32 4
  %49 = load i32, ptr %48, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4)
  store i32 %49, ptr %4, align 4
  %50 = load volatile i32, ptr %4, align 4
  %51 = and i32 %50, 2
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %45
  %54 = getelementptr inbounds %struct.dpu_hw_dspp, ptr %10, i32 0, i32 4
  store ptr @dpu_setup_dspp_pcc, ptr %54, align 8
  br label %55

55:                                               ; preds = %53, %45
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4)
  br label %56

56:                                               ; preds = %55, %44, %8, %3
  %57 = phi ptr [ inttoptr (i32 -22 to ptr), %44 ], [ %10, %55 ], [ inttoptr (i32 -22 to ptr), %3 ], [ inttoptr (i32 -12 to ptr), %8 ]
  ret ptr %57
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dpu_hw_dspp_destroy(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @kfree(ptr noundef %0) #5
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dpu_setup_dspp_pcc(ptr noundef %0, ptr noundef readonly %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, ptr noundef null) #5
  br label %46

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.dpu_hw_dspp, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.dpu_dspp_cfg, ptr %7, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.dpu_dspp_sub_blks, ptr %9, i32 0, i32 1, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %5
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1, ptr noundef nonnull %0, i32 noundef 0) #5
  br label %46

14:                                               ; preds = %5
  %15 = icmp eq ptr %1, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %14
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.2) #5
  %17 = getelementptr inbounds %struct.dpu_hw_dspp, ptr %0, i32 0, i32 1
  tail call void @dpu_reg_write(ptr noundef %17, i32 noundef %11, i32 noundef 0, ptr noundef nonnull @.str.3) #5
  br label %46

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.dpu_hw_dspp, ptr %0, i32 0, i32 1
  %20 = add i32 %11, 16
  %21 = load i32, ptr %1, align 4
  tail call void @dpu_reg_write(ptr noundef %19, i32 noundef %20, i32 noundef %21, ptr noundef nonnull @.str.4) #5
  %22 = add i32 %11, 28
  %23 = getelementptr inbounds %struct.dpu_hw_pcc_coeff, ptr %1, i32 0, i32 1
  %24 = load i32, ptr %23, align 4
  tail call void @dpu_reg_write(ptr noundef %19, i32 noundef %22, i32 noundef %24, ptr noundef nonnull @.str.5) #5
  %25 = add i32 %11, 40
  %26 = getelementptr inbounds %struct.dpu_hw_pcc_coeff, ptr %1, i32 0, i32 2
  %27 = load i32, ptr %26, align 4
  tail call void @dpu_reg_write(ptr noundef %19, i32 noundef %25, i32 noundef %27, ptr noundef nonnull @.str.6) #5
  %28 = add i32 %11, 20
  %29 = getelementptr inbounds %struct.dpu_hw_pcc_cfg, ptr %1, i32 0, i32 1
  %30 = load i32, ptr %29, align 4
  tail call void @dpu_reg_write(ptr noundef %19, i32 noundef %28, i32 noundef %30, ptr noundef nonnull @.str.7) #5
  %31 = add i32 %11, 32
  %32 = getelementptr inbounds %struct.dpu_hw_pcc_cfg, ptr %1, i32 0, i32 1, i32 1
  %33 = load i32, ptr %32, align 4
  tail call void @dpu_reg_write(ptr noundef %19, i32 noundef %31, i32 noundef %33, ptr noundef nonnull @.str.8) #5
  %34 = add i32 %11, 44
  %35 = getelementptr inbounds %struct.dpu_hw_pcc_cfg, ptr %1, i32 0, i32 1, i32 2
  %36 = load i32, ptr %35, align 4
  tail call void @dpu_reg_write(ptr noundef %19, i32 noundef %34, i32 noundef %36, ptr noundef nonnull @.str.9) #5
  %37 = add i32 %11, 24
  %38 = getelementptr inbounds %struct.dpu_hw_pcc_cfg, ptr %1, i32 0, i32 2
  %39 = load i32, ptr %38, align 4
  tail call void @dpu_reg_write(ptr noundef %19, i32 noundef %37, i32 noundef %39, ptr noundef nonnull @.str.10) #5
  %40 = add i32 %11, 36
  %41 = getelementptr inbounds %struct.dpu_hw_pcc_cfg, ptr %1, i32 0, i32 2, i32 1
  %42 = load i32, ptr %41, align 4
  tail call void @dpu_reg_write(ptr noundef %19, i32 noundef %40, i32 noundef %42, ptr noundef nonnull @.str.11) #5
  %43 = add i32 %11, 48
  %44 = getelementptr inbounds %struct.dpu_hw_pcc_cfg, ptr %1, i32 0, i32 2, i32 2
  %45 = load i32, ptr %44, align 4
  tail call void @dpu_reg_write(ptr noundef %19, i32 noundef %43, i32 noundef %45, ptr noundef nonnull @.str.12) #5
  tail call void @dpu_reg_write(ptr noundef %19, i32 noundef %11, i32 noundef 1, ptr noundef nonnull @.str.3) #5
  br label %46

46:                                               ; preds = %18, %16, %13, %4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dpu_reg_write(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind allocsize(2) }
attributes #5 = { nounwind }

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
