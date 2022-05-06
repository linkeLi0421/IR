; ModuleID = '/llk/IR/drivers/clk/ti/clk-33xx.c_pt.bc'
source_filename = "../drivers/clk/ti/clk-33xx.c"
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

@am3_l4ls_clkctrl_regs = internal constant [32 x %struct.omap_clkctrl_reg_data] [%struct.omap_clkctrl_reg_data { i16 0, ptr null, i16 32, ptr @.str.5, ptr null }, %struct.omap_clkctrl_reg_data { i16 4, ptr null, i16 32, ptr @.str.6, ptr null }, %struct.omap_clkctrl_reg_data { i16 8, ptr null, i16 32, ptr @.str.7, ptr null }, %struct.omap_clkctrl_reg_data { i16 12, ptr null, i16 32, ptr @.str.5, ptr null }, %struct.omap_clkctrl_reg_data { i16 16, ptr null, i16 32, ptr @.str.5, ptr null }, %struct.omap_clkctrl_reg_data { i16 20, ptr null, i16 32, ptr @.str.5, ptr null }, %struct.omap_clkctrl_reg_data { i16 24, ptr null, i16 32, ptr @.str.5, ptr null }, %struct.omap_clkctrl_reg_data { i16 40, ptr null, i16 32, ptr @.str.7, ptr null }, %struct.omap_clkctrl_reg_data { i16 52, ptr null, i16 32, ptr @.str.5, ptr null }, %struct.omap_clkctrl_reg_data { i16 56, ptr null, i16 32, ptr @.str.5, ptr null }, %struct.omap_clkctrl_reg_data { i16 60, ptr null, i16 32, ptr @.str.5, ptr null }, %struct.omap_clkctrl_reg_data { i16 64, ptr null, i16 32, ptr @.str.5, ptr null }, %struct.omap_clkctrl_reg_data { i16 68, ptr null, i16 32, ptr @.str.8, ptr null }, %struct.omap_clkctrl_reg_data { i16 72, ptr null, i16 32, ptr @.str.9, ptr null }, %struct.omap_clkctrl_reg_data { i16 76, ptr null, i16 32, ptr @.str.1, ptr null }, %struct.omap_clkctrl_reg_data { i16 80, ptr null, i16 32, ptr @.str.10, ptr null }, %struct.omap_clkctrl_reg_data { i16 88, ptr null, i16 32, ptr @.str.11, ptr null }, %struct.omap_clkctrl_reg_data { i16 116, ptr @am3_gpio2_bit_data, i16 32, ptr @.str.7, ptr null }, %struct.omap_clkctrl_reg_data { i16 120, ptr @am3_gpio3_bit_data, i16 32, ptr @.str.7, ptr null }, %struct.omap_clkctrl_reg_data { i16 124, ptr @am3_gpio4_bit_data, i16 32, ptr @.str.7, ptr null }, %struct.omap_clkctrl_reg_data { i16 136, ptr null, i16 32, ptr @.str.12, ptr null }, %struct.omap_clkctrl_reg_data { i16 140, ptr null, i16 32, ptr @.str.13, ptr null }, %struct.omap_clkctrl_reg_data { i16 148, ptr null, i16 32, ptr @.str.7, ptr null }, %struct.omap_clkctrl_reg_data { i16 156, ptr null, i16 32, ptr @.str.7, ptr null }, %struct.omap_clkctrl_reg_data { i16 160, ptr null, i16 32, ptr @.str.7, ptr null }, %struct.omap_clkctrl_reg_data { i16 180, ptr null, i16 32, ptr @.str.14, ptr null }, %struct.omap_clkctrl_reg_data { i16 184, ptr null, i16 32, ptr @.str.2, ptr null }, %struct.omap_clkctrl_reg_data { i16 188, ptr null, i16 32, ptr @.str.6, ptr null }, %struct.omap_clkctrl_reg_data { i16 212, ptr null, i16 32, ptr @.str.7, ptr null }, %struct.omap_clkctrl_reg_data { i16 216, ptr null, i16 32, ptr @.str.7, ptr null }, %struct.omap_clkctrl_reg_data { i16 248, ptr null, i16 32, ptr @.str.7, ptr null }, %struct.omap_clkctrl_reg_data zeroinitializer], section ".init.rodata", align 4
@am3_l3s_clkctrl_regs = internal constant [6 x %struct.omap_clkctrl_reg_data] [%struct.omap_clkctrl_reg_data { i16 0, ptr null, i16 32, ptr @.str.16, ptr null }, %struct.omap_clkctrl_reg_data { i16 20, ptr null, i16 32, ptr @.str.17, ptr null }, %struct.omap_clkctrl_reg_data { i16 24, ptr null, i16 32, ptr @.str.18, ptr null }, %struct.omap_clkctrl_reg_data { i16 76, ptr null, i16 32, ptr @.str.19, ptr null }, %struct.omap_clkctrl_reg_data { i16 220, ptr null, i16 32, ptr @.str.6, ptr null }, %struct.omap_clkctrl_reg_data zeroinitializer], section ".init.rodata", align 4
@am3_l3_clkctrl_regs = internal constant [11 x %struct.omap_clkctrl_reg_data] [%struct.omap_clkctrl_reg_data { i16 0, ptr null, i16 32, ptr @.str.20, ptr null }, %struct.omap_clkctrl_reg_data { i16 4, ptr null, i16 32, ptr @.str.21, ptr null }, %struct.omap_clkctrl_reg_data { i16 8, ptr null, i16 32, ptr @.str.20, ptr null }, %struct.omap_clkctrl_reg_data { i16 112, ptr null, i16 32, ptr @.str.22, ptr null }, %struct.omap_clkctrl_reg_data { i16 124, ptr null, i16 32, ptr @.str.20, ptr null }, %struct.omap_clkctrl_reg_data { i16 152, ptr null, i16 32, ptr @.str.20, ptr null }, %struct.omap_clkctrl_reg_data { i16 184, ptr null, i16 32, ptr @.str.20, ptr null }, %struct.omap_clkctrl_reg_data { i16 188, ptr null, i16 32, ptr @.str.20, ptr null }, %struct.omap_clkctrl_reg_data { i16 216, ptr null, i16 32, ptr @.str.20, ptr null }, %struct.omap_clkctrl_reg_data { i16 220, ptr null, i16 32, ptr @.str.20, ptr null }, %struct.omap_clkctrl_reg_data zeroinitializer], section ".init.rodata", align 4
@am3_l4hs_clkctrl_regs = internal constant [2 x %struct.omap_clkctrl_reg_data] [%struct.omap_clkctrl_reg_data { i16 0, ptr null, i16 32, ptr @.str.23, ptr null }, %struct.omap_clkctrl_reg_data zeroinitializer], section ".init.rodata", align 4
@am3_pruss_ocp_clkctrl_regs = internal constant [2 x %struct.omap_clkctrl_reg_data] [%struct.omap_clkctrl_reg_data { i16 0, ptr null, i16 160, ptr @.str.24, ptr null }, %struct.omap_clkctrl_reg_data zeroinitializer], section ".init.rodata", align 4
@am3_cpsw_125mhz_clkctrl_regs = internal constant [2 x %struct.omap_clkctrl_reg_data] [%struct.omap_clkctrl_reg_data { i16 20, ptr null, i16 32, ptr @.str.25, ptr null }, %struct.omap_clkctrl_reg_data zeroinitializer], section ".init.rodata", align 4
@am3_lcdc_clkctrl_regs = internal constant [2 x %struct.omap_clkctrl_reg_data] [%struct.omap_clkctrl_reg_data { i16 0, ptr null, i16 36, ptr @.str.26, ptr null }, %struct.omap_clkctrl_reg_data zeroinitializer], section ".init.rodata", align 4
@am3_clk_24mhz_clkctrl_regs = internal constant [2 x %struct.omap_clkctrl_reg_data] [%struct.omap_clkctrl_reg_data { i16 0, ptr null, i16 32, ptr @.str.27, ptr null }, %struct.omap_clkctrl_reg_data zeroinitializer], section ".init.rodata", align 4
@am3_l4_wkup_clkctrl_regs = internal constant [11 x %struct.omap_clkctrl_reg_data] [%struct.omap_clkctrl_reg_data { i16 4, ptr null, i16 32, ptr @.str.28, ptr null }, %struct.omap_clkctrl_reg_data { i16 8, ptr @am3_gpio1_bit_data, i16 32, ptr @.str.28, ptr null }, %struct.omap_clkctrl_reg_data { i16 12, ptr null, i16 32, ptr @.str.28, ptr null }, %struct.omap_clkctrl_reg_data { i16 180, ptr null, i16 32, ptr @.str.29, ptr null }, %struct.omap_clkctrl_reg_data { i16 184, ptr null, i16 32, ptr @.str.29, ptr null }, %struct.omap_clkctrl_reg_data { i16 188, ptr null, i16 32, ptr @.str.30, ptr null }, %struct.omap_clkctrl_reg_data { i16 192, ptr null, i16 32, ptr @.str.31, ptr null }, %struct.omap_clkctrl_reg_data { i16 196, ptr null, i16 32, ptr @.str.32, ptr null }, %struct.omap_clkctrl_reg_data { i16 200, ptr null, i16 32, ptr @.str.33, ptr null }, %struct.omap_clkctrl_reg_data { i16 212, ptr null, i16 32, ptr @.str.3, ptr null }, %struct.omap_clkctrl_reg_data zeroinitializer], section ".init.rodata", align 4
@am3_l3_aon_clkctrl_regs = internal constant [2 x %struct.omap_clkctrl_reg_data] [%struct.omap_clkctrl_reg_data { i16 0, ptr @am3_debugss_bit_data, i16 32, ptr @.str.35, ptr null }, %struct.omap_clkctrl_reg_data zeroinitializer], section ".init.rodata", align 4
@am3_l4_wkup_aon_clkctrl_regs = internal constant [2 x %struct.omap_clkctrl_reg_data] [%struct.omap_clkctrl_reg_data { i16 0, ptr null, i16 128, ptr @.str.28, ptr null }, %struct.omap_clkctrl_reg_data zeroinitializer], section ".init.rodata", align 4
@am3_mpu_clkctrl_regs = internal constant [2 x %struct.omap_clkctrl_reg_data] [%struct.omap_clkctrl_reg_data { i16 4, ptr null, i16 32, ptr @.str.41, ptr null }, %struct.omap_clkctrl_reg_data zeroinitializer], section ".init.rodata", align 4
@am3_l4_rtc_clkctrl_regs = internal constant [2 x %struct.omap_clkctrl_reg_data] [%struct.omap_clkctrl_reg_data { i16 0, ptr null, i16 32, ptr @.str.15, ptr null }, %struct.omap_clkctrl_reg_data zeroinitializer], section ".init.rodata", align 4
@am3_gfx_l3_clkctrl_regs = internal constant [2 x %struct.omap_clkctrl_reg_data] [%struct.omap_clkctrl_reg_data { i16 4, ptr null, i16 160, ptr @.str.42, ptr null }, %struct.omap_clkctrl_reg_data zeroinitializer], section ".init.rodata", align 4
@am3_l4_cefuse_clkctrl_regs = internal constant [2 x %struct.omap_clkctrl_reg_data] [%struct.omap_clkctrl_reg_data { i16 32, ptr null, i16 32, ptr @.str, ptr null }, %struct.omap_clkctrl_reg_data zeroinitializer], section ".init.rodata", align 4
@am3_clkctrl_data = dso_local local_unnamed_addr constant [16 x %struct.omap_clkctrl_data] [%struct.omap_clkctrl_data { i32 1155530808, ptr @am3_l4ls_clkctrl_regs }, %struct.omap_clkctrl_data { i32 1155530780, ptr @am3_l3s_clkctrl_regs }, %struct.omap_clkctrl_data { i32 1155530788, ptr @am3_l3_clkctrl_regs }, %struct.omap_clkctrl_data { i32 1155531040, ptr @am3_l4hs_clkctrl_regs }, %struct.omap_clkctrl_data { i32 1155530984, ptr @am3_pruss_ocp_clkctrl_regs }, %struct.omap_clkctrl_data { i32 1155530752, ptr @am3_cpsw_125mhz_clkctrl_regs }, %struct.omap_clkctrl_data { i32 1155530776, ptr @am3_lcdc_clkctrl_regs }, %struct.omap_clkctrl_data { i32 1155531084, ptr @am3_clk_24mhz_clkctrl_regs }, %struct.omap_clkctrl_data { i32 1155531776, ptr @am3_l4_wkup_clkctrl_regs }, %struct.omap_clkctrl_data { i32 1155531796, ptr @am3_l3_aon_clkctrl_regs }, %struct.omap_clkctrl_data { i32 1155531952, ptr @am3_l4_wkup_aon_clkctrl_regs }, %struct.omap_clkctrl_data { i32 1155532288, ptr @am3_mpu_clkctrl_regs }, %struct.omap_clkctrl_data { i32 1155532800, ptr @am3_l4_rtc_clkctrl_regs }, %struct.omap_clkctrl_data { i32 1155533056, ptr @am3_gfx_l3_clkctrl_regs }, %struct.omap_clkctrl_data { i32 1155533312, ptr @am3_l4_cefuse_clkctrl_regs }, %struct.omap_clkctrl_data zeroinitializer], section ".init.rodata", align 4
@am33xx_compat_clks = external dso_local global [0 x %struct.ti_dt_clk], align 4
@am33xx_clks = internal global [14 x %struct.ti_dt_clk] [%struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.43, ptr null, ptr null }, ptr @.str.15 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.44, ptr null, ptr null }, ptr @.str }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.4, ptr null, ptr null }, ptr @.str.15 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.45, ptr null, ptr null }, ptr @.str.37 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.46, ptr null, ptr null }, ptr @.str.36 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.47, ptr null, ptr null }, ptr @.str.48 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.49, ptr null, ptr null }, ptr @.str.50 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.51, ptr null, ptr null }, ptr @.str.52 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.53, ptr null, ptr null }, ptr @.str.54 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.55, ptr null, ptr null }, ptr @.str.56 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.57, ptr null, ptr null }, ptr @.str.39 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.58, ptr null, ptr null }, ptr @.str.35 }, %struct.ti_dt_clk { %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.59, ptr null, ptr null }, ptr @.str.38 }, %struct.ti_dt_clk zeroinitializer], align 4
@enable_init_clks = internal global [8 x ptr] [ptr @.str.60, ptr @.str.41, ptr @.str.20, ptr @.str.61, ptr @.str.23, ptr @.str.62, ptr @.str.7, ptr @.str.63], align 4
@.str = private unnamed_addr constant [13 x i8] c"sys_clkin_ck\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"timer3_fck\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"timer6_fck\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"wdt1_fck\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"clkdiv32k_ick\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"dpll_per_m2_div4_ck\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"mmc_clk\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"l4ls_gclk\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"timer7_fck\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"timer2_fck\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"timer4_fck\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"rng_fck\00", align 1
@am3_gpio2_bit_data = internal constant [2 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 18, i8 5, ptr @am3_gpio1_dbclk_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@am3_gpio3_bit_data = internal constant [2 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 18, i8 5, ptr @am3_gpio1_dbclk_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@am3_gpio4_bit_data = internal constant [2 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 18, i8 5, ptr @am3_gpio1_dbclk_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@.str.12 = private unnamed_addr constant [10 x i8] c"dcan0_fck\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"dcan1_fck\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"timer5_fck\00", align 1
@am3_gpio1_dbclk_parents = internal constant [2 x ptr] [ptr @.str.15, ptr null], section ".init.rodata", align 4
@.str.15 = private unnamed_addr constant [25 x i8] c"clk-24mhz-clkctrl:0000:0\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"usbotg_fck\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"l3s_gclk\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"mcasp0_fck\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"mcasp1_fck\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"l3_gclk\00", align 1
@.str.21 = private unnamed_addr constant [20 x i8] c"dpll_ddr_m2_div2_ck\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"aes0_fck\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"l4hs_gclk\00", align 1
@.str.24 = private unnamed_addr constant [15 x i8] c"pruss_ocp_gclk\00", align 1
@.str.25 = private unnamed_addr constant [17 x i8] c"cpsw_125mhz_gclk\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"lcd_gclk\00", align 1
@.str.27 = private unnamed_addr constant [13 x i8] c"clkdiv32k_ck\00", align 1
@.str.28 = private unnamed_addr constant [21 x i8] c"dpll_core_m4_div2_ck\00", align 1
@am3_gpio1_bit_data = internal constant [2 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 18, i8 5, ptr @am3_gpio0_dbclk_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@.str.29 = private unnamed_addr constant [27 x i8] c"dpll_per_m2_div4_wkupdm_ck\00", align 1
@.str.30 = private unnamed_addr constant [12 x i8] c"adc_tsc_fck\00", align 1
@.str.31 = private unnamed_addr constant [17 x i8] c"smartreflex0_fck\00", align 1
@.str.32 = private unnamed_addr constant [11 x i8] c"timer1_fck\00", align 1
@.str.33 = private unnamed_addr constant [17 x i8] c"smartreflex1_fck\00", align 1
@am3_gpio0_dbclk_parents = internal constant [2 x ptr] [ptr @.str.34, ptr null], section ".init.rodata", align 4
@.str.34 = private unnamed_addr constant [19 x i8] c"gpio0_dbclk_mux_ck\00", align 1
@am3_debugss_bit_data = internal constant [7 x %struct.omap_clkctrl_bit_data] [%struct.omap_clkctrl_bit_data { i8 19, i8 5, ptr @am3_dbg_sysclk_ck_parents, ptr null }, %struct.omap_clkctrl_bit_data { i8 20, i8 1, ptr @am3_trace_pmd_clk_mux_ck_parents, ptr null }, %struct.omap_clkctrl_bit_data { i8 22, i8 1, ptr @am3_trace_pmd_clk_mux_ck_parents, ptr null }, %struct.omap_clkctrl_bit_data { i8 24, i8 2, ptr @am3_trace_clk_div_ck_parents, ptr @am3_trace_clk_div_ck_data }, %struct.omap_clkctrl_bit_data { i8 27, i8 2, ptr @am3_stm_clk_div_ck_parents, ptr @am3_stm_clk_div_ck_data }, %struct.omap_clkctrl_bit_data { i8 30, i8 5, ptr @am3_dbg_clka_ck_parents, ptr null }, %struct.omap_clkctrl_bit_data zeroinitializer], section ".init.rodata", align 4
@.str.35 = private unnamed_addr constant [23 x i8] c"l3-aon-clkctrl:0000:24\00", align 1
@am3_dbg_sysclk_ck_parents = internal constant [2 x ptr] [ptr @.str, ptr null], section ".init.rodata", align 4
@am3_trace_pmd_clk_mux_ck_parents = internal constant [3 x ptr] [ptr @.str.36, ptr @.str.37, ptr null], section ".init.rodata", align 4
@am3_trace_clk_div_ck_parents = internal constant [2 x ptr] [ptr @.str.38, ptr null], section ".init.rodata", align 4
@am3_trace_clk_div_ck_data = internal constant %struct.omap_clkctrl_div_data { ptr null, i32 64, i32 2 }, section ".init.rodata", align 4
@am3_stm_clk_div_ck_parents = internal constant [2 x ptr] [ptr @.str.39, ptr null], section ".init.rodata", align 4
@am3_stm_clk_div_ck_data = internal constant %struct.omap_clkctrl_div_data { ptr null, i32 64, i32 2 }, section ".init.rodata", align 4
@am3_dbg_clka_ck_parents = internal constant [2 x ptr] [ptr @.str.40, ptr null], section ".init.rodata", align 4
@.str.36 = private unnamed_addr constant [23 x i8] c"l3-aon-clkctrl:0000:19\00", align 1
@.str.37 = private unnamed_addr constant [23 x i8] c"l3-aon-clkctrl:0000:30\00", align 1
@.str.38 = private unnamed_addr constant [23 x i8] c"l3-aon-clkctrl:0000:20\00", align 1
@.str.39 = private unnamed_addr constant [23 x i8] c"l3-aon-clkctrl:0000:22\00", align 1
@.str.40 = private unnamed_addr constant [16 x i8] c"dpll_core_m4_ck\00", align 1
@.str.41 = private unnamed_addr constant [15 x i8] c"dpll_mpu_m2_ck\00", align 1
@.str.42 = private unnamed_addr constant [15 x i8] c"gfx_fck_div_ck\00", align 1
@.str.43 = private unnamed_addr constant [13 x i8] c"timer_32k_ck\00", align 1
@.str.44 = private unnamed_addr constant [13 x i8] c"timer_sys_ck\00", align 1
@.str.45 = private unnamed_addr constant [12 x i8] c"dbg_clka_ck\00", align 1
@.str.46 = private unnamed_addr constant [14 x i8] c"dbg_sysclk_ck\00", align 1
@.str.47 = private unnamed_addr constant [12 x i8] c"gpio0_dbclk\00", align 1
@.str.48 = private unnamed_addr constant [24 x i8] c"l4-wkup-clkctrl:0008:18\00", align 1
@.str.49 = private unnamed_addr constant [12 x i8] c"gpio1_dbclk\00", align 1
@.str.50 = private unnamed_addr constant [21 x i8] c"l4ls-clkctrl:0074:18\00", align 1
@.str.51 = private unnamed_addr constant [12 x i8] c"gpio2_dbclk\00", align 1
@.str.52 = private unnamed_addr constant [21 x i8] c"l4ls-clkctrl:0078:18\00", align 1
@.str.53 = private unnamed_addr constant [12 x i8] c"gpio3_dbclk\00", align 1
@.str.54 = private unnamed_addr constant [21 x i8] c"l4ls-clkctrl:007c:18\00", align 1
@.str.55 = private unnamed_addr constant [15 x i8] c"stm_clk_div_ck\00", align 1
@.str.56 = private unnamed_addr constant [23 x i8] c"l3-aon-clkctrl:0000:27\00", align 1
@.str.57 = private unnamed_addr constant [21 x i8] c"stm_pmd_clock_mux_ck\00", align 1
@.str.58 = private unnamed_addr constant [17 x i8] c"trace_clk_div_ck\00", align 1
@.str.59 = private unnamed_addr constant [21 x i8] c"trace_pmd_clk_mux_ck\00", align 1
@.str.60 = private unnamed_addr constant [15 x i8] c"dpll_ddr_m2_ck\00", align 1
@.str.61 = private unnamed_addr constant [18 x i8] c"l3-clkctrl:00bc:0\00", align 1
@.str.62 = private unnamed_addr constant [10 x i8] c"l4fw_gclk\00", align 1
@.str.63 = private unnamed_addr constant [11 x i8] c"clkout2_ck\00", align 1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @am33xx_dt_clk_init() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call ptr @ti_clk_get_features() #2
  %2 = load i32, ptr %1, align 4
  %3 = and i32 %2, 16
  %4 = icmp eq i32 %3, 0
  %5 = select i1 %4, ptr @am33xx_clks, ptr @am33xx_compat_clks
  tail call void @ti_dt_clocks_register(ptr noundef nonnull %5) #2
  %6 = tail call i32 @omap2_clk_disable_autoidle_all() #2
  tail call void @ti_clk_add_aliases() #2
  tail call void @omap2_clk_enable_init_clocks(ptr noundef nonnull @enable_init_clks, i8 noundef zeroext 8) #2
  %7 = tail call ptr @clk_get_sys(ptr noundef null, ptr noundef nonnull @.str) #2
  %8 = tail call ptr @clk_get_sys(ptr noundef null, ptr noundef nonnull @.str.1) #2
  %9 = tail call i32 @clk_set_parent(ptr noundef %8, ptr noundef %7) #2
  %10 = tail call ptr @clk_get_sys(ptr noundef null, ptr noundef nonnull @.str.2) #2
  %11 = tail call i32 @clk_set_parent(ptr noundef %10, ptr noundef %7) #2
  %12 = tail call ptr @clk_get_sys(ptr noundef null, ptr noundef nonnull @.str.3) #2
  %13 = tail call ptr @clk_get_sys(ptr noundef null, ptr noundef nonnull @.str.4) #2
  %14 = tail call i32 @clk_set_parent(ptr noundef %12, ptr noundef %13) #2
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ti_clk_get_features() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ti_dt_clocks_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap2_clk_disable_autoidle_all() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ti_clk_add_aliases() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap2_clk_enable_init_clocks(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get_sys(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_parent(ptr noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }

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
