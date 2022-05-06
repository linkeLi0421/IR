; ModuleID = '/llk/IR/drivers/clk/rockchip/clk-rk3288.c_pt.bc'
source_filename = "../drivers/clk/rockchip/clk-rk3288.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.rockchip_pll_clock = type { i32, ptr, ptr, i8, i32, i32, i32, i32, i32, i32, i8, ptr }
%struct.rockchip_clk_branch = type { i32, i32, ptr, ptr, i8, i32, i32, i8, i8, i8, i32, i8, i8, i8, ptr, i32, i8, i8, ptr }
%struct.rockchip_cpuclk_reg_data = type { [4 x i32], [4 x i8], [4 x i32], i32, i8, i8, i8, i32 }
%struct.rockchip_cpuclk_rate_table = type { i32, [5 x %struct.rockchip_cpuclk_clksel] }
%struct.rockchip_cpuclk_clksel = type { i32, i32 }
%struct.syscore_ops = type { %struct.list_head, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.anon.5 = type { i32, i32, i32, i32 }
%struct.rockchip_pll_rate_table = type { i32, %union.anon.4 }
%union.anon.4 = type { %struct.anon.6 }
%struct.anon.6 = type { i32, i32, i32, i32, i32, i32 }
%struct.clk_div_table = type { i32, i32 }

@__of_table_rk3288_cru = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3288-cru\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3288_clk_init }, section "__clk_of_table", align 4
@__of_table_rk3288w_cru = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3288w-cru\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3288w_clk_init }, section "__clk_of_table", align 4
@rk3288_cru_base = internal unnamed_addr global ptr null, align 4
@.str = private unnamed_addr constant [32 x i8] c"\013%s: could not map cru region\0A\00", align 1
@__func__.rk3288_common_init = private unnamed_addr constant [19 x i8] c"rk3288_common_init\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"\013%s: rockchip clk init failed\0A\00", align 1
@rk3288_pll_clks = internal global [5 x %struct.rockchip_pll_clock] [%struct.rockchip_pll_clock { i32 1, ptr @.str.3, ptr @mux_pll_p, i8 2, i32 64, i32 0, i32 80, i32 0, i32 6, i32 1, i8 0, ptr @rk3288_pll_rates }, %struct.rockchip_pll_clock { i32 2, ptr @.str.4, ptr @mux_pll_p, i8 2, i32 64, i32 16, i32 80, i32 4, i32 5, i32 1, i8 0, ptr null }, %struct.rockchip_pll_clock { i32 3, ptr @.str.5, ptr @mux_pll_p, i8 2, i32 64, i32 32, i32 80, i32 8, i32 7, i32 1, i8 1, ptr @rk3288_pll_rates }, %struct.rockchip_pll_clock { i32 4, ptr @.str.6, ptr @mux_pll_p, i8 2, i32 64, i32 48, i32 80, i32 12, i32 8, i32 1, i8 1, ptr @rk3288_pll_rates }, %struct.rockchip_pll_clock { i32 5, ptr @.str.7, ptr @mux_pll_p, i8 2, i32 64, i32 64, i32 80, i32 14, i32 9, i32 1, i8 1, ptr @rk3288_pll_rates }], section ".init.data", align 4
@rk3288_clk_branches = internal global [251 x %struct.rockchip_clk_branch] [%struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.11, ptr @.compoundliteral, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 352, i8 1, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.12, ptr @.compoundliteral.13, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 352, i8 2, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 0, ptr @.str.14, ptr @.compoundliteral.15, i8 1, i32 8, i32 240, i8 0, i8 0, i8 0, i32 0, i8 0, i8 3, i8 40, ptr null, i32 400, i8 0, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 0, ptr @.str.16, ptr @.compoundliteral.17, i8 1, i32 8, i32 240, i8 0, i8 0, i8 0, i32 0, i8 4, i8 3, i8 40, ptr null, i32 400, i8 1, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 0, ptr @.str.18, ptr @.compoundliteral.19, i8 1, i32 8, i32 240, i8 0, i8 0, i8 0, i32 0, i8 8, i8 3, i8 40, ptr null, i32 400, i8 2, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 0, ptr @.str.20, ptr @.compoundliteral.21, i8 1, i32 8, i32 240, i8 0, i8 0, i8 0, i32 0, i8 12, i8 3, i8 40, ptr null, i32 400, i8 3, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 0, ptr @.str.22, ptr @.compoundliteral.23, i8 1, i32 8, i32 244, i8 0, i8 0, i8 0, i32 0, i8 0, i8 3, i8 40, ptr null, i32 400, i8 4, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 0, ptr @.str.24, ptr @.compoundliteral.25, i8 1, i32 8, i32 96, i8 0, i8 0, i8 0, i32 0, i8 0, i8 4, i8 40, ptr null, i32 400, i8 5, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 0, ptr @.str.26, ptr @.compoundliteral.27, i8 1, i32 8, i32 96, i8 0, i8 0, i8 0, i32 0, i8 4, i8 4, i8 40, ptr null, i32 400, i8 6, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 0, ptr @.str.28, ptr @.compoundliteral.29, i8 1, i32 0, i32 244, i8 0, i8 0, i8 0, i32 0, i8 4, i8 5, i8 40, ptr null, i32 400, i8 7, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 0, ptr @.str.30, ptr @.compoundliteral.31, i8 1, i32 8, i32 244, i8 0, i8 0, i8 0, i32 0, i8 9, i8 5, i8 40, ptr null, i32 400, i8 8, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.32, ptr @.compoundliteral.33, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 400, i8 9, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.34, ptr @.compoundliteral.35, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 400, i8 10, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.36, ptr @.compoundliteral.37, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 400, i8 11, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.38, ptr @.compoundliteral.39, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 352, i8 8, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.40, ptr @.compoundliteral.41, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 352, i8 9, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 0, ptr @.str.42, ptr @mux_ddrphy_p, i8 2, i32 8, i32 200, i8 2, i8 1, i8 4, i32 0, i8 0, i8 2, i8 10, ptr null, i32 -1, i8 0, i8 0, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.43, ptr @.compoundliteral.44, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 352, i8 10, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.45, ptr @.compoundliteral.46, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 352, i8 11, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 0, ptr @.str.47, ptr @mux_aclk_cpu_src_p, i8 2, i32 8, i32 100, i8 15, i8 1, i8 4, i32 0, i8 3, i8 5, i8 8, ptr null, i32 -1, i8 0, i8 0, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 3, ptr @.str.48, ptr @.compoundliteral.49, i8 1, i32 4, i32 100, i8 0, i8 0, i8 0, i32 0, i8 0, i8 3, i8 8, ptr null, i32 -1, i8 0, i8 0, ptr null }, %struct.rockchip_clk_branch { i32 209, i32 5, ptr @.str.50, ptr @.compoundliteral.51, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 352, i8 3, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 362, i32 0, ptr @.str.52, ptr @.compoundliteral.53, i8 1, i32 8, i32 100, i8 0, i8 0, i8 0, i32 0, i8 12, i8 3, i8 8, ptr null, i32 352, i8 5, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 477, i32 0, ptr @.str.54, ptr @.compoundliteral.55, i8 1, i32 8, i32 100, i8 0, i8 0, i8 0, i32 0, i8 8, i8 2, i8 8, ptr @div_hclk_cpu_t, i32 352, i8 4, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.56, ptr @.compoundliteral.57, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 404, i8 8, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 125, i32 0, ptr @.str.58, ptr @.compoundliteral.59, i8 1, i32 0, i32 200, i8 0, i8 0, i8 0, i32 0, i8 6, i8 2, i8 8, ptr null, i32 372, i8 4, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.60, ptr @.compoundliteral.61, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 352, i8 7, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 8, ptr @.str.62, ptr @.compoundliteral.63, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 1, i8 2, i8 0, ptr null, i32 0, i8 0, i8 0, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 0, ptr @.str.64, ptr @mux_pll_src_cpll_gpll_p, i8 2, i32 0, i32 112, i8 15, i8 1, i8 4, i32 0, i8 0, i8 7, i8 8, ptr null, i32 368, i8 1, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 4, ptr @.str.65, ptr @.compoundliteral.66, i8 1, i32 4, i32 128, i8 0, i8 0, i8 0, i32 0, i8 16, i8 16, i8 0, ptr null, i32 368, i8 2, i8 3, ptr @rk3288_i2s_fracmux }, %struct.rockchip_clk_branch { i32 113, i32 0, ptr @.str.67, ptr @mux_i2s_clkout_p, i8 2, i32 0, i32 112, i8 12, i8 1, i8 4, i32 0, i8 0, i8 0, i8 0, ptr null, i32 368, i8 0, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 82, i32 5, ptr @.str.68, ptr @.compoundliteral.70, i8 1, i32 4, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 368, i8 3, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 1, ptr @.str.71, ptr @mux_pll_src_cpll_gpll_p, i8 2, i32 0, i32 116, i8 15, i8 1, i8 4, i32 0, i8 0, i8 0, i8 0, ptr null, i32 -1, i8 0, i8 0, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 0, ptr @.str.72, ptr @.compoundliteral.73, i8 1, i32 4, i32 116, i8 0, i8 0, i8 0, i32 0, i8 0, i8 7, i8 8, ptr null, i32 368, i8 4, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 4, ptr @.str.74, ptr @.compoundliteral.75, i8 1, i32 4, i32 132, i8 0, i8 0, i8 0, i32 0, i8 16, i8 16, i8 0, ptr null, i32 368, i8 5, i8 3, ptr @rk3288_spdif_fracmux }, %struct.rockchip_clk_branch { i32 83, i32 5, ptr @.str.76, ptr @.compoundliteral.78, i8 1, i32 4, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 368, i8 6, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 0, ptr @.str.79, ptr @.compoundliteral.80, i8 1, i32 4, i32 256, i8 0, i8 0, i8 0, i32 0, i8 0, i8 7, i8 8, ptr null, i32 368, i8 7, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 4, ptr @.str.81, ptr @.compoundliteral.82, i8 1, i32 4, i32 260, i8 0, i8 0, i8 0, i32 0, i8 16, i8 16, i8 0, ptr null, i32 368, i8 8, i8 3, ptr @rk3288_spdif_8ch_fracmux }, %struct.rockchip_clk_branch { i32 84, i32 5, ptr @.str.83, ptr @.compoundliteral.85, i8 1, i32 4, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 368, i8 9, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.86, ptr @.compoundliteral.87, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 352, i8 12, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 85, i32 5, ptr @.str.88, ptr @.compoundliteral.89, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 356, i8 0, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 86, i32 5, ptr @.str.90, ptr @.compoundliteral.91, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 356, i8 1, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 87, i32 5, ptr @.str.92, ptr @.compoundliteral.93, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 356, i8 2, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 88, i32 5, ptr @.str.94, ptr @.compoundliteral.95, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 356, i8 3, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 89, i32 5, ptr @.str.96, ptr @.compoundliteral.97, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 356, i8 4, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 90, i32 5, ptr @.str.98, ptr @.compoundliteral.99, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 356, i8 5, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 0, ptr @.str.100, ptr @mux_pll_src_cpll_gpll_usb480m_p, i8 3, i32 0, i32 224, i8 6, i8 2, i8 4, i32 0, i8 0, i8 5, i8 8, ptr null, i32 364, i8 9, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 0, ptr @.str.101, ptr @mux_pll_src_cpll_gpll_usb480m_p, i8 3, i32 0, i32 224, i8 14, i8 2, i8 4, i32 0, i8 8, i8 5, i8 8, ptr null, i32 364, i8 11, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 2, ptr @.str.102, ptr @mux_aclk_vcodec_pre_p, i8 2, i32 4, i32 580, i8 7, i8 1, i8 4, i32 0, i8 0, i8 0, i8 0, ptr null, i32 -1, i8 0, i8 0, ptr null }, %struct.rockchip_clk_branch { i32 208, i32 5, ptr @.str.103, ptr @.compoundliteral.104, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 388, i8 0, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 8, ptr @.str.105, ptr @.compoundliteral.106, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 1, i8 4, i8 0, ptr null, i32 364, i8 10, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 476, i32 5, ptr @.str.107, ptr @.compoundliteral.108, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 388, i8 1, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 0, ptr @.str.109, ptr @mux_pll_src_cpll_gpll_usb480m_p, i8 3, i32 8, i32 220, i8 6, i8 2, i8 4, i32 0, i8 0, i8 5, i8 8, ptr null, i32 364, i8 0, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 0, ptr @.str.110, ptr @mux_pll_src_cpll_gpll_usb480m_p, i8 3, i32 8, i32 220, i8 14, i8 2, i8 4, i32 0, i8 8, i8 5, i8 8, ptr null, i32 364, i8 2, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 0, ptr @.str.111, ptr @mux_pll_src_cpll_gpll_usb480m_p, i8 3, i32 0, i32 216, i8 6, i8 2, i8 4, i32 0, i8 0, i8 5, i8 8, ptr null, i32 364, i8 5, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 106, i32 0, ptr @.str.112, ptr @mux_pll_src_cpll_gpll_usb480m_p, i8 3, i32 0, i32 216, i8 14, i8 2, i8 4, i32 0, i8 8, i8 5, i8 8, ptr null, i32 364, i8 4, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 190, i32 0, ptr @.str.113, ptr @mux_pll_src_cpll_gpll_npll_p, i8 3, i32 0, i32 204, i8 0, i8 2, i8 4, i32 0, i8 8, i8 8, i8 8, ptr null, i32 364, i8 1, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 191, i32 0, ptr @.str.114, ptr @mux_pll_src_cpll_gpll_npll_p, i8 3, i32 0, i32 212, i8 6, i8 2, i8 4, i32 0, i8 8, i8 8, i8 8, ptr null, i32 364, i8 3, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 104, i32 0, ptr @.str.115, ptr @mux_edp_24m_p, i8 2, i32 0, i32 208, i8 15, i8 1, i8 4, i32 0, i8 0, i8 0, i8 0, ptr null, i32 364, i8 12, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 105, i32 0, ptr @.str.116, ptr @mux_pll_src_cpll_gpll_npll_p, i8 3, i32 0, i32 208, i8 6, i8 2, i8 4, i32 0, i8 0, i8 6, i8 8, ptr null, i32 364, i8 13, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 107, i32 0, ptr @.str.117, ptr @mux_pll_src_cpll_gpll_npll_p, i8 3, i32 0, i32 120, i8 6, i8 2, i8 4, i32 0, i8 0, i8 6, i8 8, ptr null, i32 364, i8 14, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 108, i32 0, ptr @.str.118, ptr @mux_pll_src_cpll_gpll_npll_p, i8 3, i32 0, i32 120, i8 14, i8 2, i8 4, i32 0, i8 8, i8 6, i8 8, ptr null, i32 364, i8 15, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 109, i32 5, ptr @.str.119, ptr @.compoundliteral.120, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 372, i8 12, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 110, i32 5, ptr @.str.121, ptr @.compoundliteral.122, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 372, i8 11, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 207, i32 0, ptr @.str.123, ptr @mux_pll_src_cpll_gpll_npll_p, i8 3, i32 0, i32 252, i8 14, i8 2, i8 4, i32 0, i8 8, i8 5, i8 8, ptr null, i32 404, i8 13, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 475, i32 3, ptr @.str.124, ptr @.compoundliteral.125, i8 1, i32 0, i32 256, i8 0, i8 0, i8 0, i32 0, i8 12, i8 2, i8 8, ptr null, i32 -1, i8 0, i8 0, ptr null }, %struct.rockchip_clk_branch { i32 111, i32 0, ptr @.str.126, ptr @mux_pll_src_cpll_gpll_npll_p, i8 3, i32 0, i32 264, i8 6, i8 2, i8 4, i32 0, i8 0, i8 5, i8 8, ptr null, i32 404, i8 14, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 112, i32 0, ptr @.str.127, ptr @mux_pll_src_cpll_gpll_npll_p, i8 3, i32 0, i32 264, i8 14, i8 2, i8 4, i32 0, i8 8, i8 5, i8 8, ptr null, i32 404, i8 15, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 0, ptr @.str.128, ptr @mux_pll_src_cpll_gpll_p, i8 2, i32 0, i32 200, i8 8, i8 1, i8 4, i32 0, i8 0, i8 0, i8 0, ptr null, i32 364, i8 7, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 127, i32 0, ptr @.str.129, ptr @mux_vip_out_p, i8 2, i32 0, i32 200, i8 15, i8 1, i8 4, i32 0, i8 9, i8 5, i8 8, ptr null, i32 -1, i8 0, i8 0, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 3, ptr @.str.130, ptr @.compoundliteral.131, i8 1, i32 0, i32 228, i8 0, i8 0, i8 0, i32 0, i8 8, i8 5, i8 8, ptr null, i32 -1, i8 0, i8 0, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 0, ptr @.str.132, ptr @.compoundliteral.133, i8 1, i32 8, i32 228, i8 0, i8 0, i8 0, i32 0, i8 0, i8 5, i8 8, ptr null, i32 372, i8 8, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 64, i32 0, ptr @.str.134, ptr @mux_pll_src_cpll_gll_usb_npll_p, i8 4, i32 0, i32 232, i8 6, i8 2, i8 4, i32 0, i8 0, i8 5, i8 8, ptr null, i32 372, i8 7, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 0, ptr @.str.135, ptr @mux_pll_src_cpll_gpll_p, i8 2, i32 8, i32 136, i8 15, i8 1, i8 4, i32 0, i8 0, i8 5, i8 8, ptr null, i32 360, i8 0, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 363, i32 0, ptr @.str.136, ptr @.compoundliteral.137, i8 1, i32 0, i32 136, i8 0, i8 0, i8 0, i32 0, i8 12, i8 2, i8 10, ptr null, i32 360, i8 3, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 478, i32 0, ptr @.str.138, ptr @.compoundliteral.139, i8 1, i32 8, i32 136, i8 0, i8 0, i8 0, i32 0, i8 8, i8 2, i8 10, ptr null, i32 360, i8 2, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 210, i32 5, ptr @.str.140, ptr @.compoundliteral.141, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 360, i8 1, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 65, i32 0, ptr @.str.142, ptr @mux_pll_src_cpll_gpll_p, i8 2, i32 0, i32 196, i8 7, i8 1, i8 4, i32 0, i8 0, i8 7, i8 8, ptr null, i32 360, i8 9, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 66, i32 0, ptr @.str.143, ptr @mux_pll_src_cpll_gpll_p, i8 2, i32 0, i32 196, i8 15, i8 1, i8 4, i32 0, i8 8, i8 7, i8 8, ptr null, i32 360, i8 10, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 67, i32 0, ptr @.str.144, ptr @mux_pll_src_cpll_gpll_p, i8 2, i32 0, i32 252, i8 7, i8 1, i8 4, i32 0, i8 0, i8 7, i8 8, ptr null, i32 360, i8 11, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 68, i32 0, ptr @.str.145, ptr @mux_mmc_src_p, i8 4, i32 0, i32 140, i8 6, i8 2, i8 4, i32 0, i8 0, i8 6, i8 8, ptr null, i32 404, i8 0, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 69, i32 0, ptr @.str.146, ptr @mux_mmc_src_p, i8 4, i32 0, i32 144, i8 6, i8 2, i8 4, i32 0, i8 0, i8 6, i8 8, ptr null, i32 404, i8 1, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 70, i32 0, ptr @.str.147, ptr @mux_mmc_src_p, i8 4, i32 0, i32 232, i8 14, i8 2, i8 4, i32 0, i8 8, i8 6, i8 8, ptr null, i32 404, i8 2, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 71, i32 0, ptr @.str.148, ptr @mux_mmc_src_p, i8 4, i32 0, i32 144, i8 14, i8 2, i8 4, i32 0, i8 8, i8 6, i8 8, ptr null, i32 404, i8 3, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 114, i32 6, ptr @.str.149, ptr @.compoundliteral.150, i8 1, i32 0, i32 512, i8 0, i8 0, i8 0, i32 0, i8 1, i8 0, i8 0, ptr null, i32 0, i8 0, i8 0, ptr null }, %struct.rockchip_clk_branch { i32 118, i32 6, ptr @.str.151, ptr @.compoundliteral.152, i8 1, i32 0, i32 516, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 0, i8 0, i8 0, ptr null }, %struct.rockchip_clk_branch { i32 115, i32 6, ptr @.str.153, ptr @.compoundliteral.154, i8 1, i32 0, i32 520, i8 0, i8 0, i8 0, i32 0, i8 1, i8 0, i8 0, ptr null, i32 0, i8 0, i8 0, ptr null }, %struct.rockchip_clk_branch { i32 119, i32 6, ptr @.str.155, ptr @.compoundliteral.156, i8 1, i32 0, i32 524, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 0, i8 0, i8 0, ptr null }, %struct.rockchip_clk_branch { i32 116, i32 6, ptr @.str.157, ptr @.compoundliteral.158, i8 1, i32 0, i32 528, i8 0, i8 0, i8 0, i32 0, i8 1, i8 0, i8 0, ptr null, i32 0, i8 0, i8 0, ptr null }, %struct.rockchip_clk_branch { i32 120, i32 6, ptr @.str.159, ptr @.compoundliteral.160, i8 1, i32 0, i32 532, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 0, i8 0, i8 0, ptr null }, %struct.rockchip_clk_branch { i32 117, i32 6, ptr @.str.161, ptr @.compoundliteral.162, i8 1, i32 0, i32 536, i8 0, i8 0, i8 0, i32 0, i8 1, i8 0, i8 0, ptr null, i32 0, i8 0, i8 0, ptr null }, %struct.rockchip_clk_branch { i32 121, i32 6, ptr @.str.163, ptr @.compoundliteral.164, i8 1, i32 0, i32 540, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 0, i8 0, i8 0, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 0, ptr @.str.165, ptr @mux_tspout_p, i8 4, i32 0, i32 236, i8 14, i8 2, i8 4, i32 0, i8 8, i8 5, i8 8, ptr null, i32 368, i8 11, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 0, ptr @.str.166, ptr @mux_pll_src_cpll_gpll_npll_p, i8 3, i32 0, i32 236, i8 6, i8 2, i8 4, i32 0, i8 0, i8 5, i8 8, ptr null, i32 368, i8 10, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 93, i32 5, ptr @.str.167, ptr @.compoundliteral.168, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 404, i8 4, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 94, i32 5, ptr @.str.169, ptr @.compoundliteral.170, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 404, i8 5, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 95, i32 5, ptr @.str.171, ptr @.compoundliteral.172, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 404, i8 6, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 96, i32 5, ptr @.str.173, ptr @.compoundliteral.174, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 404, i8 7, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 72, i32 0, ptr @.str.175, ptr @.compoundliteral.176, i8 1, i32 0, i32 104, i8 0, i8 0, i8 0, i32 0, i8 0, i8 6, i8 8, ptr null, i32 360, i8 7, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 73, i32 0, ptr @.str.177, ptr @.compoundliteral.178, i8 1, i32 0, i32 192, i8 0, i8 0, i8 0, i32 0, i8 8, i8 8, i8 8, ptr null, i32 360, i8 8, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 74, i32 5, ptr @.str.179, ptr @.compoundliteral.180, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 372, i8 13, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 75, i32 0, ptr @.str.181, ptr @mux_pll_src_cpll_gpll_p, i8 2, i32 0, i32 248, i8 7, i8 1, i8 4, i32 0, i8 0, i8 5, i8 8, ptr null, i32 372, i8 5, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 76, i32 0, ptr @.str.182, ptr @mux_pll_src_cpll_gpll_p, i8 2, i32 0, i32 248, i8 15, i8 1, i8 4, i32 0, i8 8, i8 5, i8 8, ptr null, i32 372, i8 6, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 0, ptr @.str.183, ptr @mux_pll_src_cpll_gll_usb_npll_p, i8 4, i32 0, i32 148, i8 13, i8 2, i8 4, i32 0, i8 0, i8 7, i8 8, ptr null, i32 356, i8 8, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 4, ptr @.str.184, ptr @.compoundliteral.185, i8 1, i32 4, i32 164, i8 0, i8 0, i8 0, i32 0, i8 16, i8 16, i8 0, ptr null, i32 356, i8 9, i8 3, ptr @rk3288_uart0_fracmux }, %struct.rockchip_clk_branch { i32 0, i32 1, ptr @.str.186, ptr @mux_pll_src_cpll_gpll_p, i8 2, i32 0, i32 148, i8 15, i8 1, i8 4, i32 0, i8 0, i8 0, i8 0, ptr null, i32 -1, i8 0, i8 0, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 0, ptr @.str.187, ptr @.compoundliteral.188, i8 1, i32 0, i32 152, i8 0, i8 0, i8 0, i32 0, i8 0, i8 7, i8 8, ptr null, i32 356, i8 10, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 4, ptr @.str.189, ptr @.compoundliteral.190, i8 1, i32 4, i32 168, i8 0, i8 0, i8 0, i32 0, i8 16, i8 16, i8 0, ptr null, i32 356, i8 11, i8 3, ptr @rk3288_uart1_fracmux }, %struct.rockchip_clk_branch { i32 0, i32 0, ptr @.str.191, ptr @.compoundliteral.192, i8 1, i32 0, i32 156, i8 0, i8 0, i8 0, i32 0, i8 0, i8 7, i8 8, ptr null, i32 356, i8 12, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 4, ptr @.str.193, ptr @.compoundliteral.194, i8 1, i32 4, i32 172, i8 0, i8 0, i8 0, i32 0, i8 16, i8 16, i8 0, ptr null, i32 356, i8 13, i8 3, ptr @rk3288_uart2_fracmux }, %struct.rockchip_clk_branch { i32 0, i32 0, ptr @.str.195, ptr @.compoundliteral.196, i8 1, i32 0, i32 160, i8 0, i8 0, i8 0, i32 0, i8 0, i8 7, i8 8, ptr null, i32 356, i8 14, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 4, ptr @.str.197, ptr @.compoundliteral.198, i8 1, i32 4, i32 176, i8 0, i8 0, i8 0, i32 0, i8 16, i8 16, i8 0, ptr null, i32 356, i8 15, i8 3, ptr @rk3288_uart3_fracmux }, %struct.rockchip_clk_branch { i32 0, i32 0, ptr @.str.199, ptr @.compoundliteral.200, i8 1, i32 0, i32 108, i8 0, i8 0, i8 0, i32 0, i8 0, i8 7, i8 8, ptr null, i32 360, i8 12, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 4, ptr @.str.201, ptr @.compoundliteral.202, i8 1, i32 4, i32 124, i8 0, i8 0, i8 0, i32 0, i8 16, i8 16, i8 0, ptr null, i32 360, i8 13, i8 3, ptr @rk3288_uart4_fracmux }, %struct.rockchip_clk_branch { i32 0, i32 0, ptr @.str.203, ptr @mux_pll_src_npll_cpll_gpll_p, i8 3, i32 0, i32 180, i8 0, i8 2, i8 4, i32 0, i8 8, i8 5, i8 8, ptr null, i32 360, i8 5, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 151, i32 1, ptr @.str.204, ptr @mux_mac_p, i8 2, i32 4, i32 180, i8 4, i8 1, i8 4, i32 0, i8 0, i8 0, i8 0, ptr null, i32 -1, i8 0, i8 0, ptr null }, %struct.rockchip_clk_branch { i32 152, i32 5, ptr @.str.205, ptr @.compoundliteral.206, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 372, i8 3, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 99, i32 5, ptr @.str.207, ptr @.compoundliteral.208, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 372, i8 2, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 102, i32 5, ptr @.str.209, ptr @.compoundliteral.210, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 372, i8 0, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 103, i32 5, ptr @.str.211, ptr @.compoundliteral.212, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 372, i8 1, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 0, ptr @.str.213, ptr @mux_pll_src_cpll_gpll_p, i8 2, i32 0, i32 184, i8 0, i8 1, i8 4, i32 0, i8 8, i8 8, i8 8, ptr null, i32 360, i8 6, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 1, ptr @.str.214, ptr @mux_hsadcout_p, i8 2, i32 0, i32 184, i8 4, i8 1, i8 4, i32 0, i8 0, i8 0, i8 0, ptr null, i32 -1, i8 0, i8 0, ptr null }, %struct.rockchip_clk_branch { i32 92, i32 7, ptr @.str.215, ptr @.compoundliteral.216, i8 1, i32 0, i32 184, i8 0, i8 0, i8 0, i32 0, i8 7, i8 0, i8 1, ptr null, i32 0, i8 0, i8 0, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.217, ptr @.compoundliteral.219, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 368, i8 14, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 122, i32 0, ptr @.str.220, ptr @mux_usbphy480m_p, i8 3, i32 0, i32 148, i8 11, i8 2, i8 4, i32 0, i8 0, i8 0, i8 0, ptr null, i32 372, i8 14, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 97, i32 0, ptr @.str.221, ptr @mux_hsicphy480m_p, i8 3, i32 0, i32 212, i8 0, i8 2, i8 4, i32 0, i8 0, i8 0, i8 0, ptr null, i32 364, i8 6, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.222, ptr @.compoundliteral.223, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 404, i8 9, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 3, ptr @.str.224, ptr @.compoundliteral.225, i8 1, i32 0, i32 140, i8 0, i8 0, i8 0, i32 0, i8 8, i8 6, i8 8, ptr null, i32 -1, i8 0, i8 0, ptr null }, %struct.rockchip_clk_branch { i32 98, i32 1, ptr @.str.226, ptr @mux_hsicphy12m_p, i8 2, i32 0, i32 184, i8 4, i8 1, i8 4, i32 0, i8 0, i8 0, i8 0, ptr null, i32 -1, i8 0, i8 0, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.227, ptr @.compoundliteral.228, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 392, i8 5, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.229, ptr @.compoundliteral.230, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 392, i8 6, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.231, ptr @.compoundliteral.232, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 392, i8 7, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 193, i32 5, ptr @.str.233, ptr @.compoundliteral.234, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 392, i8 12, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.235, ptr @.compoundliteral.236, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 392, i8 13, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.237, ptr @.compoundliteral.238, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 392, i8 4, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 199, i32 5, ptr @.str.239, ptr @.compoundliteral.240, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 396, i8 6, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.241, ptr @.compoundliteral.242, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 396, i8 8, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 461, i32 5, ptr @.str.243, ptr @.compoundliteral.244, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 396, i8 7, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 462, i32 5, ptr @.str.245, ptr @.compoundliteral.246, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 392, i8 8, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 467, i32 5, ptr @.str.247, ptr @.compoundliteral.248, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 392, i8 9, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 463, i32 5, ptr @.str.249, ptr @.compoundliteral.250, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 392, i8 10, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 464, i32 5, ptr @.str.251, ptr @.compoundliteral.252, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 392, i8 11, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 350, i32 5, ptr @.str.253, ptr @.compoundliteral.254, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 392, i8 0, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 353, i32 5, ptr @.str.255, ptr @.compoundliteral.256, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 392, i8 1, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 332, i32 5, ptr @.str.257, ptr @.compoundliteral.258, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 392, i8 2, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 334, i32 5, ptr @.str.259, ptr @.compoundliteral.260, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 392, i8 3, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 364, i32 5, ptr @.str.261, ptr @.compoundliteral.262, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 392, i8 14, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 365, i32 5, ptr @.str.263, ptr @.compoundliteral.264, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 392, i8 15, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 366, i32 5, ptr @.str.265, ptr @.compoundliteral.266, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 396, i8 0, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 367, i32 5, ptr @.str.267, ptr @.compoundliteral.268, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 396, i8 1, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 370, i32 5, ptr @.str.269, ptr @.compoundliteral.270, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 396, i8 2, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 354, i32 5, ptr @.str.271, ptr @.compoundliteral.272, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 396, i8 3, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 343, i32 5, ptr @.str.273, ptr @.compoundliteral.274, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 396, i8 9, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 369, i32 5, ptr @.str.275, ptr @.compoundliteral.276, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 396, i8 10, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 351, i32 5, ptr @.str.277, ptr @.compoundliteral.278, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 396, i8 11, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.279, ptr @.compoundliteral.280, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 396, i8 4, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.281, ptr @.compoundliteral.282, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 396, i8 5, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.283, ptr @.compoundliteral.284, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 368, i8 12, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.285, ptr @.compoundliteral.286, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 368, i8 13, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.287, ptr @.compoundliteral.288, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 376, i8 2, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 194, i32 5, ptr @.str.289, ptr @.compoundliteral.290, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 376, i8 3, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.291, ptr @.compoundliteral.292, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 380, i8 11, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 195, i32 5, ptr @.str.293, ptr @.compoundliteral.294, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 384, i8 12, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 196, i32 5, ptr @.str.295, ptr @.compoundliteral.296, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 384, i8 0, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 448, i32 5, ptr @.str.297, ptr @.compoundliteral.298, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 384, i8 2, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.299, ptr @.compoundliteral.300, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 376, i8 0, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 449, i32 5, ptr @.str.301, ptr @.compoundliteral.302, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 380, i8 4, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 450, i32 5, ptr @.str.303, ptr @.compoundliteral.304, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 380, i8 6, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 451, i32 5, ptr @.str.305, ptr @.compoundliteral.306, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 380, i8 7, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 452, i32 5, ptr @.str.307, ptr @.compoundliteral.308, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 380, i8 8, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.309, ptr @.compoundliteral.310, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 380, i8 9, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.311, ptr @.compoundliteral.312, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 380, i8 10, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.313, ptr @.compoundliteral.314, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 380, i8 12, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.315, ptr @.compoundliteral.316, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 380, i8 13, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 453, i32 5, ptr @.str.317, ptr @.compoundliteral.318, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 380, i8 14, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 454, i32 5, ptr @.str.319, ptr @.compoundliteral.320, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 380, i8 15, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 455, i32 5, ptr @.str.321, ptr @.compoundliteral.322, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 384, i8 8, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 456, i32 5, ptr @.str.323, ptr @.compoundliteral.324, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 384, i8 3, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 457, i32 5, ptr @.str.325, ptr @.compoundliteral.326, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 384, i8 4, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 458, i32 5, ptr @.str.327, ptr @.compoundliteral.328, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 384, i8 5, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 459, i32 5, ptr @.str.329, ptr @.compoundliteral.330, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 384, i8 6, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 460, i32 5, ptr @.str.331, ptr @.compoundliteral.332, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 384, i8 7, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.333, ptr @.compoundliteral.334, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 380, i8 5, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.335, ptr @.compoundliteral.336, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 376, i8 1, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 338, i32 5, ptr @.str.337, ptr @.compoundliteral.338, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 376, i8 4, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 339, i32 5, ptr @.str.339, ptr @.compoundliteral.340, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 376, i8 5, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 340, i32 5, ptr @.str.341, ptr @.compoundliteral.342, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 376, i8 6, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 352, i32 5, ptr @.str.343, ptr @.compoundliteral.344, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 376, i8 7, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 341, i32 5, ptr @.str.345, ptr @.compoundliteral.346, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 376, i8 8, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 342, i32 5, ptr @.str.347, ptr @.compoundliteral.348, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 376, i8 9, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 336, i32 5, ptr @.str.349, ptr @.compoundliteral.350, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 376, i8 15, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 344, i32 5, ptr @.str.351, ptr @.compoundliteral.352, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 376, i8 11, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 345, i32 5, ptr @.str.353, ptr @.compoundliteral.354, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 376, i8 12, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 333, i32 5, ptr @.str.355, ptr @.compoundliteral.356, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 376, i8 13, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 335, i32 5, ptr @.str.357, ptr @.compoundliteral.358, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 376, i8 14, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 347, i32 5, ptr @.str.359, ptr @.compoundliteral.360, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 380, i8 1, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 346, i32 5, ptr @.str.361, ptr @.compoundliteral.362, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 380, i8 2, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 348, i32 5, ptr @.str.363, ptr @.compoundliteral.364, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 380, i8 3, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 337, i32 5, ptr @.str.365, ptr @.compoundliteral.366, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 380, i8 0, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 349, i32 5, ptr @.str.367, ptr @.compoundliteral.368, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 384, i8 1, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 100, i32 5, ptr @.str.369, ptr @.compoundliteral.370, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 404, i8 10, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 101, i32 5, ptr @.str.371, ptr @.compoundliteral.372, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 404, i8 11, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 123, i32 5, ptr @.str.373, ptr @.compoundliteral.374, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 372, i8 9, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 124, i32 5, ptr @.str.375, ptr @.compoundliteral.376, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 372, i8 10, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 126, i32 5, ptr @.str.377, ptr @.compoundliteral.378, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 372, i8 15, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 192, i32 5, ptr @.str.379, ptr @.compoundliteral.380, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 424, i8 0, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 328, i32 5, ptr @.str.381, ptr @.compoundliteral.382, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 408, i8 8, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 327, i32 5, ptr @.str.383, ptr @.compoundliteral.384, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 408, i8 7, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 321, i32 5, ptr @.str.385, ptr @.compoundliteral.386, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 408, i8 1, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 322, i32 5, ptr @.str.387, ptr @.compoundliteral.388, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 408, i8 2, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 323, i32 5, ptr @.str.389, ptr @.compoundliteral.390, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 408, i8 3, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 324, i32 5, ptr @.str.391, ptr @.compoundliteral.392, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 408, i8 4, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 325, i32 5, ptr @.str.393, ptr @.compoundliteral.394, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 408, i8 5, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 326, i32 5, ptr @.str.395, ptr @.compoundliteral.396, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 408, i8 6, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 329, i32 5, ptr @.str.397, ptr @.compoundliteral.398, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 408, i8 11, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.399, ptr @.compoundliteral.400, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 408, i8 12, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 368, i32 8, ptr @.str.401, ptr @.compoundliteral.402, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 1, i8 1, i8 0, ptr null, i32 0, i8 0, i8 0, ptr null }, %struct.rockchip_clk_branch { i32 331, i32 5, ptr @.str.403, ptr @.compoundliteral.404, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 420, i8 0, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.405, ptr @.compoundliteral.406, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 420, i8 1, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.407, ptr @.compoundliteral.408, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 420, i8 2, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 330, i32 5, ptr @.str.409, ptr @.compoundliteral.410, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 420, i8 3, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 320, i32 5, ptr @.str.411, ptr @.compoundliteral.412, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 420, i8 4, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 470, i32 5, ptr @.str.413, ptr @.compoundliteral.415, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 412, i8 1, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 465, i32 5, ptr @.str.416, ptr @.compoundliteral.417, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 412, i8 6, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 466, i32 5, ptr @.str.418, ptr @.compoundliteral.419, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 412, i8 8, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 471, i32 5, ptr @.str.420, ptr @.compoundliteral.421, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 412, i8 9, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 472, i32 5, ptr @.str.422, ptr @.compoundliteral.423, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 412, i8 10, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 473, i32 5, ptr @.str.424, ptr @.compoundliteral.425, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 412, i8 15, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 468, i32 5, ptr @.str.426, ptr @.compoundliteral.427, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 412, i8 3, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 469, i32 5, ptr @.str.428, ptr @.compoundliteral.429, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 416, i8 1, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 474, i32 5, ptr @.str.430, ptr @.compoundliteral.431, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 416, i8 10, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 356, i32 5, ptr @.str.432, ptr @.compoundliteral.433, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 416, i8 4, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 357, i32 5, ptr @.str.434, ptr @.compoundliteral.435, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 416, i8 5, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 358, i32 5, ptr @.str.436, ptr @.compoundliteral.437, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 416, i8 6, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 359, i32 5, ptr @.str.438, ptr @.compoundliteral.439, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 416, i8 7, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 355, i32 5, ptr @.str.440, ptr @.compoundliteral.441, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 416, i8 8, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 360, i32 5, ptr @.str.442, ptr @.compoundliteral.443, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 416, i8 9, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 361, i32 5, ptr @.str.444, ptr @.compoundliteral.445, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 416, i8 11, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 197, i32 5, ptr @.str.446, ptr @.compoundliteral.447, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 412, i8 5, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 202, i32 5, ptr @.str.448, ptr @.compoundliteral.449, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 412, i8 2, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 203, i32 5, ptr @.str.450, ptr @.compoundliteral.451, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 412, i8 11, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 204, i32 5, ptr @.str.452, ptr @.compoundliteral.453, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 412, i8 14, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 198, i32 5, ptr @.str.454, ptr @.compoundliteral.455, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 412, i8 7, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 205, i32 5, ptr @.str.456, ptr @.compoundliteral.457, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 416, i8 2, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 206, i32 5, ptr @.str.458, ptr @.compoundliteral.459, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 412, i8 12, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 200, i32 5, ptr @.str.460, ptr @.compoundliteral.461, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 412, i8 0, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 201, i32 5, ptr @.str.462, ptr @.compoundliteral.463, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 412, i8 13, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.464, ptr @.compoundliteral.466, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 416, i8 0, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 7, ptr @.str.467, ptr @.compoundliteral.468, i8 1, i32 0, i32 212, i8 0, i8 0, i8 0, i32 0, i8 4, i8 0, i8 1, ptr null, i32 0, i8 0, i8 0, ptr null }, %struct.rockchip_clk_branch { i32 371, i32 5, ptr @.str.469, ptr @.compoundliteral.471, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 416, i8 3, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 7, ptr @.str.472, ptr @.compoundliteral.473, i8 1, i32 0, i32 212, i8 0, i8 0, i8 0, i32 0, i8 3, i8 0, i8 1, ptr null, i32 0, i8 0, i8 0, ptr null }], section ".init.data", align 4
@rk3288w_hclkvio_branch = internal global [1 x %struct.rockchip_clk_branch] [%struct.rockchip_clk_branch { i32 0, i32 3, ptr @.str.414, ptr @.compoundliteral.488, i8 1, i32 0, i32 208, i8 0, i8 0, i8 0, i32 0, i8 8, i8 5, i8 8, ptr null, i32 -1, i8 0, i8 0, ptr null }], section ".init.data", align 4
@rk3288_hclkvio_branch = internal global [1 x %struct.rockchip_clk_branch] [%struct.rockchip_clk_branch { i32 0, i32 3, ptr @.str.414, ptr @.compoundliteral.489, i8 1, i32 0, i32 208, i8 0, i8 0, i8 0, i32 0, i8 8, i8 5, i8 8, ptr null, i32 -1, i8 0, i8 0, ptr null }], section ".init.data", align 4
@rk3288_critical_clocks = internal constant [13 x ptr] [ptr @.str.50, ptr @.str.140, ptr @.str.291, ptr @.str.450, ptr @.str.458, ptr @.str.462, ptr @.str.138, ptr @.str.422, ptr @.str.399, ptr @.str.132, ptr @.str.407, ptr @.str.333, ptr @.str.277], section ".init.rodata", align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"armclk\00", align 1
@mux_armclk_p = internal constant [2 x ptr] [ptr @.str.11, ptr @.str.12], section ".init.rodata", align 4
@rk3288_cpuclk_data = internal constant %struct.rockchip_cpuclk_reg_data { [4 x i32] [i32 96, i32 0, i32 0, i32 0], [4 x i8] c"\08\00\00\00", [4 x i32] [i32 31, i32 0, i32 0, i32 0], i32 1, i8 1, i8 0, i8 15, i32 1 }, align 4
@rk3288_cpuclk_rates = internal global [14 x %struct.rockchip_cpuclk_rate_table] [%struct.rockchip_cpuclk_rate_table { i32 1800000000, [5 x %struct.rockchip_cpuclk_clksel] [%struct.rockchip_cpuclk_clksel { i32 96, i32 16711729 }, %struct.rockchip_cpuclk_clksel { i32 244, i32 1073153585 }, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer] }, %struct.rockchip_cpuclk_rate_table { i32 1704000000, [5 x %struct.rockchip_cpuclk_clksel] [%struct.rockchip_cpuclk_clksel { i32 96, i32 16711729 }, %struct.rockchip_cpuclk_clksel { i32 244, i32 1073153585 }, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer] }, %struct.rockchip_cpuclk_rate_table { i32 1608000000, [5 x %struct.rockchip_cpuclk_clksel] [%struct.rockchip_cpuclk_clksel { i32 96, i32 16711729 }, %struct.rockchip_cpuclk_clksel { i32 244, i32 1073153585 }, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer] }, %struct.rockchip_cpuclk_rate_table { i32 1512000000, [5 x %struct.rockchip_cpuclk_clksel] [%struct.rockchip_cpuclk_clksel { i32 96, i32 16711729 }, %struct.rockchip_cpuclk_clksel { i32 244, i32 1073153585 }, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer] }, %struct.rockchip_cpuclk_rate_table { i32 1416000000, [5 x %struct.rockchip_cpuclk_clksel] [%struct.rockchip_cpuclk_clksel { i32 96, i32 16711729 }, %struct.rockchip_cpuclk_clksel { i32 244, i32 1073153585 }, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer] }, %struct.rockchip_cpuclk_rate_table { i32 1200000000, [5 x %struct.rockchip_cpuclk_clksel] [%struct.rockchip_cpuclk_clksel { i32 96, i32 16711729 }, %struct.rockchip_cpuclk_clksel { i32 244, i32 1073153585 }, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer] }, %struct.rockchip_cpuclk_rate_table { i32 1008000000, [5 x %struct.rockchip_cpuclk_clksel] [%struct.rockchip_cpuclk_clksel { i32 96, i32 16711729 }, %struct.rockchip_cpuclk_clksel { i32 244, i32 1073153585 }, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer] }, %struct.rockchip_cpuclk_rate_table { i32 816000000, [5 x %struct.rockchip_cpuclk_clksel] [%struct.rockchip_cpuclk_clksel { i32 96, i32 16711729 }, %struct.rockchip_cpuclk_clksel { i32 244, i32 1073153585 }, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer] }, %struct.rockchip_cpuclk_rate_table { i32 696000000, [5 x %struct.rockchip_cpuclk_clksel] [%struct.rockchip_cpuclk_clksel { i32 96, i32 16711729 }, %struct.rockchip_cpuclk_clksel { i32 244, i32 1073153585 }, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer] }, %struct.rockchip_cpuclk_rate_table { i32 600000000, [5 x %struct.rockchip_cpuclk_clksel] [%struct.rockchip_cpuclk_clksel { i32 96, i32 16711729 }, %struct.rockchip_cpuclk_clksel { i32 244, i32 1073153585 }, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer] }, %struct.rockchip_cpuclk_rate_table { i32 408000000, [5 x %struct.rockchip_cpuclk_clksel] [%struct.rockchip_cpuclk_clksel { i32 96, i32 16711729 }, %struct.rockchip_cpuclk_clksel { i32 244, i32 1073153585 }, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer] }, %struct.rockchip_cpuclk_rate_table { i32 312000000, [5 x %struct.rockchip_cpuclk_clksel] [%struct.rockchip_cpuclk_clksel { i32 96, i32 16711729 }, %struct.rockchip_cpuclk_clksel { i32 244, i32 1073153585 }, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer] }, %struct.rockchip_cpuclk_rate_table { i32 216000000, [5 x %struct.rockchip_cpuclk_clksel] [%struct.rockchip_cpuclk_clksel { i32 96, i32 16711729 }, %struct.rockchip_cpuclk_clksel { i32 244, i32 1073153585 }, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer] }, %struct.rockchip_cpuclk_rate_table { i32 126000000, [5 x %struct.rockchip_cpuclk_clksel] [%struct.rockchip_cpuclk_clksel { i32 96, i32 16711729 }, %struct.rockchip_cpuclk_clksel { i32 244, i32 1073153585 }, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer] }], section ".init.data", align 4
@rk3288_clk_syscore_ops = internal global %struct.syscore_ops { %struct.list_head zeroinitializer, ptr @rk3288_clk_suspend, ptr @rk3288_clk_resume, ptr null }, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"apll\00", align 1
@mux_pll_p = internal constant [2 x ptr] [ptr @.str.8, ptr @.str.9], section ".init.rodata", align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"dpll\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"cpll\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"gpll\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"npll\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"xin24m\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"xin32k\00", align 1
@rk3288_pll_rates = internal global <{ { i32, { %struct.anon.5, [8 x i8] } }, { i32, { %struct.anon.5, [8 x i8] } }, { i32, { %struct.anon.5, [8 x i8] } }, { i32, { %struct.anon.5, [8 x i8] } }, { i32, { %struct.anon.5, [8 x i8] } }, { i32, { %struct.anon.5, [8 x i8] } }, { i32, { %struct.anon.5, [8 x i8] } }, { i32, { %struct.anon.5, [8 x i8] } }, { i32, { %struct.anon.5, [8 x i8] } }, { i32, { %struct.anon.5, [8 x i8] } }, { i32, { %struct.anon.5, [8 x i8] } }, { i32, { %struct.anon.5, [8 x i8] } }, { i32, { %struct.anon.5, [8 x i8] } }, { i32, { %struct.anon.5, [8 x i8] } }, { i32, { %struct.anon.5, [8 x i8] } }, { i32, { %struct.anon.5, [8 x i8] } }, { i32, { %struct.anon.5, [8 x i8] } }, { i32, { %struct.anon.5, [8 x i8] } }, { i32, { %struct.anon.5, [8 x i8] } }, { i32, { %struct.anon.5, [8 x i8] } }, { i32, { %struct.anon.5, [8 x i8] } }, { i32, { %struct.anon.5, [8 x i8] } }, { i32, { %struct.anon.5, [8 x i8] } }, { i32, { %struct.anon.5, [8 x i8] } }, { i32, { %struct.anon.5, [8 x i8] } }, { i32, { %struct.anon.5, [8 x i8] } }, { i32, { %struct.anon.5, [8 x i8] } }, { i32, { %struct.anon.5, [8 x i8] } }, { i32, { %struct.anon.5, [8 x i8] } }, { i32, { %struct.anon.5, [8 x i8] } }, { i32, { %struct.anon.5, [8 x i8] } }, { i32, { %struct.anon.5, [8 x i8] } }, { i32, { %struct.anon.5, [8 x i8] } }, { i32, { %struct.anon.5, [8 x i8] } }, { i32, { %struct.anon.5, [8 x i8] } }, { i32, { %struct.anon.5, [8 x i8] } }, { i32, { %struct.anon.5, [8 x i8] } }, { i32, { %struct.anon.5, [8 x i8] } }, { i32, { %struct.anon.5, [8 x i8] } }, { i32, { %struct.anon.5, [8 x i8] } }, { i32, { %struct.anon.5, [8 x i8] } }, { i32, { %struct.anon.5, [8 x i8] } }, { i32, { %struct.anon.5, [8 x i8] } }, { i32, { %struct.anon.5, [8 x i8] } }, { i32, { %struct.anon.5, [8 x i8] } }, { i32, { %struct.anon.5, [8 x i8] } }, { i32, { %struct.anon.5, [8 x i8] } }, { i32, { %struct.anon.5, [8 x i8] } }, { i32, { %struct.anon.5, [8 x i8] } }, { i32, { %struct.anon.5, [8 x i8] } }, { i32, { %struct.anon.5, [8 x i8] } }, { i32, { %struct.anon.5, [8 x i8] } }, { i32, { %struct.anon.5, [8 x i8] } }, { i32, { %struct.anon.5, [8 x i8] } }, { i32, { %struct.anon.5, [8 x i8] } }, { i32, { %struct.anon.5, [8 x i8] } }, { i32, { %struct.anon.5, [8 x i8] } }, { i32, { %struct.anon.5, [8 x i8] } }, { i32, { %struct.anon.5, [8 x i8] } }, { i32, { %struct.anon.5, [8 x i8] } }, { i32, { %struct.anon.5, [8 x i8] } }, { i32, { %struct.anon.5, [8 x i8] } }, { i32, { %struct.anon.5, [8 x i8] } }, { i32, { %struct.anon.5, [8 x i8] } }, { i32, { %struct.anon.5, [8 x i8] } }, { i32, { %struct.anon.5, [8 x i8] } }, { i32, { %struct.anon.5, [8 x i8] } }, { i32, { %struct.anon.5, [8 x i8] } }, { i32, { %struct.anon.5, [8 x i8] } }, { i32, { %struct.anon.5, [8 x i8] } }, { i32, { %struct.anon.5, [8 x i8] } }, { i32, { %struct.anon.5, [8 x i8] } }, { i32, { %struct.anon.5, [8 x i8] } }, { i32, { %struct.anon.5, [8 x i8] } }, { i32, { %struct.anon.5, [8 x i8] } }, { i32, { %struct.anon.5, [8 x i8] } }, { i32, { %struct.anon.5, [8 x i8] } }, { i32, { %struct.anon.5, [8 x i8] } }, { i32, { %struct.anon.5, [8 x i8] } }, { i32, { %struct.anon.5, [8 x i8] } }, { i32, { %struct.anon.5, [8 x i8] } }, { i32, { %struct.anon.5, [8 x i8] } }, { i32, { %struct.anon.5, [8 x i8] } }, { i32, { %struct.anon.5, [8 x i8] } }, { i32, { %struct.anon.5, [8 x i8] } }, { i32, { %struct.anon.5, [8 x i8] } }, { i32, { %struct.anon.5, [8 x i8] } }, { i32, { %struct.anon.5, [8 x i8] } }, { i32, { %struct.anon.5, [8 x i8] } }, { i32, { %struct.anon.5, [8 x i8] } }, { i32, { %struct.anon.5, [8 x i8] } }, { i32, { %struct.anon.5, [8 x i8] } }, { i32, { %struct.anon.5, [8 x i8] } }, %struct.rockchip_pll_rate_table }> <{ { i32, { %struct.anon.5, [8 x i8] } } { i32 -2086967296, { %struct.anon.5, [8 x i8] } { %struct.anon.5 { i32 1, i32 92, i32 1, i32 46 }, [8 x i8] undef } }, { i32, { %struct.anon.5, [8 x i8] } } { i32 -2110967296, { %struct.anon.5, [8 x i8] } { %struct.anon.5 { i32 1, i32 91, i32 1, i32 45 }, [8 x i8] undef } }, { i32, { %struct.anon.5, [8 x i8] } } { i32 -2134967296, { %struct.anon.5, [8 x i8] } { %struct.anon.5 { i32 1, i32 90, i32 1, i32 45 }, [8 x i8] undef } }, { i32, { %struct.anon.5, [8 x i8] } } { i32 2136000000, { %struct.anon.5, [8 x i8] } { %struct.anon.5 { i32 1, i32 89, i32 1, i32 44 }, [8 x i8] undef } }, { i32, { %struct.anon.5, [8 x i8] } } { i32 2112000000, { %struct.anon.5, [8 x i8] } { %struct.anon.5 { i32 1, i32 88, i32 1, i32 44 }, [8 x i8] undef } }, { i32, { %struct.anon.5, [8 x i8] } } { i32 2088000000, { %struct.anon.5, [8 x i8] } { %struct.anon.5 { i32 1, i32 87, i32 1, i32 43 }, [8 x i8] undef } }, { i32, { %struct.anon.5, [8 x i8] } } { i32 2064000000, { %struct.anon.5, [8 x i8] } { %struct.anon.5 { i32 1, i32 86, i32 1, i32 43 }, [8 x i8] undef } }, { i32, { %struct.anon.5, [8 x i8] } } { i32 2040000000, { %struct.anon.5, [8 x i8] } { %struct.anon.5 { i32 1, i32 85, i32 1, i32 42 }, [8 x i8] undef } }, { i32, { %struct.anon.5, [8 x i8] } } { i32 2016000000, { %struct.anon.5, [8 x i8] } { %struct.anon.5 { i32 1, i32 84, i32 1, i32 42 }, [8 x i8] undef } }, { i32, { %struct.anon.5, [8 x i8] } } { i32 1992000000, { %struct.anon.5, [8 x i8] } { %struct.anon.5 { i32 1, i32 83, i32 1, i32 41 }, [8 x i8] undef } }, { i32, { %struct.anon.5, [8 x i8] } } { i32 1968000000, { %struct.anon.5, [8 x i8] } { %struct.anon.5 { i32 1, i32 82, i32 1, i32 41 }, [8 x i8] undef } }, { i32, { %struct.anon.5, [8 x i8] } } { i32 1944000000, { %struct.anon.5, [8 x i8] } { %struct.anon.5 { i32 1, i32 81, i32 1, i32 40 }, [8 x i8] undef } }, { i32, { %struct.anon.5, [8 x i8] } } { i32 1920000000, { %struct.anon.5, [8 x i8] } { %struct.anon.5 { i32 1, i32 80, i32 1, i32 40 }, [8 x i8] undef } }, { i32, { %struct.anon.5, [8 x i8] } } { i32 1896000000, { %struct.anon.5, [8 x i8] } { %struct.anon.5 { i32 1, i32 79, i32 1, i32 39 }, [8 x i8] undef } }, { i32, { %struct.anon.5, [8 x i8] } } { i32 1872000000, { %struct.anon.5, [8 x i8] } { %struct.anon.5 { i32 1, i32 78, i32 1, i32 39 }, [8 x i8] undef } }, { i32, { %struct.anon.5, [8 x i8] } } { i32 1848000000, { %struct.anon.5, [8 x i8] } { %struct.anon.5 { i32 1, i32 77, i32 1, i32 38 }, [8 x i8] undef } }, { i32, { %struct.anon.5, [8 x i8] } } { i32 1824000000, { %struct.anon.5, [8 x i8] } { %struct.anon.5 { i32 1, i32 76, i32 1, i32 38 }, [8 x i8] undef } }, { i32, { %struct.anon.5, [8 x i8] } } { i32 1800000000, { %struct.anon.5, [8 x i8] } { %struct.anon.5 { i32 1, i32 75, i32 1, i32 37 }, [8 x i8] undef } }, { i32, { %struct.anon.5, [8 x i8] } } { i32 1776000000, { %struct.anon.5, [8 x i8] } { %struct.anon.5 { i32 1, i32 74, i32 1, i32 37 }, [8 x i8] undef } }, { i32, { %struct.anon.5, [8 x i8] } } { i32 1752000000, { %struct.anon.5, [8 x i8] } { %struct.anon.5 { i32 1, i32 73, i32 1, i32 36 }, [8 x i8] undef } }, { i32, { %struct.anon.5, [8 x i8] } } { i32 1728000000, { %struct.anon.5, [8 x i8] } { %struct.anon.5 { i32 1, i32 72, i32 1, i32 36 }, [8 x i8] undef } }, { i32, { %struct.anon.5, [8 x i8] } } { i32 1704000000, { %struct.anon.5, [8 x i8] } { %struct.anon.5 { i32 1, i32 71, i32 1, i32 35 }, [8 x i8] undef } }, { i32, { %struct.anon.5, [8 x i8] } } { i32 1680000000, { %struct.anon.5, [8 x i8] } { %struct.anon.5 { i32 1, i32 70, i32 1, i32 35 }, [8 x i8] undef } }, { i32, { %struct.anon.5, [8 x i8] } } { i32 1656000000, { %struct.anon.5, [8 x i8] } { %struct.anon.5 { i32 1, i32 69, i32 1, i32 34 }, [8 x i8] undef } }, { i32, { %struct.anon.5, [8 x i8] } } { i32 1632000000, { %struct.anon.5, [8 x i8] } { %struct.anon.5 { i32 1, i32 68, i32 1, i32 34 }, [8 x i8] undef } }, { i32, { %struct.anon.5, [8 x i8] } } { i32 1608000000, { %struct.anon.5, [8 x i8] } { %struct.anon.5 { i32 1, i32 67, i32 1, i32 33 }, [8 x i8] undef } }, { i32, { %struct.anon.5, [8 x i8] } } { i32 1560000000, { %struct.anon.5, [8 x i8] } { %struct.anon.5 { i32 1, i32 65, i32 1, i32 32 }, [8 x i8] undef } }, { i32, { %struct.anon.5, [8 x i8] } } { i32 1512000000, { %struct.anon.5, [8 x i8] } { %struct.anon.5 { i32 1, i32 63, i32 1, i32 31 }, [8 x i8] undef } }, { i32, { %struct.anon.5, [8 x i8] } } { i32 1488000000, { %struct.anon.5, [8 x i8] } { %struct.anon.5 { i32 1, i32 62, i32 1, i32 31 }, [8 x i8] undef } }, { i32, { %struct.anon.5, [8 x i8] } } { i32 1464000000, { %struct.anon.5, [8 x i8] } { %struct.anon.5 { i32 1, i32 61, i32 1, i32 30 }, [8 x i8] undef } }, { i32, { %struct.anon.5, [8 x i8] } } { i32 1440000000, { %struct.anon.5, [8 x i8] } { %struct.anon.5 { i32 1, i32 60, i32 1, i32 30 }, [8 x i8] undef } }, { i32, { %struct.anon.5, [8 x i8] } } { i32 1416000000, { %struct.anon.5, [8 x i8] } { %struct.anon.5 { i32 1, i32 59, i32 1, i32 29 }, [8 x i8] undef } }, { i32, { %struct.anon.5, [8 x i8] } } { i32 1392000000, { %struct.anon.5, [8 x i8] } { %struct.anon.5 { i32 1, i32 58, i32 1, i32 29 }, [8 x i8] undef } }, { i32, { %struct.anon.5, [8 x i8] } } { i32 1368000000, { %struct.anon.5, [8 x i8] } { %struct.anon.5 { i32 1, i32 57, i32 1, i32 28 }, [8 x i8] undef } }, { i32, { %struct.anon.5, [8 x i8] } } { i32 1344000000, { %struct.anon.5, [8 x i8] } { %struct.anon.5 { i32 1, i32 56, i32 1, i32 28 }, [8 x i8] undef } }, { i32, { %struct.anon.5, [8 x i8] } } { i32 1320000000, { %struct.anon.5, [8 x i8] } { %struct.anon.5 { i32 1, i32 55, i32 1, i32 27 }, [8 x i8] undef } }, { i32, { %struct.anon.5, [8 x i8] } } { i32 1296000000, { %struct.anon.5, [8 x i8] } { %struct.anon.5 { i32 1, i32 54, i32 1, i32 27 }, [8 x i8] undef } }, { i32, { %struct.anon.5, [8 x i8] } } { i32 1272000000, { %struct.anon.5, [8 x i8] } { %struct.anon.5 { i32 1, i32 53, i32 1, i32 26 }, [8 x i8] undef } }, { i32, { %struct.anon.5, [8 x i8] } } { i32 1248000000, { %struct.anon.5, [8 x i8] } { %struct.anon.5 { i32 1, i32 52, i32 1, i32 26 }, [8 x i8] undef } }, { i32, { %struct.anon.5, [8 x i8] } } { i32 1224000000, { %struct.anon.5, [8 x i8] } { %struct.anon.5 { i32 1, i32 51, i32 1, i32 25 }, [8 x i8] undef } }, { i32, { %struct.anon.5, [8 x i8] } } { i32 1200000000, { %struct.anon.5, [8 x i8] } { %struct.anon.5 { i32 1, i32 50, i32 1, i32 25 }, [8 x i8] undef } }, { i32, { %struct.anon.5, [8 x i8] } } { i32 1188000000, { %struct.anon.5, [8 x i8] } { %struct.anon.5 { i32 2, i32 99, i32 1, i32 49 }, [8 x i8] undef } }, { i32, { %struct.anon.5, [8 x i8] } } { i32 1176000000, { %struct.anon.5, [8 x i8] } { %struct.anon.5 { i32 1, i32 49, i32 1, i32 24 }, [8 x i8] undef } }, { i32, { %struct.anon.5, [8 x i8] } } { i32 1128000000, { %struct.anon.5, [8 x i8] } { %struct.anon.5 { i32 1, i32 47, i32 1, i32 23 }, [8 x i8] undef } }, { i32, { %struct.anon.5, [8 x i8] } } { i32 1104000000, { %struct.anon.5, [8 x i8] } { %struct.anon.5 { i32 1, i32 46, i32 1, i32 23 }, [8 x i8] undef } }, { i32, { %struct.anon.5, [8 x i8] } } { i32 1008000000, { %struct.anon.5, [8 x i8] } { %struct.anon.5 { i32 1, i32 84, i32 2, i32 42 }, [8 x i8] undef } }, { i32, { %struct.anon.5, [8 x i8] } } { i32 912000000, { %struct.anon.5, [8 x i8] } { %struct.anon.5 { i32 1, i32 76, i32 2, i32 38 }, [8 x i8] undef } }, { i32, { %struct.anon.5, [8 x i8] } } { i32 891000000, { %struct.anon.5, [8 x i8] } { %struct.anon.5 { i32 8, i32 594, i32 2, i32 297 }, [8 x i8] undef } }, { i32, { %struct.anon.5, [8 x i8] } } { i32 888000000, { %struct.anon.5, [8 x i8] } { %struct.anon.5 { i32 1, i32 74, i32 2, i32 37 }, [8 x i8] undef } }, { i32, { %struct.anon.5, [8 x i8] } } { i32 816000000, { %struct.anon.5, [8 x i8] } { %struct.anon.5 { i32 1, i32 68, i32 2, i32 34 }, [8 x i8] undef } }, { i32, { %struct.anon.5, [8 x i8] } } { i32 798000000, { %struct.anon.5, [8 x i8] } { %struct.anon.5 { i32 2, i32 133, i32 2, i32 66 }, [8 x i8] undef } }, { i32, { %struct.anon.5, [8 x i8] } } { i32 792000000, { %struct.anon.5, [8 x i8] } { %struct.anon.5 { i32 1, i32 66, i32 2, i32 33 }, [8 x i8] undef } }, { i32, { %struct.anon.5, [8 x i8] } } { i32 768000000, { %struct.anon.5, [8 x i8] } { %struct.anon.5 { i32 1, i32 64, i32 2, i32 32 }, [8 x i8] undef } }, { i32, { %struct.anon.5, [8 x i8] } } { i32 742500000, { %struct.anon.5, [8 x i8] } { %struct.anon.5 { i32 8, i32 495, i32 2, i32 247 }, [8 x i8] undef } }, { i32, { %struct.anon.5, [8 x i8] } } { i32 696000000, { %struct.anon.5, [8 x i8] } { %struct.anon.5 { i32 1, i32 58, i32 2, i32 29 }, [8 x i8] undef } }, { i32, { %struct.anon.5, [8 x i8] } } { i32 621000000, { %struct.anon.5, [8 x i8] } { %struct.anon.5 { i32 1, i32 207, i32 8, i32 1 }, [8 x i8] undef } }, { i32, { %struct.anon.5, [8 x i8] } } { i32 600000000, { %struct.anon.5, [8 x i8] } { %struct.anon.5 { i32 1, i32 50, i32 2, i32 25 }, [8 x i8] undef } }, { i32, { %struct.anon.5, [8 x i8] } } { i32 594000000, { %struct.anon.5, [8 x i8] } { %struct.anon.5 { i32 1, i32 198, i32 8, i32 1 }, [8 x i8] undef } }, { i32, { %struct.anon.5, [8 x i8] } } { i32 552000000, { %struct.anon.5, [8 x i8] } { %struct.anon.5 { i32 1, i32 46, i32 2, i32 23 }, [8 x i8] undef } }, { i32, { %struct.anon.5, [8 x i8] } } { i32 504000000, { %struct.anon.5, [8 x i8] } { %struct.anon.5 { i32 1, i32 84, i32 4, i32 42 }, [8 x i8] undef } }, { i32, { %struct.anon.5, [8 x i8] } } { i32 500000000, { %struct.anon.5, [8 x i8] } { %struct.anon.5 { i32 3, i32 125, i32 2, i32 62 }, [8 x i8] undef } }, { i32, { %struct.anon.5, [8 x i8] } } { i32 456000000, { %struct.anon.5, [8 x i8] } { %struct.anon.5 { i32 1, i32 76, i32 4, i32 38 }, [8 x i8] undef } }, { i32, { %struct.anon.5, [8 x i8] } } { i32 428000000, { %struct.anon.5, [8 x i8] } { %struct.anon.5 { i32 1, i32 107, i32 6, i32 53 }, [8 x i8] undef } }, { i32, { %struct.anon.5, [8 x i8] } } { i32 408000000, { %struct.anon.5, [8 x i8] } { %struct.anon.5 { i32 1, i32 68, i32 4, i32 34 }, [8 x i8] undef } }, { i32, { %struct.anon.5, [8 x i8] } } { i32 400000000, { %struct.anon.5, [8 x i8] } { %struct.anon.5 { i32 3, i32 100, i32 2, i32 50 }, [8 x i8] undef } }, { i32, { %struct.anon.5, [8 x i8] } } { i32 394000000, { %struct.anon.5, [8 x i8] } { %struct.anon.5 { i32 1, i32 197, i32 12, i32 1 }, [8 x i8] undef } }, { i32, { %struct.anon.5, [8 x i8] } } { i32 384000000, { %struct.anon.5, [8 x i8] } { %struct.anon.5 { i32 2, i32 128, i32 4, i32 64 }, [8 x i8] undef } }, { i32, { %struct.anon.5, [8 x i8] } } { i32 360000000, { %struct.anon.5, [8 x i8] } { %struct.anon.5 { i32 1, i32 60, i32 4, i32 30 }, [8 x i8] undef } }, { i32, { %struct.anon.5, [8 x i8] } } { i32 356000000, { %struct.anon.5, [8 x i8] } { %struct.anon.5 { i32 1, i32 178, i32 12, i32 1 }, [8 x i8] undef } }, { i32, { %struct.anon.5, [8 x i8] } } { i32 324000000, { %struct.anon.5, [8 x i8] } { %struct.anon.5 { i32 1, i32 189, i32 14, i32 1 }, [8 x i8] undef } }, { i32, { %struct.anon.5, [8 x i8] } } { i32 312000000, { %struct.anon.5, [8 x i8] } { %struct.anon.5 { i32 1, i32 52, i32 4, i32 26 }, [8 x i8] undef } }, { i32, { %struct.anon.5, [8 x i8] } } { i32 308000000, { %struct.anon.5, [8 x i8] } { %struct.anon.5 { i32 1, i32 154, i32 12, i32 1 }, [8 x i8] undef } }, { i32, { %struct.anon.5, [8 x i8] } } { i32 303000000, { %struct.anon.5, [8 x i8] } { %struct.anon.5 { i32 1, i32 202, i32 16, i32 1 }, [8 x i8] undef } }, { i32, { %struct.anon.5, [8 x i8] } } { i32 300000000, { %struct.anon.5, [8 x i8] } { %struct.anon.5 { i32 1, i32 75, i32 6, i32 37 }, [8 x i8] undef } }, { i32, { %struct.anon.5, [8 x i8] } } { i32 297750000, { %struct.anon.5, [8 x i8] } { %struct.anon.5 { i32 2, i32 397, i32 16, i32 1 }, [8 x i8] undef } }, { i32, { %struct.anon.5, [8 x i8] } } { i32 293250000, { %struct.anon.5, [8 x i8] } { %struct.anon.5 { i32 2, i32 391, i32 16, i32 1 }, [8 x i8] undef } }, { i32, { %struct.anon.5, [8 x i8] } } { i32 292500000, { %struct.anon.5, [8 x i8] } { %struct.anon.5 { i32 1, i32 195, i32 16, i32 1 }, [8 x i8] undef } }, { i32, { %struct.anon.5, [8 x i8] } } { i32 273600000, { %struct.anon.5, [8 x i8] } { %struct.anon.5 { i32 1, i32 114, i32 10, i32 57 }, [8 x i8] undef } }, { i32, { %struct.anon.5, [8 x i8] } } { i32 273000000, { %struct.anon.5, [8 x i8] } { %struct.anon.5 { i32 1, i32 182, i32 16, i32 1 }, [8 x i8] undef } }, { i32, { %struct.anon.5, [8 x i8] } } { i32 270000000, { %struct.anon.5, [8 x i8] } { %struct.anon.5 { i32 1, i32 180, i32 16, i32 1 }, [8 x i8] undef } }, { i32, { %struct.anon.5, [8 x i8] } } { i32 266250000, { %struct.anon.5, [8 x i8] } { %struct.anon.5 { i32 2, i32 355, i32 16, i32 1 }, [8 x i8] undef } }, { i32, { %struct.anon.5, [8 x i8] } } { i32 256500000, { %struct.anon.5, [8 x i8] } { %struct.anon.5 { i32 1, i32 171, i32 16, i32 1 }, [8 x i8] undef } }, { i32, { %struct.anon.5, [8 x i8] } } { i32 252000000, { %struct.anon.5, [8 x i8] } { %struct.anon.5 { i32 1, i32 84, i32 8, i32 42 }, [8 x i8] undef } }, { i32, { %struct.anon.5, [8 x i8] } } { i32 250500000, { %struct.anon.5, [8 x i8] } { %struct.anon.5 { i32 1, i32 167, i32 16, i32 1 }, [8 x i8] undef } }, { i32, { %struct.anon.5, [8 x i8] } } { i32 243428571, { %struct.anon.5, [8 x i8] } { %struct.anon.5 { i32 1, i32 142, i32 14, i32 1 }, [8 x i8] undef } }, { i32, { %struct.anon.5, [8 x i8] } } { i32 238000000, { %struct.anon.5, [8 x i8] } { %struct.anon.5 { i32 1, i32 119, i32 12, i32 59 }, [8 x i8] undef } }, { i32, { %struct.anon.5, [8 x i8] } } { i32 219750000, { %struct.anon.5, [8 x i8] } { %struct.anon.5 { i32 2, i32 293, i32 16, i32 1 }, [8 x i8] undef } }, { i32, { %struct.anon.5, [8 x i8] } } { i32 216000000, { %struct.anon.5, [8 x i8] } { %struct.anon.5 { i32 1, i32 144, i32 16, i32 1 }, [8 x i8] undef } }, { i32, { %struct.anon.5, [8 x i8] } } { i32 213000000, { %struct.anon.5, [8 x i8] } { %struct.anon.5 { i32 1, i32 142, i32 16, i32 1 }, [8 x i8] undef } }, { i32, { %struct.anon.5, [8 x i8] } } { i32 195428571, { %struct.anon.5, [8 x i8] } { %struct.anon.5 { i32 1, i32 114, i32 14, i32 57 }, [8 x i8] undef } }, { i32, { %struct.anon.5, [8 x i8] } } { i32 160000000, { %struct.anon.5, [8 x i8] } { %struct.anon.5 { i32 1, i32 80, i32 12, i32 40 }, [8 x i8] undef } }, { i32, { %struct.anon.5, [8 x i8] } } { i32 157500000, { %struct.anon.5, [8 x i8] } { %struct.anon.5 { i32 1, i32 105, i32 16, i32 52 }, [8 x i8] undef } }, { i32, { %struct.anon.5, [8 x i8] } } { i32 126000000, { %struct.anon.5, [8 x i8] } { %struct.anon.5 { i32 1, i32 84, i32 16, i32 42 }, [8 x i8] undef } }, %struct.rockchip_pll_rate_table zeroinitializer }>, align 4
@.str.11 = private unnamed_addr constant [10 x i8] c"apll_core\00", align 1
@.compoundliteral = internal global [1 x ptr] [ptr @.str.3], align 4
@.str.12 = private unnamed_addr constant [10 x i8] c"gpll_core\00", align 1
@.compoundliteral.13 = internal global [1 x ptr] [ptr @.str.6], align 4
@.str.14 = private unnamed_addr constant [9 x i8] c"armcore0\00", align 1
@.compoundliteral.15 = internal global [1 x ptr] [ptr @.str.2], align 4
@.str.16 = private unnamed_addr constant [9 x i8] c"armcore1\00", align 1
@.compoundliteral.17 = internal global [1 x ptr] [ptr @.str.2], align 4
@.str.18 = private unnamed_addr constant [9 x i8] c"armcore2\00", align 1
@.compoundliteral.19 = internal global [1 x ptr] [ptr @.str.2], align 4
@.str.20 = private unnamed_addr constant [9 x i8] c"armcore3\00", align 1
@.compoundliteral.21 = internal global [1 x ptr] [ptr @.str.2], align 4
@.str.22 = private unnamed_addr constant [6 x i8] c"l2ram\00", align 1
@.compoundliteral.23 = internal global [1 x ptr] [ptr @.str.2], align 4
@.str.24 = private unnamed_addr constant [13 x i8] c"aclk_core_m0\00", align 1
@.compoundliteral.25 = internal global [1 x ptr] [ptr @.str.2], align 4
@.str.26 = private unnamed_addr constant [13 x i8] c"aclk_core_mp\00", align 1
@.compoundliteral.27 = internal global [1 x ptr] [ptr @.str.2], align 4
@.str.28 = private unnamed_addr constant [6 x i8] c"atclk\00", align 1
@.compoundliteral.29 = internal global [1 x ptr] [ptr @.str.2], align 4
@.str.30 = private unnamed_addr constant [13 x i8] c"pclk_dbg_pre\00", align 1
@.compoundliteral.31 = internal global [1 x ptr] [ptr @.str.2], align 4
@.str.32 = private unnamed_addr constant [9 x i8] c"pclk_dbg\00", align 1
@.compoundliteral.33 = internal global [1 x ptr] [ptr @.str.30], align 4
@.str.34 = private unnamed_addr constant [7 x i8] c"cs_dbg\00", align 1
@.compoundliteral.35 = internal global [1 x ptr] [ptr @.str.30], align 4
@.str.36 = private unnamed_addr constant [14 x i8] c"pclk_core_niu\00", align 1
@.compoundliteral.37 = internal global [1 x ptr] [ptr @.str.30], align 4
@.str.38 = private unnamed_addr constant [9 x i8] c"dpll_ddr\00", align 1
@.compoundliteral.39 = internal global [1 x ptr] [ptr @.str.4], align 4
@.str.40 = private unnamed_addr constant [9 x i8] c"gpll_ddr\00", align 1
@.compoundliteral.41 = internal global [1 x ptr] [ptr @.str.6], align 4
@.str.42 = private unnamed_addr constant [7 x i8] c"ddrphy\00", align 1
@mux_ddrphy_p = internal constant [2 x ptr] [ptr @.str.38, ptr @.str.40], section ".init.rodata", align 4
@.str.43 = private unnamed_addr constant [14 x i8] c"gpll_aclk_cpu\00", align 1
@.compoundliteral.44 = internal global [1 x ptr] [ptr @.str.6], align 4
@.str.45 = private unnamed_addr constant [14 x i8] c"cpll_aclk_cpu\00", align 1
@.compoundliteral.46 = internal global [1 x ptr] [ptr @.str.5], align 4
@.str.47 = private unnamed_addr constant [13 x i8] c"aclk_cpu_src\00", align 1
@mux_aclk_cpu_src_p = internal constant [2 x ptr] [ptr @.str.45, ptr @.str.43], section ".init.rodata", align 4
@.str.48 = private unnamed_addr constant [13 x i8] c"aclk_cpu_pre\00", align 1
@.compoundliteral.49 = internal global [1 x ptr] [ptr @.str.47], align 4
@.str.50 = private unnamed_addr constant [9 x i8] c"aclk_cpu\00", align 1
@.compoundliteral.51 = internal global [1 x ptr] [ptr @.str.48], align 4
@.str.52 = private unnamed_addr constant [9 x i8] c"pclk_cpu\00", align 1
@.compoundliteral.53 = internal global [1 x ptr] [ptr @.str.48], align 4
@.str.54 = private unnamed_addr constant [9 x i8] c"hclk_cpu\00", align 1
@.compoundliteral.55 = internal global [1 x ptr] [ptr @.str.48], align 4
@div_hclk_cpu_t = internal global [4 x %struct.clk_div_table] [%struct.clk_div_table { i32 0, i32 1 }, %struct.clk_div_table { i32 1, i32 2 }, %struct.clk_div_table { i32 3, i32 4 }, %struct.clk_div_table zeroinitializer], align 4
@.str.56 = private unnamed_addr constant [9 x i8] c"c2c_host\00", align 1
@.compoundliteral.57 = internal global [1 x ptr] [ptr @.str.47], align 4
@.str.58 = private unnamed_addr constant [7 x i8] c"crypto\00", align 1
@.compoundliteral.59 = internal global [1 x ptr] [ptr @.str.48], align 4
@.str.60 = private unnamed_addr constant [14 x i8] c"aclk_bus_2pmu\00", align 1
@.compoundliteral.61 = internal global [1 x ptr] [ptr @.str.48], align 4
@.str.62 = private unnamed_addr constant [7 x i8] c"xin12m\00", align 1
@.compoundliteral.63 = internal global [1 x ptr] [ptr @.str.8], align 4
@.str.64 = private unnamed_addr constant [8 x i8] c"i2s_src\00", align 1
@mux_pll_src_cpll_gpll_p = internal constant [2 x ptr] [ptr @.str.5, ptr @.str.6], section ".init.rodata", align 4
@.str.65 = private unnamed_addr constant [9 x i8] c"i2s_frac\00", align 1
@.compoundliteral.66 = internal global [1 x ptr] [ptr @.str.64], align 4
@rk3288_i2s_fracmux = internal global %struct.rockchip_clk_branch { i32 0, i32 1, ptr @.str.69, ptr @mux_i2s_pre_p, i8 4, i32 4, i32 112, i8 8, i8 2, i8 4, i32 0, i8 0, i8 0, i8 0, ptr null, i32 -1, i8 0, i8 0, ptr null }, section ".init.data", align 4
@.str.67 = private unnamed_addr constant [12 x i8] c"i2s0_clkout\00", align 1
@mux_i2s_clkout_p = internal constant [2 x ptr] [ptr @.str.69, ptr @.str.62], section ".init.rodata", align 4
@.str.68 = private unnamed_addr constant [10 x i8] c"sclk_i2s0\00", align 1
@.str.69 = private unnamed_addr constant [8 x i8] c"i2s_pre\00", align 1
@.compoundliteral.70 = internal global [1 x ptr] [ptr @.str.69], align 4
@.str.71 = private unnamed_addr constant [10 x i8] c"spdif_src\00", align 1
@.str.72 = private unnamed_addr constant [10 x i8] c"spdif_pre\00", align 1
@.compoundliteral.73 = internal global [1 x ptr] [ptr @.str.71], align 4
@.str.74 = private unnamed_addr constant [11 x i8] c"spdif_frac\00", align 1
@.compoundliteral.75 = internal global [1 x ptr] [ptr @.str.71], align 4
@rk3288_spdif_fracmux = internal global %struct.rockchip_clk_branch { i32 0, i32 1, ptr @.str.77, ptr @mux_spdif_p, i8 3, i32 4, i32 116, i8 8, i8 2, i8 4, i32 0, i8 0, i8 0, i8 0, ptr null, i32 -1, i8 0, i8 0, ptr null }, section ".init.data", align 4
@.str.76 = private unnamed_addr constant [11 x i8] c"sclk_spdif\00", align 1
@.str.77 = private unnamed_addr constant [10 x i8] c"spdif_mux\00", align 1
@.compoundliteral.78 = internal global [1 x ptr] [ptr @.str.77], align 4
@.str.79 = private unnamed_addr constant [14 x i8] c"spdif_8ch_pre\00", align 1
@.compoundliteral.80 = internal global [1 x ptr] [ptr @.str.71], align 4
@.str.81 = private unnamed_addr constant [15 x i8] c"spdif_8ch_frac\00", align 1
@.compoundliteral.82 = internal global [1 x ptr] [ptr @.str.79], align 4
@rk3288_spdif_8ch_fracmux = internal global %struct.rockchip_clk_branch { i32 0, i32 1, ptr @.str.84, ptr @mux_spdif_8ch_p, i8 3, i32 4, i32 256, i8 8, i8 2, i8 4, i32 0, i8 0, i8 0, i8 0, ptr null, i32 -1, i8 0, i8 0, ptr null }, section ".init.data", align 4
@.str.83 = private unnamed_addr constant [15 x i8] c"sclk_spdif_8ch\00", align 1
@.str.84 = private unnamed_addr constant [14 x i8] c"spdif_8ch_mux\00", align 1
@.compoundliteral.85 = internal global [1 x ptr] [ptr @.str.84], align 4
@.str.86 = private unnamed_addr constant [15 x i8] c"sclk_acc_efuse\00", align 1
@.compoundliteral.87 = internal global [1 x ptr] [ptr @.str.8], align 4
@.str.88 = private unnamed_addr constant [12 x i8] c"sclk_timer0\00", align 1
@.compoundliteral.89 = internal global [1 x ptr] [ptr @.str.8], align 4
@.str.90 = private unnamed_addr constant [12 x i8] c"sclk_timer1\00", align 1
@.compoundliteral.91 = internal global [1 x ptr] [ptr @.str.8], align 4
@.str.92 = private unnamed_addr constant [12 x i8] c"sclk_timer2\00", align 1
@.compoundliteral.93 = internal global [1 x ptr] [ptr @.str.8], align 4
@.str.94 = private unnamed_addr constant [12 x i8] c"sclk_timer3\00", align 1
@.compoundliteral.95 = internal global [1 x ptr] [ptr @.str.8], align 4
@.str.96 = private unnamed_addr constant [12 x i8] c"sclk_timer4\00", align 1
@.compoundliteral.97 = internal global [1 x ptr] [ptr @.str.8], align 4
@.str.98 = private unnamed_addr constant [12 x i8] c"sclk_timer5\00", align 1
@.compoundliteral.99 = internal global [1 x ptr] [ptr @.str.8], align 4
@.str.100 = private unnamed_addr constant [10 x i8] c"aclk_vepu\00", align 1
@mux_pll_src_cpll_gpll_usb480m_p = internal constant [3 x ptr] [ptr @.str.5, ptr @.str.6, ptr @.str.475], section ".init.rodata", align 4
@.str.101 = private unnamed_addr constant [10 x i8] c"aclk_vdpu\00", align 1
@.str.102 = private unnamed_addr constant [16 x i8] c"aclk_vcodec_pre\00", align 1
@mux_aclk_vcodec_pre_p = internal constant [2 x ptr] [ptr @.str.101, ptr @.str.100], section ".init.rodata", align 4
@.str.103 = private unnamed_addr constant [12 x i8] c"aclk_vcodec\00", align 1
@.compoundliteral.104 = internal global [1 x ptr] [ptr @.str.102], align 4
@.str.105 = private unnamed_addr constant [16 x i8] c"hclk_vcodec_pre\00", align 1
@.compoundliteral.106 = internal global [1 x ptr] [ptr @.str.102], align 4
@.str.107 = private unnamed_addr constant [12 x i8] c"hclk_vcodec\00", align 1
@.compoundliteral.108 = internal global [1 x ptr] [ptr @.str.105], align 4
@.str.109 = private unnamed_addr constant [10 x i8] c"aclk_vio0\00", align 1
@.str.110 = private unnamed_addr constant [10 x i8] c"aclk_vio1\00", align 1
@.str.111 = private unnamed_addr constant [13 x i8] c"aclk_rga_pre\00", align 1
@.str.112 = private unnamed_addr constant [9 x i8] c"sclk_rga\00", align 1
@.str.113 = private unnamed_addr constant [10 x i8] c"dclk_vop0\00", align 1
@mux_pll_src_cpll_gpll_npll_p = internal constant [3 x ptr] [ptr @.str.5, ptr @.str.6, ptr @.str.7], section ".init.rodata", align 4
@.str.114 = private unnamed_addr constant [10 x i8] c"dclk_vop1\00", align 1
@.str.115 = private unnamed_addr constant [13 x i8] c"sclk_edp_24m\00", align 1
@mux_edp_24m_p = internal constant [2 x ptr] [ptr @.str.476, ptr @.str.8], section ".init.rodata", align 4
@.str.116 = private unnamed_addr constant [9 x i8] c"sclk_edp\00", align 1
@.str.117 = private unnamed_addr constant [9 x i8] c"sclk_isp\00", align 1
@.str.118 = private unnamed_addr constant [13 x i8] c"sclk_isp_jpe\00", align 1
@.str.119 = private unnamed_addr constant [15 x i8] c"sclk_hdmi_hdcp\00", align 1
@.compoundliteral.120 = internal global [1 x ptr] [ptr @.str.8], align 4
@.str.121 = private unnamed_addr constant [14 x i8] c"sclk_hdmi_cec\00", align 1
@.compoundliteral.122 = internal global [1 x ptr] [ptr @.str.9], align 4
@.str.123 = private unnamed_addr constant [10 x i8] c"aclk_hevc\00", align 1
@.str.124 = private unnamed_addr constant [10 x i8] c"hclk_hevc\00", align 1
@.compoundliteral.125 = internal global [1 x ptr] [ptr @.str.123], align 4
@.str.126 = private unnamed_addr constant [16 x i8] c"sclk_hevc_cabac\00", align 1
@.str.127 = private unnamed_addr constant [15 x i8] c"sclk_hevc_core\00", align 1
@.str.128 = private unnamed_addr constant [8 x i8] c"vip_src\00", align 1
@.str.129 = private unnamed_addr constant [13 x i8] c"sclk_vip_out\00", align 1
@mux_vip_out_p = internal constant [2 x ptr] [ptr @.str.128, ptr @.str.8], section ".init.rodata", align 4
@.str.130 = private unnamed_addr constant [14 x i8] c"pclk_pd_alive\00", align 1
@.compoundliteral.131 = internal global [1 x ptr] [ptr @.str.6], align 4
@.str.132 = private unnamed_addr constant [12 x i8] c"pclk_pd_pmu\00", align 1
@.compoundliteral.133 = internal global [1 x ptr] [ptr @.str.6], align 4
@.str.134 = private unnamed_addr constant [9 x i8] c"sclk_gpu\00", align 1
@mux_pll_src_cpll_gll_usb_npll_p = internal constant [4 x ptr] [ptr @.str.5, ptr @.str.6, ptr @.str.475, ptr @.str.7], section ".init.rodata", align 4
@.str.135 = private unnamed_addr constant [14 x i8] c"aclk_peri_src\00", align 1
@.str.136 = private unnamed_addr constant [10 x i8] c"pclk_peri\00", align 1
@.compoundliteral.137 = internal global [1 x ptr] [ptr @.str.135], align 4
@.str.138 = private unnamed_addr constant [10 x i8] c"hclk_peri\00", align 1
@.compoundliteral.139 = internal global [1 x ptr] [ptr @.str.135], align 4
@.str.140 = private unnamed_addr constant [10 x i8] c"aclk_peri\00", align 1
@.compoundliteral.141 = internal global [1 x ptr] [ptr @.str.135], align 4
@.str.142 = private unnamed_addr constant [10 x i8] c"sclk_spi0\00", align 1
@.str.143 = private unnamed_addr constant [10 x i8] c"sclk_spi1\00", align 1
@.str.144 = private unnamed_addr constant [10 x i8] c"sclk_spi2\00", align 1
@.str.145 = private unnamed_addr constant [11 x i8] c"sclk_sdmmc\00", align 1
@mux_mmc_src_p = internal constant [4 x ptr] [ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.8], section ".init.rodata", align 4
@.str.146 = private unnamed_addr constant [11 x i8] c"sclk_sdio0\00", align 1
@.str.147 = private unnamed_addr constant [11 x i8] c"sclk_sdio1\00", align 1
@.str.148 = private unnamed_addr constant [10 x i8] c"sclk_emmc\00", align 1
@.str.149 = private unnamed_addr constant [10 x i8] c"sdmmc_drv\00", align 1
@.compoundliteral.150 = internal global [1 x ptr] [ptr @.str.145], align 4
@.str.151 = private unnamed_addr constant [13 x i8] c"sdmmc_sample\00", align 1
@.compoundliteral.152 = internal global [1 x ptr] [ptr @.str.145], align 4
@.str.153 = private unnamed_addr constant [10 x i8] c"sdio0_drv\00", align 1
@.compoundliteral.154 = internal global [1 x ptr] [ptr @.str.146], align 4
@.str.155 = private unnamed_addr constant [13 x i8] c"sdio0_sample\00", align 1
@.compoundliteral.156 = internal global [1 x ptr] [ptr @.str.146], align 4
@.str.157 = private unnamed_addr constant [10 x i8] c"sdio1_drv\00", align 1
@.compoundliteral.158 = internal global [1 x ptr] [ptr @.str.147], align 4
@.str.159 = private unnamed_addr constant [13 x i8] c"sdio1_sample\00", align 1
@.compoundliteral.160 = internal global [1 x ptr] [ptr @.str.147], align 4
@.str.161 = private unnamed_addr constant [9 x i8] c"emmc_drv\00", align 1
@.compoundliteral.162 = internal global [1 x ptr] [ptr @.str.148], align 4
@.str.163 = private unnamed_addr constant [12 x i8] c"emmc_sample\00", align 1
@.compoundliteral.164 = internal global [1 x ptr] [ptr @.str.148], align 4
@.str.165 = private unnamed_addr constant [12 x i8] c"sclk_tspout\00", align 1
@mux_tspout_p = internal constant [4 x ptr] [ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.477], section ".init.rodata", align 4
@.str.166 = private unnamed_addr constant [9 x i8] c"sclk_tsp\00", align 1
@.str.167 = private unnamed_addr constant [13 x i8] c"sclk_otgphy0\00", align 1
@.compoundliteral.168 = internal global [1 x ptr] [ptr @.str.8], align 4
@.str.169 = private unnamed_addr constant [13 x i8] c"sclk_otgphy1\00", align 1
@.compoundliteral.170 = internal global [1 x ptr] [ptr @.str.8], align 4
@.str.171 = private unnamed_addr constant [13 x i8] c"sclk_otgphy2\00", align 1
@.compoundliteral.172 = internal global [1 x ptr] [ptr @.str.8], align 4
@.str.173 = private unnamed_addr constant [13 x i8] c"sclk_otg_adp\00", align 1
@.compoundliteral.174 = internal global [1 x ptr] [ptr @.str.9], align 4
@.str.175 = private unnamed_addr constant [11 x i8] c"sclk_tsadc\00", align 1
@.compoundliteral.176 = internal global [1 x ptr] [ptr @.str.9], align 4
@.str.177 = private unnamed_addr constant [12 x i8] c"sclk_saradc\00", align 1
@.compoundliteral.178 = internal global [1 x ptr] [ptr @.str.8], align 4
@.str.179 = private unnamed_addr constant [10 x i8] c"sclk_ps2c\00", align 1
@.compoundliteral.180 = internal global [1 x ptr] [ptr @.str.8], align 4
@.str.181 = private unnamed_addr constant [12 x i8] c"sclk_nandc0\00", align 1
@.str.182 = private unnamed_addr constant [12 x i8] c"sclk_nandc1\00", align 1
@.str.183 = private unnamed_addr constant [10 x i8] c"uart0_src\00", align 1
@.str.184 = private unnamed_addr constant [11 x i8] c"uart0_frac\00", align 1
@.compoundliteral.185 = internal global [1 x ptr] [ptr @.str.183], align 4
@rk3288_uart0_fracmux = internal global %struct.rockchip_clk_branch { i32 77, i32 1, ptr @.str.478, ptr @mux_uart0_p, i8 3, i32 4, i32 148, i8 8, i8 2, i8 4, i32 0, i8 0, i8 0, i8 0, ptr null, i32 -1, i8 0, i8 0, ptr null }, section ".init.data", align 4
@.str.186 = private unnamed_addr constant [9 x i8] c"uart_src\00", align 1
@.str.187 = private unnamed_addr constant [10 x i8] c"uart1_src\00", align 1
@.compoundliteral.188 = internal global [1 x ptr] [ptr @.str.186], align 4
@.str.189 = private unnamed_addr constant [11 x i8] c"uart1_frac\00", align 1
@.compoundliteral.190 = internal global [1 x ptr] [ptr @.str.187], align 4
@rk3288_uart1_fracmux = internal global %struct.rockchip_clk_branch { i32 78, i32 1, ptr @.str.479, ptr @mux_uart1_p, i8 3, i32 4, i32 152, i8 8, i8 2, i8 4, i32 0, i8 0, i8 0, i8 0, ptr null, i32 -1, i8 0, i8 0, ptr null }, section ".init.data", align 4
@.str.191 = private unnamed_addr constant [10 x i8] c"uart2_src\00", align 1
@.compoundliteral.192 = internal global [1 x ptr] [ptr @.str.186], align 4
@.str.193 = private unnamed_addr constant [11 x i8] c"uart2_frac\00", align 1
@.compoundliteral.194 = internal global [1 x ptr] [ptr @.str.191], align 4
@rk3288_uart2_fracmux = internal global %struct.rockchip_clk_branch { i32 79, i32 1, ptr @.str.480, ptr @mux_uart2_p, i8 3, i32 4, i32 156, i8 8, i8 2, i8 4, i32 0, i8 0, i8 0, i8 0, ptr null, i32 -1, i8 0, i8 0, ptr null }, section ".init.data", align 4
@.str.195 = private unnamed_addr constant [10 x i8] c"uart3_src\00", align 1
@.compoundliteral.196 = internal global [1 x ptr] [ptr @.str.186], align 4
@.str.197 = private unnamed_addr constant [11 x i8] c"uart3_frac\00", align 1
@.compoundliteral.198 = internal global [1 x ptr] [ptr @.str.195], align 4
@rk3288_uart3_fracmux = internal global %struct.rockchip_clk_branch { i32 80, i32 1, ptr @.str.481, ptr @mux_uart3_p, i8 3, i32 4, i32 160, i8 8, i8 2, i8 4, i32 0, i8 0, i8 0, i8 0, ptr null, i32 -1, i8 0, i8 0, ptr null }, section ".init.data", align 4
@.str.199 = private unnamed_addr constant [10 x i8] c"uart4_src\00", align 1
@.compoundliteral.200 = internal global [1 x ptr] [ptr @.str.186], align 4
@.str.201 = private unnamed_addr constant [11 x i8] c"uart4_frac\00", align 1
@.compoundliteral.202 = internal global [1 x ptr] [ptr @.str.199], align 4
@rk3288_uart4_fracmux = internal global %struct.rockchip_clk_branch { i32 81, i32 1, ptr @.str.482, ptr @mux_uart4_p, i8 3, i32 4, i32 108, i8 8, i8 2, i8 4, i32 0, i8 0, i8 0, i8 0, ptr null, i32 -1, i8 0, i8 0, ptr null }, section ".init.data", align 4
@.str.203 = private unnamed_addr constant [12 x i8] c"mac_pll_src\00", align 1
@mux_pll_src_npll_cpll_gpll_p = internal constant [3 x ptr] [ptr @.str.7, ptr @.str.5, ptr @.str.6], section ".init.rodata", align 4
@.str.204 = private unnamed_addr constant [8 x i8] c"mac_clk\00", align 1
@mux_mac_p = internal constant [2 x ptr] [ptr @.str.203, ptr @.str.483], section ".init.rodata", align 4
@.str.205 = private unnamed_addr constant [16 x i8] c"sclk_macref_out\00", align 1
@.compoundliteral.206 = internal global [1 x ptr] [ptr @.str.204], align 4
@.str.207 = private unnamed_addr constant [12 x i8] c"sclk_macref\00", align 1
@.compoundliteral.208 = internal global [1 x ptr] [ptr @.str.204], align 4
@.str.209 = private unnamed_addr constant [12 x i8] c"sclk_mac_rx\00", align 1
@.compoundliteral.210 = internal global [1 x ptr] [ptr @.str.204], align 4
@.str.211 = private unnamed_addr constant [12 x i8] c"sclk_mac_tx\00", align 1
@.compoundliteral.212 = internal global [1 x ptr] [ptr @.str.204], align 4
@.str.213 = private unnamed_addr constant [10 x i8] c"hsadc_src\00", align 1
@.str.214 = private unnamed_addr constant [15 x i8] c"sclk_hsadc_out\00", align 1
@mux_hsadcout_p = internal constant [2 x ptr] [ptr @.str.213, ptr @.str.484], section ".init.rodata", align 4
@.str.215 = private unnamed_addr constant [11 x i8] c"sclk_hsadc\00", align 1
@.compoundliteral.216 = internal global [1 x ptr] [ptr @.str.214], align 4
@.str.217 = private unnamed_addr constant [5 x i8] c"jtag\00", align 1
@.str.218 = private unnamed_addr constant [9 x i8] c"ext_jtag\00", align 1
@.compoundliteral.219 = internal global [1 x ptr] [ptr @.str.218], align 4
@.str.220 = private unnamed_addr constant [15 x i8] c"usbphy480m_src\00", align 1
@mux_usbphy480m_p = internal constant [3 x ptr] [ptr @.str.485, ptr @.str.486, ptr @.str.487], section ".init.rodata", align 4
@.str.221 = private unnamed_addr constant [17 x i8] c"sclk_hsicphy480m\00", align 1
@mux_hsicphy480m_p = internal constant [3 x ptr] [ptr @.str.5, ptr @.str.6, ptr @.str.220], section ".init.rodata", align 4
@.str.222 = private unnamed_addr constant [18 x i8] c"hsicphy12m_xin12m\00", align 1
@.compoundliteral.223 = internal global [1 x ptr] [ptr @.str.62], align 4
@.str.224 = private unnamed_addr constant [18 x i8] c"hsicphy12m_usbphy\00", align 1
@.compoundliteral.225 = internal global [1 x ptr] [ptr @.str.221], align 4
@.str.226 = private unnamed_addr constant [16 x i8] c"sclk_hsicphy12m\00", align 1
@mux_hsicphy12m_p = internal constant [2 x ptr] [ptr @.str.222, ptr @.str.224], section ".init.rodata", align 4
@.str.227 = private unnamed_addr constant [13 x i8] c"sclk_intmem0\00", align 1
@.compoundliteral.228 = internal global [1 x ptr] [ptr @.str.50], align 4
@.str.229 = private unnamed_addr constant [13 x i8] c"sclk_intmem1\00", align 1
@.compoundliteral.230 = internal global [1 x ptr] [ptr @.str.50], align 4
@.str.231 = private unnamed_addr constant [13 x i8] c"sclk_intmem2\00", align 1
@.compoundliteral.232 = internal global [1 x ptr] [ptr @.str.50], align 4
@.str.233 = private unnamed_addr constant [11 x i8] c"aclk_dmac1\00", align 1
@.compoundliteral.234 = internal global [1 x ptr] [ptr @.str.50], align 4
@.str.235 = private unnamed_addr constant [14 x i8] c"aclk_strc_sys\00", align 1
@.compoundliteral.236 = internal global [1 x ptr] [ptr @.str.50], align 4
@.str.237 = private unnamed_addr constant [12 x i8] c"aclk_intmem\00", align 1
@.compoundliteral.238 = internal global [1 x ptr] [ptr @.str.50], align 4
@.str.239 = private unnamed_addr constant [12 x i8] c"aclk_crypto\00", align 1
@.compoundliteral.240 = internal global [1 x ptr] [ptr @.str.50], align 4
@.str.241 = private unnamed_addr constant [9 x i8] c"aclk_ccp\00", align 1
@.compoundliteral.242 = internal global [1 x ptr] [ptr @.str.50], align 4
@.str.243 = private unnamed_addr constant [12 x i8] c"hclk_crypto\00", align 1
@.compoundliteral.244 = internal global [1 x ptr] [ptr @.str.54], align 4
@.str.245 = private unnamed_addr constant [10 x i8] c"hclk_i2s0\00", align 1
@.compoundliteral.246 = internal global [1 x ptr] [ptr @.str.54], align 4
@.str.247 = private unnamed_addr constant [9 x i8] c"hclk_rom\00", align 1
@.compoundliteral.248 = internal global [1 x ptr] [ptr @.str.54], align 4
@.str.249 = private unnamed_addr constant [11 x i8] c"hclk_spdif\00", align 1
@.compoundliteral.250 = internal global [1 x ptr] [ptr @.str.54], align 4
@.str.251 = private unnamed_addr constant [15 x i8] c"hclk_spdif_8ch\00", align 1
@.compoundliteral.252 = internal global [1 x ptr] [ptr @.str.54], align 4
@.str.253 = private unnamed_addr constant [9 x i8] c"pclk_pwm\00", align 1
@.compoundliteral.254 = internal global [1 x ptr] [ptr @.str.52], align 4
@.str.255 = private unnamed_addr constant [11 x i8] c"pclk_timer\00", align 1
@.compoundliteral.256 = internal global [1 x ptr] [ptr @.str.52], align 4
@.str.257 = private unnamed_addr constant [10 x i8] c"pclk_i2c0\00", align 1
@.compoundliteral.258 = internal global [1 x ptr] [ptr @.str.52], align 4
@.str.259 = private unnamed_addr constant [10 x i8] c"pclk_i2c2\00", align 1
@.compoundliteral.260 = internal global [1 x ptr] [ptr @.str.52], align 4
@.str.261 = private unnamed_addr constant [15 x i8] c"pclk_ddrupctl0\00", align 1
@.compoundliteral.262 = internal global [1 x ptr] [ptr @.str.52], align 4
@.str.263 = private unnamed_addr constant [11 x i8] c"pclk_publ0\00", align 1
@.compoundliteral.264 = internal global [1 x ptr] [ptr @.str.52], align 4
@.str.265 = private unnamed_addr constant [15 x i8] c"pclk_ddrupctl1\00", align 1
@.compoundliteral.266 = internal global [1 x ptr] [ptr @.str.52], align 4
@.str.267 = private unnamed_addr constant [11 x i8] c"pclk_publ1\00", align 1
@.compoundliteral.268 = internal global [1 x ptr] [ptr @.str.52], align 4
@.str.269 = private unnamed_addr constant [16 x i8] c"pclk_efuse_1024\00", align 1
@.compoundliteral.270 = internal global [1 x ptr] [ptr @.str.52], align 4
@.str.271 = private unnamed_addr constant [10 x i8] c"pclk_tzpc\00", align 1
@.compoundliteral.272 = internal global [1 x ptr] [ptr @.str.52], align 4
@.str.273 = private unnamed_addr constant [11 x i8] c"pclk_uart2\00", align 1
@.compoundliteral.274 = internal global [1 x ptr] [ptr @.str.52], align 4
@.str.275 = private unnamed_addr constant [15 x i8] c"pclk_efuse_256\00", align 1
@.compoundliteral.276 = internal global [1 x ptr] [ptr @.str.52], align 4
@.str.277 = private unnamed_addr constant [11 x i8] c"pclk_rkpwm\00", align 1
@.compoundliteral.278 = internal global [1 x ptr] [ptr @.str.52], align 4
@.str.279 = private unnamed_addr constant [15 x i8] c"nclk_ddrupctl0\00", align 1
@.compoundliteral.280 = internal global [1 x ptr] [ptr @.str.42], align 4
@.str.281 = private unnamed_addr constant [15 x i8] c"nclk_ddrupctl1\00", align 1
@.compoundliteral.282 = internal global [1 x ptr] [ptr @.str.42], align 4
@.str.283 = private unnamed_addr constant [13 x i8] c"sclk_ddrphy0\00", align 1
@.compoundliteral.284 = internal global [1 x ptr] [ptr @.str.42], align 4
@.str.285 = private unnamed_addr constant [13 x i8] c"sclk_ddrphy1\00", align 1
@.compoundliteral.286 = internal global [1 x ptr] [ptr @.str.42], align 4
@.str.287 = private unnamed_addr constant [21 x i8] c"aclk_peri_axi_matrix\00", align 1
@.compoundliteral.288 = internal global [1 x ptr] [ptr @.str.140], align 4
@.str.289 = private unnamed_addr constant [11 x i8] c"aclk_dmac2\00", align 1
@.compoundliteral.290 = internal global [1 x ptr] [ptr @.str.140], align 4
@.str.291 = private unnamed_addr constant [14 x i8] c"aclk_peri_niu\00", align 1
@.compoundliteral.292 = internal global [1 x ptr] [ptr @.str.140], align 4
@.str.293 = private unnamed_addr constant [9 x i8] c"aclk_mmu\00", align 1
@.compoundliteral.294 = internal global [1 x ptr] [ptr @.str.140], align 4
@.str.295 = private unnamed_addr constant [10 x i8] c"aclk_gmac\00", align 1
@.compoundliteral.296 = internal global [1 x ptr] [ptr @.str.140], align 4
@.str.297 = private unnamed_addr constant [9 x i8] c"hclk_gps\00", align 1
@.compoundliteral.298 = internal global [1 x ptr] [ptr @.str.140], align 4
@.str.299 = private unnamed_addr constant [17 x i8] c"hclk_peri_matrix\00", align 1
@.compoundliteral.300 = internal global [1 x ptr] [ptr @.str.138], align 4
@.str.301 = private unnamed_addr constant [10 x i8] c"hclk_otg0\00", align 1
@.compoundliteral.302 = internal global [1 x ptr] [ptr @.str.138], align 4
@.str.303 = private unnamed_addr constant [11 x i8] c"hclk_host0\00", align 1
@.compoundliteral.304 = internal global [1 x ptr] [ptr @.str.138], align 4
@.str.305 = private unnamed_addr constant [11 x i8] c"hclk_host1\00", align 1
@.compoundliteral.306 = internal global [1 x ptr] [ptr @.str.138], align 4
@.str.307 = private unnamed_addr constant [10 x i8] c"hclk_hsic\00", align 1
@.compoundliteral.308 = internal global [1 x ptr] [ptr @.str.138], align 4
@.str.309 = private unnamed_addr constant [14 x i8] c"hclk_usb_peri\00", align 1
@.compoundliteral.310 = internal global [1 x ptr] [ptr @.str.138], align 4
@.str.311 = private unnamed_addr constant [19 x i8] c"hclk_peri_ahb_arbi\00", align 1
@.compoundliteral.312 = internal global [1 x ptr] [ptr @.str.138], align 4
@.str.313 = private unnamed_addr constant [10 x i8] c"hclk_emem\00", align 1
@.compoundliteral.314 = internal global [1 x ptr] [ptr @.str.138], align 4
@.str.315 = private unnamed_addr constant [9 x i8] c"hclk_mem\00", align 1
@.compoundliteral.316 = internal global [1 x ptr] [ptr @.str.138], align 4
@.str.317 = private unnamed_addr constant [12 x i8] c"hclk_nandc0\00", align 1
@.compoundliteral.318 = internal global [1 x ptr] [ptr @.str.138], align 4
@.str.319 = private unnamed_addr constant [12 x i8] c"hclk_nandc1\00", align 1
@.compoundliteral.320 = internal global [1 x ptr] [ptr @.str.138], align 4
@.str.321 = private unnamed_addr constant [9 x i8] c"hclk_tsp\00", align 1
@.compoundliteral.322 = internal global [1 x ptr] [ptr @.str.138], align 4
@.str.323 = private unnamed_addr constant [11 x i8] c"hclk_sdmmc\00", align 1
@.compoundliteral.324 = internal global [1 x ptr] [ptr @.str.138], align 4
@.str.325 = private unnamed_addr constant [11 x i8] c"hclk_sdio0\00", align 1
@.compoundliteral.326 = internal global [1 x ptr] [ptr @.str.138], align 4
@.str.327 = private unnamed_addr constant [11 x i8] c"hclk_sdio1\00", align 1
@.compoundliteral.328 = internal global [1 x ptr] [ptr @.str.138], align 4
@.str.329 = private unnamed_addr constant [10 x i8] c"hclk_emmc\00", align 1
@.compoundliteral.330 = internal global [1 x ptr] [ptr @.str.138], align 4
@.str.331 = private unnamed_addr constant [11 x i8] c"hclk_hsadc\00", align 1
@.compoundliteral.332 = internal global [1 x ptr] [ptr @.str.138], align 4
@.str.333 = private unnamed_addr constant [14 x i8] c"pmu_hclk_otg0\00", align 1
@.compoundliteral.334 = internal global [1 x ptr] [ptr @.str.138], align 4
@.str.335 = private unnamed_addr constant [17 x i8] c"pclk_peri_matrix\00", align 1
@.compoundliteral.336 = internal global [1 x ptr] [ptr @.str.136], align 4
@.str.337 = private unnamed_addr constant [10 x i8] c"pclk_spi0\00", align 1
@.compoundliteral.338 = internal global [1 x ptr] [ptr @.str.136], align 4
@.str.339 = private unnamed_addr constant [10 x i8] c"pclk_spi1\00", align 1
@.compoundliteral.340 = internal global [1 x ptr] [ptr @.str.136], align 4
@.str.341 = private unnamed_addr constant [10 x i8] c"pclk_spi2\00", align 1
@.compoundliteral.342 = internal global [1 x ptr] [ptr @.str.136], align 4
@.str.343 = private unnamed_addr constant [10 x i8] c"pclk_ps2c\00", align 1
@.compoundliteral.344 = internal global [1 x ptr] [ptr @.str.136], align 4
@.str.345 = private unnamed_addr constant [11 x i8] c"pclk_uart0\00", align 1
@.compoundliteral.346 = internal global [1 x ptr] [ptr @.str.136], align 4
@.str.347 = private unnamed_addr constant [11 x i8] c"pclk_uart1\00", align 1
@.compoundliteral.348 = internal global [1 x ptr] [ptr @.str.136], align 4
@.str.349 = private unnamed_addr constant [10 x i8] c"pclk_i2c4\00", align 1
@.compoundliteral.350 = internal global [1 x ptr] [ptr @.str.136], align 4
@.str.351 = private unnamed_addr constant [11 x i8] c"pclk_uart3\00", align 1
@.compoundliteral.352 = internal global [1 x ptr] [ptr @.str.136], align 4
@.str.353 = private unnamed_addr constant [11 x i8] c"pclk_uart4\00", align 1
@.compoundliteral.354 = internal global [1 x ptr] [ptr @.str.136], align 4
@.str.355 = private unnamed_addr constant [10 x i8] c"pclk_i2c1\00", align 1
@.compoundliteral.356 = internal global [1 x ptr] [ptr @.str.136], align 4
@.str.357 = private unnamed_addr constant [10 x i8] c"pclk_i2c3\00", align 1
@.compoundliteral.358 = internal global [1 x ptr] [ptr @.str.136], align 4
@.str.359 = private unnamed_addr constant [12 x i8] c"pclk_saradc\00", align 1
@.compoundliteral.360 = internal global [1 x ptr] [ptr @.str.136], align 4
@.str.361 = private unnamed_addr constant [11 x i8] c"pclk_tsadc\00", align 1
@.compoundliteral.362 = internal global [1 x ptr] [ptr @.str.136], align 4
@.str.363 = private unnamed_addr constant [9 x i8] c"pclk_sim\00", align 1
@.compoundliteral.364 = internal global [1 x ptr] [ptr @.str.136], align 4
@.str.365 = private unnamed_addr constant [10 x i8] c"pclk_i2c5\00", align 1
@.compoundliteral.366 = internal global [1 x ptr] [ptr @.str.136], align 4
@.str.367 = private unnamed_addr constant [10 x i8] c"pclk_gmac\00", align 1
@.compoundliteral.368 = internal global [1 x ptr] [ptr @.str.136], align 4
@.str.369 = private unnamed_addr constant [15 x i8] c"sclk_lcdc_pwm0\00", align 1
@.compoundliteral.370 = internal global [1 x ptr] [ptr @.str.8], align 4
@.str.371 = private unnamed_addr constant [15 x i8] c"sclk_lcdc_pwm1\00", align 1
@.compoundliteral.372 = internal global [1 x ptr] [ptr @.str.8], align 4
@.str.373 = private unnamed_addr constant [15 x i8] c"sclk_pvtm_core\00", align 1
@.compoundliteral.374 = internal global [1 x ptr] [ptr @.str.8], align 4
@.str.375 = private unnamed_addr constant [14 x i8] c"sclk_pvtm_gpu\00", align 1
@.compoundliteral.376 = internal global [1 x ptr] [ptr @.str.8], align 4
@.str.377 = private unnamed_addr constant [17 x i8] c"sclk_mipidsi_24m\00", align 1
@.compoundliteral.378 = internal global [1 x ptr] [ptr @.str.8], align 4
@.str.379 = private unnamed_addr constant [9 x i8] c"aclk_gpu\00", align 1
@.compoundliteral.380 = internal global [1 x ptr] [ptr @.str.134], align 4
@.str.381 = private unnamed_addr constant [11 x i8] c"pclk_gpio8\00", align 1
@.compoundliteral.382 = internal global [1 x ptr] [ptr @.str.130], align 4
@.str.383 = private unnamed_addr constant [11 x i8] c"pclk_gpio7\00", align 1
@.compoundliteral.384 = internal global [1 x ptr] [ptr @.str.130], align 4
@.str.385 = private unnamed_addr constant [11 x i8] c"pclk_gpio1\00", align 1
@.compoundliteral.386 = internal global [1 x ptr] [ptr @.str.130], align 4
@.str.387 = private unnamed_addr constant [11 x i8] c"pclk_gpio2\00", align 1
@.compoundliteral.388 = internal global [1 x ptr] [ptr @.str.130], align 4
@.str.389 = private unnamed_addr constant [11 x i8] c"pclk_gpio3\00", align 1
@.compoundliteral.390 = internal global [1 x ptr] [ptr @.str.130], align 4
@.str.391 = private unnamed_addr constant [11 x i8] c"pclk_gpio4\00", align 1
@.compoundliteral.392 = internal global [1 x ptr] [ptr @.str.130], align 4
@.str.393 = private unnamed_addr constant [11 x i8] c"pclk_gpio5\00", align 1
@.compoundliteral.394 = internal global [1 x ptr] [ptr @.str.130], align 4
@.str.395 = private unnamed_addr constant [11 x i8] c"pclk_gpio6\00", align 1
@.compoundliteral.396 = internal global [1 x ptr] [ptr @.str.130], align 4
@.str.397 = private unnamed_addr constant [9 x i8] c"pclk_grf\00", align 1
@.compoundliteral.398 = internal global [1 x ptr] [ptr @.str.130], align 4
@.str.399 = private unnamed_addr constant [15 x i8] c"pclk_alive_niu\00", align 1
@.compoundliteral.400 = internal global [1 x ptr] [ptr @.str.130], align 4
@.str.401 = private unnamed_addr constant [9 x i8] c"pclk_wdt\00", align 1
@.compoundliteral.402 = internal global [1 x ptr] [ptr @.str.130], align 4
@.str.403 = private unnamed_addr constant [9 x i8] c"pclk_pmu\00", align 1
@.compoundliteral.404 = internal global [1 x ptr] [ptr @.str.132], align 4
@.str.405 = private unnamed_addr constant [13 x i8] c"pclk_intmem1\00", align 1
@.compoundliteral.406 = internal global [1 x ptr] [ptr @.str.132], align 4
@.str.407 = private unnamed_addr constant [13 x i8] c"pclk_pmu_niu\00", align 1
@.compoundliteral.408 = internal global [1 x ptr] [ptr @.str.132], align 4
@.str.409 = private unnamed_addr constant [10 x i8] c"pclk_sgrf\00", align 1
@.compoundliteral.410 = internal global [1 x ptr] [ptr @.str.132], align 4
@.str.411 = private unnamed_addr constant [11 x i8] c"pclk_gpio0\00", align 1
@.compoundliteral.412 = internal global [1 x ptr] [ptr @.str.132], align 4
@.str.413 = private unnamed_addr constant [9 x i8] c"hclk_rga\00", align 1
@.str.414 = private unnamed_addr constant [9 x i8] c"hclk_vio\00", align 1
@.compoundliteral.415 = internal global [1 x ptr] [ptr @.str.414], align 4
@.str.416 = private unnamed_addr constant [10 x i8] c"hclk_vop0\00", align 1
@.compoundliteral.417 = internal global [1 x ptr] [ptr @.str.414], align 4
@.str.418 = private unnamed_addr constant [10 x i8] c"hclk_vop1\00", align 1
@.compoundliteral.419 = internal global [1 x ptr] [ptr @.str.414], align 4
@.str.420 = private unnamed_addr constant [18 x i8] c"hclk_vio_ahb_arbi\00", align 1
@.compoundliteral.421 = internal global [1 x ptr] [ptr @.str.414], align 4
@.str.422 = private unnamed_addr constant [13 x i8] c"hclk_vio_niu\00", align 1
@.compoundliteral.423 = internal global [1 x ptr] [ptr @.str.414], align 4
@.str.424 = private unnamed_addr constant [9 x i8] c"hclk_vip\00", align 1
@.compoundliteral.425 = internal global [1 x ptr] [ptr @.str.414], align 4
@.str.426 = private unnamed_addr constant [9 x i8] c"hclk_iep\00", align 1
@.compoundliteral.427 = internal global [1 x ptr] [ptr @.str.414], align 4
@.str.428 = private unnamed_addr constant [9 x i8] c"hclk_isp\00", align 1
@.compoundliteral.429 = internal global [1 x ptr] [ptr @.str.414], align 4
@.str.430 = private unnamed_addr constant [14 x i8] c"hclk_vio2_h2p\00", align 1
@.compoundliteral.431 = internal global [1 x ptr] [ptr @.str.414], align 4
@.str.432 = private unnamed_addr constant [15 x i8] c"pclk_mipi_dsi0\00", align 1
@.compoundliteral.433 = internal global [1 x ptr] [ptr @.str.414], align 4
@.str.434 = private unnamed_addr constant [15 x i8] c"pclk_mipi_dsi1\00", align 1
@.compoundliteral.435 = internal global [1 x ptr] [ptr @.str.414], align 4
@.str.436 = private unnamed_addr constant [14 x i8] c"pclk_mipi_csi\00", align 1
@.compoundliteral.437 = internal global [1 x ptr] [ptr @.str.414], align 4
@.str.438 = private unnamed_addr constant [14 x i8] c"pclk_lvds_phy\00", align 1
@.compoundliteral.439 = internal global [1 x ptr] [ptr @.str.414], align 4
@.str.440 = private unnamed_addr constant [14 x i8] c"pclk_edp_ctrl\00", align 1
@.compoundliteral.441 = internal global [1 x ptr] [ptr @.str.414], align 4
@.str.442 = private unnamed_addr constant [15 x i8] c"pclk_hdmi_ctrl\00", align 1
@.compoundliteral.443 = internal global [1 x ptr] [ptr @.str.414], align 4
@.str.444 = private unnamed_addr constant [14 x i8] c"pclk_vio2_h2p\00", align 1
@.compoundliteral.445 = internal global [1 x ptr] [ptr @.str.414], align 4
@.str.446 = private unnamed_addr constant [10 x i8] c"aclk_vop0\00", align 1
@.compoundliteral.447 = internal global [1 x ptr] [ptr @.str.109], align 4
@.str.448 = private unnamed_addr constant [9 x i8] c"aclk_iep\00", align 1
@.compoundliteral.449 = internal global [1 x ptr] [ptr @.str.109], align 4
@.str.450 = private unnamed_addr constant [14 x i8] c"aclk_vio0_niu\00", align 1
@.compoundliteral.451 = internal global [1 x ptr] [ptr @.str.109], align 4
@.str.452 = private unnamed_addr constant [9 x i8] c"aclk_vip\00", align 1
@.compoundliteral.453 = internal global [1 x ptr] [ptr @.str.109], align 4
@.str.454 = private unnamed_addr constant [10 x i8] c"aclk_vop1\00", align 1
@.compoundliteral.455 = internal global [1 x ptr] [ptr @.str.110], align 4
@.str.456 = private unnamed_addr constant [9 x i8] c"aclk_isp\00", align 1
@.compoundliteral.457 = internal global [1 x ptr] [ptr @.str.110], align 4
@.str.458 = private unnamed_addr constant [14 x i8] c"aclk_vio1_niu\00", align 1
@.compoundliteral.459 = internal global [1 x ptr] [ptr @.str.110], align 4
@.str.460 = private unnamed_addr constant [9 x i8] c"aclk_rga\00", align 1
@.compoundliteral.461 = internal global [1 x ptr] [ptr @.str.111], align 4
@.str.462 = private unnamed_addr constant [13 x i8] c"aclk_rga_niu\00", align 1
@.compoundliteral.463 = internal global [1 x ptr] [ptr @.str.111], align 4
@.str.464 = private unnamed_addr constant [12 x i8] c"pclk_vip_in\00", align 1
@.str.465 = private unnamed_addr constant [8 x i8] c"ext_vip\00", align 1
@.compoundliteral.466 = internal global [1 x ptr] [ptr @.str.465], align 4
@.str.467 = private unnamed_addr constant [9 x i8] c"pclk_vip\00", align 1
@.compoundliteral.468 = internal global [1 x ptr] [ptr @.str.464], align 4
@.str.469 = private unnamed_addr constant [12 x i8] c"pclk_isp_in\00", align 1
@.str.470 = private unnamed_addr constant [8 x i8] c"ext_isp\00", align 1
@.compoundliteral.471 = internal global [1 x ptr] [ptr @.str.470], align 4
@.str.472 = private unnamed_addr constant [9 x i8] c"pclk_isp\00", align 1
@.compoundliteral.473 = internal global [1 x ptr] [ptr @.str.469], align 4
@mux_i2s_pre_p = internal constant [4 x ptr] [ptr @.str.64, ptr @.str.65, ptr @.str.474, ptr @.str.62], section ".init.rodata", align 4
@.str.474 = private unnamed_addr constant [8 x i8] c"ext_i2s\00", align 1
@mux_spdif_p = internal constant [3 x ptr] [ptr @.str.72, ptr @.str.74, ptr @.str.62], section ".init.rodata", align 4
@mux_spdif_8ch_p = internal constant [3 x ptr] [ptr @.str.79, ptr @.str.81, ptr @.str.62], section ".init.rodata", align 4
@.str.475 = private unnamed_addr constant [24 x i8] c"unstable:usbphy480m_src\00", align 1
@.str.476 = private unnamed_addr constant [12 x i8] c"ext_edp_24m\00", align 1
@.str.477 = private unnamed_addr constant [7 x i8] c"xin27m\00", align 1
@.str.478 = private unnamed_addr constant [11 x i8] c"sclk_uart0\00", align 1
@mux_uart0_p = internal constant [3 x ptr] [ptr @.str.183, ptr @.str.184, ptr @.str.8], section ".init.rodata", align 4
@.str.479 = private unnamed_addr constant [11 x i8] c"sclk_uart1\00", align 1
@mux_uart1_p = internal constant [3 x ptr] [ptr @.str.187, ptr @.str.189, ptr @.str.8], section ".init.rodata", align 4
@.str.480 = private unnamed_addr constant [11 x i8] c"sclk_uart2\00", align 1
@mux_uart2_p = internal constant [3 x ptr] [ptr @.str.191, ptr @.str.193, ptr @.str.8], section ".init.rodata", align 4
@.str.481 = private unnamed_addr constant [11 x i8] c"sclk_uart3\00", align 1
@mux_uart3_p = internal constant [3 x ptr] [ptr @.str.195, ptr @.str.197, ptr @.str.8], section ".init.rodata", align 4
@.str.482 = private unnamed_addr constant [11 x i8] c"sclk_uart4\00", align 1
@mux_uart4_p = internal constant [3 x ptr] [ptr @.str.199, ptr @.str.201, ptr @.str.8], section ".init.rodata", align 4
@.str.483 = private unnamed_addr constant [9 x i8] c"ext_gmac\00", align 1
@.str.484 = private unnamed_addr constant [10 x i8] c"ext_hsadc\00", align 1
@.str.485 = private unnamed_addr constant [18 x i8] c"sclk_otgphy1_480m\00", align 1
@.str.486 = private unnamed_addr constant [18 x i8] c"sclk_otgphy2_480m\00", align 1
@.str.487 = private unnamed_addr constant [18 x i8] c"sclk_otgphy0_480m\00", align 1
@.compoundliteral.488 = internal global [1 x ptr] [ptr @.str.110], align 4
@.compoundliteral.489 = internal global [1 x ptr] [ptr @.str.109], align 4
@rk3288_saved_cru_regs.0 = internal unnamed_addr global i32 0, align 4
@rk3288_saved_cru_regs.1 = internal unnamed_addr global i32 0, align 4
@rk3288_saved_cru_regs.2 = internal unnamed_addr global i32 0, align 4
@rk3288_saved_cru_regs.3 = internal unnamed_addr global i32 0, align 4
@rk3288_saved_cru_regs.4 = internal unnamed_addr global i32 0, align 4
@rk3288_saved_cru_regs.5 = internal unnamed_addr global i32 0, align 4
@rk3288_saved_cru_regs.6 = internal unnamed_addr global i32 0, align 4
@llvm.compiler.used = appending global [2 x ptr] [ptr @__of_table_rk3288_cru, ptr @__of_table_rk3288w_cru], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @rk3288_clk_init(ptr noundef %0) #0 section ".init.text" {
  tail call fastcc void @rk3288_common_init(ptr noundef %0, i32 noundef 0) #4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @rk3288w_clk_init(ptr noundef %0) #0 section ".init.text" {
  tail call fastcc void @rk3288_common_init(ptr noundef %0, i32 noundef 1) #4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @rk3288_common_init(ptr noundef %0, i32 noundef %1) unnamed_addr #0 section ".init.text" {
  %3 = tail call ptr @of_iomap(ptr noundef %0, i32 noundef 0) #5
  store ptr %3, ptr @rk3288_cru_base, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.rk3288_common_init) #6
  br label %18

7:                                                ; preds = %2
  %8 = tail call ptr @rockchip_clk_init(ptr noundef %0, ptr noundef nonnull %3, i32 noundef 479) #5
  %9 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %9, label %10, label %13

10:                                               ; preds = %7
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.rk3288_common_init) #6
  %12 = load ptr, ptr @rk3288_cru_base, align 4
  tail call void @iounmap(ptr noundef %12) #5
  br label %18

13:                                               ; preds = %7
  tail call void @rockchip_clk_register_plls(ptr noundef %8, ptr noundef nonnull @rk3288_pll_clks, i32 noundef 5, i32 noundef 644) #5
  tail call void @rockchip_clk_register_branches(ptr noundef %8, ptr noundef nonnull @rk3288_clk_branches, i32 noundef 251) #5
  %14 = icmp eq i32 %1, 1
  %15 = select i1 %14, ptr @rk3288w_hclkvio_branch, ptr @rk3288_hclkvio_branch
  tail call void @rockchip_clk_register_branches(ptr noundef %8, ptr noundef nonnull %15, i32 noundef 1) #5
  tail call void @rockchip_clk_protect_critical(ptr noundef nonnull @rk3288_critical_clocks, i32 noundef 13) #5
  tail call void @rockchip_clk_register_armclk(ptr noundef %8, i32 noundef 6, ptr noundef nonnull @.str.2, ptr noundef nonnull @mux_armclk_p, i8 noundef zeroext 2, ptr noundef nonnull @rk3288_cpuclk_data, ptr noundef nonnull @rk3288_cpuclk_rates, i32 noundef 14) #5
  %16 = load ptr, ptr @rk3288_cru_base, align 4
  %17 = getelementptr i8, ptr %16, i32 440
  tail call void @rockchip_register_softrst(ptr noundef %0, i32 noundef 12, ptr noundef %17, i8 noundef zeroext 1) #5
  tail call void @rockchip_register_restart_notifier(ptr noundef %8, i32 noundef 432, ptr noundef nonnull @rk3288_clk_shutdown) #5
  tail call void @register_syscore_ops(ptr noundef nonnull @rk3288_clk_syscore_ops) #5
  tail call void @rockchip_clk_of_add_provider(ptr noundef %0, ptr noundef %8) #5
  br label %18

18:                                               ; preds = %13, %10, %5
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

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rk3288_clk_shutdown() #3 {
  %1 = load ptr, ptr @rk3288_cru_base, align 4
  %2 = getelementptr i8, ptr %1, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2, i32 -217907200) #5, !srcloc !8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @register_syscore_ops(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rockchip_clk_of_add_provider(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rk3288_clk_suspend() #3 {
  %1 = load ptr, ptr @rk3288_cru_base, align 4
  %2 = getelementptr i8, ptr %1, i32 80
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #5, !srcloc !9
  store i32 %3, ptr @rk3288_saved_cru_regs.0, align 4
  %4 = load ptr, ptr @rk3288_cru_base, align 4
  %5 = getelementptr i8, ptr %4, i32 96
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #5, !srcloc !9
  store i32 %6, ptr @rk3288_saved_cru_regs.1, align 4
  %7 = load ptr, ptr @rk3288_cru_base, align 4
  %8 = getelementptr i8, ptr %7, i32 100
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #5, !srcloc !9
  store i32 %9, ptr @rk3288_saved_cru_regs.2, align 4
  %10 = load ptr, ptr @rk3288_cru_base, align 4
  %11 = getelementptr i8, ptr %10, i32 136
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #5, !srcloc !9
  store i32 %12, ptr @rk3288_saved_cru_regs.3, align 4
  %13 = load ptr, ptr @rk3288_cru_base, align 4
  %14 = getelementptr i8, ptr %13, i32 228
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #5, !srcloc !9
  store i32 %15, ptr @rk3288_saved_cru_regs.4, align 4
  %16 = load ptr, ptr @rk3288_cru_base, align 4
  %17 = getelementptr i8, ptr %16, i32 244
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #5, !srcloc !9
  store i32 %18, ptr @rk3288_saved_cru_regs.5, align 4
  %19 = load ptr, ptr @rk3288_cru_base, align 4
  %20 = getelementptr i8, ptr %19, i32 392
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #5, !srcloc !9
  store i32 %21, ptr @rk3288_saved_cru_regs.6, align 4
  %22 = load ptr, ptr @rk3288_cru_base, align 4
  %23 = getelementptr i8, ptr %22, i32 392
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 268435456) #5, !srcloc !8
  %24 = load ptr, ptr @rk3288_cru_base, align 4
  %25 = getelementptr i8, ptr %24, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 -217907200) #5, !srcloc !8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rk3288_clk_resume() #3 {
  %1 = load i32, ptr @rk3288_saved_cru_regs.6, align 4
  %2 = or i32 %1, -65536
  %3 = load ptr, ptr @rk3288_cru_base, align 4
  %4 = getelementptr i8, ptr %3, i32 392
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 %2) #5, !srcloc !8
  %5 = load i32, ptr @rk3288_saved_cru_regs.5, align 4
  %6 = or i32 %5, -65536
  %7 = load ptr, ptr @rk3288_cru_base, align 4
  %8 = getelementptr i8, ptr %7, i32 244
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %6) #5, !srcloc !8
  %9 = load i32, ptr @rk3288_saved_cru_regs.4, align 4
  %10 = or i32 %9, -65536
  %11 = load ptr, ptr @rk3288_cru_base, align 4
  %12 = getelementptr i8, ptr %11, i32 228
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %10) #5, !srcloc !8
  %13 = load i32, ptr @rk3288_saved_cru_regs.3, align 4
  %14 = or i32 %13, -65536
  %15 = load ptr, ptr @rk3288_cru_base, align 4
  %16 = getelementptr i8, ptr %15, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %14) #5, !srcloc !8
  %17 = load i32, ptr @rk3288_saved_cru_regs.2, align 4
  %18 = or i32 %17, -65536
  %19 = load ptr, ptr @rk3288_cru_base, align 4
  %20 = getelementptr i8, ptr %19, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %18) #5, !srcloc !8
  %21 = load i32, ptr @rk3288_saved_cru_regs.1, align 4
  %22 = or i32 %21, -65536
  %23 = load ptr, ptr @rk3288_cru_base, align 4
  %24 = getelementptr i8, ptr %23, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %22) #5, !srcloc !8
  %25 = load i32, ptr @rk3288_saved_cru_regs.0, align 4
  %26 = or i32 %25, -65536
  %27 = load ptr, ptr @rk3288_cru_base, align 4
  %28 = getelementptr i8, ptr %27, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %26) #5, !srcloc !8
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold }
attributes #5 = { nounwind }
attributes #6 = { cold nounwind }

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
!8 = !{i64 2883135}
!9 = !{i64 2883553}
