; ModuleID = '/llk/IR/drivers/clk/imx/clk-imx6q.c_pt.bc'
source_filename = "../drivers/clk/imx/clk-imx6q.c"
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
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.clk_hw_onecell_data = type { i32, [0 x ptr] }
%struct.clk_hw = type { ptr, ptr, ptr }

@__of_table_imx6q = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx6q-ccm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx6q_clocks_init }, section "__clk_of_table", align 4
@clk_hw_data = internal unnamed_addr global ptr null, align 4
@.str = private unnamed_addr constant [28 x i8] c"drivers/clk/imx/clk-imx6q.c\00", align 1
@hws = internal unnamed_addr global ptr null, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"dummy\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"ckil\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"ckih1\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"osc\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"anaclk1\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"anaclk2\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"fsl,imx6q-anatop\00", align 1
@post_div_table = internal global [4 x %struct.clk_div_table] [%struct.clk_div_table { i32 2, i32 1 }, %struct.clk_div_table { i32 1, i32 2 }, %struct.clk_div_table { i32 0, i32 4 }, %struct.clk_div_table zeroinitializer], align 4
@video_div_table = internal global [5 x %struct.clk_div_table] [%struct.clk_div_table { i32 0, i32 1 }, %struct.clk_div_table { i32 1, i32 2 }, %struct.clk_div_table { i32 2, i32 1 }, %struct.clk_div_table { i32 3, i32 4 }, %struct.clk_div_table zeroinitializer], align 4
@.str.8 = private unnamed_addr constant [16 x i8] c"pll1_bypass_src\00", align 1
@pll_bypass_src_sels = internal global [4 x ptr] [ptr @.str.4, ptr @.str.49, ptr @.str.50, ptr @.str.1], align 4
@.str.9 = private unnamed_addr constant [16 x i8] c"pll2_bypass_src\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"pll3_bypass_src\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"pll4_bypass_src\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"pll5_bypass_src\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"pll6_bypass_src\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"pll7_bypass_src\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"pll1\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"pll2\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"pll3\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"pll4\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"pll5\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"pll6\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"pll7\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"pll1_bypass\00", align 1
@pll1_bypass_sels = internal global [2 x ptr] [ptr @.str.15, ptr @.str.8], align 4
@.str.23 = private unnamed_addr constant [12 x i8] c"pll2_bypass\00", align 1
@pll2_bypass_sels = internal global [2 x ptr] [ptr @.str.16, ptr @.str.9], align 4
@.str.24 = private unnamed_addr constant [12 x i8] c"pll3_bypass\00", align 1
@pll3_bypass_sels = internal global [2 x ptr] [ptr @.str.17, ptr @.str.10], align 4
@.str.25 = private unnamed_addr constant [12 x i8] c"pll4_bypass\00", align 1
@pll4_bypass_sels = internal global [2 x ptr] [ptr @.str.18, ptr @.str.11], align 4
@.str.26 = private unnamed_addr constant [12 x i8] c"pll5_bypass\00", align 1
@pll5_bypass_sels = internal global [2 x ptr] [ptr @.str.19, ptr @.str.12], align 4
@.str.27 = private unnamed_addr constant [12 x i8] c"pll6_bypass\00", align 1
@pll6_bypass_sels = internal global [2 x ptr] [ptr @.str.20, ptr @.str.13], align 4
@.str.28 = private unnamed_addr constant [12 x i8] c"pll7_bypass\00", align 1
@pll7_bypass_sels = internal global [2 x ptr] [ptr @.str.21, ptr @.str.14], align 4
@.str.29 = private unnamed_addr constant [9 x i8] c"pll1_sys\00", align 1
@.str.30 = private unnamed_addr constant [9 x i8] c"pll2_bus\00", align 1
@.str.31 = private unnamed_addr constant [13 x i8] c"pll3_usb_otg\00", align 1
@.str.32 = private unnamed_addr constant [11 x i8] c"pll4_audio\00", align 1
@.str.33 = private unnamed_addr constant [11 x i8] c"pll5_video\00", align 1
@.str.34 = private unnamed_addr constant [10 x i8] c"pll6_enet\00", align 1
@.str.35 = private unnamed_addr constant [14 x i8] c"pll7_usb_host\00", align 1
@.str.36 = private unnamed_addr constant [8 x i8] c"usbphy1\00", align 1
@.str.37 = private unnamed_addr constant [8 x i8] c"usbphy2\00", align 1
@.str.38 = private unnamed_addr constant [13 x i8] c"usbphy1_gate\00", align 1
@.str.39 = private unnamed_addr constant [13 x i8] c"usbphy2_gate\00", align 1
@.str.40 = private unnamed_addr constant [9 x i8] c"sata_ref\00", align 1
@.str.41 = private unnamed_addr constant [9 x i8] c"pcie_ref\00", align 1
@.str.42 = private unnamed_addr constant [9 x i8] c"enet_ref\00", align 1
@clk_enet_ref_table = internal global [5 x %struct.clk_div_table] [%struct.clk_div_table { i32 0, i32 20 }, %struct.clk_div_table { i32 1, i32 10 }, %struct.clk_div_table { i32 2, i32 5 }, %struct.clk_div_table { i32 3, i32 4 }, %struct.clk_div_table zeroinitializer], align 4
@imx_ccm_lock = external dso_local global %struct.spinlock, align 4
@.str.43 = private unnamed_addr constant [14 x i8] c"sata_ref_100m\00", align 1
@.str.44 = private unnamed_addr constant [14 x i8] c"pcie_ref_125m\00", align 1
@.str.45 = private unnamed_addr constant [10 x i8] c"lvds1_sel\00", align 1
@lvds_sels = internal global [19 x ptr] [ptr @.str.1, ptr @.str.1, ptr @.str.1, ptr @.str.1, ptr @.str.1, ptr @.str.1, ptr @.str.32, ptr @.str.33, ptr @.str.273, ptr @.str.42, ptr @.str.44, ptr @.str.43, ptr @.str.36, ptr @.str.37, ptr @.str.1, ptr @.str.1, ptr @.str.1, ptr @.str.1, ptr @.str.4], align 4
@.str.46 = private unnamed_addr constant [10 x i8] c"lvds2_sel\00", align 1
@.str.47 = private unnamed_addr constant [11 x i8] c"lvds1_gate\00", align 1
@.str.48 = private unnamed_addr constant [11 x i8] c"lvds2_gate\00", align 1
@.str.49 = private unnamed_addr constant [9 x i8] c"lvds1_in\00", align 1
@.str.50 = private unnamed_addr constant [9 x i8] c"lvds2_in\00", align 1
@.str.51 = private unnamed_addr constant [15 x i8] c"pll2_pfd0_352m\00", align 1
@.str.52 = private unnamed_addr constant [15 x i8] c"pll2_pfd1_594m\00", align 1
@.str.53 = private unnamed_addr constant [15 x i8] c"pll2_pfd2_396m\00", align 1
@.str.54 = private unnamed_addr constant [15 x i8] c"pll3_pfd0_720m\00", align 1
@.str.55 = private unnamed_addr constant [15 x i8] c"pll3_pfd1_540m\00", align 1
@.str.56 = private unnamed_addr constant [15 x i8] c"pll3_pfd2_508m\00", align 1
@.str.57 = private unnamed_addr constant [15 x i8] c"pll3_pfd3_454m\00", align 1
@.str.58 = private unnamed_addr constant [10 x i8] c"pll2_198m\00", align 1
@.str.59 = private unnamed_addr constant [10 x i8] c"pll3_120m\00", align 1
@.str.60 = private unnamed_addr constant [9 x i8] c"pll3_80m\00", align 1
@.str.61 = private unnamed_addr constant [9 x i8] c"pll3_60m\00", align 1
@.str.62 = private unnamed_addr constant [4 x i8] c"twd\00", align 1
@.str.63 = private unnamed_addr constant [4 x i8] c"arm\00", align 1
@.str.64 = private unnamed_addr constant [7 x i8] c"gpt_3m\00", align 1
@.str.65 = private unnamed_addr constant [10 x i8] c"video_27m\00", align 1
@.str.66 = private unnamed_addr constant [10 x i8] c"gpu2d_axi\00", align 1
@.str.67 = private unnamed_addr constant [18 x i8] c"mmdc_ch0_axi_podf\00", align 1
@.str.68 = private unnamed_addr constant [10 x i8] c"gpu3d_axi\00", align 1
@.str.69 = private unnamed_addr constant [14 x i8] c"pll4_post_div\00", align 1
@.str.70 = private unnamed_addr constant [15 x i8] c"pll4_audio_div\00", align 1
@.str.71 = private unnamed_addr constant [14 x i8] c"pll5_post_div\00", align 1
@.str.72 = private unnamed_addr constant [15 x i8] c"pll5_video_div\00", align 1
@.str.73 = private unnamed_addr constant [5 x i8] c"step\00", align 1
@step_sels = internal global [2 x ptr] [ptr @.str.4, ptr @.str.53], align 4
@.str.74 = private unnamed_addr constant [8 x i8] c"pll1_sw\00", align 1
@pll1_sw_sels = internal global [2 x ptr] [ptr @.str.29, ptr @.str.73], align 4
@.str.75 = private unnamed_addr constant [11 x i8] c"periph_pre\00", align 1
@periph_pre_sels = internal global [4 x ptr] [ptr @.str.30, ptr @.str.53, ptr @.str.51, ptr @.str.58], align 4
@.str.76 = private unnamed_addr constant [12 x i8] c"periph2_pre\00", align 1
@.str.77 = private unnamed_addr constant [16 x i8] c"periph_clk2_sel\00", align 1
@periph_clk2_sels = internal global [4 x ptr] [ptr @.str.31, ptr @.str.4, ptr @.str.4, ptr @.str.1], align 4
@.str.78 = private unnamed_addr constant [17 x i8] c"periph2_clk2_sel\00", align 1
@periph2_clk2_sels = internal global [2 x ptr] [ptr @.str.31, ptr @.str.30], align 4
@.str.79 = private unnamed_addr constant [8 x i8] c"axi_sel\00", align 1
@axi_sels = internal global [4 x ptr] [ptr @.str.121, ptr @.str.53, ptr @.str.121, ptr @.str.55], align 4
@.str.80 = private unnamed_addr constant [9 x i8] c"esai_sel\00", align 1
@audio_sels = internal global [4 x ptr] [ptr @.str.70, ptr @.str.56, ptr @.str.57, ptr @.str.31], align 4
@.str.81 = private unnamed_addr constant [9 x i8] c"asrc_sel\00", align 1
@.str.82 = private unnamed_addr constant [10 x i8] c"spdif_sel\00", align 1
@gpu_axi_sels = internal global [2 x ptr] [ptr @.str.171, ptr @.str.126], align 4
@.str.83 = private unnamed_addr constant [8 x i8] c"can_sel\00", align 1
@can_sels = internal global [3 x ptr] [ptr @.str.61, ptr @.str.4, ptr @.str.60], align 4
@.str.84 = private unnamed_addr constant [10 x i8] c"ecspi_sel\00", align 1
@ecspi_sels = internal global [2 x ptr] [ptr @.str.61, ptr @.str.4], align 4
@.str.85 = private unnamed_addr constant [12 x i8] c"ipg_per_sel\00", align 1
@ipg_per_sels = internal global [2 x ptr] [ptr @.str.125, ptr @.str.4], align 4
@.str.86 = private unnamed_addr constant [9 x i8] c"uart_sel\00", align 1
@uart_sels = internal global [2 x ptr] [ptr @.str.60, ptr @.str.4], align 4
@.str.87 = private unnamed_addr constant [15 x i8] c"gpu2d_core_sel\00", align 1
@gpu2d_core_sels_2 = internal global [4 x ptr] [ptr @.str.223, ptr @.str.31, ptr @.str.52, ptr @.str.54], align 4
@.str.88 = private unnamed_addr constant [8 x i8] c"mlb_sel\00", align 1
@gpu2d_core_sels = internal global [4 x ptr] [ptr @.str.171, ptr @.str.31, ptr @.str.51, ptr @.str.53], align 4
@.str.89 = private unnamed_addr constant [15 x i8] c"gpu3d_core_sel\00", align 1
@gpu3d_core_sels = internal global [4 x ptr] [ptr @.str.223, ptr @.str.31, ptr @.str.52, ptr @.str.53], align 4
@gpu3d_shader_sels = internal global [4 x ptr] [ptr @.str.223, ptr @.str.31, ptr @.str.52, ptr @.str.54], align 4
@.str.90 = private unnamed_addr constant [17 x i8] c"gpu3d_shader_sel\00", align 1
@.str.91 = private unnamed_addr constant [9 x i8] c"ipu1_sel\00", align 1
@ipu_sels = internal global [4 x ptr] [ptr @.str.223, ptr @.str.53, ptr @.str.59, ptr @.str.55], align 4
@.str.92 = private unnamed_addr constant [9 x i8] c"ipu2_sel\00", align 1
@.str.93 = private unnamed_addr constant [12 x i8] c"ldb_di0_sel\00", align 1
@ldb_di_sels = internal global [5 x ptr] [ptr @.str.72, ptr @.str.51, ptr @.str.53, ptr @.str.224, ptr @.str.31], align 4
@.str.94 = private unnamed_addr constant [12 x i8] c"ldb_di1_sel\00", align 1
@.str.95 = private unnamed_addr constant [17 x i8] c"ipu1_di0_pre_sel\00", align 1
@ipu_di_pre_sels = internal global [6 x ptr] [ptr @.str.223, ptr @.str.31, ptr @.str.72, ptr @.str.51, ptr @.str.53, ptr @.str.55], align 4
@.str.96 = private unnamed_addr constant [17 x i8] c"ipu1_di1_pre_sel\00", align 1
@.str.97 = private unnamed_addr constant [17 x i8] c"ipu2_di0_pre_sel\00", align 1
@.str.98 = private unnamed_addr constant [17 x i8] c"ipu2_di1_pre_sel\00", align 1
@.str.99 = private unnamed_addr constant [11 x i8] c"hsi_tx_sel\00", align 1
@hsi_tx_sels = internal global [2 x ptr] [ptr @.str.59, ptr @.str.53], align 4
@.str.100 = private unnamed_addr constant [13 x i8] c"pcie_axi_sel\00", align 1
@pcie_axi_sels = internal global [2 x ptr] [ptr @.str.171, ptr @.str.126], align 4
@.str.101 = private unnamed_addr constant [13 x i8] c"ipu1_di0_sel\00", align 1
@ipu1_di0_sels_2 = internal global [5 x ptr] [ptr @.str.149, ptr @.str.1, ptr @.str.1, ptr @.str.147, ptr @.str.148], align 4
@.str.102 = private unnamed_addr constant [13 x i8] c"ipu1_di1_sel\00", align 1
@ipu1_di1_sels_2 = internal global [5 x ptr] [ptr @.str.150, ptr @.str.1, ptr @.str.1, ptr @.str.147, ptr @.str.148], align 4
@.str.103 = private unnamed_addr constant [13 x i8] c"ipu2_di0_sel\00", align 1
@ipu2_di0_sels_2 = internal global [5 x ptr] [ptr @.str.151, ptr @.str.1, ptr @.str.1, ptr @.str.147, ptr @.str.148], align 4
@.str.104 = private unnamed_addr constant [13 x i8] c"ipu2_di1_sel\00", align 1
@ipu2_di1_sels_2 = internal global [5 x ptr] [ptr @.str.152, ptr @.str.1, ptr @.str.1, ptr @.str.147, ptr @.str.148], align 4
@.str.105 = private unnamed_addr constant [9 x i8] c"ssi1_sel\00", align 1
@ssi_sels = internal global [3 x ptr] [ptr @.str.56, ptr @.str.57, ptr @.str.70], align 4
@.str.106 = private unnamed_addr constant [9 x i8] c"ssi2_sel\00", align 1
@.str.107 = private unnamed_addr constant [9 x i8] c"ssi3_sel\00", align 1
@.str.108 = private unnamed_addr constant [11 x i8] c"usdhc1_sel\00", align 1
@usdhc_sels = internal global [2 x ptr] [ptr @.str.53, ptr @.str.51], align 4
@.str.109 = private unnamed_addr constant [11 x i8] c"usdhc2_sel\00", align 1
@.str.110 = private unnamed_addr constant [11 x i8] c"usdhc3_sel\00", align 1
@.str.111 = private unnamed_addr constant [11 x i8] c"usdhc4_sel\00", align 1
@.str.112 = private unnamed_addr constant [9 x i8] c"enfc_sel\00", align 1
@enfc_sels_2 = internal global [6 x ptr] [ptr @.str.51, ptr @.str.30, ptr @.str.31, ptr @.str.53, ptr @.str.57, ptr @.str.1], align 4
@.str.113 = private unnamed_addr constant [8 x i8] c"eim_sel\00", align 1
@eim_sels = internal global [4 x ptr] [ptr @.str.53, ptr @.str.31, ptr @.str.171, ptr @.str.51], align 4
@.str.114 = private unnamed_addr constant [13 x i8] c"eim_slow_sel\00", align 1
@eim_slow_sels = internal global [4 x ptr] [ptr @.str.171, ptr @.str.31, ptr @.str.53, ptr @.str.51], align 4
@.str.115 = private unnamed_addr constant [8 x i8] c"pre_axi\00", align 1
@pre_axi_sels = internal global [2 x ptr] [ptr @.str.171, ptr @.str.126], align 4
@ipu1_di0_sels = internal global [5 x ptr] [ptr @.str.149, ptr @.str.1, ptr @.str.1, ptr @.str.138, ptr @.str.140], align 4
@ipu1_di1_sels = internal global [5 x ptr] [ptr @.str.150, ptr @.str.1, ptr @.str.1, ptr @.str.138, ptr @.str.140], align 4
@ipu2_di0_sels = internal global [5 x ptr] [ptr @.str.151, ptr @.str.1, ptr @.str.1, ptr @.str.138, ptr @.str.140], align 4
@ipu2_di1_sels = internal global [5 x ptr] [ptr @.str.152, ptr @.str.1, ptr @.str.1, ptr @.str.138, ptr @.str.140], align 4
@enfc_sels = internal global [4 x ptr] [ptr @.str.51, ptr @.str.30, ptr @.str.31, ptr @.str.53], align 4
@.str.116 = private unnamed_addr constant [12 x i8] c"vdo_axi_sel\00", align 1
@vdo_axi_sels = internal global [2 x ptr] [ptr @.str.171, ptr @.str.126], align 4
@.str.117 = private unnamed_addr constant [12 x i8] c"vpu_axi_sel\00", align 1
@vpu_axi_sels = internal global [3 x ptr] [ptr @.str.171, ptr @.str.53, ptr @.str.51], align 4
@.str.118 = private unnamed_addr constant [9 x i8] c"cko1_sel\00", align 1
@cko1_sels = internal global [16 x ptr] [ptr @.str.31, ptr @.str.30, ptr @.str.29, ptr @.str.72, ptr @.str.65, ptr @.str.171, ptr @.str.211, ptr @.str.215, ptr @.str.216, ptr @.str.218, ptr @.str.219, ptr @.str.126, ptr @.str.125, ptr @.str.133, ptr @.str.2, ptr @.str.70], align 4
@.str.119 = private unnamed_addr constant [9 x i8] c"cko2_sel\00", align 1
@cko2_sels = internal global [32 x ptr] [ptr @.str.223, ptr @.str.224, ptr @.str.236, ptr @.str.254, ptr @.str.66, ptr @.str.1, ptr @.str.134, ptr @.str.68, ptr @.str.175, ptr @.str.1, ptr @.str.63, ptr @.str.214, ptr @.str.217, ptr @.str.213, ptr @.str.4, ptr @.str.202, ptr @.str.203, ptr @.str.255, ptr @.str.248, ptr @.str.249, ptr @.str.250, ptr @.str.144, ptr @.str.257, ptr @.str.135, ptr @.str.138, ptr @.str.140, ptr @.str.197, ptr @.str.256, ptr @.str.252, ptr @.str.243, ptr @.str.176, ptr @.str.220], align 4
@.str.120 = private unnamed_addr constant [4 x i8] c"cko\00", align 1
@cko_sels = internal global [2 x ptr] [ptr @.str.266, ptr @.str.267], align 4
@.str.121 = private unnamed_addr constant [7 x i8] c"periph\00", align 1
@periph_sels = internal global [2 x ptr] [ptr @.str.75, ptr @.str.123], align 4
@.str.122 = private unnamed_addr constant [8 x i8] c"periph2\00", align 1
@periph2_sels = internal global [2 x ptr] [ptr @.str.76, ptr @.str.124], align 4
@.str.123 = private unnamed_addr constant [12 x i8] c"periph_clk2\00", align 1
@.str.124 = private unnamed_addr constant [13 x i8] c"periph2_clk2\00", align 1
@.str.125 = private unnamed_addr constant [4 x i8] c"ipg\00", align 1
@.str.126 = private unnamed_addr constant [4 x i8] c"ahb\00", align 1
@.str.127 = private unnamed_addr constant [10 x i8] c"esai_pred\00", align 1
@.str.128 = private unnamed_addr constant [10 x i8] c"esai_podf\00", align 1
@.str.129 = private unnamed_addr constant [10 x i8] c"asrc_pred\00", align 1
@.str.130 = private unnamed_addr constant [10 x i8] c"asrc_podf\00", align 1
@.str.131 = private unnamed_addr constant [11 x i8] c"spdif_pred\00", align 1
@.str.132 = private unnamed_addr constant [11 x i8] c"spdif_podf\00", align 1
@.str.133 = private unnamed_addr constant [8 x i8] c"ipg_per\00", align 1
@.str.134 = private unnamed_addr constant [11 x i8] c"ecspi_root\00", align 1
@.str.135 = private unnamed_addr constant [9 x i8] c"can_root\00", align 1
@.str.136 = private unnamed_addr constant [17 x i8] c"uart_serial_podf\00", align 1
@.str.137 = private unnamed_addr constant [16 x i8] c"ldb_di0_div_3_5\00", align 1
@.str.138 = private unnamed_addr constant [8 x i8] c"ldb_di0\00", align 1
@.str.139 = private unnamed_addr constant [16 x i8] c"ldb_di1_div_3_5\00", align 1
@.str.140 = private unnamed_addr constant [8 x i8] c"ldb_di1\00", align 1
@.str.141 = private unnamed_addr constant [9 x i8] c"mlb_podf\00", align 1
@.str.142 = private unnamed_addr constant [16 x i8] c"gpu2d_core_podf\00", align 1
@.str.143 = private unnamed_addr constant [16 x i8] c"gpu3d_core_podf\00", align 1
@.str.144 = private unnamed_addr constant [13 x i8] c"gpu3d_shader\00", align 1
@.str.145 = private unnamed_addr constant [10 x i8] c"ipu1_podf\00", align 1
@.str.146 = private unnamed_addr constant [10 x i8] c"ipu2_podf\00", align 1
@.str.147 = private unnamed_addr constant [13 x i8] c"ldb_di0_podf\00", align 1
@.str.148 = private unnamed_addr constant [13 x i8] c"ldb_di1_podf\00", align 1
@.str.149 = private unnamed_addr constant [13 x i8] c"ipu1_di0_pre\00", align 1
@.str.150 = private unnamed_addr constant [13 x i8] c"ipu1_di1_pre\00", align 1
@.str.151 = private unnamed_addr constant [13 x i8] c"ipu2_di0_pre\00", align 1
@.str.152 = private unnamed_addr constant [13 x i8] c"ipu2_di1_pre\00", align 1
@.str.153 = private unnamed_addr constant [12 x i8] c"hsi_tx_podf\00", align 1
@.str.154 = private unnamed_addr constant [10 x i8] c"ssi1_pred\00", align 1
@.str.155 = private unnamed_addr constant [10 x i8] c"ssi1_podf\00", align 1
@.str.156 = private unnamed_addr constant [10 x i8] c"ssi2_pred\00", align 1
@.str.157 = private unnamed_addr constant [10 x i8] c"ssi2_podf\00", align 1
@.str.158 = private unnamed_addr constant [10 x i8] c"ssi3_pred\00", align 1
@.str.159 = private unnamed_addr constant [10 x i8] c"ssi3_podf\00", align 1
@.str.160 = private unnamed_addr constant [12 x i8] c"usdhc1_podf\00", align 1
@.str.161 = private unnamed_addr constant [12 x i8] c"usdhc2_podf\00", align 1
@.str.162 = private unnamed_addr constant [12 x i8] c"usdhc3_podf\00", align 1
@.str.163 = private unnamed_addr constant [12 x i8] c"usdhc4_podf\00", align 1
@.str.164 = private unnamed_addr constant [10 x i8] c"enfc_pred\00", align 1
@.str.165 = private unnamed_addr constant [10 x i8] c"enfc_podf\00", align 1
@.str.166 = private unnamed_addr constant [9 x i8] c"eim_podf\00", align 1
@.str.167 = private unnamed_addr constant [14 x i8] c"eim_slow_podf\00", align 1
@.str.168 = private unnamed_addr constant [13 x i8] c"vpu_axi_podf\00", align 1
@.str.169 = private unnamed_addr constant [10 x i8] c"cko1_podf\00", align 1
@.str.170 = private unnamed_addr constant [10 x i8] c"cko2_podf\00", align 1
@.str.171 = private unnamed_addr constant [4 x i8] c"axi\00", align 1
@.str.172 = private unnamed_addr constant [16 x i8] c"mmdc_ch1_axi_cg\00", align 1
@.str.173 = private unnamed_addr constant [18 x i8] c"mmdc_ch1_axi_podf\00", align 1
@.str.174 = private unnamed_addr constant [9 x i8] c"apbh_dma\00", align 1
@.str.175 = private unnamed_addr constant [7 x i8] c"usdhc3\00", align 1
@.str.176 = private unnamed_addr constant [5 x i8] c"asrc\00", align 1
@share_count_asrc = internal global i32 0, align 4
@.str.177 = private unnamed_addr constant [9 x i8] c"asrc_ipg\00", align 1
@.str.178 = private unnamed_addr constant [9 x i8] c"asrc_mem\00", align 1
@.str.179 = private unnamed_addr constant [9 x i8] c"caam_mem\00", align 1
@.str.180 = private unnamed_addr constant [10 x i8] c"caam_aclk\00", align 1
@.str.181 = private unnamed_addr constant [9 x i8] c"caam_ipg\00", align 1
@.str.182 = private unnamed_addr constant [9 x i8] c"can1_ipg\00", align 1
@.str.183 = private unnamed_addr constant [12 x i8] c"can1_serial\00", align 1
@.str.184 = private unnamed_addr constant [9 x i8] c"can2_ipg\00", align 1
@.str.185 = private unnamed_addr constant [12 x i8] c"can2_serial\00", align 1
@.str.186 = private unnamed_addr constant [6 x i8] c"dcic1\00", align 1
@.str.187 = private unnamed_addr constant [6 x i8] c"dcic2\00", align 1
@.str.188 = private unnamed_addr constant [7 x i8] c"ecspi1\00", align 1
@.str.189 = private unnamed_addr constant [7 x i8] c"ecspi2\00", align 1
@.str.190 = private unnamed_addr constant [7 x i8] c"ecspi3\00", align 1
@.str.191 = private unnamed_addr constant [7 x i8] c"ecspi4\00", align 1
@.str.192 = private unnamed_addr constant [5 x i8] c"i2c4\00", align 1
@.str.193 = private unnamed_addr constant [7 x i8] c"ecspi5\00", align 1
@.str.194 = private unnamed_addr constant [5 x i8] c"enet\00", align 1
@.str.195 = private unnamed_addr constant [6 x i8] c"epit1\00", align 1
@.str.196 = private unnamed_addr constant [6 x i8] c"epit2\00", align 1
@.str.197 = private unnamed_addr constant [11 x i8] c"esai_extal\00", align 1
@share_count_esai = internal global i32 0, align 4
@.str.198 = private unnamed_addr constant [9 x i8] c"esai_ipg\00", align 1
@.str.199 = private unnamed_addr constant [9 x i8] c"esai_mem\00", align 1
@.str.200 = private unnamed_addr constant [8 x i8] c"gpt_ipg\00", align 1
@.str.201 = private unnamed_addr constant [12 x i8] c"gpt_ipg_per\00", align 1
@.str.202 = private unnamed_addr constant [11 x i8] c"gpu2d_core\00", align 1
@.str.203 = private unnamed_addr constant [11 x i8] c"gpu3d_core\00", align 1
@.str.204 = private unnamed_addr constant [10 x i8] c"hdmi_iahb\00", align 1
@.str.205 = private unnamed_addr constant [10 x i8] c"hdmi_isfr\00", align 1
@.str.206 = private unnamed_addr constant [14 x i8] c"mipi_core_cfg\00", align 1
@.str.207 = private unnamed_addr constant [5 x i8] c"i2c1\00", align 1
@.str.208 = private unnamed_addr constant [5 x i8] c"i2c2\00", align 1
@.str.209 = private unnamed_addr constant [5 x i8] c"i2c3\00", align 1
@.str.210 = private unnamed_addr constant [4 x i8] c"iim\00", align 1
@.str.211 = private unnamed_addr constant [5 x i8] c"enfc\00", align 1
@.str.212 = private unnamed_addr constant [5 x i8] c"vdoa\00", align 1
@.str.213 = private unnamed_addr constant [8 x i8] c"vdo_axi\00", align 1
@.str.214 = private unnamed_addr constant [5 x i8] c"ipu1\00", align 1
@.str.215 = private unnamed_addr constant [9 x i8] c"ipu1_di0\00", align 1
@.str.216 = private unnamed_addr constant [9 x i8] c"ipu1_di1\00", align 1
@.str.217 = private unnamed_addr constant [5 x i8] c"ipu2\00", align 1
@.str.218 = private unnamed_addr constant [9 x i8] c"ipu2_di0\00", align 1
@.str.219 = private unnamed_addr constant [9 x i8] c"ipu2_di1\00", align 1
@.str.220 = private unnamed_addr constant [7 x i8] c"hsi_tx\00", align 1
@share_count_mipi_core_cfg = internal global i32 0, align 4
@.str.221 = private unnamed_addr constant [9 x i8] c"mipi_ipg\00", align 1
@.str.222 = private unnamed_addr constant [4 x i8] c"mlb\00", align 1
@.str.223 = private unnamed_addr constant [13 x i8] c"mmdc_ch0_axi\00", align 1
@.str.224 = private unnamed_addr constant [13 x i8] c"mmdc_ch1_axi\00", align 1
@.str.225 = private unnamed_addr constant [12 x i8] c"mmdc_p0_ipg\00", align 1
@.str.226 = private unnamed_addr constant [6 x i8] c"ocram\00", align 1
@.str.227 = private unnamed_addr constant [11 x i8] c"openvg_axi\00", align 1
@.str.228 = private unnamed_addr constant [9 x i8] c"pcie_axi\00", align 1
@.str.229 = private unnamed_addr constant [9 x i8] c"per1_bch\00", align 1
@.str.230 = private unnamed_addr constant [5 x i8] c"pwm1\00", align 1
@.str.231 = private unnamed_addr constant [5 x i8] c"pwm2\00", align 1
@.str.232 = private unnamed_addr constant [5 x i8] c"pwm3\00", align 1
@.str.233 = private unnamed_addr constant [5 x i8] c"pwm4\00", align 1
@.str.234 = private unnamed_addr constant [13 x i8] c"gpmi_bch_apb\00", align 1
@.str.235 = private unnamed_addr constant [9 x i8] c"gpmi_bch\00", align 1
@.str.236 = private unnamed_addr constant [7 x i8] c"usdhc4\00", align 1
@.str.237 = private unnamed_addr constant [8 x i8] c"gpmi_io\00", align 1
@.str.238 = private unnamed_addr constant [9 x i8] c"gpmi_apb\00", align 1
@.str.239 = private unnamed_addr constant [4 x i8] c"rom\00", align 1
@.str.240 = private unnamed_addr constant [5 x i8] c"sata\00", align 1
@.str.241 = private unnamed_addr constant [5 x i8] c"sdma\00", align 1
@.str.242 = private unnamed_addr constant [5 x i8] c"spba\00", align 1
@.str.243 = private unnamed_addr constant [6 x i8] c"spdif\00", align 1
@share_count_spdif = internal global i32 0, align 4
@.str.244 = private unnamed_addr constant [11 x i8] c"spdif_gclk\00", align 1
@.str.245 = private unnamed_addr constant [9 x i8] c"ssi1_ipg\00", align 1
@share_count_ssi1 = internal global i32 0, align 4
@.str.246 = private unnamed_addr constant [9 x i8] c"ssi2_ipg\00", align 1
@share_count_ssi2 = internal global i32 0, align 4
@.str.247 = private unnamed_addr constant [9 x i8] c"ssi3_ipg\00", align 1
@share_count_ssi3 = internal global i32 0, align 4
@.str.248 = private unnamed_addr constant [5 x i8] c"ssi1\00", align 1
@.str.249 = private unnamed_addr constant [5 x i8] c"ssi2\00", align 1
@.str.250 = private unnamed_addr constant [5 x i8] c"ssi3\00", align 1
@.str.251 = private unnamed_addr constant [9 x i8] c"uart_ipg\00", align 1
@.str.252 = private unnamed_addr constant [12 x i8] c"uart_serial\00", align 1
@.str.253 = private unnamed_addr constant [7 x i8] c"usboh3\00", align 1
@.str.254 = private unnamed_addr constant [7 x i8] c"usdhc1\00", align 1
@.str.255 = private unnamed_addr constant [7 x i8] c"usdhc2\00", align 1
@.str.256 = private unnamed_addr constant [9 x i8] c"eim_slow\00", align 1
@.str.257 = private unnamed_addr constant [8 x i8] c"vpu_axi\00", align 1
@.str.258 = private unnamed_addr constant [5 x i8] c"pre0\00", align 1
@.str.259 = private unnamed_addr constant [5 x i8] c"pre1\00", align 1
@.str.260 = private unnamed_addr constant [5 x i8] c"pre2\00", align 1
@.str.261 = private unnamed_addr constant [5 x i8] c"pre3\00", align 1
@.str.262 = private unnamed_addr constant [9 x i8] c"prg0_axi\00", align 1
@share_count_prg0 = internal global i32 0, align 4
@.str.263 = private unnamed_addr constant [9 x i8] c"prg1_axi\00", align 1
@share_count_prg1 = internal global i32 0, align 4
@.str.264 = private unnamed_addr constant [9 x i8] c"prg0_apb\00", align 1
@.str.265 = private unnamed_addr constant [9 x i8] c"prg1_apb\00", align 1
@.str.266 = private unnamed_addr constant [5 x i8] c"cko1\00", align 1
@.str.267 = private unnamed_addr constant [5 x i8] c"cko2\00", align 1
@.str.268 = private unnamed_addr constant [29 x i8] c"\014failed to set up CLKO: %d\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.269 = private unnamed_addr constant [10 x i8] c"fsl,imx6q\00", align 1
@.str.270 = private unnamed_addr constant [16 x i8] c"assigned-clocks\00", align 1
@.str.271 = private unnamed_addr constant [13 x i8] c"#clock-cells\00", align 1
@.str.272 = private unnamed_addr constant [23 x i8] c"assigned-clock-parents\00", align 1
@.str.273 = private unnamed_addr constant [9 x i8] c"pll8_mlb\00", align 1
@.str.274 = private unnamed_addr constant [11 x i8] c"fsl,imx6dl\00", align 1
@.str.275 = private unnamed_addr constant [11 x i8] c"fsl,imx6qp\00", align 1
@.str.276 = private unnamed_addr constant [75 x i8] c"\015ccm: possible glitch: ldb_di%d_sel already changed from reset value: %d\0A\00", align 1
@.str.277 = private unnamed_addr constant [54 x i8] c"\013ccm: ldb_di%d_sel: couldn't disable pll2_pfd2_396m\0A\00", align 1
@.str.278 = private unnamed_addr constant [35 x i8] c"\013ccm: parent clock %d not in ccm\0A\00", align 1
@.str.279 = private unnamed_addr constant [34 x i8] c"\013ccm: child clock %d not in ccm\0A\00", align 1
@.str.280 = private unnamed_addr constant [42 x i8] c"\013ccm: invalid ldb_di%d parent clock: %d\0A\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__of_table_imx6q], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @imx6q_clocks_init(ptr noundef %0) #0 section ".init.text" {
  %2 = alloca %struct.of_phandle_args, align 4
  %3 = alloca %struct.of_phandle_args, align 4
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 1068) #6
  store ptr %5, ptr @clk_hw_data, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %8, !prof !8

7:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 439, i32 noundef 9, ptr noundef null) #7
  br label %1559

8:                                                ; preds = %1
  store i32 266, ptr %5, align 8
  %9 = getelementptr inbounds %struct.clk_hw_onecell_data, ptr %5, i32 0, i32 1
  store ptr %9, ptr @hws, align 4
  %10 = tail call ptr @__clk_hw_register_fixed_rate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.1, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #7
  %11 = load ptr, ptr @hws, align 4
  store ptr %10, ptr %11, align 4
  %12 = tail call fastcc ptr @imx6q_obtain_fixed_clk_hw(ptr noundef %0, ptr noundef nonnull @.str.2) #8
  %13 = load ptr, ptr @hws, align 4
  %14 = getelementptr ptr, ptr %13, i32 1
  store ptr %12, ptr %14, align 4
  %15 = tail call fastcc ptr @imx6q_obtain_fixed_clk_hw(ptr noundef %0, ptr noundef nonnull @.str.3) #8
  %16 = load ptr, ptr @hws, align 4
  %17 = getelementptr ptr, ptr %16, i32 2
  store ptr %15, ptr %17, align 4
  %18 = tail call fastcc ptr @imx6q_obtain_fixed_clk_hw(ptr noundef %0, ptr noundef nonnull @.str.4) #8
  %19 = load ptr, ptr @hws, align 4
  %20 = getelementptr ptr, ptr %19, i32 3
  store ptr %18, ptr %20, align 4
  %21 = tail call fastcc ptr @imx6q_obtain_fixed_clk_hw(ptr noundef %0, ptr noundef nonnull @.str.5) #8
  %22 = load ptr, ptr @hws, align 4
  %23 = getelementptr ptr, ptr %22, i32 214
  store ptr %21, ptr %23, align 4
  %24 = tail call fastcc ptr @imx6q_obtain_fixed_clk_hw(ptr noundef %0, ptr noundef nonnull @.str.6) #8
  %25 = load ptr, ptr @hws, align 4
  %26 = getelementptr ptr, ptr %25, i32 215
  store ptr %24, ptr %26, align 4
  %27 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.7) #7
  %28 = tail call ptr @of_iomap(ptr noundef %27, i32 noundef 0) #7
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %31, !prof !8

30:                                               ; preds = %8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 457, i32 noundef 9, ptr noundef null) #7
  br label %31

31:                                               ; preds = %30, %8
  tail call void @of_node_put(ptr noundef %27) #7
  %32 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.269) #7
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %31
  %35 = tail call i32 @imx_get_soc_revision() #7
  %36 = icmp eq i32 %35, 16
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  store i32 1, ptr getelementptr inbounds ([4 x %struct.clk_div_table], ptr @post_div_table, i32 0, i32 1, i32 1), align 4
  store i32 1, ptr getelementptr inbounds ([4 x %struct.clk_div_table], ptr @post_div_table, i32 0, i32 2, i32 1), align 4
  store i32 1, ptr getelementptr inbounds ([5 x %struct.clk_div_table], ptr @video_div_table, i32 0, i32 1, i32 1), align 4
  store i32 1, ptr getelementptr inbounds ([5 x %struct.clk_div_table], ptr @video_div_table, i32 0, i32 3, i32 1), align 4
  br label %38

38:                                               ; preds = %37, %34, %31
  %39 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.8, i8 noundef zeroext 4, ptr noundef nonnull @pll_bypass_src_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %28, i8 noundef zeroext 14, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %40 = load ptr, ptr @hws, align 4
  %41 = getelementptr ptr, ptr %40, i32 216
  store ptr %39, ptr %41, align 4
  %42 = getelementptr i8, ptr %28, i32 48
  %43 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.9, i8 noundef zeroext 4, ptr noundef nonnull @pll_bypass_src_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %42, i8 noundef zeroext 14, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %44 = load ptr, ptr @hws, align 4
  %45 = getelementptr ptr, ptr %44, i32 217
  store ptr %43, ptr %45, align 4
  %46 = getelementptr i8, ptr %28, i32 16
  %47 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.10, i8 noundef zeroext 4, ptr noundef nonnull @pll_bypass_src_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %46, i8 noundef zeroext 14, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %48 = load ptr, ptr @hws, align 4
  %49 = getelementptr ptr, ptr %48, i32 218
  store ptr %47, ptr %49, align 4
  %50 = getelementptr i8, ptr %28, i32 112
  %51 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.11, i8 noundef zeroext 4, ptr noundef nonnull @pll_bypass_src_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %50, i8 noundef zeroext 14, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %52 = load ptr, ptr @hws, align 4
  %53 = getelementptr ptr, ptr %52, i32 219
  store ptr %51, ptr %53, align 4
  %54 = getelementptr i8, ptr %28, i32 160
  %55 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.12, i8 noundef zeroext 4, ptr noundef nonnull @pll_bypass_src_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %54, i8 noundef zeroext 14, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %56 = load ptr, ptr @hws, align 4
  %57 = getelementptr ptr, ptr %56, i32 220
  store ptr %55, ptr %57, align 4
  %58 = getelementptr i8, ptr %28, i32 224
  %59 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.13, i8 noundef zeroext 4, ptr noundef nonnull @pll_bypass_src_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %58, i8 noundef zeroext 14, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %60 = load ptr, ptr @hws, align 4
  %61 = getelementptr ptr, ptr %60, i32 221
  store ptr %59, ptr %61, align 4
  %62 = getelementptr i8, ptr %28, i32 32
  %63 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.14, i8 noundef zeroext 4, ptr noundef nonnull @pll_bypass_src_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %62, i8 noundef zeroext 14, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %64 = load ptr, ptr @hws, align 4
  %65 = getelementptr ptr, ptr %64, i32 222
  store ptr %63, ptr %65, align 4
  %66 = tail call ptr @imx_clk_hw_pllv3(i32 noundef 1, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.4, ptr noundef %28, i32 noundef 127) #7
  %67 = load ptr, ptr @hws, align 4
  %68 = getelementptr ptr, ptr %67, i32 223
  store ptr %66, ptr %68, align 4
  %69 = tail call ptr @imx_clk_hw_pllv3(i32 noundef 0, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.4, ptr noundef %42, i32 noundef 1) #7
  %70 = load ptr, ptr @hws, align 4
  %71 = getelementptr ptr, ptr %70, i32 224
  store ptr %69, ptr %71, align 4
  %72 = tail call ptr @imx_clk_hw_pllv3(i32 noundef 2, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.4, ptr noundef %46, i32 noundef 3) #7
  %73 = load ptr, ptr @hws, align 4
  %74 = getelementptr ptr, ptr %73, i32 225
  store ptr %72, ptr %74, align 4
  %75 = tail call ptr @imx_clk_hw_pllv3(i32 noundef 4, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.4, ptr noundef %50, i32 noundef 127) #7
  %76 = load ptr, ptr @hws, align 4
  %77 = getelementptr ptr, ptr %76, i32 226
  store ptr %75, ptr %77, align 4
  %78 = tail call ptr @imx_clk_hw_pllv3(i32 noundef 4, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.4, ptr noundef %54, i32 noundef 127) #7
  %79 = load ptr, ptr @hws, align 4
  %80 = getelementptr ptr, ptr %79, i32 227
  store ptr %78, ptr %80, align 4
  %81 = tail call ptr @imx_clk_hw_pllv3(i32 noundef 5, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.4, ptr noundef %58, i32 noundef 3) #7
  %82 = load ptr, ptr @hws, align 4
  %83 = getelementptr ptr, ptr %82, i32 228
  store ptr %81, ptr %83, align 4
  %84 = tail call ptr @imx_clk_hw_pllv3(i32 noundef 2, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.4, ptr noundef %62, i32 noundef 3) #7
  %85 = load ptr, ptr @hws, align 4
  %86 = getelementptr ptr, ptr %85, i32 229
  store ptr %84, ptr %86, align 4
  %87 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.22, i8 noundef zeroext 2, ptr noundef nonnull @pll1_bypass_sels, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %28, i8 noundef zeroext 16, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %88 = load ptr, ptr @hws, align 4
  %89 = getelementptr ptr, ptr %88, i32 230
  store ptr %87, ptr %89, align 4
  %90 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.23, i8 noundef zeroext 2, ptr noundef nonnull @pll2_bypass_sels, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %42, i8 noundef zeroext 16, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %91 = load ptr, ptr @hws, align 4
  %92 = getelementptr ptr, ptr %91, i32 231
  store ptr %90, ptr %92, align 4
  %93 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.24, i8 noundef zeroext 2, ptr noundef nonnull @pll3_bypass_sels, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %46, i8 noundef zeroext 16, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %94 = load ptr, ptr @hws, align 4
  %95 = getelementptr ptr, ptr %94, i32 232
  store ptr %93, ptr %95, align 4
  %96 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.25, i8 noundef zeroext 2, ptr noundef nonnull @pll4_bypass_sels, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %50, i8 noundef zeroext 16, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %97 = load ptr, ptr @hws, align 4
  %98 = getelementptr ptr, ptr %97, i32 233
  store ptr %96, ptr %98, align 4
  %99 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.26, i8 noundef zeroext 2, ptr noundef nonnull @pll5_bypass_sels, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %54, i8 noundef zeroext 16, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %100 = load ptr, ptr @hws, align 4
  %101 = getelementptr ptr, ptr %100, i32 234
  store ptr %99, ptr %101, align 4
  %102 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.27, i8 noundef zeroext 2, ptr noundef nonnull @pll6_bypass_sels, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %58, i8 noundef zeroext 16, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %103 = load ptr, ptr @hws, align 4
  %104 = getelementptr ptr, ptr %103, i32 235
  store ptr %102, ptr %104, align 4
  %105 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.28, i8 noundef zeroext 2, ptr noundef nonnull @pll7_bypass_sels, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %62, i8 noundef zeroext 16, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %106 = load ptr, ptr @hws, align 4
  %107 = getelementptr ptr, ptr %106, i32 236
  store ptr %105, ptr %107, align 4
  %108 = getelementptr ptr, ptr %106, i32 230
  %109 = load ptr, ptr %108, align 4
  %110 = getelementptr inbounds %struct.clk_hw, ptr %109, i32 0, i32 1
  %111 = load ptr, ptr %110, align 4
  %112 = getelementptr ptr, ptr %106, i32 223
  %113 = load ptr, ptr %112, align 4
  %114 = getelementptr inbounds %struct.clk_hw, ptr %113, i32 0, i32 1
  %115 = load ptr, ptr %114, align 4
  %116 = tail call i32 @clk_set_parent(ptr noundef %111, ptr noundef %115) #7
  %117 = load ptr, ptr @hws, align 4
  %118 = getelementptr ptr, ptr %117, i32 231
  %119 = load ptr, ptr %118, align 4
  %120 = getelementptr inbounds %struct.clk_hw, ptr %119, i32 0, i32 1
  %121 = load ptr, ptr %120, align 4
  %122 = getelementptr ptr, ptr %117, i32 224
  %123 = load ptr, ptr %122, align 4
  %124 = getelementptr inbounds %struct.clk_hw, ptr %123, i32 0, i32 1
  %125 = load ptr, ptr %124, align 4
  %126 = tail call i32 @clk_set_parent(ptr noundef %121, ptr noundef %125) #7
  %127 = load ptr, ptr @hws, align 4
  %128 = getelementptr ptr, ptr %127, i32 232
  %129 = load ptr, ptr %128, align 4
  %130 = getelementptr inbounds %struct.clk_hw, ptr %129, i32 0, i32 1
  %131 = load ptr, ptr %130, align 4
  %132 = getelementptr ptr, ptr %127, i32 225
  %133 = load ptr, ptr %132, align 4
  %134 = getelementptr inbounds %struct.clk_hw, ptr %133, i32 0, i32 1
  %135 = load ptr, ptr %134, align 4
  %136 = tail call i32 @clk_set_parent(ptr noundef %131, ptr noundef %135) #7
  %137 = load ptr, ptr @hws, align 4
  %138 = getelementptr ptr, ptr %137, i32 233
  %139 = load ptr, ptr %138, align 4
  %140 = getelementptr inbounds %struct.clk_hw, ptr %139, i32 0, i32 1
  %141 = load ptr, ptr %140, align 4
  %142 = getelementptr ptr, ptr %137, i32 226
  %143 = load ptr, ptr %142, align 4
  %144 = getelementptr inbounds %struct.clk_hw, ptr %143, i32 0, i32 1
  %145 = load ptr, ptr %144, align 4
  %146 = tail call i32 @clk_set_parent(ptr noundef %141, ptr noundef %145) #7
  %147 = load ptr, ptr @hws, align 4
  %148 = getelementptr ptr, ptr %147, i32 234
  %149 = load ptr, ptr %148, align 4
  %150 = getelementptr inbounds %struct.clk_hw, ptr %149, i32 0, i32 1
  %151 = load ptr, ptr %150, align 4
  %152 = getelementptr ptr, ptr %147, i32 227
  %153 = load ptr, ptr %152, align 4
  %154 = getelementptr inbounds %struct.clk_hw, ptr %153, i32 0, i32 1
  %155 = load ptr, ptr %154, align 4
  %156 = tail call i32 @clk_set_parent(ptr noundef %151, ptr noundef %155) #7
  %157 = load ptr, ptr @hws, align 4
  %158 = getelementptr ptr, ptr %157, i32 235
  %159 = load ptr, ptr %158, align 4
  %160 = getelementptr inbounds %struct.clk_hw, ptr %159, i32 0, i32 1
  %161 = load ptr, ptr %160, align 4
  %162 = getelementptr ptr, ptr %157, i32 228
  %163 = load ptr, ptr %162, align 4
  %164 = getelementptr inbounds %struct.clk_hw, ptr %163, i32 0, i32 1
  %165 = load ptr, ptr %164, align 4
  %166 = tail call i32 @clk_set_parent(ptr noundef %161, ptr noundef %165) #7
  %167 = load ptr, ptr @hws, align 4
  %168 = getelementptr ptr, ptr %167, i32 236
  %169 = load ptr, ptr %168, align 4
  %170 = getelementptr inbounds %struct.clk_hw, ptr %169, i32 0, i32 1
  %171 = load ptr, ptr %170, align 4
  %172 = getelementptr ptr, ptr %167, i32 229
  %173 = load ptr, ptr %172, align 4
  %174 = getelementptr inbounds %struct.clk_hw, ptr %173, i32 0, i32 1
  %175 = load ptr, ptr %174, align 4
  %176 = tail call i32 @clk_set_parent(ptr noundef %171, ptr noundef %175) #7
  %177 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.22, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %28, i8 noundef zeroext 13, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #7
  %178 = load ptr, ptr @hws, align 4
  %179 = getelementptr ptr, ptr %178, i32 170
  store ptr %177, ptr %179, align 4
  %180 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.23, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %42, i8 noundef zeroext 13, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #7
  %181 = load ptr, ptr @hws, align 4
  %182 = getelementptr ptr, ptr %181, i32 171
  store ptr %180, ptr %182, align 4
  %183 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.24, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %46, i8 noundef zeroext 13, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #7
  %184 = load ptr, ptr @hws, align 4
  %185 = getelementptr ptr, ptr %184, i32 172
  store ptr %183, ptr %185, align 4
  %186 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.25, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %50, i8 noundef zeroext 13, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #7
  %187 = load ptr, ptr @hws, align 4
  %188 = getelementptr ptr, ptr %187, i32 173
  store ptr %186, ptr %188, align 4
  %189 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.26, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %54, i8 noundef zeroext 13, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #7
  %190 = load ptr, ptr @hws, align 4
  %191 = getelementptr ptr, ptr %190, i32 174
  store ptr %189, ptr %191, align 4
  %192 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.27, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %58, i8 noundef zeroext 13, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #7
  %193 = load ptr, ptr @hws, align 4
  %194 = getelementptr ptr, ptr %193, i32 177
  store ptr %192, ptr %194, align 4
  %195 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.28, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %62, i8 noundef zeroext 13, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #7
  %196 = load ptr, ptr @hws, align 4
  %197 = getelementptr ptr, ptr %196, i32 176
  store ptr %195, ptr %197, align 4
  %198 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.31, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %46, i8 noundef zeroext 20, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #7
  %199 = load ptr, ptr @hws, align 4
  %200 = getelementptr ptr, ptr %199, i32 182
  store ptr %198, ptr %200, align 4
  %201 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.35, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %62, i8 noundef zeroext 20, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #7
  %202 = load ptr, ptr @hws, align 4
  %203 = getelementptr ptr, ptr %202, i32 183
  store ptr %201, ptr %203, align 4
  %204 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.1, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %46, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #7
  %205 = load ptr, ptr @hws, align 4
  %206 = getelementptr ptr, ptr %205, i32 191
  store ptr %204, ptr %206, align 4
  %207 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.1, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %62, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #7
  %208 = load ptr, ptr @hws, align 4
  %209 = getelementptr ptr, ptr %208, i32 192
  store ptr %207, ptr %209, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %3, i8 0, i32 72, i1 false) #7, !annotation !9
  %210 = tail call i32 @of_count_phandle_with_args(ptr noundef %0, ptr noundef nonnull @.str.270, ptr noundef nonnull @.str.271) #7
  %211 = icmp slt i32 %210, 0
  br i1 %211, label %232, label %212

212:                                              ; preds = %38
  %213 = icmp eq i32 %210, 0
  br i1 %213, label %229, label %214

214:                                              ; preds = %212
  %215 = getelementptr inbounds %struct.of_phandle_args, ptr %3, i32 0, i32 2
  br label %216

216:                                              ; preds = %226, %214
  %217 = phi i32 [ 0, %214 ], [ %227, %226 ]
  %218 = call i32 @__of_parse_phandle_with_args(ptr noundef %0, ptr noundef nonnull @.str.270, ptr noundef nonnull @.str.271, i32 noundef -1, i32 noundef %217, ptr noundef nonnull %3) #7
  %219 = icmp slt i32 %218, 0
  br i1 %219, label %232, label %220

220:                                              ; preds = %216
  %221 = load ptr, ptr %3, align 4
  %222 = icmp eq ptr %221, %0
  %223 = load i32, ptr %215, align 4
  %224 = icmp eq i32 %223, 235
  %225 = select i1 %222, i1 %224, i1 false
  br i1 %225, label %229, label %226

226:                                              ; preds = %220
  %227 = add nuw nsw i32 %217, 1
  %228 = icmp eq i32 %227, %210
  br i1 %228, label %232, label %216

229:                                              ; preds = %220, %212
  %230 = phi i32 [ 0, %212 ], [ %217, %220 ]
  %231 = icmp eq i32 %230, %210
  br i1 %231, label %232, label %233

232:                                              ; preds = %229, %226, %216, %38
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #7
  br label %238

233:                                              ; preds = %229
  %234 = call i32 @__of_parse_phandle_with_args(ptr noundef %0, ptr noundef nonnull @.str.272, ptr noundef nonnull @.str.271, i32 noundef -1, i32 noundef %230, ptr noundef nonnull %3) #7
  %235 = getelementptr inbounds %struct.of_phandle_args, ptr %3, i32 0, i32 2
  %236 = load i32, ptr %235, align 4
  %237 = icmp eq i32 %236, 228
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #7
  br i1 %237, label %238, label %246

238:                                              ; preds = %233, %232
  %239 = call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.34, i32 noundef 4, i32 noundef 1, i32 noundef 5) #7
  %240 = load ptr, ptr @hws, align 4
  %241 = getelementptr ptr, ptr %240, i32 186
  store ptr %239, ptr %241, align 4
  %242 = call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.34, i32 noundef 4, i32 noundef 1, i32 noundef 4) #7
  %243 = load ptr, ptr @hws, align 4
  %244 = getelementptr ptr, ptr %243, i32 188
  store ptr %242, ptr %244, align 4
  %245 = call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.34, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef %58, i8 noundef zeroext 0, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef nonnull @clk_enet_ref_table, ptr noundef nonnull @imx_ccm_lock) #7
  br label %254

246:                                              ; preds = %233
  %247 = call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.34, i32 noundef 4, i32 noundef 1, i32 noundef 1) #7
  %248 = load ptr, ptr @hws, align 4
  %249 = getelementptr ptr, ptr %248, i32 186
  store ptr %247, ptr %249, align 4
  %250 = call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.34, i32 noundef 4, i32 noundef 1, i32 noundef 1) #7
  %251 = load ptr, ptr @hws, align 4
  %252 = getelementptr ptr, ptr %251, i32 188
  store ptr %250, ptr %252, align 4
  %253 = call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.34, i32 noundef 4, i32 noundef 1, i32 noundef 1) #7
  br label %254

254:                                              ; preds = %246, %238
  %255 = phi ptr [ %253, %246 ], [ %245, %238 ]
  %256 = load ptr, ptr @hws, align 4
  %257 = getelementptr ptr, ptr %256, i32 190
  store ptr %255, ptr %257, align 4
  %258 = call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.40, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %58, i8 noundef zeroext 20, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #7
  %259 = load ptr, ptr @hws, align 4
  %260 = getelementptr ptr, ptr %259, i32 187
  store ptr %258, ptr %260, align 4
  %261 = call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.41, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %58, i8 noundef zeroext 19, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #7
  %262 = load ptr, ptr @hws, align 4
  %263 = getelementptr ptr, ptr %262, i32 189
  store ptr %261, ptr %263, align 4
  %264 = getelementptr i8, ptr %28, i32 352
  %265 = call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.45, i8 noundef zeroext 19, ptr noundef nonnull @lvds_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %264, i8 noundef zeroext 0, i32 noundef 31, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %266 = load ptr, ptr @hws, align 4
  %267 = getelementptr ptr, ptr %266, i32 204
  store ptr %265, ptr %267, align 4
  %268 = call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.46, i8 noundef zeroext 19, ptr noundef nonnull @lvds_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %264, i8 noundef zeroext 5, i32 noundef 31, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %269 = load ptr, ptr @hws, align 4
  %270 = getelementptr ptr, ptr %269, i32 205
  store ptr %268, ptr %270, align 4
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !10
  call void @arm_heavy_mb() #7
  %271 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %264) #7, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  %272 = and i32 %271, -15361
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %264, i32 %272) #7, !srcloc !13
  %273 = call ptr @imx_clk_hw_gate_exclusive(ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.45, ptr noundef %264, i8 noundef zeroext 10, i32 noundef 4096) #7
  %274 = load ptr, ptr @hws, align 4
  %275 = getelementptr ptr, ptr %274, i32 206
  store ptr %273, ptr %275, align 4
  %276 = call ptr @imx_clk_hw_gate_exclusive(ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.46, ptr noundef %264, i8 noundef zeroext 11, i32 noundef 8192) #7
  %277 = load ptr, ptr @hws, align 4
  %278 = getelementptr ptr, ptr %277, i32 207
  store ptr %276, ptr %278, align 4
  %279 = call ptr @imx_clk_hw_gate_exclusive(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.5, ptr noundef %264, i8 noundef zeroext 12, i32 noundef 1024) #7
  %280 = load ptr, ptr @hws, align 4
  %281 = getelementptr ptr, ptr %280, i32 212
  store ptr %279, ptr %281, align 4
  %282 = call ptr @imx_clk_hw_gate_exclusive(ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.6, ptr noundef %264, i8 noundef zeroext 13, i32 noundef 2048) #7
  %283 = load ptr, ptr @hws, align 4
  %284 = getelementptr ptr, ptr %283, i32 213
  store ptr %282, ptr %284, align 4
  %285 = getelementptr i8, ptr %28, i32 256
  %286 = call ptr @imx_clk_hw_pfd(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.30, ptr noundef %285, i8 noundef zeroext 0) #7
  %287 = load ptr, ptr @hws, align 4
  %288 = getelementptr ptr, ptr %287, i32 4
  store ptr %286, ptr %288, align 4
  %289 = call ptr @imx_clk_hw_pfd(ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.30, ptr noundef %285, i8 noundef zeroext 1) #7
  %290 = load ptr, ptr @hws, align 4
  %291 = getelementptr ptr, ptr %290, i32 5
  store ptr %289, ptr %291, align 4
  %292 = call ptr @imx_clk_hw_pfd(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.30, ptr noundef %285, i8 noundef zeroext 2) #7
  %293 = load ptr, ptr @hws, align 4
  %294 = getelementptr ptr, ptr %293, i32 6
  store ptr %292, ptr %294, align 4
  %295 = getelementptr i8, ptr %28, i32 240
  %296 = call ptr @imx_clk_hw_pfd(ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.31, ptr noundef %295, i8 noundef zeroext 0) #7
  %297 = load ptr, ptr @hws, align 4
  %298 = getelementptr ptr, ptr %297, i32 7
  store ptr %296, ptr %298, align 4
  %299 = call ptr @imx_clk_hw_pfd(ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.31, ptr noundef %295, i8 noundef zeroext 1) #7
  %300 = load ptr, ptr @hws, align 4
  %301 = getelementptr ptr, ptr %300, i32 8
  store ptr %299, ptr %301, align 4
  %302 = call ptr @imx_clk_hw_pfd(ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.31, ptr noundef %295, i8 noundef zeroext 2) #7
  %303 = load ptr, ptr @hws, align 4
  %304 = getelementptr ptr, ptr %303, i32 9
  store ptr %302, ptr %304, align 4
  %305 = call ptr @imx_clk_hw_pfd(ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.31, ptr noundef %295, i8 noundef zeroext 3) #7
  %306 = load ptr, ptr @hws, align 4
  %307 = getelementptr ptr, ptr %306, i32 10
  store ptr %305, ptr %307, align 4
  %308 = call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.53, i32 noundef 4, i32 noundef 1, i32 noundef 2) #7
  %309 = load ptr, ptr @hws, align 4
  %310 = getelementptr ptr, ptr %309, i32 11
  store ptr %308, ptr %310, align 4
  %311 = call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.31, i32 noundef 4, i32 noundef 1, i32 noundef 4) #7
  %312 = load ptr, ptr @hws, align 4
  %313 = getelementptr ptr, ptr %312, i32 12
  store ptr %311, ptr %313, align 4
  %314 = call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.31, i32 noundef 4, i32 noundef 1, i32 noundef 6) #7
  %315 = load ptr, ptr @hws, align 4
  %316 = getelementptr ptr, ptr %315, i32 13
  store ptr %314, ptr %316, align 4
  %317 = call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.31, i32 noundef 4, i32 noundef 1, i32 noundef 8) #7
  %318 = load ptr, ptr @hws, align 4
  %319 = getelementptr ptr, ptr %318, i32 14
  store ptr %317, ptr %319, align 4
  %320 = call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.63, i32 noundef 4, i32 noundef 1, i32 noundef 2) #7
  %321 = load ptr, ptr @hws, align 4
  %322 = getelementptr ptr, ptr %321, i32 15
  store ptr %320, ptr %322, align 4
  %323 = call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.4, i32 noundef 4, i32 noundef 1, i32 noundef 8) #7
  %324 = load ptr, ptr @hws, align 4
  %325 = getelementptr ptr, ptr %324, i32 237
  store ptr %323, ptr %325, align 4
  %326 = call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.55, i32 noundef 4, i32 noundef 1, i32 noundef 20) #7
  %327 = load ptr, ptr @hws, align 4
  %328 = getelementptr ptr, ptr %327, i32 238
  store ptr %326, ptr %328, align 4
  %329 = call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.274) #7
  %330 = icmp eq i32 %329, 0
  br i1 %330, label %331, label %334

331:                                              ; preds = %254
  %332 = call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.275) #7
  %333 = icmp eq i32 %332, 0
  br i1 %333, label %341, label %334

334:                                              ; preds = %331, %254
  %335 = call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.67, i32 noundef 4, i32 noundef 1, i32 noundef 1) #7
  %336 = load ptr, ptr @hws, align 4
  %337 = getelementptr ptr, ptr %336, i32 26
  store ptr %335, ptr %337, align 4
  %338 = call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.67, i32 noundef 4, i32 noundef 1, i32 noundef 1) #7
  %339 = load ptr, ptr @hws, align 4
  %340 = getelementptr ptr, ptr %339, i32 27
  store ptr %338, ptr %340, align 4
  br label %341

341:                                              ; preds = %334, %331
  %342 = call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.32, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %50, i8 noundef zeroext 19, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef nonnull @post_div_table, ptr noundef nonnull @imx_ccm_lock) #7
  %343 = load ptr, ptr @hws, align 4
  %344 = getelementptr ptr, ptr %343, i32 193
  store ptr %342, ptr %344, align 4
  %345 = call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.269) #7
  %346 = icmp eq i32 %345, 0
  br i1 %346, label %347, label %350

347:                                              ; preds = %341
  %348 = call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.275) #7
  %349 = icmp eq i32 %348, 0
  br i1 %349, label %352, label %350

350:                                              ; preds = %347, %341
  %351 = call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.69, i32 noundef 4, i32 noundef 1, i32 noundef 1) #7
  br label %355

352:                                              ; preds = %347
  %353 = getelementptr i8, ptr %28, i32 368
  %354 = call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.69, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %353, i8 noundef zeroext 15, i8 noundef zeroext 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  br label %355

355:                                              ; preds = %352, %350
  %356 = phi ptr [ %354, %352 ], [ %351, %350 ]
  %357 = load ptr, ptr @hws, align 4
  %358 = getelementptr ptr, ptr %357, i32 203
  store ptr %356, ptr %358, align 4
  %359 = call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.33, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %54, i8 noundef zeroext 19, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef nonnull @post_div_table, ptr noundef nonnull @imx_ccm_lock) #7
  %360 = load ptr, ptr @hws, align 4
  %361 = getelementptr ptr, ptr %360, i32 194
  store ptr %359, ptr %361, align 4
  %362 = getelementptr i8, ptr %28, i32 368
  %363 = call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.71, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %362, i8 noundef zeroext 30, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef nonnull @video_div_table, ptr noundef nonnull @imx_ccm_lock) #7
  %364 = load ptr, ptr @hws, align 4
  %365 = getelementptr ptr, ptr %364, i32 195
  store ptr %363, ptr %365, align 4
  %366 = call ptr @of_iomap(ptr noundef %0, i32 noundef 0) #7
  %367 = icmp eq ptr %366, null
  br i1 %367, label %368, label %369, !prof !8

368:                                              ; preds = %355
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 603, i32 noundef 9, ptr noundef null) #7
  br label %369

369:                                              ; preds = %368, %355
  %370 = getelementptr i8, ptr %366, i32 12
  %371 = call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.73, i8 noundef zeroext 2, ptr noundef nonnull @step_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %370, i8 noundef zeroext 8, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %372 = load ptr, ptr @hws, align 4
  %373 = getelementptr ptr, ptr %372, i32 16
  store ptr %371, ptr %373, align 4
  %374 = call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.74, i8 noundef zeroext 2, ptr noundef nonnull @pll1_sw_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %370, i8 noundef zeroext 2, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %375 = load ptr, ptr @hws, align 4
  %376 = getelementptr ptr, ptr %375, i32 17
  store ptr %374, ptr %376, align 4
  %377 = getelementptr i8, ptr %366, i32 24
  %378 = call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.75, i8 noundef zeroext 4, ptr noundef nonnull @periph_pre_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %377, i8 noundef zeroext 18, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %379 = load ptr, ptr @hws, align 4
  %380 = getelementptr ptr, ptr %379, i32 18
  store ptr %378, ptr %380, align 4
  %381 = call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.76, i8 noundef zeroext 4, ptr noundef nonnull @periph_pre_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %377, i8 noundef zeroext 21, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %382 = load ptr, ptr @hws, align 4
  %383 = getelementptr ptr, ptr %382, i32 19
  store ptr %381, ptr %383, align 4
  %384 = call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.77, i8 noundef zeroext 4, ptr noundef nonnull @periph_clk2_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %377, i8 noundef zeroext 12, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %385 = load ptr, ptr @hws, align 4
  %386 = getelementptr ptr, ptr %385, i32 20
  store ptr %384, ptr %386, align 4
  %387 = call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.78, i8 noundef zeroext 2, ptr noundef nonnull @periph2_clk2_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %377, i8 noundef zeroext 20, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %388 = load ptr, ptr @hws, align 4
  %389 = getelementptr ptr, ptr %388, i32 21
  store ptr %387, ptr %389, align 4
  %390 = getelementptr i8, ptr %366, i32 20
  %391 = call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.79, i8 noundef zeroext 4, ptr noundef nonnull @axi_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %390, i8 noundef zeroext 6, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %392 = load ptr, ptr @hws, align 4
  %393 = getelementptr ptr, ptr %392, i32 22
  store ptr %391, ptr %393, align 4
  %394 = getelementptr i8, ptr %366, i32 32
  %395 = call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.80, i8 noundef zeroext 4, ptr noundef nonnull @audio_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %394, i8 noundef zeroext 19, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %396 = load ptr, ptr @hws, align 4
  %397 = getelementptr ptr, ptr %396, i32 23
  store ptr %395, ptr %397, align 4
  %398 = getelementptr i8, ptr %366, i32 48
  %399 = call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.81, i8 noundef zeroext 4, ptr noundef nonnull @audio_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %398, i8 noundef zeroext 7, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %400 = load ptr, ptr @hws, align 4
  %401 = getelementptr ptr, ptr %400, i32 24
  store ptr %399, ptr %401, align 4
  %402 = call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.82, i8 noundef zeroext 4, ptr noundef nonnull @audio_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %398, i8 noundef zeroext 20, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %403 = load ptr, ptr @hws, align 4
  %404 = getelementptr ptr, ptr %403, i32 25
  store ptr %402, ptr %404, align 4
  %405 = call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.269) #7
  %406 = icmp eq i32 %405, 0
  br i1 %406, label %414, label %407

407:                                              ; preds = %369
  %408 = call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.66, i8 noundef zeroext 2, ptr noundef nonnull @gpu_axi_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %377, i8 noundef zeroext 0, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %409 = load ptr, ptr @hws, align 4
  %410 = getelementptr ptr, ptr %409, i32 26
  store ptr %408, ptr %410, align 4
  %411 = call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.68, i8 noundef zeroext 2, ptr noundef nonnull @gpu_axi_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %377, i8 noundef zeroext 1, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %412 = load ptr, ptr @hws, align 4
  %413 = getelementptr ptr, ptr %412, i32 27
  store ptr %411, ptr %413, align 4
  br label %414

414:                                              ; preds = %407, %369
  %415 = call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.275) #7
  %416 = icmp eq i32 %415, 0
  br i1 %416, label %434, label %417

417:                                              ; preds = %414
  %418 = call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.83, i8 noundef zeroext 3, ptr noundef nonnull @can_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %394, i8 noundef zeroext 8, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %419 = load ptr, ptr @hws, align 4
  %420 = getelementptr ptr, ptr %419, i32 248
  store ptr %418, ptr %420, align 4
  %421 = getelementptr i8, ptr %366, i32 56
  %422 = call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.84, i8 noundef zeroext 2, ptr noundef nonnull @ecspi_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %421, i8 noundef zeroext 18, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %423 = load ptr, ptr @hws, align 4
  %424 = getelementptr ptr, ptr %423, i32 247
  store ptr %422, ptr %424, align 4
  %425 = getelementptr i8, ptr %366, i32 28
  %426 = call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.85, i8 noundef zeroext 2, ptr noundef nonnull @ipg_per_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %425, i8 noundef zeroext 6, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %427 = load ptr, ptr @hws, align 4
  %428 = getelementptr ptr, ptr %427, i32 246
  store ptr %426, ptr %428, align 4
  %429 = getelementptr i8, ptr %366, i32 36
  %430 = call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.86, i8 noundef zeroext 2, ptr noundef nonnull @uart_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %429, i8 noundef zeroext 6, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %431 = load ptr, ptr @hws, align 4
  %432 = getelementptr ptr, ptr %431, i32 245
  store ptr %430, ptr %432, align 4
  %433 = call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.87, i8 noundef zeroext 4, ptr noundef nonnull @gpu2d_core_sels_2, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %377, i8 noundef zeroext 16, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  br label %441

434:                                              ; preds = %414
  %435 = call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.274) #7
  %436 = icmp eq i32 %435, 0
  br i1 %436, label %439, label %437

437:                                              ; preds = %434
  %438 = call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.88, i8 noundef zeroext 4, ptr noundef nonnull @gpu2d_core_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %377, i8 noundef zeroext 16, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  br label %441

439:                                              ; preds = %434
  %440 = call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.87, i8 noundef zeroext 4, ptr noundef nonnull @gpu2d_core_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %377, i8 noundef zeroext 16, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  br label %441

441:                                              ; preds = %439, %437, %417
  %442 = phi i32 [ 259, %437 ], [ 28, %439 ], [ 28, %417 ]
  %443 = phi ptr [ %438, %437 ], [ %440, %439 ], [ %433, %417 ]
  %444 = load ptr, ptr @hws, align 4
  %445 = getelementptr ptr, ptr %444, i32 %442
  store ptr %443, ptr %445, align 4
  %446 = call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.89, i8 noundef zeroext 4, ptr noundef nonnull @gpu3d_core_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %377, i8 noundef zeroext 4, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %447 = load ptr, ptr @hws, align 4
  %448 = getelementptr ptr, ptr %447, i32 29
  store ptr %446, ptr %448, align 4
  %449 = call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.274) #7
  %450 = icmp eq i32 %449, 0
  %451 = select i1 %450, ptr @.str.90, ptr @.str.87
  %452 = select i1 %450, i32 30, i32 28
  %453 = call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull %451, i8 noundef zeroext 4, ptr noundef nonnull @gpu3d_shader_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %377, i8 noundef zeroext 8, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %454 = load ptr, ptr @hws, align 4
  %455 = getelementptr ptr, ptr %454, i32 %452
  store ptr %453, ptr %455, align 4
  %456 = getelementptr i8, ptr %366, i32 60
  %457 = call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.91, i8 noundef zeroext 4, ptr noundef nonnull @ipu_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %456, i8 noundef zeroext 9, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %458 = load ptr, ptr @hws, align 4
  %459 = getelementptr ptr, ptr %458, i32 31
  store ptr %457, ptr %459, align 4
  %460 = call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.92, i8 noundef zeroext 4, ptr noundef nonnull @ipu_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %456, i8 noundef zeroext 14, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %461 = load ptr, ptr @hws, align 4
  %462 = getelementptr ptr, ptr %461, i32 32
  store ptr %460, ptr %462, align 4
  %463 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %285) #7, !srcloc !11
  %464 = load ptr, ptr @hws, align 4
  %465 = getelementptr ptr, ptr %464, i32 18
  %466 = load ptr, ptr %465, align 4
  %467 = getelementptr inbounds %struct.clk_hw, ptr %466, i32 0, i32 1
  %468 = load ptr, ptr %467, align 4
  %469 = call ptr @clk_get_parent(ptr noundef %468) #7
  %470 = load ptr, ptr @hws, align 4
  %471 = getelementptr ptr, ptr %470, i32 6
  %472 = load ptr, ptr %471, align 4
  %473 = getelementptr inbounds %struct.clk_hw, ptr %472, i32 0, i32 1
  %474 = load ptr, ptr %473, align 4
  %475 = icmp eq ptr %469, %474
  %476 = select i1 %475, i32 32896, i32 8421504
  %477 = or i32 %476, %463
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %285, i32 %477) #7, !srcloc !13
  %478 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %295) #7, !srcloc !11
  %479 = or i32 %478, -2139062144
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %295, i32 %479) #7, !srcloc !13
  %480 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %54) #7, !srcloc !11
  %481 = and i32 %480, -8193
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %54, i32 %481) #7, !srcloc !13
  call void @imx_mmdc_mask_handshake(ptr noundef %366, i32 noundef 1) #7
  %482 = call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.275) #7
  %483 = icmp eq i32 %482, 0
  %484 = getelementptr i8, ptr %366, i32 44
  br i1 %483, label %485, label %653

485:                                              ; preds = %441
  %486 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %484) #7, !srcloc !11
  %487 = lshr i32 %486, 9
  %488 = and i32 %487, 7
  %489 = lshr i32 %486, 12
  %490 = and i32 %489, 7
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %2) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %2, i8 0, i32 72, i1 false) #7, !annotation !9
  %491 = call i32 @of_count_phandle_with_args(ptr noundef %0, ptr noundef nonnull @.str.272, ptr noundef nonnull @.str.271) #7
  %492 = icmp sgt i32 %491, 0
  br i1 %492, label %493, label %552

493:                                              ; preds = %485
  %494 = getelementptr inbounds %struct.of_phandle_args, ptr %2, i32 0, i32 2
  br label %495

495:                                              ; preds = %544, %493
  %496 = phi i32 [ %545, %544 ], [ %488, %493 ]
  %497 = phi i32 [ %546, %544 ], [ %490, %493 ]
  %498 = phi i32 [ %547, %544 ], [ 0, %493 ]
  br label %499

499:                                              ; preds = %503, %495
  %500 = phi i32 [ %505, %503 ], [ %498, %495 ]
  %501 = call i32 @__of_parse_phandle_with_args(ptr noundef %0, ptr noundef nonnull @.str.272, ptr noundef nonnull @.str.271, i32 noundef -1, i32 noundef %500, ptr noundef nonnull %2) #7
  %502 = icmp slt i32 %501, 0
  br i1 %502, label %503, label %508

503:                                              ; preds = %499
  %504 = icmp ne i32 %501, -2
  %505 = add nuw nsw i32 %500, 1
  %506 = icmp eq i32 %505, %491
  %507 = select i1 %504, i1 true, i1 %506
  br i1 %507, label %552, label %499

508:                                              ; preds = %499
  %509 = load ptr, ptr %2, align 4
  %510 = icmp eq ptr %509, %0
  br i1 %510, label %511, label %549

511:                                              ; preds = %508
  %512 = load i32, ptr %494, align 4
  %513 = icmp ugt i32 %512, 265
  br i1 %513, label %549, label %514

514:                                              ; preds = %511
  %515 = call i32 @__of_parse_phandle_with_args(ptr noundef %0, ptr noundef nonnull @.str.270, ptr noundef nonnull @.str.271, i32 noundef -1, i32 noundef %500, ptr noundef nonnull %2) #7
  %516 = icmp slt i32 %515, 0
  br i1 %516, label %552, label %517

517:                                              ; preds = %514
  %518 = load ptr, ptr %2, align 4
  %519 = icmp eq ptr %518, %0
  br i1 %519, label %520, label %549

520:                                              ; preds = %517
  %521 = load i32, ptr %494, align 4
  %522 = icmp ugt i32 %521, 265
  br i1 %522, label %549, label %523

523:                                              ; preds = %520
  %524 = add nsw i32 %521, -35
  %525 = icmp ult i32 %524, -2
  br i1 %525, label %544, label %526

526:                                              ; preds = %523
  switch i32 %512, label %536 [
    i32 195, label %527
    i32 4, label %540
    i32 6, label %533
    i32 141, label %534
    i32 172, label %535
  ]

527:                                              ; preds = %526
  %528 = call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.269) #7
  %529 = icmp eq i32 %528, 0
  br i1 %529, label %540, label %530

530:                                              ; preds = %527
  %531 = call i32 @imx_get_soc_revision() #7
  %532 = icmp eq i32 %531, 16
  br i1 %532, label %536, label %540

533:                                              ; preds = %526
  br label %540

534:                                              ; preds = %526
  br label %540

535:                                              ; preds = %526
  br label %540

536:                                              ; preds = %530, %526
  %537 = icmp eq i32 %521, 34
  %538 = zext i1 %537 to i32
  %539 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.280, i32 noundef %538, i32 noundef %512) #9
  br label %544

540:                                              ; preds = %535, %534, %533, %530, %527, %526
  %541 = phi i32 [ 1, %526 ], [ 2, %533 ], [ 3, %534 ], [ 4, %535 ], [ 0, %530 ], [ 0, %527 ]
  switch i32 %521, label %544 [
    i32 33, label %542
    i32 34, label %543
  ]

542:                                              ; preds = %540
  br label %544

543:                                              ; preds = %540
  br label %544

544:                                              ; preds = %543, %542, %540, %536, %523
  %545 = phi i32 [ %496, %543 ], [ %541, %542 ], [ %496, %540 ], [ %496, %536 ], [ %496, %523 ]
  %546 = phi i32 [ %541, %543 ], [ %497, %542 ], [ %497, %540 ], [ %497, %536 ], [ %497, %523 ]
  %547 = add nuw nsw i32 %500, 1
  %548 = icmp eq i32 %547, %491
  br i1 %548, label %552, label %495

549:                                              ; preds = %520, %517, %511, %508
  %550 = phi ptr [ @.str.278, %511 ], [ @.str.278, %508 ], [ @.str.279, %520 ], [ @.str.279, %517 ]
  %551 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %550, i32 noundef %500) #9
  br label %552

552:                                              ; preds = %549, %544, %514, %503, %485
  %553 = phi i32 [ %488, %485 ], [ %496, %549 ], [ %496, %503 ], [ %496, %514 ], [ %545, %544 ]
  %554 = phi i32 [ %490, %485 ], [ %497, %549 ], [ %497, %503 ], [ %497, %514 ], [ %546, %544 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %2) #7
  %555 = icmp eq i32 %488, 3
  br i1 %555, label %558, label %556

556:                                              ; preds = %552
  %557 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.276, i32 noundef 0, i32 noundef %488) #9
  br label %558

558:                                              ; preds = %556, %552
  %559 = icmp eq i32 %488, %553
  br i1 %559, label %582, label %560

560:                                              ; preds = %558
  %561 = icmp eq i32 %488, 2
  %562 = icmp eq i32 %553, 2
  %563 = select i1 %561, i1 true, i1 %562
  br i1 %563, label %564, label %579

564:                                              ; preds = %560
  %565 = load ptr, ptr @hws, align 4
  %566 = getelementptr ptr, ptr %565, i32 18
  %567 = load ptr, ptr %566, align 4
  %568 = getelementptr inbounds %struct.clk_hw, ptr %567, i32 0, i32 1
  %569 = load ptr, ptr %568, align 4
  %570 = call ptr @clk_get_parent(ptr noundef %569) #7
  %571 = load ptr, ptr @hws, align 4
  %572 = getelementptr ptr, ptr %571, i32 6
  %573 = load ptr, ptr %572, align 4
  %574 = getelementptr inbounds %struct.clk_hw, ptr %573, i32 0, i32 1
  %575 = load ptr, ptr %574, align 4
  %576 = icmp eq ptr %570, %575
  br i1 %576, label %577, label %579

577:                                              ; preds = %564
  %578 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.277, i32 noundef 0) #9
  br label %582

579:                                              ; preds = %564, %560
  %580 = or i32 %488, 4
  %581 = or i32 %553, 4
  br label %582

582:                                              ; preds = %579, %577, %558
  %583 = phi i32 [ %488, %558 ], [ %488, %577 ], [ %580, %579 ]
  %584 = phi i32 [ %488, %558 ], [ %488, %577 ], [ %581, %579 ]
  %585 = phi i32 [ %488, %558 ], [ %488, %577 ], [ %553, %579 ]
  %586 = icmp eq i32 %490, 3
  br i1 %586, label %589, label %587

587:                                              ; preds = %582
  %588 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.276, i32 noundef 1, i32 noundef %490) #9
  br label %589

589:                                              ; preds = %587, %582
  %590 = icmp eq i32 %490, %554
  br i1 %590, label %613, label %591

591:                                              ; preds = %589
  %592 = icmp eq i32 %490, 2
  %593 = icmp eq i32 %554, 2
  %594 = select i1 %592, i1 true, i1 %593
  br i1 %594, label %595, label %608

595:                                              ; preds = %591
  %596 = load ptr, ptr @hws, align 4
  %597 = getelementptr ptr, ptr %596, i32 18
  %598 = load ptr, ptr %597, align 4
  %599 = getelementptr inbounds %struct.clk_hw, ptr %598, i32 0, i32 1
  %600 = load ptr, ptr %599, align 4
  %601 = call ptr @clk_get_parent(ptr noundef %600) #7
  %602 = load ptr, ptr @hws, align 4
  %603 = getelementptr ptr, ptr %602, i32 6
  %604 = load ptr, ptr %603, align 4
  %605 = getelementptr inbounds %struct.clk_hw, ptr %604, i32 0, i32 1
  %606 = load ptr, ptr %605, align 4
  %607 = icmp eq ptr %601, %606
  br i1 %607, label %611, label %608

608:                                              ; preds = %595, %591
  %609 = or i32 %490, 4
  %610 = or i32 %554, 4
  br label %613

611:                                              ; preds = %595
  %612 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.277, i32 noundef 1) #9
  br label %613

613:                                              ; preds = %611, %608, %589
  %614 = phi i32 [ %490, %589 ], [ %490, %611 ], [ %609, %608 ]
  %615 = phi i32 [ %490, %589 ], [ %490, %611 ], [ %610, %608 ]
  %616 = phi i32 [ %490, %589 ], [ %490, %611 ], [ %554, %608 ]
  %617 = icmp eq i32 %488, %585
  %618 = icmp eq i32 %490, %616
  %619 = select i1 %617, i1 %618, i1 false
  br i1 %619, label %653, label %620

620:                                              ; preds = %613
  %621 = load ptr, ptr @hws, align 4
  %622 = getelementptr ptr, ptr %621, i32 21
  %623 = load ptr, ptr %622, align 4
  %624 = getelementptr inbounds %struct.clk_hw, ptr %623, i32 0, i32 1
  %625 = load ptr, ptr %624, align 4
  %626 = getelementptr ptr, ptr %621, i32 172
  %627 = load ptr, ptr %626, align 4
  %628 = getelementptr inbounds %struct.clk_hw, ptr %627, i32 0, i32 1
  %629 = load ptr, ptr %628, align 4
  %630 = call i32 @clk_set_parent(ptr noundef %625, ptr noundef %629) #7
  %631 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %370) #7, !srcloc !11
  %632 = or i32 %631, 1
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %370, i32 %632) #7, !srcloc !13
  %633 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %484) #7, !srcloc !11
  %634 = and i32 %633, -32257
  %635 = shl nsw i32 %583, 9
  %636 = shl nsw i32 %614, 12
  %637 = or i32 %636, %635
  %638 = or i32 %637, %634
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %484, i32 %638) #7, !srcloc !13
  %639 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %484) #7, !srcloc !11
  %640 = and i32 %639, -32257
  %641 = shl i32 %584, 9
  %642 = shl i32 %615, 12
  %643 = or i32 %642, %641
  %644 = or i32 %643, %640
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %484, i32 %644) #7, !srcloc !13
  %645 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %484) #7, !srcloc !11
  %646 = and i32 %645, -32257
  %647 = shl i32 %585, 9
  %648 = shl i32 %616, 12
  %649 = or i32 %648, %647
  %650 = or i32 %649, %646
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %484, i32 %650) #7, !srcloc !13
  %651 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %370) #7, !srcloc !11
  %652 = and i32 %651, -2
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %370, i32 %652) #7, !srcloc !13
  br label %653

653:                                              ; preds = %620, %613, %441
  %654 = phi i8 [ 0, %441 ], [ 8, %613 ], [ 8, %620 ]
  %655 = call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.93, i8 noundef zeroext 5, ptr noundef nonnull @ldb_di_sels, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %484, i8 noundef zeroext 9, i32 noundef 7, i8 noundef zeroext %654, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %656 = load ptr, ptr @hws, align 4
  %657 = getelementptr ptr, ptr %656, i32 33
  store ptr %655, ptr %657, align 4
  %658 = call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.94, i8 noundef zeroext 5, ptr noundef nonnull @ldb_di_sels, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %484, i8 noundef zeroext 12, i32 noundef 7, i8 noundef zeroext %654, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %659 = load ptr, ptr @hws, align 4
  %660 = getelementptr ptr, ptr %659, i32 34
  store ptr %658, ptr %660, align 4
  %661 = getelementptr i8, ptr %366, i32 52
  %662 = call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.95, i8 noundef zeroext 6, ptr noundef nonnull @ipu_di_pre_sels, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %661, i8 noundef zeroext 6, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %663 = load ptr, ptr @hws, align 4
  %664 = getelementptr ptr, ptr %663, i32 35
  store ptr %662, ptr %664, align 4
  %665 = call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.96, i8 noundef zeroext 6, ptr noundef nonnull @ipu_di_pre_sels, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %661, i8 noundef zeroext 15, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %666 = load ptr, ptr @hws, align 4
  %667 = getelementptr ptr, ptr %666, i32 36
  store ptr %665, ptr %667, align 4
  %668 = getelementptr i8, ptr %366, i32 56
  %669 = call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.97, i8 noundef zeroext 6, ptr noundef nonnull @ipu_di_pre_sels, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %668, i8 noundef zeroext 6, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %670 = load ptr, ptr @hws, align 4
  %671 = getelementptr ptr, ptr %670, i32 37
  store ptr %669, ptr %671, align 4
  %672 = call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.98, i8 noundef zeroext 6, ptr noundef nonnull @ipu_di_pre_sels, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %668, i8 noundef zeroext 15, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %673 = load ptr, ptr @hws, align 4
  %674 = getelementptr ptr, ptr %673, i32 38
  store ptr %672, ptr %674, align 4
  %675 = call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.99, i8 noundef zeroext 2, ptr noundef nonnull @hsi_tx_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %398, i8 noundef zeroext 28, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %676 = load ptr, ptr @hws, align 4
  %677 = getelementptr ptr, ptr %676, i32 43
  store ptr %675, ptr %677, align 4
  %678 = call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.100, i8 noundef zeroext 2, ptr noundef nonnull @pcie_axi_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %377, i8 noundef zeroext 10, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %679 = load ptr, ptr @hws, align 4
  %680 = getelementptr ptr, ptr %679, i32 44
  store ptr %678, ptr %680, align 4
  %681 = call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.275) #7
  %682 = icmp eq i32 %681, 0
  br i1 %682, label %729, label %683

683:                                              ; preds = %653
  %684 = call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.101, i8 noundef zeroext 5, ptr noundef nonnull @ipu1_di0_sels_2, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %661, i8 noundef zeroext 0, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %685 = load ptr, ptr @hws, align 4
  %686 = getelementptr ptr, ptr %685, i32 39
  store ptr %684, ptr %686, align 4
  %687 = call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.102, i8 noundef zeroext 5, ptr noundef nonnull @ipu1_di1_sels_2, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %661, i8 noundef zeroext 9, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %688 = load ptr, ptr @hws, align 4
  %689 = getelementptr ptr, ptr %688, i32 40
  store ptr %687, ptr %689, align 4
  %690 = call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.103, i8 noundef zeroext 5, ptr noundef nonnull @ipu2_di0_sels_2, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %668, i8 noundef zeroext 0, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %691 = load ptr, ptr @hws, align 4
  %692 = getelementptr ptr, ptr %691, i32 41
  store ptr %690, ptr %692, align 4
  %693 = call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.104, i8 noundef zeroext 5, ptr noundef nonnull @ipu2_di1_sels_2, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %668, i8 noundef zeroext 9, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %694 = load ptr, ptr @hws, align 4
  %695 = getelementptr ptr, ptr %694, i32 42
  store ptr %693, ptr %695, align 4
  %696 = getelementptr i8, ptr %366, i32 28
  %697 = call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.105, i8 noundef zeroext 3, ptr noundef nonnull @ssi_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %696, i8 noundef zeroext 10, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %698 = load ptr, ptr @hws, align 4
  %699 = getelementptr ptr, ptr %698, i32 45
  store ptr %697, ptr %699, align 4
  %700 = call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.106, i8 noundef zeroext 3, ptr noundef nonnull @ssi_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %696, i8 noundef zeroext 12, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %701 = load ptr, ptr @hws, align 4
  %702 = getelementptr ptr, ptr %701, i32 46
  store ptr %700, ptr %702, align 4
  %703 = call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.107, i8 noundef zeroext 3, ptr noundef nonnull @ssi_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %696, i8 noundef zeroext 14, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %704 = load ptr, ptr @hws, align 4
  %705 = getelementptr ptr, ptr %704, i32 47
  store ptr %703, ptr %705, align 4
  %706 = call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.108, i8 noundef zeroext 2, ptr noundef nonnull @usdhc_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %696, i8 noundef zeroext 16, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %707 = load ptr, ptr @hws, align 4
  %708 = getelementptr ptr, ptr %707, i32 48
  store ptr %706, ptr %708, align 4
  %709 = call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.109, i8 noundef zeroext 2, ptr noundef nonnull @usdhc_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %696, i8 noundef zeroext 17, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %710 = load ptr, ptr @hws, align 4
  %711 = getelementptr ptr, ptr %710, i32 49
  store ptr %709, ptr %711, align 4
  %712 = call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.110, i8 noundef zeroext 2, ptr noundef nonnull @usdhc_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %696, i8 noundef zeroext 18, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %713 = load ptr, ptr @hws, align 4
  %714 = getelementptr ptr, ptr %713, i32 50
  store ptr %712, ptr %714, align 4
  %715 = call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.111, i8 noundef zeroext 2, ptr noundef nonnull @usdhc_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %696, i8 noundef zeroext 19, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %716 = load ptr, ptr @hws, align 4
  %717 = getelementptr ptr, ptr %716, i32 51
  store ptr %715, ptr %717, align 4
  %718 = getelementptr i8, ptr %366, i32 44
  %719 = call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.112, i8 noundef zeroext 6, ptr noundef nonnull @enfc_sels_2, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %718, i8 noundef zeroext 15, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %720 = load ptr, ptr @hws, align 4
  %721 = getelementptr ptr, ptr %720, i32 52
  store ptr %719, ptr %721, align 4
  %722 = call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.113, i8 noundef zeroext 4, ptr noundef nonnull @eim_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %696, i8 noundef zeroext 27, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %723 = load ptr, ptr @hws, align 4
  %724 = getelementptr ptr, ptr %723, i32 53
  store ptr %722, ptr %724, align 4
  %725 = call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.114, i8 noundef zeroext 4, ptr noundef nonnull @eim_slow_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %696, i8 noundef zeroext 29, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %726 = load ptr, ptr @hws, align 4
  %727 = getelementptr ptr, ptr %726, i32 54
  store ptr %725, ptr %727, align 4
  %728 = call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.115, i8 noundef zeroext 2, ptr noundef nonnull @pre_axi_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %377, i8 noundef zeroext 1, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  br label %772

729:                                              ; preds = %653
  %730 = call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.101, i8 noundef zeroext 5, ptr noundef nonnull @ipu1_di0_sels, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %661, i8 noundef zeroext 0, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %731 = load ptr, ptr @hws, align 4
  %732 = getelementptr ptr, ptr %731, i32 39
  store ptr %730, ptr %732, align 4
  %733 = call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.102, i8 noundef zeroext 5, ptr noundef nonnull @ipu1_di1_sels, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %661, i8 noundef zeroext 9, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %734 = load ptr, ptr @hws, align 4
  %735 = getelementptr ptr, ptr %734, i32 40
  store ptr %733, ptr %735, align 4
  %736 = call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.103, i8 noundef zeroext 5, ptr noundef nonnull @ipu2_di0_sels, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %668, i8 noundef zeroext 0, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %737 = load ptr, ptr @hws, align 4
  %738 = getelementptr ptr, ptr %737, i32 41
  store ptr %736, ptr %738, align 4
  %739 = call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.104, i8 noundef zeroext 5, ptr noundef nonnull @ipu2_di1_sels, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %668, i8 noundef zeroext 9, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %740 = load ptr, ptr @hws, align 4
  %741 = getelementptr ptr, ptr %740, i32 42
  store ptr %739, ptr %741, align 4
  %742 = getelementptr i8, ptr %366, i32 28
  %743 = call ptr @imx_clk_hw_fixup_mux(ptr noundef nonnull @.str.105, ptr noundef %742, i8 noundef zeroext 10, i8 noundef zeroext 2, ptr noundef nonnull @ssi_sels, i32 noundef 3, ptr noundef nonnull @imx_cscmr1_fixup) #7
  %744 = load ptr, ptr @hws, align 4
  %745 = getelementptr ptr, ptr %744, i32 45
  store ptr %743, ptr %745, align 4
  %746 = call ptr @imx_clk_hw_fixup_mux(ptr noundef nonnull @.str.106, ptr noundef %742, i8 noundef zeroext 12, i8 noundef zeroext 2, ptr noundef nonnull @ssi_sels, i32 noundef 3, ptr noundef nonnull @imx_cscmr1_fixup) #7
  %747 = load ptr, ptr @hws, align 4
  %748 = getelementptr ptr, ptr %747, i32 46
  store ptr %746, ptr %748, align 4
  %749 = call ptr @imx_clk_hw_fixup_mux(ptr noundef nonnull @.str.107, ptr noundef %742, i8 noundef zeroext 14, i8 noundef zeroext 2, ptr noundef nonnull @ssi_sels, i32 noundef 3, ptr noundef nonnull @imx_cscmr1_fixup) #7
  %750 = load ptr, ptr @hws, align 4
  %751 = getelementptr ptr, ptr %750, i32 47
  store ptr %749, ptr %751, align 4
  %752 = call ptr @imx_clk_hw_fixup_mux(ptr noundef nonnull @.str.108, ptr noundef %742, i8 noundef zeroext 16, i8 noundef zeroext 1, ptr noundef nonnull @usdhc_sels, i32 noundef 2, ptr noundef nonnull @imx_cscmr1_fixup) #7
  %753 = load ptr, ptr @hws, align 4
  %754 = getelementptr ptr, ptr %753, i32 48
  store ptr %752, ptr %754, align 4
  %755 = call ptr @imx_clk_hw_fixup_mux(ptr noundef nonnull @.str.109, ptr noundef %742, i8 noundef zeroext 17, i8 noundef zeroext 1, ptr noundef nonnull @usdhc_sels, i32 noundef 2, ptr noundef nonnull @imx_cscmr1_fixup) #7
  %756 = load ptr, ptr @hws, align 4
  %757 = getelementptr ptr, ptr %756, i32 49
  store ptr %755, ptr %757, align 4
  %758 = call ptr @imx_clk_hw_fixup_mux(ptr noundef nonnull @.str.110, ptr noundef %742, i8 noundef zeroext 18, i8 noundef zeroext 1, ptr noundef nonnull @usdhc_sels, i32 noundef 2, ptr noundef nonnull @imx_cscmr1_fixup) #7
  %759 = load ptr, ptr @hws, align 4
  %760 = getelementptr ptr, ptr %759, i32 50
  store ptr %758, ptr %760, align 4
  %761 = call ptr @imx_clk_hw_fixup_mux(ptr noundef nonnull @.str.111, ptr noundef %742, i8 noundef zeroext 19, i8 noundef zeroext 1, ptr noundef nonnull @usdhc_sels, i32 noundef 2, ptr noundef nonnull @imx_cscmr1_fixup) #7
  %762 = load ptr, ptr @hws, align 4
  %763 = getelementptr ptr, ptr %762, i32 51
  store ptr %761, ptr %763, align 4
  %764 = getelementptr i8, ptr %366, i32 44
  %765 = call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.112, i8 noundef zeroext 4, ptr noundef nonnull @enfc_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %764, i8 noundef zeroext 16, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %766 = load ptr, ptr @hws, align 4
  %767 = getelementptr ptr, ptr %766, i32 52
  store ptr %765, ptr %767, align 4
  %768 = call ptr @imx_clk_hw_fixup_mux(ptr noundef nonnull @.str.113, ptr noundef %742, i8 noundef zeroext 27, i8 noundef zeroext 2, ptr noundef nonnull @eim_sels, i32 noundef 4, ptr noundef nonnull @imx_cscmr1_fixup) #7
  %769 = load ptr, ptr @hws, align 4
  %770 = getelementptr ptr, ptr %769, i32 53
  store ptr %768, ptr %770, align 4
  %771 = call ptr @imx_clk_hw_fixup_mux(ptr noundef nonnull @.str.114, ptr noundef %742, i8 noundef zeroext 29, i8 noundef zeroext 2, ptr noundef nonnull @eim_slow_sels, i32 noundef 4, ptr noundef nonnull @imx_cscmr1_fixup) #7
  br label %772

772:                                              ; preds = %729, %683
  %773 = phi i32 [ 54, %729 ], [ 258, %683 ]
  %774 = phi ptr [ %771, %729 ], [ %728, %683 ]
  %775 = load ptr, ptr @hws, align 4
  %776 = getelementptr ptr, ptr %775, i32 %773
  store ptr %774, ptr %776, align 4
  %777 = call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.116, i8 noundef zeroext 2, ptr noundef nonnull @vdo_axi_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %377, i8 noundef zeroext 11, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %778 = load ptr, ptr @hws, align 4
  %779 = getelementptr ptr, ptr %778, i32 55
  store ptr %777, ptr %779, align 4
  %780 = call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.117, i8 noundef zeroext 3, ptr noundef nonnull @vpu_axi_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %377, i8 noundef zeroext 14, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %781 = load ptr, ptr @hws, align 4
  %782 = getelementptr ptr, ptr %781, i32 56
  store ptr %780, ptr %782, align 4
  %783 = getelementptr i8, ptr %366, i32 96
  %784 = call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.118, i8 noundef zeroext 16, ptr noundef nonnull @cko1_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %783, i8 noundef zeroext 0, i32 noundef 15, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %785 = load ptr, ptr @hws, align 4
  %786 = getelementptr ptr, ptr %785, i32 57
  store ptr %784, ptr %786, align 4
  %787 = call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.119, i8 noundef zeroext 32, ptr noundef nonnull @cko2_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %783, i8 noundef zeroext 16, i32 noundef 31, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %788 = load ptr, ptr @hws, align 4
  %789 = getelementptr ptr, ptr %788, i32 198
  store ptr %787, ptr %789, align 4
  %790 = call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.120, i8 noundef zeroext 2, ptr noundef nonnull @cko_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %783, i8 noundef zeroext 8, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %791 = load ptr, ptr @hws, align 4
  %792 = getelementptr ptr, ptr %791, i32 201
  store ptr %790, ptr %792, align 4
  %793 = getelementptr i8, ptr %366, i32 72
  %794 = call ptr @imx_clk_hw_busy_mux(ptr noundef nonnull @.str.121, ptr noundef %390, i8 noundef zeroext 25, i8 noundef zeroext 1, ptr noundef %793, i8 noundef zeroext 5, ptr noundef nonnull @periph_sels, i32 noundef 2) #7
  %795 = load ptr, ptr @hws, align 4
  %796 = getelementptr ptr, ptr %795, i32 58
  store ptr %794, ptr %796, align 4
  %797 = call ptr @imx_clk_hw_busy_mux(ptr noundef nonnull @.str.122, ptr noundef %390, i8 noundef zeroext 26, i8 noundef zeroext 1, ptr noundef %793, i8 noundef zeroext 3, ptr noundef nonnull @periph2_sels, i32 noundef 2) #7
  %798 = load ptr, ptr @hws, align 4
  %799 = getelementptr ptr, ptr %798, i32 59
  store ptr %797, ptr %799, align 4
  %800 = call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.123, ptr noundef nonnull @.str.77, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %390, i8 noundef zeroext 27, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %801 = load ptr, ptr @hws, align 4
  %802 = getelementptr ptr, ptr %801, i32 60
  store ptr %800, ptr %802, align 4
  %803 = call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.124, ptr noundef nonnull @.str.78, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %390, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %804 = load ptr, ptr @hws, align 4
  %805 = getelementptr ptr, ptr %804, i32 61
  store ptr %803, ptr %805, align 4
  %806 = call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.125, ptr noundef nonnull @.str.126, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %390, i8 noundef zeroext 8, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %807 = load ptr, ptr @hws, align 4
  %808 = getelementptr ptr, ptr %807, i32 62
  store ptr %806, ptr %808, align 4
  %809 = getelementptr i8, ptr %366, i32 40
  %810 = call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.127, ptr noundef nonnull @.str.80, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %809, i8 noundef zeroext 9, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %811 = load ptr, ptr @hws, align 4
  %812 = getelementptr ptr, ptr %811, i32 64
  store ptr %810, ptr %812, align 4
  %813 = call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.128, ptr noundef nonnull @.str.127, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %809, i8 noundef zeroext 25, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %814 = load ptr, ptr @hws, align 4
  %815 = getelementptr ptr, ptr %814, i32 65
  store ptr %813, ptr %815, align 4
  %816 = call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.129, ptr noundef nonnull @.str.81, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %398, i8 noundef zeroext 12, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %817 = load ptr, ptr @hws, align 4
  %818 = getelementptr ptr, ptr %817, i32 66
  store ptr %816, ptr %818, align 4
  %819 = call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.130, ptr noundef nonnull @.str.129, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %398, i8 noundef zeroext 9, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %820 = load ptr, ptr @hws, align 4
  %821 = getelementptr ptr, ptr %820, i32 67
  store ptr %819, ptr %821, align 4
  %822 = call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.82, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %398, i8 noundef zeroext 25, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %823 = load ptr, ptr @hws, align 4
  %824 = getelementptr ptr, ptr %823, i32 68
  store ptr %822, ptr %824, align 4
  %825 = call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.132, ptr noundef nonnull @.str.131, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %398, i8 noundef zeroext 22, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %826 = load ptr, ptr @hws, align 4
  %827 = getelementptr ptr, ptr %826, i32 69
  store ptr %825, ptr %827, align 4
  %828 = call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.275) #7
  %829 = icmp eq i32 %828, 0
  br i1 %829, label %839, label %830

830:                                              ; preds = %772
  %831 = getelementptr i8, ptr %366, i32 28
  %832 = call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.133, ptr noundef nonnull @.str.85, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %831, i8 noundef zeroext 0, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %833 = load ptr, ptr @hws, align 4
  %834 = getelementptr ptr, ptr %833, i32 63
  store ptr %832, ptr %834, align 4
  %835 = call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.134, ptr noundef nonnull @.str.84, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %668, i8 noundef zeroext 19, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %836 = load ptr, ptr @hws, align 4
  %837 = getelementptr ptr, ptr %836, i32 71
  store ptr %835, ptr %837, align 4
  %838 = call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.135, ptr noundef nonnull @.str.83, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %394, i8 noundef zeroext 2, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  br label %848

839:                                              ; preds = %772
  %840 = call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.134, ptr noundef nonnull @.str.61, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %668, i8 noundef zeroext 19, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %841 = load ptr, ptr @hws, align 4
  %842 = getelementptr ptr, ptr %841, i32 71
  store ptr %840, ptr %842, align 4
  %843 = call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.135, ptr noundef nonnull @.str.61, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %394, i8 noundef zeroext 2, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %844 = load ptr, ptr @hws, align 4
  %845 = getelementptr ptr, ptr %844, i32 70
  store ptr %843, ptr %845, align 4
  %846 = getelementptr i8, ptr %366, i32 28
  %847 = call ptr @imx_clk_hw_fixup_divider(ptr noundef nonnull @.str.133, ptr noundef nonnull @.str.125, ptr noundef %846, i8 noundef zeroext 0, i8 noundef zeroext 6, ptr noundef nonnull @imx_cscmr1_fixup) #7
  br label %848

848:                                              ; preds = %839, %830
  %849 = phi i32 [ 63, %839 ], [ 70, %830 ]
  %850 = phi ptr [ %847, %839 ], [ %838, %830 ]
  %851 = phi ptr [ @.str.60, %839 ], [ @.str.86, %830 ]
  %852 = phi ptr [ @.str.93, %839 ], [ @.str.138, %830 ]
  %853 = phi ptr [ @.str.94, %839 ], [ @.str.140, %830 ]
  %854 = load ptr, ptr @hws, align 4
  %855 = getelementptr ptr, ptr %854, i32 %849
  store ptr %850, ptr %855, align 4
  %856 = getelementptr i8, ptr %366, i32 36
  %857 = call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.136, ptr noundef nonnull %851, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %856, i8 noundef zeroext 0, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %858 = load ptr, ptr @hws, align 4
  %859 = getelementptr ptr, ptr %858, i32 90
  store ptr %857, ptr %859, align 4
  %860 = call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.137, ptr noundef nonnull %852, i32 noundef 4, i32 noundef 2, i32 noundef 7) #7
  %861 = load ptr, ptr @hws, align 4
  %862 = getelementptr ptr, ptr %861, i32 184
  store ptr %860, ptr %862, align 4
  %863 = call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.139, ptr noundef nonnull %853, i32 noundef 4, i32 noundef 2, i32 noundef 7) #7
  %864 = load ptr, ptr @hws, align 4
  %865 = getelementptr ptr, ptr %864, i32 185
  store ptr %863, ptr %865, align 4
  %866 = call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.274) #7
  %867 = icmp eq i32 %866, 0
  br i1 %867, label %870, label %868

868:                                              ; preds = %848
  %869 = call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.141, ptr noundef nonnull @.str.88, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %377, i8 noundef zeroext 23, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  br label %872

870:                                              ; preds = %848
  %871 = call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.142, ptr noundef nonnull @.str.87, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %377, i8 noundef zeroext 23, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  br label %872

872:                                              ; preds = %870, %868
  %873 = phi i32 [ 72, %870 ], [ 260, %868 ]
  %874 = phi ptr [ %871, %870 ], [ %869, %868 ]
  %875 = load ptr, ptr @hws, align 4
  %876 = getelementptr ptr, ptr %875, i32 %873
  store ptr %874, ptr %876, align 4
  %877 = call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.143, ptr noundef nonnull @.str.89, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %377, i8 noundef zeroext 26, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %878 = load ptr, ptr @hws, align 4
  %879 = getelementptr ptr, ptr %878, i32 73
  store ptr %877, ptr %879, align 4
  %880 = call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.274) #7
  %881 = icmp eq i32 %880, 0
  br i1 %881, label %884, label %882

882:                                              ; preds = %872
  %883 = call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.142, ptr noundef nonnull @.str.87, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %377, i8 noundef zeroext 29, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  br label %886

884:                                              ; preds = %872
  %885 = call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.144, ptr noundef nonnull @.str.90, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %377, i8 noundef zeroext 29, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  br label %886

886:                                              ; preds = %884, %882
  %887 = phi i32 [ 74, %884 ], [ 72, %882 ]
  %888 = phi ptr [ %885, %884 ], [ %883, %882 ]
  %889 = load ptr, ptr @hws, align 4
  %890 = getelementptr ptr, ptr %889, i32 %887
  store ptr %888, ptr %890, align 4
  %891 = call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.145, ptr noundef nonnull @.str.91, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %456, i8 noundef zeroext 11, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %892 = load ptr, ptr @hws, align 4
  %893 = getelementptr ptr, ptr %892, i32 75
  store ptr %891, ptr %893, align 4
  %894 = call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.146, ptr noundef nonnull @.str.92, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %456, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %895 = load ptr, ptr @hws, align 4
  %896 = getelementptr ptr, ptr %895, i32 76
  store ptr %894, ptr %896, align 4
  %897 = call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.147, ptr noundef nonnull @.str.137, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef %394, i8 noundef zeroext 10, i8 noundef zeroext 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %898 = load ptr, ptr @hws, align 4
  %899 = getelementptr ptr, ptr %898, i32 77
  store ptr %897, ptr %899, align 4
  %900 = call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.139, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef %394, i8 noundef zeroext 11, i8 noundef zeroext 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %901 = load ptr, ptr @hws, align 4
  %902 = getelementptr ptr, ptr %901, i32 78
  store ptr %900, ptr %902, align 4
  %903 = call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.149, ptr noundef nonnull @.str.95, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %661, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %904 = load ptr, ptr @hws, align 4
  %905 = getelementptr ptr, ptr %904, i32 79
  store ptr %903, ptr %905, align 4
  %906 = call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.150, ptr noundef nonnull @.str.96, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %661, i8 noundef zeroext 12, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %907 = load ptr, ptr @hws, align 4
  %908 = getelementptr ptr, ptr %907, i32 80
  store ptr %906, ptr %908, align 4
  %909 = call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.151, ptr noundef nonnull @.str.97, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %668, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %910 = load ptr, ptr @hws, align 4
  %911 = getelementptr ptr, ptr %910, i32 81
  store ptr %909, ptr %911, align 4
  %912 = call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.152, ptr noundef nonnull @.str.98, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %668, i8 noundef zeroext 12, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %913 = load ptr, ptr @hws, align 4
  %914 = getelementptr ptr, ptr %913, i32 82
  store ptr %912, ptr %914, align 4
  %915 = call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.153, ptr noundef nonnull @.str.99, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %398, i8 noundef zeroext 29, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %916 = load ptr, ptr @hws, align 4
  %917 = getelementptr ptr, ptr %916, i32 83
  store ptr %915, ptr %917, align 4
  %918 = call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.154, ptr noundef nonnull @.str.105, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %809, i8 noundef zeroext 6, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %919 = load ptr, ptr @hws, align 4
  %920 = getelementptr ptr, ptr %919, i32 84
  store ptr %918, ptr %920, align 4
  %921 = call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.155, ptr noundef nonnull @.str.154, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %809, i8 noundef zeroext 0, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %922 = load ptr, ptr @hws, align 4
  %923 = getelementptr ptr, ptr %922, i32 85
  store ptr %921, ptr %923, align 4
  %924 = getelementptr i8, ptr %366, i32 44
  %925 = call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.156, ptr noundef nonnull @.str.106, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %924, i8 noundef zeroext 6, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %926 = load ptr, ptr @hws, align 4
  %927 = getelementptr ptr, ptr %926, i32 86
  store ptr %925, ptr %927, align 4
  %928 = call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.157, ptr noundef nonnull @.str.156, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %924, i8 noundef zeroext 0, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %929 = load ptr, ptr @hws, align 4
  %930 = getelementptr ptr, ptr %929, i32 87
  store ptr %928, ptr %930, align 4
  %931 = call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.158, ptr noundef nonnull @.str.107, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %809, i8 noundef zeroext 22, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %932 = load ptr, ptr @hws, align 4
  %933 = getelementptr ptr, ptr %932, i32 88
  store ptr %931, ptr %933, align 4
  %934 = call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.158, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %809, i8 noundef zeroext 16, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %935 = load ptr, ptr @hws, align 4
  %936 = getelementptr ptr, ptr %935, i32 89
  store ptr %934, ptr %936, align 4
  %937 = getelementptr i8, ptr %366, i32 36
  %938 = call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.160, ptr noundef nonnull @.str.108, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %937, i8 noundef zeroext 11, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %939 = load ptr, ptr @hws, align 4
  %940 = getelementptr ptr, ptr %939, i32 91
  store ptr %938, ptr %940, align 4
  %941 = call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.161, ptr noundef nonnull @.str.109, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %937, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %942 = load ptr, ptr @hws, align 4
  %943 = getelementptr ptr, ptr %942, i32 92
  store ptr %941, ptr %943, align 4
  %944 = call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.162, ptr noundef nonnull @.str.110, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %937, i8 noundef zeroext 19, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %945 = load ptr, ptr @hws, align 4
  %946 = getelementptr ptr, ptr %945, i32 93
  store ptr %944, ptr %946, align 4
  %947 = call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.163, ptr noundef nonnull @.str.111, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %937, i8 noundef zeroext 22, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %948 = load ptr, ptr @hws, align 4
  %949 = getelementptr ptr, ptr %948, i32 94
  store ptr %947, ptr %949, align 4
  %950 = call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.164, ptr noundef nonnull @.str.112, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %924, i8 noundef zeroext 18, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %951 = load ptr, ptr @hws, align 4
  %952 = getelementptr ptr, ptr %951, i32 95
  store ptr %950, ptr %952, align 4
  %953 = call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.165, ptr noundef nonnull @.str.164, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %924, i8 noundef zeroext 21, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %954 = load ptr, ptr @hws, align 4
  %955 = getelementptr ptr, ptr %954, i32 96
  store ptr %953, ptr %955, align 4
  %956 = call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.275) #7
  %957 = icmp eq i32 %956, 0
  %958 = getelementptr i8, ptr %366, i32 28
  br i1 %957, label %964, label %959

959:                                              ; preds = %886
  %960 = call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.166, ptr noundef nonnull @.str.113, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %958, i8 noundef zeroext 20, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %961 = load ptr, ptr @hws, align 4
  %962 = getelementptr ptr, ptr %961, i32 97
  store ptr %960, ptr %962, align 4
  %963 = call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.167, ptr noundef nonnull @.str.114, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %958, i8 noundef zeroext 23, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  br label %969

964:                                              ; preds = %886
  %965 = call ptr @imx_clk_hw_fixup_divider(ptr noundef nonnull @.str.166, ptr noundef nonnull @.str.113, ptr noundef %958, i8 noundef zeroext 20, i8 noundef zeroext 3, ptr noundef nonnull @imx_cscmr1_fixup) #7
  %966 = load ptr, ptr @hws, align 4
  %967 = getelementptr ptr, ptr %966, i32 97
  store ptr %965, ptr %967, align 4
  %968 = call ptr @imx_clk_hw_fixup_divider(ptr noundef nonnull @.str.167, ptr noundef nonnull @.str.114, ptr noundef %958, i8 noundef zeroext 23, i8 noundef zeroext 3, ptr noundef nonnull @imx_cscmr1_fixup) #7
  br label %969

969:                                              ; preds = %964, %959
  %970 = phi ptr [ %968, %964 ], [ %963, %959 ]
  %971 = load ptr, ptr @hws, align 4
  %972 = getelementptr ptr, ptr %971, i32 98
  store ptr %970, ptr %972, align 4
  %973 = call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.168, ptr noundef nonnull @.str.117, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %937, i8 noundef zeroext 25, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %974 = load ptr, ptr @hws, align 4
  %975 = getelementptr ptr, ptr %974, i32 99
  store ptr %973, ptr %975, align 4
  %976 = call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.169, ptr noundef nonnull @.str.118, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %783, i8 noundef zeroext 4, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %977 = load ptr, ptr @hws, align 4
  %978 = getelementptr ptr, ptr %977, i32 100
  store ptr %976, ptr %978, align 4
  %979 = call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.170, ptr noundef nonnull @.str.119, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %783, i8 noundef zeroext 21, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #7
  %980 = load ptr, ptr @hws, align 4
  %981 = getelementptr ptr, ptr %980, i32 199
  store ptr %979, ptr %981, align 4
  %982 = call ptr @imx_clk_hw_busy_divider(ptr noundef nonnull @.str.171, ptr noundef nonnull @.str.79, ptr noundef %390, i8 noundef zeroext 16, i8 noundef zeroext 3, ptr noundef %793, i8 noundef zeroext 0) #7
  %983 = load ptr, ptr @hws, align 4
  %984 = getelementptr ptr, ptr %983, i32 101
  store ptr %982, ptr %984, align 4
  %985 = call ptr @imx_clk_hw_busy_divider(ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.121, ptr noundef %390, i8 noundef zeroext 19, i8 noundef zeroext 3, ptr noundef %793, i8 noundef zeroext 4) #7
  %986 = load ptr, ptr @hws, align 4
  %987 = getelementptr ptr, ptr %986, i32 102
  store ptr %985, ptr %987, align 4
  %988 = call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.275) #7
  %989 = icmp eq i32 %988, 0
  br i1 %989, label %995, label %990

990:                                              ; preds = %969
  %991 = getelementptr i8, ptr %366, i32 4
  %992 = call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.172, ptr noundef nonnull @.str.122, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %991, i8 noundef zeroext 18, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #7
  %993 = load ptr, ptr @hws, align 4
  %994 = getelementptr ptr, ptr %993, i32 249
  store ptr %992, ptr %994, align 4
  br label %995

995:                                              ; preds = %990, %969
  %996 = phi ptr [ @.str.172, %990 ], [ @.str.122, %969 ]
  %997 = call ptr @imx_clk_hw_busy_divider(ptr noundef nonnull @.str.173, ptr noundef nonnull %996, ptr noundef %390, i8 noundef zeroext 3, i8 noundef zeroext 3, ptr noundef %793, i8 noundef zeroext 2) #7
  %998 = load ptr, ptr @hws, align 4
  %999 = getelementptr ptr, ptr %998, i32 103
  store ptr %997, ptr %999, align 4
  %1000 = getelementptr i8, ptr %366, i32 16
  %1001 = call ptr @imx_clk_hw_busy_divider(ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.74, ptr noundef %1000, i8 noundef zeroext 0, i8 noundef zeroext 3, ptr noundef %793, i8 noundef zeroext 16) #7
  %1002 = load ptr, ptr @hws, align 4
  %1003 = getelementptr ptr, ptr %1002, i32 104
  store ptr %1001, ptr %1003, align 4
  %1004 = call ptr @imx_clk_hw_busy_divider(ptr noundef nonnull @.str.126, ptr noundef nonnull @.str.121, ptr noundef %390, i8 noundef zeroext 10, i8 noundef zeroext 3, ptr noundef %793, i8 noundef zeroext 1) #7
  %1005 = load ptr, ptr @hws, align 4
  %1006 = getelementptr ptr, ptr %1005, i32 105
  store ptr %1004, ptr %1006, align 4
  %1007 = getelementptr i8, ptr %366, i32 104
  %1008 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.174, ptr noundef nonnull @.str.175, i32 noundef 4, ptr noundef %1007, i8 noundef zeroext 4, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #7
  %1009 = load ptr, ptr @hws, align 4
  %1010 = getelementptr ptr, ptr %1009, i32 106
  store ptr %1008, ptr %1010, align 4
  %1011 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.176, ptr noundef nonnull @.str.130, i32 noundef 4, ptr noundef %1007, i8 noundef zeroext 6, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_asrc) #7
  %1012 = load ptr, ptr @hws, align 4
  %1013 = getelementptr ptr, ptr %1012, i32 107
  store ptr %1011, ptr %1013, align 4
  %1014 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.177, ptr noundef nonnull @.str.126, i32 noundef 4, ptr noundef %1007, i8 noundef zeroext 6, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_asrc) #7
  %1015 = load ptr, ptr @hws, align 4
  %1016 = getelementptr ptr, ptr %1015, i32 210
  store ptr %1014, ptr %1016, align 4
  %1017 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.178, ptr noundef nonnull @.str.126, i32 noundef 4, ptr noundef %1007, i8 noundef zeroext 6, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_asrc) #7
  %1018 = load ptr, ptr @hws, align 4
  %1019 = getelementptr ptr, ptr %1018, i32 211
  store ptr %1017, ptr %1019, align 4
  %1020 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.179, ptr noundef nonnull @.str.126, i32 noundef 4, ptr noundef %1007, i8 noundef zeroext 8, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #7
  %1021 = load ptr, ptr @hws, align 4
  %1022 = getelementptr ptr, ptr %1021, i32 241
  store ptr %1020, ptr %1022, align 4
  %1023 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.180, ptr noundef nonnull @.str.126, i32 noundef 4, ptr noundef %1007, i8 noundef zeroext 10, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #7
  %1024 = load ptr, ptr @hws, align 4
  %1025 = getelementptr ptr, ptr %1024, i32 242
  store ptr %1023, ptr %1025, align 4
  %1026 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.181, ptr noundef nonnull @.str.125, i32 noundef 4, ptr noundef %1007, i8 noundef zeroext 12, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #7
  %1027 = load ptr, ptr @hws, align 4
  %1028 = getelementptr ptr, ptr %1027, i32 243
  store ptr %1026, ptr %1028, align 4
  %1029 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.182, ptr noundef nonnull @.str.125, i32 noundef 4, ptr noundef %1007, i8 noundef zeroext 14, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #7
  %1030 = load ptr, ptr @hws, align 4
  %1031 = getelementptr ptr, ptr %1030, i32 108
  store ptr %1029, ptr %1031, align 4
  %1032 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.183, ptr noundef nonnull @.str.135, i32 noundef 4, ptr noundef %1007, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #7
  %1033 = load ptr, ptr @hws, align 4
  %1034 = getelementptr ptr, ptr %1033, i32 109
  store ptr %1032, ptr %1034, align 4
  %1035 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.184, ptr noundef nonnull @.str.125, i32 noundef 4, ptr noundef %1007, i8 noundef zeroext 18, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #7
  %1036 = load ptr, ptr @hws, align 4
  %1037 = getelementptr ptr, ptr %1036, i32 110
  store ptr %1035, ptr %1037, align 4
  %1038 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.185, ptr noundef nonnull @.str.135, i32 noundef 4, ptr noundef %1007, i8 noundef zeroext 20, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #7
  %1039 = load ptr, ptr @hws, align 4
  %1040 = getelementptr ptr, ptr %1039, i32 111
  store ptr %1038, ptr %1040, align 4
  %1041 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.186, ptr noundef nonnull @.str.145, i32 noundef 4, ptr noundef %1007, i8 noundef zeroext 24, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #7
  %1042 = load ptr, ptr @hws, align 4
  %1043 = getelementptr ptr, ptr %1042, i32 264
  store ptr %1041, ptr %1043, align 4
  %1044 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.187, ptr noundef nonnull @.str.146, i32 noundef 4, ptr noundef %1007, i8 noundef zeroext 26, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #7
  %1045 = load ptr, ptr @hws, align 4
  %1046 = getelementptr ptr, ptr %1045, i32 265
  store ptr %1044, ptr %1046, align 4
  %1047 = getelementptr i8, ptr %366, i32 108
  %1048 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.188, ptr noundef nonnull @.str.134, i32 noundef 4, ptr noundef %1047, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #7
  %1049 = load ptr, ptr @hws, align 4
  %1050 = getelementptr ptr, ptr %1049, i32 112
  store ptr %1048, ptr %1050, align 4
  %1051 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.189, ptr noundef nonnull @.str.134, i32 noundef 4, ptr noundef %1047, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #7
  %1052 = load ptr, ptr @hws, align 4
  %1053 = getelementptr ptr, ptr %1052, i32 113
  store ptr %1051, ptr %1053, align 4
  %1054 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.190, ptr noundef nonnull @.str.134, i32 noundef 4, ptr noundef %1047, i8 noundef zeroext 4, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #7
  %1055 = load ptr, ptr @hws, align 4
  %1056 = getelementptr ptr, ptr %1055, i32 114
  store ptr %1054, ptr %1056, align 4
  %1057 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.191, ptr noundef nonnull @.str.134, i32 noundef 4, ptr noundef %1047, i8 noundef zeroext 6, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #7
  %1058 = load ptr, ptr @hws, align 4
  %1059 = getelementptr ptr, ptr %1058, i32 115
  store ptr %1057, ptr %1059, align 4
  %1060 = call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.274) #7
  %1061 = icmp eq i32 %1060, 0
  br i1 %1061, label %1064, label %1062

1062:                                             ; preds = %995
  %1063 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.192, ptr noundef nonnull @.str.133, i32 noundef 4, ptr noundef %1047, i8 noundef zeroext 8, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #7
  br label %1066

1064:                                             ; preds = %995
  %1065 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.193, ptr noundef nonnull @.str.134, i32 noundef 4, ptr noundef %1047, i8 noundef zeroext 8, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #7
  br label %1066

1066:                                             ; preds = %1064, %1062
  %1067 = phi ptr [ %1065, %1064 ], [ %1063, %1062 ]
  %1068 = load ptr, ptr @hws, align 4
  %1069 = getelementptr ptr, ptr %1068, i32 116
  store ptr %1067, ptr %1069, align 4
  %1070 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.194, ptr noundef nonnull @.str.125, i32 noundef 4, ptr noundef %1047, i8 noundef zeroext 10, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #7
  %1071 = load ptr, ptr @hws, align 4
  %1072 = getelementptr ptr, ptr %1071, i32 117
  store ptr %1070, ptr %1072, align 4
  %1073 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.195, ptr noundef nonnull @.str.125, i32 noundef 4, ptr noundef %1047, i8 noundef zeroext 12, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #7
  %1074 = load ptr, ptr @hws, align 4
  %1075 = getelementptr ptr, ptr %1074, i32 261
  store ptr %1073, ptr %1075, align 4
  %1076 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.196, ptr noundef nonnull @.str.125, i32 noundef 4, ptr noundef %1047, i8 noundef zeroext 14, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #7
  %1077 = load ptr, ptr @hws, align 4
  %1078 = getelementptr ptr, ptr %1077, i32 262
  store ptr %1076, ptr %1078, align 4
  %1079 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.197, ptr noundef nonnull @.str.128, i32 noundef 4, ptr noundef %1047, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_esai) #7
  %1080 = load ptr, ptr @hws, align 4
  %1081 = getelementptr ptr, ptr %1080, i32 118
  store ptr %1079, ptr %1081, align 4
  %1082 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.198, ptr noundef nonnull @.str.126, i32 noundef 4, ptr noundef %1047, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_esai) #7
  %1083 = load ptr, ptr @hws, align 4
  %1084 = getelementptr ptr, ptr %1083, i32 208
  store ptr %1082, ptr %1084, align 4
  %1085 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.199, ptr noundef nonnull @.str.126, i32 noundef 4, ptr noundef %1047, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_esai) #7
  %1086 = load ptr, ptr @hws, align 4
  %1087 = getelementptr ptr, ptr %1086, i32 209
  store ptr %1085, ptr %1087, align 4
  %1088 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.200, ptr noundef nonnull @.str.125, i32 noundef 4, ptr noundef %1047, i8 noundef zeroext 20, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #7
  %1089 = load ptr, ptr @hws, align 4
  %1090 = getelementptr ptr, ptr %1089, i32 119
  store ptr %1088, ptr %1090, align 4
  %1091 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.201, ptr noundef nonnull @.str.133, i32 noundef 4, ptr noundef %1047, i8 noundef zeroext 22, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #7
  %1092 = load ptr, ptr @hws, align 4
  %1093 = getelementptr ptr, ptr %1092, i32 120
  store ptr %1091, ptr %1093, align 4
  %1094 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.202, ptr noundef nonnull @.str.142, i32 noundef 4, ptr noundef %1047, i8 noundef zeroext 24, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #7
  %1095 = load ptr, ptr @hws, align 4
  %1096 = getelementptr ptr, ptr %1095, i32 121
  store ptr %1094, ptr %1096, align 4
  %1097 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.203, ptr noundef nonnull @.str.143, i32 noundef 4, ptr noundef %1047, i8 noundef zeroext 26, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #7
  %1098 = load ptr, ptr @hws, align 4
  %1099 = getelementptr ptr, ptr %1098, i32 122
  store ptr %1097, ptr %1099, align 4
  %1100 = getelementptr i8, ptr %366, i32 112
  %1101 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.204, ptr noundef nonnull @.str.126, i32 noundef 4, ptr noundef %1100, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #7
  %1102 = load ptr, ptr @hws, align 4
  %1103 = getelementptr ptr, ptr %1102, i32 123
  store ptr %1101, ptr %1103, align 4
  %1104 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.205, ptr noundef nonnull @.str.206, i32 noundef 4, ptr noundef %1100, i8 noundef zeroext 4, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #7
  %1105 = load ptr, ptr @hws, align 4
  %1106 = getelementptr ptr, ptr %1105, i32 124
  store ptr %1104, ptr %1106, align 4
  %1107 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.207, ptr noundef nonnull @.str.133, i32 noundef 4, ptr noundef %1100, i8 noundef zeroext 6, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #7
  %1108 = load ptr, ptr @hws, align 4
  %1109 = getelementptr ptr, ptr %1108, i32 125
  store ptr %1107, ptr %1109, align 4
  %1110 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.208, ptr noundef nonnull @.str.133, i32 noundef 4, ptr noundef %1100, i8 noundef zeroext 8, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #7
  %1111 = load ptr, ptr @hws, align 4
  %1112 = getelementptr ptr, ptr %1111, i32 126
  store ptr %1110, ptr %1112, align 4
  %1113 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.209, ptr noundef nonnull @.str.133, i32 noundef 4, ptr noundef %1100, i8 noundef zeroext 10, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #7
  %1114 = load ptr, ptr @hws, align 4
  %1115 = getelementptr ptr, ptr %1114, i32 127
  store ptr %1113, ptr %1115, align 4
  %1116 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.210, ptr noundef nonnull @.str.125, i32 noundef 4, ptr noundef %1100, i8 noundef zeroext 12, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #7
  %1117 = load ptr, ptr @hws, align 4
  %1118 = getelementptr ptr, ptr %1117, i32 128
  store ptr %1116, ptr %1118, align 4
  %1119 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.211, ptr noundef nonnull @.str.165, i32 noundef 4, ptr noundef %1100, i8 noundef zeroext 14, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #7
  %1120 = load ptr, ptr @hws, align 4
  %1121 = getelementptr ptr, ptr %1120, i32 129
  store ptr %1119, ptr %1121, align 4
  %1122 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.212, ptr noundef nonnull @.str.213, i32 noundef 4, ptr noundef %1100, i8 noundef zeroext 26, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #7
  %1123 = load ptr, ptr @hws, align 4
  %1124 = getelementptr ptr, ptr %1123, i32 202
  store ptr %1122, ptr %1124, align 4
  %1125 = getelementptr i8, ptr %366, i32 116
  %1126 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.214, ptr noundef nonnull @.str.145, i32 noundef 4, ptr noundef %1125, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #7
  %1127 = load ptr, ptr @hws, align 4
  %1128 = getelementptr ptr, ptr %1127, i32 130
  store ptr %1126, ptr %1128, align 4
  %1129 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.215, ptr noundef nonnull @.str.101, i32 noundef 4, ptr noundef %1125, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #7
  %1130 = load ptr, ptr @hws, align 4
  %1131 = getelementptr ptr, ptr %1130, i32 131
  store ptr %1129, ptr %1131, align 4
  %1132 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.216, ptr noundef nonnull @.str.102, i32 noundef 4, ptr noundef %1125, i8 noundef zeroext 4, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #7
  %1133 = load ptr, ptr @hws, align 4
  %1134 = getelementptr ptr, ptr %1133, i32 132
  store ptr %1132, ptr %1134, align 4
  %1135 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.217, ptr noundef nonnull @.str.146, i32 noundef 4, ptr noundef %1125, i8 noundef zeroext 6, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #7
  %1136 = load ptr, ptr @hws, align 4
  %1137 = getelementptr ptr, ptr %1136, i32 133
  store ptr %1135, ptr %1137, align 4
  %1138 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.218, ptr noundef nonnull @.str.103, i32 noundef 4, ptr noundef %1125, i8 noundef zeroext 8, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #7
  %1139 = load ptr, ptr @hws, align 4
  %1140 = getelementptr ptr, ptr %1139, i32 134
  store ptr %1138, ptr %1140, align 4
  %1141 = call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.275) #7
  %1142 = icmp eq i32 %1141, 0
  %1143 = select i1 %1142, ptr @.str.147, ptr @.str.93
  %1144 = select i1 %1142, ptr @.str.148, ptr @.str.94
  %1145 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.138, ptr noundef nonnull %1143, i32 noundef 4, ptr noundef %1125, i8 noundef zeroext 12, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #7
  %1146 = load ptr, ptr @hws, align 4
  %1147 = getelementptr ptr, ptr %1146, i32 135
  store ptr %1145, ptr %1147, align 4
  %1148 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.140, ptr noundef nonnull %1144, i32 noundef 4, ptr noundef %1125, i8 noundef zeroext 14, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #7
  %1149 = load ptr, ptr @hws, align 4
  %1150 = getelementptr ptr, ptr %1149, i32 136
  store ptr %1148, ptr %1150, align 4
  %1151 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.219, ptr noundef nonnull @.str.104, i32 noundef 4, ptr noundef %1125, i8 noundef zeroext 10, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #7
  %1152 = load ptr, ptr @hws, align 4
  %1153 = getelementptr ptr, ptr %1152, i32 137
  store ptr %1151, ptr %1153, align 4
  %1154 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.220, ptr noundef nonnull @.str.153, i32 noundef 4, ptr noundef %1125, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_mipi_core_cfg) #7
  %1155 = load ptr, ptr @hws, align 4
  %1156 = getelementptr ptr, ptr %1155, i32 138
  store ptr %1154, ptr %1156, align 4
  %1157 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.206, ptr noundef nonnull @.str.65, i32 noundef 4, ptr noundef %1125, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_mipi_core_cfg) #7
  %1158 = load ptr, ptr @hws, align 4
  %1159 = getelementptr ptr, ptr %1158, i32 239
  store ptr %1157, ptr %1159, align 4
  %1160 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.221, ptr noundef nonnull @.str.125, i32 noundef 4, ptr noundef %1125, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_mipi_core_cfg) #7
  %1161 = load ptr, ptr @hws, align 4
  %1162 = getelementptr ptr, ptr %1161, i32 240
  store ptr %1160, ptr %1162, align 4
  %1163 = call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.274) #7
  %1164 = icmp eq i32 %1163, 0
  %1165 = select i1 %1164, ptr @.str.171, ptr @.str.141
  %1166 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.222, ptr noundef nonnull %1165, i32 noundef 4, ptr noundef %1125, i8 noundef zeroext 18, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #7
  %1167 = load ptr, ptr @hws, align 4
  %1168 = getelementptr ptr, ptr %1167, i32 139
  store ptr %1166, ptr %1168, align 4
  %1169 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.223, ptr noundef nonnull @.str.67, i32 noundef 2052, ptr noundef %1125, i8 noundef zeroext 20, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #7
  %1170 = load ptr, ptr @hws, align 4
  %1171 = getelementptr ptr, ptr %1170, i32 140
  store ptr %1169, ptr %1171, align 4
  %1172 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.224, ptr noundef nonnull @.str.173, i32 noundef 4, ptr noundef %1125, i8 noundef zeroext 22, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #7
  %1173 = load ptr, ptr @hws, align 4
  %1174 = getelementptr ptr, ptr %1173, i32 141
  store ptr %1172, ptr %1174, align 4
  %1175 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.225, ptr noundef nonnull @.str.125, i32 noundef 2052, ptr noundef %1125, i8 noundef zeroext 24, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #7
  %1176 = load ptr, ptr @hws, align 4
  %1177 = getelementptr ptr, ptr %1176, i32 263
  store ptr %1175, ptr %1177, align 4
  %1178 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.226, ptr noundef nonnull @.str.126, i32 noundef 4, ptr noundef %1125, i8 noundef zeroext 28, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #7
  %1179 = load ptr, ptr @hws, align 4
  %1180 = getelementptr ptr, ptr %1179, i32 142
  store ptr %1178, ptr %1180, align 4
  %1181 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.227, ptr noundef nonnull @.str.171, i32 noundef 4, ptr noundef %1125, i8 noundef zeroext 30, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #7
  %1182 = load ptr, ptr @hws, align 4
  %1183 = getelementptr ptr, ptr %1182, i32 143
  store ptr %1181, ptr %1183, align 4
  %1184 = getelementptr i8, ptr %366, i32 120
  %1185 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.228, ptr noundef nonnull @.str.100, i32 noundef 4, ptr noundef %1184, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #7
  %1186 = load ptr, ptr @hws, align 4
  %1187 = getelementptr ptr, ptr %1186, i32 144
  store ptr %1185, ptr %1187, align 4
  %1188 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.229, ptr noundef nonnull @.str.175, i32 noundef 4, ptr noundef %1184, i8 noundef zeroext 12, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #7
  %1189 = load ptr, ptr @hws, align 4
  %1190 = getelementptr ptr, ptr %1189, i32 149
  store ptr %1188, ptr %1190, align 4
  %1191 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.230, ptr noundef nonnull @.str.133, i32 noundef 4, ptr noundef %1184, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #7
  %1192 = load ptr, ptr @hws, align 4
  %1193 = getelementptr ptr, ptr %1192, i32 145
  store ptr %1191, ptr %1193, align 4
  %1194 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.231, ptr noundef nonnull @.str.133, i32 noundef 4, ptr noundef %1184, i8 noundef zeroext 18, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #7
  %1195 = load ptr, ptr @hws, align 4
  %1196 = getelementptr ptr, ptr %1195, i32 146
  store ptr %1194, ptr %1196, align 4
  %1197 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.232, ptr noundef nonnull @.str.133, i32 noundef 4, ptr noundef %1184, i8 noundef zeroext 20, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #7
  %1198 = load ptr, ptr @hws, align 4
  %1199 = getelementptr ptr, ptr %1198, i32 147
  store ptr %1197, ptr %1199, align 4
  %1200 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.233, ptr noundef nonnull @.str.133, i32 noundef 4, ptr noundef %1184, i8 noundef zeroext 22, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #7
  %1201 = load ptr, ptr @hws, align 4
  %1202 = getelementptr ptr, ptr %1201, i32 148
  store ptr %1200, ptr %1202, align 4
  %1203 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.234, ptr noundef nonnull @.str.175, i32 noundef 4, ptr noundef %1184, i8 noundef zeroext 24, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #7
  %1204 = load ptr, ptr @hws, align 4
  %1205 = getelementptr ptr, ptr %1204, i32 150
  store ptr %1203, ptr %1205, align 4
  %1206 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.235, ptr noundef nonnull @.str.236, i32 noundef 4, ptr noundef %1184, i8 noundef zeroext 26, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #7
  %1207 = load ptr, ptr @hws, align 4
  %1208 = getelementptr ptr, ptr %1207, i32 151
  store ptr %1206, ptr %1208, align 4
  %1209 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.237, ptr noundef nonnull @.str.211, i32 noundef 4, ptr noundef %1184, i8 noundef zeroext 28, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #7
  %1210 = load ptr, ptr @hws, align 4
  %1211 = getelementptr ptr, ptr %1210, i32 152
  store ptr %1209, ptr %1211, align 4
  %1212 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.238, ptr noundef nonnull @.str.175, i32 noundef 4, ptr noundef %1184, i8 noundef zeroext 30, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #7
  %1213 = load ptr, ptr @hws, align 4
  %1214 = getelementptr ptr, ptr %1213, i32 153
  store ptr %1212, ptr %1214, align 4
  %1215 = getelementptr i8, ptr %366, i32 124
  %1216 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.239, ptr noundef nonnull @.str.126, i32 noundef 2052, ptr noundef %1215, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #7
  %1217 = load ptr, ptr @hws, align 4
  %1218 = getelementptr ptr, ptr %1217, i32 181
  store ptr %1216, ptr %1218, align 4
  %1219 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.240, ptr noundef nonnull @.str.126, i32 noundef 4, ptr noundef %1215, i8 noundef zeroext 4, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #7
  %1220 = load ptr, ptr @hws, align 4
  %1221 = getelementptr ptr, ptr %1220, i32 154
  store ptr %1219, ptr %1221, align 4
  %1222 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.241, ptr noundef nonnull @.str.126, i32 noundef 4, ptr noundef %1215, i8 noundef zeroext 6, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #7
  %1223 = load ptr, ptr @hws, align 4
  %1224 = getelementptr ptr, ptr %1223, i32 155
  store ptr %1222, ptr %1224, align 4
  %1225 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.242, ptr noundef nonnull @.str.125, i32 noundef 4, ptr noundef %1215, i8 noundef zeroext 12, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #7
  %1226 = load ptr, ptr @hws, align 4
  %1227 = getelementptr ptr, ptr %1226, i32 156
  store ptr %1225, ptr %1227, align 4
  %1228 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.243, ptr noundef nonnull @.str.132, i32 noundef 4, ptr noundef %1215, i8 noundef zeroext 14, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_spdif) #7
  %1229 = load ptr, ptr @hws, align 4
  %1230 = getelementptr ptr, ptr %1229, i32 197
  store ptr %1228, ptr %1230, align 4
  %1231 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.244, ptr noundef nonnull @.str.125, i32 noundef 4, ptr noundef %1215, i8 noundef zeroext 14, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_spdif) #7
  %1232 = load ptr, ptr @hws, align 4
  %1233 = getelementptr ptr, ptr %1232, i32 244
  store ptr %1231, ptr %1233, align 4
  %1234 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.245, ptr noundef nonnull @.str.125, i32 noundef 4, ptr noundef %1215, i8 noundef zeroext 18, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_ssi1) #7
  %1235 = load ptr, ptr @hws, align 4
  %1236 = getelementptr ptr, ptr %1235, i32 178
  store ptr %1234, ptr %1236, align 4
  %1237 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.246, ptr noundef nonnull @.str.125, i32 noundef 4, ptr noundef %1215, i8 noundef zeroext 20, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_ssi2) #7
  %1238 = load ptr, ptr @hws, align 4
  %1239 = getelementptr ptr, ptr %1238, i32 179
  store ptr %1237, ptr %1239, align 4
  %1240 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.247, ptr noundef nonnull @.str.125, i32 noundef 4, ptr noundef %1215, i8 noundef zeroext 22, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_ssi3) #7
  %1241 = load ptr, ptr @hws, align 4
  %1242 = getelementptr ptr, ptr %1241, i32 180
  store ptr %1240, ptr %1242, align 4
  %1243 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.248, ptr noundef nonnull @.str.155, i32 noundef 4, ptr noundef %1215, i8 noundef zeroext 18, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_ssi1) #7
  %1244 = load ptr, ptr @hws, align 4
  %1245 = getelementptr ptr, ptr %1244, i32 157
  store ptr %1243, ptr %1245, align 4
  %1246 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.249, ptr noundef nonnull @.str.157, i32 noundef 4, ptr noundef %1215, i8 noundef zeroext 20, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_ssi2) #7
  %1247 = load ptr, ptr @hws, align 4
  %1248 = getelementptr ptr, ptr %1247, i32 158
  store ptr %1246, ptr %1248, align 4
  %1249 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.250, ptr noundef nonnull @.str.159, i32 noundef 4, ptr noundef %1215, i8 noundef zeroext 22, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_ssi3) #7
  %1250 = load ptr, ptr @hws, align 4
  %1251 = getelementptr ptr, ptr %1250, i32 159
  store ptr %1249, ptr %1251, align 4
  %1252 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.251, ptr noundef nonnull @.str.125, i32 noundef 4, ptr noundef %1215, i8 noundef zeroext 24, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #7
  %1253 = load ptr, ptr @hws, align 4
  %1254 = getelementptr ptr, ptr %1253, i32 160
  store ptr %1252, ptr %1254, align 4
  %1255 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.252, ptr noundef nonnull @.str.136, i32 noundef 4, ptr noundef %1215, i8 noundef zeroext 26, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #7
  %1256 = load ptr, ptr @hws, align 4
  %1257 = getelementptr ptr, ptr %1256, i32 161
  store ptr %1255, ptr %1257, align 4
  %1258 = getelementptr i8, ptr %366, i32 128
  %1259 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.253, ptr noundef nonnull @.str.125, i32 noundef 4, ptr noundef %1258, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #7
  %1260 = load ptr, ptr @hws, align 4
  %1261 = getelementptr ptr, ptr %1260, i32 162
  store ptr %1259, ptr %1261, align 4
  %1262 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.254, ptr noundef nonnull @.str.160, i32 noundef 4, ptr noundef %1258, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #7
  %1263 = load ptr, ptr @hws, align 4
  %1264 = getelementptr ptr, ptr %1263, i32 163
  store ptr %1262, ptr %1264, align 4
  %1265 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.255, ptr noundef nonnull @.str.161, i32 noundef 4, ptr noundef %1258, i8 noundef zeroext 4, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #7
  %1266 = load ptr, ptr @hws, align 4
  %1267 = getelementptr ptr, ptr %1266, i32 164
  store ptr %1265, ptr %1267, align 4
  %1268 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.175, ptr noundef nonnull @.str.162, i32 noundef 4, ptr noundef %1258, i8 noundef zeroext 6, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #7
  %1269 = load ptr, ptr @hws, align 4
  %1270 = getelementptr ptr, ptr %1269, i32 165
  store ptr %1268, ptr %1270, align 4
  %1271 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.236, ptr noundef nonnull @.str.163, i32 noundef 4, ptr noundef %1258, i8 noundef zeroext 8, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #7
  %1272 = load ptr, ptr @hws, align 4
  %1273 = getelementptr ptr, ptr %1272, i32 166
  store ptr %1271, ptr %1273, align 4
  %1274 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.256, ptr noundef nonnull @.str.167, i32 noundef 4, ptr noundef %1258, i8 noundef zeroext 10, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #7
  %1275 = load ptr, ptr @hws, align 4
  %1276 = getelementptr ptr, ptr %1275, i32 196
  store ptr %1274, ptr %1276, align 4
  %1277 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.213, ptr noundef nonnull @.str.116, i32 noundef 4, ptr noundef %1258, i8 noundef zeroext 12, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #7
  %1278 = load ptr, ptr @hws, align 4
  %1279 = getelementptr ptr, ptr %1278, i32 167
  store ptr %1277, ptr %1279, align 4
  %1280 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.257, ptr noundef nonnull @.str.168, i32 noundef 4, ptr noundef %1258, i8 noundef zeroext 14, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #7
  %1281 = load ptr, ptr @hws, align 4
  %1282 = getelementptr ptr, ptr %1281, i32 168
  store ptr %1280, ptr %1282, align 4
  %1283 = call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.275) #7
  %1284 = icmp eq i32 %1283, 0
  br i1 %1284, label %1310, label %1285

1285:                                             ; preds = %1066
  %1286 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.258, ptr noundef nonnull @.str.115, i32 noundef 4, ptr noundef %1258, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #7
  %1287 = load ptr, ptr @hws, align 4
  %1288 = getelementptr ptr, ptr %1287, i32 250
  store ptr %1286, ptr %1288, align 4
  %1289 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.259, ptr noundef nonnull @.str.115, i32 noundef 4, ptr noundef %1258, i8 noundef zeroext 18, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #7
  %1290 = load ptr, ptr @hws, align 4
  %1291 = getelementptr ptr, ptr %1290, i32 251
  store ptr %1289, ptr %1291, align 4
  %1292 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.260, ptr noundef nonnull @.str.115, i32 noundef 4, ptr noundef %1258, i8 noundef zeroext 20, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #7
  %1293 = load ptr, ptr @hws, align 4
  %1294 = getelementptr ptr, ptr %1293, i32 252
  store ptr %1292, ptr %1294, align 4
  %1295 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.261, ptr noundef nonnull @.str.115, i32 noundef 4, ptr noundef %1258, i8 noundef zeroext 22, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #7
  %1296 = load ptr, ptr @hws, align 4
  %1297 = getelementptr ptr, ptr %1296, i32 253
  store ptr %1295, ptr %1297, align 4
  %1298 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.262, ptr noundef nonnull @.str.145, i32 noundef 4, ptr noundef %1258, i8 noundef zeroext 24, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_prg0) #7
  %1299 = load ptr, ptr @hws, align 4
  %1300 = getelementptr ptr, ptr %1299, i32 254
  store ptr %1298, ptr %1300, align 4
  %1301 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.263, ptr noundef nonnull @.str.146, i32 noundef 4, ptr noundef %1258, i8 noundef zeroext 26, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_prg1) #7
  %1302 = load ptr, ptr @hws, align 4
  %1303 = getelementptr ptr, ptr %1302, i32 255
  store ptr %1301, ptr %1303, align 4
  %1304 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.264, ptr noundef nonnull @.str.125, i32 noundef 4, ptr noundef %1258, i8 noundef zeroext 24, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_prg0) #7
  %1305 = load ptr, ptr @hws, align 4
  %1306 = getelementptr ptr, ptr %1305, i32 256
  store ptr %1304, ptr %1306, align 4
  %1307 = call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.265, ptr noundef nonnull @.str.125, i32 noundef 4, ptr noundef %1258, i8 noundef zeroext 26, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_prg1) #7
  %1308 = load ptr, ptr @hws, align 4
  %1309 = getelementptr ptr, ptr %1308, i32 257
  store ptr %1307, ptr %1309, align 4
  br label %1310

1310:                                             ; preds = %1285, %1066
  %1311 = call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.266, ptr noundef nonnull @.str.169, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %783, i8 noundef zeroext 7, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #7
  %1312 = load ptr, ptr @hws, align 4
  %1313 = getelementptr ptr, ptr %1312, i32 169
  store ptr %1311, ptr %1313, align 4
  %1314 = call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.267, ptr noundef nonnull @.str.170, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %783, i8 noundef zeroext 24, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #7
  %1315 = load ptr, ptr @hws, align 4
  %1316 = getelementptr ptr, ptr %1315, i32 200
  store ptr %1314, ptr %1316, align 4
  %1317 = call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.269) #7
  %1318 = icmp eq i32 %1317, 0
  br i1 %1318, label %1327, label %1319

1319:                                             ; preds = %1310
  %1320 = call i32 @imx_get_soc_revision() #7
  %1321 = icmp eq i32 %1320, 16
  br i1 %1321, label %1322, label %1327

1322:                                             ; preds = %1319
  %1323 = load ptr, ptr @hws, align 4
  %1324 = getelementptr ptr, ptr %1323, i32 120
  %1325 = load ptr, ptr %1324, align 4
  %1326 = getelementptr ptr, ptr %1323, i32 237
  store ptr %1325, ptr %1326, align 4
  br label %1327

1327:                                             ; preds = %1322, %1319, %1310
  %1328 = load ptr, ptr @hws, align 4
  call void @imx_check_clk_hws(ptr noundef %1328, i32 noundef 266) #7
  %1329 = load ptr, ptr @clk_hw_data, align 4
  %1330 = call i32 @of_clk_add_hw_provider(ptr noundef %0, ptr noundef nonnull @of_clk_hw_onecell_get, ptr noundef %1329) #7
  %1331 = load ptr, ptr @hws, align 4
  %1332 = getelementptr ptr, ptr %1331, i32 190
  %1333 = load ptr, ptr %1332, align 4
  %1334 = call i32 @clk_hw_register_clkdev(ptr noundef %1333, ptr noundef nonnull @.str.42, ptr noundef null) #7
  %1335 = load ptr, ptr @hws, align 4
  %1336 = getelementptr ptr, ptr %1335, i32 8
  %1337 = load ptr, ptr %1336, align 4
  %1338 = getelementptr inbounds %struct.clk_hw, ptr %1337, i32 0, i32 1
  %1339 = load ptr, ptr %1338, align 4
  %1340 = call i32 @clk_set_rate(ptr noundef %1339, i32 noundef 540000000) #7
  %1341 = call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.274) #7
  %1342 = icmp eq i32 %1341, 0
  br i1 %1342, label %1354, label %1343

1343:                                             ; preds = %1327
  %1344 = load ptr, ptr @hws, align 4
  %1345 = getelementptr ptr, ptr %1344, i32 31
  %1346 = load ptr, ptr %1345, align 4
  %1347 = getelementptr inbounds %struct.clk_hw, ptr %1346, i32 0, i32 1
  %1348 = load ptr, ptr %1347, align 4
  %1349 = getelementptr ptr, ptr %1344, i32 8
  %1350 = load ptr, ptr %1349, align 4
  %1351 = getelementptr inbounds %struct.clk_hw, ptr %1350, i32 0, i32 1
  %1352 = load ptr, ptr %1351, align 4
  %1353 = call i32 @clk_set_parent(ptr noundef %1348, ptr noundef %1352) #7
  br label %1354

1354:                                             ; preds = %1343, %1327
  %1355 = load ptr, ptr @hws, align 4
  %1356 = getelementptr ptr, ptr %1355, i32 35
  %1357 = load ptr, ptr %1356, align 4
  %1358 = getelementptr inbounds %struct.clk_hw, ptr %1357, i32 0, i32 1
  %1359 = load ptr, ptr %1358, align 4
  %1360 = getelementptr ptr, ptr %1355, i32 195
  %1361 = load ptr, ptr %1360, align 4
  %1362 = getelementptr inbounds %struct.clk_hw, ptr %1361, i32 0, i32 1
  %1363 = load ptr, ptr %1362, align 4
  %1364 = call i32 @clk_set_parent(ptr noundef %1359, ptr noundef %1363) #7
  %1365 = load ptr, ptr @hws, align 4
  %1366 = getelementptr ptr, ptr %1365, i32 36
  %1367 = load ptr, ptr %1366, align 4
  %1368 = getelementptr inbounds %struct.clk_hw, ptr %1367, i32 0, i32 1
  %1369 = load ptr, ptr %1368, align 4
  %1370 = getelementptr ptr, ptr %1365, i32 195
  %1371 = load ptr, ptr %1370, align 4
  %1372 = getelementptr inbounds %struct.clk_hw, ptr %1371, i32 0, i32 1
  %1373 = load ptr, ptr %1372, align 4
  %1374 = call i32 @clk_set_parent(ptr noundef %1369, ptr noundef %1373) #7
  %1375 = load ptr, ptr @hws, align 4
  %1376 = getelementptr ptr, ptr %1375, i32 37
  %1377 = load ptr, ptr %1376, align 4
  %1378 = getelementptr inbounds %struct.clk_hw, ptr %1377, i32 0, i32 1
  %1379 = load ptr, ptr %1378, align 4
  %1380 = getelementptr ptr, ptr %1375, i32 195
  %1381 = load ptr, ptr %1380, align 4
  %1382 = getelementptr inbounds %struct.clk_hw, ptr %1381, i32 0, i32 1
  %1383 = load ptr, ptr %1382, align 4
  %1384 = call i32 @clk_set_parent(ptr noundef %1379, ptr noundef %1383) #7
  %1385 = load ptr, ptr @hws, align 4
  %1386 = getelementptr ptr, ptr %1385, i32 38
  %1387 = load ptr, ptr %1386, align 4
  %1388 = getelementptr inbounds %struct.clk_hw, ptr %1387, i32 0, i32 1
  %1389 = load ptr, ptr %1388, align 4
  %1390 = getelementptr ptr, ptr %1385, i32 195
  %1391 = load ptr, ptr %1390, align 4
  %1392 = getelementptr inbounds %struct.clk_hw, ptr %1391, i32 0, i32 1
  %1393 = load ptr, ptr %1392, align 4
  %1394 = call i32 @clk_set_parent(ptr noundef %1389, ptr noundef %1393) #7
  %1395 = load ptr, ptr @hws, align 4
  %1396 = getelementptr ptr, ptr %1395, i32 39
  %1397 = load ptr, ptr %1396, align 4
  %1398 = getelementptr inbounds %struct.clk_hw, ptr %1397, i32 0, i32 1
  %1399 = load ptr, ptr %1398, align 4
  %1400 = getelementptr ptr, ptr %1395, i32 79
  %1401 = load ptr, ptr %1400, align 4
  %1402 = getelementptr inbounds %struct.clk_hw, ptr %1401, i32 0, i32 1
  %1403 = load ptr, ptr %1402, align 4
  %1404 = call i32 @clk_set_parent(ptr noundef %1399, ptr noundef %1403) #7
  %1405 = load ptr, ptr @hws, align 4
  %1406 = getelementptr ptr, ptr %1405, i32 40
  %1407 = load ptr, ptr %1406, align 4
  %1408 = getelementptr inbounds %struct.clk_hw, ptr %1407, i32 0, i32 1
  %1409 = load ptr, ptr %1408, align 4
  %1410 = getelementptr ptr, ptr %1405, i32 80
  %1411 = load ptr, ptr %1410, align 4
  %1412 = getelementptr inbounds %struct.clk_hw, ptr %1411, i32 0, i32 1
  %1413 = load ptr, ptr %1412, align 4
  %1414 = call i32 @clk_set_parent(ptr noundef %1409, ptr noundef %1413) #7
  %1415 = load ptr, ptr @hws, align 4
  %1416 = getelementptr ptr, ptr %1415, i32 41
  %1417 = load ptr, ptr %1416, align 4
  %1418 = getelementptr inbounds %struct.clk_hw, ptr %1417, i32 0, i32 1
  %1419 = load ptr, ptr %1418, align 4
  %1420 = getelementptr ptr, ptr %1415, i32 81
  %1421 = load ptr, ptr %1420, align 4
  %1422 = getelementptr inbounds %struct.clk_hw, ptr %1421, i32 0, i32 1
  %1423 = load ptr, ptr %1422, align 4
  %1424 = call i32 @clk_set_parent(ptr noundef %1419, ptr noundef %1423) #7
  %1425 = load ptr, ptr @hws, align 4
  %1426 = getelementptr ptr, ptr %1425, i32 42
  %1427 = load ptr, ptr %1426, align 4
  %1428 = getelementptr inbounds %struct.clk_hw, ptr %1427, i32 0, i32 1
  %1429 = load ptr, ptr %1428, align 4
  %1430 = getelementptr ptr, ptr %1425, i32 82
  %1431 = load ptr, ptr %1430, align 4
  %1432 = getelementptr inbounds %struct.clk_hw, ptr %1431, i32 0, i32 1
  %1433 = load ptr, ptr %1432, align 4
  %1434 = call i32 @clk_set_parent(ptr noundef %1429, ptr noundef %1433) #7
  %1435 = load ptr, ptr @hws, align 4
  %1436 = getelementptr ptr, ptr %1435, i32 52
  %1437 = load ptr, ptr %1436, align 4
  %1438 = getelementptr inbounds %struct.clk_hw, ptr %1437, i32 0, i32 1
  %1439 = load ptr, ptr %1438, align 4
  %1440 = getelementptr ptr, ptr %1435, i32 6
  %1441 = load ptr, ptr %1440, align 4
  %1442 = getelementptr inbounds %struct.clk_hw, ptr %1441, i32 0, i32 1
  %1443 = load ptr, ptr %1442, align 4
  %1444 = call i32 @clk_set_parent(ptr noundef %1439, ptr noundef %1443) #7
  %1445 = load ptr, ptr @hws, align 4
  %1446 = getelementptr ptr, ptr %1445, i32 191
  %1447 = load ptr, ptr %1446, align 4
  %1448 = getelementptr inbounds %struct.clk_hw, ptr %1447, i32 0, i32 1
  %1449 = load ptr, ptr %1448, align 4
  %1450 = call i32 @clk_prepare(ptr noundef %1449) #7
  %1451 = icmp eq i32 %1450, 0
  br i1 %1451, label %1452, label %1456

1452:                                             ; preds = %1354
  %1453 = call i32 @clk_enable(ptr noundef %1449) #7
  %1454 = icmp eq i32 %1453, 0
  br i1 %1454, label %1456, label %1455

1455:                                             ; preds = %1452
  call void @clk_unprepare(ptr noundef %1449) #7
  br label %1456

1456:                                             ; preds = %1455, %1452, %1354
  %1457 = load ptr, ptr @hws, align 4
  %1458 = getelementptr ptr, ptr %1457, i32 192
  %1459 = load ptr, ptr %1458, align 4
  %1460 = getelementptr inbounds %struct.clk_hw, ptr %1459, i32 0, i32 1
  %1461 = load ptr, ptr %1460, align 4
  %1462 = call i32 @clk_prepare(ptr noundef %1461) #7
  %1463 = icmp eq i32 %1462, 0
  br i1 %1463, label %1464, label %1468

1464:                                             ; preds = %1456
  %1465 = call i32 @clk_enable(ptr noundef %1461) #7
  %1466 = icmp eq i32 %1465, 0
  br i1 %1466, label %1468, label %1467

1467:                                             ; preds = %1464
  call void @clk_unprepare(ptr noundef %1461) #7
  br label %1468

1468:                                             ; preds = %1467, %1464, %1456
  %1469 = load ptr, ptr @hws, align 4
  %1470 = getelementptr ptr, ptr %1469, i32 198
  %1471 = load ptr, ptr %1470, align 4
  %1472 = getelementptr inbounds %struct.clk_hw, ptr %1471, i32 0, i32 1
  %1473 = load ptr, ptr %1472, align 4
  %1474 = getelementptr ptr, ptr %1469, i32 3
  %1475 = load ptr, ptr %1474, align 4
  %1476 = getelementptr inbounds %struct.clk_hw, ptr %1475, i32 0, i32 1
  %1477 = load ptr, ptr %1476, align 4
  %1478 = call i32 @clk_set_parent(ptr noundef %1473, ptr noundef %1477) #7
  %1479 = icmp eq i32 %1478, 0
  br i1 %1479, label %1480, label %1492

1480:                                             ; preds = %1468
  %1481 = load ptr, ptr @hws, align 4
  %1482 = getelementptr ptr, ptr %1481, i32 201
  %1483 = load ptr, ptr %1482, align 4
  %1484 = getelementptr inbounds %struct.clk_hw, ptr %1483, i32 0, i32 1
  %1485 = load ptr, ptr %1484, align 4
  %1486 = getelementptr ptr, ptr %1481, i32 200
  %1487 = load ptr, ptr %1486, align 4
  %1488 = getelementptr inbounds %struct.clk_hw, ptr %1487, i32 0, i32 1
  %1489 = load ptr, ptr %1488, align 4
  %1490 = call i32 @clk_set_parent(ptr noundef %1485, ptr noundef %1489) #7
  %1491 = icmp eq i32 %1490, 0
  br i1 %1491, label %1495, label %1492

1492:                                             ; preds = %1480, %1468
  %1493 = phi i32 [ %1490, %1480 ], [ %1478, %1468 ]
  %1494 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.268, i32 noundef %1493) #9
  br label %1495

1495:                                             ; preds = %1492, %1480
  %1496 = load ptr, ptr @hws, align 4
  %1497 = getelementptr ptr, ptr %1496, i32 25
  %1498 = load ptr, ptr %1497, align 4
  %1499 = getelementptr inbounds %struct.clk_hw, ptr %1498, i32 0, i32 1
  %1500 = load ptr, ptr %1499, align 4
  %1501 = getelementptr ptr, ptr %1496, i32 10
  %1502 = load ptr, ptr %1501, align 4
  %1503 = getelementptr inbounds %struct.clk_hw, ptr %1502, i32 0, i32 1
  %1504 = load ptr, ptr %1503, align 4
  %1505 = call i32 @clk_set_parent(ptr noundef %1500, ptr noundef %1504) #7
  %1506 = call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.274) #7
  %1507 = icmp eq i32 %1506, 0
  br i1 %1507, label %1521, label %1508

1508:                                             ; preds = %1495
  %1509 = load ptr, ptr @hws, align 4
  %1510 = getelementptr ptr, ptr %1509, i32 29
  %1511 = load ptr, ptr %1510, align 4
  %1512 = getelementptr inbounds %struct.clk_hw, ptr %1511, i32 0, i32 1
  %1513 = load ptr, ptr %1512, align 4
  %1514 = getelementptr ptr, ptr %1509, i32 5
  %1515 = load ptr, ptr %1514, align 4
  %1516 = getelementptr inbounds %struct.clk_hw, ptr %1515, i32 0, i32 1
  %1517 = load ptr, ptr %1516, align 4
  %1518 = call i32 @clk_set_parent(ptr noundef %1513, ptr noundef %1517) #7
  %1519 = load ptr, ptr @hws, align 4
  %1520 = getelementptr ptr, ptr %1519, i32 5
  br label %1547

1521:                                             ; preds = %1495
  %1522 = call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.269) #7
  %1523 = icmp eq i32 %1522, 0
  br i1 %1523, label %1558, label %1524

1524:                                             ; preds = %1521
  %1525 = load ptr, ptr @hws, align 4
  %1526 = getelementptr ptr, ptr %1525, i32 29
  %1527 = load ptr, ptr %1526, align 4
  %1528 = getelementptr inbounds %struct.clk_hw, ptr %1527, i32 0, i32 1
  %1529 = load ptr, ptr %1528, align 4
  %1530 = getelementptr ptr, ptr %1525, i32 140
  %1531 = load ptr, ptr %1530, align 4
  %1532 = getelementptr inbounds %struct.clk_hw, ptr %1531, i32 0, i32 1
  %1533 = load ptr, ptr %1532, align 4
  %1534 = call i32 @clk_set_parent(ptr noundef %1529, ptr noundef %1533) #7
  %1535 = load ptr, ptr @hws, align 4
  %1536 = getelementptr ptr, ptr %1535, i32 30
  %1537 = load ptr, ptr %1536, align 4
  %1538 = getelementptr inbounds %struct.clk_hw, ptr %1537, i32 0, i32 1
  %1539 = load ptr, ptr %1538, align 4
  %1540 = getelementptr ptr, ptr %1535, i32 5
  %1541 = load ptr, ptr %1540, align 4
  %1542 = getelementptr inbounds %struct.clk_hw, ptr %1541, i32 0, i32 1
  %1543 = load ptr, ptr %1542, align 4
  %1544 = call i32 @clk_set_parent(ptr noundef %1539, ptr noundef %1543) #7
  %1545 = load ptr, ptr @hws, align 4
  %1546 = getelementptr ptr, ptr %1545, i32 172
  br label %1547

1547:                                             ; preds = %1524, %1508
  %1548 = phi ptr [ %1546, %1524 ], [ %1520, %1508 ]
  %1549 = phi ptr [ %1545, %1524 ], [ %1519, %1508 ]
  %1550 = getelementptr ptr, ptr %1549, i32 28
  %1551 = load ptr, ptr %1550, align 4
  %1552 = getelementptr inbounds %struct.clk_hw, ptr %1551, i32 0, i32 1
  %1553 = load ptr, ptr %1552, align 4
  %1554 = load ptr, ptr %1548, align 4
  %1555 = getelementptr inbounds %struct.clk_hw, ptr %1554, i32 0, i32 1
  %1556 = load ptr, ptr %1555, align 4
  %1557 = call i32 @clk_set_parent(ptr noundef %1553, ptr noundef %1556) #7
  br label %1558

1558:                                             ; preds = %1547, %1521
  call void @imx_register_uart_clocks(i32 noundef 2) #7
  br label %1559

1559:                                             ; preds = %1558, %7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc ptr @imx6q_obtain_fixed_clk_hw(ptr noundef %0, ptr noundef %1) unnamed_addr #0 section ".init.text" {
  %3 = tail call ptr @of_clk_get_by_name(ptr noundef %0, ptr noundef %1) #7
  %4 = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = tail call ptr @imx_obtain_fixed_clock_hw(ptr noundef %1, i32 noundef 0) #7
  br label %9

7:                                                ; preds = %2
  %8 = tail call ptr @__clk_get_hw(ptr noundef %3) #7
  br label %9

9:                                                ; preds = %7, %5
  %10 = phi ptr [ %6, %5 ], [ %8, %7 ]
  ret ptr %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @imx_get_soc_revision() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @imx_clk_hw_pllv3(i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_parent(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_hw_register_divider(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @imx_clk_hw_gate_exclusive(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @imx_clk_hw_pfd(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @imx_mmdc_mask_handshake(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @imx_clk_hw_fixup_mux(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @imx_cscmr1_fixup(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @imx_clk_hw_busy_mux(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @imx_clk_hw_fixup_divider(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @imx_clk_hw_busy_divider(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @imx_check_clk_hws(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_hw_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_hw_onecell_get(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_register_clkdev(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @imx_register_uart_clocks(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_hw_register_fixed_rate(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_by_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @imx_obtain_fixed_clock_hw(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_hw(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_machine_is_compatible(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_hw_register_mux(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_hw_register_gate(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_count_phandle_with_args(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_register_fixed_factor(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get_parent(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_register_gate2(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nounwind allocsize(2) }
attributes #7 = { nounwind }
attributes #8 = { cold }
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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{!"auto-init"}
!10 = !{i64 2150834000}
!11 = !{i64 3078426}
!12 = !{i64 2150834466}
!13 = !{i64 3078008}
