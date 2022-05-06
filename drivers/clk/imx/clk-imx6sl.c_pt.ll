; ModuleID = '/llk/IR/drivers/clk/imx/clk-imx6sl.c_pt.bc'
source_filename = "../drivers/clk/imx/clk-imx6sl.c"
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

@imx6sl_set_wait_clk.saved_arm_div = internal unnamed_addr global i32 0, align 4
@ccm_base = internal unnamed_addr global ptr null, align 4
@__of_table_imx6sl = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx6sl-ccm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx6sl_clocks_init }, section "__clk_of_table", align 4
@anatop_base = internal unnamed_addr global ptr null, align 4
@imx6sl_enable_pll_arm.saved_pll_arm = internal unnamed_addr global i32 0, align 4
@clk_hw_data = internal unnamed_addr global ptr null, align 4
@.str = private unnamed_addr constant [29 x i8] c"drivers/clk/imx/clk-imx6sl.c\00", align 1
@hws = internal unnamed_addr global ptr null, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"dummy\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"ckil\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"osc\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"anaclk1\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"fsl,imx6sl-anatop\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"pll1_bypass_src\00", align 1
@pll_bypass_src_sels = internal global [2 x ptr] [ptr @.str.3, ptr @.str.36], align 4
@.str.7 = private unnamed_addr constant [16 x i8] c"pll2_bypass_src\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"pll3_bypass_src\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"pll4_bypass_src\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"pll5_bypass_src\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"pll6_bypass_src\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"pll7_bypass_src\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"pll1\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"pll2\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"pll3\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"pll4\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"pll5\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"pll6\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"pll7\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"pll1_bypass\00", align 1
@pll1_bypass_sels = internal global [2 x ptr] [ptr @.str.13, ptr @.str.6], align 4
@.str.21 = private unnamed_addr constant [12 x i8] c"pll2_bypass\00", align 1
@pll2_bypass_sels = internal global [2 x ptr] [ptr @.str.14, ptr @.str.7], align 4
@.str.22 = private unnamed_addr constant [12 x i8] c"pll3_bypass\00", align 1
@pll3_bypass_sels = internal global [2 x ptr] [ptr @.str.15, ptr @.str.8], align 4
@.str.23 = private unnamed_addr constant [12 x i8] c"pll4_bypass\00", align 1
@pll4_bypass_sels = internal global [2 x ptr] [ptr @.str.16, ptr @.str.9], align 4
@.str.24 = private unnamed_addr constant [12 x i8] c"pll5_bypass\00", align 1
@pll5_bypass_sels = internal global [2 x ptr] [ptr @.str.17, ptr @.str.10], align 4
@.str.25 = private unnamed_addr constant [12 x i8] c"pll6_bypass\00", align 1
@pll6_bypass_sels = internal global [2 x ptr] [ptr @.str.18, ptr @.str.11], align 4
@.str.26 = private unnamed_addr constant [12 x i8] c"pll7_bypass\00", align 1
@pll7_bypass_sels = internal global [2 x ptr] [ptr @.str.19, ptr @.str.12], align 4
@.str.27 = private unnamed_addr constant [9 x i8] c"pll1_sys\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"pll2_bus\00", align 1
@.str.29 = private unnamed_addr constant [13 x i8] c"pll3_usb_otg\00", align 1
@.str.30 = private unnamed_addr constant [11 x i8] c"pll4_audio\00", align 1
@.str.31 = private unnamed_addr constant [11 x i8] c"pll5_video\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"pll6_enet\00", align 1
@.str.33 = private unnamed_addr constant [14 x i8] c"pll7_usb_host\00", align 1
@.str.34 = private unnamed_addr constant [10 x i8] c"lvds1_sel\00", align 1
@lvds_sels = internal global [32 x ptr] [ptr @.str.27, ptr @.str.28, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.1, ptr @.str.30, ptr @.str.31, ptr @.str.1, ptr @.str.45, ptr @.str.1, ptr @.str.1, ptr @.str.29, ptr @.str.33, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.3, ptr @.str.1, ptr @.str.1, ptr @.str.1, ptr @.str.1, ptr @.str.1, ptr @.str.1, ptr @.str.1, ptr @.str.1, ptr @.str.1, ptr @.str.1, ptr @.str.1, ptr @.str.1, ptr @.str.1], align 4
@.str.35 = private unnamed_addr constant [10 x i8] c"lvds1_out\00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c"lvds1_in\00", align 1
@.str.37 = private unnamed_addr constant [8 x i8] c"usbphy1\00", align 1
@.str.38 = private unnamed_addr constant [8 x i8] c"usbphy2\00", align 1
@.str.39 = private unnamed_addr constant [13 x i8] c"usbphy1_gate\00", align 1
@.str.40 = private unnamed_addr constant [13 x i8] c"usbphy2_gate\00", align 1
@.str.41 = private unnamed_addr constant [14 x i8] c"pll4_post_div\00", align 1
@post_div_table = internal constant [4 x %struct.clk_div_table] [%struct.clk_div_table { i32 2, i32 1 }, %struct.clk_div_table { i32 1, i32 2 }, %struct.clk_div_table { i32 0, i32 4 }, %struct.clk_div_table zeroinitializer], align 4
@imx_ccm_lock = external dso_local global %struct.spinlock, align 4
@.str.42 = private unnamed_addr constant [15 x i8] c"pll4_audio_div\00", align 1
@.str.43 = private unnamed_addr constant [14 x i8] c"pll5_post_div\00", align 1
@.str.44 = private unnamed_addr constant [15 x i8] c"pll5_video_div\00", align 1
@video_div_table = internal constant [5 x %struct.clk_div_table] [%struct.clk_div_table { i32 0, i32 1 }, %struct.clk_div_table { i32 1, i32 2 }, %struct.clk_div_table { i32 2, i32 1 }, %struct.clk_div_table { i32 3, i32 4 }, %struct.clk_div_table zeroinitializer], align 4
@.str.45 = private unnamed_addr constant [9 x i8] c"enet_ref\00", align 1
@clk_enet_ref_table = internal constant [5 x %struct.clk_div_table] [%struct.clk_div_table { i32 0, i32 20 }, %struct.clk_div_table { i32 1, i32 10 }, %struct.clk_div_table { i32 2, i32 5 }, %struct.clk_div_table { i32 3, i32 4 }, %struct.clk_div_table zeroinitializer], align 4
@.str.46 = private unnamed_addr constant [10 x i8] c"pll2_pfd0\00", align 1
@.str.47 = private unnamed_addr constant [10 x i8] c"pll2_pfd1\00", align 1
@.str.48 = private unnamed_addr constant [10 x i8] c"pll2_pfd2\00", align 1
@.str.49 = private unnamed_addr constant [10 x i8] c"pll3_pfd0\00", align 1
@.str.50 = private unnamed_addr constant [10 x i8] c"pll3_pfd1\00", align 1
@.str.51 = private unnamed_addr constant [10 x i8] c"pll3_pfd2\00", align 1
@.str.52 = private unnamed_addr constant [10 x i8] c"pll3_pfd3\00", align 1
@.str.53 = private unnamed_addr constant [10 x i8] c"pll2_198m\00", align 1
@.str.54 = private unnamed_addr constant [10 x i8] c"pll3_120m\00", align 1
@.str.55 = private unnamed_addr constant [9 x i8] c"pll3_80m\00", align 1
@.str.56 = private unnamed_addr constant [9 x i8] c"pll3_60m\00", align 1
@.str.57 = private unnamed_addr constant [5 x i8] c"step\00", align 1
@step_sels = internal global [2 x ptr] [ptr @.str.3, ptr @.str.48], align 4
@.str.58 = private unnamed_addr constant [8 x i8] c"pll1_sw\00", align 1
@pll1_sw_sels = internal global [2 x ptr] [ptr @.str.27, ptr @.str.57], align 4
@.str.59 = private unnamed_addr constant [14 x i8] c"ocram_alt_sel\00", align 1
@ocram_alt_sels = internal global [2 x ptr] [ptr @.str.48, ptr @.str.50], align 4
@.str.60 = private unnamed_addr constant [10 x i8] c"ocram_sel\00", align 1
@ocram_sels = internal global [2 x ptr] [ptr @.str.86, ptr @.str.170], align 4
@.str.61 = private unnamed_addr constant [16 x i8] c"pre_periph2_sel\00", align 1
@pre_periph_sels = internal global [4 x ptr] [ptr @.str.28, ptr @.str.48, ptr @.str.46, ptr @.str.53], align 4
@.str.62 = private unnamed_addr constant [15 x i8] c"pre_periph_sel\00", align 1
@.str.63 = private unnamed_addr constant [17 x i8] c"periph2_clk2_sel\00", align 1
@periph2_clk2_sels = internal global [2 x ptr] [ptr @.str.29, ptr @.str.28], align 4
@.str.64 = private unnamed_addr constant [16 x i8] c"periph_clk2_sel\00", align 1
@periph_clk2_sels = internal global [4 x ptr] [ptr @.str.29, ptr @.str.3, ptr @.str.3, ptr @.str.1], align 4
@.str.65 = private unnamed_addr constant [8 x i8] c"csi_sel\00", align 1
@csi_sels = internal global [4 x ptr] [ptr @.str.3, ptr @.str.48, ptr @.str.54, ptr @.str.50], align 4
@.str.66 = private unnamed_addr constant [14 x i8] c"lcdif_axi_sel\00", align 1
@lcdif_axi_sels = internal global [4 x ptr] [ptr @.str.28, ptr @.str.48, ptr @.str.29, ptr @.str.50], align 4
@.str.67 = private unnamed_addr constant [11 x i8] c"usdhc1_sel\00", align 1
@usdhc_sels = internal global [2 x ptr] [ptr @.str.48, ptr @.str.46], align 4
@.str.68 = private unnamed_addr constant [11 x i8] c"usdhc2_sel\00", align 1
@.str.69 = private unnamed_addr constant [11 x i8] c"usdhc3_sel\00", align 1
@.str.70 = private unnamed_addr constant [11 x i8] c"usdhc4_sel\00", align 1
@.str.71 = private unnamed_addr constant [9 x i8] c"ssi1_sel\00", align 1
@ssi_sels = internal global [4 x ptr] [ptr @.str.51, ptr @.str.52, ptr @.str.42, ptr @.str.1], align 4
@.str.72 = private unnamed_addr constant [9 x i8] c"ssi2_sel\00", align 1
@.str.73 = private unnamed_addr constant [9 x i8] c"ssi3_sel\00", align 1
@.str.74 = private unnamed_addr constant [11 x i8] c"perclk_sel\00", align 1
@perclk_sels = internal global [2 x ptr] [ptr @.str.91, ptr @.str.3], align 4
@.str.75 = private unnamed_addr constant [12 x i8] c"pxp_axi_sel\00", align 1
@pxp_axi_sels = internal global [6 x ptr] [ptr @.str.28, ptr @.str.29, ptr @.str.44, ptr @.str.46, ptr @.str.48, ptr @.str.52], align 4
@.str.76 = private unnamed_addr constant [13 x i8] c"epdc_axi_sel\00", align 1
@epdc_axi_sels = internal global [6 x ptr] [ptr @.str.28, ptr @.str.29, ptr @.str.44, ptr @.str.46, ptr @.str.48, ptr @.str.51], align 4
@.str.77 = private unnamed_addr constant [14 x i8] c"gpu2d_ovg_sel\00", align 1
@gpu2d_ovg_sels = internal global [4 x ptr] [ptr @.str.50, ptr @.str.29, ptr @.str.28, ptr @.str.48], align 4
@.str.78 = private unnamed_addr constant [10 x i8] c"gpu2d_sel\00", align 1
@gpu2d_sels = internal global [4 x ptr] [ptr @.str.48, ptr @.str.29, ptr @.str.50, ptr @.str.28], align 4
@.str.79 = private unnamed_addr constant [14 x i8] c"lcdif_pix_sel\00", align 1
@lcdif_pix_sels = internal global [6 x ptr] [ptr @.str.28, ptr @.str.29, ptr @.str.44, ptr @.str.46, ptr @.str.49, ptr @.str.50], align 4
@.str.80 = private unnamed_addr constant [13 x i8] c"epdc_pix_sel\00", align 1
@epdc_pix_sels = internal global [6 x ptr] [ptr @.str.28, ptr @.str.29, ptr @.str.44, ptr @.str.46, ptr @.str.47, ptr @.str.50], align 4
@.str.81 = private unnamed_addr constant [11 x i8] c"spdif0_sel\00", align 1
@audio_sels = internal global [4 x ptr] [ptr @.str.42, ptr @.str.51, ptr @.str.52, ptr @.str.29], align 4
@.str.82 = private unnamed_addr constant [11 x i8] c"spdif1_sel\00", align 1
@.str.83 = private unnamed_addr constant [17 x i8] c"extern_audio_sel\00", align 1
@.str.84 = private unnamed_addr constant [10 x i8] c"ecspi_sel\00", align 1
@ecspi_sels = internal global [2 x ptr] [ptr @.str.56, ptr @.str.3], align 4
@.str.85 = private unnamed_addr constant [9 x i8] c"uart_sel\00", align 1
@uart_sels = internal global [2 x ptr] [ptr @.str.55, ptr @.str.3], align 4
@.str.86 = private unnamed_addr constant [7 x i8] c"periph\00", align 1
@periph_sels = internal global [2 x ptr] [ptr @.str.62, ptr @.str.89], align 4
@.str.87 = private unnamed_addr constant [8 x i8] c"periph2\00", align 1
@periph2_sels = internal global [2 x ptr] [ptr @.str.61, ptr @.str.90], align 4
@.str.88 = private unnamed_addr constant [11 x i8] c"ocram_podf\00", align 1
@.str.89 = private unnamed_addr constant [17 x i8] c"periph_clk2_podf\00", align 1
@.str.90 = private unnamed_addr constant [18 x i8] c"periph2_clk2_podf\00", align 1
@.str.91 = private unnamed_addr constant [4 x i8] c"ipg\00", align 1
@.str.92 = private unnamed_addr constant [4 x i8] c"ahb\00", align 1
@.str.93 = private unnamed_addr constant [9 x i8] c"csi_podf\00", align 1
@.str.94 = private unnamed_addr constant [15 x i8] c"lcdif_axi_podf\00", align 1
@.str.95 = private unnamed_addr constant [12 x i8] c"usdhc1_podf\00", align 1
@.str.96 = private unnamed_addr constant [12 x i8] c"usdhc2_podf\00", align 1
@.str.97 = private unnamed_addr constant [12 x i8] c"usdhc3_podf\00", align 1
@.str.98 = private unnamed_addr constant [12 x i8] c"usdhc4_podf\00", align 1
@.str.99 = private unnamed_addr constant [10 x i8] c"ssi1_pred\00", align 1
@.str.100 = private unnamed_addr constant [10 x i8] c"ssi1_podf\00", align 1
@.str.101 = private unnamed_addr constant [10 x i8] c"ssi2_pred\00", align 1
@.str.102 = private unnamed_addr constant [10 x i8] c"ssi2_podf\00", align 1
@.str.103 = private unnamed_addr constant [10 x i8] c"ssi3_pred\00", align 1
@.str.104 = private unnamed_addr constant [10 x i8] c"ssi3_podf\00", align 1
@.str.105 = private unnamed_addr constant [7 x i8] c"perclk\00", align 1
@.str.106 = private unnamed_addr constant [13 x i8] c"pxp_axi_podf\00", align 1
@.str.107 = private unnamed_addr constant [14 x i8] c"epdc_axi_podf\00", align 1
@.str.108 = private unnamed_addr constant [15 x i8] c"gpu2d_ovg_podf\00", align 1
@.str.109 = private unnamed_addr constant [11 x i8] c"gpu2d_podf\00", align 1
@.str.110 = private unnamed_addr constant [15 x i8] c"lcdif_pix_pred\00", align 1
@.str.111 = private unnamed_addr constant [14 x i8] c"epdc_pix_pred\00", align 1
@.str.112 = private unnamed_addr constant [15 x i8] c"lcdif_pix_podf\00", align 1
@.str.113 = private unnamed_addr constant [14 x i8] c"epdc_pix_podf\00", align 1
@.str.114 = private unnamed_addr constant [12 x i8] c"spdif0_pred\00", align 1
@.str.115 = private unnamed_addr constant [12 x i8] c"spdif0_podf\00", align 1
@.str.116 = private unnamed_addr constant [12 x i8] c"spdif1_pred\00", align 1
@.str.117 = private unnamed_addr constant [12 x i8] c"spdif1_podf\00", align 1
@.str.118 = private unnamed_addr constant [18 x i8] c"extern_audio_pred\00", align 1
@.str.119 = private unnamed_addr constant [18 x i8] c"extern_audio_podf\00", align 1
@.str.120 = private unnamed_addr constant [11 x i8] c"ecspi_root\00", align 1
@.str.121 = private unnamed_addr constant [10 x i8] c"uart_root\00", align 1
@.str.122 = private unnamed_addr constant [5 x i8] c"mmdc\00", align 1
@.str.123 = private unnamed_addr constant [4 x i8] c"arm\00", align 1
@.str.124 = private unnamed_addr constant [7 x i8] c"ecspi1\00", align 1
@.str.125 = private unnamed_addr constant [7 x i8] c"ecspi2\00", align 1
@.str.126 = private unnamed_addr constant [7 x i8] c"ecspi3\00", align 1
@.str.127 = private unnamed_addr constant [7 x i8] c"ecspi4\00", align 1
@.str.128 = private unnamed_addr constant [5 x i8] c"enet\00", align 1
@.str.129 = private unnamed_addr constant [6 x i8] c"epit1\00", align 1
@.str.130 = private unnamed_addr constant [6 x i8] c"epit2\00", align 1
@.str.131 = private unnamed_addr constant [13 x i8] c"extern_audio\00", align 1
@.str.132 = private unnamed_addr constant [4 x i8] c"gpt\00", align 1
@.str.133 = private unnamed_addr constant [11 x i8] c"gpt_serial\00", align 1
@.str.134 = private unnamed_addr constant [10 x i8] c"gpu2d_ovg\00", align 1
@.str.135 = private unnamed_addr constant [5 x i8] c"i2c1\00", align 1
@.str.136 = private unnamed_addr constant [5 x i8] c"i2c2\00", align 1
@.str.137 = private unnamed_addr constant [5 x i8] c"i2c3\00", align 1
@.str.138 = private unnamed_addr constant [6 x i8] c"ocotp\00", align 1
@.str.139 = private unnamed_addr constant [4 x i8] c"csi\00", align 1
@.str.140 = private unnamed_addr constant [8 x i8] c"pxp_axi\00", align 1
@.str.141 = private unnamed_addr constant [9 x i8] c"epdc_axi\00", align 1
@.str.142 = private unnamed_addr constant [10 x i8] c"lcdif_axi\00", align 1
@.str.143 = private unnamed_addr constant [10 x i8] c"lcdif_pix\00", align 1
@.str.144 = private unnamed_addr constant [9 x i8] c"epdc_pix\00", align 1
@.str.145 = private unnamed_addr constant [12 x i8] c"mmdc_p0_ipg\00", align 1
@.str.146 = private unnamed_addr constant [12 x i8] c"mmdc_p1_ipg\00", align 1
@.str.147 = private unnamed_addr constant [6 x i8] c"ocram\00", align 1
@.str.148 = private unnamed_addr constant [5 x i8] c"pwm1\00", align 1
@.str.149 = private unnamed_addr constant [5 x i8] c"pwm2\00", align 1
@.str.150 = private unnamed_addr constant [5 x i8] c"pwm3\00", align 1
@.str.151 = private unnamed_addr constant [5 x i8] c"pwm4\00", align 1
@.str.152 = private unnamed_addr constant [5 x i8] c"sdma\00", align 1
@.str.153 = private unnamed_addr constant [5 x i8] c"spba\00", align 1
@.str.154 = private unnamed_addr constant [6 x i8] c"spdif\00", align 1
@share_count_spdif = internal global i32 0, align 4
@.str.155 = private unnamed_addr constant [11 x i8] c"spdif_gclk\00", align 1
@.str.156 = private unnamed_addr constant [9 x i8] c"ssi1_ipg\00", align 1
@share_count_ssi1 = internal global i32 0, align 4
@.str.157 = private unnamed_addr constant [9 x i8] c"ssi2_ipg\00", align 1
@share_count_ssi2 = internal global i32 0, align 4
@.str.158 = private unnamed_addr constant [9 x i8] c"ssi3_ipg\00", align 1
@share_count_ssi3 = internal global i32 0, align 4
@.str.159 = private unnamed_addr constant [5 x i8] c"ssi1\00", align 1
@.str.160 = private unnamed_addr constant [5 x i8] c"ssi2\00", align 1
@.str.161 = private unnamed_addr constant [5 x i8] c"ssi3\00", align 1
@.str.162 = private unnamed_addr constant [5 x i8] c"uart\00", align 1
@.str.163 = private unnamed_addr constant [12 x i8] c"uart_serial\00", align 1
@.str.164 = private unnamed_addr constant [7 x i8] c"usboh3\00", align 1
@.str.165 = private unnamed_addr constant [7 x i8] c"usdhc1\00", align 1
@.str.166 = private unnamed_addr constant [7 x i8] c"usdhc2\00", align 1
@.str.167 = private unnamed_addr constant [7 x i8] c"usdhc3\00", align 1
@.str.168 = private unnamed_addr constant [7 x i8] c"usdhc4\00", align 1
@.str.169 = private unnamed_addr constant [40 x i8] c"\014%s: failed to set AHB clock rate %d!\0A\00", align 1
@__func__.imx6sl_clocks_init = private unnamed_addr constant [19 x i8] c"imx6sl_clocks_init\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.170 = private unnamed_addr constant [15 x i8] c"ocram_alt_sels\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__of_table_imx6sl], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @imx6sl_set_wait_clk(i1 noundef zeroext %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @ccm_base, align 4
  %3 = getelementptr i8, ptr %2, i32 12
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #5, !srcloc !8
  %5 = and i32 %4, 4
  %6 = icmp eq i32 %5, 0
  %7 = load ptr, ptr @anatop_base, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #5
  br i1 %6, label %9, label %13

9:                                                ; preds = %1
  %10 = and i32 %8, 127
  %11 = icmp eq i32 %10, 66
  %12 = select i1 %11, i32 4, i32 6
  br label %21

13:                                               ; preds = %1
  store i32 %8, ptr @imx6sl_enable_pll_arm.saved_pll_arm, align 4
  %14 = and i32 %8, -12289
  %15 = or i32 %14, 8192
  %16 = load ptr, ptr @anatop_base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %15) #5, !srcloc !9
  br label %17

17:                                               ; preds = %17, %13
  %18 = load ptr, ptr @anatop_base, align 4
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #5, !srcloc !8
  %20 = icmp sgt i32 %19, -1
  br i1 %20, label %17, label %21

21:                                               ; preds = %17, %9
  %22 = phi i32 [ %12, %9 ], [ 2, %17 ]
  br i1 %0, label %23, label %29

23:                                               ; preds = %21
  %24 = load ptr, ptr @ccm_base, align 4
  %25 = getelementptr i8, ptr %24, i32 16
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #5, !srcloc !8
  store i32 %26, ptr @imx6sl_set_wait_clk.saved_arm_div, align 4
  %27 = load ptr, ptr @ccm_base, align 4
  %28 = getelementptr i8, ptr %27, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %22) #5, !srcloc !9
  br label %33

29:                                               ; preds = %21
  %30 = load i32, ptr @imx6sl_set_wait_clk.saved_arm_div, align 4
  %31 = load ptr, ptr @ccm_base, align 4
  %32 = getelementptr i8, ptr %31, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %30) #5, !srcloc !9
  br label %33

33:                                               ; preds = %29, %23
  br label %34

34:                                               ; preds = %34, %33
  %35 = load ptr, ptr @ccm_base, align 4
  %36 = getelementptr i8, ptr %35, i32 72
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %36) #5, !srcloc !8
  %38 = and i32 %37, 65536
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %34

40:                                               ; preds = %34
  br i1 %6, label %44, label %41

41:                                               ; preds = %40
  %42 = load i32, ptr @imx6sl_enable_pll_arm.saved_pll_arm, align 4
  %43 = load ptr, ptr @anatop_base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 %42) #5, !srcloc !9
  br label %44

44:                                               ; preds = %41, %40
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @imx6sl_clocks_init(ptr noundef %0) #1 section ".init.text" {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 672) #6
  store ptr %3, ptr @clk_hw_data, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %6, !prof !10

5:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 190, i32 noundef 9, ptr noundef null) #5
  br label %683

6:                                                ; preds = %1
  store i32 167, ptr %3, align 8
  %7 = getelementptr inbounds %struct.clk_hw_onecell_data, ptr %3, i32 0, i32 1
  store ptr %7, ptr @hws, align 4
  %8 = tail call ptr @__clk_hw_register_fixed_rate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.1, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #5
  %9 = load ptr, ptr @hws, align 4
  store ptr %8, ptr %9, align 4
  %10 = tail call ptr @imx_obtain_fixed_clock_hw(ptr noundef nonnull @.str.2, i32 noundef 0) #5
  %11 = load ptr, ptr @hws, align 4
  %12 = getelementptr ptr, ptr %11, i32 1
  store ptr %10, ptr %12, align 4
  %13 = tail call ptr @imx_obtain_fixed_clock_hw(ptr noundef nonnull @.str.3, i32 noundef 0) #5
  %14 = load ptr, ptr @hws, align 4
  %15 = getelementptr ptr, ptr %14, i32 2
  store ptr %13, ptr %15, align 4
  %16 = tail call ptr @imx_obtain_fixed_clock_hw(ptr noundef nonnull @.str.4, i32 noundef 0) #5
  %17 = load ptr, ptr @hws, align 4
  %18 = getelementptr ptr, ptr %17, i32 139
  store ptr %16, ptr %18, align 4
  %19 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.5) #5
  %20 = tail call ptr @of_iomap(ptr noundef %19, i32 noundef 0) #5
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %23, !prof !10

22:                                               ; preds = %6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 204, i32 noundef 9, ptr noundef null) #5
  br label %23

23:                                               ; preds = %22, %6
  tail call void @of_node_put(ptr noundef %19) #5
  store ptr %20, ptr @anatop_base, align 4
  %24 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.6, i8 noundef zeroext 2, ptr noundef nonnull @pll_bypass_src_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %20, i8 noundef zeroext 14, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %25 = load ptr, ptr @hws, align 4
  %26 = getelementptr ptr, ptr %25, i32 140
  store ptr %24, ptr %26, align 4
  %27 = getelementptr i8, ptr %20, i32 48
  %28 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.7, i8 noundef zeroext 2, ptr noundef nonnull @pll_bypass_src_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %27, i8 noundef zeroext 14, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %29 = load ptr, ptr @hws, align 4
  %30 = getelementptr ptr, ptr %29, i32 141
  store ptr %28, ptr %30, align 4
  %31 = getelementptr i8, ptr %20, i32 16
  %32 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.8, i8 noundef zeroext 2, ptr noundef nonnull @pll_bypass_src_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %31, i8 noundef zeroext 14, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %33 = load ptr, ptr @hws, align 4
  %34 = getelementptr ptr, ptr %33, i32 142
  store ptr %32, ptr %34, align 4
  %35 = getelementptr i8, ptr %20, i32 112
  %36 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.9, i8 noundef zeroext 2, ptr noundef nonnull @pll_bypass_src_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %35, i8 noundef zeroext 14, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %37 = load ptr, ptr @hws, align 4
  %38 = getelementptr ptr, ptr %37, i32 143
  store ptr %36, ptr %38, align 4
  %39 = getelementptr i8, ptr %20, i32 160
  %40 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.10, i8 noundef zeroext 2, ptr noundef nonnull @pll_bypass_src_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %39, i8 noundef zeroext 14, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %41 = load ptr, ptr @hws, align 4
  %42 = getelementptr ptr, ptr %41, i32 144
  store ptr %40, ptr %42, align 4
  %43 = getelementptr i8, ptr %20, i32 224
  %44 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.11, i8 noundef zeroext 2, ptr noundef nonnull @pll_bypass_src_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %43, i8 noundef zeroext 14, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %45 = load ptr, ptr @hws, align 4
  %46 = getelementptr ptr, ptr %45, i32 145
  store ptr %44, ptr %46, align 4
  %47 = getelementptr i8, ptr %20, i32 32
  %48 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.12, i8 noundef zeroext 2, ptr noundef nonnull @pll_bypass_src_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %47, i8 noundef zeroext 14, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %49 = load ptr, ptr @hws, align 4
  %50 = getelementptr ptr, ptr %49, i32 146
  store ptr %48, ptr %50, align 4
  %51 = tail call ptr @imx_clk_hw_pllv3(i32 noundef 1, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.3, ptr noundef %20, i32 noundef 127) #5
  %52 = load ptr, ptr @hws, align 4
  %53 = getelementptr ptr, ptr %52, i32 147
  store ptr %51, ptr %53, align 4
  %54 = tail call ptr @imx_clk_hw_pllv3(i32 noundef 0, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.3, ptr noundef %27, i32 noundef 1) #5
  %55 = load ptr, ptr @hws, align 4
  %56 = getelementptr ptr, ptr %55, i32 148
  store ptr %54, ptr %56, align 4
  %57 = tail call ptr @imx_clk_hw_pllv3(i32 noundef 2, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.3, ptr noundef %31, i32 noundef 3) #5
  %58 = load ptr, ptr @hws, align 4
  %59 = getelementptr ptr, ptr %58, i32 149
  store ptr %57, ptr %59, align 4
  %60 = tail call ptr @imx_clk_hw_pllv3(i32 noundef 4, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.3, ptr noundef %35, i32 noundef 127) #5
  %61 = load ptr, ptr @hws, align 4
  %62 = getelementptr ptr, ptr %61, i32 150
  store ptr %60, ptr %62, align 4
  %63 = tail call ptr @imx_clk_hw_pllv3(i32 noundef 4, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.3, ptr noundef %39, i32 noundef 127) #5
  %64 = load ptr, ptr @hws, align 4
  %65 = getelementptr ptr, ptr %64, i32 151
  store ptr %63, ptr %65, align 4
  %66 = tail call ptr @imx_clk_hw_pllv3(i32 noundef 5, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.3, ptr noundef %43, i32 noundef 3) #5
  %67 = load ptr, ptr @hws, align 4
  %68 = getelementptr ptr, ptr %67, i32 152
  store ptr %66, ptr %68, align 4
  %69 = tail call ptr @imx_clk_hw_pllv3(i32 noundef 2, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.3, ptr noundef %47, i32 noundef 3) #5
  %70 = load ptr, ptr @hws, align 4
  %71 = getelementptr ptr, ptr %70, i32 153
  store ptr %69, ptr %71, align 4
  %72 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.20, i8 noundef zeroext 2, ptr noundef nonnull @pll1_bypass_sels, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %20, i8 noundef zeroext 16, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %73 = load ptr, ptr @hws, align 4
  %74 = getelementptr ptr, ptr %73, i32 154
  store ptr %72, ptr %74, align 4
  %75 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.21, i8 noundef zeroext 2, ptr noundef nonnull @pll2_bypass_sels, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %27, i8 noundef zeroext 16, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %76 = load ptr, ptr @hws, align 4
  %77 = getelementptr ptr, ptr %76, i32 155
  store ptr %75, ptr %77, align 4
  %78 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.22, i8 noundef zeroext 2, ptr noundef nonnull @pll3_bypass_sels, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %31, i8 noundef zeroext 16, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %79 = load ptr, ptr @hws, align 4
  %80 = getelementptr ptr, ptr %79, i32 156
  store ptr %78, ptr %80, align 4
  %81 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.23, i8 noundef zeroext 2, ptr noundef nonnull @pll4_bypass_sels, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %35, i8 noundef zeroext 16, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %82 = load ptr, ptr @hws, align 4
  %83 = getelementptr ptr, ptr %82, i32 157
  store ptr %81, ptr %83, align 4
  %84 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.24, i8 noundef zeroext 2, ptr noundef nonnull @pll5_bypass_sels, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %39, i8 noundef zeroext 16, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %85 = load ptr, ptr @hws, align 4
  %86 = getelementptr ptr, ptr %85, i32 158
  store ptr %84, ptr %86, align 4
  %87 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.25, i8 noundef zeroext 2, ptr noundef nonnull @pll6_bypass_sels, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %43, i8 noundef zeroext 16, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %88 = load ptr, ptr @hws, align 4
  %89 = getelementptr ptr, ptr %88, i32 159
  store ptr %87, ptr %89, align 4
  %90 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.26, i8 noundef zeroext 2, ptr noundef nonnull @pll7_bypass_sels, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %47, i8 noundef zeroext 16, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %91 = load ptr, ptr @hws, align 4
  %92 = getelementptr ptr, ptr %91, i32 160
  store ptr %90, ptr %92, align 4
  %93 = getelementptr ptr, ptr %91, i32 154
  %94 = load ptr, ptr %93, align 4
  %95 = getelementptr inbounds %struct.clk_hw, ptr %94, i32 0, i32 1
  %96 = load ptr, ptr %95, align 4
  %97 = getelementptr ptr, ptr %91, i32 147
  %98 = load ptr, ptr %97, align 4
  %99 = getelementptr inbounds %struct.clk_hw, ptr %98, i32 0, i32 1
  %100 = load ptr, ptr %99, align 4
  %101 = tail call i32 @clk_set_parent(ptr noundef %96, ptr noundef %100) #5
  %102 = load ptr, ptr @hws, align 4
  %103 = getelementptr ptr, ptr %102, i32 155
  %104 = load ptr, ptr %103, align 4
  %105 = getelementptr inbounds %struct.clk_hw, ptr %104, i32 0, i32 1
  %106 = load ptr, ptr %105, align 4
  %107 = getelementptr ptr, ptr %102, i32 148
  %108 = load ptr, ptr %107, align 4
  %109 = getelementptr inbounds %struct.clk_hw, ptr %108, i32 0, i32 1
  %110 = load ptr, ptr %109, align 4
  %111 = tail call i32 @clk_set_parent(ptr noundef %106, ptr noundef %110) #5
  %112 = load ptr, ptr @hws, align 4
  %113 = getelementptr ptr, ptr %112, i32 156
  %114 = load ptr, ptr %113, align 4
  %115 = getelementptr inbounds %struct.clk_hw, ptr %114, i32 0, i32 1
  %116 = load ptr, ptr %115, align 4
  %117 = getelementptr ptr, ptr %112, i32 149
  %118 = load ptr, ptr %117, align 4
  %119 = getelementptr inbounds %struct.clk_hw, ptr %118, i32 0, i32 1
  %120 = load ptr, ptr %119, align 4
  %121 = tail call i32 @clk_set_parent(ptr noundef %116, ptr noundef %120) #5
  %122 = load ptr, ptr @hws, align 4
  %123 = getelementptr ptr, ptr %122, i32 157
  %124 = load ptr, ptr %123, align 4
  %125 = getelementptr inbounds %struct.clk_hw, ptr %124, i32 0, i32 1
  %126 = load ptr, ptr %125, align 4
  %127 = getelementptr ptr, ptr %122, i32 150
  %128 = load ptr, ptr %127, align 4
  %129 = getelementptr inbounds %struct.clk_hw, ptr %128, i32 0, i32 1
  %130 = load ptr, ptr %129, align 4
  %131 = tail call i32 @clk_set_parent(ptr noundef %126, ptr noundef %130) #5
  %132 = load ptr, ptr @hws, align 4
  %133 = getelementptr ptr, ptr %132, i32 158
  %134 = load ptr, ptr %133, align 4
  %135 = getelementptr inbounds %struct.clk_hw, ptr %134, i32 0, i32 1
  %136 = load ptr, ptr %135, align 4
  %137 = getelementptr ptr, ptr %132, i32 151
  %138 = load ptr, ptr %137, align 4
  %139 = getelementptr inbounds %struct.clk_hw, ptr %138, i32 0, i32 1
  %140 = load ptr, ptr %139, align 4
  %141 = tail call i32 @clk_set_parent(ptr noundef %136, ptr noundef %140) #5
  %142 = load ptr, ptr @hws, align 4
  %143 = getelementptr ptr, ptr %142, i32 159
  %144 = load ptr, ptr %143, align 4
  %145 = getelementptr inbounds %struct.clk_hw, ptr %144, i32 0, i32 1
  %146 = load ptr, ptr %145, align 4
  %147 = getelementptr ptr, ptr %142, i32 152
  %148 = load ptr, ptr %147, align 4
  %149 = getelementptr inbounds %struct.clk_hw, ptr %148, i32 0, i32 1
  %150 = load ptr, ptr %149, align 4
  %151 = tail call i32 @clk_set_parent(ptr noundef %146, ptr noundef %150) #5
  %152 = load ptr, ptr @hws, align 4
  %153 = getelementptr ptr, ptr %152, i32 160
  %154 = load ptr, ptr %153, align 4
  %155 = getelementptr inbounds %struct.clk_hw, ptr %154, i32 0, i32 1
  %156 = load ptr, ptr %155, align 4
  %157 = getelementptr ptr, ptr %152, i32 153
  %158 = load ptr, ptr %157, align 4
  %159 = getelementptr inbounds %struct.clk_hw, ptr %158, i32 0, i32 1
  %160 = load ptr, ptr %159, align 4
  %161 = tail call i32 @clk_set_parent(ptr noundef %156, ptr noundef %160) #5
  %162 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.20, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %20, i8 noundef zeroext 13, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #5
  %163 = load ptr, ptr @hws, align 4
  %164 = getelementptr ptr, ptr %163, i32 3
  store ptr %162, ptr %164, align 4
  %165 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.21, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %27, i8 noundef zeroext 13, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #5
  %166 = load ptr, ptr @hws, align 4
  %167 = getelementptr ptr, ptr %166, i32 4
  store ptr %165, ptr %167, align 4
  %168 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.22, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %31, i8 noundef zeroext 13, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #5
  %169 = load ptr, ptr @hws, align 4
  %170 = getelementptr ptr, ptr %169, i32 5
  store ptr %168, ptr %170, align 4
  %171 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.23, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %35, i8 noundef zeroext 13, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #5
  %172 = load ptr, ptr @hws, align 4
  %173 = getelementptr ptr, ptr %172, i32 6
  store ptr %171, ptr %173, align 4
  %174 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.24, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %39, i8 noundef zeroext 13, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #5
  %175 = load ptr, ptr @hws, align 4
  %176 = getelementptr ptr, ptr %175, i32 7
  store ptr %174, ptr %176, align 4
  %177 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.25, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %43, i8 noundef zeroext 13, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #5
  %178 = load ptr, ptr @hws, align 4
  %179 = getelementptr ptr, ptr %178, i32 8
  store ptr %177, ptr %179, align 4
  %180 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.26, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %47, i8 noundef zeroext 13, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #5
  %181 = load ptr, ptr @hws, align 4
  %182 = getelementptr ptr, ptr %181, i32 9
  store ptr %180, ptr %182, align 4
  %183 = getelementptr i8, ptr %20, i32 352
  %184 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.34, i8 noundef zeroext 32, ptr noundef nonnull @lvds_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %183, i8 noundef zeroext 0, i32 noundef 31, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %185 = load ptr, ptr @hws, align 4
  %186 = getelementptr ptr, ptr %185, i32 136
  store ptr %184, ptr %186, align 4
  %187 = tail call ptr @imx_clk_hw_gate_exclusive(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.34, ptr noundef %183, i8 noundef zeroext 10, i32 noundef 4096) #5
  %188 = load ptr, ptr @hws, align 4
  %189 = getelementptr ptr, ptr %188, i32 137
  store ptr %187, ptr %189, align 4
  %190 = tail call ptr @imx_clk_hw_gate_exclusive(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.4, ptr noundef %183, i8 noundef zeroext 12, i32 noundef 1024) #5
  %191 = load ptr, ptr @hws, align 4
  %192 = getelementptr ptr, ptr %191, i32 138
  store ptr %190, ptr %192, align 4
  %193 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.29, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %31, i8 noundef zeroext 20, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #5
  %194 = load ptr, ptr @hws, align 4
  %195 = getelementptr ptr, ptr %194, i32 10
  store ptr %193, ptr %195, align 4
  %196 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.33, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %47, i8 noundef zeroext 20, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #5
  %197 = load ptr, ptr @hws, align 4
  %198 = getelementptr ptr, ptr %197, i32 11
  store ptr %196, ptr %198, align 4
  %199 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.1, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %31, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #5
  %200 = load ptr, ptr @hws, align 4
  %201 = getelementptr ptr, ptr %200, i32 12
  store ptr %199, ptr %201, align 4
  %202 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.1, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %47, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #5
  %203 = load ptr, ptr @hws, align 4
  %204 = getelementptr ptr, ptr %203, i32 13
  store ptr %202, ptr %204, align 4
  %205 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.30, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %35, i8 noundef zeroext 19, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef nonnull @post_div_table, ptr noundef nonnull @imx_ccm_lock) #5
  %206 = load ptr, ptr @hws, align 4
  %207 = getelementptr ptr, ptr %206, i32 14
  store ptr %205, ptr %207, align 4
  %208 = getelementptr i8, ptr %20, i32 368
  %209 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.41, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %208, i8 noundef zeroext 15, i8 noundef zeroext 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %210 = load ptr, ptr @hws, align 4
  %211 = getelementptr ptr, ptr %210, i32 133
  store ptr %209, ptr %211, align 4
  %212 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.31, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %39, i8 noundef zeroext 19, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef nonnull @post_div_table, ptr noundef nonnull @imx_ccm_lock) #5
  %213 = load ptr, ptr @hws, align 4
  %214 = getelementptr ptr, ptr %213, i32 15
  store ptr %212, ptr %214, align 4
  %215 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.43, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %208, i8 noundef zeroext 30, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef nonnull @video_div_table, ptr noundef nonnull @imx_ccm_lock) #5
  %216 = load ptr, ptr @hws, align 4
  %217 = getelementptr ptr, ptr %216, i32 16
  store ptr %215, ptr %217, align 4
  %218 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.32, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef %43, i8 noundef zeroext 0, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef nonnull @clk_enet_ref_table, ptr noundef nonnull @imx_ccm_lock) #5
  %219 = load ptr, ptr @hws, align 4
  %220 = getelementptr ptr, ptr %219, i32 17
  store ptr %218, ptr %220, align 4
  %221 = getelementptr i8, ptr %20, i32 256
  %222 = tail call ptr @imx_clk_hw_pfd(ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.28, ptr noundef %221, i8 noundef zeroext 0) #5
  %223 = load ptr, ptr @hws, align 4
  %224 = getelementptr ptr, ptr %223, i32 18
  store ptr %222, ptr %224, align 4
  %225 = tail call ptr @imx_clk_hw_pfd(ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.28, ptr noundef %221, i8 noundef zeroext 1) #5
  %226 = load ptr, ptr @hws, align 4
  %227 = getelementptr ptr, ptr %226, i32 19
  store ptr %225, ptr %227, align 4
  %228 = tail call ptr @imx_clk_hw_pfd(ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.28, ptr noundef %221, i8 noundef zeroext 2) #5
  %229 = load ptr, ptr @hws, align 4
  %230 = getelementptr ptr, ptr %229, i32 20
  store ptr %228, ptr %230, align 4
  %231 = getelementptr i8, ptr %20, i32 240
  %232 = tail call ptr @imx_clk_hw_pfd(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.29, ptr noundef %231, i8 noundef zeroext 0) #5
  %233 = load ptr, ptr @hws, align 4
  %234 = getelementptr ptr, ptr %233, i32 21
  store ptr %232, ptr %234, align 4
  %235 = tail call ptr @imx_clk_hw_pfd(ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.29, ptr noundef %231, i8 noundef zeroext 1) #5
  %236 = load ptr, ptr @hws, align 4
  %237 = getelementptr ptr, ptr %236, i32 22
  store ptr %235, ptr %237, align 4
  %238 = tail call ptr @imx_clk_hw_pfd(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.29, ptr noundef %231, i8 noundef zeroext 2) #5
  %239 = load ptr, ptr @hws, align 4
  %240 = getelementptr ptr, ptr %239, i32 23
  store ptr %238, ptr %240, align 4
  %241 = tail call ptr @imx_clk_hw_pfd(ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.29, ptr noundef %231, i8 noundef zeroext 3) #5
  %242 = load ptr, ptr @hws, align 4
  %243 = getelementptr ptr, ptr %242, i32 24
  store ptr %241, ptr %243, align 4
  %244 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.48, i32 noundef 4, i32 noundef 1, i32 noundef 2) #5
  %245 = load ptr, ptr @hws, align 4
  %246 = getelementptr ptr, ptr %245, i32 25
  store ptr %244, ptr %246, align 4
  %247 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.29, i32 noundef 4, i32 noundef 1, i32 noundef 4) #5
  %248 = load ptr, ptr @hws, align 4
  %249 = getelementptr ptr, ptr %248, i32 26
  store ptr %247, ptr %249, align 4
  %250 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.29, i32 noundef 4, i32 noundef 1, i32 noundef 6) #5
  %251 = load ptr, ptr @hws, align 4
  %252 = getelementptr ptr, ptr %251, i32 27
  store ptr %250, ptr %252, align 4
  %253 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.29, i32 noundef 4, i32 noundef 1, i32 noundef 8) #5
  %254 = load ptr, ptr @hws, align 4
  %255 = getelementptr ptr, ptr %254, i32 28
  store ptr %253, ptr %255, align 4
  %256 = tail call ptr @of_iomap(ptr noundef %0, i32 noundef 0) #5
  %257 = icmp eq ptr %256, null
  br i1 %257, label %258, label %259, !prof !10

258:                                              ; preds = %23
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 290, i32 noundef 9, ptr noundef null) #5
  br label %259

259:                                              ; preds = %258, %23
  store ptr %256, ptr @ccm_base, align 4
  %260 = getelementptr i8, ptr %256, i32 12
  %261 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.57, i8 noundef zeroext 2, ptr noundef nonnull @step_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %260, i8 noundef zeroext 8, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %262 = load ptr, ptr @hws, align 4
  %263 = getelementptr ptr, ptr %262, i32 29
  store ptr %261, ptr %263, align 4
  %264 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.58, i8 noundef zeroext 2, ptr noundef nonnull @pll1_sw_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %260, i8 noundef zeroext 2, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %265 = load ptr, ptr @hws, align 4
  %266 = getelementptr ptr, ptr %265, i32 30
  store ptr %264, ptr %266, align 4
  %267 = getelementptr i8, ptr %256, i32 20
  %268 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.59, i8 noundef zeroext 2, ptr noundef nonnull @ocram_alt_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %267, i8 noundef zeroext 7, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %269 = load ptr, ptr @hws, align 4
  %270 = getelementptr ptr, ptr %269, i32 31
  store ptr %268, ptr %270, align 4
  %271 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.60, i8 noundef zeroext 2, ptr noundef nonnull @ocram_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %267, i8 noundef zeroext 6, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %272 = load ptr, ptr @hws, align 4
  %273 = getelementptr ptr, ptr %272, i32 32
  store ptr %271, ptr %273, align 4
  %274 = getelementptr i8, ptr %256, i32 24
  %275 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.61, i8 noundef zeroext 4, ptr noundef nonnull @pre_periph_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %274, i8 noundef zeroext 21, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %276 = load ptr, ptr @hws, align 4
  %277 = getelementptr ptr, ptr %276, i32 33
  store ptr %275, ptr %277, align 4
  %278 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.62, i8 noundef zeroext 4, ptr noundef nonnull @pre_periph_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %274, i8 noundef zeroext 18, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %279 = load ptr, ptr @hws, align 4
  %280 = getelementptr ptr, ptr %279, i32 34
  store ptr %278, ptr %280, align 4
  %281 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.63, i8 noundef zeroext 2, ptr noundef nonnull @periph2_clk2_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %274, i8 noundef zeroext 20, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %282 = load ptr, ptr @hws, align 4
  %283 = getelementptr ptr, ptr %282, i32 35
  store ptr %281, ptr %283, align 4
  %284 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.64, i8 noundef zeroext 4, ptr noundef nonnull @periph_clk2_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %274, i8 noundef zeroext 12, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %285 = load ptr, ptr @hws, align 4
  %286 = getelementptr ptr, ptr %285, i32 36
  store ptr %284, ptr %286, align 4
  %287 = getelementptr i8, ptr %256, i32 60
  %288 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.65, i8 noundef zeroext 4, ptr noundef nonnull @csi_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %287, i8 noundef zeroext 9, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %289 = load ptr, ptr @hws, align 4
  %290 = getelementptr ptr, ptr %289, i32 37
  store ptr %288, ptr %290, align 4
  %291 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.66, i8 noundef zeroext 4, ptr noundef nonnull @lcdif_axi_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %287, i8 noundef zeroext 14, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %292 = load ptr, ptr @hws, align 4
  %293 = getelementptr ptr, ptr %292, i32 38
  store ptr %291, ptr %293, align 4
  %294 = getelementptr i8, ptr %256, i32 28
  %295 = tail call ptr @imx_clk_hw_fixup_mux(ptr noundef nonnull @.str.67, ptr noundef %294, i8 noundef zeroext 16, i8 noundef zeroext 1, ptr noundef nonnull @usdhc_sels, i32 noundef 2, ptr noundef nonnull @imx_cscmr1_fixup) #5
  %296 = load ptr, ptr @hws, align 4
  %297 = getelementptr ptr, ptr %296, i32 39
  store ptr %295, ptr %297, align 4
  %298 = tail call ptr @imx_clk_hw_fixup_mux(ptr noundef nonnull @.str.68, ptr noundef %294, i8 noundef zeroext 17, i8 noundef zeroext 1, ptr noundef nonnull @usdhc_sels, i32 noundef 2, ptr noundef nonnull @imx_cscmr1_fixup) #5
  %299 = load ptr, ptr @hws, align 4
  %300 = getelementptr ptr, ptr %299, i32 40
  store ptr %298, ptr %300, align 4
  %301 = tail call ptr @imx_clk_hw_fixup_mux(ptr noundef nonnull @.str.69, ptr noundef %294, i8 noundef zeroext 18, i8 noundef zeroext 1, ptr noundef nonnull @usdhc_sels, i32 noundef 2, ptr noundef nonnull @imx_cscmr1_fixup) #5
  %302 = load ptr, ptr @hws, align 4
  %303 = getelementptr ptr, ptr %302, i32 41
  store ptr %301, ptr %303, align 4
  %304 = tail call ptr @imx_clk_hw_fixup_mux(ptr noundef nonnull @.str.70, ptr noundef %294, i8 noundef zeroext 19, i8 noundef zeroext 1, ptr noundef nonnull @usdhc_sels, i32 noundef 2, ptr noundef nonnull @imx_cscmr1_fixup) #5
  %305 = load ptr, ptr @hws, align 4
  %306 = getelementptr ptr, ptr %305, i32 42
  store ptr %304, ptr %306, align 4
  %307 = tail call ptr @imx_clk_hw_fixup_mux(ptr noundef nonnull @.str.71, ptr noundef %294, i8 noundef zeroext 10, i8 noundef zeroext 2, ptr noundef nonnull @ssi_sels, i32 noundef 4, ptr noundef nonnull @imx_cscmr1_fixup) #5
  %308 = load ptr, ptr @hws, align 4
  %309 = getelementptr ptr, ptr %308, i32 43
  store ptr %307, ptr %309, align 4
  %310 = tail call ptr @imx_clk_hw_fixup_mux(ptr noundef nonnull @.str.72, ptr noundef %294, i8 noundef zeroext 12, i8 noundef zeroext 2, ptr noundef nonnull @ssi_sels, i32 noundef 4, ptr noundef nonnull @imx_cscmr1_fixup) #5
  %311 = load ptr, ptr @hws, align 4
  %312 = getelementptr ptr, ptr %311, i32 44
  store ptr %310, ptr %312, align 4
  %313 = tail call ptr @imx_clk_hw_fixup_mux(ptr noundef nonnull @.str.73, ptr noundef %294, i8 noundef zeroext 14, i8 noundef zeroext 2, ptr noundef nonnull @ssi_sels, i32 noundef 4, ptr noundef nonnull @imx_cscmr1_fixup) #5
  %314 = load ptr, ptr @hws, align 4
  %315 = getelementptr ptr, ptr %314, i32 45
  store ptr %313, ptr %315, align 4
  %316 = tail call ptr @imx_clk_hw_fixup_mux(ptr noundef nonnull @.str.74, ptr noundef %294, i8 noundef zeroext 6, i8 noundef zeroext 1, ptr noundef nonnull @perclk_sels, i32 noundef 2, ptr noundef nonnull @imx_cscmr1_fixup) #5
  %317 = load ptr, ptr @hws, align 4
  %318 = getelementptr ptr, ptr %317, i32 46
  store ptr %316, ptr %318, align 4
  %319 = getelementptr i8, ptr %256, i32 52
  %320 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.75, i8 noundef zeroext 6, ptr noundef nonnull @pxp_axi_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %319, i8 noundef zeroext 6, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %321 = load ptr, ptr @hws, align 4
  %322 = getelementptr ptr, ptr %321, i32 47
  store ptr %320, ptr %322, align 4
  %323 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.76, i8 noundef zeroext 6, ptr noundef nonnull @epdc_axi_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %319, i8 noundef zeroext 15, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %324 = load ptr, ptr @hws, align 4
  %325 = getelementptr ptr, ptr %324, i32 48
  store ptr %323, ptr %325, align 4
  %326 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.77, i8 noundef zeroext 4, ptr noundef nonnull @gpu2d_ovg_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %274, i8 noundef zeroext 4, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %327 = load ptr, ptr @hws, align 4
  %328 = getelementptr ptr, ptr %327, i32 49
  store ptr %326, ptr %328, align 4
  %329 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.78, i8 noundef zeroext 4, ptr noundef nonnull @gpu2d_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %274, i8 noundef zeroext 8, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %330 = load ptr, ptr @hws, align 4
  %331 = getelementptr ptr, ptr %330, i32 50
  store ptr %329, ptr %331, align 4
  %332 = getelementptr i8, ptr %256, i32 56
  %333 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.79, i8 noundef zeroext 6, ptr noundef nonnull @lcdif_pix_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %332, i8 noundef zeroext 6, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %334 = load ptr, ptr @hws, align 4
  %335 = getelementptr ptr, ptr %334, i32 51
  store ptr %333, ptr %335, align 4
  %336 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.80, i8 noundef zeroext 6, ptr noundef nonnull @epdc_pix_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %332, i8 noundef zeroext 15, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %337 = load ptr, ptr @hws, align 4
  %338 = getelementptr ptr, ptr %337, i32 52
  store ptr %336, ptr %338, align 4
  %339 = getelementptr i8, ptr %256, i32 48
  %340 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.81, i8 noundef zeroext 4, ptr noundef nonnull @audio_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %339, i8 noundef zeroext 20, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %341 = load ptr, ptr @hws, align 4
  %342 = getelementptr ptr, ptr %341, i32 53
  store ptr %340, ptr %342, align 4
  %343 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.82, i8 noundef zeroext 4, ptr noundef nonnull @audio_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %339, i8 noundef zeroext 7, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %344 = load ptr, ptr @hws, align 4
  %345 = getelementptr ptr, ptr %344, i32 54
  store ptr %343, ptr %345, align 4
  %346 = getelementptr i8, ptr %256, i32 32
  %347 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.83, i8 noundef zeroext 4, ptr noundef nonnull @audio_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %346, i8 noundef zeroext 19, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %348 = load ptr, ptr @hws, align 4
  %349 = getelementptr ptr, ptr %348, i32 55
  store ptr %347, ptr %349, align 4
  %350 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.84, i8 noundef zeroext 2, ptr noundef nonnull @ecspi_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %332, i8 noundef zeroext 18, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %351 = load ptr, ptr @hws, align 4
  %352 = getelementptr ptr, ptr %351, i32 56
  store ptr %350, ptr %352, align 4
  %353 = getelementptr i8, ptr %256, i32 36
  %354 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.85, i8 noundef zeroext 2, ptr noundef nonnull @uart_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %353, i8 noundef zeroext 6, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %355 = load ptr, ptr @hws, align 4
  %356 = getelementptr ptr, ptr %355, i32 57
  store ptr %354, ptr %356, align 4
  %357 = getelementptr i8, ptr %256, i32 72
  %358 = tail call ptr @imx_clk_hw_busy_mux(ptr noundef nonnull @.str.86, ptr noundef %267, i8 noundef zeroext 25, i8 noundef zeroext 1, ptr noundef %357, i8 noundef zeroext 5, ptr noundef nonnull @periph_sels, i32 noundef 2) #5
  %359 = load ptr, ptr @hws, align 4
  %360 = getelementptr ptr, ptr %359, i32 58
  store ptr %358, ptr %360, align 4
  %361 = tail call ptr @imx_clk_hw_busy_mux(ptr noundef nonnull @.str.87, ptr noundef %267, i8 noundef zeroext 26, i8 noundef zeroext 1, ptr noundef %357, i8 noundef zeroext 3, ptr noundef nonnull @periph2_sels, i32 noundef 2) #5
  %362 = load ptr, ptr @hws, align 4
  %363 = getelementptr ptr, ptr %362, i32 59
  store ptr %361, ptr %363, align 4
  %364 = tail call ptr @imx_clk_hw_busy_divider(ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.60, ptr noundef %267, i8 noundef zeroext 16, i8 noundef zeroext 3, ptr noundef %357, i8 noundef zeroext 0) #5
  %365 = load ptr, ptr @hws, align 4
  %366 = getelementptr ptr, ptr %365, i32 60
  store ptr %364, ptr %366, align 4
  %367 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.64, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %267, i8 noundef zeroext 27, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %368 = load ptr, ptr @hws, align 4
  %369 = getelementptr ptr, ptr %368, i32 61
  store ptr %367, ptr %369, align 4
  %370 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.63, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %267, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %371 = load ptr, ptr @hws, align 4
  %372 = getelementptr ptr, ptr %371, i32 62
  store ptr %370, ptr %372, align 4
  %373 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.91, ptr noundef nonnull @.str.92, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %267, i8 noundef zeroext 8, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %374 = load ptr, ptr @hws, align 4
  %375 = getelementptr ptr, ptr %374, i32 63
  store ptr %373, ptr %375, align 4
  %376 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.65, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %287, i8 noundef zeroext 11, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %377 = load ptr, ptr @hws, align 4
  %378 = getelementptr ptr, ptr %377, i32 64
  store ptr %376, ptr %378, align 4
  %379 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.66, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %287, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %380 = load ptr, ptr @hws, align 4
  %381 = getelementptr ptr, ptr %380, i32 65
  store ptr %379, ptr %381, align 4
  %382 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.67, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %353, i8 noundef zeroext 11, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %383 = load ptr, ptr @hws, align 4
  %384 = getelementptr ptr, ptr %383, i32 66
  store ptr %382, ptr %384, align 4
  %385 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.68, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %353, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %386 = load ptr, ptr @hws, align 4
  %387 = getelementptr ptr, ptr %386, i32 67
  store ptr %385, ptr %387, align 4
  %388 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.69, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %353, i8 noundef zeroext 19, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %389 = load ptr, ptr @hws, align 4
  %390 = getelementptr ptr, ptr %389, i32 68
  store ptr %388, ptr %390, align 4
  %391 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.70, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %353, i8 noundef zeroext 22, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %392 = load ptr, ptr @hws, align 4
  %393 = getelementptr ptr, ptr %392, i32 69
  store ptr %391, ptr %393, align 4
  %394 = getelementptr i8, ptr %256, i32 40
  %395 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.71, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %394, i8 noundef zeroext 6, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %396 = load ptr, ptr @hws, align 4
  %397 = getelementptr ptr, ptr %396, i32 70
  store ptr %395, ptr %397, align 4
  %398 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.99, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %394, i8 noundef zeroext 0, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %399 = load ptr, ptr @hws, align 4
  %400 = getelementptr ptr, ptr %399, i32 71
  store ptr %398, ptr %400, align 4
  %401 = getelementptr i8, ptr %256, i32 44
  %402 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.72, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %401, i8 noundef zeroext 6, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %403 = load ptr, ptr @hws, align 4
  %404 = getelementptr ptr, ptr %403, i32 72
  store ptr %402, ptr %404, align 4
  %405 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.101, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %401, i8 noundef zeroext 0, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %406 = load ptr, ptr @hws, align 4
  %407 = getelementptr ptr, ptr %406, i32 73
  store ptr %405, ptr %407, align 4
  %408 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.73, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %394, i8 noundef zeroext 22, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %409 = load ptr, ptr @hws, align 4
  %410 = getelementptr ptr, ptr %409, i32 74
  store ptr %408, ptr %410, align 4
  %411 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.104, ptr noundef nonnull @.str.103, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %394, i8 noundef zeroext 16, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %412 = load ptr, ptr @hws, align 4
  %413 = getelementptr ptr, ptr %412, i32 75
  store ptr %411, ptr %413, align 4
  %414 = tail call ptr @imx_clk_hw_fixup_divider(ptr noundef nonnull @.str.105, ptr noundef nonnull @.str.74, ptr noundef %294, i8 noundef zeroext 0, i8 noundef zeroext 6, ptr noundef nonnull @imx_cscmr1_fixup) #5
  %415 = load ptr, ptr @hws, align 4
  %416 = getelementptr ptr, ptr %415, i32 76
  store ptr %414, ptr %416, align 4
  %417 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.106, ptr noundef nonnull @.str.75, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %319, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %418 = load ptr, ptr @hws, align 4
  %419 = getelementptr ptr, ptr %418, i32 77
  store ptr %417, ptr %419, align 4
  %420 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.107, ptr noundef nonnull @.str.76, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %319, i8 noundef zeroext 12, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %421 = load ptr, ptr @hws, align 4
  %422 = getelementptr ptr, ptr %421, i32 78
  store ptr %420, ptr %422, align 4
  %423 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.77, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %274, i8 noundef zeroext 26, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %424 = load ptr, ptr @hws, align 4
  %425 = getelementptr ptr, ptr %424, i32 79
  store ptr %423, ptr %425, align 4
  %426 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.109, ptr noundef nonnull @.str.78, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %274, i8 noundef zeroext 29, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %427 = load ptr, ptr @hws, align 4
  %428 = getelementptr ptr, ptr %427, i32 80
  store ptr %426, ptr %428, align 4
  %429 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.110, ptr noundef nonnull @.str.79, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %332, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %430 = load ptr, ptr @hws, align 4
  %431 = getelementptr ptr, ptr %430, i32 81
  store ptr %429, ptr %431, align 4
  %432 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.111, ptr noundef nonnull @.str.80, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %332, i8 noundef zeroext 12, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %433 = load ptr, ptr @hws, align 4
  %434 = getelementptr ptr, ptr %433, i32 82
  store ptr %432, ptr %434, align 4
  %435 = tail call ptr @imx_clk_hw_fixup_divider(ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.110, ptr noundef %294, i8 noundef zeroext 20, i8 noundef zeroext 3, ptr noundef nonnull @imx_cscmr1_fixup) #5
  %436 = load ptr, ptr @hws, align 4
  %437 = getelementptr ptr, ptr %436, i32 83
  store ptr %435, ptr %437, align 4
  %438 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.113, ptr noundef nonnull @.str.111, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %274, i8 noundef zeroext 23, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %439 = load ptr, ptr @hws, align 4
  %440 = getelementptr ptr, ptr %439, i32 84
  store ptr %438, ptr %440, align 4
  %441 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.114, ptr noundef nonnull @.str.81, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %339, i8 noundef zeroext 25, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %442 = load ptr, ptr @hws, align 4
  %443 = getelementptr ptr, ptr %442, i32 85
  store ptr %441, ptr %443, align 4
  %444 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.115, ptr noundef nonnull @.str.114, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %339, i8 noundef zeroext 22, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %445 = load ptr, ptr @hws, align 4
  %446 = getelementptr ptr, ptr %445, i32 86
  store ptr %444, ptr %446, align 4
  %447 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.116, ptr noundef nonnull @.str.82, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %339, i8 noundef zeroext 12, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %448 = load ptr, ptr @hws, align 4
  %449 = getelementptr ptr, ptr %448, i32 87
  store ptr %447, ptr %449, align 4
  %450 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.116, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %339, i8 noundef zeroext 9, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %451 = load ptr, ptr @hws, align 4
  %452 = getelementptr ptr, ptr %451, i32 88
  store ptr %450, ptr %452, align 4
  %453 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.118, ptr noundef nonnull @.str.83, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %394, i8 noundef zeroext 9, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %454 = load ptr, ptr @hws, align 4
  %455 = getelementptr ptr, ptr %454, i32 89
  store ptr %453, ptr %455, align 4
  %456 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.119, ptr noundef nonnull @.str.118, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %394, i8 noundef zeroext 25, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %457 = load ptr, ptr @hws, align 4
  %458 = getelementptr ptr, ptr %457, i32 90
  store ptr %456, ptr %458, align 4
  %459 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.120, ptr noundef nonnull @.str.84, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %332, i8 noundef zeroext 19, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %460 = load ptr, ptr @hws, align 4
  %461 = getelementptr ptr, ptr %460, i32 91
  store ptr %459, ptr %461, align 4
  %462 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.85, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %353, i8 noundef zeroext 0, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #5
  %463 = load ptr, ptr @hws, align 4
  %464 = getelementptr ptr, ptr %463, i32 92
  store ptr %462, ptr %464, align 4
  %465 = tail call ptr @imx_clk_hw_busy_divider(ptr noundef nonnull @.str.92, ptr noundef nonnull @.str.86, ptr noundef %267, i8 noundef zeroext 10, i8 noundef zeroext 3, ptr noundef %357, i8 noundef zeroext 1) #5
  %466 = load ptr, ptr @hws, align 4
  %467 = getelementptr ptr, ptr %466, i32 93
  store ptr %465, ptr %467, align 4
  %468 = tail call ptr @imx_clk_hw_busy_divider(ptr noundef nonnull @.str.122, ptr noundef nonnull @.str.87, ptr noundef %267, i8 noundef zeroext 3, i8 noundef zeroext 3, ptr noundef %357, i8 noundef zeroext 2) #5
  %469 = load ptr, ptr @hws, align 4
  %470 = getelementptr ptr, ptr %469, i32 94
  store ptr %468, ptr %470, align 4
  %471 = getelementptr i8, ptr %256, i32 16
  %472 = tail call ptr @imx_clk_hw_busy_divider(ptr noundef nonnull @.str.123, ptr noundef nonnull @.str.58, ptr noundef %471, i8 noundef zeroext 0, i8 noundef zeroext 3, ptr noundef %357, i8 noundef zeroext 16) #5
  %473 = load ptr, ptr @hws, align 4
  %474 = getelementptr ptr, ptr %473, i32 95
  store ptr %472, ptr %474, align 4
  %475 = getelementptr i8, ptr %256, i32 108
  %476 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.124, ptr noundef nonnull @.str.120, i32 noundef 4, ptr noundef %475, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %477 = load ptr, ptr @hws, align 4
  %478 = getelementptr ptr, ptr %477, i32 96
  store ptr %476, ptr %478, align 4
  %479 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.125, ptr noundef nonnull @.str.120, i32 noundef 4, ptr noundef %475, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %480 = load ptr, ptr @hws, align 4
  %481 = getelementptr ptr, ptr %480, i32 97
  store ptr %479, ptr %481, align 4
  %482 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.126, ptr noundef nonnull @.str.120, i32 noundef 4, ptr noundef %475, i8 noundef zeroext 4, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %483 = load ptr, ptr @hws, align 4
  %484 = getelementptr ptr, ptr %483, i32 98
  store ptr %482, ptr %484, align 4
  %485 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.127, ptr noundef nonnull @.str.120, i32 noundef 4, ptr noundef %475, i8 noundef zeroext 6, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %486 = load ptr, ptr @hws, align 4
  %487 = getelementptr ptr, ptr %486, i32 99
  store ptr %485, ptr %487, align 4
  %488 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.128, ptr noundef nonnull @.str.91, i32 noundef 4, ptr noundef %475, i8 noundef zeroext 10, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %489 = load ptr, ptr @hws, align 4
  %490 = getelementptr ptr, ptr %489, i32 135
  store ptr %488, ptr %490, align 4
  %491 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.129, ptr noundef nonnull @.str.105, i32 noundef 4, ptr noundef %475, i8 noundef zeroext 12, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %492 = load ptr, ptr @hws, align 4
  %493 = getelementptr ptr, ptr %492, i32 100
  store ptr %491, ptr %493, align 4
  %494 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.130, ptr noundef nonnull @.str.105, i32 noundef 4, ptr noundef %475, i8 noundef zeroext 14, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %495 = load ptr, ptr @hws, align 4
  %496 = getelementptr ptr, ptr %495, i32 101
  store ptr %494, ptr %496, align 4
  %497 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.119, i32 noundef 4, ptr noundef %475, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %498 = load ptr, ptr @hws, align 4
  %499 = getelementptr ptr, ptr %498, i32 102
  store ptr %497, ptr %499, align 4
  %500 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.132, ptr noundef nonnull @.str.105, i32 noundef 4, ptr noundef %475, i8 noundef zeroext 20, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %501 = load ptr, ptr @hws, align 4
  %502 = getelementptr ptr, ptr %501, i32 103
  store ptr %500, ptr %502, align 4
  %503 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.133, ptr noundef nonnull @.str.105, i32 noundef 4, ptr noundef %475, i8 noundef zeroext 22, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %504 = load ptr, ptr @hws, align 4
  %505 = getelementptr ptr, ptr %504, i32 104
  store ptr %503, ptr %505, align 4
  %506 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.134, ptr noundef nonnull @.str.108, i32 noundef 4, ptr noundef %475, i8 noundef zeroext 26, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %507 = load ptr, ptr @hws, align 4
  %508 = getelementptr ptr, ptr %507, i32 105
  store ptr %506, ptr %508, align 4
  %509 = getelementptr i8, ptr %256, i32 112
  %510 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.135, ptr noundef nonnull @.str.105, i32 noundef 4, ptr noundef %509, i8 noundef zeroext 6, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %511 = load ptr, ptr @hws, align 4
  %512 = getelementptr ptr, ptr %511, i32 106
  store ptr %510, ptr %512, align 4
  %513 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.136, ptr noundef nonnull @.str.105, i32 noundef 4, ptr noundef %509, i8 noundef zeroext 8, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %514 = load ptr, ptr @hws, align 4
  %515 = getelementptr ptr, ptr %514, i32 107
  store ptr %513, ptr %515, align 4
  %516 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.137, ptr noundef nonnull @.str.105, i32 noundef 4, ptr noundef %509, i8 noundef zeroext 10, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %517 = load ptr, ptr @hws, align 4
  %518 = getelementptr ptr, ptr %517, i32 108
  store ptr %516, ptr %518, align 4
  %519 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.138, ptr noundef nonnull @.str.91, i32 noundef 4, ptr noundef %509, i8 noundef zeroext 12, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %520 = load ptr, ptr @hws, align 4
  %521 = getelementptr ptr, ptr %520, i32 109
  store ptr %519, ptr %521, align 4
  %522 = getelementptr i8, ptr %256, i32 116
  %523 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.139, ptr noundef nonnull @.str.93, i32 noundef 4, ptr noundef %522, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %524 = load ptr, ptr @hws, align 4
  %525 = getelementptr ptr, ptr %524, i32 110
  store ptr %523, ptr %525, align 4
  %526 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.140, ptr noundef nonnull @.str.106, i32 noundef 4, ptr noundef %522, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %527 = load ptr, ptr @hws, align 4
  %528 = getelementptr ptr, ptr %527, i32 111
  store ptr %526, ptr %528, align 4
  %529 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.141, ptr noundef nonnull @.str.107, i32 noundef 4, ptr noundef %522, i8 noundef zeroext 4, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %530 = load ptr, ptr @hws, align 4
  %531 = getelementptr ptr, ptr %530, i32 112
  store ptr %529, ptr %531, align 4
  %532 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.142, ptr noundef nonnull @.str.94, i32 noundef 4, ptr noundef %522, i8 noundef zeroext 6, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %533 = load ptr, ptr @hws, align 4
  %534 = getelementptr ptr, ptr %533, i32 113
  store ptr %532, ptr %534, align 4
  %535 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.143, ptr noundef nonnull @.str.112, i32 noundef 4, ptr noundef %522, i8 noundef zeroext 8, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %536 = load ptr, ptr @hws, align 4
  %537 = getelementptr ptr, ptr %536, i32 114
  store ptr %535, ptr %537, align 4
  %538 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.144, ptr noundef nonnull @.str.113, i32 noundef 4, ptr noundef %522, i8 noundef zeroext 10, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %539 = load ptr, ptr @hws, align 4
  %540 = getelementptr ptr, ptr %539, i32 115
  store ptr %538, ptr %540, align 4
  %541 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.145, ptr noundef nonnull @.str.91, i32 noundef 2052, ptr noundef %522, i8 noundef zeroext 24, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %542 = load ptr, ptr @hws, align 4
  %543 = getelementptr ptr, ptr %542, i32 165
  store ptr %541, ptr %543, align 4
  %544 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.146, ptr noundef nonnull @.str.91, i32 noundef 4, ptr noundef %522, i8 noundef zeroext 26, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %545 = load ptr, ptr @hws, align 4
  %546 = getelementptr ptr, ptr %545, i32 166
  store ptr %544, ptr %546, align 4
  %547 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.147, ptr noundef nonnull @.str.88, i32 noundef 4, ptr noundef %522, i8 noundef zeroext 28, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %548 = load ptr, ptr @hws, align 4
  %549 = getelementptr ptr, ptr %548, i32 116
  store ptr %547, ptr %549, align 4
  %550 = getelementptr i8, ptr %256, i32 120
  %551 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.105, i32 noundef 4, ptr noundef %550, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %552 = load ptr, ptr @hws, align 4
  %553 = getelementptr ptr, ptr %552, i32 117
  store ptr %551, ptr %553, align 4
  %554 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.149, ptr noundef nonnull @.str.105, i32 noundef 4, ptr noundef %550, i8 noundef zeroext 18, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %555 = load ptr, ptr @hws, align 4
  %556 = getelementptr ptr, ptr %555, i32 118
  store ptr %554, ptr %556, align 4
  %557 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.150, ptr noundef nonnull @.str.105, i32 noundef 4, ptr noundef %550, i8 noundef zeroext 20, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %558 = load ptr, ptr @hws, align 4
  %559 = getelementptr ptr, ptr %558, i32 119
  store ptr %557, ptr %559, align 4
  %560 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.151, ptr noundef nonnull @.str.105, i32 noundef 4, ptr noundef %550, i8 noundef zeroext 22, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %561 = load ptr, ptr @hws, align 4
  %562 = getelementptr ptr, ptr %561, i32 120
  store ptr %560, ptr %562, align 4
  %563 = getelementptr i8, ptr %256, i32 124
  %564 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.152, ptr noundef nonnull @.str.91, i32 noundef 4, ptr noundef %563, i8 noundef zeroext 6, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %565 = load ptr, ptr @hws, align 4
  %566 = getelementptr ptr, ptr %565, i32 121
  store ptr %564, ptr %566, align 4
  %567 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.153, ptr noundef nonnull @.str.91, i32 noundef 4, ptr noundef %563, i8 noundef zeroext 12, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %568 = load ptr, ptr @hws, align 4
  %569 = getelementptr ptr, ptr %568, i32 134
  store ptr %567, ptr %569, align 4
  %570 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.154, ptr noundef nonnull @.str.115, i32 noundef 4, ptr noundef %563, i8 noundef zeroext 14, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_spdif) #5
  %571 = load ptr, ptr @hws, align 4
  %572 = getelementptr ptr, ptr %571, i32 122
  store ptr %570, ptr %572, align 4
  %573 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.155, ptr noundef nonnull @.str.91, i32 noundef 4, ptr noundef %563, i8 noundef zeroext 14, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_spdif) #5
  %574 = load ptr, ptr @hws, align 4
  %575 = getelementptr ptr, ptr %574, i32 164
  store ptr %573, ptr %575, align 4
  %576 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.156, ptr noundef nonnull @.str.91, i32 noundef 4, ptr noundef %563, i8 noundef zeroext 18, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_ssi1) #5
  %577 = load ptr, ptr @hws, align 4
  %578 = getelementptr ptr, ptr %577, i32 161
  store ptr %576, ptr %578, align 4
  %579 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.157, ptr noundef nonnull @.str.91, i32 noundef 4, ptr noundef %563, i8 noundef zeroext 20, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_ssi2) #5
  %580 = load ptr, ptr @hws, align 4
  %581 = getelementptr ptr, ptr %580, i32 162
  store ptr %579, ptr %581, align 4
  %582 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.158, ptr noundef nonnull @.str.91, i32 noundef 4, ptr noundef %563, i8 noundef zeroext 22, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_ssi3) #5
  %583 = load ptr, ptr @hws, align 4
  %584 = getelementptr ptr, ptr %583, i32 163
  store ptr %582, ptr %584, align 4
  %585 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.100, i32 noundef 4, ptr noundef %563, i8 noundef zeroext 18, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_ssi1) #5
  %586 = load ptr, ptr @hws, align 4
  %587 = getelementptr ptr, ptr %586, i32 123
  store ptr %585, ptr %587, align 4
  %588 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.160, ptr noundef nonnull @.str.102, i32 noundef 4, ptr noundef %563, i8 noundef zeroext 20, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_ssi2) #5
  %589 = load ptr, ptr @hws, align 4
  %590 = getelementptr ptr, ptr %589, i32 124
  store ptr %588, ptr %590, align 4
  %591 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.161, ptr noundef nonnull @.str.104, i32 noundef 4, ptr noundef %563, i8 noundef zeroext 22, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_ssi3) #5
  %592 = load ptr, ptr @hws, align 4
  %593 = getelementptr ptr, ptr %592, i32 125
  store ptr %591, ptr %593, align 4
  %594 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.162, ptr noundef nonnull @.str.91, i32 noundef 4, ptr noundef %563, i8 noundef zeroext 24, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %595 = load ptr, ptr @hws, align 4
  %596 = getelementptr ptr, ptr %595, i32 126
  store ptr %594, ptr %596, align 4
  %597 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.163, ptr noundef nonnull @.str.121, i32 noundef 4, ptr noundef %563, i8 noundef zeroext 26, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %598 = load ptr, ptr @hws, align 4
  %599 = getelementptr ptr, ptr %598, i32 127
  store ptr %597, ptr %599, align 4
  %600 = getelementptr i8, ptr %256, i32 128
  %601 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.164, ptr noundef nonnull @.str.91, i32 noundef 4, ptr noundef %600, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %602 = load ptr, ptr @hws, align 4
  %603 = getelementptr ptr, ptr %602, i32 128
  store ptr %601, ptr %603, align 4
  %604 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.165, ptr noundef nonnull @.str.95, i32 noundef 4, ptr noundef %600, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %605 = load ptr, ptr @hws, align 4
  %606 = getelementptr ptr, ptr %605, i32 129
  store ptr %604, ptr %606, align 4
  %607 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.166, ptr noundef nonnull @.str.96, i32 noundef 4, ptr noundef %600, i8 noundef zeroext 4, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %608 = load ptr, ptr @hws, align 4
  %609 = getelementptr ptr, ptr %608, i32 130
  store ptr %607, ptr %609, align 4
  %610 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.167, ptr noundef nonnull @.str.97, i32 noundef 4, ptr noundef %600, i8 noundef zeroext 6, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %611 = load ptr, ptr @hws, align 4
  %612 = getelementptr ptr, ptr %611, i32 131
  store ptr %610, ptr %612, align 4
  %613 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.168, ptr noundef nonnull @.str.98, i32 noundef 4, ptr noundef %600, i8 noundef zeroext 8, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #5
  %614 = load ptr, ptr @hws, align 4
  %615 = getelementptr ptr, ptr %614, i32 132
  store ptr %613, ptr %615, align 4
  tail call void @imx_mmdc_mask_handshake(ptr noundef %256, i32 noundef 0) #5
  %616 = load ptr, ptr @hws, align 4
  tail call void @imx_check_clk_hws(ptr noundef %616, i32 noundef 167) #5
  %617 = load ptr, ptr @clk_hw_data, align 4
  %618 = tail call i32 @of_clk_add_hw_provider(ptr noundef %0, ptr noundef nonnull @of_clk_hw_onecell_get, ptr noundef %617) #5
  %619 = load ptr, ptr @hws, align 4
  %620 = getelementptr ptr, ptr %619, i32 93
  %621 = load ptr, ptr %620, align 4
  %622 = getelementptr inbounds %struct.clk_hw, ptr %621, i32 0, i32 1
  %623 = load ptr, ptr %622, align 4
  %624 = tail call i32 @clk_set_rate(ptr noundef %623, i32 noundef 132000000) #5
  %625 = icmp eq i32 %624, 0
  br i1 %625, label %628, label %626

626:                                              ; preds = %259
  %627 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.169, ptr noundef nonnull @__func__.imx6sl_clocks_init, i32 noundef %624) #7
  br label %628

628:                                              ; preds = %626, %259
  %629 = load ptr, ptr @hws, align 4
  %630 = getelementptr ptr, ptr %629, i32 12
  %631 = load ptr, ptr %630, align 4
  %632 = getelementptr inbounds %struct.clk_hw, ptr %631, i32 0, i32 1
  %633 = load ptr, ptr %632, align 4
  %634 = tail call i32 @clk_prepare(ptr noundef %633) #5
  %635 = icmp eq i32 %634, 0
  br i1 %635, label %636, label %640

636:                                              ; preds = %628
  %637 = tail call i32 @clk_enable(ptr noundef %633) #5
  %638 = icmp eq i32 %637, 0
  br i1 %638, label %640, label %639

639:                                              ; preds = %636
  tail call void @clk_unprepare(ptr noundef %633) #5
  br label %640

640:                                              ; preds = %639, %636, %628
  %641 = load ptr, ptr @hws, align 4
  %642 = getelementptr ptr, ptr %641, i32 13
  %643 = load ptr, ptr %642, align 4
  %644 = getelementptr inbounds %struct.clk_hw, ptr %643, i32 0, i32 1
  %645 = load ptr, ptr %644, align 4
  %646 = tail call i32 @clk_prepare(ptr noundef %645) #5
  %647 = icmp eq i32 %646, 0
  br i1 %647, label %648, label %652

648:                                              ; preds = %640
  %649 = tail call i32 @clk_enable(ptr noundef %645) #5
  %650 = icmp eq i32 %649, 0
  br i1 %650, label %652, label %651

651:                                              ; preds = %648
  tail call void @clk_unprepare(ptr noundef %645) #5
  br label %652

652:                                              ; preds = %651, %648, %640
  %653 = load ptr, ptr @hws, align 4
  %654 = getelementptr ptr, ptr %653, i32 53
  %655 = load ptr, ptr %654, align 4
  %656 = getelementptr inbounds %struct.clk_hw, ptr %655, i32 0, i32 1
  %657 = load ptr, ptr %656, align 4
  %658 = getelementptr ptr, ptr %653, i32 24
  %659 = load ptr, ptr %658, align 4
  %660 = getelementptr inbounds %struct.clk_hw, ptr %659, i32 0, i32 1
  %661 = load ptr, ptr %660, align 4
  %662 = tail call i32 @clk_set_parent(ptr noundef %657, ptr noundef %661) #5
  %663 = load ptr, ptr @hws, align 4
  %664 = getelementptr ptr, ptr %663, i32 51
  %665 = load ptr, ptr %664, align 4
  %666 = getelementptr inbounds %struct.clk_hw, ptr %665, i32 0, i32 1
  %667 = load ptr, ptr %666, align 4
  %668 = getelementptr ptr, ptr %663, i32 16
  %669 = load ptr, ptr %668, align 4
  %670 = getelementptr inbounds %struct.clk_hw, ptr %669, i32 0, i32 1
  %671 = load ptr, ptr %670, align 4
  %672 = tail call i32 @clk_set_parent(ptr noundef %667, ptr noundef %671) #5
  %673 = load ptr, ptr @hws, align 4
  %674 = getelementptr ptr, ptr %673, i32 38
  %675 = load ptr, ptr %674, align 4
  %676 = getelementptr inbounds %struct.clk_hw, ptr %675, i32 0, i32 1
  %677 = load ptr, ptr %676, align 4
  %678 = getelementptr ptr, ptr %673, i32 20
  %679 = load ptr, ptr %678, align 4
  %680 = getelementptr inbounds %struct.clk_hw, ptr %679, i32 0, i32 1
  %681 = load ptr, ptr %680, align 4
  %682 = tail call i32 @clk_set_parent(ptr noundef %677, ptr noundef %681) #5
  tail call void @imx_register_uart_clocks(i32 noundef 2) #5
  br label %683

683:                                              ; preds = %652, %5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @imx_obtain_fixed_clock_hw(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @imx_clk_hw_pllv3(i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_parent(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @imx_clk_hw_gate_exclusive(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_hw_register_divider(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @imx_clk_hw_pfd(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @imx_clk_hw_fixup_mux(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @imx_cscmr1_fixup(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @imx_clk_hw_busy_mux(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @imx_clk_hw_busy_divider(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @imx_clk_hw_fixup_divider(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @imx_mmdc_mask_handshake(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @imx_check_clk_hws(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_hw_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_hw_onecell_get(ptr noundef, ptr noundef) #2

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
declare dso_local ptr @__clk_hw_register_mux(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_hw_register_gate(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_register_fixed_factor(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_register_gate2(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind allocsize(2) }
attributes #7 = { cold nounwind }

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
!8 = !{i64 3017392}
!9 = !{i64 3016974}
!10 = !{!"branch_weights", i32 1, i32 2000}
