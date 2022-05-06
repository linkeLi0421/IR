; ModuleID = '/llk/IR/drivers/clk/tegra/clk-tegra30.c_pt.bc'
source_filename = "../drivers/clk/tegra/clk-tegra30.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.tegra_audio_clk_info = type { ptr, ptr, i32, ptr }
%struct.tegra_clk_duplicate = type { i32, %struct.clk_lookup }
%struct.clk_lookup = type { %struct.list_head, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.tegra_cpu_car_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tegra_clk = type { i32, i8 }
%struct.tegra_clk_pll_params = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x i32], i32, i32, i32, i32, i32, i32, i32, i8, ptr, ptr, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
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
%struct.div_nmp = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }

@__of_table_tegra30 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra30-car\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra30_of_clk_init_driver }, section "__clk_of_table", align 4
@__initcall__kmod_clk_tegra30__166_1420_tegra30_car_init2 = internal global ptr @tegra30_car_init, section ".initcall2.init", align 4
@clk_base = internal unnamed_addr global ptr null, align 4
@.str = private unnamed_addr constant [30 x i8] c"\013ioremap tegra30 CAR failed\0A\00", align 1
@pmc_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra30-pmc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], section ".init.rodata", align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"\013Failed to find pmc node\0A\00", align 1
@pmc_base = internal unnamed_addr global ptr null, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"\013Can't map pmc registers\0A\00", align 1
@clks = internal unnamed_addr global ptr null, align 4
@tegra30_input_freq = internal global [13 x i32] [i32 13000000, i32 16800000, i32 0, i32 0, i32 19200000, i32 38400000, i32 0, i32 0, i32 12000000, i32 48000000, i32 0, i32 0, i32 26000000], align 4
@input_freq = internal global i32 0, align 4
@tegra30_audio_plls = internal global [1 x %struct.tegra_audio_clk_info] [%struct.tegra_audio_clk_info { ptr @.str.54, ptr @pll_a_params, i32 137, ptr @.str.55 }], align 4
@tegra_clk_duplicates = internal global [12 x %struct.tegra_clk_duplicate] [%struct.tegra_clk_duplicate { i32 22, %struct.clk_lookup { %struct.list_head zeroinitializer, ptr @.str.56, ptr null, ptr null, ptr null } }, %struct.tegra_clk_duplicate { i32 22, %struct.clk_lookup { %struct.list_head zeroinitializer, ptr @.str.57, ptr null, ptr null, ptr null } }, %struct.tegra_clk_duplicate { i32 22, %struct.clk_lookup { %struct.list_head zeroinitializer, ptr @.str.58, ptr null, ptr null, ptr null } }, %struct.tegra_clk_duplicate { i32 63, %struct.clk_lookup { %struct.list_head zeroinitializer, ptr @.str.59, ptr @.str.60, ptr null, ptr null } }, %struct.tegra_clk_duplicate { i32 63, %struct.clk_lookup { %struct.list_head zeroinitializer, ptr @.str.61, ptr @.str.60, ptr null, ptr null } }, %struct.tegra_clk_duplicate { i32 61, %struct.clk_lookup { %struct.list_head zeroinitializer, ptr @.str.62, ptr @.str.63, ptr null, ptr null } }, %struct.tegra_clk_duplicate { i32 62, %struct.clk_lookup { %struct.list_head zeroinitializer, ptr @.str.62, ptr @.str.64, ptr null, ptr null } }, %struct.tegra_clk_duplicate { i32 62, %struct.clk_lookup { %struct.list_head zeroinitializer, ptr @.str.61, ptr @.str.64, ptr null, ptr null } }, %struct.tegra_clk_duplicate { i32 216, %struct.clk_lookup { %struct.list_head zeroinitializer, ptr @.str.65, ptr null, ptr null, ptr null } }, %struct.tegra_clk_duplicate { i32 215, %struct.clk_lookup { %struct.list_head zeroinitializer, ptr @.str.66, ptr @.str.67, ptr null, ptr null } }, %struct.tegra_clk_duplicate { i32 29, %struct.clk_lookup { %struct.list_head zeroinitializer, ptr @.str.61, ptr @.str.68, ptr null, ptr null } }, %struct.tegra_clk_duplicate { i32 309, %struct.clk_lookup zeroinitializer }], align 4
@tegra30_cpu_car_ops = internal global %struct.tegra_cpu_car_ops { ptr @tegra30_wait_cpu_in_reset, ptr @tegra30_put_cpu_in_reset, ptr @tegra30_cpu_out_of_reset, ptr @tegra30_enable_cpu_clock, ptr @tegra30_disable_cpu_clock, ptr @tegra30_cpu_rail_off_ready, ptr @tegra30_cpu_clock_suspend, ptr @tegra30_cpu_clock_resume }, align 4
@tegra_cpu_car_ops = external dso_local local_unnamed_addr global ptr, align 4
@tegra30_clks = internal global <{ [297 x %struct.tegra_clk], [16 x %struct.tegra_clk] }> <{ [297 x %struct.tegra_clk] [%struct.tegra_clk { i32 119, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 33, i8 1 }, %struct.tegra_clk { i32 34, i8 1 }, %struct.tegra_clk { i32 107, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 201, i8 1 }, %struct.tegra_clk { i32 113, i8 1 }, %struct.tegra_clk { i32 303, i8 1 }, %struct.tegra_clk { i32 202, i8 1 }, %struct.tegra_clk { i32 114, i8 1 }, %struct.tegra_clk { i32 304, i8 1 }, %struct.tegra_clk { i32 203, i8 1 }, %struct.tegra_clk { i32 115, i8 1 }, %struct.tegra_clk { i32 305, i8 1 }, %struct.tegra_clk { i32 204, i8 1 }, %struct.tegra_clk { i32 116, i8 1 }, %struct.tegra_clk { i32 306, i8 1 }, %struct.tegra_clk { i32 205, i8 1 }, %struct.tegra_clk { i32 117, i8 1 }, %struct.tegra_clk { i32 307, i8 1 }, %struct.tegra_clk { i32 62, i8 1 }, %struct.tegra_clk { i32 63, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 170, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 171, i8 1 }, %struct.tegra_clk { i32 220, i8 1 }, %struct.tegra_clk { i32 172, i8 1 }, %struct.tegra_clk { i32 173, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 52, i8 1 }, %struct.tegra_clk { i32 73, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 92, i8 1 }, %struct.tegra_clk { i32 168, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 27, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 26, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 79, i8 1 }, %struct.tegra_clk { i32 57, i8 0 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 19, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 120, i8 1 }, %struct.tegra_clk { i32 121, i8 1 }, %struct.tegra_clk { i32 122, i8 1 }, %struct.tegra_clk { i32 166, i8 1 }, %struct.tegra_clk { i32 167, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 21, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 24, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 217, i8 1 }, %struct.tegra_clk { i32 125, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 111, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 128, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 28, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 12, i8 1 }, %struct.tegra_clk { i32 54, i8 1 }, %struct.tegra_clk { i32 67, i8 1 }, %struct.tegra_clk { i32 103, i8 1 }, %struct.tegra_clk { i32 47, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 81, i8 1 }, %struct.tegra_clk { i32 30, i8 1 }, %struct.tegra_clk { i32 195, i8 1 }, %struct.tegra_clk { i32 11, i8 1 }, %struct.tegra_clk { i32 196, i8 1 }, %struct.tegra_clk { i32 18, i8 1 }, %struct.tegra_clk { i32 197, i8 1 }, %struct.tegra_clk { i32 101, i8 1 }, %struct.tegra_clk { i32 198, i8 1 }, %struct.tegra_clk { i32 102, i8 1 }, %struct.tegra_clk { i32 199, i8 1 }, %struct.tegra_clk { i32 23, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 36, i8 1 }, %struct.tegra_clk { i32 40, i8 1 }, %struct.tegra_clk { i32 76, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 50, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 60, i8 1 }, %struct.tegra_clk { i32 99, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 13, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 80, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 42, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 71, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 218, i8 1 }, %struct.tegra_clk { i32 184, i8 1 }, %struct.tegra_clk { i32 185, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 179, i8 1 }, %struct.tegra_clk { i32 180, i8 1 }, %struct.tegra_clk { i32 181, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 182, i8 1 }, %struct.tegra_clk { i32 183, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 174, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 4, i8 1 }, %struct.tegra_clk { i32 124, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 129, i8 1 }, %struct.tegra_clk { i32 123, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 41, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 44, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 46, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 68, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 104, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 105, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 14, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 9, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 69, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 15, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 206, i8 1 }, %struct.tegra_clk { i32 118, i8 1 }, %struct.tegra_clk { i32 162, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 194, i8 1 }, %struct.tegra_clk { i32 308, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 5, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 100, i8 1 }, %struct.tegra_clk { i32 53, i8 1 }, %struct.tegra_clk { i32 169, i8 1 }, %struct.tegra_clk { i32 6, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 160, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 55, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 65, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 66, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 58, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 59, i8 1 }, %struct.tegra_clk { i32 22, i8 1 }, %struct.tegra_clk { i32 29, i8 1 }, %struct.tegra_clk { i32 61, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 161, i8 1 }, %struct.tegra_clk { i32 164, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 200, i8 1 }, %struct.tegra_clk { i32 165, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 136, i8 1 }], [16 x %struct.tegra_clk] zeroinitializer }>, section ".init.data", align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"pll_c_out1_div\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"pll_c\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"pll_c_out1\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"pll_m_out1_div\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"pll_m\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"pll_m_out1\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"pll_x\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"pll_ref\00", align 1
@pll_x_params = internal global %struct.tegra_clk_pll_params { i32 2000000, i32 31000000, i32 1000000, i32 6000000, i32 20000000, i32 1700000000, i32 224, i32 228, i32 0, i32 134217728, i32 18, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, [6 x i32] zeroinitializer, i32 0, i32 0, i32 1035, i32 0, i32 0, i32 300, i32 0, i8 0, ptr null, ptr null, ptr @pll_x_freq_table, i32 0, i16 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra_cclk_pre_pllx_rate_change, ptr @tegra_cclk_post_pllx_rate_change }, section ".data..ro_after_init", align 4
@.str.12 = private unnamed_addr constant [11 x i8] c"pll_x_out0\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"pll_u\00", align 1
@pll_u_params = internal global %struct.tegra_clk_pll_params { i32 2000000, i32 40000000, i32 1000000, i32 6000000, i32 48000000, i32 960000000, i32 192, i32 204, i32 0, i32 134217728, i32 22, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, [6 x i32] zeroinitializer, i32 0, i32 0, i32 1046, i32 0, i32 0, i32 1000, i32 0, i8 0, ptr @pllu_p, ptr null, ptr @pll_u_freq_table, i32 0, i16 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, section ".data..ro_after_init", align 4
@.str.14 = private unnamed_addr constant [6 x i8] c"pll_d\00", align 1
@pll_d_params = internal global %struct.tegra_clk_pll_params { i32 2000000, i32 40000000, i32 1000000, i32 6000000, i32 40000000, i32 1000000000, i32 208, i32 220, i32 0, i32 134217728, i32 22, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, [6 x i32] zeroinitializer, i32 0, i32 0, i32 1031, i32 0, i32 0, i32 1000, i32 0, i8 0, ptr null, ptr null, ptr @pll_d_freq_table, i32 0, i16 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, section ".data..ro_after_init", align 4
@pll_d_lock = internal global %struct.spinlock zeroinitializer, align 4
@.str.15 = private unnamed_addr constant [11 x i8] c"pll_d_out0\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"pll_d2\00", align 1
@pll_d2_params = internal global %struct.tegra_clk_pll_params { i32 2000000, i32 40000000, i32 1000000, i32 6000000, i32 40000000, i32 1000000000, i32 1208, i32 1212, i32 0, i32 134217728, i32 22, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, [6 x i32] zeroinitializer, i32 0, i32 0, i32 1031, i32 0, i32 0, i32 1000, i32 0, i8 0, ptr null, ptr null, ptr @pll_d_freq_table, i32 0, i16 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, section ".data..ro_after_init", align 4
@.str.17 = private unnamed_addr constant [12 x i8] c"pll_d2_out0\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"pll_e_mux\00", align 1
@pll_e_parents = internal global [2 x ptr] [ptr @.str.11, ptr @.str.19], align 4
@pll_x_freq_table = internal global [41 x %struct.tegra_clk_pll_freq_table] [%struct.tegra_clk_pll_freq_table { i32 12000000, i32 1700000000, i32 850, i32 6, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 13000000, i32 1700000000, i32 915, i32 7, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 16800000, i32 1700000000, i32 708, i32 7, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 19200000, i32 1700000000, i32 885, i32 10, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 26000000, i32 1700000000, i32 850, i32 13, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 12000000, i32 1600000000, i32 800, i32 6, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 13000000, i32 1600000000, i32 738, i32 6, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 16800000, i32 1600000000, i32 857, i32 9, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 19200000, i32 1600000000, i32 500, i32 6, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 26000000, i32 1600000000, i32 800, i32 13, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 12000000, i32 1500000000, i32 750, i32 6, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 13000000, i32 1500000000, i32 923, i32 8, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 16800000, i32 1500000000, i32 625, i32 7, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 19200000, i32 1500000000, i32 625, i32 8, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 26000000, i32 1500000000, i32 750, i32 13, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 12000000, i32 1400000000, i32 700, i32 6, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 13000000, i32 1400000000, i32 969, i32 9, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 16800000, i32 1400000000, i32 1000, i32 12, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 19200000, i32 1400000000, i32 875, i32 12, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 26000000, i32 1400000000, i32 700, i32 13, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 12000000, i32 1300000000, i32 975, i32 9, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 13000000, i32 1300000000, i32 1000, i32 10, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 16800000, i32 1300000000, i32 928, i32 12, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 19200000, i32 1300000000, i32 812, i32 12, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 26000000, i32 1300000000, i32 650, i32 13, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 12000000, i32 1200000000, i32 1000, i32 10, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 13000000, i32 1200000000, i32 923, i32 10, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 16800000, i32 1200000000, i32 1000, i32 14, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 19200000, i32 1200000000, i32 1000, i32 16, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 26000000, i32 1200000000, i32 600, i32 13, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 12000000, i32 1100000000, i32 825, i32 9, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 13000000, i32 1100000000, i32 846, i32 10, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 16800000, i32 1100000000, i32 982, i32 15, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 19200000, i32 1100000000, i32 859, i32 15, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 26000000, i32 1100000000, i32 550, i32 13, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 12000000, i32 1000000000, i32 1000, i32 12, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 13000000, i32 1000000000, i32 1000, i32 13, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 16800000, i32 1000000000, i32 833, i32 14, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 19200000, i32 1000000000, i32 625, i32 12, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 26000000, i32 1000000000, i32 1000, i32 26, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table zeroinitializer], align 4
@pllu_p = internal constant [3 x %struct.pdiv_map] [%struct.pdiv_map { i8 1, i8 1 }, %struct.pdiv_map { i8 2, i8 0 }, %struct.pdiv_map zeroinitializer], align 1
@pll_u_freq_table = internal global [6 x %struct.tegra_clk_pll_freq_table] [%struct.tegra_clk_pll_freq_table { i32 12000000, i32 480000000, i32 960, i32 12, i8 2, i8 12, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 13000000, i32 480000000, i32 960, i32 13, i8 2, i8 12, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 16800000, i32 480000000, i32 400, i32 7, i8 2, i8 5, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 19200000, i32 480000000, i32 200, i32 4, i8 2, i8 3, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 26000000, i32 480000000, i32 960, i32 26, i8 2, i8 12, i16 0 }, %struct.tegra_clk_pll_freq_table zeroinitializer], align 4
@pll_d_freq_table = internal global [15 x %struct.tegra_clk_pll_freq_table] [%struct.tegra_clk_pll_freq_table { i32 12000000, i32 216000000, i32 216, i32 12, i8 1, i8 4, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 13000000, i32 216000000, i32 216, i32 13, i8 1, i8 4, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 16800000, i32 216000000, i32 180, i32 14, i8 1, i8 4, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 19200000, i32 216000000, i32 180, i32 16, i8 1, i8 4, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 26000000, i32 216000000, i32 216, i32 26, i8 1, i8 4, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 12000000, i32 594000000, i32 594, i32 12, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 13000000, i32 594000000, i32 594, i32 13, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 16800000, i32 594000000, i32 495, i32 14, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 19200000, i32 594000000, i32 495, i32 16, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 26000000, i32 594000000, i32 594, i32 26, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 12000000, i32 1000000000, i32 1000, i32 12, i8 1, i8 12, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 13000000, i32 1000000000, i32 1000, i32 13, i8 1, i8 12, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 19200000, i32 1000000000, i32 625, i32 12, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 26000000, i32 1000000000, i32 1000, i32 26, i8 1, i8 12, i16 0 }, %struct.tegra_clk_pll_freq_table zeroinitializer], align 4
@.str.19 = private unnamed_addr constant [6 x i8] c"pll_p\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"pll_p_cclkg\00", align 1
@.str.21 = private unnamed_addr constant [17 x i8] c"pll_p_out3_cclkg\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"pll_p_out3\00", align 1
@.str.23 = private unnamed_addr constant [17 x i8] c"pll_p_out4_cclkg\00", align 1
@.str.24 = private unnamed_addr constant [11 x i8] c"pll_p_out4\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"cclk_g\00", align 1
@cclk_g_parents = internal global [9 x ptr] [ptr @.str.31, ptr @.str.5, ptr @.str.32, ptr @.str.8, ptr @.str.20, ptr @.str.23, ptr @.str.21, ptr @.str.33, ptr @.str.10], align 4
@.str.26 = private unnamed_addr constant [13 x i8] c"pll_p_cclklp\00", align 1
@.str.27 = private unnamed_addr constant [18 x i8] c"pll_p_out3_cclklp\00", align 1
@.str.28 = private unnamed_addr constant [18 x i8] c"pll_p_out4_cclklp\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"cclk_lp\00", align 1
@cclk_lp_parents = internal global [10 x ptr] [ptr @.str.31, ptr @.str.5, ptr @.str.32, ptr @.str.8, ptr @.str.26, ptr @.str.28, ptr @.str.27, ptr @.str.33, ptr @.str.10, ptr @.str.12], align 4
@.str.30 = private unnamed_addr constant [4 x i8] c"twd\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"clk_m\00", align 1
@.str.32 = private unnamed_addr constant [8 x i8] c"clk_32k\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"unused\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"dsia\00", align 1
@periph_clk_enb_refcnt = external dso_local local_unnamed_addr global ptr, align 4
@.str.35 = private unnamed_addr constant [5 x i8] c"pcie\00", align 1
@.str.36 = private unnamed_addr constant [4 x i8] c"afi\00", align 1
@.str.37 = private unnamed_addr constant [3 x i8] c"mc\00", align 1
@.str.38 = private unnamed_addr constant [4 x i8] c"emc\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"cml0\00", align 1
@.str.40 = private unnamed_addr constant [6 x i8] c"pll_e\00", align 1
@cml_lock = internal global %struct.spinlock zeroinitializer, align 4
@.str.41 = private unnamed_addr constant [5 x i8] c"cml1\00", align 1
@tegra_periph_clk_list = internal global [9 x %struct.tegra_periph_init_data] [%struct.tegra_periph_init_data { ptr @.str.42, i32 163, %union.anon.5 { ptr @spdif_out_parents }, i32 4, %struct.tegra_clk_periph { i32 0, %struct.clk_hw zeroinitializer, %struct.clk_mux { %struct.clk_hw zeroinitializer, ptr null, ptr null, i32 3, i8 30, i8 0, ptr null }, %struct.tegra_clk_frac_div { %struct.clk_hw zeroinitializer, ptr null, i8 1, i8 0, i8 8, i8 1, ptr null }, %struct.tegra_clk_periph_gate { i32 0, %struct.clk_hw zeroinitializer, ptr null, i8 4, i32 10, ptr null, ptr null }, ptr @clk_mux_ops, ptr @tegra_clk_frac_div_ops, ptr @tegra_clk_periph_gate_ops }, i32 264, ptr null, ptr null, i32 0 }, %struct.tegra_periph_init_data { ptr @.str.43, i32 106, %union.anon.5 { ptr @mux_pllacp_clkm }, i32 4, %struct.tegra_clk_periph { i32 0, %struct.clk_hw zeroinitializer, %struct.clk_mux { %struct.clk_hw zeroinitializer, ptr null, ptr null, i32 3, i8 30, i8 0, ptr null }, %struct.tegra_clk_frac_div { %struct.clk_hw zeroinitializer, ptr null, i8 1, i8 0, i8 8, i8 1, ptr null }, %struct.tegra_clk_periph_gate { i32 0, %struct.clk_hw zeroinitializer, ptr null, i8 0, i32 106, ptr null, ptr null }, ptr @clk_mux_ops, ptr @tegra_clk_frac_div_ops, ptr @tegra_clk_periph_gate_ops }, i32 976, ptr null, ptr null, i32 0 }, %struct.tegra_periph_init_data { ptr @.str.44, i32 108, %union.anon.5 { ptr @mux_pllacp_clkm }, i32 4, %struct.tegra_clk_periph { i32 0, %struct.clk_hw zeroinitializer, %struct.clk_mux { %struct.clk_hw zeroinitializer, ptr null, ptr null, i32 3, i8 30, i8 0, ptr null }, %struct.tegra_clk_frac_div { %struct.clk_hw zeroinitializer, ptr null, i8 1, i8 0, i8 8, i8 1, ptr null }, %struct.tegra_clk_periph_gate { i32 0, %struct.clk_hw zeroinitializer, ptr null, i8 0, i32 108, ptr null, ptr null }, ptr @clk_mux_ops, ptr @tegra_clk_frac_div_ops, ptr @tegra_clk_periph_gate_ops }, i32 984, ptr null, ptr null, i32 0 }, %struct.tegra_periph_init_data { ptr @.str.45, i32 109, %union.anon.5 { ptr @mux_pllacp_clkm }, i32 4, %struct.tegra_clk_periph { i32 0, %struct.clk_hw zeroinitializer, %struct.clk_mux { %struct.clk_hw zeroinitializer, ptr null, ptr null, i32 3, i8 30, i8 0, ptr null }, %struct.tegra_clk_frac_div { %struct.clk_hw zeroinitializer, ptr null, i8 1, i8 0, i8 8, i8 1, ptr null }, %struct.tegra_clk_periph_gate { i32 0, %struct.clk_hw zeroinitializer, ptr null, i8 0, i32 109, ptr null, ptr null }, ptr @clk_mux_ops, ptr @tegra_clk_frac_div_ops, ptr @tegra_clk_periph_gate_ops }, i32 988, ptr null, ptr null, i32 0 }, %struct.tegra_periph_init_data { ptr @.str.46, i32 110, %union.anon.5 { ptr @mux_pllacp_clkm }, i32 4, %struct.tegra_clk_periph { i32 0, %struct.clk_hw zeroinitializer, %struct.clk_mux { %struct.clk_hw zeroinitializer, ptr null, ptr null, i32 3, i8 30, i8 0, ptr null }, %struct.tegra_clk_frac_div { %struct.clk_hw zeroinitializer, ptr null, i8 1, i8 0, i8 8, i8 1, ptr null }, %struct.tegra_clk_periph_gate { i32 0, %struct.clk_hw zeroinitializer, ptr null, i8 0, i32 110, ptr null, ptr null }, ptr @clk_mux_ops, ptr @tegra_clk_frac_div_ops, ptr @tegra_clk_periph_gate_ops }, i32 992, ptr null, ptr null, i32 0 }, %struct.tegra_periph_init_data { ptr @.str.47, i32 98, %union.anon.5 { ptr @mux_pllmcpa }, i32 4, %struct.tegra_clk_periph { i32 0, %struct.clk_hw zeroinitializer, %struct.clk_mux { %struct.clk_hw zeroinitializer, ptr null, ptr null, i32 3, i8 30, i8 0, ptr null }, %struct.tegra_clk_frac_div { %struct.clk_hw zeroinitializer, ptr null, i8 5, i8 0, i8 8, i8 1, ptr null }, %struct.tegra_clk_periph_gate { i32 0, %struct.clk_hw zeroinitializer, ptr null, i8 0, i32 98, ptr null, ptr null }, ptr @clk_mux_ops, ptr @tegra_clk_frac_div_ops, ptr @tegra_clk_periph_gate_ops }, i32 944, ptr null, ptr null, i32 0 }, %struct.tegra_periph_init_data { ptr @.str.48, i32 127, %union.anon.5 { ptr @mux_pllpcm_clkm }, i32 4, %struct.tegra_clk_periph { i32 0, %struct.clk_hw zeroinitializer, %struct.clk_mux { %struct.clk_hw zeroinitializer, ptr null, ptr null, i32 3, i8 30, i8 0, ptr null }, %struct.tegra_clk_frac_div { %struct.clk_hw zeroinitializer, ptr null, i8 5, i8 0, i8 8, i8 1, ptr null }, %struct.tegra_clk_periph_gate { i32 0, %struct.clk_hw zeroinitializer, ptr null, i8 0, i32 127, ptr null, ptr null }, ptr @clk_mux_ops, ptr @tegra_clk_frac_div_ops, ptr @tegra_clk_periph_gate_ops }, i32 1068, ptr null, ptr null, i32 0 }, %struct.tegra_periph_init_data { ptr @.str.49, i32 51, %union.anon.5 { ptr @mux_pllpmdacd2_clkm }, i32 7, %struct.tegra_clk_periph { i32 0, %struct.clk_hw zeroinitializer, %struct.clk_mux { %struct.clk_hw zeroinitializer, ptr null, ptr null, i32 7, i8 29, i8 0, ptr null }, %struct.tegra_clk_frac_div { %struct.clk_hw zeroinitializer, ptr null, i8 1, i8 0, i8 8, i8 1, ptr null }, %struct.tegra_clk_periph_gate { i32 0, %struct.clk_hw zeroinitializer, ptr null, i8 0, i32 51, ptr null, ptr null }, ptr @clk_mux_ops, ptr @tegra_clk_frac_div_ops, ptr @tegra_clk_periph_gate_ops }, i32 396, ptr null, ptr null, i32 0 }, %struct.tegra_periph_init_data { ptr @.str.50, i32 17, %union.anon.5 { ptr @pwm_parents }, i32 4, %struct.tegra_clk_periph { i32 0, %struct.clk_hw zeroinitializer, %struct.clk_mux { %struct.clk_hw zeroinitializer, ptr null, ptr null, i32 3, i8 28, i8 0, ptr null }, %struct.tegra_clk_frac_div { %struct.clk_hw zeroinitializer, ptr null, i8 0, i8 0, i8 8, i8 1, ptr null }, %struct.tegra_clk_periph_gate { i32 0, %struct.clk_hw zeroinitializer, ptr null, i8 4, i32 17, ptr null, ptr null }, ptr @clk_mux_ops, ptr @tegra_clk_frac_div_ops, ptr @tegra_clk_periph_gate_ops }, i32 272, ptr null, ptr null, i32 0 }], align 4
@tegra_periph_nodiv_clk_list = internal global [1 x %struct.tegra_periph_init_data] [%struct.tegra_periph_init_data { ptr @.str.53, i32 82, %union.anon.5 { ptr @mux_plld_out0_plld2_out0 }, i32 2, %struct.tegra_clk_periph { i32 0, %struct.clk_hw zeroinitializer, %struct.clk_mux { %struct.clk_hw zeroinitializer, ptr null, ptr null, i32 1, i8 25, i8 0, ptr null }, %struct.tegra_clk_frac_div zeroinitializer, %struct.tegra_clk_periph_gate { i32 0, %struct.clk_hw zeroinitializer, ptr null, i8 0, i32 82, ptr null, ptr null }, ptr @clk_mux_ops, ptr @tegra_clk_frac_div_ops, ptr @tegra_clk_periph_gate_ops }, i32 208, ptr null, ptr null, i32 0 }], align 4
@pll_p_params = internal global %struct.tegra_clk_pll_params { i32 2000000, i32 31000000, i32 1000000, i32 6000000, i32 20000000, i32 1400000000, i32 160, i32 172, i32 0, i32 134217728, i32 18, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, [6 x i32] zeroinitializer, i32 0, i32 0, i32 1091, i32 0, i32 0, i32 300, i32 0, i8 0, ptr null, ptr null, ptr @pll_p_freq_table, i32 408000000, i16 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, section ".data..ro_after_init", align 4
@.str.42 = private unnamed_addr constant [10 x i8] c"spdif_out\00", align 1
@spdif_out_parents = internal global [4 x ptr] [ptr @.str.51, ptr @.str.52, ptr @.str.19, ptr @.str.31], align 4
@clk_mux_ops = external dso_local constant %struct.clk_ops, align 4
@tegra_clk_frac_div_ops = external dso_local constant %struct.clk_ops, align 4
@tegra_clk_periph_gate_ops = external dso_local constant %struct.clk_ops, align 4
@.str.43 = private unnamed_addr constant [8 x i8] c"d_audio\00", align 1
@mux_pllacp_clkm = internal global [4 x ptr] [ptr @.str.51, ptr @.str.33, ptr @.str.19, ptr @.str.31], align 4
@.str.44 = private unnamed_addr constant [5 x i8] c"dam0\00", align 1
@.str.45 = private unnamed_addr constant [5 x i8] c"dam1\00", align 1
@.str.46 = private unnamed_addr constant [5 x i8] c"dam2\00", align 1
@.str.47 = private unnamed_addr constant [4 x i8] c"3d2\00", align 1
@mux_pllmcpa = internal global [4 x ptr] [ptr @.str.8, ptr @.str.5, ptr @.str.19, ptr @.str.51], align 4
@.str.48 = private unnamed_addr constant [3 x i8] c"se\00", align 1
@mux_pllpcm_clkm = internal global [4 x ptr] [ptr @.str.19, ptr @.str.5, ptr @.str.8, ptr @.str.31], align 4
@.str.49 = private unnamed_addr constant [5 x i8] c"hdmi\00", align 1
@mux_pllpmdacd2_clkm = internal global [7 x ptr] [ptr @.str.19, ptr @.str.8, ptr @.str.15, ptr @.str.51, ptr @.str.5, ptr @.str.17, ptr @.str.31], align 4
@.str.50 = private unnamed_addr constant [4 x i8] c"pwm\00", align 1
@pwm_parents = internal global [4 x ptr] [ptr @.str.19, ptr @.str.5, ptr @.str.32, ptr @.str.31], align 4
@.str.51 = private unnamed_addr constant [11 x i8] c"pll_a_out0\00", align 1
@.str.52 = private unnamed_addr constant [9 x i8] c"spdif_2x\00", align 1
@.str.53 = private unnamed_addr constant [5 x i8] c"dsib\00", align 1
@mux_plld_out0_plld2_out0 = internal global [2 x ptr] [ptr @.str.15, ptr @.str.17], align 4
@pll_p_freq_table = internal global [6 x %struct.tegra_clk_pll_freq_table] [%struct.tegra_clk_pll_freq_table { i32 12000000, i32 216000000, i32 432, i32 12, i8 2, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 13000000, i32 216000000, i32 432, i32 13, i8 2, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 16800000, i32 216000000, i32 360, i32 14, i8 2, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 19200000, i32 216000000, i32 360, i32 16, i8 2, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 26000000, i32 216000000, i32 432, i32 26, i8 2, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table zeroinitializer], align 4
@.str.54 = private unnamed_addr constant [6 x i8] c"pll_a\00", align 1
@pll_a_params = internal global %struct.tegra_clk_pll_params { i32 2000000, i32 31000000, i32 1000000, i32 6000000, i32 20000000, i32 1400000000, i32 176, i32 188, i32 0, i32 134217728, i32 18, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, [6 x i32] zeroinitializer, i32 0, i32 0, i32 1027, i32 0, i32 0, i32 300, i32 0, i8 0, ptr null, ptr null, ptr @pll_a_freq_table, i32 0, i16 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.55 = private unnamed_addr constant [11 x i8] c"pll_p_out1\00", align 1
@pll_a_freq_table = internal global [7 x %struct.tegra_clk_pll_freq_table] [%struct.tegra_clk_pll_freq_table { i32 9600000, i32 564480000, i32 294, i32 5, i8 1, i8 4, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 9600000, i32 552960000, i32 288, i32 5, i8 1, i8 4, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 9600000, i32 24000000, i32 5, i32 2, i8 1, i8 1, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 28800000, i32 56448000, i32 49, i32 25, i8 1, i8 1, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 28800000, i32 73728000, i32 64, i32 25, i8 1, i8 1, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 28800000, i32 24000000, i32 5, i32 6, i8 1, i8 1, i16 0 }, %struct.tegra_clk_pll_freq_table zeroinitializer], align 4
@.str.56 = private unnamed_addr constant [10 x i8] c"utmip-pad\00", align 1
@.str.57 = private unnamed_addr constant [13 x i8] c"tegra-ehci.0\00", align 1
@.str.58 = private unnamed_addr constant [10 x i8] c"tegra-otg\00", align 1
@.str.59 = private unnamed_addr constant [10 x i8] c"tegra-avp\00", align 1
@.str.60 = private unnamed_addr constant [5 x i8] c"bsev\00", align 1
@.str.61 = private unnamed_addr constant [6 x i8] c"nvavp\00", align 1
@.str.62 = private unnamed_addr constant [10 x i8] c"tegra-aes\00", align 1
@.str.63 = private unnamed_addr constant [4 x i8] c"vde\00", align 1
@.str.64 = private unnamed_addr constant [5 x i8] c"bsea\00", align 1
@.str.65 = private unnamed_addr constant [15 x i8] c"tegra_sata_cml\00", align 1
@.str.66 = private unnamed_addr constant [11 x i8] c"tegra_pcie\00", align 1
@.str.67 = private unnamed_addr constant [4 x i8] c"cml\00", align 1
@.str.68 = private unnamed_addr constant [4 x i8] c"vcp\00", align 1
@tegra30_car_initialized = internal unnamed_addr global i1 false, align 1
@tegra30_cpu_clk_sctx.0 = internal unnamed_addr global i32 0, align 4
@tegra30_cpu_clk_sctx.1 = internal unnamed_addr global i32 0, align 4
@tegra30_cpu_clk_sctx.2 = internal unnamed_addr global i32 0, align 4
@tegra30_cpu_clk_sctx.3 = internal unnamed_addr global i32 0, align 4
@tegra30_cpu_clk_sctx.4 = internal unnamed_addr global i32 0, align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@tegra30_car_driver = internal global %struct.platform_driver { ptr @tegra30_car_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.69, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @tegra30_car_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str.69 = private unnamed_addr constant [12 x i8] c"tegra30-car\00", align 1
@tegra30_car_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra30-car\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@pll_c_params = internal global %struct.tegra_clk_pll_params { i32 2000000, i32 31000000, i32 1000000, i32 6000000, i32 20000000, i32 1400000000, i32 128, i32 140, i32 0, i32 134217728, i32 18, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, [6 x i32] zeroinitializer, i32 0, i32 0, i32 1027, i32 0, i32 0, i32 300, i32 0, i8 0, ptr null, ptr null, ptr @pll_c_freq_table, i32 0, i16 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, section ".data..ro_after_init", align 4
@pll_e_params = internal global %struct.tegra_clk_pll_params { i32 12000000, i32 216000000, i32 12000000, i32 12000000, i32 1200000000, i32 -1894967296, i32 232, i32 236, i32 0, i32 2048, i32 9, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, [6 x i32] zeroinitializer, i32 0, i32 0, i32 1472, i32 0, i32 0, i32 300, i32 0, i8 0, ptr @plle_p, ptr null, ptr @pll_e_freq_table, i32 100000000, i16 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, section ".data..ro_after_init", align 4
@pll_m_params = internal global %struct.tegra_clk_pll_params { i32 2000000, i32 31000000, i32 1000000, i32 6000000, i32 20000000, i32 1200000000, i32 144, i32 156, i32 0, i32 134217728, i32 18, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, [6 x i32] zeroinitializer, i32 476, i32 476, i32 1131, i32 0, i32 0, i32 300, i32 0, i8 0, ptr null, ptr @pllm_nmp, ptr @pll_m_freq_table, i32 0, i16 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, section ".data..ro_after_init", align 4
@.str.70 = private unnamed_addr constant [5 x i8] c"sclk\00", align 1
@sclk_parents = internal global [8 x ptr] [ptr @.str.31, ptr @.str.6, ptr @.str.24, ptr @.str.22, ptr @.str.71, ptr @.str.33, ptr @.str.32, ptr @.str.9], align 4
@devclks = internal global [147 x %struct.tegra_devclk] [%struct.tegra_devclk { i32 175, ptr null, ptr @.str.5 }, %struct.tegra_devclk { i32 176, ptr null, ptr @.str.6 }, %struct.tegra_devclk { i32 179, ptr null, ptr @.str.19 }, %struct.tegra_devclk { i32 180, ptr null, ptr @.str.55 }, %struct.tegra_devclk { i32 181, ptr null, ptr @.str.71 }, %struct.tegra_devclk { i32 182, ptr null, ptr @.str.22 }, %struct.tegra_devclk { i32 183, ptr null, ptr @.str.24 }, %struct.tegra_devclk { i32 177, ptr null, ptr @.str.8 }, %struct.tegra_devclk { i32 178, ptr null, ptr @.str.9 }, %struct.tegra_devclk { i32 191, ptr null, ptr @.str.10 }, %struct.tegra_devclk { i32 192, ptr null, ptr @.str.12 }, %struct.tegra_devclk { i32 190, ptr null, ptr @.str.13 }, %struct.tegra_devclk { i32 186, ptr null, ptr @.str.14 }, %struct.tegra_devclk { i32 187, ptr null, ptr @.str.15 }, %struct.tegra_devclk { i32 188, ptr null, ptr @.str.16 }, %struct.tegra_devclk { i32 189, ptr null, ptr @.str.17 }, %struct.tegra_devclk { i32 184, ptr null, ptr @.str.54 }, %struct.tegra_devclk { i32 185, ptr null, ptr @.str.51 }, %struct.tegra_devclk { i32 193, ptr null, ptr @.str.40 }, %struct.tegra_devclk { i32 194, ptr null, ptr @.str.72 }, %struct.tegra_devclk { i32 195, ptr null, ptr @.str.73 }, %struct.tegra_devclk { i32 196, ptr null, ptr @.str.74 }, %struct.tegra_devclk { i32 197, ptr null, ptr @.str.75 }, %struct.tegra_devclk { i32 198, ptr null, ptr @.str.76 }, %struct.tegra_devclk { i32 199, ptr null, ptr @.str.77 }, %struct.tegra_devclk { i32 200, ptr null, ptr @.str.78 }, %struct.tegra_devclk { i32 201, ptr null, ptr @.str.79 }, %struct.tegra_devclk { i32 202, ptr null, ptr @.str.80 }, %struct.tegra_devclk { i32 203, ptr null, ptr @.str.81 }, %struct.tegra_devclk { i32 204, ptr null, ptr @.str.82 }, %struct.tegra_devclk { i32 205, ptr null, ptr @.str.83 }, %struct.tegra_devclk { i32 206, ptr null, ptr @.str.84 }, %struct.tegra_devclk { i32 113, ptr null, ptr @.str.85 }, %struct.tegra_devclk { i32 114, ptr null, ptr @.str.86 }, %struct.tegra_devclk { i32 115, ptr null, ptr @.str.87 }, %struct.tegra_devclk { i32 116, ptr null, ptr @.str.88 }, %struct.tegra_devclk { i32 117, ptr null, ptr @.str.89 }, %struct.tegra_devclk { i32 118, ptr null, ptr @.str.52 }, %struct.tegra_devclk { i32 120, ptr null, ptr @.str.90 }, %struct.tegra_devclk { i32 121, ptr null, ptr @.str.91 }, %struct.tegra_devclk { i32 122, ptr null, ptr @.str.92 }, %struct.tegra_devclk { i32 212, ptr null, ptr @.str.25 }, %struct.tegra_devclk { i32 213, ptr null, ptr @.str.29 }, %struct.tegra_devclk { i32 210, ptr null, ptr @.str.70 }, %struct.tegra_devclk { i32 217, ptr null, ptr @.str.93 }, %struct.tegra_devclk { i32 218, ptr null, ptr @.str.94 }, %struct.tegra_devclk { i32 214, ptr null, ptr @.str.30 }, %struct.tegra_devclk { i32 57, ptr null, ptr @.str.38 }, %struct.tegra_devclk { i32 170, ptr null, ptr @.str.32 }, %struct.tegra_devclk { i32 220, ptr null, ptr @.str.95 }, %struct.tegra_devclk { i32 172, ptr null, ptr @.str.96 }, %struct.tegra_devclk { i32 173, ptr null, ptr @.str.97 }, %struct.tegra_devclk { i32 215, ptr null, ptr @.str.39 }, %struct.tegra_devclk { i32 216, ptr null, ptr @.str.41 }, %struct.tegra_devclk { i32 171, ptr null, ptr @.str.31 }, %struct.tegra_devclk { i32 174, ptr null, ptr @.str.11 }, %struct.tegra_devclk { i32 92, ptr @.str.98, ptr @.str.99 }, %struct.tegra_devclk { i32 29, ptr @.str.59, ptr @.str.68 }, %struct.tegra_devclk { i32 62, ptr @.str.59, ptr @.str.64 }, %struct.tegra_devclk { i32 63, ptr @.str.62, ptr @.str.60 }, %struct.tegra_devclk { i32 48, ptr @.str.100, ptr @.str.34 }, %struct.tegra_devclk { i32 52, ptr @.str.101, ptr @.str.102 }, %struct.tegra_devclk { i32 23, ptr @.str.101, ptr @.str.103 }, %struct.tegra_devclk { i32 70, ptr @.str.104, ptr @.str.35 }, %struct.tegra_devclk { i32 72, ptr @.str.104, ptr @.str.36 }, %struct.tegra_devclk { i32 166, ptr null, ptr @.str.105 }, %struct.tegra_devclk { i32 167, ptr @.str.106, ptr @.str.107 }, %struct.tegra_devclk { i32 107, ptr @.str.108, ptr @.str.109 }, %struct.tegra_devclk { i32 128, ptr @.str.110, ptr @.str.111 }, %struct.tegra_devclk { i32 34, ptr @.str.112, ptr null }, %struct.tegra_devclk { i32 4, ptr @.str.113, ptr null }, %struct.tegra_devclk { i32 5, ptr @.str.114, ptr null }, %struct.tegra_devclk { i32 36, ptr @.str.115, ptr null }, %struct.tegra_devclk { i32 22, ptr @.str.116, ptr null }, %struct.tegra_devclk { i32 58, ptr @.str.117, ptr null }, %struct.tegra_devclk { i32 58, ptr @.str.118, ptr null }, %struct.tegra_devclk { i32 40, ptr @.str.119, ptr null }, %struct.tegra_devclk { i32 129, ptr @.str.120, ptr null }, %struct.tegra_devclk { i32 79, ptr @.str.121, ptr null }, %struct.tegra_devclk { i32 30, ptr @.str.122, ptr null }, %struct.tegra_devclk { i32 11, ptr @.str.123, ptr null }, %struct.tegra_devclk { i32 18, ptr @.str.124, ptr null }, %struct.tegra_devclk { i32 101, ptr @.str.125, ptr null }, %struct.tegra_devclk { i32 102, ptr @.str.126, ptr null }, %struct.tegra_devclk { i32 163, ptr @.str.127, ptr @.str.42 }, %struct.tegra_devclk { i32 162, ptr @.str.127, ptr @.str.128 }, %struct.tegra_devclk { i32 106, ptr @.str.108, ptr @.str.43 }, %struct.tegra_devclk { i32 108, ptr @.str.129, ptr null }, %struct.tegra_devclk { i32 109, ptr @.str.130, ptr null }, %struct.tegra_devclk { i32 110, ptr @.str.131, ptr null }, %struct.tegra_devclk { i32 125, ptr @.str.110, ptr @.str.132 }, %struct.tegra_devclk { i32 111, ptr @.str.110, ptr @.str.133 }, %struct.tegra_devclk { i32 41, ptr @.str.134, ptr null }, %struct.tegra_devclk { i32 44, ptr @.str.135, ptr null }, %struct.tegra_devclk { i32 46, ptr @.str.136, ptr null }, %struct.tegra_devclk { i32 68, ptr @.str.137, ptr null }, %struct.tegra_devclk { i32 104, ptr @.str.138, ptr null }, %struct.tegra_devclk { i32 105, ptr @.str.139, ptr null }, %struct.tegra_devclk { i32 123, ptr @.str.140, ptr null }, %struct.tegra_devclk { i32 124, ptr @.str.141, ptr null }, %struct.tegra_devclk { i32 13, ptr @.str.142, ptr null }, %struct.tegra_devclk { i32 80, ptr @.str.143, ptr null }, %struct.tegra_devclk { i32 161, ptr @.str.144, ptr null }, %struct.tegra_devclk { i32 73, ptr @.str.145, ptr null }, %struct.tegra_devclk { i32 76, ptr @.str.146, ptr null }, %struct.tegra_devclk { i32 71, ptr @.str.147, ptr null }, %struct.tegra_devclk { i32 50, ptr @.str.148, ptr null }, %struct.tegra_devclk { i32 100, ptr @.str.149, ptr null }, %struct.tegra_devclk { i32 81, ptr @.str.150, ptr null }, %struct.tegra_devclk { i32 61, ptr @.str.63, ptr null }, %struct.tegra_devclk { i32 164, ptr @.str.101, ptr @.str.151 }, %struct.tegra_devclk { i32 19, ptr @.str.152, ptr null }, %struct.tegra_devclk { i32 60, ptr @.str.153, ptr null }, %struct.tegra_devclk { i32 28, ptr @.str.154, ptr null }, %struct.tegra_devclk { i32 24, ptr @.str.155, ptr null }, %struct.tegra_devclk { i32 98, ptr @.str.47, ptr null }, %struct.tegra_devclk { i32 21, ptr @.str.156, ptr null }, %struct.tegra_devclk { i32 127, ptr @.str.48, ptr null }, %struct.tegra_devclk { i32 99, ptr @.str.157, ptr null }, %struct.tegra_devclk { i32 42, ptr @.str.158, ptr null }, %struct.tegra_devclk { i32 14, ptr @.str.159, ptr null }, %struct.tegra_devclk { i32 9, ptr @.str.160, ptr null }, %struct.tegra_devclk { i32 69, ptr @.str.161, ptr null }, %struct.tegra_devclk { i32 15, ptr @.str.162, ptr null }, %struct.tegra_devclk { i32 168, ptr @.str.163, ptr null }, %struct.tegra_devclk { i32 169, ptr @.str.164, ptr null }, %struct.tegra_devclk { i32 53, ptr @.str.165, ptr null }, %struct.tegra_devclk { i32 119, ptr @.str.166, ptr null }, %struct.tegra_devclk { i32 165, ptr @.str.101, ptr @.str.167 }, %struct.tegra_devclk { i32 12, ptr @.str.168, ptr @.str.169 }, %struct.tegra_devclk { i32 54, ptr @.str.170, ptr @.str.169 }, %struct.tegra_devclk { i32 67, ptr @.str.171, ptr @.str.169 }, %struct.tegra_devclk { i32 103, ptr @.str.172, ptr @.str.169 }, %struct.tegra_devclk { i32 47, ptr @.str.173, ptr @.str.169 }, %struct.tegra_devclk { i32 6, ptr @.str.174, ptr null }, %struct.tegra_devclk { i32 160, ptr @.str.175, ptr null }, %struct.tegra_devclk { i32 55, ptr @.str.176, ptr null }, %struct.tegra_devclk { i32 65, ptr @.str.177, ptr null }, %struct.tegra_devclk { i32 66, ptr @.str.178, ptr null }, %struct.tegra_devclk { i32 51, ptr @.str.49, ptr null }, %struct.tegra_devclk { i32 120, ptr @.str.90, ptr null }, %struct.tegra_devclk { i32 121, ptr @.str.91, ptr null }, %struct.tegra_devclk { i32 122, ptr @.str.92, ptr null }, %struct.tegra_devclk { i32 17, ptr @.str.50, ptr null }, %struct.tegra_devclk { i32 27, ptr @.str.100, ptr null }, %struct.tegra_devclk { i32 26, ptr @.str.179, ptr null }, %struct.tegra_devclk { i32 82, ptr @.str.179, ptr null }], align 4
@init_table = internal global [41 x %struct.tegra_clk_init_table] [%struct.tegra_clk_init_table { i32 6, i32 179, i32 408000000, i32 0 }, %struct.tegra_clk_init_table { i32 160, i32 179, i32 408000000, i32 0 }, %struct.tegra_clk_init_table { i32 55, i32 179, i32 408000000, i32 0 }, %struct.tegra_clk_init_table { i32 65, i32 179, i32 408000000, i32 0 }, %struct.tegra_clk_init_table { i32 66, i32 179, i32 408000000, i32 0 }, %struct.tegra_clk_init_table { i32 184, i32 309, i32 564480000, i32 0 }, %struct.tegra_clk_init_table { i32 185, i32 309, i32 11289600, i32 0 }, %struct.tegra_clk_init_table { i32 30, i32 185, i32 11289600, i32 0 }, %struct.tegra_clk_init_table { i32 11, i32 185, i32 11289600, i32 0 }, %struct.tegra_clk_init_table { i32 18, i32 185, i32 11289600, i32 0 }, %struct.tegra_clk_init_table { i32 101, i32 185, i32 11289600, i32 0 }, %struct.tegra_clk_init_table { i32 102, i32 185, i32 11289600, i32 0 }, %struct.tegra_clk_init_table { i32 14, i32 179, i32 48000000, i32 0 }, %struct.tegra_clk_init_table { i32 9, i32 179, i32 48000000, i32 0 }, %struct.tegra_clk_init_table { i32 69, i32 179, i32 48000000, i32 0 }, %struct.tegra_clk_init_table { i32 73, i32 309, i32 0, i32 1 }, %struct.tegra_clk_init_table { i32 99, i32 309, i32 0, i32 1 }, %struct.tegra_clk_init_table { i32 41, i32 179, i32 100000000, i32 0 }, %struct.tegra_clk_init_table { i32 44, i32 179, i32 100000000, i32 0 }, %struct.tegra_clk_init_table { i32 46, i32 179, i32 100000000, i32 0 }, %struct.tegra_clk_init_table { i32 68, i32 179, i32 100000000, i32 0 }, %struct.tegra_clk_init_table { i32 104, i32 179, i32 100000000, i32 0 }, %struct.tegra_clk_init_table { i32 105, i32 179, i32 100000000, i32 0 }, %struct.tegra_clk_init_table { i32 175, i32 309, i32 600000000, i32 0 }, %struct.tegra_clk_init_table { i32 28, i32 175, i32 150000000, i32 0 }, %struct.tegra_clk_init_table { i32 214, i32 309, i32 0, i32 1 }, %struct.tegra_clk_init_table { i32 21, i32 175, i32 300000000, i32 0 }, %struct.tegra_clk_init_table { i32 24, i32 175, i32 300000000, i32 0 }, %struct.tegra_clk_init_table { i32 98, i32 175, i32 300000000, i32 0 }, %struct.tegra_clk_init_table { i32 190, i32 309, i32 480000000, i32 0 }, %struct.tegra_clk_init_table { i32 61, i32 175, i32 300000000, i32 0 }, %struct.tegra_clk_init_table { i32 194, i32 309, i32 24000000, i32 0 }, %struct.tegra_clk_init_table { i32 195, i32 309, i32 24000000, i32 0 }, %struct.tegra_clk_init_table { i32 196, i32 309, i32 24000000, i32 0 }, %struct.tegra_clk_init_table { i32 197, i32 309, i32 24000000, i32 0 }, %struct.tegra_clk_init_table { i32 198, i32 309, i32 24000000, i32 0 }, %struct.tegra_clk_init_table { i32 199, i32 309, i32 24000000, i32 0 }, %struct.tegra_clk_init_table { i32 200, i32 309, i32 24000000, i32 0 }, %struct.tegra_clk_init_table { i32 125, i32 179, i32 102000000, i32 0 }, %struct.tegra_clk_init_table { i32 111, i32 179, i32 48000000, i32 0 }, %struct.tegra_clk_init_table { i32 309, i32 309, i32 0, i32 0 }], align 4
@pll_c_freq_table = internal global [31 x %struct.tegra_clk_pll_freq_table] [%struct.tegra_clk_pll_freq_table { i32 12000000, i32 1040000000, i32 520, i32 6, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 13000000, i32 1040000000, i32 480, i32 6, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 16800000, i32 1040000000, i32 495, i32 8, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 19200000, i32 1040000000, i32 325, i32 6, i8 1, i8 6, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 26000000, i32 1040000000, i32 520, i32 13, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 12000000, i32 832000000, i32 416, i32 6, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 13000000, i32 832000000, i32 832, i32 13, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 16800000, i32 832000000, i32 396, i32 8, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 19200000, i32 832000000, i32 260, i32 6, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 26000000, i32 832000000, i32 416, i32 13, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 12000000, i32 624000000, i32 624, i32 12, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 13000000, i32 624000000, i32 624, i32 13, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 16800000, i32 600000000, i32 520, i32 14, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 19200000, i32 624000000, i32 520, i32 16, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 26000000, i32 624000000, i32 624, i32 26, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 12000000, i32 600000000, i32 600, i32 12, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 13000000, i32 600000000, i32 600, i32 13, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 16800000, i32 600000000, i32 500, i32 14, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 19200000, i32 600000000, i32 375, i32 12, i8 1, i8 6, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 26000000, i32 600000000, i32 600, i32 26, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 12000000, i32 520000000, i32 520, i32 12, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 13000000, i32 520000000, i32 520, i32 13, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 16800000, i32 520000000, i32 495, i32 16, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 19200000, i32 520000000, i32 325, i32 12, i8 1, i8 6, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 26000000, i32 520000000, i32 520, i32 26, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 12000000, i32 416000000, i32 416, i32 12, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 13000000, i32 416000000, i32 416, i32 13, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 16800000, i32 416000000, i32 396, i32 16, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 19200000, i32 416000000, i32 260, i32 12, i8 1, i8 6, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 26000000, i32 416000000, i32 416, i32 26, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table zeroinitializer], align 4
@plle_p = internal constant [3 x %struct.pdiv_map] [%struct.pdiv_map { i8 18, i8 18 }, %struct.pdiv_map { i8 24, i8 24 }, %struct.pdiv_map zeroinitializer], align 1
@pll_e_freq_table = internal global [3 x %struct.tegra_clk_pll_freq_table] [%struct.tegra_clk_pll_freq_table { i32 12000000, i32 100000000, i32 150, i32 1, i8 18, i8 11, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 216000000, i32 100000000, i32 200, i32 18, i8 24, i8 13, i16 0 }, %struct.tegra_clk_pll_freq_table zeroinitializer], align 4
@pllm_nmp = internal global %struct.div_nmp { i8 8, i8 10, i8 0, i8 5, i8 20, i8 3, i8 5, i8 0, i8 15 }, align 1
@pll_m_freq_table = internal global [11 x %struct.tegra_clk_pll_freq_table] [%struct.tegra_clk_pll_freq_table { i32 12000000, i32 666000000, i32 666, i32 12, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 13000000, i32 666000000, i32 666, i32 13, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 16800000, i32 666000000, i32 555, i32 14, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 19200000, i32 666000000, i32 555, i32 16, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 26000000, i32 666000000, i32 666, i32 26, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 12000000, i32 600000000, i32 600, i32 12, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 13000000, i32 600000000, i32 600, i32 13, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 16800000, i32 600000000, i32 500, i32 14, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 19200000, i32 600000000, i32 375, i32 12, i8 1, i8 6, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 26000000, i32 600000000, i32 600, i32 26, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table zeroinitializer], align 4
@.str.71 = private unnamed_addr constant [11 x i8] c"pll_p_out2\00", align 1
@.str.72 = private unnamed_addr constant [14 x i8] c"spdif_in_sync\00", align 1
@.str.73 = private unnamed_addr constant [10 x i8] c"i2s0_sync\00", align 1
@.str.74 = private unnamed_addr constant [10 x i8] c"i2s1_sync\00", align 1
@.str.75 = private unnamed_addr constant [10 x i8] c"i2s2_sync\00", align 1
@.str.76 = private unnamed_addr constant [10 x i8] c"i2s3_sync\00", align 1
@.str.77 = private unnamed_addr constant [10 x i8] c"i2s4_sync\00", align 1
@.str.78 = private unnamed_addr constant [12 x i8] c"vimclk_sync\00", align 1
@.str.79 = private unnamed_addr constant [7 x i8] c"audio0\00", align 1
@.str.80 = private unnamed_addr constant [7 x i8] c"audio1\00", align 1
@.str.81 = private unnamed_addr constant [7 x i8] c"audio2\00", align 1
@.str.82 = private unnamed_addr constant [7 x i8] c"audio3\00", align 1
@.str.83 = private unnamed_addr constant [7 x i8] c"audio4\00", align 1
@.str.84 = private unnamed_addr constant [6 x i8] c"spdif\00", align 1
@.str.85 = private unnamed_addr constant [10 x i8] c"audio0_2x\00", align 1
@.str.86 = private unnamed_addr constant [10 x i8] c"audio1_2x\00", align 1
@.str.87 = private unnamed_addr constant [10 x i8] c"audio2_2x\00", align 1
@.str.88 = private unnamed_addr constant [10 x i8] c"audio3_2x\00", align 1
@.str.89 = private unnamed_addr constant [10 x i8] c"audio4_2x\00", align 1
@.str.90 = private unnamed_addr constant [8 x i8] c"extern1\00", align 1
@.str.91 = private unnamed_addr constant [8 x i8] c"extern2\00", align 1
@.str.92 = private unnamed_addr constant [8 x i8] c"extern3\00", align 1
@.str.93 = private unnamed_addr constant [5 x i8] c"hclk\00", align 1
@.str.94 = private unnamed_addr constant [5 x i8] c"pclk\00", align 1
@.str.95 = private unnamed_addr constant [4 x i8] c"osc\00", align 1
@.str.96 = private unnamed_addr constant [9 x i8] c"osc_div2\00", align 1
@.str.97 = private unnamed_addr constant [9 x i8] c"osc_div4\00", align 1
@.str.98 = private unnamed_addr constant [14 x i8] c"tengra_camera\00", align 1
@.str.99 = private unnamed_addr constant [5 x i8] c"csus\00", align 1
@.str.100 = private unnamed_addr constant [10 x i8] c"tegradc.0\00", align 1
@.str.101 = private unnamed_addr constant [13 x i8] c"tegra_camera\00", align 1
@.str.102 = private unnamed_addr constant [4 x i8] c"csi\00", align 1
@.str.103 = private unnamed_addr constant [4 x i8] c"isp\00", align 1
@.str.104 = private unnamed_addr constant [11 x i8] c"tegra-pcie\00", align 1
@.str.105 = private unnamed_addr constant [5 x i8] c"fuse\00", align 1
@.str.106 = private unnamed_addr constant [11 x i8] c"fuse-tegra\00", align 1
@.str.107 = private unnamed_addr constant [10 x i8] c"fuse_burn\00", align 1
@.str.108 = private unnamed_addr constant [13 x i8] c"tegra30-ahub\00", align 1
@.str.109 = private unnamed_addr constant [6 x i8] c"apbif\00", align 1
@.str.110 = private unnamed_addr constant [12 x i8] c"tegra30-hda\00", align 1
@.str.111 = private unnamed_addr constant [9 x i8] c"hda2hdmi\00", align 1
@.str.112 = private unnamed_addr constant [13 x i8] c"tegra-apbdma\00", align 1
@.str.113 = private unnamed_addr constant [10 x i8] c"rtc-tegra\00", align 1
@.str.114 = private unnamed_addr constant [6 x i8] c"timer\00", align 1
@.str.115 = private unnamed_addr constant [10 x i8] c"tegra-kbc\00", align 1
@.str.116 = private unnamed_addr constant [14 x i8] c"fsl-tegra-udc\00", align 1
@.str.117 = private unnamed_addr constant [13 x i8] c"tegra-ehci.1\00", align 1
@.str.118 = private unnamed_addr constant [13 x i8] c"tegra-ehci.2\00", align 1
@.str.119 = private unnamed_addr constant [12 x i8] c"kfuse-tegra\00", align 1
@.str.120 = private unnamed_addr constant [16 x i8] c"tegra_sata_cold\00", align 1
@.str.121 = private unnamed_addr constant [4 x i8] c"dtv\00", align 1
@.str.122 = private unnamed_addr constant [14 x i8] c"tegra30-i2s.0\00", align 1
@.str.123 = private unnamed_addr constant [14 x i8] c"tegra30-i2s.1\00", align 1
@.str.124 = private unnamed_addr constant [14 x i8] c"tegra30-i2s.2\00", align 1
@.str.125 = private unnamed_addr constant [14 x i8] c"tegra30-i2s.3\00", align 1
@.str.126 = private unnamed_addr constant [14 x i8] c"tegra30-i2s.4\00", align 1
@.str.127 = private unnamed_addr constant [14 x i8] c"tegra30-spdif\00", align 1
@.str.128 = private unnamed_addr constant [9 x i8] c"spdif_in\00", align 1
@.str.129 = private unnamed_addr constant [14 x i8] c"tegra30-dam.0\00", align 1
@.str.130 = private unnamed_addr constant [14 x i8] c"tegra30-dam.1\00", align 1
@.str.131 = private unnamed_addr constant [14 x i8] c"tegra30-dam.2\00", align 1
@.str.132 = private unnamed_addr constant [4 x i8] c"hda\00", align 1
@.str.133 = private unnamed_addr constant [13 x i8] c"hda2codec_2x\00", align 1
@.str.134 = private unnamed_addr constant [12 x i8] c"spi_tegra.0\00", align 1
@.str.135 = private unnamed_addr constant [12 x i8] c"spi_tegra.1\00", align 1
@.str.136 = private unnamed_addr constant [12 x i8] c"spi_tegra.2\00", align 1
@.str.137 = private unnamed_addr constant [12 x i8] c"spi_tegra.3\00", align 1
@.str.138 = private unnamed_addr constant [12 x i8] c"spi_tegra.4\00", align 1
@.str.139 = private unnamed_addr constant [12 x i8] c"spi_tegra.5\00", align 1
@.str.140 = private unnamed_addr constant [15 x i8] c"tegra_sata_oob\00", align 1
@.str.141 = private unnamed_addr constant [11 x i8] c"tegra_sata\00", align 1
@.str.142 = private unnamed_addr constant [11 x i8] c"tegra_nand\00", align 1
@.str.143 = private unnamed_addr constant [17 x i8] c"tegra_nand_speed\00", align 1
@.str.144 = private unnamed_addr constant [5 x i8] c"vfir\00", align 1
@.str.145 = private unnamed_addr constant [6 x i8] c"csite\00", align 1
@.str.146 = private unnamed_addr constant [3 x i8] c"la\00", align 1
@.str.147 = private unnamed_addr constant [9 x i8] c"tegra_w1\00", align 1
@.str.148 = private unnamed_addr constant [5 x i8] c"mipi\00", align 1
@.str.149 = private unnamed_addr constant [14 x i8] c"tegra-tsensor\00", align 1
@.str.150 = private unnamed_addr constant [8 x i8] c"i2cslow\00", align 1
@.str.151 = private unnamed_addr constant [3 x i8] c"vi\00", align 1
@.str.152 = private unnamed_addr constant [4 x i8] c"epp\00", align 1
@.str.153 = private unnamed_addr constant [4 x i8] c"mpe\00", align 1
@.str.154 = private unnamed_addr constant [7 x i8] c"host1x\00", align 1
@.str.155 = private unnamed_addr constant [3 x i8] c"3d\00", align 1
@.str.156 = private unnamed_addr constant [3 x i8] c"2d\00", align 1
@.str.157 = private unnamed_addr constant [8 x i8] c"mselect\00", align 1
@.str.158 = private unnamed_addr constant [10 x i8] c"tegra-nor\00", align 1
@.str.159 = private unnamed_addr constant [14 x i8] c"sdhci-tegra.0\00", align 1
@.str.160 = private unnamed_addr constant [14 x i8] c"sdhci-tegra.1\00", align 1
@.str.161 = private unnamed_addr constant [14 x i8] c"sdhci-tegra.2\00", align 1
@.str.162 = private unnamed_addr constant [14 x i8] c"sdhci-tegra.3\00", align 1
@.str.163 = private unnamed_addr constant [4 x i8] c"cve\00", align 1
@.str.164 = private unnamed_addr constant [4 x i8] c"tvo\00", align 1
@.str.165 = private unnamed_addr constant [6 x i8] c"tvdac\00", align 1
@.str.166 = private unnamed_addr constant [7 x i8] c"actmon\00", align 1
@.str.167 = private unnamed_addr constant [10 x i8] c"vi_sensor\00", align 1
@.str.168 = private unnamed_addr constant [12 x i8] c"tegra-i2c.0\00", align 1
@.str.169 = private unnamed_addr constant [8 x i8] c"div-clk\00", align 1
@.str.170 = private unnamed_addr constant [12 x i8] c"tegra-i2c.1\00", align 1
@.str.171 = private unnamed_addr constant [12 x i8] c"tegra-i2c.2\00", align 1
@.str.172 = private unnamed_addr constant [12 x i8] c"tegra-i2c.3\00", align 1
@.str.173 = private unnamed_addr constant [12 x i8] c"tegra-i2c.4\00", align 1
@.str.174 = private unnamed_addr constant [13 x i8] c"tegra_uart.0\00", align 1
@.str.175 = private unnamed_addr constant [13 x i8] c"tegra_uart.1\00", align 1
@.str.176 = private unnamed_addr constant [13 x i8] c"tegra_uart.2\00", align 1
@.str.177 = private unnamed_addr constant [13 x i8] c"tegra_uart.3\00", align 1
@.str.178 = private unnamed_addr constant [13 x i8] c"tegra_uart.4\00", align 1
@.str.179 = private unnamed_addr constant [10 x i8] c"tegradc.1\00", align 1
@llvm.compiler.used = appending global [2 x ptr] [ptr @__initcall__kmod_clk_tegra30__166_1420_tegra30_car_init2, ptr @__of_table_tegra30], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @tegra30_of_clk_init_driver(ptr noundef %0) #0 section ".init.text" {
  %2 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 10
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %2) #4
  tail call fastcc void @tegra30_clock_init(ptr noundef %0) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra30_car_init() #1 {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @tegra30_car_driver, ptr noundef null) #4
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @tegra30_clock_init(ptr noundef %0) unnamed_addr #0 section ".init.text" {
  %2 = tail call ptr @of_iomap(ptr noundef %0, i32 noundef 0) #4
  store ptr %2, ptr @clk_base, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #6
  br label %28

6:                                                ; preds = %1
  %7 = tail call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull @pmc_match, ptr noundef null) #4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #6
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/clk/tegra/clk-tegra30.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1319, 0\0A.popsection", ""() #4, !srcloc !8
  unreachable

11:                                               ; preds = %6
  %12 = tail call ptr @of_iomap(ptr noundef nonnull %7, i32 noundef 0) #4
  store ptr %12, ptr @pmc_base, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #6
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/clk/tegra/clk-tegra30.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1325, 0\0A.popsection", ""() #4, !srcloc !9
  unreachable

16:                                               ; preds = %11
  %17 = load ptr, ptr @clk_base, align 4
  %18 = tail call ptr @tegra_clk_init(ptr noundef %17, i32 noundef 309, i32 noundef 5) #4
  store ptr %18, ptr @clks, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %28, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr @clk_base, align 4
  %22 = tail call i32 @tegra_osc_clk_init(ptr noundef %21, ptr noundef nonnull @tegra30_clks, ptr noundef nonnull @tegra30_input_freq, i32 noundef 13, i32 noundef 1, ptr noundef nonnull @input_freq, ptr noundef null) #4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  tail call void @tegra_fixed_clk_init(ptr noundef nonnull @tegra30_clks) #4
  tail call fastcc void @tegra30_pll_init() #5
  tail call fastcc void @tegra30_super_clk_init() #5
  tail call fastcc void @tegra30_periph_clk_init() #5
  %25 = load ptr, ptr @clk_base, align 4
  %26 = load ptr, ptr @pmc_base, align 4
  tail call void @tegra_audio_clk_init(ptr noundef %25, ptr noundef %26, ptr noundef nonnull @tegra30_clks, ptr noundef nonnull @tegra30_audio_plls, i32 noundef 1, i32 noundef 24000000) #4
  %27 = load ptr, ptr @clks, align 4
  tail call void @tegra_init_dup_clks(ptr noundef nonnull @tegra_clk_duplicates, ptr noundef %27, i32 noundef 309) #4
  tail call void @tegra_add_of_provider(ptr noundef %0, ptr noundef nonnull @tegra30_clk_src_onecell_get) #4
  store ptr @tegra30_cpu_car_ops, ptr @tegra_cpu_car_ops, align 4
  br label %28

28:                                               ; preds = %24, %20, %16, %4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tegra_clk_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_osc_clk_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra_fixed_clk_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @tegra30_pll_init() unnamed_addr #0 section ".init.text" {
  %1 = load ptr, ptr @clk_base, align 4
  %2 = getelementptr i8, ptr %1, i32 132
  %3 = tail call ptr @tegra_clk_register_divider(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, ptr noundef %2, i32 noundef 0, i8 noundef zeroext 1, i8 noundef zeroext 8, i8 noundef zeroext 8, i8 noundef zeroext 1, ptr noundef null) #4
  %4 = load ptr, ptr @clk_base, align 4
  %5 = getelementptr i8, ptr %4, i32 132
  %6 = tail call ptr @tegra_clk_register_pll_out(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.4, ptr noundef %5, i8 noundef zeroext 1, i8 noundef zeroext 0, i32 noundef 4, i8 noundef zeroext 0, ptr noundef null) #4
  %7 = load ptr, ptr @clks, align 4
  %8 = getelementptr ptr, ptr %7, i32 176
  store ptr %6, ptr %8, align 4
  %9 = load ptr, ptr @clk_base, align 4
  %10 = getelementptr i8, ptr %9, i32 148
  %11 = tail call ptr @tegra_clk_register_divider(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, ptr noundef %10, i32 noundef 0, i8 noundef zeroext 1, i8 noundef zeroext 8, i8 noundef zeroext 8, i8 noundef zeroext 1, ptr noundef null) #4
  %12 = load ptr, ptr @clk_base, align 4
  %13 = getelementptr i8, ptr %12, i32 148
  %14 = tail call ptr @tegra_clk_register_pll_out(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.7, ptr noundef %13, i8 noundef zeroext 1, i8 noundef zeroext 0, i32 noundef 4, i8 noundef zeroext 0, ptr noundef null) #4
  %15 = load ptr, ptr @clks, align 4
  %16 = getelementptr ptr, ptr %15, i32 178
  store ptr %14, ptr %16, align 4
  %17 = load ptr, ptr @clk_base, align 4
  %18 = load ptr, ptr @pmc_base, align 4
  %19 = tail call ptr @tegra_clk_register_pll(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, ptr noundef %17, ptr noundef %18, i32 noundef 0, ptr noundef nonnull @pll_x_params, ptr noundef null) #4
  %20 = load ptr, ptr @clks, align 4
  %21 = getelementptr ptr, ptr %20, i32 191
  store ptr %19, ptr %21, align 4
  %22 = tail call ptr @clk_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.10, i32 noundef 4, i32 noundef 1, i32 noundef 2) #4
  %23 = load ptr, ptr @clks, align 4
  %24 = getelementptr ptr, ptr %23, i32 192
  store ptr %22, ptr %24, align 4
  %25 = load ptr, ptr @clk_base, align 4
  %26 = tail call ptr @tegra_clk_register_pllu(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.11, ptr noundef %25, i32 noundef 0, ptr noundef nonnull @pll_u_params, ptr noundef null) #4
  %27 = load ptr, ptr @clks, align 4
  %28 = getelementptr ptr, ptr %27, i32 190
  store ptr %26, ptr %28, align 4
  %29 = load ptr, ptr @clk_base, align 4
  %30 = load ptr, ptr @pmc_base, align 4
  %31 = tail call ptr @tegra_clk_register_pll(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.11, ptr noundef %29, ptr noundef %30, i32 noundef 0, ptr noundef nonnull @pll_d_params, ptr noundef nonnull @pll_d_lock) #4
  %32 = load ptr, ptr @clks, align 4
  %33 = getelementptr ptr, ptr %32, i32 186
  store ptr %31, ptr %33, align 4
  %34 = tail call ptr @clk_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.14, i32 noundef 4, i32 noundef 1, i32 noundef 2) #4
  %35 = load ptr, ptr @clks, align 4
  %36 = getelementptr ptr, ptr %35, i32 187
  store ptr %34, ptr %36, align 4
  %37 = load ptr, ptr @clk_base, align 4
  %38 = load ptr, ptr @pmc_base, align 4
  %39 = tail call ptr @tegra_clk_register_pll(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.11, ptr noundef %37, ptr noundef %38, i32 noundef 0, ptr noundef nonnull @pll_d2_params, ptr noundef null) #4
  %40 = load ptr, ptr @clks, align 4
  %41 = getelementptr ptr, ptr %40, i32 188
  store ptr %39, ptr %41, align 4
  %42 = tail call ptr @clk_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.16, i32 noundef 4, i32 noundef 1, i32 noundef 2) #4
  %43 = load ptr, ptr @clks, align 4
  %44 = getelementptr ptr, ptr %43, i32 189
  store ptr %42, ptr %44, align 4
  %45 = load ptr, ptr @clk_base, align 4
  %46 = getelementptr i8, ptr %45, i32 1164
  %47 = tail call ptr @clk_register_mux_table(ptr noundef null, ptr noundef nonnull @.str.18, ptr noundef nonnull @pll_e_parents, i8 noundef zeroext 2, i32 noundef 128, ptr noundef %46, i8 noundef zeroext 2, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef null) #4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @tegra30_super_clk_init() unnamed_addr #0 section ".init.text" {
  %1 = load ptr, ptr @clk_base, align 4
  %2 = getelementptr i8, ptr %1, i32 876
  %3 = tail call ptr @tegra_clk_register_divider(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.19, ptr noundef %2, i32 noundef 0, i8 noundef zeroext 4, i8 noundef zeroext 16, i8 noundef zeroext 8, i8 noundef zeroext 1, ptr noundef null) #4
  %4 = tail call i32 @clk_register_clkdev(ptr noundef %3, ptr noundef nonnull @.str.20, ptr noundef null) #4
  %5 = load ptr, ptr @clk_base, align 4
  %6 = getelementptr i8, ptr %5, i32 876
  %7 = tail call ptr @tegra_clk_register_divider(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22, ptr noundef %6, i32 noundef 0, i8 noundef zeroext 4, i8 noundef zeroext 16, i8 noundef zeroext 8, i8 noundef zeroext 1, ptr noundef null) #4
  %8 = tail call i32 @clk_register_clkdev(ptr noundef %7, ptr noundef nonnull @.str.21, ptr noundef null) #4
  %9 = load ptr, ptr @clk_base, align 4
  %10 = getelementptr i8, ptr %9, i32 876
  %11 = tail call ptr @tegra_clk_register_divider(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24, ptr noundef %10, i32 noundef 0, i8 noundef zeroext 4, i8 noundef zeroext 16, i8 noundef zeroext 8, i8 noundef zeroext 1, ptr noundef null) #4
  %12 = tail call i32 @clk_register_clkdev(ptr noundef %11, ptr noundef nonnull @.str.23, ptr noundef null) #4
  %13 = load ptr, ptr @clk_base, align 4
  %14 = getelementptr i8, ptr %13, i32 872
  %15 = tail call ptr @tegra_clk_register_super_cclk(ptr noundef nonnull @.str.25, ptr noundef nonnull @cclk_g_parents, i8 noundef zeroext 9, i32 noundef 68, ptr noundef %14, i8 noundef zeroext 0, ptr noundef null) #4
  %16 = load ptr, ptr @clks, align 4
  %17 = getelementptr ptr, ptr %16, i32 212
  store ptr %15, ptr %17, align 4
  %18 = load ptr, ptr @clk_base, align 4
  %19 = getelementptr i8, ptr %18, i32 884
  %20 = tail call ptr @tegra_clk_register_divider(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.19, ptr noundef %19, i32 noundef 0, i8 noundef zeroext 4, i8 noundef zeroext 16, i8 noundef zeroext 8, i8 noundef zeroext 1, ptr noundef null) #4
  %21 = tail call i32 @clk_register_clkdev(ptr noundef %20, ptr noundef nonnull @.str.26, ptr noundef null) #4
  %22 = load ptr, ptr @clk_base, align 4
  %23 = getelementptr i8, ptr %22, i32 884
  %24 = tail call ptr @tegra_clk_register_divider(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.22, ptr noundef %23, i32 noundef 0, i8 noundef zeroext 4, i8 noundef zeroext 16, i8 noundef zeroext 8, i8 noundef zeroext 1, ptr noundef null) #4
  %25 = tail call i32 @clk_register_clkdev(ptr noundef %24, ptr noundef nonnull @.str.27, ptr noundef null) #4
  %26 = load ptr, ptr @clk_base, align 4
  %27 = getelementptr i8, ptr %26, i32 884
  %28 = tail call ptr @tegra_clk_register_divider(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.24, ptr noundef %27, i32 noundef 0, i8 noundef zeroext 4, i8 noundef zeroext 16, i8 noundef zeroext 8, i8 noundef zeroext 1, ptr noundef null) #4
  %29 = tail call i32 @clk_register_clkdev(ptr noundef %28, ptr noundef nonnull @.str.28, ptr noundef null) #4
  %30 = load ptr, ptr @clk_base, align 4
  %31 = getelementptr i8, ptr %30, i32 880
  %32 = tail call ptr @tegra_clk_register_super_mux(ptr noundef nonnull @.str.29, ptr noundef nonnull @cclk_lp_parents, i8 noundef zeroext 10, i32 noundef 4, ptr noundef %31, i8 noundef zeroext 1, i8 noundef zeroext 4, i8 noundef zeroext 8, i8 noundef zeroext 9, ptr noundef null) #4
  %33 = load ptr, ptr @clks, align 4
  %34 = getelementptr ptr, ptr %33, i32 213
  store ptr %32, ptr %34, align 4
  %35 = tail call ptr @clk_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.25, i32 noundef 4, i32 noundef 1, i32 noundef 2) #4
  %36 = load ptr, ptr @clks, align 4
  %37 = getelementptr ptr, ptr %36, i32 214
  store ptr %35, ptr %37, align 4
  %38 = load ptr, ptr @clk_base, align 4
  %39 = load ptr, ptr @pmc_base, align 4
  tail call void @tegra_super_clk_gen4_init(ptr noundef %38, ptr noundef %39, ptr noundef nonnull @tegra30_clks, ptr noundef null) #4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @tegra30_periph_clk_init() unnamed_addr #0 section ".init.text" {
  %1 = load ptr, ptr @clk_base, align 4
  %2 = load ptr, ptr @periph_clk_enb_refcnt, align 4
  %3 = tail call ptr @tegra_clk_register_periph_gate(ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.15, i8 noundef zeroext 0, ptr noundef %1, i32 noundef 0, i32 noundef 48, ptr noundef %2) #4
  %4 = load ptr, ptr @clks, align 4
  %5 = getelementptr ptr, ptr %4, i32 48
  store ptr %3, ptr %5, align 4
  %6 = load ptr, ptr @clk_base, align 4
  %7 = load ptr, ptr @periph_clk_enb_refcnt, align 4
  %8 = tail call ptr @tegra_clk_register_periph_gate(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.31, i8 noundef zeroext 0, ptr noundef %6, i32 noundef 0, i32 noundef 70, ptr noundef %7) #4
  %9 = load ptr, ptr @clks, align 4
  %10 = getelementptr ptr, ptr %9, i32 70
  store ptr %8, ptr %10, align 4
  %11 = load ptr, ptr @clk_base, align 4
  %12 = load ptr, ptr @periph_clk_enb_refcnt, align 4
  %13 = tail call ptr @tegra_clk_register_periph_gate(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.31, i8 noundef zeroext 0, ptr noundef %11, i32 noundef 0, i32 noundef 72, ptr noundef %12) #4
  %14 = load ptr, ptr @clks, align 4
  %15 = getelementptr ptr, ptr %14, i32 72
  store ptr %13, ptr %15, align 4
  %16 = load ptr, ptr @clk_base, align 4
  %17 = getelementptr i8, ptr %16, i32 412
  %18 = tail call ptr @tegra20_clk_register_emc(ptr noundef %17, i1 noundef zeroext true) #4
  %19 = load ptr, ptr @clks, align 4
  %20 = getelementptr ptr, ptr %19, i32 57
  store ptr %18, ptr %20, align 4
  %21 = load ptr, ptr @clk_base, align 4
  %22 = getelementptr i8, ptr %21, i32 412
  %23 = tail call ptr @tegra_clk_register_mc(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38, ptr noundef %22, ptr noundef null) #4
  %24 = load ptr, ptr @clks, align 4
  %25 = getelementptr ptr, ptr %24, i32 32
  store ptr %23, ptr %25, align 4
  %26 = load ptr, ptr @clk_base, align 4
  %27 = getelementptr i8, ptr %26, i32 1164
  %28 = tail call ptr @clk_register_gate(ptr noundef null, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.40, i32 noundef 0, ptr noundef %27, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef nonnull @cml_lock) #4
  %29 = load ptr, ptr @clks, align 4
  %30 = getelementptr ptr, ptr %29, i32 215
  store ptr %28, ptr %30, align 4
  %31 = load ptr, ptr @clk_base, align 4
  %32 = getelementptr i8, ptr %31, i32 1164
  %33 = tail call ptr @clk_register_gate(ptr noundef null, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.40, i32 noundef 0, ptr noundef %32, i8 noundef zeroext 1, i8 noundef zeroext 0, ptr noundef nonnull @cml_lock) #4
  %34 = load ptr, ptr @clks, align 4
  %35 = getelementptr ptr, ptr %34, i32 216
  store ptr %33, ptr %35, align 4
  br label %36

36:                                               ; preds = %36, %0
  %37 = phi i32 [ 0, %0 ], [ %45, %36 ]
  %38 = getelementptr [9 x %struct.tegra_periph_init_data], ptr @tegra_periph_clk_list, i32 0, i32 %37
  %39 = load ptr, ptr @clk_base, align 4
  %40 = tail call ptr @tegra_clk_register_periph_data(ptr noundef %39, ptr noundef %38) #4
  %41 = load ptr, ptr @clks, align 4
  %42 = getelementptr [9 x %struct.tegra_periph_init_data], ptr @tegra_periph_clk_list, i32 0, i32 %37, i32 1
  %43 = load i32, ptr %42, align 4
  %44 = getelementptr ptr, ptr %41, i32 %43
  store ptr %40, ptr %44, align 4
  %45 = add nuw nsw i32 %37, 1
  %46 = icmp eq i32 %45, 9
  br i1 %46, label %47, label %36

47:                                               ; preds = %36
  %48 = load ptr, ptr @tegra_periph_nodiv_clk_list, align 4
  %49 = load ptr, ptr getelementptr inbounds ([1 x %struct.tegra_periph_init_data], ptr @tegra_periph_nodiv_clk_list, i32 0, i32 0, i32 2), align 4
  %50 = load i32, ptr getelementptr inbounds ([1 x %struct.tegra_periph_init_data], ptr @tegra_periph_nodiv_clk_list, i32 0, i32 0, i32 3), align 4
  %51 = load ptr, ptr @clk_base, align 4
  %52 = load i32, ptr getelementptr inbounds ([1 x %struct.tegra_periph_init_data], ptr @tegra_periph_nodiv_clk_list, i32 0, i32 0, i32 5), align 4
  %53 = tail call ptr @tegra_clk_register_periph_nodiv(ptr noundef %48, ptr noundef %49, i32 noundef %50, ptr noundef getelementptr inbounds ([1 x %struct.tegra_periph_init_data], ptr @tegra_periph_nodiv_clk_list, i32 0, i32 0, i32 4), ptr noundef %51, i32 noundef %52) #4
  %54 = load ptr, ptr @clks, align 4
  %55 = load i32, ptr getelementptr inbounds ([1 x %struct.tegra_periph_init_data], ptr @tegra_periph_nodiv_clk_list, i32 0, i32 0, i32 1), align 4
  %56 = getelementptr ptr, ptr %54, i32 %55
  store ptr %53, ptr %56, align 4
  %57 = load ptr, ptr @clk_base, align 4
  %58 = load ptr, ptr @pmc_base, align 4
  tail call void @tegra_periph_clk_init(ptr noundef %57, ptr noundef %58, ptr noundef nonnull @tegra30_clks, ptr noundef nonnull @pll_p_params) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra_audio_clk_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra_init_dup_clks(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra_add_of_provider(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @tegra30_clk_src_onecell_get(ptr noundef %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.of_phandle_args, ptr %0, i32 0, i32 2
  %4 = load i32, ptr %3, align 4
  switch i32 %4, label %5 [
    i32 4, label %7
    i32 214, label %7
    i32 5, label %7
  ]

5:                                                ; preds = %2
  %6 = load i1, ptr @tegra30_car_initialized, align 1
  br i1 %6, label %7, label %17

7:                                                ; preds = %5, %2, %2, %2
  %8 = tail call ptr @of_clk_src_onecell_get(ptr noundef %0, ptr noundef %1) #4
  %9 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %9, label %17, label %10

10:                                               ; preds = %7
  %11 = tail call ptr @__clk_get_hw(ptr noundef %8) #4
  %12 = load i32, ptr %3, align 4
  %13 = icmp eq i32 %12, 57
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = tail call zeroext i1 @tegra20_clk_emc_driver_available(ptr noundef %11) #4
  %16 = select i1 %15, ptr %8, ptr inttoptr (i32 -517 to ptr)
  br label %17

17:                                               ; preds = %14, %10, %7, %5
  %18 = phi ptr [ %8, %7 ], [ %8, %10 ], [ inttoptr (i32 -517 to ptr), %5 ], [ %16, %14 ]
  ret ptr %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_matching_node_and_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tegra_clk_register_divider(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tegra_clk_register_pll_out(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tegra_clk_register_pll(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_fixed_factor(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tegra_clk_register_pllu(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_mux_table(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_cclk_pre_pllx_rate_change() #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra_cclk_post_pllx_rate_change() #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_register_clkdev(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tegra_clk_register_super_cclk(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tegra_clk_register_super_mux(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra_super_clk_gen4_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tegra_clk_register_periph_gate(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tegra20_clk_register_emc(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tegra_clk_register_mc(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_gate(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tegra_clk_register_periph_data(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tegra_clk_register_periph_nodiv(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra_periph_clk_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_onecell_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_hw(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @tegra20_clk_emc_driver_available(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra30_wait_cpu_in_reset(i32 noundef %0) #1 {
  %2 = shl nuw i32 1, %0
  br label %3

3:                                                ; preds = %3, %1
  %4 = load ptr, ptr @clk_base, align 4
  %5 = getelementptr i8, ptr %4, i32 1136
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #4, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !11
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !12
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #4, !srcloc !13
  %7 = and i32 %6, %2
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %3, label %9

9:                                                ; preds = %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra30_put_cpu_in_reset(i32 noundef %0) #1 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !14
  tail call void @arm_heavy_mb() #4
  %2 = shl i32 4369, %0
  %3 = load ptr, ptr @clk_base, align 4
  %4 = getelementptr i8, ptr %3, i32 832
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 %2) #4, !srcloc !15
  tail call void asm sideeffect "dmb ", "~{memory}"() #4, !srcloc !16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra30_cpu_out_of_reset(i32 noundef %0) #1 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !17
  tail call void @arm_heavy_mb() #4
  %2 = shl i32 4369, %0
  %3 = load ptr, ptr @clk_base, align 4
  %4 = getelementptr i8, ptr %3, i32 836
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 %2) #4, !srcloc !15
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !18
  tail call void @arm_heavy_mb() #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra30_enable_cpu_clock(i32 noundef %0) #1 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !19
  tail call void @arm_heavy_mb() #4
  %2 = add i32 %0, 8
  %3 = shl nuw i32 1, %2
  %4 = load ptr, ptr @clk_base, align 4
  %5 = getelementptr i8, ptr %4, i32 844
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %3) #4, !srcloc !15
  %6 = load ptr, ptr @clk_base, align 4
  %7 = getelementptr i8, ptr %6, i32 844
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #4, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra30_disable_cpu_clock(i32 noundef %0) #1 {
  %2 = load ptr, ptr @clk_base, align 4
  %3 = getelementptr i8, ptr %2, i32 76
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #4, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !21
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !22
  tail call void @arm_heavy_mb() #4
  %5 = add i32 %0, 8
  %6 = shl nuw i32 1, %5
  %7 = or i32 %4, %6
  %8 = load ptr, ptr @clk_base, align 4
  %9 = getelementptr i8, ptr %8, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %7) #4, !srcloc !15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @tegra30_cpu_rail_off_ready() #1 {
  %1 = load ptr, ptr @clk_base, align 4
  %2 = getelementptr i8, ptr %1, i32 1136
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #4, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !23
  %4 = tail call zeroext i1 @tegra_pmc_cpu_is_powered(i32 noundef 1) #4
  br i1 %4, label %9, label %5

5:                                                ; preds = %0
  %6 = tail call zeroext i1 @tegra_pmc_cpu_is_powered(i32 noundef 2) #4
  br i1 %6, label %9, label %7

7:                                                ; preds = %5
  %8 = tail call zeroext i1 @tegra_pmc_cpu_is_powered(i32 noundef 3) #4
  br label %9

9:                                                ; preds = %7, %5, %0
  %10 = phi i1 [ true, %5 ], [ true, %0 ], [ %8, %7 ]
  %11 = and i32 %3, 14
  %12 = icmp ne i32 %11, 14
  %13 = select i1 %12, i1 true, i1 %10
  %14 = xor i1 %13, true
  ret i1 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra30_cpu_clock_suspend() #1 {
  %1 = load ptr, ptr @clk_base, align 4
  %2 = getelementptr i8, ptr %1, i32 468
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #4, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !24
  store i32 %3, ptr @tegra30_cpu_clk_sctx.3, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !25
  tail call void @arm_heavy_mb() #4
  %4 = load ptr, ptr @clk_base, align 4
  %5 = getelementptr i8, ptr %4, i32 468
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 -1073741824) #4, !srcloc !15
  %6 = load ptr, ptr @clk_base, align 4
  %7 = getelementptr i8, ptr %6, i32 32
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #4, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !26
  store i32 %8, ptr @tegra30_cpu_clk_sctx.2, align 4
  %9 = load ptr, ptr @clk_base, align 4
  %10 = getelementptr i8, ptr %9, i32 224
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #4, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !27
  store i32 %11, ptr @tegra30_cpu_clk_sctx.1, align 4
  %12 = load ptr, ptr @clk_base, align 4
  %13 = getelementptr i8, ptr %12, i32 228
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #4, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !28
  store i32 %14, ptr @tegra30_cpu_clk_sctx.0, align 4
  %15 = load ptr, ptr @clk_base, align 4
  %16 = getelementptr i8, ptr %15, i32 36
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #4, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !29
  store i32 %17, ptr @tegra30_cpu_clk_sctx.4, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra30_cpu_clock_resume() #1 {
  %1 = load ptr, ptr @clk_base, align 4
  %2 = getelementptr i8, ptr %1, i32 32
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #4, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !30
  %4 = lshr i32 %3, 28
  switch i32 %4, label %7 [
    i32 1, label %8
    i32 2, label %5
  ]

5:                                                ; preds = %0
  %6 = lshr i32 %3, 4
  br label %8

7:                                                ; preds = %0
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/clk/tegra/clk-tegra30.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1152, 0\0A.popsection", ""() #4, !srcloc !31
  unreachable

8:                                                ; preds = %5, %0
  %9 = phi i32 [ %6, %5 ], [ %3, %0 ]
  %10 = and i32 %9, 15
  %11 = icmp eq i32 %10, 8
  br i1 %11, label %36, label %12

12:                                               ; preds = %8
  %13 = load ptr, ptr @clk_base, align 4
  %14 = getelementptr i8, ptr %13, i32 228
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #4, !srcloc !10
  %16 = load ptr, ptr @clk_base, align 4
  %17 = getelementptr i8, ptr %16, i32 224
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #4, !srcloc !10
  %19 = load i32, ptr @tegra30_cpu_clk_sctx.0, align 4
  %20 = icmp eq i32 %15, %19
  %21 = load i32, ptr @tegra30_cpu_clk_sctx.1, align 4
  %22 = icmp eq i32 %18, %21
  %23 = select i1 %20, i1 %22, i1 false
  br i1 %23, label %36, label %24

24:                                               ; preds = %12
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !32
  tail call void @arm_heavy_mb() #4
  %25 = load i32, ptr @tegra30_cpu_clk_sctx.0, align 4
  %26 = load ptr, ptr @clk_base, align 4
  %27 = getelementptr i8, ptr %26, i32 228
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %25) #4, !srcloc !15
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !33
  tail call void @arm_heavy_mb() #4
  %28 = load i32, ptr @tegra30_cpu_clk_sctx.1, align 4
  %29 = load ptr, ptr @clk_base, align 4
  %30 = getelementptr i8, ptr %29, i32 224
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %28) #4, !srcloc !15
  %31 = load i32, ptr @tegra30_cpu_clk_sctx.1, align 4
  %32 = and i32 %31, 1073741824
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %24
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %35(i32 noundef 64424400) #4
  br label %36

36:                                               ; preds = %34, %24, %12, %8
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !34
  tail call void @arm_heavy_mb() #4
  %37 = load i32, ptr @tegra30_cpu_clk_sctx.4, align 4
  %38 = load ptr, ptr @clk_base, align 4
  %39 = getelementptr i8, ptr %38, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 %37) #4, !srcloc !15
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !35
  tail call void @arm_heavy_mb() #4
  %40 = load i32, ptr @tegra30_cpu_clk_sctx.2, align 4
  %41 = load ptr, ptr @clk_base, align 4
  %42 = getelementptr i8, ptr %41, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %40) #4, !srcloc !15
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !36
  tail call void @arm_heavy_mb() #4
  %43 = load i32, ptr @tegra30_cpu_clk_sctx.3, align 4
  %44 = load ptr, ptr @clk_base, align 4
  %45 = getelementptr i8, ptr %44, i32 468
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 %43) #4, !srcloc !15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @tegra_pmc_cpu_is_powered(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tegra30_car_probe(ptr nocapture noundef readnone %0) #1 {
  %2 = load ptr, ptr @clk_base, align 4
  %3 = load ptr, ptr @pmc_base, align 4
  %4 = tail call ptr @tegra_clk_register_pll(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.11, ptr noundef %2, ptr noundef %3, i32 noundef 0, ptr noundef nonnull @pll_c_params, ptr noundef null) #4
  %5 = load ptr, ptr @clks, align 4
  %6 = getelementptr ptr, ptr %5, i32 175
  store ptr %4, ptr %6, align 4
  %7 = load ptr, ptr @clk_base, align 4
  %8 = load ptr, ptr @pmc_base, align 4
  %9 = tail call ptr @tegra_clk_register_plle(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.18, ptr noundef %7, ptr noundef %8, i32 noundef 64, ptr noundef nonnull @pll_e_params, ptr noundef null) #4
  %10 = load ptr, ptr @clks, align 4
  %11 = getelementptr ptr, ptr %10, i32 193
  store ptr %9, ptr %11, align 4
  %12 = load ptr, ptr @clk_base, align 4
  %13 = load ptr, ptr @pmc_base, align 4
  %14 = tail call ptr @tegra_clk_register_pll(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.11, ptr noundef %12, ptr noundef %13, i32 noundef 1, ptr noundef nonnull @pll_m_params, ptr noundef null) #4
  %15 = load ptr, ptr @clks, align 4
  %16 = getelementptr ptr, ptr %15, i32 177
  store ptr %14, ptr %16, align 4
  %17 = load ptr, ptr @clk_base, align 4
  %18 = getelementptr i8, ptr %17, i32 40
  %19 = tail call ptr @tegra_clk_register_super_mux(ptr noundef nonnull @.str.70, ptr noundef nonnull @sclk_parents, i8 noundef zeroext 8, i32 noundef 2052, ptr noundef %18, i8 noundef zeroext 0, i8 noundef zeroext 4, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef null) #4
  %20 = load ptr, ptr @clks, align 4
  %21 = getelementptr ptr, ptr %20, i32 210
  store ptr %19, ptr %21, align 4
  tail call void @tegra_register_devclks(ptr noundef nonnull @devclks, i32 noundef 147) #4
  %22 = load ptr, ptr @clks, align 4
  tail call void @tegra_init_from_table(ptr noundef nonnull @init_table, ptr noundef %22, i32 noundef 309) #4
  store i1 true, ptr @tegra30_car_initialized, align 1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tegra_clk_register_plle(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra_register_devclks(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra_init_from_table(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
!8 = !{i64 2151688894, i64 2151689391, i64 2151688931, i64 2151688987, i64 2151689021, i64 2151689045, i64 2151689086, i64 2151689107, i64 2151689135, i64 2151689169}
!9 = !{i64 2151694318, i64 2151694815, i64 2151694355, i64 2151694411, i64 2151694445, i64 2151694469, i64 2151694510, i64 2151694531, i64 2151694559, i64 2151694593}
!10 = !{i64 413826}
!11 = !{i64 2151676274}
!12 = !{i64 2151676520}
!13 = !{i64 2151676362}
!14 = !{i64 2151676755}
!15 = !{i64 413408}
!16 = !{i64 2151676975}
!17 = !{i64 2151677207}
!18 = !{i64 2151677490}
!19 = !{i64 2151677721}
!20 = !{i64 2151678218}
!21 = !{i64 2151678551}
!22 = !{i64 2151678784}
!23 = !{i64 2151679292}
!24 = !{i64 2151679629}
!25 = !{i64 2151679823}
!26 = !{i64 2151680292}
!27 = !{i64 2151680625}
!28 = !{i64 2151680958}
!29 = !{i64 2151681291}
!30 = !{i64 2151681624}
!31 = !{i64 2151681866, i64 2151682363, i64 2151681903, i64 2151681959, i64 2151681993, i64 2151682017, i64 2151682058, i64 2151682079, i64 2151682107, i64 2151682141}
!32 = !{i64 2151683203}
!33 = !{i64 2151683599}
!34 = !{i64 2151684546}
!35 = !{i64 2151684948}
!36 = !{i64 2151685350}
