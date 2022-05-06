; ModuleID = '/llk/IR/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_sspp.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_sspp.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.dpu_hw_pipe = type { %struct.dpu_hw_blk, %struct.dpu_hw_blk_reg_map, ptr, ptr, i32, ptr, %struct.dpu_hw_sspp_ops }
%struct.dpu_hw_blk = type {}
%struct.dpu_hw_blk_reg_map = type { ptr, i32, i32, i32, i32, i32 }
%struct.dpu_hw_sspp_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dpu_sspp_cfg = type { [16 x i8], i32, i32, i32, i32, ptr, i32, i32, i32 }
%struct.dpu_sspp_sub_blks = type { i32, i32, i32, i32, i32, i32, i32, %struct.dpu_src_blk, %struct.dpu_scaler_blk, %struct.dpu_pp_blk, %struct.dpu_pp_blk, %struct.dpu_pp_blk, %struct.dpu_pp_blk, %struct.dpu_pp_blk, ptr, i32, ptr, i32 }
%struct.dpu_src_blk = type { [16 x i8], i32, i32, i32 }
%struct.dpu_scaler_blk = type { [16 x i8], i32, i32, i32, i32 }
%struct.dpu_pp_blk = type { [16 x i8], i32, i32, i32, i32 }
%struct.dpu_mdss_cfg = type { i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, %struct.dpu_reg_dma_cfg, i32, i32, ptr, %struct.dpu_perf_cfg, ptr, ptr, ptr, i32 }
%struct.dpu_reg_dma_cfg = type { [16 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dpu_perf_cfg = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], [3 x i32], [3 x %struct.dpu_qos_lut_tbl], [2 x %struct.dpu_perf_cdp_cfg] }
%struct.dpu_qos_lut_tbl = type { i32, ptr }
%struct.dpu_perf_cdp_cfg = type { i8, i8 }
%struct.dpu_format = type { %struct.msm_format, i32, [4 x i8], [4 x i8], i32, i8, i8, i8, i8, i8, i8, i32, [1 x i32], i16, i16 }
%struct.msm_format = type { i32 }
%struct.dpu_mdp_cfg = type { [16 x i8], i32, i32, i32, i32, i32, i32, [16 x %struct.dpu_clk_ctrl_reg] }
%struct.dpu_clk_ctrl_reg = type { i32, i32 }
%struct.dpu_caps = type { i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, i32 }
%struct.dpu_hw_pipe_cfg = type { %struct.dpu_hw_fmt_layout, %struct.drm_rect, %struct.drm_rect, i32, i32 }
%struct.dpu_hw_fmt_layout = type { ptr, i32, i32, i32, i32, [4 x i32], [4 x i32], [4 x i32] }
%struct.drm_rect = type { i32, i32, i32, i32 }
%struct.dpu_hw_pixel_ext = type { i8, [4 x i32], [4 x i32], [4 x i32], [4 x i32], [4 x i32], [4 x i32], [4 x i32], [4 x i32], [4 x i32], [4 x i32], [4 x i32], [4 x i32], [4 x i32], [4 x i32], [4 x i32], [4 x i32], [4 x i32], [4 x i32], [4 x i32], [4 x i32] }
%struct.dpu_hw_pipe_qos_cfg = type { i32, i32, i8, i8 }
%struct.dpu_hw_pipe_cdp_cfg = type { i8, i8, i8, i32 }

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"features\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"src_blk\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"scaler_blk\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"csc_blk\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"xin_id\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"clk_ctrl\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"creq_vblank\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"danger_vblank\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.9 = private unnamed_addr constant [18 x i8] c"SSPP_FETCH_CONFIG\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"SSPP_UBWC_STATIC_CTRL\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"format_off + idx\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"unpack_pat_off + idx\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"op_mode_off + idx\00", align 1
@.str.14 = private unnamed_addr constant [29 x i8] c"SSPP_UBWC_ERROR_STATUS + idx\00", align 1
@.str.15 = private unnamed_addr constant [23 x i8] c"SSPP_VIG_OP_MODE + idx\00", align 1
@.str.16 = private unnamed_addr constant [30 x i8] c"SSPP_VIG_CSC_10_OP_MODE + idx\00", align 1
@.str.17 = private unnamed_addr constant [19 x i8] c"src_size_off + idx\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"src_xy_off + idx\00", align 1
@.str.19 = private unnamed_addr constant [19 x i8] c"out_size_off + idx\00", align 1
@.str.20 = private unnamed_addr constant [17 x i8] c"out_xy_off + idx\00", align 1
@.str.21 = private unnamed_addr constant [24 x i8] c"SSPP_SRC_YSTRIDE0 + idx\00", align 1
@.str.22 = private unnamed_addr constant [24 x i8] c"SSPP_SRC_YSTRIDE1 + idx\00", align 1
@.str.23 = private unnamed_addr constant [31 x i8] c"SSPP_SRC0_ADDR + idx + i * 0x4\00", align 1
@.str.24 = private unnamed_addr constant [21 x i8] c"SSPP_SRC0_ADDR + idx\00", align 1
@.str.25 = private unnamed_addr constant [21 x i8] c"SSPP_SRC2_ADDR + idx\00", align 1
@.str.26 = private unnamed_addr constant [21 x i8] c"SSPP_SRC1_ADDR + idx\00", align 1
@.str.27 = private unnamed_addr constant [21 x i8] c"SSPP_SRC3_ADDR + idx\00", align 1
@.str.28 = private unnamed_addr constant [30 x i8] c"SSPP_SRC_CONSTANT_COLOR + idx\00", align 1
@.str.29 = private unnamed_addr constant [35 x i8] c"SSPP_SRC_CONSTANT_COLOR_REC1 + idx\00", align 1
@.str.30 = private unnamed_addr constant [28 x i8] c"SSPP_SW_PIX_EXT_C0_LR + idx\00", align 1
@.str.31 = private unnamed_addr constant [28 x i8] c"SSPP_SW_PIX_EXT_C0_TB + idx\00", align 1
@.str.32 = private unnamed_addr constant [36 x i8] c"SSPP_SW_PIX_EXT_C0_REQ_PIXELS + idx\00", align 1
@.str.33 = private unnamed_addr constant [30 x i8] c"SSPP_SW_PIX_EXT_C1C2_LR + idx\00", align 1
@.str.34 = private unnamed_addr constant [30 x i8] c"SSPP_SW_PIX_EXT_C1C2_TB + idx\00", align 1
@.str.35 = private unnamed_addr constant [38 x i8] c"SSPP_SW_PIX_EXT_C1C2_REQ_PIXELS + idx\00", align 1
@.str.36 = private unnamed_addr constant [28 x i8] c"SSPP_SW_PIX_EXT_C3_LR + idx\00", align 1
@.str.37 = private unnamed_addr constant [28 x i8] c"SSPP_SW_PIX_EXT_C3_TB + idx\00", align 1
@.str.38 = private unnamed_addr constant [36 x i8] c"SSPP_SW_PIX_EXT_C3_REQ_PIXELS + idx\00", align 1
@.str.39 = private unnamed_addr constant [22 x i8] c"SSPP_DANGER_LUT + idx\00", align 1
@.str.40 = private unnamed_addr constant [20 x i8] c"SSPP_SAFE_LUT + idx\00", align 1
@.str.41 = private unnamed_addr constant [22 x i8] c"SSPP_CREQ_LUT_0 + idx\00", align 1
@.str.42 = private unnamed_addr constant [22 x i8] c"SSPP_CREQ_LUT_1 + idx\00", align 1
@.str.43 = private unnamed_addr constant [20 x i8] c"SSPP_CREQ_LUT + idx\00", align 1
@.str.44 = private unnamed_addr constant [20 x i8] c"SSPP_QOS_CTRL + idx\00", align 1
@.str.45 = private unnamed_addr constant [28 x i8] c"SSPP_MULTIRECT_OPMODE + idx\00", align 1
@.str.46 = private unnamed_addr constant [16 x i8] c"cdp_cntl_offset\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @_dpu_hw_sspp_init_debugfs(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [32 x i8], align 1
  %5 = getelementptr inbounds %struct.dpu_hw_pipe, ptr %0, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.dpu_sspp_cfg, ptr %6, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %4, i8 0, i32 32, i1 false), !annotation !8
  %9 = getelementptr inbounds %struct.dpu_hw_pipe, ptr %0, i32 0, i32 4
  %10 = load i32, ptr %9, align 4
  %11 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %4, i32 noundef 32, ptr noundef nonnull @.str, i32 noundef %10)
  %12 = call ptr @debugfs_create_dir(ptr noundef nonnull %4, ptr noundef %2) #6
  %13 = load ptr, ptr %5, align 4
  %14 = getelementptr inbounds %struct.dpu_sspp_cfg, ptr %13, i32 0, i32 4
  call void @debugfs_create_x32(ptr noundef nonnull @.str.1, i16 noundef zeroext 384, ptr noundef %12, ptr noundef %14) #6
  %15 = getelementptr inbounds %struct.dpu_sspp_sub_blks, ptr %8, i32 0, i32 7, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.dpu_sspp_cfg, ptr %6, i32 0, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = add i32 %18, %16
  %20 = getelementptr inbounds %struct.dpu_sspp_sub_blks, ptr %8, i32 0, i32 7, i32 3
  %21 = load i32, ptr %20, align 4
  call void @dpu_debugfs_create_regset32(ptr noundef nonnull @.str.2, i16 noundef zeroext 256, ptr noundef %12, i32 noundef %19, i32 noundef %21, ptr noundef %1) #6
  %22 = getelementptr inbounds %struct.dpu_sspp_cfg, ptr %6, i32 0, i32 4
  %23 = load i32, ptr %22, align 4
  %24 = and i32 %23, 60
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %34, label %26

26:                                               ; preds = %3
  %27 = getelementptr inbounds %struct.dpu_sspp_sub_blks, ptr %8, i32 0, i32 8, i32 2
  %28 = load i32, ptr %27, align 4
  %29 = load i32, ptr %17, align 4
  %30 = add i32 %29, %28
  %31 = getelementptr inbounds %struct.dpu_sspp_sub_blks, ptr %8, i32 0, i32 8, i32 3
  %32 = load i32, ptr %31, align 4
  call void @dpu_debugfs_create_regset32(ptr noundef nonnull @.str.3, i16 noundef zeroext 256, ptr noundef %12, i32 noundef %30, i32 noundef %32, ptr noundef %1) #6
  %33 = load i32, ptr %22, align 4
  br label %34

34:                                               ; preds = %26, %3
  %35 = phi i32 [ %23, %3 ], [ %33, %26 ]
  %36 = and i32 %35, 384
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %45, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.dpu_sspp_sub_blks, ptr %8, i32 0, i32 9, i32 2
  %40 = load i32, ptr %39, align 4
  %41 = load i32, ptr %17, align 4
  %42 = add i32 %41, %40
  %43 = getelementptr inbounds %struct.dpu_sspp_sub_blks, ptr %8, i32 0, i32 9, i32 3
  %44 = load i32, ptr %43, align 4
  call void @dpu_debugfs_create_regset32(ptr noundef nonnull @.str.4, i16 noundef zeroext 256, ptr noundef %12, i32 noundef %42, i32 noundef %44, ptr noundef %1) #6
  br label %45

45:                                               ; preds = %38, %34
  %46 = getelementptr inbounds %struct.dpu_sspp_cfg, ptr %6, i32 0, i32 6
  call void @debugfs_create_u32(ptr noundef nonnull @.str.5, i16 noundef zeroext 256, ptr noundef %12, ptr noundef %46) #6
  %47 = getelementptr inbounds %struct.dpu_sspp_cfg, ptr %6, i32 0, i32 7
  call void @debugfs_create_u32(ptr noundef nonnull @.str.6, i16 noundef zeroext 256, ptr noundef %12, ptr noundef %47) #6
  call void @debugfs_create_x32(ptr noundef nonnull @.str.7, i16 noundef zeroext 384, ptr noundef %12, ptr noundef %8) #6
  %48 = getelementptr inbounds %struct.dpu_sspp_sub_blks, ptr %8, i32 0, i32 1
  call void @debugfs_create_x32(ptr noundef nonnull @.str.8, i16 noundef zeroext 384, ptr noundef %12, ptr noundef %48) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dpu_debugfs_create_regset32(ptr noundef, i16 noundef zeroext, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_u32(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_x32(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @dpu_hw_sspp_init(i32 noundef %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = alloca i32, align 4
  %6 = icmp ne ptr %1, null
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7
  br i1 %8, label %9, label %117

9:                                                ; preds = %4
  %10 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %11 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 100) #7
  %12 = icmp eq ptr %11, null
  br i1 %12, label %117, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.dpu_hw_pipe, ptr %11, i32 0, i32 1
  %15 = icmp ult i32 %0, 15
  %16 = icmp ne ptr %14, null
  %17 = and i1 %15, %16
  br i1 %17, label %18, label %47

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.dpu_mdss_cfg, ptr %2, i32 0, i32 6
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %47, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.dpu_mdss_cfg, ptr %2, i32 0, i32 7
  %24 = load ptr, ptr %23, align 4
  br label %25

25:                                               ; preds = %30, %22
  %26 = phi i32 [ 0, %22 ], [ %31, %30 ]
  %27 = getelementptr %struct.dpu_sspp_cfg, ptr %24, i32 %26, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, %0
  br i1 %29, label %33, label %30

30:                                               ; preds = %25
  %31 = add nuw i32 %26, 1
  %32 = icmp eq i32 %31, %20
  br i1 %32, label %47, label %25

33:                                               ; preds = %25
  store ptr %1, ptr %14, align 8
  %34 = getelementptr %struct.dpu_sspp_cfg, ptr %24, i32 %26, i32 2
  %35 = load i32, ptr %34, align 4
  %36 = getelementptr inbounds %struct.dpu_hw_pipe, ptr %11, i32 0, i32 1, i32 1
  store i32 %35, ptr %36, align 4
  %37 = getelementptr %struct.dpu_sspp_cfg, ptr %24, i32 %26, i32 3
  %38 = load i32, ptr %37, align 4
  %39 = getelementptr inbounds %struct.dpu_hw_pipe, ptr %11, i32 0, i32 1, i32 2
  store i32 %38, ptr %39, align 8
  %40 = load i32, ptr %2, align 4
  %41 = getelementptr inbounds %struct.dpu_hw_pipe, ptr %11, i32 0, i32 1, i32 4
  store i32 %40, ptr %41, align 8
  %42 = getelementptr inbounds %struct.dpu_hw_pipe, ptr %11, i32 0, i32 1, i32 5
  store i32 32, ptr %42, align 4
  %43 = getelementptr %struct.dpu_sspp_cfg, ptr %24, i32 %26
  %44 = icmp eq ptr %43, null
  %45 = icmp ugt ptr %43, inttoptr (i32 -4096 to ptr)
  %46 = or i1 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %33, %30, %18, %13
  tail call void @kfree(ptr noundef nonnull %11) #6
  br label %117

48:                                               ; preds = %33
  %49 = getelementptr inbounds %struct.dpu_hw_pipe, ptr %11, i32 0, i32 2
  store ptr %2, ptr %49, align 8
  %50 = getelementptr inbounds %struct.dpu_mdss_cfg, ptr %2, i32 0, i32 3
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr inbounds %struct.dpu_hw_pipe, ptr %11, i32 0, i32 3
  store ptr %51, ptr %52, align 4
  %53 = getelementptr inbounds %struct.dpu_hw_pipe, ptr %11, i32 0, i32 4
  store i32 %0, ptr %53, align 8
  %54 = getelementptr inbounds %struct.dpu_hw_pipe, ptr %11, i32 0, i32 5
  store ptr %43, ptr %54, align 4
  %55 = getelementptr %struct.dpu_sspp_cfg, ptr %24, i32 %26, i32 4
  %56 = load i32, ptr %55, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5)
  store i32 %56, ptr %5, align 4
  %57 = load volatile i32, ptr %5, align 4
  %58 = and i32 %57, 2
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %66, label %60

60:                                               ; preds = %48
  %61 = getelementptr inbounds %struct.dpu_hw_pipe, ptr %11, i32 0, i32 6
  store ptr @dpu_hw_sspp_setup_format, ptr %61, align 8
  %62 = getelementptr inbounds %struct.dpu_hw_pipe, ptr %11, i32 0, i32 6, i32 1
  store ptr @dpu_hw_sspp_setup_rects, ptr %62, align 4
  %63 = getelementptr inbounds %struct.dpu_hw_pipe, ptr %11, i32 0, i32 6, i32 3
  store ptr @dpu_hw_sspp_setup_sourceaddress, ptr %63, align 4
  %64 = getelementptr inbounds %struct.dpu_hw_pipe, ptr %11, i32 0, i32 6, i32 5
  store ptr @dpu_hw_sspp_setup_solidfill, ptr %64, align 4
  %65 = getelementptr inbounds %struct.dpu_hw_pipe, ptr %11, i32 0, i32 6, i32 2
  store ptr @dpu_hw_sspp_setup_pe_config, ptr %65, align 8
  br label %66

66:                                               ; preds = %60, %48
  %67 = load volatile i32, ptr %5, align 4
  %68 = and i32 %67, 1024
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %74, label %70

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.dpu_hw_pipe, ptr %11, i32 0, i32 6, i32 8
  store ptr @dpu_hw_sspp_setup_danger_safe_lut, ptr %71, align 8
  %72 = getelementptr inbounds %struct.dpu_hw_pipe, ptr %11, i32 0, i32 6, i32 9
  store ptr @dpu_hw_sspp_setup_creq_lut, ptr %72, align 4
  %73 = getelementptr inbounds %struct.dpu_hw_pipe, ptr %11, i32 0, i32 6, i32 10
  store ptr @dpu_hw_sspp_setup_qos_ctrl, ptr %73, align 8
  br label %74

74:                                               ; preds = %70, %66
  %75 = load volatile i32, ptr %5, align 4
  %76 = and i32 %75, 128
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %74
  %79 = load volatile i32, ptr %5, align 4
  %80 = and i32 %79, 256
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %84, label %82

82:                                               ; preds = %78, %74
  %83 = getelementptr inbounds %struct.dpu_hw_pipe, ptr %11, i32 0, i32 6, i32 4
  store ptr @dpu_hw_sspp_setup_csc, ptr %83, align 8
  br label %84

84:                                               ; preds = %82, %78
  %85 = getelementptr %struct.dpu_sspp_cfg, ptr %24, i32 %26, i32 4
  %86 = load volatile i32, ptr %85, align 4
  %87 = and i32 %86, 8192
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %84
  %90 = load volatile i32, ptr %85, align 4
  %91 = and i32 %90, 16384
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %95, label %93

93:                                               ; preds = %89, %84
  %94 = getelementptr inbounds %struct.dpu_hw_pipe, ptr %11, i32 0, i32 6, i32 6
  store ptr @dpu_hw_sspp_setup_multirect, ptr %94, align 8
  br label %95

95:                                               ; preds = %93, %89
  %96 = load volatile i32, ptr %5, align 4
  %97 = and i32 %96, 8
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %107

99:                                               ; preds = %95
  %100 = load volatile i32, ptr %5, align 4
  %101 = and i32 %100, 16
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %99
  %104 = load volatile i32, ptr %5, align 4
  %105 = and i32 %104, 32
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %110, label %107

107:                                              ; preds = %103, %99, %95
  %108 = getelementptr inbounds %struct.dpu_hw_pipe, ptr %11, i32 0, i32 6, i32 12
  store ptr @_dpu_hw_sspp_setup_scaler3, ptr %108, align 8
  %109 = getelementptr inbounds %struct.dpu_hw_pipe, ptr %11, i32 0, i32 6, i32 13
  store ptr @_dpu_hw_sspp_get_scaler3_ver, ptr %109, align 4
  br label %110

110:                                              ; preds = %107, %103
  %111 = load volatile i32, ptr %5, align 4
  %112 = and i32 %111, 131072
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %116, label %114

114:                                              ; preds = %110
  %115 = getelementptr inbounds %struct.dpu_hw_pipe, ptr %11, i32 0, i32 6, i32 14
  store ptr @dpu_hw_sspp_setup_cdp, ptr %115, align 8
  br label %116

116:                                              ; preds = %114, %110
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5)
  br label %117

117:                                              ; preds = %116, %47, %9, %4
  %118 = phi ptr [ inttoptr (i32 -22 to ptr), %47 ], [ %11, %116 ], [ inttoptr (i32 -22 to ptr), %4 ], [ inttoptr (i32 -12 to ptr), %9 ]
  ret ptr %118
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dpu_hw_sspp_destroy(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @kfree(ptr noundef %0) #6
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dpu_hw_sspp_setup_format(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = icmp eq ptr %0, null
  br i1 %5, label %237, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.dpu_hw_pipe, ptr %0, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %237, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.dpu_sspp_cfg, ptr %8, i32 0, i32 5
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %237, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.dpu_sspp_sub_blks, ptr %12, i32 0, i32 7, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq ptr %1, null
  br i1 %17, label %237, label %18

18:                                               ; preds = %14
  %19 = icmp ult i32 %3, 2
  %20 = select i1 %19, i32 56, i32 380
  %21 = select i1 %19, i32 52, i32 376
  %22 = select i1 %19, i32 48, i32 372
  %23 = getelementptr inbounds %struct.dpu_hw_pipe, ptr %0, i32 0, i32 1
  %24 = add i32 %16, %20
  %25 = tail call i32 @dpu_reg_read(ptr noundef %23, i32 noundef %24) #6
  %26 = and i32 %25, 2147459070
  %27 = shl i32 %2, 13
  %28 = and i32 %27, 24576
  %29 = or i32 %28, %26
  %30 = getelementptr inbounds %struct.dpu_format, ptr %1, i32 0, i32 4
  %31 = load i32, ptr %30, align 4
  %32 = and i32 %2, 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %18
  %35 = icmp eq i32 %31, 1
  br i1 %35, label %39, label %36

36:                                               ; preds = %34
  %37 = icmp eq i32 %31, 2
  %38 = select i1 %37, i32 1, i32 %31
  br label %39

39:                                               ; preds = %36, %34, %18
  %40 = phi i32 [ %38, %36 ], [ %31, %18 ], [ 2, %34 ]
  %41 = shl i32 %40, 23
  %42 = getelementptr inbounds %struct.dpu_format, ptr %1, i32 0, i32 1
  %43 = load i32, ptr %42, align 4
  %44 = shl i32 %43, 19
  %45 = or i32 %41, %44
  %46 = getelementptr inbounds %struct.dpu_format, ptr %1, i32 0, i32 3
  %47 = getelementptr %struct.dpu_format, ptr %1, i32 0, i32 3, i32 3
  %48 = load i8, ptr %47, align 1
  %49 = zext i8 %48 to i32
  %50 = shl nuw nsw i32 %49, 6
  %51 = or i32 %50, %45
  %52 = getelementptr %struct.dpu_format, ptr %1, i32 0, i32 3, i32 2
  %53 = load i8, ptr %52, align 2
  %54 = zext i8 %53 to i32
  %55 = shl nuw nsw i32 %54, 4
  %56 = getelementptr %struct.dpu_format, ptr %1, i32 0, i32 3, i32 1
  %57 = load i8, ptr %56, align 1
  %58 = zext i8 %57 to i32
  %59 = shl nuw nsw i32 %58, 2
  %60 = load i8, ptr %46, align 4
  %61 = zext i8 %60 to i32
  %62 = shl i32 %2, 8
  %63 = and i32 %62, 2048
  %64 = or i32 %55, %63
  %65 = or i32 %64, %51
  %66 = or i32 %65, %59
  %67 = or i32 %66, %61
  %68 = getelementptr inbounds %struct.dpu_format, ptr %1, i32 0, i32 9
  %69 = load i8, ptr %68, align 4
  %70 = icmp eq i8 %69, 0
  %71 = icmp eq i32 %43, 0
  %72 = or i32 %67, 256
  %73 = select i1 %71, i32 %72, i32 %67
  %74 = select i1 %70, i32 %67, i32 %73
  %75 = shl i32 %2, 18
  %76 = and i32 %75, 4194304
  %77 = getelementptr inbounds %struct.dpu_format, ptr %1, i32 0, i32 2
  %78 = getelementptr %struct.dpu_format, ptr %1, i32 0, i32 2, i32 3
  %79 = load i8, ptr %78, align 1
  %80 = zext i8 %79 to i32
  %81 = shl nuw i32 %80, 24
  %82 = getelementptr %struct.dpu_format, ptr %1, i32 0, i32 2, i32 2
  %83 = load i8, ptr %82, align 2
  %84 = zext i8 %83 to i32
  %85 = shl nuw nsw i32 %84, 16
  %86 = or i32 %85, %81
  %87 = getelementptr %struct.dpu_format, ptr %1, i32 0, i32 2, i32 1
  %88 = load i8, ptr %87, align 1
  %89 = zext i8 %88 to i32
  %90 = shl nuw nsw i32 %89, 8
  %91 = or i32 %86, %90
  %92 = load i8, ptr %77, align 4
  %93 = zext i8 %92 to i32
  %94 = or i32 %91, %93
  %95 = getelementptr inbounds %struct.dpu_format, ptr %1, i32 0, i32 7
  %96 = load i8, ptr %95, align 2
  %97 = zext i8 %96 to i32
  %98 = shl nuw nsw i32 %97, 12
  %99 = add nsw i32 %98, -4096
  %100 = getelementptr inbounds %struct.dpu_format, ptr %1, i32 0, i32 6
  %101 = load i8, ptr %100, align 1
  %102 = zext i8 %101 to i32
  %103 = shl nuw nsw i32 %102, 17
  %104 = getelementptr inbounds %struct.dpu_format, ptr %1, i32 0, i32 5
  %105 = load i8, ptr %104, align 4
  %106 = zext i8 %105 to i32
  %107 = shl nuw nsw i32 %106, 18
  %108 = getelementptr inbounds %struct.dpu_format, ptr %1, i32 0, i32 8
  %109 = load i8, ptr %108, align 1
  %110 = zext i8 %109 to i32
  %111 = shl nuw nsw i32 %110, 9
  %112 = add nsw i32 %111, -512
  %113 = or i32 %74, %76
  %114 = or i32 %113, %103
  %115 = or i32 %114, %99
  %116 = or i32 %115, %107
  %117 = or i32 %116, %112
  %118 = getelementptr inbounds %struct.dpu_format, ptr %1, i32 0, i32 11
  %119 = load i32, ptr %118, align 4
  switch i32 %119, label %126 [
    i32 0, label %171
    i32 2, label %120
  ]

120:                                              ; preds = %39
  %121 = getelementptr inbounds %struct.dpu_format, ptr %1, i32 0, i32 12
  %122 = load volatile i32, ptr %121, align 4
  %123 = lshr i32 %122, 2
  %124 = and i32 %123, 1
  %125 = or i32 %124, %29
  br label %126

126:                                              ; preds = %120, %39
  %127 = phi i32 [ %29, %39 ], [ %125, %120 ]
  %128 = shl i32 %119, 30
  %129 = or i32 %117, %128
  %130 = getelementptr inbounds %struct.dpu_hw_pipe, ptr %0, i32 0, i32 3
  %131 = load ptr, ptr %130, align 4
  %132 = getelementptr inbounds %struct.dpu_mdp_cfg, ptr %131, i32 0, i32 5
  %133 = load i32, ptr %132, align 4
  %134 = shl i32 %133, 18
  %135 = or i32 %134, 135
  tail call void @dpu_reg_write(ptr noundef %23, i32 noundef 72, i32 noundef %135, ptr noundef nonnull @.str.9) #6
  %136 = getelementptr inbounds %struct.dpu_hw_pipe, ptr %0, i32 0, i32 2
  %137 = load ptr, ptr %136, align 4
  %138 = getelementptr inbounds %struct.dpu_mdss_cfg, ptr %137, i32 0, i32 1
  %139 = load ptr, ptr %138, align 4
  %140 = getelementptr inbounds %struct.dpu_caps, ptr %139, i32 0, i32 4
  %141 = load i32, ptr %140, align 4
  switch i32 %141, label %171 [
    i32 1024, label %163
    i32 512, label %142
    i32 768, label %154
  ]

142:                                              ; preds = %126
  %143 = load i8, ptr %68, align 4
  %144 = icmp eq i8 %143, 0
  %145 = select i1 %144, i32 0, i32 -2147483648
  %146 = load ptr, ptr %130, align 4
  %147 = getelementptr inbounds %struct.dpu_mdp_cfg, ptr %146, i32 0, i32 6
  %148 = load i32, ptr %147, align 4
  %149 = or i32 %145, %148
  %150 = getelementptr inbounds %struct.dpu_mdp_cfg, ptr %146, i32 0, i32 5
  %151 = load i32, ptr %150, align 4
  %152 = shl i32 %151, 4
  %153 = or i32 %149, %152
  br label %169

154:                                              ; preds = %126
  %155 = load ptr, ptr %130, align 4
  %156 = getelementptr inbounds %struct.dpu_mdp_cfg, ptr %155, i32 0, i32 6
  %157 = load i32, ptr %156, align 4
  %158 = getelementptr inbounds %struct.dpu_mdp_cfg, ptr %155, i32 0, i32 5
  %159 = load i32, ptr %158, align 4
  %160 = shl i32 %159, 4
  %161 = or i32 %157, %160
  %162 = or i32 %161, 1073741824
  br label %169

163:                                              ; preds = %126
  %164 = getelementptr inbounds %struct.dpu_format, ptr %1, i32 0, i32 12
  %165 = load volatile i32, ptr %164, align 4
  %166 = shl i32 %165, 30
  %167 = and i32 %166, 1073741824
  %168 = xor i32 %167, 1073741824
  br label %169

169:                                              ; preds = %163, %154, %142
  %170 = phi i32 [ %153, %142 ], [ %162, %154 ], [ %168, %163 ]
  tail call void @dpu_reg_write(ptr noundef %23, i32 noundef 68, i32 noundef %170, ptr noundef nonnull @.str.10) #6
  br label %171

171:                                              ; preds = %169, %126, %39
  %172 = phi i32 [ %129, %126 ], [ %117, %39 ], [ %129, %169 ]
  %173 = phi i32 [ %127, %126 ], [ %29, %39 ], [ %127, %169 ]
  %174 = or i32 %173, -2147483648
  %175 = getelementptr inbounds %struct.dpu_format, ptr %1, i32 0, i32 12
  %176 = load volatile i32, ptr %175, align 4
  %177 = shl i32 %176, 15
  %178 = and i32 %177, 32768
  %179 = or i32 %178, %172
  %180 = load volatile i32, ptr %175, align 4
  %181 = shl i32 %180, 13
  %182 = and i32 %181, 16384
  %183 = or i32 %179, %182
  %184 = load ptr, ptr %7, align 4
  %185 = getelementptr inbounds %struct.dpu_sspp_cfg, ptr %184, i32 0, i32 4
  %186 = load volatile i32, ptr %185, align 4
  %187 = and i32 %186, 128
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %213, label %189

189:                                              ; preds = %171
  %190 = load volatile i32, ptr %175, align 4
  %191 = load volatile i32, ptr %185, align 4
  %192 = and i32 %191, 4
  %193 = icmp eq i32 %192, 0
  %194 = icmp eq ptr %184, null
  %195 = select i1 %193, i1 true, i1 %194
  br i1 %195, label %233, label %196

196:                                              ; preds = %189
  %197 = getelementptr inbounds %struct.dpu_sspp_cfg, ptr %184, i32 0, i32 5
  %198 = load ptr, ptr %197, align 4
  %199 = icmp eq ptr %198, null
  br i1 %199, label %233, label %200

200:                                              ; preds = %196
  %201 = getelementptr inbounds %struct.dpu_sspp_sub_blks, ptr %198, i32 0, i32 8, i32 2
  %202 = load i32, ptr %201, align 4
  %203 = load volatile i32, ptr %185, align 4
  %204 = and i32 %203, 128
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %233, label %206

206:                                              ; preds = %200
  %207 = tail call i32 @dpu_reg_read(ptr noundef %23, i32 noundef %202) #6
  %208 = and i32 %190, 1
  %209 = icmp eq i32 %208, 0
  %210 = and i32 %207, -393217
  %211 = select i1 %209, i32 0, i32 393216
  %212 = or i32 %210, %211
  tail call void @dpu_reg_write(ptr noundef %23, i32 noundef %202, i32 noundef %212, ptr noundef nonnull @.str.15) #6
  br label %233

213:                                              ; preds = %171
  %214 = load volatile i32, ptr %185, align 4
  %215 = and i32 %214, 256
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %233, label %217

217:                                              ; preds = %213
  %218 = load volatile i32, ptr %175, align 4
  %219 = icmp eq ptr %184, null
  br i1 %219, label %233, label %220

220:                                              ; preds = %217
  %221 = getelementptr inbounds %struct.dpu_sspp_cfg, ptr %184, i32 0, i32 5
  %222 = load ptr, ptr %221, align 4
  %223 = icmp eq ptr %222, null
  br i1 %223, label %233, label %224

224:                                              ; preds = %220
  %225 = getelementptr inbounds %struct.dpu_sspp_sub_blks, ptr %222, i32 0, i32 9, i32 2
  %226 = load i32, ptr %225, align 4
  %227 = tail call i32 @dpu_reg_read(ptr noundef %23, i32 noundef %226) #6
  %228 = and i32 %218, 1
  %229 = icmp eq i32 %228, 0
  %230 = and i32 %227, -4
  %231 = select i1 %229, i32 0, i32 3
  %232 = or i32 %230, %231
  tail call void @dpu_reg_write(ptr noundef %23, i32 noundef %226, i32 noundef %232, ptr noundef nonnull @.str.16) #6
  br label %233

233:                                              ; preds = %224, %220, %217, %213, %206, %200, %196, %189
  %234 = add i32 %16, %22
  tail call void @dpu_reg_write(ptr noundef %23, i32 noundef %234, i32 noundef %183, ptr noundef nonnull @.str.11) #6
  %235 = add i32 %16, %21
  tail call void @dpu_reg_write(ptr noundef %23, i32 noundef %235, i32 noundef %94, ptr noundef nonnull @.str.12) #6
  tail call void @dpu_reg_write(ptr noundef %23, i32 noundef %24, i32 noundef %174, ptr noundef nonnull @.str.13) #6
  %236 = add i32 %16, 312
  tail call void @dpu_reg_write(ptr noundef %23, i32 noundef %236, i32 noundef -2147483648, ptr noundef nonnull @.str.14) #6
  br label %237

237:                                              ; preds = %233, %14, %10, %6, %4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dpu_hw_sspp_setup_rects(ptr noundef %0, ptr noundef readonly %1, i32 noundef %2) #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %105, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.dpu_hw_pipe, ptr %0, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %105, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.dpu_sspp_cfg, ptr %7, i32 0, i32 5
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %105, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.dpu_sspp_sub_blks, ptr %11, i32 0, i32 7, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq ptr %1, null
  br i1 %16, label %105, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.dpu_hw_pipe, ptr %0, i32 0, i32 1
  %19 = icmp eq i32 %2, 0
  %20 = icmp ult i32 %2, 2
  %21 = select i1 %20, i32 0, i32 364
  %22 = select i1 %20, i32 8, i32 360
  %23 = select i1 %20, i32 12, i32 352
  %24 = select i1 %20, i32 16, i32 356
  %25 = getelementptr inbounds %struct.dpu_hw_pipe_cfg, ptr %1, i32 0, i32 1
  %26 = getelementptr inbounds %struct.dpu_hw_pipe_cfg, ptr %1, i32 0, i32 1, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = shl i32 %27, 16
  %29 = load i32, ptr %25, align 4
  %30 = or i32 %28, %29
  %31 = getelementptr inbounds %struct.dpu_hw_pipe_cfg, ptr %1, i32 0, i32 1, i32 3
  %32 = load i32, ptr %31, align 4
  %33 = sub i32 %32, %27
  %34 = shl i32 %33, 16
  %35 = getelementptr inbounds %struct.dpu_hw_pipe_cfg, ptr %1, i32 0, i32 1, i32 2
  %36 = load i32, ptr %35, align 4
  %37 = sub i32 %36, %29
  %38 = or i32 %34, %37
  %39 = getelementptr inbounds %struct.dpu_hw_pipe_cfg, ptr %1, i32 0, i32 2
  %40 = getelementptr inbounds %struct.dpu_hw_pipe_cfg, ptr %1, i32 0, i32 2, i32 1
  %41 = load i32, ptr %40, align 4
  %42 = shl i32 %41, 16
  %43 = load i32, ptr %39, align 4
  %44 = or i32 %42, %43
  %45 = getelementptr inbounds %struct.dpu_hw_pipe_cfg, ptr %1, i32 0, i32 2, i32 3
  %46 = load i32, ptr %45, align 4
  %47 = sub i32 %46, %41
  %48 = shl i32 %47, 16
  %49 = getelementptr inbounds %struct.dpu_hw_pipe_cfg, ptr %1, i32 0, i32 2, i32 2
  %50 = load i32, ptr %49, align 4
  %51 = sub i32 %50, %43
  %52 = or i32 %48, %51
  br i1 %19, label %53, label %68

53:                                               ; preds = %17
  %54 = getelementptr inbounds %struct.dpu_hw_fmt_layout, ptr %1, i32 0, i32 7
  %55 = load i32, ptr %54, align 4
  %56 = getelementptr %struct.dpu_hw_fmt_layout, ptr %1, i32 0, i32 7, i32 1
  %57 = load i32, ptr %56, align 4
  %58 = shl i32 %57, 16
  %59 = or i32 %58, %55
  %60 = getelementptr %struct.dpu_hw_fmt_layout, ptr %1, i32 0, i32 7, i32 2
  %61 = load i32, ptr %60, align 4
  %62 = getelementptr %struct.dpu_hw_fmt_layout, ptr %1, i32 0, i32 7, i32 3
  %63 = load i32, ptr %62, align 4
  %64 = shl i32 %63, 16
  %65 = or i32 %64, %61
  %66 = add i32 %15, 36
  %67 = add i32 %15, 40
  br label %96

68:                                               ; preds = %17
  %69 = icmp eq i32 %2, 1
  %70 = add i32 %15, 36
  %71 = tail call i32 @dpu_reg_read(ptr noundef %18, i32 noundef %70) #6
  %72 = add i32 %15, 40
  %73 = tail call i32 @dpu_reg_read(ptr noundef %18, i32 noundef %72) #6
  br i1 %69, label %74, label %85

74:                                               ; preds = %68
  %75 = and i32 %71, -65536
  %76 = getelementptr inbounds %struct.dpu_hw_fmt_layout, ptr %1, i32 0, i32 7
  %77 = load i32, ptr %76, align 4
  %78 = and i32 %77, 65535
  %79 = or i32 %78, %75
  %80 = and i32 %73, -65536
  %81 = getelementptr %struct.dpu_hw_fmt_layout, ptr %1, i32 0, i32 7, i32 2
  %82 = load i32, ptr %81, align 4
  %83 = and i32 %82, 65535
  %84 = or i32 %83, %80
  br label %96

85:                                               ; preds = %68
  %86 = and i32 %71, 65535
  %87 = getelementptr inbounds %struct.dpu_hw_fmt_layout, ptr %1, i32 0, i32 7
  %88 = load i32, ptr %87, align 4
  %89 = shl i32 %88, 16
  %90 = or i32 %89, %86
  %91 = and i32 %73, 65535
  %92 = getelementptr %struct.dpu_hw_fmt_layout, ptr %1, i32 0, i32 7, i32 2
  %93 = load i32, ptr %92, align 4
  %94 = shl i32 %93, 16
  %95 = or i32 %94, %91
  br label %96

96:                                               ; preds = %85, %74, %53
  %97 = phi i32 [ %72, %74 ], [ %72, %85 ], [ %67, %53 ]
  %98 = phi i32 [ %70, %74 ], [ %70, %85 ], [ %66, %53 ]
  %99 = phi i32 [ %79, %74 ], [ %90, %85 ], [ %59, %53 ]
  %100 = phi i32 [ %84, %74 ], [ %95, %85 ], [ %65, %53 ]
  %101 = add i32 %15, %21
  tail call void @dpu_reg_write(ptr noundef %18, i32 noundef %101, i32 noundef %38, ptr noundef nonnull @.str.17) #6
  %102 = add i32 %15, %22
  tail call void @dpu_reg_write(ptr noundef %18, i32 noundef %102, i32 noundef %30, ptr noundef nonnull @.str.18) #6
  %103 = add i32 %15, %23
  tail call void @dpu_reg_write(ptr noundef %18, i32 noundef %103, i32 noundef %52, ptr noundef nonnull @.str.19) #6
  %104 = add i32 %15, %24
  tail call void @dpu_reg_write(ptr noundef %18, i32 noundef %104, i32 noundef %44, ptr noundef nonnull @.str.20) #6
  tail call void @dpu_reg_write(ptr noundef %18, i32 noundef %98, i32 noundef %99, ptr noundef nonnull @.str.21) #6
  tail call void @dpu_reg_write(ptr noundef %18, i32 noundef %97, i32 noundef %100, ptr noundef nonnull @.str.22) #6
  br label %105

105:                                              ; preds = %96, %13, %9, %5, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dpu_hw_sspp_setup_sourceaddress(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %46, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.dpu_hw_pipe, ptr %0, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %46, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.dpu_sspp_cfg, ptr %7, i32 0, i32 5
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %46, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.dpu_sspp_sub_blks, ptr %11, i32 0, i32 7, i32 2
  %15 = load i32, ptr %14, align 4
  switch i32 %2, label %38 [
    i32 0, label %16
    i32 1, label %30
  ]

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.dpu_hw_pipe, ptr %0, i32 0, i32 1
  %18 = add i32 %15, 20
  %19 = getelementptr %struct.dpu_hw_fmt_layout, ptr %1, i32 0, i32 5, i32 0
  %20 = load i32, ptr %19, align 4
  tail call void @dpu_reg_write(ptr noundef %17, i32 noundef %18, i32 noundef %20, ptr noundef nonnull @.str.23) #6
  %21 = add i32 %15, 24
  %22 = getelementptr %struct.dpu_hw_fmt_layout, ptr %1, i32 0, i32 5, i32 1
  %23 = load i32, ptr %22, align 4
  tail call void @dpu_reg_write(ptr noundef %17, i32 noundef %21, i32 noundef %23, ptr noundef nonnull @.str.23) #6
  %24 = add i32 %15, 28
  %25 = getelementptr %struct.dpu_hw_fmt_layout, ptr %1, i32 0, i32 5, i32 2
  %26 = load i32, ptr %25, align 4
  tail call void @dpu_reg_write(ptr noundef %17, i32 noundef %24, i32 noundef %26, ptr noundef nonnull @.str.23) #6
  %27 = add i32 %15, 32
  %28 = getelementptr %struct.dpu_hw_fmt_layout, ptr %1, i32 0, i32 5, i32 3
  %29 = load i32, ptr %28, align 4
  tail call void @dpu_reg_write(ptr noundef %17, i32 noundef %27, i32 noundef %29, ptr noundef nonnull @.str.23) #6
  br label %46

30:                                               ; preds = %13
  %31 = getelementptr inbounds %struct.dpu_hw_pipe, ptr %0, i32 0, i32 1
  %32 = add i32 %15, 20
  %33 = getelementptr inbounds %struct.dpu_hw_fmt_layout, ptr %1, i32 0, i32 5
  %34 = load i32, ptr %33, align 4
  tail call void @dpu_reg_write(ptr noundef %31, i32 noundef %32, i32 noundef %34, ptr noundef nonnull @.str.24) #6
  %35 = add i32 %15, 28
  %36 = getelementptr %struct.dpu_hw_fmt_layout, ptr %1, i32 0, i32 5, i32 2
  %37 = load i32, ptr %36, align 4
  tail call void @dpu_reg_write(ptr noundef %31, i32 noundef %35, i32 noundef %37, ptr noundef nonnull @.str.25) #6
  br label %46

38:                                               ; preds = %13
  %39 = getelementptr inbounds %struct.dpu_hw_pipe, ptr %0, i32 0, i32 1
  %40 = add i32 %15, 24
  %41 = getelementptr inbounds %struct.dpu_hw_fmt_layout, ptr %1, i32 0, i32 5
  %42 = load i32, ptr %41, align 4
  tail call void @dpu_reg_write(ptr noundef %39, i32 noundef %40, i32 noundef %42, ptr noundef nonnull @.str.26) #6
  %43 = add i32 %15, 32
  %44 = getelementptr %struct.dpu_hw_fmt_layout, ptr %1, i32 0, i32 5, i32 2
  %45 = load i32, ptr %44, align 4
  tail call void @dpu_reg_write(ptr noundef %39, i32 noundef %43, i32 noundef %45, ptr noundef nonnull @.str.27) #6
  br label %46

46:                                               ; preds = %38, %30, %16, %9, %5, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dpu_hw_sspp_setup_solidfill(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %21, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.dpu_hw_pipe, ptr %0, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %21, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.dpu_sspp_cfg, ptr %7, i32 0, i32 5
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %21, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.dpu_sspp_sub_blks, ptr %11, i32 0, i32 7, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = icmp ult i32 %2, 2
  %17 = getelementptr inbounds %struct.dpu_hw_pipe, ptr %0, i32 0, i32 1
  %18 = select i1 %16, i32 60, i32 384
  %19 = select i1 %16, ptr @.str.28, ptr @.str.29
  %20 = add i32 %15, %18
  tail call void @dpu_reg_write(ptr noundef %17, i32 noundef %20, i32 noundef %1, ptr noundef nonnull %19) #6
  br label %21

21:                                               ; preds = %13, %9, %5, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dpu_hw_sspp_setup_pe_config(ptr noundef %0, ptr noundef readonly %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %169, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.dpu_hw_pipe, ptr %0, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %169, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.dpu_sspp_cfg, ptr %6, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  %12 = icmp eq ptr %1, null
  %13 = or i1 %11, %12
  br i1 %13, label %169, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.dpu_sspp_sub_blks, ptr %10, i32 0, i32 7, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr %struct.dpu_hw_pixel_ext, ptr %1, i32 0, i32 10, i32 0
  %18 = load i32, ptr %17, align 4
  %19 = shl i32 %18, 24
  %20 = getelementptr %struct.dpu_hw_pixel_ext, ptr %1, i32 0, i32 14, i32 0
  %21 = load i32, ptr %20, align 4
  %22 = shl i32 %21, 16
  %23 = and i32 %22, 16711680
  %24 = or i32 %23, %19
  %25 = getelementptr %struct.dpu_hw_pixel_ext, ptr %1, i32 0, i32 9, i32 0
  %26 = load i32, ptr %25, align 4
  %27 = shl i32 %26, 8
  %28 = and i32 %27, 65280
  %29 = or i32 %24, %28
  %30 = getelementptr %struct.dpu_hw_pixel_ext, ptr %1, i32 0, i32 13, i32 0
  %31 = load i32, ptr %30, align 4
  %32 = and i32 %31, 255
  %33 = or i32 %29, %32
  %34 = getelementptr %struct.dpu_hw_pixel_ext, ptr %1, i32 0, i32 12, i32 0
  %35 = load i32, ptr %34, align 4
  %36 = shl i32 %35, 24
  %37 = getelementptr %struct.dpu_hw_pixel_ext, ptr %1, i32 0, i32 16, i32 0
  %38 = load i32, ptr %37, align 4
  %39 = shl i32 %38, 16
  %40 = and i32 %39, 16711680
  %41 = or i32 %40, %36
  %42 = getelementptr %struct.dpu_hw_pixel_ext, ptr %1, i32 0, i32 11, i32 0
  %43 = load i32, ptr %42, align 4
  %44 = shl i32 %43, 8
  %45 = and i32 %44, 65280
  %46 = or i32 %41, %45
  %47 = getelementptr %struct.dpu_hw_pixel_ext, ptr %1, i32 0, i32 15, i32 0
  %48 = load i32, ptr %47, align 4
  %49 = and i32 %48, 255
  %50 = or i32 %46, %49
  %51 = getelementptr %struct.dpu_hw_pixel_ext, ptr %1, i32 0, i32 18, i32 0
  %52 = load i32, ptr %51, align 4
  %53 = getelementptr %struct.dpu_hw_pixel_ext, ptr %1, i32 0, i32 7, i32 0
  %54 = load i32, ptr %53, align 4
  %55 = add i32 %54, %52
  %56 = getelementptr %struct.dpu_hw_pixel_ext, ptr %1, i32 0, i32 8, i32 0
  %57 = load i32, ptr %56, align 4
  %58 = add i32 %55, %57
  %59 = shl i32 %58, 16
  %60 = getelementptr %struct.dpu_hw_pixel_ext, ptr %1, i32 0, i32 17, i32 0
  %61 = load i32, ptr %60, align 4
  %62 = getelementptr %struct.dpu_hw_pixel_ext, ptr %1, i32 0, i32 5, i32 0
  %63 = load i32, ptr %62, align 4
  %64 = add i32 %63, %61
  %65 = getelementptr %struct.dpu_hw_pixel_ext, ptr %1, i32 0, i32 6, i32 0
  %66 = load i32, ptr %65, align 4
  %67 = add i32 %64, %66
  %68 = and i32 %67, 65535
  %69 = or i32 %68, %59
  %70 = getelementptr %struct.dpu_hw_pixel_ext, ptr %1, i32 0, i32 10, i32 1
  %71 = load i32, ptr %70, align 4
  %72 = shl i32 %71, 24
  %73 = getelementptr %struct.dpu_hw_pixel_ext, ptr %1, i32 0, i32 14, i32 1
  %74 = load i32, ptr %73, align 4
  %75 = shl i32 %74, 16
  %76 = and i32 %75, 16711680
  %77 = or i32 %76, %72
  %78 = getelementptr %struct.dpu_hw_pixel_ext, ptr %1, i32 0, i32 9, i32 1
  %79 = load i32, ptr %78, align 4
  %80 = shl i32 %79, 8
  %81 = and i32 %80, 65280
  %82 = or i32 %77, %81
  %83 = getelementptr %struct.dpu_hw_pixel_ext, ptr %1, i32 0, i32 13, i32 1
  %84 = load i32, ptr %83, align 4
  %85 = and i32 %84, 255
  %86 = or i32 %82, %85
  %87 = getelementptr %struct.dpu_hw_pixel_ext, ptr %1, i32 0, i32 12, i32 1
  %88 = load i32, ptr %87, align 4
  %89 = shl i32 %88, 24
  %90 = getelementptr %struct.dpu_hw_pixel_ext, ptr %1, i32 0, i32 16, i32 1
  %91 = load i32, ptr %90, align 4
  %92 = shl i32 %91, 16
  %93 = and i32 %92, 16711680
  %94 = or i32 %93, %89
  %95 = getelementptr %struct.dpu_hw_pixel_ext, ptr %1, i32 0, i32 11, i32 1
  %96 = load i32, ptr %95, align 4
  %97 = shl i32 %96, 8
  %98 = and i32 %97, 65280
  %99 = or i32 %94, %98
  %100 = getelementptr %struct.dpu_hw_pixel_ext, ptr %1, i32 0, i32 15, i32 1
  %101 = load i32, ptr %100, align 4
  %102 = and i32 %101, 255
  %103 = or i32 %99, %102
  %104 = getelementptr %struct.dpu_hw_pixel_ext, ptr %1, i32 0, i32 18, i32 1
  %105 = load i32, ptr %104, align 4
  %106 = getelementptr %struct.dpu_hw_pixel_ext, ptr %1, i32 0, i32 7, i32 1
  %107 = load i32, ptr %106, align 4
  %108 = add i32 %107, %105
  %109 = getelementptr %struct.dpu_hw_pixel_ext, ptr %1, i32 0, i32 8, i32 1
  %110 = load i32, ptr %109, align 4
  %111 = add i32 %108, %110
  %112 = shl i32 %111, 16
  %113 = getelementptr %struct.dpu_hw_pixel_ext, ptr %1, i32 0, i32 17, i32 1
  %114 = load i32, ptr %113, align 4
  %115 = getelementptr %struct.dpu_hw_pixel_ext, ptr %1, i32 0, i32 5, i32 1
  %116 = load i32, ptr %115, align 4
  %117 = add i32 %116, %114
  %118 = getelementptr %struct.dpu_hw_pixel_ext, ptr %1, i32 0, i32 6, i32 1
  %119 = load i32, ptr %118, align 4
  %120 = add i32 %117, %119
  %121 = and i32 %120, 65535
  %122 = or i32 %121, %112
  %123 = getelementptr %struct.dpu_hw_pixel_ext, ptr %1, i32 0, i32 10, i32 3
  %124 = load i32, ptr %123, align 4
  %125 = shl i32 %124, 24
  %126 = getelementptr %struct.dpu_hw_pixel_ext, ptr %1, i32 0, i32 14, i32 3
  %127 = load i32, ptr %126, align 4
  %128 = shl i32 %127, 16
  %129 = and i32 %128, 16711680
  %130 = or i32 %129, %125
  %131 = getelementptr %struct.dpu_hw_pixel_ext, ptr %1, i32 0, i32 9, i32 3
  %132 = load i32, ptr %131, align 4
  %133 = shl i32 %132, 8
  %134 = and i32 %133, 65280
  %135 = or i32 %130, %134
  %136 = getelementptr %struct.dpu_hw_pixel_ext, ptr %1, i32 0, i32 13, i32 3
  %137 = load i32, ptr %136, align 4
  %138 = and i32 %137, 255
  %139 = or i32 %135, %138
  %140 = getelementptr %struct.dpu_hw_pixel_ext, ptr %1, i32 0, i32 18, i32 3
  %141 = load i32, ptr %140, align 4
  %142 = getelementptr %struct.dpu_hw_pixel_ext, ptr %1, i32 0, i32 7, i32 3
  %143 = load i32, ptr %142, align 4
  %144 = add i32 %143, %141
  %145 = getelementptr %struct.dpu_hw_pixel_ext, ptr %1, i32 0, i32 8, i32 3
  %146 = load i32, ptr %145, align 4
  %147 = add i32 %144, %146
  %148 = shl i32 %147, 16
  %149 = getelementptr %struct.dpu_hw_pixel_ext, ptr %1, i32 0, i32 17, i32 3
  %150 = load i32, ptr %149, align 4
  %151 = getelementptr %struct.dpu_hw_pixel_ext, ptr %1, i32 0, i32 5, i32 3
  %152 = load i32, ptr %151, align 4
  %153 = add i32 %152, %150
  %154 = getelementptr %struct.dpu_hw_pixel_ext, ptr %1, i32 0, i32 6, i32 3
  %155 = load i32, ptr %154, align 4
  %156 = add i32 %153, %155
  %157 = and i32 %156, 65535
  %158 = or i32 %157, %148
  %159 = getelementptr inbounds %struct.dpu_hw_pipe, ptr %0, i32 0, i32 1
  %160 = add i32 %16, 256
  tail call void @dpu_reg_write(ptr noundef %159, i32 noundef %160, i32 noundef %33, ptr noundef nonnull @.str.30) #6
  %161 = add i32 %16, 260
  tail call void @dpu_reg_write(ptr noundef %159, i32 noundef %161, i32 noundef %50, ptr noundef nonnull @.str.31) #6
  %162 = add i32 %16, 264
  tail call void @dpu_reg_write(ptr noundef %159, i32 noundef %162, i32 noundef %69, ptr noundef nonnull @.str.32) #6
  %163 = add i32 %16, 272
  tail call void @dpu_reg_write(ptr noundef %159, i32 noundef %163, i32 noundef %86, ptr noundef nonnull @.str.33) #6
  %164 = add i32 %16, 276
  tail call void @dpu_reg_write(ptr noundef %159, i32 noundef %164, i32 noundef %103, ptr noundef nonnull @.str.34) #6
  %165 = add i32 %16, 280
  tail call void @dpu_reg_write(ptr noundef %159, i32 noundef %165, i32 noundef %122, ptr noundef nonnull @.str.35) #6
  %166 = add i32 %16, 288
  tail call void @dpu_reg_write(ptr noundef %159, i32 noundef %166, i32 noundef %139, ptr noundef nonnull @.str.36) #6
  %167 = add i32 %16, 292
  tail call void @dpu_reg_write(ptr noundef %159, i32 noundef %167, i32 noundef %139, ptr noundef nonnull @.str.37) #6
  %168 = add i32 %16, 296
  tail call void @dpu_reg_write(ptr noundef %159, i32 noundef %168, i32 noundef %158, ptr noundef nonnull @.str.38) #6
  br label %169

169:                                              ; preds = %14, %8, %4, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dpu_hw_sspp_setup_danger_safe_lut(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %19, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.dpu_hw_pipe, ptr %0, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %19, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.dpu_sspp_cfg, ptr %7, i32 0, i32 5
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.dpu_sspp_sub_blks, ptr %11, i32 0, i32 7, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.dpu_hw_pipe, ptr %0, i32 0, i32 1
  %17 = add i32 %15, 96
  tail call void @dpu_reg_write(ptr noundef %16, i32 noundef %17, i32 noundef %1, ptr noundef nonnull @.str.39) #6
  %18 = add i32 %15, 100
  tail call void @dpu_reg_write(ptr noundef %16, i32 noundef %18, i32 noundef %2, ptr noundef nonnull @.str.40) #6
  br label %19

19:                                               ; preds = %13, %9, %5, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dpu_hw_sspp_setup_creq_lut(ptr noundef %0, i64 noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %29, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.dpu_hw_pipe, ptr %0, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %29, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.dpu_sspp_cfg, ptr %6, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %29, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.dpu_sspp_sub_blks, ptr %10, i32 0, i32 7, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.dpu_sspp_cfg, ptr %6, i32 0, i32 4
  %16 = load volatile i32, ptr %15, align 4
  %17 = and i32 %16, 2048
  %18 = icmp eq i32 %17, 0
  %19 = getelementptr inbounds %struct.dpu_hw_pipe, ptr %0, i32 0, i32 1
  br i1 %18, label %26, label %20

20:                                               ; preds = %12
  %21 = add i32 %14, 116
  %22 = trunc i64 %1 to i32
  tail call void @dpu_reg_write(ptr noundef %19, i32 noundef %21, i32 noundef %22, ptr noundef nonnull @.str.41) #6
  %23 = add i32 %14, 120
  %24 = lshr i64 %1, 32
  %25 = trunc i64 %24 to i32
  tail call void @dpu_reg_write(ptr noundef %19, i32 noundef %23, i32 noundef %25, ptr noundef nonnull @.str.42) #6
  br label %29

26:                                               ; preds = %12
  %27 = add i32 %14, 104
  %28 = trunc i64 %1 to i32
  tail call void @dpu_reg_write(ptr noundef %19, i32 noundef %27, i32 noundef %28, ptr noundef nonnull @.str.43) #6
  br label %29

29:                                               ; preds = %26, %20, %8, %4, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dpu_hw_sspp_setup_qos_ctrl(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %36, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.dpu_hw_pipe, ptr %0, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %36, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.dpu_sspp_cfg, ptr %6, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %36, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.dpu_sspp_sub_blks, ptr %10, i32 0, i32 7, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.dpu_hw_pipe_qos_cfg, ptr %1, i32 0, i32 2
  %16 = load i8, ptr %15, align 4, !range !9
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %28, label %18

18:                                               ; preds = %12
  %19 = load i32, ptr %1, align 4
  %20 = shl i32 %19, 20
  %21 = and i32 %20, 3145728
  %22 = getelementptr inbounds %struct.dpu_hw_pipe_qos_cfg, ptr %1, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = shl i32 %23, 4
  %25 = and i32 %24, 48
  %26 = or i32 %21, %25
  %27 = or i32 %26, 65536
  br label %28

28:                                               ; preds = %18, %12
  %29 = phi i32 [ %27, %18 ], [ 0, %12 ]
  %30 = getelementptr inbounds %struct.dpu_hw_pipe_qos_cfg, ptr %1, i32 0, i32 3
  %31 = load i8, ptr %30, align 1, !range !9
  %32 = zext i8 %31 to i32
  %33 = or i32 %29, %32
  %34 = getelementptr inbounds %struct.dpu_hw_pipe, ptr %0, i32 0, i32 1
  %35 = add i32 %14, 108
  tail call void @dpu_reg_write(ptr noundef %34, i32 noundef %35, i32 noundef %33, ptr noundef nonnull @.str.44) #6
  br label %36

36:                                               ; preds = %28, %8, %4, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dpu_hw_sspp_setup_csc(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %25, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.dpu_hw_pipe, ptr %0, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %25, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.dpu_sspp_cfg, ptr %6, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  %12 = icmp eq ptr %1, null
  %13 = or i1 %12, %11
  br i1 %13, label %25, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.dpu_sspp_sub_blks, ptr %10, i32 0, i32 9, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.dpu_sspp_cfg, ptr %6, i32 0, i32 4
  %18 = load volatile i32, ptr %17, align 4
  %19 = and i32 %18, 256
  %20 = icmp eq i32 %19, 0
  %21 = add i32 %16, 4
  %22 = select i1 %20, i32 %16, i32 %21
  %23 = xor i1 %20, true
  %24 = getelementptr inbounds %struct.dpu_hw_pipe, ptr %0, i32 0, i32 1
  tail call void @dpu_hw_csc_setup(ptr noundef %24, i32 noundef %22, ptr noundef nonnull %1, i1 noundef zeroext %23) #6
  br label %25

25:                                               ; preds = %14, %8, %4, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dpu_hw_sspp_setup_multirect(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %33, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.dpu_hw_pipe, ptr %0, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %33, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.dpu_sspp_cfg, ptr %7, i32 0, i32 5
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %33, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.dpu_sspp_sub_blks, ptr %11, i32 0, i32 7, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %1, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = add i32 %15, 368
  br label %29

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.dpu_hw_pipe, ptr %0, i32 0, i32 1
  %21 = add i32 %15, 368
  %22 = tail call i32 @dpu_reg_read(ptr noundef %20, i32 noundef %21) #6
  %23 = or i32 %22, %1
  %24 = icmp eq i32 %2, 2
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = or i32 %23, 4
  br label %29

27:                                               ; preds = %19
  %28 = and i32 %23, -5
  br label %29

29:                                               ; preds = %27, %25, %17
  %30 = phi i32 [ %18, %17 ], [ %21, %25 ], [ %21, %27 ]
  %31 = phi i32 [ 0, %17 ], [ %26, %25 ], [ %28, %27 ]
  %32 = getelementptr inbounds %struct.dpu_hw_pipe, ptr %0, i32 0, i32 1
  tail call void @dpu_reg_write(ptr noundef %32, i32 noundef %30, i32 noundef %31, ptr noundef nonnull @.str.45) #6
  br label %33

33:                                               ; preds = %29, %9, %5, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @_dpu_hw_sspp_setup_scaler3(ptr noundef %0, ptr noundef readonly %1, ptr noundef %2) #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %24, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.dpu_hw_pipe, ptr %0, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %24, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.dpu_sspp_cfg, ptr %7, i32 0, i32 5
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %24, label %13

13:                                               ; preds = %9
  %14 = icmp ne ptr %1, null
  %15 = icmp ne ptr %2, null
  %16 = and i1 %14, %15
  br i1 %16, label %17, label %24

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.dpu_sspp_sub_blks, ptr %11, i32 0, i32 8, i32 2
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.dpu_hw_pipe, ptr %0, i32 0, i32 1
  %21 = getelementptr inbounds %struct.dpu_sspp_sub_blks, ptr %11, i32 0, i32 8, i32 4
  %22 = load i32, ptr %21, align 4
  %23 = load ptr, ptr %1, align 4
  tail call void @dpu_hw_setup_scaler3(ptr noundef %20, ptr noundef nonnull %2, i32 noundef %19, i32 noundef %22, ptr noundef %23) #6
  br label %24

24:                                               ; preds = %17, %13, %9, %5, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @_dpu_hw_sspp_get_scaler3_ver(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %16, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.dpu_hw_pipe, ptr %0, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %16, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.dpu_sspp_cfg, ptr %5, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.dpu_sspp_sub_blks, ptr %9, i32 0, i32 8, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.dpu_hw_pipe, ptr %0, i32 0, i32 1
  %15 = tail call i32 @dpu_hw_get_scaler3_ver(ptr noundef %14, i32 noundef %13) #6
  br label %16

16:                                               ; preds = %11, %7, %3, %1
  %17 = phi i32 [ %15, %11 ], [ 0, %1 ], [ 0, %7 ], [ 0, %3 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dpu_hw_sspp_setup_cdp(ptr noundef %0, ptr noundef readonly %1, i32 noundef %2) #0 {
  %4 = icmp ne ptr %0, null
  %5 = icmp ne ptr %1, null
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %36

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.dpu_hw_pipe, ptr %0, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %36, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.dpu_sspp_cfg, ptr %9, i32 0, i32 5
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %36, label %15

15:                                               ; preds = %11
  %16 = icmp ult i32 %2, 2
  %17 = select i1 %16, i32 308, i32 316
  %18 = load i8, ptr %1, align 4, !range !9
  %19 = zext i8 %18 to i32
  %20 = getelementptr inbounds %struct.dpu_hw_pipe_cdp_cfg, ptr %1, i32 0, i32 1
  %21 = load i8, ptr %20, align 1, !range !9
  %22 = icmp eq i8 %21, 0
  %23 = or i32 %19, 2
  %24 = select i1 %22, i32 %19, i32 %23
  %25 = getelementptr inbounds %struct.dpu_hw_pipe_cdp_cfg, ptr %1, i32 0, i32 2
  %26 = load i8, ptr %25, align 2, !range !9
  %27 = icmp eq i8 %26, 0
  %28 = or i32 %24, 4
  %29 = select i1 %27, i32 %24, i32 %28
  %30 = getelementptr inbounds %struct.dpu_hw_pipe_cdp_cfg, ptr %1, i32 0, i32 3
  %31 = load i32, ptr %30, align 4
  %32 = icmp eq i32 %31, 1
  %33 = or i32 %29, 8
  %34 = select i1 %32, i32 %33, i32 %29
  %35 = getelementptr inbounds %struct.dpu_hw_pipe, ptr %0, i32 0, i32 1
  tail call void @dpu_reg_write(ptr noundef %35, i32 noundef %17, i32 noundef %34, ptr noundef nonnull @.str.46) #6
  br label %36

36:                                               ; preds = %15, %11, %7, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpu_reg_read(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dpu_reg_write(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dpu_hw_csc_setup(ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dpu_hw_setup_scaler3(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpu_hw_get_scaler3_ver(ptr noundef, i32 noundef) local_unnamed_addr #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
!8 = !{!"auto-init"}
!9 = !{i8 0, i8 2}
