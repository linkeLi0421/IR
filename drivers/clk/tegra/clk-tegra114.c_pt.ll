; ModuleID = '/llk/IR/drivers/clk/tegra/clk-tegra114.c_pt.bc'
source_filename = "../drivers/clk/tegra/clk-tegra114.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tegra114_clock_tune_cpu_trimmers_high:\09\09\09\09\09"
module asm "\09.asciz \09\22tegra114_clock_tune_cpu_trimmers_high\22\09\09\09\09\09"
module asm "__kstrtabns_tegra114_clock_tune_cpu_trimmers_high:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tegra114_clock_tune_cpu_trimmers_low:\09\09\09\09\09"
module asm "\09.asciz \09\22tegra114_clock_tune_cpu_trimmers_low\22\09\09\09\09\09"
module asm "__kstrtabns_tegra114_clock_tune_cpu_trimmers_low:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tegra114_clock_tune_cpu_trimmers_init:\09\09\09\09\09"
module asm "\09.asciz \09\22tegra114_clock_tune_cpu_trimmers_init\22\09\09\09\09\09"
module asm "__kstrtabns_tegra114_clock_tune_cpu_trimmers_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tegra114_clock_assert_dfll_dvco_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22tegra114_clock_assert_dfll_dvco_reset\22\09\09\09\09\09"
module asm "__kstrtabns_tegra114_clock_assert_dfll_dvco_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tegra114_clock_deassert_dfll_dvco_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22tegra114_clock_deassert_dfll_dvco_reset\22\09\09\09\09\09"
module asm "__kstrtabns_tegra114_clock_deassert_dfll_dvco_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.tegra_audio_clk_info = type { ptr, ptr, i32, ptr }
%struct.tegra_clk_pll_params = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x i32], i32, i32, i32, i32, i32, i32, i32, i8, ptr, ptr, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tegra_devclk = type { i32, ptr, ptr }
%struct.tegra_cpu_car_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tegra_clk = type { i32, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.clk_div_table = type { i32, i32 }
%struct.pdiv_map = type { i8, i8 }
%struct.div_nmp = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.tegra_clk_pll_freq_table = type { i32, i32, i32, i32, i8, i8, i16 }
%struct.tegra_periph_init_data = type { ptr, i32, %union.anon.4, i32, %struct.tegra_clk_periph, i32, ptr, ptr, i32 }
%union.anon.4 = type { ptr }
%struct.tegra_clk_periph = type { i32, %struct.clk_hw, %struct.clk_mux, %struct.tegra_clk_frac_div, %struct.tegra_clk_periph_gate, ptr, ptr, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.clk_mux = type { %struct.clk_hw, ptr, ptr, i32, i8, i8, ptr }
%struct.tegra_clk_frac_div = type { %struct.clk_hw, ptr, i8, i8, i8, i8, ptr }
%struct.tegra_clk_periph_gate = type { i32, %struct.clk_hw, ptr, i8, i32, ptr, ptr }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tegra_clk_init_table = type { i32, i32, i32, i32 }

@clk_base = internal unnamed_addr global ptr null, align 4
@__kstrtab_tegra114_clock_tune_cpu_trimmers_high = external dso_local constant [0 x i8], align 1
@__kstrtabns_tegra114_clock_tune_cpu_trimmers_high = external dso_local constant [0 x i8], align 1
@__ksymtab_tegra114_clock_tune_cpu_trimmers_high = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tegra114_clock_tune_cpu_trimmers_high to i32), ptr @__kstrtab_tegra114_clock_tune_cpu_trimmers_high, ptr @__kstrtabns_tegra114_clock_tune_cpu_trimmers_high }, section "___ksymtab+tegra114_clock_tune_cpu_trimmers_high", align 4
@__kstrtab_tegra114_clock_tune_cpu_trimmers_low = external dso_local constant [0 x i8], align 1
@__kstrtabns_tegra114_clock_tune_cpu_trimmers_low = external dso_local constant [0 x i8], align 1
@__ksymtab_tegra114_clock_tune_cpu_trimmers_low = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tegra114_clock_tune_cpu_trimmers_low to i32), ptr @__kstrtab_tegra114_clock_tune_cpu_trimmers_low, ptr @__kstrtabns_tegra114_clock_tune_cpu_trimmers_low }, section "___ksymtab+tegra114_clock_tune_cpu_trimmers_low", align 4
@__kstrtab_tegra114_clock_tune_cpu_trimmers_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_tegra114_clock_tune_cpu_trimmers_init = external dso_local constant [0 x i8], align 1
@__ksymtab_tegra114_clock_tune_cpu_trimmers_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tegra114_clock_tune_cpu_trimmers_init to i32), ptr @__kstrtab_tegra114_clock_tune_cpu_trimmers_init, ptr @__kstrtabns_tegra114_clock_tune_cpu_trimmers_init }, section "___ksymtab+tegra114_clock_tune_cpu_trimmers_init", align 4
@__kstrtab_tegra114_clock_assert_dfll_dvco_reset = external dso_local constant [0 x i8], align 1
@__kstrtabns_tegra114_clock_assert_dfll_dvco_reset = external dso_local constant [0 x i8], align 1
@__ksymtab_tegra114_clock_assert_dfll_dvco_reset = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tegra114_clock_assert_dfll_dvco_reset to i32), ptr @__kstrtab_tegra114_clock_assert_dfll_dvco_reset, ptr @__kstrtabns_tegra114_clock_assert_dfll_dvco_reset }, section "___ksymtab+tegra114_clock_assert_dfll_dvco_reset", align 4
@__kstrtab_tegra114_clock_deassert_dfll_dvco_reset = external dso_local constant [0 x i8], align 1
@__kstrtabns_tegra114_clock_deassert_dfll_dvco_reset = external dso_local constant [0 x i8], align 1
@__ksymtab_tegra114_clock_deassert_dfll_dvco_reset = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tegra114_clock_deassert_dfll_dvco_reset to i32), ptr @__kstrtab_tegra114_clock_deassert_dfll_dvco_reset, ptr @__kstrtabns_tegra114_clock_deassert_dfll_dvco_reset }, section "___ksymtab+tegra114_clock_deassert_dfll_dvco_reset", align 4
@__of_table_tegra114 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra114-car\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra114_clock_init }, section "__clk_of_table", align 4
@.str = private unnamed_addr constant [31 x i8] c"\013ioremap tegra114 CAR failed\0A\00", align 1
@pmc_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra114-pmc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], section ".init.rodata", align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"\013Failed to find pmc node\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"drivers/clk/tegra/clk-tegra114.c\00", align 1
@pmc_base = internal unnamed_addr global ptr null, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"\013Can't map pmc registers\0A\00", align 1
@clks = internal unnamed_addr global ptr null, align 4
@tegra114_input_freq = internal global [13 x i32] [i32 13000000, i32 16800000, i32 0, i32 0, i32 19200000, i32 38400000, i32 0, i32 0, i32 12000000, i32 48000000, i32 0, i32 0, i32 26000000], align 4
@osc_freq = internal global i32 0, align 4
@pll_ref_freq = internal global i32 0, align 4
@tegra114_audio_plls = internal global [1 x %struct.tegra_audio_clk_info] [%struct.tegra_audio_clk_info { ptr @.str.44, ptr @pll_a_params, i32 137, ptr @.str.45 }], align 4
@pll_x_params = internal global %struct.tegra_clk_pll_params { i32 12000000, i32 800000000, i32 12000000, i32 19200000, i32 700000000, i32 -1894967296, i32 224, i32 228, i32 0, i32 134217728, i32 18, i32 1304, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1300, [6 x i32] zeroinitializer, i32 0, i32 0, i32 1025, i32 16, i32 24, i32 300, i32 6, i8 0, ptr @pllxc_p, ptr @pllxc_nmp, ptr @pll_x_freq_table, i32 0, i16 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@devclks = internal global [63 x %struct.tegra_devclk] [%struct.tegra_devclk { i32 201, ptr null, ptr @.str.37 }, %struct.tegra_devclk { i32 204, ptr null, ptr @.str.7 }, %struct.tegra_devclk { i32 200, ptr null, ptr @.str.5 }, %struct.tegra_devclk { i32 249, ptr null, ptr @.str.46 }, %struct.tegra_devclk { i32 202, ptr null, ptr @.str.47 }, %struct.tegra_devclk { i32 203, ptr null, ptr @.str.48 }, %struct.tegra_devclk { i32 205, ptr null, ptr @.str.6 }, %struct.tegra_devclk { i32 206, ptr null, ptr @.str.9 }, %struct.tegra_devclk { i32 207, ptr null, ptr @.str.10 }, %struct.tegra_devclk { i32 208, ptr null, ptr @.str.11 }, %struct.tegra_devclk { i32 211, ptr null, ptr @.str.42 }, %struct.tegra_devclk { i32 212, ptr null, ptr @.str.45 }, %struct.tegra_devclk { i32 213, ptr null, ptr @.str.49 }, %struct.tegra_devclk { i32 214, ptr null, ptr @.str.50 }, %struct.tegra_devclk { i32 215, ptr null, ptr @.str.51 }, %struct.tegra_devclk { i32 209, ptr null, ptr @.str.12 }, %struct.tegra_devclk { i32 210, ptr null, ptr @.str.14 }, %struct.tegra_devclk { i32 227, ptr null, ptr @.str.52 }, %struct.tegra_devclk { i32 228, ptr null, ptr @.str.53 }, %struct.tegra_devclk { i32 222, ptr null, ptr @.str.16 }, %struct.tegra_devclk { i32 223, ptr null, ptr @.str.17 }, %struct.tegra_devclk { i32 224, ptr null, ptr @.str.18 }, %struct.tegra_devclk { i32 225, ptr null, ptr @.str.19 }, %struct.tegra_devclk { i32 226, ptr null, ptr @.str.20 }, %struct.tegra_devclk { i32 218, ptr null, ptr @.str.21 }, %struct.tegra_devclk { i32 219, ptr null, ptr @.str.22 }, %struct.tegra_devclk { i32 220, ptr null, ptr @.str.23 }, %struct.tegra_devclk { i32 221, ptr null, ptr @.str.24 }, %struct.tegra_devclk { i32 216, ptr null, ptr @.str.44 }, %struct.tegra_devclk { i32 217, ptr null, ptr @.str.43 }, %struct.tegra_devclk { i32 229, ptr null, ptr @.str.25 }, %struct.tegra_devclk { i32 230, ptr null, ptr @.str.26 }, %struct.tegra_devclk { i32 231, ptr null, ptr @.str.27 }, %struct.tegra_devclk { i32 232, ptr null, ptr @.str.54 }, %struct.tegra_devclk { i32 233, ptr null, ptr @.str.55 }, %struct.tegra_devclk { i32 234, ptr null, ptr @.str.56 }, %struct.tegra_devclk { i32 235, ptr null, ptr @.str.57 }, %struct.tegra_devclk { i32 236, ptr null, ptr @.str.58 }, %struct.tegra_devclk { i32 237, ptr null, ptr @.str.59 }, %struct.tegra_devclk { i32 238, ptr null, ptr @.str.60 }, %struct.tegra_devclk { i32 239, ptr null, ptr @.str.61 }, %struct.tegra_devclk { i32 240, ptr null, ptr @.str.62 }, %struct.tegra_devclk { i32 241, ptr null, ptr @.str.63 }, %struct.tegra_devclk { i32 242, ptr null, ptr @.str.64 }, %struct.tegra_devclk { i32 243, ptr null, ptr @.str.65 }, %struct.tegra_devclk { i32 244, ptr null, ptr @.str.66 }, %struct.tegra_devclk { i32 113, ptr null, ptr @.str.67 }, %struct.tegra_devclk { i32 114, ptr null, ptr @.str.68 }, %struct.tegra_devclk { i32 115, ptr null, ptr @.str.69 }, %struct.tegra_devclk { i32 116, ptr null, ptr @.str.70 }, %struct.tegra_devclk { i32 117, ptr null, ptr @.str.71 }, %struct.tegra_devclk { i32 118, ptr null, ptr @.str.72 }, %struct.tegra_devclk { i32 120, ptr null, ptr @.str.73 }, %struct.tegra_devclk { i32 121, ptr null, ptr @.str.74 }, %struct.tegra_devclk { i32 122, ptr null, ptr @.str.75 }, %struct.tegra_devclk { i32 262, ptr null, ptr @.str.76 }, %struct.tegra_devclk { i32 263, ptr null, ptr @.str.77 }, %struct.tegra_devclk { i32 259, ptr null, ptr @.str.78 }, %struct.tegra_devclk { i32 260, ptr null, ptr @.str.79 }, %struct.tegra_devclk { i32 261, ptr null, ptr @.str.80 }, %struct.tegra_devclk { i32 198, ptr null, ptr @.str.81 }, %struct.tegra_devclk { i32 4, ptr @.str.82, ptr null }, %struct.tegra_devclk { i32 5, ptr @.str.83, ptr null }], section ".init.data", align 4
@tegra_clk_apply_init_table = external dso_local local_unnamed_addr global ptr, align 4
@tegra114_cpu_car_ops = internal global %struct.tegra_cpu_car_ops { ptr @tegra114_wait_cpu_in_reset, ptr null, ptr null, ptr null, ptr @tegra114_disable_cpu_clock, ptr null, ptr @tegra114_cpu_clock_suspend, ptr @tegra114_cpu_clock_resume }, align 4
@tegra_cpu_car_ops = external dso_local local_unnamed_addr global ptr, align 4
@tegra114_clks = internal global <{ [297 x %struct.tegra_clk], [16 x %struct.tegra_clk] }> <{ [297 x %struct.tegra_clk] [%struct.tegra_clk { i32 119, i8 1 }, %struct.tegra_clk { i32 154, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 153, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 34, i8 1 }, %struct.tegra_clk { i32 107, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 239, i8 1 }, %struct.tegra_clk { i32 113, i8 1 }, %struct.tegra_clk { i32 300, i8 1 }, %struct.tegra_clk { i32 240, i8 1 }, %struct.tegra_clk { i32 114, i8 1 }, %struct.tegra_clk { i32 301, i8 1 }, %struct.tegra_clk { i32 241, i8 1 }, %struct.tegra_clk { i32 115, i8 1 }, %struct.tegra_clk { i32 302, i8 1 }, %struct.tegra_clk { i32 242, i8 1 }, %struct.tegra_clk { i32 116, i8 1 }, %struct.tegra_clk { i32 303, i8 1 }, %struct.tegra_clk { i32 243, i8 1 }, %struct.tegra_clk { i32 117, i8 1 }, %struct.tegra_clk { i32 304, i8 1 }, %struct.tegra_clk { i32 62, i8 1 }, %struct.tegra_clk { i32 63, i8 1 }, %struct.tegra_clk { i32 262, i8 1 }, %struct.tegra_clk { i32 263, i8 1 }, %struct.tegra_clk { i32 144, i8 1 }, %struct.tegra_clk { i32 145, i8 1 }, %struct.tegra_clk { i32 146, i8 1 }, %struct.tegra_clk { i32 200, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 201, i8 1 }, %struct.tegra_clk { i32 249, i8 1 }, %struct.tegra_clk { i32 202, i8 1 }, %struct.tegra_clk { i32 203, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 52, i8 1 }, %struct.tegra_clk { i32 73, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 92, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 108, i8 1 }, %struct.tegra_clk { i32 109, i8 1 }, %struct.tegra_clk { i32 110, i8 1 }, %struct.tegra_clk { i32 106, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 150, i8 1 }, %struct.tegra_clk { i32 264, i8 1 }, %struct.tegra_clk { i32 265, i8 1 }, %struct.tegra_clk { i32 27, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 26, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 152, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 147, i8 1 }, %struct.tegra_clk { i32 309, i8 1 }, %struct.tegra_clk { i32 148, i8 1 }, %struct.tegra_clk { i32 310, i8 1 }, %struct.tegra_clk { i32 79, i8 1 }, %struct.tegra_clk { i32 57, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 19, i8 1 }, %struct.tegra_clk { i32 120, i8 1 }, %struct.tegra_clk { i32 121, i8 1 }, %struct.tegra_clk { i32 122, i8 1 }, %struct.tegra_clk { i32 198, i8 1 }, %struct.tegra_clk { i32 199, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 21, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 24, i8 1 }, %struct.tegra_clk { i32 260, i8 1 }, %struct.tegra_clk { i32 125, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 111, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 128, i8 1 }, %struct.tegra_clk { i32 51, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 28, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 12, i8 1 }, %struct.tegra_clk { i32 54, i8 1 }, %struct.tegra_clk { i32 67, i8 1 }, %struct.tegra_clk { i32 103, i8 1 }, %struct.tegra_clk { i32 47, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 81, i8 1 }, %struct.tegra_clk { i32 30, i8 1 }, %struct.tegra_clk { i32 233, i8 1 }, %struct.tegra_clk { i32 11, i8 1 }, %struct.tegra_clk { i32 234, i8 1 }, %struct.tegra_clk { i32 18, i8 1 }, %struct.tegra_clk { i32 235, i8 1 }, %struct.tegra_clk { i32 101, i8 1 }, %struct.tegra_clk { i32 236, i8 1 }, %struct.tegra_clk { i32 102, i8 1 }, %struct.tegra_clk { i32 237, i8 1 }, %struct.tegra_clk { i32 23, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 36, i8 1 }, %struct.tegra_clk { i32 40, i8 1 }, %struct.tegra_clk { i32 76, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 50, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 99, i8 1 }, %struct.tegra_clk { i32 91, i8 1 }, %struct.tegra_clk { i32 13, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 80, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 42, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 71, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 261, i8 1 }, %struct.tegra_clk { i32 216, i8 1 }, %struct.tegra_clk { i32 217, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 205, i8 1 }, %struct.tegra_clk { i32 207, i8 1 }, %struct.tegra_clk { i32 208, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 206, i8 1 }, %struct.tegra_clk { i32 218, i8 1 }, %struct.tegra_clk { i32 220, i8 1 }, %struct.tegra_clk { i32 221, i8 1 }, %struct.tegra_clk { i32 219, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 231, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 209, i8 1 }, %struct.tegra_clk { i32 210, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 211, i8 1 }, %struct.tegra_clk { i32 212, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 213, i8 1 }, %struct.tegra_clk { i32 214, i8 1 }, %struct.tegra_clk { i32 215, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 204, i8 1 }, %struct.tegra_clk { i32 230, i8 1 }, %struct.tegra_clk { i32 229, i8 1 }, %struct.tegra_clk { i32 222, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 226, i8 1 }, %struct.tegra_clk { i32 223, i8 1 }, %struct.tegra_clk { i32 225, i8 1 }, %struct.tegra_clk { i32 224, i8 1 }, %struct.tegra_clk { i32 227, i8 1 }, %struct.tegra_clk { i32 228, i8 1 }, %struct.tegra_clk { i32 17, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 4, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 41, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 44, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 46, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 68, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 104, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 105, i8 1 }, %struct.tegra_clk { i32 259, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 14, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 9, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 69, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 15, i8 1 }, %struct.tegra_clk { i32 127, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 78, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 244, i8 1 }, %struct.tegra_clk { i32 118, i8 1 }, %struct.tegra_clk { i32 194, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 232, i8 1 }, %struct.tegra_clk { i32 305, i8 1 }, %struct.tegra_clk { i32 195, i8 1 }, %struct.tegra_clk { i32 5, i8 1 }, %struct.tegra_clk { i32 77, i8 1 }, %struct.tegra_clk { i32 83, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 100, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 6, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 192, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 55, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 65, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 58, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 59, i8 1 }, %struct.tegra_clk { i32 22, i8 1 }, %struct.tegra_clk { i32 29, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 61, i8 1 }, %struct.tegra_clk { i32 193, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 196, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 238, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 257, i8 1 }, %struct.tegra_clk { i32 256, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 253, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 254, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 89, i8 1 }, %struct.tegra_clk { i32 252, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 258, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 156, i8 1 }, %struct.tegra_clk { i32 255, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 311, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 136, i8 1 }], [16 x %struct.tegra_clk] zeroinitializer }>, section ".init.data", align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"clk_32k\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"pll_c\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"pll_ref\00", align 1
@pll_c_params = internal global %struct.tegra_clk_pll_params { i32 12000000, i32 800000000, i32 12000000, i32 19200000, i32 600000000, i32 1400000000, i32 128, i32 140, i32 0, i32 134217728, i32 24, i32 140, i32 26, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 136, [6 x i32] zeroinitializer, i32 0, i32 0, i32 1025, i32 17, i32 9, i32 300, i32 6, i8 0, ptr @pllxc_p, ptr @pllxc_nmp, ptr @pll_c_freq_table, i32 0, i16 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.8 = private unnamed_addr constant [15 x i8] c"pll_c_out1_div\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"pll_c_out1\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"pll_c2\00", align 1
@pll_c2_params = internal global %struct.tegra_clk_pll_params { i32 12000000, i32 48000000, i32 12000000, i32 19200000, i32 600000000, i32 1200000000, i32 1256, i32 1260, i32 0, i32 134217728, i32 18, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, [6 x i32] [i32 1264, i32 1268, i32 1272, i32 0, i32 0, i32 0], i32 0, i32 0, i32 1, i32 0, i32 0, i32 300, i32 7, i8 0, ptr @pllc_p, ptr @pllcx_nmp, ptr @pll_cx_freq_table, i32 0, i16 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.11 = private unnamed_addr constant [7 x i8] c"pll_c3\00", align 1
@pll_c3_params = internal global %struct.tegra_clk_pll_params { i32 12000000, i32 48000000, i32 12000000, i32 19200000, i32 600000000, i32 1200000000, i32 1276, i32 1280, i32 0, i32 134217728, i32 18, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, [6 x i32] [i32 1284, i32 1288, i32 1292, i32 0, i32 0, i32 0], i32 0, i32 0, i32 1, i32 0, i32 0, i32 300, i32 7, i8 0, ptr @pllc_p, ptr @pllcx_nmp, ptr @pll_cx_freq_table, i32 0, i16 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.12 = private unnamed_addr constant [6 x i8] c"pll_m\00", align 1
@pll_m_params = internal global %struct.tegra_clk_pll_params { i32 12000000, i32 500000000, i32 12000000, i32 19200000, i32 400000000, i32 1066000000, i32 144, i32 156, i32 0, i32 134217728, i32 18, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, [6 x i32] zeroinitializer, i32 476, i32 688, i32 1089, i32 0, i32 0, i32 300, i32 2, i8 0, ptr @pllm_p, ptr @pllm_nmp, ptr @pll_m_freq_table, i32 0, i16 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.13 = private unnamed_addr constant [15 x i8] c"pll_m_out1_div\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"pll_m_out1\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"pll_m_ud\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"pll_u\00", align 1
@pll_u_params = internal global %struct.tegra_clk_pll_params { i32 2000000, i32 40000000, i32 1000000, i32 6000000, i32 480000000, i32 960000000, i32 192, i32 204, i32 0, i32 134217728, i32 22, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, [6 x i32] zeroinitializer, i32 0, i32 0, i32 1047, i32 0, i32 0, i32 1000, i32 0, i8 0, ptr @pllu_p, ptr @pllu_nmp, ptr @pll_u_freq_table, i32 0, i16 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@pll_u_lock = internal global %struct.spinlock zeroinitializer, align 4
@.str.17 = private unnamed_addr constant [11 x i8] c"pll_u_480M\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"pll_u_60M\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"pll_u_48M\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"pll_u_12M\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"pll_d\00", align 1
@pll_d_params = internal global %struct.tegra_clk_pll_params { i32 2000000, i32 40000000, i32 1000000, i32 6000000, i32 500000000, i32 1000000000, i32 208, i32 220, i32 0, i32 134217728, i32 22, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, [6 x i32] zeroinitializer, i32 0, i32 0, i32 1030, i32 0, i32 0, i32 1000, i32 0, i8 0, ptr null, ptr @pllp_nmp, ptr @pll_d_freq_table, i32 0, i16 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@pll_d_lock = internal global %struct.spinlock zeroinitializer, align 4
@.str.22 = private unnamed_addr constant [11 x i8] c"pll_d_out0\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"pll_d2\00", align 1
@pll_d2_params = internal global %struct.tegra_clk_pll_params { i32 2000000, i32 40000000, i32 1000000, i32 6000000, i32 500000000, i32 1000000000, i32 1208, i32 1212, i32 0, i32 134217728, i32 22, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, [6 x i32] zeroinitializer, i32 0, i32 0, i32 1030, i32 0, i32 0, i32 1000, i32 0, i8 0, ptr null, ptr @pllp_nmp, ptr @pll_d_freq_table, i32 0, i16 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@pll_d2_lock = internal global %struct.spinlock zeroinitializer, align 4
@.str.24 = private unnamed_addr constant [12 x i8] c"pll_d2_out0\00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"pll_re_vco\00", align 1
@pll_re_vco_params = internal global %struct.tegra_clk_pll_params { i32 12000000, i32 1000000000, i32 12000000, i32 19200000, i32 300000000, i32 600000000, i32 1220, i32 1224, i32 0, i32 16777216, i32 30, i32 1224, i32 16, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, [6 x i32] zeroinitializer, i32 0, i32 0, i32 1281, i32 0, i32 0, i32 300, i32 0, i8 0, ptr null, ptr @pllre_nmp, ptr null, i32 0, i16 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@pll_re_lock = internal global %struct.spinlock zeroinitializer, align 4
@.str.26 = private unnamed_addr constant [11 x i8] c"pll_re_out\00", align 1
@pll_re_div_table = internal constant [7 x %struct.clk_div_table] [%struct.clk_div_table { i32 0, i32 1 }, %struct.clk_div_table { i32 1, i32 2 }, %struct.clk_div_table { i32 2, i32 3 }, %struct.clk_div_table { i32 3, i32 4 }, %struct.clk_div_table { i32 4, i32 5 }, %struct.clk_div_table { i32 5, i32 6 }, %struct.clk_div_table zeroinitializer], align 4
@.str.27 = private unnamed_addr constant [11 x i8] c"pll_e_out0\00", align 1
@pll_e_params = internal global %struct.tegra_clk_pll_params { i32 12000000, i32 1000000000, i32 12000000, i32 75000000, i32 1600000000, i32 -1894967296, i32 232, i32 236, i32 0, i32 2048, i32 9, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1164, i32 0, [6 x i32] zeroinitializer, i32 0, i32 0, i32 1088, i32 0, i32 0, i32 300, i32 0, i8 0, ptr @plle_p, ptr @plle_nmp, ptr @pll_e_freq_table, i32 100000000, i16 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@pllxc_p = internal constant [16 x %struct.pdiv_map] [%struct.pdiv_map { i8 1, i8 0 }, %struct.pdiv_map { i8 2, i8 1 }, %struct.pdiv_map { i8 3, i8 2 }, %struct.pdiv_map { i8 4, i8 3 }, %struct.pdiv_map { i8 5, i8 4 }, %struct.pdiv_map { i8 6, i8 5 }, %struct.pdiv_map { i8 8, i8 6 }, %struct.pdiv_map { i8 10, i8 7 }, %struct.pdiv_map { i8 12, i8 8 }, %struct.pdiv_map { i8 16, i8 9 }, %struct.pdiv_map { i8 12, i8 10 }, %struct.pdiv_map { i8 16, i8 11 }, %struct.pdiv_map { i8 20, i8 12 }, %struct.pdiv_map { i8 24, i8 13 }, %struct.pdiv_map { i8 32, i8 14 }, %struct.pdiv_map zeroinitializer], align 1
@pllxc_nmp = internal global %struct.div_nmp { i8 8, i8 8, i8 0, i8 8, i8 20, i8 4, i8 0, i8 0, i8 0 }, align 1
@pll_c_freq_table = internal global [7 x %struct.tegra_clk_pll_freq_table] [%struct.tegra_clk_pll_freq_table { i32 12000000, i32 624000000, i32 104, i32 1, i8 2, i8 0, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 12000000, i32 600000000, i32 100, i32 1, i8 2, i8 0, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 13000000, i32 600000000, i32 92, i32 1, i8 2, i8 0, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 16800000, i32 600000000, i32 71, i32 1, i8 2, i8 0, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 19200000, i32 600000000, i32 62, i32 1, i8 2, i8 0, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 26000000, i32 600000000, i32 92, i32 2, i8 2, i8 0, i16 0 }, %struct.tegra_clk_pll_freq_table zeroinitializer], align 4
@pllc_p = internal constant [6 x %struct.pdiv_map] [%struct.pdiv_map { i8 1, i8 0 }, %struct.pdiv_map { i8 2, i8 1 }, %struct.pdiv_map { i8 4, i8 3 }, %struct.pdiv_map { i8 8, i8 5 }, %struct.pdiv_map { i8 16, i8 7 }, %struct.pdiv_map zeroinitializer], align 1
@pllcx_nmp = internal global %struct.div_nmp { i8 8, i8 8, i8 0, i8 2, i8 20, i8 3, i8 0, i8 0, i8 0 }, align 1
@pll_cx_freq_table = internal global [6 x %struct.tegra_clk_pll_freq_table] [%struct.tegra_clk_pll_freq_table { i32 12000000, i32 600000000, i32 100, i32 1, i8 2, i8 0, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 13000000, i32 600000000, i32 92, i32 1, i8 2, i8 0, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 16800000, i32 600000000, i32 71, i32 1, i8 2, i8 0, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 19200000, i32 600000000, i32 62, i32 1, i8 2, i8 0, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 26000000, i32 600000000, i32 92, i32 2, i8 2, i8 0, i16 0 }, %struct.tegra_clk_pll_freq_table zeroinitializer], align 4
@pllm_p = internal constant [3 x %struct.pdiv_map] [%struct.pdiv_map { i8 1, i8 0 }, %struct.pdiv_map { i8 2, i8 1 }, %struct.pdiv_map zeroinitializer], align 1
@pllm_nmp = internal global %struct.div_nmp { i8 8, i8 8, i8 0, i8 8, i8 20, i8 1, i8 8, i8 0, i8 27 }, align 1
@pll_m_freq_table = internal global [6 x %struct.tegra_clk_pll_freq_table] [%struct.tegra_clk_pll_freq_table { i32 12000000, i32 800000000, i32 66, i32 1, i8 1, i8 0, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 13000000, i32 800000000, i32 61, i32 1, i8 1, i8 0, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 16800000, i32 800000000, i32 47, i32 1, i8 1, i8 0, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 19200000, i32 800000000, i32 41, i32 1, i8 1, i8 0, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 26000000, i32 800000000, i32 61, i32 2, i8 1, i8 0, i16 0 }, %struct.tegra_clk_pll_freq_table zeroinitializer], align 4
@pllu_p = internal constant [3 x %struct.pdiv_map] [%struct.pdiv_map { i8 1, i8 1 }, %struct.pdiv_map { i8 2, i8 0 }, %struct.pdiv_map zeroinitializer], align 1
@pllu_nmp = internal global %struct.div_nmp { i8 8, i8 10, i8 0, i8 5, i8 20, i8 1, i8 0, i8 0, i8 0 }, align 1
@pll_u_freq_table = internal global [6 x %struct.tegra_clk_pll_freq_table] [%struct.tegra_clk_pll_freq_table { i32 12000000, i32 480000000, i32 960, i32 12, i8 2, i8 12, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 13000000, i32 480000000, i32 960, i32 13, i8 2, i8 12, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 16800000, i32 480000000, i32 400, i32 7, i8 2, i8 5, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 19200000, i32 480000000, i32 200, i32 4, i8 2, i8 3, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 26000000, i32 480000000, i32 960, i32 26, i8 2, i8 12, i16 0 }, %struct.tegra_clk_pll_freq_table zeroinitializer], align 4
@pllp_nmp = internal global %struct.div_nmp { i8 8, i8 10, i8 0, i8 5, i8 20, i8 3, i8 0, i8 0, i8 0 }, align 1
@pll_d_freq_table = internal global [15 x %struct.tegra_clk_pll_freq_table] [%struct.tegra_clk_pll_freq_table { i32 12000000, i32 216000000, i32 864, i32 12, i8 4, i8 12, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 13000000, i32 216000000, i32 864, i32 13, i8 4, i8 12, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 16800000, i32 216000000, i32 720, i32 14, i8 4, i8 12, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 19200000, i32 216000000, i32 720, i32 16, i8 4, i8 12, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 26000000, i32 216000000, i32 864, i32 26, i8 4, i8 12, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 12000000, i32 594000000, i32 594, i32 12, i8 1, i8 12, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 13000000, i32 594000000, i32 594, i32 13, i8 1, i8 12, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 16800000, i32 594000000, i32 495, i32 14, i8 1, i8 12, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 19200000, i32 594000000, i32 495, i32 16, i8 1, i8 12, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 26000000, i32 594000000, i32 594, i32 26, i8 1, i8 12, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 12000000, i32 1000000000, i32 1000, i32 12, i8 1, i8 12, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 13000000, i32 1000000000, i32 1000, i32 13, i8 1, i8 12, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 19200000, i32 1000000000, i32 625, i32 12, i8 1, i8 12, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 26000000, i32 1000000000, i32 1000, i32 26, i8 1, i8 12, i16 0 }, %struct.tegra_clk_pll_freq_table zeroinitializer], align 4
@pllre_nmp = internal global %struct.div_nmp { i8 8, i8 8, i8 0, i8 8, i8 16, i8 4, i8 0, i8 0, i8 0 }, align 1
@plle_p = internal constant [16 x %struct.pdiv_map] [%struct.pdiv_map { i8 1, i8 0 }, %struct.pdiv_map { i8 2, i8 1 }, %struct.pdiv_map { i8 3, i8 2 }, %struct.pdiv_map { i8 4, i8 3 }, %struct.pdiv_map { i8 5, i8 4 }, %struct.pdiv_map { i8 6, i8 5 }, %struct.pdiv_map { i8 8, i8 6 }, %struct.pdiv_map { i8 10, i8 7 }, %struct.pdiv_map { i8 12, i8 8 }, %struct.pdiv_map { i8 16, i8 9 }, %struct.pdiv_map { i8 12, i8 10 }, %struct.pdiv_map { i8 16, i8 11 }, %struct.pdiv_map { i8 20, i8 12 }, %struct.pdiv_map { i8 24, i8 13 }, %struct.pdiv_map { i8 32, i8 14 }, %struct.pdiv_map zeroinitializer], align 1
@plle_nmp = internal global %struct.div_nmp { i8 8, i8 8, i8 0, i8 8, i8 24, i8 4, i8 0, i8 0, i8 0 }, align 1
@pll_e_freq_table = internal global [4 x %struct.tegra_clk_pll_freq_table] [%struct.tegra_clk_pll_freq_table { i32 336000000, i32 100000000, i32 100, i32 21, i8 16, i8 11, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 312000000, i32 100000000, i32 200, i32 26, i8 24, i8 13, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 12000000, i32 100000000, i32 200, i32 1, i8 24, i8 13, i16 0 }, %struct.tegra_clk_pll_freq_table zeroinitializer], align 4
@.str.28 = private unnamed_addr constant [13 x i8] c"xusb_ss_div2\00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c"xusb_ss_src\00", align 1
@.str.30 = private unnamed_addr constant [9 x i8] c"dsia_mux\00", align 1
@mux_plld_out0_plld2_out0 = internal global [2 x ptr] [ptr @.str.22, ptr @.str.24], align 4
@.str.31 = private unnamed_addr constant [9 x i8] c"dsib_mux\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"dsia\00", align 1
@periph_clk_enb_refcnt = external dso_local local_unnamed_addr global ptr, align 4
@.str.33 = private unnamed_addr constant [5 x i8] c"dsib\00", align 1
@.str.34 = private unnamed_addr constant [8 x i8] c"emc_mux\00", align 1
@mux_pllmcp_clkm = internal global [5 x ptr] [ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.37, ptr @.str.15], align 4
@emc_lock = internal global %struct.spinlock zeroinitializer, align 4
@.str.35 = private unnamed_addr constant [3 x i8] c"mc\00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c"mipi-cal\00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"clk_m\00", align 1
@tegra_periph_clk_list = internal global [1 x %struct.tegra_periph_init_data] [%struct.tegra_periph_init_data { ptr @.str.41, i32 197, %union.anon.4 { ptr @mux_pllm_pllc2_c_c3_pllp_plla }, i32 6, %struct.tegra_clk_periph { i32 0, %struct.clk_hw zeroinitializer, %struct.clk_mux { %struct.clk_hw zeroinitializer, ptr null, ptr @mux_pllm_pllc2_c_c3_pllp_plla_idx, i32 7, i8 29, i8 0, ptr null }, %struct.tegra_clk_frac_div { %struct.clk_hw zeroinitializer, ptr null, i8 1, i8 0, i8 8, i8 1, ptr null }, %struct.tegra_clk_periph_gate { i32 0, %struct.clk_hw zeroinitializer, ptr null, i8 1, i32 20, ptr null, ptr null }, ptr @clk_mux_ops, ptr @tegra_clk_frac_div_ops, ptr @tegra_clk_periph_gate_ops }, i32 424, ptr null, ptr null, i32 0 }], align 4
@pll_p_params = internal global %struct.tegra_clk_pll_params { i32 2000000, i32 31000000, i32 1000000, i32 6000000, i32 200000000, i32 700000000, i32 160, i32 172, i32 0, i32 134217728, i32 18, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, [6 x i32] zeroinitializer, i32 0, i32 0, i32 1089, i32 0, i32 0, i32 300, i32 0, i8 0, ptr null, ptr @pllp_nmp, ptr @pll_p_freq_table, i32 408000000, i16 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.38 = private unnamed_addr constant [11 x i8] c"pll_m_out0\00", align 1
@.str.39 = private unnamed_addr constant [11 x i8] c"pll_c_out0\00", align 1
@.str.40 = private unnamed_addr constant [11 x i8] c"pll_p_out0\00", align 1
@.str.41 = private unnamed_addr constant [10 x i8] c"vi_sensor\00", align 1
@mux_pllm_pllc2_c_c3_pllp_plla = internal global [6 x ptr] [ptr @.str.12, ptr @.str.10, ptr @.str.6, ptr @.str.11, ptr @.str.42, ptr @.str.43], align 4
@mux_pllm_pllc2_c_c3_pllp_plla_idx = internal global [6 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 6], align 4
@clk_mux_ops = external dso_local constant %struct.clk_ops, align 4
@tegra_clk_frac_div_ops = external dso_local constant %struct.clk_ops, align 4
@tegra_clk_periph_gate_ops = external dso_local constant %struct.clk_ops, align 4
@.str.42 = private unnamed_addr constant [6 x i8] c"pll_p\00", align 1
@.str.43 = private unnamed_addr constant [11 x i8] c"pll_a_out0\00", align 1
@pll_p_freq_table = internal global [6 x %struct.tegra_clk_pll_freq_table] [%struct.tegra_clk_pll_freq_table { i32 12000000, i32 216000000, i32 432, i32 12, i8 2, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 13000000, i32 216000000, i32 432, i32 13, i8 2, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 16800000, i32 216000000, i32 360, i32 14, i8 2, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 19200000, i32 216000000, i32 360, i32 16, i8 2, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 26000000, i32 216000000, i32 432, i32 26, i8 2, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table zeroinitializer], align 4
@.str.44 = private unnamed_addr constant [6 x i8] c"pll_a\00", align 1
@pll_a_params = internal global %struct.tegra_clk_pll_params { i32 2000000, i32 31000000, i32 1000000, i32 6000000, i32 200000000, i32 700000000, i32 176, i32 188, i32 0, i32 134217728, i32 18, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, [6 x i32] zeroinitializer, i32 0, i32 0, i32 1027, i32 0, i32 0, i32 300, i32 0, i8 0, ptr null, ptr @pllp_nmp, ptr @pll_a_freq_table, i32 0, i16 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.45 = private unnamed_addr constant [11 x i8] c"pll_p_out1\00", align 1
@pll_a_freq_table = internal global [7 x %struct.tegra_clk_pll_freq_table] [%struct.tegra_clk_pll_freq_table { i32 9600000, i32 282240000, i32 147, i32 5, i8 1, i8 4, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 9600000, i32 368640000, i32 192, i32 5, i8 1, i8 4, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 9600000, i32 240000000, i32 200, i32 8, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 28800000, i32 282240000, i32 245, i32 25, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 28800000, i32 368640000, i32 320, i32 25, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 28800000, i32 240000000, i32 200, i32 24, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table zeroinitializer], align 4
@pll_x_freq_table = internal global [6 x %struct.tegra_clk_pll_freq_table] [%struct.tegra_clk_pll_freq_table { i32 12000000, i32 1000000000, i32 83, i32 1, i8 1, i8 0, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 13000000, i32 1000000000, i32 76, i32 1, i8 1, i8 0, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 16800000, i32 1000000000, i32 59, i32 1, i8 1, i8 0, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 19200000, i32 1000000000, i32 52, i32 1, i8 1, i8 0, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 26000000, i32 1000000000, i32 76, i32 2, i8 1, i8 0, i16 0 }, %struct.tegra_clk_pll_freq_table zeroinitializer], align 4
@.str.46 = private unnamed_addr constant [4 x i8] c"osc\00", align 1
@.str.47 = private unnamed_addr constant [9 x i8] c"osc_div2\00", align 1
@.str.48 = private unnamed_addr constant [9 x i8] c"osc_div4\00", align 1
@.str.49 = private unnamed_addr constant [11 x i8] c"pll_p_out2\00", align 1
@.str.50 = private unnamed_addr constant [11 x i8] c"pll_p_out3\00", align 1
@.str.51 = private unnamed_addr constant [11 x i8] c"pll_p_out4\00", align 1
@.str.52 = private unnamed_addr constant [6 x i8] c"pll_x\00", align 1
@.str.53 = private unnamed_addr constant [11 x i8] c"pll_x_out0\00", align 1
@.str.54 = private unnamed_addr constant [14 x i8] c"spdif_in_sync\00", align 1
@.str.55 = private unnamed_addr constant [10 x i8] c"i2s0_sync\00", align 1
@.str.56 = private unnamed_addr constant [10 x i8] c"i2s1_sync\00", align 1
@.str.57 = private unnamed_addr constant [10 x i8] c"i2s2_sync\00", align 1
@.str.58 = private unnamed_addr constant [10 x i8] c"i2s3_sync\00", align 1
@.str.59 = private unnamed_addr constant [10 x i8] c"i2s4_sync\00", align 1
@.str.60 = private unnamed_addr constant [12 x i8] c"vimclk_sync\00", align 1
@.str.61 = private unnamed_addr constant [7 x i8] c"audio0\00", align 1
@.str.62 = private unnamed_addr constant [7 x i8] c"audio1\00", align 1
@.str.63 = private unnamed_addr constant [7 x i8] c"audio2\00", align 1
@.str.64 = private unnamed_addr constant [7 x i8] c"audio3\00", align 1
@.str.65 = private unnamed_addr constant [7 x i8] c"audio4\00", align 1
@.str.66 = private unnamed_addr constant [6 x i8] c"spdif\00", align 1
@.str.67 = private unnamed_addr constant [10 x i8] c"audio0_2x\00", align 1
@.str.68 = private unnamed_addr constant [10 x i8] c"audio1_2x\00", align 1
@.str.69 = private unnamed_addr constant [10 x i8] c"audio2_2x\00", align 1
@.str.70 = private unnamed_addr constant [10 x i8] c"audio3_2x\00", align 1
@.str.71 = private unnamed_addr constant [10 x i8] c"audio4_2x\00", align 1
@.str.72 = private unnamed_addr constant [9 x i8] c"spdif_2x\00", align 1
@.str.73 = private unnamed_addr constant [8 x i8] c"extern1\00", align 1
@.str.74 = private unnamed_addr constant [8 x i8] c"extern2\00", align 1
@.str.75 = private unnamed_addr constant [8 x i8] c"extern3\00", align 1
@.str.76 = private unnamed_addr constant [7 x i8] c"cclk_g\00", align 1
@.str.77 = private unnamed_addr constant [8 x i8] c"cclk_lp\00", align 1
@.str.78 = private unnamed_addr constant [5 x i8] c"sclk\00", align 1
@.str.79 = private unnamed_addr constant [5 x i8] c"hclk\00", align 1
@.str.80 = private unnamed_addr constant [5 x i8] c"pclk\00", align 1
@.str.81 = private unnamed_addr constant [5 x i8] c"fuse\00", align 1
@.str.82 = private unnamed_addr constant [10 x i8] c"rtc-tegra\00", align 1
@.str.83 = private unnamed_addr constant [6 x i8] c"timer\00", align 1
@init_table = internal global [35 x %struct.tegra_clk_init_table] [%struct.tegra_clk_init_table { i32 6, i32 211, i32 408000000, i32 0 }, %struct.tegra_clk_init_table { i32 192, i32 211, i32 408000000, i32 0 }, %struct.tegra_clk_init_table { i32 55, i32 211, i32 408000000, i32 0 }, %struct.tegra_clk_init_table { i32 65, i32 211, i32 408000000, i32 0 }, %struct.tegra_clk_init_table { i32 216, i32 312, i32 564480000, i32 0 }, %struct.tegra_clk_init_table { i32 217, i32 312, i32 11289600, i32 0 }, %struct.tegra_clk_init_table { i32 30, i32 217, i32 11289600, i32 0 }, %struct.tegra_clk_init_table { i32 11, i32 217, i32 11289600, i32 0 }, %struct.tegra_clk_init_table { i32 18, i32 217, i32 11289600, i32 0 }, %struct.tegra_clk_init_table { i32 101, i32 217, i32 11289600, i32 0 }, %struct.tegra_clk_init_table { i32 102, i32 217, i32 11289600, i32 0 }, %struct.tegra_clk_init_table { i32 28, i32 211, i32 136000000, i32 0 }, %struct.tegra_clk_init_table { i32 265, i32 211, i32 51000000, i32 1 }, %struct.tegra_clk_init_table { i32 264, i32 211, i32 51000000, i32 1 }, %struct.tegra_clk_init_table { i32 27, i32 211, i32 0, i32 0 }, %struct.tegra_clk_init_table { i32 26, i32 211, i32 0, i32 0 }, %struct.tegra_clk_init_table { i32 21, i32 207, i32 300000000, i32 0 }, %struct.tegra_clk_init_table { i32 24, i32 207, i32 300000000, i32 0 }, %struct.tegra_clk_init_table { i32 147, i32 211, i32 68000000, i32 0 }, %struct.tegra_clk_init_table { i32 148, i32 211, i32 68000000, i32 0 }, %struct.tegra_clk_init_table { i32 229, i32 312, i32 612000000, i32 0 }, %struct.tegra_clk_init_table { i32 255, i32 230, i32 122400000, i32 0 }, %struct.tegra_clk_init_table { i32 254, i32 225, i32 48000000, i32 0 }, %struct.tegra_clk_init_table { i32 258, i32 311, i32 61200000, i32 0 }, %struct.tegra_clk_init_table { i32 253, i32 211, i32 204000000, i32 0 }, %struct.tegra_clk_init_table { i32 252, i32 211, i32 102000000, i32 0 }, %struct.tegra_clk_init_table { i32 61, i32 211, i32 408000000, i32 0 }, %struct.tegra_clk_init_table { i32 232, i32 312, i32 24000000, i32 0 }, %struct.tegra_clk_init_table { i32 233, i32 312, i32 24000000, i32 0 }, %struct.tegra_clk_init_table { i32 234, i32 312, i32 24000000, i32 0 }, %struct.tegra_clk_init_table { i32 235, i32 312, i32 24000000, i32 0 }, %struct.tegra_clk_init_table { i32 236, i32 312, i32 24000000, i32 0 }, %struct.tegra_clk_init_table { i32 237, i32 312, i32 24000000, i32 0 }, %struct.tegra_clk_init_table { i32 238, i32 312, i32 24000000, i32 0 }, %struct.tegra_clk_init_table { i32 312, i32 312, i32 0, i32 0 }], section ".init.data", align 4
@tegra114_cpu_clk_sctx.0 = internal unnamed_addr global i32 0, align 4
@tegra114_cpu_clk_sctx.1 = internal unnamed_addr global i32 0, align 4
@tegra114_cpu_clk_sctx.2 = internal unnamed_addr global i32 0, align 4
@llvm.compiler.used = appending global [6 x ptr] [ptr @__ksymtab_tegra114_clock_assert_dfll_dvco_reset, ptr @__ksymtab_tegra114_clock_deassert_dfll_dvco_reset, ptr @__ksymtab_tegra114_clock_tune_cpu_trimmers_high, ptr @__ksymtab_tegra114_clock_tune_cpu_trimmers_init, ptr @__ksymtab_tegra114_clock_tune_cpu_trimmers_low, ptr @__of_table_tegra114], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tegra114_clock_tune_cpu_trimmers_high() #0 {
  %1 = load ptr, ptr @clk_base, align 4
  %2 = getelementptr i8, ptr %1, i32 1236
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2, i32 -64) #5, !srcloc !8
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !9
  tail call void @arm_heavy_mb() #5
  %3 = load ptr, ptr @clk_base, align 4
  %4 = getelementptr i8, ptr %3, i32 1236
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #5, !srcloc !10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tegra114_clock_tune_cpu_trimmers_low() #0 {
  %1 = load ptr, ptr @clk_base, align 4
  %2 = getelementptr i8, ptr %1, i32 1236
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2, i32 63) #5, !srcloc !8
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !9
  tail call void @arm_heavy_mb() #5
  %3 = load ptr, ptr @clk_base, align 4
  %4 = getelementptr i8, ptr %3, i32 1236
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #5, !srcloc !10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tegra114_clock_tune_cpu_trimmers_init() #0 {
  %1 = load ptr, ptr @clk_base, align 4
  %2 = getelementptr i8, ptr %1, i32 1252
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2, i32 4095) #5, !srcloc !8
  %3 = load ptr, ptr @clk_base, align 4
  %4 = getelementptr i8, ptr %3, i32 1240
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 63) #5, !srcloc !8
  %5 = load ptr, ptr @clk_base, align 4
  %6 = getelementptr i8, ptr %5, i32 1236
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 63) #5, !srcloc !8
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !9
  tail call void @arm_heavy_mb() #5
  %7 = load ptr, ptr @clk_base, align 4
  %8 = getelementptr i8, ptr %7, i32 1236
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #5, !srcloc !10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tegra114_clock_assert_dfll_dvco_reset() #0 {
  %1 = load ptr, ptr @clk_base, align 4
  %2 = getelementptr i8, ptr %1, i32 756
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #5, !srcloc !10
  %4 = or i32 %3, 1
  %5 = load ptr, ptr @clk_base, align 4
  %6 = getelementptr i8, ptr %5, i32 756
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %4) #5, !srcloc !8
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !9
  tail call void @arm_heavy_mb() #5
  %7 = load ptr, ptr @clk_base, align 4
  %8 = getelementptr i8, ptr %7, i32 1236
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #5, !srcloc !10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tegra114_clock_deassert_dfll_dvco_reset() #0 {
  %1 = load ptr, ptr @clk_base, align 4
  %2 = getelementptr i8, ptr %1, i32 756
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #5, !srcloc !10
  %4 = and i32 %3, -2
  %5 = load ptr, ptr @clk_base, align 4
  %6 = getelementptr i8, ptr %5, i32 756
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %4) #5, !srcloc !8
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !9
  tail call void @arm_heavy_mb() #5
  %7 = load ptr, ptr @clk_base, align 4
  %8 = getelementptr i8, ptr %7, i32 1236
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #5, !srcloc !10
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @tegra114_clock_init(ptr noundef %0) #1 section ".init.text" {
  %2 = tail call ptr @of_iomap(ptr noundef %0, i32 noundef 0) #5
  store ptr %2, ptr @clk_base, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #6
  br label %36

6:                                                ; preds = %1
  %7 = tail call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull @pmc_match, ptr noundef null) #5
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1315, i32 noundef 9, ptr noundef null) #5
  br label %36

11:                                               ; preds = %6
  %12 = tail call ptr @of_iomap(ptr noundef nonnull %7, i32 noundef 0) #5
  store ptr %12, ptr @pmc_base, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1322, i32 noundef 9, ptr noundef null) #5
  br label %36

16:                                               ; preds = %11
  %17 = load ptr, ptr @clk_base, align 4
  %18 = tail call ptr @tegra_clk_init(ptr noundef %17, i32 noundef 312, i32 noundef 5) #5
  store ptr %18, ptr @clks, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %36, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr @clk_base, align 4
  %22 = tail call i32 @tegra_osc_clk_init(ptr noundef %21, ptr noundef nonnull @tegra114_clks, ptr noundef nonnull @tegra114_input_freq, i32 noundef 13, i32 noundef 1, ptr noundef nonnull @osc_freq, ptr noundef nonnull @pll_ref_freq) #5
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %36, label %24

24:                                               ; preds = %20
  %25 = tail call ptr @clk_register_fixed_rate(ptr noundef null, ptr noundef nonnull @.str.5, ptr noundef null, i32 noundef 0, i32 noundef 32768) #5
  %26 = load ptr, ptr @clks, align 4
  %27 = getelementptr ptr, ptr %26, i32 200
  store ptr %25, ptr %27, align 4
  %28 = load ptr, ptr @clk_base, align 4
  %29 = load ptr, ptr @pmc_base, align 4
  tail call fastcc void @tegra114_pll_init(ptr noundef %28, ptr noundef %29) #7
  %30 = load ptr, ptr @clk_base, align 4
  %31 = load ptr, ptr @pmc_base, align 4
  tail call fastcc void @tegra114_periph_clk_init(ptr noundef %30, ptr noundef %31) #7
  %32 = load ptr, ptr @clk_base, align 4
  %33 = load ptr, ptr @pmc_base, align 4
  tail call void @tegra_audio_clk_init(ptr noundef %32, ptr noundef %33, ptr noundef nonnull @tegra114_clks, ptr noundef nonnull @tegra114_audio_plls, i32 noundef 1, i32 noundef 24000000) #5
  %34 = load ptr, ptr @clk_base, align 4
  %35 = load ptr, ptr @pmc_base, align 4
  tail call void @tegra_super_clk_gen4_init(ptr noundef %34, ptr noundef %35, ptr noundef nonnull @tegra114_clks, ptr noundef nonnull @pll_x_params) #5
  tail call void @tegra_add_of_provider(ptr noundef %0, ptr noundef nonnull @of_clk_src_onecell_get) #5
  tail call void @tegra_register_devclks(ptr noundef nonnull @devclks, i32 noundef 63) #5
  store ptr @tegra114_clock_apply_init_table, ptr @tegra_clk_apply_init_table, align 4
  store ptr @tegra114_cpu_car_ops, ptr @tegra_cpu_car_ops, align 4
  br label %36

36:                                               ; preds = %24, %20, %16, %14, %9, %4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tegra_clk_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_osc_clk_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @tegra114_pll_init(ptr noundef %0, ptr noundef %1) unnamed_addr #1 section ".init.text" {
  %3 = tail call ptr @tegra_clk_register_pllxc(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, ptr noundef %0, ptr noundef %1, i32 noundef 0, ptr noundef nonnull @pll_c_params, ptr noundef null) #5
  %4 = load ptr, ptr @clks, align 4
  %5 = getelementptr ptr, ptr %4, i32 205
  store ptr %3, ptr %5, align 4
  %6 = getelementptr i8, ptr %0, i32 132
  %7 = tail call ptr @tegra_clk_register_divider(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.6, ptr noundef %6, i32 noundef 0, i8 noundef zeroext 1, i8 noundef zeroext 8, i8 noundef zeroext 8, i8 noundef zeroext 1, ptr noundef null) #5
  %8 = tail call ptr @tegra_clk_register_pll_out(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.8, ptr noundef %6, i8 noundef zeroext 1, i8 noundef zeroext 0, i32 noundef 4, i8 noundef zeroext 0, ptr noundef null) #5
  %9 = load ptr, ptr @clks, align 4
  %10 = getelementptr ptr, ptr %9, i32 206
  store ptr %8, ptr %10, align 4
  %11 = tail call ptr @tegra_clk_register_pllc(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.7, ptr noundef %0, ptr noundef %1, i32 noundef 0, ptr noundef nonnull @pll_c2_params, ptr noundef null) #5
  %12 = load ptr, ptr @clks, align 4
  %13 = getelementptr ptr, ptr %12, i32 207
  store ptr %11, ptr %13, align 4
  %14 = tail call ptr @tegra_clk_register_pllc(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.7, ptr noundef %0, ptr noundef %1, i32 noundef 0, ptr noundef nonnull @pll_c3_params, ptr noundef null) #5
  %15 = load ptr, ptr @clks, align 4
  %16 = getelementptr ptr, ptr %15, i32 208
  store ptr %14, ptr %16, align 4
  %17 = tail call ptr @tegra_clk_register_pllm(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.7, ptr noundef %0, ptr noundef %1, i32 noundef 1, ptr noundef nonnull @pll_m_params, ptr noundef null) #5
  %18 = load ptr, ptr @clks, align 4
  %19 = getelementptr ptr, ptr %18, i32 209
  store ptr %17, ptr %19, align 4
  %20 = getelementptr i8, ptr %0, i32 148
  %21 = tail call ptr @tegra_clk_register_divider(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.12, ptr noundef %20, i32 noundef 0, i8 noundef zeroext 1, i8 noundef zeroext 8, i8 noundef zeroext 8, i8 noundef zeroext 1, ptr noundef null) #5
  %22 = tail call ptr @tegra_clk_register_pll_out(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.13, ptr noundef %20, i8 noundef zeroext 1, i8 noundef zeroext 0, i32 noundef 12, i8 noundef zeroext 0, ptr noundef null) #5
  %23 = load ptr, ptr @clks, align 4
  %24 = getelementptr ptr, ptr %23, i32 210
  store ptr %22, ptr %24, align 4
  %25 = tail call ptr @clk_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.12, i32 noundef 4, i32 noundef 1, i32 noundef 1) #5
  %26 = tail call ptr @tegra_clk_register_pllu_tegra114(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.7, ptr noundef %0, i32 noundef 0, ptr noundef nonnull @pll_u_params, ptr noundef nonnull @pll_u_lock) #5
  %27 = load ptr, ptr @clks, align 4
  %28 = getelementptr ptr, ptr %27, i32 222
  store ptr %26, ptr %28, align 4
  %29 = getelementptr i8, ptr %0, i32 192
  %30 = tail call ptr @clk_register_gate(ptr noundef null, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.16, i32 noundef 4, ptr noundef %29, i8 noundef zeroext 22, i8 noundef zeroext 0, ptr noundef nonnull @pll_u_lock) #5
  %31 = load ptr, ptr @clks, align 4
  %32 = getelementptr ptr, ptr %31, i32 223
  store ptr %30, ptr %32, align 4
  %33 = tail call ptr @clk_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.16, i32 noundef 4, i32 noundef 1, i32 noundef 8) #5
  %34 = load ptr, ptr @clks, align 4
  %35 = getelementptr ptr, ptr %34, i32 224
  store ptr %33, ptr %35, align 4
  %36 = tail call ptr @clk_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.16, i32 noundef 4, i32 noundef 1, i32 noundef 10) #5
  %37 = load ptr, ptr @clks, align 4
  %38 = getelementptr ptr, ptr %37, i32 225
  store ptr %36, ptr %38, align 4
  %39 = tail call ptr @clk_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.16, i32 noundef 4, i32 noundef 1, i32 noundef 40) #5
  %40 = load ptr, ptr @clks, align 4
  %41 = getelementptr ptr, ptr %40, i32 226
  store ptr %39, ptr %41, align 4
  %42 = tail call ptr @tegra_clk_register_pll(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.7, ptr noundef %0, ptr noundef %1, i32 noundef 0, ptr noundef nonnull @pll_d_params, ptr noundef nonnull @pll_d_lock) #5
  %43 = load ptr, ptr @clks, align 4
  %44 = getelementptr ptr, ptr %43, i32 218
  store ptr %42, ptr %44, align 4
  %45 = tail call ptr @clk_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.21, i32 noundef 4, i32 noundef 1, i32 noundef 2) #5
  %46 = load ptr, ptr @clks, align 4
  %47 = getelementptr ptr, ptr %46, i32 219
  store ptr %45, ptr %47, align 4
  %48 = tail call ptr @tegra_clk_register_pll(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.7, ptr noundef %0, ptr noundef %1, i32 noundef 0, ptr noundef nonnull @pll_d2_params, ptr noundef nonnull @pll_d2_lock) #5
  %49 = load ptr, ptr @clks, align 4
  %50 = getelementptr ptr, ptr %49, i32 220
  store ptr %48, ptr %50, align 4
  %51 = tail call ptr @clk_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.23, i32 noundef 4, i32 noundef 1, i32 noundef 2) #5
  %52 = load ptr, ptr @clks, align 4
  %53 = getelementptr ptr, ptr %52, i32 221
  store ptr %51, ptr %53, align 4
  %54 = load i32, ptr @pll_ref_freq, align 4
  %55 = tail call ptr @tegra_clk_register_pllre(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.7, ptr noundef %0, ptr noundef %1, i32 noundef 0, ptr noundef nonnull @pll_re_vco_params, ptr noundef nonnull @pll_re_lock, i32 noundef %54) #5
  %56 = load ptr, ptr @clks, align 4
  %57 = getelementptr ptr, ptr %56, i32 229
  store ptr %55, ptr %57, align 4
  %58 = getelementptr i8, ptr %0, i32 1220
  %59 = tail call ptr @clk_register_divider_table(ptr noundef null, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.25, i32 noundef 0, ptr noundef %58, i8 noundef zeroext 16, i8 noundef zeroext 4, i8 noundef zeroext 0, ptr noundef nonnull @pll_re_div_table, ptr noundef nonnull @pll_re_lock) #5
  %60 = load ptr, ptr @clks, align 4
  %61 = getelementptr ptr, ptr %60, i32 230
  store ptr %59, ptr %61, align 4
  %62 = tail call ptr @tegra_clk_register_plle_tegra114(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.7, ptr noundef %0, i32 noundef 0, ptr noundef nonnull @pll_e_params, ptr noundef null) #5
  %63 = load ptr, ptr @clks, align 4
  %64 = getelementptr ptr, ptr %63, i32 231
  store ptr %62, ptr %64, align 4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @tegra114_periph_clk_init(ptr noundef %0, ptr noundef %1) unnamed_addr #1 section ".init.text" {
  %3 = tail call ptr @clk_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29, i32 noundef 0, i32 noundef 1, i32 noundef 2) #5
  %4 = load ptr, ptr @clks, align 4
  %5 = getelementptr ptr, ptr %4, i32 311
  store ptr %3, ptr %5, align 4
  %6 = getelementptr i8, ptr %0, i32 208
  %7 = tail call ptr @clk_register_mux_table(ptr noundef null, ptr noundef nonnull @.str.30, ptr noundef nonnull @mux_plld_out0_plld2_out0, i8 noundef zeroext 2, i32 noundef 128, ptr noundef %6, i8 noundef zeroext 25, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @pll_d_lock) #5
  %8 = load ptr, ptr @clks, align 4
  %9 = getelementptr ptr, ptr %8, i32 309
  store ptr %7, ptr %9, align 4
  %10 = getelementptr i8, ptr %0, i32 1208
  %11 = tail call ptr @clk_register_mux_table(ptr noundef null, ptr noundef nonnull @.str.31, ptr noundef nonnull @mux_plld_out0_plld2_out0, i8 noundef zeroext 2, i32 noundef 128, ptr noundef %10, i8 noundef zeroext 25, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @pll_d2_lock) #5
  %12 = load ptr, ptr @clks, align 4
  %13 = getelementptr ptr, ptr %12, i32 310
  store ptr %11, ptr %13, align 4
  %14 = load ptr, ptr @periph_clk_enb_refcnt, align 4
  %15 = tail call ptr @tegra_clk_register_periph_gate(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.30, i8 noundef zeroext 0, ptr noundef %0, i32 noundef 0, i32 noundef 48, ptr noundef %14) #5
  %16 = load ptr, ptr @clks, align 4
  %17 = getelementptr ptr, ptr %16, i32 48
  store ptr %15, ptr %17, align 4
  %18 = load ptr, ptr @periph_clk_enb_refcnt, align 4
  %19 = tail call ptr @tegra_clk_register_periph_gate(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.31, i8 noundef zeroext 0, ptr noundef %0, i32 noundef 0, i32 noundef 82, ptr noundef %18) #5
  %20 = load ptr, ptr @clks, align 4
  %21 = getelementptr ptr, ptr %20, i32 82
  store ptr %19, ptr %21, align 4
  %22 = getelementptr i8, ptr %0, i32 412
  %23 = tail call ptr @clk_register_mux_table(ptr noundef null, ptr noundef nonnull @.str.34, ptr noundef nonnull @mux_pllmcp_clkm, i8 noundef zeroext 5, i32 noundef 128, ptr noundef %22, i8 noundef zeroext 29, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @emc_lock) #5
  %24 = tail call ptr @tegra_clk_register_mc(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.34, ptr noundef %22, ptr noundef nonnull @emc_lock) #5
  %25 = load ptr, ptr @clks, align 4
  %26 = getelementptr ptr, ptr %25, i32 32
  store ptr %24, ptr %26, align 4
  %27 = load ptr, ptr @periph_clk_enb_refcnt, align 4
  %28 = tail call ptr @tegra_clk_register_periph_gate(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37, i8 noundef zeroext 0, ptr noundef %0, i32 noundef 4, i32 noundef 56, ptr noundef %27) #5
  %29 = load ptr, ptr @clks, align 4
  %30 = getelementptr ptr, ptr %29, i32 56
  store ptr %28, ptr %30, align 4
  %31 = tail call ptr @tegra_clk_register_periph_data(ptr noundef %0, ptr noundef nonnull @tegra_periph_clk_list) #5
  %32 = load ptr, ptr @clks, align 4
  %33 = load i32, ptr getelementptr inbounds ([1 x %struct.tegra_periph_init_data], ptr @tegra_periph_clk_list, i32 0, i32 0, i32 1), align 4
  %34 = getelementptr ptr, ptr %32, i32 %33
  store ptr %31, ptr %34, align 4
  tail call void @tegra_periph_clk_init(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @tegra114_clks, ptr noundef nonnull @pll_p_params) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra_audio_clk_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra_super_clk_gen4_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra_add_of_provider(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_onecell_get(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra_register_devclks(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @tegra114_clock_apply_init_table() #1 section ".init.text" {
  %1 = load ptr, ptr @clks, align 4
  tail call void @tegra_init_from_table(ptr noundef nonnull @init_table, ptr noundef %1, i32 noundef 312) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_matching_node_and_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_fixed_rate(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tegra_clk_register_pllxc(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tegra_clk_register_divider(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tegra_clk_register_pll_out(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tegra_clk_register_pllc(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tegra_clk_register_pllm(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_fixed_factor(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tegra_clk_register_pllu_tegra114(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_gate(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tegra_clk_register_pll(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tegra_clk_register_pllre(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_divider_table(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tegra_clk_register_plle_tegra114(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_mux_table(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tegra_clk_register_periph_gate(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tegra_clk_register_mc(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tegra_clk_register_periph_data(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra_periph_clk_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra_init_from_table(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra114_wait_cpu_in_reset(i32 noundef %0) #0 {
  %2 = shl nuw i32 1, %0
  br label %3

3:                                                ; preds = %3, %1
  %4 = load ptr, ptr @clk_base, align 4
  %5 = getelementptr i8, ptr %4, i32 1136
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !11
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !12
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !13
  %7 = and i32 %6, %2
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %3, label %9

9:                                                ; preds = %3
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @tegra114_disable_cpu_clock(i32 noundef %0) #4 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra114_cpu_clock_suspend() #0 {
  %1 = load ptr, ptr @clk_base, align 4
  %2 = getelementptr i8, ptr %1, i32 468
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !14
  store i32 %3, ptr @tegra114_cpu_clk_sctx.0, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !15
  tail call void @arm_heavy_mb() #5
  %4 = load ptr, ptr @clk_base, align 4
  %5 = getelementptr i8, ptr %4, i32 468
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 -1073741824) #5, !srcloc !8
  %6 = load ptr, ptr @clk_base, align 4
  %7 = getelementptr i8, ptr %6, i32 872
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !16
  store i32 %8, ptr @tegra114_cpu_clk_sctx.1, align 4
  %9 = load ptr, ptr @clk_base, align 4
  %10 = getelementptr i8, ptr %9, i32 876
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #5, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !17
  store i32 %11, ptr @tegra114_cpu_clk_sctx.2, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tegra114_cpu_clock_resume() #0 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !18
  tail call void @arm_heavy_mb() #5
  %1 = load i32, ptr @tegra114_cpu_clk_sctx.0, align 4
  %2 = load ptr, ptr @clk_base, align 4
  %3 = getelementptr i8, ptr %2, i32 468
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 %1) #5, !srcloc !8
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !19
  tail call void @arm_heavy_mb() #5
  %4 = load i32, ptr @tegra114_cpu_clk_sctx.1, align 4
  %5 = load ptr, ptr @clk_base, align 4
  %6 = getelementptr i8, ptr %5, i32 872
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %4) #5, !srcloc !8
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !20
  tail call void @arm_heavy_mb() #5
  %7 = load i32, ptr @tegra114_cpu_clk_sctx.2, align 4
  %8 = load ptr, ptr @clk_base, align 4
  %9 = getelementptr i8, ptr %8, i32 876
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %7) #5, !srcloc !8
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { cold nounwind }
attributes #7 = { cold }

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
!8 = !{i64 408484}
!9 = !{i64 2151215118}
!10 = !{i64 408902}
!11 = !{i64 2151211536}
!12 = !{i64 2151211782}
!13 = !{i64 2151211624}
!14 = !{i64 2151212122}
!15 = !{i64 2151212316}
!16 = !{i64 2151212789}
!17 = !{i64 2151213138}
!18 = !{i64 2151213360}
!19 = !{i64 2151213772}
!20 = !{i64 2151214186}
