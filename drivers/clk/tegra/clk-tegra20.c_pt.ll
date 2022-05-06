; ModuleID = '/llk/IR/drivers/clk/tegra/clk-tegra20.c_pt.bc'
source_filename = "../drivers/clk/tegra/clk-tegra20.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.tegra_clk_duplicate = type { i32, %struct.clk_lookup }
%struct.clk_lookup = type { %struct.list_head, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.tegra_cpu_car_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tegra_clk = type { i32, i8 }
%struct.tegra_clk_pll_params = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x i32], i32, i32, i32, i32, i32, i32, i32, i8, ptr, ptr, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tegra_clk_pll_freq_table = type { i32, i32, i32, i32, i8, i8, i16 }
%struct.pdiv_map = type { i8, i8 }
%struct.tegra_periph_init_data = type { ptr, i32, %union.anon.5, i32, %struct.tegra_clk_periph, i32, ptr, ptr, i32 }
%union.anon.5 = type { ptr }
%struct.tegra_clk_periph = type { i32, %struct.clk_hw, %struct.clk_mux, %struct.tegra_clk_frac_div, %struct.tegra_clk_periph_gate, ptr, ptr, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.clk_mux = type { %struct.clk_hw, ptr, ptr, i32, i8, i8, ptr }
%struct.tegra_clk_frac_div = type { %struct.clk_hw, ptr, i8, i8, i8, i8, ptr }
%struct.tegra_clk_periph_gate = type { i32, %struct.clk_hw, ptr, i8, i32, ptr, ptr }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tegra_devclk = type { i32, ptr, ptr }
%struct.tegra_clk_init_table = type { i32, i32, i32, i32 }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }

@__of_table_tegra20 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra20-car\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra20_of_clk_init_driver }, section "__clk_of_table", align 4
@__initcall__kmod_clk_tegra20__166_1199_tegra20_car_driver_init6 = internal global ptr @tegra20_car_driver_init, section ".initcall6.init", align 4
@clk_base = internal unnamed_addr global ptr null, align 4
@.str = private unnamed_addr constant [27 x i8] c"\013Can't map CAR registers\0A\00", align 1
@pmc_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra20-pmc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], section ".init.rodata", align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"\013Failed to find pmc node\0A\00", align 1
@pmc_base = internal unnamed_addr global ptr null, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"\013Can't map pmc registers\0A\00", align 1
@clks = internal unnamed_addr global ptr null, align 4
@tegra_clk_duplicates = internal global [5 x %struct.tegra_clk_duplicate] [%struct.tegra_clk_duplicate { i32 22, %struct.clk_lookup { %struct.list_head zeroinitializer, ptr @.str.66, ptr null, ptr null, ptr null } }, %struct.tegra_clk_duplicate { i32 22, %struct.clk_lookup { %struct.list_head zeroinitializer, ptr @.str.67, ptr null, ptr null, ptr null } }, %struct.tegra_clk_duplicate { i32 22, %struct.clk_lookup { %struct.list_head zeroinitializer, ptr @.str.68, ptr null, ptr null, ptr null } }, %struct.tegra_clk_duplicate { i32 108, %struct.clk_lookup { %struct.list_head zeroinitializer, ptr null, ptr @.str.69, ptr null, ptr null } }, %struct.tegra_clk_duplicate { i32 133, %struct.clk_lookup zeroinitializer }], align 4
@tegra20_cpu_car_ops = internal global %struct.tegra_cpu_car_ops { ptr @tegra20_wait_cpu_in_reset, ptr @tegra20_put_cpu_in_reset, ptr @tegra20_cpu_out_of_reset, ptr @tegra20_enable_cpu_clock, ptr @tegra20_disable_cpu_clock, ptr @tegra20_cpu_rail_off_ready, ptr @tegra20_cpu_clock_suspend, ptr @tegra20_cpu_clock_resume }, align 4
@tegra_cpu_car_ops = external dso_local local_unnamed_addr global ptr, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"clk_m\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"pll_ref\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"\013Invalid pll ref divider %d\0A\00", align 1
@tegra20_clks = internal global <{ [273 x %struct.tegra_clk], [40 x %struct.tegra_clk] }> <{ [273 x %struct.tegra_clk] [%struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 72, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 33, i8 1 }, %struct.tegra_clk { i32 34, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 62, i8 1 }, %struct.tegra_clk { i32 63, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 105, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 52, i8 1 }, %struct.tegra_clk { i32 73, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 92, i8 1 }, %struct.tegra_clk { i32 103, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 19, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 39, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 21, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 24, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 109, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 28, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 23, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 36, i8 1 }, %struct.tegra_clk { i32 40, i8 1 }, %struct.tegra_clk { i32 76, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 50, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 60, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 13, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 42, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 71, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 110, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 121, i8 1 }, %struct.tegra_clk { i32 122, i8 1 }, %struct.tegra_clk { i32 123, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 124, i8 1 }, %struct.tegra_clk { i32 125, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 4, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 41, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 44, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 46, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 68, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 14, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 9, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 69, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 15, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 98, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 99, i8 1 }, %struct.tegra_clk { i32 5, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 53, i8 1 }, %struct.tegra_clk { i32 102, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 58, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 59, i8 1 }, %struct.tegra_clk { i32 22, i8 1 }, %struct.tegra_clk { i32 29, i8 1 }, %struct.tegra_clk { i32 61, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 97, i8 1 }, %struct.tegra_clk { i32 100, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 101, i8 1 }], [40 x %struct.tegra_clk] zeroinitializer }>, section ".init.data", align 4
@.str.8 = private unnamed_addr constant [6 x i8] c"pll_c\00", align 1
@pll_c_params = internal global %struct.tegra_clk_pll_params { i32 2000000, i32 31000000, i32 1000000, i32 6000000, i32 20000000, i32 1400000000, i32 128, i32 140, i32 0, i32 134217728, i32 18, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, [6 x i32] zeroinitializer, i32 0, i32 0, i32 1026, i32 0, i32 0, i32 300, i32 0, i8 0, ptr null, ptr null, ptr @pll_c_freq_table, i32 0, i16 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.9 = private unnamed_addr constant [15 x i8] c"pll_c_out1_div\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"pll_c_out1\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"pll_m\00", align 1
@pll_m_params = internal global %struct.tegra_clk_pll_params { i32 2000000, i32 31000000, i32 1000000, i32 6000000, i32 20000000, i32 1200000000, i32 144, i32 156, i32 0, i32 134217728, i32 18, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, [6 x i32] zeroinitializer, i32 0, i32 0, i32 1026, i32 0, i32 0, i32 300, i32 0, i8 0, ptr null, ptr null, ptr @pll_m_freq_table, i32 0, i16 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.12 = private unnamed_addr constant [15 x i8] c"pll_m_out1_div\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"pll_m_out1\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"pll_x\00", align 1
@pll_x_params = internal global %struct.tegra_clk_pll_params { i32 2000000, i32 31000000, i32 1000000, i32 6000000, i32 20000000, i32 1200000000, i32 224, i32 228, i32 0, i32 134217728, i32 18, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, [6 x i32] zeroinitializer, i32 0, i32 0, i32 1026, i32 0, i32 0, i32 300, i32 0, i8 0, ptr null, ptr null, ptr @pll_x_freq_table, i32 0, i16 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra_cclk_pre_pllx_rate_change, ptr @tegra_cclk_post_pllx_rate_change }, align 4
@.str.15 = private unnamed_addr constant [6 x i8] c"pll_u\00", align 1
@pll_u_params = internal global %struct.tegra_clk_pll_params { i32 2000000, i32 40000000, i32 1000000, i32 6000000, i32 48000000, i32 960000000, i32 192, i32 204, i32 0, i32 134217728, i32 22, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, [6 x i32] zeroinitializer, i32 0, i32 0, i32 1042, i32 0, i32 0, i32 1000, i32 0, i8 0, ptr @pllu_p, ptr null, ptr @pll_u_freq_table, i32 0, i16 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.16 = private unnamed_addr constant [6 x i8] c"pll_d\00", align 1
@pll_d_params = internal global %struct.tegra_clk_pll_params { i32 2000000, i32 40000000, i32 1000000, i32 6000000, i32 40000000, i32 1000000000, i32 208, i32 220, i32 0, i32 134217728, i32 22, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, [6 x i32] zeroinitializer, i32 0, i32 0, i32 1026, i32 0, i32 0, i32 1000, i32 0, i8 0, ptr null, ptr null, ptr @pll_d_freq_table, i32 0, i16 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.17 = private unnamed_addr constant [11 x i8] c"pll_d_out0\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"pll_a\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"pll_p_out1\00", align 1
@pll_a_params = internal global %struct.tegra_clk_pll_params { i32 2000000, i32 31000000, i32 1000000, i32 6000000, i32 20000000, i32 1400000000, i32 176, i32 188, i32 0, i32 134217728, i32 18, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, [6 x i32] zeroinitializer, i32 0, i32 0, i32 1026, i32 0, i32 0, i32 300, i32 0, i8 0, ptr null, ptr null, ptr @pll_a_freq_table, i32 0, i16 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.20 = private unnamed_addr constant [15 x i8] c"pll_a_out0_div\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"pll_a_out0\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"pll_e\00", align 1
@pll_e_params = internal global %struct.tegra_clk_pll_params { i32 12000000, i32 12000000, i32 0, i32 0, i32 0, i32 0, i32 232, i32 236, i32 0, i32 2048, i32 9, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, [6 x i32] zeroinitializer, i32 0, i32 0, i32 1344, i32 0, i32 0, i32 0, i32 0, i8 0, ptr @plle_p, ptr null, ptr @pll_e_freq_table, i32 100000000, i16 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@pll_c_freq_table = internal global [5 x %struct.tegra_clk_pll_freq_table] [%struct.tegra_clk_pll_freq_table { i32 12000000, i32 600000000, i32 600, i32 12, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 13000000, i32 600000000, i32 600, i32 13, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 19200000, i32 600000000, i32 500, i32 16, i8 1, i8 6, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 26000000, i32 600000000, i32 600, i32 26, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table zeroinitializer], align 4
@pll_m_freq_table = internal global [9 x %struct.tegra_clk_pll_freq_table] [%struct.tegra_clk_pll_freq_table { i32 12000000, i32 666000000, i32 666, i32 12, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 13000000, i32 666000000, i32 666, i32 13, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 19200000, i32 666000000, i32 555, i32 16, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 26000000, i32 666000000, i32 666, i32 26, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 12000000, i32 600000000, i32 600, i32 12, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 13000000, i32 600000000, i32 600, i32 13, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 19200000, i32 600000000, i32 375, i32 12, i8 1, i8 6, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 26000000, i32 600000000, i32 600, i32 26, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table zeroinitializer], align 4
@pll_x_freq_table = internal global [33 x %struct.tegra_clk_pll_freq_table] [%struct.tegra_clk_pll_freq_table { i32 12000000, i32 1000000000, i32 1000, i32 12, i8 1, i8 12, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 13000000, i32 1000000000, i32 1000, i32 13, i8 1, i8 12, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 19200000, i32 1000000000, i32 625, i32 12, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 26000000, i32 1000000000, i32 1000, i32 26, i8 1, i8 12, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 12000000, i32 912000000, i32 912, i32 12, i8 1, i8 12, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 13000000, i32 912000000, i32 912, i32 13, i8 1, i8 12, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 19200000, i32 912000000, i32 760, i32 16, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 26000000, i32 912000000, i32 912, i32 26, i8 1, i8 12, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 12000000, i32 816000000, i32 816, i32 12, i8 1, i8 12, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 13000000, i32 816000000, i32 816, i32 13, i8 1, i8 12, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 19200000, i32 816000000, i32 680, i32 16, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 26000000, i32 816000000, i32 816, i32 26, i8 1, i8 12, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 12000000, i32 760000000, i32 760, i32 12, i8 1, i8 12, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 13000000, i32 760000000, i32 760, i32 13, i8 1, i8 12, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 19200000, i32 760000000, i32 950, i32 24, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 26000000, i32 760000000, i32 760, i32 26, i8 1, i8 12, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 12000000, i32 750000000, i32 750, i32 12, i8 1, i8 12, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 13000000, i32 750000000, i32 750, i32 13, i8 1, i8 12, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 19200000, i32 750000000, i32 625, i32 16, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 26000000, i32 750000000, i32 750, i32 26, i8 1, i8 12, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 12000000, i32 608000000, i32 608, i32 12, i8 1, i8 12, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 13000000, i32 608000000, i32 608, i32 13, i8 1, i8 12, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 19200000, i32 608000000, i32 380, i32 12, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 26000000, i32 608000000, i32 608, i32 26, i8 1, i8 12, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 12000000, i32 456000000, i32 456, i32 12, i8 1, i8 12, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 13000000, i32 456000000, i32 456, i32 13, i8 1, i8 12, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 19200000, i32 456000000, i32 380, i32 16, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 26000000, i32 456000000, i32 456, i32 26, i8 1, i8 12, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 12000000, i32 312000000, i32 312, i32 12, i8 1, i8 12, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 13000000, i32 312000000, i32 312, i32 13, i8 1, i8 12, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 19200000, i32 312000000, i32 260, i32 16, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 26000000, i32 312000000, i32 312, i32 26, i8 1, i8 12, i16 0 }, %struct.tegra_clk_pll_freq_table zeroinitializer], align 4
@pllu_p = internal constant [3 x %struct.pdiv_map] [%struct.pdiv_map { i8 1, i8 1 }, %struct.pdiv_map { i8 2, i8 0 }, %struct.pdiv_map zeroinitializer], align 1
@pll_u_freq_table = internal global [5 x %struct.tegra_clk_pll_freq_table] [%struct.tegra_clk_pll_freq_table { i32 12000000, i32 480000000, i32 960, i32 12, i8 1, i8 0, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 13000000, i32 480000000, i32 960, i32 13, i8 1, i8 0, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 19200000, i32 480000000, i32 200, i32 4, i8 1, i8 0, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 26000000, i32 480000000, i32 960, i32 26, i8 1, i8 0, i16 0 }, %struct.tegra_clk_pll_freq_table zeroinitializer], align 4
@pll_d_freq_table = internal global [13 x %struct.tegra_clk_pll_freq_table] [%struct.tegra_clk_pll_freq_table { i32 12000000, i32 216000000, i32 216, i32 12, i8 1, i8 4, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 13000000, i32 216000000, i32 216, i32 13, i8 1, i8 4, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 19200000, i32 216000000, i32 135, i32 12, i8 1, i8 3, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 26000000, i32 216000000, i32 216, i32 26, i8 1, i8 4, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 12000000, i32 594000000, i32 594, i32 12, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 13000000, i32 594000000, i32 594, i32 13, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 19200000, i32 594000000, i32 495, i32 16, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 26000000, i32 594000000, i32 594, i32 26, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 12000000, i32 1000000000, i32 1000, i32 12, i8 1, i8 12, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 13000000, i32 1000000000, i32 1000, i32 13, i8 1, i8 12, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 19200000, i32 1000000000, i32 625, i32 12, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 26000000, i32 1000000000, i32 1000, i32 26, i8 1, i8 12, i16 0 }, %struct.tegra_clk_pll_freq_table zeroinitializer], align 4
@pll_a_freq_table = internal global [4 x %struct.tegra_clk_pll_freq_table] [%struct.tegra_clk_pll_freq_table { i32 28800000, i32 56448000, i32 49, i32 25, i8 1, i8 1, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 28800000, i32 73728000, i32 64, i32 25, i8 1, i8 1, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 28800000, i32 24000000, i32 5, i32 6, i8 1, i8 1, i16 0 }, %struct.tegra_clk_pll_freq_table zeroinitializer], align 4
@plle_p = internal constant [2 x %struct.pdiv_map] [%struct.pdiv_map { i8 1, i8 1 }, %struct.pdiv_map zeroinitializer], align 1
@pll_e_freq_table = internal global [2 x %struct.tegra_clk_pll_freq_table] [%struct.tegra_clk_pll_freq_table { i32 12000000, i32 100000000, i32 200, i32 24, i8 1, i8 0, i16 0 }, %struct.tegra_clk_pll_freq_table zeroinitializer], align 4
@.str.23 = private unnamed_addr constant [5 x i8] c"cclk\00", align 1
@cclk_parents = internal global [9 x ptr] [ptr @.str.3, ptr @.str.8, ptr @.str.25, ptr @.str.11, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.14], align 4
@.str.24 = private unnamed_addr constant [4 x i8] c"twd\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"clk_32k\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"pll_p\00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"pll_p_out4\00", align 1
@.str.28 = private unnamed_addr constant [11 x i8] c"pll_p_out3\00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"clk_d\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"ac97\00", align 1
@periph_clk_enb_refcnt = external dso_local local_unnamed_addr global ptr, align 4
@.str.31 = private unnamed_addr constant [3 x i8] c"mc\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"emc\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"dsi\00", align 1
@.str.34 = private unnamed_addr constant [4 x i8] c"pex\00", align 1
@.str.35 = private unnamed_addr constant [13 x i8] c"dev1_osc_div\00", align 1
@.str.36 = private unnamed_addr constant [13 x i8] c"dev2_osc_div\00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"cdev1\00", align 1
@.str.38 = private unnamed_addr constant [10 x i8] c"cdev1_mux\00", align 1
@.str.39 = private unnamed_addr constant [6 x i8] c"cdev2\00", align 1
@.str.40 = private unnamed_addr constant [10 x i8] c"cdev2_mux\00", align 1
@tegra_periph_clk_list = internal global [12 x %struct.tegra_periph_init_data] [%struct.tegra_periph_init_data { ptr @.str.41, i32 11, %union.anon.5 { ptr @i2s1_parents }, i32 4, %struct.tegra_clk_periph { i32 0, %struct.clk_hw zeroinitializer, %struct.clk_mux { %struct.clk_hw zeroinitializer, ptr null, ptr null, i32 3, i8 30, i8 0, ptr null }, %struct.tegra_clk_frac_div { %struct.clk_hw zeroinitializer, ptr null, i8 1, i8 0, i8 8, i8 1, ptr null }, %struct.tegra_clk_periph_gate { i32 0, %struct.clk_hw zeroinitializer, ptr null, i8 4, i32 11, ptr null, ptr null }, ptr @clk_mux_ops, ptr @tegra_clk_frac_div_ops, ptr @tegra_clk_periph_gate_ops }, i32 256, ptr null, ptr null, i32 0 }, %struct.tegra_periph_init_data { ptr @.str.42, i32 18, %union.anon.5 { ptr @i2s2_parents }, i32 4, %struct.tegra_clk_periph { i32 0, %struct.clk_hw zeroinitializer, %struct.clk_mux { %struct.clk_hw zeroinitializer, ptr null, ptr null, i32 3, i8 30, i8 0, ptr null }, %struct.tegra_clk_frac_div { %struct.clk_hw zeroinitializer, ptr null, i8 1, i8 0, i8 8, i8 1, ptr null }, %struct.tegra_clk_periph_gate { i32 0, %struct.clk_hw zeroinitializer, ptr null, i8 4, i32 18, ptr null, ptr null }, ptr @clk_mux_ops, ptr @tegra_clk_frac_div_ops, ptr @tegra_clk_periph_gate_ops }, i32 260, ptr null, ptr null, i32 0 }, %struct.tegra_periph_init_data { ptr @.str.43, i32 43, %union.anon.5 { ptr @mux_pllpcm_clkm }, i32 4, %struct.tegra_clk_periph { i32 0, %struct.clk_hw zeroinitializer, %struct.clk_mux { %struct.clk_hw zeroinitializer, ptr null, ptr null, i32 3, i8 30, i8 0, ptr null }, %struct.tegra_clk_frac_div { %struct.clk_hw zeroinitializer, ptr null, i8 1, i8 0, i8 8, i8 1, ptr null }, %struct.tegra_clk_periph_gate { i32 0, %struct.clk_hw zeroinitializer, ptr null, i8 4, i32 43, ptr null, ptr null }, ptr @clk_mux_ops, ptr @tegra_clk_frac_div_ops, ptr @tegra_clk_periph_gate_ops }, i32 276, ptr null, ptr null, i32 0 }, %struct.tegra_periph_init_data { ptr @.str.44, i32 45, %union.anon.5 { ptr @mux_pllpcm_clkm }, i32 4, %struct.tegra_clk_periph { i32 0, %struct.clk_hw zeroinitializer, %struct.clk_mux { %struct.clk_hw zeroinitializer, ptr null, ptr null, i32 3, i8 30, i8 0, ptr null }, %struct.tegra_clk_frac_div { %struct.clk_hw zeroinitializer, ptr null, i8 1, i8 0, i8 8, i8 1, ptr null }, %struct.tegra_clk_periph_gate { i32 0, %struct.clk_hw zeroinitializer, ptr null, i8 0, i32 45, ptr null, ptr null }, ptr @clk_mux_ops, ptr @tegra_clk_frac_div_ops, ptr @tegra_clk_periph_gate_ops }, i32 288, ptr null, ptr null, i32 0 }, %struct.tegra_periph_init_data { ptr @.str.45, i32 16, %union.anon.5 { ptr @mux_pllpcm_clkm }, i32 4, %struct.tegra_clk_periph { i32 0, %struct.clk_hw zeroinitializer, %struct.clk_mux { %struct.clk_hw zeroinitializer, ptr null, ptr null, i32 3, i8 30, i8 0, ptr null }, %struct.tegra_clk_frac_div { %struct.clk_hw zeroinitializer, ptr null, i8 1, i8 0, i8 8, i8 1, ptr null }, %struct.tegra_clk_periph_gate { i32 0, %struct.clk_hw zeroinitializer, ptr null, i8 4, i32 16, ptr null, ptr null }, ptr @clk_mux_ops, ptr @tegra_clk_frac_div_ops, ptr @tegra_clk_periph_gate_ops }, i32 300, ptr null, ptr null, i32 0 }, %struct.tegra_periph_init_data { ptr @.str.46, i32 25, %union.anon.5 { ptr @mux_pllpcm_clkm }, i32 4, %struct.tegra_clk_periph { i32 0, %struct.clk_hw zeroinitializer, %struct.clk_mux { %struct.clk_hw zeroinitializer, ptr null, ptr null, i32 3, i8 30, i8 0, ptr null }, %struct.tegra_clk_frac_div { %struct.clk_hw zeroinitializer, ptr null, i8 1, i8 0, i8 8, i8 1, ptr null }, %struct.tegra_clk_periph_gate { i32 0, %struct.clk_hw zeroinitializer, ptr null, i8 0, i32 25, ptr null, ptr null }, ptr @clk_mux_ops, ptr @tegra_clk_frac_div_ops, ptr @tegra_clk_periph_gate_ops }, i32 288, ptr null, ptr null, i32 0 }, %struct.tegra_periph_init_data { ptr @.str.47, i32 47, %union.anon.5 { ptr @mux_pllpcm_clkm }, i32 4, %struct.tegra_clk_periph { i32 0, %struct.clk_hw zeroinitializer, %struct.clk_mux { %struct.clk_hw zeroinitializer, ptr null, ptr null, i32 3, i8 30, i8 0, ptr null }, %struct.tegra_clk_frac_div { %struct.clk_hw zeroinitializer, ptr null, i8 1, i8 0, i8 16, i8 0, ptr null }, %struct.tegra_clk_periph_gate { i32 0, %struct.clk_hw zeroinitializer, ptr null, i8 4, i32 47, ptr null, ptr null }, ptr @clk_mux_ops, ptr @tegra_clk_frac_div_ops, ptr @tegra_clk_periph_gate_ops }, i32 296, ptr null, ptr null, i32 0 }, %struct.tegra_periph_init_data { ptr @.str.48, i32 12, %union.anon.5 { ptr @mux_pllpcm_clkm }, i32 4, %struct.tegra_clk_periph { i32 0, %struct.clk_hw zeroinitializer, %struct.clk_mux { %struct.clk_hw zeroinitializer, ptr null, ptr null, i32 3, i8 30, i8 0, ptr null }, %struct.tegra_clk_frac_div { %struct.clk_hw zeroinitializer, ptr null, i8 1, i8 0, i8 16, i8 0, ptr null }, %struct.tegra_clk_periph_gate { i32 0, %struct.clk_hw zeroinitializer, ptr null, i8 4, i32 12, ptr null, ptr null }, ptr @clk_mux_ops, ptr @tegra_clk_frac_div_ops, ptr @tegra_clk_periph_gate_ops }, i32 292, ptr null, ptr null, i32 0 }, %struct.tegra_periph_init_data { ptr @.str.49, i32 54, %union.anon.5 { ptr @mux_pllpcm_clkm }, i32 4, %struct.tegra_clk_periph { i32 0, %struct.clk_hw zeroinitializer, %struct.clk_mux { %struct.clk_hw zeroinitializer, ptr null, ptr null, i32 3, i8 30, i8 0, ptr null }, %struct.tegra_clk_frac_div { %struct.clk_hw zeroinitializer, ptr null, i8 1, i8 0, i8 16, i8 0, ptr null }, %struct.tegra_clk_periph_gate { i32 0, %struct.clk_hw zeroinitializer, ptr null, i8 4, i32 54, ptr null, ptr null }, ptr @clk_mux_ops, ptr @tegra_clk_frac_div_ops, ptr @tegra_clk_periph_gate_ops }, i32 408, ptr null, ptr null, i32 0 }, %struct.tegra_periph_init_data { ptr @.str.50, i32 67, %union.anon.5 { ptr @mux_pllpcm_clkm }, i32 4, %struct.tegra_clk_periph { i32 0, %struct.clk_hw zeroinitializer, %struct.clk_mux { %struct.clk_hw zeroinitializer, ptr null, ptr null, i32 3, i8 30, i8 0, ptr null }, %struct.tegra_clk_frac_div { %struct.clk_hw zeroinitializer, ptr null, i8 1, i8 0, i8 16, i8 0, ptr null }, %struct.tegra_clk_periph_gate { i32 0, %struct.clk_hw zeroinitializer, ptr null, i8 4, i32 67, ptr null, ptr null }, ptr @clk_mux_ops, ptr @tegra_clk_frac_div_ops, ptr @tegra_clk_periph_gate_ops }, i32 440, ptr null, ptr null, i32 0 }, %struct.tegra_periph_init_data { ptr @.str.51, i32 51, %union.anon.5 { ptr @mux_pllpdc_clkm }, i32 4, %struct.tegra_clk_periph { i32 0, %struct.clk_hw zeroinitializer, %struct.clk_mux { %struct.clk_hw zeroinitializer, ptr null, ptr null, i32 3, i8 30, i8 0, ptr null }, %struct.tegra_clk_frac_div { %struct.clk_hw zeroinitializer, ptr null, i8 1, i8 0, i8 8, i8 1, ptr null }, %struct.tegra_clk_periph_gate { i32 0, %struct.clk_hw zeroinitializer, ptr null, i8 0, i32 51, ptr null, ptr null }, ptr @clk_mux_ops, ptr @tegra_clk_frac_div_ops, ptr @tegra_clk_periph_gate_ops }, i32 396, ptr null, ptr null, i32 0 }, %struct.tegra_periph_init_data { ptr @.str.52, i32 17, %union.anon.5 { ptr @pwm_parents }, i32 5, %struct.tegra_clk_periph { i32 0, %struct.clk_hw zeroinitializer, %struct.clk_mux { %struct.clk_hw zeroinitializer, ptr null, ptr null, i32 7, i8 28, i8 0, ptr null }, %struct.tegra_clk_frac_div { %struct.clk_hw zeroinitializer, ptr null, i8 0, i8 0, i8 8, i8 1, ptr null }, %struct.tegra_clk_periph_gate { i32 0, %struct.clk_hw zeroinitializer, ptr null, i8 4, i32 17, ptr null, ptr null }, ptr @clk_mux_ops, ptr @tegra_clk_frac_div_ops, ptr @tegra_clk_periph_gate_ops }, i32 272, ptr null, ptr null, i32 0 }], align 4
@tegra_periph_nodiv_clk_list = internal global [7 x %struct.tegra_periph_init_data] [%struct.tegra_periph_init_data { ptr @.str.55, i32 6, %union.anon.5 { ptr @mux_pllpcm_clkm }, i32 4, %struct.tegra_clk_periph { i32 0, %struct.clk_hw zeroinitializer, %struct.clk_mux { %struct.clk_hw zeroinitializer, ptr null, ptr null, i32 3, i8 30, i8 0, ptr null }, %struct.tegra_clk_frac_div zeroinitializer, %struct.tegra_clk_periph_gate { i32 0, %struct.clk_hw zeroinitializer, ptr null, i8 4, i32 6, ptr null, ptr null }, ptr @clk_mux_ops, ptr @tegra_clk_frac_div_ops, ptr @tegra_clk_periph_gate_ops }, i32 376, ptr null, ptr null, i32 0 }, %struct.tegra_periph_init_data { ptr @.str.56, i32 96, %union.anon.5 { ptr @mux_pllpcm_clkm }, i32 4, %struct.tegra_clk_periph { i32 0, %struct.clk_hw zeroinitializer, %struct.clk_mux { %struct.clk_hw zeroinitializer, ptr null, ptr null, i32 3, i8 30, i8 0, ptr null }, %struct.tegra_clk_frac_div zeroinitializer, %struct.tegra_clk_periph_gate { i32 0, %struct.clk_hw zeroinitializer, ptr null, i8 4, i32 7, ptr null, ptr null }, ptr @clk_mux_ops, ptr @tegra_clk_frac_div_ops, ptr @tegra_clk_periph_gate_ops }, i32 380, ptr null, ptr null, i32 0 }, %struct.tegra_periph_init_data { ptr @.str.57, i32 55, %union.anon.5 { ptr @mux_pllpcm_clkm }, i32 4, %struct.tegra_clk_periph { i32 0, %struct.clk_hw zeroinitializer, %struct.clk_mux { %struct.clk_hw zeroinitializer, ptr null, ptr null, i32 3, i8 30, i8 0, ptr null }, %struct.tegra_clk_frac_div zeroinitializer, %struct.tegra_clk_periph_gate { i32 0, %struct.clk_hw zeroinitializer, ptr null, i8 4, i32 55, ptr null, ptr null }, ptr @clk_mux_ops, ptr @tegra_clk_frac_div_ops, ptr @tegra_clk_periph_gate_ops }, i32 416, ptr null, ptr null, i32 0 }, %struct.tegra_periph_init_data { ptr @.str.58, i32 65, %union.anon.5 { ptr @mux_pllpcm_clkm }, i32 4, %struct.tegra_clk_periph { i32 0, %struct.clk_hw zeroinitializer, %struct.clk_mux { %struct.clk_hw zeroinitializer, ptr null, ptr null, i32 3, i8 30, i8 0, ptr null }, %struct.tegra_clk_frac_div zeroinitializer, %struct.tegra_clk_periph_gate { i32 0, %struct.clk_hw zeroinitializer, ptr null, i8 4, i32 65, ptr null, ptr null }, ptr @clk_mux_ops, ptr @tegra_clk_frac_div_ops, ptr @tegra_clk_periph_gate_ops }, i32 448, ptr null, ptr null, i32 0 }, %struct.tegra_periph_init_data { ptr @.str.59, i32 66, %union.anon.5 { ptr @mux_pllpcm_clkm }, i32 4, %struct.tegra_clk_periph { i32 0, %struct.clk_hw zeroinitializer, %struct.clk_mux { %struct.clk_hw zeroinitializer, ptr null, ptr null, i32 3, i8 30, i8 0, ptr null }, %struct.tegra_clk_frac_div zeroinitializer, %struct.tegra_clk_periph_gate { i32 0, %struct.clk_hw zeroinitializer, ptr null, i8 4, i32 66, ptr null, ptr null }, ptr @clk_mux_ops, ptr @tegra_clk_frac_div_ops, ptr @tegra_clk_periph_gate_ops }, i32 452, ptr null, ptr null, i32 0 }, %struct.tegra_periph_init_data { ptr @.str.60, i32 27, %union.anon.5 { ptr @mux_pllpdc_clkm }, i32 4, %struct.tegra_clk_periph { i32 0, %struct.clk_hw zeroinitializer, %struct.clk_mux { %struct.clk_hw zeroinitializer, ptr null, ptr null, i32 3, i8 30, i8 0, ptr null }, %struct.tegra_clk_frac_div zeroinitializer, %struct.tegra_clk_periph_gate { i32 0, %struct.clk_hw zeroinitializer, ptr null, i8 0, i32 27, ptr null, ptr null }, ptr @clk_mux_ops, ptr @tegra_clk_frac_div_ops, ptr @tegra_clk_periph_gate_ops }, i32 312, ptr null, ptr null, i32 0 }, %struct.tegra_periph_init_data { ptr @.str.61, i32 26, %union.anon.5 { ptr @mux_pllpdc_clkm }, i32 4, %struct.tegra_clk_periph { i32 0, %struct.clk_hw zeroinitializer, %struct.clk_mux { %struct.clk_hw zeroinitializer, ptr null, ptr null, i32 3, i8 30, i8 0, ptr null }, %struct.tegra_clk_frac_div zeroinitializer, %struct.tegra_clk_periph_gate { i32 0, %struct.clk_hw zeroinitializer, ptr null, i8 0, i32 26, ptr null, ptr null }, ptr @clk_mux_ops, ptr @tegra_clk_frac_div_ops, ptr @tegra_clk_periph_gate_ops }, i32 316, ptr null, ptr null, i32 0 }], align 4
@pll_p_params = internal global %struct.tegra_clk_pll_params { i32 2000000, i32 31000000, i32 1000000, i32 6000000, i32 20000000, i32 1400000000, i32 160, i32 172, i32 0, i32 134217728, i32 18, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, [6 x i32] zeroinitializer, i32 0, i32 0, i32 1090, i32 0, i32 0, i32 300, i32 0, i8 0, ptr null, ptr null, ptr @pll_p_freq_table, i32 216000000, i16 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.41 = private unnamed_addr constant [5 x i8] c"i2s1\00", align 1
@i2s1_parents = internal global [4 x ptr] [ptr @.str.21, ptr @.str.53, ptr @.str.26, ptr @.str.3], align 4
@clk_mux_ops = external dso_local constant %struct.clk_ops, align 4
@tegra_clk_frac_div_ops = external dso_local constant %struct.clk_ops, align 4
@tegra_clk_periph_gate_ops = external dso_local constant %struct.clk_ops, align 4
@.str.42 = private unnamed_addr constant [5 x i8] c"i2s2\00", align 1
@i2s2_parents = internal global [4 x ptr] [ptr @.str.21, ptr @.str.53, ptr @.str.26, ptr @.str.3], align 4
@.str.43 = private unnamed_addr constant [4 x i8] c"spi\00", align 1
@mux_pllpcm_clkm = internal global [4 x ptr] [ptr @.str.26, ptr @.str.8, ptr @.str.11, ptr @.str.3], align 4
@.str.44 = private unnamed_addr constant [4 x i8] c"xio\00", align 1
@.str.45 = private unnamed_addr constant [4 x i8] c"twc\00", align 1
@.str.46 = private unnamed_addr constant [4 x i8] c"ide\00", align 1
@.str.47 = private unnamed_addr constant [4 x i8] c"dvc\00", align 1
@.str.48 = private unnamed_addr constant [5 x i8] c"i2c1\00", align 1
@.str.49 = private unnamed_addr constant [5 x i8] c"i2c2\00", align 1
@.str.50 = private unnamed_addr constant [5 x i8] c"i2c3\00", align 1
@.str.51 = private unnamed_addr constant [5 x i8] c"hdmi\00", align 1
@mux_pllpdc_clkm = internal global [4 x ptr] [ptr @.str.26, ptr @.str.17, ptr @.str.8, ptr @.str.3], align 4
@.str.52 = private unnamed_addr constant [4 x i8] c"pwm\00", align 1
@pwm_parents = internal global [5 x ptr] [ptr @.str.26, ptr @.str.8, ptr @.str.54, ptr @.str.3, ptr @.str.25], align 4
@.str.53 = private unnamed_addr constant [9 x i8] c"audio_2x\00", align 1
@.str.54 = private unnamed_addr constant [6 x i8] c"audio\00", align 1
@.str.55 = private unnamed_addr constant [6 x i8] c"uarta\00", align 1
@.str.56 = private unnamed_addr constant [6 x i8] c"uartb\00", align 1
@.str.57 = private unnamed_addr constant [6 x i8] c"uartc\00", align 1
@.str.58 = private unnamed_addr constant [6 x i8] c"uartd\00", align 1
@.str.59 = private unnamed_addr constant [6 x i8] c"uarte\00", align 1
@.str.60 = private unnamed_addr constant [6 x i8] c"disp1\00", align 1
@.str.61 = private unnamed_addr constant [6 x i8] c"disp2\00", align 1
@pll_p_freq_table = internal global [9 x %struct.tegra_clk_pll_freq_table] [%struct.tegra_clk_pll_freq_table { i32 12000000, i32 216000000, i32 432, i32 12, i8 2, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 13000000, i32 216000000, i32 432, i32 13, i8 2, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 19200000, i32 216000000, i32 90, i32 4, i8 2, i8 1, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 26000000, i32 216000000, i32 432, i32 26, i8 2, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 12000000, i32 432000000, i32 432, i32 12, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 13000000, i32 432000000, i32 432, i32 13, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 19200000, i32 432000000, i32 90, i32 4, i8 1, i8 1, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 26000000, i32 432000000, i32 432, i32 26, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table zeroinitializer], align 4
@.str.62 = private unnamed_addr constant [10 x i8] c"audio_mux\00", align 1
@audio_parents = internal global [8 x ptr] [ptr @.str.64, ptr @.str.41, ptr @.str.42, ptr @.str.65, ptr @.str.21, ptr @.str.65, ptr @.str.65, ptr @.str.65], align 4
@.str.63 = private unnamed_addr constant [14 x i8] c"audio_doubler\00", align 1
@.str.64 = private unnamed_addr constant [9 x i8] c"spdif_in\00", align 1
@.str.65 = private unnamed_addr constant [7 x i8] c"unused\00", align 1
@.str.66 = private unnamed_addr constant [10 x i8] c"utmip-pad\00", align 1
@.str.67 = private unnamed_addr constant [13 x i8] c"tegra-ehci.0\00", align 1
@.str.68 = private unnamed_addr constant [10 x i8] c"tegra-otg\00", align 1
@.str.69 = private unnamed_addr constant [4 x i8] c"cpu\00", align 1
@tegra20_car_initialized = internal unnamed_addr global i1 false, align 1
@tegra20_cpu_clk_sctx.0 = internal unnamed_addr global i32 0, align 4
@tegra20_cpu_clk_sctx.1 = internal unnamed_addr global i32 0, align 4
@tegra20_cpu_clk_sctx.2 = internal unnamed_addr global i32 0, align 4
@tegra20_cpu_clk_sctx.3 = internal unnamed_addr global i32 0, align 4
@tegra20_cpu_clk_sctx.4 = internal unnamed_addr global i32 0, align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@tegra20_car_driver = internal global %struct.platform_driver { ptr @tegra20_car_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.70, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @tegra20_car_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str.70 = private unnamed_addr constant [12 x i8] c"tegra20-car\00", align 1
@tegra20_car_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra20-car\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@.str.71 = private unnamed_addr constant [5 x i8] c"sclk\00", align 1
@sclk_parents = internal global [8 x ptr] [ptr @.str.3, ptr @.str.10, ptr @.str.27, ptr @.str.28, ptr @.str.72, ptr @.str.29, ptr @.str.25, ptr @.str.13], align 4
@devclks = internal global [94 x %struct.tegra_devclk] [%struct.tegra_devclk { i32 114, ptr null, ptr @.str.8 }, %struct.tegra_devclk { i32 115, ptr null, ptr @.str.10 }, %struct.tegra_devclk { i32 121, ptr null, ptr @.str.26 }, %struct.tegra_devclk { i32 122, ptr null, ptr @.str.19 }, %struct.tegra_devclk { i32 123, ptr null, ptr @.str.72 }, %struct.tegra_devclk { i32 124, ptr null, ptr @.str.28 }, %struct.tegra_devclk { i32 125, ptr null, ptr @.str.27 }, %struct.tegra_devclk { i32 119, ptr null, ptr @.str.11 }, %struct.tegra_devclk { i32 120, ptr null, ptr @.str.13 }, %struct.tegra_devclk { i32 128, ptr null, ptr @.str.14 }, %struct.tegra_devclk { i32 127, ptr null, ptr @.str.15 }, %struct.tegra_devclk { i32 116, ptr null, ptr @.str.16 }, %struct.tegra_devclk { i32 117, ptr null, ptr @.str.17 }, %struct.tegra_devclk { i32 112, ptr null, ptr @.str.18 }, %struct.tegra_devclk { i32 113, ptr null, ptr @.str.21 }, %struct.tegra_devclk { i32 118, ptr null, ptr @.str.22 }, %struct.tegra_devclk { i32 108, ptr null, ptr @.str.23 }, %struct.tegra_devclk { i32 107, ptr null, ptr @.str.71 }, %struct.tegra_devclk { i32 109, ptr null, ptr @.str.73 }, %struct.tegra_devclk { i32 110, ptr null, ptr @.str.74 }, %struct.tegra_devclk { i32 39, ptr null, ptr @.str.75 }, %struct.tegra_devclk { i32 132, ptr null, ptr @.str.24 }, %struct.tegra_devclk { i32 130, ptr null, ptr @.str.54 }, %struct.tegra_devclk { i32 89, ptr null, ptr @.str.53 }, %struct.tegra_devclk { i32 3, ptr @.str.76, ptr null }, %struct.tegra_devclk { i32 34, ptr @.str.77, ptr null }, %struct.tegra_devclk { i32 4, ptr @.str.78, ptr null }, %struct.tegra_devclk { i32 5, ptr @.str.79, ptr null }, %struct.tegra_devclk { i32 36, ptr @.str.80, ptr null }, %struct.tegra_devclk { i32 92, ptr @.str.81, ptr @.str.82 }, %struct.tegra_devclk { i32 29, ptr @.str.83, ptr @.str.84 }, %struct.tegra_devclk { i32 62, ptr @.str.83, ptr @.str.85 }, %struct.tegra_devclk { i32 63, ptr @.str.86, ptr @.str.87 }, %struct.tegra_devclk { i32 57, ptr null, ptr @.str.32 }, %struct.tegra_devclk { i32 22, ptr @.str.88, ptr null }, %struct.tegra_devclk { i32 58, ptr @.str.89, ptr null }, %struct.tegra_devclk { i32 59, ptr @.str.90, ptr null }, %struct.tegra_devclk { i32 48, ptr @.str.33, ptr null }, %struct.tegra_devclk { i32 52, ptr @.str.81, ptr @.str.91 }, %struct.tegra_devclk { i32 23, ptr @.str.81, ptr @.str.92 }, %struct.tegra_devclk { i32 70, ptr null, ptr @.str.34 }, %struct.tegra_devclk { i32 72, ptr null, ptr @.str.93 }, %struct.tegra_devclk { i32 94, ptr null, ptr @.str.37 }, %struct.tegra_devclk { i32 93, ptr null, ptr @.str.39 }, %struct.tegra_devclk { i32 105, ptr null, ptr @.str.25 }, %struct.tegra_devclk { i32 106, ptr null, ptr @.str.3 }, %struct.tegra_devclk { i32 131, ptr null, ptr @.str.4 }, %struct.tegra_devclk { i32 11, ptr @.str.94, ptr null }, %struct.tegra_devclk { i32 18, ptr @.str.95, ptr null }, %struct.tegra_devclk { i32 99, ptr @.str.96, ptr @.str.97 }, %struct.tegra_devclk { i32 98, ptr @.str.96, ptr @.str.64 }, %struct.tegra_devclk { i32 41, ptr @.str.98, ptr null }, %struct.tegra_devclk { i32 44, ptr @.str.99, ptr null }, %struct.tegra_devclk { i32 46, ptr @.str.100, ptr null }, %struct.tegra_devclk { i32 68, ptr @.str.101, ptr null }, %struct.tegra_devclk { i32 43, ptr @.str.43, ptr null }, %struct.tegra_devclk { i32 45, ptr @.str.44, ptr null }, %struct.tegra_devclk { i32 16, ptr @.str.45, ptr null }, %struct.tegra_devclk { i32 25, ptr @.str.46, ptr null }, %struct.tegra_devclk { i32 13, ptr @.str.102, ptr null }, %struct.tegra_devclk { i32 97, ptr @.str.103, ptr null }, %struct.tegra_devclk { i32 73, ptr @.str.104, ptr null }, %struct.tegra_devclk { i32 76, ptr @.str.105, ptr null }, %struct.tegra_devclk { i32 71, ptr @.str.106, ptr null }, %struct.tegra_devclk { i32 50, ptr @.str.107, ptr null }, %struct.tegra_devclk { i32 61, ptr @.str.108, ptr null }, %struct.tegra_devclk { i32 100, ptr @.str.81, ptr @.str.109 }, %struct.tegra_devclk { i32 19, ptr @.str.110, ptr null }, %struct.tegra_devclk { i32 60, ptr @.str.111, ptr null }, %struct.tegra_devclk { i32 28, ptr @.str.112, ptr null }, %struct.tegra_devclk { i32 24, ptr @.str.113, ptr null }, %struct.tegra_devclk { i32 21, ptr @.str.114, ptr null }, %struct.tegra_devclk { i32 42, ptr @.str.115, ptr null }, %struct.tegra_devclk { i32 14, ptr @.str.116, ptr null }, %struct.tegra_devclk { i32 9, ptr @.str.117, ptr null }, %struct.tegra_devclk { i32 69, ptr @.str.118, ptr null }, %struct.tegra_devclk { i32 15, ptr @.str.119, ptr null }, %struct.tegra_devclk { i32 103, ptr @.str.120, ptr null }, %struct.tegra_devclk { i32 102, ptr @.str.121, ptr null }, %struct.tegra_devclk { i32 53, ptr @.str.122, ptr null }, %struct.tegra_devclk { i32 101, ptr @.str.81, ptr @.str.123 }, %struct.tegra_devclk { i32 51, ptr @.str.51, ptr null }, %struct.tegra_devclk { i32 12, ptr @.str.124, ptr @.str.125 }, %struct.tegra_devclk { i32 54, ptr @.str.126, ptr @.str.125 }, %struct.tegra_devclk { i32 67, ptr @.str.127, ptr @.str.125 }, %struct.tegra_devclk { i32 47, ptr @.str.128, ptr @.str.125 }, %struct.tegra_devclk { i32 17, ptr @.str.129, ptr null }, %struct.tegra_devclk { i32 6, ptr @.str.130, ptr null }, %struct.tegra_devclk { i32 96, ptr @.str.131, ptr null }, %struct.tegra_devclk { i32 55, ptr @.str.132, ptr null }, %struct.tegra_devclk { i32 65, ptr @.str.133, ptr null }, %struct.tegra_devclk { i32 66, ptr @.str.134, ptr null }, %struct.tegra_devclk { i32 27, ptr @.str.135, ptr null }, %struct.tegra_devclk { i32 26, ptr @.str.136, ptr null }], align 4
@init_table = internal global [34 x %struct.tegra_clk_init_table] [%struct.tegra_clk_init_table { i32 121, i32 133, i32 216000000, i32 1 }, %struct.tegra_clk_init_table { i32 122, i32 133, i32 28800000, i32 1 }, %struct.tegra_clk_init_table { i32 123, i32 133, i32 48000000, i32 1 }, %struct.tegra_clk_init_table { i32 124, i32 133, i32 72000000, i32 1 }, %struct.tegra_clk_init_table { i32 125, i32 133, i32 24000000, i32 1 }, %struct.tegra_clk_init_table { i32 114, i32 133, i32 600000000, i32 0 }, %struct.tegra_clk_init_table { i32 115, i32 133, i32 120000000, i32 0 }, %struct.tegra_clk_init_table { i32 107, i32 115, i32 120000000, i32 0 }, %struct.tegra_clk_init_table { i32 109, i32 133, i32 120000000, i32 0 }, %struct.tegra_clk_init_table { i32 110, i32 133, i32 60000000, i32 0 }, %struct.tegra_clk_init_table { i32 73, i32 133, i32 0, i32 1 }, %struct.tegra_clk_init_table { i32 108, i32 133, i32 0, i32 1 }, %struct.tegra_clk_init_table { i32 6, i32 121, i32 0, i32 0 }, %struct.tegra_clk_init_table { i32 96, i32 121, i32 0, i32 0 }, %struct.tegra_clk_init_table { i32 55, i32 121, i32 0, i32 0 }, %struct.tegra_clk_init_table { i32 65, i32 121, i32 0, i32 0 }, %struct.tegra_clk_init_table { i32 66, i32 121, i32 0, i32 0 }, %struct.tegra_clk_init_table { i32 112, i32 133, i32 56448000, i32 0 }, %struct.tegra_clk_init_table { i32 113, i32 133, i32 11289600, i32 0 }, %struct.tegra_clk_init_table { i32 11, i32 113, i32 11289600, i32 0 }, %struct.tegra_clk_init_table { i32 18, i32 113, i32 11289600, i32 0 }, %struct.tegra_clk_init_table { i32 14, i32 121, i32 48000000, i32 0 }, %struct.tegra_clk_init_table { i32 69, i32 121, i32 48000000, i32 0 }, %struct.tegra_clk_init_table { i32 15, i32 121, i32 48000000, i32 0 }, %struct.tegra_clk_init_table { i32 43, i32 121, i32 20000000, i32 0 }, %struct.tegra_clk_init_table { i32 41, i32 121, i32 100000000, i32 0 }, %struct.tegra_clk_init_table { i32 44, i32 121, i32 100000000, i32 0 }, %struct.tegra_clk_init_table { i32 46, i32 121, i32 100000000, i32 0 }, %struct.tegra_clk_init_table { i32 68, i32 121, i32 100000000, i32 0 }, %struct.tegra_clk_init_table { i32 28, i32 114, i32 150000000, i32 0 }, %struct.tegra_clk_init_table { i32 21, i32 114, i32 300000000, i32 0 }, %struct.tegra_clk_init_table { i32 24, i32 114, i32 300000000, i32 0 }, %struct.tegra_clk_init_table { i32 61, i32 114, i32 300000000, i32 0 }, %struct.tegra_clk_init_table { i32 133, i32 133, i32 0, i32 0 }], align 4
@.str.72 = private unnamed_addr constant [11 x i8] c"pll_p_out2\00", align 1
@.str.73 = private unnamed_addr constant [5 x i8] c"hclk\00", align 1
@.str.74 = private unnamed_addr constant [5 x i8] c"pclk\00", align 1
@.str.75 = private unnamed_addr constant [5 x i8] c"fuse\00", align 1
@.str.76 = private unnamed_addr constant [13 x i8] c"tegra20-ac97\00", align 1
@.str.77 = private unnamed_addr constant [13 x i8] c"tegra-apbdma\00", align 1
@.str.78 = private unnamed_addr constant [10 x i8] c"rtc-tegra\00", align 1
@.str.79 = private unnamed_addr constant [6 x i8] c"timer\00", align 1
@.str.80 = private unnamed_addr constant [10 x i8] c"tegra-kbc\00", align 1
@.str.81 = private unnamed_addr constant [13 x i8] c"tegra_camera\00", align 1
@.str.82 = private unnamed_addr constant [5 x i8] c"csus\00", align 1
@.str.83 = private unnamed_addr constant [10 x i8] c"tegra-avp\00", align 1
@.str.84 = private unnamed_addr constant [4 x i8] c"vcp\00", align 1
@.str.85 = private unnamed_addr constant [5 x i8] c"bsea\00", align 1
@.str.86 = private unnamed_addr constant [10 x i8] c"tegra-aes\00", align 1
@.str.87 = private unnamed_addr constant [5 x i8] c"bsev\00", align 1
@.str.88 = private unnamed_addr constant [14 x i8] c"fsl-tegra-udc\00", align 1
@.str.89 = private unnamed_addr constant [13 x i8] c"tegra-ehci.1\00", align 1
@.str.90 = private unnamed_addr constant [13 x i8] c"tegra-ehci.2\00", align 1
@.str.91 = private unnamed_addr constant [4 x i8] c"csi\00", align 1
@.str.92 = private unnamed_addr constant [4 x i8] c"isp\00", align 1
@.str.93 = private unnamed_addr constant [4 x i8] c"afi\00", align 1
@.str.94 = private unnamed_addr constant [14 x i8] c"tegra20-i2s.0\00", align 1
@.str.95 = private unnamed_addr constant [14 x i8] c"tegra20-i2s.1\00", align 1
@.str.96 = private unnamed_addr constant [14 x i8] c"tegra20-spdif\00", align 1
@.str.97 = private unnamed_addr constant [10 x i8] c"spdif_out\00", align 1
@.str.98 = private unnamed_addr constant [12 x i8] c"spi_tegra.0\00", align 1
@.str.99 = private unnamed_addr constant [12 x i8] c"spi_tegra.1\00", align 1
@.str.100 = private unnamed_addr constant [12 x i8] c"spi_tegra.2\00", align 1
@.str.101 = private unnamed_addr constant [12 x i8] c"spi_tegra.3\00", align 1
@.str.102 = private unnamed_addr constant [11 x i8] c"tegra_nand\00", align 1
@.str.103 = private unnamed_addr constant [5 x i8] c"vfir\00", align 1
@.str.104 = private unnamed_addr constant [6 x i8] c"csite\00", align 1
@.str.105 = private unnamed_addr constant [3 x i8] c"la\00", align 1
@.str.106 = private unnamed_addr constant [9 x i8] c"tegra_w1\00", align 1
@.str.107 = private unnamed_addr constant [5 x i8] c"mipi\00", align 1
@.str.108 = private unnamed_addr constant [4 x i8] c"vde\00", align 1
@.str.109 = private unnamed_addr constant [3 x i8] c"vi\00", align 1
@.str.110 = private unnamed_addr constant [4 x i8] c"epp\00", align 1
@.str.111 = private unnamed_addr constant [4 x i8] c"mpe\00", align 1
@.str.112 = private unnamed_addr constant [7 x i8] c"host1x\00", align 1
@.str.113 = private unnamed_addr constant [3 x i8] c"3d\00", align 1
@.str.114 = private unnamed_addr constant [3 x i8] c"2d\00", align 1
@.str.115 = private unnamed_addr constant [10 x i8] c"tegra-nor\00", align 1
@.str.116 = private unnamed_addr constant [14 x i8] c"sdhci-tegra.0\00", align 1
@.str.117 = private unnamed_addr constant [14 x i8] c"sdhci-tegra.1\00", align 1
@.str.118 = private unnamed_addr constant [14 x i8] c"sdhci-tegra.2\00", align 1
@.str.119 = private unnamed_addr constant [14 x i8] c"sdhci-tegra.3\00", align 1
@.str.120 = private unnamed_addr constant [4 x i8] c"cve\00", align 1
@.str.121 = private unnamed_addr constant [4 x i8] c"tvo\00", align 1
@.str.122 = private unnamed_addr constant [6 x i8] c"tvdac\00", align 1
@.str.123 = private unnamed_addr constant [10 x i8] c"vi_sensor\00", align 1
@.str.124 = private unnamed_addr constant [12 x i8] c"tegra-i2c.0\00", align 1
@.str.125 = private unnamed_addr constant [8 x i8] c"div-clk\00", align 1
@.str.126 = private unnamed_addr constant [12 x i8] c"tegra-i2c.1\00", align 1
@.str.127 = private unnamed_addr constant [12 x i8] c"tegra-i2c.2\00", align 1
@.str.128 = private unnamed_addr constant [12 x i8] c"tegra-i2c.3\00", align 1
@.str.129 = private unnamed_addr constant [10 x i8] c"tegra-pwm\00", align 1
@.str.130 = private unnamed_addr constant [13 x i8] c"tegra_uart.0\00", align 1
@.str.131 = private unnamed_addr constant [13 x i8] c"tegra_uart.1\00", align 1
@.str.132 = private unnamed_addr constant [13 x i8] c"tegra_uart.2\00", align 1
@.str.133 = private unnamed_addr constant [13 x i8] c"tegra_uart.3\00", align 1
@.str.134 = private unnamed_addr constant [13 x i8] c"tegra_uart.4\00", align 1
@.str.135 = private unnamed_addr constant [10 x i8] c"tegradc.0\00", align 1
@.str.136 = private unnamed_addr constant [10 x i8] c"tegradc.1\00", align 1
@llvm.compiler.used = appending global [2 x ptr] [ptr @__initcall__kmod_clk_tegra20__166_1199_tegra20_car_driver_init6, ptr @__of_table_tegra20], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @tegra20_of_clk_init_driver(ptr noundef %0) #0 section ".init.text" {
  %2 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 10
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %2) #4
  tail call fastcc void @tegra20_clock_init(ptr noundef %0) #5
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @tegra20_car_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @tegra20_car_driver, ptr noundef null) #4
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @tegra20_clock_init(ptr noundef %0) unnamed_addr #0 section ".init.text" {
  %2 = tail call ptr @of_iomap(ptr noundef %0, i32 noundef 0) #4
  store ptr %2, ptr @clk_base, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #6
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/clk/tegra/clk-tegra20.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1124, 0\0A.popsection", ""() #4, !srcloc !8
  unreachable

6:                                                ; preds = %1
  %7 = tail call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull @pmc_match, ptr noundef null) #4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #6
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/clk/tegra/clk-tegra20.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1130, 0\0A.popsection", ""() #4, !srcloc !9
  unreachable

11:                                               ; preds = %6
  %12 = tail call ptr @of_iomap(ptr noundef nonnull %7, i32 noundef 0) #4
  store ptr %12, ptr @pmc_base, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #6
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/clk/tegra/clk-tegra20.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1136, 0\0A.popsection", ""() #4, !srcloc !10
  unreachable

16:                                               ; preds = %11
  %17 = load ptr, ptr @clk_base, align 4
  %18 = tail call ptr @tegra_clk_init(ptr noundef %17, i32 noundef 133, i32 noundef 3) #4
  store ptr %18, ptr @clks, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %88, label %20

20:                                               ; preds = %16
  tail call fastcc void @tegra20_osc_clk_init() #5
  tail call void @tegra_fixed_clk_init(ptr noundef nonnull @tegra20_clks) #4
  %21 = load ptr, ptr @clk_base, align 4
  %22 = tail call ptr @tegra_clk_register_pll(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.4, ptr noundef %21, ptr noundef null, i32 noundef 0, ptr noundef nonnull @pll_c_params, ptr noundef null) #4
  %23 = load ptr, ptr @clks, align 4
  %24 = getelementptr ptr, ptr %23, i32 114
  store ptr %22, ptr %24, align 4
  %25 = load ptr, ptr @clk_base, align 4
  %26 = getelementptr i8, ptr %25, i32 132
  %27 = tail call ptr @tegra_clk_register_divider(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.8, ptr noundef %26, i32 noundef 0, i8 noundef zeroext 1, i8 noundef zeroext 8, i8 noundef zeroext 8, i8 noundef zeroext 1, ptr noundef null) #4
  %28 = load ptr, ptr @clk_base, align 4
  %29 = getelementptr i8, ptr %28, i32 132
  %30 = tail call ptr @tegra_clk_register_pll_out(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.9, ptr noundef %29, i8 noundef zeroext 1, i8 noundef zeroext 0, i32 noundef 4, i8 noundef zeroext 0, ptr noundef null) #4
  %31 = load ptr, ptr @clks, align 4
  %32 = getelementptr ptr, ptr %31, i32 115
  store ptr %30, ptr %32, align 4
  %33 = load ptr, ptr @clk_base, align 4
  %34 = tail call ptr @tegra_clk_register_pll(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.4, ptr noundef %33, ptr noundef null, i32 noundef 1, ptr noundef nonnull @pll_m_params, ptr noundef null) #4
  %35 = load ptr, ptr @clks, align 4
  %36 = getelementptr ptr, ptr %35, i32 119
  store ptr %34, ptr %36, align 4
  %37 = load ptr, ptr @clk_base, align 4
  %38 = getelementptr i8, ptr %37, i32 148
  %39 = tail call ptr @tegra_clk_register_divider(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.11, ptr noundef %38, i32 noundef 0, i8 noundef zeroext 1, i8 noundef zeroext 8, i8 noundef zeroext 8, i8 noundef zeroext 1, ptr noundef null) #4
  %40 = load ptr, ptr @clk_base, align 4
  %41 = getelementptr i8, ptr %40, i32 148
  %42 = tail call ptr @tegra_clk_register_pll_out(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.12, ptr noundef %41, i8 noundef zeroext 1, i8 noundef zeroext 0, i32 noundef 4, i8 noundef zeroext 0, ptr noundef null) #4
  %43 = load ptr, ptr @clks, align 4
  %44 = getelementptr ptr, ptr %43, i32 120
  store ptr %42, ptr %44, align 4
  %45 = load ptr, ptr @clk_base, align 4
  %46 = tail call ptr @tegra_clk_register_pll(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.4, ptr noundef %45, ptr noundef null, i32 noundef 0, ptr noundef nonnull @pll_x_params, ptr noundef null) #4
  %47 = load ptr, ptr @clks, align 4
  %48 = getelementptr ptr, ptr %47, i32 128
  store ptr %46, ptr %48, align 4
  %49 = load ptr, ptr @clk_base, align 4
  %50 = tail call ptr @tegra_clk_register_pll(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.4, ptr noundef %49, ptr noundef null, i32 noundef 0, ptr noundef nonnull @pll_u_params, ptr noundef null) #4
  %51 = load ptr, ptr @clks, align 4
  %52 = getelementptr ptr, ptr %51, i32 127
  store ptr %50, ptr %52, align 4
  %53 = load ptr, ptr @clk_base, align 4
  %54 = tail call ptr @tegra_clk_register_pll(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.4, ptr noundef %53, ptr noundef null, i32 noundef 0, ptr noundef nonnull @pll_d_params, ptr noundef null) #4
  %55 = load ptr, ptr @clks, align 4
  %56 = getelementptr ptr, ptr %55, i32 116
  store ptr %54, ptr %56, align 4
  %57 = tail call ptr @clk_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.16, i32 noundef 4, i32 noundef 1, i32 noundef 2) #4
  %58 = load ptr, ptr @clks, align 4
  %59 = getelementptr ptr, ptr %58, i32 117
  store ptr %57, ptr %59, align 4
  %60 = load ptr, ptr @clk_base, align 4
  %61 = tail call ptr @tegra_clk_register_pll(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19, ptr noundef %60, ptr noundef null, i32 noundef 0, ptr noundef nonnull @pll_a_params, ptr noundef null) #4
  %62 = load ptr, ptr @clks, align 4
  %63 = getelementptr ptr, ptr %62, i32 112
  store ptr %61, ptr %63, align 4
  %64 = load ptr, ptr @clk_base, align 4
  %65 = getelementptr i8, ptr %64, i32 180
  %66 = tail call ptr @tegra_clk_register_divider(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.18, ptr noundef %65, i32 noundef 0, i8 noundef zeroext 1, i8 noundef zeroext 8, i8 noundef zeroext 8, i8 noundef zeroext 1, ptr noundef null) #4
  %67 = load ptr, ptr @clk_base, align 4
  %68 = getelementptr i8, ptr %67, i32 180
  %69 = tail call ptr @tegra_clk_register_pll_out(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.20, ptr noundef %68, i8 noundef zeroext 1, i8 noundef zeroext 0, i32 noundef 12, i8 noundef zeroext 0, ptr noundef null) #4
  %70 = load ptr, ptr @clks, align 4
  %71 = getelementptr ptr, ptr %70, i32 113
  store ptr %69, ptr %71, align 4
  %72 = load ptr, ptr @clk_base, align 4
  %73 = load ptr, ptr @pmc_base, align 4
  %74 = tail call ptr @tegra_clk_register_plle(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.4, ptr noundef %72, ptr noundef %73, i32 noundef 0, ptr noundef nonnull @pll_e_params, ptr noundef null) #4
  %75 = load ptr, ptr @clks, align 4
  %76 = getelementptr ptr, ptr %75, i32 118
  store ptr %74, ptr %76, align 4
  %77 = load ptr, ptr @clk_base, align 4
  %78 = getelementptr i8, ptr %77, i32 32
  %79 = tail call ptr @tegra_clk_register_super_cclk(ptr noundef nonnull @.str.23, ptr noundef nonnull @cclk_parents, i8 noundef zeroext 9, i32 noundef 4, ptr noundef %78, i8 noundef zeroext 4, ptr noundef null) #4
  %80 = load ptr, ptr @clks, align 4
  %81 = getelementptr ptr, ptr %80, i32 108
  store ptr %79, ptr %81, align 4
  %82 = tail call ptr @clk_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.23, i32 noundef 0, i32 noundef 1, i32 noundef 4) #4
  %83 = load ptr, ptr @clks, align 4
  %84 = getelementptr ptr, ptr %83, i32 132
  store ptr %82, ptr %84, align 4
  %85 = load ptr, ptr @clk_base, align 4
  %86 = load ptr, ptr @pmc_base, align 4
  tail call void @tegra_super_clk_gen4_init(ptr noundef %85, ptr noundef %86, ptr noundef nonnull @tegra20_clks, ptr noundef null) #4
  tail call fastcc void @tegra20_periph_clk_init() #5
  tail call fastcc void @tegra20_audio_clk_init() #5
  %87 = load ptr, ptr @clks, align 4
  tail call void @tegra_init_dup_clks(ptr noundef nonnull @tegra_clk_duplicates, ptr noundef %87, i32 noundef 133) #4
  tail call void @tegra_add_of_provider(ptr noundef %0, ptr noundef nonnull @tegra20_clk_src_onecell_get) #4
  store ptr @tegra20_cpu_car_ops, ptr @tegra_cpu_car_ops, align 4
  br label %88

88:                                               ; preds = %20, %16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tegra_clk_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @tegra20_osc_clk_init() unnamed_addr #0 section ".init.text" {
  %1 = load ptr, ptr @clk_base, align 4
  %2 = getelementptr i8, ptr %1, i32 80
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #4, !srcloc !11
  %4 = and i32 %3, 805306368
  %5 = lshr i32 %3, 30
  %6 = xor i32 %5, 2
  switch i32 %6, label %19 [
    i32 0, label %7
    i32 2, label %10
    i32 3, label %13
    i32 1, label %16
  ]

7:                                                ; preds = %0
  %8 = icmp eq i32 %4, 0
  br i1 %8, label %20, label %9, !prof !12

9:                                                ; preds = %7
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/clk/tegra/clk-tegra20.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 582, 0\0A.popsection", ""() #4, !srcloc !13
  unreachable

10:                                               ; preds = %0
  %11 = icmp eq i32 %4, 0
  br i1 %11, label %20, label %12, !prof !12

12:                                               ; preds = %10
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/clk/tegra/clk-tegra20.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 586, 0\0A.popsection", ""() #4, !srcloc !14
  unreachable

13:                                               ; preds = %0
  %14 = icmp eq i32 %4, 0
  br i1 %14, label %20, label %15, !prof !12

15:                                               ; preds = %13
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/clk/tegra/clk-tegra20.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 590, 0\0A.popsection", ""() #4, !srcloc !15
  unreachable

16:                                               ; preds = %0
  %17 = icmp eq i32 %4, 0
  br i1 %17, label %20, label %18, !prof !12

18:                                               ; preds = %16
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/clk/tegra/clk-tegra20.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 594, 0\0A.popsection", ""() #4, !srcloc !16
  unreachable

19:                                               ; preds = %0
  unreachable

20:                                               ; preds = %16, %13, %10, %7
  %21 = phi i32 [ 12000000, %7 ], [ 13000000, %10 ], [ 19200000, %13 ], [ 26000000, %16 ]
  %22 = tail call ptr @clk_register_fixed_rate(ptr noundef null, ptr noundef nonnull @.str.3, ptr noundef null, i32 noundef 8, i32 noundef %21) #4
  %23 = load ptr, ptr @clks, align 4
  %24 = getelementptr ptr, ptr %23, i32 106
  store ptr %22, ptr %24, align 4
  %25 = load ptr, ptr @clk_base, align 4
  %26 = getelementptr i8, ptr %25, i32 80
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #4, !srcloc !11
  %28 = and i32 %27, 805306368
  switch i32 %28, label %31 [
    i32 0, label %33
    i32 268435456, label %29
    i32 536870912, label %30
  ]

29:                                               ; preds = %20
  br label %33

30:                                               ; preds = %20
  br label %33

31:                                               ; preds = %20
  %32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %28) #6
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/clk/tegra/clk-tegra20.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 621, 0\0A.popsection", ""() #4, !srcloc !17
  unreachable

33:                                               ; preds = %30, %29, %20
  %34 = phi i32 [ 4, %30 ], [ 2, %29 ], [ 1, %20 ]
  %35 = tail call ptr @clk_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.3, i32 noundef 4, i32 noundef 1, i32 noundef %34) #4
  %36 = load ptr, ptr @clks, align 4
  %37 = getelementptr ptr, ptr %36, i32 131
  store ptr %35, ptr %37, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra_fixed_clk_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra_super_clk_gen4_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @tegra20_periph_clk_init() unnamed_addr #0 section ".init.text" {
  %1 = load ptr, ptr @clk_base, align 4
  %2 = load ptr, ptr @periph_clk_enb_refcnt, align 4
  %3 = tail call ptr @tegra_clk_register_periph_gate(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.21, i8 noundef zeroext 4, ptr noundef %1, i32 noundef 0, i32 noundef 3, ptr noundef %2) #4
  %4 = load ptr, ptr @clks, align 4
  %5 = getelementptr ptr, ptr %4, i32 3
  store ptr %3, ptr %5, align 4
  %6 = load ptr, ptr @clk_base, align 4
  %7 = getelementptr i8, ptr %6, i32 412
  %8 = tail call ptr @tegra20_clk_register_emc(ptr noundef %7, i1 noundef zeroext false) #4
  %9 = load ptr, ptr @clks, align 4
  %10 = getelementptr ptr, ptr %9, i32 57
  store ptr %8, ptr %10, align 4
  %11 = load ptr, ptr @clk_base, align 4
  %12 = getelementptr i8, ptr %11, i32 412
  %13 = tail call ptr @tegra_clk_register_mc(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32, ptr noundef %12, ptr noundef null) #4
  %14 = load ptr, ptr @clks, align 4
  %15 = getelementptr ptr, ptr %14, i32 32
  store ptr %13, ptr %15, align 4
  %16 = load ptr, ptr @clk_base, align 4
  %17 = load ptr, ptr @periph_clk_enb_refcnt, align 4
  %18 = tail call ptr @tegra_clk_register_periph_gate(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.16, i8 noundef zeroext 0, ptr noundef %16, i32 noundef 0, i32 noundef 48, ptr noundef %17) #4
  %19 = tail call i32 @clk_register_clkdev(ptr noundef %18, ptr noundef null, ptr noundef nonnull @.str.33) #4
  %20 = load ptr, ptr @clks, align 4
  %21 = getelementptr ptr, ptr %20, i32 48
  store ptr %18, ptr %21, align 4
  %22 = load ptr, ptr @clk_base, align 4
  %23 = load ptr, ptr @periph_clk_enb_refcnt, align 4
  %24 = tail call ptr @tegra_clk_register_periph_gate(ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.3, i8 noundef zeroext 0, ptr noundef %22, i32 noundef 0, i32 noundef 70, ptr noundef %23) #4
  %25 = load ptr, ptr @clks, align 4
  %26 = getelementptr ptr, ptr %25, i32 70
  store ptr %24, ptr %26, align 4
  %27 = load ptr, ptr @clk_base, align 4
  %28 = getelementptr i8, ptr %27, i32 72
  %29 = tail call ptr @clk_register_divider_table(ptr noundef null, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.3, i32 noundef 0, ptr noundef %28, i8 noundef zeroext 22, i8 noundef zeroext 2, i8 noundef zeroext 34, ptr noundef null, ptr noundef null) #4
  %30 = load ptr, ptr @clk_base, align 4
  %31 = getelementptr i8, ptr %30, i32 72
  %32 = tail call ptr @clk_register_divider_table(ptr noundef null, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.3, i32 noundef 0, ptr noundef %31, i8 noundef zeroext 20, i8 noundef zeroext 2, i8 noundef zeroext 34, ptr noundef null, ptr noundef null) #4
  %33 = load ptr, ptr @clk_base, align 4
  %34 = load ptr, ptr @periph_clk_enb_refcnt, align 4
  %35 = tail call ptr @tegra_clk_register_periph_gate(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38, i8 noundef zeroext 0, ptr noundef %33, i32 noundef 0, i32 noundef 94, ptr noundef %34) #4
  %36 = load ptr, ptr @clks, align 4
  %37 = getelementptr ptr, ptr %36, i32 94
  store ptr %35, ptr %37, align 4
  %38 = load ptr, ptr @clk_base, align 4
  %39 = load ptr, ptr @periph_clk_enb_refcnt, align 4
  %40 = tail call ptr @tegra_clk_register_periph_gate(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.40, i8 noundef zeroext 0, ptr noundef %38, i32 noundef 0, i32 noundef 93, ptr noundef %39) #4
  %41 = load ptr, ptr @clks, align 4
  %42 = getelementptr ptr, ptr %41, i32 93
  store ptr %40, ptr %42, align 4
  br label %43

43:                                               ; preds = %43, %0
  %44 = phi i32 [ 0, %0 ], [ %52, %43 ]
  %45 = getelementptr [12 x %struct.tegra_periph_init_data], ptr @tegra_periph_clk_list, i32 0, i32 %44
  %46 = load ptr, ptr @clk_base, align 4
  %47 = tail call ptr @tegra_clk_register_periph_data(ptr noundef %46, ptr noundef %45) #4
  %48 = load ptr, ptr @clks, align 4
  %49 = getelementptr [12 x %struct.tegra_periph_init_data], ptr @tegra_periph_clk_list, i32 0, i32 %44, i32 1
  %50 = load i32, ptr %49, align 4
  %51 = getelementptr ptr, ptr %48, i32 %50
  store ptr %47, ptr %51, align 4
  %52 = add nuw nsw i32 %44, 1
  %53 = icmp eq i32 %52, 12
  br i1 %53, label %54, label %43

54:                                               ; preds = %54, %43
  %55 = phi i32 [ %71, %54 ], [ 0, %43 ]
  %56 = getelementptr [7 x %struct.tegra_periph_init_data], ptr @tegra_periph_nodiv_clk_list, i32 0, i32 %55
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr [7 x %struct.tegra_periph_init_data], ptr @tegra_periph_nodiv_clk_list, i32 0, i32 %55, i32 2
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr [7 x %struct.tegra_periph_init_data], ptr @tegra_periph_nodiv_clk_list, i32 0, i32 %55, i32 3
  %61 = load i32, ptr %60, align 4
  %62 = getelementptr [7 x %struct.tegra_periph_init_data], ptr @tegra_periph_nodiv_clk_list, i32 0, i32 %55, i32 4
  %63 = load ptr, ptr @clk_base, align 4
  %64 = getelementptr [7 x %struct.tegra_periph_init_data], ptr @tegra_periph_nodiv_clk_list, i32 0, i32 %55, i32 5
  %65 = load i32, ptr %64, align 4
  %66 = tail call ptr @tegra_clk_register_periph_nodiv(ptr noundef %57, ptr noundef %59, i32 noundef %61, ptr noundef %62, ptr noundef %63, i32 noundef %65) #4
  %67 = load ptr, ptr @clks, align 4
  %68 = getelementptr [7 x %struct.tegra_periph_init_data], ptr @tegra_periph_nodiv_clk_list, i32 0, i32 %55, i32 1
  %69 = load i32, ptr %68, align 4
  %70 = getelementptr ptr, ptr %67, i32 %69
  store ptr %66, ptr %70, align 4
  %71 = add nuw nsw i32 %55, 1
  %72 = icmp eq i32 %71, 7
  br i1 %72, label %73, label %54

73:                                               ; preds = %54
  %74 = load ptr, ptr @clk_base, align 4
  %75 = load ptr, ptr @pmc_base, align 4
  tail call void @tegra_periph_clk_init(ptr noundef %74, ptr noundef %75, ptr noundef nonnull @tegra20_clks, ptr noundef nonnull @pll_p_params) #4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @tegra20_audio_clk_init() unnamed_addr #0 section ".init.text" {
  %1 = load ptr, ptr @clk_base, align 4
  %2 = getelementptr i8, ptr %1, i32 56
  %3 = tail call ptr @clk_register_mux_table(ptr noundef null, ptr noundef nonnull @.str.62, ptr noundef nonnull @audio_parents, i8 noundef zeroext 8, i32 noundef 128, ptr noundef %2, i8 noundef zeroext 0, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef null) #4
  %4 = load ptr, ptr @clk_base, align 4
  %5 = getelementptr i8, ptr %4, i32 56
  %6 = tail call ptr @clk_register_gate(ptr noundef null, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.62, i32 noundef 0, ptr noundef %5, i8 noundef zeroext 4, i8 noundef zeroext 1, ptr noundef null) #4
  %7 = load ptr, ptr @clks, align 4
  %8 = getelementptr ptr, ptr %7, i32 130
  store ptr %6, ptr %8, align 4
  %9 = tail call ptr @clk_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.54, i32 noundef 4, i32 noundef 2, i32 noundef 1) #4
  %10 = load ptr, ptr @clk_base, align 4
  %11 = load ptr, ptr @periph_clk_enb_refcnt, align 4
  %12 = tail call ptr @tegra_clk_register_periph_gate(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.63, i8 noundef zeroext 1, ptr noundef %10, i32 noundef 4, i32 noundef 89, ptr noundef %11) #4
  %13 = load ptr, ptr @clks, align 4
  %14 = getelementptr ptr, ptr %13, i32 89
  store ptr %12, ptr %14, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra_init_dup_clks(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra_add_of_provider(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @tegra20_clk_src_onecell_get(ptr noundef %0, ptr noundef %1) #3 {
  %3 = getelementptr inbounds %struct.of_phandle_args, ptr %0, i32 0, i32 2
  %4 = load i32, ptr %3, align 4
  switch i32 %4, label %5 [
    i32 4, label %7
    i32 132, label %7
    i32 5, label %7
  ]

5:                                                ; preds = %2
  %6 = load i1, ptr @tegra20_car_initialized, align 1
  br i1 %6, label %7, label %26

7:                                                ; preds = %5, %2, %2, %2
  %8 = tail call ptr @of_clk_src_onecell_get(ptr noundef %0, ptr noundef %1) #4
  %9 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %9, label %26, label %10

10:                                               ; preds = %7
  %11 = tail call ptr @__clk_get_hw(ptr noundef %8) #4
  %12 = load i32, ptr %3, align 4
  %13 = add i32 %12, -93
  %14 = icmp ult i32 %13, 2
  br i1 %14, label %15, label %20

15:                                               ; preds = %10
  %16 = tail call ptr @clk_hw_get_parent(ptr noundef %11) #4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %26, label %18

18:                                               ; preds = %15
  %19 = load i32, ptr %3, align 4
  br label %20

20:                                               ; preds = %18, %10
  %21 = phi i32 [ %19, %18 ], [ %12, %10 ]
  %22 = icmp eq i32 %21, 57
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = tail call zeroext i1 @tegra20_clk_emc_driver_available(ptr noundef %11) #4
  %25 = select i1 %24, ptr %8, ptr inttoptr (i32 -517 to ptr)
  br label %26

26:                                               ; preds = %23, %20, %15, %7, %5
  %27 = phi ptr [ %8, %7 ], [ %8, %20 ], [ inttoptr (i32 -517 to ptr), %5 ], [ inttoptr (i32 -517 to ptr), %15 ], [ %25, %23 ]
  ret ptr %27
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_matching_node_and_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_fixed_rate(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_fixed_factor(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tegra_clk_register_pll(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tegra_clk_register_divider(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tegra_clk_register_pll_out(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tegra_clk_register_plle(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_cclk_pre_pllx_rate_change() #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra_cclk_post_pllx_rate_change() #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tegra_clk_register_super_cclk(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tegra_clk_register_periph_gate(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tegra20_clk_register_emc(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tegra_clk_register_mc(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_register_clkdev(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_divider_table(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tegra_clk_register_periph_data(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tegra_clk_register_periph_nodiv(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra_periph_clk_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_mux_table(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_gate(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_onecell_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_hw(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_parent(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @tegra20_clk_emc_driver_available(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra20_wait_cpu_in_reset(i32 noundef %0) #3 {
  %2 = shl nuw i32 1, %0
  br label %3

3:                                                ; preds = %3, %1
  %4 = load ptr, ptr @clk_base, align 4
  %5 = getelementptr i8, ptr %4, i32 832
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #4, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !19
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #4, !srcloc !20
  %7 = and i32 %6, %2
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %3, label %9

9:                                                ; preds = %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra20_put_cpu_in_reset(i32 noundef %0) #3 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !21
  tail call void @arm_heavy_mb() #4
  %2 = shl i32 4369, %0
  %3 = load ptr, ptr @clk_base, align 4
  %4 = getelementptr i8, ptr %3, i32 832
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 %2) #4, !srcloc !22
  tail call void asm sideeffect "dmb ", "~{memory}"() #4, !srcloc !23
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra20_cpu_out_of_reset(i32 noundef %0) #3 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  %2 = shl i32 4369, %0
  %3 = load ptr, ptr @clk_base, align 4
  %4 = getelementptr i8, ptr %3, i32 836
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 %2) #4, !srcloc !22
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !25
  tail call void @arm_heavy_mb() #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra20_enable_cpu_clock(i32 noundef %0) #3 {
  %2 = load ptr, ptr @clk_base, align 4
  %3 = getelementptr i8, ptr %2, i32 76
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #4, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !26
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !27
  tail call void @arm_heavy_mb() #4
  %5 = add i32 %0, 8
  %6 = shl nuw i32 1, %5
  %7 = xor i32 %6, -1
  %8 = and i32 %4, %7
  %9 = load ptr, ptr @clk_base, align 4
  %10 = getelementptr i8, ptr %9, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %8) #4, !srcloc !22
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !28
  %11 = load ptr, ptr @clk_base, align 4
  %12 = getelementptr i8, ptr %11, i32 76
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #4, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !29
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra20_disable_cpu_clock(i32 noundef %0) #3 {
  %2 = load ptr, ptr @clk_base, align 4
  %3 = getelementptr i8, ptr %2, i32 76
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #4, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !30
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !31
  tail call void @arm_heavy_mb() #4
  %5 = add i32 %0, 8
  %6 = shl nuw i32 1, %5
  %7 = or i32 %4, %6
  %8 = load ptr, ptr @clk_base, align 4
  %9 = getelementptr i8, ptr %8, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %7) #4, !srcloc !22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @tegra20_cpu_rail_off_ready() #3 {
  %1 = load ptr, ptr @clk_base, align 4
  %2 = getelementptr i8, ptr %1, i32 832
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #4, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !32
  %4 = and i32 %3, 2
  %5 = icmp ne i32 %4, 0
  ret i1 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra20_cpu_clock_suspend() #3 {
  %1 = load ptr, ptr @clk_base, align 4
  %2 = getelementptr i8, ptr %1, i32 468
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #4, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !33
  store i32 %3, ptr @tegra20_cpu_clk_sctx.3, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !34
  tail call void @arm_heavy_mb() #4
  %4 = load ptr, ptr @clk_base, align 4
  %5 = getelementptr i8, ptr %4, i32 468
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 -1073741824) #4, !srcloc !22
  %6 = load ptr, ptr @clk_base, align 4
  %7 = getelementptr i8, ptr %6, i32 32
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #4, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !35
  store i32 %8, ptr @tegra20_cpu_clk_sctx.2, align 4
  %9 = load ptr, ptr @clk_base, align 4
  %10 = getelementptr i8, ptr %9, i32 224
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #4, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !36
  store i32 %11, ptr @tegra20_cpu_clk_sctx.1, align 4
  %12 = load ptr, ptr @clk_base, align 4
  %13 = getelementptr i8, ptr %12, i32 228
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #4, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !37
  store i32 %14, ptr @tegra20_cpu_clk_sctx.0, align 4
  %15 = load ptr, ptr @clk_base, align 4
  %16 = getelementptr i8, ptr %15, i32 36
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #4, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !38
  store i32 %17, ptr @tegra20_cpu_clk_sctx.4, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra20_cpu_clock_resume() #3 {
  %1 = load ptr, ptr @clk_base, align 4
  %2 = getelementptr i8, ptr %1, i32 32
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #4, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !39
  %4 = lshr i32 %3, 28
  switch i32 %4, label %7 [
    i32 1, label %8
    i32 2, label %5
  ]

5:                                                ; preds = %0
  %6 = lshr i32 %3, 4
  br label %8

7:                                                ; preds = %0
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/clk/tegra/clk-tegra20.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 966, 0\0A.popsection", ""() #4, !srcloc !40
  unreachable

8:                                                ; preds = %5, %0
  %9 = phi i32 [ %6, %5 ], [ %3, %0 ]
  %10 = and i32 %9, 15
  %11 = icmp eq i32 %10, 8
  br i1 %11, label %36, label %12

12:                                               ; preds = %8
  %13 = load ptr, ptr @clk_base, align 4
  %14 = getelementptr i8, ptr %13, i32 228
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #4, !srcloc !11
  %16 = load ptr, ptr @clk_base, align 4
  %17 = getelementptr i8, ptr %16, i32 224
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #4, !srcloc !11
  %19 = load i32, ptr @tegra20_cpu_clk_sctx.0, align 4
  %20 = icmp eq i32 %15, %19
  %21 = load i32, ptr @tegra20_cpu_clk_sctx.1, align 4
  %22 = icmp eq i32 %18, %21
  %23 = select i1 %20, i1 %22, i1 false
  br i1 %23, label %36, label %24

24:                                               ; preds = %12
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !41
  tail call void @arm_heavy_mb() #4
  %25 = load i32, ptr @tegra20_cpu_clk_sctx.0, align 4
  %26 = load ptr, ptr @clk_base, align 4
  %27 = getelementptr i8, ptr %26, i32 228
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %25) #4, !srcloc !22
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !42
  tail call void @arm_heavy_mb() #4
  %28 = load i32, ptr @tegra20_cpu_clk_sctx.1, align 4
  %29 = load ptr, ptr @clk_base, align 4
  %30 = getelementptr i8, ptr %29, i32 224
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %28) #4, !srcloc !22
  %31 = load i32, ptr @tegra20_cpu_clk_sctx.1, align 4
  %32 = and i32 %31, 1073741824
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %24
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %35(i32 noundef 64424400) #4
  br label %36

36:                                               ; preds = %34, %24, %12, %8
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !43
  tail call void @arm_heavy_mb() #4
  %37 = load i32, ptr @tegra20_cpu_clk_sctx.4, align 4
  %38 = load ptr, ptr @clk_base, align 4
  %39 = getelementptr i8, ptr %38, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 %37) #4, !srcloc !22
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !44
  tail call void @arm_heavy_mb() #4
  %40 = load i32, ptr @tegra20_cpu_clk_sctx.2, align 4
  %41 = load ptr, ptr @clk_base, align 4
  %42 = getelementptr i8, ptr %41, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %40) #4, !srcloc !22
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !45
  tail call void @arm_heavy_mb() #4
  %43 = load i32, ptr @tegra20_cpu_clk_sctx.3, align 4
  %44 = load ptr, ptr @clk_base, align 4
  %45 = getelementptr i8, ptr %44, i32 468
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 %43) #4, !srcloc !22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra20_car_probe(ptr nocapture noundef readnone %0) #3 {
  %2 = load ptr, ptr @clk_base, align 4
  %3 = getelementptr i8, ptr %2, i32 40
  %4 = tail call ptr @tegra_clk_register_super_mux(ptr noundef nonnull @.str.71, ptr noundef nonnull @sclk_parents, i8 noundef zeroext 8, i32 noundef 2052, ptr noundef %3, i8 noundef zeroext 0, i8 noundef zeroext 4, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef null) #4
  %5 = load ptr, ptr @clks, align 4
  %6 = getelementptr ptr, ptr %5, i32 107
  store ptr %4, ptr %6, align 4
  tail call void @tegra_register_devclks(ptr noundef nonnull @devclks, i32 noundef 94) #4
  %7 = load ptr, ptr @clks, align 4
  tail call void @tegra_init_from_table(ptr noundef nonnull @init_table, ptr noundef %7, i32 noundef 133) #4
  store i1 true, ptr @tegra20_car_initialized, align 1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tegra_clk_register_super_mux(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra_register_devclks(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra_init_from_table(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { cold }
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
!8 = !{i64 2151692872, i64 2151693369, i64 2151692909, i64 2151692965, i64 2151692999, i64 2151693023, i64 2151693064, i64 2151693085, i64 2151693113, i64 2151693147}
!9 = !{i64 2151694247, i64 2151694744, i64 2151694284, i64 2151694340, i64 2151694374, i64 2151694398, i64 2151694439, i64 2151694460, i64 2151694488, i64 2151694522}
!10 = !{i64 2151695610, i64 2151696107, i64 2151695647, i64 2151695703, i64 2151695737, i64 2151695761, i64 2151695802, i64 2151695823, i64 2151695851, i64 2151695885}
!11 = !{i64 401221}
!12 = !{!"branch_weights", i32 2000, i32 1}
!13 = !{i64 2151616092, i64 2151616588, i64 2151616129, i64 2151616185, i64 2151616219, i64 2151616243, i64 2151616284, i64 2151616305, i64 2151616333, i64 2151616367}
!14 = !{i64 2151617180, i64 2151617676, i64 2151617217, i64 2151617273, i64 2151617307, i64 2151617331, i64 2151617372, i64 2151617393, i64 2151617421, i64 2151617455}
!15 = !{i64 2151618268, i64 2151618764, i64 2151618305, i64 2151618361, i64 2151618395, i64 2151618419, i64 2151618460, i64 2151618481, i64 2151618509, i64 2151618543}
!16 = !{i64 2151619356, i64 2151619852, i64 2151619393, i64 2151619449, i64 2151619483, i64 2151619507, i64 2151619548, i64 2151619569, i64 2151619597, i64 2151619631}
!17 = !{i64 2151626525, i64 2151627021, i64 2151626562, i64 2151626618, i64 2151626652, i64 2151626676, i64 2151626717, i64 2151626738, i64 2151626766, i64 2151626800}
!18 = !{i64 2151681277}
!19 = !{i64 2151681523}
!20 = !{i64 2151681365}
!21 = !{i64 2151681758}
!22 = !{i64 400803}
!23 = !{i64 2151681978}
!24 = !{i64 2151682210}
!25 = !{i64 2151682493}
!26 = !{i64 2151682828}
!27 = !{i64 2151683063}
!28 = !{i64 2151683293}
!29 = !{i64 2151683609}
!30 = !{i64 2151683942}
!31 = !{i64 2151684175}
!32 = !{i64 2151684683}
!33 = !{i64 2151685020}
!34 = !{i64 2151685212}
!35 = !{i64 2151685677}
!36 = !{i64 2151686010}
!37 = !{i64 2151686343}
!38 = !{i64 2151686676}
!39 = !{i64 2151687009}
!40 = !{i64 2151687249, i64 2151687745, i64 2151687286, i64 2151687342, i64 2151687376, i64 2151687400, i64 2151687441, i64 2151687462, i64 2151687490, i64 2151687524}
!41 = !{i64 2151688585}
!42 = !{i64 2151688981}
!43 = !{i64 2151689928}
!44 = !{i64 2151690330}
!45 = !{i64 2151690732}
