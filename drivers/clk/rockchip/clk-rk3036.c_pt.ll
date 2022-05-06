; ModuleID = '/llk/IR/drivers/clk/rockchip/clk-rk3036.c_pt.bc'
source_filename = "../drivers/clk/rockchip/clk-rk3036.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.rockchip_pll_clock = type { i32, ptr, ptr, i8, i32, i32, i32, i32, i32, i32, i8, ptr }
%struct.rockchip_clk_branch = type { i32, i32, ptr, ptr, i8, i32, i32, i8, i8, i8, i32, i8, i8, i8, ptr, i32, i8, i8, ptr }
%struct.rockchip_cpuclk_reg_data = type { [4 x i32], [4 x i8], [4 x i32], i32, i8, i8, i8, i32 }
%struct.rockchip_cpuclk_rate_table = type { i32, [5 x %struct.rockchip_cpuclk_clksel] }
%struct.rockchip_cpuclk_clksel = type { i32, i32 }
%struct.rockchip_pll_rate_table = type { i32, %union.anon.4 }
%union.anon.4 = type { %struct.anon.6 }
%struct.anon.6 = type { i32, i32, i32, i32, i32, i32 }

@__of_table_rk3036_cru = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3036-cru\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3036_clk_init }, section "__clk_of_table", align 4
@.str = private unnamed_addr constant [32 x i8] c"\013%s: could not map cru region\0A\00", align 1
@__func__.rk3036_clk_init = private unnamed_addr constant [16 x i8] c"rk3036_clk_init\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"\013%s: rockchip clk init failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"usb480m\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"xin24m\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"\014%s: could not register clock usb480m: %ld\0A\00", align 1
@rk3036_pll_clks = internal global [3 x %struct.rockchip_pll_clock] [%struct.rockchip_pll_clock { i32 1, ptr @.str.6, ptr @mux_pll_p, i8 2, i32 64, i32 0, i32 64, i32 0, i32 5, i32 0, i8 0, ptr @rk3036_pll_rates }, %struct.rockchip_pll_clock { i32 2, ptr @.str.7, ptr @mux_pll_p, i8 2, i32 64, i32 16, i32 64, i32 4, i32 4, i32 0, i8 0, ptr null }, %struct.rockchip_pll_clock { i32 3, ptr @.str.8, ptr @mux_pll_p, i8 2, i32 64, i32 48, i32 64, i32 12, i32 6, i32 0, i8 1, ptr @rk3036_pll_rates }], section ".init.data", align 4
@rk3036_clk_branches = internal global [108 x %struct.rockchip_clk_branch] [%struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.9, ptr @.compoundliteral, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 208, i8 6, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 8, ptr @.str.10, ptr @.compoundliteral.11, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 1, i8 2, i8 0, ptr null, i32 0, i8 0, i8 0, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.12, ptr @.compoundliteral.13, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 208, i8 2, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.14, ptr @.compoundliteral.15, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 208, i8 8, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 0, ptr @.str.16, ptr @mux_ddrphy_p, i8 2, i32 8, i32 172, i8 8, i8 1, i8 4, i32 0, i8 0, i8 2, i8 10, ptr null, i32 -1, i8 0, i8 0, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 8, ptr @.str.17, ptr @.compoundliteral.18, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 1, i8 2, i8 0, ptr null, i32 0, i8 0, i8 0, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 0, ptr @.str.19, ptr @.compoundliteral.20, i8 1, i32 8, i32 72, i8 0, i8 0, i8 0, i32 0, i8 0, i8 4, i8 40, ptr null, i32 208, i8 7, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 0, ptr @.str.21, ptr @.compoundliteral.22, i8 1, i32 8, i32 72, i8 0, i8 0, i8 0, i32 0, i8 4, i8 3, i8 40, ptr null, i32 208, i8 7, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.23, ptr @.compoundliteral.24, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 248, i8 8, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.25, ptr @.compoundliteral.26, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 208, i8 1, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 0, ptr @.str.27, ptr @mux_busclk_p, i8 3, i32 0, i32 68, i8 14, i8 2, i8 4, i32 0, i8 8, i8 5, i8 8, ptr null, i32 -1, i8 0, i8 0, ptr null }, %struct.rockchip_clk_branch { i32 209, i32 5, ptr @.str.28, ptr @.compoundliteral.29, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 208, i8 3, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 362, i32 0, ptr @.str.30, ptr @.compoundliteral.31, i8 1, i32 8, i32 72, i8 0, i8 0, i8 0, i32 0, i8 12, i8 3, i8 40, ptr null, i32 208, i8 5, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 477, i32 0, ptr @.str.32, ptr @.compoundliteral.33, i8 1, i32 8, i32 72, i8 0, i8 0, i8 0, i32 0, i8 8, i8 2, i8 40, ptr null, i32 208, i8 4, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 0, ptr @.str.34, ptr @mux_pll_src_3plls_p, i8 3, i32 0, i32 108, i8 14, i8 2, i8 4, i32 0, i8 0, i8 5, i8 8, ptr null, i32 216, i8 0, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 210, i32 5, ptr @.str.35, ptr @.compoundliteral.36, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 216, i8 1, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 3, ptr @.str.37, ptr @.compoundliteral.38, i8 1, i32 8, i32 108, i8 0, i8 0, i8 0, i32 0, i8 12, i8 2, i8 10, ptr null, i32 -1, i8 0, i8 0, ptr null }, %struct.rockchip_clk_branch { i32 363, i32 5, ptr @.str.39, ptr @.compoundliteral.40, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 216, i8 3, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 3, ptr @.str.41, ptr @.compoundliteral.42, i8 1, i32 8, i32 108, i8 0, i8 0, i8 0, i32 0, i8 8, i8 2, i8 10, ptr null, i32 -1, i8 0, i8 0, ptr null }, %struct.rockchip_clk_branch { i32 478, i32 5, ptr @.str.43, ptr @.compoundliteral.44, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 216, i8 2, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 85, i32 0, ptr @.str.45, ptr @mux_timer_p, i8 2, i32 8, i32 76, i8 4, i8 1, i8 4, i32 0, i8 0, i8 0, i8 0, ptr null, i32 212, i8 0, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 86, i32 0, ptr @.str.46, ptr @mux_timer_p, i8 2, i32 8, i32 76, i8 5, i8 1, i8 4, i32 0, i8 0, i8 0, i8 0, ptr null, i32 212, i8 1, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 87, i32 0, ptr @.str.47, ptr @mux_timer_p, i8 2, i32 8, i32 76, i8 6, i8 1, i8 4, i32 0, i8 0, i8 0, i8 0, ptr null, i32 216, i8 4, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 88, i32 0, ptr @.str.48, ptr @mux_timer_p, i8 2, i32 8, i32 76, i8 7, i8 1, i8 4, i32 0, i8 0, i8 0, i8 0, ptr null, i32 216, i8 5, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 1, ptr @.str.49, ptr @mux_pll_src_apll_dpll_gpll_usb480m_p, i8 4, i32 0, i32 120, i8 10, i8 2, i8 4, i32 0, i8 0, i8 0, i8 0, ptr null, i32 -1, i8 0, i8 0, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 0, ptr @.str.50, ptr @.compoundliteral.51, i8 1, i32 0, i32 120, i8 0, i8 0, i8 0, i32 0, i8 0, i8 7, i8 8, ptr null, i32 212, i8 8, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 0, ptr @.str.52, ptr @.compoundliteral.53, i8 1, i32 0, i32 124, i8 0, i8 0, i8 0, i32 0, i8 0, i8 7, i8 8, ptr null, i32 212, i8 10, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 0, ptr @.str.54, ptr @.compoundliteral.55, i8 1, i32 0, i32 128, i8 0, i8 0, i8 0, i32 0, i8 0, i8 7, i8 8, ptr null, i32 212, i8 12, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 4, ptr @.str.56, ptr @.compoundliteral.57, i8 1, i32 4, i32 136, i8 0, i8 0, i8 0, i32 0, i8 16, i8 16, i8 0, ptr null, i32 212, i8 9, i8 3, ptr @rk3036_uart0_fracmux }, %struct.rockchip_clk_branch { i32 0, i32 4, ptr @.str.58, ptr @.compoundliteral.59, i8 1, i32 4, i32 140, i8 0, i8 0, i8 0, i32 0, i8 16, i8 16, i8 0, ptr null, i32 212, i8 11, i8 3, ptr @rk3036_uart1_fracmux }, %struct.rockchip_clk_branch { i32 0, i32 4, ptr @.str.60, ptr @.compoundliteral.61, i8 1, i32 4, i32 144, i8 0, i8 0, i8 0, i32 0, i8 16, i8 16, i8 0, ptr null, i32 212, i8 13, i8 3, ptr @rk3036_uart2_fracmux }, %struct.rockchip_clk_branch { i32 208, i32 0, ptr @.str.62, ptr @mux_pll_src_3plls_p, i8 3, i32 0, i32 196, i8 14, i8 2, i8 4, i32 0, i8 8, i8 5, i8 8, ptr null, i32 220, i8 11, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 476, i32 8, ptr @.str.63, ptr @.compoundliteral.64, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 1, i8 4, i8 0, ptr null, i32 220, i8 12, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 0, ptr @.str.65, ptr @mux_pll_src_3plls_p, i8 3, i32 0, i32 148, i8 0, i8 2, i8 4, i32 0, i8 2, i8 5, i8 8, ptr null, i32 248, i8 6, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 0, ptr @.str.66, ptr @mux_pll_src_3plls_p, i8 3, i32 0, i32 192, i8 14, i8 2, i8 4, i32 0, i8 8, i8 5, i8 8, ptr null, i32 212, i8 4, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 0, ptr @.str.67, ptr @mux_pll_src_3plls_p, i8 3, i32 0, i32 188, i8 14, i8 2, i8 4, i32 0, i8 8, i8 5, i8 8, ptr null, i32 208, i8 11, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 100, i32 0, ptr @.str.68, ptr @mux_pll_src_3plls_p, i8 3, i32 0, i32 180, i8 0, i8 2, i8 4, i32 0, i8 8, i8 8, i8 8, ptr null, i32 220, i8 2, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 0, ptr @.str.69, ptr @mux_mmc_src_p, i8 4, i32 0, i32 116, i8 8, i8 2, i8 4, i32 0, i8 0, i8 0, i8 0, ptr null, i32 216, i8 11, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 68, i32 3, ptr @.str.70, ptr @.compoundliteral.71, i8 1, i32 0, i32 112, i8 0, i8 0, i8 0, i32 0, i8 0, i8 7, i8 8, ptr null, i32 -1, i8 0, i8 0, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 0, ptr @.str.72, ptr @mux_mmc_src_p, i8 4, i32 0, i32 116, i8 10, i8 2, i8 4, i32 0, i8 0, i8 0, i8 0, ptr null, i32 216, i8 13, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 69, i32 3, ptr @.str.73, ptr @.compoundliteral.74, i8 1, i32 0, i32 112, i8 0, i8 0, i8 0, i32 0, i8 8, i8 7, i8 8, ptr null, i32 -1, i8 0, i8 0, ptr null }, %struct.rockchip_clk_branch { i32 71, i32 0, ptr @.str.75, ptr @mux_mmc_src_p, i8 4, i32 0, i32 116, i8 12, i8 2, i8 4, i32 0, i8 0, i8 7, i8 8, ptr null, i32 216, i8 14, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 114, i32 6, ptr @.str.76, ptr @.compoundliteral.77, i8 1, i32 0, i32 324, i8 0, i8 0, i8 0, i32 0, i8 1, i8 0, i8 0, ptr null, i32 0, i8 0, i8 0, ptr null }, %struct.rockchip_clk_branch { i32 118, i32 6, ptr @.str.78, ptr @.compoundliteral.79, i8 1, i32 0, i32 328, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 0, i8 0, i8 0, ptr null }, %struct.rockchip_clk_branch { i32 115, i32 6, ptr @.str.80, ptr @.compoundliteral.81, i8 1, i32 0, i32 332, i8 0, i8 0, i8 0, i32 0, i8 1, i8 0, i8 0, ptr null, i32 0, i8 0, i8 0, ptr null }, %struct.rockchip_clk_branch { i32 119, i32 6, ptr @.str.82, ptr @.compoundliteral.83, i8 1, i32 0, i32 336, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 0, i8 0, i8 0, ptr null }, %struct.rockchip_clk_branch { i32 117, i32 6, ptr @.str.84, ptr @.compoundliteral.85, i8 1, i32 0, i32 340, i8 0, i8 0, i8 0, i32 0, i8 1, i8 0, i8 0, ptr null, i32 0, i8 0, i8 0, ptr null }, %struct.rockchip_clk_branch { i32 121, i32 6, ptr @.str.86, ptr @.compoundliteral.87, i8 1, i32 0, i32 344, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 0, i8 0, i8 0, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 0, ptr @.str.88, ptr @mux_pll_src_3plls_p, i8 3, i32 0, i32 80, i8 14, i8 2, i8 4, i32 0, i8 0, i8 7, i8 8, ptr null, i32 208, i8 9, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 4, ptr @.str.89, ptr @.compoundliteral.90, i8 1, i32 4, i32 96, i8 0, i8 0, i8 0, i32 0, i8 16, i8 16, i8 0, ptr null, i32 208, i8 10, i8 3, ptr @rk3036_i2s_fracmux }, %struct.rockchip_clk_branch { i32 113, i32 0, ptr @.str.91, ptr @mux_i2s_clkout_p, i8 2, i32 0, i32 80, i8 12, i8 1, i8 4, i32 0, i8 0, i8 0, i8 0, ptr null, i32 208, i8 13, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 82, i32 5, ptr @.str.92, ptr @.compoundliteral.94, i8 1, i32 4, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 208, i8 14, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 0, ptr @.str.95, ptr @mux_pll_src_3plls_p, i8 3, i32 0, i32 88, i8 10, i8 2, i8 4, i32 0, i8 0, i8 7, i8 8, ptr null, i32 216, i8 10, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 4, ptr @.str.96, ptr @.compoundliteral.97, i8 1, i32 0, i32 104, i8 0, i8 0, i8 0, i32 0, i8 16, i8 16, i8 0, ptr null, i32 216, i8 12, i8 3, ptr @rk3036_spdif_fracmux }, %struct.rockchip_clk_branch { i32 93, i32 5, ptr @.str.98, ptr @.compoundliteral.99, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 212, i8 5, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 64, i32 0, ptr @.str.100, ptr @mux_pll_src_3plls_p, i8 3, i32 0, i32 204, i8 8, i8 2, i8 4, i32 0, i8 0, i8 5, i8 8, ptr null, i32 220, i8 13, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 65, i32 0, ptr @.str.101, ptr @mux_pll_src_3plls_p, i8 3, i32 0, i32 168, i8 8, i8 2, i8 4, i32 0, i8 0, i8 7, i8 8, ptr null, i32 216, i8 9, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 76, i32 0, ptr @.str.102, ptr @mux_pll_src_3plls_p, i8 3, i32 0, i32 132, i8 8, i8 2, i8 4, i32 0, i8 10, i8 5, i8 8, ptr null, i32 248, i8 4, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 160, i32 0, ptr @.str.103, ptr @mux_pll_src_dmyapll_dpll_gpll_xin24_p, i8 4, i32 0, i32 132, i8 0, i8 2, i8 4, i32 0, i8 2, i8 5, i8 8, ptr null, i32 248, i8 5, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 153, i32 0, ptr @.str.104, ptr @mux_pll_src_3plls_p, i8 3, i32 128, i32 152, i8 0, i8 2, i8 4, i32 0, i8 9, i8 5, i8 8, ptr null, i32 -1, i8 0, i8 0, ptr null }, %struct.rockchip_clk_branch { i32 152, i32 1, ptr @.str.105, ptr @mux_mac_p, i8 2, i32 4, i32 152, i8 3, i8 1, i8 4, i32 0, i8 0, i8 0, i8 0, ptr null, i32 -1, i8 0, i8 0, ptr null }, %struct.rockchip_clk_branch { i32 151, i32 0, ptr @.str.106, ptr @.compoundliteral.107, i8 1, i32 0, i32 152, i8 0, i8 0, i8 0, i32 0, i8 4, i8 5, i8 8, ptr null, i32 216, i8 6, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 8, ptr @.str.108, ptr @.compoundliteral.109, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 1, i8 2, i8 0, ptr null, i32 0, i8 0, i8 0, ptr null }, %struct.rockchip_clk_branch { i32 109, i32 1, ptr @.str.110, ptr @mux_dclk_p, i8 2, i32 0, i32 192, i8 0, i8 1, i8 4, i32 0, i8 0, i8 0, i8 0, ptr null, i32 -1, i8 0, i8 0, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.111, ptr @.compoundliteral.112, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 224, i8 12, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.113, ptr @.compoundliteral.114, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 224, i8 10, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 467, i32 5, ptr @.str.115, ptr @.compoundliteral.116, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 228, i8 6, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 329, i32 5, ptr @.str.117, ptr @.compoundliteral.118, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 228, i8 4, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 364, i32 5, ptr @.str.119, ptr @.compoundliteral.120, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 228, i8 7, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 369, i32 5, ptr @.str.121, ptr @.compoundliteral.122, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 228, i8 14, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 360, i32 5, ptr @.str.123, ptr @.compoundliteral.124, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 220, i8 8, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 203, i32 5, ptr @.str.125, ptr @.compoundliteral.126, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 232, i8 13, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 197, i32 5, ptr @.str.127, ptr @.compoundliteral.128, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 244, i8 6, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 472, i32 5, ptr @.str.129, ptr @.compoundliteral.130, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 232, i8 12, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 465, i32 5, ptr @.str.131, ptr @.compoundliteral.132, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 244, i8 5, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 123, i32 5, ptr @.str.133, ptr @.compoundliteral.134, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 248, i8 0, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 124, i32 5, ptr @.str.135, ptr @.compoundliteral.136, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 248, i8 1, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.137, ptr @.compoundliteral.138, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 224, i8 3, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.139, ptr @.compoundliteral.140, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 224, i8 2, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 194, i32 5, ptr @.str.141, ptr @.compoundliteral.142, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 228, i8 1, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.143, ptr @.compoundliteral.144, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 244, i8 15, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.145, ptr @.compoundliteral.146, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 224, i8 0, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.147, ptr @.compoundliteral.148, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 244, i8 13, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.149, ptr @.compoundliteral.150, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 244, i8 14, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 453, i32 5, ptr @.str.151, ptr @.compoundliteral.152, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 228, i8 9, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 456, i32 5, ptr @.str.153, ptr @.compoundliteral.154, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 228, i8 10, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 457, i32 5, ptr @.str.155, ptr @.compoundliteral.156, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 228, i8 11, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 459, i32 5, ptr @.str.157, ptr @.compoundliteral.158, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 236, i8 0, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 449, i32 5, ptr @.str.159, ptr @.compoundliteral.160, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 228, i8 13, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 450, i32 5, ptr @.str.161, ptr @.compoundliteral.162, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 236, i8 3, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 462, i32 5, ptr @.str.163, ptr @.compoundliteral.164, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 236, i8 2, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 454, i32 5, ptr @.str.165, ptr @.compoundliteral.166, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 220, i8 14, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 460, i32 5, ptr @.str.167, ptr @.compoundliteral.168, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 220, i8 5, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.169, ptr @.compoundliteral.170, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 224, i8 1, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.171, ptr @.compoundliteral.172, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 228, i8 2, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 353, i32 5, ptr @.str.173, ptr @.compoundliteral.174, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 236, i8 7, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 350, i32 5, ptr @.str.175, ptr @.compoundliteral.176, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 236, i8 10, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 338, i32 5, ptr @.str.177, ptr @.compoundliteral.178, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 236, i8 12, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 368, i32 5, ptr @.str.179, ptr @.compoundliteral.180, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 236, i8 15, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 341, i32 5, ptr @.str.181, ptr @.compoundliteral.182, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 240, i8 0, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 342, i32 5, ptr @.str.183, ptr @.compoundliteral.184, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 240, i8 1, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 343, i32 5, ptr @.str.185, ptr @.compoundliteral.186, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 240, i8 2, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 332, i32 5, ptr @.str.187, ptr @.compoundliteral.188, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 240, i8 4, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 333, i32 5, ptr @.str.189, ptr @.compoundliteral.190, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 240, i8 5, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 334, i32 5, ptr @.str.191, ptr @.compoundliteral.192, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 240, i8 6, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 320, i32 5, ptr @.str.193, ptr @.compoundliteral.194, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 240, i8 9, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 321, i32 5, ptr @.str.195, ptr @.compoundliteral.196, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 240, i8 10, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 322, i32 5, ptr @.str.197, ptr @.compoundliteral.198, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 240, i8 11, i8 3, ptr null }], section ".init.data", align 4
@rk3036_critical_clocks = internal constant [5 x ptr] [ptr @.str.28, ptr @.str.35, ptr @.str.43, ptr @.str.39, ptr @.str.119], section ".init.rodata", align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"armclk\00", align 1
@mux_armclk_p = internal constant [2 x ptr] [ptr @.str.6, ptr @.str.9], section ".init.rodata", align 4
@rk3036_cpuclk_data = internal constant %struct.rockchip_cpuclk_reg_data { [4 x i32] [i32 68, i32 0, i32 0, i32 0], [4 x i8] zeroinitializer, [4 x i32] [i32 31, i32 0, i32 0, i32 0], i32 1, i8 1, i8 0, i8 7, i32 1 }, align 4
@rk3036_cpuclk_rates = internal global [3 x %struct.rockchip_cpuclk_rate_table] [%struct.rockchip_cpuclk_rate_table { i32 816000000, [5 x %struct.rockchip_cpuclk_clksel] [%struct.rockchip_cpuclk_clksel { i32 72, i32 983044 }, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer] }, %struct.rockchip_cpuclk_rate_table { i32 600000000, [5 x %struct.rockchip_cpuclk_clksel] [%struct.rockchip_cpuclk_clksel { i32 72, i32 983044 }, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer] }, %struct.rockchip_cpuclk_rate_table { i32 312000000, [5 x %struct.rockchip_cpuclk_clksel] [%struct.rockchip_cpuclk_clksel { i32 72, i32 983044 }, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer] }], section ".init.data", align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"apll\00", align 1
@mux_pll_p = internal constant [2 x ptr] [ptr @.str.3, ptr @.str.3], section ".init.rodata", align 4
@rk3036_pll_rates = internal global [43 x %struct.rockchip_pll_rate_table] [%struct.rockchip_pll_rate_table { i32 1608000000, %union.anon.4 { %struct.anon.6 { i32 67, i32 1, i32 1, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 1584000000, %union.anon.4 { %struct.anon.6 { i32 66, i32 1, i32 1, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 1560000000, %union.anon.4 { %struct.anon.6 { i32 65, i32 1, i32 1, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 1536000000, %union.anon.4 { %struct.anon.6 { i32 64, i32 1, i32 1, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 1512000000, %union.anon.4 { %struct.anon.6 { i32 63, i32 1, i32 1, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 1488000000, %union.anon.4 { %struct.anon.6 { i32 62, i32 1, i32 1, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 1464000000, %union.anon.4 { %struct.anon.6 { i32 61, i32 1, i32 1, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 1440000000, %union.anon.4 { %struct.anon.6 { i32 60, i32 1, i32 1, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 1416000000, %union.anon.4 { %struct.anon.6 { i32 59, i32 1, i32 1, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 1392000000, %union.anon.4 { %struct.anon.6 { i32 58, i32 1, i32 1, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 1368000000, %union.anon.4 { %struct.anon.6 { i32 57, i32 1, i32 1, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 1344000000, %union.anon.4 { %struct.anon.6 { i32 56, i32 1, i32 1, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 1320000000, %union.anon.4 { %struct.anon.6 { i32 55, i32 1, i32 1, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 1296000000, %union.anon.4 { %struct.anon.6 { i32 54, i32 1, i32 1, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 1272000000, %union.anon.4 { %struct.anon.6 { i32 53, i32 1, i32 1, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 1248000000, %union.anon.4 { %struct.anon.6 { i32 52, i32 1, i32 1, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 1200000000, %union.anon.4 { %struct.anon.6 { i32 50, i32 1, i32 1, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 1188000000, %union.anon.4 { %struct.anon.6 { i32 99, i32 1, i32 2, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 1104000000, %union.anon.4 { %struct.anon.6 { i32 46, i32 1, i32 1, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 1100000000, %union.anon.4 { %struct.anon.6 { i32 550, i32 1, i32 12, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 1008000000, %union.anon.4 { %struct.anon.6 { i32 84, i32 2, i32 1, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 1000000000, %union.anon.4 { %struct.anon.6 { i32 500, i32 2, i32 6, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 984000000, %union.anon.4 { %struct.anon.6 { i32 82, i32 2, i32 1, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 960000000, %union.anon.4 { %struct.anon.6 { i32 80, i32 2, i32 1, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 936000000, %union.anon.4 { %struct.anon.6 { i32 78, i32 2, i32 1, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 912000000, %union.anon.4 { %struct.anon.6 { i32 76, i32 2, i32 1, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 900000000, %union.anon.4 { %struct.anon.6 { i32 300, i32 2, i32 4, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 888000000, %union.anon.4 { %struct.anon.6 { i32 74, i32 2, i32 1, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 864000000, %union.anon.4 { %struct.anon.6 { i32 72, i32 2, i32 1, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 840000000, %union.anon.4 { %struct.anon.6 { i32 70, i32 2, i32 1, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 816000000, %union.anon.4 { %struct.anon.6 { i32 68, i32 2, i32 1, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 800000000, %union.anon.4 { %struct.anon.6 { i32 400, i32 2, i32 6, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 700000000, %union.anon.4 { %struct.anon.6 { i32 350, i32 2, i32 6, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 696000000, %union.anon.4 { %struct.anon.6 { i32 58, i32 2, i32 1, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 600000000, %union.anon.4 { %struct.anon.6 { i32 75, i32 3, i32 1, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 594000000, %union.anon.4 { %struct.anon.6 { i32 99, i32 2, i32 2, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 504000000, %union.anon.4 { %struct.anon.6 { i32 63, i32 3, i32 1, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 500000000, %union.anon.4 { %struct.anon.6 { i32 250, i32 2, i32 6, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 408000000, %union.anon.4 { %struct.anon.6 { i32 68, i32 2, i32 1, i32 2, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 312000000, %union.anon.4 { %struct.anon.6 { i32 52, i32 2, i32 1, i32 2, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 216000000, %union.anon.4 { %struct.anon.6 { i32 72, i32 4, i32 1, i32 2, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 96000000, %union.anon.4 { %struct.anon.6 { i32 64, i32 4, i32 1, i32 4, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table zeroinitializer], align 4
@.str.7 = private unnamed_addr constant [5 x i8] c"dpll\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"gpll\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"gpll_armclk\00", align 1
@.compoundliteral = internal global [1 x ptr] [ptr @.str.8], align 4
@.str.10 = private unnamed_addr constant [7 x i8] c"xin12m\00", align 1
@.compoundliteral.11 = internal global [1 x ptr] [ptr @.str.3], align 4
@.str.12 = private unnamed_addr constant [9 x i8] c"dpll_ddr\00", align 1
@.compoundliteral.13 = internal global [1 x ptr] [ptr @.str.7], align 4
@.str.14 = private unnamed_addr constant [9 x i8] c"gpll_ddr\00", align 1
@.compoundliteral.15 = internal global [1 x ptr] [ptr @.str.8], align 4
@.str.16 = private unnamed_addr constant [9 x i8] c"ddrphy2x\00", align 1
@mux_ddrphy_p = internal constant [2 x ptr] [ptr @.str.12, ptr @.str.14], section ".init.rodata", align 4
@.str.17 = private unnamed_addr constant [7 x i8] c"ddrphy\00", align 1
@.compoundliteral.18 = internal global [1 x ptr] [ptr @.str.16], align 4
@.str.19 = private unnamed_addr constant [9 x i8] c"pclk_dbg\00", align 1
@.compoundliteral.20 = internal global [1 x ptr] [ptr @.str.5], align 4
@.str.21 = private unnamed_addr constant [14 x i8] c"aclk_core_pre\00", align 1
@.compoundliteral.22 = internal global [1 x ptr] [ptr @.str.5], align 4
@.str.23 = private unnamed_addr constant [9 x i8] c"dpll_cpu\00", align 1
@.compoundliteral.24 = internal global [1 x ptr] [ptr @.str.7], align 4
@.str.25 = private unnamed_addr constant [9 x i8] c"gpll_cpu\00", align 1
@.compoundliteral.26 = internal global [1 x ptr] [ptr @.str.8], align 4
@.str.27 = private unnamed_addr constant [13 x i8] c"aclk_cpu_src\00", align 1
@mux_busclk_p = internal constant [3 x ptr] [ptr @.str.6, ptr @.str.23, ptr @.str.25], section ".init.rodata", align 4
@.str.28 = private unnamed_addr constant [9 x i8] c"aclk_cpu\00", align 1
@.compoundliteral.29 = internal global [1 x ptr] [ptr @.str.27], align 4
@.str.30 = private unnamed_addr constant [9 x i8] c"pclk_cpu\00", align 1
@.compoundliteral.31 = internal global [1 x ptr] [ptr @.str.27], align 4
@.str.32 = private unnamed_addr constant [9 x i8] c"hclk_cpu\00", align 1
@.compoundliteral.33 = internal global [1 x ptr] [ptr @.str.27], align 4
@.str.34 = private unnamed_addr constant [14 x i8] c"aclk_peri_src\00", align 1
@mux_pll_src_3plls_p = internal constant [3 x ptr] [ptr @.str.6, ptr @.str.7, ptr @.str.8], section ".init.rodata", align 4
@.str.35 = private unnamed_addr constant [10 x i8] c"aclk_peri\00", align 1
@.compoundliteral.36 = internal global [1 x ptr] [ptr @.str.34], align 4
@.str.37 = private unnamed_addr constant [14 x i8] c"pclk_peri_src\00", align 1
@.compoundliteral.38 = internal global [1 x ptr] [ptr @.str.34], align 4
@.str.39 = private unnamed_addr constant [10 x i8] c"pclk_peri\00", align 1
@.compoundliteral.40 = internal global [1 x ptr] [ptr @.str.37], align 4
@.str.41 = private unnamed_addr constant [14 x i8] c"hclk_peri_src\00", align 1
@.compoundliteral.42 = internal global [1 x ptr] [ptr @.str.34], align 4
@.str.43 = private unnamed_addr constant [10 x i8] c"hclk_peri\00", align 1
@.compoundliteral.44 = internal global [1 x ptr] [ptr @.str.41], align 4
@.str.45 = private unnamed_addr constant [12 x i8] c"sclk_timer0\00", align 1
@mux_timer_p = internal constant [2 x ptr] [ptr @.str.3, ptr @.str.37], section ".init.rodata", align 4
@.str.46 = private unnamed_addr constant [12 x i8] c"sclk_timer1\00", align 1
@.str.47 = private unnamed_addr constant [12 x i8] c"sclk_timer2\00", align 1
@.str.48 = private unnamed_addr constant [12 x i8] c"sclk_timer3\00", align 1
@.str.49 = private unnamed_addr constant [13 x i8] c"uart_pll_clk\00", align 1
@mux_pll_src_apll_dpll_gpll_usb480m_p = internal constant [4 x ptr] [ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.2], section ".init.rodata", align 4
@.str.50 = private unnamed_addr constant [10 x i8] c"uart0_src\00", align 1
@.compoundliteral.51 = internal global [1 x ptr] [ptr @.str.49], align 4
@.str.52 = private unnamed_addr constant [10 x i8] c"uart1_src\00", align 1
@.compoundliteral.53 = internal global [1 x ptr] [ptr @.str.49], align 4
@.str.54 = private unnamed_addr constant [10 x i8] c"uart2_src\00", align 1
@.compoundliteral.55 = internal global [1 x ptr] [ptr @.str.49], align 4
@.str.56 = private unnamed_addr constant [11 x i8] c"uart0_frac\00", align 1
@.compoundliteral.57 = internal global [1 x ptr] [ptr @.str.50], align 4
@rk3036_uart0_fracmux = internal global %struct.rockchip_clk_branch { i32 77, i32 1, ptr @.str.199, ptr @mux_uart0_p, i8 3, i32 4, i32 120, i8 8, i8 2, i8 4, i32 0, i8 0, i8 0, i8 0, ptr null, i32 -1, i8 0, i8 0, ptr null }, section ".init.data", align 4
@.str.58 = private unnamed_addr constant [11 x i8] c"uart1_frac\00", align 1
@.compoundliteral.59 = internal global [1 x ptr] [ptr @.str.52], align 4
@rk3036_uart1_fracmux = internal global %struct.rockchip_clk_branch { i32 78, i32 1, ptr @.str.200, ptr @mux_uart1_p, i8 3, i32 4, i32 124, i8 8, i8 2, i8 4, i32 0, i8 0, i8 0, i8 0, ptr null, i32 -1, i8 0, i8 0, ptr null }, section ".init.data", align 4
@.str.60 = private unnamed_addr constant [11 x i8] c"uart2_frac\00", align 1
@.compoundliteral.61 = internal global [1 x ptr] [ptr @.str.54], align 4
@rk3036_uart2_fracmux = internal global %struct.rockchip_clk_branch { i32 79, i32 1, ptr @.str.201, ptr @mux_uart2_p, i8 3, i32 4, i32 128, i8 8, i8 2, i8 4, i32 0, i8 0, i8 0, i8 0, ptr null, i32 -1, i8 0, i8 0, ptr null }, section ".init.data", align 4
@.str.62 = private unnamed_addr constant [12 x i8] c"aclk_vcodec\00", align 1
@.str.63 = private unnamed_addr constant [12 x i8] c"hclk_vcodec\00", align 1
@.compoundliteral.64 = internal global [1 x ptr] [ptr @.str.62], align 4
@.str.65 = private unnamed_addr constant [10 x i8] c"aclk_hvec\00", align 1
@.str.66 = private unnamed_addr constant [15 x i8] c"aclk_disp1_pre\00", align 1
@.str.67 = private unnamed_addr constant [14 x i8] c"hclk_disp_pre\00", align 1
@.str.68 = private unnamed_addr constant [10 x i8] c"dclk_lcdc\00", align 1
@.str.69 = private unnamed_addr constant [15 x i8] c"sclk_sdmmc_src\00", align 1
@mux_mmc_src_p = internal constant [4 x ptr] [ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.3], section ".init.rodata", align 4
@.str.70 = private unnamed_addr constant [11 x i8] c"sclk_sdmmc\00", align 1
@.compoundliteral.71 = internal global [1 x ptr] [ptr @.str.69], align 4
@.str.72 = private unnamed_addr constant [14 x i8] c"sclk_sdio_src\00", align 1
@.str.73 = private unnamed_addr constant [10 x i8] c"sclk_sdio\00", align 1
@.compoundliteral.74 = internal global [1 x ptr] [ptr @.str.72], align 4
@.str.75 = private unnamed_addr constant [10 x i8] c"sclk_emmc\00", align 1
@.str.76 = private unnamed_addr constant [10 x i8] c"sdmmc_drv\00", align 1
@.compoundliteral.77 = internal global [1 x ptr] [ptr @.str.70], align 4
@.str.78 = private unnamed_addr constant [13 x i8] c"sdmmc_sample\00", align 1
@.compoundliteral.79 = internal global [1 x ptr] [ptr @.str.70], align 4
@.str.80 = private unnamed_addr constant [9 x i8] c"sdio_drv\00", align 1
@.compoundliteral.81 = internal global [1 x ptr] [ptr @.str.73], align 4
@.str.82 = private unnamed_addr constant [12 x i8] c"sdio_sample\00", align 1
@.compoundliteral.83 = internal global [1 x ptr] [ptr @.str.73], align 4
@.str.84 = private unnamed_addr constant [9 x i8] c"emmc_drv\00", align 1
@.compoundliteral.85 = internal global [1 x ptr] [ptr @.str.75], align 4
@.str.86 = private unnamed_addr constant [12 x i8] c"emmc_sample\00", align 1
@.compoundliteral.87 = internal global [1 x ptr] [ptr @.str.75], align 4
@.str.88 = private unnamed_addr constant [8 x i8] c"i2s_src\00", align 1
@.str.89 = private unnamed_addr constant [9 x i8] c"i2s_frac\00", align 1
@.compoundliteral.90 = internal global [1 x ptr] [ptr @.str.88], align 4
@rk3036_i2s_fracmux = internal global %struct.rockchip_clk_branch { i32 0, i32 1, ptr @.str.93, ptr @mux_i2s_pre_p, i8 4, i32 4, i32 80, i8 8, i8 2, i8 4, i32 0, i8 0, i8 0, i8 0, ptr null, i32 -1, i8 0, i8 0, ptr null }, section ".init.data", align 4
@.str.91 = private unnamed_addr constant [11 x i8] c"i2s_clkout\00", align 1
@mux_i2s_clkout_p = internal constant [2 x ptr] [ptr @.str.93, ptr @.str.10], section ".init.rodata", align 4
@.str.92 = private unnamed_addr constant [9 x i8] c"sclk_i2s\00", align 1
@.str.93 = private unnamed_addr constant [8 x i8] c"i2s_pre\00", align 1
@.compoundliteral.94 = internal global [1 x ptr] [ptr @.str.93], align 4
@.str.95 = private unnamed_addr constant [10 x i8] c"spdif_src\00", align 1
@.str.96 = private unnamed_addr constant [11 x i8] c"spdif_frac\00", align 1
@.compoundliteral.97 = internal global [1 x ptr] [ptr @.str.95], align 4
@rk3036_spdif_fracmux = internal global %struct.rockchip_clk_branch { i32 83, i32 1, ptr @.str.203, ptr @mux_spdif_p, i8 3, i32 0, i32 88, i8 8, i8 2, i8 4, i32 0, i8 0, i8 0, i8 0, ptr null, i32 -1, i8 0, i8 0, ptr null }, section ".init.data", align 4
@.str.98 = private unnamed_addr constant [13 x i8] c"sclk_otgphy0\00", align 1
@.compoundliteral.99 = internal global [1 x ptr] [ptr @.str.10], align 4
@.str.100 = private unnamed_addr constant [9 x i8] c"sclk_gpu\00", align 1
@.str.101 = private unnamed_addr constant [9 x i8] c"sclk_spi\00", align 1
@.str.102 = private unnamed_addr constant [11 x i8] c"sclk_nandc\00", align 1
@.str.103 = private unnamed_addr constant [9 x i8] c"sclk_sfc\00", align 1
@mux_pll_src_dmyapll_dpll_gpll_xin24_p = internal constant [4 x ptr] [ptr @.str.204, ptr @.str.7, ptr @.str.8, ptr @.str.3], section ".init.rodata", align 4
@.str.104 = private unnamed_addr constant [12 x i8] c"mac_pll_src\00", align 1
@.str.105 = private unnamed_addr constant [12 x i8] c"mac_clk_ref\00", align 1
@mux_mac_p = internal constant [2 x ptr] [ptr @.str.104, ptr @.str.205], section ".init.rodata", align 4
@.str.106 = private unnamed_addr constant [8 x i8] c"mac_clk\00", align 1
@.compoundliteral.107 = internal global [1 x ptr] [ptr @.str.105], align 4
@.str.108 = private unnamed_addr constant [16 x i8] c"sclk_macref_out\00", align 1
@.compoundliteral.109 = internal global [1 x ptr] [ptr @.str.41], align 4
@.str.110 = private unnamed_addr constant [10 x i8] c"dclk_hdmi\00", align 1
@mux_dclk_p = internal constant [2 x ptr] [ptr @.str.68, ptr @.str.206], section ".init.rodata", align 4
@.str.111 = private unnamed_addr constant [12 x i8] c"sclk_intmem\00", align 1
@.compoundliteral.112 = internal global [1 x ptr] [ptr @.str.28], align 4
@.str.113 = private unnamed_addr constant [14 x i8] c"aclk_strc_sys\00", align 1
@.compoundliteral.114 = internal global [1 x ptr] [ptr @.str.28], align 4
@.str.115 = private unnamed_addr constant [9 x i8] c"hclk_rom\00", align 1
@.compoundliteral.116 = internal global [1 x ptr] [ptr @.str.32], align 4
@.str.117 = private unnamed_addr constant [9 x i8] c"pclk_grf\00", align 1
@.compoundliteral.118 = internal global [1 x ptr] [ptr @.str.30], align 4
@.str.119 = private unnamed_addr constant [14 x i8] c"pclk_ddrupctl\00", align 1
@.compoundliteral.120 = internal global [1 x ptr] [ptr @.str.30], align 4
@.str.121 = private unnamed_addr constant [12 x i8] c"pclk_acodec\00", align 1
@.compoundliteral.122 = internal global [1 x ptr] [ptr @.str.30], align 4
@.str.123 = private unnamed_addr constant [10 x i8] c"pclk_hdmi\00", align 1
@.compoundliteral.124 = internal global [1 x ptr] [ptr @.str.30], align 4
@.str.125 = private unnamed_addr constant [9 x i8] c"aclk_vio\00", align 1
@.compoundliteral.126 = internal global [1 x ptr] [ptr @.str.66], align 4
@.str.127 = private unnamed_addr constant [10 x i8] c"aclk_lcdc\00", align 1
@.compoundliteral.128 = internal global [1 x ptr] [ptr @.str.66], align 4
@.str.129 = private unnamed_addr constant [13 x i8] c"hclk_vio_bus\00", align 1
@.compoundliteral.130 = internal global [1 x ptr] [ptr @.str.67], align 4
@.str.131 = private unnamed_addr constant [10 x i8] c"hclk_lcdc\00", align 1
@.compoundliteral.132 = internal global [1 x ptr] [ptr @.str.67], align 4
@.str.133 = private unnamed_addr constant [15 x i8] c"sclk_pvtm_core\00", align 1
@.compoundliteral.134 = internal global [1 x ptr] [ptr @.str.3], align 4
@.str.135 = private unnamed_addr constant [14 x i8] c"sclk_pvtm_gpu\00", align 1
@.compoundliteral.136 = internal global [1 x ptr] [ptr @.str.3], align 4
@.str.137 = private unnamed_addr constant [21 x i8] c"aclk_peri_axi_matrix\00", align 1
@.compoundliteral.138 = internal global [1 x ptr] [ptr @.str.35], align 4
@.str.139 = private unnamed_addr constant [14 x i8] c"aclk_cpu_peri\00", align 1
@.compoundliteral.140 = internal global [1 x ptr] [ptr @.str.35], align 4
@.str.141 = private unnamed_addr constant [11 x i8] c"aclk_dmac2\00", align 1
@.compoundliteral.142 = internal global [1 x ptr] [ptr @.str.35], align 4
@.str.143 = private unnamed_addr constant [14 x i8] c"aclk_peri_niu\00", align 1
@.compoundliteral.144 = internal global [1 x ptr] [ptr @.str.35], align 4
@.str.145 = private unnamed_addr constant [17 x i8] c"hclk_peri_matrix\00", align 1
@.compoundliteral.146 = internal global [1 x ptr] [ptr @.str.43], align 4
@.str.147 = private unnamed_addr constant [14 x i8] c"hclk_usb_peri\00", align 1
@.compoundliteral.148 = internal global [1 x ptr] [ptr @.str.43], align 4
@.str.149 = private unnamed_addr constant [15 x i8] c"hclk_peri_arbi\00", align 1
@.compoundliteral.150 = internal global [1 x ptr] [ptr @.str.43], align 4
@.str.151 = private unnamed_addr constant [11 x i8] c"hclk_nandc\00", align 1
@.compoundliteral.152 = internal global [1 x ptr] [ptr @.str.43], align 4
@.str.153 = private unnamed_addr constant [11 x i8] c"hclk_sdmmc\00", align 1
@.compoundliteral.154 = internal global [1 x ptr] [ptr @.str.43], align 4
@.str.155 = private unnamed_addr constant [10 x i8] c"hclk_sdio\00", align 1
@.compoundliteral.156 = internal global [1 x ptr] [ptr @.str.43], align 4
@.str.157 = private unnamed_addr constant [10 x i8] c"hclk_emmc\00", align 1
@.compoundliteral.158 = internal global [1 x ptr] [ptr @.str.43], align 4
@.str.159 = private unnamed_addr constant [10 x i8] c"hclk_otg0\00", align 1
@.compoundliteral.160 = internal global [1 x ptr] [ptr @.str.43], align 4
@.str.161 = private unnamed_addr constant [10 x i8] c"hclk_otg1\00", align 1
@.compoundliteral.162 = internal global [1 x ptr] [ptr @.str.43], align 4
@.str.163 = private unnamed_addr constant [9 x i8] c"hclk_i2s\00", align 1
@.compoundliteral.164 = internal global [1 x ptr] [ptr @.str.43], align 4
@.str.165 = private unnamed_addr constant [9 x i8] c"hclk_sfc\00", align 1
@.compoundliteral.166 = internal global [1 x ptr] [ptr @.str.43], align 4
@.str.167 = private unnamed_addr constant [9 x i8] c"hclk_mac\00", align 1
@.compoundliteral.168 = internal global [1 x ptr] [ptr @.str.43], align 4
@.str.169 = private unnamed_addr constant [17 x i8] c"pclk_peri_matrix\00", align 1
@.compoundliteral.170 = internal global [1 x ptr] [ptr @.str.39], align 4
@.str.171 = private unnamed_addr constant [11 x i8] c"pclk_efuse\00", align 1
@.compoundliteral.172 = internal global [1 x ptr] [ptr @.str.39], align 4
@.str.173 = private unnamed_addr constant [11 x i8] c"pclk_timer\00", align 1
@.compoundliteral.174 = internal global [1 x ptr] [ptr @.str.39], align 4
@.str.175 = private unnamed_addr constant [9 x i8] c"pclk_pwm\00", align 1
@.compoundliteral.176 = internal global [1 x ptr] [ptr @.str.39], align 4
@.str.177 = private unnamed_addr constant [9 x i8] c"pclk_spi\00", align 1
@.compoundliteral.178 = internal global [1 x ptr] [ptr @.str.39], align 4
@.str.179 = private unnamed_addr constant [9 x i8] c"pclk_wdt\00", align 1
@.compoundliteral.180 = internal global [1 x ptr] [ptr @.str.39], align 4
@.str.181 = private unnamed_addr constant [11 x i8] c"pclk_uart0\00", align 1
@.compoundliteral.182 = internal global [1 x ptr] [ptr @.str.39], align 4
@.str.183 = private unnamed_addr constant [11 x i8] c"pclk_uart1\00", align 1
@.compoundliteral.184 = internal global [1 x ptr] [ptr @.str.39], align 4
@.str.185 = private unnamed_addr constant [11 x i8] c"pclk_uart2\00", align 1
@.compoundliteral.186 = internal global [1 x ptr] [ptr @.str.39], align 4
@.str.187 = private unnamed_addr constant [10 x i8] c"pclk_i2c0\00", align 1
@.compoundliteral.188 = internal global [1 x ptr] [ptr @.str.39], align 4
@.str.189 = private unnamed_addr constant [10 x i8] c"pclk_i2c1\00", align 1
@.compoundliteral.190 = internal global [1 x ptr] [ptr @.str.39], align 4
@.str.191 = private unnamed_addr constant [10 x i8] c"pclk_i2c2\00", align 1
@.compoundliteral.192 = internal global [1 x ptr] [ptr @.str.39], align 4
@.str.193 = private unnamed_addr constant [11 x i8] c"pclk_gpio0\00", align 1
@.compoundliteral.194 = internal global [1 x ptr] [ptr @.str.39], align 4
@.str.195 = private unnamed_addr constant [11 x i8] c"pclk_gpio1\00", align 1
@.compoundliteral.196 = internal global [1 x ptr] [ptr @.str.39], align 4
@.str.197 = private unnamed_addr constant [11 x i8] c"pclk_gpio2\00", align 1
@.compoundliteral.198 = internal global [1 x ptr] [ptr @.str.39], align 4
@.str.199 = private unnamed_addr constant [11 x i8] c"sclk_uart0\00", align 1
@mux_uart0_p = internal constant [3 x ptr] [ptr @.str.50, ptr @.str.56, ptr @.str.3], section ".init.rodata", align 4
@.str.200 = private unnamed_addr constant [11 x i8] c"sclk_uart1\00", align 1
@mux_uart1_p = internal constant [3 x ptr] [ptr @.str.52, ptr @.str.58, ptr @.str.3], section ".init.rodata", align 4
@.str.201 = private unnamed_addr constant [11 x i8] c"sclk_uart2\00", align 1
@mux_uart2_p = internal constant [3 x ptr] [ptr @.str.54, ptr @.str.60, ptr @.str.3], section ".init.rodata", align 4
@mux_i2s_pre_p = internal constant [4 x ptr] [ptr @.str.88, ptr @.str.89, ptr @.str.202, ptr @.str.10], section ".init.rodata", align 4
@.str.202 = private unnamed_addr constant [8 x i8] c"ext_i2s\00", align 1
@.str.203 = private unnamed_addr constant [11 x i8] c"sclk_spdif\00", align 1
@mux_spdif_p = internal constant [3 x ptr] [ptr @.str.95, ptr @.str.96, ptr @.str.10], section ".init.rodata", align 4
@.str.204 = private unnamed_addr constant [11 x i8] c"dummy_apll\00", align 1
@.str.205 = private unnamed_addr constant [11 x i8] c"rmii_clkin\00", align 1
@.str.206 = private unnamed_addr constant [9 x i8] c"dclk_cru\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__of_table_rk3036_cru], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @rk3036_clk_init(ptr noundef %0) #0 section ".init.text" {
  %2 = tail call ptr @of_iomap(ptr noundef %0, i32 noundef 0) #3
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.rk3036_clk_init) #4
  br label %20

6:                                                ; preds = %1
  %7 = getelementptr i8, ptr %2, i32 120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 201328640) #3, !srcloc !8
  %8 = tail call ptr @rockchip_clk_init(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 479) #3
  %9 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.rk3036_clk_init) #4
  tail call void @iounmap(ptr noundef nonnull %2) #3
  br label %20

12:                                               ; preds = %6
  %13 = tail call ptr @clk_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef 0, i32 noundef 20, i32 noundef 1) #3
  %14 = icmp ugt ptr %13, inttoptr (i32 -4096 to ptr)
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = ptrtoint ptr %13 to i32
  %17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.rk3036_clk_init, i32 noundef %16) #4
  br label %18

18:                                               ; preds = %15, %12
  tail call void @rockchip_clk_register_plls(ptr noundef %8, ptr noundef nonnull @rk3036_pll_clks, i32 noundef 3, i32 noundef 332) #3
  tail call void @rockchip_clk_register_branches(ptr noundef %8, ptr noundef nonnull @rk3036_clk_branches, i32 noundef 108) #3
  tail call void @rockchip_clk_protect_critical(ptr noundef nonnull @rk3036_critical_clocks, i32 noundef 5) #3
  tail call void @rockchip_clk_register_armclk(ptr noundef %8, i32 noundef 4, ptr noundef nonnull @.str.5, ptr noundef nonnull @mux_armclk_p, i8 noundef zeroext 2, ptr noundef nonnull @rk3036_cpuclk_data, ptr noundef nonnull @rk3036_cpuclk_rates, i32 noundef 3) #3
  %19 = getelementptr i8, ptr %2, i32 272
  tail call void @rockchip_register_softrst(ptr noundef %0, i32 noundef 9, ptr noundef %19, i8 noundef zeroext 1) #3
  tail call void @rockchip_register_restart_notifier(ptr noundef %8, i32 noundef 256, ptr noundef null) #3
  tail call void @rockchip_clk_of_add_provider(ptr noundef %0, ptr noundef %8) #3
  br label %20

20:                                               ; preds = %18, %10, %4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rockchip_clk_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_fixed_factor(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rockchip_clk_register_plls(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rockchip_clk_register_branches(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rockchip_clk_protect_critical(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rockchip_clk_register_armclk(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rockchip_register_softrst(ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rockchip_register_restart_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rockchip_clk_of_add_provider(ptr noundef, ptr noundef) local_unnamed_addr #1

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
!8 = !{i64 2860320}
