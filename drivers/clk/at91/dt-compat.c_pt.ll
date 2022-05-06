; ModuleID = '/llk/IR/drivers/clk/at91/dt-compat.c_pt.bc'
source_filename = "../drivers/clk/at91/dt-compat.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.clk_pcr_layout = type { i32, i32, i32, i32, i32 }
%struct.clk_master_layout = type { i32, i32, i8 }
%struct.clk_pll_layout = type { i32, i32, i32, i32, i32, i8, i8, i8, i8 }
%struct.clk_programmable_layout = type { i8, i8, i8, i8, i8 }
%struct.clk_range = type { i32, i32 }
%struct.clk_master_characteristics = type { %struct.clk_range, [5 x i32], i8 }
%struct.clk_pll_characteristics = type { %struct.clk_range, i32, ptr, ptr, ptr, i8 }

@__of_table_of_sama5d2_clk_audio_pll_frac_setup = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,sama5d2-clk-audio-pll-frac\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_sama5d2_clk_audio_pll_frac_setup }, section "__clk_of_table", align 4
@__of_table_of_sama5d2_clk_audio_pll_pad_setup = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,sama5d2-clk-audio-pll-pad\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_sama5d2_clk_audio_pll_pad_setup }, section "__clk_of_table", align 4
@__of_table_of_sama5d2_clk_audio_pll_pmc_setup = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,sama5d2-clk-audio-pll-pmc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_sama5d2_clk_audio_pll_pmc_setup }, section "__clk_of_table", align 4
@__of_table_of_sama5d2_clk_generated_setup = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,sama5d2-clk-generated\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_sama5d2_clk_generated_setup }, section "__clk_of_table", align 4
@__of_table_of_sama5d4_clk_h32mx_setup = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,sama5d4-clk-h32mx\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_sama5d4_clk_h32mx_setup }, section "__clk_of_table", align 4
@__of_table_sama5d2_clk_i2s_mux = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,sama5d2-clk-i2s-mux\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_sama5d2_clk_i2s_mux_setup }, section "__clk_of_table", align 4
@__of_table_at91rm9200_clk_main_osc = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91rm9200-clk-main-osc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_at91rm9200_clk_main_osc_setup }, section "__clk_of_table", align 4
@__of_table_at91sam9x5_clk_main_rc_osc = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9x5-clk-main-rc-osc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_at91sam9x5_clk_main_rc_osc_setup }, section "__clk_of_table", align 4
@__of_table_at91rm9200_clk_main = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91rm9200-clk-main\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_at91rm9200_clk_main_setup }, section "__clk_of_table", align 4
@__of_table_at91sam9x5_clk_main = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9x5-clk-main\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_at91sam9x5_clk_main_setup }, section "__clk_of_table", align 4
@__of_table_at91rm9200_clk_master = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91rm9200-clk-master\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_at91rm9200_clk_master_setup }, section "__clk_of_table", align 4
@__of_table_at91sam9x5_clk_master = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9x5-clk-master\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_at91sam9x5_clk_master_setup }, section "__clk_of_table", align 4
@__of_table_at91rm9200_clk_periph = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91rm9200-clk-peripheral\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_at91rm9200_clk_periph_setup }, section "__clk_of_table", align 4
@__of_table_at91sam9x5_clk_periph = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9x5-clk-peripheral\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_at91sam9x5_clk_periph_setup }, section "__clk_of_table", align 4
@__of_table_at91rm9200_clk_pll = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91rm9200-clk-pll\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_at91rm9200_clk_pll_setup }, section "__clk_of_table", align 4
@__of_table_at91sam9g45_clk_pll = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9g45-clk-pll\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_at91sam9g45_clk_pll_setup }, section "__clk_of_table", align 4
@__of_table_at91sam9g20_clk_pllb = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9g20-clk-pllb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_at91sam9g20_clk_pllb_setup }, section "__clk_of_table", align 4
@__of_table_sama5d3_clk_pll = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,sama5d3-clk-pll\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_sama5d3_clk_pll_setup }, section "__clk_of_table", align 4
@__of_table_at91sam9x5_clk_plldiv = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9x5-clk-plldiv\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_at91sam9x5_clk_plldiv_setup }, section "__clk_of_table", align 4
@__of_table_at91rm9200_clk_prog = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91rm9200-clk-programmable\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_at91rm9200_clk_prog_setup }, section "__clk_of_table", align 4
@__of_table_at91sam9g45_clk_prog = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9g45-clk-programmable\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_at91sam9g45_clk_prog_setup }, section "__clk_of_table", align 4
@__of_table_at91sam9x5_clk_prog = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9x5-clk-programmable\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_at91sam9x5_clk_prog_setup }, section "__clk_of_table", align 4
@__of_table_at91sam9260_clk_slow = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9260-clk-slow\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_at91sam9260_clk_slow_setup }, section "__clk_of_table", align 4
@__of_table_at91sam9x5_clk_smd = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9x5-clk-smd\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_at91sam9x5_clk_smd_setup }, section "__clk_of_table", align 4
@__of_table_at91rm9200_clk_sys = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91rm9200-clk-system\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_at91rm9200_clk_sys_setup }, section "__clk_of_table", align 4
@__of_table_at91sam9x5_clk_usb = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9x5-clk-usb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_at91sam9x5_clk_usb_setup }, section "__clk_of_table", align 4
@__of_table_at91sam9n12_clk_usb = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9n12-clk-usb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_at91sam9n12_clk_usb_setup }, section "__clk_of_table", align 4
@__of_table_at91rm9200_clk_usb = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91rm9200-clk-usb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_at91rm9200_clk_usb_setup }, section "__clk_of_table", align 4
@__of_table_at91sam9x5_clk_utmi = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9x5-clk-utmi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_at91sam9x5_clk_utmi_setup }, section "__clk_of_table", align 4
@.str = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"clock-output-names\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"atmel,clk-output-range\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"atmel,sama5d2-clk-generated\00", align 1
@pmc_pcr_lock = external dso_local global %struct.spinlock, align 4
@dt_pcr_layout = internal constant %struct.clk_pcr_layout { i32 268, i32 4096, i32 196608, i32 1792, i32 63 }, align 4
@.str.4 = private unnamed_addr constant [18 x i8] c"atmel,sama5d2-sfr\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"atmel,osc-bypass\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"clock-frequency\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"clock-accuracy\00", align 1
@at91rm9200_master_layout = external dso_local constant %struct.clk_master_layout, align 4
@.str.8 = private unnamed_addr constant [14 x i8] c"masterck_pres\00", align 1
@mck_lock = internal global %struct.spinlock zeroinitializer, align 4
@.str.9 = private unnamed_addr constant [19 x i8] c"atmel,clk-divisors\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"atmel,master-clk-have-div3-pres\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@at91sam9x5_master_layout = external dso_local constant %struct.clk_master_layout, align 4
@at91rm9200_pll_layout = external dso_local constant %struct.clk_pll_layout, align 4
@.str.11 = private unnamed_addr constant [22 x i8] c"atmel,clk-input-range\00", align 1
@.str.12 = private unnamed_addr constant [34 x i8] c"#atmel,pll-clk-output-range-cells\00", align 1
@.str.13 = private unnamed_addr constant [28 x i8] c"atmel,pll-clk-output-ranges\00", align 1
@at91sam9g45_pll_layout = external dso_local constant %struct.clk_pll_layout, align 4
@at91sam9g20_pllb_layout = external dso_local constant %struct.clk_pll_layout, align 4
@sama5d3_pll_layout = external dso_local constant %struct.clk_pll_layout, align 4
@at91rm9200_programmable_layout = external dso_local constant %struct.clk_programmable_layout, align 1
@at91sam9g45_programmable_layout = external dso_local constant %struct.clk_programmable_layout, align 1
@at91sam9x5_programmable_layout = external dso_local constant %struct.clk_programmable_layout, align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"atmel,sama5d3-sfr\00", align 1
@llvm.compiler.used = appending global [29 x ptr] [ptr @__of_table_at91rm9200_clk_main, ptr @__of_table_at91rm9200_clk_main_osc, ptr @__of_table_at91rm9200_clk_master, ptr @__of_table_at91rm9200_clk_periph, ptr @__of_table_at91rm9200_clk_pll, ptr @__of_table_at91rm9200_clk_prog, ptr @__of_table_at91rm9200_clk_sys, ptr @__of_table_at91rm9200_clk_usb, ptr @__of_table_at91sam9260_clk_slow, ptr @__of_table_at91sam9g20_clk_pllb, ptr @__of_table_at91sam9g45_clk_pll, ptr @__of_table_at91sam9g45_clk_prog, ptr @__of_table_at91sam9n12_clk_usb, ptr @__of_table_at91sam9x5_clk_main, ptr @__of_table_at91sam9x5_clk_main_rc_osc, ptr @__of_table_at91sam9x5_clk_master, ptr @__of_table_at91sam9x5_clk_periph, ptr @__of_table_at91sam9x5_clk_plldiv, ptr @__of_table_at91sam9x5_clk_prog, ptr @__of_table_at91sam9x5_clk_smd, ptr @__of_table_at91sam9x5_clk_usb, ptr @__of_table_at91sam9x5_clk_utmi, ptr @__of_table_of_sama5d2_clk_audio_pll_frac_setup, ptr @__of_table_of_sama5d2_clk_audio_pll_pad_setup, ptr @__of_table_of_sama5d2_clk_audio_pll_pmc_setup, ptr @__of_table_of_sama5d2_clk_generated_setup, ptr @__of_table_of_sama5d4_clk_h32mx_setup, ptr @__of_table_sama5d2_clk_i2s_mux, ptr @__of_table_sama5d3_clk_pll], section "llvm.metadata"
@switch.table.of_sama5d2_clk_generated_setup = private unnamed_addr constant [6 x i32] [i32 5, i32 5, i32 -2147483648, i32 -2147483648, i32 -2147483648, i32 5], align 4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @of_sama5d2_clk_audio_pll_frac_setup(ptr noundef %0) #0 section ".init.text" {
  %2 = load ptr, ptr %0, align 4
  %3 = tail call ptr @of_get_parent(ptr noundef %0) #8
  %4 = tail call ptr @syscon_node_to_regmap(ptr noundef %3) #8
  %5 = icmp ugt ptr %4, inttoptr (i32 -4096 to ptr)
  br i1 %5, label %12, label %6

6:                                                ; preds = %1
  %7 = tail call ptr @of_clk_get_parent_name(ptr noundef %0, i32 noundef 0) #8
  %8 = tail call ptr @at91_clk_register_audio_pll_frac(ptr noundef %4, ptr noundef %2, ptr noundef %7) #9
  %9 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = tail call i32 @of_clk_add_hw_provider(ptr noundef %0, ptr noundef nonnull @of_clk_hw_simple_get, ptr noundef %8) #8
  br label %12

12:                                               ; preds = %10, %6, %1
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @of_sama5d2_clk_audio_pll_pad_setup(ptr noundef %0) #0 section ".init.text" {
  %2 = load ptr, ptr %0, align 4
  %3 = tail call ptr @of_get_parent(ptr noundef %0) #8
  %4 = tail call ptr @syscon_node_to_regmap(ptr noundef %3) #8
  %5 = icmp ugt ptr %4, inttoptr (i32 -4096 to ptr)
  br i1 %5, label %12, label %6

6:                                                ; preds = %1
  %7 = tail call ptr @of_clk_get_parent_name(ptr noundef %0, i32 noundef 0) #8
  %8 = tail call ptr @at91_clk_register_audio_pll_pad(ptr noundef %4, ptr noundef %2, ptr noundef %7) #9
  %9 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = tail call i32 @of_clk_add_hw_provider(ptr noundef %0, ptr noundef nonnull @of_clk_hw_simple_get, ptr noundef %8) #8
  br label %12

12:                                               ; preds = %10, %6, %1
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @of_sama5d2_clk_audio_pll_pmc_setup(ptr noundef %0) #0 section ".init.text" {
  %2 = load ptr, ptr %0, align 4
  %3 = tail call ptr @of_get_parent(ptr noundef %0) #8
  %4 = tail call ptr @syscon_node_to_regmap(ptr noundef %3) #8
  %5 = icmp ugt ptr %4, inttoptr (i32 -4096 to ptr)
  br i1 %5, label %12, label %6

6:                                                ; preds = %1
  %7 = tail call ptr @of_clk_get_parent_name(ptr noundef %0, i32 noundef 0) #8
  %8 = tail call ptr @at91_clk_register_audio_pll_pmc(ptr noundef %4, ptr noundef %2, ptr noundef %7) #9
  %9 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = tail call i32 @of_clk_add_hw_provider(ptr noundef %0, ptr noundef nonnull @of_clk_hw_simple_get, ptr noundef %8) #8
  br label %12

12:                                               ; preds = %10, %6, %1
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @of_sama5d2_clk_generated_setup(ptr noundef %0) #0 section ".init.text" {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 4
  %4 = alloca [6 x ptr], align 4
  %5 = alloca %struct.clk_range, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  store i32 0, ptr %2, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store ptr null, ptr %3, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i32 24, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #8
  store i64 0, ptr %5, align 8
  %6 = tail call i32 @of_clk_get_parent_count(ptr noundef %0) #8
  %7 = add i32 %6, -7
  %8 = icmp ult i32 %7, -6
  br i1 %8, label %67, label %9

9:                                                ; preds = %1
  %10 = call i32 @of_clk_parent_fill(ptr noundef %0, ptr noundef nonnull %4, i32 noundef %6) #8
  %11 = call ptr @of_get_next_child(ptr noundef %0, ptr noundef null) #8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %67, label %13

13:                                               ; preds = %13, %9
  %14 = phi i32 [ %16, %13 ], [ 0, %9 ]
  %15 = phi ptr [ %17, %13 ], [ %11, %9 ]
  %16 = add i32 %14, 1
  %17 = call ptr @of_get_next_child(ptr noundef %0, ptr noundef nonnull %15) #8
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %13

19:                                               ; preds = %13
  %20 = icmp eq i32 %16, 0
  %21 = icmp sgt i32 %16, 64
  %22 = or i1 %20, %21
  br i1 %22, label %67, label %23

23:                                               ; preds = %19
  %24 = call ptr @of_get_parent(ptr noundef %0) #8
  %25 = call ptr @syscon_node_to_regmap(ptr noundef %24) #8
  %26 = icmp ugt ptr %25, inttoptr (i32 -4096 to ptr)
  br i1 %26, label %67, label %27

27:                                               ; preds = %23
  %28 = call ptr @of_get_next_child(ptr noundef %0, ptr noundef null) #8
  %29 = icmp eq ptr %28, null
  br i1 %29, label %67, label %30

30:                                               ; preds = %27
  %31 = trunc i32 %6 to i8
  br label %32

32:                                               ; preds = %64, %30
  %33 = phi ptr [ %28, %30 ], [ %65, %64 ]
  %34 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %33, ptr noundef nonnull @.str, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #8
  %35 = icmp sgt i32 %34, -1
  br i1 %35, label %36, label %64

36:                                               ; preds = %32
  %37 = load i32, ptr %2, align 4
  %38 = add i32 %37, -64
  %39 = icmp ult i32 %38, -62
  br i1 %39, label %64, label %40

40:                                               ; preds = %36
  %41 = call i32 @of_property_read_string(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef nonnull %3) #8
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %40
  %44 = load ptr, ptr %33, align 4
  store ptr %44, ptr %3, align 4
  br label %45

45:                                               ; preds = %43, %40
  %46 = call i32 @of_at91_get_clk_range(ptr noundef nonnull %33, ptr noundef nonnull @.str.2, ptr noundef nonnull %5) #8
  %47 = call i32 @of_device_is_compatible(ptr noundef %0, ptr noundef nonnull @.str.3) #8
  %48 = icmp eq i32 %47, 0
  %49 = load i32, ptr %2, align 4
  br i1 %48, label %56, label %50

50:                                               ; preds = %45
  %51 = add i32 %49, -54
  %52 = icmp ult i32 %51, 6
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = getelementptr inbounds [6 x i32], ptr @switch.table.of_sama5d2_clk_generated_setup, i32 0, i32 %51
  %55 = load i32, ptr %54, align 4
  br label %56

56:                                               ; preds = %53, %50, %45
  %57 = phi i32 [ -2147483648, %50 ], [ -2147483648, %45 ], [ %55, %53 ]
  %58 = load ptr, ptr %3, align 4
  %59 = trunc i32 %49 to i8
  %60 = call ptr @at91_clk_register_generated(ptr noundef %25, ptr noundef nonnull @pmc_pcr_lock, ptr noundef nonnull @dt_pcr_layout, ptr noundef %58, ptr noundef nonnull %4, ptr noundef null, i8 noundef zeroext %31, i8 noundef zeroext %59, ptr noundef nonnull %5, i32 noundef %57) #9
  %61 = icmp ugt ptr %60, inttoptr (i32 -4096 to ptr)
  br i1 %61, label %64, label %62

62:                                               ; preds = %56
  %63 = call i32 @of_clk_add_hw_provider(ptr noundef nonnull %33, ptr noundef nonnull @of_clk_hw_simple_get, ptr noundef %60) #8
  br label %64

64:                                               ; preds = %62, %56, %36, %32
  %65 = call ptr @of_get_next_child(ptr noundef %0, ptr noundef nonnull %33) #8
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %32

67:                                               ; preds = %64, %27, %23, %19, %9, %1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @of_sama5d4_clk_h32mx_setup(ptr noundef %0) #0 section ".init.text" {
  %2 = load ptr, ptr %0, align 4
  %3 = tail call ptr @of_get_parent(ptr noundef %0) #8
  %4 = tail call ptr @syscon_node_to_regmap(ptr noundef %3) #8
  %5 = icmp ugt ptr %4, inttoptr (i32 -4096 to ptr)
  br i1 %5, label %12, label %6

6:                                                ; preds = %1
  %7 = tail call ptr @of_clk_get_parent_name(ptr noundef %0, i32 noundef 0) #8
  %8 = tail call ptr @at91_clk_register_h32mx(ptr noundef %4, ptr noundef %2, ptr noundef %7) #9
  %9 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = tail call i32 @of_clk_add_hw_provider(ptr noundef %0, ptr noundef nonnull @of_clk_hw_simple_get, ptr noundef %8) #8
  br label %12

12:                                               ; preds = %10, %6, %1
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @of_sama5d2_clk_i2s_mux_setup(ptr noundef %0) #0 section ".init.text" {
  %2 = alloca i8, align 1
  %3 = alloca [2 x ptr], align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #8
  store i8 0, ptr %2, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #8
  store i64 0, ptr %3, align 8, !annotation !8
  %4 = tail call ptr @syscon_regmap_lookup_by_compatible(ptr noundef nonnull @.str.4) #8
  %5 = icmp ugt ptr %4, inttoptr (i32 -4096 to ptr)
  br i1 %5, label %29, label %6

6:                                                ; preds = %1
  %7 = tail call ptr @of_get_next_child(ptr noundef %0, ptr noundef null) #8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %29, label %9

9:                                                ; preds = %26, %6
  %10 = phi ptr [ %27, %26 ], [ %7, %6 ]
  %11 = call i32 @of_property_read_variable_u8_array(ptr noundef nonnull %10, ptr noundef nonnull @.str, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #8
  %12 = icmp slt i32 %11, 0
  %13 = load i8, ptr %2, align 1
  %14 = icmp ugt i8 %13, 2
  %15 = select i1 %12, i1 true, i1 %14
  br i1 %15, label %26, label %16

16:                                               ; preds = %9
  %17 = call i32 @of_clk_parent_fill(ptr noundef nonnull %10, ptr noundef nonnull %3, i32 noundef 2) #8
  %18 = icmp eq i32 %17, 2
  br i1 %18, label %19, label %26

19:                                               ; preds = %16
  %20 = load ptr, ptr %10, align 4
  %21 = load i8, ptr %2, align 1
  %22 = call ptr @at91_clk_i2s_mux_register(ptr noundef %4, ptr noundef %20, ptr noundef nonnull %3, i32 noundef 2, i8 noundef zeroext %21) #9
  %23 = icmp ugt ptr %22, inttoptr (i32 -4096 to ptr)
  br i1 %23, label %26, label %24

24:                                               ; preds = %19
  %25 = call i32 @of_clk_add_hw_provider(ptr noundef nonnull %10, ptr noundef nonnull @of_clk_hw_simple_get, ptr noundef %22) #8
  br label %26

26:                                               ; preds = %24, %19, %16, %9
  %27 = call ptr @of_get_next_child(ptr noundef %0, ptr noundef nonnull %10) #8
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %9

29:                                               ; preds = %26, %6, %1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #8
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @of_at91rm9200_clk_main_osc_setup(ptr noundef %0) #0 section ".init.text" {
  %2 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  %3 = load ptr, ptr %0, align 4
  store ptr %3, ptr %2, align 4
  %4 = call i32 @of_property_read_string(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef nonnull %2) #8
  %5 = call ptr @of_find_property(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef null) #8
  %6 = call ptr @of_clk_get_parent_name(ptr noundef %0, i32 noundef 0) #8
  %7 = call ptr @of_get_parent(ptr noundef %0) #8
  %8 = call ptr @syscon_node_to_regmap(ptr noundef %7) #8
  %9 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %9, label %17, label %10

10:                                               ; preds = %1
  %11 = icmp ne ptr %5, null
  %12 = load ptr, ptr %2, align 4
  %13 = call ptr @at91_clk_register_main_osc(ptr noundef %8, ptr noundef %12, ptr noundef %6, i1 noundef zeroext %11) #9
  %14 = icmp ugt ptr %13, inttoptr (i32 -4096 to ptr)
  br i1 %14, label %17, label %15

15:                                               ; preds = %10
  %16 = call i32 @of_clk_add_hw_provider(ptr noundef %0, ptr noundef nonnull @of_clk_hw_simple_get, ptr noundef %13) #8
  br label %17

17:                                               ; preds = %15, %10, %1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @of_at91sam9x5_clk_main_rc_osc_setup(ptr noundef %0) #0 section ".init.text" {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  store i32 0, ptr %2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 0, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  %5 = load ptr, ptr %0, align 4
  store ptr %5, ptr %4, align 4
  %6 = call i32 @of_property_read_string(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef nonnull %4) #8
  %7 = call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef nonnull @.str.6, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #8
  %8 = call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef nonnull @.str.7, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #8
  %9 = call ptr @of_get_parent(ptr noundef %0) #8
  %10 = call ptr @syscon_node_to_regmap(ptr noundef %9) #8
  %11 = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  br i1 %11, label %20, label %12

12:                                               ; preds = %1
  %13 = load ptr, ptr %4, align 4
  %14 = load i32, ptr %2, align 4
  %15 = load i32, ptr %3, align 4
  %16 = call ptr @at91_clk_register_main_rc_osc(ptr noundef %10, ptr noundef %13, i32 noundef %14, i32 noundef %15) #9
  %17 = icmp ugt ptr %16, inttoptr (i32 -4096 to ptr)
  br i1 %17, label %20, label %18

18:                                               ; preds = %12
  %19 = call i32 @of_clk_add_hw_provider(ptr noundef %0, ptr noundef nonnull @of_clk_hw_simple_get, ptr noundef %16) #8
  br label %20

20:                                               ; preds = %18, %12, %1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @of_at91rm9200_clk_main_setup(ptr noundef %0) #0 section ".init.text" {
  %2 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  %3 = load ptr, ptr %0, align 4
  store ptr %3, ptr %2, align 4
  %4 = tail call ptr @of_clk_get_parent_name(ptr noundef %0, i32 noundef 0) #8
  %5 = call i32 @of_property_read_string(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef nonnull %2) #8
  %6 = call ptr @of_get_parent(ptr noundef %0) #8
  %7 = call ptr @syscon_node_to_regmap(ptr noundef %6) #8
  %8 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %8, label %15, label %9

9:                                                ; preds = %1
  %10 = load ptr, ptr %2, align 4
  %11 = call ptr @at91_clk_register_rm9200_main(ptr noundef %7, ptr noundef %10, ptr noundef %4) #9
  %12 = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = call i32 @of_clk_add_hw_provider(ptr noundef %0, ptr noundef nonnull @of_clk_hw_simple_get, ptr noundef %11) #8
  br label %15

15:                                               ; preds = %13, %9, %1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @of_at91sam9x5_clk_main_setup(ptr noundef %0) #0 section ".init.text" {
  %2 = alloca [2 x ptr], align 8
  %3 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #8
  store i64 0, ptr %2, align 8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  %4 = load ptr, ptr %0, align 4
  store ptr %4, ptr %3, align 4
  %5 = tail call i32 @of_clk_get_parent_count(ptr noundef %0) #8
  %6 = add i32 %5, -3
  %7 = icmp ult i32 %6, -2
  br i1 %7, label %20, label %8

8:                                                ; preds = %1
  %9 = call i32 @of_clk_parent_fill(ptr noundef %0, ptr noundef nonnull %2, i32 noundef %5) #8
  %10 = call ptr @of_get_parent(ptr noundef %0) #8
  %11 = call ptr @syscon_node_to_regmap(ptr noundef %10) #8
  %12 = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  br i1 %12, label %20, label %13

13:                                               ; preds = %8
  %14 = call i32 @of_property_read_string(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef nonnull %3) #8
  %15 = load ptr, ptr %3, align 4
  %16 = call ptr @at91_clk_register_sam9x5_main(ptr noundef %11, ptr noundef %15, ptr noundef nonnull %2, i32 noundef %5) #9
  %17 = icmp ugt ptr %16, inttoptr (i32 -4096 to ptr)
  br i1 %17, label %20, label %18

18:                                               ; preds = %13
  %19 = call i32 @of_clk_add_hw_provider(ptr noundef %0, ptr noundef nonnull @of_clk_hw_simple_get, ptr noundef %16) #8
  br label %20

20:                                               ; preds = %18, %13, %8, %1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #8
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @of_at91rm9200_clk_master_setup(ptr noundef %0) #0 section ".init.text" {
  tail call fastcc void @of_at91_clk_master_setup(ptr noundef %0, ptr noundef nonnull @at91rm9200_master_layout) #10
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @of_at91sam9x5_clk_master_setup(ptr noundef %0) #0 section ".init.text" {
  tail call fastcc void @of_at91_clk_master_setup(ptr noundef %0, ptr noundef nonnull @at91sam9x5_master_layout) #10
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @of_at91rm9200_clk_periph_setup(ptr noundef %0) #0 section ".init.text" {
  tail call fastcc void @of_at91_clk_periph_setup(ptr noundef %0, i8 noundef zeroext 0) #10
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @of_at91sam9x5_clk_periph_setup(ptr noundef %0) #0 section ".init.text" {
  tail call fastcc void @of_at91_clk_periph_setup(ptr noundef %0, i8 noundef zeroext 1) #10
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @of_at91rm9200_clk_pll_setup(ptr noundef %0) #0 section ".init.text" {
  tail call fastcc void @of_at91_clk_pll_setup(ptr noundef %0, ptr noundef nonnull @at91rm9200_pll_layout) #10
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @of_at91sam9g45_clk_pll_setup(ptr noundef %0) #0 section ".init.text" {
  tail call fastcc void @of_at91_clk_pll_setup(ptr noundef %0, ptr noundef nonnull @at91sam9g45_pll_layout) #10
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @of_at91sam9g20_clk_pllb_setup(ptr noundef %0) #0 section ".init.text" {
  tail call fastcc void @of_at91_clk_pll_setup(ptr noundef %0, ptr noundef nonnull @at91sam9g20_pllb_layout) #10
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @of_sama5d3_clk_pll_setup(ptr noundef %0) #0 section ".init.text" {
  tail call fastcc void @of_at91_clk_pll_setup(ptr noundef %0, ptr noundef nonnull @sama5d3_pll_layout) #10
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @of_at91sam9x5_clk_plldiv_setup(ptr noundef %0) #0 section ".init.text" {
  %2 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  %3 = load ptr, ptr %0, align 4
  store ptr %3, ptr %2, align 4
  %4 = tail call ptr @of_clk_get_parent_name(ptr noundef %0, i32 noundef 0) #8
  %5 = call i32 @of_property_read_string(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef nonnull %2) #8
  %6 = call ptr @of_get_parent(ptr noundef %0) #8
  %7 = call ptr @syscon_node_to_regmap(ptr noundef %6) #8
  %8 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %8, label %15, label %9

9:                                                ; preds = %1
  %10 = load ptr, ptr %2, align 4
  %11 = call ptr @at91_clk_register_plldiv(ptr noundef %7, ptr noundef %10, ptr noundef %4) #9
  %12 = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = call i32 @of_clk_add_hw_provider(ptr noundef %0, ptr noundef nonnull @of_clk_hw_simple_get, ptr noundef %11) #8
  br label %15

15:                                               ; preds = %13, %9, %1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @of_at91rm9200_clk_prog_setup(ptr noundef %0) #0 section ".init.text" {
  tail call fastcc void @of_at91_clk_prog_setup(ptr noundef %0, ptr noundef nonnull @at91rm9200_programmable_layout) #10
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @of_at91sam9g45_clk_prog_setup(ptr noundef %0) #0 section ".init.text" {
  tail call fastcc void @of_at91_clk_prog_setup(ptr noundef %0, ptr noundef nonnull @at91sam9g45_programmable_layout) #10
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @of_at91sam9x5_clk_prog_setup(ptr noundef %0) #0 section ".init.text" {
  tail call fastcc void @of_at91_clk_prog_setup(ptr noundef %0, ptr noundef nonnull @at91sam9x5_programmable_layout) #10
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @of_at91sam9260_clk_slow_setup(ptr noundef %0) #0 section ".init.text" {
  %2 = alloca [2 x ptr], align 8
  %3 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #8
  store i64 0, ptr %2, align 8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  %4 = load ptr, ptr %0, align 4
  store ptr %4, ptr %3, align 4
  %5 = tail call i32 @of_clk_get_parent_count(ptr noundef %0) #8
  %6 = icmp eq i32 %5, 2
  br i1 %6, label %7, label %19

7:                                                ; preds = %1
  %8 = call i32 @of_clk_parent_fill(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 2) #8
  %9 = call ptr @of_get_parent(ptr noundef %0) #8
  %10 = call ptr @syscon_node_to_regmap(ptr noundef %9) #8
  %11 = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  br i1 %11, label %19, label %12

12:                                               ; preds = %7
  %13 = call i32 @of_property_read_string(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef nonnull %3) #8
  %14 = load ptr, ptr %3, align 4
  %15 = call ptr @at91_clk_register_sam9260_slow(ptr noundef %10, ptr noundef %14, ptr noundef nonnull %2, i32 noundef 2) #9
  %16 = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  br i1 %16, label %19, label %17

17:                                               ; preds = %12
  %18 = call i32 @of_clk_add_hw_provider(ptr noundef %0, ptr noundef nonnull @of_clk_hw_simple_get, ptr noundef %15) #8
  br label %19

19:                                               ; preds = %17, %12, %7, %1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #8
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @of_at91sam9x5_clk_smd_setup(ptr noundef %0) #0 section ".init.text" {
  %2 = alloca [2 x ptr], align 8
  %3 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #8
  store i64 0, ptr %2, align 8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  %4 = load ptr, ptr %0, align 4
  store ptr %4, ptr %3, align 4
  %5 = tail call i32 @of_clk_get_parent_count(ptr noundef %0) #8
  %6 = add i32 %5, -3
  %7 = icmp ult i32 %6, -2
  br i1 %7, label %21, label %8

8:                                                ; preds = %1
  %9 = call i32 @of_clk_parent_fill(ptr noundef %0, ptr noundef nonnull %2, i32 noundef %5) #8
  %10 = call i32 @of_property_read_string(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef nonnull %3) #8
  %11 = call ptr @of_get_parent(ptr noundef %0) #8
  %12 = call ptr @syscon_node_to_regmap(ptr noundef %11) #8
  %13 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %13, label %21, label %14

14:                                               ; preds = %8
  %15 = load ptr, ptr %3, align 4
  %16 = trunc i32 %5 to i8
  %17 = call ptr @at91sam9x5_clk_register_smd(ptr noundef %12, ptr noundef %15, ptr noundef nonnull %2, i8 noundef zeroext %16) #9
  %18 = icmp ugt ptr %17, inttoptr (i32 -4096 to ptr)
  br i1 %18, label %21, label %19

19:                                               ; preds = %14
  %20 = call i32 @of_clk_add_hw_provider(ptr noundef %0, ptr noundef nonnull @of_clk_hw_simple_get, ptr noundef %17) #8
  br label %21

21:                                               ; preds = %19, %14, %8, %1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #8
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @of_at91rm9200_clk_sys_setup(ptr noundef %0) #0 section ".init.text" {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  store i32 0, ptr %2, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store ptr null, ptr %3, align 4, !annotation !8
  %4 = tail call ptr @of_get_next_child(ptr noundef %0, ptr noundef null) #8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %6, %1
  %7 = phi i32 [ %9, %6 ], [ 0, %1 ]
  %8 = phi ptr [ %10, %6 ], [ %4, %1 ]
  %9 = add i32 %7, 1
  %10 = tail call ptr @of_get_next_child(ptr noundef %0, ptr noundef nonnull %8) #8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %6

12:                                               ; preds = %6
  %13 = icmp sgt i32 %9, 32
  br i1 %13, label %42, label %14

14:                                               ; preds = %12, %1
  %15 = tail call ptr @of_get_parent(ptr noundef %0) #8
  %16 = tail call ptr @syscon_node_to_regmap(ptr noundef %15) #8
  %17 = icmp ugt ptr %16, inttoptr (i32 -4096 to ptr)
  br i1 %17, label %42, label %18

18:                                               ; preds = %14
  %19 = tail call ptr @of_get_next_child(ptr noundef %0, ptr noundef null) #8
  %20 = icmp eq ptr %19, null
  br i1 %20, label %42, label %21

21:                                               ; preds = %39, %18
  %22 = phi ptr [ %40, %39 ], [ %19, %18 ]
  %23 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %22, ptr noundef nonnull @.str, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #8
  %24 = icmp sgt i32 %23, -1
  br i1 %24, label %25, label %39

25:                                               ; preds = %21
  %26 = call i32 @of_property_read_string(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef nonnull %3) #8
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %25
  %29 = load ptr, ptr %22, align 4
  store ptr %29, ptr %3, align 4
  br label %30

30:                                               ; preds = %28, %25
  %31 = call ptr @of_clk_get_parent_name(ptr noundef nonnull %22, i32 noundef 0) #8
  %32 = load ptr, ptr %3, align 4
  %33 = load i32, ptr %2, align 4
  %34 = trunc i32 %33 to i8
  %35 = call ptr @at91_clk_register_system(ptr noundef %16, ptr noundef %32, ptr noundef %31, i8 noundef zeroext %34) #9
  %36 = icmp ugt ptr %35, inttoptr (i32 -4096 to ptr)
  br i1 %36, label %39, label %37

37:                                               ; preds = %30
  %38 = call i32 @of_clk_add_hw_provider(ptr noundef nonnull %22, ptr noundef nonnull @of_clk_hw_simple_get, ptr noundef %35) #8
  br label %39

39:                                               ; preds = %37, %30, %21
  %40 = call ptr @of_get_next_child(ptr noundef %0, ptr noundef nonnull %22) #8
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %21

42:                                               ; preds = %39, %18, %14, %12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @of_at91sam9x5_clk_usb_setup(ptr noundef %0) #0 section ".init.text" {
  %2 = alloca [2 x ptr], align 8
  %3 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #8
  store i64 0, ptr %2, align 8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  %4 = load ptr, ptr %0, align 4
  store ptr %4, ptr %3, align 4
  %5 = tail call i32 @of_clk_get_parent_count(ptr noundef %0) #8
  %6 = add i32 %5, -3
  %7 = icmp ult i32 %6, -2
  br i1 %7, label %21, label %8

8:                                                ; preds = %1
  %9 = call i32 @of_clk_parent_fill(ptr noundef %0, ptr noundef nonnull %2, i32 noundef %5) #8
  %10 = call i32 @of_property_read_string(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef nonnull %3) #8
  %11 = call ptr @of_get_parent(ptr noundef %0) #8
  %12 = call ptr @syscon_node_to_regmap(ptr noundef %11) #8
  %13 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %13, label %21, label %14

14:                                               ; preds = %8
  %15 = load ptr, ptr %3, align 4
  %16 = trunc i32 %5 to i8
  %17 = call ptr @at91sam9x5_clk_register_usb(ptr noundef %12, ptr noundef %15, ptr noundef nonnull %2, i8 noundef zeroext %16) #9
  %18 = icmp ugt ptr %17, inttoptr (i32 -4096 to ptr)
  br i1 %18, label %21, label %19

19:                                               ; preds = %14
  %20 = call i32 @of_clk_add_hw_provider(ptr noundef %0, ptr noundef nonnull @of_clk_hw_simple_get, ptr noundef %17) #8
  br label %21

21:                                               ; preds = %19, %14, %8, %1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #8
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @of_at91sam9n12_clk_usb_setup(ptr noundef %0) #0 section ".init.text" {
  %2 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  %3 = load ptr, ptr %0, align 4
  store ptr %3, ptr %2, align 4
  %4 = tail call ptr @of_clk_get_parent_name(ptr noundef %0, i32 noundef 0) #8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %17, label %6

6:                                                ; preds = %1
  %7 = call i32 @of_property_read_string(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef nonnull %2) #8
  %8 = call ptr @of_get_parent(ptr noundef %0) #8
  %9 = call ptr @syscon_node_to_regmap(ptr noundef %8) #8
  %10 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %10, label %17, label %11

11:                                               ; preds = %6
  %12 = load ptr, ptr %2, align 4
  %13 = call ptr @at91sam9n12_clk_register_usb(ptr noundef %9, ptr noundef %12, ptr noundef nonnull %4) #9
  %14 = icmp ugt ptr %13, inttoptr (i32 -4096 to ptr)
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  %16 = call i32 @of_clk_add_hw_provider(ptr noundef %0, ptr noundef nonnull @of_clk_hw_simple_get, ptr noundef %13) #8
  br label %17

17:                                               ; preds = %15, %11, %6, %1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @of_at91rm9200_clk_usb_setup(ptr noundef %0) #0 section ".init.text" {
  %2 = alloca ptr, align 4
  %3 = alloca [4 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  %4 = load ptr, ptr %0, align 4
  store ptr %4, ptr %2, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %3, i8 0, i32 16, i1 false)
  %5 = tail call ptr @of_clk_get_parent_name(ptr noundef %0, i32 noundef 0) #8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %22, label %7

7:                                                ; preds = %1
  %8 = call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef nonnull %3, i32 noundef 4, i32 noundef 0) #8
  %9 = load i32, ptr %3, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %22, label %11

11:                                               ; preds = %7
  %12 = call i32 @of_property_read_string(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef nonnull %2) #8
  %13 = call ptr @of_get_parent(ptr noundef %0) #8
  %14 = call ptr @syscon_node_to_regmap(ptr noundef %13) #8
  %15 = icmp ugt ptr %14, inttoptr (i32 -4096 to ptr)
  br i1 %15, label %22, label %16

16:                                               ; preds = %11
  %17 = load ptr, ptr %2, align 4
  %18 = call ptr @at91rm9200_clk_register_usb(ptr noundef %14, ptr noundef %17, ptr noundef nonnull %5, ptr noundef nonnull %3) #9
  %19 = icmp ugt ptr %18, inttoptr (i32 -4096 to ptr)
  br i1 %19, label %22, label %20

20:                                               ; preds = %16
  %21 = call i32 @of_clk_add_hw_provider(ptr noundef %0, ptr noundef nonnull @of_clk_hw_simple_get, ptr noundef %18) #8
  br label %22

22:                                               ; preds = %20, %16, %11, %7, %1
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @of_at91sam9x5_clk_utmi_setup(ptr noundef %0) #0 section ".init.text" {
  %2 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  %3 = load ptr, ptr %0, align 4
  store ptr %3, ptr %2, align 4
  %4 = tail call ptr @of_clk_get_parent_name(ptr noundef %0, i32 noundef 0) #8
  %5 = call i32 @of_property_read_string(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef nonnull %2) #8
  %6 = call ptr @of_get_parent(ptr noundef %0) #8
  %7 = call ptr @syscon_node_to_regmap(ptr noundef %6) #8
  %8 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %8, label %23, label %9

9:                                                ; preds = %1
  %10 = call ptr @syscon_regmap_lookup_by_compatible(ptr noundef nonnull @.str.14) #8
  %11 = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  br i1 %11, label %12, label %16

12:                                               ; preds = %9
  %13 = call ptr @syscon_regmap_lookup_by_compatible(ptr noundef nonnull @.str.4) #8
  %14 = icmp ugt ptr %13, inttoptr (i32 -4096 to ptr)
  %15 = select i1 %14, ptr null, ptr %13
  br label %16

16:                                               ; preds = %12, %9
  %17 = phi ptr [ %10, %9 ], [ %15, %12 ]
  %18 = load ptr, ptr %2, align 4
  %19 = call ptr @at91_clk_register_utmi(ptr noundef %7, ptr noundef %17, ptr noundef %18, ptr noundef %4) #9
  %20 = icmp ugt ptr %19, inttoptr (i32 -4096 to ptr)
  br i1 %20, label %23, label %21

21:                                               ; preds = %16
  %22 = call i32 @of_clk_add_hw_provider(ptr noundef %0, ptr noundef nonnull @of_clk_hw_simple_get, ptr noundef %19) #8
  br label %23

23:                                               ; preds = %21, %16, %1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_node_to_regmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_parent(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_parent_name(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local ptr @at91_clk_register_audio_pll_frac(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_hw_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_hw_simple_get(ptr noundef, ptr noundef) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local ptr @at91_clk_register_audio_pll_pad(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local ptr @at91_clk_register_audio_pll_pmc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3 section ".init.text"

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_get_parent_count(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_parent_fill(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_at91_get_clk_range(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local ptr @at91_clk_register_generated(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #3 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local ptr @at91_clk_register_h32mx(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_compatible(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local ptr @at91_clk_i2s_mux_register(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u8_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local ptr @at91_clk_register_main_osc(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local ptr @at91_clk_register_main_rc_osc(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local ptr @at91_clk_register_rm9200_main(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local ptr @at91_clk_register_sam9x5_main(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3 section ".init.text"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @of_at91_clk_master_setup(ptr noundef %0, ptr noundef %1) unnamed_addr #0 section ".init.text" {
  %3 = alloca [4 x ptr], align 4
  %4 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %3, i8 0, i32 16, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  %5 = load ptr, ptr %0, align 4
  store ptr %5, ptr %4, align 4
  %6 = tail call i32 @of_clk_get_parent_count(ptr noundef %0) #8
  %7 = add i32 %6, -5
  %8 = icmp ult i32 %7, -4
  br i1 %8, label %28, label %9

9:                                                ; preds = %2
  %10 = call i32 @of_clk_parent_fill(ptr noundef %0, ptr noundef nonnull %3, i32 noundef %6) #8
  %11 = call i32 @of_property_read_string(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef nonnull %4) #8
  %12 = call fastcc ptr @of_at91_clk_master_get_characteristics(ptr noundef %0) #10
  %13 = icmp eq ptr %12, null
  br i1 %13, label %28, label %14

14:                                               ; preds = %9
  %15 = call ptr @of_get_parent(ptr noundef %0) #8
  %16 = call ptr @syscon_node_to_regmap(ptr noundef %15) #8
  %17 = icmp ugt ptr %16, inttoptr (i32 -4096 to ptr)
  br i1 %17, label %28, label %18

18:                                               ; preds = %14
  %19 = call ptr @at91_clk_register_master_pres(ptr noundef %16, ptr noundef nonnull @.str.8, i32 noundef %6, ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull %12, ptr noundef nonnull @mck_lock, i32 noundef 1, i32 noundef -2147483648) #9
  %20 = icmp ugt ptr %19, inttoptr (i32 -4096 to ptr)
  br i1 %20, label %27, label %21

21:                                               ; preds = %18
  %22 = load ptr, ptr %4, align 4
  %23 = call ptr @at91_clk_register_master_div(ptr noundef %16, ptr noundef %22, ptr noundef nonnull @.str.8, ptr noundef %1, ptr noundef nonnull %12, ptr noundef nonnull @mck_lock, i32 noundef 1, i32 noundef 0) #9
  %24 = icmp ugt ptr %23, inttoptr (i32 -4096 to ptr)
  br i1 %24, label %27, label %25

25:                                               ; preds = %21
  %26 = call i32 @of_clk_add_hw_provider(ptr noundef %0, ptr noundef nonnull @of_clk_hw_simple_get, ptr noundef %23) #8
  br label %28

27:                                               ; preds = %21, %18
  call void @kfree(ptr noundef nonnull %12) #8
  br label %28

28:                                               ; preds = %27, %25, %14, %9, %2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #8
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc ptr @of_at91_clk_master_get_characteristics(ptr noundef %0) unnamed_addr #0 section ".init.text" {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 32) #11
  %4 = icmp eq ptr %3, null
  br i1 %4, label %16, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @of_at91_get_clk_range(ptr noundef %0, ptr noundef nonnull @.str.2, ptr noundef nonnull %3) #8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %15

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.clk_master_characteristics, ptr %3, i32 0, i32 1
  %10 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef %9, i32 noundef 4, i32 noundef 0) #8
  %11 = tail call ptr @of_find_property(ptr noundef %0, ptr noundef nonnull @.str.10, ptr noundef null) #8
  %12 = icmp ne ptr %11, null
  %13 = zext i1 %12 to i8
  %14 = getelementptr inbounds %struct.clk_master_characteristics, ptr %3, i32 0, i32 2
  store i8 %13, ptr %14, align 4
  br label %16

15:                                               ; preds = %5
  tail call void @kfree(ptr noundef nonnull %3) #8
  br label %16

16:                                               ; preds = %15, %8, %1
  %17 = phi ptr [ null, %15 ], [ %3, %8 ], [ null, %1 ]
  ret ptr %17
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local ptr @at91_clk_register_master_pres(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local ptr @at91_clk_register_master_div(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @of_at91_clk_periph_setup(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #0 section ".init.text" {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 4
  %5 = alloca %struct.clk_range, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 0, ptr %3, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  store ptr null, ptr %4, align 4, !annotation !8
  %6 = tail call ptr @of_clk_get_parent_name(ptr noundef %0, i32 noundef 0) #8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %60, label %8

8:                                                ; preds = %2
  %9 = tail call ptr @of_get_next_child(ptr noundef %0, ptr noundef null) #8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %60, label %11

11:                                               ; preds = %11, %8
  %12 = phi i32 [ %14, %11 ], [ 0, %8 ]
  %13 = phi ptr [ %15, %11 ], [ %9, %8 ]
  %14 = add i32 %12, 1
  %15 = tail call ptr @of_get_next_child(ptr noundef %0, ptr noundef nonnull %13) #8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %11

17:                                               ; preds = %11
  %18 = icmp eq i32 %14, 0
  %19 = icmp sgt i32 %14, 64
  %20 = or i1 %18, %19
  br i1 %20, label %60, label %21

21:                                               ; preds = %17
  %22 = tail call ptr @of_get_parent(ptr noundef %0) #8
  %23 = tail call ptr @syscon_node_to_regmap(ptr noundef %22) #8
  %24 = icmp ugt ptr %23, inttoptr (i32 -4096 to ptr)
  br i1 %24, label %60, label %25

25:                                               ; preds = %21
  %26 = tail call ptr @of_get_next_child(ptr noundef %0, ptr noundef null) #8
  %27 = icmp eq ptr %26, null
  br i1 %27, label %60, label %28

28:                                               ; preds = %25
  %29 = icmp eq i8 %1, 0
  br label %30

30:                                               ; preds = %57, %28
  %31 = phi ptr [ %26, %28 ], [ %58, %57 ]
  %32 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %31, ptr noundef nonnull @.str, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #8
  %33 = icmp slt i32 %32, 0
  %34 = load i32, ptr %3, align 4
  %35 = icmp ugt i32 %34, 63
  %36 = select i1 %33, i1 true, i1 %35
  br i1 %36, label %57, label %37

37:                                               ; preds = %30
  %38 = call i32 @of_property_read_string(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef nonnull %4) #8
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %37
  %41 = load ptr, ptr %31, align 4
  store ptr %41, ptr %4, align 4
  br label %42

42:                                               ; preds = %40, %37
  br i1 %29, label %43, label %47

43:                                               ; preds = %42
  %44 = load ptr, ptr %4, align 4
  %45 = load i32, ptr %3, align 4
  %46 = call ptr @at91_clk_register_peripheral(ptr noundef %23, ptr noundef %44, ptr noundef nonnull %6, i32 noundef %45) #9
  br label %52

47:                                               ; preds = %42
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #8
  store i64 0, ptr %5, align 8
  %48 = call i32 @of_at91_get_clk_range(ptr noundef nonnull %31, ptr noundef nonnull @.str.2, ptr noundef nonnull %5) #8
  %49 = load ptr, ptr %4, align 4
  %50 = load i32, ptr %3, align 4
  %51 = call ptr @at91_clk_register_sam9x5_peripheral(ptr noundef %23, ptr noundef nonnull @pmc_pcr_lock, ptr noundef nonnull @dt_pcr_layout, ptr noundef %49, ptr noundef nonnull %6, i32 noundef %50, ptr noundef nonnull %5, i32 noundef -2147483648) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #8
  br label %52

52:                                               ; preds = %47, %43
  %53 = phi ptr [ %46, %43 ], [ %51, %47 ]
  %54 = icmp ugt ptr %53, inttoptr (i32 -4096 to ptr)
  br i1 %54, label %57, label %55

55:                                               ; preds = %52
  %56 = call i32 @of_clk_add_hw_provider(ptr noundef nonnull %31, ptr noundef nonnull @of_clk_hw_simple_get, ptr noundef %53) #8
  br label %57

57:                                               ; preds = %55, %52, %30
  %58 = call ptr @of_get_next_child(ptr noundef %0, ptr noundef nonnull %31) #8
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %30

60:                                               ; preds = %57, %25, %21, %17, %8, %2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local ptr @at91_clk_register_peripheral(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local ptr @at91_clk_register_sam9x5_peripheral(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3 section ".init.text"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @of_at91_clk_pll_setup(ptr noundef %0, ptr noundef %1) unnamed_addr #0 section ".init.text" {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 0, ptr %3, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  %5 = load ptr, ptr %0, align 4
  store ptr %5, ptr %4, align 4
  %6 = call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #8
  %7 = icmp sgt i32 %6, -1
  br i1 %7, label %8, label %26

8:                                                ; preds = %2
  %9 = call ptr @of_clk_get_parent_name(ptr noundef %0, i32 noundef 0) #8
  %10 = call i32 @of_property_read_string(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef nonnull %4) #8
  %11 = call ptr @of_get_parent(ptr noundef %0) #8
  %12 = call ptr @syscon_node_to_regmap(ptr noundef %11) #8
  %13 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %13, label %26, label %14

14:                                               ; preds = %8
  %15 = call fastcc ptr @of_at91_clk_pll_get_characteristics(ptr noundef %0) #10
  %16 = icmp eq ptr %15, null
  br i1 %16, label %26, label %17

17:                                               ; preds = %14
  %18 = load ptr, ptr %4, align 4
  %19 = load i32, ptr %3, align 4
  %20 = trunc i32 %19 to i8
  %21 = call ptr @at91_clk_register_pll(ptr noundef %12, ptr noundef %18, ptr noundef %9, i8 noundef zeroext %20, ptr noundef %1, ptr noundef nonnull %15) #9
  %22 = icmp ugt ptr %21, inttoptr (i32 -4096 to ptr)
  br i1 %22, label %25, label %23

23:                                               ; preds = %17
  %24 = call i32 @of_clk_add_hw_provider(ptr noundef %0, ptr noundef nonnull @of_clk_hw_simple_get, ptr noundef %21) #8
  br label %26

25:                                               ; preds = %17
  call void @kfree(ptr noundef nonnull %15) #8
  br label %26

26:                                               ; preds = %25, %23, %14, %8, %2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc ptr @of_at91_clk_pll_get_characteristics(ptr noundef %0) unnamed_addr #0 section ".init.text" {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.clk_range, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  store i32 0, ptr %2, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 0, ptr %3, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #8
  store i64 0, ptr %4, align 8, !annotation !8
  %5 = call i32 @of_at91_get_clk_range(ptr noundef %0, ptr noundef nonnull @.str.11, ptr noundef nonnull %4) #8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %97

7:                                                ; preds = %1
  %8 = call i32 @of_property_read_variable_u32_array(ptr noundef %0, ptr noundef nonnull @.str.12, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #8
  %9 = icmp sgt i32 %8, -1
  br i1 %9, label %10, label %97

10:                                               ; preds = %7
  %11 = load i32, ptr %3, align 4
  %12 = add i32 %11, -5
  %13 = icmp ult i32 %12, -3
  br i1 %13, label %97, label %14

14:                                               ; preds = %10
  %15 = call ptr @of_get_property(ptr noundef %0, ptr noundef nonnull @.str.13, ptr noundef nonnull %2) #8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %97, label %17

17:                                               ; preds = %14
  %18 = load i32, ptr %2, align 4
  %19 = load i32, ptr %3, align 4
  %20 = shl i32 %19, 2
  %21 = udiv i32 %18, %20
  %22 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %23 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %22, i32 noundef 3520, i32 noundef 28) #11
  %24 = icmp eq ptr %23, null
  br i1 %24, label %97, label %25

25:                                               ; preds = %17
  %26 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %21, i32 8) #8
  %27 = extractvalue { i32, i1 } %26, 1
  br i1 %27, label %96, label %28, !prof !9

28:                                               ; preds = %25
  %29 = extractvalue { i32, i1 } %26, 0
  %30 = call noalias align 64 ptr @__kmalloc(i32 noundef %29, i32 noundef 3520) #12
  %31 = icmp eq ptr %30, null
  br i1 %31, label %96, label %32

32:                                               ; preds = %28
  %33 = load i32, ptr %3, align 4
  %34 = icmp ugt i32 %33, 2
  br i1 %34, label %35, label %45

35:                                               ; preds = %32
  %36 = call noalias align 64 ptr @__kmalloc(i32 noundef %21, i32 noundef 3520) #12
  %37 = icmp eq ptr %36, null
  br i1 %37, label %93, label %38

38:                                               ; preds = %35
  %39 = load i32, ptr %3, align 4
  %40 = icmp ugt i32 %39, 3
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = shl nuw nsw i32 %21, 1
  %43 = call noalias align 64 ptr @__kmalloc(i32 noundef %42, i32 noundef 3520) #12
  %44 = icmp eq ptr %43, null
  br i1 %44, label %93, label %45

45:                                               ; preds = %41, %38, %32
  %46 = phi ptr [ %36, %41 ], [ %36, %38 ], [ null, %32 ]
  %47 = phi ptr [ %43, %41 ], [ null, %38 ], [ null, %32 ]
  %48 = icmp ugt i32 %20, %18
  br i1 %48, label %87, label %49

49:                                               ; preds = %84, %45
  %50 = phi i32 [ %85, %84 ], [ 0, %45 ]
  %51 = load i32, ptr %3, align 4
  %52 = mul i32 %51, %50
  %53 = call i32 @of_property_read_u32_index(ptr noundef %0, ptr noundef nonnull @.str.13, i32 noundef %52, ptr noundef nonnull %2) #8
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %93

55:                                               ; preds = %49
  %56 = load i32, ptr %2, align 4
  %57 = getelementptr %struct.clk_range, ptr %30, i32 %50
  store i32 %56, ptr %57, align 8
  %58 = add i32 %52, 1
  %59 = call i32 @of_property_read_u32_index(ptr noundef %0, ptr noundef nonnull @.str.13, i32 noundef %58, ptr noundef nonnull %2) #8
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %93

61:                                               ; preds = %55
  %62 = load i32, ptr %2, align 4
  %63 = getelementptr %struct.clk_range, ptr %30, i32 %50, i32 1
  store i32 %62, ptr %63, align 4
  %64 = load i32, ptr %3, align 4
  %65 = icmp eq i32 %64, 2
  br i1 %65, label %84, label %66

66:                                               ; preds = %61
  %67 = add i32 %52, 2
  %68 = call i32 @of_property_read_u32_index(ptr noundef %0, ptr noundef nonnull @.str.13, i32 noundef %67, ptr noundef nonnull %2) #8
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %93

70:                                               ; preds = %66
  %71 = load i32, ptr %2, align 4
  %72 = trunc i32 %71 to i8
  %73 = getelementptr i8, ptr %46, i32 %50
  store i8 %72, ptr %73, align 1
  %74 = load i32, ptr %3, align 4
  %75 = icmp eq i32 %74, 3
  br i1 %75, label %84, label %76

76:                                               ; preds = %70
  %77 = add i32 %52, 3
  %78 = call i32 @of_property_read_u32_index(ptr noundef %0, ptr noundef nonnull @.str.13, i32 noundef %77, ptr noundef nonnull %2) #8
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %93

80:                                               ; preds = %76
  %81 = load i32, ptr %2, align 4
  %82 = trunc i32 %81 to i16
  %83 = getelementptr i16, ptr %47, i32 %50
  store i16 %82, ptr %83, align 2
  br label %84

84:                                               ; preds = %80, %70, %61
  %85 = add nuw nsw i32 %50, 1
  %86 = icmp eq i32 %85, %21
  br i1 %86, label %87, label %49

87:                                               ; preds = %84, %45
  %88 = load i64, ptr %4, align 8
  store i64 %88, ptr %23, align 8
  %89 = getelementptr inbounds %struct.clk_pll_characteristics, ptr %23, i32 0, i32 1
  store i32 %21, ptr %89, align 8
  %90 = getelementptr inbounds %struct.clk_pll_characteristics, ptr %23, i32 0, i32 2
  store ptr %30, ptr %90, align 4
  %91 = getelementptr inbounds %struct.clk_pll_characteristics, ptr %23, i32 0, i32 4
  store ptr %46, ptr %91, align 4
  %92 = getelementptr inbounds %struct.clk_pll_characteristics, ptr %23, i32 0, i32 3
  store ptr %47, ptr %92, align 8
  br label %97

93:                                               ; preds = %76, %66, %55, %49, %41, %35
  %94 = phi ptr [ %36, %41 ], [ null, %35 ], [ %46, %49 ], [ %46, %55 ], [ %46, %66 ], [ %46, %76 ]
  %95 = phi ptr [ null, %41 ], [ null, %35 ], [ %47, %49 ], [ %47, %55 ], [ %47, %66 ], [ %47, %76 ]
  call void @kfree(ptr noundef %95) #8
  call void @kfree(ptr noundef %94) #8
  call void @kfree(ptr noundef nonnull %30) #8
  br label %96

96:                                               ; preds = %93, %28, %25
  call void @kfree(ptr noundef nonnull %23) #8
  br label %97

97:                                               ; preds = %96, %87, %17, %14, %10, %7, %1
  %98 = phi ptr [ null, %96 ], [ %23, %87 ], [ null, %1 ], [ null, %7 ], [ null, %10 ], [ null, %14 ], [ null, %17 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  ret ptr %98
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local ptr @at91_clk_register_pll(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_u32_index(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: cold null_pointer_is_valid
declare dso_local ptr @at91_clk_register_plldiv(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3 section ".init.text"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @of_at91_clk_prog_setup(ptr noundef %0, ptr noundef %1) unnamed_addr #0 section ".init.text" {
  %3 = alloca i32, align 4
  %4 = alloca [5 x ptr], align 4
  %5 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 0, ptr %3, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %4, i8 0, i32 20, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  store ptr null, ptr %5, align 4, !annotation !8
  %6 = tail call i32 @of_clk_get_parent_count(ptr noundef %0) #8
  %7 = add i32 %6, -6
  %8 = icmp ult i32 %7, -5
  br i1 %8, label %54, label %9

9:                                                ; preds = %2
  %10 = call i32 @of_clk_parent_fill(ptr noundef %0, ptr noundef nonnull %4, i32 noundef %6) #8
  %11 = call ptr @of_get_next_child(ptr noundef %0, ptr noundef null) #8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %54, label %13

13:                                               ; preds = %13, %9
  %14 = phi i32 [ %16, %13 ], [ 0, %9 ]
  %15 = phi ptr [ %17, %13 ], [ %11, %9 ]
  %16 = add i32 %14, 1
  %17 = call ptr @of_get_next_child(ptr noundef %0, ptr noundef nonnull %15) #8
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %13

19:                                               ; preds = %13
  %20 = icmp eq i32 %16, 0
  %21 = icmp sgt i32 %16, 8
  %22 = or i1 %20, %21
  br i1 %22, label %54, label %23

23:                                               ; preds = %19
  %24 = call ptr @of_get_parent(ptr noundef %0) #8
  %25 = call ptr @syscon_node_to_regmap(ptr noundef %24) #8
  %26 = icmp ugt ptr %25, inttoptr (i32 -4096 to ptr)
  br i1 %26, label %54, label %27

27:                                               ; preds = %23
  %28 = call ptr @of_get_next_child(ptr noundef %0, ptr noundef null) #8
  %29 = icmp eq ptr %28, null
  br i1 %29, label %54, label %30

30:                                               ; preds = %27
  %31 = trunc i32 %6 to i8
  br label %32

32:                                               ; preds = %51, %30
  %33 = phi ptr [ %28, %30 ], [ %52, %51 ]
  %34 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %33, ptr noundef nonnull @.str, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #8
  %35 = icmp sgt i32 %34, -1
  br i1 %35, label %36, label %51

36:                                               ; preds = %32
  %37 = call i32 @of_property_read_string(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef nonnull %5) #8
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = load ptr, ptr %5, align 4
  br label %43

41:                                               ; preds = %36
  %42 = load ptr, ptr %33, align 4
  store ptr %42, ptr %5, align 4
  br label %43

43:                                               ; preds = %41, %39
  %44 = phi ptr [ %40, %39 ], [ %42, %41 ]
  %45 = load i32, ptr %3, align 4
  %46 = trunc i32 %45 to i8
  %47 = call ptr @at91_clk_register_programmable(ptr noundef %25, ptr noundef %44, ptr noundef nonnull %4, i8 noundef zeroext %31, i8 noundef zeroext %46, ptr noundef %1, ptr noundef null) #9
  %48 = icmp ugt ptr %47, inttoptr (i32 -4096 to ptr)
  br i1 %48, label %51, label %49

49:                                               ; preds = %43
  %50 = call i32 @of_clk_add_hw_provider(ptr noundef nonnull %33, ptr noundef nonnull @of_clk_hw_simple_get, ptr noundef %47) #8
  br label %51

51:                                               ; preds = %49, %43, %32
  %52 = call ptr @of_get_next_child(ptr noundef %0, ptr noundef nonnull %33) #8
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %32

54:                                               ; preds = %51, %27, %23, %19, %9, %2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local ptr @at91_clk_register_programmable(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local ptr @at91_clk_register_sam9260_slow(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local ptr @at91sam9x5_clk_register_smd(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local ptr @at91_clk_register_system(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local ptr @at91sam9x5_clk_register_usb(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local ptr @at91sam9n12_clk_register_usb(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local ptr @at91rm9200_clk_register_usb(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local ptr @at91_clk_register_utmi(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3 section ".init.text"

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }
attributes #10 = { cold }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { nounwind allocsize(0) }

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
!9 = !{!"branch_weights", i32 1, i32 2000}
