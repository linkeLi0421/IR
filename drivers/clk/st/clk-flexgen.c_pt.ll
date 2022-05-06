; ModuleID = '/llk/IR/drivers/clk/st/clk-flexgen.c_pt.bc'
source_filename = "../drivers/clk/st/clk-flexgen.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.clkgen_data = type { i32, i8, ptr, i32 }
%struct.clkgen_clk_out = type { ptr, i32 }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.clk_onecell_data = type { ptr, i32 }
%struct.flexgen = type { %struct.clk_hw, %struct.clk_mux, %struct.clk_gate, %struct.clk_divider, %struct.clk_gate, %struct.clk_divider, %struct.clk_gate, i8 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.clk_mux = type { %struct.clk_hw, ptr, ptr, i32, i8, i8, ptr }
%struct.clk_divider = type { %struct.clk_hw, ptr, i8, i8, i8, ptr, ptr }
%struct.clk_gate = type { %struct.clk_hw, ptr, i8, i8, ptr }

@__of_table_flexgen = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,flexgen\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @st_of_flexgen_setup }, section "__clk_of_table", align 4
@flexgen_of_match = internal constant [13 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,flexgen-audio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @clkgen_audio }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,flexgen-video\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @clkgen_video }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,flexgen-stih407-a0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @clkgen_stih407_a0 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,flexgen-stih410-a0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @clkgen_stih410_a0 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,flexgen-stih407-c0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @clkgen_stih407_c0 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,flexgen-stih410-c0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @clkgen_stih410_c0 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,flexgen-stih418-c0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @clkgen_stih418_c0 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,flexgen-stih407-d0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @clkgen_stih407_d0 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,flexgen-stih410-d0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @clkgen_stih410_d0 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,flexgen-stih407-d2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @clkgen_stih407_d2 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,flexgen-stih418-d2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @clkgen_stih418_d2 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,flexgen-stih407-d3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @clkgen_stih407_d3 }, %struct.of_device_id zeroinitializer], align 4
@.str = private unnamed_addr constant [19 x i8] c"clock-output-names\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"\013%s: Failed to get number of output clocks (%d)\00", align 1
@__func__.st_of_flexgen_setup = private unnamed_addr constant [20 x i8] c"st_of_flexgen_setup\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"drivers/clk/st/clk-flexgen.c\00", align 1
@clkgen_audio = internal constant %struct.clkgen_data { i32 4, i8 0, ptr null, i32 0 }, align 4
@clkgen_video = internal constant %struct.clkgen_data { i32 4, i8 1, ptr null, i32 0 }, align 4
@clkgen_stih407_a0 = internal constant %struct.clkgen_data { i32 0, i8 0, ptr @clkgen_stih407_a0_clk_out, i32 1 }, align 4
@clkgen_stih410_a0 = internal constant %struct.clkgen_data { i32 0, i8 0, ptr @clkgen_stih410_a0_clk_out, i32 2 }, align 4
@clkgen_stih407_c0 = internal constant %struct.clkgen_data { i32 0, i8 0, ptr @clkgen_stih407_c0_clk_out, i32 32 }, align 4
@clkgen_stih410_c0 = internal constant %struct.clkgen_data { i32 0, i8 0, ptr @clkgen_stih410_c0_clk_out, i32 39 }, align 4
@clkgen_stih418_c0 = internal constant %struct.clkgen_data { i32 0, i8 0, ptr @clkgen_stih418_c0_clk_out, i32 42 }, align 4
@clkgen_stih407_d0 = internal constant %struct.clkgen_data { i32 4, i8 0, ptr @clkgen_stih407_d0_clk_out, i32 4 }, align 4
@clkgen_stih410_d0 = internal constant %struct.clkgen_data { i32 4, i8 0, ptr @clkgen_stih410_d0_clk_out, i32 6 }, align 4
@clkgen_stih407_d2 = internal constant %struct.clkgen_data { i32 4, i8 1, ptr @clkgen_stih407_d2_clk_out, i32 16 }, align 4
@clkgen_stih418_d2 = internal constant %struct.clkgen_data { i32 4, i8 1, ptr @clkgen_stih418_d2_clk_out, i32 48 }, align 4
@clkgen_stih407_d3 = internal constant %struct.clkgen_data { i32 0, i8 0, ptr @clkgen_stih407_d3_clk_out, i32 8 }, align 4
@clkgen_stih407_a0_clk_out = internal constant [1 x %struct.clkgen_clk_out] [%struct.clkgen_clk_out { ptr @.str.3, i32 2048 }], align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"clk-ic-lmi0\00", align 1
@clkgen_stih410_a0_clk_out = internal constant [2 x %struct.clkgen_clk_out] [%struct.clkgen_clk_out { ptr @.str.3, i32 2048 }, %struct.clkgen_clk_out { ptr @.str.4, i32 2048 }], align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"clk-ic-lmi1\00", align 1
@clkgen_stih407_c0_clk_out = internal constant [32 x %struct.clkgen_clk_out] [%struct.clkgen_clk_out { ptr @.str.5, i32 0 }, %struct.clkgen_clk_out { ptr @.str.6, i32 0 }, %struct.clkgen_clk_out { ptr @.str.7, i32 0 }, %struct.clkgen_clk_out { ptr @.str.8, i32 0 }, %struct.clkgen_clk_out { ptr @.str.9, i32 0 }, %struct.clkgen_clk_out { ptr @.str.10, i32 0 }, %struct.clkgen_clk_out { ptr @.str.11, i32 0 }, %struct.clkgen_clk_out { ptr @.str.12, i32 0 }, %struct.clkgen_clk_out { ptr @.str.13, i32 2048 }, %struct.clkgen_clk_out { ptr @.str.14, i32 2048 }, %struct.clkgen_clk_out { ptr @.str.15, i32 0 }, %struct.clkgen_clk_out { ptr @.str.16, i32 0 }, %struct.clkgen_clk_out { ptr @.str.17, i32 0 }, %struct.clkgen_clk_out { ptr @.str.18, i32 2048 }, %struct.clkgen_clk_out { ptr @.str.19, i32 0 }, %struct.clkgen_clk_out { ptr @.str.20, i32 0 }, %struct.clkgen_clk_out { ptr @.str.21, i32 0 }, %struct.clkgen_clk_out { ptr @.str.22, i32 0 }, %struct.clkgen_clk_out { ptr @.str.23, i32 0 }, %struct.clkgen_clk_out { ptr @.str.24, i32 0 }, %struct.clkgen_clk_out { ptr @.str.25, i32 0 }, %struct.clkgen_clk_out { ptr @.str.26, i32 0 }, %struct.clkgen_clk_out { ptr @.str.27, i32 2048 }, %struct.clkgen_clk_out { ptr @.str.28, i32 0 }, %struct.clkgen_clk_out { ptr @.str.29, i32 2048 }, %struct.clkgen_clk_out { ptr @.str.30, i32 0 }, %struct.clkgen_clk_out { ptr @.str.31, i32 0 }, %struct.clkgen_clk_out { ptr @.str.32, i32 0 }, %struct.clkgen_clk_out { ptr @.str.33, i32 0 }, %struct.clkgen_clk_out { ptr @.str.34, i32 0 }, %struct.clkgen_clk_out { ptr @.str.35, i32 0 }, %struct.clkgen_clk_out { ptr @.str.36, i32 0 }], align 4
@.str.5 = private unnamed_addr constant [12 x i8] c"clk-icn-gpu\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"clk-fdma\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"clk-nand\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"clk-hva\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"clk-proc-stfe\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"clk-proc-tp\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"clk-rx-icn-dmu\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"clk-rx-icn-hva\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"clk-icn-cpu\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"clk-tx-icn-dmu\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"clk-mmc-0\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"clk-mmc-1\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"clk-jpegdec\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"clk-ext2fa9\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"clk-ic-bdisp-0\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"clk-ic-bdisp-1\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"clk-pp-dmu\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"clk-vid-dmu\00", align 1
@.str.23 = private unnamed_addr constant [12 x i8] c"clk-dss-lpc\00", align 1
@.str.24 = private unnamed_addr constant [16 x i8] c"clk-st231-aud-0\00", align 1
@.str.25 = private unnamed_addr constant [15 x i8] c"clk-st231-gp-1\00", align 1
@.str.26 = private unnamed_addr constant [14 x i8] c"clk-st231-dmu\00", align 1
@.str.27 = private unnamed_addr constant [12 x i8] c"clk-icn-lmi\00", align 1
@.str.28 = private unnamed_addr constant [18 x i8] c"clk-tx-icn-disp-1\00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c"clk-icn-sbc\00", align 1
@.str.30 = private unnamed_addr constant [14 x i8] c"clk-stfe-frc2\00", align 1
@.str.31 = private unnamed_addr constant [12 x i8] c"clk-eth-phy\00", align 1
@.str.32 = private unnamed_addr constant [19 x i8] c"clk-eth-ref-phyclk\00", align 1
@.str.33 = private unnamed_addr constant [17 x i8] c"clk-flash-promip\00", align 1
@.str.34 = private unnamed_addr constant [14 x i8] c"clk-main-disp\00", align 1
@.str.35 = private unnamed_addr constant [13 x i8] c"clk-aux-disp\00", align 1
@.str.36 = private unnamed_addr constant [14 x i8] c"clk-compo-dvp\00", align 1
@clkgen_stih410_c0_clk_out = internal constant [39 x %struct.clkgen_clk_out] [%struct.clkgen_clk_out { ptr @.str.5, i32 0 }, %struct.clkgen_clk_out { ptr @.str.6, i32 0 }, %struct.clkgen_clk_out { ptr @.str.7, i32 0 }, %struct.clkgen_clk_out { ptr @.str.8, i32 0 }, %struct.clkgen_clk_out { ptr @.str.9, i32 0 }, %struct.clkgen_clk_out { ptr @.str.10, i32 0 }, %struct.clkgen_clk_out { ptr @.str.11, i32 0 }, %struct.clkgen_clk_out { ptr @.str.12, i32 0 }, %struct.clkgen_clk_out { ptr @.str.13, i32 2048 }, %struct.clkgen_clk_out { ptr @.str.14, i32 2048 }, %struct.clkgen_clk_out { ptr @.str.15, i32 0 }, %struct.clkgen_clk_out { ptr @.str.16, i32 0 }, %struct.clkgen_clk_out { ptr @.str.17, i32 0 }, %struct.clkgen_clk_out { ptr @.str.18, i32 2048 }, %struct.clkgen_clk_out { ptr @.str.19, i32 0 }, %struct.clkgen_clk_out { ptr @.str.20, i32 0 }, %struct.clkgen_clk_out { ptr @.str.21, i32 0 }, %struct.clkgen_clk_out { ptr @.str.22, i32 0 }, %struct.clkgen_clk_out { ptr @.str.23, i32 0 }, %struct.clkgen_clk_out { ptr @.str.24, i32 0 }, %struct.clkgen_clk_out { ptr @.str.25, i32 0 }, %struct.clkgen_clk_out { ptr @.str.26, i32 0 }, %struct.clkgen_clk_out { ptr @.str.27, i32 2048 }, %struct.clkgen_clk_out { ptr @.str.28, i32 0 }, %struct.clkgen_clk_out { ptr @.str.29, i32 2048 }, %struct.clkgen_clk_out { ptr @.str.30, i32 0 }, %struct.clkgen_clk_out { ptr @.str.31, i32 0 }, %struct.clkgen_clk_out { ptr @.str.32, i32 0 }, %struct.clkgen_clk_out { ptr @.str.33, i32 0 }, %struct.clkgen_clk_out { ptr @.str.34, i32 0 }, %struct.clkgen_clk_out { ptr @.str.35, i32 0 }, %struct.clkgen_clk_out { ptr @.str.36, i32 0 }, %struct.clkgen_clk_out { ptr @.str.37, i32 0 }, %struct.clkgen_clk_out { ptr @.str.38, i32 0 }, %struct.clkgen_clk_out { ptr @.str.39, i32 2048 }, %struct.clkgen_clk_out { ptr @.str.40, i32 0 }, %struct.clkgen_clk_out { ptr @.str.41, i32 0 }, %struct.clkgen_clk_out { ptr @.str.42, i32 0 }, %struct.clkgen_clk_out { ptr @.str.43, i32 0 }], align 4
@.str.37 = private unnamed_addr constant [17 x i8] c"clk-tx-icn-hades\00", align 1
@.str.38 = private unnamed_addr constant [17 x i8] c"clk-rx-icn-hades\00", align 1
@.str.39 = private unnamed_addr constant [15 x i8] c"clk-icn-reg-16\00", align 1
@.str.40 = private unnamed_addr constant [13 x i8] c"clk-pp-hades\00", align 1
@.str.41 = private unnamed_addr constant [16 x i8] c"clk-clust-hades\00", align 1
@.str.42 = private unnamed_addr constant [15 x i8] c"clk-hwpe-hades\00", align 1
@.str.43 = private unnamed_addr constant [13 x i8] c"clk-fc-hades\00", align 1
@clkgen_stih418_c0_clk_out = internal constant [42 x %struct.clkgen_clk_out] [%struct.clkgen_clk_out { ptr @.str.5, i32 0 }, %struct.clkgen_clk_out { ptr @.str.6, i32 0 }, %struct.clkgen_clk_out { ptr @.str.7, i32 0 }, %struct.clkgen_clk_out { ptr @.str.8, i32 0 }, %struct.clkgen_clk_out { ptr @.str.9, i32 0 }, %struct.clkgen_clk_out { ptr @.str.44, i32 0 }, %struct.clkgen_clk_out { ptr @.str.11, i32 2048 }, %struct.clkgen_clk_out { ptr @.str.12, i32 2048 }, %struct.clkgen_clk_out { ptr @.str.13, i32 2048 }, %struct.clkgen_clk_out { ptr @.str.14, i32 2048 }, %struct.clkgen_clk_out { ptr @.str.15, i32 0 }, %struct.clkgen_clk_out { ptr @.str.16, i32 0 }, %struct.clkgen_clk_out { ptr @.str.17, i32 0 }, %struct.clkgen_clk_out { ptr @.str.45, i32 2048 }, %struct.clkgen_clk_out { ptr @.str.46, i32 0 }, %struct.clkgen_clk_out { ptr @.str.47, i32 0 }, %struct.clkgen_clk_out { ptr @.str.21, i32 0 }, %struct.clkgen_clk_out { ptr @.str.22, i32 0 }, %struct.clkgen_clk_out { ptr @.str.23, i32 0 }, %struct.clkgen_clk_out { ptr @.str.24, i32 0 }, %struct.clkgen_clk_out { ptr @.str.25, i32 0 }, %struct.clkgen_clk_out { ptr @.str.26, i32 0 }, %struct.clkgen_clk_out { ptr @.str.27, i32 2048 }, %struct.clkgen_clk_out { ptr @.str.48, i32 2048 }, %struct.clkgen_clk_out { ptr @.str.29, i32 2048 }, %struct.clkgen_clk_out { ptr @.str.30, i32 0 }, %struct.clkgen_clk_out { ptr @.str.49, i32 0 }, %struct.clkgen_clk_out { ptr @.str.32, i32 0 }, %struct.clkgen_clk_out { ptr @.str.33, i32 0 }, %struct.clkgen_clk_out { ptr @.str.34, i32 0 }, %struct.clkgen_clk_out { ptr @.str.35, i32 0 }, %struct.clkgen_clk_out { ptr @.str.36, i32 0 }, %struct.clkgen_clk_out { ptr @.str.37, i32 2048 }, %struct.clkgen_clk_out { ptr @.str.38, i32 2048 }, %struct.clkgen_clk_out { ptr @.str.39, i32 2048 }, %struct.clkgen_clk_out { ptr @.str.50, i32 0 }, %struct.clkgen_clk_out { ptr @.str.51, i32 0 }, %struct.clkgen_clk_out { ptr @.str.52, i32 0 }, %struct.clkgen_clk_out { ptr @.str.53, i32 0 }, %struct.clkgen_clk_out { ptr @.str.54, i32 0 }, %struct.clkgen_clk_out { ptr @.str.55, i32 0 }, %struct.clkgen_clk_out { ptr @.str.56, i32 0 }], align 4
@.str.44 = private unnamed_addr constant [7 x i8] c"clk-tp\00", align 1
@.str.45 = private unnamed_addr constant [12 x i8] c"clk-icn-reg\00", align 1
@.str.46 = private unnamed_addr constant [17 x i8] c"clk-proc-bdisp-0\00", align 1
@.str.47 = private unnamed_addr constant [17 x i8] c"clk-proc-bdisp-1\00", align 1
@.str.48 = private unnamed_addr constant [13 x i8] c"clk-tx-icn-1\00", align 1
@.str.49 = private unnamed_addr constant [15 x i8] c"clk-eth-phyref\00", align 1
@.str.50 = private unnamed_addr constant [12 x i8] c"clk-pp-hevc\00", align 1
@.str.51 = private unnamed_addr constant [15 x i8] c"clk-clust-hevc\00", align 1
@.str.52 = private unnamed_addr constant [14 x i8] c"clk-hwpe-hevc\00", align 1
@.str.53 = private unnamed_addr constant [12 x i8] c"clk-fc-hevc\00", align 1
@.str.54 = private unnamed_addr constant [15 x i8] c"clk-proc-mixer\00", align 1
@.str.55 = private unnamed_addr constant [12 x i8] c"clk-proc-sc\00", align 1
@.str.56 = private unnamed_addr constant [14 x i8] c"clk-avsp-hevc\00", align 1
@clkgen_stih407_d0_clk_out = internal constant [4 x %struct.clkgen_clk_out] [%struct.clkgen_clk_out { ptr @.str.57, i32 0 }, %struct.clkgen_clk_out { ptr @.str.58, i32 0 }, %struct.clkgen_clk_out { ptr @.str.59, i32 0 }, %struct.clkgen_clk_out { ptr @.str.60, i32 0 }], align 4
@.str.57 = private unnamed_addr constant [10 x i8] c"clk-pcm-0\00", align 1
@.str.58 = private unnamed_addr constant [10 x i8] c"clk-pcm-1\00", align 1
@.str.59 = private unnamed_addr constant [10 x i8] c"clk-pcm-2\00", align 1
@.str.60 = private unnamed_addr constant [11 x i8] c"clk-spdiff\00", align 1
@clkgen_stih410_d0_clk_out = internal constant [6 x %struct.clkgen_clk_out] [%struct.clkgen_clk_out { ptr @.str.57, i32 0 }, %struct.clkgen_clk_out { ptr @.str.58, i32 0 }, %struct.clkgen_clk_out { ptr @.str.59, i32 0 }, %struct.clkgen_clk_out { ptr @.str.60, i32 0 }, %struct.clkgen_clk_out { ptr @.str.61, i32 0 }, %struct.clkgen_clk_out { ptr @.str.62, i32 0 }], align 4
@.str.61 = private unnamed_addr constant [18 x i8] c"clk-pcmr10-master\00", align 1
@.str.62 = private unnamed_addr constant [13 x i8] c"clk-usb2-phy\00", align 1
@clkgen_stih407_d2_clk_out = internal constant [16 x %struct.clkgen_clk_out] [%struct.clkgen_clk_out { ptr @.str.63, i32 0 }, %struct.clkgen_clk_out { ptr @.str.64, i32 0 }, %struct.clkgen_clk_out { ptr @.str.65, i32 0 }, %struct.clkgen_clk_out { ptr @.str.66, i32 0 }, %struct.clkgen_clk_out { ptr @.str.67, i32 0 }, %struct.clkgen_clk_out { ptr @.str.68, i32 0 }, %struct.clkgen_clk_out { ptr @.str.69, i32 0 }, %struct.clkgen_clk_out { ptr @.str.70, i32 0 }, %struct.clkgen_clk_out { ptr @.str.71, i32 0 }, %struct.clkgen_clk_out { ptr @.str.72, i32 0 }, %struct.clkgen_clk_out { ptr @.str.73, i32 0 }, %struct.clkgen_clk_out { ptr @.str.74, i32 0 }, %struct.clkgen_clk_out { ptr @.str.75, i32 0 }, %struct.clkgen_clk_out { ptr @.str.76, i32 0 }, %struct.clkgen_clk_out { ptr @.str.77, i32 0 }, %struct.clkgen_clk_out { ptr @.str.78, i32 0 }], align 4
@.str.63 = private unnamed_addr constant [18 x i8] c"clk-pix-main-disp\00", align 1
@.str.64 = private unnamed_addr constant [12 x i8] c"clk-pix-pip\00", align 1
@.str.65 = private unnamed_addr constant [13 x i8] c"clk-pix-gdp1\00", align 1
@.str.66 = private unnamed_addr constant [13 x i8] c"clk-pix-gdp2\00", align 1
@.str.67 = private unnamed_addr constant [13 x i8] c"clk-pix-gdp3\00", align 1
@.str.68 = private unnamed_addr constant [13 x i8] c"clk-pix-gdp4\00", align 1
@.str.69 = private unnamed_addr constant [17 x i8] c"clk-pix-aux-disp\00", align 1
@.str.70 = private unnamed_addr constant [9 x i8] c"clk-denc\00", align 1
@.str.71 = private unnamed_addr constant [14 x i8] c"clk-pix-hddac\00", align 1
@.str.72 = private unnamed_addr constant [10 x i8] c"clk-hddac\00", align 1
@.str.73 = private unnamed_addr constant [10 x i8] c"clk-sddac\00", align 1
@.str.74 = private unnamed_addr constant [12 x i8] c"clk-pix-dvo\00", align 1
@.str.75 = private unnamed_addr constant [8 x i8] c"clk-dvo\00", align 1
@.str.76 = private unnamed_addr constant [13 x i8] c"clk-pix-hdmi\00", align 1
@.str.77 = private unnamed_addr constant [14 x i8] c"clk-tmds-hdmi\00", align 1
@.str.78 = private unnamed_addr constant [16 x i8] c"clk-ref-hdmiphy\00", align 1
@clkgen_stih418_d2_clk_out = internal constant [48 x %struct.clkgen_clk_out] [%struct.clkgen_clk_out { ptr @.str.63, i32 0 }, %struct.clkgen_clk_out { ptr @.str.79, i32 0 }, %struct.clkgen_clk_out { ptr @.str.79, i32 0 }, %struct.clkgen_clk_out { ptr @.str.79, i32 0 }, %struct.clkgen_clk_out { ptr @.str.79, i32 0 }, %struct.clkgen_clk_out { ptr @.str.80, i32 0 }, %struct.clkgen_clk_out { ptr @.str.69, i32 0 }, %struct.clkgen_clk_out { ptr @.str.70, i32 0 }, %struct.clkgen_clk_out { ptr @.str.71, i32 0 }, %struct.clkgen_clk_out { ptr @.str.72, i32 0 }, %struct.clkgen_clk_out { ptr @.str.73, i32 0 }, %struct.clkgen_clk_out { ptr @.str.74, i32 0 }, %struct.clkgen_clk_out { ptr @.str.75, i32 0 }, %struct.clkgen_clk_out { ptr @.str.76, i32 0 }, %struct.clkgen_clk_out { ptr @.str.77, i32 0 }, %struct.clkgen_clk_out { ptr @.str.78, i32 0 }, %struct.clkgen_clk_out { ptr @.str.79, i32 0 }, %struct.clkgen_clk_out { ptr @.str.79, i32 0 }, %struct.clkgen_clk_out { ptr @.str.79, i32 0 }, %struct.clkgen_clk_out { ptr @.str.79, i32 0 }, %struct.clkgen_clk_out { ptr @.str.79, i32 0 }, %struct.clkgen_clk_out { ptr @.str.79, i32 0 }, %struct.clkgen_clk_out { ptr @.str.79, i32 0 }, %struct.clkgen_clk_out { ptr @.str.79, i32 0 }, %struct.clkgen_clk_out { ptr @.str.79, i32 0 }, %struct.clkgen_clk_out { ptr @.str.79, i32 0 }, %struct.clkgen_clk_out { ptr @.str.79, i32 0 }, %struct.clkgen_clk_out { ptr @.str.79, i32 0 }, %struct.clkgen_clk_out { ptr @.str.79, i32 0 }, %struct.clkgen_clk_out { ptr @.str.79, i32 0 }, %struct.clkgen_clk_out { ptr @.str.79, i32 0 }, %struct.clkgen_clk_out { ptr @.str.79, i32 0 }, %struct.clkgen_clk_out { ptr @.str.79, i32 0 }, %struct.clkgen_clk_out { ptr @.str.79, i32 0 }, %struct.clkgen_clk_out { ptr @.str.79, i32 0 }, %struct.clkgen_clk_out { ptr @.str.79, i32 0 }, %struct.clkgen_clk_out { ptr @.str.79, i32 0 }, %struct.clkgen_clk_out { ptr @.str.79, i32 0 }, %struct.clkgen_clk_out { ptr @.str.79, i32 0 }, %struct.clkgen_clk_out { ptr @.str.79, i32 0 }, %struct.clkgen_clk_out { ptr @.str.79, i32 0 }, %struct.clkgen_clk_out { ptr @.str.79, i32 0 }, %struct.clkgen_clk_out { ptr @.str.79, i32 0 }, %struct.clkgen_clk_out { ptr @.str.79, i32 0 }, %struct.clkgen_clk_out { ptr @.str.79, i32 0 }, %struct.clkgen_clk_out { ptr @.str.79, i32 0 }, %struct.clkgen_clk_out { ptr @.str.79, i32 0 }, %struct.clkgen_clk_out { ptr @.str.81, i32 0 }], align 4
@.str.79 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.80 = private unnamed_addr constant [19 x i8] c"clk-tmds-hdmi-div2\00", align 1
@.str.81 = private unnamed_addr constant [8 x i8] c"clk-vp9\00", align 1
@clkgen_stih407_d3_clk_out = internal constant [8 x %struct.clkgen_clk_out] [%struct.clkgen_clk_out { ptr @.str.82, i32 0 }, %struct.clkgen_clk_out { ptr @.str.83, i32 0 }, %struct.clkgen_clk_out { ptr @.str.84, i32 0 }, %struct.clkgen_clk_out { ptr @.str.85, i32 0 }, %struct.clkgen_clk_out { ptr @.str.86, i32 0 }, %struct.clkgen_clk_out { ptr @.str.87, i32 0 }, %struct.clkgen_clk_out { ptr @.str.88, i32 0 }, %struct.clkgen_clk_out { ptr @.str.89, i32 0 }], align 4
@.str.82 = private unnamed_addr constant [14 x i8] c"clk-stfe-frc1\00", align 1
@.str.83 = private unnamed_addr constant [12 x i8] c"clk-tsout-0\00", align 1
@.str.84 = private unnamed_addr constant [12 x i8] c"clk-tsout-1\00", align 1
@.str.85 = private unnamed_addr constant [9 x i8] c"clk-mchi\00", align 1
@.str.86 = private unnamed_addr constant [16 x i8] c"clk-vsens-compo\00", align 1
@.str.87 = private unnamed_addr constant [16 x i8] c"clk-frc1-remote\00", align 1
@.str.88 = private unnamed_addr constant [10 x i8] c"clk-lpc-0\00", align 1
@.str.89 = private unnamed_addr constant [10 x i8] c"clk-lpc-1\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@flexgen_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @flexgen_enable, ptr @flexgen_disable, ptr @flexgen_is_enabled, ptr null, ptr null, ptr null, ptr @flexgen_recalc_rate, ptr @flexgen_round_rate, ptr null, ptr @flexgen_set_parent, ptr @flexgen_get_parent, ptr @flexgen_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@clk_gate_ops = external dso_local local_unnamed_addr constant %struct.clk_ops, align 4
@clk_divider_ops = external dso_local local_unnamed_addr constant %struct.clk_ops, align 4
@clk_mux_ops = external dso_local local_unnamed_addr constant %struct.clk_ops, align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__of_table_flexgen], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @st_of_flexgen_setup(ptr noundef %0) #0 section ".init.text" {
  %2 = alloca %struct.clk_init_data, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  store i32 0, ptr %3, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  store i32 0, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  store ptr null, ptr %5, align 4, !annotation !8
  %6 = tail call ptr @of_get_parent(ptr noundef %0) #9
  %7 = icmp eq ptr %6, null
  br i1 %7, label %167, label %8

8:                                                ; preds = %1
  %9 = tail call ptr @of_iomap(ptr noundef nonnull %6, i32 noundef 0) #9
  tail call void @of_node_put(ptr noundef nonnull %6) #9
  %10 = icmp eq ptr %9, null
  br i1 %10, label %167, label %11

11:                                               ; preds = %8
  %12 = call fastcc ptr @flexgen_get_parents(ptr noundef %0, ptr noundef nonnull %3) #10
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  tail call void @iounmap(ptr noundef nonnull %9) #9
  br label %167

15:                                               ; preds = %11
  %16 = tail call ptr @of_match_node(ptr noundef nonnull @flexgen_of_match, ptr noundef %0) #9
  %17 = icmp eq ptr %16, null
  br i1 %17, label %25, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.of_device_id, ptr %16, i32 0, i32 3
  %20 = load ptr, ptr %19, align 4
  %21 = load i32, ptr %20, align 4
  store i32 %21, ptr %4, align 4
  %22 = getelementptr inbounds %struct.clkgen_data, ptr %20, i32 0, i32 1
  %23 = load i8, ptr %22, align 4, !range !9
  %24 = icmp ne i8 %23, 0
  br label %25

25:                                               ; preds = %18, %15
  %26 = phi ptr [ %20, %18 ], [ null, %15 ]
  %27 = phi i1 [ %24, %18 ], [ false, %15 ]
  %28 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %29 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %28, i32 noundef 3520, i32 noundef 8) #11
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  tail call void @iounmap(ptr noundef nonnull %9) #9
  br label %165

32:                                               ; preds = %25
  %33 = icmp eq ptr %26, null
  br i1 %33, label %42, label %34

34:                                               ; preds = %32
  %35 = getelementptr inbounds %struct.clkgen_data, ptr %26, i32 0, i32 3
  %36 = load i32, ptr %35, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.clkgen_data, ptr %26, i32 0, i32 2
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %50

42:                                               ; preds = %38, %34, %32
  %43 = tail call i32 @of_property_read_string_helper(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef null, i32 noundef 0, i32 noundef 0) #9
  %44 = icmp slt i32 %43, 1
  %45 = getelementptr inbounds %struct.clk_onecell_data, ptr %29, i32 0, i32 1
  br i1 %44, label %46, label %49

46:                                               ; preds = %42
  %47 = load i32, ptr %45, align 4
  %48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.st_of_flexgen_setup, i32 noundef %47) #12
  br label %159

49:                                               ; preds = %42
  store i32 %43, ptr %45, align 4
  br label %52

50:                                               ; preds = %38
  %51 = getelementptr inbounds %struct.clk_onecell_data, ptr %29, i32 0, i32 1
  store i32 %36, ptr %51, align 4
  br label %52

52:                                               ; preds = %50, %49
  %53 = phi i32 [ %36, %50 ], [ %43, %49 ]
  %54 = getelementptr inbounds %struct.clk_onecell_data, ptr %29, i32 0, i32 1
  %55 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %53, i32 4) #9
  %56 = extractvalue { i32, i1 } %55, 1
  br i1 %56, label %57, label %58, !prof !10

57:                                               ; preds = %52
  store ptr null, ptr %29, align 8
  br label %159

58:                                               ; preds = %52
  %59 = extractvalue { i32, i1 } %55, 0
  %60 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %59, i32 noundef 3520) #13
  store ptr %60, ptr %29, align 8
  %61 = icmp eq ptr %60, null
  br i1 %61, label %159, label %62

62:                                               ; preds = %58
  %63 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %64 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %63, i32 noundef 3520, i32 noundef 4) #11
  %65 = icmp eq ptr %64, null
  br i1 %65, label %159, label %66

66:                                               ; preds = %62
  store i32 0, ptr %64, align 8
  %67 = getelementptr inbounds %struct.clkgen_data, ptr %26, i32 0, i32 3
  %68 = getelementptr inbounds %struct.clkgen_data, ptr %26, i32 0, i32 2
  %69 = load i32, ptr %3, align 4
  %70 = getelementptr inbounds i8, ptr %2, i32 12
  %71 = trunc i32 %69 to i8
  %72 = zext i1 %27 to i8
  %73 = getelementptr inbounds %struct.clk_init_data, ptr %2, i32 0, i32 1
  %74 = getelementptr inbounds %struct.clk_init_data, ptr %2, i32 0, i32 6
  %75 = getelementptr inbounds %struct.clk_init_data, ptr %2, i32 0, i32 2
  %76 = getelementptr inbounds %struct.clk_init_data, ptr %2, i32 0, i32 5
  %77 = getelementptr i8, ptr %9, i32 24
  %78 = getelementptr i8, ptr %9, i32 356
  %79 = getelementptr i8, ptr %9, i32 88
  br label %80

80:                                               ; preds = %153, %66
  %81 = phi i32 [ %53, %66 ], [ %154, %153 ]
  %82 = phi i32 [ 0, %66 ], [ %155, %153 ]
  br i1 %33, label %89, label %83

83:                                               ; preds = %80
  %84 = load i32, ptr %67, align 4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %89, label %86

86:                                               ; preds = %83
  %87 = load ptr, ptr %68, align 4
  %88 = icmp eq ptr %87, null
  br i1 %88, label %89, label %97

89:                                               ; preds = %86, %83, %80
  %90 = call i32 @of_property_read_string_helper(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull %5, i32 noundef 1, i32 noundef %82) #9
  %91 = icmp sgt i32 %90, -1
  br i1 %91, label %92, label %157

92:                                               ; preds = %89
  %93 = load i32, ptr %4, align 4
  %94 = and i32 %93, -2049
  store i32 %94, ptr %4, align 4
  %95 = call i32 @of_clk_detect_critical(ptr noundef %0, i32 noundef %82, ptr noundef nonnull %4) #9
  %96 = load ptr, ptr %5, align 4
  br label %104

97:                                               ; preds = %86
  %98 = getelementptr %struct.clkgen_clk_out, ptr %87, i32 %82
  %99 = load ptr, ptr %98, align 4
  store ptr %99, ptr %5, align 4
  %100 = load i32, ptr %26, align 4
  %101 = getelementptr %struct.clkgen_clk_out, ptr %87, i32 %82, i32 1
  %102 = load i32, ptr %101, align 4
  %103 = or i32 %102, %100
  store i32 %103, ptr %4, align 4
  br label %104

104:                                              ; preds = %97, %92
  %105 = phi ptr [ %99, %97 ], [ %96, %92 ]
  %106 = load i8, ptr %105, align 1
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %153, label %108

108:                                              ; preds = %104
  %109 = load i32, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %2) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %70, i8 0, i32 12, i1 false) #9, !annotation !8
  %110 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %111 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %110, i32 noundef 3520, i32 noundef 176) #11
  %112 = icmp eq ptr %111, null
  br i1 %112, label %113, label %114

113:                                              ; preds = %108
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %2) #9
  br label %161

114:                                              ; preds = %108
  store ptr %105, ptr %2, align 4
  store ptr @flexgen_ops, ptr %73, align 4
  %115 = or i32 %109, 64
  store i32 %115, ptr %74, align 4
  store ptr %12, ptr %75, align 4
  store i8 %71, ptr %76, align 4
  %116 = and i32 %82, -4
  %117 = getelementptr i8, ptr %77, i32 %116
  %118 = shl i32 %82, 2
  %119 = getelementptr i8, ptr %78, i32 %118
  %120 = getelementptr inbounds %struct.flexgen, ptr %111, i32 0, i32 1, i32 6
  store ptr %64, ptr %120, align 8
  %121 = getelementptr inbounds %struct.flexgen, ptr %111, i32 0, i32 1, i32 3
  store i32 63, ptr %121, align 8
  %122 = getelementptr inbounds %struct.flexgen, ptr %111, i32 0, i32 1, i32 1
  store ptr %117, ptr %122, align 8
  %123 = trunc i32 %82 to i8
  %124 = shl i8 %123, 3
  %125 = and i8 %124, 24
  %126 = getelementptr inbounds %struct.flexgen, ptr %111, i32 0, i32 1, i32 4
  store i8 %125, ptr %126, align 4
  %127 = getelementptr inbounds %struct.flexgen, ptr %111, i32 0, i32 1, i32 2
  store ptr null, ptr %127, align 4
  %128 = getelementptr inbounds %struct.flexgen, ptr %111, i32 0, i32 2, i32 4
  store ptr %64, ptr %128, align 8
  %129 = getelementptr inbounds %struct.flexgen, ptr %111, i32 0, i32 2, i32 1
  store ptr %117, ptr %129, align 8
  %130 = or i8 %125, 6
  %131 = getelementptr inbounds %struct.flexgen, ptr %111, i32 0, i32 2, i32 2
  store i8 %130, ptr %131, align 4
  %132 = getelementptr inbounds %struct.flexgen, ptr %111, i32 0, i32 3, i32 6
  store ptr %64, ptr %132, align 4
  %133 = getelementptr i8, ptr %79, i32 %118
  %134 = getelementptr inbounds %struct.flexgen, ptr %111, i32 0, i32 3, i32 1
  store ptr %133, ptr %134, align 8
  %135 = getelementptr inbounds %struct.flexgen, ptr %111, i32 0, i32 3, i32 3
  store i8 10, ptr %135, align 1
  %136 = getelementptr inbounds %struct.flexgen, ptr %111, i32 0, i32 4, i32 4
  store ptr %64, ptr %136, align 4
  %137 = getelementptr inbounds %struct.flexgen, ptr %111, i32 0, i32 4, i32 1
  store ptr %119, ptr %137, align 4
  %138 = getelementptr inbounds %struct.flexgen, ptr %111, i32 0, i32 4, i32 2
  store i8 6, ptr %138, align 8
  %139 = getelementptr inbounds %struct.flexgen, ptr %111, i32 0, i32 5, i32 6
  store ptr %64, ptr %139, align 8
  %140 = getelementptr inbounds %struct.flexgen, ptr %111, i32 0, i32 5, i32 1
  store ptr %119, ptr %140, align 4
  %141 = getelementptr inbounds %struct.flexgen, ptr %111, i32 0, i32 5, i32 3
  store i8 6, ptr %141, align 1
  %142 = getelementptr inbounds %struct.flexgen, ptr %111, i32 0, i32 6, i32 4
  store ptr %64, ptr %142, align 8
  %143 = getelementptr inbounds %struct.flexgen, ptr %111, i32 0, i32 6, i32 1
  store ptr %119, ptr %143, align 8
  %144 = getelementptr inbounds %struct.flexgen, ptr %111, i32 0, i32 6, i32 2
  store i8 7, ptr %144, align 4
  %145 = getelementptr inbounds %struct.flexgen, ptr %111, i32 0, i32 7
  store i8 %72, ptr %145, align 4
  %146 = getelementptr inbounds %struct.clk_hw, ptr %111, i32 0, i32 2
  store ptr %2, ptr %146, align 8
  %147 = call ptr @clk_register(ptr noundef null, ptr noundef nonnull %111) #9
  %148 = icmp ugt ptr %147, inttoptr (i32 -4096 to ptr)
  br i1 %148, label %160, label %149

149:                                              ; preds = %114
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %2) #9
  %150 = load ptr, ptr %29, align 8
  %151 = getelementptr ptr, ptr %150, i32 %82
  store ptr %147, ptr %151, align 4
  %152 = load i32, ptr %54, align 4
  br label %153

153:                                              ; preds = %149, %104
  %154 = phi i32 [ %152, %149 ], [ %81, %104 ]
  %155 = add nuw i32 %82, 1
  %156 = icmp ult i32 %155, %154
  br i1 %156, label %80, label %157

157:                                              ; preds = %153, %89
  call void @kfree(ptr noundef nonnull %12) #9
  %158 = call i32 @of_clk_add_provider(ptr noundef %0, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef nonnull %29) #9
  br label %167

159:                                              ; preds = %62, %58, %57, %46
  tail call void @iounmap(ptr noundef nonnull %9) #9
  br label %162

160:                                              ; preds = %114
  call void @kfree(ptr noundef nonnull %111) #9
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %2) #9
  br label %161

161:                                              ; preds = %160, %113
  call void @iounmap(ptr noundef nonnull %9) #9
  br label %162

162:                                              ; preds = %161, %159
  %163 = phi ptr [ null, %159 ], [ %64, %161 ]
  %164 = load ptr, ptr %29, align 8
  call void @kfree(ptr noundef %164) #9
  br label %165

165:                                              ; preds = %162, %31
  %166 = phi ptr [ %163, %162 ], [ null, %31 ]
  call void @kfree(ptr noundef %29) #9
  call void @kfree(ptr noundef nonnull %12) #9
  call void @kfree(ptr noundef %166) #9
  br label %167

167:                                              ; preds = %165, %157, %14, %8, %1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_parent(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc ptr @flexgen_get_parents(ptr noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 section ".init.text" {
  %3 = tail call i32 @of_clk_get_parent_count(ptr noundef %0) #9
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %6, !prof !10

5:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 284, i32 noundef 9, ptr noundef null) #9
  br label %15

6:                                                ; preds = %2
  %7 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %3, i32 4) #9
  %8 = extractvalue { i32, i1 } %7, 1
  br i1 %8, label %15, label %9, !prof !10

9:                                                ; preds = %6
  %10 = extractvalue { i32, i1 } %7, 0
  %11 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %10, i32 noundef 3520) #13
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = tail call i32 @of_clk_parent_fill(ptr noundef %0, ptr noundef nonnull %11, i32 noundef %3) #9
  store i32 %14, ptr %1, align 4
  br label %15

15:                                               ; preds = %13, %9, %6, %5
  %16 = phi ptr [ null, %5 ], [ %11, %13 ], [ null, %9 ], [ null, %6 ]
  ret ptr %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_detect_critical(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_onecell_get(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_get_parent_count(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_parent_fill(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string_helper(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @flexgen_enable(ptr noundef %0) #8 {
  %2 = getelementptr inbounds %struct.flexgen, ptr %0, i32 0, i32 2
  %3 = getelementptr inbounds %struct.flexgen, ptr %0, i32 0, i32 4
  %4 = getelementptr inbounds %struct.clk_hw, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.flexgen, ptr %0, i32 0, i32 2, i32 0, i32 1
  store ptr %5, ptr %6, align 4
  %7 = load ptr, ptr %0, align 4
  store ptr %7, ptr %2, align 4
  %8 = getelementptr inbounds %struct.flexgen, ptr %0, i32 0, i32 4, i32 0, i32 1
  store ptr %5, ptr %8, align 4
  store ptr %7, ptr %3, align 4
  %9 = load ptr, ptr getelementptr inbounds (%struct.clk_ops, ptr @clk_gate_ops, i32 0, i32 4), align 4
  %10 = tail call i32 %9(ptr noundef %2) #9
  %11 = tail call i32 %9(ptr noundef %3) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @flexgen_disable(ptr noundef %0) #8 {
  %2 = getelementptr inbounds %struct.flexgen, ptr %0, i32 0, i32 4
  %3 = getelementptr inbounds %struct.clk_hw, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.flexgen, ptr %0, i32 0, i32 4, i32 0, i32 1
  store ptr %4, ptr %5, align 4
  %6 = load ptr, ptr %0, align 4
  store ptr %6, ptr %2, align 4
  %7 = load ptr, ptr getelementptr inbounds (%struct.clk_ops, ptr @clk_gate_ops, i32 0, i32 5), align 4
  tail call void %7(ptr noundef %2) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @flexgen_is_enabled(ptr noundef %0) #8 {
  %2 = getelementptr inbounds %struct.flexgen, ptr %0, i32 0, i32 4
  %3 = getelementptr inbounds %struct.clk_hw, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.flexgen, ptr %0, i32 0, i32 4, i32 0, i32 1
  store ptr %4, ptr %5, align 4
  %6 = load ptr, ptr %0, align 4
  store ptr %6, ptr %2, align 4
  %7 = load ptr, ptr getelementptr inbounds (%struct.clk_ops, ptr @clk_gate_ops, i32 0, i32 6), align 4
  %8 = tail call i32 %7(ptr noundef %2) #9
  %9 = icmp ne i32 %8, 0
  %10 = zext i1 %9 to i32
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @flexgen_recalc_rate(ptr noundef %0, i32 noundef %1) #8 {
  %3 = getelementptr inbounds %struct.flexgen, ptr %0, i32 0, i32 3
  %4 = getelementptr inbounds %struct.flexgen, ptr %0, i32 0, i32 5
  %5 = getelementptr inbounds %struct.clk_hw, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.flexgen, ptr %0, i32 0, i32 3, i32 0, i32 1
  store ptr %6, ptr %7, align 4
  %8 = load ptr, ptr %0, align 4
  store ptr %8, ptr %3, align 4
  %9 = getelementptr inbounds %struct.flexgen, ptr %0, i32 0, i32 5, i32 0, i32 1
  store ptr %6, ptr %9, align 4
  store ptr %8, ptr %4, align 4
  %10 = load ptr, ptr getelementptr inbounds (%struct.clk_ops, ptr @clk_divider_ops, i32 0, i32 10), align 4
  %11 = tail call i32 %10(ptr noundef %3, i32 noundef %1) #9
  %12 = tail call i32 %10(ptr noundef %4, i32 noundef %11) #9
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @flexgen_round_rate(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2) #8 {
  %4 = load i32, ptr %2, align 4
  %5 = freeze i32 %4
  %6 = udiv i32 %5, %1
  %7 = mul i32 %6, %1
  %8 = sub i32 %5, %7
  %9 = shl i32 %8, 1
  %10 = icmp uge i32 %9, %1
  %11 = zext i1 %10 to i32
  %12 = add i32 %6, %11
  %13 = tail call i32 @clk_hw_get_flags(ptr noundef %0) #9
  %14 = and i32 %13, 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %3
  %17 = mul i32 %12, %1
  store i32 %17, ptr %2, align 4
  br label %21

18:                                               ; preds = %3
  %19 = load i32, ptr %2, align 4
  %20 = udiv i32 %19, %12
  br label %21

21:                                               ; preds = %18, %16
  %22 = phi i32 [ %1, %16 ], [ %20, %18 ]
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @flexgen_set_parent(ptr noundef %0, i8 noundef zeroext %1) #8 {
  %3 = getelementptr inbounds %struct.flexgen, ptr %0, i32 0, i32 1
  %4 = getelementptr inbounds %struct.clk_hw, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.flexgen, ptr %0, i32 0, i32 1, i32 0, i32 1
  store ptr %5, ptr %6, align 4
  %7 = load ptr, ptr %0, align 4
  store ptr %7, ptr %3, align 4
  %8 = load ptr, ptr getelementptr inbounds (%struct.clk_ops, ptr @clk_mux_ops, i32 0, i32 13), align 4
  %9 = tail call i32 %8(ptr noundef %3, i8 noundef zeroext %1) #9
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i8 @flexgen_get_parent(ptr noundef %0) #8 {
  %2 = getelementptr inbounds %struct.flexgen, ptr %0, i32 0, i32 1
  %3 = getelementptr inbounds %struct.clk_hw, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.flexgen, ptr %0, i32 0, i32 1, i32 0, i32 1
  store ptr %4, ptr %5, align 4
  %6 = load ptr, ptr %0, align 4
  store ptr %6, ptr %2, align 4
  %7 = load ptr, ptr getelementptr inbounds (%struct.clk_ops, ptr @clk_mux_ops, i32 0, i32 14), align 4
  %8 = tail call zeroext i8 %7(ptr noundef %2) #9
  ret i8 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @flexgen_set_rate(ptr noundef %0, i32 noundef %1, i32 noundef %2) #8 {
  %4 = getelementptr inbounds %struct.flexgen, ptr %0, i32 0, i32 3
  %5 = getelementptr inbounds %struct.flexgen, ptr %0, i32 0, i32 5
  %6 = getelementptr inbounds %struct.clk_hw, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.flexgen, ptr %0, i32 0, i32 3, i32 0, i32 1
  store ptr %7, ptr %8, align 4
  %9 = load ptr, ptr %0, align 4
  store ptr %9, ptr %4, align 4
  %10 = getelementptr inbounds %struct.flexgen, ptr %0, i32 0, i32 5, i32 0, i32 1
  store ptr %7, ptr %10, align 4
  store ptr %9, ptr %5, align 4
  %11 = getelementptr inbounds %struct.flexgen, ptr %0, i32 0, i32 7
  %12 = load i8, ptr %11, align 4, !range !9
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %25, label %14

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.flexgen, ptr %0, i32 0, i32 6, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #9, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !12
  %18 = getelementptr inbounds %struct.flexgen, ptr %0, i32 0, i32 6, i32 2
  %19 = load i8, ptr %18, align 4
  %20 = zext i8 %19 to i32
  %21 = shl nuw i32 1, %20
  %22 = xor i32 %21, -1
  %23 = and i32 %17, %22
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !13
  tail call void @arm_heavy_mb() #9
  %24 = load ptr, ptr %15, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %23) #9, !srcloc !14
  br label %25

25:                                               ; preds = %14, %3
  %26 = udiv i32 %2, %1
  %27 = mul i32 %26, %1
  %28 = sub i32 %2, %27
  %29 = shl i32 %28, 1
  %30 = icmp uge i32 %29, %1
  %31 = zext i1 %30 to i32
  %32 = add i32 %26, %31
  %33 = icmp ult i32 %32, 65
  %34 = load ptr, ptr getelementptr inbounds (%struct.clk_ops, ptr @clk_divider_ops, i32 0, i32 15), align 4
  %35 = select i1 %33, ptr %4, ptr %5
  %36 = select i1 %33, ptr %5, ptr %4
  %37 = tail call i32 %34(ptr noundef %35, i32 noundef %2, i32 noundef %2) #9
  %38 = mul i32 %32, %1
  %39 = tail call i32 %34(ptr noundef %36, i32 noundef %1, i32 noundef %38) #9
  ret i32 %39
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_get_flags(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { cold }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }
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
!9 = !{i8 0, i8 2}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{i64 3226371}
!12 = !{i64 2150810499}
!13 = !{i64 2150810767}
!14 = !{i64 3225953}
