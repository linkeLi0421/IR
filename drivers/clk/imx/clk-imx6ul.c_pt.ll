; ModuleID = '/llk/IR/drivers/clk/imx/clk-imx6ul.c_pt.bc'
source_filename = "../drivers/clk/imx/clk-imx6ul.c"
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

@__of_table_imx6ul = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx6ul-ccm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx6ul_clocks_init }, section "__clk_of_table", align 4
@clk_hw_data = internal unnamed_addr global ptr null, align 4
@.str = private unnamed_addr constant [29 x i8] c"drivers/clk/imx/clk-imx6ul.c\00", align 1
@hws = internal unnamed_addr global ptr null, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"dummy\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"ckil\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"osc\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"ipp_di0\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"ipp_di1\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"fsl,imx6ul-anatop\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"pll1_bypass_src\00", align 1
@pll_bypass_src_sels = internal global [2 x ptr] [ptr @.str.3, ptr @.str.1], align 4
@.str.8 = private unnamed_addr constant [16 x i8] c"pll2_bypass_src\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"pll3_bypass_src\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"pll4_bypass_src\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"pll5_bypass_src\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"pll6_bypass_src\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"pll7_bypass_src\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"pll1\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"pll2\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"pll3\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"pll4\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"pll5\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"pll6\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"pll7\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"pll1_bypass\00", align 1
@pll1_bypass_sels = internal global [2 x ptr] [ptr @.str.14, ptr @.str.7], align 4
@.str.22 = private unnamed_addr constant [12 x i8] c"pll2_bypass\00", align 1
@pll2_bypass_sels = internal global [2 x ptr] [ptr @.str.15, ptr @.str.8], align 4
@.str.23 = private unnamed_addr constant [12 x i8] c"pll3_bypass\00", align 1
@pll3_bypass_sels = internal global [2 x ptr] [ptr @.str.16, ptr @.str.9], align 4
@.str.24 = private unnamed_addr constant [12 x i8] c"pll4_bypass\00", align 1
@pll4_bypass_sels = internal global [2 x ptr] [ptr @.str.17, ptr @.str.10], align 4
@.str.25 = private unnamed_addr constant [12 x i8] c"pll5_bypass\00", align 1
@pll5_bypass_sels = internal global [2 x ptr] [ptr @.str.18, ptr @.str.11], align 4
@.str.26 = private unnamed_addr constant [12 x i8] c"pll6_bypass\00", align 1
@pll6_bypass_sels = internal global [2 x ptr] [ptr @.str.19, ptr @.str.12], align 4
@.str.27 = private unnamed_addr constant [12 x i8] c"pll7_bypass\00", align 1
@pll7_bypass_sels = internal global [2 x ptr] [ptr @.str.20, ptr @.str.13], align 4
@.str.28 = private unnamed_addr constant [9 x i8] c"pll1_sys\00", align 1
@.str.29 = private unnamed_addr constant [9 x i8] c"pll2_bus\00", align 1
@.str.30 = private unnamed_addr constant [13 x i8] c"pll3_usb_otg\00", align 1
@.str.31 = private unnamed_addr constant [11 x i8] c"pll4_audio\00", align 1
@.str.32 = private unnamed_addr constant [11 x i8] c"pll5_video\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"pll6_enet\00", align 1
@.str.34 = private unnamed_addr constant [14 x i8] c"pll7_usb_host\00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c"usbphy1\00", align 1
@.str.36 = private unnamed_addr constant [8 x i8] c"usbphy2\00", align 1
@.str.37 = private unnamed_addr constant [13 x i8] c"usbphy1_gate\00", align 1
@.str.38 = private unnamed_addr constant [13 x i8] c"usbphy2_gate\00", align 1
@.str.39 = private unnamed_addr constant [15 x i8] c"pll2_pfd0_352m\00", align 1
@.str.40 = private unnamed_addr constant [15 x i8] c"pll2_pfd1_594m\00", align 1
@.str.41 = private unnamed_addr constant [15 x i8] c"pll2_pfd2_396m\00", align 1
@.str.42 = private unnamed_addr constant [15 x i8] c"pll2_pfd3_594m\00", align 1
@.str.43 = private unnamed_addr constant [15 x i8] c"pll3_pfd0_720m\00", align 1
@.str.44 = private unnamed_addr constant [15 x i8] c"pll3_pfd1_540m\00", align 1
@.str.45 = private unnamed_addr constant [15 x i8] c"pll3_pfd2_508m\00", align 1
@.str.46 = private unnamed_addr constant [15 x i8] c"pll3_pfd3_454m\00", align 1
@.str.47 = private unnamed_addr constant [9 x i8] c"enet_ref\00", align 1
@clk_enet_ref_table = internal constant [5 x %struct.clk_div_table] [%struct.clk_div_table { i32 0, i32 20 }, %struct.clk_div_table { i32 1, i32 10 }, %struct.clk_div_table { i32 2, i32 5 }, %struct.clk_div_table { i32 3, i32 4 }, %struct.clk_div_table zeroinitializer], align 4
@imx_ccm_lock = external dso_local global %struct.spinlock, align 4
@.str.48 = private unnamed_addr constant [10 x i8] c"enet2_ref\00", align 1
@.str.49 = private unnamed_addr constant [14 x i8] c"enet_ref_125m\00", align 1
@.str.50 = private unnamed_addr constant [13 x i8] c"enet_ptp_ref\00", align 1
@.str.51 = private unnamed_addr constant [9 x i8] c"enet_ptp\00", align 1
@.str.52 = private unnamed_addr constant [14 x i8] c"pll4_post_div\00", align 1
@post_div_table = internal constant [4 x %struct.clk_div_table] [%struct.clk_div_table { i32 2, i32 1 }, %struct.clk_div_table { i32 1, i32 2 }, %struct.clk_div_table { i32 0, i32 4 }, %struct.clk_div_table zeroinitializer], align 4
@.str.53 = private unnamed_addr constant [15 x i8] c"pll4_audio_div\00", align 1
@.str.54 = private unnamed_addr constant [14 x i8] c"pll5_post_div\00", align 1
@.str.55 = private unnamed_addr constant [15 x i8] c"pll5_video_div\00", align 1
@video_div_table = internal constant [5 x %struct.clk_div_table] [%struct.clk_div_table { i32 0, i32 1 }, %struct.clk_div_table { i32 1, i32 2 }, %struct.clk_div_table { i32 2, i32 1 }, %struct.clk_div_table { i32 3, i32 4 }, %struct.clk_div_table zeroinitializer], align 4
@.str.56 = private unnamed_addr constant [10 x i8] c"pll2_198m\00", align 1
@.str.57 = private unnamed_addr constant [9 x i8] c"pll3_80m\00", align 1
@.str.58 = private unnamed_addr constant [9 x i8] c"pll3_60m\00", align 1
@.str.59 = private unnamed_addr constant [7 x i8] c"gpt_3m\00", align 1
@.str.60 = private unnamed_addr constant [18 x i8] c"ca7_secondary_sel\00", align 1
@ca7_secondary_sels = internal global [2 x ptr] [ptr @.str.41, ptr @.str.29], align 4
@.str.61 = private unnamed_addr constant [5 x i8] c"step\00", align 1
@step_sels = internal global [2 x ptr] [ptr @.str.3, ptr @.str.60], align 4
@.str.62 = private unnamed_addr constant [8 x i8] c"pll1_sw\00", align 1
@pll1_sw_sels = internal global [2 x ptr] [ptr @.str.28, ptr @.str.61], align 4
@.str.63 = private unnamed_addr constant [12 x i8] c"axi_alt_sel\00", align 1
@axi_alt_sels = internal global [2 x ptr] [ptr @.str.41, ptr @.str.44], align 4
@.str.64 = private unnamed_addr constant [8 x i8] c"axi_sel\00", align 1
@axi_sels = internal global [2 x ptr] [ptr @.str.102, ptr @.str.63], align 4
@.str.65 = private unnamed_addr constant [11 x i8] c"periph_pre\00", align 1
@periph_pre_sels = internal global [4 x ptr] [ptr @.str.29, ptr @.str.41, ptr @.str.39, ptr @.str.56], align 4
@.str.66 = private unnamed_addr constant [12 x i8] c"periph2_pre\00", align 1
@periph2_pre_sels = internal global [4 x ptr] [ptr @.str.29, ptr @.str.41, ptr @.str.39, ptr @.str.53], align 4
@.str.67 = private unnamed_addr constant [16 x i8] c"periph_clk2_sel\00", align 1
@periph_clk2_sels = internal global [3 x ptr] [ptr @.str.30, ptr @.str.3, ptr @.str.8], align 4
@.str.68 = private unnamed_addr constant [17 x i8] c"periph2_clk2_sel\00", align 1
@periph2_clk2_sels = internal global [2 x ptr] [ptr @.str.30, ptr @.str.3], align 4
@.str.69 = private unnamed_addr constant [13 x i8] c"eim_slow_sel\00", align 1
@eim_slow_sels = internal global [4 x ptr] [ptr @.str.187, ptr @.str.30, ptr @.str.41, ptr @.str.43], align 4
@.str.70 = private unnamed_addr constant [9 x i8] c"gpmi_sel\00", align 1
@gpmi_sels = internal global [2 x ptr] [ptr @.str.41, ptr @.str.39], align 4
@.str.71 = private unnamed_addr constant [8 x i8] c"bch_sel\00", align 1
@bch_sels = internal global [2 x ptr] [ptr @.str.41, ptr @.str.39], align 4
@.str.72 = private unnamed_addr constant [11 x i8] c"usdhc2_sel\00", align 1
@usdhc_sels = internal global [2 x ptr] [ptr @.str.41, ptr @.str.39], align 4
@.str.73 = private unnamed_addr constant [11 x i8] c"usdhc1_sel\00", align 1
@.str.74 = private unnamed_addr constant [9 x i8] c"sai3_sel\00", align 1
@sai_sels = internal global [3 x ptr] [ptr @.str.45, ptr @.str.55, ptr @.str.53], align 4
@.str.75 = private unnamed_addr constant [9 x i8] c"sai2_sel\00", align 1
@.str.76 = private unnamed_addr constant [9 x i8] c"sai1_sel\00", align 1
@.str.77 = private unnamed_addr constant [10 x i8] c"qspi1_sel\00", align 1
@qspi1_sels = internal global [6 x ptr] [ptr @.str.30, ptr @.str.39, ptr @.str.41, ptr @.str.29, ptr @.str.46, ptr @.str.45], align 4
@.str.78 = private unnamed_addr constant [11 x i8] c"perclk_sel\00", align 1
@perclk_sels = internal global [2 x ptr] [ptr @.str.106, ptr @.str.3], align 4
@.str.79 = private unnamed_addr constant [8 x i8] c"can_sel\00", align 1
@can_sels = internal global [4 x ptr] [ptr @.str.58, ptr @.str.3, ptr @.str.57, ptr @.str.1], align 4
@.str.80 = private unnamed_addr constant [9 x i8] c"esai_sel\00", align 1
@esai_sels = internal global [4 x ptr] [ptr @.str.53, ptr @.str.45, ptr @.str.55, ptr @.str.30], align 4
@.str.81 = private unnamed_addr constant [9 x i8] c"uart_sel\00", align 1
@uart_sels = internal global [2 x ptr] [ptr @.str.57, ptr @.str.3], align 4
@.str.82 = private unnamed_addr constant [9 x i8] c"enfc_sel\00", align 1
@enfc_sels = internal global [8 x ptr] [ptr @.str.39, ptr @.str.29, ptr @.str.30, ptr @.str.41, ptr @.str.46, ptr @.str.1, ptr @.str.1, ptr @.str.1], align 4
@.str.83 = private unnamed_addr constant [12 x i8] c"ldb_di0_sel\00", align 1
@ldb_di0_sels = internal global [6 x ptr] [ptr @.str.55, ptr @.str.39, ptr @.str.41, ptr @.str.42, ptr @.str.40, ptr @.str.46], align 4
@.str.84 = private unnamed_addr constant [10 x i8] c"spdif_sel\00", align 1
@spdif_sels = internal global [4 x ptr] [ptr @.str.53, ptr @.str.45, ptr @.str.55, ptr @.str.30], align 4
@.str.85 = private unnamed_addr constant [12 x i8] c"sim_pre_sel\00", align 1
@sim_pre_sels = internal global [6 x ptr] [ptr @.str.29, ptr @.str.30, ptr @.str.55, ptr @.str.39, ptr @.str.41, ptr @.str.45], align 4
@.str.86 = private unnamed_addr constant [8 x i8] c"sim_sel\00", align 1
@sim_sels = internal global [5 x ptr] [ptr @.str.131, ptr @.str.4, ptr @.str.5, ptr @.str.93, ptr @.str.94], align 4
@.str.87 = private unnamed_addr constant [13 x i8] c"epdc_pre_sel\00", align 1
@epdc_pre_sels = internal global [6 x ptr] [ptr @.str.29, ptr @.str.30, ptr @.str.55, ptr @.str.39, ptr @.str.41, ptr @.str.45], align 4
@.str.88 = private unnamed_addr constant [9 x i8] c"epdc_sel\00", align 1
@epdc_sels = internal global [5 x ptr] [ptr @.str.132, ptr @.str.4, ptr @.str.5, ptr @.str.93, ptr @.str.94], align 4
@.str.89 = private unnamed_addr constant [10 x i8] c"ecspi_sel\00", align 1
@ecspi_sels = internal global [2 x ptr] [ptr @.str.58, ptr @.str.3], align 4
@.str.90 = private unnamed_addr constant [14 x i8] c"lcdif_pre_sel\00", align 1
@lcdif_pre_sels = internal global [6 x ptr] [ptr @.str.29, ptr @.str.46, ptr @.str.55, ptr @.str.39, ptr @.str.40, ptr @.str.44], align 4
@.str.91 = private unnamed_addr constant [10 x i8] c"lcdif_sel\00", align 1
@lcdif_sels = internal global [5 x ptr] [ptr @.str.108, ptr @.str.4, ptr @.str.5, ptr @.str.93, ptr @.str.94], align 4
@.str.92 = private unnamed_addr constant [8 x i8] c"csi_sel\00", align 1
@csi_sels = internal global [4 x ptr] [ptr @.str.3, ptr @.str.41, ptr @.str.247, ptr @.str.44], align 4
@.str.93 = private unnamed_addr constant [8 x i8] c"ldb_di0\00", align 1
@ldb_di0_div_sels = internal global [2 x ptr] [ptr @.str.98, ptr @.str.99], align 4
@.str.94 = private unnamed_addr constant [8 x i8] c"ldb_di1\00", align 1
@ldb_di1_div_sels = internal global [2 x ptr] [ptr @.str.100, ptr @.str.101], align 4
@.str.95 = private unnamed_addr constant [9 x i8] c"cko1_sel\00", align 1
@cko1_sels = internal global [16 x ptr] [ptr @.str.1, ptr @.str.1, ptr @.str.1, ptr @.str.1, ptr @.str.1, ptr @.str.187, ptr @.str.248, ptr @.str.1, ptr @.str.1, ptr @.str.1, ptr @.str.196, ptr @.str.107, ptr @.str.106, ptr @.str.249, ptr @.str.2, ptr @.str.53], align 4
@.str.96 = private unnamed_addr constant [9 x i8] c"cko2_sel\00", align 1
@cko2_sels = internal global [32 x ptr] [ptr @.str.1, ptr @.str.1, ptr @.str.1, ptr @.str.230, ptr @.str.1, ptr @.str.1, ptr @.str.250, ptr @.str.1, ptr @.str.1, ptr @.str.1, ptr @.str.1, ptr @.str.1, ptr @.str.1, ptr @.str.1, ptr @.str.3, ptr @.str.1, ptr @.str.1, ptr @.str.231, ptr @.str.225, ptr @.str.227, ptr @.str.219, ptr @.str.1, ptr @.str.1, ptr @.str.251, ptr @.str.1, ptr @.str.1, ptr @.str.1, ptr @.str.1, ptr @.str.252, ptr @.str.217, ptr @.str.1, ptr @.str.1], align 4
@.str.97 = private unnamed_addr constant [4 x i8] c"cko\00", align 1
@cko_sels = internal global [2 x ptr] [ptr @.str.243, ptr @.str.244], align 4
@.str.98 = private unnamed_addr constant [16 x i8] c"ldb_di0_div_3_5\00", align 1
@.str.99 = private unnamed_addr constant [14 x i8] c"ldb_di0_div_7\00", align 1
@.str.100 = private unnamed_addr constant [16 x i8] c"ldb_di1_div_3_5\00", align 1
@.str.101 = private unnamed_addr constant [14 x i8] c"ldb_di1_div_7\00", align 1
@.str.102 = private unnamed_addr constant [7 x i8] c"periph\00", align 1
@periph_sels = internal global [2 x ptr] [ptr @.str.65, ptr @.str.104], align 4
@.str.103 = private unnamed_addr constant [8 x i8] c"periph2\00", align 1
@periph2_sels = internal global [2 x ptr] [ptr @.str.66, ptr @.str.105], align 4
@.str.104 = private unnamed_addr constant [12 x i8] c"periph_clk2\00", align 1
@.str.105 = private unnamed_addr constant [13 x i8] c"periph2_clk2\00", align 1
@.str.106 = private unnamed_addr constant [4 x i8] c"ipg\00", align 1
@.str.107 = private unnamed_addr constant [4 x i8] c"ahb\00", align 1
@.str.108 = private unnamed_addr constant [11 x i8] c"lcdif_podf\00", align 1
@.str.109 = private unnamed_addr constant [11 x i8] c"lcdif_pred\00", align 1
@.str.110 = private unnamed_addr constant [11 x i8] c"qspi1_podf\00", align 1
@.str.111 = private unnamed_addr constant [14 x i8] c"eim_slow_podf\00", align 1
@.str.112 = private unnamed_addr constant [7 x i8] c"perclk\00", align 1
@.str.113 = private unnamed_addr constant [9 x i8] c"can_podf\00", align 1
@.str.114 = private unnamed_addr constant [10 x i8] c"gpmi_podf\00", align 1
@.str.115 = private unnamed_addr constant [9 x i8] c"bch_podf\00", align 1
@.str.116 = private unnamed_addr constant [12 x i8] c"usdhc2_podf\00", align 1
@.str.117 = private unnamed_addr constant [12 x i8] c"usdhc1_podf\00", align 1
@.str.118 = private unnamed_addr constant [10 x i8] c"uart_podf\00", align 1
@.str.119 = private unnamed_addr constant [10 x i8] c"sai3_pred\00", align 1
@.str.120 = private unnamed_addr constant [10 x i8] c"sai3_podf\00", align 1
@.str.121 = private unnamed_addr constant [10 x i8] c"sai1_pred\00", align 1
@.str.122 = private unnamed_addr constant [10 x i8] c"sai1_podf\00", align 1
@.str.123 = private unnamed_addr constant [10 x i8] c"esai_pred\00", align 1
@.str.124 = private unnamed_addr constant [10 x i8] c"esai_podf\00", align 1
@.str.125 = private unnamed_addr constant [10 x i8] c"enfc_pred\00", align 1
@.str.126 = private unnamed_addr constant [10 x i8] c"enfc_podf\00", align 1
@.str.127 = private unnamed_addr constant [10 x i8] c"sai2_pred\00", align 1
@.str.128 = private unnamed_addr constant [10 x i8] c"sai2_podf\00", align 1
@.str.129 = private unnamed_addr constant [11 x i8] c"spdif_pred\00", align 1
@.str.130 = private unnamed_addr constant [11 x i8] c"spdif_podf\00", align 1
@.str.131 = private unnamed_addr constant [9 x i8] c"sim_podf\00", align 1
@.str.132 = private unnamed_addr constant [10 x i8] c"epdc_podf\00", align 1
@.str.133 = private unnamed_addr constant [11 x i8] c"ecspi_podf\00", align 1
@.str.134 = private unnamed_addr constant [9 x i8] c"csi_podf\00", align 1
@.str.135 = private unnamed_addr constant [10 x i8] c"cko1_podf\00", align 1
@.str.136 = private unnamed_addr constant [10 x i8] c"cko2_podf\00", align 1
@.str.137 = private unnamed_addr constant [4 x i8] c"arm\00", align 1
@.str.138 = private unnamed_addr constant [10 x i8] c"mmdc_podf\00", align 1
@.str.139 = private unnamed_addr constant [9 x i8] c"axi_podf\00", align 1
@.str.140 = private unnamed_addr constant [9 x i8] c"aips_tz1\00", align 1
@.str.141 = private unnamed_addr constant [9 x i8] c"aips_tz2\00", align 1
@.str.142 = private unnamed_addr constant [9 x i8] c"apbh_dma\00", align 1
@.str.143 = private unnamed_addr constant [9 x i8] c"asrc_ipg\00", align 1
@share_count_asrc = internal global i32 0, align 4
@.str.144 = private unnamed_addr constant [9 x i8] c"asrc_mem\00", align 1
@.str.145 = private unnamed_addr constant [9 x i8] c"caam_mem\00", align 1
@.str.146 = private unnamed_addr constant [10 x i8] c"caam_aclk\00", align 1
@.str.147 = private unnamed_addr constant [9 x i8] c"caam_ipg\00", align 1
@.str.148 = private unnamed_addr constant [4 x i8] c"dcp\00", align 1
@.str.149 = private unnamed_addr constant [5 x i8] c"enet\00", align 1
@.str.150 = private unnamed_addr constant [9 x i8] c"enet_ahb\00", align 1
@.str.151 = private unnamed_addr constant [9 x i8] c"can1_ipg\00", align 1
@.str.152 = private unnamed_addr constant [12 x i8] c"can1_serial\00", align 1
@.str.153 = private unnamed_addr constant [9 x i8] c"can2_ipg\00", align 1
@.str.154 = private unnamed_addr constant [12 x i8] c"can2_serial\00", align 1
@.str.155 = private unnamed_addr constant [9 x i8] c"gpt2_bus\00", align 1
@.str.156 = private unnamed_addr constant [12 x i8] c"gpt2_serial\00", align 1
@.str.157 = private unnamed_addr constant [10 x i8] c"uart2_ipg\00", align 1
@.str.158 = private unnamed_addr constant [13 x i8] c"uart2_serial\00", align 1
@.str.159 = private unnamed_addr constant [9 x i8] c"aips_tz3\00", align 1
@.str.160 = private unnamed_addr constant [6 x i8] c"gpio2\00", align 1
@.str.161 = private unnamed_addr constant [7 x i8] c"ecspi1\00", align 1
@.str.162 = private unnamed_addr constant [7 x i8] c"ecspi2\00", align 1
@.str.163 = private unnamed_addr constant [7 x i8] c"ecspi3\00", align 1
@.str.164 = private unnamed_addr constant [7 x i8] c"ecspi4\00", align 1
@.str.165 = private unnamed_addr constant [5 x i8] c"adc2\00", align 1
@.str.166 = private unnamed_addr constant [10 x i8] c"uart3_ipg\00", align 1
@.str.167 = private unnamed_addr constant [13 x i8] c"uart3_serial\00", align 1
@.str.168 = private unnamed_addr constant [6 x i8] c"epit1\00", align 1
@.str.169 = private unnamed_addr constant [6 x i8] c"epit2\00", align 1
@.str.170 = private unnamed_addr constant [5 x i8] c"adc1\00", align 1
@.str.171 = private unnamed_addr constant [9 x i8] c"gpt1_bus\00", align 1
@.str.172 = private unnamed_addr constant [12 x i8] c"gpt1_serial\00", align 1
@.str.173 = private unnamed_addr constant [10 x i8] c"uart4_ipg\00", align 1
@.str.174 = private unnamed_addr constant [13 x i8] c"uart4_serial\00", align 1
@.str.175 = private unnamed_addr constant [6 x i8] c"gpio1\00", align 1
@.str.176 = private unnamed_addr constant [6 x i8] c"gpio5\00", align 1
@.str.177 = private unnamed_addr constant [11 x i8] c"esai_extal\00", align 1
@share_count_esai = internal global i32 0, align 4
@.str.178 = private unnamed_addr constant [9 x i8] c"esai_ipg\00", align 1
@.str.179 = private unnamed_addr constant [9 x i8] c"esai_mem\00", align 1
@.str.180 = private unnamed_addr constant [5 x i8] c"i2c1\00", align 1
@.str.181 = private unnamed_addr constant [5 x i8] c"i2c2\00", align 1
@.str.182 = private unnamed_addr constant [5 x i8] c"i2c3\00", align 1
@.str.183 = private unnamed_addr constant [6 x i8] c"ocotp\00", align 1
@.str.184 = private unnamed_addr constant [7 x i8] c"iomuxc\00", align 1
@.str.185 = private unnamed_addr constant [6 x i8] c"gpio3\00", align 1
@.str.186 = private unnamed_addr constant [10 x i8] c"lcdif_apb\00", align 1
@.str.187 = private unnamed_addr constant [4 x i8] c"axi\00", align 1
@.str.188 = private unnamed_addr constant [4 x i8] c"pxp\00", align 1
@.str.189 = private unnamed_addr constant [4 x i8] c"csi\00", align 1
@.str.190 = private unnamed_addr constant [10 x i8] c"uart5_ipg\00", align 1
@.str.191 = private unnamed_addr constant [13 x i8] c"uart5_serial\00", align 1
@.str.192 = private unnamed_addr constant [10 x i8] c"epdc_aclk\00", align 1
@.str.193 = private unnamed_addr constant [9 x i8] c"epdc_pix\00", align 1
@.str.194 = private unnamed_addr constant [10 x i8] c"uart6_ipg\00", align 1
@.str.195 = private unnamed_addr constant [13 x i8] c"uart6_serial\00", align 1
@.str.196 = private unnamed_addr constant [10 x i8] c"lcdif_pix\00", align 1
@.str.197 = private unnamed_addr constant [6 x i8] c"gpio4\00", align 1
@.str.198 = private unnamed_addr constant [6 x i8] c"qspi1\00", align 1
@.str.199 = private unnamed_addr constant [6 x i8] c"wdog1\00", align 1
@.str.200 = private unnamed_addr constant [13 x i8] c"mmdc_p0_fast\00", align 1
@.str.201 = private unnamed_addr constant [12 x i8] c"mmdc_p0_ipg\00", align 1
@.str.202 = private unnamed_addr constant [12 x i8] c"mmdc_p1_ipg\00", align 1
@.str.203 = private unnamed_addr constant [8 x i8] c"per_bch\00", align 1
@.str.204 = private unnamed_addr constant [5 x i8] c"pwm1\00", align 1
@.str.205 = private unnamed_addr constant [5 x i8] c"pwm2\00", align 1
@.str.206 = private unnamed_addr constant [5 x i8] c"pwm3\00", align 1
@.str.207 = private unnamed_addr constant [5 x i8] c"pwm4\00", align 1
@.str.208 = private unnamed_addr constant [13 x i8] c"gpmi_bch_apb\00", align 1
@.str.209 = private unnamed_addr constant [9 x i8] c"gpmi_bch\00", align 1
@.str.210 = private unnamed_addr constant [8 x i8] c"gpmi_io\00", align 1
@.str.211 = private unnamed_addr constant [9 x i8] c"gpmi_apb\00", align 1
@.str.212 = private unnamed_addr constant [4 x i8] c"rom\00", align 1
@.str.213 = private unnamed_addr constant [5 x i8] c"sdma\00", align 1
@.str.214 = private unnamed_addr constant [4 x i8] c"kpp\00", align 1
@.str.215 = private unnamed_addr constant [6 x i8] c"wdog2\00", align 1
@.str.216 = private unnamed_addr constant [5 x i8] c"spba\00", align 1
@.str.217 = private unnamed_addr constant [6 x i8] c"spdif\00", align 1
@share_count_audio = internal global i32 0, align 4
@.str.218 = private unnamed_addr constant [11 x i8] c"spdif_gclk\00", align 1
@.str.219 = private unnamed_addr constant [5 x i8] c"sai3\00", align 1
@share_count_sai3 = internal global i32 0, align 4
@.str.220 = private unnamed_addr constant [9 x i8] c"sai3_ipg\00", align 1
@.str.221 = private unnamed_addr constant [10 x i8] c"uart1_ipg\00", align 1
@.str.222 = private unnamed_addr constant [13 x i8] c"uart1_serial\00", align 1
@.str.223 = private unnamed_addr constant [10 x i8] c"uart7_ipg\00", align 1
@.str.224 = private unnamed_addr constant [13 x i8] c"uart7_serial\00", align 1
@.str.225 = private unnamed_addr constant [5 x i8] c"sai1\00", align 1
@share_count_sai1 = internal global i32 0, align 4
@.str.226 = private unnamed_addr constant [9 x i8] c"sai1_ipg\00", align 1
@.str.227 = private unnamed_addr constant [5 x i8] c"sai2\00", align 1
@share_count_sai2 = internal global i32 0, align 4
@.str.228 = private unnamed_addr constant [9 x i8] c"sai2_ipg\00", align 1
@.str.229 = private unnamed_addr constant [7 x i8] c"usboh3\00", align 1
@.str.230 = private unnamed_addr constant [7 x i8] c"usdhc1\00", align 1
@.str.231 = private unnamed_addr constant [7 x i8] c"usdhc2\00", align 1
@.str.232 = private unnamed_addr constant [5 x i8] c"sim1\00", align 1
@.str.233 = private unnamed_addr constant [5 x i8] c"sim2\00", align 1
@.str.234 = private unnamed_addr constant [4 x i8] c"eim\00", align 1
@.str.235 = private unnamed_addr constant [5 x i8] c"pwm8\00", align 1
@.str.236 = private unnamed_addr constant [10 x i8] c"uart8_ipg\00", align 1
@.str.237 = private unnamed_addr constant [13 x i8] c"uart8_serial\00", align 1
@.str.238 = private unnamed_addr constant [6 x i8] c"wdog3\00", align 1
@.str.239 = private unnamed_addr constant [5 x i8] c"i2c4\00", align 1
@.str.240 = private unnamed_addr constant [5 x i8] c"pwm5\00", align 1
@.str.241 = private unnamed_addr constant [5 x i8] c"pwm6\00", align 1
@.str.242 = private unnamed_addr constant [5 x i8] c"pwm7\00", align 1
@.str.243 = private unnamed_addr constant [5 x i8] c"cko1\00", align 1
@.str.244 = private unnamed_addr constant [5 x i8] c"cko2\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.245 = private unnamed_addr constant [12 x i8] c"fsl,imx6ull\00", align 1
@.str.246 = private unnamed_addr constant [11 x i8] c"fsl,imx6ul\00", align 1
@.str.247 = private unnamed_addr constant [10 x i8] c"pll3_120m\00", align 1
@.str.248 = private unnamed_addr constant [5 x i8] c"enfc\00", align 1
@.str.249 = private unnamed_addr constant [8 x i8] c"ipg_per\00", align 1
@.str.250 = private unnamed_addr constant [11 x i8] c"ecspi_root\00", align 1
@.str.251 = private unnamed_addr constant [9 x i8] c"can_root\00", align 1
@.str.252 = private unnamed_addr constant [12 x i8] c"uart_serial\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__of_table_imx6ul], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @imx6ul_clocks_init(ptr noundef %0) #0 section ".init.text" {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 1004) #3
  store ptr %3, ptr @clk_hw_data, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %6, !prof !8

5:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 121, i32 noundef 9, ptr noundef null) #4
  br label %1078

6:                                                ; preds = %1
  store i32 250, ptr %3, align 8
  %7 = getelementptr inbounds %struct.clk_hw_onecell_data, ptr %3, i32 0, i32 1
  store ptr %7, ptr @hws, align 4
  %8 = tail call ptr @__clk_hw_register_fixed_rate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.1, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #4
  %9 = load ptr, ptr @hws, align 4
  store ptr %8, ptr %9, align 4
  %10 = tail call ptr @imx_obtain_fixed_clk_hw(ptr noundef %0, ptr noundef nonnull @.str.2) #4
  %11 = load ptr, ptr @hws, align 4
  %12 = getelementptr ptr, ptr %11, i32 1
  store ptr %10, ptr %12, align 4
  %13 = tail call ptr @imx_obtain_fixed_clk_hw(ptr noundef %0, ptr noundef nonnull @.str.3) #4
  %14 = load ptr, ptr @hws, align 4
  %15 = getelementptr ptr, ptr %14, i32 3
  store ptr %13, ptr %15, align 4
  %16 = tail call ptr @imx_obtain_fixed_clk_hw(ptr noundef %0, ptr noundef nonnull @.str.4) #4
  %17 = load ptr, ptr @hws, align 4
  %18 = getelementptr ptr, ptr %17, i32 217
  store ptr %16, ptr %18, align 4
  %19 = tail call ptr @imx_obtain_fixed_clk_hw(ptr noundef %0, ptr noundef nonnull @.str.5) #4
  %20 = load ptr, ptr @hws, align 4
  %21 = getelementptr ptr, ptr %20, i32 218
  store ptr %19, ptr %21, align 4
  %22 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.6) #4
  %23 = tail call ptr @of_iomap(ptr noundef %22, i32 noundef 0) #4
  tail call void @of_node_put(ptr noundef %22) #4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %26, !prof !8

25:                                               ; preds = %6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 139, i32 noundef 9, ptr noundef null) #4
  br label %26

26:                                               ; preds = %25, %6
  %27 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.7, i8 noundef zeroext 2, ptr noundef nonnull @pll_bypass_src_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %23, i8 noundef zeroext 14, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %28 = load ptr, ptr @hws, align 4
  %29 = getelementptr ptr, ptr %28, i32 4
  store ptr %27, ptr %29, align 4
  %30 = getelementptr i8, ptr %23, i32 48
  %31 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.8, i8 noundef zeroext 2, ptr noundef nonnull @pll_bypass_src_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %30, i8 noundef zeroext 14, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %32 = load ptr, ptr @hws, align 4
  %33 = getelementptr ptr, ptr %32, i32 5
  store ptr %31, ptr %33, align 4
  %34 = getelementptr i8, ptr %23, i32 16
  %35 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.9, i8 noundef zeroext 2, ptr noundef nonnull @pll_bypass_src_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %34, i8 noundef zeroext 14, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %36 = load ptr, ptr @hws, align 4
  %37 = getelementptr ptr, ptr %36, i32 6
  store ptr %35, ptr %37, align 4
  %38 = getelementptr i8, ptr %23, i32 112
  %39 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.10, i8 noundef zeroext 2, ptr noundef nonnull @pll_bypass_src_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %38, i8 noundef zeroext 14, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %40 = load ptr, ptr @hws, align 4
  %41 = getelementptr ptr, ptr %40, i32 7
  store ptr %39, ptr %41, align 4
  %42 = getelementptr i8, ptr %23, i32 160
  %43 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.11, i8 noundef zeroext 2, ptr noundef nonnull @pll_bypass_src_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %42, i8 noundef zeroext 14, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %44 = load ptr, ptr @hws, align 4
  %45 = getelementptr ptr, ptr %44, i32 8
  store ptr %43, ptr %45, align 4
  %46 = getelementptr i8, ptr %23, i32 224
  %47 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.12, i8 noundef zeroext 2, ptr noundef nonnull @pll_bypass_src_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %46, i8 noundef zeroext 14, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %48 = load ptr, ptr @hws, align 4
  %49 = getelementptr ptr, ptr %48, i32 9
  store ptr %47, ptr %49, align 4
  %50 = getelementptr i8, ptr %23, i32 32
  %51 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.13, i8 noundef zeroext 2, ptr noundef nonnull @pll_bypass_src_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %50, i8 noundef zeroext 14, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %52 = load ptr, ptr @hws, align 4
  %53 = getelementptr ptr, ptr %52, i32 10
  store ptr %51, ptr %53, align 4
  %54 = tail call ptr @imx_clk_hw_pllv3(i32 noundef 1, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.3, ptr noundef %23, i32 noundef 127) #4
  %55 = load ptr, ptr @hws, align 4
  %56 = getelementptr ptr, ptr %55, i32 11
  store ptr %54, ptr %56, align 4
  %57 = tail call ptr @imx_clk_hw_pllv3(i32 noundef 0, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.3, ptr noundef %30, i32 noundef 1) #4
  %58 = load ptr, ptr @hws, align 4
  %59 = getelementptr ptr, ptr %58, i32 12
  store ptr %57, ptr %59, align 4
  %60 = tail call ptr @imx_clk_hw_pllv3(i32 noundef 2, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.3, ptr noundef %34, i32 noundef 3) #4
  %61 = load ptr, ptr @hws, align 4
  %62 = getelementptr ptr, ptr %61, i32 13
  store ptr %60, ptr %62, align 4
  %63 = tail call ptr @imx_clk_hw_pllv3(i32 noundef 4, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.3, ptr noundef %38, i32 noundef 127) #4
  %64 = load ptr, ptr @hws, align 4
  %65 = getelementptr ptr, ptr %64, i32 14
  store ptr %63, ptr %65, align 4
  %66 = tail call ptr @imx_clk_hw_pllv3(i32 noundef 4, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.3, ptr noundef %42, i32 noundef 127) #4
  %67 = load ptr, ptr @hws, align 4
  %68 = getelementptr ptr, ptr %67, i32 15
  store ptr %66, ptr %68, align 4
  %69 = tail call ptr @imx_clk_hw_pllv3(i32 noundef 5, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.3, ptr noundef %46, i32 noundef 3) #4
  %70 = load ptr, ptr @hws, align 4
  %71 = getelementptr ptr, ptr %70, i32 16
  store ptr %69, ptr %71, align 4
  %72 = tail call ptr @imx_clk_hw_pllv3(i32 noundef 2, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.3, ptr noundef %50, i32 noundef 3) #4
  %73 = load ptr, ptr @hws, align 4
  %74 = getelementptr ptr, ptr %73, i32 17
  store ptr %72, ptr %74, align 4
  %75 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.21, i8 noundef zeroext 2, ptr noundef nonnull @pll1_bypass_sels, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %23, i8 noundef zeroext 16, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %76 = load ptr, ptr @hws, align 4
  %77 = getelementptr ptr, ptr %76, i32 18
  store ptr %75, ptr %77, align 4
  %78 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.22, i8 noundef zeroext 2, ptr noundef nonnull @pll2_bypass_sels, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %30, i8 noundef zeroext 16, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %79 = load ptr, ptr @hws, align 4
  %80 = getelementptr ptr, ptr %79, i32 19
  store ptr %78, ptr %80, align 4
  %81 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.23, i8 noundef zeroext 2, ptr noundef nonnull @pll3_bypass_sels, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %34, i8 noundef zeroext 16, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %82 = load ptr, ptr @hws, align 4
  %83 = getelementptr ptr, ptr %82, i32 20
  store ptr %81, ptr %83, align 4
  %84 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.24, i8 noundef zeroext 2, ptr noundef nonnull @pll4_bypass_sels, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %38, i8 noundef zeroext 16, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %85 = load ptr, ptr @hws, align 4
  %86 = getelementptr ptr, ptr %85, i32 21
  store ptr %84, ptr %86, align 4
  %87 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.25, i8 noundef zeroext 2, ptr noundef nonnull @pll5_bypass_sels, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %42, i8 noundef zeroext 16, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %88 = load ptr, ptr @hws, align 4
  %89 = getelementptr ptr, ptr %88, i32 22
  store ptr %87, ptr %89, align 4
  %90 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.26, i8 noundef zeroext 2, ptr noundef nonnull @pll6_bypass_sels, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %46, i8 noundef zeroext 16, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %91 = load ptr, ptr @hws, align 4
  %92 = getelementptr ptr, ptr %91, i32 23
  store ptr %90, ptr %92, align 4
  %93 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.27, i8 noundef zeroext 2, ptr noundef nonnull @pll7_bypass_sels, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %50, i8 noundef zeroext 16, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %94 = load ptr, ptr @hws, align 4
  %95 = getelementptr ptr, ptr %94, i32 24
  store ptr %93, ptr %95, align 4
  %96 = getelementptr ptr, ptr %94, i32 18
  %97 = load ptr, ptr %96, align 4
  %98 = getelementptr inbounds %struct.clk_hw, ptr %97, i32 0, i32 1
  %99 = load ptr, ptr %98, align 4
  %100 = getelementptr ptr, ptr %94, i32 11
  %101 = load ptr, ptr %100, align 4
  %102 = getelementptr inbounds %struct.clk_hw, ptr %101, i32 0, i32 1
  %103 = load ptr, ptr %102, align 4
  %104 = tail call i32 @clk_set_parent(ptr noundef %99, ptr noundef %103) #4
  %105 = load ptr, ptr @hws, align 4
  %106 = getelementptr ptr, ptr %105, i32 19
  %107 = load ptr, ptr %106, align 4
  %108 = getelementptr inbounds %struct.clk_hw, ptr %107, i32 0, i32 1
  %109 = load ptr, ptr %108, align 4
  %110 = getelementptr ptr, ptr %105, i32 12
  %111 = load ptr, ptr %110, align 4
  %112 = getelementptr inbounds %struct.clk_hw, ptr %111, i32 0, i32 1
  %113 = load ptr, ptr %112, align 4
  %114 = tail call i32 @clk_set_parent(ptr noundef %109, ptr noundef %113) #4
  %115 = load ptr, ptr @hws, align 4
  %116 = getelementptr ptr, ptr %115, i32 20
  %117 = load ptr, ptr %116, align 4
  %118 = getelementptr inbounds %struct.clk_hw, ptr %117, i32 0, i32 1
  %119 = load ptr, ptr %118, align 4
  %120 = getelementptr ptr, ptr %115, i32 13
  %121 = load ptr, ptr %120, align 4
  %122 = getelementptr inbounds %struct.clk_hw, ptr %121, i32 0, i32 1
  %123 = load ptr, ptr %122, align 4
  %124 = tail call i32 @clk_set_parent(ptr noundef %119, ptr noundef %123) #4
  %125 = load ptr, ptr @hws, align 4
  %126 = getelementptr ptr, ptr %125, i32 21
  %127 = load ptr, ptr %126, align 4
  %128 = getelementptr inbounds %struct.clk_hw, ptr %127, i32 0, i32 1
  %129 = load ptr, ptr %128, align 4
  %130 = getelementptr ptr, ptr %125, i32 14
  %131 = load ptr, ptr %130, align 4
  %132 = getelementptr inbounds %struct.clk_hw, ptr %131, i32 0, i32 1
  %133 = load ptr, ptr %132, align 4
  %134 = tail call i32 @clk_set_parent(ptr noundef %129, ptr noundef %133) #4
  %135 = load ptr, ptr @hws, align 4
  %136 = getelementptr ptr, ptr %135, i32 22
  %137 = load ptr, ptr %136, align 4
  %138 = getelementptr inbounds %struct.clk_hw, ptr %137, i32 0, i32 1
  %139 = load ptr, ptr %138, align 4
  %140 = getelementptr ptr, ptr %135, i32 15
  %141 = load ptr, ptr %140, align 4
  %142 = getelementptr inbounds %struct.clk_hw, ptr %141, i32 0, i32 1
  %143 = load ptr, ptr %142, align 4
  %144 = tail call i32 @clk_set_parent(ptr noundef %139, ptr noundef %143) #4
  %145 = load ptr, ptr @hws, align 4
  %146 = getelementptr ptr, ptr %145, i32 23
  %147 = load ptr, ptr %146, align 4
  %148 = getelementptr inbounds %struct.clk_hw, ptr %147, i32 0, i32 1
  %149 = load ptr, ptr %148, align 4
  %150 = getelementptr ptr, ptr %145, i32 16
  %151 = load ptr, ptr %150, align 4
  %152 = getelementptr inbounds %struct.clk_hw, ptr %151, i32 0, i32 1
  %153 = load ptr, ptr %152, align 4
  %154 = tail call i32 @clk_set_parent(ptr noundef %149, ptr noundef %153) #4
  %155 = load ptr, ptr @hws, align 4
  %156 = getelementptr ptr, ptr %155, i32 24
  %157 = load ptr, ptr %156, align 4
  %158 = getelementptr inbounds %struct.clk_hw, ptr %157, i32 0, i32 1
  %159 = load ptr, ptr %158, align 4
  %160 = getelementptr ptr, ptr %155, i32 17
  %161 = load ptr, ptr %160, align 4
  %162 = getelementptr inbounds %struct.clk_hw, ptr %161, i32 0, i32 1
  %163 = load ptr, ptr %162, align 4
  %164 = tail call i32 @clk_set_parent(ptr noundef %159, ptr noundef %163) #4
  %165 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.21, i32 noundef 4, i32 noundef 1, i32 noundef 1) #4
  %166 = load ptr, ptr @hws, align 4
  %167 = getelementptr ptr, ptr %166, i32 25
  store ptr %165, ptr %167, align 4
  %168 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.22, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %30, i8 noundef zeroext 13, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %169 = load ptr, ptr @hws, align 4
  %170 = getelementptr ptr, ptr %169, i32 26
  store ptr %168, ptr %170, align 4
  %171 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.23, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %34, i8 noundef zeroext 13, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %172 = load ptr, ptr @hws, align 4
  %173 = getelementptr ptr, ptr %172, i32 27
  store ptr %171, ptr %173, align 4
  %174 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.24, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %38, i8 noundef zeroext 13, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %175 = load ptr, ptr @hws, align 4
  %176 = getelementptr ptr, ptr %175, i32 28
  store ptr %174, ptr %176, align 4
  %177 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.25, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %42, i8 noundef zeroext 13, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %178 = load ptr, ptr @hws, align 4
  %179 = getelementptr ptr, ptr %178, i32 29
  store ptr %177, ptr %179, align 4
  %180 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.26, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %46, i8 noundef zeroext 13, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %181 = load ptr, ptr @hws, align 4
  %182 = getelementptr ptr, ptr %181, i32 30
  store ptr %180, ptr %182, align 4
  %183 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.27, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %50, i8 noundef zeroext 13, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %184 = load ptr, ptr @hws, align 4
  %185 = getelementptr ptr, ptr %184, i32 31
  store ptr %183, ptr %185, align 4
  %186 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.30, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %34, i8 noundef zeroext 20, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %187 = load ptr, ptr @hws, align 4
  %188 = getelementptr ptr, ptr %187, i32 32
  store ptr %186, ptr %188, align 4
  %189 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.34, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %50, i8 noundef zeroext 20, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %190 = load ptr, ptr @hws, align 4
  %191 = getelementptr ptr, ptr %190, i32 33
  store ptr %189, ptr %191, align 4
  %192 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.1, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %34, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %193 = load ptr, ptr @hws, align 4
  %194 = getelementptr ptr, ptr %193, i32 34
  store ptr %192, ptr %194, align 4
  %195 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.1, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %50, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %196 = load ptr, ptr @hws, align 4
  %197 = getelementptr ptr, ptr %196, i32 35
  store ptr %195, ptr %197, align 4
  %198 = getelementptr i8, ptr %23, i32 256
  %199 = tail call ptr @imx_clk_hw_pfd(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.29, ptr noundef %198, i8 noundef zeroext 0) #4
  %200 = load ptr, ptr @hws, align 4
  %201 = getelementptr ptr, ptr %200, i32 36
  store ptr %199, ptr %201, align 4
  %202 = tail call ptr @imx_clk_hw_pfd(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.29, ptr noundef %198, i8 noundef zeroext 1) #4
  %203 = load ptr, ptr @hws, align 4
  %204 = getelementptr ptr, ptr %203, i32 37
  store ptr %202, ptr %204, align 4
  %205 = tail call ptr @imx_clk_hw_pfd(ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.29, ptr noundef %198, i8 noundef zeroext 2) #4
  %206 = load ptr, ptr @hws, align 4
  %207 = getelementptr ptr, ptr %206, i32 38
  store ptr %205, ptr %207, align 4
  %208 = tail call ptr @imx_clk_hw_pfd(ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.29, ptr noundef %198, i8 noundef zeroext 3) #4
  %209 = load ptr, ptr @hws, align 4
  %210 = getelementptr ptr, ptr %209, i32 39
  store ptr %208, ptr %210, align 4
  %211 = getelementptr i8, ptr %23, i32 240
  %212 = tail call ptr @imx_clk_hw_pfd(ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.30, ptr noundef %211, i8 noundef zeroext 0) #4
  %213 = load ptr, ptr @hws, align 4
  %214 = getelementptr ptr, ptr %213, i32 40
  store ptr %212, ptr %214, align 4
  %215 = tail call ptr @imx_clk_hw_pfd(ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.30, ptr noundef %211, i8 noundef zeroext 1) #4
  %216 = load ptr, ptr @hws, align 4
  %217 = getelementptr ptr, ptr %216, i32 41
  store ptr %215, ptr %217, align 4
  %218 = tail call ptr @imx_clk_hw_pfd(ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.30, ptr noundef %211, i8 noundef zeroext 2) #4
  %219 = load ptr, ptr @hws, align 4
  %220 = getelementptr ptr, ptr %219, i32 42
  store ptr %218, ptr %220, align 4
  %221 = tail call ptr @imx_clk_hw_pfd(ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.30, ptr noundef %211, i8 noundef zeroext 3) #4
  %222 = load ptr, ptr @hws, align 4
  %223 = getelementptr ptr, ptr %222, i32 43
  store ptr %221, ptr %223, align 4
  %224 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.33, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef %46, i8 noundef zeroext 0, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef nonnull @clk_enet_ref_table, ptr noundef nonnull @imx_ccm_lock) #4
  %225 = load ptr, ptr @hws, align 4
  %226 = getelementptr ptr, ptr %225, i32 44
  store ptr %224, ptr %226, align 4
  %227 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.33, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef %46, i8 noundef zeroext 2, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef nonnull @clk_enet_ref_table, ptr noundef nonnull @imx_ccm_lock) #4
  %228 = load ptr, ptr @hws, align 4
  %229 = getelementptr ptr, ptr %228, i32 45
  store ptr %227, ptr %229, align 4
  %230 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.48, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %46, i8 noundef zeroext 20, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %231 = load ptr, ptr @hws, align 4
  %232 = getelementptr ptr, ptr %231, i32 46
  store ptr %230, ptr %232, align 4
  %233 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.33, i32 noundef 4, i32 noundef 1, i32 noundef 20) #4
  %234 = load ptr, ptr @hws, align 4
  %235 = getelementptr ptr, ptr %234, i32 47
  store ptr %233, ptr %235, align 4
  %236 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.50, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %46, i8 noundef zeroext 21, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %237 = load ptr, ptr @hws, align 4
  %238 = getelementptr ptr, ptr %237, i32 48
  store ptr %236, ptr %238, align 4
  %239 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.31, ptr noundef null, ptr noundef null, i32 noundef 5, ptr noundef %38, i8 noundef zeroext 19, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef nonnull @post_div_table, ptr noundef nonnull @imx_ccm_lock) #4
  %240 = load ptr, ptr @hws, align 4
  %241 = getelementptr ptr, ptr %240, i32 49
  store ptr %239, ptr %241, align 4
  %242 = getelementptr i8, ptr %23, i32 368
  %243 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.52, ptr noundef null, ptr noundef null, i32 noundef 5, ptr noundef %242, i8 noundef zeroext 15, i8 noundef zeroext 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %244 = load ptr, ptr @hws, align 4
  %245 = getelementptr ptr, ptr %244, i32 50
  store ptr %243, ptr %245, align 4
  %246 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.32, ptr noundef null, ptr noundef null, i32 noundef 5, ptr noundef %42, i8 noundef zeroext 19, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef nonnull @post_div_table, ptr noundef nonnull @imx_ccm_lock) #4
  %247 = load ptr, ptr @hws, align 4
  %248 = getelementptr ptr, ptr %247, i32 51
  store ptr %246, ptr %248, align 4
  %249 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.54, ptr noundef null, ptr noundef null, i32 noundef 5, ptr noundef %242, i8 noundef zeroext 30, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef nonnull @video_div_table, ptr noundef nonnull @imx_ccm_lock) #4
  %250 = load ptr, ptr @hws, align 4
  %251 = getelementptr ptr, ptr %250, i32 52
  store ptr %249, ptr %251, align 4
  %252 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.41, i32 noundef 4, i32 noundef 1, i32 noundef 2) #4
  %253 = load ptr, ptr @hws, align 4
  %254 = getelementptr ptr, ptr %253, i32 53
  store ptr %252, ptr %254, align 4
  %255 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.30, i32 noundef 4, i32 noundef 1, i32 noundef 6) #4
  %256 = load ptr, ptr @hws, align 4
  %257 = getelementptr ptr, ptr %256, i32 54
  store ptr %255, ptr %257, align 4
  %258 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.30, i32 noundef 4, i32 noundef 1, i32 noundef 8) #4
  %259 = load ptr, ptr @hws, align 4
  %260 = getelementptr ptr, ptr %259, i32 55
  store ptr %258, ptr %260, align 4
  %261 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.3, i32 noundef 4, i32 noundef 1, i32 noundef 8) #4
  %262 = load ptr, ptr @hws, align 4
  %263 = getelementptr ptr, ptr %262, i32 214
  store ptr %261, ptr %263, align 4
  %264 = tail call ptr @of_iomap(ptr noundef %0, i32 noundef 0) #4
  %265 = icmp eq ptr %264, null
  br i1 %265, label %266, label %267, !prof !8

266:                                              ; preds = %26
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 234, i32 noundef 9, ptr noundef null) #4
  br label %267

267:                                              ; preds = %266, %26
  %268 = getelementptr i8, ptr %264, i32 12
  %269 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.60, i8 noundef zeroext 2, ptr noundef nonnull @ca7_secondary_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %268, i8 noundef zeroext 3, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %270 = load ptr, ptr @hws, align 4
  %271 = getelementptr ptr, ptr %270, i32 219
  store ptr %269, ptr %271, align 4
  %272 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.61, i8 noundef zeroext 2, ptr noundef nonnull @step_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %268, i8 noundef zeroext 8, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %273 = load ptr, ptr @hws, align 4
  %274 = getelementptr ptr, ptr %273, i32 56
  store ptr %272, ptr %274, align 4
  %275 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.62, i8 noundef zeroext 2, ptr noundef nonnull @pll1_sw_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %268, i8 noundef zeroext 2, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %276 = load ptr, ptr @hws, align 4
  %277 = getelementptr ptr, ptr %276, i32 57
  store ptr %275, ptr %277, align 4
  %278 = getelementptr i8, ptr %264, i32 20
  %279 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.63, i8 noundef zeroext 2, ptr noundef nonnull @axi_alt_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %278, i8 noundef zeroext 7, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %280 = load ptr, ptr @hws, align 4
  %281 = getelementptr ptr, ptr %280, i32 58
  store ptr %279, ptr %281, align 4
  %282 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.64, i8 noundef zeroext 2, ptr noundef nonnull @axi_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %278, i8 noundef zeroext 6, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %283 = load ptr, ptr @hws, align 4
  %284 = getelementptr ptr, ptr %283, i32 59
  store ptr %282, ptr %284, align 4
  %285 = getelementptr i8, ptr %264, i32 24
  %286 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.65, i8 noundef zeroext 4, ptr noundef nonnull @periph_pre_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %285, i8 noundef zeroext 18, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %287 = load ptr, ptr @hws, align 4
  %288 = getelementptr ptr, ptr %287, i32 60
  store ptr %286, ptr %288, align 4
  %289 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.66, i8 noundef zeroext 4, ptr noundef nonnull @periph2_pre_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %285, i8 noundef zeroext 21, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %290 = load ptr, ptr @hws, align 4
  %291 = getelementptr ptr, ptr %290, i32 61
  store ptr %289, ptr %291, align 4
  %292 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.67, i8 noundef zeroext 3, ptr noundef nonnull @periph_clk2_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %285, i8 noundef zeroext 12, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %293 = load ptr, ptr @hws, align 4
  %294 = getelementptr ptr, ptr %293, i32 62
  store ptr %292, ptr %294, align 4
  %295 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.68, i8 noundef zeroext 2, ptr noundef nonnull @periph2_clk2_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %285, i8 noundef zeroext 20, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %296 = load ptr, ptr @hws, align 4
  %297 = getelementptr ptr, ptr %296, i32 63
  store ptr %295, ptr %297, align 4
  %298 = getelementptr i8, ptr %264, i32 28
  %299 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.69, i8 noundef zeroext 4, ptr noundef nonnull @eim_slow_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %298, i8 noundef zeroext 29, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %300 = load ptr, ptr @hws, align 4
  %301 = getelementptr ptr, ptr %300, i32 68
  store ptr %299, ptr %301, align 4
  %302 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.70, i8 noundef zeroext 2, ptr noundef nonnull @gpmi_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %298, i8 noundef zeroext 19, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %303 = load ptr, ptr @hws, align 4
  %304 = getelementptr ptr, ptr %303, i32 67
  store ptr %302, ptr %304, align 4
  %305 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.71, i8 noundef zeroext 2, ptr noundef nonnull @bch_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %298, i8 noundef zeroext 18, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %306 = load ptr, ptr @hws, align 4
  %307 = getelementptr ptr, ptr %306, i32 66
  store ptr %305, ptr %307, align 4
  %308 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.72, i8 noundef zeroext 2, ptr noundef nonnull @usdhc_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %298, i8 noundef zeroext 17, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %309 = load ptr, ptr @hws, align 4
  %310 = getelementptr ptr, ptr %309, i32 65
  store ptr %308, ptr %310, align 4
  %311 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.73, i8 noundef zeroext 2, ptr noundef nonnull @usdhc_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %298, i8 noundef zeroext 16, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %312 = load ptr, ptr @hws, align 4
  %313 = getelementptr ptr, ptr %312, i32 64
  store ptr %311, ptr %313, align 4
  %314 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.74, i8 noundef zeroext 3, ptr noundef nonnull @sai_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %298, i8 noundef zeroext 14, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %315 = load ptr, ptr @hws, align 4
  %316 = getelementptr ptr, ptr %315, i32 72
  store ptr %314, ptr %316, align 4
  %317 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.75, i8 noundef zeroext 3, ptr noundef nonnull @sai_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %298, i8 noundef zeroext 12, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %318 = load ptr, ptr @hws, align 4
  %319 = getelementptr ptr, ptr %318, i32 71
  store ptr %317, ptr %319, align 4
  %320 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.76, i8 noundef zeroext 3, ptr noundef nonnull @sai_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %298, i8 noundef zeroext 10, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %321 = load ptr, ptr @hws, align 4
  %322 = getelementptr ptr, ptr %321, i32 70
  store ptr %320, ptr %322, align 4
  %323 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.77, i8 noundef zeroext 6, ptr noundef nonnull @qspi1_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %298, i8 noundef zeroext 7, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %324 = load ptr, ptr @hws, align 4
  %325 = getelementptr ptr, ptr %324, i32 81
  store ptr %323, ptr %325, align 4
  %326 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.78, i8 noundef zeroext 2, ptr noundef nonnull @perclk_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %298, i8 noundef zeroext 6, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %327 = load ptr, ptr @hws, align 4
  %328 = getelementptr ptr, ptr %327, i32 82
  store ptr %326, ptr %328, align 4
  %329 = getelementptr i8, ptr %264, i32 32
  %330 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.79, i8 noundef zeroext 4, ptr noundef nonnull @can_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %329, i8 noundef zeroext 8, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %331 = load ptr, ptr @hws, align 4
  %332 = getelementptr ptr, ptr %331, i32 78
  store ptr %330, ptr %332, align 4
  %333 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.245) #4
  %334 = icmp eq i32 %333, 0
  br i1 %334, label %339, label %335

335:                                              ; preds = %267
  %336 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.80, i8 noundef zeroext 4, ptr noundef nonnull @esai_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %329, i8 noundef zeroext 19, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %337 = load ptr, ptr @hws, align 4
  %338 = getelementptr ptr, ptr %337, i32 236
  store ptr %336, ptr %338, align 4
  br label %339

339:                                              ; preds = %335, %267
  %340 = getelementptr i8, ptr %264, i32 36
  %341 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.81, i8 noundef zeroext 2, ptr noundef nonnull @uart_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %340, i8 noundef zeroext 6, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %342 = load ptr, ptr @hws, align 4
  %343 = getelementptr ptr, ptr %342, i32 80
  store ptr %341, ptr %343, align 4
  %344 = getelementptr i8, ptr %264, i32 44
  %345 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.82, i8 noundef zeroext 8, ptr noundef nonnull @enfc_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %344, i8 noundef zeroext 15, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %346 = load ptr, ptr @hws, align 4
  %347 = getelementptr ptr, ptr %346, i32 77
  store ptr %345, ptr %347, align 4
  %348 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.83, i8 noundef zeroext 6, ptr noundef nonnull @ldb_di0_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %344, i8 noundef zeroext 9, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %349 = load ptr, ptr @hws, align 4
  %350 = getelementptr ptr, ptr %349, i32 75
  store ptr %348, ptr %350, align 4
  %351 = getelementptr i8, ptr %264, i32 48
  %352 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.84, i8 noundef zeroext 4, ptr noundef nonnull @spdif_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %351, i8 noundef zeroext 20, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %353 = load ptr, ptr @hws, align 4
  %354 = getelementptr ptr, ptr %353, i32 69
  store ptr %352, ptr %354, align 4
  %355 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.246) #4
  %356 = icmp eq i32 %355, 0
  br i1 %356, label %363, label %357

357:                                              ; preds = %339
  %358 = getelementptr i8, ptr %264, i32 52
  %359 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.85, i8 noundef zeroext 6, ptr noundef nonnull @sim_pre_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %358, i8 noundef zeroext 15, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %360 = load ptr, ptr @hws, align 4
  %361 = getelementptr ptr, ptr %360, i32 74
  store ptr %359, ptr %361, align 4
  %362 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.86, i8 noundef zeroext 5, ptr noundef nonnull @sim_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %358, i8 noundef zeroext 9, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  br label %372

363:                                              ; preds = %339
  %364 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.245) #4
  %365 = icmp eq i32 %364, 0
  br i1 %365, label %377, label %366

366:                                              ; preds = %363
  %367 = getelementptr i8, ptr %264, i32 52
  %368 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.87, i8 noundef zeroext 6, ptr noundef nonnull @epdc_pre_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %367, i8 noundef zeroext 15, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %369 = load ptr, ptr @hws, align 4
  %370 = getelementptr ptr, ptr %369, i32 231
  store ptr %368, ptr %370, align 4
  %371 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.88, i8 noundef zeroext 5, ptr noundef nonnull @epdc_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %367, i8 noundef zeroext 9, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  br label %372

372:                                              ; preds = %366, %357
  %373 = phi i32 [ 232, %366 ], [ 84, %357 ]
  %374 = phi ptr [ %371, %366 ], [ %362, %357 ]
  %375 = load ptr, ptr @hws, align 4
  %376 = getelementptr ptr, ptr %375, i32 %373
  store ptr %374, ptr %376, align 4
  br label %377

377:                                              ; preds = %372, %363
  %378 = getelementptr i8, ptr %264, i32 56
  %379 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.89, i8 noundef zeroext 2, ptr noundef nonnull @ecspi_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %378, i8 noundef zeroext 18, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %380 = load ptr, ptr @hws, align 4
  %381 = getelementptr ptr, ptr %380, i32 79
  store ptr %379, ptr %381, align 4
  %382 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.90, i8 noundef zeroext 6, ptr noundef nonnull @lcdif_pre_sels, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %378, i8 noundef zeroext 15, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %383 = load ptr, ptr @hws, align 4
  %384 = getelementptr ptr, ptr %383, i32 73
  store ptr %382, ptr %384, align 4
  %385 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.91, i8 noundef zeroext 5, ptr noundef nonnull @lcdif_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %378, i8 noundef zeroext 9, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %386 = load ptr, ptr @hws, align 4
  %387 = getelementptr ptr, ptr %386, i32 83
  store ptr %385, ptr %387, align 4
  %388 = getelementptr i8, ptr %264, i32 60
  %389 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.92, i8 noundef zeroext 4, ptr noundef nonnull @csi_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %388, i8 noundef zeroext 9, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %390 = load ptr, ptr @hws, align 4
  %391 = getelementptr ptr, ptr %390, i32 221
  store ptr %389, ptr %391, align 4
  %392 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.93, i8 noundef zeroext 2, ptr noundef nonnull @ldb_di0_div_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %329, i8 noundef zeroext 10, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %393 = load ptr, ptr @hws, align 4
  %394 = getelementptr ptr, ptr %393, i32 91
  store ptr %392, ptr %394, align 4
  %395 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.94, i8 noundef zeroext 2, ptr noundef nonnull @ldb_di1_div_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %329, i8 noundef zeroext 11, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %396 = load ptr, ptr @hws, align 4
  %397 = getelementptr ptr, ptr %396, i32 92
  store ptr %395, ptr %397, align 4
  %398 = getelementptr i8, ptr %264, i32 96
  %399 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.95, i8 noundef zeroext 16, ptr noundef nonnull @cko1_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %398, i8 noundef zeroext 0, i32 noundef 15, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %400 = load ptr, ptr @hws, align 4
  %401 = getelementptr ptr, ptr %400, i32 237
  store ptr %399, ptr %401, align 4
  %402 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.96, i8 noundef zeroext 32, ptr noundef nonnull @cko2_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %398, i8 noundef zeroext 16, i32 noundef 31, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %403 = load ptr, ptr @hws, align 4
  %404 = getelementptr ptr, ptr %403, i32 240
  store ptr %402, ptr %404, align 4
  %405 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.97, i8 noundef zeroext 2, ptr noundef nonnull @cko_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %398, i8 noundef zeroext 8, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %406 = load ptr, ptr @hws, align 4
  %407 = getelementptr ptr, ptr %406, i32 243
  store ptr %405, ptr %407, align 4
  %408 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.83, i32 noundef 4, i32 noundef 2, i32 noundef 7) #4
  %409 = load ptr, ptr @hws, align 4
  %410 = getelementptr ptr, ptr %409, i32 87
  store ptr %408, ptr %410, align 4
  %411 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.83, i32 noundef 4, i32 noundef 1, i32 noundef 7) #4
  %412 = load ptr, ptr @hws, align 4
  %413 = getelementptr ptr, ptr %412, i32 88
  store ptr %411, ptr %413, align 4
  %414 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.77, i32 noundef 4, i32 noundef 2, i32 noundef 7) #4
  %415 = load ptr, ptr @hws, align 4
  %416 = getelementptr ptr, ptr %415, i32 89
  store ptr %414, ptr %416, align 4
  %417 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.77, i32 noundef 4, i32 noundef 1, i32 noundef 7) #4
  %418 = load ptr, ptr @hws, align 4
  %419 = getelementptr ptr, ptr %418, i32 90
  store ptr %417, ptr %419, align 4
  %420 = getelementptr i8, ptr %264, i32 72
  %421 = tail call ptr @imx_clk_hw_busy_mux(ptr noundef nonnull @.str.102, ptr noundef %278, i8 noundef zeroext 25, i8 noundef zeroext 1, ptr noundef %420, i8 noundef zeroext 5, ptr noundef nonnull @periph_sels, i32 noundef 2) #4
  %422 = load ptr, ptr @hws, align 4
  %423 = getelementptr ptr, ptr %422, i32 85
  store ptr %421, ptr %423, align 4
  %424 = tail call ptr @imx_clk_hw_busy_mux(ptr noundef nonnull @.str.103, ptr noundef %278, i8 noundef zeroext 26, i8 noundef zeroext 1, ptr noundef %420, i8 noundef zeroext 3, ptr noundef nonnull @periph2_sels, i32 noundef 2) #4
  %425 = load ptr, ptr @hws, align 4
  %426 = getelementptr ptr, ptr %425, i32 86
  store ptr %424, ptr %426, align 4
  %427 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.104, ptr noundef nonnull @.str.67, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %278, i8 noundef zeroext 27, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %428 = load ptr, ptr @hws, align 4
  %429 = getelementptr ptr, ptr %428, i32 94
  store ptr %427, ptr %429, align 4
  %430 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.105, ptr noundef nonnull @.str.68, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %278, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %431 = load ptr, ptr @hws, align 4
  %432 = getelementptr ptr, ptr %431, i32 95
  store ptr %430, ptr %432, align 4
  %433 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.106, ptr noundef nonnull @.str.107, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %278, i8 noundef zeroext 8, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %434 = load ptr, ptr @hws, align 4
  %435 = getelementptr ptr, ptr %434, i32 100
  store ptr %433, ptr %435, align 4
  %436 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.109, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %285, i8 noundef zeroext 23, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %437 = load ptr, ptr @hws, align 4
  %438 = getelementptr ptr, ptr %437, i32 115
  store ptr %436, ptr %438, align 4
  %439 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.110, ptr noundef nonnull @.str.77, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %298, i8 noundef zeroext 26, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %440 = load ptr, ptr @hws, align 4
  %441 = getelementptr ptr, ptr %440, i32 117
  store ptr %439, ptr %441, align 4
  %442 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.111, ptr noundef nonnull @.str.69, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %298, i8 noundef zeroext 23, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %443 = load ptr, ptr @hws, align 4
  %444 = getelementptr ptr, ptr %443, i32 105
  store ptr %442, ptr %444, align 4
  %445 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.78, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %298, i8 noundef zeroext 0, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %446 = load ptr, ptr @hws, align 4
  %447 = getelementptr ptr, ptr %446, i32 99
  store ptr %445, ptr %447, align 4
  %448 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.113, ptr noundef nonnull @.str.79, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %329, i8 noundef zeroext 2, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %449 = load ptr, ptr @hws, align 4
  %450 = getelementptr ptr, ptr %449, i32 120
  store ptr %448, ptr %450, align 4
  %451 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.114, ptr noundef nonnull @.str.70, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %340, i8 noundef zeroext 22, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %452 = load ptr, ptr @hws, align 4
  %453 = getelementptr ptr, ptr %452, i32 104
  store ptr %451, ptr %453, align 4
  %454 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.115, ptr noundef nonnull @.str.71, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %340, i8 noundef zeroext 19, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %455 = load ptr, ptr @hws, align 4
  %456 = getelementptr ptr, ptr %455, i32 103
  store ptr %454, ptr %456, align 4
  %457 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.116, ptr noundef nonnull @.str.72, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %340, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %458 = load ptr, ptr @hws, align 4
  %459 = getelementptr ptr, ptr %458, i32 102
  store ptr %457, ptr %459, align 4
  %460 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.73, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %340, i8 noundef zeroext 11, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %461 = load ptr, ptr @hws, align 4
  %462 = getelementptr ptr, ptr %461, i32 101
  store ptr %460, ptr %462, align 4
  %463 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.118, ptr noundef nonnull @.str.81, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %340, i8 noundef zeroext 0, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %464 = load ptr, ptr @hws, align 4
  %465 = getelementptr ptr, ptr %464, i32 122
  store ptr %463, ptr %465, align 4
  %466 = getelementptr i8, ptr %264, i32 40
  %467 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.119, ptr noundef nonnull @.str.74, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %466, i8 noundef zeroext 22, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %468 = load ptr, ptr @hws, align 4
  %469 = getelementptr ptr, ptr %468, i32 112
  store ptr %467, ptr %469, align 4
  %470 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.120, ptr noundef nonnull @.str.119, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %466, i8 noundef zeroext 16, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %471 = load ptr, ptr @hws, align 4
  %472 = getelementptr ptr, ptr %471, i32 113
  store ptr %470, ptr %472, align 4
  %473 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.76, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %466, i8 noundef zeroext 6, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %474 = load ptr, ptr @hws, align 4
  %475 = getelementptr ptr, ptr %474, i32 108
  store ptr %473, ptr %475, align 4
  %476 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.122, ptr noundef nonnull @.str.121, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %466, i8 noundef zeroext 0, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %477 = load ptr, ptr @hws, align 4
  %478 = getelementptr ptr, ptr %477, i32 109
  store ptr %476, ptr %478, align 4
  %479 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.245) #4
  %480 = icmp eq i32 %479, 0
  br i1 %480, label %488, label %481

481:                                              ; preds = %377
  %482 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.123, ptr noundef nonnull @.str.80, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %466, i8 noundef zeroext 9, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %483 = load ptr, ptr @hws, align 4
  %484 = getelementptr ptr, ptr %483, i32 225
  store ptr %482, ptr %484, align 4
  %485 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.124, ptr noundef nonnull @.str.123, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %466, i8 noundef zeroext 25, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %486 = load ptr, ptr @hws, align 4
  %487 = getelementptr ptr, ptr %486, i32 226
  store ptr %485, ptr %487, align 4
  br label %488

488:                                              ; preds = %481, %377
  %489 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.125, ptr noundef nonnull @.str.82, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %344, i8 noundef zeroext 18, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %490 = load ptr, ptr @hws, align 4
  %491 = getelementptr ptr, ptr %490, i32 118
  store ptr %489, ptr %491, align 4
  %492 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.126, ptr noundef nonnull @.str.125, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %344, i8 noundef zeroext 21, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %493 = load ptr, ptr @hws, align 4
  %494 = getelementptr ptr, ptr %493, i32 119
  store ptr %492, ptr %494, align 4
  %495 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.127, ptr noundef nonnull @.str.75, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %344, i8 noundef zeroext 6, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %496 = load ptr, ptr @hws, align 4
  %497 = getelementptr ptr, ptr %496, i32 110
  store ptr %495, ptr %497, align 4
  %498 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.128, ptr noundef nonnull @.str.127, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %344, i8 noundef zeroext 0, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %499 = load ptr, ptr @hws, align 4
  %500 = getelementptr ptr, ptr %499, i32 111
  store ptr %498, ptr %500, align 4
  %501 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.129, ptr noundef nonnull @.str.84, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %351, i8 noundef zeroext 25, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %502 = load ptr, ptr @hws, align 4
  %503 = getelementptr ptr, ptr %502, i32 106
  store ptr %501, ptr %503, align 4
  %504 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.130, ptr noundef nonnull @.str.129, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %351, i8 noundef zeroext 22, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %505 = load ptr, ptr @hws, align 4
  %506 = getelementptr ptr, ptr %505, i32 107
  store ptr %504, ptr %506, align 4
  %507 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.246) #4
  %508 = icmp eq i32 %507, 0
  br i1 %508, label %512, label %509

509:                                              ; preds = %488
  %510 = getelementptr i8, ptr %264, i32 52
  %511 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.85, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %510, i8 noundef zeroext 12, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  br label %518

512:                                              ; preds = %488
  %513 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.245) #4
  %514 = icmp eq i32 %513, 0
  br i1 %514, label %523, label %515

515:                                              ; preds = %512
  %516 = getelementptr i8, ptr %264, i32 52
  %517 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.132, ptr noundef nonnull @.str.87, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %516, i8 noundef zeroext 12, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  br label %518

518:                                              ; preds = %515, %509
  %519 = phi i32 [ 233, %515 ], [ 116, %509 ]
  %520 = phi ptr [ %517, %515 ], [ %511, %509 ]
  %521 = load ptr, ptr @hws, align 4
  %522 = getelementptr ptr, ptr %521, i32 %519
  store ptr %520, ptr %522, align 4
  br label %523

523:                                              ; preds = %518, %512
  %524 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.133, ptr noundef nonnull @.str.89, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %378, i8 noundef zeroext 19, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %525 = load ptr, ptr @hws, align 4
  %526 = getelementptr ptr, ptr %525, i32 121
  store ptr %524, ptr %526, align 4
  %527 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.109, ptr noundef nonnull @.str.90, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %378, i8 noundef zeroext 12, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %528 = load ptr, ptr @hws, align 4
  %529 = getelementptr ptr, ptr %528, i32 114
  store ptr %527, ptr %529, align 4
  %530 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.134, ptr noundef nonnull @.str.92, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %388, i8 noundef zeroext 11, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %531 = load ptr, ptr @hws, align 4
  %532 = getelementptr ptr, ptr %531, i32 222
  store ptr %530, ptr %532, align 4
  %533 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.135, ptr noundef nonnull @.str.95, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %398, i8 noundef zeroext 4, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %534 = load ptr, ptr @hws, align 4
  %535 = getelementptr ptr, ptr %534, i32 238
  store ptr %533, ptr %535, align 4
  %536 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.136, ptr noundef nonnull @.str.96, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %398, i8 noundef zeroext 21, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #4
  %537 = load ptr, ptr @hws, align 4
  %538 = getelementptr ptr, ptr %537, i32 241
  store ptr %536, ptr %538, align 4
  %539 = getelementptr i8, ptr %264, i32 16
  %540 = tail call ptr @imx_clk_hw_busy_divider(ptr noundef nonnull @.str.137, ptr noundef nonnull @.str.62, ptr noundef %539, i8 noundef zeroext 0, i8 noundef zeroext 3, ptr noundef %420, i8 noundef zeroext 16) #4
  %541 = load ptr, ptr @hws, align 4
  %542 = getelementptr ptr, ptr %541, i32 93
  store ptr %540, ptr %542, align 4
  %543 = tail call ptr @imx_clk_hw_busy_divider(ptr noundef nonnull @.str.138, ptr noundef nonnull @.str.103, ptr noundef %278, i8 noundef zeroext 3, i8 noundef zeroext 3, ptr noundef %420, i8 noundef zeroext 2) #4
  %544 = load ptr, ptr @hws, align 4
  %545 = getelementptr ptr, ptr %544, i32 97
  store ptr %543, ptr %545, align 4
  %546 = tail call ptr @imx_clk_hw_busy_divider(ptr noundef nonnull @.str.139, ptr noundef nonnull @.str.64, ptr noundef %278, i8 noundef zeroext 16, i8 noundef zeroext 3, ptr noundef %420, i8 noundef zeroext 0) #4
  %547 = load ptr, ptr @hws, align 4
  %548 = getelementptr ptr, ptr %547, i32 98
  store ptr %546, ptr %548, align 4
  %549 = tail call ptr @imx_clk_hw_busy_divider(ptr noundef nonnull @.str.107, ptr noundef nonnull @.str.102, ptr noundef %278, i8 noundef zeroext 10, i8 noundef zeroext 3, ptr noundef %420, i8 noundef zeroext 1) #4
  %550 = load ptr, ptr @hws, align 4
  %551 = getelementptr ptr, ptr %550, i32 96
  store ptr %549, ptr %551, align 4
  %552 = getelementptr i8, ptr %264, i32 104
  %553 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.140, ptr noundef nonnull @.str.107, i32 noundef 2052, ptr noundef %552, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %554 = load ptr, ptr @hws, align 4
  %555 = getelementptr ptr, ptr %554, i32 125
  store ptr %553, ptr %555, align 4
  %556 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.141, ptr noundef nonnull @.str.107, i32 noundef 2052, ptr noundef %552, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %557 = load ptr, ptr @hws, align 4
  %558 = getelementptr ptr, ptr %557, i32 126
  store ptr %556, ptr %558, align 4
  %559 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.142, ptr noundef nonnull @.str.115, i32 noundef 4, ptr noundef %552, i8 noundef zeroext 4, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %560 = load ptr, ptr @hws, align 4
  %561 = getelementptr ptr, ptr %560, i32 128
  store ptr %559, ptr %561, align 4
  %562 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.143, ptr noundef nonnull @.str.107, i32 noundef 4, ptr noundef %552, i8 noundef zeroext 6, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_asrc) #4
  %563 = load ptr, ptr @hws, align 4
  %564 = getelementptr ptr, ptr %563, i32 129
  store ptr %562, ptr %564, align 4
  %565 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.144, ptr noundef nonnull @.str.107, i32 noundef 4, ptr noundef %552, i8 noundef zeroext 6, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_asrc) #4
  %566 = load ptr, ptr @hws, align 4
  %567 = getelementptr ptr, ptr %566, i32 130
  store ptr %565, ptr %567, align 4
  %568 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.246) #4
  %569 = icmp eq i32 %568, 0
  br i1 %569, label %578, label %570

570:                                              ; preds = %523
  %571 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.145, ptr noundef nonnull @.str.107, i32 noundef 4, ptr noundef %552, i8 noundef zeroext 8, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %572 = load ptr, ptr @hws, align 4
  %573 = getelementptr ptr, ptr %572, i32 135
  store ptr %571, ptr %573, align 4
  %574 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.146, ptr noundef nonnull @.str.107, i32 noundef 4, ptr noundef %552, i8 noundef zeroext 10, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %575 = load ptr, ptr @hws, align 4
  %576 = getelementptr ptr, ptr %575, i32 136
  store ptr %574, ptr %576, align 4
  %577 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.147, ptr noundef nonnull @.str.106, i32 noundef 4, ptr noundef %552, i8 noundef zeroext 12, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  br label %589

578:                                              ; preds = %523
  %579 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.245) #4
  %580 = icmp eq i32 %579, 0
  br i1 %580, label %594, label %581

581:                                              ; preds = %578
  %582 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.107, i32 noundef 4, ptr noundef %552, i8 noundef zeroext 10, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %583 = load ptr, ptr @hws, align 4
  %584 = getelementptr ptr, ptr %583, i32 230
  store ptr %582, ptr %584, align 4
  %585 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.149, ptr noundef nonnull @.str.106, i32 noundef 4, ptr noundef %552, i8 noundef zeroext 12, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %586 = load ptr, ptr @hws, align 4
  %587 = getelementptr ptr, ptr %586, i32 144
  store ptr %585, ptr %587, align 4
  %588 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.150, ptr noundef nonnull @.str.107, i32 noundef 4, ptr noundef %552, i8 noundef zeroext 12, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  br label %589

589:                                              ; preds = %581, %570
  %590 = phi i32 [ 145, %581 ], [ 137, %570 ]
  %591 = phi ptr [ %588, %581 ], [ %577, %570 ]
  %592 = load ptr, ptr @hws, align 4
  %593 = getelementptr ptr, ptr %592, i32 %590
  store ptr %591, ptr %593, align 4
  br label %594

594:                                              ; preds = %589, %578
  %595 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.151, ptr noundef nonnull @.str.106, i32 noundef 4, ptr noundef %552, i8 noundef zeroext 14, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %596 = load ptr, ptr @hws, align 4
  %597 = getelementptr ptr, ptr %596, i32 148
  store ptr %595, ptr %597, align 4
  %598 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.152, ptr noundef nonnull @.str.113, i32 noundef 4, ptr noundef %552, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %599 = load ptr, ptr @hws, align 4
  %600 = getelementptr ptr, ptr %599, i32 149
  store ptr %598, ptr %600, align 4
  %601 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.153, ptr noundef nonnull @.str.106, i32 noundef 4, ptr noundef %552, i8 noundef zeroext 18, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %602 = load ptr, ptr @hws, align 4
  %603 = getelementptr ptr, ptr %602, i32 150
  store ptr %601, ptr %603, align 4
  %604 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.154, ptr noundef nonnull @.str.113, i32 noundef 4, ptr noundef %552, i8 noundef zeroext 20, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %605 = load ptr, ptr @hws, align 4
  %606 = getelementptr ptr, ptr %605, i32 151
  store ptr %604, ptr %606, align 4
  %607 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.155, ptr noundef nonnull @.str.112, i32 noundef 4, ptr noundef %552, i8 noundef zeroext 24, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %608 = load ptr, ptr @hws, align 4
  %609 = getelementptr ptr, ptr %608, i32 154
  store ptr %607, ptr %609, align 4
  %610 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.156, ptr noundef nonnull @.str.112, i32 noundef 4, ptr noundef %552, i8 noundef zeroext 26, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %611 = load ptr, ptr @hws, align 4
  %612 = getelementptr ptr, ptr %611, i32 155
  store ptr %610, ptr %612, align 4
  %613 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.157, ptr noundef nonnull @.str.106, i32 noundef 4, ptr noundef %552, i8 noundef zeroext 28, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %614 = load ptr, ptr @hws, align 4
  %615 = getelementptr ptr, ptr %614, i32 191
  store ptr %613, ptr %615, align 4
  %616 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.158, ptr noundef nonnull @.str.118, i32 noundef 4, ptr noundef %552, i8 noundef zeroext 28, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %617 = load ptr, ptr @hws, align 4
  %618 = getelementptr ptr, ptr %617, i32 192
  store ptr %616, ptr %618, align 4
  %619 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.245) #4
  %620 = icmp eq i32 %619, 0
  br i1 %620, label %626, label %621

621:                                              ; preds = %594
  %622 = getelementptr i8, ptr %264, i32 128
  %623 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.107, i32 noundef 4, ptr noundef %622, i8 noundef zeroext 18, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %624 = load ptr, ptr @hws, align 4
  %625 = getelementptr ptr, ptr %624, i32 127
  store ptr %623, ptr %625, align 4
  br label %626

626:                                              ; preds = %621, %594
  %627 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.160, ptr noundef nonnull @.str.106, i32 noundef 4, ptr noundef %552, i8 noundef zeroext 30, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %628 = load ptr, ptr @hws, align 4
  %629 = getelementptr ptr, ptr %628, i32 245
  store ptr %627, ptr %629, align 4
  %630 = getelementptr i8, ptr %264, i32 108
  %631 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.161, ptr noundef nonnull @.str.133, i32 noundef 4, ptr noundef %630, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %632 = load ptr, ptr @hws, align 4
  %633 = getelementptr ptr, ptr %632, i32 139
  store ptr %631, ptr %633, align 4
  %634 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.162, ptr noundef nonnull @.str.133, i32 noundef 4, ptr noundef %630, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %635 = load ptr, ptr @hws, align 4
  %636 = getelementptr ptr, ptr %635, i32 140
  store ptr %634, ptr %636, align 4
  %637 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.163, ptr noundef nonnull @.str.133, i32 noundef 4, ptr noundef %630, i8 noundef zeroext 4, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %638 = load ptr, ptr @hws, align 4
  %639 = getelementptr ptr, ptr %638, i32 141
  store ptr %637, ptr %639, align 4
  %640 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.164, ptr noundef nonnull @.str.133, i32 noundef 4, ptr noundef %630, i8 noundef zeroext 6, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %641 = load ptr, ptr @hws, align 4
  %642 = getelementptr ptr, ptr %641, i32 142
  store ptr %640, ptr %642, align 4
  %643 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.165, ptr noundef nonnull @.str.106, i32 noundef 4, ptr noundef %630, i8 noundef zeroext 8, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %644 = load ptr, ptr @hws, align 4
  %645 = getelementptr ptr, ptr %644, i32 124
  store ptr %643, ptr %645, align 4
  %646 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.166, ptr noundef nonnull @.str.106, i32 noundef 4, ptr noundef %630, i8 noundef zeroext 10, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %647 = load ptr, ptr @hws, align 4
  %648 = getelementptr ptr, ptr %647, i32 193
  store ptr %646, ptr %648, align 4
  %649 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.167, ptr noundef nonnull @.str.118, i32 noundef 4, ptr noundef %630, i8 noundef zeroext 10, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %650 = load ptr, ptr @hws, align 4
  %651 = getelementptr ptr, ptr %650, i32 194
  store ptr %649, ptr %651, align 4
  %652 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.168, ptr noundef nonnull @.str.112, i32 noundef 4, ptr noundef %630, i8 noundef zeroext 12, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %653 = load ptr, ptr @hws, align 4
  %654 = getelementptr ptr, ptr %653, i32 146
  store ptr %652, ptr %654, align 4
  %655 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.169, ptr noundef nonnull @.str.112, i32 noundef 4, ptr noundef %630, i8 noundef zeroext 14, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %656 = load ptr, ptr @hws, align 4
  %657 = getelementptr ptr, ptr %656, i32 147
  store ptr %655, ptr %657, align 4
  %658 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.170, ptr noundef nonnull @.str.106, i32 noundef 4, ptr noundef %630, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %659 = load ptr, ptr @hws, align 4
  %660 = getelementptr ptr, ptr %659, i32 123
  store ptr %658, ptr %660, align 4
  %661 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.171, ptr noundef nonnull @.str.112, i32 noundef 4, ptr noundef %630, i8 noundef zeroext 20, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %662 = load ptr, ptr @hws, align 4
  %663 = getelementptr ptr, ptr %662, i32 152
  store ptr %661, ptr %663, align 4
  %664 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.172, ptr noundef nonnull @.str.112, i32 noundef 4, ptr noundef %630, i8 noundef zeroext 22, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %665 = load ptr, ptr @hws, align 4
  %666 = getelementptr ptr, ptr %665, i32 153
  store ptr %664, ptr %666, align 4
  %667 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.173, ptr noundef nonnull @.str.106, i32 noundef 4, ptr noundef %630, i8 noundef zeroext 24, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %668 = load ptr, ptr @hws, align 4
  %669 = getelementptr ptr, ptr %668, i32 195
  store ptr %667, ptr %669, align 4
  %670 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.174, ptr noundef nonnull @.str.118, i32 noundef 4, ptr noundef %630, i8 noundef zeroext 24, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %671 = load ptr, ptr @hws, align 4
  %672 = getelementptr ptr, ptr %671, i32 196
  store ptr %670, ptr %672, align 4
  %673 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.175, ptr noundef nonnull @.str.106, i32 noundef 4, ptr noundef %630, i8 noundef zeroext 26, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %674 = load ptr, ptr @hws, align 4
  %675 = getelementptr ptr, ptr %674, i32 244
  store ptr %673, ptr %675, align 4
  %676 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.176, ptr noundef nonnull @.str.106, i32 noundef 4, ptr noundef %630, i8 noundef zeroext 30, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %677 = load ptr, ptr @hws, align 4
  %678 = getelementptr ptr, ptr %677, i32 248
  store ptr %676, ptr %678, align 4
  %679 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.245) #4
  %680 = icmp eq i32 %679, 0
  br i1 %680, label %692, label %681

681:                                              ; preds = %626
  %682 = getelementptr i8, ptr %264, i32 112
  %683 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.177, ptr noundef nonnull @.str.124, i32 noundef 4, ptr noundef %682, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_esai) #4
  %684 = load ptr, ptr @hws, align 4
  %685 = getelementptr ptr, ptr %684, i32 227
  store ptr %683, ptr %685, align 4
  %686 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.178, ptr noundef nonnull @.str.107, i32 noundef 4, ptr noundef %682, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_esai) #4
  %687 = load ptr, ptr @hws, align 4
  %688 = getelementptr ptr, ptr %687, i32 229
  store ptr %686, ptr %688, align 4
  %689 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.179, ptr noundef nonnull @.str.107, i32 noundef 4, ptr noundef %682, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_esai) #4
  %690 = load ptr, ptr @hws, align 4
  %691 = getelementptr ptr, ptr %690, i32 228
  store ptr %689, ptr %691, align 4
  br label %692

692:                                              ; preds = %681, %626
  %693 = getelementptr i8, ptr %264, i32 112
  %694 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.180, ptr noundef nonnull @.str.112, i32 noundef 4, ptr noundef %693, i8 noundef zeroext 6, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %695 = load ptr, ptr @hws, align 4
  %696 = getelementptr ptr, ptr %695, i32 156
  store ptr %694, ptr %696, align 4
  %697 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.181, ptr noundef nonnull @.str.112, i32 noundef 4, ptr noundef %693, i8 noundef zeroext 8, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %698 = load ptr, ptr @hws, align 4
  %699 = getelementptr ptr, ptr %698, i32 157
  store ptr %697, ptr %699, align 4
  %700 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.182, ptr noundef nonnull @.str.112, i32 noundef 4, ptr noundef %693, i8 noundef zeroext 10, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %701 = load ptr, ptr @hws, align 4
  %702 = getelementptr ptr, ptr %701, i32 158
  store ptr %700, ptr %702, align 4
  %703 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.183, ptr noundef nonnull @.str.106, i32 noundef 4, ptr noundef %693, i8 noundef zeroext 12, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %704 = load ptr, ptr @hws, align 4
  %705 = getelementptr ptr, ptr %704, i32 165
  store ptr %703, ptr %705, align 4
  %706 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.184, ptr noundef nonnull @.str.108, i32 noundef 4, ptr noundef %693, i8 noundef zeroext 14, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %707 = load ptr, ptr @hws, align 4
  %708 = getelementptr ptr, ptr %707, i32 160
  store ptr %706, ptr %708, align 4
  %709 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.185, ptr noundef nonnull @.str.106, i32 noundef 4, ptr noundef %693, i8 noundef zeroext 26, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %710 = load ptr, ptr @hws, align 4
  %711 = getelementptr ptr, ptr %710, i32 246
  store ptr %709, ptr %711, align 4
  %712 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.186, ptr noundef nonnull @.str.187, i32 noundef 4, ptr noundef %693, i8 noundef zeroext 28, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %713 = load ptr, ptr @hws, align 4
  %714 = getelementptr ptr, ptr %713, i32 161
  store ptr %712, ptr %714, align 4
  %715 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.188, ptr noundef nonnull @.str.187, i32 noundef 4, ptr noundef %693, i8 noundef zeroext 30, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %716 = load ptr, ptr @hws, align 4
  %717 = getelementptr ptr, ptr %716, i32 175
  store ptr %715, ptr %717, align 4
  %718 = getelementptr i8, ptr %264, i32 116
  %719 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.189, ptr noundef nonnull @.str.134, i32 noundef 4, ptr noundef %718, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %720 = load ptr, ptr @hws, align 4
  %721 = getelementptr ptr, ptr %720, i32 138
  store ptr %719, ptr %721, align 4
  %722 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.190, ptr noundef nonnull @.str.106, i32 noundef 4, ptr noundef %718, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %723 = load ptr, ptr @hws, align 4
  %724 = getelementptr ptr, ptr %723, i32 197
  store ptr %722, ptr %724, align 4
  %725 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.191, ptr noundef nonnull @.str.118, i32 noundef 4, ptr noundef %718, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %726 = load ptr, ptr @hws, align 4
  %727 = getelementptr ptr, ptr %726, i32 198
  store ptr %725, ptr %727, align 4
  %728 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.246) #4
  %729 = icmp eq i32 %728, 0
  br i1 %729, label %735, label %730

730:                                              ; preds = %692
  %731 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.149, ptr noundef nonnull @.str.106, i32 noundef 4, ptr noundef %718, i8 noundef zeroext 4, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %732 = load ptr, ptr @hws, align 4
  %733 = getelementptr ptr, ptr %732, i32 144
  store ptr %731, ptr %733, align 4
  %734 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.150, ptr noundef nonnull @.str.107, i32 noundef 4, ptr noundef %718, i8 noundef zeroext 4, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  br label %743

735:                                              ; preds = %692
  %736 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.245) #4
  %737 = icmp eq i32 %736, 0
  br i1 %737, label %748, label %738

738:                                              ; preds = %735
  %739 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.192, ptr noundef nonnull @.str.187, i32 noundef 4, ptr noundef %718, i8 noundef zeroext 4, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %740 = load ptr, ptr @hws, align 4
  %741 = getelementptr ptr, ptr %740, i32 234
  store ptr %739, ptr %741, align 4
  %742 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.193, ptr noundef nonnull @.str.132, i32 noundef 4, ptr noundef %718, i8 noundef zeroext 4, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  br label %743

743:                                              ; preds = %738, %730
  %744 = phi i32 [ 235, %738 ], [ 145, %730 ]
  %745 = phi ptr [ %742, %738 ], [ %734, %730 ]
  %746 = load ptr, ptr @hws, align 4
  %747 = getelementptr ptr, ptr %746, i32 %744
  store ptr %745, ptr %747, align 4
  br label %748

748:                                              ; preds = %743, %735
  %749 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.194, ptr noundef nonnull @.str.106, i32 noundef 4, ptr noundef %718, i8 noundef zeroext 6, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %750 = load ptr, ptr @hws, align 4
  %751 = getelementptr ptr, ptr %750, i32 199
  store ptr %749, ptr %751, align 4
  %752 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.195, ptr noundef nonnull @.str.118, i32 noundef 4, ptr noundef %718, i8 noundef zeroext 6, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %753 = load ptr, ptr @hws, align 4
  %754 = getelementptr ptr, ptr %753, i32 200
  store ptr %752, ptr %754, align 4
  %755 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.196, ptr noundef nonnull @.str.108, i32 noundef 4, ptr noundef %718, i8 noundef zeroext 10, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %756 = load ptr, ptr @hws, align 4
  %757 = getelementptr ptr, ptr %756, i32 162
  store ptr %755, ptr %757, align 4
  %758 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.197, ptr noundef nonnull @.str.106, i32 noundef 4, ptr noundef %718, i8 noundef zeroext 12, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %759 = load ptr, ptr @hws, align 4
  %760 = getelementptr ptr, ptr %759, i32 247
  store ptr %758, ptr %760, align 4
  %761 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.198, ptr noundef nonnull @.str.110, i32 noundef 4, ptr noundef %718, i8 noundef zeroext 14, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %762 = load ptr, ptr @hws, align 4
  %763 = getelementptr ptr, ptr %762, i32 176
  store ptr %761, ptr %763, align 4
  %764 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.199, ptr noundef nonnull @.str.106, i32 noundef 4, ptr noundef %718, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %765 = load ptr, ptr @hws, align 4
  %766 = getelementptr ptr, ptr %765, i32 208
  store ptr %764, ptr %766, align 4
  %767 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.200, ptr noundef nonnull @.str.138, ptr noundef null, ptr noundef null, i32 noundef 2052, ptr noundef %718, i8 noundef zeroext 20, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %768 = load ptr, ptr @hws, align 4
  %769 = getelementptr ptr, ptr %768, i32 163
  store ptr %767, ptr %769, align 4
  %770 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.201, ptr noundef nonnull @.str.106, i32 noundef 2052, ptr noundef %718, i8 noundef zeroext 24, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %771 = load ptr, ptr @hws, align 4
  %772 = getelementptr ptr, ptr %771, i32 164
  store ptr %770, ptr %772, align 4
  %773 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.202, ptr noundef nonnull @.str.106, i32 noundef 2052, ptr noundef %718, i8 noundef zeroext 26, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %774 = load ptr, ptr @hws, align 4
  %775 = getelementptr ptr, ptr %774, i32 249
  store ptr %773, ptr %775, align 4
  %776 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.187, ptr noundef nonnull @.str.139, ptr noundef null, ptr noundef null, i32 noundef 2052, ptr noundef %718, i8 noundef zeroext 28, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %777 = load ptr, ptr @hws, align 4
  %778 = getelementptr ptr, ptr %777, i32 212
  store ptr %776, ptr %778, align 4
  %779 = getelementptr i8, ptr %264, i32 120
  %780 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.203, ptr noundef nonnull @.str.115, i32 noundef 4, ptr noundef %779, i8 noundef zeroext 12, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %781 = load ptr, ptr @hws, align 4
  %782 = getelementptr ptr, ptr %781, i32 220
  store ptr %780, ptr %782, align 4
  %783 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.204, ptr noundef nonnull @.str.112, i32 noundef 4, ptr noundef %779, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %784 = load ptr, ptr @hws, align 4
  %785 = getelementptr ptr, ptr %784, i32 167
  store ptr %783, ptr %785, align 4
  %786 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.205, ptr noundef nonnull @.str.112, i32 noundef 4, ptr noundef %779, i8 noundef zeroext 18, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %787 = load ptr, ptr @hws, align 4
  %788 = getelementptr ptr, ptr %787, i32 168
  store ptr %786, ptr %788, align 4
  %789 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.206, ptr noundef nonnull @.str.112, i32 noundef 4, ptr noundef %779, i8 noundef zeroext 20, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %790 = load ptr, ptr @hws, align 4
  %791 = getelementptr ptr, ptr %790, i32 169
  store ptr %789, ptr %791, align 4
  %792 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.207, ptr noundef nonnull @.str.112, i32 noundef 4, ptr noundef %779, i8 noundef zeroext 22, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %793 = load ptr, ptr @hws, align 4
  %794 = getelementptr ptr, ptr %793, i32 170
  store ptr %792, ptr %794, align 4
  %795 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.208, ptr noundef nonnull @.str.115, i32 noundef 4, ptr noundef %779, i8 noundef zeroext 24, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %796 = load ptr, ptr @hws, align 4
  %797 = getelementptr ptr, ptr %796, i32 131
  store ptr %795, ptr %797, align 4
  %798 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.209, ptr noundef nonnull @.str.114, i32 noundef 4, ptr noundef %779, i8 noundef zeroext 26, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %799 = load ptr, ptr @hws, align 4
  %800 = getelementptr ptr, ptr %799, i32 132
  store ptr %798, ptr %800, align 4
  %801 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.210, ptr noundef nonnull @.str.126, i32 noundef 4, ptr noundef %779, i8 noundef zeroext 28, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %802 = load ptr, ptr @hws, align 4
  %803 = getelementptr ptr, ptr %802, i32 133
  store ptr %801, ptr %803, align 4
  %804 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.211, ptr noundef nonnull @.str.115, i32 noundef 4, ptr noundef %779, i8 noundef zeroext 30, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %805 = load ptr, ptr @hws, align 4
  %806 = getelementptr ptr, ptr %805, i32 134
  store ptr %804, ptr %806, align 4
  %807 = getelementptr i8, ptr %264, i32 124
  %808 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.212, ptr noundef nonnull @.str.107, i32 noundef 2052, ptr noundef %807, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %809 = load ptr, ptr @hws, align 4
  %810 = getelementptr ptr, ptr %809, i32 177
  store ptr %808, ptr %810, align 4
  %811 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.213, ptr noundef nonnull @.str.107, i32 noundef 4, ptr noundef %807, i8 noundef zeroext 6, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %812 = load ptr, ptr @hws, align 4
  %813 = getelementptr ptr, ptr %812, i32 184
  store ptr %811, ptr %813, align 4
  %814 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.214, ptr noundef nonnull @.str.106, i32 noundef 4, ptr noundef %807, i8 noundef zeroext 8, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %815 = load ptr, ptr @hws, align 4
  %816 = getelementptr ptr, ptr %815, i32 224
  store ptr %814, ptr %816, align 4
  %817 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.215, ptr noundef nonnull @.str.106, i32 noundef 4, ptr noundef %807, i8 noundef zeroext 10, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %818 = load ptr, ptr @hws, align 4
  %819 = getelementptr ptr, ptr %818, i32 209
  store ptr %817, ptr %819, align 4
  %820 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.216, ptr noundef nonnull @.str.106, i32 noundef 4, ptr noundef %807, i8 noundef zeroext 12, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %821 = load ptr, ptr @hws, align 4
  %822 = getelementptr ptr, ptr %821, i32 187
  store ptr %820, ptr %822, align 4
  %823 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.217, ptr noundef nonnull @.str.130, i32 noundef 4, ptr noundef %807, i8 noundef zeroext 14, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_audio) #4
  %824 = load ptr, ptr @hws, align 4
  %825 = getelementptr ptr, ptr %824, i32 188
  store ptr %823, ptr %825, align 4
  %826 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.218, ptr noundef nonnull @.str.106, i32 noundef 4, ptr noundef %807, i8 noundef zeroext 14, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_audio) #4
  %827 = load ptr, ptr @hws, align 4
  %828 = getelementptr ptr, ptr %827, i32 213
  store ptr %826, ptr %828, align 4
  %829 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.219, ptr noundef nonnull @.str.120, i32 noundef 4, ptr noundef %807, i8 noundef zeroext 22, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_sai3) #4
  %830 = load ptr, ptr @hws, align 4
  %831 = getelementptr ptr, ptr %830, i32 182
  store ptr %829, ptr %831, align 4
  %832 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.220, ptr noundef nonnull @.str.106, i32 noundef 4, ptr noundef %807, i8 noundef zeroext 22, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_sai3) #4
  %833 = load ptr, ptr @hws, align 4
  %834 = getelementptr ptr, ptr %833, i32 183
  store ptr %832, ptr %834, align 4
  %835 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.221, ptr noundef nonnull @.str.106, i32 noundef 4, ptr noundef %807, i8 noundef zeroext 24, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %836 = load ptr, ptr @hws, align 4
  %837 = getelementptr ptr, ptr %836, i32 189
  store ptr %835, ptr %837, align 4
  %838 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.222, ptr noundef nonnull @.str.118, i32 noundef 4, ptr noundef %807, i8 noundef zeroext 24, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %839 = load ptr, ptr @hws, align 4
  %840 = getelementptr ptr, ptr %839, i32 190
  store ptr %838, ptr %840, align 4
  %841 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.223, ptr noundef nonnull @.str.106, i32 noundef 4, ptr noundef %807, i8 noundef zeroext 26, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %842 = load ptr, ptr @hws, align 4
  %843 = getelementptr ptr, ptr %842, i32 201
  store ptr %841, ptr %843, align 4
  %844 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.224, ptr noundef nonnull @.str.118, i32 noundef 4, ptr noundef %807, i8 noundef zeroext 26, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %845 = load ptr, ptr @hws, align 4
  %846 = getelementptr ptr, ptr %845, i32 202
  store ptr %844, ptr %846, align 4
  %847 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.225, ptr noundef nonnull @.str.122, i32 noundef 4, ptr noundef %807, i8 noundef zeroext 28, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_sai1) #4
  %848 = load ptr, ptr @hws, align 4
  %849 = getelementptr ptr, ptr %848, i32 178
  store ptr %847, ptr %849, align 4
  %850 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.226, ptr noundef nonnull @.str.106, i32 noundef 4, ptr noundef %807, i8 noundef zeroext 28, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_sai1) #4
  %851 = load ptr, ptr @hws, align 4
  %852 = getelementptr ptr, ptr %851, i32 179
  store ptr %850, ptr %852, align 4
  %853 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.227, ptr noundef nonnull @.str.128, i32 noundef 4, ptr noundef %807, i8 noundef zeroext 30, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_sai2) #4
  %854 = load ptr, ptr @hws, align 4
  %855 = getelementptr ptr, ptr %854, i32 180
  store ptr %853, ptr %855, align 4
  %856 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.228, ptr noundef nonnull @.str.106, i32 noundef 4, ptr noundef %807, i8 noundef zeroext 30, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_sai2) #4
  %857 = load ptr, ptr @hws, align 4
  %858 = getelementptr ptr, ptr %857, i32 181
  store ptr %856, ptr %858, align 4
  %859 = getelementptr i8, ptr %264, i32 128
  %860 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.229, ptr noundef nonnull @.str.106, i32 noundef 4, ptr noundef %859, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %861 = load ptr, ptr @hws, align 4
  %862 = getelementptr ptr, ptr %861, i32 205
  store ptr %860, ptr %862, align 4
  %863 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.230, ptr noundef nonnull @.str.117, i32 noundef 4, ptr noundef %859, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %864 = load ptr, ptr @hws, align 4
  %865 = getelementptr ptr, ptr %864, i32 206
  store ptr %863, ptr %865, align 4
  %866 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.231, ptr noundef nonnull @.str.116, i32 noundef 4, ptr noundef %859, i8 noundef zeroext 4, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %867 = load ptr, ptr @hws, align 4
  %868 = getelementptr ptr, ptr %867, i32 207
  store ptr %866, ptr %868, align 4
  %869 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.246) #4
  %870 = icmp eq i32 %869, 0
  br i1 %870, label %878, label %871

871:                                              ; preds = %748
  %872 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.232, ptr noundef nonnull @.str.86, i32 noundef 4, ptr noundef %859, i8 noundef zeroext 6, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %873 = load ptr, ptr @hws, align 4
  %874 = getelementptr ptr, ptr %873, i32 216
  store ptr %872, ptr %874, align 4
  %875 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.233, ptr noundef nonnull @.str.86, i32 noundef 4, ptr noundef %859, i8 noundef zeroext 8, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %876 = load ptr, ptr @hws, align 4
  %877 = getelementptr ptr, ptr %876, i32 215
  store ptr %875, ptr %877, align 4
  br label %878

878:                                              ; preds = %871, %748
  %879 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.234, ptr noundef nonnull @.str.111, i32 noundef 4, ptr noundef %859, i8 noundef zeroext 10, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %880 = load ptr, ptr @hws, align 4
  %881 = getelementptr ptr, ptr %880, i32 143
  store ptr %879, ptr %881, align 4
  %882 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.235, ptr noundef nonnull @.str.112, i32 noundef 4, ptr noundef %859, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %883 = load ptr, ptr @hws, align 4
  %884 = getelementptr ptr, ptr %883, i32 174
  store ptr %882, ptr %884, align 4
  %885 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.236, ptr noundef nonnull @.str.106, i32 noundef 4, ptr noundef %859, i8 noundef zeroext 14, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %886 = load ptr, ptr @hws, align 4
  %887 = getelementptr ptr, ptr %886, i32 203
  store ptr %885, ptr %887, align 4
  %888 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.237, ptr noundef nonnull @.str.118, i32 noundef 4, ptr noundef %859, i8 noundef zeroext 14, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %889 = load ptr, ptr @hws, align 4
  %890 = getelementptr ptr, ptr %889, i32 204
  store ptr %888, ptr %890, align 4
  %891 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.238, ptr noundef nonnull @.str.106, i32 noundef 4, ptr noundef %859, i8 noundef zeroext 20, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %892 = load ptr, ptr @hws, align 4
  %893 = getelementptr ptr, ptr %892, i32 210
  store ptr %891, ptr %893, align 4
  %894 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.239, ptr noundef nonnull @.str.112, i32 noundef 4, ptr noundef %859, i8 noundef zeroext 24, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %895 = load ptr, ptr @hws, align 4
  %896 = getelementptr ptr, ptr %895, i32 159
  store ptr %894, ptr %896, align 4
  %897 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.240, ptr noundef nonnull @.str.112, i32 noundef 4, ptr noundef %859, i8 noundef zeroext 26, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %898 = load ptr, ptr @hws, align 4
  %899 = getelementptr ptr, ptr %898, i32 171
  store ptr %897, ptr %899, align 4
  %900 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.241, ptr noundef nonnull @.str.112, i32 noundef 4, ptr noundef %859, i8 noundef zeroext 28, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %901 = load ptr, ptr @hws, align 4
  %902 = getelementptr ptr, ptr %901, i32 172
  store ptr %900, ptr %902, align 4
  %903 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.242, ptr noundef nonnull @.str.112, i32 noundef 4, ptr noundef %859, i8 noundef zeroext 30, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #4
  %904 = load ptr, ptr @hws, align 4
  %905 = getelementptr ptr, ptr %904, i32 173
  store ptr %903, ptr %905, align 4
  %906 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.243, ptr noundef nonnull @.str.135, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %398, i8 noundef zeroext 7, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %907 = load ptr, ptr @hws, align 4
  %908 = getelementptr ptr, ptr %907, i32 239
  store ptr %906, ptr %908, align 4
  %909 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.244, ptr noundef nonnull @.str.136, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %398, i8 noundef zeroext 24, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #4
  %910 = load ptr, ptr @hws, align 4
  %911 = getelementptr ptr, ptr %910, i32 242
  store ptr %909, ptr %911, align 4
  tail call void @imx_mmdc_mask_handshake(ptr noundef %264, i32 noundef 0) #4
  %912 = load ptr, ptr @hws, align 4
  tail call void @imx_check_clk_hws(ptr noundef %912, i32 noundef 250) #4
  %913 = load ptr, ptr @clk_hw_data, align 4
  %914 = tail call i32 @of_clk_add_hw_provider(ptr noundef %0, ptr noundef nonnull @of_clk_hw_onecell_get, ptr noundef %913) #4
  %915 = load ptr, ptr @hws, align 4
  %916 = getelementptr ptr, ptr %915, i32 96
  %917 = load ptr, ptr %916, align 4
  %918 = getelementptr inbounds %struct.clk_hw, ptr %917, i32 0, i32 1
  %919 = load ptr, ptr %918, align 4
  %920 = tail call i32 @clk_set_rate(ptr noundef %919, i32 noundef 99000000) #4
  %921 = load ptr, ptr @hws, align 4
  %922 = getelementptr ptr, ptr %921, i32 62
  %923 = load ptr, ptr %922, align 4
  %924 = getelementptr inbounds %struct.clk_hw, ptr %923, i32 0, i32 1
  %925 = load ptr, ptr %924, align 4
  %926 = getelementptr ptr, ptr %921, i32 3
  %927 = load ptr, ptr %926, align 4
  %928 = getelementptr inbounds %struct.clk_hw, ptr %927, i32 0, i32 1
  %929 = load ptr, ptr %928, align 4
  %930 = tail call i32 @clk_set_parent(ptr noundef %925, ptr noundef %929) #4
  %931 = load ptr, ptr @hws, align 4
  %932 = getelementptr ptr, ptr %931, i32 85
  %933 = load ptr, ptr %932, align 4
  %934 = getelementptr inbounds %struct.clk_hw, ptr %933, i32 0, i32 1
  %935 = load ptr, ptr %934, align 4
  %936 = getelementptr ptr, ptr %931, i32 94
  %937 = load ptr, ptr %936, align 4
  %938 = getelementptr inbounds %struct.clk_hw, ptr %937, i32 0, i32 1
  %939 = load ptr, ptr %938, align 4
  %940 = tail call i32 @clk_set_parent(ptr noundef %935, ptr noundef %939) #4
  %941 = load ptr, ptr @hws, align 4
  %942 = getelementptr ptr, ptr %941, i32 60
  %943 = load ptr, ptr %942, align 4
  %944 = getelementptr inbounds %struct.clk_hw, ptr %943, i32 0, i32 1
  %945 = load ptr, ptr %944, align 4
  %946 = getelementptr ptr, ptr %941, i32 26
  %947 = load ptr, ptr %946, align 4
  %948 = getelementptr inbounds %struct.clk_hw, ptr %947, i32 0, i32 1
  %949 = load ptr, ptr %948, align 4
  %950 = tail call i32 @clk_set_parent(ptr noundef %945, ptr noundef %949) #4
  %951 = load ptr, ptr @hws, align 4
  %952 = getelementptr ptr, ptr %951, i32 85
  %953 = load ptr, ptr %952, align 4
  %954 = getelementptr inbounds %struct.clk_hw, ptr %953, i32 0, i32 1
  %955 = load ptr, ptr %954, align 4
  %956 = getelementptr ptr, ptr %951, i32 60
  %957 = load ptr, ptr %956, align 4
  %958 = getelementptr inbounds %struct.clk_hw, ptr %957, i32 0, i32 1
  %959 = load ptr, ptr %958, align 4
  %960 = tail call i32 @clk_set_parent(ptr noundef %955, ptr noundef %959) #4
  %961 = load ptr, ptr @hws, align 4
  %962 = getelementptr ptr, ptr %961, i32 96
  %963 = load ptr, ptr %962, align 4
  %964 = getelementptr inbounds %struct.clk_hw, ptr %963, i32 0, i32 1
  %965 = load ptr, ptr %964, align 4
  %966 = tail call i32 @clk_set_rate(ptr noundef %965, i32 noundef 132000000) #4
  %967 = load ptr, ptr @hws, align 4
  %968 = getelementptr ptr, ptr %967, i32 82
  %969 = load ptr, ptr %968, align 4
  %970 = getelementptr inbounds %struct.clk_hw, ptr %969, i32 0, i32 1
  %971 = load ptr, ptr %970, align 4
  %972 = getelementptr ptr, ptr %967, i32 3
  %973 = load ptr, ptr %972, align 4
  %974 = getelementptr inbounds %struct.clk_hw, ptr %973, i32 0, i32 1
  %975 = load ptr, ptr %974, align 4
  %976 = tail call i32 @clk_set_parent(ptr noundef %971, ptr noundef %975) #4
  %977 = load ptr, ptr @hws, align 4
  %978 = getelementptr ptr, ptr %977, i32 44
  %979 = load ptr, ptr %978, align 4
  %980 = getelementptr inbounds %struct.clk_hw, ptr %979, i32 0, i32 1
  %981 = load ptr, ptr %980, align 4
  %982 = tail call i32 @clk_set_rate(ptr noundef %981, i32 noundef 50000000) #4
  %983 = load ptr, ptr @hws, align 4
  %984 = getelementptr ptr, ptr %983, i32 45
  %985 = load ptr, ptr %984, align 4
  %986 = getelementptr inbounds %struct.clk_hw, ptr %985, i32 0, i32 1
  %987 = load ptr, ptr %986, align 4
  %988 = tail call i32 @clk_set_rate(ptr noundef %987, i32 noundef 50000000) #4
  %989 = load ptr, ptr @hws, align 4
  %990 = getelementptr ptr, ptr %989, i32 138
  %991 = load ptr, ptr %990, align 4
  %992 = getelementptr inbounds %struct.clk_hw, ptr %991, i32 0, i32 1
  %993 = load ptr, ptr %992, align 4
  %994 = tail call i32 @clk_set_rate(ptr noundef %993, i32 noundef 24000000) #4
  %995 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.245) #4
  %996 = icmp eq i32 %995, 0
  br i1 %996, label %1009, label %997

997:                                              ; preds = %878
  %998 = load ptr, ptr @hws, align 4
  %999 = getelementptr ptr, ptr %998, i32 127
  %1000 = load ptr, ptr %999, align 4
  %1001 = getelementptr inbounds %struct.clk_hw, ptr %1000, i32 0, i32 1
  %1002 = load ptr, ptr %1001, align 4
  %1003 = tail call i32 @clk_prepare(ptr noundef %1002) #4
  %1004 = icmp eq i32 %1003, 0
  br i1 %1004, label %1005, label %1009

1005:                                             ; preds = %997
  %1006 = tail call i32 @clk_enable(ptr noundef %1002) #4
  %1007 = icmp eq i32 %1006, 0
  br i1 %1007, label %1009, label %1008

1008:                                             ; preds = %1005
  tail call void @clk_unprepare(ptr noundef %1002) #4
  br label %1009

1009:                                             ; preds = %1008, %1005, %997, %878
  %1010 = load ptr, ptr @hws, align 4
  %1011 = getelementptr ptr, ptr %1010, i32 34
  %1012 = load ptr, ptr %1011, align 4
  %1013 = getelementptr inbounds %struct.clk_hw, ptr %1012, i32 0, i32 1
  %1014 = load ptr, ptr %1013, align 4
  %1015 = tail call i32 @clk_prepare(ptr noundef %1014) #4
  %1016 = icmp eq i32 %1015, 0
  br i1 %1016, label %1017, label %1021

1017:                                             ; preds = %1009
  %1018 = tail call i32 @clk_enable(ptr noundef %1014) #4
  %1019 = icmp eq i32 %1018, 0
  br i1 %1019, label %1021, label %1020

1020:                                             ; preds = %1017
  tail call void @clk_unprepare(ptr noundef %1014) #4
  br label %1021

1021:                                             ; preds = %1020, %1017, %1009
  %1022 = load ptr, ptr @hws, align 4
  %1023 = getelementptr ptr, ptr %1022, i32 35
  %1024 = load ptr, ptr %1023, align 4
  %1025 = getelementptr inbounds %struct.clk_hw, ptr %1024, i32 0, i32 1
  %1026 = load ptr, ptr %1025, align 4
  %1027 = tail call i32 @clk_prepare(ptr noundef %1026) #4
  %1028 = icmp eq i32 %1027, 0
  br i1 %1028, label %1029, label %1033

1029:                                             ; preds = %1021
  %1030 = tail call i32 @clk_enable(ptr noundef %1026) #4
  %1031 = icmp eq i32 %1030, 0
  br i1 %1031, label %1033, label %1032

1032:                                             ; preds = %1029
  tail call void @clk_unprepare(ptr noundef %1026) #4
  br label %1033

1033:                                             ; preds = %1032, %1029, %1021
  %1034 = load ptr, ptr @hws, align 4
  %1035 = getelementptr ptr, ptr %1034, i32 78
  %1036 = load ptr, ptr %1035, align 4
  %1037 = getelementptr inbounds %struct.clk_hw, ptr %1036, i32 0, i32 1
  %1038 = load ptr, ptr %1037, align 4
  %1039 = getelementptr ptr, ptr %1034, i32 54
  %1040 = load ptr, ptr %1039, align 4
  %1041 = getelementptr inbounds %struct.clk_hw, ptr %1040, i32 0, i32 1
  %1042 = load ptr, ptr %1041, align 4
  %1043 = tail call i32 @clk_set_parent(ptr noundef %1038, ptr noundef %1042) #4
  %1044 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.246) #4
  %1045 = icmp eq i32 %1044, 0
  br i1 %1045, label %1050, label %1046

1046:                                             ; preds = %1033
  %1047 = load ptr, ptr @hws, align 4
  %1048 = getelementptr ptr, ptr %1047, i32 74
  %1049 = getelementptr ptr, ptr %1047, i32 27
  br label %1057

1050:                                             ; preds = %1033
  %1051 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.245) #4
  %1052 = icmp eq i32 %1051, 0
  br i1 %1052, label %1067, label %1053

1053:                                             ; preds = %1050
  %1054 = load ptr, ptr @hws, align 4
  %1055 = getelementptr ptr, ptr %1054, i32 231
  %1056 = getelementptr ptr, ptr %1054, i32 42
  br label %1057

1057:                                             ; preds = %1053, %1046
  %1058 = phi ptr [ %1056, %1053 ], [ %1049, %1046 ]
  %1059 = phi ptr [ %1055, %1053 ], [ %1048, %1046 ]
  %1060 = load ptr, ptr %1059, align 4
  %1061 = getelementptr inbounds %struct.clk_hw, ptr %1060, i32 0, i32 1
  %1062 = load ptr, ptr %1061, align 4
  %1063 = load ptr, ptr %1058, align 4
  %1064 = getelementptr inbounds %struct.clk_hw, ptr %1063, i32 0, i32 1
  %1065 = load ptr, ptr %1064, align 4
  %1066 = tail call i32 @clk_set_parent(ptr noundef %1062, ptr noundef %1065) #4
  br label %1067

1067:                                             ; preds = %1057, %1050
  %1068 = load ptr, ptr @hws, align 4
  %1069 = getelementptr ptr, ptr %1068, i32 77
  %1070 = load ptr, ptr %1069, align 4
  %1071 = getelementptr inbounds %struct.clk_hw, ptr %1070, i32 0, i32 1
  %1072 = load ptr, ptr %1071, align 4
  %1073 = getelementptr ptr, ptr %1068, i32 38
  %1074 = load ptr, ptr %1073, align 4
  %1075 = getelementptr inbounds %struct.clk_hw, ptr %1074, i32 0, i32 1
  %1076 = load ptr, ptr %1075, align 4
  %1077 = tail call i32 @clk_set_parent(ptr noundef %1072, ptr noundef %1076) #4
  br label %1078

1078:                                             ; preds = %1067, %5
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
declare dso_local ptr @imx_clk_hw_pfd(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_hw_register_divider(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

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

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_hw_register_fixed_rate(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_hw_register_mux(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_register_fixed_factor(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_hw_register_gate(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_machine_is_compatible(ptr noundef) local_unnamed_addr #1

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
