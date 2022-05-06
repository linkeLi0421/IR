; ModuleID = '/llk/IR/drivers/clk/rockchip/clk-rv1108.c_pt.bc'
source_filename = "../drivers/clk/rockchip/clk-rv1108.c"
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

@__of_table_rv1108_cru = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rv1108-cru\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rv1108_clk_init }, section "__clk_of_table", align 4
@.str = private unnamed_addr constant [32 x i8] c"\013%s: could not map cru region\0A\00", align 1
@__func__.rv1108_clk_init = private unnamed_addr constant [16 x i8] c"rv1108_clk_init\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"\013%s: rockchip clk init failed\0A\00", align 1
@rv1108_pll_clks = internal global [3 x %struct.rockchip_pll_clock] [%struct.rockchip_pll_clock { i32 0, ptr @.str.3, ptr @mux_pll_p, i8 2, i32 64, i32 0, i32 12, i32 8, i32 0, i32 3, i8 0, ptr @rv1108_pll_rates }, %struct.rockchip_pll_clock { i32 1, ptr @.str.4, ptr @mux_pll_p, i8 2, i32 64, i32 32, i32 44, i32 8, i32 1, i32 3, i8 0, ptr null }, %struct.rockchip_pll_clock { i32 2, ptr @.str.5, ptr @mux_pll_p, i8 2, i32 64, i32 64, i32 76, i32 8, i32 2, i32 3, i8 0, ptr @rv1108_pll_rates }], section ".init.data", align 4
@rv1108_clk_branches = internal global [230 x %struct.rockchip_clk_branch] [%struct.rockchip_clk_branch { i32 0, i32 1, ptr @.str.7, ptr @mux_hdmiphy_phy_p, i8 2, i32 4, i32 460, i8 13, i8 1, i8 4, i32 0, i8 0, i8 0, i8 0, ptr null, i32 -1, i8 0, i8 0, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 1, ptr @.str.8, ptr @mux_usb480m_pre_p, i8 2, i32 4, i32 460, i8 15, i8 1, i8 4, i32 0, i8 0, i8 0, i8 0, ptr null, i32 -1, i8 0, i8 0, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.9, ptr @.compoundliteral, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 288, i8 1, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.10, ptr @.compoundliteral.11, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 288, i8 0, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.12, ptr @.compoundliteral.13, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 288, i8 2, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 0, ptr @.str.14, ptr @.compoundliteral.15, i8 1, i32 8, i32 100, i8 0, i8 0, i8 0, i32 0, i8 4, i8 4, i8 40, ptr null, i32 288, i8 5, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 195, i32 0, ptr @.str.16, ptr @.compoundliteral.17, i8 1, i32 8, i32 100, i8 0, i8 0, i8 0, i32 0, i8 0, i8 3, i8 40, ptr null, i32 288, i8 4, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 194, i32 5, ptr @.str.18, ptr @.compoundliteral.19, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 332, i8 0, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.20, ptr @.compoundliteral.21, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 332, i8 1, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 0, ptr @.str.22, ptr @mux_pll_src_4plls_p, i8 4, i32 0, i32 244, i8 6, i8 2, i8 4, i32 0, i8 0, i8 5, i8 8, ptr null, i32 320, i8 8, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 8, ptr @.str.23, ptr @.compoundliteral.24, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 1, i8 4, i8 0, ptr null, i32 320, i8 10, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 87, i32 0, ptr @.str.25, ptr @mux_pll_src_4plls_p, i8 4, i32 0, i32 244, i8 14, i8 2, i8 4, i32 0, i8 8, i8 5, i8 8, ptr null, i32 320, i8 9, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 196, i32 5, ptr @.str.26, ptr @.compoundliteral.27, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 364, i8 8, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 329, i32 5, ptr @.str.28, ptr @.compoundliteral.29, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 364, i8 9, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.30, ptr @.compoundliteral.31, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 364, i8 11, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.32, ptr @.compoundliteral.33, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 364, i8 10, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 88, i32 0, ptr @.str.34, ptr @mux_pll_src_4plls_p, i8 4, i32 0, i32 240, i8 6, i8 2, i8 4, i32 0, i8 0, i8 5, i8 8, ptr null, i32 320, i8 2, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 8, ptr @.str.35, ptr @.compoundliteral.36, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 1, i8 4, i8 0, ptr null, i32 320, i8 10, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 89, i32 0, ptr @.str.37, ptr @mux_pll_src_4plls_p, i8 4, i32 0, i32 236, i8 14, i8 2, i8 4, i32 0, i8 8, i8 5, i8 8, ptr null, i32 320, i8 1, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 0, ptr @.str.38, ptr @mux_pll_src_4plls_p, i8 4, i32 0, i32 236, i8 6, i8 2, i8 4, i32 0, i8 0, i8 5, i8 8, ptr null, i32 320, i8 0, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 0, ptr @.str.39, ptr @mux_pll_src_4plls_p, i8 4, i32 0, i32 240, i8 14, i8 2, i8 4, i32 0, i8 8, i8 5, i8 8, ptr null, i32 320, i8 3, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 197, i32 5, ptr @.str.40, ptr @.compoundliteral.41, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 364, i8 0, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 198, i32 5, ptr @.str.42, ptr @.compoundliteral.43, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 364, i8 1, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 330, i32 5, ptr @.str.44, ptr @.compoundliteral.45, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 364, i8 2, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 345, i32 5, ptr @.str.46, ptr @.compoundliteral.47, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 364, i8 3, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.48, ptr @.compoundliteral.49, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 364, i8 4, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.50, ptr @.compoundliteral.51, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 364, i8 5, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.52, ptr @.compoundliteral.53, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 364, i8 6, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 0, ptr @.str.54, ptr @.compoundliteral.55, i8 1, i32 8, i32 248, i8 0, i8 0, i8 0, i32 0, i8 0, i8 5, i8 8, ptr null, i32 320, i8 12, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.56, ptr @.compoundliteral.57, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 328, i8 0, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.58, ptr @.compoundliteral.59, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 328, i8 1, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 272, i32 5, ptr @.str.60, ptr @.compoundliteral.61, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 328, i8 2, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.62, ptr @.compoundliteral.63, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 328, i8 3, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.64, ptr @.compoundliteral.65, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 328, i8 4, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 273, i32 5, ptr @.str.66, ptr @.compoundliteral.67, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 328, i8 5, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 274, i32 5, ptr @.str.68, ptr @.compoundliteral.69, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 328, i8 6, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 90, i32 0, ptr @.str.70, ptr @mux_pll_src_2plls_p, i8 2, i32 0, i32 144, i8 7, i8 1, i8 4, i32 0, i8 0, i8 7, i8 8, ptr null, i32 320, i8 15, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 91, i32 0, ptr @.str.71, ptr @mux_pll_src_2plls_p, i8 2, i32 0, i32 172, i8 7, i8 1, i8 4, i32 0, i8 0, i8 7, i8 8, ptr null, i32 320, i8 14, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.72, ptr @.compoundliteral.73, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 320, i8 13, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 92, i32 0, ptr @.str.74, ptr @mux_wifi_src_p, i8 2, i32 0, i32 208, i8 15, i8 1, i8 4, i32 0, i8 8, i8 6, i8 8, ptr null, i32 324, i8 8, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 0, ptr @.str.75, ptr @mux_cifout_src_p, i8 2, i32 0, i32 256, i8 8, i8 1, i8 4, i32 0, i8 0, i8 0, i8 0, ptr null, i32 324, i8 11, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 93, i32 0, ptr @.str.76, ptr @mux_cifout_p, i8 2, i32 0, i32 256, i8 12, i8 1, i8 4, i32 0, i8 0, i8 5, i8 8, ptr null, i32 -1, i8 0, i8 0, ptr null }, %struct.rockchip_clk_branch { i32 94, i32 0, ptr @.str.77, ptr @.compoundliteral.78, i8 1, i32 0, i32 260, i8 0, i8 0, i8 0, i32 0, i8 0, i8 5, i8 8, ptr null, i32 324, i8 12, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.79, ptr @.compoundliteral.81, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 344, i8 6, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.82, ptr @.compoundliteral.83, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 344, i8 14, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 199, i32 5, ptr @.str.84, ptr @.compoundliteral.86, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 360, i8 10, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 331, i32 5, ptr @.str.87, ptr @.compoundliteral.89, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 360, i8 10, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 95, i32 0, ptr @.str.90, ptr @mux_sclk_cif0_src_p, i8 3, i32 0, i32 220, i8 0, i8 2, i8 4, i32 0, i8 0, i8 0, i8 0, ptr null, i32 316, i8 9, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 206, i32 5, ptr @.str.91, ptr @.compoundliteral.92, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 356, i8 6, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 341, i32 5, ptr @.str.93, ptr @.compoundliteral.94, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 356, i8 7, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 96, i32 0, ptr @.str.95, ptr @mux_sclk_cif1_src_p, i8 3, i32 0, i32 220, i8 2, i8 2, i8 4, i32 0, i8 0, i8 0, i8 0, ptr null, i32 316, i8 10, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 207, i32 5, ptr @.str.96, ptr @.compoundliteral.97, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 356, i8 8, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 342, i32 5, ptr @.str.98, ptr @.compoundliteral.99, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 356, i8 9, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 97, i32 0, ptr @.str.100, ptr @mux_sclk_cif2_src_p, i8 3, i32 0, i32 220, i8 4, i8 2, i8 4, i32 0, i8 0, i8 0, i8 0, ptr null, i32 316, i8 11, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 208, i32 5, ptr @.str.101, ptr @.compoundliteral.102, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 356, i8 10, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 343, i32 5, ptr @.str.103, ptr @.compoundliteral.104, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 356, i8 11, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 98, i32 0, ptr @.str.105, ptr @mux_sclk_cif3_src_p, i8 3, i32 0, i32 220, i8 6, i8 2, i8 4, i32 0, i8 0, i8 0, i8 0, ptr null, i32 316, i8 12, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.106, ptr @.compoundliteral.108, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 316, i8 8, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 99, i32 0, ptr @.str.109, ptr @mux_dsp_src_p, i8 4, i32 0, i32 264, i8 8, i8 2, i8 4, i32 0, i8 0, i8 5, i8 8, ptr null, i32 324, i8 0, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.110, ptr @.compoundliteral.111, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 352, i8 0, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.112, ptr @.compoundliteral.113, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 352, i8 1, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.114, ptr @.compoundliteral.115, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 352, i8 2, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.116, ptr @.compoundliteral.117, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 352, i8 3, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.118, ptr @.compoundliteral.119, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 352, i8 13, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 100, i32 0, ptr @.str.120, ptr @.compoundliteral.121, i8 1, i32 0, i32 272, i8 0, i8 0, i8 0, i32 0, i8 0, i8 5, i8 8, ptr null, i32 324, i8 1, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 101, i32 0, ptr @.str.122, ptr @.compoundliteral.123, i8 1, i32 0, i32 272, i8 0, i8 0, i8 0, i32 0, i8 8, i8 5, i8 8, ptr null, i32 324, i8 2, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 102, i32 0, ptr @.str.124, ptr @.compoundliteral.125, i8 1, i32 0, i32 276, i8 0, i8 0, i8 0, i32 0, i8 0, i8 5, i8 8, ptr null, i32 324, i8 3, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 103, i32 0, ptr @.str.126, ptr @.compoundliteral.127, i8 1, i32 0, i32 276, i8 0, i8 0, i8 0, i32 0, i8 8, i8 5, i8 8, ptr null, i32 324, i8 4, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.128, ptr @.compoundliteral.129, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 352, i8 4, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.130, ptr @.compoundliteral.131, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 352, i8 5, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.132, ptr @.compoundliteral.133, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 352, i8 6, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.134, ptr @.compoundliteral.135, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 352, i8 7, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.136, ptr @.compoundliteral.137, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 352, i8 14, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 116, i32 0, ptr @.str.138, ptr @.compoundliteral.139, i8 1, i32 0, i32 268, i8 0, i8 0, i8 0, i32 0, i8 0, i8 5, i8 8, ptr null, i32 324, i8 5, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 280, i32 0, ptr @.str.140, ptr @.compoundliteral.141, i8 1, i32 0, i32 268, i8 0, i8 0, i8 0, i32 0, i8 8, i8 5, i8 8, ptr null, i32 324, i8 6, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.142, ptr @.compoundliteral.143, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 352, i8 8, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.144, ptr @.compoundliteral.145, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 352, i8 9, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.146, ptr @.compoundliteral.147, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 352, i8 10, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.148, ptr @.compoundliteral.149, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 352, i8 11, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.150, ptr @.compoundliteral.151, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 352, i8 12, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.152, ptr @.compoundliteral.153, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 352, i8 15, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.154, ptr @.compoundliteral.155, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 332, i8 8, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 0, ptr @.str.156, ptr @mux_pll_src_4plls_p, i8 4, i32 8, i32 208, i8 6, i8 2, i8 4, i32 0, i8 0, i8 5, i8 8, ptr null, i32 312, i8 0, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 200, i32 5, ptr @.str.157, ptr @.compoundliteral.158, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 356, i8 0, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 0, ptr @.str.88, ptr @.compoundliteral.159, i8 1, i32 0, i32 212, i8 0, i8 0, i8 0, i32 0, i8 0, i8 5, i8 8, ptr null, i32 316, i8 2, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 332, i32 5, ptr @.str.160, ptr @.compoundliteral.161, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 356, i8 2, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 0, ptr @.str.162, ptr @.compoundliteral.163, i8 1, i32 0, i32 212, i8 0, i8 0, i8 0, i32 0, i8 8, i8 5, i8 8, ptr null, i32 316, i8 3, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 276, i32 5, ptr @.str.164, ptr @.compoundliteral.165, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 356, i8 3, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 0, ptr @.str.85, ptr @mux_pll_src_4plls_p, i8 4, i32 8, i32 208, i8 14, i8 2, i8 4, i32 0, i8 8, i8 5, i8 8, ptr null, i32 312, i8 1, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 201, i32 5, ptr @.str.166, ptr @.compoundliteral.167, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 356, i8 1, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 7, ptr @.str.107, ptr @.compoundliteral.169, i8 1, i32 0, i32 220, i8 0, i8 0, i8 0, i32 0, i8 8, i8 0, i8 1, ptr null, i32 0, i8 0, i8 0, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.170, ptr @.compoundliteral.171, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 316, i8 6, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.172, ptr @.compoundliteral.173, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 360, i8 10, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.174, ptr @.compoundliteral.175, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 312, i8 5, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.176, ptr @.compoundliteral.177, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 312, i8 4, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 0, ptr @.str.178, ptr @mux_dclk_hdmiphy_pre_p, i8 2, i32 0, i32 224, i8 6, i8 1, i8 4, i32 0, i8 8, i8 6, i8 8, ptr null, i32 -1, i8 0, i8 0, ptr null }, %struct.rockchip_clk_branch { i32 185, i32 0, ptr @.str.179, ptr @mux_dclk_hdmiphy_pre_p, i8 2, i32 0, i32 224, i8 6, i8 1, i8 4, i32 0, i8 0, i8 6, i8 8, ptr null, i32 -1, i8 0, i8 0, ptr null }, %struct.rockchip_clk_branch { i32 186, i32 1, ptr @.str.180, ptr @mux_dclk_hdmiphy_p, i8 2, i32 4, i32 224, i8 15, i8 1, i8 4, i32 0, i8 0, i8 0, i8 0, ptr null, i32 -1, i8 0, i8 0, ptr null }, %struct.rockchip_clk_branch { i32 187, i32 1, ptr @.str.181, ptr @mux_dclk_vop_p, i8 2, i32 4, i32 224, i8 7, i8 1, i8 4, i32 0, i8 0, i8 0, i8 0, ptr null, i32 -1, i8 0, i8 0, ptr null }, %struct.rockchip_clk_branch { i32 202, i32 5, ptr @.str.182, ptr @.compoundliteral.183, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 360, i8 0, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 333, i32 5, ptr @.str.184, ptr @.compoundliteral.185, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 360, i8 1, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 203, i32 5, ptr @.str.186, ptr @.compoundliteral.187, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 360, i8 2, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 334, i32 5, ptr @.str.188, ptr @.compoundliteral.189, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 360, i8 3, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 204, i32 5, ptr @.str.190, ptr @.compoundliteral.191, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 360, i8 4, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 335, i32 5, ptr @.str.192, ptr @.compoundliteral.193, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 360, i8 5, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 117, i32 0, ptr @.str.194, ptr @mux_pll_src_4plls_p, i8 4, i32 0, i32 228, i8 6, i8 2, i8 4, i32 0, i8 0, i8 5, i8 8, ptr null, i32 312, i8 6, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 104, i32 0, ptr @.str.195, ptr @mux_cvbs_src_p, i8 4, i32 0, i32 228, i8 13, i8 2, i8 4, i32 0, i8 8, i8 5, i8 8, ptr null, i32 312, i8 7, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 8, ptr @.str.196, ptr @.compoundliteral.197, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 1, i8 2, i8 0, ptr null, i32 0, i8 0, i8 0, ptr null }, %struct.rockchip_clk_branch { i32 105, i32 5, ptr @.str.198, ptr @.compoundliteral.199, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 312, i8 8, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 106, i32 0, ptr @.str.200, ptr @mux_hdmi_cec_src_p, i8 3, i32 0, i32 232, i8 14, i8 2, i8 4, i32 0, i8 0, i8 14, i8 8, ptr null, i32 312, i8 9, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 277, i32 5, ptr @.str.201, ptr @.compoundliteral.202, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 360, i8 8, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 278, i32 5, ptr @.str.203, ptr @.compoundliteral.204, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 360, i8 9, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 205, i32 5, ptr @.str.205, ptr @.compoundliteral.206, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 360, i8 12, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 336, i32 5, ptr @.str.207, ptr @.compoundliteral.208, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 360, i8 11, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 122, i32 0, ptr @.str.209, ptr @mux_pll_src_4plls_p, i8 4, i32 0, i32 216, i8 14, i8 2, i8 4, i32 0, i8 8, i8 5, i8 8, ptr null, i32 312, i8 3, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.210, ptr @.compoundliteral.211, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 324, i8 10, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.212, ptr @.compoundliteral.213, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 344, i8 9, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.214, ptr @.compoundliteral.215, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 344, i8 11, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.216, ptr @.compoundliteral.217, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 344, i8 12, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 8, ptr @.str.218, ptr @.compoundliteral.219, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 1, i8 2, i8 0, ptr null, i32 0, i8 0, i8 0, ptr null }, %struct.rockchip_clk_branch { i32 124, i32 0, ptr @.str.220, ptr @mux_pll_src_2plls_p, i8 2, i32 0, i32 116, i8 8, i8 1, i8 4, i32 0, i8 0, i8 7, i8 8, ptr null, i32 296, i8 0, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 4, ptr @.str.221, ptr @.compoundliteral.222, i8 1, i32 4, i32 128, i8 0, i8 0, i8 0, i32 0, i8 16, i8 16, i8 0, ptr null, i32 296, i8 1, i8 3, ptr @rv1108_i2s0_fracmux }, %struct.rockchip_clk_branch { i32 75, i32 5, ptr @.str.223, ptr @.compoundliteral.225, i8 1, i32 4, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 296, i8 2, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 0, ptr @.str.226, ptr @mux_i2s_out_p, i8 2, i32 0, i32 116, i8 15, i8 1, i8 4, i32 0, i8 0, i8 0, i8 0, ptr null, i32 296, i8 3, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 125, i32 0, ptr @.str.227, ptr @mux_pll_src_2plls_p, i8 2, i32 0, i32 120, i8 8, i8 1, i8 4, i32 0, i8 0, i8 7, i8 8, ptr null, i32 296, i8 4, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 4, ptr @.str.228, ptr @.compoundliteral.229, i8 1, i32 4, i32 104, i8 0, i8 0, i8 0, i32 0, i8 16, i8 16, i8 0, ptr null, i32 216, i8 5, i8 3, ptr @rv1108_i2s1_fracmux }, %struct.rockchip_clk_branch { i32 76, i32 5, ptr @.str.230, ptr @.compoundliteral.232, i8 1, i32 4, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 296, i8 6, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 126, i32 0, ptr @.str.233, ptr @mux_pll_src_2plls_p, i8 2, i32 0, i32 124, i8 8, i8 1, i8 4, i32 0, i8 0, i8 7, i8 8, ptr null, i32 300, i8 8, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 4, ptr @.str.234, ptr @.compoundliteral.235, i8 1, i32 4, i32 136, i8 0, i8 0, i8 0, i32 0, i8 16, i8 16, i8 0, ptr null, i32 296, i8 9, i8 3, ptr @rv1108_i2s2_fracmux }, %struct.rockchip_clk_branch { i32 77, i32 5, ptr @.str.236, ptr @.compoundliteral.238, i8 1, i32 4, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 296, i8 10, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.239, ptr @.compoundliteral.240, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 292, i8 0, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.241, ptr @.compoundliteral.242, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 292, i8 1, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.243, ptr @.compoundliteral.244, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 292, i8 2, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 193, i32 0, ptr @.str.245, ptr @mux_aclk_bus_src_p, i8 3, i32 0, i32 104, i8 8, i8 2, i8 4, i32 0, i8 0, i8 5, i8 8, ptr null, i32 -1, i8 0, i8 0, ptr null }, %struct.rockchip_clk_branch { i32 344, i32 0, ptr @.str.246, ptr @.compoundliteral.247, i8 1, i32 0, i32 108, i8 0, i8 0, i8 0, i32 0, i8 0, i8 5, i8 8, ptr null, i32 292, i8 4, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 0, ptr @.str.248, ptr @.compoundliteral.249, i8 1, i32 0, i32 108, i8 0, i8 0, i8 0, i32 0, i8 8, i8 5, i8 8, ptr null, i32 292, i8 5, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 281, i32 5, ptr @.str.250, ptr @.compoundliteral.251, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 292, i8 6, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.80, ptr @.compoundliteral.252, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 292, i8 7, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.253, ptr @.compoundliteral.254, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 292, i8 8, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 78, i32 5, ptr @.str.255, ptr @.compoundliteral.256, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 292, i8 9, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 79, i32 5, ptr @.str.257, ptr @.compoundliteral.258, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 292, i8 10, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 270, i32 5, ptr @.str.259, ptr @.compoundliteral.260, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 340, i8 4, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 320, i32 5, ptr @.str.261, ptr @.compoundliteral.262, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 336, i8 7, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 321, i32 5, ptr @.str.263, ptr @.compoundliteral.264, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 336, i8 8, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 322, i32 5, ptr @.str.265, ptr @.compoundliteral.266, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 336, i8 9, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 337, i32 5, ptr @.str.267, ptr @.compoundliteral.268, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 336, i8 10, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 338, i32 5, ptr @.str.269, ptr @.compoundliteral.270, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 336, i8 11, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 107, i32 0, ptr @.str.271, ptr @mux_pll_src_2plls_p, i8 2, i32 0, i32 140, i8 7, i8 1, i8 4, i32 0, i8 0, i8 5, i8 8, ptr null, i32 296, i8 12, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 108, i32 0, ptr @.str.272, ptr @mux_pll_src_2plls_p, i8 2, i32 0, i32 140, i8 15, i8 1, i8 4, i32 0, i8 8, i8 5, i8 8, ptr null, i32 300, i8 0, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 263, i32 5, ptr @.str.273, ptr @.compoundliteral.274, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 340, i8 5, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 127, i32 0, ptr @.str.275, ptr @mux_pll_src_dpll_gpll_usb480m_p, i8 3, i32 8, i32 148, i8 12, i8 2, i8 4, i32 0, i8 0, i8 7, i8 8, ptr null, i32 300, i8 1, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 128, i32 0, ptr @.str.276, ptr @mux_pll_src_dpll_gpll_usb480m_p, i8 3, i32 8, i32 152, i8 12, i8 2, i8 4, i32 0, i8 0, i8 7, i8 8, ptr null, i32 300, i8 3, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 129, i32 0, ptr @.str.277, ptr @mux_pll_src_dpll_gpll_usb480m_p, i8 3, i32 8, i32 156, i8 12, i8 2, i8 4, i32 0, i8 0, i8 7, i8 8, ptr null, i32 300, i8 5, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 4, ptr @.str.278, ptr @.compoundliteral.279, i8 1, i32 4, i32 160, i8 0, i8 0, i8 0, i32 0, i8 16, i8 16, i8 0, ptr null, i32 300, i8 2, i8 3, ptr @rv1108_uart0_fracmux }, %struct.rockchip_clk_branch { i32 0, i32 4, ptr @.str.280, ptr @.compoundliteral.281, i8 1, i32 4, i32 164, i8 0, i8 0, i8 0, i32 0, i8 16, i8 16, i8 0, ptr null, i32 300, i8 4, i8 3, ptr @rv1108_uart1_fracmux }, %struct.rockchip_clk_branch { i32 0, i32 4, ptr @.str.282, ptr @.compoundliteral.283, i8 1, i32 4, i32 168, i8 0, i8 0, i8 0, i32 0, i8 16, i8 16, i8 0, ptr null, i32 300, i8 6, i8 3, ptr @rv1108_uart2_fracmux }, %struct.rockchip_clk_branch { i32 265, i32 5, ptr @.str.284, ptr @.compoundliteral.285, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 340, i8 10, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 266, i32 5, ptr @.str.286, ptr @.compoundliteral.287, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 340, i8 11, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 267, i32 5, ptr @.str.288, ptr @.compoundliteral.289, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 340, i8 12, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 118, i32 0, ptr @.str.290, ptr @mux_pll_src_2plls_p, i8 2, i32 0, i32 172, i8 15, i8 1, i8 4, i32 0, i8 8, i8 7, i8 8, ptr null, i32 300, i8 7, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 119, i32 0, ptr @.str.291, ptr @mux_pll_src_2plls_p, i8 2, i32 0, i32 176, i8 7, i8 1, i8 4, i32 0, i8 0, i8 7, i8 8, ptr null, i32 300, i8 8, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 120, i32 0, ptr @.str.292, ptr @mux_pll_src_2plls_p, i8 2, i32 0, i32 176, i8 15, i8 1, i8 4, i32 0, i8 8, i8 7, i8 8, ptr null, i32 300, i8 9, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 260, i32 5, ptr @.str.293, ptr @.compoundliteral.294, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 340, i8 0, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 261, i32 5, ptr @.str.295, ptr @.compoundliteral.296, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 340, i8 1, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 262, i32 5, ptr @.str.297, ptr @.compoundliteral.298, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 340, i8 2, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 121, i32 0, ptr @.str.299, ptr @mux_pll_src_2plls_p, i8 2, i32 0, i32 144, i8 15, i8 2, i8 4, i32 0, i8 8, i8 7, i8 8, ptr null, i32 300, i8 10, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 269, i32 5, ptr @.str.300, ptr @.compoundliteral.301, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 340, i8 6, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 284, i32 5, ptr @.str.302, ptr @.compoundliteral.303, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 340, i8 3, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 256, i32 5, ptr @.str.304, ptr @.compoundliteral.305, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 340, i8 7, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 257, i32 5, ptr @.str.306, ptr @.compoundliteral.307, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 340, i8 8, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 258, i32 5, ptr @.str.308, ptr @.compoundliteral.309, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 340, i8 9, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.310, ptr @.compoundliteral.311, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 344, i8 0, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 282, i32 5, ptr @.str.312, ptr @.compoundliteral.313, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 336, i8 12, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 283, i32 5, ptr @.str.314, ptr @.compoundliteral.315, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 336, i8 13, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 268, i32 5, ptr @.str.316, ptr @.compoundliteral.317, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 340, i8 13, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 110, i32 0, ptr @.str.318, ptr @.compoundliteral.319, i8 1, i32 0, i32 180, i8 0, i8 0, i8 0, i32 0, i8 0, i8 10, i8 8, ptr null, i32 300, i8 11, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 279, i32 5, ptr @.str.320, ptr @.compoundliteral.321, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 340, i8 14, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 109, i32 0, ptr @.str.322, ptr @.compoundliteral.323, i8 1, i32 0, i32 184, i8 0, i8 0, i8 0, i32 0, i8 0, i8 10, i8 8, ptr null, i32 300, i8 12, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 192, i32 5, ptr @.str.324, ptr @.compoundliteral.325, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 336, i8 2, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.326, ptr @.compoundliteral.327, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 336, i8 3, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.328, ptr @.compoundliteral.329, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 336, i8 1, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.330, ptr @.compoundliteral.331, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 288, i8 8, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.332, ptr @.compoundliteral.333, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 288, i8 9, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.334, ptr @.compoundliteral.335, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 288, i8 10, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 0, ptr @.str.336, ptr @mux_ddrphy_p, i8 3, i32 8, i32 112, i8 8, i8 2, i8 4, i32 0, i8 0, i8 3, i8 10, ptr null, i32 -1, i8 0, i8 0, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 8, ptr @.str.337, ptr @.compoundliteral.338, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 1, i8 2, i8 0, ptr null, i32 0, i8 0, i8 0, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.339, ptr @.compoundliteral.340, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 328, i8 9, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.341, ptr @.compoundliteral.342, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 336, i8 4, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.343, ptr @.compoundliteral.344, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 336, i8 5, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.345, ptr @.compoundliteral.346, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 336, i8 6, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.347, ptr @.compoundliteral.348, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 288, i8 11, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.349, ptr @.compoundliteral.350, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 344, i8 2, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.351, ptr @.compoundliteral.352, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 344, i8 4, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 0, ptr @.str.353, ptr @.compoundliteral.354, i8 1, i32 0, i32 188, i8 0, i8 0, i8 0, i32 0, i8 10, i8 5, i8 8, ptr null, i32 304, i8 5, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 271, i32 5, ptr @.str.355, ptr @.compoundliteral.356, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 348, i8 13, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 0, ptr @.str.357, ptr @.compoundliteral.358, i8 1, i32 0, i32 188, i8 0, i8 0, i8 0, i32 0, i8 5, i8 5, i8 8, ptr null, i32 304, i8 4, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 327, i32 5, ptr @.str.359, ptr @.compoundliteral.360, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 348, i8 12, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.361, ptr @.compoundliteral.362, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 304, i8 1, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.363, ptr @.compoundliteral.364, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 304, i8 2, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 209, i32 0, ptr @.str.365, ptr @mux_aclk_peri_src_p, i8 2, i32 0, i32 188, i8 15, i8 1, i8 4, i32 0, i8 0, i8 5, i8 8, ptr null, i32 348, i8 11, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 68, i32 0, ptr @.str.366, ptr @mux_mmc_src_p, i8 4, i32 0, i32 196, i8 8, i8 2, i8 4, i32 0, i8 0, i8 8, i8 8, ptr null, i32 308, i8 0, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 0, ptr @.str.367, ptr @mux_mmc_src_p, i8 4, i32 0, i32 196, i8 10, i8 2, i8 4, i32 0, i8 0, i8 0, i8 0, ptr null, i32 308, i8 2, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 69, i32 3, ptr @.str.368, ptr @.compoundliteral.369, i8 1, i32 0, i32 200, i8 0, i8 0, i8 0, i32 0, i8 0, i8 8, i8 8, ptr null, i32 -1, i8 0, i8 0, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 0, ptr @.str.370, ptr @mux_mmc_src_p, i8 4, i32 0, i32 196, i8 12, i8 2, i8 4, i32 0, i8 0, i8 0, i8 0, ptr null, i32 308, i8 1, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 71, i32 3, ptr @.str.371, ptr @.compoundliteral.372, i8 1, i32 0, i32 172, i8 0, i8 0, i8 0, i32 0, i8 8, i8 8, i8 8, ptr null, i32 -1, i8 0, i8 0, ptr null }, %struct.rockchip_clk_branch { i32 324, i32 5, ptr @.str.373, ptr @.compoundliteral.374, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 348, i8 0, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 325, i32 5, ptr @.str.375, ptr @.compoundliteral.376, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 348, i8 1, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 326, i32 5, ptr @.str.377, ptr @.compoundliteral.378, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 348, i8 2, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 67, i32 0, ptr @.str.379, ptr @mux_pll_src_2plls_p, i8 2, i32 0, i32 204, i8 14, i8 1, i8 4, i32 0, i8 8, i8 5, i8 8, ptr null, i32 308, i8 3, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 323, i32 5, ptr @.str.380, ptr @.compoundliteral.381, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 348, i8 3, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 339, i32 5, ptr @.str.382, ptr @.compoundliteral.383, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 348, i8 6, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.384, ptr @.compoundliteral.385, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 348, i8 7, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 340, i32 5, ptr @.str.386, ptr @.compoundliteral.387, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 348, i8 8, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.388, ptr @.compoundliteral.389, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 348, i8 9, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 123, i32 5, ptr @.str.390, ptr @.compoundliteral.391, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 308, i8 5, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 80, i32 0, ptr @.str.392, ptr @mux_pll_src_2plls_p, i8 2, i32 0, i32 204, i8 7, i8 1, i8 4, i32 0, i8 0, i8 7, i8 8, ptr null, i32 308, i8 4, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 328, i32 5, ptr @.str.393, ptr @.compoundliteral.394, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 348, i8 10, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 111, i32 0, ptr @.str.395, ptr @mux_pll_src_apll_gpll_p, i8 2, i32 0, i32 192, i8 12, i8 1, i8 4, i32 0, i8 0, i8 5, i8 8, ptr null, i32 304, i8 10, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 112, i32 1, ptr @.str.396, ptr @mux_sclk_mac_p, i8 2, i32 4, i32 192, i8 8, i8 1, i8 4, i32 0, i8 0, i8 0, i8 0, ptr null, i32 -1, i8 0, i8 0, ptr null }, %struct.rockchip_clk_branch { i32 113, i32 5, ptr @.str.397, ptr @.compoundliteral.398, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 304, i8 8, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 114, i32 5, ptr @.str.399, ptr @.compoundliteral.400, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 304, i8 6, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 115, i32 5, ptr @.str.401, ptr @.compoundliteral.402, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 304, i8 7, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 210, i32 5, ptr @.str.403, ptr @.compoundliteral.404, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 348, i8 4, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 285, i32 5, ptr @.str.405, ptr @.compoundliteral.406, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 348, i8 5, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 81, i32 6, ptr @.str.407, ptr @.compoundliteral.408, i8 1, i32 0, i32 472, i8 0, i8 0, i8 0, i32 0, i8 1, i8 0, i8 0, ptr null, i32 0, i8 0, i8 0, ptr null }, %struct.rockchip_clk_branch { i32 84, i32 6, ptr @.str.409, ptr @.compoundliteral.410, i8 1, i32 0, i32 476, i8 0, i8 0, i8 0, i32 0, i8 1, i8 0, i8 0, ptr null, i32 0, i8 0, i8 0, ptr null }, %struct.rockchip_clk_branch { i32 82, i32 6, ptr @.str.411, ptr @.compoundliteral.412, i8 1, i32 0, i32 480, i8 0, i8 0, i8 0, i32 0, i8 1, i8 0, i8 0, ptr null, i32 0, i8 0, i8 0, ptr null }, %struct.rockchip_clk_branch { i32 85, i32 6, ptr @.str.413, ptr @.compoundliteral.414, i8 1, i32 0, i32 484, i8 0, i8 0, i8 0, i32 0, i8 1, i8 0, i8 0, ptr null, i32 0, i8 0, i8 0, ptr null }, %struct.rockchip_clk_branch { i32 83, i32 6, ptr @.str.415, ptr @.compoundliteral.416, i8 1, i32 0, i32 488, i8 0, i8 0, i8 0, i32 0, i8 1, i8 0, i8 0, ptr null, i32 0, i8 0, i8 0, ptr null }, %struct.rockchip_clk_branch { i32 86, i32 6, ptr @.str.417, ptr @.compoundliteral.418, i8 1, i32 0, i32 492, i8 0, i8 0, i8 0, i32 0, i8 1, i8 0, i8 0, ptr null, i32 0, i8 0, i8 0, ptr null }], section ".init.data", align 4
@rv1108_critical_clocks = internal constant [11 x ptr] [ptr @.str.18, ptr @.str.432, ptr @.str.433, ptr @.str.250, ptr @.str.365, ptr @.str.359, ptr @.str.355, ptr @.str.343, ptr @.str.345, ptr @.str.79, ptr @.str.56], section ".init.rodata", align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"armclk\00", align 1
@mux_armclk_p = internal constant [3 x ptr] [ptr @.str.10, ptr @.str.12, ptr @.str.9], section ".init.rodata", align 4
@rv1108_cpuclk_data = internal constant %struct.rockchip_cpuclk_reg_data { [4 x i32] [i32 96, i32 0, i32 0, i32 0], [4 x i8] zeroinitializer, [4 x i32] [i32 31, i32 0, i32 0, i32 0], i32 1, i8 1, i8 0, i8 8, i32 3 }, align 4
@rv1108_cpuclk_rates = internal global [18 x %struct.rockchip_cpuclk_rate_table] [%struct.rockchip_cpuclk_rate_table { i32 1608000000, [5 x %struct.rockchip_cpuclk_clksel] [%struct.rockchip_cpuclk_clksel { i32 100, i32 15728752 }, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer] }, %struct.rockchip_cpuclk_rate_table { i32 1512000000, [5 x %struct.rockchip_cpuclk_clksel] [%struct.rockchip_cpuclk_clksel { i32 100, i32 15728752 }, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer] }, %struct.rockchip_cpuclk_rate_table { i32 1488000000, [5 x %struct.rockchip_cpuclk_clksel] [%struct.rockchip_cpuclk_clksel { i32 100, i32 15728720 }, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer] }, %struct.rockchip_cpuclk_rate_table { i32 1416000000, [5 x %struct.rockchip_cpuclk_clksel] [%struct.rockchip_cpuclk_clksel { i32 100, i32 15728720 }, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer] }, %struct.rockchip_cpuclk_rate_table { i32 1392000000, [5 x %struct.rockchip_cpuclk_clksel] [%struct.rockchip_cpuclk_clksel { i32 100, i32 15728720 }, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer] }, %struct.rockchip_cpuclk_rate_table { i32 1296000000, [5 x %struct.rockchip_cpuclk_clksel] [%struct.rockchip_cpuclk_clksel { i32 100, i32 15728720 }, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer] }, %struct.rockchip_cpuclk_rate_table { i32 1200000000, [5 x %struct.rockchip_cpuclk_clksel] [%struct.rockchip_cpuclk_clksel { i32 100, i32 15728720 }, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer] }, %struct.rockchip_cpuclk_rate_table { i32 1104000000, [5 x %struct.rockchip_cpuclk_clksel] [%struct.rockchip_cpuclk_clksel { i32 100, i32 15728720 }, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer] }, %struct.rockchip_cpuclk_rate_table { i32 1008000000, [5 x %struct.rockchip_cpuclk_clksel] [%struct.rockchip_cpuclk_clksel { i32 100, i32 15728720 }, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer] }, %struct.rockchip_cpuclk_rate_table { i32 912000000, [5 x %struct.rockchip_cpuclk_clksel] [%struct.rockchip_cpuclk_clksel { i32 100, i32 15728720 }, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer] }, %struct.rockchip_cpuclk_rate_table { i32 816000000, [5 x %struct.rockchip_cpuclk_clksel] [%struct.rockchip_cpuclk_clksel { i32 100, i32 15728688 }, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer] }, %struct.rockchip_cpuclk_rate_table { i32 696000000, [5 x %struct.rockchip_cpuclk_clksel] [%struct.rockchip_cpuclk_clksel { i32 100, i32 15728688 }, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer] }, %struct.rockchip_cpuclk_rate_table { i32 600000000, [5 x %struct.rockchip_cpuclk_clksel] [%struct.rockchip_cpuclk_clksel { i32 100, i32 15728688 }, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer] }, %struct.rockchip_cpuclk_rate_table { i32 500000000, [5 x %struct.rockchip_cpuclk_clksel] [%struct.rockchip_cpuclk_clksel { i32 100, i32 15728688 }, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer] }, %struct.rockchip_cpuclk_rate_table { i32 408000000, [5 x %struct.rockchip_cpuclk_clksel] [%struct.rockchip_cpuclk_clksel { i32 100, i32 15728656 }, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer] }, %struct.rockchip_cpuclk_rate_table { i32 312000000, [5 x %struct.rockchip_cpuclk_clksel] [%struct.rockchip_cpuclk_clksel { i32 100, i32 15728656 }, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer] }, %struct.rockchip_cpuclk_rate_table { i32 216000000, [5 x %struct.rockchip_cpuclk_clksel] [%struct.rockchip_cpuclk_clksel { i32 100, i32 15728656 }, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer] }, %struct.rockchip_cpuclk_rate_table { i32 96000000, [5 x %struct.rockchip_cpuclk_clksel] [%struct.rockchip_cpuclk_clksel { i32 100, i32 15728656 }, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer] }], section ".init.data", align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"apll\00", align 1
@mux_pll_p = internal constant [2 x ptr] [ptr @.str.6, ptr @.str.6], section ".init.rodata", align 4
@rv1108_pll_rates = internal global [43 x %struct.rockchip_pll_rate_table] [%struct.rockchip_pll_rate_table { i32 1608000000, %union.anon.4 { %struct.anon.6 { i32 67, i32 1, i32 1, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 1584000000, %union.anon.4 { %struct.anon.6 { i32 66, i32 1, i32 1, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 1560000000, %union.anon.4 { %struct.anon.6 { i32 65, i32 1, i32 1, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 1536000000, %union.anon.4 { %struct.anon.6 { i32 64, i32 1, i32 1, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 1512000000, %union.anon.4 { %struct.anon.6 { i32 63, i32 1, i32 1, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 1488000000, %union.anon.4 { %struct.anon.6 { i32 62, i32 1, i32 1, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 1464000000, %union.anon.4 { %struct.anon.6 { i32 61, i32 1, i32 1, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 1440000000, %union.anon.4 { %struct.anon.6 { i32 60, i32 1, i32 1, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 1416000000, %union.anon.4 { %struct.anon.6 { i32 59, i32 1, i32 1, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 1392000000, %union.anon.4 { %struct.anon.6 { i32 58, i32 1, i32 1, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 1368000000, %union.anon.4 { %struct.anon.6 { i32 57, i32 1, i32 1, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 1344000000, %union.anon.4 { %struct.anon.6 { i32 56, i32 1, i32 1, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 1320000000, %union.anon.4 { %struct.anon.6 { i32 55, i32 1, i32 1, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 1296000000, %union.anon.4 { %struct.anon.6 { i32 54, i32 1, i32 1, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 1272000000, %union.anon.4 { %struct.anon.6 { i32 53, i32 1, i32 1, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 1248000000, %union.anon.4 { %struct.anon.6 { i32 52, i32 1, i32 1, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 1200000000, %union.anon.4 { %struct.anon.6 { i32 50, i32 1, i32 1, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 1188000000, %union.anon.4 { %struct.anon.6 { i32 99, i32 1, i32 2, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 1104000000, %union.anon.4 { %struct.anon.6 { i32 46, i32 1, i32 1, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 1100000000, %union.anon.4 { %struct.anon.6 { i32 550, i32 1, i32 12, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 1008000000, %union.anon.4 { %struct.anon.6 { i32 84, i32 2, i32 1, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 1000000000, %union.anon.4 { %struct.anon.6 { i32 500, i32 2, i32 6, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 984000000, %union.anon.4 { %struct.anon.6 { i32 82, i32 2, i32 1, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 960000000, %union.anon.4 { %struct.anon.6 { i32 80, i32 2, i32 1, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 936000000, %union.anon.4 { %struct.anon.6 { i32 78, i32 2, i32 1, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 912000000, %union.anon.4 { %struct.anon.6 { i32 76, i32 2, i32 1, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 900000000, %union.anon.4 { %struct.anon.6 { i32 300, i32 2, i32 4, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 888000000, %union.anon.4 { %struct.anon.6 { i32 74, i32 2, i32 1, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 864000000, %union.anon.4 { %struct.anon.6 { i32 72, i32 2, i32 1, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 840000000, %union.anon.4 { %struct.anon.6 { i32 70, i32 2, i32 1, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 816000000, %union.anon.4 { %struct.anon.6 { i32 68, i32 2, i32 1, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 800000000, %union.anon.4 { %struct.anon.6 { i32 400, i32 2, i32 6, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 700000000, %union.anon.4 { %struct.anon.6 { i32 350, i32 2, i32 6, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 696000000, %union.anon.4 { %struct.anon.6 { i32 58, i32 2, i32 1, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 600000000, %union.anon.4 { %struct.anon.6 { i32 75, i32 3, i32 1, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 594000000, %union.anon.4 { %struct.anon.6 { i32 99, i32 2, i32 2, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 504000000, %union.anon.4 { %struct.anon.6 { i32 63, i32 3, i32 1, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 500000000, %union.anon.4 { %struct.anon.6 { i32 250, i32 2, i32 6, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 408000000, %union.anon.4 { %struct.anon.6 { i32 68, i32 2, i32 1, i32 2, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 312000000, %union.anon.4 { %struct.anon.6 { i32 52, i32 2, i32 1, i32 2, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 216000000, %union.anon.4 { %struct.anon.6 { i32 72, i32 4, i32 1, i32 2, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 96000000, %union.anon.4 { %struct.anon.6 { i32 64, i32 4, i32 1, i32 4, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table zeroinitializer], align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"dpll\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"gpll\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"xin24m\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"hdmiphy\00", align 1
@mux_hdmiphy_phy_p = internal constant [2 x ptr] [ptr @.str.7, ptr @.str.6], section ".init.rodata", align 4
@.str.8 = private unnamed_addr constant [8 x i8] c"usb480m\00", align 1
@mux_usb480m_pre_p = internal constant [2 x ptr] [ptr @.str.419, ptr @.str.6], section ".init.rodata", align 4
@.str.9 = private unnamed_addr constant [10 x i8] c"dpll_core\00", align 1
@.compoundliteral = internal global [1 x ptr] [ptr @.str.4], align 4
@.str.10 = private unnamed_addr constant [10 x i8] c"apll_core\00", align 1
@.compoundliteral.11 = internal global [1 x ptr] [ptr @.str.3], align 4
@.str.12 = private unnamed_addr constant [10 x i8] c"gpll_core\00", align 1
@.compoundliteral.13 = internal global [1 x ptr] [ptr @.str.5], align 4
@.str.14 = private unnamed_addr constant [11 x i8] c"pclken_dbg\00", align 1
@.compoundliteral.15 = internal global [1 x ptr] [ptr @.str.2], align 4
@.str.16 = private unnamed_addr constant [13 x i8] c"aclkenm_core\00", align 1
@.compoundliteral.17 = internal global [1 x ptr] [ptr @.str.2], align 4
@.str.18 = private unnamed_addr constant [10 x i8] c"aclk_core\00", align 1
@.compoundliteral.19 = internal global [1 x ptr] [ptr @.str.16], align 4
@.str.20 = private unnamed_addr constant [9 x i8] c"pclk_dbg\00", align 1
@.compoundliteral.21 = internal global [1 x ptr] [ptr @.str.14], align 4
@.str.22 = private unnamed_addr constant [16 x i8] c"aclk_rkvenc_pre\00", align 1
@mux_pll_src_4plls_p = internal constant [4 x ptr] [ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.8], section ".init.rodata", align 4
@.str.23 = private unnamed_addr constant [16 x i8] c"hclk_rkvenc_pre\00", align 1
@.compoundliteral.24 = internal global [1 x ptr] [ptr @.str.22], align 4
@.str.25 = private unnamed_addr constant [14 x i8] c"clk_venc_core\00", align 1
@.str.26 = private unnamed_addr constant [12 x i8] c"aclk_rkvenc\00", align 1
@.compoundliteral.27 = internal global [1 x ptr] [ptr @.str.22], align 4
@.str.28 = private unnamed_addr constant [12 x i8] c"hclk_rkvenc\00", align 1
@.compoundliteral.29 = internal global [1 x ptr] [ptr @.str.23], align 4
@.str.30 = private unnamed_addr constant [16 x i8] c"aclk_rkvenc_niu\00", align 1
@.compoundliteral.31 = internal global [1 x ptr] [ptr @.str.22], align 4
@.str.32 = private unnamed_addr constant [16 x i8] c"hclk_rkvenc_niu\00", align 1
@.compoundliteral.33 = internal global [1 x ptr] [ptr @.str.23], align 4
@.str.34 = private unnamed_addr constant [15 x i8] c"sclk_hevc_core\00", align 1
@.str.35 = private unnamed_addr constant [16 x i8] c"hclk_rkvdec_pre\00", align 1
@.compoundliteral.36 = internal global [1 x ptr] [ptr @.str.34], align 4
@.str.37 = private unnamed_addr constant [15 x i8] c"clk_hevc_cabac\00", align 1
@.str.38 = private unnamed_addr constant [16 x i8] c"aclk_rkvdec_pre\00", align 1
@.str.39 = private unnamed_addr constant [13 x i8] c"aclk_vpu_pre\00", align 1
@.str.40 = private unnamed_addr constant [12 x i8] c"aclk_rkvdec\00", align 1
@.compoundliteral.41 = internal global [1 x ptr] [ptr @.str.38], align 4
@.str.42 = private unnamed_addr constant [9 x i8] c"aclk_vpu\00", align 1
@.compoundliteral.43 = internal global [1 x ptr] [ptr @.str.39], align 4
@.str.44 = private unnamed_addr constant [12 x i8] c"hclk_rkvdec\00", align 1
@.compoundliteral.45 = internal global [1 x ptr] [ptr @.str.35], align 4
@.str.46 = private unnamed_addr constant [9 x i8] c"hclk_vpu\00", align 1
@.compoundliteral.47 = internal global [1 x ptr] [ptr @.str.35], align 4
@.str.48 = private unnamed_addr constant [16 x i8] c"aclk_rkvdec_niu\00", align 1
@.compoundliteral.49 = internal global [1 x ptr] [ptr @.str.38], align 4
@.str.50 = private unnamed_addr constant [16 x i8] c"hclk_rkvdec_niu\00", align 1
@.compoundliteral.51 = internal global [1 x ptr] [ptr @.str.35], align 4
@.str.52 = private unnamed_addr constant [13 x i8] c"aclk_vpu_niu\00", align 1
@.compoundliteral.53 = internal global [1 x ptr] [ptr @.str.39], align 4
@.str.54 = private unnamed_addr constant [12 x i8] c"pmu_24m_ena\00", align 1
@.compoundliteral.55 = internal global [1 x ptr] [ptr @.str.5], align 4
@.str.56 = private unnamed_addr constant [9 x i8] c"pclk_pmu\00", align 1
@.compoundliteral.57 = internal global [1 x ptr] [ptr @.str.54], align 4
@.str.58 = private unnamed_addr constant [13 x i8] c"pclk_intmem1\00", align 1
@.compoundliteral.59 = internal global [1 x ptr] [ptr @.str.54], align 4
@.str.60 = private unnamed_addr constant [15 x i8] c"pclk_gpio0_pmu\00", align 1
@.compoundliteral.61 = internal global [1 x ptr] [ptr @.str.54], align 4
@.str.62 = private unnamed_addr constant [12 x i8] c"pclk_pmugrf\00", align 1
@.compoundliteral.63 = internal global [1 x ptr] [ptr @.str.54], align 4
@.str.64 = private unnamed_addr constant [13 x i8] c"pclk_pmu_niu\00", align 1
@.compoundliteral.65 = internal global [1 x ptr] [ptr @.str.54], align 4
@.str.66 = private unnamed_addr constant [14 x i8] c"pclk_i2c0_pmu\00", align 1
@.compoundliteral.67 = internal global [1 x ptr] [ptr @.str.54], align 4
@.str.68 = private unnamed_addr constant [14 x i8] c"pclk_pwm0_pmu\00", align 1
@.compoundliteral.69 = internal global [1 x ptr] [ptr @.str.54], align 4
@.str.70 = private unnamed_addr constant [14 x i8] c"sclk_pwm0_pmu\00", align 1
@mux_pll_src_2plls_p = internal constant [2 x ptr] [ptr @.str.4, ptr @.str.5], section ".init.rodata", align 4
@.str.71 = private unnamed_addr constant [14 x i8] c"sclk_i2c0_pmu\00", align 1
@.str.72 = private unnamed_addr constant [9 x i8] c"pvtm_pmu\00", align 1
@.compoundliteral.73 = internal global [1 x ptr] [ptr @.str.6], align 4
@.str.74 = private unnamed_addr constant [10 x i8] c"sclk_wifi\00", align 1
@mux_wifi_src_p = internal constant [2 x ptr] [ptr @.str.5, ptr @.str.6], section ".init.rodata", align 4
@.str.75 = private unnamed_addr constant [16 x i8] c"sclk_cifout_src\00", align 1
@mux_cifout_src_p = internal constant [2 x ptr] [ptr @.str.7, ptr @.str.5], section ".init.rodata", align 4
@.str.76 = private unnamed_addr constant [12 x i8] c"sclk_cifout\00", align 1
@mux_cifout_p = internal constant [2 x ptr] [ptr @.str.75, ptr @.str.6], section ".init.rodata", align 4
@.str.77 = private unnamed_addr constant [18 x i8] c"sclk_mipi_csi_out\00", align 1
@.compoundliteral.78 = internal global [1 x ptr] [ptr @.str.6], align 4
@.str.79 = private unnamed_addr constant [15 x i8] c"pclk_acodecphy\00", align 1
@.str.80 = private unnamed_addr constant [13 x i8] c"pclk_top_pre\00", align 1
@.compoundliteral.81 = internal global [1 x ptr] [ptr @.str.80], align 4
@.str.82 = private unnamed_addr constant [12 x i8] c"pclk_usbgrf\00", align 1
@.compoundliteral.83 = internal global [1 x ptr] [ptr @.str.80], align 4
@.str.84 = private unnamed_addr constant [10 x i8] c"aclk_cif0\00", align 1
@.str.85 = private unnamed_addr constant [14 x i8] c"aclk_vio1_pre\00", align 1
@.compoundliteral.86 = internal global [1 x ptr] [ptr @.str.85], align 4
@.str.87 = private unnamed_addr constant [10 x i8] c"hclk_cif0\00", align 1
@.str.88 = private unnamed_addr constant [13 x i8] c"hclk_vio_pre\00", align 1
@.compoundliteral.89 = internal global [1 x ptr] [ptr @.str.88], align 4
@.str.90 = private unnamed_addr constant [10 x i8] c"sclk_cif0\00", align 1
@mux_sclk_cif0_src_p = internal constant [3 x ptr] [ptr @.str.107, ptr @.str.420, ptr @.str.421], section ".init.rodata", align 4
@.str.91 = private unnamed_addr constant [10 x i8] c"aclk_cif1\00", align 1
@.compoundliteral.92 = internal global [1 x ptr] [ptr @.str.85], align 4
@.str.93 = private unnamed_addr constant [10 x i8] c"hclk_cif1\00", align 1
@.compoundliteral.94 = internal global [1 x ptr] [ptr @.str.88], align 4
@.str.95 = private unnamed_addr constant [10 x i8] c"sclk_cif1\00", align 1
@mux_sclk_cif1_src_p = internal constant [3 x ptr] [ptr @.str.107, ptr @.str.422, ptr @.str.421], section ".init.rodata", align 4
@.str.96 = private unnamed_addr constant [10 x i8] c"aclk_cif2\00", align 1
@.compoundliteral.97 = internal global [1 x ptr] [ptr @.str.85], align 4
@.str.98 = private unnamed_addr constant [10 x i8] c"hclk_cif2\00", align 1
@.compoundliteral.99 = internal global [1 x ptr] [ptr @.str.88], align 4
@.str.100 = private unnamed_addr constant [10 x i8] c"sclk_cif2\00", align 1
@mux_sclk_cif2_src_p = internal constant [3 x ptr] [ptr @.str.107, ptr @.str.423, ptr @.str.421], section ".init.rodata", align 4
@.str.101 = private unnamed_addr constant [10 x i8] c"aclk_cif3\00", align 1
@.compoundliteral.102 = internal global [1 x ptr] [ptr @.str.85], align 4
@.str.103 = private unnamed_addr constant [10 x i8] c"hclk_cif3\00", align 1
@.compoundliteral.104 = internal global [1 x ptr] [ptr @.str.88], align 4
@.str.105 = private unnamed_addr constant [10 x i8] c"sclk_cif3\00", align 1
@mux_sclk_cif3_src_p = internal constant [3 x ptr] [ptr @.str.107, ptr @.str.424, ptr @.str.421], section ".init.rodata", align 4
@.str.106 = private unnamed_addr constant [13 x i8] c"pclk_cif1to4\00", align 1
@.str.107 = private unnamed_addr constant [9 x i8] c"pclk_vip\00", align 1
@.compoundliteral.108 = internal global [1 x ptr] [ptr @.str.107], align 4
@.str.109 = private unnamed_addr constant [9 x i8] c"sclk_dsp\00", align 1
@mux_dsp_src_p = internal constant [4 x ptr] [ptr @.str.4, ptr @.str.5, ptr @.str.3, ptr @.str.8], section ".init.rodata", align 4
@.str.110 = private unnamed_addr constant [15 x i8] c"clk_dsp_sys_wd\00", align 1
@.compoundliteral.111 = internal global [1 x ptr] [ptr @.str.109], align 4
@.str.112 = private unnamed_addr constant [15 x i8] c"clk_dsp_epp_wd\00", align 1
@.compoundliteral.113 = internal global [1 x ptr] [ptr @.str.109], align 4
@.str.114 = private unnamed_addr constant [15 x i8] c"clk_dsp_edp_wd\00", align 1
@.compoundliteral.115 = internal global [1 x ptr] [ptr @.str.109], align 4
@.str.116 = private unnamed_addr constant [15 x i8] c"clk_dsp_iop_wd\00", align 1
@.compoundliteral.117 = internal global [1 x ptr] [ptr @.str.109], align 4
@.str.118 = private unnamed_addr constant [13 x i8] c"clk_dsp_free\00", align 1
@.compoundliteral.119 = internal global [1 x ptr] [ptr @.str.109], align 4
@.str.120 = private unnamed_addr constant [13 x i8] c"sclk_dsp_iop\00", align 1
@.compoundliteral.121 = internal global [1 x ptr] [ptr @.str.109], align 4
@.str.122 = private unnamed_addr constant [13 x i8] c"sclk_dsp_epp\00", align 1
@.compoundliteral.123 = internal global [1 x ptr] [ptr @.str.109], align 4
@.str.124 = private unnamed_addr constant [13 x i8] c"sclk_dsp_edp\00", align 1
@.compoundliteral.125 = internal global [1 x ptr] [ptr @.str.109], align 4
@.str.126 = private unnamed_addr constant [14 x i8] c"sclk_dsp_edap\00", align 1
@.compoundliteral.127 = internal global [1 x ptr] [ptr @.str.109], align 4
@.str.128 = private unnamed_addr constant [17 x i8] c"pclk_dsp_iop_niu\00", align 1
@.compoundliteral.129 = internal global [1 x ptr] [ptr @.str.120], align 4
@.str.130 = private unnamed_addr constant [17 x i8] c"aclk_dsp_epp_niu\00", align 1
@.compoundliteral.131 = internal global [1 x ptr] [ptr @.str.122], align 4
@.str.132 = private unnamed_addr constant [17 x i8] c"aclk_dsp_edp_niu\00", align 1
@.compoundliteral.133 = internal global [1 x ptr] [ptr @.str.124], align 4
@.str.134 = private unnamed_addr constant [17 x i8] c"pclk_dsp_dbg_niu\00", align 1
@.compoundliteral.135 = internal global [1 x ptr] [ptr @.str.109], align 4
@.str.136 = private unnamed_addr constant [18 x i8] c"aclk_dsp_edap_niu\00", align 1
@.compoundliteral.137 = internal global [1 x ptr] [ptr @.str.126], align 4
@.str.138 = private unnamed_addr constant [13 x i8] c"sclk_dsp_pfm\00", align 1
@.compoundliteral.139 = internal global [1 x ptr] [ptr @.str.109], align 4
@.str.140 = private unnamed_addr constant [13 x i8] c"pclk_dsp_cfg\00", align 1
@.compoundliteral.141 = internal global [1 x ptr] [ptr @.str.109], align 4
@.str.142 = private unnamed_addr constant [17 x i8] c"pclk_dsp_cfg_niu\00", align 1
@.compoundliteral.143 = internal global [1 x ptr] [ptr @.str.140], align 4
@.str.144 = private unnamed_addr constant [17 x i8] c"pclk_dsp_pfm_mon\00", align 1
@.compoundliteral.145 = internal global [1 x ptr] [ptr @.str.140], align 4
@.str.146 = private unnamed_addr constant [10 x i8] c"pclk_intc\00", align 1
@.compoundliteral.147 = internal global [1 x ptr] [ptr @.str.140], align 4
@.str.148 = private unnamed_addr constant [13 x i8] c"pclk_dsp_grf\00", align 1
@.compoundliteral.149 = internal global [1 x ptr] [ptr @.str.140], align 4
@.str.150 = private unnamed_addr constant [13 x i8] c"pclk_mailbox\00", align 1
@.compoundliteral.151 = internal global [1 x ptr] [ptr @.str.140], align 4
@.str.152 = private unnamed_addr constant [18 x i8] c"aclk_dsp_epp_perf\00", align 1
@.compoundliteral.153 = internal global [1 x ptr] [ptr @.str.122], align 4
@.str.154 = private unnamed_addr constant [18 x i8] c"aclk_dsp_edp_perf\00", align 1
@.compoundliteral.155 = internal global [1 x ptr] [ptr @.str.124], align 4
@.str.156 = private unnamed_addr constant [14 x i8] c"aclk_vio0_pre\00", align 1
@.str.157 = private unnamed_addr constant [10 x i8] c"aclk_vio0\00", align 1
@.compoundliteral.158 = internal global [1 x ptr] [ptr @.str.156], align 4
@.compoundliteral.159 = internal global [1 x ptr] [ptr @.str.156], align 4
@.str.160 = private unnamed_addr constant [9 x i8] c"hclk_vio\00", align 1
@.compoundliteral.161 = internal global [1 x ptr] [ptr @.str.88], align 4
@.str.162 = private unnamed_addr constant [13 x i8] c"pclk_vio_pre\00", align 1
@.compoundliteral.163 = internal global [1 x ptr] [ptr @.str.156], align 4
@.str.164 = private unnamed_addr constant [9 x i8] c"pclk_vio\00", align 1
@.compoundliteral.165 = internal global [1 x ptr] [ptr @.str.162], align 4
@.str.166 = private unnamed_addr constant [10 x i8] c"aclk_vio1\00", align 1
@.compoundliteral.167 = internal global [1 x ptr] [ptr @.str.85], align 4
@.str.168 = private unnamed_addr constant [8 x i8] c"ext_vip\00", align 1
@.compoundliteral.169 = internal global [1 x ptr] [ptr @.str.168], align 4
@.str.170 = private unnamed_addr constant [13 x i8] c"pclk_isp_pre\00", align 1
@.compoundliteral.171 = internal global [1 x ptr] [ptr @.str.107], align 4
@.str.172 = private unnamed_addr constant [9 x i8] c"pclk_isp\00", align 1
@.compoundliteral.173 = internal global [1 x ptr] [ptr @.str.170], align 4
@.str.174 = private unnamed_addr constant [22 x i8] c"dclk_hdmiphy_src_gpll\00", align 1
@.compoundliteral.175 = internal global [1 x ptr] [ptr @.str.5], align 4
@.str.176 = private unnamed_addr constant [22 x i8] c"dclk_hdmiphy_src_dpll\00", align 1
@.compoundliteral.177 = internal global [1 x ptr] [ptr @.str.4], align 4
@.str.178 = private unnamed_addr constant [17 x i8] c"dclk_hdmiphy_pre\00", align 1
@mux_dclk_hdmiphy_pre_p = internal constant [2 x ptr] [ptr @.str.174, ptr @.str.176], section ".init.rodata", align 4
@.str.179 = private unnamed_addr constant [13 x i8] c"dclk_vop_src\00", align 1
@.str.180 = private unnamed_addr constant [13 x i8] c"dclk_hdmiphy\00", align 1
@mux_dclk_hdmiphy_p = internal constant [2 x ptr] [ptr @.str.7, ptr @.str.6], section ".init.rodata", align 4
@.str.181 = private unnamed_addr constant [9 x i8] c"dclk_vop\00", align 1
@mux_dclk_vop_p = internal constant [2 x ptr] [ptr @.str.180, ptr @.str.179], section ".init.rodata", align 4
@.str.182 = private unnamed_addr constant [9 x i8] c"aclk_vop\00", align 1
@.compoundliteral.183 = internal global [1 x ptr] [ptr @.str.156], align 4
@.str.184 = private unnamed_addr constant [9 x i8] c"hclk_vop\00", align 1
@.compoundliteral.185 = internal global [1 x ptr] [ptr @.str.88], align 4
@.str.186 = private unnamed_addr constant [9 x i8] c"aclk_iep\00", align 1
@.compoundliteral.187 = internal global [1 x ptr] [ptr @.str.156], align 4
@.str.188 = private unnamed_addr constant [9 x i8] c"hclk_iep\00", align 1
@.compoundliteral.189 = internal global [1 x ptr] [ptr @.str.88], align 4
@.str.190 = private unnamed_addr constant [9 x i8] c"aclk_rga\00", align 1
@.compoundliteral.191 = internal global [1 x ptr] [ptr @.str.85], align 4
@.str.192 = private unnamed_addr constant [9 x i8] c"hclk_rga\00", align 1
@.compoundliteral.193 = internal global [1 x ptr] [ptr @.str.88], align 4
@.str.194 = private unnamed_addr constant [9 x i8] c"sclk_rga\00", align 1
@.str.195 = private unnamed_addr constant [15 x i8] c"sclk_cvbs_host\00", align 1
@mux_cvbs_src_p = internal constant [4 x ptr] [ptr @.str.3, ptr @.str.425, ptr @.str.7, ptr @.str.5], section ".init.rodata", align 4
@.str.196 = private unnamed_addr constant [14 x i8] c"sclk_cvbs_27m\00", align 1
@.compoundliteral.197 = internal global [1 x ptr] [ptr @.str.195], align 4
@.str.198 = private unnamed_addr constant [14 x i8] c"sclk_hdmi_sfr\00", align 1
@.compoundliteral.199 = internal global [1 x ptr] [ptr @.str.6], align 4
@.str.200 = private unnamed_addr constant [14 x i8] c"sclk_hdmi_cec\00", align 1
@mux_hdmi_cec_src_p = internal constant [3 x ptr] [ptr @.str.4, ptr @.str.5, ptr @.str.6], section ".init.rodata", align 4
@.str.201 = private unnamed_addr constant [14 x i8] c"pclk_mipi_dsi\00", align 1
@.compoundliteral.202 = internal global [1 x ptr] [ptr @.str.162], align 4
@.str.203 = private unnamed_addr constant [15 x i8] c"pclk_hdmi_ctrl\00", align 1
@.compoundliteral.204 = internal global [1 x ptr] [ptr @.str.162], align 4
@.str.205 = private unnamed_addr constant [9 x i8] c"aclk_isp\00", align 1
@.compoundliteral.206 = internal global [1 x ptr] [ptr @.str.85], align 4
@.str.207 = private unnamed_addr constant [9 x i8] c"hclk_isp\00", align 1
@.compoundliteral.208 = internal global [1 x ptr] [ptr @.str.88], align 4
@.str.209 = private unnamed_addr constant [9 x i8] c"sclk_isp\00", align 1
@.str.210 = private unnamed_addr constant [14 x i8] c"clk_dsiphy24m\00", align 1
@.compoundliteral.211 = internal global [1 x ptr] [ptr @.str.6], align 4
@.str.212 = private unnamed_addr constant [13 x i8] c"pclk_vdacphy\00", align 1
@.compoundliteral.213 = internal global [1 x ptr] [ptr @.str.80], align 4
@.str.214 = private unnamed_addr constant [17 x i8] c"pclk_mipi_dsiphy\00", align 1
@.compoundliteral.215 = internal global [1 x ptr] [ptr @.str.80], align 4
@.str.216 = private unnamed_addr constant [17 x i8] c"pclk_mipi_csiphy\00", align 1
@.compoundliteral.217 = internal global [1 x ptr] [ptr @.str.80], align 4
@.str.218 = private unnamed_addr constant [7 x i8] c"xin12m\00", align 1
@.compoundliteral.219 = internal global [1 x ptr] [ptr @.str.6], align 4
@.str.220 = private unnamed_addr constant [9 x i8] c"i2s0_src\00", align 1
@.str.221 = private unnamed_addr constant [10 x i8] c"i2s0_frac\00", align 1
@.compoundliteral.222 = internal global [1 x ptr] [ptr @.str.220], align 4
@rv1108_i2s0_fracmux = internal global %struct.rockchip_clk_branch { i32 0, i32 1, ptr @.str.224, ptr @mux_i2s0_pre_p, i8 4, i32 4, i32 116, i8 12, i8 2, i8 4, i32 0, i8 0, i8 0, i8 0, ptr null, i32 -1, i8 0, i8 0, ptr null }, section ".init.data", align 4
@.str.223 = private unnamed_addr constant [10 x i8] c"sclk_i2s0\00", align 1
@.str.224 = private unnamed_addr constant [9 x i8] c"i2s0_pre\00", align 1
@.compoundliteral.225 = internal global [1 x ptr] [ptr @.str.224], align 4
@.str.226 = private unnamed_addr constant [8 x i8] c"i2s_out\00", align 1
@mux_i2s_out_p = internal constant [2 x ptr] [ptr @.str.224, ptr @.str.218], section ".init.rodata", align 4
@.str.227 = private unnamed_addr constant [9 x i8] c"i2s1_src\00", align 1
@.str.228 = private unnamed_addr constant [10 x i8] c"i2s1_frac\00", align 1
@.compoundliteral.229 = internal global [1 x ptr] [ptr @.str.227], align 4
@rv1108_i2s1_fracmux = internal global %struct.rockchip_clk_branch { i32 0, i32 1, ptr @.str.231, ptr @mux_i2s1_p, i8 4, i32 4, i32 120, i8 12, i8 2, i8 4, i32 0, i8 0, i8 0, i8 0, ptr null, i32 -1, i8 0, i8 0, ptr null }, section ".init.data", align 4
@.str.230 = private unnamed_addr constant [10 x i8] c"sclk_i2s1\00", align 1
@.str.231 = private unnamed_addr constant [9 x i8] c"i2s1_pre\00", align 1
@.compoundliteral.232 = internal global [1 x ptr] [ptr @.str.231], align 4
@.str.233 = private unnamed_addr constant [9 x i8] c"i2s2_src\00", align 1
@.str.234 = private unnamed_addr constant [10 x i8] c"i2s2_frac\00", align 1
@.compoundliteral.235 = internal global [1 x ptr] [ptr @.str.233], align 4
@rv1108_i2s2_fracmux = internal global %struct.rockchip_clk_branch { i32 0, i32 1, ptr @.str.237, ptr @mux_i2s2_p, i8 4, i32 4, i32 124, i8 12, i8 2, i8 4, i32 0, i8 0, i8 0, i8 0, ptr null, i32 -1, i8 0, i8 0, ptr null }, section ".init.data", align 4
@.str.236 = private unnamed_addr constant [10 x i8] c"sclk_i2s2\00", align 1
@.str.237 = private unnamed_addr constant [9 x i8] c"i2s2_pre\00", align 1
@.compoundliteral.238 = internal global [1 x ptr] [ptr @.str.237], align 4
@.str.239 = private unnamed_addr constant [18 x i8] c"aclk_bus_src_gpll\00", align 1
@.compoundliteral.240 = internal global [1 x ptr] [ptr @.str.5], align 4
@.str.241 = private unnamed_addr constant [18 x i8] c"aclk_bus_src_apll\00", align 1
@.compoundliteral.242 = internal global [1 x ptr] [ptr @.str.3], align 4
@.str.243 = private unnamed_addr constant [18 x i8] c"aclk_bus_src_dpll\00", align 1
@.compoundliteral.244 = internal global [1 x ptr] [ptr @.str.4], align 4
@.str.245 = private unnamed_addr constant [13 x i8] c"aclk_bus_pre\00", align 1
@mux_aclk_bus_src_p = internal constant [3 x ptr] [ptr @.str.239, ptr @.str.241, ptr @.str.243], section ".init.rodata", align 4
@.str.246 = private unnamed_addr constant [13 x i8] c"hclk_bus_pre\00", align 1
@.compoundliteral.247 = internal global [1 x ptr] [ptr @.str.245], align 4
@.str.248 = private unnamed_addr constant [13 x i8] c"pclk_bus_pre\00", align 1
@.compoundliteral.249 = internal global [1 x ptr] [ptr @.str.245], align 4
@.str.250 = private unnamed_addr constant [9 x i8] c"pclk_bus\00", align 1
@.compoundliteral.251 = internal global [1 x ptr] [ptr @.str.248], align 4
@.compoundliteral.252 = internal global [1 x ptr] [ptr @.str.248], align 4
@.str.253 = private unnamed_addr constant [13 x i8] c"pclk_ddr_pre\00", align 1
@.compoundliteral.254 = internal global [1 x ptr] [ptr @.str.248], align 4
@.str.255 = private unnamed_addr constant [11 x i8] c"clk_timer0\00", align 1
@.compoundliteral.256 = internal global [1 x ptr] [ptr @.str.6], align 4
@.str.257 = private unnamed_addr constant [11 x i8] c"clk_timer1\00", align 1
@.compoundliteral.258 = internal global [1 x ptr] [ptr @.str.6], align 4
@.str.259 = private unnamed_addr constant [11 x i8] c"pclk_timer\00", align 1
@.compoundliteral.260 = internal global [1 x ptr] [ptr @.str.248], align 4
@.str.261 = private unnamed_addr constant [14 x i8] c"hclk_i2s0_8ch\00", align 1
@.compoundliteral.262 = internal global [1 x ptr] [ptr @.str.246], align 4
@.str.263 = private unnamed_addr constant [14 x i8] c"hclk_i2s1_2ch\00", align 1
@.compoundliteral.264 = internal global [1 x ptr] [ptr @.str.246], align 4
@.str.265 = private unnamed_addr constant [14 x i8] c"hclk_i2s2_2ch\00", align 1
@.compoundliteral.266 = internal global [1 x ptr] [ptr @.str.246], align 4
@.str.267 = private unnamed_addr constant [16 x i8] c"hclk_crypto_mst\00", align 1
@.compoundliteral.268 = internal global [1 x ptr] [ptr @.str.246], align 4
@.str.269 = private unnamed_addr constant [16 x i8] c"hclk_crypto_slv\00", align 1
@.compoundliteral.270 = internal global [1 x ptr] [ptr @.str.246], align 4
@.str.271 = private unnamed_addr constant [12 x i8] c"sclk_crypto\00", align 1
@.str.272 = private unnamed_addr constant [9 x i8] c"sclk_spi\00", align 1
@.str.273 = private unnamed_addr constant [9 x i8] c"pclk_spi\00", align 1
@.compoundliteral.274 = internal global [1 x ptr] [ptr @.str.248], align 4
@.str.275 = private unnamed_addr constant [10 x i8] c"uart0_src\00", align 1
@mux_pll_src_dpll_gpll_usb480m_p = internal constant [3 x ptr] [ptr @.str.4, ptr @.str.5, ptr @.str.8], section ".init.rodata", align 4
@.str.276 = private unnamed_addr constant [10 x i8] c"uart1_src\00", align 1
@.str.277 = private unnamed_addr constant [10 x i8] c"uart2_src\00", align 1
@.str.278 = private unnamed_addr constant [11 x i8] c"uart0_frac\00", align 1
@.compoundliteral.279 = internal global [1 x ptr] [ptr @.str.275], align 4
@rv1108_uart0_fracmux = internal global %struct.rockchip_clk_branch { i32 72, i32 1, ptr @.str.428, ptr @mux_uart0_p, i8 3, i32 4, i32 148, i8 8, i8 2, i8 4, i32 0, i8 0, i8 0, i8 0, ptr null, i32 -1, i8 0, i8 0, ptr null }, section ".init.data", align 4
@.str.280 = private unnamed_addr constant [11 x i8] c"uart1_frac\00", align 1
@.compoundliteral.281 = internal global [1 x ptr] [ptr @.str.276], align 4
@rv1108_uart1_fracmux = internal global %struct.rockchip_clk_branch { i32 73, i32 1, ptr @.str.429, ptr @mux_uart1_p, i8 3, i32 4, i32 152, i8 8, i8 2, i8 4, i32 0, i8 0, i8 0, i8 0, ptr null, i32 -1, i8 0, i8 0, ptr null }, section ".init.data", align 4
@.str.282 = private unnamed_addr constant [11 x i8] c"uart2_frac\00", align 1
@.compoundliteral.283 = internal global [1 x ptr] [ptr @.str.277], align 4
@rv1108_uart2_fracmux = internal global %struct.rockchip_clk_branch { i32 74, i32 1, ptr @.str.430, ptr @mux_uart2_p, i8 3, i32 4, i32 156, i8 8, i8 2, i8 4, i32 0, i8 0, i8 0, i8 0, ptr null, i32 -1, i8 0, i8 0, ptr null }, section ".init.data", align 4
@.str.284 = private unnamed_addr constant [11 x i8] c"pclk_uart0\00", align 1
@.compoundliteral.285 = internal global [1 x ptr] [ptr @.str.248], align 4
@.str.286 = private unnamed_addr constant [11 x i8] c"pclk_uart1\00", align 1
@.compoundliteral.287 = internal global [1 x ptr] [ptr @.str.248], align 4
@.str.288 = private unnamed_addr constant [11 x i8] c"pclk_uart2\00", align 1
@.compoundliteral.289 = internal global [1 x ptr] [ptr @.str.248], align 4
@.str.290 = private unnamed_addr constant [9 x i8] c"clk_i2c1\00", align 1
@.str.291 = private unnamed_addr constant [9 x i8] c"clk_i2c2\00", align 1
@.str.292 = private unnamed_addr constant [9 x i8] c"clk_i2c3\00", align 1
@.str.293 = private unnamed_addr constant [10 x i8] c"pclk_i2c1\00", align 1
@.compoundliteral.294 = internal global [1 x ptr] [ptr @.str.248], align 4
@.str.295 = private unnamed_addr constant [10 x i8] c"pclk_i2c2\00", align 1
@.compoundliteral.296 = internal global [1 x ptr] [ptr @.str.248], align 4
@.str.297 = private unnamed_addr constant [10 x i8] c"pclk_i2c3\00", align 1
@.compoundliteral.298 = internal global [1 x ptr] [ptr @.str.248], align 4
@.str.299 = private unnamed_addr constant [8 x i8] c"clk_pwm\00", align 1
@.str.300 = private unnamed_addr constant [9 x i8] c"pclk_pwm\00", align 1
@.compoundliteral.301 = internal global [1 x ptr] [ptr @.str.248], align 4
@.str.302 = private unnamed_addr constant [9 x i8] c"pclk_wdt\00", align 1
@.compoundliteral.303 = internal global [1 x ptr] [ptr @.str.248], align 4
@.str.304 = private unnamed_addr constant [11 x i8] c"pclk_gpio1\00", align 1
@.compoundliteral.305 = internal global [1 x ptr] [ptr @.str.248], align 4
@.str.306 = private unnamed_addr constant [11 x i8] c"pclk_gpio2\00", align 1
@.compoundliteral.307 = internal global [1 x ptr] [ptr @.str.248], align 4
@.str.308 = private unnamed_addr constant [11 x i8] c"pclk_gpio3\00", align 1
@.compoundliteral.309 = internal global [1 x ptr] [ptr @.str.248], align 4
@.str.310 = private unnamed_addr constant [9 x i8] c"pclk_grf\00", align 1
@.compoundliteral.311 = internal global [1 x ptr] [ptr @.str.248], align 4
@.str.312 = private unnamed_addr constant [12 x i8] c"pclk_efuse0\00", align 1
@.compoundliteral.313 = internal global [1 x ptr] [ptr @.str.248], align 4
@.str.314 = private unnamed_addr constant [12 x i8] c"pclk_efuse1\00", align 1
@.compoundliteral.315 = internal global [1 x ptr] [ptr @.str.248], align 4
@.str.316 = private unnamed_addr constant [11 x i8] c"pclk_tsadc\00", align 1
@.compoundliteral.317 = internal global [1 x ptr] [ptr @.str.248], align 4
@.str.318 = private unnamed_addr constant [11 x i8] c"sclk_tsadc\00", align 1
@.compoundliteral.319 = internal global [1 x ptr] [ptr @.str.6], align 4
@.str.320 = private unnamed_addr constant [12 x i8] c"pclk_saradc\00", align 1
@.compoundliteral.321 = internal global [1 x ptr] [ptr @.str.248], align 4
@.str.322 = private unnamed_addr constant [12 x i8] c"sclk_saradc\00", align 1
@.compoundliteral.323 = internal global [1 x ptr] [ptr @.str.6], align 4
@.str.324 = private unnamed_addr constant [10 x i8] c"aclk_dmac\00", align 1
@.compoundliteral.325 = internal global [1 x ptr] [ptr @.str.245], align 4
@.str.326 = private unnamed_addr constant [9 x i8] c"hclk_rom\00", align 1
@.compoundliteral.327 = internal global [1 x ptr] [ptr @.str.246], align 4
@.str.328 = private unnamed_addr constant [12 x i8] c"aclk_intmem\00", align 1
@.compoundliteral.329 = internal global [1 x ptr] [ptr @.str.245], align 4
@.str.330 = private unnamed_addr constant [9 x i8] c"apll_ddr\00", align 1
@.compoundliteral.331 = internal global [1 x ptr] [ptr @.str.3], align 4
@.str.332 = private unnamed_addr constant [9 x i8] c"dpll_ddr\00", align 1
@.compoundliteral.333 = internal global [1 x ptr] [ptr @.str.4], align 4
@.str.334 = private unnamed_addr constant [9 x i8] c"gpll_ddr\00", align 1
@.compoundliteral.335 = internal global [1 x ptr] [ptr @.str.5], align 4
@.str.336 = private unnamed_addr constant [15 x i8] c"clk_ddrphy_src\00", align 1
@mux_ddrphy_p = internal constant [3 x ptr] [ptr @.str.332, ptr @.str.334, ptr @.str.330], section ".init.rodata", align 4
@.str.337 = private unnamed_addr constant [8 x i8] c"clk_ddr\00", align 1
@.compoundliteral.338 = internal global [1 x ptr] [ptr @.str.336], align 4
@.str.339 = private unnamed_addr constant [13 x i8] c"clk_ddrphy4x\00", align 1
@.compoundliteral.340 = internal global [1 x ptr] [ptr @.str.337], align 4
@.str.341 = private unnamed_addr constant [14 x i8] c"pclk_ddrupctl\00", align 1
@.compoundliteral.342 = internal global [1 x ptr] [ptr @.str.253], align 4
@.str.343 = private unnamed_addr constant [14 x i8] c"nclk_ddrupctl\00", align 1
@.compoundliteral.344 = internal global [1 x ptr] [ptr @.str.337], align 4
@.str.345 = private unnamed_addr constant [12 x i8] c"pclk_ddrmon\00", align 1
@.compoundliteral.346 = internal global [1 x ptr] [ptr @.str.253], align 4
@.str.347 = private unnamed_addr constant [10 x i8] c"timer_clk\00", align 1
@.compoundliteral.348 = internal global [1 x ptr] [ptr @.str.6], align 4
@.str.349 = private unnamed_addr constant [13 x i8] c"pclk_mschniu\00", align 1
@.compoundliteral.350 = internal global [1 x ptr] [ptr @.str.253], align 4
@.str.351 = private unnamed_addr constant [12 x i8] c"pclk_ddrphy\00", align 1
@.compoundliteral.352 = internal global [1 x ptr] [ptr @.str.253], align 4
@.str.353 = private unnamed_addr constant [16 x i8] c"pclk_periph_pre\00", align 1
@.compoundliteral.354 = internal global [1 x ptr] [ptr @.str.5], align 4
@.str.355 = private unnamed_addr constant [12 x i8] c"pclk_periph\00", align 1
@.compoundliteral.356 = internal global [1 x ptr] [ptr @.str.353], align 4
@.str.357 = private unnamed_addr constant [16 x i8] c"hclk_periph_pre\00", align 1
@.compoundliteral.358 = internal global [1 x ptr] [ptr @.str.5], align 4
@.str.359 = private unnamed_addr constant [12 x i8] c"hclk_periph\00", align 1
@.compoundliteral.360 = internal global [1 x ptr] [ptr @.str.357], align 4
@.str.361 = private unnamed_addr constant [19 x i8] c"aclk_peri_src_dpll\00", align 1
@.compoundliteral.362 = internal global [1 x ptr] [ptr @.str.4], align 4
@.str.363 = private unnamed_addr constant [19 x i8] c"aclk_peri_src_gpll\00", align 1
@.compoundliteral.364 = internal global [1 x ptr] [ptr @.str.5], align 4
@.str.365 = private unnamed_addr constant [12 x i8] c"aclk_periph\00", align 1
@mux_aclk_peri_src_p = internal constant [2 x ptr] [ptr @.str.363, ptr @.str.361], section ".init.rodata", align 4
@.str.366 = private unnamed_addr constant [11 x i8] c"sclk_sdmmc\00", align 1
@mux_mmc_src_p = internal constant [4 x ptr] [ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8], section ".init.rodata", align 4
@.str.367 = private unnamed_addr constant [14 x i8] c"sclk_sdio_src\00", align 1
@.str.368 = private unnamed_addr constant [10 x i8] c"sclk_sdio\00", align 1
@.compoundliteral.369 = internal global [1 x ptr] [ptr @.str.367], align 4
@.str.370 = private unnamed_addr constant [14 x i8] c"sclk_emmc_src\00", align 1
@.str.371 = private unnamed_addr constant [10 x i8] c"sclk_emmc\00", align 1
@.compoundliteral.372 = internal global [1 x ptr] [ptr @.str.370], align 4
@.str.373 = private unnamed_addr constant [11 x i8] c"hclk_sdmmc\00", align 1
@.compoundliteral.374 = internal global [1 x ptr] [ptr @.str.359], align 4
@.str.375 = private unnamed_addr constant [10 x i8] c"hclk_sdio\00", align 1
@.compoundliteral.376 = internal global [1 x ptr] [ptr @.str.359], align 4
@.str.377 = private unnamed_addr constant [10 x i8] c"hclk_emmc\00", align 1
@.compoundliteral.378 = internal global [1 x ptr] [ptr @.str.359], align 4
@.str.379 = private unnamed_addr constant [11 x i8] c"sclk_nandc\00", align 1
@.str.380 = private unnamed_addr constant [11 x i8] c"hclk_nandc\00", align 1
@.compoundliteral.381 = internal global [1 x ptr] [ptr @.str.359], align 4
@.str.382 = private unnamed_addr constant [11 x i8] c"hclk_host0\00", align 1
@.compoundliteral.383 = internal global [1 x ptr] [ptr @.str.359], align 4
@.str.384 = private unnamed_addr constant [15 x i8] c"hclk_host0_arb\00", align 1
@.compoundliteral.385 = internal global [1 x ptr] [ptr @.str.359], align 4
@.str.386 = private unnamed_addr constant [9 x i8] c"hclk_otg\00", align 1
@.compoundliteral.387 = internal global [1 x ptr] [ptr @.str.359], align 4
@.str.388 = private unnamed_addr constant [13 x i8] c"hclk_otg_pmu\00", align 1
@.compoundliteral.389 = internal global [1 x ptr] [ptr @.str.359], align 4
@.str.390 = private unnamed_addr constant [11 x i8] c"clk_usbphy\00", align 1
@.compoundliteral.391 = internal global [1 x ptr] [ptr @.str.6], align 4
@.str.392 = private unnamed_addr constant [9 x i8] c"sclk_sfc\00", align 1
@.str.393 = private unnamed_addr constant [9 x i8] c"hclk_sfc\00", align 1
@.compoundliteral.394 = internal global [1 x ptr] [ptr @.str.359], align 4
@.str.395 = private unnamed_addr constant [13 x i8] c"sclk_mac_pre\00", align 1
@mux_pll_src_apll_gpll_p = internal constant [2 x ptr] [ptr @.str.3, ptr @.str.5], section ".init.rodata", align 4
@.str.396 = private unnamed_addr constant [9 x i8] c"sclk_mac\00", align 1
@mux_sclk_mac_p = internal constant [2 x ptr] [ptr @.str.395, ptr @.str.431], section ".init.rodata", align 4
@.str.397 = private unnamed_addr constant [12 x i8] c"sclk_mac_rx\00", align 1
@.compoundliteral.398 = internal global [1 x ptr] [ptr @.str.396], align 4
@.str.399 = private unnamed_addr constant [13 x i8] c"sclk_mac_ref\00", align 1
@.compoundliteral.400 = internal global [1 x ptr] [ptr @.str.396], align 4
@.str.401 = private unnamed_addr constant [16 x i8] c"sclk_mac_refout\00", align 1
@.compoundliteral.402 = internal global [1 x ptr] [ptr @.str.396], align 4
@.str.403 = private unnamed_addr constant [10 x i8] c"aclk_gmac\00", align 1
@.compoundliteral.404 = internal global [1 x ptr] [ptr @.str.365], align 4
@.str.405 = private unnamed_addr constant [10 x i8] c"pclk_gmac\00", align 1
@.compoundliteral.406 = internal global [1 x ptr] [ptr @.str.355], align 4
@.str.407 = private unnamed_addr constant [10 x i8] c"sdmmc_drv\00", align 1
@.compoundliteral.408 = internal global [1 x ptr] [ptr @.str.366], align 4
@.str.409 = private unnamed_addr constant [13 x i8] c"sdmmc_sample\00", align 1
@.compoundliteral.410 = internal global [1 x ptr] [ptr @.str.366], align 4
@.str.411 = private unnamed_addr constant [9 x i8] c"sdio_drv\00", align 1
@.compoundliteral.412 = internal global [1 x ptr] [ptr @.str.368], align 4
@.str.413 = private unnamed_addr constant [12 x i8] c"sdio_sample\00", align 1
@.compoundliteral.414 = internal global [1 x ptr] [ptr @.str.368], align 4
@.str.415 = private unnamed_addr constant [9 x i8] c"emmc_drv\00", align 1
@.compoundliteral.416 = internal global [1 x ptr] [ptr @.str.371], align 4
@.str.417 = private unnamed_addr constant [12 x i8] c"emmc_sample\00", align 1
@.compoundliteral.418 = internal global [1 x ptr] [ptr @.str.371], align 4
@.str.419 = private unnamed_addr constant [7 x i8] c"usbphy\00", align 1
@.str.420 = private unnamed_addr constant [17 x i8] c"clk_cif0_chn_out\00", align 1
@.str.421 = private unnamed_addr constant [16 x i8] c"pclkin_cvbs2cif\00", align 1
@.str.422 = private unnamed_addr constant [17 x i8] c"clk_cif1_chn_out\00", align 1
@.str.423 = private unnamed_addr constant [17 x i8] c"clk_cif2_chn_out\00", align 1
@.str.424 = private unnamed_addr constant [17 x i8] c"clk_cif3_chn_out\00", align 1
@.str.425 = private unnamed_addr constant [14 x i8] c"io_cvbs_clkin\00", align 1
@mux_i2s0_pre_p = internal constant [4 x ptr] [ptr @.str.220, ptr @.str.221, ptr @.str.426, ptr @.str.218], section ".init.rodata", align 4
@.str.426 = private unnamed_addr constant [8 x i8] c"ext_i2s\00", align 1
@mux_i2s1_p = internal constant [4 x ptr] [ptr @.str.227, ptr @.str.228, ptr @.str.427, ptr @.str.218], section ".init.rodata", align 4
@.str.427 = private unnamed_addr constant [6 x i8] c"dummy\00", align 1
@mux_i2s2_p = internal constant [4 x ptr] [ptr @.str.233, ptr @.str.234, ptr @.str.427, ptr @.str.218], section ".init.rodata", align 4
@.str.428 = private unnamed_addr constant [11 x i8] c"sclk_uart0\00", align 1
@mux_uart0_p = internal constant [3 x ptr] [ptr @.str.275, ptr @.str.278, ptr @.str.6], section ".init.rodata", align 4
@.str.429 = private unnamed_addr constant [11 x i8] c"sclk_uart1\00", align 1
@mux_uart1_p = internal constant [3 x ptr] [ptr @.str.276, ptr @.str.280, ptr @.str.6], section ".init.rodata", align 4
@.str.430 = private unnamed_addr constant [11 x i8] c"sclk_uart2\00", align 1
@mux_uart2_p = internal constant [3 x ptr] [ptr @.str.277, ptr @.str.282, ptr @.str.6], section ".init.rodata", align 4
@.str.431 = private unnamed_addr constant [9 x i8] c"ext_gmac\00", align 1
@.str.432 = private unnamed_addr constant [9 x i8] c"aclk_bus\00", align 1
@.str.433 = private unnamed_addr constant [9 x i8] c"hclk_bus\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__of_table_rv1108_cru], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @rv1108_clk_init(ptr noundef %0) #0 section ".init.text" {
  %2 = tail call ptr @of_iomap(ptr noundef %0, i32 noundef 0) #3
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.rv1108_clk_init) #4
  br label %13

6:                                                ; preds = %1
  %7 = tail call ptr @rockchip_clk_init(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 346) #3
  %8 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.rv1108_clk_init) #4
  tail call void @iounmap(ptr noundef nonnull %2) #3
  br label %13

11:                                               ; preds = %6
  tail call void @rockchip_clk_register_plls(ptr noundef %7, ptr noundef nonnull @rv1108_pll_clks, i32 noundef 3, i32 noundef 1152) #3
  tail call void @rockchip_clk_register_branches(ptr noundef %7, ptr noundef nonnull @rv1108_clk_branches, i32 noundef 230) #3
  tail call void @rockchip_clk_protect_critical(ptr noundef nonnull @rv1108_critical_clocks, i32 noundef 11) #3
  tail call void @rockchip_clk_register_armclk(ptr noundef %7, i32 noundef 3, ptr noundef nonnull @.str.2, ptr noundef nonnull @mux_armclk_p, i8 noundef zeroext 3, ptr noundef nonnull @rv1108_cpuclk_data, ptr noundef nonnull @rv1108_cpuclk_rates, i32 noundef 18) #3
  %12 = getelementptr i8, ptr %2, i32 384
  tail call void @rockchip_register_softrst(ptr noundef %0, i32 noundef 13, ptr noundef %12, i8 noundef zeroext 1) #3
  tail call void @rockchip_register_restart_notifier(ptr noundef %7, i32 noundef 448, ptr noundef null) #3
  tail call void @rockchip_clk_of_add_provider(ptr noundef %0, ptr noundef %7) #3
  br label %13

13:                                               ; preds = %11, %9, %4
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
