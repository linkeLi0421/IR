; ModuleID = '/llk/IR/drivers/clk/ti/clk-33xx-compat.c_pt.bc'
source_filename = "../drivers/clk/ti/clk-33xx-compat.c"
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

@am3_l4_per_clkctrl_regs = internal constant [52 x %struct.omap_clkctrl_reg_data] [%struct.omap_clkctrl_reg_data { i16 0, ptr null, i16 32, ptr @.str.25, ptr @.str.26 }, %struct.omap_clkctrl_reg_data { i16 4, ptr null, i16 36, ptr @.str.27, ptr @.str.28 }, %struct.omap_clkctrl_reg_data { i16 8, ptr null, i16 32, ptr @.str.29, ptr @.str.30 }, %struct.omap_clkctrl_reg_data { i16 16, ptr null, i16 32, ptr @.str.31, ptr @.str.32 }, %struct.omap_clkctrl_reg_data { i16 20, ptr null, i16 32, ptr @.str.33, ptr @.str.32 }, %struct.omap_clkctrl_reg_data { i16 24, ptr null, i16 32, ptr @.str.31, ptr @.str.32 }, %struct.omap_clkctrl_reg_data { i16 28, ptr null, i16 32, ptr @.str.34, ptr @.str.30 }, %struct.omap_clkctrl_reg_data { i16 32, ptr null, i16 32, ptr @.str.35, ptr @.str.30 }, %struct.omap_clkctrl_reg_data { i16 36, ptr null, i16 32, ptr @.str.36, ptr null }, %struct.omap_clkctrl_reg_data { i16 40, ptr null, i16 32, ptr @.str.37, ptr null }, %struct.omap_clkctrl_reg_data { i16 44, ptr null, i16 32, ptr @.str.38, ptr null }, %struct.omap_clkctrl_reg_data { i16 48, ptr null, i16 32, ptr @.str.36, ptr null }, %struct.omap_clkctrl_reg_data { i16 52, ptr null, i16 32, ptr @.str.36, ptr null }, %struct.omap_clkctrl_reg_data { i16 56, ptr null, i16 32, ptr @.str.36, ptr null }, %struct.omap_clkctrl_reg_data { i16 60, ptr null, i16 32, ptr @.str.36, ptr null }, %struct.omap_clkctrl_reg_data { i16 76, ptr null, i16 32, ptr @.str.38, ptr null }, %struct.omap_clkctrl_reg_data { i16 84, ptr null, i16 32, ptr @.str.39, ptr @.str.30 }, %struct.omap_clkctrl_reg_data { i16 88, ptr null, i16 32, ptr @.str.36, ptr null }, %struct.omap_clkctrl_reg_data { i16 92, ptr null, i16 32, ptr @.str.36, ptr null }, %struct.omap_clkctrl_reg_data { i16 96, ptr null, i16 32, ptr @.str.36, ptr null }, %struct.omap_clkctrl_reg_data { i16 100, ptr null, i16 32, ptr @.str.36, ptr null }, %struct.omap_clkctrl_reg_data { i16 104, ptr null, i16 32, ptr @.str.40, ptr null }, %struct.omap_clkctrl_reg_data { i16 108, ptr null, i16 32, ptr @.str.41, ptr null }, %struct.omap_clkctrl_reg_data { i16 112, ptr null, i16 32, ptr @.str.42, ptr null }, %struct.omap_clkctrl_reg_data { i16 116, ptr null, i16 32, ptr @.str.43, ptr null }, %struct.omap_clkctrl_reg_data { i16 124, ptr null, i16 32, ptr @.str.44, ptr null }, %struct.omap_clkctrl_reg_data { i16 128, ptr null, i16 32, ptr @.str.45, ptr @.str.32 }, %struct.omap_clkctrl_reg_data { i16 140, ptr null, i16 32, ptr @.str.31, ptr @.str.32 }, %struct.omap_clkctrl_reg_data { i16 152, ptr @am3_gpio2_bit_data, i16 32, ptr @.str.38, ptr null }, %struct.omap_clkctrl_reg_data { i16 156, ptr @am3_gpio3_bit_data, i16 32, ptr @.str.38, ptr null }, %struct.omap_clkctrl_reg_data { i16 160, ptr @am3_gpio4_bit_data, i16 32, ptr @.str.38, ptr null }, %struct.omap_clkctrl_reg_data { i16 168, ptr null, i16 32, ptr @.str.31, ptr @.str.32 }, %struct.omap_clkctrl_reg_data { i16 172, ptr null, i16 32, ptr @.str.46, ptr null }, %struct.omap_clkctrl_reg_data { i16 176, ptr null, i16 32, ptr @.str.47, ptr null }, %struct.omap_clkctrl_reg_data { i16 184, ptr null, i16 32, ptr @.str.38, ptr null }, %struct.omap_clkctrl_reg_data { i16 192, ptr null, i16 32, ptr @.str.38, ptr null }, %struct.omap_clkctrl_reg_data { i16 196, ptr null, i16 32, ptr @.str.38, ptr null }, %struct.omap_clkctrl_reg_data { i16 200, ptr null, i16 32, ptr @.str.31, ptr @.str.32 }, %struct.omap_clkctrl_reg_data { i16 204, ptr null, i16 32, ptr @.str.31, ptr @.str.32 }, %struct.omap_clkctrl_reg_data { i16 212, ptr null, i16 32, ptr @.str.48, ptr @.str.49 }, %struct.omap_clkctrl_reg_data { i16 216, ptr null, i16 32, ptr @.str.50, ptr null }, %struct.omap_clkctrl_reg_data { i16 220, ptr null, i16 32, ptr @.str.51, ptr null }, %struct.omap_clkctrl_reg_data { i16 224, ptr null, i16 32, ptr @.str.37, ptr null }, %struct.omap_clkctrl_reg_data { i16 228, ptr null, i16 32, ptr @.str.37, ptr @.str.30 }, %struct.omap_clkctrl_reg_data { i16 232, ptr null, i16 32, ptr @.str.31, ptr @.str.32 }, %struct.omap_clkctrl_reg_data { i16 236, ptr null, i16 32, ptr @.str.31, ptr @.str.32 }, %struct.omap_clkctrl_reg_data { i16 248, ptr null, i16 32, ptr @.str.38, ptr null }, %struct.omap_clkctrl_reg_data { i16 252, ptr null, i16 32, ptr @.str.38, ptr null }, %struct.omap_clkctrl_reg_data { i16 268, ptr null, i16 32, ptr @.str.52, ptr @.str.53 }, %struct.omap_clkctrl_reg_data { i16 284, ptr null, i16 32, ptr @.str.38, ptr null }, %struct.omap_clkctrl_reg_data { i16 312, ptr null, i16 32, ptr @.str.54, ptr @.str.55 }, %struct.omap_clkctrl_reg_data zeroinitializer], section ".init.rodata", align 4
@am3_l4_wkup_clkctrl_regs = internal constant [13 x %struct.omap_clkctrl_reg_data] [%struct.omap_clkctrl_reg_data { i16 0, ptr null, i16 32, ptr @.str.57, ptr null }, %struct.omap_clkctrl_reg_data { i16 4, ptr @am3_gpio1_bit_data, i16 32, ptr @.str.57, ptr null }, %struct.omap_clkctrl_reg_data { i16 8, ptr null, i16 32, ptr @.str.57, ptr null }, %struct.omap_clkctrl_reg_data { i16 16, ptr @am3_debugss_bit_data, i16 32, ptr @.str.58, ptr @.str.59 }, %struct.omap_clkctrl_reg_data { i16 172, ptr null, i16 128, ptr @.str.57, ptr @.str.60 }, %struct.omap_clkctrl_reg_data { i16 176, ptr null, i16 32, ptr @.str.61, ptr null }, %struct.omap_clkctrl_reg_data { i16 180, ptr null, i16 32, ptr @.str.61, ptr null }, %struct.omap_clkctrl_reg_data { i16 184, ptr null, i16 32, ptr @.str.62, ptr null }, %struct.omap_clkctrl_reg_data { i16 188, ptr null, i16 32, ptr @.str.63, ptr null }, %struct.omap_clkctrl_reg_data { i16 192, ptr null, i16 32, ptr @.str.64, ptr null }, %struct.omap_clkctrl_reg_data { i16 196, ptr null, i16 32, ptr @.str.65, ptr null }, %struct.omap_clkctrl_reg_data { i16 208, ptr null, i16 32, ptr @.str.66, ptr null }, %struct.omap_clkctrl_reg_data zeroinitializer], section ".init.rodata", align 4
@am3_mpu_clkctrl_regs = internal constant [2 x %struct.omap_clkctrl_reg_data] [%struct.omap_clkctrl_reg_data { i16 0, ptr null, i16 32, ptr @.str.73, ptr null }, %struct.omap_clkctrl_reg_data zeroinitializer], section ".init.rodata", align 4
@am3_l4_rtc_clkctrl_regs = internal constant [2 x %struct.omap_clkctrl_reg_data] [%struct.omap_clkctrl_reg_data { i16 0, ptr null, i16 32, ptr @.str.74, ptr null }, %struct.omap_clkctrl_reg_data zeroinitializer], section ".init.rodata", align 4
@am3_gfx_l3_clkctrl_regs = internal constant [2 x %struct.omap_clkctrl_reg_data] [%struct.omap_clkctrl_reg_data { i16 0, ptr null, i16 32, ptr @.str.75, ptr null }, %struct.omap_clkctrl_reg_data zeroinitializer], section ".init.rodata", align 4
@am3_l4_cefuse_clkctrl_regs = internal constant [2 x %struct.omap_clkctrl_reg_data] [%struct.omap_clkctrl_reg_data { i16 0, ptr null, i16 32, ptr @.str.3, ptr null }, %struct.omap_clkctrl_reg_data zeroinitializer], section ".init.rodata", align 4
@am3_clkctrl_compat_data = dso_local local_unnamed_addr constant [7 x %struct.omap_clkctrl_data] [%struct.omap_clkctrl_data { i32 1155530772, ptr @am3_l4_per_clkctrl_regs }, %struct.omap_clkctrl_data { i32 1155531780, ptr @am3_l4_wkup_clkctrl_regs }, %struct.omap_clkctrl_data { i32 1155532292, ptr @am3_mpu_clkctrl_regs }, %struct.omap_clkctrl_data { i32 1155532800, ptr @am3_l4_rtc_clkctrl_regs }, %struct.omap_clkctrl_data { i32 1155533060, ptr @am3_gfx_l3_clkctrl_regs }, %struct.omap_clkctrl_data { i32 1155533344, ptr @am3_l4_cefuse_clkctrl_regs }, %struct.omap_clkctrl_data zeroinitializer], section ".init.rodata", align 4
@.str = private unnamed_addr constant [13 x i8] c"timer_32k_ck\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"l4_per_cm:0138:0\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"timer_sys_ck\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"sys_clkin_ck\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"clkdiv32k_ick\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"dbg_clka_ck\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"l4_wkup_cm:0010:30\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"dbg_sysclk_ck\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"l4_wkup_cm:0010:19\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"gpio0_dbclk\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"l4_wkup_cm:0004:18\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"gpio1_dbclk\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"l4_per_cm:0098:18\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"gpio2_dbclk\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"l4_per_cm:009c:18\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"gpio3_dbclk\00", align 1
@.str.16 = private unnamed_addr constant [18 x i8] c"l4_per_cm:00a0:18\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"stm_clk_div_ck\00", align 1
@.str.18 = private unnamed_addr constant [19 x i8] c"l4_wkup_cm:0010:27\00", align 1
@.str.19 = private unnamed_addr constant [21 x i8] c"stm_pmd_clock_mux_ck\00", align 1
@.str.20 = private unnamed_addr constant [19 x i8] c"l4_wkup_cm:0010:22\00", align 1
@.str.21 = private unnamed_addr constant [17 x i8] c"trace_clk_div_ck\00", align 1
@.str.22 = private unnamed_addr constant [19 x i8] c"l4_wkup_cm:0010:24\00", align 1
@.str.23 = private unnamed_addr constant [21 x i8] c"trace_pmd_clk_mux_ck\00", align 1
@.str.24 = private unnamed_addr constant [19 x i8] c"l4_wkup_cm:0010:20\00", align 1
@am33xx_compat_clks = dso_local local_unnamed_addr global [14 x %struct.ti_dt_clk] [%struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str, ptr null, ptr null }, ptr @.str.1 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.2, ptr null, ptr null }, ptr @.str.3 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.4, ptr null, ptr null }, ptr @.str.1 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.5, ptr null, ptr null }, ptr @.str.6 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.7, ptr null, ptr null }, ptr @.str.8 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.9, ptr null, ptr null }, ptr @.str.10 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.11, ptr null, ptr null }, ptr @.str.12 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.13, ptr null, ptr null }, ptr @.str.14 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.15, ptr null, ptr null }, ptr @.str.16 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.17, ptr null, ptr null }, ptr @.str.18 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.19, ptr null, ptr null }, ptr @.str.20 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.21, ptr null, ptr null }, ptr @.str.22 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.23, ptr null, ptr null }, ptr @.str.24 }, %struct.ti_dt_clk zeroinitializer], align 4
@.str.25 = private unnamed_addr constant [17 x i8] c"cpsw_125mhz_gclk\00", align 1
@.str.26 = private unnamed_addr constant [18 x i8] c"cpsw_125mhz_clkdm\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"lcd_gclk\00", align 1
@.str.28 = private unnamed_addr constant [11 x i8] c"lcdc_clkdm\00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c"usbotg_fck\00", align 1
@.str.30 = private unnamed_addr constant [10 x i8] c"l3s_clkdm\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c"l3_gclk\00", align 1
@.str.32 = private unnamed_addr constant [9 x i8] c"l3_clkdm\00", align 1
@.str.33 = private unnamed_addr constant [20 x i8] c"dpll_ddr_m2_div2_ck\00", align 1
@.str.34 = private unnamed_addr constant [9 x i8] c"l3s_gclk\00", align 1
@.str.35 = private unnamed_addr constant [11 x i8] c"mcasp0_fck\00", align 1
@.str.36 = private unnamed_addr constant [20 x i8] c"dpll_per_m2_div4_ck\00", align 1
@.str.37 = private unnamed_addr constant [8 x i8] c"mmc_clk\00", align 1
@.str.38 = private unnamed_addr constant [10 x i8] c"l4ls_gclk\00", align 1
@.str.39 = private unnamed_addr constant [11 x i8] c"mcasp1_fck\00", align 1
@.str.40 = private unnamed_addr constant [11 x i8] c"timer7_fck\00", align 1
@.str.41 = private unnamed_addr constant [11 x i8] c"timer2_fck\00", align 1
@.str.42 = private unnamed_addr constant [11 x i8] c"timer3_fck\00", align 1
@.str.43 = private unnamed_addr constant [11 x i8] c"timer4_fck\00", align 1
@.str.44 = private unnamed_addr constant [8 x i8] c"rng_fck\00", align 1
@.str.45 = private unnamed_addr constant [9 x i8] c"aes0_fck\00", align 1
@am3_gpio2_bit_data = internal constant [2 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 18, i8 5, ptr @am3_gpio1_dbclk_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@am3_gpio3_bit_data = internal constant [2 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 18, i8 5, ptr @am3_gpio1_dbclk_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@am3_gpio4_bit_data = internal constant [2 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 18, i8 5, ptr @am3_gpio1_dbclk_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@.str.46 = private unnamed_addr constant [10 x i8] c"dcan0_fck\00", align 1
@.str.47 = private unnamed_addr constant [10 x i8] c"dcan1_fck\00", align 1
@.str.48 = private unnamed_addr constant [15 x i8] c"pruss_ocp_gclk\00", align 1
@.str.49 = private unnamed_addr constant [16 x i8] c"pruss_ocp_clkdm\00", align 1
@.str.50 = private unnamed_addr constant [11 x i8] c"timer5_fck\00", align 1
@.str.51 = private unnamed_addr constant [11 x i8] c"timer6_fck\00", align 1
@.str.52 = private unnamed_addr constant [10 x i8] c"l4hs_gclk\00", align 1
@.str.53 = private unnamed_addr constant [11 x i8] c"l4hs_clkdm\00", align 1
@.str.54 = private unnamed_addr constant [13 x i8] c"clkdiv32k_ck\00", align 1
@.str.55 = private unnamed_addr constant [16 x i8] c"clk_24mhz_clkdm\00", align 1
@am3_gpio1_dbclk_parents = internal constant [2 x ptr] [ptr @.str.56, ptr null], section ".init.rodata", align 4
@.str.56 = private unnamed_addr constant [21 x i8] c"l4_per_cm:clk:0138:0\00", align 1
@.str.57 = private unnamed_addr constant [21 x i8] c"dpll_core_m4_div2_ck\00", align 1
@am3_gpio1_bit_data = internal constant [2 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 18, i8 5, ptr @am3_gpio0_dbclk_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@am3_debugss_bit_data = internal constant [7 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 19, i8 5, ptr @am3_dbg_sysclk_ck_parents, ptr null }, %struct.omap_clkctrl_bit_data { i8 20, i8 1, ptr @am3_trace_pmd_clk_mux_ck_parents, ptr null }, %struct.omap_clkctrl_bit_data { i8 22, i8 1, ptr @am3_trace_pmd_clk_mux_ck_parents, ptr null }, %struct.omap_clkctrl_bit_data { i8 24, i8 2, ptr @am3_trace_clk_div_ck_parents, ptr @am3_trace_clk_div_ck_data }, %struct.omap_clkctrl_bit_data { i8 27, i8 2, ptr @am3_stm_clk_div_ck_parents, ptr @am3_stm_clk_div_ck_data }, %struct.omap_clkctrl_bit_data { i8 30, i8 5, ptr @am3_dbg_clka_ck_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@.str.58 = private unnamed_addr constant [23 x i8] c"l4_wkup_cm:clk:0010:24\00", align 1
@.str.59 = private unnamed_addr constant [13 x i8] c"l3_aon_clkdm\00", align 1
@.str.60 = private unnamed_addr constant [18 x i8] c"l4_wkup_aon_clkdm\00", align 1
@.str.61 = private unnamed_addr constant [27 x i8] c"dpll_per_m2_div4_wkupdm_ck\00", align 1
@.str.62 = private unnamed_addr constant [12 x i8] c"adc_tsc_fck\00", align 1
@.str.63 = private unnamed_addr constant [17 x i8] c"smartreflex0_fck\00", align 1
@.str.64 = private unnamed_addr constant [11 x i8] c"timer1_fck\00", align 1
@.str.65 = private unnamed_addr constant [17 x i8] c"smartreflex1_fck\00", align 1
@.str.66 = private unnamed_addr constant [9 x i8] c"wdt1_fck\00", align 1
@am3_gpio0_dbclk_parents = internal constant [2 x ptr] [ptr @.str.67, ptr null], section ".init.rodata", align 4
@.str.67 = private unnamed_addr constant [19 x i8] c"gpio0_dbclk_mux_ck\00", align 1
@am3_dbg_sysclk_ck_parents = internal constant [2 x ptr] [ptr @.str.3, ptr null], section ".init.rodata", align 4
@am3_trace_pmd_clk_mux_ck_parents = internal constant [3 x ptr] [ptr @.str.68, ptr @.str.69, ptr null], section ".init.rodata", align 4
@am3_trace_clk_div_ck_parents = internal constant [2 x ptr] [ptr @.str.70, ptr null], section ".init.rodata", align 4
@am3_trace_clk_div_ck_data = internal constant %struct.omap_clkctrl_div_data { ptr null, i32 64, i32 2 }, section ".init.rodata", align 4
@am3_stm_clk_div_ck_parents = internal constant [2 x ptr] [ptr @.str.71, ptr null], section ".init.rodata", align 4
@am3_stm_clk_div_ck_data = internal constant %struct.omap_clkctrl_div_data { ptr null, i32 64, i32 2 }, section ".init.rodata", align 4
@am3_dbg_clka_ck_parents = internal constant [2 x ptr] [ptr @.str.72, ptr null], section ".init.rodata", align 4
@.str.68 = private unnamed_addr constant [23 x i8] c"l4_wkup_cm:clk:0010:19\00", align 1
@.str.69 = private unnamed_addr constant [23 x i8] c"l4_wkup_cm:clk:0010:30\00", align 1
@.str.70 = private unnamed_addr constant [23 x i8] c"l4_wkup_cm:clk:0010:20\00", align 1
@.str.71 = private unnamed_addr constant [23 x i8] c"l4_wkup_cm:clk:0010:22\00", align 1
@.str.72 = private unnamed_addr constant [16 x i8] c"dpll_core_m4_ck\00", align 1
@.str.73 = private unnamed_addr constant [15 x i8] c"dpll_mpu_m2_ck\00", align 1
@.str.74 = private unnamed_addr constant [13 x i8] c"clk_32768_ck\00", align 1
@.str.75 = private unnamed_addr constant [15 x i8] c"gfx_fck_div_ck\00", align 1

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