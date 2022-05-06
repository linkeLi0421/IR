; ModuleID = '/llk/IR/drivers/clk/samsung/clk-exynos5250.c_pt.bc'
source_filename = "../drivers/clk/samsung/clk-exynos5250.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.samsung_fixed_rate_clock = type { i32, ptr, ptr, i32, i32 }
%struct.samsung_mux_clock = type { i32, ptr, ptr, i8, i32, i32, i8, i8, i8 }
%struct.samsung_pll_rate_table = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.samsung_pll_clock = type { i32, ptr, ptr, i32, i32, i32, i32, ptr }
%struct.samsung_fixed_factor_clock = type { i32, ptr, ptr, i32, i32, i32 }
%struct.samsung_div_clock = type { i32, ptr, ptr, i32, i32, i8, i8, i8, ptr }
%struct.samsung_gate_clock = type { i32, ptr, ptr, i32, i32, i8, i8 }
%struct.samsung_cpu_clock = type { i32, ptr, i32, i32, i32, i32, ptr }
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

@__of_table_exynos5250_clk = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5250-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos5250_clk_of_clk_init_driver }, section "__clk_of_table", align 4
@reg_base = internal unnamed_addr global ptr null, align 4
@.str = private unnamed_addr constant [29 x i8] c"%s: failed to map registers\0A\00", align 1
@__func__.exynos5250_clk_init = private unnamed_addr constant [20 x i8] c"exynos5250_clk_init\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"%s: unable to determine soc\0A\00", align 1
@exynos5250_fixed_rate_ext_clks = internal global [1 x %struct.samsung_fixed_rate_clock] [%struct.samsung_fixed_rate_clock { i32 1, ptr @.str.3, ptr null, i32 0, i32 0 }], section ".init.data", align 4
@ext_clk_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,clock-xxti\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], section ".init.rodata", align 4
@exynos5250_pll_pmux_clks = internal constant [1 x %struct.samsung_mux_clock] [%struct.samsung_mux_clock { i32 1030, ptr @.str.4, ptr @mout_vpllsrc_p, i8 2, i32 128, i32 66072, i8 0, i8 1, i8 0 }], section ".init.rodata", align 4
@epll_24mhz_tbl = internal constant [9 x %struct.samsung_pll_rate_table] [%struct.samsung_pll_rate_table { i32 192000000, i32 2, i32 64, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 180633605, i32 3, i32 90, i32 2, i32 20762, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 180000000, i32 3, i32 90, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 73728000, i32 2, i32 98, i32 4, i32 19923, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 67737602, i32 2, i32 90, i32 4, i32 20762, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 49152000, i32 3, i32 98, i32 4, i32 19923, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 45158401, i32 3, i32 90, i32 4, i32 20762, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 32768001, i32 3, i32 131, i32 5, i32 4719, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table zeroinitializer], section ".init.rodata", align 4
@exynos5250_plls = internal global [7 x %struct.samsung_pll_clock] [%struct.samsung_pll_clock { i32 2, ptr @.str.6, ptr @.str.3, i32 64, i32 256, i32 0, i32 2, ptr null }, %struct.samsung_pll_clock { i32 3, ptr @.str.7, ptr @.str.3, i32 64, i32 16640, i32 16384, i32 2, ptr null }, %struct.samsung_pll_clock { i32 6, ptr @.str.8, ptr @.str.3, i32 64, i32 65824, i32 65568, i32 2, ptr null }, %struct.samsung_pll_clock { i32 7, ptr @.str.9, ptr @.str.3, i32 64, i32 65840, i32 65584, i32 3, ptr null }, %struct.samsung_pll_clock { i32 8, ptr @.str.10, ptr @.str.4, i32 64, i32 65856, i32 65600, i32 3, ptr null }, %struct.samsung_pll_clock { i32 5, ptr @.str.11, ptr @.str.3, i32 64, i32 65872, i32 65616, i32 2, ptr null }, %struct.samsung_pll_clock { i32 4, ptr @.str.12, ptr @.str.3, i32 64, i32 131344, i32 131088, i32 2, ptr null }], section ".init.data", align 4
@apll_24mhz_tbl = internal constant [16 x %struct.samsung_pll_rate_table] [%struct.samsung_pll_rate_table { i32 1700000000, i32 6, i32 425, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 1600000000, i32 3, i32 200, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 1500000000, i32 4, i32 250, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 1400000000, i32 3, i32 175, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 1300000000, i32 6, i32 325, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 1200000000, i32 4, i32 200, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 1100000000, i32 6, i32 275, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 1000000000, i32 3, i32 125, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 900000000, i32 4, i32 150, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 800000000, i32 3, i32 100, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 700000000, i32 3, i32 175, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 600000000, i32 4, i32 200, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 500000000, i32 3, i32 125, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 400000000, i32 3, i32 100, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 300000000, i32 4, i32 200, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 200000000, i32 3, i32 100, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0 }], section ".init.rodata", align 4
@vpll_24mhz_tbl = internal constant [3 x %struct.samsung_pll_rate_table] [%struct.samsung_pll_rate_table { i32 266000000, i32 3, i32 266, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table { i32 70500000, i32 2, i32 94, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0 }, %struct.samsung_pll_rate_table zeroinitializer], section ".init.rodata", align 4
@exynos5250_fixed_rate_clks = internal constant [4 x %struct.samsung_fixed_rate_clock] [%struct.samsung_fixed_rate_clock { i32 159, ptr @.str.13, ptr null, i32 0, i32 24000000 }, %struct.samsung_fixed_rate_clock { i32 0, ptr @.str.5, ptr null, i32 0, i32 27000000 }, %struct.samsung_fixed_rate_clock { i32 0, ptr @.str.14, ptr null, i32 0, i32 24000000 }, %struct.samsung_fixed_rate_clock { i32 0, ptr @.str.15, ptr null, i32 0, i32 48000000 }], section ".init.rodata", align 4
@exynos5250_fixed_factor_clks = internal constant [2 x %struct.samsung_fixed_factor_clock] [%struct.samsung_fixed_factor_clock { i32 0, ptr @.str.16, ptr @.str.7, i32 1, i32 2, i32 0 }, %struct.samsung_fixed_factor_clock { i32 0, ptr @.str.17, ptr @.str.12, i32 1, i32 2, i32 0 }], section ".init.rodata", align 4
@exynos5250_mux_clks = internal constant [55 x %struct.samsung_mux_clock] [%struct.samsung_mux_clock { i32 1028, ptr @.str.18, ptr @mout_apll_p, i8 2, i32 132, i32 512, i8 0, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.19, ptr @mout_cpu_p, i8 2, i32 128, i32 512, i8 16, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 1029, ptr @.str.20, ptr @mout_mpll_p, i8 2, i32 128, i32 16900, i8 8, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.21, ptr @mout_aclk166_p, i8 2, i32 128, i32 66064, i8 8, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.22, ptr @mout_aclk200_p, i8 2, i32 128, i32 66064, i8 12, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.23, ptr @mout_aclk200_p, i8 2, i32 128, i32 66064, i8 14, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.24, ptr @mout_aclk300_p, i8 2, i32 128, i32 66064, i8 15, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.25, ptr @mout_aclk166_p, i8 2, i32 128, i32 66064, i8 16, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.26, ptr @mout_aclk200_p, i8 2, i32 128, i32 66064, i8 20, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.27, ptr @mout_aclk300_disp1_mid1_p, i8 2, i32 128, i32 66068, i8 8, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.28, ptr @mout_aclk200_p, i8 2, i32 128, i32 66068, i8 24, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.29, ptr @mout_aclk400_p, i8 2, i32 128, i32 66068, i8 28, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.30, ptr @mout_cpll_p, i8 2, i32 128, i32 66072, i8 8, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.31, ptr @mout_epll_p, i8 2, i32 128, i32 66072, i8 12, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.32, ptr @mout_vpll_p, i8 2, i32 128, i32 66072, i8 16, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.33, ptr @mout_mpll_user_p, i8 2, i32 128, i32 66072, i8 20, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.34, ptr @mout_bpll_user_p, i8 2, i32 128, i32 66072, i8 24, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 1025, ptr @.str.35, ptr @mout_gpll_p, i8 2, i32 128, i32 66072, i8 28, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 1026, ptr @.str.36, ptr @mout_aclk200_sub_p, i8 2, i32 128, i32 66076, i8 4, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 1027, ptr @.str.37, ptr @mout_aclk300_sub_p, i8 2, i32 128, i32 66076, i8 6, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.38, ptr @mout_aclk266_sub_p, i8 2, i32 128, i32 66076, i8 8, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.39, ptr @mout_aclk266_sub_p, i8 2, i32 128, i32 66076, i8 16, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.40, ptr @mout_aclk400_isp_sub_p, i8 2, i32 128, i32 66076, i8 20, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.41, ptr @mout_aclk333_sub_p, i8 2, i32 128, i32 66076, i8 24, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.42, ptr @mout_group1_p, i8 16, i32 128, i32 66080, i8 12, i8 4, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.43, ptr @mout_group1_p, i8 16, i32 128, i32 66080, i8 16, i8 4, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.44, ptr @mout_group1_p, i8 16, i32 128, i32 66080, i8 20, i8 4, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.45, ptr @mout_group1_p, i8 16, i32 128, i32 66080, i8 24, i8 4, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.46, ptr @mout_group1_p, i8 16, i32 128, i32 66080, i8 28, i8 4, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.47, ptr @mout_group1_p, i8 16, i32 128, i32 66092, i8 0, i8 4, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.48, ptr @mout_group1_p, i8 16, i32 128, i32 66092, i8 12, i8 4, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.49, ptr @mout_group1_p, i8 16, i32 128, i32 66092, i8 16, i8 4, i8 0 }, %struct.samsung_mux_clock { i32 1024, ptr @.str.50, ptr @mout_hdmi_p, i8 2, i32 128, i32 66092, i8 20, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.51, ptr @mout_audio0_p, i8 16, i32 128, i32 66112, i8 0, i8 4, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.52, ptr @mout_group1_p, i8 16, i32 128, i32 66116, i8 0, i8 4, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.53, ptr @mout_group1_p, i8 16, i32 128, i32 66116, i8 4, i8 4, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.54, ptr @mout_group1_p, i8 16, i32 128, i32 66116, i8 8, i8 4, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.55, ptr @mout_group1_p, i8 16, i32 128, i32 66116, i8 12, i8 4, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.56, ptr @mout_aclk200_p, i8 2, i32 128, i32 66116, i8 24, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.57, ptr @mout_usb3_p, i8 2, i32 128, i32 66116, i8 28, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.58, ptr @mout_group1_p, i8 16, i32 128, i32 66120, i8 0, i8 4, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.59, ptr @mout_group1_p, i8 16, i32 128, i32 66128, i8 0, i8 4, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.60, ptr @mout_group1_p, i8 16, i32 128, i32 66128, i8 4, i8 4, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.61, ptr @mout_group1_p, i8 16, i32 128, i32 66128, i8 8, i8 4, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.62, ptr @mout_group1_p, i8 16, i32 128, i32 66128, i8 12, i8 4, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.63, ptr @mout_group1_p, i8 16, i32 128, i32 66128, i8 24, i8 4, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.64, ptr @mout_audio1_p, i8 16, i32 128, i32 66132, i8 0, i8 4, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.65, ptr @mout_audio2_p, i8 16, i32 128, i32 66132, i8 4, i8 4, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.66, ptr @mout_spdif_p, i8 4, i32 128, i32 66132, i8 8, i8 2, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.67, ptr @mout_group1_p, i8 16, i32 128, i32 66132, i8 16, i8 4, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.68, ptr @mout_group1_p, i8 16, i32 128, i32 66132, i8 20, i8 4, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.69, ptr @mout_group1_p, i8 16, i32 128, i32 66132, i8 24, i8 4, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.70, ptr @mout_bpll_p, i8 2, i32 128, i32 131584, i8 0, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.71, ptr @mout_mpll_fout_p, i8 2, i32 128, i32 133668, i8 4, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 0, ptr @.str.72, ptr @mout_bpll_fout_p, i8 2, i32 128, i32 133668, i8 0, i8 1, i8 0 }], section ".init.rodata", align 4
@exynos5250_div_clks = internal constant [52 x %struct.samsung_div_clock] [%struct.samsung_div_clock { i32 0, ptr @.str.87, ptr @.str.19, i32 0, i32 1280, i8 0, i8 3, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.88, ptr @.str.18, i32 0, i32 1280, i8 24, i8 3, i8 0, ptr null }, %struct.samsung_div_clock { i32 10, ptr @.str.89, ptr @.str.87, i32 0, i32 1280, i8 28, i8 3, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.90, ptr @.str.91, i32 0, i32 66832, i8 0, i8 3, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.92, ptr @.str.21, i32 0, i32 66832, i8 8, i8 3, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.73, ptr @.str.22, i32 0, i32 66832, i8 12, i8 3, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.75, ptr @.str.33, i32 0, i32 66832, i8 16, i8 3, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.77, ptr @.str.25, i32 0, i32 66832, i8 20, i8 3, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.93, ptr @.str.29, i32 0, i32 66832, i8 24, i8 3, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.74, ptr @.str.24, i32 0, i32 66832, i8 28, i8 3, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.76, ptr @.str.28, i32 0, i32 66836, i8 20, i8 3, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.91, ptr @.str.33, i32 0, i32 66836, i8 24, i8 3, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.94, ptr @.str.42, i32 0, i32 66848, i8 12, i8 4, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.95, ptr @.str.43, i32 0, i32 66848, i8 16, i8 4, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.96, ptr @.str.44, i32 0, i32 66848, i8 20, i8 4, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.97, ptr @.str.45, i32 0, i32 66848, i8 24, i8 4, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.98, ptr @.str.46, i32 0, i32 66848, i8 28, i8 4, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.99, ptr @.str.47, i32 0, i32 66860, i8 0, i8 4, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.100, ptr @.str.48, i32 0, i32 66860, i8 16, i8 4, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.101, ptr @.str.100, i32 4, i32 66860, i8 20, i8 4, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.102, ptr @.str.49, i32 0, i32 66860, i8 24, i8 4, i8 0, ptr null }, %struct.samsung_div_clock { i32 137, ptr @.str.79, ptr @.str.32, i32 0, i32 66860, i8 28, i8 4, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.103, ptr @.str.58, i32 0, i32 66876, i8 4, i8 4, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.104, ptr @.str.51, i32 0, i32 66884, i8 0, i8 4, i8 0, ptr null }, %struct.samsung_div_clock { i32 160, ptr @.str.105, ptr @.str.83, i32 0, i32 66884, i8 4, i8 8, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.106, ptr @.str.56, i32 0, i32 66888, i8 20, i8 4, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.107, ptr @.str.57, i32 0, i32 66888, i8 24, i8 4, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.108, ptr @.str.52, i32 0, i32 66892, i8 0, i8 4, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.109, ptr @.str.108, i32 4, i32 66892, i8 8, i8 8, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.110, ptr @.str.53, i32 0, i32 66892, i8 16, i8 4, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.111, ptr @.str.110, i32 4, i32 66892, i8 24, i8 8, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.112, ptr @.str.54, i32 0, i32 66896, i8 0, i8 4, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.113, ptr @.str.112, i32 4, i32 66896, i8 8, i8 8, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.114, ptr @.str.55, i32 0, i32 66896, i8 16, i8 4, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.115, ptr @.str.114, i32 4, i32 66896, i8 24, i8 8, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.116, ptr @.str.59, i32 0, i32 66904, i8 0, i8 4, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.117, ptr @.str.60, i32 0, i32 66904, i8 4, i8 4, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.118, ptr @.str.61, i32 0, i32 66904, i8 8, i8 4, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.119, ptr @.str.62, i32 0, i32 66904, i8 12, i8 4, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.120, ptr @.str.67, i32 0, i32 66908, i8 0, i8 4, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.121, ptr @.str.120, i32 4, i32 66908, i8 8, i8 8, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.122, ptr @.str.68, i32 0, i32 66908, i8 16, i8 4, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.123, ptr @.str.122, i32 4, i32 66908, i8 24, i8 8, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.124, ptr @.str.69, i32 0, i32 66912, i8 0, i8 4, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.125, ptr @.str.124, i32 4, i32 66912, i8 8, i8 8, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.126, ptr @.str.63, i32 0, i32 66916, i8 0, i8 4, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.127, ptr @.str.64, i32 0, i32 66920, i8 0, i8 4, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.128, ptr @.str.84, i32 0, i32 66920, i8 4, i8 8, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.129, ptr @.str.65, i32 0, i32 66920, i8 16, i8 4, i8 0, ptr null }, %struct.samsung_div_clock { i32 0, ptr @.str.130, ptr @.str.85, i32 0, i32 66920, i8 20, i8 8, i8 0, ptr null }, %struct.samsung_div_clock { i32 157, ptr @.str.131, ptr @.str.84, i32 0, i32 66924, i8 0, i8 6, i8 0, ptr null }, %struct.samsung_div_clock { i32 158, ptr @.str.132, ptr @.str.85, i32 0, i32 66924, i8 8, i8 6, i8 0, ptr null }], section ".init.rodata", align 4
@exynos5250_gate_clks = internal constant [130 x %struct.samsung_gate_clock] [%struct.samsung_gate_clock { i32 346, ptr @.str.133, ptr @.str.75, i32 0, i32 34816, i8 1, i8 0 }, %struct.samsung_gate_clock { i32 348, ptr @.str.134, ptr @.str.75, i32 0, i32 34816, i8 2, i8 0 }, %struct.samsung_gate_clock { i32 345, ptr @.str.135, ptr @.str.73, i32 0, i32 34816, i8 3, i8 0 }, %struct.samsung_gate_clock { i32 347, ptr @.str.136, ptr @.str.75, i32 0, i32 34816, i8 5, i8 0 }, %struct.samsung_gate_clock { i32 128, ptr @.str.137, ptr @.str.94, i32 4, i32 66336, i8 12, i8 0 }, %struct.samsung_gate_clock { i32 129, ptr @.str.138, ptr @.str.95, i32 4, i32 66336, i8 16, i8 0 }, %struct.samsung_gate_clock { i32 130, ptr @.str.139, ptr @.str.96, i32 4, i32 66336, i8 20, i8 0 }, %struct.samsung_gate_clock { i32 131, ptr @.str.140, ptr @.str.97, i32 4, i32 66336, i8 24, i8 0 }, %struct.samsung_gate_clock { i32 132, ptr @.str.141, ptr @.str.98, i32 4, i32 66336, i8 28, i8 0 }, %struct.samsung_gate_clock { i32 133, ptr @.str.142, ptr @.str.99, i32 4, i32 66348, i8 0, i8 0 }, %struct.samsung_gate_clock { i32 134, ptr @.str.143, ptr @.str.100, i32 4, i32 66348, i8 12, i8 0 }, %struct.samsung_gate_clock { i32 135, ptr @.str.144, ptr @.str.102, i32 4, i32 66348, i8 16, i8 0 }, %struct.samsung_gate_clock { i32 136, ptr @.str.145, ptr @.str.50, i32 0, i32 66348, i8 20, i8 0 }, %struct.samsung_gate_clock { i32 138, ptr @.str.83, ptr @.str.104, i32 4, i32 66356, i8 0, i8 0 }, %struct.samsung_gate_clock { i32 139, ptr @.str.146, ptr @.str.109, i32 4, i32 66368, i8 0, i8 0 }, %struct.samsung_gate_clock { i32 140, ptr @.str.147, ptr @.str.111, i32 4, i32 66368, i8 4, i8 0 }, %struct.samsung_gate_clock { i32 141, ptr @.str.148, ptr @.str.113, i32 4, i32 66368, i8 8, i8 0 }, %struct.samsung_gate_clock { i32 142, ptr @.str.149, ptr @.str.115, i32 4, i32 66368, i8 12, i8 0 }, %struct.samsung_gate_clock { i32 143, ptr @.str.150, ptr @.str.106, i32 4, i32 66368, i8 24, i8 0 }, %struct.samsung_gate_clock { i32 144, ptr @.str.151, ptr @.str.107, i32 4, i32 66368, i8 28, i8 0 }, %struct.samsung_gate_clock { i32 145, ptr @.str.152, ptr @.str.103, i32 4, i32 66372, i8 0, i8 0 }, %struct.samsung_gate_clock { i32 146, ptr @.str.153, ptr @.str.116, i32 4, i32 66384, i8 0, i8 0 }, %struct.samsung_gate_clock { i32 147, ptr @.str.154, ptr @.str.117, i32 4, i32 66384, i8 4, i8 0 }, %struct.samsung_gate_clock { i32 148, ptr @.str.155, ptr @.str.118, i32 4, i32 66384, i8 8, i8 0 }, %struct.samsung_gate_clock { i32 149, ptr @.str.156, ptr @.str.119, i32 4, i32 66384, i8 12, i8 0 }, %struct.samsung_gate_clock { i32 150, ptr @.str.157, ptr @.str.126, i32 4, i32 66384, i8 24, i8 0 }, %struct.samsung_gate_clock { i32 151, ptr @.str.84, ptr @.str.127, i32 4, i32 66388, i8 0, i8 0 }, %struct.samsung_gate_clock { i32 152, ptr @.str.85, ptr @.str.129, i32 4, i32 66388, i8 4, i8 0 }, %struct.samsung_gate_clock { i32 153, ptr @.str.158, ptr @.str.66, i32 0, i32 66388, i8 4, i8 0 }, %struct.samsung_gate_clock { i32 154, ptr @.str.159, ptr @.str.121, i32 4, i32 66388, i8 16, i8 0 }, %struct.samsung_gate_clock { i32 155, ptr @.str.160, ptr @.str.123, i32 4, i32 66388, i8 20, i8 0 }, %struct.samsung_gate_clock { i32 156, ptr @.str.161, ptr @.str.125, i32 4, i32 66388, i8 24, i8 0 }, %struct.samsung_gate_clock { i32 256, ptr @.str.162, ptr @.str.38, i32 0, i32 67872, i8 0, i8 0 }, %struct.samsung_gate_clock { i32 257, ptr @.str.163, ptr @.str.38, i32 0, i32 67872, i8 1, i8 0 }, %struct.samsung_gate_clock { i32 258, ptr @.str.164, ptr @.str.38, i32 0, i32 67872, i8 2, i8 0 }, %struct.samsung_gate_clock { i32 259, ptr @.str.165, ptr @.str.38, i32 0, i32 67872, i8 3, i8 0 }, %struct.samsung_gate_clock { i32 365, ptr @.str.166, ptr @.str.38, i32 0, i32 67872, i8 4, i8 0 }, %struct.samsung_gate_clock { i32 260, ptr @.str.167, ptr @.str.97, i32 0, i32 67872, i8 5, i8 0 }, %struct.samsung_gate_clock { i32 261, ptr @.str.168, ptr @.str.98, i32 0, i32 67872, i8 6, i8 0 }, %struct.samsung_gate_clock { i32 262, ptr @.str.169, ptr @.str.38, i32 0, i32 67872, i8 7, i8 0 }, %struct.samsung_gate_clock { i32 263, ptr @.str.170, ptr @.str.38, i32 0, i32 67872, i8 8, i8 0 }, %struct.samsung_gate_clock { i32 264, ptr @.str.171, ptr @.str.38, i32 0, i32 67872, i8 9, i8 0 }, %struct.samsung_gate_clock { i32 265, ptr @.str.172, ptr @.str.38, i32 0, i32 67872, i8 10, i8 0 }, %struct.samsung_gate_clock { i32 363, ptr @.str.173, ptr @.str.38, i32 0, i32 67872, i8 11, i8 0 }, %struct.samsung_gate_clock { i32 364, ptr @.str.174, ptr @.str.38, i32 0, i32 67872, i8 12, i8 0 }, %struct.samsung_gate_clock { i32 266, ptr @.str.175, ptr @.str.41, i32 0, i32 67884, i8 0, i8 0 }, %struct.samsung_gate_clock { i32 268, ptr @.str.176, ptr @.str.41, i32 0, i32 67884, i8 1, i8 0 }, %struct.samsung_gate_clock { i32 267, ptr @.str.177, ptr @.str.41, i32 0, i32 67884, i8 2, i8 0 }, %struct.samsung_gate_clock { i32 349, ptr @.str.178, ptr @.str.93, i32 4, i32 67888, i8 0, i8 0 }, %struct.samsung_gate_clock { i32 269, ptr @.str.179, ptr @.str.75, i32 0, i32 67892, i8 1, i8 0 }, %struct.samsung_gate_clock { i32 270, ptr @.str.180, ptr @.str.92, i32 0, i32 67892, i8 2, i8 0 }, %struct.samsung_gate_clock { i32 271, ptr @.str.181, ptr @.str.75, i32 0, i32 67892, i8 4, i8 0 }, %struct.samsung_gate_clock { i32 272, ptr @.str.182, ptr @.str.75, i32 0, i32 67892, i8 6, i8 0 }, %struct.samsung_gate_clock { i32 273, ptr @.str.183, ptr @.str.92, i32 0, i32 67892, i8 7, i8 0 }, %struct.samsung_gate_clock { i32 274, ptr @.str.184, ptr @.str.75, i32 0, i32 67892, i8 9, i8 0 }, %struct.samsung_gate_clock { i32 275, ptr @.str.185, ptr @.str.73, i32 0, i32 67908, i8 1, i8 0 }, %struct.samsung_gate_clock { i32 276, ptr @.str.186, ptr @.str.73, i32 0, i32 67908, i8 2, i8 0 }, %struct.samsung_gate_clock { i32 277, ptr @.str.187, ptr @.str.73, i32 0, i32 67908, i8 6, i8 0 }, %struct.samsung_gate_clock { i32 278, ptr @.str.188, ptr @.str.73, i32 0, i32 67908, i8 7, i8 0 }, %struct.samsung_gate_clock { i32 279, ptr @.str.189, ptr @.str.73, i32 0, i32 67908, i8 8, i8 0 }, %struct.samsung_gate_clock { i32 280, ptr @.str.190, ptr @.str.73, i32 0, i32 67908, i8 12, i8 0 }, %struct.samsung_gate_clock { i32 281, ptr @.str.191, ptr @.str.73, i32 0, i32 67908, i8 13, i8 0 }, %struct.samsung_gate_clock { i32 282, ptr @.str.192, ptr @.str.73, i32 0, i32 67908, i8 14, i8 0 }, %struct.samsung_gate_clock { i32 283, ptr @.str.193, ptr @.str.73, i32 0, i32 67908, i8 15, i8 0 }, %struct.samsung_gate_clock { i32 284, ptr @.str.194, ptr @.str.73, i32 0, i32 67908, i8 17, i8 0 }, %struct.samsung_gate_clock { i32 285, ptr @.str.195, ptr @.str.73, i32 0, i32 67908, i8 18, i8 0 }, %struct.samsung_gate_clock { i32 286, ptr @.str.196, ptr @.str.73, i32 0, i32 67908, i8 19, i8 0 }, %struct.samsung_gate_clock { i32 287, ptr @.str.197, ptr @.str.73, i32 0, i32 67908, i8 24, i8 0 }, %struct.samsung_gate_clock { i32 288, ptr @.str.198, ptr @.str.73, i32 0, i32 67908, i8 25, i8 0 }, %struct.samsung_gate_clock { i32 289, ptr @.str.199, ptr @.str.90, i32 0, i32 67920, i8 0, i8 0 }, %struct.samsung_gate_clock { i32 290, ptr @.str.200, ptr @.str.90, i32 0, i32 67920, i8 1, i8 0 }, %struct.samsung_gate_clock { i32 291, ptr @.str.201, ptr @.str.90, i32 0, i32 67920, i8 2, i8 0 }, %struct.samsung_gate_clock { i32 292, ptr @.str.202, ptr @.str.90, i32 0, i32 67920, i8 3, i8 0 }, %struct.samsung_gate_clock { i32 293, ptr @.str.203, ptr @.str.90, i32 0, i32 67920, i8 4, i8 0 }, %struct.samsung_gate_clock { i32 294, ptr @.str.204, ptr @.str.90, i32 0, i32 67920, i8 6, i8 0 }, %struct.samsung_gate_clock { i32 295, ptr @.str.205, ptr @.str.90, i32 0, i32 67920, i8 7, i8 0 }, %struct.samsung_gate_clock { i32 296, ptr @.str.206, ptr @.str.90, i32 0, i32 67920, i8 8, i8 0 }, %struct.samsung_gate_clock { i32 297, ptr @.str.207, ptr @.str.90, i32 0, i32 67920, i8 9, i8 0 }, %struct.samsung_gate_clock { i32 298, ptr @.str.208, ptr @.str.90, i32 0, i32 67920, i8 10, i8 0 }, %struct.samsung_gate_clock { i32 299, ptr @.str.209, ptr @.str.90, i32 0, i32 67920, i8 11, i8 0 }, %struct.samsung_gate_clock { i32 300, ptr @.str.210, ptr @.str.90, i32 0, i32 67920, i8 12, i8 0 }, %struct.samsung_gate_clock { i32 301, ptr @.str.211, ptr @.str.90, i32 0, i32 67920, i8 13, i8 0 }, %struct.samsung_gate_clock { i32 302, ptr @.str.212, ptr @.str.90, i32 0, i32 67920, i8 14, i8 0 }, %struct.samsung_gate_clock { i32 303, ptr @.str.213, ptr @.str.90, i32 0, i32 67920, i8 15, i8 0 }, %struct.samsung_gate_clock { i32 304, ptr @.str.214, ptr @.str.90, i32 0, i32 67920, i8 16, i8 0 }, %struct.samsung_gate_clock { i32 305, ptr @.str.215, ptr @.str.90, i32 0, i32 67920, i8 17, i8 0 }, %struct.samsung_gate_clock { i32 306, ptr @.str.216, ptr @.str.90, i32 0, i32 67920, i8 18, i8 0 }, %struct.samsung_gate_clock { i32 307, ptr @.str.217, ptr @.str.90, i32 0, i32 67920, i8 20, i8 0 }, %struct.samsung_gate_clock { i32 308, ptr @.str.218, ptr @.str.90, i32 0, i32 67920, i8 21, i8 0 }, %struct.samsung_gate_clock { i32 309, ptr @.str.219, ptr @.str.90, i32 0, i32 67920, i8 22, i8 0 }, %struct.samsung_gate_clock { i32 310, ptr @.str.220, ptr @.str.90, i32 0, i32 67920, i8 23, i8 0 }, %struct.samsung_gate_clock { i32 311, ptr @.str.221, ptr @.str.90, i32 0, i32 67920, i8 24, i8 0 }, %struct.samsung_gate_clock { i32 312, ptr @.str.222, ptr @.str.90, i32 0, i32 67920, i8 26, i8 0 }, %struct.samsung_gate_clock { i32 313, ptr @.str.223, ptr @.str.90, i32 0, i32 67920, i8 27, i8 0 }, %struct.samsung_gate_clock { i32 314, ptr @.str.224, ptr @.str.90, i32 0, i32 67920, i8 28, i8 0 }, %struct.samsung_gate_clock { i32 315, ptr @.str.225, ptr @.str.90, i32 0, i32 67920, i8 29, i8 0 }, %struct.samsung_gate_clock { i32 316, ptr @.str.226, ptr @.str.90, i32 0, i32 67920, i8 30, i8 0 }, %struct.samsung_gate_clock { i32 317, ptr @.str.227, ptr @.str.90, i32 0, i32 67920, i8 31, i8 0 }, %struct.samsung_gate_clock { i32 318, ptr @.str.228, ptr @.str.90, i32 0, i32 67936, i8 0, i8 0 }, %struct.samsung_gate_clock { i32 319, ptr @.str.229, ptr @.str.90, i32 8, i32 67936, i8 1, i8 0 }, %struct.samsung_gate_clock { i32 320, ptr @.str.230, ptr @.str.90, i32 8, i32 67936, i8 2, i8 0 }, %struct.samsung_gate_clock { i32 321, ptr @.str.231, ptr @.str.90, i32 8, i32 67936, i8 3, i8 0 }, %struct.samsung_gate_clock { i32 322, ptr @.str.232, ptr @.str.90, i32 8, i32 67936, i8 4, i8 0 }, %struct.samsung_gate_clock { i32 323, ptr @.str.233, ptr @.str.90, i32 8, i32 67936, i8 5, i8 0 }, %struct.samsung_gate_clock { i32 324, ptr @.str.234, ptr @.str.90, i32 0, i32 67936, i8 6, i8 0 }, %struct.samsung_gate_clock { i32 325, ptr @.str.235, ptr @.str.90, i32 0, i32 67936, i8 7, i8 0 }, %struct.samsung_gate_clock { i32 326, ptr @.str.236, ptr @.str.90, i32 0, i32 67936, i8 8, i8 0 }, %struct.samsung_gate_clock { i32 327, ptr @.str.237, ptr @.str.90, i32 0, i32 67936, i8 9, i8 0 }, %struct.samsung_gate_clock { i32 328, ptr @.str.238, ptr @.str.90, i32 0, i32 67936, i8 10, i8 0 }, %struct.samsung_gate_clock { i32 329, ptr @.str.239, ptr @.str.90, i32 0, i32 67936, i8 11, i8 0 }, %struct.samsung_gate_clock { i32 330, ptr @.str.240, ptr @.str.90, i32 0, i32 67936, i8 12, i8 0 }, %struct.samsung_gate_clock { i32 331, ptr @.str.241, ptr @.str.90, i32 0, i32 67936, i8 13, i8 0 }, %struct.samsung_gate_clock { i32 332, ptr @.str.242, ptr @.str.90, i32 0, i32 67936, i8 14, i8 0 }, %struct.samsung_gate_clock { i32 333, ptr @.str.243, ptr @.str.90, i32 0, i32 67936, i8 15, i8 0 }, %struct.samsung_gate_clock { i32 334, ptr @.str.244, ptr @.str.90, i32 0, i32 67936, i8 16, i8 0 }, %struct.samsung_gate_clock { i32 335, ptr @.str.245, ptr @.str.90, i32 0, i32 67936, i8 18, i8 0 }, %struct.samsung_gate_clock { i32 336, ptr @.str.246, ptr @.str.90, i32 0, i32 67936, i8 19, i8 0 }, %struct.samsung_gate_clock { i32 337, ptr @.str.247, ptr @.str.90, i32 0, i32 67936, i8 20, i8 0 }, %struct.samsung_gate_clock { i32 338, ptr @.str.248, ptr @.str.90, i32 0, i32 67936, i8 21, i8 0 }, %struct.samsung_gate_clock { i32 352, ptr @.str.249, ptr @.str.73, i32 0, i32 34816, i8 7, i8 0 }, %struct.samsung_gate_clock { i32 353, ptr @.str.250, ptr @.str.39, i32 0, i32 51200, i8 8, i8 0 }, %struct.samsung_gate_clock { i32 354, ptr @.str.251, ptr @.str.39, i32 0, i32 51200, i8 9, i8 0 }, %struct.samsung_gate_clock { i32 357, ptr @.str.252, ptr @.str.39, i32 0, i32 51200, i8 10, i8 0 }, %struct.samsung_gate_clock { i32 355, ptr @.str.253, ptr @.str.39, i32 0, i32 51200, i8 11, i8 0 }, %struct.samsung_gate_clock { i32 356, ptr @.str.254, ptr @.str.39, i32 0, i32 51200, i8 12, i8 0 }, %struct.samsung_gate_clock { i32 358, ptr @.str.255, ptr @.str.40, i32 0, i32 51200, i8 13, i8 0 }, %struct.samsung_gate_clock { i32 359, ptr @.str.256, ptr @.str.39, i32 0, i32 51204, i8 4, i8 0 }, %struct.samsung_gate_clock { i32 360, ptr @.str.257, ptr @.str.39, i32 0, i32 51204, i8 5, i8 0 }, %struct.samsung_gate_clock { i32 361, ptr @.str.258, ptr @.str.39, i32 0, i32 51204, i8 6, i8 0 }, %struct.samsung_gate_clock { i32 362, ptr @.str.259, ptr @.str.39, i32 0, i32 51204, i8 7, i8 0 }], section ".init.rodata", align 4
@exynos5250_cpu_clks = internal constant [1 x %struct.samsung_cpu_clock] [%struct.samsung_cpu_clock { i32 9, ptr @.str.260, i32 1028, i32 1029, i32 1, i32 512, ptr @exynos5250_armclk_d }], section ".init.rodata", align 4
@exynos5250_clk_regs = internal constant [51 x i32] [i32 512, i32 1280, i32 4128, i32 4132, i32 16900, i32 66064, i32 66068, i32 66072, i32 66076, i32 66080, i32 66092, i32 66112, i32 66116, i32 66120, i32 66128, i32 66132, i32 66336, i32 66348, i32 66356, i32 66368, i32 66372, i32 66384, i32 66388, i32 66832, i32 66836, i32 66848, i32 66860, i32 66876, i32 66884, i32 66888, i32 66892, i32 66896, i32 66904, i32 66908, i32 66912, i32 66916, i32 66920, i32 66924, i32 67872, i32 67884, i32 67888, i32 67892, i32 67908, i32 67920, i32 67936, i32 131584, i32 133668, i32 67880, i32 34816, i32 51200, i32 51204], section ".init.rodata", align 4
@exynos5250_subcmus = internal global [1 x ptr] [ptr @exynos5250_disp_subcmu], align 4
@.str.2 = private unnamed_addr constant [49 x i8] c"\016Exynos5250: clock setup completed, armclk=%ld\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"fin_pll\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"mout_vpllsrc\00", align 1
@mout_vpllsrc_p = internal constant [2 x ptr] [ptr @.str.3, ptr @.str.5], section ".init.rodata", align 4
@.str.5 = private unnamed_addr constant [13 x i8] c"sclk_hdmi27m\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"fout_apll\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"fout_mpll\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"fout_cpll\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"fout_epll\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"fout_vpll\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"fout_gpll\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"fout_bpll\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"sclk_hdmiphy\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"sclk_dptxphy\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"sclk_uhostphy\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"fout_mplldiv2\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"fout_bplldiv2\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"mout_apll\00", align 1
@mout_apll_p = internal constant [2 x ptr] [ptr @.str.3, ptr @.str.6], section ".init.rodata", align 4
@.str.19 = private unnamed_addr constant [9 x i8] c"mout_cpu\00", align 1
@mout_cpu_p = internal constant [2 x ptr] [ptr @.str.18, ptr @.str.20], section ".init.rodata", align 4
@.str.20 = private unnamed_addr constant [10 x i8] c"mout_mpll\00", align 1
@mout_mpll_p = internal constant [2 x ptr] [ptr @.str.3, ptr @.str.71], section ".init.rodata", align 4
@.str.21 = private unnamed_addr constant [13 x i8] c"mout_aclk166\00", align 1
@mout_aclk166_p = internal constant [2 x ptr] [ptr @.str.30, ptr @.str.33], section ".init.rodata", align 4
@.str.22 = private unnamed_addr constant [13 x i8] c"mout_aclk200\00", align 1
@mout_aclk200_p = internal constant [2 x ptr] [ptr @.str.33, ptr @.str.34], section ".init.rodata", align 4
@.str.23 = private unnamed_addr constant [23 x i8] c"mout_aclk300_disp1_mid\00", align 1
@.str.24 = private unnamed_addr constant [13 x i8] c"mout_aclk300\00", align 1
@mout_aclk300_p = internal constant [2 x ptr] [ptr @.str.23, ptr @.str.27], section ".init.rodata", align 4
@.str.25 = private unnamed_addr constant [13 x i8] c"mout_aclk333\00", align 1
@.str.26 = private unnamed_addr constant [21 x i8] c"mout_aclk400_g3d_mid\00", align 1
@.str.27 = private unnamed_addr constant [24 x i8] c"mout_aclk300_disp1_mid1\00", align 1
@mout_aclk300_disp1_mid1_p = internal constant [2 x ptr] [ptr @.str.32, ptr @.str.30], section ".init.rodata", align 4
@.str.28 = private unnamed_addr constant [17 x i8] c"mout_aclk400_isp\00", align 1
@.str.29 = private unnamed_addr constant [17 x i8] c"mout_aclk400_g3d\00", align 1
@mout_aclk400_p = internal constant [2 x ptr] [ptr @.str.26, ptr @.str.35], section ".init.rodata", align 4
@.str.30 = private unnamed_addr constant [10 x i8] c"mout_cpll\00", align 1
@mout_cpll_p = internal constant [2 x ptr] [ptr @.str.3, ptr @.str.8], section ".init.rodata", align 4
@.str.31 = private unnamed_addr constant [10 x i8] c"mout_epll\00", align 1
@mout_epll_p = internal constant [2 x ptr] [ptr @.str.3, ptr @.str.9], section ".init.rodata", align 4
@.str.32 = private unnamed_addr constant [10 x i8] c"mout_vpll\00", align 1
@mout_vpll_p = internal constant [2 x ptr] [ptr @.str.4, ptr @.str.10], section ".init.rodata", align 4
@.str.33 = private unnamed_addr constant [15 x i8] c"mout_mpll_user\00", align 1
@mout_mpll_user_p = internal constant [2 x ptr] [ptr @.str.3, ptr @.str.20], section ".init.rodata", align 4
@.str.34 = private unnamed_addr constant [15 x i8] c"mout_bpll_user\00", align 1
@mout_bpll_user_p = internal constant [2 x ptr] [ptr @.str.3, ptr @.str.70], section ".init.rodata", align 4
@.str.35 = private unnamed_addr constant [10 x i8] c"mout_gpll\00", align 1
@mout_gpll_p = internal constant [2 x ptr] [ptr @.str.3, ptr @.str.11], section ".init.rodata", align 4
@.str.36 = private unnamed_addr constant [23 x i8] c"mout_aclk200_disp1_sub\00", align 1
@mout_aclk200_sub_p = internal constant [2 x ptr] [ptr @.str.3, ptr @.str.73], section ".init.rodata", align 4
@.str.37 = private unnamed_addr constant [23 x i8] c"mout_aclk300_disp1_sub\00", align 1
@mout_aclk300_sub_p = internal constant [2 x ptr] [ptr @.str.3, ptr @.str.74], section ".init.rodata", align 4
@.str.38 = private unnamed_addr constant [22 x i8] c"mout_aclk266_gscl_sub\00", align 1
@mout_aclk266_sub_p = internal constant [2 x ptr] [ptr @.str.3, ptr @.str.75], section ".init.rodata", align 4
@.str.39 = private unnamed_addr constant [22 x i8] c"mout_aclk_266_isp_sub\00", align 1
@.str.40 = private unnamed_addr constant [22 x i8] c"mout_aclk_400_isp_sub\00", align 1
@mout_aclk400_isp_sub_p = internal constant [2 x ptr] [ptr @.str.3, ptr @.str.76], section ".init.rodata", align 4
@.str.41 = private unnamed_addr constant [17 x i8] c"mout_aclk333_sub\00", align 1
@mout_aclk333_sub_p = internal constant [2 x ptr] [ptr @.str.3, ptr @.str.77], section ".init.rodata", align 4
@.str.42 = private unnamed_addr constant [15 x i8] c"mout_cam_bayer\00", align 1
@mout_group1_p = internal constant [16 x ptr] [ptr @.str.3, ptr @.str.3, ptr @.str.5, ptr @.str.14, ptr @.str.15, ptr @.str.13, ptr @.str.33, ptr @.str.31, ptr @.str.32, ptr @.str.30, ptr @.str.78, ptr @.str.78, ptr @.str.78, ptr @.str.78, ptr @.str.78, ptr @.str.78], section ".init.rodata", align 4
@.str.43 = private unnamed_addr constant [10 x i8] c"mout_cam0\00", align 1
@.str.44 = private unnamed_addr constant [10 x i8] c"mout_cam1\00", align 1
@.str.45 = private unnamed_addr constant [13 x i8] c"mout_gscl_wa\00", align 1
@.str.46 = private unnamed_addr constant [13 x i8] c"mout_gscl_wb\00", align 1
@.str.47 = private unnamed_addr constant [11 x i8] c"mout_fimd1\00", align 1
@.str.48 = private unnamed_addr constant [11 x i8] c"mout_mipi1\00", align 1
@.str.49 = private unnamed_addr constant [8 x i8] c"mout_dp\00", align 1
@.str.50 = private unnamed_addr constant [10 x i8] c"mout_hdmi\00", align 1
@mout_hdmi_p = internal constant [2 x ptr] [ptr @.str.79, ptr @.str.13], section ".init.rodata", align 4
@.str.51 = private unnamed_addr constant [12 x i8] c"mout_audio0\00", align 1
@mout_audio0_p = internal constant [16 x ptr] [ptr @.str.80, ptr @.str.3, ptr @.str.5, ptr @.str.14, ptr @.str.15, ptr @.str.3, ptr @.str.33, ptr @.str.31, ptr @.str.32, ptr @.str.30, ptr @.str.78, ptr @.str.78, ptr @.str.78, ptr @.str.78, ptr @.str.78, ptr @.str.78], section ".init.rodata", align 4
@.str.52 = private unnamed_addr constant [10 x i8] c"mout_mmc0\00", align 1
@.str.53 = private unnamed_addr constant [10 x i8] c"mout_mmc1\00", align 1
@.str.54 = private unnamed_addr constant [10 x i8] c"mout_mmc2\00", align 1
@.str.55 = private unnamed_addr constant [10 x i8] c"mout_mmc3\00", align 1
@.str.56 = private unnamed_addr constant [10 x i8] c"mout_sata\00", align 1
@.str.57 = private unnamed_addr constant [10 x i8] c"mout_usb3\00", align 1
@mout_usb3_p = internal constant [2 x ptr] [ptr @.str.33, ptr @.str.30], section ".init.rodata", align 4
@.str.58 = private unnamed_addr constant [10 x i8] c"mout_jpeg\00", align 1
@.str.59 = private unnamed_addr constant [11 x i8] c"mout_uart0\00", align 1
@.str.60 = private unnamed_addr constant [11 x i8] c"mout_uart1\00", align 1
@.str.61 = private unnamed_addr constant [11 x i8] c"mout_uart2\00", align 1
@.str.62 = private unnamed_addr constant [11 x i8] c"mout_uart3\00", align 1
@.str.63 = private unnamed_addr constant [9 x i8] c"mout_pwm\00", align 1
@.str.64 = private unnamed_addr constant [12 x i8] c"mout_audio1\00", align 1
@mout_audio1_p = internal constant [16 x ptr] [ptr @.str.81, ptr @.str.3, ptr @.str.5, ptr @.str.14, ptr @.str.15, ptr @.str.3, ptr @.str.33, ptr @.str.31, ptr @.str.32, ptr @.str.30, ptr @.str.78, ptr @.str.78, ptr @.str.78, ptr @.str.78, ptr @.str.78, ptr @.str.78], section ".init.rodata", align 4
@.str.65 = private unnamed_addr constant [12 x i8] c"mout_audio2\00", align 1
@mout_audio2_p = internal constant [16 x ptr] [ptr @.str.82, ptr @.str.3, ptr @.str.5, ptr @.str.14, ptr @.str.15, ptr @.str.3, ptr @.str.33, ptr @.str.31, ptr @.str.32, ptr @.str.30, ptr @.str.78, ptr @.str.78, ptr @.str.78, ptr @.str.78, ptr @.str.78, ptr @.str.78], section ".init.rodata", align 4
@.str.66 = private unnamed_addr constant [11 x i8] c"mout_spdif\00", align 1
@mout_spdif_p = internal constant [4 x ptr] [ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86], section ".init.rodata", align 4
@.str.67 = private unnamed_addr constant [10 x i8] c"mout_spi0\00", align 1
@.str.68 = private unnamed_addr constant [10 x i8] c"mout_spi1\00", align 1
@.str.69 = private unnamed_addr constant [10 x i8] c"mout_spi2\00", align 1
@.str.70 = private unnamed_addr constant [10 x i8] c"mout_bpll\00", align 1
@mout_bpll_p = internal constant [2 x ptr] [ptr @.str.3, ptr @.str.72], section ".init.rodata", align 4
@.str.71 = private unnamed_addr constant [15 x i8] c"mout_mpll_fout\00", align 1
@mout_mpll_fout_p = internal constant [2 x ptr] [ptr @.str.16, ptr @.str.7], section ".init.rodata", align 4
@.str.72 = private unnamed_addr constant [15 x i8] c"mout_bpll_fout\00", align 1
@mout_bpll_fout_p = internal constant [2 x ptr] [ptr @.str.17, ptr @.str.12], section ".init.rodata", align 4
@.str.73 = private unnamed_addr constant [12 x i8] c"div_aclk200\00", align 1
@.str.74 = private unnamed_addr constant [17 x i8] c"div_aclk300_disp\00", align 1
@.str.75 = private unnamed_addr constant [12 x i8] c"div_aclk266\00", align 1
@.str.76 = private unnamed_addr constant [16 x i8] c"div_aclk400_isp\00", align 1
@.str.77 = private unnamed_addr constant [12 x i8] c"div_aclk333\00", align 1
@.str.78 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.79 = private unnamed_addr constant [15 x i8] c"div_hdmi_pixel\00", align 1
@.str.80 = private unnamed_addr constant [7 x i8] c"cdclk0\00", align 1
@.str.81 = private unnamed_addr constant [7 x i8] c"cdclk1\00", align 1
@.str.82 = private unnamed_addr constant [7 x i8] c"cdclk2\00", align 1
@.str.83 = private unnamed_addr constant [12 x i8] c"sclk_audio0\00", align 1
@.str.84 = private unnamed_addr constant [12 x i8] c"sclk_audio1\00", align 1
@.str.85 = private unnamed_addr constant [12 x i8] c"sclk_audio2\00", align 1
@.str.86 = private unnamed_addr constant [13 x i8] c"spdif_extclk\00", align 1
@.str.87 = private unnamed_addr constant [8 x i8] c"div_arm\00", align 1
@.str.88 = private unnamed_addr constant [9 x i8] c"div_apll\00", align 1
@.str.89 = private unnamed_addr constant [9 x i8] c"div_arm2\00", align 1
@.str.90 = private unnamed_addr constant [11 x i8] c"div_aclk66\00", align 1
@.str.91 = private unnamed_addr constant [15 x i8] c"div_aclk66_pre\00", align 1
@.str.92 = private unnamed_addr constant [12 x i8] c"div_aclk166\00", align 1
@.str.93 = private unnamed_addr constant [16 x i8] c"div_aclk400_g3d\00", align 1
@.str.94 = private unnamed_addr constant [14 x i8] c"div_cam_bayer\00", align 1
@.str.95 = private unnamed_addr constant [9 x i8] c"div_cam0\00", align 1
@.str.96 = private unnamed_addr constant [9 x i8] c"div_cam1\00", align 1
@.str.97 = private unnamed_addr constant [12 x i8] c"div_gscl_wa\00", align 1
@.str.98 = private unnamed_addr constant [12 x i8] c"div_gscl_wb\00", align 1
@.str.99 = private unnamed_addr constant [10 x i8] c"div_fimd1\00", align 1
@.str.100 = private unnamed_addr constant [10 x i8] c"div_mipi1\00", align 1
@.str.101 = private unnamed_addr constant [14 x i8] c"div_mipi1_pre\00", align 1
@.str.102 = private unnamed_addr constant [7 x i8] c"div_dp\00", align 1
@.str.103 = private unnamed_addr constant [9 x i8] c"div_jpeg\00", align 1
@.str.104 = private unnamed_addr constant [11 x i8] c"div_audio0\00", align 1
@.str.105 = private unnamed_addr constant [9 x i8] c"div_pcm0\00", align 1
@.str.106 = private unnamed_addr constant [9 x i8] c"div_sata\00", align 1
@.str.107 = private unnamed_addr constant [9 x i8] c"div_usb3\00", align 1
@.str.108 = private unnamed_addr constant [9 x i8] c"div_mmc0\00", align 1
@.str.109 = private unnamed_addr constant [13 x i8] c"div_mmc_pre0\00", align 1
@.str.110 = private unnamed_addr constant [9 x i8] c"div_mmc1\00", align 1
@.str.111 = private unnamed_addr constant [13 x i8] c"div_mmc_pre1\00", align 1
@.str.112 = private unnamed_addr constant [9 x i8] c"div_mmc2\00", align 1
@.str.113 = private unnamed_addr constant [13 x i8] c"div_mmc_pre2\00", align 1
@.str.114 = private unnamed_addr constant [9 x i8] c"div_mmc3\00", align 1
@.str.115 = private unnamed_addr constant [13 x i8] c"div_mmc_pre3\00", align 1
@.str.116 = private unnamed_addr constant [10 x i8] c"div_uart0\00", align 1
@.str.117 = private unnamed_addr constant [10 x i8] c"div_uart1\00", align 1
@.str.118 = private unnamed_addr constant [10 x i8] c"div_uart2\00", align 1
@.str.119 = private unnamed_addr constant [10 x i8] c"div_uart3\00", align 1
@.str.120 = private unnamed_addr constant [9 x i8] c"div_spi0\00", align 1
@.str.121 = private unnamed_addr constant [13 x i8] c"div_spi_pre0\00", align 1
@.str.122 = private unnamed_addr constant [9 x i8] c"div_spi1\00", align 1
@.str.123 = private unnamed_addr constant [13 x i8] c"div_spi_pre1\00", align 1
@.str.124 = private unnamed_addr constant [9 x i8] c"div_spi2\00", align 1
@.str.125 = private unnamed_addr constant [13 x i8] c"div_spi_pre2\00", align 1
@.str.126 = private unnamed_addr constant [8 x i8] c"div_pwm\00", align 1
@.str.127 = private unnamed_addr constant [11 x i8] c"div_audio1\00", align 1
@.str.128 = private unnamed_addr constant [9 x i8] c"div_pcm1\00", align 1
@.str.129 = private unnamed_addr constant [11 x i8] c"div_audio2\00", align 1
@.str.130 = private unnamed_addr constant [9 x i8] c"div_pcm2\00", align 1
@.str.131 = private unnamed_addr constant [9 x i8] c"div_i2s1\00", align 1
@.str.132 = private unnamed_addr constant [9 x i8] c"div_i2s2\00", align 1
@.str.133 = private unnamed_addr constant [6 x i8] c"mdma0\00", align 1
@.str.134 = private unnamed_addr constant [4 x i8] c"sss\00", align 1
@.str.135 = private unnamed_addr constant [4 x i8] c"g2d\00", align 1
@.str.136 = private unnamed_addr constant [11 x i8] c"smmu_mdma0\00", align 1
@.str.137 = private unnamed_addr constant [15 x i8] c"sclk_cam_bayer\00", align 1
@.str.138 = private unnamed_addr constant [10 x i8] c"sclk_cam0\00", align 1
@.str.139 = private unnamed_addr constant [10 x i8] c"sclk_cam1\00", align 1
@.str.140 = private unnamed_addr constant [13 x i8] c"sclk_gscl_wa\00", align 1
@.str.141 = private unnamed_addr constant [13 x i8] c"sclk_gscl_wb\00", align 1
@.str.142 = private unnamed_addr constant [11 x i8] c"sclk_fimd1\00", align 1
@.str.143 = private unnamed_addr constant [11 x i8] c"sclk_mipi1\00", align 1
@.str.144 = private unnamed_addr constant [8 x i8] c"sclk_dp\00", align 1
@.str.145 = private unnamed_addr constant [10 x i8] c"sclk_hdmi\00", align 1
@.str.146 = private unnamed_addr constant [10 x i8] c"sclk_mmc0\00", align 1
@.str.147 = private unnamed_addr constant [10 x i8] c"sclk_mmc1\00", align 1
@.str.148 = private unnamed_addr constant [10 x i8] c"sclk_mmc2\00", align 1
@.str.149 = private unnamed_addr constant [10 x i8] c"sclk_mmc3\00", align 1
@.str.150 = private unnamed_addr constant [10 x i8] c"sclk_sata\00", align 1
@.str.151 = private unnamed_addr constant [10 x i8] c"sclk_usb3\00", align 1
@.str.152 = private unnamed_addr constant [10 x i8] c"sclk_jpeg\00", align 1
@.str.153 = private unnamed_addr constant [11 x i8] c"sclk_uart0\00", align 1
@.str.154 = private unnamed_addr constant [11 x i8] c"sclk_uart1\00", align 1
@.str.155 = private unnamed_addr constant [11 x i8] c"sclk_uart2\00", align 1
@.str.156 = private unnamed_addr constant [11 x i8] c"sclk_uart3\00", align 1
@.str.157 = private unnamed_addr constant [9 x i8] c"sclk_pwm\00", align 1
@.str.158 = private unnamed_addr constant [11 x i8] c"sclk_spdif\00", align 1
@.str.159 = private unnamed_addr constant [10 x i8] c"sclk_spi0\00", align 1
@.str.160 = private unnamed_addr constant [10 x i8] c"sclk_spi1\00", align 1
@.str.161 = private unnamed_addr constant [10 x i8] c"sclk_spi2\00", align 1
@.str.162 = private unnamed_addr constant [6 x i8] c"gscl0\00", align 1
@.str.163 = private unnamed_addr constant [6 x i8] c"gscl1\00", align 1
@.str.164 = private unnamed_addr constant [6 x i8] c"gscl2\00", align 1
@.str.165 = private unnamed_addr constant [6 x i8] c"gscl3\00", align 1
@.str.166 = private unnamed_addr constant [10 x i8] c"camif_top\00", align 1
@.str.167 = private unnamed_addr constant [8 x i8] c"gscl_wa\00", align 1
@.str.168 = private unnamed_addr constant [8 x i8] c"gscl_wb\00", align 1
@.str.169 = private unnamed_addr constant [11 x i8] c"smmu_gscl0\00", align 1
@.str.170 = private unnamed_addr constant [11 x i8] c"smmu_gscl1\00", align 1
@.str.171 = private unnamed_addr constant [11 x i8] c"smmu_gscl2\00", align 1
@.str.172 = private unnamed_addr constant [11 x i8] c"smmu_gscl3\00", align 1
@.str.173 = private unnamed_addr constant [16 x i8] c"smmu_fimc_lite0\00", align 1
@.str.174 = private unnamed_addr constant [16 x i8] c"smmu_fimc_lite1\00", align 1
@.str.175 = private unnamed_addr constant [4 x i8] c"mfc\00", align 1
@.str.176 = private unnamed_addr constant [10 x i8] c"smmu_mfcr\00", align 1
@.str.177 = private unnamed_addr constant [10 x i8] c"smmu_mfcl\00", align 1
@.str.178 = private unnamed_addr constant [4 x i8] c"g3d\00", align 1
@.str.179 = private unnamed_addr constant [8 x i8] c"rotator\00", align 1
@.str.180 = private unnamed_addr constant [5 x i8] c"jpeg\00", align 1
@.str.181 = private unnamed_addr constant [6 x i8] c"mdma1\00", align 1
@.str.182 = private unnamed_addr constant [13 x i8] c"smmu_rotator\00", align 1
@.str.183 = private unnamed_addr constant [10 x i8] c"smmu_jpeg\00", align 1
@.str.184 = private unnamed_addr constant [11 x i8] c"smmu_mdma1\00", align 1
@.str.185 = private unnamed_addr constant [6 x i8] c"pdma0\00", align 1
@.str.186 = private unnamed_addr constant [6 x i8] c"pdma1\00", align 1
@.str.187 = private unnamed_addr constant [5 x i8] c"sata\00", align 1
@.str.188 = private unnamed_addr constant [7 x i8] c"usbotg\00", align 1
@.str.189 = private unnamed_addr constant [9 x i8] c"mipi_hsi\00", align 1
@.str.190 = private unnamed_addr constant [7 x i8] c"sdmmc0\00", align 1
@.str.191 = private unnamed_addr constant [7 x i8] c"sdmmc1\00", align 1
@.str.192 = private unnamed_addr constant [7 x i8] c"sdmmc2\00", align 1
@.str.193 = private unnamed_addr constant [7 x i8] c"sdmmc3\00", align 1
@.str.194 = private unnamed_addr constant [6 x i8] c"sromc\00", align 1
@.str.195 = private unnamed_addr constant [5 x i8] c"usb2\00", align 1
@.str.196 = private unnamed_addr constant [5 x i8] c"usb3\00", align 1
@.str.197 = private unnamed_addr constant [13 x i8] c"sata_phyctrl\00", align 1
@.str.198 = private unnamed_addr constant [12 x i8] c"sata_phyi2c\00", align 1
@.str.199 = private unnamed_addr constant [6 x i8] c"uart0\00", align 1
@.str.200 = private unnamed_addr constant [6 x i8] c"uart1\00", align 1
@.str.201 = private unnamed_addr constant [6 x i8] c"uart2\00", align 1
@.str.202 = private unnamed_addr constant [6 x i8] c"uart3\00", align 1
@.str.203 = private unnamed_addr constant [6 x i8] c"uart4\00", align 1
@.str.204 = private unnamed_addr constant [5 x i8] c"i2c0\00", align 1
@.str.205 = private unnamed_addr constant [5 x i8] c"i2c1\00", align 1
@.str.206 = private unnamed_addr constant [5 x i8] c"i2c2\00", align 1
@.str.207 = private unnamed_addr constant [5 x i8] c"i2c3\00", align 1
@.str.208 = private unnamed_addr constant [5 x i8] c"i2c4\00", align 1
@.str.209 = private unnamed_addr constant [5 x i8] c"i2c5\00", align 1
@.str.210 = private unnamed_addr constant [5 x i8] c"i2c6\00", align 1
@.str.211 = private unnamed_addr constant [5 x i8] c"i2c7\00", align 1
@.str.212 = private unnamed_addr constant [9 x i8] c"i2c_hdmi\00", align 1
@.str.213 = private unnamed_addr constant [4 x i8] c"adc\00", align 1
@.str.214 = private unnamed_addr constant [5 x i8] c"spi0\00", align 1
@.str.215 = private unnamed_addr constant [5 x i8] c"spi1\00", align 1
@.str.216 = private unnamed_addr constant [5 x i8] c"spi2\00", align 1
@.str.217 = private unnamed_addr constant [5 x i8] c"i2s1\00", align 1
@.str.218 = private unnamed_addr constant [5 x i8] c"i2s2\00", align 1
@.str.219 = private unnamed_addr constant [5 x i8] c"pcm1\00", align 1
@.str.220 = private unnamed_addr constant [5 x i8] c"pcm2\00", align 1
@.str.221 = private unnamed_addr constant [4 x i8] c"pwm\00", align 1
@.str.222 = private unnamed_addr constant [6 x i8] c"spdif\00", align 1
@.str.223 = private unnamed_addr constant [5 x i8] c"ac97\00", align 1
@.str.224 = private unnamed_addr constant [7 x i8] c"hsi2c0\00", align 1
@.str.225 = private unnamed_addr constant [7 x i8] c"hsi2c1\00", align 1
@.str.226 = private unnamed_addr constant [7 x i8] c"hsi2c2\00", align 1
@.str.227 = private unnamed_addr constant [7 x i8] c"hsi2c3\00", align 1
@.str.228 = private unnamed_addr constant [7 x i8] c"chipid\00", align 1
@.str.229 = private unnamed_addr constant [7 x i8] c"sysreg\00", align 1
@.str.230 = private unnamed_addr constant [4 x i8] c"pmu\00", align 1
@.str.231 = private unnamed_addr constant [8 x i8] c"cmu_top\00", align 1
@.str.232 = private unnamed_addr constant [9 x i8] c"cmu_core\00", align 1
@.str.233 = private unnamed_addr constant [8 x i8] c"cmu_mem\00", align 1
@.str.234 = private unnamed_addr constant [6 x i8] c"tzpc0\00", align 1
@.str.235 = private unnamed_addr constant [6 x i8] c"tzpc1\00", align 1
@.str.236 = private unnamed_addr constant [6 x i8] c"tzpc2\00", align 1
@.str.237 = private unnamed_addr constant [6 x i8] c"tzpc3\00", align 1
@.str.238 = private unnamed_addr constant [6 x i8] c"tzpc4\00", align 1
@.str.239 = private unnamed_addr constant [6 x i8] c"tzpc5\00", align 1
@.str.240 = private unnamed_addr constant [6 x i8] c"tzpc6\00", align 1
@.str.241 = private unnamed_addr constant [6 x i8] c"tzpc7\00", align 1
@.str.242 = private unnamed_addr constant [6 x i8] c"tzpc8\00", align 1
@.str.243 = private unnamed_addr constant [6 x i8] c"tzpc9\00", align 1
@.str.244 = private unnamed_addr constant [9 x i8] c"hdmi_cec\00", align 1
@.str.245 = private unnamed_addr constant [4 x i8] c"mct\00", align 1
@.str.246 = private unnamed_addr constant [4 x i8] c"wdt\00", align 1
@.str.247 = private unnamed_addr constant [4 x i8] c"rtc\00", align 1
@.str.248 = private unnamed_addr constant [4 x i8] c"tmu\00", align 1
@.str.249 = private unnamed_addr constant [8 x i8] c"smmu_2d\00", align 1
@.str.250 = private unnamed_addr constant [14 x i8] c"smmu_fimc_isp\00", align 1
@.str.251 = private unnamed_addr constant [14 x i8] c"smmu_fimc_drc\00", align 1
@.str.252 = private unnamed_addr constant [13 x i8] c"smmu_fimc_fd\00", align 1
@.str.253 = private unnamed_addr constant [14 x i8] c"smmu_fimc_scc\00", align 1
@.str.254 = private unnamed_addr constant [14 x i8] c"smmu_fimc_scp\00", align 1
@.str.255 = private unnamed_addr constant [14 x i8] c"smmu_fimc_mcu\00", align 1
@.str.256 = private unnamed_addr constant [14 x i8] c"smmu_fimc_odc\00", align 1
@.str.257 = private unnamed_addr constant [15 x i8] c"smmu_fimc_dis0\00", align 1
@.str.258 = private unnamed_addr constant [15 x i8] c"smmu_fimc_dis1\00", align 1
@.str.259 = private unnamed_addr constant [15 x i8] c"smmu_fimc_3dnr\00", align 1
@.str.260 = private unnamed_addr constant [7 x i8] c"armclk\00", align 1
@exynos5250_armclk_d = internal constant [17 x %struct.exynos_cpuclk_cfg_data] [%struct.exynos_cpuclk_cfg_data { i32 1700000, i32 87521072, i32 32 }, %struct.exynos_cpuclk_cfg_data { i32 1600000, i32 68646704, i32 32 }, %struct.exynos_cpuclk_cfg_data { i32 1500000, i32 68646688, i32 32 }, %struct.exynos_cpuclk_cfg_data { i32 1400000, i32 68581152, i32 32 }, %struct.exynos_cpuclk_cfg_data { i32 1300000, i32 51803936, i32 32 }, %struct.exynos_cpuclk_cfg_data { i32 1200000, i32 51738400, i32 32 }, %struct.exynos_cpuclk_cfg_data { i32 1100000, i32 51738416, i32 32 }, %struct.exynos_cpuclk_cfg_data { i32 1000000, i32 34895632, i32 32 }, %struct.exynos_cpuclk_cfg_data { i32 900000, i32 34895632, i32 32 }, %struct.exynos_cpuclk_cfg_data { i32 800000, i32 34895632, i32 32 }, %struct.exynos_cpuclk_cfg_data { i32 700000, i32 18052880, i32 32 }, %struct.exynos_cpuclk_cfg_data { i32 600000, i32 18052880, i32 32 }, %struct.exynos_cpuclk_cfg_data { i32 500000, i32 17987344, i32 32 }, %struct.exynos_cpuclk_cfg_data { i32 400000, i32 17987344, i32 32 }, %struct.exynos_cpuclk_cfg_data { i32 300000, i32 17921808, i32 32 }, %struct.exynos_cpuclk_cfg_data { i32 200000, i32 17921808, i32 32 }, %struct.exynos_cpuclk_cfg_data zeroinitializer], section ".init.rodata", align 4
@exynos5250_disp_subcmu = internal constant %struct.exynos5_subcmu_info { ptr null, i32 0, ptr @exynos5250_disp_gate_clks, i32 8, ptr @exynos5250_disp_suspend_regs, i32 3, ptr @.str.261 }, align 4
@exynos5250_disp_gate_clks = internal constant [8 x %struct.samsung_gate_clock] [%struct.samsung_gate_clock { i32 339, ptr @.str.262, ptr @.str.36, i32 0, i32 67880, i8 0, i8 0 }, %struct.samsung_gate_clock { i32 340, ptr @.str.263, ptr @.str.36, i32 0, i32 67880, i8 1, i8 0 }, %struct.samsung_gate_clock { i32 341, ptr @.str.264, ptr @.str.36, i32 0, i32 67880, i8 3, i8 0 }, %struct.samsung_gate_clock { i32 342, ptr @.str.265, ptr @.str.36, i32 0, i32 67880, i8 4, i8 0 }, %struct.samsung_gate_clock { i32 343, ptr @.str.266, ptr @.str.36, i32 0, i32 67880, i8 5, i8 0 }, %struct.samsung_gate_clock { i32 344, ptr @.str.267, ptr @.str.36, i32 0, i32 67880, i8 6, i8 0 }, %struct.samsung_gate_clock { i32 350, ptr @.str.268, ptr @.str.36, i32 0, i32 67880, i8 9, i8 0 }, %struct.samsung_gate_clock { i32 351, ptr @.str.269, ptr @.str.36, i32 0, i32 67880, i8 8, i8 0 }], section ".init.rodata", align 4
@exynos5250_disp_suspend_regs = internal global [3 x %struct.exynos5_subcmu_reg_dump] [%struct.exynos5_subcmu_reg_dump { i32 67880, i32 -1, i32 -1, i32 0 }, %struct.exynos5_subcmu_reg_dump { i32 66076, i32 0, i32 16, i32 0 }, %struct.exynos5_subcmu_reg_dump { i32 66076, i32 0, i32 64, i32 0 }], align 4
@.str.261 = private unnamed_addr constant [6 x i8] c"DISP1\00", align 1
@.str.262 = private unnamed_addr constant [6 x i8] c"fimd1\00", align 1
@.str.263 = private unnamed_addr constant [5 x i8] c"mie1\00", align 1
@.str.264 = private unnamed_addr constant [6 x i8] c"dsim0\00", align 1
@.str.265 = private unnamed_addr constant [3 x i8] c"dp\00", align 1
@.str.266 = private unnamed_addr constant [6 x i8] c"mixer\00", align 1
@.str.267 = private unnamed_addr constant [5 x i8] c"hdmi\00", align 1
@.str.268 = private unnamed_addr constant [8 x i8] c"smmu_tv\00", align 1
@.str.269 = private unnamed_addr constant [11 x i8] c"smmu_fimd1\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__of_table_exynos5250_clk], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @exynos5250_clk_of_clk_init_driver(ptr noundef %0) #0 section ".init.text" {
  %2 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 10
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %2) #4
  tail call fastcc void @exynos5250_clk_init(ptr noundef %0) #5
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @exynos5250_clk_init(ptr noundef %0) unnamed_addr #0 section ".init.text" {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = tail call ptr @of_iomap(ptr noundef nonnull %0, i32 noundef 0) #4
  store ptr %4, ptr @reg_base, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.exynos5250_clk_init) #6
  unreachable

7:                                                ; preds = %1
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.exynos5250_clk_init) #6
  unreachable

8:                                                ; preds = %3
  %9 = tail call ptr @samsung_clk_init(ptr noundef nonnull %0, ptr noundef nonnull %4, i32 noundef 1031) #4
  tail call void @samsung_clk_of_register_fixed_ext(ptr noundef %9, ptr noundef nonnull @exynos5250_fixed_rate_ext_clks, i32 noundef 1, ptr noundef nonnull @ext_clk_match) #4
  tail call void @samsung_clk_register_mux(ptr noundef %9, ptr noundef nonnull @exynos5250_pll_pmux_clks, i32 noundef 1) #4
  %10 = getelementptr %struct.samsung_clk_provider, ptr %9, i32 1, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 @clk_hw_get_rate(ptr noundef %11) #4
  %13 = icmp eq i32 %12, 24000000
  br i1 %13, label %14, label %15

14:                                               ; preds = %8
  store ptr @epll_24mhz_tbl, ptr getelementptr inbounds ([7 x %struct.samsung_pll_clock], ptr @exynos5250_plls, i32 0, i32 3, i32 7), align 4
  store ptr @apll_24mhz_tbl, ptr getelementptr inbounds ([7 x %struct.samsung_pll_clock], ptr @exynos5250_plls, i32 0, i32 0, i32 7), align 4
  br label %15

15:                                               ; preds = %14, %8
  %16 = getelementptr %struct.samsung_clk_provider, ptr %9, i32 258, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i32 @clk_hw_get_rate(ptr noundef %17) #4
  %19 = icmp eq i32 %18, 24000000
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  store ptr @vpll_24mhz_tbl, ptr getelementptr inbounds ([7 x %struct.samsung_pll_clock], ptr @exynos5250_plls, i32 0, i32 4, i32 7), align 4
  br label %21

21:                                               ; preds = %20, %15
  %22 = load ptr, ptr @reg_base, align 4
  tail call void @samsung_clk_register_pll(ptr noundef %9, ptr noundef nonnull @exynos5250_plls, i32 noundef 7, ptr noundef %22) #4
  tail call void @samsung_clk_register_fixed_rate(ptr noundef %9, ptr noundef nonnull @exynos5250_fixed_rate_clks, i32 noundef 4) #4
  tail call void @samsung_clk_register_fixed_factor(ptr noundef %9, ptr noundef nonnull @exynos5250_fixed_factor_clks, i32 noundef 2) #4
  tail call void @samsung_clk_register_mux(ptr noundef %9, ptr noundef nonnull @exynos5250_mux_clks, i32 noundef 55) #4
  tail call void @samsung_clk_register_div(ptr noundef %9, ptr noundef nonnull @exynos5250_div_clks, i32 noundef 52) #4
  tail call void @samsung_clk_register_gate(ptr noundef %9, ptr noundef nonnull @exynos5250_gate_clks, i32 noundef 130) #4
  tail call void @samsung_clk_register_cpu(ptr noundef %9, ptr noundef nonnull @exynos5250_cpu_clks, i32 noundef 1) #4
  %23 = load ptr, ptr @reg_base, align 4
  %24 = getelementptr i8, ptr %23, i32 4128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 1879507763) #4, !srcloc !8
  %25 = load ptr, ptr @reg_base, align 4
  %26 = getelementptr i8, ptr %25, i32 4132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 50397457) #4, !srcloc !8
  %27 = load ptr, ptr @reg_base, align 4
  tail call void @samsung_clk_extended_sleep_init(ptr noundef %27, ptr noundef nonnull @exynos5250_clk_regs, i32 noundef 51, ptr noundef null, i32 noundef 0) #4
  tail call void @exynos5_subcmus_init(ptr noundef %9, i32 noundef 1, ptr noundef nonnull @exynos5250_subcmus) #4
  tail call void @samsung_clk_of_add_provider(ptr noundef nonnull %0, ptr noundef %9) #4
  %28 = getelementptr %struct.samsung_clk_provider, ptr %9, i32 3, i32 2
  %29 = load ptr, ptr %28, align 4
  %30 = tail call i32 @clk_hw_get_rate(ptr noundef %29) #4
  %31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %30) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @samsung_clk_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @samsung_clk_of_register_fixed_ext(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @samsung_clk_register_mux(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @samsung_clk_register_pll(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @samsung_clk_register_fixed_rate(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @samsung_clk_register_fixed_factor(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

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

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold noreturn null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { cold }
attributes #6 = { cold noreturn nounwind }
attributes #7 = { cold nounwind }

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
!8 = !{i64 2878441}
