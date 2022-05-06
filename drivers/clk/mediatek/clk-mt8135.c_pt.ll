; ModuleID = '/llk/IR/drivers/clk/mediatek/clk-mt8135.c_pt.bc'
source_filename = "../drivers/clk/mediatek/clk-mt8135.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.mtk_fixed_factor = type { i32, ptr, ptr, i32, i32 }
%struct.mtk_composite = type { i32, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.mtk_gate = type { i32, ptr, ptr, ptr, i32, ptr, i32 }
%struct.mtk_gate_regs = type { i32, i32, i32 }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mtk_pll_data = type { i32, ptr, i32, i32, i32, i32, i32, i32, i8, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i8 }

@__of_table_mtk_topckgen = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8135-topckgen\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mtk_topckgen_init }, section "__clk_of_table", align 4
@__of_table_mtk_infrasys = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8135-infracfg\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mtk_infrasys_init }, section "__clk_of_table", align 4
@__of_table_mtk_pericfg = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8135-pericfg\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mtk_pericfg_init }, section "__clk_of_table", align 4
@__of_table_mtk_apmixedsys = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8135-apmixedsys\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mtk_apmixedsys_init }, section "__clk_of_table", align 4
@.str = private unnamed_addr constant [24 x i8] c"\013%s(): ioremap failed\0A\00", align 1
@__func__.mtk_topckgen_init = private unnamed_addr constant [18 x i8] c"mtk_topckgen_init\00", align 1
@root_clk_alias = internal constant [4 x %struct.mtk_fixed_factor] [%struct.mtk_fixed_factor { i32 1, ptr @.str.2, ptr @.str.3, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 2, ptr @.str.4, ptr @.str.3, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 3, ptr @.str.5, ptr @.str.3, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 4, ptr @.str.6, ptr @.str.3, i32 1, i32 1 }], section ".init.rodata", align 4
@top_divs = internal constant [57 x %struct.mtk_fixed_factor] [%struct.mtk_fixed_factor { i32 5, ptr @.str.7, ptr @.str.8, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 6, ptr @.str.9, ptr @.str.8, i32 1, i32 3 }, %struct.mtk_fixed_factor { i32 7, ptr @.str.10, ptr @.str.8, i32 1, i32 5 }, %struct.mtk_fixed_factor { i32 8, ptr @.str.11, ptr @.str.8, i32 1, i32 7 }, %struct.mtk_fixed_factor { i32 9, ptr @.str.12, ptr @.str.13, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 10, ptr @.str.14, ptr @.str.13, i32 1, i32 3 }, %struct.mtk_fixed_factor { i32 11, ptr @.str.15, ptr @.str.13, i32 1, i32 5 }, %struct.mtk_fixed_factor { i32 12, ptr @.str.16, ptr @.str.13, i32 1, i32 7 }, %struct.mtk_fixed_factor { i32 13, ptr @.str.17, ptr @.str.13, i32 1, i32 26 }, %struct.mtk_fixed_factor { i32 14, ptr @.str.18, ptr @.str.19, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 15, ptr @.str.20, ptr @.str.19, i32 1, i32 3 }, %struct.mtk_fixed_factor { i32 16, ptr @.str.21, ptr @.str.19, i32 1, i32 5 }, %struct.mtk_fixed_factor { i32 17, ptr @.str.22, ptr @.str.19, i32 1, i32 7 }, %struct.mtk_fixed_factor { i32 18, ptr @.str.23, ptr @.str.18, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 19, ptr @.str.24, ptr @.str.20, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 20, ptr @.str.25, ptr @.str.7, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 21, ptr @.str.26, ptr @.str.7, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 22, ptr @.str.27, ptr @.str.7, i32 1, i32 3 }, %struct.mtk_fixed_factor { i32 23, ptr @.str.28, ptr @.str.7, i32 1, i32 4 }, %struct.mtk_fixed_factor { i32 24, ptr @.str.29, ptr @.str.7, i32 1, i32 5 }, %struct.mtk_fixed_factor { i32 25, ptr @.str.30, ptr @.str.7, i32 1, i32 6 }, %struct.mtk_fixed_factor { i32 26, ptr @.str.31, ptr @.str.7, i32 1, i32 8 }, %struct.mtk_fixed_factor { i32 27, ptr @.str.32, ptr @.str.7, i32 1, i32 12 }, %struct.mtk_fixed_factor { i32 28, ptr @.str.33, ptr @.str.9, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 29, ptr @.str.34, ptr @.str.10, i32 2, i32 1 }, %struct.mtk_fixed_factor { i32 30, ptr @.str.35, ptr @.str.10, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 31, ptr @.str.36, ptr @.str.11, i32 2, i32 1 }, %struct.mtk_fixed_factor { i32 32, ptr @.str.37, ptr @.str.12, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 33, ptr @.str.38, ptr @.str.12, i32 1, i32 4 }, %struct.mtk_fixed_factor { i32 34, ptr @.str.39, ptr @.str.12, i32 1, i32 6 }, %struct.mtk_fixed_factor { i32 35, ptr @.str.40, ptr @.str.12, i32 1, i32 8 }, %struct.mtk_fixed_factor { i32 36, ptr @.str.41, ptr @.str.12, i32 1, i32 10 }, %struct.mtk_fixed_factor { i32 37, ptr @.str.42, ptr @.str.14, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 38, ptr @.str.43, ptr @.str.14, i32 1, i32 4 }, %struct.mtk_fixed_factor { i32 39, ptr @.str.44, ptr @.str.14, i32 1, i32 6 }, %struct.mtk_fixed_factor { i32 40, ptr @.str.45, ptr @.str.14, i32 1, i32 8 }, %struct.mtk_fixed_factor { i32 41, ptr @.str.46, ptr @.str.14, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 42, ptr @.str.47, ptr @.str.15, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 43, ptr @.str.48, ptr @.str.16, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 44, ptr @.str.49, ptr @.str.15, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 45, ptr @.str.50, ptr @.str.17, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 46, ptr @.str.51, ptr @.str.52, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 47, ptr @.str.53, ptr @.str.52, i32 1, i32 4 }, %struct.mtk_fixed_factor { i32 48, ptr @.str.54, ptr @.str.52, i32 1, i32 8 }, %struct.mtk_fixed_factor { i32 49, ptr @.str.55, ptr @.str.52, i32 1, i32 16 }, %struct.mtk_fixed_factor { i32 50, ptr @.str.56, ptr @.str.52, i32 1, i32 24 }, %struct.mtk_fixed_factor { i32 51, ptr @.str.57, ptr @.str.58, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 52, ptr @.str.59, ptr @.str.58, i32 1, i32 4 }, %struct.mtk_fixed_factor { i32 53, ptr @.str.60, ptr @.str.58, i32 1, i32 8 }, %struct.mtk_fixed_factor { i32 54, ptr @.str.61, ptr @.str.58, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 55, ptr @.str.62, ptr @.str.58, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 56, ptr @.str.63, ptr @.str.64, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 57, ptr @.str.65, ptr @.str.4, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 58, ptr @.str.66, ptr @.str.4, i32 1, i32 3 }, %struct.mtk_fixed_factor { i32 59, ptr @.str.67, ptr @.str.63, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 60, ptr @.str.68, ptr @.str.63, i32 1, i32 4 }, %struct.mtk_fixed_factor { i32 61, ptr @.str.69, ptr @.str.5, i32 1, i32 4 }], section ".init.rodata", align 4
@top_muxes = internal constant [31 x %struct.mtk_composite] [%struct.mtk_composite { i32 62, ptr @.str.70, ptr @axi_parents, ptr null, i32 4, i32 320, i32 0, i32 320, i8 0, i8 3, i8 32, i8 -1, i8 0, i8 0, i8 7 }, %struct.mtk_composite { i32 63, ptr @.str.71, ptr @smi_parents, ptr null, i32 4, i32 320, i32 0, i32 320, i8 8, i8 4, i8 15, i8 -1, i8 0, i8 0, i8 15 }, %struct.mtk_composite { i32 64, ptr @.str.72, ptr @mfg_parents, ptr null, i32 4, i32 320, i32 0, i32 320, i8 16, i8 4, i8 23, i8 -1, i8 0, i8 0, i8 13 }, %struct.mtk_composite { i32 65, ptr @.str.73, ptr @irda_parents, ptr null, i32 4, i32 320, i32 0, i32 320, i8 24, i8 2, i8 31, i8 -1, i8 0, i8 0, i8 3 }, %struct.mtk_composite { i32 66, ptr @.str.74, ptr @cam_parents, ptr null, i32 4, i32 324, i32 0, i32 324, i8 0, i8 3, i8 7, i8 -1, i8 0, i8 0, i8 8 }, %struct.mtk_composite { i32 67, ptr @.str.75, ptr @aud_intbus_parents, ptr null, i32 4, i32 324, i32 0, i32 324, i8 8, i8 2, i8 15, i8 -1, i8 0, i8 0, i8 3 }, %struct.mtk_composite { i32 68, ptr @.str.76, ptr @jpg_parents, ptr null, i32 4, i32 324, i32 0, i32 324, i8 16, i8 3, i8 23, i8 -1, i8 0, i8 0, i8 7 }, %struct.mtk_composite { i32 69, ptr @.str.77, ptr @disp_parents, ptr null, i32 4, i32 324, i32 0, i32 324, i8 24, i8 3, i8 31, i8 -1, i8 0, i8 0, i8 8 }, %struct.mtk_composite { i32 70, ptr @.str.78, ptr @msdc30_parents, ptr null, i32 4, i32 328, i32 0, i32 328, i8 0, i8 3, i8 7, i8 -1, i8 0, i8 0, i8 6 }, %struct.mtk_composite { i32 71, ptr @.str.79, ptr @msdc30_parents, ptr null, i32 4, i32 328, i32 0, i32 328, i8 8, i8 3, i8 15, i8 -1, i8 0, i8 0, i8 6 }, %struct.mtk_composite { i32 72, ptr @.str.80, ptr @msdc30_parents, ptr null, i32 4, i32 328, i32 0, i32 328, i8 16, i8 3, i8 23, i8 -1, i8 0, i8 0, i8 6 }, %struct.mtk_composite { i32 73, ptr @.str.81, ptr @msdc30_parents, ptr null, i32 4, i32 328, i32 0, i32 328, i8 24, i8 3, i8 31, i8 -1, i8 0, i8 0, i8 6 }, %struct.mtk_composite { i32 74, ptr @.str.82, ptr @usb20_parents, ptr null, i32 4, i32 332, i32 0, i32 332, i8 0, i8 2, i8 7, i8 -1, i8 0, i8 0, i8 3 }, %struct.mtk_composite { i32 75, ptr @.str.83, ptr @venc_parents, ptr null, i32 4, i32 336, i32 0, i32 336, i8 8, i8 3, i8 15, i8 -1, i8 0, i8 0, i8 8 }, %struct.mtk_composite { i32 76, ptr @.str.84, ptr @spi_parents, ptr null, i32 4, i32 336, i32 0, i32 336, i8 16, i8 3, i8 23, i8 -1, i8 0, i8 0, i8 6 }, %struct.mtk_composite { i32 77, ptr @.str.85, ptr @uart_parents, ptr null, i32 4, i32 336, i32 0, i32 336, i8 24, i8 2, i8 31, i8 -1, i8 0, i8 0, i8 2 }, %struct.mtk_composite { i32 78, ptr @.str.86, ptr @mem_parents, ptr null, i32 4, i32 344, i32 0, i32 344, i8 0, i8 2, i8 7, i8 -1, i8 0, i8 0, i8 2 }, %struct.mtk_composite { i32 79, ptr @.str.87, ptr @camtg_parents, ptr null, i32 4, i32 344, i32 0, i32 344, i8 8, i8 3, i8 15, i8 -1, i8 0, i8 0, i8 5 }, %struct.mtk_composite { i32 80, ptr @.str.88, ptr @audio_parents, ptr null, i32 4, i32 344, i32 0, i32 344, i8 24, i8 2, i8 31, i8 -1, i8 0, i8 0, i8 2 }, %struct.mtk_composite { i32 81, ptr @.str.89, ptr @fix_parents, ptr null, i32 4, i32 348, i32 0, i32 348, i8 0, i8 3, i8 7, i8 -1, i8 0, i8 0, i8 8 }, %struct.mtk_composite { i32 82, ptr @.str.90, ptr @vdec_parents, ptr null, i32 4, i32 348, i32 0, i32 348, i8 8, i8 4, i8 15, i8 -1, i8 0, i8 0, i8 16 }, %struct.mtk_composite { i32 83, ptr @.str.91, ptr @ddrphycfg_parents, ptr null, i32 4, i32 348, i32 0, i32 348, i8 16, i8 2, i8 23, i8 -1, i8 0, i8 0, i8 3 }, %struct.mtk_composite { i32 84, ptr @.str.92, ptr @dpilvds_parents, ptr null, i32 4, i32 348, i32 0, i32 348, i8 24, i8 3, i8 31, i8 -1, i8 0, i8 0, i8 5 }, %struct.mtk_composite { i32 85, ptr @.str.93, ptr @pmicspi_parents, ptr null, i32 4, i32 356, i32 0, i32 356, i8 0, i8 3, i8 7, i8 -1, i8 0, i8 0, i8 8 }, %struct.mtk_composite { i32 86, ptr @.str.94, ptr @msdc30_parents, ptr null, i32 4, i32 356, i32 0, i32 356, i8 8, i8 3, i8 15, i8 -1, i8 0, i8 0, i8 6 }, %struct.mtk_composite { i32 87, ptr @.str.95, ptr @smi_mfg_as_parents, ptr null, i32 4, i32 356, i32 0, i32 356, i8 16, i8 2, i8 23, i8 -1, i8 0, i8 0, i8 4 }, %struct.mtk_composite { i32 88, ptr @.str.96, ptr @gcpu_parents, ptr null, i32 4, i32 356, i32 0, i32 356, i8 24, i8 3, i8 31, i8 -1, i8 0, i8 0, i8 5 }, %struct.mtk_composite { i32 89, ptr @.str.97, ptr @dpi1_parents, ptr null, i32 4, i32 360, i32 0, i32 360, i8 0, i8 2, i8 7, i8 -1, i8 0, i8 0, i8 4 }, %struct.mtk_composite { i32 90, ptr @.str.98, ptr @cci_parents, ptr null, i32 4, i32 360, i32 0, i32 360, i8 8, i8 3, i8 15, i8 -1, i8 0, i8 0, i8 6 }, %struct.mtk_composite { i32 91, ptr @.str.99, ptr @apll_parents, ptr null, i32 4, i32 360, i32 0, i32 360, i8 16, i8 3, i8 23, i8 -1, i8 0, i8 0, i8 6 }, %struct.mtk_composite { i32 92, ptr @.str.100, ptr @hdmipll_parents, ptr null, i32 4, i32 360, i32 0, i32 360, i8 24, i8 2, i8 31, i8 -1, i8 0, i8 0, i8 4 }], section ".init.rodata", align 4
@mt8135_clk_lock = internal global %struct.spinlock zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"\013%s(): could not register clock provider: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"dsi0_lntc_dsiclk\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"clk_null\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"hdmitx_clkdig_cts\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"clkph_mck\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"cpum_tck_in\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"mainpll_806m\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"mainpll\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"mainpll_537p3m\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"mainpll_322p4m\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"mainpll_230p3m\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"univpll_624m\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"univpll\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"univpll_416m\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"univpll_249p6m\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"univpll_178p3m\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"univpll_48m\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"mmpll_d2\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"mmpll\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"mmpll_d3\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"mmpll_d5\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"mmpll_d7\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"mmpll_d4\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"mmpll_d6\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"syspll_d2\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"syspll_d4\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"syspll_d6\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"syspll_d8\00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c"syspll_d10\00", align 1
@.str.30 = private unnamed_addr constant [11 x i8] c"syspll_d12\00", align 1
@.str.31 = private unnamed_addr constant [11 x i8] c"syspll_d16\00", align 1
@.str.32 = private unnamed_addr constant [11 x i8] c"syspll_d24\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"syspll_d3\00", align 1
@.str.34 = private unnamed_addr constant [12 x i8] c"syspll_d2p5\00", align 1
@.str.35 = private unnamed_addr constant [10 x i8] c"syspll_d5\00", align 1
@.str.36 = private unnamed_addr constant [12 x i8] c"syspll_d3p5\00", align 1
@.str.37 = private unnamed_addr constant [12 x i8] c"univpll1_d2\00", align 1
@.str.38 = private unnamed_addr constant [12 x i8] c"univpll1_d4\00", align 1
@.str.39 = private unnamed_addr constant [12 x i8] c"univpll1_d6\00", align 1
@.str.40 = private unnamed_addr constant [12 x i8] c"univpll1_d8\00", align 1
@.str.41 = private unnamed_addr constant [13 x i8] c"univpll1_d10\00", align 1
@.str.42 = private unnamed_addr constant [12 x i8] c"univpll2_d2\00", align 1
@.str.43 = private unnamed_addr constant [12 x i8] c"univpll2_d4\00", align 1
@.str.44 = private unnamed_addr constant [12 x i8] c"univpll2_d6\00", align 1
@.str.45 = private unnamed_addr constant [12 x i8] c"univpll2_d8\00", align 1
@.str.46 = private unnamed_addr constant [11 x i8] c"univpll_d3\00", align 1
@.str.47 = private unnamed_addr constant [11 x i8] c"univpll_d5\00", align 1
@.str.48 = private unnamed_addr constant [11 x i8] c"univpll_d7\00", align 1
@.str.49 = private unnamed_addr constant [12 x i8] c"univpll_d10\00", align 1
@.str.50 = private unnamed_addr constant [12 x i8] c"univpll_d26\00", align 1
@.str.51 = private unnamed_addr constant [8 x i8] c"apll_ck\00", align 1
@.str.52 = private unnamed_addr constant [7 x i8] c"audpll\00", align 1
@.str.53 = private unnamed_addr constant [8 x i8] c"apll_d4\00", align 1
@.str.54 = private unnamed_addr constant [8 x i8] c"apll_d8\00", align 1
@.str.55 = private unnamed_addr constant [9 x i8] c"apll_d16\00", align 1
@.str.56 = private unnamed_addr constant [9 x i8] c"apll_d24\00", align 1
@.str.57 = private unnamed_addr constant [11 x i8] c"lvdspll_d2\00", align 1
@.str.58 = private unnamed_addr constant [8 x i8] c"lvdspll\00", align 1
@.str.59 = private unnamed_addr constant [11 x i8] c"lvdspll_d4\00", align 1
@.str.60 = private unnamed_addr constant [11 x i8] c"lvdspll_d8\00", align 1
@.str.61 = private unnamed_addr constant [18 x i8] c"lvdstx_clkdig_cts\00", align 1
@.str.62 = private unnamed_addr constant [13 x i8] c"vpll_dpix_ck\00", align 1
@.str.63 = private unnamed_addr constant [12 x i8] c"tvhdmi_h_ck\00", align 1
@.str.64 = private unnamed_addr constant [7 x i8] c"tvdpll\00", align 1
@.str.65 = private unnamed_addr constant [17 x i8] c"hdmitx_clkdig_d2\00", align 1
@.str.66 = private unnamed_addr constant [17 x i8] c"hdmitx_clkdig_d3\00", align 1
@.str.67 = private unnamed_addr constant [10 x i8] c"tvhdmi_d2\00", align 1
@.str.68 = private unnamed_addr constant [10 x i8] c"tvhdmi_d4\00", align 1
@.str.69 = private unnamed_addr constant [14 x i8] c"mempll_mck_d4\00", align 1
@.str.70 = private unnamed_addr constant [8 x i8] c"axi_sel\00", align 1
@axi_parents = internal constant [7 x ptr] [ptr @.str.101, ptr @.str.33, ptr @.str.26, ptr @.str.27, ptr @.str.47, ptr @.str.42, ptr @.str.36], section ".init.rodata", align 4
@.str.71 = private unnamed_addr constant [8 x i8] c"smi_sel\00", align 1
@smi_parents = internal constant [15 x ptr] [ptr @.str.101, ptr @.str.5, ptr @.str.34, ptr @.str.33, ptr @.str.28, ptr @.str.47, ptr @.str.37, ptr @.str.39, ptr @.str.20, ptr @.str.23, ptr @.str.21, ptr @.str.24, ptr @.str.22, ptr @.str.102, ptr @.str.58], section ".init.rodata", align 4
@.str.72 = private unnamed_addr constant [8 x i8] c"mfg_sel\00", align 1
@mfg_parents = internal constant [13 x ptr] [ptr @.str.101, ptr @.str.38, ptr @.str.25, ptr @.str.34, ptr @.str.33, ptr @.str.47, ptr @.str.37, ptr @.str.18, ptr @.str.20, ptr @.str.23, ptr @.str.21, ptr @.str.24, ptr @.str.22], section ".init.rodata", align 4
@.str.73 = private unnamed_addr constant [9 x i8] c"irda_sel\00", align 1
@irda_parents = internal constant [3 x ptr] [ptr @.str.101, ptr @.str.45, ptr @.str.39], section ".init.rodata", align 4
@.str.74 = private unnamed_addr constant [8 x i8] c"cam_sel\00", align 1
@cam_parents = internal constant [8 x ptr] [ptr @.str.101, ptr @.str.33, ptr @.str.36, ptr @.str.26, ptr @.str.47, ptr @.str.42, ptr @.str.48, ptr @.str.38], section ".init.rodata", align 4
@.str.75 = private unnamed_addr constant [15 x i8] c"aud_intbus_sel\00", align 1
@aud_intbus_parents = internal constant [3 x ptr] [ptr @.str.101, ptr @.str.27, ptr @.str.49], section ".init.rodata", align 4
@.str.76 = private unnamed_addr constant [8 x i8] c"jpg_sel\00", align 1
@jpg_parents = internal constant [7 x ptr] [ptr @.str.101, ptr @.str.35, ptr @.str.26, ptr @.str.33, ptr @.str.48, ptr @.str.42, ptr @.str.47], section ".init.rodata", align 4
@.str.77 = private unnamed_addr constant [9 x i8] c"disp_sel\00", align 1
@disp_parents = internal constant [8 x ptr] [ptr @.str.101, ptr @.str.36, ptr @.str.33, ptr @.str.42, ptr @.str.47, ptr @.str.37, ptr @.str.58, ptr @.str.102], section ".init.rodata", align 4
@.str.78 = private unnamed_addr constant [13 x i8] c"msdc30_1_sel\00", align 1
@msdc30_parents = internal constant [6 x ptr] [ptr @.str.101, ptr @.str.27, ptr @.str.35, ptr @.str.38, ptr @.str.43, ptr @.str.103], section ".init.rodata", align 4
@.str.79 = private unnamed_addr constant [13 x i8] c"msdc30_2_sel\00", align 1
@.str.80 = private unnamed_addr constant [13 x i8] c"msdc30_3_sel\00", align 1
@.str.81 = private unnamed_addr constant [13 x i8] c"msdc30_4_sel\00", align 1
@.str.82 = private unnamed_addr constant [10 x i8] c"usb20_sel\00", align 1
@usb20_parents = internal constant [3 x ptr] [ptr @.str.101, ptr @.str.44, ptr @.str.41], section ".init.rodata", align 4
@.str.83 = private unnamed_addr constant [9 x i8] c"venc_sel\00", align 1
@venc_parents = internal constant [8 x ptr] [ptr @.str.101, ptr @.str.33, ptr @.str.28, ptr @.str.47, ptr @.str.39, ptr @.str.23, ptr @.str.21, ptr @.str.24], section ".init.rodata", align 4
@.str.84 = private unnamed_addr constant [8 x i8] c"spi_sel\00", align 1
@spi_parents = internal constant [6 x ptr] [ptr @.str.101, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.39, ptr @.str.40], section ".init.rodata", align 4
@.str.85 = private unnamed_addr constant [9 x i8] c"uart_sel\00", align 1
@uart_parents = internal constant [2 x ptr] [ptr @.str.101, ptr @.str.45], section ".init.rodata", align 4
@.str.86 = private unnamed_addr constant [8 x i8] c"mem_sel\00", align 1
@mem_parents = internal constant [2 x ptr] [ptr @.str.101, ptr @.str.5], section ".init.rodata", align 4
@.str.87 = private unnamed_addr constant [10 x i8] c"camtg_sel\00", align 1
@camtg_parents = internal constant [5 x ptr] [ptr @.str.101, ptr @.str.50, ptr @.str.39, ptr @.str.31, ptr @.str.28], section ".init.rodata", align 4
@.str.88 = private unnamed_addr constant [10 x i8] c"audio_sel\00", align 1
@audio_parents = internal constant [2 x ptr] [ptr @.str.101, ptr @.str.32], section ".init.rodata", align 4
@.str.89 = private unnamed_addr constant [8 x i8] c"fix_sel\00", align 1
@fix_parents = internal constant [8 x ptr] [ptr @.str.104, ptr @.str.101, ptr @.str.47, ptr @.str.48, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40], section ".init.rodata", align 4
@.str.90 = private unnamed_addr constant [9 x i8] c"vdec_sel\00", align 1
@vdec_parents = internal constant [16 x ptr] [ptr @.str.101, ptr @.str.102, ptr @.str.5, ptr @.str.34, ptr @.str.33, ptr @.str.36, ptr @.str.26, ptr @.str.35, ptr @.str.27, ptr @.str.28, ptr @.str.37, ptr @.str.42, ptr @.str.48, ptr @.str.49, ptr @.str.43, ptr @.str.58], section ".init.rodata", align 4
@.str.91 = private unnamed_addr constant [14 x i8] c"ddrphycfg_sel\00", align 1
@ddrphycfg_parents = internal constant [3 x ptr] [ptr @.str.101, ptr @.str.70, ptr @.str.30], section ".init.rodata", align 4
@.str.92 = private unnamed_addr constant [12 x i8] c"dpilvds_sel\00", align 1
@dpilvds_parents = internal constant [5 x ptr] [ptr @.str.101, ptr @.str.58, ptr @.str.57, ptr @.str.59, ptr @.str.60], section ".init.rodata", align 4
@.str.93 = private unnamed_addr constant [12 x i8] c"pmicspi_sel\00", align 1
@pmicspi_parents = internal constant [8 x ptr] [ptr @.str.101, ptr @.str.44, ptr @.str.28, ptr @.str.29, ptr @.str.41, ptr @.str.69, ptr @.str.50, ptr @.str.32], section ".init.rodata", align 4
@.str.94 = private unnamed_addr constant [13 x i8] c"msdc30_0_sel\00", align 1
@.str.95 = private unnamed_addr constant [15 x i8] c"smi_mfg_as_sel\00", align 1
@smi_mfg_as_parents = internal constant [4 x ptr] [ptr @.str.101, ptr @.str.71, ptr @.str.72, ptr @.str.86], section ".init.rodata", align 4
@.str.96 = private unnamed_addr constant [9 x i8] c"gcpu_sel\00", align 1
@gcpu_parents = internal constant [5 x ptr] [ptr @.str.101, ptr @.str.26, ptr @.str.48, ptr @.str.35, ptr @.str.27], section ".init.rodata", align 4
@.str.97 = private unnamed_addr constant [9 x i8] c"dpi1_sel\00", align 1
@dpi1_parents = internal constant [4 x ptr] [ptr @.str.101, ptr @.str.63, ptr @.str.67, ptr @.str.68], section ".init.rodata", align 4
@.str.98 = private unnamed_addr constant [8 x i8] c"cci_sel\00", align 1
@cci_parents = internal constant [6 x ptr] [ptr @.str.101, ptr @.str.9, ptr @.str.46, ptr @.str.34, ptr @.str.33, ptr @.str.35], section ".init.rodata", align 4
@.str.99 = private unnamed_addr constant [9 x i8] c"apll_sel\00", align 1
@apll_parents = internal constant [6 x ptr] [ptr @.str.101, ptr @.str.51, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56], section ".init.rodata", align 4
@.str.100 = private unnamed_addr constant [12 x i8] c"hdmipll_sel\00", align 1
@hdmipll_parents = internal constant [4 x ptr] [ptr @.str.101, ptr @.str.4, ptr @.str.65, ptr @.str.66], section ".init.rodata", align 4
@.str.101 = private unnamed_addr constant [7 x i8] c"clk26m\00", align 1
@.str.102 = private unnamed_addr constant [8 x i8] c"vdecpll\00", align 1
@.str.103 = private unnamed_addr constant [8 x i8] c"msdcpll\00", align 1
@.str.104 = private unnamed_addr constant [7 x i8] c"rtc32k\00", align 1
@infra_clks = internal constant [13 x %struct.mtk_gate] [%struct.mtk_gate { i32 1, ptr @.str.105, ptr @.str.70, ptr @infra_cg_regs, i32 23, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 2, ptr @.str.106, ptr @.str.93, ptr @infra_cg_regs, i32 22, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 3, ptr @.str.107, ptr @.str.70, ptr @infra_cg_regs, i32 21, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 4, ptr @.str.108, ptr @.str.70, ptr @infra_cg_regs, i32 20, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 5, ptr @.str.109, ptr @.str.70, ptr @infra_cg_regs, i32 16, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 6, ptr @.str.110, ptr @.str.6, ptr @infra_cg_regs, i32 15, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 7, ptr @.str.111, ptr @.str.86, ptr @infra_cg_regs, i32 8, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 8, ptr @.str.112, ptr @.str.70, ptr @infra_cg_regs, i32 7, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 9, ptr @.str.113, ptr @.str.70, ptr @infra_cg_regs, i32 6, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 10, ptr @.str.114, ptr @.str.75, ptr @infra_cg_regs, i32 5, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 11, ptr @.str.115, ptr @.str.70, ptr @infra_cg_regs, i32 2, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 12, ptr @.str.116, ptr @.str.71, ptr @infra_cg_regs, i32 1, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 13, ptr @.str.117, ptr @.str.70, ptr @infra_cg_regs, i32 0, ptr @mtk_clk_gate_ops_setclr, i32 0 }], section ".init.rodata", align 4
@__func__.mtk_infrasys_init = private unnamed_addr constant [18 x i8] c"mtk_infrasys_init\00", align 1
@.str.105 = private unnamed_addr constant [13 x i8] c"pmic_wrap_ck\00", align 1
@infra_cg_regs = internal constant %struct.mtk_gate_regs { i32 72, i32 68, i32 64 }, align 4
@mtk_clk_gate_ops_setclr = external dso_local constant %struct.clk_ops, align 4
@.str.106 = private unnamed_addr constant [11 x i8] c"pmicspi_ck\00", align 1
@.str.107 = private unnamed_addr constant [14 x i8] c"ccif1_ap_ctrl\00", align 1
@.str.108 = private unnamed_addr constant [14 x i8] c"ccif0_ap_ctrl\00", align 1
@.str.109 = private unnamed_addr constant [6 x i8] c"kp_ck\00", align 1
@.str.110 = private unnamed_addr constant [8 x i8] c"cpum_ck\00", align 1
@.str.111 = private unnamed_addr constant [7 x i8] c"m4u_ck\00", align 1
@.str.112 = private unnamed_addr constant [10 x i8] c"mfgaxi_ck\00", align 1
@.str.113 = private unnamed_addr constant [10 x i8] c"devapc_ck\00", align 1
@.str.114 = private unnamed_addr constant [9 x i8] c"audio_ck\00", align 1
@.str.115 = private unnamed_addr constant [11 x i8] c"mfg_bus_ck\00", align 1
@.str.116 = private unnamed_addr constant [7 x i8] c"smi_ck\00", align 1
@.str.117 = private unnamed_addr constant [10 x i8] c"dbgclk_ck\00", align 1
@__func__.mtk_pericfg_init = private unnamed_addr constant [17 x i8] c"mtk_pericfg_init\00", align 1
@peri_gates = internal constant [41 x %struct.mtk_gate] [%struct.mtk_gate { i32 1, ptr @.str.118, ptr @.str.70, ptr @peri0_cg_regs, i32 31, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 2, ptr @.str.119, ptr @.str.70, ptr @peri0_cg_regs, i32 30, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 3, ptr @.str.120, ptr @.str.70, ptr @peri0_cg_regs, i32 29, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 4, ptr @.str.121, ptr @.str.70, ptr @peri0_cg_regs, i32 28, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 5, ptr @.str.122, ptr @.str.70, ptr @peri0_cg_regs, i32 27, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 6, ptr @.str.123, ptr @.str.70, ptr @peri0_cg_regs, i32 26, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 7, ptr @.str.124, ptr @.str.70, ptr @peri0_cg_regs, i32 25, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 8, ptr @.str.125, ptr @.str.70, ptr @peri0_cg_regs, i32 24, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 9, ptr @.str.126, ptr @.str.70, ptr @peri0_cg_regs, i32 23, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 10, ptr @.str.127, ptr @.str.70, ptr @peri0_cg_regs, i32 22, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 11, ptr @.str.128, ptr @.str.73, ptr @peri0_cg_regs, i32 21, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 12, ptr @.str.129, ptr @.str.70, ptr @peri0_cg_regs, i32 20, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 13, ptr @.str.130, ptr @.str.70, ptr @peri0_cg_regs, i32 19, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 14, ptr @.str.131, ptr @.str.70, ptr @peri0_cg_regs, i32 18, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 15, ptr @.str.132, ptr @.str.81, ptr @peri0_cg_regs, i32 17, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 16, ptr @.str.133, ptr @.str.80, ptr @peri0_cg_regs, i32 16, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 17, ptr @.str.134, ptr @.str.79, ptr @peri0_cg_regs, i32 15, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 18, ptr @.str.135, ptr @.str.78, ptr @peri0_cg_regs, i32 14, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 19, ptr @.str.136, ptr @.str.94, ptr @peri0_cg_regs, i32 13, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 20, ptr @.str.137, ptr @.str.70, ptr @peri0_cg_regs, i32 12, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 21, ptr @.str.138, ptr @.str.82, ptr @peri0_cg_regs, i32 11, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 22, ptr @.str.139, ptr @.str.82, ptr @peri0_cg_regs, i32 10, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 23, ptr @.str.140, ptr @.str.70, ptr @peri0_cg_regs, i32 9, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 24, ptr @.str.141, ptr @.str.70, ptr @peri0_cg_regs, i32 8, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 25, ptr @.str.142, ptr @.str.70, ptr @peri0_cg_regs, i32 7, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 26, ptr @.str.143, ptr @.str.70, ptr @peri0_cg_regs, i32 6, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 27, ptr @.str.144, ptr @.str.70, ptr @peri0_cg_regs, i32 5, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 28, ptr @.str.145, ptr @.str.70, ptr @peri0_cg_regs, i32 4, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 29, ptr @.str.146, ptr @.str.70, ptr @peri0_cg_regs, i32 3, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 30, ptr @.str.147, ptr @.str.70, ptr @peri0_cg_regs, i32 2, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 31, ptr @.str.148, ptr @.str.70, ptr @peri0_cg_regs, i32 1, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 32, ptr @.str.149, ptr @.str.70, ptr @peri0_cg_regs, i32 0, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 33, ptr @.str.150, ptr @.str.70, ptr @peri1_cg_regs, i32 8, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 34, ptr @.str.151, ptr @.str.70, ptr @peri1_cg_regs, i32 7, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 35, ptr @.str.152, ptr @.str.70, ptr @peri1_cg_regs, i32 6, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 36, ptr @.str.153, ptr @.str.96, ptr @peri1_cg_regs, i32 5, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 37, ptr @.str.154, ptr @.str.101, ptr @peri1_cg_regs, i32 4, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 38, ptr @.str.155, ptr @.str.84, ptr @peri1_cg_regs, i32 3, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 39, ptr @.str.156, ptr @.str.101, ptr @peri1_cg_regs, i32 2, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 40, ptr @.str.157, ptr @.str.70, ptr @peri1_cg_regs, i32 1, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 41, ptr @.str.158, ptr @.str.70, ptr @peri1_cg_regs, i32 0, ptr @mtk_clk_gate_ops_setclr, i32 0 }], section ".init.rodata", align 4
@peri_clks = internal constant [4 x %struct.mtk_composite] [%struct.mtk_composite { i32 42, ptr @.str.159, ptr @uart_ck_sel_parents, ptr null, i32 4, i32 1036, i32 0, i32 0, i8 0, i8 1, i8 -1, i8 -1, i8 0, i8 0, i8 2 }, %struct.mtk_composite { i32 43, ptr @.str.160, ptr @uart_ck_sel_parents, ptr null, i32 4, i32 1036, i32 0, i32 0, i8 1, i8 1, i8 -1, i8 -1, i8 0, i8 0, i8 2 }, %struct.mtk_composite { i32 44, ptr @.str.161, ptr @uart_ck_sel_parents, ptr null, i32 4, i32 1036, i32 0, i32 0, i8 2, i8 1, i8 -1, i8 -1, i8 0, i8 0, i8 2 }, %struct.mtk_composite { i32 45, ptr @.str.162, ptr @uart_ck_sel_parents, ptr null, i32 4, i32 1036, i32 0, i32 0, i8 3, i8 1, i8 -1, i8 -1, i8 0, i8 0, i8 2 }], section ".init.rodata", align 4
@.str.118 = private unnamed_addr constant [8 x i8] c"i2c5_ck\00", align 1
@peri0_cg_regs = internal constant %struct.mtk_gate_regs { i32 24, i32 16, i32 8 }, align 4
@.str.119 = private unnamed_addr constant [8 x i8] c"i2c4_ck\00", align 1
@.str.120 = private unnamed_addr constant [8 x i8] c"i2c3_ck\00", align 1
@.str.121 = private unnamed_addr constant [8 x i8] c"i2c2_ck\00", align 1
@.str.122 = private unnamed_addr constant [8 x i8] c"i2c1_ck\00", align 1
@.str.123 = private unnamed_addr constant [8 x i8] c"i2c0_ck\00", align 1
@.str.124 = private unnamed_addr constant [9 x i8] c"uart3_ck\00", align 1
@.str.125 = private unnamed_addr constant [9 x i8] c"uart2_ck\00", align 1
@.str.126 = private unnamed_addr constant [9 x i8] c"uart1_ck\00", align 1
@.str.127 = private unnamed_addr constant [9 x i8] c"uart0_ck\00", align 1
@.str.128 = private unnamed_addr constant [8 x i8] c"irda_ck\00", align 1
@.str.129 = private unnamed_addr constant [7 x i8] c"nli_ck\00", align 1
@.str.130 = private unnamed_addr constant [10 x i8] c"md_hif_ck\00", align 1
@.str.131 = private unnamed_addr constant [10 x i8] c"ap_hif_ck\00", align 1
@.str.132 = private unnamed_addr constant [12 x i8] c"msdc30_3_ck\00", align 1
@.str.133 = private unnamed_addr constant [12 x i8] c"msdc30_2_ck\00", align 1
@.str.134 = private unnamed_addr constant [12 x i8] c"msdc30_1_ck\00", align 1
@.str.135 = private unnamed_addr constant [12 x i8] c"msdc20_2_ck\00", align 1
@.str.136 = private unnamed_addr constant [12 x i8] c"msdc20_1_ck\00", align 1
@.str.137 = private unnamed_addr constant [10 x i8] c"ap_dma_ck\00", align 1
@.str.138 = private unnamed_addr constant [8 x i8] c"usb1_ck\00", align 1
@.str.139 = private unnamed_addr constant [8 x i8] c"usb0_ck\00", align 1
@.str.140 = private unnamed_addr constant [7 x i8] c"pwm_ck\00", align 1
@.str.141 = private unnamed_addr constant [8 x i8] c"pwm7_ck\00", align 1
@.str.142 = private unnamed_addr constant [8 x i8] c"pwm6_ck\00", align 1
@.str.143 = private unnamed_addr constant [8 x i8] c"pwm5_ck\00", align 1
@.str.144 = private unnamed_addr constant [8 x i8] c"pwm4_ck\00", align 1
@.str.145 = private unnamed_addr constant [8 x i8] c"pwm3_ck\00", align 1
@.str.146 = private unnamed_addr constant [8 x i8] c"pwm2_ck\00", align 1
@.str.147 = private unnamed_addr constant [8 x i8] c"pwm1_ck\00", align 1
@.str.148 = private unnamed_addr constant [9 x i8] c"therm_ck\00", align 1
@.str.149 = private unnamed_addr constant [7 x i8] c"nfi_ck\00", align 1
@.str.150 = private unnamed_addr constant [10 x i8] c"usbslv_ck\00", align 1
@peri1_cg_regs = internal constant %struct.mtk_gate_regs { i32 28, i32 20, i32 12 }, align 4
@.str.151 = private unnamed_addr constant [12 x i8] c"usb1_mcu_ck\00", align 1
@.str.152 = private unnamed_addr constant [12 x i8] c"usb0_mcu_ck\00", align 1
@.str.153 = private unnamed_addr constant [8 x i8] c"gcpu_ck\00", align 1
@.str.154 = private unnamed_addr constant [9 x i8] c"fhctl_ck\00", align 1
@.str.155 = private unnamed_addr constant [8 x i8] c"spi1_ck\00", align 1
@.str.156 = private unnamed_addr constant [10 x i8] c"auxadc_ck\00", align 1
@.str.157 = private unnamed_addr constant [14 x i8] c"peri_pwrap_ck\00", align 1
@.str.158 = private unnamed_addr constant [8 x i8] c"i2c6_ck\00", align 1
@.str.159 = private unnamed_addr constant [13 x i8] c"uart0_ck_sel\00", align 1
@uart_ck_sel_parents = internal constant [2 x ptr] [ptr @.str.101, ptr @.str.85], section ".init.rodata", align 4
@.str.160 = private unnamed_addr constant [13 x i8] c"uart1_ck_sel\00", align 1
@.str.161 = private unnamed_addr constant [13 x i8] c"uart2_ck_sel\00", align 1
@.str.162 = private unnamed_addr constant [13 x i8] c"uart3_ck_sel\00", align 1
@plls = internal constant [10 x %struct.mtk_pll_data] [%struct.mtk_pll_data { i32 1, ptr @.str.163, i32 512, i32 536, i32 -2147483647, i32 516, i32 0, i32 0, i8 0, i32 24, i32 0, ptr null, i32 134217728, i32 0, i32 2000000000, i32 21, i32 0, i32 516, i32 0, i32 0, ptr null, ptr null, i32 0, i8 0 }, %struct.mtk_pll_data { i32 2, ptr @.str.164, i32 716, i32 740, i32 -2147483647, i32 720, i32 0, i32 0, i8 0, i32 24, i32 0, ptr null, i32 134217728, i32 0, i32 2000000000, i32 21, i32 0, i32 720, i32 0, i32 0, ptr null, ptr null, i32 0, i8 0 }, %struct.mtk_pll_data { i32 3, ptr @.str.8, i32 540, i32 564, i32 -268435455, i32 540, i32 0, i32 0, i8 0, i32 6, i32 1, ptr null, i32 134217728, i32 0, i32 2000000000, i32 21, i32 0, i32 544, i32 0, i32 0, ptr null, ptr null, i32 0, i8 0 }, %struct.mtk_pll_data { i32 4, ptr @.str.13, i32 568, i32 592, i32 -218103807, i32 568, i32 0, i32 0, i8 0, i32 6, i32 1, ptr null, i32 134217728, i32 0, i32 2000000000, i32 7, i32 0, i32 568, i32 9, i32 0, ptr null, ptr null, i32 0, i8 0 }, %struct.mtk_pll_data { i32 5, ptr @.str.19, i32 596, i32 620, i32 -268435455, i32 596, i32 0, i32 0, i8 0, i32 6, i32 1, ptr null, i32 134217728, i32 0, i32 2000000000, i32 21, i32 0, i32 600, i32 0, i32 0, ptr null, ptr null, i32 0, i8 0 }, %struct.mtk_pll_data { i32 6, ptr @.str.103, i32 632, i32 656, i32 -2147483647, i32 632, i32 0, i32 0, i8 0, i32 6, i32 0, ptr null, i32 134217728, i32 0, i32 2000000000, i32 21, i32 0, i32 636, i32 0, i32 0, ptr null, ptr null, i32 0, i8 0 }, %struct.mtk_pll_data { i32 7, ptr @.str.64, i32 660, i32 684, i32 -2147483647, i32 660, i32 0, i32 0, i8 0, i32 6, i32 0, ptr null, i32 134217728, i32 0, i32 2000000000, i32 31, i32 0, i32 664, i32 0, i32 0, ptr null, ptr null, i32 0, i8 0 }, %struct.mtk_pll_data { i32 8, ptr @.str.58, i32 688, i32 712, i32 -2147483647, i32 688, i32 0, i32 0, i8 0, i32 6, i32 0, ptr null, i32 134217728, i32 0, i32 2000000000, i32 21, i32 0, i32 692, i32 0, i32 0, ptr null, ptr null, i32 0, i8 0 }, %struct.mtk_pll_data { i32 9, ptr @.str.52, i32 744, i32 768, i32 -2147483647, i32 744, i32 760, i32 0, i8 0, i32 6, i32 0, ptr null, i32 134217728, i32 0, i32 2000000000, i32 31, i32 0, i32 748, i32 0, i32 0, ptr null, ptr null, i32 0, i8 0 }, %struct.mtk_pll_data { i32 10, ptr @.str.102, i32 772, i32 796, i32 -2147483647, i32 688, i32 0, i32 0, i8 0, i32 6, i32 0, ptr null, i32 134217728, i32 0, i32 2000000000, i32 21, i32 0, i32 776, i32 0, i32 0, ptr null, ptr null, i32 0, i8 0 }], align 4
@.str.163 = private unnamed_addr constant [8 x i8] c"armpll1\00", align 1
@.str.164 = private unnamed_addr constant [8 x i8] c"armpll2\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__of_table_mtk_apmixedsys, ptr @__of_table_mtk_infrasys, ptr @__of_table_mtk_pericfg, ptr @__of_table_mtk_topckgen], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @mtk_topckgen_init(ptr noundef %0) #0 section ".init.text" {
  %2 = tail call ptr @of_iomap(ptr noundef %0, i32 noundef 0) #3
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.mtk_topckgen_init) #4
  br label %22

6:                                                ; preds = %1
  %7 = tail call ptr @mtk_alloc_clk_data(i32 noundef 93) #3
  tail call void @mtk_clk_register_factors(ptr noundef nonnull @root_clk_alias, i32 noundef 4, ptr noundef %7) #3
  tail call void @mtk_clk_register_factors(ptr noundef nonnull @top_divs, i32 noundef 57, ptr noundef %7) #3
  tail call void @mtk_clk_register_composites(ptr noundef nonnull @top_muxes, i32 noundef 31, ptr noundef nonnull %2, ptr noundef nonnull @mt8135_clk_lock, ptr noundef %7) #3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr ptr, ptr %8, i32 90
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 @clk_prepare(ptr noundef %10) #3
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %6
  %14 = tail call i32 @clk_enable(ptr noundef %10) #3
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %13
  tail call void @clk_unprepare(ptr noundef %10) #3
  br label %17

17:                                               ; preds = %16, %13, %6
  %18 = tail call i32 @of_clk_add_provider(ptr noundef %0, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef %7) #3
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %17
  %21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.mtk_topckgen_init, i32 noundef %18) #4
  br label %22

22:                                               ; preds = %20, %17, %4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @mtk_infrasys_init(ptr noundef %0) #0 section ".init.text" {
  %2 = tail call ptr @mtk_alloc_clk_data(i32 noundef 14) #3
  %3 = tail call i32 @mtk_clk_register_gates(ptr noundef %0, ptr noundef nonnull @infra_clks, i32 noundef 13, ptr noundef %2) #3
  %4 = load ptr, ptr %2, align 4
  %5 = getelementptr ptr, ptr %4, i32 7
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @clk_prepare(ptr noundef %6) #3
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = tail call i32 @clk_enable(ptr noundef %6) #3
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %9
  tail call void @clk_unprepare(ptr noundef %6) #3
  br label %13

13:                                               ; preds = %12, %9, %1
  %14 = tail call i32 @of_clk_add_provider(ptr noundef %0, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef %2) #3
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %13
  %17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.mtk_infrasys_init, i32 noundef %14) #4
  br label %18

18:                                               ; preds = %16, %13
  tail call void @mtk_register_reset_controller(ptr noundef %0, i32 noundef 2, i32 noundef 48) #3
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @mtk_pericfg_init(ptr noundef %0) #0 section ".init.text" {
  %2 = tail call ptr @of_iomap(ptr noundef %0, i32 noundef 0) #3
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.mtk_pericfg_init) #4
  br label %14

6:                                                ; preds = %1
  %7 = tail call ptr @mtk_alloc_clk_data(i32 noundef 46) #3
  %8 = tail call i32 @mtk_clk_register_gates(ptr noundef %0, ptr noundef nonnull @peri_gates, i32 noundef 41, ptr noundef %7) #3
  tail call void @mtk_clk_register_composites(ptr noundef nonnull @peri_clks, i32 noundef 4, ptr noundef nonnull %2, ptr noundef nonnull @mt8135_clk_lock, ptr noundef %7) #3
  %9 = tail call i32 @of_clk_add_provider(ptr noundef %0, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef %7) #3
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %6
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.mtk_pericfg_init, i32 noundef %9) #4
  br label %13

13:                                               ; preds = %11, %6
  tail call void @mtk_register_reset_controller(ptr noundef %0, i32 noundef 2, i32 noundef 0) #3
  br label %14

14:                                               ; preds = %13, %4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @mtk_apmixedsys_init(ptr noundef %0) #0 section ".init.text" {
  %2 = tail call ptr @mtk_alloc_clk_data(i32 noundef 11) #3
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @mtk_clk_register_plls(ptr noundef %0, ptr noundef nonnull @plls, i32 noundef 10, ptr noundef nonnull %2) #3
  br label %5

5:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mtk_alloc_clk_data(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_clk_register_factors(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_clk_register_composites(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_onecell_get(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_clk_register_gates(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_register_reset_controller(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_clk_register_plls(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { cold nounwind }

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
