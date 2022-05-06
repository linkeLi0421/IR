; ModuleID = '/llk/IR/drivers/gpu/drm/msm/dsi/dsi_cfg.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/dsi/dsi_cfg.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.msm_dsi_cfg_handler = type { i32, i32, ptr, ptr }
%struct.msm_dsi_config = type { i32, %struct.dsi_reg_config, ptr, i32, [2 x i32], i32 }
%struct.dsi_reg_config = type { i32, [8 x %struct.dsi_reg_entry] }
%struct.dsi_reg_entry = type { [32 x i8], i32, i32 }
%struct.msm_dsi_host_cfg_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@dsi_cfg_handlers = internal constant [16 x %struct.msm_dsi_cfg_handler] [%struct.msm_dsi_cfg_handler { i32 2, i32 0, ptr @apq8064_dsi_cfg, ptr @msm_dsi_v2_host_ops }, %struct.msm_dsi_cfg_handler { i32 3, i32 268435456, ptr @msm8974_apq8084_dsi_cfg, ptr @msm_dsi_6g_host_ops }, %struct.msm_dsi_cfg_handler { i32 3, i32 268500992, ptr @msm8974_apq8084_dsi_cfg, ptr @msm_dsi_6g_host_ops }, %struct.msm_dsi_cfg_handler { i32 3, i32 268500993, ptr @msm8974_apq8084_dsi_cfg, ptr @msm_dsi_6g_host_ops }, %struct.msm_dsi_cfg_handler { i32 3, i32 268566528, ptr @msm8974_apq8084_dsi_cfg, ptr @msm_dsi_6g_host_ops }, %struct.msm_dsi_cfg_handler { i32 3, i32 268632064, ptr @msm8994_dsi_cfg, ptr @msm_dsi_6g_host_ops }, %struct.msm_dsi_cfg_handler { i32 3, i32 268632065, ptr @msm8916_dsi_cfg, ptr @msm_dsi_6g_host_ops }, %struct.msm_dsi_cfg_handler { i32 3, i32 268697601, ptr @msm8996_dsi_cfg, ptr @msm_dsi_6g_host_ops }, %struct.msm_dsi_cfg_handler { i32 3, i32 268697602, ptr @msm8976_dsi_cfg, ptr @msm_dsi_6g_host_ops }, %struct.msm_dsi_cfg_handler { i32 3, i32 536936448, ptr @sdm660_dsi_cfg, ptr @msm_dsi_6g_v2_host_ops }, %struct.msm_dsi_cfg_handler { i32 3, i32 536870912, ptr @msm8998_dsi_cfg, ptr @msm_dsi_6g_v2_host_ops }, %struct.msm_dsi_cfg_handler { i32 3, i32 537001985, ptr @sdm845_dsi_cfg, ptr @msm_dsi_6g_v2_host_ops }, %struct.msm_dsi_cfg_handler { i32 3, i32 537067520, ptr @sdm845_dsi_cfg, ptr @msm_dsi_6g_v2_host_ops }, %struct.msm_dsi_cfg_handler { i32 3, i32 537133056, ptr @sdm845_dsi_cfg, ptr @msm_dsi_6g_v2_host_ops }, %struct.msm_dsi_cfg_handler { i32 3, i32 537133057, ptr @sc7180_dsi_cfg, ptr @msm_dsi_6g_v2_host_ops }, %struct.msm_dsi_cfg_handler { i32 3, i32 537198592, ptr @sc7280_dsi_cfg, ptr @msm_dsi_6g_v2_host_ops }], align 4
@apq8064_dsi_cfg = internal constant %struct.msm_dsi_config { i32 0, %struct.dsi_reg_config { i32 3, [8 x %struct.dsi_reg_entry] [%struct.dsi_reg_entry { [32 x i8] c"vdda\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 100000, i32 100 }, %struct.dsi_reg_entry { [32 x i8] c"avdd\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 10000, i32 100 }, %struct.dsi_reg_entry { [32 x i8] c"vddio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 100000, i32 100 }, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer] }, ptr @dsi_v2_bus_clk_names, i32 3, [2 x i32] [i32 74448896, i32 92274688], i32 2 }, align 4
@msm_dsi_v2_host_ops = internal constant %struct.msm_dsi_host_cfg_ops { ptr @dsi_link_clk_set_rate_v2, ptr @dsi_link_clk_enable_v2, ptr @dsi_link_clk_disable_v2, ptr @dsi_clk_init_v2, ptr @dsi_tx_buf_alloc_v2, ptr @dsi_tx_buf_get_v2, ptr null, ptr @dsi_dma_base_get_v2, ptr @dsi_calc_clk_rate_v2 }, align 4
@msm8974_apq8084_dsi_cfg = internal constant %struct.msm_dsi_config { i32 4, %struct.dsi_reg_config { i32 3, [8 x %struct.dsi_reg_entry] [%struct.dsi_reg_entry { [32 x i8] c"vdd\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 150000, i32 100 }, %struct.dsi_reg_entry { [32 x i8] c"vdda\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 100000, i32 100 }, %struct.dsi_reg_entry { [32 x i8] c"vddio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 100000, i32 100 }, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer] }, ptr @dsi_6g_bus_clk_names, i32 4, [2 x i32] [i32 -40753152, i32 -40752384], i32 2 }, align 4
@msm_dsi_6g_host_ops = internal constant %struct.msm_dsi_host_cfg_ops { ptr @dsi_link_clk_set_rate_6g, ptr @dsi_link_clk_enable_6g, ptr @dsi_link_clk_disable_6g, ptr null, ptr @dsi_tx_buf_alloc_6g, ptr @dsi_tx_buf_get_6g, ptr @dsi_tx_buf_put_6g, ptr @dsi_dma_base_get_6g, ptr @dsi_calc_clk_rate_6g }, align 4
@msm8994_dsi_cfg = internal constant %struct.msm_dsi_config { i32 4, %struct.dsi_reg_config { i32 6, [8 x %struct.dsi_reg_entry] [%struct.dsi_reg_entry { [32 x i8] c"vdda\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 100000, i32 100 }, %struct.dsi_reg_entry { [32 x i8] c"vddio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 100000, i32 100 }, %struct.dsi_reg_entry { [32 x i8] c"vcca\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 10000, i32 100 }, %struct.dsi_reg_entry { [32 x i8] c"vdd\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 100000, i32 100 }, %struct.dsi_reg_entry { [32 x i8] c"lab_reg\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 -1, i32 -1 }, %struct.dsi_reg_entry { [32 x i8] c"ibb_reg\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 -1, i32 -1 }, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer] }, ptr @dsi_6g_bus_clk_names, i32 4, [2 x i32] [i32 -40271872, i32 -40239104], i32 2 }, align 4
@msm8916_dsi_cfg = internal constant %struct.msm_dsi_config { i32 4, %struct.dsi_reg_config { i32 2, [8 x %struct.dsi_reg_entry] [%struct.dsi_reg_entry { [32 x i8] c"vdda\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 100000, i32 100 }, %struct.dsi_reg_entry { [32 x i8] c"vddio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 100000, i32 100 }, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer] }, ptr @dsi_8916_bus_clk_names, i32 3, [2 x i32] [i32 27885568, i32 0], i32 1 }, align 4
@msm8996_dsi_cfg = internal constant %struct.msm_dsi_config { i32 4, %struct.dsi_reg_config { i32 2, [8 x %struct.dsi_reg_entry] [%struct.dsi_reg_entry { [32 x i8] c"vdda\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 18160, i32 1 }, %struct.dsi_reg_entry { [32 x i8] c"vcca\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 17000, i32 32 }, %struct.dsi_reg_entry { [32 x i8] c"vddio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 100000, i32 100 }, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer] }, ptr @dsi_8996_bus_clk_names, i32 4, [2 x i32] [i32 10043392, i32 10051584], i32 2 }, align 4
@msm8976_dsi_cfg = internal constant %struct.msm_dsi_config { i32 4, %struct.dsi_reg_config { i32 2, [8 x %struct.dsi_reg_entry] [%struct.dsi_reg_entry { [32 x i8] c"vdda\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 100000, i32 100 }, %struct.dsi_reg_entry { [32 x i8] c"vddio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 100000, i32 100 }, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer] }, ptr @dsi_8976_bus_clk_names, i32 3, [2 x i32] [i32 27869184, i32 27877376], i32 2 }, align 4
@sdm660_dsi_cfg = internal constant %struct.msm_dsi_config { i32 4, %struct.dsi_reg_config { i32 2, [8 x %struct.dsi_reg_entry] [%struct.dsi_reg_entry { [32 x i8] c"vdda\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 12560, i32 4 }, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer] }, ptr @dsi_sdm660_bus_clk_names, i32 4, [2 x i32] [i32 211369984, i32 211378176], i32 2 }, align 4
@msm_dsi_6g_v2_host_ops = internal constant %struct.msm_dsi_host_cfg_ops { ptr @dsi_link_clk_set_rate_6g, ptr @dsi_link_clk_enable_6g, ptr @dsi_link_clk_disable_6g, ptr @dsi_clk_init_6g_v2, ptr @dsi_tx_buf_alloc_6g, ptr @dsi_tx_buf_get_6g, ptr @dsi_tx_buf_put_6g, ptr @dsi_dma_base_get_6g, ptr @dsi_calc_clk_rate_6g }, align 4
@msm8998_dsi_cfg = internal constant %struct.msm_dsi_config { i32 4, %struct.dsi_reg_config { i32 2, [8 x %struct.dsi_reg_entry] [%struct.dsi_reg_entry { [32 x i8] c"vdd\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 367000, i32 16 }, %struct.dsi_reg_entry { [32 x i8] c"vdda\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 62800, i32 2 }, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer] }, ptr @dsi_msm8998_bus_clk_names, i32 3, [2 x i32] [i32 211369984, i32 211378176], i32 2 }, align 4
@sdm845_dsi_cfg = internal constant %struct.msm_dsi_config { i32 4, %struct.dsi_reg_config { i32 1, [8 x %struct.dsi_reg_entry] [%struct.dsi_reg_entry { [32 x i8] c"vdda\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 21800, i32 4 }, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer] }, ptr @dsi_sdm845_bus_clk_names, i32 2, [2 x i32] [i32 183058432, i32 183066624], i32 2 }, align 4
@sc7180_dsi_cfg = internal constant %struct.msm_dsi_config { i32 4, %struct.dsi_reg_config { i32 1, [8 x %struct.dsi_reg_entry] [%struct.dsi_reg_entry { [32 x i8] c"vdda\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 21800, i32 4 }, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer] }, ptr @dsi_sc7180_bus_clk_names, i32 2, [2 x i32] [i32 183058432, i32 0], i32 1 }, align 4
@sc7280_dsi_cfg = internal constant %struct.msm_dsi_config { i32 4, %struct.dsi_reg_config { i32 1, [8 x %struct.dsi_reg_entry] [%struct.dsi_reg_entry { [32 x i8] c"vdda\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8350, i32 0 }, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer] }, ptr @dsi_sc7280_bus_clk_names, i32 2, [2 x i32] [i32 183058432, i32 0], i32 1 }, align 4
@dsi_v2_bus_clk_names = internal constant [3 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2], align 4
@.str = private unnamed_addr constant [10 x i8] c"core_mmss\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"iface\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"bus\00", align 1
@dsi_6g_bus_clk_names = internal constant [4 x ptr] [ptr @.str.3, ptr @.str.1, ptr @.str.2, ptr @.str], align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"mdp_core\00", align 1
@dsi_8916_bus_clk_names = internal constant [3 x ptr] [ptr @.str.3, ptr @.str.1, ptr @.str.2], align 4
@dsi_8996_bus_clk_names = internal constant [4 x ptr] [ptr @.str.3, ptr @.str.1, ptr @.str.2, ptr @.str], align 4
@dsi_8976_bus_clk_names = internal constant [3 x ptr] [ptr @.str.3, ptr @.str.1, ptr @.str.2], align 4
@dsi_sdm660_bus_clk_names = internal constant [4 x ptr] [ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str], align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"core\00", align 1
@dsi_msm8998_bus_clk_names = internal constant [3 x ptr] [ptr @.str.1, ptr @.str.2, ptr @.str.4], align 4
@dsi_sdm845_bus_clk_names = internal constant [2 x ptr] [ptr @.str.1, ptr @.str.2], align 4
@dsi_sc7180_bus_clk_names = internal constant [2 x ptr] [ptr @.str.1, ptr @.str.2], align 4
@dsi_sc7280_bus_clk_names = internal constant [2 x ptr] [ptr @.str.1, ptr @.str.2], align 4

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong uwtable(sync)
define dso_local ptr @msm_dsi_cfg_get(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  switch i32 %0, label %6 [
    i32 3, label %3
    i32 2, label %4
  ]

3:                                                ; preds = %2
  switch i32 %1, label %6 [
    i32 537198592, label %21
    i32 537133057, label %7
    i32 537133056, label %8
    i32 537067520, label %9
    i32 537001985, label %10
    i32 536870912, label %11
    i32 536936448, label %12
    i32 268697602, label %13
    i32 268697601, label %14
    i32 268632065, label %15
    i32 268632064, label %16
    i32 268566528, label %17
    i32 268500993, label %18
    i32 268500992, label %19
    i32 268435456, label %20
  ]

4:                                                ; preds = %2
  %5 = icmp eq i32 %1, 0
  br i1 %5, label %21, label %6

6:                                                ; preds = %4, %3, %2
  br label %21

7:                                                ; preds = %3
  br label %21

8:                                                ; preds = %3
  br label %21

9:                                                ; preds = %3
  br label %21

10:                                               ; preds = %3
  br label %21

11:                                               ; preds = %3
  br label %21

12:                                               ; preds = %3
  br label %21

13:                                               ; preds = %3
  br label %21

14:                                               ; preds = %3
  br label %21

15:                                               ; preds = %3
  br label %21

16:                                               ; preds = %3
  br label %21

17:                                               ; preds = %3
  br label %21

18:                                               ; preds = %3
  br label %21

19:                                               ; preds = %3
  br label %21

20:                                               ; preds = %3
  br label %21

21:                                               ; preds = %20, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10, %9, %8, %7, %6, %4, %3
  %22 = phi ptr [ getelementptr inbounds ([16 x %struct.msm_dsi_cfg_handler], ptr @dsi_cfg_handlers, i32 0, i32 15), %3 ], [ @dsi_cfg_handlers, %4 ], [ null, %6 ], [ getelementptr inbounds ([16 x %struct.msm_dsi_cfg_handler], ptr @dsi_cfg_handlers, i32 0, i32 14), %7 ], [ getelementptr inbounds ([16 x %struct.msm_dsi_cfg_handler], ptr @dsi_cfg_handlers, i32 0, i32 13), %8 ], [ getelementptr inbounds ([16 x %struct.msm_dsi_cfg_handler], ptr @dsi_cfg_handlers, i32 0, i32 12), %9 ], [ getelementptr inbounds ([16 x %struct.msm_dsi_cfg_handler], ptr @dsi_cfg_handlers, i32 0, i32 11), %10 ], [ getelementptr inbounds ([16 x %struct.msm_dsi_cfg_handler], ptr @dsi_cfg_handlers, i32 0, i32 10), %11 ], [ getelementptr inbounds ([16 x %struct.msm_dsi_cfg_handler], ptr @dsi_cfg_handlers, i32 0, i32 9), %12 ], [ getelementptr inbounds ([16 x %struct.msm_dsi_cfg_handler], ptr @dsi_cfg_handlers, i32 0, i32 8), %13 ], [ getelementptr inbounds ([16 x %struct.msm_dsi_cfg_handler], ptr @dsi_cfg_handlers, i32 0, i32 7), %14 ], [ getelementptr inbounds ([16 x %struct.msm_dsi_cfg_handler], ptr @dsi_cfg_handlers, i32 0, i32 6), %15 ], [ getelementptr inbounds ([16 x %struct.msm_dsi_cfg_handler], ptr @dsi_cfg_handlers, i32 0, i32 5), %16 ], [ getelementptr inbounds ([16 x %struct.msm_dsi_cfg_handler], ptr @dsi_cfg_handlers, i32 0, i32 4), %17 ], [ getelementptr inbounds ([16 x %struct.msm_dsi_cfg_handler], ptr @dsi_cfg_handlers, i32 0, i32 3), %18 ], [ getelementptr inbounds ([16 x %struct.msm_dsi_cfg_handler], ptr @dsi_cfg_handlers, i32 0, i32 2), %19 ], [ getelementptr inbounds ([16 x %struct.msm_dsi_cfg_handler], ptr @dsi_cfg_handlers, i32 0, i32 1), %20 ]
  ret ptr %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dsi_link_clk_set_rate_v2(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dsi_link_clk_enable_v2(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dsi_link_clk_disable_v2(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dsi_clk_init_v2(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dsi_tx_buf_alloc_v2(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dsi_tx_buf_get_v2(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dsi_dma_base_get_v2(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dsi_calc_clk_rate_v2(ptr noundef, i1 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dsi_link_clk_set_rate_6g(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dsi_link_clk_enable_6g(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dsi_link_clk_disable_6g(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dsi_tx_buf_alloc_6g(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dsi_tx_buf_get_6g(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dsi_tx_buf_put_6g(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dsi_dma_base_get_6g(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dsi_calc_clk_rate_6g(ptr noundef, i1 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dsi_clk_init_6g_v2(ptr noundef) #1

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }

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
