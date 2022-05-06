; ModuleID = '/llk/IR/drivers/clk/imx/clk-imx6sll.c_pt.bc'
source_filename = "../drivers/clk/imx/clk-imx6sll.c"
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
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.list_head = type { ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.clk_hw_onecell_data = type { i32, [0 x ptr] }
%struct.clk_hw = type { ptr, ptr, ptr }

@__of_table_imx6sll = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx6sll-ccm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx6sll_of_clk_init_driver }, section "__clk_of_table", align 4
@clk_hw_data = internal unnamed_addr global ptr null, align 4
@.str = private unnamed_addr constant [30 x i8] c"drivers/clk/imx/clk-imx6sll.c\00", align 1
@hws = internal unnamed_addr global ptr null, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"dummy\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"ckil\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"osc\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"ipp_di0\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"ipp_di1\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"fsl,imx6sll-anatop\00", align 1
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
@.str.47 = private unnamed_addr constant [14 x i8] c"pll4_post_div\00", align 1
@post_div_table = internal constant [4 x %struct.clk_div_table] [%struct.clk_div_table { i32 2, i32 1 }, %struct.clk_div_table { i32 1, i32 2 }, %struct.clk_div_table { i32 0, i32 4 }, %struct.clk_div_table zeroinitializer], align 4
@imx_ccm_lock = external dso_local global %struct.spinlock, align 4
@.str.48 = private unnamed_addr constant [15 x i8] c"pll4_audio_div\00", align 1
@.str.49 = private unnamed_addr constant [14 x i8] c"pll5_post_div\00", align 1
@.str.50 = private unnamed_addr constant [15 x i8] c"pll5_video_div\00", align 1
@video_div_table = internal constant [5 x %struct.clk_div_table] [%struct.clk_div_table { i32 0, i32 1 }, %struct.clk_div_table { i32 1, i32 2 }, %struct.clk_div_table { i32 2, i32 1 }, %struct.clk_div_table { i32 3, i32 4 }, %struct.clk_div_table zeroinitializer], align 4
@.str.51 = private unnamed_addr constant [10 x i8] c"pll2_198m\00", align 1
@.str.52 = private unnamed_addr constant [10 x i8] c"pll3_120m\00", align 1
@.str.53 = private unnamed_addr constant [9 x i8] c"pll3_80m\00", align 1
@.str.54 = private unnamed_addr constant [9 x i8] c"pll3_60m\00", align 1
@.str.55 = private unnamed_addr constant [5 x i8] c"step\00", align 1
@step_sels = internal global [2 x ptr] [ptr @.str.3, ptr @.str.41], align 4
@.str.56 = private unnamed_addr constant [8 x i8] c"pll1_sw\00", align 1
@pll1_sw_sels = internal global [2 x ptr] [ptr @.str.28, ptr @.str.55], align 4
@.str.57 = private unnamed_addr constant [12 x i8] c"axi_alt_sel\00", align 1
@axi_alt_sels = internal global [2 x ptr] [ptr @.str.41, ptr @.str.44], align 4
@.str.58 = private unnamed_addr constant [8 x i8] c"axi_sel\00", align 1
@axi_sels = internal global [2 x ptr] [ptr @.str.78, ptr @.str.57], align 4
@.str.59 = private unnamed_addr constant [11 x i8] c"periph_pre\00", align 1
@periph_pre_sels = internal global [4 x ptr] [ptr @.str.29, ptr @.str.41, ptr @.str.39, ptr @.str.51], align 4
@.str.60 = private unnamed_addr constant [12 x i8] c"periph2_pre\00", align 1
@periph2_pre_sels = internal global [4 x ptr] [ptr @.str.29, ptr @.str.41, ptr @.str.39, ptr @.str.48], align 4
@.str.61 = private unnamed_addr constant [16 x i8] c"periph_clk2_sel\00", align 1
@periph_clk2_sels = internal global [3 x ptr] [ptr @.str.30, ptr @.str.3, ptr @.str.3], align 4
@.str.62 = private unnamed_addr constant [17 x i8] c"periph2_clk2_sel\00", align 1
@periph2_clk2_sels = internal global [2 x ptr] [ptr @.str.30, ptr @.str.3], align 4
@.str.63 = private unnamed_addr constant [11 x i8] c"usdhc1_sel\00", align 1
@usdhc_sels = internal global [2 x ptr] [ptr @.str.41, ptr @.str.39], align 4
@.str.64 = private unnamed_addr constant [11 x i8] c"usdhc2_sel\00", align 1
@.str.65 = private unnamed_addr constant [11 x i8] c"usdhc3_sel\00", align 1
@.str.66 = private unnamed_addr constant [9 x i8] c"ssi1_sel\00", align 1
@ssi_sels = internal global [4 x ptr] [ptr @.str.45, ptr @.str.46, ptr @.str.48, ptr @.str.1], align 4
@.str.67 = private unnamed_addr constant [9 x i8] c"ssi2_sel\00", align 1
@.str.68 = private unnamed_addr constant [9 x i8] c"ssi3_sel\00", align 1
@.str.69 = private unnamed_addr constant [11 x i8] c"perclk_sel\00", align 1
@perclk_sels = internal global [2 x ptr] [ptr @.str.82, ptr @.str.3], align 4
@.str.70 = private unnamed_addr constant [9 x i8] c"uart_sel\00", align 1
@uart_sels = internal global [2 x ptr] [ptr @.str.53, ptr @.str.3], align 4
@.str.71 = private unnamed_addr constant [10 x i8] c"spdif_sel\00", align 1
@spdif_sels = internal global [4 x ptr] [ptr @.str.48, ptr @.str.45, ptr @.str.50, ptr @.str.30], align 4
@.str.72 = private unnamed_addr constant [17 x i8] c"extern_audio_sel\00", align 1
@.str.73 = private unnamed_addr constant [13 x i8] c"epdc_pre_sel\00", align 1
@epdc_pre_sels = internal global [6 x ptr] [ptr @.str.29, ptr @.str.30, ptr @.str.50, ptr @.str.39, ptr @.str.41, ptr @.str.45], align 4
@.str.74 = private unnamed_addr constant [9 x i8] c"epdc_sel\00", align 1
@epdc_sels = internal global [5 x ptr] [ptr @.str.101, ptr @.str.4, ptr @.str.5, ptr @.str.177, ptr @.str.178], align 4
@.str.75 = private unnamed_addr constant [10 x i8] c"ecspi_sel\00", align 1
@ecspi_sels = internal global [2 x ptr] [ptr @.str.54, ptr @.str.3], align 4
@.str.76 = private unnamed_addr constant [14 x i8] c"lcdif_pre_sel\00", align 1
@lcdif_pre_sels = internal global [6 x ptr] [ptr @.str.29, ptr @.str.46, ptr @.str.50, ptr @.str.39, ptr @.str.40, ptr @.str.44], align 4
@.str.77 = private unnamed_addr constant [10 x i8] c"lcdif_sel\00", align 1
@lcdif_sels = internal global [5 x ptr] [ptr @.str.84, ptr @.str.4, ptr @.str.5, ptr @.str.177, ptr @.str.178], align 4
@.str.78 = private unnamed_addr constant [7 x i8] c"periph\00", align 1
@periph_sels = internal global [2 x ptr] [ptr @.str.59, ptr @.str.80], align 4
@.str.79 = private unnamed_addr constant [8 x i8] c"periph2\00", align 1
@periph2_sels = internal global [2 x ptr] [ptr @.str.60, ptr @.str.81], align 4
@.str.80 = private unnamed_addr constant [12 x i8] c"periph_clk2\00", align 1
@.str.81 = private unnamed_addr constant [13 x i8] c"periph2_clk2\00", align 1
@.str.82 = private unnamed_addr constant [4 x i8] c"ipg\00", align 1
@.str.83 = private unnamed_addr constant [4 x i8] c"ahb\00", align 1
@.str.84 = private unnamed_addr constant [11 x i8] c"lcdif_podf\00", align 1
@.str.85 = private unnamed_addr constant [11 x i8] c"lcdif_pred\00", align 1
@.str.86 = private unnamed_addr constant [7 x i8] c"perclk\00", align 1
@.str.87 = private unnamed_addr constant [12 x i8] c"usdhc3_podf\00", align 1
@.str.88 = private unnamed_addr constant [12 x i8] c"usdhc2_podf\00", align 1
@.str.89 = private unnamed_addr constant [12 x i8] c"usdhc1_podf\00", align 1
@.str.90 = private unnamed_addr constant [10 x i8] c"uart_podf\00", align 1
@.str.91 = private unnamed_addr constant [10 x i8] c"ssi3_pred\00", align 1
@.str.92 = private unnamed_addr constant [10 x i8] c"ssi3_podf\00", align 1
@.str.93 = private unnamed_addr constant [10 x i8] c"ssi1_pred\00", align 1
@.str.94 = private unnamed_addr constant [10 x i8] c"ssi1_podf\00", align 1
@.str.95 = private unnamed_addr constant [10 x i8] c"ssi2_pred\00", align 1
@.str.96 = private unnamed_addr constant [10 x i8] c"ssi2_podf\00", align 1
@.str.97 = private unnamed_addr constant [11 x i8] c"spdif_pred\00", align 1
@.str.98 = private unnamed_addr constant [11 x i8] c"spdif_podf\00", align 1
@.str.99 = private unnamed_addr constant [18 x i8] c"extern_audio_pred\00", align 1
@.str.100 = private unnamed_addr constant [18 x i8] c"extern_audio_podf\00", align 1
@.str.101 = private unnamed_addr constant [10 x i8] c"epdc_podf\00", align 1
@.str.102 = private unnamed_addr constant [11 x i8] c"ecspi_podf\00", align 1
@.str.103 = private unnamed_addr constant [4 x i8] c"arm\00", align 1
@.str.104 = private unnamed_addr constant [10 x i8] c"mmdc_podf\00", align 1
@.str.105 = private unnamed_addr constant [4 x i8] c"axi\00", align 1
@.str.106 = private unnamed_addr constant [16 x i8] c"ldb_di0_div_3_5\00", align 1
@.str.107 = private unnamed_addr constant [12 x i8] c"ldb_di0_sel\00", align 1
@.str.108 = private unnamed_addr constant [14 x i8] c"ldb_di0_div_7\00", align 1
@.str.109 = private unnamed_addr constant [16 x i8] c"ldb_di1_div_3_5\00", align 1
@.str.110 = private unnamed_addr constant [12 x i8] c"ldb_di1_sel\00", align 1
@.str.111 = private unnamed_addr constant [14 x i8] c"ldb_di1_div_7\00", align 1
@ldb_di0_sels = internal global [6 x ptr] [ptr @.str.50, ptr @.str.39, ptr @.str.41, ptr @.str.42, ptr @.str.40, ptr @.str.46], align 4
@ldb_di1_sels = internal global [6 x ptr] [ptr @.str.30, ptr @.str.39, ptr @.str.41, ptr @.str.29, ptr @.str.46, ptr @.str.45], align 4
@.str.112 = private unnamed_addr constant [16 x i8] c"ldb_di0_div_sel\00", align 1
@ldb_di0_div_sels = internal global [2 x ptr] [ptr @.str.106, ptr @.str.108], align 4
@.str.113 = private unnamed_addr constant [16 x i8] c"ldb_di1_div_sel\00", align 1
@ldb_di1_div_sels = internal global [2 x ptr] [ptr @.str.109, ptr @.str.111], align 4
@.str.114 = private unnamed_addr constant [9 x i8] c"aips_tz1\00", align 1
@.str.115 = private unnamed_addr constant [9 x i8] c"aips_tz2\00", align 1
@.str.116 = private unnamed_addr constant [4 x i8] c"dcp\00", align 1
@.str.117 = private unnamed_addr constant [10 x i8] c"uart2_ipg\00", align 1
@.str.118 = private unnamed_addr constant [13 x i8] c"uart2_serial\00", align 1
@.str.119 = private unnamed_addr constant [6 x i8] c"gpio2\00", align 1
@.str.120 = private unnamed_addr constant [7 x i8] c"ecspi1\00", align 1
@.str.121 = private unnamed_addr constant [7 x i8] c"ecspi2\00", align 1
@.str.122 = private unnamed_addr constant [7 x i8] c"ecspi3\00", align 1
@.str.123 = private unnamed_addr constant [7 x i8] c"ecspi4\00", align 1
@.str.124 = private unnamed_addr constant [10 x i8] c"uart3_ipg\00", align 1
@.str.125 = private unnamed_addr constant [13 x i8] c"uart3_serial\00", align 1
@.str.126 = private unnamed_addr constant [6 x i8] c"epit1\00", align 1
@.str.127 = private unnamed_addr constant [6 x i8] c"epit2\00", align 1
@.str.128 = private unnamed_addr constant [9 x i8] c"gpt1_bus\00", align 1
@.str.129 = private unnamed_addr constant [12 x i8] c"gpt1_serial\00", align 1
@.str.130 = private unnamed_addr constant [10 x i8] c"uart4_ipg\00", align 1
@.str.131 = private unnamed_addr constant [13 x i8] c"uart4_serial\00", align 1
@.str.132 = private unnamed_addr constant [6 x i8] c"gpio1\00", align 1
@.str.133 = private unnamed_addr constant [6 x i8] c"gpio5\00", align 1
@.str.134 = private unnamed_addr constant [6 x i8] c"gpio6\00", align 1
@.str.135 = private unnamed_addr constant [4 x i8] c"csi\00", align 1
@.str.136 = private unnamed_addr constant [5 x i8] c"i2c1\00", align 1
@.str.137 = private unnamed_addr constant [5 x i8] c"i2c2\00", align 1
@.str.138 = private unnamed_addr constant [5 x i8] c"i2c3\00", align 1
@.str.139 = private unnamed_addr constant [6 x i8] c"ocotp\00", align 1
@.str.140 = private unnamed_addr constant [6 x i8] c"gpio3\00", align 1
@.str.141 = private unnamed_addr constant [10 x i8] c"lcdif_apb\00", align 1
@.str.142 = private unnamed_addr constant [4 x i8] c"pxp\00", align 1
@.str.143 = private unnamed_addr constant [10 x i8] c"uart5_ipg\00", align 1
@.str.144 = private unnamed_addr constant [13 x i8] c"uart5_serial\00", align 1
@.str.145 = private unnamed_addr constant [10 x i8] c"epdc_aclk\00", align 1
@.str.146 = private unnamed_addr constant [9 x i8] c"epdc_pix\00", align 1
@.str.147 = private unnamed_addr constant [10 x i8] c"lcdif_pix\00", align 1
@.str.148 = private unnamed_addr constant [6 x i8] c"gpio4\00", align 1
@.str.149 = private unnamed_addr constant [6 x i8] c"wdog1\00", align 1
@.str.150 = private unnamed_addr constant [13 x i8] c"mmdc_p0_fast\00", align 1
@.str.151 = private unnamed_addr constant [12 x i8] c"mmdc_p0_ipg\00", align 1
@.str.152 = private unnamed_addr constant [12 x i8] c"mmdc_p1_ipg\00", align 1
@.str.153 = private unnamed_addr constant [6 x i8] c"ocram\00", align 1
@.str.154 = private unnamed_addr constant [5 x i8] c"pwm1\00", align 1
@.str.155 = private unnamed_addr constant [5 x i8] c"pwm2\00", align 1
@.str.156 = private unnamed_addr constant [5 x i8] c"pwm3\00", align 1
@.str.157 = private unnamed_addr constant [5 x i8] c"pwm4\00", align 1
@.str.158 = private unnamed_addr constant [4 x i8] c"rom\00", align 1
@.str.159 = private unnamed_addr constant [5 x i8] c"sdma\00", align 1
@.str.160 = private unnamed_addr constant [6 x i8] c"wdog2\00", align 1
@.str.161 = private unnamed_addr constant [5 x i8] c"spba\00", align 1
@.str.162 = private unnamed_addr constant [13 x i8] c"extern_audio\00", align 1
@share_count_audio = internal global i32 0, align 4
@.str.163 = private unnamed_addr constant [6 x i8] c"spdif\00", align 1
@.str.164 = private unnamed_addr constant [11 x i8] c"spdif_gclk\00", align 1
@.str.165 = private unnamed_addr constant [5 x i8] c"ssi1\00", align 1
@share_count_ssi1 = internal global i32 0, align 4
@.str.166 = private unnamed_addr constant [9 x i8] c"ssi1_ipg\00", align 1
@.str.167 = private unnamed_addr constant [5 x i8] c"ssi2\00", align 1
@share_count_ssi2 = internal global i32 0, align 4
@.str.168 = private unnamed_addr constant [9 x i8] c"ssi2_ipg\00", align 1
@.str.169 = private unnamed_addr constant [5 x i8] c"ssi3\00", align 1
@share_count_ssi3 = internal global i32 0, align 4
@.str.170 = private unnamed_addr constant [9 x i8] c"ssi3_ipg\00", align 1
@.str.171 = private unnamed_addr constant [10 x i8] c"uart1_ipg\00", align 1
@.str.172 = private unnamed_addr constant [13 x i8] c"uart1_serial\00", align 1
@.str.173 = private unnamed_addr constant [7 x i8] c"usboh3\00", align 1
@.str.174 = private unnamed_addr constant [7 x i8] c"usdhc1\00", align 1
@.str.175 = private unnamed_addr constant [7 x i8] c"usdhc2\00", align 1
@.str.176 = private unnamed_addr constant [7 x i8] c"usdhc3\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.177 = private unnamed_addr constant [8 x i8] c"ldb_di0\00", align 1
@.str.178 = private unnamed_addr constant [8 x i8] c"ldb_di1\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__of_table_imx6sll], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @imx6sll_of_clk_init_driver(ptr noundef %0) #0 section ".init.text" {
  %2 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 10
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %2) #3
  tail call fastcc void @imx6sll_clocks_init(ptr noundef %0) #4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @imx6sll_clocks_init(ptr noundef %0) unnamed_addr #0 section ".init.text" {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 724) #5
  store ptr %3, ptr @clk_hw_data, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %6, !prof !8

5:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 86, i32 noundef 9, ptr noundef null) #3
  br label %632

6:                                                ; preds = %1
  store i32 180, ptr %3, align 8
  %7 = getelementptr inbounds %struct.clk_hw_onecell_data, ptr %3, i32 0, i32 1
  store ptr %7, ptr @hws, align 4
  %8 = tail call ptr @__clk_hw_register_fixed_rate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.1, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #3
  %9 = load ptr, ptr @hws, align 4
  store ptr %8, ptr %9, align 4
  %10 = tail call ptr @imx_obtain_fixed_clk_hw(ptr noundef %0, ptr noundef nonnull @.str.2) #3
  %11 = load ptr, ptr @hws, align 4
  %12 = getelementptr ptr, ptr %11, i32 1
  store ptr %10, ptr %12, align 4
  %13 = tail call ptr @imx_obtain_fixed_clk_hw(ptr noundef %0, ptr noundef nonnull @.str.3) #3
  %14 = load ptr, ptr @hws, align 4
  %15 = getelementptr ptr, ptr %14, i32 2
  store ptr %13, ptr %15, align 4
  %16 = tail call ptr @imx_obtain_fixed_clk_hw(ptr noundef %0, ptr noundef nonnull @.str.4) #3
  %17 = load ptr, ptr @hws, align 4
  %18 = getelementptr ptr, ptr %17, i32 157
  store ptr %16, ptr %18, align 4
  %19 = tail call ptr @imx_obtain_fixed_clk_hw(ptr noundef %0, ptr noundef nonnull @.str.5) #3
  %20 = load ptr, ptr @hws, align 4
  %21 = getelementptr ptr, ptr %20, i32 158
  store ptr %19, ptr %21, align 4
  %22 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.6) #3
  %23 = tail call ptr @of_iomap(ptr noundef %22, i32 noundef 0) #3
  tail call void @of_node_put(ptr noundef %22) #3
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %26, !prof !8

25:                                               ; preds = %6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 104, i32 noundef 9, ptr noundef null) #3
  br label %26

26:                                               ; preds = %25, %6
  %27 = getelementptr i8, ptr %23, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 65536) #3, !srcloc !9
  %28 = getelementptr i8, ptr %23, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 65536) #3, !srcloc !9
  %29 = getelementptr i8, ptr %23, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 65536) #3, !srcloc !9
  %30 = getelementptr i8, ptr %23, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 65536) #3, !srcloc !9
  %31 = getelementptr i8, ptr %23, i32 120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 65536) #3, !srcloc !9
  %32 = getelementptr i8, ptr %23, i32 168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 65536) #3, !srcloc !9
  %33 = getelementptr i8, ptr %23, i32 232
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 65536) #3, !srcloc !9
  %34 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.7, i8 noundef zeroext 2, ptr noundef nonnull @pll_bypass_src_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %23, i8 noundef zeroext 14, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %35 = load ptr, ptr @hws, align 4
  %36 = getelementptr ptr, ptr %35, i32 3
  store ptr %34, ptr %36, align 4
  %37 = getelementptr i8, ptr %23, i32 48
  %38 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.8, i8 noundef zeroext 2, ptr noundef nonnull @pll_bypass_src_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %37, i8 noundef zeroext 14, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %39 = load ptr, ptr @hws, align 4
  %40 = getelementptr ptr, ptr %39, i32 4
  store ptr %38, ptr %40, align 4
  %41 = getelementptr i8, ptr %23, i32 16
  %42 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.9, i8 noundef zeroext 2, ptr noundef nonnull @pll_bypass_src_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %41, i8 noundef zeroext 14, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %43 = load ptr, ptr @hws, align 4
  %44 = getelementptr ptr, ptr %43, i32 5
  store ptr %42, ptr %44, align 4
  %45 = getelementptr i8, ptr %23, i32 112
  %46 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.10, i8 noundef zeroext 2, ptr noundef nonnull @pll_bypass_src_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %45, i8 noundef zeroext 14, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %47 = load ptr, ptr @hws, align 4
  %48 = getelementptr ptr, ptr %47, i32 6
  store ptr %46, ptr %48, align 4
  %49 = getelementptr i8, ptr %23, i32 160
  %50 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.11, i8 noundef zeroext 2, ptr noundef nonnull @pll_bypass_src_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %49, i8 noundef zeroext 14, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %51 = load ptr, ptr @hws, align 4
  %52 = getelementptr ptr, ptr %51, i32 7
  store ptr %50, ptr %52, align 4
  %53 = getelementptr i8, ptr %23, i32 224
  %54 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.12, i8 noundef zeroext 2, ptr noundef nonnull @pll_bypass_src_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %53, i8 noundef zeroext 14, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %55 = load ptr, ptr @hws, align 4
  %56 = getelementptr ptr, ptr %55, i32 8
  store ptr %54, ptr %56, align 4
  %57 = getelementptr i8, ptr %23, i32 32
  %58 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.13, i8 noundef zeroext 2, ptr noundef nonnull @pll_bypass_src_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %57, i8 noundef zeroext 14, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %59 = load ptr, ptr @hws, align 4
  %60 = getelementptr ptr, ptr %59, i32 9
  store ptr %58, ptr %60, align 4
  %61 = tail call ptr @imx_clk_hw_pllv3(i32 noundef 1, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.7, ptr noundef %23, i32 noundef 127) #3
  %62 = load ptr, ptr @hws, align 4
  %63 = getelementptr ptr, ptr %62, i32 10
  store ptr %61, ptr %63, align 4
  %64 = tail call ptr @imx_clk_hw_pllv3(i32 noundef 0, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.8, ptr noundef %37, i32 noundef 1) #3
  %65 = load ptr, ptr @hws, align 4
  %66 = getelementptr ptr, ptr %65, i32 11
  store ptr %64, ptr %66, align 4
  %67 = tail call ptr @imx_clk_hw_pllv3(i32 noundef 2, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.9, ptr noundef %41, i32 noundef 3) #3
  %68 = load ptr, ptr @hws, align 4
  %69 = getelementptr ptr, ptr %68, i32 12
  store ptr %67, ptr %69, align 4
  %70 = tail call ptr @imx_clk_hw_pllv3(i32 noundef 4, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.10, ptr noundef %45, i32 noundef 127) #3
  %71 = load ptr, ptr @hws, align 4
  %72 = getelementptr ptr, ptr %71, i32 13
  store ptr %70, ptr %72, align 4
  %73 = tail call ptr @imx_clk_hw_pllv3(i32 noundef 4, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.11, ptr noundef %49, i32 noundef 127) #3
  %74 = load ptr, ptr @hws, align 4
  %75 = getelementptr ptr, ptr %74, i32 14
  store ptr %73, ptr %75, align 4
  %76 = tail call ptr @imx_clk_hw_pllv3(i32 noundef 5, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.12, ptr noundef %53, i32 noundef 3) #3
  %77 = load ptr, ptr @hws, align 4
  %78 = getelementptr ptr, ptr %77, i32 15
  store ptr %76, ptr %78, align 4
  %79 = tail call ptr @imx_clk_hw_pllv3(i32 noundef 2, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.13, ptr noundef %57, i32 noundef 3) #3
  %80 = load ptr, ptr @hws, align 4
  %81 = getelementptr ptr, ptr %80, i32 16
  store ptr %79, ptr %81, align 4
  %82 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.21, i8 noundef zeroext 2, ptr noundef nonnull @pll1_bypass_sels, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %23, i8 noundef zeroext 16, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %83 = load ptr, ptr @hws, align 4
  %84 = getelementptr ptr, ptr %83, i32 17
  store ptr %82, ptr %84, align 4
  %85 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.22, i8 noundef zeroext 2, ptr noundef nonnull @pll2_bypass_sels, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %37, i8 noundef zeroext 16, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %86 = load ptr, ptr @hws, align 4
  %87 = getelementptr ptr, ptr %86, i32 18
  store ptr %85, ptr %87, align 4
  %88 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.23, i8 noundef zeroext 2, ptr noundef nonnull @pll3_bypass_sels, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %41, i8 noundef zeroext 16, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %89 = load ptr, ptr @hws, align 4
  %90 = getelementptr ptr, ptr %89, i32 19
  store ptr %88, ptr %90, align 4
  %91 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.24, i8 noundef zeroext 2, ptr noundef nonnull @pll4_bypass_sels, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %45, i8 noundef zeroext 16, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %92 = load ptr, ptr @hws, align 4
  %93 = getelementptr ptr, ptr %92, i32 20
  store ptr %91, ptr %93, align 4
  %94 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.25, i8 noundef zeroext 2, ptr noundef nonnull @pll5_bypass_sels, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %49, i8 noundef zeroext 16, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %95 = load ptr, ptr @hws, align 4
  %96 = getelementptr ptr, ptr %95, i32 21
  store ptr %94, ptr %96, align 4
  %97 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.26, i8 noundef zeroext 2, ptr noundef nonnull @pll6_bypass_sels, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %53, i8 noundef zeroext 16, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %98 = load ptr, ptr @hws, align 4
  %99 = getelementptr ptr, ptr %98, i32 22
  store ptr %97, ptr %99, align 4
  %100 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.27, i8 noundef zeroext 2, ptr noundef nonnull @pll7_bypass_sels, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %57, i8 noundef zeroext 16, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %101 = load ptr, ptr @hws, align 4
  %102 = getelementptr ptr, ptr %101, i32 23
  store ptr %100, ptr %102, align 4
  %103 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.21, i32 noundef 4, i32 noundef 1, i32 noundef 1) #3
  %104 = load ptr, ptr @hws, align 4
  %105 = getelementptr ptr, ptr %104, i32 24
  store ptr %103, ptr %105, align 4
  %106 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.22, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %37, i8 noundef zeroext 13, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #3
  %107 = load ptr, ptr @hws, align 4
  %108 = getelementptr ptr, ptr %107, i32 25
  store ptr %106, ptr %108, align 4
  %109 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.23, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %41, i8 noundef zeroext 13, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #3
  %110 = load ptr, ptr @hws, align 4
  %111 = getelementptr ptr, ptr %110, i32 26
  store ptr %109, ptr %111, align 4
  %112 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.24, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %45, i8 noundef zeroext 13, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #3
  %113 = load ptr, ptr @hws, align 4
  %114 = getelementptr ptr, ptr %113, i32 27
  store ptr %112, ptr %114, align 4
  %115 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.25, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %49, i8 noundef zeroext 13, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #3
  %116 = load ptr, ptr @hws, align 4
  %117 = getelementptr ptr, ptr %116, i32 28
  store ptr %115, ptr %117, align 4
  %118 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.26, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %53, i8 noundef zeroext 13, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #3
  %119 = load ptr, ptr @hws, align 4
  %120 = getelementptr ptr, ptr %119, i32 29
  store ptr %118, ptr %120, align 4
  %121 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.27, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %57, i8 noundef zeroext 13, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #3
  %122 = load ptr, ptr @hws, align 4
  %123 = getelementptr ptr, ptr %122, i32 30
  store ptr %121, ptr %123, align 4
  %124 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.30, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %41, i8 noundef zeroext 20, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #3
  %125 = load ptr, ptr @hws, align 4
  %126 = getelementptr ptr, ptr %125, i32 31
  store ptr %124, ptr %126, align 4
  %127 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.34, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %57, i8 noundef zeroext 20, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #3
  %128 = load ptr, ptr @hws, align 4
  %129 = getelementptr ptr, ptr %128, i32 32
  store ptr %127, ptr %129, align 4
  %130 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.1, ptr noundef null, ptr noundef null, i32 noundef 2052, ptr noundef %41, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #3
  %131 = load ptr, ptr @hws, align 4
  %132 = getelementptr ptr, ptr %131, i32 33
  store ptr %130, ptr %132, align 4
  %133 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.1, ptr noundef null, ptr noundef null, i32 noundef 2052, ptr noundef %57, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #3
  %134 = load ptr, ptr @hws, align 4
  %135 = getelementptr ptr, ptr %134, i32 34
  store ptr %133, ptr %135, align 4
  %136 = getelementptr i8, ptr %23, i32 256
  %137 = tail call ptr @imx_clk_hw_pfd(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.29, ptr noundef %136, i8 noundef zeroext 0) #3
  %138 = load ptr, ptr @hws, align 4
  %139 = getelementptr ptr, ptr %138, i32 35
  store ptr %137, ptr %139, align 4
  %140 = tail call ptr @imx_clk_hw_pfd(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.29, ptr noundef %136, i8 noundef zeroext 1) #3
  %141 = load ptr, ptr @hws, align 4
  %142 = getelementptr ptr, ptr %141, i32 36
  store ptr %140, ptr %142, align 4
  %143 = tail call ptr @imx_clk_hw_pfd(ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.29, ptr noundef %136, i8 noundef zeroext 2) #3
  %144 = load ptr, ptr @hws, align 4
  %145 = getelementptr ptr, ptr %144, i32 37
  store ptr %143, ptr %145, align 4
  %146 = tail call ptr @imx_clk_hw_pfd(ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.29, ptr noundef %136, i8 noundef zeroext 3) #3
  %147 = load ptr, ptr @hws, align 4
  %148 = getelementptr ptr, ptr %147, i32 38
  store ptr %146, ptr %148, align 4
  %149 = getelementptr i8, ptr %23, i32 240
  %150 = tail call ptr @imx_clk_hw_pfd(ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.30, ptr noundef %149, i8 noundef zeroext 0) #3
  %151 = load ptr, ptr @hws, align 4
  %152 = getelementptr ptr, ptr %151, i32 39
  store ptr %150, ptr %152, align 4
  %153 = tail call ptr @imx_clk_hw_pfd(ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.30, ptr noundef %149, i8 noundef zeroext 1) #3
  %154 = load ptr, ptr @hws, align 4
  %155 = getelementptr ptr, ptr %154, i32 40
  store ptr %153, ptr %155, align 4
  %156 = tail call ptr @imx_clk_hw_pfd(ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.30, ptr noundef %149, i8 noundef zeroext 2) #3
  %157 = load ptr, ptr @hws, align 4
  %158 = getelementptr ptr, ptr %157, i32 41
  store ptr %156, ptr %158, align 4
  %159 = tail call ptr @imx_clk_hw_pfd(ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.30, ptr noundef %149, i8 noundef zeroext 3) #3
  %160 = load ptr, ptr @hws, align 4
  %161 = getelementptr ptr, ptr %160, i32 42
  store ptr %159, ptr %161, align 4
  %162 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.31, ptr noundef null, ptr noundef null, i32 noundef 5, ptr noundef %45, i8 noundef zeroext 19, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef nonnull @post_div_table, ptr noundef nonnull @imx_ccm_lock) #3
  %163 = load ptr, ptr @hws, align 4
  %164 = getelementptr ptr, ptr %163, i32 43
  store ptr %162, ptr %164, align 4
  %165 = getelementptr i8, ptr %23, i32 368
  %166 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.47, ptr noundef null, ptr noundef null, i32 noundef 5, ptr noundef %165, i8 noundef zeroext 15, i8 noundef zeroext 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %167 = load ptr, ptr @hws, align 4
  %168 = getelementptr ptr, ptr %167, i32 44
  store ptr %166, ptr %168, align 4
  %169 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.32, ptr noundef null, ptr noundef null, i32 noundef 5, ptr noundef %49, i8 noundef zeroext 19, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef nonnull @post_div_table, ptr noundef nonnull @imx_ccm_lock) #3
  %170 = load ptr, ptr @hws, align 4
  %171 = getelementptr ptr, ptr %170, i32 45
  store ptr %169, ptr %171, align 4
  %172 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.49, ptr noundef null, ptr noundef null, i32 noundef 5, ptr noundef %165, i8 noundef zeroext 30, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef nonnull @video_div_table, ptr noundef nonnull @imx_ccm_lock) #3
  %173 = load ptr, ptr @hws, align 4
  %174 = getelementptr ptr, ptr %173, i32 46
  store ptr %172, ptr %174, align 4
  %175 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.41, i32 noundef 4, i32 noundef 1, i32 noundef 2) #3
  %176 = load ptr, ptr @hws, align 4
  %177 = getelementptr ptr, ptr %176, i32 47
  store ptr %175, ptr %177, align 4
  %178 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.30, i32 noundef 4, i32 noundef 1, i32 noundef 4) #3
  %179 = load ptr, ptr @hws, align 4
  %180 = getelementptr ptr, ptr %179, i32 48
  store ptr %178, ptr %180, align 4
  %181 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.30, i32 noundef 4, i32 noundef 1, i32 noundef 6) #3
  %182 = load ptr, ptr @hws, align 4
  %183 = getelementptr ptr, ptr %182, i32 49
  store ptr %181, ptr %183, align 4
  %184 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.30, i32 noundef 4, i32 noundef 1, i32 noundef 8) #3
  %185 = load ptr, ptr @hws, align 4
  %186 = getelementptr ptr, ptr %185, i32 50
  store ptr %184, ptr %186, align 4
  %187 = tail call ptr @of_iomap(ptr noundef %0, i32 noundef 0) #3
  %188 = icmp eq ptr %187, null
  br i1 %188, label %189, label %190, !prof !8

189:                                              ; preds = %26
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 192, i32 noundef 9, ptr noundef null) #3
  br label %190

190:                                              ; preds = %189, %26
  %191 = getelementptr i8, ptr %187, i32 12
  %192 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.55, i8 noundef zeroext 2, ptr noundef nonnull @step_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %191, i8 noundef zeroext 8, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %193 = load ptr, ptr @hws, align 4
  %194 = getelementptr ptr, ptr %193, i32 51
  store ptr %192, ptr %194, align 4
  %195 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.56, i8 noundef zeroext 2, ptr noundef nonnull @pll1_sw_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %191, i8 noundef zeroext 2, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %196 = load ptr, ptr @hws, align 4
  %197 = getelementptr ptr, ptr %196, i32 52
  store ptr %195, ptr %197, align 4
  %198 = getelementptr i8, ptr %187, i32 20
  %199 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.57, i8 noundef zeroext 2, ptr noundef nonnull @axi_alt_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %198, i8 noundef zeroext 7, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %200 = load ptr, ptr @hws, align 4
  %201 = getelementptr ptr, ptr %200, i32 53
  store ptr %199, ptr %201, align 4
  %202 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.58, i8 noundef zeroext 2, ptr noundef nonnull @axi_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %198, i8 noundef zeroext 6, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %203 = load ptr, ptr @hws, align 4
  %204 = getelementptr ptr, ptr %203, i32 54
  store ptr %202, ptr %204, align 4
  %205 = getelementptr i8, ptr %187, i32 24
  %206 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.59, i8 noundef zeroext 4, ptr noundef nonnull @periph_pre_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %205, i8 noundef zeroext 18, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %207 = load ptr, ptr @hws, align 4
  %208 = getelementptr ptr, ptr %207, i32 55
  store ptr %206, ptr %208, align 4
  %209 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.60, i8 noundef zeroext 4, ptr noundef nonnull @periph2_pre_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %205, i8 noundef zeroext 21, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %210 = load ptr, ptr @hws, align 4
  %211 = getelementptr ptr, ptr %210, i32 56
  store ptr %209, ptr %211, align 4
  %212 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.61, i8 noundef zeroext 3, ptr noundef nonnull @periph_clk2_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %205, i8 noundef zeroext 12, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %213 = load ptr, ptr @hws, align 4
  %214 = getelementptr ptr, ptr %213, i32 57
  store ptr %212, ptr %214, align 4
  %215 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.62, i8 noundef zeroext 2, ptr noundef nonnull @periph2_clk2_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %205, i8 noundef zeroext 20, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %216 = load ptr, ptr @hws, align 4
  %217 = getelementptr ptr, ptr %216, i32 58
  store ptr %215, ptr %217, align 4
  %218 = getelementptr i8, ptr %187, i32 28
  %219 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.63, i8 noundef zeroext 2, ptr noundef nonnull @usdhc_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %218, i8 noundef zeroext 16, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %220 = load ptr, ptr @hws, align 4
  %221 = getelementptr ptr, ptr %220, i32 60
  store ptr %219, ptr %221, align 4
  %222 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.64, i8 noundef zeroext 2, ptr noundef nonnull @usdhc_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %218, i8 noundef zeroext 17, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %223 = load ptr, ptr @hws, align 4
  %224 = getelementptr ptr, ptr %223, i32 61
  store ptr %222, ptr %224, align 4
  %225 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.65, i8 noundef zeroext 2, ptr noundef nonnull @usdhc_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %218, i8 noundef zeroext 18, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %226 = load ptr, ptr @hws, align 4
  %227 = getelementptr ptr, ptr %226, i32 62
  store ptr %225, ptr %227, align 4
  %228 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.66, i8 noundef zeroext 4, ptr noundef nonnull @ssi_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %218, i8 noundef zeroext 10, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %229 = load ptr, ptr @hws, align 4
  %230 = getelementptr ptr, ptr %229, i32 63
  store ptr %228, ptr %230, align 4
  %231 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.67, i8 noundef zeroext 4, ptr noundef nonnull @ssi_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %218, i8 noundef zeroext 12, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %232 = load ptr, ptr @hws, align 4
  %233 = getelementptr ptr, ptr %232, i32 64
  store ptr %231, ptr %233, align 4
  %234 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.68, i8 noundef zeroext 4, ptr noundef nonnull @ssi_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %218, i8 noundef zeroext 14, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %235 = load ptr, ptr @hws, align 4
  %236 = getelementptr ptr, ptr %235, i32 65
  store ptr %234, ptr %236, align 4
  %237 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.69, i8 noundef zeroext 2, ptr noundef nonnull @perclk_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %218, i8 noundef zeroext 6, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %238 = load ptr, ptr @hws, align 4
  %239 = getelementptr ptr, ptr %238, i32 59
  store ptr %237, ptr %239, align 4
  %240 = getelementptr i8, ptr %187, i32 36
  %241 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.70, i8 noundef zeroext 2, ptr noundef nonnull @uart_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %240, i8 noundef zeroext 6, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %242 = load ptr, ptr @hws, align 4
  %243 = getelementptr ptr, ptr %242, i32 72
  store ptr %241, ptr %243, align 4
  %244 = getelementptr i8, ptr %187, i32 48
  %245 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.71, i8 noundef zeroext 4, ptr noundef nonnull @spdif_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %244, i8 noundef zeroext 20, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %246 = load ptr, ptr @hws, align 4
  %247 = getelementptr ptr, ptr %246, i32 70
  store ptr %245, ptr %247, align 4
  %248 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.72, i8 noundef zeroext 4, ptr noundef nonnull @spdif_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %244, i8 noundef zeroext 7, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %249 = load ptr, ptr @hws, align 4
  %250 = getelementptr ptr, ptr %249, i32 169
  store ptr %248, ptr %250, align 4
  %251 = getelementptr i8, ptr %187, i32 52
  %252 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.73, i8 noundef zeroext 6, ptr noundef nonnull @epdc_pre_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %251, i8 noundef zeroext 15, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %253 = load ptr, ptr @hws, align 4
  %254 = getelementptr ptr, ptr %253, i32 69
  store ptr %252, ptr %254, align 4
  %255 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.74, i8 noundef zeroext 5, ptr noundef nonnull @epdc_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %251, i8 noundef zeroext 9, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %256 = load ptr, ptr @hws, align 4
  %257 = getelementptr ptr, ptr %256, i32 95
  store ptr %255, ptr %257, align 4
  %258 = getelementptr i8, ptr %187, i32 56
  %259 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.75, i8 noundef zeroext 2, ptr noundef nonnull @ecspi_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %258, i8 noundef zeroext 18, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %260 = load ptr, ptr @hws, align 4
  %261 = getelementptr ptr, ptr %260, i32 71
  store ptr %259, ptr %261, align 4
  %262 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.76, i8 noundef zeroext 6, ptr noundef nonnull @lcdif_pre_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %258, i8 noundef zeroext 15, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %263 = load ptr, ptr @hws, align 4
  %264 = getelementptr ptr, ptr %263, i32 67
  store ptr %262, ptr %264, align 4
  %265 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.77, i8 noundef zeroext 5, ptr noundef nonnull @lcdif_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %258, i8 noundef zeroext 9, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %266 = load ptr, ptr @hws, align 4
  %267 = getelementptr ptr, ptr %266, i32 68
  store ptr %265, ptr %267, align 4
  %268 = getelementptr i8, ptr %187, i32 72
  %269 = tail call ptr @imx_clk_hw_busy_mux(ptr noundef nonnull @.str.78, ptr noundef %198, i8 noundef zeroext 25, i8 noundef zeroext 1, ptr noundef %268, i8 noundef zeroext 5, ptr noundef nonnull @periph_sels, i32 noundef 2) #3
  %270 = load ptr, ptr @hws, align 4
  %271 = getelementptr ptr, ptr %270, i32 74
  store ptr %269, ptr %271, align 4
  %272 = tail call ptr @imx_clk_hw_busy_mux(ptr noundef nonnull @.str.79, ptr noundef %198, i8 noundef zeroext 26, i8 noundef zeroext 1, ptr noundef %268, i8 noundef zeroext 3, ptr noundef nonnull @periph2_sels, i32 noundef 2) #3
  %273 = load ptr, ptr @hws, align 4
  %274 = getelementptr ptr, ptr %273, i32 75
  store ptr %272, ptr %274, align 4
  %275 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.61, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %198, i8 noundef zeroext 27, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %276 = load ptr, ptr @hws, align 4
  %277 = getelementptr ptr, ptr %276, i32 77
  store ptr %275, ptr %277, align 4
  %278 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.62, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %198, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %279 = load ptr, ptr @hws, align 4
  %280 = getelementptr ptr, ptr %279, i32 76
  store ptr %278, ptr %280, align 4
  %281 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.83, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %198, i8 noundef zeroext 8, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %282 = load ptr, ptr @hws, align 4
  %283 = getelementptr ptr, ptr %282, i32 81
  store ptr %281, ptr %283, align 4
  %284 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.85, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %205, i8 noundef zeroext 23, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %285 = load ptr, ptr @hws, align 4
  %286 = getelementptr ptr, ptr %285, i32 94
  store ptr %284, ptr %286, align 4
  %287 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.69, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %218, i8 noundef zeroext 0, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %288 = load ptr, ptr @hws, align 4
  %289 = getelementptr ptr, ptr %288, i32 82
  store ptr %287, ptr %289, align 4
  %290 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.65, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %240, i8 noundef zeroext 19, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %291 = load ptr, ptr @hws, align 4
  %292 = getelementptr ptr, ptr %291, i32 85
  store ptr %290, ptr %292, align 4
  %293 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.64, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %240, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %294 = load ptr, ptr @hws, align 4
  %295 = getelementptr ptr, ptr %294, i32 84
  store ptr %293, ptr %295, align 4
  %296 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.63, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %240, i8 noundef zeroext 11, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %297 = load ptr, ptr @hws, align 4
  %298 = getelementptr ptr, ptr %297, i32 83
  store ptr %296, ptr %298, align 4
  %299 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.70, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %240, i8 noundef zeroext 0, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %300 = load ptr, ptr @hws, align 4
  %301 = getelementptr ptr, ptr %300, i32 100
  store ptr %299, ptr %301, align 4
  %302 = getelementptr i8, ptr %187, i32 40
  %303 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.91, ptr noundef nonnull @.str.68, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %302, i8 noundef zeroext 22, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %304 = load ptr, ptr @hws, align 4
  %305 = getelementptr ptr, ptr %304, i32 88
  store ptr %303, ptr %305, align 4
  %306 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.92, ptr noundef nonnull @.str.91, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %302, i8 noundef zeroext 16, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %307 = load ptr, ptr @hws, align 4
  %308 = getelementptr ptr, ptr %307, i32 91
  store ptr %306, ptr %308, align 4
  %309 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.66, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %302, i8 noundef zeroext 6, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %310 = load ptr, ptr @hws, align 4
  %311 = getelementptr ptr, ptr %310, i32 86
  store ptr %309, ptr %311, align 4
  %312 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.93, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %302, i8 noundef zeroext 0, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %313 = load ptr, ptr @hws, align 4
  %314 = getelementptr ptr, ptr %313, i32 89
  store ptr %312, ptr %314, align 4
  %315 = getelementptr i8, ptr %187, i32 44
  %316 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.67, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %315, i8 noundef zeroext 6, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %317 = load ptr, ptr @hws, align 4
  %318 = getelementptr ptr, ptr %317, i32 87
  store ptr %316, ptr %318, align 4
  %319 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.95, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %315, i8 noundef zeroext 0, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %320 = load ptr, ptr @hws, align 4
  %321 = getelementptr ptr, ptr %320, i32 90
  store ptr %319, ptr %321, align 4
  %322 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.71, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %244, i8 noundef zeroext 25, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %323 = load ptr, ptr @hws, align 4
  %324 = getelementptr ptr, ptr %323, i32 97
  store ptr %322, ptr %324, align 4
  %325 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.97, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %244, i8 noundef zeroext 22, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %326 = load ptr, ptr @hws, align 4
  %327 = getelementptr ptr, ptr %326, i32 98
  store ptr %325, ptr %327, align 4
  %328 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.72, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %244, i8 noundef zeroext 12, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %329 = load ptr, ptr @hws, align 4
  %330 = getelementptr ptr, ptr %329, i32 170
  store ptr %328, ptr %330, align 4
  %331 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.99, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %244, i8 noundef zeroext 9, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %332 = load ptr, ptr @hws, align 4
  %333 = getelementptr ptr, ptr %332, i32 171
  store ptr %331, ptr %333, align 4
  %334 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.73, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %251, i8 noundef zeroext 12, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %335 = load ptr, ptr @hws, align 4
  %336 = getelementptr ptr, ptr %335, i32 96
  store ptr %334, ptr %336, align 4
  %337 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.75, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %258, i8 noundef zeroext 19, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %338 = load ptr, ptr @hws, align 4
  %339 = getelementptr ptr, ptr %338, i32 99
  store ptr %337, ptr %339, align 4
  %340 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.76, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %258, i8 noundef zeroext 12, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %341 = load ptr, ptr @hws, align 4
  %342 = getelementptr ptr, ptr %341, i32 93
  store ptr %340, ptr %342, align 4
  %343 = getelementptr i8, ptr %187, i32 16
  %344 = tail call ptr @imx_clk_hw_busy_divider(ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.56, ptr noundef %343, i8 noundef zeroext 0, i8 noundef zeroext 3, ptr noundef %268, i8 noundef zeroext 16) #3
  %345 = load ptr, ptr @hws, align 4
  %346 = getelementptr ptr, ptr %345, i32 73
  store ptr %344, ptr %346, align 4
  %347 = tail call ptr @imx_clk_hw_busy_divider(ptr noundef nonnull @.str.104, ptr noundef nonnull @.str.79, ptr noundef %198, i8 noundef zeroext 3, i8 noundef zeroext 3, ptr noundef %268, i8 noundef zeroext 2) #3
  %348 = load ptr, ptr @hws, align 4
  %349 = getelementptr ptr, ptr %348, i32 78
  store ptr %347, ptr %349, align 4
  %350 = tail call ptr @imx_clk_hw_busy_divider(ptr noundef nonnull @.str.105, ptr noundef nonnull @.str.58, ptr noundef %198, i8 noundef zeroext 16, i8 noundef zeroext 3, ptr noundef %268, i8 noundef zeroext 0) #3
  %351 = load ptr, ptr @hws, align 4
  %352 = getelementptr ptr, ptr %351, i32 79
  store ptr %350, ptr %352, align 4
  %353 = tail call ptr @imx_clk_hw_busy_divider(ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.78, ptr noundef %198, i8 noundef zeroext 10, i8 noundef zeroext 3, ptr noundef %268, i8 noundef zeroext 1) #3
  %354 = load ptr, ptr @hws, align 4
  %355 = getelementptr ptr, ptr %354, i32 80
  store ptr %353, ptr %355, align 4
  %356 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.106, ptr noundef nonnull @.str.107, i32 noundef 4, i32 noundef 2, i32 noundef 7) #3
  %357 = load ptr, ptr @hws, align 4
  %358 = getelementptr ptr, ptr %357, i32 160
  store ptr %356, ptr %358, align 4
  %359 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.107, i32 noundef 4, i32 noundef 1, i32 noundef 7) #3
  %360 = load ptr, ptr @hws, align 4
  %361 = getelementptr ptr, ptr %360, i32 161
  store ptr %359, ptr %361, align 4
  %362 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.109, ptr noundef nonnull @.str.110, i32 noundef 4, i32 noundef 2, i32 noundef 7) #3
  %363 = load ptr, ptr @hws, align 4
  %364 = getelementptr ptr, ptr %363, i32 165
  store ptr %362, ptr %364, align 4
  %365 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.111, ptr noundef nonnull @.str.110, i32 noundef 4, i32 noundef 1, i32 noundef 7) #3
  %366 = load ptr, ptr @hws, align 4
  %367 = getelementptr ptr, ptr %366, i32 166
  store ptr %365, ptr %367, align 4
  %368 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.107, i8 noundef zeroext 6, ptr noundef nonnull @ldb_di0_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %315, i8 noundef zeroext 9, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %369 = load ptr, ptr @hws, align 4
  %370 = getelementptr ptr, ptr %369, i32 159
  store ptr %368, ptr %370, align 4
  %371 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.110, i8 noundef zeroext 6, ptr noundef nonnull @ldb_di1_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %218, i8 noundef zeroext 7, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %372 = load ptr, ptr @hws, align 4
  %373 = getelementptr ptr, ptr %372, i32 164
  store ptr %371, ptr %373, align 4
  %374 = getelementptr i8, ptr %187, i32 32
  %375 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.112, i8 noundef zeroext 2, ptr noundef nonnull @ldb_di0_div_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %374, i8 noundef zeroext 10, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %376 = load ptr, ptr @hws, align 4
  %377 = getelementptr ptr, ptr %376, i32 162
  store ptr %375, ptr %377, align 4
  %378 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.113, i8 noundef zeroext 2, ptr noundef nonnull @ldb_di1_div_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %374, i8 noundef zeroext 10, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %379 = load ptr, ptr @hws, align 4
  %380 = getelementptr ptr, ptr %379, i32 167
  store ptr %378, ptr %380, align 4
  %381 = getelementptr i8, ptr %187, i32 104
  %382 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.114, ptr noundef nonnull @.str.83, i32 noundef 2052, ptr noundef %381, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %383 = load ptr, ptr @hws, align 4
  %384 = getelementptr ptr, ptr %383, i32 101
  store ptr %382, ptr %384, align 4
  %385 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.115, ptr noundef nonnull @.str.83, i32 noundef 2052, ptr noundef %381, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %386 = load ptr, ptr @hws, align 4
  %387 = getelementptr ptr, ptr %386, i32 102
  store ptr %385, ptr %387, align 4
  %388 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.116, ptr noundef nonnull @.str.83, i32 noundef 4, ptr noundef %381, i8 noundef zeroext 10, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %389 = load ptr, ptr @hws, align 4
  %390 = getelementptr ptr, ptr %389, i32 103
  store ptr %388, ptr %390, align 4
  %391 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.82, i32 noundef 4, ptr noundef %381, i8 noundef zeroext 28, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %392 = load ptr, ptr @hws, align 4
  %393 = getelementptr ptr, ptr %392, i32 104
  store ptr %391, ptr %393, align 4
  %394 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.118, ptr noundef nonnull @.str.90, i32 noundef 4, ptr noundef %381, i8 noundef zeroext 28, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %395 = load ptr, ptr @hws, align 4
  %396 = getelementptr ptr, ptr %395, i32 105
  store ptr %394, ptr %396, align 4
  %397 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.119, ptr noundef nonnull @.str.82, i32 noundef 4, ptr noundef %381, i8 noundef zeroext 30, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %398 = load ptr, ptr @hws, align 4
  %399 = getelementptr ptr, ptr %398, i32 174
  store ptr %397, ptr %399, align 4
  %400 = getelementptr i8, ptr %187, i32 108
  %401 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.120, ptr noundef nonnull @.str.102, i32 noundef 4, ptr noundef %400, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %402 = load ptr, ptr @hws, align 4
  %403 = getelementptr ptr, ptr %402, i32 106
  store ptr %401, ptr %403, align 4
  %404 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.102, i32 noundef 4, ptr noundef %400, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %405 = load ptr, ptr @hws, align 4
  %406 = getelementptr ptr, ptr %405, i32 107
  store ptr %404, ptr %406, align 4
  %407 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.122, ptr noundef nonnull @.str.102, i32 noundef 4, ptr noundef %400, i8 noundef zeroext 4, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %408 = load ptr, ptr @hws, align 4
  %409 = getelementptr ptr, ptr %408, i32 108
  store ptr %407, ptr %409, align 4
  %410 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.123, ptr noundef nonnull @.str.102, i32 noundef 4, ptr noundef %400, i8 noundef zeroext 6, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %411 = load ptr, ptr @hws, align 4
  %412 = getelementptr ptr, ptr %411, i32 109
  store ptr %410, ptr %412, align 4
  %413 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.124, ptr noundef nonnull @.str.82, i32 noundef 4, ptr noundef %400, i8 noundef zeroext 10, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %414 = load ptr, ptr @hws, align 4
  %415 = getelementptr ptr, ptr %414, i32 110
  store ptr %413, ptr %415, align 4
  %416 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.125, ptr noundef nonnull @.str.90, i32 noundef 4, ptr noundef %400, i8 noundef zeroext 10, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %417 = load ptr, ptr @hws, align 4
  %418 = getelementptr ptr, ptr %417, i32 111
  store ptr %416, ptr %418, align 4
  %419 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.126, ptr noundef nonnull @.str.86, i32 noundef 4, ptr noundef %400, i8 noundef zeroext 12, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %420 = load ptr, ptr @hws, align 4
  %421 = getelementptr ptr, ptr %420, i32 114
  store ptr %419, ptr %421, align 4
  %422 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.127, ptr noundef nonnull @.str.86, i32 noundef 4, ptr noundef %400, i8 noundef zeroext 14, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %423 = load ptr, ptr @hws, align 4
  %424 = getelementptr ptr, ptr %423, i32 115
  store ptr %422, ptr %424, align 4
  %425 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.128, ptr noundef nonnull @.str.86, i32 noundef 4, ptr noundef %400, i8 noundef zeroext 20, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %426 = load ptr, ptr @hws, align 4
  %427 = getelementptr ptr, ptr %426, i32 116
  store ptr %425, ptr %427, align 4
  %428 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.129, ptr noundef nonnull @.str.86, i32 noundef 4, ptr noundef %400, i8 noundef zeroext 22, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %429 = load ptr, ptr @hws, align 4
  %430 = getelementptr ptr, ptr %429, i32 117
  store ptr %428, ptr %430, align 4
  %431 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.130, ptr noundef nonnull @.str.82, i32 noundef 4, ptr noundef %400, i8 noundef zeroext 24, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %432 = load ptr, ptr @hws, align 4
  %433 = getelementptr ptr, ptr %432, i32 112
  store ptr %431, ptr %433, align 4
  %434 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.90, i32 noundef 4, ptr noundef %400, i8 noundef zeroext 24, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %435 = load ptr, ptr @hws, align 4
  %436 = getelementptr ptr, ptr %435, i32 113
  store ptr %434, ptr %436, align 4
  %437 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.132, ptr noundef nonnull @.str.82, i32 noundef 4, ptr noundef %400, i8 noundef zeroext 26, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %438 = load ptr, ptr @hws, align 4
  %439 = getelementptr ptr, ptr %438, i32 173
  store ptr %437, ptr %439, align 4
  %440 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.133, ptr noundef nonnull @.str.82, i32 noundef 4, ptr noundef %400, i8 noundef zeroext 30, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %441 = load ptr, ptr @hws, align 4
  %442 = getelementptr ptr, ptr %441, i32 177
  store ptr %440, ptr %442, align 4
  %443 = getelementptr i8, ptr %187, i32 112
  %444 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.134, ptr noundef nonnull @.str.82, i32 noundef 4, ptr noundef %443, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %445 = load ptr, ptr @hws, align 4
  %446 = getelementptr ptr, ptr %445, i32 178
  store ptr %444, ptr %446, align 4
  %447 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.135, ptr noundef nonnull @.str.105, i32 noundef 4, ptr noundef %443, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %448 = load ptr, ptr @hws, align 4
  %449 = getelementptr ptr, ptr %448, i32 118
  store ptr %447, ptr %449, align 4
  %450 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.136, ptr noundef nonnull @.str.86, i32 noundef 4, ptr noundef %443, i8 noundef zeroext 6, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %451 = load ptr, ptr @hws, align 4
  %452 = getelementptr ptr, ptr %451, i32 119
  store ptr %450, ptr %452, align 4
  %453 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.137, ptr noundef nonnull @.str.86, i32 noundef 4, ptr noundef %443, i8 noundef zeroext 8, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %454 = load ptr, ptr @hws, align 4
  %455 = getelementptr ptr, ptr %454, i32 120
  store ptr %453, ptr %455, align 4
  %456 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.138, ptr noundef nonnull @.str.86, i32 noundef 4, ptr noundef %443, i8 noundef zeroext 10, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %457 = load ptr, ptr @hws, align 4
  %458 = getelementptr ptr, ptr %457, i32 121
  store ptr %456, ptr %458, align 4
  %459 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.139, ptr noundef nonnull @.str.82, i32 noundef 4, ptr noundef %443, i8 noundef zeroext 12, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %460 = load ptr, ptr @hws, align 4
  %461 = getelementptr ptr, ptr %460, i32 122
  store ptr %459, ptr %461, align 4
  %462 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.140, ptr noundef nonnull @.str.82, i32 noundef 4, ptr noundef %443, i8 noundef zeroext 26, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %463 = load ptr, ptr @hws, align 4
  %464 = getelementptr ptr, ptr %463, i32 175
  store ptr %462, ptr %464, align 4
  %465 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.141, ptr noundef nonnull @.str.105, i32 noundef 4, ptr noundef %443, i8 noundef zeroext 28, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %466 = load ptr, ptr @hws, align 4
  %467 = getelementptr ptr, ptr %466, i32 123
  store ptr %465, ptr %467, align 4
  %468 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.142, ptr noundef nonnull @.str.105, i32 noundef 4, ptr noundef %443, i8 noundef zeroext 30, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %469 = load ptr, ptr @hws, align 4
  %470 = getelementptr ptr, ptr %469, i32 124
  store ptr %468, ptr %470, align 4
  %471 = getelementptr i8, ptr %187, i32 116
  %472 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.143, ptr noundef nonnull @.str.82, i32 noundef 4, ptr noundef %471, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %473 = load ptr, ptr @hws, align 4
  %474 = getelementptr ptr, ptr %473, i32 125
  store ptr %472, ptr %474, align 4
  %475 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.144, ptr noundef nonnull @.str.90, i32 noundef 4, ptr noundef %471, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %476 = load ptr, ptr @hws, align 4
  %477 = getelementptr ptr, ptr %476, i32 126
  store ptr %475, ptr %477, align 4
  %478 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.145, ptr noundef nonnull @.str.105, i32 noundef 4, ptr noundef %471, i8 noundef zeroext 4, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %479 = load ptr, ptr @hws, align 4
  %480 = getelementptr ptr, ptr %479, i32 127
  store ptr %478, ptr %480, align 4
  %481 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.146, ptr noundef nonnull @.str.101, i32 noundef 4, ptr noundef %471, i8 noundef zeroext 4, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %482 = load ptr, ptr @hws, align 4
  %483 = getelementptr ptr, ptr %482, i32 128
  store ptr %481, ptr %483, align 4
  %484 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.147, ptr noundef nonnull @.str.84, i32 noundef 4, ptr noundef %471, i8 noundef zeroext 10, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %485 = load ptr, ptr @hws, align 4
  %486 = getelementptr ptr, ptr %485, i32 129
  store ptr %484, ptr %486, align 4
  %487 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.82, i32 noundef 4, ptr noundef %471, i8 noundef zeroext 12, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %488 = load ptr, ptr @hws, align 4
  %489 = getelementptr ptr, ptr %488, i32 176
  store ptr %487, ptr %489, align 4
  %490 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.149, ptr noundef nonnull @.str.82, i32 noundef 4, ptr noundef %471, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %491 = load ptr, ptr @hws, align 4
  %492 = getelementptr ptr, ptr %491, i32 130
  store ptr %490, ptr %492, align 4
  %493 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.150, ptr noundef nonnull @.str.104, ptr noundef null, ptr noundef null, i32 noundef 2052, ptr noundef %471, i8 noundef zeroext 20, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #3
  %494 = load ptr, ptr @hws, align 4
  %495 = getelementptr ptr, ptr %494, i32 131
  store ptr %493, ptr %495, align 4
  %496 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.151, ptr noundef nonnull @.str.82, i32 noundef 2052, ptr noundef %471, i8 noundef zeroext 24, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %497 = load ptr, ptr @hws, align 4
  %498 = getelementptr ptr, ptr %497, i32 132
  store ptr %496, ptr %498, align 4
  %499 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.152, ptr noundef nonnull @.str.82, i32 noundef 2052, ptr noundef %471, i8 noundef zeroext 26, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %500 = load ptr, ptr @hws, align 4
  %501 = getelementptr ptr, ptr %500, i32 179
  store ptr %499, ptr %501, align 4
  %502 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.153, ptr noundef nonnull @.str.83, ptr noundef null, ptr noundef null, i32 noundef 2052, ptr noundef %471, i8 noundef zeroext 28, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #3
  %503 = load ptr, ptr @hws, align 4
  %504 = getelementptr ptr, ptr %503, i32 133
  store ptr %502, ptr %504, align 4
  %505 = getelementptr i8, ptr %187, i32 120
  %506 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.154, ptr noundef nonnull @.str.86, i32 noundef 4, ptr noundef %505, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %507 = load ptr, ptr @hws, align 4
  %508 = getelementptr ptr, ptr %507, i32 134
  store ptr %506, ptr %508, align 4
  %509 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.155, ptr noundef nonnull @.str.86, i32 noundef 4, ptr noundef %505, i8 noundef zeroext 18, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %510 = load ptr, ptr @hws, align 4
  %511 = getelementptr ptr, ptr %510, i32 135
  store ptr %509, ptr %511, align 4
  %512 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.156, ptr noundef nonnull @.str.86, i32 noundef 4, ptr noundef %505, i8 noundef zeroext 20, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %513 = load ptr, ptr @hws, align 4
  %514 = getelementptr ptr, ptr %513, i32 136
  store ptr %512, ptr %514, align 4
  %515 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.157, ptr noundef nonnull @.str.86, i32 noundef 4, ptr noundef %505, i8 noundef zeroext 22, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %516 = load ptr, ptr @hws, align 4
  %517 = getelementptr ptr, ptr %516, i32 137
  store ptr %515, ptr %517, align 4
  %518 = getelementptr i8, ptr %187, i32 124
  %519 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.158, ptr noundef nonnull @.str.83, i32 noundef 2052, ptr noundef %518, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %520 = load ptr, ptr @hws, align 4
  %521 = getelementptr ptr, ptr %520, i32 138
  store ptr %519, ptr %521, align 4
  %522 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.83, i32 noundef 4, ptr noundef %518, i8 noundef zeroext 6, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %523 = load ptr, ptr @hws, align 4
  %524 = getelementptr ptr, ptr %523, i32 139
  store ptr %522, ptr %524, align 4
  %525 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.160, ptr noundef nonnull @.str.82, i32 noundef 4, ptr noundef %518, i8 noundef zeroext 10, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %526 = load ptr, ptr @hws, align 4
  %527 = getelementptr ptr, ptr %526, i32 141
  store ptr %525, ptr %527, align 4
  %528 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.161, ptr noundef nonnull @.str.82, i32 noundef 4, ptr noundef %518, i8 noundef zeroext 12, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %529 = load ptr, ptr @hws, align 4
  %530 = getelementptr ptr, ptr %529, i32 142
  store ptr %528, ptr %530, align 4
  %531 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.162, ptr noundef nonnull @.str.100, i32 noundef 4, ptr noundef %518, i8 noundef zeroext 14, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_audio) #3
  %532 = load ptr, ptr @hws, align 4
  %533 = getelementptr ptr, ptr %532, i32 172
  store ptr %531, ptr %533, align 4
  %534 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.163, ptr noundef nonnull @.str.98, i32 noundef 4, ptr noundef %518, i8 noundef zeroext 14, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_audio) #3
  %535 = load ptr, ptr @hws, align 4
  %536 = getelementptr ptr, ptr %535, i32 143
  store ptr %534, ptr %536, align 4
  %537 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.164, ptr noundef nonnull @.str.82, i32 noundef 4, ptr noundef %518, i8 noundef zeroext 14, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_audio) #3
  %538 = load ptr, ptr @hws, align 4
  %539 = getelementptr ptr, ptr %538, i32 144
  store ptr %537, ptr %539, align 4
  %540 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.165, ptr noundef nonnull @.str.94, i32 noundef 4, ptr noundef %518, i8 noundef zeroext 18, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_ssi1) #3
  %541 = load ptr, ptr @hws, align 4
  %542 = getelementptr ptr, ptr %541, i32 145
  store ptr %540, ptr %542, align 4
  %543 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.166, ptr noundef nonnull @.str.82, i32 noundef 4, ptr noundef %518, i8 noundef zeroext 18, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_ssi1) #3
  %544 = load ptr, ptr @hws, align 4
  %545 = getelementptr ptr, ptr %544, i32 146
  store ptr %543, ptr %545, align 4
  %546 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.167, ptr noundef nonnull @.str.96, i32 noundef 4, ptr noundef %518, i8 noundef zeroext 20, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_ssi2) #3
  %547 = load ptr, ptr @hws, align 4
  %548 = getelementptr ptr, ptr %547, i32 147
  store ptr %546, ptr %548, align 4
  %549 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.168, ptr noundef nonnull @.str.82, i32 noundef 4, ptr noundef %518, i8 noundef zeroext 20, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_ssi2) #3
  %550 = load ptr, ptr @hws, align 4
  %551 = getelementptr ptr, ptr %550, i32 148
  store ptr %549, ptr %551, align 4
  %552 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.169, ptr noundef nonnull @.str.92, i32 noundef 4, ptr noundef %518, i8 noundef zeroext 22, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_ssi3) #3
  %553 = load ptr, ptr @hws, align 4
  %554 = getelementptr ptr, ptr %553, i32 149
  store ptr %552, ptr %554, align 4
  %555 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.170, ptr noundef nonnull @.str.82, i32 noundef 4, ptr noundef %518, i8 noundef zeroext 22, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef nonnull @share_count_ssi3) #3
  %556 = load ptr, ptr @hws, align 4
  %557 = getelementptr ptr, ptr %556, i32 150
  store ptr %555, ptr %557, align 4
  %558 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.171, ptr noundef nonnull @.str.82, i32 noundef 4, ptr noundef %518, i8 noundef zeroext 24, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %559 = load ptr, ptr @hws, align 4
  %560 = getelementptr ptr, ptr %559, i32 151
  store ptr %558, ptr %560, align 4
  %561 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.172, ptr noundef nonnull @.str.90, i32 noundef 4, ptr noundef %518, i8 noundef zeroext 24, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %562 = load ptr, ptr @hws, align 4
  %563 = getelementptr ptr, ptr %562, i32 152
  store ptr %561, ptr %563, align 4
  %564 = getelementptr i8, ptr %187, i32 128
  %565 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.173, ptr noundef nonnull @.str.82, i32 noundef 4, ptr noundef %564, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %566 = load ptr, ptr @hws, align 4
  %567 = getelementptr ptr, ptr %566, i32 153
  store ptr %565, ptr %567, align 4
  %568 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.174, ptr noundef nonnull @.str.89, i32 noundef 4, ptr noundef %564, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %569 = load ptr, ptr @hws, align 4
  %570 = getelementptr ptr, ptr %569, i32 154
  store ptr %568, ptr %570, align 4
  %571 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.175, ptr noundef nonnull @.str.88, i32 noundef 4, ptr noundef %564, i8 noundef zeroext 4, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %572 = load ptr, ptr @hws, align 4
  %573 = getelementptr ptr, ptr %572, i32 155
  store ptr %571, ptr %573, align 4
  %574 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.176, ptr noundef nonnull @.str.87, i32 noundef 4, ptr noundef %564, i8 noundef zeroext 6, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %575 = load ptr, ptr @hws, align 4
  %576 = getelementptr ptr, ptr %575, i32 156
  store ptr %574, ptr %576, align 4
  tail call void @imx_mmdc_mask_handshake(ptr noundef %187, i32 noundef 0) #3
  %577 = load ptr, ptr @hws, align 4
  tail call void @imx_check_clk_hws(ptr noundef %577, i32 noundef 180) #3
  %578 = load ptr, ptr @clk_hw_data, align 4
  %579 = tail call i32 @of_clk_add_hw_provider(ptr noundef %0, ptr noundef nonnull @of_clk_hw_onecell_get, ptr noundef %578) #3
  tail call void @imx_register_uart_clocks(i32 noundef 5) #3
  %580 = load ptr, ptr @hws, align 4
  %581 = getelementptr ptr, ptr %580, i32 80
  %582 = load ptr, ptr %581, align 4
  %583 = getelementptr inbounds %struct.clk_hw, ptr %582, i32 0, i32 1
  %584 = load ptr, ptr %583, align 4
  %585 = tail call i32 @clk_set_rate(ptr noundef %584, i32 noundef 99000000) #3
  %586 = load ptr, ptr @hws, align 4
  %587 = getelementptr ptr, ptr %586, i32 57
  %588 = load ptr, ptr %587, align 4
  %589 = getelementptr inbounds %struct.clk_hw, ptr %588, i32 0, i32 1
  %590 = load ptr, ptr %589, align 4
  %591 = getelementptr ptr, ptr %586, i32 26
  %592 = load ptr, ptr %591, align 4
  %593 = getelementptr inbounds %struct.clk_hw, ptr %592, i32 0, i32 1
  %594 = load ptr, ptr %593, align 4
  %595 = tail call i32 @clk_set_parent(ptr noundef %590, ptr noundef %594) #3
  %596 = load ptr, ptr @hws, align 4
  %597 = getelementptr ptr, ptr %596, i32 74
  %598 = load ptr, ptr %597, align 4
  %599 = getelementptr inbounds %struct.clk_hw, ptr %598, i32 0, i32 1
  %600 = load ptr, ptr %599, align 4
  %601 = getelementptr ptr, ptr %596, i32 77
  %602 = load ptr, ptr %601, align 4
  %603 = getelementptr inbounds %struct.clk_hw, ptr %602, i32 0, i32 1
  %604 = load ptr, ptr %603, align 4
  %605 = tail call i32 @clk_set_parent(ptr noundef %600, ptr noundef %604) #3
  %606 = load ptr, ptr @hws, align 4
  %607 = getelementptr ptr, ptr %606, i32 55
  %608 = load ptr, ptr %607, align 4
  %609 = getelementptr inbounds %struct.clk_hw, ptr %608, i32 0, i32 1
  %610 = load ptr, ptr %609, align 4
  %611 = getelementptr ptr, ptr %606, i32 25
  %612 = load ptr, ptr %611, align 4
  %613 = getelementptr inbounds %struct.clk_hw, ptr %612, i32 0, i32 1
  %614 = load ptr, ptr %613, align 4
  %615 = tail call i32 @clk_set_parent(ptr noundef %610, ptr noundef %614) #3
  %616 = load ptr, ptr @hws, align 4
  %617 = getelementptr ptr, ptr %616, i32 74
  %618 = load ptr, ptr %617, align 4
  %619 = getelementptr inbounds %struct.clk_hw, ptr %618, i32 0, i32 1
  %620 = load ptr, ptr %619, align 4
  %621 = getelementptr ptr, ptr %616, i32 55
  %622 = load ptr, ptr %621, align 4
  %623 = getelementptr inbounds %struct.clk_hw, ptr %622, i32 0, i32 1
  %624 = load ptr, ptr %623, align 4
  %625 = tail call i32 @clk_set_parent(ptr noundef %620, ptr noundef %624) #3
  %626 = load ptr, ptr @hws, align 4
  %627 = getelementptr ptr, ptr %626, i32 80
  %628 = load ptr, ptr %627, align 4
  %629 = getelementptr inbounds %struct.clk_hw, ptr %628, i32 0, i32 1
  %630 = load ptr, ptr %629, align 4
  %631 = tail call i32 @clk_set_rate(ptr noundef %630, i32 noundef 132000000) #3
  br label %632

632:                                              ; preds = %190, %5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

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
declare dso_local void @imx_register_uart_clocks(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_parent(ptr noundef, ptr noundef) local_unnamed_addr #1

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
declare dso_local ptr @clk_hw_register_gate2(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { cold }
attributes #5 = { nounwind allocsize(2) }

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
!9 = !{i64 3050212}
