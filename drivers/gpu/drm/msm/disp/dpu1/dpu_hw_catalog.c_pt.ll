; ModuleID = '/llk/IR/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.dpu_mdss_hw_cfg_handler = type { i32, ptr }
%struct.dpu_caps = type { i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, i32 }
%struct.dpu_mdp_cfg = type { [16 x i8], i32, i32, i32, i32, i32, i32, [16 x %struct.dpu_clk_ctrl_reg] }
%struct.dpu_clk_ctrl_reg = type { i32, i32 }
%struct.dpu_ctl_cfg = type { [16 x i8], i32, i32, i32, i32, i32 }
%struct.dpu_sspp_cfg = type { [16 x i8], i32, i32, i32, i32, ptr, i32, i32, i32 }
%struct.dpu_lm_cfg = type { [16 x i8], i32, i32, i32, i32, ptr, i32, i32, i32 }
%struct.dpu_pingpong_cfg = type { [16 x i8], i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.dpu_intf_cfg = type { [16 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dpu_vbif_cfg = type { [16 x i8], i32, i32, i32, i32, i32, i32, i32, %struct.dpu_vbif_dynamic_ot_tbl, %struct.dpu_vbif_dynamic_ot_tbl, %struct.dpu_vbif_qos_tbl, %struct.dpu_vbif_qos_tbl, i32, [16 x i32] }
%struct.dpu_vbif_dynamic_ot_tbl = type { i32, ptr }
%struct.dpu_vbif_qos_tbl = type { i32, ptr }
%struct.dpu_reg_dma_cfg = type { [16 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dpu_perf_cfg = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], [3 x i32], [3 x %struct.dpu_qos_lut_tbl], [2 x %struct.dpu_perf_cdp_cfg] }
%struct.dpu_qos_lut_tbl = type { i32, ptr }
%struct.dpu_perf_cdp_cfg = type { i8, i8 }
%struct.dpu_sspp_sub_blks = type { i32, i32, i32, i32, i32, i32, i32, %struct.dpu_src_blk, %struct.dpu_scaler_blk, %struct.dpu_pp_blk, %struct.dpu_pp_blk, %struct.dpu_pp_blk, %struct.dpu_pp_blk, %struct.dpu_pp_blk, ptr, i32, ptr, i32 }
%struct.dpu_src_blk = type { [16 x i8], i32, i32, i32 }
%struct.dpu_scaler_blk = type { [16 x i8], i32, i32, i32, i32 }
%struct.dpu_pp_blk = type { [16 x i8], i32, i32, i32, i32 }
%struct.dpu_lm_sub_blks = type { i32, i32, [12 x i32], %struct.dpu_pp_blk }
%struct.dpu_pingpong_sub_blks = type { %struct.dpu_pp_blk, %struct.dpu_pp_blk, %struct.dpu_pp_blk }
%struct.dpu_qos_lut_entry = type { i32, i64 }
%struct.dpu_merge_3d_cfg = type { [16 x i8], i32, i32, i32, i32, ptr }
%struct.dpu_dspp_cfg = type { [16 x i8], i32, i32, i32, i32, ptr }
%struct.dpu_dspp_sub_blks = type { %struct.dpu_pp_blk, %struct.dpu_pp_blk }

@cfg_handler = internal unnamed_addr constant [7 x %struct.dpu_mdss_hw_cfg_handler] [%struct.dpu_mdss_hw_cfg_handler { i32 1073741824, ptr @sdm845_cfg_init }, %struct.dpu_mdss_hw_cfg_handler { i32 1073741825, ptr @sdm845_cfg_init }, %struct.dpu_mdss_hw_cfg_handler { i32 1342177280, ptr @sm8150_cfg_init }, %struct.dpu_mdss_hw_cfg_handler { i32 1342177281, ptr @sm8150_cfg_init }, %struct.dpu_mdss_hw_cfg_handler { i32 1610612736, ptr @sm8250_cfg_init }, %struct.dpu_mdss_hw_cfg_handler { i32 1610743808, ptr @sc7180_cfg_init }, %struct.dpu_mdss_hw_cfg_handler { i32 1879179264, ptr @sc7280_cfg_init }], align 4
@.str = private unnamed_addr constant [52 x i8] c"\013[drm:%s:%d] [dpu error]unsupported chipset id:%X\0A\00", align 1
@__func__.dpu_hw_catalog_init = private unnamed_addr constant [20 x i8] c"dpu_hw_catalog_init\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@sdm845_dpu_caps = internal constant %struct.dpu_caps { i32 2560, i32 11, i32 3, i32 14, i32 512, i8 1, i8 1, i8 1, i8 1, i32 2560, i32 51200, i32 4, i32 4 }, align 4
@sdm845_mdp = internal constant [1 x %struct.dpu_mdp_cfg] [%struct.dpu_mdp_cfg { [16 x i8] c"top_0\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 0, i32 1116, i32 0, i32 2, i32 0, [16 x %struct.dpu_clk_ctrl_reg] [%struct.dpu_clk_ctrl_reg zeroinitializer, %struct.dpu_clk_ctrl_reg { i32 684, i32 0 }, %struct.dpu_clk_ctrl_reg { i32 692, i32 0 }, %struct.dpu_clk_ctrl_reg { i32 700, i32 0 }, %struct.dpu_clk_ctrl_reg { i32 708, i32 0 }, %struct.dpu_clk_ctrl_reg zeroinitializer, %struct.dpu_clk_ctrl_reg zeroinitializer, %struct.dpu_clk_ctrl_reg zeroinitializer, %struct.dpu_clk_ctrl_reg zeroinitializer, %struct.dpu_clk_ctrl_reg zeroinitializer, %struct.dpu_clk_ctrl_reg { i32 684, i32 8 }, %struct.dpu_clk_ctrl_reg { i32 692, i32 8 }, %struct.dpu_clk_ctrl_reg { i32 700, i32 8 }, %struct.dpu_clk_ctrl_reg { i32 708, i32 8 }, %struct.dpu_clk_ctrl_reg zeroinitializer, %struct.dpu_clk_ctrl_reg zeroinitializer] }], align 4
@sdm845_ctl = internal constant [5 x %struct.dpu_ctl_cfg] [%struct.dpu_ctl_cfg { [16 x i8] c"ctl_0\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 4096, i32 228, i32 2, i32 41 }, %struct.dpu_ctl_cfg { [16 x i8] c"ctl_1\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 4608, i32 228, i32 2, i32 42 }, %struct.dpu_ctl_cfg { [16 x i8] c"ctl_2\00\00\00\00\00\00\00\00\00\00\00", i32 3, i32 5120, i32 228, i32 0, i32 43 }, %struct.dpu_ctl_cfg { [16 x i8] c"ctl_3\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 5632, i32 228, i32 0, i32 44 }, %struct.dpu_ctl_cfg { [16 x i8] c"ctl_4\00\00\00\00\00\00\00\00\00\00\00", i32 5, i32 6144, i32 228, i32 0, i32 45 }], align 4
@sdm845_sspp = internal constant [8 x %struct.dpu_sspp_cfg] [%struct.dpu_sspp_cfg { [16 x i8] c"sspp_0\00\00\00\00\00\00\00\00\00\00", i32 1, i32 16384, i32 456, i32 171274, ptr @sdm845_vig_sblk_0, i32 0, i32 1, i32 0 }, %struct.dpu_sspp_cfg { [16 x i8] c"sspp_1\00\00\00\00\00\00\00\00\00\00", i32 2, i32 24576, i32 456, i32 171274, ptr @sdm845_vig_sblk_1, i32 4, i32 2, i32 0 }, %struct.dpu_sspp_cfg { [16 x i8] c"sspp_2\00\00\00\00\00\00\00\00\00\00", i32 3, i32 32768, i32 456, i32 171274, ptr @sdm845_vig_sblk_2, i32 8, i32 3, i32 0 }, %struct.dpu_sspp_cfg { [16 x i8] c"sspp_3\00\00\00\00\00\00\00\00\00\00", i32 4, i32 40960, i32 456, i32 171274, ptr @sdm845_vig_sblk_3, i32 12, i32 4, i32 0 }, %struct.dpu_sspp_cfg { [16 x i8] c"sspp_8\00\00\00\00\00\00\00\00\00\00", i32 9, i32 147456, i32 456, i32 236546, ptr @sdm845_dma_sblk_0, i32 1, i32 10, i32 2 }, %struct.dpu_sspp_cfg { [16 x i8] c"sspp_9\00\00\00\00\00\00\00\00\00\00", i32 10, i32 155648, i32 456, i32 236546, ptr @sdm845_dma_sblk_1, i32 5, i32 11, i32 2 }, %struct.dpu_sspp_cfg { [16 x i8] c"sspp_10\00\00\00\00\00\00\00\00\00", i32 11, i32 163840, i32 456, i32 237058, ptr @sdm845_dma_sblk_2, i32 9, i32 12, i32 2 }, %struct.dpu_sspp_cfg { [16 x i8] c"sspp_11\00\00\00\00\00\00\00\00\00", i32 12, i32 172032, i32 456, i32 237058, ptr @sdm845_dma_sblk_3, i32 13, i32 13, i32 2 }], align 4
@sdm845_lm = internal constant [6 x %struct.dpu_lm_cfg] [%struct.dpu_lm_cfg { [16 x i8] c"lm_0\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 278528, i32 800, i32 20, ptr @sdm845_lm_sblk, i32 1, i32 0, i32 4 }, %struct.dpu_lm_cfg { [16 x i8] c"lm_1\00\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 282624, i32 800, i32 20, ptr @sdm845_lm_sblk, i32 2, i32 0, i32 2 }, %struct.dpu_lm_cfg { [16 x i8] c"lm_2\00\00\00\00\00\00\00\00\00\00\00\00", i32 3, i32 286720, i32 800, i32 20, ptr @sdm845_lm_sblk, i32 3, i32 0, i32 64 }, %struct.dpu_lm_cfg { [16 x i8] c"lm_3\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 0, i32 800, i32 20, ptr @sdm845_lm_sblk, i32 8, i32 0, i32 1 }, %struct.dpu_lm_cfg { [16 x i8] c"lm_4\00\00\00\00\00\00\00\00\00\00\00\00", i32 5, i32 0, i32 800, i32 20, ptr @sdm845_lm_sblk, i32 8, i32 0, i32 1 }, %struct.dpu_lm_cfg { [16 x i8] c"lm_5\00\00\00\00\00\00\00\00\00\00\00\00", i32 6, i32 299008, i32 800, i32 20, ptr @sdm845_lm_sblk, i32 4, i32 0, i32 8 }], align 4
@sdm845_pp = internal constant [4 x %struct.dpu_pingpong_cfg] [%struct.dpu_pingpong_cfg { [16 x i8] c"pingpong_0\00\00\00\00\00\00", i32 1, i32 458752, i32 212, i32 36, i32 0, i32 8, i32 12, ptr @sdm845_pp_sblk_te }, %struct.dpu_pingpong_cfg { [16 x i8] c"pingpong_1\00\00\00\00\00\00", i32 2, i32 460800, i32 212, i32 36, i32 0, i32 9, i32 13, ptr @sdm845_pp_sblk_te }, %struct.dpu_pingpong_cfg { [16 x i8] c"pingpong_2\00\00\00\00\00\00", i32 3, i32 462848, i32 212, i32 32, i32 0, i32 10, i32 14, ptr @sdm845_pp_sblk }, %struct.dpu_pingpong_cfg { [16 x i8] c"pingpong_3\00\00\00\00\00\00", i32 4, i32 464896, i32 212, i32 32, i32 0, i32 11, i32 15, ptr @sdm845_pp_sblk }], align 4
@sdm845_intf = internal constant [4 x %struct.dpu_intf_cfg] [%struct.dpu_intf_cfg { [16 x i8] c"intf_0\00\00\00\00\00\00\00\00\00\00", i32 1, i32 434176, i32 640, i32 0, i32 10, i32 0, i32 24, i32 24, i32 25 }, %struct.dpu_intf_cfg { [16 x i8] c"intf_1\00\00\00\00\00\00\00\00\00\00", i32 2, i32 436224, i32 640, i32 0, i32 1, i32 0, i32 24, i32 26, i32 27 }, %struct.dpu_intf_cfg { [16 x i8] c"intf_2\00\00\00\00\00\00\00\00\00\00", i32 3, i32 438272, i32 640, i32 0, i32 1, i32 1, i32 24, i32 28, i32 29 }, %struct.dpu_intf_cfg { [16 x i8] c"intf_3\00\00\00\00\00\00\00\00\00\00", i32 4, i32 440320, i32 640, i32 0, i32 10, i32 1, i32 24, i32 30, i32 31 }], align 4
@sdm845_vbif = internal constant [1 x %struct.dpu_vbif_cfg] [%struct.dpu_vbif_cfg { [16 x i8] c"vbif_0\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0, i32 4160, i32 4, i32 0, i32 0, i32 16384, %struct.dpu_vbif_dynamic_ot_tbl zeroinitializer, %struct.dpu_vbif_dynamic_ot_tbl zeroinitializer, %struct.dpu_vbif_qos_tbl { i32 8, ptr @sdm845_rt_pri_lvl }, %struct.dpu_vbif_qos_tbl { i32 8, ptr @sdm845_nrt_pri_lvl }, i32 14, [16 x i32] [i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 0, i32 0] }], align 4
@sdm845_regdma = internal unnamed_addr constant %struct.dpu_reg_dma_cfg { [16 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 1, i32 4508, i32 0, i32 0 }, align 4
@sdm845_perf_data = internal unnamed_addr constant %struct.dpu_perf_cfg { i32 6800000, i32 6800000, i32 2400000, i32 800000, i32 800000, i32 2, i32 2, i32 3, i32 4, i32 8, i32 1, i32 1, i32 25, i32 24, i32 105, i32 120, [3 x i32] [i32 65520, i32 61440, i32 65535], [3 x i32] [i32 15, i32 65535, i32 0], [3 x %struct.dpu_qos_lut_tbl] [%struct.dpu_qos_lut_tbl { i32 12, ptr @sdm845_qos_linear }, %struct.dpu_qos_lut_tbl { i32 6, ptr @sdm845_qos_macrotile }, %struct.dpu_qos_lut_tbl { i32 1, ptr @sdm845_qos_nrt }], [2 x %struct.dpu_perf_cdp_cfg] [%struct.dpu_perf_cdp_cfg { i8 1, i8 1 }, %struct.dpu_perf_cdp_cfg { i8 1, i8 0 }] }, align 4
@sdm845_vig_sblk_0 = internal constant %struct.dpu_sspp_sub_blks { i32 0, i32 0, i32 4, i32 20, i32 5, i32 0, i32 0, %struct.dpu_src_blk { [16 x i8] c"sspp_src_0\00\00\00\00\00\00", i32 1, i32 0, i32 336 }, %struct.dpu_scaler_blk { [16 x i8] c"sspp_scaler0\00\00\00\00", i32 3, i32 2560, i32 160, i32 0 }, %struct.dpu_pp_blk { [16 x i8] c"sspp_csc0\00\00\00\00\00\00\00", i32 8, i32 6656, i32 256, i32 0 }, %struct.dpu_pp_blk zeroinitializer, %struct.dpu_pp_blk zeroinitializer, %struct.dpu_pp_blk zeroinitializer, %struct.dpu_pp_blk zeroinitializer, ptr @plane_formats_yuv, i32 38, ptr @plane_formats, i32 28 }, align 4
@sdm845_vig_sblk_1 = internal constant %struct.dpu_sspp_sub_blks { i32 0, i32 0, i32 4, i32 20, i32 6, i32 0, i32 0, %struct.dpu_src_blk { [16 x i8] c"sspp_src_1\00\00\00\00\00\00", i32 1, i32 0, i32 336 }, %struct.dpu_scaler_blk { [16 x i8] c"sspp_scaler1\00\00\00\00", i32 3, i32 2560, i32 160, i32 0 }, %struct.dpu_pp_blk { [16 x i8] c"sspp_csc1\00\00\00\00\00\00\00", i32 8, i32 6656, i32 256, i32 0 }, %struct.dpu_pp_blk zeroinitializer, %struct.dpu_pp_blk zeroinitializer, %struct.dpu_pp_blk zeroinitializer, %struct.dpu_pp_blk zeroinitializer, ptr @plane_formats_yuv, i32 38, ptr @plane_formats, i32 28 }, align 4
@sdm845_vig_sblk_2 = internal constant %struct.dpu_sspp_sub_blks { i32 0, i32 0, i32 4, i32 20, i32 7, i32 0, i32 0, %struct.dpu_src_blk { [16 x i8] c"sspp_src_2\00\00\00\00\00\00", i32 1, i32 0, i32 336 }, %struct.dpu_scaler_blk { [16 x i8] c"sspp_scaler2\00\00\00\00", i32 3, i32 2560, i32 160, i32 0 }, %struct.dpu_pp_blk { [16 x i8] c"sspp_csc2\00\00\00\00\00\00\00", i32 8, i32 6656, i32 256, i32 0 }, %struct.dpu_pp_blk zeroinitializer, %struct.dpu_pp_blk zeroinitializer, %struct.dpu_pp_blk zeroinitializer, %struct.dpu_pp_blk zeroinitializer, ptr @plane_formats_yuv, i32 38, ptr @plane_formats, i32 28 }, align 4
@sdm845_vig_sblk_3 = internal constant %struct.dpu_sspp_sub_blks { i32 0, i32 0, i32 4, i32 20, i32 8, i32 0, i32 0, %struct.dpu_src_blk { [16 x i8] c"sspp_src_3\00\00\00\00\00\00", i32 1, i32 0, i32 336 }, %struct.dpu_scaler_blk { [16 x i8] c"sspp_scaler3\00\00\00\00", i32 3, i32 2560, i32 160, i32 0 }, %struct.dpu_pp_blk { [16 x i8] c"sspp_csc3\00\00\00\00\00\00\00", i32 8, i32 6656, i32 256, i32 0 }, %struct.dpu_pp_blk zeroinitializer, %struct.dpu_pp_blk zeroinitializer, %struct.dpu_pp_blk zeroinitializer, %struct.dpu_pp_blk zeroinitializer, ptr @plane_formats_yuv, i32 38, ptr @plane_formats, i32 28 }, align 4
@sdm845_dma_sblk_0 = internal constant %struct.dpu_sspp_sub_blks { i32 0, i32 0, i32 1, i32 1, i32 1, i32 0, i32 0, %struct.dpu_src_blk { [16 x i8] c"sspp_src_8\00\00\00\00\00\00", i32 1, i32 0, i32 336 }, %struct.dpu_scaler_blk zeroinitializer, %struct.dpu_pp_blk zeroinitializer, %struct.dpu_pp_blk zeroinitializer, %struct.dpu_pp_blk zeroinitializer, %struct.dpu_pp_blk zeroinitializer, %struct.dpu_pp_blk zeroinitializer, ptr @plane_formats, i32 28, ptr @plane_formats, i32 28 }, align 4
@sdm845_dma_sblk_1 = internal constant %struct.dpu_sspp_sub_blks { i32 0, i32 0, i32 1, i32 1, i32 2, i32 0, i32 0, %struct.dpu_src_blk { [16 x i8] c"sspp_src_9\00\00\00\00\00\00", i32 1, i32 0, i32 336 }, %struct.dpu_scaler_blk zeroinitializer, %struct.dpu_pp_blk zeroinitializer, %struct.dpu_pp_blk zeroinitializer, %struct.dpu_pp_blk zeroinitializer, %struct.dpu_pp_blk zeroinitializer, %struct.dpu_pp_blk zeroinitializer, ptr @plane_formats, i32 28, ptr @plane_formats, i32 28 }, align 4
@sdm845_dma_sblk_2 = internal constant %struct.dpu_sspp_sub_blks { i32 0, i32 0, i32 1, i32 1, i32 3, i32 0, i32 0, %struct.dpu_src_blk { [16 x i8] c"sspp_src_10\00\00\00\00\00", i32 1, i32 0, i32 336 }, %struct.dpu_scaler_blk zeroinitializer, %struct.dpu_pp_blk zeroinitializer, %struct.dpu_pp_blk zeroinitializer, %struct.dpu_pp_blk zeroinitializer, %struct.dpu_pp_blk zeroinitializer, %struct.dpu_pp_blk zeroinitializer, ptr @plane_formats, i32 28, ptr @plane_formats, i32 28 }, align 4
@sdm845_dma_sblk_3 = internal constant %struct.dpu_sspp_sub_blks { i32 0, i32 0, i32 1, i32 1, i32 4, i32 0, i32 0, %struct.dpu_src_blk { [16 x i8] c"sspp_src_11\00\00\00\00\00", i32 1, i32 0, i32 336 }, %struct.dpu_scaler_blk zeroinitializer, %struct.dpu_pp_blk zeroinitializer, %struct.dpu_pp_blk zeroinitializer, %struct.dpu_pp_blk zeroinitializer, %struct.dpu_pp_blk zeroinitializer, %struct.dpu_pp_blk zeroinitializer, ptr @plane_formats, i32 28, ptr @plane_formats, i32 28 }, align 4
@plane_formats_yuv = internal constant [38 x i32] [i32 875713089, i32 875708993, i32 875708754, i32 875714626, i32 875708738, i32 875713112, i32 875709016, i32 875714642, i32 875710290, i32 875710274, i32 909199186, i32 909199170, i32 892424769, i32 892420673, i32 892420434, i32 892420418, i32 892424792, i32 892420696, i32 892426322, i32 892426306, i32 842093121, i32 842089025, i32 842088786, i32 842088770, i32 842093144, i32 842089048, i32 842094674, i32 842094658, i32 842094158, i32 825382478, i32 909203022, i32 825644622, i32 1498765654, i32 1498831189, i32 1448695129, i32 1431918169, i32 842093913, i32 842094169], align 4
@plane_formats = internal constant [28 x i32] [i32 875713089, i32 875708993, i32 875708754, i32 875708738, i32 875713112, i32 875714642, i32 875714626, i32 875709016, i32 875710290, i32 875710274, i32 909199186, i32 909199170, i32 892424769, i32 892420673, i32 892420434, i32 892420418, i32 892424792, i32 892420696, i32 892426322, i32 892426306, i32 842093121, i32 842089025, i32 842088786, i32 842088770, i32 842093144, i32 842089048, i32 842094674, i32 842094658], align 4
@sdm845_lm_sblk = internal constant %struct.dpu_lm_sub_blks { i32 2560, i32 11, [12 x i32] [i32 32, i32 56, i32 80, i32 104, i32 128, i32 152, i32 176, i32 200, i32 224, i32 248, i32 272, i32 0], %struct.dpu_pp_blk zeroinitializer }, align 4
@sdm845_pp_sblk_te = internal constant %struct.dpu_pingpong_sub_blks { %struct.dpu_pp_blk zeroinitializer, %struct.dpu_pp_blk { [16 x i8] zeroinitializer, i32 2, i32 8192, i32 0, i32 1 }, %struct.dpu_pp_blk { [16 x i8] zeroinitializer, i32 5, i32 12512, i32 32, i32 65536 } }, align 4
@sdm845_pp_sblk = internal constant %struct.dpu_pingpong_sub_blks { %struct.dpu_pp_blk zeroinitializer, %struct.dpu_pp_blk zeroinitializer, %struct.dpu_pp_blk { [16 x i8] zeroinitializer, i32 5, i32 12512, i32 32, i32 65536 } }, align 4
@sdm845_rt_pri_lvl = internal constant [8 x i32] [i32 3, i32 3, i32 4, i32 4, i32 5, i32 5, i32 6, i32 6], align 4
@sdm845_nrt_pri_lvl = internal constant [8 x i32] [i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3], align 4
@sdm845_qos_linear = internal constant [12 x %struct.dpu_qos_lut_entry] [%struct.dpu_qos_lut_entry { i32 4, i64 855 }, %struct.dpu_qos_lut_entry { i32 5, i64 13143 }, %struct.dpu_qos_lut_entry { i32 6, i64 144215 }, %struct.dpu_qos_lut_entry { i32 7, i64 2241367 }, %struct.dpu_qos_lut_entry { i32 8, i64 35795799 }, %struct.dpu_qos_lut_entry { i32 9, i64 572666711 }, %struct.dpu_qos_lut_entry { i32 10, i64 9162601303 }, %struct.dpu_qos_lut_entry { i32 11, i64 146601554775 }, %struct.dpu_qos_lut_entry { i32 12, i64 2345624810327 }, %struct.dpu_qos_lut_entry { i32 13, i64 37529996899159 }, %struct.dpu_qos_lut_entry { i32 14, i64 319004973609815 }, %struct.dpu_qos_lut_entry { i32 0, i64 4822604600980311 }], align 8
@sdm845_qos_macrotile = internal constant [6 x %struct.dpu_qos_lut_entry] [%struct.dpu_qos_lut_entry { i32 10, i64 14031349367 }, %struct.dpu_qos_lut_entry { i32 11, i64 220189779575 }, %struct.dpu_qos_lut_entry { i32 12, i64 2419213035127 }, %struct.dpu_qos_lut_entry { i32 13, i64 37603585123959 }, %struct.dpu_qos_lut_entry { i32 14, i64 319078561834615 }, %struct.dpu_qos_lut_entry { i32 0, i64 77162846715471479 }], align 8
@sdm845_qos_nrt = internal constant [1 x %struct.dpu_qos_lut_entry] zeroinitializer, align 8
@sm8150_dpu_caps = internal constant %struct.dpu_caps { i32 2560, i32 11, i32 3, i32 14, i32 768, i8 1, i8 1, i8 1, i8 1, i32 4096, i32 51200, i32 4, i32 4 }, align 4
@sm8150_ctl = internal constant [6 x %struct.dpu_ctl_cfg] [%struct.dpu_ctl_cfg { [16 x i8] c"ctl_0\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 4096, i32 480, i32 6, i32 41 }, %struct.dpu_ctl_cfg { [16 x i8] c"ctl_1\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 4608, i32 480, i32 6, i32 42 }, %struct.dpu_ctl_cfg { [16 x i8] c"ctl_2\00\00\00\00\00\00\00\00\00\00\00", i32 3, i32 5120, i32 480, i32 4, i32 43 }, %struct.dpu_ctl_cfg { [16 x i8] c"ctl_3\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 5632, i32 480, i32 4, i32 44 }, %struct.dpu_ctl_cfg { [16 x i8] c"ctl_4\00\00\00\00\00\00\00\00\00\00\00", i32 5, i32 6144, i32 480, i32 4, i32 45 }, %struct.dpu_ctl_cfg { [16 x i8] c"ctl_5\00\00\00\00\00\00\00\00\00\00\00", i32 6, i32 6656, i32 480, i32 4, i32 55 }], align 4
@sm8150_lm = internal constant [6 x %struct.dpu_lm_cfg] [%struct.dpu_lm_cfg { [16 x i8] c"lm_0\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 278528, i32 800, i32 20, ptr @sdm845_lm_sblk, i32 1, i32 1, i32 4 }, %struct.dpu_lm_cfg { [16 x i8] c"lm_1\00\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 282624, i32 800, i32 20, ptr @sdm845_lm_sblk, i32 2, i32 2, i32 2 }, %struct.dpu_lm_cfg { [16 x i8] c"lm_2\00\00\00\00\00\00\00\00\00\00\00\00", i32 3, i32 286720, i32 800, i32 20, ptr @sdm845_lm_sblk, i32 3, i32 0, i32 16 }, %struct.dpu_lm_cfg { [16 x i8] c"lm_3\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 290816, i32 800, i32 20, ptr @sdm845_lm_sblk, i32 4, i32 0, i32 8 }, %struct.dpu_lm_cfg { [16 x i8] c"lm_4\00\00\00\00\00\00\00\00\00\00\00\00", i32 5, i32 294912, i32 800, i32 20, ptr @sdm845_lm_sblk, i32 5, i32 0, i32 64 }, %struct.dpu_lm_cfg { [16 x i8] c"lm_5\00\00\00\00\00\00\00\00\00\00\00\00", i32 6, i32 299008, i32 800, i32 20, ptr @sdm845_lm_sblk, i32 6, i32 0, i32 32 }], align 4
@sm8150_pp = internal constant [6 x %struct.dpu_pingpong_cfg] [%struct.dpu_pingpong_cfg { [16 x i8] c"pingpong_0\00\00\00\00\00\00", i32 1, i32 458752, i32 212, i32 36, i32 1, i32 8, i32 12, ptr @sdm845_pp_sblk_te }, %struct.dpu_pingpong_cfg { [16 x i8] c"pingpong_1\00\00\00\00\00\00", i32 2, i32 460800, i32 212, i32 36, i32 1, i32 9, i32 13, ptr @sdm845_pp_sblk_te }, %struct.dpu_pingpong_cfg { [16 x i8] c"pingpong_2\00\00\00\00\00\00", i32 3, i32 462848, i32 212, i32 32, i32 2, i32 10, i32 14, ptr @sdm845_pp_sblk }, %struct.dpu_pingpong_cfg { [16 x i8] c"pingpong_3\00\00\00\00\00\00", i32 4, i32 464896, i32 212, i32 32, i32 2, i32 11, i32 15, ptr @sdm845_pp_sblk }, %struct.dpu_pingpong_cfg { [16 x i8] c"pingpong_4\00\00\00\00\00\00", i32 5, i32 466944, i32 212, i32 32, i32 3, i32 62, i32 -1, ptr @sdm845_pp_sblk }, %struct.dpu_pingpong_cfg { [16 x i8] c"pingpong_5\00\00\00\00\00\00", i32 6, i32 468992, i32 212, i32 32, i32 3, i32 63, i32 -1, ptr @sdm845_pp_sblk }], align 4
@sm8150_merge_3d = internal constant [3 x %struct.dpu_merge_3d_cfg] [%struct.dpu_merge_3d_cfg { [16 x i8] c"merge_3d_0\00\00\00\00\00\00", i32 1, i32 536576, i32 256, i32 0, ptr null }, %struct.dpu_merge_3d_cfg { [16 x i8] c"merge_3d_1\00\00\00\00\00\00", i32 2, i32 536832, i32 256, i32 0, ptr null }, %struct.dpu_merge_3d_cfg { [16 x i8] c"merge_3d_2\00\00\00\00\00\00", i32 3, i32 537088, i32 256, i32 0, ptr null }], align 4
@sm8150_intf = internal constant [4 x %struct.dpu_intf_cfg] [%struct.dpu_intf_cfg { [16 x i8] c"intf_0\00\00\00\00\00\00\00\00\00\00", i32 1, i32 434176, i32 640, i32 6, i32 10, i32 0, i32 24, i32 24, i32 25 }, %struct.dpu_intf_cfg { [16 x i8] c"intf_1\00\00\00\00\00\00\00\00\00\00", i32 2, i32 436224, i32 640, i32 6, i32 1, i32 0, i32 24, i32 26, i32 27 }, %struct.dpu_intf_cfg { [16 x i8] c"intf_2\00\00\00\00\00\00\00\00\00\00", i32 3, i32 438272, i32 640, i32 6, i32 1, i32 1, i32 24, i32 28, i32 29 }, %struct.dpu_intf_cfg { [16 x i8] c"intf_3\00\00\00\00\00\00\00\00\00\00", i32 4, i32 440320, i32 640, i32 6, i32 10, i32 1, i32 24, i32 30, i32 31 }], align 4
@sm8150_regdma = internal unnamed_addr constant %struct.dpu_reg_dma_cfg { [16 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 65537, i32 4508, i32 0, i32 0 }, align 4
@sm8150_dspp = internal constant [4 x %struct.dpu_dspp_cfg] [%struct.dpu_dspp_cfg { [16 x i8] c"dspp_0\00\00\00\00\00\00\00\00\00\00", i32 1, i32 344064, i32 6144, i32 2, ptr @sm8150_dspp_sblk }, %struct.dpu_dspp_cfg { [16 x i8] c"dspp_1\00\00\00\00\00\00\00\00\00\00", i32 2, i32 352256, i32 6144, i32 2, ptr @sm8150_dspp_sblk }, %struct.dpu_dspp_cfg { [16 x i8] c"dspp_2\00\00\00\00\00\00\00\00\00\00", i32 3, i32 360448, i32 6144, i32 2, ptr @sm8150_dspp_sblk }, %struct.dpu_dspp_cfg { [16 x i8] c"dspp_3\00\00\00\00\00\00\00\00\00\00", i32 4, i32 368640, i32 6144, i32 2, ptr @sm8150_dspp_sblk }], align 4
@sm8150_perf_data = internal unnamed_addr constant %struct.dpu_perf_cfg { i32 12800000, i32 12800000, i32 2400000, i32 800000, i32 800000, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 24, i32 105, i32 120, [3 x i32] [i32 65528, i32 61440, i32 65535], [3 x i32] [i32 15, i32 65535, i32 0], [3 x %struct.dpu_qos_lut_tbl] [%struct.dpu_qos_lut_tbl { i32 1, ptr @sm8150_qos_linear }, %struct.dpu_qos_lut_tbl { i32 1, ptr @sc7180_qos_macrotile }, %struct.dpu_qos_lut_tbl { i32 1, ptr @sc7180_qos_nrt }], [2 x %struct.dpu_perf_cdp_cfg] [%struct.dpu_perf_cdp_cfg { i8 1, i8 1 }, %struct.dpu_perf_cdp_cfg { i8 1, i8 0 }] }, align 4
@sm8150_dspp_sblk = internal constant %struct.dpu_dspp_sub_blks { %struct.dpu_pp_blk zeroinitializer, %struct.dpu_pp_blk { [16 x i8] zeroinitializer, i32 1, i32 5888, i32 144, i32 262144 } }, align 4
@sm8150_qos_linear = internal constant [1 x %struct.dpu_qos_lut_entry] [%struct.dpu_qos_lut_entry { i32 0, i64 4822604600980311 }], align 8
@sc7180_qos_macrotile = internal constant [1 x %struct.dpu_qos_lut_entry] [%struct.dpu_qos_lut_entry { i32 0, i64 4822678189205111 }], align 8
@sc7180_qos_nrt = internal constant [1 x %struct.dpu_qos_lut_entry] zeroinitializer, align 8
@sm8250_dpu_caps = internal constant %struct.dpu_caps { i32 2560, i32 11, i32 4, i32 14, i32 1024, i8 1, i8 1, i8 1, i8 1, i32 4096, i32 51200, i32 0, i32 0 }, align 4
@sm8250_mdp = internal constant [1 x %struct.dpu_mdp_cfg] [%struct.dpu_mdp_cfg { [16 x i8] c"top_0\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 0, i32 1172, i32 0, i32 3, i32 0, [16 x %struct.dpu_clk_ctrl_reg] [%struct.dpu_clk_ctrl_reg zeroinitializer, %struct.dpu_clk_ctrl_reg { i32 684, i32 0 }, %struct.dpu_clk_ctrl_reg { i32 692, i32 0 }, %struct.dpu_clk_ctrl_reg { i32 700, i32 0 }, %struct.dpu_clk_ctrl_reg { i32 708, i32 0 }, %struct.dpu_clk_ctrl_reg zeroinitializer, %struct.dpu_clk_ctrl_reg zeroinitializer, %struct.dpu_clk_ctrl_reg zeroinitializer, %struct.dpu_clk_ctrl_reg zeroinitializer, %struct.dpu_clk_ctrl_reg zeroinitializer, %struct.dpu_clk_ctrl_reg { i32 684, i32 8 }, %struct.dpu_clk_ctrl_reg { i32 692, i32 8 }, %struct.dpu_clk_ctrl_reg { i32 700, i32 8 }, %struct.dpu_clk_ctrl_reg { i32 708, i32 8 }, %struct.dpu_clk_ctrl_reg zeroinitializer, %struct.dpu_clk_ctrl_reg { i32 700, i32 20 }] }], align 4
@sm8250_sspp = internal constant [8 x %struct.dpu_sspp_cfg] [%struct.dpu_sspp_cfg { [16 x i8] c"sspp_0\00\00\00\00\00\00\00\00\00\00", i32 1, i32 16384, i32 456, i32 171282, ptr @sm8250_vig_sblk_0, i32 0, i32 1, i32 0 }, %struct.dpu_sspp_cfg { [16 x i8] c"sspp_1\00\00\00\00\00\00\00\00\00\00", i32 2, i32 24576, i32 456, i32 171282, ptr @sm8250_vig_sblk_1, i32 4, i32 2, i32 0 }, %struct.dpu_sspp_cfg { [16 x i8] c"sspp_2\00\00\00\00\00\00\00\00\00\00", i32 3, i32 32768, i32 456, i32 171282, ptr @sm8250_vig_sblk_2, i32 8, i32 3, i32 0 }, %struct.dpu_sspp_cfg { [16 x i8] c"sspp_3\00\00\00\00\00\00\00\00\00\00", i32 4, i32 40960, i32 456, i32 171282, ptr @sm8250_vig_sblk_3, i32 12, i32 4, i32 0 }, %struct.dpu_sspp_cfg { [16 x i8] c"sspp_8\00\00\00\00\00\00\00\00\00\00", i32 9, i32 147456, i32 456, i32 236546, ptr @sdm845_dma_sblk_0, i32 1, i32 10, i32 2 }, %struct.dpu_sspp_cfg { [16 x i8] c"sspp_9\00\00\00\00\00\00\00\00\00\00", i32 10, i32 155648, i32 456, i32 236546, ptr @sdm845_dma_sblk_1, i32 5, i32 11, i32 2 }, %struct.dpu_sspp_cfg { [16 x i8] c"sspp_10\00\00\00\00\00\00\00\00\00", i32 11, i32 163840, i32 456, i32 237058, ptr @sdm845_dma_sblk_2, i32 9, i32 12, i32 2 }, %struct.dpu_sspp_cfg { [16 x i8] c"sspp_11\00\00\00\00\00\00\00\00\00", i32 12, i32 172032, i32 456, i32 237058, ptr @sdm845_dma_sblk_3, i32 13, i32 13, i32 2 }], align 4
@sm8250_regdma = internal unnamed_addr constant %struct.dpu_reg_dma_cfg { [16 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 65538, i32 4508, i32 7, i32 15 }, align 4
@sm8250_perf_data = internal unnamed_addr constant %struct.dpu_perf_cfg { i32 13700000, i32 16600000, i32 4800000, i32 0, i32 800000, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 35, i32 105, i32 120, [3 x i32] [i32 65520, i32 65280, i32 65535], [3 x i32] [i32 15, i32 65535, i32 0], [3 x %struct.dpu_qos_lut_tbl] [%struct.dpu_qos_lut_tbl { i32 1, ptr @sc7180_qos_linear }, %struct.dpu_qos_lut_tbl { i32 1, ptr @sc7180_qos_macrotile }, %struct.dpu_qos_lut_tbl { i32 1, ptr @sc7180_qos_nrt }], [2 x %struct.dpu_perf_cdp_cfg] [%struct.dpu_perf_cdp_cfg { i8 1, i8 1 }, %struct.dpu_perf_cdp_cfg { i8 1, i8 0 }] }, align 4
@sm8250_vig_sblk_0 = internal constant %struct.dpu_sspp_sub_blks { i32 0, i32 0, i32 4, i32 20, i32 5, i32 0, i32 0, %struct.dpu_src_blk { [16 x i8] c"sspp_src_0\00\00\00\00\00\00", i32 1, i32 0, i32 336 }, %struct.dpu_scaler_blk { [16 x i8] c"sspp_scaler0\00\00\00\00", i32 4, i32 2560, i32 160, i32 0 }, %struct.dpu_pp_blk { [16 x i8] c"sspp_csc0\00\00\00\00\00\00\00", i32 8, i32 6656, i32 256, i32 0 }, %struct.dpu_pp_blk zeroinitializer, %struct.dpu_pp_blk zeroinitializer, %struct.dpu_pp_blk zeroinitializer, %struct.dpu_pp_blk zeroinitializer, ptr @plane_formats_yuv, i32 38, ptr @plane_formats, i32 28 }, align 4
@sm8250_vig_sblk_1 = internal constant %struct.dpu_sspp_sub_blks { i32 0, i32 0, i32 4, i32 20, i32 6, i32 0, i32 0, %struct.dpu_src_blk { [16 x i8] c"sspp_src_1\00\00\00\00\00\00", i32 1, i32 0, i32 336 }, %struct.dpu_scaler_blk { [16 x i8] c"sspp_scaler1\00\00\00\00", i32 4, i32 2560, i32 160, i32 0 }, %struct.dpu_pp_blk { [16 x i8] c"sspp_csc1\00\00\00\00\00\00\00", i32 8, i32 6656, i32 256, i32 0 }, %struct.dpu_pp_blk zeroinitializer, %struct.dpu_pp_blk zeroinitializer, %struct.dpu_pp_blk zeroinitializer, %struct.dpu_pp_blk zeroinitializer, ptr @plane_formats_yuv, i32 38, ptr @plane_formats, i32 28 }, align 4
@sm8250_vig_sblk_2 = internal constant %struct.dpu_sspp_sub_blks { i32 0, i32 0, i32 4, i32 20, i32 7, i32 0, i32 0, %struct.dpu_src_blk { [16 x i8] c"sspp_src_2\00\00\00\00\00\00", i32 1, i32 0, i32 336 }, %struct.dpu_scaler_blk { [16 x i8] c"sspp_scaler2\00\00\00\00", i32 4, i32 2560, i32 160, i32 0 }, %struct.dpu_pp_blk { [16 x i8] c"sspp_csc2\00\00\00\00\00\00\00", i32 8, i32 6656, i32 256, i32 0 }, %struct.dpu_pp_blk zeroinitializer, %struct.dpu_pp_blk zeroinitializer, %struct.dpu_pp_blk zeroinitializer, %struct.dpu_pp_blk zeroinitializer, ptr @plane_formats_yuv, i32 38, ptr @plane_formats, i32 28 }, align 4
@sm8250_vig_sblk_3 = internal constant %struct.dpu_sspp_sub_blks { i32 0, i32 0, i32 4, i32 20, i32 8, i32 0, i32 0, %struct.dpu_src_blk { [16 x i8] c"sspp_src_3\00\00\00\00\00\00", i32 1, i32 0, i32 336 }, %struct.dpu_scaler_blk { [16 x i8] c"sspp_scaler3\00\00\00\00", i32 4, i32 2560, i32 160, i32 0 }, %struct.dpu_pp_blk { [16 x i8] c"sspp_csc3\00\00\00\00\00\00\00", i32 8, i32 6656, i32 256, i32 0 }, %struct.dpu_pp_blk zeroinitializer, %struct.dpu_pp_blk zeroinitializer, %struct.dpu_pp_blk zeroinitializer, %struct.dpu_pp_blk zeroinitializer, ptr @plane_formats_yuv, i32 38, ptr @plane_formats, i32 28 }, align 4
@sc7180_qos_linear = internal constant [1 x %struct.dpu_qos_lut_entry] [%struct.dpu_qos_lut_entry { i32 0, i64 4822604602103671 }], align 8
@sc7180_dpu_caps = internal constant %struct.dpu_caps { i32 2560, i32 9, i32 5, i32 14, i32 512, i8 0, i8 1, i8 1, i8 0, i32 2560, i32 51200, i32 0, i32 0 }, align 4
@sc7180_mdp = internal constant [1 x %struct.dpu_mdp_cfg] [%struct.dpu_mdp_cfg { [16 x i8] c"top_0\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 0, i32 1172, i32 0, i32 3, i32 0, [16 x %struct.dpu_clk_ctrl_reg] [%struct.dpu_clk_ctrl_reg zeroinitializer, %struct.dpu_clk_ctrl_reg { i32 684, i32 0 }, %struct.dpu_clk_ctrl_reg zeroinitializer, %struct.dpu_clk_ctrl_reg zeroinitializer, %struct.dpu_clk_ctrl_reg zeroinitializer, %struct.dpu_clk_ctrl_reg zeroinitializer, %struct.dpu_clk_ctrl_reg zeroinitializer, %struct.dpu_clk_ctrl_reg zeroinitializer, %struct.dpu_clk_ctrl_reg zeroinitializer, %struct.dpu_clk_ctrl_reg zeroinitializer, %struct.dpu_clk_ctrl_reg { i32 684, i32 8 }, %struct.dpu_clk_ctrl_reg zeroinitializer, %struct.dpu_clk_ctrl_reg { i32 692, i32 8 }, %struct.dpu_clk_ctrl_reg { i32 708, i32 8 }, %struct.dpu_clk_ctrl_reg zeroinitializer, %struct.dpu_clk_ctrl_reg zeroinitializer] }], align 4
@sc7180_ctl = internal constant [3 x %struct.dpu_ctl_cfg] [%struct.dpu_ctl_cfg { [16 x i8] c"ctl_0\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 4096, i32 228, i32 4, i32 41 }, %struct.dpu_ctl_cfg { [16 x i8] c"ctl_1\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 4608, i32 228, i32 4, i32 42 }, %struct.dpu_ctl_cfg { [16 x i8] c"ctl_2\00\00\00\00\00\00\00\00\00\00\00", i32 3, i32 5120, i32 228, i32 4, i32 43 }], align 4
@sc7180_sspp = internal constant [4 x %struct.dpu_sspp_cfg] [%struct.dpu_sspp_cfg { [16 x i8] c"sspp_0\00\00\00\00\00\00\00\00\00\00", i32 1, i32 16384, i32 456, i32 171298, ptr @sc7180_vig_sblk_0, i32 0, i32 1, i32 0 }, %struct.dpu_sspp_cfg { [16 x i8] c"sspp_8\00\00\00\00\00\00\00\00\00\00", i32 9, i32 147456, i32 456, i32 236546, ptr @sdm845_dma_sblk_0, i32 1, i32 10, i32 2 }, %struct.dpu_sspp_cfg { [16 x i8] c"sspp_9\00\00\00\00\00\00\00\00\00\00", i32 10, i32 155648, i32 456, i32 237058, ptr @sdm845_dma_sblk_1, i32 5, i32 12, i32 2 }, %struct.dpu_sspp_cfg { [16 x i8] c"sspp_10\00\00\00\00\00\00\00\00\00", i32 11, i32 163840, i32 456, i32 237058, ptr @sdm845_dma_sblk_2, i32 9, i32 13, i32 2 }], align 4
@sc7180_lm = internal constant [2 x %struct.dpu_lm_cfg] [%struct.dpu_lm_cfg { [16 x i8] c"lm_0\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 278528, i32 800, i32 16, ptr @sc7180_lm_sblk, i32 1, i32 1, i32 4 }, %struct.dpu_lm_cfg { [16 x i8] c"lm_1\00\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 282624, i32 800, i32 16, ptr @sc7180_lm_sblk, i32 2, i32 0, i32 2 }], align 4
@sc7180_pp = internal global [2 x %struct.dpu_pingpong_cfg] [%struct.dpu_pingpong_cfg { [16 x i8] c"pingpong_0\00\00\00\00\00\00", i32 1, i32 458752, i32 212, i32 36, i32 0, i32 -1, i32 -1, ptr @sdm845_pp_sblk_te }, %struct.dpu_pingpong_cfg { [16 x i8] c"pingpong_1\00\00\00\00\00\00", i32 2, i32 460800, i32 212, i32 36, i32 0, i32 -1, i32 -1, ptr @sdm845_pp_sblk_te }], align 4
@sc7180_intf = internal constant [2 x %struct.dpu_intf_cfg] [%struct.dpu_intf_cfg { [16 x i8] c"intf_0\00\00\00\00\00\00\00\00\00\00", i32 1, i32 434176, i32 640, i32 6, i32 10, i32 0, i32 24, i32 24, i32 25 }, %struct.dpu_intf_cfg { [16 x i8] c"intf_1\00\00\00\00\00\00\00\00\00\00", i32 2, i32 436224, i32 640, i32 6, i32 1, i32 0, i32 24, i32 26, i32 27 }], align 4
@sc7180_dspp = internal constant [1 x %struct.dpu_dspp_cfg] [%struct.dpu_dspp_cfg { [16 x i8] c"dspp_0\00\00\00\00\00\00\00\00\00\00", i32 1, i32 344064, i32 6144, i32 2, ptr @sc7180_dspp_sblk }], align 4
@sc7180_perf_data = internal unnamed_addr constant %struct.dpu_perf_cfg { i32 6800000, i32 6800000, i32 2400000, i32 800000, i32 1600000, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 24, i32 105, i32 120, [3 x i32] [i32 65520, i32 65280, i32 65535], [3 x i32] [i32 255, i32 65535, i32 0], [3 x %struct.dpu_qos_lut_tbl] [%struct.dpu_qos_lut_tbl { i32 1, ptr @sc7180_qos_linear }, %struct.dpu_qos_lut_tbl { i32 1, ptr @sc7180_qos_macrotile }, %struct.dpu_qos_lut_tbl { i32 1, ptr @sc7180_qos_nrt }], [2 x %struct.dpu_perf_cdp_cfg] [%struct.dpu_perf_cdp_cfg { i8 1, i8 1 }, %struct.dpu_perf_cdp_cfg { i8 1, i8 0 }] }, align 4
@sc7180_vig_sblk_0 = internal constant %struct.dpu_sspp_sub_blks { i32 0, i32 0, i32 4, i32 20, i32 4, i32 0, i32 0, %struct.dpu_src_blk { [16 x i8] c"sspp_src_0\00\00\00\00\00\00", i32 1, i32 0, i32 336 }, %struct.dpu_scaler_blk { [16 x i8] c"sspp_scaler0\00\00\00\00", i32 5, i32 2560, i32 160, i32 0 }, %struct.dpu_pp_blk { [16 x i8] c"sspp_csc0\00\00\00\00\00\00\00", i32 8, i32 6656, i32 256, i32 0 }, %struct.dpu_pp_blk zeroinitializer, %struct.dpu_pp_blk zeroinitializer, %struct.dpu_pp_blk zeroinitializer, %struct.dpu_pp_blk zeroinitializer, ptr @plane_formats_yuv, i32 38, ptr @plane_formats, i32 28 }, align 4
@sc7180_lm_sblk = internal constant %struct.dpu_lm_sub_blks { i32 2560, i32 7, [12 x i32] [i32 32, i32 56, i32 80, i32 104, i32 128, i32 152, i32 176, i32 0, i32 0, i32 0, i32 0, i32 0], %struct.dpu_pp_blk zeroinitializer }, align 4
@sc7180_dspp_sblk = internal constant %struct.dpu_dspp_sub_blks { %struct.dpu_pp_blk zeroinitializer, %struct.dpu_pp_blk { [16 x i8] zeroinitializer, i32 1, i32 5888, i32 144, i32 65536 } }, align 4
@sc7280_dpu_caps = internal constant %struct.dpu_caps { i32 2560, i32 7, i32 5, i32 14, i32 768, i8 0, i8 1, i8 1, i8 0, i32 2400, i32 51200, i32 0, i32 0 }, align 4
@sc7280_mdp = internal constant [1 x %struct.dpu_mdp_cfg] [%struct.dpu_mdp_cfg { [16 x i8] c"top_0\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 0, i32 8212, i32 0, i32 1, i32 0, [16 x %struct.dpu_clk_ctrl_reg] [%struct.dpu_clk_ctrl_reg zeroinitializer, %struct.dpu_clk_ctrl_reg { i32 684, i32 0 }, %struct.dpu_clk_ctrl_reg zeroinitializer, %struct.dpu_clk_ctrl_reg zeroinitializer, %struct.dpu_clk_ctrl_reg zeroinitializer, %struct.dpu_clk_ctrl_reg zeroinitializer, %struct.dpu_clk_ctrl_reg zeroinitializer, %struct.dpu_clk_ctrl_reg zeroinitializer, %struct.dpu_clk_ctrl_reg zeroinitializer, %struct.dpu_clk_ctrl_reg zeroinitializer, %struct.dpu_clk_ctrl_reg { i32 684, i32 8 }, %struct.dpu_clk_ctrl_reg zeroinitializer, %struct.dpu_clk_ctrl_reg { i32 692, i32 8 }, %struct.dpu_clk_ctrl_reg { i32 708, i32 8 }, %struct.dpu_clk_ctrl_reg zeroinitializer, %struct.dpu_clk_ctrl_reg zeroinitializer] }], align 4
@sc7280_ctl = internal constant [4 x %struct.dpu_ctl_cfg] [%struct.dpu_ctl_cfg { [16 x i8] c"ctl_0\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 86016, i32 488, i32 28, i32 41 }, %struct.dpu_ctl_cfg { [16 x i8] c"ctl_1\00\00\00\00\00\00\00\00\00\00\00", i32 2, i32 90112, i32 488, i32 28, i32 42 }, %struct.dpu_ctl_cfg { [16 x i8] c"ctl_2\00\00\00\00\00\00\00\00\00\00\00", i32 3, i32 94208, i32 488, i32 28, i32 43 }, %struct.dpu_ctl_cfg { [16 x i8] c"ctl_3\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 98304, i32 488, i32 28, i32 44 }], align 4
@sc7280_sspp = internal constant [4 x %struct.dpu_sspp_cfg] [%struct.dpu_sspp_cfg { [16 x i8] c"sspp_0\00\00\00\00\00\00\00\00\00\00", i32 1, i32 16384, i32 456, i32 171298, ptr @sc7180_vig_sblk_0, i32 0, i32 1, i32 0 }, %struct.dpu_sspp_cfg { [16 x i8] c"sspp_8\00\00\00\00\00\00\00\00\00\00", i32 9, i32 147456, i32 456, i32 236546, ptr @sdm845_dma_sblk_0, i32 1, i32 10, i32 2 }, %struct.dpu_sspp_cfg { [16 x i8] c"sspp_9\00\00\00\00\00\00\00\00\00\00", i32 10, i32 155648, i32 456, i32 237058, ptr @sdm845_dma_sblk_1, i32 5, i32 12, i32 2 }, %struct.dpu_sspp_cfg { [16 x i8] c"sspp_10\00\00\00\00\00\00\00\00\00", i32 11, i32 163840, i32 456, i32 237058, ptr @sdm845_dma_sblk_2, i32 9, i32 13, i32 2 }], align 4
@sc7280_lm = internal constant [3 x %struct.dpu_lm_cfg] [%struct.dpu_lm_cfg { [16 x i8] c"lm_0\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 278528, i32 800, i32 16, ptr @sc7180_lm_sblk, i32 1, i32 0, i32 1 }, %struct.dpu_lm_cfg { [16 x i8] c"lm_2\00\00\00\00\00\00\00\00\00\00\00\00", i32 3, i32 286720, i32 800, i32 16, ptr @sc7180_lm_sblk, i32 3, i32 0, i32 16 }, %struct.dpu_lm_cfg { [16 x i8] c"lm_3\00\00\00\00\00\00\00\00\00\00\00\00", i32 4, i32 290816, i32 800, i32 16, ptr @sc7180_lm_sblk, i32 4, i32 0, i32 8 }], align 4
@sc7280_pp = internal constant [4 x %struct.dpu_pingpong_cfg] [%struct.dpu_pingpong_cfg { [16 x i8] c"pingpong_0\00\00\00\00\00\00", i32 1, i32 364544, i32 212, i32 32, i32 0, i32 -1, i32 -1, ptr @sc7280_pp_sblk }, %struct.dpu_pingpong_cfg { [16 x i8] c"pingpong_1\00\00\00\00\00\00", i32 2, i32 434176, i32 212, i32 32, i32 0, i32 -1, i32 -1, ptr @sc7280_pp_sblk }, %struct.dpu_pingpong_cfg { [16 x i8] c"pingpong_2\00\00\00\00\00\00", i32 3, i32 438272, i32 212, i32 32, i32 0, i32 -1, i32 -1, ptr @sc7280_pp_sblk }, %struct.dpu_pingpong_cfg { [16 x i8] c"pingpong_3\00\00\00\00\00\00", i32 4, i32 442368, i32 212, i32 32, i32 0, i32 -1, i32 -1, ptr @sc7280_pp_sblk }], align 4
@sc7280_intf = internal constant [3 x %struct.dpu_intf_cfg] [%struct.dpu_intf_cfg { [16 x i8] c"intf_0\00\00\00\00\00\00\00\00\00\00", i32 1, i32 212992, i32 640, i32 14, i32 10, i32 0, i32 24, i32 24, i32 25 }, %struct.dpu_intf_cfg { [16 x i8] c"intf_1\00\00\00\00\00\00\00\00\00\00", i32 2, i32 217088, i32 640, i32 14, i32 1, i32 0, i32 24, i32 26, i32 27 }, %struct.dpu_intf_cfg { [16 x i8] c"intf_5\00\00\00\00\00\00\00\00\00\00", i32 6, i32 233472, i32 640, i32 14, i32 10, i32 1, i32 24, i32 22, i32 23 }], align 4
@sc7280_perf_data = internal unnamed_addr constant %struct.dpu_perf_cfg { i32 4700000, i32 8800000, i32 2500000, i32 0, i32 1600000, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 24, i32 105, i32 120, [3 x i32] [i32 65280, i32 65280, i32 65535], [3 x i32] [i32 65535, i32 65535, i32 0], [3 x %struct.dpu_qos_lut_tbl] [%struct.dpu_qos_lut_tbl { i32 1, ptr @sc7180_qos_macrotile }, %struct.dpu_qos_lut_tbl { i32 1, ptr @sc7180_qos_macrotile }, %struct.dpu_qos_lut_tbl { i32 1, ptr @sc7180_qos_nrt }], [2 x %struct.dpu_perf_cdp_cfg] [%struct.dpu_perf_cdp_cfg { i8 1, i8 1 }, %struct.dpu_perf_cdp_cfg { i8 1, i8 0 }] }, align 4
@sc7280_pp_sblk = internal constant %struct.dpu_pingpong_sub_blks { %struct.dpu_pp_blk zeroinitializer, %struct.dpu_pp_blk zeroinitializer, %struct.dpu_pp_blk { [16 x i8] zeroinitializer, i32 5, i32 224, i32 32, i32 131072 } }, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dpu_hw_catalog_deinit(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @kfree(ptr noundef %0) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @dpu_hw_catalog_init(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 268) #8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %18, label %5

5:                                                ; preds = %1
  switch i32 %0, label %16 [
    i32 1073741824, label %12
    i32 1073741825, label %6
    i32 1342177280, label %7
    i32 1342177281, label %8
    i32 1610612736, label %9
    i32 1610743808, label %10
    i32 1879179264, label %11
  ]

6:                                                ; preds = %5
  br label %12

7:                                                ; preds = %5
  br label %12

8:                                                ; preds = %5
  br label %12

9:                                                ; preds = %5
  br label %12

10:                                               ; preds = %5
  br label %12

11:                                               ; preds = %5
  br label %12

12:                                               ; preds = %11, %10, %9, %8, %7, %6, %5
  %13 = phi i32 [ 0, %5 ], [ 1, %6 ], [ 2, %7 ], [ 3, %8 ], [ 4, %9 ], [ 5, %10 ], [ 6, %11 ]
  %14 = getelementptr [7 x %struct.dpu_mdss_hw_cfg_handler], ptr @cfg_handler, i32 0, i32 %13, i32 1
  %15 = load ptr, ptr %14, align 4
  tail call void %15(ptr noundef nonnull %3) #7
  store i32 %0, ptr %3, align 8
  br label %18

16:                                               ; preds = %5
  %17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.dpu_hw_catalog_init, i32 noundef 1290, i32 noundef %0) #9
  tail call void @kfree(ptr noundef nonnull %3) #7
  br label %18

18:                                               ; preds = %16, %12, %1
  %19 = phi ptr [ %3, %12 ], [ inttoptr (i32 -19 to ptr), %16 ], [ inttoptr (i32 -12 to ptr), %1 ]
  ret ptr %19
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @sdm845_cfg_init(ptr noundef writeonly %0) #4 {
  store i32 0, ptr %0, align 4
  %2 = getelementptr inbounds i8, ptr %0, i32 4
  store ptr @sdm845_dpu_caps, ptr %2, align 4
  %3 = getelementptr inbounds i8, ptr %0, i32 8
  store i32 1, ptr %3, align 4
  %4 = getelementptr inbounds i8, ptr %0, i32 12
  store ptr @sdm845_mdp, ptr %4, align 4
  %5 = getelementptr inbounds i8, ptr %0, i32 16
  store i32 5, ptr %5, align 4
  %6 = getelementptr inbounds i8, ptr %0, i32 20
  store ptr @sdm845_ctl, ptr %6, align 4
  %7 = getelementptr inbounds i8, ptr %0, i32 24
  store i32 8, ptr %7, align 4
  %8 = getelementptr inbounds i8, ptr %0, i32 28
  store ptr @sdm845_sspp, ptr %8, align 4
  %9 = getelementptr inbounds i8, ptr %0, i32 32
  store i32 6, ptr %9, align 4
  %10 = getelementptr inbounds i8, ptr %0, i32 36
  store ptr @sdm845_lm, ptr %10, align 4
  %11 = getelementptr inbounds i8, ptr %0, i32 40
  store i32 4, ptr %11, align 4
  %12 = getelementptr inbounds i8, ptr %0, i32 44
  store ptr @sdm845_pp, ptr %12, align 4
  %13 = getelementptr inbounds i8, ptr %0, i32 48
  store i32 0, ptr %13, align 4
  %14 = getelementptr inbounds i8, ptr %0, i32 52
  store ptr null, ptr %14, align 4
  %15 = getelementptr inbounds i8, ptr %0, i32 56
  store i32 4, ptr %15, align 4
  %16 = getelementptr inbounds i8, ptr %0, i32 60
  store ptr @sdm845_intf, ptr %16, align 4
  %17 = getelementptr inbounds i8, ptr %0, i32 64
  store i32 1, ptr %17, align 4
  %18 = getelementptr inbounds i8, ptr %0, i32 68
  store ptr @sdm845_vbif, ptr %18, align 4
  %19 = getelementptr inbounds i8, ptr %0, i32 72
  store i32 1, ptr %19, align 4
  %20 = getelementptr inbounds i8, ptr %0, i32 76
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(48) %20, ptr noundef nonnull align 4 dereferenceable(48) @sdm845_regdma, i32 48, i1 false)
  %21 = getelementptr inbounds i8, ptr %0, i32 124
  store i32 0, ptr %21, align 4
  %22 = getelementptr inbounds i8, ptr %0, i32 128
  store i32 0, ptr %22, align 4
  %23 = getelementptr inbounds i8, ptr %0, i32 132
  store ptr null, ptr %23, align 4
  %24 = getelementptr inbounds i8, ptr %0, i32 136
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(116) %24, ptr noundef nonnull align 4 dereferenceable(116) @sdm845_perf_data, i32 116, i1 false)
  %25 = getelementptr inbounds i8, ptr %0, i32 252
  store ptr null, ptr %25, align 4
  %26 = getelementptr inbounds i8, ptr %0, i32 256
  store ptr null, ptr %26, align 4
  %27 = getelementptr inbounds i8, ptr %0, i32 260
  store ptr null, ptr %27, align 4
  %28 = getelementptr inbounds i8, ptr %0, i32 264
  store i32 1023, ptr %28, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @sm8150_cfg_init(ptr noundef writeonly %0) #4 {
  store i32 0, ptr %0, align 4
  %2 = getelementptr inbounds i8, ptr %0, i32 4
  store ptr @sm8150_dpu_caps, ptr %2, align 4
  %3 = getelementptr inbounds i8, ptr %0, i32 8
  store i32 1, ptr %3, align 4
  %4 = getelementptr inbounds i8, ptr %0, i32 12
  store ptr @sdm845_mdp, ptr %4, align 4
  %5 = getelementptr inbounds i8, ptr %0, i32 16
  store i32 6, ptr %5, align 4
  %6 = getelementptr inbounds i8, ptr %0, i32 20
  store ptr @sm8150_ctl, ptr %6, align 4
  %7 = getelementptr inbounds i8, ptr %0, i32 24
  store i32 8, ptr %7, align 4
  %8 = getelementptr inbounds i8, ptr %0, i32 28
  store ptr @sdm845_sspp, ptr %8, align 4
  %9 = getelementptr inbounds i8, ptr %0, i32 32
  store i32 6, ptr %9, align 4
  %10 = getelementptr inbounds i8, ptr %0, i32 36
  store ptr @sm8150_lm, ptr %10, align 4
  %11 = getelementptr inbounds i8, ptr %0, i32 40
  store i32 6, ptr %11, align 4
  %12 = getelementptr inbounds i8, ptr %0, i32 44
  store ptr @sm8150_pp, ptr %12, align 4
  %13 = getelementptr inbounds i8, ptr %0, i32 48
  store i32 3, ptr %13, align 4
  %14 = getelementptr inbounds i8, ptr %0, i32 52
  store ptr @sm8150_merge_3d, ptr %14, align 4
  %15 = getelementptr inbounds i8, ptr %0, i32 56
  store i32 4, ptr %15, align 4
  %16 = getelementptr inbounds i8, ptr %0, i32 60
  store ptr @sm8150_intf, ptr %16, align 4
  %17 = getelementptr inbounds i8, ptr %0, i32 64
  store i32 1, ptr %17, align 4
  %18 = getelementptr inbounds i8, ptr %0, i32 68
  store ptr @sdm845_vbif, ptr %18, align 4
  %19 = getelementptr inbounds i8, ptr %0, i32 72
  store i32 1, ptr %19, align 4
  %20 = getelementptr inbounds i8, ptr %0, i32 76
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(48) %20, ptr noundef nonnull align 4 dereferenceable(48) @sm8150_regdma, i32 48, i1 false)
  %21 = getelementptr inbounds i8, ptr %0, i32 124
  store i32 0, ptr %21, align 4
  %22 = getelementptr inbounds i8, ptr %0, i32 128
  store i32 4, ptr %22, align 4
  %23 = getelementptr inbounds i8, ptr %0, i32 132
  store ptr @sm8150_dspp, ptr %23, align 4
  %24 = getelementptr inbounds i8, ptr %0, i32 136
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(116) %24, ptr noundef nonnull align 4 dereferenceable(116) @sm8150_perf_data, i32 116, i1 false)
  %25 = getelementptr inbounds i8, ptr %0, i32 252
  store ptr null, ptr %25, align 4
  %26 = getelementptr inbounds i8, ptr %0, i32 256
  store ptr null, ptr %26, align 4
  %27 = getelementptr inbounds i8, ptr %0, i32 260
  store ptr null, ptr %27, align 4
  %28 = getelementptr inbounds i8, ptr %0, i32 264
  store i32 1023, ptr %28, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @sm8250_cfg_init(ptr noundef writeonly %0) #4 {
  store i32 0, ptr %0, align 4
  %2 = getelementptr inbounds i8, ptr %0, i32 4
  store ptr @sm8250_dpu_caps, ptr %2, align 4
  %3 = getelementptr inbounds i8, ptr %0, i32 8
  store i32 1, ptr %3, align 4
  %4 = getelementptr inbounds i8, ptr %0, i32 12
  store ptr @sm8250_mdp, ptr %4, align 4
  %5 = getelementptr inbounds i8, ptr %0, i32 16
  store i32 6, ptr %5, align 4
  %6 = getelementptr inbounds i8, ptr %0, i32 20
  store ptr @sm8150_ctl, ptr %6, align 4
  %7 = getelementptr inbounds i8, ptr %0, i32 24
  store i32 8, ptr %7, align 4
  %8 = getelementptr inbounds i8, ptr %0, i32 28
  store ptr @sm8250_sspp, ptr %8, align 4
  %9 = getelementptr inbounds i8, ptr %0, i32 32
  store i32 6, ptr %9, align 4
  %10 = getelementptr inbounds i8, ptr %0, i32 36
  store ptr @sm8150_lm, ptr %10, align 4
  %11 = getelementptr inbounds i8, ptr %0, i32 40
  store i32 6, ptr %11, align 4
  %12 = getelementptr inbounds i8, ptr %0, i32 44
  store ptr @sm8150_pp, ptr %12, align 4
  %13 = getelementptr inbounds i8, ptr %0, i32 48
  store i32 3, ptr %13, align 4
  %14 = getelementptr inbounds i8, ptr %0, i32 52
  store ptr @sm8150_merge_3d, ptr %14, align 4
  %15 = getelementptr inbounds i8, ptr %0, i32 56
  store i32 4, ptr %15, align 4
  %16 = getelementptr inbounds i8, ptr %0, i32 60
  store ptr @sm8150_intf, ptr %16, align 4
  %17 = getelementptr inbounds i8, ptr %0, i32 64
  store i32 1, ptr %17, align 4
  %18 = getelementptr inbounds i8, ptr %0, i32 68
  store ptr @sdm845_vbif, ptr %18, align 4
  %19 = getelementptr inbounds i8, ptr %0, i32 72
  store i32 1, ptr %19, align 4
  %20 = getelementptr inbounds i8, ptr %0, i32 76
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(48) %20, ptr noundef nonnull align 4 dereferenceable(48) @sm8250_regdma, i32 48, i1 false)
  %21 = getelementptr inbounds i8, ptr %0, i32 124
  store i32 0, ptr %21, align 4
  %22 = getelementptr inbounds i8, ptr %0, i32 128
  store i32 4, ptr %22, align 4
  %23 = getelementptr inbounds i8, ptr %0, i32 132
  store ptr @sm8150_dspp, ptr %23, align 4
  %24 = getelementptr inbounds i8, ptr %0, i32 136
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(116) %24, ptr noundef nonnull align 4 dereferenceable(116) @sm8250_perf_data, i32 116, i1 false)
  %25 = getelementptr inbounds i8, ptr %0, i32 252
  store ptr null, ptr %25, align 4
  %26 = getelementptr inbounds i8, ptr %0, i32 256
  store ptr null, ptr %26, align 4
  %27 = getelementptr inbounds i8, ptr %0, i32 260
  store ptr null, ptr %27, align 4
  %28 = getelementptr inbounds i8, ptr %0, i32 264
  store i32 255, ptr %28, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @sc7180_cfg_init(ptr noundef writeonly %0) #4 {
  store i32 0, ptr %0, align 4
  %2 = getelementptr inbounds i8, ptr %0, i32 4
  store ptr @sc7180_dpu_caps, ptr %2, align 4
  %3 = getelementptr inbounds i8, ptr %0, i32 8
  store i32 1, ptr %3, align 4
  %4 = getelementptr inbounds i8, ptr %0, i32 12
  store ptr @sc7180_mdp, ptr %4, align 4
  %5 = getelementptr inbounds i8, ptr %0, i32 16
  store i32 3, ptr %5, align 4
  %6 = getelementptr inbounds i8, ptr %0, i32 20
  store ptr @sc7180_ctl, ptr %6, align 4
  %7 = getelementptr inbounds i8, ptr %0, i32 24
  store i32 4, ptr %7, align 4
  %8 = getelementptr inbounds i8, ptr %0, i32 28
  store ptr @sc7180_sspp, ptr %8, align 4
  %9 = getelementptr inbounds i8, ptr %0, i32 32
  store i32 2, ptr %9, align 4
  %10 = getelementptr inbounds i8, ptr %0, i32 36
  store ptr @sc7180_lm, ptr %10, align 4
  %11 = getelementptr inbounds i8, ptr %0, i32 40
  store i32 2, ptr %11, align 4
  %12 = getelementptr inbounds i8, ptr %0, i32 44
  store ptr @sc7180_pp, ptr %12, align 4
  %13 = getelementptr inbounds i8, ptr %0, i32 48
  store i32 0, ptr %13, align 4
  %14 = getelementptr inbounds i8, ptr %0, i32 52
  store ptr null, ptr %14, align 4
  %15 = getelementptr inbounds i8, ptr %0, i32 56
  store i32 2, ptr %15, align 4
  %16 = getelementptr inbounds i8, ptr %0, i32 60
  store ptr @sc7180_intf, ptr %16, align 4
  %17 = getelementptr inbounds i8, ptr %0, i32 64
  store i32 1, ptr %17, align 4
  %18 = getelementptr inbounds i8, ptr %0, i32 68
  store ptr @sdm845_vbif, ptr %18, align 4
  %19 = getelementptr inbounds i8, ptr %0, i32 72
  store i32 1, ptr %19, align 4
  %20 = getelementptr inbounds i8, ptr %0, i32 76
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(48) %20, ptr noundef nonnull align 4 dereferenceable(48) @sdm845_regdma, i32 48, i1 false)
  %21 = getelementptr inbounds i8, ptr %0, i32 124
  store i32 0, ptr %21, align 4
  %22 = getelementptr inbounds i8, ptr %0, i32 128
  store i32 1, ptr %22, align 4
  %23 = getelementptr inbounds i8, ptr %0, i32 132
  store ptr @sc7180_dspp, ptr %23, align 4
  %24 = getelementptr inbounds i8, ptr %0, i32 136
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(116) %24, ptr noundef nonnull align 4 dereferenceable(116) @sc7180_perf_data, i32 116, i1 false)
  %25 = getelementptr inbounds i8, ptr %0, i32 252
  store ptr null, ptr %25, align 4
  %26 = getelementptr inbounds i8, ptr %0, i32 256
  store ptr null, ptr %26, align 4
  %27 = getelementptr inbounds i8, ptr %0, i32 260
  store ptr null, ptr %27, align 4
  %28 = getelementptr inbounds i8, ptr %0, i32 264
  store i32 31, ptr %28, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @sc7280_cfg_init(ptr noundef writeonly %0) #4 {
  store i32 0, ptr %0, align 4
  %2 = getelementptr inbounds i8, ptr %0, i32 4
  store ptr @sc7280_dpu_caps, ptr %2, align 4
  %3 = getelementptr inbounds i8, ptr %0, i32 8
  store i32 1, ptr %3, align 4
  %4 = getelementptr inbounds i8, ptr %0, i32 12
  store ptr @sc7280_mdp, ptr %4, align 4
  %5 = getelementptr inbounds i8, ptr %0, i32 16
  store i32 4, ptr %5, align 4
  %6 = getelementptr inbounds i8, ptr %0, i32 20
  store ptr @sc7280_ctl, ptr %6, align 4
  %7 = getelementptr inbounds i8, ptr %0, i32 24
  store i32 4, ptr %7, align 4
  %8 = getelementptr inbounds i8, ptr %0, i32 28
  store ptr @sc7280_sspp, ptr %8, align 4
  %9 = getelementptr inbounds i8, ptr %0, i32 32
  store i32 3, ptr %9, align 4
  %10 = getelementptr inbounds i8, ptr %0, i32 36
  store ptr @sc7280_lm, ptr %10, align 4
  %11 = getelementptr inbounds i8, ptr %0, i32 40
  store i32 4, ptr %11, align 4
  %12 = getelementptr inbounds i8, ptr %0, i32 44
  store ptr @sc7280_pp, ptr %12, align 4
  %13 = getelementptr inbounds i8, ptr %0, i32 48
  store i32 0, ptr %13, align 4
  %14 = getelementptr inbounds i8, ptr %0, i32 52
  store ptr null, ptr %14, align 4
  %15 = getelementptr inbounds i8, ptr %0, i32 56
  store i32 3, ptr %15, align 4
  %16 = getelementptr inbounds i8, ptr %0, i32 60
  store ptr @sc7280_intf, ptr %16, align 4
  %17 = getelementptr inbounds i8, ptr %0, i32 64
  store i32 1, ptr %17, align 4
  %18 = getelementptr inbounds i8, ptr %0, i32 68
  store ptr @sdm845_vbif, ptr %18, align 4
  %19 = getelementptr inbounds i8, ptr %0, i32 72
  %20 = getelementptr inbounds i8, ptr %0, i32 136
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(64) %19, i8 0, i64 64, i1 false)
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(116) %20, ptr noundef nonnull align 4 dereferenceable(116) @sc7280_perf_data, i32 116, i1 false)
  %21 = getelementptr inbounds i8, ptr %0, i32 252
  store ptr null, ptr %21, align 4
  %22 = getelementptr inbounds i8, ptr %0, i32 256
  store ptr null, ptr %22, align 4
  %23 = getelementptr inbounds i8, ptr %0, i32 260
  store ptr null, ptr %23, align 4
  %24 = getelementptr inbounds i8, ptr %0, i32 264
  store i32 35847, ptr %24, align 4
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { nounwind }
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { cold nounwind }

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
