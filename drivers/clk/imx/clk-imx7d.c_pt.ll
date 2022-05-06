; ModuleID = '/llk/IR/drivers/clk/imx/clk-imx7d.c_pt.bc'
source_filename = "../drivers/clk/imx/clk-imx7d.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.clk_div_table = type { i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.clk_hw_onecell_data = type { i32, [0 x ptr] }
%struct.clk_hw = type { ptr, ptr, ptr }

@__of_table_imx7d = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx7d-ccm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx7d_clocks_init }, section "__clk_of_table", align 4
@clk_hw_data = internal unnamed_addr global ptr null, align 4
@.str = private unnamed_addr constant [28 x i8] c"drivers/clk/imx/clk-imx7d.c\00", align 1
@hws = internal unnamed_addr global ptr null, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"dummy\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"osc\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"ckil\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"fsl,imx7d-anatop\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"pll_arm_main_src\00", align 1
@pll_bypass_src_sel = internal global [2 x ptr] [ptr @.str.2, ptr @.str.1], align 4
@.str.6 = private unnamed_addr constant [18 x i8] c"pll_dram_main_src\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"pll_sys_main_src\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"pll_enet_main_src\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"pll_audio_main_src\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"pll_video_main_src\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"pll_arm_main\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"pll_dram_main\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"pll_sys_main\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"pll_enet_main\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"pll_audio_main\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"pll_video_main\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"pll_arm_main_bypass\00", align 1
@pll_arm_bypass_sel = internal global [2 x ptr] [ptr @.str.11, ptr @.str.5], align 4
@.str.18 = private unnamed_addr constant [21 x i8] c"pll_dram_main_bypass\00", align 1
@pll_dram_bypass_sel = internal global [2 x ptr] [ptr @.str.12, ptr @.str.6], align 4
@.str.19 = private unnamed_addr constant [20 x i8] c"pll_sys_main_bypass\00", align 1
@pll_sys_bypass_sel = internal global [2 x ptr] [ptr @.str.13, ptr @.str.7], align 4
@.str.20 = private unnamed_addr constant [21 x i8] c"pll_enet_main_bypass\00", align 1
@pll_enet_bypass_sel = internal global [2 x ptr] [ptr @.str.14, ptr @.str.8], align 4
@.str.21 = private unnamed_addr constant [22 x i8] c"pll_audio_main_bypass\00", align 1
@pll_audio_bypass_sel = internal global [2 x ptr] [ptr @.str.15, ptr @.str.9], align 4
@.str.22 = private unnamed_addr constant [22 x i8] c"pll_video_main_bypass\00", align 1
@pll_video_bypass_sel = internal global [2 x ptr] [ptr @.str.16, ptr @.str.10], align 4
@.str.23 = private unnamed_addr constant [17 x i8] c"pll_arm_main_clk\00", align 1
@.str.24 = private unnamed_addr constant [18 x i8] c"pll_dram_main_clk\00", align 1
@.str.25 = private unnamed_addr constant [18 x i8] c"pll_dram_test_div\00", align 1
@.str.26 = private unnamed_addr constant [17 x i8] c"pll_sys_main_clk\00", align 1
@.str.27 = private unnamed_addr constant [19 x i8] c"pll_audio_main_clk\00", align 1
@.str.28 = private unnamed_addr constant [19 x i8] c"pll_video_main_clk\00", align 1
@test_div_table = internal constant [5 x %struct.clk_div_table] [%struct.clk_div_table { i32 3, i32 1 }, %struct.clk_div_table { i32 2, i32 1 }, %struct.clk_div_table { i32 1, i32 2 }, %struct.clk_div_table { i32 0, i32 4 }, %struct.clk_div_table zeroinitializer], align 4
@imx_ccm_lock = external dso_local global %struct.spinlock, align 4
@.str.29 = private unnamed_addr constant [19 x i8] c"pll_audio_test_div\00", align 1
@.str.30 = private unnamed_addr constant [19 x i8] c"pll_audio_post_div\00", align 1
@post_div_table = internal constant [5 x %struct.clk_div_table] [%struct.clk_div_table { i32 3, i32 4 }, %struct.clk_div_table { i32 2, i32 1 }, %struct.clk_div_table { i32 1, i32 2 }, %struct.clk_div_table { i32 0, i32 1 }, %struct.clk_div_table zeroinitializer], align 4
@.str.31 = private unnamed_addr constant [19 x i8] c"pll_video_test_div\00", align 1
@.str.32 = private unnamed_addr constant [19 x i8] c"pll_video_post_div\00", align 1
@.str.33 = private unnamed_addr constant [22 x i8] c"pll_sys_pfd0_392m_clk\00", align 1
@.str.34 = private unnamed_addr constant [22 x i8] c"pll_sys_pfd1_332m_clk\00", align 1
@.str.35 = private unnamed_addr constant [22 x i8] c"pll_sys_pfd2_270m_clk\00", align 1
@.str.36 = private unnamed_addr constant [17 x i8] c"pll_sys_pfd3_clk\00", align 1
@.str.37 = private unnamed_addr constant [17 x i8] c"pll_sys_pfd4_clk\00", align 1
@.str.38 = private unnamed_addr constant [17 x i8] c"pll_sys_pfd5_clk\00", align 1
@.str.39 = private unnamed_addr constant [17 x i8] c"pll_sys_pfd6_clk\00", align 1
@.str.40 = private unnamed_addr constant [17 x i8] c"pll_sys_pfd7_clk\00", align 1
@.str.41 = private unnamed_addr constant [18 x i8] c"pll_sys_main_480m\00", align 1
@.str.42 = private unnamed_addr constant [18 x i8] c"pll_sys_main_240m\00", align 1
@.str.43 = private unnamed_addr constant [18 x i8] c"pll_sys_main_120m\00", align 1
@.str.44 = private unnamed_addr constant [14 x i8] c"pll_dram_533m\00", align 1
@.str.45 = private unnamed_addr constant [22 x i8] c"pll_sys_main_480m_clk\00", align 1
@.str.46 = private unnamed_addr constant [22 x i8] c"pll_sys_main_240m_clk\00", align 1
@.str.47 = private unnamed_addr constant [22 x i8] c"pll_sys_main_120m_clk\00", align 1
@.str.48 = private unnamed_addr constant [18 x i8] c"pll_dram_533m_clk\00", align 1
@.str.49 = private unnamed_addr constant [18 x i8] c"pll_sys_pfd0_196m\00", align 1
@.str.50 = private unnamed_addr constant [18 x i8] c"pll_sys_pfd1_166m\00", align 1
@.str.51 = private unnamed_addr constant [18 x i8] c"pll_sys_pfd2_135m\00", align 1
@.str.52 = private unnamed_addr constant [22 x i8] c"pll_sys_pfd0_196m_clk\00", align 1
@.str.53 = private unnamed_addr constant [22 x i8] c"pll_sys_pfd1_166m_clk\00", align 1
@.str.54 = private unnamed_addr constant [22 x i8] c"pll_sys_pfd2_135m_clk\00", align 1
@.str.55 = private unnamed_addr constant [18 x i8] c"pll_enet_main_clk\00", align 1
@.str.56 = private unnamed_addr constant [14 x i8] c"pll_enet_500m\00", align 1
@.str.57 = private unnamed_addr constant [14 x i8] c"pll_enet_250m\00", align 1
@.str.58 = private unnamed_addr constant [14 x i8] c"pll_enet_125m\00", align 1
@.str.59 = private unnamed_addr constant [14 x i8] c"pll_enet_100m\00", align 1
@.str.60 = private unnamed_addr constant [13 x i8] c"pll_enet_50m\00", align 1
@.str.61 = private unnamed_addr constant [13 x i8] c"pll_enet_40m\00", align 1
@.str.62 = private unnamed_addr constant [13 x i8] c"pll_enet_25m\00", align 1
@.str.63 = private unnamed_addr constant [18 x i8] c"pll_enet_500m_clk\00", align 1
@.str.64 = private unnamed_addr constant [18 x i8] c"pll_enet_250m_clk\00", align 1
@.str.65 = private unnamed_addr constant [18 x i8] c"pll_enet_125m_clk\00", align 1
@.str.66 = private unnamed_addr constant [18 x i8] c"pll_enet_100m_clk\00", align 1
@.str.67 = private unnamed_addr constant [17 x i8] c"pll_enet_50m_clk\00", align 1
@.str.68 = private unnamed_addr constant [17 x i8] c"pll_enet_40m_clk\00", align 1
@.str.69 = private unnamed_addr constant [17 x i8] c"pll_enet_25m_clk\00", align 1
@.str.70 = private unnamed_addr constant [10 x i8] c"lvds1_sel\00", align 1
@lvds1_sel = internal global [20 x ptr] [ptr @.str.23, ptr @.str.26, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.30, ptr @.str.32, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.24], align 4
@.str.71 = private unnamed_addr constant [10 x i8] c"lvds1_out\00", align 1
@.str.72 = private unnamed_addr constant [11 x i8] c"arm_a7_src\00", align 1
@arm_a7_sel = internal global [8 x ptr] [ptr @.str.2, ptr @.str.23, ptr @.str.63, ptr @.str.24, ptr @.str.26, ptr @.str.33, ptr @.str.30, ptr @.str.433], align 4
@.str.73 = private unnamed_addr constant [11 x i8] c"arm_m4_src\00", align 1
@arm_m4_sel = internal global [8 x ptr] [ptr @.str.2, ptr @.str.46, ptr @.str.64, ptr @.str.35, ptr @.str.48, ptr @.str.30, ptr @.str.32, ptr @.str.433], align 4
@.str.74 = private unnamed_addr constant [8 x i8] c"axi_src\00", align 1
@axi_sel = internal global [8 x ptr] [ptr @.str.2, ptr @.str.34, ptr @.str.48, ptr @.str.64, ptr @.str.38, ptr @.str.30, ptr @.str.32, ptr @.str.40], align 4
@.str.75 = private unnamed_addr constant [13 x i8] c"disp_axi_src\00", align 1
@disp_axi_sel = internal global [8 x ptr] [ptr @.str.2, ptr @.str.34, ptr @.str.48, ptr @.str.64, ptr @.str.39, ptr @.str.40, ptr @.str.30, ptr @.str.32], align 4
@.str.76 = private unnamed_addr constant [8 x i8] c"ahb_src\00", align 1
@ahb_channel_sel = internal global [8 x ptr] [ptr @.str.2, ptr @.str.35, ptr @.str.48, ptr @.str.33, ptr @.str.64, ptr @.str.433, ptr @.str.30, ptr @.str.32], align 4
@.str.77 = private unnamed_addr constant [13 x i8] c"enet_axi_src\00", align 1
@enet_axi_sel = internal global [8 x ptr] [ptr @.str.2, ptr @.str.35, ptr @.str.48, ptr @.str.64, ptr @.str.46, ptr @.str.30, ptr @.str.32, ptr @.str.37], align 4
@.str.78 = private unnamed_addr constant [15 x i8] c"nand_usdhc_src\00", align 1
@nand_usdhc_bus_sel = internal global [8 x ptr] [ptr @.str.2, ptr @.str.35, ptr @.str.48, ptr @.str.46, ptr @.str.54, ptr @.str.39, ptr @.str.64, ptr @.str.30], align 4
@.str.79 = private unnamed_addr constant [14 x i8] c"dram_phym_src\00", align 1
@dram_phym_sel = internal global [2 x ptr] [ptr @.str.24, ptr @.str.437], align 4
@.str.80 = private unnamed_addr constant [9 x i8] c"dram_src\00", align 1
@dram_sel = internal global [2 x ptr] [ptr @.str.24, ptr @.str.358], align 4
@.str.81 = private unnamed_addr constant [18 x i8] c"dram_phym_alt_src\00", align 1
@dram_phym_alt_sel = internal global [8 x ptr] [ptr @.str.2, ptr @.str.48, ptr @.str.26, ptr @.str.63, ptr @.str.433, ptr @.str.40, ptr @.str.30, ptr @.str.32], align 4
@.str.82 = private unnamed_addr constant [13 x i8] c"dram_alt_src\00", align 1
@dram_alt_sel = internal global [8 x ptr] [ptr @.str.2, ptr @.str.48, ptr @.str.26, ptr @.str.63, ptr @.str.64, ptr @.str.33, ptr @.str.30, ptr @.str.35], align 4
@.str.83 = private unnamed_addr constant [13 x i8] c"usb_hsic_src\00", align 1
@usb_hsic_sel = internal global [8 x ptr] [ptr @.str.2, ptr @.str.26, ptr @.str.433, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40], align 4
@.str.84 = private unnamed_addr constant [14 x i8] c"pcie_ctrl_src\00", align 1
@pcie_ctrl_sel = internal global [8 x ptr] [ptr @.str.2, ptr @.str.64, ptr @.str.46, ptr @.str.35, ptr @.str.48, ptr @.str.63, ptr @.str.34, ptr @.str.39], align 4
@.str.85 = private unnamed_addr constant [13 x i8] c"pcie_phy_src\00", align 1
@pcie_phy_sel = internal global [8 x ptr] [ptr @.str.2, ptr @.str.66, ptr @.str.63, ptr @.str.438, ptr @.str.439, ptr @.str.440, ptr @.str.441, ptr @.str.33], align 4
@.str.86 = private unnamed_addr constant [15 x i8] c"epdc_pixel_src\00", align 1
@epdc_pixel_sel = internal global [8 x ptr] [ptr @.str.2, ptr @.str.34, ptr @.str.48, ptr @.str.26, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.32], align 4
@.str.87 = private unnamed_addr constant [16 x i8] c"lcdif_pixel_src\00", align 1
@lcdif_pixel_sel = internal global [8 x ptr] [ptr @.str.2, ptr @.str.38, ptr @.str.48, ptr @.str.440, ptr @.str.37, ptr @.str.35, ptr @.str.32, ptr @.str.433], align 4
@.str.88 = private unnamed_addr constant [13 x i8] c"mipi_dsi_src\00", align 1
@mipi_dsi_sel = internal global [8 x ptr] [ptr @.str.2, ptr @.str.38, ptr @.str.36, ptr @.str.26, ptr @.str.52, ptr @.str.48, ptr @.str.32, ptr @.str.30], align 4
@.str.89 = private unnamed_addr constant [13 x i8] c"mipi_csi_src\00", align 1
@mipi_csi_sel = internal global [8 x ptr] [ptr @.str.2, ptr @.str.37, ptr @.str.36, ptr @.str.26, ptr @.str.52, ptr @.str.48, ptr @.str.32, ptr @.str.30], align 4
@.str.90 = private unnamed_addr constant [14 x i8] c"mipi_dphy_src\00", align 1
@mipi_dphy_sel = internal global [8 x ptr] [ptr @.str.2, ptr @.str.47, ptr @.str.48, ptr @.str.38, ptr @.str.442, ptr @.str.439, ptr @.str.32, ptr @.str.440], align 4
@.str.91 = private unnamed_addr constant [9 x i8] c"sai1_src\00", align 1
@sai1_sel = internal global [8 x ptr] [ptr @.str.2, ptr @.str.54, ptr @.str.30, ptr @.str.48, ptr @.str.32, ptr @.str.37, ptr @.str.65, ptr @.str.439], align 4
@.str.92 = private unnamed_addr constant [9 x i8] c"sai2_src\00", align 1
@sai2_sel = internal global [8 x ptr] [ptr @.str.2, ptr @.str.54, ptr @.str.30, ptr @.str.48, ptr @.str.32, ptr @.str.37, ptr @.str.65, ptr @.str.439], align 4
@.str.93 = private unnamed_addr constant [9 x i8] c"sai3_src\00", align 1
@sai3_sel = internal global [8 x ptr] [ptr @.str.2, ptr @.str.54, ptr @.str.30, ptr @.str.48, ptr @.str.32, ptr @.str.37, ptr @.str.65, ptr @.str.440], align 4
@.str.94 = private unnamed_addr constant [10 x i8] c"spdif_src\00", align 1
@spdif_sel = internal global [8 x ptr] [ptr @.str.2, ptr @.str.54, ptr @.str.30, ptr @.str.48, ptr @.str.32, ptr @.str.37, ptr @.str.65, ptr @.str.443], align 4
@.str.95 = private unnamed_addr constant [14 x i8] c"enet1_ref_src\00", align 1
@enet1_ref_sel = internal global [8 x ptr] [ptr @.str.2, ptr @.str.65, ptr @.str.67, ptr @.str.69, ptr @.str.47, ptr @.str.30, ptr @.str.32, ptr @.str.441], align 4
@.str.96 = private unnamed_addr constant [15 x i8] c"enet1_time_src\00", align 1
@enet1_time_sel = internal global [8 x ptr] [ptr @.str.2, ptr @.str.66, ptr @.str.30, ptr @.str.438, ptr @.str.439, ptr @.str.440, ptr @.str.441, ptr @.str.32], align 4
@.str.97 = private unnamed_addr constant [14 x i8] c"enet2_ref_src\00", align 1
@enet2_ref_sel = internal global [8 x ptr] [ptr @.str.2, ptr @.str.65, ptr @.str.67, ptr @.str.69, ptr @.str.47, ptr @.str.30, ptr @.str.32, ptr @.str.441], align 4
@.str.98 = private unnamed_addr constant [15 x i8] c"enet2_time_src\00", align 1
@enet2_time_sel = internal global [8 x ptr] [ptr @.str.2, ptr @.str.66, ptr @.str.30, ptr @.str.438, ptr @.str.439, ptr @.str.440, ptr @.str.441, ptr @.str.32], align 4
@.str.99 = private unnamed_addr constant [17 x i8] c"enet_phy_ref_src\00", align 1
@enet_phy_ref_sel = internal global [8 x ptr] [ptr @.str.2, ptr @.str.69, ptr @.str.67, ptr @.str.65, ptr @.str.48, ptr @.str.30, ptr @.str.32, ptr @.str.36], align 4
@.str.100 = private unnamed_addr constant [8 x i8] c"eim_src\00", align 1
@eim_sel = internal global [8 x ptr] [ptr @.str.2, ptr @.str.54, ptr @.str.47, ptr @.str.48, ptr @.str.35, ptr @.str.36, ptr @.str.65, ptr @.str.433], align 4
@.str.101 = private unnamed_addr constant [9 x i8] c"nand_src\00", align 1
@nand_sel = internal global [8 x ptr] [ptr @.str.2, ptr @.str.26, ptr @.str.48, ptr @.str.33, ptr @.str.36, ptr @.str.63, ptr @.str.64, ptr @.str.32], align 4
@.str.102 = private unnamed_addr constant [9 x i8] c"qspi_src\00", align 1
@qspi_sel = internal global [8 x ptr] [ptr @.str.2, ptr @.str.37, ptr @.str.48, ptr @.str.63, ptr @.str.36, ptr @.str.35, ptr @.str.39, ptr @.str.40], align 4
@.str.103 = private unnamed_addr constant [11 x i8] c"usdhc1_src\00", align 1
@usdhc1_sel = internal global [8 x ptr] [ptr @.str.2, ptr @.str.33, ptr @.str.48, ptr @.str.63, ptr @.str.37, ptr @.str.35, ptr @.str.39, ptr @.str.40], align 4
@.str.104 = private unnamed_addr constant [11 x i8] c"usdhc2_src\00", align 1
@usdhc2_sel = internal global [8 x ptr] [ptr @.str.2, ptr @.str.33, ptr @.str.48, ptr @.str.63, ptr @.str.37, ptr @.str.35, ptr @.str.39, ptr @.str.40], align 4
@.str.105 = private unnamed_addr constant [11 x i8] c"usdhc3_src\00", align 1
@usdhc3_sel = internal global [8 x ptr] [ptr @.str.2, ptr @.str.33, ptr @.str.48, ptr @.str.63, ptr @.str.37, ptr @.str.35, ptr @.str.39, ptr @.str.40], align 4
@.str.106 = private unnamed_addr constant [9 x i8] c"can1_src\00", align 1
@can1_sel = internal global [8 x ptr] [ptr @.str.2, ptr @.str.47, ptr @.str.48, ptr @.str.26, ptr @.str.68, ptr @.str.433, ptr @.str.438, ptr @.str.441], align 4
@.str.107 = private unnamed_addr constant [9 x i8] c"can2_src\00", align 1
@can2_sel = internal global [8 x ptr] [ptr @.str.2, ptr @.str.47, ptr @.str.48, ptr @.str.26, ptr @.str.68, ptr @.str.433, ptr @.str.438, ptr @.str.440], align 4
@.str.108 = private unnamed_addr constant [9 x i8] c"i2c1_src\00", align 1
@i2c1_sel = internal global [8 x ptr] [ptr @.str.2, ptr @.str.47, ptr @.str.67, ptr @.str.48, ptr @.str.30, ptr @.str.32, ptr @.str.433, ptr @.str.54], align 4
@.str.109 = private unnamed_addr constant [9 x i8] c"i2c2_src\00", align 1
@i2c2_sel = internal global [8 x ptr] [ptr @.str.2, ptr @.str.47, ptr @.str.67, ptr @.str.48, ptr @.str.30, ptr @.str.32, ptr @.str.433, ptr @.str.54], align 4
@.str.110 = private unnamed_addr constant [9 x i8] c"i2c3_src\00", align 1
@i2c3_sel = internal global [8 x ptr] [ptr @.str.2, ptr @.str.47, ptr @.str.67, ptr @.str.48, ptr @.str.30, ptr @.str.32, ptr @.str.433, ptr @.str.54], align 4
@.str.111 = private unnamed_addr constant [9 x i8] c"i2c4_src\00", align 1
@i2c4_sel = internal global [8 x ptr] [ptr @.str.2, ptr @.str.47, ptr @.str.67, ptr @.str.48, ptr @.str.30, ptr @.str.32, ptr @.str.433, ptr @.str.54], align 4
@.str.112 = private unnamed_addr constant [10 x i8] c"uart1_src\00", align 1
@uart1_sel = internal global [8 x ptr] [ptr @.str.2, ptr @.str.46, ptr @.str.68, ptr @.str.66, ptr @.str.26, ptr @.str.439, ptr @.str.441, ptr @.str.433], align 4
@.str.113 = private unnamed_addr constant [10 x i8] c"uart2_src\00", align 1
@uart2_sel = internal global [8 x ptr] [ptr @.str.2, ptr @.str.46, ptr @.str.68, ptr @.str.66, ptr @.str.26, ptr @.str.439, ptr @.str.440, ptr @.str.433], align 4
@.str.114 = private unnamed_addr constant [10 x i8] c"uart3_src\00", align 1
@uart3_sel = internal global [8 x ptr] [ptr @.str.2, ptr @.str.46, ptr @.str.68, ptr @.str.66, ptr @.str.26, ptr @.str.439, ptr @.str.441, ptr @.str.433], align 4
@.str.115 = private unnamed_addr constant [10 x i8] c"uart4_src\00", align 1
@uart4_sel = internal global [8 x ptr] [ptr @.str.2, ptr @.str.46, ptr @.str.68, ptr @.str.66, ptr @.str.26, ptr @.str.439, ptr @.str.440, ptr @.str.433], align 4
@.str.116 = private unnamed_addr constant [10 x i8] c"uart5_src\00", align 1
@uart5_sel = internal global [8 x ptr] [ptr @.str.2, ptr @.str.46, ptr @.str.68, ptr @.str.66, ptr @.str.26, ptr @.str.439, ptr @.str.441, ptr @.str.433], align 4
@.str.117 = private unnamed_addr constant [10 x i8] c"uart6_src\00", align 1
@uart6_sel = internal global [8 x ptr] [ptr @.str.2, ptr @.str.46, ptr @.str.68, ptr @.str.66, ptr @.str.26, ptr @.str.439, ptr @.str.440, ptr @.str.433], align 4
@.str.118 = private unnamed_addr constant [10 x i8] c"uart7_src\00", align 1
@uart7_sel = internal global [8 x ptr] [ptr @.str.2, ptr @.str.46, ptr @.str.68, ptr @.str.66, ptr @.str.26, ptr @.str.439, ptr @.str.441, ptr @.str.433], align 4
@.str.119 = private unnamed_addr constant [11 x i8] c"ecspi1_src\00", align 1
@ecspi1_sel = internal global [8 x ptr] [ptr @.str.2, ptr @.str.46, ptr @.str.68, ptr @.str.47, ptr @.str.26, ptr @.str.37, ptr @.str.64, ptr @.str.433], align 4
@.str.120 = private unnamed_addr constant [11 x i8] c"ecspi2_src\00", align 1
@ecspi2_sel = internal global [8 x ptr] [ptr @.str.2, ptr @.str.46, ptr @.str.68, ptr @.str.47, ptr @.str.26, ptr @.str.37, ptr @.str.64, ptr @.str.433], align 4
@.str.121 = private unnamed_addr constant [11 x i8] c"ecspi3_src\00", align 1
@ecspi3_sel = internal global [8 x ptr] [ptr @.str.2, ptr @.str.46, ptr @.str.68, ptr @.str.47, ptr @.str.26, ptr @.str.37, ptr @.str.64, ptr @.str.433], align 4
@.str.122 = private unnamed_addr constant [11 x i8] c"ecspi4_src\00", align 1
@ecspi4_sel = internal global [8 x ptr] [ptr @.str.2, ptr @.str.46, ptr @.str.68, ptr @.str.47, ptr @.str.26, ptr @.str.37, ptr @.str.64, ptr @.str.433], align 4
@.str.123 = private unnamed_addr constant [9 x i8] c"pwm1_src\00", align 1
@pwm1_sel = internal global [8 x ptr] [ptr @.str.2, ptr @.str.66, ptr @.str.47, ptr @.str.68, ptr @.str.30, ptr @.str.438, ptr @.str.442, ptr @.str.32], align 4
@.str.124 = private unnamed_addr constant [9 x i8] c"pwm2_src\00", align 1
@pwm2_sel = internal global [8 x ptr] [ptr @.str.2, ptr @.str.66, ptr @.str.47, ptr @.str.68, ptr @.str.30, ptr @.str.438, ptr @.str.442, ptr @.str.32], align 4
@.str.125 = private unnamed_addr constant [9 x i8] c"pwm3_src\00", align 1
@pwm3_sel = internal global [8 x ptr] [ptr @.str.2, ptr @.str.66, ptr @.str.47, ptr @.str.68, ptr @.str.30, ptr @.str.439, ptr @.str.442, ptr @.str.32], align 4
@.str.126 = private unnamed_addr constant [9 x i8] c"pwm4_src\00", align 1
@pwm4_sel = internal global [8 x ptr] [ptr @.str.2, ptr @.str.66, ptr @.str.47, ptr @.str.68, ptr @.str.30, ptr @.str.439, ptr @.str.442, ptr @.str.32], align 4
@.str.127 = private unnamed_addr constant [15 x i8] c"flextimer1_src\00", align 1
@flextimer1_sel = internal global [8 x ptr] [ptr @.str.2, ptr @.str.66, ptr @.str.47, ptr @.str.68, ptr @.str.30, ptr @.str.440, ptr @.str.442, ptr @.str.32], align 4
@.str.128 = private unnamed_addr constant [15 x i8] c"flextimer2_src\00", align 1
@flextimer2_sel = internal global [8 x ptr] [ptr @.str.2, ptr @.str.66, ptr @.str.47, ptr @.str.68, ptr @.str.30, ptr @.str.440, ptr @.str.442, ptr @.str.32], align 4
@.str.129 = private unnamed_addr constant [9 x i8] c"sim1_src\00", align 1
@sim1_sel = internal global [8 x ptr] [ptr @.str.2, ptr @.str.54, ptr @.str.47, ptr @.str.48, ptr @.str.433, ptr @.str.30, ptr @.str.65, ptr @.str.40], align 4
@.str.130 = private unnamed_addr constant [9 x i8] c"sim2_src\00", align 1
@sim2_sel = internal global [8 x ptr] [ptr @.str.2, ptr @.str.54, ptr @.str.47, ptr @.str.48, ptr @.str.433, ptr @.str.32, ptr @.str.65, ptr @.str.40], align 4
@.str.131 = private unnamed_addr constant [9 x i8] c"gpt1_src\00", align 1
@gpt1_sel = internal global [8 x ptr] [ptr @.str.2, ptr @.str.66, ptr @.str.33, ptr @.str.68, ptr @.str.32, ptr @.str.442, ptr @.str.30, ptr @.str.438], align 4
@.str.132 = private unnamed_addr constant [9 x i8] c"gpt2_src\00", align 1
@gpt2_sel = internal global [8 x ptr] [ptr @.str.2, ptr @.str.66, ptr @.str.33, ptr @.str.68, ptr @.str.32, ptr @.str.442, ptr @.str.30, ptr @.str.439], align 4
@.str.133 = private unnamed_addr constant [9 x i8] c"gpt3_src\00", align 1
@gpt3_sel = internal global [8 x ptr] [ptr @.str.2, ptr @.str.66, ptr @.str.33, ptr @.str.68, ptr @.str.32, ptr @.str.442, ptr @.str.30, ptr @.str.440], align 4
@.str.134 = private unnamed_addr constant [9 x i8] c"gpt4_src\00", align 1
@gpt4_sel = internal global [8 x ptr] [ptr @.str.2, ptr @.str.66, ptr @.str.33, ptr @.str.68, ptr @.str.32, ptr @.str.442, ptr @.str.30, ptr @.str.441], align 4
@.str.135 = private unnamed_addr constant [10 x i8] c"trace_src\00", align 1
@trace_sel = internal global [8 x ptr] [ptr @.str.2, ptr @.str.54, ptr @.str.47, ptr @.str.48, ptr @.str.65, ptr @.str.433, ptr @.str.439, ptr @.str.440], align 4
@.str.136 = private unnamed_addr constant [9 x i8] c"wdog_src\00", align 1
@wdog_sel = internal global [8 x ptr] [ptr @.str.2, ptr @.str.54, ptr @.str.47, ptr @.str.48, ptr @.str.65, ptr @.str.433, ptr @.str.442, ptr @.str.53], align 4
@.str.137 = private unnamed_addr constant [13 x i8] c"csi_mclk_src\00", align 1
@csi_mclk_sel = internal global [8 x ptr] [ptr @.str.2, ptr @.str.54, ptr @.str.47, ptr @.str.48, ptr @.str.65, ptr @.str.30, ptr @.str.32, ptr @.str.433], align 4
@.str.138 = private unnamed_addr constant [15 x i8] c"audio_mclk_src\00", align 1
@audio_mclk_sel = internal global [8 x ptr] [ptr @.str.2, ptr @.str.54, ptr @.str.47, ptr @.str.48, ptr @.str.65, ptr @.str.30, ptr @.str.32, ptr @.str.433], align 4
@.str.139 = private unnamed_addr constant [10 x i8] c"wrclk_src\00", align 1
@wrclk_sel = internal global [8 x ptr] [ptr @.str.2, ptr @.str.68, ptr @.str.48, ptr @.str.433, ptr @.str.46, ptr @.str.35, ptr @.str.63, ptr @.str.40], align 4
@.str.140 = private unnamed_addr constant [10 x i8] c"clko1_src\00", align 1
@clko1_sel = internal global [8 x ptr] [ptr @.str.2, ptr @.str.26, ptr @.str.46, ptr @.str.52, ptr @.str.36, ptr @.str.63, ptr @.str.48, ptr @.str.442], align 4
@.str.141 = private unnamed_addr constant [10 x i8] c"clko2_src\00", align 1
@clko2_sel = internal global [8 x ptr] [ptr @.str.2, ptr @.str.46, ptr @.str.33, ptr @.str.53, ptr @.str.37, ptr @.str.30, ptr @.str.32, ptr @.str.3], align 4
@.str.142 = private unnamed_addr constant [10 x i8] c"arm_a7_cg\00", align 1
@.str.143 = private unnamed_addr constant [10 x i8] c"arm_m4_cg\00", align 1
@.str.144 = private unnamed_addr constant [7 x i8] c"axi_cg\00", align 1
@.str.145 = private unnamed_addr constant [12 x i8] c"disp_axi_cg\00", align 1
@.str.146 = private unnamed_addr constant [12 x i8] c"enet_axi_cg\00", align 1
@.str.147 = private unnamed_addr constant [14 x i8] c"nand_usdhc_cg\00", align 1
@.str.148 = private unnamed_addr constant [7 x i8] c"ahb_cg\00", align 1
@.str.149 = private unnamed_addr constant [13 x i8] c"dram_phym_cg\00", align 1
@.str.150 = private unnamed_addr constant [8 x i8] c"dram_cg\00", align 1
@.str.151 = private unnamed_addr constant [17 x i8] c"dram_phym_alt_cg\00", align 1
@.str.152 = private unnamed_addr constant [12 x i8] c"dram_alt_cg\00", align 1
@.str.153 = private unnamed_addr constant [12 x i8] c"usb_hsic_cg\00", align 1
@.str.154 = private unnamed_addr constant [13 x i8] c"pcie_ctrl_cg\00", align 1
@.str.155 = private unnamed_addr constant [12 x i8] c"pcie_phy_cg\00", align 1
@.str.156 = private unnamed_addr constant [14 x i8] c"epdc_pixel_cg\00", align 1
@.str.157 = private unnamed_addr constant [15 x i8] c"lcdif_pixel_cg\00", align 1
@.str.158 = private unnamed_addr constant [12 x i8] c"mipi_dsi_cg\00", align 1
@.str.159 = private unnamed_addr constant [12 x i8] c"mipi_csi_cg\00", align 1
@.str.160 = private unnamed_addr constant [13 x i8] c"mipi_dphy_cg\00", align 1
@.str.161 = private unnamed_addr constant [8 x i8] c"sai1_cg\00", align 1
@.str.162 = private unnamed_addr constant [8 x i8] c"sai2_cg\00", align 1
@.str.163 = private unnamed_addr constant [8 x i8] c"sai3_cg\00", align 1
@.str.164 = private unnamed_addr constant [9 x i8] c"spdif_cg\00", align 1
@.str.165 = private unnamed_addr constant [13 x i8] c"enet1_ref_cg\00", align 1
@.str.166 = private unnamed_addr constant [14 x i8] c"enet1_time_cg\00", align 1
@.str.167 = private unnamed_addr constant [13 x i8] c"enet2_ref_cg\00", align 1
@.str.168 = private unnamed_addr constant [14 x i8] c"enet2_time_cg\00", align 1
@.str.169 = private unnamed_addr constant [16 x i8] c"enet_phy_ref_cg\00", align 1
@.str.170 = private unnamed_addr constant [7 x i8] c"eim_cg\00", align 1
@.str.171 = private unnamed_addr constant [8 x i8] c"nand_cg\00", align 1
@.str.172 = private unnamed_addr constant [8 x i8] c"qspi_cg\00", align 1
@.str.173 = private unnamed_addr constant [10 x i8] c"usdhc1_cg\00", align 1
@.str.174 = private unnamed_addr constant [10 x i8] c"usdhc2_cg\00", align 1
@.str.175 = private unnamed_addr constant [10 x i8] c"usdhc3_cg\00", align 1
@.str.176 = private unnamed_addr constant [8 x i8] c"can1_cg\00", align 1
@.str.177 = private unnamed_addr constant [8 x i8] c"can2_cg\00", align 1
@.str.178 = private unnamed_addr constant [8 x i8] c"i2c1_cg\00", align 1
@.str.179 = private unnamed_addr constant [8 x i8] c"i2c2_cg\00", align 1
@.str.180 = private unnamed_addr constant [8 x i8] c"i2c3_cg\00", align 1
@.str.181 = private unnamed_addr constant [8 x i8] c"i2c4_cg\00", align 1
@.str.182 = private unnamed_addr constant [9 x i8] c"uart1_cg\00", align 1
@.str.183 = private unnamed_addr constant [9 x i8] c"uart2_cg\00", align 1
@.str.184 = private unnamed_addr constant [9 x i8] c"uart3_cg\00", align 1
@.str.185 = private unnamed_addr constant [9 x i8] c"uart4_cg\00", align 1
@.str.186 = private unnamed_addr constant [9 x i8] c"uart5_cg\00", align 1
@.str.187 = private unnamed_addr constant [9 x i8] c"uart6_cg\00", align 1
@.str.188 = private unnamed_addr constant [9 x i8] c"uart7_cg\00", align 1
@.str.189 = private unnamed_addr constant [10 x i8] c"ecspi1_cg\00", align 1
@.str.190 = private unnamed_addr constant [10 x i8] c"ecspi2_cg\00", align 1
@.str.191 = private unnamed_addr constant [10 x i8] c"ecspi3_cg\00", align 1
@.str.192 = private unnamed_addr constant [10 x i8] c"ecspi4_cg\00", align 1
@.str.193 = private unnamed_addr constant [8 x i8] c"pwm1_cg\00", align 1
@.str.194 = private unnamed_addr constant [8 x i8] c"pwm2_cg\00", align 1
@.str.195 = private unnamed_addr constant [8 x i8] c"pwm3_cg\00", align 1
@.str.196 = private unnamed_addr constant [8 x i8] c"pwm4_cg\00", align 1
@.str.197 = private unnamed_addr constant [14 x i8] c"flextimer1_cg\00", align 1
@.str.198 = private unnamed_addr constant [14 x i8] c"flextimer2_cg\00", align 1
@.str.199 = private unnamed_addr constant [8 x i8] c"sim1_cg\00", align 1
@.str.200 = private unnamed_addr constant [8 x i8] c"sim2_cg\00", align 1
@.str.201 = private unnamed_addr constant [8 x i8] c"gpt1_cg\00", align 1
@.str.202 = private unnamed_addr constant [8 x i8] c"gpt2_cg\00", align 1
@.str.203 = private unnamed_addr constant [8 x i8] c"gpt3_cg\00", align 1
@.str.204 = private unnamed_addr constant [8 x i8] c"gpt4_cg\00", align 1
@.str.205 = private unnamed_addr constant [9 x i8] c"trace_cg\00", align 1
@.str.206 = private unnamed_addr constant [8 x i8] c"wdog_cg\00", align 1
@.str.207 = private unnamed_addr constant [12 x i8] c"csi_mclk_cg\00", align 1
@.str.208 = private unnamed_addr constant [14 x i8] c"audio_mclk_cg\00", align 1
@.str.209 = private unnamed_addr constant [9 x i8] c"wrclk_cg\00", align 1
@.str.210 = private unnamed_addr constant [9 x i8] c"clko1_cg\00", align 1
@.str.211 = private unnamed_addr constant [9 x i8] c"clko2_cg\00", align 1
@.str.212 = private unnamed_addr constant [12 x i8] c"axi_pre_div\00", align 1
@.str.213 = private unnamed_addr constant [17 x i8] c"disp_axi_pre_div\00", align 1
@.str.214 = private unnamed_addr constant [17 x i8] c"enet_axi_pre_div\00", align 1
@.str.215 = private unnamed_addr constant [19 x i8] c"nand_usdhc_pre_div\00", align 1
@.str.216 = private unnamed_addr constant [12 x i8] c"ahb_pre_div\00", align 1
@.str.217 = private unnamed_addr constant [22 x i8] c"dram_phym_alt_pre_div\00", align 1
@.str.218 = private unnamed_addr constant [17 x i8] c"dram_alt_pre_div\00", align 1
@.str.219 = private unnamed_addr constant [17 x i8] c"usb_hsic_pre_div\00", align 1
@.str.220 = private unnamed_addr constant [18 x i8] c"pcie_ctrl_pre_div\00", align 1
@.str.221 = private unnamed_addr constant [17 x i8] c"pcie_phy_pre_div\00", align 1
@.str.222 = private unnamed_addr constant [19 x i8] c"epdc_pixel_pre_div\00", align 1
@.str.223 = private unnamed_addr constant [20 x i8] c"lcdif_pixel_pre_div\00", align 1
@.str.224 = private unnamed_addr constant [17 x i8] c"mipi_dsi_pre_div\00", align 1
@.str.225 = private unnamed_addr constant [17 x i8] c"mipi_csi_pre_div\00", align 1
@.str.226 = private unnamed_addr constant [18 x i8] c"mipi_dphy_pre_div\00", align 1
@.str.227 = private unnamed_addr constant [13 x i8] c"sai1_pre_div\00", align 1
@.str.228 = private unnamed_addr constant [13 x i8] c"sai2_pre_div\00", align 1
@.str.229 = private unnamed_addr constant [13 x i8] c"sai3_pre_div\00", align 1
@.str.230 = private unnamed_addr constant [14 x i8] c"spdif_pre_div\00", align 1
@.str.231 = private unnamed_addr constant [18 x i8] c"enet1_ref_pre_div\00", align 1
@.str.232 = private unnamed_addr constant [19 x i8] c"enet1_time_pre_div\00", align 1
@.str.233 = private unnamed_addr constant [18 x i8] c"enet2_ref_pre_div\00", align 1
@.str.234 = private unnamed_addr constant [19 x i8] c"enet2_time_pre_div\00", align 1
@.str.235 = private unnamed_addr constant [21 x i8] c"enet_phy_ref_pre_div\00", align 1
@.str.236 = private unnamed_addr constant [12 x i8] c"eim_pre_div\00", align 1
@.str.237 = private unnamed_addr constant [13 x i8] c"nand_pre_div\00", align 1
@.str.238 = private unnamed_addr constant [13 x i8] c"qspi_pre_div\00", align 1
@.str.239 = private unnamed_addr constant [15 x i8] c"usdhc1_pre_div\00", align 1
@.str.240 = private unnamed_addr constant [15 x i8] c"usdhc2_pre_div\00", align 1
@.str.241 = private unnamed_addr constant [15 x i8] c"usdhc3_pre_div\00", align 1
@.str.242 = private unnamed_addr constant [13 x i8] c"can1_pre_div\00", align 1
@.str.243 = private unnamed_addr constant [13 x i8] c"can2_pre_div\00", align 1
@.str.244 = private unnamed_addr constant [13 x i8] c"i2c1_pre_div\00", align 1
@.str.245 = private unnamed_addr constant [13 x i8] c"i2c2_pre_div\00", align 1
@.str.246 = private unnamed_addr constant [13 x i8] c"i2c3_pre_div\00", align 1
@.str.247 = private unnamed_addr constant [13 x i8] c"i2c4_pre_div\00", align 1
@.str.248 = private unnamed_addr constant [14 x i8] c"uart1_pre_div\00", align 1
@.str.249 = private unnamed_addr constant [14 x i8] c"uart2_pre_div\00", align 1
@.str.250 = private unnamed_addr constant [14 x i8] c"uart3_pre_div\00", align 1
@.str.251 = private unnamed_addr constant [14 x i8] c"uart4_pre_div\00", align 1
@.str.252 = private unnamed_addr constant [14 x i8] c"uart5_pre_div\00", align 1
@.str.253 = private unnamed_addr constant [14 x i8] c"uart6_pre_div\00", align 1
@.str.254 = private unnamed_addr constant [14 x i8] c"uart7_pre_div\00", align 1
@.str.255 = private unnamed_addr constant [15 x i8] c"ecspi1_pre_div\00", align 1
@.str.256 = private unnamed_addr constant [15 x i8] c"ecspi2_pre_div\00", align 1
@.str.257 = private unnamed_addr constant [15 x i8] c"ecspi3_pre_div\00", align 1
@.str.258 = private unnamed_addr constant [15 x i8] c"ecspi4_pre_div\00", align 1
@.str.259 = private unnamed_addr constant [13 x i8] c"pwm1_pre_div\00", align 1
@.str.260 = private unnamed_addr constant [13 x i8] c"pwm2_pre_div\00", align 1
@.str.261 = private unnamed_addr constant [13 x i8] c"pwm3_pre_div\00", align 1
@.str.262 = private unnamed_addr constant [13 x i8] c"pwm4_pre_div\00", align 1
@.str.263 = private unnamed_addr constant [19 x i8] c"flextimer1_pre_div\00", align 1
@.str.264 = private unnamed_addr constant [19 x i8] c"flextimer2_pre_div\00", align 1
@.str.265 = private unnamed_addr constant [13 x i8] c"sim1_pre_div\00", align 1
@.str.266 = private unnamed_addr constant [13 x i8] c"sim2_pre_div\00", align 1
@.str.267 = private unnamed_addr constant [13 x i8] c"gpt1_pre_div\00", align 1
@.str.268 = private unnamed_addr constant [13 x i8] c"gpt2_pre_div\00", align 1
@.str.269 = private unnamed_addr constant [13 x i8] c"gpt3_pre_div\00", align 1
@.str.270 = private unnamed_addr constant [13 x i8] c"gpt4_pre_div\00", align 1
@.str.271 = private unnamed_addr constant [14 x i8] c"trace_pre_div\00", align 1
@.str.272 = private unnamed_addr constant [13 x i8] c"wdog_pre_div\00", align 1
@.str.273 = private unnamed_addr constant [17 x i8] c"csi_mclk_pre_div\00", align 1
@.str.274 = private unnamed_addr constant [19 x i8] c"audio_mclk_pre_div\00", align 1
@.str.275 = private unnamed_addr constant [14 x i8] c"wrclk_pre_div\00", align 1
@.str.276 = private unnamed_addr constant [14 x i8] c"clko1_pre_div\00", align 1
@.str.277 = private unnamed_addr constant [14 x i8] c"clko2_pre_div\00", align 1
@.str.278 = private unnamed_addr constant [11 x i8] c"arm_a7_div\00", align 1
@.str.279 = private unnamed_addr constant [11 x i8] c"arm_m4_div\00", align 1
@.str.280 = private unnamed_addr constant [13 x i8] c"axi_post_div\00", align 1
@.str.281 = private unnamed_addr constant [18 x i8] c"disp_axi_post_div\00", align 1
@.str.282 = private unnamed_addr constant [18 x i8] c"enet_axi_post_div\00", align 1
@.str.283 = private unnamed_addr constant [20 x i8] c"nand_usdhc_root_clk\00", align 1
@.str.284 = private unnamed_addr constant [13 x i8] c"ahb_root_clk\00", align 1
@.str.285 = private unnamed_addr constant [13 x i8] c"ipg_root_clk\00", align 1
@.str.286 = private unnamed_addr constant [14 x i8] c"dram_post_div\00", align 1
@.str.287 = private unnamed_addr constant [23 x i8] c"dram_phym_alt_post_div\00", align 1
@.str.288 = private unnamed_addr constant [18 x i8] c"dram_alt_post_div\00", align 1
@.str.289 = private unnamed_addr constant [18 x i8] c"usb_hsic_post_div\00", align 1
@.str.290 = private unnamed_addr constant [19 x i8] c"pcie_ctrl_post_div\00", align 1
@.str.291 = private unnamed_addr constant [18 x i8] c"pcie_phy_post_div\00", align 1
@.str.292 = private unnamed_addr constant [20 x i8] c"epdc_pixel_post_div\00", align 1
@.str.293 = private unnamed_addr constant [21 x i8] c"lcdif_pixel_post_div\00", align 1
@.str.294 = private unnamed_addr constant [18 x i8] c"mipi_dsi_post_div\00", align 1
@.str.295 = private unnamed_addr constant [18 x i8] c"mipi_csi_post_div\00", align 1
@.str.296 = private unnamed_addr constant [19 x i8] c"mipi_dphy_post_div\00", align 1
@.str.297 = private unnamed_addr constant [14 x i8] c"sai1_post_div\00", align 1
@.str.298 = private unnamed_addr constant [14 x i8] c"sai2_post_div\00", align 1
@.str.299 = private unnamed_addr constant [14 x i8] c"sai3_post_div\00", align 1
@.str.300 = private unnamed_addr constant [15 x i8] c"spdif_post_div\00", align 1
@.str.301 = private unnamed_addr constant [19 x i8] c"enet1_ref_post_div\00", align 1
@.str.302 = private unnamed_addr constant [20 x i8] c"enet1_time_post_div\00", align 1
@.str.303 = private unnamed_addr constant [19 x i8] c"enet2_ref_post_div\00", align 1
@.str.304 = private unnamed_addr constant [20 x i8] c"enet2_time_post_div\00", align 1
@.str.305 = private unnamed_addr constant [22 x i8] c"enet_phy_ref_root_clk\00", align 1
@.str.306 = private unnamed_addr constant [13 x i8] c"eim_post_div\00", align 1
@.str.307 = private unnamed_addr constant [14 x i8] c"nand_root_clk\00", align 1
@.str.308 = private unnamed_addr constant [14 x i8] c"qspi_post_div\00", align 1
@.str.309 = private unnamed_addr constant [16 x i8] c"usdhc1_post_div\00", align 1
@.str.310 = private unnamed_addr constant [16 x i8] c"usdhc2_post_div\00", align 1
@.str.311 = private unnamed_addr constant [16 x i8] c"usdhc3_post_div\00", align 1
@.str.312 = private unnamed_addr constant [14 x i8] c"can1_post_div\00", align 1
@.str.313 = private unnamed_addr constant [14 x i8] c"can2_post_div\00", align 1
@.str.314 = private unnamed_addr constant [14 x i8] c"i2c1_post_div\00", align 1
@.str.315 = private unnamed_addr constant [14 x i8] c"i2c2_post_div\00", align 1
@.str.316 = private unnamed_addr constant [14 x i8] c"i2c3_post_div\00", align 1
@.str.317 = private unnamed_addr constant [14 x i8] c"i2c4_post_div\00", align 1
@.str.318 = private unnamed_addr constant [15 x i8] c"uart1_post_div\00", align 1
@.str.319 = private unnamed_addr constant [15 x i8] c"uart2_post_div\00", align 1
@.str.320 = private unnamed_addr constant [15 x i8] c"uart3_post_div\00", align 1
@.str.321 = private unnamed_addr constant [15 x i8] c"uart4_post_div\00", align 1
@.str.322 = private unnamed_addr constant [15 x i8] c"uart5_post_div\00", align 1
@.str.323 = private unnamed_addr constant [15 x i8] c"uart6_post_div\00", align 1
@.str.324 = private unnamed_addr constant [15 x i8] c"uart7_post_div\00", align 1
@.str.325 = private unnamed_addr constant [16 x i8] c"ecspi1_post_div\00", align 1
@.str.326 = private unnamed_addr constant [16 x i8] c"ecspi2_post_div\00", align 1
@.str.327 = private unnamed_addr constant [16 x i8] c"ecspi3_post_div\00", align 1
@.str.328 = private unnamed_addr constant [16 x i8] c"ecspi4_post_div\00", align 1
@.str.329 = private unnamed_addr constant [14 x i8] c"pwm1_post_div\00", align 1
@.str.330 = private unnamed_addr constant [14 x i8] c"pwm2_post_div\00", align 1
@.str.331 = private unnamed_addr constant [14 x i8] c"pwm3_post_div\00", align 1
@.str.332 = private unnamed_addr constant [14 x i8] c"pwm4_post_div\00", align 1
@.str.333 = private unnamed_addr constant [20 x i8] c"flextimer1_post_div\00", align 1
@.str.334 = private unnamed_addr constant [20 x i8] c"flextimer2_post_div\00", align 1
@.str.335 = private unnamed_addr constant [14 x i8] c"sim1_post_div\00", align 1
@.str.336 = private unnamed_addr constant [14 x i8] c"sim2_post_div\00", align 1
@.str.337 = private unnamed_addr constant [14 x i8] c"gpt1_post_div\00", align 1
@.str.338 = private unnamed_addr constant [14 x i8] c"gpt2_post_div\00", align 1
@.str.339 = private unnamed_addr constant [14 x i8] c"gpt3_post_div\00", align 1
@.str.340 = private unnamed_addr constant [14 x i8] c"gpt4_post_div\00", align 1
@.str.341 = private unnamed_addr constant [15 x i8] c"trace_post_div\00", align 1
@.str.342 = private unnamed_addr constant [14 x i8] c"wdog_post_div\00", align 1
@.str.343 = private unnamed_addr constant [18 x i8] c"csi_mclk_post_div\00", align 1
@.str.344 = private unnamed_addr constant [20 x i8] c"audio_mclk_post_div\00", align 1
@.str.345 = private unnamed_addr constant [15 x i8] c"wrclk_post_div\00", align 1
@.str.346 = private unnamed_addr constant [15 x i8] c"clko1_post_div\00", align 1
@.str.347 = private unnamed_addr constant [15 x i8] c"clko2_post_div\00", align 1
@.str.348 = private unnamed_addr constant [16 x i8] c"arm_a7_root_clk\00", align 1
@.str.349 = private unnamed_addr constant [16 x i8] c"arm_m4_root_clk\00", align 1
@.str.350 = private unnamed_addr constant [18 x i8] c"main_axi_root_clk\00", align 1
@.str.351 = private unnamed_addr constant [18 x i8] c"disp_axi_root_clk\00", align 1
@.str.352 = private unnamed_addr constant [18 x i8] c"enet_axi_root_clk\00", align 1
@.str.353 = private unnamed_addr constant [10 x i8] c"ocram_clk\00", align 1
@.str.354 = private unnamed_addr constant [12 x i8] c"ocram_s_clk\00", align 1
@.str.355 = private unnamed_addr constant [14 x i8] c"dram_root_clk\00", align 1
@.str.356 = private unnamed_addr constant [19 x i8] c"dram_phym_root_clk\00", align 1
@.str.357 = private unnamed_addr constant [23 x i8] c"dram_phym_alt_root_clk\00", align 1
@.str.358 = private unnamed_addr constant [18 x i8] c"dram_alt_root_clk\00", align 1
@.str.359 = private unnamed_addr constant [10 x i8] c"ocotp_clk\00", align 1
@.str.360 = private unnamed_addr constant [9 x i8] c"snvs_clk\00", align 1
@.str.361 = private unnamed_addr constant [12 x i8] c"mu_root_clk\00", align 1
@.str.362 = private unnamed_addr constant [9 x i8] c"caam_clk\00", align 1
@.str.363 = private unnamed_addr constant [18 x i8] c"usb_hsic_root_clk\00", align 1
@.str.364 = private unnamed_addr constant [14 x i8] c"sdma_root_clk\00", align 1
@.str.365 = private unnamed_addr constant [19 x i8] c"pcie_ctrl_root_clk\00", align 1
@.str.366 = private unnamed_addr constant [18 x i8] c"pcie_phy_root_clk\00", align 1
@.str.367 = private unnamed_addr constant [20 x i8] c"epdc_pixel_root_clk\00", align 1
@.str.368 = private unnamed_addr constant [21 x i8] c"lcdif_pixel_root_clk\00", align 1
@.str.369 = private unnamed_addr constant [8 x i8] c"pxp_clk\00", align 1
@.str.370 = private unnamed_addr constant [18 x i8] c"mipi_dsi_root_clk\00", align 1
@.str.371 = private unnamed_addr constant [18 x i8] c"mipi_csi_root_clk\00", align 1
@.str.372 = private unnamed_addr constant [19 x i8] c"mipi_dphy_root_clk\00", align 1
@.str.373 = private unnamed_addr constant [19 x i8] c"enet1_ipg_root_clk\00", align 1
@share_count_enet1 = internal global i32 0, align 4
@.str.374 = private unnamed_addr constant [20 x i8] c"enet1_time_root_clk\00", align 1
@.str.375 = private unnamed_addr constant [19 x i8] c"enet2_ipg_root_clk\00", align 1
@share_count_enet2 = internal global i32 0, align 4
@.str.376 = private unnamed_addr constant [20 x i8] c"enet2_time_root_clk\00", align 1
@.str.377 = private unnamed_addr constant [14 x i8] c"sai1_root_clk\00", align 1
@share_count_sai1 = internal global i32 0, align 4
@.str.378 = private unnamed_addr constant [13 x i8] c"sai1_ipg_clk\00", align 1
@.str.379 = private unnamed_addr constant [14 x i8] c"sai2_root_clk\00", align 1
@share_count_sai2 = internal global i32 0, align 4
@.str.380 = private unnamed_addr constant [13 x i8] c"sai2_ipg_clk\00", align 1
@.str.381 = private unnamed_addr constant [14 x i8] c"sai3_root_clk\00", align 1
@share_count_sai3 = internal global i32 0, align 4
@.str.382 = private unnamed_addr constant [13 x i8] c"sai3_ipg_clk\00", align 1
@.str.383 = private unnamed_addr constant [15 x i8] c"spdif_root_clk\00", align 1
@.str.384 = private unnamed_addr constant [13 x i8] c"eim_root_clk\00", align 1
@.str.385 = private unnamed_addr constant [17 x i8] c"nand_rawnand_clk\00", align 1
@share_count_nand = internal global i32 0, align 4
@.str.386 = private unnamed_addr constant [23 x i8] c"nand_usdhc_rawnand_clk\00", align 1
@.str.387 = private unnamed_addr constant [14 x i8] c"qspi_root_clk\00", align 1
@.str.388 = private unnamed_addr constant [16 x i8] c"usdhc1_root_clk\00", align 1
@.str.389 = private unnamed_addr constant [16 x i8] c"usdhc2_root_clk\00", align 1
@.str.390 = private unnamed_addr constant [16 x i8] c"usdhc3_root_clk\00", align 1
@.str.391 = private unnamed_addr constant [14 x i8] c"can1_root_clk\00", align 1
@.str.392 = private unnamed_addr constant [14 x i8] c"can2_root_clk\00", align 1
@.str.393 = private unnamed_addr constant [14 x i8] c"i2c1_root_clk\00", align 1
@.str.394 = private unnamed_addr constant [14 x i8] c"i2c2_root_clk\00", align 1
@.str.395 = private unnamed_addr constant [14 x i8] c"i2c3_root_clk\00", align 1
@.str.396 = private unnamed_addr constant [14 x i8] c"i2c4_root_clk\00", align 1
@.str.397 = private unnamed_addr constant [15 x i8] c"uart1_root_clk\00", align 1
@.str.398 = private unnamed_addr constant [15 x i8] c"uart2_root_clk\00", align 1
@.str.399 = private unnamed_addr constant [15 x i8] c"uart3_root_clk\00", align 1
@.str.400 = private unnamed_addr constant [15 x i8] c"uart4_root_clk\00", align 1
@.str.401 = private unnamed_addr constant [15 x i8] c"uart5_root_clk\00", align 1
@.str.402 = private unnamed_addr constant [15 x i8] c"uart6_root_clk\00", align 1
@.str.403 = private unnamed_addr constant [15 x i8] c"uart7_root_clk\00", align 1
@.str.404 = private unnamed_addr constant [16 x i8] c"ecspi1_root_clk\00", align 1
@.str.405 = private unnamed_addr constant [16 x i8] c"ecspi2_root_clk\00", align 1
@.str.406 = private unnamed_addr constant [16 x i8] c"ecspi3_root_clk\00", align 1
@.str.407 = private unnamed_addr constant [16 x i8] c"ecspi4_root_clk\00", align 1
@.str.408 = private unnamed_addr constant [14 x i8] c"pwm1_root_clk\00", align 1
@.str.409 = private unnamed_addr constant [14 x i8] c"pwm2_root_clk\00", align 1
@.str.410 = private unnamed_addr constant [14 x i8] c"pwm3_root_clk\00", align 1
@.str.411 = private unnamed_addr constant [14 x i8] c"pwm4_root_clk\00", align 1
@.str.412 = private unnamed_addr constant [20 x i8] c"flextimer1_root_clk\00", align 1
@.str.413 = private unnamed_addr constant [20 x i8] c"flextimer2_root_clk\00", align 1
@.str.414 = private unnamed_addr constant [14 x i8] c"sim1_root_clk\00", align 1
@.str.415 = private unnamed_addr constant [14 x i8] c"sim2_root_clk\00", align 1
@.str.416 = private unnamed_addr constant [14 x i8] c"gpt1_root_clk\00", align 1
@.str.417 = private unnamed_addr constant [14 x i8] c"gpt2_root_clk\00", align 1
@.str.418 = private unnamed_addr constant [14 x i8] c"gpt3_root_clk\00", align 1
@.str.419 = private unnamed_addr constant [14 x i8] c"gpt4_root_clk\00", align 1
@.str.420 = private unnamed_addr constant [15 x i8] c"trace_root_clk\00", align 1
@.str.421 = private unnamed_addr constant [15 x i8] c"wdog1_root_clk\00", align 1
@.str.422 = private unnamed_addr constant [15 x i8] c"wdog2_root_clk\00", align 1
@.str.423 = private unnamed_addr constant [15 x i8] c"wdog3_root_clk\00", align 1
@.str.424 = private unnamed_addr constant [15 x i8] c"wdog4_root_clk\00", align 1
@.str.425 = private unnamed_addr constant [13 x i8] c"kpp_root_clk\00", align 1
@.str.426 = private unnamed_addr constant [18 x i8] c"csi_mclk_root_clk\00", align 1
@.str.427 = private unnamed_addr constant [20 x i8] c"audio_mclk_root_clk\00", align 1
@.str.428 = private unnamed_addr constant [15 x i8] c"wrclk_root_clk\00", align 1
@.str.429 = private unnamed_addr constant [13 x i8] c"usb_ctrl_clk\00", align 1
@.str.430 = private unnamed_addr constant [13 x i8] c"usb_phy1_clk\00", align 1
@.str.431 = private unnamed_addr constant [18 x i8] c"pll_usb1_main_clk\00", align 1
@.str.432 = private unnamed_addr constant [13 x i8] c"usb_phy2_clk\00", align 1
@.str.433 = private unnamed_addr constant [17 x i8] c"pll_usb_main_clk\00", align 1
@.str.434 = private unnamed_addr constant [13 x i8] c"adc_root_clk\00", align 1
@.str.435 = private unnamed_addr constant [7 x i8] c"gpt_3m\00", align 1
@.str.436 = private unnamed_addr constant [4 x i8] c"arm\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.437 = private unnamed_addr constant [18 x i8] c"dram_phym_alt_clk\00", align 1
@.str.438 = private unnamed_addr constant [10 x i8] c"ext_clk_1\00", align 1
@.str.439 = private unnamed_addr constant [10 x i8] c"ext_clk_2\00", align 1
@.str.440 = private unnamed_addr constant [10 x i8] c"ext_clk_3\00", align 1
@.str.441 = private unnamed_addr constant [10 x i8] c"ext_clk_4\00", align 1
@.str.442 = private unnamed_addr constant [11 x i8] c"ref_1m_clk\00", align 1
@.str.443 = private unnamed_addr constant [10 x i8] c"ext_3_clk\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__of_table_imx7d], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @imx7d_clocks_init(ptr noundef %0) #0 section ".init.text" {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 1788) #3
  store ptr %3, ptr @clk_hw_data, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %6, !prof !8

5:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 387, i32 noundef 9, ptr noundef null) #4
  br label %1571

6:                                                ; preds = %1
  store i32 446, ptr %3, align 8
  %7 = getelementptr inbounds %struct.clk_hw_onecell_data, ptr %3, i32 0, i32 1
  store ptr %7, ptr @hws, align 4
  %8 = tail call ptr @__clk_hw_register_fixed_rate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.1, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #4
  %9 = load ptr, ptr @hws, align 4
  %10 = getelementptr ptr, ptr %9, i32 413
  store ptr %8, ptr %10, align 4
  %11 = tail call ptr @imx_obtain_fixed_clk_hw(ptr noundef %0, ptr noundef nonnull @.str.2) #4
  %12 = load ptr, ptr @hws, align 4
  store ptr %11, ptr %12, align 4
  %13 = tail call ptr @imx_obtain_fixed_clk_hw(ptr noundef %0, ptr noundef nonnull @.str.3) #4
  %14 = load ptr, ptr @hws, align 4
  %15 = getelementptr ptr, ptr %14, i32 438
  store ptr %13, ptr %15, align 4
  %16 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.4) #4
  %17 = tail call ptr @of_iomap(ptr noundef %16, i32 noundef 0) #4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %20, !prof !8

19:                                               ; preds = %6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 399, i32 noundef 9, ptr noundef null) #4
  br label %20

20:                                               ; preds = %19, %6
  tail call void @of_node_put(ptr noundef %16) #4
  %21 = getelementptr i8, ptr %17, i32 96
  %22 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.5, i8 noundef zeroext 2, ptr noundef nonnull @pll_bypass_src_sel, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %21, i8 noundef zeroext 14, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %23 = load ptr, ptr @hws, align 4
  %24 = getelementptr ptr, ptr %23, i32 3
  store ptr %22, ptr %24, align 4
  %25 = getelementptr i8, ptr %17, i32 112
  %26 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.6, i8 noundef zeroext 2, ptr noundef nonnull @pll_bypass_src_sel, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %25, i8 noundef zeroext 14, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %27 = load ptr, ptr @hws, align 4
  %28 = getelementptr ptr, ptr %27, i32 49
  store ptr %26, ptr %28, align 4
  %29 = getelementptr i8, ptr %17, i32 176
  %30 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.7, i8 noundef zeroext 2, ptr noundef nonnull @pll_bypass_src_sel, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %29, i8 noundef zeroext 14, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %31 = load ptr, ptr @hws, align 4
  %32 = getelementptr ptr, ptr %31, i32 7
  store ptr %30, ptr %32, align 4
  %33 = getelementptr i8, ptr %17, i32 224
  %34 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.8, i8 noundef zeroext 2, ptr noundef nonnull @pll_bypass_src_sel, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %33, i8 noundef zeroext 14, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %35 = load ptr, ptr @hws, align 4
  %36 = getelementptr ptr, ptr %35, i32 31
  store ptr %34, ptr %36, align 4
  %37 = getelementptr i8, ptr %17, i32 240
  %38 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.9, i8 noundef zeroext 2, ptr noundef nonnull @pll_bypass_src_sel, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %37, i8 noundef zeroext 14, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %39 = load ptr, ptr @hws, align 4
  %40 = getelementptr ptr, ptr %39, i32 55
  store ptr %38, ptr %40, align 4
  %41 = getelementptr i8, ptr %17, i32 304
  %42 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.10, i8 noundef zeroext 2, ptr noundef nonnull @pll_bypass_src_sel, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %41, i8 noundef zeroext 14, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %43 = load ptr, ptr @hws, align 4
  %44 = getelementptr ptr, ptr %43, i32 59
  store ptr %42, ptr %44, align 4
  %45 = tail call ptr @imx_clk_hw_pllv3(i32 noundef 1, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.2, ptr noundef %21, i32 noundef 127) #4
  %46 = load ptr, ptr @hws, align 4
  %47 = getelementptr ptr, ptr %46, i32 1
  store ptr %45, ptr %47, align 4
  %48 = tail call ptr @imx_clk_hw_pllv3(i32 noundef 8, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.2, ptr noundef %25, i32 noundef 127) #4
  %49 = load ptr, ptr @hws, align 4
  %50 = getelementptr ptr, ptr %49, i32 47
  store ptr %48, ptr %50, align 4
  %51 = tail call ptr @imx_clk_hw_pllv3(i32 noundef 0, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.2, ptr noundef %29, i32 noundef 1) #4
  %52 = load ptr, ptr @hws, align 4
  %53 = getelementptr ptr, ptr %52, i32 5
  store ptr %51, ptr %53, align 4
  %54 = tail call ptr @imx_clk_hw_pllv3(i32 noundef 6, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.2, ptr noundef %33, i32 noundef 0) #4
  %55 = load ptr, ptr @hws, align 4
  %56 = getelementptr ptr, ptr %55, i32 29
  store ptr %54, ptr %56, align 4
  %57 = tail call ptr @imx_clk_hw_pllv3(i32 noundef 9, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.2, ptr noundef %37, i32 noundef 127) #4
  %58 = load ptr, ptr @hws, align 4
  %59 = getelementptr ptr, ptr %58, i32 53
  store ptr %57, ptr %59, align 4
  %60 = tail call ptr @imx_clk_hw_pllv3(i32 noundef 9, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.2, ptr noundef %41, i32 noundef 127) #4
  %61 = load ptr, ptr @hws, align 4
  %62 = getelementptr ptr, ptr %61, i32 58
  store ptr %60, ptr %62, align 4
  %63 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.17, i8 noundef zeroext 2, ptr noundef nonnull @pll_arm_bypass_sel, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %21, i8 noundef zeroext 16, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %64 = load ptr, ptr @hws, align 4
  %65 = getelementptr ptr, ptr %64, i32 4
  store ptr %63, ptr %65, align 4
  %66 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.18, i8 noundef zeroext 2, ptr noundef nonnull @pll_dram_bypass_sel, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %25, i8 noundef zeroext 16, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %67 = load ptr, ptr @hws, align 4
  %68 = getelementptr ptr, ptr %67, i32 50
  store ptr %66, ptr %68, align 4
  %69 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.19, i8 noundef zeroext 2, ptr noundef nonnull @pll_sys_bypass_sel, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %29, i8 noundef zeroext 16, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %70 = load ptr, ptr @hws, align 4
  %71 = getelementptr ptr, ptr %70, i32 8
  store ptr %69, ptr %71, align 4
  %72 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.20, i8 noundef zeroext 2, ptr noundef nonnull @pll_enet_bypass_sel, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %33, i8 noundef zeroext 16, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %73 = load ptr, ptr @hws, align 4
  %74 = getelementptr ptr, ptr %73, i32 32
  store ptr %72, ptr %74, align 4
  %75 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.21, i8 noundef zeroext 2, ptr noundef nonnull @pll_audio_bypass_sel, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %37, i8 noundef zeroext 16, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %76 = load ptr, ptr @hws, align 4
  %77 = getelementptr ptr, ptr %76, i32 56
  store ptr %75, ptr %77, align 4
  %78 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.22, i8 noundef zeroext 2, ptr noundef nonnull @pll_video_bypass_sel, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %41, i8 noundef zeroext 16, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %79 = load ptr, ptr @hws, align 4
  %80 = getelementptr ptr, ptr %79, i32 60
  store ptr %78, ptr %80, align 4
  %81 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.17, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %21, i8 noundef zeroext 13, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %82 = load ptr, ptr @hws, align 4
  %83 = getelementptr ptr, ptr %82, i32 2
  store ptr %81, ptr %83, align 4
  %84 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %25, i8 noundef zeroext 13, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %85 = load ptr, ptr @hws, align 4
  %86 = getelementptr ptr, ptr %85, i32 48
  store ptr %84, ptr %86, align 4
  %87 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.19, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %29, i8 noundef zeroext 13, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %88 = load ptr, ptr @hws, align 4
  %89 = getelementptr ptr, ptr %88, i32 6
  store ptr %87, ptr %89, align 4
  %90 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.21, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %37, i8 noundef zeroext 13, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %91 = load ptr, ptr @hws, align 4
  %92 = getelementptr ptr, ptr %91, i32 54
  store ptr %90, ptr %92, align 4
  %93 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.22, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %41, i8 noundef zeroext 13, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %94 = load ptr, ptr @hws, align 4
  %95 = getelementptr ptr, ptr %94, i32 57
  store ptr %93, ptr %95, align 4
  %96 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.18, ptr noundef null, ptr noundef null, i32 noundef 5, ptr noundef %25, i8 noundef zeroext 21, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef nonnull @test_div_table, ptr noundef nonnull @imx_ccm_lock) #4
  %97 = load ptr, ptr @hws, align 4
  %98 = getelementptr ptr, ptr %97, i32 435
  store ptr %96, ptr %98, align 4
  %99 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.27, ptr noundef null, ptr noundef null, i32 noundef 5, ptr noundef %37, i8 noundef zeroext 19, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef nonnull @test_div_table, ptr noundef nonnull @imx_ccm_lock) #4
  %100 = load ptr, ptr @hws, align 4
  %101 = getelementptr ptr, ptr %100, i32 429
  store ptr %99, ptr %101, align 4
  %102 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.29, ptr noundef null, ptr noundef null, i32 noundef 5, ptr noundef %37, i8 noundef zeroext 22, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef nonnull @post_div_table, ptr noundef nonnull @imx_ccm_lock) #4
  %103 = load ptr, ptr @hws, align 4
  %104 = getelementptr ptr, ptr %103, i32 430
  store ptr %102, ptr %104, align 4
  %105 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.28, ptr noundef null, ptr noundef null, i32 noundef 5, ptr noundef %41, i8 noundef zeroext 19, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef nonnull @test_div_table, ptr noundef nonnull @imx_ccm_lock) #4
  %106 = load ptr, ptr @hws, align 4
  %107 = getelementptr ptr, ptr %106, i32 431
  store ptr %105, ptr %107, align 4
  %108 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.31, ptr noundef null, ptr noundef null, i32 noundef 5, ptr noundef %41, i8 noundef zeroext 22, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef nonnull @post_div_table, ptr noundef nonnull @imx_ccm_lock) #4
  %109 = load ptr, ptr @hws, align 4
  %110 = getelementptr ptr, ptr %109, i32 432
  store ptr %108, ptr %110, align 4
  %111 = getelementptr i8, ptr %17, i32 192
  %112 = tail call ptr @imx_clk_hw_pfd(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.26, ptr noundef %111, i8 noundef zeroext 0) #4
  %113 = load ptr, ptr @hws, align 4
  %114 = getelementptr ptr, ptr %113, i32 15
  store ptr %112, ptr %114, align 4
  %115 = tail call ptr @imx_clk_hw_pfd(ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.26, ptr noundef %111, i8 noundef zeroext 1) #4
  %116 = load ptr, ptr @hws, align 4
  %117 = getelementptr ptr, ptr %116, i32 18
  store ptr %115, ptr %117, align 4
  %118 = tail call ptr @imx_clk_hw_pfd(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.26, ptr noundef %111, i8 noundef zeroext 2) #4
  %119 = load ptr, ptr @hws, align 4
  %120 = getelementptr ptr, ptr %119, i32 21
  store ptr %118, ptr %120, align 4
  %121 = tail call ptr @imx_clk_hw_pfd(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.26, ptr noundef %111, i8 noundef zeroext 3) #4
  %122 = load ptr, ptr @hws, align 4
  %123 = getelementptr ptr, ptr %122, i32 24
  store ptr %121, ptr %123, align 4
  %124 = getelementptr i8, ptr %17, i32 208
  %125 = tail call ptr @imx_clk_hw_pfd(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.26, ptr noundef %124, i8 noundef zeroext 0) #4
  %126 = load ptr, ptr @hws, align 4
  %127 = getelementptr ptr, ptr %126, i32 25
  store ptr %125, ptr %127, align 4
  %128 = tail call ptr @imx_clk_hw_pfd(ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.26, ptr noundef %124, i8 noundef zeroext 1) #4
  %129 = load ptr, ptr @hws, align 4
  %130 = getelementptr ptr, ptr %129, i32 26
  store ptr %128, ptr %130, align 4
  %131 = tail call ptr @imx_clk_hw_pfd(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.26, ptr noundef %124, i8 noundef zeroext 2) #4
  %132 = load ptr, ptr @hws, align 4
  %133 = getelementptr ptr, ptr %132, i32 27
  store ptr %131, ptr %133, align 4
  %134 = tail call ptr @imx_clk_hw_pfd(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.26, ptr noundef %124, i8 noundef zeroext 3) #4
  %135 = load ptr, ptr @hws, align 4
  %136 = getelementptr ptr, ptr %135, i32 28
  store ptr %134, ptr %136, align 4
  %137 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.26, i32 noundef 4, i32 noundef 1, i32 noundef 1) #4
  %138 = load ptr, ptr @hws, align 4
  %139 = getelementptr ptr, ptr %138, i32 9
  store ptr %137, ptr %139, align 4
  %140 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.26, i32 noundef 4, i32 noundef 1, i32 noundef 2) #4
  %141 = load ptr, ptr @hws, align 4
  %142 = getelementptr ptr, ptr %141, i32 10
  store ptr %140, ptr %142, align 4
  %143 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.26, i32 noundef 4, i32 noundef 1, i32 noundef 4) #4
  %144 = load ptr, ptr @hws, align 4
  %145 = getelementptr ptr, ptr %144, i32 11
  store ptr %143, ptr %145, align 4
  %146 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.24, i32 noundef 4, i32 noundef 1, i32 noundef 2) #4
  %147 = load ptr, ptr @hws, align 4
  %148 = getelementptr ptr, ptr %147, i32 51
  store ptr %146, ptr %148, align 4
  %149 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.41, ptr noundef null, ptr noundef null, i32 noundef 2052, ptr noundef %29, i8 noundef zeroext 4, i8 noundef zeroext 1, ptr noundef nonnull @imx_ccm_lock) #4
  %150 = load ptr, ptr @hws, align 4
  %151 = getelementptr ptr, ptr %150, i32 12
  store ptr %149, ptr %151, align 4
  %152 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.42, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %29, i8 noundef zeroext 5, i8 noundef zeroext 1, ptr noundef nonnull @imx_ccm_lock) #4
  %153 = load ptr, ptr @hws, align 4
  %154 = getelementptr ptr, ptr %153, i32 13
  store ptr %152, ptr %154, align 4
  %155 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.43, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %29, i8 noundef zeroext 6, i8 noundef zeroext 1, ptr noundef nonnull @imx_ccm_lock) #4
  %156 = load ptr, ptr @hws, align 4
  %157 = getelementptr ptr, ptr %156, i32 14
  store ptr %155, ptr %157, align 4
  %158 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.44, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %25, i8 noundef zeroext 12, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %159 = load ptr, ptr @hws, align 4
  %160 = getelementptr ptr, ptr %159, i32 52
  store ptr %158, ptr %160, align 4
  %161 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.33, i32 noundef 4, i32 noundef 1, i32 noundef 2) #4
  %162 = load ptr, ptr @hws, align 4
  %163 = getelementptr ptr, ptr %162, i32 16
  store ptr %161, ptr %163, align 4
  %164 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.34, i32 noundef 4, i32 noundef 1, i32 noundef 2) #4
  %165 = load ptr, ptr @hws, align 4
  %166 = getelementptr ptr, ptr %165, i32 19
  store ptr %164, ptr %166, align 4
  %167 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.35, i32 noundef 4, i32 noundef 1, i32 noundef 2) #4
  %168 = load ptr, ptr @hws, align 4
  %169 = getelementptr ptr, ptr %168, i32 22
  store ptr %167, ptr %169, align 4
  %170 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.49, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %29, i8 noundef zeroext 26, i8 noundef zeroext 1, ptr noundef nonnull @imx_ccm_lock) #4
  %171 = load ptr, ptr @hws, align 4
  %172 = getelementptr ptr, ptr %171, i32 17
  store ptr %170, ptr %172, align 4
  %173 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.50, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %29, i8 noundef zeroext 27, i8 noundef zeroext 1, ptr noundef nonnull @imx_ccm_lock) #4
  %174 = load ptr, ptr @hws, align 4
  %175 = getelementptr ptr, ptr %174, i32 20
  store ptr %173, ptr %175, align 4
  %176 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.51, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %29, i8 noundef zeroext 28, i8 noundef zeroext 1, ptr noundef nonnull @imx_ccm_lock) #4
  %177 = load ptr, ptr @hws, align 4
  %178 = getelementptr ptr, ptr %177, i32 23
  store ptr %176, ptr %178, align 4
  %179 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.20, i32 noundef 4, i32 noundef 1, i32 noundef 1) #4
  %180 = load ptr, ptr @hws, align 4
  %181 = getelementptr ptr, ptr %180, i32 30
  store ptr %179, ptr %181, align 4
  %182 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.55, i32 noundef 4, i32 noundef 1, i32 noundef 2) #4
  %183 = load ptr, ptr @hws, align 4
  %184 = getelementptr ptr, ptr %183, i32 33
  store ptr %182, ptr %184, align 4
  %185 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.55, i32 noundef 4, i32 noundef 1, i32 noundef 4) #4
  %186 = load ptr, ptr @hws, align 4
  %187 = getelementptr ptr, ptr %186, i32 34
  store ptr %185, ptr %187, align 4
  %188 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.55, i32 noundef 4, i32 noundef 1, i32 noundef 8) #4
  %189 = load ptr, ptr @hws, align 4
  %190 = getelementptr ptr, ptr %189, i32 35
  store ptr %188, ptr %190, align 4
  %191 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.55, i32 noundef 4, i32 noundef 1, i32 noundef 10) #4
  %192 = load ptr, ptr @hws, align 4
  %193 = getelementptr ptr, ptr %192, i32 36
  store ptr %191, ptr %193, align 4
  %194 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.55, i32 noundef 4, i32 noundef 1, i32 noundef 20) #4
  %195 = load ptr, ptr @hws, align 4
  %196 = getelementptr ptr, ptr %195, i32 37
  store ptr %194, ptr %196, align 4
  %197 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.55, i32 noundef 4, i32 noundef 1, i32 noundef 25) #4
  %198 = load ptr, ptr @hws, align 4
  %199 = getelementptr ptr, ptr %198, i32 38
  store ptr %197, ptr %199, align 4
  %200 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.55, i32 noundef 4, i32 noundef 1, i32 noundef 40) #4
  %201 = load ptr, ptr @hws, align 4
  %202 = getelementptr ptr, ptr %201, i32 39
  store ptr %200, ptr %202, align 4
  %203 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.56, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %33, i8 noundef zeroext 12, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %204 = load ptr, ptr @hws, align 4
  %205 = getelementptr ptr, ptr %204, i32 40
  store ptr %203, ptr %205, align 4
  %206 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.57, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %33, i8 noundef zeroext 11, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %207 = load ptr, ptr @hws, align 4
  %208 = getelementptr ptr, ptr %207, i32 41
  store ptr %206, ptr %208, align 4
  %209 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.58, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %33, i8 noundef zeroext 10, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %210 = load ptr, ptr @hws, align 4
  %211 = getelementptr ptr, ptr %210, i32 42
  store ptr %209, ptr %211, align 4
  %212 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.59, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %33, i8 noundef zeroext 9, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %213 = load ptr, ptr @hws, align 4
  %214 = getelementptr ptr, ptr %213, i32 43
  store ptr %212, ptr %214, align 4
  %215 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.60, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %33, i8 noundef zeroext 8, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %216 = load ptr, ptr @hws, align 4
  %217 = getelementptr ptr, ptr %216, i32 44
  store ptr %215, ptr %217, align 4
  %218 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.61, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %33, i8 noundef zeroext 7, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %219 = load ptr, ptr @hws, align 4
  %220 = getelementptr ptr, ptr %219, i32 45
  store ptr %218, ptr %220, align 4
  %221 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.62, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %33, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %222 = load ptr, ptr @hws, align 4
  %223 = getelementptr ptr, ptr %222, i32 46
  store ptr %221, ptr %223, align 4
  %224 = getelementptr i8, ptr %17, i32 368
  %225 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.70, i8 noundef zeroext 20, ptr noundef nonnull @lvds1_sel, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %224, i8 noundef zeroext 0, i32 noundef 31, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %226 = load ptr, ptr @hws, align 4
  %227 = getelementptr ptr, ptr %226, i32 411
  store ptr %225, ptr %227, align 4
  %228 = tail call ptr @imx_clk_hw_gate_exclusive(ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.70, ptr noundef %224, i8 noundef zeroext 5, i32 noundef 64) #4
  %229 = load ptr, ptr @hws, align 4
  %230 = getelementptr ptr, ptr %229, i32 412
  store ptr %228, ptr %230, align 4
  %231 = tail call ptr @of_iomap(ptr noundef %0, i32 noundef 0) #4
  %232 = icmp eq ptr %231, null
  br i1 %232, label %233, label %234, !prof !8

233:                                              ; preds = %20
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 490, i32 noundef 9, ptr noundef null) #4
  br label %234

234:                                              ; preds = %233, %20
  %235 = getelementptr i8, ptr %231, i32 32768
  %236 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.72, i8 noundef zeroext 8, ptr noundef nonnull @arm_a7_sel, ptr noundef null, ptr noundef null, i32 noundef 4224, ptr noundef %235, i8 noundef zeroext 24, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %237 = load ptr, ptr @hws, align 4
  %238 = getelementptr ptr, ptr %237, i32 63
  store ptr %236, ptr %238, align 4
  %239 = getelementptr i8, ptr %231, i32 32896
  %240 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.73, i8 noundef zeroext 8, ptr noundef nonnull @arm_m4_sel, ptr noundef null, ptr noundef null, i32 noundef 4224, ptr noundef %239, i8 noundef zeroext 24, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %241 = load ptr, ptr @hws, align 4
  %242 = getelementptr ptr, ptr %241, i32 67
  store ptr %240, ptr %242, align 4
  %243 = getelementptr i8, ptr %231, i32 34816
  %244 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.74, i8 noundef zeroext 8, ptr noundef nonnull @axi_sel, ptr noundef null, ptr noundef null, i32 noundef 4224, ptr noundef %243, i8 noundef zeroext 24, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %245 = load ptr, ptr @hws, align 4
  %246 = getelementptr ptr, ptr %245, i32 75
  store ptr %244, ptr %246, align 4
  %247 = getelementptr i8, ptr %231, i32 34944
  %248 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.75, i8 noundef zeroext 8, ptr noundef nonnull @disp_axi_sel, ptr noundef null, ptr noundef null, i32 noundef 4224, ptr noundef %247, i8 noundef zeroext 24, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %249 = load ptr, ptr @hws, align 4
  %250 = getelementptr ptr, ptr %249, i32 79
  store ptr %248, ptr %250, align 4
  %251 = getelementptr i8, ptr %231, i32 36864
  %252 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.76, i8 noundef zeroext 8, ptr noundef nonnull @ahb_channel_sel, ptr noundef null, ptr noundef null, i32 noundef 4224, ptr noundef %251, i8 noundef zeroext 24, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %253 = load ptr, ptr @hws, align 4
  %254 = getelementptr ptr, ptr %253, i32 91
  store ptr %252, ptr %254, align 4
  %255 = getelementptr i8, ptr %231, i32 35072
  %256 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.77, i8 noundef zeroext 8, ptr noundef nonnull @enet_axi_sel, ptr noundef null, ptr noundef null, i32 noundef 4226, ptr noundef %255, i8 noundef zeroext 24, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %257 = load ptr, ptr @hws, align 4
  %258 = getelementptr ptr, ptr %257, i32 83
  store ptr %256, ptr %258, align 4
  %259 = getelementptr i8, ptr %231, i32 35200
  %260 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.78, i8 noundef zeroext 8, ptr noundef nonnull @nand_usdhc_bus_sel, ptr noundef null, ptr noundef null, i32 noundef 4226, ptr noundef %259, i8 noundef zeroext 24, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %261 = load ptr, ptr @hws, align 4
  %262 = getelementptr ptr, ptr %261, i32 87
  store ptr %260, ptr %262, align 4
  %263 = getelementptr i8, ptr %231, i32 38912
  %264 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.79, i8 noundef zeroext 2, ptr noundef nonnull @dram_phym_sel, ptr noundef null, ptr noundef null, i32 noundef 4226, ptr noundef %263, i8 noundef zeroext 24, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %265 = load ptr, ptr @hws, align 4
  %266 = getelementptr ptr, ptr %265, i32 95
  store ptr %264, ptr %266, align 4
  %267 = getelementptr i8, ptr %231, i32 39040
  %268 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.80, i8 noundef zeroext 2, ptr noundef nonnull @dram_sel, ptr noundef null, ptr noundef null, i32 noundef 4226, ptr noundef %267, i8 noundef zeroext 24, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %269 = load ptr, ptr @hws, align 4
  %270 = getelementptr ptr, ptr %269, i32 99
  store ptr %268, ptr %270, align 4
  %271 = getelementptr i8, ptr %231, i32 40960
  %272 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.81, i8 noundef zeroext 8, ptr noundef nonnull @dram_phym_alt_sel, ptr noundef null, ptr noundef null, i32 noundef 4226, ptr noundef %271, i8 noundef zeroext 24, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %273 = load ptr, ptr @hws, align 4
  %274 = getelementptr ptr, ptr %273, i32 103
  store ptr %272, ptr %274, align 4
  %275 = getelementptr i8, ptr %231, i32 41088
  %276 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.82, i8 noundef zeroext 8, ptr noundef nonnull @dram_alt_sel, ptr noundef null, ptr noundef null, i32 noundef 4226, ptr noundef %275, i8 noundef zeroext 24, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %277 = load ptr, ptr @hws, align 4
  %278 = getelementptr ptr, ptr %277, i32 107
  store ptr %276, ptr %278, align 4
  %279 = getelementptr i8, ptr %231, i32 41216
  %280 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.83, i8 noundef zeroext 8, ptr noundef nonnull @usb_hsic_sel, ptr noundef null, ptr noundef null, i32 noundef 4226, ptr noundef %279, i8 noundef zeroext 24, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %281 = load ptr, ptr @hws, align 4
  %282 = getelementptr ptr, ptr %281, i32 111
  store ptr %280, ptr %282, align 4
  %283 = getelementptr i8, ptr %231, i32 41344
  %284 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.84, i8 noundef zeroext 8, ptr noundef nonnull @pcie_ctrl_sel, ptr noundef null, ptr noundef null, i32 noundef 4226, ptr noundef %283, i8 noundef zeroext 24, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %285 = load ptr, ptr @hws, align 4
  %286 = getelementptr ptr, ptr %285, i32 115
  store ptr %284, ptr %286, align 4
  %287 = getelementptr i8, ptr %231, i32 41472
  %288 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.85, i8 noundef zeroext 8, ptr noundef nonnull @pcie_phy_sel, ptr noundef null, ptr noundef null, i32 noundef 4226, ptr noundef %287, i8 noundef zeroext 24, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %289 = load ptr, ptr @hws, align 4
  %290 = getelementptr ptr, ptr %289, i32 119
  store ptr %288, ptr %290, align 4
  %291 = getelementptr i8, ptr %231, i32 41600
  %292 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.86, i8 noundef zeroext 8, ptr noundef nonnull @epdc_pixel_sel, ptr noundef null, ptr noundef null, i32 noundef 4226, ptr noundef %291, i8 noundef zeroext 24, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %293 = load ptr, ptr @hws, align 4
  %294 = getelementptr ptr, ptr %293, i32 123
  store ptr %292, ptr %294, align 4
  %295 = getelementptr i8, ptr %231, i32 41728
  %296 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.87, i8 noundef zeroext 8, ptr noundef nonnull @lcdif_pixel_sel, ptr noundef null, ptr noundef null, i32 noundef 4226, ptr noundef %295, i8 noundef zeroext 24, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %297 = load ptr, ptr @hws, align 4
  %298 = getelementptr ptr, ptr %297, i32 127
  store ptr %296, ptr %298, align 4
  %299 = getelementptr i8, ptr %231, i32 41856
  %300 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.88, i8 noundef zeroext 8, ptr noundef nonnull @mipi_dsi_sel, ptr noundef null, ptr noundef null, i32 noundef 4226, ptr noundef %299, i8 noundef zeroext 24, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %301 = load ptr, ptr @hws, align 4
  %302 = getelementptr ptr, ptr %301, i32 131
  store ptr %300, ptr %302, align 4
  %303 = getelementptr i8, ptr %231, i32 41984
  %304 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.89, i8 noundef zeroext 8, ptr noundef nonnull @mipi_csi_sel, ptr noundef null, ptr noundef null, i32 noundef 4226, ptr noundef %303, i8 noundef zeroext 24, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %305 = load ptr, ptr @hws, align 4
  %306 = getelementptr ptr, ptr %305, i32 135
  store ptr %304, ptr %306, align 4
  %307 = getelementptr i8, ptr %231, i32 42112
  %308 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.90, i8 noundef zeroext 8, ptr noundef nonnull @mipi_dphy_sel, ptr noundef null, ptr noundef null, i32 noundef 4226, ptr noundef %307, i8 noundef zeroext 24, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %309 = load ptr, ptr @hws, align 4
  %310 = getelementptr ptr, ptr %309, i32 139
  store ptr %308, ptr %310, align 4
  %311 = getelementptr i8, ptr %231, i32 42240
  %312 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.91, i8 noundef zeroext 8, ptr noundef nonnull @sai1_sel, ptr noundef null, ptr noundef null, i32 noundef 4226, ptr noundef %311, i8 noundef zeroext 24, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %313 = load ptr, ptr @hws, align 4
  %314 = getelementptr ptr, ptr %313, i32 143
  store ptr %312, ptr %314, align 4
  %315 = getelementptr i8, ptr %231, i32 42368
  %316 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.92, i8 noundef zeroext 8, ptr noundef nonnull @sai2_sel, ptr noundef null, ptr noundef null, i32 noundef 4226, ptr noundef %315, i8 noundef zeroext 24, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %317 = load ptr, ptr @hws, align 4
  %318 = getelementptr ptr, ptr %317, i32 147
  store ptr %316, ptr %318, align 4
  %319 = getelementptr i8, ptr %231, i32 42496
  %320 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.93, i8 noundef zeroext 8, ptr noundef nonnull @sai3_sel, ptr noundef null, ptr noundef null, i32 noundef 4226, ptr noundef %319, i8 noundef zeroext 24, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %321 = load ptr, ptr @hws, align 4
  %322 = getelementptr ptr, ptr %321, i32 151
  store ptr %320, ptr %322, align 4
  %323 = getelementptr i8, ptr %231, i32 42624
  %324 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.94, i8 noundef zeroext 8, ptr noundef nonnull @spdif_sel, ptr noundef null, ptr noundef null, i32 noundef 4226, ptr noundef %323, i8 noundef zeroext 24, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %325 = load ptr, ptr @hws, align 4
  %326 = getelementptr ptr, ptr %325, i32 155
  store ptr %324, ptr %326, align 4
  %327 = getelementptr i8, ptr %231, i32 42752
  %328 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.95, i8 noundef zeroext 8, ptr noundef nonnull @enet1_ref_sel, ptr noundef null, ptr noundef null, i32 noundef 4226, ptr noundef %327, i8 noundef zeroext 24, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %329 = load ptr, ptr @hws, align 4
  %330 = getelementptr ptr, ptr %329, i32 159
  store ptr %328, ptr %330, align 4
  %331 = getelementptr i8, ptr %231, i32 42880
  %332 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.96, i8 noundef zeroext 8, ptr noundef nonnull @enet1_time_sel, ptr noundef null, ptr noundef null, i32 noundef 4226, ptr noundef %331, i8 noundef zeroext 24, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %333 = load ptr, ptr @hws, align 4
  %334 = getelementptr ptr, ptr %333, i32 163
  store ptr %332, ptr %334, align 4
  %335 = getelementptr i8, ptr %231, i32 43008
  %336 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.97, i8 noundef zeroext 8, ptr noundef nonnull @enet2_ref_sel, ptr noundef null, ptr noundef null, i32 noundef 4226, ptr noundef %335, i8 noundef zeroext 24, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %337 = load ptr, ptr @hws, align 4
  %338 = getelementptr ptr, ptr %337, i32 167
  store ptr %336, ptr %338, align 4
  %339 = getelementptr i8, ptr %231, i32 43136
  %340 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.98, i8 noundef zeroext 8, ptr noundef nonnull @enet2_time_sel, ptr noundef null, ptr noundef null, i32 noundef 4226, ptr noundef %339, i8 noundef zeroext 24, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %341 = load ptr, ptr @hws, align 4
  %342 = getelementptr ptr, ptr %341, i32 171
  store ptr %340, ptr %342, align 4
  %343 = getelementptr i8, ptr %231, i32 43264
  %344 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.99, i8 noundef zeroext 8, ptr noundef nonnull @enet_phy_ref_sel, ptr noundef null, ptr noundef null, i32 noundef 4226, ptr noundef %343, i8 noundef zeroext 24, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %345 = load ptr, ptr @hws, align 4
  %346 = getelementptr ptr, ptr %345, i32 175
  store ptr %344, ptr %346, align 4
  %347 = getelementptr i8, ptr %231, i32 43392
  %348 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.100, i8 noundef zeroext 8, ptr noundef nonnull @eim_sel, ptr noundef null, ptr noundef null, i32 noundef 4226, ptr noundef %347, i8 noundef zeroext 24, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %349 = load ptr, ptr @hws, align 4
  %350 = getelementptr ptr, ptr %349, i32 179
  store ptr %348, ptr %350, align 4
  %351 = getelementptr i8, ptr %231, i32 43520
  %352 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.101, i8 noundef zeroext 8, ptr noundef nonnull @nand_sel, ptr noundef null, ptr noundef null, i32 noundef 4226, ptr noundef %351, i8 noundef zeroext 24, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %353 = load ptr, ptr @hws, align 4
  %354 = getelementptr ptr, ptr %353, i32 183
  store ptr %352, ptr %354, align 4
  %355 = getelementptr i8, ptr %231, i32 43648
  %356 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.102, i8 noundef zeroext 8, ptr noundef nonnull @qspi_sel, ptr noundef null, ptr noundef null, i32 noundef 4226, ptr noundef %355, i8 noundef zeroext 24, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %357 = load ptr, ptr @hws, align 4
  %358 = getelementptr ptr, ptr %357, i32 187
  store ptr %356, ptr %358, align 4
  %359 = getelementptr i8, ptr %231, i32 43776
  %360 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.103, i8 noundef zeroext 8, ptr noundef nonnull @usdhc1_sel, ptr noundef null, ptr noundef null, i32 noundef 4226, ptr noundef %359, i8 noundef zeroext 24, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %361 = load ptr, ptr @hws, align 4
  %362 = getelementptr ptr, ptr %361, i32 191
  store ptr %360, ptr %362, align 4
  %363 = getelementptr i8, ptr %231, i32 43904
  %364 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.104, i8 noundef zeroext 8, ptr noundef nonnull @usdhc2_sel, ptr noundef null, ptr noundef null, i32 noundef 4226, ptr noundef %363, i8 noundef zeroext 24, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %365 = load ptr, ptr @hws, align 4
  %366 = getelementptr ptr, ptr %365, i32 195
  store ptr %364, ptr %366, align 4
  %367 = getelementptr i8, ptr %231, i32 44032
  %368 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.105, i8 noundef zeroext 8, ptr noundef nonnull @usdhc3_sel, ptr noundef null, ptr noundef null, i32 noundef 4226, ptr noundef %367, i8 noundef zeroext 24, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %369 = load ptr, ptr @hws, align 4
  %370 = getelementptr ptr, ptr %369, i32 199
  store ptr %368, ptr %370, align 4
  %371 = getelementptr i8, ptr %231, i32 44160
  %372 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.106, i8 noundef zeroext 8, ptr noundef nonnull @can1_sel, ptr noundef null, ptr noundef null, i32 noundef 4226, ptr noundef %371, i8 noundef zeroext 24, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %373 = load ptr, ptr @hws, align 4
  %374 = getelementptr ptr, ptr %373, i32 203
  store ptr %372, ptr %374, align 4
  %375 = getelementptr i8, ptr %231, i32 44288
  %376 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.107, i8 noundef zeroext 8, ptr noundef nonnull @can2_sel, ptr noundef null, ptr noundef null, i32 noundef 4226, ptr noundef %375, i8 noundef zeroext 24, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %377 = load ptr, ptr @hws, align 4
  %378 = getelementptr ptr, ptr %377, i32 207
  store ptr %376, ptr %378, align 4
  %379 = getelementptr i8, ptr %231, i32 44416
  %380 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.108, i8 noundef zeroext 8, ptr noundef nonnull @i2c1_sel, ptr noundef null, ptr noundef null, i32 noundef 4226, ptr noundef %379, i8 noundef zeroext 24, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %381 = load ptr, ptr @hws, align 4
  %382 = getelementptr ptr, ptr %381, i32 211
  store ptr %380, ptr %382, align 4
  %383 = getelementptr i8, ptr %231, i32 44544
  %384 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.109, i8 noundef zeroext 8, ptr noundef nonnull @i2c2_sel, ptr noundef null, ptr noundef null, i32 noundef 4226, ptr noundef %383, i8 noundef zeroext 24, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %385 = load ptr, ptr @hws, align 4
  %386 = getelementptr ptr, ptr %385, i32 215
  store ptr %384, ptr %386, align 4
  %387 = getelementptr i8, ptr %231, i32 44672
  %388 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.110, i8 noundef zeroext 8, ptr noundef nonnull @i2c3_sel, ptr noundef null, ptr noundef null, i32 noundef 4226, ptr noundef %387, i8 noundef zeroext 24, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %389 = load ptr, ptr @hws, align 4
  %390 = getelementptr ptr, ptr %389, i32 219
  store ptr %388, ptr %390, align 4
  %391 = getelementptr i8, ptr %231, i32 44800
  %392 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.111, i8 noundef zeroext 8, ptr noundef nonnull @i2c4_sel, ptr noundef null, ptr noundef null, i32 noundef 4226, ptr noundef %391, i8 noundef zeroext 24, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %393 = load ptr, ptr @hws, align 4
  %394 = getelementptr ptr, ptr %393, i32 223
  store ptr %392, ptr %394, align 4
  %395 = getelementptr i8, ptr %231, i32 44928
  %396 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.112, i8 noundef zeroext 8, ptr noundef nonnull @uart1_sel, ptr noundef null, ptr noundef null, i32 noundef 4226, ptr noundef %395, i8 noundef zeroext 24, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %397 = load ptr, ptr @hws, align 4
  %398 = getelementptr ptr, ptr %397, i32 227
  store ptr %396, ptr %398, align 4
  %399 = getelementptr i8, ptr %231, i32 45056
  %400 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.113, i8 noundef zeroext 8, ptr noundef nonnull @uart2_sel, ptr noundef null, ptr noundef null, i32 noundef 4226, ptr noundef %399, i8 noundef zeroext 24, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %401 = load ptr, ptr @hws, align 4
  %402 = getelementptr ptr, ptr %401, i32 231
  store ptr %400, ptr %402, align 4
  %403 = getelementptr i8, ptr %231, i32 45184
  %404 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.114, i8 noundef zeroext 8, ptr noundef nonnull @uart3_sel, ptr noundef null, ptr noundef null, i32 noundef 4226, ptr noundef %403, i8 noundef zeroext 24, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %405 = load ptr, ptr @hws, align 4
  %406 = getelementptr ptr, ptr %405, i32 235
  store ptr %404, ptr %406, align 4
  %407 = getelementptr i8, ptr %231, i32 45312
  %408 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.115, i8 noundef zeroext 8, ptr noundef nonnull @uart4_sel, ptr noundef null, ptr noundef null, i32 noundef 4226, ptr noundef %407, i8 noundef zeroext 24, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %409 = load ptr, ptr @hws, align 4
  %410 = getelementptr ptr, ptr %409, i32 239
  store ptr %408, ptr %410, align 4
  %411 = getelementptr i8, ptr %231, i32 45440
  %412 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.116, i8 noundef zeroext 8, ptr noundef nonnull @uart5_sel, ptr noundef null, ptr noundef null, i32 noundef 4226, ptr noundef %411, i8 noundef zeroext 24, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %413 = load ptr, ptr @hws, align 4
  %414 = getelementptr ptr, ptr %413, i32 243
  store ptr %412, ptr %414, align 4
  %415 = getelementptr i8, ptr %231, i32 45568
  %416 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.117, i8 noundef zeroext 8, ptr noundef nonnull @uart6_sel, ptr noundef null, ptr noundef null, i32 noundef 4226, ptr noundef %415, i8 noundef zeroext 24, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %417 = load ptr, ptr @hws, align 4
  %418 = getelementptr ptr, ptr %417, i32 247
  store ptr %416, ptr %418, align 4
  %419 = getelementptr i8, ptr %231, i32 45696
  %420 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.118, i8 noundef zeroext 8, ptr noundef nonnull @uart7_sel, ptr noundef null, ptr noundef null, i32 noundef 4226, ptr noundef %419, i8 noundef zeroext 24, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %421 = load ptr, ptr @hws, align 4
  %422 = getelementptr ptr, ptr %421, i32 251
  store ptr %420, ptr %422, align 4
  %423 = getelementptr i8, ptr %231, i32 45824
  %424 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.119, i8 noundef zeroext 8, ptr noundef nonnull @ecspi1_sel, ptr noundef null, ptr noundef null, i32 noundef 4226, ptr noundef %423, i8 noundef zeroext 24, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %425 = load ptr, ptr @hws, align 4
  %426 = getelementptr ptr, ptr %425, i32 255
  store ptr %424, ptr %426, align 4
  %427 = getelementptr i8, ptr %231, i32 45952
  %428 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.120, i8 noundef zeroext 8, ptr noundef nonnull @ecspi2_sel, ptr noundef null, ptr noundef null, i32 noundef 4226, ptr noundef %427, i8 noundef zeroext 24, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %429 = load ptr, ptr @hws, align 4
  %430 = getelementptr ptr, ptr %429, i32 259
  store ptr %428, ptr %430, align 4
  %431 = getelementptr i8, ptr %231, i32 46080
  %432 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.121, i8 noundef zeroext 8, ptr noundef nonnull @ecspi3_sel, ptr noundef null, ptr noundef null, i32 noundef 4226, ptr noundef %431, i8 noundef zeroext 24, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %433 = load ptr, ptr @hws, align 4
  %434 = getelementptr ptr, ptr %433, i32 263
  store ptr %432, ptr %434, align 4
  %435 = getelementptr i8, ptr %231, i32 46208
  %436 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.122, i8 noundef zeroext 8, ptr noundef nonnull @ecspi4_sel, ptr noundef null, ptr noundef null, i32 noundef 4226, ptr noundef %435, i8 noundef zeroext 24, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %437 = load ptr, ptr @hws, align 4
  %438 = getelementptr ptr, ptr %437, i32 267
  store ptr %436, ptr %438, align 4
  %439 = getelementptr i8, ptr %231, i32 46336
  %440 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.123, i8 noundef zeroext 8, ptr noundef nonnull @pwm1_sel, ptr noundef null, ptr noundef null, i32 noundef 4226, ptr noundef %439, i8 noundef zeroext 24, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %441 = load ptr, ptr @hws, align 4
  %442 = getelementptr ptr, ptr %441, i32 271
  store ptr %440, ptr %442, align 4
  %443 = getelementptr i8, ptr %231, i32 46464
  %444 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.124, i8 noundef zeroext 8, ptr noundef nonnull @pwm2_sel, ptr noundef null, ptr noundef null, i32 noundef 4226, ptr noundef %443, i8 noundef zeroext 24, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %445 = load ptr, ptr @hws, align 4
  %446 = getelementptr ptr, ptr %445, i32 275
  store ptr %444, ptr %446, align 4
  %447 = getelementptr i8, ptr %231, i32 46592
  %448 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.125, i8 noundef zeroext 8, ptr noundef nonnull @pwm3_sel, ptr noundef null, ptr noundef null, i32 noundef 4226, ptr noundef %447, i8 noundef zeroext 24, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %449 = load ptr, ptr @hws, align 4
  %450 = getelementptr ptr, ptr %449, i32 279
  store ptr %448, ptr %450, align 4
  %451 = getelementptr i8, ptr %231, i32 46720
  %452 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.126, i8 noundef zeroext 8, ptr noundef nonnull @pwm4_sel, ptr noundef null, ptr noundef null, i32 noundef 4226, ptr noundef %451, i8 noundef zeroext 24, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %453 = load ptr, ptr @hws, align 4
  %454 = getelementptr ptr, ptr %453, i32 283
  store ptr %452, ptr %454, align 4
  %455 = getelementptr i8, ptr %231, i32 46848
  %456 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.127, i8 noundef zeroext 8, ptr noundef nonnull @flextimer1_sel, ptr noundef null, ptr noundef null, i32 noundef 4226, ptr noundef %455, i8 noundef zeroext 24, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %457 = load ptr, ptr @hws, align 4
  %458 = getelementptr ptr, ptr %457, i32 287
  store ptr %456, ptr %458, align 4
  %459 = getelementptr i8, ptr %231, i32 46976
  %460 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.128, i8 noundef zeroext 8, ptr noundef nonnull @flextimer2_sel, ptr noundef null, ptr noundef null, i32 noundef 4226, ptr noundef %459, i8 noundef zeroext 24, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %461 = load ptr, ptr @hws, align 4
  %462 = getelementptr ptr, ptr %461, i32 291
  store ptr %460, ptr %462, align 4
  %463 = getelementptr i8, ptr %231, i32 47104
  %464 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.129, i8 noundef zeroext 8, ptr noundef nonnull @sim1_sel, ptr noundef null, ptr noundef null, i32 noundef 4226, ptr noundef %463, i8 noundef zeroext 24, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %465 = load ptr, ptr @hws, align 4
  %466 = getelementptr ptr, ptr %465, i32 295
  store ptr %464, ptr %466, align 4
  %467 = getelementptr i8, ptr %231, i32 47232
  %468 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.130, i8 noundef zeroext 8, ptr noundef nonnull @sim2_sel, ptr noundef null, ptr noundef null, i32 noundef 4226, ptr noundef %467, i8 noundef zeroext 24, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %469 = load ptr, ptr @hws, align 4
  %470 = getelementptr ptr, ptr %469, i32 299
  store ptr %468, ptr %470, align 4
  %471 = getelementptr i8, ptr %231, i32 47360
  %472 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.131, i8 noundef zeroext 8, ptr noundef nonnull @gpt1_sel, ptr noundef null, ptr noundef null, i32 noundef 4226, ptr noundef %471, i8 noundef zeroext 24, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %473 = load ptr, ptr @hws, align 4
  %474 = getelementptr ptr, ptr %473, i32 303
  store ptr %472, ptr %474, align 4
  %475 = getelementptr i8, ptr %231, i32 47488
  %476 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.132, i8 noundef zeroext 8, ptr noundef nonnull @gpt2_sel, ptr noundef null, ptr noundef null, i32 noundef 4226, ptr noundef %475, i8 noundef zeroext 24, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %477 = load ptr, ptr @hws, align 4
  %478 = getelementptr ptr, ptr %477, i32 307
  store ptr %476, ptr %478, align 4
  %479 = getelementptr i8, ptr %231, i32 47616
  %480 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.133, i8 noundef zeroext 8, ptr noundef nonnull @gpt3_sel, ptr noundef null, ptr noundef null, i32 noundef 4226, ptr noundef %479, i8 noundef zeroext 24, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %481 = load ptr, ptr @hws, align 4
  %482 = getelementptr ptr, ptr %481, i32 311
  store ptr %480, ptr %482, align 4
  %483 = getelementptr i8, ptr %231, i32 47744
  %484 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.134, i8 noundef zeroext 8, ptr noundef nonnull @gpt4_sel, ptr noundef null, ptr noundef null, i32 noundef 4226, ptr noundef %483, i8 noundef zeroext 24, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %485 = load ptr, ptr @hws, align 4
  %486 = getelementptr ptr, ptr %485, i32 315
  store ptr %484, ptr %486, align 4
  %487 = getelementptr i8, ptr %231, i32 47872
  %488 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.135, i8 noundef zeroext 8, ptr noundef nonnull @trace_sel, ptr noundef null, ptr noundef null, i32 noundef 4226, ptr noundef %487, i8 noundef zeroext 24, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %489 = load ptr, ptr @hws, align 4
  %490 = getelementptr ptr, ptr %489, i32 319
  store ptr %488, ptr %490, align 4
  %491 = getelementptr i8, ptr %231, i32 48000
  %492 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.136, i8 noundef zeroext 8, ptr noundef nonnull @wdog_sel, ptr noundef null, ptr noundef null, i32 noundef 4226, ptr noundef %491, i8 noundef zeroext 24, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %493 = load ptr, ptr @hws, align 4
  %494 = getelementptr ptr, ptr %493, i32 323
  store ptr %492, ptr %494, align 4
  %495 = getelementptr i8, ptr %231, i32 48128
  %496 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.137, i8 noundef zeroext 8, ptr noundef nonnull @csi_mclk_sel, ptr noundef null, ptr noundef null, i32 noundef 4226, ptr noundef %495, i8 noundef zeroext 24, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %497 = load ptr, ptr @hws, align 4
  %498 = getelementptr ptr, ptr %497, i32 327
  store ptr %496, ptr %498, align 4
  %499 = getelementptr i8, ptr %231, i32 48256
  %500 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.138, i8 noundef zeroext 8, ptr noundef nonnull @audio_mclk_sel, ptr noundef null, ptr noundef null, i32 noundef 4226, ptr noundef %499, i8 noundef zeroext 24, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %501 = load ptr, ptr @hws, align 4
  %502 = getelementptr ptr, ptr %501, i32 331
  store ptr %500, ptr %502, align 4
  %503 = getelementptr i8, ptr %231, i32 48384
  %504 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.139, i8 noundef zeroext 8, ptr noundef nonnull @wrclk_sel, ptr noundef null, ptr noundef null, i32 noundef 4226, ptr noundef %503, i8 noundef zeroext 24, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %505 = load ptr, ptr @hws, align 4
  %506 = getelementptr ptr, ptr %505, i32 335
  store ptr %504, ptr %506, align 4
  %507 = getelementptr i8, ptr %231, i32 48512
  %508 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.140, i8 noundef zeroext 8, ptr noundef nonnull @clko1_sel, ptr noundef null, ptr noundef null, i32 noundef 4226, ptr noundef %507, i8 noundef zeroext 24, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %509 = load ptr, ptr @hws, align 4
  %510 = getelementptr ptr, ptr %509, i32 338
  store ptr %508, ptr %510, align 4
  %511 = getelementptr i8, ptr %231, i32 48640
  %512 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.141, i8 noundef zeroext 8, ptr noundef nonnull @clko2_sel, ptr noundef null, ptr noundef null, i32 noundef 4226, ptr noundef %511, i8 noundef zeroext 24, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %513 = load ptr, ptr @hws, align 4
  %514 = getelementptr ptr, ptr %513, i32 341
  store ptr %512, ptr %514, align 4
  %515 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.142, ptr noundef nonnull @.str.72, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %235, i8 noundef zeroext 28, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %516 = load ptr, ptr @hws, align 4
  %517 = getelementptr ptr, ptr %516, i32 64
  store ptr %515, ptr %517, align 4
  %518 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.143, ptr noundef nonnull @.str.73, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %239, i8 noundef zeroext 28, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %519 = load ptr, ptr @hws, align 4
  %520 = getelementptr ptr, ptr %519, i32 68
  store ptr %518, ptr %520, align 4
  %521 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.144, ptr noundef nonnull @.str.74, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %243, i8 noundef zeroext 28, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %522 = load ptr, ptr @hws, align 4
  %523 = getelementptr ptr, ptr %522, i32 76
  store ptr %521, ptr %523, align 4
  %524 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.145, ptr noundef nonnull @.str.75, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %247, i8 noundef zeroext 28, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %525 = load ptr, ptr @hws, align 4
  %526 = getelementptr ptr, ptr %525, i32 80
  store ptr %524, ptr %526, align 4
  %527 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.146, ptr noundef nonnull @.str.77, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %255, i8 noundef zeroext 28, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %528 = load ptr, ptr @hws, align 4
  %529 = getelementptr ptr, ptr %528, i32 84
  store ptr %527, ptr %529, align 4
  %530 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.147, ptr noundef nonnull @.str.78, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %259, i8 noundef zeroext 28, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %531 = load ptr, ptr @hws, align 4
  %532 = getelementptr ptr, ptr %531, i32 88
  store ptr %530, ptr %532, align 4
  %533 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.76, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %251, i8 noundef zeroext 28, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %534 = load ptr, ptr @hws, align 4
  %535 = getelementptr ptr, ptr %534, i32 92
  store ptr %533, ptr %535, align 4
  %536 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.149, ptr noundef nonnull @.str.79, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %263, i8 noundef zeroext 28, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %537 = load ptr, ptr @hws, align 4
  %538 = getelementptr ptr, ptr %537, i32 96
  store ptr %536, ptr %538, align 4
  %539 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.150, ptr noundef nonnull @.str.80, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %267, i8 noundef zeroext 28, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %540 = load ptr, ptr @hws, align 4
  %541 = getelementptr ptr, ptr %540, i32 100
  store ptr %539, ptr %541, align 4
  %542 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.151, ptr noundef nonnull @.str.81, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %271, i8 noundef zeroext 28, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %543 = load ptr, ptr @hws, align 4
  %544 = getelementptr ptr, ptr %543, i32 104
  store ptr %542, ptr %544, align 4
  %545 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.152, ptr noundef nonnull @.str.82, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %275, i8 noundef zeroext 28, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %546 = load ptr, ptr @hws, align 4
  %547 = getelementptr ptr, ptr %546, i32 108
  store ptr %545, ptr %547, align 4
  %548 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.153, ptr noundef nonnull @.str.83, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %279, i8 noundef zeroext 28, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %549 = load ptr, ptr @hws, align 4
  %550 = getelementptr ptr, ptr %549, i32 112
  store ptr %548, ptr %550, align 4
  %551 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.154, ptr noundef nonnull @.str.84, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %283, i8 noundef zeroext 28, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %552 = load ptr, ptr @hws, align 4
  %553 = getelementptr ptr, ptr %552, i32 116
  store ptr %551, ptr %553, align 4
  %554 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.155, ptr noundef nonnull @.str.85, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %287, i8 noundef zeroext 28, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %555 = load ptr, ptr @hws, align 4
  %556 = getelementptr ptr, ptr %555, i32 120
  store ptr %554, ptr %556, align 4
  %557 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.156, ptr noundef nonnull @.str.86, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %291, i8 noundef zeroext 28, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %558 = load ptr, ptr @hws, align 4
  %559 = getelementptr ptr, ptr %558, i32 124
  store ptr %557, ptr %559, align 4
  %560 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.157, ptr noundef nonnull @.str.87, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %295, i8 noundef zeroext 28, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %561 = load ptr, ptr @hws, align 4
  %562 = getelementptr ptr, ptr %561, i32 128
  store ptr %560, ptr %562, align 4
  %563 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.158, ptr noundef nonnull @.str.88, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %299, i8 noundef zeroext 28, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %564 = load ptr, ptr @hws, align 4
  %565 = getelementptr ptr, ptr %564, i32 132
  store ptr %563, ptr %565, align 4
  %566 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.89, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %303, i8 noundef zeroext 28, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %567 = load ptr, ptr @hws, align 4
  %568 = getelementptr ptr, ptr %567, i32 136
  store ptr %566, ptr %568, align 4
  %569 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.160, ptr noundef nonnull @.str.90, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %307, i8 noundef zeroext 28, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %570 = load ptr, ptr @hws, align 4
  %571 = getelementptr ptr, ptr %570, i32 140
  store ptr %569, ptr %571, align 4
  %572 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.161, ptr noundef nonnull @.str.91, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %311, i8 noundef zeroext 28, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %573 = load ptr, ptr @hws, align 4
  %574 = getelementptr ptr, ptr %573, i32 144
  store ptr %572, ptr %574, align 4
  %575 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.162, ptr noundef nonnull @.str.92, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %315, i8 noundef zeroext 28, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %576 = load ptr, ptr @hws, align 4
  %577 = getelementptr ptr, ptr %576, i32 148
  store ptr %575, ptr %577, align 4
  %578 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.163, ptr noundef nonnull @.str.93, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %319, i8 noundef zeroext 28, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %579 = load ptr, ptr @hws, align 4
  %580 = getelementptr ptr, ptr %579, i32 152
  store ptr %578, ptr %580, align 4
  %581 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.164, ptr noundef nonnull @.str.94, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %323, i8 noundef zeroext 28, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %582 = load ptr, ptr @hws, align 4
  %583 = getelementptr ptr, ptr %582, i32 156
  store ptr %581, ptr %583, align 4
  %584 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.165, ptr noundef nonnull @.str.95, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %327, i8 noundef zeroext 28, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %585 = load ptr, ptr @hws, align 4
  %586 = getelementptr ptr, ptr %585, i32 160
  store ptr %584, ptr %586, align 4
  %587 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.166, ptr noundef nonnull @.str.96, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %331, i8 noundef zeroext 28, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %588 = load ptr, ptr @hws, align 4
  %589 = getelementptr ptr, ptr %588, i32 164
  store ptr %587, ptr %589, align 4
  %590 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.167, ptr noundef nonnull @.str.97, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %335, i8 noundef zeroext 28, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %591 = load ptr, ptr @hws, align 4
  %592 = getelementptr ptr, ptr %591, i32 168
  store ptr %590, ptr %592, align 4
  %593 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.168, ptr noundef nonnull @.str.98, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %339, i8 noundef zeroext 28, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %594 = load ptr, ptr @hws, align 4
  %595 = getelementptr ptr, ptr %594, i32 172
  store ptr %593, ptr %595, align 4
  %596 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.169, ptr noundef nonnull @.str.99, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %343, i8 noundef zeroext 28, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %597 = load ptr, ptr @hws, align 4
  %598 = getelementptr ptr, ptr %597, i32 176
  store ptr %596, ptr %598, align 4
  %599 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.170, ptr noundef nonnull @.str.100, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %347, i8 noundef zeroext 28, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %600 = load ptr, ptr @hws, align 4
  %601 = getelementptr ptr, ptr %600, i32 180
  store ptr %599, ptr %601, align 4
  %602 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.171, ptr noundef nonnull @.str.101, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %351, i8 noundef zeroext 28, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %603 = load ptr, ptr @hws, align 4
  %604 = getelementptr ptr, ptr %603, i32 184
  store ptr %602, ptr %604, align 4
  %605 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.172, ptr noundef nonnull @.str.102, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %355, i8 noundef zeroext 28, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %606 = load ptr, ptr @hws, align 4
  %607 = getelementptr ptr, ptr %606, i32 188
  store ptr %605, ptr %607, align 4
  %608 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.173, ptr noundef nonnull @.str.103, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %359, i8 noundef zeroext 28, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %609 = load ptr, ptr @hws, align 4
  %610 = getelementptr ptr, ptr %609, i32 192
  store ptr %608, ptr %610, align 4
  %611 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.174, ptr noundef nonnull @.str.104, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %363, i8 noundef zeroext 28, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %612 = load ptr, ptr @hws, align 4
  %613 = getelementptr ptr, ptr %612, i32 196
  store ptr %611, ptr %613, align 4
  %614 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.175, ptr noundef nonnull @.str.105, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %367, i8 noundef zeroext 28, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %615 = load ptr, ptr @hws, align 4
  %616 = getelementptr ptr, ptr %615, i32 200
  store ptr %614, ptr %616, align 4
  %617 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.176, ptr noundef nonnull @.str.106, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %371, i8 noundef zeroext 28, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %618 = load ptr, ptr @hws, align 4
  %619 = getelementptr ptr, ptr %618, i32 204
  store ptr %617, ptr %619, align 4
  %620 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.177, ptr noundef nonnull @.str.107, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %375, i8 noundef zeroext 28, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %621 = load ptr, ptr @hws, align 4
  %622 = getelementptr ptr, ptr %621, i32 208
  store ptr %620, ptr %622, align 4
  %623 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.178, ptr noundef nonnull @.str.108, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %379, i8 noundef zeroext 28, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %624 = load ptr, ptr @hws, align 4
  %625 = getelementptr ptr, ptr %624, i32 212
  store ptr %623, ptr %625, align 4
  %626 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.179, ptr noundef nonnull @.str.109, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %383, i8 noundef zeroext 28, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %627 = load ptr, ptr @hws, align 4
  %628 = getelementptr ptr, ptr %627, i32 216
  store ptr %626, ptr %628, align 4
  %629 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.180, ptr noundef nonnull @.str.110, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %387, i8 noundef zeroext 28, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %630 = load ptr, ptr @hws, align 4
  %631 = getelementptr ptr, ptr %630, i32 220
  store ptr %629, ptr %631, align 4
  %632 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.181, ptr noundef nonnull @.str.111, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %391, i8 noundef zeroext 28, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %633 = load ptr, ptr @hws, align 4
  %634 = getelementptr ptr, ptr %633, i32 224
  store ptr %632, ptr %634, align 4
  %635 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.182, ptr noundef nonnull @.str.112, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %395, i8 noundef zeroext 28, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %636 = load ptr, ptr @hws, align 4
  %637 = getelementptr ptr, ptr %636, i32 228
  store ptr %635, ptr %637, align 4
  %638 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.183, ptr noundef nonnull @.str.113, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %399, i8 noundef zeroext 28, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %639 = load ptr, ptr @hws, align 4
  %640 = getelementptr ptr, ptr %639, i32 232
  store ptr %638, ptr %640, align 4
  %641 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.184, ptr noundef nonnull @.str.114, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %403, i8 noundef zeroext 28, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %642 = load ptr, ptr @hws, align 4
  %643 = getelementptr ptr, ptr %642, i32 236
  store ptr %641, ptr %643, align 4
  %644 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.185, ptr noundef nonnull @.str.115, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %407, i8 noundef zeroext 28, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %645 = load ptr, ptr @hws, align 4
  %646 = getelementptr ptr, ptr %645, i32 240
  store ptr %644, ptr %646, align 4
  %647 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.186, ptr noundef nonnull @.str.116, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %411, i8 noundef zeroext 28, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %648 = load ptr, ptr @hws, align 4
  %649 = getelementptr ptr, ptr %648, i32 244
  store ptr %647, ptr %649, align 4
  %650 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.187, ptr noundef nonnull @.str.117, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %415, i8 noundef zeroext 28, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %651 = load ptr, ptr @hws, align 4
  %652 = getelementptr ptr, ptr %651, i32 248
  store ptr %650, ptr %652, align 4
  %653 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.188, ptr noundef nonnull @.str.118, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %419, i8 noundef zeroext 28, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %654 = load ptr, ptr @hws, align 4
  %655 = getelementptr ptr, ptr %654, i32 252
  store ptr %653, ptr %655, align 4
  %656 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.189, ptr noundef nonnull @.str.119, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %423, i8 noundef zeroext 28, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %657 = load ptr, ptr @hws, align 4
  %658 = getelementptr ptr, ptr %657, i32 256
  store ptr %656, ptr %658, align 4
  %659 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.190, ptr noundef nonnull @.str.120, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %427, i8 noundef zeroext 28, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %660 = load ptr, ptr @hws, align 4
  %661 = getelementptr ptr, ptr %660, i32 260
  store ptr %659, ptr %661, align 4
  %662 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.191, ptr noundef nonnull @.str.121, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %431, i8 noundef zeroext 28, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %663 = load ptr, ptr @hws, align 4
  %664 = getelementptr ptr, ptr %663, i32 264
  store ptr %662, ptr %664, align 4
  %665 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.192, ptr noundef nonnull @.str.122, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %435, i8 noundef zeroext 28, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %666 = load ptr, ptr @hws, align 4
  %667 = getelementptr ptr, ptr %666, i32 268
  store ptr %665, ptr %667, align 4
  %668 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.193, ptr noundef nonnull @.str.123, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %439, i8 noundef zeroext 28, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %669 = load ptr, ptr @hws, align 4
  %670 = getelementptr ptr, ptr %669, i32 272
  store ptr %668, ptr %670, align 4
  %671 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.194, ptr noundef nonnull @.str.124, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %443, i8 noundef zeroext 28, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %672 = load ptr, ptr @hws, align 4
  %673 = getelementptr ptr, ptr %672, i32 276
  store ptr %671, ptr %673, align 4
  %674 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.195, ptr noundef nonnull @.str.125, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %447, i8 noundef zeroext 28, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %675 = load ptr, ptr @hws, align 4
  %676 = getelementptr ptr, ptr %675, i32 280
  store ptr %674, ptr %676, align 4
  %677 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.196, ptr noundef nonnull @.str.126, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %451, i8 noundef zeroext 28, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %678 = load ptr, ptr @hws, align 4
  %679 = getelementptr ptr, ptr %678, i32 284
  store ptr %677, ptr %679, align 4
  %680 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.197, ptr noundef nonnull @.str.127, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %455, i8 noundef zeroext 28, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %681 = load ptr, ptr @hws, align 4
  %682 = getelementptr ptr, ptr %681, i32 288
  store ptr %680, ptr %682, align 4
  %683 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.198, ptr noundef nonnull @.str.128, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %459, i8 noundef zeroext 28, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %684 = load ptr, ptr @hws, align 4
  %685 = getelementptr ptr, ptr %684, i32 292
  store ptr %683, ptr %685, align 4
  %686 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.199, ptr noundef nonnull @.str.129, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %463, i8 noundef zeroext 28, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %687 = load ptr, ptr @hws, align 4
  %688 = getelementptr ptr, ptr %687, i32 296
  store ptr %686, ptr %688, align 4
  %689 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.200, ptr noundef nonnull @.str.130, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %467, i8 noundef zeroext 28, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %690 = load ptr, ptr @hws, align 4
  %691 = getelementptr ptr, ptr %690, i32 300
  store ptr %689, ptr %691, align 4
  %692 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.201, ptr noundef nonnull @.str.131, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %471, i8 noundef zeroext 28, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %693 = load ptr, ptr @hws, align 4
  %694 = getelementptr ptr, ptr %693, i32 304
  store ptr %692, ptr %694, align 4
  %695 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.202, ptr noundef nonnull @.str.132, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %475, i8 noundef zeroext 28, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %696 = load ptr, ptr @hws, align 4
  %697 = getelementptr ptr, ptr %696, i32 308
  store ptr %695, ptr %697, align 4
  %698 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.203, ptr noundef nonnull @.str.133, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %479, i8 noundef zeroext 28, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %699 = load ptr, ptr @hws, align 4
  %700 = getelementptr ptr, ptr %699, i32 312
  store ptr %698, ptr %700, align 4
  %701 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.204, ptr noundef nonnull @.str.134, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %483, i8 noundef zeroext 28, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %702 = load ptr, ptr @hws, align 4
  %703 = getelementptr ptr, ptr %702, i32 316
  store ptr %701, ptr %703, align 4
  %704 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.205, ptr noundef nonnull @.str.135, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %487, i8 noundef zeroext 28, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %705 = load ptr, ptr @hws, align 4
  %706 = getelementptr ptr, ptr %705, i32 320
  store ptr %704, ptr %706, align 4
  %707 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.206, ptr noundef nonnull @.str.136, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %491, i8 noundef zeroext 28, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %708 = load ptr, ptr @hws, align 4
  %709 = getelementptr ptr, ptr %708, i32 324
  store ptr %707, ptr %709, align 4
  %710 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.207, ptr noundef nonnull @.str.137, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %495, i8 noundef zeroext 28, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %711 = load ptr, ptr @hws, align 4
  %712 = getelementptr ptr, ptr %711, i32 328
  store ptr %710, ptr %712, align 4
  %713 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.208, ptr noundef nonnull @.str.138, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %499, i8 noundef zeroext 28, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %714 = load ptr, ptr @hws, align 4
  %715 = getelementptr ptr, ptr %714, i32 332
  store ptr %713, ptr %715, align 4
  %716 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.209, ptr noundef nonnull @.str.139, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %503, i8 noundef zeroext 28, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %717 = load ptr, ptr @hws, align 4
  %718 = getelementptr ptr, ptr %717, i32 336
  store ptr %716, ptr %718, align 4
  %719 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.210, ptr noundef nonnull @.str.140, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %507, i8 noundef zeroext 28, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %720 = load ptr, ptr @hws, align 4
  %721 = getelementptr ptr, ptr %720, i32 339
  store ptr %719, ptr %721, align 4
  %722 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.211, ptr noundef nonnull @.str.141, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %511, i8 noundef zeroext 28, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %723 = load ptr, ptr @hws, align 4
  %724 = getelementptr ptr, ptr %723, i32 342
  store ptr %722, ptr %724, align 4
  %725 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.212, ptr noundef nonnull @.str.144, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %243, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %726 = load ptr, ptr @hws, align 4
  %727 = getelementptr ptr, ptr %726, i32 344
  store ptr %725, ptr %727, align 4
  %728 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.213, ptr noundef nonnull @.str.145, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %247, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %729 = load ptr, ptr @hws, align 4
  %730 = getelementptr ptr, ptr %729, i32 345
  store ptr %728, ptr %730, align 4
  %731 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.214, ptr noundef nonnull @.str.146, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %255, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %732 = load ptr, ptr @hws, align 4
  %733 = getelementptr ptr, ptr %732, i32 346
  store ptr %731, ptr %733, align 4
  %734 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.215, ptr noundef nonnull @.str.147, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %259, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %735 = load ptr, ptr @hws, align 4
  %736 = getelementptr ptr, ptr %735, i32 347
  store ptr %734, ptr %736, align 4
  %737 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.216, ptr noundef nonnull @.str.148, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %251, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %738 = load ptr, ptr @hws, align 4
  %739 = getelementptr ptr, ptr %738, i32 348
  store ptr %737, ptr %739, align 4
  %740 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.217, ptr noundef nonnull @.str.151, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %271, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %741 = load ptr, ptr @hws, align 4
  %742 = getelementptr ptr, ptr %741, i32 408
  store ptr %740, ptr %742, align 4
  %743 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.218, ptr noundef nonnull @.str.152, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %275, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %744 = load ptr, ptr @hws, align 4
  %745 = getelementptr ptr, ptr %744, i32 409
  store ptr %743, ptr %745, align 4
  %746 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.219, ptr noundef nonnull @.str.153, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %279, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %747 = load ptr, ptr @hws, align 4
  %748 = getelementptr ptr, ptr %747, i32 349
  store ptr %746, ptr %748, align 4
  %749 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.220, ptr noundef nonnull @.str.154, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %283, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %750 = load ptr, ptr @hws, align 4
  %751 = getelementptr ptr, ptr %750, i32 350
  store ptr %749, ptr %751, align 4
  %752 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.221, ptr noundef nonnull @.str.155, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %287, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %753 = load ptr, ptr @hws, align 4
  %754 = getelementptr ptr, ptr %753, i32 351
  store ptr %752, ptr %754, align 4
  %755 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.222, ptr noundef nonnull @.str.156, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %291, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %756 = load ptr, ptr @hws, align 4
  %757 = getelementptr ptr, ptr %756, i32 352
  store ptr %755, ptr %757, align 4
  %758 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.223, ptr noundef nonnull @.str.157, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %295, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %759 = load ptr, ptr @hws, align 4
  %760 = getelementptr ptr, ptr %759, i32 353
  store ptr %758, ptr %760, align 4
  %761 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.224, ptr noundef nonnull @.str.158, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %299, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %762 = load ptr, ptr @hws, align 4
  %763 = getelementptr ptr, ptr %762, i32 354
  store ptr %761, ptr %763, align 4
  %764 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.225, ptr noundef nonnull @.str.159, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %303, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %765 = load ptr, ptr @hws, align 4
  %766 = getelementptr ptr, ptr %765, i32 355
  store ptr %764, ptr %766, align 4
  %767 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.226, ptr noundef nonnull @.str.160, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %307, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %768 = load ptr, ptr @hws, align 4
  %769 = getelementptr ptr, ptr %768, i32 356
  store ptr %767, ptr %769, align 4
  %770 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.227, ptr noundef nonnull @.str.161, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %311, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %771 = load ptr, ptr @hws, align 4
  %772 = getelementptr ptr, ptr %771, i32 357
  store ptr %770, ptr %772, align 4
  %773 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.228, ptr noundef nonnull @.str.162, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %315, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %774 = load ptr, ptr @hws, align 4
  %775 = getelementptr ptr, ptr %774, i32 358
  store ptr %773, ptr %775, align 4
  %776 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.229, ptr noundef nonnull @.str.163, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %319, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %777 = load ptr, ptr @hws, align 4
  %778 = getelementptr ptr, ptr %777, i32 359
  store ptr %776, ptr %778, align 4
  %779 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.230, ptr noundef nonnull @.str.164, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %323, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %780 = load ptr, ptr @hws, align 4
  %781 = getelementptr ptr, ptr %780, i32 360
  store ptr %779, ptr %781, align 4
  %782 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.231, ptr noundef nonnull @.str.165, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %327, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %783 = load ptr, ptr @hws, align 4
  %784 = getelementptr ptr, ptr %783, i32 361
  store ptr %782, ptr %784, align 4
  %785 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.232, ptr noundef nonnull @.str.166, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %331, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %786 = load ptr, ptr @hws, align 4
  %787 = getelementptr ptr, ptr %786, i32 362
  store ptr %785, ptr %787, align 4
  %788 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.233, ptr noundef nonnull @.str.167, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %335, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %789 = load ptr, ptr @hws, align 4
  %790 = getelementptr ptr, ptr %789, i32 363
  store ptr %788, ptr %790, align 4
  %791 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.234, ptr noundef nonnull @.str.168, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %339, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %792 = load ptr, ptr @hws, align 4
  %793 = getelementptr ptr, ptr %792, i32 364
  store ptr %791, ptr %793, align 4
  %794 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.235, ptr noundef nonnull @.str.169, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %343, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %795 = load ptr, ptr @hws, align 4
  %796 = getelementptr ptr, ptr %795, i32 365
  store ptr %794, ptr %796, align 4
  %797 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.236, ptr noundef nonnull @.str.170, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %347, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %798 = load ptr, ptr @hws, align 4
  %799 = getelementptr ptr, ptr %798, i32 366
  store ptr %797, ptr %799, align 4
  %800 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.237, ptr noundef nonnull @.str.171, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %351, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %801 = load ptr, ptr @hws, align 4
  %802 = getelementptr ptr, ptr %801, i32 367
  store ptr %800, ptr %802, align 4
  %803 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.238, ptr noundef nonnull @.str.172, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %355, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %804 = load ptr, ptr @hws, align 4
  %805 = getelementptr ptr, ptr %804, i32 368
  store ptr %803, ptr %805, align 4
  %806 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.239, ptr noundef nonnull @.str.173, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %359, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %807 = load ptr, ptr @hws, align 4
  %808 = getelementptr ptr, ptr %807, i32 369
  store ptr %806, ptr %808, align 4
  %809 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.240, ptr noundef nonnull @.str.174, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %363, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %810 = load ptr, ptr @hws, align 4
  %811 = getelementptr ptr, ptr %810, i32 370
  store ptr %809, ptr %811, align 4
  %812 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.241, ptr noundef nonnull @.str.175, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %367, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %813 = load ptr, ptr @hws, align 4
  %814 = getelementptr ptr, ptr %813, i32 371
  store ptr %812, ptr %814, align 4
  %815 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.242, ptr noundef nonnull @.str.176, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %371, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %816 = load ptr, ptr @hws, align 4
  %817 = getelementptr ptr, ptr %816, i32 372
  store ptr %815, ptr %817, align 4
  %818 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.243, ptr noundef nonnull @.str.177, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %375, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %819 = load ptr, ptr @hws, align 4
  %820 = getelementptr ptr, ptr %819, i32 373
  store ptr %818, ptr %820, align 4
  %821 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.244, ptr noundef nonnull @.str.178, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %379, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %822 = load ptr, ptr @hws, align 4
  %823 = getelementptr ptr, ptr %822, i32 374
  store ptr %821, ptr %823, align 4
  %824 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.245, ptr noundef nonnull @.str.179, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %383, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %825 = load ptr, ptr @hws, align 4
  %826 = getelementptr ptr, ptr %825, i32 375
  store ptr %824, ptr %826, align 4
  %827 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.246, ptr noundef nonnull @.str.180, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %387, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %828 = load ptr, ptr @hws, align 4
  %829 = getelementptr ptr, ptr %828, i32 376
  store ptr %827, ptr %829, align 4
  %830 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.247, ptr noundef nonnull @.str.181, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %391, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %831 = load ptr, ptr @hws, align 4
  %832 = getelementptr ptr, ptr %831, i32 377
  store ptr %830, ptr %832, align 4
  %833 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.248, ptr noundef nonnull @.str.182, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %395, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %834 = load ptr, ptr @hws, align 4
  %835 = getelementptr ptr, ptr %834, i32 378
  store ptr %833, ptr %835, align 4
  %836 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.249, ptr noundef nonnull @.str.183, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %399, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %837 = load ptr, ptr @hws, align 4
  %838 = getelementptr ptr, ptr %837, i32 379
  store ptr %836, ptr %838, align 4
  %839 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.250, ptr noundef nonnull @.str.184, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %403, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %840 = load ptr, ptr @hws, align 4
  %841 = getelementptr ptr, ptr %840, i32 380
  store ptr %839, ptr %841, align 4
  %842 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.251, ptr noundef nonnull @.str.185, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %407, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %843 = load ptr, ptr @hws, align 4
  %844 = getelementptr ptr, ptr %843, i32 381
  store ptr %842, ptr %844, align 4
  %845 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.252, ptr noundef nonnull @.str.186, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %411, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %846 = load ptr, ptr @hws, align 4
  %847 = getelementptr ptr, ptr %846, i32 382
  store ptr %845, ptr %847, align 4
  %848 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.253, ptr noundef nonnull @.str.187, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %415, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %849 = load ptr, ptr @hws, align 4
  %850 = getelementptr ptr, ptr %849, i32 383
  store ptr %848, ptr %850, align 4
  %851 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.254, ptr noundef nonnull @.str.188, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %419, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %852 = load ptr, ptr @hws, align 4
  %853 = getelementptr ptr, ptr %852, i32 384
  store ptr %851, ptr %853, align 4
  %854 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.255, ptr noundef nonnull @.str.189, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %423, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %855 = load ptr, ptr @hws, align 4
  %856 = getelementptr ptr, ptr %855, i32 385
  store ptr %854, ptr %856, align 4
  %857 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.256, ptr noundef nonnull @.str.190, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %427, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %858 = load ptr, ptr @hws, align 4
  %859 = getelementptr ptr, ptr %858, i32 386
  store ptr %857, ptr %859, align 4
  %860 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.257, ptr noundef nonnull @.str.191, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %431, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %861 = load ptr, ptr @hws, align 4
  %862 = getelementptr ptr, ptr %861, i32 387
  store ptr %860, ptr %862, align 4
  %863 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.258, ptr noundef nonnull @.str.192, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %435, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %864 = load ptr, ptr @hws, align 4
  %865 = getelementptr ptr, ptr %864, i32 388
  store ptr %863, ptr %865, align 4
  %866 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.259, ptr noundef nonnull @.str.193, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %439, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %867 = load ptr, ptr @hws, align 4
  %868 = getelementptr ptr, ptr %867, i32 389
  store ptr %866, ptr %868, align 4
  %869 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.260, ptr noundef nonnull @.str.194, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %443, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %870 = load ptr, ptr @hws, align 4
  %871 = getelementptr ptr, ptr %870, i32 390
  store ptr %869, ptr %871, align 4
  %872 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.261, ptr noundef nonnull @.str.195, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %447, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %873 = load ptr, ptr @hws, align 4
  %874 = getelementptr ptr, ptr %873, i32 391
  store ptr %872, ptr %874, align 4
  %875 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.262, ptr noundef nonnull @.str.196, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %451, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %876 = load ptr, ptr @hws, align 4
  %877 = getelementptr ptr, ptr %876, i32 392
  store ptr %875, ptr %877, align 4
  %878 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.263, ptr noundef nonnull @.str.197, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %455, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %879 = load ptr, ptr @hws, align 4
  %880 = getelementptr ptr, ptr %879, i32 393
  store ptr %878, ptr %880, align 4
  %881 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.264, ptr noundef nonnull @.str.198, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %459, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %882 = load ptr, ptr @hws, align 4
  %883 = getelementptr ptr, ptr %882, i32 394
  store ptr %881, ptr %883, align 4
  %884 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.265, ptr noundef nonnull @.str.199, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %463, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %885 = load ptr, ptr @hws, align 4
  %886 = getelementptr ptr, ptr %885, i32 395
  store ptr %884, ptr %886, align 4
  %887 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.266, ptr noundef nonnull @.str.200, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %467, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %888 = load ptr, ptr @hws, align 4
  %889 = getelementptr ptr, ptr %888, i32 396
  store ptr %887, ptr %889, align 4
  %890 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.267, ptr noundef nonnull @.str.201, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %471, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %891 = load ptr, ptr @hws, align 4
  %892 = getelementptr ptr, ptr %891, i32 397
  store ptr %890, ptr %892, align 4
  %893 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.268, ptr noundef nonnull @.str.202, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %475, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %894 = load ptr, ptr @hws, align 4
  %895 = getelementptr ptr, ptr %894, i32 398
  store ptr %893, ptr %895, align 4
  %896 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.269, ptr noundef nonnull @.str.203, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %479, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %897 = load ptr, ptr @hws, align 4
  %898 = getelementptr ptr, ptr %897, i32 399
  store ptr %896, ptr %898, align 4
  %899 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.270, ptr noundef nonnull @.str.204, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %483, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %900 = load ptr, ptr @hws, align 4
  %901 = getelementptr ptr, ptr %900, i32 400
  store ptr %899, ptr %901, align 4
  %902 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.271, ptr noundef nonnull @.str.205, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %487, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %903 = load ptr, ptr @hws, align 4
  %904 = getelementptr ptr, ptr %903, i32 401
  store ptr %902, ptr %904, align 4
  %905 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.272, ptr noundef nonnull @.str.206, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %491, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %906 = load ptr, ptr @hws, align 4
  %907 = getelementptr ptr, ptr %906, i32 402
  store ptr %905, ptr %907, align 4
  %908 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.273, ptr noundef nonnull @.str.207, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %495, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %909 = load ptr, ptr @hws, align 4
  %910 = getelementptr ptr, ptr %909, i32 403
  store ptr %908, ptr %910, align 4
  %911 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.274, ptr noundef nonnull @.str.208, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %499, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %912 = load ptr, ptr @hws, align 4
  %913 = getelementptr ptr, ptr %912, i32 404
  store ptr %911, ptr %913, align 4
  %914 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.275, ptr noundef nonnull @.str.209, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %503, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %915 = load ptr, ptr @hws, align 4
  %916 = getelementptr ptr, ptr %915, i32 405
  store ptr %914, ptr %916, align 4
  %917 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.276, ptr noundef nonnull @.str.210, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %507, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %918 = load ptr, ptr @hws, align 4
  %919 = getelementptr ptr, ptr %918, i32 406
  store ptr %917, ptr %919, align 4
  %920 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.277, ptr noundef nonnull @.str.211, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %511, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %921 = load ptr, ptr @hws, align 4
  %922 = getelementptr ptr, ptr %921, i32 407
  store ptr %920, ptr %922, align 4
  %923 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.278, ptr noundef nonnull @.str.142, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %235, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %924 = load ptr, ptr @hws, align 4
  %925 = getelementptr ptr, ptr %924, i32 65
  store ptr %923, ptr %925, align 4
  %926 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.279, ptr noundef nonnull @.str.143, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %239, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %927 = load ptr, ptr @hws, align 4
  %928 = getelementptr ptr, ptr %927, i32 69
  store ptr %926, ptr %928, align 4
  %929 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.280, ptr noundef nonnull @.str.212, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %243, i8 noundef zeroext 0, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %930 = load ptr, ptr @hws, align 4
  %931 = getelementptr ptr, ptr %930, i32 77
  store ptr %929, ptr %931, align 4
  %932 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.281, ptr noundef nonnull @.str.213, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %247, i8 noundef zeroext 0, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %933 = load ptr, ptr @hws, align 4
  %934 = getelementptr ptr, ptr %933, i32 81
  store ptr %932, ptr %934, align 4
  %935 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.282, ptr noundef nonnull @.str.214, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %255, i8 noundef zeroext 0, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %936 = load ptr, ptr @hws, align 4
  %937 = getelementptr ptr, ptr %936, i32 85
  store ptr %935, ptr %937, align 4
  %938 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.283, ptr noundef nonnull @.str.215, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %259, i8 noundef zeroext 0, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %939 = load ptr, ptr @hws, align 4
  %940 = getelementptr ptr, ptr %939, i32 86
  store ptr %938, ptr %940, align 4
  %941 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.284, ptr noundef nonnull @.str.216, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %251, i8 noundef zeroext 0, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %942 = load ptr, ptr @hws, align 4
  %943 = getelementptr ptr, ptr %942, i32 93
  store ptr %941, ptr %943, align 4
  %944 = getelementptr i8, ptr %231, i32 36992
  %945 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.285, ptr noundef nonnull @.str.284, ptr noundef null, ptr noundef null, i32 noundef 6148, ptr noundef %944, i8 noundef zeroext 0, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %946 = load ptr, ptr @hws, align 4
  %947 = getelementptr ptr, ptr %946, i32 425
  store ptr %945, ptr %947, align 4
  %948 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.286, ptr noundef nonnull @.str.150, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %267, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %949 = load ptr, ptr @hws, align 4
  %950 = getelementptr ptr, ptr %949, i32 101
  store ptr %948, ptr %950, align 4
  %951 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.287, ptr noundef nonnull @.str.217, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %271, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %952 = load ptr, ptr @hws, align 4
  %953 = getelementptr ptr, ptr %952, i32 105
  store ptr %951, ptr %953, align 4
  %954 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.288, ptr noundef nonnull @.str.218, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %275, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %955 = load ptr, ptr @hws, align 4
  %956 = getelementptr ptr, ptr %955, i32 109
  store ptr %954, ptr %956, align 4
  %957 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.289, ptr noundef nonnull @.str.219, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %279, i8 noundef zeroext 0, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %958 = load ptr, ptr @hws, align 4
  %959 = getelementptr ptr, ptr %958, i32 113
  store ptr %957, ptr %959, align 4
  %960 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.290, ptr noundef nonnull @.str.220, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %283, i8 noundef zeroext 0, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %961 = load ptr, ptr @hws, align 4
  %962 = getelementptr ptr, ptr %961, i32 117
  store ptr %960, ptr %962, align 4
  %963 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.291, ptr noundef nonnull @.str.221, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %287, i8 noundef zeroext 0, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %964 = load ptr, ptr @hws, align 4
  %965 = getelementptr ptr, ptr %964, i32 121
  store ptr %963, ptr %965, align 4
  %966 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.292, ptr noundef nonnull @.str.222, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %291, i8 noundef zeroext 0, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %967 = load ptr, ptr @hws, align 4
  %968 = getelementptr ptr, ptr %967, i32 125
  store ptr %966, ptr %968, align 4
  %969 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.293, ptr noundef nonnull @.str.223, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %295, i8 noundef zeroext 0, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %970 = load ptr, ptr @hws, align 4
  %971 = getelementptr ptr, ptr %970, i32 129
  store ptr %969, ptr %971, align 4
  %972 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.294, ptr noundef nonnull @.str.224, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %299, i8 noundef zeroext 0, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %973 = load ptr, ptr @hws, align 4
  %974 = getelementptr ptr, ptr %973, i32 133
  store ptr %972, ptr %974, align 4
  %975 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.295, ptr noundef nonnull @.str.225, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %303, i8 noundef zeroext 0, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %976 = load ptr, ptr @hws, align 4
  %977 = getelementptr ptr, ptr %976, i32 137
  store ptr %975, ptr %977, align 4
  %978 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.296, ptr noundef nonnull @.str.226, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %307, i8 noundef zeroext 0, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %979 = load ptr, ptr @hws, align 4
  %980 = getelementptr ptr, ptr %979, i32 141
  store ptr %978, ptr %980, align 4
  %981 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.297, ptr noundef nonnull @.str.227, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %311, i8 noundef zeroext 0, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %982 = load ptr, ptr @hws, align 4
  %983 = getelementptr ptr, ptr %982, i32 145
  store ptr %981, ptr %983, align 4
  %984 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.298, ptr noundef nonnull @.str.228, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %315, i8 noundef zeroext 0, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %985 = load ptr, ptr @hws, align 4
  %986 = getelementptr ptr, ptr %985, i32 149
  store ptr %984, ptr %986, align 4
  %987 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.299, ptr noundef nonnull @.str.229, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %319, i8 noundef zeroext 0, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %988 = load ptr, ptr @hws, align 4
  %989 = getelementptr ptr, ptr %988, i32 153
  store ptr %987, ptr %989, align 4
  %990 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.300, ptr noundef nonnull @.str.230, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %323, i8 noundef zeroext 0, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %991 = load ptr, ptr @hws, align 4
  %992 = getelementptr ptr, ptr %991, i32 157
  store ptr %990, ptr %992, align 4
  %993 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.301, ptr noundef nonnull @.str.231, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %327, i8 noundef zeroext 0, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %994 = load ptr, ptr @hws, align 4
  %995 = getelementptr ptr, ptr %994, i32 161
  store ptr %993, ptr %995, align 4
  %996 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.302, ptr noundef nonnull @.str.232, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %331, i8 noundef zeroext 0, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %997 = load ptr, ptr @hws, align 4
  %998 = getelementptr ptr, ptr %997, i32 165
  store ptr %996, ptr %998, align 4
  %999 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.303, ptr noundef nonnull @.str.233, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %335, i8 noundef zeroext 0, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %1000 = load ptr, ptr @hws, align 4
  %1001 = getelementptr ptr, ptr %1000, i32 169
  store ptr %999, ptr %1001, align 4
  %1002 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.304, ptr noundef nonnull @.str.234, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %339, i8 noundef zeroext 0, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %1003 = load ptr, ptr @hws, align 4
  %1004 = getelementptr ptr, ptr %1003, i32 173
  store ptr %1002, ptr %1004, align 4
  %1005 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.305, ptr noundef nonnull @.str.235, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %343, i8 noundef zeroext 0, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %1006 = load ptr, ptr @hws, align 4
  %1007 = getelementptr ptr, ptr %1006, i32 174
  store ptr %1005, ptr %1007, align 4
  %1008 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.306, ptr noundef nonnull @.str.236, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %347, i8 noundef zeroext 0, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %1009 = load ptr, ptr @hws, align 4
  %1010 = getelementptr ptr, ptr %1009, i32 181
  store ptr %1008, ptr %1010, align 4
  %1011 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.307, ptr noundef nonnull @.str.237, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %351, i8 noundef zeroext 0, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %1012 = load ptr, ptr @hws, align 4
  %1013 = getelementptr ptr, ptr %1012, i32 182
  store ptr %1011, ptr %1013, align 4
  %1014 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.308, ptr noundef nonnull @.str.238, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %355, i8 noundef zeroext 0, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %1015 = load ptr, ptr @hws, align 4
  %1016 = getelementptr ptr, ptr %1015, i32 189
  store ptr %1014, ptr %1016, align 4
  %1017 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.309, ptr noundef nonnull @.str.239, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %359, i8 noundef zeroext 0, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %1018 = load ptr, ptr @hws, align 4
  %1019 = getelementptr ptr, ptr %1018, i32 193
  store ptr %1017, ptr %1019, align 4
  %1020 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.310, ptr noundef nonnull @.str.240, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %363, i8 noundef zeroext 0, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %1021 = load ptr, ptr @hws, align 4
  %1022 = getelementptr ptr, ptr %1021, i32 197
  store ptr %1020, ptr %1022, align 4
  %1023 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.311, ptr noundef nonnull @.str.241, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %367, i8 noundef zeroext 0, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %1024 = load ptr, ptr @hws, align 4
  %1025 = getelementptr ptr, ptr %1024, i32 201
  store ptr %1023, ptr %1025, align 4
  %1026 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.312, ptr noundef nonnull @.str.242, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %371, i8 noundef zeroext 0, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %1027 = load ptr, ptr @hws, align 4
  %1028 = getelementptr ptr, ptr %1027, i32 205
  store ptr %1026, ptr %1028, align 4
  %1029 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.313, ptr noundef nonnull @.str.243, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %375, i8 noundef zeroext 0, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %1030 = load ptr, ptr @hws, align 4
  %1031 = getelementptr ptr, ptr %1030, i32 209
  store ptr %1029, ptr %1031, align 4
  %1032 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.314, ptr noundef nonnull @.str.244, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %379, i8 noundef zeroext 0, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %1033 = load ptr, ptr @hws, align 4
  %1034 = getelementptr ptr, ptr %1033, i32 213
  store ptr %1032, ptr %1034, align 4
  %1035 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.315, ptr noundef nonnull @.str.245, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %383, i8 noundef zeroext 0, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %1036 = load ptr, ptr @hws, align 4
  %1037 = getelementptr ptr, ptr %1036, i32 217
  store ptr %1035, ptr %1037, align 4
  %1038 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.316, ptr noundef nonnull @.str.246, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %387, i8 noundef zeroext 0, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %1039 = load ptr, ptr @hws, align 4
  %1040 = getelementptr ptr, ptr %1039, i32 221
  store ptr %1038, ptr %1040, align 4
  %1041 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.317, ptr noundef nonnull @.str.247, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %391, i8 noundef zeroext 0, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %1042 = load ptr, ptr @hws, align 4
  %1043 = getelementptr ptr, ptr %1042, i32 225
  store ptr %1041, ptr %1043, align 4
  %1044 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.318, ptr noundef nonnull @.str.248, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %395, i8 noundef zeroext 0, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %1045 = load ptr, ptr @hws, align 4
  %1046 = getelementptr ptr, ptr %1045, i32 229
  store ptr %1044, ptr %1046, align 4
  %1047 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.319, ptr noundef nonnull @.str.249, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %399, i8 noundef zeroext 0, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %1048 = load ptr, ptr @hws, align 4
  %1049 = getelementptr ptr, ptr %1048, i32 233
  store ptr %1047, ptr %1049, align 4
  %1050 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.320, ptr noundef nonnull @.str.250, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %403, i8 noundef zeroext 0, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %1051 = load ptr, ptr @hws, align 4
  %1052 = getelementptr ptr, ptr %1051, i32 237
  store ptr %1050, ptr %1052, align 4
  %1053 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.321, ptr noundef nonnull @.str.251, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %407, i8 noundef zeroext 0, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %1054 = load ptr, ptr @hws, align 4
  %1055 = getelementptr ptr, ptr %1054, i32 241
  store ptr %1053, ptr %1055, align 4
  %1056 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.322, ptr noundef nonnull @.str.252, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %411, i8 noundef zeroext 0, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %1057 = load ptr, ptr @hws, align 4
  %1058 = getelementptr ptr, ptr %1057, i32 245
  store ptr %1056, ptr %1058, align 4
  %1059 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.323, ptr noundef nonnull @.str.253, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %415, i8 noundef zeroext 0, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %1060 = load ptr, ptr @hws, align 4
  %1061 = getelementptr ptr, ptr %1060, i32 249
  store ptr %1059, ptr %1061, align 4
  %1062 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.324, ptr noundef nonnull @.str.254, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %419, i8 noundef zeroext 0, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %1063 = load ptr, ptr @hws, align 4
  %1064 = getelementptr ptr, ptr %1063, i32 253
  store ptr %1062, ptr %1064, align 4
  %1065 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.325, ptr noundef nonnull @.str.255, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %423, i8 noundef zeroext 0, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %1066 = load ptr, ptr @hws, align 4
  %1067 = getelementptr ptr, ptr %1066, i32 257
  store ptr %1065, ptr %1067, align 4
  %1068 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.326, ptr noundef nonnull @.str.256, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %427, i8 noundef zeroext 0, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %1069 = load ptr, ptr @hws, align 4
  %1070 = getelementptr ptr, ptr %1069, i32 261
  store ptr %1068, ptr %1070, align 4
  %1071 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.327, ptr noundef nonnull @.str.257, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %431, i8 noundef zeroext 0, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %1072 = load ptr, ptr @hws, align 4
  %1073 = getelementptr ptr, ptr %1072, i32 265
  store ptr %1071, ptr %1073, align 4
  %1074 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.328, ptr noundef nonnull @.str.258, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %435, i8 noundef zeroext 0, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %1075 = load ptr, ptr @hws, align 4
  %1076 = getelementptr ptr, ptr %1075, i32 269
  store ptr %1074, ptr %1076, align 4
  %1077 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.329, ptr noundef nonnull @.str.259, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %439, i8 noundef zeroext 0, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %1078 = load ptr, ptr @hws, align 4
  %1079 = getelementptr ptr, ptr %1078, i32 273
  store ptr %1077, ptr %1079, align 4
  %1080 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.330, ptr noundef nonnull @.str.260, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %443, i8 noundef zeroext 0, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %1081 = load ptr, ptr @hws, align 4
  %1082 = getelementptr ptr, ptr %1081, i32 277
  store ptr %1080, ptr %1082, align 4
  %1083 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.331, ptr noundef nonnull @.str.261, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %447, i8 noundef zeroext 0, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %1084 = load ptr, ptr @hws, align 4
  %1085 = getelementptr ptr, ptr %1084, i32 281
  store ptr %1083, ptr %1085, align 4
  %1086 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.332, ptr noundef nonnull @.str.262, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %451, i8 noundef zeroext 0, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %1087 = load ptr, ptr @hws, align 4
  %1088 = getelementptr ptr, ptr %1087, i32 285
  store ptr %1086, ptr %1088, align 4
  %1089 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.333, ptr noundef nonnull @.str.263, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %455, i8 noundef zeroext 0, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %1090 = load ptr, ptr @hws, align 4
  %1091 = getelementptr ptr, ptr %1090, i32 289
  store ptr %1089, ptr %1091, align 4
  %1092 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.334, ptr noundef nonnull @.str.264, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %459, i8 noundef zeroext 0, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %1093 = load ptr, ptr @hws, align 4
  %1094 = getelementptr ptr, ptr %1093, i32 293
  store ptr %1092, ptr %1094, align 4
  %1095 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.335, ptr noundef nonnull @.str.265, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %463, i8 noundef zeroext 0, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %1096 = load ptr, ptr @hws, align 4
  %1097 = getelementptr ptr, ptr %1096, i32 297
  store ptr %1095, ptr %1097, align 4
  %1098 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.336, ptr noundef nonnull @.str.266, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %467, i8 noundef zeroext 0, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %1099 = load ptr, ptr @hws, align 4
  %1100 = getelementptr ptr, ptr %1099, i32 301
  store ptr %1098, ptr %1100, align 4
  %1101 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.337, ptr noundef nonnull @.str.267, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %471, i8 noundef zeroext 0, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %1102 = load ptr, ptr @hws, align 4
  %1103 = getelementptr ptr, ptr %1102, i32 305
  store ptr %1101, ptr %1103, align 4
  %1104 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.338, ptr noundef nonnull @.str.268, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %475, i8 noundef zeroext 0, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %1105 = load ptr, ptr @hws, align 4
  %1106 = getelementptr ptr, ptr %1105, i32 309
  store ptr %1104, ptr %1106, align 4
  %1107 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.339, ptr noundef nonnull @.str.269, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %479, i8 noundef zeroext 0, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %1108 = load ptr, ptr @hws, align 4
  %1109 = getelementptr ptr, ptr %1108, i32 313
  store ptr %1107, ptr %1109, align 4
  %1110 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.340, ptr noundef nonnull @.str.270, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %483, i8 noundef zeroext 0, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %1111 = load ptr, ptr @hws, align 4
  %1112 = getelementptr ptr, ptr %1111, i32 317
  store ptr %1110, ptr %1112, align 4
  %1113 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.341, ptr noundef nonnull @.str.271, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %487, i8 noundef zeroext 0, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %1114 = load ptr, ptr @hws, align 4
  %1115 = getelementptr ptr, ptr %1114, i32 321
  store ptr %1113, ptr %1115, align 4
  %1116 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.342, ptr noundef nonnull @.str.272, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %491, i8 noundef zeroext 0, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %1117 = load ptr, ptr @hws, align 4
  %1118 = getelementptr ptr, ptr %1117, i32 325
  store ptr %1116, ptr %1118, align 4
  %1119 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.343, ptr noundef nonnull @.str.273, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %495, i8 noundef zeroext 0, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %1120 = load ptr, ptr @hws, align 4
  %1121 = getelementptr ptr, ptr %1120, i32 329
  store ptr %1119, ptr %1121, align 4
  %1122 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.344, ptr noundef nonnull @.str.274, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %499, i8 noundef zeroext 0, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %1123 = load ptr, ptr @hws, align 4
  %1124 = getelementptr ptr, ptr %1123, i32 333
  store ptr %1122, ptr %1124, align 4
  %1125 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.345, ptr noundef nonnull @.str.275, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %503, i8 noundef zeroext 0, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %1126 = load ptr, ptr @hws, align 4
  %1127 = getelementptr ptr, ptr %1126, i32 337
  store ptr %1125, ptr %1127, align 4
  %1128 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.346, ptr noundef nonnull @.str.276, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %507, i8 noundef zeroext 0, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %1129 = load ptr, ptr @hws, align 4
  %1130 = getelementptr ptr, ptr %1129, i32 340
  store ptr %1128, ptr %1130, align 4
  %1131 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.347, ptr noundef nonnull @.str.277, ptr noundef null, ptr noundef null, i32 noundef 4100, ptr noundef %511, i8 noundef zeroext 0, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %1132 = load ptr, ptr @hws, align 4
  %1133 = getelementptr ptr, ptr %1132, i32 343
  store ptr %1131, ptr %1133, align 4
  %1134 = getelementptr i8, ptr %231, i32 16384
  %1135 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.348, ptr noundef nonnull @.str.278, i32 noundef 4100, ptr noundef %1134, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %1136 = load ptr, ptr @hws, align 4
  %1137 = getelementptr ptr, ptr %1136, i32 62
  store ptr %1135, ptr %1137, align 4
  %1138 = getelementptr i8, ptr %231, i32 16400
  %1139 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.349, ptr noundef nonnull @.str.279, i32 noundef 4100, ptr noundef %1138, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %1140 = load ptr, ptr @hws, align 4
  %1141 = getelementptr ptr, ptr %1140, i32 66
  store ptr %1139, ptr %1141, align 4
  %1142 = getelementptr i8, ptr %231, i32 16448
  %1143 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.350, ptr noundef nonnull @.str.280, i32 noundef 6148, ptr noundef %1142, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %1144 = load ptr, ptr @hws, align 4
  %1145 = getelementptr ptr, ptr %1144, i32 74
  store ptr %1143, ptr %1145, align 4
  %1146 = getelementptr i8, ptr %231, i32 16464
  %1147 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.351, ptr noundef nonnull @.str.281, i32 noundef 4100, ptr noundef %1146, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %1148 = load ptr, ptr @hws, align 4
  %1149 = getelementptr ptr, ptr %1148, i32 78
  store ptr %1147, ptr %1149, align 4
  %1150 = getelementptr i8, ptr %231, i32 16480
  %1151 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.352, ptr noundef nonnull @.str.282, i32 noundef 4100, ptr noundef %1150, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %1152 = load ptr, ptr @hws, align 4
  %1153 = getelementptr ptr, ptr %1152, i32 82
  store ptr %1151, ptr %1153, align 4
  %1154 = getelementptr i8, ptr %231, i32 16656
  %1155 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.353, ptr noundef nonnull @.str.350, i32 noundef 4100, ptr noundef %1154, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %1156 = load ptr, ptr @hws, align 4
  %1157 = getelementptr ptr, ptr %1156, i32 415
  store ptr %1155, ptr %1157, align 4
  %1158 = getelementptr i8, ptr %231, i32 16672
  %1159 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.354, ptr noundef nonnull @.str.284, i32 noundef 4100, ptr noundef %1158, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %1160 = load ptr, ptr @hws, align 4
  %1161 = getelementptr ptr, ptr %1160, i32 416
  store ptr %1159, ptr %1161, align 4
  %1162 = getelementptr i8, ptr %231, i32 16688
  %1163 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.355, ptr noundef nonnull @.str.286, i32 noundef 6148, ptr noundef %1162, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %1164 = load ptr, ptr @hws, align 4
  %1165 = getelementptr ptr, ptr %1164, i32 98
  store ptr %1163, ptr %1165, align 4
  %1166 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.356, ptr noundef nonnull @.str.149, i32 noundef 6148, ptr noundef %1162, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %1167 = load ptr, ptr @hws, align 4
  %1168 = getelementptr ptr, ptr %1167, i32 94
  store ptr %1166, ptr %1168, align 4
  %1169 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.357, ptr noundef nonnull @.str.287, i32 noundef 6148, ptr noundef %1162, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %1170 = load ptr, ptr @hws, align 4
  %1171 = getelementptr ptr, ptr %1170, i32 102
  store ptr %1169, ptr %1171, align 4
  %1172 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.358, ptr noundef nonnull @.str.288, i32 noundef 6148, ptr noundef %1162, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %1173 = load ptr, ptr @hws, align 4
  %1174 = getelementptr ptr, ptr %1173, i32 106
  store ptr %1172, ptr %1174, align 4
  %1175 = getelementptr i8, ptr %231, i32 16944
  %1176 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.359, ptr noundef nonnull @.str.285, i32 noundef 4100, ptr noundef %1175, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %1177 = load ptr, ptr @hws, align 4
  %1178 = getelementptr ptr, ptr %1177, i32 439
  store ptr %1176, ptr %1178, align 4
  %1179 = getelementptr i8, ptr %231, i32 16976
  %1180 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.360, ptr noundef nonnull @.str.285, i32 noundef 4100, ptr noundef %1179, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %1181 = load ptr, ptr @hws, align 4
  %1182 = getelementptr ptr, ptr %1181, i32 442
  store ptr %1180, ptr %1182, align 4
  %1183 = getelementptr i8, ptr %231, i32 17008
  %1184 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.361, ptr noundef nonnull @.str.285, i32 noundef 4100, ptr noundef %1183, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %1185 = load ptr, ptr @hws, align 4
  %1186 = getelementptr ptr, ptr %1185, i32 433
  store ptr %1184, ptr %1186, align 4
  %1187 = getelementptr i8, ptr %231, i32 16960
  %1188 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.362, ptr noundef nonnull @.str.285, i32 noundef 4100, ptr noundef %1187, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %1189 = load ptr, ptr @hws, align 4
  %1190 = getelementptr ptr, ptr %1189, i32 443
  store ptr %1188, ptr %1190, align 4
  %1191 = getelementptr i8, ptr %231, i32 18064
  %1192 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.363, ptr noundef nonnull @.str.289, i32 noundef 4100, ptr noundef %1191, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %1193 = load ptr, ptr @hws, align 4
  %1194 = getelementptr ptr, ptr %1193, i32 110
  store ptr %1192, ptr %1194, align 4
  %1195 = getelementptr i8, ptr %231, i32 17536
  %1196 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.364, ptr noundef nonnull @.str.284, i32 noundef 4100, ptr noundef %1195, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %1197 = load ptr, ptr @hws, align 4
  %1198 = getelementptr ptr, ptr %1197, i32 420
  store ptr %1196, ptr %1198, align 4
  %1199 = getelementptr i8, ptr %231, i32 17920
  %1200 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.365, ptr noundef nonnull @.str.290, i32 noundef 4100, ptr noundef %1199, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %1201 = load ptr, ptr @hws, align 4
  %1202 = getelementptr ptr, ptr %1201, i32 114
  store ptr %1200, ptr %1202, align 4
  %1203 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.366, ptr noundef nonnull @.str.291, i32 noundef 4100, ptr noundef %1199, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %1204 = load ptr, ptr @hws, align 4
  %1205 = getelementptr ptr, ptr %1204, i32 118
  store ptr %1203, ptr %1205, align 4
  %1206 = getelementptr i8, ptr %231, i32 17568
  %1207 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.367, ptr noundef nonnull @.str.292, i32 noundef 4100, ptr noundef %1206, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %1208 = load ptr, ptr @hws, align 4
  %1209 = getelementptr ptr, ptr %1208, i32 122
  store ptr %1207, ptr %1209, align 4
  %1210 = getelementptr i8, ptr %231, i32 17584
  %1211 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.368, ptr noundef nonnull @.str.293, i32 noundef 4100, ptr noundef %1210, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %1212 = load ptr, ptr @hws, align 4
  %1213 = getelementptr ptr, ptr %1212, i32 126
  store ptr %1211, ptr %1213, align 4
  %1214 = getelementptr i8, ptr %231, i32 17600
  %1215 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.369, ptr noundef nonnull @.str.350, i32 noundef 4100, ptr noundef %1214, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %1216 = load ptr, ptr @hws, align 4
  %1217 = getelementptr ptr, ptr %1216, i32 445
  store ptr %1215, ptr %1217, align 4
  %1218 = getelementptr i8, ptr %231, i32 18000
  %1219 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.370, ptr noundef nonnull @.str.294, i32 noundef 4100, ptr noundef %1218, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %1220 = load ptr, ptr @hws, align 4
  %1221 = getelementptr ptr, ptr %1220, i32 130
  store ptr %1219, ptr %1221, align 4
  %1222 = getelementptr i8, ptr %231, i32 17984
  %1223 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.371, ptr noundef nonnull @.str.295, i32 noundef 4100, ptr noundef %1222, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %1224 = load ptr, ptr @hws, align 4
  %1225 = getelementptr ptr, ptr %1224, i32 134
  store ptr %1223, ptr %1225, align 4
  %1226 = getelementptr i8, ptr %231, i32 18016
  %1227 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.372, ptr noundef nonnull @.str.296, i32 noundef 4100, ptr noundef %1226, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %1228 = load ptr, ptr @hws, align 4
  %1229 = getelementptr ptr, ptr %1228, i32 138
  store ptr %1227, ptr %1229, align 4
  %1230 = getelementptr i8, ptr %231, i32 18176
  %1231 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.373, ptr noundef nonnull @.str.282, i32 noundef 4100, ptr noundef %1230, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_enet1) #4
  %1232 = load ptr, ptr @hws, align 4
  %1233 = getelementptr ptr, ptr %1232, i32 158
  store ptr %1231, ptr %1233, align 4
  %1234 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.374, ptr noundef nonnull @.str.302, i32 noundef 4100, ptr noundef %1230, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_enet1) #4
  %1235 = load ptr, ptr @hws, align 4
  %1236 = getelementptr ptr, ptr %1235, i32 162
  store ptr %1234, ptr %1236, align 4
  %1237 = getelementptr i8, ptr %231, i32 18192
  %1238 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.375, ptr noundef nonnull @.str.282, i32 noundef 4100, ptr noundef %1237, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_enet2) #4
  %1239 = load ptr, ptr @hws, align 4
  %1240 = getelementptr ptr, ptr %1239, i32 166
  store ptr %1238, ptr %1240, align 4
  %1241 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.376, ptr noundef nonnull @.str.304, i32 noundef 4100, ptr noundef %1237, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_enet2) #4
  %1242 = load ptr, ptr @hws, align 4
  %1243 = getelementptr ptr, ptr %1242, i32 170
  store ptr %1241, ptr %1243, align 4
  %1244 = getelementptr i8, ptr %231, i32 18624
  %1245 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.377, ptr noundef nonnull @.str.297, i32 noundef 4100, ptr noundef %1244, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_sai1) #4
  %1246 = load ptr, ptr @hws, align 4
  %1247 = getelementptr ptr, ptr %1246, i32 142
  store ptr %1245, ptr %1247, align 4
  %1248 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.378, ptr noundef nonnull @.str.285, i32 noundef 4100, ptr noundef %1244, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_sai1) #4
  %1249 = load ptr, ptr @hws, align 4
  %1250 = getelementptr ptr, ptr %1249, i32 426
  store ptr %1248, ptr %1250, align 4
  %1251 = getelementptr i8, ptr %231, i32 18640
  %1252 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.379, ptr noundef nonnull @.str.298, i32 noundef 4100, ptr noundef %1251, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_sai2) #4
  %1253 = load ptr, ptr @hws, align 4
  %1254 = getelementptr ptr, ptr %1253, i32 146
  store ptr %1252, ptr %1254, align 4
  %1255 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.380, ptr noundef nonnull @.str.285, i32 noundef 4100, ptr noundef %1251, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_sai2) #4
  %1256 = load ptr, ptr @hws, align 4
  %1257 = getelementptr ptr, ptr %1256, i32 427
  store ptr %1255, ptr %1257, align 4
  %1258 = getelementptr i8, ptr %231, i32 18656
  %1259 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.381, ptr noundef nonnull @.str.299, i32 noundef 4100, ptr noundef %1258, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_sai3) #4
  %1260 = load ptr, ptr @hws, align 4
  %1261 = getelementptr ptr, ptr %1260, i32 150
  store ptr %1259, ptr %1261, align 4
  %1262 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.382, ptr noundef nonnull @.str.285, i32 noundef 4100, ptr noundef %1258, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_sai3) #4
  %1263 = load ptr, ptr @hws, align 4
  %1264 = getelementptr ptr, ptr %1263, i32 428
  store ptr %1262, ptr %1264, align 4
  %1265 = getelementptr i8, ptr %231, i32 17616
  %1266 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.383, ptr noundef nonnull @.str.300, i32 noundef 4100, ptr noundef %1265, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %1267 = load ptr, ptr @hws, align 4
  %1268 = getelementptr ptr, ptr %1267, i32 154
  store ptr %1266, ptr %1268, align 4
  %1269 = getelementptr i8, ptr %231, i32 16736
  %1270 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.384, ptr noundef nonnull @.str.306, i32 noundef 4100, ptr noundef %1269, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %1271 = load ptr, ptr @hws, align 4
  %1272 = getelementptr ptr, ptr %1271, i32 178
  store ptr %1270, ptr %1272, align 4
  %1273 = getelementptr i8, ptr %231, i32 16704
  %1274 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.385, ptr noundef nonnull @.str.307, i32 noundef 4100, ptr noundef %1273, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_nand) #4
  %1275 = load ptr, ptr @hws, align 4
  %1276 = getelementptr ptr, ptr %1275, i32 440
  store ptr %1274, ptr %1276, align 4
  %1277 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.386, ptr noundef nonnull @.str.283, i32 noundef 4100, ptr noundef %1273, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_nand) #4
  %1278 = load ptr, ptr @hws, align 4
  %1279 = getelementptr ptr, ptr %1278, i32 441
  store ptr %1277, ptr %1279, align 4
  %1280 = getelementptr i8, ptr %231, i32 16720
  %1281 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.387, ptr noundef nonnull @.str.308, i32 noundef 4100, ptr noundef %1280, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %1282 = load ptr, ptr @hws, align 4
  %1283 = getelementptr ptr, ptr %1282, i32 186
  store ptr %1281, ptr %1283, align 4
  %1284 = getelementptr i8, ptr %231, i32 18112
  %1285 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.388, ptr noundef nonnull @.str.309, i32 noundef 4100, ptr noundef %1284, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %1286 = load ptr, ptr @hws, align 4
  %1287 = getelementptr ptr, ptr %1286, i32 190
  store ptr %1285, ptr %1287, align 4
  %1288 = getelementptr i8, ptr %231, i32 18128
  %1289 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.389, ptr noundef nonnull @.str.310, i32 noundef 4100, ptr noundef %1288, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %1290 = load ptr, ptr @hws, align 4
  %1291 = getelementptr ptr, ptr %1290, i32 194
  store ptr %1289, ptr %1291, align 4
  %1292 = getelementptr i8, ptr %231, i32 18144
  %1293 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.390, ptr noundef nonnull @.str.311, i32 noundef 4100, ptr noundef %1292, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %1294 = load ptr, ptr @hws, align 4
  %1295 = getelementptr ptr, ptr %1294, i32 198
  store ptr %1293, ptr %1295, align 4
  %1296 = getelementptr i8, ptr %231, i32 18240
  %1297 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.391, ptr noundef nonnull @.str.312, i32 noundef 4100, ptr noundef %1296, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %1298 = load ptr, ptr @hws, align 4
  %1299 = getelementptr ptr, ptr %1298, i32 202
  store ptr %1297, ptr %1299, align 4
  %1300 = getelementptr i8, ptr %231, i32 18256
  %1301 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.392, ptr noundef nonnull @.str.313, i32 noundef 4100, ptr noundef %1300, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %1302 = load ptr, ptr @hws, align 4
  %1303 = getelementptr ptr, ptr %1302, i32 206
  store ptr %1301, ptr %1303, align 4
  %1304 = getelementptr i8, ptr %231, i32 18560
  %1305 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.393, ptr noundef nonnull @.str.314, i32 noundef 4100, ptr noundef %1304, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %1306 = load ptr, ptr @hws, align 4
  %1307 = getelementptr ptr, ptr %1306, i32 210
  store ptr %1305, ptr %1307, align 4
  %1308 = getelementptr i8, ptr %231, i32 18576
  %1309 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.394, ptr noundef nonnull @.str.315, i32 noundef 4100, ptr noundef %1308, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %1310 = load ptr, ptr @hws, align 4
  %1311 = getelementptr ptr, ptr %1310, i32 214
  store ptr %1309, ptr %1311, align 4
  %1312 = getelementptr i8, ptr %231, i32 18592
  %1313 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.395, ptr noundef nonnull @.str.316, i32 noundef 4100, ptr noundef %1312, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %1314 = load ptr, ptr @hws, align 4
  %1315 = getelementptr ptr, ptr %1314, i32 218
  store ptr %1313, ptr %1315, align 4
  %1316 = getelementptr i8, ptr %231, i32 18608
  %1317 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.396, ptr noundef nonnull @.str.317, i32 noundef 4100, ptr noundef %1316, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %1318 = load ptr, ptr @hws, align 4
  %1319 = getelementptr ptr, ptr %1318, i32 222
  store ptr %1317, ptr %1319, align 4
  %1320 = getelementptr i8, ptr %231, i32 18752
  %1321 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.397, ptr noundef nonnull @.str.318, i32 noundef 4100, ptr noundef %1320, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %1322 = load ptr, ptr @hws, align 4
  %1323 = getelementptr ptr, ptr %1322, i32 226
  store ptr %1321, ptr %1323, align 4
  %1324 = getelementptr i8, ptr %231, i32 18768
  %1325 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.398, ptr noundef nonnull @.str.319, i32 noundef 4100, ptr noundef %1324, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %1326 = load ptr, ptr @hws, align 4
  %1327 = getelementptr ptr, ptr %1326, i32 230
  store ptr %1325, ptr %1327, align 4
  %1328 = getelementptr i8, ptr %231, i32 18784
  %1329 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.399, ptr noundef nonnull @.str.320, i32 noundef 4100, ptr noundef %1328, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %1330 = load ptr, ptr @hws, align 4
  %1331 = getelementptr ptr, ptr %1330, i32 234
  store ptr %1329, ptr %1331, align 4
  %1332 = getelementptr i8, ptr %231, i32 18800
  %1333 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.400, ptr noundef nonnull @.str.321, i32 noundef 4100, ptr noundef %1332, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %1334 = load ptr, ptr @hws, align 4
  %1335 = getelementptr ptr, ptr %1334, i32 238
  store ptr %1333, ptr %1335, align 4
  %1336 = getelementptr i8, ptr %231, i32 18816
  %1337 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.401, ptr noundef nonnull @.str.322, i32 noundef 4100, ptr noundef %1336, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %1338 = load ptr, ptr @hws, align 4
  %1339 = getelementptr ptr, ptr %1338, i32 242
  store ptr %1337, ptr %1339, align 4
  %1340 = getelementptr i8, ptr %231, i32 18832
  %1341 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.402, ptr noundef nonnull @.str.323, i32 noundef 4100, ptr noundef %1340, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %1342 = load ptr, ptr @hws, align 4
  %1343 = getelementptr ptr, ptr %1342, i32 246
  store ptr %1341, ptr %1343, align 4
  %1344 = getelementptr i8, ptr %231, i32 18848
  %1345 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.403, ptr noundef nonnull @.str.324, i32 noundef 4100, ptr noundef %1344, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %1346 = load ptr, ptr @hws, align 4
  %1347 = getelementptr ptr, ptr %1346, i32 250
  store ptr %1345, ptr %1347, align 4
  %1348 = getelementptr i8, ptr %231, i32 18304
  %1349 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.404, ptr noundef nonnull @.str.325, i32 noundef 4100, ptr noundef %1348, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %1350 = load ptr, ptr @hws, align 4
  %1351 = getelementptr ptr, ptr %1350, i32 254
  store ptr %1349, ptr %1351, align 4
  %1352 = getelementptr i8, ptr %231, i32 18320
  %1353 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.405, ptr noundef nonnull @.str.326, i32 noundef 4100, ptr noundef %1352, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %1354 = load ptr, ptr @hws, align 4
  %1355 = getelementptr ptr, ptr %1354, i32 258
  store ptr %1353, ptr %1355, align 4
  %1356 = getelementptr i8, ptr %231, i32 18336
  %1357 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.406, ptr noundef nonnull @.str.327, i32 noundef 4100, ptr noundef %1356, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %1358 = load ptr, ptr @hws, align 4
  %1359 = getelementptr ptr, ptr %1358, i32 262
  store ptr %1357, ptr %1359, align 4
  %1360 = getelementptr i8, ptr %231, i32 18352
  %1361 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.407, ptr noundef nonnull @.str.328, i32 noundef 4100, ptr noundef %1360, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %1362 = load ptr, ptr @hws, align 4
  %1363 = getelementptr ptr, ptr %1362, i32 266
  store ptr %1361, ptr %1363, align 4
  %1364 = getelementptr i8, ptr %231, i32 18496
  %1365 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.408, ptr noundef nonnull @.str.329, i32 noundef 4100, ptr noundef %1364, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %1366 = load ptr, ptr @hws, align 4
  %1367 = getelementptr ptr, ptr %1366, i32 270
  store ptr %1365, ptr %1367, align 4
  %1368 = getelementptr i8, ptr %231, i32 18512
  %1369 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.409, ptr noundef nonnull @.str.330, i32 noundef 4100, ptr noundef %1368, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %1370 = load ptr, ptr @hws, align 4
  %1371 = getelementptr ptr, ptr %1370, i32 274
  store ptr %1369, ptr %1371, align 4
  %1372 = getelementptr i8, ptr %231, i32 18528
  %1373 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.410, ptr noundef nonnull @.str.331, i32 noundef 4100, ptr noundef %1372, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %1374 = load ptr, ptr @hws, align 4
  %1375 = getelementptr ptr, ptr %1374, i32 278
  store ptr %1373, ptr %1375, align 4
  %1376 = getelementptr i8, ptr %231, i32 18544
  %1377 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.411, ptr noundef nonnull @.str.332, i32 noundef 4100, ptr noundef %1376, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %1378 = load ptr, ptr @hws, align 4
  %1379 = getelementptr ptr, ptr %1378, i32 282
  store ptr %1377, ptr %1379, align 4
  %1380 = getelementptr i8, ptr %231, i32 18432
  %1381 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.412, ptr noundef nonnull @.str.333, i32 noundef 4100, ptr noundef %1380, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %1382 = load ptr, ptr @hws, align 4
  %1383 = getelementptr ptr, ptr %1382, i32 286
  store ptr %1381, ptr %1383, align 4
  %1384 = getelementptr i8, ptr %231, i32 18448
  %1385 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.413, ptr noundef nonnull @.str.334, i32 noundef 4100, ptr noundef %1384, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %1386 = load ptr, ptr @hws, align 4
  %1387 = getelementptr ptr, ptr %1386, i32 290
  store ptr %1385, ptr %1387, align 4
  %1388 = getelementptr i8, ptr %231, i32 18688
  %1389 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.414, ptr noundef nonnull @.str.335, i32 noundef 4100, ptr noundef %1388, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %1390 = load ptr, ptr @hws, align 4
  %1391 = getelementptr ptr, ptr %1390, i32 294
  store ptr %1389, ptr %1391, align 4
  %1392 = getelementptr i8, ptr %231, i32 18704
  %1393 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.415, ptr noundef nonnull @.str.336, i32 noundef 4100, ptr noundef %1392, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %1394 = load ptr, ptr @hws, align 4
  %1395 = getelementptr ptr, ptr %1394, i32 298
  store ptr %1393, ptr %1395, align 4
  %1396 = getelementptr i8, ptr %231, i32 18368
  %1397 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.416, ptr noundef nonnull @.str.337, i32 noundef 4100, ptr noundef %1396, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %1398 = load ptr, ptr @hws, align 4
  %1399 = getelementptr ptr, ptr %1398, i32 302
  store ptr %1397, ptr %1399, align 4
  %1400 = getelementptr i8, ptr %231, i32 18384
  %1401 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.417, ptr noundef nonnull @.str.338, i32 noundef 4100, ptr noundef %1400, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %1402 = load ptr, ptr @hws, align 4
  %1403 = getelementptr ptr, ptr %1402, i32 306
  store ptr %1401, ptr %1403, align 4
  %1404 = getelementptr i8, ptr %231, i32 18400
  %1405 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.418, ptr noundef nonnull @.str.339, i32 noundef 4100, ptr noundef %1404, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %1406 = load ptr, ptr @hws, align 4
  %1407 = getelementptr ptr, ptr %1406, i32 310
  store ptr %1405, ptr %1407, align 4
  %1408 = getelementptr i8, ptr %231, i32 18416
  %1409 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.419, ptr noundef nonnull @.str.340, i32 noundef 4100, ptr noundef %1408, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %1410 = load ptr, ptr @hws, align 4
  %1411 = getelementptr ptr, ptr %1410, i32 314
  store ptr %1409, ptr %1411, align 4
  %1412 = getelementptr i8, ptr %231, i32 17152
  %1413 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.420, ptr noundef nonnull @.str.341, i32 noundef 4100, ptr noundef %1412, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %1414 = load ptr, ptr @hws, align 4
  %1415 = getelementptr ptr, ptr %1414, i32 318
  store ptr %1413, ptr %1415, align 4
  %1416 = getelementptr i8, ptr %231, i32 18880
  %1417 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.421, ptr noundef nonnull @.str.342, i32 noundef 4100, ptr noundef %1416, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %1418 = load ptr, ptr @hws, align 4
  %1419 = getelementptr ptr, ptr %1418, i32 322
  store ptr %1417, ptr %1419, align 4
  %1420 = getelementptr i8, ptr %231, i32 18896
  %1421 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.422, ptr noundef nonnull @.str.342, i32 noundef 4100, ptr noundef %1420, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %1422 = load ptr, ptr @hws, align 4
  %1423 = getelementptr ptr, ptr %1422, i32 417
  store ptr %1421, ptr %1423, align 4
  %1424 = getelementptr i8, ptr %231, i32 18912
  %1425 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.423, ptr noundef nonnull @.str.342, i32 noundef 4100, ptr noundef %1424, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %1426 = load ptr, ptr @hws, align 4
  %1427 = getelementptr ptr, ptr %1426, i32 418
  store ptr %1425, ptr %1427, align 4
  %1428 = getelementptr i8, ptr %231, i32 18928
  %1429 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.424, ptr noundef nonnull @.str.342, i32 noundef 4100, ptr noundef %1428, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %1430 = load ptr, ptr @hws, align 4
  %1431 = getelementptr ptr, ptr %1430, i32 419
  store ptr %1429, ptr %1431, align 4
  %1432 = getelementptr i8, ptr %231, i32 19104
  %1433 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.425, ptr noundef nonnull @.str.285, i32 noundef 4100, ptr noundef %1432, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %1434 = load ptr, ptr @hws, align 4
  %1435 = getelementptr ptr, ptr %1434, i32 444
  store ptr %1433, ptr %1435, align 4
  %1436 = getelementptr i8, ptr %231, i32 17552
  %1437 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.426, ptr noundef nonnull @.str.343, i32 noundef 4100, ptr noundef %1436, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %1438 = load ptr, ptr @hws, align 4
  %1439 = getelementptr ptr, ptr %1438, i32 326
  store ptr %1437, ptr %1439, align 4
  %1440 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.427, ptr noundef nonnull @.str.344, i32 noundef 4100, ptr noundef %1352, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %1441 = load ptr, ptr @hws, align 4
  %1442 = getelementptr ptr, ptr %1441, i32 330
  store ptr %1440, ptr %1442, align 4
  %1443 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.428, ptr noundef nonnull @.str.345, i32 noundef 4100, ptr noundef %1356, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %1444 = load ptr, ptr @hws, align 4
  %1445 = getelementptr ptr, ptr %1444, i32 334
  store ptr %1443, ptr %1445, align 4
  %1446 = getelementptr i8, ptr %231, i32 18048
  %1447 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.429, ptr noundef nonnull @.str.284, i32 noundef 4100, ptr noundef %1446, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %1448 = load ptr, ptr @hws, align 4
  %1449 = getelementptr ptr, ptr %1448, i32 422
  store ptr %1447, ptr %1449, align 4
  %1450 = getelementptr i8, ptr %231, i32 18080
  %1451 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.430, ptr noundef nonnull @.str.431, i32 noundef 4100, ptr noundef %1450, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %1452 = load ptr, ptr @hws, align 4
  %1453 = getelementptr ptr, ptr %1452, i32 423
  store ptr %1451, ptr %1453, align 4
  %1454 = getelementptr i8, ptr %231, i32 18096
  %1455 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.432, ptr noundef nonnull @.str.433, i32 noundef 4100, ptr noundef %1454, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %1456 = load ptr, ptr @hws, align 4
  %1457 = getelementptr ptr, ptr %1456, i32 424
  store ptr %1455, ptr %1457, align 4
  %1458 = getelementptr i8, ptr %231, i32 16896
  %1459 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.434, ptr noundef nonnull @.str.285, i32 noundef 4100, ptr noundef %1458, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %1460 = load ptr, ptr @hws, align 4
  %1461 = getelementptr ptr, ptr %1460, i32 436
  store ptr %1459, ptr %1461, align 4
  %1462 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.435, ptr noundef nonnull @.str.2, i32 noundef 4, i32 noundef 1, i32 noundef 8) #4
  %1463 = load ptr, ptr @hws, align 4
  %1464 = getelementptr ptr, ptr %1463, i32 414
  store ptr %1462, ptr %1464, align 4
  %1465 = getelementptr ptr, ptr %1463, i32 62
  %1466 = load ptr, ptr %1465, align 4
  %1467 = getelementptr inbounds %struct.clk_hw, ptr %1466, i32 0, i32 1
  %1468 = load ptr, ptr %1467, align 4
  %1469 = getelementptr ptr, ptr %1463, i32 63
  %1470 = load ptr, ptr %1469, align 4
  %1471 = getelementptr inbounds %struct.clk_hw, ptr %1470, i32 0, i32 1
  %1472 = load ptr, ptr %1471, align 4
  %1473 = getelementptr ptr, ptr %1463, i32 2
  %1474 = load ptr, ptr %1473, align 4
  %1475 = getelementptr inbounds %struct.clk_hw, ptr %1474, i32 0, i32 1
  %1476 = load ptr, ptr %1475, align 4
  %1477 = getelementptr ptr, ptr %1463, i32 6
  %1478 = load ptr, ptr %1477, align 4
  %1479 = getelementptr inbounds %struct.clk_hw, ptr %1478, i32 0, i32 1
  %1480 = load ptr, ptr %1479, align 4
  %1481 = tail call ptr @imx_clk_hw_cpu(ptr noundef nonnull @.str.436, ptr noundef nonnull @.str.348, ptr noundef %1468, ptr noundef %1472, ptr noundef %1476, ptr noundef %1480) #4
  %1482 = load ptr, ptr @hws, align 4
  %1483 = getelementptr ptr, ptr %1482, i32 437
  store ptr %1481, ptr %1483, align 4
  tail call void @imx_check_clk_hws(ptr noundef %1482, i32 noundef 446) #4
  %1484 = load ptr, ptr @clk_hw_data, align 4
  %1485 = tail call i32 @of_clk_add_hw_provider(ptr noundef %0, ptr noundef nonnull @of_clk_hw_onecell_get, ptr noundef %1484) #4
  %1486 = load ptr, ptr @hws, align 4
  %1487 = getelementptr ptr, ptr %1486, i32 4
  %1488 = load ptr, ptr %1487, align 4
  %1489 = getelementptr inbounds %struct.clk_hw, ptr %1488, i32 0, i32 1
  %1490 = load ptr, ptr %1489, align 4
  %1491 = getelementptr ptr, ptr %1486, i32 1
  %1492 = load ptr, ptr %1491, align 4
  %1493 = getelementptr inbounds %struct.clk_hw, ptr %1492, i32 0, i32 1
  %1494 = load ptr, ptr %1493, align 4
  %1495 = tail call i32 @clk_set_parent(ptr noundef %1490, ptr noundef %1494) #4
  %1496 = load ptr, ptr @hws, align 4
  %1497 = getelementptr ptr, ptr %1496, i32 50
  %1498 = load ptr, ptr %1497, align 4
  %1499 = getelementptr inbounds %struct.clk_hw, ptr %1498, i32 0, i32 1
  %1500 = load ptr, ptr %1499, align 4
  %1501 = getelementptr ptr, ptr %1496, i32 47
  %1502 = load ptr, ptr %1501, align 4
  %1503 = getelementptr inbounds %struct.clk_hw, ptr %1502, i32 0, i32 1
  %1504 = load ptr, ptr %1503, align 4
  %1505 = tail call i32 @clk_set_parent(ptr noundef %1500, ptr noundef %1504) #4
  %1506 = load ptr, ptr @hws, align 4
  %1507 = getelementptr ptr, ptr %1506, i32 8
  %1508 = load ptr, ptr %1507, align 4
  %1509 = getelementptr inbounds %struct.clk_hw, ptr %1508, i32 0, i32 1
  %1510 = load ptr, ptr %1509, align 4
  %1511 = getelementptr ptr, ptr %1506, i32 5
  %1512 = load ptr, ptr %1511, align 4
  %1513 = getelementptr inbounds %struct.clk_hw, ptr %1512, i32 0, i32 1
  %1514 = load ptr, ptr %1513, align 4
  %1515 = tail call i32 @clk_set_parent(ptr noundef %1510, ptr noundef %1514) #4
  %1516 = load ptr, ptr @hws, align 4
  %1517 = getelementptr ptr, ptr %1516, i32 32
  %1518 = load ptr, ptr %1517, align 4
  %1519 = getelementptr inbounds %struct.clk_hw, ptr %1518, i32 0, i32 1
  %1520 = load ptr, ptr %1519, align 4
  %1521 = getelementptr ptr, ptr %1516, i32 29
  %1522 = load ptr, ptr %1521, align 4
  %1523 = getelementptr inbounds %struct.clk_hw, ptr %1522, i32 0, i32 1
  %1524 = load ptr, ptr %1523, align 4
  %1525 = tail call i32 @clk_set_parent(ptr noundef %1520, ptr noundef %1524) #4
  %1526 = load ptr, ptr @hws, align 4
  %1527 = getelementptr ptr, ptr %1526, i32 56
  %1528 = load ptr, ptr %1527, align 4
  %1529 = getelementptr inbounds %struct.clk_hw, ptr %1528, i32 0, i32 1
  %1530 = load ptr, ptr %1529, align 4
  %1531 = getelementptr ptr, ptr %1526, i32 53
  %1532 = load ptr, ptr %1531, align 4
  %1533 = getelementptr inbounds %struct.clk_hw, ptr %1532, i32 0, i32 1
  %1534 = load ptr, ptr %1533, align 4
  %1535 = tail call i32 @clk_set_parent(ptr noundef %1530, ptr noundef %1534) #4
  %1536 = load ptr, ptr @hws, align 4
  %1537 = getelementptr ptr, ptr %1536, i32 60
  %1538 = load ptr, ptr %1537, align 4
  %1539 = getelementptr inbounds %struct.clk_hw, ptr %1538, i32 0, i32 1
  %1540 = load ptr, ptr %1539, align 4
  %1541 = getelementptr ptr, ptr %1536, i32 58
  %1542 = load ptr, ptr %1541, align 4
  %1543 = getelementptr inbounds %struct.clk_hw, ptr %1542, i32 0, i32 1
  %1544 = load ptr, ptr %1543, align 4
  %1545 = tail call i32 @clk_set_parent(ptr noundef %1540, ptr noundef %1544) #4
  %1546 = load ptr, ptr @hws, align 4
  %1547 = getelementptr ptr, ptr %1546, i32 135
  %1548 = load ptr, ptr %1547, align 4
  %1549 = getelementptr inbounds %struct.clk_hw, ptr %1548, i32 0, i32 1
  %1550 = load ptr, ptr %1549, align 4
  %1551 = getelementptr ptr, ptr %1546, i32 24
  %1552 = load ptr, ptr %1551, align 4
  %1553 = getelementptr inbounds %struct.clk_hw, ptr %1552, i32 0, i32 1
  %1554 = load ptr, ptr %1553, align 4
  %1555 = tail call i32 @clk_set_parent(ptr noundef %1550, ptr noundef %1554) #4
  %1556 = load ptr, ptr @hws, align 4
  %1557 = getelementptr ptr, ptr %1556, i32 303
  %1558 = load ptr, ptr %1557, align 4
  %1559 = getelementptr inbounds %struct.clk_hw, ptr %1558, i32 0, i32 1
  %1560 = load ptr, ptr %1559, align 4
  %1561 = load ptr, ptr %1556, align 4
  %1562 = getelementptr inbounds %struct.clk_hw, ptr %1561, i32 0, i32 1
  %1563 = load ptr, ptr %1562, align 4
  %1564 = tail call i32 @clk_set_parent(ptr noundef %1560, ptr noundef %1563) #4
  %1565 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.431, ptr noundef nonnull @.str.2, i32 noundef 4, i32 noundef 20, i32 noundef 1) #4
  %1566 = load ptr, ptr @hws, align 4
  %1567 = getelementptr ptr, ptr %1566, i32 421
  store ptr %1565, ptr %1567, align 4
  %1568 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.433, ptr noundef nonnull @.str.2, i32 noundef 4, i32 noundef 20, i32 noundef 1) #4
  %1569 = load ptr, ptr @hws, align 4
  %1570 = getelementptr ptr, ptr %1569, i32 61
  store ptr %1568, ptr %1570, align 4
  tail call void @imx_register_uart_clocks(i32 noundef 7) #4
  br label %1571

1571:                                             ; preds = %234, %5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @imx_obtain_fixed_clk_hw(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @imx_clk_hw_pllv3(i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_hw_register_divider(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @imx_clk_hw_pfd(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @imx_clk_hw_gate_exclusive(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @imx_clk_hw_cpu(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @imx_check_clk_hws(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_hw_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_hw_onecell_get(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_parent(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @imx_register_uart_clocks(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_hw_register_fixed_rate(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_hw_register_mux(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_hw_register_gate(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_register_fixed_factor(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_register_gate2(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!8 = !{!"branch_weights", i32 1, i32 2000}
