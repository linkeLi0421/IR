; ModuleID = '/llk/IR/drivers/clk/samsung/clk-exynos5420.c_pt.bc'
source_filename = "../drivers/clk/samsung/clk-exynos5420.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.samsung_fixed_rate_clock = type { i32, ptr, ptr, i32, i32 }
%struct.samsung_pll_rate_table = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.samsung_pll_clock = type { i32, ptr, ptr, i32, i32, i32, i32, ptr }
%struct.samsung_fixed_factor_clock = type { i32, ptr, ptr, i32, i32, i32 }
%struct.samsung_mux_clock = type { i32, ptr, ptr, i8, i32, i32, i8, i8, i8 }
%struct.samsung_div_clock = type { i32, ptr, ptr, i32, i32, i8, i8, i8, ptr }
%struct.samsung_gate_clock = type { i32, ptr, ptr, i32, i32, i8, i8 }
%struct.samsung_cpu_clock = type { i32, ptr, i32, i32, i32, i32, ptr }
%struct.samsung_clk_reg_dump = type { i32, i32 }
%struct.exynos_cpuclk_cfg_data = type { i32, i32, i32 }
%struct.exynos5_subcmu_info = type { ptr, i32, ptr, i32, ptr, i32, ptr }
%struct.exynos5_subcmu_reg_dump = type { i32, i32, i32, i32 }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.list_head = type { ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.samsung_clk_provider = type { ptr, ptr, %struct.spinlock, %struct.clk_hw_onecell_data }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.clk_hw_onecell_data = type { i32, [0 x ptr] }
%struct.clk_hw = type { ptr, ptr, ptr }

@__of_table_exynos5420_clk = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5420-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos5420_clk_of_clk_init_driver }, section "__clk_of_table", align 4
@__of_table_exynos5800_clk = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5800-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos5800_clk_of_clk_init_driver }, section "__clk_of_table", align 4
@reg_base = internal unnamed_addr global ptr null, align 4
@.str = private unnamed_addr constant [29 x i8] c"%s: failed to map registers\0A\00", align 1
@__func__.exynos5x_clk_init = private unnamed_addr constant [18 x i8] c"exynos5x_clk_init\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"%s: unable to determine soc\0A\00", align 1
@exynos5x_fixed_rate_ext_clks = internal global [1 x %struct.samsung_fixed_rate_clock] [%struct.samsung_fixed_rate_clock { i32 1, ptr @.str.2, ptr null, i32 0, i32 0 }], section ".init.data", align 4
@ext_clk_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5420-oscclk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], section ".init.rodata", align 4
@exynos5420_pll2550x_24mhz_tbl = internal constant [19 x %struct.samsung_pll_rate_table] [%struct.samsung_pll_rate_table { i32 2000000000, i32 3, i32 250, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 1900000000, i32 6, i32 475, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 1800000000, i32 3, i32 225, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 1700000000, i32 6, i32 425, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 1600000000, i32 3, i32 200, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 1500000000, i32 4, i32 250, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 1400000000, i32 3, i32 175, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 1300000000, i32 6, i32 325, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 1200000000, i32 2, i32 200, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 1100000000, i32 3, i32 275, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 1000000000, i32 3, i32 250, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 900000000, i32 2, i32 150, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 800000000, i32 3, i32 200, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 700000000, i32 3, i32 175, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 600000000, i32 2, i32 200, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 500000000, i32 3, i32 250, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 400000000, i32 3, i32 200, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 300000000, i32 2, i32 200, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 200000000, i32 3, i32 200, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0 }], section ".init.rodata", align 4
@exynos5x_plls = internal global [11 x %struct.samsung_pll_clock] [%struct.samsung_pll_clock { i32 2, ptr @.str.3, ptr @.str.2, i32 64, i32 256, i32 0, i32 4, ptr null }, %struct.samsung_pll_clock { i32 3, ptr @.str.4, ptr @.str.2, i32 64, i32 65824, i32 65568, i32 4, ptr null }, %struct.samsung_pll_clock { i32 4, ptr @.str.5, ptr @.str.2, i32 64, i32 65832, i32 65584, i32 4, ptr null }, %struct.samsung_pll_clock { i32 5, ptr @.str.6, ptr @.str.2, i32 64, i32 65840, i32 65600, i32 3, ptr null }, %struct.samsung_pll_clock { i32 6, ptr @.str.7, ptr @.str.2, i32 64, i32 65856, i32 65616, i32 5, ptr null }, %struct.samsung_pll_clock { i32 7, ptr @.str.8, ptr @.str.2, i32 64, i32 65872, i32 65632, i32 4, ptr null }, %struct.samsung_pll_clock { i32 8, ptr @.str.9, ptr @.str.2, i32 64, i32 65888, i32 65648, i32 4, ptr null }, %struct.samsung_pll_clock { i32 9, ptr @.str.10, ptr @.str.2, i32 64, i32 65904, i32 65664, i32 4, ptr null }, %struct.samsung_pll_clock { i32 10, ptr @.str.11, ptr @.str.2, i32 64, i32 65920, i32 65680, i32 4, ptr null }, %struct.samsung_pll_clock { i32 11, ptr @.str.12, ptr @.str.2, i32 64, i32 131344, i32 131088, i32 4, ptr null }, %struct.samsung_pll_clock { i32 12, ptr @.str.13, ptr @.str.2, i32 64, i32 164096, i32 163840, i32 4, ptr null }], section ".init.data", align 4
@exynos5420_epll_24mhz_tbl = internal constant [15 x %struct.samsung_pll_rate_table] [%struct.samsung_pll_rate_table { i32 600000000, i32 2, i32 100, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 400000000, i32 3, i32 200, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 393216003, i32 3, i32 197, i32 2, i32 -25690, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 361267218, i32 5, i32 301, i32 2, i32 3671, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 200000000, i32 3, i32 200, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 196608001, i32 3, i32 197, i32 3, i32 -25690, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 180633609, i32 5, i32 301, i32 3, i32 3671, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 131072006, i32 3, i32 131, i32 3, i32 4719, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 100000000, i32 3, i32 200, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 73728000, i32 2, i32 98, i32 4, i32 19923, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 67737602, i32 2, i32 90, i32 4, i32 20762, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 65536003, i32 3, i32 131, i32 4, i32 4719, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 49152000, i32 3, i32 197, i32 5, i32 -25690, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 45158401, i32 3, i32 90, i32 4, i32 20762, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 32768001, i32 3, i32 131, i32 5, i32 4719, i32 0, i32 0, i32 0, i32 0 }], align 4
@exynos5420_vpll_24mhz_tbl = internal constant [8 x %struct.samsung_pll_rate_table] [%struct.samsung_pll_rate_table { i32 600000000, i32 2, i32 200, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 543000000, i32 2, i32 181, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 480000000, i32 2, i32 160, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 420000000, i32 2, i32 140, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 350000000, i32 3, i32 175, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 266000000, i32 3, i32 266, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 177000000, i32 2, i32 118, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 100000000, i32 3, i32 200, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0 }], align 4
@exynos5422_bpll_rate_table = internal constant [8 x %struct.samsung_pll_rate_table] [%struct.samsung_pll_rate_table { i32 825000000, i32 4, i32 275, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 728000000, i32 3, i32 182, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 633000000, i32 4, i32 211, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 543000000, i32 2, i32 181, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 413000000, i32 6, i32 413, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 275000000, i32 3, i32 275, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 206000000, i32 3, i32 206, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 165000000, i32 2, i32 110, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0 }], align 4
@exynos5x_fixed_rate_clks = internal constant [5 x %struct.samsung_fixed_rate_clock] [%struct.samsung_fixed_rate_clock { i32 158, ptr @.str.14, ptr null, i32 0, i32 24000000 }, %struct.samsung_fixed_rate_clock { i32 0, ptr @.str.15, ptr null, i32 0, i32 24000000 }, %struct.samsung_fixed_rate_clock { i32 0, ptr @.str.16, ptr null, i32 0, i32 48000000 }, %struct.samsung_fixed_rate_clock { i32 0, ptr @.str.17, ptr null, i32 0, i32 48000000 }, %struct.samsung_fixed_rate_clock { i32 0, ptr @.str.18, ptr null, i32 0, i32 480000000 }], section ".init.rodata", align 4
@exynos5x_fixed_factor_clks = internal constant [2 x %struct.samsung_fixed_factor_clock] [%struct.samsung_fixed_factor_clock { i32 0, ptr @.str.19, ptr @.str.2, i32 1, i32 2, i32 0 }, %struct.samsung_fixed_factor_clock { i32 0, ptr @.str.20, ptr @.str.21, i32 1, i32 2, i32 0 }], section ".init.rodata", align 4
@exynos5x_mux_clks = internal constant [101 x %struct.samsung_mux_clock] [%struct.samsung_mux_clock { i32 0, ptr @.str.22, ptr @mout_user_pclk66_gpio_p, i8 2, i32 128, i32 66076, i8 4, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 666, ptr @.str.23, ptr @mout_mspll_cpu_p, i8 4, i32 128, i32 66076, i8 8, i8 2, i8 0 }, %struct.samsung_mux_clock { i32 664, ptr @.str.24, ptr @mout_mspll_cpu_p, i8 4, i32 128, i32 66076, i8 12, i8 2, i8 0 }, %struct.samsung_mux_clock { i32 663, ptr @.str.25, ptr @mout_apll_p, i8 2, i32 644, i32 512, i8 0, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.26, ptr @mout_cpu_p, i8 2, i32 128, i32 512, i8 16, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 665, ptr @.str.27, ptr @mout_kpll_p, i8 2, i32 644, i32 164352, i8 0, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.28, ptr @mout_kfc_p, i8 2, i32 128, i32 164352, i8 16, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.29, ptr @mout_group1_p, i8 3, i32 128, i32 66048, i8 8, i8 2, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.30, ptr @mout_group1_p, i8 3, i32 128, i32 66048, i8 12, i8 2, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.31, ptr @mout_group1_p, i8 3, i32 128, i32 66048, i8 24, i8 2, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.32, ptr @mout_group1_p, i8 3, i32 128, i32 66048, i8 28, i8 2, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.33, ptr @mout_group1_p, i8 3, i32 128, i32 66052, i8 8, i8 2, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.34, ptr @mout_group1_p, i8 3, i32 128, i32 66052, i8 24, i8 2, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.35, ptr @mout_group5_p, i8 2, i32 132, i32 66056, i8 16, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.36, ptr @mout_user_aclk400_isp_p, i8 2, i32 128, i32 66060, i8 0, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.37, ptr @mout_user_aclk400_mscl_p, i8 2, i32 128, i32 66060, i8 4, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 646, ptr @.str.38, ptr @mout_user_aclk200_disp1_p, i8 2, i32 128, i32 66060, i8 8, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.39, ptr @mout_user_aclk200_fsys2_p, i8 2, i32 128, i32 66060, i8 12, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.40, ptr @mout_user_aclk400_wcore_p, i8 2, i32 128, i32 66060, i8 16, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.41, ptr @mout_user_aclk100_noc_p, i8 2, i32 128, i32 66060, i8 20, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.42, ptr @mout_user_pclk200_fsys_p, i8 2, i32 128, i32 66060, i8 24, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.43, ptr @mout_user_aclk200_fsys_p, i8 2, i32 128, i32 66060, i8 28, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.44, ptr @mout_user_aclk333_432_gscl_p, i8 2, i32 128, i32 66064, i8 0, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.45, ptr @mout_user_aclk333_432_isp_p, i8 2, i32 128, i32 66064, i8 4, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.46, ptr @mout_user_aclk66_peric_p, i8 2, i32 128, i32 66064, i8 8, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.47, ptr @mout_user_aclk333_432_isp0_p, i8 2, i32 128, i32 66064, i8 12, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.48, ptr @mout_user_aclk266_isp_p, i8 2, i32 128, i32 66064, i8 16, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.49, ptr @mout_user_aclk266_p, i8 2, i32 128, i32 66064, i8 20, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.50, ptr @mout_user_aclk166_p, i8 2, i32 128, i32 66064, i8 24, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 644, ptr @.str.51, ptr @mout_user_aclk333_p, i8 2, i32 128, i32 66064, i8 28, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 650, ptr @.str.52, ptr @mout_user_aclk400_disp1_p, i8 2, i32 128, i32 66068, i8 0, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.53, ptr @mout_user_aclk66_peric_p, i8 2, i32 128, i32 66068, i8 4, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.54, ptr @mout_user_aclk333_g2d_p, i8 2, i32 128, i32 66068, i8 8, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.55, ptr @mout_user_aclk266_g2d_p, i8 2, i32 128, i32 66068, i8 12, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 641, ptr @.str.56, ptr @mout_user_aclk_g3d_p, i8 2, i32 132, i32 66068, i8 16, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.57, ptr @mout_user_aclk300_jpeg_p, i8 2, i32 128, i32 66068, i8 20, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 648, ptr @.str.58, ptr @mout_user_aclk300_disp1_p, i8 2, i32 128, i32 66068, i8 24, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 652, ptr @.str.59, ptr @mout_user_aclk300_gscl_p, i8 2, i32 128, i32 66068, i8 28, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.60, ptr @mout_mpll_p, i8 2, i32 128, i32 66072, i8 0, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 642, ptr @.str.61, ptr @mout_vpll_p, i8 2, i32 132, i32 66072, i8 4, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 660, ptr @.str.62, ptr @mout_spll_p, i8 2, i32 128, i32 66072, i8 8, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.63, ptr @mout_ipll_p, i8 2, i32 128, i32 66072, i8 12, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.64, ptr @mout_rpll_p, i8 2, i32 128, i32 66072, i8 16, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 657, ptr @.str.65, ptr @mout_epll_p, i8 2, i32 132, i32 66072, i8 20, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.66, ptr @mout_dpll_p, i8 2, i32 128, i32 66072, i8 24, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.67, ptr @mout_cpll_p, i8 2, i32 128, i32 66072, i8 28, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.68, ptr @mout_sw_aclk400_isp_p, i8 2, i32 128, i32 66176, i8 0, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.69, ptr @mout_sw_aclk400_mscl_p, i8 2, i32 128, i32 66176, i8 4, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 647, ptr @.str.70, ptr @mout_sw_aclk200_p, i8 2, i32 128, i32 66176, i8 8, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.71, ptr @mout_sw_aclk200_fsys2_p, i8 2, i32 128, i32 66176, i8 12, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.72, ptr @mout_sw_aclk400_wcore_p, i8 2, i32 128, i32 66176, i8 16, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.73, ptr @mout_sw_aclk100_noc_p, i8 2, i32 128, i32 66176, i8 20, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.74, ptr @mout_sw_pclk200_fsys_p, i8 2, i32 128, i32 66176, i8 24, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.75, ptr @mout_sw_aclk200_fsys_p, i8 2, i32 128, i32 66176, i8 28, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.76, ptr @mout_sw_aclk333_432_gscl_p, i8 2, i32 128, i32 66180, i8 0, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.77, ptr @mout_sw_aclk333_432_isp_p, i8 2, i32 128, i32 66180, i8 4, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.21, ptr @mout_sw_aclk66_p, i8 2, i32 128, i32 66180, i8 8, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.78, ptr @mout_sw_aclk333_432_isp0_p, i8 2, i32 128, i32 66180, i8 12, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.79, ptr @mout_sw_aclk266_p, i8 2, i32 128, i32 66180, i8 20, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.80, ptr @mout_sw_aclk166_p, i8 2, i32 128, i32 66180, i8 24, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 645, ptr @.str.81, ptr @mout_sw_aclk333_p, i8 2, i32 128, i32 66180, i8 28, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 651, ptr @.str.82, ptr @mout_sw_aclk400_disp1_p, i8 2, i32 128, i32 66184, i8 4, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.83, ptr @mout_sw_aclk333_g2d_p, i8 2, i32 128, i32 66184, i8 8, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.84, ptr @mout_sw_aclk266_g2d_p, i8 2, i32 128, i32 66184, i8 12, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 662, ptr @.str.85, ptr @mout_sw_aclk_g3d_p, i8 2, i32 132, i32 66184, i8 16, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.86, ptr @mout_sw_aclk300_jpeg_p, i8 2, i32 128, i32 66184, i8 20, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 649, ptr @.str.87, ptr @mout_sw_aclk300_disp1_p, i8 2, i32 128, i32 66184, i8 24, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 653, ptr @.str.88, ptr @mout_sw_aclk300_gscl_p, i8 2, i32 128, i32 66184, i8 28, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.89, ptr @mout_group2_p, i8 8, i32 128, i32 66092, i8 16, i8 3, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.90, ptr @mout_group2_p, i8 8, i32 128, i32 66092, i8 20, i8 3, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.91, ptr @mout_group2_p, i8 8, i32 128, i32 66092, i8 24, i8 3, i8 0 }, %struct.samsung_mux_clock { i32 640, ptr @.str.92, ptr @mout_hdmi_p, i8 2, i32 128, i32 66092, i8 28, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.93, ptr @mout_group2_p, i8 8, i32 128, i32 66092, i8 8, i8 3, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.94, ptr @mout_fimd1_final_p, i8 2, i32 128, i32 68360, i8 8, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 654, ptr @.str.95, ptr @mout_mclk_cdrex_p, i8 2, i32 132, i32 131584, i8 4, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 655, ptr @.str.96, ptr @mout_bpll_p, i8 2, i32 132, i32 131584, i8 0, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 643, ptr @.str.97, ptr @mout_maudio0_p, i8 8, i32 128, i32 66112, i8 28, i8 3, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.98, ptr @mout_group2_p, i8 8, i32 128, i32 66116, i8 4, i8 3, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.99, ptr @mout_group2_p, i8 8, i32 128, i32 66116, i8 8, i8 3, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.100, ptr @mout_group2_p, i8 8, i32 128, i32 66116, i8 12, i8 3, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.101, ptr @mout_group2_p, i8 8, i32 128, i32 66116, i8 16, i8 3, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.102, ptr @mout_group2_p, i8 8, i32 128, i32 66116, i8 20, i8 3, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.103, ptr @mout_group2_p, i8 8, i32 128, i32 66116, i8 24, i8 3, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.104, ptr @mout_group2_p, i8 8, i32 128, i32 66116, i8 28, i8 3, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.105, ptr @mout_group2_p, i8 8, i32 128, i32 66128, i8 4, i8 3, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.106, ptr @mout_group2_p, i8 8, i32 128, i32 66128, i8 8, i8 3, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.107, ptr @mout_group2_p, i8 8, i32 128, i32 66128, i8 12, i8 3, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.108, ptr @mout_group2_p, i8 8, i32 128, i32 66128, i8 16, i8 3, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.109, ptr @mout_group2_p, i8 8, i32 128, i32 66128, i8 24, i8 3, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.110, ptr @mout_spdif_p, i8 8, i32 128, i32 66128, i8 28, i8 3, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.111, ptr @mout_audio0_p, i8 8, i32 128, i32 66132, i8 8, i8 3, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.112, ptr @mout_audio1_p, i8 8, i32 128, i32 66132, i8 12, i8 3, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.113, ptr @mout_audio2_p, i8 8, i32 128, i32 66132, i8 16, i8 3, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.114, ptr @mout_group2_p, i8 8, i32 128, i32 66132, i8 20, i8 3, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.115, ptr @mout_group2_p, i8 8, i32 128, i32 66132, i8 24, i8 3, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.116, ptr @mout_group2_p, i8 8, i32 128, i32 66132, i8 28, i8 3, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.117, ptr @mout_group2_p, i8 8, i32 128, i32 66160, i8 24, i8 3, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.118, ptr @mout_group2_p, i8 8, i32 128, i32 66160, i8 20, i8 3, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.119, ptr @mout_group2_p, i8 8, i32 128, i32 66160, i8 12, i8 3, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.120, ptr @mout_group2_p, i8 8, i32 128, i32 66160, i8 16, i8 3, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.121, ptr @mout_group2_p, i8 8, i32 128, i32 66160, i8 28, i8 3, i8 0 }], section ".init.rodata", align 4
@exynos5x_div_clks = internal constant [79 x %struct.samsung_div_clock] [%struct.samsung_div_clock { i32 0, ptr @.str.155, ptr @.str.26, i32 0, i32 1280, i8 0, i8 3, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.156, ptr @.str.25, i32 0, i32 1280, i8 24, i8 3, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.157, ptr @.str.155, i32 0, i32 1280, i8 28, i8 3, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.158, ptr @.str.28, i32 0, i32 165120, i8 0, i8 3, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.159, ptr @.str.27, i32 0, i32 165120, i8 24, i8 3, i8 0, ptr null }, %struct.samsung_div_clock { i32 770, ptr @.str.122, ptr @.str.160, i32 0, i32 66816, i8 0, i8 3, i8 0, ptr null }, %struct.samsung_div_clock { i32 771, ptr @.str.123, ptr @.str.161, i32 0, i32 66816, i8 4, i8 3, i8 0, ptr null }, %struct.samsung_div_clock { i32 772, ptr @.str.124, ptr @.str.29, i32 0, i32 66816, i8 8, i8 3, i8 0, ptr null }, %struct.samsung_div_clock { i32 773, ptr @.str.125, ptr @.str.30, i32 0, i32 66816, i8 12, i8 3, i8 0, ptr null }, %struct.samsung_div_clock { i32 774, ptr @.str.127, ptr @.str.162, i32 0, i32 66816, i8 20, i8 3, i8 0, ptr null }, %struct.samsung_div_clock { i32 775, ptr @.str.128, ptr @.str.31, i32 0, i32 66816, i8 24, i8 3, i8 0, ptr null }, %struct.samsung_div_clock { i32 776, ptr @.str.129, ptr @.str.32, i32 0, i32 66816, i8 28, i8 3, i8 0, ptr null }, %struct.samsung_div_clock { i32 777, ptr @.str.130, ptr @.str.163, i32 0, i32 66820, i8 0, i8 3, i8 0, ptr null }, %struct.samsung_div_clock { i32 778, ptr @.str.131, ptr @.str.164, i32 0, i32 66820, i8 4, i8 3, i8 0, ptr null }, %struct.samsung_div_clock { i32 779, ptr @.str.132, ptr @.str.33, i32 0, i32 66820, i8 8, i8 6, i8 0, ptr null }, %struct.samsung_div_clock { i32 780, ptr @.str.133, ptr @.str.165, i32 0, i32 66820, i8 16, i8 3, i8 0, ptr null }, %struct.samsung_div_clock { i32 781, ptr @.str.134, ptr @.str.166, i32 0, i32 66820, i8 20, i8 3, i8 0, ptr null }, %struct.samsung_div_clock { i32 782, ptr @.str.135, ptr @.str.34, i32 0, i32 66820, i8 24, i8 3, i8 0, ptr null }, %struct.samsung_div_clock { i32 783, ptr @.str.136, ptr @.str.167, i32 0, i32 66820, i8 28, i8 3, i8 0, ptr null }, %struct.samsung_div_clock { i32 784, ptr @.str.138, ptr @.str.168, i32 0, i32 66824, i8 8, i8 3, i8 0, ptr null }, %struct.samsung_div_clock { i32 785, ptr @.str.139, ptr @.str.169, i32 0, i32 66824, i8 12, i8 3, i8 0, ptr null }, %struct.samsung_div_clock { i32 786, ptr @.str.140, ptr @.str.35, i32 4, i32 66824, i8 16, i8 3, i8 0, ptr null }, %struct.samsung_div_clock { i32 787, ptr @.str.141, ptr @.str.170, i32 0, i32 66824, i8 20, i8 3, i8 0, ptr null }, %struct.samsung_div_clock { i32 788, ptr @.str.142, ptr @.str.171, i32 0, i32 66824, i8 24, i8 3, i8 0, ptr null }, %struct.samsung_div_clock { i32 789, ptr @.str.143, ptr @.str.172, i32 0, i32 66824, i8 28, i8 3, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.173, ptr @.str.94, i32 0, i32 66860, i8 0, i8 4, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.174, ptr @.str.89, i32 0, i32 66860, i8 16, i8 8, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.175, ptr @.str.90, i32 0, i32 66860, i8 24, i8 4, i8 0, ptr null }, %struct.samsung_div_clock { i32 768, ptr @.str.144, ptr @.str.91, i32 0, i32 66860, i8 28, i8 4, i8 0, ptr null }, %struct.samsung_div_clock { i32 790, ptr @.str.137, ptr @.str.176, i32 0, i32 66824, i8 4, i8 3, i8 0, ptr null }, %struct.samsung_div_clock { i32 791, ptr @.str.177, ptr @.str.178, i32 64, i32 132352, i8 28, i8 3, i8 0, ptr null }, %struct.samsung_div_clock { i32 798, ptr @.str.179, ptr @.str.180, i32 64, i32 132352, i8 28, i8 3, i8 0, ptr null }, %struct.samsung_div_clock { i32 799, ptr @.str.181, ptr @.str.180, i32 64, i32 132352, i8 28, i8 3, i8 0, ptr null }, %struct.samsung_div_clock { i32 792, ptr @.str.182, ptr @.str.95, i32 4, i32 132352, i8 24, i8 3, i8 0, ptr null }, %struct.samsung_div_clock { i32 793, ptr @.str.178, ptr @.str.183, i32 0, i32 132352, i8 16, i8 3, i8 0, ptr null }, %struct.samsung_div_clock { i32 794, ptr @.str.180, ptr @.str.183, i32 0, i32 132352, i8 8, i8 3, i8 0, ptr null }, %struct.samsung_div_clock { i32 795, ptr @.str.183, ptr @.str.182, i32 0, i32 132352, i8 3, i8 5, i8 0, ptr null }, %struct.samsung_div_clock { i32 796, ptr @.str.184, ptr @.str.95, i32 0, i32 132356, i8 8, i8 3, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.185, ptr @.str.97, i32 0, i32 66884, i8 20, i8 4, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.186, ptr @.str.185, i32 0, i32 66884, i8 24, i8 8, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.187, ptr @.str.98, i32 0, i32 66888, i8 12, i8 4, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.188, ptr @.str.102, i32 0, i32 66888, i8 16, i8 4, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.189, ptr @.str.98, i32 0, i32 66888, i8 20, i8 4, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.190, ptr @.str.102, i32 0, i32 66888, i8 24, i8 4, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.191, ptr @.str.99, i32 0, i32 66892, i8 0, i8 10, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.192, ptr @.str.100, i32 0, i32 66892, i8 10, i8 10, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.193, ptr @.str.101, i32 0, i32 66892, i8 20, i8 10, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.194, ptr @.str.103, i32 0, i32 66896, i8 24, i8 8, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.195, ptr @.str.104, i32 0, i32 66896, i8 16, i8 8, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.196, ptr @.str.105, i32 0, i32 66904, i8 8, i8 4, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.197, ptr @.str.106, i32 0, i32 66904, i8 12, i8 4, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.198, ptr @.str.107, i32 0, i32 66904, i8 16, i8 4, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.199, ptr @.str.108, i32 0, i32 66904, i8 20, i8 4, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.200, ptr @.str.109, i32 0, i32 66904, i8 28, i8 4, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.201, ptr @.str.114, i32 0, i32 66908, i8 20, i8 4, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.202, ptr @.str.115, i32 0, i32 66908, i8 24, i8 4, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.203, ptr @.str.116, i32 0, i32 66908, i8 28, i8 4, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.204, ptr @.str.149, i32 0, i32 66912, i8 16, i8 8, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.205, ptr @.str.150, i32 0, i32 66912, i8 24, i8 8, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.206, ptr @.str.149, i32 0, i32 66916, i8 6, i8 6, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.207, ptr @.str.150, i32 0, i32 66916, i8 12, i8 6, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.148, ptr @.str.111, i32 0, i32 66916, i8 20, i8 4, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.149, ptr @.str.112, i32 0, i32 66916, i8 24, i8 4, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.150, ptr @.str.113, i32 0, i32 66916, i8 28, i8 4, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.208, ptr @.str.201, i32 0, i32 66920, i8 8, i8 8, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.209, ptr @.str.202, i32 0, i32 66920, i8 16, i8 8, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.210, ptr @.str.203, i32 0, i32 66920, i8 24, i8 8, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.211, ptr @.str.212, i32 0, i32 66960, i8 6, i8 2, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.213, ptr @.str.49, i32 0, i32 66960, i8 8, i8 1, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.214, ptr @.str.215, i32 0, i32 66960, i8 20, i8 1, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.216, ptr @.str.121, i32 0, i32 66944, i8 8, i8 8, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.217, ptr @.str.121, i32 0, i32 66944, i8 16, i8 8, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.218, ptr @.str.121, i32 0, i32 66944, i8 24, i8 8, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.219, ptr @.str.117, i32 0, i32 66948, i8 28, i8 4, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.220, ptr @.str.118, i32 0, i32 66948, i8 24, i8 4, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.221, ptr @.str.119, i32 0, i32 66948, i8 16, i8 4, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.222, ptr @.str.120, i32 0, i32 66948, i8 20, i8 4, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.223, ptr @.str.221, i32 4, i32 66948, i8 0, i8 8, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.224, ptr @.str.222, i32 4, i32 66948, i8 8, i8 8, i8 0, ptr null }], section ".init.rodata", align 4
@exynos5x_gate_clks = internal constant [148 x %struct.samsung_gate_clock] [%struct.samsung_gate_clock { i32 473, ptr @.str.225, ptr @.str.226, i32 0, i32 34816, i8 1, i8 0 }, %struct.samsung_gate_clock { i32 471, ptr @.str.227, ptr @.str.226, i32 0, i32 34816, i8 2, i8 0 }, %struct.samsung_gate_clock { i32 481, ptr @.str.228, ptr @.str.229, i32 0, i32 34816, i8 3, i8 0 }, %struct.samsung_gate_clock { i32 504, ptr @.str.230, ptr @.str.226, i32 0, i32 34816, i8 5, i8 0 }, %struct.samsung_gate_clock { i32 503, ptr @.str.231, ptr @.str.229, i32 0, i32 34816, i8 7, i8 0 }, %struct.samsung_gate_clock { i32 0, ptr @.str.232, ptr @.str.43, i32 2048, i32 67392, i8 9, i8 0 }, %struct.samsung_gate_clock { i32 0, ptr @.str.233, ptr @.str.39, i32 8, i32 67392, i8 10, i8 0 }, %struct.samsung_gate_clock { i32 0, ptr @.str.229, ptr @.str.54, i32 8, i32 67328, i8 0, i8 0 }, %struct.samsung_gate_clock { i32 0, ptr @.str.226, ptr @.str.55, i32 2048, i32 67328, i8 1, i8 0 }, %struct.samsung_gate_clock { i32 0, ptr @.str.234, ptr @.str.57, i32 8, i32 67328, i8 4, i8 0 }, %struct.samsung_gate_clock { i32 0, ptr @.str.235, ptr @.str.47, i32 2048, i32 67328, i8 5, i8 0 }, %struct.samsung_gate_clock { i32 0, ptr @.str.236, ptr @.str.59, i32 2048, i32 67328, i8 6, i8 0 }, %struct.samsung_gate_clock { i32 0, ptr @.str.212, ptr @.str.44, i32 8, i32 67328, i8 7, i8 0 }, %struct.samsung_gate_clock { i32 0, ptr @.str.237, ptr @.str.45, i32 2048, i32 67328, i8 8, i8 0 }, %struct.samsung_gate_clock { i32 330, ptr @.str.238, ptr @.str.22, i32 8, i32 67328, i8 9, i8 0 }, %struct.samsung_gate_clock { i32 0, ptr @.str.239, ptr @.str.53, i32 8, i32 67328, i8 10, i8 0 }, %struct.samsung_gate_clock { i32 0, ptr @.str.240, ptr @.str.48, i32 2048, i32 67328, i8 13, i8 0 }, %struct.samsung_gate_clock { i32 0, ptr @.str.215, ptr @.str.50, i32 8, i32 67328, i8 14, i8 0 }, %struct.samsung_gate_clock { i32 400, ptr @.str.241, ptr @.str.51, i32 2048, i32 67328, i8 15, i8 0 }, %struct.samsung_gate_clock { i32 0, ptr @.str.242, ptr @.str.36, i32 2048, i32 67328, i8 16, i8 0 }, %struct.samsung_gate_clock { i32 0, ptr @.str.243, ptr @.str.37, i32 2048, i32 67328, i8 17, i8 0 }, %struct.samsung_gate_clock { i32 0, ptr @.str.244, ptr @.str.38, i32 2048, i32 67328, i8 18, i8 0 }, %struct.samsung_gate_clock { i32 161, ptr @.str.245, ptr @.str.17, i32 0, i32 67328, i8 28, i8 0 }, %struct.samsung_gate_clock { i32 160, ptr @.str.246, ptr @.str.19, i32 0, i32 67328, i8 29, i8 0 }, %struct.samsung_gate_clock { i32 0, ptr @.str.247, ptr @.str.58, i32 2048, i32 66312, i8 24, i8 0 }, %struct.samsung_gate_clock { i32 128, ptr @.str.248, ptr @.str.196, i32 4, i32 67664, i8 0, i8 0 }, %struct.samsung_gate_clock { i32 129, ptr @.str.249, ptr @.str.197, i32 4, i32 67664, i8 1, i8 0 }, %struct.samsung_gate_clock { i32 130, ptr @.str.250, ptr @.str.198, i32 4, i32 67664, i8 2, i8 0 }, %struct.samsung_gate_clock { i32 131, ptr @.str.251, ptr @.str.199, i32 4, i32 67664, i8 3, i8 0 }, %struct.samsung_gate_clock { i32 135, ptr @.str.252, ptr @.str.208, i32 4, i32 67664, i8 6, i8 0 }, %struct.samsung_gate_clock { i32 136, ptr @.str.253, ptr @.str.209, i32 4, i32 67664, i8 7, i8 0 }, %struct.samsung_gate_clock { i32 137, ptr @.str.254, ptr @.str.210, i32 4, i32 67664, i8 8, i8 0 }, %struct.samsung_gate_clock { i32 142, ptr @.str.255, ptr @.str.110, i32 4, i32 67664, i8 9, i8 0 }, %struct.samsung_gate_clock { i32 155, ptr @.str.256, ptr @.str.200, i32 4, i32 67664, i8 11, i8 0 }, %struct.samsung_gate_clock { i32 140, ptr @.str.257, ptr @.str.204, i32 4, i32 67664, i8 15, i8 0 }, %struct.samsung_gate_clock { i32 141, ptr @.str.258, ptr @.str.205, i32 4, i32 67664, i8 16, i8 0 }, %struct.samsung_gate_clock { i32 138, ptr @.str.259, ptr @.str.206, i32 4, i32 67664, i8 17, i8 0 }, %struct.samsung_gate_clock { i32 139, ptr @.str.260, ptr @.str.207, i32 4, i32 67664, i8 18, i8 0 }, %struct.samsung_gate_clock { i32 132, ptr @.str.261, ptr @.str.191, i32 4, i32 67648, i8 0, i8 0 }, %struct.samsung_gate_clock { i32 133, ptr @.str.262, ptr @.str.192, i32 4, i32 67648, i8 1, i8 0 }, %struct.samsung_gate_clock { i32 134, ptr @.str.263, ptr @.str.193, i32 4, i32 67648, i8 2, i8 0 }, %struct.samsung_gate_clock { i32 153, ptr @.str.264, ptr @.str.187, i32 4, i32 67648, i8 7, i8 0 }, %struct.samsung_gate_clock { i32 152, ptr @.str.265, ptr @.str.188, i32 4, i32 67648, i8 8, i8 0 }, %struct.samsung_gate_clock { i32 150, ptr @.str.266, ptr @.str.190, i32 4, i32 67648, i8 9, i8 0 }, %struct.samsung_gate_clock { i32 151, ptr @.str.267, ptr @.str.189, i32 4, i32 67648, i8 10, i8 0 }, %struct.samsung_gate_clock { i32 147, ptr @.str.268, ptr @.str.173, i32 4, i32 67624, i8 0, i8 0 }, %struct.samsung_gate_clock { i32 146, ptr @.str.269, ptr @.str.174, i32 4, i32 67624, i8 3, i8 0 }, %struct.samsung_gate_clock { i32 143, ptr @.str.270, ptr @.str.92, i32 0, i32 67624, i8 9, i8 0 }, %struct.samsung_gate_clock { i32 144, ptr @.str.271, ptr @.str.144, i32 4, i32 67624, i8 10, i8 0 }, %struct.samsung_gate_clock { i32 145, ptr @.str.272, ptr @.str.175, i32 4, i32 67624, i8 20, i8 0 }, %struct.samsung_gate_clock { i32 361, ptr @.str.273, ptr @.str.232, i32 0, i32 67392, i8 0, i8 0 }, %struct.samsung_gate_clock { i32 362, ptr @.str.274, ptr @.str.232, i32 0, i32 67392, i8 1, i8 0 }, %struct.samsung_gate_clock { i32 363, ptr @.str.275, ptr @.str.232, i32 0, i32 67392, i8 2, i8 0 }, %struct.samsung_gate_clock { i32 355, ptr @.str.276, ptr @.str.233, i32 0, i32 67392, i8 3, i8 0 }, %struct.samsung_gate_clock { i32 364, ptr @.str.277, ptr @.str.232, i32 0, i32 67908, i8 9, i8 0 }, %struct.samsung_gate_clock { i32 351, ptr @.str.278, ptr @.str.233, i32 0, i32 67908, i8 12, i8 0 }, %struct.samsung_gate_clock { i32 352, ptr @.str.279, ptr @.str.233, i32 0, i32 67908, i8 13, i8 0 }, %struct.samsung_gate_clock { i32 353, ptr @.str.280, ptr @.str.233, i32 0, i32 67908, i8 14, i8 0 }, %struct.samsung_gate_clock { i32 354, ptr @.str.281, ptr @.str.233, i32 8, i32 67908, i8 17, i8 0 }, %struct.samsung_gate_clock { i32 365, ptr @.str.282, ptr @.str.232, i32 0, i32 67908, i8 18, i8 0 }, %struct.samsung_gate_clock { i32 366, ptr @.str.283, ptr @.str.232, i32 0, i32 67908, i8 19, i8 0 }, %struct.samsung_gate_clock { i32 367, ptr @.str.284, ptr @.str.232, i32 0, i32 67908, i8 20, i8 0 }, %struct.samsung_gate_clock { i32 154, ptr @.str.285, ptr @.str.194, i32 4, i32 66368, i8 24, i8 0 }, %struct.samsung_gate_clock { i32 257, ptr @.str.286, ptr @.str.46, i32 0, i32 67920, i8 0, i8 0 }, %struct.samsung_gate_clock { i32 258, ptr @.str.287, ptr @.str.46, i32 0, i32 67920, i8 1, i8 0 }, %struct.samsung_gate_clock { i32 259, ptr @.str.288, ptr @.str.46, i32 0, i32 67920, i8 2, i8 0 }, %struct.samsung_gate_clock { i32 260, ptr @.str.289, ptr @.str.46, i32 0, i32 67920, i8 3, i8 0 }, %struct.samsung_gate_clock { i32 261, ptr @.str.290, ptr @.str.46, i32 0, i32 67920, i8 6, i8 0 }, %struct.samsung_gate_clock { i32 262, ptr @.str.291, ptr @.str.46, i32 0, i32 67920, i8 7, i8 0 }, %struct.samsung_gate_clock { i32 263, ptr @.str.292, ptr @.str.46, i32 0, i32 67920, i8 8, i8 0 }, %struct.samsung_gate_clock { i32 264, ptr @.str.293, ptr @.str.46, i32 0, i32 67920, i8 9, i8 0 }, %struct.samsung_gate_clock { i32 265, ptr @.str.294, ptr @.str.46, i32 0, i32 67920, i8 10, i8 0 }, %struct.samsung_gate_clock { i32 266, ptr @.str.295, ptr @.str.46, i32 0, i32 67920, i8 11, i8 0 }, %struct.samsung_gate_clock { i32 267, ptr @.str.296, ptr @.str.46, i32 0, i32 67920, i8 12, i8 0 }, %struct.samsung_gate_clock { i32 268, ptr @.str.297, ptr @.str.46, i32 0, i32 67920, i8 13, i8 0 }, %struct.samsung_gate_clock { i32 269, ptr @.str.298, ptr @.str.46, i32 0, i32 67920, i8 14, i8 0 }, %struct.samsung_gate_clock { i32 270, ptr @.str.299, ptr @.str.46, i32 0, i32 67920, i8 15, i8 0 }, %struct.samsung_gate_clock { i32 271, ptr @.str.300, ptr @.str.46, i32 0, i32 67920, i8 16, i8 0 }, %struct.samsung_gate_clock { i32 272, ptr @.str.301, ptr @.str.46, i32 0, i32 67920, i8 17, i8 0 }, %struct.samsung_gate_clock { i32 273, ptr @.str.302, ptr @.str.46, i32 0, i32 67920, i8 18, i8 0 }, %struct.samsung_gate_clock { i32 275, ptr @.str.303, ptr @.str.46, i32 0, i32 67920, i8 20, i8 0 }, %struct.samsung_gate_clock { i32 276, ptr @.str.304, ptr @.str.46, i32 0, i32 67920, i8 21, i8 0 }, %struct.samsung_gate_clock { i32 277, ptr @.str.305, ptr @.str.46, i32 0, i32 67920, i8 22, i8 0 }, %struct.samsung_gate_clock { i32 278, ptr @.str.306, ptr @.str.46, i32 0, i32 67920, i8 23, i8 0 }, %struct.samsung_gate_clock { i32 279, ptr @.str.307, ptr @.str.46, i32 0, i32 67920, i8 24, i8 0 }, %struct.samsung_gate_clock { i32 280, ptr @.str.308, ptr @.str.46, i32 0, i32 67920, i8 26, i8 0 }, %struct.samsung_gate_clock { i32 281, ptr @.str.309, ptr @.str.46, i32 0, i32 67920, i8 28, i8 0 }, %struct.samsung_gate_clock { i32 282, ptr @.str.310, ptr @.str.46, i32 0, i32 67920, i8 30, i8 0 }, %struct.samsung_gate_clock { i32 283, ptr @.str.311, ptr @.str.46, i32 0, i32 67920, i8 31, i8 0 }, %struct.samsung_gate_clock { i32 274, ptr @.str.312, ptr @.str.46, i32 0, i32 67408, i8 22, i8 0 }, %struct.samsung_gate_clock { i32 301, ptr @.str.313, ptr @.str.239, i32 8, i32 67936, i8 0, i8 0 }, %struct.samsung_gate_clock { i32 302, ptr @.str.314, ptr @.str.239, i32 8, i32 67936, i8 1, i8 0 }, %struct.samsung_gate_clock { i32 303, ptr @.str.315, ptr @.str.239, i32 0, i32 67936, i8 6, i8 0 }, %struct.samsung_gate_clock { i32 304, ptr @.str.316, ptr @.str.239, i32 0, i32 67936, i8 7, i8 0 }, %struct.samsung_gate_clock { i32 305, ptr @.str.317, ptr @.str.239, i32 0, i32 67936, i8 8, i8 0 }, %struct.samsung_gate_clock { i32 306, ptr @.str.318, ptr @.str.239, i32 0, i32 67936, i8 9, i8 0 }, %struct.samsung_gate_clock { i32 307, ptr @.str.319, ptr @.str.239, i32 0, i32 67936, i8 10, i8 0 }, %struct.samsung_gate_clock { i32 308, ptr @.str.320, ptr @.str.239, i32 0, i32 67936, i8 11, i8 0 }, %struct.samsung_gate_clock { i32 309, ptr @.str.321, ptr @.str.239, i32 0, i32 67936, i8 12, i8 0 }, %struct.samsung_gate_clock { i32 310, ptr @.str.322, ptr @.str.239, i32 0, i32 67936, i8 13, i8 0 }, %struct.samsung_gate_clock { i32 311, ptr @.str.323, ptr @.str.239, i32 0, i32 67936, i8 14, i8 0 }, %struct.samsung_gate_clock { i32 312, ptr @.str.324, ptr @.str.239, i32 0, i32 67936, i8 15, i8 0 }, %struct.samsung_gate_clock { i32 313, ptr @.str.325, ptr @.str.239, i32 0, i32 67936, i8 16, i8 0 }, %struct.samsung_gate_clock { i32 315, ptr @.str.326, ptr @.str.239, i32 0, i32 67936, i8 18, i8 0 }, %struct.samsung_gate_clock { i32 316, ptr @.str.327, ptr @.str.239, i32 0, i32 67936, i8 19, i8 0 }, %struct.samsung_gate_clock { i32 317, ptr @.str.328, ptr @.str.239, i32 0, i32 67936, i8 20, i8 0 }, %struct.samsung_gate_clock { i32 318, ptr @.str.329, ptr @.str.239, i32 0, i32 67936, i8 21, i8 0 }, %struct.samsung_gate_clock { i32 319, ptr @.str.330, ptr @.str.239, i32 0, i32 67936, i8 22, i8 0 }, %struct.samsung_gate_clock { i32 441, ptr @.str.331, ptr @.str.49, i32 0, i32 67892, i8 1, i8 0 }, %struct.samsung_gate_clock { i32 451, ptr @.str.332, ptr @.str.234, i32 0, i32 67892, i8 2, i8 0 }, %struct.samsung_gate_clock { i32 452, ptr @.str.333, ptr @.str.234, i32 0, i32 67892, i8 3, i8 0 }, %struct.samsung_gate_clock { i32 442, ptr @.str.334, ptr @.str.49, i32 0, i32 67892, i8 4, i8 0 }, %struct.samsung_gate_clock { i32 506, ptr @.str.335, ptr @.str.239, i32 0, i32 67892, i8 5, i8 0 }, %struct.samsung_gate_clock { i32 443, ptr @.str.336, ptr @.str.213, i32 0, i32 67892, i8 6, i8 0 }, %struct.samsung_gate_clock { i32 453, ptr @.str.337, ptr @.str.214, i32 0, i32 67892, i8 7, i8 0 }, %struct.samsung_gate_clock { i32 444, ptr @.str.338, ptr @.str.213, i32 0, i32 67892, i8 9, i8 0 }, %struct.samsung_gate_clock { i32 454, ptr @.str.339, ptr @.str.214, i32 0, i32 67388, i8 28, i8 0 }, %struct.samsung_gate_clock { i32 505, ptr @.str.340, ptr @.str.239, i32 0, i32 67388, i8 12, i8 0 }, %struct.samsung_gate_clock { i32 156, ptr @.str.341, ptr @.str.44, i32 0, i32 67616, i8 6, i8 0 }, %struct.samsung_gate_clock { i32 157, ptr @.str.342, ptr @.str.44, i32 0, i32 67616, i8 7, i8 0 }, %struct.samsung_gate_clock { i32 467, ptr @.str.343, ptr @.str.212, i32 0, i32 67856, i8 4, i8 0 }, %struct.samsung_gate_clock { i32 496, ptr @.str.344, ptr @.str.212, i32 0, i32 67856, i8 5, i8 0 }, %struct.samsung_gate_clock { i32 497, ptr @.str.345, ptr @.str.212, i32 0, i32 67856, i8 6, i8 0 }, %struct.samsung_gate_clock { i32 491, ptr @.str.346, ptr @.str.211, i32 0, i32 67872, i8 2, i8 0 }, %struct.samsung_gate_clock { i32 492, ptr @.str.347, ptr @.str.211, i32 0, i32 67872, i8 3, i8 0 }, %struct.samsung_gate_clock { i32 493, ptr @.str.348, ptr @.str.211, i32 0, i32 67872, i8 4, i8 0 }, %struct.samsung_gate_clock { i32 463, ptr @.str.349, ptr @.str.341, i32 2048, i32 67872, i8 12, i8 0 }, %struct.samsung_gate_clock { i32 464, ptr @.str.350, ptr @.str.342, i32 2048, i32 67872, i8 13, i8 0 }, %struct.samsung_gate_clock { i32 494, ptr @.str.351, ptr @.str.211, i32 0, i32 67872, i8 16, i8 0 }, %struct.samsung_gate_clock { i32 495, ptr @.str.352, ptr @.str.212, i32 0, i32 67872, i8 17, i8 0 }, %struct.samsung_gate_clock { i32 510, ptr @.str.353, ptr @.str.220, i32 4, i32 67696, i8 0, i8 0 }, %struct.samsung_gate_clock { i32 511, ptr @.str.354, ptr @.str.223, i32 4, i32 67696, i8 1, i8 0 }, %struct.samsung_gate_clock { i32 512, ptr @.str.355, ptr @.str.224, i32 4, i32 67696, i8 2, i8 0 }, %struct.samsung_gate_clock { i32 513, ptr @.str.356, ptr @.str.219, i32 4, i32 67696, i8 3, i8 0 }, %struct.samsung_gate_clock { i32 514, ptr @.str.357, ptr @.str.216, i32 4, i32 67696, i8 4, i8 0 }, %struct.samsung_gate_clock { i32 515, ptr @.str.358, ptr @.str.217, i32 4, i32 67696, i8 8, i8 0 }, %struct.samsung_gate_clock { i32 516, ptr @.str.359, ptr @.str.218, i32 4, i32 67696, i8 12, i8 0 }, %struct.samsung_gate_clock { i32 521, ptr @.str.360, ptr @.str.182, i32 0, i32 132864, i8 0, i8 0 }, %struct.samsung_gate_clock { i32 522, ptr @.str.361, ptr @.str.182, i32 0, i32 132864, i8 1, i8 0 }, %struct.samsung_gate_clock { i32 0, ptr @.str.362, ptr @.str.363, i32 8, i32 66332, i8 0, i8 0 }, %struct.samsung_gate_clock { i32 526, ptr @.str.364, ptr @.str.178, i32 8, i32 132868, i8 12, i8 0 }, %struct.samsung_gate_clock { i32 525, ptr @.str.365, ptr @.str.178, i32 8, i32 132868, i8 13, i8 0 }, %struct.samsung_gate_clock { i32 524, ptr @.str.366, ptr @.str.178, i32 8, i32 132868, i8 14, i8 0 }, %struct.samsung_gate_clock { i32 523, ptr @.str.367, ptr @.str.178, i32 8, i32 132868, i8 15, i8 0 }, %struct.samsung_gate_clock { i32 530, ptr @.str.368, ptr @.str.177, i32 8, i32 132868, i8 26, i8 0 }, %struct.samsung_gate_clock { i32 529, ptr @.str.369, ptr @.str.177, i32 8, i32 132868, i8 27, i8 0 }, %struct.samsung_gate_clock { i32 528, ptr @.str.370, ptr @.str.177, i32 8, i32 132868, i8 28, i8 0 }, %struct.samsung_gate_clock { i32 527, ptr @.str.371, ptr @.str.177, i32 8, i32 132868, i8 29, i8 0 }], section ".init.rodata", align 4
@exynos5420_mux_clks = internal constant [20 x %struct.samsung_mux_clock] [%struct.samsung_mux_clock { i32 0, ptr @.str.372, ptr @mout_bpll_p, i8 2, i32 128, i32 68360, i8 0, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.373, ptr @mout_aclk400_wcore_bpll_p, i8 2, i32 128, i32 68360, i8 4, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.160, ptr @mout_group1_p, i8 3, i32 128, i32 66048, i8 0, i8 2, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.161, ptr @mout_group1_p, i8 3, i32 128, i32 66048, i8 4, i8 2, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.374, ptr @mout_group1_p, i8 3, i32 128, i32 66048, i8 16, i8 2, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.162, ptr @mout_group1_p, i8 3, i32 128, i32 66048, i8 20, i8 2, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.163, ptr @mout_group4_p, i8 3, i32 128, i32 66052, i8 0, i8 2, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.164, ptr @mout_group4_p, i8 3, i32 128, i32 66052, i8 4, i8 2, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.165, ptr @mout_group4_p, i8 3, i32 128, i32 66052, i8 12, i8 2, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.166, ptr @mout_group1_p, i8 3, i32 128, i32 66052, i8 20, i8 2, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.167, ptr @mout_group1_p, i8 3, i32 128, i32 66052, i8 28, i8 2, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.176, ptr @mout_group1_p, i8 3, i32 128, i32 66056, i8 4, i8 2, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.168, ptr @mout_group1_p, i8 3, i32 128, i32 66056, i8 8, i8 2, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.169, ptr @mout_group1_p, i8 3, i32 128, i32 66056, i8 12, i8 2, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.170, ptr @mout_group1_p, i8 3, i32 128, i32 66056, i8 20, i8 2, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.171, ptr @mout_group1_p, i8 3, i32 128, i32 66056, i8 24, i8 2, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.172, ptr @mout_group1_p, i8 3, i32 128, i32 66056, i8 28, i8 2, i8 0 }, %struct.samsung_mux_clock { i32 656, ptr @.str.146, ptr @mout_group5_5800_p, i8 4, i32 128, i32 66076, i8 16, i8 2, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.375, ptr @mout_mau_epll_clk_p, i8 4, i32 132, i32 66076, i8 20, i8 2, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.145, ptr @mout_group3_p, i8 2, i32 128, i32 66092, i8 4, i8 1, i8 0 }], section ".init.rodata", align 4
@exynos5420_div_clks = internal constant [1 x %struct.samsung_div_clock] [%struct.samsung_div_clock { i32 769, ptr @.str.126, ptr @.str.373, i32 0, i32 66816, i8 16, i8 3, i8 0, ptr null }], section ".init.rodata", align 4
@exynos5420_gate_clks = internal constant [4 x %struct.samsung_gate_clock] [%struct.samsung_gate_clock { i32 314, ptr @.str.376, ptr @.str.239, i32 0, i32 67428, i8 1, i8 0 }, %struct.samsung_gate_clock { i32 159, ptr @.str.377, ptr @.str.375, i32 4, i32 66332, i8 20, i8 0 }, %struct.samsung_gate_clock { i32 148, ptr @.str.378, ptr @.str.185, i32 4, i32 67644, i8 0, i8 0 }, %struct.samsung_gate_clock { i32 149, ptr @.str.379, ptr @.str.186, i32 4, i32 67644, i8 1, i8 0 }], section ".init.rodata", align 4
@exynos5800_fixed_factor_clks = internal constant [2 x %struct.samsung_fixed_factor_clock] [%struct.samsung_fixed_factor_clock { i32 0, ptr @.str.380, ptr @.str.65, i32 1, i32 2, i32 0 }, %struct.samsung_fixed_factor_clock { i32 797, ptr @.str.381, ptr @.str.62, i32 1, i32 2, i32 0 }], section ".init.rodata", align 4
@exynos5800_mux_clks = internal constant [34 x %struct.samsung_mux_clock] [%struct.samsung_mux_clock { i32 0, ptr @.str.160, ptr @mout_group3_5800_p, i8 5, i32 128, i32 66048, i8 0, i8 3, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.161, ptr @mout_group3_5800_p, i8 5, i32 128, i32 66048, i8 4, i8 3, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.374, ptr @mout_group2_5800_p, i8 6, i32 128, i32 66048, i8 16, i8 3, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.162, ptr @mout_group1_5800_p, i8 4, i32 128, i32 66048, i8 20, i8 2, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.163, ptr @mout_group6_5800_p, i8 4, i32 128, i32 66052, i8 0, i8 2, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.164, ptr @mout_group6_5800_p, i8 4, i32 128, i32 66052, i8 4, i8 2, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.165, ptr @mout_group6_5800_p, i8 4, i32 128, i32 66052, i8 12, i8 2, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.166, ptr @mout_group5_5800_p, i8 4, i32 128, i32 66052, i8 20, i8 2, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.167, ptr @mout_group1_5800_p, i8 4, i32 128, i32 66052, i8 28, i8 2, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.176, ptr @mout_group7_5800_p, i8 6, i32 128, i32 66056, i8 4, i8 3, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.168, ptr @mout_group5_5800_p, i8 4, i32 128, i32 66056, i8 8, i8 2, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.169, ptr @mout_group5_5800_p, i8 4, i32 128, i32 66056, i8 12, i8 2, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.170, ptr @mout_group5_5800_p, i8 4, i32 128, i32 66056, i8 20, i8 2, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.171, ptr @mout_group5_5800_p, i8 4, i32 128, i32 66056, i8 24, i8 2, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.172, ptr @mout_group5_5800_p, i8 4, i32 128, i32 66056, i8 28, i8 2, i8 0 }, %struct.samsung_mux_clock { i32 661, ptr @.str.363, ptr @mout_mx_mspll_ccore_phy_p, i8 6, i32 128, i32 66076, i8 0, i8 3, i8 0 }, %struct.samsung_mux_clock { i32 656, ptr @.str.146, ptr @mout_mx_mspll_ccore_p, i8 6, i32 128, i32 66076, i8 16, i8 3, i8 0 }, %struct.samsung_mux_clock { i32 658, ptr @.str.375, ptr @mout_mau_epll_clk_5800_p, i8 4, i32 132, i32 66076, i8 20, i8 2, i8 0 }, %struct.samsung_mux_clock { i32 162, ptr @.str.372, ptr @mout_bpll_p, i8 2, i32 128, i32 66076, i8 24, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.382, ptr @mout_epll2_5800_p, i8 2, i32 128, i32 66076, i8 28, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.383, ptr @mout_group3_5800_p, i8 5, i32 128, i32 66080, i8 16, i8 3, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.384, ptr @mout_group3_5800_p, i8 5, i32 128, i32 66080, i8 20, i8 3, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.385, ptr @mout_group6_5800_p, i8 4, i32 128, i32 66080, i8 24, i8 2, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.386, ptr @mout_group6_5800_p, i8 4, i32 128, i32 66080, i8 28, i8 2, i8 0 }, %struct.samsung_mux_clock { i32 659, ptr @.str.387, ptr @mout_group16_5800_p, i8 2, i32 132, i32 66084, i8 8, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.388, ptr @mout_group15_5800_p, i8 2, i32 128, i32 66084, i8 16, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.389, ptr @mout_group13_5800_p, i8 2, i32 128, i32 66084, i8 20, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.390, ptr @mout_group11_5800_p, i8 2, i32 128, i32 66084, i8 24, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.391, ptr @mout_group9_5800_p, i8 2, i32 128, i32 66084, i8 28, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.392, ptr @mout_group14_5800_p, i8 2, i32 128, i32 66188, i8 16, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.393, ptr @mout_group12_5800_p, i8 2, i32 128, i32 66188, i8 20, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.394, ptr @mout_group10_5800_p, i8 2, i32 128, i32 66188, i8 24, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.395, ptr @mout_group8_5800_p, i8 2, i32 128, i32 66188, i8 28, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.145, ptr @mout_group2_p, i8 8, i32 128, i32 66092, i8 4, i8 3, i8 0 }], section ".init.rodata", align 4
@exynos5800_div_clks = internal constant [7 x %struct.samsung_div_clock] [%struct.samsung_div_clock { i32 769, ptr @.str.126, ptr @.str.374, i32 0, i32 66816, i8 16, i8 3, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.397, ptr @.str.383, i32 0, i32 66848, i8 16, i8 3, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.399, ptr @.str.384, i32 0, i32 66848, i8 20, i8 3, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.400, ptr @.str.385, i32 0, i32 66848, i8 24, i8 3, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.401, ptr @.str.386, i32 0, i32 66848, i8 28, i8 3, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.396, ptr @.str.2, i32 0, i32 66852, i8 20, i8 3, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.398, ptr @.str.402, i32 0, i32 66852, i8 24, i8 6, i8 0, ptr null }], section ".init.rodata", align 4
@exynos5800_gate_clks = internal constant [2 x %struct.samsung_gate_clock] [%struct.samsung_gate_clock { i32 520, ptr @.str.403, ptr @.str.388, i32 2048, i32 67328, i8 24, i8 0 }, %struct.samsung_gate_clock { i32 517, ptr @.str.404, ptr @.str.391, i32 2048, i32 67328, i8 27, i8 0 }], section ".init.rodata", align 4
@exynos5420_cpu_clks = internal constant [2 x %struct.samsung_cpu_clock] [%struct.samsung_cpu_clock { i32 13, ptr @.str.405, i32 663, i32 664, i32 0, i32 512, ptr @exynos5420_eglclk_d }, %struct.samsung_cpu_clock { i32 14, ptr @.str.406, i32 665, i32 666, i32 0, i32 164352, ptr @exynos5420_kfcclk_d }], section ".init.rodata", align 4
@exynos5800_cpu_clks = internal constant [2 x %struct.samsung_cpu_clock] [%struct.samsung_cpu_clock { i32 13, ptr @.str.405, i32 663, i32 664, i32 0, i32 512, ptr @exynos5800_eglclk_d }, %struct.samsung_cpu_clock { i32 14, ptr @.str.406, i32 665, i32 666, i32 0, i32 164352, ptr @exynos5420_kfcclk_d }], section ".init.rodata", align 4
@exynos5x_clk_regs = internal constant [98 x i32] [i32 512, i32 1280, i32 1284, i32 1792, i32 2048, i32 2560, i32 256, i32 164096, i32 65824, i32 65832, i32 65840, i32 65844, i32 65848, i32 65856, i32 65860, i32 65864, i32 65872, i32 65888, i32 65904, i32 65920, i32 66048, i32 66052, i32 66056, i32 66060, i32 66064, i32 66068, i32 66072, i32 66076, i32 66092, i32 66112, i32 66116, i32 66128, i32 66132, i32 66176, i32 66180, i32 66184, i32 66312, i32 66332, i32 66348, i32 66368, i32 66384, i32 66388, i32 66304, i32 66308, i32 66356, i32 66416, i32 66160, i32 66816, i32 66820, i32 66824, i32 66860, i32 66884, i32 66888, i32 66892, i32 66896, i32 66904, i32 66908, i32 66912, i32 66916, i32 66920, i32 66944, i32 66948, i32 66960, i32 66976, i32 67368, i32 67328, i32 67388, i32 67392, i32 67400, i32 67408, i32 67412, i32 67424, i32 67428, i32 67440, i32 67696, i32 67856, i32 67872, i32 67884, i32 67880, i32 67888, i32 67892, i32 67908, i32 67920, i32 67936, i32 67952, i32 67616, i32 67624, i32 67644, i32 67648, i32 67664, i32 68360, i32 131584, i32 132352, i32 132356, i32 164352, i32 165120, i32 132864, i32 132868], section ".init.rodata", align 4
@exynos5420_set_clksrc = internal constant [15 x %struct.samsung_clk_reg_dump] [%struct.samsung_clk_reg_dump { i32 17152, i32 -1 }, %struct.samsung_clk_reg_dump { i32 66304, i32 286331153 }, %struct.samsung_clk_reg_dump { i32 66308, i32 286265617 }, %struct.samsung_clk_reg_dump { i32 66312, i32 286331152 }, %struct.samsung_clk_reg_dump { i32 66332, i32 1118464 }, %struct.samsung_clk_reg_dump { i32 66348, i32 286331152 }, %struct.samsung_clk_reg_dump { i32 66356, i32 268435456 }, %struct.samsung_clk_reg_dump { i32 66368, i32 286331152 }, %struct.samsung_clk_reg_dump { i32 66384, i32 286331152 }, %struct.samsung_clk_reg_dump { i32 66388, i32 286331136 }, %struct.samsung_clk_reg_dump { i32 66416, i32 286330880 }, %struct.samsung_clk_reg_dump { i32 67328, i32 -1 }, %struct.samsung_clk_reg_dump { i32 67368, i32 -1 }, %struct.samsung_clk_reg_dump { i32 67920, i32 -1 }, %struct.samsung_clk_reg_dump { i32 67936, i32 -1 }], align 4
@exynos5800_clk_regs = internal constant [8 x i32] [i32 66080, i32 66084, i32 66164, i32 66052, i32 66848, i32 66852, i32 66932, i32 67876], section ".init.rodata", align 4
@exynos5800_subcmus = internal global [6 x ptr] [ptr @exynos5x_disp_subcmu, ptr @exynos5x_gsc_subcmu, ptr @exynos5x_g3d_subcmu, ptr @exynos5x_mfc_subcmu, ptr @exynos5x_mscl_subcmu, ptr @exynos5800_mau_subcmu], align 4
@exynos5x_subcmus = internal global [5 x ptr] [ptr @exynos5x_disp_subcmu, ptr @exynos5x_gsc_subcmu, ptr @exynos5x_g3d_subcmu, ptr @exynos5x_mfc_subcmu, ptr @exynos5x_mscl_subcmu], align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"fin_pll\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"fout_apll\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"fout_cpll\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"fout_dpll\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"fout_epll\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"fout_rpll\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"fout_ipll\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"fout_spll\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"fout_vpll\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"fout_mpll\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"fout_bpll\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"fout_kpll\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"sclk_hdmiphy\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"sclk_pwi\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"sclk_usbh20\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"mphy_refclk_ixtal24\00", align 1
@.str.18 = private unnamed_addr constant [21 x i8] c"sclk_usbh20_scan_clk\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"ff_hsic_12m\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"ff_sw_aclk66\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"mout_sw_aclk66\00", align 1
@.str.22 = private unnamed_addr constant [22 x i8] c"mout_user_pclk66_gpio\00", align 1
@mout_user_pclk66_gpio_p = internal constant [2 x ptr] [ptr @.str.21, ptr @.str.20], section ".init.rodata", align 4
@.str.23 = private unnamed_addr constant [15 x i8] c"mout_mspll_kfc\00", align 1
@mout_mspll_cpu_p = internal constant [4 x ptr] [ptr @.str.67, ptr @.str.66, ptr @.str.60, ptr @.str.62], section ".init.rodata", align 4
@.str.24 = private unnamed_addr constant [15 x i8] c"mout_mspll_cpu\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"mout_apll\00", align 1
@mout_apll_p = internal constant [2 x ptr] [ptr @.str.2, ptr @.str.3], section ".init.rodata", align 4
@.str.26 = private unnamed_addr constant [9 x i8] c"mout_cpu\00", align 1
@mout_cpu_p = internal constant [2 x ptr] [ptr @.str.25, ptr @.str.24], section ".init.rodata", align 4
@.str.27 = private unnamed_addr constant [10 x i8] c"mout_kpll\00", align 1
@mout_kpll_p = internal constant [2 x ptr] [ptr @.str.2, ptr @.str.13], section ".init.rodata", align 4
@.str.28 = private unnamed_addr constant [9 x i8] c"mout_kfc\00", align 1
@mout_kfc_p = internal constant [2 x ptr] [ptr @.str.27, ptr @.str.23], section ".init.rodata", align 4
@.str.29 = private unnamed_addr constant [13 x i8] c"mout_aclk200\00", align 1
@mout_group1_p = internal constant [3 x ptr] [ptr @.str.67, ptr @.str.66, ptr @.str.60], section ".init.rodata", align 4
@.str.30 = private unnamed_addr constant [19 x i8] c"mout_aclk200_fsys2\00", align 1
@.str.31 = private unnamed_addr constant [18 x i8] c"mout_pclk200_fsys\00", align 1
@.str.32 = private unnamed_addr constant [18 x i8] c"mout_aclk200_fsys\00", align 1
@.str.33 = private unnamed_addr constant [12 x i8] c"mout_aclk66\00", align 1
@.str.34 = private unnamed_addr constant [13 x i8] c"mout_aclk166\00", align 1
@.str.35 = private unnamed_addr constant [14 x i8] c"mout_aclk_g3d\00", align 1
@mout_group5_p = internal constant [2 x ptr] [ptr @.str.61, ptr @.str.66], section ".init.rodata", align 4
@.str.36 = private unnamed_addr constant [22 x i8] c"mout_user_aclk400_isp\00", align 1
@mout_user_aclk400_isp_p = internal constant [2 x ptr] [ptr @.str.2, ptr @.str.68], section ".init.rodata", align 4
@.str.37 = private unnamed_addr constant [23 x i8] c"mout_user_aclk400_mscl\00", align 1
@mout_user_aclk400_mscl_p = internal constant [2 x ptr] [ptr @.str.2, ptr @.str.69], section ".init.rodata", align 4
@.str.38 = private unnamed_addr constant [24 x i8] c"mout_user_aclk200_disp1\00", align 1
@mout_user_aclk200_disp1_p = internal constant [2 x ptr] [ptr @.str.2, ptr @.str.70], section ".init.rodata", align 4
@.str.39 = private unnamed_addr constant [24 x i8] c"mout_user_aclk200_fsys2\00", align 1
@mout_user_aclk200_fsys2_p = internal constant [2 x ptr] [ptr @.str.2, ptr @.str.71], section ".init.rodata", align 4
@.str.40 = private unnamed_addr constant [24 x i8] c"mout_user_aclk400_wcore\00", align 1
@mout_user_aclk400_wcore_p = internal constant [2 x ptr] [ptr @.str.2, ptr @.str.72], section ".init.rodata", align 4
@.str.41 = private unnamed_addr constant [22 x i8] c"mout_user_aclk100_noc\00", align 1
@mout_user_aclk100_noc_p = internal constant [2 x ptr] [ptr @.str.2, ptr @.str.73], section ".init.rodata", align 4
@.str.42 = private unnamed_addr constant [23 x i8] c"mout_user_pclk200_fsys\00", align 1
@mout_user_pclk200_fsys_p = internal constant [2 x ptr] [ptr @.str.2, ptr @.str.74], section ".init.rodata", align 4
@.str.43 = private unnamed_addr constant [23 x i8] c"mout_user_aclk200_fsys\00", align 1
@mout_user_aclk200_fsys_p = internal constant [2 x ptr] [ptr @.str.2, ptr @.str.75], section ".init.rodata", align 4
@.str.44 = private unnamed_addr constant [27 x i8] c"mout_user_aclk333_432_gscl\00", align 1
@mout_user_aclk333_432_gscl_p = internal constant [2 x ptr] [ptr @.str.2, ptr @.str.76], section ".init.rodata", align 4
@.str.45 = private unnamed_addr constant [26 x i8] c"mout_user_aclk333_432_isp\00", align 1
@mout_user_aclk333_432_isp_p = internal constant [2 x ptr] [ptr @.str.2, ptr @.str.77], section ".init.rodata", align 4
@.str.46 = private unnamed_addr constant [23 x i8] c"mout_user_aclk66_peric\00", align 1
@mout_user_aclk66_peric_p = internal constant [2 x ptr] [ptr @.str.2, ptr @.str.21], section ".init.rodata", align 4
@.str.47 = private unnamed_addr constant [27 x i8] c"mout_user_aclk333_432_isp0\00", align 1
@mout_user_aclk333_432_isp0_p = internal constant [2 x ptr] [ptr @.str.2, ptr @.str.78], section ".init.rodata", align 4
@.str.48 = private unnamed_addr constant [22 x i8] c"mout_user_aclk266_isp\00", align 1
@mout_user_aclk266_isp_p = internal constant [2 x ptr] [ptr @.str.2, ptr @.str.79], section ".init.rodata", align 4
@.str.49 = private unnamed_addr constant [18 x i8] c"mout_user_aclk266\00", align 1
@mout_user_aclk266_p = internal constant [2 x ptr] [ptr @.str.2, ptr @.str.79], section ".init.rodata", align 4
@.str.50 = private unnamed_addr constant [18 x i8] c"mout_user_aclk166\00", align 1
@mout_user_aclk166_p = internal constant [2 x ptr] [ptr @.str.2, ptr @.str.80], section ".init.rodata", align 4
@.str.51 = private unnamed_addr constant [18 x i8] c"mout_user_aclk333\00", align 1
@mout_user_aclk333_p = internal constant [2 x ptr] [ptr @.str.2, ptr @.str.81], section ".init.rodata", align 4
@.str.52 = private unnamed_addr constant [24 x i8] c"mout_user_aclk400_disp1\00", align 1
@mout_user_aclk400_disp1_p = internal constant [2 x ptr] [ptr @.str.2, ptr @.str.82], section ".init.rodata", align 4
@.str.53 = private unnamed_addr constant [23 x i8] c"mout_user_aclk66_psgen\00", align 1
@.str.54 = private unnamed_addr constant [22 x i8] c"mout_user_aclk333_g2d\00", align 1
@mout_user_aclk333_g2d_p = internal constant [2 x ptr] [ptr @.str.2, ptr @.str.83], section ".init.rodata", align 4
@.str.55 = private unnamed_addr constant [22 x i8] c"mout_user_aclk266_g2d\00", align 1
@mout_user_aclk266_g2d_p = internal constant [2 x ptr] [ptr @.str.2, ptr @.str.84], section ".init.rodata", align 4
@.str.56 = private unnamed_addr constant [19 x i8] c"mout_user_aclk_g3d\00", align 1
@mout_user_aclk_g3d_p = internal constant [2 x ptr] [ptr @.str.2, ptr @.str.85], section ".init.rodata", align 4
@.str.57 = private unnamed_addr constant [23 x i8] c"mout_user_aclk300_jpeg\00", align 1
@mout_user_aclk300_jpeg_p = internal constant [2 x ptr] [ptr @.str.2, ptr @.str.86], section ".init.rodata", align 4
@.str.58 = private unnamed_addr constant [24 x i8] c"mout_user_aclk300_disp1\00", align 1
@mout_user_aclk300_disp1_p = internal constant [2 x ptr] [ptr @.str.2, ptr @.str.87], section ".init.rodata", align 4
@.str.59 = private unnamed_addr constant [23 x i8] c"mout_user_aclk300_gscl\00", align 1
@mout_user_aclk300_gscl_p = internal constant [2 x ptr] [ptr @.str.2, ptr @.str.88], section ".init.rodata", align 4
@.str.60 = private unnamed_addr constant [15 x i8] c"mout_sclk_mpll\00", align 1
@mout_mpll_p = internal constant [2 x ptr] [ptr @.str.2, ptr @.str.11], section ".init.rodata", align 4
@.str.61 = private unnamed_addr constant [15 x i8] c"mout_sclk_vpll\00", align 1
@mout_vpll_p = internal constant [2 x ptr] [ptr @.str.2, ptr @.str.10], section ".init.rodata", align 4
@.str.62 = private unnamed_addr constant [15 x i8] c"mout_sclk_spll\00", align 1
@mout_spll_p = internal constant [2 x ptr] [ptr @.str.2, ptr @.str.9], section ".init.rodata", align 4
@.str.63 = private unnamed_addr constant [15 x i8] c"mout_sclk_ipll\00", align 1
@mout_ipll_p = internal constant [2 x ptr] [ptr @.str.2, ptr @.str.8], section ".init.rodata", align 4
@.str.64 = private unnamed_addr constant [15 x i8] c"mout_sclk_rpll\00", align 1
@mout_rpll_p = internal constant [2 x ptr] [ptr @.str.2, ptr @.str.7], section ".init.rodata", align 4
@.str.65 = private unnamed_addr constant [15 x i8] c"mout_sclk_epll\00", align 1
@mout_epll_p = internal constant [2 x ptr] [ptr @.str.2, ptr @.str.6], section ".init.rodata", align 4
@.str.66 = private unnamed_addr constant [15 x i8] c"mout_sclk_dpll\00", align 1
@mout_dpll_p = internal constant [2 x ptr] [ptr @.str.2, ptr @.str.5], section ".init.rodata", align 4
@.str.67 = private unnamed_addr constant [15 x i8] c"mout_sclk_cpll\00", align 1
@mout_cpll_p = internal constant [2 x ptr] [ptr @.str.2, ptr @.str.4], section ".init.rodata", align 4
@.str.68 = private unnamed_addr constant [20 x i8] c"mout_sw_aclk400_isp\00", align 1
@mout_sw_aclk400_isp_p = internal constant [2 x ptr] [ptr @.str.122, ptr @.str.62], section ".init.rodata", align 4
@.str.69 = private unnamed_addr constant [21 x i8] c"mout_sw_aclk400_mscl\00", align 1
@mout_sw_aclk400_mscl_p = internal constant [2 x ptr] [ptr @.str.123, ptr @.str.62], section ".init.rodata", align 4
@.str.70 = private unnamed_addr constant [16 x i8] c"mout_sw_aclk200\00", align 1
@mout_sw_aclk200_p = internal constant [2 x ptr] [ptr @.str.124, ptr @.str.62], section ".init.rodata", align 4
@.str.71 = private unnamed_addr constant [22 x i8] c"mout_sw_aclk200_fsys2\00", align 1
@mout_sw_aclk200_fsys2_p = internal constant [2 x ptr] [ptr @.str.125, ptr @.str.62], section ".init.rodata", align 4
@.str.72 = private unnamed_addr constant [22 x i8] c"mout_sw_aclk400_wcore\00", align 1
@mout_sw_aclk400_wcore_p = internal constant [2 x ptr] [ptr @.str.126, ptr @.str.62], section ".init.rodata", align 4
@.str.73 = private unnamed_addr constant [20 x i8] c"mout_sw_aclk100_noc\00", align 1
@mout_sw_aclk100_noc_p = internal constant [2 x ptr] [ptr @.str.127, ptr @.str.62], section ".init.rodata", align 4
@.str.74 = private unnamed_addr constant [21 x i8] c"mout_sw_pclk200_fsys\00", align 1
@mout_sw_pclk200_fsys_p = internal constant [2 x ptr] [ptr @.str.128, ptr @.str.62], section ".init.rodata", align 4
@.str.75 = private unnamed_addr constant [21 x i8] c"mout_sw_aclk200_fsys\00", align 1
@mout_sw_aclk200_fsys_p = internal constant [2 x ptr] [ptr @.str.129, ptr @.str.62], section ".init.rodata", align 4
@.str.76 = private unnamed_addr constant [25 x i8] c"mout_sw_aclk333_432_gscl\00", align 1
@mout_sw_aclk333_432_gscl_p = internal constant [2 x ptr] [ptr @.str.130, ptr @.str.62], section ".init.rodata", align 4
@.str.77 = private unnamed_addr constant [24 x i8] c"mout_sw_aclk333_432_isp\00", align 1
@mout_sw_aclk333_432_isp_p = internal constant [2 x ptr] [ptr @.str.131, ptr @.str.62], section ".init.rodata", align 4
@mout_sw_aclk66_p = internal constant [2 x ptr] [ptr @.str.132, ptr @.str.62], section ".init.rodata", align 4
@.str.78 = private unnamed_addr constant [25 x i8] c"mout_sw_aclk333_432_isp0\00", align 1
@mout_sw_aclk333_432_isp0_p = internal constant [2 x ptr] [ptr @.str.133, ptr @.str.62], section ".init.rodata", align 4
@.str.79 = private unnamed_addr constant [16 x i8] c"mout_sw_aclk266\00", align 1
@mout_sw_aclk266_p = internal constant [2 x ptr] [ptr @.str.134, ptr @.str.62], section ".init.rodata", align 4
@.str.80 = private unnamed_addr constant [16 x i8] c"mout_sw_aclk166\00", align 1
@mout_sw_aclk166_p = internal constant [2 x ptr] [ptr @.str.135, ptr @.str.62], section ".init.rodata", align 4
@.str.81 = private unnamed_addr constant [16 x i8] c"mout_sw_aclk333\00", align 1
@mout_sw_aclk333_p = internal constant [2 x ptr] [ptr @.str.136, ptr @.str.62], section ".init.rodata", align 4
@.str.82 = private unnamed_addr constant [22 x i8] c"mout_sw_aclk400_disp1\00", align 1
@mout_sw_aclk400_disp1_p = internal constant [2 x ptr] [ptr @.str.137, ptr @.str.62], section ".init.rodata", align 4
@.str.83 = private unnamed_addr constant [20 x i8] c"mout_sw_aclk333_g2d\00", align 1
@mout_sw_aclk333_g2d_p = internal constant [2 x ptr] [ptr @.str.138, ptr @.str.62], section ".init.rodata", align 4
@.str.84 = private unnamed_addr constant [20 x i8] c"mout_sw_aclk266_g2d\00", align 1
@mout_sw_aclk266_g2d_p = internal constant [2 x ptr] [ptr @.str.139, ptr @.str.62], section ".init.rodata", align 4
@.str.85 = private unnamed_addr constant [17 x i8] c"mout_sw_aclk_g3d\00", align 1
@mout_sw_aclk_g3d_p = internal constant [2 x ptr] [ptr @.str.140, ptr @.str.62], section ".init.rodata", align 4
@.str.86 = private unnamed_addr constant [21 x i8] c"mout_sw_aclk300_jpeg\00", align 1
@mout_sw_aclk300_jpeg_p = internal constant [2 x ptr] [ptr @.str.141, ptr @.str.62], section ".init.rodata", align 4
@.str.87 = private unnamed_addr constant [22 x i8] c"mout_sw_aclk300_disp1\00", align 1
@mout_sw_aclk300_disp1_p = internal constant [2 x ptr] [ptr @.str.142, ptr @.str.62], section ".init.rodata", align 4
@.str.88 = private unnamed_addr constant [21 x i8] c"mout_sw_aclk300_gscl\00", align 1
@mout_sw_aclk300_gscl_p = internal constant [2 x ptr] [ptr @.str.143, ptr @.str.62], section ".init.rodata", align 4
@.str.89 = private unnamed_addr constant [11 x i8] c"mout_mipi1\00", align 1
@mout_group2_p = internal constant [8 x ptr] [ptr @.str.2, ptr @.str.67, ptr @.str.66, ptr @.str.60, ptr @.str.62, ptr @.str.63, ptr @.str.65, ptr @.str.64], section ".init.rodata", align 4
@.str.90 = private unnamed_addr constant [9 x i8] c"mout_dp1\00", align 1
@.str.91 = private unnamed_addr constant [11 x i8] c"mout_pixel\00", align 1
@.str.92 = private unnamed_addr constant [10 x i8] c"mout_hdmi\00", align 1
@mout_hdmi_p = internal constant [2 x ptr] [ptr @.str.144, ptr @.str.14], section ".init.rodata", align 4
@.str.93 = private unnamed_addr constant [15 x i8] c"mout_fimd1_opt\00", align 1
@.str.94 = private unnamed_addr constant [17 x i8] c"mout_fimd1_final\00", align 1
@mout_fimd1_final_p = internal constant [2 x ptr] [ptr @.str.145, ptr @.str.93], section ".init.rodata", align 4
@.str.95 = private unnamed_addr constant [16 x i8] c"mout_mclk_cdrex\00", align 1
@mout_mclk_cdrex_p = internal constant [2 x ptr] [ptr @.str.96, ptr @.str.146], section ".init.rodata", align 4
@.str.96 = private unnamed_addr constant [10 x i8] c"mout_bpll\00", align 1
@mout_bpll_p = internal constant [2 x ptr] [ptr @.str.2, ptr @.str.12], section ".init.rodata", align 4
@.str.97 = private unnamed_addr constant [13 x i8] c"mout_maudio0\00", align 1
@mout_maudio0_p = internal constant [8 x ptr] [ptr @.str.2, ptr @.str.147, ptr @.str.66, ptr @.str.60, ptr @.str.62, ptr @.str.63, ptr @.str.65, ptr @.str.64], section ".init.rodata", align 4
@.str.98 = private unnamed_addr constant [13 x i8] c"mout_usbd301\00", align 1
@.str.99 = private unnamed_addr constant [10 x i8] c"mout_mmc0\00", align 1
@.str.100 = private unnamed_addr constant [10 x i8] c"mout_mmc1\00", align 1
@.str.101 = private unnamed_addr constant [10 x i8] c"mout_mmc2\00", align 1
@.str.102 = private unnamed_addr constant [13 x i8] c"mout_usbd300\00", align 1
@.str.103 = private unnamed_addr constant [12 x i8] c"mout_unipro\00", align 1
@.str.104 = private unnamed_addr constant [17 x i8] c"mout_mphy_refclk\00", align 1
@.str.105 = private unnamed_addr constant [11 x i8] c"mout_uart0\00", align 1
@.str.106 = private unnamed_addr constant [11 x i8] c"mout_uart1\00", align 1
@.str.107 = private unnamed_addr constant [11 x i8] c"mout_uart2\00", align 1
@.str.108 = private unnamed_addr constant [11 x i8] c"mout_uart3\00", align 1
@.str.109 = private unnamed_addr constant [9 x i8] c"mout_pwm\00", align 1
@.str.110 = private unnamed_addr constant [11 x i8] c"mout_spdif\00", align 1
@mout_spdif_p = internal constant [8 x ptr] [ptr @.str.2, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.63, ptr @.str.65, ptr @.str.64], section ".init.rodata", align 4
@.str.111 = private unnamed_addr constant [12 x i8] c"mout_audio0\00", align 1
@mout_audio0_p = internal constant [8 x ptr] [ptr @.str.2, ptr @.str.152, ptr @.str.66, ptr @.str.60, ptr @.str.62, ptr @.str.63, ptr @.str.65, ptr @.str.64], section ".init.rodata", align 4
@.str.112 = private unnamed_addr constant [12 x i8] c"mout_audio1\00", align 1
@mout_audio1_p = internal constant [8 x ptr] [ptr @.str.2, ptr @.str.153, ptr @.str.66, ptr @.str.60, ptr @.str.62, ptr @.str.63, ptr @.str.65, ptr @.str.64], section ".init.rodata", align 4
@.str.113 = private unnamed_addr constant [12 x i8] c"mout_audio2\00", align 1
@mout_audio2_p = internal constant [8 x ptr] [ptr @.str.2, ptr @.str.154, ptr @.str.66, ptr @.str.60, ptr @.str.62, ptr @.str.63, ptr @.str.65, ptr @.str.64], section ".init.rodata", align 4
@.str.114 = private unnamed_addr constant [10 x i8] c"mout_spi0\00", align 1
@.str.115 = private unnamed_addr constant [10 x i8] c"mout_spi1\00", align 1
@.str.116 = private unnamed_addr constant [10 x i8] c"mout_spi2\00", align 1
@.str.117 = private unnamed_addr constant [13 x i8] c"mout_pwm_isp\00", align 1
@.str.118 = private unnamed_addr constant [14 x i8] c"mout_uart_isp\00", align 1
@.str.119 = private unnamed_addr constant [14 x i8] c"mout_spi0_isp\00", align 1
@.str.120 = private unnamed_addr constant [14 x i8] c"mout_spi1_isp\00", align 1
@.str.121 = private unnamed_addr constant [16 x i8] c"mout_isp_sensor\00", align 1
@.str.122 = private unnamed_addr constant [17 x i8] c"dout_aclk400_isp\00", align 1
@.str.123 = private unnamed_addr constant [18 x i8] c"dout_aclk400_mscl\00", align 1
@.str.124 = private unnamed_addr constant [13 x i8] c"dout_aclk200\00", align 1
@.str.125 = private unnamed_addr constant [19 x i8] c"dout_aclk200_fsys2\00", align 1
@.str.126 = private unnamed_addr constant [19 x i8] c"dout_aclk400_wcore\00", align 1
@.str.127 = private unnamed_addr constant [17 x i8] c"dout_aclk100_noc\00", align 1
@.str.128 = private unnamed_addr constant [18 x i8] c"dout_pclk200_fsys\00", align 1
@.str.129 = private unnamed_addr constant [18 x i8] c"dout_aclk200_fsys\00", align 1
@.str.130 = private unnamed_addr constant [22 x i8] c"dout_aclk333_432_gscl\00", align 1
@.str.131 = private unnamed_addr constant [21 x i8] c"dout_aclk333_432_isp\00", align 1
@.str.132 = private unnamed_addr constant [12 x i8] c"dout_aclk66\00", align 1
@.str.133 = private unnamed_addr constant [22 x i8] c"dout_aclk333_432_isp0\00", align 1
@.str.134 = private unnamed_addr constant [13 x i8] c"dout_aclk266\00", align 1
@.str.135 = private unnamed_addr constant [13 x i8] c"dout_aclk166\00", align 1
@.str.136 = private unnamed_addr constant [13 x i8] c"dout_aclk333\00", align 1
@.str.137 = private unnamed_addr constant [19 x i8] c"dout_aclk400_disp1\00", align 1
@.str.138 = private unnamed_addr constant [17 x i8] c"dout_aclk333_g2d\00", align 1
@.str.139 = private unnamed_addr constant [17 x i8] c"dout_aclk266_g2d\00", align 1
@.str.140 = private unnamed_addr constant [14 x i8] c"dout_aclk_g3d\00", align 1
@.str.141 = private unnamed_addr constant [18 x i8] c"dout_aclk300_jpeg\00", align 1
@.str.142 = private unnamed_addr constant [19 x i8] c"dout_aclk300_disp1\00", align 1
@.str.143 = private unnamed_addr constant [18 x i8] c"dout_aclk300_gscl\00", align 1
@.str.144 = private unnamed_addr constant [16 x i8] c"dout_hdmi_pixel\00", align 1
@.str.145 = private unnamed_addr constant [11 x i8] c"mout_fimd1\00", align 1
@.str.146 = private unnamed_addr constant [20 x i8] c"mout_mx_mspll_ccore\00", align 1
@.str.147 = private unnamed_addr constant [11 x i8] c"maudio_clk\00", align 1
@.str.148 = private unnamed_addr constant [12 x i8] c"dout_audio0\00", align 1
@.str.149 = private unnamed_addr constant [12 x i8] c"dout_audio1\00", align 1
@.str.150 = private unnamed_addr constant [12 x i8] c"dout_audio2\00", align 1
@.str.151 = private unnamed_addr constant [13 x i8] c"spdif_extclk\00", align 1
@.str.152 = private unnamed_addr constant [7 x i8] c"cdclk0\00", align 1
@.str.153 = private unnamed_addr constant [7 x i8] c"cdclk1\00", align 1
@.str.154 = private unnamed_addr constant [7 x i8] c"cdclk2\00", align 1
@.str.155 = private unnamed_addr constant [8 x i8] c"div_arm\00", align 1
@.str.156 = private unnamed_addr constant [10 x i8] c"sclk_apll\00", align 1
@.str.157 = private unnamed_addr constant [8 x i8] c"armclk2\00", align 1
@.str.158 = private unnamed_addr constant [8 x i8] c"div_kfc\00", align 1
@.str.159 = private unnamed_addr constant [10 x i8] c"sclk_kpll\00", align 1
@.str.160 = private unnamed_addr constant [17 x i8] c"mout_aclk400_isp\00", align 1
@.str.161 = private unnamed_addr constant [18 x i8] c"mout_aclk400_mscl\00", align 1
@.str.162 = private unnamed_addr constant [17 x i8] c"mout_aclk100_noc\00", align 1
@.str.163 = private unnamed_addr constant [22 x i8] c"mout_aclk333_432_gscl\00", align 1
@.str.164 = private unnamed_addr constant [21 x i8] c"mout_aclk333_432_isp\00", align 1
@.str.165 = private unnamed_addr constant [22 x i8] c"mout_aclk333_432_isp0\00", align 1
@.str.166 = private unnamed_addr constant [13 x i8] c"mout_aclk266\00", align 1
@.str.167 = private unnamed_addr constant [13 x i8] c"mout_aclk333\00", align 1
@.str.168 = private unnamed_addr constant [17 x i8] c"mout_aclk333_g2d\00", align 1
@.str.169 = private unnamed_addr constant [17 x i8] c"mout_aclk266_g2d\00", align 1
@.str.170 = private unnamed_addr constant [18 x i8] c"mout_aclk300_jpeg\00", align 1
@.str.171 = private unnamed_addr constant [19 x i8] c"mout_aclk300_disp1\00", align 1
@.str.172 = private unnamed_addr constant [18 x i8] c"mout_aclk300_gscl\00", align 1
@.str.173 = private unnamed_addr constant [11 x i8] c"dout_fimd1\00", align 1
@.str.174 = private unnamed_addr constant [11 x i8] c"dout_mipi1\00", align 1
@.str.175 = private unnamed_addr constant [9 x i8] c"dout_dp1\00", align 1
@.str.176 = private unnamed_addr constant [19 x i8] c"mout_aclk400_disp1\00", align 1
@.str.177 = private unnamed_addr constant [16 x i8] c"dout_pclk_cdrex\00", align 1
@.str.178 = private unnamed_addr constant [17 x i8] c"dout_aclk_cdrex1\00", align 1
@.str.179 = private unnamed_addr constant [16 x i8] c"dout_pclk_drex0\00", align 1
@.str.180 = private unnamed_addr constant [16 x i8] c"dout_cclk_drex0\00", align 1
@.str.181 = private unnamed_addr constant [16 x i8] c"dout_pclk_drex1\00", align 1
@.str.182 = private unnamed_addr constant [16 x i8] c"dout_sclk_cdrex\00", align 1
@.str.183 = private unnamed_addr constant [16 x i8] c"dout_clk2x_phy0\00", align 1
@.str.184 = private unnamed_addr constant [19 x i8] c"dout_pclk_core_mem\00", align 1
@.str.185 = private unnamed_addr constant [13 x i8] c"dout_maudio0\00", align 1
@.str.186 = private unnamed_addr constant [13 x i8] c"dout_maupcm0\00", align 1
@.str.187 = private unnamed_addr constant [15 x i8] c"dout_usbphy301\00", align 1
@.str.188 = private unnamed_addr constant [15 x i8] c"dout_usbphy300\00", align 1
@.str.189 = private unnamed_addr constant [13 x i8] c"dout_usbd301\00", align 1
@.str.190 = private unnamed_addr constant [13 x i8] c"dout_usbd300\00", align 1
@.str.191 = private unnamed_addr constant [10 x i8] c"dout_mmc0\00", align 1
@.str.192 = private unnamed_addr constant [10 x i8] c"dout_mmc1\00", align 1
@.str.193 = private unnamed_addr constant [10 x i8] c"dout_mmc2\00", align 1
@.str.194 = private unnamed_addr constant [12 x i8] c"dout_unipro\00", align 1
@.str.195 = private unnamed_addr constant [17 x i8] c"dout_mphy_refclk\00", align 1
@.str.196 = private unnamed_addr constant [11 x i8] c"dout_uart0\00", align 1
@.str.197 = private unnamed_addr constant [11 x i8] c"dout_uart1\00", align 1
@.str.198 = private unnamed_addr constant [11 x i8] c"dout_uart2\00", align 1
@.str.199 = private unnamed_addr constant [11 x i8] c"dout_uart3\00", align 1
@.str.200 = private unnamed_addr constant [9 x i8] c"dout_pwm\00", align 1
@.str.201 = private unnamed_addr constant [10 x i8] c"dout_spi0\00", align 1
@.str.202 = private unnamed_addr constant [10 x i8] c"dout_spi1\00", align 1
@.str.203 = private unnamed_addr constant [10 x i8] c"dout_spi2\00", align 1
@.str.204 = private unnamed_addr constant [10 x i8] c"dout_pcm1\00", align 1
@.str.205 = private unnamed_addr constant [10 x i8] c"dout_pcm2\00", align 1
@.str.206 = private unnamed_addr constant [10 x i8] c"dout_i2s1\00", align 1
@.str.207 = private unnamed_addr constant [10 x i8] c"dout_i2s2\00", align 1
@.str.208 = private unnamed_addr constant [14 x i8] c"dout_spi0_pre\00", align 1
@.str.209 = private unnamed_addr constant [14 x i8] c"dout_spi1_pre\00", align 1
@.str.210 = private unnamed_addr constant [14 x i8] c"dout_spi2_pre\00", align 1
@.str.211 = private unnamed_addr constant [18 x i8] c"dout_gscl_blk_333\00", align 1
@.str.212 = private unnamed_addr constant [17 x i8] c"aclk333_432_gscl\00", align 1
@.str.213 = private unnamed_addr constant [13 x i8] c"dout_gen_blk\00", align 1
@.str.214 = private unnamed_addr constant [13 x i8] c"dout_jpg_blk\00", align 1
@.str.215 = private unnamed_addr constant [8 x i8] c"aclk166\00", align 1
@.str.216 = private unnamed_addr constant [17 x i8] c"dout_isp_sensor0\00", align 1
@.str.217 = private unnamed_addr constant [17 x i8] c"dout_isp_sensor1\00", align 1
@.str.218 = private unnamed_addr constant [17 x i8] c"dout_isp_sensor2\00", align 1
@.str.219 = private unnamed_addr constant [13 x i8] c"dout_pwm_isp\00", align 1
@.str.220 = private unnamed_addr constant [14 x i8] c"dout_uart_isp\00", align 1
@.str.221 = private unnamed_addr constant [14 x i8] c"dout_spi0_isp\00", align 1
@.str.222 = private unnamed_addr constant [14 x i8] c"dout_spi1_isp\00", align 1
@.str.223 = private unnamed_addr constant [18 x i8] c"dout_spi0_isp_pre\00", align 1
@.str.224 = private unnamed_addr constant [18 x i8] c"dout_spi1_isp_pre\00", align 1
@.str.225 = private unnamed_addr constant [6 x i8] c"mdma0\00", align 1
@.str.226 = private unnamed_addr constant [12 x i8] c"aclk266_g2d\00", align 1
@.str.227 = private unnamed_addr constant [4 x i8] c"sss\00", align 1
@.str.228 = private unnamed_addr constant [4 x i8] c"g2d\00", align 1
@.str.229 = private unnamed_addr constant [12 x i8] c"aclk333_g2d\00", align 1
@.str.230 = private unnamed_addr constant [11 x i8] c"smmu_mdma0\00", align 1
@.str.231 = private unnamed_addr constant [9 x i8] c"smmu_g2d\00", align 1
@.str.232 = private unnamed_addr constant [13 x i8] c"aclk200_fsys\00", align 1
@.str.233 = private unnamed_addr constant [14 x i8] c"aclk200_fsys2\00", align 1
@.str.234 = private unnamed_addr constant [13 x i8] c"aclk300_jpeg\00", align 1
@.str.235 = private unnamed_addr constant [17 x i8] c"aclk333_432_isp0\00", align 1
@.str.236 = private unnamed_addr constant [13 x i8] c"aclk300_gscl\00", align 1
@.str.237 = private unnamed_addr constant [16 x i8] c"aclk333_432_isp\00", align 1
@.str.238 = private unnamed_addr constant [12 x i8] c"pclk66_gpio\00", align 1
@.str.239 = private unnamed_addr constant [13 x i8] c"aclk66_psgen\00", align 1
@.str.240 = private unnamed_addr constant [12 x i8] c"aclk266_isp\00", align 1
@.str.241 = private unnamed_addr constant [8 x i8] c"aclk333\00", align 1
@.str.242 = private unnamed_addr constant [12 x i8] c"aclk400_isp\00", align 1
@.str.243 = private unnamed_addr constant [13 x i8] c"aclk400_mscl\00", align 1
@.str.244 = private unnamed_addr constant [14 x i8] c"aclk200_disp1\00", align 1
@.str.245 = private unnamed_addr constant [18 x i8] c"sclk_mphy_ixtal24\00", align 1
@.str.246 = private unnamed_addr constant [14 x i8] c"sclk_hsic_12m\00", align 1
@.str.247 = private unnamed_addr constant [14 x i8] c"aclk300_disp1\00", align 1
@.str.248 = private unnamed_addr constant [11 x i8] c"sclk_uart0\00", align 1
@.str.249 = private unnamed_addr constant [11 x i8] c"sclk_uart1\00", align 1
@.str.250 = private unnamed_addr constant [11 x i8] c"sclk_uart2\00", align 1
@.str.251 = private unnamed_addr constant [11 x i8] c"sclk_uart3\00", align 1
@.str.252 = private unnamed_addr constant [10 x i8] c"sclk_spi0\00", align 1
@.str.253 = private unnamed_addr constant [10 x i8] c"sclk_spi1\00", align 1
@.str.254 = private unnamed_addr constant [10 x i8] c"sclk_spi2\00", align 1
@.str.255 = private unnamed_addr constant [11 x i8] c"sclk_spdif\00", align 1
@.str.256 = private unnamed_addr constant [9 x i8] c"sclk_pwm\00", align 1
@.str.257 = private unnamed_addr constant [10 x i8] c"sclk_pcm1\00", align 1
@.str.258 = private unnamed_addr constant [10 x i8] c"sclk_pcm2\00", align 1
@.str.259 = private unnamed_addr constant [10 x i8] c"sclk_i2s1\00", align 1
@.str.260 = private unnamed_addr constant [10 x i8] c"sclk_i2s2\00", align 1
@.str.261 = private unnamed_addr constant [10 x i8] c"sclk_mmc0\00", align 1
@.str.262 = private unnamed_addr constant [10 x i8] c"sclk_mmc1\00", align 1
@.str.263 = private unnamed_addr constant [10 x i8] c"sclk_mmc2\00", align 1
@.str.264 = private unnamed_addr constant [15 x i8] c"sclk_usbphy301\00", align 1
@.str.265 = private unnamed_addr constant [15 x i8] c"sclk_usbphy300\00", align 1
@.str.266 = private unnamed_addr constant [13 x i8] c"sclk_usbd300\00", align 1
@.str.267 = private unnamed_addr constant [13 x i8] c"sclk_usbd301\00", align 1
@.str.268 = private unnamed_addr constant [11 x i8] c"sclk_fimd1\00", align 1
@.str.269 = private unnamed_addr constant [11 x i8] c"sclk_mipi1\00", align 1
@.str.270 = private unnamed_addr constant [10 x i8] c"sclk_hdmi\00", align 1
@.str.271 = private unnamed_addr constant [11 x i8] c"sclk_pixel\00", align 1
@.str.272 = private unnamed_addr constant [9 x i8] c"sclk_dp1\00", align 1
@.str.273 = private unnamed_addr constant [4 x i8] c"tsi\00", align 1
@.str.274 = private unnamed_addr constant [6 x i8] c"pdma0\00", align 1
@.str.275 = private unnamed_addr constant [6 x i8] c"pdma1\00", align 1
@.str.276 = private unnamed_addr constant [4 x i8] c"ufs\00", align 1
@.str.277 = private unnamed_addr constant [5 x i8] c"rtic\00", align 1
@.str.278 = private unnamed_addr constant [5 x i8] c"mmc0\00", align 1
@.str.279 = private unnamed_addr constant [5 x i8] c"mmc1\00", align 1
@.str.280 = private unnamed_addr constant [5 x i8] c"mmc2\00", align 1
@.str.281 = private unnamed_addr constant [6 x i8] c"sromc\00", align 1
@.str.282 = private unnamed_addr constant [7 x i8] c"usbh20\00", align 1
@.str.283 = private unnamed_addr constant [8 x i8] c"usbd300\00", align 1
@.str.284 = private unnamed_addr constant [8 x i8] c"usbd301\00", align 1
@.str.285 = private unnamed_addr constant [12 x i8] c"sclk_unipro\00", align 1
@.str.286 = private unnamed_addr constant [6 x i8] c"uart0\00", align 1
@.str.287 = private unnamed_addr constant [6 x i8] c"uart1\00", align 1
@.str.288 = private unnamed_addr constant [6 x i8] c"uart2\00", align 1
@.str.289 = private unnamed_addr constant [6 x i8] c"uart3\00", align 1
@.str.290 = private unnamed_addr constant [5 x i8] c"i2c0\00", align 1
@.str.291 = private unnamed_addr constant [5 x i8] c"i2c1\00", align 1
@.str.292 = private unnamed_addr constant [5 x i8] c"i2c2\00", align 1
@.str.293 = private unnamed_addr constant [5 x i8] c"i2c3\00", align 1
@.str.294 = private unnamed_addr constant [5 x i8] c"usi0\00", align 1
@.str.295 = private unnamed_addr constant [5 x i8] c"usi1\00", align 1
@.str.296 = private unnamed_addr constant [5 x i8] c"usi2\00", align 1
@.str.297 = private unnamed_addr constant [5 x i8] c"usi3\00", align 1
@.str.298 = private unnamed_addr constant [9 x i8] c"i2c_hdmi\00", align 1
@.str.299 = private unnamed_addr constant [6 x i8] c"tsadc\00", align 1
@.str.300 = private unnamed_addr constant [5 x i8] c"spi0\00", align 1
@.str.301 = private unnamed_addr constant [5 x i8] c"spi1\00", align 1
@.str.302 = private unnamed_addr constant [5 x i8] c"spi2\00", align 1
@.str.303 = private unnamed_addr constant [5 x i8] c"i2s1\00", align 1
@.str.304 = private unnamed_addr constant [5 x i8] c"i2s2\00", align 1
@.str.305 = private unnamed_addr constant [5 x i8] c"pcm1\00", align 1
@.str.306 = private unnamed_addr constant [5 x i8] c"pcm2\00", align 1
@.str.307 = private unnamed_addr constant [4 x i8] c"pwm\00", align 1
@.str.308 = private unnamed_addr constant [6 x i8] c"spdif\00", align 1
@.str.309 = private unnamed_addr constant [5 x i8] c"usi4\00", align 1
@.str.310 = private unnamed_addr constant [5 x i8] c"usi5\00", align 1
@.str.311 = private unnamed_addr constant [5 x i8] c"usi6\00", align 1
@.str.312 = private unnamed_addr constant [6 x i8] c"keyif\00", align 1
@.str.313 = private unnamed_addr constant [7 x i8] c"chipid\00", align 1
@.str.314 = private unnamed_addr constant [7 x i8] c"sysreg\00", align 1
@.str.315 = private unnamed_addr constant [6 x i8] c"tzpc0\00", align 1
@.str.316 = private unnamed_addr constant [6 x i8] c"tzpc1\00", align 1
@.str.317 = private unnamed_addr constant [6 x i8] c"tzpc2\00", align 1
@.str.318 = private unnamed_addr constant [6 x i8] c"tzpc3\00", align 1
@.str.319 = private unnamed_addr constant [6 x i8] c"tzpc4\00", align 1
@.str.320 = private unnamed_addr constant [6 x i8] c"tzpc5\00", align 1
@.str.321 = private unnamed_addr constant [6 x i8] c"tzpc6\00", align 1
@.str.322 = private unnamed_addr constant [6 x i8] c"tzpc7\00", align 1
@.str.323 = private unnamed_addr constant [6 x i8] c"tzpc8\00", align 1
@.str.324 = private unnamed_addr constant [6 x i8] c"tzpc9\00", align 1
@.str.325 = private unnamed_addr constant [9 x i8] c"hdmi_cec\00", align 1
@.str.326 = private unnamed_addr constant [4 x i8] c"mct\00", align 1
@.str.327 = private unnamed_addr constant [4 x i8] c"wdt\00", align 1
@.str.328 = private unnamed_addr constant [4 x i8] c"rtc\00", align 1
@.str.329 = private unnamed_addr constant [4 x i8] c"tmu\00", align 1
@.str.330 = private unnamed_addr constant [8 x i8] c"tmu_gpu\00", align 1
@.str.331 = private unnamed_addr constant [8 x i8] c"rotator\00", align 1
@.str.332 = private unnamed_addr constant [5 x i8] c"jpeg\00", align 1
@.str.333 = private unnamed_addr constant [6 x i8] c"jpeg2\00", align 1
@.str.334 = private unnamed_addr constant [6 x i8] c"mdma1\00", align 1
@.str.335 = private unnamed_addr constant [8 x i8] c"top_rtc\00", align 1
@.str.336 = private unnamed_addr constant [13 x i8] c"smmu_rotator\00", align 1
@.str.337 = private unnamed_addr constant [10 x i8] c"smmu_jpeg\00", align 1
@.str.338 = private unnamed_addr constant [11 x i8] c"smmu_mdma1\00", align 1
@.str.339 = private unnamed_addr constant [11 x i8] c"smmu_jpeg2\00", align 1
@.str.340 = private unnamed_addr constant [3 x i8] c"mc\00", align 1
@.str.341 = private unnamed_addr constant [13 x i8] c"sclk_gscl_wa\00", align 1
@.str.342 = private unnamed_addr constant [13 x i8] c"sclk_gscl_wb\00", align 1
@.str.343 = private unnamed_addr constant [9 x i8] c"fimc_3aa\00", align 1
@.str.344 = private unnamed_addr constant [11 x i8] c"fimc_lite0\00", align 1
@.str.345 = private unnamed_addr constant [11 x i8] c"fimc_lite1\00", align 1
@.str.346 = private unnamed_addr constant [9 x i8] c"smmu_3aa\00", align 1
@.str.347 = private unnamed_addr constant [12 x i8] c"smmu_fimcl0\00", align 1
@.str.348 = private unnamed_addr constant [12 x i8] c"smmu_fimcl1\00", align 1
@.str.349 = private unnamed_addr constant [8 x i8] c"gscl_wa\00", align 1
@.str.350 = private unnamed_addr constant [8 x i8] c"gscl_wb\00", align 1
@.str.351 = private unnamed_addr constant [12 x i8] c"smmu_fimcl3\00", align 1
@.str.352 = private unnamed_addr constant [11 x i8] c"fimc_lite3\00", align 1
@.str.353 = private unnamed_addr constant [14 x i8] c"sclk_uart_isp\00", align 1
@.str.354 = private unnamed_addr constant [14 x i8] c"sclk_spi0_isp\00", align 1
@.str.355 = private unnamed_addr constant [14 x i8] c"sclk_spi1_isp\00", align 1
@.str.356 = private unnamed_addr constant [13 x i8] c"sclk_pwm_isp\00", align 1
@.str.357 = private unnamed_addr constant [17 x i8] c"sclk_isp_sensor0\00", align 1
@.str.358 = private unnamed_addr constant [17 x i8] c"sclk_isp_sensor1\00", align 1
@.str.359 = private unnamed_addr constant [17 x i8] c"sclk_isp_sensor2\00", align 1
@.str.360 = private unnamed_addr constant [10 x i8] c"clkm_phy0\00", align 1
@.str.361 = private unnamed_addr constant [10 x i8] c"clkm_phy1\00", align 1
@.str.362 = private unnamed_addr constant [19 x i8] c"mx_mspll_ccore_phy\00", align 1
@.str.363 = private unnamed_addr constant [24 x i8] c"mout_mx_mspll_ccore_phy\00", align 1
@.str.364 = private unnamed_addr constant [18 x i8] c"aclk_ppmu_drex1_1\00", align 1
@.str.365 = private unnamed_addr constant [18 x i8] c"aclk_ppmu_drex1_0\00", align 1
@.str.366 = private unnamed_addr constant [18 x i8] c"aclk_ppmu_drex0_1\00", align 1
@.str.367 = private unnamed_addr constant [18 x i8] c"aclk_ppmu_drex0_0\00", align 1
@.str.368 = private unnamed_addr constant [18 x i8] c"pclk_ppmu_drex1_1\00", align 1
@.str.369 = private unnamed_addr constant [18 x i8] c"pclk_ppmu_drex1_0\00", align 1
@.str.370 = private unnamed_addr constant [18 x i8] c"pclk_ppmu_drex0_1\00", align 1
@.str.371 = private unnamed_addr constant [18 x i8] c"pclk_ppmu_drex0_0\00", align 1
@.str.372 = private unnamed_addr constant [10 x i8] c"sclk_bpll\00", align 1
@.str.373 = private unnamed_addr constant [24 x i8] c"mout_aclk400_wcore_bpll\00", align 1
@mout_aclk400_wcore_bpll_p = internal constant [2 x ptr] [ptr @.str.374, ptr @.str.372], section ".init.rodata", align 4
@.str.374 = private unnamed_addr constant [19 x i8] c"mout_aclk400_wcore\00", align 1
@mout_group4_p = internal constant [3 x ptr] [ptr @.str.63, ptr @.str.66, ptr @.str.60], section ".init.rodata", align 4
@mout_group5_5800_p = internal constant [4 x ptr] [ptr @.str.67, ptr @.str.66, ptr @.str.60, ptr @.str.62], section ".init.rodata", align 4
@.str.375 = private unnamed_addr constant [18 x i8] c"mout_mau_epll_clk\00", align 1
@mout_mau_epll_clk_p = internal constant [4 x ptr] [ptr @.str.65, ptr @.str.66, ptr @.str.60, ptr @.str.62], section ".init.rodata", align 4
@mout_group3_p = internal constant [2 x ptr] [ptr @.str.64, ptr @.str.62], section ".init.rodata", align 4
@.str.376 = private unnamed_addr constant [7 x i8] c"seckey\00", align 1
@.str.377 = private unnamed_addr constant [9 x i8] c"mau_epll\00", align 1
@.str.378 = private unnamed_addr constant [13 x i8] c"sclk_maudio0\00", align 1
@.str.379 = private unnamed_addr constant [13 x i8] c"sclk_maupcm0\00", align 1
@.str.380 = private unnamed_addr constant [14 x i8] c"ff_dout_epll2\00", align 1
@.str.381 = private unnamed_addr constant [14 x i8] c"ff_dout_spll2\00", align 1
@mout_group3_5800_p = internal constant [5 x ptr] [ptr @.str.67, ptr @.str.66, ptr @.str.60, ptr @.str.381, ptr @.str.382], section ".init.rodata", align 4
@mout_group2_5800_p = internal constant [6 x ptr] [ptr @.str.67, ptr @.str.66, ptr @.str.60, ptr @.str.381, ptr @.str.382, ptr @.str.63], section ".init.rodata", align 4
@mout_group1_5800_p = internal constant [4 x ptr] [ptr @.str.67, ptr @.str.66, ptr @.str.60, ptr @.str.381], section ".init.rodata", align 4
@mout_group6_5800_p = internal constant [4 x ptr] [ptr @.str.63, ptr @.str.66, ptr @.str.60, ptr @.str.381], section ".init.rodata", align 4
@mout_group7_5800_p = internal constant [6 x ptr] [ptr @.str.67, ptr @.str.66, ptr @.str.60, ptr @.str.62, ptr @.str.382, ptr @.str.63], section ".init.rodata", align 4
@mout_mx_mspll_ccore_phy_p = internal constant [6 x ptr] [ptr @.str.372, ptr @.str.66, ptr @.str.60, ptr @.str.381, ptr @.str.62, ptr @.str.65], section ".init.rodata", align 4
@mout_mx_mspll_ccore_p = internal constant [6 x ptr] [ptr @.str.372, ptr @.str.66, ptr @.str.60, ptr @.str.381, ptr @.str.62, ptr @.str.65], section ".init.rodata", align 4
@mout_mau_epll_clk_5800_p = internal constant [4 x ptr] [ptr @.str.65, ptr @.str.66, ptr @.str.60, ptr @.str.381], section ".init.rodata", align 4
@.str.382 = private unnamed_addr constant [11 x i8] c"mout_epll2\00", align 1
@mout_epll2_5800_p = internal constant [2 x ptr] [ptr @.str.65, ptr @.str.380], section ".init.rodata", align 4
@.str.383 = private unnamed_addr constant [17 x i8] c"mout_aclk550_cam\00", align 1
@.str.384 = private unnamed_addr constant [21 x i8] c"mout_aclkfl1_550_cam\00", align 1
@.str.385 = private unnamed_addr constant [17 x i8] c"mout_aclk432_cam\00", align 1
@.str.386 = private unnamed_addr constant [20 x i8] c"mout_aclk432_scaler\00", align 1
@.str.387 = private unnamed_addr constant [19 x i8] c"mout_user_mau_epll\00", align 1
@mout_group16_5800_p = internal constant [2 x ptr] [ptr @.str.396, ptr @.str.375], section ".init.rodata", align 4
@.str.388 = private unnamed_addr constant [22 x i8] c"mout_user_aclk550_cam\00", align 1
@mout_group15_5800_p = internal constant [2 x ptr] [ptr @.str.396, ptr @.str.392], section ".init.rodata", align 4
@.str.389 = private unnamed_addr constant [26 x i8] c"mout_user_aclkfl1_550_cam\00", align 1
@mout_group13_5800_p = internal constant [2 x ptr] [ptr @.str.396, ptr @.str.393], section ".init.rodata", align 4
@.str.390 = private unnamed_addr constant [22 x i8] c"mout_user_aclk432_cam\00", align 1
@mout_group11_5800_p = internal constant [2 x ptr] [ptr @.str.396, ptr @.str.394], section ".init.rodata", align 4
@.str.391 = private unnamed_addr constant [25 x i8] c"mout_user_aclk432_scaler\00", align 1
@mout_group9_5800_p = internal constant [2 x ptr] [ptr @.str.396, ptr @.str.395], section ".init.rodata", align 4
@.str.392 = private unnamed_addr constant [20 x i8] c"mout_sw_aclk550_cam\00", align 1
@mout_group14_5800_p = internal constant [2 x ptr] [ptr @.str.397, ptr @.str.398], section ".init.rodata", align 4
@.str.393 = private unnamed_addr constant [24 x i8] c"mout_sw_aclkfl1_550_cam\00", align 1
@mout_group12_5800_p = internal constant [2 x ptr] [ptr @.str.399, ptr @.str.398], section ".init.rodata", align 4
@.str.394 = private unnamed_addr constant [20 x i8] c"mout_sw_aclk432_cam\00", align 1
@mout_group10_5800_p = internal constant [2 x ptr] [ptr @.str.400, ptr @.str.398], section ".init.rodata", align 4
@.str.395 = private unnamed_addr constant [23 x i8] c"mout_sw_aclk432_scaler\00", align 1
@mout_group8_5800_p = internal constant [2 x ptr] [ptr @.str.401, ptr @.str.398], section ".init.rodata", align 4
@.str.396 = private unnamed_addr constant [13 x i8] c"dout_osc_div\00", align 1
@.str.397 = private unnamed_addr constant [17 x i8] c"dout_aclk550_cam\00", align 1
@.str.398 = private unnamed_addr constant [13 x i8] c"dout_sclk_sw\00", align 1
@.str.399 = private unnamed_addr constant [21 x i8] c"dout_aclkfl1_550_cam\00", align 1
@.str.400 = private unnamed_addr constant [17 x i8] c"dout_aclk432_cam\00", align 1
@.str.401 = private unnamed_addr constant [20 x i8] c"dout_aclk432_scaler\00", align 1
@.str.402 = private unnamed_addr constant [10 x i8] c"sclk_spll\00", align 1
@.str.403 = private unnamed_addr constant [12 x i8] c"aclk550_cam\00", align 1
@.str.404 = private unnamed_addr constant [15 x i8] c"aclk432_scaler\00", align 1
@.str.405 = private unnamed_addr constant [7 x i8] c"armclk\00", align 1
@exynos5420_eglclk_d = internal constant [18 x %struct.exynos_cpuclk_cfg_data] [%struct.exynos_cpuclk_cfg_data { i32 1800000, i32 58130496, i32 0 }, %struct.exynos_cpuclk_cfg_data { i32 1700000, i32 58130480, i32 0 }, %struct.exynos_cpuclk_cfg_data { i32 1600000, i32 58130480, i32 0 }, %struct.exynos_cpuclk_cfg_data { i32 1500000, i32 58130480, i32 0 }, %struct.exynos_cpuclk_cfg_data { i32 1400000, i32 58130480, i32 0 }, %struct.exynos_cpuclk_cfg_data { i32 1300000, i32 58130464, i32 0 }, %struct.exynos_cpuclk_cfg_data { i32 1200000, i32 58130464, i32 0 }, %struct.exynos_cpuclk_cfg_data { i32 1100000, i32 58130464, i32 0 }, %struct.exynos_cpuclk_cfg_data { i32 1000000, i32 57016352, i32 0 }, %struct.exynos_cpuclk_cfg_data { i32 900000, i32 57016352, i32 0 }, %struct.exynos_cpuclk_cfg_data { i32 800000, i32 55902240, i32 0 }, %struct.exynos_cpuclk_cfg_data { i32 700000, i32 55902240, i32 0 }, %struct.exynos_cpuclk_cfg_data { i32 600000, i32 54788128, i32 0 }, %struct.exynos_cpuclk_cfg_data { i32 500000, i32 53674016, i32 0 }, %struct.exynos_cpuclk_cfg_data { i32 400000, i32 53674016, i32 0 }, %struct.exynos_cpuclk_cfg_data { i32 300000, i32 53674016, i32 0 }, %struct.exynos_cpuclk_cfg_data { i32 200000, i32 53674016, i32 0 }, %struct.exynos_cpuclk_cfg_data zeroinitializer], section ".init.rodata", align 4
@.str.406 = private unnamed_addr constant [7 x i8] c"kfcclk\00", align 1
@exynos5420_kfcclk_d = internal constant [14 x %struct.exynos_cpuclk_cfg_data] [%struct.exynos_cpuclk_cfg_data { i32 1400000, i32 55574576, i32 0 }, %struct.exynos_cpuclk_cfg_data { i32 1300000, i32 55574560, i32 0 }, %struct.exynos_cpuclk_cfg_data { i32 1200000, i32 55574560, i32 0 }, %struct.exynos_cpuclk_cfg_data { i32 1100000, i32 55574560, i32 0 }, %struct.exynos_cpuclk_cfg_data { i32 1000000, i32 55574560, i32 0 }, %struct.exynos_cpuclk_cfg_data { i32 900000, i32 55574560, i32 0 }, %struct.exynos_cpuclk_cfg_data { i32 800000, i32 55574560, i32 0 }, %struct.exynos_cpuclk_cfg_data { i32 700000, i32 54525984, i32 0 }, %struct.exynos_cpuclk_cfg_data { i32 600000, i32 54525984, i32 0 }, %struct.exynos_cpuclk_cfg_data { i32 500000, i32 54525984, i32 0 }, %struct.exynos_cpuclk_cfg_data { i32 400000, i32 53477408, i32 0 }, %struct.exynos_cpuclk_cfg_data { i32 300000, i32 53477408, i32 0 }, %struct.exynos_cpuclk_cfg_data { i32 200000, i32 53477408, i32 0 }, %struct.exynos_cpuclk_cfg_data zeroinitializer], section ".init.rodata", align 4
@exynos5800_eglclk_d = internal constant [20 x %struct.exynos_cpuclk_cfg_data] [%struct.exynos_cpuclk_cfg_data { i32 2000000, i32 58130496, i32 0 }, %struct.exynos_cpuclk_cfg_data { i32 1900000, i32 58130496, i32 0 }, %struct.exynos_cpuclk_cfg_data { i32 1800000, i32 58130496, i32 0 }, %struct.exynos_cpuclk_cfg_data { i32 1700000, i32 58130480, i32 0 }, %struct.exynos_cpuclk_cfg_data { i32 1600000, i32 58130480, i32 0 }, %struct.exynos_cpuclk_cfg_data { i32 1500000, i32 58130480, i32 0 }, %struct.exynos_cpuclk_cfg_data { i32 1400000, i32 58130480, i32 0 }, %struct.exynos_cpuclk_cfg_data { i32 1300000, i32 58130464, i32 0 }, %struct.exynos_cpuclk_cfg_data { i32 1200000, i32 58130464, i32 0 }, %struct.exynos_cpuclk_cfg_data { i32 1100000, i32 58130464, i32 0 }, %struct.exynos_cpuclk_cfg_data { i32 1000000, i32 58064928, i32 0 }, %struct.exynos_cpuclk_cfg_data { i32 900000, i32 58064928, i32 0 }, %struct.exynos_cpuclk_cfg_data { i32 800000, i32 57999392, i32 0 }, %struct.exynos_cpuclk_cfg_data { i32 700000, i32 57999392, i32 0 }, %struct.exynos_cpuclk_cfg_data { i32 600000, i32 57933856, i32 0 }, %struct.exynos_cpuclk_cfg_data { i32 500000, i32 57868320, i32 0 }, %struct.exynos_cpuclk_cfg_data { i32 400000, i32 57868320, i32 0 }, %struct.exynos_cpuclk_cfg_data { i32 300000, i32 57868320, i32 0 }, %struct.exynos_cpuclk_cfg_data { i32 200000, i32 57868320, i32 0 }, %struct.exynos_cpuclk_cfg_data zeroinitializer], section ".init.rodata", align 4
@exynos5x_disp_subcmu = internal constant %struct.exynos5_subcmu_info { ptr @exynos5x_disp_div_clks, i32 1, ptr @exynos5x_disp_gate_clks, i32 8, ptr @exynos5x_disp_suspend_regs, i32 5, ptr @.str.407 }, align 4
@exynos5x_gsc_subcmu = internal constant %struct.exynos5_subcmu_info { ptr @exynos5x_gsc_div_clks, i32 1, ptr @exynos5x_gsc_gate_clks, i32 4, ptr @exynos5x_gsc_suspend_regs, i32 4, ptr @.str.417 }, align 4
@exynos5x_g3d_subcmu = internal constant %struct.exynos5_subcmu_info { ptr null, i32 0, ptr @exynos5x_g3d_gate_clks, i32 1, ptr @exynos5x_g3d_suspend_regs, i32 2, ptr @.str.423 }, align 4
@exynos5x_mfc_subcmu = internal constant %struct.exynos5_subcmu_info { ptr @exynos5x_mfc_div_clks, i32 1, ptr @exynos5x_mfc_gate_clks, i32 3, ptr @exynos5x_mfc_suspend_regs, i32 3, ptr @.str.425 }, align 4
@exynos5x_mscl_subcmu = internal constant %struct.exynos5_subcmu_info { ptr @exynos5x_mscl_div_clks, i32 1, ptr @exynos5x_mscl_gate_clks, i32 6, ptr @exynos5x_mscl_suspend_regs, i32 3, ptr @.str.430 }, align 4
@exynos5800_mau_subcmu = internal constant %struct.exynos5_subcmu_info { ptr null, i32 0, ptr @exynos5800_mau_gate_clks, i32 3, ptr @exynos5800_mau_suspend_regs, i32 1, ptr @.str.438 }, align 4
@exynos5x_disp_div_clks = internal constant [1 x %struct.samsung_div_clock] [%struct.samsung_div_clock { i32 0, ptr @.str.408, ptr @.str.244, i32 0, i32 66960, i8 16, i8 2, i8 0, ptr null }], section ".init.rodata", align 4
@exynos5x_disp_gate_clks = internal constant [8 x %struct.samsung_gate_clock] [%struct.samsung_gate_clock { i32 421, ptr @.str.409, ptr @.str.247, i32 0, i32 67880, i8 0, i8 0 }, %struct.samsung_gate_clock { i32 411, ptr @.str.410, ptr @.str.244, i32 0, i32 67880, i8 3, i8 0 }, %struct.samsung_gate_clock { i32 412, ptr @.str.411, ptr @.str.244, i32 0, i32 67880, i8 4, i8 0 }, %struct.samsung_gate_clock { i32 431, ptr @.str.412, ptr @.str.244, i32 0, i32 67880, i8 5, i8 0 }, %struct.samsung_gate_clock { i32 413, ptr @.str.413, ptr @.str.244, i32 0, i32 67880, i8 6, i8 0 }, %struct.samsung_gate_clock { i32 422, ptr @.str.414, ptr @.str.408, i32 0, i32 67880, i8 7, i8 0 }, %struct.samsung_gate_clock { i32 423, ptr @.str.415, ptr @.str.408, i32 0, i32 67880, i8 8, i8 0 }, %struct.samsung_gate_clock { i32 502, ptr @.str.416, ptr @.str.244, i32 0, i32 67880, i8 9, i8 0 }], section ".init.rodata", align 4
@exynos5x_disp_suspend_regs = internal global [5 x %struct.exynos5_subcmu_reg_dump] [%struct.exynos5_subcmu_reg_dump { i32 67880, i32 -1, i32 -1, i32 0 }, %struct.exynos5_subcmu_reg_dump { i32 66068, i32 0, i32 1, i32 0 }, %struct.exynos5_subcmu_reg_dump { i32 66068, i32 0, i32 16777216, i32 0 }, %struct.exynos5_subcmu_reg_dump { i32 66060, i32 0, i32 256, i32 0 }, %struct.exynos5_subcmu_reg_dump { i32 66960, i32 0, i32 196608, i32 0 }], align 4
@.str.407 = private unnamed_addr constant [5 x i8] c"DISP\00", align 1
@.str.408 = private unnamed_addr constant [15 x i8] c"dout_disp1_blk\00", align 1
@.str.409 = private unnamed_addr constant [6 x i8] c"fimd1\00", align 1
@.str.410 = private unnamed_addr constant [6 x i8] c"dsim1\00", align 1
@.str.411 = private unnamed_addr constant [4 x i8] c"dp1\00", align 1
@.str.412 = private unnamed_addr constant [6 x i8] c"mixer\00", align 1
@.str.413 = private unnamed_addr constant [5 x i8] c"hdmi\00", align 1
@.str.414 = private unnamed_addr constant [13 x i8] c"smmu_fimd1m0\00", align 1
@.str.415 = private unnamed_addr constant [13 x i8] c"smmu_fimd1m1\00", align 1
@.str.416 = private unnamed_addr constant [11 x i8] c"smmu_mixer\00", align 1
@exynos5x_gsc_div_clks = internal constant [1 x %struct.samsung_div_clock] [%struct.samsung_div_clock { i32 0, ptr @.str.418, ptr @.str.59, i32 0, i32 66960, i8 4, i8 2, i8 0, ptr null }], section ".init.rodata", align 4
@exynos5x_gsc_gate_clks = internal constant [4 x %struct.samsung_gate_clock] [%struct.samsung_gate_clock { i32 465, ptr @.str.419, ptr @.str.236, i32 0, i32 67856, i8 0, i8 0 }, %struct.samsung_gate_clock { i32 466, ptr @.str.420, ptr @.str.236, i32 0, i32 67856, i8 1, i8 0 }, %struct.samsung_gate_clock { i32 461, ptr @.str.421, ptr @.str.418, i32 0, i32 67872, i8 6, i8 0 }, %struct.samsung_gate_clock { i32 462, ptr @.str.422, ptr @.str.418, i32 0, i32 67872, i8 7, i8 0 }], section ".init.rodata", align 4
@exynos5x_gsc_suspend_regs = internal global [4 x %struct.exynos5_subcmu_reg_dump] [%struct.exynos5_subcmu_reg_dump { i32 67856, i32 3, i32 3, i32 0 }, %struct.exynos5_subcmu_reg_dump { i32 67872, i32 192, i32 192, i32 0 }, %struct.exynos5_subcmu_reg_dump { i32 66068, i32 0, i32 268435456, i32 0 }, %struct.exynos5_subcmu_reg_dump { i32 66960, i32 0, i32 48, i32 0 }], align 4
@.str.417 = private unnamed_addr constant [4 x i8] c"GSC\00", align 1
@.str.418 = private unnamed_addr constant [18 x i8] c"dout_gscl_blk_300\00", align 1
@.str.419 = private unnamed_addr constant [6 x i8] c"gscl0\00", align 1
@.str.420 = private unnamed_addr constant [6 x i8] c"gscl1\00", align 1
@.str.421 = private unnamed_addr constant [11 x i8] c"smmu_gscl0\00", align 1
@.str.422 = private unnamed_addr constant [11 x i8] c"smmu_gscl1\00", align 1
@exynos5x_g3d_gate_clks = internal constant [1 x %struct.samsung_gate_clock] [%struct.samsung_gate_clock { i32 501, ptr @.str.424, ptr @.str.56, i32 4, i32 67888, i8 9, i8 0 }], section ".init.rodata", align 4
@exynos5x_g3d_suspend_regs = internal global [2 x %struct.exynos5_subcmu_reg_dump] [%struct.exynos5_subcmu_reg_dump { i32 67888, i32 1023, i32 1023, i32 0 }, %struct.exynos5_subcmu_reg_dump { i32 66068, i32 0, i32 65536, i32 0 }], align 4
@.str.423 = private unnamed_addr constant [4 x i8] c"G3D\00", align 1
@.str.424 = private unnamed_addr constant [4 x i8] c"g3d\00", align 1
@exynos5x_mfc_div_clks = internal constant [1 x %struct.samsung_div_clock] [%struct.samsung_div_clock { i32 0, ptr @.str.426, ptr @.str.51, i32 0, i32 66976, i8 0, i8 2, i8 0, ptr null }], section ".init.rodata", align 4
@exynos5x_mfc_gate_clks = internal constant [3 x %struct.samsung_gate_clock] [%struct.samsung_gate_clock { i32 401, ptr @.str.427, ptr @.str.241, i32 0, i32 67884, i8 0, i8 0 }, %struct.samsung_gate_clock { i32 402, ptr @.str.428, ptr @.str.426, i32 0, i32 67884, i8 1, i8 0 }, %struct.samsung_gate_clock { i32 403, ptr @.str.429, ptr @.str.426, i32 0, i32 67884, i8 2, i8 0 }], section ".init.rodata", align 4
@exynos5x_mfc_suspend_regs = internal global [3 x %struct.exynos5_subcmu_reg_dump] [%struct.exynos5_subcmu_reg_dump { i32 67884, i32 -1, i32 -1, i32 0 }, %struct.exynos5_subcmu_reg_dump { i32 66064, i32 0, i32 268435456, i32 0 }, %struct.exynos5_subcmu_reg_dump { i32 66976, i32 0, i32 3, i32 0 }], align 4
@.str.425 = private unnamed_addr constant [4 x i8] c"MFC\00", align 1
@.str.426 = private unnamed_addr constant [13 x i8] c"dout_mfc_blk\00", align 1
@.str.427 = private unnamed_addr constant [4 x i8] c"mfc\00", align 1
@.str.428 = private unnamed_addr constant [10 x i8] c"smmu_mfcl\00", align 1
@.str.429 = private unnamed_addr constant [10 x i8] c"smmu_mfcr\00", align 1
@exynos5x_mscl_div_clks = internal constant [1 x %struct.samsung_div_clock] [%struct.samsung_div_clock { i32 0, ptr @.str.431, ptr @.str.243, i32 0, i32 66960, i8 28, i8 2, i8 0, ptr null }], section ".init.rodata", align 4
@exynos5x_mscl_gate_clks = internal constant [6 x %struct.samsung_gate_clock] [%struct.samsung_gate_clock { i32 381, ptr @.str.432, ptr @.str.243, i32 0, i32 67952, i8 0, i8 0 }, %struct.samsung_gate_clock { i32 382, ptr @.str.433, ptr @.str.243, i32 0, i32 67952, i8 1, i8 0 }, %struct.samsung_gate_clock { i32 383, ptr @.str.434, ptr @.str.243, i32 0, i32 67952, i8 2, i8 0 }, %struct.samsung_gate_clock { i32 384, ptr @.str.435, ptr @.str.431, i32 0, i32 67952, i8 8, i8 0 }, %struct.samsung_gate_clock { i32 385, ptr @.str.436, ptr @.str.431, i32 0, i32 67952, i8 9, i8 0 }, %struct.samsung_gate_clock { i32 386, ptr @.str.437, ptr @.str.431, i32 0, i32 67952, i8 10, i8 0 }], section ".init.rodata", align 4
@exynos5x_mscl_suspend_regs = internal global [3 x %struct.exynos5_subcmu_reg_dump] [%struct.exynos5_subcmu_reg_dump { i32 67952, i32 -1, i32 -1, i32 0 }, %struct.exynos5_subcmu_reg_dump { i32 66060, i32 0, i32 16, i32 0 }, %struct.exynos5_subcmu_reg_dump { i32 66960, i32 0, i32 805306368, i32 0 }], align 4
@.str.430 = private unnamed_addr constant [4 x i8] c"MSC\00", align 1
@.str.431 = private unnamed_addr constant [14 x i8] c"dout_mscl_blk\00", align 1
@.str.432 = private unnamed_addr constant [6 x i8] c"mscl0\00", align 1
@.str.433 = private unnamed_addr constant [6 x i8] c"mscl1\00", align 1
@.str.434 = private unnamed_addr constant [6 x i8] c"mscl2\00", align 1
@.str.435 = private unnamed_addr constant [11 x i8] c"smmu_mscl0\00", align 1
@.str.436 = private unnamed_addr constant [11 x i8] c"smmu_mscl1\00", align 1
@.str.437 = private unnamed_addr constant [11 x i8] c"smmu_mscl2\00", align 1
@exynos5800_mau_gate_clks = internal constant [3 x %struct.samsung_gate_clock] [%struct.samsung_gate_clock { i32 159, ptr @.str.377, ptr @.str.387, i32 4, i32 66332, i8 20, i8 0 }, %struct.samsung_gate_clock { i32 148, ptr @.str.378, ptr @.str.185, i32 4, i32 67644, i8 0, i8 0 }, %struct.samsung_gate_clock { i32 149, ptr @.str.379, ptr @.str.186, i32 4, i32 67644, i8 1, i8 0 }], section ".init.rodata", align 4
@exynos5800_mau_suspend_regs = internal global [1 x %struct.exynos5_subcmu_reg_dump] [%struct.exynos5_subcmu_reg_dump { i32 66084, i32 0, i32 256, i32 0 }], align 4
@.str.438 = private unnamed_addr constant [4 x i8] c"MAU\00", align 1
@llvm.compiler.used = appending global [2 x ptr] [ptr @__of_table_exynos5420_clk, ptr @__of_table_exynos5800_clk], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @exynos5420_clk_of_clk_init_driver(ptr noundef %0) #0 section ".init.text" {
  %2 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 10
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %2) #3
  tail call fastcc void @exynos5x_clk_init(ptr noundef %0, i32 noundef 0) #4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @exynos5800_clk_of_clk_init_driver(ptr noundef %0) #0 section ".init.text" {
  %2 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 10
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %2) #3
  tail call fastcc void @exynos5x_clk_init(ptr noundef %0, i32 noundef 1) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @exynos5x_clk_init(ptr noundef %0, i32 noundef %1) unnamed_addr #0 section ".init.text" {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  %5 = tail call ptr @of_iomap(ptr noundef nonnull %0, i32 noundef 0) #3
  store ptr %5, ptr @reg_base, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %4
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.exynos5x_clk_init) #5
  unreachable

8:                                                ; preds = %2
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.exynos5x_clk_init) #5
  unreachable

9:                                                ; preds = %4
  %10 = tail call ptr @samsung_clk_init(ptr noundef nonnull %0, ptr noundef nonnull %5, i32 noundef 800) #3
  tail call void @samsung_clk_of_register_fixed_ext(ptr noundef %10, ptr noundef nonnull @exynos5x_fixed_rate_ext_clks, i32 noundef 1, ptr noundef nonnull @ext_clk_match) #3
  %11 = getelementptr %struct.samsung_clk_provider, ptr %10, i32 1, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 @clk_hw_get_rate(ptr noundef %12) #3
  %14 = icmp eq i32 %13, 24000000
  br i1 %14, label %15, label %16

15:                                               ; preds = %9
  store ptr @exynos5420_pll2550x_24mhz_tbl, ptr getelementptr inbounds ([11 x %struct.samsung_pll_clock], ptr @exynos5x_plls, i32 0, i32 0, i32 7), align 4
  store ptr @exynos5420_epll_24mhz_tbl, ptr getelementptr inbounds ([11 x %struct.samsung_pll_clock], ptr @exynos5x_plls, i32 0, i32 3, i32 7), align 4
  store ptr @exynos5420_pll2550x_24mhz_tbl, ptr getelementptr inbounds ([11 x %struct.samsung_pll_clock], ptr @exynos5x_plls, i32 0, i32 10, i32 7), align 4
  store ptr @exynos5420_vpll_24mhz_tbl, ptr getelementptr inbounds ([11 x %struct.samsung_pll_clock], ptr @exynos5x_plls, i32 0, i32 7, i32 7), align 4
  br label %16

16:                                               ; preds = %15, %9
  %17 = icmp eq i32 %1, 0
  %18 = select i1 %17, ptr @exynos5420_pll2550x_24mhz_tbl, ptr @exynos5422_bpll_rate_table
  store ptr %18, ptr getelementptr inbounds ([11 x %struct.samsung_pll_clock], ptr @exynos5x_plls, i32 0, i32 9, i32 7), align 4
  %19 = load ptr, ptr @reg_base, align 4
  tail call void @samsung_clk_register_pll(ptr noundef %10, ptr noundef nonnull @exynos5x_plls, i32 noundef 11, ptr noundef %19) #3
  tail call void @samsung_clk_register_fixed_rate(ptr noundef %10, ptr noundef nonnull @exynos5x_fixed_rate_clks, i32 noundef 5) #3
  tail call void @samsung_clk_register_fixed_factor(ptr noundef %10, ptr noundef nonnull @exynos5x_fixed_factor_clks, i32 noundef 2) #3
  tail call void @samsung_clk_register_mux(ptr noundef %10, ptr noundef nonnull @exynos5x_mux_clks, i32 noundef 101) #3
  tail call void @samsung_clk_register_div(ptr noundef %10, ptr noundef nonnull @exynos5x_div_clks, i32 noundef 79) #3
  tail call void @samsung_clk_register_gate(ptr noundef %10, ptr noundef nonnull @exynos5x_gate_clks, i32 noundef 148) #3
  br i1 %17, label %20, label %22

20:                                               ; preds = %16
  tail call void @samsung_clk_register_mux(ptr noundef %10, ptr noundef nonnull @exynos5420_mux_clks, i32 noundef 20) #3
  tail call void @samsung_clk_register_div(ptr noundef %10, ptr noundef nonnull @exynos5420_div_clks, i32 noundef 1) #3
  tail call void @samsung_clk_register_gate(ptr noundef %10, ptr noundef nonnull @exynos5420_gate_clks, i32 noundef 4) #3
  tail call void @samsung_clk_register_cpu(ptr noundef %10, ptr noundef nonnull @exynos5420_cpu_clks, i32 noundef 2) #3
  %21 = load ptr, ptr @reg_base, align 4
  tail call void @samsung_clk_extended_sleep_init(ptr noundef %21, ptr noundef nonnull @exynos5x_clk_regs, i32 noundef 98, ptr noundef nonnull @exynos5420_set_clksrc, i32 noundef 15) #3
  br label %27

22:                                               ; preds = %16
  tail call void @samsung_clk_register_fixed_factor(ptr noundef %10, ptr noundef nonnull @exynos5800_fixed_factor_clks, i32 noundef 2) #3
  tail call void @samsung_clk_register_mux(ptr noundef %10, ptr noundef nonnull @exynos5800_mux_clks, i32 noundef 34) #3
  tail call void @samsung_clk_register_div(ptr noundef %10, ptr noundef nonnull @exynos5800_div_clks, i32 noundef 7) #3
  tail call void @samsung_clk_register_gate(ptr noundef %10, ptr noundef nonnull @exynos5800_gate_clks, i32 noundef 2) #3
  tail call void @samsung_clk_register_cpu(ptr noundef %10, ptr noundef nonnull @exynos5800_cpu_clks, i32 noundef 2) #3
  %23 = load ptr, ptr @reg_base, align 4
  tail call void @samsung_clk_extended_sleep_init(ptr noundef %23, ptr noundef nonnull @exynos5x_clk_regs, i32 noundef 98, ptr noundef nonnull @exynos5420_set_clksrc, i32 noundef 15) #3
  %24 = icmp eq i32 %1, 1
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = load ptr, ptr @reg_base, align 4
  tail call void @samsung_clk_extended_sleep_init(ptr noundef %26, ptr noundef nonnull @exynos5800_clk_regs, i32 noundef 8, ptr noundef null, i32 noundef 0) #3
  tail call void @exynos5_subcmus_init(ptr noundef %10, i32 noundef 6, ptr noundef nonnull @exynos5800_subcmus) #3
  br label %28

27:                                               ; preds = %22, %20
  tail call void @exynos5_subcmus_init(ptr noundef %10, i32 noundef 5, ptr noundef nonnull @exynos5x_subcmus) #3
  br label %28

28:                                               ; preds = %27, %25
  %29 = getelementptr %struct.samsung_clk_provider, ptr %10, i32 166, i32 2
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.clk_hw, ptr %30, i32 0, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = tail call i32 @clk_prepare(ptr noundef %32) #3
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %28
  %36 = tail call i32 @clk_enable(ptr noundef %32) #3
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %35
  tail call void @clk_unprepare(ptr noundef %32) #3
  br label %39

39:                                               ; preds = %38, %35, %28
  %40 = getelementptr %struct.samsung_clk_provider, ptr %10, i32 164, i32 3
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.clk_hw, ptr %41, i32 0, i32 1
  %43 = load ptr, ptr %42, align 4
  %44 = tail call i32 @clk_prepare(ptr noundef %43) #3
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %39
  %47 = tail call i32 @clk_enable(ptr noundef %43) #3
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %46
  tail call void @clk_unprepare(ptr noundef %43) #3
  br label %50

50:                                               ; preds = %49, %46, %39
  tail call void @samsung_clk_of_add_provider(ptr noundef nonnull %0, ptr noundef %10) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @samsung_clk_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @samsung_clk_of_register_fixed_ext(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @samsung_clk_register_pll(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @samsung_clk_register_fixed_rate(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @samsung_clk_register_fixed_factor(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @samsung_clk_register_mux(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @samsung_clk_register_div(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @samsung_clk_register_gate(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @samsung_clk_register_cpu(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @samsung_clk_extended_sleep_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @exynos5_subcmus_init(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @samsung_clk_of_add_provider(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold noreturn null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { cold nounwind }
attributes #5 = { cold noreturn nounwind }

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
