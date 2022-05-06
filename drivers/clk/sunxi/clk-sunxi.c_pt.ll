; ModuleID = '/llk/IR/drivers/clk/sunxi/clk-sunxi.c_pt.bc'
source_filename = "../drivers/clk/sunxi/clk-sunxi.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.factors_data = type { i32, i32, i32, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.clk_factors_config = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.mux_data = type { i8 }
%struct.div_data = type { i8, i8, i8, ptr }
%struct.clk_div_table = type { i32, i32 }
%struct.divs_data = type { ptr, i32, [4 x %struct.anon.4] }
%struct.anon.4 = type { i8, i8, ptr, i8, i8, i8, i8 }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.factors_request = type { i32, i32, i8, i8, i8, i8, i8 }
%struct.clk_gate = type { %struct.clk_hw, ptr, i8, i8, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.clk_fixed_factor = type { %struct.clk_hw, i32, i32 }
%struct.clk_divider = type { %struct.clk_hw, ptr, i8, i8, i8, ptr, ptr }
%struct.clk_onecell_data = type { ptr, i32 }

@__of_table_sun4i_pll1 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun4i-a10-pll1-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun4i_pll1_clk_setup }, section "__clk_of_table", align 4
@__of_table_sun6i_pll1 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun6i-a31-pll1-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun6i_pll1_clk_setup }, section "__clk_of_table", align 4
@__of_table_sun8i_pll1 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-a23-pll1-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun8i_pll1_clk_setup }, section "__clk_of_table", align 4
@__of_table_sun7i_pll4 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun7i-a20-pll4-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun7i_pll4_clk_setup }, section "__clk_of_table", align 4
@__of_table_sun5i_ahb = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun5i-a13-ahb-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun5i_ahb_clk_setup }, section "__clk_of_table", align 4
@__of_table_sun6i_a31_ahb1 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun6i-a31-ahb1-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun6i_ahb1_clk_setup }, section "__clk_of_table", align 4
@__of_table_sun4i_apb1 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun4i-a10-apb1-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun4i_apb1_clk_setup }, section "__clk_of_table", align 4
@__of_table_sun7i_out = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun7i-a20-out-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun7i_out_clk_setup }, section "__clk_of_table", align 4
@__of_table_sun4i_cpu = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun4i-a10-cpu-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun4i_cpu_clk_setup }, section "__clk_of_table", align 4
@__of_table_sun6i_ahb1_mux = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun6i-a31-ahb1-mux-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun6i_ahb1_mux_clk_setup }, section "__clk_of_table", align 4
@__of_table_sun8i_ahb2 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-h3-ahb2-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun8i_ahb2_clk_setup }, section "__clk_of_table", align 4
@__of_table_sun4i_ahb = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun4i-a10-ahb-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun4i_ahb_clk_setup }, section "__clk_of_table", align 4
@__of_table_sun4i_apb0 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun4i-a10-apb0-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun4i_apb0_clk_setup }, section "__clk_of_table", align 4
@__of_table_sun4i_axi = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun4i-a10-axi-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun4i_axi_clk_setup }, section "__clk_of_table", align 4
@__of_table_sun8i_axi = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-a23-axi-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun8i_axi_clk_setup }, section "__clk_of_table", align 4
@__of_table_sun4i_pll5 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun4i-a10-pll5-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun4i_pll5_clk_setup }, section "__clk_of_table", align 4
@__of_table_sun4i_pll6 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun4i-a10-pll6-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun4i_pll6_clk_setup }, section "__clk_of_table", align 4
@__of_table_sun6i_pll6 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun6i-a31-pll6-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun6i_pll6_clk_setup }, section "__clk_of_table", align 4
@__of_table_sun6i_display = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun6i-a31-display-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun6i_display_setup }, section "__clk_of_table", align 4
@sun4i_pll1_data = internal constant %struct.factors_data { i32 31, i32 0, i32 0, ptr @sun4i_pll1_config, ptr @sun4i_get_pll1_factors, ptr null, ptr null }, section ".init.rodata", align 4
@.str = private unnamed_addr constant [50 x i8] c"\013Could not get registers for factors-clk: %pOFn\0A\00", align 1
@clk_lock = internal global %struct.spinlock zeroinitializer, align 4
@sun4i_pll1_config = internal constant %struct.clk_factors_config { i8 8, i8 5, i8 4, i8 2, i8 0, i8 2, i8 16, i8 2, i8 0 }, align 1
@sun6i_a31_pll1_data = internal constant %struct.factors_data { i32 31, i32 0, i32 0, ptr @sun6i_a31_pll1_config, ptr @sun6i_a31_get_pll1_factors, ptr null, ptr null }, section ".init.rodata", align 4
@sun6i_a31_pll1_config = internal constant %struct.clk_factors_config { i8 8, i8 5, i8 4, i8 2, i8 0, i8 2, i8 0, i8 0, i8 1 }, align 1
@sun8i_a23_pll1_data = internal constant %struct.factors_data { i32 31, i32 0, i32 0, ptr @sun8i_a23_pll1_config, ptr @sun8i_a23_get_pll1_factors, ptr null, ptr null }, section ".init.rodata", align 4
@sun8i_a23_pll1_config = internal constant %struct.clk_factors_config { i8 8, i8 5, i8 4, i8 2, i8 0, i8 2, i8 16, i8 2, i8 1 }, align 1
@sun7i_a20_pll4_data = internal constant %struct.factors_data { i32 31, i32 0, i32 0, ptr @sun4i_pll5_config, ptr @sun4i_get_pll5_factors, ptr null, ptr null }, section ".init.rodata", align 4
@sun4i_pll5_config = internal constant %struct.clk_factors_config { i8 8, i8 5, i8 4, i8 2, i8 0, i8 0, i8 0, i8 0, i8 0 }, align 1
@sun5i_a13_ahb_data = internal constant %struct.factors_data { i32 0, i32 6, i32 3, ptr @sun5i_a13_ahb_config, ptr @sun5i_a13_get_ahb_factors, ptr null, ptr null }, section ".init.rodata", align 4
@sun5i_a13_ahb_config = internal constant %struct.clk_factors_config { i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 4, i8 2, i8 0 }, align 1
@sun6i_ahb1_data = internal constant %struct.factors_data { i32 0, i32 12, i32 3, ptr @sun6i_ahb1_config, ptr @sun6i_get_ahb1_factors, ptr @sun6i_ahb1_recalc, ptr null }, section ".init.rodata", align 4
@sun6i_ahb1_config = internal constant %struct.clk_factors_config { i8 0, i8 0, i8 0, i8 0, i8 6, i8 2, i8 4, i8 2, i8 0 }, align 1
@sun4i_apb1_data = internal constant %struct.factors_data { i32 0, i32 24, i32 3, ptr @sun4i_apb1_config, ptr @sun4i_get_apb1_factors, ptr null, ptr null }, section ".init.rodata", align 4
@sun4i_apb1_config = internal constant %struct.clk_factors_config { i8 0, i8 0, i8 0, i8 0, i8 0, i8 5, i8 16, i8 2, i8 0 }, align 1
@sun7i_a20_out_data = internal constant %struct.factors_data { i32 31, i32 24, i32 3, ptr @sun7i_a20_out_config, ptr @sun7i_a20_get_out_factors, ptr null, ptr null }, section ".init.rodata", align 4
@sun7i_a20_out_config = internal constant %struct.clk_factors_config { i8 0, i8 0, i8 0, i8 0, i8 8, i8 5, i8 20, i8 2, i8 0 }, align 1
@sun4i_cpu_mux_data = internal constant %struct.mux_data { i8 16 }, section ".init.rodata", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"\013Could not map registers for mux-clk: %pOF\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"clock-output-names\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"\013%s: could not read clock-output-names from \22%pOF\22\0A\00", align 1
@__func__.sunxi_mux_clk_setup = private unnamed_addr constant [20 x i8] c"sunxi_mux_clk_setup\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"\013%s: failed to register mux clock %s: %ld\0A\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"\013%s: failed to add clock provider for %s\0A\00", align 1
@sun6i_a31_ahb1_mux_data = internal constant %struct.mux_data { i8 12 }, section ".init.rodata", align 1
@sun8i_h3_ahb2_mux_data = internal constant %struct.mux_data zeroinitializer, section ".init.rodata", align 1
@sun4i_ahb_data = internal constant %struct.div_data { i8 4, i8 1, i8 2, ptr null }, section ".init.rodata", align 4
@__func__.sunxi_divider_clk_setup = private unnamed_addr constant [24 x i8] c"sunxi_divider_clk_setup\00", align 1
@.str.6 = private unnamed_addr constant [48 x i8] c"\013%s: failed to register divider clock %s: %ld\0A\00", align 1
@sun4i_apb0_data = internal constant %struct.div_data { i8 8, i8 1, i8 2, ptr @sun4i_apb0_table }, section ".init.rodata", align 4
@sun4i_apb0_table = internal constant [5 x %struct.clk_div_table] [%struct.clk_div_table { i32 0, i32 2 }, %struct.clk_div_table { i32 1, i32 2 }, %struct.clk_div_table { i32 2, i32 4 }, %struct.clk_div_table { i32 3, i32 8 }, %struct.clk_div_table zeroinitializer], section ".init.rodata", align 4
@sun4i_axi_data = internal constant %struct.div_data { i8 0, i8 0, i8 2, ptr null }, section ".init.rodata", align 4
@sun8i_a23_axi_data = internal constant %struct.div_data { i8 0, i8 0, i8 3, ptr @sun8i_a23_axi_table }, section ".init.rodata", align 4
@sun8i_a23_axi_table = internal constant [9 x %struct.clk_div_table] [%struct.clk_div_table { i32 0, i32 1 }, %struct.clk_div_table { i32 1, i32 2 }, %struct.clk_div_table { i32 2, i32 3 }, %struct.clk_div_table { i32 3, i32 4 }, %struct.clk_div_table { i32 4, i32 4 }, %struct.clk_div_table { i32 5, i32 4 }, %struct.clk_div_table { i32 6, i32 4 }, %struct.clk_div_table { i32 7, i32 4 }, %struct.clk_div_table zeroinitializer], section ".init.rodata", align 4
@pll5_divs_data = internal constant %struct.divs_data { ptr @sun4i_pll5_data, i32 2, [4 x %struct.anon.4] [%struct.anon.4 { i8 0, i8 0, ptr null, i8 0, i8 0, i8 0, i8 1 }, %struct.anon.4 { i8 0, i8 0, ptr null, i8 16, i8 1, i8 0, i8 0 }, %struct.anon.4 zeroinitializer, %struct.anon.4 zeroinitializer] }, section ".init.rodata", align 4
@.str.7 = private unnamed_addr constant [46 x i8] c"\013Could not map registers for divs-clk: %pOF\0A\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"pll5\00", align 1
@clk_fixed_factor_ops = external dso_local constant %struct.clk_ops, align 4
@clk_divider_ops = external dso_local constant %struct.clk_ops, align 4
@clk_gate_ops = external dso_local constant %struct.clk_ops, align 4
@.str.9 = private unnamed_addr constant [30 x i8] c"drivers/clk/sunxi/clk-sunxi.c\00", align 1
@__func__.sunxi_divs_clk_setup = private unnamed_addr constant [21 x i8] c"sunxi_divs_clk_setup\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@sun4i_pll5_data = internal constant %struct.factors_data { i32 31, i32 0, i32 0, ptr @sun4i_pll5_config, ptr @sun4i_get_pll5_factors, ptr null, ptr null }, section ".init.rodata", align 4
@pll6_divs_data = internal constant %struct.divs_data { ptr @sun4i_pll5_data, i32 4, [4 x %struct.anon.4] [%struct.anon.4 { i8 0, i8 0, ptr @pll6_sata_tbl, i8 0, i8 0, i8 14, i8 0 }, %struct.anon.4 { i8 0, i8 2, ptr null, i8 0, i8 0, i8 0, i8 0 }, %struct.anon.4 { i8 1, i8 0, ptr null, i8 0, i8 0, i8 0, i8 0 }, %struct.anon.4 { i8 0, i8 4, ptr null, i8 0, i8 0, i8 0, i8 0 }] }, section ".init.rodata", align 4
@pll6_sata_tbl = internal global [5 x %struct.clk_div_table] [%struct.clk_div_table { i32 0, i32 6 }, %struct.clk_div_table { i32 1, i32 12 }, %struct.clk_div_table { i32 2, i32 18 }, %struct.clk_div_table { i32 3, i32 24 }, %struct.clk_div_table zeroinitializer], align 4
@sun6i_a31_pll6_divs_data = internal constant %struct.divs_data { ptr @sun6i_a31_pll6_data, i32 2, [4 x %struct.anon.4] [%struct.anon.4 { i8 0, i8 2, ptr null, i8 0, i8 0, i8 0, i8 0 }, %struct.anon.4 { i8 1, i8 0, ptr null, i8 0, i8 0, i8 0, i8 0 }, %struct.anon.4 zeroinitializer, %struct.anon.4 zeroinitializer] }, section ".init.rodata", align 4
@sun6i_a31_pll6_data = internal constant %struct.factors_data { i32 31, i32 0, i32 0, ptr @sun6i_a31_pll6_config, ptr @sun6i_a31_get_pll6_factors, ptr null, ptr null }, section ".init.rodata", align 4
@sun6i_a31_pll6_config = internal constant %struct.clk_factors_config { i8 8, i8 5, i8 4, i8 2, i8 0, i8 0, i8 0, i8 0, i8 1 }, align 1
@sun6i_display_data = internal constant %struct.factors_data { i32 31, i32 24, i32 7, ptr @sun6i_display_config, ptr @sun6i_display_factors, ptr null, ptr null }, section ".init.rodata", align 4
@sun6i_display_config = internal constant %struct.clk_factors_config { i8 0, i8 0, i8 0, i8 0, i8 0, i8 4, i8 0, i8 0, i8 0 }, align 1
@llvm.compiler.used = appending global [19 x ptr] [ptr @__of_table_sun4i_ahb, ptr @__of_table_sun4i_apb0, ptr @__of_table_sun4i_apb1, ptr @__of_table_sun4i_axi, ptr @__of_table_sun4i_cpu, ptr @__of_table_sun4i_pll1, ptr @__of_table_sun4i_pll5, ptr @__of_table_sun4i_pll6, ptr @__of_table_sun5i_ahb, ptr @__of_table_sun6i_a31_ahb1, ptr @__of_table_sun6i_ahb1_mux, ptr @__of_table_sun6i_display, ptr @__of_table_sun6i_pll1, ptr @__of_table_sun6i_pll6, ptr @__of_table_sun7i_out, ptr @__of_table_sun7i_pll4, ptr @__of_table_sun8i_ahb2, ptr @__of_table_sun8i_axi, ptr @__of_table_sun8i_pll1], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @sun4i_pll1_clk_setup(ptr noundef %0) #0 section ".init.text" {
  %2 = tail call fastcc ptr @sunxi_factors_clk_setup(ptr noundef %0, ptr noundef nonnull @sun4i_pll1_data) #12
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @sun6i_pll1_clk_setup(ptr noundef %0) #0 section ".init.text" {
  %2 = tail call fastcc ptr @sunxi_factors_clk_setup(ptr noundef %0, ptr noundef nonnull @sun6i_a31_pll1_data) #12
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @sun8i_pll1_clk_setup(ptr noundef %0) #0 section ".init.text" {
  %2 = tail call fastcc ptr @sunxi_factors_clk_setup(ptr noundef %0, ptr noundef nonnull @sun8i_a23_pll1_data) #12
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @sun7i_pll4_clk_setup(ptr noundef %0) #0 section ".init.text" {
  %2 = tail call fastcc ptr @sunxi_factors_clk_setup(ptr noundef %0, ptr noundef nonnull @sun7i_a20_pll4_data) #12
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @sun5i_ahb_clk_setup(ptr noundef %0) #0 section ".init.text" {
  %2 = tail call fastcc ptr @sunxi_factors_clk_setup(ptr noundef %0, ptr noundef nonnull @sun5i_a13_ahb_data) #12
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @sun6i_ahb1_clk_setup(ptr noundef %0) #0 section ".init.text" {
  %2 = tail call fastcc ptr @sunxi_factors_clk_setup(ptr noundef %0, ptr noundef nonnull @sun6i_ahb1_data) #12
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @sun4i_apb1_clk_setup(ptr noundef %0) #0 section ".init.text" {
  %2 = tail call fastcc ptr @sunxi_factors_clk_setup(ptr noundef %0, ptr noundef nonnull @sun4i_apb1_data) #12
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @sun7i_out_clk_setup(ptr noundef %0) #0 section ".init.text" {
  %2 = tail call fastcc ptr @sunxi_factors_clk_setup(ptr noundef %0, ptr noundef nonnull @sun7i_a20_out_data) #12
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @sun4i_cpu_clk_setup(ptr noundef %0) #0 section ".init.text" {
  tail call fastcc void @sunxi_mux_clk_setup(ptr noundef %0, ptr noundef nonnull @sun4i_cpu_mux_data, i32 noundef 2048) #12
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @sun6i_ahb1_mux_clk_setup(ptr noundef %0) #0 section ".init.text" {
  tail call fastcc void @sunxi_mux_clk_setup(ptr noundef %0, ptr noundef nonnull @sun6i_a31_ahb1_mux_data, i32 noundef 0) #12
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @sun8i_ahb2_clk_setup(ptr noundef %0) #0 section ".init.text" {
  tail call fastcc void @sunxi_mux_clk_setup(ptr noundef %0, ptr noundef nonnull @sun8i_h3_ahb2_mux_data, i32 noundef 0) #12
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @sun4i_ahb_clk_setup(ptr noundef %0) #0 section ".init.text" {
  tail call fastcc void @sunxi_divider_clk_setup(ptr noundef %0, ptr noundef nonnull @sun4i_ahb_data) #12
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @sun4i_apb0_clk_setup(ptr noundef %0) #0 section ".init.text" {
  tail call fastcc void @sunxi_divider_clk_setup(ptr noundef %0, ptr noundef nonnull @sun4i_apb0_data) #12
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @sun4i_axi_clk_setup(ptr noundef %0) #0 section ".init.text" {
  tail call fastcc void @sunxi_divider_clk_setup(ptr noundef %0, ptr noundef nonnull @sun4i_axi_data) #12
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @sun8i_axi_clk_setup(ptr noundef %0) #0 section ".init.text" {
  tail call fastcc void @sunxi_divider_clk_setup(ptr noundef %0, ptr noundef nonnull @sun8i_a23_axi_data) #12
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @sun4i_pll5_clk_setup(ptr noundef %0) #0 section ".init.text" {
  tail call fastcc void @sunxi_divs_clk_setup(ptr noundef %0, ptr noundef nonnull @pll5_divs_data) #12
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @sun4i_pll6_clk_setup(ptr noundef %0) #0 section ".init.text" {
  tail call fastcc void @sunxi_divs_clk_setup(ptr noundef %0, ptr noundef nonnull @pll6_divs_data) #12
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @sun6i_pll6_clk_setup(ptr noundef %0) #0 section ".init.text" {
  tail call fastcc void @sunxi_divs_clk_setup(ptr noundef %0, ptr noundef nonnull @sun6i_a31_pll6_divs_data) #12
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @sun6i_display_setup(ptr noundef %0) #0 section ".init.text" {
  %2 = tail call fastcc ptr @sunxi_factors_clk_setup(ptr noundef %0, ptr noundef nonnull @sun6i_display_data) #12
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc ptr @sunxi_factors_clk_setup(ptr noundef %0, ptr noundef %1) unnamed_addr #0 section ".init.text" {
  %3 = tail call ptr @of_iomap(ptr noundef %0, i32 noundef 0) #13
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %0) #14
  br label %9

7:                                                ; preds = %2
  %8 = tail call ptr @sunxi_factors_register(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @clk_lock, ptr noundef nonnull %3) #13
  br label %9

9:                                                ; preds = %7, %5
  %10 = phi ptr [ %8, %7 ], [ null, %5 ]
  ret ptr %10
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sunxi_factors_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @sun4i_get_pll1_factors(ptr nocapture noundef %0) #4 {
  %2 = load i32, ptr %0, align 4
  %3 = udiv i32 %2, 6000000
  %4 = and i32 %3, 255
  %5 = mul nuw nsw i32 %4, 6000000
  store i32 %5, ptr %0, align 4
  %6 = getelementptr inbounds %struct.factors_request, ptr %0, i32 0, i32 5
  store i8 0, ptr %6, align 1
  %7 = freeze i32 %5
  %8 = icmp ugt i32 %7, 767999999
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = trunc i32 %3 to i8
  switch i8 %10, label %11 [
    i8 9, label %12
    i8 7, label %12
  ]

11:                                               ; preds = %9
  br label %12

12:                                               ; preds = %11, %9, %9, %1
  %13 = phi i8 [ 0, %11 ], [ 1, %9 ], [ 1, %9 ], [ 1, %1 ]
  %14 = phi i8 [ 1, %11 ], [ 2, %9 ], [ 2, %9 ], [ 2, %1 ]
  %15 = getelementptr inbounds %struct.factors_request, ptr %0, i32 0, i32 4
  store i8 %13, ptr %15, align 2
  %16 = icmp ult i32 %4, 10
  br i1 %16, label %36, label %17

17:                                               ; preds = %12
  %18 = icmp ult i32 %4, 20
  br i1 %18, label %36, label %19

19:                                               ; preds = %17
  %20 = icmp ugt i32 %4, 31
  %21 = and i32 %3, 1
  %22 = icmp eq i32 %21, 0
  %23 = or i1 %20, %22
  br i1 %23, label %24, label %36

24:                                               ; preds = %19
  %25 = icmp ult i32 %4, 40
  br i1 %25, label %36, label %26

26:                                               ; preds = %24
  %27 = icmp ugt i32 %4, 63
  %28 = and i32 %3, 2
  %29 = icmp eq i32 %28, 0
  %30 = or i1 %27, %29
  %31 = or i1 %27, %29
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i8
  %34 = xor i1 %30, true
  %35 = zext i1 %34 to i32
  br label %36

36:                                               ; preds = %26, %24, %19, %17, %12
  %37 = phi i8 [ 3, %12 ], [ 2, %19 ], [ 2, %17 ], [ 1, %24 ], [ %33, %26 ]
  %38 = phi i32 [ 3, %12 ], [ 2, %19 ], [ 2, %17 ], [ 1, %24 ], [ %35, %26 ]
  %39 = getelementptr inbounds %struct.factors_request, ptr %0, i32 0, i32 6
  store i8 %37, ptr %39, align 4
  %40 = shl nuw nsw i32 %3, %38
  %41 = trunc i32 %40 to i8
  %42 = udiv i8 %41, %14
  %43 = lshr i8 %42, 2
  %44 = getelementptr inbounds %struct.factors_request, ptr %0, i32 0, i32 3
  store i8 %43, ptr %44, align 1
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @sun6i_a31_get_pll1_factors(ptr nocapture noundef %0) #4 {
  %2 = load i32, ptr %0, align 4
  %3 = udiv i32 %2, 1000000
  %4 = getelementptr inbounds %struct.factors_request, ptr %0, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = udiv i32 %5, 1000000
  %7 = trunc i32 %3 to i16
  %8 = urem i16 %7, 6
  %9 = zext i16 %8 to i32
  %10 = sub nsw i32 %3, %9
  %11 = and i32 %3, 8176
  %12 = tail call i32 @llvm.umax.i32(i32 %10, i32 %11)
  %13 = mul i32 %12, 1000000
  store i32 %13, ptr %0, align 4
  %14 = and i32 %12, 31
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.factors_request, ptr %0, i32 0, i32 4
  store i8 3, ptr %17, align 2
  br label %29

18:                                               ; preds = %1
  %19 = urem i32 %12, 9
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.factors_request, ptr %0, i32 0, i32 4
  store i8 2, ptr %22, align 2
  br label %29

23:                                               ; preds = %18
  %24 = and i32 %12, 7
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds %struct.factors_request, ptr %0, i32 0, i32 4
  br i1 %25, label %27, label %28

27:                                               ; preds = %23
  store i8 1, ptr %26, align 2
  br label %29

28:                                               ; preds = %23
  store i8 0, ptr %26, align 2
  br label %29

29:                                               ; preds = %28, %27, %21, %16
  %30 = phi i32 [ 3, %21 ], [ 1, %28 ], [ 2, %27 ], [ 4, %16 ]
  %31 = freeze i32 %12
  %32 = udiv i32 %31, 6
  %33 = mul i32 %32, 6
  %34 = sub i32 %31, %33
  switch i32 %34, label %37 [
    i32 2, label %35
    i32 4, label %35
  ]

35:                                               ; preds = %29, %29
  %36 = getelementptr inbounds %struct.factors_request, ptr %0, i32 0, i32 5
  store i8 2, ptr %36, align 1
  br label %43

37:                                               ; preds = %29
  %38 = and i32 %32, 1
  %39 = icmp eq i32 %38, 0
  %40 = getelementptr inbounds %struct.factors_request, ptr %0, i32 0, i32 5
  br i1 %39, label %42, label %41

41:                                               ; preds = %37
  store i8 3, ptr %40, align 1
  br label %43

42:                                               ; preds = %37
  store i8 1, ptr %40, align 1
  br label %43

43:                                               ; preds = %42, %41, %35
  %44 = phi i8 [ 4, %41 ], [ 2, %42 ], [ 3, %35 ]
  %45 = zext i8 %44 to i32
  %46 = mul nsw i32 %12, %45
  %47 = mul nuw nsw i32 %30, %6
  %48 = udiv i32 %46, %47
  %49 = trunc i32 %48 to i8
  %50 = add i8 %49, -1
  %51 = getelementptr inbounds %struct.factors_request, ptr %0, i32 0, i32 3
  store i8 %50, ptr %51, align 1
  %52 = icmp ult i8 %50, 31
  br i1 %52, label %62, label %53

53:                                               ; preds = %43
  %54 = getelementptr inbounds %struct.factors_request, ptr %0, i32 0, i32 5
  %55 = zext i8 %50 to i16
  %56 = add nuw nsw i16 %55, 1
  %57 = lshr i16 %56, 1
  %58 = trunc i16 %57 to i8
  %59 = add i8 %58, -1
  store i8 %59, ptr %51, align 1
  %60 = lshr i8 %44, 1
  %61 = add nsw i8 %60, -1
  store i8 %61, ptr %54, align 1
  br label %62

62:                                               ; preds = %53, %43
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @sun8i_a23_get_pll1_factors(ptr nocapture noundef %0) #4 {
  %2 = load i32, ptr %0, align 4
  %3 = udiv i32 %2, 6000000
  %4 = and i32 %3, 255
  %5 = mul nuw nsw i32 %4, 6000000
  store i32 %5, ptr %0, align 4
  %6 = getelementptr inbounds %struct.factors_request, ptr %0, i32 0, i32 5
  store i8 0, ptr %6, align 1
  %7 = freeze i32 %5
  %8 = icmp ugt i32 %7, 767999999
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = trunc i32 %3 to i8
  switch i8 %10, label %11 [
    i8 9, label %12
    i8 7, label %12
  ]

11:                                               ; preds = %9
  br label %12

12:                                               ; preds = %11, %9, %9, %1
  %13 = phi i8 [ 0, %11 ], [ 1, %9 ], [ 1, %9 ], [ 1, %1 ]
  %14 = phi i8 [ 1, %11 ], [ 2, %9 ], [ 2, %9 ], [ 2, %1 ]
  %15 = getelementptr inbounds %struct.factors_request, ptr %0, i32 0, i32 4
  store i8 %13, ptr %15, align 2
  %16 = icmp ult i32 %4, 20
  br i1 %16, label %34, label %17

17:                                               ; preds = %12
  %18 = icmp ugt i32 %4, 31
  %19 = and i32 %3, 1
  %20 = icmp eq i32 %19, 0
  %21 = or i1 %18, %20
  br i1 %21, label %22, label %34

22:                                               ; preds = %17
  %23 = icmp ult i32 %4, 40
  br i1 %23, label %34, label %24

24:                                               ; preds = %22
  %25 = icmp ugt i32 %4, 63
  %26 = and i32 %3, 2
  %27 = icmp eq i32 %26, 0
  %28 = or i1 %25, %27
  %29 = or i1 %25, %27
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i8
  %32 = xor i1 %28, true
  %33 = zext i1 %32 to i32
  br label %34

34:                                               ; preds = %24, %22, %17, %12
  %35 = phi i8 [ 2, %17 ], [ 2, %12 ], [ 1, %22 ], [ %31, %24 ]
  %36 = phi i32 [ 2, %17 ], [ 2, %12 ], [ 1, %22 ], [ %33, %24 ]
  %37 = getelementptr inbounds %struct.factors_request, ptr %0, i32 0, i32 6
  store i8 %35, ptr %37, align 4
  %38 = shl nuw nsw i32 %3, %36
  %39 = trunc i32 %38 to i8
  %40 = udiv i8 %39, %14
  %41 = lshr i8 %40, 2
  %42 = add nsw i8 %41, -1
  %43 = getelementptr inbounds %struct.factors_request, ptr %0, i32 0, i32 3
  store i8 %42, ptr %43, align 1
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @sun4i_get_pll5_factors(ptr nocapture noundef %0) #4 {
  %2 = load i32, ptr %0, align 4
  %3 = getelementptr inbounds %struct.factors_request, ptr %0, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = udiv i32 %2, %4
  %6 = and i32 %5, 255
  %7 = mul i32 %6, %4
  store i32 %7, ptr %0, align 4
  %8 = icmp ult i32 %6, 31
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.factors_request, ptr %0, i32 0, i32 4
  store i8 0, ptr %10, align 2
  br label %20

11:                                               ; preds = %1
  %12 = icmp ult i32 %6, 62
  br i1 %12, label %13, label %15

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.factors_request, ptr %0, i32 0, i32 4
  store i8 1, ptr %14, align 2
  br label %20

15:                                               ; preds = %11
  %16 = icmp ult i32 %6, 93
  %17 = getelementptr inbounds %struct.factors_request, ptr %0, i32 0, i32 4
  br i1 %16, label %18, label %19

18:                                               ; preds = %15
  store i8 2, ptr %17, align 2
  br label %20

19:                                               ; preds = %15
  store i8 3, ptr %17, align 2
  br label %20

20:                                               ; preds = %19, %18, %13, %9
  %21 = phi i8 [ 1, %13 ], [ 3, %19 ], [ 2, %18 ], [ 0, %9 ]
  %22 = zext i8 %21 to i32
  %23 = add nuw nsw i32 %6, %22
  %24 = trunc i32 %23 to i16
  %25 = add nuw nsw i8 %21, 1
  %26 = zext i8 %25 to i16
  %27 = udiv i16 %24, %26
  %28 = trunc i16 %27 to i8
  %29 = getelementptr inbounds %struct.factors_request, ptr %0, i32 0, i32 3
  store i8 %28, ptr %29, align 1
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @sun5i_a13_get_ahb_factors(ptr nocapture noundef %0) #5 {
  %2 = getelementptr inbounds %struct.factors_request, ptr %0, i32 0, i32 1
  %3 = load i32, ptr %2, align 4
  %4 = load i32, ptr %0, align 4
  %5 = call i32 @llvm.umin.i32(i32 %3, i32 %4)
  %6 = call i32 @llvm.umin.i32(i32 %5, i32 300000000)
  %7 = call i32 @llvm.umax.i32(i32 %6, i32 8000)
  %8 = add i32 %3, -1
  %9 = add i32 %8, %7
  %10 = udiv i32 %9, %7
  %11 = icmp ugt i32 %10, 1
  %12 = add nsw i32 %10, -1
  %13 = tail call i32 @llvm.ctlz.i32(i32 %12, i1 false) #13, !range !8
  %14 = sub nuw nsw i32 32, %13
  %15 = call i32 @llvm.umin.i32(i32 %14, i32 3)
  %16 = select i1 %11, i32 %15, i32 0
  %17 = lshr i32 %3, %16
  store i32 %17, ptr %0, align 4
  %18 = trunc i32 %16 to i8
  %19 = getelementptr inbounds %struct.factors_request, ptr %0, i32 0, i32 6
  store i8 %18, ptr %19, align 4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @sun6i_get_ahb1_factors(ptr nocapture noundef %0) #5 {
  %2 = getelementptr inbounds %struct.factors_request, ptr %0, i32 0, i32 1
  %3 = load i32, ptr %2, align 4
  %4 = icmp ne i32 %3, 0
  %5 = load i32, ptr %0, align 4
  %6 = icmp ugt i32 %5, %3
  %7 = select i1 %4, i1 %6, i1 false
  %8 = select i1 %7, i32 %3, i32 %5
  %9 = add i32 %3, -1
  %10 = add i32 %9, %8
  %11 = udiv i32 %10, %8
  %12 = getelementptr inbounds %struct.factors_request, ptr %0, i32 0, i32 2
  %13 = load i8, ptr %12, align 4
  %14 = icmp eq i8 %13, 3
  %15 = and i32 %11, 255
  br i1 %14, label %16, label %34

16:                                               ; preds = %1
  %17 = icmp ult i32 %15, 4
  br i1 %17, label %23, label %18

18:                                               ; preds = %16
  %19 = icmp ult i32 %15, 8
  br i1 %19, label %23, label %20

20:                                               ; preds = %18
  %21 = icmp ult i32 %15, 16
  %22 = select i1 %21, i8 2, i8 3
  br label %23

23:                                               ; preds = %20, %18, %16
  %24 = phi i8 [ 0, %16 ], [ 1, %18 ], [ %22, %20 ]
  %25 = zext i8 %24 to i32
  %26 = shl nuw nsw i32 1, %25
  %27 = add nuw nsw i32 %26, %15
  %28 = trunc i32 %27 to i16
  %29 = add nsw i16 %28, -1
  %30 = trunc i32 %26 to i16
  %31 = udiv i16 %29, %30
  %32 = and i16 %31, 255
  %33 = zext i16 %32 to i32
  br label %45

34:                                               ; preds = %1
  %35 = add nsw i32 %15, -1
  %36 = icmp eq i32 %35, 0
  %37 = tail call i32 @llvm.ctlz.i32(i32 %35, i1 false) #13, !range !8
  %38 = sub nuw nsw i32 32, %37
  %39 = shl nuw i32 1, %38
  %40 = and i32 %39, 255
  %41 = tail call i32 @llvm.umin.i32(i32 %40, i32 3)
  %42 = trunc i32 %41 to i8
  %43 = select i1 %36, i8 1, i8 %42
  %44 = zext i8 %43 to i32
  br label %45

45:                                               ; preds = %34, %23
  %46 = phi i32 [ %44, %34 ], [ %25, %23 ]
  %47 = phi i8 [ %43, %34 ], [ %24, %23 ]
  %48 = phi i32 [ 1, %34 ], [ %33, %23 ]
  %49 = udiv i32 %3, %48
  %50 = lshr i32 %49, %46
  store i32 %50, ptr %0, align 4
  %51 = getelementptr inbounds %struct.factors_request, ptr %0, i32 0, i32 6
  store i8 %47, ptr %51, align 4
  %52 = trunc i32 %48 to i8
  %53 = add i8 %52, -1
  %54 = getelementptr inbounds %struct.factors_request, ptr %0, i32 0, i32 5
  store i8 %53, ptr %54, align 1
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @sun6i_ahb1_recalc(ptr nocapture noundef %0) #4 {
  %2 = getelementptr inbounds %struct.factors_request, ptr %0, i32 0, i32 1
  %3 = load i32, ptr %2, align 4
  %4 = getelementptr inbounds %struct.factors_request, ptr %0, i32 0, i32 2
  %5 = load i8, ptr %4, align 4
  %6 = icmp eq i8 %5, 3
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.factors_request, ptr %0, i32 0, i32 5
  %9 = load i8, ptr %8, align 1
  %10 = zext i8 %9 to i32
  %11 = add nuw nsw i32 %10, 1
  %12 = udiv i32 %3, %11
  br label %13

13:                                               ; preds = %7, %1
  %14 = phi i32 [ %12, %7 ], [ %3, %1 ]
  %15 = getelementptr inbounds %struct.factors_request, ptr %0, i32 0, i32 6
  %16 = load i8, ptr %15, align 4
  %17 = zext i8 %16 to i32
  %18 = lshr i32 %14, %17
  store i32 %18, ptr %0, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @sun4i_get_apb1_factors(ptr nocapture noundef %0) #4 {
  %2 = getelementptr inbounds %struct.factors_request, ptr %0, i32 0, i32 1
  %3 = load i32, ptr %2, align 4
  %4 = load i32, ptr %0, align 4
  %5 = icmp ult i32 %3, %4
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i32 %3, ptr %0, align 4
  br label %7

7:                                                ; preds = %6, %1
  %8 = phi i32 [ %3, %6 ], [ %4, %1 ]
  %9 = add i32 %3, -1
  %10 = add i32 %9, %8
  %11 = udiv i32 %10, %8
  %12 = icmp sgt i32 %11, 32
  br i1 %12, label %32, label %13

13:                                               ; preds = %7
  %14 = icmp slt i32 %11, 5
  br i1 %14, label %20, label %15

15:                                               ; preds = %13
  %16 = icmp ult i32 %11, 9
  br i1 %16, label %20, label %17

17:                                               ; preds = %15
  %18 = icmp ult i32 %11, 17
  %19 = select i1 %18, i8 2, i8 3
  br label %20

20:                                               ; preds = %17, %15, %13
  %21 = phi i8 [ 0, %13 ], [ 1, %15 ], [ %19, %17 ]
  %22 = zext i8 %21 to i32
  %23 = ashr i32 %11, %22
  %24 = trunc i32 %23 to i8
  %25 = add i8 %24, -1
  %26 = lshr i32 %3, %22
  %27 = zext i8 %25 to i32
  %28 = add nuw nsw i32 %27, 1
  %29 = udiv i32 %26, %28
  store i32 %29, ptr %0, align 4
  %30 = getelementptr inbounds %struct.factors_request, ptr %0, i32 0, i32 5
  store i8 %25, ptr %30, align 1
  %31 = getelementptr inbounds %struct.factors_request, ptr %0, i32 0, i32 6
  store i8 %21, ptr %31, align 4
  br label %32

32:                                               ; preds = %20, %7
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @sun7i_a20_get_out_factors(ptr nocapture noundef %0) #4 {
  %2 = load i32, ptr %0, align 4
  %3 = getelementptr inbounds %struct.factors_request, ptr %0, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = call i32 @llvm.umin.i32(i32 %2, i32 %4)
  %6 = add i32 %4, -1
  %7 = add i32 %6, %5
  %8 = udiv i32 %7, %5
  %9 = and i32 %8, 255
  %10 = icmp ult i32 %9, 32
  br i1 %10, label %16, label %11

11:                                               ; preds = %1
  %12 = icmp ult i32 %9, 64
  br i1 %12, label %16, label %13

13:                                               ; preds = %11
  %14 = icmp ult i32 %9, 128
  %15 = select i1 %14, i8 2, i8 3
  br label %16

16:                                               ; preds = %13, %11, %1
  %17 = phi i8 [ 0, %1 ], [ 1, %11 ], [ %15, %13 ]
  %18 = zext i8 %17 to i32
  %19 = shl nuw nsw i32 1, %18
  %20 = add nuw nsw i32 %19, %9
  %21 = trunc i32 %20 to i16
  %22 = add nsw i16 %21, -1
  %23 = trunc i32 %19 to i16
  %24 = udiv i16 %22, %23
  %25 = lshr i32 %4, %18
  %26 = and i16 %24, 255
  %27 = zext i16 %26 to i32
  %28 = udiv i32 %25, %27
  store i32 %28, ptr %0, align 4
  %29 = trunc i16 %24 to i8
  %30 = add i8 %29, -1
  %31 = getelementptr inbounds %struct.factors_request, ptr %0, i32 0, i32 5
  store i8 %30, ptr %31, align 1
  %32 = getelementptr inbounds %struct.factors_request, ptr %0, i32 0, i32 6
  store i8 %17, ptr %32, align 4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @sunxi_mux_clk_setup(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 section ".init.text" {
  %4 = alloca ptr, align 4
  %5 = alloca [5 x ptr], align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  %6 = load ptr, ptr %0, align 4
  store ptr %6, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %5, i8 0, i32 20, i1 false), !annotation !9
  %7 = tail call ptr @of_iomap(ptr noundef %0, i32 noundef 0) #13
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %3
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %0) #14
  br label %35

11:                                               ; preds = %3
  %12 = call i32 @of_clk_parent_fill(ptr noundef %0, ptr noundef nonnull %5, i32 noundef 5) #13
  %13 = call i32 @of_property_read_string(ptr noundef %0, ptr noundef nonnull @.str.2, ptr noundef nonnull %4) #13
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  %16 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.sunxi_mux_clk_setup, ptr noundef %0) #14
  br label %34

17:                                               ; preds = %11
  %18 = load ptr, ptr %4, align 4
  %19 = trunc i32 %12 to i8
  %20 = or i32 %2, 4
  %21 = load i8, ptr %1, align 1
  %22 = call ptr @clk_register_mux_table(ptr noundef null, ptr noundef %18, ptr noundef nonnull %5, i8 noundef zeroext %19, i32 noundef %20, ptr noundef nonnull %7, i8 noundef zeroext %21, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @clk_lock) #13
  %23 = icmp ugt ptr %22, inttoptr (i32 -4096 to ptr)
  br i1 %23, label %24, label %28

24:                                               ; preds = %17
  %25 = load ptr, ptr %4, align 4
  %26 = ptrtoint ptr %22 to i32
  %27 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.sunxi_mux_clk_setup, ptr noundef %25, i32 noundef %26) #14
  br label %34

28:                                               ; preds = %17
  %29 = call i32 @of_clk_add_provider(ptr noundef %0, ptr noundef nonnull @of_clk_src_simple_get, ptr noundef %22) #13
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %28
  %32 = load ptr, ptr %4, align 4
  %33 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.sunxi_mux_clk_setup, ptr noundef %32) #14
  call void @clk_unregister_divider(ptr noundef %22) #13
  br label %34

34:                                               ; preds = %31, %24, %15
  call void @iounmap(ptr noundef nonnull %7) #13
  br label %35

35:                                               ; preds = %34, %28, %9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_parent_fill(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_mux_table(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_simple_get(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unregister_divider(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @sunxi_divider_clk_setup(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 section ".init.text" {
  %3 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #13
  %4 = load ptr, ptr %0, align 4
  store ptr %4, ptr %3, align 4
  %5 = tail call ptr @of_iomap(ptr noundef %0, i32 noundef 0) #13
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %0) #14
  br label %44

9:                                                ; preds = %2
  %10 = tail call ptr @of_clk_get_parent_name(ptr noundef %0, i32 noundef 0) #13
  %11 = call i32 @of_property_read_string(ptr noundef %0, ptr noundef nonnull @.str.2, ptr noundef nonnull %3) #13
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.sunxi_divider_clk_setup, ptr noundef %0) #14
  br label %43

15:                                               ; preds = %9
  %16 = load ptr, ptr %3, align 4
  %17 = load i8, ptr %1, align 4
  %18 = getelementptr inbounds %struct.div_data, ptr %1, i32 0, i32 2
  %19 = load i8, ptr %18, align 2
  %20 = getelementptr inbounds %struct.div_data, ptr %1, i32 0, i32 1
  %21 = load i8, ptr %20, align 1
  %22 = icmp eq i8 %21, 0
  %23 = select i1 %22, i8 0, i8 2
  %24 = getelementptr inbounds %struct.div_data, ptr %1, i32 0, i32 3
  %25 = load ptr, ptr %24, align 4
  %26 = call ptr @clk_register_divider_table(ptr noundef null, ptr noundef %16, ptr noundef %10, i32 noundef 0, ptr noundef nonnull %5, i8 noundef zeroext %17, i8 noundef zeroext %19, i8 noundef zeroext %23, ptr noundef %25, ptr noundef nonnull @clk_lock) #13
  %27 = icmp ugt ptr %26, inttoptr (i32 -4096 to ptr)
  br i1 %27, label %28, label %32

28:                                               ; preds = %15
  %29 = load ptr, ptr %3, align 4
  %30 = ptrtoint ptr %26 to i32
  %31 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.sunxi_divider_clk_setup, ptr noundef %29, i32 noundef %30) #14
  br label %43

32:                                               ; preds = %15
  %33 = call i32 @of_clk_add_provider(ptr noundef %0, ptr noundef nonnull @of_clk_src_simple_get, ptr noundef %26) #13
  %34 = icmp eq i32 %33, 0
  %35 = load ptr, ptr %3, align 4
  br i1 %34, label %38, label %36

36:                                               ; preds = %32
  %37 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.sunxi_divider_clk_setup, ptr noundef %35) #14
  br label %42

38:                                               ; preds = %32
  %39 = call i32 @clk_register_clkdev(ptr noundef %26, ptr noundef %35, ptr noundef null) #13
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %38
  call void @of_clk_del_provider(ptr noundef %0) #13
  br label %42

42:                                               ; preds = %41, %36
  call void @clk_unregister_divider(ptr noundef %26) #13
  br label %43

43:                                               ; preds = %42, %28, %13
  call void @iounmap(ptr noundef nonnull %5) #13
  br label %44

44:                                               ; preds = %43, %38, %7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_parent_name(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_divider_table(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_register_clkdev(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_clk_del_provider(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @sunxi_divs_clk_setup(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 section ".init.text" {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca %struct.factors_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  store ptr null, ptr %4, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %5) #13
  %6 = load ptr, ptr %1, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %5, ptr noundef align 4 dereferenceable(28) %6, i32 28, i1 false)
  %7 = getelementptr inbounds %struct.divs_data, ptr %1, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  %10 = select i1 %9, i32 4, i32 %8
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %23

12:                                               ; preds = %20, %2
  %13 = phi i32 [ %21, %20 ], [ 0, %2 ]
  %14 = getelementptr %struct.divs_data, ptr %1, i32 0, i32 2, i32 %13
  %15 = load i8, ptr %14, align 4
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.factors_data, ptr %5, i32 0, i32 6
  %19 = call i32 @of_property_read_string_helper(ptr noundef %0, ptr noundef nonnull @.str.2, ptr noundef %18, i32 noundef 1, i32 noundef %13) #13
  br label %23

20:                                               ; preds = %12
  %21 = add nuw nsw i32 %13, 1
  %22 = icmp eq i32 %21, %10
  br i1 %22, label %23, label %12

23:                                               ; preds = %20, %17, %2
  %24 = getelementptr inbounds %struct.factors_data, ptr %5, i32 0, i32 6
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %41

27:                                               ; preds = %23
  %28 = call i32 @of_property_read_string_helper(ptr noundef %0, ptr noundef nonnull @.str.2, ptr noundef nonnull %4, i32 noundef 1, i32 noundef 0) #13
  %29 = load ptr, ptr %4, align 4
  %30 = call ptr @strchr(ptr noundef %29, i32 noundef 95)
  %31 = icmp eq ptr %30, null
  br i1 %31, label %38, label %32

32:                                               ; preds = %27
  %33 = ptrtoint ptr %30 to i32
  %34 = ptrtoint ptr %29 to i32
  %35 = sub i32 %33, %34
  %36 = call ptr @kstrndup(ptr noundef %29, i32 noundef %35, i32 noundef 3264) #13
  %37 = icmp eq ptr %36, null
  br i1 %37, label %158, label %38

38:                                               ; preds = %32, %27
  %39 = phi ptr [ %36, %32 ], [ %29, %27 ]
  %40 = phi ptr [ %36, %32 ], [ null, %27 ]
  store ptr %39, ptr %24, align 4
  br label %41

41:                                               ; preds = %38, %23
  %42 = phi ptr [ null, %23 ], [ %40, %38 ]
  %43 = call fastcc ptr @sunxi_factors_clk_setup(ptr noundef %0, ptr noundef nonnull %5) #12
  %44 = icmp eq ptr %43, null
  br i1 %44, label %158, label %45

45:                                               ; preds = %41
  %46 = call ptr @__clk_get_name(ptr noundef nonnull %43) #13
  store ptr %46, ptr %3, align 4
  call void @kfree(ptr noundef %42) #13
  %47 = call ptr @of_iomap(ptr noundef %0, i32 noundef 0) #13
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %0) #14
  br label %158

51:                                               ; preds = %45
  %52 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %53 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %52, i32 noundef 3264, i32 noundef 8) #15
  %54 = icmp eq ptr %53, null
  br i1 %54, label %157, label %55

55:                                               ; preds = %51
  %56 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %10, i32 4) #13
  %57 = extractvalue { i32, i1 } %56, 1
  br i1 %57, label %156, label %58, !prof !10

58:                                               ; preds = %55
  %59 = extractvalue { i32, i1 } %56, 0
  %60 = call noalias align 64 ptr @__kmalloc(i32 noundef %59, i32 noundef 3520) #16
  %61 = icmp eq ptr %60, null
  br i1 %61, label %156, label %62

62:                                               ; preds = %58
  store ptr %60, ptr %53, align 8
  %63 = call i32 @strcmp(ptr noundef nonnull dereferenceable(5) @.str.8, ptr noundef %46)
  %64 = icmp eq i32 %63, 0
  %65 = select i1 %64, i32 0, i32 4
  br i1 %11, label %66, label %144

66:                                               ; preds = %140, %62
  %67 = phi i32 [ %142, %140 ], [ 0, %62 ]
  %68 = phi ptr [ %141, %140 ], [ null, %62 ]
  %69 = call i32 @of_property_read_string_helper(ptr noundef %0, ptr noundef nonnull @.str.2, ptr noundef nonnull %4, i32 noundef 1, i32 noundef %67) #13
  %70 = icmp sgt i32 %69, -1
  br i1 %70, label %71, label %144

71:                                               ; preds = %66
  %72 = getelementptr %struct.divs_data, ptr %1, i32 0, i32 2, i32 %67
  %73 = load i8, ptr %72, align 4
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %71
  %76 = load ptr, ptr %53, align 8
  %77 = getelementptr ptr, ptr %76, i32 %67
  store ptr %43, ptr %77, align 4
  br label %140

78:                                               ; preds = %71
  %79 = getelementptr %struct.divs_data, ptr %1, i32 0, i32 2, i32 %67, i32 5
  %80 = load i8, ptr %79, align 2
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %91, label %82

82:                                               ; preds = %78
  %83 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %84 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %83, i32 noundef 3520, i32 noundef 24) #15
  %85 = icmp eq ptr %84, null
  br i1 %85, label %155, label %86

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct.clk_gate, ptr %84, i32 0, i32 1
  store ptr %47, ptr %87, align 4
  %88 = load i8, ptr %79, align 2
  %89 = getelementptr inbounds %struct.clk_gate, ptr %84, i32 0, i32 2
  store i8 %88, ptr %89, align 8
  %90 = getelementptr inbounds %struct.clk_gate, ptr %84, i32 0, i32 4
  store ptr @clk_lock, ptr %90, align 4
  br label %91

91:                                               ; preds = %86, %78
  %92 = phi ptr [ %84, %86 ], [ null, %78 ]
  %93 = phi ptr [ %84, %86 ], [ %68, %78 ]
  %94 = getelementptr %struct.divs_data, ptr %1, i32 0, i32 2, i32 %67, i32 1
  %95 = load i8, ptr %94, align 1
  %96 = icmp eq i8 %95, 0
  %97 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  br i1 %96, label %106, label %98

98:                                               ; preds = %91
  %99 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %97, i32 noundef 3520, i32 noundef 20) #15
  %100 = icmp eq ptr %99, null
  br i1 %100, label %153, label %101

101:                                              ; preds = %98
  %102 = getelementptr inbounds %struct.clk_fixed_factor, ptr %99, i32 0, i32 1
  store i32 1, ptr %102, align 4
  %103 = load i8, ptr %94, align 1
  %104 = zext i8 %103 to i32
  %105 = getelementptr inbounds %struct.clk_fixed_factor, ptr %99, i32 0, i32 2
  store i32 %104, ptr %105, align 8
  br label %124

106:                                              ; preds = %91
  %107 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %97, i32 noundef 3520, i32 noundef 28) #15
  %108 = icmp eq ptr %107, null
  br i1 %108, label %153, label %109

109:                                              ; preds = %106
  %110 = getelementptr %struct.divs_data, ptr %1, i32 0, i32 2, i32 %67, i32 4
  %111 = load i8, ptr %110, align 1
  %112 = icmp eq i8 %111, 0
  %113 = getelementptr inbounds %struct.clk_divider, ptr %107, i32 0, i32 1
  store ptr %47, ptr %113, align 4
  %114 = getelementptr %struct.divs_data, ptr %1, i32 0, i32 2, i32 %67, i32 3
  %115 = load i8, ptr %114, align 4
  %116 = getelementptr inbounds %struct.clk_divider, ptr %107, i32 0, i32 2
  store i8 %115, ptr %116, align 8
  %117 = getelementptr inbounds %struct.clk_divider, ptr %107, i32 0, i32 3
  store i8 2, ptr %117, align 1
  %118 = select i1 %112, i8 0, i8 2
  %119 = getelementptr inbounds %struct.clk_divider, ptr %107, i32 0, i32 4
  store i8 %118, ptr %119, align 2
  %120 = getelementptr inbounds %struct.clk_divider, ptr %107, i32 0, i32 6
  store ptr @clk_lock, ptr %120, align 8
  %121 = getelementptr %struct.divs_data, ptr %1, i32 0, i32 2, i32 %67, i32 2
  %122 = load ptr, ptr %121, align 4
  %123 = getelementptr inbounds %struct.clk_divider, ptr %107, i32 0, i32 5
  store ptr %122, ptr %123, align 4
  br label %124

124:                                              ; preds = %109, %101
  %125 = phi ptr [ %99, %101 ], [ %107, %109 ]
  %126 = phi ptr [ @clk_fixed_factor_ops, %101 ], [ @clk_divider_ops, %109 ]
  %127 = load ptr, ptr %4, align 4
  %128 = getelementptr %struct.divs_data, ptr %1, i32 0, i32 2, i32 %67, i32 6
  %129 = load i8, ptr %128, align 1, !range !11
  %130 = icmp eq i8 %129, 0
  %131 = select i1 %130, i32 0, i32 2048
  %132 = or i32 %131, %65
  %133 = call ptr @clk_register_composite(ptr noundef null, ptr noundef %127, ptr noundef nonnull %3, i32 noundef 1, ptr noundef null, ptr noundef null, ptr noundef nonnull %125, ptr noundef nonnull %126, ptr noundef %92, ptr noundef nonnull @clk_gate_ops, i32 noundef %132) #13
  %134 = getelementptr ptr, ptr %60, i32 %67
  store ptr %133, ptr %134, align 4
  %135 = load ptr, ptr %53, align 8
  %136 = getelementptr ptr, ptr %135, i32 %67
  %137 = load ptr, ptr %136, align 4
  %138 = icmp ugt ptr %137, inttoptr (i32 -4096 to ptr)
  br i1 %138, label %139, label %140, !prof !10

139:                                              ; preds = %124
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 1086, i32 noundef 9, ptr noundef null) #13
  br label %140

140:                                              ; preds = %139, %124, %75
  %141 = phi ptr [ %68, %75 ], [ %93, %139 ], [ %93, %124 ]
  %142 = add nuw nsw i32 %67, 1
  %143 = icmp eq i32 %142, %10
  br i1 %143, label %144, label %66

144:                                              ; preds = %140, %66, %62
  %145 = phi ptr [ null, %62 ], [ %68, %66 ], [ %141, %140 ]
  %146 = phi i32 [ 0, %62 ], [ %67, %66 ], [ %10, %140 ]
  %147 = getelementptr inbounds %struct.clk_onecell_data, ptr %53, i32 0, i32 1
  store i32 %146, ptr %147, align 4
  %148 = call i32 @of_clk_add_provider(ptr noundef %0, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef nonnull %53) #13
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %158, label %150

150:                                              ; preds = %144
  %151 = load ptr, ptr %4, align 4
  %152 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.sunxi_divs_clk_setup, ptr noundef %151) #14
  br label %153

153:                                              ; preds = %150, %106, %98
  %154 = phi ptr [ %145, %150 ], [ %93, %98 ], [ %93, %106 ]
  call void @kfree(ptr noundef %154) #13
  br label %155

155:                                              ; preds = %153, %82
  call void @kfree(ptr noundef nonnull %60) #13
  br label %156

156:                                              ; preds = %155, %58, %55
  call void @kfree(ptr noundef nonnull %53) #13
  br label %157

157:                                              ; preds = %156, %51
  call void @iounmap(ptr noundef nonnull %47) #13
  br label %158

158:                                              ; preds = %157, %144, %49, %41, %32
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #13
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #8

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kstrndup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_composite(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_onecell_get(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string_helper(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @sun6i_a31_get_pll6_factors(ptr nocapture noundef %0) #4 {
  %2 = load i32, ptr %0, align 4
  %3 = getelementptr inbounds %struct.factors_request, ptr %0, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = udiv i32 %2, %4
  %6 = and i32 %5, 255
  %7 = mul i32 %6, %4
  store i32 %7, ptr %0, align 4
  %8 = lshr i32 %6, 5
  %9 = trunc i32 %8 to i8
  %10 = icmp ugt i32 %6, 127
  %11 = select i1 %10, i8 3, i8 %9
  %12 = getelementptr inbounds %struct.factors_request, ptr %0, i32 0, i32 4
  store i8 %11, ptr %12, align 2
  %13 = zext i8 %11 to i32
  %14 = add nuw nsw i32 %6, %13
  %15 = trunc i32 %14 to i16
  %16 = add nuw nsw i8 %11, 1
  %17 = zext i8 %16 to i16
  %18 = udiv i16 %15, %17
  %19 = trunc i16 %18 to i8
  %20 = add i8 %19, -1
  %21 = getelementptr inbounds %struct.factors_request, ptr %0, i32 0, i32 3
  store i8 %20, ptr %21, align 1
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @sun6i_display_factors(ptr nocapture noundef %0) #4 {
  %2 = load i32, ptr %0, align 4
  %3 = getelementptr inbounds %struct.factors_request, ptr %0, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = call i32 @llvm.umin.i32(i32 %2, i32 %4)
  %6 = add i32 %4, -1
  %7 = add i32 %6, %5
  %8 = udiv i32 %7, %5
  %9 = and i32 %8, 255
  %10 = udiv i32 %4, %9
  store i32 %10, ptr %0, align 4
  %11 = trunc i32 %8 to i8
  %12 = add i8 %11, -1
  %13 = getelementptr inbounds %struct.factors_request, ptr %0, i32 0, i32 5
  store i8 %12, ptr %13, align 1
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { argmemonly nofree nounwind willreturn }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { cold }
attributes #13 = { nounwind }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { nounwind allocsize(0) }

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
!8 = !{i32 0, i32 33}
!9 = !{!"auto-init"}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{i8 0, i8 2}
