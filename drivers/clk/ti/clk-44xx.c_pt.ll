; ModuleID = '/llk/IR/drivers/clk/ti/clk-44xx.c_pt.bc'
source_filename = "../drivers/clk/ti/clk-44xx.c"
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

@omap4_mpuss_clkctrl_regs = internal constant [2 x %struct.omap_clkctrl_reg_data] [%struct.omap_clkctrl_reg_data { i16 0, ptr null, i16 0, ptr @.str.6, ptr null }, %struct.omap_clkctrl_reg_data zeroinitializer], section ".init.rodata", align 4
@omap4_tesla_clkctrl_regs = internal constant [2 x %struct.omap_clkctrl_reg_data] [%struct.omap_clkctrl_reg_data { i16 0, ptr null, i16 192, ptr @.str.7, ptr null }, %struct.omap_clkctrl_reg_data zeroinitializer], section ".init.rodata", align 4
@omap4_abe_clkctrl_regs = internal constant [15 x %struct.omap_clkctrl_reg_data] [%struct.omap_clkctrl_reg_data { i16 0, ptr null, i16 0, ptr @.str.8, ptr null }, %struct.omap_clkctrl_reg_data { i16 8, ptr @omap4_aess_bit_data, i16 32, ptr @.str.9, ptr null }, %struct.omap_clkctrl_reg_data { i16 16, ptr null, i16 32, ptr @.str.10, ptr null }, %struct.omap_clkctrl_reg_data { i16 24, ptr @omap4_dmic_bit_data, i16 32, ptr @.str.11, ptr null }, %struct.omap_clkctrl_reg_data { i16 32, ptr @omap4_mcasp_bit_data, i16 32, ptr @.str.12, ptr null }, %struct.omap_clkctrl_reg_data { i16 40, ptr @omap4_mcbsp1_bit_data, i16 32, ptr @.str.13, ptr null }, %struct.omap_clkctrl_reg_data { i16 48, ptr @omap4_mcbsp2_bit_data, i16 32, ptr @.str.14, ptr null }, %struct.omap_clkctrl_reg_data { i16 56, ptr @omap4_mcbsp3_bit_data, i16 32, ptr @.str.15, ptr null }, %struct.omap_clkctrl_reg_data { i16 64, ptr @omap4_slimbus1_bit_data, i16 32, ptr @.str.16, ptr null }, %struct.omap_clkctrl_reg_data { i16 72, ptr @omap4_timer5_bit_data, i16 32, ptr @.str.17, ptr null }, %struct.omap_clkctrl_reg_data { i16 80, ptr @omap4_timer6_bit_data, i16 32, ptr @.str.18, ptr null }, %struct.omap_clkctrl_reg_data { i16 88, ptr @omap4_timer7_bit_data, i16 32, ptr @.str.19, ptr null }, %struct.omap_clkctrl_reg_data { i16 96, ptr @omap4_timer8_bit_data, i16 32, ptr @.str.20, ptr null }, %struct.omap_clkctrl_reg_data { i16 104, ptr null, i16 32, ptr @.str.3, ptr null }, %struct.omap_clkctrl_reg_data zeroinitializer], section ".init.rodata", align 4
@omap4_l4_ao_clkctrl_regs = internal constant [4 x %struct.omap_clkctrl_reg_data] [%struct.omap_clkctrl_reg_data { i16 8, ptr null, i16 32, ptr @.str.31, ptr null }, %struct.omap_clkctrl_reg_data { i16 16, ptr null, i16 32, ptr @.str.31, ptr null }, %struct.omap_clkctrl_reg_data { i16 24, ptr null, i16 32, ptr @.str.31, ptr null }, %struct.omap_clkctrl_reg_data zeroinitializer], section ".init.rodata", align 4
@omap4_l3_1_clkctrl_regs = internal constant [2 x %struct.omap_clkctrl_reg_data] [%struct.omap_clkctrl_reg_data { i16 0, ptr null, i16 0, ptr @.str.32, ptr null }, %struct.omap_clkctrl_reg_data zeroinitializer], section ".init.rodata", align 4
@omap4_l3_2_clkctrl_regs = internal constant [4 x %struct.omap_clkctrl_reg_data] [%struct.omap_clkctrl_reg_data { i16 0, ptr null, i16 0, ptr @.str.32, ptr null }, %struct.omap_clkctrl_reg_data { i16 8, ptr null, i16 64, ptr @.str.32, ptr null }, %struct.omap_clkctrl_reg_data { i16 16, ptr null, i16 0, ptr @.str.32, ptr null }, %struct.omap_clkctrl_reg_data zeroinitializer], section ".init.rodata", align 4
@omap4_ducati_clkctrl_regs = internal constant [2 x %struct.omap_clkctrl_reg_data] [%struct.omap_clkctrl_reg_data { i16 0, ptr null, i16 192, ptr @.str.33, ptr null }, %struct.omap_clkctrl_reg_data zeroinitializer], section ".init.rodata", align 4
@omap4_l3_dma_clkctrl_regs = internal constant [2 x %struct.omap_clkctrl_reg_data] [%struct.omap_clkctrl_reg_data { i16 0, ptr null, i16 0, ptr @.str.32, ptr null }, %struct.omap_clkctrl_reg_data zeroinitializer], section ".init.rodata", align 4
@omap4_l3_emif_clkctrl_regs = internal constant [4 x %struct.omap_clkctrl_reg_data] [%struct.omap_clkctrl_reg_data { i16 0, ptr null, i16 0, ptr @.str.32, ptr null }, %struct.omap_clkctrl_reg_data { i16 16, ptr null, i16 64, ptr @.str.34, ptr null }, %struct.omap_clkctrl_reg_data { i16 24, ptr null, i16 64, ptr @.str.34, ptr null }, %struct.omap_clkctrl_reg_data zeroinitializer], section ".init.rodata", align 4
@omap4_d2d_clkctrl_regs = internal constant [2 x %struct.omap_clkctrl_reg_data] [%struct.omap_clkctrl_reg_data { i16 0, ptr null, i16 0, ptr @.str.35, ptr null }, %struct.omap_clkctrl_reg_data zeroinitializer], section ".init.rodata", align 4
@omap4_l4_cfg_clkctrl_regs = internal constant [4 x %struct.omap_clkctrl_reg_data] [%struct.omap_clkctrl_reg_data { i16 0, ptr null, i16 0, ptr @.str.36, ptr null }, %struct.omap_clkctrl_reg_data { i16 8, ptr null, i16 0, ptr @.str.36, ptr null }, %struct.omap_clkctrl_reg_data { i16 16, ptr null, i16 0, ptr @.str.36, ptr null }, %struct.omap_clkctrl_reg_data zeroinitializer], section ".init.rodata", align 4
@omap4_l3_instr_clkctrl_regs = internal constant [4 x %struct.omap_clkctrl_reg_data] [%struct.omap_clkctrl_reg_data { i16 0, ptr null, i16 64, ptr @.str.32, ptr null }, %struct.omap_clkctrl_reg_data { i16 8, ptr null, i16 64, ptr @.str.32, ptr null }, %struct.omap_clkctrl_reg_data { i16 32, ptr null, i16 64, ptr @.str.32, ptr null }, %struct.omap_clkctrl_reg_data zeroinitializer], section ".init.rodata", align 4
@omap4_ivahd_clkctrl_regs = internal constant [3 x %struct.omap_clkctrl_reg_data] [%struct.omap_clkctrl_reg_data { i16 0, ptr null, i16 192, ptr @.str.37, ptr null }, %struct.omap_clkctrl_reg_data { i16 8, ptr null, i16 64, ptr @.str.37, ptr null }, %struct.omap_clkctrl_reg_data zeroinitializer], section ".init.rodata", align 4
@omap4_iss_clkctrl_regs = internal constant [3 x %struct.omap_clkctrl_reg_data] [%struct.omap_clkctrl_reg_data { i16 0, ptr @omap4_iss_bit_data, i16 32, ptr @.str.33, ptr null }, %struct.omap_clkctrl_reg_data { i16 8, ptr @omap4_fdif_bit_data, i16 32, ptr @.str.38, ptr null }, %struct.omap_clkctrl_reg_data zeroinitializer], section ".init.rodata", align 4
@omap4_l3_dss_clkctrl_regs = internal constant [2 x %struct.omap_clkctrl_reg_data] [%struct.omap_clkctrl_reg_data { i16 0, ptr @omap4_dss_core_bit_data, i16 32, ptr @.str.41, ptr null }, %struct.omap_clkctrl_reg_data zeroinitializer], section ".init.rodata", align 4
@omap4_l3_gfx_clkctrl_regs = internal constant [2 x %struct.omap_clkctrl_reg_data] [%struct.omap_clkctrl_reg_data { i16 0, ptr @omap4_gpu_bit_data, i16 32, ptr @.str.45, ptr null }, %struct.omap_clkctrl_reg_data zeroinitializer], section ".init.rodata", align 4
@omap4_l3_init_clkctrl_regs = internal constant [9 x %struct.omap_clkctrl_reg_data] [%struct.omap_clkctrl_reg_data { i16 8, ptr @omap4_mmc1_bit_data, i16 32, ptr @.str.48, ptr null }, %struct.omap_clkctrl_reg_data { i16 16, ptr @omap4_mmc2_bit_data, i16 32, ptr @.str.49, ptr null }, %struct.omap_clkctrl_reg_data { i16 24, ptr @omap4_hsi_bit_data, i16 64, ptr @.str.50, ptr null }, %struct.omap_clkctrl_reg_data { i16 56, ptr @omap4_usb_host_hs_bit_data, i16 32, ptr @.str.51, ptr null }, %struct.omap_clkctrl_reg_data { i16 64, ptr @omap4_usb_otg_hs_bit_data, i16 64, ptr @.str.32, ptr null }, %struct.omap_clkctrl_reg_data { i16 72, ptr @omap4_usb_tll_hs_bit_data, i16 64, ptr @.str.36, ptr null }, %struct.omap_clkctrl_reg_data { i16 176, ptr null, i16 32, ptr @.str.43, ptr null }, %struct.omap_clkctrl_reg_data { i16 192, ptr @omap4_ocp2scp_usb_phy_bit_data, i16 64, ptr @.str.52, ptr null }, %struct.omap_clkctrl_reg_data zeroinitializer], section ".init.rodata", align 4
@omap4_l4_per_clkctrl_regs = internal constant [32 x %struct.omap_clkctrl_reg_data] [%struct.omap_clkctrl_reg_data { i16 8, ptr @omap4_timer10_bit_data, i16 32, ptr @.str.64, ptr null }, %struct.omap_clkctrl_reg_data { i16 16, ptr @omap4_timer11_bit_data, i16 32, ptr @.str.65, ptr null }, %struct.omap_clkctrl_reg_data { i16 24, ptr @omap4_timer2_bit_data, i16 32, ptr @.str.66, ptr null }, %struct.omap_clkctrl_reg_data { i16 32, ptr @omap4_timer3_bit_data, i16 32, ptr @.str.67, ptr null }, %struct.omap_clkctrl_reg_data { i16 40, ptr @omap4_timer4_bit_data, i16 32, ptr @.str.68, ptr null }, %struct.omap_clkctrl_reg_data { i16 48, ptr @omap4_timer9_bit_data, i16 32, ptr @.str.69, ptr null }, %struct.omap_clkctrl_reg_data { i16 56, ptr null, i16 0, ptr @.str.36, ptr null }, %struct.omap_clkctrl_reg_data { i16 64, ptr @omap4_gpio2_bit_data, i16 64, ptr @.str.36, ptr null }, %struct.omap_clkctrl_reg_data { i16 72, ptr @omap4_gpio3_bit_data, i16 64, ptr @.str.36, ptr null }, %struct.omap_clkctrl_reg_data { i16 80, ptr @omap4_gpio4_bit_data, i16 64, ptr @.str.36, ptr null }, %struct.omap_clkctrl_reg_data { i16 88, ptr @omap4_gpio5_bit_data, i16 64, ptr @.str.36, ptr null }, %struct.omap_clkctrl_reg_data { i16 96, ptr @omap4_gpio6_bit_data, i16 64, ptr @.str.36, ptr null }, %struct.omap_clkctrl_reg_data { i16 104, ptr null, i16 32, ptr @.str.70, ptr null }, %struct.omap_clkctrl_reg_data { i16 128, ptr null, i16 32, ptr @.str.39, ptr null }, %struct.omap_clkctrl_reg_data { i16 136, ptr null, i16 32, ptr @.str.39, ptr null }, %struct.omap_clkctrl_reg_data { i16 144, ptr null, i16 32, ptr @.str.39, ptr null }, %struct.omap_clkctrl_reg_data { i16 152, ptr null, i16 32, ptr @.str.39, ptr null }, %struct.omap_clkctrl_reg_data { i16 160, ptr null, i16 0, ptr @.str.36, ptr null }, %struct.omap_clkctrl_reg_data { i16 192, ptr @omap4_mcbsp4_bit_data, i16 32, ptr @.str.71, ptr null }, %struct.omap_clkctrl_reg_data { i16 208, ptr null, i16 32, ptr @.str.63, ptr null }, %struct.omap_clkctrl_reg_data { i16 216, ptr null, i16 32, ptr @.str.63, ptr null }, %struct.omap_clkctrl_reg_data { i16 224, ptr null, i16 32, ptr @.str.63, ptr null }, %struct.omap_clkctrl_reg_data { i16 232, ptr null, i16 32, ptr @.str.63, ptr null }, %struct.omap_clkctrl_reg_data { i16 256, ptr null, i16 32, ptr @.str.63, ptr null }, %struct.omap_clkctrl_reg_data { i16 264, ptr null, i16 32, ptr @.str.63, ptr null }, %struct.omap_clkctrl_reg_data { i16 280, ptr @omap4_slimbus2_bit_data, i16 32, ptr @.str.72, ptr null }, %struct.omap_clkctrl_reg_data { i16 288, ptr null, i16 32, ptr @.str.63, ptr null }, %struct.omap_clkctrl_reg_data { i16 296, ptr null, i16 32, ptr @.str.63, ptr null }, %struct.omap_clkctrl_reg_data { i16 304, ptr null, i16 32, ptr @.str.63, ptr null }, %struct.omap_clkctrl_reg_data { i16 312, ptr null, i16 32, ptr @.str.63, ptr null }, %struct.omap_clkctrl_reg_data { i16 320, ptr null, i16 32, ptr @.str.63, ptr null }, %struct.omap_clkctrl_reg_data zeroinitializer], section ".init.rodata", align 4
@omap4_l4_secure_clkctrl_regs = internal constant [8 x %struct.omap_clkctrl_reg_data] [%struct.omap_clkctrl_reg_data { i16 0, ptr null, i16 32, ptr @.str.32, ptr null }, %struct.omap_clkctrl_reg_data { i16 8, ptr null, i16 32, ptr @.str.32, ptr null }, %struct.omap_clkctrl_reg_data { i16 16, ptr null, i16 32, ptr @.str.36, ptr null }, %struct.omap_clkctrl_reg_data { i16 24, ptr null, i16 32, ptr @.str.36, ptr null }, %struct.omap_clkctrl_reg_data { i16 32, ptr null, i16 320, ptr @.str.36, ptr null }, %struct.omap_clkctrl_reg_data { i16 40, ptr null, i16 32, ptr @.str.32, ptr null }, %struct.omap_clkctrl_reg_data { i16 56, ptr null, i16 320, ptr @.str.32, ptr null }, %struct.omap_clkctrl_reg_data zeroinitializer], section ".init.rodata", align 4
@omap4_l4_wkup_clkctrl_regs = internal constant [7 x %struct.omap_clkctrl_reg_data] [%struct.omap_clkctrl_reg_data { i16 0, ptr null, i16 0, ptr @.str.31, ptr null }, %struct.omap_clkctrl_reg_data { i16 16, ptr null, i16 32, ptr @.str.3, ptr null }, %struct.omap_clkctrl_reg_data { i16 24, ptr @omap4_gpio1_bit_data, i16 64, ptr @.str.31, ptr null }, %struct.omap_clkctrl_reg_data { i16 32, ptr @omap4_timer1_bit_data, i16 32, ptr @.str.79, ptr null }, %struct.omap_clkctrl_reg_data { i16 48, ptr null, i16 0, ptr @.str.3, ptr null }, %struct.omap_clkctrl_reg_data { i16 88, ptr null, i16 32, ptr @.str.3, ptr null }, %struct.omap_clkctrl_reg_data zeroinitializer], section ".init.rodata", align 4
@omap4_emu_sys_clkctrl_regs = internal constant [2 x %struct.omap_clkctrl_reg_data] [%struct.omap_clkctrl_reg_data { i16 0, ptr @omap4_debugss_bit_data, i16 0, ptr @.str.80, ptr null }, %struct.omap_clkctrl_reg_data zeroinitializer], section ".init.rodata", align 4
@omap4_clkctrl_data = dso_local local_unnamed_addr constant [22 x %struct.omap_clkctrl_data] [%struct.omap_clkctrl_data { i32 1241531168, ptr @omap4_mpuss_clkctrl_regs }, %struct.omap_clkctrl_data { i32 1241531424, ptr @omap4_tesla_clkctrl_regs }, %struct.omap_clkctrl_data { i32 1241531680, ptr @omap4_abe_clkctrl_regs }, %struct.omap_clkctrl_data { i32 1241548320, ptr @omap4_l4_ao_clkctrl_regs }, %struct.omap_clkctrl_data { i32 1241548576, ptr @omap4_l3_1_clkctrl_regs }, %struct.omap_clkctrl_data { i32 1241548832, ptr @omap4_l3_2_clkctrl_regs }, %struct.omap_clkctrl_data { i32 1241549088, ptr @omap4_ducati_clkctrl_regs }, %struct.omap_clkctrl_data { i32 1241549344, ptr @omap4_l3_dma_clkctrl_regs }, %struct.omap_clkctrl_data { i32 1241549600, ptr @omap4_l3_emif_clkctrl_regs }, %struct.omap_clkctrl_data { i32 1241549856, ptr @omap4_d2d_clkctrl_regs }, %struct.omap_clkctrl_data { i32 1241550112, ptr @omap4_l4_cfg_clkctrl_regs }, %struct.omap_clkctrl_data { i32 1241550368, ptr @omap4_l3_instr_clkctrl_regs }, %struct.omap_clkctrl_data { i32 1241550624, ptr @omap4_ivahd_clkctrl_regs }, %struct.omap_clkctrl_data { i32 1241550880, ptr @omap4_iss_clkctrl_regs }, %struct.omap_clkctrl_data { i32 1241551136, ptr @omap4_l3_dss_clkctrl_regs }, %struct.omap_clkctrl_data { i32 1241551392, ptr @omap4_l3_gfx_clkctrl_regs }, %struct.omap_clkctrl_data { i32 1241551648, ptr @omap4_l3_init_clkctrl_regs }, %struct.omap_clkctrl_data { i32 1241551904, ptr @omap4_l4_per_clkctrl_regs }, %struct.omap_clkctrl_data { i32 1241552288, ptr @omap4_l4_secure_clkctrl_regs }, %struct.omap_clkctrl_data { i32 1244690464, ptr @omap4_l4_wkup_clkctrl_regs }, %struct.omap_clkctrl_data { i32 1244690976, ptr @omap4_emu_sys_clkctrl_regs }, %struct.omap_clkctrl_data zeroinitializer], section ".init.rodata", align 4
@omap44xx_clks = internal global [69 x %struct.ti_dt_clk] [%struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.85, ptr null, ptr null }, ptr @.str.3 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.86, ptr null, ptr null }, ptr @.str.87 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.88, ptr null, ptr null }, ptr @.str.89 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.90, ptr null, ptr null }, ptr @.str.91 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.92, ptr null, ptr null }, ptr @.str.93 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.94, ptr null, ptr null }, ptr @.str.95 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.96, ptr null, ptr null }, ptr @.str.97 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.98, ptr null, ptr null }, ptr @.str.99 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.100, ptr null, ptr null }, ptr @.str.101 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.102, ptr null, ptr null }, ptr @.str.103 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.104, ptr null, ptr null }, ptr @.str.105 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.106, ptr null, ptr null }, ptr @.str.107 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.108, ptr null, ptr null }, ptr @.str.109 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.110, ptr null, ptr null }, ptr @.str.111 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.112, ptr null, ptr null }, ptr @.str.113 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.114, ptr null, ptr null }, ptr @.str.115 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.116, ptr null, ptr null }, ptr @.str.117 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.118, ptr null, ptr null }, ptr @.str.119 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.120, ptr null, ptr null }, ptr @.str.121 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.122, ptr null, ptr null }, ptr @.str.123 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.124, ptr null, ptr null }, ptr @.str.125 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.126, ptr null, ptr null }, ptr @.str.127 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.128, ptr null, ptr null }, ptr @.str.129 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.130, ptr null, ptr null }, ptr @.str.131 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.132, ptr null, ptr null }, ptr @.str.133 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.134, ptr null, ptr null }, ptr @.str.135 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.136, ptr null, ptr null }, ptr @.str.137 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.138, ptr null, ptr null }, ptr @.str.139 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.140, ptr null, ptr null }, ptr @.str.141 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.142, ptr null, ptr null }, ptr @.str.143 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.144, ptr null, ptr null }, ptr @.str.145 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.146, ptr null, ptr null }, ptr @.str.147 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.148, ptr null, ptr null }, ptr @.str.149 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.150, ptr null, ptr null }, ptr @.str.151 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.152, ptr null, ptr null }, ptr @.str.153 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.154, ptr null, ptr null }, ptr @.str.155 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.156, ptr null, ptr null }, ptr @.str.157 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.158, ptr null, ptr null }, ptr @.str.159 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.160, ptr null, ptr null }, ptr @.str.161 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.162, ptr null, ptr null }, ptr @.str.163 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.164, ptr null, ptr null }, ptr @.str.165 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.166, ptr null, ptr null }, ptr @.str.167 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.168, ptr null, ptr null }, ptr @.str.169 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.170, ptr null, ptr null }, ptr @.str.171 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.172, ptr null, ptr null }, ptr @.str.173 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.174, ptr null, ptr null }, ptr @.str.175 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.176, ptr null, ptr null }, ptr @.str.177 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.178, ptr null, ptr null }, ptr @.str.179 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.180, ptr null, ptr null }, ptr @.str.181 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.182, ptr null, ptr null }, ptr @.str.183 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.184, ptr null, ptr null }, ptr @.str.185 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.186, ptr null, ptr null }, ptr @.str.187 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.188, ptr null, ptr null }, ptr @.str.189 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.190, ptr null, ptr null }, ptr @.str.191 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.192, ptr null, ptr null }, ptr @.str.193 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.194, ptr null, ptr null }, ptr @.str.195 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.196, ptr null, ptr null }, ptr @.str.197 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.198, ptr null, ptr null }, ptr @.str.199 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.200, ptr null, ptr null }, ptr @.str.201 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.202, ptr null, ptr null }, ptr @.str.203 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.204, ptr null, ptr null }, ptr @.str.205 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.206, ptr null, ptr null }, ptr @.str.207 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.208, ptr null, ptr null }, ptr @.str.209 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.210, ptr null, ptr null }, ptr @.str.211 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.212, ptr null, ptr null }, ptr @.str.213 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.214, ptr null, ptr null }, ptr @.str.215 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.216, ptr null, ptr null }, ptr @.str.217 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.218, ptr null, ptr null }, ptr @.str.219 }, %struct.ti_dt_clk zeroinitializer], align 4
@.str = private unnamed_addr constant [12 x i8] c"dpll_usb_ck\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"\013%s: failed to configure USB DPLL!\0A\00", align 1
@__func__.omap4xxx_dt_clk_init = private unnamed_addr constant [21 x i8] c"omap4xxx_dt_clk_init\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"abe_dpll_refclk_mux_ck\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"sys_32k_ck\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"dpll_abe_ck\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"\013%s: failed to configure ABE DPLL!\0A\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"dpll_mpu_m2_ck\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"dpll_iva_m4x2_ck\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"ocp_abe_iclk\00", align 1
@omap4_aess_bit_data = internal constant [2 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 24, i8 2, ptr @omap4_aess_fclk_parents, ptr @omap4_aess_fclk_data }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@.str.9 = private unnamed_addr constant [19 x i8] c"abe_cm:clk:0008:24\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"pad_clks_ck\00", align 1
@omap4_dmic_bit_data = internal constant [3 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 24, i8 1, ptr @omap4_func_dmic_abe_gfclk_parents, ptr null }, %struct.omap_clkctrl_bit_data { i8 26, i8 1, ptr @omap4_dmic_sync_mux_ck_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@.str.11 = private unnamed_addr constant [19 x i8] c"abe_cm:clk:0018:24\00", align 1
@omap4_mcasp_bit_data = internal constant [3 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 24, i8 1, ptr @omap4_func_mcasp_abe_gfclk_parents, ptr null }, %struct.omap_clkctrl_bit_data { i8 26, i8 1, ptr @omap4_dmic_sync_mux_ck_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@.str.12 = private unnamed_addr constant [19 x i8] c"abe_cm:clk:0020:24\00", align 1
@omap4_mcbsp1_bit_data = internal constant [3 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 24, i8 1, ptr @omap4_func_mcbsp1_gfclk_parents, ptr null }, %struct.omap_clkctrl_bit_data { i8 26, i8 1, ptr @omap4_dmic_sync_mux_ck_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@.str.13 = private unnamed_addr constant [19 x i8] c"abe_cm:clk:0028:24\00", align 1
@omap4_mcbsp2_bit_data = internal constant [3 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 24, i8 1, ptr @omap4_func_mcbsp2_gfclk_parents, ptr null }, %struct.omap_clkctrl_bit_data { i8 26, i8 1, ptr @omap4_dmic_sync_mux_ck_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@.str.14 = private unnamed_addr constant [19 x i8] c"abe_cm:clk:0030:24\00", align 1
@omap4_mcbsp3_bit_data = internal constant [3 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 24, i8 1, ptr @omap4_func_mcbsp3_gfclk_parents, ptr null }, %struct.omap_clkctrl_bit_data { i8 26, i8 1, ptr @omap4_dmic_sync_mux_ck_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@.str.15 = private unnamed_addr constant [19 x i8] c"abe_cm:clk:0038:24\00", align 1
@omap4_slimbus1_bit_data = internal constant [5 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 8, i8 5, ptr @omap4_slimbus1_fclk_0_parents, ptr null }, %struct.omap_clkctrl_bit_data { i8 9, i8 5, ptr @omap4_slimbus1_fclk_1_parents, ptr null }, %struct.omap_clkctrl_bit_data { i8 10, i8 5, ptr @omap4_slimbus1_fclk_2_parents, ptr null }, %struct.omap_clkctrl_bit_data { i8 11, i8 5, ptr @omap4_slimbus1_slimbus_clk_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@.str.16 = private unnamed_addr constant [18 x i8] c"abe_cm:clk:0040:8\00", align 1
@omap4_timer5_bit_data = internal constant [2 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 24, i8 1, ptr @omap4_timer5_sync_mux_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@.str.17 = private unnamed_addr constant [19 x i8] c"abe_cm:clk:0048:24\00", align 1
@omap4_timer6_bit_data = internal constant [2 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 24, i8 1, ptr @omap4_timer5_sync_mux_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@.str.18 = private unnamed_addr constant [19 x i8] c"abe_cm:clk:0050:24\00", align 1
@omap4_timer7_bit_data = internal constant [2 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 24, i8 1, ptr @omap4_timer5_sync_mux_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@.str.19 = private unnamed_addr constant [19 x i8] c"abe_cm:clk:0058:24\00", align 1
@omap4_timer8_bit_data = internal constant [2 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 24, i8 1, ptr @omap4_timer5_sync_mux_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@.str.20 = private unnamed_addr constant [19 x i8] c"abe_cm:clk:0060:24\00", align 1
@omap4_aess_fclk_parents = internal constant [2 x ptr] [ptr @.str.21, ptr null], section ".init.rodata", align 4
@omap4_aess_fclk_data = internal constant %struct.omap_clkctrl_div_data { ptr null, i32 2, i32 0 }, section ".init.rodata", align 4
@.str.21 = private unnamed_addr constant [8 x i8] c"abe_clk\00", align 1
@omap4_func_dmic_abe_gfclk_parents = internal constant [4 x ptr] [ptr @.str.22, ptr @.str.10, ptr @.str.23, ptr null], section ".init.rodata", align 4
@omap4_dmic_sync_mux_ck_parents = internal constant [4 x ptr] [ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr null], section ".init.rodata", align 4
@.str.22 = private unnamed_addr constant [19 x i8] c"abe_cm:clk:0018:26\00", align 1
@.str.23 = private unnamed_addr constant [12 x i8] c"slimbus_clk\00", align 1
@.str.24 = private unnamed_addr constant [13 x i8] c"abe_24m_fclk\00", align 1
@.str.25 = private unnamed_addr constant [15 x i8] c"syc_clk_div_ck\00", align 1
@.str.26 = private unnamed_addr constant [13 x i8] c"func_24m_clk\00", align 1
@omap4_func_mcasp_abe_gfclk_parents = internal constant [4 x ptr] [ptr @.str.27, ptr @.str.10, ptr @.str.23, ptr null], section ".init.rodata", align 4
@.str.27 = private unnamed_addr constant [19 x i8] c"abe_cm:clk:0020:26\00", align 1
@omap4_func_mcbsp1_gfclk_parents = internal constant [4 x ptr] [ptr @.str.28, ptr @.str.10, ptr @.str.23, ptr null], section ".init.rodata", align 4
@.str.28 = private unnamed_addr constant [19 x i8] c"abe_cm:clk:0028:26\00", align 1
@omap4_func_mcbsp2_gfclk_parents = internal constant [4 x ptr] [ptr @.str.29, ptr @.str.10, ptr @.str.23, ptr null], section ".init.rodata", align 4
@.str.29 = private unnamed_addr constant [19 x i8] c"abe_cm:clk:0030:26\00", align 1
@omap4_func_mcbsp3_gfclk_parents = internal constant [4 x ptr] [ptr @.str.30, ptr @.str.10, ptr @.str.23, ptr null], section ".init.rodata", align 4
@.str.30 = private unnamed_addr constant [19 x i8] c"abe_cm:clk:0038:26\00", align 1
@omap4_slimbus1_fclk_0_parents = internal constant [2 x ptr] [ptr @.str.24, ptr null], section ".init.rodata", align 4
@omap4_slimbus1_fclk_1_parents = internal constant [2 x ptr] [ptr @.str.26, ptr null], section ".init.rodata", align 4
@omap4_slimbus1_fclk_2_parents = internal constant [2 x ptr] [ptr @.str.10, ptr null], section ".init.rodata", align 4
@omap4_slimbus1_slimbus_clk_parents = internal constant [2 x ptr] [ptr @.str.23, ptr null], section ".init.rodata", align 4
@omap4_timer5_sync_mux_parents = internal constant [3 x ptr] [ptr @.str.25, ptr @.str.3, ptr null], section ".init.rodata", align 4
@.str.31 = private unnamed_addr constant [19 x i8] c"l4_wkup_clk_mux_ck\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"l3_div_ck\00", align 1
@.str.33 = private unnamed_addr constant [18 x i8] c"ducati_clk_mux_ck\00", align 1
@.str.34 = private unnamed_addr constant [10 x i8] c"ddrphy_ck\00", align 1
@.str.35 = private unnamed_addr constant [12 x i8] c"div_core_ck\00", align 1
@.str.36 = private unnamed_addr constant [10 x i8] c"l4_div_ck\00", align 1
@.str.37 = private unnamed_addr constant [17 x i8] c"dpll_iva_m5x2_ck\00", align 1
@omap4_iss_bit_data = internal constant [2 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 8, i8 5, ptr @omap4_iss_ctrlclk_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@omap4_fdif_bit_data = internal constant [2 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 24, i8 2, ptr @omap4_fdif_fck_parents, ptr @omap4_fdif_fck_data }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@.str.38 = private unnamed_addr constant [19 x i8] c"iss_cm:clk:0008:24\00", align 1
@omap4_iss_ctrlclk_parents = internal constant [2 x ptr] [ptr @.str.39, ptr null], section ".init.rodata", align 4
@.str.39 = private unnamed_addr constant [14 x i8] c"func_96m_fclk\00", align 1
@omap4_fdif_fck_parents = internal constant [2 x ptr] [ptr @.str.40, ptr null], section ".init.rodata", align 4
@omap4_fdif_fck_data = internal constant %struct.omap_clkctrl_div_data { ptr null, i32 4, i32 2 }, section ".init.rodata", align 4
@.str.40 = private unnamed_addr constant [17 x i8] c"dpll_per_m4x2_ck\00", align 1
@omap4_dss_core_bit_data = internal constant [5 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 8, i8 5, ptr @omap4_dss_dss_clk_parents, ptr null }, %struct.omap_clkctrl_bit_data { i8 9, i8 5, ptr @omap4_dss_48mhz_clk_parents, ptr null }, %struct.omap_clkctrl_bit_data { i8 10, i8 5, ptr @omap4_dss_sys_clk_parents, ptr null }, %struct.omap_clkctrl_bit_data { i8 11, i8 5, ptr @omap4_dss_tv_clk_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@.str.41 = private unnamed_addr constant [21 x i8] c"l3_dss_cm:clk:0000:8\00", align 1
@omap4_dss_dss_clk_parents = internal constant [2 x ptr] [ptr @.str.42, ptr null], section ".init.rodata", align 4
@omap4_dss_48mhz_clk_parents = internal constant [2 x ptr] [ptr @.str.43, ptr null], section ".init.rodata", align 4
@omap4_dss_sys_clk_parents = internal constant [2 x ptr] [ptr @.str.25, ptr null], section ".init.rodata", align 4
@omap4_dss_tv_clk_parents = internal constant [2 x ptr] [ptr @.str.44, ptr null], section ".init.rodata", align 4
@.str.42 = private unnamed_addr constant [17 x i8] c"dpll_per_m5x2_ck\00", align 1
@.str.43 = private unnamed_addr constant [15 x i8] c"func_48mc_fclk\00", align 1
@.str.44 = private unnamed_addr constant [16 x i8] c"extalt_clkin_ck\00", align 1
@omap4_gpu_bit_data = internal constant [2 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 24, i8 1, ptr @omap4_sgx_clk_mux_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@.str.45 = private unnamed_addr constant [22 x i8] c"l3_gfx_cm:clk:0000:24\00", align 1
@omap4_sgx_clk_mux_parents = internal constant [3 x ptr] [ptr @.str.46, ptr @.str.47, ptr null], section ".init.rodata", align 4
@.str.46 = private unnamed_addr constant [18 x i8] c"dpll_core_m7x2_ck\00", align 1
@.str.47 = private unnamed_addr constant [17 x i8] c"dpll_per_m7x2_ck\00", align 1
@omap4_mmc1_bit_data = internal constant [2 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 24, i8 1, ptr @omap4_hsmmc1_fclk_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@.str.48 = private unnamed_addr constant [23 x i8] c"l3_init_cm:clk:0008:24\00", align 1
@omap4_mmc2_bit_data = internal constant [2 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 24, i8 1, ptr @omap4_hsmmc1_fclk_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@.str.49 = private unnamed_addr constant [23 x i8] c"l3_init_cm:clk:0010:24\00", align 1
@omap4_hsi_bit_data = internal constant [2 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 24, i8 2, ptr @omap4_hsi_fck_parents, ptr @omap4_hsi_fck_data }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@.str.50 = private unnamed_addr constant [23 x i8] c"l3_init_cm:clk:0018:24\00", align 1
@omap4_usb_host_hs_bit_data = internal constant [11 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 8, i8 5, ptr @omap4_usb_host_hs_utmi_p1_clk_parents, ptr null }, %struct.omap_clkctrl_bit_data { i8 9, i8 5, ptr @omap4_usb_host_hs_utmi_p2_clk_parents, ptr null }, %struct.omap_clkctrl_bit_data { i8 10, i8 5, ptr @omap4_usb_host_hs_utmi_p3_clk_parents, ptr null }, %struct.omap_clkctrl_bit_data { i8 11, i8 5, ptr @omap4_usb_host_hs_utmi_p3_clk_parents, ptr null }, %struct.omap_clkctrl_bit_data { i8 12, i8 5, ptr @omap4_usb_host_hs_utmi_p3_clk_parents, ptr null }, %struct.omap_clkctrl_bit_data { i8 13, i8 5, ptr @omap4_usb_host_hs_hsic480m_p1_clk_parents, ptr null }, %struct.omap_clkctrl_bit_data { i8 14, i8 5, ptr @omap4_usb_host_hs_hsic480m_p1_clk_parents, ptr null }, %struct.omap_clkctrl_bit_data { i8 15, i8 5, ptr @omap4_dss_48mhz_clk_parents, ptr null }, %struct.omap_clkctrl_bit_data { i8 24, i8 1, ptr @omap4_utmi_p1_gfclk_parents, ptr null }, %struct.omap_clkctrl_bit_data { i8 25, i8 1, ptr @omap4_utmi_p2_gfclk_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@.str.51 = private unnamed_addr constant [14 x i8] c"init_60m_fclk\00", align 1
@omap4_usb_otg_hs_bit_data = internal constant [3 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 8, i8 5, ptr @omap4_usb_otg_hs_xclk_parents, ptr null }, %struct.omap_clkctrl_bit_data { i8 24, i8 1, ptr @omap4_otg_60m_gfclk_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@omap4_usb_tll_hs_bit_data = internal constant [4 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 8, i8 5, ptr @omap4_usb_host_hs_utmi_p3_clk_parents, ptr null }, %struct.omap_clkctrl_bit_data { i8 9, i8 5, ptr @omap4_usb_host_hs_utmi_p3_clk_parents, ptr null }, %struct.omap_clkctrl_bit_data { i8 10, i8 5, ptr @omap4_usb_host_hs_utmi_p3_clk_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@omap4_ocp2scp_usb_phy_bit_data = internal constant [2 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 8, i8 5, ptr @omap4_ocp2scp_usb_phy_phy_48m_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@.str.52 = private unnamed_addr constant [22 x i8] c"l3_init_cm:clk:00c0:8\00", align 1
@omap4_hsmmc1_fclk_parents = internal constant [3 x ptr] [ptr @.str.53, ptr @.str.39, ptr null], section ".init.rodata", align 4
@.str.53 = private unnamed_addr constant [14 x i8] c"func_64m_fclk\00", align 1
@omap4_hsi_fck_parents = internal constant [2 x ptr] [ptr @.str.54, ptr null], section ".init.rodata", align 4
@omap4_hsi_fck_data = internal constant %struct.omap_clkctrl_div_data { ptr null, i32 4, i32 2 }, section ".init.rodata", align 4
@.str.54 = private unnamed_addr constant [17 x i8] c"dpll_per_m2x2_ck\00", align 1
@omap4_usb_host_hs_utmi_p1_clk_parents = internal constant [2 x ptr] [ptr @.str.55, ptr null], section ".init.rodata", align 4
@omap4_usb_host_hs_utmi_p2_clk_parents = internal constant [2 x ptr] [ptr @.str.56, ptr null], section ".init.rodata", align 4
@omap4_usb_host_hs_utmi_p3_clk_parents = internal constant [2 x ptr] [ptr @.str.51, ptr null], section ".init.rodata", align 4
@omap4_usb_host_hs_hsic480m_p1_clk_parents = internal constant [2 x ptr] [ptr @.str.57, ptr null], section ".init.rodata", align 4
@omap4_utmi_p1_gfclk_parents = internal constant [3 x ptr] [ptr @.str.51, ptr @.str.58, ptr null], section ".init.rodata", align 4
@omap4_utmi_p2_gfclk_parents = internal constant [3 x ptr] [ptr @.str.51, ptr @.str.59, ptr null], section ".init.rodata", align 4
@.str.55 = private unnamed_addr constant [23 x i8] c"l3_init_cm:clk:0038:24\00", align 1
@.str.56 = private unnamed_addr constant [23 x i8] c"l3_init_cm:clk:0038:25\00", align 1
@.str.57 = private unnamed_addr constant [15 x i8] c"dpll_usb_m2_ck\00", align 1
@.str.58 = private unnamed_addr constant [15 x i8] c"xclk60mhsp1_ck\00", align 1
@.str.59 = private unnamed_addr constant [15 x i8] c"xclk60mhsp2_ck\00", align 1
@omap4_usb_otg_hs_xclk_parents = internal constant [2 x ptr] [ptr @.str.60, ptr null], section ".init.rodata", align 4
@omap4_otg_60m_gfclk_parents = internal constant [3 x ptr] [ptr @.str.61, ptr @.str.62, ptr null], section ".init.rodata", align 4
@.str.60 = private unnamed_addr constant [23 x i8] c"l3_init_cm:clk:0040:24\00", align 1
@.str.61 = private unnamed_addr constant [19 x i8] c"utmi_phy_clkout_ck\00", align 1
@.str.62 = private unnamed_addr constant [14 x i8] c"xclk60motg_ck\00", align 1
@omap4_ocp2scp_usb_phy_phy_48m_parents = internal constant [2 x ptr] [ptr @.str.63, ptr null], section ".init.rodata", align 4
@.str.63 = private unnamed_addr constant [14 x i8] c"func_48m_fclk\00", align 1
@omap4_timer10_bit_data = internal constant [2 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 24, i8 1, ptr @omap4_cm2_dm10_mux_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@.str.64 = private unnamed_addr constant [22 x i8] c"l4_per_cm:clk:0008:24\00", align 1
@omap4_timer11_bit_data = internal constant [2 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 24, i8 1, ptr @omap4_cm2_dm10_mux_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@.str.65 = private unnamed_addr constant [22 x i8] c"l4_per_cm:clk:0010:24\00", align 1
@omap4_timer2_bit_data = internal constant [2 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 24, i8 1, ptr @omap4_cm2_dm10_mux_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@.str.66 = private unnamed_addr constant [22 x i8] c"l4_per_cm:clk:0018:24\00", align 1
@omap4_timer3_bit_data = internal constant [2 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 24, i8 1, ptr @omap4_cm2_dm10_mux_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@.str.67 = private unnamed_addr constant [22 x i8] c"l4_per_cm:clk:0020:24\00", align 1
@omap4_timer4_bit_data = internal constant [2 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 24, i8 1, ptr @omap4_cm2_dm10_mux_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@.str.68 = private unnamed_addr constant [22 x i8] c"l4_per_cm:clk:0028:24\00", align 1
@omap4_timer9_bit_data = internal constant [2 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 24, i8 1, ptr @omap4_cm2_dm10_mux_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@.str.69 = private unnamed_addr constant [22 x i8] c"l4_per_cm:clk:0030:24\00", align 1
@omap4_gpio2_bit_data = internal constant [2 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 8, i8 5, ptr @omap4_gpio2_dbclk_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@omap4_gpio3_bit_data = internal constant [2 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 8, i8 5, ptr @omap4_gpio2_dbclk_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@omap4_gpio4_bit_data = internal constant [2 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 8, i8 5, ptr @omap4_gpio2_dbclk_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@omap4_gpio5_bit_data = internal constant [2 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 8, i8 5, ptr @omap4_gpio2_dbclk_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@omap4_gpio6_bit_data = internal constant [2 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 8, i8 5, ptr @omap4_gpio2_dbclk_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@.str.70 = private unnamed_addr constant [14 x i8] c"func_12m_fclk\00", align 1
@omap4_mcbsp4_bit_data = internal constant [3 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 24, i8 1, ptr @omap4_per_mcbsp4_gfclk_parents, ptr null }, %struct.omap_clkctrl_bit_data { i8 26, i8 1, ptr @omap4_mcbsp4_sync_mux_ck_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@.str.71 = private unnamed_addr constant [22 x i8] c"l4_per_cm:clk:00c0:24\00", align 1
@omap4_slimbus2_bit_data = internal constant [4 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 8, i8 5, ptr @omap4_slimbus2_fclk_0_parents, ptr null }, %struct.omap_clkctrl_bit_data { i8 9, i8 5, ptr @omap4_slimbus2_fclk_1_parents, ptr null }, %struct.omap_clkctrl_bit_data { i8 10, i8 5, ptr @omap4_slimbus2_slimbus_clk_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@.str.72 = private unnamed_addr constant [21 x i8] c"l4_per_cm:clk:0118:8\00", align 1
@omap4_cm2_dm10_mux_parents = internal constant [3 x ptr] [ptr @.str.73, ptr @.str.3, ptr null], section ".init.rodata", align 4
@.str.73 = private unnamed_addr constant [13 x i8] c"sys_clkin_ck\00", align 1
@omap4_gpio2_dbclk_parents = internal constant [2 x ptr] [ptr @.str.3, ptr null], section ".init.rodata", align 4
@omap4_per_mcbsp4_gfclk_parents = internal constant [3 x ptr] [ptr @.str.74, ptr @.str.10, ptr null], section ".init.rodata", align 4
@omap4_mcbsp4_sync_mux_ck_parents = internal constant [3 x ptr] [ptr @.str.39, ptr @.str.75, ptr null], section ".init.rodata", align 4
@.str.74 = private unnamed_addr constant [22 x i8] c"l4_per_cm:clk:00c0:26\00", align 1
@.str.75 = private unnamed_addr constant [16 x i8] c"per_abe_nc_fclk\00", align 1
@omap4_slimbus2_fclk_0_parents = internal constant [2 x ptr] [ptr @.str.76, ptr null], section ".init.rodata", align 4
@omap4_slimbus2_fclk_1_parents = internal constant [2 x ptr] [ptr @.str.77, ptr null], section ".init.rodata", align 4
@omap4_slimbus2_slimbus_clk_parents = internal constant [2 x ptr] [ptr @.str.78, ptr null], section ".init.rodata", align 4
@.str.76 = private unnamed_addr constant [15 x i8] c"func_24mc_fclk\00", align 1
@.str.77 = private unnamed_addr constant [17 x i8] c"per_abe_24m_fclk\00", align 1
@.str.78 = private unnamed_addr constant [25 x i8] c"pad_slimbus_core_clks_ck\00", align 1
@omap4_gpio1_bit_data = internal constant [2 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 8, i8 5, ptr @omap4_gpio2_dbclk_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@omap4_timer1_bit_data = internal constant [2 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 24, i8 1, ptr @omap4_cm2_dm10_mux_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@.str.79 = private unnamed_addr constant [23 x i8] c"l4_wkup_cm:clk:0020:24\00", align 1
@omap4_debugss_bit_data = internal constant [5 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 20, i8 1, ptr @omap4_pmd_stm_clock_mux_ck_parents, ptr null }, %struct.omap_clkctrl_bit_data { i8 22, i8 1, ptr @omap4_pmd_stm_clock_mux_ck_parents, ptr null }, %struct.omap_clkctrl_bit_data { i8 24, i8 2, ptr @omap4_trace_clk_div_div_ck_parents, ptr @omap4_trace_clk_div_div_ck_data }, %struct.omap_clkctrl_bit_data { i8 27, i8 2, ptr @omap4_stm_clk_div_ck_parents, ptr @omap4_stm_clk_div_ck_data }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@.str.80 = private unnamed_addr constant [17 x i8] c"trace_clk_div_ck\00", align 1
@omap4_pmd_stm_clock_mux_ck_parents = internal constant [4 x ptr] [ptr @.str.73, ptr @.str.81, ptr @.str.82, ptr null], section ".init.rodata", align 4
@omap4_trace_clk_div_div_ck_parents = internal constant [2 x ptr] [ptr @.str.83, ptr null], section ".init.rodata", align 4
@omap4_trace_clk_div_div_ck_data = internal constant %struct.omap_clkctrl_div_data { ptr @omap4_trace_clk_div_div_ck_divs, i32 0, i32 0 }, section ".init.rodata", align 4
@omap4_stm_clk_div_ck_parents = internal constant [2 x ptr] [ptr @.str.84, ptr null], section ".init.rodata", align 4
@omap4_stm_clk_div_ck_data = internal constant %struct.omap_clkctrl_div_data { ptr null, i32 64, i32 2 }, section ".init.rodata", align 4
@.str.81 = private unnamed_addr constant [18 x i8] c"dpll_core_m6x2_ck\00", align 1
@.str.82 = private unnamed_addr constant [17 x i8] c"tie_low_clock_ck\00", align 1
@.str.83 = private unnamed_addr constant [23 x i8] c"emu_sys_cm:clk:0000:22\00", align 1
@omap4_trace_clk_div_div_ck_divs = internal constant [6 x i32] [i32 0, i32 1, i32 2, i32 0, i32 4, i32 -1], section ".init.rodata", align 4
@.str.84 = private unnamed_addr constant [23 x i8] c"emu_sys_cm:clk:0000:20\00", align 1
@.str.85 = private unnamed_addr constant [13 x i8] c"timer_32k_ck\00", align 1
@.str.86 = private unnamed_addr constant [10 x i8] c"aess_fclk\00", align 1
@.str.87 = private unnamed_addr constant [15 x i8] c"abe_cm:0008:24\00", align 1
@.str.88 = private unnamed_addr constant [13 x i8] c"cm2_dm10_mux\00", align 1
@.str.89 = private unnamed_addr constant [18 x i8] c"l4_per_cm:0008:24\00", align 1
@.str.90 = private unnamed_addr constant [13 x i8] c"cm2_dm11_mux\00", align 1
@.str.91 = private unnamed_addr constant [18 x i8] c"l4_per_cm:0010:24\00", align 1
@.str.92 = private unnamed_addr constant [12 x i8] c"cm2_dm2_mux\00", align 1
@.str.93 = private unnamed_addr constant [18 x i8] c"l4_per_cm:0018:24\00", align 1
@.str.94 = private unnamed_addr constant [12 x i8] c"cm2_dm3_mux\00", align 1
@.str.95 = private unnamed_addr constant [18 x i8] c"l4_per_cm:0020:24\00", align 1
@.str.96 = private unnamed_addr constant [12 x i8] c"cm2_dm4_mux\00", align 1
@.str.97 = private unnamed_addr constant [18 x i8] c"l4_per_cm:0028:24\00", align 1
@.str.98 = private unnamed_addr constant [12 x i8] c"cm2_dm9_mux\00", align 1
@.str.99 = private unnamed_addr constant [18 x i8] c"l4_per_cm:0030:24\00", align 1
@.str.100 = private unnamed_addr constant [17 x i8] c"dmic_sync_mux_ck\00", align 1
@.str.101 = private unnamed_addr constant [15 x i8] c"abe_cm:0018:26\00", align 1
@.str.102 = private unnamed_addr constant [13 x i8] c"dmt1_clk_mux\00", align 1
@.str.103 = private unnamed_addr constant [19 x i8] c"l4_wkup_cm:0020:24\00", align 1
@.str.104 = private unnamed_addr constant [14 x i8] c"dss_48mhz_clk\00", align 1
@.str.105 = private unnamed_addr constant [17 x i8] c"l3_dss_cm:0000:9\00", align 1
@.str.106 = private unnamed_addr constant [12 x i8] c"dss_dss_clk\00", align 1
@.str.107 = private unnamed_addr constant [17 x i8] c"l3_dss_cm:0000:8\00", align 1
@.str.108 = private unnamed_addr constant [12 x i8] c"dss_sys_clk\00", align 1
@.str.109 = private unnamed_addr constant [18 x i8] c"l3_dss_cm:0000:10\00", align 1
@.str.110 = private unnamed_addr constant [11 x i8] c"dss_tv_clk\00", align 1
@.str.111 = private unnamed_addr constant [18 x i8] c"l3_dss_cm:0000:11\00", align 1
@.str.112 = private unnamed_addr constant [9 x i8] c"fdif_fck\00", align 1
@.str.113 = private unnamed_addr constant [15 x i8] c"iss_cm:0008:24\00", align 1
@.str.114 = private unnamed_addr constant [20 x i8] c"func_dmic_abe_gfclk\00", align 1
@.str.115 = private unnamed_addr constant [15 x i8] c"abe_cm:0018:24\00", align 1
@.str.116 = private unnamed_addr constant [21 x i8] c"func_mcasp_abe_gfclk\00", align 1
@.str.117 = private unnamed_addr constant [15 x i8] c"abe_cm:0020:24\00", align 1
@.str.118 = private unnamed_addr constant [18 x i8] c"func_mcbsp1_gfclk\00", align 1
@.str.119 = private unnamed_addr constant [15 x i8] c"abe_cm:0028:24\00", align 1
@.str.120 = private unnamed_addr constant [18 x i8] c"func_mcbsp2_gfclk\00", align 1
@.str.121 = private unnamed_addr constant [15 x i8] c"abe_cm:0030:24\00", align 1
@.str.122 = private unnamed_addr constant [18 x i8] c"func_mcbsp3_gfclk\00", align 1
@.str.123 = private unnamed_addr constant [15 x i8] c"abe_cm:0038:24\00", align 1
@.str.124 = private unnamed_addr constant [12 x i8] c"gpio1_dbclk\00", align 1
@.str.125 = private unnamed_addr constant [18 x i8] c"l4_wkup_cm:0018:8\00", align 1
@.str.126 = private unnamed_addr constant [12 x i8] c"gpio2_dbclk\00", align 1
@.str.127 = private unnamed_addr constant [17 x i8] c"l4_per_cm:0040:8\00", align 1
@.str.128 = private unnamed_addr constant [12 x i8] c"gpio3_dbclk\00", align 1
@.str.129 = private unnamed_addr constant [17 x i8] c"l4_per_cm:0048:8\00", align 1
@.str.130 = private unnamed_addr constant [12 x i8] c"gpio4_dbclk\00", align 1
@.str.131 = private unnamed_addr constant [17 x i8] c"l4_per_cm:0050:8\00", align 1
@.str.132 = private unnamed_addr constant [12 x i8] c"gpio5_dbclk\00", align 1
@.str.133 = private unnamed_addr constant [17 x i8] c"l4_per_cm:0058:8\00", align 1
@.str.134 = private unnamed_addr constant [12 x i8] c"gpio6_dbclk\00", align 1
@.str.135 = private unnamed_addr constant [17 x i8] c"l4_per_cm:0060:8\00", align 1
@.str.136 = private unnamed_addr constant [8 x i8] c"hsi_fck\00", align 1
@.str.137 = private unnamed_addr constant [19 x i8] c"l3_init_cm:0018:24\00", align 1
@.str.138 = private unnamed_addr constant [12 x i8] c"hsmmc1_fclk\00", align 1
@.str.139 = private unnamed_addr constant [19 x i8] c"l3_init_cm:0008:24\00", align 1
@.str.140 = private unnamed_addr constant [12 x i8] c"hsmmc2_fclk\00", align 1
@.str.141 = private unnamed_addr constant [19 x i8] c"l3_init_cm:0010:24\00", align 1
@.str.142 = private unnamed_addr constant [12 x i8] c"iss_ctrlclk\00", align 1
@.str.143 = private unnamed_addr constant [14 x i8] c"iss_cm:0000:8\00", align 1
@.str.144 = private unnamed_addr constant [18 x i8] c"mcasp_sync_mux_ck\00", align 1
@.str.145 = private unnamed_addr constant [15 x i8] c"abe_cm:0020:26\00", align 1
@.str.146 = private unnamed_addr constant [19 x i8] c"mcbsp1_sync_mux_ck\00", align 1
@.str.147 = private unnamed_addr constant [15 x i8] c"abe_cm:0028:26\00", align 1
@.str.148 = private unnamed_addr constant [19 x i8] c"mcbsp2_sync_mux_ck\00", align 1
@.str.149 = private unnamed_addr constant [15 x i8] c"abe_cm:0030:26\00", align 1
@.str.150 = private unnamed_addr constant [19 x i8] c"mcbsp3_sync_mux_ck\00", align 1
@.str.151 = private unnamed_addr constant [15 x i8] c"abe_cm:0038:26\00", align 1
@.str.152 = private unnamed_addr constant [19 x i8] c"mcbsp4_sync_mux_ck\00", align 1
@.str.153 = private unnamed_addr constant [18 x i8] c"l4_per_cm:00c0:26\00", align 1
@.str.154 = private unnamed_addr constant [24 x i8] c"ocp2scp_usb_phy_phy_48m\00", align 1
@.str.155 = private unnamed_addr constant [18 x i8] c"l3_init_cm:00c0:8\00", align 1
@.str.156 = private unnamed_addr constant [14 x i8] c"otg_60m_gfclk\00", align 1
@.str.157 = private unnamed_addr constant [19 x i8] c"l3_init_cm:0040:24\00", align 1
@.str.158 = private unnamed_addr constant [17 x i8] c"per_mcbsp4_gfclk\00", align 1
@.str.159 = private unnamed_addr constant [18 x i8] c"l4_per_cm:00c0:24\00", align 1
@.str.160 = private unnamed_addr constant [21 x i8] c"pmd_stm_clock_mux_ck\00", align 1
@.str.161 = private unnamed_addr constant [19 x i8] c"emu_sys_cm:0000:20\00", align 1
@.str.162 = private unnamed_addr constant [21 x i8] c"pmd_trace_clk_mux_ck\00", align 1
@.str.163 = private unnamed_addr constant [19 x i8] c"emu_sys_cm:0000:22\00", align 1
@.str.164 = private unnamed_addr constant [12 x i8] c"sgx_clk_mux\00", align 1
@.str.165 = private unnamed_addr constant [18 x i8] c"l3_gfx_cm:0000:24\00", align 1
@.str.166 = private unnamed_addr constant [16 x i8] c"slimbus1_fclk_0\00", align 1
@.str.167 = private unnamed_addr constant [14 x i8] c"abe_cm:0040:8\00", align 1
@.str.168 = private unnamed_addr constant [16 x i8] c"slimbus1_fclk_1\00", align 1
@.str.169 = private unnamed_addr constant [14 x i8] c"abe_cm:0040:9\00", align 1
@.str.170 = private unnamed_addr constant [16 x i8] c"slimbus1_fclk_2\00", align 1
@.str.171 = private unnamed_addr constant [15 x i8] c"abe_cm:0040:10\00", align 1
@.str.172 = private unnamed_addr constant [21 x i8] c"slimbus1_slimbus_clk\00", align 1
@.str.173 = private unnamed_addr constant [15 x i8] c"abe_cm:0040:11\00", align 1
@.str.174 = private unnamed_addr constant [16 x i8] c"slimbus2_fclk_0\00", align 1
@.str.175 = private unnamed_addr constant [17 x i8] c"l4_per_cm:0118:8\00", align 1
@.str.176 = private unnamed_addr constant [16 x i8] c"slimbus2_fclk_1\00", align 1
@.str.177 = private unnamed_addr constant [17 x i8] c"l4_per_cm:0118:9\00", align 1
@.str.178 = private unnamed_addr constant [21 x i8] c"slimbus2_slimbus_clk\00", align 1
@.str.179 = private unnamed_addr constant [18 x i8] c"l4_per_cm:0118:10\00", align 1
@.str.180 = private unnamed_addr constant [15 x i8] c"stm_clk_div_ck\00", align 1
@.str.181 = private unnamed_addr constant [19 x i8] c"emu_sys_cm:0000:27\00", align 1
@.str.182 = private unnamed_addr constant [16 x i8] c"timer5_sync_mux\00", align 1
@.str.183 = private unnamed_addr constant [15 x i8] c"abe_cm:0048:24\00", align 1
@.str.184 = private unnamed_addr constant [16 x i8] c"timer6_sync_mux\00", align 1
@.str.185 = private unnamed_addr constant [15 x i8] c"abe_cm:0050:24\00", align 1
@.str.186 = private unnamed_addr constant [16 x i8] c"timer7_sync_mux\00", align 1
@.str.187 = private unnamed_addr constant [15 x i8] c"abe_cm:0058:24\00", align 1
@.str.188 = private unnamed_addr constant [16 x i8] c"timer8_sync_mux\00", align 1
@.str.189 = private unnamed_addr constant [15 x i8] c"abe_cm:0060:24\00", align 1
@.str.190 = private unnamed_addr constant [21 x i8] c"trace_clk_div_div_ck\00", align 1
@.str.191 = private unnamed_addr constant [19 x i8] c"emu_sys_cm:0000:24\00", align 1
@.str.192 = private unnamed_addr constant [23 x i8] c"usb_host_hs_func48mclk\00", align 1
@.str.193 = private unnamed_addr constant [19 x i8] c"l3_init_cm:0038:15\00", align 1
@.str.194 = private unnamed_addr constant [28 x i8] c"usb_host_hs_hsic480m_p1_clk\00", align 1
@.str.195 = private unnamed_addr constant [19 x i8] c"l3_init_cm:0038:13\00", align 1
@.str.196 = private unnamed_addr constant [28 x i8] c"usb_host_hs_hsic480m_p2_clk\00", align 1
@.str.197 = private unnamed_addr constant [19 x i8] c"l3_init_cm:0038:14\00", align 1
@.str.198 = private unnamed_addr constant [27 x i8] c"usb_host_hs_hsic60m_p1_clk\00", align 1
@.str.199 = private unnamed_addr constant [19 x i8] c"l3_init_cm:0038:11\00", align 1
@.str.200 = private unnamed_addr constant [27 x i8] c"usb_host_hs_hsic60m_p2_clk\00", align 1
@.str.201 = private unnamed_addr constant [19 x i8] c"l3_init_cm:0038:12\00", align 1
@.str.202 = private unnamed_addr constant [24 x i8] c"usb_host_hs_utmi_p1_clk\00", align 1
@.str.203 = private unnamed_addr constant [18 x i8] c"l3_init_cm:0038:8\00", align 1
@.str.204 = private unnamed_addr constant [24 x i8] c"usb_host_hs_utmi_p2_clk\00", align 1
@.str.205 = private unnamed_addr constant [18 x i8] c"l3_init_cm:0038:9\00", align 1
@.str.206 = private unnamed_addr constant [24 x i8] c"usb_host_hs_utmi_p3_clk\00", align 1
@.str.207 = private unnamed_addr constant [19 x i8] c"l3_init_cm:0038:10\00", align 1
@.str.208 = private unnamed_addr constant [16 x i8] c"usb_otg_hs_xclk\00", align 1
@.str.209 = private unnamed_addr constant [18 x i8] c"l3_init_cm:0040:8\00", align 1
@.str.210 = private unnamed_addr constant [23 x i8] c"usb_tll_hs_usb_ch0_clk\00", align 1
@.str.211 = private unnamed_addr constant [18 x i8] c"l3_init_cm:0048:8\00", align 1
@.str.212 = private unnamed_addr constant [23 x i8] c"usb_tll_hs_usb_ch1_clk\00", align 1
@.str.213 = private unnamed_addr constant [18 x i8] c"l3_init_cm:0048:9\00", align 1
@.str.214 = private unnamed_addr constant [23 x i8] c"usb_tll_hs_usb_ch2_clk\00", align 1
@.str.215 = private unnamed_addr constant [19 x i8] c"l3_init_cm:0048:10\00", align 1
@.str.216 = private unnamed_addr constant [14 x i8] c"utmi_p1_gfclk\00", align 1
@.str.217 = private unnamed_addr constant [19 x i8] c"l3_init_cm:0038:24\00", align 1
@.str.218 = private unnamed_addr constant [14 x i8] c"utmi_p2_gfclk\00", align 1
@.str.219 = private unnamed_addr constant [19 x i8] c"l3_init_cm:0038:25\00", align 1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @omap4xxx_dt_clk_init() local_unnamed_addr #0 section ".init.text" {
  tail call void @ti_dt_clocks_register(ptr noundef nonnull @omap44xx_clks) #3
  %1 = tail call i32 @omap2_clk_disable_autoidle_all() #3
  tail call void @ti_clk_add_aliases() #3
  %2 = tail call ptr @clk_get_sys(ptr noundef null, ptr noundef nonnull @.str) #3
  %3 = tail call i32 @clk_set_rate(ptr noundef %2, i32 noundef 960000000) #3
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %0
  %6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.omap4xxx_dt_clk_init) #4
  br label %7

7:                                                ; preds = %5, %0
  %8 = tail call ptr @clk_get_sys(ptr noundef null, ptr noundef nonnull @.str.2) #3
  %9 = tail call ptr @clk_get_sys(ptr noundef null, ptr noundef nonnull @.str.3) #3
  %10 = tail call i32 @clk_set_parent(ptr noundef %8, ptr noundef %9) #3
  %11 = tail call ptr @clk_get_sys(ptr noundef null, ptr noundef nonnull @.str.4) #3
  %12 = icmp eq i32 %10, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %7
  %14 = tail call i32 @clk_set_rate(ptr noundef %11, i32 noundef 98304000) #3
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %13, %7
  %17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.omap4xxx_dt_clk_init) #4
  br label %18

18:                                               ; preds = %16, %13
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
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_parent(ptr noundef, ptr noundef) local_unnamed_addr #1

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
