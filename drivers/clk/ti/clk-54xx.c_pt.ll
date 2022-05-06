; ModuleID = '/llk/IR/drivers/clk/ti/clk-54xx.c_pt.bc'
source_filename = "../drivers/clk/ti/clk-54xx.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.omap_clkctrl_reg_data = type { i16, ptr, i16, ptr, ptr }
%struct.omap_clkctrl_data = type { i32, ptr }
%struct.ti_dt_clk = type { %struct.clk_lookup, ptr }
%struct.clk_lookup = type { %struct.list_head, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.omap_clkctrl_bit_data = type { i8, i8, ptr, ptr }
%struct.omap_clkctrl_div_data = type { ptr, i32, i32 }

@omap5_mpu_clkctrl_regs = internal constant [2 x %struct.omap_clkctrl_reg_data] [%struct.omap_clkctrl_reg_data { i16 0, ptr null, i16 0, ptr @.str.11, ptr null }, %struct.omap_clkctrl_reg_data zeroinitializer], section ".init.rodata", align 4
@omap5_dsp_clkctrl_regs = internal constant [2 x %struct.omap_clkctrl_reg_data] [%struct.omap_clkctrl_reg_data { i16 0, ptr null, i16 192, ptr @.str.12, ptr null }, %struct.omap_clkctrl_reg_data zeroinitializer], section ".init.rodata", align 4
@omap5_abe_clkctrl_regs = internal constant [12 x %struct.omap_clkctrl_reg_data] [%struct.omap_clkctrl_reg_data { i16 0, ptr null, i16 0, ptr @.str.13, ptr null }, %struct.omap_clkctrl_reg_data { i16 8, ptr @omap5_aess_bit_data, i16 32, ptr @.str.14, ptr null }, %struct.omap_clkctrl_reg_data { i16 16, ptr null, i16 32, ptr @.str.15, ptr null }, %struct.omap_clkctrl_reg_data { i16 24, ptr @omap5_dmic_bit_data, i16 32, ptr @.str.16, ptr null }, %struct.omap_clkctrl_reg_data { i16 40, ptr @omap5_mcbsp1_bit_data, i16 32, ptr @.str.17, ptr null }, %struct.omap_clkctrl_reg_data { i16 48, ptr @omap5_mcbsp2_bit_data, i16 32, ptr @.str.18, ptr null }, %struct.omap_clkctrl_reg_data { i16 56, ptr @omap5_mcbsp3_bit_data, i16 32, ptr @.str.19, ptr null }, %struct.omap_clkctrl_reg_data { i16 72, ptr @omap5_timer5_bit_data, i16 32, ptr @.str.20, ptr null }, %struct.omap_clkctrl_reg_data { i16 80, ptr @omap5_timer6_bit_data, i16 32, ptr @.str.21, ptr null }, %struct.omap_clkctrl_reg_data { i16 88, ptr @omap5_timer7_bit_data, i16 32, ptr @.str.22, ptr null }, %struct.omap_clkctrl_reg_data { i16 96, ptr @omap5_timer8_bit_data, i16 32, ptr @.str.23, ptr null }, %struct.omap_clkctrl_reg_data zeroinitializer], section ".init.rodata", align 4
@omap5_l3main1_clkctrl_regs = internal constant [2 x %struct.omap_clkctrl_reg_data] [%struct.omap_clkctrl_reg_data { i16 0, ptr null, i16 0, ptr @.str.33, ptr null }, %struct.omap_clkctrl_reg_data zeroinitializer], section ".init.rodata", align 4
@omap5_l3main2_clkctrl_regs = internal constant [4 x %struct.omap_clkctrl_reg_data] [%struct.omap_clkctrl_reg_data { i16 0, ptr null, i16 0, ptr @.str.33, ptr null }, %struct.omap_clkctrl_reg_data { i16 8, ptr null, i16 64, ptr @.str.33, ptr null }, %struct.omap_clkctrl_reg_data { i16 16, ptr null, i16 64, ptr @.str.33, ptr null }, %struct.omap_clkctrl_reg_data zeroinitializer], section ".init.rodata", align 4
@omap5_ipu_clkctrl_regs = internal constant [2 x %struct.omap_clkctrl_reg_data] [%struct.omap_clkctrl_reg_data { i16 0, ptr null, i16 192, ptr @.str.34, ptr null }, %struct.omap_clkctrl_reg_data zeroinitializer], section ".init.rodata", align 4
@omap5_dma_clkctrl_regs = internal constant [2 x %struct.omap_clkctrl_reg_data] [%struct.omap_clkctrl_reg_data { i16 0, ptr null, i16 0, ptr @.str.33, ptr null }, %struct.omap_clkctrl_reg_data zeroinitializer], section ".init.rodata", align 4
@omap5_emif_clkctrl_regs = internal constant [4 x %struct.omap_clkctrl_reg_data] [%struct.omap_clkctrl_reg_data { i16 0, ptr null, i16 0, ptr @.str.33, ptr null }, %struct.omap_clkctrl_reg_data { i16 16, ptr null, i16 64, ptr @.str.35, ptr null }, %struct.omap_clkctrl_reg_data { i16 24, ptr null, i16 64, ptr @.str.35, ptr null }, %struct.omap_clkctrl_reg_data zeroinitializer], section ".init.rodata", align 4
@omap5_l4cfg_clkctrl_regs = internal constant [4 x %struct.omap_clkctrl_reg_data] [%struct.omap_clkctrl_reg_data { i16 0, ptr null, i16 0, ptr @.str.36, ptr null }, %struct.omap_clkctrl_reg_data { i16 8, ptr null, i16 0, ptr @.str.36, ptr null }, %struct.omap_clkctrl_reg_data { i16 16, ptr null, i16 0, ptr @.str.36, ptr null }, %struct.omap_clkctrl_reg_data zeroinitializer], section ".init.rodata", align 4
@omap5_l3instr_clkctrl_regs = internal constant [3 x %struct.omap_clkctrl_reg_data] [%struct.omap_clkctrl_reg_data { i16 0, ptr null, i16 64, ptr @.str.33, ptr null }, %struct.omap_clkctrl_reg_data { i16 8, ptr null, i16 64, ptr @.str.33, ptr null }, %struct.omap_clkctrl_reg_data zeroinitializer], section ".init.rodata", align 4
@omap5_l4per_clkctrl_regs = internal constant [33 x %struct.omap_clkctrl_reg_data] [%struct.omap_clkctrl_reg_data { i16 8, ptr @omap5_timer10_bit_data, i16 32, ptr @.str.37, ptr null }, %struct.omap_clkctrl_reg_data { i16 16, ptr @omap5_timer11_bit_data, i16 32, ptr @.str.38, ptr null }, %struct.omap_clkctrl_reg_data { i16 24, ptr @omap5_timer2_bit_data, i16 32, ptr @.str.39, ptr null }, %struct.omap_clkctrl_reg_data { i16 32, ptr @omap5_timer3_bit_data, i16 32, ptr @.str.40, ptr null }, %struct.omap_clkctrl_reg_data { i16 40, ptr @omap5_timer4_bit_data, i16 32, ptr @.str.41, ptr null }, %struct.omap_clkctrl_reg_data { i16 48, ptr @omap5_timer9_bit_data, i16 32, ptr @.str.42, ptr null }, %struct.omap_clkctrl_reg_data { i16 64, ptr @omap5_gpio2_bit_data, i16 64, ptr @.str.36, ptr null }, %struct.omap_clkctrl_reg_data { i16 72, ptr @omap5_gpio3_bit_data, i16 64, ptr @.str.36, ptr null }, %struct.omap_clkctrl_reg_data { i16 80, ptr @omap5_gpio4_bit_data, i16 64, ptr @.str.36, ptr null }, %struct.omap_clkctrl_reg_data { i16 88, ptr @omap5_gpio5_bit_data, i16 64, ptr @.str.36, ptr null }, %struct.omap_clkctrl_reg_data { i16 96, ptr @omap5_gpio6_bit_data, i16 64, ptr @.str.36, ptr null }, %struct.omap_clkctrl_reg_data { i16 128, ptr null, i16 32, ptr @.str.43, ptr null }, %struct.omap_clkctrl_reg_data { i16 136, ptr null, i16 32, ptr @.str.43, ptr null }, %struct.omap_clkctrl_reg_data { i16 144, ptr null, i16 32, ptr @.str.43, ptr null }, %struct.omap_clkctrl_reg_data { i16 152, ptr null, i16 32, ptr @.str.43, ptr null }, %struct.omap_clkctrl_reg_data { i16 160, ptr null, i16 0, ptr @.str.36, ptr null }, %struct.omap_clkctrl_reg_data { i16 208, ptr null, i16 32, ptr @.str.44, ptr null }, %struct.omap_clkctrl_reg_data { i16 216, ptr null, i16 32, ptr @.str.44, ptr null }, %struct.omap_clkctrl_reg_data { i16 224, ptr null, i16 32, ptr @.str.44, ptr null }, %struct.omap_clkctrl_reg_data { i16 232, ptr null, i16 32, ptr @.str.44, ptr null }, %struct.omap_clkctrl_reg_data { i16 240, ptr @omap5_gpio7_bit_data, i16 64, ptr @.str.36, ptr null }, %struct.omap_clkctrl_reg_data { i16 248, ptr @omap5_gpio8_bit_data, i16 64, ptr @.str.36, ptr null }, %struct.omap_clkctrl_reg_data { i16 256, ptr null, i16 32, ptr @.str.44, ptr null }, %struct.omap_clkctrl_reg_data { i16 264, ptr null, i16 32, ptr @.str.44, ptr null }, %struct.omap_clkctrl_reg_data { i16 288, ptr null, i16 32, ptr @.str.44, ptr null }, %struct.omap_clkctrl_reg_data { i16 296, ptr null, i16 32, ptr @.str.44, ptr null }, %struct.omap_clkctrl_reg_data { i16 304, ptr null, i16 32, ptr @.str.44, ptr null }, %struct.omap_clkctrl_reg_data { i16 312, ptr null, i16 32, ptr @.str.44, ptr null }, %struct.omap_clkctrl_reg_data { i16 320, ptr null, i16 32, ptr @.str.43, ptr null }, %struct.omap_clkctrl_reg_data { i16 328, ptr null, i16 32, ptr @.str.43, ptr null }, %struct.omap_clkctrl_reg_data { i16 336, ptr null, i16 32, ptr @.str.44, ptr null }, %struct.omap_clkctrl_reg_data { i16 344, ptr null, i16 32, ptr @.str.44, ptr null }, %struct.omap_clkctrl_reg_data zeroinitializer], section ".init.rodata", align 4
@omap5_l4_secure_clkctrl_regs = internal constant [8 x %struct.omap_clkctrl_reg_data] [%struct.omap_clkctrl_reg_data { i16 0, ptr null, i16 64, ptr @.str.33, ptr null }, %struct.omap_clkctrl_reg_data { i16 8, ptr null, i16 64, ptr @.str.33, ptr null }, %struct.omap_clkctrl_reg_data { i16 16, ptr null, i16 64, ptr @.str.36, ptr null }, %struct.omap_clkctrl_reg_data { i16 24, ptr null, i16 32, ptr @.str.36, ptr null }, %struct.omap_clkctrl_reg_data { i16 32, ptr null, i16 320, ptr @.str.36, ptr null }, %struct.omap_clkctrl_reg_data { i16 40, ptr null, i16 64, ptr @.str.33, ptr null }, %struct.omap_clkctrl_reg_data { i16 56, ptr null, i16 320, ptr @.str.33, ptr null }, %struct.omap_clkctrl_reg_data zeroinitializer], section ".init.rodata", align 4
@omap5_iva_clkctrl_regs = internal constant [3 x %struct.omap_clkctrl_reg_data] [%struct.omap_clkctrl_reg_data { i16 0, ptr null, i16 64, ptr @.str.46, ptr null }, %struct.omap_clkctrl_reg_data { i16 8, ptr null, i16 64, ptr @.str.46, ptr null }, %struct.omap_clkctrl_reg_data zeroinitializer], section ".init.rodata", align 4
@omap5_dss_clkctrl_regs = internal constant [2 x %struct.omap_clkctrl_reg_data] [%struct.omap_clkctrl_reg_data { i16 0, ptr @omap5_dss_core_bit_data, i16 32, ptr @.str.47, ptr null }, %struct.omap_clkctrl_reg_data zeroinitializer], section ".init.rodata", align 4
@omap5_gpu_clkctrl_regs = internal constant [2 x %struct.omap_clkctrl_reg_data] [%struct.omap_clkctrl_reg_data { i16 0, ptr @omap5_gpu_core_bit_data, i16 32, ptr @.str.49, ptr null }, %struct.omap_clkctrl_reg_data zeroinitializer], section ".init.rodata", align 4
@omap5_l3init_clkctrl_regs = internal constant [9 x %struct.omap_clkctrl_reg_data] [%struct.omap_clkctrl_reg_data { i16 8, ptr @omap5_mmc1_bit_data, i16 32, ptr @.str.52, ptr null }, %struct.omap_clkctrl_reg_data { i16 16, ptr @omap5_mmc2_bit_data, i16 32, ptr @.str.53, ptr null }, %struct.omap_clkctrl_reg_data { i16 56, ptr @omap5_usb_host_hs_bit_data, i16 32, ptr @.str.54, ptr null }, %struct.omap_clkctrl_reg_data { i16 72, ptr @omap5_usb_tll_hs_bit_data, i16 64, ptr @.str.36, ptr null }, %struct.omap_clkctrl_reg_data { i16 104, ptr @omap5_sata_bit_data, i16 32, ptr @.str.44, ptr null }, %struct.omap_clkctrl_reg_data { i16 192, ptr null, i16 64, ptr @.str.36, ptr null }, %struct.omap_clkctrl_reg_data { i16 200, ptr null, i16 64, ptr @.str.36, ptr null }, %struct.omap_clkctrl_reg_data { i16 208, ptr @omap5_usb_otg_ss_bit_data, i16 64, ptr @.str.55, ptr null }, %struct.omap_clkctrl_reg_data zeroinitializer], section ".init.rodata", align 4
@omap5_wkupaon_clkctrl_regs = internal constant [7 x %struct.omap_clkctrl_reg_data] [%struct.omap_clkctrl_reg_data { i16 0, ptr null, i16 0, ptr @.str.65, ptr null }, %struct.omap_clkctrl_reg_data { i16 16, ptr null, i16 32, ptr @.str.1, ptr null }, %struct.omap_clkctrl_reg_data { i16 24, ptr @omap5_gpio1_bit_data, i16 64, ptr @.str.65, ptr null }, %struct.omap_clkctrl_reg_data { i16 32, ptr @omap5_timer1_bit_data, i16 32, ptr @.str.66, ptr null }, %struct.omap_clkctrl_reg_data { i16 48, ptr null, i16 0, ptr @.str.65, ptr null }, %struct.omap_clkctrl_reg_data { i16 88, ptr null, i16 32, ptr @.str.1, ptr null }, %struct.omap_clkctrl_reg_data zeroinitializer], section ".init.rodata", align 4
@omap5_clkctrl_data = dso_local local_unnamed_addr constant [18 x %struct.omap_clkctrl_data] [%struct.omap_clkctrl_data { i32 1241531168, ptr @omap5_mpu_clkctrl_regs }, %struct.omap_clkctrl_data { i32 1241531424, ptr @omap5_dsp_clkctrl_regs }, %struct.omap_clkctrl_data { i32 1241531680, ptr @omap5_abe_clkctrl_regs }, %struct.omap_clkctrl_data { i32 1241548576, ptr @omap5_l3main1_clkctrl_regs }, %struct.omap_clkctrl_data { i32 1241548832, ptr @omap5_l3main2_clkctrl_regs }, %struct.omap_clkctrl_data { i32 1241549088, ptr @omap5_ipu_clkctrl_regs }, %struct.omap_clkctrl_data { i32 1241549344, ptr @omap5_dma_clkctrl_regs }, %struct.omap_clkctrl_data { i32 1241549600, ptr @omap5_emif_clkctrl_regs }, %struct.omap_clkctrl_data { i32 1241550112, ptr @omap5_l4cfg_clkctrl_regs }, %struct.omap_clkctrl_data { i32 1241550368, ptr @omap5_l3instr_clkctrl_regs }, %struct.omap_clkctrl_data { i32 1241550880, ptr @omap5_l4per_clkctrl_regs }, %struct.omap_clkctrl_data { i32 1241551264, ptr @omap5_l4_secure_clkctrl_regs }, %struct.omap_clkctrl_data { i32 1241551392, ptr @omap5_iva_clkctrl_regs }, %struct.omap_clkctrl_data { i32 1241551904, ptr @omap5_dss_clkctrl_regs }, %struct.omap_clkctrl_data { i32 1241552160, ptr @omap5_gpu_clkctrl_regs }, %struct.omap_clkctrl_data { i32 1241552416, ptr @omap5_l3init_clkctrl_regs }, %struct.omap_clkctrl_data { i32 1256225056, ptr @omap5_wkupaon_clkctrl_regs }, %struct.omap_clkctrl_data zeroinitializer], section ".init.rodata", align 4
@omap54xx_clks = internal global [55 x %struct.ti_dt_clk] [%struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.67, ptr null, ptr null }, ptr @.str.1 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.68, ptr null, ptr null }, ptr @.str.45 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.69, ptr null, ptr null }, ptr @.str.70 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.71, ptr null, ptr null }, ptr @.str.72 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.73, ptr null, ptr null }, ptr @.str.74 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.75, ptr null, ptr null }, ptr @.str.76 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.77, ptr null, ptr null }, ptr @.str.78 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.79, ptr null, ptr null }, ptr @.str.80 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.81, ptr null, ptr null }, ptr @.str.82 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.83, ptr null, ptr null }, ptr @.str.84 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.85, ptr null, ptr null }, ptr @.str.86 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.87, ptr null, ptr null }, ptr @.str.88 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.89, ptr null, ptr null }, ptr @.str.90 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.91, ptr null, ptr null }, ptr @.str.92 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.93, ptr null, ptr null }, ptr @.str.94 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.95, ptr null, ptr null }, ptr @.str.96 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.97, ptr null, ptr null }, ptr @.str.98 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.99, ptr null, ptr null }, ptr @.str.100 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.101, ptr null, ptr null }, ptr @.str.102 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.103, ptr null, ptr null }, ptr @.str.104 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.105, ptr null, ptr null }, ptr @.str.106 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.107, ptr null, ptr null }, ptr @.str.108 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.109, ptr null, ptr null }, ptr @.str.110 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.111, ptr null, ptr null }, ptr @.str.112 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.113, ptr null, ptr null }, ptr @.str.114 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.115, ptr null, ptr null }, ptr @.str.116 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.117, ptr null, ptr null }, ptr @.str.118 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.119, ptr null, ptr null }, ptr @.str.120 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.121, ptr null, ptr null }, ptr @.str.122 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.123, ptr null, ptr null }, ptr @.str.124 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.125, ptr null, ptr null }, ptr @.str.126 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.127, ptr null, ptr null }, ptr @.str.128 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.129, ptr null, ptr null }, ptr @.str.130 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.131, ptr null, ptr null }, ptr @.str.132 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.133, ptr null, ptr null }, ptr @.str.134 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.135, ptr null, ptr null }, ptr @.str.136 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.137, ptr null, ptr null }, ptr @.str.138 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.139, ptr null, ptr null }, ptr @.str.140 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.141, ptr null, ptr null }, ptr @.str.142 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.143, ptr null, ptr null }, ptr @.str.144 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.145, ptr null, ptr null }, ptr @.str.146 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.147, ptr null, ptr null }, ptr @.str.148 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.149, ptr null, ptr null }, ptr @.str.150 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.151, ptr null, ptr null }, ptr @.str.152 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.153, ptr null, ptr null }, ptr @.str.154 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.155, ptr null, ptr null }, ptr @.str.156 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.157, ptr null, ptr null }, ptr @.str.158 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.159, ptr null, ptr null }, ptr @.str.160 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.161, ptr null, ptr null }, ptr @.str.162 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.163, ptr null, ptr null }, ptr @.str.164 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.165, ptr null, ptr null }, ptr @.str.166 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.167, ptr null, ptr null }, ptr @.str.168 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.169, ptr null, ptr null }, ptr @.str.170 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.171, ptr null, ptr null }, ptr @.str.172 }, %struct.ti_dt_clk zeroinitializer], align 4
@.str = private unnamed_addr constant [17 x i8] c"abe_dpll_clk_mux\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"sys_32k_ck\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"abe_dpll_bypass_clk_mux\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"dpll_abe_ck\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"\013%s: failed to configure ABE DPLL!\0A\00", align 1
@__func__.omap5xxx_dt_clk_init = private unnamed_addr constant [21 x i8] c"omap5xxx_dt_clk_init\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"dpll_abe_m2x2_ck\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"\013%s: failed to configure ABE m2x2 DPLL!\0A\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"dpll_usb_ck\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"\013%s: failed to configure USB DPLL!\0A\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"dpll_usb_m2_ck\00", align 1
@.str.10 = private unnamed_addr constant [37 x i8] c"\013%s: failed to set USB_DPLL M2 OUT\0A\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"dpll_mpu_m2_ck\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"dpll_iva_h11x2_ck\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"abe_iclk\00", align 1
@omap5_aess_bit_data = internal constant [2 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 24, i8 2, ptr @omap5_aess_fclk_parents, ptr @omap5_aess_fclk_data }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@.str.14 = private unnamed_addr constant [19 x i8] c"abe_cm:clk:0008:24\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"pad_clks_ck\00", align 1
@omap5_dmic_bit_data = internal constant [3 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 24, i8 1, ptr @omap5_dmic_gfclk_parents, ptr null }, %struct.omap_clkctrl_bit_data { i8 26, i8 1, ptr @omap5_dmic_sync_mux_ck_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@.str.16 = private unnamed_addr constant [19 x i8] c"abe_cm:clk:0018:24\00", align 1
@omap5_mcbsp1_bit_data = internal constant [3 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 24, i8 1, ptr @omap5_mcbsp1_gfclk_parents, ptr null }, %struct.omap_clkctrl_bit_data { i8 26, i8 1, ptr @omap5_dmic_sync_mux_ck_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@.str.17 = private unnamed_addr constant [19 x i8] c"abe_cm:clk:0028:24\00", align 1
@omap5_mcbsp2_bit_data = internal constant [3 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 24, i8 1, ptr @omap5_mcbsp2_gfclk_parents, ptr null }, %struct.omap_clkctrl_bit_data { i8 26, i8 1, ptr @omap5_dmic_sync_mux_ck_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@.str.18 = private unnamed_addr constant [19 x i8] c"abe_cm:clk:0030:24\00", align 1
@omap5_mcbsp3_bit_data = internal constant [3 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 24, i8 1, ptr @omap5_mcbsp3_gfclk_parents, ptr null }, %struct.omap_clkctrl_bit_data { i8 26, i8 1, ptr @omap5_dmic_sync_mux_ck_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@.str.19 = private unnamed_addr constant [19 x i8] c"abe_cm:clk:0038:24\00", align 1
@omap5_timer5_bit_data = internal constant [2 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 24, i8 1, ptr @omap5_timer5_gfclk_mux_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@.str.20 = private unnamed_addr constant [19 x i8] c"abe_cm:clk:0048:24\00", align 1
@omap5_timer6_bit_data = internal constant [2 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 24, i8 1, ptr @omap5_timer5_gfclk_mux_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@.str.21 = private unnamed_addr constant [19 x i8] c"abe_cm:clk:0050:24\00", align 1
@omap5_timer7_bit_data = internal constant [2 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 24, i8 1, ptr @omap5_timer5_gfclk_mux_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@.str.22 = private unnamed_addr constant [19 x i8] c"abe_cm:clk:0058:24\00", align 1
@omap5_timer8_bit_data = internal constant [2 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 24, i8 1, ptr @omap5_timer5_gfclk_mux_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@.str.23 = private unnamed_addr constant [19 x i8] c"abe_cm:clk:0060:24\00", align 1
@omap5_aess_fclk_parents = internal constant [2 x ptr] [ptr @.str.24, ptr null], section ".init.rodata", align 4
@omap5_aess_fclk_data = internal constant %struct.omap_clkctrl_div_data { ptr null, i32 2, i32 0 }, section ".init.rodata", align 4
@.str.24 = private unnamed_addr constant [8 x i8] c"abe_clk\00", align 1
@omap5_dmic_gfclk_parents = internal constant [4 x ptr] [ptr @.str.25, ptr @.str.15, ptr @.str.26, ptr null], section ".init.rodata", align 4
@omap5_dmic_sync_mux_ck_parents = internal constant [4 x ptr] [ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr null], section ".init.rodata", align 4
@.str.25 = private unnamed_addr constant [19 x i8] c"abe_cm:clk:0018:26\00", align 1
@.str.26 = private unnamed_addr constant [12 x i8] c"slimbus_clk\00", align 1
@.str.27 = private unnamed_addr constant [13 x i8] c"abe_24m_fclk\00", align 1
@.str.28 = private unnamed_addr constant [18 x i8] c"dss_syc_gfclk_div\00", align 1
@.str.29 = private unnamed_addr constant [13 x i8] c"func_24m_clk\00", align 1
@omap5_mcbsp1_gfclk_parents = internal constant [4 x ptr] [ptr @.str.30, ptr @.str.15, ptr @.str.26, ptr null], section ".init.rodata", align 4
@.str.30 = private unnamed_addr constant [19 x i8] c"abe_cm:clk:0028:26\00", align 1
@omap5_mcbsp2_gfclk_parents = internal constant [4 x ptr] [ptr @.str.31, ptr @.str.15, ptr @.str.26, ptr null], section ".init.rodata", align 4
@.str.31 = private unnamed_addr constant [19 x i8] c"abe_cm:clk:0030:26\00", align 1
@omap5_mcbsp3_gfclk_parents = internal constant [4 x ptr] [ptr @.str.32, ptr @.str.15, ptr @.str.26, ptr null], section ".init.rodata", align 4
@.str.32 = private unnamed_addr constant [19 x i8] c"abe_cm:clk:0038:26\00", align 1
@omap5_timer5_gfclk_mux_parents = internal constant [3 x ptr] [ptr @.str.28, ptr @.str.1, ptr null], section ".init.rodata", align 4
@.str.33 = private unnamed_addr constant [12 x i8] c"l3_iclk_div\00", align 1
@.str.34 = private unnamed_addr constant [19 x i8] c"dpll_core_h22x2_ck\00", align 1
@.str.35 = private unnamed_addr constant [19 x i8] c"dpll_core_h11x2_ck\00", align 1
@.str.36 = private unnamed_addr constant [16 x i8] c"l4_root_clk_div\00", align 1
@omap5_timer10_bit_data = internal constant [2 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 24, i8 1, ptr @omap5_timer10_gfclk_mux_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@.str.37 = private unnamed_addr constant [21 x i8] c"l4per_cm:clk:0008:24\00", align 1
@omap5_timer11_bit_data = internal constant [2 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 24, i8 1, ptr @omap5_timer10_gfclk_mux_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@.str.38 = private unnamed_addr constant [21 x i8] c"l4per_cm:clk:0010:24\00", align 1
@omap5_timer2_bit_data = internal constant [2 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 24, i8 1, ptr @omap5_timer10_gfclk_mux_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@.str.39 = private unnamed_addr constant [21 x i8] c"l4per_cm:clk:0018:24\00", align 1
@omap5_timer3_bit_data = internal constant [2 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 24, i8 1, ptr @omap5_timer10_gfclk_mux_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@.str.40 = private unnamed_addr constant [21 x i8] c"l4per_cm:clk:0020:24\00", align 1
@omap5_timer4_bit_data = internal constant [2 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 24, i8 1, ptr @omap5_timer10_gfclk_mux_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@.str.41 = private unnamed_addr constant [21 x i8] c"l4per_cm:clk:0028:24\00", align 1
@omap5_timer9_bit_data = internal constant [2 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 24, i8 1, ptr @omap5_timer10_gfclk_mux_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@.str.42 = private unnamed_addr constant [21 x i8] c"l4per_cm:clk:0030:24\00", align 1
@omap5_gpio2_bit_data = internal constant [2 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 8, i8 5, ptr @omap5_gpio2_dbclk_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@omap5_gpio3_bit_data = internal constant [2 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 8, i8 5, ptr @omap5_gpio2_dbclk_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@omap5_gpio4_bit_data = internal constant [2 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 8, i8 5, ptr @omap5_gpio2_dbclk_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@omap5_gpio5_bit_data = internal constant [2 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 8, i8 5, ptr @omap5_gpio2_dbclk_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@omap5_gpio6_bit_data = internal constant [2 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 8, i8 5, ptr @omap5_gpio2_dbclk_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@.str.43 = private unnamed_addr constant [14 x i8] c"func_96m_fclk\00", align 1
@.str.44 = private unnamed_addr constant [14 x i8] c"func_48m_fclk\00", align 1
@omap5_gpio7_bit_data = internal constant [2 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 8, i8 5, ptr @omap5_gpio2_dbclk_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@omap5_gpio8_bit_data = internal constant [2 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 8, i8 5, ptr @omap5_gpio2_dbclk_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@omap5_timer10_gfclk_mux_parents = internal constant [3 x ptr] [ptr @.str.45, ptr @.str.1, ptr null], section ".init.rodata", align 4
@.str.45 = private unnamed_addr constant [10 x i8] c"sys_clkin\00", align 1
@omap5_gpio2_dbclk_parents = internal constant [2 x ptr] [ptr @.str.1, ptr null], section ".init.rodata", align 4
@.str.46 = private unnamed_addr constant [18 x i8] c"dpll_iva_h12x2_ck\00", align 1
@omap5_dss_core_bit_data = internal constant [5 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 8, i8 5, ptr @omap5_dss_dss_clk_parents, ptr null }, %struct.omap_clkctrl_bit_data { i8 9, i8 5, ptr @omap5_dss_48mhz_clk_parents, ptr null }, %struct.omap_clkctrl_bit_data { i8 10, i8 5, ptr @omap5_dss_sys_clk_parents, ptr null }, %struct.omap_clkctrl_bit_data { i8 11, i8 5, ptr @omap5_gpio2_dbclk_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@.str.47 = private unnamed_addr constant [18 x i8] c"dss_cm:clk:0000:8\00", align 1
@omap5_dss_dss_clk_parents = internal constant [2 x ptr] [ptr @.str.48, ptr null], section ".init.rodata", align 4
@omap5_dss_48mhz_clk_parents = internal constant [2 x ptr] [ptr @.str.44, ptr null], section ".init.rodata", align 4
@omap5_dss_sys_clk_parents = internal constant [2 x ptr] [ptr @.str.28, ptr null], section ".init.rodata", align 4
@.str.48 = private unnamed_addr constant [18 x i8] c"dpll_per_h12x2_ck\00", align 1
@omap5_gpu_core_bit_data = internal constant [4 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 24, i8 1, ptr @omap5_gpu_core_mux_parents, ptr null }, %struct.omap_clkctrl_bit_data { i8 25, i8 1, ptr @omap5_gpu_hyd_mux_parents, ptr null }, %struct.omap_clkctrl_bit_data { i8 26, i8 2, ptr @omap5_gpu_sys_clk_parents, ptr @omap5_gpu_sys_clk_data }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@.str.49 = private unnamed_addr constant [19 x i8] c"gpu_cm:clk:0000:24\00", align 1
@omap5_gpu_core_mux_parents = internal constant [3 x ptr] [ptr @.str.50, ptr @.str.51, ptr null], section ".init.rodata", align 4
@omap5_gpu_hyd_mux_parents = internal constant [3 x ptr] [ptr @.str.50, ptr @.str.51, ptr null], section ".init.rodata", align 4
@omap5_gpu_sys_clk_parents = internal constant [2 x ptr] [ptr @.str.45, ptr null], section ".init.rodata", align 4
@omap5_gpu_sys_clk_data = internal constant %struct.omap_clkctrl_div_data { ptr null, i32 2, i32 0 }, section ".init.rodata", align 4
@.str.50 = private unnamed_addr constant [19 x i8] c"dpll_core_h14x2_ck\00", align 1
@.str.51 = private unnamed_addr constant [18 x i8] c"dpll_per_h14x2_ck\00", align 1
@omap5_mmc1_bit_data = internal constant [4 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 8, i8 5, ptr @omap5_gpio2_dbclk_parents, ptr null }, %struct.omap_clkctrl_bit_data { i8 24, i8 1, ptr @omap5_mmc1_fclk_mux_parents, ptr null }, %struct.omap_clkctrl_bit_data { i8 25, i8 2, ptr @omap5_mmc1_fclk_parents, ptr @omap5_mmc1_fclk_data }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@.str.52 = private unnamed_addr constant [22 x i8] c"l3init_cm:clk:0008:25\00", align 1
@omap5_mmc2_bit_data = internal constant [3 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 24, i8 1, ptr @omap5_mmc1_fclk_mux_parents, ptr null }, %struct.omap_clkctrl_bit_data { i8 25, i8 2, ptr @omap5_mmc2_fclk_parents, ptr @omap5_mmc2_fclk_data }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@.str.53 = private unnamed_addr constant [22 x i8] c"l3init_cm:clk:0010:25\00", align 1
@omap5_usb_host_hs_bit_data = internal constant [12 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 6, i8 5, ptr @omap5_usb_host_hs_hsic60m_p3_clk_parents, ptr null }, %struct.omap_clkctrl_bit_data { i8 7, i8 5, ptr @omap5_usb_host_hs_hsic480m_p3_clk_parents, ptr null }, %struct.omap_clkctrl_bit_data { i8 8, i8 5, ptr @omap5_usb_host_hs_utmi_p1_clk_parents, ptr null }, %struct.omap_clkctrl_bit_data { i8 9, i8 5, ptr @omap5_usb_host_hs_utmi_p2_clk_parents, ptr null }, %struct.omap_clkctrl_bit_data { i8 10, i8 5, ptr @omap5_usb_host_hs_hsic60m_p3_clk_parents, ptr null }, %struct.omap_clkctrl_bit_data { i8 11, i8 5, ptr @omap5_usb_host_hs_hsic60m_p3_clk_parents, ptr null }, %struct.omap_clkctrl_bit_data { i8 12, i8 5, ptr @omap5_usb_host_hs_hsic60m_p3_clk_parents, ptr null }, %struct.omap_clkctrl_bit_data { i8 13, i8 5, ptr @omap5_usb_host_hs_hsic480m_p3_clk_parents, ptr null }, %struct.omap_clkctrl_bit_data { i8 14, i8 5, ptr @omap5_usb_host_hs_hsic480m_p3_clk_parents, ptr null }, %struct.omap_clkctrl_bit_data { i8 24, i8 1, ptr @omap5_utmi_p1_gfclk_parents, ptr null }, %struct.omap_clkctrl_bit_data { i8 25, i8 1, ptr @omap5_utmi_p2_gfclk_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@.str.54 = private unnamed_addr constant [16 x i8] c"l3init_60m_fclk\00", align 1
@omap5_usb_tll_hs_bit_data = internal constant [4 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 8, i8 5, ptr @omap5_usb_host_hs_hsic60m_p3_clk_parents, ptr null }, %struct.omap_clkctrl_bit_data { i8 9, i8 5, ptr @omap5_usb_host_hs_hsic60m_p3_clk_parents, ptr null }, %struct.omap_clkctrl_bit_data { i8 10, i8 5, ptr @omap5_usb_host_hs_hsic60m_p3_clk_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@omap5_sata_bit_data = internal constant [2 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 8, i8 5, ptr @omap5_sata_ref_clk_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@omap5_usb_otg_ss_bit_data = internal constant [2 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 8, i8 5, ptr @omap5_usb_otg_ss_refclk960m_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@.str.55 = private unnamed_addr constant [19 x i8] c"dpll_core_h13x2_ck\00", align 1
@omap5_mmc1_fclk_mux_parents = internal constant [3 x ptr] [ptr @.str.56, ptr @.str.57, ptr null], section ".init.rodata", align 4
@omap5_mmc1_fclk_parents = internal constant [2 x ptr] [ptr @.str.58, ptr null], section ".init.rodata", align 4
@omap5_mmc1_fclk_data = internal constant %struct.omap_clkctrl_div_data { ptr null, i32 2, i32 0 }, section ".init.rodata", align 4
@.str.56 = private unnamed_addr constant [14 x i8] c"func_128m_clk\00", align 1
@.str.57 = private unnamed_addr constant [17 x i8] c"dpll_per_m2x2_ck\00", align 1
@.str.58 = private unnamed_addr constant [22 x i8] c"l3init_cm:clk:0008:24\00", align 1
@omap5_mmc2_fclk_parents = internal constant [2 x ptr] [ptr @.str.59, ptr null], section ".init.rodata", align 4
@omap5_mmc2_fclk_data = internal constant %struct.omap_clkctrl_div_data { ptr null, i32 2, i32 0 }, section ".init.rodata", align 4
@.str.59 = private unnamed_addr constant [22 x i8] c"l3init_cm:clk:0010:24\00", align 1
@omap5_usb_host_hs_hsic60m_p3_clk_parents = internal constant [2 x ptr] [ptr @.str.54, ptr null], section ".init.rodata", align 4
@omap5_usb_host_hs_hsic480m_p3_clk_parents = internal constant [2 x ptr] [ptr @.str.9, ptr null], section ".init.rodata", align 4
@omap5_usb_host_hs_utmi_p1_clk_parents = internal constant [2 x ptr] [ptr @.str.60, ptr null], section ".init.rodata", align 4
@omap5_usb_host_hs_utmi_p2_clk_parents = internal constant [2 x ptr] [ptr @.str.61, ptr null], section ".init.rodata", align 4
@omap5_utmi_p1_gfclk_parents = internal constant [3 x ptr] [ptr @.str.54, ptr @.str.62, ptr null], section ".init.rodata", align 4
@omap5_utmi_p2_gfclk_parents = internal constant [3 x ptr] [ptr @.str.54, ptr @.str.63, ptr null], section ".init.rodata", align 4
@.str.60 = private unnamed_addr constant [22 x i8] c"l3init_cm:clk:0038:24\00", align 1
@.str.61 = private unnamed_addr constant [22 x i8] c"l3init_cm:clk:0038:25\00", align 1
@.str.62 = private unnamed_addr constant [15 x i8] c"xclk60mhsp1_ck\00", align 1
@.str.63 = private unnamed_addr constant [15 x i8] c"xclk60mhsp2_ck\00", align 1
@omap5_sata_ref_clk_parents = internal constant [2 x ptr] [ptr @.str.45, ptr null], section ".init.rodata", align 4
@omap5_usb_otg_ss_refclk960m_parents = internal constant [2 x ptr] [ptr @.str.64, ptr null], section ".init.rodata", align 4
@.str.64 = private unnamed_addr constant [19 x i8] c"dpll_usb_clkdcoldo\00", align 1
@.str.65 = private unnamed_addr constant [17 x i8] c"wkupaon_iclk_mux\00", align 1
@omap5_gpio1_bit_data = internal constant [2 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 8, i8 5, ptr @omap5_gpio2_dbclk_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@omap5_timer1_bit_data = internal constant [2 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 24, i8 1, ptr @omap5_timer10_gfclk_mux_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@.str.66 = private unnamed_addr constant [23 x i8] c"wkupaon_cm:clk:0020:24\00", align 1
@.str.67 = private unnamed_addr constant [13 x i8] c"timer_32k_ck\00", align 1
@.str.68 = private unnamed_addr constant [13 x i8] c"sys_clkin_ck\00", align 1
@.str.69 = private unnamed_addr constant [11 x i8] c"dmic_gfclk\00", align 1
@.str.70 = private unnamed_addr constant [15 x i8] c"abe_cm:0018:24\00", align 1
@.str.71 = private unnamed_addr constant [17 x i8] c"dmic_sync_mux_ck\00", align 1
@.str.72 = private unnamed_addr constant [15 x i8] c"abe_cm:0018:26\00", align 1
@.str.73 = private unnamed_addr constant [14 x i8] c"dss_32khz_clk\00", align 1
@.str.74 = private unnamed_addr constant [15 x i8] c"dss_cm:0000:11\00", align 1
@.str.75 = private unnamed_addr constant [14 x i8] c"dss_48mhz_clk\00", align 1
@.str.76 = private unnamed_addr constant [14 x i8] c"dss_cm:0000:9\00", align 1
@.str.77 = private unnamed_addr constant [12 x i8] c"dss_dss_clk\00", align 1
@.str.78 = private unnamed_addr constant [14 x i8] c"dss_cm:0000:8\00", align 1
@.str.79 = private unnamed_addr constant [12 x i8] c"dss_sys_clk\00", align 1
@.str.80 = private unnamed_addr constant [15 x i8] c"dss_cm:0000:10\00", align 1
@.str.81 = private unnamed_addr constant [12 x i8] c"gpio1_dbclk\00", align 1
@.str.82 = private unnamed_addr constant [18 x i8] c"wkupaon_cm:0018:8\00", align 1
@.str.83 = private unnamed_addr constant [12 x i8] c"gpio2_dbclk\00", align 1
@.str.84 = private unnamed_addr constant [16 x i8] c"l4per_cm:0040:8\00", align 1
@.str.85 = private unnamed_addr constant [12 x i8] c"gpio3_dbclk\00", align 1
@.str.86 = private unnamed_addr constant [16 x i8] c"l4per_cm:0048:8\00", align 1
@.str.87 = private unnamed_addr constant [12 x i8] c"gpio4_dbclk\00", align 1
@.str.88 = private unnamed_addr constant [16 x i8] c"l4per_cm:0050:8\00", align 1
@.str.89 = private unnamed_addr constant [12 x i8] c"gpio5_dbclk\00", align 1
@.str.90 = private unnamed_addr constant [16 x i8] c"l4per_cm:0058:8\00", align 1
@.str.91 = private unnamed_addr constant [12 x i8] c"gpio6_dbclk\00", align 1
@.str.92 = private unnamed_addr constant [16 x i8] c"l4per_cm:0060:8\00", align 1
@.str.93 = private unnamed_addr constant [12 x i8] c"gpio7_dbclk\00", align 1
@.str.94 = private unnamed_addr constant [16 x i8] c"l4per_cm:00f0:8\00", align 1
@.str.95 = private unnamed_addr constant [12 x i8] c"gpio8_dbclk\00", align 1
@.str.96 = private unnamed_addr constant [16 x i8] c"l4per_cm:00f8:8\00", align 1
@.str.97 = private unnamed_addr constant [13 x i8] c"mcbsp1_gfclk\00", align 1
@.str.98 = private unnamed_addr constant [15 x i8] c"abe_cm:0028:24\00", align 1
@.str.99 = private unnamed_addr constant [19 x i8] c"mcbsp1_sync_mux_ck\00", align 1
@.str.100 = private unnamed_addr constant [15 x i8] c"abe_cm:0028:26\00", align 1
@.str.101 = private unnamed_addr constant [13 x i8] c"mcbsp2_gfclk\00", align 1
@.str.102 = private unnamed_addr constant [15 x i8] c"abe_cm:0030:24\00", align 1
@.str.103 = private unnamed_addr constant [19 x i8] c"mcbsp2_sync_mux_ck\00", align 1
@.str.104 = private unnamed_addr constant [15 x i8] c"abe_cm:0030:26\00", align 1
@.str.105 = private unnamed_addr constant [13 x i8] c"mcbsp3_gfclk\00", align 1
@.str.106 = private unnamed_addr constant [15 x i8] c"abe_cm:0038:24\00", align 1
@.str.107 = private unnamed_addr constant [19 x i8] c"mcbsp3_sync_mux_ck\00", align 1
@.str.108 = private unnamed_addr constant [15 x i8] c"abe_cm:0038:26\00", align 1
@.str.109 = private unnamed_addr constant [15 x i8] c"mmc1_32khz_clk\00", align 1
@.str.110 = private unnamed_addr constant [17 x i8] c"l3init_cm:0008:8\00", align 1
@.str.111 = private unnamed_addr constant [10 x i8] c"mmc1_fclk\00", align 1
@.str.112 = private unnamed_addr constant [18 x i8] c"l3init_cm:0008:25\00", align 1
@.str.113 = private unnamed_addr constant [14 x i8] c"mmc1_fclk_mux\00", align 1
@.str.114 = private unnamed_addr constant [18 x i8] c"l3init_cm:0008:24\00", align 1
@.str.115 = private unnamed_addr constant [10 x i8] c"mmc2_fclk\00", align 1
@.str.116 = private unnamed_addr constant [18 x i8] c"l3init_cm:0010:25\00", align 1
@.str.117 = private unnamed_addr constant [14 x i8] c"mmc2_fclk_mux\00", align 1
@.str.118 = private unnamed_addr constant [18 x i8] c"l3init_cm:0010:24\00", align 1
@.str.119 = private unnamed_addr constant [13 x i8] c"sata_ref_clk\00", align 1
@.str.120 = private unnamed_addr constant [17 x i8] c"l3init_cm:0068:8\00", align 1
@.str.121 = private unnamed_addr constant [18 x i8] c"timer10_gfclk_mux\00", align 1
@.str.122 = private unnamed_addr constant [17 x i8] c"l4per_cm:0008:24\00", align 1
@.str.123 = private unnamed_addr constant [18 x i8] c"timer11_gfclk_mux\00", align 1
@.str.124 = private unnamed_addr constant [17 x i8] c"l4per_cm:0010:24\00", align 1
@.str.125 = private unnamed_addr constant [17 x i8] c"timer1_gfclk_mux\00", align 1
@.str.126 = private unnamed_addr constant [19 x i8] c"wkupaon_cm:0020:24\00", align 1
@.str.127 = private unnamed_addr constant [17 x i8] c"timer2_gfclk_mux\00", align 1
@.str.128 = private unnamed_addr constant [17 x i8] c"l4per_cm:0018:24\00", align 1
@.str.129 = private unnamed_addr constant [17 x i8] c"timer3_gfclk_mux\00", align 1
@.str.130 = private unnamed_addr constant [17 x i8] c"l4per_cm:0020:24\00", align 1
@.str.131 = private unnamed_addr constant [17 x i8] c"timer4_gfclk_mux\00", align 1
@.str.132 = private unnamed_addr constant [17 x i8] c"l4per_cm:0028:24\00", align 1
@.str.133 = private unnamed_addr constant [17 x i8] c"timer5_gfclk_mux\00", align 1
@.str.134 = private unnamed_addr constant [15 x i8] c"abe_cm:0048:24\00", align 1
@.str.135 = private unnamed_addr constant [17 x i8] c"timer6_gfclk_mux\00", align 1
@.str.136 = private unnamed_addr constant [15 x i8] c"abe_cm:0050:24\00", align 1
@.str.137 = private unnamed_addr constant [17 x i8] c"timer7_gfclk_mux\00", align 1
@.str.138 = private unnamed_addr constant [15 x i8] c"abe_cm:0058:24\00", align 1
@.str.139 = private unnamed_addr constant [17 x i8] c"timer8_gfclk_mux\00", align 1
@.str.140 = private unnamed_addr constant [15 x i8] c"abe_cm:0060:24\00", align 1
@.str.141 = private unnamed_addr constant [17 x i8] c"timer9_gfclk_mux\00", align 1
@.str.142 = private unnamed_addr constant [17 x i8] c"l4per_cm:0030:24\00", align 1
@.str.143 = private unnamed_addr constant [28 x i8] c"usb_host_hs_hsic480m_p1_clk\00", align 1
@.str.144 = private unnamed_addr constant [18 x i8] c"l3init_cm:0038:13\00", align 1
@.str.145 = private unnamed_addr constant [28 x i8] c"usb_host_hs_hsic480m_p2_clk\00", align 1
@.str.146 = private unnamed_addr constant [18 x i8] c"l3init_cm:0038:14\00", align 1
@.str.147 = private unnamed_addr constant [28 x i8] c"usb_host_hs_hsic480m_p3_clk\00", align 1
@.str.148 = private unnamed_addr constant [17 x i8] c"l3init_cm:0038:7\00", align 1
@.str.149 = private unnamed_addr constant [27 x i8] c"usb_host_hs_hsic60m_p1_clk\00", align 1
@.str.150 = private unnamed_addr constant [18 x i8] c"l3init_cm:0038:11\00", align 1
@.str.151 = private unnamed_addr constant [27 x i8] c"usb_host_hs_hsic60m_p2_clk\00", align 1
@.str.152 = private unnamed_addr constant [18 x i8] c"l3init_cm:0038:12\00", align 1
@.str.153 = private unnamed_addr constant [27 x i8] c"usb_host_hs_hsic60m_p3_clk\00", align 1
@.str.154 = private unnamed_addr constant [17 x i8] c"l3init_cm:0038:6\00", align 1
@.str.155 = private unnamed_addr constant [24 x i8] c"usb_host_hs_utmi_p1_clk\00", align 1
@.str.156 = private unnamed_addr constant [17 x i8] c"l3init_cm:0038:8\00", align 1
@.str.157 = private unnamed_addr constant [24 x i8] c"usb_host_hs_utmi_p2_clk\00", align 1
@.str.158 = private unnamed_addr constant [17 x i8] c"l3init_cm:0038:9\00", align 1
@.str.159 = private unnamed_addr constant [24 x i8] c"usb_host_hs_utmi_p3_clk\00", align 1
@.str.160 = private unnamed_addr constant [18 x i8] c"l3init_cm:0038:10\00", align 1
@.str.161 = private unnamed_addr constant [22 x i8] c"usb_otg_ss_refclk960m\00", align 1
@.str.162 = private unnamed_addr constant [17 x i8] c"l3init_cm:00d0:8\00", align 1
@.str.163 = private unnamed_addr constant [23 x i8] c"usb_tll_hs_usb_ch0_clk\00", align 1
@.str.164 = private unnamed_addr constant [17 x i8] c"l3init_cm:0048:8\00", align 1
@.str.165 = private unnamed_addr constant [23 x i8] c"usb_tll_hs_usb_ch1_clk\00", align 1
@.str.166 = private unnamed_addr constant [17 x i8] c"l3init_cm:0048:9\00", align 1
@.str.167 = private unnamed_addr constant [23 x i8] c"usb_tll_hs_usb_ch2_clk\00", align 1
@.str.168 = private unnamed_addr constant [18 x i8] c"l3init_cm:0048:10\00", align 1
@.str.169 = private unnamed_addr constant [14 x i8] c"utmi_p1_gfclk\00", align 1
@.str.170 = private unnamed_addr constant [18 x i8] c"l3init_cm:0038:24\00", align 1
@.str.171 = private unnamed_addr constant [14 x i8] c"utmi_p2_gfclk\00", align 1
@.str.172 = private unnamed_addr constant [18 x i8] c"l3init_cm:0038:25\00", align 1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @omap5xxx_dt_clk_init() local_unnamed_addr #0 section ".init.text" {
  tail call void @ti_dt_clocks_register(ptr noundef nonnull @omap54xx_clks) #3
  %1 = tail call i32 @omap2_clk_disable_autoidle_all() #3
  tail call void @ti_clk_add_aliases() #3
  %2 = tail call ptr @clk_get_sys(ptr noundef null, ptr noundef nonnull @.str) #3
  %3 = tail call ptr @clk_get_sys(ptr noundef null, ptr noundef nonnull @.str.1) #3
  %4 = tail call i32 @clk_set_parent(ptr noundef %2, ptr noundef %3) #3
  %5 = tail call ptr @clk_get_sys(ptr noundef null, ptr noundef nonnull @.str.2) #3
  %6 = icmp eq i32 %4, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %0
  %8 = tail call ptr @clk_get_sys(ptr noundef null, ptr noundef nonnull @.str.3) #3
  br label %20

9:                                                ; preds = %0
  %10 = tail call i32 @clk_set_parent(ptr noundef %5, ptr noundef %3) #3
  %11 = tail call ptr @clk_get_sys(ptr noundef null, ptr noundef nonnull @.str.3) #3
  %12 = icmp eq i32 %10, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %9
  %14 = tail call i32 @clk_set_rate(ptr noundef %11, i32 noundef 98304000) #3
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %13
  %17 = tail call ptr @clk_get_sys(ptr noundef null, ptr noundef nonnull @.str.5) #3
  %18 = tail call i32 @clk_set_rate(ptr noundef %17, i32 noundef 196608000) #3
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %25, label %23

20:                                               ; preds = %13, %9, %7
  %21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.omap5xxx_dt_clk_init) #4
  %22 = tail call ptr @clk_get_sys(ptr noundef null, ptr noundef nonnull @.str.5) #3
  br label %23

23:                                               ; preds = %20, %16
  %24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.omap5xxx_dt_clk_init) #4
  br label %25

25:                                               ; preds = %23, %16
  %26 = tail call ptr @clk_get_sys(ptr noundef null, ptr noundef nonnull @.str.7) #3
  %27 = tail call i32 @clk_set_rate(ptr noundef %26, i32 noundef 960000000) #3
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %25
  %30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.omap5xxx_dt_clk_init) #4
  br label %31

31:                                               ; preds = %29, %25
  %32 = tail call ptr @clk_get_sys(ptr noundef null, ptr noundef nonnull @.str.9) #3
  %33 = tail call i32 @clk_set_rate(ptr noundef %32, i32 noundef 480000000) #3
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %31
  %36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.omap5xxx_dt_clk_init) #4
  br label %37

37:                                               ; preds = %35, %31
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ti_dt_clocks_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap2_clk_disable_autoidle_all() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ti_clk_add_aliases() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get_sys(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_parent(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { cold nounwind }

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
