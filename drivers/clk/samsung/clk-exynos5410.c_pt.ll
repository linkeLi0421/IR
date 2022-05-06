; ModuleID = '/llk/IR/drivers/clk/samsung/clk-exynos5410.c_pt.bc'
source_filename = "../drivers/clk/samsung/clk-exynos5410.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.samsung_pll_rate_table = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.samsung_pll_clock = type { i32, ptr, ptr, i32, i32, i32, i32, ptr }
%struct.samsung_cmu_info = type { ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, i32, ptr }
%struct.samsung_mux_clock = type { i32, ptr, ptr, i8, i32, i32, i8, i8, i8 }
%struct.samsung_div_clock = type { i32, ptr, ptr, i32, i32, i8, i8, i8, ptr }
%struct.samsung_gate_clock = type { i32, ptr, ptr, i32, i32, i8, i8 }

@__of_table_exynos5410_clk = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5410-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos5410_clk_init }, section "__clk_of_table", align 4
@exynos5410_pll2550x_24mhz_tbl = internal constant [10 x %struct.samsung_pll_rate_table] [%struct.samsung_pll_rate_table { i32 400000000, i32 3, i32 200, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 333000000, i32 2, i32 111, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 300000000, i32 2, i32 100, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 266000000, i32 3, i32 266, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 200000000, i32 3, i32 200, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 192000000, i32 3, i32 192, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 166000000, i32 3, i32 166, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 133000000, i32 3, i32 266, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 100000000, i32 3, i32 200, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 66000000, i32 2, i32 176, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0 }], section ".init.rodata", align 4
@exynos5410_plls = internal global [6 x %struct.samsung_pll_clock] [%struct.samsung_pll_clock { i32 2, ptr @.str, ptr @.str.1, i32 64, i32 256, i32 0, i32 2, ptr null }, %struct.samsung_pll_clock { i32 3, ptr @.str.2, ptr @.str.1, i32 64, i32 65824, i32 65568, i32 2, ptr null }, %struct.samsung_pll_clock { i32 7, ptr @.str.3, ptr @.str.1, i32 64, i32 65840, i32 65600, i32 20, ptr null }, %struct.samsung_pll_clock { i32 4, ptr @.str.4, ptr @.str.1, i32 64, i32 16640, i32 16384, i32 2, ptr null }, %struct.samsung_pll_clock { i32 5, ptr @.str.5, ptr @.str.1, i32 64, i32 131344, i32 131088, i32 2, ptr null }, %struct.samsung_pll_clock { i32 6, ptr @.str.6, ptr @.str.1, i32 64, i32 164096, i32 163840, i32 2, ptr null }], section ".init.data", align 4
@cmu = internal constant %struct.samsung_cmu_info { ptr @exynos5410_plls, i32 6, ptr @exynos5410_mux_clks, i32 23, ptr @exynos5410_div_clks, i32 29, ptr @exynos5410_gate_clks, i32 39, ptr null, i32 0, ptr null, i32 0, i32 512, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null }, section ".init.rodata", align 4
@.str = private unnamed_addr constant [10 x i8] c"fout_apll\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"fin_pll\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"fout_cpll\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"fout_epll\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"fout_mpll\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"fout_bpll\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"fout_kpll\00", align 1
@exynos5410_mux_clks = internal constant [23 x %struct.samsung_mux_clock] [%struct.samsung_mux_clock { i32 0, ptr @.str.7, ptr @apll_p, i8 2, i32 128, i32 512, i8 0, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.8, ptr @mout_cpu_p, i8 2, i32 128, i32 512, i8 16, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.9, ptr @kpll_p, i8 2, i32 128, i32 164352, i8 0, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.10, ptr @mout_kfc_p, i8 2, i32 128, i32 164352, i8 16, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.11, ptr @mpll_p, i8 2, i32 128, i32 16900, i8 8, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.12, ptr @mpll_user_p, i8 2, i32 128, i32 66072, i8 20, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.13, ptr @bpll_p, i8 2, i32 128, i32 131584, i8 0, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.14, ptr @bpll_user_p, i8 2, i32 128, i32 66072, i8 24, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.15, ptr @epll_p, i8 2, i32 128, i32 66072, i8 12, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.16, ptr @cpll_p, i8 2, i32 128, i32 66072, i8 8, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.17, ptr @mpll_bpll_p, i8 2, i32 128, i32 66068, i8 20, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.18, ptr @group2_p, i8 10, i32 128, i32 66116, i8 0, i8 4, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.19, ptr @group2_p, i8 10, i32 128, i32 66116, i8 4, i8 4, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.20, ptr @group2_p, i8 10, i32 128, i32 66116, i8 8, i8 4, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.21, ptr @sclk_mpll_bpll_p, i8 2, i32 128, i32 66116, i8 28, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.22, ptr @sclk_mpll_bpll_p, i8 2, i32 128, i32 66116, i8 29, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.23, ptr @group2_p, i8 10, i32 128, i32 66128, i8 0, i8 4, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.24, ptr @group2_p, i8 10, i32 128, i32 66128, i8 4, i8 4, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.25, ptr @group2_p, i8 10, i32 128, i32 66128, i8 8, i8 4, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.26, ptr @group2_p, i8 10, i32 128, i32 66128, i8 12, i8 4, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.27, ptr @group2_p, i8 10, i32 128, i32 66128, i8 24, i8 4, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.28, ptr @mpll_bpll_p, i8 2, i32 128, i32 66064, i8 12, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.29, ptr @mpll_bpll_p, i8 2, i32 128, i32 66064, i8 20, i8 1, i8 0 }], section ".init.rodata", align 4
@exynos5410_div_clks = internal constant [29 x %struct.samsung_div_clock] [%struct.samsung_div_clock { i32 0, ptr @.str.31, ptr @.str.8, i32 0, i32 1280, i8 0, i8 3, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.32, ptr @.str.31, i32 0, i32 1280, i8 28, i8 3, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.33, ptr @.str.32, i32 0, i32 1280, i8 8, i8 3, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.34, ptr @.str.32, i32 0, i32 1280, i8 4, i8 3, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.35, ptr @.str.32, i32 0, i32 1280, i8 16, i8 3, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.36, ptr @.str.32, i32 0, i32 1280, i8 20, i8 3, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.37, ptr @.str.10, i32 0, i32 165120, i8 0, i8 3, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.38, ptr @.str.37, i32 0, i32 165120, i8 4, i8 3, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.39, ptr @.str.37, i32 0, i32 165120, i8 20, i8 3, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.40, ptr @.str.12, i32 0, i32 66836, i8 24, i8 3, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.41, ptr @.str.40, i32 0, i32 66832, i8 0, i8 3, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.42, ptr @.str.21, i32 0, i32 66888, i8 16, i8 4, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.43, ptr @.str.22, i32 0, i32 66888, i8 20, i8 4, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.44, ptr @.str.21, i32 0, i32 66888, i8 24, i8 4, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.45, ptr @.str.22, i32 0, i32 66888, i8 28, i8 4, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.46, ptr @.str.18, i32 0, i32 66892, i8 0, i8 4, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.47, ptr @.str.19, i32 0, i32 66892, i8 16, i8 4, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.48, ptr @.str.20, i32 0, i32 66896, i8 0, i8 4, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.49, ptr @.str.46, i32 4, i32 66892, i8 8, i8 8, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.50, ptr @.str.47, i32 4, i32 66892, i8 24, i8 8, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.51, ptr @.str.48, i32 4, i32 66896, i8 8, i8 8, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.52, ptr @.str.23, i32 0, i32 66904, i8 0, i8 4, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.53, ptr @.str.24, i32 0, i32 66904, i8 4, i8 4, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.54, ptr @.str.25, i32 0, i32 66904, i8 8, i8 4, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.55, ptr @.str.26, i32 0, i32 66904, i8 12, i8 4, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.56, ptr @.str.27, i32 0, i32 66916, i8 0, i8 4, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.57, ptr @.str.28, i32 0, i32 66832, i8 12, i8 3, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.58, ptr @.str.59, i32 0, i32 66832, i8 16, i8 3, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.60, ptr @.str.29, i32 0, i32 66832, i8 24, i8 3, i8 0, ptr null }], section ".init.rodata", align 4
@exynos5410_gate_clks = internal constant [39 x %struct.samsung_gate_clock] [%struct.samsung_gate_clock { i32 471, ptr @.str.61, ptr @.str.58, i32 0, i32 34816, i8 2, i8 0 }, %struct.samsung_gate_clock { i32 315, ptr @.str.62, ptr @.str.41, i32 0, i32 67936, i8 18, i8 0 }, %struct.samsung_gate_clock { i32 316, ptr @.str.63, ptr @.str.41, i32 0, i32 67936, i8 19, i8 0 }, %struct.samsung_gate_clock { i32 317, ptr @.str.64, ptr @.str.41, i32 0, i32 67936, i8 20, i8 0 }, %struct.samsung_gate_clock { i32 318, ptr @.str.65, ptr @.str.41, i32 0, i32 67936, i8 21, i8 0 }, %struct.samsung_gate_clock { i32 132, ptr @.str.66, ptr @.str.49, i32 4, i32 66368, i8 0, i8 0 }, %struct.samsung_gate_clock { i32 133, ptr @.str.67, ptr @.str.50, i32 4, i32 66368, i8 4, i8 0 }, %struct.samsung_gate_clock { i32 134, ptr @.str.68, ptr @.str.51, i32 4, i32 66368, i8 8, i8 0 }, %struct.samsung_gate_clock { i32 351, ptr @.str.69, ptr @.str.57, i32 0, i32 67392, i8 12, i8 0 }, %struct.samsung_gate_clock { i32 352, ptr @.str.70, ptr @.str.57, i32 0, i32 67392, i8 13, i8 0 }, %struct.samsung_gate_clock { i32 353, ptr @.str.71, ptr @.str.57, i32 0, i32 67392, i8 14, i8 0 }, %struct.samsung_gate_clock { i32 363, ptr @.str.72, ptr @.str.57, i32 0, i32 67392, i8 2, i8 0 }, %struct.samsung_gate_clock { i32 362, ptr @.str.73, ptr @.str.57, i32 0, i32 67392, i8 1, i8 0 }, %struct.samsung_gate_clock { i32 153, ptr @.str.74, ptr @.str.43, i32 4, i32 67648, i8 7, i8 0 }, %struct.samsung_gate_clock { i32 152, ptr @.str.75, ptr @.str.42, i32 4, i32 67648, i8 8, i8 0 }, %struct.samsung_gate_clock { i32 150, ptr @.str.76, ptr @.str.44, i32 4, i32 67648, i8 9, i8 0 }, %struct.samsung_gate_clock { i32 151, ptr @.str.77, ptr @.str.45, i32 4, i32 67648, i8 10, i8 0 }, %struct.samsung_gate_clock { i32 155, ptr @.str.78, ptr @.str.56, i32 4, i32 67664, i8 11, i8 0 }, %struct.samsung_gate_clock { i32 257, ptr @.str.79, ptr @.str.41, i32 0, i32 67920, i8 0, i8 0 }, %struct.samsung_gate_clock { i32 258, ptr @.str.80, ptr @.str.41, i32 0, i32 67920, i8 1, i8 0 }, %struct.samsung_gate_clock { i32 259, ptr @.str.81, ptr @.str.41, i32 0, i32 67920, i8 2, i8 0 }, %struct.samsung_gate_clock { i32 260, ptr @.str.82, ptr @.str.41, i32 0, i32 67920, i8 3, i8 0 }, %struct.samsung_gate_clock { i32 261, ptr @.str.83, ptr @.str.41, i32 0, i32 67920, i8 6, i8 0 }, %struct.samsung_gate_clock { i32 262, ptr @.str.84, ptr @.str.41, i32 0, i32 67920, i8 7, i8 0 }, %struct.samsung_gate_clock { i32 263, ptr @.str.85, ptr @.str.41, i32 0, i32 67920, i8 8, i8 0 }, %struct.samsung_gate_clock { i32 264, ptr @.str.86, ptr @.str.41, i32 0, i32 67920, i8 9, i8 0 }, %struct.samsung_gate_clock { i32 265, ptr @.str.87, ptr @.str.41, i32 0, i32 67920, i8 10, i8 0 }, %struct.samsung_gate_clock { i32 266, ptr @.str.88, ptr @.str.41, i32 0, i32 67920, i8 11, i8 0 }, %struct.samsung_gate_clock { i32 267, ptr @.str.89, ptr @.str.41, i32 0, i32 67920, i8 12, i8 0 }, %struct.samsung_gate_clock { i32 268, ptr @.str.90, ptr @.str.41, i32 0, i32 67920, i8 13, i8 0 }, %struct.samsung_gate_clock { i32 270, ptr @.str.91, ptr @.str.41, i32 0, i32 67920, i8 15, i8 0 }, %struct.samsung_gate_clock { i32 279, ptr @.str.92, ptr @.str.41, i32 0, i32 67920, i8 24, i8 0 }, %struct.samsung_gate_clock { i32 128, ptr @.str.93, ptr @.str.52, i32 4, i32 66384, i8 0, i8 0 }, %struct.samsung_gate_clock { i32 129, ptr @.str.94, ptr @.str.53, i32 4, i32 66384, i8 4, i8 0 }, %struct.samsung_gate_clock { i32 130, ptr @.str.95, ptr @.str.54, i32 4, i32 66384, i8 8, i8 0 }, %struct.samsung_gate_clock { i32 131, ptr @.str.96, ptr @.str.55, i32 4, i32 66384, i8 12, i8 0 }, %struct.samsung_gate_clock { i32 365, ptr @.str.97, ptr @.str.98, i32 0, i32 67908, i8 18, i8 0 }, %struct.samsung_gate_clock { i32 366, ptr @.str.99, ptr @.str.98, i32 0, i32 67908, i8 19, i8 0 }, %struct.samsung_gate_clock { i32 367, ptr @.str.100, ptr @.str.98, i32 0, i32 67908, i8 20, i8 0 }], section ".init.rodata", align 4
@.str.7 = private unnamed_addr constant [10 x i8] c"mout_apll\00", align 1
@apll_p = internal constant [2 x ptr] [ptr @.str.1, ptr @.str], section ".init.rodata", align 4
@.str.8 = private unnamed_addr constant [9 x i8] c"mout_cpu\00", align 1
@mout_cpu_p = internal constant [2 x ptr] [ptr @.str.7, ptr @.str.11], section ".init.rodata", align 4
@.str.9 = private unnamed_addr constant [10 x i8] c"mout_kpll\00", align 1
@kpll_p = internal constant [2 x ptr] [ptr @.str.1, ptr @.str.6], section ".init.rodata", align 4
@.str.10 = private unnamed_addr constant [9 x i8] c"mout_kfc\00", align 1
@mout_kfc_p = internal constant [2 x ptr] [ptr @.str.9, ptr @.str.11], section ".init.rodata", align 4
@.str.11 = private unnamed_addr constant [10 x i8] c"sclk_mpll\00", align 1
@mpll_p = internal constant [2 x ptr] [ptr @.str.1, ptr @.str.4], section ".init.rodata", align 4
@.str.12 = private unnamed_addr constant [16 x i8] c"sclk_mpll_muxed\00", align 1
@mpll_user_p = internal constant [2 x ptr] [ptr @.str.1, ptr @.str.11], section ".init.rodata", align 4
@.str.13 = private unnamed_addr constant [10 x i8] c"sclk_bpll\00", align 1
@bpll_p = internal constant [2 x ptr] [ptr @.str.1, ptr @.str.5], section ".init.rodata", align 4
@.str.14 = private unnamed_addr constant [16 x i8] c"sclk_bpll_muxed\00", align 1
@bpll_user_p = internal constant [2 x ptr] [ptr @.str.1, ptr @.str.13], section ".init.rodata", align 4
@.str.15 = private unnamed_addr constant [10 x i8] c"sclk_epll\00", align 1
@epll_p = internal constant [2 x ptr] [ptr @.str.1, ptr @.str.3], section ".init.rodata", align 4
@.str.16 = private unnamed_addr constant [10 x i8] c"sclk_cpll\00", align 1
@cpll_p = internal constant [2 x ptr] [ptr @.str.1, ptr @.str.2], section ".init.rodata", align 4
@.str.17 = private unnamed_addr constant [15 x i8] c"sclk_mpll_bpll\00", align 1
@mpll_bpll_p = internal constant [2 x ptr] [ptr @.str.12, ptr @.str.14], section ".init.rodata", align 4
@.str.18 = private unnamed_addr constant [10 x i8] c"mout_mmc0\00", align 1
@group2_p = internal constant [10 x ptr] [ptr @.str.1, ptr @.str.1, ptr @.str.30, ptr @.str.30, ptr @.str.30, ptr @.str.30, ptr @.str.17, ptr @.str.30, ptr @.str.30, ptr @.str.16], section ".init.rodata", align 4
@.str.19 = private unnamed_addr constant [10 x i8] c"mout_mmc1\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"mout_mmc2\00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c"mout_usbd300\00", align 1
@sclk_mpll_bpll_p = internal constant [2 x ptr] [ptr @.str.17, ptr @.str.1], section ".init.rodata", align 4
@.str.22 = private unnamed_addr constant [13 x i8] c"mout_usbd301\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"mout_uart0\00", align 1
@.str.24 = private unnamed_addr constant [11 x i8] c"mout_uart1\00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"mout_uart2\00", align 1
@.str.26 = private unnamed_addr constant [11 x i8] c"mout_uart3\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"mout_pwm\00", align 1
@.str.28 = private unnamed_addr constant [13 x i8] c"mout_aclk200\00", align 1
@.str.29 = private unnamed_addr constant [13 x i8] c"mout_aclk400\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c"div_arm\00", align 1
@.str.32 = private unnamed_addr constant [9 x i8] c"div_arm2\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"div_acp\00", align 1
@.str.34 = private unnamed_addr constant [9 x i8] c"div_cpud\00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c"div_atb\00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c"pclk_dbg\00", align 1
@.str.37 = private unnamed_addr constant [8 x i8] c"div_kfc\00", align 1
@.str.38 = private unnamed_addr constant [9 x i8] c"div_aclk\00", align 1
@.str.39 = private unnamed_addr constant [9 x i8] c"div_pclk\00", align 1
@.str.40 = private unnamed_addr constant [11 x i8] c"aclk66_pre\00", align 1
@.str.41 = private unnamed_addr constant [7 x i8] c"aclk66\00", align 1
@.str.42 = private unnamed_addr constant [15 x i8] c"dout_usbphy300\00", align 1
@.str.43 = private unnamed_addr constant [15 x i8] c"dout_usbphy301\00", align 1
@.str.44 = private unnamed_addr constant [13 x i8] c"dout_usbd300\00", align 1
@.str.45 = private unnamed_addr constant [13 x i8] c"dout_usbd301\00", align 1
@.str.46 = private unnamed_addr constant [9 x i8] c"div_mmc0\00", align 1
@.str.47 = private unnamed_addr constant [9 x i8] c"div_mmc1\00", align 1
@.str.48 = private unnamed_addr constant [9 x i8] c"div_mmc2\00", align 1
@.str.49 = private unnamed_addr constant [13 x i8] c"div_mmc_pre0\00", align 1
@.str.50 = private unnamed_addr constant [13 x i8] c"div_mmc_pre1\00", align 1
@.str.51 = private unnamed_addr constant [13 x i8] c"div_mmc_pre2\00", align 1
@.str.52 = private unnamed_addr constant [10 x i8] c"div_uart0\00", align 1
@.str.53 = private unnamed_addr constant [10 x i8] c"div_uart1\00", align 1
@.str.54 = private unnamed_addr constant [10 x i8] c"div_uart2\00", align 1
@.str.55 = private unnamed_addr constant [10 x i8] c"div_uart3\00", align 1
@.str.56 = private unnamed_addr constant [9 x i8] c"dout_pwm\00", align 1
@.str.57 = private unnamed_addr constant [8 x i8] c"aclk200\00", align 1
@.str.58 = private unnamed_addr constant [8 x i8] c"aclk266\00", align 1
@.str.59 = private unnamed_addr constant [12 x i8] c"mpll_user_p\00", align 1
@.str.60 = private unnamed_addr constant [8 x i8] c"aclk400\00", align 1
@.str.61 = private unnamed_addr constant [4 x i8] c"sss\00", align 1
@.str.62 = private unnamed_addr constant [4 x i8] c"mct\00", align 1
@.str.63 = private unnamed_addr constant [4 x i8] c"wdt\00", align 1
@.str.64 = private unnamed_addr constant [4 x i8] c"rtc\00", align 1
@.str.65 = private unnamed_addr constant [4 x i8] c"tmu\00", align 1
@.str.66 = private unnamed_addr constant [10 x i8] c"sclk_mmc0\00", align 1
@.str.67 = private unnamed_addr constant [10 x i8] c"sclk_mmc1\00", align 1
@.str.68 = private unnamed_addr constant [10 x i8] c"sclk_mmc2\00", align 1
@.str.69 = private unnamed_addr constant [7 x i8] c"sdmmc0\00", align 1
@.str.70 = private unnamed_addr constant [7 x i8] c"sdmmc1\00", align 1
@.str.71 = private unnamed_addr constant [7 x i8] c"sdmmc2\00", align 1
@.str.72 = private unnamed_addr constant [6 x i8] c"pdma1\00", align 1
@.str.73 = private unnamed_addr constant [6 x i8] c"pdma0\00", align 1
@.str.74 = private unnamed_addr constant [15 x i8] c"sclk_usbphy301\00", align 1
@.str.75 = private unnamed_addr constant [15 x i8] c"sclk_usbphy300\00", align 1
@.str.76 = private unnamed_addr constant [13 x i8] c"sclk_usbd300\00", align 1
@.str.77 = private unnamed_addr constant [13 x i8] c"sclk_usbd301\00", align 1
@.str.78 = private unnamed_addr constant [9 x i8] c"sclk_pwm\00", align 1
@.str.79 = private unnamed_addr constant [6 x i8] c"uart0\00", align 1
@.str.80 = private unnamed_addr constant [6 x i8] c"uart1\00", align 1
@.str.81 = private unnamed_addr constant [6 x i8] c"uart2\00", align 1
@.str.82 = private unnamed_addr constant [6 x i8] c"uart3\00", align 1
@.str.83 = private unnamed_addr constant [5 x i8] c"i2c0\00", align 1
@.str.84 = private unnamed_addr constant [5 x i8] c"i2c1\00", align 1
@.str.85 = private unnamed_addr constant [5 x i8] c"i2c2\00", align 1
@.str.86 = private unnamed_addr constant [5 x i8] c"i2c3\00", align 1
@.str.87 = private unnamed_addr constant [5 x i8] c"usi0\00", align 1
@.str.88 = private unnamed_addr constant [5 x i8] c"usi1\00", align 1
@.str.89 = private unnamed_addr constant [5 x i8] c"usi2\00", align 1
@.str.90 = private unnamed_addr constant [5 x i8] c"usi3\00", align 1
@.str.91 = private unnamed_addr constant [6 x i8] c"tsadc\00", align 1
@.str.92 = private unnamed_addr constant [4 x i8] c"pwm\00", align 1
@.str.93 = private unnamed_addr constant [11 x i8] c"sclk_uart0\00", align 1
@.str.94 = private unnamed_addr constant [11 x i8] c"sclk_uart1\00", align 1
@.str.95 = private unnamed_addr constant [11 x i8] c"sclk_uart2\00", align 1
@.str.96 = private unnamed_addr constant [11 x i8] c"sclk_uart3\00", align 1
@.str.97 = private unnamed_addr constant [7 x i8] c"usbh20\00", align 1
@.str.98 = private unnamed_addr constant [13 x i8] c"aclk200_fsys\00", align 1
@.str.99 = private unnamed_addr constant [8 x i8] c"usbd300\00", align 1
@.str.100 = private unnamed_addr constant [8 x i8] c"usbd301\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__of_table_exynos5410_clk], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @exynos5410_clk_init(ptr noundef %0) #0 section ".init.text" {
  %2 = tail call ptr @of_clk_get(ptr noundef %0, i32 noundef 0) #2
  %3 = icmp ugt ptr %2, inttoptr (i32 -4096 to ptr)
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = tail call i32 @clk_get_rate(ptr noundef %2) #2
  %6 = icmp eq i32 %5, 24000000
  br i1 %6, label %7, label %8

7:                                                ; preds = %4
  store ptr @exynos5410_pll2550x_24mhz_tbl, ptr getelementptr inbounds ([6 x %struct.samsung_pll_clock], ptr @exynos5410_plls, i32 0, i32 2, i32 7), align 4
  br label %8

8:                                                ; preds = %7, %4, %1
  %9 = tail call ptr @samsung_cmu_register_one(ptr noundef %0, ptr noundef nonnull @cmu) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @samsung_cmu_register_one(ptr noundef, ptr noundef) local_unnamed_addr #1

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
