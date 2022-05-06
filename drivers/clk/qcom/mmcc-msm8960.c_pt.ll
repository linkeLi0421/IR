; ModuleID = '/llk/IR/drivers/clk/qcom/mmcc-msm8960.c_pt.bc'
source_filename = "../drivers/clk/qcom/mmcc-msm8960.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.freq_tbl = type { i32, i8, i8, i16, i16 }
%struct.clk_dyn_rcg = type { [2 x i32], [2 x i32], i32, i8, [2 x %struct.mn], [2 x %struct.pre_div], [2 x %struct.src_sel], ptr, %struct.clk_regmap }
%struct.mn = type { i8, i8, i8, i8, i8, i8, i8 }
%struct.pre_div = type { i8, i8 }
%struct.src_sel = type { i8, ptr }
%struct.clk_regmap = type { %struct.clk_hw, ptr, i32, i32, i8 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.parent_map = type { i8, i8 }
%struct.clk_pll = type { i32, i32, i32, i32, i32, i32, i8, i8, i8, ptr, %struct.clk_regmap }
%struct.pll_config = type { i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.qcom_cc_desc = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, i32 }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.qcom_reset_map = type { i32, i8 }
%struct.clk_branch = type { i32, i32, i8, i8, i8, %struct.clk_regmap }
%struct.clk_rcg = type { i32, i32, %struct.mn, %struct.pre_div, %struct.src_sel, ptr, %struct.clk_regmap }
%struct.clk_pix_rdi = type { i32, i32, i32, i32, %struct.clk_regmap }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }

@__initcall__kmod_mmcc_msm8960__162_3058_mmcc_msm8960_driver_init6 = internal global ptr @mmcc_msm8960_driver_init, section ".initcall6.init", align 4
@mmcc_msm8960_driver = internal global %struct.platform_driver { ptr @mmcc_msm8960_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mmcc_msm8960_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_mmcc_msm8960_driver_exit = internal global ptr @mmcc_msm8960_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description163 = internal constant [50 x i8] c"mmcc_msm8960.description=QCOM MMCC MSM8960 Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file164 = internal constant [48 x i8] c"mmcc_msm8960.file=drivers/clk/qcom/mmcc-msm8960\00", section ".modinfo", align 1
@__UNIQUE_ID_license165 = internal constant [28 x i8] c"mmcc_msm8960.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias166 = internal constant [41 x i8] c"mmcc_msm8960.alias=platform:mmcc-msm8960\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [13 x i8] c"mmcc-msm8960\00", align 1
@mmcc_msm8960_match_table = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,mmcc-msm8960\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mmcc_msm8960_desc }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,mmcc-apq8064\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mmcc_apq8064_desc }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"qcom,mmcc-apq8064\00", align 1
@clk_tbl_gfx3d_8064 = internal global [18 x %struct.freq_tbl] [%struct.freq_tbl { i32 27000000, i8 0, i8 0, i16 0, i16 0 }, %struct.freq_tbl { i32 48000000, i8 1, i8 0, i16 1, i16 8 }, %struct.freq_tbl { i32 54857000, i8 1, i8 0, i16 1, i16 7 }, %struct.freq_tbl { i32 64000000, i8 1, i8 0, i16 1, i16 6 }, %struct.freq_tbl { i32 76800000, i8 1, i8 0, i16 1, i16 5 }, %struct.freq_tbl { i32 96000000, i8 1, i8 0, i16 1, i16 4 }, %struct.freq_tbl { i32 128000000, i8 1, i8 0, i16 1, i16 3 }, %struct.freq_tbl { i32 145455000, i8 2, i8 0, i16 2, i16 11 }, %struct.freq_tbl { i32 160000000, i8 2, i8 0, i16 1, i16 5 }, %struct.freq_tbl { i32 177778000, i8 2, i8 0, i16 2, i16 9 }, %struct.freq_tbl { i32 192000000, i8 1, i8 0, i16 1, i16 2 }, %struct.freq_tbl { i32 200000000, i8 2, i8 0, i16 1, i16 4 }, %struct.freq_tbl { i32 228571000, i8 2, i8 0, i16 2, i16 7 }, %struct.freq_tbl { i32 266667000, i8 2, i8 0, i16 1, i16 3 }, %struct.freq_tbl { i32 320000000, i8 2, i8 0, i16 2, i16 5 }, %struct.freq_tbl { i32 400000000, i8 2, i8 0, i16 1, i16 2 }, %struct.freq_tbl { i32 450000000, i8 4, i8 0, i16 1, i16 2 }, %struct.freq_tbl zeroinitializer], align 4
@gfx3d_src = internal global %struct.clk_dyn_rcg { [2 x i32] [i32 140, i32 140], [2 x i32] [i32 132, i32 136], i32 128, i8 11, [2 x %struct.mn] [%struct.mn { i8 8, i8 25, i8 9, i8 18, i8 4, i8 4, i8 0 }, %struct.mn { i8 5, i8 24, i8 6, i8 14, i8 4, i8 4, i8 0 }], [2 x %struct.pre_div] zeroinitializer, [2 x %struct.src_sel] [%struct.src_sel { i8 3, ptr @mmcc_pxo_pll8_pll2_pll3_map }, %struct.src_sel { i8 0, ptr @mmcc_pxo_pll8_pll2_pll3_map }], ptr @clk_tbl_gfx3d, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral }, ptr null, i32 128, i32 4, i8 0 } }, align 4
@gfx3d_8064_init = internal constant %struct.clk_init_data { ptr @.str.2, ptr @clk_dyn_rcg_ops, ptr @mmcc_pxo_pll8_pll2_pll15, ptr null, ptr null, i8 4, i32 0 }, align 4
@mmcc_pxo_pll8_pll2_pll15_map = internal constant [4 x %struct.parent_map] [%struct.parent_map zeroinitializer, %struct.parent_map { i8 1, i8 2 }, %struct.parent_map { i8 2, i8 1 }, %struct.parent_map { i8 4, i8 3 }], align 1
@pll15 = internal global %struct.clk_pll { i32 828, i32 832, i32 836, i32 840, i32 824, i32 848, i8 16, i8 0, i8 0, ptr null, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.9 }, ptr null, i32 0, i32 0, i8 0 } }, align 4
@pll15_config = internal constant %struct.pll_config { i16 33, i32 1, i32 3, i32 131072, i32 196608, i32 0, i32 524288, i32 0, i32 3145728, i32 4194304, i32 8388608, i32 0 }, align 4
@mmcc_pxo_pll8_pll2_pll3_map = internal constant [4 x %struct.parent_map] [%struct.parent_map zeroinitializer, %struct.parent_map { i8 1, i8 2 }, %struct.parent_map { i8 2, i8 1 }, %struct.parent_map { i8 3, i8 3 }], align 1
@clk_tbl_gfx3d = internal global [17 x %struct.freq_tbl] [%struct.freq_tbl { i32 27000000, i8 0, i8 0, i16 1, i16 0 }, %struct.freq_tbl { i32 48000000, i8 1, i8 0, i16 1, i16 8 }, %struct.freq_tbl { i32 54857000, i8 1, i8 0, i16 1, i16 7 }, %struct.freq_tbl { i32 64000000, i8 1, i8 0, i16 1, i16 6 }, %struct.freq_tbl { i32 76800000, i8 1, i8 0, i16 1, i16 5 }, %struct.freq_tbl { i32 96000000, i8 1, i8 0, i16 1, i16 4 }, %struct.freq_tbl { i32 128000000, i8 1, i8 0, i16 1, i16 3 }, %struct.freq_tbl { i32 145455000, i8 2, i8 0, i16 2, i16 11 }, %struct.freq_tbl { i32 160000000, i8 2, i8 0, i16 1, i16 5 }, %struct.freq_tbl { i32 177778000, i8 2, i8 0, i16 2, i16 9 }, %struct.freq_tbl { i32 200000000, i8 2, i8 0, i16 1, i16 4 }, %struct.freq_tbl { i32 228571000, i8 2, i8 0, i16 2, i16 7 }, %struct.freq_tbl { i32 266667000, i8 2, i8 0, i16 1, i16 3 }, %struct.freq_tbl { i32 300000000, i8 3, i8 0, i16 1, i16 4 }, %struct.freq_tbl { i32 320000000, i8 2, i8 0, i16 2, i16 5 }, %struct.freq_tbl { i32 400000000, i8 2, i8 0, i16 1, i16 2 }, %struct.freq_tbl zeroinitializer], align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"gfx3d_src\00", align 1
@clk_dyn_rcg_ops = external dso_local constant %struct.clk_ops, align 4
@mmcc_pxo_pll8_pll2_pll3 = internal constant [4 x ptr] [ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], align 4
@.compoundliteral = internal global %struct.clk_init_data { ptr @.str.2, ptr @clk_dyn_rcg_ops, ptr @mmcc_pxo_pll8_pll2_pll3, ptr null, ptr null, i8 4, i32 0 }, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"pxo\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"pll8_vote\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"pll2\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"pll3\00", align 1
@mmcc_pxo_pll8_pll2_pll15 = internal constant [4 x ptr] [ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7], align 4
@.str.7 = private unnamed_addr constant [6 x i8] c"pll15\00", align 1
@clk_pll_ops = external dso_local constant %struct.clk_ops, align 4
@.compoundliteral.8 = internal global [1 x ptr] [ptr @.str.3], align 4
@.compoundliteral.9 = internal global %struct.clk_init_data { ptr @.str.7, ptr @clk_pll_ops, ptr @.compoundliteral.8, ptr null, ptr null, i8 1, i32 0 }, align 4
@mmcc_msm8960_desc = internal constant %struct.qcom_cc_desc { ptr @mmcc_msm8960_regmap_config, ptr @mmcc_msm8960_clks, i32 119, ptr @mmcc_msm8960_resets, i32 75, ptr null, i32 0, ptr null, i32 0 }, align 4
@mmcc_apq8064_desc = internal constant %struct.qcom_cc_desc { ptr @mmcc_apq8064_regmap_config, ptr @mmcc_apq8064_clks, i32 127, ptr @mmcc_apq8064_resets, i32 83, ptr null, i32 0, ptr null, i32 0 }, align 4
@mmcc_msm8960_regmap_config = internal constant %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 1, i32 820, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@mmcc_msm8960_clks = internal global [119 x ptr] [ptr null, ptr null, ptr null, ptr getelementptr (i8, ptr @tv_enc_ahb_clk, i64 12), ptr getelementptr (i8, ptr @amp_ahb_clk, i64 12), ptr getelementptr (i8, ptr @dsi2_s_ahb_clk, i64 12), ptr getelementptr (i8, ptr @jpegd_ahb_clk, i64 12), ptr getelementptr (i8, ptr @gfx2d0_ahb_clk, i64 12), ptr getelementptr (i8, ptr @dsi_s_ahb_clk, i64 12), ptr getelementptr (i8, ptr @dsi2_m_ahb_clk, i64 12), ptr getelementptr (i8, ptr @vpe_ahb_clk, i64 12), ptr getelementptr (i8, ptr @smmu_ahb_clk, i64 12), ptr getelementptr (i8, ptr @hdmi_m_ahb_clk, i64 12), ptr getelementptr (i8, ptr @vfe_ahb_clk, i64 12), ptr getelementptr (i8, ptr @rot_ahb_clk, i64 12), ptr getelementptr (i8, ptr @vcodec_ahb_clk, i64 12), ptr getelementptr (i8, ptr @mdp_ahb_clk, i64 12), ptr getelementptr (i8, ptr @dsi_m_ahb_clk, i64 12), ptr getelementptr (i8, ptr @csi_ahb_clk, i64 12), ptr getelementptr (i8, ptr @mmss_imem_ahb_clk, i64 12), ptr getelementptr (i8, ptr @ijpeg_ahb_clk, i64 12), ptr getelementptr (i8, ptr @hdmi_s_ahb_clk, i64 12), ptr getelementptr (i8, ptr @gfx3d_ahb_clk, i64 12), ptr getelementptr (i8, ptr @gfx2d1_ahb_clk, i64 12), ptr null, ptr null, ptr null, ptr null, ptr getelementptr (i8, ptr @jpegd_axi_clk, i64 12), ptr getelementptr (i8, ptr @gmem_axi_clk, i64 12), ptr getelementptr (i8, ptr @mdp_axi_clk, i64 12), ptr getelementptr (i8, ptr @mmss_imem_axi_clk, i64 12), ptr getelementptr (i8, ptr @ijpeg_axi_clk, i64 12), ptr getelementptr (i8, ptr @gfx3d_axi_clk, i64 12), ptr getelementptr (i8, ptr @vcodec_axi_clk, i64 12), ptr getelementptr (i8, ptr @vfe_axi_clk, i64 12), ptr getelementptr (i8, ptr @vpe_axi_clk, i64 12), ptr getelementptr (i8, ptr @rot_axi_clk, i64 12), ptr getelementptr (i8, ptr @vcodec_axi_a_clk, i64 12), ptr getelementptr (i8, ptr @vcodec_axi_b_clk, i64 12), ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr getelementptr (i8, ptr @csi0_src, i64 32), ptr getelementptr (i8, ptr @csi0_clk, i64 12), ptr getelementptr (i8, ptr @csi0_phy_clk, i64 12), ptr getelementptr (i8, ptr @csi1_src, i64 32), ptr getelementptr (i8, ptr @csi1_clk, i64 12), ptr getelementptr (i8, ptr @csi1_phy_clk, i64 12), ptr getelementptr (i8, ptr @csi2_src, i64 32), ptr getelementptr (i8, ptr @csi2_clk, i64 12), ptr getelementptr (i8, ptr @csi2_phy_clk, i64 12), ptr getelementptr (i8, ptr @dsi1_src, i64 32), ptr getelementptr (i8, ptr @dsi1_clk, i64 12), ptr getelementptr (i8, ptr @csi_pix_clk, i64 16), ptr getelementptr (i8, ptr @csi_rdi_clk, i64 16), ptr getelementptr (i8, ptr @mdp_vsync_clk, i64 12), ptr null, ptr getelementptr (i8, ptr @hdmi_app_clk, i64 12), ptr getelementptr (i8, ptr @csi_pix1_clk, i64 16), ptr getelementptr (i8, ptr @csi_rdi2_clk, i64 16), ptr getelementptr (i8, ptr @csi_rdi1_clk, i64 16), ptr getelementptr (i8, ptr @gfx2d0_src, i64 60), ptr getelementptr (i8, ptr @gfx2d0_clk, i64 12), ptr getelementptr (i8, ptr @gfx2d1_src, i64 60), ptr getelementptr (i8, ptr @gfx2d1_clk, i64 12), ptr getelementptr (i8, ptr @gfx3d_src, i64 60), ptr getelementptr (i8, ptr @gfx3d_clk, i64 12), ptr getelementptr (i8, ptr @ijpeg_src, i64 32), ptr getelementptr (i8, ptr @ijpeg_clk, i64 12), ptr getelementptr (i8, ptr @jpegd_src, i64 32), ptr getelementptr (i8, ptr @jpegd_clk, i64 12), ptr getelementptr (i8, ptr @mdp_src, i64 60), ptr getelementptr (i8, ptr @mdp_clk, i64 12), ptr getelementptr (i8, ptr @mdp_lut_clk, i64 12), ptr getelementptr (i8, ptr @dsi2_pixel_src, i64 32), ptr getelementptr (i8, ptr @dsi2_pixel_clk, i64 12), ptr getelementptr (i8, ptr @dsi2_src, i64 32), ptr getelementptr (i8, ptr @dsi2_clk, i64 12), ptr getelementptr (i8, ptr @dsi1_byte_src, i64 32), ptr getelementptr (i8, ptr @dsi1_byte_clk, i64 12), ptr getelementptr (i8, ptr @dsi2_byte_src, i64 32), ptr getelementptr (i8, ptr @dsi2_byte_clk, i64 12), ptr getelementptr (i8, ptr @dsi1_esc_src, i64 32), ptr getelementptr (i8, ptr @dsi1_esc_clk, i64 12), ptr getelementptr (i8, ptr @dsi2_esc_src, i64 32), ptr getelementptr (i8, ptr @dsi2_esc_clk, i64 12), ptr getelementptr (i8, ptr @rot_src, i64 60), ptr getelementptr (i8, ptr @rot_clk, i64 12), ptr getelementptr (i8, ptr @tv_enc_clk, i64 12), ptr getelementptr (i8, ptr @tv_dac_clk, i64 12), ptr getelementptr (i8, ptr @hdmi_tv_clk, i64 12), ptr getelementptr (i8, ptr @mdp_tv_clk, i64 12), ptr getelementptr (i8, ptr @tv_src, i64 32), ptr getelementptr (i8, ptr @vcodec_src, i64 60), ptr getelementptr (i8, ptr @vcodec_clk, i64 12), ptr getelementptr (i8, ptr @vfe_src, i64 32), ptr getelementptr (i8, ptr @vfe_clk, i64 12), ptr getelementptr (i8, ptr @vfe_csi_clk, i64 12), ptr getelementptr (i8, ptr @vpe_src, i64 32), ptr getelementptr (i8, ptr @vpe_clk, i64 12), ptr getelementptr (i8, ptr @dsi1_pixel_src, i64 32), ptr getelementptr (i8, ptr @dsi1_pixel_clk, i64 12), ptr getelementptr (i8, ptr @camclk0_src, i64 32), ptr getelementptr (i8, ptr @camclk0_clk, i64 12), ptr getelementptr (i8, ptr @camclk1_src, i64 32), ptr getelementptr (i8, ptr @camclk1_clk, i64 12), ptr getelementptr (i8, ptr @camclk2_src, i64 32), ptr getelementptr (i8, ptr @camclk2_clk, i64 12), ptr getelementptr (i8, ptr @csiphytimer_src, i64 32), ptr getelementptr (i8, ptr @csiphy2_timer_clk, i64 12), ptr getelementptr (i8, ptr @csiphy1_timer_clk, i64 12), ptr getelementptr (i8, ptr @csiphy0_timer_clk, i64 12), ptr null, ptr getelementptr (i8, ptr @pll2, i64 32)], align 4
@mmcc_msm8960_resets = internal constant [75 x %struct.qcom_reset_map] [%struct.qcom_reset_map { i32 520, i8 15 }, %struct.qcom_reset_map { i32 520, i8 14 }, %struct.qcom_reset_map { i32 520, i8 13 }, %struct.qcom_reset_map { i32 520, i8 9 }, %struct.qcom_reset_map { i32 520, i8 8 }, %struct.qcom_reset_map { i32 520, i8 7 }, %struct.qcom_reset_map { i32 520, i8 6 }, %struct.qcom_reset_map { i32 520, i8 5 }, %struct.qcom_reset_map { i32 520, i8 4 }, %struct.qcom_reset_map { i32 520, i8 3 }, %struct.qcom_reset_map { i32 520, i8 2 }, %struct.qcom_reset_map { i32 520, i8 1 }, %struct.qcom_reset_map { i32 520, i8 0 }, %struct.qcom_reset_map { i32 524, i8 31 }, %struct.qcom_reset_map { i32 524, i8 30 }, %struct.qcom_reset_map { i32 524, i8 29 }, %struct.qcom_reset_map { i32 524, i8 28 }, %struct.qcom_reset_map { i32 524, i8 27 }, %struct.qcom_reset_map { i32 524, i8 26 }, %struct.qcom_reset_map { i32 524, i8 25 }, %struct.qcom_reset_map { i32 524, i8 24 }, %struct.qcom_reset_map { i32 524, i8 23 }, %struct.qcom_reset_map { i32 524, i8 22 }, %struct.qcom_reset_map { i32 524, i8 21 }, %struct.qcom_reset_map { i32 524, i8 20 }, %struct.qcom_reset_map { i32 524, i8 18 }, %struct.qcom_reset_map { i32 524, i8 17 }, %struct.qcom_reset_map { i32 524, i8 15 }, %struct.qcom_reset_map { i32 524, i8 14 }, %struct.qcom_reset_map { i32 524, i8 13 }, %struct.qcom_reset_map { i32 524, i8 12 }, %struct.qcom_reset_map { i32 524, i8 11 }, %struct.qcom_reset_map { i32 524, i8 10 }, %struct.qcom_reset_map { i32 524, i8 9 }, %struct.qcom_reset_map { i32 524, i8 8 }, %struct.qcom_reset_map { i32 524, i8 7 }, %struct.qcom_reset_map { i32 524, i8 6 }, %struct.qcom_reset_map { i32 524, i8 5 }, %struct.qcom_reset_map { i32 524, i8 4 }, %struct.qcom_reset_map { i32 524, i8 3 }, %struct.qcom_reset_map { i32 524, i8 2 }, %struct.qcom_reset_map { i32 524, i8 1 }, %struct.qcom_reset_map { i32 524, i8 0 }, %struct.qcom_reset_map { i32 528, i8 31 }, %struct.qcom_reset_map { i32 528, i8 30 }, %struct.qcom_reset_map { i32 528, i8 29 }, %struct.qcom_reset_map { i32 528, i8 28 }, %struct.qcom_reset_map { i32 528, i8 27 }, %struct.qcom_reset_map { i32 528, i8 26 }, %struct.qcom_reset_map { i32 528, i8 25 }, %struct.qcom_reset_map { i32 528, i8 24 }, %struct.qcom_reset_map { i32 528, i8 21 }, %struct.qcom_reset_map { i32 528, i8 20 }, %struct.qcom_reset_map { i32 528, i8 19 }, %struct.qcom_reset_map { i32 528, i8 18 }, %struct.qcom_reset_map { i32 528, i8 17 }, %struct.qcom_reset_map { i32 528, i8 16 }, %struct.qcom_reset_map { i32 528, i8 15 }, %struct.qcom_reset_map { i32 528, i8 14 }, %struct.qcom_reset_map { i32 528, i8 13 }, %struct.qcom_reset_map { i32 528, i8 12 }, %struct.qcom_reset_map { i32 528, i8 11 }, %struct.qcom_reset_map { i32 528, i8 10 }, %struct.qcom_reset_map { i32 528, i8 9 }, %struct.qcom_reset_map { i32 528, i8 8 }, %struct.qcom_reset_map { i32 528, i8 7 }, %struct.qcom_reset_map { i32 528, i8 6 }, %struct.qcom_reset_map { i32 528, i8 4 }, %struct.qcom_reset_map { i32 528, i8 3 }, %struct.qcom_reset_map { i32 528, i8 2 }, %struct.qcom_reset_map { i32 528, i8 1 }, %struct.qcom_reset_map { i32 528, i8 0 }, %struct.qcom_reset_map { i32 532, i8 2 }, %struct.qcom_reset_map { i32 532, i8 1 }, %struct.qcom_reset_map { i32 532, i8 0 }], align 4
@tv_enc_ahb_clk = internal global %struct.clk_branch { i32 0, i32 476, i8 0, i8 23, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.11 }, ptr null, i32 8, i32 33554432, i8 0 } }, align 4
@amp_ahb_clk = internal global %struct.clk_branch { i32 0, i32 476, i8 0, i8 18, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.13 }, ptr null, i32 8, i32 16777216, i8 0 } }, align 4
@dsi2_s_ahb_clk = internal global %struct.clk_branch { i32 56, i32 476, i8 15, i8 20, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.15 }, ptr null, i32 8, i32 4194304, i8 0 } }, align 4
@jpegd_ahb_clk = internal global %struct.clk_branch { i32 0, i32 476, i8 0, i8 7, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.17 }, ptr null, i32 8, i32 2097152, i8 0 } }, align 4
@gfx2d0_ahb_clk = internal global %struct.clk_branch { i32 56, i32 476, i8 28, i8 2, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.19 }, ptr null, i32 8, i32 524288, i8 0 } }, align 4
@dsi_s_ahb_clk = internal global %struct.clk_branch { i32 56, i32 476, i8 20, i8 21, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.21 }, ptr null, i32 8, i32 262144, i8 0 } }, align 4
@dsi2_m_ahb_clk = internal global %struct.clk_branch { i32 0, i32 472, i8 0, i8 18, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.23 }, ptr null, i32 8, i32 131072, i8 0 } }, align 4
@vpe_ahb_clk = internal global %struct.clk_branch { i32 0, i32 476, i8 0, i8 15, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.25 }, ptr null, i32 8, i32 65536, i8 0 } }, align 4
@smmu_ahb_clk = internal global %struct.clk_branch { i32 8, i32 476, i8 26, i8 22, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.27 }, ptr null, i32 8, i32 32768, i8 0 } }, align 4
@hdmi_m_ahb_clk = internal global %struct.clk_branch { i32 56, i32 476, i8 21, i8 5, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.29 }, ptr null, i32 8, i32 16384, i8 0 } }, align 4
@vfe_ahb_clk = internal global %struct.clk_branch { i32 0, i32 476, i8 0, i8 14, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.31 }, ptr null, i32 8, i32 8192, i8 0 } }, align 4
@rot_ahb_clk = internal global %struct.clk_branch { i32 0, i32 476, i8 0, i8 13, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.33 }, ptr null, i32 8, i32 4096, i8 0 } }, align 4
@vcodec_ahb_clk = internal global %struct.clk_branch { i32 56, i32 476, i8 26, i8 12, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.35 }, ptr null, i32 8, i32 2048, i8 0 } }, align 4
@mdp_ahb_clk = internal global %struct.clk_branch { i32 0, i32 476, i8 0, i8 11, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.37 }, ptr null, i32 8, i32 1024, i8 0 } }, align 4
@dsi_m_ahb_clk = internal global %struct.clk_branch { i32 0, i32 476, i8 0, i8 19, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.39 }, ptr null, i32 8, i32 512, i8 0 } }, align 4
@csi_ahb_clk = internal global %struct.clk_branch { i32 0, i32 476, i8 0, i8 16, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.41 }, ptr null, i32 8, i32 128, i8 0 } }, align 4
@mmss_imem_ahb_clk = internal global %struct.clk_branch { i32 56, i32 476, i8 12, i8 10, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.43 }, ptr null, i32 8, i32 64, i8 0 } }, align 4
@ijpeg_ahb_clk = internal global %struct.clk_branch { i32 0, i32 476, i8 0, i8 9, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.45 }, ptr null, i32 8, i32 32, i8 0 } }, align 4
@hdmi_s_ahb_clk = internal global %struct.clk_branch { i32 56, i32 476, i8 22, i8 6, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.47 }, ptr null, i32 8, i32 16, i8 0 } }, align 4
@gfx3d_ahb_clk = internal global %struct.clk_branch { i32 56, i32 476, i8 27, i8 4, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.49 }, ptr null, i32 8, i32 8, i8 0 } }, align 4
@gfx2d1_ahb_clk = internal global %struct.clk_branch { i32 56, i32 476, i8 29, i8 3, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.51 }, ptr null, i32 8, i32 4, i8 0 } }, align 4
@jpegd_axi_clk = internal global %struct.clk_branch { i32 0, i32 472, i8 0, i8 5, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.53 }, ptr null, i32 24, i32 33554432, i8 0 } }, align 4
@gmem_axi_clk = internal global %struct.clk_branch { i32 0, i32 472, i8 0, i8 6, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.55 }, ptr null, i32 24, i32 16777216, i8 0 } }, align 4
@mdp_axi_clk = internal global %struct.clk_branch { i32 24, i32 472, i8 16, i8 8, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.57 }, ptr null, i32 24, i32 8388608, i8 0 } }, align 4
@mmss_imem_axi_clk = internal global %struct.clk_branch { i32 24, i32 472, i8 15, i8 7, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.59 }, ptr null, i32 24, i32 4194304, i8 0 } }, align 4
@ijpeg_axi_clk = internal global %struct.clk_branch { i32 24, i32 472, i8 11, i8 4, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.61 }, ptr null, i32 24, i32 2097152, i8 0 } }, align 4
@gfx3d_axi_clk = internal global %struct.clk_branch { i32 580, i32 576, i8 24, i8 30, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.63 }, ptr null, i32 580, i32 33554432, i8 0 } }, align 4
@vcodec_axi_clk = internal global %struct.clk_branch { i32 24, i32 472, i8 13, i8 3, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.65 }, ptr null, i32 24, i32 524288, i8 0 } }, align 4
@vfe_axi_clk = internal global %struct.clk_branch { i32 0, i32 472, i8 0, i8 0, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.67 }, ptr null, i32 24, i32 262144, i8 0 } }, align 4
@vpe_axi_clk = internal global %struct.clk_branch { i32 32, i32 472, i8 27, i8 1, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.69 }, ptr null, i32 32, i32 67108864, i8 0 } }, align 4
@rot_axi_clk = internal global %struct.clk_branch { i32 32, i32 472, i8 25, i8 2, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.71 }, ptr null, i32 32, i32 16777216, i8 0 } }, align 4
@vcodec_axi_a_clk = internal global %struct.clk_branch { i32 276, i32 488, i8 24, i8 26, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.73 }, ptr null, i32 276, i32 33554432, i8 0 } }, align 4
@vcodec_axi_b_clk = internal global %struct.clk_branch { i32 276, i32 488, i8 22, i8 25, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.75 }, ptr null, i32 276, i32 8388608, i8 0 } }, align 4
@csi0_src = internal global %struct.clk_rcg { i32 72, i32 68, %struct.mn { i8 5, i8 7, i8 6, i8 24, i8 8, i8 8, i8 0 }, %struct.pre_div { i8 14, i8 2 }, %struct.src_sel { i8 0, ptr @mmcc_pxo_pll8_pll2_map }, ptr @clk_tbl_csi, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.77 }, ptr null, i32 64, i32 4, i8 0 } }, align 4
@csi0_clk = internal global %struct.clk_branch { i32 0, i32 460, i8 0, i8 13, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.80 }, ptr null, i32 64, i32 1, i8 0 } }, align 4
@csi0_phy_clk = internal global %struct.clk_branch { i32 0, i32 488, i8 0, i8 9, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.83 }, ptr null, i32 64, i32 256, i8 0 } }, align 4
@csi1_src = internal global %struct.clk_rcg { i32 16, i32 40, %struct.mn { i8 5, i8 7, i8 6, i8 24, i8 8, i8 8, i8 0 }, %struct.pre_div { i8 14, i8 2 }, %struct.src_sel { i8 0, ptr @mmcc_pxo_pll8_pll2_map }, ptr @clk_tbl_csi, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.85 }, ptr null, i32 36, i32 4, i8 0 } }, align 4
@csi1_clk = internal global %struct.clk_branch { i32 0, i32 460, i8 0, i8 14, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.88 }, ptr null, i32 36, i32 1, i8 0 } }, align 4
@csi1_phy_clk = internal global %struct.clk_branch { i32 0, i32 488, i8 0, i8 10, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.91 }, ptr null, i32 36, i32 256, i8 0 } }, align 4
@csi2_src = internal global %struct.clk_rcg { i32 564, i32 556, %struct.mn { i8 5, i8 7, i8 6, i8 24, i8 8, i8 8, i8 0 }, %struct.pre_div { i8 14, i8 2 }, %struct.src_sel { i8 0, ptr @mmcc_pxo_pll8_pll2_map }, ptr @clk_tbl_csi, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.93 }, ptr null, i32 556, i32 4, i8 0 } }, align 4
@csi2_clk = internal global %struct.clk_branch { i32 0, i32 460, i8 0, i8 29, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.96 }, ptr null, i32 556, i32 1, i8 0 } }, align 4
@csi2_phy_clk = internal global %struct.clk_branch { i32 0, i32 488, i8 0, i8 29, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.99 }, ptr null, i32 556, i32 256, i8 0 } }, align 4
@dsi1_src = internal global %struct.clk_rcg { i32 84, i32 80, %struct.mn { i8 5, i8 7, i8 6, i8 24, i8 8, i8 8, i8 0 }, %struct.pre_div { i8 14, i8 2 }, %struct.src_sel { i8 0, ptr @mmcc_pxo_dsi2_dsi1_map }, ptr null, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.101 }, ptr null, i32 76, i32 4, i8 0 } }, align 4
@dsi1_clk = internal global %struct.clk_branch { i32 0, i32 464, i8 0, i8 2, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.106 }, ptr null, i32 76, i32 1, i8 0 } }, align 4
@csi_pix_clk = internal global %struct.clk_pix_rdi { i32 88, i32 33554432, i32 568, i32 8192, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.108 }, ptr null, i32 88, i32 67108864, i8 0 } }, align 4
@csi_rdi_clk = internal global %struct.clk_pix_rdi { i32 88, i32 4096, i32 568, i32 4096, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.110 }, ptr null, i32 88, i32 8192, i8 0 } }, align 4
@mdp_vsync_clk = internal global %struct.clk_branch { i32 0, i32 460, i8 0, i8 22, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.113 }, ptr null, i32 88, i32 64, i8 0 } }, align 4
@hdmi_app_clk = internal global %struct.clk_branch { i32 0, i32 460, i8 0, i8 25, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.116 }, ptr null, i32 92, i32 2048, i8 0 } }, align 4
@csi_pix1_clk = internal global %struct.clk_pix_rdi { i32 568, i32 256, i32 568, i32 512, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.118 }, ptr null, i32 568, i32 1024, i8 0 } }, align 4
@csi_rdi2_clk = internal global %struct.clk_pix_rdi { i32 568, i32 16, i32 568, i32 32, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.120 }, ptr null, i32 568, i32 64, i8 0 } }, align 4
@csi_rdi1_clk = internal global %struct.clk_pix_rdi { i32 568, i32 1, i32 568, i32 2, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.122 }, ptr null, i32 568, i32 4, i8 0 } }, align 4
@gfx2d0_src = internal global %struct.clk_dyn_rcg { [2 x i32] [i32 112, i32 112], [2 x i32] [i32 100, i32 104], i32 96, i8 11, [2 x %struct.mn] [%struct.mn { i8 8, i8 25, i8 9, i8 20, i8 4, i8 4, i8 0 }, %struct.mn { i8 5, i8 24, i8 6, i8 16, i8 4, i8 4, i8 0 }], [2 x %struct.pre_div] zeroinitializer, [2 x %struct.src_sel] [%struct.src_sel { i8 3, ptr @mmcc_pxo_pll8_pll2_map }, %struct.src_sel { i8 0, ptr @mmcc_pxo_pll8_pll2_map }], ptr @clk_tbl_gfx2d, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.124 }, ptr null, i32 96, i32 4, i8 0 } }, align 4
@gfx2d0_clk = internal global %struct.clk_branch { i32 0, i32 456, i8 0, i8 9, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.127 }, ptr null, i32 96, i32 1, i8 0 } }, align 4
@gfx2d1_src = internal global %struct.clk_dyn_rcg { [2 x i32] [i32 124, i32 124], [2 x i32] [i32 120, i32 108], i32 116, i8 11, [2 x %struct.mn] [%struct.mn { i8 8, i8 25, i8 9, i8 20, i8 4, i8 4, i8 0 }, %struct.mn { i8 5, i8 24, i8 6, i8 16, i8 4, i8 4, i8 0 }], [2 x %struct.pre_div] zeroinitializer, [2 x %struct.src_sel] [%struct.src_sel { i8 3, ptr @mmcc_pxo_pll8_pll2_map }, %struct.src_sel { i8 0, ptr @mmcc_pxo_pll8_pll2_map }], ptr @clk_tbl_gfx2d, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.129 }, ptr null, i32 116, i32 4, i8 0 } }, align 4
@gfx2d1_clk = internal global %struct.clk_branch { i32 0, i32 456, i8 0, i8 14, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.132 }, ptr null, i32 116, i32 1, i8 0 } }, align 4
@gfx3d_clk = internal global %struct.clk_branch { i32 0, i32 456, i8 0, i8 4, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.135 }, ptr null, i32 128, i32 1, i8 0 } }, align 4
@ijpeg_src = internal global %struct.clk_rcg { i32 160, i32 156, %struct.mn { i8 5, i8 7, i8 6, i8 16, i8 8, i8 8, i8 0 }, %struct.pre_div { i8 12, i8 2 }, %struct.src_sel { i8 0, ptr @mmcc_pxo_pll8_pll2_map }, ptr @clk_tbl_ijpeg, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.137 }, ptr null, i32 152, i32 4, i8 0 } }, align 4
@ijpeg_clk = internal global %struct.clk_branch { i32 0, i32 456, i8 0, i8 24, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.140 }, ptr null, i32 152, i32 1, i8 0 } }, align 4
@jpegd_src = internal global %struct.clk_rcg { i32 172, i32 0, %struct.mn zeroinitializer, %struct.pre_div { i8 12, i8 4 }, %struct.src_sel { i8 0, ptr @mmcc_pxo_pll8_pll2_map }, ptr @clk_tbl_jpegd, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.142 }, ptr null, i32 164, i32 4, i8 0 } }, align 4
@jpegd_clk = internal global %struct.clk_branch { i32 0, i32 456, i8 0, i8 19, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.145 }, ptr null, i32 164, i32 1, i8 0 } }, align 4
@mdp_src = internal global %struct.clk_dyn_rcg { [2 x i32] [i32 208, i32 208], [2 x i32] [i32 196, i32 200], i32 192, i8 11, [2 x %struct.mn] [%struct.mn { i8 8, i8 31, i8 9, i8 22, i8 8, i8 8, i8 0 }, %struct.mn { i8 5, i8 30, i8 6, i8 14, i8 8, i8 8, i8 0 }], [2 x %struct.pre_div] zeroinitializer, [2 x %struct.src_sel] [%struct.src_sel { i8 3, ptr @mmcc_pxo_pll8_pll2_map }, %struct.src_sel { i8 0, ptr @mmcc_pxo_pll8_pll2_map }], ptr @clk_tbl_mdp, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.147 }, ptr null, i32 192, i32 4, i8 0 } }, align 4
@mdp_clk = internal global %struct.clk_branch { i32 0, i32 464, i8 0, i8 10, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.150 }, ptr null, i32 192, i32 1, i8 0 } }, align 4
@mdp_lut_clk = internal global %struct.clk_branch { i32 0, i32 488, i8 0, i8 13, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.153 }, ptr null, i32 364, i32 1, i8 0 } }, align 4
@dsi2_pixel_src = internal global %struct.clk_rcg { i32 228, i32 184, %struct.mn { i8 5, i8 7, i8 6, i8 16, i8 8, i8 8, i8 0 }, %struct.pre_div { i8 12, i8 4 }, %struct.src_sel { i8 0, ptr @mmcc_pxo_dsi2_dsi1_map }, ptr null, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.155 }, ptr null, i32 148, i32 4, i8 0 } }, align 4
@dsi2_pixel_clk = internal global %struct.clk_branch { i32 0, i32 464, i8 0, i8 19, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.158 }, ptr null, i32 148, i32 1, i8 0 } }, align 4
@dsi2_src = internal global %struct.clk_rcg { i32 300, i32 168, %struct.mn { i8 5, i8 7, i8 6, i8 24, i8 8, i8 8, i8 0 }, %struct.pre_div { i8 14, i8 2 }, %struct.src_sel { i8 0, ptr @mmcc_pxo_dsi2_dsi1_map }, ptr null, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.160 }, ptr null, i32 60, i32 4, i8 0 } }, align 4
@dsi2_clk = internal global %struct.clk_branch { i32 0, i32 464, i8 0, i8 20, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.163 }, ptr null, i32 60, i32 1, i8 0 } }, align 4
@dsi1_byte_src = internal global %struct.clk_rcg { i32 176, i32 0, %struct.mn zeroinitializer, %struct.pre_div { i8 12, i8 4 }, %struct.src_sel { i8 0, ptr @mmcc_pxo_dsi1_dsi2_byte_map }, ptr null, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.165 }, ptr null, i32 144, i32 4, i8 0 } }, align 4
@dsi1_byte_clk = internal global %struct.clk_branch { i32 0, i32 460, i8 0, i8 21, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.170 }, ptr null, i32 144, i32 1, i8 0 } }, align 4
@dsi2_byte_src = internal global %struct.clk_rcg { i32 300, i32 0, %struct.mn zeroinitializer, %struct.pre_div { i8 12, i8 4 }, %struct.src_sel { i8 0, ptr @mmcc_pxo_dsi1_dsi2_byte_map }, ptr null, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.172 }, ptr null, i32 304, i32 4, i8 0 } }, align 4
@dsi2_byte_clk = internal global %struct.clk_branch { i32 0, i32 460, i8 0, i8 20, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.175 }, ptr null, i32 180, i32 1, i8 0 } }, align 4
@dsi1_esc_src = internal global %struct.clk_rcg { i32 284, i32 0, %struct.mn zeroinitializer, %struct.pre_div { i8 12, i8 4 }, %struct.src_sel { i8 0, ptr @mmcc_pxo_dsi1_dsi2_byte_map }, ptr null, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.177 }, ptr null, i32 204, i32 4, i8 0 } }, align 4
@dsi1_esc_clk = internal global %struct.clk_branch { i32 0, i32 488, i8 0, i8 1, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.180 }, ptr null, i32 204, i32 1, i8 0 } }, align 4
@dsi2_esc_src = internal global %struct.clk_rcg { i32 336, i32 0, %struct.mn zeroinitializer, %struct.pre_div { i8 12, i8 4 }, %struct.src_sel { i8 0, ptr @mmcc_pxo_dsi1_dsi2_byte_map }, ptr null, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.182 }, ptr null, i32 316, i32 4, i8 0 } }, align 4
@dsi2_esc_clk = internal global %struct.clk_branch { i32 0, i32 488, i8 0, i8 3, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.185 }, ptr null, i32 316, i32 1, i8 0 } }, align 4
@rot_src = internal global %struct.clk_dyn_rcg { [2 x i32] [i32 232, i32 232], [2 x i32] zeroinitializer, i32 232, i8 30, [2 x %struct.mn] zeroinitializer, [2 x %struct.pre_div] [%struct.pre_div { i8 22, i8 4 }, %struct.pre_div { i8 26, i8 4 }], [2 x %struct.src_sel] [%struct.src_sel { i8 16, ptr @mmcc_pxo_pll8_pll2_map }, %struct.src_sel { i8 19, ptr @mmcc_pxo_pll8_pll2_map }], ptr @clk_tbl_rot, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.187 }, ptr null, i32 224, i32 4, i8 0 } }, align 4
@rot_clk = internal global %struct.clk_branch { i32 0, i32 464, i8 0, i8 15, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.190 }, ptr null, i32 224, i32 1, i8 0 } }, align 4
@tv_enc_clk = internal global %struct.clk_branch { i32 0, i32 468, i8 0, i8 9, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.192 }, ptr null, i32 236, i32 256, i8 0 } }, align 4
@tv_dac_clk = internal global %struct.clk_branch { i32 0, i32 468, i8 0, i8 10, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.195 }, ptr null, i32 236, i32 1024, i8 0 } }, align 4
@hdmi_tv_clk = internal global %struct.clk_branch { i32 0, i32 468, i8 0, i8 11, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.197 }, ptr null, i32 236, i32 4096, i8 0 } }, align 4
@mdp_tv_clk = internal global %struct.clk_branch { i32 0, i32 468, i8 0, i8 12, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.199 }, ptr null, i32 236, i32 1, i8 0 } }, align 4
@tv_src = internal global %struct.clk_rcg { i32 244, i32 240, %struct.mn { i8 5, i8 7, i8 6, i8 16, i8 8, i8 8, i8 0 }, %struct.pre_div { i8 14, i8 2 }, %struct.src_sel { i8 0, ptr @mmcc_pxo_hdmi_map }, ptr @clk_tbl_tv, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.200 }, ptr null, i32 236, i32 4, i8 0 } }, align 4
@vcodec_src = internal global %struct.clk_dyn_rcg { [2 x i32] [i32 256, i32 256], [2 x i32] [i32 252, i32 296], i32 248, i8 13, [2 x %struct.mn] [%struct.mn { i8 5, i8 31, i8 6, i8 11, i8 8, i8 8, i8 0 }, %struct.mn { i8 10, i8 30, i8 11, i8 19, i8 8, i8 8, i8 0 }], [2 x %struct.pre_div] zeroinitializer, [2 x %struct.src_sel] [%struct.src_sel { i8 27, ptr @mmcc_pxo_pll8_pll2_map }, %struct.src_sel { i8 0, ptr @mmcc_pxo_pll8_pll2_map }], ptr @clk_tbl_vcodec, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.203 }, ptr null, i32 248, i32 4, i8 0 } }, align 4
@vcodec_clk = internal global %struct.clk_branch { i32 0, i32 464, i8 0, i8 29, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.206 }, ptr null, i32 248, i32 1, i8 0 } }, align 4
@vfe_src = internal global %struct.clk_rcg { i32 264, i32 0, %struct.mn { i8 5, i8 7, i8 6, i8 16, i8 8, i8 8, i8 0 }, %struct.pre_div { i8 10, i8 1 }, %struct.src_sel { i8 0, ptr @mmcc_pxo_pll8_pll2_map }, ptr @clk_tbl_vfe, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.208 }, ptr null, i32 260, i32 4, i8 0 } }, align 4
@vfe_clk = internal global %struct.clk_branch { i32 0, i32 460, i8 0, i8 6, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.211 }, ptr null, i32 260, i32 1, i8 0 } }, align 4
@vfe_csi_clk = internal global %struct.clk_branch { i32 0, i32 460, i8 0, i8 8, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.214 }, ptr null, i32 260, i32 4096, i8 0 } }, align 4
@vpe_src = internal global %struct.clk_rcg { i32 280, i32 0, %struct.mn zeroinitializer, %struct.pre_div { i8 12, i8 4 }, %struct.src_sel { i8 0, ptr @mmcc_pxo_pll8_pll2_map }, ptr @clk_tbl_vpe, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.216 }, ptr null, i32 272, i32 4, i8 0 } }, align 4
@vpe_clk = internal global %struct.clk_branch { i32 0, i32 456, i8 0, i8 28, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.219 }, ptr null, i32 272, i32 1, i8 0 } }, align 4
@dsi1_pixel_src = internal global %struct.clk_rcg { i32 312, i32 308, %struct.mn { i8 5, i8 7, i8 6, i8 16, i8 8, i8 8, i8 0 }, %struct.pre_div { i8 12, i8 4 }, %struct.src_sel { i8 0, ptr @mmcc_pxo_dsi2_dsi1_map }, ptr null, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.221 }, ptr null, i32 304, i32 4, i8 0 } }, align 4
@dsi1_pixel_clk = internal global %struct.clk_branch { i32 0, i32 464, i8 0, i8 6, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.224 }, ptr null, i32 304, i32 1, i8 0 } }, align 4
@camclk0_src = internal global %struct.clk_rcg { i32 328, i32 324, %struct.mn { i8 5, i8 8, i8 6, i8 24, i8 8, i8 8, i8 1 }, %struct.pre_div { i8 14, i8 2 }, %struct.src_sel { i8 0, ptr @mmcc_pxo_pll8_pll2_map }, ptr @clk_tbl_cam, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.226 }, ptr null, i32 320, i32 4, i8 0 } }, align 4
@camclk0_clk = internal global %struct.clk_branch { i32 0, i32 488, i8 0, i8 15, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.229 }, ptr null, i32 320, i32 1, i8 0 } }, align 4
@camclk1_src = internal global %struct.clk_rcg { i32 348, i32 344, %struct.mn { i8 5, i8 8, i8 6, i8 24, i8 8, i8 8, i8 1 }, %struct.pre_div { i8 14, i8 2 }, %struct.src_sel { i8 0, ptr @mmcc_pxo_pll8_pll2_map }, ptr @clk_tbl_cam, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.231 }, ptr null, i32 340, i32 4, i8 0 } }, align 4
@camclk1_clk = internal global %struct.clk_branch { i32 0, i32 488, i8 0, i8 16, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.234 }, ptr null, i32 340, i32 1, i8 0 } }, align 4
@camclk2_src = internal global %struct.clk_rcg { i32 552, i32 548, %struct.mn { i8 5, i8 8, i8 6, i8 24, i8 8, i8 8, i8 1 }, %struct.pre_div { i8 14, i8 2 }, %struct.src_sel { i8 0, ptr @mmcc_pxo_pll8_pll2_map }, ptr @clk_tbl_cam, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.236 }, ptr null, i32 544, i32 4, i8 0 } }, align 4
@camclk2_clk = internal global %struct.clk_branch { i32 0, i32 488, i8 0, i8 16, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.239 }, ptr null, i32 544, i32 1, i8 0 } }, align 4
@csiphytimer_src = internal global %struct.clk_rcg { i32 360, i32 356, %struct.mn { i8 5, i8 8, i8 6, i8 24, i8 8, i8 8, i8 1 }, %struct.pre_div { i8 14, i8 2 }, %struct.src_sel { i8 0, ptr @mmcc_pxo_pll8_pll2_map }, ptr @clk_tbl_csiphytimer, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.241 }, ptr null, i32 352, i32 4, i8 0 } }, align 4
@csiphy2_timer_clk = internal global %struct.clk_branch { i32 0, i32 488, i8 0, i8 30, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.243 }, ptr null, i32 352, i32 2048, i8 0 } }, align 4
@csiphy1_timer_clk = internal global %struct.clk_branch { i32 0, i32 488, i8 0, i8 18, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.245 }, ptr null, i32 352, i32 512, i8 0 } }, align 4
@csiphy0_timer_clk = internal global %struct.clk_branch { i32 0, i32 488, i8 0, i8 17, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.247 }, ptr null, i32 352, i32 1, i8 0 } }, align 4
@pll2 = internal global %struct.clk_pll { i32 800, i32 804, i32 808, i32 812, i32 796, i32 820, i8 16, i8 0, i8 0, ptr null, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.249 }, ptr null, i32 0, i32 0, i8 0 } }, align 4
@.str.10 = private unnamed_addr constant [15 x i8] c"tv_enc_ahb_clk\00", align 1
@clk_branch_ops = external dso_local constant %struct.clk_ops, align 4
@.compoundliteral.11 = internal global %struct.clk_init_data { ptr @.str.10, ptr @clk_branch_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, align 4
@.str.12 = private unnamed_addr constant [12 x i8] c"amp_ahb_clk\00", align 1
@.compoundliteral.13 = internal global %struct.clk_init_data { ptr @.str.12, ptr @clk_branch_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, align 4
@.str.14 = private unnamed_addr constant [15 x i8] c"dsi2_s_ahb_clk\00", align 1
@.compoundliteral.15 = internal global %struct.clk_init_data { ptr @.str.14, ptr @clk_branch_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, align 4
@.str.16 = private unnamed_addr constant [14 x i8] c"jpegd_ahb_clk\00", align 1
@.compoundliteral.17 = internal global %struct.clk_init_data { ptr @.str.16, ptr @clk_branch_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, align 4
@.str.18 = private unnamed_addr constant [15 x i8] c"gfx2d0_ahb_clk\00", align 1
@.compoundliteral.19 = internal global %struct.clk_init_data { ptr @.str.18, ptr @clk_branch_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, align 4
@.str.20 = private unnamed_addr constant [14 x i8] c"dsi_s_ahb_clk\00", align 1
@.compoundliteral.21 = internal global %struct.clk_init_data { ptr @.str.20, ptr @clk_branch_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, align 4
@.str.22 = private unnamed_addr constant [15 x i8] c"dsi2_m_ahb_clk\00", align 1
@.compoundliteral.23 = internal global %struct.clk_init_data { ptr @.str.22, ptr @clk_branch_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, align 4
@.str.24 = private unnamed_addr constant [12 x i8] c"vpe_ahb_clk\00", align 1
@.compoundliteral.25 = internal global %struct.clk_init_data { ptr @.str.24, ptr @clk_branch_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, align 4
@.str.26 = private unnamed_addr constant [13 x i8] c"smmu_ahb_clk\00", align 1
@.compoundliteral.27 = internal global %struct.clk_init_data { ptr @.str.26, ptr @clk_branch_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, align 4
@.str.28 = private unnamed_addr constant [15 x i8] c"hdmi_m_ahb_clk\00", align 1
@.compoundliteral.29 = internal global %struct.clk_init_data { ptr @.str.28, ptr @clk_branch_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, align 4
@.str.30 = private unnamed_addr constant [12 x i8] c"vfe_ahb_clk\00", align 1
@.compoundliteral.31 = internal global %struct.clk_init_data { ptr @.str.30, ptr @clk_branch_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, align 4
@.str.32 = private unnamed_addr constant [12 x i8] c"rot_ahb_clk\00", align 1
@.compoundliteral.33 = internal global %struct.clk_init_data { ptr @.str.32, ptr @clk_branch_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, align 4
@.str.34 = private unnamed_addr constant [15 x i8] c"vcodec_ahb_clk\00", align 1
@.compoundliteral.35 = internal global %struct.clk_init_data { ptr @.str.34, ptr @clk_branch_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, align 4
@.str.36 = private unnamed_addr constant [12 x i8] c"mdp_ahb_clk\00", align 1
@.compoundliteral.37 = internal global %struct.clk_init_data { ptr @.str.36, ptr @clk_branch_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, align 4
@.str.38 = private unnamed_addr constant [14 x i8] c"dsi_m_ahb_clk\00", align 1
@.compoundliteral.39 = internal global %struct.clk_init_data { ptr @.str.38, ptr @clk_branch_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, align 4
@.str.40 = private unnamed_addr constant [12 x i8] c"csi_ahb_clk\00", align 1
@.compoundliteral.41 = internal global %struct.clk_init_data { ptr @.str.40, ptr @clk_branch_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, align 4
@.str.42 = private unnamed_addr constant [18 x i8] c"mmss_imem_ahb_clk\00", align 1
@.compoundliteral.43 = internal global %struct.clk_init_data { ptr @.str.42, ptr @clk_branch_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, align 4
@.str.44 = private unnamed_addr constant [14 x i8] c"ijpeg_ahb_clk\00", align 1
@.compoundliteral.45 = internal global %struct.clk_init_data { ptr @.str.44, ptr @clk_branch_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, align 4
@.str.46 = private unnamed_addr constant [15 x i8] c"hdmi_s_ahb_clk\00", align 1
@.compoundliteral.47 = internal global %struct.clk_init_data { ptr @.str.46, ptr @clk_branch_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, align 4
@.str.48 = private unnamed_addr constant [14 x i8] c"gfx3d_ahb_clk\00", align 1
@.compoundliteral.49 = internal global %struct.clk_init_data { ptr @.str.48, ptr @clk_branch_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, align 4
@.str.50 = private unnamed_addr constant [15 x i8] c"gfx2d1_ahb_clk\00", align 1
@.compoundliteral.51 = internal global %struct.clk_init_data { ptr @.str.50, ptr @clk_branch_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, align 4
@.str.52 = private unnamed_addr constant [14 x i8] c"jpegd_axi_clk\00", align 1
@.compoundliteral.53 = internal global %struct.clk_init_data { ptr @.str.52, ptr @clk_branch_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, align 4
@.str.54 = private unnamed_addr constant [13 x i8] c"gmem_axi_clk\00", align 1
@.compoundliteral.55 = internal global %struct.clk_init_data { ptr @.str.54, ptr @clk_branch_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, align 4
@.str.56 = private unnamed_addr constant [12 x i8] c"mdp_axi_clk\00", align 1
@.compoundliteral.57 = internal global %struct.clk_init_data { ptr @.str.56, ptr @clk_branch_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, align 4
@.str.58 = private unnamed_addr constant [18 x i8] c"mmss_imem_axi_clk\00", align 1
@.compoundliteral.59 = internal global %struct.clk_init_data { ptr @.str.58, ptr @clk_branch_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, align 4
@.str.60 = private unnamed_addr constant [14 x i8] c"ijpeg_axi_clk\00", align 1
@.compoundliteral.61 = internal global %struct.clk_init_data { ptr @.str.60, ptr @clk_branch_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, align 4
@.str.62 = private unnamed_addr constant [14 x i8] c"gfx3d_axi_clk\00", align 1
@.compoundliteral.63 = internal global %struct.clk_init_data { ptr @.str.62, ptr @clk_branch_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, align 4
@.str.64 = private unnamed_addr constant [15 x i8] c"vcodec_axi_clk\00", align 1
@.compoundliteral.65 = internal global %struct.clk_init_data { ptr @.str.64, ptr @clk_branch_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, align 4
@.str.66 = private unnamed_addr constant [12 x i8] c"vfe_axi_clk\00", align 1
@.compoundliteral.67 = internal global %struct.clk_init_data { ptr @.str.66, ptr @clk_branch_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, align 4
@.str.68 = private unnamed_addr constant [12 x i8] c"vpe_axi_clk\00", align 1
@.compoundliteral.69 = internal global %struct.clk_init_data { ptr @.str.68, ptr @clk_branch_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, align 4
@.str.70 = private unnamed_addr constant [12 x i8] c"rot_axi_clk\00", align 1
@.compoundliteral.71 = internal global %struct.clk_init_data { ptr @.str.70, ptr @clk_branch_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, align 4
@.str.72 = private unnamed_addr constant [17 x i8] c"vcodec_axi_a_clk\00", align 1
@.compoundliteral.73 = internal global %struct.clk_init_data { ptr @.str.72, ptr @clk_branch_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, align 4
@.str.74 = private unnamed_addr constant [17 x i8] c"vcodec_axi_b_clk\00", align 1
@.compoundliteral.75 = internal global %struct.clk_init_data { ptr @.str.74, ptr @clk_branch_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, align 4
@mmcc_pxo_pll8_pll2_map = internal constant [3 x %struct.parent_map] [%struct.parent_map zeroinitializer, %struct.parent_map { i8 1, i8 2 }, %struct.parent_map { i8 2, i8 1 }], align 1
@clk_tbl_csi = internal global [4 x %struct.freq_tbl] [%struct.freq_tbl { i32 27000000, i8 0, i8 1, i16 0, i16 0 }, %struct.freq_tbl { i32 85330000, i8 1, i8 1, i16 2, i16 9 }, %struct.freq_tbl { i32 177780000, i8 2, i8 1, i16 2, i16 9 }, %struct.freq_tbl zeroinitializer], align 4
@.str.76 = private unnamed_addr constant [9 x i8] c"csi0_src\00", align 1
@clk_rcg_ops = external dso_local constant %struct.clk_ops, align 4
@mmcc_pxo_pll8_pll2 = internal constant [3 x ptr] [ptr @.str.3, ptr @.str.4, ptr @.str.5], align 4
@.compoundliteral.77 = internal global %struct.clk_init_data { ptr @.str.76, ptr @clk_rcg_ops, ptr @mmcc_pxo_pll8_pll2, ptr null, ptr null, i8 3, i32 0 }, align 4
@.str.78 = private unnamed_addr constant [9 x i8] c"csi0_clk\00", align 1
@.compoundliteral.79 = internal global [1 x ptr] [ptr @.str.76], align 4
@.compoundliteral.80 = internal global %struct.clk_init_data { ptr @.str.78, ptr @clk_branch_ops, ptr @.compoundliteral.79, ptr null, ptr null, i8 1, i32 4 }, align 4
@.str.81 = private unnamed_addr constant [13 x i8] c"csi0_phy_clk\00", align 1
@.compoundliteral.82 = internal global [1 x ptr] [ptr @.str.76], align 4
@.compoundliteral.83 = internal global %struct.clk_init_data { ptr @.str.81, ptr @clk_branch_ops, ptr @.compoundliteral.82, ptr null, ptr null, i8 1, i32 4 }, align 4
@.str.84 = private unnamed_addr constant [9 x i8] c"csi1_src\00", align 1
@.compoundliteral.85 = internal global %struct.clk_init_data { ptr @.str.84, ptr @clk_rcg_ops, ptr @mmcc_pxo_pll8_pll2, ptr null, ptr null, i8 3, i32 0 }, align 4
@.str.86 = private unnamed_addr constant [9 x i8] c"csi1_clk\00", align 1
@.compoundliteral.87 = internal global [1 x ptr] [ptr @.str.84], align 4
@.compoundliteral.88 = internal global %struct.clk_init_data { ptr @.str.86, ptr @clk_branch_ops, ptr @.compoundliteral.87, ptr null, ptr null, i8 1, i32 4 }, align 4
@.str.89 = private unnamed_addr constant [13 x i8] c"csi1_phy_clk\00", align 1
@.compoundliteral.90 = internal global [1 x ptr] [ptr @.str.84], align 4
@.compoundliteral.91 = internal global %struct.clk_init_data { ptr @.str.89, ptr @clk_branch_ops, ptr @.compoundliteral.90, ptr null, ptr null, i8 1, i32 4 }, align 4
@.str.92 = private unnamed_addr constant [9 x i8] c"csi2_src\00", align 1
@.compoundliteral.93 = internal global %struct.clk_init_data { ptr @.str.92, ptr @clk_rcg_ops, ptr @mmcc_pxo_pll8_pll2, ptr null, ptr null, i8 3, i32 0 }, align 4
@.str.94 = private unnamed_addr constant [9 x i8] c"csi2_clk\00", align 1
@.compoundliteral.95 = internal global [1 x ptr] [ptr @.str.92], align 4
@.compoundliteral.96 = internal global %struct.clk_init_data { ptr @.str.94, ptr @clk_branch_ops, ptr @.compoundliteral.95, ptr null, ptr null, i8 1, i32 4 }, align 4
@.str.97 = private unnamed_addr constant [13 x i8] c"csi2_phy_clk\00", align 1
@.compoundliteral.98 = internal global [1 x ptr] [ptr @.str.92], align 4
@.compoundliteral.99 = internal global %struct.clk_init_data { ptr @.str.97, ptr @clk_branch_ops, ptr @.compoundliteral.98, ptr null, ptr null, i8 1, i32 4 }, align 4
@mmcc_pxo_dsi2_dsi1_map = internal constant [3 x %struct.parent_map] [%struct.parent_map zeroinitializer, %struct.parent_map { i8 7, i8 1 }, %struct.parent_map { i8 6, i8 3 }], align 1
@.str.100 = private unnamed_addr constant [9 x i8] c"dsi1_src\00", align 1
@clk_rcg_bypass2_ops = external dso_local constant %struct.clk_ops, align 4
@mmcc_pxo_dsi2_dsi1 = internal constant [3 x ptr] [ptr @.str.3, ptr @.str.102, ptr @.str.103], align 4
@.compoundliteral.101 = internal global %struct.clk_init_data { ptr @.str.100, ptr @clk_rcg_bypass2_ops, ptr @mmcc_pxo_dsi2_dsi1, ptr null, ptr null, i8 3, i32 4 }, align 4
@.str.102 = private unnamed_addr constant [8 x i8] c"dsi2pll\00", align 1
@.str.103 = private unnamed_addr constant [8 x i8] c"dsi1pll\00", align 1
@.str.104 = private unnamed_addr constant [9 x i8] c"dsi1_clk\00", align 1
@.compoundliteral.105 = internal global [1 x ptr] [ptr @.str.100], align 4
@.compoundliteral.106 = internal global %struct.clk_init_data { ptr @.str.104, ptr @clk_branch_ops, ptr @.compoundliteral.105, ptr null, ptr null, i8 1, i32 4 }, align 4
@.str.107 = private unnamed_addr constant [12 x i8] c"csi_pix_clk\00", align 1
@clk_ops_pix_rdi = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @clk_enable_regmap, ptr @clk_disable_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @__clk_mux_determine_rate, ptr @pix_rdi_set_parent, ptr @pix_rdi_get_parent, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@pix_rdi_parents = internal constant [3 x ptr] [ptr @.str.78, ptr @.str.86, ptr @.str.94], align 4
@.compoundliteral.108 = internal global %struct.clk_init_data { ptr @.str.107, ptr @clk_ops_pix_rdi, ptr @pix_rdi_parents, ptr null, ptr null, i8 3, i32 0 }, align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.109 = private unnamed_addr constant [12 x i8] c"csi_rdi_clk\00", align 1
@.compoundliteral.110 = internal global %struct.clk_init_data { ptr @.str.109, ptr @clk_ops_pix_rdi, ptr @pix_rdi_parents, ptr null, ptr null, i8 3, i32 0 }, align 4
@.str.111 = private unnamed_addr constant [14 x i8] c"mdp_vsync_clk\00", align 1
@.compoundliteral.112 = internal global [1 x ptr] [ptr @.str.3], align 4
@.compoundliteral.113 = internal global %struct.clk_init_data { ptr @.str.111, ptr @clk_branch_ops, ptr @.compoundliteral.112, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.114 = private unnamed_addr constant [13 x i8] c"hdmi_app_clk\00", align 1
@.compoundliteral.115 = internal global [1 x ptr] [ptr @.str.3], align 4
@.compoundliteral.116 = internal global %struct.clk_init_data { ptr @.str.114, ptr @clk_branch_ops, ptr @.compoundliteral.115, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.117 = private unnamed_addr constant [13 x i8] c"csi_pix1_clk\00", align 1
@.compoundliteral.118 = internal global %struct.clk_init_data { ptr @.str.117, ptr @clk_ops_pix_rdi, ptr @pix_rdi_parents, ptr null, ptr null, i8 3, i32 0 }, align 4
@.str.119 = private unnamed_addr constant [13 x i8] c"csi_rdi2_clk\00", align 1
@.compoundliteral.120 = internal global %struct.clk_init_data { ptr @.str.119, ptr @clk_ops_pix_rdi, ptr @pix_rdi_parents, ptr null, ptr null, i8 3, i32 0 }, align 4
@.str.121 = private unnamed_addr constant [13 x i8] c"csi_rdi1_clk\00", align 1
@.compoundliteral.122 = internal global %struct.clk_init_data { ptr @.str.121, ptr @clk_ops_pix_rdi, ptr @pix_rdi_parents, ptr null, ptr null, i8 3, i32 0 }, align 4
@clk_tbl_gfx2d = internal global [13 x %struct.freq_tbl] [%struct.freq_tbl { i32 27000000, i8 0, i8 0, i16 1, i16 0 }, %struct.freq_tbl { i32 48000000, i8 1, i8 0, i16 1, i16 8 }, %struct.freq_tbl { i32 54857000, i8 1, i8 0, i16 1, i16 7 }, %struct.freq_tbl { i32 64000000, i8 1, i8 0, i16 1, i16 6 }, %struct.freq_tbl { i32 76800000, i8 1, i8 0, i16 1, i16 5 }, %struct.freq_tbl { i32 96000000, i8 1, i8 0, i16 1, i16 4 }, %struct.freq_tbl { i32 128000000, i8 1, i8 0, i16 1, i16 3 }, %struct.freq_tbl { i32 145455000, i8 2, i8 0, i16 2, i16 11 }, %struct.freq_tbl { i32 160000000, i8 2, i8 0, i16 1, i16 5 }, %struct.freq_tbl { i32 177778000, i8 2, i8 0, i16 2, i16 9 }, %struct.freq_tbl { i32 200000000, i8 2, i8 0, i16 1, i16 4 }, %struct.freq_tbl { i32 228571000, i8 2, i8 0, i16 2, i16 7 }, %struct.freq_tbl zeroinitializer], align 4
@.str.123 = private unnamed_addr constant [11 x i8] c"gfx2d0_src\00", align 1
@.compoundliteral.124 = internal global %struct.clk_init_data { ptr @.str.123, ptr @clk_dyn_rcg_ops, ptr @mmcc_pxo_pll8_pll2, ptr null, ptr null, i8 3, i32 0 }, align 4
@.str.125 = private unnamed_addr constant [11 x i8] c"gfx2d0_clk\00", align 1
@.compoundliteral.126 = internal global [1 x ptr] [ptr @.str.123], align 4
@.compoundliteral.127 = internal global %struct.clk_init_data { ptr @.str.125, ptr @clk_branch_ops, ptr @.compoundliteral.126, ptr null, ptr null, i8 1, i32 4 }, align 4
@.str.128 = private unnamed_addr constant [11 x i8] c"gfx2d1_src\00", align 1
@.compoundliteral.129 = internal global %struct.clk_init_data { ptr @.str.128, ptr @clk_dyn_rcg_ops, ptr @mmcc_pxo_pll8_pll2, ptr null, ptr null, i8 3, i32 0 }, align 4
@.str.130 = private unnamed_addr constant [11 x i8] c"gfx2d1_clk\00", align 1
@.compoundliteral.131 = internal global [1 x ptr] [ptr @.str.128], align 4
@.compoundliteral.132 = internal global %struct.clk_init_data { ptr @.str.130, ptr @clk_branch_ops, ptr @.compoundliteral.131, ptr null, ptr null, i8 1, i32 4 }, align 4
@.str.133 = private unnamed_addr constant [10 x i8] c"gfx3d_clk\00", align 1
@.compoundliteral.134 = internal global [1 x ptr] [ptr @.str.2], align 4
@.compoundliteral.135 = internal global %struct.clk_init_data { ptr @.str.133, ptr @clk_branch_ops, ptr @.compoundliteral.134, ptr null, ptr null, i8 1, i32 4 }, align 4
@clk_tbl_ijpeg = internal global [12 x %struct.freq_tbl] [%struct.freq_tbl { i32 27000000, i8 0, i8 1, i16 0, i16 0 }, %struct.freq_tbl { i32 36570000, i8 1, i8 1, i16 2, i16 21 }, %struct.freq_tbl { i32 54860000, i8 1, i8 7, i16 0, i16 0 }, %struct.freq_tbl { i32 96000000, i8 1, i8 4, i16 0, i16 0 }, %struct.freq_tbl { i32 109710000, i8 1, i8 1, i16 2, i16 7 }, %struct.freq_tbl { i32 128000000, i8 1, i8 3, i16 0, i16 0 }, %struct.freq_tbl { i32 153600000, i8 1, i8 1, i16 2, i16 5 }, %struct.freq_tbl { i32 200000000, i8 2, i8 4, i16 0, i16 0 }, %struct.freq_tbl { i32 228571000, i8 2, i8 1, i16 2, i16 7 }, %struct.freq_tbl { i32 266667000, i8 2, i8 1, i16 1, i16 3 }, %struct.freq_tbl { i32 320000000, i8 2, i8 1, i16 2, i16 5 }, %struct.freq_tbl zeroinitializer], align 4
@.str.136 = private unnamed_addr constant [10 x i8] c"ijpeg_src\00", align 1
@.compoundliteral.137 = internal global %struct.clk_init_data { ptr @.str.136, ptr @clk_rcg_ops, ptr @mmcc_pxo_pll8_pll2, ptr null, ptr null, i8 3, i32 0 }, align 4
@.str.138 = private unnamed_addr constant [10 x i8] c"ijpeg_clk\00", align 1
@.compoundliteral.139 = internal global [1 x ptr] [ptr @.str.136], align 4
@.compoundliteral.140 = internal global %struct.clk_init_data { ptr @.str.138, ptr @clk_branch_ops, ptr @.compoundliteral.139, ptr null, ptr null, i8 1, i32 4 }, align 4
@clk_tbl_jpegd = internal global [6 x %struct.freq_tbl] [%struct.freq_tbl { i32 64000000, i8 1, i8 6, i16 0, i16 0 }, %struct.freq_tbl { i32 76800000, i8 1, i8 5, i16 0, i16 0 }, %struct.freq_tbl { i32 96000000, i8 1, i8 4, i16 0, i16 0 }, %struct.freq_tbl { i32 160000000, i8 2, i8 5, i16 0, i16 0 }, %struct.freq_tbl { i32 200000000, i8 2, i8 4, i16 0, i16 0 }, %struct.freq_tbl zeroinitializer], align 4
@.str.141 = private unnamed_addr constant [10 x i8] c"jpegd_src\00", align 1
@.compoundliteral.142 = internal global %struct.clk_init_data { ptr @.str.141, ptr @clk_rcg_ops, ptr @mmcc_pxo_pll8_pll2, ptr null, ptr null, i8 3, i32 0 }, align 4
@.str.143 = private unnamed_addr constant [10 x i8] c"jpegd_clk\00", align 1
@.compoundliteral.144 = internal global [1 x ptr] [ptr @.str.141], align 4
@.compoundliteral.145 = internal global %struct.clk_init_data { ptr @.str.143, ptr @clk_branch_ops, ptr @.compoundliteral.144, ptr null, ptr null, i8 1, i32 4 }, align 4
@clk_tbl_mdp = internal global [17 x %struct.freq_tbl] [%struct.freq_tbl { i32 9600000, i8 1, i8 1, i16 1, i16 40 }, %struct.freq_tbl { i32 13710000, i8 1, i8 1, i16 1, i16 28 }, %struct.freq_tbl { i32 27000000, i8 0, i8 1, i16 0, i16 0 }, %struct.freq_tbl { i32 29540000, i8 1, i8 1, i16 1, i16 13 }, %struct.freq_tbl { i32 34910000, i8 1, i8 1, i16 1, i16 11 }, %struct.freq_tbl { i32 38400000, i8 1, i8 1, i16 1, i16 10 }, %struct.freq_tbl { i32 59080000, i8 1, i8 1, i16 2, i16 13 }, %struct.freq_tbl { i32 76800000, i8 1, i8 1, i16 1, i16 5 }, %struct.freq_tbl { i32 85330000, i8 1, i8 1, i16 2, i16 9 }, %struct.freq_tbl { i32 96000000, i8 1, i8 1, i16 1, i16 4 }, %struct.freq_tbl { i32 128000000, i8 1, i8 1, i16 1, i16 3 }, %struct.freq_tbl { i32 160000000, i8 2, i8 1, i16 1, i16 5 }, %struct.freq_tbl { i32 177780000, i8 2, i8 1, i16 2, i16 9 }, %struct.freq_tbl { i32 200000000, i8 2, i8 1, i16 1, i16 4 }, %struct.freq_tbl { i32 228571000, i8 2, i8 1, i16 2, i16 7 }, %struct.freq_tbl { i32 266667000, i8 2, i8 1, i16 1, i16 3 }, %struct.freq_tbl zeroinitializer], align 4
@.str.146 = private unnamed_addr constant [8 x i8] c"mdp_src\00", align 1
@.compoundliteral.147 = internal global %struct.clk_init_data { ptr @.str.146, ptr @clk_dyn_rcg_ops, ptr @mmcc_pxo_pll8_pll2, ptr null, ptr null, i8 3, i32 0 }, align 4
@.str.148 = private unnamed_addr constant [8 x i8] c"mdp_clk\00", align 1
@.compoundliteral.149 = internal global [1 x ptr] [ptr @.str.146], align 4
@.compoundliteral.150 = internal global %struct.clk_init_data { ptr @.str.148, ptr @clk_branch_ops, ptr @.compoundliteral.149, ptr null, ptr null, i8 1, i32 4 }, align 4
@.str.151 = private unnamed_addr constant [12 x i8] c"mdp_lut_clk\00", align 1
@.compoundliteral.152 = internal global [1 x ptr] [ptr @.str.146], align 4
@.compoundliteral.153 = internal global %struct.clk_init_data { ptr @.str.151, ptr @clk_branch_ops, ptr @.compoundliteral.152, ptr null, ptr null, i8 1, i32 4 }, align 4
@.str.154 = private unnamed_addr constant [15 x i8] c"dsi2_pixel_src\00", align 1
@clk_rcg_pixel_ops = external dso_local constant %struct.clk_ops, align 4
@.compoundliteral.155 = internal global %struct.clk_init_data { ptr @.str.154, ptr @clk_rcg_pixel_ops, ptr @mmcc_pxo_dsi2_dsi1, ptr null, ptr null, i8 3, i32 0 }, align 4
@.str.156 = private unnamed_addr constant [14 x i8] c"mdp_pclk2_clk\00", align 1
@.compoundliteral.157 = internal global [1 x ptr] [ptr @.str.154], align 4
@.compoundliteral.158 = internal global %struct.clk_init_data { ptr @.str.156, ptr @clk_branch_ops, ptr @.compoundliteral.157, ptr null, ptr null, i8 1, i32 4 }, align 4
@.str.159 = private unnamed_addr constant [9 x i8] c"dsi2_src\00", align 1
@.compoundliteral.160 = internal global %struct.clk_init_data { ptr @.str.159, ptr @clk_rcg_bypass2_ops, ptr @mmcc_pxo_dsi2_dsi1, ptr null, ptr null, i8 3, i32 4 }, align 4
@.str.161 = private unnamed_addr constant [9 x i8] c"dsi2_clk\00", align 1
@.compoundliteral.162 = internal global [1 x ptr] [ptr @.str.159], align 4
@.compoundliteral.163 = internal global %struct.clk_init_data { ptr @.str.161, ptr @clk_branch_ops, ptr @.compoundliteral.162, ptr null, ptr null, i8 1, i32 4 }, align 4
@mmcc_pxo_dsi1_dsi2_byte_map = internal constant [3 x %struct.parent_map] [%struct.parent_map zeroinitializer, %struct.parent_map { i8 8, i8 1 }, %struct.parent_map { i8 9, i8 2 }], align 1
@.str.164 = private unnamed_addr constant [14 x i8] c"dsi1_byte_src\00", align 1
@mmcc_pxo_dsi1_dsi2_byte = internal constant [3 x ptr] [ptr @.str.3, ptr @.str.166, ptr @.str.167], align 4
@.compoundliteral.165 = internal global %struct.clk_init_data { ptr @.str.164, ptr @clk_rcg_bypass2_ops, ptr @mmcc_pxo_dsi1_dsi2_byte, ptr null, ptr null, i8 3, i32 4 }, align 4
@.str.166 = private unnamed_addr constant [12 x i8] c"dsi1pllbyte\00", align 1
@.str.167 = private unnamed_addr constant [12 x i8] c"dsi2pllbyte\00", align 1
@.str.168 = private unnamed_addr constant [14 x i8] c"dsi1_byte_clk\00", align 1
@.compoundliteral.169 = internal global [1 x ptr] [ptr @.str.164], align 4
@.compoundliteral.170 = internal global %struct.clk_init_data { ptr @.str.168, ptr @clk_branch_ops, ptr @.compoundliteral.169, ptr null, ptr null, i8 1, i32 4 }, align 4
@.str.171 = private unnamed_addr constant [14 x i8] c"dsi2_byte_src\00", align 1
@.compoundliteral.172 = internal global %struct.clk_init_data { ptr @.str.171, ptr @clk_rcg_bypass2_ops, ptr @mmcc_pxo_dsi1_dsi2_byte, ptr null, ptr null, i8 3, i32 4 }, align 4
@.str.173 = private unnamed_addr constant [14 x i8] c"dsi2_byte_clk\00", align 1
@.compoundliteral.174 = internal global [1 x ptr] [ptr @.str.171], align 4
@.compoundliteral.175 = internal global %struct.clk_init_data { ptr @.str.173, ptr @clk_branch_ops, ptr @.compoundliteral.174, ptr null, ptr null, i8 1, i32 4 }, align 4
@.str.176 = private unnamed_addr constant [13 x i8] c"dsi1_esc_src\00", align 1
@clk_rcg_esc_ops = external dso_local constant %struct.clk_ops, align 4
@.compoundliteral.177 = internal global %struct.clk_init_data { ptr @.str.176, ptr @clk_rcg_esc_ops, ptr @mmcc_pxo_dsi1_dsi2_byte, ptr null, ptr null, i8 3, i32 0 }, align 4
@.str.178 = private unnamed_addr constant [13 x i8] c"dsi1_esc_clk\00", align 1
@.compoundliteral.179 = internal global [1 x ptr] [ptr @.str.176], align 4
@.compoundliteral.180 = internal global %struct.clk_init_data { ptr @.str.178, ptr @clk_branch_ops, ptr @.compoundliteral.179, ptr null, ptr null, i8 1, i32 4 }, align 4
@.str.181 = private unnamed_addr constant [13 x i8] c"dsi2_esc_src\00", align 1
@.compoundliteral.182 = internal global %struct.clk_init_data { ptr @.str.181, ptr @clk_rcg_esc_ops, ptr @mmcc_pxo_dsi1_dsi2_byte, ptr null, ptr null, i8 3, i32 0 }, align 4
@.str.183 = private unnamed_addr constant [13 x i8] c"dsi2_esc_clk\00", align 1
@.compoundliteral.184 = internal global [1 x ptr] [ptr @.str.181], align 4
@.compoundliteral.185 = internal global %struct.clk_init_data { ptr @.str.183, ptr @clk_branch_ops, ptr @.compoundliteral.184, ptr null, ptr null, i8 1, i32 4 }, align 4
@clk_tbl_rot = internal global [15 x %struct.freq_tbl] [%struct.freq_tbl { i32 27000000, i8 0, i8 1, i16 0, i16 0 }, %struct.freq_tbl { i32 29540000, i8 1, i8 13, i16 0, i16 0 }, %struct.freq_tbl { i32 32000000, i8 1, i8 12, i16 0, i16 0 }, %struct.freq_tbl { i32 38400000, i8 1, i8 10, i16 0, i16 0 }, %struct.freq_tbl { i32 48000000, i8 1, i8 8, i16 0, i16 0 }, %struct.freq_tbl { i32 54860000, i8 1, i8 7, i16 0, i16 0 }, %struct.freq_tbl { i32 64000000, i8 1, i8 6, i16 0, i16 0 }, %struct.freq_tbl { i32 76800000, i8 1, i8 5, i16 0, i16 0 }, %struct.freq_tbl { i32 96000000, i8 1, i8 4, i16 0, i16 0 }, %struct.freq_tbl { i32 100000000, i8 2, i8 8, i16 0, i16 0 }, %struct.freq_tbl { i32 114290000, i8 2, i8 7, i16 0, i16 0 }, %struct.freq_tbl { i32 133330000, i8 2, i8 6, i16 0, i16 0 }, %struct.freq_tbl { i32 160000000, i8 2, i8 5, i16 0, i16 0 }, %struct.freq_tbl { i32 200000000, i8 2, i8 4, i16 0, i16 0 }, %struct.freq_tbl zeroinitializer], align 4
@.str.186 = private unnamed_addr constant [8 x i8] c"rot_src\00", align 1
@.compoundliteral.187 = internal global %struct.clk_init_data { ptr @.str.186, ptr @clk_dyn_rcg_ops, ptr @mmcc_pxo_pll8_pll2, ptr null, ptr null, i8 3, i32 0 }, align 4
@.str.188 = private unnamed_addr constant [8 x i8] c"rot_clk\00", align 1
@.compoundliteral.189 = internal global [1 x ptr] [ptr @.str.186], align 4
@.compoundliteral.190 = internal global %struct.clk_init_data { ptr @.str.188, ptr @clk_branch_ops, ptr @.compoundliteral.189, ptr null, ptr null, i8 1, i32 4 }, align 4
@.str.191 = private unnamed_addr constant [11 x i8] c"tv_enc_clk\00", align 1
@tv_src_name = internal constant [1 x ptr] [ptr @.str.193], align 4
@.compoundliteral.192 = internal global %struct.clk_init_data { ptr @.str.191, ptr @clk_branch_ops, ptr @tv_src_name, ptr null, ptr null, i8 1, i32 4 }, align 4
@.str.193 = private unnamed_addr constant [7 x i8] c"tv_src\00", align 1
@.str.194 = private unnamed_addr constant [11 x i8] c"tv_dac_clk\00", align 1
@.compoundliteral.195 = internal global %struct.clk_init_data { ptr @.str.194, ptr @clk_branch_ops, ptr @tv_src_name, ptr null, ptr null, i8 1, i32 4 }, align 4
@.str.196 = private unnamed_addr constant [12 x i8] c"hdmi_tv_clk\00", align 1
@.compoundliteral.197 = internal global %struct.clk_init_data { ptr @.str.196, ptr @clk_branch_ops, ptr @tv_src_name, ptr null, ptr null, i8 1, i32 4 }, align 4
@.str.198 = private unnamed_addr constant [11 x i8] c"mdp_tv_clk\00", align 1
@.compoundliteral.199 = internal global %struct.clk_init_data { ptr @.str.198, ptr @clk_branch_ops, ptr @tv_src_name, ptr null, ptr null, i8 1, i32 4 }, align 4
@mmcc_pxo_hdmi_map = internal constant [2 x %struct.parent_map] [%struct.parent_map zeroinitializer, %struct.parent_map { i8 5, i8 3 }], align 1
@clk_tbl_tv = internal global [2 x %struct.freq_tbl] [%struct.freq_tbl { i32 0, i8 5, i8 1, i16 0, i16 0 }, %struct.freq_tbl zeroinitializer], align 4
@clk_rcg_bypass_ops = external dso_local constant %struct.clk_ops, align 4
@mmcc_pxo_hdmi = internal constant [2 x ptr] [ptr @.str.3, ptr @.str.201], align 4
@.compoundliteral.200 = internal global %struct.clk_init_data { ptr @.str.193, ptr @clk_rcg_bypass_ops, ptr @mmcc_pxo_hdmi, ptr null, ptr null, i8 2, i32 4 }, align 4
@.str.201 = private unnamed_addr constant [9 x i8] c"hdmi_pll\00", align 1
@clk_tbl_vcodec = internal global [10 x %struct.freq_tbl] [%struct.freq_tbl { i32 27000000, i8 0, i8 0, i16 1, i16 0 }, %struct.freq_tbl { i32 32000000, i8 1, i8 0, i16 1, i16 12 }, %struct.freq_tbl { i32 48000000, i8 1, i8 0, i16 1, i16 8 }, %struct.freq_tbl { i32 54860000, i8 1, i8 0, i16 1, i16 7 }, %struct.freq_tbl { i32 96000000, i8 1, i8 0, i16 1, i16 4 }, %struct.freq_tbl { i32 133330000, i8 2, i8 0, i16 1, i16 6 }, %struct.freq_tbl { i32 200000000, i8 2, i8 0, i16 1, i16 4 }, %struct.freq_tbl { i32 228570000, i8 2, i8 0, i16 2, i16 7 }, %struct.freq_tbl { i32 266670000, i8 2, i8 0, i16 1, i16 3 }, %struct.freq_tbl zeroinitializer], align 4
@.str.202 = private unnamed_addr constant [11 x i8] c"vcodec_src\00", align 1
@.compoundliteral.203 = internal global %struct.clk_init_data { ptr @.str.202, ptr @clk_dyn_rcg_ops, ptr @mmcc_pxo_pll8_pll2, ptr null, ptr null, i8 3, i32 0 }, align 4
@.str.204 = private unnamed_addr constant [11 x i8] c"vcodec_clk\00", align 1
@.compoundliteral.205 = internal global [1 x ptr] [ptr @.str.202], align 4
@.compoundliteral.206 = internal global %struct.clk_init_data { ptr @.str.204, ptr @clk_branch_ops, ptr @.compoundliteral.205, ptr null, ptr null, i8 1, i32 4 }, align 4
@clk_tbl_vfe = internal global [18 x %struct.freq_tbl] [%struct.freq_tbl { i32 13960000, i8 1, i8 1, i16 2, i16 55 }, %struct.freq_tbl { i32 27000000, i8 0, i8 1, i16 0, i16 0 }, %struct.freq_tbl { i32 36570000, i8 1, i8 1, i16 2, i16 21 }, %struct.freq_tbl { i32 38400000, i8 1, i8 2, i16 1, i16 5 }, %struct.freq_tbl { i32 45180000, i8 1, i8 1, i16 2, i16 17 }, %struct.freq_tbl { i32 48000000, i8 1, i8 2, i16 1, i16 4 }, %struct.freq_tbl { i32 54860000, i8 1, i8 1, i16 1, i16 7 }, %struct.freq_tbl { i32 64000000, i8 1, i8 2, i16 1, i16 3 }, %struct.freq_tbl { i32 76800000, i8 1, i8 1, i16 1, i16 5 }, %struct.freq_tbl { i32 96000000, i8 1, i8 2, i16 1, i16 2 }, %struct.freq_tbl { i32 109710000, i8 1, i8 1, i16 2, i16 7 }, %struct.freq_tbl { i32 128000000, i8 1, i8 1, i16 1, i16 3 }, %struct.freq_tbl { i32 153600000, i8 1, i8 1, i16 2, i16 5 }, %struct.freq_tbl { i32 200000000, i8 2, i8 2, i16 1, i16 2 }, %struct.freq_tbl { i32 228570000, i8 2, i8 1, i16 2, i16 7 }, %struct.freq_tbl { i32 266667000, i8 2, i8 1, i16 1, i16 3 }, %struct.freq_tbl { i32 320000000, i8 2, i8 1, i16 2, i16 5 }, %struct.freq_tbl zeroinitializer], align 4
@.str.207 = private unnamed_addr constant [8 x i8] c"vfe_src\00", align 1
@.compoundliteral.208 = internal global %struct.clk_init_data { ptr @.str.207, ptr @clk_rcg_ops, ptr @mmcc_pxo_pll8_pll2, ptr null, ptr null, i8 3, i32 0 }, align 4
@.str.209 = private unnamed_addr constant [8 x i8] c"vfe_clk\00", align 1
@.compoundliteral.210 = internal global [1 x ptr] [ptr @.str.207], align 4
@.compoundliteral.211 = internal global %struct.clk_init_data { ptr @.str.209, ptr @clk_branch_ops, ptr @.compoundliteral.210, ptr null, ptr null, i8 1, i32 4 }, align 4
@.str.212 = private unnamed_addr constant [12 x i8] c"vfe_csi_clk\00", align 1
@.compoundliteral.213 = internal global [1 x ptr] [ptr @.str.207], align 4
@.compoundliteral.214 = internal global %struct.clk_init_data { ptr @.str.212, ptr @clk_branch_ops, ptr @.compoundliteral.213, ptr null, ptr null, i8 1, i32 4 }, align 4
@clk_tbl_vpe = internal global [9 x %struct.freq_tbl] [%struct.freq_tbl { i32 27000000, i8 0, i8 1, i16 0, i16 0 }, %struct.freq_tbl { i32 34909000, i8 1, i8 11, i16 0, i16 0 }, %struct.freq_tbl { i32 38400000, i8 1, i8 10, i16 0, i16 0 }, %struct.freq_tbl { i32 64000000, i8 1, i8 6, i16 0, i16 0 }, %struct.freq_tbl { i32 76800000, i8 1, i8 5, i16 0, i16 0 }, %struct.freq_tbl { i32 96000000, i8 1, i8 4, i16 0, i16 0 }, %struct.freq_tbl { i32 100000000, i8 2, i8 8, i16 0, i16 0 }, %struct.freq_tbl { i32 160000000, i8 2, i8 5, i16 0, i16 0 }, %struct.freq_tbl zeroinitializer], align 4
@.str.215 = private unnamed_addr constant [8 x i8] c"vpe_src\00", align 1
@.compoundliteral.216 = internal global %struct.clk_init_data { ptr @.str.215, ptr @clk_rcg_ops, ptr @mmcc_pxo_pll8_pll2, ptr null, ptr null, i8 3, i32 0 }, align 4
@.str.217 = private unnamed_addr constant [8 x i8] c"vpe_clk\00", align 1
@.compoundliteral.218 = internal global [1 x ptr] [ptr @.str.215], align 4
@.compoundliteral.219 = internal global %struct.clk_init_data { ptr @.str.217, ptr @clk_branch_ops, ptr @.compoundliteral.218, ptr null, ptr null, i8 1, i32 4 }, align 4
@.str.220 = private unnamed_addr constant [15 x i8] c"dsi1_pixel_src\00", align 1
@.compoundliteral.221 = internal global %struct.clk_init_data { ptr @.str.220, ptr @clk_rcg_pixel_ops, ptr @mmcc_pxo_dsi2_dsi1, ptr null, ptr null, i8 3, i32 0 }, align 4
@.str.222 = private unnamed_addr constant [14 x i8] c"mdp_pclk1_clk\00", align 1
@.compoundliteral.223 = internal global [1 x ptr] [ptr @.str.220], align 4
@.compoundliteral.224 = internal global %struct.clk_init_data { ptr @.str.222, ptr @clk_branch_ops, ptr @.compoundliteral.223, ptr null, ptr null, i8 1, i32 4 }, align 4
@clk_tbl_cam = internal global [12 x %struct.freq_tbl] [%struct.freq_tbl { i32 6000000, i8 1, i8 4, i16 1, i16 16 }, %struct.freq_tbl { i32 8000000, i8 1, i8 4, i16 1, i16 12 }, %struct.freq_tbl { i32 12000000, i8 1, i8 4, i16 1, i16 8 }, %struct.freq_tbl { i32 16000000, i8 1, i8 4, i16 1, i16 6 }, %struct.freq_tbl { i32 19200000, i8 1, i8 4, i16 1, i16 5 }, %struct.freq_tbl { i32 24000000, i8 1, i8 4, i16 1, i16 4 }, %struct.freq_tbl { i32 32000000, i8 1, i8 4, i16 1, i16 3 }, %struct.freq_tbl { i32 48000000, i8 1, i8 4, i16 1, i16 2 }, %struct.freq_tbl { i32 64000000, i8 1, i8 3, i16 1, i16 2 }, %struct.freq_tbl { i32 96000000, i8 1, i8 4, i16 0, i16 0 }, %struct.freq_tbl { i32 128000000, i8 1, i8 3, i16 0, i16 0 }, %struct.freq_tbl zeroinitializer], align 4
@.str.225 = private unnamed_addr constant [12 x i8] c"camclk0_src\00", align 1
@.compoundliteral.226 = internal global %struct.clk_init_data { ptr @.str.225, ptr @clk_rcg_ops, ptr @mmcc_pxo_pll8_pll2, ptr null, ptr null, i8 3, i32 0 }, align 4
@.str.227 = private unnamed_addr constant [12 x i8] c"camclk0_clk\00", align 1
@.compoundliteral.228 = internal global [1 x ptr] [ptr @.str.225], align 4
@.compoundliteral.229 = internal global %struct.clk_init_data { ptr @.str.227, ptr @clk_branch_ops, ptr @.compoundliteral.228, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.230 = private unnamed_addr constant [12 x i8] c"camclk1_src\00", align 1
@.compoundliteral.231 = internal global %struct.clk_init_data { ptr @.str.230, ptr @clk_rcg_ops, ptr @mmcc_pxo_pll8_pll2, ptr null, ptr null, i8 3, i32 0 }, align 4
@.str.232 = private unnamed_addr constant [12 x i8] c"camclk1_clk\00", align 1
@.compoundliteral.233 = internal global [1 x ptr] [ptr @.str.230], align 4
@.compoundliteral.234 = internal global %struct.clk_init_data { ptr @.str.232, ptr @clk_branch_ops, ptr @.compoundliteral.233, ptr null, ptr null, i8 1, i32 0 }, align 4
@.str.235 = private unnamed_addr constant [12 x i8] c"camclk2_src\00", align 1
@.compoundliteral.236 = internal global %struct.clk_init_data { ptr @.str.235, ptr @clk_rcg_ops, ptr @mmcc_pxo_pll8_pll2, ptr null, ptr null, i8 3, i32 0 }, align 4
@.str.237 = private unnamed_addr constant [12 x i8] c"camclk2_clk\00", align 1
@.compoundliteral.238 = internal global [1 x ptr] [ptr @.str.235], align 4
@.compoundliteral.239 = internal global %struct.clk_init_data { ptr @.str.237, ptr @clk_branch_ops, ptr @.compoundliteral.238, ptr null, ptr null, i8 1, i32 0 }, align 4
@clk_tbl_csiphytimer = internal global [3 x %struct.freq_tbl] [%struct.freq_tbl { i32 85330000, i8 1, i8 1, i16 2, i16 9 }, %struct.freq_tbl { i32 177780000, i8 2, i8 1, i16 2, i16 9 }, %struct.freq_tbl zeroinitializer], align 4
@.str.240 = private unnamed_addr constant [16 x i8] c"csiphytimer_src\00", align 1
@.compoundliteral.241 = internal global %struct.clk_init_data { ptr @.str.240, ptr @clk_rcg_ops, ptr @mmcc_pxo_pll8_pll2, ptr null, ptr null, i8 3, i32 0 }, align 4
@.str.242 = private unnamed_addr constant [18 x i8] c"csiphy2_timer_clk\00", align 1
@csixphy_timer_src = internal constant [1 x ptr] [ptr @.str.240], align 4
@.compoundliteral.243 = internal global %struct.clk_init_data { ptr @.str.242, ptr @clk_branch_ops, ptr @csixphy_timer_src, ptr null, ptr null, i8 1, i32 4 }, align 4
@.str.244 = private unnamed_addr constant [18 x i8] c"csiphy1_timer_clk\00", align 1
@.compoundliteral.245 = internal global %struct.clk_init_data { ptr @.str.244, ptr @clk_branch_ops, ptr @csixphy_timer_src, ptr null, ptr null, i8 1, i32 4 }, align 4
@.str.246 = private unnamed_addr constant [18 x i8] c"csiphy0_timer_clk\00", align 1
@.compoundliteral.247 = internal global %struct.clk_init_data { ptr @.str.246, ptr @clk_branch_ops, ptr @csixphy_timer_src, ptr null, ptr null, i8 1, i32 4 }, align 4
@.compoundliteral.248 = internal global [1 x ptr] [ptr @.str.3], align 4
@.compoundliteral.249 = internal global %struct.clk_init_data { ptr @.str.5, ptr @clk_pll_ops, ptr @.compoundliteral.248, ptr null, ptr null, i8 1, i32 0 }, align 4
@mmcc_apq8064_regmap_config = internal constant %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 1, i32 848, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@mmcc_apq8064_clks = internal global [127 x ptr] [ptr null, ptr null, ptr null, ptr null, ptr getelementptr (i8, ptr @amp_ahb_clk, i64 12), ptr getelementptr (i8, ptr @dsi2_s_ahb_clk, i64 12), ptr getelementptr (i8, ptr @jpegd_ahb_clk, i64 12), ptr null, ptr getelementptr (i8, ptr @dsi_s_ahb_clk, i64 12), ptr getelementptr (i8, ptr @dsi2_m_ahb_clk, i64 12), ptr getelementptr (i8, ptr @vpe_ahb_clk, i64 12), ptr getelementptr (i8, ptr @smmu_ahb_clk, i64 12), ptr getelementptr (i8, ptr @hdmi_m_ahb_clk, i64 12), ptr getelementptr (i8, ptr @vfe_ahb_clk, i64 12), ptr getelementptr (i8, ptr @rot_ahb_clk, i64 12), ptr getelementptr (i8, ptr @vcodec_ahb_clk, i64 12), ptr getelementptr (i8, ptr @mdp_ahb_clk, i64 12), ptr getelementptr (i8, ptr @dsi_m_ahb_clk, i64 12), ptr getelementptr (i8, ptr @csi_ahb_clk, i64 12), ptr getelementptr (i8, ptr @mmss_imem_ahb_clk, i64 12), ptr getelementptr (i8, ptr @ijpeg_ahb_clk, i64 12), ptr getelementptr (i8, ptr @hdmi_s_ahb_clk, i64 12), ptr getelementptr (i8, ptr @gfx3d_ahb_clk, i64 12), ptr null, ptr null, ptr null, ptr null, ptr null, ptr getelementptr (i8, ptr @jpegd_axi_clk, i64 12), ptr getelementptr (i8, ptr @gmem_axi_clk, i64 12), ptr getelementptr (i8, ptr @mdp_axi_clk, i64 12), ptr getelementptr (i8, ptr @mmss_imem_axi_clk, i64 12), ptr getelementptr (i8, ptr @ijpeg_axi_clk, i64 12), ptr getelementptr (i8, ptr @gfx3d_axi_clk, i64 12), ptr getelementptr (i8, ptr @vcodec_axi_clk, i64 12), ptr getelementptr (i8, ptr @vfe_axi_clk, i64 12), ptr getelementptr (i8, ptr @vpe_axi_clk, i64 12), ptr getelementptr (i8, ptr @rot_axi_clk, i64 12), ptr getelementptr (i8, ptr @vcodec_axi_a_clk, i64 12), ptr getelementptr (i8, ptr @vcodec_axi_b_clk, i64 12), ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr getelementptr (i8, ptr @csi0_src, i64 32), ptr getelementptr (i8, ptr @csi0_clk, i64 12), ptr getelementptr (i8, ptr @csi0_phy_clk, i64 12), ptr getelementptr (i8, ptr @csi1_src, i64 32), ptr getelementptr (i8, ptr @csi1_clk, i64 12), ptr getelementptr (i8, ptr @csi1_phy_clk, i64 12), ptr getelementptr (i8, ptr @csi2_src, i64 32), ptr getelementptr (i8, ptr @csi2_clk, i64 12), ptr getelementptr (i8, ptr @csi2_phy_clk, i64 12), ptr getelementptr (i8, ptr @dsi1_src, i64 32), ptr getelementptr (i8, ptr @dsi1_clk, i64 12), ptr getelementptr (i8, ptr @csi_pix_clk, i64 16), ptr getelementptr (i8, ptr @csi_rdi_clk, i64 16), ptr getelementptr (i8, ptr @mdp_vsync_clk, i64 12), ptr null, ptr getelementptr (i8, ptr @hdmi_app_clk, i64 12), ptr getelementptr (i8, ptr @csi_pix1_clk, i64 16), ptr getelementptr (i8, ptr @csi_rdi2_clk, i64 16), ptr getelementptr (i8, ptr @csi_rdi1_clk, i64 16), ptr null, ptr null, ptr null, ptr null, ptr getelementptr (i8, ptr @gfx3d_src, i64 60), ptr getelementptr (i8, ptr @gfx3d_clk, i64 12), ptr getelementptr (i8, ptr @ijpeg_src, i64 32), ptr getelementptr (i8, ptr @ijpeg_clk, i64 12), ptr getelementptr (i8, ptr @jpegd_src, i64 32), ptr getelementptr (i8, ptr @jpegd_clk, i64 12), ptr getelementptr (i8, ptr @mdp_src, i64 60), ptr getelementptr (i8, ptr @mdp_clk, i64 12), ptr getelementptr (i8, ptr @mdp_lut_clk, i64 12), ptr getelementptr (i8, ptr @dsi2_pixel_src, i64 32), ptr getelementptr (i8, ptr @dsi2_pixel_clk, i64 12), ptr getelementptr (i8, ptr @dsi2_src, i64 32), ptr getelementptr (i8, ptr @dsi2_clk, i64 12), ptr getelementptr (i8, ptr @dsi1_byte_src, i64 32), ptr getelementptr (i8, ptr @dsi1_byte_clk, i64 12), ptr getelementptr (i8, ptr @dsi2_byte_src, i64 32), ptr getelementptr (i8, ptr @dsi2_byte_clk, i64 12), ptr getelementptr (i8, ptr @dsi1_esc_src, i64 32), ptr getelementptr (i8, ptr @dsi1_esc_clk, i64 12), ptr getelementptr (i8, ptr @dsi2_esc_src, i64 32), ptr getelementptr (i8, ptr @dsi2_esc_clk, i64 12), ptr getelementptr (i8, ptr @rot_src, i64 60), ptr getelementptr (i8, ptr @rot_clk, i64 12), ptr null, ptr getelementptr (i8, ptr @tv_dac_clk, i64 12), ptr getelementptr (i8, ptr @hdmi_tv_clk, i64 12), ptr getelementptr (i8, ptr @mdp_tv_clk, i64 12), ptr getelementptr (i8, ptr @tv_src, i64 32), ptr getelementptr (i8, ptr @vcodec_src, i64 60), ptr getelementptr (i8, ptr @vcodec_clk, i64 12), ptr getelementptr (i8, ptr @vfe_src, i64 32), ptr getelementptr (i8, ptr @vfe_clk, i64 12), ptr getelementptr (i8, ptr @vfe_csi_clk, i64 12), ptr getelementptr (i8, ptr @vpe_src, i64 32), ptr getelementptr (i8, ptr @vpe_clk, i64 12), ptr getelementptr (i8, ptr @dsi1_pixel_src, i64 32), ptr getelementptr (i8, ptr @dsi1_pixel_clk, i64 12), ptr getelementptr (i8, ptr @camclk0_src, i64 32), ptr getelementptr (i8, ptr @camclk0_clk, i64 12), ptr getelementptr (i8, ptr @camclk1_src, i64 32), ptr getelementptr (i8, ptr @camclk1_clk, i64 12), ptr getelementptr (i8, ptr @camclk2_src, i64 32), ptr getelementptr (i8, ptr @camclk2_clk, i64 12), ptr getelementptr (i8, ptr @csiphytimer_src, i64 32), ptr getelementptr (i8, ptr @csiphy2_timer_clk, i64 12), ptr getelementptr (i8, ptr @csiphy1_timer_clk, i64 12), ptr getelementptr (i8, ptr @csiphy0_timer_clk, i64 12), ptr null, ptr getelementptr (i8, ptr @pll2, i64 32), ptr getelementptr (i8, ptr @rgb_tv_clk, i64 12), ptr getelementptr (i8, ptr @npl_tv_clk, i64 12), ptr getelementptr (i8, ptr @vcap_ahb_clk, i64 12), ptr getelementptr (i8, ptr @vcap_axi_clk, i64 12), ptr getelementptr (i8, ptr @vcap_src, i64 60), ptr getelementptr (i8, ptr @vcap_clk, i64 12), ptr getelementptr (i8, ptr @vcap_npl_clk, i64 12), ptr getelementptr (i8, ptr @pll15, i64 32)], align 4
@mmcc_apq8064_resets = internal constant [83 x %struct.qcom_reset_map] [%struct.qcom_reset_map { i32 520, i8 15 }, %struct.qcom_reset_map { i32 520, i8 14 }, %struct.qcom_reset_map { i32 520, i8 13 }, %struct.qcom_reset_map { i32 520, i8 9 }, %struct.qcom_reset_map { i32 520, i8 8 }, %struct.qcom_reset_map { i32 520, i8 7 }, %struct.qcom_reset_map { i32 520, i8 6 }, %struct.qcom_reset_map { i32 520, i8 5 }, %struct.qcom_reset_map { i32 520, i8 4 }, %struct.qcom_reset_map { i32 520, i8 3 }, %struct.qcom_reset_map { i32 520, i8 2 }, %struct.qcom_reset_map { i32 520, i8 1 }, %struct.qcom_reset_map { i32 520, i8 0 }, %struct.qcom_reset_map { i32 524, i8 31 }, %struct.qcom_reset_map { i32 524, i8 30 }, %struct.qcom_reset_map { i32 524, i8 29 }, %struct.qcom_reset_map { i32 524, i8 28 }, %struct.qcom_reset_map { i32 524, i8 27 }, %struct.qcom_reset_map { i32 524, i8 26 }, %struct.qcom_reset_map { i32 524, i8 25 }, %struct.qcom_reset_map { i32 524, i8 24 }, %struct.qcom_reset_map { i32 524, i8 23 }, %struct.qcom_reset_map { i32 524, i8 22 }, %struct.qcom_reset_map zeroinitializer, %struct.qcom_reset_map zeroinitializer, %struct.qcom_reset_map { i32 524, i8 18 }, %struct.qcom_reset_map { i32 524, i8 17 }, %struct.qcom_reset_map { i32 524, i8 15 }, %struct.qcom_reset_map { i32 524, i8 14 }, %struct.qcom_reset_map { i32 524, i8 13 }, %struct.qcom_reset_map zeroinitializer, %struct.qcom_reset_map zeroinitializer, %struct.qcom_reset_map { i32 524, i8 10 }, %struct.qcom_reset_map { i32 524, i8 9 }, %struct.qcom_reset_map { i32 524, i8 8 }, %struct.qcom_reset_map { i32 524, i8 7 }, %struct.qcom_reset_map { i32 524, i8 6 }, %struct.qcom_reset_map { i32 524, i8 5 }, %struct.qcom_reset_map { i32 524, i8 4 }, %struct.qcom_reset_map { i32 524, i8 3 }, %struct.qcom_reset_map { i32 524, i8 2 }, %struct.qcom_reset_map { i32 524, i8 1 }, %struct.qcom_reset_map { i32 524, i8 0 }, %struct.qcom_reset_map { i32 512, i8 1 }, %struct.qcom_reset_map { i32 512, i8 0 }, %struct.qcom_reset_map { i32 528, i8 31 }, %struct.qcom_reset_map { i32 528, i8 30 }, %struct.qcom_reset_map { i32 528, i8 29 }, %struct.qcom_reset_map { i32 528, i8 28 }, %struct.qcom_reset_map { i32 528, i8 25 }, %struct.qcom_reset_map { i32 528, i8 24 }, %struct.qcom_reset_map { i32 528, i8 21 }, %struct.qcom_reset_map { i32 528, i8 20 }, %struct.qcom_reset_map { i32 528, i8 19 }, %struct.qcom_reset_map { i32 528, i8 18 }, %struct.qcom_reset_map { i32 528, i8 17 }, %struct.qcom_reset_map { i32 528, i8 16 }, %struct.qcom_reset_map { i32 528, i8 15 }, %struct.qcom_reset_map zeroinitializer, %struct.qcom_reset_map zeroinitializer, %struct.qcom_reset_map { i32 528, i8 12 }, %struct.qcom_reset_map { i32 528, i8 11 }, %struct.qcom_reset_map { i32 528, i8 10 }, %struct.qcom_reset_map { i32 528, i8 9 }, %struct.qcom_reset_map { i32 528, i8 8 }, %struct.qcom_reset_map { i32 528, i8 7 }, %struct.qcom_reset_map { i32 528, i8 6 }, %struct.qcom_reset_map { i32 528, i8 4 }, %struct.qcom_reset_map { i32 528, i8 3 }, %struct.qcom_reset_map { i32 528, i8 2 }, %struct.qcom_reset_map { i32 528, i8 1 }, %struct.qcom_reset_map zeroinitializer, %struct.qcom_reset_map { i32 532, i8 2 }, %struct.qcom_reset_map { i32 532, i8 1 }, %struct.qcom_reset_map { i32 532, i8 0 }, %struct.qcom_reset_map { i32 520, i8 17 }, %struct.qcom_reset_map { i32 520, i8 16 }, %struct.qcom_reset_map { i32 512, i8 3 }, %struct.qcom_reset_map { i32 512, i8 2 }, %struct.qcom_reset_map { i32 528, i8 27 }, %struct.qcom_reset_map { i32 528, i8 26 }, %struct.qcom_reset_map { i32 532, i8 4 }, %struct.qcom_reset_map { i32 532, i8 3 }], align 4
@rgb_tv_clk = internal global %struct.clk_branch { i32 0, i32 576, i8 0, i8 27, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.251 }, ptr null, i32 292, i32 16384, i8 0 } }, align 4
@npl_tv_clk = internal global %struct.clk_branch { i32 0, i32 576, i8 0, i8 26, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.253 }, ptr null, i32 292, i32 65536, i8 0 } }, align 4
@vcap_ahb_clk = internal global %struct.clk_branch { i32 0, i32 576, i8 0, i8 23, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.255 }, ptr null, i32 584, i32 2, i8 0 } }, align 4
@vcap_axi_clk = internal global %struct.clk_branch { i32 580, i32 576, i8 11, i8 20, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.257 }, ptr null, i32 580, i32 4096, i8 0 } }, align 4
@vcap_src = internal global %struct.clk_dyn_rcg { [2 x i32] [i32 540, i32 540], [2 x i32] [i32 492, i32 536], i32 376, i8 11, [2 x %struct.mn] [%struct.mn { i8 8, i8 23, i8 9, i8 18, i8 4, i8 4, i8 0 }, %struct.mn { i8 5, i8 22, i8 6, i8 14, i8 4, i8 4, i8 0 }], [2 x %struct.pre_div] zeroinitializer, [2 x %struct.src_sel] [%struct.src_sel { i8 3, ptr @mmcc_pxo_pll8_pll2_map }, %struct.src_sel { i8 0, ptr @mmcc_pxo_pll8_pll2_map }], ptr @clk_tbl_vcap, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.259 }, ptr null, i32 376, i32 4, i8 0 } }, align 4
@vcap_clk = internal global %struct.clk_branch { i32 0, i32 576, i8 0, i8 15, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.262 }, ptr null, i32 376, i32 1, i8 0 } }, align 4
@vcap_npl_clk = internal global %struct.clk_branch { i32 0, i32 576, i8 0, i8 25, i8 0, %struct.clk_regmap { %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.265 }, ptr null, i32 376, i32 8192, i8 0 } }, align 4
@.str.250 = private unnamed_addr constant [11 x i8] c"rgb_tv_clk\00", align 1
@.compoundliteral.251 = internal global %struct.clk_init_data { ptr @.str.250, ptr @clk_branch_ops, ptr @tv_src_name, ptr null, ptr null, i8 1, i32 4 }, align 4
@.str.252 = private unnamed_addr constant [11 x i8] c"npl_tv_clk\00", align 1
@.compoundliteral.253 = internal global %struct.clk_init_data { ptr @.str.252, ptr @clk_branch_ops, ptr @tv_src_name, ptr null, ptr null, i8 1, i32 4 }, align 4
@.str.254 = private unnamed_addr constant [13 x i8] c"vcap_ahb_clk\00", align 1
@.compoundliteral.255 = internal global %struct.clk_init_data { ptr @.str.254, ptr @clk_branch_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, align 4
@.str.256 = private unnamed_addr constant [13 x i8] c"vcap_axi_clk\00", align 1
@.compoundliteral.257 = internal global %struct.clk_init_data { ptr @.str.256, ptr @clk_branch_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, align 4
@clk_tbl_vcap = internal global [8 x %struct.freq_tbl] [%struct.freq_tbl { i32 27000000, i8 0, i8 0, i16 0, i16 0 }, %struct.freq_tbl { i32 54860000, i8 1, i8 0, i16 1, i16 7 }, %struct.freq_tbl { i32 64000000, i8 1, i8 0, i16 1, i16 6 }, %struct.freq_tbl { i32 76800000, i8 1, i8 0, i16 1, i16 5 }, %struct.freq_tbl { i32 128000000, i8 1, i8 0, i16 1, i16 3 }, %struct.freq_tbl { i32 160000000, i8 2, i8 0, i16 1, i16 5 }, %struct.freq_tbl { i32 200000000, i8 2, i8 0, i16 1, i16 4 }, %struct.freq_tbl zeroinitializer], align 4
@.str.258 = private unnamed_addr constant [9 x i8] c"vcap_src\00", align 1
@.compoundliteral.259 = internal global %struct.clk_init_data { ptr @.str.258, ptr @clk_dyn_rcg_ops, ptr @mmcc_pxo_pll8_pll2, ptr null, ptr null, i8 3, i32 0 }, align 4
@.str.260 = private unnamed_addr constant [9 x i8] c"vcap_clk\00", align 1
@.compoundliteral.261 = internal global [1 x ptr] [ptr @.str.258], align 4
@.compoundliteral.262 = internal global %struct.clk_init_data { ptr @.str.260, ptr @clk_branch_ops, ptr @.compoundliteral.261, ptr null, ptr null, i8 1, i32 4 }, align 4
@.str.263 = private unnamed_addr constant [13 x i8] c"vcap_npl_clk\00", align 1
@.compoundliteral.264 = internal global [1 x ptr] [ptr @.str.258], align 4
@.compoundliteral.265 = internal global %struct.clk_init_data { ptr @.str.263, ptr @clk_branch_ops, ptr @.compoundliteral.264, ptr null, ptr null, i8 1, i32 4 }, align 4
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_alias166, ptr @__UNIQUE_ID_description163, ptr @__UNIQUE_ID_file164, ptr @__UNIQUE_ID_license165, ptr @__exitcall_mmcc_msm8960_driver_exit, ptr @__initcall__kmod_mmcc_msm8960__162_3058_mmcc_msm8960_driver_init6, ptr @mmcc_msm8960_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @mmcc_msm8960_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @mmcc_msm8960_driver, ptr noundef null) #4
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @mmcc_msm8960_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @mmcc_msm8960_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mmcc_msm8960_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call ptr @of_match_device(ptr noundef nonnull @mmcc_msm8960_match_table, ptr noundef %2) #4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %21, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %7 = load ptr, ptr %6, align 8
  %8 = tail call i32 @of_device_is_compatible(ptr noundef %7, ptr noundef nonnull @.str.1) #4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %5
  store ptr @clk_tbl_gfx3d_8064, ptr getelementptr inbounds (%struct.clk_dyn_rcg, ptr @gfx3d_src, i32 0, i32 7), align 4
  store ptr @gfx3d_8064_init, ptr getelementptr inbounds (%struct.clk_dyn_rcg, ptr @gfx3d_src, i32 0, i32 8, i32 0, i32 2), align 4
  store ptr @mmcc_pxo_pll8_pll2_pll15_map, ptr getelementptr inbounds (%struct.clk_dyn_rcg, ptr @gfx3d_src, i32 0, i32 6, i32 0, i32 1), align 4
  store ptr @mmcc_pxo_pll8_pll2_pll15_map, ptr getelementptr inbounds (%struct.clk_dyn_rcg, ptr @gfx3d_src, i32 0, i32 6, i32 1, i32 1), align 4
  br label %11

11:                                               ; preds = %10, %5
  %12 = getelementptr inbounds %struct.of_device_id, ptr %3, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = tail call ptr @qcom_cc_map(ptr noundef %0, ptr noundef %13) #4
  %15 = icmp ugt ptr %14, inttoptr (i32 -4096 to ptr)
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = ptrtoint ptr %14 to i32
  br label %21

18:                                               ; preds = %11
  tail call void @clk_pll_configure_sr(ptr noundef nonnull @pll15, ptr noundef %14, ptr noundef nonnull @pll15_config, i1 noundef zeroext false) #4
  %19 = load ptr, ptr %12, align 4
  %20 = tail call i32 @qcom_cc_really_probe(ptr noundef %0, ptr noundef %19, ptr noundef %14) #4
  br label %21

21:                                               ; preds = %18, %16, %1
  %22 = phi i32 [ %17, %16 ], [ %20, %18 ], [ -22, %1 ]
  ret i32 %22
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @qcom_cc_map(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_pll_configure_sr(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qcom_cc_really_probe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable_regmap(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable_regmap(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__clk_mux_determine_rate(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pix_rdi_set_parent(ptr noundef %0, i8 noundef zeroext %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 -16
  %4 = tail call i32 @clk_hw_get_num_parents(ptr noundef %0) #4
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %20

6:                                                ; preds = %17, %2
  %7 = phi i32 [ %18, %17 ], [ 0, %2 ]
  %8 = tail call ptr @clk_hw_get_parent_by_index(ptr noundef %0, i32 noundef %7) #4
  %9 = getelementptr inbounds %struct.clk_hw, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 @clk_prepare(ptr noundef %10) #4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %40

13:                                               ; preds = %6
  %14 = tail call i32 @clk_enable(ptr noundef %10) #4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %13
  tail call void @clk_unprepare(ptr noundef %10) #4
  br label %40

17:                                               ; preds = %13
  %18 = add nuw nsw i32 %7, 1
  %19 = icmp eq i32 %18, %4
  br i1 %19, label %20, label %6

20:                                               ; preds = %17, %2
  %21 = phi i32 [ 0, %2 ], [ %4, %17 ]
  %22 = icmp eq i8 %1, 2
  %23 = getelementptr i8, ptr %0, i32 -4
  %24 = load i32, ptr %23, align 4
  %25 = select i1 %22, i32 %24, i32 0
  %26 = getelementptr inbounds %struct.clk_regmap, ptr %0, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr i8, ptr %0, i32 -8
  %29 = load i32, ptr %28, align 4
  %30 = tail call i32 @regmap_update_bits_base(ptr noundef %27, i32 noundef %29, i32 noundef %24, i32 noundef %25, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %31(i32 noundef 214748) #4
  %32 = icmp eq i8 %1, 1
  %33 = getelementptr i8, ptr %0, i32 -12
  %34 = load i32, ptr %33, align 4
  %35 = select i1 %32, i32 %34, i32 0
  %36 = load ptr, ptr %26, align 4
  %37 = load i32, ptr %3, align 4
  %38 = tail call i32 @regmap_update_bits_base(ptr noundef %36, i32 noundef %37, i32 noundef %34, i32 noundef %35, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  %39 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %39(i32 noundef 214748) #4
  br label %40

40:                                               ; preds = %20, %16, %6
  %41 = phi i32 [ %21, %20 ], [ %7, %16 ], [ %7, %6 ]
  %42 = phi i32 [ 0, %20 ], [ %14, %16 ], [ %11, %6 ]
  %43 = add i32 %41, -1
  %44 = icmp sgt i32 %43, -1
  br i1 %44, label %45, label %52

45:                                               ; preds = %45, %40
  %46 = phi i32 [ %50, %45 ], [ %43, %40 ]
  %47 = tail call ptr @clk_hw_get_parent_by_index(ptr noundef %0, i32 noundef %46) #4
  %48 = getelementptr inbounds %struct.clk_hw, ptr %47, i32 0, i32 1
  %49 = load ptr, ptr %48, align 4
  tail call void @clk_disable(ptr noundef %49) #4
  tail call void @clk_unprepare(ptr noundef %49) #4
  %50 = add nsw i32 %46, -1
  %51 = icmp eq i32 %46, 0
  br i1 %51, label %52, label %45

52:                                               ; preds = %45, %40
  ret i32 %42
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i8 @pix_rdi_get_parent(ptr nocapture noundef readonly %0) #2 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #4
  store i32 0, ptr %2, align 4, !annotation !8
  %3 = getelementptr inbounds %struct.clk_regmap, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %0, i32 -8
  %6 = load i32, ptr %5, align 4
  %7 = call i32 @regmap_read(ptr noundef %4, i32 noundef %6, ptr noundef nonnull %2) #4
  %8 = load i32, ptr %2, align 4
  %9 = getelementptr i8, ptr %0, i32 -4
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, %8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %24

13:                                               ; preds = %1
  %14 = getelementptr i8, ptr %0, i32 -16
  %15 = load ptr, ptr %3, align 4
  %16 = load i32, ptr %14, align 4
  %17 = call i32 @regmap_read(ptr noundef %15, i32 noundef %16, ptr noundef nonnull %2) #4
  %18 = load i32, ptr %2, align 4
  %19 = getelementptr i8, ptr %0, i32 -12
  %20 = load i32, ptr %19, align 4
  %21 = and i32 %20, %18
  %22 = icmp ne i32 %21, 0
  %23 = zext i1 %22 to i8
  br label %24

24:                                               ; preds = %13, %1
  %25 = phi i8 [ 2, %1 ], [ %23, %13 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #4
  ret i8 %25
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_get_num_parents(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_parent_by_index(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
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
!8 = !{!"auto-init"}
