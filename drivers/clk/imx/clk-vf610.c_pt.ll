; ModuleID = '/llk/IR/drivers/clk/imx/clk-vf610.c_pt.bc'
source_filename = "../drivers/clk/imx/clk-vf610.c"
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
%struct.syscore_ops = type { %struct.list_head, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.clk_onecell_data = type { ptr, i32 }
%struct.clk_hw = type { ptr, ptr, ptr }

@__of_table_vf610 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,vf610-ccm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @vf610_clocks_init }, section "__clk_of_table", align 4
@.str = private unnamed_addr constant [6 x i8] c"dummy\00", align 1
@clk = internal global [191 x ptr] zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"sirc_128k\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"sirc_32k\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"firc\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"sxosc\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"fxosc\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"audio_ext\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"enet_ext\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"anaclk1\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"fxosc_half\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"fsl,vf610-anatop\00", align 1
@anatop_base = internal unnamed_addr global ptr null, align 4
@ccm_base = internal unnamed_addr global ptr null, align 4
@.str.11 = private unnamed_addr constant [13 x i8] c"slow_clk_sel\00", align 1
@slow_sels = internal global [2 x ptr] [ptr @.str.2, ptr @.str.4], align 4
@.str.12 = private unnamed_addr constant [13 x i8] c"fast_clk_sel\00", align 1
@fast_sels = internal global [2 x ptr] [ptr @.str.3, ptr @.str.5], align 4
@.str.13 = private unnamed_addr constant [16 x i8] c"pll1_bypass_src\00", align 1
@pll_bypass_src_sels = internal global [2 x ptr] [ptr @.str.12, ptr @.str.41], align 4
@.str.14 = private unnamed_addr constant [16 x i8] c"pll2_bypass_src\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"pll3_bypass_src\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"pll4_bypass_src\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"pll5_bypass_src\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"pll6_bypass_src\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"pll7_bypass_src\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"pll1\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"pll2\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"pll3\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"pll4\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"pll5\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"pll6\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"pll7\00", align 1
@.str.27 = private unnamed_addr constant [12 x i8] c"pll1_bypass\00", align 1
@pll1_bypass_sels = internal global [2 x ptr] [ptr @.str.20, ptr @.str.13], align 4
@.str.28 = private unnamed_addr constant [12 x i8] c"pll2_bypass\00", align 1
@pll2_bypass_sels = internal global [2 x ptr] [ptr @.str.21, ptr @.str.14], align 4
@.str.29 = private unnamed_addr constant [12 x i8] c"pll3_bypass\00", align 1
@pll3_bypass_sels = internal global [2 x ptr] [ptr @.str.22, ptr @.str.15], align 4
@.str.30 = private unnamed_addr constant [12 x i8] c"pll4_bypass\00", align 1
@pll4_bypass_sels = internal global [2 x ptr] [ptr @.str.23, ptr @.str.16], align 4
@.str.31 = private unnamed_addr constant [12 x i8] c"pll5_bypass\00", align 1
@pll5_bypass_sels = internal global [2 x ptr] [ptr @.str.24, ptr @.str.17], align 4
@.str.32 = private unnamed_addr constant [12 x i8] c"pll6_bypass\00", align 1
@pll6_bypass_sels = internal global [2 x ptr] [ptr @.str.25, ptr @.str.18], align 4
@.str.33 = private unnamed_addr constant [12 x i8] c"pll7_bypass\00", align 1
@pll7_bypass_sels = internal global [2 x ptr] [ptr @.str.26, ptr @.str.19], align 4
@.str.34 = private unnamed_addr constant [9 x i8] c"pll1_sys\00", align 1
@.str.35 = private unnamed_addr constant [9 x i8] c"pll2_bus\00", align 1
@.str.36 = private unnamed_addr constant [13 x i8] c"pll3_usb_otg\00", align 1
@.str.37 = private unnamed_addr constant [11 x i8] c"pll4_audio\00", align 1
@.str.38 = private unnamed_addr constant [10 x i8] c"pll5_enet\00", align 1
@.str.39 = private unnamed_addr constant [11 x i8] c"pll6_video\00", align 1
@.str.40 = private unnamed_addr constant [14 x i8] c"pll7_usb_host\00", align 1
@.str.41 = private unnamed_addr constant [9 x i8] c"lvds1_in\00", align 1
@.str.42 = private unnamed_addr constant [10 x i8] c"pll1_pfd1\00", align 1
@.str.43 = private unnamed_addr constant [10 x i8] c"pll1_pfd2\00", align 1
@.str.44 = private unnamed_addr constant [10 x i8] c"pll1_pfd3\00", align 1
@.str.45 = private unnamed_addr constant [10 x i8] c"pll1_pfd4\00", align 1
@.str.46 = private unnamed_addr constant [10 x i8] c"pll2_pfd1\00", align 1
@.str.47 = private unnamed_addr constant [10 x i8] c"pll2_pfd2\00", align 1
@.str.48 = private unnamed_addr constant [10 x i8] c"pll2_pfd3\00", align 1
@.str.49 = private unnamed_addr constant [10 x i8] c"pll2_pfd4\00", align 1
@.str.50 = private unnamed_addr constant [10 x i8] c"pll3_pfd1\00", align 1
@.str.51 = private unnamed_addr constant [10 x i8] c"pll3_pfd2\00", align 1
@.str.52 = private unnamed_addr constant [10 x i8] c"pll3_pfd3\00", align 1
@.str.53 = private unnamed_addr constant [10 x i8] c"pll3_pfd4\00", align 1
@.str.54 = private unnamed_addr constant [13 x i8] c"pll1_pfd_sel\00", align 1
@pll1_sels = internal global [5 x ptr] [ptr @.str.34, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45], align 4
@.str.55 = private unnamed_addr constant [13 x i8] c"pll2_pfd_sel\00", align 1
@pll2_sels = internal global [5 x ptr] [ptr @.str.35, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49], align 4
@.str.56 = private unnamed_addr constant [8 x i8] c"sys_sel\00", align 1
@sys_sels = internal global [6 x ptr] [ptr @.str.12, ptr @.str.11, ptr @.str.55, ptr @.str.35, ptr @.str.54, ptr @.str.36], align 4
@.str.57 = private unnamed_addr constant [8 x i8] c"ddr_sel\00", align 1
@ddr_sels = internal global [2 x ptr] [ptr @.str.47, ptr @.str.56], align 4
@.str.58 = private unnamed_addr constant [8 x i8] c"sys_bus\00", align 1
@.str.59 = private unnamed_addr constant [13 x i8] c"platform_bus\00", align 1
@.str.60 = private unnamed_addr constant [8 x i8] c"ipg_bus\00", align 1
@.str.61 = private unnamed_addr constant [17 x i8] c"pll3_usb_otg_div\00", align 1
@.str.62 = private unnamed_addr constant [15 x i8] c"pll4_audio_div\00", align 1
@pll4_audio_div_table = internal constant [9 x %struct.clk_div_table] [%struct.clk_div_table { i32 0, i32 1 }, %struct.clk_div_table { i32 1, i32 2 }, %struct.clk_div_table { i32 2, i32 6 }, %struct.clk_div_table { i32 3, i32 8 }, %struct.clk_div_table { i32 4, i32 10 }, %struct.clk_div_table { i32 5, i32 12 }, %struct.clk_div_table { i32 6, i32 14 }, %struct.clk_div_table { i32 7, i32 16 }, %struct.clk_div_table zeroinitializer], align 4
@imx_ccm_lock = external dso_local global %struct.spinlock, align 4
@.str.63 = private unnamed_addr constant [15 x i8] c"pll6_video_div\00", align 1
@.str.64 = private unnamed_addr constant [6 x i8] c"ddrmc\00", align 1
@.str.65 = private unnamed_addr constant [5 x i8] c"wkpu\00", align 1
@.str.66 = private unnamed_addr constant [8 x i8] c"usbphy0\00", align 1
@.str.67 = private unnamed_addr constant [8 x i8] c"usbphy1\00", align 1
@.str.68 = private unnamed_addr constant [6 x i8] c"usbc0\00", align 1
@.str.69 = private unnamed_addr constant [6 x i8] c"usbc1\00", align 1
@.str.70 = private unnamed_addr constant [10 x i8] c"qspi0_sel\00", align 1
@qspi_sels = internal global [4 x ptr] [ptr @.str.36, ptr @.str.53, ptr @.str.49, ptr @.str.45], align 4
@.str.71 = private unnamed_addr constant [9 x i8] c"qspi0_en\00", align 1
@.str.72 = private unnamed_addr constant [9 x i8] c"qspi0_x4\00", align 1
@.str.73 = private unnamed_addr constant [9 x i8] c"qspi0_x2\00", align 1
@.str.74 = private unnamed_addr constant [9 x i8] c"qspi0_x1\00", align 1
@.str.75 = private unnamed_addr constant [6 x i8] c"qspi0\00", align 1
@.str.76 = private unnamed_addr constant [10 x i8] c"qspi1_sel\00", align 1
@.str.77 = private unnamed_addr constant [9 x i8] c"qspi1_en\00", align 1
@.str.78 = private unnamed_addr constant [9 x i8] c"qspi1_x4\00", align 1
@.str.79 = private unnamed_addr constant [9 x i8] c"qspi1_x2\00", align 1
@.str.80 = private unnamed_addr constant [9 x i8] c"qspi1_x1\00", align 1
@.str.81 = private unnamed_addr constant [6 x i8] c"qspi1\00", align 1
@.str.82 = private unnamed_addr constant [9 x i8] c"enet_50m\00", align 1
@.str.83 = private unnamed_addr constant [9 x i8] c"enet_25m\00", align 1
@.str.84 = private unnamed_addr constant [9 x i8] c"enet_sel\00", align 1
@rmii_sels = internal global [4 x ptr] [ptr @.str.7, ptr @.str.6, ptr @.str.82, ptr @.str.83], align 4
@.str.85 = private unnamed_addr constant [12 x i8] c"enet_ts_sel\00", align 1
@enet_ts_sels = internal global [7 x ptr] [ptr @.str.7, ptr @.str.5, ptr @.str.6, ptr @.str.191, ptr @.str.87, ptr @.str.83, ptr @.str.82], align 4
@.str.86 = private unnamed_addr constant [5 x i8] c"enet\00", align 1
@.str.87 = private unnamed_addr constant [8 x i8] c"enet_ts\00", align 1
@.str.88 = private unnamed_addr constant [6 x i8] c"enet0\00", align 1
@.str.89 = private unnamed_addr constant [6 x i8] c"enet1\00", align 1
@.str.90 = private unnamed_addr constant [4 x i8] c"pit\00", align 1
@.str.91 = private unnamed_addr constant [6 x i8] c"uart0\00", align 1
@.str.92 = private unnamed_addr constant [6 x i8] c"uart1\00", align 1
@.str.93 = private unnamed_addr constant [6 x i8] c"uart2\00", align 1
@.str.94 = private unnamed_addr constant [6 x i8] c"uart3\00", align 1
@.str.95 = private unnamed_addr constant [6 x i8] c"uart4\00", align 1
@.str.96 = private unnamed_addr constant [6 x i8] c"uart5\00", align 1
@.str.97 = private unnamed_addr constant [5 x i8] c"i2c0\00", align 1
@.str.98 = private unnamed_addr constant [5 x i8] c"i2c1\00", align 1
@.str.99 = private unnamed_addr constant [5 x i8] c"i2c2\00", align 1
@.str.100 = private unnamed_addr constant [5 x i8] c"i2c3\00", align 1
@.str.101 = private unnamed_addr constant [6 x i8] c"dspi0\00", align 1
@.str.102 = private unnamed_addr constant [6 x i8] c"dspi1\00", align 1
@.str.103 = private unnamed_addr constant [6 x i8] c"dspi2\00", align 1
@.str.104 = private unnamed_addr constant [6 x i8] c"dspi3\00", align 1
@.str.105 = private unnamed_addr constant [4 x i8] c"crc\00", align 1
@.str.106 = private unnamed_addr constant [4 x i8] c"wdt\00", align 1
@.str.107 = private unnamed_addr constant [11 x i8] c"esdhc0_sel\00", align 1
@esdhc_sels = internal global [4 x ptr] [ptr @.str.36, ptr @.str.52, ptr @.str.44, ptr @.str.59], align 4
@.str.108 = private unnamed_addr constant [10 x i8] c"esdhc0_en\00", align 1
@.str.109 = private unnamed_addr constant [11 x i8] c"esdhc0_div\00", align 1
@.str.110 = private unnamed_addr constant [6 x i8] c"eshc0\00", align 1
@.str.111 = private unnamed_addr constant [11 x i8] c"esdhc1_sel\00", align 1
@.str.112 = private unnamed_addr constant [10 x i8] c"esdhc1_en\00", align 1
@.str.113 = private unnamed_addr constant [11 x i8] c"esdhc1_div\00", align 1
@.str.114 = private unnamed_addr constant [6 x i8] c"eshc1\00", align 1
@.str.115 = private unnamed_addr constant [13 x i8] c"ftm0_ext_sel\00", align 1
@ftm_ext_sels = internal global [4 x ptr] [ptr @.str.1, ptr @.str.4, ptr @.str.9, ptr @.str.6], align 4
@.str.116 = private unnamed_addr constant [13 x i8] c"ftm0_fix_sel\00", align 1
@ftm_fix_sels = internal global [2 x ptr] [ptr @.str.4, ptr @.str.60], align 4
@.str.117 = private unnamed_addr constant [16 x i8] c"ftm0_ext_fix_en\00", align 1
@.str.118 = private unnamed_addr constant [13 x i8] c"ftm1_ext_sel\00", align 1
@.str.119 = private unnamed_addr constant [13 x i8] c"ftm1_fix_sel\00", align 1
@.str.120 = private unnamed_addr constant [16 x i8] c"ftm1_ext_fix_en\00", align 1
@.str.121 = private unnamed_addr constant [13 x i8] c"ftm2_ext_sel\00", align 1
@.str.122 = private unnamed_addr constant [13 x i8] c"ftm2_fix_sel\00", align 1
@.str.123 = private unnamed_addr constant [16 x i8] c"ftm2_ext_fix_en\00", align 1
@.str.124 = private unnamed_addr constant [13 x i8] c"ftm3_ext_sel\00", align 1
@.str.125 = private unnamed_addr constant [13 x i8] c"ftm3_fix_sel\00", align 1
@.str.126 = private unnamed_addr constant [16 x i8] c"ftm3_ext_fix_en\00", align 1
@.str.127 = private unnamed_addr constant [5 x i8] c"ftm0\00", align 1
@.str.128 = private unnamed_addr constant [5 x i8] c"ftm1\00", align 1
@.str.129 = private unnamed_addr constant [5 x i8] c"ftm2\00", align 1
@.str.130 = private unnamed_addr constant [5 x i8] c"ftm3\00", align 1
@.str.131 = private unnamed_addr constant [9 x i8] c"dcu0_sel\00", align 1
@dcu_sels = internal global [2 x ptr] [ptr @.str.43, ptr @.str.36], align 4
@.str.132 = private unnamed_addr constant [8 x i8] c"dcu0_en\00", align 1
@.str.133 = private unnamed_addr constant [9 x i8] c"dcu0_div\00", align 1
@.str.134 = private unnamed_addr constant [5 x i8] c"dcu0\00", align 1
@.str.135 = private unnamed_addr constant [9 x i8] c"dcu1_sel\00", align 1
@.str.136 = private unnamed_addr constant [8 x i8] c"dcu1_en\00", align 1
@.str.137 = private unnamed_addr constant [9 x i8] c"dcu1_div\00", align 1
@.str.138 = private unnamed_addr constant [5 x i8] c"dcu1\00", align 1
@.str.139 = private unnamed_addr constant [6 x i8] c"tcon0\00", align 1
@.str.140 = private unnamed_addr constant [6 x i8] c"tcon1\00", align 1
@.str.141 = private unnamed_addr constant [9 x i8] c"esai_sel\00", align 1
@esai_sels = internal global [4 x ptr] [ptr @.str.6, ptr @.str.192, ptr @.str.193, ptr @.str.62], align 4
@.str.142 = private unnamed_addr constant [8 x i8] c"esai_en\00", align 1
@.str.143 = private unnamed_addr constant [9 x i8] c"esai_div\00", align 1
@.str.144 = private unnamed_addr constant [5 x i8] c"esai\00", align 1
@.str.145 = private unnamed_addr constant [9 x i8] c"sai0_sel\00", align 1
@sai_sels = internal global [4 x ptr] [ptr @.str.6, ptr @.str.192, ptr @.str.193, ptr @.str.62], align 4
@.str.146 = private unnamed_addr constant [8 x i8] c"sai0_en\00", align 1
@.str.147 = private unnamed_addr constant [9 x i8] c"sai0_div\00", align 1
@.str.148 = private unnamed_addr constant [5 x i8] c"sai0\00", align 1
@.str.149 = private unnamed_addr constant [9 x i8] c"sai1_sel\00", align 1
@.str.150 = private unnamed_addr constant [8 x i8] c"sai1_en\00", align 1
@.str.151 = private unnamed_addr constant [9 x i8] c"sai1_div\00", align 1
@.str.152 = private unnamed_addr constant [5 x i8] c"sai1\00", align 1
@.str.153 = private unnamed_addr constant [9 x i8] c"sai2_sel\00", align 1
@.str.154 = private unnamed_addr constant [8 x i8] c"sai2_en\00", align 1
@.str.155 = private unnamed_addr constant [9 x i8] c"sai2_div\00", align 1
@.str.156 = private unnamed_addr constant [5 x i8] c"sai2\00", align 1
@.str.157 = private unnamed_addr constant [9 x i8] c"sai3_sel\00", align 1
@.str.158 = private unnamed_addr constant [8 x i8] c"sai3_en\00", align 1
@.str.159 = private unnamed_addr constant [9 x i8] c"sai3_div\00", align 1
@.str.160 = private unnamed_addr constant [5 x i8] c"sai3\00", align 1
@.str.161 = private unnamed_addr constant [8 x i8] c"nfc_sel\00", align 1
@nfc_sels = internal global [4 x ptr] [ptr @.str.59, ptr @.str.42, ptr @.str.50, ptr @.str.52], align 4
@.str.162 = private unnamed_addr constant [7 x i8] c"nfc_en\00", align 1
@.str.163 = private unnamed_addr constant [12 x i8] c"nfc_pre_div\00", align 1
@.str.164 = private unnamed_addr constant [13 x i8] c"nfc_frac_div\00", align 1
@.str.165 = private unnamed_addr constant [4 x i8] c"nfc\00", align 1
@.str.166 = private unnamed_addr constant [8 x i8] c"gpu_sel\00", align 1
@gpu_sels = internal global [2 x ptr] [ptr @.str.47, ptr @.str.51], align 4
@.str.167 = private unnamed_addr constant [7 x i8] c"gpu_en\00", align 1
@.str.168 = private unnamed_addr constant [4 x i8] c"gpu\00", align 1
@.str.169 = private unnamed_addr constant [9 x i8] c"vadc_sel\00", align 1
@vadc_sels = internal global [3 x ptr] [ptr @.str.63, ptr @.str.61, ptr @.str.36], align 4
@.str.170 = private unnamed_addr constant [8 x i8] c"vadc_en\00", align 1
@.str.171 = private unnamed_addr constant [9 x i8] c"vadc_div\00", align 1
@.str.172 = private unnamed_addr constant [14 x i8] c"vadc_div_half\00", align 1
@.str.173 = private unnamed_addr constant [5 x i8] c"vadc\00", align 1
@.str.174 = private unnamed_addr constant [5 x i8] c"adc0\00", align 1
@.str.175 = private unnamed_addr constant [5 x i8] c"adc1\00", align 1
@.str.176 = private unnamed_addr constant [5 x i8] c"dac0\00", align 1
@.str.177 = private unnamed_addr constant [5 x i8] c"dac1\00", align 1
@.str.178 = private unnamed_addr constant [5 x i8] c"asrc\00", align 1
@.str.179 = private unnamed_addr constant [12 x i8] c"flexcan0_en\00", align 1
@.str.180 = private unnamed_addr constant [9 x i8] c"flexcan0\00", align 1
@.str.181 = private unnamed_addr constant [12 x i8] c"flexcan1_en\00", align 1
@.str.182 = private unnamed_addr constant [9 x i8] c"flexcan1\00", align 1
@.str.183 = private unnamed_addr constant [8 x i8] c"dmamux0\00", align 1
@.str.184 = private unnamed_addr constant [8 x i8] c"dmamux1\00", align 1
@.str.185 = private unnamed_addr constant [8 x i8] c"dmamux2\00", align 1
@.str.186 = private unnamed_addr constant [8 x i8] c"dmamux3\00", align 1
@.str.187 = private unnamed_addr constant [9 x i8] c"snvs-rtc\00", align 1
@.str.188 = private unnamed_addr constant [4 x i8] c"dap\00", align 1
@.str.189 = private unnamed_addr constant [6 x i8] c"ocotp\00", align 1
@.str.190 = private unnamed_addr constant [5 x i8] c"caam\00", align 1
@clks_init_on = internal unnamed_addr constant [5 x i32] [i32 36, i32 35, i32 183, i32 185, i32 186], section ".init.rodata", align 4
@vf610_clk_syscore_ops = internal global %struct.syscore_ops { %struct.list_head zeroinitializer, ptr @vf610_clk_suspend, ptr @vf610_clk_resume, ptr null }, align 4
@clk_data = internal global %struct.clk_onecell_data zeroinitializer, align 4
@.str.191 = private unnamed_addr constant [4 x i8] c"usb\00", align 1
@.str.192 = private unnamed_addr constant [4 x i8] c"mlb\00", align 1
@.str.193 = private unnamed_addr constant [9 x i8] c"spdif_rx\00", align 1
@cscmr1 = internal unnamed_addr global i32 0, align 4
@cscmr2 = internal unnamed_addr global i32 0, align 4
@cscdr1 = internal unnamed_addr global i32 0, align 4
@cscdr2 = internal unnamed_addr global i32 0, align 4
@cscdr3 = internal unnamed_addr global i32 0, align 4
@ccgr.0 = internal unnamed_addr global i32 0, align 4
@ccgr.1 = internal unnamed_addr global i32 0, align 4
@ccgr.2 = internal unnamed_addr global i32 0, align 4
@ccgr.3 = internal unnamed_addr global i32 0, align 4
@ccgr.4 = internal unnamed_addr global i32 0, align 4
@ccgr.5 = internal unnamed_addr global i32 0, align 4
@ccgr.6 = internal unnamed_addr global i32 0, align 4
@ccgr.7 = internal unnamed_addr global i32 0, align 4
@ccgr.8 = internal unnamed_addr global i32 0, align 4
@ccgr.9 = internal unnamed_addr global i32 0, align 4
@ccgr.10 = internal unnamed_addr global i32 0, align 4
@ccgr.11 = internal unnamed_addr global i32 0, align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__of_table_vf610], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @vf610_clocks_init(ptr noundef %0) #0 section ".init.text" {
  %2 = tail call ptr @__clk_hw_register_fixed_rate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #3
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
  %11 = tail call ptr @__clk_hw_register_fixed_rate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.1, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0, i32 noundef 128000, i32 noundef 0, i32 noundef 0) #3
  %12 = icmp eq ptr %11, null
  %13 = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  %14 = or i1 %12, %13
  br i1 %14, label %18, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.clk_hw, ptr %11, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  br label %18

18:                                               ; preds = %15, %9
  %19 = phi ptr [ %17, %15 ], [ %11, %9 ]
  store ptr %19, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 1), align 4
  %20 = tail call ptr @__clk_hw_register_fixed_rate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.2, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0, i32 noundef 32000, i32 noundef 0, i32 noundef 0) #3
  %21 = icmp eq ptr %20, null
  %22 = icmp ugt ptr %20, inttoptr (i32 -4096 to ptr)
  %23 = or i1 %21, %22
  br i1 %23, label %27, label %24

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.clk_hw, ptr %20, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  br label %27

27:                                               ; preds = %24, %18
  %28 = phi ptr [ %26, %24 ], [ %20, %18 ]
  store ptr %28, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 2), align 4
  %29 = tail call ptr @__clk_hw_register_fixed_rate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.3, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0, i32 noundef 24000000, i32 noundef 0, i32 noundef 0) #3
  %30 = icmp eq ptr %29, null
  %31 = icmp ugt ptr %29, inttoptr (i32 -4096 to ptr)
  %32 = or i1 %30, %31
  br i1 %32, label %36, label %33

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.clk_hw, ptr %29, i32 0, i32 1
  %35 = load ptr, ptr %34, align 4
  br label %36

36:                                               ; preds = %33, %27
  %37 = phi ptr [ %35, %33 ], [ %29, %27 ]
  store ptr %37, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 3), align 4
  %38 = tail call fastcc ptr @vf610_get_fixed_clock(ptr noundef %0, ptr noundef nonnull @.str.4) #4
  store ptr %38, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 4), align 4
  %39 = tail call fastcc ptr @vf610_get_fixed_clock(ptr noundef %0, ptr noundef nonnull @.str.5) #4
  store ptr %39, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 5), align 4
  %40 = tail call fastcc ptr @vf610_get_fixed_clock(ptr noundef %0, ptr noundef nonnull @.str.6) #4
  store ptr %40, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 9), align 4
  %41 = tail call fastcc ptr @vf610_get_fixed_clock(ptr noundef %0, ptr noundef nonnull @.str.7) #4
  store ptr %41, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 10), align 4
  %42 = tail call fastcc ptr @vf610_get_fixed_clock(ptr noundef %0, ptr noundef nonnull @.str.8) #4
  store ptr %42, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 160), align 4
  %43 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.5, i32 noundef 4, i32 noundef 1, i32 noundef 2) #3
  %44 = icmp eq ptr %43, null
  %45 = icmp ugt ptr %43, inttoptr (i32 -4096 to ptr)
  %46 = or i1 %44, %45
  br i1 %46, label %50, label %47

47:                                               ; preds = %36
  %48 = getelementptr inbounds %struct.clk_hw, ptr %43, i32 0, i32 1
  %49 = load ptr, ptr %48, align 4
  br label %50

50:                                               ; preds = %47, %36
  %51 = phi ptr [ %49, %47 ], [ %43, %36 ]
  store ptr %51, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 6), align 4
  %52 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.10) #3
  %53 = tail call ptr @of_iomap(ptr noundef %52, i32 noundef 0) #3
  store ptr %53, ptr @anatop_base, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %56, !prof !8

55:                                               ; preds = %50
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/clk/imx/clk-vf610.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 201, 0\0A.popsection", ""() #3, !srcloc !9
  unreachable

56:                                               ; preds = %50
  tail call void @of_node_put(ptr noundef %52) #3
  %57 = tail call ptr @of_iomap(ptr noundef %0, i32 noundef 0) #3
  store ptr %57, ptr @ccm_base, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %60, !prof !8

59:                                               ; preds = %56
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/clk/imx/clk-vf610.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 206, 0\0A.popsection", ""() #3, !srcloc !10
  unreachable

60:                                               ; preds = %56
  %61 = getelementptr i8, ptr %57, i32 8
  %62 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.11, i8 noundef zeroext 2, ptr noundef nonnull @slow_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %61, i8 noundef zeroext 4, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
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
  store ptr %70, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 7), align 4
  %71 = load ptr, ptr @ccm_base, align 4
  %72 = getelementptr i8, ptr %71, i32 8
  %73 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.12, i8 noundef zeroext 2, ptr noundef nonnull @fast_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %72, i8 noundef zeroext 5, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %74 = icmp eq ptr %73, null
  %75 = icmp ugt ptr %73, inttoptr (i32 -4096 to ptr)
  %76 = or i1 %74, %75
  br i1 %76, label %80, label %77

77:                                               ; preds = %69
  %78 = getelementptr inbounds %struct.clk_hw, ptr %73, i32 0, i32 1
  %79 = load ptr, ptr %78, align 4
  br label %80

80:                                               ; preds = %77, %69
  %81 = phi ptr [ %79, %77 ], [ %73, %69 ]
  store ptr %81, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 8), align 4
  %82 = load ptr, ptr @anatop_base, align 4
  %83 = getelementptr i8, ptr %82, i32 624
  %84 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.13, i8 noundef zeroext 2, ptr noundef nonnull @pll_bypass_src_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %83, i8 noundef zeroext 14, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %85 = icmp eq ptr %84, null
  %86 = icmp ugt ptr %84, inttoptr (i32 -4096 to ptr)
  %87 = or i1 %85, %86
  br i1 %87, label %91, label %88

88:                                               ; preds = %80
  %89 = getelementptr inbounds %struct.clk_hw, ptr %84, i32 0, i32 1
  %90 = load ptr, ptr %89, align 4
  br label %91

91:                                               ; preds = %88, %80
  %92 = phi ptr [ %90, %88 ], [ %84, %80 ]
  store ptr %92, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 161), align 4
  %93 = load ptr, ptr @anatop_base, align 4
  %94 = getelementptr i8, ptr %93, i32 48
  %95 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.14, i8 noundef zeroext 2, ptr noundef nonnull @pll_bypass_src_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %94, i8 noundef zeroext 14, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %96 = icmp eq ptr %95, null
  %97 = icmp ugt ptr %95, inttoptr (i32 -4096 to ptr)
  %98 = or i1 %96, %97
  br i1 %98, label %102, label %99

99:                                               ; preds = %91
  %100 = getelementptr inbounds %struct.clk_hw, ptr %95, i32 0, i32 1
  %101 = load ptr, ptr %100, align 4
  br label %102

102:                                              ; preds = %99, %91
  %103 = phi ptr [ %101, %99 ], [ %95, %91 ]
  store ptr %103, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 162), align 4
  %104 = load ptr, ptr @anatop_base, align 4
  %105 = getelementptr i8, ptr %104, i32 16
  %106 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.15, i8 noundef zeroext 2, ptr noundef nonnull @pll_bypass_src_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %105, i8 noundef zeroext 14, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %107 = icmp eq ptr %106, null
  %108 = icmp ugt ptr %106, inttoptr (i32 -4096 to ptr)
  %109 = or i1 %107, %108
  br i1 %109, label %113, label %110

110:                                              ; preds = %102
  %111 = getelementptr inbounds %struct.clk_hw, ptr %106, i32 0, i32 1
  %112 = load ptr, ptr %111, align 4
  br label %113

113:                                              ; preds = %110, %102
  %114 = phi ptr [ %112, %110 ], [ %106, %102 ]
  store ptr %114, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 163), align 4
  %115 = load ptr, ptr @anatop_base, align 4
  %116 = getelementptr i8, ptr %115, i32 112
  %117 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.16, i8 noundef zeroext 2, ptr noundef nonnull @pll_bypass_src_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %116, i8 noundef zeroext 14, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %118 = icmp eq ptr %117, null
  %119 = icmp ugt ptr %117, inttoptr (i32 -4096 to ptr)
  %120 = or i1 %118, %119
  br i1 %120, label %124, label %121

121:                                              ; preds = %113
  %122 = getelementptr inbounds %struct.clk_hw, ptr %117, i32 0, i32 1
  %123 = load ptr, ptr %122, align 4
  br label %124

124:                                              ; preds = %121, %113
  %125 = phi ptr [ %123, %121 ], [ %117, %113 ]
  store ptr %125, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 164), align 4
  %126 = load ptr, ptr @anatop_base, align 4
  %127 = getelementptr i8, ptr %126, i32 224
  %128 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.17, i8 noundef zeroext 2, ptr noundef nonnull @pll_bypass_src_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %127, i8 noundef zeroext 14, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %129 = icmp eq ptr %128, null
  %130 = icmp ugt ptr %128, inttoptr (i32 -4096 to ptr)
  %131 = or i1 %129, %130
  br i1 %131, label %135, label %132

132:                                              ; preds = %124
  %133 = getelementptr inbounds %struct.clk_hw, ptr %128, i32 0, i32 1
  %134 = load ptr, ptr %133, align 4
  br label %135

135:                                              ; preds = %132, %124
  %136 = phi ptr [ %134, %132 ], [ %128, %124 ]
  store ptr %136, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 165), align 4
  %137 = load ptr, ptr @anatop_base, align 4
  %138 = getelementptr i8, ptr %137, i32 160
  %139 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.18, i8 noundef zeroext 2, ptr noundef nonnull @pll_bypass_src_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %138, i8 noundef zeroext 14, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %140 = icmp eq ptr %139, null
  %141 = icmp ugt ptr %139, inttoptr (i32 -4096 to ptr)
  %142 = or i1 %140, %141
  br i1 %142, label %146, label %143

143:                                              ; preds = %135
  %144 = getelementptr inbounds %struct.clk_hw, ptr %139, i32 0, i32 1
  %145 = load ptr, ptr %144, align 4
  br label %146

146:                                              ; preds = %143, %135
  %147 = phi ptr [ %145, %143 ], [ %139, %135 ]
  store ptr %147, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 166), align 4
  %148 = load ptr, ptr @anatop_base, align 4
  %149 = getelementptr i8, ptr %148, i32 32
  %150 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.19, i8 noundef zeroext 2, ptr noundef nonnull @pll_bypass_src_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %149, i8 noundef zeroext 14, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %151 = icmp eq ptr %150, null
  %152 = icmp ugt ptr %150, inttoptr (i32 -4096 to ptr)
  %153 = or i1 %151, %152
  br i1 %153, label %157, label %154

154:                                              ; preds = %146
  %155 = getelementptr inbounds %struct.clk_hw, ptr %150, i32 0, i32 1
  %156 = load ptr, ptr %155, align 4
  br label %157

157:                                              ; preds = %154, %146
  %158 = phi ptr [ %156, %154 ], [ %150, %146 ]
  store ptr %158, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 167), align 4
  %159 = load ptr, ptr @anatop_base, align 4
  %160 = getelementptr i8, ptr %159, i32 624
  %161 = tail call ptr @imx_clk_hw_pllv3(i32 noundef 7, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.13, ptr noundef %160, i32 noundef 1) #3
  %162 = icmp eq ptr %161, null
  %163 = icmp ugt ptr %161, inttoptr (i32 -4096 to ptr)
  %164 = or i1 %162, %163
  br i1 %164, label %168, label %165

165:                                              ; preds = %157
  %166 = getelementptr inbounds %struct.clk_hw, ptr %161, i32 0, i32 1
  %167 = load ptr, ptr %166, align 4
  br label %168

168:                                              ; preds = %165, %157
  %169 = phi ptr [ %167, %165 ], [ %161, %157 ]
  store ptr %169, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 168), align 4
  %170 = load ptr, ptr @anatop_base, align 4
  %171 = getelementptr i8, ptr %170, i32 48
  %172 = tail call ptr @imx_clk_hw_pllv3(i32 noundef 7, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.14, ptr noundef %171, i32 noundef 1) #3
  %173 = icmp eq ptr %172, null
  %174 = icmp ugt ptr %172, inttoptr (i32 -4096 to ptr)
  %175 = or i1 %173, %174
  br i1 %175, label %179, label %176

176:                                              ; preds = %168
  %177 = getelementptr inbounds %struct.clk_hw, ptr %172, i32 0, i32 1
  %178 = load ptr, ptr %177, align 4
  br label %179

179:                                              ; preds = %176, %168
  %180 = phi ptr [ %178, %176 ], [ %172, %168 ]
  store ptr %180, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 169), align 4
  %181 = load ptr, ptr @anatop_base, align 4
  %182 = getelementptr i8, ptr %181, i32 16
  %183 = tail call ptr @imx_clk_hw_pllv3(i32 noundef 3, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.15, ptr noundef %182, i32 noundef 2) #3
  %184 = icmp eq ptr %183, null
  %185 = icmp ugt ptr %183, inttoptr (i32 -4096 to ptr)
  %186 = or i1 %184, %185
  br i1 %186, label %190, label %187

187:                                              ; preds = %179
  %188 = getelementptr inbounds %struct.clk_hw, ptr %183, i32 0, i32 1
  %189 = load ptr, ptr %188, align 4
  br label %190

190:                                              ; preds = %187, %179
  %191 = phi ptr [ %189, %187 ], [ %183, %179 ]
  store ptr %191, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 170), align 4
  %192 = load ptr, ptr @anatop_base, align 4
  %193 = getelementptr i8, ptr %192, i32 112
  %194 = tail call ptr @imx_clk_hw_pllv3(i32 noundef 4, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.16, ptr noundef %193, i32 noundef 127) #3
  %195 = icmp eq ptr %194, null
  %196 = icmp ugt ptr %194, inttoptr (i32 -4096 to ptr)
  %197 = or i1 %195, %196
  br i1 %197, label %201, label %198

198:                                              ; preds = %190
  %199 = getelementptr inbounds %struct.clk_hw, ptr %194, i32 0, i32 1
  %200 = load ptr, ptr %199, align 4
  br label %201

201:                                              ; preds = %198, %190
  %202 = phi ptr [ %200, %198 ], [ %194, %190 ]
  store ptr %202, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 171), align 4
  %203 = load ptr, ptr @anatop_base, align 4
  %204 = getelementptr i8, ptr %203, i32 224
  %205 = tail call ptr @imx_clk_hw_pllv3(i32 noundef 5, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.17, ptr noundef %204, i32 noundef 3) #3
  %206 = icmp eq ptr %205, null
  %207 = icmp ugt ptr %205, inttoptr (i32 -4096 to ptr)
  %208 = or i1 %206, %207
  br i1 %208, label %212, label %209

209:                                              ; preds = %201
  %210 = getelementptr inbounds %struct.clk_hw, ptr %205, i32 0, i32 1
  %211 = load ptr, ptr %210, align 4
  br label %212

212:                                              ; preds = %209, %201
  %213 = phi ptr [ %211, %209 ], [ %205, %201 ]
  store ptr %213, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 172), align 4
  %214 = load ptr, ptr @anatop_base, align 4
  %215 = getelementptr i8, ptr %214, i32 160
  %216 = tail call ptr @imx_clk_hw_pllv3(i32 noundef 4, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.18, ptr noundef %215, i32 noundef 127) #3
  %217 = icmp eq ptr %216, null
  %218 = icmp ugt ptr %216, inttoptr (i32 -4096 to ptr)
  %219 = or i1 %217, %218
  br i1 %219, label %223, label %220

220:                                              ; preds = %212
  %221 = getelementptr inbounds %struct.clk_hw, ptr %216, i32 0, i32 1
  %222 = load ptr, ptr %221, align 4
  br label %223

223:                                              ; preds = %220, %212
  %224 = phi ptr [ %222, %220 ], [ %216, %212 ]
  store ptr %224, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 173), align 4
  %225 = load ptr, ptr @anatop_base, align 4
  %226 = getelementptr i8, ptr %225, i32 32
  %227 = tail call ptr @imx_clk_hw_pllv3(i32 noundef 3, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.19, ptr noundef %226, i32 noundef 2) #3
  %228 = icmp eq ptr %227, null
  %229 = icmp ugt ptr %227, inttoptr (i32 -4096 to ptr)
  %230 = or i1 %228, %229
  br i1 %230, label %234, label %231

231:                                              ; preds = %223
  %232 = getelementptr inbounds %struct.clk_hw, ptr %227, i32 0, i32 1
  %233 = load ptr, ptr %232, align 4
  br label %234

234:                                              ; preds = %231, %223
  %235 = phi ptr [ %233, %231 ], [ %227, %223 ]
  store ptr %235, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 174), align 4
  %236 = load ptr, ptr @anatop_base, align 4
  %237 = getelementptr i8, ptr %236, i32 624
  %238 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.27, i8 noundef zeroext 2, ptr noundef nonnull @pll1_bypass_sels, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %237, i8 noundef zeroext 16, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %239 = icmp eq ptr %238, null
  %240 = icmp ugt ptr %238, inttoptr (i32 -4096 to ptr)
  %241 = or i1 %239, %240
  br i1 %241, label %245, label %242

242:                                              ; preds = %234
  %243 = getelementptr inbounds %struct.clk_hw, ptr %238, i32 0, i32 1
  %244 = load ptr, ptr %243, align 4
  br label %245

245:                                              ; preds = %242, %234
  %246 = phi ptr [ %244, %242 ], [ %238, %234 ]
  store ptr %246, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 175), align 4
  %247 = load ptr, ptr @anatop_base, align 4
  %248 = getelementptr i8, ptr %247, i32 48
  %249 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.28, i8 noundef zeroext 2, ptr noundef nonnull @pll2_bypass_sels, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %248, i8 noundef zeroext 16, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %250 = icmp eq ptr %249, null
  %251 = icmp ugt ptr %249, inttoptr (i32 -4096 to ptr)
  %252 = or i1 %250, %251
  br i1 %252, label %256, label %253

253:                                              ; preds = %245
  %254 = getelementptr inbounds %struct.clk_hw, ptr %249, i32 0, i32 1
  %255 = load ptr, ptr %254, align 4
  br label %256

256:                                              ; preds = %253, %245
  %257 = phi ptr [ %255, %253 ], [ %249, %245 ]
  store ptr %257, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 176), align 4
  %258 = load ptr, ptr @anatop_base, align 4
  %259 = getelementptr i8, ptr %258, i32 16
  %260 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.29, i8 noundef zeroext 2, ptr noundef nonnull @pll3_bypass_sels, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %259, i8 noundef zeroext 16, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %261 = icmp eq ptr %260, null
  %262 = icmp ugt ptr %260, inttoptr (i32 -4096 to ptr)
  %263 = or i1 %261, %262
  br i1 %263, label %267, label %264

264:                                              ; preds = %256
  %265 = getelementptr inbounds %struct.clk_hw, ptr %260, i32 0, i32 1
  %266 = load ptr, ptr %265, align 4
  br label %267

267:                                              ; preds = %264, %256
  %268 = phi ptr [ %266, %264 ], [ %260, %256 ]
  store ptr %268, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 177), align 4
  %269 = load ptr, ptr @anatop_base, align 4
  %270 = getelementptr i8, ptr %269, i32 112
  %271 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.30, i8 noundef zeroext 2, ptr noundef nonnull @pll4_bypass_sels, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %270, i8 noundef zeroext 16, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %272 = icmp eq ptr %271, null
  %273 = icmp ugt ptr %271, inttoptr (i32 -4096 to ptr)
  %274 = or i1 %272, %273
  br i1 %274, label %278, label %275

275:                                              ; preds = %267
  %276 = getelementptr inbounds %struct.clk_hw, ptr %271, i32 0, i32 1
  %277 = load ptr, ptr %276, align 4
  br label %278

278:                                              ; preds = %275, %267
  %279 = phi ptr [ %277, %275 ], [ %271, %267 ]
  store ptr %279, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 178), align 4
  %280 = load ptr, ptr @anatop_base, align 4
  %281 = getelementptr i8, ptr %280, i32 224
  %282 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.31, i8 noundef zeroext 2, ptr noundef nonnull @pll5_bypass_sels, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %281, i8 noundef zeroext 16, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %283 = icmp eq ptr %282, null
  %284 = icmp ugt ptr %282, inttoptr (i32 -4096 to ptr)
  %285 = or i1 %283, %284
  br i1 %285, label %289, label %286

286:                                              ; preds = %278
  %287 = getelementptr inbounds %struct.clk_hw, ptr %282, i32 0, i32 1
  %288 = load ptr, ptr %287, align 4
  br label %289

289:                                              ; preds = %286, %278
  %290 = phi ptr [ %288, %286 ], [ %282, %278 ]
  store ptr %290, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 179), align 4
  %291 = load ptr, ptr @anatop_base, align 4
  %292 = getelementptr i8, ptr %291, i32 160
  %293 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.32, i8 noundef zeroext 2, ptr noundef nonnull @pll6_bypass_sels, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %292, i8 noundef zeroext 16, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %294 = icmp eq ptr %293, null
  %295 = icmp ugt ptr %293, inttoptr (i32 -4096 to ptr)
  %296 = or i1 %294, %295
  br i1 %296, label %300, label %297

297:                                              ; preds = %289
  %298 = getelementptr inbounds %struct.clk_hw, ptr %293, i32 0, i32 1
  %299 = load ptr, ptr %298, align 4
  br label %300

300:                                              ; preds = %297, %289
  %301 = phi ptr [ %299, %297 ], [ %293, %289 ]
  store ptr %301, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 180), align 4
  %302 = load ptr, ptr @anatop_base, align 4
  %303 = getelementptr i8, ptr %302, i32 32
  %304 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.33, i8 noundef zeroext 2, ptr noundef nonnull @pll7_bypass_sels, ptr noundef null, ptr noundef null, i32 noundef 132, ptr noundef %303, i8 noundef zeroext 16, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %305 = icmp eq ptr %304, null
  %306 = icmp ugt ptr %304, inttoptr (i32 -4096 to ptr)
  %307 = or i1 %305, %306
  br i1 %307, label %311, label %308

308:                                              ; preds = %300
  %309 = getelementptr inbounds %struct.clk_hw, ptr %304, i32 0, i32 1
  %310 = load ptr, ptr %309, align 4
  br label %311

311:                                              ; preds = %308, %300
  %312 = phi ptr [ %310, %308 ], [ %304, %300 ]
  store ptr %312, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 181), align 4
  %313 = load ptr, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 175), align 4
  %314 = load ptr, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 168), align 4
  %315 = tail call i32 @clk_set_parent(ptr noundef %313, ptr noundef %314) #3
  %316 = load ptr, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 176), align 4
  %317 = load ptr, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 169), align 4
  %318 = tail call i32 @clk_set_parent(ptr noundef %316, ptr noundef %317) #3
  %319 = load ptr, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 177), align 4
  %320 = load ptr, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 170), align 4
  %321 = tail call i32 @clk_set_parent(ptr noundef %319, ptr noundef %320) #3
  %322 = load ptr, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 178), align 4
  %323 = load ptr, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 171), align 4
  %324 = tail call i32 @clk_set_parent(ptr noundef %322, ptr noundef %323) #3
  %325 = load ptr, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 179), align 4
  %326 = load ptr, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 172), align 4
  %327 = tail call i32 @clk_set_parent(ptr noundef %325, ptr noundef %326) #3
  %328 = load ptr, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 180), align 4
  %329 = load ptr, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 173), align 4
  %330 = tail call i32 @clk_set_parent(ptr noundef %328, ptr noundef %329) #3
  %331 = load ptr, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 181), align 4
  %332 = load ptr, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 174), align 4
  %333 = tail call i32 @clk_set_parent(ptr noundef %331, ptr noundef %332) #3
  %334 = load ptr, ptr @anatop_base, align 4
  %335 = getelementptr i8, ptr %334, i32 624
  %336 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.27, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %335, i8 noundef zeroext 13, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #3
  %337 = icmp eq ptr %336, null
  %338 = icmp ugt ptr %336, inttoptr (i32 -4096 to ptr)
  %339 = or i1 %337, %338
  br i1 %339, label %343, label %340

340:                                              ; preds = %311
  %341 = getelementptr inbounds %struct.clk_hw, ptr %336, i32 0, i32 1
  %342 = load ptr, ptr %341, align 4
  br label %343

343:                                              ; preds = %340, %311
  %344 = phi ptr [ %342, %340 ], [ %336, %311 ]
  store ptr %344, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 11), align 4
  %345 = load ptr, ptr @anatop_base, align 4
  %346 = getelementptr i8, ptr %345, i32 48
  %347 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.28, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %346, i8 noundef zeroext 13, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #3
  %348 = icmp eq ptr %347, null
  %349 = icmp ugt ptr %347, inttoptr (i32 -4096 to ptr)
  %350 = or i1 %348, %349
  br i1 %350, label %354, label %351

351:                                              ; preds = %343
  %352 = getelementptr inbounds %struct.clk_hw, ptr %347, i32 0, i32 1
  %353 = load ptr, ptr %352, align 4
  br label %354

354:                                              ; preds = %351, %343
  %355 = phi ptr [ %353, %351 ], [ %347, %343 ]
  store ptr %355, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 16), align 4
  %356 = load ptr, ptr @anatop_base, align 4
  %357 = getelementptr i8, ptr %356, i32 16
  %358 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.29, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %357, i8 noundef zeroext 13, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #3
  %359 = icmp eq ptr %358, null
  %360 = icmp ugt ptr %358, inttoptr (i32 -4096 to ptr)
  %361 = or i1 %359, %360
  br i1 %361, label %365, label %362

362:                                              ; preds = %354
  %363 = getelementptr inbounds %struct.clk_hw, ptr %358, i32 0, i32 1
  %364 = load ptr, ptr %363, align 4
  br label %365

365:                                              ; preds = %362, %354
  %366 = phi ptr [ %364, %362 ], [ %358, %354 ]
  store ptr %366, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 21), align 4
  %367 = load ptr, ptr @anatop_base, align 4
  %368 = getelementptr i8, ptr %367, i32 112
  %369 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.30, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %368, i8 noundef zeroext 13, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #3
  %370 = icmp eq ptr %369, null
  %371 = icmp ugt ptr %369, inttoptr (i32 -4096 to ptr)
  %372 = or i1 %370, %371
  br i1 %372, label %376, label %373

373:                                              ; preds = %365
  %374 = getelementptr inbounds %struct.clk_hw, ptr %369, i32 0, i32 1
  %375 = load ptr, ptr %374, align 4
  br label %376

376:                                              ; preds = %373, %365
  %377 = phi ptr [ %375, %373 ], [ %369, %365 ]
  store ptr %377, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 26), align 4
  %378 = load ptr, ptr @anatop_base, align 4
  %379 = getelementptr i8, ptr %378, i32 224
  %380 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.31, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %379, i8 noundef zeroext 13, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #3
  %381 = icmp eq ptr %380, null
  %382 = icmp ugt ptr %380, inttoptr (i32 -4096 to ptr)
  %383 = or i1 %381, %382
  br i1 %383, label %387, label %384

384:                                              ; preds = %376
  %385 = getelementptr inbounds %struct.clk_hw, ptr %380, i32 0, i32 1
  %386 = load ptr, ptr %385, align 4
  br label %387

387:                                              ; preds = %384, %376
  %388 = phi ptr [ %386, %384 ], [ %380, %376 ]
  store ptr %388, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 27), align 4
  %389 = load ptr, ptr @anatop_base, align 4
  %390 = getelementptr i8, ptr %389, i32 160
  %391 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.32, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %390, i8 noundef zeroext 13, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #3
  %392 = icmp eq ptr %391, null
  %393 = icmp ugt ptr %391, inttoptr (i32 -4096 to ptr)
  %394 = or i1 %392, %393
  br i1 %394, label %398, label %395

395:                                              ; preds = %387
  %396 = getelementptr inbounds %struct.clk_hw, ptr %391, i32 0, i32 1
  %397 = load ptr, ptr %396, align 4
  br label %398

398:                                              ; preds = %395, %387
  %399 = phi ptr [ %397, %395 ], [ %391, %387 ]
  store ptr %399, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 28), align 4
  %400 = load ptr, ptr @anatop_base, align 4
  %401 = getelementptr i8, ptr %400, i32 32
  %402 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.33, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %401, i8 noundef zeroext 13, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #3
  %403 = icmp eq ptr %402, null
  %404 = icmp ugt ptr %402, inttoptr (i32 -4096 to ptr)
  %405 = or i1 %403, %404
  br i1 %405, label %409, label %406

406:                                              ; preds = %398
  %407 = getelementptr inbounds %struct.clk_hw, ptr %402, i32 0, i32 1
  %408 = load ptr, ptr %407, align 4
  br label %409

409:                                              ; preds = %406, %398
  %410 = phi ptr [ %408, %406 ], [ %402, %398 ]
  store ptr %410, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 156), align 4
  %411 = load ptr, ptr @anatop_base, align 4
  %412 = getelementptr i8, ptr %411, i32 352
  %413 = tail call ptr @imx_clk_hw_gate_exclusive(ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.8, ptr noundef %412, i8 noundef zeroext 12, i32 noundef 1024) #3
  %414 = icmp eq ptr %413, null
  %415 = icmp ugt ptr %413, inttoptr (i32 -4096 to ptr)
  %416 = or i1 %414, %415
  br i1 %416, label %420, label %417

417:                                              ; preds = %409
  %418 = getelementptr inbounds %struct.clk_hw, ptr %413, i32 0, i32 1
  %419 = load ptr, ptr %418, align 4
  br label %420

420:                                              ; preds = %417, %409
  %421 = phi ptr [ %419, %417 ], [ %413, %409 ]
  store ptr %421, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 159), align 4
  %422 = load ptr, ptr @anatop_base, align 4
  %423 = getelementptr i8, ptr %422, i32 688
  %424 = tail call ptr @imx_clk_hw_pfd(ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.34, ptr noundef %423, i8 noundef zeroext 0) #3
  %425 = icmp eq ptr %424, null
  %426 = icmp ugt ptr %424, inttoptr (i32 -4096 to ptr)
  %427 = or i1 %425, %426
  br i1 %427, label %431, label %428

428:                                              ; preds = %420
  %429 = getelementptr inbounds %struct.clk_hw, ptr %424, i32 0, i32 1
  %430 = load ptr, ptr %429, align 4
  br label %431

431:                                              ; preds = %428, %420
  %432 = phi ptr [ %430, %428 ], [ %424, %420 ]
  store ptr %432, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 12), align 4
  %433 = load ptr, ptr @anatop_base, align 4
  %434 = getelementptr i8, ptr %433, i32 688
  %435 = tail call ptr @imx_clk_hw_pfd(ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.34, ptr noundef %434, i8 noundef zeroext 1) #3
  %436 = icmp eq ptr %435, null
  %437 = icmp ugt ptr %435, inttoptr (i32 -4096 to ptr)
  %438 = or i1 %436, %437
  br i1 %438, label %442, label %439

439:                                              ; preds = %431
  %440 = getelementptr inbounds %struct.clk_hw, ptr %435, i32 0, i32 1
  %441 = load ptr, ptr %440, align 4
  br label %442

442:                                              ; preds = %439, %431
  %443 = phi ptr [ %441, %439 ], [ %435, %431 ]
  store ptr %443, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 13), align 4
  %444 = load ptr, ptr @anatop_base, align 4
  %445 = getelementptr i8, ptr %444, i32 688
  %446 = tail call ptr @imx_clk_hw_pfd(ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.34, ptr noundef %445, i8 noundef zeroext 2) #3
  %447 = icmp eq ptr %446, null
  %448 = icmp ugt ptr %446, inttoptr (i32 -4096 to ptr)
  %449 = or i1 %447, %448
  br i1 %449, label %453, label %450

450:                                              ; preds = %442
  %451 = getelementptr inbounds %struct.clk_hw, ptr %446, i32 0, i32 1
  %452 = load ptr, ptr %451, align 4
  br label %453

453:                                              ; preds = %450, %442
  %454 = phi ptr [ %452, %450 ], [ %446, %442 ]
  store ptr %454, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 14), align 4
  %455 = load ptr, ptr @anatop_base, align 4
  %456 = getelementptr i8, ptr %455, i32 688
  %457 = tail call ptr @imx_clk_hw_pfd(ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.34, ptr noundef %456, i8 noundef zeroext 3) #3
  %458 = icmp eq ptr %457, null
  %459 = icmp ugt ptr %457, inttoptr (i32 -4096 to ptr)
  %460 = or i1 %458, %459
  br i1 %460, label %464, label %461

461:                                              ; preds = %453
  %462 = getelementptr inbounds %struct.clk_hw, ptr %457, i32 0, i32 1
  %463 = load ptr, ptr %462, align 4
  br label %464

464:                                              ; preds = %461, %453
  %465 = phi ptr [ %463, %461 ], [ %457, %453 ]
  store ptr %465, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 15), align 4
  %466 = load ptr, ptr @anatop_base, align 4
  %467 = getelementptr i8, ptr %466, i32 256
  %468 = tail call ptr @imx_clk_hw_pfd(ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.35, ptr noundef %467, i8 noundef zeroext 0) #3
  %469 = icmp eq ptr %468, null
  %470 = icmp ugt ptr %468, inttoptr (i32 -4096 to ptr)
  %471 = or i1 %469, %470
  br i1 %471, label %475, label %472

472:                                              ; preds = %464
  %473 = getelementptr inbounds %struct.clk_hw, ptr %468, i32 0, i32 1
  %474 = load ptr, ptr %473, align 4
  br label %475

475:                                              ; preds = %472, %464
  %476 = phi ptr [ %474, %472 ], [ %468, %464 ]
  store ptr %476, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 17), align 4
  %477 = load ptr, ptr @anatop_base, align 4
  %478 = getelementptr i8, ptr %477, i32 256
  %479 = tail call ptr @imx_clk_hw_pfd(ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.35, ptr noundef %478, i8 noundef zeroext 1) #3
  %480 = icmp eq ptr %479, null
  %481 = icmp ugt ptr %479, inttoptr (i32 -4096 to ptr)
  %482 = or i1 %480, %481
  br i1 %482, label %486, label %483

483:                                              ; preds = %475
  %484 = getelementptr inbounds %struct.clk_hw, ptr %479, i32 0, i32 1
  %485 = load ptr, ptr %484, align 4
  br label %486

486:                                              ; preds = %483, %475
  %487 = phi ptr [ %485, %483 ], [ %479, %475 ]
  store ptr %487, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 18), align 4
  %488 = load ptr, ptr @anatop_base, align 4
  %489 = getelementptr i8, ptr %488, i32 256
  %490 = tail call ptr @imx_clk_hw_pfd(ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.35, ptr noundef %489, i8 noundef zeroext 2) #3
  %491 = icmp eq ptr %490, null
  %492 = icmp ugt ptr %490, inttoptr (i32 -4096 to ptr)
  %493 = or i1 %491, %492
  br i1 %493, label %497, label %494

494:                                              ; preds = %486
  %495 = getelementptr inbounds %struct.clk_hw, ptr %490, i32 0, i32 1
  %496 = load ptr, ptr %495, align 4
  br label %497

497:                                              ; preds = %494, %486
  %498 = phi ptr [ %496, %494 ], [ %490, %486 ]
  store ptr %498, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 19), align 4
  %499 = load ptr, ptr @anatop_base, align 4
  %500 = getelementptr i8, ptr %499, i32 256
  %501 = tail call ptr @imx_clk_hw_pfd(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.35, ptr noundef %500, i8 noundef zeroext 3) #3
  %502 = icmp eq ptr %501, null
  %503 = icmp ugt ptr %501, inttoptr (i32 -4096 to ptr)
  %504 = or i1 %502, %503
  br i1 %504, label %508, label %505

505:                                              ; preds = %497
  %506 = getelementptr inbounds %struct.clk_hw, ptr %501, i32 0, i32 1
  %507 = load ptr, ptr %506, align 4
  br label %508

508:                                              ; preds = %505, %497
  %509 = phi ptr [ %507, %505 ], [ %501, %497 ]
  store ptr %509, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 20), align 4
  %510 = load ptr, ptr @anatop_base, align 4
  %511 = getelementptr i8, ptr %510, i32 240
  %512 = tail call ptr @imx_clk_hw_pfd(ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.36, ptr noundef %511, i8 noundef zeroext 0) #3
  %513 = icmp eq ptr %512, null
  %514 = icmp ugt ptr %512, inttoptr (i32 -4096 to ptr)
  %515 = or i1 %513, %514
  br i1 %515, label %519, label %516

516:                                              ; preds = %508
  %517 = getelementptr inbounds %struct.clk_hw, ptr %512, i32 0, i32 1
  %518 = load ptr, ptr %517, align 4
  br label %519

519:                                              ; preds = %516, %508
  %520 = phi ptr [ %518, %516 ], [ %512, %508 ]
  store ptr %520, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 22), align 4
  %521 = load ptr, ptr @anatop_base, align 4
  %522 = getelementptr i8, ptr %521, i32 240
  %523 = tail call ptr @imx_clk_hw_pfd(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.36, ptr noundef %522, i8 noundef zeroext 1) #3
  %524 = icmp eq ptr %523, null
  %525 = icmp ugt ptr %523, inttoptr (i32 -4096 to ptr)
  %526 = or i1 %524, %525
  br i1 %526, label %530, label %527

527:                                              ; preds = %519
  %528 = getelementptr inbounds %struct.clk_hw, ptr %523, i32 0, i32 1
  %529 = load ptr, ptr %528, align 4
  br label %530

530:                                              ; preds = %527, %519
  %531 = phi ptr [ %529, %527 ], [ %523, %519 ]
  store ptr %531, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 23), align 4
  %532 = load ptr, ptr @anatop_base, align 4
  %533 = getelementptr i8, ptr %532, i32 240
  %534 = tail call ptr @imx_clk_hw_pfd(ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.36, ptr noundef %533, i8 noundef zeroext 2) #3
  %535 = icmp eq ptr %534, null
  %536 = icmp ugt ptr %534, inttoptr (i32 -4096 to ptr)
  %537 = or i1 %535, %536
  br i1 %537, label %541, label %538

538:                                              ; preds = %530
  %539 = getelementptr inbounds %struct.clk_hw, ptr %534, i32 0, i32 1
  %540 = load ptr, ptr %539, align 4
  br label %541

541:                                              ; preds = %538, %530
  %542 = phi ptr [ %540, %538 ], [ %534, %530 ]
  store ptr %542, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 24), align 4
  %543 = load ptr, ptr @anatop_base, align 4
  %544 = getelementptr i8, ptr %543, i32 240
  %545 = tail call ptr @imx_clk_hw_pfd(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.36, ptr noundef %544, i8 noundef zeroext 3) #3
  %546 = icmp eq ptr %545, null
  %547 = icmp ugt ptr %545, inttoptr (i32 -4096 to ptr)
  %548 = or i1 %546, %547
  br i1 %548, label %552, label %549

549:                                              ; preds = %541
  %550 = getelementptr inbounds %struct.clk_hw, ptr %545, i32 0, i32 1
  %551 = load ptr, ptr %550, align 4
  br label %552

552:                                              ; preds = %549, %541
  %553 = phi ptr [ %551, %549 ], [ %545, %541 ]
  store ptr %553, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 25), align 4
  %554 = load ptr, ptr @ccm_base, align 4
  %555 = getelementptr i8, ptr %554, i32 8
  %556 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.54, i8 noundef zeroext 5, ptr noundef nonnull @pll1_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %555, i8 noundef zeroext 16, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %557 = icmp eq ptr %556, null
  %558 = icmp ugt ptr %556, inttoptr (i32 -4096 to ptr)
  %559 = or i1 %557, %558
  br i1 %559, label %563, label %560

560:                                              ; preds = %552
  %561 = getelementptr inbounds %struct.clk_hw, ptr %556, i32 0, i32 1
  %562 = load ptr, ptr %561, align 4
  br label %563

563:                                              ; preds = %560, %552
  %564 = phi ptr [ %562, %560 ], [ %556, %552 ]
  store ptr %564, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 32), align 4
  %565 = load ptr, ptr @ccm_base, align 4
  %566 = getelementptr i8, ptr %565, i32 8
  %567 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.55, i8 noundef zeroext 5, ptr noundef nonnull @pll2_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %566, i8 noundef zeroext 19, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %568 = icmp eq ptr %567, null
  %569 = icmp ugt ptr %567, inttoptr (i32 -4096 to ptr)
  %570 = or i1 %568, %569
  br i1 %570, label %574, label %571

571:                                              ; preds = %563
  %572 = getelementptr inbounds %struct.clk_hw, ptr %567, i32 0, i32 1
  %573 = load ptr, ptr %572, align 4
  br label %574

574:                                              ; preds = %571, %563
  %575 = phi ptr [ %573, %571 ], [ %567, %563 ]
  store ptr %575, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 33), align 4
  %576 = load ptr, ptr @ccm_base, align 4
  %577 = getelementptr i8, ptr %576, i32 8
  %578 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.56, i8 noundef zeroext 6, ptr noundef nonnull @sys_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %577, i8 noundef zeroext 0, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %579 = icmp eq ptr %578, null
  %580 = icmp ugt ptr %578, inttoptr (i32 -4096 to ptr)
  %581 = or i1 %579, %580
  br i1 %581, label %585, label %582

582:                                              ; preds = %574
  %583 = getelementptr inbounds %struct.clk_hw, ptr %578, i32 0, i32 1
  %584 = load ptr, ptr %583, align 4
  br label %585

585:                                              ; preds = %582, %574
  %586 = phi ptr [ %584, %582 ], [ %578, %574 ]
  store ptr %586, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 34), align 4
  %587 = load ptr, ptr @ccm_base, align 4
  %588 = getelementptr i8, ptr %587, i32 8
  %589 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.57, i8 noundef zeroext 2, ptr noundef nonnull @ddr_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %588, i8 noundef zeroext 6, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %590 = icmp eq ptr %589, null
  %591 = icmp ugt ptr %589, inttoptr (i32 -4096 to ptr)
  %592 = or i1 %590, %591
  br i1 %592, label %596, label %593

593:                                              ; preds = %585
  %594 = getelementptr inbounds %struct.clk_hw, ptr %589, i32 0, i32 1
  %595 = load ptr, ptr %594, align 4
  br label %596

596:                                              ; preds = %593, %585
  %597 = phi ptr [ %595, %593 ], [ %589, %585 ]
  store ptr %597, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 35), align 4
  %598 = load ptr, ptr @ccm_base, align 4
  %599 = getelementptr i8, ptr %598, i32 12
  %600 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.56, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %599, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %601 = icmp eq ptr %600, null
  %602 = icmp ugt ptr %600, inttoptr (i32 -4096 to ptr)
  %603 = or i1 %601, %602
  br i1 %603, label %607, label %604

604:                                              ; preds = %596
  %605 = getelementptr inbounds %struct.clk_hw, ptr %600, i32 0, i32 1
  %606 = load ptr, ptr %605, align 4
  br label %607

607:                                              ; preds = %604, %596
  %608 = phi ptr [ %606, %604 ], [ %600, %596 ]
  store ptr %608, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 36), align 4
  %609 = load ptr, ptr @ccm_base, align 4
  %610 = getelementptr i8, ptr %609, i32 12
  %611 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.58, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %610, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %612 = icmp eq ptr %611, null
  %613 = icmp ugt ptr %611, inttoptr (i32 -4096 to ptr)
  %614 = or i1 %612, %613
  br i1 %614, label %618, label %615

615:                                              ; preds = %607
  %616 = getelementptr inbounds %struct.clk_hw, ptr %611, i32 0, i32 1
  %617 = load ptr, ptr %616, align 4
  br label %618

618:                                              ; preds = %615, %607
  %619 = phi ptr [ %617, %615 ], [ %611, %607 ]
  store ptr %619, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 37), align 4
  %620 = load ptr, ptr @ccm_base, align 4
  %621 = getelementptr i8, ptr %620, i32 12
  %622 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.59, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %621, i8 noundef zeroext 11, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %623 = icmp eq ptr %622, null
  %624 = icmp ugt ptr %622, inttoptr (i32 -4096 to ptr)
  %625 = or i1 %623, %624
  br i1 %625, label %629, label %626

626:                                              ; preds = %618
  %627 = getelementptr inbounds %struct.clk_hw, ptr %622, i32 0, i32 1
  %628 = load ptr, ptr %627, align 4
  br label %629

629:                                              ; preds = %626, %618
  %630 = phi ptr [ %628, %626 ], [ %622, %618 ]
  store ptr %630, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 38), align 4
  %631 = load ptr, ptr @ccm_base, align 4
  %632 = getelementptr i8, ptr %631, i32 12
  %633 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.36, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %632, i8 noundef zeroext 20, i8 noundef zeroext 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %634 = icmp eq ptr %633, null
  %635 = icmp ugt ptr %633, inttoptr (i32 -4096 to ptr)
  %636 = or i1 %634, %635
  br i1 %636, label %640, label %637

637:                                              ; preds = %629
  %638 = getelementptr inbounds %struct.clk_hw, ptr %633, i32 0, i32 1
  %639 = load ptr, ptr %638, align 4
  br label %640

640:                                              ; preds = %637, %629
  %641 = phi ptr [ %639, %637 ], [ %633, %629 ]
  store ptr %641, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 29), align 4
  %642 = load ptr, ptr @ccm_base, align 4
  %643 = getelementptr i8, ptr %642, i32 12
  %644 = tail call ptr @clk_register_divider_table(ptr noundef null, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.37, i32 noundef 0, ptr noundef %643, i8 noundef zeroext 6, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @pll4_audio_div_table, ptr noundef nonnull @imx_ccm_lock) #3
  store ptr %644, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 30), align 4
  %645 = load ptr, ptr @ccm_base, align 4
  %646 = getelementptr i8, ptr %645, i32 12
  %647 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.39, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %646, i8 noundef zeroext 21, i8 noundef zeroext 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %648 = icmp eq ptr %647, null
  %649 = icmp ugt ptr %647, inttoptr (i32 -4096 to ptr)
  %650 = or i1 %648, %649
  br i1 %650, label %654, label %651

651:                                              ; preds = %640
  %652 = getelementptr inbounds %struct.clk_hw, ptr %647, i32 0, i32 1
  %653 = load ptr, ptr %652, align 4
  br label %654

654:                                              ; preds = %651, %640
  %655 = phi ptr [ %653, %651 ], [ %647, %640 ]
  store ptr %655, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 31), align 4
  %656 = load ptr, ptr @ccm_base, align 4
  %657 = getelementptr i8, ptr %656, i32 88
  %658 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.57, i32 noundef 4, ptr noundef %657, i8 noundef zeroext 28, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %659 = icmp eq ptr %658, null
  %660 = icmp ugt ptr %658, inttoptr (i32 -4096 to ptr)
  %661 = or i1 %659, %660
  br i1 %661, label %665, label %662

662:                                              ; preds = %654
  %663 = getelementptr inbounds %struct.clk_hw, ptr %658, i32 0, i32 1
  %664 = load ptr, ptr %663, align 4
  br label %665

665:                                              ; preds = %662, %654
  %666 = phi ptr [ %664, %662 ], [ %658, %654 ]
  store ptr %666, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 185), align 4
  %667 = load ptr, ptr @ccm_base, align 4
  %668 = getelementptr i8, ptr %667, i32 80
  %669 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.60, i32 noundef 4, ptr noundef %668, i8 noundef zeroext 20, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %670 = icmp eq ptr %669, null
  %671 = icmp ugt ptr %669, inttoptr (i32 -4096 to ptr)
  %672 = or i1 %670, %671
  br i1 %672, label %676, label %673

673:                                              ; preds = %665
  %674 = getelementptr inbounds %struct.clk_hw, ptr %669, i32 0, i32 1
  %675 = load ptr, ptr %674, align 4
  br label %676

676:                                              ; preds = %673, %665
  %677 = phi ptr [ %675, %673 ], [ %669, %665 ]
  store ptr %677, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 186), align 4
  %678 = load ptr, ptr @anatop_base, align 4
  %679 = getelementptr i8, ptr %678, i32 16
  %680 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.36, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %679, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #3
  %681 = icmp eq ptr %680, null
  %682 = icmp ugt ptr %680, inttoptr (i32 -4096 to ptr)
  %683 = or i1 %681, %682
  br i1 %683, label %687, label %684

684:                                              ; preds = %676
  %685 = getelementptr inbounds %struct.clk_hw, ptr %680, i32 0, i32 1
  %686 = load ptr, ptr %685, align 4
  br label %687

687:                                              ; preds = %684, %676
  %688 = phi ptr [ %686, %684 ], [ %680, %676 ]
  store ptr %688, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 157), align 4
  %689 = load ptr, ptr @anatop_base, align 4
  %690 = getelementptr i8, ptr %689, i32 32
  %691 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.40, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %690, i8 noundef zeroext 6, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #3
  %692 = icmp eq ptr %691, null
  %693 = icmp ugt ptr %691, inttoptr (i32 -4096 to ptr)
  %694 = or i1 %692, %693
  br i1 %694, label %698, label %695

695:                                              ; preds = %687
  %696 = getelementptr inbounds %struct.clk_hw, ptr %691, i32 0, i32 1
  %697 = load ptr, ptr %696, align 4
  br label %698

698:                                              ; preds = %695, %687
  %699 = phi ptr [ %697, %695 ], [ %691, %687 ]
  store ptr %699, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 158), align 4
  %700 = load ptr, ptr @ccm_base, align 4
  %701 = getelementptr i8, ptr %700, i32 68
  %702 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.60, i32 noundef 4, ptr noundef %701, i8 noundef zeroext 8, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %703 = icmp eq ptr %702, null
  %704 = icmp ugt ptr %702, inttoptr (i32 -4096 to ptr)
  %705 = or i1 %703, %704
  br i1 %705, label %709, label %706

706:                                              ; preds = %698
  %707 = getelementptr inbounds %struct.clk_hw, ptr %702, i32 0, i32 1
  %708 = load ptr, ptr %707, align 4
  br label %709

709:                                              ; preds = %706, %698
  %710 = phi ptr [ %708, %706 ], [ %702, %698 ]
  store ptr %710, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 113), align 4
  %711 = load ptr, ptr @ccm_base, align 4
  %712 = getelementptr i8, ptr %711, i32 92
  %713 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.60, i32 noundef 4, ptr noundef %712, i8 noundef zeroext 8, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %714 = icmp eq ptr %713, null
  %715 = icmp ugt ptr %713, inttoptr (i32 -4096 to ptr)
  %716 = or i1 %714, %715
  br i1 %716, label %720, label %717

717:                                              ; preds = %709
  %718 = getelementptr inbounds %struct.clk_hw, ptr %713, i32 0, i32 1
  %719 = load ptr, ptr %718, align 4
  br label %720

720:                                              ; preds = %717, %709
  %721 = phi ptr [ %719, %717 ], [ %713, %709 ]
  store ptr %721, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 114), align 4
  %722 = load ptr, ptr @ccm_base, align 4
  %723 = getelementptr i8, ptr %722, i32 16
  %724 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.70, i8 noundef zeroext 4, ptr noundef nonnull @qspi_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %723, i8 noundef zeroext 22, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %725 = icmp eq ptr %724, null
  %726 = icmp ugt ptr %724, inttoptr (i32 -4096 to ptr)
  %727 = or i1 %725, %726
  br i1 %727, label %731, label %728

728:                                              ; preds = %720
  %729 = getelementptr inbounds %struct.clk_hw, ptr %724, i32 0, i32 1
  %730 = load ptr, ptr %729, align 4
  br label %731

731:                                              ; preds = %728, %720
  %732 = phi ptr [ %730, %728 ], [ %724, %720 ]
  store ptr %732, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 115), align 4
  %733 = load ptr, ptr @ccm_base, align 4
  %734 = getelementptr i8, ptr %733, i32 28
  %735 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.70, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %734, i8 noundef zeroext 4, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #3
  %736 = icmp eq ptr %735, null
  %737 = icmp ugt ptr %735, inttoptr (i32 -4096 to ptr)
  %738 = or i1 %736, %737
  br i1 %738, label %742, label %739

739:                                              ; preds = %731
  %740 = getelementptr inbounds %struct.clk_hw, ptr %735, i32 0, i32 1
  %741 = load ptr, ptr %740, align 4
  br label %742

742:                                              ; preds = %739, %731
  %743 = phi ptr [ %741, %739 ], [ %735, %731 ]
  store ptr %743, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 116), align 4
  %744 = load ptr, ptr @ccm_base, align 4
  %745 = getelementptr i8, ptr %744, i32 28
  %746 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.71, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %745, i8 noundef zeroext 0, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %747 = icmp eq ptr %746, null
  %748 = icmp ugt ptr %746, inttoptr (i32 -4096 to ptr)
  %749 = or i1 %747, %748
  br i1 %749, label %753, label %750

750:                                              ; preds = %742
  %751 = getelementptr inbounds %struct.clk_hw, ptr %746, i32 0, i32 1
  %752 = load ptr, ptr %751, align 4
  br label %753

753:                                              ; preds = %750, %742
  %754 = phi ptr [ %752, %750 ], [ %746, %742 ]
  store ptr %754, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 117), align 4
  %755 = load ptr, ptr @ccm_base, align 4
  %756 = getelementptr i8, ptr %755, i32 28
  %757 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.72, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %756, i8 noundef zeroext 2, i8 noundef zeroext 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %758 = icmp eq ptr %757, null
  %759 = icmp ugt ptr %757, inttoptr (i32 -4096 to ptr)
  %760 = or i1 %758, %759
  br i1 %760, label %764, label %761

761:                                              ; preds = %753
  %762 = getelementptr inbounds %struct.clk_hw, ptr %757, i32 0, i32 1
  %763 = load ptr, ptr %762, align 4
  br label %764

764:                                              ; preds = %761, %753
  %765 = phi ptr [ %763, %761 ], [ %757, %753 ]
  store ptr %765, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 118), align 4
  %766 = load ptr, ptr @ccm_base, align 4
  %767 = getelementptr i8, ptr %766, i32 28
  %768 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.73, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %767, i8 noundef zeroext 3, i8 noundef zeroext 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %769 = icmp eq ptr %768, null
  %770 = icmp ugt ptr %768, inttoptr (i32 -4096 to ptr)
  %771 = or i1 %769, %770
  br i1 %771, label %775, label %772

772:                                              ; preds = %764
  %773 = getelementptr inbounds %struct.clk_hw, ptr %768, i32 0, i32 1
  %774 = load ptr, ptr %773, align 4
  br label %775

775:                                              ; preds = %772, %764
  %776 = phi ptr [ %774, %772 ], [ %768, %764 ]
  store ptr %776, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 119), align 4
  %777 = load ptr, ptr @ccm_base, align 4
  %778 = getelementptr i8, ptr %777, i32 72
  %779 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.74, i32 noundef 4, ptr noundef %778, i8 noundef zeroext 8, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %780 = icmp eq ptr %779, null
  %781 = icmp ugt ptr %779, inttoptr (i32 -4096 to ptr)
  %782 = or i1 %780, %781
  br i1 %782, label %786, label %783

783:                                              ; preds = %775
  %784 = getelementptr inbounds %struct.clk_hw, ptr %779, i32 0, i32 1
  %785 = load ptr, ptr %784, align 4
  br label %786

786:                                              ; preds = %783, %775
  %787 = phi ptr [ %785, %783 ], [ %779, %775 ]
  store ptr %787, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 125), align 4
  %788 = load ptr, ptr @ccm_base, align 4
  %789 = getelementptr i8, ptr %788, i32 16
  %790 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.76, i8 noundef zeroext 4, ptr noundef nonnull @qspi_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %789, i8 noundef zeroext 24, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %791 = icmp eq ptr %790, null
  %792 = icmp ugt ptr %790, inttoptr (i32 -4096 to ptr)
  %793 = or i1 %791, %792
  br i1 %793, label %797, label %794

794:                                              ; preds = %786
  %795 = getelementptr inbounds %struct.clk_hw, ptr %790, i32 0, i32 1
  %796 = load ptr, ptr %795, align 4
  br label %797

797:                                              ; preds = %794, %786
  %798 = phi ptr [ %796, %794 ], [ %790, %786 ]
  store ptr %798, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 120), align 4
  %799 = load ptr, ptr @ccm_base, align 4
  %800 = getelementptr i8, ptr %799, i32 28
  %801 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.76, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %800, i8 noundef zeroext 12, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #3
  %802 = icmp eq ptr %801, null
  %803 = icmp ugt ptr %801, inttoptr (i32 -4096 to ptr)
  %804 = or i1 %802, %803
  br i1 %804, label %808, label %805

805:                                              ; preds = %797
  %806 = getelementptr inbounds %struct.clk_hw, ptr %801, i32 0, i32 1
  %807 = load ptr, ptr %806, align 4
  br label %808

808:                                              ; preds = %805, %797
  %809 = phi ptr [ %807, %805 ], [ %801, %797 ]
  store ptr %809, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 121), align 4
  %810 = load ptr, ptr @ccm_base, align 4
  %811 = getelementptr i8, ptr %810, i32 28
  %812 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.77, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %811, i8 noundef zeroext 8, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %813 = icmp eq ptr %812, null
  %814 = icmp ugt ptr %812, inttoptr (i32 -4096 to ptr)
  %815 = or i1 %813, %814
  br i1 %815, label %819, label %816

816:                                              ; preds = %808
  %817 = getelementptr inbounds %struct.clk_hw, ptr %812, i32 0, i32 1
  %818 = load ptr, ptr %817, align 4
  br label %819

819:                                              ; preds = %816, %808
  %820 = phi ptr [ %818, %816 ], [ %812, %808 ]
  store ptr %820, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 122), align 4
  %821 = load ptr, ptr @ccm_base, align 4
  %822 = getelementptr i8, ptr %821, i32 28
  %823 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.78, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %822, i8 noundef zeroext 10, i8 noundef zeroext 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %824 = icmp eq ptr %823, null
  %825 = icmp ugt ptr %823, inttoptr (i32 -4096 to ptr)
  %826 = or i1 %824, %825
  br i1 %826, label %830, label %827

827:                                              ; preds = %819
  %828 = getelementptr inbounds %struct.clk_hw, ptr %823, i32 0, i32 1
  %829 = load ptr, ptr %828, align 4
  br label %830

830:                                              ; preds = %827, %819
  %831 = phi ptr [ %829, %827 ], [ %823, %819 ]
  store ptr %831, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 123), align 4
  %832 = load ptr, ptr @ccm_base, align 4
  %833 = getelementptr i8, ptr %832, i32 28
  %834 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.79, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %833, i8 noundef zeroext 11, i8 noundef zeroext 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %835 = icmp eq ptr %834, null
  %836 = icmp ugt ptr %834, inttoptr (i32 -4096 to ptr)
  %837 = or i1 %835, %836
  br i1 %837, label %841, label %838

838:                                              ; preds = %830
  %839 = getelementptr inbounds %struct.clk_hw, ptr %834, i32 0, i32 1
  %840 = load ptr, ptr %839, align 4
  br label %841

841:                                              ; preds = %838, %830
  %842 = phi ptr [ %840, %838 ], [ %834, %830 ]
  store ptr %842, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 124), align 4
  %843 = load ptr, ptr @ccm_base, align 4
  %844 = getelementptr i8, ptr %843, i32 96
  %845 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.80, i32 noundef 4, ptr noundef %844, i8 noundef zeroext 8, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %846 = icmp eq ptr %845, null
  %847 = icmp ugt ptr %845, inttoptr (i32 -4096 to ptr)
  %848 = or i1 %846, %847
  br i1 %848, label %852, label %849

849:                                              ; preds = %841
  %850 = getelementptr inbounds %struct.clk_hw, ptr %845, i32 0, i32 1
  %851 = load ptr, ptr %850, align 4
  br label %852

852:                                              ; preds = %849, %841
  %853 = phi ptr [ %851, %849 ], [ %845, %841 ]
  store ptr %853, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 126), align 4
  %854 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.38, i32 noundef 4, i32 noundef 1, i32 noundef 10) #3
  %855 = icmp eq ptr %854, null
  %856 = icmp ugt ptr %854, inttoptr (i32 -4096 to ptr)
  %857 = or i1 %855, %856
  br i1 %857, label %861, label %858

858:                                              ; preds = %852
  %859 = getelementptr inbounds %struct.clk_hw, ptr %854, i32 0, i32 1
  %860 = load ptr, ptr %859, align 4
  br label %861

861:                                              ; preds = %858, %852
  %862 = phi ptr [ %860, %858 ], [ %854, %852 ]
  store ptr %862, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 66), align 4
  %863 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.38, i32 noundef 4, i32 noundef 1, i32 noundef 20) #3
  %864 = icmp eq ptr %863, null
  %865 = icmp ugt ptr %863, inttoptr (i32 -4096 to ptr)
  %866 = or i1 %864, %865
  br i1 %866, label %870, label %867

867:                                              ; preds = %861
  %868 = getelementptr inbounds %struct.clk_hw, ptr %863, i32 0, i32 1
  %869 = load ptr, ptr %868, align 4
  br label %870

870:                                              ; preds = %867, %861
  %871 = phi ptr [ %869, %867 ], [ %863, %861 ]
  store ptr %871, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 67), align 4
  %872 = load ptr, ptr @ccm_base, align 4
  %873 = getelementptr i8, ptr %872, i32 32
  %874 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.84, i8 noundef zeroext 4, ptr noundef nonnull @rmii_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %873, i8 noundef zeroext 4, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %875 = icmp eq ptr %874, null
  %876 = icmp ugt ptr %874, inttoptr (i32 -4096 to ptr)
  %877 = or i1 %875, %876
  br i1 %877, label %881, label %878

878:                                              ; preds = %870
  %879 = getelementptr inbounds %struct.clk_hw, ptr %874, i32 0, i32 1
  %880 = load ptr, ptr %879, align 4
  br label %881

881:                                              ; preds = %878, %870
  %882 = phi ptr [ %880, %878 ], [ %874, %870 ]
  store ptr %882, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 68), align 4
  %883 = load ptr, ptr @ccm_base, align 4
  %884 = getelementptr i8, ptr %883, i32 32
  %885 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.85, i8 noundef zeroext 7, ptr noundef nonnull @enet_ts_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %884, i8 noundef zeroext 0, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %886 = icmp eq ptr %885, null
  %887 = icmp ugt ptr %885, inttoptr (i32 -4096 to ptr)
  %888 = or i1 %886, %887
  br i1 %888, label %892, label %889

889:                                              ; preds = %881
  %890 = getelementptr inbounds %struct.clk_hw, ptr %885, i32 0, i32 1
  %891 = load ptr, ptr %890, align 4
  br label %892

892:                                              ; preds = %889, %881
  %893 = phi ptr [ %891, %889 ], [ %885, %881 ]
  store ptr %893, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 70), align 4
  %894 = load ptr, ptr @ccm_base, align 4
  %895 = getelementptr i8, ptr %894, i32 20
  %896 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.84, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %895, i8 noundef zeroext 24, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #3
  %897 = icmp eq ptr %896, null
  %898 = icmp ugt ptr %896, inttoptr (i32 -4096 to ptr)
  %899 = or i1 %897, %898
  br i1 %899, label %903, label %900

900:                                              ; preds = %892
  %901 = getelementptr inbounds %struct.clk_hw, ptr %896, i32 0, i32 1
  %902 = load ptr, ptr %901, align 4
  br label %903

903:                                              ; preds = %900, %892
  %904 = phi ptr [ %902, %900 ], [ %896, %892 ]
  store ptr %904, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 69), align 4
  %905 = load ptr, ptr @ccm_base, align 4
  %906 = getelementptr i8, ptr %905, i32 20
  %907 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.85, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %906, i8 noundef zeroext 23, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #3
  %908 = icmp eq ptr %907, null
  %909 = icmp ugt ptr %907, inttoptr (i32 -4096 to ptr)
  %910 = or i1 %908, %909
  br i1 %910, label %914, label %911

911:                                              ; preds = %903
  %912 = getelementptr inbounds %struct.clk_hw, ptr %907, i32 0, i32 1
  %913 = load ptr, ptr %912, align 4
  br label %914

914:                                              ; preds = %911, %903
  %915 = phi ptr [ %913, %911 ], [ %907, %903 ]
  store ptr %915, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 71), align 4
  %916 = load ptr, ptr @ccm_base, align 4
  %917 = getelementptr i8, ptr %916, i32 100
  %918 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.60, i32 noundef 4, ptr noundef %917, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %919 = icmp eq ptr %918, null
  %920 = icmp ugt ptr %918, inttoptr (i32 -4096 to ptr)
  %921 = or i1 %919, %920
  br i1 %921, label %925, label %922

922:                                              ; preds = %914
  %923 = getelementptr inbounds %struct.clk_hw, ptr %918, i32 0, i32 1
  %924 = load ptr, ptr %923, align 4
  br label %925

925:                                              ; preds = %922, %914
  %926 = phi ptr [ %924, %922 ], [ %918, %914 ]
  store ptr %926, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 148), align 4
  %927 = load ptr, ptr @ccm_base, align 4
  %928 = getelementptr i8, ptr %927, i32 100
  %929 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.60, i32 noundef 4, ptr noundef %928, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %930 = icmp eq ptr %929, null
  %931 = icmp ugt ptr %929, inttoptr (i32 -4096 to ptr)
  %932 = or i1 %930, %931
  br i1 %932, label %936, label %933

933:                                              ; preds = %925
  %934 = getelementptr inbounds %struct.clk_hw, ptr %929, i32 0, i32 1
  %935 = load ptr, ptr %934, align 4
  br label %936

936:                                              ; preds = %933, %925
  %937 = phi ptr [ %935, %933 ], [ %929, %925 ]
  store ptr %937, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 149), align 4
  %938 = load ptr, ptr @ccm_base, align 4
  %939 = getelementptr i8, ptr %938, i32 68
  %940 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.60, i32 noundef 4, ptr noundef %939, i8 noundef zeroext 14, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %941 = icmp eq ptr %940, null
  %942 = icmp ugt ptr %940, inttoptr (i32 -4096 to ptr)
  %943 = or i1 %941, %942
  br i1 %943, label %947, label %944

944:                                              ; preds = %936
  %945 = getelementptr inbounds %struct.clk_hw, ptr %940, i32 0, i32 1
  %946 = load ptr, ptr %945, align 4
  br label %947

947:                                              ; preds = %944, %936
  %948 = phi ptr [ %946, %944 ], [ %940, %936 ]
  store ptr %948, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 45), align 4
  %949 = load ptr, ptr @ccm_base, align 4
  %950 = getelementptr i8, ptr %949, i32 64
  %951 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.91, ptr noundef nonnull @.str.60, i32 noundef 4, ptr noundef %950, i8 noundef zeroext 14, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %952 = icmp eq ptr %951, null
  %953 = icmp ugt ptr %951, inttoptr (i32 -4096 to ptr)
  %954 = or i1 %952, %953
  br i1 %954, label %958, label %955

955:                                              ; preds = %947
  %956 = getelementptr inbounds %struct.clk_hw, ptr %951, i32 0, i32 1
  %957 = load ptr, ptr %956, align 4
  br label %958

958:                                              ; preds = %955, %947
  %959 = phi ptr [ %957, %955 ], [ %951, %947 ]
  store ptr %959, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 39), align 4
  %960 = load ptr, ptr @ccm_base, align 4
  %961 = getelementptr i8, ptr %960, i32 64
  %962 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.92, ptr noundef nonnull @.str.60, i32 noundef 4, ptr noundef %961, i8 noundef zeroext 16, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %963 = icmp eq ptr %962, null
  %964 = icmp ugt ptr %962, inttoptr (i32 -4096 to ptr)
  %965 = or i1 %963, %964
  br i1 %965, label %969, label %966

966:                                              ; preds = %958
  %967 = getelementptr inbounds %struct.clk_hw, ptr %962, i32 0, i32 1
  %968 = load ptr, ptr %967, align 4
  br label %969

969:                                              ; preds = %966, %958
  %970 = phi ptr [ %968, %966 ], [ %962, %958 ]
  store ptr %970, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 40), align 4
  %971 = load ptr, ptr @ccm_base, align 4
  %972 = getelementptr i8, ptr %971, i32 64
  %973 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.60, i32 noundef 4, ptr noundef %972, i8 noundef zeroext 18, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %974 = icmp eq ptr %973, null
  %975 = icmp ugt ptr %973, inttoptr (i32 -4096 to ptr)
  %976 = or i1 %974, %975
  br i1 %976, label %980, label %977

977:                                              ; preds = %969
  %978 = getelementptr inbounds %struct.clk_hw, ptr %973, i32 0, i32 1
  %979 = load ptr, ptr %978, align 4
  br label %980

980:                                              ; preds = %977, %969
  %981 = phi ptr [ %979, %977 ], [ %973, %969 ]
  store ptr %981, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 41), align 4
  %982 = load ptr, ptr @ccm_base, align 4
  %983 = getelementptr i8, ptr %982, i32 64
  %984 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.60, i32 noundef 4, ptr noundef %983, i8 noundef zeroext 20, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %985 = icmp eq ptr %984, null
  %986 = icmp ugt ptr %984, inttoptr (i32 -4096 to ptr)
  %987 = or i1 %985, %986
  br i1 %987, label %991, label %988

988:                                              ; preds = %980
  %989 = getelementptr inbounds %struct.clk_hw, ptr %984, i32 0, i32 1
  %990 = load ptr, ptr %989, align 4
  br label %991

991:                                              ; preds = %988, %980
  %992 = phi ptr [ %990, %988 ], [ %984, %980 ]
  store ptr %992, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 42), align 4
  %993 = load ptr, ptr @ccm_base, align 4
  %994 = getelementptr i8, ptr %993, i32 88
  %995 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.60, i32 noundef 4, ptr noundef %994, i8 noundef zeroext 18, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %996 = icmp eq ptr %995, null
  %997 = icmp ugt ptr %995, inttoptr (i32 -4096 to ptr)
  %998 = or i1 %996, %997
  br i1 %998, label %1002, label %999

999:                                              ; preds = %991
  %1000 = getelementptr inbounds %struct.clk_hw, ptr %995, i32 0, i32 1
  %1001 = load ptr, ptr %1000, align 4
  br label %1002

1002:                                             ; preds = %999, %991
  %1003 = phi ptr [ %1001, %999 ], [ %995, %991 ]
  store ptr %1003, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 43), align 4
  %1004 = load ptr, ptr @ccm_base, align 4
  %1005 = getelementptr i8, ptr %1004, i32 88
  %1006 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.60, i32 noundef 4, ptr noundef %1005, i8 noundef zeroext 20, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %1007 = icmp eq ptr %1006, null
  %1008 = icmp ugt ptr %1006, inttoptr (i32 -4096 to ptr)
  %1009 = or i1 %1007, %1008
  br i1 %1009, label %1013, label %1010

1010:                                             ; preds = %1002
  %1011 = getelementptr inbounds %struct.clk_hw, ptr %1006, i32 0, i32 1
  %1012 = load ptr, ptr %1011, align 4
  br label %1013

1013:                                             ; preds = %1010, %1002
  %1014 = phi ptr [ %1012, %1010 ], [ %1006, %1002 ]
  store ptr %1014, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 44), align 4
  %1015 = load ptr, ptr @ccm_base, align 4
  %1016 = getelementptr i8, ptr %1015, i32 80
  %1017 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.60, i32 noundef 4, ptr noundef %1016, i8 noundef zeroext 12, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %1018 = icmp eq ptr %1017, null
  %1019 = icmp ugt ptr %1017, inttoptr (i32 -4096 to ptr)
  %1020 = or i1 %1018, %1019
  br i1 %1020, label %1024, label %1021

1021:                                             ; preds = %1013
  %1022 = getelementptr inbounds %struct.clk_hw, ptr %1017, i32 0, i32 1
  %1023 = load ptr, ptr %1022, align 4
  br label %1024

1024:                                             ; preds = %1021, %1013
  %1025 = phi ptr [ %1023, %1021 ], [ %1017, %1013 ]
  store ptr %1025, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 46), align 4
  %1026 = load ptr, ptr @ccm_base, align 4
  %1027 = getelementptr i8, ptr %1026, i32 80
  %1028 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.60, i32 noundef 4, ptr noundef %1027, i8 noundef zeroext 14, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %1029 = icmp eq ptr %1028, null
  %1030 = icmp ugt ptr %1028, inttoptr (i32 -4096 to ptr)
  %1031 = or i1 %1029, %1030
  br i1 %1031, label %1035, label %1032

1032:                                             ; preds = %1024
  %1033 = getelementptr inbounds %struct.clk_hw, ptr %1028, i32 0, i32 1
  %1034 = load ptr, ptr %1033, align 4
  br label %1035

1035:                                             ; preds = %1032, %1024
  %1036 = phi ptr [ %1034, %1032 ], [ %1028, %1024 ]
  store ptr %1036, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 47), align 4
  %1037 = load ptr, ptr @ccm_base, align 4
  %1038 = getelementptr i8, ptr %1037, i32 104
  %1039 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.60, i32 noundef 4, ptr noundef %1038, i8 noundef zeroext 12, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %1040 = icmp eq ptr %1039, null
  %1041 = icmp ugt ptr %1039, inttoptr (i32 -4096 to ptr)
  %1042 = or i1 %1040, %1041
  br i1 %1042, label %1046, label %1043

1043:                                             ; preds = %1035
  %1044 = getelementptr inbounds %struct.clk_hw, ptr %1039, i32 0, i32 1
  %1045 = load ptr, ptr %1044, align 4
  br label %1046

1046:                                             ; preds = %1043, %1035
  %1047 = phi ptr [ %1045, %1043 ], [ %1039, %1035 ]
  store ptr %1047, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 48), align 4
  %1048 = load ptr, ptr @ccm_base, align 4
  %1049 = getelementptr i8, ptr %1048, i32 104
  %1050 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.60, i32 noundef 4, ptr noundef %1049, i8 noundef zeroext 14, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %1051 = icmp eq ptr %1050, null
  %1052 = icmp ugt ptr %1050, inttoptr (i32 -4096 to ptr)
  %1053 = or i1 %1051, %1052
  br i1 %1053, label %1057, label %1054

1054:                                             ; preds = %1046
  %1055 = getelementptr inbounds %struct.clk_hw, ptr %1050, i32 0, i32 1
  %1056 = load ptr, ptr %1055, align 4
  br label %1057

1057:                                             ; preds = %1054, %1046
  %1058 = phi ptr [ %1056, %1054 ], [ %1050, %1046 ]
  store ptr %1058, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 49), align 4
  %1059 = load ptr, ptr @ccm_base, align 4
  %1060 = getelementptr i8, ptr %1059, i32 64
  %1061 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.60, i32 noundef 4, ptr noundef %1060, i8 noundef zeroext 24, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %1062 = icmp eq ptr %1061, null
  %1063 = icmp ugt ptr %1061, inttoptr (i32 -4096 to ptr)
  %1064 = or i1 %1062, %1063
  br i1 %1064, label %1068, label %1065

1065:                                             ; preds = %1057
  %1066 = getelementptr inbounds %struct.clk_hw, ptr %1061, i32 0, i32 1
  %1067 = load ptr, ptr %1066, align 4
  br label %1068

1068:                                             ; preds = %1065, %1057
  %1069 = phi ptr [ %1067, %1065 ], [ %1061, %1057 ]
  store ptr %1069, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 72), align 4
  %1070 = load ptr, ptr @ccm_base, align 4
  %1071 = getelementptr i8, ptr %1070, i32 64
  %1072 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.60, i32 noundef 4, ptr noundef %1071, i8 noundef zeroext 26, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %1073 = icmp eq ptr %1072, null
  %1074 = icmp ugt ptr %1072, inttoptr (i32 -4096 to ptr)
  %1075 = or i1 %1073, %1074
  br i1 %1075, label %1079, label %1076

1076:                                             ; preds = %1068
  %1077 = getelementptr inbounds %struct.clk_hw, ptr %1072, i32 0, i32 1
  %1078 = load ptr, ptr %1077, align 4
  br label %1079

1079:                                             ; preds = %1076, %1068
  %1080 = phi ptr [ %1078, %1076 ], [ %1072, %1068 ]
  store ptr %1080, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 73), align 4
  %1081 = load ptr, ptr @ccm_base, align 4
  %1082 = getelementptr i8, ptr %1081, i32 88
  %1083 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.60, i32 noundef 4, ptr noundef %1082, i8 noundef zeroext 24, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %1084 = icmp eq ptr %1083, null
  %1085 = icmp ugt ptr %1083, inttoptr (i32 -4096 to ptr)
  %1086 = or i1 %1084, %1085
  br i1 %1086, label %1090, label %1087

1087:                                             ; preds = %1079
  %1088 = getelementptr inbounds %struct.clk_hw, ptr %1083, i32 0, i32 1
  %1089 = load ptr, ptr %1088, align 4
  br label %1090

1090:                                             ; preds = %1087, %1079
  %1091 = phi ptr [ %1089, %1087 ], [ %1083, %1079 ]
  store ptr %1091, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 74), align 4
  %1092 = load ptr, ptr @ccm_base, align 4
  %1093 = getelementptr i8, ptr %1092, i32 88
  %1094 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.104, ptr noundef nonnull @.str.60, i32 noundef 4, ptr noundef %1093, i8 noundef zeroext 26, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %1095 = icmp eq ptr %1094, null
  %1096 = icmp ugt ptr %1094, inttoptr (i32 -4096 to ptr)
  %1097 = or i1 %1095, %1096
  br i1 %1097, label %1101, label %1098

1098:                                             ; preds = %1090
  %1099 = getelementptr inbounds %struct.clk_hw, ptr %1094, i32 0, i32 1
  %1100 = load ptr, ptr %1099, align 4
  br label %1101

1101:                                             ; preds = %1098, %1090
  %1102 = phi ptr [ %1100, %1098 ], [ %1094, %1090 ]
  store ptr %1102, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 75), align 4
  %1103 = load ptr, ptr @ccm_base, align 4
  %1104 = getelementptr i8, ptr %1103, i32 68
  %1105 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.105, ptr noundef nonnull @.str.60, i32 noundef 4, ptr noundef %1104, i8 noundef zeroext 6, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %1106 = icmp eq ptr %1105, null
  %1107 = icmp ugt ptr %1105, inttoptr (i32 -4096 to ptr)
  %1108 = or i1 %1106, %1107
  br i1 %1108, label %1112, label %1109

1109:                                             ; preds = %1101
  %1110 = getelementptr inbounds %struct.clk_hw, ptr %1105, i32 0, i32 1
  %1111 = load ptr, ptr %1110, align 4
  br label %1112

1112:                                             ; preds = %1109, %1101
  %1113 = phi ptr [ %1111, %1109 ], [ %1105, %1101 ]
  store ptr %1113, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 190), align 4
  %1114 = load ptr, ptr @ccm_base, align 4
  %1115 = getelementptr i8, ptr %1114, i32 68
  %1116 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.106, ptr noundef nonnull @.str.60, i32 noundef 4, ptr noundef %1115, i8 noundef zeroext 28, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %1117 = icmp eq ptr %1116, null
  %1118 = icmp ugt ptr %1116, inttoptr (i32 -4096 to ptr)
  %1119 = or i1 %1117, %1118
  br i1 %1119, label %1123, label %1120

1120:                                             ; preds = %1112
  %1121 = getelementptr inbounds %struct.clk_hw, ptr %1116, i32 0, i32 1
  %1122 = load ptr, ptr %1121, align 4
  br label %1123

1123:                                             ; preds = %1120, %1112
  %1124 = phi ptr [ %1122, %1120 ], [ %1116, %1112 ]
  store ptr %1124, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 76), align 4
  %1125 = load ptr, ptr @ccm_base, align 4
  %1126 = getelementptr i8, ptr %1125, i32 16
  %1127 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.107, i8 noundef zeroext 4, ptr noundef nonnull @esdhc_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %1126, i8 noundef zeroext 16, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %1128 = icmp eq ptr %1127, null
  %1129 = icmp ugt ptr %1127, inttoptr (i32 -4096 to ptr)
  %1130 = or i1 %1128, %1129
  br i1 %1130, label %1134, label %1131

1131:                                             ; preds = %1123
  %1132 = getelementptr inbounds %struct.clk_hw, ptr %1127, i32 0, i32 1
  %1133 = load ptr, ptr %1132, align 4
  br label %1134

1134:                                             ; preds = %1131, %1123
  %1135 = phi ptr [ %1133, %1131 ], [ %1127, %1123 ]
  store ptr %1135, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 77), align 4
  %1136 = load ptr, ptr @ccm_base, align 4
  %1137 = getelementptr i8, ptr %1136, i32 24
  %1138 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.107, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %1137, i8 noundef zeroext 28, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #3
  %1139 = icmp eq ptr %1138, null
  %1140 = icmp ugt ptr %1138, inttoptr (i32 -4096 to ptr)
  %1141 = or i1 %1139, %1140
  br i1 %1141, label %1145, label %1142

1142:                                             ; preds = %1134
  %1143 = getelementptr inbounds %struct.clk_hw, ptr %1138, i32 0, i32 1
  %1144 = load ptr, ptr %1143, align 4
  br label %1145

1145:                                             ; preds = %1142, %1134
  %1146 = phi ptr [ %1144, %1142 ], [ %1138, %1134 ]
  store ptr %1146, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 78), align 4
  %1147 = load ptr, ptr @ccm_base, align 4
  %1148 = getelementptr i8, ptr %1147, i32 24
  %1149 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.109, ptr noundef nonnull @.str.108, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %1148, i8 noundef zeroext 16, i8 noundef zeroext 4, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %1150 = icmp eq ptr %1149, null
  %1151 = icmp ugt ptr %1149, inttoptr (i32 -4096 to ptr)
  %1152 = or i1 %1150, %1151
  br i1 %1152, label %1156, label %1153

1153:                                             ; preds = %1145
  %1154 = getelementptr inbounds %struct.clk_hw, ptr %1149, i32 0, i32 1
  %1155 = load ptr, ptr %1154, align 4
  br label %1156

1156:                                             ; preds = %1153, %1145
  %1157 = phi ptr [ %1155, %1153 ], [ %1149, %1145 ]
  store ptr %1157, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 79), align 4
  %1158 = load ptr, ptr @ccm_base, align 4
  %1159 = getelementptr i8, ptr %1158, i32 92
  %1160 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.110, ptr noundef nonnull @.str.109, i32 noundef 4, ptr noundef %1159, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %1161 = icmp eq ptr %1160, null
  %1162 = icmp ugt ptr %1160, inttoptr (i32 -4096 to ptr)
  %1163 = or i1 %1161, %1162
  br i1 %1163, label %1167, label %1164

1164:                                             ; preds = %1156
  %1165 = getelementptr inbounds %struct.clk_hw, ptr %1160, i32 0, i32 1
  %1166 = load ptr, ptr %1165, align 4
  br label %1167

1167:                                             ; preds = %1164, %1156
  %1168 = phi ptr [ %1166, %1164 ], [ %1160, %1156 ]
  store ptr %1168, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 80), align 4
  %1169 = load ptr, ptr @ccm_base, align 4
  %1170 = getelementptr i8, ptr %1169, i32 16
  %1171 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.111, i8 noundef zeroext 4, ptr noundef nonnull @esdhc_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %1170, i8 noundef zeroext 18, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %1172 = icmp eq ptr %1171, null
  %1173 = icmp ugt ptr %1171, inttoptr (i32 -4096 to ptr)
  %1174 = or i1 %1172, %1173
  br i1 %1174, label %1178, label %1175

1175:                                             ; preds = %1167
  %1176 = getelementptr inbounds %struct.clk_hw, ptr %1171, i32 0, i32 1
  %1177 = load ptr, ptr %1176, align 4
  br label %1178

1178:                                             ; preds = %1175, %1167
  %1179 = phi ptr [ %1177, %1175 ], [ %1171, %1167 ]
  store ptr %1179, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 81), align 4
  %1180 = load ptr, ptr @ccm_base, align 4
  %1181 = getelementptr i8, ptr %1180, i32 24
  %1182 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.111, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %1181, i8 noundef zeroext 29, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #3
  %1183 = icmp eq ptr %1182, null
  %1184 = icmp ugt ptr %1182, inttoptr (i32 -4096 to ptr)
  %1185 = or i1 %1183, %1184
  br i1 %1185, label %1189, label %1186

1186:                                             ; preds = %1178
  %1187 = getelementptr inbounds %struct.clk_hw, ptr %1182, i32 0, i32 1
  %1188 = load ptr, ptr %1187, align 4
  br label %1189

1189:                                             ; preds = %1186, %1178
  %1190 = phi ptr [ %1188, %1186 ], [ %1182, %1178 ]
  store ptr %1190, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 82), align 4
  %1191 = load ptr, ptr @ccm_base, align 4
  %1192 = getelementptr i8, ptr %1191, i32 24
  %1193 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.113, ptr noundef nonnull @.str.112, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %1192, i8 noundef zeroext 20, i8 noundef zeroext 4, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %1194 = icmp eq ptr %1193, null
  %1195 = icmp ugt ptr %1193, inttoptr (i32 -4096 to ptr)
  %1196 = or i1 %1194, %1195
  br i1 %1196, label %1200, label %1197

1197:                                             ; preds = %1189
  %1198 = getelementptr inbounds %struct.clk_hw, ptr %1193, i32 0, i32 1
  %1199 = load ptr, ptr %1198, align 4
  br label %1200

1200:                                             ; preds = %1197, %1189
  %1201 = phi ptr [ %1199, %1197 ], [ %1193, %1189 ]
  store ptr %1201, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 83), align 4
  %1202 = load ptr, ptr @ccm_base, align 4
  %1203 = getelementptr i8, ptr %1202, i32 92
  %1204 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.114, ptr noundef nonnull @.str.113, i32 noundef 4, ptr noundef %1203, i8 noundef zeroext 4, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %1205 = icmp eq ptr %1204, null
  %1206 = icmp ugt ptr %1204, inttoptr (i32 -4096 to ptr)
  %1207 = or i1 %1205, %1206
  br i1 %1207, label %1211, label %1208

1208:                                             ; preds = %1200
  %1209 = getelementptr inbounds %struct.clk_hw, ptr %1204, i32 0, i32 1
  %1210 = load ptr, ptr %1209, align 4
  br label %1211

1211:                                             ; preds = %1208, %1200
  %1212 = phi ptr [ %1210, %1208 ], [ %1204, %1200 ]
  store ptr %1212, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 84), align 4
  %1213 = load ptr, ptr @ccm_base, align 4
  %1214 = getelementptr i8, ptr %1213, i32 32
  %1215 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.115, i8 noundef zeroext 4, ptr noundef nonnull @ftm_ext_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %1214, i8 noundef zeroext 6, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %1216 = icmp eq ptr %1215, null
  %1217 = icmp ugt ptr %1215, inttoptr (i32 -4096 to ptr)
  %1218 = or i1 %1216, %1217
  br i1 %1218, label %1222, label %1219

1219:                                             ; preds = %1211
  %1220 = getelementptr inbounds %struct.clk_hw, ptr %1215, i32 0, i32 1
  %1221 = load ptr, ptr %1220, align 4
  br label %1222

1222:                                             ; preds = %1219, %1211
  %1223 = phi ptr [ %1221, %1219 ], [ %1215, %1211 ]
  store ptr %1223, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 50), align 4
  %1224 = load ptr, ptr @ccm_base, align 4
  %1225 = getelementptr i8, ptr %1224, i32 32
  %1226 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.116, i8 noundef zeroext 2, ptr noundef nonnull @ftm_fix_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %1225, i8 noundef zeroext 14, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %1227 = icmp eq ptr %1226, null
  %1228 = icmp ugt ptr %1226, inttoptr (i32 -4096 to ptr)
  %1229 = or i1 %1227, %1228
  br i1 %1229, label %1233, label %1230

1230:                                             ; preds = %1222
  %1231 = getelementptr inbounds %struct.clk_hw, ptr %1226, i32 0, i32 1
  %1232 = load ptr, ptr %1231, align 4
  br label %1233

1233:                                             ; preds = %1230, %1222
  %1234 = phi ptr [ %1232, %1230 ], [ %1226, %1222 ]
  store ptr %1234, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 51), align 4
  %1235 = load ptr, ptr @ccm_base, align 4
  %1236 = getelementptr i8, ptr %1235, i32 20
  %1237 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.117, ptr noundef nonnull @.str, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %1236, i8 noundef zeroext 25, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #3
  %1238 = icmp eq ptr %1237, null
  %1239 = icmp ugt ptr %1237, inttoptr (i32 -4096 to ptr)
  %1240 = or i1 %1238, %1239
  br i1 %1240, label %1244, label %1241

1241:                                             ; preds = %1233
  %1242 = getelementptr inbounds %struct.clk_hw, ptr %1237, i32 0, i32 1
  %1243 = load ptr, ptr %1242, align 4
  br label %1244

1244:                                             ; preds = %1241, %1233
  %1245 = phi ptr [ %1243, %1241 ], [ %1237, %1233 ]
  store ptr %1245, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 52), align 4
  %1246 = load ptr, ptr @ccm_base, align 4
  %1247 = getelementptr i8, ptr %1246, i32 32
  %1248 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.118, i8 noundef zeroext 4, ptr noundef nonnull @ftm_ext_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %1247, i8 noundef zeroext 8, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %1249 = icmp eq ptr %1248, null
  %1250 = icmp ugt ptr %1248, inttoptr (i32 -4096 to ptr)
  %1251 = or i1 %1249, %1250
  br i1 %1251, label %1255, label %1252

1252:                                             ; preds = %1244
  %1253 = getelementptr inbounds %struct.clk_hw, ptr %1248, i32 0, i32 1
  %1254 = load ptr, ptr %1253, align 4
  br label %1255

1255:                                             ; preds = %1252, %1244
  %1256 = phi ptr [ %1254, %1252 ], [ %1248, %1244 ]
  store ptr %1256, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 53), align 4
  %1257 = load ptr, ptr @ccm_base, align 4
  %1258 = getelementptr i8, ptr %1257, i32 32
  %1259 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.119, i8 noundef zeroext 2, ptr noundef nonnull @ftm_fix_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %1258, i8 noundef zeroext 15, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %1260 = icmp eq ptr %1259, null
  %1261 = icmp ugt ptr %1259, inttoptr (i32 -4096 to ptr)
  %1262 = or i1 %1260, %1261
  br i1 %1262, label %1266, label %1263

1263:                                             ; preds = %1255
  %1264 = getelementptr inbounds %struct.clk_hw, ptr %1259, i32 0, i32 1
  %1265 = load ptr, ptr %1264, align 4
  br label %1266

1266:                                             ; preds = %1263, %1255
  %1267 = phi ptr [ %1265, %1263 ], [ %1259, %1255 ]
  store ptr %1267, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 54), align 4
  %1268 = load ptr, ptr @ccm_base, align 4
  %1269 = getelementptr i8, ptr %1268, i32 20
  %1270 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.120, ptr noundef nonnull @.str, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %1269, i8 noundef zeroext 26, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #3
  %1271 = icmp eq ptr %1270, null
  %1272 = icmp ugt ptr %1270, inttoptr (i32 -4096 to ptr)
  %1273 = or i1 %1271, %1272
  br i1 %1273, label %1277, label %1274

1274:                                             ; preds = %1266
  %1275 = getelementptr inbounds %struct.clk_hw, ptr %1270, i32 0, i32 1
  %1276 = load ptr, ptr %1275, align 4
  br label %1277

1277:                                             ; preds = %1274, %1266
  %1278 = phi ptr [ %1276, %1274 ], [ %1270, %1266 ]
  store ptr %1278, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 55), align 4
  %1279 = load ptr, ptr @ccm_base, align 4
  %1280 = getelementptr i8, ptr %1279, i32 32
  %1281 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.121, i8 noundef zeroext 4, ptr noundef nonnull @ftm_ext_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %1280, i8 noundef zeroext 10, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %1282 = icmp eq ptr %1281, null
  %1283 = icmp ugt ptr %1281, inttoptr (i32 -4096 to ptr)
  %1284 = or i1 %1282, %1283
  br i1 %1284, label %1288, label %1285

1285:                                             ; preds = %1277
  %1286 = getelementptr inbounds %struct.clk_hw, ptr %1281, i32 0, i32 1
  %1287 = load ptr, ptr %1286, align 4
  br label %1288

1288:                                             ; preds = %1285, %1277
  %1289 = phi ptr [ %1287, %1285 ], [ %1281, %1277 ]
  store ptr %1289, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 56), align 4
  %1290 = load ptr, ptr @ccm_base, align 4
  %1291 = getelementptr i8, ptr %1290, i32 32
  %1292 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.122, i8 noundef zeroext 2, ptr noundef nonnull @ftm_fix_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %1291, i8 noundef zeroext 16, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %1293 = icmp eq ptr %1292, null
  %1294 = icmp ugt ptr %1292, inttoptr (i32 -4096 to ptr)
  %1295 = or i1 %1293, %1294
  br i1 %1295, label %1299, label %1296

1296:                                             ; preds = %1288
  %1297 = getelementptr inbounds %struct.clk_hw, ptr %1292, i32 0, i32 1
  %1298 = load ptr, ptr %1297, align 4
  br label %1299

1299:                                             ; preds = %1296, %1288
  %1300 = phi ptr [ %1298, %1296 ], [ %1292, %1288 ]
  store ptr %1300, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 57), align 4
  %1301 = load ptr, ptr @ccm_base, align 4
  %1302 = getelementptr i8, ptr %1301, i32 20
  %1303 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.123, ptr noundef nonnull @.str, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %1302, i8 noundef zeroext 27, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #3
  %1304 = icmp eq ptr %1303, null
  %1305 = icmp ugt ptr %1303, inttoptr (i32 -4096 to ptr)
  %1306 = or i1 %1304, %1305
  br i1 %1306, label %1310, label %1307

1307:                                             ; preds = %1299
  %1308 = getelementptr inbounds %struct.clk_hw, ptr %1303, i32 0, i32 1
  %1309 = load ptr, ptr %1308, align 4
  br label %1310

1310:                                             ; preds = %1307, %1299
  %1311 = phi ptr [ %1309, %1307 ], [ %1303, %1299 ]
  store ptr %1311, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 58), align 4
  %1312 = load ptr, ptr @ccm_base, align 4
  %1313 = getelementptr i8, ptr %1312, i32 32
  %1314 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.124, i8 noundef zeroext 4, ptr noundef nonnull @ftm_ext_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %1313, i8 noundef zeroext 12, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %1315 = icmp eq ptr %1314, null
  %1316 = icmp ugt ptr %1314, inttoptr (i32 -4096 to ptr)
  %1317 = or i1 %1315, %1316
  br i1 %1317, label %1321, label %1318

1318:                                             ; preds = %1310
  %1319 = getelementptr inbounds %struct.clk_hw, ptr %1314, i32 0, i32 1
  %1320 = load ptr, ptr %1319, align 4
  br label %1321

1321:                                             ; preds = %1318, %1310
  %1322 = phi ptr [ %1320, %1318 ], [ %1314, %1310 ]
  store ptr %1322, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 59), align 4
  %1323 = load ptr, ptr @ccm_base, align 4
  %1324 = getelementptr i8, ptr %1323, i32 32
  %1325 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.125, i8 noundef zeroext 2, ptr noundef nonnull @ftm_fix_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %1324, i8 noundef zeroext 17, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %1326 = icmp eq ptr %1325, null
  %1327 = icmp ugt ptr %1325, inttoptr (i32 -4096 to ptr)
  %1328 = or i1 %1326, %1327
  br i1 %1328, label %1332, label %1329

1329:                                             ; preds = %1321
  %1330 = getelementptr inbounds %struct.clk_hw, ptr %1325, i32 0, i32 1
  %1331 = load ptr, ptr %1330, align 4
  br label %1332

1332:                                             ; preds = %1329, %1321
  %1333 = phi ptr [ %1331, %1329 ], [ %1325, %1321 ]
  store ptr %1333, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 60), align 4
  %1334 = load ptr, ptr @ccm_base, align 4
  %1335 = getelementptr i8, ptr %1334, i32 20
  %1336 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.126, ptr noundef nonnull @.str, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %1335, i8 noundef zeroext 28, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #3
  %1337 = icmp eq ptr %1336, null
  %1338 = icmp ugt ptr %1336, inttoptr (i32 -4096 to ptr)
  %1339 = or i1 %1337, %1338
  br i1 %1339, label %1343, label %1340

1340:                                             ; preds = %1332
  %1341 = getelementptr inbounds %struct.clk_hw, ptr %1336, i32 0, i32 1
  %1342 = load ptr, ptr %1341, align 4
  br label %1343

1343:                                             ; preds = %1340, %1332
  %1344 = phi ptr [ %1342, %1340 ], [ %1336, %1332 ]
  store ptr %1344, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 61), align 4
  %1345 = load ptr, ptr @ccm_base, align 4
  %1346 = getelementptr i8, ptr %1345, i32 68
  %1347 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.127, ptr noundef nonnull @.str.60, i32 noundef 4, ptr noundef %1346, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %1348 = icmp eq ptr %1347, null
  %1349 = icmp ugt ptr %1347, inttoptr (i32 -4096 to ptr)
  %1350 = or i1 %1348, %1349
  br i1 %1350, label %1354, label %1351

1351:                                             ; preds = %1343
  %1352 = getelementptr inbounds %struct.clk_hw, ptr %1347, i32 0, i32 1
  %1353 = load ptr, ptr %1352, align 4
  br label %1354

1354:                                             ; preds = %1351, %1343
  %1355 = phi ptr [ %1353, %1351 ], [ %1347, %1343 ]
  store ptr %1355, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 62), align 4
  %1356 = load ptr, ptr @ccm_base, align 4
  %1357 = getelementptr i8, ptr %1356, i32 68
  %1358 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.128, ptr noundef nonnull @.str.60, i32 noundef 4, ptr noundef %1357, i8 noundef zeroext 18, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %1359 = icmp eq ptr %1358, null
  %1360 = icmp ugt ptr %1358, inttoptr (i32 -4096 to ptr)
  %1361 = or i1 %1359, %1360
  br i1 %1361, label %1365, label %1362

1362:                                             ; preds = %1354
  %1363 = getelementptr inbounds %struct.clk_hw, ptr %1358, i32 0, i32 1
  %1364 = load ptr, ptr %1363, align 4
  br label %1365

1365:                                             ; preds = %1362, %1354
  %1366 = phi ptr [ %1364, %1362 ], [ %1358, %1354 ]
  store ptr %1366, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 63), align 4
  %1367 = load ptr, ptr @ccm_base, align 4
  %1368 = getelementptr i8, ptr %1367, i32 92
  %1369 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.129, ptr noundef nonnull @.str.60, i32 noundef 4, ptr noundef %1368, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %1370 = icmp eq ptr %1369, null
  %1371 = icmp ugt ptr %1369, inttoptr (i32 -4096 to ptr)
  %1372 = or i1 %1370, %1371
  br i1 %1372, label %1376, label %1373

1373:                                             ; preds = %1365
  %1374 = getelementptr inbounds %struct.clk_hw, ptr %1369, i32 0, i32 1
  %1375 = load ptr, ptr %1374, align 4
  br label %1376

1376:                                             ; preds = %1373, %1365
  %1377 = phi ptr [ %1375, %1373 ], [ %1369, %1365 ]
  store ptr %1377, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 64), align 4
  %1378 = load ptr, ptr @ccm_base, align 4
  %1379 = getelementptr i8, ptr %1378, i32 92
  %1380 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.130, ptr noundef nonnull @.str.60, i32 noundef 4, ptr noundef %1379, i8 noundef zeroext 18, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %1381 = icmp eq ptr %1380, null
  %1382 = icmp ugt ptr %1380, inttoptr (i32 -4096 to ptr)
  %1383 = or i1 %1381, %1382
  br i1 %1383, label %1387, label %1384

1384:                                             ; preds = %1376
  %1385 = getelementptr inbounds %struct.clk_hw, ptr %1380, i32 0, i32 1
  %1386 = load ptr, ptr %1385, align 4
  br label %1387

1387:                                             ; preds = %1384, %1376
  %1388 = phi ptr [ %1386, %1384 ], [ %1380, %1376 ]
  store ptr %1388, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 65), align 4
  %1389 = load ptr, ptr @ccm_base, align 4
  %1390 = getelementptr i8, ptr %1389, i32 16
  %1391 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.131, i8 noundef zeroext 2, ptr noundef nonnull @dcu_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %1390, i8 noundef zeroext 28, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %1392 = icmp eq ptr %1391, null
  %1393 = icmp ugt ptr %1391, inttoptr (i32 -4096 to ptr)
  %1394 = or i1 %1392, %1393
  br i1 %1394, label %1398, label %1395

1395:                                             ; preds = %1387
  %1396 = getelementptr inbounds %struct.clk_hw, ptr %1391, i32 0, i32 1
  %1397 = load ptr, ptr %1396, align 4
  br label %1398

1398:                                             ; preds = %1395, %1387
  %1399 = phi ptr [ %1397, %1395 ], [ %1391, %1387 ]
  store ptr %1399, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 85), align 4
  %1400 = load ptr, ptr @ccm_base, align 4
  %1401 = getelementptr i8, ptr %1400, i32 28
  %1402 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.132, ptr noundef nonnull @.str.131, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %1401, i8 noundef zeroext 19, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #3
  %1403 = icmp eq ptr %1402, null
  %1404 = icmp ugt ptr %1402, inttoptr (i32 -4096 to ptr)
  %1405 = or i1 %1403, %1404
  br i1 %1405, label %1409, label %1406

1406:                                             ; preds = %1398
  %1407 = getelementptr inbounds %struct.clk_hw, ptr %1402, i32 0, i32 1
  %1408 = load ptr, ptr %1407, align 4
  br label %1409

1409:                                             ; preds = %1406, %1398
  %1410 = phi ptr [ %1408, %1406 ], [ %1402, %1398 ]
  store ptr %1410, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 86), align 4
  %1411 = load ptr, ptr @ccm_base, align 4
  %1412 = getelementptr i8, ptr %1411, i32 28
  %1413 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.133, ptr noundef nonnull @.str.132, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %1412, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %1414 = icmp eq ptr %1413, null
  %1415 = icmp ugt ptr %1413, inttoptr (i32 -4096 to ptr)
  %1416 = or i1 %1414, %1415
  br i1 %1416, label %1420, label %1417

1417:                                             ; preds = %1409
  %1418 = getelementptr inbounds %struct.clk_hw, ptr %1413, i32 0, i32 1
  %1419 = load ptr, ptr %1418, align 4
  br label %1420

1420:                                             ; preds = %1417, %1409
  %1421 = phi ptr [ %1419, %1417 ], [ %1413, %1409 ]
  store ptr %1421, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 87), align 4
  %1422 = load ptr, ptr @ccm_base, align 4
  %1423 = getelementptr i8, ptr %1422, i32 76
  %1424 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.134, ptr noundef nonnull @.str.60, i32 noundef 4, ptr noundef %1423, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %1425 = icmp eq ptr %1424, null
  %1426 = icmp ugt ptr %1424, inttoptr (i32 -4096 to ptr)
  %1427 = or i1 %1425, %1426
  br i1 %1427, label %1431, label %1428

1428:                                             ; preds = %1420
  %1429 = getelementptr inbounds %struct.clk_hw, ptr %1424, i32 0, i32 1
  %1430 = load ptr, ptr %1429, align 4
  br label %1431

1431:                                             ; preds = %1428, %1420
  %1432 = phi ptr [ %1430, %1428 ], [ %1424, %1420 ]
  store ptr %1432, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 88), align 4
  %1433 = load ptr, ptr @ccm_base, align 4
  %1434 = getelementptr i8, ptr %1433, i32 16
  %1435 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.135, i8 noundef zeroext 2, ptr noundef nonnull @dcu_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %1434, i8 noundef zeroext 29, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %1436 = icmp eq ptr %1435, null
  %1437 = icmp ugt ptr %1435, inttoptr (i32 -4096 to ptr)
  %1438 = or i1 %1436, %1437
  br i1 %1438, label %1442, label %1439

1439:                                             ; preds = %1431
  %1440 = getelementptr inbounds %struct.clk_hw, ptr %1435, i32 0, i32 1
  %1441 = load ptr, ptr %1440, align 4
  br label %1442

1442:                                             ; preds = %1439, %1431
  %1443 = phi ptr [ %1441, %1439 ], [ %1435, %1431 ]
  store ptr %1443, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 89), align 4
  %1444 = load ptr, ptr @ccm_base, align 4
  %1445 = getelementptr i8, ptr %1444, i32 28
  %1446 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.136, ptr noundef nonnull @.str.135, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %1445, i8 noundef zeroext 23, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #3
  %1447 = icmp eq ptr %1446, null
  %1448 = icmp ugt ptr %1446, inttoptr (i32 -4096 to ptr)
  %1449 = or i1 %1447, %1448
  br i1 %1449, label %1453, label %1450

1450:                                             ; preds = %1442
  %1451 = getelementptr inbounds %struct.clk_hw, ptr %1446, i32 0, i32 1
  %1452 = load ptr, ptr %1451, align 4
  br label %1453

1453:                                             ; preds = %1450, %1442
  %1454 = phi ptr [ %1452, %1450 ], [ %1446, %1442 ]
  store ptr %1454, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 90), align 4
  %1455 = load ptr, ptr @ccm_base, align 4
  %1456 = getelementptr i8, ptr %1455, i32 28
  %1457 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.137, ptr noundef nonnull @.str.136, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %1456, i8 noundef zeroext 20, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %1458 = icmp eq ptr %1457, null
  %1459 = icmp ugt ptr %1457, inttoptr (i32 -4096 to ptr)
  %1460 = or i1 %1458, %1459
  br i1 %1460, label %1464, label %1461

1461:                                             ; preds = %1453
  %1462 = getelementptr inbounds %struct.clk_hw, ptr %1457, i32 0, i32 1
  %1463 = load ptr, ptr %1462, align 4
  br label %1464

1464:                                             ; preds = %1461, %1453
  %1465 = phi ptr [ %1463, %1461 ], [ %1457, %1453 ]
  store ptr %1465, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 91), align 4
  %1466 = load ptr, ptr @ccm_base, align 4
  %1467 = getelementptr i8, ptr %1466, i32 100
  %1468 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.138, ptr noundef nonnull @.str.60, i32 noundef 4, ptr noundef %1467, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %1469 = icmp eq ptr %1468, null
  %1470 = icmp ugt ptr %1468, inttoptr (i32 -4096 to ptr)
  %1471 = or i1 %1469, %1470
  br i1 %1471, label %1475, label %1472

1472:                                             ; preds = %1464
  %1473 = getelementptr inbounds %struct.clk_hw, ptr %1468, i32 0, i32 1
  %1474 = load ptr, ptr %1473, align 4
  br label %1475

1475:                                             ; preds = %1472, %1464
  %1476 = phi ptr [ %1474, %1472 ], [ %1468, %1464 ]
  store ptr %1476, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 92), align 4
  %1477 = load ptr, ptr @ccm_base, align 4
  %1478 = getelementptr i8, ptr %1477, i32 68
  %1479 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.139, ptr noundef nonnull @.str.59, i32 noundef 4, ptr noundef %1478, i8 noundef zeroext 26, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %1480 = icmp eq ptr %1479, null
  %1481 = icmp ugt ptr %1479, inttoptr (i32 -4096 to ptr)
  %1482 = or i1 %1480, %1481
  br i1 %1482, label %1486, label %1483

1483:                                             ; preds = %1475
  %1484 = getelementptr inbounds %struct.clk_hw, ptr %1479, i32 0, i32 1
  %1485 = load ptr, ptr %1484, align 4
  br label %1486

1486:                                             ; preds = %1483, %1475
  %1487 = phi ptr [ %1485, %1483 ], [ %1479, %1475 ]
  store ptr %1487, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 187), align 4
  %1488 = load ptr, ptr @ccm_base, align 4
  %1489 = getelementptr i8, ptr %1488, i32 92
  %1490 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.140, ptr noundef nonnull @.str.59, i32 noundef 4, ptr noundef %1489, i8 noundef zeroext 26, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %1491 = icmp eq ptr %1490, null
  %1492 = icmp ugt ptr %1490, inttoptr (i32 -4096 to ptr)
  %1493 = or i1 %1491, %1492
  br i1 %1493, label %1497, label %1494

1494:                                             ; preds = %1486
  %1495 = getelementptr inbounds %struct.clk_hw, ptr %1490, i32 0, i32 1
  %1496 = load ptr, ptr %1495, align 4
  br label %1497

1497:                                             ; preds = %1494, %1486
  %1498 = phi ptr [ %1496, %1494 ], [ %1490, %1486 ]
  store ptr %1498, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 188), align 4
  %1499 = load ptr, ptr @ccm_base, align 4
  %1500 = getelementptr i8, ptr %1499, i32 16
  %1501 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.141, i8 noundef zeroext 4, ptr noundef nonnull @esai_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %1500, i8 noundef zeroext 20, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %1502 = icmp eq ptr %1501, null
  %1503 = icmp ugt ptr %1501, inttoptr (i32 -4096 to ptr)
  %1504 = or i1 %1502, %1503
  br i1 %1504, label %1508, label %1505

1505:                                             ; preds = %1497
  %1506 = getelementptr inbounds %struct.clk_hw, ptr %1501, i32 0, i32 1
  %1507 = load ptr, ptr %1506, align 4
  br label %1508

1508:                                             ; preds = %1505, %1497
  %1509 = phi ptr [ %1507, %1505 ], [ %1501, %1497 ]
  store ptr %1509, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 93), align 4
  %1510 = load ptr, ptr @ccm_base, align 4
  %1511 = getelementptr i8, ptr %1510, i32 24
  %1512 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.142, ptr noundef nonnull @.str.141, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %1511, i8 noundef zeroext 30, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #3
  %1513 = icmp eq ptr %1512, null
  %1514 = icmp ugt ptr %1512, inttoptr (i32 -4096 to ptr)
  %1515 = or i1 %1513, %1514
  br i1 %1515, label %1519, label %1516

1516:                                             ; preds = %1508
  %1517 = getelementptr inbounds %struct.clk_hw, ptr %1512, i32 0, i32 1
  %1518 = load ptr, ptr %1517, align 4
  br label %1519

1519:                                             ; preds = %1516, %1508
  %1520 = phi ptr [ %1518, %1516 ], [ %1512, %1508 ]
  store ptr %1520, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 94), align 4
  %1521 = load ptr, ptr @ccm_base, align 4
  %1522 = getelementptr i8, ptr %1521, i32 24
  %1523 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.143, ptr noundef nonnull @.str.142, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %1522, i8 noundef zeroext 24, i8 noundef zeroext 4, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %1524 = icmp eq ptr %1523, null
  %1525 = icmp ugt ptr %1523, inttoptr (i32 -4096 to ptr)
  %1526 = or i1 %1524, %1525
  br i1 %1526, label %1530, label %1527

1527:                                             ; preds = %1519
  %1528 = getelementptr inbounds %struct.clk_hw, ptr %1523, i32 0, i32 1
  %1529 = load ptr, ptr %1528, align 4
  br label %1530

1530:                                             ; preds = %1527, %1519
  %1531 = phi ptr [ %1529, %1527 ], [ %1523, %1519 ]
  store ptr %1531, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 95), align 4
  %1532 = load ptr, ptr @ccm_base, align 4
  %1533 = getelementptr i8, ptr %1532, i32 80
  %1534 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.144, ptr noundef nonnull @.str.143, i32 noundef 4, ptr noundef %1533, i8 noundef zeroext 4, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %1535 = icmp eq ptr %1534, null
  %1536 = icmp ugt ptr %1534, inttoptr (i32 -4096 to ptr)
  %1537 = or i1 %1535, %1536
  br i1 %1537, label %1541, label %1538

1538:                                             ; preds = %1530
  %1539 = getelementptr inbounds %struct.clk_hw, ptr %1534, i32 0, i32 1
  %1540 = load ptr, ptr %1539, align 4
  br label %1541

1541:                                             ; preds = %1538, %1530
  %1542 = phi ptr [ %1540, %1538 ], [ %1534, %1530 ]
  store ptr %1542, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 96), align 4
  %1543 = load ptr, ptr @ccm_base, align 4
  %1544 = getelementptr i8, ptr %1543, i32 16
  %1545 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.145, i8 noundef zeroext 4, ptr noundef nonnull @sai_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %1544, i8 noundef zeroext 0, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %1546 = icmp eq ptr %1545, null
  %1547 = icmp ugt ptr %1545, inttoptr (i32 -4096 to ptr)
  %1548 = or i1 %1546, %1547
  br i1 %1548, label %1552, label %1549

1549:                                             ; preds = %1541
  %1550 = getelementptr inbounds %struct.clk_hw, ptr %1545, i32 0, i32 1
  %1551 = load ptr, ptr %1550, align 4
  br label %1552

1552:                                             ; preds = %1549, %1541
  %1553 = phi ptr [ %1551, %1549 ], [ %1545, %1541 ]
  store ptr %1553, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 97), align 4
  %1554 = load ptr, ptr @ccm_base, align 4
  %1555 = getelementptr i8, ptr %1554, i32 20
  %1556 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.146, ptr noundef nonnull @.str.145, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %1555, i8 noundef zeroext 16, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #3
  %1557 = icmp eq ptr %1556, null
  %1558 = icmp ugt ptr %1556, inttoptr (i32 -4096 to ptr)
  %1559 = or i1 %1557, %1558
  br i1 %1559, label %1563, label %1560

1560:                                             ; preds = %1552
  %1561 = getelementptr inbounds %struct.clk_hw, ptr %1556, i32 0, i32 1
  %1562 = load ptr, ptr %1561, align 4
  br label %1563

1563:                                             ; preds = %1560, %1552
  %1564 = phi ptr [ %1562, %1560 ], [ %1556, %1552 ]
  store ptr %1564, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 98), align 4
  %1565 = load ptr, ptr @ccm_base, align 4
  %1566 = getelementptr i8, ptr %1565, i32 20
  %1567 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.147, ptr noundef nonnull @.str.146, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %1566, i8 noundef zeroext 0, i8 noundef zeroext 4, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %1568 = icmp eq ptr %1567, null
  %1569 = icmp ugt ptr %1567, inttoptr (i32 -4096 to ptr)
  %1570 = or i1 %1568, %1569
  br i1 %1570, label %1574, label %1571

1571:                                             ; preds = %1563
  %1572 = getelementptr inbounds %struct.clk_hw, ptr %1567, i32 0, i32 1
  %1573 = load ptr, ptr %1572, align 4
  br label %1574

1574:                                             ; preds = %1571, %1563
  %1575 = phi ptr [ %1573, %1571 ], [ %1567, %1563 ]
  store ptr %1575, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 99), align 4
  %1576 = load ptr, ptr @ccm_base, align 4
  %1577 = getelementptr i8, ptr %1576, i32 64
  %1578 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.60, i32 noundef 4, ptr noundef %1577, i8 noundef zeroext 30, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %1579 = icmp eq ptr %1578, null
  %1580 = icmp ugt ptr %1578, inttoptr (i32 -4096 to ptr)
  %1581 = or i1 %1579, %1580
  br i1 %1581, label %1585, label %1582

1582:                                             ; preds = %1574
  %1583 = getelementptr inbounds %struct.clk_hw, ptr %1578, i32 0, i32 1
  %1584 = load ptr, ptr %1583, align 4
  br label %1585

1585:                                             ; preds = %1582, %1574
  %1586 = phi ptr [ %1584, %1582 ], [ %1578, %1574 ]
  store ptr %1586, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 100), align 4
  %1587 = load ptr, ptr @ccm_base, align 4
  %1588 = getelementptr i8, ptr %1587, i32 16
  %1589 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.149, i8 noundef zeroext 4, ptr noundef nonnull @sai_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %1588, i8 noundef zeroext 2, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %1590 = icmp eq ptr %1589, null
  %1591 = icmp ugt ptr %1589, inttoptr (i32 -4096 to ptr)
  %1592 = or i1 %1590, %1591
  br i1 %1592, label %1596, label %1593

1593:                                             ; preds = %1585
  %1594 = getelementptr inbounds %struct.clk_hw, ptr %1589, i32 0, i32 1
  %1595 = load ptr, ptr %1594, align 4
  br label %1596

1596:                                             ; preds = %1593, %1585
  %1597 = phi ptr [ %1595, %1593 ], [ %1589, %1585 ]
  store ptr %1597, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 101), align 4
  %1598 = load ptr, ptr @ccm_base, align 4
  %1599 = getelementptr i8, ptr %1598, i32 20
  %1600 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.150, ptr noundef nonnull @.str.149, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %1599, i8 noundef zeroext 17, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #3
  %1601 = icmp eq ptr %1600, null
  %1602 = icmp ugt ptr %1600, inttoptr (i32 -4096 to ptr)
  %1603 = or i1 %1601, %1602
  br i1 %1603, label %1607, label %1604

1604:                                             ; preds = %1596
  %1605 = getelementptr inbounds %struct.clk_hw, ptr %1600, i32 0, i32 1
  %1606 = load ptr, ptr %1605, align 4
  br label %1607

1607:                                             ; preds = %1604, %1596
  %1608 = phi ptr [ %1606, %1604 ], [ %1600, %1596 ]
  store ptr %1608, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 102), align 4
  %1609 = load ptr, ptr @ccm_base, align 4
  %1610 = getelementptr i8, ptr %1609, i32 20
  %1611 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.151, ptr noundef nonnull @.str.150, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %1610, i8 noundef zeroext 4, i8 noundef zeroext 4, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %1612 = icmp eq ptr %1611, null
  %1613 = icmp ugt ptr %1611, inttoptr (i32 -4096 to ptr)
  %1614 = or i1 %1612, %1613
  br i1 %1614, label %1618, label %1615

1615:                                             ; preds = %1607
  %1616 = getelementptr inbounds %struct.clk_hw, ptr %1611, i32 0, i32 1
  %1617 = load ptr, ptr %1616, align 4
  br label %1618

1618:                                             ; preds = %1615, %1607
  %1619 = phi ptr [ %1617, %1615 ], [ %1611, %1607 ]
  store ptr %1619, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 103), align 4
  %1620 = load ptr, ptr @ccm_base, align 4
  %1621 = getelementptr i8, ptr %1620, i32 68
  %1622 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.152, ptr noundef nonnull @.str.60, i32 noundef 4, ptr noundef %1621, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %1623 = icmp eq ptr %1622, null
  %1624 = icmp ugt ptr %1622, inttoptr (i32 -4096 to ptr)
  %1625 = or i1 %1623, %1624
  br i1 %1625, label %1629, label %1626

1626:                                             ; preds = %1618
  %1627 = getelementptr inbounds %struct.clk_hw, ptr %1622, i32 0, i32 1
  %1628 = load ptr, ptr %1627, align 4
  br label %1629

1629:                                             ; preds = %1626, %1618
  %1630 = phi ptr [ %1628, %1626 ], [ %1622, %1618 ]
  store ptr %1630, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 104), align 4
  %1631 = load ptr, ptr @ccm_base, align 4
  %1632 = getelementptr i8, ptr %1631, i32 16
  %1633 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.153, i8 noundef zeroext 4, ptr noundef nonnull @sai_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %1632, i8 noundef zeroext 4, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %1634 = icmp eq ptr %1633, null
  %1635 = icmp ugt ptr %1633, inttoptr (i32 -4096 to ptr)
  %1636 = or i1 %1634, %1635
  br i1 %1636, label %1640, label %1637

1637:                                             ; preds = %1629
  %1638 = getelementptr inbounds %struct.clk_hw, ptr %1633, i32 0, i32 1
  %1639 = load ptr, ptr %1638, align 4
  br label %1640

1640:                                             ; preds = %1637, %1629
  %1641 = phi ptr [ %1639, %1637 ], [ %1633, %1629 ]
  store ptr %1641, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 105), align 4
  %1642 = load ptr, ptr @ccm_base, align 4
  %1643 = getelementptr i8, ptr %1642, i32 20
  %1644 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.154, ptr noundef nonnull @.str.153, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %1643, i8 noundef zeroext 18, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #3
  %1645 = icmp eq ptr %1644, null
  %1646 = icmp ugt ptr %1644, inttoptr (i32 -4096 to ptr)
  %1647 = or i1 %1645, %1646
  br i1 %1647, label %1651, label %1648

1648:                                             ; preds = %1640
  %1649 = getelementptr inbounds %struct.clk_hw, ptr %1644, i32 0, i32 1
  %1650 = load ptr, ptr %1649, align 4
  br label %1651

1651:                                             ; preds = %1648, %1640
  %1652 = phi ptr [ %1650, %1648 ], [ %1644, %1640 ]
  store ptr %1652, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 106), align 4
  %1653 = load ptr, ptr @ccm_base, align 4
  %1654 = getelementptr i8, ptr %1653, i32 20
  %1655 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.155, ptr noundef nonnull @.str.154, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %1654, i8 noundef zeroext 8, i8 noundef zeroext 4, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %1656 = icmp eq ptr %1655, null
  %1657 = icmp ugt ptr %1655, inttoptr (i32 -4096 to ptr)
  %1658 = or i1 %1656, %1657
  br i1 %1658, label %1662, label %1659

1659:                                             ; preds = %1651
  %1660 = getelementptr inbounds %struct.clk_hw, ptr %1655, i32 0, i32 1
  %1661 = load ptr, ptr %1660, align 4
  br label %1662

1662:                                             ; preds = %1659, %1651
  %1663 = phi ptr [ %1661, %1659 ], [ %1655, %1651 ]
  store ptr %1663, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 107), align 4
  %1664 = load ptr, ptr @ccm_base, align 4
  %1665 = getelementptr i8, ptr %1664, i32 68
  %1666 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.156, ptr noundef nonnull @.str.60, i32 noundef 4, ptr noundef %1665, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %1667 = icmp eq ptr %1666, null
  %1668 = icmp ugt ptr %1666, inttoptr (i32 -4096 to ptr)
  %1669 = or i1 %1667, %1668
  br i1 %1669, label %1673, label %1670

1670:                                             ; preds = %1662
  %1671 = getelementptr inbounds %struct.clk_hw, ptr %1666, i32 0, i32 1
  %1672 = load ptr, ptr %1671, align 4
  br label %1673

1673:                                             ; preds = %1670, %1662
  %1674 = phi ptr [ %1672, %1670 ], [ %1666, %1662 ]
  store ptr %1674, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 108), align 4
  %1675 = load ptr, ptr @ccm_base, align 4
  %1676 = getelementptr i8, ptr %1675, i32 16
  %1677 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.157, i8 noundef zeroext 4, ptr noundef nonnull @sai_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %1676, i8 noundef zeroext 6, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %1678 = icmp eq ptr %1677, null
  %1679 = icmp ugt ptr %1677, inttoptr (i32 -4096 to ptr)
  %1680 = or i1 %1678, %1679
  br i1 %1680, label %1684, label %1681

1681:                                             ; preds = %1673
  %1682 = getelementptr inbounds %struct.clk_hw, ptr %1677, i32 0, i32 1
  %1683 = load ptr, ptr %1682, align 4
  br label %1684

1684:                                             ; preds = %1681, %1673
  %1685 = phi ptr [ %1683, %1681 ], [ %1677, %1673 ]
  store ptr %1685, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 109), align 4
  %1686 = load ptr, ptr @ccm_base, align 4
  %1687 = getelementptr i8, ptr %1686, i32 20
  %1688 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.158, ptr noundef nonnull @.str.157, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %1687, i8 noundef zeroext 19, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #3
  %1689 = icmp eq ptr %1688, null
  %1690 = icmp ugt ptr %1688, inttoptr (i32 -4096 to ptr)
  %1691 = or i1 %1689, %1690
  br i1 %1691, label %1695, label %1692

1692:                                             ; preds = %1684
  %1693 = getelementptr inbounds %struct.clk_hw, ptr %1688, i32 0, i32 1
  %1694 = load ptr, ptr %1693, align 4
  br label %1695

1695:                                             ; preds = %1692, %1684
  %1696 = phi ptr [ %1694, %1692 ], [ %1688, %1684 ]
  store ptr %1696, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 110), align 4
  %1697 = load ptr, ptr @ccm_base, align 4
  %1698 = getelementptr i8, ptr %1697, i32 20
  %1699 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.158, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %1698, i8 noundef zeroext 12, i8 noundef zeroext 4, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %1700 = icmp eq ptr %1699, null
  %1701 = icmp ugt ptr %1699, inttoptr (i32 -4096 to ptr)
  %1702 = or i1 %1700, %1701
  br i1 %1702, label %1706, label %1703

1703:                                             ; preds = %1695
  %1704 = getelementptr inbounds %struct.clk_hw, ptr %1699, i32 0, i32 1
  %1705 = load ptr, ptr %1704, align 4
  br label %1706

1706:                                             ; preds = %1703, %1695
  %1707 = phi ptr [ %1705, %1703 ], [ %1699, %1695 ]
  store ptr %1707, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 111), align 4
  %1708 = load ptr, ptr @ccm_base, align 4
  %1709 = getelementptr i8, ptr %1708, i32 68
  %1710 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.160, ptr noundef nonnull @.str.60, i32 noundef 4, ptr noundef %1709, i8 noundef zeroext 4, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %1711 = icmp eq ptr %1710, null
  %1712 = icmp ugt ptr %1710, inttoptr (i32 -4096 to ptr)
  %1713 = or i1 %1711, %1712
  br i1 %1713, label %1717, label %1714

1714:                                             ; preds = %1706
  %1715 = getelementptr inbounds %struct.clk_hw, ptr %1710, i32 0, i32 1
  %1716 = load ptr, ptr %1715, align 4
  br label %1717

1717:                                             ; preds = %1714, %1706
  %1718 = phi ptr [ %1716, %1714 ], [ %1710, %1706 ]
  store ptr %1718, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 112), align 4
  %1719 = load ptr, ptr @ccm_base, align 4
  %1720 = getelementptr i8, ptr %1719, i32 16
  %1721 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.161, i8 noundef zeroext 4, ptr noundef nonnull @nfc_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %1720, i8 noundef zeroext 12, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %1722 = icmp eq ptr %1721, null
  %1723 = icmp ugt ptr %1721, inttoptr (i32 -4096 to ptr)
  %1724 = or i1 %1722, %1723
  br i1 %1724, label %1728, label %1725

1725:                                             ; preds = %1717
  %1726 = getelementptr inbounds %struct.clk_hw, ptr %1721, i32 0, i32 1
  %1727 = load ptr, ptr %1726, align 4
  br label %1728

1728:                                             ; preds = %1725, %1717
  %1729 = phi ptr [ %1727, %1725 ], [ %1721, %1717 ]
  store ptr %1729, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 127), align 4
  %1730 = load ptr, ptr @ccm_base, align 4
  %1731 = getelementptr i8, ptr %1730, i32 24
  %1732 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.162, ptr noundef nonnull @.str.161, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %1731, i8 noundef zeroext 9, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #3
  %1733 = icmp eq ptr %1732, null
  %1734 = icmp ugt ptr %1732, inttoptr (i32 -4096 to ptr)
  %1735 = or i1 %1733, %1734
  br i1 %1735, label %1739, label %1736

1736:                                             ; preds = %1728
  %1737 = getelementptr inbounds %struct.clk_hw, ptr %1732, i32 0, i32 1
  %1738 = load ptr, ptr %1737, align 4
  br label %1739

1739:                                             ; preds = %1736, %1728
  %1740 = phi ptr [ %1738, %1736 ], [ %1732, %1728 ]
  store ptr %1740, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 128), align 4
  %1741 = load ptr, ptr @ccm_base, align 4
  %1742 = getelementptr i8, ptr %1741, i32 28
  %1743 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.163, ptr noundef nonnull @.str.162, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %1742, i8 noundef zeroext 13, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %1744 = icmp eq ptr %1743, null
  %1745 = icmp ugt ptr %1743, inttoptr (i32 -4096 to ptr)
  %1746 = or i1 %1744, %1745
  br i1 %1746, label %1750, label %1747

1747:                                             ; preds = %1739
  %1748 = getelementptr inbounds %struct.clk_hw, ptr %1743, i32 0, i32 1
  %1749 = load ptr, ptr %1748, align 4
  br label %1750

1750:                                             ; preds = %1747, %1739
  %1751 = phi ptr [ %1749, %1747 ], [ %1743, %1739 ]
  store ptr %1751, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 129), align 4
  %1752 = load ptr, ptr @ccm_base, align 4
  %1753 = getelementptr i8, ptr %1752, i32 24
  %1754 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.164, ptr noundef nonnull @.str.163, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %1753, i8 noundef zeroext 4, i8 noundef zeroext 4, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %1755 = icmp eq ptr %1754, null
  %1756 = icmp ugt ptr %1754, inttoptr (i32 -4096 to ptr)
  %1757 = or i1 %1755, %1756
  br i1 %1757, label %1761, label %1758

1758:                                             ; preds = %1750
  %1759 = getelementptr inbounds %struct.clk_hw, ptr %1754, i32 0, i32 1
  %1760 = load ptr, ptr %1759, align 4
  br label %1761

1761:                                             ; preds = %1758, %1750
  %1762 = phi ptr [ %1760, %1758 ], [ %1754, %1750 ]
  store ptr %1762, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 130), align 4
  %1763 = load ptr, ptr @ccm_base, align 4
  %1764 = getelementptr i8, ptr %1763, i32 104
  %1765 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.165, ptr noundef nonnull @.str.164, i32 noundef 4, ptr noundef %1764, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %1766 = icmp eq ptr %1765, null
  %1767 = icmp ugt ptr %1765, inttoptr (i32 -4096 to ptr)
  %1768 = or i1 %1766, %1767
  br i1 %1768, label %1772, label %1769

1769:                                             ; preds = %1761
  %1770 = getelementptr inbounds %struct.clk_hw, ptr %1765, i32 0, i32 1
  %1771 = load ptr, ptr %1770, align 4
  br label %1772

1772:                                             ; preds = %1769, %1761
  %1773 = phi ptr [ %1771, %1769 ], [ %1765, %1761 ]
  store ptr %1773, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 132), align 4
  %1774 = load ptr, ptr @ccm_base, align 4
  %1775 = getelementptr i8, ptr %1774, i32 16
  %1776 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.166, i8 noundef zeroext 2, ptr noundef nonnull @gpu_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %1775, i8 noundef zeroext 14, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %1777 = icmp eq ptr %1776, null
  %1778 = icmp ugt ptr %1776, inttoptr (i32 -4096 to ptr)
  %1779 = or i1 %1777, %1778
  br i1 %1779, label %1783, label %1780

1780:                                             ; preds = %1772
  %1781 = getelementptr inbounds %struct.clk_hw, ptr %1776, i32 0, i32 1
  %1782 = load ptr, ptr %1781, align 4
  br label %1783

1783:                                             ; preds = %1780, %1772
  %1784 = phi ptr [ %1782, %1780 ], [ %1776, %1772 ]
  store ptr %1784, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 145), align 4
  %1785 = load ptr, ptr @ccm_base, align 4
  %1786 = getelementptr i8, ptr %1785, i32 24
  %1787 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.167, ptr noundef nonnull @.str.166, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %1786, i8 noundef zeroext 10, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #3
  %1788 = icmp eq ptr %1787, null
  %1789 = icmp ugt ptr %1787, inttoptr (i32 -4096 to ptr)
  %1790 = or i1 %1788, %1789
  br i1 %1790, label %1794, label %1791

1791:                                             ; preds = %1783
  %1792 = getelementptr inbounds %struct.clk_hw, ptr %1787, i32 0, i32 1
  %1793 = load ptr, ptr %1792, align 4
  br label %1794

1794:                                             ; preds = %1791, %1783
  %1795 = phi ptr [ %1793, %1791 ], [ %1787, %1783 ]
  store ptr %1795, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 146), align 4
  %1796 = load ptr, ptr @ccm_base, align 4
  %1797 = getelementptr i8, ptr %1796, i32 96
  %1798 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.168, ptr noundef nonnull @.str.167, i32 noundef 4, ptr noundef %1797, i8 noundef zeroext 30, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %1799 = icmp eq ptr %1798, null
  %1800 = icmp ugt ptr %1798, inttoptr (i32 -4096 to ptr)
  %1801 = or i1 %1799, %1800
  br i1 %1801, label %1805, label %1802

1802:                                             ; preds = %1794
  %1803 = getelementptr inbounds %struct.clk_hw, ptr %1798, i32 0, i32 1
  %1804 = load ptr, ptr %1803, align 4
  br label %1805

1805:                                             ; preds = %1802, %1794
  %1806 = phi ptr [ %1804, %1802 ], [ %1798, %1794 ]
  store ptr %1806, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 147), align 4
  %1807 = load ptr, ptr @ccm_base, align 4
  %1808 = getelementptr i8, ptr %1807, i32 16
  %1809 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.169, i8 noundef zeroext 3, ptr noundef nonnull @vadc_sels, ptr noundef null, ptr noundef null, i32 noundef 128, ptr noundef %1808, i8 noundef zeroext 8, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %1810 = icmp eq ptr %1809, null
  %1811 = icmp ugt ptr %1809, inttoptr (i32 -4096 to ptr)
  %1812 = or i1 %1810, %1811
  br i1 %1812, label %1816, label %1813

1813:                                             ; preds = %1805
  %1814 = getelementptr inbounds %struct.clk_hw, ptr %1809, i32 0, i32 1
  %1815 = load ptr, ptr %1814, align 4
  br label %1816

1816:                                             ; preds = %1813, %1805
  %1817 = phi ptr [ %1815, %1813 ], [ %1809, %1805 ]
  store ptr %1817, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 133), align 4
  %1818 = load ptr, ptr @ccm_base, align 4
  %1819 = getelementptr i8, ptr %1818, i32 20
  %1820 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.170, ptr noundef nonnull @.str.169, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %1819, i8 noundef zeroext 22, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #3
  %1821 = icmp eq ptr %1820, null
  %1822 = icmp ugt ptr %1820, inttoptr (i32 -4096 to ptr)
  %1823 = or i1 %1821, %1822
  br i1 %1823, label %1827, label %1824

1824:                                             ; preds = %1816
  %1825 = getelementptr inbounds %struct.clk_hw, ptr %1820, i32 0, i32 1
  %1826 = load ptr, ptr %1825, align 4
  br label %1827

1827:                                             ; preds = %1824, %1816
  %1828 = phi ptr [ %1826, %1824 ], [ %1820, %1816 ]
  store ptr %1828, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 134), align 4
  %1829 = load ptr, ptr @ccm_base, align 4
  %1830 = getelementptr i8, ptr %1829, i32 20
  %1831 = tail call ptr @__clk_hw_register_divider(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.171, ptr noundef nonnull @.str.170, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %1830, i8 noundef zeroext 20, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @imx_ccm_lock) #3
  %1832 = icmp eq ptr %1831, null
  %1833 = icmp ugt ptr %1831, inttoptr (i32 -4096 to ptr)
  %1834 = or i1 %1832, %1833
  br i1 %1834, label %1838, label %1835

1835:                                             ; preds = %1827
  %1836 = getelementptr inbounds %struct.clk_hw, ptr %1831, i32 0, i32 1
  %1837 = load ptr, ptr %1836, align 4
  br label %1838

1838:                                             ; preds = %1835, %1827
  %1839 = phi ptr [ %1837, %1835 ], [ %1831, %1827 ]
  store ptr %1839, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 135), align 4
  %1840 = tail call ptr @clk_hw_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.172, ptr noundef nonnull @.str.171, i32 noundef 4, i32 noundef 1, i32 noundef 2) #3
  %1841 = icmp eq ptr %1840, null
  %1842 = icmp ugt ptr %1840, inttoptr (i32 -4096 to ptr)
  %1843 = or i1 %1841, %1842
  br i1 %1843, label %1847, label %1844

1844:                                             ; preds = %1838
  %1845 = getelementptr inbounds %struct.clk_hw, ptr %1840, i32 0, i32 1
  %1846 = load ptr, ptr %1845, align 4
  br label %1847

1847:                                             ; preds = %1844, %1838
  %1848 = phi ptr [ %1846, %1844 ], [ %1840, %1838 ]
  store ptr %1848, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 136), align 4
  %1849 = load ptr, ptr @ccm_base, align 4
  %1850 = getelementptr i8, ptr %1849, i32 96
  %1851 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.173, ptr noundef nonnull @.str.171, i32 noundef 4, ptr noundef %1850, i8 noundef zeroext 14, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %1852 = icmp eq ptr %1851, null
  %1853 = icmp ugt ptr %1851, inttoptr (i32 -4096 to ptr)
  %1854 = or i1 %1852, %1853
  br i1 %1854, label %1858, label %1855

1855:                                             ; preds = %1847
  %1856 = getelementptr inbounds %struct.clk_hw, ptr %1851, i32 0, i32 1
  %1857 = load ptr, ptr %1856, align 4
  br label %1858

1858:                                             ; preds = %1855, %1847
  %1859 = phi ptr [ %1857, %1855 ], [ %1851, %1847 ]
  store ptr %1859, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 137), align 4
  %1860 = load ptr, ptr @ccm_base, align 4
  %1861 = getelementptr i8, ptr %1860, i32 68
  %1862 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.174, ptr noundef nonnull @.str.60, i32 noundef 4, ptr noundef %1861, i8 noundef zeroext 22, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %1863 = icmp eq ptr %1862, null
  %1864 = icmp ugt ptr %1862, inttoptr (i32 -4096 to ptr)
  %1865 = or i1 %1863, %1864
  br i1 %1865, label %1869, label %1866

1866:                                             ; preds = %1858
  %1867 = getelementptr inbounds %struct.clk_hw, ptr %1862, i32 0, i32 1
  %1868 = load ptr, ptr %1867, align 4
  br label %1869

1869:                                             ; preds = %1866, %1858
  %1870 = phi ptr [ %1868, %1866 ], [ %1862, %1858 ]
  store ptr %1870, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 138), align 4
  %1871 = load ptr, ptr @ccm_base, align 4
  %1872 = getelementptr i8, ptr %1871, i32 92
  %1873 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.175, ptr noundef nonnull @.str.60, i32 noundef 4, ptr noundef %1872, i8 noundef zeroext 22, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %1874 = icmp eq ptr %1873, null
  %1875 = icmp ugt ptr %1873, inttoptr (i32 -4096 to ptr)
  %1876 = or i1 %1874, %1875
  br i1 %1876, label %1880, label %1877

1877:                                             ; preds = %1869
  %1878 = getelementptr inbounds %struct.clk_hw, ptr %1873, i32 0, i32 1
  %1879 = load ptr, ptr %1878, align 4
  br label %1880

1880:                                             ; preds = %1877, %1869
  %1881 = phi ptr [ %1879, %1877 ], [ %1873, %1869 ]
  store ptr %1881, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 139), align 4
  %1882 = load ptr, ptr @ccm_base, align 4
  %1883 = getelementptr i8, ptr %1882, i32 96
  %1884 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.176, ptr noundef nonnull @.str.60, i32 noundef 4, ptr noundef %1883, i8 noundef zeroext 24, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %1885 = icmp eq ptr %1884, null
  %1886 = icmp ugt ptr %1884, inttoptr (i32 -4096 to ptr)
  %1887 = or i1 %1885, %1886
  br i1 %1887, label %1891, label %1888

1888:                                             ; preds = %1880
  %1889 = getelementptr inbounds %struct.clk_hw, ptr %1884, i32 0, i32 1
  %1890 = load ptr, ptr %1889, align 4
  br label %1891

1891:                                             ; preds = %1888, %1880
  %1892 = phi ptr [ %1890, %1888 ], [ %1884, %1880 ]
  store ptr %1892, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 140), align 4
  %1893 = load ptr, ptr @ccm_base, align 4
  %1894 = getelementptr i8, ptr %1893, i32 96
  %1895 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.177, ptr noundef nonnull @.str.60, i32 noundef 4, ptr noundef %1894, i8 noundef zeroext 26, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %1896 = icmp eq ptr %1895, null
  %1897 = icmp ugt ptr %1895, inttoptr (i32 -4096 to ptr)
  %1898 = or i1 %1896, %1897
  br i1 %1898, label %1902, label %1899

1899:                                             ; preds = %1891
  %1900 = getelementptr inbounds %struct.clk_hw, ptr %1895, i32 0, i32 1
  %1901 = load ptr, ptr %1900, align 4
  br label %1902

1902:                                             ; preds = %1899, %1891
  %1903 = phi ptr [ %1901, %1899 ], [ %1895, %1891 ]
  store ptr %1903, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 141), align 4
  %1904 = load ptr, ptr @ccm_base, align 4
  %1905 = getelementptr i8, ptr %1904, i32 80
  %1906 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.178, ptr noundef nonnull @.str.60, i32 noundef 4, ptr noundef %1905, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %1907 = icmp eq ptr %1906, null
  %1908 = icmp ugt ptr %1906, inttoptr (i32 -4096 to ptr)
  %1909 = or i1 %1907, %1908
  br i1 %1909, label %1913, label %1910

1910:                                             ; preds = %1902
  %1911 = getelementptr inbounds %struct.clk_hw, ptr %1906, i32 0, i32 1
  %1912 = load ptr, ptr %1911, align 4
  br label %1913

1913:                                             ; preds = %1910, %1902
  %1914 = phi ptr [ %1912, %1910 ], [ %1906, %1902 ]
  store ptr %1914, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 144), align 4
  %1915 = load ptr, ptr @ccm_base, align 4
  %1916 = getelementptr i8, ptr %1915, i32 24
  %1917 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.179, ptr noundef nonnull @.str.60, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %1916, i8 noundef zeroext 11, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #3
  %1918 = icmp eq ptr %1917, null
  %1919 = icmp ugt ptr %1917, inttoptr (i32 -4096 to ptr)
  %1920 = or i1 %1918, %1919
  br i1 %1920, label %1924, label %1921

1921:                                             ; preds = %1913
  %1922 = getelementptr inbounds %struct.clk_hw, ptr %1917, i32 0, i32 1
  %1923 = load ptr, ptr %1922, align 4
  br label %1924

1924:                                             ; preds = %1921, %1913
  %1925 = phi ptr [ %1923, %1921 ], [ %1917, %1913 ]
  store ptr %1925, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 154), align 4
  %1926 = load ptr, ptr @ccm_base, align 4
  %1927 = getelementptr i8, ptr %1926, i32 64
  %1928 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.180, ptr noundef nonnull @.str.179, i32 noundef 4, ptr noundef %1927, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %1929 = icmp eq ptr %1928, null
  %1930 = icmp ugt ptr %1928, inttoptr (i32 -4096 to ptr)
  %1931 = or i1 %1929, %1930
  br i1 %1931, label %1935, label %1932

1932:                                             ; preds = %1924
  %1933 = getelementptr inbounds %struct.clk_hw, ptr %1928, i32 0, i32 1
  %1934 = load ptr, ptr %1933, align 4
  br label %1935

1935:                                             ; preds = %1932, %1924
  %1936 = phi ptr [ %1934, %1932 ], [ %1928, %1924 ]
  store ptr %1936, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 142), align 4
  %1937 = load ptr, ptr @ccm_base, align 4
  %1938 = getelementptr i8, ptr %1937, i32 24
  %1939 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.181, ptr noundef nonnull @.str.60, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %1938, i8 noundef zeroext 12, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #3
  %1940 = icmp eq ptr %1939, null
  %1941 = icmp ugt ptr %1939, inttoptr (i32 -4096 to ptr)
  %1942 = or i1 %1940, %1941
  br i1 %1942, label %1946, label %1943

1943:                                             ; preds = %1935
  %1944 = getelementptr inbounds %struct.clk_hw, ptr %1939, i32 0, i32 1
  %1945 = load ptr, ptr %1944, align 4
  br label %1946

1946:                                             ; preds = %1943, %1935
  %1947 = phi ptr [ %1945, %1943 ], [ %1939, %1935 ]
  store ptr %1947, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 155), align 4
  %1948 = load ptr, ptr @ccm_base, align 4
  %1949 = getelementptr i8, ptr %1948, i32 100
  %1950 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.182, ptr noundef nonnull @.str.181, i32 noundef 4, ptr noundef %1949, i8 noundef zeroext 8, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %1951 = icmp eq ptr %1950, null
  %1952 = icmp ugt ptr %1950, inttoptr (i32 -4096 to ptr)
  %1953 = or i1 %1951, %1952
  br i1 %1953, label %1957, label %1954

1954:                                             ; preds = %1946
  %1955 = getelementptr inbounds %struct.clk_hw, ptr %1950, i32 0, i32 1
  %1956 = load ptr, ptr %1955, align 4
  br label %1957

1957:                                             ; preds = %1954, %1946
  %1958 = phi ptr [ %1956, %1954 ], [ %1950, %1946 ]
  store ptr %1958, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 143), align 4
  %1959 = load ptr, ptr @ccm_base, align 4
  %1960 = getelementptr i8, ptr %1959, i32 64
  %1961 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.183, ptr noundef nonnull @.str.59, i32 noundef 4, ptr noundef %1960, i8 noundef zeroext 8, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %1962 = icmp eq ptr %1961, null
  %1963 = icmp ugt ptr %1961, inttoptr (i32 -4096 to ptr)
  %1964 = or i1 %1962, %1963
  br i1 %1964, label %1968, label %1965

1965:                                             ; preds = %1957
  %1966 = getelementptr inbounds %struct.clk_hw, ptr %1961, i32 0, i32 1
  %1967 = load ptr, ptr %1966, align 4
  br label %1968

1968:                                             ; preds = %1965, %1957
  %1969 = phi ptr [ %1967, %1965 ], [ %1961, %1957 ]
  store ptr %1969, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 150), align 4
  %1970 = load ptr, ptr @ccm_base, align 4
  %1971 = getelementptr i8, ptr %1970, i32 64
  %1972 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.184, ptr noundef nonnull @.str.59, i32 noundef 4, ptr noundef %1971, i8 noundef zeroext 10, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %1973 = icmp eq ptr %1972, null
  %1974 = icmp ugt ptr %1972, inttoptr (i32 -4096 to ptr)
  %1975 = or i1 %1973, %1974
  br i1 %1975, label %1979, label %1976

1976:                                             ; preds = %1968
  %1977 = getelementptr inbounds %struct.clk_hw, ptr %1972, i32 0, i32 1
  %1978 = load ptr, ptr %1977, align 4
  br label %1979

1979:                                             ; preds = %1976, %1968
  %1980 = phi ptr [ %1978, %1976 ], [ %1972, %1968 ]
  store ptr %1980, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 151), align 4
  %1981 = load ptr, ptr @ccm_base, align 4
  %1982 = getelementptr i8, ptr %1981, i32 88
  %1983 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.185, ptr noundef nonnull @.str.59, i32 noundef 4, ptr noundef %1982, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %1984 = icmp eq ptr %1983, null
  %1985 = icmp ugt ptr %1983, inttoptr (i32 -4096 to ptr)
  %1986 = or i1 %1984, %1985
  br i1 %1986, label %1990, label %1987

1987:                                             ; preds = %1979
  %1988 = getelementptr inbounds %struct.clk_hw, ptr %1983, i32 0, i32 1
  %1989 = load ptr, ptr %1988, align 4
  br label %1990

1990:                                             ; preds = %1987, %1979
  %1991 = phi ptr [ %1989, %1987 ], [ %1983, %1979 ]
  store ptr %1991, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 152), align 4
  %1992 = load ptr, ptr @ccm_base, align 4
  %1993 = getelementptr i8, ptr %1992, i32 88
  %1994 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.186, ptr noundef nonnull @.str.59, i32 noundef 4, ptr noundef %1993, i8 noundef zeroext 4, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %1995 = icmp eq ptr %1994, null
  %1996 = icmp ugt ptr %1994, inttoptr (i32 -4096 to ptr)
  %1997 = or i1 %1995, %1996
  br i1 %1997, label %2001, label %1998

1998:                                             ; preds = %1990
  %1999 = getelementptr inbounds %struct.clk_hw, ptr %1994, i32 0, i32 1
  %2000 = load ptr, ptr %1999, align 4
  br label %2001

2001:                                             ; preds = %1998, %1990
  %2002 = phi ptr [ %2000, %1998 ], [ %1994, %1990 ]
  store ptr %2002, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 153), align 4
  %2003 = load ptr, ptr @ccm_base, align 4
  %2004 = getelementptr i8, ptr %2003, i32 88
  %2005 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.187, ptr noundef nonnull @.str.60, i32 noundef 4, ptr noundef %2004, i8 noundef zeroext 14, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %2006 = icmp eq ptr %2005, null
  %2007 = icmp ugt ptr %2005, inttoptr (i32 -4096 to ptr)
  %2008 = or i1 %2006, %2007
  br i1 %2008, label %2012, label %2009

2009:                                             ; preds = %2001
  %2010 = getelementptr inbounds %struct.clk_hw, ptr %2005, i32 0, i32 1
  %2011 = load ptr, ptr %2010, align 4
  br label %2012

2012:                                             ; preds = %2009, %2001
  %2013 = phi ptr [ %2011, %2009 ], [ %2005, %2001 ]
  store ptr %2013, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 182), align 4
  %2014 = load ptr, ptr @ccm_base, align 4
  %2015 = getelementptr i8, ptr %2014, i32 8
  %2016 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.188, ptr noundef nonnull @.str.59, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %2015, i8 noundef zeroext 24, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #3
  %2017 = icmp eq ptr %2016, null
  %2018 = icmp ugt ptr %2016, inttoptr (i32 -4096 to ptr)
  %2019 = or i1 %2017, %2018
  br i1 %2019, label %2023, label %2020

2020:                                             ; preds = %2012
  %2021 = getelementptr inbounds %struct.clk_hw, ptr %2016, i32 0, i32 1
  %2022 = load ptr, ptr %2021, align 4
  br label %2023

2023:                                             ; preds = %2020, %2012
  %2024 = phi ptr [ %2022, %2020 ], [ %2016, %2012 ]
  store ptr %2024, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 183), align 4
  %2025 = load ptr, ptr @ccm_base, align 4
  %2026 = getelementptr i8, ptr %2025, i32 88
  %2027 = tail call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.189, ptr noundef nonnull @.str.60, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %2026, i8 noundef zeroext 10, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock) #3
  %2028 = icmp eq ptr %2027, null
  %2029 = icmp ugt ptr %2027, inttoptr (i32 -4096 to ptr)
  %2030 = or i1 %2028, %2029
  br i1 %2030, label %2034, label %2031

2031:                                             ; preds = %2023
  %2032 = getelementptr inbounds %struct.clk_hw, ptr %2027, i32 0, i32 1
  %2033 = load ptr, ptr %2032, align 4
  br label %2034

2034:                                             ; preds = %2031, %2023
  %2035 = phi ptr [ %2033, %2031 ], [ %2027, %2023 ]
  store ptr %2035, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 184), align 4
  %2036 = load ptr, ptr @ccm_base, align 4
  %2037 = getelementptr i8, ptr %2036, i32 108
  %2038 = tail call ptr @clk_hw_register_gate2(ptr noundef null, ptr noundef nonnull @.str.190, ptr noundef nonnull @.str.60, i32 noundef 4, ptr noundef %2037, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext 3, i8 noundef zeroext 0, ptr noundef nonnull @imx_ccm_lock, ptr noundef null) #3
  %2039 = icmp eq ptr %2038, null
  %2040 = icmp ugt ptr %2038, inttoptr (i32 -4096 to ptr)
  %2041 = or i1 %2039, %2040
  br i1 %2041, label %2045, label %2042

2042:                                             ; preds = %2034
  %2043 = getelementptr inbounds %struct.clk_hw, ptr %2038, i32 0, i32 1
  %2044 = load ptr, ptr %2043, align 4
  br label %2045

2045:                                             ; preds = %2042, %2034
  %2046 = phi ptr [ %2044, %2042 ], [ %2038, %2034 ]
  store ptr %2046, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 189), align 4
  tail call void @imx_check_clocks(ptr noundef nonnull @clk, i32 noundef 191) #3
  %2047 = load ptr, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 115), align 4
  %2048 = load ptr, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 15), align 4
  %2049 = tail call i32 @clk_set_parent(ptr noundef %2047, ptr noundef %2048) #3
  %2050 = load ptr, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 117), align 4
  %2051 = load ptr, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 115), align 4
  %2052 = tail call i32 @clk_get_rate(ptr noundef %2051) #3
  %2053 = lshr i32 %2052, 1
  %2054 = tail call i32 @clk_set_rate(ptr noundef %2050, i32 noundef %2053) #3
  %2055 = load ptr, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 118), align 4
  %2056 = load ptr, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 117), align 4
  %2057 = tail call i32 @clk_get_rate(ptr noundef %2056) #3
  %2058 = lshr i32 %2057, 1
  %2059 = tail call i32 @clk_set_rate(ptr noundef %2055, i32 noundef %2058) #3
  %2060 = load ptr, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 119), align 4
  %2061 = load ptr, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 118), align 4
  %2062 = tail call i32 @clk_get_rate(ptr noundef %2061) #3
  %2063 = lshr i32 %2062, 1
  %2064 = tail call i32 @clk_set_rate(ptr noundef %2060, i32 noundef %2063) #3
  %2065 = load ptr, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 120), align 4
  %2066 = load ptr, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 15), align 4
  %2067 = tail call i32 @clk_set_parent(ptr noundef %2065, ptr noundef %2066) #3
  %2068 = load ptr, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 122), align 4
  %2069 = load ptr, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 120), align 4
  %2070 = tail call i32 @clk_get_rate(ptr noundef %2069) #3
  %2071 = lshr i32 %2070, 1
  %2072 = tail call i32 @clk_set_rate(ptr noundef %2068, i32 noundef %2071) #3
  %2073 = load ptr, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 123), align 4
  %2074 = load ptr, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 122), align 4
  %2075 = tail call i32 @clk_get_rate(ptr noundef %2074) #3
  %2076 = lshr i32 %2075, 1
  %2077 = tail call i32 @clk_set_rate(ptr noundef %2073, i32 noundef %2076) #3
  %2078 = load ptr, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 124), align 4
  %2079 = load ptr, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 123), align 4
  %2080 = tail call i32 @clk_get_rate(ptr noundef %2079) #3
  %2081 = lshr i32 %2080, 1
  %2082 = tail call i32 @clk_set_rate(ptr noundef %2078, i32 noundef %2081) #3
  %2083 = load ptr, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 97), align 4
  %2084 = load ptr, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 9), align 4
  %2085 = tail call i32 @clk_set_parent(ptr noundef %2083, ptr noundef %2084) #3
  %2086 = load ptr, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 101), align 4
  %2087 = load ptr, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 9), align 4
  %2088 = tail call i32 @clk_set_parent(ptr noundef %2086, ptr noundef %2087) #3
  %2089 = load ptr, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 105), align 4
  %2090 = load ptr, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 9), align 4
  %2091 = tail call i32 @clk_set_parent(ptr noundef %2089, ptr noundef %2090) #3
  %2092 = load ptr, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 109), align 4
  %2093 = load ptr, ptr getelementptr inbounds ([191 x ptr], ptr @clk, i32 0, i32 9), align 4
  %2094 = tail call i32 @clk_set_parent(ptr noundef %2092, ptr noundef %2093) #3
  br label %2095

2095:                                             ; preds = %2107, %2045
  %2096 = phi i32 [ 0, %2045 ], [ %2108, %2107 ]
  %2097 = getelementptr [5 x i32], ptr @clks_init_on, i32 0, i32 %2096
  %2098 = load i32, ptr %2097, align 4
  %2099 = getelementptr [191 x ptr], ptr @clk, i32 0, i32 %2098
  %2100 = load ptr, ptr %2099, align 4
  %2101 = tail call i32 @clk_prepare(ptr noundef %2100) #3
  %2102 = icmp eq i32 %2101, 0
  br i1 %2102, label %2103, label %2107

2103:                                             ; preds = %2095
  %2104 = tail call i32 @clk_enable(ptr noundef %2100) #3
  %2105 = icmp eq i32 %2104, 0
  br i1 %2105, label %2107, label %2106

2106:                                             ; preds = %2103
  tail call void @clk_unprepare(ptr noundef %2100) #3
  br label %2107

2107:                                             ; preds = %2106, %2103, %2095
  %2108 = add nuw nsw i32 %2096, 1
  %2109 = icmp eq i32 %2108, 5
  br i1 %2109, label %2110, label %2095

2110:                                             ; preds = %2107
  tail call void @register_syscore_ops(ptr noundef nonnull @vf610_clk_syscore_ops) #3
  store ptr @clk, ptr @clk_data, align 4
  store i32 191, ptr getelementptr inbounds (%struct.clk_onecell_data, ptr @clk_data, i32 0, i32 1), align 4
  %2111 = tail call i32 @of_clk_add_provider(ptr noundef %0, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef nonnull @clk_data) #3
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc ptr @vf610_get_fixed_clock(ptr noundef %0, ptr noundef %1) unnamed_addr #0 section ".init.text" {
  %3 = tail call ptr @of_clk_get_by_name(ptr noundef %0, ptr noundef %1) #3
  %4 = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = tail call ptr @imx_obtain_fixed_clock(ptr noundef %1, i32 noundef 0) #3
  br label %7

7:                                                ; preds = %5, %2
  %8 = phi ptr [ %6, %5 ], [ %3, %2 ]
  ret ptr %8
}

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
declare dso_local ptr @imx_clk_hw_pfd(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_divider_table(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @imx_check_clocks(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @register_syscore_ops(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_onecell_get(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_hw_register_fixed_rate(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @imx_obtain_fixed_clock(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_register_fixed_factor(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_hw_register_mux(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_hw_register_gate(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_hw_register_divider(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_register_gate2(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vf610_clk_suspend() #2 {
  %1 = load ptr, ptr @ccm_base, align 4
  %2 = getelementptr i8, ptr %1, i32 16
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #3, !srcloc !11
  store i32 %3, ptr @cscmr1, align 4
  %4 = load ptr, ptr @ccm_base, align 4
  %5 = getelementptr i8, ptr %4, i32 32
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #3, !srcloc !11
  store i32 %6, ptr @cscmr2, align 4
  %7 = load ptr, ptr @ccm_base, align 4
  %8 = getelementptr i8, ptr %7, i32 20
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #3, !srcloc !11
  store i32 %9, ptr @cscdr1, align 4
  %10 = load ptr, ptr @ccm_base, align 4
  %11 = getelementptr i8, ptr %10, i32 24
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #3, !srcloc !11
  store i32 %12, ptr @cscdr2, align 4
  %13 = load ptr, ptr @ccm_base, align 4
  %14 = getelementptr i8, ptr %13, i32 28
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #3, !srcloc !11
  store i32 %15, ptr @cscdr3, align 4
  %16 = load ptr, ptr @ccm_base, align 4
  %17 = getelementptr i8, ptr %16, i32 64
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #3, !srcloc !11
  store i32 %18, ptr @ccgr.0, align 4
  %19 = load ptr, ptr @ccm_base, align 4
  %20 = getelementptr i8, ptr %19, i32 68
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #3, !srcloc !11
  store i32 %21, ptr @ccgr.1, align 4
  %22 = load ptr, ptr @ccm_base, align 4
  %23 = getelementptr i8, ptr %22, i32 72
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #3, !srcloc !11
  store i32 %24, ptr @ccgr.2, align 4
  %25 = load ptr, ptr @ccm_base, align 4
  %26 = getelementptr i8, ptr %25, i32 76
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #3, !srcloc !11
  store i32 %27, ptr @ccgr.3, align 4
  %28 = load ptr, ptr @ccm_base, align 4
  %29 = getelementptr i8, ptr %28, i32 80
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #3, !srcloc !11
  store i32 %30, ptr @ccgr.4, align 4
  %31 = load ptr, ptr @ccm_base, align 4
  %32 = getelementptr i8, ptr %31, i32 84
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #3, !srcloc !11
  store i32 %33, ptr @ccgr.5, align 4
  %34 = load ptr, ptr @ccm_base, align 4
  %35 = getelementptr i8, ptr %34, i32 88
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #3, !srcloc !11
  store i32 %36, ptr @ccgr.6, align 4
  %37 = load ptr, ptr @ccm_base, align 4
  %38 = getelementptr i8, ptr %37, i32 92
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #3, !srcloc !11
  store i32 %39, ptr @ccgr.7, align 4
  %40 = load ptr, ptr @ccm_base, align 4
  %41 = getelementptr i8, ptr %40, i32 96
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %41) #3, !srcloc !11
  store i32 %42, ptr @ccgr.8, align 4
  %43 = load ptr, ptr @ccm_base, align 4
  %44 = getelementptr i8, ptr %43, i32 100
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %44) #3, !srcloc !11
  store i32 %45, ptr @ccgr.9, align 4
  %46 = load ptr, ptr @ccm_base, align 4
  %47 = getelementptr i8, ptr %46, i32 104
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %47) #3, !srcloc !11
  store i32 %48, ptr @ccgr.10, align 4
  %49 = load ptr, ptr @ccm_base, align 4
  %50 = getelementptr i8, ptr %49, i32 108
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %50) #3, !srcloc !11
  store i32 %51, ptr @ccgr.11, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vf610_clk_resume() #2 {
  %1 = load i32, ptr @cscmr1, align 4
  %2 = load ptr, ptr @ccm_base, align 4
  %3 = getelementptr i8, ptr %2, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 %1) #3, !srcloc !12
  %4 = load i32, ptr @cscmr2, align 4
  %5 = load ptr, ptr @ccm_base, align 4
  %6 = getelementptr i8, ptr %5, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %4) #3, !srcloc !12
  %7 = load i32, ptr @cscdr1, align 4
  %8 = load ptr, ptr @ccm_base, align 4
  %9 = getelementptr i8, ptr %8, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %7) #3, !srcloc !12
  %10 = load i32, ptr @cscdr2, align 4
  %11 = load ptr, ptr @ccm_base, align 4
  %12 = getelementptr i8, ptr %11, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %10) #3, !srcloc !12
  %13 = load i32, ptr @cscdr3, align 4
  %14 = load ptr, ptr @ccm_base, align 4
  %15 = getelementptr i8, ptr %14, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %13) #3, !srcloc !12
  %16 = load i32, ptr @ccgr.0, align 4
  %17 = load ptr, ptr @ccm_base, align 4
  %18 = getelementptr i8, ptr %17, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %16) #3, !srcloc !12
  %19 = load i32, ptr @ccgr.1, align 4
  %20 = load ptr, ptr @ccm_base, align 4
  %21 = getelementptr i8, ptr %20, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %19) #3, !srcloc !12
  %22 = load i32, ptr @ccgr.2, align 4
  %23 = load ptr, ptr @ccm_base, align 4
  %24 = getelementptr i8, ptr %23, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %22) #3, !srcloc !12
  %25 = load i32, ptr @ccgr.3, align 4
  %26 = load ptr, ptr @ccm_base, align 4
  %27 = getelementptr i8, ptr %26, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %25) #3, !srcloc !12
  %28 = load i32, ptr @ccgr.4, align 4
  %29 = load ptr, ptr @ccm_base, align 4
  %30 = getelementptr i8, ptr %29, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %28) #3, !srcloc !12
  %31 = load i32, ptr @ccgr.5, align 4
  %32 = load ptr, ptr @ccm_base, align 4
  %33 = getelementptr i8, ptr %32, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %31) #3, !srcloc !12
  %34 = load i32, ptr @ccgr.6, align 4
  %35 = load ptr, ptr @ccm_base, align 4
  %36 = getelementptr i8, ptr %35, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %34) #3, !srcloc !12
  %37 = load i32, ptr @ccgr.7, align 4
  %38 = load ptr, ptr @ccm_base, align 4
  %39 = getelementptr i8, ptr %38, i32 92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 %37) #3, !srcloc !12
  %40 = load i32, ptr @ccgr.8, align 4
  %41 = load ptr, ptr @ccm_base, align 4
  %42 = getelementptr i8, ptr %41, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %40) #3, !srcloc !12
  %43 = load i32, ptr @ccgr.9, align 4
  %44 = load ptr, ptr @ccm_base, align 4
  %45 = getelementptr i8, ptr %44, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 %43) #3, !srcloc !12
  %46 = load i32, ptr @ccgr.10, align 4
  %47 = load ptr, ptr @ccm_base, align 4
  %48 = getelementptr i8, ptr %47, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 %46) #3, !srcloc !12
  %49 = load i32, ptr @ccgr.11, align 4
  %50 = load ptr, ptr @ccm_base, align 4
  %51 = getelementptr i8, ptr %50, i32 108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 %49) #3, !srcloc !12
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }
attributes #4 = { cold }

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
!9 = !{i64 2150508358, i64 2150508850, i64 2150508395, i64 2150508451, i64 2150508485, i64 2150508509, i64 2150508550, i64 2150508571, i64 2150508599, i64 2150508633}
!10 = !{i64 2150509392, i64 2150509884, i64 2150509429, i64 2150509485, i64 2150509519, i64 2150509543, i64 2150509584, i64 2150509605, i64 2150509633, i64 2150509667}
!11 = !{i64 2830345}
!12 = !{i64 2829927}
