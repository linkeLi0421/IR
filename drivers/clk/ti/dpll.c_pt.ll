; ModuleID = '/llk/IR/drivers/clk/ti/dpll.c_pt.bc'
source_filename = "../drivers/clk/ti/dpll.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_hw_omap_ops = type { ptr, ptr, ptr, ptr }
%struct.clk_omap_reg = type { ptr, i16, i8, i8 }
%struct.dpll_data = type { %struct.clk_omap_reg, i32, i32, ptr, ptr, %struct.clk_omap_reg, i32, i32, i16, i8, i8, i16, i8, i8, i16, i32, i8, %struct.clk_omap_reg, %struct.clk_omap_reg, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, %struct.clk_omap_reg, %struct.clk_omap_reg, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.clk_hw_omap = type { %struct.clk_hw, %struct.list_head, i32, i8, %struct.clk_omap_reg, i8, i32, %struct.clk_omap_reg, ptr, ptr, ptr, ptr, i32, i32 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }

@__of_table_ti_omap4_dpll_x2_clock = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap4-dpll-x2-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_ti_omap4_dpll_x2_setup }, section "__clk_of_table", align 4
@__of_table_ti_am3_dpll_x2_clock = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,am3-dpll-x2-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_ti_am3_dpll_x2_setup }, section "__clk_of_table", align 4
@__of_table_ti_omap3_dpll_clock = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap3-dpll-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_ti_omap3_dpll_setup }, section "__clk_of_table", align 4
@__of_table_ti_omap3_core_dpll_clock = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap3-dpll-core-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_ti_omap3_core_dpll_setup }, section "__clk_of_table", align 4
@__of_table_ti_omap3_per_dpll_clock = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap3-dpll-per-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_ti_omap3_per_dpll_setup }, section "__clk_of_table", align 4
@__of_table_ti_omap3_per_jtype_dpll_clock = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap3-dpll-per-j-type-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_ti_omap3_per_jtype_dpll_setup }, section "__clk_of_table", align 4
@__of_table_ti_omap4_dpll_clock = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap4-dpll-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_ti_omap4_dpll_setup }, section "__clk_of_table", align 4
@__of_table_of_ti_omap5_mpu_dpll_clock = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap5-mpu-dpll-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_ti_omap5_mpu_dpll_setup }, section "__clk_of_table", align 4
@__of_table_ti_omap4_core_dpll_clock = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap4-dpll-core-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_ti_omap4_core_dpll_setup }, section "__clk_of_table", align 4
@__of_table_ti_omap4_m4xen_dpll_clock = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap4-dpll-m4xen-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_ti_omap4_m4xen_dpll_setup }, section "__clk_of_table", align 4
@__of_table_ti_omap4_jtype_dpll_clock = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap4-dpll-j-type-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_ti_omap4_jtype_dpll_setup }, section "__clk_of_table", align 4
@__of_table_ti_am3_no_gate_dpll_clock = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,am3-dpll-no-gate-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_ti_am3_no_gate_dpll_setup }, section "__clk_of_table", align 4
@__of_table_ti_am3_jtype_dpll_clock = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,am3-dpll-j-type-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_ti_am3_jtype_dpll_setup }, section "__clk_of_table", align 4
@__of_table_ti_am3_no_gate_jtype_dpll_clock = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,am3-dpll-no-gate-j-type-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_ti_am3_no_gate_jtype_dpll_setup }, section "__clk_of_table", align 4
@__of_table_ti_am3_dpll_clock = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,am3-dpll-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_ti_am3_dpll_setup }, section "__clk_of_table", align 4
@__of_table_ti_am3_core_dpll_clock = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,am3-dpll-core-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_ti_am3_core_dpll_setup }, section "__clk_of_table", align 4
@__of_table_ti_omap2_core_dpll_clock = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap2-dpll-core-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_ti_omap2_core_dpll_setup }, section "__clk_of_table", align 4
@dpll_x2_ck_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @omap3_clkoutx2_recalc, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@clkhwops_omap4_dpllmx = external dso_local constant %struct.clk_hw_omap_ops, align 4
@.str = private unnamed_addr constant [30 x i8] c"\013%s: %pOFn must have parent\0A\00", align 1
@__func__._register_dpll_x2 = private unnamed_addr constant [18 x i8] c"_register_dpll_x2\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@__const.of_ti_omap3_dpll_setup.dd = private unnamed_addr constant { %struct.clk_omap_reg, i32, i32, ptr, ptr, %struct.clk_omap_reg, i32, i32, i16, i8, i8, i16, i8, i8, i16, [2 x i8], i32, i8, [3 x i8], %struct.clk_omap_reg, %struct.clk_omap_reg, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [1 x i8], %struct.clk_omap_reg, %struct.clk_omap_reg, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, [2 x i8] } { %struct.clk_omap_reg zeroinitializer, i32 524032, i32 127, ptr null, ptr null, %struct.clk_omap_reg zeroinitializer, i32 7, i32 0, i16 0, i8 0, i8 0, i16 2047, i8 0, i8 1, i16 128, [2 x i8] zeroinitializer, i32 0, i8 -96, [3 x i8] zeroinitializer, %struct.clk_omap_reg zeroinitializer, %struct.clk_omap_reg zeroinitializer, i32 7, i32 240, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, [1 x i8] zeroinitializer, %struct.clk_omap_reg zeroinitializer, %struct.clk_omap_reg zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i8 0, [2 x i8] zeroinitializer }, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"ti,omap3630\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"ti,omap36xx\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"dpll5_ck\00", align 1
@omap3_dpll5_ck_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @omap3_noncore_dpll_enable, ptr @omap3_noncore_dpll_disable, ptr null, ptr null, ptr null, ptr null, ptr @omap3_dpll_recalc, ptr @omap2_dpll_round_rate, ptr @omap3_noncore_dpll_determine_rate, ptr @omap3_noncore_dpll_set_parent, ptr @omap2_init_dpll_parent, ptr @omap3_dpll5_set_rate, ptr @omap3_noncore_dpll_set_rate_and_parent, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@omap3_dpll_ck_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @omap3_noncore_dpll_enable, ptr @omap3_noncore_dpll_disable, ptr null, ptr null, ptr null, ptr null, ptr @omap3_dpll_recalc, ptr @omap2_dpll_round_rate, ptr @omap3_noncore_dpll_determine_rate, ptr @omap3_noncore_dpll_set_parent, ptr @omap2_init_dpll_parent, ptr @omap3_noncore_dpll_set_rate, ptr @omap3_noncore_dpll_set_rate_and_parent, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@clkhwops_omap3_dpll = external dso_local constant %struct.clk_hw_omap_ops, align 4
@.str.5 = private unnamed_addr constant [33 x i8] c"\013%s: %pOFn must have parent(s)\0A\00", align 1
@__func__.of_ti_dpll_setup = private unnamed_addr constant [17 x i8] c"of_ti_dpll_setup\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"ti,ssc-modfreq-hz\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"ti,ssc-deltam\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"ti,ssc-downspread\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"ti,low-power-stop\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"ti,low-power-bypass\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"ti,lock\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"ti,min-div\00", align 1
@__const.of_ti_omap3_core_dpll_setup.dd = private unnamed_addr constant { %struct.clk_omap_reg, i32, i32, ptr, ptr, %struct.clk_omap_reg, i32, i32, i16, i8, i8, i16, i8, i8, i16, [2 x i8], i32, i8, [3 x i8], %struct.clk_omap_reg, %struct.clk_omap_reg, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [1 x i8], %struct.clk_omap_reg, %struct.clk_omap_reg, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, [2 x i8] } { %struct.clk_omap_reg zeroinitializer, i32 134152192, i32 32512, ptr null, ptr null, %struct.clk_omap_reg zeroinitializer, i32 7, i32 0, i16 0, i8 0, i8 0, i16 2047, i8 0, i8 1, i16 128, [2 x i8] zeroinitializer, i32 0, i8 0, [3 x i8] zeroinitializer, %struct.clk_omap_reg zeroinitializer, %struct.clk_omap_reg zeroinitializer, i32 7, i32 240, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, [1 x i8] zeroinitializer, %struct.clk_omap_reg zeroinitializer, %struct.clk_omap_reg zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i8 0, [2 x i8] zeroinitializer }, align 4
@omap3_dpll_core_ck_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @omap3_dpll_recalc, ptr @omap2_dpll_round_rate, ptr null, ptr null, ptr @omap2_init_dpll_parent, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__const.of_ti_omap3_per_dpll_setup.dd = private unnamed_addr constant { %struct.clk_omap_reg, i32, i32, ptr, ptr, %struct.clk_omap_reg, i32, i32, i16, i8, i8, i16, i8, i8, i16, [2 x i8], i32, i8, [3 x i8], %struct.clk_omap_reg, %struct.clk_omap_reg, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [1 x i8], %struct.clk_omap_reg, %struct.clk_omap_reg, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, [2 x i8] } { %struct.clk_omap_reg zeroinitializer, i32 524032, i32 127, ptr null, ptr null, %struct.clk_omap_reg zeroinitializer, i32 458752, i32 0, i16 0, i8 0, i8 0, i16 2047, i8 0, i8 1, i16 128, [2 x i8] zeroinitializer, i32 0, i8 -126, [3 x i8] zeroinitializer, %struct.clk_omap_reg zeroinitializer, %struct.clk_omap_reg zeroinitializer, i32 56, i32 15728640, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, [1 x i8] zeroinitializer, %struct.clk_omap_reg zeroinitializer, %struct.clk_omap_reg zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i8 0, [2 x i8] zeroinitializer }, align 4
@omap3_dpll_per_ck_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @omap3_noncore_dpll_enable, ptr @omap3_noncore_dpll_disable, ptr null, ptr null, ptr null, ptr null, ptr @omap3_dpll_recalc, ptr @omap2_dpll_round_rate, ptr @omap3_noncore_dpll_determine_rate, ptr @omap3_noncore_dpll_set_parent, ptr @omap2_init_dpll_parent, ptr @omap3_dpll4_set_rate, ptr @omap3_dpll4_set_rate_and_parent, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__const.of_ti_omap3_per_jtype_dpll_setup.dd = private unnamed_addr constant { %struct.clk_omap_reg, i32, i32, ptr, ptr, %struct.clk_omap_reg, i32, i32, i16, i8, i8, i16, i8, i8, i16, [2 x i8], i32, i8, [3 x i8], %struct.clk_omap_reg, %struct.clk_omap_reg, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [1 x i8], %struct.clk_omap_reg, %struct.clk_omap_reg, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, [2 x i8] } { %struct.clk_omap_reg zeroinitializer, i32 1048320, i32 127, ptr null, ptr null, %struct.clk_omap_reg zeroinitializer, i32 458752, i32 0, i16 0, i8 0, i8 0, i16 4095, i8 0, i8 1, i16 128, [2 x i8] zeroinitializer, i32 0, i8 -126, [3 x i8] zeroinitializer, %struct.clk_omap_reg zeroinitializer, %struct.clk_omap_reg zeroinitializer, i32 56, i32 0, i32 2, i32 14680064, i32 -16777216, i32 0, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, [1 x i8] zeroinitializer, %struct.clk_omap_reg zeroinitializer, %struct.clk_omap_reg zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i8 1, [2 x i8] zeroinitializer }, align 4
@dpll_ck_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @omap3_noncore_dpll_enable, ptr @omap3_noncore_dpll_disable, ptr null, ptr null, ptr @omap3_noncore_dpll_save_context, ptr @omap3_noncore_dpll_restore_context, ptr @omap3_dpll_recalc, ptr @omap2_dpll_round_rate, ptr @omap3_noncore_dpll_determine_rate, ptr @omap3_noncore_dpll_set_parent, ptr @omap2_init_dpll_parent, ptr @omap3_noncore_dpll_set_rate, ptr @omap3_noncore_dpll_set_rate_and_parent, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__const.of_ti_omap5_mpu_dpll_setup.dd = private unnamed_addr constant { %struct.clk_omap_reg, i32, i32, ptr, ptr, %struct.clk_omap_reg, i32, i32, i16, i8, i8, i16, i8, i8, i16, [2 x i8], i32, i8, [3 x i8], %struct.clk_omap_reg, %struct.clk_omap_reg, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [1 x i8], %struct.clk_omap_reg, %struct.clk_omap_reg, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, [2 x i8] } { %struct.clk_omap_reg zeroinitializer, i32 524032, i32 127, ptr null, ptr null, %struct.clk_omap_reg zeroinitializer, i32 7, i32 0, i16 0, i8 0, i8 0, i16 2047, i8 0, i8 1, i16 128, [2 x i8] zeroinitializer, i32 0, i8 -96, [3 x i8] zeroinitializer, %struct.clk_omap_reg zeroinitializer, %struct.clk_omap_reg zeroinitializer, i32 7, i32 0, i32 1, i32 0, i32 0, i32 4194304, i32 1400000000, i32 0, i32 0, i8 0, i8 0, i8 0, [1 x i8] zeroinitializer, %struct.clk_omap_reg zeroinitializer, %struct.clk_omap_reg zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i8 0, [2 x i8] zeroinitializer }, align 4
@__const.of_ti_omap4_core_dpll_setup.dd = private unnamed_addr constant { %struct.clk_omap_reg, i32, i32, ptr, ptr, %struct.clk_omap_reg, i32, i32, i16, i8, i8, i16, i8, i8, i16, [2 x i8], i32, i8, [3 x i8], %struct.clk_omap_reg, %struct.clk_omap_reg, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [1 x i8], %struct.clk_omap_reg, %struct.clk_omap_reg, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, [2 x i8] } { %struct.clk_omap_reg zeroinitializer, i32 524032, i32 127, ptr null, ptr null, %struct.clk_omap_reg zeroinitializer, i32 7, i32 0, i16 0, i8 0, i8 0, i16 2047, i8 0, i8 1, i16 128, [2 x i8] zeroinitializer, i32 0, i8 -96, [3 x i8] zeroinitializer, %struct.clk_omap_reg zeroinitializer, %struct.clk_omap_reg zeroinitializer, i32 7, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, [1 x i8] zeroinitializer, %struct.clk_omap_reg zeroinitializer, %struct.clk_omap_reg zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i8 0, [2 x i8] zeroinitializer }, align 4
@dpll_core_ck_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @omap3_dpll_recalc, ptr null, ptr null, ptr null, ptr @omap2_init_dpll_parent, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__const.of_ti_omap4_m4xen_dpll_setup.dd = private unnamed_addr constant { %struct.clk_omap_reg, i32, i32, ptr, ptr, %struct.clk_omap_reg, i32, i32, i16, i8, i8, i16, i8, i8, i16, [2 x i8], i32, i8, [3 x i8], %struct.clk_omap_reg, %struct.clk_omap_reg, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [1 x i8], %struct.clk_omap_reg, %struct.clk_omap_reg, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, [2 x i8] } { %struct.clk_omap_reg zeroinitializer, i32 524032, i32 127, ptr null, ptr null, %struct.clk_omap_reg zeroinitializer, i32 7, i32 0, i16 0, i8 0, i8 0, i16 2047, i8 0, i8 1, i16 128, [2 x i8] zeroinitializer, i32 0, i8 -96, [3 x i8] zeroinitializer, %struct.clk_omap_reg zeroinitializer, %struct.clk_omap_reg zeroinitializer, i32 7, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 1024, i32 2048, i8 0, i8 0, i8 0, [1 x i8] zeroinitializer, %struct.clk_omap_reg zeroinitializer, %struct.clk_omap_reg zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i8 0, [2 x i8] zeroinitializer }, align 4
@dpll_m4xen_ck_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @omap3_noncore_dpll_enable, ptr @omap3_noncore_dpll_disable, ptr null, ptr null, ptr @omap3_core_dpll_save_context, ptr @omap3_core_dpll_restore_context, ptr @omap4_dpll_regm4xen_recalc, ptr @omap4_dpll_regm4xen_round_rate, ptr @omap4_dpll_regm4xen_determine_rate, ptr @omap3_noncore_dpll_set_parent, ptr @omap2_init_dpll_parent, ptr @omap3_noncore_dpll_set_rate, ptr @omap3_noncore_dpll_set_rate_and_parent, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__const.of_ti_omap4_jtype_dpll_setup.dd = private unnamed_addr constant { %struct.clk_omap_reg, i32, i32, ptr, ptr, %struct.clk_omap_reg, i32, i32, i16, i8, i8, i16, i8, i8, i16, [2 x i8], i32, i8, [3 x i8], %struct.clk_omap_reg, %struct.clk_omap_reg, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [1 x i8], %struct.clk_omap_reg, %struct.clk_omap_reg, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, [2 x i8] } { %struct.clk_omap_reg zeroinitializer, i32 1048320, i32 255, ptr null, ptr null, %struct.clk_omap_reg zeroinitializer, i32 7, i32 0, i16 0, i8 0, i8 0, i16 4095, i8 0, i8 1, i16 256, [2 x i8] zeroinitializer, i32 0, i8 -96, [3 x i8] zeroinitializer, %struct.clk_omap_reg zeroinitializer, %struct.clk_omap_reg zeroinitializer, i32 7, i32 0, i32 1, i32 0, i32 -16777216, i32 0, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, [1 x i8] zeroinitializer, %struct.clk_omap_reg zeroinitializer, %struct.clk_omap_reg zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i8 1, [2 x i8] zeroinitializer }, align 4
@dpll_no_gate_ck_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @omap3_noncore_dpll_save_context, ptr @omap3_noncore_dpll_restore_context, ptr @omap3_dpll_recalc, ptr @omap2_dpll_round_rate, ptr @omap3_noncore_dpll_determine_rate, ptr @omap3_noncore_dpll_set_parent, ptr @omap2_init_dpll_parent, ptr @omap3_noncore_dpll_set_rate, ptr @omap3_noncore_dpll_set_rate_and_parent, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__const.of_ti_am3_jtype_dpll_setup.dd = private unnamed_addr constant { %struct.clk_omap_reg, i32, i32, ptr, ptr, %struct.clk_omap_reg, i32, i32, i16, i8, i8, i16, i8, i8, i16, [2 x i8], i32, i8, [3 x i8], %struct.clk_omap_reg, %struct.clk_omap_reg, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [1 x i8], %struct.clk_omap_reg, %struct.clk_omap_reg, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, [2 x i8] } { %struct.clk_omap_reg zeroinitializer, i32 524032, i32 127, ptr null, ptr null, %struct.clk_omap_reg zeroinitializer, i32 7, i32 0, i16 0, i8 0, i8 0, i16 4095, i8 0, i8 2, i16 256, [2 x i8] zeroinitializer, i32 2000000000, i8 -96, [3 x i8] zeroinitializer, %struct.clk_omap_reg zeroinitializer, %struct.clk_omap_reg zeroinitializer, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, [1 x i8] zeroinitializer, %struct.clk_omap_reg zeroinitializer, %struct.clk_omap_reg zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i8 1, [2 x i8] zeroinitializer }, align 4
@__const.of_ti_am3_no_gate_jtype_dpll_setup.dd = private unnamed_addr constant { %struct.clk_omap_reg, i32, i32, ptr, ptr, %struct.clk_omap_reg, i32, i32, i16, i8, i8, i16, i8, i8, i16, [2 x i8], i32, i8, [3 x i8], %struct.clk_omap_reg, %struct.clk_omap_reg, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [1 x i8], %struct.clk_omap_reg, %struct.clk_omap_reg, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, [2 x i8] } { %struct.clk_omap_reg zeroinitializer, i32 524032, i32 127, ptr null, ptr null, %struct.clk_omap_reg zeroinitializer, i32 7, i32 0, i16 0, i8 0, i8 0, i16 2047, i8 0, i8 1, i16 128, [2 x i8] zeroinitializer, i32 2000000000, i8 -96, [3 x i8] zeroinitializer, %struct.clk_omap_reg zeroinitializer, %struct.clk_omap_reg zeroinitializer, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, [1 x i8] zeroinitializer, %struct.clk_omap_reg zeroinitializer, %struct.clk_omap_reg zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i8 1, [2 x i8] zeroinitializer }, align 4
@__const.of_ti_am3_dpll_setup.dd = private unnamed_addr constant { %struct.clk_omap_reg, i32, i32, ptr, ptr, %struct.clk_omap_reg, i32, i32, i16, i8, i8, i16, i8, i8, i16, [2 x i8], i32, i8, [3 x i8], %struct.clk_omap_reg, %struct.clk_omap_reg, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [1 x i8], %struct.clk_omap_reg, %struct.clk_omap_reg, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, [2 x i8] } { %struct.clk_omap_reg zeroinitializer, i32 524032, i32 127, ptr null, ptr null, %struct.clk_omap_reg zeroinitializer, i32 7, i32 0, i16 0, i8 0, i8 0, i16 2047, i8 0, i8 1, i16 128, [2 x i8] zeroinitializer, i32 1000000000, i8 -96, [3 x i8] zeroinitializer, %struct.clk_omap_reg zeroinitializer, %struct.clk_omap_reg zeroinitializer, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, [1 x i8] zeroinitializer, %struct.clk_omap_reg zeroinitializer, %struct.clk_omap_reg zeroinitializer, i32 786432, i32 262143, i32 127, i32 1792, i32 4096, i32 16384, i32 0, i32 0, i8 0, i8 0, [2 x i8] zeroinitializer }, align 4
@__const.of_ti_am3_core_dpll_setup.dd = private unnamed_addr constant { %struct.clk_omap_reg, i32, i32, ptr, ptr, %struct.clk_omap_reg, i32, i32, i16, i8, i8, i16, i8, i8, i16, [2 x i8], i32, i8, [3 x i8], %struct.clk_omap_reg, %struct.clk_omap_reg, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [1 x i8], %struct.clk_omap_reg, %struct.clk_omap_reg, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, [2 x i8] } { %struct.clk_omap_reg zeroinitializer, i32 524032, i32 127, ptr null, ptr null, %struct.clk_omap_reg zeroinitializer, i32 7, i32 0, i16 0, i8 0, i8 0, i16 2047, i8 0, i8 1, i16 128, [2 x i8] zeroinitializer, i32 1000000000, i8 -96, [3 x i8] zeroinitializer, %struct.clk_omap_reg zeroinitializer, %struct.clk_omap_reg zeroinitializer, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, [1 x i8] zeroinitializer, %struct.clk_omap_reg zeroinitializer, %struct.clk_omap_reg zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i8 0, [2 x i8] zeroinitializer }, align 4
@omap2_dpll_core_ck_ops = internal constant %struct.clk_ops zeroinitializer, align 4
@llvm.compiler.used = appending global [17 x ptr] [ptr @__of_table_of_ti_omap5_mpu_dpll_clock, ptr @__of_table_ti_am3_core_dpll_clock, ptr @__of_table_ti_am3_dpll_clock, ptr @__of_table_ti_am3_dpll_x2_clock, ptr @__of_table_ti_am3_jtype_dpll_clock, ptr @__of_table_ti_am3_no_gate_dpll_clock, ptr @__of_table_ti_am3_no_gate_jtype_dpll_clock, ptr @__of_table_ti_omap2_core_dpll_clock, ptr @__of_table_ti_omap3_core_dpll_clock, ptr @__of_table_ti_omap3_dpll_clock, ptr @__of_table_ti_omap3_per_dpll_clock, ptr @__of_table_ti_omap3_per_jtype_dpll_clock, ptr @__of_table_ti_omap4_core_dpll_clock, ptr @__of_table_ti_omap4_dpll_clock, ptr @__of_table_ti_omap4_dpll_x2_clock, ptr @__of_table_ti_omap4_jtype_dpll_clock, ptr @__of_table_ti_omap4_m4xen_dpll_clock], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @of_ti_omap4_dpll_x2_setup(ptr noundef %0) #0 section ".init.text" {
  tail call fastcc void @_register_dpll_x2(ptr noundef %0, ptr noundef nonnull @clkhwops_omap4_dpllmx)
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @of_ti_am3_dpll_x2_setup(ptr noundef %0) #0 section ".init.text" {
  tail call fastcc void @_register_dpll_x2(ptr noundef %0, ptr noundef null)
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @of_ti_omap3_dpll_setup(ptr noundef %0) #0 section ".init.text" {
  %2 = alloca %struct.dpll_data, align 4
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %2) #9
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(168) %2, ptr noundef nonnull align 4 dereferenceable(168) @__const.of_ti_omap3_dpll_setup.dd, i32 168, i1 false)
  %3 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.2) #9
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.3) #9
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %5, %1
  %9 = tail call zeroext i1 @of_node_name_eq(ptr noundef %0, ptr noundef nonnull @.str.4) #9
  br i1 %9, label %11, label %10

10:                                               ; preds = %8, %5
  br label %11

11:                                               ; preds = %10, %8
  %12 = phi ptr [ @omap3_dpll_ck_ops, %10 ], [ @omap3_dpll5_ck_ops, %8 ]
  call fastcc void @of_ti_dpll_setup(ptr noundef %0, ptr noundef nonnull %12, ptr noundef nonnull %2) #10
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %2) #9
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @of_ti_omap3_core_dpll_setup(ptr noundef %0) #0 section ".init.text" {
  %2 = alloca %struct.dpll_data, align 4
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %2) #9
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(168) %2, ptr noundef nonnull align 4 dereferenceable(168) @__const.of_ti_omap3_core_dpll_setup.dd, i32 168, i1 false)
  call fastcc void @of_ti_dpll_setup(ptr noundef %0, ptr noundef nonnull @omap3_dpll_core_ck_ops, ptr noundef nonnull %2) #10
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %2) #9
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @of_ti_omap3_per_dpll_setup(ptr noundef %0) #0 section ".init.text" {
  %2 = alloca %struct.dpll_data, align 4
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %2) #9
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(168) %2, ptr noundef nonnull align 4 dereferenceable(168) @__const.of_ti_omap3_per_dpll_setup.dd, i32 168, i1 false)
  call fastcc void @of_ti_dpll_setup(ptr noundef %0, ptr noundef nonnull @omap3_dpll_per_ck_ops, ptr noundef nonnull %2) #10
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %2) #9
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @of_ti_omap3_per_jtype_dpll_setup(ptr noundef %0) #0 section ".init.text" {
  %2 = alloca %struct.dpll_data, align 4
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %2) #9
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(168) %2, ptr noundef nonnull align 4 dereferenceable(168) @__const.of_ti_omap3_per_jtype_dpll_setup.dd, i32 168, i1 false)
  call fastcc void @of_ti_dpll_setup(ptr noundef %0, ptr noundef nonnull @omap3_dpll_per_ck_ops, ptr noundef nonnull %2) #10
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %2) #9
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @of_ti_omap4_dpll_setup(ptr noundef %0) #0 section ".init.text" {
  %2 = alloca %struct.dpll_data, align 4
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %2) #9
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(168) %2, ptr noundef nonnull align 4 dereferenceable(168) @__const.of_ti_omap4_core_dpll_setup.dd, i32 168, i1 false)
  call fastcc void @of_ti_dpll_setup(ptr noundef %0, ptr noundef nonnull @dpll_ck_ops, ptr noundef nonnull %2) #10
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %2) #9
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @of_ti_omap5_mpu_dpll_setup(ptr noundef %0) #0 section ".init.text" {
  %2 = alloca %struct.dpll_data, align 4
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %2) #9
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(168) %2, ptr noundef nonnull align 4 dereferenceable(168) @__const.of_ti_omap5_mpu_dpll_setup.dd, i32 168, i1 false)
  call fastcc void @of_ti_dpll_setup(ptr noundef %0, ptr noundef nonnull @dpll_ck_ops, ptr noundef nonnull %2) #10
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %2) #9
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @of_ti_omap4_core_dpll_setup(ptr noundef %0) #0 section ".init.text" {
  %2 = alloca %struct.dpll_data, align 4
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %2) #9
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(168) %2, ptr noundef nonnull align 4 dereferenceable(168) @__const.of_ti_omap4_core_dpll_setup.dd, i32 168, i1 false)
  call fastcc void @of_ti_dpll_setup(ptr noundef %0, ptr noundef nonnull @dpll_core_ck_ops, ptr noundef nonnull %2) #10
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %2) #9
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @of_ti_omap4_m4xen_dpll_setup(ptr noundef %0) #0 section ".init.text" {
  %2 = alloca %struct.dpll_data, align 4
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %2) #9
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(168) %2, ptr noundef nonnull align 4 dereferenceable(168) @__const.of_ti_omap4_m4xen_dpll_setup.dd, i32 168, i1 false)
  call fastcc void @of_ti_dpll_setup(ptr noundef %0, ptr noundef nonnull @dpll_m4xen_ck_ops, ptr noundef nonnull %2) #10
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %2) #9
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @of_ti_omap4_jtype_dpll_setup(ptr noundef %0) #0 section ".init.text" {
  %2 = alloca %struct.dpll_data, align 4
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %2) #9
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(168) %2, ptr noundef nonnull align 4 dereferenceable(168) @__const.of_ti_omap4_jtype_dpll_setup.dd, i32 168, i1 false)
  call fastcc void @of_ti_dpll_setup(ptr noundef %0, ptr noundef nonnull @dpll_m4xen_ck_ops, ptr noundef nonnull %2) #10
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %2) #9
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @of_ti_am3_no_gate_dpll_setup(ptr noundef %0) #0 section ".init.text" {
  %2 = alloca %struct.dpll_data, align 4
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %2) #9
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(168) %2, ptr noundef nonnull align 4 dereferenceable(168) @__const.of_ti_am3_dpll_setup.dd, i32 168, i1 false)
  call fastcc void @of_ti_dpll_setup(ptr noundef %0, ptr noundef nonnull @dpll_no_gate_ck_ops, ptr noundef nonnull %2) #10
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %2) #9
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @of_ti_am3_jtype_dpll_setup(ptr noundef %0) #0 section ".init.text" {
  %2 = alloca %struct.dpll_data, align 4
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %2) #9
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(168) %2, ptr noundef nonnull align 4 dereferenceable(168) @__const.of_ti_am3_jtype_dpll_setup.dd, i32 168, i1 false)
  call fastcc void @of_ti_dpll_setup(ptr noundef %0, ptr noundef nonnull @dpll_ck_ops, ptr noundef nonnull %2) #10
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %2) #9
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @of_ti_am3_no_gate_jtype_dpll_setup(ptr noundef %0) #0 section ".init.text" {
  %2 = alloca %struct.dpll_data, align 4
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %2) #9
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(168) %2, ptr noundef nonnull align 4 dereferenceable(168) @__const.of_ti_am3_no_gate_jtype_dpll_setup.dd, i32 168, i1 false)
  call fastcc void @of_ti_dpll_setup(ptr noundef %0, ptr noundef nonnull @dpll_no_gate_ck_ops, ptr noundef nonnull %2) #10
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %2) #9
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @of_ti_am3_dpll_setup(ptr noundef %0) #0 section ".init.text" {
  %2 = alloca %struct.dpll_data, align 4
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %2) #9
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(168) %2, ptr noundef nonnull align 4 dereferenceable(168) @__const.of_ti_am3_dpll_setup.dd, i32 168, i1 false)
  call fastcc void @of_ti_dpll_setup(ptr noundef %0, ptr noundef nonnull @dpll_ck_ops, ptr noundef nonnull %2) #10
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %2) #9
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @of_ti_am3_core_dpll_setup(ptr noundef %0) #0 section ".init.text" {
  %2 = alloca %struct.dpll_data, align 4
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %2) #9
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(168) %2, ptr noundef nonnull align 4 dereferenceable(168) @__const.of_ti_am3_core_dpll_setup.dd, i32 168, i1 false)
  call fastcc void @of_ti_dpll_setup(ptr noundef %0, ptr noundef nonnull @dpll_core_ck_ops, ptr noundef nonnull %2) #10
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %2) #9
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @of_ti_omap2_core_dpll_setup(ptr noundef %0) #0 section ".init.text" {
  %2 = alloca %struct.dpll_data, align 4
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %2) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(168) %2, i8 0, i32 168, i1 false)
  %3 = getelementptr inbounds { %struct.clk_omap_reg, i32, i32, ptr, ptr, %struct.clk_omap_reg, i32, i32, i16, i8, i8, i16, i8, i8, i16, [2 x i8], i32, i8, [3 x i8], %struct.clk_omap_reg, %struct.clk_omap_reg, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [1 x i8], %struct.clk_omap_reg, %struct.clk_omap_reg, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, [2 x i8] }, ptr %2, i32 0, i32 1
  store i32 4190208, ptr %3, align 4
  %4 = getelementptr inbounds { %struct.clk_omap_reg, i32, i32, ptr, ptr, %struct.clk_omap_reg, i32, i32, i16, i8, i8, i16, i8, i8, i16, [2 x i8], i32, i8, [3 x i8], %struct.clk_omap_reg, %struct.clk_omap_reg, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [1 x i8], %struct.clk_omap_reg, %struct.clk_omap_reg, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, [2 x i8] }, ptr %2, i32 0, i32 2
  store i32 3840, ptr %4, align 4
  %5 = getelementptr inbounds { %struct.clk_omap_reg, i32, i32, ptr, ptr, %struct.clk_omap_reg, i32, i32, i16, i8, i8, i16, i8, i8, i16, [2 x i8], i32, i8, [3 x i8], %struct.clk_omap_reg, %struct.clk_omap_reg, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [1 x i8], %struct.clk_omap_reg, %struct.clk_omap_reg, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, [2 x i8] }, ptr %2, i32 0, i32 6
  store i32 3, ptr %5, align 4
  %6 = getelementptr inbounds { %struct.clk_omap_reg, i32, i32, ptr, ptr, %struct.clk_omap_reg, i32, i32, i16, i8, i8, i16, i8, i8, i16, [2 x i8], i32, i8, [3 x i8], %struct.clk_omap_reg, %struct.clk_omap_reg, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [1 x i8], %struct.clk_omap_reg, %struct.clk_omap_reg, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, [2 x i8] }, ptr %2, i32 0, i32 13
  store i8 1, ptr %6, align 1
  %7 = getelementptr inbounds { %struct.clk_omap_reg, i32, i32, ptr, ptr, %struct.clk_omap_reg, i32, i32, i16, i8, i8, i16, i8, i8, i16, [2 x i8], i32, i8, [3 x i8], %struct.clk_omap_reg, %struct.clk_omap_reg, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [1 x i8], %struct.clk_omap_reg, %struct.clk_omap_reg, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, [2 x i8] }, ptr %2, i32 0, i32 14
  store i16 16, ptr %7, align 4
  call fastcc void @of_ti_dpll_setup(ptr noundef %0, ptr noundef nonnull @omap2_dpll_core_ck_ops, ptr noundef nonnull %2) #10
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %2) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @_register_dpll_x2(ptr noundef %0, ptr noundef %1) unnamed_addr #1 {
  %3 = alloca %struct.clk_init_data, align 4
  %4 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %3) #9
  %5 = getelementptr inbounds i8, ptr %3, i32 12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %5, i8 0, i32 16, i1 false)
  %6 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  %7 = tail call ptr @of_clk_get_parent_name(ptr noundef %0, i32 noundef 0) #9
  store ptr %7, ptr %4, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__._register_dpll_x2, ptr noundef %0) #11
  br label %37

11:                                               ; preds = %2
  %12 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %13 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3520, i32 noundef 76) #12
  %14 = icmp eq ptr %13, null
  br i1 %14, label %37, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.clk_hw_omap, ptr %13, i32 0, i32 11
  store ptr %1, ptr %16, align 8
  %17 = getelementptr inbounds %struct.clk_hw, ptr %13, i32 0, i32 2
  store ptr %3, ptr %17, align 8
  store ptr %6, ptr %3, align 4
  %18 = getelementptr inbounds %struct.clk_init_data, ptr %3, i32 0, i32 1
  store ptr @dpll_x2_ck_ops, ptr %18, align 4
  %19 = getelementptr inbounds %struct.clk_init_data, ptr %3, i32 0, i32 2
  store ptr %4, ptr %19, align 4
  %20 = getelementptr inbounds %struct.clk_init_data, ptr %3, i32 0, i32 5
  store i8 1, ptr %20, align 4
  %21 = icmp eq ptr %1, @clkhwops_omap4_dpllmx
  br i1 %21, label %22, label %31

22:                                               ; preds = %15
  %23 = call i32 @of_property_count_elems_of_size(ptr noundef %0, ptr noundef nonnull @.str.1, i32 noundef 1) #9
  %24 = icmp slt i32 %23, 1
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  store ptr null, ptr %16, align 8
  br label %31

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.clk_hw_omap, ptr %13, i32 0, i32 7
  %28 = call i32 @ti_clk_get_reg_addr(ptr noundef %0, i32 noundef 0, ptr noundef %27) #9
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  call void @kfree(ptr noundef nonnull %13) #9
  br label %37

31:                                               ; preds = %26, %25, %15
  %32 = call ptr @ti_clk_register_omap_hw(ptr noundef null, ptr noundef nonnull %13, ptr noundef %6) #9
  %33 = icmp ugt ptr %32, inttoptr (i32 -4096 to ptr)
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  call void @kfree(ptr noundef nonnull %13) #9
  br label %37

35:                                               ; preds = %31
  %36 = call i32 @of_clk_add_provider(ptr noundef %0, ptr noundef nonnull @of_clk_src_simple_get, ptr noundef %32) #9
  br label %37

37:                                               ; preds = %35, %34, %30, %11, %9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %3) #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_parent_name(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_count_elems_of_size(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ti_clk_get_reg_addr(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ti_clk_register_omap_hw(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_simple_get(ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap3_clkoutx2_recalc(ptr noundef, i32 noundef) #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_machine_is_compatible(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_node_name_eq(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @of_ti_dpll_setup(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 section ".init.text" {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  store i32 0, ptr %4, align 4, !annotation !8
  %5 = tail call ptr @kmemdup(ptr noundef %2, i32 noundef 168, i32 noundef 3264) #9
  %6 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %7 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 76) #12
  %8 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %9 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 28) #12
  %10 = icmp ne ptr %5, null
  %11 = icmp ne ptr %7, null
  %12 = select i1 %10, i1 %11, i1 false
  %13 = icmp ne ptr %9, null
  %14 = select i1 %12, i1 %13, i1 false
  br i1 %14, label %15, label %124

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.clk_hw_omap, ptr %7, i32 0, i32 8
  store ptr %5, ptr %16, align 4
  %17 = getelementptr inbounds %struct.clk_hw_omap, ptr %7, i32 0, i32 11
  store ptr @clkhwops_omap3_dpll, ptr %17, align 8
  %18 = getelementptr inbounds %struct.clk_hw, ptr %7, i32 0, i32 2
  store ptr %9, ptr %18, align 8
  %19 = load ptr, ptr %0, align 4
  store ptr %19, ptr %9, align 8
  %20 = getelementptr inbounds %struct.clk_init_data, ptr %9, i32 0, i32 1
  store ptr %1, ptr %20, align 4
  %21 = tail call i32 @of_clk_get_parent_count(ptr noundef %0) #9
  %22 = trunc i32 %21 to i8
  %23 = getelementptr inbounds %struct.clk_init_data, ptr %9, i32 0, i32 5
  store i8 %22, ptr %23, align 4
  %24 = icmp eq i8 %22, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %15
  %26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.of_ti_dpll_setup, ptr noundef %0) #11
  br label %124

27:                                               ; preds = %15
  %28 = shl i32 %21, 2
  %29 = and i32 %28, 1020
  %30 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %29, i32 noundef 3520) #13
  %31 = icmp eq ptr %30, null
  br i1 %31, label %124, label %32

32:                                               ; preds = %27
  %33 = load i8, ptr %23, align 4
  %34 = zext i8 %33 to i32
  %35 = tail call i32 @of_clk_parent_fill(ptr noundef %0, ptr noundef nonnull %30, i32 noundef %34) #9
  %36 = getelementptr inbounds %struct.clk_init_data, ptr %9, i32 0, i32 2
  store ptr %30, ptr %36, align 8
  %37 = getelementptr inbounds %struct.dpll_data, ptr %5, i32 0, i32 5
  %38 = tail call i32 @ti_clk_get_reg_addr(ptr noundef %0, i32 noundef 0, ptr noundef %37) #9
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %124

40:                                               ; preds = %32
  %41 = getelementptr inbounds %struct.dpll_data, ptr %5, i32 0, i32 21
  %42 = load i32, ptr %41, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = tail call i32 @ti_clk_get_reg_addr(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %5) #9
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %54, label %124

47:                                               ; preds = %40
  %48 = getelementptr inbounds %struct.dpll_data, ptr %5, i32 0, i32 18
  %49 = tail call i32 @ti_clk_get_reg_addr(ptr noundef %0, i32 noundef 1, ptr noundef %48) #9
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %124

51:                                               ; preds = %47
  %52 = tail call i32 @ti_clk_get_reg_addr(ptr noundef %0, i32 noundef 2, ptr noundef nonnull %5) #9
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %124

54:                                               ; preds = %51, %44
  %55 = getelementptr inbounds %struct.dpll_data, ptr %5, i32 0, i32 19
  %56 = load i32, ptr %55, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.dpll_data, ptr %5, i32 0, i32 17
  %60 = tail call i32 @ti_clk_get_reg_addr(ptr noundef %0, i32 noundef 3, ptr noundef %59) #9
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %124

62:                                               ; preds = %58, %54
  %63 = phi i32 [ 4, %58 ], [ 3, %54 ]
  %64 = getelementptr inbounds %struct.dpll_data, ptr %5, i32 0, i32 33
  %65 = load i32, ptr %64, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %97, label %67

67:                                               ; preds = %62
  %68 = getelementptr inbounds %struct.dpll_data, ptr %5, i32 0, i32 34
  %69 = load i32, ptr %68, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %97, label %71

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.dpll_data, ptr %5, i32 0, i32 35
  %73 = load i32, ptr %72, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %97, label %75

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.dpll_data, ptr %5, i32 0, i32 36
  %77 = load i32, ptr %76, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %97, label %79

79:                                               ; preds = %75
  %80 = getelementptr inbounds %struct.dpll_data, ptr %5, i32 0, i32 31
  %81 = tail call i32 @ti_clk_get_reg_addr(ptr noundef %0, i32 noundef %63, ptr noundef %80) #9
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %124

83:                                               ; preds = %79
  %84 = add nuw nsw i32 %63, 1
  %85 = getelementptr inbounds %struct.dpll_data, ptr %5, i32 0, i32 32
  %86 = tail call i32 @ti_clk_get_reg_addr(ptr noundef %0, i32 noundef %84, ptr noundef %85) #9
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %124

88:                                               ; preds = %83
  %89 = getelementptr inbounds %struct.dpll_data, ptr %5, i32 0, i32 39
  %90 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef nonnull @.str.6, ptr noundef %89, i32 noundef 1, i32 noundef 0) #9
  %91 = getelementptr inbounds %struct.dpll_data, ptr %5, i32 0, i32 40
  %92 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef nonnull @.str.7, ptr noundef %91, i32 noundef 1, i32 noundef 0) #9
  %93 = tail call ptr @of_find_property(ptr noundef %0, ptr noundef nonnull @.str.8, ptr noundef null) #9
  %94 = icmp ne ptr %93, null
  %95 = getelementptr inbounds %struct.dpll_data, ptr %5, i32 0, i32 41
  %96 = zext i1 %94 to i8
  store i8 %96, ptr %95, align 4
  br label %97

97:                                               ; preds = %88, %75, %71, %67, %62
  %98 = tail call ptr @of_find_property(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef null) #9
  %99 = icmp eq ptr %98, null
  %100 = select i1 %99, i8 0, i8 2
  %101 = tail call ptr @of_find_property(ptr noundef %0, ptr noundef nonnull @.str.10, ptr noundef null) #9
  %102 = icmp eq ptr %101, null
  %103 = or i8 %100, 32
  %104 = select i1 %102, i8 %100, i8 %103
  %105 = tail call ptr @of_find_property(ptr noundef %0, ptr noundef nonnull @.str.11, ptr noundef null) #9
  %106 = icmp eq ptr %105, null
  %107 = or i8 %104, -128
  %108 = select i1 %106, i8 %104, i8 %107
  %109 = call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef nonnull @.str.12, ptr noundef nonnull %4, i32 noundef 1, i32 noundef 0) #9
  %110 = icmp sgt i32 %109, -1
  br i1 %110, label %111, label %119

111:                                              ; preds = %97
  %112 = load i32, ptr %4, align 4
  %113 = getelementptr inbounds %struct.dpll_data, ptr %5, i32 0, i32 13
  %114 = load i8, ptr %113, align 1
  %115 = zext i8 %114 to i32
  %116 = icmp ugt i32 %112, %115
  br i1 %116, label %117, label %119

117:                                              ; preds = %111
  %118 = trunc i32 %112 to i8
  store i8 %118, ptr %113, align 1
  br label %119

119:                                              ; preds = %117, %111, %97
  %120 = icmp eq i8 %108, 0
  br i1 %120, label %123, label %121

121:                                              ; preds = %119
  %122 = getelementptr inbounds %struct.dpll_data, ptr %5, i32 0, i32 16
  store i8 %108, ptr %122, align 4
  br label %123

123:                                              ; preds = %121, %119
  call void @_register_dpll(ptr noundef nonnull %7, ptr noundef %0) #10
  br label %126

124:                                              ; preds = %83, %79, %58, %51, %47, %44, %32, %27, %25, %3
  %125 = phi ptr [ %30, %32 ], [ %30, %47 ], [ %30, %51 ], [ %30, %58 ], [ %30, %79 ], [ %30, %83 ], [ %30, %44 ], [ null, %27 ], [ null, %25 ], [ null, %3 ]
  tail call void @kfree(ptr noundef %5) #9
  tail call void @kfree(ptr noundef %125) #9
  tail call void @kfree(ptr noundef %9) #9
  tail call void @kfree(ptr noundef %7) #9
  br label %126

126:                                              ; preds = %124, %123
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_get_parent_count(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_parent_fill(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @_register_dpll(ptr noundef %0, ptr noundef %1) #0 section ".init.text" {
  %3 = getelementptr inbounds %struct.clk_hw_omap, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.clk_hw, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = tail call ptr @of_clk_get(ptr noundef %1, i32 noundef 0) #9
  %8 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = tail call i32 @ti_clk_retry_init(ptr noundef %1, ptr noundef %0, ptr noundef nonnull @_register_dpll) #9
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %37, label %30

12:                                               ; preds = %2
  %13 = tail call ptr @__clk_get_hw(ptr noundef %7) #9
  %14 = getelementptr inbounds %struct.dpll_data, ptr %4, i32 0, i32 4
  store ptr %13, ptr %14, align 4
  %15 = tail call ptr @of_clk_get(ptr noundef %1, i32 noundef 1) #9
  %16 = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = tail call i32 @ti_clk_retry_init(ptr noundef %1, ptr noundef %0, ptr noundef nonnull @_register_dpll) #9
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %37, label %30

20:                                               ; preds = %12
  %21 = tail call ptr @__clk_get_hw(ptr noundef %15) #9
  %22 = getelementptr inbounds %struct.dpll_data, ptr %4, i32 0, i32 3
  store ptr %21, ptr %22, align 4
  %23 = load ptr, ptr %1, align 4
  %24 = tail call ptr @ti_clk_register_omap_hw(ptr noundef null, ptr noundef %0, ptr noundef %23) #9
  %25 = icmp ugt ptr %24, inttoptr (i32 -4096 to ptr)
  br i1 %25, label %30, label %26

26:                                               ; preds = %20
  %27 = tail call i32 @of_clk_add_provider(ptr noundef %1, ptr noundef nonnull @of_clk_src_simple_get, ptr noundef %24) #9
  %28 = getelementptr inbounds %struct.clk_init_data, ptr %6, i32 0, i32 2
  %29 = load ptr, ptr %28, align 4
  br label %34

30:                                               ; preds = %20, %17, %9
  %31 = load ptr, ptr %3, align 4
  tail call void @kfree(ptr noundef %31) #9
  %32 = getelementptr inbounds %struct.clk_init_data, ptr %6, i32 0, i32 2
  %33 = load ptr, ptr %32, align 4
  tail call void @kfree(ptr noundef %33) #9
  br label %34

34:                                               ; preds = %30, %26
  %35 = phi ptr [ %6, %30 ], [ %29, %26 ]
  %36 = phi ptr [ %0, %30 ], [ %6, %26 ]
  tail call void @kfree(ptr noundef %35) #9
  tail call void @kfree(ptr noundef %36) #9
  br label %37

37:                                               ; preds = %34, %17, %9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ti_clk_retry_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_hw(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap3_noncore_dpll_enable(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap3_noncore_dpll_disable(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap3_dpll_recalc(ptr noundef, i32 noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap2_dpll_round_rate(ptr noundef, i32 noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap3_noncore_dpll_determine_rate(ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap3_noncore_dpll_set_parent(ptr noundef, i8 noundef zeroext) #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @omap2_init_dpll_parent(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap3_dpll5_set_rate(ptr noundef, i32 noundef, i32 noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap3_noncore_dpll_set_rate_and_parent(ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap3_noncore_dpll_set_rate(ptr noundef, i32 noundef, i32 noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap3_dpll4_set_rate(ptr noundef, i32 noundef, i32 noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap3_dpll4_set_rate_and_parent(ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap3_noncore_dpll_save_context(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap3_noncore_dpll_restore_context(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap3_core_dpll_save_context(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap3_core_dpll_restore_context(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap4_dpll_regm4xen_recalc(ptr noundef, i32 noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap4_dpll_regm4xen_round_rate(ptr noundef, i32 noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap4_dpll_regm4xen_determine_rate(ptr noundef, ptr noundef) #4

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly nofree nounwind willreturn }
attributes #9 = { nounwind }
attributes #10 = { cold }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { nounwind allocsize(0) }

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
!8 = !{!"auto-init"}
