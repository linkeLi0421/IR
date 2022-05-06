; ModuleID = '/llk/IR/drivers/clk/samsung/clk-exynos4.c_pt.bc'
source_filename = "../drivers/clk/samsung/clk-exynos4.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.samsung_fixed_rate_clock = type { i32, ptr, ptr, i32, i32 }
%struct.samsung_mux_clock = type { i32, ptr, ptr, i8, i32, i32, i8, i8, i8 }
%struct.samsung_pll_rate_table = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.samsung_pll_clock = type { i32, ptr, ptr, i32, i32, i32, i32, ptr }
%struct.samsung_div_clock = type { i32, ptr, ptr, i32, i32, i8, i8, i8, ptr }
%struct.samsung_gate_clock = type { i32, ptr, ptr, i32, i32, i8, i8 }
%struct.samsung_fixed_factor_clock = type { i32, ptr, ptr, i32, i32, i32 }
%struct.samsung_cpu_clock = type { i32, ptr, i32, i32, i32, i32, ptr }
%struct.samsung_clk_reg_dump = type { i32, i32 }
%struct.exynos_cpuclk_cfg_data = type { i32, i32, i32 }
%struct.cpumask = type { [1 x i32] }
%struct.samsung_clk_provider = type { ptr, ptr, %struct.spinlock, %struct.clk_hw_onecell_data }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.clk_hw_onecell_data = type { i32, [0 x ptr] }

@__of_table_exynos4210_clk = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos4210-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos4210_clk_init }, section "__clk_of_table", align 4
@__of_table_exynos4412_clk = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos4412-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos4412_clk_init }, section "__clk_of_table", align 4
@exynos4_soc = internal unnamed_addr global i32 0, align 4
@reg_base = internal unnamed_addr global ptr null, align 4
@.str = private unnamed_addr constant [29 x i8] c"%s: failed to map registers\0A\00", align 1
@__func__.exynos4_clk_init = private unnamed_addr constant [17 x i8] c"exynos4_clk_init\00", align 1
@exynos4_fixed_rate_ext_clks = internal global [2 x %struct.samsung_fixed_rate_clock] [%struct.samsung_fixed_rate_clock { i32 1, ptr @.str.4, ptr null, i32 0, i32 0 }, %struct.samsung_fixed_rate_clock { i32 2, ptr @.str.5, ptr null, i32 0, i32 0 }], section ".init.data", align 4
@ext_clk_match = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,clock-xxti\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,clock-xusbxti\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id zeroinitializer], section ".init.rodata", align 4
@exynos4210_mux_early = internal constant [1 x %struct.samsung_mux_clock] [%struct.samsung_mux_clock { i32 398, ptr @.str.9, ptr @mout_vpllsrc_p, i8 2, i32 128, i32 49684, i8 0, i8 1, i8 0 }], section ".init.rodata", align 4
@exynos4210_apll_rates = internal constant [10 x %struct.samsung_pll_rate_table] [%struct.samsung_pll_rate_table { i32 1200000000, i32 3, i32 150, i32 1, i32 0, i32 28, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 1000000000, i32 6, i32 250, i32 1, i32 0, i32 28, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 800000000, i32 6, i32 200, i32 1, i32 0, i32 28, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 666857142, i32 14, i32 389, i32 1, i32 0, i32 13, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 600000000, i32 4, i32 100, i32 1, i32 0, i32 13, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 533000000, i32 24, i32 533, i32 1, i32 0, i32 5, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 500000000, i32 6, i32 250, i32 2, i32 0, i32 28, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 400000000, i32 6, i32 200, i32 2, i32 0, i32 28, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 200000000, i32 6, i32 200, i32 3, i32 0, i32 28, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table zeroinitializer], section ".init.rodata", align 4
@exynos4210_plls = internal global [4 x %struct.samsung_pll_clock] [%struct.samsung_pll_clock { i32 4, ptr @.str.11, ptr @.str.7, i32 64, i32 82176, i32 81920, i32 8, ptr null }, %struct.samsung_pll_clock { i32 5, ptr @.str.12, ptr @.str.7, i32 64, i32 82184, i32 81928, i32 8, ptr null }, %struct.samsung_pll_clock { i32 6, ptr @.str.13, ptr @.str.7, i32 64, i32 49424, i32 49168, i32 9, ptr null }, %struct.samsung_pll_clock { i32 7, ptr @.str.14, ptr @.str.9, i32 64, i32 49440, i32 49184, i32 11, ptr null }], section ".init.data", align 4
@exynos4210_epll_rates = internal constant [8 x %struct.samsung_pll_rate_table] [%struct.samsung_pll_rate_table { i32 192000000, i32 3, i32 48, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 180633605, i32 3, i32 45, i32 1, i32 10381, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 180000000, i32 3, i32 45, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 73727996, i32 3, i32 73, i32 3, i32 47710, i32 0, i32 0, i32 0, i32 1 }, %struct.samsung_pll_rate_table { i32 67737602, i32 4, i32 90, i32 3, i32 20762, i32 0, i32 0, i32 0, i32 1 }, %struct.samsung_pll_rate_table { i32 49151992, i32 3, i32 49, i32 3, i32 9961, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 45158401, i32 3, i32 45, i32 3, i32 10381, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table zeroinitializer], section ".init.rodata", align 4
@exynos4210_vpll_rates = internal constant [6 x %struct.samsung_pll_rate_table] [%struct.samsung_pll_rate_table { i32 360000000, i32 3, i32 44, i32 0, i32 1024, i32 0, i32 0, i32 14, i32 0 }, %struct.samsung_pll_rate_table { i32 324000000, i32 2, i32 53, i32 1, i32 1024, i32 0, i32 1, i32 1, i32 1 }, %struct.samsung_pll_rate_table { i32 259617187, i32 3, i32 63, i32 1, i32 1950, i32 0, i32 0, i32 20, i32 1 }, %struct.samsung_pll_rate_table { i32 110000000, i32 3, i32 53, i32 2, i32 2048, i32 0, i32 0, i32 17, i32 0 }, %struct.samsung_pll_rate_table { i32 55360351, i32 3, i32 53, i32 3, i32 2417, i32 0, i32 0, i32 17, i32 0 }, %struct.samsung_pll_rate_table zeroinitializer], section ".init.rodata", align 4
@exynos4x12_apll_rates = internal constant [17 x %struct.samsung_pll_rate_table] [%struct.samsung_pll_rate_table { i32 1704000000, i32 3, i32 213, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 1600000000, i32 3, i32 200, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 1500000000, i32 4, i32 250, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 1400000000, i32 3, i32 175, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 1300000000, i32 6, i32 325, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 1200000000, i32 4, i32 200, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 1100000000, i32 6, i32 275, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 1000000000, i32 3, i32 125, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 900000000, i32 4, i32 150, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 800000000, i32 3, i32 100, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 700000000, i32 3, i32 175, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 600000000, i32 4, i32 200, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 500000000, i32 3, i32 125, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 400000000, i32 3, i32 100, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 300000000, i32 4, i32 200, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 200000000, i32 3, i32 100, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table zeroinitializer], section ".init.rodata", align 4
@exynos4x12_plls = internal global [4 x %struct.samsung_pll_clock] [%struct.samsung_pll_clock { i32 4, ptr @.str.11, ptr @.str.7, i32 64, i32 82176, i32 81920, i32 2, ptr null }, %struct.samsung_pll_clock { i32 5, ptr @.str.12, ptr @.str.7, i32 64, i32 65800, i32 65544, i32 2, ptr null }, %struct.samsung_pll_clock { i32 6, ptr @.str.13, ptr @.str.7, i32 64, i32 49424, i32 49168, i32 3, ptr null }, %struct.samsung_pll_clock { i32 7, ptr @.str.14, ptr @.str.7, i32 64, i32 49440, i32 49184, i32 3, ptr null }], section ".init.data", align 4
@exynos4x12_epll_rates = internal constant [9 x %struct.samsung_pll_rate_table] [%struct.samsung_pll_rate_table { i32 196608001, i32 3, i32 197, i32 3, i32 -25690, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 192000000, i32 3, i32 48, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 180633605, i32 3, i32 45, i32 1, i32 10381, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 180000000, i32 3, i32 45, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 73727996, i32 3, i32 73, i32 3, i32 47710, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 67737602, i32 4, i32 90, i32 3, i32 20762, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 49151992, i32 3, i32 49, i32 3, i32 9961, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 45158401, i32 3, i32 45, i32 3, i32 10381, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table zeroinitializer], section ".init.rodata", align 4
@exynos4x12_vpll_rates = internal constant [8 x %struct.samsung_pll_rate_table] [%struct.samsung_pll_rate_table { i32 533000000, i32 3, i32 133, i32 1, i32 16384, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 440000000, i32 3, i32 110, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 350000000, i32 3, i32 175, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 266000000, i32 3, i32 133, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 160000000, i32 3, i32 160, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 106031250, i32 3, i32 53, i32 2, i32 1024, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 53015625, i32 3, i32 53, i32 3, i32 1024, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table zeroinitializer], section ".init.rodata", align 4
@exynos4_fixed_rate_clks = internal constant [3 x %struct.samsung_fixed_rate_clock] [%struct.samsung_fixed_rate_clock { i32 0, ptr @.str.10, ptr null, i32 0, i32 24000000 }, %struct.samsung_fixed_rate_clock { i32 22, ptr @.str.15, ptr @.str.16, i32 0, i32 27000000 }, %struct.samsung_fixed_rate_clock { i32 0, ptr @.str.17, ptr null, i32 0, i32 48000000 }], section ".init.rodata", align 4
@exynos4_mux_clks = internal constant [12 x %struct.samsung_mux_clock] [%struct.samsung_mux_clock { i32 20, ptr @.str.18, ptr @mout_apll_p, i8 2, i32 644, i32 82432, i8 0, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 396, ptr @.str.19, ptr @mout_hdmi_p, i8 2, i32 128, i32 49700, i8 0, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.20, ptr @sclk_evpll_p, i8 2, i32 128, i32 49704, i8 4, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.21, ptr @mout_mfc_p, i8 2, i32 128, i32 49704, i8 8, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 393, ptr @.str.22, ptr @sclk_evpll_p, i8 2, i32 132, i32 49708, i8 4, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 394, ptr @.str.23, ptr @mout_g3d_p, i8 2, i32 132, i32 49708, i8 8, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.24, ptr @mout_spdif_p, i8 4, i32 128, i32 49748, i8 8, i8 2, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.25, ptr @mout_onenand1_p, i8 2, i32 128, i32 49680, i8 0, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 10, ptr @.str.26, ptr @mout_epll_p, i8 2, i32 128, i32 49680, i8 4, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.27, ptr @mout_onenand_p, i8 2, i32 128, i32 49680, i8 28, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.28, ptr @sclk_ampll_p4210, i8 2, i32 128, i32 66048, i8 4, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.29, ptr @sclk_ampll_p4210, i8 2, i32 128, i32 66048, i8 8, i8 1, i8 0 }], section ".init.rodata", align 4
@exynos4_div_clks = internal constant [74 x %struct.samsung_div_clock] [%struct.samsung_div_clock { i32 459, ptr @.str.42, ptr @.str.43, i32 0, i32 17664, i8 0, i8 3, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.44, ptr @.str.42, i32 0, i32 17664, i8 4, i8 3, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.45, ptr @.str.46, i32 0, i32 18944, i8 8, i8 6, i8 0, ptr null }, %struct.samsung_div_clock { i32 460, ptr @.str.47, ptr @.str.48, i32 0, i32 34048, i8 0, i8 3, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.49, ptr @.str.47, i32 0, i32 34048, i8 4, i8 3, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.50, ptr @.str.51, i32 0, i32 35328, i8 8, i8 6, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.52, ptr @.str.53, i32 0, i32 83200, i8 0, i8 3, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.54, ptr @.str.55, i32 0, i32 83200, i8 4, i8 3, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.56, ptr @.str.55, i32 0, i32 83200, i8 8, i8 3, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.57, ptr @.str.55, i32 0, i32 83200, i8 12, i8 3, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.58, ptr @.str.53, i32 0, i32 83200, i8 16, i8 3, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.59, ptr @.str.58, i32 0, i32 83200, i8 20, i8 3, i8 0, ptr null }, %struct.samsung_div_clock { i32 461, ptr @.str.55, ptr @.str.52, i32 0, i32 83200, i8 28, i8 3, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.60, ptr @.str.61, i32 0, i32 83204, i8 0, i8 3, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.62, ptr @.str.60, i32 0, i32 83204, i8 4, i8 3, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.63, ptr @.str.64, i32 0, i32 84480, i8 8, i8 6, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.65, ptr @.str.66, i32 0, i32 50464, i8 0, i8 4, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.67, ptr @.str.68, i32 0, i32 50464, i8 4, i8 4, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.69, ptr @.str.70, i32 0, i32 50464, i8 8, i8 4, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.71, ptr @.str.72, i32 0, i32 50464, i8 12, i8 4, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.73, ptr @.str.74, i32 0, i32 50464, i8 16, i8 4, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.75, ptr @.str.76, i32 0, i32 50464, i8 20, i8 4, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.77, ptr @.str.78, i32 0, i32 50464, i8 24, i8 4, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.79, ptr @.str.80, i32 0, i32 50464, i8 28, i8 4, i8 0, ptr null }, %struct.samsung_div_clock { i32 170, ptr @.str.81, ptr @.str.21, i32 0, i32 50472, i8 0, i8 4, i8 0, ptr null }, %struct.samsung_div_clock { i32 172, ptr @.str.82, ptr @.str.23, i32 0, i32 50476, i8 0, i8 4, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.83, ptr @.str.84, i32 0, i32 50484, i8 0, i8 4, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.85, ptr @.str.86, i32 0, i32 50484, i8 16, i8 4, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.87, ptr @.str.88, i32 0, i32 50492, i8 0, i8 4, i8 0, ptr null }, %struct.samsung_div_clock { i32 171, ptr @.str.89, ptr @.str.34, i32 0, i32 50492, i8 4, i8 8, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.90, ptr @.str.91, i32 0, i32 50500, i8 0, i8 4, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.92, ptr @.str.93, i32 0, i32 50500, i8 16, i8 4, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.94, ptr @.str.95, i32 0, i32 50504, i8 0, i8 4, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.96, ptr @.str.97, i32 0, i32 50504, i8 16, i8 4, i8 0, ptr null }, %struct.samsung_div_clock { i32 139, ptr @.str.30, ptr @.str.31, i32 0, i32 50468, i8 0, i8 4, i8 0, ptr null }, %struct.samsung_div_clock { i32 14, ptr @.str.98, ptr @.str.99, i32 0, i32 50448, i8 4, i8 4, i8 0, ptr null }, %struct.samsung_div_clock { i32 15, ptr @.str.39, ptr @.str.100, i32 0, i32 50448, i8 8, i8 3, i8 0, ptr null }, %struct.samsung_div_clock { i32 16, ptr @.str.38, ptr @.str.101, i32 0, i32 50448, i8 12, i8 3, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.102, ptr @.str.25, i32 0, i32 50448, i8 16, i8 3, i8 0, ptr null }, %struct.samsung_div_clock { i32 162, ptr @.str.103, ptr @.str.26, i32 0, i32 50524, i8 4, i8 4, i8 0, ptr null }, %struct.samsung_div_clock { i32 165, ptr @.str.104, ptr @.str.35, i32 0, i32 50528, i8 4, i8 8, i8 0, ptr null }, %struct.samsung_div_clock { i32 166, ptr @.str.105, ptr @.str.36, i32 0, i32 50528, i8 20, i8 8, i8 0, ptr null }, %struct.samsung_div_clock { i32 167, ptr @.str.106, ptr @.str.35, i32 0, i32 50532, i8 0, i8 6, i8 0, ptr null }, %struct.samsung_div_clock { i32 168, ptr @.str.107, ptr @.str.36, i32 0, i32 50532, i8 8, i8 6, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.108, ptr @.str.109, i32 0, i32 50508, i8 0, i8 4, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.110, ptr @.str.108, i32 4, i32 50508, i8 8, i8 8, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.111, ptr @.str.112, i32 0, i32 50512, i8 0, i8 4, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.113, ptr @.str.114, i32 0, i32 50512, i8 4, i8 4, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.115, ptr @.str.116, i32 0, i32 50512, i8 8, i8 4, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.117, ptr @.str.118, i32 0, i32 50512, i8 12, i8 4, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.119, ptr @.str.120, i32 0, i32 50512, i8 16, i8 4, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.121, ptr @.str.122, i32 0, i32 50516, i8 0, i8 4, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.123, ptr @.str.121, i32 0, i32 50516, i8 8, i8 8, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.124, ptr @.str.125, i32 0, i32 50516, i8 16, i8 4, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.126, ptr @.str.124, i32 0, i32 50516, i8 24, i8 8, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.127, ptr @.str.128, i32 0, i32 50520, i8 0, i8 4, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.129, ptr @.str.127, i32 0, i32 50520, i8 8, i8 8, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.130, ptr @.str.131, i32 0, i32 50528, i8 0, i8 4, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.132, ptr @.str.133, i32 0, i32 50528, i8 16, i8 4, i8 0, ptr null }, %struct.samsung_div_clock { i32 8, ptr @.str.41, ptr @.str.18, i32 0, i32 83200, i8 24, i8 3, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.134, ptr @.str.85, i32 4, i32 50484, i8 20, i8 4, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.135, ptr @.str.90, i32 4, i32 50500, i8 8, i8 8, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.136, ptr @.str.92, i32 4, i32 50500, i8 24, i8 8, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.137, ptr @.str.94, i32 4, i32 50504, i8 8, i8 8, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.138, ptr @.str.96, i32 4, i32 50504, i8 24, i8 8, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.139, ptr @.str.140, i32 0, i32 51712, i8 8, i8 6, i8 0, ptr null }, %struct.samsung_div_clock { i32 456, ptr @.str.141, ptr @.str.28, i32 0, i32 66816, i8 0, i8 3, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.142, ptr @.str.141, i32 0, i32 66816, i8 4, i8 3, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.143, ptr @.str.29, i32 0, i32 66816, i8 8, i8 3, i8 0, ptr null }, %struct.samsung_div_clock { i32 457, ptr @.str.144, ptr @.str.28, i32 0, i32 66816, i8 12, i8 3, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.145, ptr @.str.144, i32 0, i32 66816, i8 16, i8 3, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.146, ptr @.str.145, i32 0, i32 66816, i8 20, i8 3, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.147, ptr @.str.148, i32 0, i32 66820, i8 8, i8 4, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.149, ptr @.str.150, i32 0, i32 68096, i8 8, i8 6, i8 0, ptr null }], section ".init.rodata", align 4
@exynos4_gate_clks = internal constant [118 x %struct.samsung_gate_clock] [%struct.samsung_gate_clock { i32 400, ptr @.str.151, ptr @.str.152, i32 0, i32 18432, i8 1, i8 0 }, %struct.samsung_gate_clock { i32 401, ptr @.str.153, ptr @.str.152, i32 0, i32 34816, i8 1, i8 0 }, %struct.samsung_gate_clock { i32 136, ptr @.str.154, ptr @.str.19, i32 0, i32 49956, i8 0, i8 0 }, %struct.samsung_gate_clock { i32 158, ptr @.str.155, ptr @.str.24, i32 0, i32 50004, i8 8, i8 0 }, %struct.samsung_gate_clock { i32 262, ptr @.str.156, ptr @.str.39, i32 0, i32 51488, i8 6, i8 0 }, %struct.samsung_gate_clock { i32 284, ptr @.str.157, ptr @.str.39, i32 0, i32 51508, i8 1, i8 0 }, %struct.samsung_gate_clock { i32 286, ptr @.str.158, ptr @.str.39, i32 0, i32 51508, i8 3, i8 0 }, %struct.samsung_gate_clock { i32 288, ptr @.str.159, ptr @.str.39, i32 0, i32 51512, i8 0, i8 0 }, %struct.samsung_gate_clock { i32 289, ptr @.str.160, ptr @.str.39, i32 0, i32 51512, i8 1, i8 0 }, %struct.samsung_gate_clock { i32 290, ptr @.str.161, ptr @.str.39, i32 0, i32 51512, i8 3, i8 0 }, %struct.samsung_gate_clock { i32 291, ptr @.str.162, ptr @.str.39, i32 0, i32 51512, i8 4, i8 0 }, %struct.samsung_gate_clock { i32 296, ptr @.str.163, ptr @.str.38, i32 0, i32 51520, i8 4, i8 0 }, %struct.samsung_gate_clock { i32 303, ptr @.str.164, ptr @.str.38, i32 0, i32 51520, i8 11, i8 0 }, %struct.samsung_gate_clock { i32 276, ptr @.str.165, ptr @.str.152, i32 0, i32 51500, i8 0, i8 0 }, %struct.samsung_gate_clock { i32 406, ptr @.str.166, ptr @.str.152, i32 0, i32 51500, i8 1, i8 0 }, %struct.samsung_gate_clock { i32 305, ptr @.str.167, ptr @.str.38, i32 0, i32 51520, i8 13, i8 0 }, %struct.samsung_gate_clock { i32 307, ptr @.str.168, ptr @.str.38, i32 0, i32 51520, i8 15, i8 0 }, %struct.samsung_gate_clock { i32 308, ptr @.str.169, ptr @.str.38, i32 0, i32 51520, i8 16, i8 0 }, %struct.samsung_gate_clock { i32 310, ptr @.str.170, ptr @.str.38, i32 0, i32 51532, i8 0, i8 0 }, %struct.samsung_gate_clock { i32 311, ptr @.str.171, ptr @.str.38, i32 0, i32 51532, i8 1, i8 0 }, %struct.samsung_gate_clock { i32 411, ptr @.str.172, ptr @.str.152, i32 0, i32 51532, i8 2, i8 0 }, %struct.samsung_gate_clock { i32 337, ptr @.str.173, ptr @.str.98, i32 0, i32 51536, i8 25, i8 0 }, %struct.samsung_gate_clock { i32 132, ptr @.str.174, ptr @.str.73, i32 4, i32 51232, i8 4, i8 0 }, %struct.samsung_gate_clock { i32 133, ptr @.str.175, ptr @.str.75, i32 4, i32 51232, i8 5, i8 0 }, %struct.samsung_gate_clock { i32 143, ptr @.str.176, ptr @.str.134, i32 4, i32 49972, i8 12, i8 0 }, %struct.samsung_gate_clock { i32 144, ptr @.str.34, ptr @.str.87, i32 4, i32 49980, i8 0, i8 0 }, %struct.samsung_gate_clock { i32 156, ptr @.str.35, ptr @.str.130, i32 4, i32 50004, i8 0, i8 0 }, %struct.samsung_gate_clock { i32 268, ptr @.str.177, ptr @.str.39, i32 0, i32 51492, i8 0, i8 0 }, %struct.samsung_gate_clock { i32 269, ptr @.str.178, ptr @.str.39, i32 0, i32 51492, i8 1, i8 0 }, %struct.samsung_gate_clock { i32 271, ptr @.str.16, ptr @.str.39, i32 0, i32 51492, i8 3, i8 0 }, %struct.samsung_gate_clock { i32 336, ptr @.str.179, ptr @.str.98, i32 0, i32 51536, i8 24, i8 0 }, %struct.samsung_gate_clock { i32 301, ptr @.str.180, ptr @.str.38, i32 0, i32 51520, i8 9, i8 0 }, %struct.samsung_gate_clock { i32 304, ptr @.str.181, ptr @.str.38, i32 0, i32 51520, i8 12, i8 0 }, %struct.samsung_gate_clock { i32 128, ptr @.str.182, ptr @.str.65, i32 4, i32 49952, i8 0, i8 0 }, %struct.samsung_gate_clock { i32 129, ptr @.str.183, ptr @.str.67, i32 4, i32 49952, i8 4, i8 0 }, %struct.samsung_gate_clock { i32 130, ptr @.str.184, ptr @.str.69, i32 4, i32 49952, i8 8, i8 0 }, %struct.samsung_gate_clock { i32 131, ptr @.str.185, ptr @.str.71, i32 4, i32 49952, i8 12, i8 0 }, %struct.samsung_gate_clock { i32 134, ptr @.str.186, ptr @.str.77, i32 4, i32 49952, i8 24, i8 0 }, %struct.samsung_gate_clock { i32 135, ptr @.str.187, ptr @.str.79, i32 4, i32 49952, i8 28, i8 0 }, %struct.samsung_gate_clock { i32 140, ptr @.str.188, ptr @.str.83, i32 4, i32 49972, i8 0, i8 0 }, %struct.samsung_gate_clock { i32 145, ptr @.str.189, ptr @.str.135, i32 4, i32 49984, i8 0, i8 0 }, %struct.samsung_gate_clock { i32 146, ptr @.str.190, ptr @.str.136, i32 4, i32 49984, i8 4, i8 0 }, %struct.samsung_gate_clock { i32 147, ptr @.str.191, ptr @.str.137, i32 4, i32 49984, i8 8, i8 0 }, %struct.samsung_gate_clock { i32 148, ptr @.str.192, ptr @.str.138, i32 4, i32 49984, i8 12, i8 0 }, %struct.samsung_gate_clock { i32 149, ptr @.str.193, ptr @.str.110, i32 4, i32 49984, i8 16, i8 0 }, %struct.samsung_gate_clock { i32 151, ptr @.str.194, ptr @.str.111, i32 4, i32 50000, i8 0, i8 0 }, %struct.samsung_gate_clock { i32 152, ptr @.str.195, ptr @.str.113, i32 4, i32 50000, i8 4, i8 0 }, %struct.samsung_gate_clock { i32 153, ptr @.str.196, ptr @.str.115, i32 4, i32 50000, i8 8, i8 0 }, %struct.samsung_gate_clock { i32 154, ptr @.str.197, ptr @.str.117, i32 4, i32 50000, i8 12, i8 0 }, %struct.samsung_gate_clock { i32 155, ptr @.str.198, ptr @.str.119, i32 4, i32 50000, i8 16, i8 0 }, %struct.samsung_gate_clock { i32 157, ptr @.str.36, ptr @.str.132, i32 4, i32 50004, i8 4, i8 0 }, %struct.samsung_gate_clock { i32 159, ptr @.str.199, ptr @.str.123, i32 4, i32 50004, i8 16, i8 0 }, %struct.samsung_gate_clock { i32 160, ptr @.str.200, ptr @.str.126, i32 4, i32 50004, i8 20, i8 0 }, %struct.samsung_gate_clock { i32 161, ptr @.str.201, ptr @.str.129, i32 4, i32 50004, i8 24, i8 0 }, %struct.samsung_gate_clock { i32 256, ptr @.str.202, ptr @.str.39, i32 0, i32 51488, i8 0, i8 0 }, %struct.samsung_gate_clock { i32 257, ptr @.str.203, ptr @.str.39, i32 0, i32 51488, i8 1, i8 0 }, %struct.samsung_gate_clock { i32 258, ptr @.str.204, ptr @.str.39, i32 0, i32 51488, i8 2, i8 0 }, %struct.samsung_gate_clock { i32 259, ptr @.str.205, ptr @.str.39, i32 0, i32 51488, i8 3, i8 0 }, %struct.samsung_gate_clock { i32 260, ptr @.str.206, ptr @.str.39, i32 0, i32 51488, i8 4, i8 0 }, %struct.samsung_gate_clock { i32 261, ptr @.str.207, ptr @.str.39, i32 0, i32 51488, i8 5, i8 0 }, %struct.samsung_gate_clock { i32 263, ptr @.str.208, ptr @.str.39, i32 0, i32 51488, i8 7, i8 0 }, %struct.samsung_gate_clock { i32 264, ptr @.str.209, ptr @.str.39, i32 0, i32 51488, i8 8, i8 0 }, %struct.samsung_gate_clock { i32 265, ptr @.str.210, ptr @.str.39, i32 0, i32 51488, i8 9, i8 0 }, %struct.samsung_gate_clock { i32 266, ptr @.str.211, ptr @.str.39, i32 0, i32 51488, i8 10, i8 0 }, %struct.samsung_gate_clock { i32 267, ptr @.str.212, ptr @.str.39, i32 0, i32 51488, i8 11, i8 0 }, %struct.samsung_gate_clock { i32 402, ptr @.str.213, ptr @.str.39, i32 0, i32 51488, i8 16, i8 0 }, %struct.samsung_gate_clock { i32 351, ptr @.str.214, ptr @.str.39, i32 0, i32 51488, i8 17, i8 0 }, %struct.samsung_gate_clock { i32 352, ptr @.str.215, ptr @.str.39, i32 0, i32 51488, i8 18, i8 0 }, %struct.samsung_gate_clock { i32 272, ptr @.str.216, ptr @.str.39, i32 0, i32 51492, i8 4, i8 0 }, %struct.samsung_gate_clock { i32 403, ptr @.str.217, ptr @.str.39, i32 0, i32 51492, i8 5, i8 0 }, %struct.samsung_gate_clock { i32 273, ptr @.str.218, ptr @.str.98, i32 0, i32 51496, i8 0, i8 0 }, %struct.samsung_gate_clock { i32 274, ptr @.str.219, ptr @.str.98, i32 0, i32 51496, i8 1, i8 0 }, %struct.samsung_gate_clock { i32 275, ptr @.str.220, ptr @.str.98, i32 0, i32 51496, i8 2, i8 0 }, %struct.samsung_gate_clock { i32 404, ptr @.str.221, ptr @.str.98, i32 0, i32 51496, i8 3, i8 0 }, %struct.samsung_gate_clock { i32 405, ptr @.str.222, ptr @.str.98, i32 0, i32 51496, i8 4, i8 0 }, %struct.samsung_gate_clock { i32 283, ptr @.str.223, ptr @.str.39, i32 0, i32 51508, i8 0, i8 0 }, %struct.samsung_gate_clock { i32 287, ptr @.str.224, ptr @.str.39, i32 0, i32 51508, i8 4, i8 0 }, %struct.samsung_gate_clock { i32 408, ptr @.str.225, ptr @.str.39, i32 0, i32 51508, i8 5, i8 0 }, %struct.samsung_gate_clock { i32 292, ptr @.str.226, ptr @.str.38, i32 0, i32 51520, i8 0, i8 0 }, %struct.samsung_gate_clock { i32 293, ptr @.str.227, ptr @.str.38, i32 0, i32 51520, i8 1, i8 0 }, %struct.samsung_gate_clock { i32 297, ptr @.str.228, ptr @.str.38, i32 0, i32 51520, i8 5, i8 0 }, %struct.samsung_gate_clock { i32 298, ptr @.str.229, ptr @.str.38, i32 0, i32 51520, i8 6, i8 0 }, %struct.samsung_gate_clock { i32 299, ptr @.str.230, ptr @.str.38, i32 0, i32 51520, i8 7, i8 0 }, %struct.samsung_gate_clock { i32 300, ptr @.str.231, ptr @.str.38, i32 0, i32 51520, i8 8, i8 0 }, %struct.samsung_gate_clock { i32 410, ptr @.str.232, ptr @.str.38, i32 0, i32 51520, i8 17, i8 0 }, %struct.samsung_gate_clock { i32 312, ptr @.str.233, ptr @.str.98, i32 0, i32 51536, i8 0, i8 0 }, %struct.samsung_gate_clock { i32 313, ptr @.str.234, ptr @.str.98, i32 0, i32 51536, i8 1, i8 0 }, %struct.samsung_gate_clock { i32 314, ptr @.str.235, ptr @.str.98, i32 0, i32 51536, i8 2, i8 0 }, %struct.samsung_gate_clock { i32 315, ptr @.str.236, ptr @.str.98, i32 0, i32 51536, i8 3, i8 0 }, %struct.samsung_gate_clock { i32 316, ptr @.str.237, ptr @.str.98, i32 0, i32 51536, i8 4, i8 0 }, %struct.samsung_gate_clock { i32 317, ptr @.str.238, ptr @.str.98, i32 0, i32 51536, i8 6, i8 0 }, %struct.samsung_gate_clock { i32 318, ptr @.str.239, ptr @.str.98, i32 0, i32 51536, i8 7, i8 0 }, %struct.samsung_gate_clock { i32 319, ptr @.str.240, ptr @.str.98, i32 0, i32 51536, i8 8, i8 0 }, %struct.samsung_gate_clock { i32 320, ptr @.str.241, ptr @.str.98, i32 0, i32 51536, i8 9, i8 0 }, %struct.samsung_gate_clock { i32 321, ptr @.str.242, ptr @.str.98, i32 0, i32 51536, i8 10, i8 0 }, %struct.samsung_gate_clock { i32 322, ptr @.str.243, ptr @.str.98, i32 0, i32 51536, i8 11, i8 0 }, %struct.samsung_gate_clock { i32 323, ptr @.str.244, ptr @.str.98, i32 0, i32 51536, i8 12, i8 0 }, %struct.samsung_gate_clock { i32 324, ptr @.str.245, ptr @.str.98, i32 0, i32 51536, i8 13, i8 0 }, %struct.samsung_gate_clock { i32 325, ptr @.str.246, ptr @.str.98, i32 0, i32 51536, i8 14, i8 0 }, %struct.samsung_gate_clock { i32 327, ptr @.str.247, ptr @.str.98, i32 0, i32 51536, i8 16, i8 0 }, %struct.samsung_gate_clock { i32 328, ptr @.str.248, ptr @.str.98, i32 0, i32 51536, i8 17, i8 0 }, %struct.samsung_gate_clock { i32 329, ptr @.str.249, ptr @.str.98, i32 0, i32 51536, i8 18, i8 0 }, %struct.samsung_gate_clock { i32 330, ptr @.str.250, ptr @.str.98, i32 0, i32 51536, i8 20, i8 0 }, %struct.samsung_gate_clock { i32 331, ptr @.str.251, ptr @.str.98, i32 0, i32 51536, i8 21, i8 0 }, %struct.samsung_gate_clock { i32 334, ptr @.str.252, ptr @.str.98, i32 0, i32 51536, i8 22, i8 0 }, %struct.samsung_gate_clock { i32 335, ptr @.str.253, ptr @.str.98, i32 0, i32 51536, i8 23, i8 0 }, %struct.samsung_gate_clock { i32 338, ptr @.str.254, ptr @.str.98, i32 0, i32 51536, i8 26, i8 0 }, %struct.samsung_gate_clock { i32 339, ptr @.str.255, ptr @.str.98, i32 0, i32 51536, i8 27, i8 0 }, %struct.samsung_gate_clock { i32 255, ptr @.str.256, ptr @.str.38, i32 0, i32 67840, i8 4, i8 0 }, %struct.samsung_gate_clock { i32 412, ptr @.str.257, ptr @.str.38, i32 0, i32 67840, i8 8, i8 0 }, %struct.samsung_gate_clock { i32 413, ptr @.str.258, ptr @.str.38, i32 0, i32 67840, i8 9, i8 0 }, %struct.samsung_gate_clock { i32 414, ptr @.str.259, ptr @.str.38, i32 0, i32 67840, i8 10, i8 0 }, %struct.samsung_gate_clock { i32 415, ptr @.str.260, ptr @.str.38, i32 0, i32 67840, i8 16, i8 0 }, %struct.samsung_gate_clock { i32 25, ptr @.str.261, ptr @.str.45, i32 4, i32 18944, i8 16, i8 0 }, %struct.samsung_gate_clock { i32 26, ptr @.str.262, ptr @.str.50, i32 4, i32 35328, i8 16, i8 0 }, %struct.samsung_gate_clock { i32 24, ptr @.str.263, ptr @.str.139, i32 4, i32 51712, i8 16, i8 0 }, %struct.samsung_gate_clock { i32 23, ptr @.str.264, ptr @.str.149, i32 4, i32 68096, i8 16, i8 0 }, %struct.samsung_gate_clock { i32 27, ptr @.str.265, ptr @.str.63, i32 4, i32 84480, i8 16, i8 0 }], section ".init.rodata", align 4
@exynos4_fixed_factor_clks = internal constant [4 x %struct.samsung_fixed_factor_clock] [%struct.samsung_fixed_factor_clock { i32 0, ptr @.str.266, ptr @.str.41, i32 1, i32 2, i32 0 }, %struct.samsung_fixed_factor_clock { i32 0, ptr @.str.267, ptr @.str.12, i32 1, i32 2, i32 0 }, %struct.samsung_fixed_factor_clock { i32 0, ptr @.str.268, ptr @.str.11, i32 1, i32 2, i32 0 }, %struct.samsung_fixed_factor_clock { i32 0, ptr @.str.269, ptr @.str.55, i32 1, i32 2, i32 0 }], section ".init.rodata", align 4
@exynos4210_fixed_rate_clks = internal constant [1 x %struct.samsung_fixed_rate_clock] [%struct.samsung_fixed_rate_clock { i32 0, ptr @.str.270, ptr null, i32 0, i32 48000000 }], section ".init.rodata", align 4
@exynos4210_mux_clks = internal constant [52 x %struct.samsung_mux_clock] [%struct.samsung_mux_clock { i32 0, ptr @.str.43, ptr @sclk_ampll_p4210, i8 2, i32 128, i32 16896, i8 0, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.46, ptr @clkout_left_p4210, i8 4, i32 128, i32 18944, i8 0, i8 5, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.48, ptr @sclk_ampll_p4210, i8 2, i32 128, i32 33280, i8 0, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.51, ptr @clkout_right_p4210, i8 4, i32 128, i32 35328, i8 0, i8 5, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.271, ptr @sclk_ampll_p4210, i8 2, i32 128, i32 49680, i8 12, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.99, ptr @sclk_ampll_p4210, i8 2, i32 128, i32 49680, i8 16, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.100, ptr @sclk_ampll_p4210, i8 2, i32 128, i32 49680, i8 20, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.101, ptr @sclk_ampll_p4210, i8 2, i32 128, i32 49680, i8 24, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 397, ptr @.str.272, ptr @mout_mixer_p4210, i8 2, i32 128, i32 49700, i8 4, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.273, ptr @mout_dac_p4210, i8 2, i32 128, i32 49700, i8 8, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.274, ptr @sclk_ampll_p4210, i8 2, i32 128, i32 49712, i8 0, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.275, ptr @sclk_evpll_p, i8 2, i32 128, i32 49712, i8 4, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.276, ptr @mout_g2d_p, i8 2, i32 128, i32 49712, i8 8, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.277, ptr @group1_p4210, i8 9, i32 128, i32 49720, i8 0, i8 4, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.278, ptr @group1_p4210, i8 9, i32 128, i32 49720, i8 12, i8 4, i8 0 }, %struct.samsung_mux_clock { i32 9, ptr @.str.40, ptr @mout_mpll_p, i8 2, i32 128, i32 82432, i8 8, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 19, ptr @.str.53, ptr @mout_core_p4210, i8 2, i32 128, i32 82432, i8 16, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.61, ptr @mout_core_p4210, i8 2, i32 128, i32 82432, i8 20, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 11, ptr @.str.31, ptr @sclk_vpll_p4210, i8 2, i32 128, i32 49680, i8 8, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 384, ptr @.str.66, ptr @group1_p4210, i8 9, i32 128, i32 49696, i8 0, i8 4, i8 0 }, %struct.samsung_mux_clock { i32 385, ptr @.str.68, ptr @group1_p4210, i8 9, i32 128, i32 49696, i8 4, i8 4, i8 0 }, %struct.samsung_mux_clock { i32 386, ptr @.str.70, ptr @group1_p4210, i8 9, i32 128, i32 49696, i8 8, i8 4, i8 0 }, %struct.samsung_mux_clock { i32 387, ptr @.str.72, ptr @group1_p4210, i8 9, i32 128, i32 49696, i8 12, i8 4, i8 0 }, %struct.samsung_mux_clock { i32 388, ptr @.str.74, ptr @group1_p4210, i8 9, i32 128, i32 49696, i8 16, i8 4, i8 0 }, %struct.samsung_mux_clock { i32 389, ptr @.str.76, ptr @group1_p4210, i8 9, i32 128, i32 49696, i8 20, i8 4, i8 0 }, %struct.samsung_mux_clock { i32 390, ptr @.str.78, ptr @group1_p4210, i8 9, i32 128, i32 49696, i8 24, i8 4, i8 0 }, %struct.samsung_mux_clock { i32 391, ptr @.str.80, ptr @group1_p4210, i8 9, i32 128, i32 49696, i8 28, i8 4, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.32, ptr @sclk_ampll_p4210, i8 2, i32 128, i32 49704, i8 0, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 392, ptr @.str.33, ptr @sclk_ampll_p4210, i8 2, i32 132, i32 49708, i8 0, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.84, ptr @group1_p4210, i8 9, i32 128, i32 49716, i8 0, i8 4, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.86, ptr @group1_p4210, i8 9, i32 128, i32 49716, i8 12, i8 4, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.88, ptr @mout_audio0_p4210, i8 9, i32 128, i32 49724, i8 0, i8 4, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.91, ptr @group1_p4210, i8 9, i32 128, i32 49728, i8 0, i8 4, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.93, ptr @group1_p4210, i8 9, i32 128, i32 49728, i8 4, i8 4, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.95, ptr @group1_p4210, i8 9, i32 128, i32 49728, i8 8, i8 4, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.97, ptr @group1_p4210, i8 9, i32 128, i32 49728, i8 12, i8 4, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.109, ptr @group1_p4210, i8 9, i32 128, i32 49728, i8 16, i8 4, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.279, ptr @sclk_ampll_p4210, i8 2, i32 128, i32 49728, i8 24, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.112, ptr @group1_p4210, i8 9, i32 128, i32 49744, i8 0, i8 4, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.114, ptr @group1_p4210, i8 9, i32 128, i32 49744, i8 4, i8 4, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.116, ptr @group1_p4210, i8 9, i32 128, i32 49744, i8 8, i8 4, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.118, ptr @group1_p4210, i8 9, i32 128, i32 49744, i8 12, i8 4, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.120, ptr @group1_p4210, i8 9, i32 128, i32 49744, i8 16, i8 4, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.131, ptr @mout_audio1_p4210, i8 9, i32 128, i32 49748, i8 0, i8 4, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.133, ptr @mout_audio2_p4210, i8 9, i32 128, i32 49748, i8 4, i8 4, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.122, ptr @group1_p4210, i8 9, i32 128, i32 49748, i8 16, i8 4, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.125, ptr @group1_p4210, i8 9, i32 128, i32 49748, i8 20, i8 4, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.128, ptr @group1_p4210, i8 9, i32 128, i32 49748, i8 24, i8 4, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.140, ptr @clkout_top_p4210, i8 21, i32 128, i32 51712, i8 0, i8 5, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.148, ptr @mout_pwi_p4210, i8 9, i32 128, i32 66048, i8 16, i8 4, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.150, ptr @clkout_dmc_p4210, i8 7, i32 128, i32 68096, i8 0, i8 5, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.64, ptr @clkout_cpu_p4210, i8 12, i32 128, i32 84480, i8 0, i8 5, i8 0 }], section ".init.rodata", align 4
@exynos4210_div_clks = internal constant [6 x %struct.samsung_div_clock] [%struct.samsung_div_clock { i32 13, ptr @.str.152, ptr @.str.271, i32 0, i32 50448, i8 0, i8 3, i8 0, ptr null }, %struct.samsung_div_clock { i32 177, ptr @.str.291, ptr @.str.276, i32 0, i32 50480, i8 0, i8 4, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.292, ptr @.str.277, i32 0, i32 50488, i8 0, i8 4, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.293, ptr @.str.278, i32 0, i32 50488, i8 16, i8 4, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.294, ptr @.str.279, i32 0, i32 50496, i8 20, i8 4, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.295, ptr @.str.293, i32 4, i32 50488, i8 20, i8 4, i8 0, ptr null }], section ".init.rodata", align 4
@exynos4210_gate_clks = internal constant [29 x %struct.samsung_gate_clock] [%struct.samsung_gate_clock { i32 270, ptr @.str.296, ptr @.str.39, i32 0, i32 51492, i8 2, i8 0 }, %struct.samsung_gate_clock { i32 277, ptr @.str.297, ptr @.str.152, i32 0, i32 51504, i8 0, i8 0 }, %struct.samsung_gate_clock { i32 278, ptr @.str.298, ptr @.str.152, i32 0, i32 51504, i8 1, i8 0 }, %struct.samsung_gate_clock { i32 279, ptr @.str.299, ptr @.str.152, i32 0, i32 51504, i8 2, i8 0 }, %struct.samsung_gate_clock { i32 280, ptr @.str.300, ptr @.str.152, i32 0, i32 51504, i8 3, i8 0 }, %struct.samsung_gate_clock { i32 282, ptr @.str.301, ptr @.str.152, i32 0, i32 51504, i8 5, i8 0 }, %struct.samsung_gate_clock { i32 407, ptr @.str.302, ptr @.str.152, i32 0, i32 51504, i8 9, i8 0 }, %struct.samsung_gate_clock { i32 409, ptr @.str.303, ptr @.str.39, i32 0, i32 51512, i8 5, i8 0 }, %struct.samsung_gate_clock { i32 294, ptr @.str.304, ptr @.str.38, i32 0, i32 51520, i8 2, i8 0 }, %struct.samsung_gate_clock { i32 295, ptr @.str.305, ptr @.str.38, i32 0, i32 51520, i8 3, i8 0 }, %struct.samsung_gate_clock { i32 302, ptr @.str.306, ptr @.str.38, i32 0, i32 51520, i8 10, i8 0 }, %struct.samsung_gate_clock { i32 306, ptr @.str.307, ptr @.str.38, i32 0, i32 51520, i8 14, i8 0 }, %struct.samsung_gate_clock { i32 309, ptr @.str.308, ptr @.str.38, i32 0, i32 51520, i8 18, i8 0 }, %struct.samsung_gate_clock { i32 340, ptr @.str.309, ptr @.str.98, i32 0, i32 51536, i8 28, i8 0 }, %struct.samsung_gate_clock { i32 341, ptr @.str.310, ptr @.str.98, i32 8, i32 51552, i8 0, i8 0 }, %struct.samsung_gate_clock { i32 342, ptr @.str.311, ptr @.str.98, i32 8, i32 51552, i8 0, i8 0 }, %struct.samsung_gate_clock { i32 343, ptr @.str.312, ptr @.str.98, i32 0, i32 51552, i8 11, i8 0 }, %struct.samsung_gate_clock { i32 281, ptr @.str.313, ptr @.str.152, i32 0, i32 51504, i8 4, i8 0 }, %struct.samsung_gate_clock { i32 164, ptr @.str.314, ptr @.str.295, i32 4, i32 49976, i8 12, i8 0 }, %struct.samsung_gate_clock { i32 150, ptr @.str.315, ptr @.str.294, i32 4, i32 49984, i8 24, i8 0 }, %struct.samsung_gate_clock { i32 137, ptr @.str.316, ptr @.str.272, i32 0, i32 49956, i8 4, i8 0 }, %struct.samsung_gate_clock { i32 138, ptr @.str.281, ptr @.str.273, i32 0, i32 49956, i8 8, i8 0 }, %struct.samsung_gate_clock { i32 326, ptr @.str.317, ptr @.str.98, i32 0, i32 51536, i8 15, i8 0 }, %struct.samsung_gate_clock { i32 344, ptr @.str.318, ptr @.str.98, i32 0, i32 51552, i8 13, i8 0 }, %struct.samsung_gate_clock { i32 345, ptr @.str.319, ptr @.str.98, i32 0, i32 51552, i8 14, i8 0 }, %struct.samsung_gate_clock { i32 346, ptr @.str.320, ptr @.str.98, i32 0, i32 51552, i8 15, i8 0 }, %struct.samsung_gate_clock { i32 347, ptr @.str.321, ptr @.str.98, i32 0, i32 51552, i8 16, i8 0 }, %struct.samsung_gate_clock { i32 163, ptr @.str.322, ptr @.str.292, i32 4, i32 49976, i8 0, i8 0 }, %struct.samsung_gate_clock { i32 383, ptr @.str.323, ptr @.str.98, i32 0, i32 51552, i8 17, i8 0 }], section ".init.rodata", align 4
@exynos4210_fixed_factor_clks = internal constant [1 x %struct.samsung_fixed_factor_clock] [%struct.samsung_fixed_factor_clock { i32 0, ptr @.str.280, ptr @.str.40, i32 1, i32 2, i32 0 }], section ".init.rodata", align 4
@exynos4210_cpu_clks = internal constant [1 x %struct.samsung_cpu_clock] [%struct.samsung_cpu_clock { i32 12, ptr @.str.324, i32 20, i32 9, i32 3, i32 82432, ptr @e4210_armclk_d }], section ".init.rodata", align 4
@exynos4x12_mux_clks = internal constant [68 x %struct.samsung_mux_clock] [%struct.samsung_mux_clock { i32 0, ptr @.str.325, ptr @mout_mpll_p, i8 2, i32 128, i32 16896, i8 4, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.43, ptr @mout_gdl_p4x12, i8 2, i32 128, i32 16896, i8 0, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.46, ptr @clkout_left_p4x12, i8 4, i32 128, i32 18944, i8 0, i8 5, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.326, ptr @mout_mpll_p, i8 2, i32 128, i32 33280, i8 4, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.48, ptr @mout_gdr_p4x12, i8 2, i32 128, i32 33280, i8 0, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.51, ptr @clkout_right_p4x12, i8 4, i32 128, i32 35328, i8 0, i8 5, i8 0 }, %struct.samsung_mux_clock { i32 18, ptr @.str.327, ptr @mout_mpll_user_p4x12, i8 2, i32 128, i32 82432, i8 24, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.64, ptr @clkout_cpu_p4x12, i8 12, i32 128, i32 84480, i8 0, i8 5, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.328, ptr @aclk_p4412, i8 2, i32 128, i32 49684, i8 4, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.329, ptr @aclk_p4412, i8 2, i32 128, i32 49684, i8 8, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 17, ptr @.str.330, ptr @mout_mpll_user_p4x12, i8 2, i32 128, i32 49684, i8 12, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.331, ptr @mout_user_aclk266_gps_p4x12, i8 2, i32 128, i32 49684, i8 16, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 13, ptr @.str.152, ptr @mout_user_aclk200_p4x12, i8 2, i32 128, i32 49684, i8 20, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 395, ptr @.str.332, ptr @mout_user_aclk400_mcuisp_p4x12, i8 2, i32 128, i32 49684, i8 24, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.271, ptr @aclk_p4412, i8 2, i32 128, i32 49680, i8 12, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.99, ptr @aclk_p4412, i8 2, i32 128, i32 49680, i8 16, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.100, ptr @aclk_p4412, i8 2, i32 128, i32 49680, i8 20, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.101, ptr @aclk_p4412, i8 2, i32 128, i32 49680, i8 24, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.333, ptr @group1_p4x12, i8 9, i32 128, i32 49716, i8 4, i8 4, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.334, ptr @group1_p4x12, i8 9, i32 128, i32 49716, i8 8, i8 4, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.279, ptr @sclk_ampll_p4x12, i8 2, i32 128, i32 49728, i8 24, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.335, ptr @sclk_ampll_p4x12, i8 2, i32 128, i32 49752, i8 0, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.336, ptr @sclk_evpll_p, i8 2, i32 128, i32 49752, i8 4, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.337, ptr @mout_jpeg_p, i8 2, i32 128, i32 49752, i8 8, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 9, ptr @.str.40, ptr @mout_mpll_p, i8 2, i32 128, i32 66048, i8 12, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 11, ptr @.str.31, ptr @mout_vpll_p, i8 2, i32 128, i32 49680, i8 8, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 19, ptr @.str.53, ptr @mout_core_p4x12, i8 2, i32 128, i32 82432, i8 16, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.61, ptr @mout_core_p4x12, i8 2, i32 128, i32 82432, i8 20, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 384, ptr @.str.66, ptr @group1_p4x12, i8 9, i32 128, i32 49696, i8 0, i8 4, i8 0 }, %struct.samsung_mux_clock { i32 385, ptr @.str.68, ptr @group1_p4x12, i8 9, i32 128, i32 49696, i8 4, i8 4, i8 0 }, %struct.samsung_mux_clock { i32 386, ptr @.str.70, ptr @group1_p4x12, i8 9, i32 128, i32 49696, i8 8, i8 4, i8 0 }, %struct.samsung_mux_clock { i32 387, ptr @.str.72, ptr @group1_p4x12, i8 9, i32 128, i32 49696, i8 12, i8 4, i8 0 }, %struct.samsung_mux_clock { i32 388, ptr @.str.74, ptr @group1_p4x12, i8 9, i32 128, i32 49696, i8 16, i8 4, i8 0 }, %struct.samsung_mux_clock { i32 389, ptr @.str.76, ptr @group1_p4x12, i8 9, i32 128, i32 49696, i8 20, i8 4, i8 0 }, %struct.samsung_mux_clock { i32 390, ptr @.str.78, ptr @group1_p4x12, i8 9, i32 128, i32 49696, i8 24, i8 4, i8 0 }, %struct.samsung_mux_clock { i32 391, ptr @.str.80, ptr @group1_p4x12, i8 9, i32 128, i32 49696, i8 28, i8 4, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.32, ptr @sclk_ampll_p4x12, i8 2, i32 128, i32 49704, i8 0, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 392, ptr @.str.33, ptr @sclk_ampll_p4x12, i8 2, i32 132, i32 49708, i8 0, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.84, ptr @group1_p4x12, i8 9, i32 128, i32 49716, i8 0, i8 4, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.86, ptr @group1_p4x12, i8 9, i32 128, i32 49716, i8 12, i8 4, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.88, ptr @mout_audio0_p4x12, i8 9, i32 128, i32 49724, i8 0, i8 4, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.91, ptr @group1_p4x12, i8 9, i32 128, i32 49728, i8 0, i8 4, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.93, ptr @group1_p4x12, i8 9, i32 128, i32 49728, i8 4, i8 4, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.95, ptr @group1_p4x12, i8 9, i32 128, i32 49728, i8 8, i8 4, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.97, ptr @group1_p4x12, i8 9, i32 128, i32 49728, i8 12, i8 4, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.109, ptr @group1_p4x12, i8 9, i32 128, i32 49728, i8 16, i8 4, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.338, ptr @aclk_p4412, i8 2, i32 128, i32 49728, i8 24, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.112, ptr @group1_p4x12, i8 9, i32 128, i32 49744, i8 0, i8 4, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.114, ptr @group1_p4x12, i8 9, i32 128, i32 49744, i8 4, i8 4, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.116, ptr @group1_p4x12, i8 9, i32 128, i32 49744, i8 8, i8 4, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.118, ptr @group1_p4x12, i8 9, i32 128, i32 49744, i8 12, i8 4, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.120, ptr @group1_p4x12, i8 9, i32 128, i32 49744, i8 16, i8 4, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.131, ptr @mout_audio1_p4x12, i8 9, i32 128, i32 49748, i8 0, i8 4, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.133, ptr @mout_audio2_p4x12, i8 9, i32 128, i32 49748, i8 4, i8 4, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.122, ptr @group1_p4x12, i8 9, i32 128, i32 49748, i8 16, i8 4, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.125, ptr @group1_p4x12, i8 9, i32 128, i32 49748, i8 20, i8 4, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.128, ptr @group1_p4x12, i8 9, i32 128, i32 49748, i8 24, i8 4, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.339, ptr @group1_p4x12, i8 9, i32 128, i32 49720, i8 0, i8 4, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.340, ptr @group1_p4x12, i8 9, i32 128, i32 49720, i8 4, i8 4, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.341, ptr @group1_p4x12, i8 9, i32 128, i32 49720, i8 8, i8 4, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.342, ptr @group1_p4x12, i8 9, i32 128, i32 49720, i8 12, i8 4, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.140, ptr @clkout_top_p4x12, i8 32, i32 128, i32 51712, i8 0, i8 5, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.343, ptr @sclk_ampll_p4210, i8 2, i32 128, i32 66048, i8 0, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.148, ptr @mout_pwi_p4x12, i8 9, i32 128, i32 66048, i8 16, i8 4, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.274, ptr @sclk_ampll_p4210, i8 2, i32 128, i32 66048, i8 20, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.275, ptr @sclk_evpll_p, i8 2, i32 128, i32 66048, i8 24, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.276, ptr @mout_g2d_p, i8 2, i32 128, i32 66048, i8 28, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.150, ptr @clkout_dmc_p4x12, i8 11, i32 128, i32 68096, i8 0, i8 5, i8 0 }], section ".init.rodata", align 4
@exynos4x12_div_clks = internal constant [17 x %struct.samsung_div_clock] [%struct.samsung_div_clock { i32 0, ptr @.str.361, ptr @.str.333, i32 0, i32 50484, i8 4, i8 4, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.362, ptr @.str.334, i32 0, i32 50484, i8 8, i8 4, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.363, ptr @.str.362, i32 0, i32 50484, i8 12, i8 4, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.364, ptr @.str.338, i32 0, i32 50496, i8 20, i8 4, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.352, ptr @.str.337, i32 0, i32 50536, i8 0, i8 4, i8 0, ptr null }, %struct.samsung_div_clock { i32 454, ptr @.str.348, ptr @.str.271, i32 0, i32 50448, i8 0, i8 3, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.347, ptr @.str.328, i32 0, i32 50448, i8 20, i8 3, i8 0, ptr null }, %struct.samsung_div_clock { i32 455, ptr @.str.349, ptr @.str.329, i32 0, i32 50448, i8 24, i8 3, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.365, ptr @.str.339, i32 0, i32 50488, i8 0, i8 4, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.366, ptr @.str.340, i32 0, i32 50488, i8 4, i8 4, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.367, ptr @.str.366, i32 0, i32 50488, i8 8, i8 8, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.368, ptr @.str.341, i32 0, i32 50488, i8 16, i8 4, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.369, ptr @.str.368, i32 0, i32 50488, i8 20, i8 8, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.370, ptr @.str.342, i32 0, i32 50488, i8 28, i8 4, i8 0, ptr null }, %struct.samsung_div_clock { i32 177, ptr @.str.291, ptr @.str.276, i32 0, i32 66820, i8 0, i8 4, i8 0, ptr null }, %struct.samsung_div_clock { i32 458, ptr @.str.359, ptr @.str.343, i32 0, i32 66820, i8 4, i8 3, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.360, ptr @.str.359, i32 0, i32 66820, i8 12, i8 3, i8 0, ptr null }], section ".init.rodata", align 4
@exynos4x12_gate_clks = internal constant [29 x %struct.samsung_gate_clock] [%struct.samsung_gate_clock { i32 353, ptr @.str.371, ptr @.str.152, i32 0, i32 18432, i8 6, i8 0 }, %struct.samsung_gate_clock { i32 348, ptr @.str.372, ptr @.str.26, i32 0, i32 51516, i8 0, i8 0 }, %struct.samsung_gate_clock { i32 285, ptr @.str.373, ptr @.str.39, i32 0, i32 51508, i8 2, i8 0 }, %struct.samsung_gate_clock { i32 278, ptr @.str.298, ptr @.str.152, i32 0, i32 18736, i8 1, i8 0 }, %struct.samsung_gate_clock { i32 279, ptr @.str.299, ptr @.str.152, i32 0, i32 18736, i8 2, i8 0 }, %struct.samsung_gate_clock { i32 282, ptr @.str.301, ptr @.str.152, i32 0, i32 18736, i8 5, i8 0 }, %struct.samsung_gate_clock { i32 407, ptr @.str.302, ptr @.str.152, i32 0, i32 18736, i8 9, i8 0 }, %struct.samsung_gate_clock { i32 326, ptr @.str.317, ptr @.str.38, i32 0, i32 51012, i8 16, i8 0 }, %struct.samsung_gate_clock { i32 349, ptr @.str.374, ptr @.str.38, i32 0, i32 51520, i8 10, i8 0 }, %struct.samsung_gate_clock { i32 341, ptr @.str.310, ptr @.str.98, i32 8, i32 35168, i8 0, i8 0 }, %struct.samsung_gate_clock { i32 342, ptr @.str.311, ptr @.str.98, i32 8, i32 35168, i8 1, i8 0 }, %struct.samsung_gate_clock { i32 343, ptr @.str.312, ptr @.str.98, i32 0, i32 35168, i8 11, i8 0 }, %struct.samsung_gate_clock { i32 141, ptr @.str.375, ptr @.str.361, i32 4, i32 49972, i8 4, i8 0 }, %struct.samsung_gate_clock { i32 142, ptr @.str.376, ptr @.str.363, i32 4, i32 49972, i8 8, i8 0 }, %struct.samsung_gate_clock { i32 169, ptr @.str.357, ptr @.str.364, i32 4, i32 49984, i8 24, i8 0 }, %struct.samsung_gate_clock { i32 281, ptr @.str.313, ptr @.str.152, i32 0, i32 18736, i8 4, i8 0 }, %struct.samsung_gate_clock { i32 344, ptr @.str.318, ptr @.str.98, i32 0, i32 35168, i8 13, i8 0 }, %struct.samsung_gate_clock { i32 346, ptr @.str.320, ptr @.str.98, i32 0, i32 35168, i8 15, i8 0 }, %struct.samsung_gate_clock { i32 347, ptr @.str.321, ptr @.str.98, i32 0, i32 35168, i8 16, i8 0 }, %struct.samsung_gate_clock { i32 379, ptr @.str.377, ptr @.str.365, i32 0, i32 51512, i8 0, i8 0 }, %struct.samsung_gate_clock { i32 380, ptr @.str.378, ptr @.str.367, i32 0, i32 51512, i8 1, i8 0 }, %struct.samsung_gate_clock { i32 381, ptr @.str.379, ptr @.str.369, i32 0, i32 51512, i8 2, i8 0 }, %struct.samsung_gate_clock { i32 382, ptr @.str.380, ptr @.str.370, i32 0, i32 51512, i8 3, i8 0 }, %struct.samsung_gate_clock { i32 345, ptr @.str.319, ptr @.str.98, i32 0, i32 35168, i8 14, i8 0 }, %struct.samsung_gate_clock { i32 332, ptr @.str.381, ptr @.str.98, i32 0, i32 51516, i8 2, i8 0 }, %struct.samsung_gate_clock { i32 333, ptr @.str.382, ptr @.str.98, i32 0, i32 51516, i8 3, i8 0 }, %struct.samsung_gate_clock { i32 277, ptr @.str.297, ptr @.str.152, i32 0, i32 67840, i8 23, i8 0 }, %struct.samsung_gate_clock { i32 280, ptr @.str.300, ptr @.str.152, i32 0, i32 67840, i8 24, i8 0 }, %struct.samsung_gate_clock { i32 383, ptr @.str.323, ptr @.str.98, i32 0, i32 35168, i8 17, i8 0 }], section ".init.rodata", align 4
@exynos4x12_fixed_factor_clks = internal constant [4 x %struct.samsung_fixed_factor_clock] [%struct.samsung_fixed_factor_clock { i32 0, ptr @.str.344, ptr @.str.325, i32 1, i32 2, i32 0 }, %struct.samsung_fixed_factor_clock { i32 0, ptr @.str.345, ptr @.str.326, i32 1, i32 2, i32 0 }, %struct.samsung_fixed_factor_clock { i32 0, ptr @.str.383, ptr @.str.330, i32 1, i32 2, i32 0 }, %struct.samsung_fixed_factor_clock { i32 0, ptr @.str.384, ptr @.str.327, i32 1, i32 2, i32 0 }], section ".init.rodata", align 4
@exynos4412_cpu_clks = internal constant [1 x %struct.samsung_cpu_clock] [%struct.samsung_cpu_clock { i32 12, ptr @.str.324, i32 20, i32 18, i32 3, i32 82432, ptr @e4412_armclk_d }], section ".init.rodata", align 4
@exynos4_clk_regs = internal constant [77 x i32] [i32 49168, i32 49184, i32 49424, i32 49428, i32 49432, i32 49440, i32 49444, i32 49448, i32 16896, i32 17664, i32 18432, i32 33280, i32 34048, i32 34816, i32 49680, i32 49684, i32 49696, i32 49700, i32 49704, i32 49708, i32 49716, i32 49724, i32 49728, i32 49744, i32 49748, i32 49936, i32 49952, i32 49956, i32 49972, i32 49980, i32 49984, i32 50000, i32 50004, i32 50448, i32 50464, i32 50468, i32 50472, i32 50476, i32 50480, i32 50484, i32 50492, i32 50496, i32 50500, i32 50504, i32 50508, i32 50512, i32 50516, i32 50520, i32 50524, i32 50528, i32 50532, i32 51232, i32 51488, i32 51492, i32 51496, i32 51500, i32 51508, i32 51520, i32 51532, i32 51536, i32 51568, i32 66304, i32 66048, i32 66816, i32 66820, i32 67840, i32 82176, i32 82432, i32 83200, i32 83204, i32 83968, i32 84224, i32 18944, i32 35328, i32 51712, i32 68096, i32 84480], section ".init.rodata", align 4
@src_mask_suspend = internal constant [11 x %struct.samsung_clk_reg_dump] [%struct.samsung_clk_reg_dump { i32 49440, i32 -2141191422 }, %struct.samsung_clk_reg_dump { i32 49424, i32 -2140208382 }, %struct.samsung_clk_reg_dump { i32 49936, i32 1 }, %struct.samsung_clk_reg_dump { i32 49952, i32 286331153 }, %struct.samsung_clk_reg_dump { i32 49956, i32 273 }, %struct.samsung_clk_reg_dump { i32 49972, i32 4369 }, %struct.samsung_clk_reg_dump { i32 49980, i32 1 }, %struct.samsung_clk_reg_dump { i32 49984, i32 16847121 }, %struct.samsung_clk_reg_dump { i32 50000, i32 17895697 }, %struct.samsung_clk_reg_dump { i32 50004, i32 17891601 }, %struct.samsung_clk_reg_dump { i32 66304, i32 65536 }], align 4
@exynos4210_clk_save = internal constant [9 x i32] [i32 49712, i32 49720, i32 49976, i32 50488, i32 51504, i32 51512, i32 51552, i32 82184, i32 86048], section ".init.rodata", align 4
@src_mask_suspend_e4210 = internal constant [1 x %struct.samsung_clk_reg_dump] [%struct.samsung_clk_reg_dump { i32 49976, i32 4369 }], align 4
@exynos4x12_clk_save = internal constant [8 x i32] [i32 18736, i32 35168, i32 49752, i32 50488, i32 50536, i32 65800, i32 86048, i32 86052], section ".init.rodata", align 4
@.str.1 = private unnamed_addr constant [96 x i8] c"\016%s clocks: sclk_apll = %ld, sclk_mpll = %ld\0A\09sclk_epll = %ld, sclk_vpll = %ld, arm_clk = %ld\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"Exynos4210\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"Exynos4x12\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"xxti\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"xusbxti\00", align 1
@.str.6 = private unnamed_addr constant [83 x i8] c"\013%s: failed to lookup parent clock %s, assuming fin_pll clock frequency is 24MHz\0A\00", align 1
@__func__.exynos4_clk_register_finpll = private unnamed_addr constant [28 x i8] c"exynos4_clk_register_finpll\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"fin_pll\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"samsung,exynos4210-chipid\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"mout_vpllsrc\00", align 1
@mout_vpllsrc_p = internal constant [2 x ptr] [ptr @.str.7, ptr @.str.10], section ".init.rodata", align 4
@.str.10 = private unnamed_addr constant [13 x i8] c"sclk_hdmi24m\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"fout_apll\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"fout_mpll\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"fout_epll\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"fout_vpll\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"sclk_hdmiphy\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"hdmi\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"sclk_usbphy0\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"mout_apll\00", align 1
@mout_apll_p = internal constant [2 x ptr] [ptr @.str.7, ptr @.str.11], section ".init.rodata", align 4
@.str.19 = private unnamed_addr constant [10 x i8] c"mout_hdmi\00", align 1
@mout_hdmi_p = internal constant [2 x ptr] [ptr @.str.30, ptr @.str.15], section ".init.rodata", align 4
@.str.20 = private unnamed_addr constant [10 x i8] c"mout_mfc1\00", align 1
@sclk_evpll_p = internal constant [2 x ptr] [ptr @.str.26, ptr @.str.31], section ".init.rodata", align 4
@.str.21 = private unnamed_addr constant [9 x i8] c"mout_mfc\00", align 1
@mout_mfc_p = internal constant [2 x ptr] [ptr @.str.32, ptr @.str.20], section ".init.rodata", align 4
@.str.22 = private unnamed_addr constant [10 x i8] c"mout_g3d1\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"mout_g3d\00", align 1
@mout_g3d_p = internal constant [2 x ptr] [ptr @.str.33, ptr @.str.22], section ".init.rodata", align 4
@.str.24 = private unnamed_addr constant [11 x i8] c"mout_spdif\00", align 1
@mout_spdif_p = internal constant [4 x ptr] [ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37], section ".init.rodata", align 4
@.str.25 = private unnamed_addr constant [14 x i8] c"mout_onenand1\00", align 1
@mout_onenand1_p = internal constant [2 x ptr] [ptr @.str.27, ptr @.str.31], section ".init.rodata", align 4
@.str.26 = private unnamed_addr constant [10 x i8] c"sclk_epll\00", align 1
@mout_epll_p = internal constant [2 x ptr] [ptr @.str.7, ptr @.str.13], section ".init.rodata", align 4
@.str.27 = private unnamed_addr constant [13 x i8] c"mout_onenand\00", align 1
@mout_onenand_p = internal constant [2 x ptr] [ptr @.str.38, ptr @.str.39], section ".init.rodata", align 4
@.str.28 = private unnamed_addr constant [13 x i8] c"mout_dmc_bus\00", align 1
@sclk_ampll_p4210 = internal constant [2 x ptr] [ptr @.str.40, ptr @.str.41], section ".init.rodata", align 4
@.str.29 = private unnamed_addr constant [10 x i8] c"mout_dphy\00", align 1
@.str.30 = private unnamed_addr constant [11 x i8] c"sclk_pixel\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"sclk_vpll\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"mout_mfc0\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"mout_g3d0\00", align 1
@.str.34 = private unnamed_addr constant [12 x i8] c"sclk_audio0\00", align 1
@.str.35 = private unnamed_addr constant [12 x i8] c"sclk_audio1\00", align 1
@.str.36 = private unnamed_addr constant [12 x i8] c"sclk_audio2\00", align 1
@.str.37 = private unnamed_addr constant [13 x i8] c"spdif_extclk\00", align 1
@.str.38 = private unnamed_addr constant [8 x i8] c"aclk133\00", align 1
@.str.39 = private unnamed_addr constant [8 x i8] c"aclk160\00", align 1
@.str.40 = private unnamed_addr constant [10 x i8] c"sclk_mpll\00", align 1
@.str.41 = private unnamed_addr constant [10 x i8] c"sclk_apll\00", align 1
@.str.42 = private unnamed_addr constant [8 x i8] c"div_gdl\00", align 1
@.str.43 = private unnamed_addr constant [9 x i8] c"mout_gdl\00", align 1
@.str.44 = private unnamed_addr constant [8 x i8] c"div_gpl\00", align 1
@.str.45 = private unnamed_addr constant [19 x i8] c"div_clkout_leftbus\00", align 1
@.str.46 = private unnamed_addr constant [20 x i8] c"mout_clkout_leftbus\00", align 1
@.str.47 = private unnamed_addr constant [8 x i8] c"div_gdr\00", align 1
@.str.48 = private unnamed_addr constant [9 x i8] c"mout_gdr\00", align 1
@.str.49 = private unnamed_addr constant [8 x i8] c"div_gpr\00", align 1
@.str.50 = private unnamed_addr constant [20 x i8] c"div_clkout_rightbus\00", align 1
@.str.51 = private unnamed_addr constant [21 x i8] c"mout_clkout_rightbus\00", align 1
@.str.52 = private unnamed_addr constant [9 x i8] c"div_core\00", align 1
@.str.53 = private unnamed_addr constant [10 x i8] c"mout_core\00", align 1
@.str.54 = private unnamed_addr constant [11 x i8] c"div_corem0\00", align 1
@.str.55 = private unnamed_addr constant [10 x i8] c"div_core2\00", align 1
@.str.56 = private unnamed_addr constant [11 x i8] c"div_corem1\00", align 1
@.str.57 = private unnamed_addr constant [11 x i8] c"div_periph\00", align 1
@.str.58 = private unnamed_addr constant [8 x i8] c"div_atb\00", align 1
@.str.59 = private unnamed_addr constant [13 x i8] c"div_pclk_dbg\00", align 1
@.str.60 = private unnamed_addr constant [9 x i8] c"div_copy\00", align 1
@.str.61 = private unnamed_addr constant [9 x i8] c"mout_hpm\00", align 1
@.str.62 = private unnamed_addr constant [8 x i8] c"div_hpm\00", align 1
@.str.63 = private unnamed_addr constant [15 x i8] c"div_clkout_cpu\00", align 1
@.str.64 = private unnamed_addr constant [16 x i8] c"mout_clkout_cpu\00", align 1
@.str.65 = private unnamed_addr constant [10 x i8] c"div_fimc0\00", align 1
@.str.66 = private unnamed_addr constant [11 x i8] c"mout_fimc0\00", align 1
@.str.67 = private unnamed_addr constant [10 x i8] c"div_fimc1\00", align 1
@.str.68 = private unnamed_addr constant [11 x i8] c"mout_fimc1\00", align 1
@.str.69 = private unnamed_addr constant [10 x i8] c"div_fimc2\00", align 1
@.str.70 = private unnamed_addr constant [11 x i8] c"mout_fimc2\00", align 1
@.str.71 = private unnamed_addr constant [10 x i8] c"div_fimc3\00", align 1
@.str.72 = private unnamed_addr constant [11 x i8] c"mout_fimc3\00", align 1
@.str.73 = private unnamed_addr constant [9 x i8] c"div_cam0\00", align 1
@.str.74 = private unnamed_addr constant [10 x i8] c"mout_cam0\00", align 1
@.str.75 = private unnamed_addr constant [9 x i8] c"div_cam1\00", align 1
@.str.76 = private unnamed_addr constant [10 x i8] c"mout_cam1\00", align 1
@.str.77 = private unnamed_addr constant [10 x i8] c"div_csis0\00", align 1
@.str.78 = private unnamed_addr constant [11 x i8] c"mout_csis0\00", align 1
@.str.79 = private unnamed_addr constant [10 x i8] c"div_csis1\00", align 1
@.str.80 = private unnamed_addr constant [11 x i8] c"mout_csis1\00", align 1
@.str.81 = private unnamed_addr constant [9 x i8] c"sclk_mfc\00", align 1
@.str.82 = private unnamed_addr constant [9 x i8] c"sclk_g3d\00", align 1
@.str.83 = private unnamed_addr constant [10 x i8] c"div_fimd0\00", align 1
@.str.84 = private unnamed_addr constant [11 x i8] c"mout_fimd0\00", align 1
@.str.85 = private unnamed_addr constant [10 x i8] c"div_mipi0\00", align 1
@.str.86 = private unnamed_addr constant [11 x i8] c"mout_mipi0\00", align 1
@.str.87 = private unnamed_addr constant [11 x i8] c"div_audio0\00", align 1
@.str.88 = private unnamed_addr constant [12 x i8] c"mout_audio0\00", align 1
@.str.89 = private unnamed_addr constant [10 x i8] c"sclk_pcm0\00", align 1
@.str.90 = private unnamed_addr constant [9 x i8] c"div_mmc0\00", align 1
@.str.91 = private unnamed_addr constant [10 x i8] c"mout_mmc0\00", align 1
@.str.92 = private unnamed_addr constant [9 x i8] c"div_mmc1\00", align 1
@.str.93 = private unnamed_addr constant [10 x i8] c"mout_mmc1\00", align 1
@.str.94 = private unnamed_addr constant [9 x i8] c"div_mmc2\00", align 1
@.str.95 = private unnamed_addr constant [10 x i8] c"mout_mmc2\00", align 1
@.str.96 = private unnamed_addr constant [9 x i8] c"div_mmc3\00", align 1
@.str.97 = private unnamed_addr constant [10 x i8] c"mout_mmc3\00", align 1
@.str.98 = private unnamed_addr constant [8 x i8] c"aclk100\00", align 1
@.str.99 = private unnamed_addr constant [13 x i8] c"mout_aclk100\00", align 1
@.str.100 = private unnamed_addr constant [13 x i8] c"mout_aclk160\00", align 1
@.str.101 = private unnamed_addr constant [13 x i8] c"mout_aclk133\00", align 1
@.str.102 = private unnamed_addr constant [12 x i8] c"div_onenand\00", align 1
@.str.103 = private unnamed_addr constant [13 x i8] c"sclk_slimbus\00", align 1
@.str.104 = private unnamed_addr constant [10 x i8] c"sclk_pcm1\00", align 1
@.str.105 = private unnamed_addr constant [10 x i8] c"sclk_pcm2\00", align 1
@.str.106 = private unnamed_addr constant [10 x i8] c"sclk_i2s1\00", align 1
@.str.107 = private unnamed_addr constant [10 x i8] c"sclk_i2s2\00", align 1
@.str.108 = private unnamed_addr constant [9 x i8] c"div_mmc4\00", align 1
@.str.109 = private unnamed_addr constant [10 x i8] c"mout_mmc4\00", align 1
@.str.110 = private unnamed_addr constant [13 x i8] c"div_mmc_pre4\00", align 1
@.str.111 = private unnamed_addr constant [10 x i8] c"div_uart0\00", align 1
@.str.112 = private unnamed_addr constant [11 x i8] c"mout_uart0\00", align 1
@.str.113 = private unnamed_addr constant [10 x i8] c"div_uart1\00", align 1
@.str.114 = private unnamed_addr constant [11 x i8] c"mout_uart1\00", align 1
@.str.115 = private unnamed_addr constant [10 x i8] c"div_uart2\00", align 1
@.str.116 = private unnamed_addr constant [11 x i8] c"mout_uart2\00", align 1
@.str.117 = private unnamed_addr constant [10 x i8] c"div_uart3\00", align 1
@.str.118 = private unnamed_addr constant [11 x i8] c"mout_uart3\00", align 1
@.str.119 = private unnamed_addr constant [10 x i8] c"div_uart4\00", align 1
@.str.120 = private unnamed_addr constant [11 x i8] c"mout_uart4\00", align 1
@.str.121 = private unnamed_addr constant [9 x i8] c"div_spi0\00", align 1
@.str.122 = private unnamed_addr constant [10 x i8] c"mout_spi0\00", align 1
@.str.123 = private unnamed_addr constant [13 x i8] c"div_spi_pre0\00", align 1
@.str.124 = private unnamed_addr constant [9 x i8] c"div_spi1\00", align 1
@.str.125 = private unnamed_addr constant [10 x i8] c"mout_spi1\00", align 1
@.str.126 = private unnamed_addr constant [13 x i8] c"div_spi_pre1\00", align 1
@.str.127 = private unnamed_addr constant [9 x i8] c"div_spi2\00", align 1
@.str.128 = private unnamed_addr constant [10 x i8] c"mout_spi2\00", align 1
@.str.129 = private unnamed_addr constant [13 x i8] c"div_spi_pre2\00", align 1
@.str.130 = private unnamed_addr constant [11 x i8] c"div_audio1\00", align 1
@.str.131 = private unnamed_addr constant [12 x i8] c"mout_audio1\00", align 1
@.str.132 = private unnamed_addr constant [11 x i8] c"div_audio2\00", align 1
@.str.133 = private unnamed_addr constant [12 x i8] c"mout_audio2\00", align 1
@.str.134 = private unnamed_addr constant [14 x i8] c"div_mipi_pre0\00", align 1
@.str.135 = private unnamed_addr constant [13 x i8] c"div_mmc_pre0\00", align 1
@.str.136 = private unnamed_addr constant [13 x i8] c"div_mmc_pre1\00", align 1
@.str.137 = private unnamed_addr constant [13 x i8] c"div_mmc_pre2\00", align 1
@.str.138 = private unnamed_addr constant [13 x i8] c"div_mmc_pre3\00", align 1
@.str.139 = private unnamed_addr constant [15 x i8] c"div_clkout_top\00", align 1
@.str.140 = private unnamed_addr constant [16 x i8] c"mout_clkout_top\00", align 1
@.str.141 = private unnamed_addr constant [8 x i8] c"div_acp\00", align 1
@.str.142 = private unnamed_addr constant [13 x i8] c"div_acp_pclk\00", align 1
@.str.143 = private unnamed_addr constant [9 x i8] c"div_dphy\00", align 1
@.str.144 = private unnamed_addr constant [8 x i8] c"div_dmc\00", align 1
@.str.145 = private unnamed_addr constant [9 x i8] c"div_dmcd\00", align 1
@.str.146 = private unnamed_addr constant [9 x i8] c"div_dmcp\00", align 1
@.str.147 = private unnamed_addr constant [8 x i8] c"div_pwi\00", align 1
@.str.148 = private unnamed_addr constant [9 x i8] c"mout_pwi\00", align 1
@.str.149 = private unnamed_addr constant [15 x i8] c"div_clkout_dmc\00", align 1
@.str.150 = private unnamed_addr constant [16 x i8] c"mout_clkout_dmc\00", align 1
@.str.151 = private unnamed_addr constant [9 x i8] c"ppmuleft\00", align 1
@.str.152 = private unnamed_addr constant [8 x i8] c"aclk200\00", align 1
@.str.153 = private unnamed_addr constant [10 x i8] c"ppmuright\00", align 1
@.str.154 = private unnamed_addr constant [10 x i8] c"sclk_hdmi\00", align 1
@.str.155 = private unnamed_addr constant [11 x i8] c"sclk_spdif\00", align 1
@.str.156 = private unnamed_addr constant [5 x i8] c"jpeg\00", align 1
@.str.157 = private unnamed_addr constant [5 x i8] c"mie0\00", align 1
@.str.158 = private unnamed_addr constant [6 x i8] c"dsim0\00", align 1
@.str.159 = private unnamed_addr constant [6 x i8] c"fimd1\00", align 1
@.str.160 = private unnamed_addr constant [5 x i8] c"mie1\00", align 1
@.str.161 = private unnamed_addr constant [6 x i8] c"dsim1\00", align 1
@.str.162 = private unnamed_addr constant [11 x i8] c"smmu_fimd1\00", align 1
@.str.163 = private unnamed_addr constant [4 x i8] c"tsi\00", align 1
@.str.164 = private unnamed_addr constant [6 x i8] c"sromc\00", align 1
@.str.165 = private unnamed_addr constant [4 x i8] c"g3d\00", align 1
@.str.166 = private unnamed_addr constant [8 x i8] c"ppmug3d\00", align 1
@.str.167 = private unnamed_addr constant [11 x i8] c"usb_device\00", align 1
@.str.168 = private unnamed_addr constant [8 x i8] c"onenand\00", align 1
@.str.169 = private unnamed_addr constant [6 x i8] c"nfcon\00", align 1
@.str.170 = private unnamed_addr constant [4 x i8] c"gps\00", align 1
@.str.171 = private unnamed_addr constant [9 x i8] c"smmu_gps\00", align 1
@.str.172 = private unnamed_addr constant [8 x i8] c"ppmugps\00", align 1
@.str.173 = private unnamed_addr constant [8 x i8] c"slimbus\00", align 1
@.str.174 = private unnamed_addr constant [10 x i8] c"sclk_cam0\00", align 1
@.str.175 = private unnamed_addr constant [10 x i8] c"sclk_cam1\00", align 1
@.str.176 = private unnamed_addr constant [11 x i8] c"sclk_mipi0\00", align 1
@.str.177 = private unnamed_addr constant [3 x i8] c"vp\00", align 1
@.str.178 = private unnamed_addr constant [6 x i8] c"mixer\00", align 1
@.str.179 = private unnamed_addr constant [4 x i8] c"pwm\00", align 1
@.str.180 = private unnamed_addr constant [7 x i8] c"sdmmc4\00", align 1
@.str.181 = private unnamed_addr constant [9 x i8] c"usb_host\00", align 1
@.str.182 = private unnamed_addr constant [11 x i8] c"sclk_fimc0\00", align 1
@.str.183 = private unnamed_addr constant [11 x i8] c"sclk_fimc1\00", align 1
@.str.184 = private unnamed_addr constant [11 x i8] c"sclk_fimc2\00", align 1
@.str.185 = private unnamed_addr constant [11 x i8] c"sclk_fimc3\00", align 1
@.str.186 = private unnamed_addr constant [11 x i8] c"sclk_csis0\00", align 1
@.str.187 = private unnamed_addr constant [11 x i8] c"sclk_csis1\00", align 1
@.str.188 = private unnamed_addr constant [11 x i8] c"sclk_fimd0\00", align 1
@.str.189 = private unnamed_addr constant [10 x i8] c"sclk_mmc0\00", align 1
@.str.190 = private unnamed_addr constant [10 x i8] c"sclk_mmc1\00", align 1
@.str.191 = private unnamed_addr constant [10 x i8] c"sclk_mmc2\00", align 1
@.str.192 = private unnamed_addr constant [10 x i8] c"sclk_mmc3\00", align 1
@.str.193 = private unnamed_addr constant [10 x i8] c"sclk_mmc4\00", align 1
@.str.194 = private unnamed_addr constant [6 x i8] c"uclk0\00", align 1
@.str.195 = private unnamed_addr constant [6 x i8] c"uclk1\00", align 1
@.str.196 = private unnamed_addr constant [6 x i8] c"uclk2\00", align 1
@.str.197 = private unnamed_addr constant [6 x i8] c"uclk3\00", align 1
@.str.198 = private unnamed_addr constant [6 x i8] c"uclk4\00", align 1
@.str.199 = private unnamed_addr constant [10 x i8] c"sclk_spi0\00", align 1
@.str.200 = private unnamed_addr constant [10 x i8] c"sclk_spi1\00", align 1
@.str.201 = private unnamed_addr constant [10 x i8] c"sclk_spi2\00", align 1
@.str.202 = private unnamed_addr constant [6 x i8] c"fimc0\00", align 1
@.str.203 = private unnamed_addr constant [6 x i8] c"fimc1\00", align 1
@.str.204 = private unnamed_addr constant [6 x i8] c"fimc2\00", align 1
@.str.205 = private unnamed_addr constant [6 x i8] c"fimc3\00", align 1
@.str.206 = private unnamed_addr constant [6 x i8] c"csis0\00", align 1
@.str.207 = private unnamed_addr constant [6 x i8] c"csis1\00", align 1
@.str.208 = private unnamed_addr constant [11 x i8] c"smmu_fimc0\00", align 1
@.str.209 = private unnamed_addr constant [11 x i8] c"smmu_fimc1\00", align 1
@.str.210 = private unnamed_addr constant [11 x i8] c"smmu_fimc2\00", align 1
@.str.211 = private unnamed_addr constant [11 x i8] c"smmu_fimc3\00", align 1
@.str.212 = private unnamed_addr constant [10 x i8] c"smmu_jpeg\00", align 1
@.str.213 = private unnamed_addr constant [10 x i8] c"ppmucamif\00", align 1
@.str.214 = private unnamed_addr constant [11 x i8] c"pxl_async0\00", align 1
@.str.215 = private unnamed_addr constant [11 x i8] c"pxl_async1\00", align 1
@.str.216 = private unnamed_addr constant [8 x i8] c"smmu_tv\00", align 1
@.str.217 = private unnamed_addr constant [7 x i8] c"ppmutv\00", align 1
@.str.218 = private unnamed_addr constant [4 x i8] c"mfc\00", align 1
@.str.219 = private unnamed_addr constant [10 x i8] c"smmu_mfcl\00", align 1
@.str.220 = private unnamed_addr constant [10 x i8] c"smmu_mfcr\00", align 1
@.str.221 = private unnamed_addr constant [10 x i8] c"ppmumfc_l\00", align 1
@.str.222 = private unnamed_addr constant [10 x i8] c"ppmumfc_r\00", align 1
@.str.223 = private unnamed_addr constant [6 x i8] c"fimd0\00", align 1
@.str.224 = private unnamed_addr constant [11 x i8] c"smmu_fimd0\00", align 1
@.str.225 = private unnamed_addr constant [9 x i8] c"ppmulcd0\00", align 1
@.str.226 = private unnamed_addr constant [6 x i8] c"pdma0\00", align 1
@.str.227 = private unnamed_addr constant [6 x i8] c"pdma1\00", align 1
@.str.228 = private unnamed_addr constant [7 x i8] c"sdmmc0\00", align 1
@.str.229 = private unnamed_addr constant [7 x i8] c"sdmmc1\00", align 1
@.str.230 = private unnamed_addr constant [7 x i8] c"sdmmc2\00", align 1
@.str.231 = private unnamed_addr constant [7 x i8] c"sdmmc3\00", align 1
@.str.232 = private unnamed_addr constant [9 x i8] c"ppmufile\00", align 1
@.str.233 = private unnamed_addr constant [6 x i8] c"uart0\00", align 1
@.str.234 = private unnamed_addr constant [6 x i8] c"uart1\00", align 1
@.str.235 = private unnamed_addr constant [6 x i8] c"uart2\00", align 1
@.str.236 = private unnamed_addr constant [6 x i8] c"uart3\00", align 1
@.str.237 = private unnamed_addr constant [6 x i8] c"uart4\00", align 1
@.str.238 = private unnamed_addr constant [5 x i8] c"i2c0\00", align 1
@.str.239 = private unnamed_addr constant [5 x i8] c"i2c1\00", align 1
@.str.240 = private unnamed_addr constant [5 x i8] c"i2c2\00", align 1
@.str.241 = private unnamed_addr constant [5 x i8] c"i2c3\00", align 1
@.str.242 = private unnamed_addr constant [5 x i8] c"i2c4\00", align 1
@.str.243 = private unnamed_addr constant [5 x i8] c"i2c5\00", align 1
@.str.244 = private unnamed_addr constant [5 x i8] c"i2c6\00", align 1
@.str.245 = private unnamed_addr constant [5 x i8] c"i2c7\00", align 1
@.str.246 = private unnamed_addr constant [9 x i8] c"i2c-hdmi\00", align 1
@.str.247 = private unnamed_addr constant [5 x i8] c"spi0\00", align 1
@.str.248 = private unnamed_addr constant [5 x i8] c"spi1\00", align 1
@.str.249 = private unnamed_addr constant [5 x i8] c"spi2\00", align 1
@.str.250 = private unnamed_addr constant [5 x i8] c"i2s1\00", align 1
@.str.251 = private unnamed_addr constant [5 x i8] c"i2s2\00", align 1
@.str.252 = private unnamed_addr constant [5 x i8] c"pcm1\00", align 1
@.str.253 = private unnamed_addr constant [5 x i8] c"pcm2\00", align 1
@.str.254 = private unnamed_addr constant [6 x i8] c"spdif\00", align 1
@.str.255 = private unnamed_addr constant [5 x i8] c"ac97\00", align 1
@.str.256 = private unnamed_addr constant [4 x i8] c"sss\00", align 1
@.str.257 = private unnamed_addr constant [9 x i8] c"ppmudmc0\00", align 1
@.str.258 = private unnamed_addr constant [9 x i8] c"ppmudmc1\00", align 1
@.str.259 = private unnamed_addr constant [8 x i8] c"ppmucpu\00", align 1
@.str.260 = private unnamed_addr constant [8 x i8] c"ppmuacp\00", align 1
@.str.261 = private unnamed_addr constant [15 x i8] c"clkout_leftbus\00", align 1
@.str.262 = private unnamed_addr constant [16 x i8] c"clkout_rightbus\00", align 1
@.str.263 = private unnamed_addr constant [11 x i8] c"clkout_top\00", align 1
@.str.264 = private unnamed_addr constant [11 x i8] c"clkout_dmc\00", align 1
@.str.265 = private unnamed_addr constant [11 x i8] c"clkout_cpu\00", align 1
@.str.266 = private unnamed_addr constant [16 x i8] c"sclk_apll_div_2\00", align 1
@.str.267 = private unnamed_addr constant [16 x i8] c"fout_mpll_div_2\00", align 1
@.str.268 = private unnamed_addr constant [16 x i8] c"fout_apll_div_2\00", align 1
@.str.269 = private unnamed_addr constant [14 x i8] c"arm_clk_div_2\00", align 1
@.str.270 = private unnamed_addr constant [13 x i8] c"sclk_usbphy1\00", align 1
@clkout_left_p4210 = internal constant [4 x ptr] [ptr @.str.280, ptr @.str.266, ptr @.str.42, ptr @.str.44], section ".init.rodata", align 4
@clkout_right_p4210 = internal constant [4 x ptr] [ptr @.str.280, ptr @.str.266, ptr @.str.47, ptr @.str.49], section ".init.rodata", align 4
@.str.271 = private unnamed_addr constant [13 x i8] c"mout_aclk200\00", align 1
@.str.272 = private unnamed_addr constant [11 x i8] c"mout_mixer\00", align 1
@mout_mixer_p4210 = internal constant [2 x ptr] [ptr @.str.281, ptr @.str.154], section ".init.rodata", align 4
@.str.273 = private unnamed_addr constant [9 x i8] c"mout_dac\00", align 1
@mout_dac_p4210 = internal constant [2 x ptr] [ptr @.str.31, ptr @.str.15], section ".init.rodata", align 4
@.str.274 = private unnamed_addr constant [10 x i8] c"mout_g2d0\00", align 1
@.str.275 = private unnamed_addr constant [10 x i8] c"mout_g2d1\00", align 1
@.str.276 = private unnamed_addr constant [9 x i8] c"mout_g2d\00", align 1
@mout_g2d_p = internal constant [2 x ptr] [ptr @.str.274, ptr @.str.275], section ".init.rodata", align 4
@.str.277 = private unnamed_addr constant [11 x i8] c"mout_fimd1\00", align 1
@group1_p4210 = internal constant [9 x ptr] [ptr @.str.4, ptr @.str.5, ptr @.str.10, ptr @.str.17, ptr @.str.282, ptr @.str.15, ptr @.str.40, ptr @.str.26, ptr @.str.31], section ".init.rodata", align 4
@.str.278 = private unnamed_addr constant [11 x i8] c"mout_mipi1\00", align 1
@mout_mpll_p = internal constant [2 x ptr] [ptr @.str.7, ptr @.str.12], section ".init.rodata", align 4
@mout_core_p4210 = internal constant [2 x ptr] [ptr @.str.18, ptr @.str.40], section ".init.rodata", align 4
@sclk_vpll_p4210 = internal constant [2 x ptr] [ptr @.str.9, ptr @.str.14], section ".init.rodata", align 4
@mout_audio0_p4210 = internal constant [9 x ptr] [ptr @.str.283, ptr @.str.282, ptr @.str.10, ptr @.str.17, ptr @.str.4, ptr @.str.5, ptr @.str.40, ptr @.str.26, ptr @.str.31], section ".init.rodata", align 4
@.str.279 = private unnamed_addr constant [10 x i8] c"mout_sata\00", align 1
@mout_audio1_p4210 = internal constant [9 x ptr] [ptr @.str.284, ptr @.str.282, ptr @.str.10, ptr @.str.17, ptr @.str.4, ptr @.str.5, ptr @.str.40, ptr @.str.26, ptr @.str.31], section ".init.rodata", align 4
@mout_audio2_p4210 = internal constant [9 x ptr] [ptr @.str.285, ptr @.str.282, ptr @.str.10, ptr @.str.17, ptr @.str.4, ptr @.str.5, ptr @.str.40, ptr @.str.26, ptr @.str.31], section ".init.rodata", align 4
@clkout_top_p4210 = internal constant [21 x ptr] [ptr @.str.13, ptr @.str.14, ptr @.str.10, ptr @.str.17, ptr @.str.270, ptr @.str.15, ptr @.str.283, ptr @.str.284, ptr @.str.285, ptr @.str.37, ptr @.str.39, ptr @.str.38, ptr @.str.152, ptr @.str.98, ptr @.str.81, ptr @.str.82, ptr @.str.286, ptr @.str.287, ptr @.str.288, ptr @.str.289, ptr @.str.290], section ".init.rodata", align 4
@mout_pwi_p4210 = internal constant [9 x ptr] [ptr @.str.4, ptr @.str.5, ptr @.str.10, ptr @.str.17, ptr @.str.270, ptr @.str.15, ptr @.str.282, ptr @.str.26, ptr @.str.31], section ".init.rodata", align 4
@clkout_dmc_p4210 = internal constant [7 x ptr] [ptr @.str.145, ptr @.str.146, ptr @.str.142, ptr @.str.144, ptr @.str.143, ptr @.str.282, ptr @.str.147], section ".init.rodata", align 4
@clkout_cpu_p4210 = internal constant [12 x ptr] [ptr @.str.268, ptr @.str.282, ptr @.str.267, ptr @.str.282, ptr @.str.269, ptr @.str.54, ptr @.str.56, ptr @.str.54, ptr @.str.58, ptr @.str.57, ptr @.str.59, ptr @.str.62], section ".init.rodata", align 4
@.str.280 = private unnamed_addr constant [16 x i8] c"sclk_mpll_div_2\00", align 1
@.str.281 = private unnamed_addr constant [9 x i8] c"sclk_dac\00", align 1
@.str.282 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.283 = private unnamed_addr constant [7 x i8] c"cdclk0\00", align 1
@.str.284 = private unnamed_addr constant [7 x i8] c"cdclk1\00", align 1
@.str.285 = private unnamed_addr constant [7 x i8] c"cdclk2\00", align 1
@.str.286 = private unnamed_addr constant [9 x i8] c"sclk_g2d\00", align 1
@.str.287 = private unnamed_addr constant [11 x i8] c"cam_a_pclk\00", align 1
@.str.288 = private unnamed_addr constant [11 x i8] c"cam_b_pclk\00", align 1
@.str.289 = private unnamed_addr constant [18 x i8] c"s_rxbyteclkhs0_2l\00", align 1
@.str.290 = private unnamed_addr constant [18 x i8] c"s_rxbyteclkhs0_4l\00", align 1
@.str.291 = private unnamed_addr constant [12 x i8] c"sclk_fimg2d\00", align 1
@.str.292 = private unnamed_addr constant [10 x i8] c"div_fimd1\00", align 1
@.str.293 = private unnamed_addr constant [10 x i8] c"div_mipi1\00", align 1
@.str.294 = private unnamed_addr constant [9 x i8] c"div_sata\00", align 1
@.str.295 = private unnamed_addr constant [14 x i8] c"div_mipi_pre1\00", align 1
@.str.296 = private unnamed_addr constant [6 x i8] c"tvenc\00", align 1
@.str.297 = private unnamed_addr constant [4 x i8] c"g2d\00", align 1
@.str.298 = private unnamed_addr constant [8 x i8] c"rotator\00", align 1
@.str.299 = private unnamed_addr constant [5 x i8] c"mdma\00", align 1
@.str.300 = private unnamed_addr constant [9 x i8] c"smmu_g2d\00", align 1
@.str.301 = private unnamed_addr constant [10 x i8] c"smmu_mdma\00", align 1
@.str.302 = private unnamed_addr constant [10 x i8] c"ppmuimage\00", align 1
@.str.303 = private unnamed_addr constant [9 x i8] c"ppmulcd1\00", align 1
@.str.304 = private unnamed_addr constant [9 x i8] c"pcie_phy\00", align 1
@.str.305 = private unnamed_addr constant [9 x i8] c"sata_phy\00", align 1
@.str.306 = private unnamed_addr constant [5 x i8] c"sata\00", align 1
@.str.307 = private unnamed_addr constant [5 x i8] c"pcie\00", align 1
@.str.308 = private unnamed_addr constant [10 x i8] c"smmu_pcie\00", align 1
@.str.309 = private unnamed_addr constant [8 x i8] c"modemif\00", align 1
@.str.310 = private unnamed_addr constant [7 x i8] c"chipid\00", align 1
@.str.311 = private unnamed_addr constant [7 x i8] c"sysreg\00", align 1
@.str.312 = private unnamed_addr constant [9 x i8] c"hdmi_cec\00", align 1
@.str.313 = private unnamed_addr constant [13 x i8] c"smmu_rotator\00", align 1
@.str.314 = private unnamed_addr constant [11 x i8] c"sclk_mipi1\00", align 1
@.str.315 = private unnamed_addr constant [10 x i8] c"sclk_sata\00", align 1
@.str.316 = private unnamed_addr constant [11 x i8] c"sclk_mixer\00", align 1
@.str.317 = private unnamed_addr constant [6 x i8] c"tsadc\00", align 1
@.str.318 = private unnamed_addr constant [4 x i8] c"mct\00", align 1
@.str.319 = private unnamed_addr constant [9 x i8] c"watchdog\00", align 1
@.str.320 = private unnamed_addr constant [4 x i8] c"rtc\00", align 1
@.str.321 = private unnamed_addr constant [6 x i8] c"keyif\00", align 1
@.str.322 = private unnamed_addr constant [11 x i8] c"sclk_fimd1\00", align 1
@.str.323 = private unnamed_addr constant [10 x i8] c"tmu_apbif\00", align 1
@.str.324 = private unnamed_addr constant [7 x i8] c"armclk\00", align 1
@e4210_armclk_d = internal constant [7 x %struct.exynos_cpuclk_cfg_data] [%struct.exynos_cpuclk_cfg_data { i32 1200000, i32 118765360, i32 5 }, %struct.exynos_cpuclk_cfg_data { i32 1000000, i32 118765360, i32 4 }, %struct.exynos_cpuclk_cfg_data { i32 800000, i32 118699824, i32 3 }, %struct.exynos_cpuclk_cfg_data { i32 500000, i32 118699824, i32 3 }, %struct.exynos_cpuclk_cfg_data { i32 400000, i32 118699824, i32 3 }, %struct.exynos_cpuclk_cfg_data { i32 200000, i32 1118992, i32 3 }, %struct.exynos_cpuclk_cfg_data zeroinitializer], section ".init.rodata", align 4
@.str.325 = private unnamed_addr constant [17 x i8] c"mout_mpll_user_l\00", align 1
@mout_gdl_p4x12 = internal constant [2 x ptr] [ptr @.str.325, ptr @.str.41], section ".init.rodata", align 4
@clkout_left_p4x12 = internal constant [4 x ptr] [ptr @.str.344, ptr @.str.266, ptr @.str.42, ptr @.str.44], section ".init.rodata", align 4
@.str.326 = private unnamed_addr constant [17 x i8] c"mout_mpll_user_r\00", align 1
@mout_gdr_p4x12 = internal constant [2 x ptr] [ptr @.str.326, ptr @.str.41], section ".init.rodata", align 4
@clkout_right_p4x12 = internal constant [4 x ptr] [ptr @.str.345, ptr @.str.266, ptr @.str.47, ptr @.str.49], section ".init.rodata", align 4
@.str.327 = private unnamed_addr constant [17 x i8] c"mout_mpll_user_c\00", align 1
@mout_mpll_user_p4x12 = internal constant [2 x ptr] [ptr @.str.7, ptr @.str.40], section ".init.rodata", align 4
@clkout_cpu_p4x12 = internal constant [12 x ptr] [ptr @.str.268, ptr @.str.282, ptr @.str.282, ptr @.str.282, ptr @.str.269, ptr @.str.54, ptr @.str.56, ptr @.str.346, ptr @.str.58, ptr @.str.57, ptr @.str.59, ptr @.str.62], section ".init.rodata", align 4
@.str.328 = private unnamed_addr constant [17 x i8] c"mout_aclk266_gps\00", align 1
@aclk_p4412 = internal constant [2 x ptr] [ptr @.str.330, ptr @.str.41], section ".init.rodata", align 4
@.str.329 = private unnamed_addr constant [20 x i8] c"mout_aclk400_mcuisp\00", align 1
@.str.330 = private unnamed_addr constant [17 x i8] c"mout_mpll_user_t\00", align 1
@.str.331 = private unnamed_addr constant [22 x i8] c"mout_user_aclk266_gps\00", align 1
@mout_user_aclk266_gps_p4x12 = internal constant [2 x ptr] [ptr @.str.7, ptr @.str.347], section ".init.rodata", align 4
@mout_user_aclk200_p4x12 = internal constant [2 x ptr] [ptr @.str.7, ptr @.str.348], section ".init.rodata", align 4
@.str.332 = private unnamed_addr constant [15 x i8] c"aclk400_mcuisp\00", align 1
@mout_user_aclk400_mcuisp_p4x12 = internal constant [2 x ptr] [ptr @.str.7, ptr @.str.349], section ".init.rodata", align 4
@.str.333 = private unnamed_addr constant [12 x i8] c"mout_mdnie0\00", align 1
@group1_p4x12 = internal constant [9 x ptr] [ptr @.str.4, ptr @.str.5, ptr @.str.10, ptr @.str.17, ptr @.str.282, ptr @.str.15, ptr @.str.330, ptr @.str.26, ptr @.str.31], section ".init.rodata", align 4
@.str.334 = private unnamed_addr constant [16 x i8] c"mout_mdnie_pwm0\00", align 1
@sclk_ampll_p4x12 = internal constant [2 x ptr] [ptr @.str.330, ptr @.str.41], section ".init.rodata", align 4
@.str.335 = private unnamed_addr constant [11 x i8] c"mout_jpeg0\00", align 1
@.str.336 = private unnamed_addr constant [11 x i8] c"mout_jpeg1\00", align 1
@.str.337 = private unnamed_addr constant [10 x i8] c"mout_jpeg\00", align 1
@mout_jpeg_p = internal constant [2 x ptr] [ptr @.str.335, ptr @.str.336], section ".init.rodata", align 4
@mout_vpll_p = internal constant [2 x ptr] [ptr @.str.7, ptr @.str.14], section ".init.rodata", align 4
@mout_core_p4x12 = internal constant [2 x ptr] [ptr @.str.18, ptr @.str.327], section ".init.rodata", align 4
@mout_audio0_p4x12 = internal constant [9 x ptr] [ptr @.str.283, ptr @.str.282, ptr @.str.10, ptr @.str.17, ptr @.str.4, ptr @.str.5, ptr @.str.330, ptr @.str.26, ptr @.str.31], section ".init.rodata", align 4
@.str.338 = private unnamed_addr constant [13 x i8] c"mout_mipihsi\00", align 1
@mout_audio1_p4x12 = internal constant [9 x ptr] [ptr @.str.284, ptr @.str.282, ptr @.str.10, ptr @.str.17, ptr @.str.4, ptr @.str.5, ptr @.str.330, ptr @.str.26, ptr @.str.31], section ".init.rodata", align 4
@mout_audio2_p4x12 = internal constant [9 x ptr] [ptr @.str.285, ptr @.str.282, ptr @.str.10, ptr @.str.17, ptr @.str.4, ptr @.str.5, ptr @.str.330, ptr @.str.26, ptr @.str.31], section ".init.rodata", align 4
@.str.339 = private unnamed_addr constant [13 x i8] c"mout_pwm_isp\00", align 1
@.str.340 = private unnamed_addr constant [14 x i8] c"mout_spi0_isp\00", align 1
@.str.341 = private unnamed_addr constant [14 x i8] c"mout_spi1_isp\00", align 1
@.str.342 = private unnamed_addr constant [14 x i8] c"mout_uart_isp\00", align 1
@clkout_top_p4x12 = internal constant [32 x ptr] [ptr @.str.13, ptr @.str.14, ptr @.str.10, ptr @.str.17, ptr @.str.282, ptr @.str.15, ptr @.str.283, ptr @.str.284, ptr @.str.285, ptr @.str.37, ptr @.str.39, ptr @.str.38, ptr @.str.152, ptr @.str.98, ptr @.str.81, ptr @.str.82, ptr @.str.332, ptr @.str.287, ptr @.str.288, ptr @.str.289, ptr @.str.290, ptr @.str.350, ptr @.str.351, ptr @.str.352, ptr @.str.353, ptr @.str.354, ptr @.str.355, ptr @.str.356, ptr @.str.357, ptr @.str.154, ptr @.str.188, ptr @.str.89], section ".init.rodata", align 4
@.str.343 = private unnamed_addr constant [9 x i8] c"mout_c2c\00", align 1
@mout_pwi_p4x12 = internal constant [9 x ptr] [ptr @.str.4, ptr @.str.5, ptr @.str.10, ptr @.str.17, ptr @.str.282, ptr @.str.15, ptr @.str.40, ptr @.str.26, ptr @.str.31], section ".init.rodata", align 4
@clkout_dmc_p4x12 = internal constant [11 x ptr] [ptr @.str.145, ptr @.str.146, ptr @.str.358, ptr @.str.142, ptr @.str.144, ptr @.str.143, ptr @.str.267, ptr @.str.147, ptr @.str.282, ptr @.str.359, ptr @.str.360], section ".init.rodata", align 4
@.str.344 = private unnamed_addr constant [23 x i8] c"sclk_mpll_user_l_div_2\00", align 1
@.str.345 = private unnamed_addr constant [23 x i8] c"sclk_mpll_user_r_div_2\00", align 1
@.str.346 = private unnamed_addr constant [10 x i8] c"div_cores\00", align 1
@.str.347 = private unnamed_addr constant [16 x i8] c"div_aclk266_gps\00", align 1
@.str.348 = private unnamed_addr constant [12 x i8] c"div_aclk200\00", align 1
@.str.349 = private unnamed_addr constant [19 x i8] c"div_aclk400_mcuisp\00", align 1
@.str.350 = private unnamed_addr constant [23 x i8] c"rx_half_byte_clk_csis0\00", align 1
@.str.351 = private unnamed_addr constant [23 x i8] c"rx_half_byte_clk_csis1\00", align 1
@.str.352 = private unnamed_addr constant [9 x i8] c"div_jpeg\00", align 1
@.str.353 = private unnamed_addr constant [13 x i8] c"sclk_pwm_isp\00", align 1
@.str.354 = private unnamed_addr constant [14 x i8] c"sclk_spi0_isp\00", align 1
@.str.355 = private unnamed_addr constant [14 x i8] c"sclk_spi1_isp\00", align 1
@.str.356 = private unnamed_addr constant [14 x i8] c"sclk_uart_isp\00", align 1
@.str.357 = private unnamed_addr constant [13 x i8] c"sclk_mipihsi\00", align 1
@.str.358 = private unnamed_addr constant [9 x i8] c"aclk_acp\00", align 1
@.str.359 = private unnamed_addr constant [8 x i8] c"div_c2c\00", align 1
@.str.360 = private unnamed_addr constant [13 x i8] c"div_c2c_aclk\00", align 1
@.str.361 = private unnamed_addr constant [11 x i8] c"div_mdnie0\00", align 1
@.str.362 = private unnamed_addr constant [15 x i8] c"div_mdnie_pwm0\00", align 1
@.str.363 = private unnamed_addr constant [19 x i8] c"div_mdnie_pwm_pre0\00", align 1
@.str.364 = private unnamed_addr constant [12 x i8] c"div_mipihsi\00", align 1
@.str.365 = private unnamed_addr constant [12 x i8] c"div_pwm_isp\00", align 1
@.str.366 = private unnamed_addr constant [13 x i8] c"div_spi0_isp\00", align 1
@.str.367 = private unnamed_addr constant [17 x i8] c"div_spi0_isp_pre\00", align 1
@.str.368 = private unnamed_addr constant [13 x i8] c"div_spi1_isp\00", align 1
@.str.369 = private unnamed_addr constant [17 x i8] c"div_spi1_isp_pre\00", align 1
@.str.370 = private unnamed_addr constant [13 x i8] c"div_uart_isp\00", align 1
@.str.371 = private unnamed_addr constant [10 x i8] c"async_g3d\00", align 1
@.str.372 = private unnamed_addr constant [6 x i8] c"audss\00", align 1
@.str.373 = private unnamed_addr constant [7 x i8] c"mdnie0\00", align 1
@.str.374 = private unnamed_addr constant [9 x i8] c"mipi_hsi\00", align 1
@.str.375 = private unnamed_addr constant [12 x i8] c"sclk_mdnie0\00", align 1
@.str.376 = private unnamed_addr constant [16 x i8] c"sclk_mdnie_pwm0\00", align 1
@.str.377 = private unnamed_addr constant [13 x i8] c"pwm_isp_sclk\00", align 1
@.str.378 = private unnamed_addr constant [14 x i8] c"spi0_isp_sclk\00", align 1
@.str.379 = private unnamed_addr constant [14 x i8] c"spi1_isp_sclk\00", align 1
@.str.380 = private unnamed_addr constant [14 x i8] c"uart_isp_sclk\00", align 1
@.str.381 = private unnamed_addr constant [5 x i8] c"pcm0\00", align 1
@.str.382 = private unnamed_addr constant [5 x i8] c"i2s0\00", align 1
@.str.383 = private unnamed_addr constant [23 x i8] c"sclk_mpll_user_t_div_2\00", align 1
@.str.384 = private unnamed_addr constant [23 x i8] c"sclk_mpll_user_c_div_2\00", align 1
@e4412_armclk_d = internal constant [17 x %struct.exynos_cpuclk_cfg_data] [%struct.exynos_cpuclk_cfg_data { i32 1704000, i32 34998064, i32 1799 }, %struct.exynos_cpuclk_cfg_data { i32 1600000, i32 34998064, i32 1798 }, %struct.exynos_cpuclk_cfg_data { i32 1500000, i32 34998064, i32 1798 }, %struct.exynos_cpuclk_cfg_data { i32 1400000, i32 34998064, i32 1542 }, %struct.exynos_cpuclk_cfg_data { i32 1300000, i32 34932528, i32 1541 }, %struct.exynos_cpuclk_cfg_data { i32 1200000, i32 34932528, i32 1285 }, %struct.exynos_cpuclk_cfg_data { i32 1100000, i32 34866736, i32 1284 }, %struct.exynos_cpuclk_cfg_data { i32 1000000, i32 18089248, i32 1028 }, %struct.exynos_cpuclk_cfg_data { i32 900000, i32 18023712, i32 1027 }, %struct.exynos_cpuclk_cfg_data { i32 800000, i32 18023712, i32 771 }, %struct.exynos_cpuclk_cfg_data { i32 700000, i32 18023456, i32 771 }, %struct.exynos_cpuclk_cfg_data { i32 600000, i32 18023456, i32 515 }, %struct.exynos_cpuclk_cfg_data { i32 500000, i32 18023456, i32 515 }, %struct.exynos_cpuclk_cfg_data { i32 400000, i32 18023456, i32 259 }, %struct.exynos_cpuclk_cfg_data { i32 300000, i32 17957920, i32 259 }, %struct.exynos_cpuclk_cfg_data { i32 200000, i32 17892112, i32 3 }, %struct.exynos_cpuclk_cfg_data zeroinitializer], section ".init.rodata", align 4
@__cpu_possible_mask = external dso_local local_unnamed_addr global %struct.cpumask, align 4
@llvm.compiler.used = appending global [2 x ptr] [ptr @__of_table_exynos4210_clk, ptr @__of_table_exynos4412_clk], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @exynos4210_clk_init(ptr noundef %0) #0 section ".init.text" {
  tail call fastcc void @exynos4_clk_init(ptr noundef %0, i32 noundef 0) #5
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @exynos4412_clk_init(ptr noundef %0) #0 section ".init.text" {
  tail call fastcc void @exynos4_clk_init(ptr noundef %0, i32 noundef 1) #5
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @exynos4_clk_init(ptr noundef %0, i32 noundef %1) unnamed_addr #0 section ".init.text" {
  store i32 %1, ptr @exynos4_soc, align 4
  %3 = tail call ptr @of_iomap(ptr noundef %0, i32 noundef 0) #6
  store ptr %3, ptr @reg_base, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.exynos4_clk_init) #7
  unreachable

6:                                                ; preds = %2
  %7 = tail call ptr @samsung_clk_init(ptr noundef %0, ptr noundef nonnull %3, i32 noundef 462) #6
  tail call void @samsung_clk_of_register_fixed_ext(ptr noundef %7, ptr noundef nonnull @exynos4_fixed_rate_ext_clks, i32 noundef 2, ptr noundef nonnull @ext_clk_match) #6
  tail call fastcc void @exynos4_clk_register_finpll(ptr noundef %7) #5
  %8 = load i32, ptr @exynos4_soc, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %22

10:                                               ; preds = %6
  tail call void @samsung_clk_register_mux(ptr noundef %7, ptr noundef nonnull @exynos4210_mux_early, i32 noundef 1) #6
  %11 = getelementptr %struct.samsung_clk_provider, ptr %7, i32 1, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 @clk_hw_get_rate(ptr noundef %12) #6
  %14 = icmp eq i32 %13, 24000000
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  store ptr @exynos4210_apll_rates, ptr getelementptr inbounds ([4 x %struct.samsung_pll_clock], ptr @exynos4210_plls, i32 0, i32 0, i32 7), align 4
  store ptr @exynos4210_epll_rates, ptr getelementptr inbounds ([4 x %struct.samsung_pll_clock], ptr @exynos4210_plls, i32 0, i32 2, i32 7), align 4
  br label %16

16:                                               ; preds = %15, %10
  %17 = getelementptr %struct.samsung_clk_provider, ptr %7, i32 100, i32 2
  %18 = load ptr, ptr %17, align 4
  %19 = tail call i32 @clk_hw_get_rate(ptr noundef %18) #6
  %20 = icmp eq i32 %19, 24000000
  br i1 %20, label %21, label %28

21:                                               ; preds = %16
  store ptr @exynos4210_vpll_rates, ptr getelementptr inbounds ([4 x %struct.samsung_pll_clock], ptr @exynos4210_plls, i32 0, i32 3, i32 7), align 4
  br label %28

22:                                               ; preds = %6
  %23 = getelementptr %struct.samsung_clk_provider, ptr %7, i32 1, i32 3
  %24 = load ptr, ptr %23, align 4
  %25 = tail call i32 @clk_hw_get_rate(ptr noundef %24) #6
  %26 = icmp eq i32 %25, 24000000
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  store ptr @exynos4x12_apll_rates, ptr getelementptr inbounds ([4 x %struct.samsung_pll_clock], ptr @exynos4x12_plls, i32 0, i32 0, i32 7), align 4
  store ptr @exynos4x12_epll_rates, ptr getelementptr inbounds ([4 x %struct.samsung_pll_clock], ptr @exynos4x12_plls, i32 0, i32 2, i32 7), align 4
  store ptr @exynos4x12_vpll_rates, ptr getelementptr inbounds ([4 x %struct.samsung_pll_clock], ptr @exynos4x12_plls, i32 0, i32 3, i32 7), align 4
  br label %28

28:                                               ; preds = %27, %22, %21, %16
  %29 = phi ptr [ @exynos4210_plls, %21 ], [ @exynos4210_plls, %16 ], [ @exynos4x12_plls, %27 ], [ @exynos4x12_plls, %22 ]
  %30 = load ptr, ptr @reg_base, align 4
  tail call void @samsung_clk_register_pll(ptr noundef %7, ptr noundef nonnull %29, i32 noundef 4, ptr noundef %30) #6
  tail call void @samsung_clk_register_fixed_rate(ptr noundef %7, ptr noundef nonnull @exynos4_fixed_rate_clks, i32 noundef 3) #6
  tail call void @samsung_clk_register_mux(ptr noundef %7, ptr noundef nonnull @exynos4_mux_clks, i32 noundef 12) #6
  tail call void @samsung_clk_register_div(ptr noundef %7, ptr noundef nonnull @exynos4_div_clks, i32 noundef 74) #6
  tail call void @samsung_clk_register_gate(ptr noundef %7, ptr noundef nonnull @exynos4_gate_clks, i32 noundef 118) #6
  tail call void @samsung_clk_register_fixed_factor(ptr noundef %7, ptr noundef nonnull @exynos4_fixed_factor_clks, i32 noundef 4) #6
  %31 = load i32, ptr @exynos4_soc, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  tail call void @samsung_clk_register_fixed_rate(ptr noundef %7, ptr noundef nonnull @exynos4210_fixed_rate_clks, i32 noundef 1) #6
  tail call void @samsung_clk_register_mux(ptr noundef %7, ptr noundef nonnull @exynos4210_mux_clks, i32 noundef 52) #6
  tail call void @samsung_clk_register_div(ptr noundef %7, ptr noundef nonnull @exynos4210_div_clks, i32 noundef 6) #6
  tail call void @samsung_clk_register_gate(ptr noundef %7, ptr noundef nonnull @exynos4210_gate_clks, i32 noundef 29) #6
  tail call void @samsung_clk_register_fixed_factor(ptr noundef %7, ptr noundef nonnull @exynos4210_fixed_factor_clks, i32 noundef 1) #6
  br label %35

34:                                               ; preds = %28
  tail call void @samsung_clk_register_mux(ptr noundef %7, ptr noundef nonnull @exynos4x12_mux_clks, i32 noundef 68) #6
  tail call void @samsung_clk_register_div(ptr noundef %7, ptr noundef nonnull @exynos4x12_div_clks, i32 noundef 17) #6
  tail call void @samsung_clk_register_gate(ptr noundef %7, ptr noundef nonnull @exynos4x12_gate_clks, i32 noundef 29) #6
  tail call void @samsung_clk_register_fixed_factor(ptr noundef %7, ptr noundef nonnull @exynos4x12_fixed_factor_clks, i32 noundef 4) #6
  br label %35

35:                                               ; preds = %34, %33
  %36 = phi ptr [ @exynos4412_cpu_clks, %34 ], [ @exynos4210_cpu_clks, %33 ]
  tail call void @samsung_clk_register_cpu(ptr noundef %7, ptr noundef nonnull %36, i32 noundef 1) #6
  %37 = icmp eq i32 %1, 1
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  tail call fastcc void @exynos4x12_core_down_clock() #5
  br label %39

39:                                               ; preds = %38, %35
  %40 = load ptr, ptr @reg_base, align 4
  tail call void @samsung_clk_extended_sleep_init(ptr noundef %40, ptr noundef nonnull @exynos4_clk_regs, i32 noundef 77, ptr noundef nonnull @src_mask_suspend, i32 noundef 11) #6
  %41 = load i32, ptr @exynos4_soc, align 4
  %42 = icmp eq i32 %41, 0
  %43 = load ptr, ptr @reg_base, align 4
  br i1 %42, label %44, label %45

44:                                               ; preds = %39
  tail call void @samsung_clk_extended_sleep_init(ptr noundef %43, ptr noundef nonnull @exynos4210_clk_save, i32 noundef 9, ptr noundef nonnull @src_mask_suspend_e4210, i32 noundef 1) #6
  br label %46

45:                                               ; preds = %39
  tail call void @samsung_clk_extended_sleep_init(ptr noundef %43, ptr noundef nonnull @exynos4x12_clk_save, i32 noundef 8, ptr noundef null, i32 noundef 0) #6
  br label %46

46:                                               ; preds = %45, %44
  tail call void @samsung_clk_of_add_provider(ptr noundef %0, ptr noundef %7) #6
  %47 = load i32, ptr @exynos4_soc, align 4
  %48 = icmp eq i32 %47, 0
  %49 = select i1 %48, ptr @.str.2, ptr @.str.3
  %50 = getelementptr %struct.samsung_clk_provider, ptr %7, i32 3
  %51 = load ptr, ptr %50, align 4
  %52 = tail call i32 @clk_hw_get_rate(ptr noundef %51) #6
  %53 = getelementptr %struct.samsung_clk_provider, ptr %7, i32 3, i32 1
  %54 = load ptr, ptr %53, align 4
  %55 = tail call i32 @clk_hw_get_rate(ptr noundef %54) #6
  %56 = getelementptr %struct.samsung_clk_provider, ptr %7, i32 3, i32 2
  %57 = load ptr, ptr %56, align 4
  %58 = tail call i32 @clk_hw_get_rate(ptr noundef %57) #6
  %59 = getelementptr %struct.samsung_clk_provider, ptr %7, i32 3, i32 3
  %60 = load ptr, ptr %59, align 4
  %61 = tail call i32 @clk_hw_get_rate(ptr noundef %60) #6
  %62 = getelementptr %struct.samsung_clk_provider, ptr %7, i32 116, i32 1
  %63 = load ptr, ptr %62, align 4
  %64 = tail call i32 @clk_hw_get_rate(ptr noundef %63) #6
  %65 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull %49, i32 noundef %52, i32 noundef %55, i32 noundef %58, i32 noundef %61, i32 noundef %64) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @samsung_clk_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @samsung_clk_of_register_fixed_ext(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @exynos4_clk_register_finpll(ptr noundef %0) unnamed_addr #0 section ".init.text" {
  %2 = alloca %struct.samsung_fixed_rate_clock, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #6
  %3 = tail call fastcc i32 @exynos4_get_xom() #5
  %4 = and i32 %3, 1
  %5 = icmp eq i32 %4, 0
  %6 = select i1 %5, ptr @.str.4, ptr @.str.5
  %7 = tail call ptr @clk_get(ptr noundef null, ptr noundef nonnull %6) #6
  %8 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.exynos4_clk_register_finpll, ptr noundef nonnull %6) #8
  br label %13

11:                                               ; preds = %1
  %12 = tail call i32 @clk_get_rate(ptr noundef %7) #6
  br label %13

13:                                               ; preds = %11, %9
  %14 = phi i32 [ 24000000, %9 ], [ %12, %11 ]
  store i32 3, ptr %2, align 4
  %15 = getelementptr inbounds %struct.samsung_fixed_rate_clock, ptr %2, i32 0, i32 1
  store ptr @.str.7, ptr %15, align 4
  %16 = getelementptr inbounds %struct.samsung_fixed_rate_clock, ptr %2, i32 0, i32 2
  store ptr null, ptr %16, align 4
  %17 = getelementptr inbounds %struct.samsung_fixed_rate_clock, ptr %2, i32 0, i32 3
  store i32 0, ptr %17, align 4
  %18 = getelementptr inbounds %struct.samsung_fixed_rate_clock, ptr %2, i32 0, i32 4
  store i32 %14, ptr %18, align 4
  call void @samsung_clk_register_fixed_rate(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @samsung_clk_register_mux(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @samsung_clk_register_pll(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @samsung_clk_register_fixed_rate(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @samsung_clk_register_div(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @samsung_clk_register_gate(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @samsung_clk_register_fixed_factor(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @samsung_clk_register_cpu(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @exynos4x12_core_down_clock() unnamed_addr #0 section ".init.text" {
  %1 = load i32, ptr @__cpu_possible_mask, align 4
  %2 = and i32 %1, 65535
  %3 = tail call i32 @__sw_hweight32(i32 noundef %2) #6
  %4 = icmp eq i32 %3, 4
  %5 = select i1 %4, i32 1879507967, i32 1879507763
  %6 = load ptr, ptr @reg_base, align 4
  %7 = getelementptr i8, ptr %6, i32 86048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %5) #6, !srcloc !8
  %8 = load ptr, ptr @reg_base, align 4
  %9 = getelementptr i8, ptr %8, i32 86052
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 0) #6, !srcloc !8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @samsung_clk_extended_sleep_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @samsung_clk_of_add_provider(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @exynos4_get_xom() unnamed_addr #0 section ".init.text" {
  %1 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.8) #6
  %2 = icmp eq ptr %1, null
  br i1 %2, label %11, label %3

3:                                                ; preds = %0
  %4 = tail call ptr @of_iomap(ptr noundef nonnull %1, i32 noundef 0) #6
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %3
  %7 = getelementptr i8, ptr %4, i32 8
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  br label %9

9:                                                ; preds = %6, %3
  %10 = phi i32 [ %8, %6 ], [ 0, %3 ]
  tail call void @iounmap(ptr noundef %4) #6
  tail call void @of_node_put(ptr noundef nonnull %1) #6
  br label %11

11:                                               ; preds = %9, %0
  %12 = phi i32 [ %10, %9 ], [ 0, %0 ]
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #2

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold noreturn null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold }
attributes #6 = { nounwind }
attributes #7 = { cold noreturn nounwind }
attributes #8 = { cold nounwind }

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
!8 = !{i64 3080944}
!9 = !{i64 3081362}
!10 = !{i64 2150901307}
