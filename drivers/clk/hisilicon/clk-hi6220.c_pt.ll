; ModuleID = '/llk/IR/drivers/clk/hisilicon/clk-hi6220.c_pt.bc'
source_filename = "../drivers/clk/hisilicon/clk-hi6220.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.hisi_fixed_rate_clock = type { i32, ptr, ptr, i32, i32 }
%struct.hisi_fixed_factor_clock = type { i32, ptr, ptr, i32, i32, i32 }
%struct.hisi_gate_clock = type { i32, ptr, ptr, i32, i32, i8, i8, ptr }
%struct.hisi_mux_clock = type { i32, ptr, ptr, i8, i32, i32, i8, i8, i8, ptr, ptr }
%struct.hi6220_divider_clock = type { i32, ptr, ptr, i32, i32, i8, i8, i32, ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.list_head = type { ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }

@__of_table_hi6220_clk_ao = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"hisilicon,hi6220-aoctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @hi6220_clk_ao_of_clk_init_driver }, section "__clk_of_table", align 4
@__of_table_hi6220_clk_sys = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"hisilicon,hi6220-sysctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @hi6220_clk_sys_of_clk_init_driver }, section "__clk_of_table", align 4
@__of_table_hi6220_clk_media = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"hisilicon,hi6220-mediactrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @hi6220_clk_media_of_clk_init_driver }, section "__clk_of_table", align 4
@__of_table_hi6220_clk_power = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"hisilicon,hi6220-pmctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @hi6220_clk_power_init }, section "__clk_of_table", align 4
@__of_table_hi6220_clk_acpu = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"hisilicon,hi6220-acpu-sctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @hi6220_clk_acpu_init }, section "__clk_of_table", align 4
@hi6220_fixed_rate_clks = internal global [13 x %struct.hisi_fixed_rate_clock] [%struct.hisi_fixed_rate_clock { i32 1, ptr @.str, ptr null, i32 0, i32 32764 }, %struct.hisi_fixed_rate_clock { i32 2, ptr @.str.1, ptr null, i32 0, i32 19200000 }, %struct.hisi_fixed_rate_clock { i32 3, ptr @.str.2, ptr null, i32 0, i32 100000000 }, %struct.hisi_fixed_rate_clock { i32 4, ptr @.str.3, ptr null, i32 0, i32 100000000 }, %struct.hisi_fixed_rate_clock { i32 5, ptr @.str.4, ptr null, i32 0, i32 200000000 }, %struct.hisi_fixed_rate_clock { i32 6, ptr @.str.5, ptr null, i32 0, i32 245760000 }, %struct.hisi_fixed_rate_clock { i32 7, ptr @.str.6, ptr null, i32 0, i32 1000000000 }, %struct.hisi_fixed_rate_clock { i32 8, ptr @.str.7, ptr null, i32 0, i32 1066000000 }, %struct.hisi_fixed_rate_clock { i32 9, ptr @.str.8, ptr null, i32 0, i32 1190400000 }, %struct.hisi_fixed_rate_clock { i32 10, ptr @.str.9, ptr null, i32 0, i32 1190400000 }, %struct.hisi_fixed_rate_clock { i32 11, ptr @.str.10, ptr null, i32 0, i32 1200000000 }, %struct.hisi_fixed_rate_clock { i32 12, ptr @.str.11, ptr null, i32 0, i32 1440000000 }, %struct.hisi_fixed_rate_clock { i32 13, ptr @.str.12, ptr null, i32 0, i32 1600000000 }], section ".init.data", align 4
@hi6220_fixed_factor_clks = internal global [10 x %struct.hisi_fixed_factor_clock] [%struct.hisi_fixed_factor_clock { i32 14, ptr @.str.13, ptr @.str.8, i32 1, i32 4, i32 0 }, %struct.hisi_fixed_factor_clock { i32 15, ptr @.str.14, ptr @.str.13, i32 1, i32 2, i32 0 }, %struct.hisi_fixed_factor_clock { i32 16, ptr @.str.15, ptr @.str.14, i32 1, i32 4, i32 0 }, %struct.hisi_fixed_factor_clock { i32 17, ptr @.str.16, ptr @.str.17, i32 1, i32 8, i32 0 }, %struct.hisi_fixed_factor_clock { i32 18, ptr @.str.18, ptr @.str.19, i32 1, i32 8, i32 0 }, %struct.hisi_fixed_factor_clock { i32 19, ptr @.str.20, ptr @.str.21, i32 1, i32 8, i32 0 }, %struct.hisi_fixed_factor_clock { i32 20, ptr @.str.22, ptr @.str.23, i32 1, i32 2, i32 0 }, %struct.hisi_fixed_factor_clock { i32 21, ptr @.str.24, ptr @.str.17, i32 1, i32 8, i32 0 }, %struct.hisi_fixed_factor_clock { i32 22, ptr @.str.25, ptr @.str.19, i32 1, i32 8, i32 0 }, %struct.hisi_fixed_factor_clock { i32 23, ptr @.str.26, ptr @.str.21, i32 1, i32 8, i32 0 }], section ".init.data", align 4
@hi6220_separated_gate_clks_ao = internal global [15 x %struct.hisi_gate_clock] [%struct.hisi_gate_clock { i32 24, ptr @.str.27, ptr @.str, i32 12, i32 1584, i8 12, i8 0, ptr null }, %struct.hisi_gate_clock { i32 25, ptr @.str.28, ptr @.str, i32 12, i32 1584, i8 13, i8 0, ptr null }, %struct.hisi_gate_clock { i32 26, ptr @.str.29, ptr @.str, i32 12, i32 1584, i8 14, i8 0, ptr null }, %struct.hisi_gate_clock { i32 27, ptr @.str.30, ptr @.str.1, i32 12, i32 1584, i8 15, i8 0, ptr null }, %struct.hisi_gate_clock { i32 28, ptr @.str.31, ptr @.str.1, i32 12, i32 1584, i8 16, i8 0, ptr null }, %struct.hisi_gate_clock { i32 29, ptr @.str.32, ptr @.str.1, i32 12, i32 1584, i8 17, i8 0, ptr null }, %struct.hisi_gate_clock { i32 30, ptr @.str.33, ptr @.str.1, i32 12, i32 1584, i8 18, i8 0, ptr null }, %struct.hisi_gate_clock { i32 31, ptr @.str.34, ptr @.str.1, i32 12, i32 1584, i8 19, i8 0, ptr null }, %struct.hisi_gate_clock { i32 32, ptr @.str.35, ptr @.str.1, i32 12, i32 1584, i8 20, i8 0, ptr null }, %struct.hisi_gate_clock { i32 33, ptr @.str.36, ptr @.str.1, i32 12, i32 1584, i8 21, i8 0, ptr null }, %struct.hisi_gate_clock { i32 34, ptr @.str.37, ptr @.str.1, i32 12, i32 1584, i8 22, i8 0, ptr null }, %struct.hisi_gate_clock { i32 35, ptr @.str.38, ptr @.str.1, i32 12, i32 1584, i8 23, i8 0, ptr null }, %struct.hisi_gate_clock { i32 36, ptr @.str.39, ptr @.str.1, i32 12, i32 1584, i8 24, i8 0, ptr null }, %struct.hisi_gate_clock { i32 37, ptr @.str.40, ptr @.str.1, i32 12, i32 1584, i8 25, i8 0, ptr null }, %struct.hisi_gate_clock { i32 38, ptr @.str.41, ptr @.str.1, i32 12, i32 1584, i8 26, i8 0, ptr null }], section ".init.data", align 4
@.str = private unnamed_addr constant [7 x i8] c"ref32k\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"clk_tcxo\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"mmc1_pad\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"mmc2_pad\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"mmc0_pad\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"bbppll0\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"gpupll\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"ddrpll1\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"syspll\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"media_syspll\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"ddr_sel_src\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"media_pll\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"ddrpll0\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"clk_300m\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"clk_150m\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"picophy_src\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"mmc0srcsel\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"mmc0_sel\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"mmc1srcsel\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"mmc1_sel\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"mmc2srcsel\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"mmc2_sel\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"vpucodec\00", align 1
@.str.23 = private unnamed_addr constant [16 x i8] c"codec_jpeg_aclk\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"mmc0_sample\00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c"mmc1_sample\00", align 1
@.str.26 = private unnamed_addr constant [12 x i8] c"mmc2_sample\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"wdt0_pclk\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"wdt1_pclk\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"wdt2_pclk\00", align 1
@.str.30 = private unnamed_addr constant [12 x i8] c"timer0_pclk\00", align 1
@.str.31 = private unnamed_addr constant [12 x i8] c"timer1_pclk\00", align 1
@.str.32 = private unnamed_addr constant [12 x i8] c"timer2_pclk\00", align 1
@.str.33 = private unnamed_addr constant [12 x i8] c"timer3_pclk\00", align 1
@.str.34 = private unnamed_addr constant [12 x i8] c"timer4_pclk\00", align 1
@.str.35 = private unnamed_addr constant [12 x i8] c"timer5_pclk\00", align 1
@.str.36 = private unnamed_addr constant [12 x i8] c"timer6_pclk\00", align 1
@.str.37 = private unnamed_addr constant [12 x i8] c"timer7_pclk\00", align 1
@.str.38 = private unnamed_addr constant [12 x i8] c"timer8_pclk\00", align 1
@.str.39 = private unnamed_addr constant [11 x i8] c"uart0_pclk\00", align 1
@.str.40 = private unnamed_addr constant [10 x i8] c"rtc0_pclk\00", align 1
@.str.41 = private unnamed_addr constant [10 x i8] c"rtc1_pclk\00", align 1
@hi6220_separated_gate_clks_sys = internal global [34 x %struct.hisi_gate_clock] [%struct.hisi_gate_clock { i32 1, ptr @.str.42, ptr @.str.43, i32 12, i32 512, i8 0, i8 0, ptr null }, %struct.hisi_gate_clock { i32 2, ptr @.str.44, ptr @.str.45, i32 12, i32 512, i8 0, i8 0, ptr null }, %struct.hisi_gate_clock { i32 3, ptr @.str.46, ptr @.str.47, i32 12, i32 512, i8 1, i8 0, ptr null }, %struct.hisi_gate_clock { i32 4, ptr @.str.48, ptr @.str.49, i32 12, i32 512, i8 1, i8 0, ptr null }, %struct.hisi_gate_clock { i32 5, ptr @.str.50, ptr @.str.51, i32 12, i32 512, i8 2, i8 0, ptr null }, %struct.hisi_gate_clock { i32 6, ptr @.str.52, ptr @.str.53, i32 12, i32 512, i8 2, i8 0, ptr null }, %struct.hisi_gate_clock { i32 7, ptr @.str.54, ptr @.str.55, i32 12, i32 512, i8 4, i8 0, ptr null }, %struct.hisi_gate_clock { i32 8, ptr @.str.56, ptr @.str.57, i32 12, i32 512, i8 5, i8 0, ptr null }, %struct.hisi_gate_clock { i32 9, ptr @.str.58, ptr @.str.59, i32 12, i32 528, i8 0, i8 0, ptr null }, %struct.hisi_gate_clock { i32 10, ptr @.str.60, ptr @.str.55, i32 12, i32 528, i8 5, i8 0, ptr null }, %struct.hisi_gate_clock { i32 11, ptr @.str.61, ptr @.str.55, i32 12, i32 544, i8 2, i8 0, ptr null }, %struct.hisi_gate_clock { i32 12, ptr @.str.62, ptr @.str.63, i32 12, i32 560, i8 0, i8 0, ptr null }, %struct.hisi_gate_clock { i32 13, ptr @.str.64, ptr @.str.14, i32 12, i32 560, i8 1, i8 0, ptr null }, %struct.hisi_gate_clock { i32 14, ptr @.str.65, ptr @.str.14, i32 12, i32 560, i8 2, i8 0, ptr null }, %struct.hisi_gate_clock { i32 15, ptr @.str.66, ptr @.str.14, i32 12, i32 560, i8 3, i8 0, ptr null }, %struct.hisi_gate_clock { i32 16, ptr @.str.67, ptr @.str.14, i32 12, i32 560, i8 4, i8 0, ptr null }, %struct.hisi_gate_clock { i32 17, ptr @.str.68, ptr @.str.69, i32 12, i32 560, i8 5, i8 0, ptr null }, %struct.hisi_gate_clock { i32 18, ptr @.str.70, ptr @.str.71, i32 12, i32 560, i8 6, i8 0, ptr null }, %struct.hisi_gate_clock { i32 19, ptr @.str.72, ptr @.str.73, i32 12, i32 560, i8 7, i8 0, ptr null }, %struct.hisi_gate_clock { i32 20, ptr @.str.74, ptr @.str.75, i32 12, i32 560, i8 8, i8 0, ptr null }, %struct.hisi_gate_clock { i32 21, ptr @.str.76, ptr @.str.14, i32 12, i32 560, i8 9, i8 0, ptr null }, %struct.hisi_gate_clock { i32 22, ptr @.str.77, ptr @.str.55, i32 12, i32 560, i8 12, i8 0, ptr null }, %struct.hisi_gate_clock { i32 59, ptr @.str.78, ptr @.str.57, i32 2052, i32 560, i8 18, i8 0, ptr null }, %struct.hisi_gate_clock { i32 23, ptr @.str.79, ptr @.str.80, i32 12, i32 576, i8 11, i8 0, ptr null }, %struct.hisi_gate_clock { i32 24, ptr @.str.81, ptr @.str.82, i32 12, i32 624, i8 0, i8 0, ptr null }, %struct.hisi_gate_clock { i32 25, ptr @.str.83, ptr @.str.8, i32 12, i32 624, i8 1, i8 0, ptr null }, %struct.hisi_gate_clock { i32 26, ptr @.str.84, ptr @.str.8, i32 12, i32 624, i8 2, i8 0, ptr null }, %struct.hisi_gate_clock { i32 27, ptr @.str.85, ptr @.str.8, i32 12, i32 624, i8 3, i8 0, ptr null }, %struct.hisi_gate_clock { i32 28, ptr @.str.17, ptr @.str.86, i32 12, i32 624, i8 6, i8 0, ptr null }, %struct.hisi_gate_clock { i32 29, ptr @.str.19, ptr @.str.87, i32 12, i32 624, i8 7, i8 0, ptr null }, %struct.hisi_gate_clock { i32 30, ptr @.str.88, ptr @.str.89, i32 12, i32 624, i8 9, i8 0, ptr null }, %struct.hisi_gate_clock { i32 31, ptr @.str.90, ptr @.str.91, i32 12, i32 624, i8 10, i8 0, ptr null }, %struct.hisi_gate_clock { i32 32, ptr @.str.21, ptr @.str.92, i32 12, i32 624, i8 11, i8 0, ptr null }, %struct.hisi_gate_clock { i32 33, ptr @.str.93, ptr @.str.8, i32 2052, i32 624, i8 12, i8 0, ptr null }], section ".init.data", align 4
@hi6220_mux_clks_sys = internal global [17 x %struct.hisi_mux_clock] [%struct.hisi_mux_clock { i32 34, ptr @.str.43, ptr @mmc0_src_p, i8 2, i32 4, i32 4, i8 0, i8 1, i8 0, ptr null, ptr null }, %struct.hisi_mux_clock { i32 35, ptr @.str.45, ptr @mmc0_sample_in, i8 2, i32 4, i32 4, i8 0, i8 1, i8 0, ptr null, ptr null }, %struct.hisi_mux_clock { i32 36, ptr @.str.47, ptr @mmc1_src_p, i8 2, i32 4, i32 4, i8 2, i8 1, i8 0, ptr null, ptr null }, %struct.hisi_mux_clock { i32 37, ptr @.str.49, ptr @mmc1_sample_in, i8 2, i32 4, i32 4, i8 2, i8 1, i8 0, ptr null, ptr null }, %struct.hisi_mux_clock { i32 38, ptr @.str.51, ptr @mmc2_src_p, i8 2, i32 4, i32 4, i8 4, i8 1, i8 0, ptr null, ptr null }, %struct.hisi_mux_clock { i32 39, ptr @.str.53, ptr @mmc2_sample_in, i8 2, i32 4, i32 4, i8 4, i8 1, i8 0, ptr null, ptr null }, %struct.hisi_mux_clock { i32 40, ptr @.str.82, ptr @hifi_src, i8 2, i32 4, i32 1024, i8 0, i8 1, i8 4, ptr null, ptr null }, %struct.hisi_mux_clock { i32 41, ptr @.str.69, ptr @uart1_src, i8 2, i32 4, i32 1024, i8 1, i8 1, i8 4, ptr null, ptr null }, %struct.hisi_mux_clock { i32 42, ptr @.str.71, ptr @uart2_src, i8 2, i32 4, i32 1024, i8 2, i8 1, i8 4, ptr null, ptr null }, %struct.hisi_mux_clock { i32 43, ptr @.str.73, ptr @uart3_src, i8 2, i32 4, i32 1024, i8 3, i8 1, i8 4, ptr null, ptr null }, %struct.hisi_mux_clock { i32 44, ptr @.str.75, ptr @uart4_src, i8 2, i32 4, i32 1024, i8 4, i8 1, i8 4, ptr null, ptr null }, %struct.hisi_mux_clock { i32 45, ptr @.str.94, ptr @mmc0_mux0_p, i8 2, i32 4, i32 1024, i8 5, i8 1, i8 4, ptr null, ptr null }, %struct.hisi_mux_clock { i32 46, ptr @.str.95, ptr @mmc1_mux0_p, i8 2, i32 4, i32 1024, i8 11, i8 1, i8 4, ptr null, ptr null }, %struct.hisi_mux_clock { i32 47, ptr @.str.96, ptr @mmc2_mux0_p, i8 2, i32 4, i32 1024, i8 12, i8 1, i8 4, ptr null, ptr null }, %struct.hisi_mux_clock { i32 48, ptr @.str.86, ptr @mmc0_mux1_p, i8 2, i32 4, i32 1024, i8 13, i8 1, i8 4, ptr null, ptr null }, %struct.hisi_mux_clock { i32 49, ptr @.str.87, ptr @mmc1_mux1_p, i8 2, i32 4, i32 1024, i8 14, i8 1, i8 4, ptr null, ptr null }, %struct.hisi_mux_clock { i32 50, ptr @.str.92, ptr @mmc2_mux1_p, i8 2, i32 4, i32 1024, i8 15, i8 1, i8 4, ptr null, ptr null }], section ".init.data", align 4
@hi6220_div_clks_sys = internal global [8 x %struct.hi6220_divider_clock] [%struct.hi6220_divider_clock { i32 51, ptr @.str.55, ptr @.str.13, i32 4, i32 1168, i8 0, i8 4, i32 7, ptr null }, %struct.hi6220_divider_clock { i32 52, ptr @.str.97, ptr @.str.83, i32 4, i32 1172, i8 0, i8 6, i32 7, ptr null }, %struct.hi6220_divider_clock { i32 53, ptr @.str.98, ptr @.str.84, i32 4, i32 1176, i8 0, i8 6, i32 7, ptr null }, %struct.hi6220_divider_clock { i32 54, ptr @.str.99, ptr @.str.85, i32 4, i32 1180, i8 0, i8 6, i32 7, ptr null }, %struct.hi6220_divider_clock { i32 55, ptr @.str.59, ptr @.str.81, i32 4, i32 1184, i8 0, i8 4, i32 7, ptr null }, %struct.hi6220_divider_clock { i32 56, ptr @.str.101, ptr @.str.88, i32 4, i32 1184, i8 8, i8 6, i32 15, ptr null }, %struct.hi6220_divider_clock { i32 57, ptr @.str.57, ptr @.str.15, i32 4, i32 1184, i8 24, i8 2, i32 31, ptr null }, %struct.hi6220_divider_clock { i32 58, ptr @.str.63, ptr @.str.93, i32 4, i32 1188, i8 0, i8 4, i32 7, ptr null }], section ".init.data", align 4
@.str.42 = private unnamed_addr constant [9 x i8] c"mmc0_clk\00", align 1
@.str.43 = private unnamed_addr constant [9 x i8] c"mmc0_src\00", align 1
@.str.44 = private unnamed_addr constant [12 x i8] c"mmc0_ciuclk\00", align 1
@.str.45 = private unnamed_addr constant [12 x i8] c"mmc0_smp_in\00", align 1
@.str.46 = private unnamed_addr constant [9 x i8] c"mmc1_clk\00", align 1
@.str.47 = private unnamed_addr constant [9 x i8] c"mmc1_src\00", align 1
@.str.48 = private unnamed_addr constant [12 x i8] c"mmc1_ciuclk\00", align 1
@.str.49 = private unnamed_addr constant [12 x i8] c"mmc1_smp_in\00", align 1
@.str.50 = private unnamed_addr constant [9 x i8] c"mmc2_clk\00", align 1
@.str.51 = private unnamed_addr constant [9 x i8] c"mmc2_src\00", align 1
@.str.52 = private unnamed_addr constant [12 x i8] c"mmc2_ciuclk\00", align 1
@.str.53 = private unnamed_addr constant [12 x i8] c"mmc2_smp_in\00", align 1
@.str.54 = private unnamed_addr constant [12 x i8] c"usbotg_hclk\00", align 1
@.str.55 = private unnamed_addr constant [8 x i8] c"clk_bus\00", align 1
@.str.56 = private unnamed_addr constant [12 x i8] c"clk_picophy\00", align 1
@.str.57 = private unnamed_addr constant [8 x i8] c"cs_dapb\00", align 1
@.str.58 = private unnamed_addr constant [9 x i8] c"hifi_clk\00", align 1
@.str.59 = private unnamed_addr constant [9 x i8] c"hifi_div\00", align 1
@.str.60 = private unnamed_addr constant [13 x i8] c"dacodec_pclk\00", align 1
@.str.61 = private unnamed_addr constant [11 x i8] c"edmac_aclk\00", align 1
@.str.62 = private unnamed_addr constant [7 x i8] c"cs_atb\00", align 1
@.str.63 = private unnamed_addr constant [11 x i8] c"cs_atb_div\00", align 1
@.str.64 = private unnamed_addr constant [9 x i8] c"i2c0_clk\00", align 1
@.str.65 = private unnamed_addr constant [9 x i8] c"i2c1_clk\00", align 1
@.str.66 = private unnamed_addr constant [9 x i8] c"i2c2_clk\00", align 1
@.str.67 = private unnamed_addr constant [9 x i8] c"i2c3_clk\00", align 1
@.str.68 = private unnamed_addr constant [11 x i8] c"uart1_pclk\00", align 1
@.str.69 = private unnamed_addr constant [10 x i8] c"uart1_src\00", align 1
@.str.70 = private unnamed_addr constant [11 x i8] c"uart2_pclk\00", align 1
@.str.71 = private unnamed_addr constant [10 x i8] c"uart2_src\00", align 1
@.str.72 = private unnamed_addr constant [11 x i8] c"uart3_pclk\00", align 1
@.str.73 = private unnamed_addr constant [10 x i8] c"uart3_src\00", align 1
@.str.74 = private unnamed_addr constant [11 x i8] c"uart4_pclk\00", align 1
@.str.75 = private unnamed_addr constant [10 x i8] c"uart4_src\00", align 1
@.str.76 = private unnamed_addr constant [8 x i8] c"spi_clk\00", align 1
@.str.77 = private unnamed_addr constant [12 x i8] c"tsensor_clk\00", align 1
@.str.78 = private unnamed_addr constant [9 x i8] c"dapb_clk\00", align 1
@.str.79 = private unnamed_addr constant [8 x i8] c"mmu_clk\00", align 1
@.str.80 = private unnamed_addr constant [10 x i8] c"ddrc_axi1\00", align 1
@.str.81 = private unnamed_addr constant [9 x i8] c"hifi_sel\00", align 1
@.str.82 = private unnamed_addr constant [9 x i8] c"hifi_src\00", align 1
@.str.83 = private unnamed_addr constant [12 x i8] c"mmc0_syspll\00", align 1
@.str.84 = private unnamed_addr constant [12 x i8] c"mmc1_syspll\00", align 1
@.str.85 = private unnamed_addr constant [12 x i8] c"mmc2_syspll\00", align 1
@.str.86 = private unnamed_addr constant [10 x i8] c"mmc0_mux1\00", align 1
@.str.87 = private unnamed_addr constant [10 x i8] c"mmc1_mux1\00", align 1
@.str.88 = private unnamed_addr constant [11 x i8] c"bbppll_sel\00", align 1
@.str.89 = private unnamed_addr constant [14 x i8] c"pll0_bbp_gate\00", align 1
@.str.90 = private unnamed_addr constant [14 x i8] c"media_pll_src\00", align 1
@.str.91 = private unnamed_addr constant [15 x i8] c"pll_media_gate\00", align 1
@.str.92 = private unnamed_addr constant [10 x i8] c"mmc2_mux1\00", align 1
@.str.93 = private unnamed_addr constant [14 x i8] c"cs_atb_syspll\00", align 1
@mmc0_src_p = internal global [2 x ptr] [ptr @.str.16, ptr @.str.97], section ".init.data", align 4
@mmc0_sample_in = internal global [2 x ptr] [ptr @.str.24, ptr @.str.4], section ".init.data", align 4
@mmc1_src_p = internal global [2 x ptr] [ptr @.str.18, ptr @.str.98], section ".init.data", align 4
@mmc1_sample_in = internal global [2 x ptr] [ptr @.str.25, ptr @.str.2], section ".init.data", align 4
@mmc2_src_p = internal global [2 x ptr] [ptr @.str.20, ptr @.str.99], section ".init.data", align 4
@mmc2_sample_in = internal global [2 x ptr] [ptr @.str.26, ptr @.str.3], section ".init.data", align 4
@hifi_src = internal global [2 x ptr] [ptr @.str.8, ptr @.str.91], section ".init.data", align 4
@uart1_src = internal global [2 x ptr] [ptr @.str.1, ptr @.str.14], section ".init.data", align 4
@uart2_src = internal global [2 x ptr] [ptr @.str.1, ptr @.str.14], section ".init.data", align 4
@uart3_src = internal global [2 x ptr] [ptr @.str.1, ptr @.str.14], section ".init.data", align 4
@uart4_src = internal global [2 x ptr] [ptr @.str.1, ptr @.str.14], section ".init.data", align 4
@.str.94 = private unnamed_addr constant [10 x i8] c"mmc0_mux0\00", align 1
@mmc0_mux0_p = internal global [2 x ptr] [ptr @.str.100, ptr @.str.8], section ".init.data", align 4
@.str.95 = private unnamed_addr constant [10 x i8] c"mmc1_mux0\00", align 1
@mmc1_mux0_p = internal global [2 x ptr] [ptr @.str.100, ptr @.str.8], section ".init.data", align 4
@.str.96 = private unnamed_addr constant [10 x i8] c"mmc2_mux0\00", align 1
@mmc2_mux0_p = internal global [2 x ptr] [ptr @.str.100, ptr @.str.8], section ".init.data", align 4
@mmc0_mux1_p = internal global [2 x ptr] [ptr @.str.94, ptr @.str.91], section ".init.data", align 4
@mmc1_mux1_p = internal global [2 x ptr] [ptr @.str.95, ptr @.str.91], section ".init.data", align 4
@mmc2_mux1_p = internal global [2 x ptr] [ptr @.str.96, ptr @.str.91], section ".init.data", align 4
@.str.97 = private unnamed_addr constant [9 x i8] c"mmc0_div\00", align 1
@.str.98 = private unnamed_addr constant [9 x i8] c"mmc1_div\00", align 1
@.str.99 = private unnamed_addr constant [9 x i8] c"mmc2_div\00", align 1
@.str.100 = private unnamed_addr constant [13 x i8] c"pll_ddr_gate\00", align 1
@.str.101 = private unnamed_addr constant [12 x i8] c"bbppll0_div\00", align 1
@hi6220_separated_gate_clks_media = internal global [13 x %struct.hisi_gate_clock] [%struct.hisi_gate_clock { i32 1, ptr @.str.102, ptr @.str.22, i32 12, i32 1312, i8 0, i8 0, ptr null }, %struct.hisi_gate_clock { i32 2, ptr @.str.103, ptr @.str.22, i32 12, i32 1312, i8 1, i8 0, ptr null }, %struct.hisi_gate_clock { i32 3, ptr @.str.104, ptr @.str.105, i32 12, i32 1312, i8 3, i8 0, ptr null }, %struct.hisi_gate_clock { i32 4, ptr @.str.106, ptr @.str.107, i32 12, i32 1312, i8 5, i8 0, ptr null }, %struct.hisi_gate_clock { i32 5, ptr @.str.108, ptr @.str.105, i32 12, i32 1312, i8 6, i8 0, ptr null }, %struct.hisi_gate_clock { i32 6, ptr @.str.109, ptr @.str.79, i32 12, i32 1312, i8 8, i8 0, ptr null }, %struct.hisi_gate_clock { i32 7, ptr @.str.110, ptr @.str.1, i32 12, i32 1312, i8 9, i8 0, ptr null }, %struct.hisi_gate_clock { i32 8, ptr @.str.111, ptr @.str.1, i32 12, i32 1312, i8 10, i8 0, ptr null }, %struct.hisi_gate_clock { i32 9, ptr @.str.112, ptr @.str.90, i32 12, i32 1312, i8 11, i8 0, ptr null }, %struct.hisi_gate_clock { i32 10, ptr @.str.113, ptr @.str.90, i32 12, i32 1312, i8 12, i8 0, ptr null }, %struct.hisi_gate_clock { i32 11, ptr @.str.114, ptr @.str.90, i32 12, i32 1312, i8 14, i8 0, ptr null }, %struct.hisi_gate_clock { i32 12, ptr @.str.115, ptr @.str.116, i32 12, i32 1312, i8 15, i8 0, ptr null }, %struct.hisi_gate_clock { i32 13, ptr @.str.117, ptr @.str.9, i32 12, i32 1312, i8 17, i8 0, ptr null }], section ".init.data", align 4
@hi6220_mux_clks_media = internal global [3 x %struct.hisi_mux_clock] [%struct.hisi_mux_clock { i32 14, ptr @.str.118, ptr @clk_1440_1200_src, i8 2, i32 4, i32 1308, i8 0, i8 1, i8 0, ptr null, ptr null }, %struct.hisi_mux_clock { i32 15, ptr @.str.119, ptr @clk_1000_1200_src, i8 2, i32 4, i32 1308, i8 1, i8 1, i8 0, ptr null, ptr null }, %struct.hisi_mux_clock { i32 16, ptr @.str.116, ptr @clk_1000_1440_src, i8 2, i32 4, i32 1308, i8 6, i8 1, i8 0, ptr null, ptr null }], section ".init.data", align 4
@hi6220_div_clks_media = internal global [7 x %struct.hi6220_divider_clock] [%struct.hi6220_divider_clock { i32 17, ptr @.str.23, ptr @.str.90, i32 4, i32 3260, i8 0, i8 4, i32 23, ptr null }, %struct.hi6220_divider_clock { i32 18, ptr @.str.107, ptr @.str.112, i32 4, i32 3260, i8 8, i8 4, i32 15, ptr null }, %struct.hi6220_divider_clock { i32 19, ptr @.str.121, ptr @.str.113, i32 4, i32 3260, i8 24, i8 4, i32 31, ptr null }, %struct.hi6220_divider_clock { i32 20, ptr @.str.105, ptr @.str.114, i32 4, i32 3264, i8 16, i8 3, i32 23, ptr null }, %struct.hi6220_divider_clock { i32 21, ptr @.str.122, ptr @.str.118, i32 4, i32 3264, i8 24, i8 6, i32 31, ptr null }, %struct.hi6220_divider_clock { i32 22, ptr @.str.123, ptr @.str.119, i32 4, i32 3268, i8 8, i8 4, i32 15, ptr null }, %struct.hi6220_divider_clock { i32 23, ptr @.str.124, ptr @.str.115, i32 4, i32 3268, i8 24, i8 6, i32 31, ptr null }], section ".init.data", align 4
@.str.102 = private unnamed_addr constant [9 x i8] c"dsi_pclk\00", align 1
@.str.103 = private unnamed_addr constant [9 x i8] c"g3d_pclk\00", align 1
@.str.104 = private unnamed_addr constant [15 x i8] c"aclk_codec_vpu\00", align 1
@.str.105 = private unnamed_addr constant [13 x i8] c"ade_core_src\00", align 1
@.str.106 = private unnamed_addr constant [9 x i8] c"isp_sclk\00", align 1
@.str.107 = private unnamed_addr constant [13 x i8] c"isp_sclk_src\00", align 1
@.str.108 = private unnamed_addr constant [9 x i8] c"ade_core\00", align 1
@.str.109 = private unnamed_addr constant [10 x i8] c"media_mmu\00", align 1
@.str.110 = private unnamed_addr constant [12 x i8] c"cfg_csi4phy\00", align 1
@.str.111 = private unnamed_addr constant [12 x i8] c"cfg_csi2phy\00", align 1
@.str.112 = private unnamed_addr constant [14 x i8] c"isp_sclk_gate\00", align 1
@.str.113 = private unnamed_addr constant [15 x i8] c"isp_sclk_gate1\00", align 1
@.str.114 = private unnamed_addr constant [14 x i8] c"ade_core_gate\00", align 1
@.str.115 = private unnamed_addr constant [15 x i8] c"codec_vpu_gate\00", align 1
@.str.116 = private unnamed_addr constant [14 x i8] c"clk_1000_1440\00", align 1
@.str.117 = private unnamed_addr constant [17 x i8] c"media_syspll_src\00", align 1
@.str.118 = private unnamed_addr constant [14 x i8] c"clk_1440_1200\00", align 1
@clk_1440_1200_src = internal global [2 x ptr] [ptr @.str.117, ptr @.str.90], section ".init.data", align 4
@.str.119 = private unnamed_addr constant [14 x i8] c"clk_1000_1200\00", align 1
@clk_1000_1200_src = internal global [2 x ptr] [ptr @.str.120, ptr @.str.117], section ".init.data", align 4
@clk_1000_1440_src = internal global [2 x ptr] [ptr @.str.120, ptr @.str.90], section ".init.data", align 4
@.str.120 = private unnamed_addr constant [13 x i8] c"pll_gpu_gate\00", align 1
@.str.121 = private unnamed_addr constant [10 x i8] c"isp_sclk1\00", align 1
@.str.122 = private unnamed_addr constant [12 x i8] c"ade_pix_src\00", align 1
@.str.123 = private unnamed_addr constant [8 x i8] c"g3d_clk\00", align 1
@.str.124 = private unnamed_addr constant [14 x i8] c"codec_vpu_src\00", align 1
@hi6220_gate_clks_power = internal global [5 x %struct.hisi_gate_clock] [%struct.hisi_gate_clock { i32 1, ptr @.str.120, ptr @.str.6, i32 12, i32 8, i8 0, i8 0, ptr null }, %struct.hisi_gate_clock { i32 2, ptr @.str.125, ptr @.str.7, i32 12, i32 16, i8 0, i8 0, ptr null }, %struct.hisi_gate_clock { i32 3, ptr @.str.100, ptr @.str.12, i32 12, i32 24, i8 0, i8 0, ptr null }, %struct.hisi_gate_clock { i32 4, ptr @.str.91, ptr @.str.11, i32 12, i32 56, i8 0, i8 0, ptr null }, %struct.hisi_gate_clock { i32 5, ptr @.str.89, ptr @.str.5, i32 12, i32 72, i8 0, i8 0, ptr null }], section ".init.data", align 4
@hi6220_div_clks_power = internal global [2 x %struct.hi6220_divider_clock] [%struct.hi6220_divider_clock { i32 6, ptr @.str.126, ptr @.str.10, i32 4, i32 1448, i8 0, i8 4, i32 0, ptr null }, %struct.hi6220_divider_clock { i32 7, ptr @.str.80, ptr @.str.126, i32 4, i32 1448, i8 8, i8 2, i32 0, ptr null }], section ".init.data", align 4
@.str.125 = private unnamed_addr constant [14 x i8] c"pll1_ddr_gate\00", align 1
@.str.126 = private unnamed_addr constant [9 x i8] c"ddrc_src\00", align 1
@hi6220_acpu_sc_gate_sep_clks = internal constant [1 x %struct.hisi_gate_clock] [%struct.hisi_gate_clock { i32 0, ptr @.str.127, ptr @.str.62, i32 12, i32 12, i8 11, i8 0, ptr null }], align 4
@.str.127 = private unnamed_addr constant [9 x i8] c"sft_at_s\00", align 1
@llvm.compiler.used = appending global [5 x ptr] [ptr @__of_table_hi6220_clk_acpu, ptr @__of_table_hi6220_clk_ao, ptr @__of_table_hi6220_clk_media, ptr @__of_table_hi6220_clk_power, ptr @__of_table_hi6220_clk_sys], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @hi6220_clk_ao_of_clk_init_driver(ptr noundef %0) #0 section ".init.text" {
  %2 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 10
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %2) #2
  tail call fastcc void @hi6220_clk_ao_init(ptr noundef %0) #3
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @hi6220_clk_sys_of_clk_init_driver(ptr noundef %0) #0 section ".init.text" {
  %2 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 10
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %2) #2
  tail call fastcc void @hi6220_clk_sys_init(ptr noundef %0) #3
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @hi6220_clk_media_of_clk_init_driver(ptr noundef %0) #0 section ".init.text" {
  %2 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 10
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %2) #2
  tail call fastcc void @hi6220_clk_media_init(ptr noundef %0) #3
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @hi6220_clk_power_init(ptr noundef %0) #0 section ".init.text" {
  %2 = tail call ptr @hisi_clk_init(ptr noundef %0, i32 noundef 8) #2
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = tail call i32 @hisi_clk_register_gate(ptr noundef nonnull @hi6220_gate_clks_power, i32 noundef 5, ptr noundef nonnull %2) #2
  tail call void @hi6220_clk_register_divider(ptr noundef nonnull @hi6220_div_clks_power, i32 noundef 2, ptr noundef nonnull %2) #2
  br label %6

6:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @hi6220_clk_acpu_init(ptr noundef %0) #0 section ".init.text" {
  %2 = tail call ptr @hisi_clk_init(ptr noundef %0, i32 noundef 1) #2
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @hisi_clk_register_gate_sep(ptr noundef nonnull @hi6220_acpu_sc_gate_sep_clks, i32 noundef 1, ptr noundef nonnull %2) #2
  br label %5

5:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @hi6220_clk_ao_init(ptr noundef %0) unnamed_addr #0 section ".init.text" {
  %2 = tail call ptr @hisi_clk_init(ptr noundef %0, i32 noundef 39) #2
  %3 = icmp eq ptr %2, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = tail call i32 @hisi_clk_register_fixed_rate(ptr noundef nonnull @hi6220_fixed_rate_clks, i32 noundef 13, ptr noundef nonnull %2) #2
  %6 = tail call i32 @hisi_clk_register_fixed_factor(ptr noundef nonnull @hi6220_fixed_factor_clks, i32 noundef 10, ptr noundef nonnull %2) #2
  tail call void @hisi_clk_register_gate_sep(ptr noundef nonnull @hi6220_separated_gate_clks_ao, i32 noundef 15, ptr noundef nonnull %2) #2
  br label %7

7:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hisi_clk_init(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hisi_clk_register_fixed_rate(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hisi_clk_register_fixed_factor(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hisi_clk_register_gate_sep(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @hi6220_clk_sys_init(ptr noundef %0) unnamed_addr #0 section ".init.text" {
  %2 = tail call ptr @hisi_clk_init(ptr noundef %0, i32 noundef 60) #2
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  tail call void @hisi_clk_register_gate_sep(ptr noundef nonnull @hi6220_separated_gate_clks_sys, i32 noundef 34, ptr noundef nonnull %2) #2
  %5 = tail call i32 @hisi_clk_register_mux(ptr noundef nonnull @hi6220_mux_clks_sys, i32 noundef 17, ptr noundef nonnull %2) #2
  tail call void @hi6220_clk_register_divider(ptr noundef nonnull @hi6220_div_clks_sys, i32 noundef 8, ptr noundef nonnull %2) #2
  br label %6

6:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hisi_clk_register_mux(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hi6220_clk_register_divider(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @hi6220_clk_media_init(ptr noundef %0) unnamed_addr #0 section ".init.text" {
  %2 = tail call ptr @hisi_clk_init(ptr noundef %0, i32 noundef 24) #2
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  tail call void @hisi_clk_register_gate_sep(ptr noundef nonnull @hi6220_separated_gate_clks_media, i32 noundef 13, ptr noundef nonnull %2) #2
  %5 = tail call i32 @hisi_clk_register_mux(ptr noundef nonnull @hi6220_mux_clks_media, i32 noundef 3, ptr noundef nonnull %2) #2
  tail call void @hi6220_clk_register_divider(ptr noundef nonnull @hi6220_div_clks_media, i32 noundef 7, ptr noundef nonnull %2) #2
  br label %6

6:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hisi_clk_register_gate(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

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
