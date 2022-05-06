; ModuleID = '/llk/IR/drivers/clk/rockchip/clk-rk3188.c_pt.bc'
source_filename = "../drivers/clk/rockchip/clk-rk3188.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.rockchip_pll_clock = type { i32, ptr, ptr, i8, i32, i32, i32, i32, i32, i32, i8, ptr }
%struct.rockchip_clk_branch = type { i32, i32, ptr, ptr, i8, i32, i32, i8, i8, i8, i32, i8, i8, i8, ptr, i32, i8, i8, ptr }
%struct.rockchip_cpuclk_reg_data = type { [4 x i32], [4 x i8], [4 x i32], i32, i8, i8, i8, i32 }
%struct.rockchip_cpuclk_rate_table = type { i32, [5 x %struct.rockchip_cpuclk_clksel] }
%struct.rockchip_cpuclk_clksel = type { i32, i32 }
%struct.clk_div_table = type { i32, i32 }
%struct.anon.5 = type { i32, i32, i32, i32 }
%struct.rockchip_pll_rate_table = type { i32, %union.anon.4 }
%union.anon.4 = type { %struct.anon.6 }
%struct.anon.6 = type { i32, i32, i32, i32, i32, i32 }

@__of_table_rk3066a_cru = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3066a-cru\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3066a_clk_init }, section "__clk_of_table", align 4
@__of_table_rk3188a_cru = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3188a-cru\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3188a_clk_init }, section "__clk_of_table", align 4
@__of_table_rk3188_cru = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3188-cru\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3188_clk_init }, section "__clk_of_table", align 4
@rk3066_pll_clks = internal global [4 x %struct.rockchip_pll_clock] [%struct.rockchip_pll_clock { i32 1, ptr @.str.244, ptr @mux_pll_p, i8 2, i32 64, i32 0, i32 64, i32 0, i32 5, i32 1, i8 0, ptr @rk3188_pll_rates }, %struct.rockchip_pll_clock { i32 3, ptr @.str.235, ptr @mux_pll_p, i8 2, i32 64, i32 32, i32 64, i32 8, i32 6, i32 1, i8 1, ptr @rk3188_pll_rates }, %struct.rockchip_pll_clock { i32 2, ptr @.str.236, ptr @mux_pll_p, i8 2, i32 64, i32 16, i32 64, i32 4, i32 4, i32 1, i8 0, ptr null }, %struct.rockchip_pll_clock { i32 4, ptr @.str.4, ptr @mux_pll_p, i8 2, i32 64, i32 48, i32 64, i32 12, i32 7, i32 1, i8 1, ptr @rk3188_pll_rates }], section ".init.data", align 4
@rk3066a_clk_branches = internal global [39 x %struct.rockchip_clk_branch] [%struct.rockchip_clk_branch { i32 0, i32 3, ptr @.str.17, ptr @.compoundliteral.247, i8 1, i32 0, i32 72, i8 0, i8 0, i8 0, i32 0, i8 0, i8 3, i8 40, ptr @div_aclk_cpu_t, i32 0, i8 0, i8 0, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 3, ptr @.str.20, ptr @.compoundliteral.248, i8 1, i32 0, i32 72, i8 0, i8 0, i8 0, i32 0, i8 12, i8 2, i8 42, ptr null, i32 -1, i8 0, i8 0, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 3, ptr @.str.25, ptr @.compoundliteral.249, i8 1, i32 0, i32 72, i8 0, i8 0, i8 0, i32 0, i8 8, i8 2, i8 42, ptr null, i32 -1, i8 0, i8 0, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 0, ptr @.str.250, ptr @.compoundliteral.251, i8 1, i32 0, i32 72, i8 0, i8 0, i8 0, i32 0, i8 14, i8 2, i8 42, ptr null, i32 224, i8 9, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 6, i32 5, ptr @.str.252, ptr @.compoundliteral.253, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 244, i8 4, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 0, ptr @.str.30, ptr @mux_pll_src_gpll_cpll_p, i8 2, i32 0, i32 108, i8 15, i8 1, i8 4, i32 0, i8 0, i8 5, i8 8, ptr null, i32 216, i8 0, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 0, ptr @.str.254, ptr @mux_pll_src_cpll_gpll_p, i8 2, i32 0, i32 176, i8 0, i8 1, i8 4, i32 0, i8 8, i8 8, i8 8, ptr null, i32 220, i8 1, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 190, i32 1, ptr @.str.255, ptr @mux_rk3066_lcdc0_p, i8 2, i32 4, i32 176, i8 4, i8 1, i8 4, i32 0, i8 0, i8 0, i8 0, ptr null, i32 -1, i8 0, i8 0, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 0, ptr @.str.256, ptr @mux_pll_src_cpll_gpll_p, i8 2, i32 0, i32 180, i8 0, i8 1, i8 4, i32 0, i8 8, i8 8, i8 8, ptr null, i32 220, i8 2, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 191, i32 1, ptr @.str.257, ptr @mux_rk3066_lcdc1_p, i8 2, i32 4, i32 180, i8 4, i8 1, i8 4, i32 0, i8 0, i8 0, i8 0, ptr null, i32 -1, i8 0, i8 0, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 0, ptr @.str.258, ptr @.compoundliteral.259, i8 1, i32 0, i32 184, i8 0, i8 0, i8 0, i32 0, i8 8, i8 5, i8 8, ptr null, i32 220, i8 8, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 80, i32 1, ptr @.str.260, ptr @mux_sclk_cif1_p, i8 2, i32 0, i32 184, i8 15, i8 1, i8 4, i32 0, i8 0, i8 0, i8 0, ptr null, i32 -1, i8 0, i8 0, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.261, ptr @.compoundliteral.263, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 220, i8 4, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 7, ptr @.str.264, ptr @.compoundliteral.265, i8 1, i32 0, i32 188, i8 0, i8 0, i8 0, i32 0, i8 12, i8 0, i8 1, ptr null, i32 0, i8 0, i8 0, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 0, ptr @.str.266, ptr @mux_pll_src_cpll_gpll_p, i8 2, i32 0, i32 200, i8 8, i8 1, i8 4, i32 0, i8 0, i8 5, i8 8, ptr null, i32 220, i8 13, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 197, i32 5, ptr @.str.267, ptr @.compoundliteral.268, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 228, i8 15, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 86, i32 5, ptr @.str.269, ptr @.compoundliteral.270, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 220, i8 2, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 93, i32 0, ptr @.str.271, ptr @.compoundliteral.272, i8 1, i32 0, i32 204, i8 0, i8 0, i8 0, i32 0, i8 0, i8 16, i8 8, ptr null, i32 216, i8 15, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 1, ptr @.str.65, ptr @mux_pll_src_gpll_cpll_p, i8 2, i32 0, i32 76, i8 15, i8 1, i8 4, i32 0, i8 0, i8 0, i8 0, ptr null, i32 -1, i8 0, i8 0, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 0, ptr @.str.273, ptr @.compoundliteral.274, i8 1, i32 0, i32 76, i8 0, i8 0, i8 0, i32 0, i8 0, i8 7, i8 8, ptr null, i32 208, i8 7, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 4, ptr @.str.275, ptr @.compoundliteral.276, i8 1, i32 4, i32 92, i8 0, i8 0, i8 0, i32 0, i8 16, i8 16, i8 0, ptr null, i32 208, i8 8, i8 3, ptr @rk3066a_i2s0_fracmux }, %struct.rockchip_clk_branch { i32 0, i32 0, ptr @.str.277, ptr @.compoundliteral.278, i8 1, i32 0, i32 80, i8 0, i8 0, i8 0, i32 0, i8 0, i8 7, i8 8, ptr null, i32 208, i8 9, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 4, ptr @.str.279, ptr @.compoundliteral.280, i8 1, i32 4, i32 96, i8 0, i8 0, i8 0, i32 0, i8 16, i8 16, i8 0, ptr null, i32 208, i8 10, i8 3, ptr @rk3066a_i2s1_fracmux }, %struct.rockchip_clk_branch { i32 0, i32 0, ptr @.str.281, ptr @.compoundliteral.282, i8 1, i32 0, i32 84, i8 0, i8 0, i8 0, i32 0, i8 0, i8 7, i8 8, ptr null, i32 208, i8 11, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 4, ptr @.str.283, ptr @.compoundliteral.284, i8 1, i32 4, i32 100, i8 0, i8 0, i8 0, i32 0, i8 16, i8 16, i8 0, ptr null, i32 208, i8 12, i8 3, ptr @rk3066a_i2s2_fracmux }, %struct.rockchip_clk_branch { i32 454, i32 5, ptr @.str.285, ptr @.compoundliteral.286, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 236, i8 4, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 455, i32 5, ptr @.str.287, ptr @.compoundliteral.288, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 236, i8 2, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 456, i32 5, ptr @.str.289, ptr @.compoundliteral.290, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 236, i8 3, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 470, i32 5, ptr @.str.291, ptr @.compoundliteral.292, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 232, i8 6, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 473, i32 5, ptr @.str.293, ptr @.compoundliteral.294, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 224, i8 14, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 457, i32 5, ptr @.str.295, ptr @.compoundliteral.296, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 228, i8 14, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 199, i32 5, ptr @.str.297, ptr @.compoundliteral.298, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 232, i8 7, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 323, i32 5, ptr @.str.299, ptr @.compoundliteral.300, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 236, i8 8, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 324, i32 5, ptr @.str.301, ptr @.compoundliteral.302, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 236, i8 9, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 346, i32 5, ptr @.str.303, ptr @.compoundliteral.304, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 240, i8 15, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 332, i32 5, ptr @.str.305, ptr @.compoundliteral.306, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 240, i8 0, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 333, i32 5, ptr @.str.307, ptr @.compoundliteral.308, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 240, i8 1, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 345, i32 5, ptr @.str.309, ptr @.compoundliteral.310, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 240, i8 13, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 349, i32 5, ptr @.str.311, ptr @.compoundliteral.312, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 224, i8 13, i8 3, ptr null }], section ".init.data", align 4
@.str = private unnamed_addr constant [7 x i8] c"armclk\00", align 1
@mux_armclk_p = internal constant [2 x ptr] [ptr @.str.244, ptr @.str.3], section ".init.rodata", align 4
@rk3066_cpuclk_data = internal constant %struct.rockchip_cpuclk_reg_data { [4 x i32] [i32 68, i32 0, i32 0, i32 0], [4 x i8] zeroinitializer, [4 x i32] [i32 31, i32 0, i32 0, i32 0], i32 1, i8 1, i8 0, i8 8, i32 1 }, align 4
@rk3066_cpuclk_rates = internal global [7 x %struct.rockchip_cpuclk_rate_table] [%struct.rockchip_cpuclk_rate_table { i32 1416000000, [5 x %struct.rockchip_cpuclk_clksel] [%struct.rockchip_cpuclk_clksel { i32 68, i32 12583040 }, %struct.rockchip_cpuclk_clksel { i32 72, i32 -217620221 }, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer] }, %struct.rockchip_cpuclk_rate_table { i32 1200000000, [5 x %struct.rockchip_cpuclk_clksel] [%struct.rockchip_cpuclk_clksel { i32 68, i32 12583040 }, %struct.rockchip_cpuclk_clksel { i32 72, i32 -217620221 }, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer] }, %struct.rockchip_cpuclk_rate_table { i32 1008000000, [5 x %struct.rockchip_cpuclk_clksel] [%struct.rockchip_cpuclk_clksel { i32 68, i32 12583040 }, %struct.rockchip_cpuclk_clksel { i32 72, i32 -217620222 }, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer] }, %struct.rockchip_cpuclk_rate_table { i32 816000000, [5 x %struct.rockchip_cpuclk_clksel] [%struct.rockchip_cpuclk_clksel { i32 68, i32 12583040 }, %struct.rockchip_cpuclk_clksel { i32 72, i32 -217620222 }, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer] }, %struct.rockchip_cpuclk_rate_table { i32 600000000, [5 x %struct.rockchip_cpuclk_clksel] [%struct.rockchip_cpuclk_clksel { i32 68, i32 12582976 }, %struct.rockchip_cpuclk_clksel { i32 72, i32 -217620222 }, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer] }, %struct.rockchip_cpuclk_rate_table { i32 504000000, [5 x %struct.rockchip_cpuclk_clksel] [%struct.rockchip_cpuclk_clksel { i32 68, i32 12582976 }, %struct.rockchip_cpuclk_clksel { i32 72, i32 -217620223 }, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer] }, %struct.rockchip_cpuclk_rate_table { i32 312000000, [5 x %struct.rockchip_cpuclk_clksel] [%struct.rockchip_cpuclk_clksel { i32 68, i32 12582912 }, %struct.rockchip_cpuclk_clksel { i32 72, i32 -217640703 }, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer] }], section ".init.data", align 4
@rk3188_critical_clocks = internal constant [8 x ptr] [ptr @.str.16, ptr @.str.29, ptr @.str.32, ptr @.str.22, ptr @.str.34, ptr @.str.117, ptr @.str.119, ptr @.str.54], section ".init.rodata", align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"\013%s: could not map cru region\0A\00", align 1
@__func__.rk3188_common_clk_init = private unnamed_addr constant [23 x i8] c"rk3188_common_clk_init\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"\013%s: rockchip clk init failed\0A\00", align 1
@common_clk_branches = internal global [117 x %struct.rockchip_clk_branch] [%struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.3, ptr @.compoundliteral, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 208, i8 1, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 5, i32 0, ptr @.str.5, ptr @.compoundliteral.6, i8 1, i32 0, i32 68, i8 0, i8 0, i8 0, i32 0, i8 6, i8 2, i8 40, ptr @div_core_peri_t, i32 208, i8 0, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 205, i32 0, ptr @.str.7, ptr @mux_pll_src_cpll_gpll_p, i8 2, i32 0, i32 196, i8 7, i8 1, i8 4, i32 0, i8 0, i8 5, i8 8, ptr null, i32 220, i8 9, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 471, i32 5, ptr @.str.8, ptr @.compoundliteral.9, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 220, i8 10, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 206, i32 0, ptr @.str.10, ptr @mux_pll_src_cpll_gpll_p, i8 2, i32 0, i32 196, i8 15, i8 1, i8 4, i32 0, i8 8, i8 5, i8 8, ptr null, i32 220, i8 11, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 472, i32 5, ptr @.str.11, ptr @.compoundliteral.12, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 220, i8 12, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.13, ptr @.compoundliteral.14, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 212, i8 7, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 0, ptr @.str.15, ptr @mux_ddrphy_p, i8 2, i32 8, i32 172, i8 8, i8 1, i8 4, i32 0, i8 0, i8 2, i8 10, ptr null, i32 208, i8 2, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 203, i32 5, ptr @.str.16, ptr @.compoundliteral.18, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 208, i8 3, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.19, ptr @.compoundliteral.21, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 208, i8 6, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 350, i32 5, ptr @.str.22, ptr @.compoundliteral.23, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 208, i8 5, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 468, i32 5, ptr @.str.24, ptr @.compoundliteral.26, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 208, i8 4, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 0, ptr @.str.27, ptr @mux_pll_src_cpll_gpll_p, i8 2, i32 8, i32 192, i8 7, i8 1, i8 4, i32 0, i8 0, i8 5, i8 8, ptr null, i32 220, i8 0, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 0, ptr @.str.28, ptr @mux_pll_src_cpll_gpll_p, i8 2, i32 0, i32 192, i8 15, i8 1, i8 4, i32 0, i8 8, i8 5, i8 8, ptr null, i32 212, i8 4, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 204, i32 5, ptr @.str.29, ptr @.compoundliteral.31, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 216, i8 1, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 469, i32 0, ptr @.str.32, ptr @.compoundliteral.33, i8 1, i32 0, i32 108, i8 0, i8 0, i8 0, i32 0, i8 8, i8 2, i8 10, ptr null, i32 216, i8 2, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 351, i32 0, ptr @.str.34, ptr @.compoundliteral.35, i8 1, i32 0, i32 108, i8 0, i8 0, i8 0, i32 0, i8 12, i8 2, i8 10, ptr null, i32 216, i8 3, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 1, ptr @.str.36, ptr @mux_pll_src_cpll_gpll_p, i8 2, i32 0, i32 184, i8 0, i8 1, i8 4, i32 0, i8 0, i8 0, i8 0, ptr null, i32 -1, i8 0, i8 0, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 0, ptr @.str.37, ptr @.compoundliteral.38, i8 1, i32 0, i32 184, i8 0, i8 0, i8 0, i32 0, i8 1, i8 5, i8 8, ptr null, i32 220, i8 7, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 79, i32 1, ptr @.str.39, ptr @mux_sclk_cif0_p, i8 2, i32 0, i32 184, i8 7, i8 1, i8 4, i32 0, i8 0, i8 0, i8 0, ptr null, i32 -1, i8 0, i8 0, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.40, ptr @.compoundliteral.42, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 220, i8 3, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 7, ptr @.str.43, ptr @.compoundliteral.44, i8 1, i32 0, i32 188, i8 0, i8 0, i8 0, i32 0, i8 8, i8 0, i8 1, ptr null, i32 0, i8 0, i8 0, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 8, ptr @.str.45, ptr @.compoundliteral.47, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 1, i8 2, i8 0, ptr null, i32 0, i8 0, i8 0, ptr null }, %struct.rockchip_clk_branch { i32 81, i32 5, ptr @.str.48, ptr @.compoundliteral.49, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 212, i8 5, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 82, i32 5, ptr @.str.50, ptr @.compoundliteral.51, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 212, i8 6, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 0, ptr @.str.52, ptr @mux_mac_p, i8 2, i32 0, i32 152, i8 0, i8 1, i8 4, i32 0, i8 8, i8 5, i8 8, ptr null, i32 216, i8 5, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 68, i32 1, ptr @.str.53, ptr @mux_sclk_macref_p, i8 2, i32 4, i32 152, i8 4, i8 1, i8 4, i32 0, i8 0, i8 0, i8 0, ptr null, i32 -1, i8 0, i8 0, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.54, ptr @.compoundliteral.55, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 216, i8 12, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 0, ptr @.str.56, ptr @mux_pll_src_gpll_cpll_p, i8 2, i32 0, i32 156, i8 0, i8 1, i8 4, i32 0, i8 8, i8 8, i8 8, ptr null, i32 216, i8 6, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 4, ptr @.str.57, ptr @.compoundliteral.58, i8 1, i32 0, i32 160, i8 0, i8 0, i8 0, i32 0, i8 16, i8 16, i8 0, ptr null, i32 216, i8 7, i8 3, ptr @common_hsadc_out_fracmux }, %struct.rockchip_clk_branch { i32 83, i32 7, ptr @.str.59, ptr @.compoundliteral.61, i8 1, i32 0, i32 156, i8 0, i8 0, i8 0, i32 0, i8 7, i8 0, i8 1, ptr null, i32 0, i8 0, i8 0, ptr null }, %struct.rockchip_clk_branch { i32 71, i32 0, ptr @.str.62, ptr @.compoundliteral.63, i8 1, i32 0, i32 164, i8 0, i8 0, i8 0, i32 0, i8 8, i8 8, i8 8, ptr null, i32 216, i8 8, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 0, ptr @.str.64, ptr @.compoundliteral.66, i8 1, i32 0, i32 88, i8 0, i8 0, i8 0, i32 0, i8 0, i8 7, i8 8, ptr null, i32 208, i8 13, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 4, ptr @.str.67, ptr @.compoundliteral.68, i8 1, i32 4, i32 104, i8 0, i8 0, i8 0, i32 0, i8 16, i8 16, i8 0, ptr null, i32 208, i8 14, i8 3, ptr @common_spdif_fracmux }, %struct.rockchip_clk_branch { i32 92, i32 5, ptr @.str.69, ptr @.compoundliteral.70, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 216, i8 4, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 69, i32 0, ptr @.str.71, ptr @.compoundliteral.72, i8 1, i32 0, i32 168, i8 0, i8 0, i8 0, i32 0, i8 0, i8 7, i8 8, ptr null, i32 216, i8 9, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 70, i32 0, ptr @.str.73, ptr @.compoundliteral.74, i8 1, i32 0, i32 168, i8 0, i8 0, i8 0, i32 0, i8 8, i8 7, i8 8, ptr null, i32 216, i8 10, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 72, i32 0, ptr @.str.75, ptr @.compoundliteral.76, i8 1, i32 0, i32 112, i8 0, i8 0, i8 0, i32 0, i8 0, i8 6, i8 8, ptr null, i32 216, i8 11, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 73, i32 0, ptr @.str.77, ptr @.compoundliteral.78, i8 1, i32 0, i32 116, i8 0, i8 0, i8 0, i32 0, i8 0, i8 6, i8 8, ptr null, i32 216, i8 13, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 74, i32 0, ptr @.str.79, ptr @.compoundliteral.80, i8 1, i32 0, i32 116, i8 0, i8 0, i8 0, i32 0, i8 8, i8 6, i8 8, ptr null, i32 216, i8 14, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 1, ptr @.str.81, ptr @mux_pll_src_gpll_cpll_p, i8 2, i32 0, i32 116, i8 15, i8 1, i8 4, i32 0, i8 0, i8 0, i8 0, ptr null, i32 -1, i8 0, i8 0, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 0, ptr @.str.82, ptr @.compoundliteral.83, i8 1, i32 0, i32 120, i8 0, i8 0, i8 0, i32 0, i8 0, i8 7, i8 8, ptr null, i32 212, i8 8, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 4, ptr @.str.84, ptr @.compoundliteral.85, i8 1, i32 4, i32 136, i8 0, i8 0, i8 0, i32 0, i8 16, i8 16, i8 0, ptr null, i32 212, i8 9, i8 3, ptr @common_uart0_fracmux }, %struct.rockchip_clk_branch { i32 0, i32 0, ptr @.str.86, ptr @.compoundliteral.87, i8 1, i32 0, i32 124, i8 0, i8 0, i8 0, i32 0, i8 0, i8 7, i8 8, ptr null, i32 212, i8 10, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 4, ptr @.str.88, ptr @.compoundliteral.89, i8 1, i32 4, i32 140, i8 0, i8 0, i8 0, i32 0, i8 16, i8 16, i8 0, ptr null, i32 212, i8 11, i8 3, ptr @common_uart1_fracmux }, %struct.rockchip_clk_branch { i32 0, i32 0, ptr @.str.90, ptr @.compoundliteral.91, i8 1, i32 0, i32 128, i8 0, i8 0, i8 0, i32 0, i8 0, i8 7, i8 8, ptr null, i32 212, i8 12, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 4, ptr @.str.92, ptr @.compoundliteral.93, i8 1, i32 4, i32 144, i8 0, i8 0, i8 0, i32 0, i8 16, i8 16, i8 0, ptr null, i32 212, i8 13, i8 3, ptr @common_uart2_fracmux }, %struct.rockchip_clk_branch { i32 0, i32 0, ptr @.str.94, ptr @.compoundliteral.95, i8 1, i32 0, i32 132, i8 0, i8 0, i8 0, i32 0, i8 0, i8 7, i8 8, ptr null, i32 212, i8 14, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 4, ptr @.str.96, ptr @.compoundliteral.97, i8 1, i32 4, i32 148, i8 0, i8 0, i8 0, i32 0, i8 16, i8 16, i8 0, ptr null, i32 212, i8 15, i8 3, ptr @common_uart3_fracmux }, %struct.rockchip_clk_branch { i32 91, i32 5, ptr @.str.98, ptr @.compoundliteral.100, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 212, i8 3, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 84, i32 5, ptr @.str.101, ptr @.compoundliteral.102, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 212, i8 0, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 85, i32 5, ptr @.str.103, ptr @.compoundliteral.104, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 212, i8 1, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.105, ptr @.compoundliteral.106, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 244, i8 0, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 192, i32 5, ptr @.str.107, ptr @.compoundliteral.108, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 228, i8 0, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.109, ptr @.compoundliteral.110, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 224, i8 12, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.111, ptr @.compoundliteral.112, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 224, i8 10, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 463, i32 5, ptr @.str.113, ptr @.compoundliteral.114, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 228, i8 6, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 453, i32 5, ptr @.str.115, ptr @.compoundliteral.116, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 236, i8 1, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.117, ptr @.compoundliteral.118, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 224, i8 8, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.119, ptr @.compoundliteral.120, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 232, i8 12, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 461, i32 5, ptr @.str.121, ptr @.compoundliteral.122, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 232, i8 1, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 462, i32 5, ptr @.str.123, ptr @.compoundliteral.124, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 232, i8 2, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 464, i32 5, ptr @.str.125, ptr @.compoundliteral.126, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 232, i8 4, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 465, i32 5, ptr @.str.127, ptr @.compoundliteral.128, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 232, i8 9, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 466, i32 5, ptr @.str.129, ptr @.compoundliteral.130, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 232, i8 10, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.131, ptr @.compoundliteral.132, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 224, i8 0, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.133, ptr @.compoundliteral.134, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 224, i8 6, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.135, ptr @.compoundliteral.136, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 224, i8 7, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 452, i32 5, ptr @.str.137, ptr @.compoundliteral.138, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 236, i8 0, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 467, i32 5, ptr @.str.139, ptr @.compoundliteral.140, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 228, i8 9, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.141, ptr @.compoundliteral.142, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 224, i8 5, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 451, i32 5, ptr @.str.143, ptr @.compoundliteral.144, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 228, i8 13, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 459, i32 5, ptr @.str.145, ptr @.compoundliteral.146, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 236, i8 5, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 460, i32 5, ptr @.str.147, ptr @.compoundliteral.148, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 236, i8 6, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 448, i32 5, ptr @.str.149, ptr @.compoundliteral.150, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 228, i8 10, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 449, i32 5, ptr @.str.151, ptr @.compoundliteral.152, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 228, i8 11, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 450, i32 5, ptr @.str.153, ptr @.compoundliteral.154, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 228, i8 12, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.155, ptr @.compoundliteral.156, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 232, i8 13, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 195, i32 5, ptr @.str.157, ptr @.compoundliteral.158, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 232, i8 0, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 202, i32 5, ptr @.str.159, ptr @.compoundliteral.160, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 232, i8 5, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 200, i32 5, ptr @.str.161, ptr @.compoundliteral.162, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 232, i8 8, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.163, ptr @.compoundliteral.164, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 244, i8 5, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 196, i32 5, ptr @.str.165, ptr @.compoundliteral.166, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 232, i8 3, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 201, i32 5, ptr @.str.167, ptr @.compoundliteral.168, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 232, i8 11, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.169, ptr @.compoundliteral.170, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 244, i8 3, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.171, ptr @.compoundliteral.172, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 244, i8 2, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 326, i32 5, ptr @.str.173, ptr @.compoundliteral.174, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 236, i8 10, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 322, i32 5, ptr @.str.175, ptr @.compoundliteral.176, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 236, i8 7, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 336, i32 5, ptr @.str.177, ptr @.compoundliteral.178, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 240, i8 4, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 337, i32 5, ptr @.str.179, ptr @.compoundliteral.180, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 240, i8 5, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 341, i32 5, ptr @.str.181, ptr @.compoundliteral.182, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 240, i8 9, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 342, i32 5, ptr @.str.183, ptr @.compoundliteral.184, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 240, i8 10, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 343, i32 5, ptr @.str.185, ptr @.compoundliteral.186, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 240, i8 11, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 347, i32 5, ptr @.str.187, ptr @.compoundliteral.188, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 228, i8 2, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 348, i32 5, ptr @.str.189, ptr @.compoundliteral.190, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 228, i8 3, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 352, i32 5, ptr @.str.191, ptr @.compoundliteral.192, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 228, i8 7, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 353, i32 5, ptr @.str.193, ptr @.compoundliteral.194, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 244, i8 6, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.195, ptr @.compoundliteral.196, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 244, i8 1, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 320, i32 5, ptr @.str.197, ptr @.compoundliteral.198, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 228, i8 4, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 321, i32 5, ptr @.str.199, ptr @.compoundliteral.200, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 228, i8 5, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 193, i32 5, ptr @.str.201, ptr @.compoundliteral.202, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 228, i8 1, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 198, i32 5, ptr @.str.203, ptr @.compoundliteral.204, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 228, i8 8, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.205, ptr @.compoundliteral.206, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 224, i8 4, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.207, ptr @.compoundliteral.208, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 224, i8 2, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.209, ptr @.compoundliteral.210, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 224, i8 3, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.211, ptr @.compoundliteral.212, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 224, i8 1, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 327, i32 5, ptr @.str.213, ptr @.compoundliteral.214, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 236, i8 11, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 331, i32 5, ptr @.str.215, ptr @.compoundliteral.216, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 236, i8 15, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 328, i32 5, ptr @.str.217, ptr @.compoundliteral.218, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 236, i8 12, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 329, i32 5, ptr @.str.219, ptr @.compoundliteral.220, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 236, i8 13, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 334, i32 5, ptr @.str.221, ptr @.compoundliteral.222, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 240, i8 2, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 335, i32 5, ptr @.str.223, ptr @.compoundliteral.224, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 240, i8 3, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 338, i32 5, ptr @.str.225, ptr @.compoundliteral.226, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 240, i8 6, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 339, i32 5, ptr @.str.227, ptr @.compoundliteral.228, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 240, i8 7, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 340, i32 5, ptr @.str.229, ptr @.compoundliteral.230, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 240, i8 8, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 344, i32 5, ptr @.str.231, ptr @.compoundliteral.232, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 240, i8 12, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 330, i32 5, ptr @.str.233, ptr @.compoundliteral.234, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 236, i8 14, i8 3, ptr null }], section ".init.data", align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"gpll_armclk\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"gpll\00", align 1
@.compoundliteral = internal global [1 x ptr] [ptr @.str.4], align 4
@.str.5 = private unnamed_addr constant [10 x i8] c"core_peri\00", align 1
@.compoundliteral.6 = internal global [1 x ptr] [ptr @.str], align 4
@div_core_peri_t = internal global [5 x %struct.clk_div_table] [%struct.clk_div_table { i32 0, i32 2 }, %struct.clk_div_table { i32 1, i32 4 }, %struct.clk_div_table { i32 2, i32 8 }, %struct.clk_div_table { i32 3, i32 16 }, %struct.clk_div_table zeroinitializer], align 4
@.str.7 = private unnamed_addr constant [10 x i8] c"aclk_vepu\00", align 1
@mux_pll_src_cpll_gpll_p = internal constant [2 x ptr] [ptr @.str.235, ptr @.str.4], section ".init.rodata", align 4
@.str.8 = private unnamed_addr constant [10 x i8] c"hclk_vepu\00", align 1
@.compoundliteral.9 = internal global [1 x ptr] [ptr @.str.7], align 4
@.str.10 = private unnamed_addr constant [10 x i8] c"aclk_vdpu\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"hclk_vdpu\00", align 1
@.compoundliteral.12 = internal global [1 x ptr] [ptr @.str.10], align 4
@.str.13 = private unnamed_addr constant [9 x i8] c"gpll_ddr\00", align 1
@.compoundliteral.14 = internal global [1 x ptr] [ptr @.str.4], align 4
@.str.15 = private unnamed_addr constant [7 x i8] c"ddrphy\00", align 1
@mux_ddrphy_p = internal constant [2 x ptr] [ptr @.str.236, ptr @.str.13], section ".init.rodata", align 4
@.str.16 = private unnamed_addr constant [9 x i8] c"aclk_cpu\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"aclk_cpu_pre\00", align 1
@.compoundliteral.18 = internal global [1 x ptr] [ptr @.str.17], align 4
@.str.19 = private unnamed_addr constant [10 x i8] c"atclk_cpu\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"pclk_cpu_pre\00", align 1
@.compoundliteral.21 = internal global [1 x ptr] [ptr @.str.20], align 4
@.str.22 = private unnamed_addr constant [9 x i8] c"pclk_cpu\00", align 1
@.compoundliteral.23 = internal global [1 x ptr] [ptr @.str.20], align 4
@.str.24 = private unnamed_addr constant [9 x i8] c"hclk_cpu\00", align 1
@.str.25 = private unnamed_addr constant [13 x i8] c"hclk_cpu_pre\00", align 1
@.compoundliteral.26 = internal global [1 x ptr] [ptr @.str.25], align 4
@.str.27 = private unnamed_addr constant [15 x i8] c"aclk_lcdc0_pre\00", align 1
@.str.28 = private unnamed_addr constant [15 x i8] c"aclk_lcdc1_pre\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"aclk_peri\00", align 1
@.str.30 = private unnamed_addr constant [14 x i8] c"aclk_peri_pre\00", align 1
@.compoundliteral.31 = internal global [1 x ptr] [ptr @.str.30], align 4
@.str.32 = private unnamed_addr constant [10 x i8] c"hclk_peri\00", align 1
@.compoundliteral.33 = internal global [1 x ptr] [ptr @.str.30], align 4
@.str.34 = private unnamed_addr constant [10 x i8] c"pclk_peri\00", align 1
@.compoundliteral.35 = internal global [1 x ptr] [ptr @.str.30], align 4
@.str.36 = private unnamed_addr constant [8 x i8] c"cif_src\00", align 1
@.str.37 = private unnamed_addr constant [9 x i8] c"cif0_pre\00", align 1
@.compoundliteral.38 = internal global [1 x ptr] [ptr @.str.36], align 4
@.str.39 = private unnamed_addr constant [10 x i8] c"sclk_cif0\00", align 1
@mux_sclk_cif0_p = internal constant [2 x ptr] [ptr @.str.37, ptr @.str.46], section ".init.rodata", align 4
@.str.40 = private unnamed_addr constant [12 x i8] c"pclkin_cif0\00", align 1
@.str.41 = private unnamed_addr constant [9 x i8] c"ext_cif0\00", align 1
@.compoundliteral.42 = internal global [1 x ptr] [ptr @.str.41], align 4
@.str.43 = private unnamed_addr constant [10 x i8] c"pclk_cif0\00", align 1
@.compoundliteral.44 = internal global [1 x ptr] [ptr @.str.40], align 4
@.str.45 = private unnamed_addr constant [7 x i8] c"xin12m\00", align 1
@.str.46 = private unnamed_addr constant [7 x i8] c"xin24m\00", align 1
@.compoundliteral.47 = internal global [1 x ptr] [ptr @.str.46], align 4
@.str.48 = private unnamed_addr constant [13 x i8] c"sclk_otgphy0\00", align 1
@.compoundliteral.49 = internal global [1 x ptr] [ptr @.str.46], align 4
@.str.50 = private unnamed_addr constant [13 x i8] c"sclk_otgphy1\00", align 1
@.compoundliteral.51 = internal global [1 x ptr] [ptr @.str.46], align 4
@.str.52 = private unnamed_addr constant [8 x i8] c"mac_src\00", align 1
@mux_mac_p = internal constant [2 x ptr] [ptr @.str.4, ptr @.str.236], section ".init.rodata", align 4
@.str.53 = private unnamed_addr constant [12 x i8] c"sclk_macref\00", align 1
@mux_sclk_macref_p = internal constant [2 x ptr] [ptr @.str.52, ptr @.str.237], section ".init.rodata", align 4
@.str.54 = private unnamed_addr constant [16 x i8] c"sclk_mac_lbtest\00", align 1
@.compoundliteral.55 = internal global [1 x ptr] [ptr @.str.53], align 4
@.str.56 = private unnamed_addr constant [10 x i8] c"hsadc_src\00", align 1
@mux_pll_src_gpll_cpll_p = internal constant [2 x ptr] [ptr @.str.4, ptr @.str.235], section ".init.rodata", align 4
@.str.57 = private unnamed_addr constant [11 x i8] c"hsadc_frac\00", align 1
@.compoundliteral.58 = internal global [1 x ptr] [ptr @.str.56], align 4
@common_hsadc_out_fracmux = internal global %struct.rockchip_clk_branch { i32 0, i32 1, ptr @.str.60, ptr @mux_sclk_hsadc_p, i8 3, i32 0, i32 156, i8 4, i8 2, i8 4, i32 0, i8 0, i8 0, i8 0, ptr null, i32 -1, i8 0, i8 0, ptr null }, section ".init.data", align 4
@.str.59 = private unnamed_addr constant [11 x i8] c"sclk_hsadc\00", align 1
@.str.60 = private unnamed_addr constant [15 x i8] c"sclk_hsadc_out\00", align 1
@.compoundliteral.61 = internal global [1 x ptr] [ptr @.str.60], align 4
@.str.62 = private unnamed_addr constant [12 x i8] c"sclk_saradc\00", align 1
@.compoundliteral.63 = internal global [1 x ptr] [ptr @.str.46], align 4
@.str.64 = private unnamed_addr constant [10 x i8] c"spdif_pre\00", align 1
@.str.65 = private unnamed_addr constant [8 x i8] c"i2s_src\00", align 1
@.compoundliteral.66 = internal global [1 x ptr] [ptr @.str.65], align 4
@.str.67 = private unnamed_addr constant [11 x i8] c"spdif_frac\00", align 1
@.compoundliteral.68 = internal global [1 x ptr] [ptr @.str.64], align 4
@common_spdif_fracmux = internal global %struct.rockchip_clk_branch { i32 78, i32 1, ptr @.str.239, ptr @mux_sclk_spdif_p, i8 3, i32 4, i32 88, i8 8, i8 2, i8 4, i32 0, i8 0, i8 0, i8 0, ptr null, i32 -1, i8 0, i8 0, ptr null }, section ".init.data", align 4
@.str.69 = private unnamed_addr constant [9 x i8] c"sclk_smc\00", align 1
@.compoundliteral.70 = internal global [1 x ptr] [ptr @.str.32], align 4
@.str.71 = private unnamed_addr constant [10 x i8] c"sclk_spi0\00", align 1
@.compoundliteral.72 = internal global [1 x ptr] [ptr @.str.34], align 4
@.str.73 = private unnamed_addr constant [10 x i8] c"sclk_spi1\00", align 1
@.compoundliteral.74 = internal global [1 x ptr] [ptr @.str.34], align 4
@.str.75 = private unnamed_addr constant [11 x i8] c"sclk_sdmmc\00", align 1
@.compoundliteral.76 = internal global [1 x ptr] [ptr @.str.32], align 4
@.str.77 = private unnamed_addr constant [10 x i8] c"sclk_sdio\00", align 1
@.compoundliteral.78 = internal global [1 x ptr] [ptr @.str.32], align 4
@.str.79 = private unnamed_addr constant [10 x i8] c"sclk_emmc\00", align 1
@.compoundliteral.80 = internal global [1 x ptr] [ptr @.str.32], align 4
@.str.81 = private unnamed_addr constant [9 x i8] c"uart_src\00", align 1
@.str.82 = private unnamed_addr constant [10 x i8] c"uart0_pre\00", align 1
@.compoundliteral.83 = internal global [1 x ptr] [ptr @.str.81], align 4
@.str.84 = private unnamed_addr constant [11 x i8] c"uart0_frac\00", align 1
@.compoundliteral.85 = internal global [1 x ptr] [ptr @.str.82], align 4
@common_uart0_fracmux = internal global %struct.rockchip_clk_branch { i32 64, i32 1, ptr @.str.240, ptr @mux_sclk_uart0_p, i8 3, i32 4, i32 120, i8 8, i8 2, i8 4, i32 0, i8 0, i8 0, i8 0, ptr null, i32 -1, i8 0, i8 0, ptr null }, section ".init.data", align 4
@.str.86 = private unnamed_addr constant [10 x i8] c"uart1_pre\00", align 1
@.compoundliteral.87 = internal global [1 x ptr] [ptr @.str.81], align 4
@.str.88 = private unnamed_addr constant [11 x i8] c"uart1_frac\00", align 1
@.compoundliteral.89 = internal global [1 x ptr] [ptr @.str.86], align 4
@common_uart1_fracmux = internal global %struct.rockchip_clk_branch { i32 65, i32 1, ptr @.str.241, ptr @mux_sclk_uart1_p, i8 3, i32 4, i32 124, i8 8, i8 2, i8 4, i32 0, i8 0, i8 0, i8 0, ptr null, i32 -1, i8 0, i8 0, ptr null }, section ".init.data", align 4
@.str.90 = private unnamed_addr constant [10 x i8] c"uart2_pre\00", align 1
@.compoundliteral.91 = internal global [1 x ptr] [ptr @.str.81], align 4
@.str.92 = private unnamed_addr constant [11 x i8] c"uart2_frac\00", align 1
@.compoundliteral.93 = internal global [1 x ptr] [ptr @.str.90], align 4
@common_uart2_fracmux = internal global %struct.rockchip_clk_branch { i32 66, i32 1, ptr @.str.242, ptr @mux_sclk_uart2_p, i8 3, i32 4, i32 128, i8 8, i8 2, i8 4, i32 0, i8 0, i8 0, i8 0, ptr null, i32 -1, i8 0, i8 0, ptr null }, section ".init.data", align 4
@.str.94 = private unnamed_addr constant [10 x i8] c"uart3_pre\00", align 1
@.compoundliteral.95 = internal global [1 x ptr] [ptr @.str.81], align 4
@.str.96 = private unnamed_addr constant [11 x i8] c"uart3_frac\00", align 1
@.compoundliteral.97 = internal global [1 x ptr] [ptr @.str.94], align 4
@common_uart3_fracmux = internal global %struct.rockchip_clk_branch { i32 67, i32 1, ptr @.str.243, ptr @mux_sclk_uart3_p, i8 3, i32 4, i32 132, i8 8, i8 2, i8 4, i32 0, i8 0, i8 0, i8 0, ptr null, i32 -1, i8 0, i8 0, ptr null }, section ".init.data", align 4
@.str.98 = private unnamed_addr constant [5 x i8] c"jtag\00", align 1
@.str.99 = private unnamed_addr constant [9 x i8] c"ext_jtag\00", align 1
@.compoundliteral.100 = internal global [1 x ptr] [ptr @.str.99], align 4
@.str.101 = private unnamed_addr constant [7 x i8] c"timer0\00", align 1
@.compoundliteral.102 = internal global [1 x ptr] [ptr @.str.46], align 4
@.str.103 = private unnamed_addr constant [7 x i8] c"timer1\00", align 1
@.compoundliteral.104 = internal global [1 x ptr] [ptr @.str.46], align 4
@.str.105 = private unnamed_addr constant [9 x i8] c"core_dbg\00", align 1
@.compoundliteral.106 = internal global [1 x ptr] [ptr @.str], align 4
@.str.107 = private unnamed_addr constant [10 x i8] c"aclk_dma1\00", align 1
@.compoundliteral.108 = internal global [1 x ptr] [ptr @.str.16], align 4
@.str.109 = private unnamed_addr constant [12 x i8] c"aclk_intmem\00", align 1
@.compoundliteral.110 = internal global [1 x ptr] [ptr @.str.16], align 4
@.str.111 = private unnamed_addr constant [14 x i8] c"aclk_strc_sys\00", align 1
@.compoundliteral.112 = internal global [1 x ptr] [ptr @.str.16], align 4
@.str.113 = private unnamed_addr constant [9 x i8] c"hclk_rom\00", align 1
@.compoundliteral.114 = internal global [1 x ptr] [ptr @.str.24], align 4
@.str.115 = private unnamed_addr constant [11 x i8] c"hclk_spdif\00", align 1
@.compoundliteral.116 = internal global [1 x ptr] [ptr @.str.24], align 4
@.str.117 = private unnamed_addr constant [12 x i8] c"hclk_cpubus\00", align 1
@.compoundliteral.118 = internal global [1 x ptr] [ptr @.str.24], align 4
@.str.119 = private unnamed_addr constant [13 x i8] c"hclk_vio_bus\00", align 1
@.compoundliteral.120 = internal global [1 x ptr] [ptr @.str.24], align 4
@.str.121 = private unnamed_addr constant [11 x i8] c"hclk_lcdc0\00", align 1
@.compoundliteral.122 = internal global [1 x ptr] [ptr @.str.24], align 4
@.str.123 = private unnamed_addr constant [11 x i8] c"hclk_lcdc1\00", align 1
@.compoundliteral.124 = internal global [1 x ptr] [ptr @.str.24], align 4
@.str.125 = private unnamed_addr constant [10 x i8] c"hclk_cif0\00", align 1
@.compoundliteral.126 = internal global [1 x ptr] [ptr @.str.24], align 4
@.str.127 = private unnamed_addr constant [9 x i8] c"hclk_ipp\00", align 1
@.compoundliteral.128 = internal global [1 x ptr] [ptr @.str.24], align 4
@.str.129 = private unnamed_addr constant [9 x i8] c"hclk_rga\00", align 1
@.compoundliteral.130 = internal global [1 x ptr] [ptr @.str.24], align 4
@.str.131 = private unnamed_addr constant [21 x i8] c"hclk_peri_axi_matrix\00", align 1
@.compoundliteral.132 = internal global [1 x ptr] [ptr @.str.32], align 4
@.str.133 = private unnamed_addr constant [19 x i8] c"hclk_peri_ahb_arbi\00", align 1
@.compoundliteral.134 = internal global [1 x ptr] [ptr @.str.32], align 4
@.str.135 = private unnamed_addr constant [15 x i8] c"hclk_emem_peri\00", align 1
@.compoundliteral.136 = internal global [1 x ptr] [ptr @.str.32], align 4
@.str.137 = private unnamed_addr constant [10 x i8] c"hclk_emac\00", align 1
@.compoundliteral.138 = internal global [1 x ptr] [ptr @.str.32], align 4
@.str.139 = private unnamed_addr constant [12 x i8] c"hclk_nandc0\00", align 1
@.compoundliteral.140 = internal global [1 x ptr] [ptr @.str.32], align 4
@.str.141 = private unnamed_addr constant [14 x i8] c"hclk_usb_peri\00", align 1
@.compoundliteral.142 = internal global [1 x ptr] [ptr @.str.32], align 4
@.str.143 = private unnamed_addr constant [13 x i8] c"hclk_usbotg0\00", align 1
@.compoundliteral.144 = internal global [1 x ptr] [ptr @.str.32], align 4
@.str.145 = private unnamed_addr constant [11 x i8] c"hclk_hsadc\00", align 1
@.compoundliteral.146 = internal global [1 x ptr] [ptr @.str.32], align 4
@.str.147 = private unnamed_addr constant [15 x i8] c"hclk_pidfilter\00", align 1
@.compoundliteral.148 = internal global [1 x ptr] [ptr @.str.32], align 4
@.str.149 = private unnamed_addr constant [11 x i8] c"hclk_sdmmc\00", align 1
@.compoundliteral.150 = internal global [1 x ptr] [ptr @.str.32], align 4
@.str.151 = private unnamed_addr constant [10 x i8] c"hclk_sdio\00", align 1
@.compoundliteral.152 = internal global [1 x ptr] [ptr @.str.32], align 4
@.str.153 = private unnamed_addr constant [10 x i8] c"hclk_emmc\00", align 1
@.compoundliteral.154 = internal global [1 x ptr] [ptr @.str.32], align 4
@.str.155 = private unnamed_addr constant [10 x i8] c"aclk_vio0\00", align 1
@.compoundliteral.156 = internal global [1 x ptr] [ptr @.str.27], align 4
@.str.157 = private unnamed_addr constant [11 x i8] c"aclk_lcdc0\00", align 1
@.compoundliteral.158 = internal global [1 x ptr] [ptr @.str.155], align 4
@.str.159 = private unnamed_addr constant [10 x i8] c"aclk_cif0\00", align 1
@.compoundliteral.160 = internal global [1 x ptr] [ptr @.str.155], align 4
@.str.161 = private unnamed_addr constant [9 x i8] c"aclk_ipp\00", align 1
@.compoundliteral.162 = internal global [1 x ptr] [ptr @.str.155], align 4
@.str.163 = private unnamed_addr constant [10 x i8] c"aclk_vio1\00", align 1
@.compoundliteral.164 = internal global [1 x ptr] [ptr @.str.28], align 4
@.str.165 = private unnamed_addr constant [11 x i8] c"aclk_lcdc1\00", align 1
@.compoundliteral.166 = internal global [1 x ptr] [ptr @.str.163], align 4
@.str.167 = private unnamed_addr constant [9 x i8] c"aclk_rga\00", align 1
@.compoundliteral.168 = internal global [1 x ptr] [ptr @.str.163], align 4
@.str.169 = private unnamed_addr constant [6 x i8] c"atclk\00", align 1
@.compoundliteral.170 = internal global [1 x ptr] [ptr @.str.19], align 4
@.str.171 = private unnamed_addr constant [6 x i8] c"trace\00", align 1
@.compoundliteral.172 = internal global [1 x ptr] [ptr @.str.19], align 4
@.str.173 = private unnamed_addr constant [11 x i8] c"pclk_pwm01\00", align 1
@.compoundliteral.174 = internal global [1 x ptr] [ptr @.str.22], align 4
@.str.175 = private unnamed_addr constant [12 x i8] c"pclk_timer0\00", align 1
@.compoundliteral.176 = internal global [1 x ptr] [ptr @.str.22], align 4
@.str.177 = private unnamed_addr constant [10 x i8] c"pclk_i2c0\00", align 1
@.compoundliteral.178 = internal global [1 x ptr] [ptr @.str.22], align 4
@.str.179 = private unnamed_addr constant [10 x i8] c"pclk_i2c1\00", align 1
@.compoundliteral.180 = internal global [1 x ptr] [ptr @.str.22], align 4
@.str.181 = private unnamed_addr constant [11 x i8] c"pclk_gpio0\00", align 1
@.compoundliteral.182 = internal global [1 x ptr] [ptr @.str.22], align 4
@.str.183 = private unnamed_addr constant [11 x i8] c"pclk_gpio1\00", align 1
@.compoundliteral.184 = internal global [1 x ptr] [ptr @.str.22], align 4
@.str.185 = private unnamed_addr constant [11 x i8] c"pclk_gpio2\00", align 1
@.compoundliteral.186 = internal global [1 x ptr] [ptr @.str.22], align 4
@.str.187 = private unnamed_addr constant [11 x i8] c"pclk_efuse\00", align 1
@.compoundliteral.188 = internal global [1 x ptr] [ptr @.str.22], align 4
@.str.189 = private unnamed_addr constant [10 x i8] c"pclk_tzpc\00", align 1
@.compoundliteral.190 = internal global [1 x ptr] [ptr @.str.22], align 4
@.str.191 = private unnamed_addr constant [14 x i8] c"pclk_ddrupctl\00", align 1
@.compoundliteral.192 = internal global [1 x ptr] [ptr @.str.22], align 4
@.str.193 = private unnamed_addr constant [13 x i8] c"pclk_ddrpubl\00", align 1
@.compoundliteral.194 = internal global [1 x ptr] [ptr @.str.22], align 4
@.str.195 = private unnamed_addr constant [9 x i8] c"pclk_dbg\00", align 1
@.compoundliteral.196 = internal global [1 x ptr] [ptr @.str.22], align 4
@.str.197 = private unnamed_addr constant [9 x i8] c"pclk_grf\00", align 1
@.compoundliteral.198 = internal global [1 x ptr] [ptr @.str.22], align 4
@.str.199 = private unnamed_addr constant [9 x i8] c"pclk_pmu\00", align 1
@.compoundliteral.200 = internal global [1 x ptr] [ptr @.str.22], align 4
@.str.201 = private unnamed_addr constant [10 x i8] c"aclk_dma2\00", align 1
@.compoundliteral.202 = internal global [1 x ptr] [ptr @.str.29], align 4
@.str.203 = private unnamed_addr constant [9 x i8] c"aclk_smc\00", align 1
@.compoundliteral.204 = internal global [1 x ptr] [ptr @.str.29], align 4
@.str.205 = private unnamed_addr constant [14 x i8] c"aclk_peri_niu\00", align 1
@.compoundliteral.206 = internal global [1 x ptr] [ptr @.str.29], align 4
@.str.207 = private unnamed_addr constant [14 x i8] c"aclk_cpu_peri\00", align 1
@.compoundliteral.208 = internal global [1 x ptr] [ptr @.str.29], align 4
@.str.209 = private unnamed_addr constant [21 x i8] c"aclk_peri_axi_matrix\00", align 1
@.compoundliteral.210 = internal global [1 x ptr] [ptr @.str.29], align 4
@.str.211 = private unnamed_addr constant [21 x i8] c"pclk_peri_axi_matrix\00", align 1
@.compoundliteral.212 = internal global [1 x ptr] [ptr @.str.34], align 4
@.str.213 = private unnamed_addr constant [11 x i8] c"pclk_pwm23\00", align 1
@.compoundliteral.214 = internal global [1 x ptr] [ptr @.str.34], align 4
@.str.215 = private unnamed_addr constant [9 x i8] c"pclk_wdt\00", align 1
@.compoundliteral.216 = internal global [1 x ptr] [ptr @.str.34], align 4
@.str.217 = private unnamed_addr constant [10 x i8] c"pclk_spi0\00", align 1
@.compoundliteral.218 = internal global [1 x ptr] [ptr @.str.34], align 4
@.str.219 = private unnamed_addr constant [10 x i8] c"pclk_spi1\00", align 1
@.compoundliteral.220 = internal global [1 x ptr] [ptr @.str.34], align 4
@.str.221 = private unnamed_addr constant [11 x i8] c"pclk_uart2\00", align 1
@.compoundliteral.222 = internal global [1 x ptr] [ptr @.str.34], align 4
@.str.223 = private unnamed_addr constant [11 x i8] c"pclk_uart3\00", align 1
@.compoundliteral.224 = internal global [1 x ptr] [ptr @.str.34], align 4
@.str.225 = private unnamed_addr constant [10 x i8] c"pclk_i2c2\00", align 1
@.compoundliteral.226 = internal global [1 x ptr] [ptr @.str.34], align 4
@.str.227 = private unnamed_addr constant [10 x i8] c"pclk_i2c3\00", align 1
@.compoundliteral.228 = internal global [1 x ptr] [ptr @.str.34], align 4
@.str.229 = private unnamed_addr constant [10 x i8] c"pclk_i2c4\00", align 1
@.compoundliteral.230 = internal global [1 x ptr] [ptr @.str.34], align 4
@.str.231 = private unnamed_addr constant [11 x i8] c"pclk_gpio3\00", align 1
@.compoundliteral.232 = internal global [1 x ptr] [ptr @.str.34], align 4
@.str.233 = private unnamed_addr constant [12 x i8] c"pclk_saradc\00", align 1
@.compoundliteral.234 = internal global [1 x ptr] [ptr @.str.34], align 4
@.str.235 = private unnamed_addr constant [5 x i8] c"cpll\00", align 1
@.str.236 = private unnamed_addr constant [5 x i8] c"dpll\00", align 1
@.str.237 = private unnamed_addr constant [9 x i8] c"ext_rmii\00", align 1
@mux_sclk_hsadc_p = internal constant [3 x ptr] [ptr @.str.56, ptr @.str.57, ptr @.str.238], section ".init.rodata", align 4
@.str.238 = private unnamed_addr constant [10 x i8] c"ext_hsadc\00", align 1
@.str.239 = private unnamed_addr constant [11 x i8] c"sclk_spdif\00", align 1
@mux_sclk_spdif_p = internal constant [3 x ptr] [ptr @.str.64, ptr @.str.67, ptr @.str.45], section ".init.rodata", align 4
@.str.240 = private unnamed_addr constant [11 x i8] c"sclk_uart0\00", align 1
@mux_sclk_uart0_p = internal constant [3 x ptr] [ptr @.str.82, ptr @.str.84, ptr @.str.46], section ".init.rodata", align 4
@.str.241 = private unnamed_addr constant [11 x i8] c"sclk_uart1\00", align 1
@mux_sclk_uart1_p = internal constant [3 x ptr] [ptr @.str.86, ptr @.str.88, ptr @.str.46], section ".init.rodata", align 4
@.str.242 = private unnamed_addr constant [11 x i8] c"sclk_uart2\00", align 1
@mux_sclk_uart2_p = internal constant [3 x ptr] [ptr @.str.90, ptr @.str.92, ptr @.str.46], section ".init.rodata", align 4
@.str.243 = private unnamed_addr constant [11 x i8] c"sclk_uart3\00", align 1
@mux_sclk_uart3_p = internal constant [3 x ptr] [ptr @.str.94, ptr @.str.96, ptr @.str.46], section ".init.rodata", align 4
@.str.244 = private unnamed_addr constant [5 x i8] c"apll\00", align 1
@mux_pll_p = internal constant [2 x ptr] [ptr @.str.46, ptr @.str.245], section ".init.rodata", align 4
@.str.245 = private unnamed_addr constant [7 x i8] c"xin32k\00", align 1
@rk3188_pll_rates = internal global <{ { i32, { %struct.anon.5, [8 x i8] } }, { i32, { %struct.anon.5, [8 x i8] } }, { i32, { %struct.anon.5, [8 x i8] } }, { i32, { %struct.anon.5, [8 x i8] } }, { i32, { %struct.anon.5, [8 x i8] } }, { i32, { %struct.anon.5, [8 x i8] } }, { i32, { %struct.anon.5, [8 x i8] } }, { i32, { %struct.anon.5, [8 x i8] } }, { i32, { %struct.anon.5, [8 x i8] } }, { i32, { %struct.anon.5, [8 x i8] } }, { i32, { %struct.anon.5, [8 x i8] } }, { i32, { %struct.anon.5, [8 x i8] } }, { i32, { %struct.anon.5, [8 x i8] } }, { i32, { %struct.anon.5, [8 x i8] } }, { i32, { %struct.anon.5, [8 x i8] } }, { i32, { %struct.anon.5, [8 x i8] } }, { i32, { %struct.anon.5, [8 x i8] } }, { i32, { %struct.anon.5, [8 x i8] } }, { i32, { %struct.anon.5, [8 x i8] } }, { i32, { %struct.anon.5, [8 x i8] } }, { i32, { %struct.anon.5, [8 x i8] } }, { i32, { %struct.anon.5, [8 x i8] } }, { i32, { %struct.anon.5, [8 x i8] } }, { i32, { %struct.anon.5, [8 x i8] } }, { i32, { %struct.anon.5, [8 x i8] } }, { i32, { %struct.anon.5, [8 x i8] } }, { i32, { %struct.anon.5, [8 x i8] } }, { i32, { %struct.anon.5, [8 x i8] } }, { i32, { %struct.anon.5, [8 x i8] } }, { i32, { %struct.anon.5, [8 x i8] } }, { i32, { %struct.anon.5, [8 x i8] } }, { i32, { %struct.anon.5, [8 x i8] } }, { i32, { %struct.anon.5, [8 x i8] } }, { i32, { %struct.anon.5, [8 x i8] } }, { i32, { %struct.anon.5, [8 x i8] } }, { i32, { %struct.anon.5, [8 x i8] } }, { i32, { %struct.anon.5, [8 x i8] } }, { i32, { %struct.anon.5, [8 x i8] } }, { i32, { %struct.anon.5, [8 x i8] } }, { i32, { %struct.anon.5, [8 x i8] } }, { i32, { %struct.anon.5, [8 x i8] } }, { i32, { %struct.anon.5, [8 x i8] } }, { i32, { %struct.anon.5, [8 x i8] } }, { i32, { %struct.anon.5, [8 x i8] } }, { i32, { %struct.anon.5, [8 x i8] } }, { i32, { %struct.anon.5, [8 x i8] } }, { i32, { %struct.anon.5, [8 x i8] } }, { i32, { %struct.anon.5, [8 x i8] } }, { i32, { %struct.anon.5, [8 x i8] } }, { i32, { %struct.anon.5, [8 x i8] } }, { i32, { %struct.anon.5, [8 x i8] } }, { i32, { %struct.anon.5, [8 x i8] } }, { i32, { %struct.anon.5, [8 x i8] } }, { i32, { %struct.anon.5, [8 x i8] } }, { i32, { %struct.anon.5, [8 x i8] } }, { i32, { %struct.anon.5, [8 x i8] } }, { i32, { %struct.anon.5, [8 x i8] } }, { i32, { %struct.anon.5, [8 x i8] } }, { i32, { %struct.anon.5, [8 x i8] } }, { i32, { %struct.anon.5, [8 x i8] } }, { i32, { %struct.anon.5, [8 x i8] } }, { i32, { %struct.anon.5, [8 x i8] } }, { i32, { %struct.anon.5, [8 x i8] } }, { i32, { %struct.anon.5, [8 x i8] } }, { i32, { %struct.anon.5, [8 x i8] } }, { i32, { %struct.anon.5, [8 x i8] } }, { i32, { %struct.anon.5, [8 x i8] } }, { i32, { %struct.anon.5, [8 x i8] } }, { i32, { %struct.anon.5, [8 x i8] } }, { i32, { %struct.anon.5, [8 x i8] } }, { i32, { %struct.anon.5, [8 x i8] } }, { i32, { %struct.anon.5, [8 x i8] } }, %struct.rockchip_pll_rate_table }> <{ { i32, { %struct.anon.5, [8 x i8] } } { i32 -2086967296, { %struct.anon.5, [8 x i8] } { %struct.anon.5 { i32 1, i32 92, i32 1, i32 46 }, [8 x i8] undef } }, { i32, { %struct.anon.5, [8 x i8] } } { i32 -2110967296, { %struct.anon.5, [8 x i8] } { %struct.anon.5 { i32 1, i32 91, i32 1, i32 45 }, [8 x i8] undef } }, { i32, { %struct.anon.5, [8 x i8] } } { i32 -2134967296, { %struct.anon.5, [8 x i8] } { %struct.anon.5 { i32 1, i32 90, i32 1, i32 45 }, [8 x i8] undef } }, { i32, { %struct.anon.5, [8 x i8] } } { i32 2136000000, { %struct.anon.5, [8 x i8] } { %struct.anon.5 { i32 1, i32 89, i32 1, i32 44 }, [8 x i8] undef } }, { i32, { %struct.anon.5, [8 x i8] } } { i32 2112000000, { %struct.anon.5, [8 x i8] } { %struct.anon.5 { i32 1, i32 88, i32 1, i32 44 }, [8 x i8] undef } }, { i32, { %struct.anon.5, [8 x i8] } } { i32 2088000000, { %struct.anon.5, [8 x i8] } { %struct.anon.5 { i32 1, i32 87, i32 1, i32 43 }, [8 x i8] undef } }, { i32, { %struct.anon.5, [8 x i8] } } { i32 2064000000, { %struct.anon.5, [8 x i8] } { %struct.anon.5 { i32 1, i32 86, i32 1, i32 43 }, [8 x i8] undef } }, { i32, { %struct.anon.5, [8 x i8] } } { i32 2040000000, { %struct.anon.5, [8 x i8] } { %struct.anon.5 { i32 1, i32 85, i32 1, i32 42 }, [8 x i8] undef } }, { i32, { %struct.anon.5, [8 x i8] } } { i32 2016000000, { %struct.anon.5, [8 x i8] } { %struct.anon.5 { i32 1, i32 84, i32 1, i32 42 }, [8 x i8] undef } }, { i32, { %struct.anon.5, [8 x i8] } } { i32 1992000000, { %struct.anon.5, [8 x i8] } { %struct.anon.5 { i32 1, i32 83, i32 1, i32 41 }, [8 x i8] undef } }, { i32, { %struct.anon.5, [8 x i8] } } { i32 1968000000, { %struct.anon.5, [8 x i8] } { %struct.anon.5 { i32 1, i32 82, i32 1, i32 41 }, [8 x i8] undef } }, { i32, { %struct.anon.5, [8 x i8] } } { i32 1944000000, { %struct.anon.5, [8 x i8] } { %struct.anon.5 { i32 1, i32 81, i32 1, i32 40 }, [8 x i8] undef } }, { i32, { %struct.anon.5, [8 x i8] } } { i32 1920000000, { %struct.anon.5, [8 x i8] } { %struct.anon.5 { i32 1, i32 80, i32 1, i32 40 }, [8 x i8] undef } }, { i32, { %struct.anon.5, [8 x i8] } } { i32 1896000000, { %struct.anon.5, [8 x i8] } { %struct.anon.5 { i32 1, i32 79, i32 1, i32 39 }, [8 x i8] undef } }, { i32, { %struct.anon.5, [8 x i8] } } { i32 1872000000, { %struct.anon.5, [8 x i8] } { %struct.anon.5 { i32 1, i32 78, i32 1, i32 39 }, [8 x i8] undef } }, { i32, { %struct.anon.5, [8 x i8] } } { i32 1848000000, { %struct.anon.5, [8 x i8] } { %struct.anon.5 { i32 1, i32 77, i32 1, i32 38 }, [8 x i8] undef } }, { i32, { %struct.anon.5, [8 x i8] } } { i32 1824000000, { %struct.anon.5, [8 x i8] } { %struct.anon.5 { i32 1, i32 76, i32 1, i32 38 }, [8 x i8] undef } }, { i32, { %struct.anon.5, [8 x i8] } } { i32 1800000000, { %struct.anon.5, [8 x i8] } { %struct.anon.5 { i32 1, i32 75, i32 1, i32 37 }, [8 x i8] undef } }, { i32, { %struct.anon.5, [8 x i8] } } { i32 1776000000, { %struct.anon.5, [8 x i8] } { %struct.anon.5 { i32 1, i32 74, i32 1, i32 37 }, [8 x i8] undef } }, { i32, { %struct.anon.5, [8 x i8] } } { i32 1752000000, { %struct.anon.5, [8 x i8] } { %struct.anon.5 { i32 1, i32 73, i32 1, i32 36 }, [8 x i8] undef } }, { i32, { %struct.anon.5, [8 x i8] } } { i32 1728000000, { %struct.anon.5, [8 x i8] } { %struct.anon.5 { i32 1, i32 72, i32 1, i32 36 }, [8 x i8] undef } }, { i32, { %struct.anon.5, [8 x i8] } } { i32 1704000000, { %struct.anon.5, [8 x i8] } { %struct.anon.5 { i32 1, i32 71, i32 1, i32 35 }, [8 x i8] undef } }, { i32, { %struct.anon.5, [8 x i8] } } { i32 1680000000, { %struct.anon.5, [8 x i8] } { %struct.anon.5 { i32 1, i32 70, i32 1, i32 35 }, [8 x i8] undef } }, { i32, { %struct.anon.5, [8 x i8] } } { i32 1656000000, { %struct.anon.5, [8 x i8] } { %struct.anon.5 { i32 1, i32 69, i32 1, i32 34 }, [8 x i8] undef } }, { i32, { %struct.anon.5, [8 x i8] } } { i32 1632000000, { %struct.anon.5, [8 x i8] } { %struct.anon.5 { i32 1, i32 68, i32 1, i32 34 }, [8 x i8] undef } }, { i32, { %struct.anon.5, [8 x i8] } } { i32 1608000000, { %struct.anon.5, [8 x i8] } { %struct.anon.5 { i32 1, i32 67, i32 1, i32 33 }, [8 x i8] undef } }, { i32, { %struct.anon.5, [8 x i8] } } { i32 1560000000, { %struct.anon.5, [8 x i8] } { %struct.anon.5 { i32 1, i32 65, i32 1, i32 32 }, [8 x i8] undef } }, { i32, { %struct.anon.5, [8 x i8] } } { i32 1512000000, { %struct.anon.5, [8 x i8] } { %struct.anon.5 { i32 1, i32 63, i32 1, i32 31 }, [8 x i8] undef } }, { i32, { %struct.anon.5, [8 x i8] } } { i32 1488000000, { %struct.anon.5, [8 x i8] } { %struct.anon.5 { i32 1, i32 62, i32 1, i32 31 }, [8 x i8] undef } }, { i32, { %struct.anon.5, [8 x i8] } } { i32 1464000000, { %struct.anon.5, [8 x i8] } { %struct.anon.5 { i32 1, i32 61, i32 1, i32 30 }, [8 x i8] undef } }, { i32, { %struct.anon.5, [8 x i8] } } { i32 1440000000, { %struct.anon.5, [8 x i8] } { %struct.anon.5 { i32 1, i32 60, i32 1, i32 30 }, [8 x i8] undef } }, { i32, { %struct.anon.5, [8 x i8] } } { i32 1416000000, { %struct.anon.5, [8 x i8] } { %struct.anon.5 { i32 1, i32 59, i32 1, i32 29 }, [8 x i8] undef } }, { i32, { %struct.anon.5, [8 x i8] } } { i32 1392000000, { %struct.anon.5, [8 x i8] } { %struct.anon.5 { i32 1, i32 58, i32 1, i32 29 }, [8 x i8] undef } }, { i32, { %struct.anon.5, [8 x i8] } } { i32 1368000000, { %struct.anon.5, [8 x i8] } { %struct.anon.5 { i32 1, i32 57, i32 1, i32 28 }, [8 x i8] undef } }, { i32, { %struct.anon.5, [8 x i8] } } { i32 1344000000, { %struct.anon.5, [8 x i8] } { %struct.anon.5 { i32 1, i32 56, i32 1, i32 28 }, [8 x i8] undef } }, { i32, { %struct.anon.5, [8 x i8] } } { i32 1320000000, { %struct.anon.5, [8 x i8] } { %struct.anon.5 { i32 1, i32 55, i32 1, i32 27 }, [8 x i8] undef } }, { i32, { %struct.anon.5, [8 x i8] } } { i32 1296000000, { %struct.anon.5, [8 x i8] } { %struct.anon.5 { i32 1, i32 54, i32 1, i32 27 }, [8 x i8] undef } }, { i32, { %struct.anon.5, [8 x i8] } } { i32 1272000000, { %struct.anon.5, [8 x i8] } { %struct.anon.5 { i32 1, i32 53, i32 1, i32 26 }, [8 x i8] undef } }, { i32, { %struct.anon.5, [8 x i8] } } { i32 1248000000, { %struct.anon.5, [8 x i8] } { %struct.anon.5 { i32 1, i32 52, i32 1, i32 26 }, [8 x i8] undef } }, { i32, { %struct.anon.5, [8 x i8] } } { i32 1224000000, { %struct.anon.5, [8 x i8] } { %struct.anon.5 { i32 1, i32 51, i32 1, i32 25 }, [8 x i8] undef } }, { i32, { %struct.anon.5, [8 x i8] } } { i32 1200000000, { %struct.anon.5, [8 x i8] } { %struct.anon.5 { i32 1, i32 50, i32 1, i32 25 }, [8 x i8] undef } }, { i32, { %struct.anon.5, [8 x i8] } } { i32 1188000000, { %struct.anon.5, [8 x i8] } { %struct.anon.5 { i32 2, i32 99, i32 1, i32 49 }, [8 x i8] undef } }, { i32, { %struct.anon.5, [8 x i8] } } { i32 1176000000, { %struct.anon.5, [8 x i8] } { %struct.anon.5 { i32 1, i32 49, i32 1, i32 24 }, [8 x i8] undef } }, { i32, { %struct.anon.5, [8 x i8] } } { i32 1128000000, { %struct.anon.5, [8 x i8] } { %struct.anon.5 { i32 1, i32 47, i32 1, i32 23 }, [8 x i8] undef } }, { i32, { %struct.anon.5, [8 x i8] } } { i32 1104000000, { %struct.anon.5, [8 x i8] } { %struct.anon.5 { i32 1, i32 46, i32 1, i32 23 }, [8 x i8] undef } }, { i32, { %struct.anon.5, [8 x i8] } } { i32 1008000000, { %struct.anon.5, [8 x i8] } { %struct.anon.5 { i32 1, i32 84, i32 2, i32 42 }, [8 x i8] undef } }, { i32, { %struct.anon.5, [8 x i8] } } { i32 912000000, { %struct.anon.5, [8 x i8] } { %struct.anon.5 { i32 1, i32 76, i32 2, i32 38 }, [8 x i8] undef } }, { i32, { %struct.anon.5, [8 x i8] } } { i32 891000000, { %struct.anon.5, [8 x i8] } { %struct.anon.5 { i32 8, i32 594, i32 2, i32 297 }, [8 x i8] undef } }, { i32, { %struct.anon.5, [8 x i8] } } { i32 888000000, { %struct.anon.5, [8 x i8] } { %struct.anon.5 { i32 1, i32 74, i32 2, i32 37 }, [8 x i8] undef } }, { i32, { %struct.anon.5, [8 x i8] } } { i32 816000000, { %struct.anon.5, [8 x i8] } { %struct.anon.5 { i32 1, i32 68, i32 2, i32 34 }, [8 x i8] undef } }, { i32, { %struct.anon.5, [8 x i8] } } { i32 798000000, { %struct.anon.5, [8 x i8] } { %struct.anon.5 { i32 2, i32 133, i32 2, i32 66 }, [8 x i8] undef } }, { i32, { %struct.anon.5, [8 x i8] } } { i32 792000000, { %struct.anon.5, [8 x i8] } { %struct.anon.5 { i32 1, i32 66, i32 2, i32 33 }, [8 x i8] undef } }, { i32, { %struct.anon.5, [8 x i8] } } { i32 768000000, { %struct.anon.5, [8 x i8] } { %struct.anon.5 { i32 1, i32 64, i32 2, i32 32 }, [8 x i8] undef } }, { i32, { %struct.anon.5, [8 x i8] } } { i32 742500000, { %struct.anon.5, [8 x i8] } { %struct.anon.5 { i32 8, i32 495, i32 2, i32 247 }, [8 x i8] undef } }, { i32, { %struct.anon.5, [8 x i8] } } { i32 696000000, { %struct.anon.5, [8 x i8] } { %struct.anon.5 { i32 1, i32 58, i32 2, i32 29 }, [8 x i8] undef } }, { i32, { %struct.anon.5, [8 x i8] } } { i32 600000000, { %struct.anon.5, [8 x i8] } { %struct.anon.5 { i32 1, i32 50, i32 2, i32 25 }, [8 x i8] undef } }, { i32, { %struct.anon.5, [8 x i8] } } { i32 594000000, { %struct.anon.5, [8 x i8] } { %struct.anon.5 { i32 2, i32 198, i32 4, i32 99 }, [8 x i8] undef } }, { i32, { %struct.anon.5, [8 x i8] } } { i32 552000000, { %struct.anon.5, [8 x i8] } { %struct.anon.5 { i32 1, i32 46, i32 2, i32 23 }, [8 x i8] undef } }, { i32, { %struct.anon.5, [8 x i8] } } { i32 504000000, { %struct.anon.5, [8 x i8] } { %struct.anon.5 { i32 1, i32 84, i32 4, i32 42 }, [8 x i8] undef } }, { i32, { %struct.anon.5, [8 x i8] } } { i32 456000000, { %struct.anon.5, [8 x i8] } { %struct.anon.5 { i32 1, i32 76, i32 4, i32 38 }, [8 x i8] undef } }, { i32, { %struct.anon.5, [8 x i8] } } { i32 408000000, { %struct.anon.5, [8 x i8] } { %struct.anon.5 { i32 1, i32 68, i32 4, i32 34 }, [8 x i8] undef } }, { i32, { %struct.anon.5, [8 x i8] } } { i32 400000000, { %struct.anon.5, [8 x i8] } { %struct.anon.5 { i32 3, i32 100, i32 2, i32 50 }, [8 x i8] undef } }, { i32, { %struct.anon.5, [8 x i8] } } { i32 384000000, { %struct.anon.5, [8 x i8] } { %struct.anon.5 { i32 2, i32 128, i32 4, i32 64 }, [8 x i8] undef } }, { i32, { %struct.anon.5, [8 x i8] } } { i32 360000000, { %struct.anon.5, [8 x i8] } { %struct.anon.5 { i32 1, i32 60, i32 4, i32 30 }, [8 x i8] undef } }, { i32, { %struct.anon.5, [8 x i8] } } { i32 312000000, { %struct.anon.5, [8 x i8] } { %struct.anon.5 { i32 1, i32 52, i32 4, i32 26 }, [8 x i8] undef } }, { i32, { %struct.anon.5, [8 x i8] } } { i32 300000000, { %struct.anon.5, [8 x i8] } { %struct.anon.5 { i32 1, i32 50, i32 4, i32 25 }, [8 x i8] undef } }, { i32, { %struct.anon.5, [8 x i8] } } { i32 297000000, { %struct.anon.5, [8 x i8] } { %struct.anon.5 { i32 2, i32 198, i32 8, i32 99 }, [8 x i8] undef } }, { i32, { %struct.anon.5, [8 x i8] } } { i32 252000000, { %struct.anon.5, [8 x i8] } { %struct.anon.5 { i32 1, i32 84, i32 8, i32 42 }, [8 x i8] undef } }, { i32, { %struct.anon.5, [8 x i8] } } { i32 216000000, { %struct.anon.5, [8 x i8] } { %struct.anon.5 { i32 1, i32 72, i32 8, i32 36 }, [8 x i8] undef } }, { i32, { %struct.anon.5, [8 x i8] } } { i32 148500000, { %struct.anon.5, [8 x i8] } { %struct.anon.5 { i32 2, i32 99, i32 8, i32 49 }, [8 x i8] undef } }, { i32, { %struct.anon.5, [8 x i8] } } { i32 126000000, { %struct.anon.5, [8 x i8] } { %struct.anon.5 { i32 1, i32 84, i32 16, i32 42 }, [8 x i8] undef } }, { i32, { %struct.anon.5, [8 x i8] } } { i32 48000000, { %struct.anon.5, [8 x i8] } { %struct.anon.5 { i32 1, i32 64, i32 32, i32 32 }, [8 x i8] undef } }, %struct.rockchip_pll_rate_table zeroinitializer }>, align 4
@.compoundliteral.247 = internal global [1 x ptr] [ptr @.str], align 4
@div_aclk_cpu_t = internal global [6 x %struct.clk_div_table] [%struct.clk_div_table { i32 0, i32 1 }, %struct.clk_div_table { i32 1, i32 2 }, %struct.clk_div_table { i32 2, i32 3 }, %struct.clk_div_table { i32 3, i32 4 }, %struct.clk_div_table { i32 4, i32 8 }, %struct.clk_div_table zeroinitializer], align 4
@.compoundliteral.248 = internal global [1 x ptr] [ptr @.str.17], align 4
@.compoundliteral.249 = internal global [1 x ptr] [ptr @.str.17], align 4
@.str.250 = private unnamed_addr constant [13 x i8] c"hclk_ahb2apb\00", align 1
@.compoundliteral.251 = internal global [1 x ptr] [ptr @.str.25], align 4
@.str.252 = private unnamed_addr constant [9 x i8] c"core_l2c\00", align 1
@.compoundliteral.253 = internal global [1 x ptr] [ptr @.str.16], align 4
@.str.254 = private unnamed_addr constant [15 x i8] c"dclk_lcdc0_src\00", align 1
@.str.255 = private unnamed_addr constant [11 x i8] c"dclk_lcdc0\00", align 1
@mux_rk3066_lcdc0_p = internal constant [2 x ptr] [ptr @.str.254, ptr @.str.313], section ".init.rodata", align 4
@.str.256 = private unnamed_addr constant [15 x i8] c"dclk_lcdc1_src\00", align 1
@.str.257 = private unnamed_addr constant [11 x i8] c"dclk_lcdc1\00", align 1
@mux_rk3066_lcdc1_p = internal constant [2 x ptr] [ptr @.str.256, ptr @.str.313], section ".init.rodata", align 4
@.str.258 = private unnamed_addr constant [9 x i8] c"cif1_pre\00", align 1
@.compoundliteral.259 = internal global [1 x ptr] [ptr @.str.36], align 4
@.str.260 = private unnamed_addr constant [10 x i8] c"sclk_cif1\00", align 1
@mux_sclk_cif1_p = internal constant [2 x ptr] [ptr @.str.258, ptr @.str.46], section ".init.rodata", align 4
@.str.261 = private unnamed_addr constant [12 x i8] c"pclkin_cif1\00", align 1
@.str.262 = private unnamed_addr constant [9 x i8] c"ext_cif1\00", align 1
@.compoundliteral.263 = internal global [1 x ptr] [ptr @.str.262], align 4
@.str.264 = private unnamed_addr constant [10 x i8] c"pclk_cif1\00", align 1
@.compoundliteral.265 = internal global [1 x ptr] [ptr @.str.261], align 4
@.str.266 = private unnamed_addr constant [13 x i8] c"aclk_gpu_src\00", align 1
@.str.267 = private unnamed_addr constant [9 x i8] c"aclk_gpu\00", align 1
@.compoundliteral.268 = internal global [1 x ptr] [ptr @.str.266], align 4
@.str.269 = private unnamed_addr constant [7 x i8] c"timer2\00", align 1
@.compoundliteral.270 = internal global [1 x ptr] [ptr @.str.46], align 4
@.str.271 = private unnamed_addr constant [11 x i8] c"sclk_tsadc\00", align 1
@.compoundliteral.272 = internal global [1 x ptr] [ptr @.str.46], align 4
@.str.273 = private unnamed_addr constant [9 x i8] c"i2s0_pre\00", align 1
@.compoundliteral.274 = internal global [1 x ptr] [ptr @.str.65], align 4
@.str.275 = private unnamed_addr constant [10 x i8] c"i2s0_frac\00", align 1
@.compoundliteral.276 = internal global [1 x ptr] [ptr @.str.273], align 4
@rk3066a_i2s0_fracmux = internal global %struct.rockchip_clk_branch { i32 75, i32 1, ptr @.str.314, ptr @mux_sclk_i2s0_p, i8 3, i32 4, i32 76, i8 8, i8 2, i8 4, i32 0, i8 0, i8 0, i8 0, ptr null, i32 -1, i8 0, i8 0, ptr null }, section ".init.data", align 4
@.str.277 = private unnamed_addr constant [9 x i8] c"i2s1_pre\00", align 1
@.compoundliteral.278 = internal global [1 x ptr] [ptr @.str.65], align 4
@.str.279 = private unnamed_addr constant [10 x i8] c"i2s1_frac\00", align 1
@.compoundliteral.280 = internal global [1 x ptr] [ptr @.str.277], align 4
@rk3066a_i2s1_fracmux = internal global %struct.rockchip_clk_branch { i32 76, i32 1, ptr @.str.315, ptr @mux_sclk_i2s1_p, i8 3, i32 4, i32 80, i8 8, i8 2, i8 4, i32 0, i8 0, i8 0, i8 0, ptr null, i32 -1, i8 0, i8 0, ptr null }, section ".init.data", align 4
@.str.281 = private unnamed_addr constant [9 x i8] c"i2s2_pre\00", align 1
@.compoundliteral.282 = internal global [1 x ptr] [ptr @.str.65], align 4
@.str.283 = private unnamed_addr constant [10 x i8] c"i2s2_frac\00", align 1
@.compoundliteral.284 = internal global [1 x ptr] [ptr @.str.281], align 4
@rk3066a_i2s2_fracmux = internal global %struct.rockchip_clk_branch { i32 77, i32 1, ptr @.str.316, ptr @mux_sclk_i2s2_p, i8 3, i32 4, i32 84, i8 8, i8 2, i8 4, i32 0, i8 0, i8 0, i8 0, ptr null, i32 -1, i8 0, i8 0, ptr null }, section ".init.data", align 4
@.str.285 = private unnamed_addr constant [10 x i8] c"hclk_i2s0\00", align 1
@.compoundliteral.286 = internal global [1 x ptr] [ptr @.str.24], align 4
@.str.287 = private unnamed_addr constant [10 x i8] c"hclk_i2s1\00", align 1
@.compoundliteral.288 = internal global [1 x ptr] [ptr @.str.24], align 4
@.str.289 = private unnamed_addr constant [10 x i8] c"hclk_i2s2\00", align 1
@.compoundliteral.290 = internal global [1 x ptr] [ptr @.str.24], align 4
@.str.291 = private unnamed_addr constant [10 x i8] c"hclk_cif1\00", align 1
@.compoundliteral.292 = internal global [1 x ptr] [ptr @.str.24], align 4
@.str.293 = private unnamed_addr constant [10 x i8] c"hclk_hdmi\00", align 1
@.compoundliteral.294 = internal global [1 x ptr] [ptr @.str.24], align 4
@.str.295 = private unnamed_addr constant [13 x i8] c"hclk_usbotg1\00", align 1
@.compoundliteral.296 = internal global [1 x ptr] [ptr @.str.32], align 4
@.str.297 = private unnamed_addr constant [10 x i8] c"aclk_cif1\00", align 1
@.compoundliteral.298 = internal global [1 x ptr] [ptr @.str.163], align 4
@.str.299 = private unnamed_addr constant [12 x i8] c"pclk_timer1\00", align 1
@.compoundliteral.300 = internal global [1 x ptr] [ptr @.str.22], align 4
@.str.301 = private unnamed_addr constant [12 x i8] c"pclk_timer2\00", align 1
@.compoundliteral.302 = internal global [1 x ptr] [ptr @.str.22], align 4
@.str.303 = private unnamed_addr constant [11 x i8] c"pclk_gpio6\00", align 1
@.compoundliteral.304 = internal global [1 x ptr] [ptr @.str.22], align 4
@.str.305 = private unnamed_addr constant [11 x i8] c"pclk_uart0\00", align 1
@.compoundliteral.306 = internal global [1 x ptr] [ptr @.str.22], align 4
@.str.307 = private unnamed_addr constant [11 x i8] c"pclk_uart1\00", align 1
@.compoundliteral.308 = internal global [1 x ptr] [ptr @.str.22], align 4
@.str.309 = private unnamed_addr constant [11 x i8] c"pclk_gpio4\00", align 1
@.compoundliteral.310 = internal global [1 x ptr] [ptr @.str.34], align 4
@.str.311 = private unnamed_addr constant [11 x i8] c"pclk_tsadc\00", align 1
@.compoundliteral.312 = internal global [1 x ptr] [ptr @.str.34], align 4
@.str.313 = private unnamed_addr constant [7 x i8] c"xin27m\00", align 1
@.str.314 = private unnamed_addr constant [10 x i8] c"sclk_i2s0\00", align 1
@mux_sclk_i2s0_p = internal constant [3 x ptr] [ptr @.str.273, ptr @.str.275, ptr @.str.45], section ".init.rodata", align 4
@.str.315 = private unnamed_addr constant [10 x i8] c"sclk_i2s1\00", align 1
@mux_sclk_i2s1_p = internal constant [3 x ptr] [ptr @.str.277, ptr @.str.279, ptr @.str.45], section ".init.rodata", align 4
@.str.316 = private unnamed_addr constant [10 x i8] c"sclk_i2s2\00", align 1
@mux_sclk_i2s2_p = internal constant [3 x ptr] [ptr @.str.281, ptr @.str.283, ptr @.str.45], section ".init.rodata", align 4
@rk3188_pll_clks = internal global [4 x %struct.rockchip_pll_clock] [%struct.rockchip_pll_clock { i32 1, ptr @.str.244, ptr @mux_pll_p, i8 2, i32 64, i32 0, i32 64, i32 0, i32 6, i32 1, i8 0, ptr @rk3188_pll_rates }, %struct.rockchip_pll_clock { i32 3, ptr @.str.235, ptr @mux_pll_p, i8 2, i32 64, i32 32, i32 64, i32 8, i32 7, i32 1, i8 1, ptr @rk3188_pll_rates }, %struct.rockchip_pll_clock { i32 2, ptr @.str.236, ptr @mux_pll_p, i8 2, i32 64, i32 16, i32 64, i32 4, i32 5, i32 1, i8 0, ptr null }, %struct.rockchip_pll_clock { i32 4, ptr @.str.4, ptr @mux_pll_p, i8 2, i32 64, i32 48, i32 64, i32 12, i32 8, i32 1, i8 1, ptr @rk3188_pll_rates }], section ".init.data", align 4
@rk3188_clk_branches = internal global [30 x %struct.rockchip_clk_branch] [%struct.rockchip_clk_branch { i32 0, i32 0, ptr @.str.319, ptr @.compoundliteral.320, i8 1, i32 8, i32 72, i8 0, i8 0, i8 0, i32 0, i8 3, i8 3, i8 40, ptr @div_rk3188_aclk_core_t, i32 208, i8 7, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 0, ptr @.str.17, ptr @mux_aclk_cpu_p, i8 2, i32 128, i32 68, i8 5, i8 1, i8 4, i32 0, i8 0, i8 5, i8 8, ptr null, i32 -1, i8 0, i8 0, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 3, ptr @.str.20, ptr @.compoundliteral.321, i8 1, i32 0, i32 72, i8 0, i8 0, i8 0, i32 0, i8 12, i8 2, i8 10, ptr null, i32 -1, i8 0, i8 0, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 3, ptr @.str.25, ptr @.compoundliteral.322, i8 1, i32 0, i32 72, i8 0, i8 0, i8 0, i32 0, i8 8, i8 2, i8 10, ptr null, i32 -1, i8 0, i8 0, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 0, ptr @.str.250, ptr @.compoundliteral.323, i8 1, i32 0, i32 72, i8 0, i8 0, i8 0, i32 0, i8 14, i8 2, i8 10, ptr null, i32 224, i8 9, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 6, i32 5, ptr @.str.252, ptr @.compoundliteral.324, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 244, i8 4, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 0, ptr @.str.30, ptr @mux_pll_src_cpll_gpll_p, i8 2, i32 0, i32 108, i8 15, i8 1, i8 4, i32 0, i8 0, i8 5, i8 8, ptr null, i32 216, i8 0, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 190, i32 0, ptr @.str.255, ptr @mux_pll_src_cpll_gpll_p, i8 2, i32 0, i32 176, i8 0, i8 1, i8 4, i32 0, i8 8, i8 8, i8 8, ptr null, i32 220, i8 1, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 191, i32 0, ptr @.str.257, ptr @mux_pll_src_cpll_gpll_p, i8 2, i32 0, i32 180, i8 0, i8 1, i8 4, i32 0, i8 8, i8 8, i8 8, ptr null, i32 220, i8 2, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 0, ptr @.str.266, ptr @mux_pll_src_cpll_gpll_p, i8 2, i32 0, i32 204, i8 7, i8 1, i8 4, i32 0, i8 0, i8 5, i8 8, ptr null, i32 220, i8 15, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 197, i32 5, ptr @.str.267, ptr @.compoundliteral.325, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 244, i8 7, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 86, i32 5, ptr @.str.269, ptr @.compoundliteral.326, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 220, i8 4, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 87, i32 5, ptr @.str.327, ptr @.compoundliteral.328, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 212, i8 2, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 88, i32 5, ptr @.str.329, ptr @.compoundliteral.330, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 220, i8 5, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 89, i32 5, ptr @.str.331, ptr @.compoundliteral.332, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 220, i8 8, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 90, i32 5, ptr @.str.333, ptr @.compoundliteral.334, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 220, i8 14, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 0, ptr @.str.335, ptr @mux_hsicphy_p, i8 4, i32 0, i32 188, i8 0, i8 2, i8 8, i32 0, i8 0, i8 0, i8 0, ptr null, i32 220, i8 6, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 3, ptr @.str.336, ptr @.compoundliteral.337, i8 1, i32 0, i32 112, i8 0, i8 0, i8 0, i32 0, i8 8, i8 6, i8 8, ptr null, i32 -1, i8 0, i8 0, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 1, ptr @.str.65, ptr @mux_pll_src_gpll_cpll_p, i8 2, i32 0, i32 76, i8 15, i8 1, i8 4, i32 0, i8 0, i8 0, i8 0, ptr null, i32 -1, i8 0, i8 0, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 0, ptr @.str.273, ptr @.compoundliteral.338, i8 1, i32 0, i32 80, i8 0, i8 0, i8 0, i32 0, i8 0, i8 7, i8 8, ptr null, i32 208, i8 9, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 4, ptr @.str.275, ptr @.compoundliteral.339, i8 1, i32 4, i32 96, i8 0, i8 0, i8 0, i32 0, i8 16, i8 16, i8 0, ptr null, i32 208, i8 10, i8 3, ptr @rk3188_i2s0_fracmux }, %struct.rockchip_clk_branch { i32 454, i32 5, ptr @.str.285, ptr @.compoundliteral.340, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 236, i8 2, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.341, ptr @.compoundliteral.342, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 224, i8 14, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.343, ptr @.compoundliteral.344, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 224, i8 15, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 457, i32 5, ptr @.str.295, ptr @.compoundliteral.345, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 236, i8 3, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 458, i32 5, ptr @.str.346, ptr @.compoundliteral.347, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 236, i8 4, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 325, i32 5, ptr @.str.348, ptr @.compoundliteral.349, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 236, i8 9, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 332, i32 5, ptr @.str.305, ptr @.compoundliteral.350, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 240, i8 0, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 333, i32 5, ptr @.str.307, ptr @.compoundliteral.351, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 240, i8 1, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 194, i32 5, ptr @.str.352, ptr @.compoundliteral.353, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 240, i8 13, i8 3, ptr null }], section ".init.data", align 4
@rk3188_cpuclk_data = internal constant %struct.rockchip_cpuclk_reg_data { [4 x i32] [i32 68, i32 0, i32 0, i32 0], [4 x i8] c"\09\00\00\00", [4 x i32] [i32 31, i32 0, i32 0, i32 0], i32 1, i8 1, i8 0, i8 8, i32 1 }, align 4
@rk3188_cpuclk_rates = internal global [8 x %struct.rockchip_cpuclk_rate_table] [%struct.rockchip_cpuclk_rate_table { i32 1608000000, [5 x %struct.rockchip_cpuclk_clksel] [%struct.rockchip_cpuclk_clksel { i32 68, i32 12583040 }, %struct.rockchip_cpuclk_clksel { i32 72, i32 3670040 }, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer] }, %struct.rockchip_cpuclk_rate_table { i32 1416000000, [5 x %struct.rockchip_cpuclk_clksel] [%struct.rockchip_cpuclk_clksel { i32 68, i32 12583040 }, %struct.rockchip_cpuclk_clksel { i32 72, i32 3670040 }, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer] }, %struct.rockchip_cpuclk_rate_table { i32 1200000000, [5 x %struct.rockchip_cpuclk_clksel] [%struct.rockchip_cpuclk_clksel { i32 68, i32 12583040 }, %struct.rockchip_cpuclk_clksel { i32 72, i32 3670040 }, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer] }, %struct.rockchip_cpuclk_rate_table { i32 1008000000, [5 x %struct.rockchip_cpuclk_clksel] [%struct.rockchip_cpuclk_clksel { i32 68, i32 12583040 }, %struct.rockchip_cpuclk_clksel { i32 72, i32 3670040 }, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer] }, %struct.rockchip_cpuclk_rate_table { i32 816000000, [5 x %struct.rockchip_cpuclk_clksel] [%struct.rockchip_cpuclk_clksel { i32 68, i32 12583040 }, %struct.rockchip_cpuclk_clksel { i32 72, i32 3670040 }, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer] }, %struct.rockchip_cpuclk_rate_table { i32 600000000, [5 x %struct.rockchip_cpuclk_clksel] [%struct.rockchip_cpuclk_clksel { i32 68, i32 12582976 }, %struct.rockchip_cpuclk_clksel { i32 72, i32 3670040 }, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer] }, %struct.rockchip_cpuclk_rate_table { i32 504000000, [5 x %struct.rockchip_cpuclk_clksel] [%struct.rockchip_cpuclk_clksel { i32 68, i32 12582976 }, %struct.rockchip_cpuclk_clksel { i32 72, i32 3670040 }, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer] }, %struct.rockchip_cpuclk_rate_table { i32 312000000, [5 x %struct.rockchip_cpuclk_clksel] [%struct.rockchip_cpuclk_clksel { i32 68, i32 12582912 }, %struct.rockchip_cpuclk_clksel { i32 72, i32 3670024 }, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer] }], section ".init.data", align 4
@.str.317 = private unnamed_addr constant [47 x i8] c"\014%s: could not reparent aclk_cpu_pre to gpll\0A\00", align 1
@__func__.rk3188a_clk_init = private unnamed_addr constant [17 x i8] c"rk3188a_clk_init\00", align 1
@.str.318 = private unnamed_addr constant [55 x i8] c"\014%s: missing clocks to reparent aclk_cpu_pre to gpll\0A\00", align 1
@.str.319 = private unnamed_addr constant [10 x i8] c"aclk_core\00", align 1
@.compoundliteral.320 = internal global [1 x ptr] [ptr @.str], align 4
@div_rk3188_aclk_core_t = internal global [6 x %struct.clk_div_table] [%struct.clk_div_table { i32 0, i32 1 }, %struct.clk_div_table { i32 1, i32 2 }, %struct.clk_div_table { i32 2, i32 3 }, %struct.clk_div_table { i32 3, i32 4 }, %struct.clk_div_table { i32 4, i32 8 }, %struct.clk_div_table zeroinitializer], align 4
@mux_aclk_cpu_p = internal constant [2 x ptr] [ptr @.str.244, ptr @.str.4], section ".init.rodata", align 4
@.compoundliteral.321 = internal global [1 x ptr] [ptr @.str.17], align 4
@.compoundliteral.322 = internal global [1 x ptr] [ptr @.str.17], align 4
@.compoundliteral.323 = internal global [1 x ptr] [ptr @.str.25], align 4
@.compoundliteral.324 = internal global [1 x ptr] [ptr @.str], align 4
@.compoundliteral.325 = internal global [1 x ptr] [ptr @.str.266], align 4
@.compoundliteral.326 = internal global [1 x ptr] [ptr @.str.46], align 4
@.str.327 = private unnamed_addr constant [7 x i8] c"timer3\00", align 1
@.compoundliteral.328 = internal global [1 x ptr] [ptr @.str.46], align 4
@.str.329 = private unnamed_addr constant [7 x i8] c"timer4\00", align 1
@.compoundliteral.330 = internal global [1 x ptr] [ptr @.str.46], align 4
@.str.331 = private unnamed_addr constant [7 x i8] c"timer5\00", align 1
@.compoundliteral.332 = internal global [1 x ptr] [ptr @.str.46], align 4
@.str.333 = private unnamed_addr constant [7 x i8] c"timer6\00", align 1
@.compoundliteral.334 = internal global [1 x ptr] [ptr @.str.46], align 4
@.str.335 = private unnamed_addr constant [18 x i8] c"sclk_hsicphy_480m\00", align 1
@mux_hsicphy_p = internal constant [4 x ptr] [ptr @.str.354, ptr @.str.355, ptr @.str.4, ptr @.str.235], section ".init.rodata", align 4
@.str.336 = private unnamed_addr constant [17 x i8] c"sclk_hsicphy_12m\00", align 1
@.compoundliteral.337 = internal global [1 x ptr] [ptr @.str.335], align 4
@.compoundliteral.338 = internal global [1 x ptr] [ptr @.str.65], align 4
@.compoundliteral.339 = internal global [1 x ptr] [ptr @.str.273], align 4
@rk3188_i2s0_fracmux = internal global %struct.rockchip_clk_branch { i32 75, i32 1, ptr @.str.314, ptr @mux_sclk_i2s0_p, i8 3, i32 4, i32 80, i8 8, i8 2, i8 4, i32 0, i8 0, i8 0, i8 0, ptr null, i32 -1, i8 0, i8 0, ptr null }, section ".init.data", align 4
@.compoundliteral.340 = internal global [1 x ptr] [ptr @.str.24], align 4
@.str.341 = private unnamed_addr constant [11 x i8] c"hclk_imem0\00", align 1
@.compoundliteral.342 = internal global [1 x ptr] [ptr @.str.24], align 4
@.str.343 = private unnamed_addr constant [11 x i8] c"hclk_imem1\00", align 1
@.compoundliteral.344 = internal global [1 x ptr] [ptr @.str.24], align 4
@.compoundliteral.345 = internal global [1 x ptr] [ptr @.str.32], align 4
@.str.346 = private unnamed_addr constant [10 x i8] c"hclk_hsic\00", align 1
@.compoundliteral.347 = internal global [1 x ptr] [ptr @.str.32], align 4
@.str.348 = private unnamed_addr constant [12 x i8] c"pclk_timer3\00", align 1
@.compoundliteral.349 = internal global [1 x ptr] [ptr @.str.22], align 4
@.compoundliteral.350 = internal global [1 x ptr] [ptr @.str.250], align 4
@.compoundliteral.351 = internal global [1 x ptr] [ptr @.str.250], align 4
@.str.352 = private unnamed_addr constant [9 x i8] c"aclk_gps\00", align 1
@.compoundliteral.353 = internal global [1 x ptr] [ptr @.str.29], align 4
@.str.354 = private unnamed_addr constant [18 x i8] c"sclk_otgphy0_480m\00", align 1
@.str.355 = private unnamed_addr constant [18 x i8] c"sclk_otgphy1_480m\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__of_table_rk3066a_cru, ptr @__of_table_rk3188_cru, ptr @__of_table_rk3188a_cru], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @rk3066a_clk_init(ptr noundef %0) #0 section ".init.text" {
  %2 = tail call fastcc ptr @rk3188_common_clk_init(ptr noundef %0) #3
  %3 = icmp ugt ptr %2, inttoptr (i32 -4096 to ptr)
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @rockchip_clk_register_plls(ptr noundef %2, ptr noundef nonnull @rk3066_pll_clks, i32 noundef 4, i32 noundef 348) #4
  tail call void @rockchip_clk_register_branches(ptr noundef %2, ptr noundef nonnull @rk3066a_clk_branches, i32 noundef 39) #4
  tail call void @rockchip_clk_register_armclk(ptr noundef %2, i32 noundef 7, ptr noundef nonnull @.str, ptr noundef nonnull @mux_armclk_p, i8 noundef zeroext 2, ptr noundef nonnull @rk3066_cpuclk_data, ptr noundef nonnull @rk3066_cpuclk_rates, i32 noundef 7) #4
  tail call void @rockchip_clk_protect_critical(ptr noundef nonnull @rk3188_critical_clocks, i32 noundef 8) #4
  tail call void @rockchip_clk_of_add_provider(ptr noundef %0, ptr noundef %2) #4
  br label %5

5:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @rk3188a_clk_init(ptr noundef %0) #0 section ".init.text" {
  %2 = tail call fastcc ptr @rk3188_common_clk_init(ptr noundef %0) #3
  %3 = icmp ugt ptr %2, inttoptr (i32 -4096 to ptr)
  br i1 %3, label %21, label %4

4:                                                ; preds = %1
  tail call void @rockchip_clk_register_plls(ptr noundef %2, ptr noundef nonnull @rk3188_pll_clks, i32 noundef 4, i32 noundef 172) #4
  tail call void @rockchip_clk_register_branches(ptr noundef %2, ptr noundef nonnull @rk3188_clk_branches, i32 noundef 30) #4
  tail call void @rockchip_clk_register_armclk(ptr noundef %2, i32 noundef 7, ptr noundef nonnull @.str, ptr noundef nonnull @mux_armclk_p, i8 noundef zeroext 2, ptr noundef nonnull @rk3188_cpuclk_data, ptr noundef nonnull @rk3188_cpuclk_rates, i32 noundef 8) #4
  %5 = tail call ptr @__clk_lookup(ptr noundef nonnull @.str.17) #4
  %6 = tail call ptr @__clk_lookup(ptr noundef nonnull @.str.4) #4
  %7 = icmp ne ptr %5, null
  %8 = icmp ne ptr %6, null
  %9 = select i1 %7, i1 %8, i1 false
  br i1 %9, label %10, label %18

10:                                               ; preds = %4
  %11 = tail call i32 @clk_get_rate(ptr noundef nonnull %5) #4
  %12 = tail call i32 @clk_set_parent(ptr noundef nonnull %5, ptr noundef nonnull %6) #4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.317, ptr noundef nonnull @__func__.rk3188a_clk_init) #5
  br label %16

16:                                               ; preds = %14, %10
  %17 = tail call i32 @clk_set_rate(ptr noundef nonnull %5, i32 noundef %11) #4
  br label %20

18:                                               ; preds = %4
  %19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.318, ptr noundef nonnull @__func__.rk3188a_clk_init) #5
  br label %20

20:                                               ; preds = %18, %16
  tail call void @rockchip_clk_protect_critical(ptr noundef nonnull @rk3188_critical_clocks, i32 noundef 8) #4
  tail call void @rockchip_clk_of_add_provider(ptr noundef %0, ptr noundef %2) #4
  br label %21

21:                                               ; preds = %20, %1
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @rk3188_clk_init(ptr noundef %0) #0 section ".init.text" {
  br label %2

2:                                                ; preds = %16, %1
  %3 = phi i32 [ 0, %1 ], [ %17, %16 ]
  %4 = getelementptr [4 x %struct.rockchip_pll_clock], ptr @rk3188_pll_clks, i32 0, i32 %3, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %16, label %7

7:                                                ; preds = %2
  %8 = load i32, ptr %5, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %10, %7
  %11 = phi ptr [ %13, %10 ], [ %5, %7 ]
  %12 = getelementptr inbounds %struct.rockchip_pll_rate_table, ptr %11, i32 0, i32 1, i32 0, i32 3
  store i32 1, ptr %12, align 4
  %13 = getelementptr %struct.rockchip_pll_rate_table, ptr %11, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %10

16:                                               ; preds = %10, %7, %2
  %17 = add nuw nsw i32 %3, 1
  %18 = icmp eq i32 %17, 4
  br i1 %18, label %19, label %2

19:                                               ; preds = %16
  tail call void @rk3188a_clk_init(ptr noundef %0) #3
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc ptr @rk3188_common_clk_init(ptr noundef %0) unnamed_addr #0 section ".init.text" {
  %2 = tail call ptr @of_iomap(ptr noundef %0, i32 noundef 0) #4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.rk3188_common_clk_init) #5
  br label %13

6:                                                ; preds = %1
  %7 = tail call ptr @rockchip_clk_init(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 474) #4
  %8 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.rk3188_common_clk_init) #5
  tail call void @iounmap(ptr noundef nonnull %2) #4
  br label %13

11:                                               ; preds = %6
  tail call void @rockchip_clk_register_branches(ptr noundef %7, ptr noundef nonnull @common_clk_branches, i32 noundef 117) #4
  %12 = getelementptr i8, ptr %2, i32 272
  tail call void @rockchip_register_softrst(ptr noundef %0, i32 noundef 9, ptr noundef %12, i8 noundef zeroext 1) #4
  tail call void @rockchip_register_restart_notifier(ptr noundef %7, i32 noundef 256, ptr noundef null) #4
  br label %13

13:                                               ; preds = %11, %9, %4
  %14 = phi ptr [ inttoptr (i32 -12 to ptr), %9 ], [ %7, %11 ], [ inttoptr (i32 -12 to ptr), %4 ]
  ret ptr %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rockchip_clk_register_plls(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rockchip_clk_register_branches(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rockchip_clk_register_armclk(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rockchip_clk_protect_critical(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rockchip_clk_of_add_provider(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rockchip_clk_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rockchip_register_softrst(ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rockchip_register_restart_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_lookup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_parent(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold }
attributes #4 = { nounwind }
attributes #5 = { cold nounwind }

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
