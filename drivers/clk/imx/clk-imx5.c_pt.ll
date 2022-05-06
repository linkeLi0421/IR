; ModuleID = '/llk/IR/drivers/clk/imx/clk-imx5.c_pt.bc'
source_filename = "../drivers/clk/imx/clk-imx5.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.clk_onecell_data = type { ptr, i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.clk_hw = type { ptr, ptr, ptr }

@__of_table_imx50_ccm = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx50-ccm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mx50_clocks_init }, section "__clk_of_table", align 4
@__of_table_imx51_ccm = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx51-ccm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mx51_clocks_init }, section "__clk_of_table", align 4
@__of_table_imx53_ccm = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx53-ccm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mx53_clocks_init }, section "__clk_of_table", align 4
@.str = private unnamed_addr constant [27 x i8] c"drivers/clk/imx/clk-imx5.c\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"pll1_sw\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"osc\00", align 1
@clk = internal global [206 x ptr] zeroinitializer, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"pll2_sw\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"pll3_sw\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"main_bus\00", align 1
@standard_pll_sel = internal global [4 x ptr] [ptr @.str.1, ptr @.str.3, ptr @.str.4, ptr @.str.6], align 4
@.str.6 = private unnamed_addr constant [7 x i8] c"lp_apm\00", align 1
@lp_apm_sel = internal global [1 x ptr] [ptr @.str.2], align 4
@.str.7 = private unnamed_addr constant [12 x i8] c"esdhc_a_sel\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"esdhc_b_sel\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"esdhc_c_sel\00", align 1
@esdhc_c_sel = internal global [2 x ptr] [ptr @.str.12, ptr @.str.15], align 4
@.str.10 = private unnamed_addr constant [12 x i8] c"esdhc_d_sel\00", align 1
@esdhc_d_sel = internal global [2 x ptr] [ptr @.str.12, ptr @.str.15], align 4
@.str.11 = private unnamed_addr constant [16 x i8] c"esdhc1_per_gate\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"esdhc_a_podf\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"esdhc2_per_gate\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"esdhc3_per_gate\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"esdhc_b_podf\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"esdhc4_per_gate\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"usb_phy1_gate\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"usb_phy_sel\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"usb_phy2_gate\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"i2c3_gate\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"per_root\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"uart4_ipg_gate\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"ipg\00", align 1
@.str.24 = private unnamed_addr constant [15 x i8] c"uart4_per_gate\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"uart_root\00", align 1
@.str.26 = private unnamed_addr constant [15 x i8] c"uart5_ipg_gate\00", align 1
@.str.27 = private unnamed_addr constant [15 x i8] c"uart5_per_gate\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"cko1_sel\00", align 1
@mx53_cko1_sel = internal global [16 x ptr] [ptr @.str.70, ptr @.str.1, ptr @.str.3, ptr @.str.4, ptr @.str.58, ptr @.str.160, ptr @.str.59, ptr @.str.35, ptr @.str.71, ptr @.str.35, ptr @.str.35, ptr @.str.43, ptr @.str.23, ptr @.str.21, ptr @.str.36, ptr @.str.35], align 4
@.str.29 = private unnamed_addr constant [10 x i8] c"cko1_podf\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"cko1\00", align 1
@.str.31 = private unnamed_addr constant [9 x i8] c"cko2_sel\00", align 1
@mx53_cko2_sel = internal global [32 x ptr] [ptr @.str.35, ptr @.str.35, ptr @.str.35, ptr @.str.12, ptr @.str.65, ptr @.str.35, ptr @.str.62, ptr @.str.35, ptr @.str.15, ptr @.str.35, ptr @.str.35, ptr @.str.35, ptr @.str.117, ptr @.str.105, ptr @.str.2, ptr @.str.37, ptr @.str.35, ptr @.str.9, ptr @.str.130, ptr @.str.132, ptr @.str.35, ptr @.str.35, ptr @.str.35, ptr @.str.35, ptr @.str.35, ptr @.str.18, ptr @.str.161, ptr @.str.6, ptr @.str.25, ptr @.str.35, ptr @.str.35, ptr @.str.35], align 4
@.str.32 = private unnamed_addr constant [10 x i8] c"cko2_podf\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"cko2\00", align 1
@clk_data = internal global %struct.clk_onecell_data zeroinitializer, align 4
@.str.34 = private unnamed_addr constant [7 x i8] c"i.MX50\00", align 1
@.str.35 = private unnamed_addr constant [6 x i8] c"dummy\00", align 1
@.str.36 = private unnamed_addr constant [5 x i8] c"ckil\00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"ckih1\00", align 1
@.str.38 = private unnamed_addr constant [6 x i8] c"ckih2\00", align 1
@.str.39 = private unnamed_addr constant [11 x i8] c"per_lp_apm\00", align 1
@per_lp_apm_sel = internal global [2 x ptr] [ptr @.str.5, ptr @.str.6], align 4
@.str.40 = private unnamed_addr constant [10 x i8] c"per_pred1\00", align 1
@.str.41 = private unnamed_addr constant [10 x i8] c"per_pred2\00", align 1
@.str.42 = private unnamed_addr constant [9 x i8] c"per_podf\00", align 1
@per_root_sel = internal global [2 x ptr] [ptr @.str.42, ptr @.str.23], align 4
@.str.43 = private unnamed_addr constant [4 x i8] c"ahb\00", align 1
@.str.44 = private unnamed_addr constant [8 x i8] c"ahb_max\00", align 1
@.str.45 = private unnamed_addr constant [9 x i8] c"aips_tz1\00", align 1
@.str.46 = private unnamed_addr constant [9 x i8] c"aips_tz2\00", align 1
@.str.47 = private unnamed_addr constant [6 x i8] c"tmax1\00", align 1
@.str.48 = private unnamed_addr constant [6 x i8] c"tmax2\00", align 1
@.str.49 = private unnamed_addr constant [6 x i8] c"tmax3\00", align 1
@.str.50 = private unnamed_addr constant [5 x i8] c"spba\00", align 1
@.str.51 = private unnamed_addr constant [6 x i8] c"axi_a\00", align 1
@.str.52 = private unnamed_addr constant [6 x i8] c"axi_b\00", align 1
@.str.53 = private unnamed_addr constant [9 x i8] c"uart_sel\00", align 1
@.str.54 = private unnamed_addr constant [10 x i8] c"uart_pred\00", align 1
@.str.55 = private unnamed_addr constant [13 x i8] c"esdhc_a_pred\00", align 1
@.str.56 = private unnamed_addr constant [13 x i8] c"esdhc_b_pred\00", align 1
@.str.57 = private unnamed_addr constant [8 x i8] c"emi_sel\00", align 1
@emi_slow_sel = internal global [2 x ptr] [ptr @.str.5, ptr @.str.43], align 4
@.str.58 = private unnamed_addr constant [14 x i8] c"emi_slow_podf\00", align 1
@.str.59 = private unnamed_addr constant [9 x i8] c"nfc_podf\00", align 1
@.str.60 = private unnamed_addr constant [10 x i8] c"ecspi_sel\00", align 1
@.str.61 = private unnamed_addr constant [11 x i8] c"ecspi_pred\00", align 1
@.str.62 = private unnamed_addr constant [11 x i8] c"ecspi_podf\00", align 1
@.str.63 = private unnamed_addr constant [11 x i8] c"usboh3_sel\00", align 1
@.str.64 = private unnamed_addr constant [12 x i8] c"usboh3_pred\00", align 1
@.str.65 = private unnamed_addr constant [12 x i8] c"usboh3_podf\00", align 1
@.str.66 = private unnamed_addr constant [13 x i8] c"usb_phy_pred\00", align 1
@.str.67 = private unnamed_addr constant [13 x i8] c"usb_phy_podf\00", align 1
@usb_phy_sel_str = internal global [2 x ptr] [ptr @.str.2, ptr @.str.67], align 4
@.str.68 = private unnamed_addr constant [9 x i8] c"step_sel\00", align 1
@step_sels = internal global [1 x ptr] [ptr @.str.6], align 4
@.str.69 = private unnamed_addr constant [13 x i8] c"cpu_podf_sel\00", align 1
@cpu_podf_sels = internal global [2 x ptr] [ptr @.str.1, ptr @.str.68], align 4
@.str.70 = private unnamed_addr constant [9 x i8] c"cpu_podf\00", align 1
@.str.71 = private unnamed_addr constant [8 x i8] c"di_pred\00", align 1
@.str.72 = private unnamed_addr constant [9 x i8] c"iim_gate\00", align 1
@.str.73 = private unnamed_addr constant [15 x i8] c"uart1_ipg_gate\00", align 1
@.str.74 = private unnamed_addr constant [15 x i8] c"uart1_per_gate\00", align 1
@.str.75 = private unnamed_addr constant [15 x i8] c"uart2_ipg_gate\00", align 1
@.str.76 = private unnamed_addr constant [15 x i8] c"uart2_per_gate\00", align 1
@.str.77 = private unnamed_addr constant [15 x i8] c"uart3_ipg_gate\00", align 1
@.str.78 = private unnamed_addr constant [15 x i8] c"uart3_per_gate\00", align 1
@.str.79 = private unnamed_addr constant [10 x i8] c"i2c1_gate\00", align 1
@.str.80 = private unnamed_addr constant [10 x i8] c"i2c2_gate\00", align 1
@.str.81 = private unnamed_addr constant [14 x i8] c"pwm1_ipg_gate\00", align 1
@.str.82 = private unnamed_addr constant [13 x i8] c"pwm1_hf_gate\00", align 1
@.str.83 = private unnamed_addr constant [14 x i8] c"pwm2_ipg_gate\00", align 1
@.str.84 = private unnamed_addr constant [13 x i8] c"pwm2_hf_gate\00", align 1
@.str.85 = private unnamed_addr constant [13 x i8] c"gpt_ipg_gate\00", align 1
@.str.86 = private unnamed_addr constant [12 x i8] c"gpt_hf_gate\00", align 1
@.str.87 = private unnamed_addr constant [9 x i8] c"fec_gate\00", align 1
@.str.88 = private unnamed_addr constant [12 x i8] c"usboh3_gate\00", align 1
@.str.89 = private unnamed_addr constant [16 x i8] c"usboh3_per_gate\00", align 1
@.str.90 = private unnamed_addr constant [16 x i8] c"esdhc1_ipg_gate\00", align 1
@.str.91 = private unnamed_addr constant [16 x i8] c"esdhc2_ipg_gate\00", align 1
@.str.92 = private unnamed_addr constant [16 x i8] c"esdhc3_ipg_gate\00", align 1
@.str.93 = private unnamed_addr constant [16 x i8] c"esdhc4_ipg_gate\00", align 1
@.str.94 = private unnamed_addr constant [14 x i8] c"ssi1_ipg_gate\00", align 1
@.str.95 = private unnamed_addr constant [14 x i8] c"ssi2_ipg_gate\00", align 1
@.str.96 = private unnamed_addr constant [14 x i8] c"ssi3_ipg_gate\00", align 1
@.str.97 = private unnamed_addr constant [16 x i8] c"ecspi1_ipg_gate\00", align 1
@.str.98 = private unnamed_addr constant [16 x i8] c"ecspi1_per_gate\00", align 1
@.str.99 = private unnamed_addr constant [16 x i8] c"ecspi2_ipg_gate\00", align 1
@.str.100 = private unnamed_addr constant [16 x i8] c"ecspi2_per_gate\00", align 1
@.str.101 = private unnamed_addr constant [14 x i8] c"cspi_ipg_gate\00", align 1
@.str.102 = private unnamed_addr constant [10 x i8] c"sdma_gate\00", align 1
@.str.103 = private unnamed_addr constant [14 x i8] c"emi_fast_gate\00", align 1
@.str.104 = private unnamed_addr constant [14 x i8] c"emi_slow_gate\00", align 1
@.str.105 = private unnamed_addr constant [8 x i8] c"ipu_sel\00", align 1
@ipu_sel = internal global [4 x ptr] [ptr @.str.51, ptr @.str.52, ptr @.str.104, ptr @.str.43], align 4
@.str.106 = private unnamed_addr constant [9 x i8] c"ipu_gate\00", align 1
@.str.107 = private unnamed_addr constant [9 x i8] c"nfc_gate\00", align 1
@.str.108 = private unnamed_addr constant [13 x i8] c"ipu_di0_gate\00", align 1
@.str.109 = private unnamed_addr constant [12 x i8] c"ipu_di0_sel\00", align 1
@.str.110 = private unnamed_addr constant [13 x i8] c"ipu_di1_gate\00", align 1
@.str.111 = private unnamed_addr constant [12 x i8] c"ipu_di1_sel\00", align 1
@.str.112 = private unnamed_addr constant [10 x i8] c"gpu3d_sel\00", align 1
@gpu3d_sel = internal global [4 x ptr] [ptr @.str.51, ptr @.str.52, ptr @.str.104, ptr @.str.43], align 4
@.str.113 = private unnamed_addr constant [10 x i8] c"gpu2d_sel\00", align 1
@gpu2d_sel = internal global [4 x ptr] [ptr @.str.51, ptr @.str.52, ptr @.str.104, ptr @.str.43], align 4
@.str.114 = private unnamed_addr constant [11 x i8] c"gpu3d_gate\00", align 1
@.str.115 = private unnamed_addr constant [10 x i8] c"garb_gate\00", align 1
@.str.116 = private unnamed_addr constant [11 x i8] c"gpu2d_gate\00", align 1
@.str.117 = private unnamed_addr constant [8 x i8] c"vpu_sel\00", align 1
@vpu_sel = internal global [4 x ptr] [ptr @.str.51, ptr @.str.52, ptr @.str.104, ptr @.str.43], align 4
@.str.118 = private unnamed_addr constant [9 x i8] c"vpu_gate\00", align 1
@.str.119 = private unnamed_addr constant [19 x i8] c"vpu_reference_gate\00", align 1
@.str.120 = private unnamed_addr constant [9 x i8] c"gpc_dvfs\00", align 1
@.str.121 = private unnamed_addr constant [8 x i8] c"ssi_apm\00", align 1
@ssi_apm_sels = internal global [3 x ptr] [ptr @.str.37, ptr @.str.158, ptr @.str.38], align 4
@.str.122 = private unnamed_addr constant [14 x i8] c"ssi1_root_sel\00", align 1
@ssi_clk_sels = internal global [4 x ptr] [ptr @.str.1, ptr @.str.3, ptr @.str.4, ptr @.str.121], align 4
@.str.123 = private unnamed_addr constant [14 x i8] c"ssi2_root_sel\00", align 1
@.str.124 = private unnamed_addr constant [14 x i8] c"ssi3_root_sel\00", align 1
@ssi3_clk_sels = internal global [2 x ptr] [ptr @.str.137, ptr @.str.138], align 4
@.str.125 = private unnamed_addr constant [13 x i8] c"ssi_ext1_sel\00", align 1
@.str.126 = private unnamed_addr constant [13 x i8] c"ssi_ext2_sel\00", align 1
@.str.127 = private unnamed_addr constant [17 x i8] c"ssi_ext1_com_sel\00", align 1
@ssi_ext1_com_sels = internal global [2 x ptr] [ptr @.str.134, ptr @.str.137], align 4
@.str.128 = private unnamed_addr constant [17 x i8] c"ssi_ext2_com_sel\00", align 1
@ssi_ext2_com_sels = internal global [2 x ptr] [ptr @.str.136, ptr @.str.138], align 4
@.str.129 = private unnamed_addr constant [15 x i8] c"ssi1_root_pred\00", align 1
@.str.130 = private unnamed_addr constant [15 x i8] c"ssi1_root_podf\00", align 1
@.str.131 = private unnamed_addr constant [15 x i8] c"ssi2_root_pred\00", align 1
@.str.132 = private unnamed_addr constant [15 x i8] c"ssi2_root_podf\00", align 1
@.str.133 = private unnamed_addr constant [14 x i8] c"ssi_ext1_pred\00", align 1
@.str.134 = private unnamed_addr constant [14 x i8] c"ssi_ext1_podf\00", align 1
@.str.135 = private unnamed_addr constant [14 x i8] c"ssi_ext2_pred\00", align 1
@.str.136 = private unnamed_addr constant [14 x i8] c"ssi_ext2_podf\00", align 1
@.str.137 = private unnamed_addr constant [15 x i8] c"ssi1_root_gate\00", align 1
@.str.138 = private unnamed_addr constant [15 x i8] c"ssi2_root_gate\00", align 1
@.str.139 = private unnamed_addr constant [15 x i8] c"ssi3_root_gate\00", align 1
@.str.140 = private unnamed_addr constant [14 x i8] c"ssi_ext1_gate\00", align 1
@.str.141 = private unnamed_addr constant [14 x i8] c"ssi_ext2_gate\00", align 1
@.str.142 = private unnamed_addr constant [15 x i8] c"epit1_ipg_gate\00", align 1
@.str.143 = private unnamed_addr constant [14 x i8] c"epit1_hf_gate\00", align 1
@.str.144 = private unnamed_addr constant [15 x i8] c"epit2_ipg_gate\00", align 1
@.str.145 = private unnamed_addr constant [14 x i8] c"epit2_hf_gate\00", align 1
@.str.146 = private unnamed_addr constant [11 x i8] c"owire_gate\00", align 1
@.str.147 = private unnamed_addr constant [10 x i8] c"srtc_gate\00", align 1
@.str.148 = private unnamed_addr constant [10 x i8] c"pata_gate\00", align 1
@.str.149 = private unnamed_addr constant [11 x i8] c"spdif0_sel\00", align 1
@spdif_sel = internal global [4 x ptr] [ptr @.str.1, ptr @.str.3, ptr @.str.4, ptr @.str.159], align 4
@.str.150 = private unnamed_addr constant [12 x i8] c"spdif0_pred\00", align 1
@.str.151 = private unnamed_addr constant [12 x i8] c"spdif0_podf\00", align 1
@.str.152 = private unnamed_addr constant [15 x i8] c"spdif0_com_sel\00", align 1
@spdif0_com_sel = internal global [2 x ptr] [ptr @.str.151, ptr @.str.137], align 4
@.str.153 = private unnamed_addr constant [12 x i8] c"spdif0_gate\00", align 1
@.str.154 = private unnamed_addr constant [15 x i8] c"spdif_ipg_gate\00", align 1
@.str.155 = private unnamed_addr constant [16 x i8] c"sahara_ipg_gate\00", align 1
@.str.156 = private unnamed_addr constant [9 x i8] c"sata_ref\00", align 1
@.str.157 = private unnamed_addr constant [5 x i8] c"cpu0\00", align 1
@.str.158 = private unnamed_addr constant [7 x i8] c"lp_amp\00", align 1
@.str.159 = private unnamed_addr constant [15 x i8] c"spdif_xtal_sel\00", align 1
@imx_ccm_lock = external dso_local global %struct.spinlock, align 4
@.str.160 = private unnamed_addr constant [8 x i8] c"pll4_sw\00", align 1
@.str.161 = private unnamed_addr constant [8 x i8] c"tve_sel\00", align 1
@.str.162 = private unnamed_addr constant [11 x i8] c"periph_apm\00", align 1
@periph_apm_sel = internal global [3 x ptr] [ptr @.str.1, ptr @.str.4, ptr @.str.6], align 4
@main_bus_sel = internal global [2 x ptr] [ptr @.str.3, ptr @.str.162], align 4
@mx51_ipu_di0_sel = internal global [4 x ptr] [ptr @.str.71, ptr @.str.2, ptr @.str.37, ptr @.str.179], align 4
@mx51_ipu_di1_sel = internal global [5 x ptr] [ptr @.str.71, ptr @.str.2, ptr @.str.37, ptr @.str.179, ptr @.str.180], align 4
@.str.163 = private unnamed_addr constant [12 x i8] c"tve_ext_sel\00", align 1
@mx51_tve_ext_sel = internal global [2 x ptr] [ptr @.str.2, ptr @.str.37], align 4
@mx51_tve_sel = internal global [2 x ptr] [ptr @.str.165, ptr @.str.163], align 4
@.str.164 = private unnamed_addr constant [9 x i8] c"tve_gate\00", align 1
@.str.165 = private unnamed_addr constant [9 x i8] c"tve_pred\00", align 1
@.str.166 = private unnamed_addr constant [13 x i8] c"usb_phy_gate\00", align 1
@.str.167 = private unnamed_addr constant [11 x i8] c"hsi2c_gate\00", align 1
@.str.168 = private unnamed_addr constant [10 x i8] c"scc2_gate\00", align 1
@.str.169 = private unnamed_addr constant [15 x i8] c"mipi_hsc1_gate\00", align 1
@.str.170 = private unnamed_addr constant [15 x i8] c"mipi_hsc2_gate\00", align 1
@.str.171 = private unnamed_addr constant [14 x i8] c"mipi_esc_gate\00", align 1
@.str.172 = private unnamed_addr constant [14 x i8] c"mipi_hsp_gate\00", align 1
@mx51_spdif_xtal_sel = internal global [3 x ptr] [ptr @.str.2, ptr @.str.181, ptr @.str.38], align 4
@.str.173 = private unnamed_addr constant [11 x i8] c"spdif1_sel\00", align 1
@.str.174 = private unnamed_addr constant [12 x i8] c"spdif1_pred\00", align 1
@.str.175 = private unnamed_addr constant [12 x i8] c"spdif1_podf\00", align 1
@.str.176 = private unnamed_addr constant [15 x i8] c"spdif1_com_sel\00", align 1
@mx51_spdif1_com_sel = internal global [2 x ptr] [ptr @.str.175, ptr @.str.138], align 4
@.str.177 = private unnamed_addr constant [12 x i8] c"spdif1_gate\00", align 1
@.str.178 = private unnamed_addr constant [7 x i8] c"i.MX51\00", align 1
@.str.179 = private unnamed_addr constant [7 x i8] c"tve_di\00", align 1
@.str.180 = private unnamed_addr constant [8 x i8] c"ipp_di1\00", align 1
@.str.181 = private unnamed_addr constant [5 x i8] c"ckih\00", align 1
@.str.182 = private unnamed_addr constant [16 x i8] c"ldb_di1_div_3_5\00", align 1
@.str.183 = private unnamed_addr constant [12 x i8] c"ldb_di1_sel\00", align 1
@.str.184 = private unnamed_addr constant [12 x i8] c"ldb_di1_div\00", align 1
@mx53_ldb_di1_sel = internal global [2 x ptr] [ptr @.str.4, ptr @.str.160], align 4
@.str.185 = private unnamed_addr constant [13 x i8] c"di_pll4_podf\00", align 1
@.str.186 = private unnamed_addr constant [16 x i8] c"ldb_di0_div_3_5\00", align 1
@.str.187 = private unnamed_addr constant [12 x i8] c"ldb_di0_sel\00", align 1
@.str.188 = private unnamed_addr constant [12 x i8] c"ldb_di0_div\00", align 1
@mx53_ldb_di0_sel = internal global [2 x ptr] [ptr @.str.4, ptr @.str.160], align 4
@.str.189 = private unnamed_addr constant [13 x i8] c"ldb_di0_gate\00", align 1
@.str.190 = private unnamed_addr constant [13 x i8] c"ldb_di1_gate\00", align 1
@mx53_ipu_di0_sel = internal global [6 x ptr] [ptr @.str.71, ptr @.str.2, ptr @.str.37, ptr @.str.185, ptr @.str.35, ptr @.str.189], align 4
@mx53_ipu_di1_sel = internal global [6 x ptr] [ptr @.str.71, ptr @.str.2, ptr @.str.37, ptr @.str.179, ptr @.str.180, ptr @.str.190], align 4
@mx53_tve_ext_sel = internal global [2 x ptr] [ptr @.str.160, ptr @.str.37], align 4
@.str.191 = private unnamed_addr constant [8 x i8] c"can_sel\00", align 1
@mx53_can_sel = internal global [4 x ptr] [ptr @.str.23, ptr @.str.37, ptr @.str.38, ptr @.str.6], align 4
@.str.192 = private unnamed_addr constant [17 x i8] c"can1_serial_gate\00", align 1
@.str.193 = private unnamed_addr constant [14 x i8] c"can1_ipg_gate\00", align 1
@.str.194 = private unnamed_addr constant [6 x i8] c"ocram\00", align 1
@.str.195 = private unnamed_addr constant [17 x i8] c"can2_serial_gate\00", align 1
@.str.196 = private unnamed_addr constant [14 x i8] c"can2_ipg_gate\00", align 1
@.str.197 = private unnamed_addr constant [10 x i8] c"sata_gate\00", align 1
@.str.198 = private unnamed_addr constant [9 x i8] c"firi_sel\00", align 1
@.str.199 = private unnamed_addr constant [10 x i8] c"firi_pred\00", align 1
@.str.200 = private unnamed_addr constant [10 x i8] c"firi_podf\00", align 1
@.str.201 = private unnamed_addr constant [17 x i8] c"firi_serial_gate\00", align 1
@.str.202 = private unnamed_addr constant [14 x i8] c"firi_ipg_gate\00", align 1
@.str.203 = private unnamed_addr constant [15 x i8] c"csi0_mclk1_sel\00", align 1
@.str.204 = private unnamed_addr constant [16 x i8] c"csi0_mclk1_pred\00", align 1
@.str.205 = private unnamed_addr constant [16 x i8] c"csi0_mclk1_podf\00", align 1
@.str.206 = private unnamed_addr constant [23 x i8] c"csi0_mclk1_serial_gate\00", align 1
@.str.207 = private unnamed_addr constant [13 x i8] c"ieee1588_sel\00", align 1
@ieee1588_sels = internal global [4 x ptr] [ptr @.str.4, ptr @.str.160, ptr @.str.35, ptr @.str.35], align 4
@.str.208 = private unnamed_addr constant [14 x i8] c"ieee1588_pred\00", align 1
@.str.209 = private unnamed_addr constant [14 x i8] c"ieee1588_podf\00", align 1
@.str.210 = private unnamed_addr constant [21 x i8] c"ieee1588_serial_gate\00", align 1
@mx53_spdif_xtal_sel = internal global [4 x ptr] [ptr @.str.2, ptr @.str.181, ptr @.str.38, ptr @.str.160], align 4
@.str.211 = private unnamed_addr constant [4 x i8] c"arm\00", align 1
@.str.212 = private unnamed_addr constant [7 x i8] c"i.MX53\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__of_table_imx50_ccm, ptr @__of_table_imx51_ccm, ptr @__of_table_imx53_ccm], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @mx50_clocks_init(ptr noundef %0) #0 section ".init.text" {
  %2 = tail call ptr @ioremap(i32 noundef 1677197312, i32 noundef 16384) #2
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %5, !prof !8

4:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 287, i32 noundef 9, ptr noundef null) #2
  br label %5

5:                                                ; preds = %4, %1
  %6 = tail call ptr @imx_clk_hw_pllv2(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, ptr noundef %2) #2
  %7 = icmp eq ptr %6, null
  %8 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  %9 = or i1 %7, %8
  br i1 %9, label %13, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.clk_hw, ptr %6, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  br label %13

13:                                               ; preds = %10, %5
  %14 = phi ptr [ %12, %10 ], [ %6, %5 ]
  store ptr %14, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 112), align 4
  %15 = tail call ptr @ioremap(i32 noundef 1677213696, i32 noundef 16384) #2
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %18, !prof !8

17:                                               ; preds = %13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 291, i32 noundef 9, ptr noundef null) #2
  br label %18

18:                                               ; preds = %17, %13
  %19 = tail call ptr @imx_clk_hw_pllv2(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2, ptr noundef %15) #2
  %20 = icmp eq ptr %19, null
  %21 = icmp ugt ptr %19, inttoptr (i32 -4096 to ptr)
  %22 = or i1 %20, %21
  br i1 %22, label %26, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.clk_hw, ptr %19, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  br label %26

26:                                               ; preds = %23, %18
  %27 = phi ptr [ %25, %23 ], [ %19, %18 ]
  store ptr %27, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 113), align 4
  %28 = tail call ptr @ioremap(i32 noundef 1677230080, i32 noundef 16384) #2
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %31, !prof !8

30:                                               ; preds = %26
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 295, i32 noundef 9, ptr noundef null) #2
  br label %31

31:                                               ; preds = %30, %26
  %32 = tail call ptr @imx_clk_hw_pllv2(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, ptr noundef %28) #2
  %33 = icmp eq ptr %32, null
  %34 = icmp ugt ptr %32, inttoptr (i32 -4096 to ptr)
  %35 = or i1 %33, %34
  br i1 %35, label %39, label %36

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.clk_hw, ptr %32, i32 0, i32 1
  %38 = load ptr, ptr %37, align 4
  br label %39

39:                                               ; preds = %36, %31
  %40 = phi ptr [ %38, %36 ], [ %32, %31 ]
  store ptr %40, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 114), align 4
  %41 = tail call ptr @of_iomap(ptr noundef %0, i32 noundef 0) #2
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %44, !prof !8

43:                                               ; preds = %39
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 299, i32 noundef 9, ptr noundef null) #2
  br label %44

44:                                               ; preds = %43, %39
  tail call fastcc void @mx5_clocks_common_init(ptr noundef %41) #3
  %45 = getelementptr i8, ptr %41, i32 20
  %46 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.5, i8 noundef zeroext 4, ptr noundef nonnull @standard_pll_sel, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %45, i8 noundef zeroext 25, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %47 = icmp eq ptr %46, null
  %48 = icmp ugt ptr %46, inttoptr (i32 -4096 to ptr)
  %49 = or i1 %47, %48
  br i1 %49, label %53, label %50

50:                                               ; preds = %44
  %51 = getelementptr inbounds %struct.clk_hw, ptr %46, i32 0, i32 1
  %52 = load ptr, ptr %51, align 4
  br label %53

53:                                               ; preds = %50, %44
  %54 = phi ptr [ %52, %50 ], [ %46, %44 ]
  store ptr %54, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 91), align 4
  %55 = getelementptr i8, ptr %41, i32 12
  %56 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.6, i8 noundef zeroext 1, ptr noundef nonnull @lp_apm_sel, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %55, i8 noundef zeroext 10, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %57 = icmp eq ptr %56, null
  %58 = icmp ugt ptr %56, inttoptr (i32 -4096 to ptr)
  %59 = or i1 %57, %58
  br i1 %59, label %63, label %60

60:                                               ; preds = %53
  %61 = getelementptr inbounds %struct.clk_hw, ptr %56, i32 0, i32 1
  %62 = load ptr, ptr %61, align 4
  br label %63

63:                                               ; preds = %60, %53
  %64 = phi ptr [ %62, %60 ], [ %56, %53 ]
  store ptr %64, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 89), align 4
  %65 = getelementptr i8, ptr %41, i32 28
  %66 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.7, i8 noundef zeroext 4, ptr noundef nonnull @standard_pll_sel, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %65, i8 noundef zeroext 21, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %67 = icmp eq ptr %66, null
  %68 = icmp ugt ptr %66, inttoptr (i32 -4096 to ptr)
  %69 = or i1 %67, %68
  br i1 %69, label %73, label %70

70:                                               ; preds = %63
  %71 = getelementptr inbounds %struct.clk_hw, ptr %66, i32 0, i32 1
  %72 = load ptr, ptr %71, align 4
  br label %73

73:                                               ; preds = %70, %63
  %74 = phi ptr [ %72, %70 ], [ %66, %63 ]
  store ptr %74, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 100), align 4
  %75 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.8, i8 noundef zeroext 4, ptr noundef nonnull @standard_pll_sel, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %65, i8 noundef zeroext 16, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %76 = icmp eq ptr %75, null
  %77 = icmp ugt ptr %75, inttoptr (i32 -4096 to ptr)
  %78 = or i1 %76, %77
  br i1 %78, label %82, label %79

79:                                               ; preds = %73
  %80 = getelementptr inbounds %struct.clk_hw, ptr %75, i32 0, i32 1
  %81 = load ptr, ptr %80, align 4
  br label %82

82:                                               ; preds = %79, %73
  %83 = phi ptr [ %81, %79 ], [ %75, %73 ]
  store ptr %83, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 101), align 4
  %84 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.9, i8 noundef zeroext 2, ptr noundef nonnull @esdhc_c_sel, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %65, i8 noundef zeroext 20, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %85 = icmp eq ptr %84, null
  %86 = icmp ugt ptr %84, inttoptr (i32 -4096 to ptr)
  %87 = or i1 %85, %86
  br i1 %87, label %91, label %88

88:                                               ; preds = %82
  %89 = getelementptr inbounds %struct.clk_hw, ptr %84, i32 0, i32 1
  %90 = load ptr, ptr %89, align 4
  br label %91

91:                                               ; preds = %88, %82
  %92 = phi ptr [ %90, %88 ], [ %84, %82 ]
  store ptr %92, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 13), align 4
  %93 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.10, i8 noundef zeroext 2, ptr noundef nonnull @esdhc_d_sel, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %65, i8 noundef zeroext 19, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %94 = icmp eq ptr %93, null
  %95 = icmp ugt ptr %93, inttoptr (i32 -4096 to ptr)
  %96 = or i1 %94, %95
  br i1 %96, label %100, label %97

97:                                               ; preds = %91
  %98 = getelementptr inbounds %struct.clk_hw, ptr %93, i32 0, i32 1
  %99 = load ptr, ptr %98, align 4
  br label %100

100:                                              ; preds = %97, %91
  %101 = phi ptr [ %99, %97 ], [ %93, %91 ]
  store ptr %101, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 14), align 4
  %102 = getelementptr i8, ptr %41, i32 116
  %103 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef 4, ptr noundef %102, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %104 = icmp eq ptr %103, null
  %105 = icmp ugt ptr %103, inttoptr (i32 -4096 to ptr)
  %106 = or i1 %104, %105
  br i1 %106, label %110, label %107

107:                                              ; preds = %100
  %108 = getelementptr inbounds %struct.clk_hw, ptr %103, i32 0, i32 1
  %109 = load ptr, ptr %108, align 4
  br label %110

110:                                              ; preds = %107, %100
  %111 = phi ptr [ %109, %107 ], [ %103, %100 ]
  store ptr %111, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 71), align 4
  %112 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.9, i32 noundef 4, ptr noundef %102, i8 noundef zeroext 6, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %113 = icmp eq ptr %112, null
  %114 = icmp ugt ptr %112, inttoptr (i32 -4096 to ptr)
  %115 = or i1 %113, %114
  br i1 %115, label %119, label %116

116:                                              ; preds = %110
  %117 = getelementptr inbounds %struct.clk_hw, ptr %112, i32 0, i32 1
  %118 = load ptr, ptr %117, align 4
  br label %119

119:                                              ; preds = %116, %110
  %120 = phi ptr [ %118, %116 ], [ %112, %110 ]
  store ptr %120, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 72), align 4
  %121 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, i32 noundef 4, ptr noundef %102, i8 noundef zeroext 10, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %122 = icmp eq ptr %121, null
  %123 = icmp ugt ptr %121, inttoptr (i32 -4096 to ptr)
  %124 = or i1 %122, %123
  br i1 %124, label %128, label %125

125:                                              ; preds = %119
  %126 = getelementptr inbounds %struct.clk_hw, ptr %121, i32 0, i32 1
  %127 = load ptr, ptr %126, align 4
  br label %128

128:                                              ; preds = %125, %119
  %129 = phi ptr [ %127, %125 ], [ %121, %119 ]
  store ptr %129, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 73), align 4
  %130 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.10, i32 noundef 4, ptr noundef %102, i8 noundef zeroext 14, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %131 = icmp eq ptr %130, null
  %132 = icmp ugt ptr %130, inttoptr (i32 -4096 to ptr)
  %133 = or i1 %131, %132
  br i1 %133, label %137, label %134

134:                                              ; preds = %128
  %135 = getelementptr inbounds %struct.clk_hw, ptr %130, i32 0, i32 1
  %136 = load ptr, ptr %135, align 4
  br label %137

137:                                              ; preds = %134, %128
  %138 = phi ptr [ %136, %134 ], [ %130, %128 ]
  store ptr %138, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 74), align 4
  %139 = getelementptr i8, ptr %41, i32 120
  %140 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, i32 noundef 4, ptr noundef %139, i8 noundef zeroext 10, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %141 = icmp eq ptr %140, null
  %142 = icmp ugt ptr %140, inttoptr (i32 -4096 to ptr)
  %143 = or i1 %141, %142
  br i1 %143, label %147, label %144

144:                                              ; preds = %137
  %145 = getelementptr inbounds %struct.clk_hw, ptr %140, i32 0, i32 1
  %146 = load ptr, ptr %145, align 4
  br label %147

147:                                              ; preds = %144, %137
  %148 = phi ptr [ %146, %144 ], [ %140, %137 ]
  store ptr %148, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 124), align 4
  %149 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.18, i32 noundef 4, ptr noundef %139, i8 noundef zeroext 12, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %150 = icmp eq ptr %149, null
  %151 = icmp ugt ptr %149, inttoptr (i32 -4096 to ptr)
  %152 = or i1 %150, %151
  br i1 %152, label %156, label %153

153:                                              ; preds = %147
  %154 = getelementptr inbounds %struct.clk_hw, ptr %149, i32 0, i32 1
  %155 = load ptr, ptr %154, align 4
  br label %156

156:                                              ; preds = %153, %147
  %157 = phi ptr [ %155, %153 ], [ %149, %147 ]
  store ptr %157, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 125), align 4
  %158 = getelementptr i8, ptr %41, i32 108
  %159 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21, i32 noundef 4, ptr noundef %158, i8 noundef zeroext 22, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %160 = icmp eq ptr %159, null
  %161 = icmp ugt ptr %159, inttoptr (i32 -4096 to ptr)
  %162 = or i1 %160, %161
  br i1 %162, label %166, label %163

163:                                              ; preds = %156
  %164 = getelementptr inbounds %struct.clk_hw, ptr %159, i32 0, i32 1
  %165 = load ptr, ptr %164, align 4
  br label %166

166:                                              ; preds = %163, %156
  %167 = phi ptr [ %165, %163 ], [ %159, %156 ]
  store ptr %167, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 88), align 4
  %168 = getelementptr i8, ptr %41, i32 132
  %169 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, i32 noundef 4, ptr noundef %168, i8 noundef zeroext 8, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %170 = icmp eq ptr %169, null
  %171 = icmp ugt ptr %169, inttoptr (i32 -4096 to ptr)
  %172 = or i1 %170, %171
  br i1 %172, label %176, label %173

173:                                              ; preds = %166
  %174 = getelementptr inbounds %struct.clk_hw, ptr %169, i32 0, i32 1
  %175 = load ptr, ptr %174, align 4
  br label %176

176:                                              ; preds = %173, %166
  %177 = phi ptr [ %175, %173 ], [ %169, %166 ]
  store ptr %177, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 65), align 4
  %178 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, i32 noundef 4, ptr noundef %168, i8 noundef zeroext 10, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %179 = icmp eq ptr %178, null
  %180 = icmp ugt ptr %178, inttoptr (i32 -4096 to ptr)
  %181 = or i1 %179, %180
  br i1 %181, label %185, label %182

182:                                              ; preds = %176
  %183 = getelementptr inbounds %struct.clk_hw, ptr %178, i32 0, i32 1
  %184 = load ptr, ptr %183, align 4
  br label %185

185:                                              ; preds = %182, %176
  %186 = phi ptr [ %184, %182 ], [ %178, %176 ]
  store ptr %186, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 66), align 4
  %187 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.23, i32 noundef 4, ptr noundef %168, i8 noundef zeroext 12, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %188 = icmp eq ptr %187, null
  %189 = icmp ugt ptr %187, inttoptr (i32 -4096 to ptr)
  %190 = or i1 %188, %189
  br i1 %190, label %194, label %191

191:                                              ; preds = %185
  %192 = getelementptr inbounds %struct.clk_hw, ptr %187, i32 0, i32 1
  %193 = load ptr, ptr %192, align 4
  br label %194

194:                                              ; preds = %191, %185
  %195 = phi ptr [ %193, %191 ], [ %187, %185 ]
  store ptr %195, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 67), align 4
  %196 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.25, i32 noundef 4, ptr noundef %168, i8 noundef zeroext 14, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %197 = icmp eq ptr %196, null
  %198 = icmp ugt ptr %196, inttoptr (i32 -4096 to ptr)
  %199 = or i1 %197, %198
  br i1 %199, label %203, label %200

200:                                              ; preds = %194
  %201 = getelementptr inbounds %struct.clk_hw, ptr %196, i32 0, i32 1
  %202 = load ptr, ptr %201, align 4
  br label %203

203:                                              ; preds = %200, %194
  %204 = phi ptr [ %202, %200 ], [ %196, %194 ]
  store ptr %204, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 68), align 4
  %205 = getelementptr i8, ptr %41, i32 96
  %206 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.28, i8 noundef zeroext 16, ptr noundef nonnull @mx53_cko1_sel, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %205, i8 noundef zeroext 0, i32 noundef 15, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %207 = icmp eq ptr %206, null
  %208 = icmp ugt ptr %206, inttoptr (i32 -4096 to ptr)
  %209 = or i1 %207, %208
  br i1 %209, label %213, label %210

210:                                              ; preds = %203
  %211 = getelementptr inbounds %struct.clk_hw, ptr %206, i32 0, i32 1
  %212 = load ptr, ptr %211, align 4
  br label %213

213:                                              ; preds = %210, %203
  %214 = phi ptr [ %212, %210 ], [ %206, %203 ]
  store ptr %214, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 165), align 4
  %215 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.28, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %205, i8 noundef zeroext 4, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %216 = icmp eq ptr %215, null
  %217 = icmp ugt ptr %215, inttoptr (i32 -4096 to ptr)
  %218 = or i1 %216, %217
  br i1 %218, label %222, label %219

219:                                              ; preds = %213
  %220 = getelementptr inbounds %struct.clk_hw, ptr %215, i32 0, i32 1
  %221 = load ptr, ptr %220, align 4
  br label %222

222:                                              ; preds = %219, %213
  %223 = phi ptr [ %221, %219 ], [ %215, %213 ]
  store ptr %223, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 166), align 4
  %224 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.29, i32 noundef 4, ptr noundef %205, i8 noundef zeroext 7, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %225 = icmp eq ptr %224, null
  %226 = icmp ugt ptr %224, inttoptr (i32 -4096 to ptr)
  %227 = or i1 %225, %226
  br i1 %227, label %231, label %228

228:                                              ; preds = %222
  %229 = getelementptr inbounds %struct.clk_hw, ptr %224, i32 0, i32 1
  %230 = load ptr, ptr %229, align 4
  br label %231

231:                                              ; preds = %228, %222
  %232 = phi ptr [ %230, %228 ], [ %224, %222 ]
  store ptr %232, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 167), align 4
  %233 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.31, i8 noundef zeroext 32, ptr noundef nonnull @mx53_cko2_sel, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %205, i8 noundef zeroext 16, i32 noundef 31, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %234 = icmp eq ptr %233, null
  %235 = icmp ugt ptr %233, inttoptr (i32 -4096 to ptr)
  %236 = or i1 %234, %235
  br i1 %236, label %240, label %237

237:                                              ; preds = %231
  %238 = getelementptr inbounds %struct.clk_hw, ptr %233, i32 0, i32 1
  %239 = load ptr, ptr %238, align 4
  br label %240

240:                                              ; preds = %237, %231
  %241 = phi ptr [ %239, %237 ], [ %233, %231 ]
  store ptr %241, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 168), align 4
  %242 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.31, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %205, i8 noundef zeroext 21, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %243 = icmp eq ptr %242, null
  %244 = icmp ugt ptr %242, inttoptr (i32 -4096 to ptr)
  %245 = or i1 %243, %244
  br i1 %245, label %249, label %246

246:                                              ; preds = %240
  %247 = getelementptr inbounds %struct.clk_hw, ptr %242, i32 0, i32 1
  %248 = load ptr, ptr %247, align 4
  br label %249

249:                                              ; preds = %246, %240
  %250 = phi ptr [ %248, %246 ], [ %242, %240 ]
  store ptr %250, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 169), align 4
  %251 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.32, i32 noundef 4, ptr noundef %205, i8 noundef zeroext 24, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %252 = icmp eq ptr %251, null
  %253 = icmp ugt ptr %251, inttoptr (i32 -4096 to ptr)
  %254 = or i1 %252, %253
  br i1 %254, label %258, label %255

255:                                              ; preds = %249
  %256 = getelementptr inbounds %struct.clk_hw, ptr %251, i32 0, i32 1
  %257 = load ptr, ptr %256, align 4
  br label %258

258:                                              ; preds = %255, %249
  %259 = phi ptr [ %257, %255 ], [ %251, %249 ]
  store ptr %259, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 170), align 4
  tail call void @imx_check_clocks(ptr noundef nonnull @clk, i32 noundef 206) #2
  store ptr @clk, ptr @clk_data, align 4
  store i32 206, ptr getelementptr inbounds (%struct.clk_onecell_data, ptr @clk_data, i32 0, i32 1), align 4
  %260 = tail call i32 @of_clk_add_provider(ptr noundef %0, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef nonnull @clk_data) #2
  %261 = load ptr, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 100), align 4
  %262 = load ptr, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 113), align 4
  %263 = tail call i32 @clk_set_parent(ptr noundef %261, ptr noundef %262) #2
  %264 = load ptr, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 101), align 4
  %265 = load ptr, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 113), align 4
  %266 = tail call i32 @clk_set_parent(ptr noundef %264, ptr noundef %265) #2
  %267 = load ptr, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 102), align 4
  %268 = tail call i32 @clk_set_rate(ptr noundef %267, i32 noundef 200000000) #2
  %269 = load ptr, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 103), align 4
  %270 = tail call i32 @clk_set_rate(ptr noundef %269, i32 noundef 200000000) #2
  %271 = load ptr, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 107), align 4
  %272 = tail call i32 @clk_prepare(ptr noundef %271) #2
  %273 = icmp eq i32 %272, 0
  br i1 %273, label %274, label %278

274:                                              ; preds = %258
  %275 = tail call i32 @clk_enable(ptr noundef %271) #2
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %278, label %277

277:                                              ; preds = %274
  tail call void @clk_unprepare(ptr noundef %271) #2
  br label %278

278:                                              ; preds = %277, %274, %258
  tail call void @imx_print_silicon_rev(ptr noundef nonnull @.str.34, i32 noundef 17) #2
  %279 = load ptr, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 107), align 4
  tail call void @clk_disable(ptr noundef %279) #2
  tail call void @clk_unprepare(ptr noundef %279) #2
  %280 = load ptr, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 43), align 4
  %281 = tail call i32 @clk_round_rate(ptr noundef %280, i32 noundef 54000000) #2
  %282 = load ptr, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 43), align 4
  %283 = tail call i32 @clk_set_rate(ptr noundef %282, i32 noundef %281) #2
  tail call void @imx_register_uart_clocks(i32 noundef 5) #2
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @mx51_clocks_init(ptr noundef %0) #0 section ".init.text" {
  %2 = tail call ptr @ioremap(i32 noundef -2080899072, i32 noundef 16384) #2
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %5, !prof !8

4:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 372, i32 noundef 9, ptr noundef null) #2
  br label %5

5:                                                ; preds = %4, %1
  %6 = tail call ptr @imx_clk_hw_pllv2(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, ptr noundef %2) #2
  %7 = icmp eq ptr %6, null
  %8 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  %9 = or i1 %7, %8
  br i1 %9, label %13, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.clk_hw, ptr %6, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  br label %13

13:                                               ; preds = %10, %5
  %14 = phi ptr [ %12, %10 ], [ %6, %5 ]
  store ptr %14, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 112), align 4
  %15 = tail call ptr @ioremap(i32 noundef -2080882688, i32 noundef 16384) #2
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %18, !prof !8

17:                                               ; preds = %13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 376, i32 noundef 9, ptr noundef null) #2
  br label %18

18:                                               ; preds = %17, %13
  %19 = tail call ptr @imx_clk_hw_pllv2(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2, ptr noundef %15) #2
  %20 = icmp eq ptr %19, null
  %21 = icmp ugt ptr %19, inttoptr (i32 -4096 to ptr)
  %22 = or i1 %20, %21
  br i1 %22, label %26, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.clk_hw, ptr %19, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  br label %26

26:                                               ; preds = %23, %18
  %27 = phi ptr [ %25, %23 ], [ %19, %18 ]
  store ptr %27, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 113), align 4
  %28 = tail call ptr @ioremap(i32 noundef -2080866304, i32 noundef 16384) #2
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %31, !prof !8

30:                                               ; preds = %26
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 380, i32 noundef 9, ptr noundef null) #2
  br label %31

31:                                               ; preds = %30, %26
  %32 = tail call ptr @imx_clk_hw_pllv2(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, ptr noundef %28) #2
  %33 = icmp eq ptr %32, null
  %34 = icmp ugt ptr %32, inttoptr (i32 -4096 to ptr)
  %35 = or i1 %33, %34
  br i1 %35, label %39, label %36

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.clk_hw, ptr %32, i32 0, i32 1
  %38 = load ptr, ptr %37, align 4
  br label %39

39:                                               ; preds = %36, %31
  %40 = phi ptr [ %38, %36 ], [ %32, %31 ]
  store ptr %40, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 114), align 4
  %41 = tail call ptr @of_iomap(ptr noundef %0, i32 noundef 0) #2
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %44, !prof !8

43:                                               ; preds = %39
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 384, i32 noundef 9, ptr noundef null) #2
  br label %44

44:                                               ; preds = %43, %39
  tail call fastcc void @mx5_clocks_common_init(ptr noundef %41) #3
  %45 = getelementptr i8, ptr %41, i32 24
  %46 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.162, i8 noundef zeroext 3, ptr noundef nonnull @periph_apm_sel, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %45, i8 noundef zeroext 12, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %47 = icmp eq ptr %46, null
  %48 = icmp ugt ptr %46, inttoptr (i32 -4096 to ptr)
  %49 = or i1 %47, %48
  br i1 %49, label %53, label %50

50:                                               ; preds = %44
  %51 = getelementptr inbounds %struct.clk_hw, ptr %46, i32 0, i32 1
  %52 = load ptr, ptr %51, align 4
  br label %53

53:                                               ; preds = %50, %44
  %54 = phi ptr [ %52, %50 ], [ %46, %44 ]
  store ptr %54, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 90), align 4
  %55 = getelementptr i8, ptr %41, i32 20
  %56 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.5, i8 noundef zeroext 2, ptr noundef nonnull @main_bus_sel, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %55, i8 noundef zeroext 25, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %57 = icmp eq ptr %56, null
  %58 = icmp ugt ptr %56, inttoptr (i32 -4096 to ptr)
  %59 = or i1 %57, %58
  br i1 %59, label %63, label %60

60:                                               ; preds = %53
  %61 = getelementptr inbounds %struct.clk_hw, ptr %56, i32 0, i32 1
  %62 = load ptr, ptr %61, align 4
  br label %63

63:                                               ; preds = %60, %53
  %64 = phi ptr [ %62, %60 ], [ %56, %53 ]
  store ptr %64, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 91), align 4
  %65 = getelementptr i8, ptr %41, i32 12
  %66 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.6, i8 noundef zeroext 1, ptr noundef nonnull @lp_apm_sel, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %65, i8 noundef zeroext 9, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %67 = icmp eq ptr %66, null
  %68 = icmp ugt ptr %66, inttoptr (i32 -4096 to ptr)
  %69 = or i1 %67, %68
  br i1 %69, label %73, label %70

70:                                               ; preds = %63
  %71 = getelementptr inbounds %struct.clk_hw, ptr %66, i32 0, i32 1
  %72 = load ptr, ptr %71, align 4
  br label %73

73:                                               ; preds = %70, %63
  %74 = phi ptr [ %72, %70 ], [ %66, %63 ]
  store ptr %74, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 89), align 4
  %75 = getelementptr i8, ptr %41, i32 32
  %76 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.109, i8 noundef zeroext 4, ptr noundef nonnull @mx51_ipu_di0_sel, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %75, i8 noundef zeroext 26, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %77 = icmp eq ptr %76, null
  %78 = icmp ugt ptr %76, inttoptr (i32 -4096 to ptr)
  %79 = or i1 %77, %78
  br i1 %79, label %83, label %80

80:                                               ; preds = %73
  %81 = getelementptr inbounds %struct.clk_hw, ptr %76, i32 0, i32 1
  %82 = load ptr, ptr %81, align 4
  br label %83

83:                                               ; preds = %80, %73
  %84 = phi ptr [ %82, %80 ], [ %76, %73 ]
  store ptr %84, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 115), align 4
  %85 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.111, i8 noundef zeroext 5, ptr noundef nonnull @mx51_ipu_di1_sel, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %75, i8 noundef zeroext 29, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %86 = icmp eq ptr %85, null
  %87 = icmp ugt ptr %85, inttoptr (i32 -4096 to ptr)
  %88 = or i1 %86, %87
  br i1 %88, label %92, label %89

89:                                               ; preds = %83
  %90 = getelementptr inbounds %struct.clk_hw, ptr %85, i32 0, i32 1
  %91 = load ptr, ptr %90, align 4
  br label %92

92:                                               ; preds = %89, %83
  %93 = phi ptr [ %91, %89 ], [ %85, %83 ]
  store ptr %93, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 116), align 4
  %94 = getelementptr i8, ptr %41, i32 28
  %95 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.163, i8 noundef zeroext 2, ptr noundef nonnull @mx51_tve_ext_sel, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %94, i8 noundef zeroext 6, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %96 = icmp eq ptr %95, null
  %97 = icmp ugt ptr %95, inttoptr (i32 -4096 to ptr)
  %98 = or i1 %96, %97
  br i1 %98, label %102, label %99

99:                                               ; preds = %92
  %100 = getelementptr inbounds %struct.clk_hw, ptr %95, i32 0, i32 1
  %101 = load ptr, ptr %100, align 4
  br label %102

102:                                              ; preds = %99, %92
  %103 = phi ptr [ %101, %99 ], [ %95, %92 ]
  store ptr %103, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 117), align 4
  %104 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.161, i8 noundef zeroext 2, ptr noundef nonnull @mx51_tve_sel, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %94, i8 noundef zeroext 7, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %105 = icmp eq ptr %104, null
  %106 = icmp ugt ptr %104, inttoptr (i32 -4096 to ptr)
  %107 = or i1 %105, %106
  br i1 %107, label %111, label %108

108:                                              ; preds = %102
  %109 = getelementptr inbounds %struct.clk_hw, ptr %104, i32 0, i32 1
  %110 = load ptr, ptr %109, align 4
  br label %111

111:                                              ; preds = %108, %102
  %112 = phi ptr [ %110, %108 ], [ %104, %102 ]
  store ptr %112, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 27), align 4
  %113 = getelementptr i8, ptr %41, i32 112
  %114 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.164, ptr noundef nonnull @.str.161, i32 noundef 4, ptr noundef %113, i8 noundef zeroext 30, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %115 = icmp eq ptr %114, null
  %116 = icmp ugt ptr %114, inttoptr (i32 -4096 to ptr)
  %117 = or i1 %115, %116
  br i1 %117, label %121, label %118

118:                                              ; preds = %111
  %119 = getelementptr inbounds %struct.clk_hw, ptr %114, i32 0, i32 1
  %120 = load ptr, ptr %119, align 4
  br label %121

121:                                              ; preds = %118, %111
  %122 = phi ptr [ %120, %118 ], [ %114, %111 ]
  store ptr %122, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 69), align 4
  %123 = getelementptr i8, ptr %41, i32 48
  %124 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.165, ptr noundef nonnull @.str.4, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %123, i8 noundef zeroext 28, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %125 = icmp eq ptr %124, null
  %126 = icmp ugt ptr %124, inttoptr (i32 -4096 to ptr)
  %127 = or i1 %125, %126
  br i1 %127, label %131, label %128

128:                                              ; preds = %121
  %129 = getelementptr inbounds %struct.clk_hw, ptr %124, i32 0, i32 1
  %130 = load ptr, ptr %129, align 4
  br label %131

131:                                              ; preds = %128, %121
  %132 = phi ptr [ %130, %128 ], [ %124, %121 ]
  store ptr %132, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 70), align 4
  %133 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.7, i8 noundef zeroext 4, ptr noundef nonnull @standard_pll_sel, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %94, i8 noundef zeroext 20, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %134 = icmp eq ptr %133, null
  %135 = icmp ugt ptr %133, inttoptr (i32 -4096 to ptr)
  %136 = or i1 %134, %135
  br i1 %136, label %140, label %137

137:                                              ; preds = %131
  %138 = getelementptr inbounds %struct.clk_hw, ptr %133, i32 0, i32 1
  %139 = load ptr, ptr %138, align 4
  br label %140

140:                                              ; preds = %137, %131
  %141 = phi ptr [ %139, %137 ], [ %133, %131 ]
  store ptr %141, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 100), align 4
  %142 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.8, i8 noundef zeroext 4, ptr noundef nonnull @standard_pll_sel, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %94, i8 noundef zeroext 16, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %143 = icmp eq ptr %142, null
  %144 = icmp ugt ptr %142, inttoptr (i32 -4096 to ptr)
  %145 = or i1 %143, %144
  br i1 %145, label %149, label %146

146:                                              ; preds = %140
  %147 = getelementptr inbounds %struct.clk_hw, ptr %142, i32 0, i32 1
  %148 = load ptr, ptr %147, align 4
  br label %149

149:                                              ; preds = %146, %140
  %150 = phi ptr [ %148, %146 ], [ %142, %140 ]
  store ptr %150, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 101), align 4
  %151 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.9, i8 noundef zeroext 2, ptr noundef nonnull @esdhc_c_sel, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %94, i8 noundef zeroext 19, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %152 = icmp eq ptr %151, null
  %153 = icmp ugt ptr %151, inttoptr (i32 -4096 to ptr)
  %154 = or i1 %152, %153
  br i1 %154, label %158, label %155

155:                                              ; preds = %149
  %156 = getelementptr inbounds %struct.clk_hw, ptr %151, i32 0, i32 1
  %157 = load ptr, ptr %156, align 4
  br label %158

158:                                              ; preds = %155, %149
  %159 = phi ptr [ %157, %155 ], [ %151, %149 ]
  store ptr %159, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 13), align 4
  %160 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.10, i8 noundef zeroext 2, ptr noundef nonnull @esdhc_d_sel, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %94, i8 noundef zeroext 18, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %161 = icmp eq ptr %160, null
  %162 = icmp ugt ptr %160, inttoptr (i32 -4096 to ptr)
  %163 = or i1 %161, %162
  br i1 %163, label %167, label %164

164:                                              ; preds = %158
  %165 = getelementptr inbounds %struct.clk_hw, ptr %160, i32 0, i32 1
  %166 = load ptr, ptr %165, align 4
  br label %167

167:                                              ; preds = %164, %158
  %168 = phi ptr [ %166, %164 ], [ %160, %158 ]
  store ptr %168, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 14), align 4
  %169 = getelementptr i8, ptr %41, i32 116
  %170 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef 4, ptr noundef %169, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %171 = icmp eq ptr %170, null
  %172 = icmp ugt ptr %170, inttoptr (i32 -4096 to ptr)
  %173 = or i1 %171, %172
  br i1 %173, label %177, label %174

174:                                              ; preds = %167
  %175 = getelementptr inbounds %struct.clk_hw, ptr %170, i32 0, i32 1
  %176 = load ptr, ptr %175, align 4
  br label %177

177:                                              ; preds = %174, %167
  %178 = phi ptr [ %176, %174 ], [ %170, %167 ]
  store ptr %178, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 71), align 4
  %179 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.15, i32 noundef 4, ptr noundef %169, i8 noundef zeroext 6, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %180 = icmp eq ptr %179, null
  %181 = icmp ugt ptr %179, inttoptr (i32 -4096 to ptr)
  %182 = or i1 %180, %181
  br i1 %182, label %186, label %183

183:                                              ; preds = %177
  %184 = getelementptr inbounds %struct.clk_hw, ptr %179, i32 0, i32 1
  %185 = load ptr, ptr %184, align 4
  br label %186

186:                                              ; preds = %183, %177
  %187 = phi ptr [ %185, %183 ], [ %179, %177 ]
  store ptr %187, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 72), align 4
  %188 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.9, i32 noundef 4, ptr noundef %169, i8 noundef zeroext 10, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %189 = icmp eq ptr %188, null
  %190 = icmp ugt ptr %188, inttoptr (i32 -4096 to ptr)
  %191 = or i1 %189, %190
  br i1 %191, label %195, label %192

192:                                              ; preds = %186
  %193 = getelementptr inbounds %struct.clk_hw, ptr %188, i32 0, i32 1
  %194 = load ptr, ptr %193, align 4
  br label %195

195:                                              ; preds = %192, %186
  %196 = phi ptr [ %194, %192 ], [ %188, %186 ]
  store ptr %196, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 73), align 4
  %197 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.10, i32 noundef 4, ptr noundef %169, i8 noundef zeroext 14, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %198 = icmp eq ptr %197, null
  %199 = icmp ugt ptr %197, inttoptr (i32 -4096 to ptr)
  %200 = or i1 %198, %199
  br i1 %200, label %204, label %201

201:                                              ; preds = %195
  %202 = getelementptr inbounds %struct.clk_hw, ptr %197, i32 0, i32 1
  %203 = load ptr, ptr %202, align 4
  br label %204

204:                                              ; preds = %201, %195
  %205 = phi ptr [ %203, %201 ], [ %197, %195 ]
  store ptr %205, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 74), align 4
  %206 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.166, ptr noundef nonnull @.str.18, i32 noundef 4, ptr noundef %113, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %207 = icmp eq ptr %206, null
  %208 = icmp ugt ptr %206, inttoptr (i32 -4096 to ptr)
  %209 = or i1 %207, %208
  br i1 %209, label %213, label %210

210:                                              ; preds = %204
  %211 = getelementptr inbounds %struct.clk_hw, ptr %206, i32 0, i32 1
  %212 = load ptr, ptr %211, align 4
  br label %213

213:                                              ; preds = %210, %204
  %214 = phi ptr [ %212, %210 ], [ %206, %204 ]
  store ptr %214, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 75), align 4
  %215 = getelementptr i8, ptr %41, i32 108
  %216 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.167, ptr noundef nonnull @.str.23, i32 noundef 4, ptr noundef %215, i8 noundef zeroext 22, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %217 = icmp eq ptr %216, null
  %218 = icmp ugt ptr %216, inttoptr (i32 -4096 to ptr)
  %219 = or i1 %217, %218
  br i1 %219, label %223, label %220

220:                                              ; preds = %213
  %221 = getelementptr inbounds %struct.clk_hw, ptr %216, i32 0, i32 1
  %222 = load ptr, ptr %221, align 4
  br label %223

223:                                              ; preds = %220, %213
  %224 = phi ptr [ %222, %220 ], [ %216, %213 ]
  store ptr %224, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 76), align 4
  %225 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.168, ptr noundef nonnull @.str.23, i32 noundef 4, ptr noundef %215, i8 noundef zeroext 30, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %226 = icmp eq ptr %225, null
  %227 = icmp ugt ptr %225, inttoptr (i32 -4096 to ptr)
  %228 = or i1 %226, %227
  br i1 %228, label %232, label %229

229:                                              ; preds = %223
  %230 = getelementptr inbounds %struct.clk_hw, ptr %225, i32 0, i32 1
  %231 = load ptr, ptr %230, align 4
  br label %232

232:                                              ; preds = %229, %223
  %233 = phi ptr [ %231, %229 ], [ %225, %223 ]
  store ptr %233, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 205), align 4
  %234 = getelementptr i8, ptr %41, i32 120
  %235 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.169, ptr noundef nonnull @.str.23, i32 noundef 2052, ptr noundef %234, i8 noundef zeroext 6, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %236 = icmp eq ptr %235, null
  %237 = icmp ugt ptr %235, inttoptr (i32 -4096 to ptr)
  %238 = or i1 %236, %237
  br i1 %238, label %242, label %239

239:                                              ; preds = %232
  %240 = getelementptr inbounds %struct.clk_hw, ptr %235, i32 0, i32 1
  %241 = load ptr, ptr %240, align 4
  br label %242

242:                                              ; preds = %239, %232
  %243 = phi ptr [ %241, %239 ], [ %235, %232 ]
  store ptr %243, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 77), align 4
  %244 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.170, ptr noundef nonnull @.str.23, i32 noundef 2052, ptr noundef %234, i8 noundef zeroext 8, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %245 = icmp eq ptr %244, null
  %246 = icmp ugt ptr %244, inttoptr (i32 -4096 to ptr)
  %247 = or i1 %245, %246
  br i1 %247, label %251, label %248

248:                                              ; preds = %242
  %249 = getelementptr inbounds %struct.clk_hw, ptr %244, i32 0, i32 1
  %250 = load ptr, ptr %249, align 4
  br label %251

251:                                              ; preds = %248, %242
  %252 = phi ptr [ %250, %248 ], [ %244, %242 ]
  store ptr %252, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 78), align 4
  %253 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.171, ptr noundef nonnull @.str.23, i32 noundef 2052, ptr noundef %234, i8 noundef zeroext 10, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %254 = icmp eq ptr %253, null
  %255 = icmp ugt ptr %253, inttoptr (i32 -4096 to ptr)
  %256 = or i1 %254, %255
  br i1 %256, label %260, label %257

257:                                              ; preds = %251
  %258 = getelementptr inbounds %struct.clk_hw, ptr %253, i32 0, i32 1
  %259 = load ptr, ptr %258, align 4
  br label %260

260:                                              ; preds = %257, %251
  %261 = phi ptr [ %259, %257 ], [ %253, %251 ]
  store ptr %261, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 79), align 4
  %262 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.172, ptr noundef nonnull @.str.23, i32 noundef 2052, ptr noundef %234, i8 noundef zeroext 12, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %263 = icmp eq ptr %262, null
  %264 = icmp ugt ptr %262, inttoptr (i32 -4096 to ptr)
  %265 = or i1 %263, %264
  br i1 %265, label %269, label %266

266:                                              ; preds = %260
  %267 = getelementptr inbounds %struct.clk_hw, ptr %262, i32 0, i32 1
  %268 = load ptr, ptr %267, align 4
  br label %269

269:                                              ; preds = %266, %260
  %270 = phi ptr [ %268, %266 ], [ %262, %260 ]
  store ptr %270, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 80), align 4
  %271 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.159, i8 noundef zeroext 3, ptr noundef nonnull @mx51_spdif_xtal_sel, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %94, i8 noundef zeroext 2, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %272 = icmp eq ptr %271, null
  %273 = icmp ugt ptr %271, inttoptr (i32 -4096 to ptr)
  %274 = or i1 %272, %273
  br i1 %274, label %278, label %275

275:                                              ; preds = %269
  %276 = getelementptr inbounds %struct.clk_hw, ptr %271, i32 0, i32 1
  %277 = load ptr, ptr %276, align 4
  br label %278

278:                                              ; preds = %275, %269
  %279 = phi ptr [ %277, %275 ], [ %271, %269 ]
  store ptr %279, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 174), align 4
  %280 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.173, i8 noundef zeroext 4, ptr noundef nonnull @spdif_sel, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %75, i8 noundef zeroext 2, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %281 = icmp eq ptr %280, null
  %282 = icmp ugt ptr %280, inttoptr (i32 -4096 to ptr)
  %283 = or i1 %281, %282
  br i1 %283, label %287, label %284

284:                                              ; preds = %278
  %285 = getelementptr inbounds %struct.clk_hw, ptr %280, i32 0, i32 1
  %286 = load ptr, ptr %285, align 4
  br label %287

287:                                              ; preds = %284, %278
  %288 = phi ptr [ %286, %284 ], [ %280, %278 ]
  store ptr %288, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 176), align 4
  %289 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.174, ptr noundef nonnull @.str.173, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %123, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %290 = icmp eq ptr %289, null
  %291 = icmp ugt ptr %289, inttoptr (i32 -4096 to ptr)
  %292 = or i1 %290, %291
  br i1 %292, label %296, label %293

293:                                              ; preds = %287
  %294 = getelementptr inbounds %struct.clk_hw, ptr %289, i32 0, i32 1
  %295 = load ptr, ptr %294, align 4
  br label %296

296:                                              ; preds = %293, %287
  %297 = phi ptr [ %295, %293 ], [ %289, %287 ]
  store ptr %297, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 179), align 4
  %298 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.175, ptr noundef nonnull @.str.174, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %123, i8 noundef zeroext 9, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %299 = icmp eq ptr %298, null
  %300 = icmp ugt ptr %298, inttoptr (i32 -4096 to ptr)
  %301 = or i1 %299, %300
  br i1 %301, label %305, label %302

302:                                              ; preds = %296
  %303 = getelementptr inbounds %struct.clk_hw, ptr %298, i32 0, i32 1
  %304 = load ptr, ptr %303, align 4
  br label %305

305:                                              ; preds = %302, %296
  %306 = phi ptr [ %304, %302 ], [ %298, %296 ]
  store ptr %306, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 180), align 4
  %307 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.176, i8 noundef zeroext 2, ptr noundef nonnull @mx51_spdif1_com_sel, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %75, i8 noundef zeroext 5, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %308 = icmp eq ptr %307, null
  %309 = icmp ugt ptr %307, inttoptr (i32 -4096 to ptr)
  %310 = or i1 %308, %309
  br i1 %310, label %314, label %311

311:                                              ; preds = %305
  %312 = getelementptr inbounds %struct.clk_hw, ptr %307, i32 0, i32 1
  %313 = load ptr, ptr %312, align 4
  br label %314

314:                                              ; preds = %311, %305
  %315 = phi ptr [ %313, %311 ], [ %307, %305 ]
  store ptr %315, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 182), align 4
  %316 = getelementptr i8, ptr %41, i32 124
  %317 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.177, ptr noundef nonnull @.str.176, i32 noundef 4, ptr noundef %316, i8 noundef zeroext 28, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %318 = icmp eq ptr %317, null
  %319 = icmp ugt ptr %317, inttoptr (i32 -4096 to ptr)
  %320 = or i1 %318, %319
  br i1 %320, label %324, label %321

321:                                              ; preds = %314
  %322 = getelementptr inbounds %struct.clk_hw, ptr %317, i32 0, i32 1
  %323 = load ptr, ptr %322, align 4
  br label %324

324:                                              ; preds = %321, %314
  %325 = phi ptr [ %323, %321 ], [ %317, %314 ]
  store ptr %325, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 184), align 4
  tail call void @imx_check_clocks(ptr noundef nonnull @clk, i32 noundef 206) #2
  store ptr @clk, ptr @clk_data, align 4
  store i32 206, ptr getelementptr inbounds (%struct.clk_onecell_data, ptr @clk_data, i32 0, i32 1), align 4
  %326 = tail call i32 @of_clk_add_provider(ptr noundef %0, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef nonnull @clk_data) #2
  %327 = load ptr, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 105), align 4
  %328 = load ptr, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 113), align 4
  %329 = tail call i32 @clk_set_parent(ptr noundef %327, ptr noundef %328) #2
  %330 = load ptr, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 100), align 4
  %331 = load ptr, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 113), align 4
  %332 = tail call i32 @clk_set_parent(ptr noundef %330, ptr noundef %331) #2
  %333 = load ptr, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 101), align 4
  %334 = load ptr, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 113), align 4
  %335 = tail call i32 @clk_set_parent(ptr noundef %333, ptr noundef %334) #2
  %336 = load ptr, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 102), align 4
  %337 = tail call i32 @clk_set_rate(ptr noundef %336, i32 noundef 166250000) #2
  %338 = load ptr, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 103), align 4
  %339 = tail call i32 @clk_set_rate(ptr noundef %338, i32 noundef 166250000) #2
  %340 = load ptr, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 107), align 4
  %341 = tail call i32 @clk_prepare(ptr noundef %340) #2
  %342 = icmp eq i32 %341, 0
  br i1 %342, label %343, label %347

343:                                              ; preds = %324
  %344 = tail call i32 @clk_enable(ptr noundef %340) #2
  %345 = icmp eq i32 %344, 0
  br i1 %345, label %347, label %346

346:                                              ; preds = %343
  tail call void @clk_unprepare(ptr noundef %340) #2
  br label %347

347:                                              ; preds = %346, %343, %324
  %348 = tail call i32 @mx51_revision() #2
  tail call void @imx_print_silicon_rev(ptr noundef nonnull @.str.178, i32 noundef %348) #2
  %349 = load ptr, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 107), align 4
  tail call void @clk_disable(ptr noundef %349) #2
  tail call void @clk_unprepare(ptr noundef %349) #2
  %350 = getelementptr i8, ptr %41, i32 4
  %351 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %350) #2, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !10
  %352 = or i32 %351, 262144
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !11
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %350, i32 %352) #2, !srcloc !12
  %353 = getelementptr i8, ptr %41, i32 84
  %354 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %353) #2, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !13
  %355 = or i32 %354, 8388608
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !14
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %353, i32 %355) #2, !srcloc !12
  tail call void @imx_register_uart_clocks(i32 noundef 3) #2
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @mx53_clocks_init(ptr noundef %0) #0 section ".init.text" {
  %2 = tail call ptr @ioremap(i32 noundef 1677197312, i32 noundef 16384) #2
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %5, !prof !8

4:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 478, i32 noundef 9, ptr noundef null) #2
  br label %5

5:                                                ; preds = %4, %1
  %6 = tail call ptr @imx_clk_hw_pllv2(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, ptr noundef %2) #2
  %7 = icmp eq ptr %6, null
  %8 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  %9 = or i1 %7, %8
  br i1 %9, label %13, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.clk_hw, ptr %6, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  br label %13

13:                                               ; preds = %10, %5
  %14 = phi ptr [ %12, %10 ], [ %6, %5 ]
  store ptr %14, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 112), align 4
  %15 = tail call ptr @ioremap(i32 noundef 1677213696, i32 noundef 16384) #2
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %18, !prof !8

17:                                               ; preds = %13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 482, i32 noundef 9, ptr noundef null) #2
  br label %18

18:                                               ; preds = %17, %13
  %19 = tail call ptr @imx_clk_hw_pllv2(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.2, ptr noundef %15) #2
  %20 = icmp eq ptr %19, null
  %21 = icmp ugt ptr %19, inttoptr (i32 -4096 to ptr)
  %22 = or i1 %20, %21
  br i1 %22, label %26, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.clk_hw, ptr %19, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  br label %26

26:                                               ; preds = %23, %18
  %27 = phi ptr [ %25, %23 ], [ %19, %18 ]
  store ptr %27, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 113), align 4
  %28 = tail call ptr @ioremap(i32 noundef 1677230080, i32 noundef 16384) #2
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %31, !prof !8

30:                                               ; preds = %26
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 486, i32 noundef 9, ptr noundef null) #2
  br label %31

31:                                               ; preds = %30, %26
  %32 = tail call ptr @imx_clk_hw_pllv2(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, ptr noundef %28) #2
  %33 = icmp eq ptr %32, null
  %34 = icmp ugt ptr %32, inttoptr (i32 -4096 to ptr)
  %35 = or i1 %33, %34
  br i1 %35, label %39, label %36

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.clk_hw, ptr %32, i32 0, i32 1
  %38 = load ptr, ptr %37, align 4
  br label %39

39:                                               ; preds = %36, %31
  %40 = phi ptr [ %38, %36 ], [ %32, %31 ]
  store ptr %40, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 114), align 4
  %41 = tail call ptr @ioremap(i32 noundef 1677246464, i32 noundef 16384) #2
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %44, !prof !8

43:                                               ; preds = %39
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 490, i32 noundef 9, ptr noundef null) #2
  br label %44

44:                                               ; preds = %43, %39
  %45 = tail call ptr @imx_clk_hw_pllv2(ptr noundef nonnull @.str.160, ptr noundef nonnull @.str.2, ptr noundef %41) #2
  %46 = icmp eq ptr %45, null
  %47 = icmp ugt ptr %45, inttoptr (i32 -4096 to ptr)
  %48 = or i1 %46, %47
  br i1 %48, label %52, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.clk_hw, ptr %45, i32 0, i32 1
  %51 = load ptr, ptr %50, align 4
  br label %52

52:                                               ; preds = %49, %44
  %53 = phi ptr [ %51, %49 ], [ %45, %44 ]
  store ptr %53, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 119), align 4
  %54 = tail call ptr @of_iomap(ptr noundef %0, i32 noundef 0) #2
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %57, !prof !8

56:                                               ; preds = %52
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 494, i32 noundef 9, ptr noundef null) #2
  br label %57

57:                                               ; preds = %56, %52
  tail call fastcc void @mx5_clocks_common_init(ptr noundef %54) #3
  %58 = getelementptr i8, ptr %54, i32 24
  %59 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.162, i8 noundef zeroext 3, ptr noundef nonnull @periph_apm_sel, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %58, i8 noundef zeroext 12, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %60 = icmp eq ptr %59, null
  %61 = icmp ugt ptr %59, inttoptr (i32 -4096 to ptr)
  %62 = or i1 %60, %61
  br i1 %62, label %66, label %63

63:                                               ; preds = %57
  %64 = getelementptr inbounds %struct.clk_hw, ptr %59, i32 0, i32 1
  %65 = load ptr, ptr %64, align 4
  br label %66

66:                                               ; preds = %63, %57
  %67 = phi ptr [ %65, %63 ], [ %59, %57 ]
  store ptr %67, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 90), align 4
  %68 = getelementptr i8, ptr %54, i32 20
  %69 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.5, i8 noundef zeroext 2, ptr noundef nonnull @main_bus_sel, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %68, i8 noundef zeroext 25, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %70 = icmp eq ptr %69, null
  %71 = icmp ugt ptr %69, inttoptr (i32 -4096 to ptr)
  %72 = or i1 %70, %71
  br i1 %72, label %76, label %73

73:                                               ; preds = %66
  %74 = getelementptr inbounds %struct.clk_hw, ptr %69, i32 0, i32 1
  %75 = load ptr, ptr %74, align 4
  br label %76

76:                                               ; preds = %73, %66
  %77 = phi ptr [ %75, %73 ], [ %69, %66 ]
  store ptr %77, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 91), align 4
  %78 = getelementptr i8, ptr %54, i32 12
  %79 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.6, i8 noundef zeroext 1, ptr noundef nonnull @lp_apm_sel, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %78, i8 noundef zeroext 10, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %80 = icmp eq ptr %79, null
  %81 = icmp ugt ptr %79, inttoptr (i32 -4096 to ptr)
  %82 = or i1 %80, %81
  br i1 %82, label %86, label %83

83:                                               ; preds = %76
  %84 = getelementptr inbounds %struct.clk_hw, ptr %79, i32 0, i32 1
  %85 = load ptr, ptr %84, align 4
  br label %86

86:                                               ; preds = %83, %76
  %87 = phi ptr [ %85, %83 ], [ %79, %76 ]
  store ptr %87, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 89), align 4
  %88 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.182, ptr noundef nonnull @.str.183, i32 noundef 4, i32 noundef 2, i32 noundef 7) #2
  %89 = icmp eq ptr %88, null
  %90 = icmp ugt ptr %88, inttoptr (i32 -4096 to ptr)
  %91 = or i1 %89, %90
  br i1 %91, label %95, label %92

92:                                               ; preds = %86
  %93 = getelementptr inbounds %struct.clk_hw, ptr %88, i32 0, i32 1
  %94 = load ptr, ptr %93, align 4
  br label %95

95:                                               ; preds = %92, %86
  %96 = phi ptr [ %94, %92 ], [ %88, %86 ]
  store ptr %96, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 81), align 4
  %97 = getelementptr i8, ptr %54, i32 32
  %98 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.184, ptr noundef nonnull @.str.182, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef %97, i8 noundef zeroext 11, i8 noundef zeroext 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %99 = icmp eq ptr %98, null
  %100 = icmp ugt ptr %98, inttoptr (i32 -4096 to ptr)
  %101 = or i1 %99, %100
  br i1 %101, label %105, label %102

102:                                              ; preds = %95
  %103 = getelementptr inbounds %struct.clk_hw, ptr %98, i32 0, i32 1
  %104 = load ptr, ptr %103, align 4
  br label %105

105:                                              ; preds = %102, %95
  %106 = phi ptr [ %104, %102 ], [ %98, %95 ]
  store ptr %106, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 82), align 4
  %107 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.183, i8 noundef zeroext 2, ptr noundef nonnull @mx53_ldb_di1_sel, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %97, i8 noundef zeroext 9, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %108 = icmp eq ptr %107, null
  %109 = icmp ugt ptr %107, inttoptr (i32 -4096 to ptr)
  %110 = or i1 %108, %109
  br i1 %110, label %114, label %111

111:                                              ; preds = %105
  %112 = getelementptr inbounds %struct.clk_hw, ptr %107, i32 0, i32 1
  %113 = load ptr, ptr %112, align 4
  br label %114

114:                                              ; preds = %111, %105
  %115 = phi ptr [ %113, %111 ], [ %107, %105 ]
  store ptr %115, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 120), align 4
  %116 = getelementptr i8, ptr %54, i32 48
  %117 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.185, ptr noundef nonnull @.str.160, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %116, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %118 = icmp eq ptr %117, null
  %119 = icmp ugt ptr %117, inttoptr (i32 -4096 to ptr)
  %120 = or i1 %118, %119
  br i1 %120, label %124, label %121

121:                                              ; preds = %114
  %122 = getelementptr inbounds %struct.clk_hw, ptr %117, i32 0, i32 1
  %123 = load ptr, ptr %122, align 4
  br label %124

124:                                              ; preds = %121, %114
  %125 = phi ptr [ %123, %121 ], [ %117, %114 ]
  store ptr %125, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 121), align 4
  %126 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.186, ptr noundef nonnull @.str.187, i32 noundef 4, i32 noundef 2, i32 noundef 7) #2
  %127 = icmp eq ptr %126, null
  %128 = icmp ugt ptr %126, inttoptr (i32 -4096 to ptr)
  %129 = or i1 %127, %128
  br i1 %129, label %133, label %130

130:                                              ; preds = %124
  %131 = getelementptr inbounds %struct.clk_hw, ptr %126, i32 0, i32 1
  %132 = load ptr, ptr %131, align 4
  br label %133

133:                                              ; preds = %130, %124
  %134 = phi ptr [ %132, %130 ], [ %126, %124 ]
  store ptr %134, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 83), align 4
  %135 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.188, ptr noundef nonnull @.str.186, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef %97, i8 noundef zeroext 10, i8 noundef zeroext 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %136 = icmp eq ptr %135, null
  %137 = icmp ugt ptr %135, inttoptr (i32 -4096 to ptr)
  %138 = or i1 %136, %137
  br i1 %138, label %142, label %139

139:                                              ; preds = %133
  %140 = getelementptr inbounds %struct.clk_hw, ptr %135, i32 0, i32 1
  %141 = load ptr, ptr %140, align 4
  br label %142

142:                                              ; preds = %139, %133
  %143 = phi ptr [ %141, %139 ], [ %135, %133 ]
  store ptr %143, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 84), align 4
  %144 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.187, i8 noundef zeroext 2, ptr noundef nonnull @mx53_ldb_di0_sel, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %97, i8 noundef zeroext 8, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %145 = icmp eq ptr %144, null
  %146 = icmp ugt ptr %144, inttoptr (i32 -4096 to ptr)
  %147 = or i1 %145, %146
  br i1 %147, label %151, label %148

148:                                              ; preds = %142
  %149 = getelementptr inbounds %struct.clk_hw, ptr %144, i32 0, i32 1
  %150 = load ptr, ptr %149, align 4
  br label %151

151:                                              ; preds = %148, %142
  %152 = phi ptr [ %150, %148 ], [ %144, %142 ]
  store ptr %152, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 122), align 4
  %153 = getelementptr i8, ptr %54, i32 128
  %154 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.189, ptr noundef nonnull @.str.188, i32 noundef 4, ptr noundef %153, i8 noundef zeroext 28, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %155 = icmp eq ptr %154, null
  %156 = icmp ugt ptr %154, inttoptr (i32 -4096 to ptr)
  %157 = or i1 %155, %156
  br i1 %157, label %161, label %158

158:                                              ; preds = %151
  %159 = getelementptr inbounds %struct.clk_hw, ptr %154, i32 0, i32 1
  %160 = load ptr, ptr %159, align 4
  br label %161

161:                                              ; preds = %158, %151
  %162 = phi ptr [ %160, %158 ], [ %154, %151 ]
  store ptr %162, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 123), align 4
  %163 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.190, ptr noundef nonnull @.str.184, i32 noundef 4, ptr noundef %153, i8 noundef zeroext 30, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %164 = icmp eq ptr %163, null
  %165 = icmp ugt ptr %163, inttoptr (i32 -4096 to ptr)
  %166 = or i1 %164, %165
  br i1 %166, label %170, label %167

167:                                              ; preds = %161
  %168 = getelementptr inbounds %struct.clk_hw, ptr %163, i32 0, i32 1
  %169 = load ptr, ptr %168, align 4
  br label %170

170:                                              ; preds = %167, %161
  %171 = phi ptr [ %169, %167 ], [ %163, %161 ]
  store ptr %171, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 85), align 4
  %172 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.109, i8 noundef zeroext 6, ptr noundef nonnull @mx53_ipu_di0_sel, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %97, i8 noundef zeroext 26, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %173 = icmp eq ptr %172, null
  %174 = icmp ugt ptr %172, inttoptr (i32 -4096 to ptr)
  %175 = or i1 %173, %174
  br i1 %175, label %179, label %176

176:                                              ; preds = %170
  %177 = getelementptr inbounds %struct.clk_hw, ptr %172, i32 0, i32 1
  %178 = load ptr, ptr %177, align 4
  br label %179

179:                                              ; preds = %176, %170
  %180 = phi ptr [ %178, %176 ], [ %172, %170 ]
  store ptr %180, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 115), align 4
  %181 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.111, i8 noundef zeroext 6, ptr noundef nonnull @mx53_ipu_di1_sel, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %97, i8 noundef zeroext 29, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %182 = icmp eq ptr %181, null
  %183 = icmp ugt ptr %181, inttoptr (i32 -4096 to ptr)
  %184 = or i1 %182, %183
  br i1 %184, label %188, label %185

185:                                              ; preds = %179
  %186 = getelementptr inbounds %struct.clk_hw, ptr %181, i32 0, i32 1
  %187 = load ptr, ptr %186, align 4
  br label %188

188:                                              ; preds = %185, %179
  %189 = phi ptr [ %187, %185 ], [ %181, %179 ]
  store ptr %189, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 116), align 4
  %190 = getelementptr i8, ptr %54, i32 28
  %191 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.163, i8 noundef zeroext 2, ptr noundef nonnull @mx53_tve_ext_sel, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %190, i8 noundef zeroext 6, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %192 = icmp eq ptr %191, null
  %193 = icmp ugt ptr %191, inttoptr (i32 -4096 to ptr)
  %194 = or i1 %192, %193
  br i1 %194, label %198, label %195

195:                                              ; preds = %188
  %196 = getelementptr inbounds %struct.clk_hw, ptr %191, i32 0, i32 1
  %197 = load ptr, ptr %196, align 4
  br label %198

198:                                              ; preds = %195, %188
  %199 = phi ptr [ %197, %195 ], [ %191, %188 ]
  store ptr %199, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 117), align 4
  %200 = getelementptr i8, ptr %54, i32 112
  %201 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.164, ptr noundef nonnull @.str.165, i32 noundef 4, ptr noundef %200, i8 noundef zeroext 30, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %202 = icmp eq ptr %201, null
  %203 = icmp ugt ptr %201, inttoptr (i32 -4096 to ptr)
  %204 = or i1 %202, %203
  br i1 %204, label %208, label %205

205:                                              ; preds = %198
  %206 = getelementptr inbounds %struct.clk_hw, ptr %201, i32 0, i32 1
  %207 = load ptr, ptr %206, align 4
  br label %208

208:                                              ; preds = %205, %198
  %209 = phi ptr [ %207, %205 ], [ %201, %198 ]
  store ptr %209, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 69), align 4
  %210 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.165, ptr noundef nonnull @.str.163, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %116, i8 noundef zeroext 28, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %211 = icmp eq ptr %210, null
  %212 = icmp ugt ptr %210, inttoptr (i32 -4096 to ptr)
  %213 = or i1 %211, %212
  br i1 %213, label %217, label %214

214:                                              ; preds = %208
  %215 = getelementptr inbounds %struct.clk_hw, ptr %210, i32 0, i32 1
  %216 = load ptr, ptr %215, align 4
  br label %217

217:                                              ; preds = %214, %208
  %218 = phi ptr [ %216, %214 ], [ %210, %208 ]
  store ptr %218, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 70), align 4
  %219 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.7, i8 noundef zeroext 4, ptr noundef nonnull @standard_pll_sel, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %190, i8 noundef zeroext 20, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %220 = icmp eq ptr %219, null
  %221 = icmp ugt ptr %219, inttoptr (i32 -4096 to ptr)
  %222 = or i1 %220, %221
  br i1 %222, label %226, label %223

223:                                              ; preds = %217
  %224 = getelementptr inbounds %struct.clk_hw, ptr %219, i32 0, i32 1
  %225 = load ptr, ptr %224, align 4
  br label %226

226:                                              ; preds = %223, %217
  %227 = phi ptr [ %225, %223 ], [ %219, %217 ]
  store ptr %227, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 100), align 4
  %228 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.8, i8 noundef zeroext 4, ptr noundef nonnull @standard_pll_sel, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %190, i8 noundef zeroext 16, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %229 = icmp eq ptr %228, null
  %230 = icmp ugt ptr %228, inttoptr (i32 -4096 to ptr)
  %231 = or i1 %229, %230
  br i1 %231, label %235, label %232

232:                                              ; preds = %226
  %233 = getelementptr inbounds %struct.clk_hw, ptr %228, i32 0, i32 1
  %234 = load ptr, ptr %233, align 4
  br label %235

235:                                              ; preds = %232, %226
  %236 = phi ptr [ %234, %232 ], [ %228, %226 ]
  store ptr %236, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 101), align 4
  %237 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.9, i8 noundef zeroext 2, ptr noundef nonnull @esdhc_c_sel, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %190, i8 noundef zeroext 19, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %238 = icmp eq ptr %237, null
  %239 = icmp ugt ptr %237, inttoptr (i32 -4096 to ptr)
  %240 = or i1 %238, %239
  br i1 %240, label %244, label %241

241:                                              ; preds = %235
  %242 = getelementptr inbounds %struct.clk_hw, ptr %237, i32 0, i32 1
  %243 = load ptr, ptr %242, align 4
  br label %244

244:                                              ; preds = %241, %235
  %245 = phi ptr [ %243, %241 ], [ %237, %235 ]
  store ptr %245, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 13), align 4
  %246 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.10, i8 noundef zeroext 2, ptr noundef nonnull @esdhc_d_sel, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %190, i8 noundef zeroext 18, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %247 = icmp eq ptr %246, null
  %248 = icmp ugt ptr %246, inttoptr (i32 -4096 to ptr)
  %249 = or i1 %247, %248
  br i1 %249, label %253, label %250

250:                                              ; preds = %244
  %251 = getelementptr inbounds %struct.clk_hw, ptr %246, i32 0, i32 1
  %252 = load ptr, ptr %251, align 4
  br label %253

253:                                              ; preds = %250, %244
  %254 = phi ptr [ %252, %250 ], [ %246, %244 ]
  store ptr %254, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 14), align 4
  %255 = getelementptr i8, ptr %54, i32 116
  %256 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef 4, ptr noundef %255, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %257 = icmp eq ptr %256, null
  %258 = icmp ugt ptr %256, inttoptr (i32 -4096 to ptr)
  %259 = or i1 %257, %258
  br i1 %259, label %263, label %260

260:                                              ; preds = %253
  %261 = getelementptr inbounds %struct.clk_hw, ptr %256, i32 0, i32 1
  %262 = load ptr, ptr %261, align 4
  br label %263

263:                                              ; preds = %260, %253
  %264 = phi ptr [ %262, %260 ], [ %256, %253 ]
  store ptr %264, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 71), align 4
  %265 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.9, i32 noundef 4, ptr noundef %255, i8 noundef zeroext 6, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %266 = icmp eq ptr %265, null
  %267 = icmp ugt ptr %265, inttoptr (i32 -4096 to ptr)
  %268 = or i1 %266, %267
  br i1 %268, label %272, label %269

269:                                              ; preds = %263
  %270 = getelementptr inbounds %struct.clk_hw, ptr %265, i32 0, i32 1
  %271 = load ptr, ptr %270, align 4
  br label %272

272:                                              ; preds = %269, %263
  %273 = phi ptr [ %271, %269 ], [ %265, %263 ]
  store ptr %273, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 72), align 4
  %274 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, i32 noundef 4, ptr noundef %255, i8 noundef zeroext 10, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %275 = icmp eq ptr %274, null
  %276 = icmp ugt ptr %274, inttoptr (i32 -4096 to ptr)
  %277 = or i1 %275, %276
  br i1 %277, label %281, label %278

278:                                              ; preds = %272
  %279 = getelementptr inbounds %struct.clk_hw, ptr %274, i32 0, i32 1
  %280 = load ptr, ptr %279, align 4
  br label %281

281:                                              ; preds = %278, %272
  %282 = phi ptr [ %280, %278 ], [ %274, %272 ]
  store ptr %282, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 73), align 4
  %283 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.10, i32 noundef 4, ptr noundef %255, i8 noundef zeroext 14, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %284 = icmp eq ptr %283, null
  %285 = icmp ugt ptr %283, inttoptr (i32 -4096 to ptr)
  %286 = or i1 %284, %285
  br i1 %286, label %290, label %287

287:                                              ; preds = %281
  %288 = getelementptr inbounds %struct.clk_hw, ptr %283, i32 0, i32 1
  %289 = load ptr, ptr %288, align 4
  br label %290

290:                                              ; preds = %287, %281
  %291 = phi ptr [ %289, %287 ], [ %283, %281 ]
  store ptr %291, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 74), align 4
  %292 = getelementptr i8, ptr %54, i32 120
  %293 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, i32 noundef 4, ptr noundef %292, i8 noundef zeroext 10, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %294 = icmp eq ptr %293, null
  %295 = icmp ugt ptr %293, inttoptr (i32 -4096 to ptr)
  %296 = or i1 %294, %295
  br i1 %296, label %300, label %297

297:                                              ; preds = %290
  %298 = getelementptr inbounds %struct.clk_hw, ptr %293, i32 0, i32 1
  %299 = load ptr, ptr %298, align 4
  br label %300

300:                                              ; preds = %297, %290
  %301 = phi ptr [ %299, %297 ], [ %293, %290 ]
  store ptr %301, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 124), align 4
  %302 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.18, i32 noundef 4, ptr noundef %292, i8 noundef zeroext 12, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %303 = icmp eq ptr %302, null
  %304 = icmp ugt ptr %302, inttoptr (i32 -4096 to ptr)
  %305 = or i1 %303, %304
  br i1 %305, label %309, label %306

306:                                              ; preds = %300
  %307 = getelementptr inbounds %struct.clk_hw, ptr %302, i32 0, i32 1
  %308 = load ptr, ptr %307, align 4
  br label %309

309:                                              ; preds = %306, %300
  %310 = phi ptr [ %308, %306 ], [ %302, %300 ]
  store ptr %310, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 125), align 4
  %311 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.191, i8 noundef zeroext 4, ptr noundef nonnull @mx53_can_sel, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %97, i8 noundef zeroext 6, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %312 = icmp eq ptr %311, null
  %313 = icmp ugt ptr %311, inttoptr (i32 -4096 to ptr)
  %314 = or i1 %312, %313
  br i1 %314, label %318, label %315

315:                                              ; preds = %309
  %316 = getelementptr inbounds %struct.clk_hw, ptr %311, i32 0, i32 1
  %317 = load ptr, ptr %316, align 4
  br label %318

318:                                              ; preds = %315, %309
  %319 = phi ptr [ %317, %315 ], [ %311, %309 ]
  store ptr %319, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 156), align 4
  %320 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.192, ptr noundef nonnull @.str.191, i32 noundef 4, ptr noundef %153, i8 noundef zeroext 22, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %321 = icmp eq ptr %320, null
  %322 = icmp ugt ptr %320, inttoptr (i32 -4096 to ptr)
  %323 = or i1 %321, %322
  br i1 %323, label %327, label %324

324:                                              ; preds = %318
  %325 = getelementptr inbounds %struct.clk_hw, ptr %320, i32 0, i32 1
  %326 = load ptr, ptr %325, align 4
  br label %327

327:                                              ; preds = %324, %318
  %328 = phi ptr [ %326, %324 ], [ %320, %318 ]
  store ptr %328, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 157), align 4
  %329 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.193, ptr noundef nonnull @.str.23, i32 noundef 4, ptr noundef %153, i8 noundef zeroext 20, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %330 = icmp eq ptr %329, null
  %331 = icmp ugt ptr %329, inttoptr (i32 -4096 to ptr)
  %332 = or i1 %330, %331
  br i1 %332, label %336, label %333

333:                                              ; preds = %327
  %334 = getelementptr inbounds %struct.clk_hw, ptr %329, i32 0, i32 1
  %335 = load ptr, ptr %334, align 4
  br label %336

336:                                              ; preds = %333, %327
  %337 = phi ptr [ %335, %333 ], [ %329, %327 ]
  store ptr %337, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 158), align 4
  %338 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.194, ptr noundef nonnull @.str.43, i32 noundef 4, ptr noundef %153, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %339 = icmp eq ptr %338, null
  %340 = icmp ugt ptr %338, inttoptr (i32 -4096 to ptr)
  %341 = or i1 %339, %340
  br i1 %341, label %345, label %342

342:                                              ; preds = %336
  %343 = getelementptr inbounds %struct.clk_hw, ptr %338, i32 0, i32 1
  %344 = load ptr, ptr %343, align 4
  br label %345

345:                                              ; preds = %342, %336
  %346 = phi ptr [ %344, %342 ], [ %338, %336 ]
  store ptr %346, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 186), align 4
  %347 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.195, ptr noundef nonnull @.str.191, i32 noundef 4, ptr noundef %292, i8 noundef zeroext 8, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %348 = icmp eq ptr %347, null
  %349 = icmp ugt ptr %347, inttoptr (i32 -4096 to ptr)
  %350 = or i1 %348, %349
  br i1 %350, label %354, label %351

351:                                              ; preds = %345
  %352 = getelementptr inbounds %struct.clk_hw, ptr %347, i32 0, i32 1
  %353 = load ptr, ptr %352, align 4
  br label %354

354:                                              ; preds = %351, %345
  %355 = phi ptr [ %353, %351 ], [ %347, %345 ]
  store ptr %355, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 86), align 4
  %356 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.196, ptr noundef nonnull @.str.23, i32 noundef 4, ptr noundef %292, i8 noundef zeroext 6, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %357 = icmp eq ptr %356, null
  %358 = icmp ugt ptr %356, inttoptr (i32 -4096 to ptr)
  %359 = or i1 %357, %358
  br i1 %359, label %363, label %360

360:                                              ; preds = %354
  %361 = getelementptr inbounds %struct.clk_hw, ptr %356, i32 0, i32 1
  %362 = load ptr, ptr %361, align 4
  br label %363

363:                                              ; preds = %360, %354
  %364 = phi ptr [ %362, %360 ], [ %356, %354 ]
  store ptr %364, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 87), align 4
  %365 = getelementptr i8, ptr %54, i32 108
  %366 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21, i32 noundef 4, ptr noundef %365, i8 noundef zeroext 22, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %367 = icmp eq ptr %366, null
  %368 = icmp ugt ptr %366, inttoptr (i32 -4096 to ptr)
  %369 = or i1 %367, %368
  br i1 %369, label %373, label %370

370:                                              ; preds = %363
  %371 = getelementptr inbounds %struct.clk_hw, ptr %366, i32 0, i32 1
  %372 = load ptr, ptr %371, align 4
  br label %373

373:                                              ; preds = %370, %363
  %374 = phi ptr [ %372, %370 ], [ %366, %363 ]
  store ptr %374, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 88), align 4
  %375 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.197, ptr noundef nonnull @.str.23, i32 noundef 4, ptr noundef %292, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %376 = icmp eq ptr %375, null
  %377 = icmp ugt ptr %375, inttoptr (i32 -4096 to ptr)
  %378 = or i1 %376, %377
  br i1 %378, label %382, label %379

379:                                              ; preds = %373
  %380 = getelementptr inbounds %struct.clk_hw, ptr %375, i32 0, i32 1
  %381 = load ptr, ptr %380, align 4
  br label %382

382:                                              ; preds = %379, %373
  %383 = phi ptr [ %381, %379 ], [ %375, %373 ]
  store ptr %383, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 173), align 4
  %384 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.198, i8 noundef zeroext 4, ptr noundef nonnull @standard_pll_sel, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %97, i8 noundef zeroext 12, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %385 = icmp eq ptr %384, null
  %386 = icmp ugt ptr %384, inttoptr (i32 -4096 to ptr)
  %387 = or i1 %385, %386
  br i1 %387, label %391, label %388

388:                                              ; preds = %382
  %389 = getelementptr inbounds %struct.clk_hw, ptr %384, i32 0, i32 1
  %390 = load ptr, ptr %389, align 4
  br label %391

391:                                              ; preds = %388, %382
  %392 = phi ptr [ %390, %388 ], [ %384, %382 ]
  store ptr %392, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 193), align 4
  %393 = getelementptr i8, ptr %54, i32 60
  %394 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.199, ptr noundef nonnull @.str.198, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %393, i8 noundef zeroext 6, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %395 = icmp eq ptr %394, null
  %396 = icmp ugt ptr %394, inttoptr (i32 -4096 to ptr)
  %397 = or i1 %395, %396
  br i1 %397, label %401, label %398

398:                                              ; preds = %391
  %399 = getelementptr inbounds %struct.clk_hw, ptr %394, i32 0, i32 1
  %400 = load ptr, ptr %399, align 4
  br label %401

401:                                              ; preds = %398, %391
  %402 = phi ptr [ %400, %398 ], [ %394, %391 ]
  store ptr %402, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 192), align 4
  %403 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.200, ptr noundef nonnull @.str.199, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %393, i8 noundef zeroext 0, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %404 = icmp eq ptr %403, null
  %405 = icmp ugt ptr %403, inttoptr (i32 -4096 to ptr)
  %406 = or i1 %404, %405
  br i1 %406, label %410, label %407

407:                                              ; preds = %401
  %408 = getelementptr inbounds %struct.clk_hw, ptr %403, i32 0, i32 1
  %409 = load ptr, ptr %408, align 4
  br label %410

410:                                              ; preds = %407, %401
  %411 = phi ptr [ %409, %407 ], [ %403, %401 ]
  store ptr %411, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 194), align 4
  %412 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.201, ptr noundef nonnull @.str.200, i32 noundef 4, ptr noundef %365, i8 noundef zeroext 28, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %413 = icmp eq ptr %412, null
  %414 = icmp ugt ptr %412, inttoptr (i32 -4096 to ptr)
  %415 = or i1 %413, %414
  br i1 %415, label %419, label %416

416:                                              ; preds = %410
  %417 = getelementptr inbounds %struct.clk_hw, ptr %412, i32 0, i32 1
  %418 = load ptr, ptr %417, align 4
  br label %419

419:                                              ; preds = %416, %410
  %420 = phi ptr [ %418, %416 ], [ %412, %410 ]
  store ptr %420, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 195), align 4
  %421 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.202, ptr noundef nonnull @.str.23, i32 noundef 4, ptr noundef %365, i8 noundef zeroext 26, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %422 = icmp eq ptr %421, null
  %423 = icmp ugt ptr %421, inttoptr (i32 -4096 to ptr)
  %424 = or i1 %422, %423
  br i1 %424, label %428, label %425

425:                                              ; preds = %419
  %426 = getelementptr inbounds %struct.clk_hw, ptr %421, i32 0, i32 1
  %427 = load ptr, ptr %426, align 4
  br label %428

428:                                              ; preds = %425, %419
  %429 = phi ptr [ %427, %425 ], [ %421, %419 ]
  store ptr %429, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 196), align 4
  %430 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.203, i8 noundef zeroext 4, ptr noundef nonnull @standard_pll_sel, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %97, i8 noundef zeroext 22, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %431 = icmp eq ptr %430, null
  %432 = icmp ugt ptr %430, inttoptr (i32 -4096 to ptr)
  %433 = or i1 %431, %432
  br i1 %433, label %437, label %434

434:                                              ; preds = %428
  %435 = getelementptr inbounds %struct.clk_hw, ptr %430, i32 0, i32 1
  %436 = load ptr, ptr %435, align 4
  br label %437

437:                                              ; preds = %434, %428
  %438 = phi ptr [ %436, %434 ], [ %430, %428 ]
  store ptr %438, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 198), align 4
  %439 = getelementptr i8, ptr %54, i32 64
  %440 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.204, ptr noundef nonnull @.str.203, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %439, i8 noundef zeroext 6, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %441 = icmp eq ptr %440, null
  %442 = icmp ugt ptr %440, inttoptr (i32 -4096 to ptr)
  %443 = or i1 %441, %442
  br i1 %443, label %447, label %444

444:                                              ; preds = %437
  %445 = getelementptr inbounds %struct.clk_hw, ptr %440, i32 0, i32 1
  %446 = load ptr, ptr %445, align 4
  br label %447

447:                                              ; preds = %444, %437
  %448 = phi ptr [ %446, %444 ], [ %440, %437 ]
  store ptr %448, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 197), align 4
  %449 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.205, ptr noundef nonnull @.str.204, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %439, i8 noundef zeroext 0, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %450 = icmp eq ptr %449, null
  %451 = icmp ugt ptr %449, inttoptr (i32 -4096 to ptr)
  %452 = or i1 %450, %451
  br i1 %452, label %456, label %453

453:                                              ; preds = %447
  %454 = getelementptr inbounds %struct.clk_hw, ptr %449, i32 0, i32 1
  %455 = load ptr, ptr %454, align 4
  br label %456

456:                                              ; preds = %453, %447
  %457 = phi ptr [ %455, %453 ], [ %449, %447 ]
  store ptr %457, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 199), align 4
  %458 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.206, ptr noundef nonnull @.str.205, i32 noundef 4, ptr noundef %153, i8 noundef zeroext 4, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %459 = icmp eq ptr %458, null
  %460 = icmp ugt ptr %458, inttoptr (i32 -4096 to ptr)
  %461 = or i1 %459, %460
  br i1 %461, label %465, label %462

462:                                              ; preds = %456
  %463 = getelementptr inbounds %struct.clk_hw, ptr %458, i32 0, i32 1
  %464 = load ptr, ptr %463, align 4
  br label %465

465:                                              ; preds = %462, %456
  %466 = phi ptr [ %464, %462 ], [ %458, %456 ]
  store ptr %466, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 200), align 4
  %467 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.207, i8 noundef zeroext 4, ptr noundef nonnull @ieee1588_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %97, i8 noundef zeroext 14, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %468 = icmp eq ptr %467, null
  %469 = icmp ugt ptr %467, inttoptr (i32 -4096 to ptr)
  %470 = or i1 %468, %469
  br i1 %470, label %474, label %471

471:                                              ; preds = %465
  %472 = getelementptr inbounds %struct.clk_hw, ptr %467, i32 0, i32 1
  %473 = load ptr, ptr %472, align 4
  br label %474

474:                                              ; preds = %471, %465
  %475 = phi ptr [ %473, %471 ], [ %467, %465 ]
  store ptr %475, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 202), align 4
  %476 = getelementptr i8, ptr %54, i32 56
  %477 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.208, ptr noundef nonnull @.str.207, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %476, i8 noundef zeroext 6, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %478 = icmp eq ptr %477, null
  %479 = icmp ugt ptr %477, inttoptr (i32 -4096 to ptr)
  %480 = or i1 %478, %479
  br i1 %480, label %484, label %481

481:                                              ; preds = %474
  %482 = getelementptr inbounds %struct.clk_hw, ptr %477, i32 0, i32 1
  %483 = load ptr, ptr %482, align 4
  br label %484

484:                                              ; preds = %481, %474
  %485 = phi ptr [ %483, %481 ], [ %477, %474 ]
  store ptr %485, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 201), align 4
  %486 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.209, ptr noundef nonnull @.str.208, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %476, i8 noundef zeroext 0, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %487 = icmp eq ptr %486, null
  %488 = icmp ugt ptr %486, inttoptr (i32 -4096 to ptr)
  %489 = or i1 %487, %488
  br i1 %489, label %493, label %490

490:                                              ; preds = %484
  %491 = getelementptr inbounds %struct.clk_hw, ptr %486, i32 0, i32 1
  %492 = load ptr, ptr %491, align 4
  br label %493

493:                                              ; preds = %490, %484
  %494 = phi ptr [ %492, %490 ], [ %486, %484 ]
  store ptr %494, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 203), align 4
  %495 = getelementptr i8, ptr %54, i32 132
  %496 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.210, ptr noundef nonnull @.str.209, i32 noundef 4, ptr noundef %495, i8 noundef zeroext 6, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %497 = icmp eq ptr %496, null
  %498 = icmp ugt ptr %496, inttoptr (i32 -4096 to ptr)
  %499 = or i1 %497, %498
  br i1 %499, label %503, label %500

500:                                              ; preds = %493
  %501 = getelementptr inbounds %struct.clk_hw, ptr %496, i32 0, i32 1
  %502 = load ptr, ptr %501, align 4
  br label %503

503:                                              ; preds = %500, %493
  %504 = phi ptr [ %502, %500 ], [ %496, %493 ]
  store ptr %504, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 204), align 4
  %505 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, i32 noundef 4, ptr noundef %495, i8 noundef zeroext 8, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %506 = icmp eq ptr %505, null
  %507 = icmp ugt ptr %505, inttoptr (i32 -4096 to ptr)
  %508 = or i1 %506, %507
  br i1 %508, label %512, label %509

509:                                              ; preds = %503
  %510 = getelementptr inbounds %struct.clk_hw, ptr %505, i32 0, i32 1
  %511 = load ptr, ptr %510, align 4
  br label %512

512:                                              ; preds = %509, %503
  %513 = phi ptr [ %511, %509 ], [ %505, %503 ]
  store ptr %513, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 65), align 4
  %514 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, i32 noundef 4, ptr noundef %495, i8 noundef zeroext 10, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %515 = icmp eq ptr %514, null
  %516 = icmp ugt ptr %514, inttoptr (i32 -4096 to ptr)
  %517 = or i1 %515, %516
  br i1 %517, label %521, label %518

518:                                              ; preds = %512
  %519 = getelementptr inbounds %struct.clk_hw, ptr %514, i32 0, i32 1
  %520 = load ptr, ptr %519, align 4
  br label %521

521:                                              ; preds = %518, %512
  %522 = phi ptr [ %520, %518 ], [ %514, %512 ]
  store ptr %522, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 66), align 4
  %523 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.23, i32 noundef 4, ptr noundef %495, i8 noundef zeroext 12, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %524 = icmp eq ptr %523, null
  %525 = icmp ugt ptr %523, inttoptr (i32 -4096 to ptr)
  %526 = or i1 %524, %525
  br i1 %526, label %530, label %527

527:                                              ; preds = %521
  %528 = getelementptr inbounds %struct.clk_hw, ptr %523, i32 0, i32 1
  %529 = load ptr, ptr %528, align 4
  br label %530

530:                                              ; preds = %527, %521
  %531 = phi ptr [ %529, %527 ], [ %523, %521 ]
  store ptr %531, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 67), align 4
  %532 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.25, i32 noundef 4, ptr noundef %495, i8 noundef zeroext 14, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %533 = icmp eq ptr %532, null
  %534 = icmp ugt ptr %532, inttoptr (i32 -4096 to ptr)
  %535 = or i1 %533, %534
  br i1 %535, label %539, label %536

536:                                              ; preds = %530
  %537 = getelementptr inbounds %struct.clk_hw, ptr %532, i32 0, i32 1
  %538 = load ptr, ptr %537, align 4
  br label %539

539:                                              ; preds = %536, %530
  %540 = phi ptr [ %538, %536 ], [ %532, %530 ]
  store ptr %540, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 68), align 4
  %541 = getelementptr i8, ptr %54, i32 96
  %542 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.28, i8 noundef zeroext 16, ptr noundef nonnull @mx53_cko1_sel, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %541, i8 noundef zeroext 0, i32 noundef 15, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %543 = icmp eq ptr %542, null
  %544 = icmp ugt ptr %542, inttoptr (i32 -4096 to ptr)
  %545 = or i1 %543, %544
  br i1 %545, label %549, label %546

546:                                              ; preds = %539
  %547 = getelementptr inbounds %struct.clk_hw, ptr %542, i32 0, i32 1
  %548 = load ptr, ptr %547, align 4
  br label %549

549:                                              ; preds = %546, %539
  %550 = phi ptr [ %548, %546 ], [ %542, %539 ]
  store ptr %550, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 165), align 4
  %551 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.28, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %541, i8 noundef zeroext 4, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %552 = icmp eq ptr %551, null
  %553 = icmp ugt ptr %551, inttoptr (i32 -4096 to ptr)
  %554 = or i1 %552, %553
  br i1 %554, label %558, label %555

555:                                              ; preds = %549
  %556 = getelementptr inbounds %struct.clk_hw, ptr %551, i32 0, i32 1
  %557 = load ptr, ptr %556, align 4
  br label %558

558:                                              ; preds = %555, %549
  %559 = phi ptr [ %557, %555 ], [ %551, %549 ]
  store ptr %559, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 166), align 4
  %560 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.29, i32 noundef 4, ptr noundef %541, i8 noundef zeroext 7, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %561 = icmp eq ptr %560, null
  %562 = icmp ugt ptr %560, inttoptr (i32 -4096 to ptr)
  %563 = or i1 %561, %562
  br i1 %563, label %567, label %564

564:                                              ; preds = %558
  %565 = getelementptr inbounds %struct.clk_hw, ptr %560, i32 0, i32 1
  %566 = load ptr, ptr %565, align 4
  br label %567

567:                                              ; preds = %564, %558
  %568 = phi ptr [ %566, %564 ], [ %560, %558 ]
  store ptr %568, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 167), align 4
  %569 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.31, i8 noundef zeroext 32, ptr noundef nonnull @mx53_cko2_sel, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %541, i8 noundef zeroext 16, i32 noundef 31, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %570 = icmp eq ptr %569, null
  %571 = icmp ugt ptr %569, inttoptr (i32 -4096 to ptr)
  %572 = or i1 %570, %571
  br i1 %572, label %576, label %573

573:                                              ; preds = %567
  %574 = getelementptr inbounds %struct.clk_hw, ptr %569, i32 0, i32 1
  %575 = load ptr, ptr %574, align 4
  br label %576

576:                                              ; preds = %573, %567
  %577 = phi ptr [ %575, %573 ], [ %569, %567 ]
  store ptr %577, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 168), align 4
  %578 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.31, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %541, i8 noundef zeroext 21, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %579 = icmp eq ptr %578, null
  %580 = icmp ugt ptr %578, inttoptr (i32 -4096 to ptr)
  %581 = or i1 %579, %580
  br i1 %581, label %585, label %582

582:                                              ; preds = %576
  %583 = getelementptr inbounds %struct.clk_hw, ptr %578, i32 0, i32 1
  %584 = load ptr, ptr %583, align 4
  br label %585

585:                                              ; preds = %582, %576
  %586 = phi ptr [ %584, %582 ], [ %578, %576 ]
  store ptr %586, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 169), align 4
  %587 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.32, i32 noundef 4, ptr noundef %541, i8 noundef zeroext 24, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %588 = icmp eq ptr %587, null
  %589 = icmp ugt ptr %587, inttoptr (i32 -4096 to ptr)
  %590 = or i1 %588, %589
  br i1 %590, label %594, label %591

591:                                              ; preds = %585
  %592 = getelementptr inbounds %struct.clk_hw, ptr %587, i32 0, i32 1
  %593 = load ptr, ptr %592, align 4
  br label %594

594:                                              ; preds = %591, %585
  %595 = phi ptr [ %593, %591 ], [ %587, %585 ]
  store ptr %595, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 170), align 4
  %596 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.159, i8 noundef zeroext 4, ptr noundef nonnull @mx53_spdif_xtal_sel, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %190, i8 noundef zeroext 2, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %597 = icmp eq ptr %596, null
  %598 = icmp ugt ptr %596, inttoptr (i32 -4096 to ptr)
  %599 = or i1 %597, %598
  br i1 %599, label %603, label %600

600:                                              ; preds = %594
  %601 = getelementptr inbounds %struct.clk_hw, ptr %596, i32 0, i32 1
  %602 = load ptr, ptr %601, align 4
  br label %603

603:                                              ; preds = %600, %594
  %604 = phi ptr [ %602, %600 ], [ %596, %594 ]
  store ptr %604, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 174), align 4
  %605 = load ptr, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 24), align 4
  %606 = load ptr, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 190), align 4
  %607 = load ptr, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 112), align 4
  %608 = load ptr, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 189), align 4
  %609 = tail call ptr @imx_clk_hw_cpu(ptr noundef nonnull @.str.211, ptr noundef nonnull @.str.70, ptr noundef %605, ptr noundef %606, ptr noundef %607, ptr noundef %608) #2
  %610 = icmp eq ptr %609, null
  %611 = icmp ugt ptr %609, inttoptr (i32 -4096 to ptr)
  %612 = or i1 %610, %611
  br i1 %612, label %616, label %613

613:                                              ; preds = %603
  %614 = getelementptr inbounds %struct.clk_hw, ptr %609, i32 0, i32 1
  %615 = load ptr, ptr %614, align 4
  br label %616

616:                                              ; preds = %613, %603
  %617 = phi ptr [ %615, %613 ], [ %609, %603 ]
  store ptr %617, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 191), align 4
  tail call void @imx_check_clocks(ptr noundef nonnull @clk, i32 noundef 206) #2
  store ptr @clk, ptr @clk_data, align 4
  store i32 206, ptr getelementptr inbounds (%struct.clk_onecell_data, ptr @clk_data, i32 0, i32 1), align 4
  %618 = tail call i32 @of_clk_add_provider(ptr noundef %0, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef nonnull @clk_data) #2
  %619 = load ptr, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 100), align 4
  %620 = load ptr, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 113), align 4
  %621 = tail call i32 @clk_set_parent(ptr noundef %619, ptr noundef %620) #2
  %622 = load ptr, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 101), align 4
  %623 = load ptr, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 113), align 4
  %624 = tail call i32 @clk_set_parent(ptr noundef %622, ptr noundef %623) #2
  %625 = load ptr, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 102), align 4
  %626 = tail call i32 @clk_set_rate(ptr noundef %625, i32 noundef 200000000) #2
  %627 = load ptr, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 103), align 4
  %628 = tail call i32 @clk_set_rate(ptr noundef %627, i32 noundef 200000000) #2
  %629 = load ptr, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 156), align 4
  %630 = load ptr, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 89), align 4
  %631 = tail call i32 @clk_set_parent(ptr noundef %629, ptr noundef %630) #2
  %632 = load ptr, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 189), align 4
  %633 = load ptr, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 89), align 4
  %634 = tail call i32 @clk_set_parent(ptr noundef %632, ptr noundef %633) #2
  %635 = load ptr, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 107), align 4
  %636 = tail call i32 @clk_prepare(ptr noundef %635) #2
  %637 = icmp eq i32 %636, 0
  br i1 %637, label %638, label %642

638:                                              ; preds = %616
  %639 = tail call i32 @clk_enable(ptr noundef %635) #2
  %640 = icmp eq i32 %639, 0
  br i1 %640, label %642, label %641

641:                                              ; preds = %638
  tail call void @clk_unprepare(ptr noundef %635) #2
  br label %642

642:                                              ; preds = %641, %638, %616
  %643 = tail call i32 @mx53_revision() #2
  tail call void @imx_print_silicon_rev(ptr noundef nonnull @.str.212, i32 noundef %643) #2
  %644 = load ptr, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 107), align 4
  tail call void @clk_disable(ptr noundef %644) #2
  tail call void @clk_unprepare(ptr noundef %644) #2
  %645 = load ptr, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 43), align 4
  %646 = tail call i32 @clk_round_rate(ptr noundef %645, i32 noundef 54000000) #2
  %647 = load ptr, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 43), align 4
  %648 = tail call i32 @clk_set_rate(ptr noundef %647, i32 noundef %646) #2
  tail call void @imx_register_uart_clocks(i32 noundef 5) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @imx_clk_hw_pllv2(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @mx5_clocks_common_init(ptr noundef %0) unnamed_addr #0 section ".init.text" {
  %2 = tail call ptr @__clk_hw_register_fixed_rate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.35, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #2
  %3 = icmp eq ptr %2, null
  %4 = icmp ugt ptr %2, inttoptr (i32 -4096 to ptr)
  %5 = or i1 %3, %4
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.clk_hw, ptr %2, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  br label %9

9:                                                ; preds = %6, %1
  %10 = phi ptr [ %8, %6 ], [ %2, %1 ]
  store ptr %10, ptr @clk, align 4
  %11 = tail call ptr @imx_obtain_fixed_clock(ptr noundef nonnull @.str.36, i32 noundef 0) #2
  store ptr %11, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 1), align 4
  %12 = tail call ptr @imx_obtain_fixed_clock(ptr noundef nonnull @.str.2, i32 noundef 0) #2
  store ptr %12, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 2), align 4
  %13 = tail call ptr @imx_obtain_fixed_clock(ptr noundef nonnull @.str.37, i32 noundef 0) #2
  store ptr %13, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 3), align 4
  %14 = tail call ptr @imx_obtain_fixed_clock(ptr noundef nonnull @.str.38, i32 noundef 0) #2
  store ptr %14, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 4), align 4
  %15 = getelementptr i8, ptr %0, i32 24
  %16 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.39, i8 noundef zeroext 2, ptr noundef nonnull @per_lp_apm_sel, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %15, i8 noundef zeroext 1, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %17 = icmp eq ptr %16, null
  %18 = icmp ugt ptr %16, inttoptr (i32 -4096 to ptr)
  %19 = or i1 %17, %18
  br i1 %19, label %23, label %20

20:                                               ; preds = %9
  %21 = getelementptr inbounds %struct.clk_hw, ptr %16, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  br label %23

23:                                               ; preds = %20, %9
  %24 = phi ptr [ %22, %20 ], [ %16, %9 ]
  store ptr %24, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 126), align 4
  %25 = getelementptr i8, ptr %0, i32 20
  %26 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.39, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %25, i8 noundef zeroext 6, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %27 = icmp eq ptr %26, null
  %28 = icmp ugt ptr %26, inttoptr (i32 -4096 to ptr)
  %29 = or i1 %27, %28
  br i1 %29, label %33, label %30

30:                                               ; preds = %23
  %31 = getelementptr inbounds %struct.clk_hw, ptr %26, i32 0, i32 1
  %32 = load ptr, ptr %31, align 4
  br label %33

33:                                               ; preds = %30, %23
  %34 = phi ptr [ %32, %30 ], [ %26, %23 ]
  store ptr %34, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 127), align 4
  %35 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.40, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %25, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %36 = icmp eq ptr %35, null
  %37 = icmp ugt ptr %35, inttoptr (i32 -4096 to ptr)
  %38 = or i1 %36, %37
  br i1 %38, label %42, label %39

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.clk_hw, ptr %35, i32 0, i32 1
  %41 = load ptr, ptr %40, align 4
  br label %42

42:                                               ; preds = %39, %33
  %43 = phi ptr [ %41, %39 ], [ %35, %33 ]
  store ptr %43, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 128), align 4
  %44 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.41, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %25, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %45 = icmp eq ptr %44, null
  %46 = icmp ugt ptr %44, inttoptr (i32 -4096 to ptr)
  %47 = or i1 %45, %46
  br i1 %47, label %51, label %48

48:                                               ; preds = %42
  %49 = getelementptr inbounds %struct.clk_hw, ptr %44, i32 0, i32 1
  %50 = load ptr, ptr %49, align 4
  br label %51

51:                                               ; preds = %48, %42
  %52 = phi ptr [ %50, %48 ], [ %44, %42 ]
  store ptr %52, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 129), align 4
  %53 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.21, i8 noundef zeroext 2, ptr noundef nonnull @per_root_sel, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %15, i8 noundef zeroext 0, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %54 = icmp eq ptr %53, null
  %55 = icmp ugt ptr %53, inttoptr (i32 -4096 to ptr)
  %56 = or i1 %54, %55
  br i1 %56, label %60, label %57

57:                                               ; preds = %51
  %58 = getelementptr inbounds %struct.clk_hw, ptr %53, i32 0, i32 1
  %59 = load ptr, ptr %58, align 4
  br label %60

60:                                               ; preds = %57, %51
  %61 = phi ptr [ %59, %57 ], [ %53, %51 ]
  store ptr %61, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 130), align 4
  %62 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.5, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %25, i8 noundef zeroext 10, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %63 = icmp eq ptr %62, null
  %64 = icmp ugt ptr %62, inttoptr (i32 -4096 to ptr)
  %65 = or i1 %63, %64
  br i1 %65, label %69, label %66

66:                                               ; preds = %60
  %67 = getelementptr inbounds %struct.clk_hw, ptr %62, i32 0, i32 1
  %68 = load ptr, ptr %67, align 4
  br label %69

69:                                               ; preds = %66, %60
  %70 = phi ptr [ %68, %66 ], [ %62, %60 ]
  store ptr %70, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 5), align 4
  %71 = getelementptr i8, ptr %0, i32 104
  %72 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.43, i32 noundef 2052, ptr noundef %71, i8 noundef zeroext 28, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %73 = icmp eq ptr %72, null
  %74 = icmp ugt ptr %72, inttoptr (i32 -4096 to ptr)
  %75 = or i1 %73, %74
  br i1 %75, label %79, label %76

76:                                               ; preds = %69
  %77 = getelementptr inbounds %struct.clk_hw, ptr %72, i32 0, i32 1
  %78 = load ptr, ptr %77, align 4
  br label %79

79:                                               ; preds = %76, %69
  %80 = phi ptr [ %78, %76 ], [ %72, %69 ]
  store ptr %80, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 92), align 4
  %81 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.43, i32 noundef 2052, ptr noundef %71, i8 noundef zeroext 24, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %82 = icmp eq ptr %81, null
  %83 = icmp ugt ptr %81, inttoptr (i32 -4096 to ptr)
  %84 = or i1 %82, %83
  br i1 %84, label %88, label %85

85:                                               ; preds = %79
  %86 = getelementptr inbounds %struct.clk_hw, ptr %81, i32 0, i32 1
  %87 = load ptr, ptr %86, align 4
  br label %88

88:                                               ; preds = %85, %79
  %89 = phi ptr [ %87, %85 ], [ %81, %79 ]
  store ptr %89, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 93), align 4
  %90 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.43, i32 noundef 2052, ptr noundef %71, i8 noundef zeroext 26, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %91 = icmp eq ptr %90, null
  %92 = icmp ugt ptr %90, inttoptr (i32 -4096 to ptr)
  %93 = or i1 %91, %92
  br i1 %93, label %97, label %94

94:                                               ; preds = %88
  %95 = getelementptr inbounds %struct.clk_hw, ptr %90, i32 0, i32 1
  %96 = load ptr, ptr %95, align 4
  br label %97

97:                                               ; preds = %94, %88
  %98 = phi ptr [ %96, %94 ], [ %90, %88 ]
  store ptr %98, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 94), align 4
  %99 = getelementptr i8, ptr %0, i32 108
  %100 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.43, i32 noundef 2052, ptr noundef %99, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %101 = icmp eq ptr %100, null
  %102 = icmp ugt ptr %100, inttoptr (i32 -4096 to ptr)
  %103 = or i1 %101, %102
  br i1 %103, label %107, label %104

104:                                              ; preds = %97
  %105 = getelementptr inbounds %struct.clk_hw, ptr %100, i32 0, i32 1
  %106 = load ptr, ptr %105, align 4
  br label %107

107:                                              ; preds = %104, %97
  %108 = phi ptr [ %106, %104 ], [ %100, %97 ]
  store ptr %108, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 95), align 4
  %109 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.43, i32 noundef 2052, ptr noundef %99, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %110 = icmp eq ptr %109, null
  %111 = icmp ugt ptr %109, inttoptr (i32 -4096 to ptr)
  %112 = or i1 %110, %111
  br i1 %112, label %116, label %113

113:                                              ; preds = %107
  %114 = getelementptr inbounds %struct.clk_hw, ptr %109, i32 0, i32 1
  %115 = load ptr, ptr %114, align 4
  br label %116

116:                                              ; preds = %113, %107
  %117 = phi ptr [ %115, %113 ], [ %109, %107 ]
  store ptr %117, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 96), align 4
  %118 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.43, i32 noundef 2052, ptr noundef %99, i8 noundef zeroext 4, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %119 = icmp eq ptr %118, null
  %120 = icmp ugt ptr %118, inttoptr (i32 -4096 to ptr)
  %121 = or i1 %119, %120
  br i1 %121, label %125, label %122

122:                                              ; preds = %116
  %123 = getelementptr inbounds %struct.clk_hw, ptr %118, i32 0, i32 1
  %124 = load ptr, ptr %123, align 4
  br label %125

125:                                              ; preds = %122, %116
  %126 = phi ptr [ %124, %122 ], [ %118, %116 ]
  store ptr %126, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 97), align 4
  %127 = getelementptr i8, ptr %0, i32 124
  %128 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.23, i32 noundef 2052, ptr noundef %127, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %129 = icmp eq ptr %128, null
  %130 = icmp ugt ptr %128, inttoptr (i32 -4096 to ptr)
  %131 = or i1 %129, %130
  br i1 %131, label %135, label %132

132:                                              ; preds = %125
  %133 = getelementptr inbounds %struct.clk_hw, ptr %128, i32 0, i32 1
  %134 = load ptr, ptr %133, align 4
  br label %135

135:                                              ; preds = %132, %125
  %136 = phi ptr [ %134, %132 ], [ %128, %125 ]
  store ptr %136, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 98), align 4
  %137 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.43, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %25, i8 noundef zeroext 8, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %138 = icmp eq ptr %137, null
  %139 = icmp ugt ptr %137, inttoptr (i32 -4096 to ptr)
  %140 = or i1 %138, %139
  br i1 %140, label %144, label %141

141:                                              ; preds = %135
  %142 = getelementptr inbounds %struct.clk_hw, ptr %137, i32 0, i32 1
  %143 = load ptr, ptr %142, align 4
  br label %144

144:                                              ; preds = %141, %135
  %145 = phi ptr [ %143, %141 ], [ %137, %135 ]
  store ptr %145, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 6), align 4
  %146 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.5, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %25, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %147 = icmp eq ptr %146, null
  %148 = icmp ugt ptr %146, inttoptr (i32 -4096 to ptr)
  %149 = or i1 %147, %148
  br i1 %149, label %153, label %150

150:                                              ; preds = %144
  %151 = getelementptr inbounds %struct.clk_hw, ptr %146, i32 0, i32 1
  %152 = load ptr, ptr %151, align 4
  br label %153

153:                                              ; preds = %150, %144
  %154 = phi ptr [ %152, %150 ], [ %146, %144 ]
  store ptr %154, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 7), align 4
  %155 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.5, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %25, i8 noundef zeroext 19, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %156 = icmp eq ptr %155, null
  %157 = icmp ugt ptr %155, inttoptr (i32 -4096 to ptr)
  %158 = or i1 %156, %157
  br i1 %158, label %162, label %159

159:                                              ; preds = %153
  %160 = getelementptr inbounds %struct.clk_hw, ptr %155, i32 0, i32 1
  %161 = load ptr, ptr %160, align 4
  br label %162

162:                                              ; preds = %159, %153
  %163 = phi ptr [ %161, %159 ], [ %155, %153 ]
  store ptr %163, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 8), align 4
  %164 = getelementptr i8, ptr %0, i32 28
  %165 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.53, i8 noundef zeroext 4, ptr noundef nonnull @standard_pll_sel, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %164, i8 noundef zeroext 24, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %166 = icmp eq ptr %165, null
  %167 = icmp ugt ptr %165, inttoptr (i32 -4096 to ptr)
  %168 = or i1 %166, %167
  br i1 %168, label %172, label %169

169:                                              ; preds = %162
  %170 = getelementptr inbounds %struct.clk_hw, ptr %165, i32 0, i32 1
  %171 = load ptr, ptr %170, align 4
  br label %172

172:                                              ; preds = %169, %162
  %173 = phi ptr [ %171, %169 ], [ %165, %162 ]
  store ptr %173, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 99), align 4
  %174 = getelementptr i8, ptr %0, i32 36
  %175 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.53, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %174, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %176 = icmp eq ptr %175, null
  %177 = icmp ugt ptr %175, inttoptr (i32 -4096 to ptr)
  %178 = or i1 %176, %177
  br i1 %178, label %182, label %179

179:                                              ; preds = %172
  %180 = getelementptr inbounds %struct.clk_hw, ptr %175, i32 0, i32 1
  %181 = load ptr, ptr %180, align 4
  br label %182

182:                                              ; preds = %179, %172
  %183 = phi ptr [ %181, %179 ], [ %175, %172 ]
  store ptr %183, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 9), align 4
  %184 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.54, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %174, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %185 = icmp eq ptr %184, null
  %186 = icmp ugt ptr %184, inttoptr (i32 -4096 to ptr)
  %187 = or i1 %185, %186
  br i1 %187, label %191, label %188

188:                                              ; preds = %182
  %189 = getelementptr inbounds %struct.clk_hw, ptr %184, i32 0, i32 1
  %190 = load ptr, ptr %189, align 4
  br label %191

191:                                              ; preds = %188, %182
  %192 = phi ptr [ %190, %188 ], [ %184, %182 ]
  store ptr %192, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 10), align 4
  %193 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.7, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %174, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %194 = icmp eq ptr %193, null
  %195 = icmp ugt ptr %193, inttoptr (i32 -4096 to ptr)
  %196 = or i1 %194, %195
  br i1 %196, label %200, label %197

197:                                              ; preds = %191
  %198 = getelementptr inbounds %struct.clk_hw, ptr %193, i32 0, i32 1
  %199 = load ptr, ptr %198, align 4
  br label %200

200:                                              ; preds = %197, %191
  %201 = phi ptr [ %199, %197 ], [ %193, %191 ]
  store ptr %201, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 11), align 4
  %202 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.55, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %174, i8 noundef zeroext 11, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %203 = icmp eq ptr %202, null
  %204 = icmp ugt ptr %202, inttoptr (i32 -4096 to ptr)
  %205 = or i1 %203, %204
  br i1 %205, label %209, label %206

206:                                              ; preds = %200
  %207 = getelementptr inbounds %struct.clk_hw, ptr %202, i32 0, i32 1
  %208 = load ptr, ptr %207, align 4
  br label %209

209:                                              ; preds = %206, %200
  %210 = phi ptr [ %208, %206 ], [ %202, %200 ]
  store ptr %210, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 102), align 4
  %211 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.8, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %174, i8 noundef zeroext 22, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %212 = icmp eq ptr %211, null
  %213 = icmp ugt ptr %211, inttoptr (i32 -4096 to ptr)
  %214 = or i1 %212, %213
  br i1 %214, label %218, label %215

215:                                              ; preds = %209
  %216 = getelementptr inbounds %struct.clk_hw, ptr %211, i32 0, i32 1
  %217 = load ptr, ptr %216, align 4
  br label %218

218:                                              ; preds = %215, %209
  %219 = phi ptr [ %217, %215 ], [ %211, %209 ]
  store ptr %219, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 12), align 4
  %220 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.56, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %174, i8 noundef zeroext 19, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %221 = icmp eq ptr %220, null
  %222 = icmp ugt ptr %220, inttoptr (i32 -4096 to ptr)
  %223 = or i1 %221, %222
  br i1 %223, label %227, label %224

224:                                              ; preds = %218
  %225 = getelementptr inbounds %struct.clk_hw, ptr %220, i32 0, i32 1
  %226 = load ptr, ptr %225, align 4
  br label %227

227:                                              ; preds = %224, %218
  %228 = phi ptr [ %226, %224 ], [ %220, %218 ]
  store ptr %228, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 103), align 4
  %229 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.57, i8 noundef zeroext 2, ptr noundef nonnull @emi_slow_sel, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %25, i8 noundef zeroext 26, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %230 = icmp eq ptr %229, null
  %231 = icmp ugt ptr %229, inttoptr (i32 -4096 to ptr)
  %232 = or i1 %230, %231
  br i1 %232, label %236, label %233

233:                                              ; preds = %227
  %234 = getelementptr inbounds %struct.clk_hw, ptr %229, i32 0, i32 1
  %235 = load ptr, ptr %234, align 4
  br label %236

236:                                              ; preds = %233, %227
  %237 = phi ptr [ %235, %233 ], [ %229, %227 ]
  store ptr %237, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 15), align 4
  %238 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.57, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %25, i8 noundef zeroext 22, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %239 = icmp eq ptr %238, null
  %240 = icmp ugt ptr %238, inttoptr (i32 -4096 to ptr)
  %241 = or i1 %239, %240
  br i1 %241, label %245, label %242

242:                                              ; preds = %236
  %243 = getelementptr inbounds %struct.clk_hw, ptr %238, i32 0, i32 1
  %244 = load ptr, ptr %243, align 4
  br label %245

245:                                              ; preds = %242, %236
  %246 = phi ptr [ %244, %242 ], [ %238, %236 ]
  store ptr %246, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 16), align 4
  %247 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.58, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %25, i8 noundef zeroext 13, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %248 = icmp eq ptr %247, null
  %249 = icmp ugt ptr %247, inttoptr (i32 -4096 to ptr)
  %250 = or i1 %248, %249
  br i1 %250, label %254, label %251

251:                                              ; preds = %245
  %252 = getelementptr inbounds %struct.clk_hw, ptr %247, i32 0, i32 1
  %253 = load ptr, ptr %252, align 4
  br label %254

254:                                              ; preds = %251, %245
  %255 = phi ptr [ %253, %251 ], [ %247, %245 ]
  store ptr %255, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 17), align 4
  %256 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.60, i8 noundef zeroext 4, ptr noundef nonnull @standard_pll_sel, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %164, i8 noundef zeroext 4, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %257 = icmp eq ptr %256, null
  %258 = icmp ugt ptr %256, inttoptr (i32 -4096 to ptr)
  %259 = or i1 %257, %258
  br i1 %259, label %263, label %260

260:                                              ; preds = %254
  %261 = getelementptr inbounds %struct.clk_hw, ptr %256, i32 0, i32 1
  %262 = load ptr, ptr %261, align 4
  br label %263

263:                                              ; preds = %260, %254
  %264 = phi ptr [ %262, %260 ], [ %256, %254 ]
  store ptr %264, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 104), align 4
  %265 = getelementptr i8, ptr %0, i32 56
  %266 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.60, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %265, i8 noundef zeroext 25, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %267 = icmp eq ptr %266, null
  %268 = icmp ugt ptr %266, inttoptr (i32 -4096 to ptr)
  %269 = or i1 %267, %268
  br i1 %269, label %273, label %270

270:                                              ; preds = %263
  %271 = getelementptr inbounds %struct.clk_hw, ptr %266, i32 0, i32 1
  %272 = load ptr, ptr %271, align 4
  br label %273

273:                                              ; preds = %270, %263
  %274 = phi ptr [ %272, %270 ], [ %266, %263 ]
  store ptr %274, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 18), align 4
  %275 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.61, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %265, i8 noundef zeroext 19, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %276 = icmp eq ptr %275, null
  %277 = icmp ugt ptr %275, inttoptr (i32 -4096 to ptr)
  %278 = or i1 %276, %277
  br i1 %278, label %282, label %279

279:                                              ; preds = %273
  %280 = getelementptr inbounds %struct.clk_hw, ptr %275, i32 0, i32 1
  %281 = load ptr, ptr %280, align 4
  br label %282

282:                                              ; preds = %279, %273
  %283 = phi ptr [ %281, %279 ], [ %275, %273 ]
  store ptr %283, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 19), align 4
  %284 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.63, i8 noundef zeroext 4, ptr noundef nonnull @standard_pll_sel, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %164, i8 noundef zeroext 22, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %285 = icmp eq ptr %284, null
  %286 = icmp ugt ptr %284, inttoptr (i32 -4096 to ptr)
  %287 = or i1 %285, %286
  br i1 %287, label %291, label %288

288:                                              ; preds = %282
  %289 = getelementptr inbounds %struct.clk_hw, ptr %284, i32 0, i32 1
  %290 = load ptr, ptr %289, align 4
  br label %291

291:                                              ; preds = %288, %282
  %292 = phi ptr [ %290, %288 ], [ %284, %282 ]
  store ptr %292, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 105), align 4
  %293 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.63, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %174, i8 noundef zeroext 8, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %294 = icmp eq ptr %293, null
  %295 = icmp ugt ptr %293, inttoptr (i32 -4096 to ptr)
  %296 = or i1 %294, %295
  br i1 %296, label %300, label %297

297:                                              ; preds = %291
  %298 = getelementptr inbounds %struct.clk_hw, ptr %293, i32 0, i32 1
  %299 = load ptr, ptr %298, align 4
  br label %300

300:                                              ; preds = %297, %291
  %301 = phi ptr [ %299, %297 ], [ %293, %291 ]
  store ptr %301, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 20), align 4
  %302 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.64, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %174, i8 noundef zeroext 6, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %303 = icmp eq ptr %302, null
  %304 = icmp ugt ptr %302, inttoptr (i32 -4096 to ptr)
  %305 = or i1 %303, %304
  br i1 %305, label %309, label %306

306:                                              ; preds = %300
  %307 = getelementptr inbounds %struct.clk_hw, ptr %302, i32 0, i32 1
  %308 = load ptr, ptr %307, align 4
  br label %309

309:                                              ; preds = %306, %300
  %310 = phi ptr [ %308, %306 ], [ %302, %300 ]
  store ptr %310, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 21), align 4
  %311 = getelementptr i8, ptr %0, i32 48
  %312 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.4, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %311, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %313 = icmp eq ptr %312, null
  %314 = icmp ugt ptr %312, inttoptr (i32 -4096 to ptr)
  %315 = or i1 %313, %314
  br i1 %315, label %319, label %316

316:                                              ; preds = %309
  %317 = getelementptr inbounds %struct.clk_hw, ptr %312, i32 0, i32 1
  %318 = load ptr, ptr %317, align 4
  br label %319

319:                                              ; preds = %316, %309
  %320 = phi ptr [ %318, %316 ], [ %312, %309 ]
  store ptr %320, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 22), align 4
  %321 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.66, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %311, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %322 = icmp eq ptr %321, null
  %323 = icmp ugt ptr %321, inttoptr (i32 -4096 to ptr)
  %324 = or i1 %322, %323
  br i1 %324, label %328, label %325

325:                                              ; preds = %319
  %326 = getelementptr inbounds %struct.clk_hw, ptr %321, i32 0, i32 1
  %327 = load ptr, ptr %326, align 4
  br label %328

328:                                              ; preds = %325, %319
  %329 = phi ptr [ %327, %325 ], [ %321, %319 ]
  store ptr %329, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 23), align 4
  %330 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.18, i8 noundef zeroext 2, ptr noundef nonnull @usb_phy_sel_str, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %164, i8 noundef zeroext 26, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %331 = icmp eq ptr %330, null
  %332 = icmp ugt ptr %330, inttoptr (i32 -4096 to ptr)
  %333 = or i1 %331, %332
  br i1 %333, label %337, label %334

334:                                              ; preds = %328
  %335 = getelementptr inbounds %struct.clk_hw, ptr %330, i32 0, i32 1
  %336 = load ptr, ptr %335, align 4
  br label %337

337:                                              ; preds = %334, %328
  %338 = phi ptr [ %336, %334 ], [ %330, %328 ]
  store ptr %338, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 106), align 4
  %339 = getelementptr i8, ptr %0, i32 12
  %340 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.68, i8 noundef zeroext 1, ptr noundef nonnull @step_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %339, i8 noundef zeroext 7, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %341 = icmp eq ptr %340, null
  %342 = icmp ugt ptr %340, inttoptr (i32 -4096 to ptr)
  %343 = or i1 %341, %342
  br i1 %343, label %347, label %344

344:                                              ; preds = %337
  %345 = getelementptr inbounds %struct.clk_hw, ptr %340, i32 0, i32 1
  %346 = load ptr, ptr %345, align 4
  br label %347

347:                                              ; preds = %344, %337
  %348 = phi ptr [ %346, %344 ], [ %340, %337 ]
  store ptr %348, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 189), align 4
  %349 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.69, i8 noundef zeroext 2, ptr noundef nonnull @cpu_podf_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %339, i8 noundef zeroext 2, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %350 = icmp eq ptr %349, null
  %351 = icmp ugt ptr %349, inttoptr (i32 -4096 to ptr)
  %352 = or i1 %350, %351
  br i1 %352, label %356, label %353

353:                                              ; preds = %347
  %354 = getelementptr inbounds %struct.clk_hw, ptr %349, i32 0, i32 1
  %355 = load ptr, ptr %354, align 4
  br label %356

356:                                              ; preds = %353, %347
  %357 = phi ptr [ %355, %353 ], [ %349, %347 ]
  store ptr %357, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 190), align 4
  %358 = getelementptr i8, ptr %0, i32 16
  %359 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.69, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %358, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %360 = icmp eq ptr %359, null
  %361 = icmp ugt ptr %359, inttoptr (i32 -4096 to ptr)
  %362 = or i1 %360, %361
  br i1 %362, label %366, label %363

363:                                              ; preds = %356
  %364 = getelementptr inbounds %struct.clk_hw, ptr %359, i32 0, i32 1
  %365 = load ptr, ptr %364, align 4
  br label %366

366:                                              ; preds = %363, %356
  %367 = phi ptr [ %365, %363 ], [ %359, %356 ]
  store ptr %367, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 24), align 4
  %368 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.4, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %311, i8 noundef zeroext 6, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %369 = icmp eq ptr %368, null
  %370 = icmp ugt ptr %368, inttoptr (i32 -4096 to ptr)
  %371 = or i1 %369, %370
  br i1 %371, label %375, label %372

372:                                              ; preds = %366
  %373 = getelementptr inbounds %struct.clk_hw, ptr %368, i32 0, i32 1
  %374 = load ptr, ptr %373, align 4
  br label %375

375:                                              ; preds = %372, %366
  %376 = phi ptr [ %374, %372 ], [ %368, %366 ]
  store ptr %376, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 25), align 4
  %377 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.23, i32 noundef 4, ptr noundef %71, i8 noundef zeroext 30, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %378 = icmp eq ptr %377, null
  %379 = icmp ugt ptr %377, inttoptr (i32 -4096 to ptr)
  %380 = or i1 %378, %379
  br i1 %380, label %384, label %381

381:                                              ; preds = %375
  %382 = getelementptr inbounds %struct.clk_hw, ptr %377, i32 0, i32 1
  %383 = load ptr, ptr %382, align 4
  br label %384

384:                                              ; preds = %381, %375
  %385 = phi ptr [ %383, %381 ], [ %377, %375 ]
  store ptr %385, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 107), align 4
  %386 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.23, i32 noundef 4, ptr noundef %99, i8 noundef zeroext 6, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %387 = icmp eq ptr %386, null
  %388 = icmp ugt ptr %386, inttoptr (i32 -4096 to ptr)
  %389 = or i1 %387, %388
  br i1 %389, label %393, label %390

390:                                              ; preds = %384
  %391 = getelementptr inbounds %struct.clk_hw, ptr %386, i32 0, i32 1
  %392 = load ptr, ptr %391, align 4
  br label %393

393:                                              ; preds = %390, %384
  %394 = phi ptr [ %392, %390 ], [ %386, %384 ]
  store ptr %394, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 28), align 4
  %395 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.25, i32 noundef 4, ptr noundef %99, i8 noundef zeroext 8, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %396 = icmp eq ptr %395, null
  %397 = icmp ugt ptr %395, inttoptr (i32 -4096 to ptr)
  %398 = or i1 %396, %397
  br i1 %398, label %402, label %399

399:                                              ; preds = %393
  %400 = getelementptr inbounds %struct.clk_hw, ptr %395, i32 0, i32 1
  %401 = load ptr, ptr %400, align 4
  br label %402

402:                                              ; preds = %399, %393
  %403 = phi ptr [ %401, %399 ], [ %395, %393 ]
  store ptr %403, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 29), align 4
  %404 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.23, i32 noundef 4, ptr noundef %99, i8 noundef zeroext 10, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %405 = icmp eq ptr %404, null
  %406 = icmp ugt ptr %404, inttoptr (i32 -4096 to ptr)
  %407 = or i1 %405, %406
  br i1 %407, label %411, label %408

408:                                              ; preds = %402
  %409 = getelementptr inbounds %struct.clk_hw, ptr %404, i32 0, i32 1
  %410 = load ptr, ptr %409, align 4
  br label %411

411:                                              ; preds = %408, %402
  %412 = phi ptr [ %410, %408 ], [ %404, %402 ]
  store ptr %412, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 30), align 4
  %413 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.25, i32 noundef 4, ptr noundef %99, i8 noundef zeroext 12, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %414 = icmp eq ptr %413, null
  %415 = icmp ugt ptr %413, inttoptr (i32 -4096 to ptr)
  %416 = or i1 %414, %415
  br i1 %416, label %420, label %417

417:                                              ; preds = %411
  %418 = getelementptr inbounds %struct.clk_hw, ptr %413, i32 0, i32 1
  %419 = load ptr, ptr %418, align 4
  br label %420

420:                                              ; preds = %417, %411
  %421 = phi ptr [ %419, %417 ], [ %413, %411 ]
  store ptr %421, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 31), align 4
  %422 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.23, i32 noundef 4, ptr noundef %99, i8 noundef zeroext 14, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %423 = icmp eq ptr %422, null
  %424 = icmp ugt ptr %422, inttoptr (i32 -4096 to ptr)
  %425 = or i1 %423, %424
  br i1 %425, label %429, label %426

426:                                              ; preds = %420
  %427 = getelementptr inbounds %struct.clk_hw, ptr %422, i32 0, i32 1
  %428 = load ptr, ptr %427, align 4
  br label %429

429:                                              ; preds = %426, %420
  %430 = phi ptr [ %428, %426 ], [ %422, %420 ]
  store ptr %430, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 32), align 4
  %431 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.25, i32 noundef 4, ptr noundef %99, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %432 = icmp eq ptr %431, null
  %433 = icmp ugt ptr %431, inttoptr (i32 -4096 to ptr)
  %434 = or i1 %432, %433
  br i1 %434, label %438, label %435

435:                                              ; preds = %429
  %436 = getelementptr inbounds %struct.clk_hw, ptr %431, i32 0, i32 1
  %437 = load ptr, ptr %436, align 4
  br label %438

438:                                              ; preds = %435, %429
  %439 = phi ptr [ %437, %435 ], [ %431, %429 ]
  store ptr %439, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 33), align 4
  %440 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.21, i32 noundef 4, ptr noundef %99, i8 noundef zeroext 18, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %441 = icmp eq ptr %440, null
  %442 = icmp ugt ptr %440, inttoptr (i32 -4096 to ptr)
  %443 = or i1 %441, %442
  br i1 %443, label %447, label %444

444:                                              ; preds = %438
  %445 = getelementptr inbounds %struct.clk_hw, ptr %440, i32 0, i32 1
  %446 = load ptr, ptr %445, align 4
  br label %447

447:                                              ; preds = %444, %438
  %448 = phi ptr [ %446, %444 ], [ %440, %438 ]
  store ptr %448, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 34), align 4
  %449 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.21, i32 noundef 4, ptr noundef %99, i8 noundef zeroext 20, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %450 = icmp eq ptr %449, null
  %451 = icmp ugt ptr %449, inttoptr (i32 -4096 to ptr)
  %452 = or i1 %450, %451
  br i1 %452, label %456, label %453

453:                                              ; preds = %447
  %454 = getelementptr inbounds %struct.clk_hw, ptr %449, i32 0, i32 1
  %455 = load ptr, ptr %454, align 4
  br label %456

456:                                              ; preds = %453, %447
  %457 = phi ptr [ %455, %453 ], [ %449, %447 ]
  store ptr %457, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 35), align 4
  %458 = getelementptr i8, ptr %0, i32 112
  %459 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.23, i32 noundef 4, ptr noundef %458, i8 noundef zeroext 10, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %460 = icmp eq ptr %459, null
  %461 = icmp ugt ptr %459, inttoptr (i32 -4096 to ptr)
  %462 = or i1 %460, %461
  br i1 %462, label %466, label %463

463:                                              ; preds = %456
  %464 = getelementptr inbounds %struct.clk_hw, ptr %459, i32 0, i32 1
  %465 = load ptr, ptr %464, align 4
  br label %466

466:                                              ; preds = %463, %456
  %467 = phi ptr [ %465, %463 ], [ %459, %456 ]
  store ptr %467, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 37), align 4
  %468 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.21, i32 noundef 4, ptr noundef %458, i8 noundef zeroext 12, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %469 = icmp eq ptr %468, null
  %470 = icmp ugt ptr %468, inttoptr (i32 -4096 to ptr)
  %471 = or i1 %469, %470
  br i1 %471, label %475, label %472

472:                                              ; preds = %466
  %473 = getelementptr inbounds %struct.clk_hw, ptr %468, i32 0, i32 1
  %474 = load ptr, ptr %473, align 4
  br label %475

475:                                              ; preds = %472, %466
  %476 = phi ptr [ %474, %472 ], [ %468, %466 ]
  store ptr %476, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 38), align 4
  %477 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.23, i32 noundef 4, ptr noundef %458, i8 noundef zeroext 14, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %478 = icmp eq ptr %477, null
  %479 = icmp ugt ptr %477, inttoptr (i32 -4096 to ptr)
  %480 = or i1 %478, %479
  br i1 %480, label %484, label %481

481:                                              ; preds = %475
  %482 = getelementptr inbounds %struct.clk_hw, ptr %477, i32 0, i32 1
  %483 = load ptr, ptr %482, align 4
  br label %484

484:                                              ; preds = %481, %475
  %485 = phi ptr [ %483, %481 ], [ %477, %475 ]
  store ptr %485, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 39), align 4
  %486 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.21, i32 noundef 4, ptr noundef %458, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %487 = icmp eq ptr %486, null
  %488 = icmp ugt ptr %486, inttoptr (i32 -4096 to ptr)
  %489 = or i1 %487, %488
  br i1 %489, label %493, label %490

490:                                              ; preds = %484
  %491 = getelementptr inbounds %struct.clk_hw, ptr %486, i32 0, i32 1
  %492 = load ptr, ptr %491, align 4
  br label %493

493:                                              ; preds = %490, %484
  %494 = phi ptr [ %492, %490 ], [ %486, %484 ]
  store ptr %494, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 40), align 4
  %495 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.23, i32 noundef 4, ptr noundef %458, i8 noundef zeroext 18, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %496 = icmp eq ptr %495, null
  %497 = icmp ugt ptr %495, inttoptr (i32 -4096 to ptr)
  %498 = or i1 %496, %497
  br i1 %498, label %502, label %499

499:                                              ; preds = %493
  %500 = getelementptr inbounds %struct.clk_hw, ptr %495, i32 0, i32 1
  %501 = load ptr, ptr %500, align 4
  br label %502

502:                                              ; preds = %499, %493
  %503 = phi ptr [ %501, %499 ], [ %495, %493 ]
  store ptr %503, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 36), align 4
  %504 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.21, i32 noundef 4, ptr noundef %458, i8 noundef zeroext 20, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %505 = icmp eq ptr %504, null
  %506 = icmp ugt ptr %504, inttoptr (i32 -4096 to ptr)
  %507 = or i1 %505, %506
  br i1 %507, label %511, label %508

508:                                              ; preds = %502
  %509 = getelementptr inbounds %struct.clk_hw, ptr %504, i32 0, i32 1
  %510 = load ptr, ptr %509, align 4
  br label %511

511:                                              ; preds = %508, %502
  %512 = phi ptr [ %510, %508 ], [ %504, %502 ]
  store ptr %512, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 41), align 4
  %513 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.23, i32 noundef 4, ptr noundef %458, i8 noundef zeroext 24, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %514 = icmp eq ptr %513, null
  %515 = icmp ugt ptr %513, inttoptr (i32 -4096 to ptr)
  %516 = or i1 %514, %515
  br i1 %516, label %520, label %517

517:                                              ; preds = %511
  %518 = getelementptr inbounds %struct.clk_hw, ptr %513, i32 0, i32 1
  %519 = load ptr, ptr %518, align 4
  br label %520

520:                                              ; preds = %517, %511
  %521 = phi ptr [ %519, %517 ], [ %513, %511 ]
  store ptr %521, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 42), align 4
  %522 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.23, i32 noundef 4, ptr noundef %458, i8 noundef zeroext 26, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %523 = icmp eq ptr %522, null
  %524 = icmp ugt ptr %522, inttoptr (i32 -4096 to ptr)
  %525 = or i1 %523, %524
  br i1 %525, label %529, label %526

526:                                              ; preds = %520
  %527 = getelementptr inbounds %struct.clk_hw, ptr %522, i32 0, i32 1
  %528 = load ptr, ptr %527, align 4
  br label %529

529:                                              ; preds = %526, %520
  %530 = phi ptr [ %528, %526 ], [ %522, %520 ]
  store ptr %530, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 108), align 4
  %531 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.65, i32 noundef 4, ptr noundef %458, i8 noundef zeroext 28, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %532 = icmp eq ptr %531, null
  %533 = icmp ugt ptr %531, inttoptr (i32 -4096 to ptr)
  %534 = or i1 %532, %533
  br i1 %534, label %538, label %535

535:                                              ; preds = %529
  %536 = getelementptr inbounds %struct.clk_hw, ptr %531, i32 0, i32 1
  %537 = load ptr, ptr %536, align 4
  br label %538

538:                                              ; preds = %535, %529
  %539 = phi ptr [ %537, %535 ], [ %531, %529 ]
  store ptr %539, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 43), align 4
  %540 = getelementptr i8, ptr %0, i32 116
  %541 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.23, i32 noundef 4, ptr noundef %540, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %542 = icmp eq ptr %541, null
  %543 = icmp ugt ptr %541, inttoptr (i32 -4096 to ptr)
  %544 = or i1 %542, %543
  br i1 %544, label %548, label %545

545:                                              ; preds = %538
  %546 = getelementptr inbounds %struct.clk_hw, ptr %541, i32 0, i32 1
  %547 = load ptr, ptr %546, align 4
  br label %548

548:                                              ; preds = %545, %538
  %549 = phi ptr [ %547, %545 ], [ %541, %538 ]
  store ptr %549, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 44), align 4
  %550 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.91, ptr noundef nonnull @.str.23, i32 noundef 4, ptr noundef %540, i8 noundef zeroext 4, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %551 = icmp eq ptr %550, null
  %552 = icmp ugt ptr %550, inttoptr (i32 -4096 to ptr)
  %553 = or i1 %551, %552
  br i1 %553, label %557, label %554

554:                                              ; preds = %548
  %555 = getelementptr inbounds %struct.clk_hw, ptr %550, i32 0, i32 1
  %556 = load ptr, ptr %555, align 4
  br label %557

557:                                              ; preds = %554, %548
  %558 = phi ptr [ %556, %554 ], [ %550, %548 ]
  store ptr %558, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 45), align 4
  %559 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.92, ptr noundef nonnull @.str.23, i32 noundef 4, ptr noundef %540, i8 noundef zeroext 8, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %560 = icmp eq ptr %559, null
  %561 = icmp ugt ptr %559, inttoptr (i32 -4096 to ptr)
  %562 = or i1 %560, %561
  br i1 %562, label %566, label %563

563:                                              ; preds = %557
  %564 = getelementptr inbounds %struct.clk_hw, ptr %559, i32 0, i32 1
  %565 = load ptr, ptr %564, align 4
  br label %566

566:                                              ; preds = %563, %557
  %567 = phi ptr [ %565, %563 ], [ %559, %557 ]
  store ptr %567, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 46), align 4
  %568 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.23, i32 noundef 4, ptr noundef %540, i8 noundef zeroext 12, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %569 = icmp eq ptr %568, null
  %570 = icmp ugt ptr %568, inttoptr (i32 -4096 to ptr)
  %571 = or i1 %569, %570
  br i1 %571, label %575, label %572

572:                                              ; preds = %566
  %573 = getelementptr inbounds %struct.clk_hw, ptr %568, i32 0, i32 1
  %574 = load ptr, ptr %573, align 4
  br label %575

575:                                              ; preds = %572, %566
  %576 = phi ptr [ %574, %572 ], [ %568, %566 ]
  store ptr %576, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 47), align 4
  %577 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.23, i32 noundef 4, ptr noundef %540, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %578 = icmp eq ptr %577, null
  %579 = icmp ugt ptr %577, inttoptr (i32 -4096 to ptr)
  %580 = or i1 %578, %579
  br i1 %580, label %584, label %581

581:                                              ; preds = %575
  %582 = getelementptr inbounds %struct.clk_hw, ptr %577, i32 0, i32 1
  %583 = load ptr, ptr %582, align 4
  br label %584

584:                                              ; preds = %581, %575
  %585 = phi ptr [ %583, %581 ], [ %577, %575 ]
  store ptr %585, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 48), align 4
  %586 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.23, i32 noundef 4, ptr noundef %540, i8 noundef zeroext 20, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %587 = icmp eq ptr %586, null
  %588 = icmp ugt ptr %586, inttoptr (i32 -4096 to ptr)
  %589 = or i1 %587, %588
  br i1 %589, label %593, label %590

590:                                              ; preds = %584
  %591 = getelementptr inbounds %struct.clk_hw, ptr %586, i32 0, i32 1
  %592 = load ptr, ptr %591, align 4
  br label %593

593:                                              ; preds = %590, %584
  %594 = phi ptr [ %592, %590 ], [ %586, %584 ]
  store ptr %594, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 49), align 4
  %595 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.23, i32 noundef 4, ptr noundef %540, i8 noundef zeroext 24, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %596 = icmp eq ptr %595, null
  %597 = icmp ugt ptr %595, inttoptr (i32 -4096 to ptr)
  %598 = or i1 %596, %597
  br i1 %598, label %602, label %599

599:                                              ; preds = %593
  %600 = getelementptr inbounds %struct.clk_hw, ptr %595, i32 0, i32 1
  %601 = load ptr, ptr %600, align 4
  br label %602

602:                                              ; preds = %599, %593
  %603 = phi ptr [ %601, %599 ], [ %595, %593 ]
  store ptr %603, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 50), align 4
  %604 = getelementptr i8, ptr %0, i32 120
  %605 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.23, i32 noundef 4, ptr noundef %604, i8 noundef zeroext 18, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %606 = icmp eq ptr %605, null
  %607 = icmp ugt ptr %605, inttoptr (i32 -4096 to ptr)
  %608 = or i1 %606, %607
  br i1 %608, label %612, label %609

609:                                              ; preds = %602
  %610 = getelementptr inbounds %struct.clk_hw, ptr %605, i32 0, i32 1
  %611 = load ptr, ptr %610, align 4
  br label %612

612:                                              ; preds = %609, %602
  %613 = phi ptr [ %611, %609 ], [ %605, %602 ]
  store ptr %613, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 51), align 4
  %614 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.62, i32 noundef 4, ptr noundef %604, i8 noundef zeroext 20, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %615 = icmp eq ptr %614, null
  %616 = icmp ugt ptr %614, inttoptr (i32 -4096 to ptr)
  %617 = or i1 %615, %616
  br i1 %617, label %621, label %618

618:                                              ; preds = %612
  %619 = getelementptr inbounds %struct.clk_hw, ptr %614, i32 0, i32 1
  %620 = load ptr, ptr %619, align 4
  br label %621

621:                                              ; preds = %618, %612
  %622 = phi ptr [ %620, %618 ], [ %614, %612 ]
  store ptr %622, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 52), align 4
  %623 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.23, i32 noundef 4, ptr noundef %604, i8 noundef zeroext 22, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %624 = icmp eq ptr %623, null
  %625 = icmp ugt ptr %623, inttoptr (i32 -4096 to ptr)
  %626 = or i1 %624, %625
  br i1 %626, label %630, label %627

627:                                              ; preds = %621
  %628 = getelementptr inbounds %struct.clk_hw, ptr %623, i32 0, i32 1
  %629 = load ptr, ptr %628, align 4
  br label %630

630:                                              ; preds = %627, %621
  %631 = phi ptr [ %629, %627 ], [ %623, %621 ]
  store ptr %631, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 53), align 4
  %632 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.62, i32 noundef 4, ptr noundef %604, i8 noundef zeroext 24, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %633 = icmp eq ptr %632, null
  %634 = icmp ugt ptr %632, inttoptr (i32 -4096 to ptr)
  %635 = or i1 %633, %634
  br i1 %635, label %639, label %636

636:                                              ; preds = %630
  %637 = getelementptr inbounds %struct.clk_hw, ptr %632, i32 0, i32 1
  %638 = load ptr, ptr %637, align 4
  br label %639

639:                                              ; preds = %636, %630
  %640 = phi ptr [ %638, %636 ], [ %632, %630 ]
  store ptr %640, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 54), align 4
  %641 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.23, i32 noundef 4, ptr noundef %604, i8 noundef zeroext 26, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %642 = icmp eq ptr %641, null
  %643 = icmp ugt ptr %641, inttoptr (i32 -4096 to ptr)
  %644 = or i1 %642, %643
  br i1 %644, label %648, label %645

645:                                              ; preds = %639
  %646 = getelementptr inbounds %struct.clk_hw, ptr %641, i32 0, i32 1
  %647 = load ptr, ptr %646, align 4
  br label %648

648:                                              ; preds = %645, %639
  %649 = phi ptr [ %647, %645 ], [ %641, %639 ]
  store ptr %649, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 55), align 4
  %650 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.23, i32 noundef 4, ptr noundef %604, i8 noundef zeroext 30, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %651 = icmp eq ptr %650, null
  %652 = icmp ugt ptr %650, inttoptr (i32 -4096 to ptr)
  %653 = or i1 %651, %652
  br i1 %653, label %657, label %654

654:                                              ; preds = %648
  %655 = getelementptr inbounds %struct.clk_hw, ptr %650, i32 0, i32 1
  %656 = load ptr, ptr %655, align 4
  br label %657

657:                                              ; preds = %654, %648
  %658 = phi ptr [ %656, %654 ], [ %650, %648 ]
  store ptr %658, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 56), align 4
  %659 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.35, i32 noundef 2052, ptr noundef %127, i8 noundef zeroext 14, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %660 = icmp eq ptr %659, null
  %661 = icmp ugt ptr %659, inttoptr (i32 -4096 to ptr)
  %662 = or i1 %660, %661
  br i1 %662, label %666, label %663

663:                                              ; preds = %657
  %664 = getelementptr inbounds %struct.clk_hw, ptr %659, i32 0, i32 1
  %665 = load ptr, ptr %664, align 4
  br label %666

666:                                              ; preds = %663, %657
  %667 = phi ptr [ %665, %663 ], [ %659, %657 ]
  store ptr %667, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 109), align 4
  %668 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.104, ptr noundef nonnull @.str.58, i32 noundef 2052, ptr noundef %127, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %669 = icmp eq ptr %668, null
  %670 = icmp ugt ptr %668, inttoptr (i32 -4096 to ptr)
  %671 = or i1 %669, %670
  br i1 %671, label %675, label %672

672:                                              ; preds = %666
  %673 = getelementptr inbounds %struct.clk_hw, ptr %668, i32 0, i32 1
  %674 = load ptr, ptr %673, align 4
  br label %675

675:                                              ; preds = %672, %666
  %676 = phi ptr [ %674, %672 ], [ %668, %666 ]
  store ptr %676, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 57), align 4
  %677 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.105, i8 noundef zeroext 4, ptr noundef nonnull @ipu_sel, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %15, i8 noundef zeroext 6, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %678 = icmp eq ptr %677, null
  %679 = icmp ugt ptr %677, inttoptr (i32 -4096 to ptr)
  %680 = or i1 %678, %679
  br i1 %680, label %684, label %681

681:                                              ; preds = %675
  %682 = getelementptr inbounds %struct.clk_hw, ptr %677, i32 0, i32 1
  %683 = load ptr, ptr %682, align 4
  br label %684

684:                                              ; preds = %681, %675
  %685 = phi ptr [ %683, %681 ], [ %677, %675 ]
  store ptr %685, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 58), align 4
  %686 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.106, ptr noundef nonnull @.str.105, i32 noundef 4, ptr noundef %127, i8 noundef zeroext 10, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %687 = icmp eq ptr %686, null
  %688 = icmp ugt ptr %686, inttoptr (i32 -4096 to ptr)
  %689 = or i1 %687, %688
  br i1 %689, label %693, label %690

690:                                              ; preds = %684
  %691 = getelementptr inbounds %struct.clk_hw, ptr %686, i32 0, i32 1
  %692 = load ptr, ptr %691, align 4
  br label %693

693:                                              ; preds = %690, %684
  %694 = phi ptr [ %692, %690 ], [ %686, %684 ]
  store ptr %694, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 59), align 4
  %695 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.107, ptr noundef nonnull @.str.59, i32 noundef 4, ptr noundef %127, i8 noundef zeroext 20, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %696 = icmp eq ptr %695, null
  %697 = icmp ugt ptr %695, inttoptr (i32 -4096 to ptr)
  %698 = or i1 %696, %697
  br i1 %698, label %702, label %699

699:                                              ; preds = %693
  %700 = getelementptr inbounds %struct.clk_hw, ptr %695, i32 0, i32 1
  %701 = load ptr, ptr %700, align 4
  br label %702

702:                                              ; preds = %699, %693
  %703 = phi ptr [ %701, %699 ], [ %695, %693 ]
  store ptr %703, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 60), align 4
  %704 = getelementptr i8, ptr %0, i32 128
  %705 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.109, i32 noundef 4, ptr noundef %704, i8 noundef zeroext 10, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %706 = icmp eq ptr %705, null
  %707 = icmp ugt ptr %705, inttoptr (i32 -4096 to ptr)
  %708 = or i1 %706, %707
  br i1 %708, label %712, label %709

709:                                              ; preds = %702
  %710 = getelementptr inbounds %struct.clk_hw, ptr %705, i32 0, i32 1
  %711 = load ptr, ptr %710, align 4
  br label %712

712:                                              ; preds = %709, %702
  %713 = phi ptr [ %711, %709 ], [ %705, %702 ]
  store ptr %713, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 110), align 4
  %714 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.110, ptr noundef nonnull @.str.111, i32 noundef 4, ptr noundef %704, i8 noundef zeroext 12, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %715 = icmp eq ptr %714, null
  %716 = icmp ugt ptr %714, inttoptr (i32 -4096 to ptr)
  %717 = or i1 %715, %716
  br i1 %717, label %721, label %718

718:                                              ; preds = %712
  %719 = getelementptr inbounds %struct.clk_hw, ptr %714, i32 0, i32 1
  %720 = load ptr, ptr %719, align 4
  br label %721

721:                                              ; preds = %718, %712
  %722 = phi ptr [ %720, %718 ], [ %714, %712 ]
  store ptr %722, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 61), align 4
  %723 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.112, i8 noundef zeroext 4, ptr noundef nonnull @gpu3d_sel, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %15, i8 noundef zeroext 4, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %724 = icmp eq ptr %723, null
  %725 = icmp ugt ptr %723, inttoptr (i32 -4096 to ptr)
  %726 = or i1 %724, %725
  br i1 %726, label %730, label %727

727:                                              ; preds = %721
  %728 = getelementptr inbounds %struct.clk_hw, ptr %723, i32 0, i32 1
  %729 = load ptr, ptr %728, align 4
  br label %730

730:                                              ; preds = %727, %721
  %731 = phi ptr [ %729, %727 ], [ %723, %721 ]
  store ptr %731, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 160), align 4
  %732 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.113, i8 noundef zeroext 4, ptr noundef nonnull @gpu2d_sel, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %15, i8 noundef zeroext 16, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %733 = icmp eq ptr %732, null
  %734 = icmp ugt ptr %732, inttoptr (i32 -4096 to ptr)
  %735 = or i1 %733, %734
  br i1 %735, label %739, label %736

736:                                              ; preds = %730
  %737 = getelementptr inbounds %struct.clk_hw, ptr %732, i32 0, i32 1
  %738 = load ptr, ptr %737, align 4
  br label %739

739:                                              ; preds = %736, %730
  %740 = phi ptr [ %738, %736 ], [ %732, %730 ]
  store ptr %740, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 161), align 4
  %741 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.114, ptr noundef nonnull @.str.112, i32 noundef 4, ptr noundef %127, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %742 = icmp eq ptr %741, null
  %743 = icmp ugt ptr %741, inttoptr (i32 -4096 to ptr)
  %744 = or i1 %742, %743
  br i1 %744, label %748, label %745

745:                                              ; preds = %739
  %746 = getelementptr inbounds %struct.clk_hw, ptr %741, i32 0, i32 1
  %747 = load ptr, ptr %746, align 4
  br label %748

748:                                              ; preds = %745, %739
  %749 = phi ptr [ %747, %745 ], [ %741, %739 ]
  store ptr %749, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 162), align 4
  %750 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.115, ptr noundef nonnull @.str.51, i32 noundef 4, ptr noundef %127, i8 noundef zeroext 4, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %751 = icmp eq ptr %750, null
  %752 = icmp ugt ptr %750, inttoptr (i32 -4096 to ptr)
  %753 = or i1 %751, %752
  br i1 %753, label %757, label %754

754:                                              ; preds = %748
  %755 = getelementptr inbounds %struct.clk_hw, ptr %750, i32 0, i32 1
  %756 = load ptr, ptr %755, align 4
  br label %757

757:                                              ; preds = %754, %748
  %758 = phi ptr [ %756, %754 ], [ %750, %748 ]
  store ptr %758, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 164), align 4
  %759 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.116, ptr noundef nonnull @.str.113, i32 noundef 4, ptr noundef %704, i8 noundef zeroext 14, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %760 = icmp eq ptr %759, null
  %761 = icmp ugt ptr %759, inttoptr (i32 -4096 to ptr)
  %762 = or i1 %760, %761
  br i1 %762, label %766, label %763

763:                                              ; preds = %757
  %764 = getelementptr inbounds %struct.clk_hw, ptr %759, i32 0, i32 1
  %765 = load ptr, ptr %764, align 4
  br label %766

766:                                              ; preds = %763, %757
  %767 = phi ptr [ %765, %763 ], [ %759, %757 ]
  store ptr %767, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 163), align 4
  %768 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.117, i8 noundef zeroext 4, ptr noundef nonnull @vpu_sel, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %15, i8 noundef zeroext 14, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %769 = icmp eq ptr %768, null
  %770 = icmp ugt ptr %768, inttoptr (i32 -4096 to ptr)
  %771 = or i1 %769, %770
  br i1 %771, label %775, label %772

772:                                              ; preds = %766
  %773 = getelementptr inbounds %struct.clk_hw, ptr %768, i32 0, i32 1
  %774 = load ptr, ptr %773, align 4
  br label %775

775:                                              ; preds = %772, %766
  %776 = phi ptr [ %774, %772 ], [ %768, %766 ]
  store ptr %776, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 62), align 4
  %777 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.118, ptr noundef nonnull @.str.117, i32 noundef 4, ptr noundef %127, i8 noundef zeroext 6, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %778 = icmp eq ptr %777, null
  %779 = icmp ugt ptr %777, inttoptr (i32 -4096 to ptr)
  %780 = or i1 %778, %779
  br i1 %780, label %784, label %781

781:                                              ; preds = %775
  %782 = getelementptr inbounds %struct.clk_hw, ptr %777, i32 0, i32 1
  %783 = load ptr, ptr %782, align 4
  br label %784

784:                                              ; preds = %781, %775
  %785 = phi ptr [ %783, %781 ], [ %777, %775 ]
  store ptr %785, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 63), align 4
  %786 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.119, ptr noundef nonnull @.str.2, i32 noundef 4, ptr noundef %127, i8 noundef zeroext 8, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %787 = icmp eq ptr %786, null
  %788 = icmp ugt ptr %786, inttoptr (i32 -4096 to ptr)
  %789 = or i1 %787, %788
  br i1 %789, label %793, label %790

790:                                              ; preds = %784
  %791 = getelementptr inbounds %struct.clk_hw, ptr %786, i32 0, i32 1
  %792 = load ptr, ptr %791, align 4
  br label %793

793:                                              ; preds = %790, %784
  %794 = phi ptr [ %792, %790 ], [ %786, %784 ]
  store ptr %794, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 64), align 4
  %795 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.120, ptr noundef nonnull @.str.35, i32 noundef 2052, ptr noundef %127, i8 noundef zeroext 24, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %796 = icmp eq ptr %795, null
  %797 = icmp ugt ptr %795, inttoptr (i32 -4096 to ptr)
  %798 = or i1 %796, %797
  br i1 %798, label %802, label %799

799:                                              ; preds = %793
  %800 = getelementptr inbounds %struct.clk_hw, ptr %795, i32 0, i32 1
  %801 = load ptr, ptr %800, align 4
  br label %802

802:                                              ; preds = %799, %793
  %803 = phi ptr [ %801, %799 ], [ %795, %793 ]
  store ptr %803, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 111), align 4
  %804 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.121, i8 noundef zeroext 3, ptr noundef nonnull @ssi_apm_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %164, i8 noundef zeroext 8, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %805 = icmp eq ptr %804, null
  %806 = icmp ugt ptr %804, inttoptr (i32 -4096 to ptr)
  %807 = or i1 %805, %806
  br i1 %807, label %811, label %808

808:                                              ; preds = %802
  %809 = getelementptr inbounds %struct.clk_hw, ptr %804, i32 0, i32 1
  %810 = load ptr, ptr %809, align 4
  br label %811

811:                                              ; preds = %808, %802
  %812 = phi ptr [ %810, %808 ], [ %804, %802 ]
  store ptr %812, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 131), align 4
  %813 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.122, i8 noundef zeroext 4, ptr noundef nonnull @ssi_clk_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %164, i8 noundef zeroext 14, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %814 = icmp eq ptr %813, null
  %815 = icmp ugt ptr %813, inttoptr (i32 -4096 to ptr)
  %816 = or i1 %814, %815
  br i1 %816, label %820, label %817

817:                                              ; preds = %811
  %818 = getelementptr inbounds %struct.clk_hw, ptr %813, i32 0, i32 1
  %819 = load ptr, ptr %818, align 4
  br label %820

820:                                              ; preds = %817, %811
  %821 = phi ptr [ %819, %817 ], [ %813, %811 ]
  store ptr %821, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 132), align 4
  %822 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.123, i8 noundef zeroext 4, ptr noundef nonnull @ssi_clk_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %164, i8 noundef zeroext 12, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %823 = icmp eq ptr %822, null
  %824 = icmp ugt ptr %822, inttoptr (i32 -4096 to ptr)
  %825 = or i1 %823, %824
  br i1 %825, label %829, label %826

826:                                              ; preds = %820
  %827 = getelementptr inbounds %struct.clk_hw, ptr %822, i32 0, i32 1
  %828 = load ptr, ptr %827, align 4
  br label %829

829:                                              ; preds = %826, %820
  %830 = phi ptr [ %828, %826 ], [ %822, %820 ]
  store ptr %830, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 133), align 4
  %831 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.124, i8 noundef zeroext 2, ptr noundef nonnull @ssi3_clk_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %164, i8 noundef zeroext 11, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %832 = icmp eq ptr %831, null
  %833 = icmp ugt ptr %831, inttoptr (i32 -4096 to ptr)
  %834 = or i1 %832, %833
  br i1 %834, label %838, label %835

835:                                              ; preds = %829
  %836 = getelementptr inbounds %struct.clk_hw, ptr %831, i32 0, i32 1
  %837 = load ptr, ptr %836, align 4
  br label %838

838:                                              ; preds = %835, %829
  %839 = phi ptr [ %837, %835 ], [ %831, %829 ]
  store ptr %839, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 134), align 4
  %840 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.125, i8 noundef zeroext 4, ptr noundef nonnull @ssi_clk_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %164, i8 noundef zeroext 28, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %841 = icmp eq ptr %840, null
  %842 = icmp ugt ptr %840, inttoptr (i32 -4096 to ptr)
  %843 = or i1 %841, %842
  br i1 %843, label %847, label %844

844:                                              ; preds = %838
  %845 = getelementptr inbounds %struct.clk_hw, ptr %840, i32 0, i32 1
  %846 = load ptr, ptr %845, align 4
  br label %847

847:                                              ; preds = %844, %838
  %848 = phi ptr [ %846, %844 ], [ %840, %838 ]
  store ptr %848, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 135), align 4
  %849 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.126, i8 noundef zeroext 4, ptr noundef nonnull @ssi_clk_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %164, i8 noundef zeroext 30, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %850 = icmp eq ptr %849, null
  %851 = icmp ugt ptr %849, inttoptr (i32 -4096 to ptr)
  %852 = or i1 %850, %851
  br i1 %852, label %856, label %853

853:                                              ; preds = %847
  %854 = getelementptr inbounds %struct.clk_hw, ptr %849, i32 0, i32 1
  %855 = load ptr, ptr %854, align 4
  br label %856

856:                                              ; preds = %853, %847
  %857 = phi ptr [ %855, %853 ], [ %849, %847 ]
  store ptr %857, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 136), align 4
  %858 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.127, i8 noundef zeroext 2, ptr noundef nonnull @ssi_ext1_com_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %164, i8 noundef zeroext 0, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %859 = icmp eq ptr %858, null
  %860 = icmp ugt ptr %858, inttoptr (i32 -4096 to ptr)
  %861 = or i1 %859, %860
  br i1 %861, label %865, label %862

862:                                              ; preds = %856
  %863 = getelementptr inbounds %struct.clk_hw, ptr %858, i32 0, i32 1
  %864 = load ptr, ptr %863, align 4
  br label %865

865:                                              ; preds = %862, %856
  %866 = phi ptr [ %864, %862 ], [ %858, %856 ]
  store ptr %866, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 137), align 4
  %867 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.128, i8 noundef zeroext 2, ptr noundef nonnull @ssi_ext2_com_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %164, i8 noundef zeroext 1, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %868 = icmp eq ptr %867, null
  %869 = icmp ugt ptr %867, inttoptr (i32 -4096 to ptr)
  %870 = or i1 %868, %869
  br i1 %870, label %874, label %871

871:                                              ; preds = %865
  %872 = getelementptr inbounds %struct.clk_hw, ptr %867, i32 0, i32 1
  %873 = load ptr, ptr %872, align 4
  br label %874

874:                                              ; preds = %871, %865
  %875 = phi ptr [ %873, %871 ], [ %867, %865 ]
  store ptr %875, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 138), align 4
  %876 = getelementptr i8, ptr %0, i32 40
  %877 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.129, ptr noundef nonnull @.str.122, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %876, i8 noundef zeroext 6, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %878 = icmp eq ptr %877, null
  %879 = icmp ugt ptr %877, inttoptr (i32 -4096 to ptr)
  %880 = or i1 %878, %879
  br i1 %880, label %884, label %881

881:                                              ; preds = %874
  %882 = getelementptr inbounds %struct.clk_hw, ptr %877, i32 0, i32 1
  %883 = load ptr, ptr %882, align 4
  br label %884

884:                                              ; preds = %881, %874
  %885 = phi ptr [ %883, %881 ], [ %877, %874 ]
  store ptr %885, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 139), align 4
  %886 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.130, ptr noundef nonnull @.str.129, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %876, i8 noundef zeroext 0, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %887 = icmp eq ptr %886, null
  %888 = icmp ugt ptr %886, inttoptr (i32 -4096 to ptr)
  %889 = or i1 %887, %888
  br i1 %889, label %893, label %890

890:                                              ; preds = %884
  %891 = getelementptr inbounds %struct.clk_hw, ptr %886, i32 0, i32 1
  %892 = load ptr, ptr %891, align 4
  br label %893

893:                                              ; preds = %890, %884
  %894 = phi ptr [ %892, %890 ], [ %886, %884 ]
  store ptr %894, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 140), align 4
  %895 = getelementptr i8, ptr %0, i32 44
  %896 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.123, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %895, i8 noundef zeroext 6, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %897 = icmp eq ptr %896, null
  %898 = icmp ugt ptr %896, inttoptr (i32 -4096 to ptr)
  %899 = or i1 %897, %898
  br i1 %899, label %903, label %900

900:                                              ; preds = %893
  %901 = getelementptr inbounds %struct.clk_hw, ptr %896, i32 0, i32 1
  %902 = load ptr, ptr %901, align 4
  br label %903

903:                                              ; preds = %900, %893
  %904 = phi ptr [ %902, %900 ], [ %896, %893 ]
  store ptr %904, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 141), align 4
  %905 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.132, ptr noundef nonnull @.str.131, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %895, i8 noundef zeroext 0, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %906 = icmp eq ptr %905, null
  %907 = icmp ugt ptr %905, inttoptr (i32 -4096 to ptr)
  %908 = or i1 %906, %907
  br i1 %908, label %912, label %909

909:                                              ; preds = %903
  %910 = getelementptr inbounds %struct.clk_hw, ptr %905, i32 0, i32 1
  %911 = load ptr, ptr %910, align 4
  br label %912

912:                                              ; preds = %909, %903
  %913 = phi ptr [ %911, %909 ], [ %905, %903 ]
  store ptr %913, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 142), align 4
  %914 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.133, ptr noundef nonnull @.str.125, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %876, i8 noundef zeroext 22, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %915 = icmp eq ptr %914, null
  %916 = icmp ugt ptr %914, inttoptr (i32 -4096 to ptr)
  %917 = or i1 %915, %916
  br i1 %917, label %921, label %918

918:                                              ; preds = %912
  %919 = getelementptr inbounds %struct.clk_hw, ptr %914, i32 0, i32 1
  %920 = load ptr, ptr %919, align 4
  br label %921

921:                                              ; preds = %918, %912
  %922 = phi ptr [ %920, %918 ], [ %914, %912 ]
  store ptr %922, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 143), align 4
  %923 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.134, ptr noundef nonnull @.str.133, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %876, i8 noundef zeroext 16, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %924 = icmp eq ptr %923, null
  %925 = icmp ugt ptr %923, inttoptr (i32 -4096 to ptr)
  %926 = or i1 %924, %925
  br i1 %926, label %930, label %927

927:                                              ; preds = %921
  %928 = getelementptr inbounds %struct.clk_hw, ptr %923, i32 0, i32 1
  %929 = load ptr, ptr %928, align 4
  br label %930

930:                                              ; preds = %927, %921
  %931 = phi ptr [ %929, %927 ], [ %923, %921 ]
  store ptr %931, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 144), align 4
  %932 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.135, ptr noundef nonnull @.str.126, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %895, i8 noundef zeroext 22, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %933 = icmp eq ptr %932, null
  %934 = icmp ugt ptr %932, inttoptr (i32 -4096 to ptr)
  %935 = or i1 %933, %934
  br i1 %935, label %939, label %936

936:                                              ; preds = %930
  %937 = getelementptr inbounds %struct.clk_hw, ptr %932, i32 0, i32 1
  %938 = load ptr, ptr %937, align 4
  br label %939

939:                                              ; preds = %936, %930
  %940 = phi ptr [ %938, %936 ], [ %932, %930 ]
  store ptr %940, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 145), align 4
  %941 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.136, ptr noundef nonnull @.str.135, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %895, i8 noundef zeroext 16, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %942 = icmp eq ptr %941, null
  %943 = icmp ugt ptr %941, inttoptr (i32 -4096 to ptr)
  %944 = or i1 %942, %943
  br i1 %944, label %948, label %945

945:                                              ; preds = %939
  %946 = getelementptr inbounds %struct.clk_hw, ptr %941, i32 0, i32 1
  %947 = load ptr, ptr %946, align 4
  br label %948

948:                                              ; preds = %945, %939
  %949 = phi ptr [ %947, %945 ], [ %941, %939 ]
  store ptr %949, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 146), align 4
  %950 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.137, ptr noundef nonnull @.str.130, i32 noundef 4, ptr noundef %540, i8 noundef zeroext 18, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %951 = icmp eq ptr %950, null
  %952 = icmp ugt ptr %950, inttoptr (i32 -4096 to ptr)
  %953 = or i1 %951, %952
  br i1 %953, label %957, label %954

954:                                              ; preds = %948
  %955 = getelementptr inbounds %struct.clk_hw, ptr %950, i32 0, i32 1
  %956 = load ptr, ptr %955, align 4
  br label %957

957:                                              ; preds = %954, %948
  %958 = phi ptr [ %956, %954 ], [ %950, %948 ]
  store ptr %958, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 147), align 4
  %959 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.138, ptr noundef nonnull @.str.132, i32 noundef 4, ptr noundef %540, i8 noundef zeroext 22, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %960 = icmp eq ptr %959, null
  %961 = icmp ugt ptr %959, inttoptr (i32 -4096 to ptr)
  %962 = or i1 %960, %961
  br i1 %962, label %966, label %963

963:                                              ; preds = %957
  %964 = getelementptr inbounds %struct.clk_hw, ptr %959, i32 0, i32 1
  %965 = load ptr, ptr %964, align 4
  br label %966

966:                                              ; preds = %963, %957
  %967 = phi ptr [ %965, %963 ], [ %959, %957 ]
  store ptr %967, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 148), align 4
  %968 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.139, ptr noundef nonnull @.str.124, i32 noundef 4, ptr noundef %540, i8 noundef zeroext 26, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %969 = icmp eq ptr %968, null
  %970 = icmp ugt ptr %968, inttoptr (i32 -4096 to ptr)
  %971 = or i1 %969, %970
  br i1 %971, label %975, label %972

972:                                              ; preds = %966
  %973 = getelementptr inbounds %struct.clk_hw, ptr %968, i32 0, i32 1
  %974 = load ptr, ptr %973, align 4
  br label %975

975:                                              ; preds = %972, %966
  %976 = phi ptr [ %974, %972 ], [ %968, %966 ]
  store ptr %976, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 149), align 4
  %977 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.140, ptr noundef nonnull @.str.127, i32 noundef 4, ptr noundef %540, i8 noundef zeroext 28, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %978 = icmp eq ptr %977, null
  %979 = icmp ugt ptr %977, inttoptr (i32 -4096 to ptr)
  %980 = or i1 %978, %979
  br i1 %980, label %984, label %981

981:                                              ; preds = %975
  %982 = getelementptr inbounds %struct.clk_hw, ptr %977, i32 0, i32 1
  %983 = load ptr, ptr %982, align 4
  br label %984

984:                                              ; preds = %981, %975
  %985 = phi ptr [ %983, %981 ], [ %977, %975 ]
  store ptr %985, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 150), align 4
  %986 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.141, ptr noundef nonnull @.str.128, i32 noundef 4, ptr noundef %540, i8 noundef zeroext 30, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %987 = icmp eq ptr %986, null
  %988 = icmp ugt ptr %986, inttoptr (i32 -4096 to ptr)
  %989 = or i1 %987, %988
  br i1 %989, label %993, label %990

990:                                              ; preds = %984
  %991 = getelementptr inbounds %struct.clk_hw, ptr %986, i32 0, i32 1
  %992 = load ptr, ptr %991, align 4
  br label %993

993:                                              ; preds = %990, %984
  %994 = phi ptr [ %992, %990 ], [ %986, %984 ]
  store ptr %994, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 151), align 4
  %995 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.142, ptr noundef nonnull @.str.23, i32 noundef 4, ptr noundef %458, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %996 = icmp eq ptr %995, null
  %997 = icmp ugt ptr %995, inttoptr (i32 -4096 to ptr)
  %998 = or i1 %996, %997
  br i1 %998, label %1002, label %999

999:                                              ; preds = %993
  %1000 = getelementptr inbounds %struct.clk_hw, ptr %995, i32 0, i32 1
  %1001 = load ptr, ptr %1000, align 4
  br label %1002

1002:                                             ; preds = %999, %993
  %1003 = phi ptr [ %1001, %999 ], [ %995, %993 ]
  store ptr %1003, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 152), align 4
  %1004 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.143, ptr noundef nonnull @.str.21, i32 noundef 4, ptr noundef %458, i8 noundef zeroext 4, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %1005 = icmp eq ptr %1004, null
  %1006 = icmp ugt ptr %1004, inttoptr (i32 -4096 to ptr)
  %1007 = or i1 %1005, %1006
  br i1 %1007, label %1011, label %1008

1008:                                             ; preds = %1002
  %1009 = getelementptr inbounds %struct.clk_hw, ptr %1004, i32 0, i32 1
  %1010 = load ptr, ptr %1009, align 4
  br label %1011

1011:                                             ; preds = %1008, %1002
  %1012 = phi ptr [ %1010, %1008 ], [ %1004, %1002 ]
  store ptr %1012, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 153), align 4
  %1013 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.144, ptr noundef nonnull @.str.23, i32 noundef 4, ptr noundef %458, i8 noundef zeroext 6, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %1014 = icmp eq ptr %1013, null
  %1015 = icmp ugt ptr %1013, inttoptr (i32 -4096 to ptr)
  %1016 = or i1 %1014, %1015
  br i1 %1016, label %1020, label %1017

1017:                                             ; preds = %1011
  %1018 = getelementptr inbounds %struct.clk_hw, ptr %1013, i32 0, i32 1
  %1019 = load ptr, ptr %1018, align 4
  br label %1020

1020:                                             ; preds = %1017, %1011
  %1021 = phi ptr [ %1019, %1017 ], [ %1013, %1011 ]
  store ptr %1021, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 154), align 4
  %1022 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.145, ptr noundef nonnull @.str.21, i32 noundef 4, ptr noundef %458, i8 noundef zeroext 8, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %1023 = icmp eq ptr %1022, null
  %1024 = icmp ugt ptr %1022, inttoptr (i32 -4096 to ptr)
  %1025 = or i1 %1023, %1024
  br i1 %1025, label %1029, label %1026

1026:                                             ; preds = %1020
  %1027 = getelementptr inbounds %struct.clk_hw, ptr %1022, i32 0, i32 1
  %1028 = load ptr, ptr %1027, align 4
  br label %1029

1029:                                             ; preds = %1026, %1020
  %1030 = phi ptr [ %1028, %1026 ], [ %1022, %1020 ]
  store ptr %1030, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 155), align 4
  %1031 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.146, ptr noundef nonnull @.str.21, i32 noundef 4, ptr noundef %458, i8 noundef zeroext 22, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %1032 = icmp eq ptr %1031, null
  %1033 = icmp ugt ptr %1031, inttoptr (i32 -4096 to ptr)
  %1034 = or i1 %1032, %1033
  br i1 %1034, label %1038, label %1035

1035:                                             ; preds = %1029
  %1036 = getelementptr inbounds %struct.clk_hw, ptr %1031, i32 0, i32 1
  %1037 = load ptr, ptr %1036, align 4
  br label %1038

1038:                                             ; preds = %1035, %1029
  %1039 = phi ptr [ %1037, %1035 ], [ %1031, %1029 ]
  store ptr %1039, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 159), align 4
  %1040 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.147, ptr noundef nonnull @.str.21, i32 noundef 4, ptr noundef %604, i8 noundef zeroext 28, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %1041 = icmp eq ptr %1040, null
  %1042 = icmp ugt ptr %1040, inttoptr (i32 -4096 to ptr)
  %1043 = or i1 %1041, %1042
  br i1 %1043, label %1047, label %1044

1044:                                             ; preds = %1038
  %1045 = getelementptr inbounds %struct.clk_hw, ptr %1040, i32 0, i32 1
  %1046 = load ptr, ptr %1045, align 4
  br label %1047

1047:                                             ; preds = %1044, %1038
  %1048 = phi ptr [ %1046, %1044 ], [ %1040, %1038 ]
  store ptr %1048, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 171), align 4
  %1049 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.23, i32 noundef 4, ptr noundef %604, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %1050 = icmp eq ptr %1049, null
  %1051 = icmp ugt ptr %1049, inttoptr (i32 -4096 to ptr)
  %1052 = or i1 %1050, %1051
  br i1 %1052, label %1056, label %1053

1053:                                             ; preds = %1047
  %1054 = getelementptr inbounds %struct.clk_hw, ptr %1049, i32 0, i32 1
  %1055 = load ptr, ptr %1054, align 4
  br label %1056

1056:                                             ; preds = %1053, %1047
  %1057 = phi ptr [ %1055, %1053 ], [ %1049, %1047 ]
  store ptr %1057, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 172), align 4
  %1058 = getelementptr i8, ptr %0, i32 32
  %1059 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.149, i8 noundef zeroext 4, ptr noundef nonnull @spdif_sel, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %1058, i8 noundef zeroext 0, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %1060 = icmp eq ptr %1059, null
  %1061 = icmp ugt ptr %1059, inttoptr (i32 -4096 to ptr)
  %1062 = or i1 %1060, %1061
  br i1 %1062, label %1066, label %1063

1063:                                             ; preds = %1056
  %1064 = getelementptr inbounds %struct.clk_hw, ptr %1059, i32 0, i32 1
  %1065 = load ptr, ptr %1064, align 4
  br label %1066

1066:                                             ; preds = %1063, %1056
  %1067 = phi ptr [ %1065, %1063 ], [ %1059, %1056 ]
  store ptr %1067, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 175), align 4
  %1068 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.150, ptr noundef nonnull @.str.149, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %311, i8 noundef zeroext 25, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %1069 = icmp eq ptr %1068, null
  %1070 = icmp ugt ptr %1068, inttoptr (i32 -4096 to ptr)
  %1071 = or i1 %1069, %1070
  br i1 %1071, label %1075, label %1072

1072:                                             ; preds = %1066
  %1073 = getelementptr inbounds %struct.clk_hw, ptr %1068, i32 0, i32 1
  %1074 = load ptr, ptr %1073, align 4
  br label %1075

1075:                                             ; preds = %1072, %1066
  %1076 = phi ptr [ %1074, %1072 ], [ %1068, %1066 ]
  store ptr %1076, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 177), align 4
  %1077 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.151, ptr noundef nonnull @.str.150, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %311, i8 noundef zeroext 19, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %1078 = icmp eq ptr %1077, null
  %1079 = icmp ugt ptr %1077, inttoptr (i32 -4096 to ptr)
  %1080 = or i1 %1078, %1079
  br i1 %1080, label %1084, label %1081

1081:                                             ; preds = %1075
  %1082 = getelementptr inbounds %struct.clk_hw, ptr %1077, i32 0, i32 1
  %1083 = load ptr, ptr %1082, align 4
  br label %1084

1084:                                             ; preds = %1081, %1075
  %1085 = phi ptr [ %1083, %1081 ], [ %1077, %1075 ]
  store ptr %1085, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 178), align 4
  %1086 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.152, i8 noundef zeroext 2, ptr noundef nonnull @spdif0_com_sel, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %1058, i8 noundef zeroext 4, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #2
  %1087 = icmp eq ptr %1086, null
  %1088 = icmp ugt ptr %1086, inttoptr (i32 -4096 to ptr)
  %1089 = or i1 %1087, %1088
  br i1 %1089, label %1093, label %1090

1090:                                             ; preds = %1084
  %1091 = getelementptr inbounds %struct.clk_hw, ptr %1086, i32 0, i32 1
  %1092 = load ptr, ptr %1091, align 4
  br label %1093

1093:                                             ; preds = %1090, %1084
  %1094 = phi ptr [ %1092, %1090 ], [ %1086, %1084 ]
  store ptr %1094, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 181), align 4
  %1095 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.153, ptr noundef nonnull @.str.152, i32 noundef 4, ptr noundef %127, i8 noundef zeroext 26, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %1096 = icmp eq ptr %1095, null
  %1097 = icmp ugt ptr %1095, inttoptr (i32 -4096 to ptr)
  %1098 = or i1 %1096, %1097
  br i1 %1098, label %1102, label %1099

1099:                                             ; preds = %1093
  %1100 = getelementptr inbounds %struct.clk_hw, ptr %1095, i32 0, i32 1
  %1101 = load ptr, ptr %1100, align 4
  br label %1102

1102:                                             ; preds = %1099, %1093
  %1103 = phi ptr [ %1101, %1099 ], [ %1095, %1093 ]
  store ptr %1103, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 183), align 4
  %1104 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.154, ptr noundef nonnull @.str.23, i32 noundef 4, ptr noundef %127, i8 noundef zeroext 30, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %1105 = icmp eq ptr %1104, null
  %1106 = icmp ugt ptr %1104, inttoptr (i32 -4096 to ptr)
  %1107 = or i1 %1105, %1106
  br i1 %1107, label %1111, label %1108

1108:                                             ; preds = %1102
  %1109 = getelementptr inbounds %struct.clk_hw, ptr %1104, i32 0, i32 1
  %1110 = load ptr, ptr %1109, align 4
  br label %1111

1111:                                             ; preds = %1108, %1102
  %1112 = phi ptr [ %1110, %1108 ], [ %1104, %1102 ]
  store ptr %1112, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 185), align 4
  %1113 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.155, ptr noundef nonnull @.str.23, i32 noundef 4, ptr noundef %604, i8 noundef zeroext 14, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #2
  %1114 = icmp eq ptr %1113, null
  %1115 = icmp ugt ptr %1113, inttoptr (i32 -4096 to ptr)
  %1116 = or i1 %1114, %1115
  br i1 %1116, label %1120, label %1117

1117:                                             ; preds = %1111
  %1118 = getelementptr inbounds %struct.clk_hw, ptr %1113, i32 0, i32 1
  %1119 = load ptr, ptr %1118, align 4
  br label %1120

1120:                                             ; preds = %1117, %1111
  %1121 = phi ptr [ %1119, %1117 ], [ %1113, %1111 ]
  store ptr %1121, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 187), align 4
  %1122 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.156, ptr noundef nonnull @.str.17, i32 noundef 4, i32 noundef 1, i32 noundef 1) #2
  %1123 = icmp eq ptr %1122, null
  %1124 = icmp ugt ptr %1122, inttoptr (i32 -4096 to ptr)
  %1125 = or i1 %1123, %1124
  br i1 %1125, label %1129, label %1126

1126:                                             ; preds = %1120
  %1127 = getelementptr inbounds %struct.clk_hw, ptr %1122, i32 0, i32 1
  %1128 = load ptr, ptr %1127, align 4
  br label %1129

1129:                                             ; preds = %1126, %1120
  %1130 = phi ptr [ %1128, %1126 ], [ %1122, %1120 ]
  store ptr %1130, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 188), align 4
  %1131 = load ptr, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 24), align 4
  %1132 = tail call i32 @clk_register_clkdev(ptr noundef %1131, ptr noundef null, ptr noundef nonnull @.str.157) #2
  %1133 = load ptr, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 111), align 4
  %1134 = tail call i32 @clk_register_clkdev(ptr noundef %1133, ptr noundef nonnull @.str.120, ptr noundef null) #2
  %1135 = load ptr, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 106), align 4
  %1136 = load ptr, ptr getelementptr inbounds ([206 x ptr], ptr @clk, i32 0, i32 2), align 4
  %1137 = tail call i32 @clk_set_parent(ptr noundef %1135, ptr noundef %1136) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @imx_check_clocks(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_onecell_get(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_parent(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @imx_print_silicon_rev(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_round_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @imx_register_uart_clocks(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @imx_obtain_fixed_clock(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_register_clkdev(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_hw_register_fixed_rate(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_register_fixed_factor(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_hw_register_mux(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_register_gate2(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_hw_register_divider(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mx51_revision() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @imx_clk_hw_cpu(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mx53_revision() local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { cold }

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
!9 = !{i64 4587191}
!10 = !{i64 2152685983}
!11 = !{i64 2152686186}
!12 = !{i64 4586773}
!13 = !{i64 2152686667}
!14 = !{i64 2152686870}
