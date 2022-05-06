; ModuleID = '/llk/IR/drivers/clk/rockchip/clk-rk3228.c_pt.bc'
source_filename = "../drivers/clk/rockchip/clk-rk3228.c"
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

@__of_table_rk3228_cru = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3228-cru\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3228_clk_init }, section "__clk_of_table", align 4
@.str = private unnamed_addr constant [32 x i8] c"\013%s: could not map cru region\0A\00", align 1
@__func__.rk3228_clk_init = private unnamed_addr constant [16 x i8] c"rk3228_clk_init\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"\013%s: rockchip clk init failed\0A\00", align 1
@rk3228_pll_clks = internal global [4 x %struct.rockchip_pll_clock] [%struct.rockchip_pll_clock { i32 1, ptr @.str.3, ptr @mux_pll_p, i8 2, i32 64, i32 0, i32 64, i32 0, i32 7, i32 0, i8 0, ptr @rk3228_pll_rates }, %struct.rockchip_pll_clock { i32 2, ptr @.str.4, ptr @mux_pll_p, i8 2, i32 64, i32 12, i32 64, i32 4, i32 6, i32 0, i8 0, ptr null }, %struct.rockchip_pll_clock { i32 3, ptr @.str.5, ptr @mux_pll_p, i8 2, i32 64, i32 24, i32 64, i32 8, i32 8, i32 0, i8 0, ptr null }, %struct.rockchip_pll_clock { i32 4, ptr @.str.6, ptr @mux_pll_p, i8 2, i32 64, i32 36, i32 64, i32 12, i32 9, i32 0, i8 1, ptr @rk3228_pll_rates }], section ".init.data", align 4
@rk3228_clk_branches = internal global [198 x %struct.rockchip_clk_branch] [%struct.rockchip_clk_branch { i32 0, i32 3, ptr @.str.7, ptr @.compoundliteral, i8 1, i32 8, i32 84, i8 0, i8 0, i8 0, i32 0, i8 8, i8 5, i8 8, ptr null, i32 -1, i8 0, i8 0, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.9, ptr @.compoundliteral.10, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 208, i8 2, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.11, ptr @.compoundliteral.12, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 208, i8 2, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.13, ptr @.compoundliteral.14, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 208, i8 2, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 0, ptr @.str.15, ptr @mux_ddrphy_p, i8 3, i32 8, i32 172, i8 8, i8 2, i8 4, i32 0, i8 0, i8 3, i8 10, ptr null, i32 236, i8 1, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.16, ptr @.compoundliteral.18, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 240, i8 5, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 8, ptr @.str.19, ptr @.compoundliteral.20, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 1, i8 4, i8 0, ptr null, i32 236, i8 0, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.21, ptr @.compoundliteral.22, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 208, i8 6, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.23, ptr @.compoundliteral.24, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 208, i8 6, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.25, ptr @.compoundliteral.26, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 208, i8 6, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 0, ptr @.str.27, ptr @.compoundliteral.28, i8 1, i32 8, i32 72, i8 0, i8 0, i8 0, i32 0, i8 0, i8 4, i8 40, ptr null, i32 224, i8 1, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 0, ptr @.str.29, ptr @.compoundliteral.30, i8 1, i32 8, i32 72, i8 0, i8 0, i8 0, i32 0, i8 4, i8 3, i8 40, ptr null, i32 224, i8 0, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 144, i32 1, ptr @.str.31, ptr @mux_hdmiphy_p, i8 2, i32 4, i32 308, i8 13, i8 1, i8 4, i32 0, i8 0, i8 0, i8 0, ptr null, i32 -1, i8 0, i8 0, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 1, ptr @.str.32, ptr @mux_usb480m_phy_p, i8 2, i32 4, i32 308, i8 14, i8 1, i8 4, i32 0, i8 0, i8 0, i8 0, ptr null, i32 -1, i8 0, i8 0, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 1, ptr @.str.33, ptr @mux_usb480m_p, i8 2, i32 4, i32 308, i8 15, i8 1, i8 4, i32 0, i8 0, i8 0, i8 0, ptr null, i32 -1, i8 0, i8 0, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.34, ptr @.compoundliteral.35, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 208, i8 1, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.36, ptr @.compoundliteral.37, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 208, i8 1, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.38, ptr @.compoundliteral.39, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 208, i8 1, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 0, ptr @.str.40, ptr @mux_aclk_cpu_src_p, i8 3, i32 0, i32 68, i8 13, i8 2, i8 4, i32 0, i8 8, i8 5, i8 8, ptr null, i32 -1, i8 0, i8 0, ptr null }, %struct.rockchip_clk_branch { i32 195, i32 5, ptr @.str.41, ptr @.compoundliteral.42, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 232, i8 0, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 460, i32 0, ptr @.str.43, ptr @.compoundliteral.44, i8 1, i32 0, i32 72, i8 0, i8 0, i8 0, i32 0, i8 8, i8 2, i8 8, ptr null, i32 232, i8 1, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 0, ptr @.str.45, ptr @.compoundliteral.46, i8 1, i32 0, i32 72, i8 0, i8 0, i8 0, i32 0, i8 12, i8 3, i8 8, ptr null, i32 232, i8 2, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 354, i32 5, ptr @.str.47, ptr @.compoundliteral.48, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 232, i8 3, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.49, ptr @.compoundliteral.50, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 232, i8 4, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.51, ptr @.compoundliteral.52, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 232, i8 13, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 196, i32 0, ptr @.str.53, ptr @mux_pll_src_4plls_p, i8 4, i32 0, i32 196, i8 5, i8 2, i8 4, i32 0, i8 0, i8 5, i8 8, ptr null, i32 220, i8 11, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 461, i32 8, ptr @.str.54, ptr @.compoundliteral.55, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 1, i8 4, i8 0, ptr null, i32 224, i8 4, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 197, i32 0, ptr @.str.56, ptr @mux_pll_src_4plls_p, i8 4, i32 0, i32 180, i8 6, i8 2, i8 4, i32 0, i8 0, i8 5, i8 8, ptr null, i32 220, i8 2, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 462, i32 8, ptr @.str.57, ptr @.compoundliteral.58, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 1, i8 4, i8 0, ptr null, i32 224, i8 5, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 133, i32 0, ptr @.str.59, ptr @mux_pll_src_4plls_p, i8 4, i32 0, i32 180, i8 14, i8 2, i8 4, i32 0, i8 8, i8 5, i8 8, ptr null, i32 220, i8 3, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 134, i32 0, ptr @.str.60, ptr @mux_pll_src_4plls_p, i8 4, i32 0, i32 204, i8 13, i8 2, i8 4, i32 0, i8 8, i8 5, i8 8, ptr null, i32 220, i8 4, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 199, i32 0, ptr @.str.61, ptr @mux_pll_src_4plls_p, i8 4, i32 0, i32 192, i8 5, i8 2, i8 4, i32 0, i8 0, i8 5, i8 8, ptr null, i32 220, i8 0, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 463, i32 3, ptr @.str.62, ptr @.compoundliteral.63, i8 1, i32 0, i32 76, i8 0, i8 0, i8 0, i32 0, i8 0, i8 5, i8 8, ptr null, i32 -1, i8 0, i8 0, ptr null }, %struct.rockchip_clk_branch { i32 200, i32 0, ptr @.str.64, ptr @mux_pll_src_4plls_p, i8 4, i32 0, i32 192, i8 13, i8 2, i8 4, i32 0, i8 8, i8 5, i8 8, ptr null, i32 212, i8 4, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 1, ptr @.str.65, ptr @mux_pll_src_4plls_p, i8 4, i32 0, i32 200, i8 13, i8 2, i8 4, i32 0, i8 0, i8 0, i8 0, ptr null, i32 -1, i8 0, i8 0, ptr null }, %struct.rockchip_clk_branch { i32 198, i32 0, ptr @.str.66, ptr @.compoundliteral.67, i8 1, i32 0, i32 200, i8 0, i8 0, i8 0, i32 0, i8 8, i8 5, i8 8, ptr null, i32 212, i8 2, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 135, i32 0, ptr @.str.68, ptr @mux_sclk_rga_p, i8 3, i32 0, i32 156, i8 5, i8 2, i8 4, i32 0, i8 0, i8 5, i8 8, ptr null, i32 220, i8 6, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 201, i32 0, ptr @.str.69, ptr @mux_pll_src_4plls_p, i8 4, i32 0, i32 200, i8 5, i8 2, i8 4, i32 0, i8 0, i8 5, i8 8, ptr null, i32 212, i8 1, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 136, i32 0, ptr @.str.70, ptr @mux_pll_src_3plls_p, i8 3, i32 0, i32 160, i8 14, i8 2, i8 4, i32 0, i8 8, i8 6, i8 8, ptr null, i32 220, i8 5, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 123, i32 5, ptr @.str.71, ptr @.compoundliteral.72, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 220, i8 7, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 137, i32 0, ptr @.str.73, ptr @mux_sclk_hdmi_cec_p, i8 3, i32 0, i32 152, i8 14, i8 2, i8 4, i32 0, i8 0, i8 14, i8 8, ptr null, i32 220, i8 8, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.74, ptr @.compoundliteral.75, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 216, i8 0, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.76, ptr @.compoundliteral.77, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 216, i8 0, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.78, ptr @.compoundliteral.79, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 216, i8 0, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 0, ptr @.str.80, ptr @mux_aclk_peri_src_p, i8 3, i32 0, i32 108, i8 10, i8 2, i8 4, i32 0, i8 0, i8 5, i8 8, ptr null, i32 -1, i8 0, i8 0, ptr null }, %struct.rockchip_clk_branch { i32 363, i32 0, ptr @.str.81, ptr @.compoundliteral.82, i8 1, i32 0, i32 108, i8 0, i8 0, i8 0, i32 0, i8 12, i8 3, i8 8, ptr null, i32 228, i8 2, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 478, i32 0, ptr @.str.83, ptr @.compoundliteral.84, i8 1, i32 0, i32 108, i8 0, i8 0, i8 0, i32 0, i8 8, i8 2, i8 8, ptr null, i32 228, i8 1, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 210, i32 5, ptr @.str.85, ptr @.compoundliteral.86, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 228, i8 0, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 85, i32 5, ptr @.str.87, ptr @.compoundliteral.88, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 232, i8 5, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 86, i32 5, ptr @.str.89, ptr @.compoundliteral.90, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 232, i8 6, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 87, i32 5, ptr @.str.91, ptr @.compoundliteral.92, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 232, i8 7, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 88, i32 5, ptr @.str.93, ptr @.compoundliteral.94, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 232, i8 8, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 89, i32 5, ptr @.str.95, ptr @.compoundliteral.96, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 232, i8 9, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 90, i32 5, ptr @.str.97, ptr @.compoundliteral.98, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 232, i8 10, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 138, i32 0, ptr @.str.99, ptr @mux_pll_src_2plls_p, i8 2, i32 0, i32 164, i8 5, i8 1, i8 4, i32 0, i8 0, i8 5, i8 8, ptr null, i32 216, i8 7, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 139, i32 0, ptr @.str.100, ptr @mux_pll_src_2plls_p, i8 2, i32 0, i32 156, i8 15, i8 1, i8 4, i32 0, i8 8, i8 5, i8 8, ptr null, i32 216, i8 6, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 140, i32 5, ptr @.str.101, ptr @.compoundliteral.103, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 248, i8 12, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 141, i32 0, ptr @.str.104, ptr @mux_pll_src_cpll_gpll_usb480m_p, i8 3, i32 0, i32 160, i8 5, i8 2, i8 4, i32 0, i8 0, i8 6, i8 8, ptr null, i32 216, i8 15, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 68, i32 0, ptr @.str.105, ptr @mux_mmc_src_p, i8 4, i32 0, i32 112, i8 8, i8 2, i8 4, i32 0, i8 0, i8 8, i8 8, ptr null, i32 216, i8 11, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 120, i32 0, ptr @.str.106, ptr @mux_mmc_src_p, i8 4, i32 0, i32 112, i8 10, i8 2, i8 4, i32 0, i8 0, i8 0, i8 0, ptr null, i32 216, i8 13, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 69, i32 3, ptr @.str.107, ptr @.compoundliteral.108, i8 1, i32 0, i32 116, i8 0, i8 0, i8 0, i32 0, i8 0, i8 8, i8 8, ptr null, i32 -1, i8 0, i8 0, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 0, ptr @.str.109, ptr @mux_mmc_src_p, i8 4, i32 0, i32 112, i8 12, i8 2, i8 4, i32 0, i8 0, i8 0, i8 0, ptr null, i32 216, i8 14, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 71, i32 3, ptr @.str.110, ptr @.compoundliteral.111, i8 1, i32 0, i32 116, i8 0, i8 0, i8 0, i32 0, i8 8, i8 8, i8 8, ptr null, i32 -1, i8 0, i8 0, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.112, ptr @.compoundliteral.113, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 220, i8 1, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.114, ptr @.compoundliteral.115, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 220, i8 1, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 1, ptr @.str.116, ptr @mux_sclk_vop_src_p, i8 2, i32 0, i32 176, i8 0, i8 1, i8 4, i32 0, i8 0, i8 0, i8 0, ptr null, i32 -1, i8 0, i8 0, ptr null }, %struct.rockchip_clk_branch { i32 191, i32 3, ptr @.str.117, ptr @.compoundliteral.118, i8 1, i32 0, i32 184, i8 0, i8 0, i8 0, i32 0, i8 0, i8 3, i8 8, ptr null, i32 -1, i8 0, i8 0, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 3, ptr @.str.119, ptr @.compoundliteral.120, i8 1, i32 0, i32 176, i8 0, i8 0, i8 0, i32 0, i8 8, i8 8, i8 8, ptr null, i32 -1, i8 0, i8 0, ptr null }, %struct.rockchip_clk_branch { i32 190, i32 1, ptr @.str.121, ptr @mux_dclk_vop_p, i8 2, i32 0, i32 176, i8 1, i8 1, i8 4, i32 0, i8 0, i8 0, i8 0, ptr null, i32 -1, i8 0, i8 0, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 8, ptr @.str.122, ptr @.compoundliteral.123, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 1, i8 2, i8 0, ptr null, i32 0, i8 0, i8 0, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 0, ptr @.str.124, ptr @mux_pll_src_2plls_p, i8 2, i32 0, i32 104, i8 15, i8 1, i8 4, i32 0, i8 0, i8 7, i8 8, ptr null, i32 208, i8 3, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 4, ptr @.str.125, ptr @.compoundliteral.126, i8 1, i32 4, i32 100, i8 0, i8 0, i8 0, i32 0, i8 16, i8 16, i8 0, ptr null, i32 208, i8 4, i8 3, ptr @rk3228_i2s0_fracmux }, %struct.rockchip_clk_branch { i32 80, i32 5, ptr @.str.127, ptr @.compoundliteral.129, i8 1, i32 4, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 208, i8 5, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 0, ptr @.str.130, ptr @mux_pll_src_2plls_p, i8 2, i32 0, i32 80, i8 15, i8 1, i8 4, i32 0, i8 0, i8 7, i8 8, ptr null, i32 208, i8 10, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 4, ptr @.str.131, ptr @.compoundliteral.132, i8 1, i32 4, i32 96, i8 0, i8 0, i8 0, i32 0, i8 16, i8 16, i8 0, ptr null, i32 208, i8 11, i8 3, ptr @rk3228_i2s1_fracmux }, %struct.rockchip_clk_branch { i32 81, i32 5, ptr @.str.133, ptr @.compoundliteral.135, i8 1, i32 4, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 208, i8 14, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 113, i32 0, ptr @.str.136, ptr @mux_i2s_out_p, i8 2, i32 0, i32 80, i8 12, i8 1, i8 4, i32 0, i8 0, i8 0, i8 0, ptr null, i32 208, i8 13, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 0, ptr @.str.137, ptr @mux_pll_src_2plls_p, i8 2, i32 0, i32 132, i8 15, i8 1, i8 4, i32 0, i8 0, i8 7, i8 8, ptr null, i32 208, i8 7, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 4, ptr @.str.138, ptr @.compoundliteral.139, i8 1, i32 4, i32 188, i8 0, i8 0, i8 0, i32 0, i8 16, i8 16, i8 0, ptr null, i32 208, i8 8, i8 3, ptr @rk3228_i2s2_fracmux }, %struct.rockchip_clk_branch { i32 82, i32 5, ptr @.str.140, ptr @.compoundliteral.142, i8 1, i32 4, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 208, i8 9, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 0, ptr @.str.143, ptr @mux_pll_src_2plls_p, i8 2, i32 0, i32 92, i8 15, i8 1, i8 4, i32 0, i8 0, i8 7, i8 8, ptr null, i32 216, i8 10, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 4, ptr @.str.144, ptr @.compoundliteral.145, i8 1, i32 4, i32 148, i8 0, i8 0, i8 0, i32 0, i8 16, i8 16, i8 0, ptr null, i32 216, i8 12, i8 3, ptr @rk3228_spdif_fracmux }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.146, ptr @.compoundliteral.148, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 212, i8 3, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 142, i32 5, ptr @.str.149, ptr @.compoundliteral.150, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 212, i8 5, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 143, i32 5, ptr @.str.151, ptr @.compoundliteral.152, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 212, i8 6, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 72, i32 0, ptr @.str.153, ptr @.compoundliteral.154, i8 1, i32 0, i32 164, i8 0, i8 0, i8 0, i32 0, i8 6, i8 10, i8 8, ptr null, i32 216, i8 8, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 0, ptr @.str.155, ptr @mux_pll_src_4plls_p, i8 4, i32 0, i32 204, i8 5, i8 2, i8 4, i32 0, i8 0, i8 5, i8 8, ptr null, i32 220, i8 13, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 65, i32 0, ptr @.str.156, ptr @mux_pll_src_2plls_p, i8 2, i32 0, i32 168, i8 8, i8 1, i8 4, i32 0, i8 0, i8 7, i8 8, ptr null, i32 216, i8 9, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 0, ptr @.str.157, ptr @mux_pll_src_cpll_gpll_usb480m_p, i8 3, i32 0, i32 120, i8 12, i8 2, i8 4, i32 0, i8 0, i8 7, i8 8, ptr null, i32 212, i8 8, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 0, ptr @.str.158, ptr @mux_pll_src_cpll_gpll_usb480m_p, i8 3, i32 0, i32 124, i8 12, i8 2, i8 4, i32 0, i8 0, i8 7, i8 8, ptr null, i32 212, i8 10, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 0, ptr @.str.159, ptr @mux_pll_src_cpll_gpll_usb480m_p, i8 3, i32 0, i32 128, i8 12, i8 2, i8 4, i32 0, i8 0, i8 7, i8 8, ptr null, i32 212, i8 12, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 4, ptr @.str.160, ptr @.compoundliteral.161, i8 1, i32 4, i32 136, i8 0, i8 0, i8 0, i32 0, i8 16, i8 16, i8 0, ptr null, i32 212, i8 9, i8 3, ptr @rk3228_uart0_fracmux }, %struct.rockchip_clk_branch { i32 0, i32 4, ptr @.str.162, ptr @.compoundliteral.163, i8 1, i32 4, i32 140, i8 0, i8 0, i8 0, i32 0, i8 16, i8 16, i8 0, ptr null, i32 212, i8 11, i8 3, ptr @rk3228_uart1_fracmux }, %struct.rockchip_clk_branch { i32 0, i32 4, ptr @.str.164, ptr @.compoundliteral.165, i8 1, i32 4, i32 144, i8 0, i8 0, i8 0, i32 0, i8 16, i8 16, i8 0, ptr null, i32 212, i8 13, i8 3, ptr @rk3228_uart2_fracmux }, %struct.rockchip_clk_branch { i32 67, i32 0, ptr @.str.166, ptr @mux_pll_src_2plls_p, i8 2, i32 0, i32 76, i8 14, i8 1, i8 4, i32 0, i8 8, i8 5, i8 8, ptr null, i32 212, i8 0, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 124, i32 0, ptr @.str.167, ptr @mux_pll_src_2plls_p, i8 2, i32 0, i32 88, i8 7, i8 1, i8 4, i32 0, i8 0, i8 5, i8 8, ptr null, i32 212, i8 7, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 125, i32 1, ptr @.str.168, ptr @mux_sclk_mac_extclk_p, i8 2, i32 0, i32 184, i8 10, i8 1, i8 4, i32 0, i8 0, i8 0, i8 0, ptr null, i32 -1, i8 0, i8 0, ptr null }, %struct.rockchip_clk_branch { i32 126, i32 1, ptr @.str.169, ptr @mux_sclk_gmac_pre_p, i8 2, i32 0, i32 88, i8 5, i8 1, i8 4, i32 0, i8 0, i8 0, i8 0, ptr null, i32 -1, i8 0, i8 0, ptr null }, %struct.rockchip_clk_branch { i32 127, i32 5, ptr @.str.170, ptr @.compoundliteral.171, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 228, i8 4, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 128, i32 5, ptr @.str.172, ptr @.compoundliteral.173, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 228, i8 3, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 129, i32 5, ptr @.str.174, ptr @.compoundliteral.175, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 228, i8 5, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 130, i32 5, ptr @.str.176, ptr @.compoundliteral.177, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 228, i8 6, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 131, i32 0, ptr @.str.178, ptr @mux_sclk_macphy_p, i8 2, i32 0, i32 184, i8 12, i8 1, i8 4, i32 0, i8 8, i8 2, i8 8, ptr null, i32 228, i8 7, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 132, i32 0, ptr @.str.179, ptr @mux_pll_src_2plls_p, i8 2, i32 0, i32 88, i8 15, i8 1, i8 4, i32 0, i8 8, i8 5, i8 8, ptr null, i32 216, i8 2, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 205, i32 5, ptr @.str.180, ptr @.compoundliteral.181, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 260, i8 0, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.182, ptr @.compoundliteral.183, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 260, i8 11, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 204, i32 5, ptr @.str.184, ptr @.compoundliteral.185, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 260, i8 2, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.186, ptr @.compoundliteral.187, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 260, i8 9, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 211, i32 5, ptr @.str.188, ptr @.compoundliteral.189, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 260, i8 5, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.190, ptr @.compoundliteral.191, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 260, i8 12, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 206, i32 5, ptr @.str.192, ptr @.compoundliteral.193, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 264, i8 10, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.194, ptr @.compoundliteral.195, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 260, i8 10, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 467, i32 5, ptr @.str.196, ptr @.compoundliteral.197, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 260, i8 1, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 468, i32 5, ptr @.str.198, ptr @.compoundliteral.199, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 260, i8 3, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 452, i32 5, ptr @.str.200, ptr @.compoundliteral.201, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 260, i8 6, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.202, ptr @.compoundliteral.203, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 260, i8 7, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.204, ptr @.compoundliteral.205, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 260, i8 8, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.206, ptr @.compoundliteral.207, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 260, i8 13, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 469, i32 5, ptr @.str.208, ptr @.compoundliteral.209, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 264, i8 7, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 470, i32 5, ptr @.str.210, ptr @.compoundliteral.211, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 264, i8 12, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 364, i32 5, ptr @.str.212, ptr @.compoundliteral.213, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 264, i8 6, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 324, i32 5, ptr @.str.214, ptr @.compoundliteral.215, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 264, i8 8, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 325, i32 5, ptr @.str.216, ptr @.compoundliteral.217, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 264, i8 11, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.218, ptr @.compoundliteral.219, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 256, i8 0, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 212, i32 5, ptr @.str.220, ptr @.compoundliteral.221, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 252, i8 4, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 456, i32 5, ptr @.str.222, ptr @.compoundliteral.223, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 252, i8 0, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 457, i32 5, ptr @.str.224, ptr @.compoundliteral.225, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 252, i8 1, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 459, i32 5, ptr @.str.226, ptr @.compoundliteral.227, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 252, i8 2, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 453, i32 5, ptr @.str.228, ptr @.compoundliteral.229, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 252, i8 3, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 471, i32 5, ptr @.str.230, ptr @.compoundliteral.231, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 252, i8 6, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.232, ptr @.compoundliteral.233, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 252, i8 7, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 472, i32 5, ptr @.str.234, ptr @.compoundliteral.235, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 252, i8 8, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.236, ptr @.compoundliteral.237, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 252, i8 9, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 473, i32 5, ptr @.str.238, ptr @.compoundliteral.239, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 252, i8 10, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 474, i32 5, ptr @.str.240, ptr @.compoundliteral.241, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 252, i8 12, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.242, ptr @.compoundliteral.243, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 252, i8 13, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.244, ptr @.compoundliteral.245, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 252, i8 14, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.246, ptr @.compoundliteral.247, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 256, i8 1, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 367, i32 5, ptr @.str.248, ptr @.compoundliteral.249, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 252, i8 5, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.250, ptr @.compoundliteral.251, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 256, i8 2, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 213, i32 5, ptr @.str.252, ptr @.compoundliteral.253, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 236, i8 14, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.254, ptr @.compoundliteral.255, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 236, i8 15, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.256, ptr @.compoundliteral.257, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 240, i8 1, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.258, ptr @.compoundliteral.259, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 240, i8 0, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 194, i32 5, ptr @.str.260, ptr @.compoundliteral.261, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 240, i8 2, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.262, ptr @.compoundliteral.263, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 248, i8 1, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.264, ptr @.compoundliteral.265, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 240, i8 3, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 442, i32 5, ptr @.str.266, ptr @.compoundliteral.267, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 240, i8 7, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 443, i32 5, ptr @.str.268, ptr @.compoundliteral.269, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 240, i8 8, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 444, i32 5, ptr @.str.270, ptr @.compoundliteral.271, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 240, i8 9, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 445, i32 5, ptr @.str.272, ptr @.compoundliteral.273, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 240, i8 10, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 475, i32 5, ptr @.str.274, ptr @.compoundliteral.275, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 248, i8 11, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 476, i32 5, ptr @.str.276, ptr @.compoundliteral.277, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 240, i8 11, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 477, i32 5, ptr @.str.278, ptr @.compoundliteral.279, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 240, i8 12, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.280, ptr @.compoundliteral.281, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 240, i8 4, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.282, ptr @.compoundliteral.283, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 240, i8 6, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.284, ptr @.compoundliteral.285, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 248, i8 2, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 326, i32 5, ptr @.str.286, ptr @.compoundliteral.287, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 240, i8 13, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 327, i32 5, ptr @.str.288, ptr @.compoundliteral.289, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 240, i8 14, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 332, i32 5, ptr @.str.290, ptr @.compoundliteral.291, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 240, i8 15, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 333, i32 5, ptr @.str.292, ptr @.compoundliteral.293, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 244, i8 0, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 334, i32 5, ptr @.str.294, ptr @.compoundliteral.295, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 244, i8 1, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 335, i32 5, ptr @.str.296, ptr @.compoundliteral.297, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 244, i8 2, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 353, i32 5, ptr @.str.298, ptr @.compoundliteral.299, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 244, i8 4, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.300, ptr @.compoundliteral.301, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 244, i8 5, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 338, i32 5, ptr @.str.302, ptr @.compoundliteral.303, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 244, i8 6, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 350, i32 5, ptr @.str.304, ptr @.compoundliteral.305, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 244, i8 7, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 320, i32 5, ptr @.str.306, ptr @.compoundliteral.307, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 244, i8 8, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 321, i32 5, ptr @.str.308, ptr @.compoundliteral.309, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 244, i8 9, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 322, i32 5, ptr @.str.310, ptr @.compoundliteral.311, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 244, i8 10, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 323, i32 5, ptr @.str.312, ptr @.compoundliteral.313, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 244, i8 11, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 341, i32 5, ptr @.str.314, ptr @.compoundliteral.315, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 244, i8 12, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 342, i32 5, ptr @.str.316, ptr @.compoundliteral.317, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 244, i8 13, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 343, i32 5, ptr @.str.318, ptr @.compoundliteral.319, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 244, i8 14, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 344, i32 5, ptr @.str.320, ptr @.compoundliteral.321, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 244, i8 15, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 329, i32 5, ptr @.str.322, ptr @.compoundliteral.323, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 248, i8 0, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.324, ptr @.compoundliteral.325, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 248, i8 1, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.326, ptr @.compoundliteral.327, i8 1, i32 8, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 248, i8 2, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.328, ptr @.compoundliteral.329, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 248, i8 3, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.330, ptr @.compoundliteral.331, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 248, i8 3, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.332, ptr @.compoundliteral.333, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 248, i8 5, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 365, i32 5, ptr @.str.334, ptr @.compoundliteral.335, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 248, i8 7, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.336, ptr @.compoundliteral.337, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 248, i8 8, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.338, ptr @.compoundliteral.339, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 248, i8 9, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 202, i32 5, ptr @.str.340, ptr @.compoundliteral.341, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 268, i8 0, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.342, ptr @.compoundliteral.343, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 268, i8 4, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 203, i32 5, ptr @.str.344, ptr @.compoundliteral.345, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 268, i8 2, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.346, ptr @.compoundliteral.347, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 268, i8 6, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 464, i32 5, ptr @.str.348, ptr @.compoundliteral.349, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 268, i8 1, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.350, ptr @.compoundliteral.351, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 268, i8 5, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 465, i32 5, ptr @.str.352, ptr @.compoundliteral.353, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 268, i8 3, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 0, i32 5, ptr @.str.354, ptr @.compoundliteral.355, i8 1, i32 0, i32 0, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 268, i8 7, i8 3, ptr null }, %struct.rockchip_clk_branch { i32 114, i32 6, ptr @.str.356, ptr @.compoundliteral.357, i8 1, i32 0, i32 448, i8 0, i8 0, i8 0, i32 0, i8 1, i8 0, i8 0, ptr null, i32 0, i8 0, i8 0, ptr null }, %struct.rockchip_clk_branch { i32 118, i32 6, ptr @.str.358, ptr @.compoundliteral.359, i8 1, i32 0, i32 452, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 0, i8 0, i8 0, ptr null }, %struct.rockchip_clk_branch { i32 115, i32 6, ptr @.str.360, ptr @.compoundliteral.361, i8 1, i32 0, i32 456, i8 0, i8 0, i8 0, i32 0, i8 1, i8 0, i8 0, ptr null, i32 0, i8 0, i8 0, ptr null }, %struct.rockchip_clk_branch { i32 119, i32 6, ptr @.str.362, ptr @.compoundliteral.363, i8 1, i32 0, i32 460, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 0, i8 0, i8 0, ptr null }, %struct.rockchip_clk_branch { i32 117, i32 6, ptr @.str.364, ptr @.compoundliteral.365, i8 1, i32 0, i32 472, i8 0, i8 0, i8 0, i32 0, i8 1, i8 0, i8 0, ptr null, i32 0, i8 0, i8 0, ptr null }, %struct.rockchip_clk_branch { i32 121, i32 6, ptr @.str.366, ptr @.compoundliteral.367, i8 1, i32 0, i32 476, i8 0, i8 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i32 0, i8 0, i8 0, ptr null }], section ".init.data", align 4
@rk3228_critical_clocks = internal constant [32 x ptr] [ptr @.str.41, ptr @.str.47, ptr @.str.43, ptr @.str.85, ptr @.str.83, ptr @.str.81, ptr @.str.182, ptr @.str.186, ptr @.str.190, ptr @.str.194, ptr @.str.202, ptr @.str.204, ptr @.str.206, ptr @.str.232, ptr @.str.236, ptr @.str.244, ptr @.str.242, ptr @.str.254, ptr @.str.256, ptr @.str.258, ptr @.str.264, ptr @.str.280, ptr @.str.282, ptr @.str.284, ptr @.str.300, ptr @.str.330, ptr @.str.332, ptr @.str.338, ptr @.str.342, ptr @.str.346, ptr @.str.350, ptr @.str.354], section ".init.rodata", align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"armclk\00", align 1
@mux_armclk_p = internal constant [3 x ptr] [ptr @.str.23, ptr @.str.25, ptr @.str.21], section ".init.rodata", align 4
@rk3228_cpuclk_data = internal constant %struct.rockchip_cpuclk_reg_data { [4 x i32] [i32 68, i32 0, i32 0, i32 0], [4 x i8] zeroinitializer, [4 x i32] [i32 31, i32 0, i32 0, i32 0], i32 1, i8 1, i8 0, i8 6, i32 1 }, align 4
@rk3228_cpuclk_rates = internal global [20 x %struct.rockchip_cpuclk_rate_table] [%struct.rockchip_cpuclk_rate_table { i32 1800000000, [5 x %struct.rockchip_cpuclk_clksel] [%struct.rockchip_cpuclk_clksel { i32 72, i32 8323095 }, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer] }, %struct.rockchip_cpuclk_rate_table { i32 1704000000, [5 x %struct.rockchip_cpuclk_clksel] [%struct.rockchip_cpuclk_clksel { i32 72, i32 8323095 }, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer] }, %struct.rockchip_cpuclk_rate_table { i32 1608000000, [5 x %struct.rockchip_cpuclk_clksel] [%struct.rockchip_cpuclk_clksel { i32 72, i32 8323095 }, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer] }, %struct.rockchip_cpuclk_rate_table { i32 1512000000, [5 x %struct.rockchip_cpuclk_clksel] [%struct.rockchip_cpuclk_clksel { i32 72, i32 8323095 }, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer] }, %struct.rockchip_cpuclk_rate_table { i32 1488000000, [5 x %struct.rockchip_cpuclk_clksel] [%struct.rockchip_cpuclk_clksel { i32 72, i32 8323093 }, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer] }, %struct.rockchip_cpuclk_rate_table { i32 1464000000, [5 x %struct.rockchip_cpuclk_clksel] [%struct.rockchip_cpuclk_clksel { i32 72, i32 8323093 }, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer] }, %struct.rockchip_cpuclk_rate_table { i32 1416000000, [5 x %struct.rockchip_cpuclk_clksel] [%struct.rockchip_cpuclk_clksel { i32 72, i32 8323093 }, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer] }, %struct.rockchip_cpuclk_rate_table { i32 1392000000, [5 x %struct.rockchip_cpuclk_clksel] [%struct.rockchip_cpuclk_clksel { i32 72, i32 8323093 }, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer] }, %struct.rockchip_cpuclk_rate_table { i32 1296000000, [5 x %struct.rockchip_cpuclk_clksel] [%struct.rockchip_cpuclk_clksel { i32 72, i32 8323093 }, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer] }, %struct.rockchip_cpuclk_rate_table { i32 1200000000, [5 x %struct.rockchip_cpuclk_clksel] [%struct.rockchip_cpuclk_clksel { i32 72, i32 8323093 }, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer] }, %struct.rockchip_cpuclk_rate_table { i32 1104000000, [5 x %struct.rockchip_cpuclk_clksel] [%struct.rockchip_cpuclk_clksel { i32 72, i32 8323093 }, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer] }, %struct.rockchip_cpuclk_rate_table { i32 1008000000, [5 x %struct.rockchip_cpuclk_clksel] [%struct.rockchip_cpuclk_clksel { i32 72, i32 8323093 }, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer] }, %struct.rockchip_cpuclk_rate_table { i32 912000000, [5 x %struct.rockchip_cpuclk_clksel] [%struct.rockchip_cpuclk_clksel { i32 72, i32 8323093 }, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer] }, %struct.rockchip_cpuclk_rate_table { i32 816000000, [5 x %struct.rockchip_cpuclk_clksel] [%struct.rockchip_cpuclk_clksel { i32 72, i32 8323091 }, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer] }, %struct.rockchip_cpuclk_rate_table { i32 696000000, [5 x %struct.rockchip_cpuclk_clksel] [%struct.rockchip_cpuclk_clksel { i32 72, i32 8323091 }, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer] }, %struct.rockchip_cpuclk_rate_table { i32 600000000, [5 x %struct.rockchip_cpuclk_clksel] [%struct.rockchip_cpuclk_clksel { i32 72, i32 8323091 }, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer] }, %struct.rockchip_cpuclk_rate_table { i32 408000000, [5 x %struct.rockchip_cpuclk_clksel] [%struct.rockchip_cpuclk_clksel { i32 72, i32 8323089 }, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer] }, %struct.rockchip_cpuclk_rate_table { i32 312000000, [5 x %struct.rockchip_cpuclk_clksel] [%struct.rockchip_cpuclk_clksel { i32 72, i32 8323089 }, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer] }, %struct.rockchip_cpuclk_rate_table { i32 216000000, [5 x %struct.rockchip_cpuclk_clksel] [%struct.rockchip_cpuclk_clksel { i32 72, i32 8323089 }, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer] }, %struct.rockchip_cpuclk_rate_table { i32 96000000, [5 x %struct.rockchip_cpuclk_clksel] [%struct.rockchip_cpuclk_clksel { i32 72, i32 8323089 }, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer, %struct.rockchip_cpuclk_clksel zeroinitializer] }], section ".init.data", align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"apll\00", align 1
@mux_pll_p = internal constant [2 x ptr] [ptr @.str.7, ptr @.str.8], section ".init.rodata", align 4
@rk3228_pll_rates = internal global [43 x %struct.rockchip_pll_rate_table] [%struct.rockchip_pll_rate_table { i32 1608000000, %union.anon.4 { %struct.anon.6 { i32 67, i32 1, i32 1, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 1584000000, %union.anon.4 { %struct.anon.6 { i32 66, i32 1, i32 1, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 1560000000, %union.anon.4 { %struct.anon.6 { i32 65, i32 1, i32 1, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 1536000000, %union.anon.4 { %struct.anon.6 { i32 64, i32 1, i32 1, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 1512000000, %union.anon.4 { %struct.anon.6 { i32 63, i32 1, i32 1, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 1488000000, %union.anon.4 { %struct.anon.6 { i32 62, i32 1, i32 1, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 1464000000, %union.anon.4 { %struct.anon.6 { i32 61, i32 1, i32 1, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 1440000000, %union.anon.4 { %struct.anon.6 { i32 60, i32 1, i32 1, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 1416000000, %union.anon.4 { %struct.anon.6 { i32 59, i32 1, i32 1, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 1392000000, %union.anon.4 { %struct.anon.6 { i32 58, i32 1, i32 1, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 1368000000, %union.anon.4 { %struct.anon.6 { i32 57, i32 1, i32 1, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 1344000000, %union.anon.4 { %struct.anon.6 { i32 56, i32 1, i32 1, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 1320000000, %union.anon.4 { %struct.anon.6 { i32 55, i32 1, i32 1, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 1296000000, %union.anon.4 { %struct.anon.6 { i32 54, i32 1, i32 1, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 1272000000, %union.anon.4 { %struct.anon.6 { i32 53, i32 1, i32 1, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 1248000000, %union.anon.4 { %struct.anon.6 { i32 52, i32 1, i32 1, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 1200000000, %union.anon.4 { %struct.anon.6 { i32 50, i32 1, i32 1, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 1188000000, %union.anon.4 { %struct.anon.6 { i32 99, i32 1, i32 2, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 1104000000, %union.anon.4 { %struct.anon.6 { i32 46, i32 1, i32 1, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 1100000000, %union.anon.4 { %struct.anon.6 { i32 550, i32 1, i32 12, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 1008000000, %union.anon.4 { %struct.anon.6 { i32 84, i32 2, i32 1, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 1000000000, %union.anon.4 { %struct.anon.6 { i32 500, i32 2, i32 6, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 984000000, %union.anon.4 { %struct.anon.6 { i32 82, i32 2, i32 1, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 960000000, %union.anon.4 { %struct.anon.6 { i32 80, i32 2, i32 1, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 936000000, %union.anon.4 { %struct.anon.6 { i32 78, i32 2, i32 1, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 912000000, %union.anon.4 { %struct.anon.6 { i32 76, i32 2, i32 1, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 900000000, %union.anon.4 { %struct.anon.6 { i32 300, i32 2, i32 4, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 888000000, %union.anon.4 { %struct.anon.6 { i32 74, i32 2, i32 1, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 864000000, %union.anon.4 { %struct.anon.6 { i32 72, i32 2, i32 1, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 840000000, %union.anon.4 { %struct.anon.6 { i32 70, i32 2, i32 1, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 816000000, %union.anon.4 { %struct.anon.6 { i32 68, i32 2, i32 1, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 800000000, %union.anon.4 { %struct.anon.6 { i32 400, i32 2, i32 6, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 700000000, %union.anon.4 { %struct.anon.6 { i32 350, i32 2, i32 6, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 696000000, %union.anon.4 { %struct.anon.6 { i32 58, i32 2, i32 1, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 600000000, %union.anon.4 { %struct.anon.6 { i32 75, i32 3, i32 1, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 594000000, %union.anon.4 { %struct.anon.6 { i32 99, i32 2, i32 2, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 504000000, %union.anon.4 { %struct.anon.6 { i32 63, i32 3, i32 1, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 500000000, %union.anon.4 { %struct.anon.6 { i32 250, i32 2, i32 6, i32 1, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 408000000, %union.anon.4 { %struct.anon.6 { i32 68, i32 2, i32 1, i32 2, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 312000000, %union.anon.4 { %struct.anon.6 { i32 52, i32 2, i32 1, i32 2, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 216000000, %union.anon.4 { %struct.anon.6 { i32 72, i32 4, i32 1, i32 2, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table { i32 96000000, %union.anon.4 { %struct.anon.6 { i32 64, i32 4, i32 1, i32 4, i32 1, i32 0 } } }, %struct.rockchip_pll_rate_table zeroinitializer], align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"dpll\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"cpll\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"gpll\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"clk_24m\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"xin24m\00", align 1
@.compoundliteral = internal global [1 x ptr] [ptr @.str.8], align 4
@.str.9 = private unnamed_addr constant [9 x i8] c"apll_ddr\00", align 1
@.compoundliteral.10 = internal global [1 x ptr] [ptr @.str.3], align 4
@.str.11 = private unnamed_addr constant [9 x i8] c"dpll_ddr\00", align 1
@.compoundliteral.12 = internal global [1 x ptr] [ptr @.str.4], align 4
@.str.13 = private unnamed_addr constant [9 x i8] c"gpll_ddr\00", align 1
@.compoundliteral.14 = internal global [1 x ptr] [ptr @.str.6], align 4
@.str.15 = private unnamed_addr constant [9 x i8] c"ddrphy4x\00", align 1
@mux_ddrphy_p = internal constant [3 x ptr] [ptr @.str.11, ptr @.str.13, ptr @.str.9], section ".init.rodata", align 4
@.str.16 = private unnamed_addr constant [5 x i8] c"ddrc\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"ddrphy_pre\00", align 1
@.compoundliteral.18 = internal global [1 x ptr] [ptr @.str.17], align 4
@.str.19 = private unnamed_addr constant [7 x i8] c"ddrphy\00", align 1
@.compoundliteral.20 = internal global [1 x ptr] [ptr @.str.15], align 4
@.str.21 = private unnamed_addr constant [10 x i8] c"dpll_core\00", align 1
@.compoundliteral.22 = internal global [1 x ptr] [ptr @.str.4], align 4
@.str.23 = private unnamed_addr constant [10 x i8] c"apll_core\00", align 1
@.compoundliteral.24 = internal global [1 x ptr] [ptr @.str.3], align 4
@.str.25 = private unnamed_addr constant [10 x i8] c"gpll_core\00", align 1
@.compoundliteral.26 = internal global [1 x ptr] [ptr @.str.6], align 4
@.str.27 = private unnamed_addr constant [9 x i8] c"pclk_dbg\00", align 1
@.compoundliteral.28 = internal global [1 x ptr] [ptr @.str.2], align 4
@.str.29 = private unnamed_addr constant [8 x i8] c"armcore\00", align 1
@.compoundliteral.30 = internal global [1 x ptr] [ptr @.str.2], align 4
@.str.31 = private unnamed_addr constant [8 x i8] c"hdmiphy\00", align 1
@mux_hdmiphy_p = internal constant [2 x ptr] [ptr @.str.368, ptr @.str.8], section ".init.rodata", align 4
@.str.32 = private unnamed_addr constant [12 x i8] c"usb480m_phy\00", align 1
@mux_usb480m_phy_p = internal constant [2 x ptr] [ptr @.str.369, ptr @.str.370], section ".init.rodata", align 4
@.str.33 = private unnamed_addr constant [8 x i8] c"usb480m\00", align 1
@mux_usb480m_p = internal constant [2 x ptr] [ptr @.str.32, ptr @.str.8], section ".init.rodata", align 4
@.str.34 = private unnamed_addr constant [17 x i8] c"hdmiphy_aclk_cpu\00", align 1
@.compoundliteral.35 = internal global [1 x ptr] [ptr @.str.31], align 4
@.str.36 = private unnamed_addr constant [14 x i8] c"gpll_aclk_cpu\00", align 1
@.compoundliteral.37 = internal global [1 x ptr] [ptr @.str.6], align 4
@.str.38 = private unnamed_addr constant [14 x i8] c"cpll_aclk_cpu\00", align 1
@.compoundliteral.39 = internal global [1 x ptr] [ptr @.str.5], align 4
@.str.40 = private unnamed_addr constant [13 x i8] c"aclk_cpu_src\00", align 1
@mux_aclk_cpu_src_p = internal constant [3 x ptr] [ptr @.str.38, ptr @.str.36, ptr @.str.34], section ".init.rodata", align 4
@.str.41 = private unnamed_addr constant [9 x i8] c"aclk_cpu\00", align 1
@.compoundliteral.42 = internal global [1 x ptr] [ptr @.str.40], align 4
@.str.43 = private unnamed_addr constant [9 x i8] c"hclk_cpu\00", align 1
@.compoundliteral.44 = internal global [1 x ptr] [ptr @.str.40], align 4
@.str.45 = private unnamed_addr constant [13 x i8] c"pclk_bus_src\00", align 1
@.compoundliteral.46 = internal global [1 x ptr] [ptr @.str.40], align 4
@.str.47 = private unnamed_addr constant [9 x i8] c"pclk_cpu\00", align 1
@.compoundliteral.48 = internal global [1 x ptr] [ptr @.str.45], align 4
@.str.49 = private unnamed_addr constant [13 x i8] c"pclk_phy_pre\00", align 1
@.compoundliteral.50 = internal global [1 x ptr] [ptr @.str.45], align 4
@.str.51 = private unnamed_addr constant [13 x i8] c"pclk_ddr_pre\00", align 1
@.compoundliteral.52 = internal global [1 x ptr] [ptr @.str.45], align 4
@.str.53 = private unnamed_addr constant [13 x i8] c"aclk_vpu_pre\00", align 1
@mux_pll_src_4plls_p = internal constant [4 x ptr] [ptr @.str.5, ptr @.str.6, ptr @.str.31, ptr @.str.33], section ".init.rodata", align 4
@.str.54 = private unnamed_addr constant [13 x i8] c"hclk_vpu_pre\00", align 1
@.compoundliteral.55 = internal global [1 x ptr] [ptr @.str.53], align 4
@.str.56 = private unnamed_addr constant [16 x i8] c"aclk_rkvdec_pre\00", align 1
@.str.57 = private unnamed_addr constant [16 x i8] c"hclk_rkvdec_pre\00", align 1
@.compoundliteral.58 = internal global [1 x ptr] [ptr @.str.56], align 4
@.str.59 = private unnamed_addr constant [16 x i8] c"sclk_vdec_cabac\00", align 1
@.str.60 = private unnamed_addr constant [15 x i8] c"sclk_vdec_core\00", align 1
@.str.61 = private unnamed_addr constant [13 x i8] c"aclk_iep_pre\00", align 1
@.str.62 = private unnamed_addr constant [13 x i8] c"hclk_vio_pre\00", align 1
@.compoundliteral.63 = internal global [1 x ptr] [ptr @.str.61], align 4
@.str.64 = private unnamed_addr constant [14 x i8] c"aclk_hdcp_pre\00", align 1
@.str.65 = private unnamed_addr constant [13 x i8] c"sclk_rga_src\00", align 1
@.str.66 = private unnamed_addr constant [13 x i8] c"aclk_rga_pre\00", align 1
@.compoundliteral.67 = internal global [1 x ptr] [ptr @.str.65], align 4
@.str.68 = private unnamed_addr constant [9 x i8] c"sclk_rga\00", align 1
@mux_sclk_rga_p = internal constant [3 x ptr] [ptr @.str.6, ptr @.str.5, ptr @.str.65], section ".init.rodata", align 4
@.str.69 = private unnamed_addr constant [13 x i8] c"aclk_vop_pre\00", align 1
@.str.70 = private unnamed_addr constant [10 x i8] c"sclk_hdcp\00", align 1
@mux_pll_src_3plls_p = internal constant [3 x ptr] [ptr @.str.5, ptr @.str.6, ptr @.str.31], section ".init.rodata", align 4
@.str.71 = private unnamed_addr constant [15 x i8] c"sclk_hdmi_hdcp\00", align 1
@.compoundliteral.72 = internal global [1 x ptr] [ptr @.str.8], align 4
@.str.73 = private unnamed_addr constant [14 x i8] c"sclk_hdmi_cec\00", align 1
@mux_sclk_hdmi_cec_p = internal constant [3 x ptr] [ptr @.str.5, ptr @.str.6, ptr @.str.8], section ".init.rodata", align 4
@.str.74 = private unnamed_addr constant [10 x i8] c"cpll_peri\00", align 1
@.compoundliteral.75 = internal global [1 x ptr] [ptr @.str.5], align 4
@.str.76 = private unnamed_addr constant [10 x i8] c"gpll_peri\00", align 1
@.compoundliteral.77 = internal global [1 x ptr] [ptr @.str.6], align 4
@.str.78 = private unnamed_addr constant [13 x i8] c"hdmiphy_peri\00", align 1
@.compoundliteral.79 = internal global [1 x ptr] [ptr @.str.31], align 4
@.str.80 = private unnamed_addr constant [14 x i8] c"aclk_peri_src\00", align 1
@mux_aclk_peri_src_p = internal constant [3 x ptr] [ptr @.str.74, ptr @.str.76, ptr @.str.78], section ".init.rodata", align 4
@.str.81 = private unnamed_addr constant [10 x i8] c"pclk_peri\00", align 1
@.compoundliteral.82 = internal global [1 x ptr] [ptr @.str.80], align 4
@.str.83 = private unnamed_addr constant [10 x i8] c"hclk_peri\00", align 1
@.compoundliteral.84 = internal global [1 x ptr] [ptr @.str.80], align 4
@.str.85 = private unnamed_addr constant [10 x i8] c"aclk_peri\00", align 1
@.compoundliteral.86 = internal global [1 x ptr] [ptr @.str.80], align 4
@.str.87 = private unnamed_addr constant [12 x i8] c"sclk_timer0\00", align 1
@.compoundliteral.88 = internal global [1 x ptr] [ptr @.str.8], align 4
@.str.89 = private unnamed_addr constant [12 x i8] c"sclk_timer1\00", align 1
@.compoundliteral.90 = internal global [1 x ptr] [ptr @.str.8], align 4
@.str.91 = private unnamed_addr constant [12 x i8] c"sclk_timer2\00", align 1
@.compoundliteral.92 = internal global [1 x ptr] [ptr @.str.8], align 4
@.str.93 = private unnamed_addr constant [12 x i8] c"sclk_timer3\00", align 1
@.compoundliteral.94 = internal global [1 x ptr] [ptr @.str.8], align 4
@.str.95 = private unnamed_addr constant [12 x i8] c"sclk_timer4\00", align 1
@.compoundliteral.96 = internal global [1 x ptr] [ptr @.str.8], align 4
@.str.97 = private unnamed_addr constant [12 x i8] c"sclk_timer5\00", align 1
@.compoundliteral.98 = internal global [1 x ptr] [ptr @.str.8], align 4
@.str.99 = private unnamed_addr constant [12 x i8] c"sclk_crypto\00", align 1
@mux_pll_src_2plls_p = internal constant [2 x ptr] [ptr @.str.5, ptr @.str.6], section ".init.rodata", align 4
@.str.100 = private unnamed_addr constant [9 x i8] c"sclk_tsp\00", align 1
@.str.101 = private unnamed_addr constant [11 x i8] c"sclk_hsadc\00", align 1
@.str.102 = private unnamed_addr constant [10 x i8] c"ext_hsadc\00", align 1
@.compoundliteral.103 = internal global [1 x ptr] [ptr @.str.102], align 4
@.str.104 = private unnamed_addr constant [10 x i8] c"sclk_wifi\00", align 1
@mux_pll_src_cpll_gpll_usb480m_p = internal constant [3 x ptr] [ptr @.str.5, ptr @.str.6, ptr @.str.33], section ".init.rodata", align 4
@.str.105 = private unnamed_addr constant [11 x i8] c"sclk_sdmmc\00", align 1
@mux_mmc_src_p = internal constant [4 x ptr] [ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.33], section ".init.rodata", align 4
@.str.106 = private unnamed_addr constant [14 x i8] c"sclk_sdio_src\00", align 1
@.str.107 = private unnamed_addr constant [10 x i8] c"sclk_sdio\00", align 1
@.compoundliteral.108 = internal global [1 x ptr] [ptr @.str.106], align 4
@.str.109 = private unnamed_addr constant [14 x i8] c"sclk_emmc_src\00", align 1
@.str.110 = private unnamed_addr constant [10 x i8] c"sclk_emmc\00", align 1
@.compoundliteral.111 = internal global [1 x ptr] [ptr @.str.109], align 4
@.str.112 = private unnamed_addr constant [9 x i8] c"gpll_vop\00", align 1
@.compoundliteral.113 = internal global [1 x ptr] [ptr @.str.6], align 4
@.str.114 = private unnamed_addr constant [9 x i8] c"cpll_vop\00", align 1
@.compoundliteral.115 = internal global [1 x ptr] [ptr @.str.5], align 4
@.str.116 = private unnamed_addr constant [13 x i8] c"sclk_vop_src\00", align 1
@mux_sclk_vop_src_p = internal constant [2 x ptr] [ptr @.str.112, ptr @.str.114], section ".init.rodata", align 4
@.str.117 = private unnamed_addr constant [13 x i8] c"dclk_hdmiphy\00", align 1
@.compoundliteral.118 = internal global [1 x ptr] [ptr @.str.116], align 4
@.str.119 = private unnamed_addr constant [13 x i8] c"sclk_vop_pre\00", align 1
@.compoundliteral.120 = internal global [1 x ptr] [ptr @.str.116], align 4
@.str.121 = private unnamed_addr constant [9 x i8] c"dclk_vop\00", align 1
@mux_dclk_vop_p = internal constant [2 x ptr] [ptr @.str.31, ptr @.str.119], section ".init.rodata", align 4
@.str.122 = private unnamed_addr constant [7 x i8] c"xin12m\00", align 1
@.compoundliteral.123 = internal global [1 x ptr] [ptr @.str.8], align 4
@.str.124 = private unnamed_addr constant [9 x i8] c"i2s0_src\00", align 1
@.str.125 = private unnamed_addr constant [10 x i8] c"i2s0_frac\00", align 1
@.compoundliteral.126 = internal global [1 x ptr] [ptr @.str.124], align 4
@rk3228_i2s0_fracmux = internal global %struct.rockchip_clk_branch { i32 0, i32 1, ptr @.str.128, ptr @mux_i2s0_p, i8 4, i32 4, i32 104, i8 8, i8 2, i8 4, i32 0, i8 0, i8 0, i8 0, ptr null, i32 -1, i8 0, i8 0, ptr null }, section ".init.data", align 4
@.str.127 = private unnamed_addr constant [10 x i8] c"sclk_i2s0\00", align 1
@.str.128 = private unnamed_addr constant [9 x i8] c"i2s0_pre\00", align 1
@.compoundliteral.129 = internal global [1 x ptr] [ptr @.str.128], align 4
@.str.130 = private unnamed_addr constant [9 x i8] c"i2s1_src\00", align 1
@.str.131 = private unnamed_addr constant [10 x i8] c"i2s1_frac\00", align 1
@.compoundliteral.132 = internal global [1 x ptr] [ptr @.str.130], align 4
@rk3228_i2s1_fracmux = internal global %struct.rockchip_clk_branch { i32 0, i32 1, ptr @.str.134, ptr @mux_i2s1_pre_p, i8 4, i32 4, i32 80, i8 8, i8 2, i8 4, i32 0, i8 0, i8 0, i8 0, ptr null, i32 -1, i8 0, i8 0, ptr null }, section ".init.data", align 4
@.str.133 = private unnamed_addr constant [10 x i8] c"sclk_i2s1\00", align 1
@.str.134 = private unnamed_addr constant [9 x i8] c"i2s1_pre\00", align 1
@.compoundliteral.135 = internal global [1 x ptr] [ptr @.str.134], align 4
@.str.136 = private unnamed_addr constant [8 x i8] c"i2s_out\00", align 1
@mux_i2s_out_p = internal constant [2 x ptr] [ptr @.str.134, ptr @.str.122], section ".init.rodata", align 4
@.str.137 = private unnamed_addr constant [9 x i8] c"i2s2_src\00", align 1
@.str.138 = private unnamed_addr constant [10 x i8] c"i2s2_frac\00", align 1
@.compoundliteral.139 = internal global [1 x ptr] [ptr @.str.137], align 4
@rk3228_i2s2_fracmux = internal global %struct.rockchip_clk_branch { i32 0, i32 1, ptr @.str.141, ptr @mux_i2s2_p, i8 3, i32 4, i32 132, i8 8, i8 2, i8 4, i32 0, i8 0, i8 0, i8 0, ptr null, i32 -1, i8 0, i8 0, ptr null }, section ".init.data", align 4
@.str.140 = private unnamed_addr constant [10 x i8] c"sclk_i2s2\00", align 1
@.str.141 = private unnamed_addr constant [9 x i8] c"i2s2_pre\00", align 1
@.compoundliteral.142 = internal global [1 x ptr] [ptr @.str.141], align 4
@.str.143 = private unnamed_addr constant [15 x i8] c"sclk_spdif_src\00", align 1
@.str.144 = private unnamed_addr constant [11 x i8] c"spdif_frac\00", align 1
@.compoundliteral.145 = internal global [1 x ptr] [ptr @.str.143], align 4
@rk3228_spdif_fracmux = internal global %struct.rockchip_clk_branch { i32 83, i32 1, ptr @.str.372, ptr @mux_sclk_spdif_p, i8 3, i32 4, i32 92, i8 8, i8 2, i8 4, i32 0, i8 0, i8 0, i8 0, ptr null, i32 -1, i8 0, i8 0, ptr null }, section ".init.data", align 4
@.str.146 = private unnamed_addr constant [5 x i8] c"jtag\00", align 1
@.str.147 = private unnamed_addr constant [9 x i8] c"ext_jtag\00", align 1
@.compoundliteral.148 = internal global [1 x ptr] [ptr @.str.147], align 4
@.str.149 = private unnamed_addr constant [13 x i8] c"sclk_otgphy0\00", align 1
@.compoundliteral.150 = internal global [1 x ptr] [ptr @.str.8], align 4
@.str.151 = private unnamed_addr constant [13 x i8] c"sclk_otgphy1\00", align 1
@.compoundliteral.152 = internal global [1 x ptr] [ptr @.str.8], align 4
@.str.153 = private unnamed_addr constant [11 x i8] c"sclk_tsadc\00", align 1
@.compoundliteral.154 = internal global [1 x ptr] [ptr @.str.8], align 4
@.str.155 = private unnamed_addr constant [13 x i8] c"aclk_gpu_pre\00", align 1
@.str.156 = private unnamed_addr constant [10 x i8] c"sclk_spi0\00", align 1
@.str.157 = private unnamed_addr constant [10 x i8] c"uart0_src\00", align 1
@.str.158 = private unnamed_addr constant [10 x i8] c"uart1_src\00", align 1
@.str.159 = private unnamed_addr constant [10 x i8] c"uart2_src\00", align 1
@.str.160 = private unnamed_addr constant [11 x i8] c"uart0_frac\00", align 1
@.compoundliteral.161 = internal global [1 x ptr] [ptr @.str.157], align 4
@rk3228_uart0_fracmux = internal global %struct.rockchip_clk_branch { i32 77, i32 1, ptr @.str.373, ptr @mux_uart0_p, i8 3, i32 4, i32 120, i8 8, i8 2, i8 4, i32 0, i8 0, i8 0, i8 0, ptr null, i32 -1, i8 0, i8 0, ptr null }, section ".init.data", align 4
@.str.162 = private unnamed_addr constant [11 x i8] c"uart1_frac\00", align 1
@.compoundliteral.163 = internal global [1 x ptr] [ptr @.str.158], align 4
@rk3228_uart1_fracmux = internal global %struct.rockchip_clk_branch { i32 78, i32 1, ptr @.str.374, ptr @mux_uart1_p, i8 3, i32 4, i32 124, i8 8, i8 2, i8 4, i32 0, i8 0, i8 0, i8 0, ptr null, i32 -1, i8 0, i8 0, ptr null }, section ".init.data", align 4
@.str.164 = private unnamed_addr constant [11 x i8] c"uart2_frac\00", align 1
@.compoundliteral.165 = internal global [1 x ptr] [ptr @.str.159], align 4
@rk3228_uart2_fracmux = internal global %struct.rockchip_clk_branch { i32 79, i32 1, ptr @.str.375, ptr @mux_uart2_p, i8 3, i32 4, i32 128, i8 8, i8 2, i8 4, i32 0, i8 0, i8 0, i8 0, ptr null, i32 -1, i8 0, i8 0, ptr null }, section ".init.data", align 4
@.str.166 = private unnamed_addr constant [11 x i8] c"sclk_nandc\00", align 1
@.str.167 = private unnamed_addr constant [14 x i8] c"sclk_gmac_src\00", align 1
@.str.168 = private unnamed_addr constant [16 x i8] c"sclk_mac_extclk\00", align 1
@mux_sclk_mac_extclk_p = internal constant [2 x ptr] [ptr @.str.376, ptr @.str.377], section ".init.rodata", align 4
@.str.169 = private unnamed_addr constant [14 x i8] c"sclk_gmac_pre\00", align 1
@mux_sclk_gmac_pre_p = internal constant [2 x ptr] [ptr @.str.167, ptr @.str.168], section ".init.rodata", align 4
@.str.170 = private unnamed_addr constant [16 x i8] c"sclk_mac_refout\00", align 1
@.compoundliteral.171 = internal global [1 x ptr] [ptr @.str.169], align 4
@.str.172 = private unnamed_addr constant [13 x i8] c"sclk_mac_ref\00", align 1
@.compoundliteral.173 = internal global [1 x ptr] [ptr @.str.169], align 4
@.str.174 = private unnamed_addr constant [12 x i8] c"sclk_mac_rx\00", align 1
@.compoundliteral.175 = internal global [1 x ptr] [ptr @.str.169], align 4
@.str.176 = private unnamed_addr constant [12 x i8] c"sclk_mac_tx\00", align 1
@.compoundliteral.177 = internal global [1 x ptr] [ptr @.str.169], align 4
@.str.178 = private unnamed_addr constant [12 x i8] c"sclk_macphy\00", align 1
@mux_sclk_macphy_p = internal constant [2 x ptr] [ptr @.str.167, ptr @.str.376], section ".init.rodata", align 4
@.str.179 = private unnamed_addr constant [14 x i8] c"sclk_gmac_out\00", align 1
@.str.180 = private unnamed_addr constant [9 x i8] c"aclk_rga\00", align 1
@.compoundliteral.181 = internal global [1 x ptr] [ptr @.str.66], align 4
@.str.182 = private unnamed_addr constant [13 x i8] c"aclk_rga_noc\00", align 1
@.compoundliteral.183 = internal global [1 x ptr] [ptr @.str.66], align 4
@.str.184 = private unnamed_addr constant [9 x i8] c"aclk_iep\00", align 1
@.compoundliteral.185 = internal global [1 x ptr] [ptr @.str.61], align 4
@.str.186 = private unnamed_addr constant [13 x i8] c"aclk_iep_noc\00", align 1
@.compoundliteral.187 = internal global [1 x ptr] [ptr @.str.61], align 4
@.str.188 = private unnamed_addr constant [9 x i8] c"aclk_vop\00", align 1
@.compoundliteral.189 = internal global [1 x ptr] [ptr @.str.69], align 4
@.str.190 = private unnamed_addr constant [13 x i8] c"aclk_vop_noc\00", align 1
@.compoundliteral.191 = internal global [1 x ptr] [ptr @.str.69], align 4
@.str.192 = private unnamed_addr constant [10 x i8] c"aclk_hdcp\00", align 1
@.compoundliteral.193 = internal global [1 x ptr] [ptr @.str.64], align 4
@.str.194 = private unnamed_addr constant [14 x i8] c"aclk_hdcp_noc\00", align 1
@.compoundliteral.195 = internal global [1 x ptr] [ptr @.str.64], align 4
@.str.196 = private unnamed_addr constant [9 x i8] c"hclk_rga\00", align 1
@.compoundliteral.197 = internal global [1 x ptr] [ptr @.str.62], align 4
@.str.198 = private unnamed_addr constant [9 x i8] c"hclk_iep\00", align 1
@.compoundliteral.199 = internal global [1 x ptr] [ptr @.str.62], align 4
@.str.200 = private unnamed_addr constant [9 x i8] c"hclk_vop\00", align 1
@.compoundliteral.201 = internal global [1 x ptr] [ptr @.str.62], align 4
@.str.202 = private unnamed_addr constant [18 x i8] c"hclk_vio_ahb_arbi\00", align 1
@.compoundliteral.203 = internal global [1 x ptr] [ptr @.str.62], align 4
@.str.204 = private unnamed_addr constant [13 x i8] c"hclk_vio_noc\00", align 1
@.compoundliteral.205 = internal global [1 x ptr] [ptr @.str.62], align 4
@.str.206 = private unnamed_addr constant [13 x i8] c"hclk_vop_noc\00", align 1
@.compoundliteral.207 = internal global [1 x ptr] [ptr @.str.62], align 4
@.str.208 = private unnamed_addr constant [13 x i8] c"hclk_vio_h2p\00", align 1
@.compoundliteral.209 = internal global [1 x ptr] [ptr @.str.62], align 4
@.str.210 = private unnamed_addr constant [14 x i8] c"hclk_hdcp_mmu\00", align 1
@.compoundliteral.211 = internal global [1 x ptr] [ptr @.str.62], align 4
@.str.212 = private unnamed_addr constant [15 x i8] c"pclk_hdmi_ctrl\00", align 1
@.compoundliteral.213 = internal global [1 x ptr] [ptr @.str.62], align 4
@.str.214 = private unnamed_addr constant [13 x i8] c"pclk_vio_h2p\00", align 1
@.compoundliteral.215 = internal global [1 x ptr] [ptr @.str.62], align 4
@.str.216 = private unnamed_addr constant [10 x i8] c"pclk_hdcp\00", align 1
@.compoundliteral.217 = internal global [1 x ptr] [ptr @.str.62], align 4
@.str.218 = private unnamed_addr constant [14 x i8] c"aclk_peri_noc\00", align 1
@.compoundliteral.219 = internal global [1 x ptr] [ptr @.str.85], align 4
@.str.220 = private unnamed_addr constant [10 x i8] c"aclk_gmac\00", align 1
@.compoundliteral.221 = internal global [1 x ptr] [ptr @.str.85], align 4
@.str.222 = private unnamed_addr constant [11 x i8] c"hclk_sdmmc\00", align 1
@.compoundliteral.223 = internal global [1 x ptr] [ptr @.str.83], align 4
@.str.224 = private unnamed_addr constant [10 x i8] c"hclk_sdio\00", align 1
@.compoundliteral.225 = internal global [1 x ptr] [ptr @.str.83], align 4
@.str.226 = private unnamed_addr constant [10 x i8] c"hclk_emmc\00", align 1
@.compoundliteral.227 = internal global [1 x ptr] [ptr @.str.83], align 4
@.str.228 = private unnamed_addr constant [11 x i8] c"hclk_nandc\00", align 1
@.compoundliteral.229 = internal global [1 x ptr] [ptr @.str.83], align 4
@.str.230 = private unnamed_addr constant [11 x i8] c"hclk_host0\00", align 1
@.compoundliteral.231 = internal global [1 x ptr] [ptr @.str.83], align 4
@.str.232 = private unnamed_addr constant [15 x i8] c"hclk_host0_arb\00", align 1
@.compoundliteral.233 = internal global [1 x ptr] [ptr @.str.83], align 4
@.str.234 = private unnamed_addr constant [11 x i8] c"hclk_host1\00", align 1
@.compoundliteral.235 = internal global [1 x ptr] [ptr @.str.83], align 4
@.str.236 = private unnamed_addr constant [15 x i8] c"hclk_host1_arb\00", align 1
@.compoundliteral.237 = internal global [1 x ptr] [ptr @.str.83], align 4
@.str.238 = private unnamed_addr constant [11 x i8] c"hclk_host2\00", align 1
@.compoundliteral.239 = internal global [1 x ptr] [ptr @.str.83], align 4
@.str.240 = private unnamed_addr constant [9 x i8] c"hclk_otg\00", align 1
@.compoundliteral.241 = internal global [1 x ptr] [ptr @.str.83], align 4
@.str.242 = private unnamed_addr constant [13 x i8] c"hclk_otg_pmu\00", align 1
@.compoundliteral.243 = internal global [1 x ptr] [ptr @.str.83], align 4
@.str.244 = private unnamed_addr constant [15 x i8] c"hclk_host2_arb\00", align 1
@.compoundliteral.245 = internal global [1 x ptr] [ptr @.str.83], align 4
@.str.246 = private unnamed_addr constant [14 x i8] c"hclk_peri_noc\00", align 1
@.compoundliteral.247 = internal global [1 x ptr] [ptr @.str.83], align 4
@.str.248 = private unnamed_addr constant [10 x i8] c"pclk_gmac\00", align 1
@.compoundliteral.249 = internal global [1 x ptr] [ptr @.str.81], align 4
@.str.250 = private unnamed_addr constant [14 x i8] c"pclk_peri_noc\00", align 1
@.compoundliteral.251 = internal global [1 x ptr] [ptr @.str.81], align 4
@.str.252 = private unnamed_addr constant [9 x i8] c"aclk_gpu\00", align 1
@.compoundliteral.253 = internal global [1 x ptr] [ptr @.str.155], align 4
@.str.254 = private unnamed_addr constant [13 x i8] c"aclk_gpu_noc\00", align 1
@.compoundliteral.255 = internal global [1 x ptr] [ptr @.str.155], align 4
@.str.256 = private unnamed_addr constant [19 x i8] c"sclk_initmem_mbist\00", align 1
@.compoundliteral.257 = internal global [1 x ptr] [ptr @.str.41], align 4
@.str.258 = private unnamed_addr constant [13 x i8] c"aclk_initmem\00", align 1
@.compoundliteral.259 = internal global [1 x ptr] [ptr @.str.41], align 4
@.str.260 = private unnamed_addr constant [14 x i8] c"aclk_dmac_bus\00", align 1
@.compoundliteral.261 = internal global [1 x ptr] [ptr @.str.41], align 4
@.str.262 = private unnamed_addr constant [13 x i8] c"aclk_bus_noc\00", align 1
@.compoundliteral.263 = internal global [1 x ptr] [ptr @.str.41], align 4
@.str.264 = private unnamed_addr constant [9 x i8] c"hclk_rom\00", align 1
@.compoundliteral.265 = internal global [1 x ptr] [ptr @.str.43], align 4
@.str.266 = private unnamed_addr constant [14 x i8] c"hclk_i2s0_8ch\00", align 1
@.compoundliteral.267 = internal global [1 x ptr] [ptr @.str.43], align 4
@.str.268 = private unnamed_addr constant [14 x i8] c"hclk_i2s1_8ch\00", align 1
@.compoundliteral.269 = internal global [1 x ptr] [ptr @.str.43], align 4
@.str.270 = private unnamed_addr constant [14 x i8] c"hclk_i2s2_2ch\00", align 1
@.compoundliteral.271 = internal global [1 x ptr] [ptr @.str.43], align 4
@.str.272 = private unnamed_addr constant [15 x i8] c"hclk_spdif_8ch\00", align 1
@.compoundliteral.273 = internal global [1 x ptr] [ptr @.str.43], align 4
@.str.274 = private unnamed_addr constant [9 x i8] c"hclk_tsp\00", align 1
@.compoundliteral.275 = internal global [1 x ptr] [ptr @.str.43], align 4
@.str.276 = private unnamed_addr constant [16 x i8] c"hclk_crypto_mst\00", align 1
@.compoundliteral.277 = internal global [1 x ptr] [ptr @.str.43], align 4
@.str.278 = private unnamed_addr constant [16 x i8] c"hclk_crypto_slv\00", align 1
@.compoundliteral.279 = internal global [1 x ptr] [ptr @.str.43], align 4
@.str.280 = private unnamed_addr constant [14 x i8] c"pclk_ddrupctl\00", align 1
@.compoundliteral.281 = internal global [1 x ptr] [ptr @.str.51], align 4
@.str.282 = private unnamed_addr constant [12 x i8] c"pclk_ddrmon\00", align 1
@.compoundliteral.283 = internal global [1 x ptr] [ptr @.str.51], align 4
@.str.284 = private unnamed_addr constant [14 x i8] c"pclk_msch_noc\00", align 1
@.compoundliteral.285 = internal global [1 x ptr] [ptr @.str.51], align 4
@.str.286 = private unnamed_addr constant [16 x i8] c"pclk_efuse_1024\00", align 1
@.compoundliteral.287 = internal global [1 x ptr] [ptr @.str.47], align 4
@.str.288 = private unnamed_addr constant [15 x i8] c"pclk_efuse_256\00", align 1
@.compoundliteral.289 = internal global [1 x ptr] [ptr @.str.47], align 4
@.str.290 = private unnamed_addr constant [10 x i8] c"pclk_i2c0\00", align 1
@.compoundliteral.291 = internal global [1 x ptr] [ptr @.str.47], align 4
@.str.292 = private unnamed_addr constant [10 x i8] c"pclk_i2c1\00", align 1
@.compoundliteral.293 = internal global [1 x ptr] [ptr @.str.47], align 4
@.str.294 = private unnamed_addr constant [10 x i8] c"pclk_i2c2\00", align 1
@.compoundliteral.295 = internal global [1 x ptr] [ptr @.str.47], align 4
@.str.296 = private unnamed_addr constant [10 x i8] c"pclk_i2c3\00", align 1
@.compoundliteral.297 = internal global [1 x ptr] [ptr @.str.47], align 4
@.str.298 = private unnamed_addr constant [12 x i8] c"pclk_timer0\00", align 1
@.compoundliteral.299 = internal global [1 x ptr] [ptr @.str.47], align 4
@.str.300 = private unnamed_addr constant [12 x i8] c"pclk_stimer\00", align 1
@.compoundliteral.301 = internal global [1 x ptr] [ptr @.str.47], align 4
@.str.302 = private unnamed_addr constant [10 x i8] c"pclk_spi0\00", align 1
@.compoundliteral.303 = internal global [1 x ptr] [ptr @.str.47], align 4
@.str.304 = private unnamed_addr constant [12 x i8] c"pclk_rk_pwm\00", align 1
@.compoundliteral.305 = internal global [1 x ptr] [ptr @.str.47], align 4
@.str.306 = private unnamed_addr constant [11 x i8] c"pclk_gpio0\00", align 1
@.compoundliteral.307 = internal global [1 x ptr] [ptr @.str.47], align 4
@.str.308 = private unnamed_addr constant [11 x i8] c"pclk_gpio1\00", align 1
@.compoundliteral.309 = internal global [1 x ptr] [ptr @.str.47], align 4
@.str.310 = private unnamed_addr constant [11 x i8] c"pclk_gpio2\00", align 1
@.compoundliteral.311 = internal global [1 x ptr] [ptr @.str.47], align 4
@.str.312 = private unnamed_addr constant [11 x i8] c"pclk_gpio3\00", align 1
@.compoundliteral.313 = internal global [1 x ptr] [ptr @.str.47], align 4
@.str.314 = private unnamed_addr constant [11 x i8] c"pclk_uart0\00", align 1
@.compoundliteral.315 = internal global [1 x ptr] [ptr @.str.47], align 4
@.str.316 = private unnamed_addr constant [11 x i8] c"pclk_uart1\00", align 1
@.compoundliteral.317 = internal global [1 x ptr] [ptr @.str.47], align 4
@.str.318 = private unnamed_addr constant [11 x i8] c"pclk_uart2\00", align 1
@.compoundliteral.319 = internal global [1 x ptr] [ptr @.str.47], align 4
@.str.320 = private unnamed_addr constant [11 x i8] c"pclk_tsadc\00", align 1
@.compoundliteral.321 = internal global [1 x ptr] [ptr @.str.47], align 4
@.str.322 = private unnamed_addr constant [9 x i8] c"pclk_grf\00", align 1
@.compoundliteral.323 = internal global [1 x ptr] [ptr @.str.47], align 4
@.str.324 = private unnamed_addr constant [9 x i8] c"pclk_cru\00", align 1
@.compoundliteral.325 = internal global [1 x ptr] [ptr @.str.47], align 4
@.str.326 = private unnamed_addr constant [10 x i8] c"pclk_sgrf\00", align 1
@.compoundliteral.327 = internal global [1 x ptr] [ptr @.str.47], align 4
@.str.328 = private unnamed_addr constant [9 x i8] c"pclk_sim\00", align 1
@.compoundliteral.329 = internal global [1 x ptr] [ptr @.str.47], align 4
@.str.330 = private unnamed_addr constant [12 x i8] c"pclk_ddrphy\00", align 1
@.compoundliteral.331 = internal global [1 x ptr] [ptr @.str.49], align 4
@.str.332 = private unnamed_addr constant [15 x i8] c"pclk_acodecphy\00", align 1
@.compoundliteral.333 = internal global [1 x ptr] [ptr @.str.49], align 4
@.str.334 = private unnamed_addr constant [13 x i8] c"pclk_hdmiphy\00", align 1
@.compoundliteral.335 = internal global [1 x ptr] [ptr @.str.49], align 4
@.str.336 = private unnamed_addr constant [13 x i8] c"pclk_vdacphy\00", align 1
@.compoundliteral.337 = internal global [1 x ptr] [ptr @.str.49], align 4
@.str.338 = private unnamed_addr constant [13 x i8] c"pclk_phy_noc\00", align 1
@.compoundliteral.339 = internal global [1 x ptr] [ptr @.str.49], align 4
@.str.340 = private unnamed_addr constant [9 x i8] c"aclk_vpu\00", align 1
@.compoundliteral.341 = internal global [1 x ptr] [ptr @.str.53], align 4
@.str.342 = private unnamed_addr constant [13 x i8] c"aclk_vpu_noc\00", align 1
@.compoundliteral.343 = internal global [1 x ptr] [ptr @.str.53], align 4
@.str.344 = private unnamed_addr constant [12 x i8] c"aclk_rkvdec\00", align 1
@.compoundliteral.345 = internal global [1 x ptr] [ptr @.str.56], align 4
@.str.346 = private unnamed_addr constant [16 x i8] c"aclk_rkvdec_noc\00", align 1
@.compoundliteral.347 = internal global [1 x ptr] [ptr @.str.56], align 4
@.str.348 = private unnamed_addr constant [9 x i8] c"hclk_vpu\00", align 1
@.compoundliteral.349 = internal global [1 x ptr] [ptr @.str.54], align 4
@.str.350 = private unnamed_addr constant [13 x i8] c"hclk_vpu_noc\00", align 1
@.compoundliteral.351 = internal global [1 x ptr] [ptr @.str.54], align 4
@.str.352 = private unnamed_addr constant [12 x i8] c"hclk_rkvdec\00", align 1
@.compoundliteral.353 = internal global [1 x ptr] [ptr @.str.57], align 4
@.str.354 = private unnamed_addr constant [16 x i8] c"hclk_rkvdec_noc\00", align 1
@.compoundliteral.355 = internal global [1 x ptr] [ptr @.str.57], align 4
@.str.356 = private unnamed_addr constant [10 x i8] c"sdmmc_drv\00", align 1
@.compoundliteral.357 = internal global [1 x ptr] [ptr @.str.105], align 4
@.str.358 = private unnamed_addr constant [13 x i8] c"sdmmc_sample\00", align 1
@.compoundliteral.359 = internal global [1 x ptr] [ptr @.str.105], align 4
@.str.360 = private unnamed_addr constant [9 x i8] c"sdio_drv\00", align 1
@.compoundliteral.361 = internal global [1 x ptr] [ptr @.str.107], align 4
@.str.362 = private unnamed_addr constant [12 x i8] c"sdio_sample\00", align 1
@.compoundliteral.363 = internal global [1 x ptr] [ptr @.str.107], align 4
@.str.364 = private unnamed_addr constant [9 x i8] c"emmc_drv\00", align 1
@.compoundliteral.365 = internal global [1 x ptr] [ptr @.str.110], align 4
@.str.366 = private unnamed_addr constant [12 x i8] c"emmc_sample\00", align 1
@.compoundliteral.367 = internal global [1 x ptr] [ptr @.str.110], align 4
@.str.368 = private unnamed_addr constant [12 x i8] c"hdmiphy_phy\00", align 1
@.str.369 = private unnamed_addr constant [13 x i8] c"usb480m_phy0\00", align 1
@.str.370 = private unnamed_addr constant [13 x i8] c"usb480m_phy1\00", align 1
@mux_i2s0_p = internal constant [4 x ptr] [ptr @.str.124, ptr @.str.125, ptr @.str.371, ptr @.str.122], section ".init.rodata", align 4
@.str.371 = private unnamed_addr constant [8 x i8] c"ext_i2s\00", align 1
@mux_i2s1_pre_p = internal constant [4 x ptr] [ptr @.str.130, ptr @.str.131, ptr @.str.371, ptr @.str.122], section ".init.rodata", align 4
@mux_i2s2_p = internal constant [3 x ptr] [ptr @.str.137, ptr @.str.138, ptr @.str.122], section ".init.rodata", align 4
@.str.372 = private unnamed_addr constant [11 x i8] c"sclk_spdif\00", align 1
@mux_sclk_spdif_p = internal constant [3 x ptr] [ptr @.str.143, ptr @.str.144, ptr @.str.122], section ".init.rodata", align 4
@.str.373 = private unnamed_addr constant [11 x i8] c"sclk_uart0\00", align 1
@mux_uart0_p = internal constant [3 x ptr] [ptr @.str.157, ptr @.str.160, ptr @.str.8], section ".init.rodata", align 4
@.str.374 = private unnamed_addr constant [11 x i8] c"sclk_uart1\00", align 1
@mux_uart1_p = internal constant [3 x ptr] [ptr @.str.158, ptr @.str.162, ptr @.str.8], section ".init.rodata", align 4
@.str.375 = private unnamed_addr constant [11 x i8] c"sclk_uart2\00", align 1
@mux_uart2_p = internal constant [3 x ptr] [ptr @.str.159, ptr @.str.164, ptr @.str.8], section ".init.rodata", align 4
@.str.376 = private unnamed_addr constant [9 x i8] c"ext_gmac\00", align 1
@.str.377 = private unnamed_addr constant [12 x i8] c"phy_50m_out\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__of_table_rk3228_cru], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @rk3228_clk_init(ptr noundef %0) #0 section ".init.text" {
  %2 = tail call ptr @of_iomap(ptr noundef %0, i32 noundef 0) #3
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.rk3228_clk_init) #4
  br label %13

6:                                                ; preds = %1
  %7 = tail call ptr @rockchip_clk_init(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 479) #3
  %8 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.rk3228_clk_init) #4
  tail call void @iounmap(ptr noundef nonnull %2) #3
  br label %13

11:                                               ; preds = %6
  tail call void @rockchip_clk_register_plls(ptr noundef %7, ptr noundef nonnull @rk3228_pll_clks, i32 noundef 4, i32 noundef 1152) #3
  tail call void @rockchip_clk_register_branches(ptr noundef %7, ptr noundef nonnull @rk3228_clk_branches, i32 noundef 198) #3
  tail call void @rockchip_clk_protect_critical(ptr noundef nonnull @rk3228_critical_clocks, i32 noundef 32) #3
  tail call void @rockchip_clk_register_armclk(ptr noundef %7, i32 noundef 5, ptr noundef nonnull @.str.2, ptr noundef nonnull @mux_armclk_p, i8 noundef zeroext 3, ptr noundef nonnull @rk3228_cpuclk_data, ptr noundef nonnull @rk3228_cpuclk_rates, i32 noundef 20) #3
  %12 = getelementptr i8, ptr %2, i32 272
  tail call void @rockchip_register_softrst(ptr noundef %0, i32 noundef 9, ptr noundef %12, i8 noundef zeroext 1) #3
  tail call void @rockchip_register_restart_notifier(ptr noundef %7, i32 noundef 496, ptr noundef null) #3
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
