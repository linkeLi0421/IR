; ModuleID = '/llk/IR/drivers/clk/imx/clk-imx6sx.c_pt.bc'
source_filename = "../drivers/clk/imx/clk-imx6sx.c"
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

@__of_table_imx6sx = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx6sx-ccm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx6sx_clocks_init }, section "__clk_of_table", align 4
@clk_hw_data = internal unnamed_addr global ptr null, align 4
@.str = private unnamed_addr constant [29 x i8] c"drivers/clk/imx/clk-imx6sx.c\00", align 1
@hws = internal unnamed_addr global ptr null, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"dummy\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"ckil\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"osc\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"ipp_di0\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"ipp_di1\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"anaclk1\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"anaclk2\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"fsl,imx6sx-anatop\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"pll1_bypass_src\00", align 1
@pll_bypass_src_sels = internal global [4 x ptr] [ptr @.str.3, ptr @.str.47, ptr @.str.48, ptr @.str.1], align 4
@.str.10 = private unnamed_addr constant [16 x i8] c"pll2_bypass_src\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"pll3_bypass_src\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"pll4_bypass_src\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"pll5_bypass_src\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"pll6_bypass_src\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"pll7_bypass_src\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"pll1\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"pll2\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"pll3\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"pll4\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"pll5\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"pll6\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"pll7\00", align 1
@.str.23 = private unnamed_addr constant [12 x i8] c"pll1_bypass\00", align 1
@pll1_bypass_sels = internal global [2 x ptr] [ptr @.str.16, ptr @.str.9], align 4
@.str.24 = private unnamed_addr constant [12 x i8] c"pll2_bypass\00", align 1
@pll2_bypass_sels = internal global [2 x ptr] [ptr @.str.17, ptr @.str.10], align 4
@.str.25 = private unnamed_addr constant [12 x i8] c"pll3_bypass\00", align 1
@pll3_bypass_sels = internal global [2 x ptr] [ptr @.str.18, ptr @.str.11], align 4
@.str.26 = private unnamed_addr constant [12 x i8] c"pll4_bypass\00", align 1
@pll4_bypass_sels = internal global [2 x ptr] [ptr @.str.19, ptr @.str.12], align 4
@.str.27 = private unnamed_addr constant [12 x i8] c"pll5_bypass\00", align 1
@pll5_bypass_sels = internal global [2 x ptr] [ptr @.str.20, ptr @.str.13], align 4
@.str.28 = private unnamed_addr constant [12 x i8] c"pll6_bypass\00", align 1
@pll6_bypass_sels = internal global [2 x ptr] [ptr @.str.21, ptr @.str.14], align 4
@.str.29 = private unnamed_addr constant [12 x i8] c"pll7_bypass\00", align 1
@pll7_bypass_sels = internal global [2 x ptr] [ptr @.str.22, ptr @.str.15], align 4
@.str.30 = private unnamed_addr constant [9 x i8] c"pll1_sys\00", align 1
@.str.31 = private unnamed_addr constant [9 x i8] c"pll2_bus\00", align 1
@.str.32 = private unnamed_addr constant [13 x i8] c"pll3_usb_otg\00", align 1
@.str.33 = private unnamed_addr constant [11 x i8] c"pll4_audio\00", align 1
@.str.34 = private unnamed_addr constant [11 x i8] c"pll5_video\00", align 1
@.str.35 = private unnamed_addr constant [10 x i8] c"pll6_enet\00", align 1
@.str.36 = private unnamed_addr constant [14 x i8] c"pll7_usb_host\00", align 1
@.str.37 = private unnamed_addr constant [8 x i8] c"usbphy1\00", align 1
@.str.38 = private unnamed_addr constant [8 x i8] c"usbphy2\00", align 1
@.str.39 = private unnamed_addr constant [13 x i8] c"usbphy1_gate\00", align 1
@.str.40 = private unnamed_addr constant [13 x i8] c"usbphy2_gate\00", align 1
@.str.41 = private unnamed_addr constant [9 x i8] c"pcie_ref\00", align 1
@.str.42 = private unnamed_addr constant [14 x i8] c"pcie_ref_125m\00", align 1
@.str.43 = private unnamed_addr constant [10 x i8] c"lvds1_out\00", align 1
@.str.44 = private unnamed_addr constant [10 x i8] c"lvds1_sel\00", align 1
@.str.45 = private unnamed_addr constant [10 x i8] c"lvds2_out\00", align 1
@.str.46 = private unnamed_addr constant [10 x i8] c"lvds2_sel\00", align 1
@.str.47 = private unnamed_addr constant [9 x i8] c"lvds1_in\00", align 1
@.str.48 = private unnamed_addr constant [9 x i8] c"lvds2_in\00", align 1
@.str.49 = private unnamed_addr constant [9 x i8] c"enet_ref\00", align 1
@clk_enet_ref_table = internal constant [5 x %struct.clk_div_table] [%struct.clk_div_table { i32 0, i32 20 }, %struct.clk_div_table { i32 1, i32 10 }, %struct.clk_div_table { i32 2, i32 5 }, %struct.clk_div_table { i32 3, i32 4 }, %struct.clk_div_table zeroinitializer], align 4
@imx_ccm_lock = external dso_local global %struct.spinlock, align 4
@.str.50 = private unnamed_addr constant [10 x i8] c"enet2_ref\00", align 1
@.str.51 = private unnamed_addr constant [15 x i8] c"enet2_ref_125m\00", align 1
@.str.52 = private unnamed_addr constant [13 x i8] c"enet_ptp_ref\00", align 1
@.str.53 = private unnamed_addr constant [13 x i8] c"enet_ptp_25m\00", align 1
@.str.54 = private unnamed_addr constant [15 x i8] c"pll2_pfd0_352m\00", align 1
@.str.55 = private unnamed_addr constant [15 x i8] c"pll2_pfd1_594m\00", align 1
@.str.56 = private unnamed_addr constant [15 x i8] c"pll2_pfd2_396m\00", align 1
@.str.57 = private unnamed_addr constant [15 x i8] c"pll2_pfd3_594m\00", align 1
@.str.58 = private unnamed_addr constant [15 x i8] c"pll3_pfd0_720m\00", align 1
@.str.59 = private unnamed_addr constant [15 x i8] c"pll3_pfd1_540m\00", align 1
@.str.60 = private unnamed_addr constant [15 x i8] c"pll3_pfd2_508m\00", align 1
@.str.61 = private unnamed_addr constant [15 x i8] c"pll3_pfd3_454m\00", align 1
@.str.62 = private unnamed_addr constant [10 x i8] c"pll2_198m\00", align 1
@.str.63 = private unnamed_addr constant [10 x i8] c"pll3_120m\00", align 1
@.str.64 = private unnamed_addr constant [9 x i8] c"pll3_80m\00", align 1
@.str.65 = private unnamed_addr constant [9 x i8] c"pll3_60m\00", align 1
@.str.66 = private unnamed_addr constant [4 x i8] c"twd\00", align 1
@.str.67 = private unnamed_addr constant [4 x i8] c"arm\00", align 1
@.str.68 = private unnamed_addr constant [7 x i8] c"gpt_3m\00", align 1
@.str.69 = private unnamed_addr constant [14 x i8] c"pll4_post_div\00", align 1
@post_div_table = internal constant [4 x %struct.clk_div_table] [%struct.clk_div_table { i32 2, i32 1 }, %struct.clk_div_table { i32 1, i32 2 }, %struct.clk_div_table { i32 0, i32 4 }, %struct.clk_div_table zeroinitializer], align 4
@.str.70 = private unnamed_addr constant [15 x i8] c"pll4_audio_div\00", align 1
@.str.71 = private unnamed_addr constant [14 x i8] c"pll5_post_div\00", align 1
@.str.72 = private unnamed_addr constant [15 x i8] c"pll5_video_div\00", align 1
@video_div_table = internal constant [5 x %struct.clk_div_table] [%struct.clk_div_table { i32 0, i32 1 }, %struct.clk_div_table { i32 1, i32 2 }, %struct.clk_div_table { i32 2, i32 1 }, %struct.clk_div_table { i32 3, i32 4 }, %struct.clk_div_table zeroinitializer], align 4
@lvds_sels = internal global [14 x ptr] [ptr @.str.67, ptr @.str.30, ptr @.str.1, ptr @.str.1, ptr @.str.1, ptr @.str.1, ptr @.str.1, ptr @.str.72, ptr @.str.1, ptr @.str.1, ptr @.str.42, ptr @.str.1, ptr @.str.37, ptr @.str.38], align 4
@.str.73 = private unnamed_addr constant [5 x i8] c"step\00", align 1
@step_sels = internal global [2 x ptr] [ptr @.str.3, ptr @.str.56], align 4
@.str.74 = private unnamed_addr constant [8 x i8] c"pll1_sw\00", align 1
@pll1_sw_sels = internal global [2 x ptr] [ptr @.str.30, ptr @.str.73], align 4
@.str.75 = private unnamed_addr constant [10 x i8] c"ocram_sel\00", align 1
@ocram_sels = internal global [4 x ptr] [ptr @.str.163, ptr @.str.56, ptr @.str.163, ptr @.str.59], align 4
@.str.76 = private unnamed_addr constant [11 x i8] c"periph_pre\00", align 1
@periph_pre_sels = internal global [4 x ptr] [ptr @.str.31, ptr @.str.56, ptr @.str.54, ptr @.str.62], align 4
@.str.77 = private unnamed_addr constant [12 x i8] c"periph2_pre\00", align 1
@periph2_pre_sels = internal global [4 x ptr] [ptr @.str.31, ptr @.str.56, ptr @.str.54, ptr @.str.70], align 4
@.str.78 = private unnamed_addr constant [16 x i8] c"periph_clk2_sel\00", align 1
@periph_clk2_sels = internal global [3 x ptr] [ptr @.str.32, ptr @.str.3, ptr @.str.3], align 4
@.str.79 = private unnamed_addr constant [17 x i8] c"periph2_clk2_sel\00", align 1
@periph2_clk2_sels = internal global [2 x ptr] [ptr @.str.32, ptr @.str.3], align 4
@.str.80 = private unnamed_addr constant [13 x i8] c"pcie_axi_sel\00", align 1
@pcie_axi_sels = internal global [2 x ptr] [ptr @.str.269, ptr @.str.121], align 4
@.str.81 = private unnamed_addr constant [12 x i8] c"gpu_axi_sel\00", align 1
@gpu_axi_sels = internal global [4 x ptr] [ptr @.str.56, ptr @.str.58, ptr @.str.59, ptr @.str.31], align 4
@.str.82 = private unnamed_addr constant [13 x i8] c"gpu_core_sel\00", align 1
@gpu_core_sels = internal global [4 x ptr] [ptr @.str.59, ptr @.str.58, ptr @.str.31, ptr @.str.56], align 4
@.str.83 = private unnamed_addr constant [13 x i8] c"eim_slow_sel\00", align 1
@eim_slow_sels = internal global [4 x ptr] [ptr @.str.223, ptr @.str.32, ptr @.str.56, ptr @.str.54], align 4
@.str.84 = private unnamed_addr constant [11 x i8] c"usdhc1_sel\00", align 1
@usdhc_sels = internal global [2 x ptr] [ptr @.str.56, ptr @.str.54], align 4
@.str.85 = private unnamed_addr constant [11 x i8] c"usdhc2_sel\00", align 1
@.str.86 = private unnamed_addr constant [11 x i8] c"usdhc3_sel\00", align 1
@.str.87 = private unnamed_addr constant [11 x i8] c"usdhc4_sel\00", align 1
@.str.88 = private unnamed_addr constant [9 x i8] c"ssi3_sel\00", align 1
@ssi_sels = internal global [3 x ptr] [ptr @.str.60, ptr @.str.72, ptr @.str.70], align 4
@.str.89 = private unnamed_addr constant [9 x i8] c"ssi2_sel\00", align 1
@.str.90 = private unnamed_addr constant [9 x i8] c"ssi1_sel\00", align 1
@.str.91 = private unnamed_addr constant [10 x i8] c"qspi1_sel\00", align 1
@qspi1_sels = internal global [6 x ptr] [ptr @.str.32, ptr @.str.54, ptr @.str.56, ptr @.str.31, ptr @.str.61, ptr @.str.60], align 4
@.str.92 = private unnamed_addr constant [11 x i8] c"perclk_sel\00", align 1
@perclk_sels = internal global [2 x ptr] [ptr @.str.120, ptr @.str.3], align 4
@.str.93 = private unnamed_addr constant [8 x i8] c"vid_sel\00", align 1
@vid_sels = internal global [5 x ptr] [ptr @.str.59, ptr @.str.32, ptr @.str.61, ptr @.str.70, ptr @.str.72], align 4
@.str.94 = private unnamed_addr constant [9 x i8] c"esai_sel\00", align 1
@audio_sels = internal global [4 x ptr] [ptr @.str.70, ptr @.str.60, ptr @.str.72, ptr @.str.32], align 4
@.str.95 = private unnamed_addr constant [8 x i8] c"can_sel\00", align 1
@can_sels = internal global [4 x ptr] [ptr @.str.65, ptr @.str.3, ptr @.str.64, ptr @.str.1], align 4
@.str.96 = private unnamed_addr constant [9 x i8] c"uart_sel\00", align 1
@uart_sels = internal global [2 x ptr] [ptr @.str.64, ptr @.str.3], align 4
@.str.97 = private unnamed_addr constant [10 x i8] c"qspi2_sel\00", align 1
@qspi2_sels = internal global [8 x ptr] [ptr @.str.54, ptr @.str.31, ptr @.str.32, ptr @.str.56, ptr @.str.61, ptr @.str.1, ptr @.str.1, ptr @.str.1], align 4
@.str.98 = private unnamed_addr constant [10 x i8] c"spdif_sel\00", align 1
@.str.99 = private unnamed_addr constant [10 x i8] c"audio_sel\00", align 1
@.str.100 = private unnamed_addr constant [13 x i8] c"enet_pre_sel\00", align 1
@enet_pre_sels = internal global [6 x ptr] [ptr @.str.31, ptr @.str.32, ptr @.str.72, ptr @.str.54, ptr @.str.56, ptr @.str.60], align 4
@.str.101 = private unnamed_addr constant [9 x i8] c"enet_sel\00", align 1
@enet_sels = internal global [5 x ptr] [ptr @.str.152, ptr @.str.4, ptr @.str.5, ptr @.str.217, ptr @.str.270], align 4
@.str.102 = private unnamed_addr constant [11 x i8] c"m4_pre_sel\00", align 1
@m4_pre_sels = internal global [6 x ptr] [ptr @.str.31, ptr @.str.32, ptr @.str.3, ptr @.str.54, ptr @.str.56, ptr @.str.61], align 4
@.str.103 = private unnamed_addr constant [7 x i8] c"m4_sel\00", align 1
@m4_sels = internal global [5 x ptr] [ptr @.str.102, ptr @.str.4, ptr @.str.5, ptr @.str.217, ptr @.str.270], align 4
@.str.104 = private unnamed_addr constant [10 x i8] c"ecspi_sel\00", align 1
@ecspi_sels = internal global [2 x ptr] [ptr @.str.65, ptr @.str.3], align 4
@.str.105 = private unnamed_addr constant [15 x i8] c"lcdif2_pre_sel\00", align 1
@lcdif2_pre_sels = internal global [6 x ptr] [ptr @.str.31, ptr @.str.61, ptr @.str.72, ptr @.str.54, ptr @.str.57, ptr @.str.59], align 4
@.str.106 = private unnamed_addr constant [11 x i8] c"lcdif2_sel\00", align 1
@lcdif2_sels = internal global [5 x ptr] [ptr @.str.128, ptr @.str.4, ptr @.str.5, ptr @.str.217, ptr @.str.270], align 4
@.str.107 = private unnamed_addr constant [12 x i8] c"display_sel\00", align 1
@display_sels = internal global [4 x ptr] [ptr @.str.31, ptr @.str.56, ptr @.str.32, ptr @.str.59], align 4
@.str.108 = private unnamed_addr constant [8 x i8] c"csi_sel\00", align 1
@csi_sels = internal global [4 x ptr] [ptr @.str.3, ptr @.str.56, ptr @.str.63, ptr @.str.59], align 4
@.str.109 = private unnamed_addr constant [9 x i8] c"cko1_sel\00", align 1
@cko1_sels = internal global [16 x ptr] [ptr @.str.1, ptr @.str.1, ptr @.str.1, ptr @.str.1, ptr @.str.260, ptr @.str.223, ptr @.str.225, ptr @.str.211, ptr @.str.213, ptr @.str.215, ptr @.str.216, ptr @.str.121, ptr @.str.120, ptr @.str.130, ptr @.str.2, ptr @.str.70], align 4
@.str.110 = private unnamed_addr constant [9 x i8] c"cko2_sel\00", align 1
@cko2_sels = internal global [32 x ptr] [ptr @.str.1, ptr @.str.220, ptr @.str.234, ptr @.str.256, ptr @.str.1, ptr @.str.271, ptr @.str.272, ptr @.str.1, ptr @.str.170, ptr @.str.273, ptr @.str.67, ptr @.str.274, ptr @.str.214, ptr @.str.1, ptr @.str.3, ptr @.str.1, ptr @.str.1, ptr @.str.257, ptr @.str.246, ptr @.str.247, ptr @.str.248, ptr @.str.123, ptr @.str.1, ptr @.str.132, ptr @.str.43, ptr @.str.218, ptr @.str.190, ptr @.str.258, ptr @.str.250, ptr @.str.241, ptr @.str.240, ptr @.str.1], align 4
@.str.111 = private unnamed_addr constant [4 x i8] c"cko\00", align 1
@cko_sels = internal global [2 x ptr] [ptr @.str.266, ptr @.str.267], align 4
@.str.112 = private unnamed_addr constant [16 x i8] c"ldb_di1_div_sel\00", align 1
@ldb_di1_div_sels = internal global [2 x ptr] [ptr @.str.161, ptr @.str.162], align 4
@.str.113 = private unnamed_addr constant [16 x i8] c"ldb_di0_div_sel\00", align 1
@ldb_di0_div_sels = internal global [2 x ptr] [ptr @.str.159, ptr @.str.160], align 4
@.str.114 = private unnamed_addr constant [12 x i8] c"ldb_di1_sel\00", align 1
@ldb_di1_sels = internal global [6 x ptr] [ptr @.str.32, ptr @.str.54, ptr @.str.56, ptr @.str.31, ptr @.str.61, ptr @.str.60], align 4
@.str.115 = private unnamed_addr constant [12 x i8] c"ldb_di0_sel\00", align 1
@ldb_di0_sels = internal global [6 x ptr] [ptr @.str.72, ptr @.str.54, ptr @.str.56, ptr @.str.57, ptr @.str.55, ptr @.str.61], align 4
@.str.116 = private unnamed_addr constant [15 x i8] c"lcdif1_pre_sel\00", align 1
@lcdif1_pre_sels = internal global [6 x ptr] [ptr @.str.31, ptr @.str.61, ptr @.str.72, ptr @.str.54, ptr @.str.55, ptr @.str.59], align 4
@.str.117 = private unnamed_addr constant [11 x i8] c"lcdif1_sel\00", align 1
@lcdif1_sels = internal global [5 x ptr] [ptr @.str.124, ptr @.str.4, ptr @.str.5, ptr @.str.217, ptr @.str.270], align 4
@.str.118 = private unnamed_addr constant [12 x i8] c"periph_clk2\00", align 1
@.str.119 = private unnamed_addr constant [13 x i8] c"periph2_clk2\00", align 1
@.str.120 = private unnamed_addr constant [4 x i8] c"ipg\00", align 1
@.str.121 = private unnamed_addr constant [4 x i8] c"ahb\00", align 1
@.str.122 = private unnamed_addr constant [14 x i8] c"gpu_core_podf\00", align 1
@.str.123 = private unnamed_addr constant [13 x i8] c"gpu_axi_podf\00", align 1
@.str.124 = private unnamed_addr constant [12 x i8] c"lcdif1_podf\00", align 1
@.str.125 = private unnamed_addr constant [12 x i8] c"lcdif1_pred\00", align 1
@.str.126 = private unnamed_addr constant [11 x i8] c"qspi1_podf\00", align 1
@.str.127 = private unnamed_addr constant [14 x i8] c"eim_slow_podf\00", align 1
@.str.128 = private unnamed_addr constant [12 x i8] c"lcdif2_podf\00", align 1
@.str.129 = private unnamed_addr constant [12 x i8] c"lcdif2_pred\00", align 1
@.str.130 = private unnamed_addr constant [7 x i8] c"perclk\00", align 1
@.str.131 = private unnamed_addr constant [9 x i8] c"vid_podf\00", align 1
@.str.132 = private unnamed_addr constant [9 x i8] c"can_podf\00", align 1
@.str.133 = private unnamed_addr constant [12 x i8] c"usdhc4_podf\00", align 1
@.str.134 = private unnamed_addr constant [12 x i8] c"usdhc3_podf\00", align 1
@.str.135 = private unnamed_addr constant [12 x i8] c"usdhc2_podf\00", align 1
@.str.136 = private unnamed_addr constant [12 x i8] c"usdhc1_podf\00", align 1
@.str.137 = private unnamed_addr constant [10 x i8] c"uart_podf\00", align 1
@.str.138 = private unnamed_addr constant [10 x i8] c"esai_pred\00", align 1
@.str.139 = private unnamed_addr constant [10 x i8] c"esai_podf\00", align 1
@.str.140 = private unnamed_addr constant [10 x i8] c"ssi3_pred\00", align 1
@.str.141 = private unnamed_addr constant [10 x i8] c"ssi3_podf\00", align 1
@.str.142 = private unnamed_addr constant [10 x i8] c"ssi1_pred\00", align 1
@.str.143 = private unnamed_addr constant [10 x i8] c"ssi1_podf\00", align 1
@.str.144 = private unnamed_addr constant [11 x i8] c"qspi2_pred\00", align 1
@.str.145 = private unnamed_addr constant [11 x i8] c"qspi2_podf\00", align 1
@.str.146 = private unnamed_addr constant [10 x i8] c"ssi2_pred\00", align 1
@.str.147 = private unnamed_addr constant [10 x i8] c"ssi2_podf\00", align 1
@.str.148 = private unnamed_addr constant [11 x i8] c"spdif_pred\00", align 1
@.str.149 = private unnamed_addr constant [11 x i8] c"spdif_podf\00", align 1
@.str.150 = private unnamed_addr constant [11 x i8] c"audio_pred\00", align 1
@.str.151 = private unnamed_addr constant [11 x i8] c"audio_podf\00", align 1
@.str.152 = private unnamed_addr constant [10 x i8] c"enet_podf\00", align 1
@.str.153 = private unnamed_addr constant [8 x i8] c"m4_podf\00", align 1
@.str.154 = private unnamed_addr constant [11 x i8] c"ecspi_podf\00", align 1
@.str.155 = private unnamed_addr constant [13 x i8] c"display_podf\00", align 1
@.str.156 = private unnamed_addr constant [9 x i8] c"csi_podf\00", align 1
@.str.157 = private unnamed_addr constant [10 x i8] c"cko1_podf\00", align 1
@.str.158 = private unnamed_addr constant [10 x i8] c"cko2_podf\00", align 1
@.str.159 = private unnamed_addr constant [16 x i8] c"ldb_di0_div_3_5\00", align 1
@.str.160 = private unnamed_addr constant [14 x i8] c"ldb_di0_div_7\00", align 1
@.str.161 = private unnamed_addr constant [16 x i8] c"ldb_di1_div_3_5\00", align 1
@.str.162 = private unnamed_addr constant [14 x i8] c"ldb_di1_div_7\00", align 1
@.str.163 = private unnamed_addr constant [7 x i8] c"periph\00", align 1
@periph_sels = internal global [2 x ptr] [ptr @.str.76, ptr @.str.118], align 4
@.str.164 = private unnamed_addr constant [8 x i8] c"periph2\00", align 1
@periph2_sels = internal global [2 x ptr] [ptr @.str.77, ptr @.str.119], align 4
@.str.165 = private unnamed_addr constant [11 x i8] c"ocram_podf\00", align 1
@.str.166 = private unnamed_addr constant [10 x i8] c"mmdc_podf\00", align 1
@.str.167 = private unnamed_addr constant [9 x i8] c"aips_tz1\00", align 1
@.str.168 = private unnamed_addr constant [9 x i8] c"aips_tz2\00", align 1
@.str.169 = private unnamed_addr constant [9 x i8] c"apbh_dma\00", align 1
@.str.170 = private unnamed_addr constant [7 x i8] c"usdhc3\00", align 1
@.str.171 = private unnamed_addr constant [9 x i8] c"asrc_mem\00", align 1
@share_count_asrc = internal global i32 0, align 4
@.str.172 = private unnamed_addr constant [9 x i8] c"asrc_ipg\00", align 1
@.str.173 = private unnamed_addr constant [9 x i8] c"caam_mem\00", align 1
@.str.174 = private unnamed_addr constant [10 x i8] c"caam_aclk\00", align 1
@.str.175 = private unnamed_addr constant [9 x i8] c"caam_ipg\00", align 1
@.str.176 = private unnamed_addr constant [9 x i8] c"can1_ipg\00", align 1
@.str.177 = private unnamed_addr constant [12 x i8] c"can1_serial\00", align 1
@.str.178 = private unnamed_addr constant [9 x i8] c"can2_ipg\00", align 1
@.str.179 = private unnamed_addr constant [12 x i8] c"can2_serial\00", align 1
@.str.180 = private unnamed_addr constant [6 x i8] c"dcic1\00", align 1
@.str.181 = private unnamed_addr constant [6 x i8] c"dcic2\00", align 1
@.str.182 = private unnamed_addr constant [9 x i8] c"aips_tz3\00", align 1
@.str.183 = private unnamed_addr constant [7 x i8] c"ecspi1\00", align 1
@.str.184 = private unnamed_addr constant [7 x i8] c"ecspi2\00", align 1
@.str.185 = private unnamed_addr constant [7 x i8] c"ecspi3\00", align 1
@.str.186 = private unnamed_addr constant [7 x i8] c"ecspi4\00", align 1
@.str.187 = private unnamed_addr constant [7 x i8] c"ecspi5\00", align 1
@.str.188 = private unnamed_addr constant [6 x i8] c"epit1\00", align 1
@.str.189 = private unnamed_addr constant [6 x i8] c"epit2\00", align 1
@.str.190 = private unnamed_addr constant [11 x i8] c"esai_extal\00", align 1
@share_count_esai = internal global i32 0, align 4
@.str.191 = private unnamed_addr constant [9 x i8] c"esai_ipg\00", align 1
@.str.192 = private unnamed_addr constant [9 x i8] c"esai_mem\00", align 1
@.str.193 = private unnamed_addr constant [7 x i8] c"wakeup\00", align 1
@.str.194 = private unnamed_addr constant [8 x i8] c"gpt_bus\00", align 1
@.str.195 = private unnamed_addr constant [11 x i8] c"gpt_serial\00", align 1
@.str.196 = private unnamed_addr constant [4 x i8] c"gpu\00", align 1
@.str.197 = private unnamed_addr constant [8 x i8] c"ocram_s\00", align 1
@.str.198 = private unnamed_addr constant [6 x i8] c"canfd\00", align 1
@.str.199 = private unnamed_addr constant [4 x i8] c"csi\00", align 1
@.str.200 = private unnamed_addr constant [5 x i8] c"i2c1\00", align 1
@.str.201 = private unnamed_addr constant [5 x i8] c"i2c2\00", align 1
@.str.202 = private unnamed_addr constant [5 x i8] c"i2c3\00", align 1
@.str.203 = private unnamed_addr constant [6 x i8] c"ocotp\00", align 1
@.str.204 = private unnamed_addr constant [7 x i8] c"iomuxc\00", align 1
@.str.205 = private unnamed_addr constant [7 x i8] c"ipmux1\00", align 1
@.str.206 = private unnamed_addr constant [7 x i8] c"ipmux2\00", align 1
@.str.207 = private unnamed_addr constant [7 x i8] c"ipmux3\00", align 1
@.str.208 = private unnamed_addr constant [7 x i8] c"tzasc1\00", align 1
@.str.209 = private unnamed_addr constant [10 x i8] c"lcdif_apb\00", align 1
@.str.210 = private unnamed_addr constant [8 x i8] c"pxp_axi\00", align 1
@.str.211 = private unnamed_addr constant [3 x i8] c"m4\00", align 1
@.str.212 = private unnamed_addr constant [5 x i8] c"enet\00", align 1
@.str.213 = private unnamed_addr constant [9 x i8] c"enet_ahb\00", align 1
@.str.214 = private unnamed_addr constant [12 x i8] c"display_axi\00", align 1
@.str.215 = private unnamed_addr constant [11 x i8] c"lcdif2_pix\00", align 1
@.str.216 = private unnamed_addr constant [11 x i8] c"lcdif1_pix\00", align 1
@.str.217 = private unnamed_addr constant [8 x i8] c"ldb_di0\00", align 1
@.str.218 = private unnamed_addr constant [6 x i8] c"qspi1\00", align 1
@.str.219 = private unnamed_addr constant [4 x i8] c"mlb\00", align 1
@.str.220 = private unnamed_addr constant [13 x i8] c"mmdc_p0_fast\00", align 1
@.str.221 = private unnamed_addr constant [12 x i8] c"mmdc_p0_ipg\00", align 1
@.str.222 = private unnamed_addr constant [12 x i8] c"mmdc_p1_ipg\00", align 1
@.str.223 = private unnamed_addr constant [6 x i8] c"ocram\00", align 1
@.str.224 = private unnamed_addr constant [9 x i8] c"pcie_axi\00", align 1
@.str.225 = private unnamed_addr constant [6 x i8] c"qspi2\00", align 1
@.str.226 = private unnamed_addr constant [9 x i8] c"per1_bch\00", align 1
@.str.227 = private unnamed_addr constant [10 x i8] c"per2_main\00", align 1
@.str.228 = private unnamed_addr constant [5 x i8] c"pwm1\00", align 1
@.str.229 = private unnamed_addr constant [5 x i8] c"pwm2\00", align 1
@.str.230 = private unnamed_addr constant [5 x i8] c"pwm3\00", align 1
@.str.231 = private unnamed_addr constant [5 x i8] c"pwm4\00", align 1
@.str.232 = private unnamed_addr constant [13 x i8] c"gpmi_bch_apb\00", align 1
@.str.233 = private unnamed_addr constant [9 x i8] c"gpmi_bch\00", align 1
@.str.234 = private unnamed_addr constant [7 x i8] c"usdhc4\00", align 1
@.str.235 = private unnamed_addr constant [8 x i8] c"gpmi_io\00", align 1
@.str.236 = private unnamed_addr constant [9 x i8] c"gpmi_apb\00", align 1
@.str.237 = private unnamed_addr constant [4 x i8] c"rom\00", align 1
@.str.238 = private unnamed_addr constant [5 x i8] c"sdma\00", align 1
@.str.239 = private unnamed_addr constant [5 x i8] c"spba\00", align 1
@.str.240 = private unnamed_addr constant [6 x i8] c"audio\00", align 1
@share_count_audio = internal global i32 0, align 4
@.str.241 = private unnamed_addr constant [6 x i8] c"spdif\00", align 1
@.str.242 = private unnamed_addr constant [11 x i8] c"spdif_gclk\00", align 1
@.str.243 = private unnamed_addr constant [9 x i8] c"ssi1_ipg\00", align 1
@share_count_ssi1 = internal global i32 0, align 4
@.str.244 = private unnamed_addr constant [9 x i8] c"ssi2_ipg\00", align 1
@share_count_ssi2 = internal global i32 0, align 4
@.str.245 = private unnamed_addr constant [9 x i8] c"ssi3_ipg\00", align 1
@share_count_ssi3 = internal global i32 0, align 4
@.str.246 = private unnamed_addr constant [5 x i8] c"ssi1\00", align 1
@.str.247 = private unnamed_addr constant [5 x i8] c"ssi2\00", align 1
@.str.248 = private unnamed_addr constant [5 x i8] c"ssi3\00", align 1
@.str.249 = private unnamed_addr constant [9 x i8] c"uart_ipg\00", align 1
@.str.250 = private unnamed_addr constant [12 x i8] c"uart_serial\00", align 1
@.str.251 = private unnamed_addr constant [9 x i8] c"sai1_ipg\00", align 1
@share_count_sai1 = internal global i32 0, align 4
@.str.252 = private unnamed_addr constant [9 x i8] c"sai2_ipg\00", align 1
@share_count_sai2 = internal global i32 0, align 4
@.str.253 = private unnamed_addr constant [5 x i8] c"sai1\00", align 1
@.str.254 = private unnamed_addr constant [5 x i8] c"sai2\00", align 1
@.str.255 = private unnamed_addr constant [7 x i8] c"usboh3\00", align 1
@.str.256 = private unnamed_addr constant [7 x i8] c"usdhc1\00", align 1
@.str.257 = private unnamed_addr constant [7 x i8] c"usdhc2\00", align 1
@.str.258 = private unnamed_addr constant [9 x i8] c"eim_slow\00", align 1
@.str.259 = private unnamed_addr constant [5 x i8] c"pwm8\00", align 1
@.str.260 = private unnamed_addr constant [5 x i8] c"vadc\00", align 1
@.str.261 = private unnamed_addr constant [4 x i8] c"gis\00", align 1
@.str.262 = private unnamed_addr constant [5 x i8] c"i2c4\00", align 1
@.str.263 = private unnamed_addr constant [5 x i8] c"pwm5\00", align 1
@.str.264 = private unnamed_addr constant [5 x i8] c"pwm6\00", align 1
@.str.265 = private unnamed_addr constant [5 x i8] c"pwm7\00", align 1
@.str.266 = private unnamed_addr constant [5 x i8] c"cko1\00", align 1
@.str.267 = private unnamed_addr constant [5 x i8] c"cko2\00", align 1
@.str.268 = private unnamed_addr constant [38 x i8] c"\013Failed to set pcie bus parent clk.\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.269 = private unnamed_addr constant [4 x i8] c"axi\00", align 1
@.str.270 = private unnamed_addr constant [8 x i8] c"ldb_di1\00", align 1
@.str.271 = private unnamed_addr constant [5 x i8] c"wrck\00", align 1
@.str.272 = private unnamed_addr constant [11 x i8] c"ecspi_root\00", align 1
@.str.273 = private unnamed_addr constant [5 x i8] c"pcie\00", align 1
@.str.274 = private unnamed_addr constant [9 x i8] c"csi_core\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__of_table_imx6sx], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @imx6sx_clocks_init(ptr noundef %0) #0 section ".init.text" {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 1084) #4
  store ptr %3, ptr @clk_hw_data, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %6, !prof !8

5:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 127, i32 noundef 9, ptr noundef null) #5
  br label %1192

6:                                                ; preds = %1
  store i32 270, ptr %3, align 8
  %7 = getelementptr inbounds %struct.clk_hw_onecell_data, ptr %3, i32 0, i32 1
  store ptr %7, ptr @hws, align 4
  %8 = tail call ptr @__clk_hw_register_fixed_rate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.1, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #5
  %9 = load ptr, ptr @hws, align 4
  store ptr %8, ptr %9, align 4
  %10 = tail call ptr @imx_obtain_fixed_clk_hw(ptr noundef %0, ptr noundef nonnull @.str.2) #5
  %11 = load ptr, ptr @hws, align 4
  %12 = getelementptr ptr, ptr %11, i32 1
  store ptr %10, ptr %12, align 4
  %13 = tail call ptr @imx_obtain_fixed_clk_hw(ptr noundef %0, ptr noundef nonnull @.str.3) #5
  %14 = load ptr, ptr @hws, align 4
  %15 = getelementptr ptr, ptr %14, i32 3
  store ptr %13, ptr %15, align 4
  %16 = tail call ptr @imx_obtain_fixed_clk_hw(ptr noundef %0, ptr noundef nonnull @.str.4) #5
  %17 = load ptr, ptr @hws, align 4
  %18 = getelementptr ptr, ptr %17, i32 223
  store ptr %16, ptr %18, align 4
  %19 = tail call ptr @imx_obtain_fixed_clk_hw(ptr noundef %0, ptr noundef nonnull @.str.5) #5
  %20 = load ptr, ptr @hws, align 4
  %21 = getelementptr ptr, ptr %20, i32 224
  store ptr %19, ptr %21, align 4
  %22 = tail call ptr @imx_obtain_fixed_clk_hw(ptr noundef %0, ptr noundef nonnull @.str.6) #5
  %23 = load ptr, ptr @hws, align 4
  %24 = getelementptr ptr, ptr %23, i32 242
  store ptr %22, ptr %24, align 4
  %25 = tail call ptr @imx_obtain_fixed_clk_hw(ptr noundef %0, ptr noundef nonnull @.str.7) #5
  %26 = load ptr, ptr @hws, align 4
  %27 = getelementptr ptr, ptr %26, i32 268
  store ptr %25, ptr %27, align 4
  %28 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.8) #5
  %29 = tail call ptr @of_iomap(ptr noundef %28, i32 noundef 0) #5
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %32, !prof !8

31:                                               ; preds = %6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 148, i32 noundef 9, ptr noundef null) #5
  br label %32

32:                                               ; preds = %31, %6
  tail call void @of_node_put(ptr noundef %28) #5
  %33 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.9, i8 noundef zeroext 4, ptr noundef nonnull @pll_bypass_src_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %29, i8 noundef zeroext 14, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %34 = load ptr, ptr @hws, align 4
  %35 = getelementptr ptr, ptr %34, i32 243
  store ptr %33, ptr %35, align 4
  %36 = getelementptr i8, ptr %29, i32 48
  %37 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.10, i8 noundef zeroext 4, ptr noundef nonnull @pll_bypass_src_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %36, i8 noundef zeroext 14, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %38 = load ptr, ptr @hws, align 4
  %39 = getelementptr ptr, ptr %38, i32 244
  store ptr %37, ptr %39, align 4
  %40 = getelementptr i8, ptr %29, i32 16
  %41 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.11, i8 noundef zeroext 4, ptr noundef nonnull @pll_bypass_src_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %40, i8 noundef zeroext 14, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %42 = load ptr, ptr @hws, align 4
  %43 = getelementptr ptr, ptr %42, i32 245
  store ptr %41, ptr %43, align 4
  %44 = getelementptr i8, ptr %29, i32 112
  %45 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.12, i8 noundef zeroext 4, ptr noundef nonnull @pll_bypass_src_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %44, i8 noundef zeroext 14, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %46 = load ptr, ptr @hws, align 4
  %47 = getelementptr ptr, ptr %46, i32 246
  store ptr %45, ptr %47, align 4
  %48 = getelementptr i8, ptr %29, i32 160
  %49 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.13, i8 noundef zeroext 4, ptr noundef nonnull @pll_bypass_src_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %48, i8 noundef zeroext 14, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %50 = load ptr, ptr @hws, align 4
  %51 = getelementptr ptr, ptr %50, i32 247
  store ptr %49, ptr %51, align 4
  %52 = getelementptr i8, ptr %29, i32 224
  %53 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.14, i8 noundef zeroext 4, ptr noundef nonnull @pll_bypass_src_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %52, i8 noundef zeroext 14, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %54 = load ptr, ptr @hws, align 4
  %55 = getelementptr ptr, ptr %54, i32 248
  store ptr %53, ptr %55, align 4
  %56 = getelementptr i8, ptr %29, i32 32
  %57 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.15, i8 noundef zeroext 4, ptr noundef nonnull @pll_bypass_src_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %56, i8 noundef zeroext 14, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %58 = load ptr, ptr @hws, align 4
  %59 = getelementptr ptr, ptr %58, i32 249
  store ptr %57, ptr %59, align 4
  %60 = tail call ptr @imx_clk_hw_pllv3(i32 noundef 1, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.3, ptr noundef %29, i32 noundef 127) #5
  %61 = load ptr, ptr @hws, align 4
  %62 = getelementptr ptr, ptr %61, i32 250
  store ptr %60, ptr %62, align 4
  %63 = tail call ptr @imx_clk_hw_pllv3(i32 noundef 0, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.3, ptr noundef %36, i32 noundef 1) #5
  %64 = load ptr, ptr @hws, align 4
  %65 = getelementptr ptr, ptr %64, i32 251
  store ptr %63, ptr %65, align 4
  %66 = tail call ptr @imx_clk_hw_pllv3(i32 noundef 2, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.3, ptr noundef %40, i32 noundef 3) #5
  %67 = load ptr, ptr @hws, align 4
  %68 = getelementptr ptr, ptr %67, i32 252
  store ptr %66, ptr %68, align 4
  %69 = tail call ptr @imx_clk_hw_pllv3(i32 noundef 4, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.3, ptr noundef %44, i32 noundef 127) #5
  %70 = load ptr, ptr @hws, align 4
  %71 = getelementptr ptr, ptr %70, i32 253
  store ptr %69, ptr %71, align 4
  %72 = tail call ptr @imx_clk_hw_pllv3(i32 noundef 4, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.3, ptr noundef %48, i32 noundef 127) #5
  %73 = load ptr, ptr @hws, align 4
  %74 = getelementptr ptr, ptr %73, i32 254
  store ptr %72, ptr %74, align 4
  %75 = tail call ptr @imx_clk_hw_pllv3(i32 noundef 5, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.3, ptr noundef %52, i32 noundef 3) #5
  %76 = load ptr, ptr @hws, align 4
  %77 = getelementptr ptr, ptr %76, i32 255
  store ptr %75, ptr %77, align 4
  %78 = tail call ptr @imx_clk_hw_pllv3(i32 noundef 2, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.3, ptr noundef %56, i32 noundef 3) #5
  %79 = load ptr, ptr @hws, align 4
  %80 = getelementptr ptr, ptr %79, i32 256
  store ptr %78, ptr %80, align 4
  %81 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.23, i8 noundef zeroext 2, ptr noundef nonnull @pll1_bypass_sels, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %29, i8 noundef zeroext 16, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %82 = load ptr, ptr @hws, align 4
  %83 = getelementptr ptr, ptr %82, i32 257
  store ptr %81, ptr %83, align 4
  %84 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.24, i8 noundef zeroext 2, ptr noundef nonnull @pll2_bypass_sels, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %36, i8 noundef zeroext 16, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %85 = load ptr, ptr @hws, align 4
  %86 = getelementptr ptr, ptr %85, i32 258
  store ptr %84, ptr %86, align 4
  %87 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.25, i8 noundef zeroext 2, ptr noundef nonnull @pll3_bypass_sels, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %40, i8 noundef zeroext 16, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %88 = load ptr, ptr @hws, align 4
  %89 = getelementptr ptr, ptr %88, i32 259
  store ptr %87, ptr %89, align 4
  %90 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.26, i8 noundef zeroext 2, ptr noundef nonnull @pll4_bypass_sels, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %44, i8 noundef zeroext 16, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %91 = load ptr, ptr @hws, align 4
  %92 = getelementptr ptr, ptr %91, i32 260
  store ptr %90, ptr %92, align 4
  %93 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.27, i8 noundef zeroext 2, ptr noundef nonnull @pll5_bypass_sels, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %48, i8 noundef zeroext 16, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %94 = load ptr, ptr @hws, align 4
  %95 = getelementptr ptr, ptr %94, i32 261
  store ptr %93, ptr %95, align 4
  %96 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.28, i8 noundef zeroext 2, ptr noundef nonnull @pll6_bypass_sels, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %52, i8 noundef zeroext 16, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %97 = load ptr, ptr @hws, align 4
  %98 = getelementptr ptr, ptr %97, i32 262
  store ptr %96, ptr %98, align 4
  %99 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.29, i8 noundef zeroext 2, ptr noundef nonnull @pll7_bypass_sels, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %56, i8 noundef zeroext 16, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %100 = load ptr, ptr @hws, align 4
  %101 = getelementptr ptr, ptr %100, i32 263
  store ptr %99, ptr %101, align 4
  %102 = getelementptr ptr, ptr %100, i32 257
  %103 = load ptr, ptr %102, align 4
  %104 = getelementptr inbounds %struct.clk_hw, ptr %103, i32 0, i32 1
  %105 = load ptr, ptr %104, align 4
  %106 = getelementptr ptr, ptr %100, i32 250
  %107 = load ptr, ptr %106, align 4
  %108 = getelementptr inbounds %struct.clk_hw, ptr %107, i32 0, i32 1
  %109 = load ptr, ptr %108, align 4
  %110 = tail call i32 @clk_set_parent(ptr noundef %105, ptr noundef %109) #5
  %111 = load ptr, ptr @hws, align 4
  %112 = getelementptr ptr, ptr %111, i32 258
  %113 = load ptr, ptr %112, align 4
  %114 = getelementptr inbounds %struct.clk_hw, ptr %113, i32 0, i32 1
  %115 = load ptr, ptr %114, align 4
  %116 = getelementptr ptr, ptr %111, i32 251
  %117 = load ptr, ptr %116, align 4
  %118 = getelementptr inbounds %struct.clk_hw, ptr %117, i32 0, i32 1
  %119 = load ptr, ptr %118, align 4
  %120 = tail call i32 @clk_set_parent(ptr noundef %115, ptr noundef %119) #5
  %121 = load ptr, ptr @hws, align 4
  %122 = getelementptr ptr, ptr %121, i32 259
  %123 = load ptr, ptr %122, align 4
  %124 = getelementptr inbounds %struct.clk_hw, ptr %123, i32 0, i32 1
  %125 = load ptr, ptr %124, align 4
  %126 = getelementptr ptr, ptr %121, i32 252
  %127 = load ptr, ptr %126, align 4
  %128 = getelementptr inbounds %struct.clk_hw, ptr %127, i32 0, i32 1
  %129 = load ptr, ptr %128, align 4
  %130 = tail call i32 @clk_set_parent(ptr noundef %125, ptr noundef %129) #5
  %131 = load ptr, ptr @hws, align 4
  %132 = getelementptr ptr, ptr %131, i32 260
  %133 = load ptr, ptr %132, align 4
  %134 = getelementptr inbounds %struct.clk_hw, ptr %133, i32 0, i32 1
  %135 = load ptr, ptr %134, align 4
  %136 = getelementptr ptr, ptr %131, i32 253
  %137 = load ptr, ptr %136, align 4
  %138 = getelementptr inbounds %struct.clk_hw, ptr %137, i32 0, i32 1
  %139 = load ptr, ptr %138, align 4
  %140 = tail call i32 @clk_set_parent(ptr noundef %135, ptr noundef %139) #5
  %141 = load ptr, ptr @hws, align 4
  %142 = getelementptr ptr, ptr %141, i32 261
  %143 = load ptr, ptr %142, align 4
  %144 = getelementptr inbounds %struct.clk_hw, ptr %143, i32 0, i32 1
  %145 = load ptr, ptr %144, align 4
  %146 = getelementptr ptr, ptr %141, i32 254
  %147 = load ptr, ptr %146, align 4
  %148 = getelementptr inbounds %struct.clk_hw, ptr %147, i32 0, i32 1
  %149 = load ptr, ptr %148, align 4
  %150 = tail call i32 @clk_set_parent(ptr noundef %145, ptr noundef %149) #5
  %151 = load ptr, ptr @hws, align 4
  %152 = getelementptr ptr, ptr %151, i32 262
  %153 = load ptr, ptr %152, align 4
  %154 = getelementptr inbounds %struct.clk_hw, ptr %153, i32 0, i32 1
  %155 = load ptr, ptr %154, align 4
  %156 = getelementptr ptr, ptr %151, i32 255
  %157 = load ptr, ptr %156, align 4
  %158 = getelementptr inbounds %struct.clk_hw, ptr %157, i32 0, i32 1
  %159 = load ptr, ptr %158, align 4
  %160 = tail call i32 @clk_set_parent(ptr noundef %155, ptr noundef %159) #5
  %161 = load ptr, ptr @hws, align 4
  %162 = getelementptr ptr, ptr %161, i32 263
  %163 = load ptr, ptr %162, align 4
  %164 = getelementptr inbounds %struct.clk_hw, ptr %163, i32 0, i32 1
  %165 = load ptr, ptr %164, align 4
  %166 = getelementptr ptr, ptr %161, i32 256
  %167 = load ptr, ptr %166, align 4
  %168 = getelementptr inbounds %struct.clk_hw, ptr %167, i32 0, i32 1
  %169 = load ptr, ptr %168, align 4
  %170 = tail call i32 @clk_set_parent(ptr noundef %165, ptr noundef %169) #5
  %171 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.23, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %29, i8 noundef zeroext 13, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #5
  %172 = load ptr, ptr @hws, align 4
  %173 = getelementptr ptr, ptr %172, i32 4
  store ptr %171, ptr %173, align 4
  %174 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.24, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %36, i8 noundef zeroext 13, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #5
  %175 = load ptr, ptr @hws, align 4
  %176 = getelementptr ptr, ptr %175, i32 5
  store ptr %174, ptr %176, align 4
  %177 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.25, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %40, i8 noundef zeroext 13, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #5
  %178 = load ptr, ptr @hws, align 4
  %179 = getelementptr ptr, ptr %178, i32 6
  store ptr %177, ptr %179, align 4
  %180 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.26, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %44, i8 noundef zeroext 13, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #5
  %181 = load ptr, ptr @hws, align 4
  %182 = getelementptr ptr, ptr %181, i32 7
  store ptr %180, ptr %182, align 4
  %183 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.27, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %48, i8 noundef zeroext 13, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #5
  %184 = load ptr, ptr @hws, align 4
  %185 = getelementptr ptr, ptr %184, i32 8
  store ptr %183, ptr %185, align 4
  %186 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.28, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %52, i8 noundef zeroext 13, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #5
  %187 = load ptr, ptr @hws, align 4
  %188 = getelementptr ptr, ptr %187, i32 9
  store ptr %186, ptr %188, align 4
  %189 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.29, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %56, i8 noundef zeroext 13, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #5
  %190 = load ptr, ptr @hws, align 4
  %191 = getelementptr ptr, ptr %190, i32 10
  store ptr %189, ptr %191, align 4
  %192 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.32, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %40, i8 noundef zeroext 20, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #5
  %193 = load ptr, ptr @hws, align 4
  %194 = getelementptr ptr, ptr %193, i32 11
  store ptr %192, ptr %194, align 4
  %195 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.36, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %56, i8 noundef zeroext 20, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #5
  %196 = load ptr, ptr @hws, align 4
  %197 = getelementptr ptr, ptr %196, i32 12
  store ptr %195, ptr %197, align 4
  %198 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.1, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %40, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #5
  %199 = load ptr, ptr @hws, align 4
  %200 = getelementptr ptr, ptr %199, i32 13
  store ptr %198, ptr %200, align 4
  %201 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.1, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %56, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #5
  %202 = load ptr, ptr @hws, align 4
  %203 = getelementptr ptr, ptr %202, i32 14
  store ptr %201, ptr %203, align 4
  %204 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.35, i32 noundef 4, i32 noundef 1, i32 noundef 5) #5
  %205 = load ptr, ptr @hws, align 4
  %206 = getelementptr ptr, ptr %205, i32 15
  store ptr %204, ptr %206, align 4
  %207 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.41, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %52, i8 noundef zeroext 19, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #5
  %208 = load ptr, ptr @hws, align 4
  %209 = getelementptr ptr, ptr %208, i32 16
  store ptr %207, ptr %209, align 4
  %210 = getelementptr i8, ptr %29, i32 352
  %211 = tail call ptr @imx_clk_hw_gate_exclusive(ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44, ptr noundef %210, i8 noundef zeroext 10, i32 noundef 4096) #5
  %212 = load ptr, ptr @hws, align 4
  %213 = getelementptr ptr, ptr %212, i32 234
  store ptr %211, ptr %213, align 4
  %214 = tail call ptr @imx_clk_hw_gate_exclusive(ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.46, ptr noundef %210, i8 noundef zeroext 11, i32 noundef 8192) #5
  %215 = load ptr, ptr @hws, align 4
  %216 = getelementptr ptr, ptr %215, i32 266
  store ptr %214, ptr %216, align 4
  %217 = tail call ptr @imx_clk_hw_gate_exclusive(ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.6, ptr noundef %210, i8 noundef zeroext 12, i32 noundef 1024) #5
  %218 = load ptr, ptr @hws, align 4
  %219 = getelementptr ptr, ptr %218, i32 241
  store ptr %217, ptr %219, align 4
  %220 = tail call ptr @imx_clk_hw_gate_exclusive(ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.7, ptr noundef %210, i8 noundef zeroext 13, i32 noundef 2048) #5
  %221 = load ptr, ptr @hws, align 4
  %222 = getelementptr ptr, ptr %221, i32 267
  store ptr %220, ptr %222, align 4
  %223 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.35, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef %52, i8 noundef zeroext 0, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef nonnull @clk_enet_ref_table, ptr noundef nonnull @imx_ccm_lock) #5
  %224 = load ptr, ptr @hws, align 4
  %225 = getelementptr ptr, ptr %224, i32 17
  store ptr %223, ptr %225, align 4
  %226 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.35, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef %52, i8 noundef zeroext 2, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef nonnull @clk_enet_ref_table, ptr noundef nonnull @imx_ccm_lock) #5
  %227 = load ptr, ptr @hws, align 4
  %228 = getelementptr ptr, ptr %227, i32 230
  store ptr %226, ptr %228, align 4
  %229 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.50, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %52, i8 noundef zeroext 20, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #5
  %230 = load ptr, ptr @hws, align 4
  %231 = getelementptr ptr, ptr %230, i32 231
  store ptr %229, ptr %231, align 4
  %232 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.35, i32 noundef 4, i32 noundef 1, i32 noundef 20) #5
  %233 = load ptr, ptr @hws, align 4
  %234 = getelementptr ptr, ptr %233, i32 229
  store ptr %232, ptr %234, align 4
  %235 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.52, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %52, i8 noundef zeroext 21, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #5
  %236 = load ptr, ptr @hws, align 4
  %237 = getelementptr ptr, ptr %236, i32 228
  store ptr %235, ptr %237, align 4
  %238 = getelementptr i8, ptr %29, i32 256
  %239 = tail call ptr @imx_clk_hw_pfd(ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.31, ptr noundef %238, i8 noundef zeroext 0) #5
  %240 = load ptr, ptr @hws, align 4
  %241 = getelementptr ptr, ptr %240, i32 18
  store ptr %239, ptr %241, align 4
  %242 = tail call ptr @imx_clk_hw_pfd(ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.31, ptr noundef %238, i8 noundef zeroext 1) #5
  %243 = load ptr, ptr @hws, align 4
  %244 = getelementptr ptr, ptr %243, i32 19
  store ptr %242, ptr %244, align 4
  %245 = tail call ptr @imx_clk_hw_pfd(ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.31, ptr noundef %238, i8 noundef zeroext 2) #5
  %246 = load ptr, ptr @hws, align 4
  %247 = getelementptr ptr, ptr %246, i32 20
  store ptr %245, ptr %247, align 4
  %248 = tail call ptr @imx_clk_hw_pfd(ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.31, ptr noundef %238, i8 noundef zeroext 3) #5
  %249 = load ptr, ptr @hws, align 4
  %250 = getelementptr ptr, ptr %249, i32 21
  store ptr %248, ptr %250, align 4
  %251 = getelementptr i8, ptr %29, i32 240
  %252 = tail call ptr @imx_clk_hw_pfd(ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.32, ptr noundef %251, i8 noundef zeroext 0) #5
  %253 = load ptr, ptr @hws, align 4
  %254 = getelementptr ptr, ptr %253, i32 22
  store ptr %252, ptr %254, align 4
  %255 = tail call ptr @imx_clk_hw_pfd(ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.32, ptr noundef %251, i8 noundef zeroext 1) #5
  %256 = load ptr, ptr @hws, align 4
  %257 = getelementptr ptr, ptr %256, i32 23
  store ptr %255, ptr %257, align 4
  %258 = tail call ptr @imx_clk_hw_pfd(ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.32, ptr noundef %251, i8 noundef zeroext 2) #5
  %259 = load ptr, ptr @hws, align 4
  %260 = getelementptr ptr, ptr %259, i32 24
  store ptr %258, ptr %260, align 4
  %261 = tail call ptr @imx_clk_hw_pfd(ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.32, ptr noundef %251, i8 noundef zeroext 3) #5
  %262 = load ptr, ptr @hws, align 4
  %263 = getelementptr ptr, ptr %262, i32 25
  store ptr %261, ptr %263, align 4
  %264 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.56, i32 noundef 4, i32 noundef 1, i32 noundef 2) #5
  %265 = load ptr, ptr @hws, align 4
  %266 = getelementptr ptr, ptr %265, i32 26
  store ptr %264, ptr %266, align 4
  %267 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.32, i32 noundef 4, i32 noundef 1, i32 noundef 4) #5
  %268 = load ptr, ptr @hws, align 4
  %269 = getelementptr ptr, ptr %268, i32 27
  store ptr %267, ptr %269, align 4
  %270 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.32, i32 noundef 4, i32 noundef 1, i32 noundef 6) #5
  %271 = load ptr, ptr @hws, align 4
  %272 = getelementptr ptr, ptr %271, i32 28
  store ptr %270, ptr %272, align 4
  %273 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.32, i32 noundef 4, i32 noundef 1, i32 noundef 8) #5
  %274 = load ptr, ptr @hws, align 4
  %275 = getelementptr ptr, ptr %274, i32 29
  store ptr %273, ptr %275, align 4
  %276 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.67, i32 noundef 4, i32 noundef 1, i32 noundef 2) #5
  %277 = load ptr, ptr @hws, align 4
  %278 = getelementptr ptr, ptr %277, i32 30
  store ptr %276, ptr %278, align 4
  %279 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.3, i32 noundef 4, i32 noundef 1, i32 noundef 8) #5
  %280 = load ptr, ptr @hws, align 4
  %281 = getelementptr ptr, ptr %280, i32 227
  store ptr %279, ptr %281, align 4
  %282 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.33, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %44, i8 noundef zeroext 19, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef nonnull @post_div_table, ptr noundef nonnull @imx_ccm_lock) #5
  %283 = load ptr, ptr @hws, align 4
  %284 = getelementptr ptr, ptr %283, i32 31
  store ptr %282, ptr %284, align 4
  %285 = getelementptr i8, ptr %29, i32 368
  %286 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.69, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %285, i8 noundef zeroext 15, i8 noundef zeroext 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %287 = load ptr, ptr @hws, align 4
  %288 = getelementptr ptr, ptr %287, i32 32
  store ptr %286, ptr %288, align 4
  %289 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.34, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %48, i8 noundef zeroext 19, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef nonnull @post_div_table, ptr noundef nonnull @imx_ccm_lock) #5
  %290 = load ptr, ptr @hws, align 4
  %291 = getelementptr ptr, ptr %290, i32 33
  store ptr %289, ptr %291, align 4
  %292 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.71, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %285, i8 noundef zeroext 30, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef nonnull @video_div_table, ptr noundef nonnull @imx_ccm_lock) #5
  %293 = load ptr, ptr @hws, align 4
  %294 = getelementptr ptr, ptr %293, i32 34
  store ptr %292, ptr %294, align 4
  %295 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.44, i8 noundef zeroext 14, ptr noundef nonnull @lvds_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %210, i8 noundef zeroext 0, i32 noundef 31, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %296 = load ptr, ptr @hws, align 4
  %297 = getelementptr ptr, ptr %296, i32 233
  store ptr %295, ptr %297, align 4
  %298 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.46, i8 noundef zeroext 14, ptr noundef nonnull @lvds_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %210, i8 noundef zeroext 5, i32 noundef 31, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %299 = load ptr, ptr @hws, align 4
  %300 = getelementptr ptr, ptr %299, i32 265
  store ptr %298, ptr %300, align 4
  %301 = tail call ptr @of_iomap(ptr noundef %0, i32 noundef 0) #5
  %302 = icmp eq ptr %301, null
  br i1 %302, label %303, label %304, !prof !8

303:                                              ; preds = %32
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 262, i32 noundef 9, ptr noundef null) #5
  br label %304

304:                                              ; preds = %303, %32
  %305 = getelementptr i8, ptr %301, i32 12
  %306 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.73, i8 noundef zeroext 2, ptr noundef nonnull @step_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %305, i8 noundef zeroext 8, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %307 = load ptr, ptr @hws, align 4
  %308 = getelementptr ptr, ptr %307, i32 35
  store ptr %306, ptr %308, align 4
  %309 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.74, i8 noundef zeroext 2, ptr noundef nonnull @pll1_sw_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %305, i8 noundef zeroext 2, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %310 = load ptr, ptr @hws, align 4
  %311 = getelementptr ptr, ptr %310, i32 36
  store ptr %309, ptr %311, align 4
  %312 = getelementptr i8, ptr %301, i32 20
  %313 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.75, i8 noundef zeroext 4, ptr noundef nonnull @ocram_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %312, i8 noundef zeroext 6, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %314 = load ptr, ptr @hws, align 4
  %315 = getelementptr ptr, ptr %314, i32 37
  store ptr %313, ptr %315, align 4
  %316 = getelementptr i8, ptr %301, i32 24
  %317 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.76, i8 noundef zeroext 4, ptr noundef nonnull @periph_pre_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %316, i8 noundef zeroext 18, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %318 = load ptr, ptr @hws, align 4
  %319 = getelementptr ptr, ptr %318, i32 38
  store ptr %317, ptr %319, align 4
  %320 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.77, i8 noundef zeroext 4, ptr noundef nonnull @periph2_pre_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %316, i8 noundef zeroext 21, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %321 = load ptr, ptr @hws, align 4
  %322 = getelementptr ptr, ptr %321, i32 39
  store ptr %320, ptr %322, align 4
  %323 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.78, i8 noundef zeroext 3, ptr noundef nonnull @periph_clk2_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %316, i8 noundef zeroext 12, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %324 = load ptr, ptr @hws, align 4
  %325 = getelementptr ptr, ptr %324, i32 40
  store ptr %323, ptr %325, align 4
  %326 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.79, i8 noundef zeroext 2, ptr noundef nonnull @periph2_clk2_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %316, i8 noundef zeroext 20, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %327 = load ptr, ptr @hws, align 4
  %328 = getelementptr ptr, ptr %327, i32 41
  store ptr %326, ptr %328, align 4
  %329 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.80, i8 noundef zeroext 2, ptr noundef nonnull @pcie_axi_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %316, i8 noundef zeroext 10, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %330 = load ptr, ptr @hws, align 4
  %331 = getelementptr ptr, ptr %330, i32 42
  store ptr %329, ptr %331, align 4
  %332 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.81, i8 noundef zeroext 4, ptr noundef nonnull @gpu_axi_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %316, i8 noundef zeroext 8, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %333 = load ptr, ptr @hws, align 4
  %334 = getelementptr ptr, ptr %333, i32 43
  store ptr %332, ptr %334, align 4
  %335 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.82, i8 noundef zeroext 4, ptr noundef nonnull @gpu_core_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %316, i8 noundef zeroext 4, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %336 = load ptr, ptr @hws, align 4
  %337 = getelementptr ptr, ptr %336, i32 44
  store ptr %335, ptr %337, align 4
  %338 = getelementptr i8, ptr %301, i32 28
  %339 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.83, i8 noundef zeroext 4, ptr noundef nonnull @eim_slow_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %338, i8 noundef zeroext 29, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %340 = load ptr, ptr @hws, align 4
  %341 = getelementptr ptr, ptr %340, i32 45
  store ptr %339, ptr %341, align 4
  %342 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.84, i8 noundef zeroext 2, ptr noundef nonnull @usdhc_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %338, i8 noundef zeroext 16, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %343 = load ptr, ptr @hws, align 4
  %344 = getelementptr ptr, ptr %343, i32 46
  store ptr %342, ptr %344, align 4
  %345 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.85, i8 noundef zeroext 2, ptr noundef nonnull @usdhc_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %338, i8 noundef zeroext 17, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %346 = load ptr, ptr @hws, align 4
  %347 = getelementptr ptr, ptr %346, i32 47
  store ptr %345, ptr %347, align 4
  %348 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.86, i8 noundef zeroext 2, ptr noundef nonnull @usdhc_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %338, i8 noundef zeroext 18, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %349 = load ptr, ptr @hws, align 4
  %350 = getelementptr ptr, ptr %349, i32 48
  store ptr %348, ptr %350, align 4
  %351 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.87, i8 noundef zeroext 2, ptr noundef nonnull @usdhc_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %338, i8 noundef zeroext 19, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %352 = load ptr, ptr @hws, align 4
  %353 = getelementptr ptr, ptr %352, i32 49
  store ptr %351, ptr %353, align 4
  %354 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.88, i8 noundef zeroext 3, ptr noundef nonnull @ssi_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %338, i8 noundef zeroext 14, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %355 = load ptr, ptr @hws, align 4
  %356 = getelementptr ptr, ptr %355, i32 52
  store ptr %354, ptr %356, align 4
  %357 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.89, i8 noundef zeroext 3, ptr noundef nonnull @ssi_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %338, i8 noundef zeroext 12, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %358 = load ptr, ptr @hws, align 4
  %359 = getelementptr ptr, ptr %358, i32 51
  store ptr %357, ptr %359, align 4
  %360 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.90, i8 noundef zeroext 3, ptr noundef nonnull @ssi_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %338, i8 noundef zeroext 10, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %361 = load ptr, ptr @hws, align 4
  %362 = getelementptr ptr, ptr %361, i32 50
  store ptr %360, ptr %362, align 4
  %363 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.91, i8 noundef zeroext 6, ptr noundef nonnull @qspi1_sels, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %338, i8 noundef zeroext 7, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %364 = load ptr, ptr @hws, align 4
  %365 = getelementptr ptr, ptr %364, i32 53
  store ptr %363, ptr %365, align 4
  %366 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.92, i8 noundef zeroext 2, ptr noundef nonnull @perclk_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %338, i8 noundef zeroext 6, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %367 = load ptr, ptr @hws, align 4
  %368 = getelementptr ptr, ptr %367, i32 54
  store ptr %366, ptr %368, align 4
  %369 = getelementptr i8, ptr %301, i32 32
  %370 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.93, i8 noundef zeroext 5, ptr noundef nonnull @vid_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %369, i8 noundef zeroext 21, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %371 = load ptr, ptr @hws, align 4
  %372 = getelementptr ptr, ptr %371, i32 55
  store ptr %370, ptr %372, align 4
  %373 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.94, i8 noundef zeroext 4, ptr noundef nonnull @audio_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %369, i8 noundef zeroext 19, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %374 = load ptr, ptr @hws, align 4
  %375 = getelementptr ptr, ptr %374, i32 56
  store ptr %373, ptr %375, align 4
  %376 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.95, i8 noundef zeroext 4, ptr noundef nonnull @can_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %369, i8 noundef zeroext 8, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %377 = load ptr, ptr @hws, align 4
  %378 = getelementptr ptr, ptr %377, i32 59
  store ptr %376, ptr %378, align 4
  %379 = getelementptr i8, ptr %301, i32 36
  %380 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.96, i8 noundef zeroext 2, ptr noundef nonnull @uart_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %379, i8 noundef zeroext 6, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %381 = load ptr, ptr @hws, align 4
  %382 = getelementptr ptr, ptr %381, i32 60
  store ptr %380, ptr %382, align 4
  %383 = getelementptr i8, ptr %301, i32 44
  %384 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.97, i8 noundef zeroext 8, ptr noundef nonnull @qspi2_sels, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %383, i8 noundef zeroext 15, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %385 = load ptr, ptr @hws, align 4
  %386 = getelementptr ptr, ptr %385, i32 61
  store ptr %384, ptr %386, align 4
  %387 = getelementptr i8, ptr %301, i32 48
  %388 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.98, i8 noundef zeroext 4, ptr noundef nonnull @audio_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %387, i8 noundef zeroext 20, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %389 = load ptr, ptr @hws, align 4
  %390 = getelementptr ptr, ptr %389, i32 64
  store ptr %388, ptr %390, align 4
  %391 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.99, i8 noundef zeroext 4, ptr noundef nonnull @audio_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %387, i8 noundef zeroext 7, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %392 = load ptr, ptr @hws, align 4
  %393 = getelementptr ptr, ptr %392, i32 65
  store ptr %391, ptr %393, align 4
  %394 = getelementptr i8, ptr %301, i32 52
  %395 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.100, i8 noundef zeroext 6, ptr noundef nonnull @enet_pre_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %394, i8 noundef zeroext 15, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %396 = load ptr, ptr @hws, align 4
  %397 = getelementptr ptr, ptr %396, i32 66
  store ptr %395, ptr %397, align 4
  %398 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.101, i8 noundef zeroext 5, ptr noundef nonnull @enet_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %394, i8 noundef zeroext 9, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %399 = load ptr, ptr @hws, align 4
  %400 = getelementptr ptr, ptr %399, i32 67
  store ptr %398, ptr %400, align 4
  %401 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.102, i8 noundef zeroext 6, ptr noundef nonnull @m4_pre_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %394, i8 noundef zeroext 6, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %402 = load ptr, ptr @hws, align 4
  %403 = getelementptr ptr, ptr %402, i32 68
  store ptr %401, ptr %403, align 4
  %404 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.103, i8 noundef zeroext 5, ptr noundef nonnull @m4_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %394, i8 noundef zeroext 0, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %405 = load ptr, ptr @hws, align 4
  %406 = getelementptr ptr, ptr %405, i32 69
  store ptr %404, ptr %406, align 4
  %407 = getelementptr i8, ptr %301, i32 56
  %408 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.104, i8 noundef zeroext 2, ptr noundef nonnull @ecspi_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %407, i8 noundef zeroext 18, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %409 = load ptr, ptr @hws, align 4
  %410 = getelementptr ptr, ptr %409, i32 70
  store ptr %408, ptr %410, align 4
  %411 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.105, i8 noundef zeroext 6, ptr noundef nonnull @lcdif2_pre_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %407, i8 noundef zeroext 6, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %412 = load ptr, ptr @hws, align 4
  %413 = getelementptr ptr, ptr %412, i32 72
  store ptr %411, ptr %413, align 4
  %414 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.106, i8 noundef zeroext 5, ptr noundef nonnull @lcdif2_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %407, i8 noundef zeroext 0, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %415 = load ptr, ptr @hws, align 4
  %416 = getelementptr ptr, ptr %415, i32 74
  store ptr %414, ptr %416, align 4
  %417 = getelementptr i8, ptr %301, i32 60
  %418 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.107, i8 noundef zeroext 4, ptr noundef nonnull @display_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %417, i8 noundef zeroext 14, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %419 = load ptr, ptr @hws, align 4
  %420 = getelementptr ptr, ptr %419, i32 75
  store ptr %418, ptr %420, align 4
  %421 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.108, i8 noundef zeroext 4, ptr noundef nonnull @csi_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %417, i8 noundef zeroext 9, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %422 = load ptr, ptr @hws, align 4
  %423 = getelementptr ptr, ptr %422, i32 76
  store ptr %421, ptr %423, align 4
  %424 = getelementptr i8, ptr %301, i32 96
  %425 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.109, i8 noundef zeroext 16, ptr noundef nonnull @cko1_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %424, i8 noundef zeroext 0, i32 noundef 15, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %426 = load ptr, ptr @hws, align 4
  %427 = getelementptr ptr, ptr %426, i32 77
  store ptr %425, ptr %427, align 4
  %428 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.110, i8 noundef zeroext 32, ptr noundef nonnull @cko2_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %424, i8 noundef zeroext 16, i32 noundef 31, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %429 = load ptr, ptr @hws, align 4
  %430 = getelementptr ptr, ptr %429, i32 78
  store ptr %428, ptr %430, align 4
  %431 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.111, i8 noundef zeroext 2, ptr noundef nonnull @cko_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %424, i8 noundef zeroext 8, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %432 = load ptr, ptr @hws, align 4
  %433 = getelementptr ptr, ptr %432, i32 79
  store ptr %431, ptr %433, align 4
  %434 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.112, i8 noundef zeroext 2, ptr noundef nonnull @ldb_di1_div_sels, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %369, i8 noundef zeroext 11, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %435 = load ptr, ptr @hws, align 4
  %436 = getelementptr ptr, ptr %435, i32 58
  store ptr %434, ptr %436, align 4
  %437 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.113, i8 noundef zeroext 2, ptr noundef nonnull @ldb_di0_div_sels, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %369, i8 noundef zeroext 10, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %438 = load ptr, ptr @hws, align 4
  %439 = getelementptr ptr, ptr %438, i32 57
  store ptr %437, ptr %439, align 4
  %440 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.114, i8 noundef zeroext 6, ptr noundef nonnull @ldb_di1_sels, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %383, i8 noundef zeroext 12, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %441 = load ptr, ptr @hws, align 4
  %442 = getelementptr ptr, ptr %441, i32 62
  store ptr %440, ptr %442, align 4
  %443 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.115, i8 noundef zeroext 6, ptr noundef nonnull @ldb_di0_sels, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %383, i8 noundef zeroext 9, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %444 = load ptr, ptr @hws, align 4
  %445 = getelementptr ptr, ptr %444, i32 63
  store ptr %443, ptr %445, align 4
  %446 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.116, i8 noundef zeroext 6, ptr noundef nonnull @lcdif1_pre_sels, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %407, i8 noundef zeroext 15, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %447 = load ptr, ptr @hws, align 4
  %448 = getelementptr ptr, ptr %447, i32 71
  store ptr %446, ptr %448, align 4
  %449 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.117, i8 noundef zeroext 5, ptr noundef nonnull @lcdif1_sels, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %407, i8 noundef zeroext 9, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %450 = load ptr, ptr @hws, align 4
  %451 = getelementptr ptr, ptr %450, i32 73
  store ptr %449, ptr %451, align 4
  %452 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.118, ptr noundef nonnull @.str.78, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %312, i8 noundef zeroext 27, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %453 = load ptr, ptr @hws, align 4
  %454 = getelementptr ptr, ptr %453, i32 80
  store ptr %452, ptr %454, align 4
  %455 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.119, ptr noundef nonnull @.str.79, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %312, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %456 = load ptr, ptr @hws, align 4
  %457 = getelementptr ptr, ptr %456, i32 81
  store ptr %455, ptr %457, align 4
  %458 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.120, ptr noundef nonnull @.str.121, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %312, i8 noundef zeroext 8, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %459 = load ptr, ptr @hws, align 4
  %460 = getelementptr ptr, ptr %459, i32 82
  store ptr %458, ptr %460, align 4
  %461 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.122, ptr noundef nonnull @.str.82, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %316, i8 noundef zeroext 29, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %462 = load ptr, ptr @hws, align 4
  %463 = getelementptr ptr, ptr %462, i32 83
  store ptr %461, ptr %463, align 4
  %464 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.123, ptr noundef nonnull @.str.81, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %316, i8 noundef zeroext 26, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %465 = load ptr, ptr @hws, align 4
  %466 = getelementptr ptr, ptr %465, i32 84
  store ptr %464, ptr %466, align 4
  %467 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.124, ptr noundef nonnull @.str.125, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %316, i8 noundef zeroext 23, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %468 = load ptr, ptr @hws, align 4
  %469 = getelementptr ptr, ptr %468, i32 85
  store ptr %467, ptr %469, align 4
  %470 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.126, ptr noundef nonnull @.str.91, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %338, i8 noundef zeroext 26, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %471 = load ptr, ptr @hws, align 4
  %472 = getelementptr ptr, ptr %471, i32 86
  store ptr %470, ptr %472, align 4
  %473 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.127, ptr noundef nonnull @.str.83, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %338, i8 noundef zeroext 23, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %474 = load ptr, ptr @hws, align 4
  %475 = getelementptr ptr, ptr %474, i32 87
  store ptr %473, ptr %475, align 4
  %476 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.128, ptr noundef nonnull @.str.129, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %338, i8 noundef zeroext 20, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %477 = load ptr, ptr @hws, align 4
  %478 = getelementptr ptr, ptr %477, i32 88
  store ptr %476, ptr %478, align 4
  %479 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.130, ptr noundef nonnull @.str.92, ptr noundef null, ptr noundef null, i32 noundef 2048, ptr noundef %338, i8 noundef zeroext 0, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %480 = load ptr, ptr @hws, align 4
  %481 = getelementptr ptr, ptr %480, i32 89
  store ptr %479, ptr %481, align 4
  %482 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.93, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %369, i8 noundef zeroext 24, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %483 = load ptr, ptr @hws, align 4
  %484 = getelementptr ptr, ptr %483, i32 90
  store ptr %482, ptr %484, align 4
  %485 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.132, ptr noundef nonnull @.str.95, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %369, i8 noundef zeroext 2, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %486 = load ptr, ptr @hws, align 4
  %487 = getelementptr ptr, ptr %486, i32 91
  store ptr %485, ptr %487, align 4
  %488 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.133, ptr noundef nonnull @.str.87, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %379, i8 noundef zeroext 22, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %489 = load ptr, ptr @hws, align 4
  %490 = getelementptr ptr, ptr %489, i32 95
  store ptr %488, ptr %490, align 4
  %491 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.134, ptr noundef nonnull @.str.86, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %379, i8 noundef zeroext 19, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %492 = load ptr, ptr @hws, align 4
  %493 = getelementptr ptr, ptr %492, i32 94
  store ptr %491, ptr %493, align 4
  %494 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.135, ptr noundef nonnull @.str.85, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %379, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %495 = load ptr, ptr @hws, align 4
  %496 = getelementptr ptr, ptr %495, i32 93
  store ptr %494, ptr %496, align 4
  %497 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.136, ptr noundef nonnull @.str.84, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %379, i8 noundef zeroext 11, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %498 = load ptr, ptr @hws, align 4
  %499 = getelementptr ptr, ptr %498, i32 92
  store ptr %497, ptr %499, align 4
  %500 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.137, ptr noundef nonnull @.str.96, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %379, i8 noundef zeroext 0, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %501 = load ptr, ptr @hws, align 4
  %502 = getelementptr ptr, ptr %501, i32 96
  store ptr %500, ptr %502, align 4
  %503 = getelementptr i8, ptr %301, i32 40
  %504 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.138, ptr noundef nonnull @.str.94, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %503, i8 noundef zeroext 9, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %505 = load ptr, ptr @hws, align 4
  %506 = getelementptr ptr, ptr %505, i32 97
  store ptr %504, ptr %506, align 4
  %507 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.139, ptr noundef nonnull @.str.138, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %503, i8 noundef zeroext 25, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %508 = load ptr, ptr @hws, align 4
  %509 = getelementptr ptr, ptr %508, i32 98
  store ptr %507, ptr %509, align 4
  %510 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.140, ptr noundef nonnull @.str.88, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %503, i8 noundef zeroext 22, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %511 = load ptr, ptr @hws, align 4
  %512 = getelementptr ptr, ptr %511, i32 99
  store ptr %510, ptr %512, align 4
  %513 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.141, ptr noundef nonnull @.str.140, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %503, i8 noundef zeroext 16, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %514 = load ptr, ptr @hws, align 4
  %515 = getelementptr ptr, ptr %514, i32 100
  store ptr %513, ptr %515, align 4
  %516 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.142, ptr noundef nonnull @.str.90, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %503, i8 noundef zeroext 6, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %517 = load ptr, ptr @hws, align 4
  %518 = getelementptr ptr, ptr %517, i32 101
  store ptr %516, ptr %518, align 4
  %519 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.143, ptr noundef nonnull @.str.142, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %503, i8 noundef zeroext 0, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %520 = load ptr, ptr @hws, align 4
  %521 = getelementptr ptr, ptr %520, i32 102
  store ptr %519, ptr %521, align 4
  %522 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.144, ptr noundef nonnull @.str.97, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %383, i8 noundef zeroext 18, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %523 = load ptr, ptr @hws, align 4
  %524 = getelementptr ptr, ptr %523, i32 103
  store ptr %522, ptr %524, align 4
  %525 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.145, ptr noundef nonnull @.str.144, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %383, i8 noundef zeroext 21, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %526 = load ptr, ptr @hws, align 4
  %527 = getelementptr ptr, ptr %526, i32 104
  store ptr %525, ptr %527, align 4
  %528 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.146, ptr noundef nonnull @.str.89, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %383, i8 noundef zeroext 6, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %529 = load ptr, ptr @hws, align 4
  %530 = getelementptr ptr, ptr %529, i32 105
  store ptr %528, ptr %530, align 4
  %531 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.147, ptr noundef nonnull @.str.146, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %383, i8 noundef zeroext 0, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %532 = load ptr, ptr @hws, align 4
  %533 = getelementptr ptr, ptr %532, i32 106
  store ptr %531, ptr %533, align 4
  %534 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.98, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %387, i8 noundef zeroext 25, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %535 = load ptr, ptr @hws, align 4
  %536 = getelementptr ptr, ptr %535, i32 107
  store ptr %534, ptr %536, align 4
  %537 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.149, ptr noundef nonnull @.str.148, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %387, i8 noundef zeroext 22, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %538 = load ptr, ptr @hws, align 4
  %539 = getelementptr ptr, ptr %538, i32 108
  store ptr %537, ptr %539, align 4
  %540 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.150, ptr noundef nonnull @.str.99, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %387, i8 noundef zeroext 12, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %541 = load ptr, ptr @hws, align 4
  %542 = getelementptr ptr, ptr %541, i32 109
  store ptr %540, ptr %542, align 4
  %543 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.151, ptr noundef nonnull @.str.150, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %387, i8 noundef zeroext 9, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %544 = load ptr, ptr @hws, align 4
  %545 = getelementptr ptr, ptr %544, i32 110
  store ptr %543, ptr %545, align 4
  %546 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.152, ptr noundef nonnull @.str.100, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %394, i8 noundef zeroext 12, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %547 = load ptr, ptr @hws, align 4
  %548 = getelementptr ptr, ptr %547, i32 111
  store ptr %546, ptr %548, align 4
  %549 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.153, ptr noundef nonnull @.str.103, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %394, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %550 = load ptr, ptr @hws, align 4
  %551 = getelementptr ptr, ptr %550, i32 112
  store ptr %549, ptr %551, align 4
  %552 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.154, ptr noundef nonnull @.str.104, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %407, i8 noundef zeroext 19, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %553 = load ptr, ptr @hws, align 4
  %554 = getelementptr ptr, ptr %553, i32 113
  store ptr %552, ptr %554, align 4
  %555 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.125, ptr noundef nonnull @.str.116, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %407, i8 noundef zeroext 12, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %556 = load ptr, ptr @hws, align 4
  %557 = getelementptr ptr, ptr %556, i32 114
  store ptr %555, ptr %557, align 4
  %558 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.129, ptr noundef nonnull @.str.105, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %407, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %559 = load ptr, ptr @hws, align 4
  %560 = getelementptr ptr, ptr %559, i32 115
  store ptr %558, ptr %560, align 4
  %561 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.155, ptr noundef nonnull @.str.107, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %417, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %562 = load ptr, ptr @hws, align 4
  %563 = getelementptr ptr, ptr %562, i32 116
  store ptr %561, ptr %563, align 4
  %564 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.156, ptr noundef nonnull @.str.108, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %417, i8 noundef zeroext 11, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %565 = load ptr, ptr @hws, align 4
  %566 = getelementptr ptr, ptr %565, i32 117
  store ptr %564, ptr %566, align 4
  %567 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.157, ptr noundef nonnull @.str.109, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %424, i8 noundef zeroext 4, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %568 = load ptr, ptr @hws, align 4
  %569 = getelementptr ptr, ptr %568, i32 122
  store ptr %567, ptr %569, align 4
  %570 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.158, ptr noundef nonnull @.str.110, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %424, i8 noundef zeroext 21, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %571 = load ptr, ptr @hws, align 4
  %572 = getelementptr ptr, ptr %571, i32 123
  store ptr %570, ptr %572, align 4
  %573 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.115, i32 noundef 4, i32 noundef 2, i32 noundef 7) #5
  %574 = load ptr, ptr @hws, align 4
  %575 = getelementptr ptr, ptr %574, i32 118
  store ptr %573, ptr %575, align 4
  %576 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.160, ptr noundef nonnull @.str.115, i32 noundef 4, i32 noundef 1, i32 noundef 7) #5
  %577 = load ptr, ptr @hws, align 4
  %578 = getelementptr ptr, ptr %577, i32 119
  store ptr %576, ptr %578, align 4
  %579 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.161, ptr noundef nonnull @.str.114, i32 noundef 4, i32 noundef 2, i32 noundef 7) #5
  %580 = load ptr, ptr @hws, align 4
  %581 = getelementptr ptr, ptr %580, i32 120
  store ptr %579, ptr %581, align 4
  %582 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.162, ptr noundef nonnull @.str.114, i32 noundef 4, i32 noundef 1, i32 noundef 7) #5
  %583 = load ptr, ptr @hws, align 4
  %584 = getelementptr ptr, ptr %583, i32 121
  store ptr %582, ptr %584, align 4
  %585 = getelementptr i8, ptr %301, i32 72
  %586 = tail call ptr @imx_clk_hw_busy_mux(ptr noundef nonnull @.str.163, ptr noundef %312, i8 noundef zeroext 25, i8 noundef zeroext 1, ptr noundef %585, i8 noundef zeroext 5, ptr noundef nonnull @periph_sels, i32 noundef 2) #5
  %587 = load ptr, ptr @hws, align 4
  %588 = getelementptr ptr, ptr %587, i32 124
  store ptr %586, ptr %588, align 4
  %589 = tail call ptr @imx_clk_hw_busy_mux(ptr noundef nonnull @.str.164, ptr noundef %312, i8 noundef zeroext 26, i8 noundef zeroext 1, ptr noundef %585, i8 noundef zeroext 3, ptr noundef nonnull @periph2_sels, i32 noundef 2) #5
  %590 = load ptr, ptr @hws, align 4
  %591 = getelementptr ptr, ptr %590, i32 125
  store ptr %589, ptr %591, align 4
  %592 = tail call ptr @imx_clk_hw_busy_divider(ptr noundef nonnull @.str.165, ptr noundef nonnull @.str.75, ptr noundef %312, i8 noundef zeroext 16, i8 noundef zeroext 3, ptr noundef %585, i8 noundef zeroext 0) #5
  %593 = load ptr, ptr @hws, align 4
  %594 = getelementptr ptr, ptr %593, i32 226
  store ptr %592, ptr %594, align 4
  %595 = tail call ptr @imx_clk_hw_busy_divider(ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.163, ptr noundef %312, i8 noundef zeroext 10, i8 noundef zeroext 3, ptr noundef %585, i8 noundef zeroext 1) #5
  %596 = load ptr, ptr @hws, align 4
  %597 = getelementptr ptr, ptr %596, i32 127
  store ptr %595, ptr %597, align 4
  %598 = tail call ptr @imx_clk_hw_busy_divider(ptr noundef nonnull @.str.166, ptr noundef nonnull @.str.164, ptr noundef %312, i8 noundef zeroext 3, i8 noundef zeroext 3, ptr noundef %585, i8 noundef zeroext 2) #5
  %599 = load ptr, ptr @hws, align 4
  %600 = getelementptr ptr, ptr %599, i32 128
  store ptr %598, ptr %600, align 4
  %601 = getelementptr i8, ptr %301, i32 16
  %602 = tail call ptr @imx_clk_hw_busy_divider(ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.74, ptr noundef %601, i8 noundef zeroext 0, i8 noundef zeroext 3, ptr noundef %585, i8 noundef zeroext 16) #5
  %603 = load ptr, ptr @hws, align 4
  %604 = getelementptr ptr, ptr %603, i32 129
  store ptr %602, ptr %604, align 4
  %605 = getelementptr i8, ptr %301, i32 104
  %606 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.167, ptr noundef nonnull @.str.121, i32 noundef 2052, ptr noundef %605, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %607 = load ptr, ptr @hws, align 4
  %608 = getelementptr ptr, ptr %607, i32 130
  store ptr %606, ptr %608, align 4
  %609 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.168, ptr noundef nonnull @.str.121, i32 noundef 2052, ptr noundef %605, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %610 = load ptr, ptr @hws, align 4
  %611 = getelementptr ptr, ptr %610, i32 131
  store ptr %609, ptr %611, align 4
  %612 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.169, ptr noundef nonnull @.str.170, i32 noundef 4, ptr noundef %605, i8 noundef zeroext 4, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %613 = load ptr, ptr @hws, align 4
  %614 = getelementptr ptr, ptr %613, i32 132
  store ptr %612, ptr %614, align 4
  %615 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.171, ptr noundef nonnull @.str.121, i32 noundef 4, ptr noundef %605, i8 noundef zeroext 6, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_asrc) #5
  %616 = load ptr, ptr @hws, align 4
  %617 = getelementptr ptr, ptr %616, i32 236
  store ptr %615, ptr %617, align 4
  %618 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.172, ptr noundef nonnull @.str.121, i32 noundef 4, ptr noundef %605, i8 noundef zeroext 6, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_asrc) #5
  %619 = load ptr, ptr @hws, align 4
  %620 = getelementptr ptr, ptr %619, i32 235
  store ptr %618, ptr %620, align 4
  %621 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.173, ptr noundef nonnull @.str.121, i32 noundef 4, ptr noundef %605, i8 noundef zeroext 8, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %622 = load ptr, ptr @hws, align 4
  %623 = getelementptr ptr, ptr %622, i32 134
  store ptr %621, ptr %623, align 4
  %624 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.174, ptr noundef nonnull @.str.121, i32 noundef 4, ptr noundef %605, i8 noundef zeroext 10, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %625 = load ptr, ptr @hws, align 4
  %626 = getelementptr ptr, ptr %625, i32 135
  store ptr %624, ptr %626, align 4
  %627 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.175, ptr noundef nonnull @.str.120, i32 noundef 4, ptr noundef %605, i8 noundef zeroext 12, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %628 = load ptr, ptr @hws, align 4
  %629 = getelementptr ptr, ptr %628, i32 136
  store ptr %627, ptr %629, align 4
  %630 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.176, ptr noundef nonnull @.str.120, i32 noundef 4, ptr noundef %605, i8 noundef zeroext 14, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %631 = load ptr, ptr @hws, align 4
  %632 = getelementptr ptr, ptr %631, i32 137
  store ptr %630, ptr %632, align 4
  %633 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.177, ptr noundef nonnull @.str.132, i32 noundef 4, ptr noundef %605, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %634 = load ptr, ptr @hws, align 4
  %635 = getelementptr ptr, ptr %634, i32 138
  store ptr %633, ptr %635, align 4
  %636 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.178, ptr noundef nonnull @.str.120, i32 noundef 4, ptr noundef %605, i8 noundef zeroext 18, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %637 = load ptr, ptr @hws, align 4
  %638 = getelementptr ptr, ptr %637, i32 139
  store ptr %636, ptr %638, align 4
  %639 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.179, ptr noundef nonnull @.str.132, i32 noundef 4, ptr noundef %605, i8 noundef zeroext 20, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %640 = load ptr, ptr @hws, align 4
  %641 = getelementptr ptr, ptr %640, i32 140
  store ptr %639, ptr %641, align 4
  %642 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.180, ptr noundef nonnull @.str.155, i32 noundef 4, ptr noundef %605, i8 noundef zeroext 24, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %643 = load ptr, ptr @hws, align 4
  %644 = getelementptr ptr, ptr %643, i32 142
  store ptr %642, ptr %644, align 4
  %645 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.181, ptr noundef nonnull @.str.155, i32 noundef 4, ptr noundef %605, i8 noundef zeroext 26, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %646 = load ptr, ptr @hws, align 4
  %647 = getelementptr ptr, ptr %646, i32 143
  store ptr %645, ptr %647, align 4
  %648 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.182, ptr noundef nonnull @.str.121, i32 noundef 2052, ptr noundef %605, i8 noundef zeroext 30, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %649 = load ptr, ptr @hws, align 4
  %650 = getelementptr ptr, ptr %649, i32 144
  store ptr %648, ptr %650, align 4
  %651 = getelementptr i8, ptr %301, i32 108
  %652 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.183, ptr noundef nonnull @.str.154, i32 noundef 4, ptr noundef %651, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %653 = load ptr, ptr @hws, align 4
  %654 = getelementptr ptr, ptr %653, i32 145
  store ptr %652, ptr %654, align 4
  %655 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.184, ptr noundef nonnull @.str.154, i32 noundef 4, ptr noundef %651, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %656 = load ptr, ptr @hws, align 4
  %657 = getelementptr ptr, ptr %656, i32 146
  store ptr %655, ptr %657, align 4
  %658 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.185, ptr noundef nonnull @.str.154, i32 noundef 4, ptr noundef %651, i8 noundef zeroext 4, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %659 = load ptr, ptr @hws, align 4
  %660 = getelementptr ptr, ptr %659, i32 147
  store ptr %658, ptr %660, align 4
  %661 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.186, ptr noundef nonnull @.str.154, i32 noundef 4, ptr noundef %651, i8 noundef zeroext 6, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %662 = load ptr, ptr @hws, align 4
  %663 = getelementptr ptr, ptr %662, i32 148
  store ptr %661, ptr %663, align 4
  %664 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.187, ptr noundef nonnull @.str.154, i32 noundef 4, ptr noundef %651, i8 noundef zeroext 8, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %665 = load ptr, ptr @hws, align 4
  %666 = getelementptr ptr, ptr %665, i32 149
  store ptr %664, ptr %666, align 4
  %667 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.188, ptr noundef nonnull @.str.130, i32 noundef 4, ptr noundef %651, i8 noundef zeroext 12, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %668 = load ptr, ptr @hws, align 4
  %669 = getelementptr ptr, ptr %668, i32 150
  store ptr %667, ptr %669, align 4
  %670 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.189, ptr noundef nonnull @.str.130, i32 noundef 4, ptr noundef %651, i8 noundef zeroext 14, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %671 = load ptr, ptr @hws, align 4
  %672 = getelementptr ptr, ptr %671, i32 151
  store ptr %670, ptr %672, align 4
  %673 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.190, ptr noundef nonnull @.str.139, i32 noundef 4, ptr noundef %651, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_esai) #5
  %674 = load ptr, ptr @hws, align 4
  %675 = getelementptr ptr, ptr %674, i32 152
  store ptr %673, ptr %675, align 4
  %676 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.191, ptr noundef nonnull @.str.121, i32 noundef 4, ptr noundef %651, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_esai) #5
  %677 = load ptr, ptr @hws, align 4
  %678 = getelementptr ptr, ptr %677, i32 239
  store ptr %676, ptr %678, align 4
  %679 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.192, ptr noundef nonnull @.str.121, i32 noundef 4, ptr noundef %651, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_esai) #5
  %680 = load ptr, ptr @hws, align 4
  %681 = getelementptr ptr, ptr %680, i32 240
  store ptr %679, ptr %681, align 4
  %682 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.193, ptr noundef nonnull @.str.120, i32 noundef 2052, ptr noundef %651, i8 noundef zeroext 18, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %683 = load ptr, ptr @hws, align 4
  %684 = getelementptr ptr, ptr %683, i32 153
  store ptr %682, ptr %684, align 4
  %685 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.194, ptr noundef nonnull @.str.130, i32 noundef 4, ptr noundef %651, i8 noundef zeroext 20, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %686 = load ptr, ptr @hws, align 4
  %687 = getelementptr ptr, ptr %686, i32 154
  store ptr %685, ptr %687, align 4
  %688 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.195, ptr noundef nonnull @.str.130, i32 noundef 4, ptr noundef %651, i8 noundef zeroext 22, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %689 = load ptr, ptr @hws, align 4
  %690 = getelementptr ptr, ptr %689, i32 155
  store ptr %688, ptr %690, align 4
  %691 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.196, ptr noundef nonnull @.str.122, i32 noundef 4, ptr noundef %651, i8 noundef zeroext 26, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %692 = load ptr, ptr @hws, align 4
  %693 = getelementptr ptr, ptr %692, i32 156
  store ptr %691, ptr %693, align 4
  %694 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.197, ptr noundef nonnull @.str.121, i32 noundef 4, ptr noundef %651, i8 noundef zeroext 28, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %695 = load ptr, ptr @hws, align 4
  %696 = getelementptr ptr, ptr %695, i32 157
  store ptr %694, ptr %696, align 4
  %697 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.198, ptr noundef nonnull @.str.132, i32 noundef 4, ptr noundef %651, i8 noundef zeroext 30, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %698 = load ptr, ptr @hws, align 4
  %699 = getelementptr ptr, ptr %698, i32 158
  store ptr %697, ptr %699, align 4
  %700 = getelementptr i8, ptr %301, i32 112
  %701 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.199, ptr noundef nonnull @.str.156, i32 noundef 4, ptr noundef %700, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %702 = load ptr, ptr @hws, align 4
  %703 = getelementptr ptr, ptr %702, i32 159
  store ptr %701, ptr %703, align 4
  %704 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.200, ptr noundef nonnull @.str.130, i32 noundef 4, ptr noundef %700, i8 noundef zeroext 6, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %705 = load ptr, ptr @hws, align 4
  %706 = getelementptr ptr, ptr %705, i32 160
  store ptr %704, ptr %706, align 4
  %707 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.201, ptr noundef nonnull @.str.130, i32 noundef 4, ptr noundef %700, i8 noundef zeroext 8, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %708 = load ptr, ptr @hws, align 4
  %709 = getelementptr ptr, ptr %708, i32 161
  store ptr %707, ptr %709, align 4
  %710 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.202, ptr noundef nonnull @.str.130, i32 noundef 4, ptr noundef %700, i8 noundef zeroext 10, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %711 = load ptr, ptr @hws, align 4
  %712 = getelementptr ptr, ptr %711, i32 162
  store ptr %710, ptr %712, align 4
  %713 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.203, ptr noundef nonnull @.str.120, i32 noundef 4, ptr noundef %700, i8 noundef zeroext 12, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %714 = load ptr, ptr @hws, align 4
  %715 = getelementptr ptr, ptr %714, i32 163
  store ptr %713, ptr %715, align 4
  %716 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.204, ptr noundef nonnull @.str.124, i32 noundef 4, ptr noundef %700, i8 noundef zeroext 14, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %717 = load ptr, ptr @hws, align 4
  %718 = getelementptr ptr, ptr %717, i32 164
  store ptr %716, ptr %718, align 4
  %719 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.205, ptr noundef nonnull @.str.121, i32 noundef 2052, ptr noundef %700, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %720 = load ptr, ptr @hws, align 4
  %721 = getelementptr ptr, ptr %720, i32 165
  store ptr %719, ptr %721, align 4
  %722 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.206, ptr noundef nonnull @.str.121, i32 noundef 2052, ptr noundef %700, i8 noundef zeroext 18, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %723 = load ptr, ptr @hws, align 4
  %724 = getelementptr ptr, ptr %723, i32 166
  store ptr %722, ptr %724, align 4
  %725 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.207, ptr noundef nonnull @.str.121, i32 noundef 2052, ptr noundef %700, i8 noundef zeroext 20, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %726 = load ptr, ptr @hws, align 4
  %727 = getelementptr ptr, ptr %726, i32 167
  store ptr %725, ptr %727, align 4
  %728 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.208, ptr noundef nonnull @.str.166, i32 noundef 2052, ptr noundef %700, i8 noundef zeroext 22, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %729 = load ptr, ptr @hws, align 4
  %730 = getelementptr ptr, ptr %729, i32 168
  store ptr %728, ptr %730, align 4
  %731 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.209, ptr noundef nonnull @.str.155, i32 noundef 4, ptr noundef %700, i8 noundef zeroext 28, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %732 = load ptr, ptr @hws, align 4
  %733 = getelementptr ptr, ptr %732, i32 169
  store ptr %731, ptr %733, align 4
  %734 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.210, ptr noundef nonnull @.str.155, i32 noundef 4, ptr noundef %700, i8 noundef zeroext 30, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %735 = load ptr, ptr @hws, align 4
  %736 = getelementptr ptr, ptr %735, i32 170
  store ptr %734, ptr %736, align 4
  %737 = getelementptr i8, ptr %301, i32 116
  %738 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.211, ptr noundef nonnull @.str.153, i32 noundef 4, ptr noundef %737, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %739 = load ptr, ptr @hws, align 4
  %740 = getelementptr ptr, ptr %739, i32 171
  store ptr %738, ptr %740, align 4
  %741 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.212, ptr noundef nonnull @.str.120, i32 noundef 4, ptr noundef %737, i8 noundef zeroext 4, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %742 = load ptr, ptr @hws, align 4
  %743 = getelementptr ptr, ptr %742, i32 172
  store ptr %741, ptr %743, align 4
  %744 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.213, ptr noundef nonnull @.str.101, i32 noundef 4, ptr noundef %737, i8 noundef zeroext 4, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %745 = load ptr, ptr @hws, align 4
  %746 = getelementptr ptr, ptr %745, i32 225
  store ptr %744, ptr %746, align 4
  %747 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.214, ptr noundef nonnull @.str.155, i32 noundef 4, ptr noundef %737, i8 noundef zeroext 6, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %748 = load ptr, ptr @hws, align 4
  %749 = getelementptr ptr, ptr %748, i32 173
  store ptr %747, ptr %749, align 4
  %750 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.215, ptr noundef nonnull @.str.106, i32 noundef 4, ptr noundef %737, i8 noundef zeroext 8, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %751 = load ptr, ptr @hws, align 4
  %752 = getelementptr ptr, ptr %751, i32 174
  store ptr %750, ptr %752, align 4
  %753 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.216, ptr noundef nonnull @.str.117, i32 noundef 4, ptr noundef %737, i8 noundef zeroext 10, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %754 = load ptr, ptr @hws, align 4
  %755 = getelementptr ptr, ptr %754, i32 175
  store ptr %753, ptr %755, align 4
  %756 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.217, ptr noundef nonnull @.str.113, i32 noundef 4, ptr noundef %737, i8 noundef zeroext 12, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %757 = load ptr, ptr @hws, align 4
  %758 = getelementptr ptr, ptr %757, i32 176
  store ptr %756, ptr %758, align 4
  %759 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.218, ptr noundef nonnull @.str.126, i32 noundef 4, ptr noundef %737, i8 noundef zeroext 14, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %760 = load ptr, ptr @hws, align 4
  %761 = getelementptr ptr, ptr %760, i32 177
  store ptr %759, ptr %761, align 4
  %762 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.219, ptr noundef nonnull @.str.121, i32 noundef 4, ptr noundef %737, i8 noundef zeroext 18, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %763 = load ptr, ptr @hws, align 4
  %764 = getelementptr ptr, ptr %763, i32 178
  store ptr %762, ptr %764, align 4
  %765 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.220, ptr noundef nonnull @.str.166, i32 noundef 2052, ptr noundef %737, i8 noundef zeroext 20, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %766 = load ptr, ptr @hws, align 4
  %767 = getelementptr ptr, ptr %766, i32 179
  store ptr %765, ptr %767, align 4
  %768 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.221, ptr noundef nonnull @.str.120, i32 noundef 2052, ptr noundef %737, i8 noundef zeroext 24, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %769 = load ptr, ptr @hws, align 4
  %770 = getelementptr ptr, ptr %769, i32 180
  store ptr %768, ptr %770, align 4
  %771 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.222, ptr noundef nonnull @.str.120, i32 noundef 2052, ptr noundef %737, i8 noundef zeroext 26, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %772 = load ptr, ptr @hws, align 4
  %773 = getelementptr ptr, ptr %772, i32 269
  store ptr %771, ptr %773, align 4
  %774 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.223, ptr noundef nonnull @.str.165, i32 noundef 2052, ptr noundef %737, i8 noundef zeroext 28, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %775 = load ptr, ptr @hws, align 4
  %776 = getelementptr ptr, ptr %775, i32 126
  store ptr %774, ptr %776, align 4
  %777 = getelementptr i8, ptr %301, i32 120
  %778 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.224, ptr noundef nonnull @.str.155, i32 noundef 4, ptr noundef %777, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %779 = load ptr, ptr @hws, align 4
  %780 = getelementptr ptr, ptr %779, i32 182
  store ptr %778, ptr %780, align 4
  %781 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.225, ptr noundef nonnull @.str.145, i32 noundef 4, ptr noundef %777, i8 noundef zeroext 10, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %782 = load ptr, ptr @hws, align 4
  %783 = getelementptr ptr, ptr %782, i32 183
  store ptr %781, ptr %783, align 4
  %784 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.226, ptr noundef nonnull @.str.170, i32 noundef 4, ptr noundef %777, i8 noundef zeroext 12, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %785 = load ptr, ptr @hws, align 4
  %786 = getelementptr ptr, ptr %785, i32 184
  store ptr %784, ptr %786, align 4
  %787 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.227, ptr noundef nonnull @.str.121, i32 noundef 2052, ptr noundef %777, i8 noundef zeroext 14, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %788 = load ptr, ptr @hws, align 4
  %789 = getelementptr ptr, ptr %788, i32 185
  store ptr %787, ptr %789, align 4
  %790 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.228, ptr noundef nonnull @.str.130, i32 noundef 4, ptr noundef %777, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %791 = load ptr, ptr @hws, align 4
  %792 = getelementptr ptr, ptr %791, i32 186
  store ptr %790, ptr %792, align 4
  %793 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.229, ptr noundef nonnull @.str.130, i32 noundef 4, ptr noundef %777, i8 noundef zeroext 18, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %794 = load ptr, ptr @hws, align 4
  %795 = getelementptr ptr, ptr %794, i32 187
  store ptr %793, ptr %795, align 4
  %796 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.230, ptr noundef nonnull @.str.130, i32 noundef 4, ptr noundef %777, i8 noundef zeroext 20, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %797 = load ptr, ptr @hws, align 4
  %798 = getelementptr ptr, ptr %797, i32 188
  store ptr %796, ptr %798, align 4
  %799 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.231, ptr noundef nonnull @.str.130, i32 noundef 4, ptr noundef %777, i8 noundef zeroext 22, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %800 = load ptr, ptr @hws, align 4
  %801 = getelementptr ptr, ptr %800, i32 189
  store ptr %799, ptr %801, align 4
  %802 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.232, ptr noundef nonnull @.str.170, i32 noundef 4, ptr noundef %777, i8 noundef zeroext 24, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %803 = load ptr, ptr @hws, align 4
  %804 = getelementptr ptr, ptr %803, i32 190
  store ptr %802, ptr %804, align 4
  %805 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.233, ptr noundef nonnull @.str.234, i32 noundef 4, ptr noundef %777, i8 noundef zeroext 26, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %806 = load ptr, ptr @hws, align 4
  %807 = getelementptr ptr, ptr %806, i32 191
  store ptr %805, ptr %807, align 4
  %808 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.235, ptr noundef nonnull @.str.145, i32 noundef 4, ptr noundef %777, i8 noundef zeroext 28, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %809 = load ptr, ptr @hws, align 4
  %810 = getelementptr ptr, ptr %809, i32 192
  store ptr %808, ptr %810, align 4
  %811 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.236, ptr noundef nonnull @.str.170, i32 noundef 4, ptr noundef %777, i8 noundef zeroext 30, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %812 = load ptr, ptr @hws, align 4
  %813 = getelementptr ptr, ptr %812, i32 193
  store ptr %811, ptr %813, align 4
  %814 = getelementptr i8, ptr %301, i32 124
  %815 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.237, ptr noundef nonnull @.str.121, i32 noundef 2052, ptr noundef %814, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %816 = load ptr, ptr @hws, align 4
  %817 = getelementptr ptr, ptr %816, i32 194
  store ptr %815, ptr %817, align 4
  %818 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.238, ptr noundef nonnull @.str.121, i32 noundef 4, ptr noundef %814, i8 noundef zeroext 6, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %819 = load ptr, ptr @hws, align 4
  %820 = getelementptr ptr, ptr %819, i32 195
  store ptr %818, ptr %820, align 4
  %821 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.239, ptr noundef nonnull @.str.120, i32 noundef 4, ptr noundef %814, i8 noundef zeroext 12, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %822 = load ptr, ptr @hws, align 4
  %823 = getelementptr ptr, ptr %822, i32 196
  store ptr %821, ptr %823, align 4
  %824 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.240, ptr noundef nonnull @.str.151, i32 noundef 4, ptr noundef %814, i8 noundef zeroext 14, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_audio) #5
  %825 = load ptr, ptr @hws, align 4
  %826 = getelementptr ptr, ptr %825, i32 232
  store ptr %824, ptr %826, align 4
  %827 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.241, ptr noundef nonnull @.str.149, i32 noundef 4, ptr noundef %814, i8 noundef zeroext 14, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_audio) #5
  %828 = load ptr, ptr @hws, align 4
  %829 = getelementptr ptr, ptr %828, i32 197
  store ptr %827, ptr %829, align 4
  %830 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.242, ptr noundef nonnull @.str.120, i32 noundef 4, ptr noundef %814, i8 noundef zeroext 14, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_audio) #5
  %831 = load ptr, ptr @hws, align 4
  %832 = getelementptr ptr, ptr %831, i32 264
  store ptr %830, ptr %832, align 4
  %833 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.243, ptr noundef nonnull @.str.120, i32 noundef 4, ptr noundef %814, i8 noundef zeroext 18, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_ssi1) #5
  %834 = load ptr, ptr @hws, align 4
  %835 = getelementptr ptr, ptr %834, i32 198
  store ptr %833, ptr %835, align 4
  %836 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.244, ptr noundef nonnull @.str.120, i32 noundef 4, ptr noundef %814, i8 noundef zeroext 20, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_ssi2) #5
  %837 = load ptr, ptr @hws, align 4
  %838 = getelementptr ptr, ptr %837, i32 199
  store ptr %836, ptr %838, align 4
  %839 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.245, ptr noundef nonnull @.str.120, i32 noundef 4, ptr noundef %814, i8 noundef zeroext 22, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_ssi3) #5
  %840 = load ptr, ptr @hws, align 4
  %841 = getelementptr ptr, ptr %840, i32 200
  store ptr %839, ptr %841, align 4
  %842 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.246, ptr noundef nonnull @.str.143, i32 noundef 4, ptr noundef %814, i8 noundef zeroext 18, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_ssi1) #5
  %843 = load ptr, ptr @hws, align 4
  %844 = getelementptr ptr, ptr %843, i32 201
  store ptr %842, ptr %844, align 4
  %845 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.247, ptr noundef nonnull @.str.147, i32 noundef 4, ptr noundef %814, i8 noundef zeroext 20, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_ssi2) #5
  %846 = load ptr, ptr @hws, align 4
  %847 = getelementptr ptr, ptr %846, i32 202
  store ptr %845, ptr %847, align 4
  %848 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.248, ptr noundef nonnull @.str.141, i32 noundef 4, ptr noundef %814, i8 noundef zeroext 22, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_ssi3) #5
  %849 = load ptr, ptr @hws, align 4
  %850 = getelementptr ptr, ptr %849, i32 203
  store ptr %848, ptr %850, align 4
  %851 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.249, ptr noundef nonnull @.str.120, i32 noundef 4, ptr noundef %814, i8 noundef zeroext 24, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %852 = load ptr, ptr @hws, align 4
  %853 = getelementptr ptr, ptr %852, i32 204
  store ptr %851, ptr %853, align 4
  %854 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.250, ptr noundef nonnull @.str.137, i32 noundef 4, ptr noundef %814, i8 noundef zeroext 26, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %855 = load ptr, ptr @hws, align 4
  %856 = getelementptr ptr, ptr %855, i32 205
  store ptr %854, ptr %856, align 4
  %857 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.251, ptr noundef nonnull @.str.120, i32 noundef 4, ptr noundef %814, i8 noundef zeroext 28, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_sai1) #5
  %858 = load ptr, ptr @hws, align 4
  %859 = getelementptr ptr, ptr %858, i32 237
  store ptr %857, ptr %859, align 4
  %860 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.252, ptr noundef nonnull @.str.120, i32 noundef 4, ptr noundef %814, i8 noundef zeroext 30, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_sai2) #5
  %861 = load ptr, ptr @hws, align 4
  %862 = getelementptr ptr, ptr %861, i32 238
  store ptr %860, ptr %862, align 4
  %863 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.253, ptr noundef nonnull @.str.143, i32 noundef 4, ptr noundef %814, i8 noundef zeroext 28, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_sai1) #5
  %864 = load ptr, ptr @hws, align 4
  %865 = getelementptr ptr, ptr %864, i32 206
  store ptr %863, ptr %865, align 4
  %866 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.254, ptr noundef nonnull @.str.147, i32 noundef 4, ptr noundef %814, i8 noundef zeroext 30, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_sai2) #5
  %867 = load ptr, ptr @hws, align 4
  %868 = getelementptr ptr, ptr %867, i32 207
  store ptr %866, ptr %868, align 4
  %869 = getelementptr i8, ptr %301, i32 128
  %870 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.255, ptr noundef nonnull @.str.120, i32 noundef 4, ptr noundef %869, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %871 = load ptr, ptr @hws, align 4
  %872 = getelementptr ptr, ptr %871, i32 208
  store ptr %870, ptr %872, align 4
  %873 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.256, ptr noundef nonnull @.str.136, i32 noundef 4, ptr noundef %869, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %874 = load ptr, ptr @hws, align 4
  %875 = getelementptr ptr, ptr %874, i32 209
  store ptr %873, ptr %875, align 4
  %876 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.257, ptr noundef nonnull @.str.135, i32 noundef 4, ptr noundef %869, i8 noundef zeroext 4, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %877 = load ptr, ptr @hws, align 4
  %878 = getelementptr ptr, ptr %877, i32 210
  store ptr %876, ptr %878, align 4
  %879 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.170, ptr noundef nonnull @.str.134, i32 noundef 4, ptr noundef %869, i8 noundef zeroext 6, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %880 = load ptr, ptr @hws, align 4
  %881 = getelementptr ptr, ptr %880, i32 211
  store ptr %879, ptr %881, align 4
  %882 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.234, ptr noundef nonnull @.str.133, i32 noundef 4, ptr noundef %869, i8 noundef zeroext 8, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %883 = load ptr, ptr @hws, align 4
  %884 = getelementptr ptr, ptr %883, i32 212
  store ptr %882, ptr %884, align 4
  %885 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.258, ptr noundef nonnull @.str.127, i32 noundef 4, ptr noundef %869, i8 noundef zeroext 10, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %886 = load ptr, ptr @hws, align 4
  %887 = getelementptr ptr, ptr %886, i32 213
  store ptr %885, ptr %887, align 4
  %888 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.259, ptr noundef nonnull @.str.130, i32 noundef 4, ptr noundef %869, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %889 = load ptr, ptr @hws, align 4
  %890 = getelementptr ptr, ptr %889, i32 214
  store ptr %888, ptr %890, align 4
  %891 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.260, ptr noundef nonnull @.str.131, i32 noundef 4, ptr noundef %869, i8 noundef zeroext 20, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %892 = load ptr, ptr @hws, align 4
  %893 = getelementptr ptr, ptr %892, i32 215
  store ptr %891, ptr %893, align 4
  %894 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.261, ptr noundef nonnull @.str.155, i32 noundef 4, ptr noundef %869, i8 noundef zeroext 22, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %895 = load ptr, ptr @hws, align 4
  %896 = getelementptr ptr, ptr %895, i32 216
  store ptr %894, ptr %896, align 4
  %897 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.262, ptr noundef nonnull @.str.130, i32 noundef 4, ptr noundef %869, i8 noundef zeroext 24, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %898 = load ptr, ptr @hws, align 4
  %899 = getelementptr ptr, ptr %898, i32 217
  store ptr %897, ptr %899, align 4
  %900 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.263, ptr noundef nonnull @.str.130, i32 noundef 4, ptr noundef %869, i8 noundef zeroext 26, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %901 = load ptr, ptr @hws, align 4
  %902 = getelementptr ptr, ptr %901, i32 218
  store ptr %900, ptr %902, align 4
  %903 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.264, ptr noundef nonnull @.str.130, i32 noundef 4, ptr noundef %869, i8 noundef zeroext 28, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %904 = load ptr, ptr @hws, align 4
  %905 = getelementptr ptr, ptr %904, i32 219
  store ptr %903, ptr %905, align 4
  %906 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.265, ptr noundef nonnull @.str.130, i32 noundef 4, ptr noundef %869, i8 noundef zeroext 30, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %907 = load ptr, ptr @hws, align 4
  %908 = getelementptr ptr, ptr %907, i32 220
  store ptr %906, ptr %908, align 4
  %909 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.266, ptr noundef nonnull @.str.157, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %424, i8 noundef zeroext 7, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #5
  %910 = load ptr, ptr @hws, align 4
  %911 = getelementptr ptr, ptr %910, i32 221
  store ptr %909, ptr %911, align 4
  %912 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.267, ptr noundef nonnull @.str.158, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %424, i8 noundef zeroext 24, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #5
  %913 = load ptr, ptr @hws, align 4
  %914 = getelementptr ptr, ptr %913, i32 222
  store ptr %912, ptr %914, align 4
  tail call void @imx_mmdc_mask_handshake(ptr noundef %301, i32 noundef 0) #5
  %915 = load ptr, ptr @hws, align 4
  tail call void @imx_check_clk_hws(ptr noundef %915, i32 noundef 270) #5
  %916 = load ptr, ptr @clk_hw_data, align 4
  %917 = tail call i32 @of_clk_add_hw_provider(ptr noundef %0, ptr noundef nonnull @of_clk_hw_onecell_get, ptr noundef %916) #5
  %918 = load ptr, ptr @hws, align 4
  %919 = getelementptr ptr, ptr %918, i32 13
  %920 = load ptr, ptr %919, align 4
  %921 = getelementptr inbounds %struct.clk_hw, ptr %920, i32 0, i32 1
  %922 = load ptr, ptr %921, align 4
  %923 = tail call i32 @clk_prepare(ptr noundef %922) #5
  %924 = icmp eq i32 %923, 0
  br i1 %924, label %925, label %929

925:                                              ; preds = %304
  %926 = tail call i32 @clk_enable(ptr noundef %922) #5
  %927 = icmp eq i32 %926, 0
  br i1 %927, label %929, label %928

928:                                              ; preds = %925
  tail call void @clk_unprepare(ptr noundef %922) #5
  br label %929

929:                                              ; preds = %928, %925, %304
  %930 = load ptr, ptr @hws, align 4
  %931 = getelementptr ptr, ptr %930, i32 14
  %932 = load ptr, ptr %931, align 4
  %933 = getelementptr inbounds %struct.clk_hw, ptr %932, i32 0, i32 1
  %934 = load ptr, ptr %933, align 4
  %935 = tail call i32 @clk_prepare(ptr noundef %934) #5
  %936 = icmp eq i32 %935, 0
  br i1 %936, label %937, label %941

937:                                              ; preds = %929
  %938 = tail call i32 @clk_enable(ptr noundef %934) #5
  %939 = icmp eq i32 %938, 0
  br i1 %939, label %941, label %940

940:                                              ; preds = %937
  tail call void @clk_unprepare(ptr noundef %934) #5
  br label %941

941:                                              ; preds = %940, %937, %929
  %942 = load ptr, ptr @hws, align 4
  %943 = getelementptr ptr, ptr %942, i32 45
  %944 = load ptr, ptr %943, align 4
  %945 = getelementptr inbounds %struct.clk_hw, ptr %944, i32 0, i32 1
  %946 = load ptr, ptr %945, align 4
  %947 = getelementptr ptr, ptr %942, i32 20
  %948 = load ptr, ptr %947, align 4
  %949 = getelementptr inbounds %struct.clk_hw, ptr %948, i32 0, i32 1
  %950 = load ptr, ptr %949, align 4
  %951 = tail call i32 @clk_set_parent(ptr noundef %946, ptr noundef %950) #5
  %952 = load ptr, ptr @hws, align 4
  %953 = getelementptr ptr, ptr %952, i32 213
  %954 = load ptr, ptr %953, align 4
  %955 = getelementptr inbounds %struct.clk_hw, ptr %954, i32 0, i32 1
  %956 = load ptr, ptr %955, align 4
  %957 = tail call i32 @clk_set_rate(ptr noundef %956, i32 noundef 132000000) #5
  %958 = load ptr, ptr @hws, align 4
  %959 = getelementptr ptr, ptr %958, i32 71
  %960 = load ptr, ptr %959, align 4
  %961 = getelementptr inbounds %struct.clk_hw, ptr %960, i32 0, i32 1
  %962 = load ptr, ptr %961, align 4
  %963 = getelementptr ptr, ptr %958, i32 34
  %964 = load ptr, ptr %963, align 4
  %965 = getelementptr inbounds %struct.clk_hw, ptr %964, i32 0, i32 1
  %966 = load ptr, ptr %965, align 4
  %967 = tail call i32 @clk_set_parent(ptr noundef %962, ptr noundef %966) #5
  %968 = load ptr, ptr @hws, align 4
  %969 = getelementptr ptr, ptr %968, i32 73
  %970 = load ptr, ptr %969, align 4
  %971 = getelementptr inbounds %struct.clk_hw, ptr %970, i32 0, i32 1
  %972 = load ptr, ptr %971, align 4
  %973 = getelementptr ptr, ptr %968, i32 85
  %974 = load ptr, ptr %973, align 4
  %975 = getelementptr inbounds %struct.clk_hw, ptr %974, i32 0, i32 1
  %976 = load ptr, ptr %975, align 4
  %977 = tail call i32 @clk_set_parent(ptr noundef %972, ptr noundef %976) #5
  %978 = load ptr, ptr @hws, align 4
  %979 = getelementptr ptr, ptr %978, i32 233
  %980 = load ptr, ptr %979, align 4
  %981 = getelementptr inbounds %struct.clk_hw, ptr %980, i32 0, i32 1
  %982 = load ptr, ptr %981, align 4
  %983 = getelementptr ptr, ptr %978, i32 16
  %984 = load ptr, ptr %983, align 4
  %985 = getelementptr inbounds %struct.clk_hw, ptr %984, i32 0, i32 1
  %986 = load ptr, ptr %985, align 4
  %987 = tail call i32 @clk_set_parent(ptr noundef %982, ptr noundef %986) #5
  %988 = icmp eq i32 %987, 0
  br i1 %988, label %991, label %989

989:                                              ; preds = %941
  %990 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.268) #6
  br label %991

991:                                              ; preds = %989, %941
  %992 = load ptr, ptr @hws, align 4
  %993 = getelementptr ptr, ptr %992, i32 66
  %994 = load ptr, ptr %993, align 4
  %995 = getelementptr inbounds %struct.clk_hw, ptr %994, i32 0, i32 1
  %996 = load ptr, ptr %995, align 4
  %997 = getelementptr ptr, ptr %992, i32 20
  %998 = load ptr, ptr %997, align 4
  %999 = getelementptr inbounds %struct.clk_hw, ptr %998, i32 0, i32 1
  %1000 = load ptr, ptr %999, align 4
  %1001 = tail call i32 @clk_set_parent(ptr noundef %996, ptr noundef %1000) #5
  %1002 = load ptr, ptr @hws, align 4
  %1003 = getelementptr ptr, ptr %1002, i32 67
  %1004 = load ptr, ptr %1003, align 4
  %1005 = getelementptr inbounds %struct.clk_hw, ptr %1004, i32 0, i32 1
  %1006 = load ptr, ptr %1005, align 4
  %1007 = getelementptr ptr, ptr %1002, i32 111
  %1008 = load ptr, ptr %1007, align 4
  %1009 = getelementptr inbounds %struct.clk_hw, ptr %1008, i32 0, i32 1
  %1010 = load ptr, ptr %1009, align 4
  %1011 = tail call i32 @clk_set_parent(ptr noundef %1006, ptr noundef %1010) #5
  %1012 = load ptr, ptr @hws, align 4
  %1013 = getelementptr ptr, ptr %1012, i32 111
  %1014 = load ptr, ptr %1013, align 4
  %1015 = getelementptr inbounds %struct.clk_hw, ptr %1014, i32 0, i32 1
  %1016 = load ptr, ptr %1015, align 4
  %1017 = tail call i32 @clk_set_rate(ptr noundef %1016, i32 noundef 200000000) #5
  %1018 = load ptr, ptr @hws, align 4
  %1019 = getelementptr ptr, ptr %1018, i32 17
  %1020 = load ptr, ptr %1019, align 4
  %1021 = getelementptr inbounds %struct.clk_hw, ptr %1020, i32 0, i32 1
  %1022 = load ptr, ptr %1021, align 4
  %1023 = tail call i32 @clk_set_rate(ptr noundef %1022, i32 noundef 125000000) #5
  %1024 = load ptr, ptr @hws, align 4
  %1025 = getelementptr ptr, ptr %1024, i32 230
  %1026 = load ptr, ptr %1025, align 4
  %1027 = getelementptr inbounds %struct.clk_hw, ptr %1026, i32 0, i32 1
  %1028 = load ptr, ptr %1027, align 4
  %1029 = tail call i32 @clk_set_rate(ptr noundef %1028, i32 noundef 125000000) #5
  %1030 = load ptr, ptr @hws, align 4
  %1031 = getelementptr ptr, ptr %1030, i32 32
  %1032 = load ptr, ptr %1031, align 4
  %1033 = getelementptr inbounds %struct.clk_hw, ptr %1032, i32 0, i32 1
  %1034 = load ptr, ptr %1033, align 4
  %1035 = tail call i32 @clk_set_rate(ptr noundef %1034, i32 noundef 393216000) #5
  %1036 = load ptr, ptr @hws, align 4
  %1037 = getelementptr ptr, ptr %1036, i32 64
  %1038 = load ptr, ptr %1037, align 4
  %1039 = getelementptr inbounds %struct.clk_hw, ptr %1038, i32 0, i32 1
  %1040 = load ptr, ptr %1039, align 4
  %1041 = getelementptr ptr, ptr %1036, i32 32
  %1042 = load ptr, ptr %1041, align 4
  %1043 = getelementptr inbounds %struct.clk_hw, ptr %1042, i32 0, i32 1
  %1044 = load ptr, ptr %1043, align 4
  %1045 = tail call i32 @clk_set_parent(ptr noundef %1040, ptr noundef %1044) #5
  %1046 = load ptr, ptr @hws, align 4
  %1047 = getelementptr ptr, ptr %1046, i32 108
  %1048 = load ptr, ptr %1047, align 4
  %1049 = getelementptr inbounds %struct.clk_hw, ptr %1048, i32 0, i32 1
  %1050 = load ptr, ptr %1049, align 4
  %1051 = tail call i32 @clk_set_rate(ptr noundef %1050, i32 noundef 98304000) #5
  %1052 = load ptr, ptr @hws, align 4
  %1053 = getelementptr ptr, ptr %1052, i32 65
  %1054 = load ptr, ptr %1053, align 4
  %1055 = getelementptr inbounds %struct.clk_hw, ptr %1054, i32 0, i32 1
  %1056 = load ptr, ptr %1055, align 4
  %1057 = getelementptr ptr, ptr %1052, i32 6
  %1058 = load ptr, ptr %1057, align 4
  %1059 = getelementptr inbounds %struct.clk_hw, ptr %1058, i32 0, i32 1
  %1060 = load ptr, ptr %1059, align 4
  %1061 = tail call i32 @clk_set_parent(ptr noundef %1056, ptr noundef %1060) #5
  %1062 = load ptr, ptr @hws, align 4
  %1063 = getelementptr ptr, ptr %1062, i32 110
  %1064 = load ptr, ptr %1063, align 4
  %1065 = getelementptr inbounds %struct.clk_hw, ptr %1064, i32 0, i32 1
  %1066 = load ptr, ptr %1065, align 4
  %1067 = tail call i32 @clk_set_rate(ptr noundef %1066, i32 noundef 24000000) #5
  %1068 = load ptr, ptr @hws, align 4
  %1069 = getelementptr ptr, ptr %1068, i32 50
  %1070 = load ptr, ptr %1069, align 4
  %1071 = getelementptr inbounds %struct.clk_hw, ptr %1070, i32 0, i32 1
  %1072 = load ptr, ptr %1071, align 4
  %1073 = getelementptr ptr, ptr %1068, i32 32
  %1074 = load ptr, ptr %1073, align 4
  %1075 = getelementptr inbounds %struct.clk_hw, ptr %1074, i32 0, i32 1
  %1076 = load ptr, ptr %1075, align 4
  %1077 = tail call i32 @clk_set_parent(ptr noundef %1072, ptr noundef %1076) #5
  %1078 = load ptr, ptr @hws, align 4
  %1079 = getelementptr ptr, ptr %1078, i32 51
  %1080 = load ptr, ptr %1079, align 4
  %1081 = getelementptr inbounds %struct.clk_hw, ptr %1080, i32 0, i32 1
  %1082 = load ptr, ptr %1081, align 4
  %1083 = getelementptr ptr, ptr %1078, i32 32
  %1084 = load ptr, ptr %1083, align 4
  %1085 = getelementptr inbounds %struct.clk_hw, ptr %1084, i32 0, i32 1
  %1086 = load ptr, ptr %1085, align 4
  %1087 = tail call i32 @clk_set_parent(ptr noundef %1082, ptr noundef %1086) #5
  %1088 = load ptr, ptr @hws, align 4
  %1089 = getelementptr ptr, ptr %1088, i32 52
  %1090 = load ptr, ptr %1089, align 4
  %1091 = getelementptr inbounds %struct.clk_hw, ptr %1090, i32 0, i32 1
  %1092 = load ptr, ptr %1091, align 4
  %1093 = getelementptr ptr, ptr %1088, i32 32
  %1094 = load ptr, ptr %1093, align 4
  %1095 = getelementptr inbounds %struct.clk_hw, ptr %1094, i32 0, i32 1
  %1096 = load ptr, ptr %1095, align 4
  %1097 = tail call i32 @clk_set_parent(ptr noundef %1092, ptr noundef %1096) #5
  %1098 = load ptr, ptr @hws, align 4
  %1099 = getelementptr ptr, ptr %1098, i32 102
  %1100 = load ptr, ptr %1099, align 4
  %1101 = getelementptr inbounds %struct.clk_hw, ptr %1100, i32 0, i32 1
  %1102 = load ptr, ptr %1101, align 4
  %1103 = tail call i32 @clk_set_rate(ptr noundef %1102, i32 noundef 24576000) #5
  %1104 = load ptr, ptr @hws, align 4
  %1105 = getelementptr ptr, ptr %1104, i32 106
  %1106 = load ptr, ptr %1105, align 4
  %1107 = getelementptr inbounds %struct.clk_hw, ptr %1106, i32 0, i32 1
  %1108 = load ptr, ptr %1107, align 4
  %1109 = tail call i32 @clk_set_rate(ptr noundef %1108, i32 noundef 24576000) #5
  %1110 = load ptr, ptr @hws, align 4
  %1111 = getelementptr ptr, ptr %1110, i32 100
  %1112 = load ptr, ptr %1111, align 4
  %1113 = getelementptr inbounds %struct.clk_hw, ptr %1112, i32 0, i32 1
  %1114 = load ptr, ptr %1113, align 4
  %1115 = tail call i32 @clk_set_rate(ptr noundef %1114, i32 noundef 24576000) #5
  %1116 = load ptr, ptr @hws, align 4
  %1117 = getelementptr ptr, ptr %1116, i32 56
  %1118 = load ptr, ptr %1117, align 4
  %1119 = getelementptr inbounds %struct.clk_hw, ptr %1118, i32 0, i32 1
  %1120 = load ptr, ptr %1119, align 4
  %1121 = getelementptr ptr, ptr %1116, i32 32
  %1122 = load ptr, ptr %1121, align 4
  %1123 = getelementptr inbounds %struct.clk_hw, ptr %1122, i32 0, i32 1
  %1124 = load ptr, ptr %1123, align 4
  %1125 = tail call i32 @clk_set_parent(ptr noundef %1120, ptr noundef %1124) #5
  %1126 = load ptr, ptr @hws, align 4
  %1127 = getelementptr ptr, ptr %1126, i32 98
  %1128 = load ptr, ptr %1127, align 4
  %1129 = getelementptr inbounds %struct.clk_hw, ptr %1128, i32 0, i32 1
  %1130 = load ptr, ptr %1129, align 4
  %1131 = tail call i32 @clk_set_rate(ptr noundef %1130, i32 noundef 24576000) #5
  %1132 = load ptr, ptr @hws, align 4
  %1133 = getelementptr ptr, ptr %1132, i32 55
  %1134 = load ptr, ptr %1133, align 4
  %1135 = getelementptr inbounds %struct.clk_hw, ptr %1134, i32 0, i32 1
  %1136 = load ptr, ptr %1135, align 4
  %1137 = getelementptr ptr, ptr %1132, i32 6
  %1138 = load ptr, ptr %1137, align 4
  %1139 = getelementptr inbounds %struct.clk_hw, ptr %1138, i32 0, i32 1
  %1140 = load ptr, ptr %1139, align 4
  %1141 = tail call i32 @clk_set_parent(ptr noundef %1136, ptr noundef %1140) #5
  %1142 = load ptr, ptr @hws, align 4
  %1143 = getelementptr ptr, ptr %1142, i32 59
  %1144 = load ptr, ptr %1143, align 4
  %1145 = getelementptr inbounds %struct.clk_hw, ptr %1144, i32 0, i32 1
  %1146 = load ptr, ptr %1145, align 4
  %1147 = getelementptr ptr, ptr %1142, i32 29
  %1148 = load ptr, ptr %1147, align 4
  %1149 = getelementptr inbounds %struct.clk_hw, ptr %1148, i32 0, i32 1
  %1150 = load ptr, ptr %1149, align 4
  %1151 = tail call i32 @clk_set_parent(ptr noundef %1146, ptr noundef %1150) #5
  %1152 = load ptr, ptr @hws, align 4
  %1153 = getelementptr ptr, ptr %1152, i32 44
  %1154 = load ptr, ptr %1153, align 4
  %1155 = getelementptr inbounds %struct.clk_hw, ptr %1154, i32 0, i32 1
  %1156 = load ptr, ptr %1155, align 4
  %1157 = getelementptr ptr, ptr %1152, i32 22
  %1158 = load ptr, ptr %1157, align 4
  %1159 = getelementptr inbounds %struct.clk_hw, ptr %1158, i32 0, i32 1
  %1160 = load ptr, ptr %1159, align 4
  %1161 = tail call i32 @clk_set_parent(ptr noundef %1156, ptr noundef %1160) #5
  %1162 = load ptr, ptr @hws, align 4
  %1163 = getelementptr ptr, ptr %1162, i32 43
  %1164 = load ptr, ptr %1163, align 4
  %1165 = getelementptr inbounds %struct.clk_hw, ptr %1164, i32 0, i32 1
  %1166 = load ptr, ptr %1165, align 4
  %1167 = getelementptr ptr, ptr %1162, i32 22
  %1168 = load ptr, ptr %1167, align 4
  %1169 = getelementptr inbounds %struct.clk_hw, ptr %1168, i32 0, i32 1
  %1170 = load ptr, ptr %1169, align 4
  %1171 = tail call i32 @clk_set_parent(ptr noundef %1166, ptr noundef %1170) #5
  %1172 = load ptr, ptr @hws, align 4
  %1173 = getelementptr ptr, ptr %1172, i32 53
  %1174 = load ptr, ptr %1173, align 4
  %1175 = getelementptr inbounds %struct.clk_hw, ptr %1174, i32 0, i32 1
  %1176 = load ptr, ptr %1175, align 4
  %1177 = getelementptr ptr, ptr %1172, i32 5
  %1178 = load ptr, ptr %1177, align 4
  %1179 = getelementptr inbounds %struct.clk_hw, ptr %1178, i32 0, i32 1
  %1180 = load ptr, ptr %1179, align 4
  %1181 = tail call i32 @clk_set_parent(ptr noundef %1176, ptr noundef %1180) #5
  %1182 = load ptr, ptr @hws, align 4
  %1183 = getelementptr ptr, ptr %1182, i32 61
  %1184 = load ptr, ptr %1183, align 4
  %1185 = getelementptr inbounds %struct.clk_hw, ptr %1184, i32 0, i32 1
  %1186 = load ptr, ptr %1185, align 4
  %1187 = getelementptr ptr, ptr %1182, i32 5
  %1188 = load ptr, ptr %1187, align 4
  %1189 = getelementptr inbounds %struct.clk_hw, ptr %1188, i32 0, i32 1
  %1190 = load ptr, ptr %1189, align 4
  %1191 = tail call i32 @clk_set_parent(ptr noundef %1186, ptr noundef %1190) #5
  tail call void @imx_register_uart_clocks(i32 noundef 2) #5
  br label %1192

1192:                                             ; preds = %991, %5
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
declare dso_local i32 @clk_set_parent(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @imx_clk_hw_gate_exclusive(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_hw_register_divider(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @imx_clk_hw_pfd(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @imx_clk_hw_busy_mux(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @imx_clk_hw_busy_divider(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @imx_mmdc_mask_handshake(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @imx_check_clk_hws(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_hw_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_hw_onecell_get(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @imx_register_uart_clocks(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind allocsize(2) }
attributes #5 = { nounwind }
attributes #6 = { cold nounwind }

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
