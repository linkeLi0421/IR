; ModuleID = '/llk/IR/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_vbif.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_vbif.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.dpu_mdss_cfg = type { i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, %struct.dpu_reg_dma_cfg, i32, i32, ptr, %struct.dpu_perf_cfg, ptr, ptr, ptr, i32 }
%struct.dpu_reg_dma_cfg = type { [16 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dpu_perf_cfg = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], [3 x i32], [3 x %struct.dpu_qos_lut_tbl], [2 x %struct.dpu_perf_cdp_cfg] }
%struct.dpu_qos_lut_tbl = type { i32, ptr }
%struct.dpu_perf_cdp_cfg = type { i8, i8 }
%struct.dpu_vbif_cfg = type { [16 x i8], i32, i32, i32, i32, i32, i32, i32, %struct.dpu_vbif_dynamic_ot_tbl, %struct.dpu_vbif_dynamic_ot_tbl, %struct.dpu_vbif_qos_tbl, %struct.dpu_vbif_qos_tbl, i32, [16 x i32] }
%struct.dpu_vbif_dynamic_ot_tbl = type { i32, ptr }
%struct.dpu_vbif_qos_tbl = type { i32, ptr }
%struct.dpu_hw_blk_reg_map = type { ptr, i32, i32, i32, i32, i32 }
%struct.dpu_hw_vbif = type { %struct.dpu_hw_blk_reg_map, i32, ptr, %struct.dpu_hw_vbif_ops }
%struct.dpu_hw_vbif_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str = private unnamed_addr constant [8 x i8] c"reg_off\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"VBIF_XIN_HALT_CTRL0\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"VBIF_XINL_QOS_RP_REMAP_000 + reg_high\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"reg_lvl + reg_high\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"VBIF_XIN_CLR_ERR\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"VBIF_WRITE_GATHER_EN\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @dpu_hw_vbif_init(i32 noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 64) #4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %56, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.dpu_mdss_cfg, ptr %2, i32 0, i32 16
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %37, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.dpu_mdss_cfg, ptr %2, i32 0, i32 17
  %14 = load ptr, ptr %13, align 4
  br label %15

15:                                               ; preds = %20, %12
  %16 = phi i32 [ 0, %12 ], [ %21, %20 ]
  %17 = getelementptr %struct.dpu_vbif_cfg, ptr %14, i32 %16, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, %0
  br i1 %19, label %23, label %20

20:                                               ; preds = %15
  %21 = add nuw i32 %16, 1
  %22 = icmp eq i32 %21, %10
  br i1 %22, label %37, label %15

23:                                               ; preds = %15
  store ptr %1, ptr %6, align 8
  %24 = getelementptr %struct.dpu_vbif_cfg, ptr %14, i32 %16, i32 2
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.dpu_hw_blk_reg_map, ptr %6, i32 0, i32 1
  store i32 %25, ptr %26, align 4
  %27 = getelementptr %struct.dpu_vbif_cfg, ptr %14, i32 %16, i32 3
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr inbounds %struct.dpu_hw_blk_reg_map, ptr %6, i32 0, i32 2
  store i32 %28, ptr %29, align 8
  %30 = load i32, ptr %2, align 4
  %31 = getelementptr inbounds %struct.dpu_hw_blk_reg_map, ptr %6, i32 0, i32 4
  store i32 %30, ptr %31, align 8
  %32 = getelementptr inbounds %struct.dpu_hw_blk_reg_map, ptr %6, i32 0, i32 5
  store i32 256, ptr %32, align 4
  %33 = getelementptr %struct.dpu_vbif_cfg, ptr %14, i32 %16
  %34 = icmp eq ptr %33, null
  %35 = icmp ugt ptr %33, inttoptr (i32 -4096 to ptr)
  %36 = or i1 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %23, %20, %8
  tail call void @kfree(ptr noundef nonnull %6) #5
  br label %56

38:                                               ; preds = %23
  %39 = getelementptr inbounds %struct.dpu_hw_vbif, ptr %6, i32 0, i32 1
  store i32 %0, ptr %39, align 8
  %40 = getelementptr inbounds %struct.dpu_hw_vbif, ptr %6, i32 0, i32 2
  store ptr %33, ptr %40, align 4
  %41 = getelementptr inbounds %struct.dpu_hw_vbif, ptr %6, i32 0, i32 3
  %42 = getelementptr %struct.dpu_vbif_cfg, ptr %14, i32 %16, i32 4
  %43 = load i32, ptr %42, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4)
  store i32 %43, ptr %4, align 4
  store ptr @dpu_hw_set_limit_conf, ptr %41, align 8
  %44 = getelementptr inbounds %struct.dpu_hw_vbif, ptr %6, i32 0, i32 3, i32 1
  store ptr @dpu_hw_get_limit_conf, ptr %44, align 4
  %45 = getelementptr inbounds %struct.dpu_hw_vbif, ptr %6, i32 0, i32 3, i32 2
  store ptr @dpu_hw_set_halt_ctrl, ptr %45, align 8
  %46 = getelementptr inbounds %struct.dpu_hw_vbif, ptr %6, i32 0, i32 3, i32 3
  store ptr @dpu_hw_get_halt_ctrl, ptr %46, align 4
  %47 = load volatile i32, ptr %4, align 4
  %48 = and i32 %47, 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %38
  %51 = getelementptr inbounds %struct.dpu_hw_vbif, ptr %6, i32 0, i32 3, i32 4
  store ptr @dpu_hw_set_qos_remap, ptr %51, align 8
  br label %52

52:                                               ; preds = %50, %38
  %53 = getelementptr inbounds %struct.dpu_hw_vbif, ptr %6, i32 0, i32 3, i32 5
  store ptr @dpu_hw_set_mem_type, ptr %53, align 4
  %54 = getelementptr inbounds %struct.dpu_hw_vbif, ptr %6, i32 0, i32 3, i32 6
  store ptr @dpu_hw_clear_errors, ptr %54, align 8
  %55 = getelementptr inbounds %struct.dpu_hw_vbif, ptr %6, i32 0, i32 3, i32 7
  store ptr @dpu_hw_set_write_gather_en, ptr %55, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4)
  br label %56

56:                                               ; preds = %52, %37, %3
  %57 = phi ptr [ inttoptr (i32 -22 to ptr), %37 ], [ %6, %52 ], [ inttoptr (i32 -12 to ptr), %3 ]
  ret ptr %57
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dpu_hw_vbif_destroy(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @kfree(ptr noundef %0) #5
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dpu_hw_set_limit_conf(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2, i32 noundef %3) #0 {
  %5 = select i1 %2, i32 176, i32 192
  %6 = and i32 %1, -4
  %7 = add i32 %5, %6
  %8 = shl i32 %1, 3
  %9 = and i32 %8, 24
  %10 = tail call i32 @dpu_reg_read(ptr noundef %0, i32 noundef %7) #5
  %11 = shl nuw i32 255, %9
  %12 = xor i32 %11, -1
  %13 = and i32 %10, %12
  %14 = shl i32 %3, %9
  %15 = or i32 %13, %14
  tail call void @dpu_reg_write(ptr noundef %0, i32 noundef %7, i32 noundef %15, ptr noundef nonnull @.str) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dpu_hw_get_limit_conf(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2) #0 {
  %4 = select i1 %2, i32 176, i32 192
  %5 = and i32 %1, -4
  %6 = add i32 %4, %5
  %7 = shl i32 %1, 3
  %8 = and i32 %7, 24
  %9 = tail call i32 @dpu_reg_read(ptr noundef %0, i32 noundef %6) #5
  %10 = lshr i32 %9, %8
  %11 = and i32 %10, 255
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dpu_hw_set_halt_ctrl(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2) #0 {
  %4 = tail call i32 @dpu_reg_read(ptr noundef %0, i32 noundef 512) #5
  %5 = shl nuw i32 1, %1
  %6 = or i32 %4, %5
  %7 = xor i32 %5, -1
  %8 = and i32 %4, %7
  %9 = select i1 %2, i32 %6, i32 %8
  tail call void @dpu_reg_write(ptr noundef %0, i32 noundef 512, i32 noundef %9, ptr noundef nonnull @.str.1) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @dpu_hw_get_halt_ctrl(ptr noundef %0, i32 noundef %1) #0 {
  %3 = tail call i32 @dpu_reg_read(ptr noundef %0, i32 noundef 516) #5
  %4 = shl nuw i32 1, %1
  %5 = and i32 %3, %4
  %6 = icmp ne i32 %5, 0
  ret i1 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dpu_hw_set_qos_remap(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = icmp eq ptr %0, null
  br i1 %5, label %29, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.dpu_hw_blk_reg_map, ptr %0, i32 0, i32 4
  %8 = load i32, ptr %7, align 4
  %9 = icmp ult i32 %8, 1073741824
  %10 = select i1 %9, i32 1392, i32 1424
  %11 = lshr i32 %1, 1
  %12 = and i32 %11, 4
  %13 = shl i32 %2, 3
  %14 = or i32 %12, %13
  %15 = shl i32 %1, 2
  %16 = and i32 %15, 28
  %17 = add i32 %14, 1360
  %18 = tail call i32 @dpu_reg_read(ptr noundef nonnull %0, i32 noundef %17) #5
  %19 = add i32 %10, %14
  %20 = tail call i32 @dpu_reg_read(ptr noundef nonnull %0, i32 noundef %19) #5
  %21 = shl nuw nsw i32 7, %16
  %22 = xor i32 %21, -1
  %23 = and i32 %18, %22
  %24 = shl i32 %3, %16
  %25 = and i32 %24, %21
  %26 = or i32 %23, %25
  %27 = and i32 %20, %22
  %28 = or i32 %27, %25
  tail call void @dpu_reg_write(ptr noundef nonnull %0, i32 noundef %17, i32 noundef %26, ptr noundef nonnull @.str.2) #5
  tail call void @dpu_reg_write(ptr noundef nonnull %0, i32 noundef %19, i32 noundef %28, ptr noundef nonnull @.str.3) #5
  br label %29

29:                                               ; preds = %6, %4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dpu_hw_set_mem_type(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = icmp eq ptr %0, null
  %5 = icmp ugt i32 %1, 15
  %6 = or i1 %4, %5
  br i1 %6, label %19, label %7

7:                                                ; preds = %3
  %8 = icmp ugt i32 %1, 7
  %9 = select i1 %8, i32 356, i32 352
  %10 = shl nuw nsw i32 %1, 2
  %11 = and i32 %10, 28
  %12 = tail call i32 @dpu_reg_read(ptr noundef nonnull %0, i32 noundef %9) #5
  %13 = shl nuw nsw i32 7, %11
  %14 = xor i32 %13, -1
  %15 = and i32 %12, %14
  %16 = and i32 %2, 7
  %17 = shl nuw nsw i32 %16, %11
  %18 = or i32 %15, %17
  tail call void @dpu_reg_write(ptr noundef nonnull %0, i32 noundef %9, i32 noundef %18, ptr noundef nonnull @.str) #5
  br label %19

19:                                               ; preds = %7, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dpu_hw_clear_errors(ptr noundef %0, ptr noundef writeonly %1, ptr noundef writeonly %2) #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %15, label %5

5:                                                ; preds = %3
  %6 = tail call i32 @dpu_reg_read(ptr noundef nonnull %0, i32 noundef 400) #5
  %7 = tail call i32 @dpu_reg_read(ptr noundef nonnull %0, i32 noundef 404) #5
  %8 = icmp eq ptr %1, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  store i32 %6, ptr %1, align 4
  br label %10

10:                                               ; preds = %9, %5
  %11 = icmp eq ptr %2, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %10
  store i32 %7, ptr %2, align 4
  br label %13

13:                                               ; preds = %12, %10
  %14 = or i32 %7, %6
  tail call void @dpu_reg_write(ptr noundef nonnull %0, i32 noundef 412, i32 noundef %14, ptr noundef nonnull @.str.4) #5
  br label %15

15:                                               ; preds = %13, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dpu_hw_set_write_gather_en(ptr noundef %0, i32 noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  %4 = icmp ugt i32 %1, 15
  %5 = or i1 %3, %4
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = tail call i32 @dpu_reg_read(ptr noundef nonnull %0, i32 noundef 172) #5
  %8 = shl nuw nsw i32 1, %1
  %9 = or i32 %7, %8
  tail call void @dpu_reg_write(ptr noundef nonnull %0, i32 noundef 172, i32 noundef %9, ptr noundef nonnull @.str.5) #5
  br label %10

10:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpu_reg_read(ptr noundef, i32 noundef) local_unnamed_addr #1

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
