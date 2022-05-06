; ModuleID = '/llk/IR/drivers/clk/mediatek/clk-mt8173.c_pt.bc'
source_filename = "../drivers/clk/mediatek/clk-mt8173.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.mtk_fixed_clk = type { i32, ptr, ptr, i32 }
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
%struct.mtk_pll_div_table = type { i32, i32 }

@__of_table_mtk_topckgen = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8173-topckgen\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mtk_topckgen_init }, section "__clk_of_table", align 4
@__of_table_mtk_infrasys = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8173-infracfg\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mtk_infrasys_init }, section "__clk_of_table", align 4
@__of_table_mtk_pericfg = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8173-pericfg\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mtk_pericfg_init }, section "__clk_of_table", align 4
@__of_table_mtk_apmixedsys = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8173-apmixedsys\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mtk_apmixedsys_init }, section "__clk_of_table", align 4
@__of_table_mtk_imgsys = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8173-imgsys\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mtk_imgsys_init }, section "__clk_of_table", align 4
@__of_table_mtk_vdecsys = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8173-vdecsys\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mtk_vdecsys_init }, section "__clk_of_table", align 4
@__of_table_mtk_vencsys = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8173-vencsys\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mtk_vencsys_init }, section "__clk_of_table", align 4
@__of_table_mtk_vencltsys = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8173-vencltsys\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mtk_vencltsys_init }, section "__clk_of_table", align 4
@.str = private unnamed_addr constant [24 x i8] c"\013%s(): ioremap failed\0A\00", align 1
@__func__.mtk_topckgen_init = private unnamed_addr constant [18 x i8] c"mtk_topckgen_init\00", align 1
@mt8173_top_clk_data = internal unnamed_addr global ptr null, section ".init.data", align 4
@fixed_clks = internal constant [6 x %struct.mtk_fixed_clk] [%struct.mtk_fixed_clk { i32 1, ptr @.str.2, ptr @.str.3, i32 0 }, %struct.mtk_fixed_clk { i32 3, ptr @.str.4, ptr @.str.3, i32 125000000 }, %struct.mtk_fixed_clk { i32 138, ptr @.str.5, ptr @.str.3, i32 0 }, %struct.mtk_fixed_clk { i32 139, ptr @.str.6, ptr @.str.3, i32 0 }, %struct.mtk_fixed_clk { i32 140, ptr @.str.7, ptr @.str.8, i32 0 }, %struct.mtk_fixed_clk { i32 141, ptr @.str.9, ptr @.str.8, i32 0 }], section ".init.rodata", align 4
@top_divs = internal constant [77 x %struct.mtk_fixed_factor] [%struct.mtk_fixed_factor { i32 5, ptr @.str.10, ptr @.str.11, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 6, ptr @.str.12, ptr @.str.11, i32 1, i32 3 }, %struct.mtk_fixed_factor { i32 7, ptr @.str.13, ptr @.str.14, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 8, ptr @.str.15, ptr @.str.14, i32 1, i32 3 }, %struct.mtk_fixed_factor { i32 9, ptr @.str.16, ptr @.str.14, i32 1, i32 5 }, %struct.mtk_fixed_factor { i32 10, ptr @.str.17, ptr @.str.14, i32 1, i32 7 }, %struct.mtk_fixed_factor { i32 11, ptr @.str.18, ptr @.str.19, i32 1, i32 4 }, %struct.mtk_fixed_factor { i32 12, ptr @.str.20, ptr @.str.19, i32 1, i32 3 }, %struct.mtk_fixed_factor { i32 13, ptr @.str.21, ptr @.str.22, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 14, ptr @.str.23, ptr @.str.22, i32 1, i32 3 }, %struct.mtk_fixed_factor { i32 15, ptr @.str.24, ptr @.str.22, i32 1, i32 5 }, %struct.mtk_fixed_factor { i32 16, ptr @.str.25, ptr @.str.22, i32 1, i32 7 }, %struct.mtk_fixed_factor { i32 17, ptr @.str.26, ptr @.str.22, i32 1, i32 26 }, %struct.mtk_fixed_factor { i32 18, ptr @.str.27, ptr @.str.28, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 19, ptr @.str.29, ptr @.str.3, i32 1, i32 793 }, %struct.mtk_fixed_factor { i32 20, ptr @.str.30, ptr @.str.3, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 21, ptr @.str.31, ptr @.str.32, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 22, ptr @.str.33, ptr @.str.32, i32 1, i32 3 }, %struct.mtk_fixed_factor { i32 23, ptr @.str.34, ptr @.str.10, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 24, ptr @.str.35, ptr @.str.12, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 25, ptr @.str.36, ptr @.str.37, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 26, ptr @.str.38, ptr @.str.39, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 27, ptr @.str.40, ptr @.str.2, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 28, ptr @.str.41, ptr @.str.2, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 29, ptr @.str.42, ptr @.str.2, i32 1, i32 4 }, %struct.mtk_fixed_factor { i32 30, ptr @.str.43, ptr @.str.2, i32 1, i32 8 }, %struct.mtk_fixed_factor { i32 31, ptr @.str.44, ptr @.str.2, i32 1, i32 16 }, %struct.mtk_fixed_factor { i32 32, ptr @.str.45, ptr @.str.8, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 33, ptr @.str.46, ptr @.str.8, i32 1, i32 4 }, %struct.mtk_fixed_factor { i32 34, ptr @.str.47, ptr @.str.8, i32 1, i32 8 }, %struct.mtk_fixed_factor { i32 35, ptr @.str.48, ptr @.str.49, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 36, ptr @.str.50, ptr @.str.49, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 37, ptr @.str.51, ptr @.str.52, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 38, ptr @.str.53, ptr @.str.52, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 39, ptr @.str.54, ptr @.str.52, i32 1, i32 4 }, %struct.mtk_fixed_factor { i32 40, ptr @.str.55, ptr @.str.56, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 41, ptr @.str.57, ptr @.str.56, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 42, ptr @.str.58, ptr @.str.56, i32 1, i32 4 }, %struct.mtk_fixed_factor { i32 43, ptr @.str.59, ptr @.str.13, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 44, ptr @.str.60, ptr @.str.13, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 45, ptr @.str.61, ptr @.str.13, i32 1, i32 4 }, %struct.mtk_fixed_factor { i32 46, ptr @.str.62, ptr @.str.13, i32 1, i32 8 }, %struct.mtk_fixed_factor { i32 47, ptr @.str.63, ptr @.str.13, i32 1, i32 16 }, %struct.mtk_fixed_factor { i32 48, ptr @.str.64, ptr @.str.15, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 49, ptr @.str.65, ptr @.str.15, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 50, ptr @.str.66, ptr @.str.15, i32 1, i32 4 }, %struct.mtk_fixed_factor { i32 51, ptr @.str.67, ptr @.str.16, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 52, ptr @.str.68, ptr @.str.16, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 53, ptr @.str.69, ptr @.str.16, i32 1, i32 4 }, %struct.mtk_fixed_factor { i32 54, ptr @.str.70, ptr @.str.17, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 55, ptr @.str.71, ptr @.str.17, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 56, ptr @.str.72, ptr @.str.17, i32 1, i32 4 }, %struct.mtk_fixed_factor { i32 57, ptr @.str.73, ptr @.str.20, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 58, ptr @.str.74, ptr @.str.20, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 59, ptr @.str.75, ptr @.str.20, i32 1, i32 4 }, %struct.mtk_fixed_factor { i32 60, ptr @.str.76, ptr @.str.20, i32 1, i32 8 }, %struct.mtk_fixed_factor { i32 61, ptr @.str.77, ptr @.str.20, i32 1, i32 16 }, %struct.mtk_fixed_factor { i32 62, ptr @.str.78, ptr @.str.21, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 63, ptr @.str.79, ptr @.str.21, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 64, ptr @.str.80, ptr @.str.21, i32 1, i32 4 }, %struct.mtk_fixed_factor { i32 65, ptr @.str.81, ptr @.str.21, i32 1, i32 8 }, %struct.mtk_fixed_factor { i32 66, ptr @.str.82, ptr @.str.23, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 67, ptr @.str.83, ptr @.str.23, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 68, ptr @.str.84, ptr @.str.23, i32 1, i32 4 }, %struct.mtk_fixed_factor { i32 69, ptr @.str.85, ptr @.str.23, i32 1, i32 8 }, %struct.mtk_fixed_factor { i32 70, ptr @.str.86, ptr @.str.24, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 71, ptr @.str.87, ptr @.str.24, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 72, ptr @.str.88, ptr @.str.24, i32 1, i32 4 }, %struct.mtk_fixed_factor { i32 73, ptr @.str.89, ptr @.str.24, i32 1, i32 8 }, %struct.mtk_fixed_factor { i32 74, ptr @.str.90, ptr @.str.25, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 75, ptr @.str.91, ptr @.str.26, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 76, ptr @.str.92, ptr @.str.26, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 77, ptr @.str.93, ptr @.str.94, i32 1, i32 3 }, %struct.mtk_fixed_factor { i32 78, ptr @.str.95, ptr @.str.94, i32 1, i32 4 }, %struct.mtk_fixed_factor { i32 79, ptr @.str.96, ptr @.str.97, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 80, ptr @.str.98, ptr @.str.97, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 81, ptr @.str.99, ptr @.str.97, i32 1, i32 4 }], section ".init.rodata", align 4
@top_muxes = internal constant [56 x %struct.mtk_composite] [%struct.mtk_composite { i32 82, ptr @.str.100, ptr @axi_parents, ptr null, i32 4, i32 64, i32 0, i32 0, i8 0, i8 3, i8 -1, i8 -1, i8 0, i8 0, i8 8 }, %struct.mtk_composite { i32 83, ptr @.str.101, ptr @mem_parents, ptr null, i32 4, i32 64, i32 0, i32 0, i8 8, i8 1, i8 -1, i8 -1, i8 0, i8 0, i8 2 }, %struct.mtk_composite { i32 84, ptr @.str.102, ptr @ddrphycfg_parents, ptr null, i32 4, i32 64, i32 0, i32 64, i8 16, i8 1, i8 23, i8 -1, i8 0, i8 0, i8 2 }, %struct.mtk_composite { i32 85, ptr @.str.103, ptr @mm_parents, ptr null, i32 4, i32 64, i32 0, i32 64, i8 24, i8 4, i8 31, i8 -1, i8 0, i8 0, i8 9 }, %struct.mtk_composite { i32 86, ptr @.str.104, ptr @pwm_parents, ptr null, i32 4, i32 80, i32 0, i32 80, i8 0, i8 2, i8 7, i8 -1, i8 0, i8 0, i8 4 }, %struct.mtk_composite { i32 87, ptr @.str.105, ptr @vdec_parents, ptr null, i32 4, i32 80, i32 0, i32 80, i8 8, i8 4, i8 15, i8 -1, i8 0, i8 0, i8 10 }, %struct.mtk_composite { i32 88, ptr @.str.106, ptr @venc_parents, ptr null, i32 4, i32 80, i32 0, i32 80, i8 16, i8 4, i8 23, i8 -1, i8 0, i8 0, i8 10 }, %struct.mtk_composite { i32 89, ptr @.str.107, ptr @mfg_parents, ptr null, i32 4, i32 80, i32 0, i32 80, i8 24, i8 4, i8 31, i8 -1, i8 0, i8 0, i8 16 }, %struct.mtk_composite { i32 90, ptr @.str.108, ptr @camtg_parents, ptr null, i32 4, i32 96, i32 0, i32 96, i8 0, i8 3, i8 7, i8 -1, i8 0, i8 0, i8 6 }, %struct.mtk_composite { i32 91, ptr @.str.109, ptr @uart_parents, ptr null, i32 4, i32 96, i32 0, i32 96, i8 8, i8 1, i8 15, i8 -1, i8 0, i8 0, i8 2 }, %struct.mtk_composite { i32 92, ptr @.str.110, ptr @spi_parents, ptr null, i32 4, i32 96, i32 0, i32 96, i8 16, i8 3, i8 23, i8 -1, i8 0, i8 0, i8 7 }, %struct.mtk_composite { i32 93, ptr @.str.111, ptr @usb20_parents, ptr null, i32 4, i32 96, i32 0, i32 96, i8 24, i8 2, i8 31, i8 -1, i8 0, i8 0, i8 3 }, %struct.mtk_composite { i32 94, ptr @.str.112, ptr @usb30_parents, ptr null, i32 4, i32 112, i32 0, i32 112, i8 0, i8 2, i8 7, i8 -1, i8 0, i8 0, i8 4 }, %struct.mtk_composite { i32 95, ptr @.str.113, ptr @msdc50_0_h_parents, ptr null, i32 4, i32 112, i32 0, i32 112, i8 8, i8 3, i8 15, i8 -1, i8 0, i8 0, i8 6 }, %struct.mtk_composite { i32 96, ptr @.str.114, ptr @msdc50_0_parents, ptr null, i32 4, i32 112, i32 0, i32 112, i8 16, i8 4, i8 23, i8 -1, i8 0, i8 0, i8 15 }, %struct.mtk_composite { i32 97, ptr @.str.115, ptr @msdc30_1_parents, ptr null, i32 4, i32 112, i32 0, i32 112, i8 24, i8 3, i8 31, i8 -1, i8 0, i8 0, i8 8 }, %struct.mtk_composite { i32 98, ptr @.str.116, ptr @msdc30_2_parents, ptr null, i32 4, i32 128, i32 0, i32 128, i8 0, i8 3, i8 7, i8 -1, i8 0, i8 0, i8 8 }, %struct.mtk_composite { i32 99, ptr @.str.117, ptr @msdc30_3_parents, ptr null, i32 4, i32 128, i32 0, i32 128, i8 8, i8 4, i8 15, i8 -1, i8 0, i8 0, i8 14 }, %struct.mtk_composite { i32 100, ptr @.str.118, ptr @audio_parents, ptr null, i32 4, i32 128, i32 0, i32 128, i8 16, i8 2, i8 23, i8 -1, i8 0, i8 0, i8 4 }, %struct.mtk_composite { i32 101, ptr @.str.119, ptr @aud_intbus_parents, ptr null, i32 4, i32 128, i32 0, i32 128, i8 24, i8 3, i8 31, i8 -1, i8 0, i8 0, i8 7 }, %struct.mtk_composite { i32 102, ptr @.str.120, ptr @pmicspi_parents, ptr null, i32 4, i32 144, i32 0, i32 144, i8 0, i8 3, i8 7, i8 -1, i8 0, i8 0, i8 8 }, %struct.mtk_composite { i32 103, ptr @.str.121, ptr @scp_parents, ptr null, i32 4, i32 144, i32 0, i32 144, i8 8, i8 3, i8 15, i8 -1, i8 0, i8 0, i8 6 }, %struct.mtk_composite { i32 104, ptr @.str.122, ptr @atb_parents, ptr null, i32 4, i32 144, i32 0, i32 144, i8 16, i8 2, i8 23, i8 -1, i8 0, i8 0, i8 4 }, %struct.mtk_composite { i32 105, ptr @.str.123, ptr @venc_lt_parents, ptr null, i32 4, i32 144, i32 0, i32 144, i8 24, i8 4, i8 31, i8 -1, i8 0, i8 0, i8 12 }, %struct.mtk_composite { i32 106, ptr @.str.124, ptr @dpi0_parents, ptr null, i32 0, i32 160, i32 0, i32 160, i8 0, i8 3, i8 7, i8 -1, i8 0, i8 0, i8 7 }, %struct.mtk_composite { i32 107, ptr @.str.125, ptr @irda_parents, ptr null, i32 4, i32 160, i32 0, i32 160, i8 8, i8 2, i8 15, i8 -1, i8 0, i8 0, i8 3 }, %struct.mtk_composite { i32 108, ptr @.str.126, ptr @cci400_parents, ptr null, i32 4, i32 160, i32 0, i32 160, i8 16, i8 3, i8 23, i8 -1, i8 0, i8 0, i8 8 }, %struct.mtk_composite { i32 109, ptr @.str.127, ptr @aud_1_parents, ptr null, i32 4, i32 160, i32 0, i32 160, i8 24, i8 2, i8 31, i8 -1, i8 0, i8 0, i8 4 }, %struct.mtk_composite { i32 110, ptr @.str.128, ptr @aud_2_parents, ptr null, i32 4, i32 176, i32 0, i32 176, i8 0, i8 2, i8 7, i8 -1, i8 0, i8 0, i8 4 }, %struct.mtk_composite { i32 111, ptr @.str.129, ptr @mem_mfg_in_parents, ptr null, i32 4, i32 176, i32 0, i32 176, i8 8, i8 2, i8 15, i8 -1, i8 0, i8 0, i8 4 }, %struct.mtk_composite { i32 112, ptr @.str.130, ptr @axi_mfg_in_parents, ptr null, i32 4, i32 176, i32 0, i32 176, i8 16, i8 2, i8 23, i8 -1, i8 0, i8 0, i8 3 }, %struct.mtk_composite { i32 113, ptr @.str.131, ptr @scam_parents, ptr null, i32 4, i32 176, i32 0, i32 176, i8 24, i8 2, i8 31, i8 -1, i8 0, i8 0, i8 4 }, %struct.mtk_composite { i32 114, ptr @.str.132, ptr @spinfi_ifr_parents, ptr null, i32 4, i32 192, i32 0, i32 192, i8 0, i8 3, i8 7, i8 -1, i8 0, i8 0, i8 8 }, %struct.mtk_composite { i32 115, ptr @.str.133, ptr @hdmi_parents, ptr null, i32 4, i32 192, i32 0, i32 192, i8 8, i8 2, i8 15, i8 -1, i8 0, i8 0, i8 4 }, %struct.mtk_composite { i32 116, ptr @.str.134, ptr @dpilvds_parents, ptr null, i32 4, i32 192, i32 0, i32 192, i8 24, i8 3, i8 31, i8 -1, i8 0, i8 0, i8 6 }, %struct.mtk_composite { i32 117, ptr @.str.135, ptr @msdc50_2_h_parents, ptr null, i32 4, i32 208, i32 0, i32 208, i8 0, i8 3, i8 7, i8 -1, i8 0, i8 0, i8 6 }, %struct.mtk_composite { i32 118, ptr @.str.136, ptr @hdcp_parents, ptr null, i32 4, i32 208, i32 0, i32 208, i8 8, i8 2, i8 15, i8 -1, i8 0, i8 0, i8 4 }, %struct.mtk_composite { i32 119, ptr @.str.137, ptr @hdcp_24m_parents, ptr null, i32 4, i32 208, i32 0, i32 208, i8 16, i8 2, i8 23, i8 -1, i8 0, i8 0, i8 4 }, %struct.mtk_composite { i32 120, ptr @.str.138, ptr @rtc_parents, ptr null, i32 4, i32 208, i32 0, i32 0, i8 24, i8 2, i8 -1, i8 -1, i8 0, i8 0, i8 4 }, %struct.mtk_composite { i32 121, ptr @.str.139, ptr null, ptr @.str.127, i32 0, i32 0, i32 288, i32 300, i8 -1, i8 0, i8 8, i8 24, i8 4, i8 0, i8 0 }, %struct.mtk_composite { i32 122, ptr @.str.140, ptr null, ptr @.str.127, i32 0, i32 0, i32 292, i32 300, i8 -1, i8 0, i8 9, i8 0, i8 8, i8 0, i8 0 }, %struct.mtk_composite { i32 123, ptr @.str.141, ptr null, ptr @.str.127, i32 0, i32 0, i32 292, i32 300, i8 -1, i8 0, i8 10, i8 8, i8 8, i8 0, i8 0 }, %struct.mtk_composite { i32 124, ptr @.str.142, ptr null, ptr @.str.127, i32 0, i32 0, i32 292, i32 300, i8 -1, i8 0, i8 11, i8 16, i8 8, i8 0, i8 0 }, %struct.mtk_composite { i32 125, ptr @.str.143, ptr null, ptr @.str.127, i32 0, i32 0, i32 292, i32 300, i8 -1, i8 0, i8 12, i8 24, i8 8, i8 0, i8 0 }, %struct.mtk_composite { i32 126, ptr @.str.144, ptr null, ptr @.str.143, i32 0, i32 0, i32 300, i32 300, i8 -1, i8 0, i8 13, i8 0, i8 4, i8 0, i8 0 }, %struct.mtk_composite { i32 127, ptr @.str.145, ptr null, ptr @.str.128, i32 0, i32 0, i32 288, i32 300, i8 -1, i8 0, i8 16, i8 28, i8 4, i8 0, i8 0 }, %struct.mtk_composite { i32 128, ptr @.str.146, ptr null, ptr @.str.128, i32 0, i32 0, i32 296, i32 300, i8 -1, i8 0, i8 17, i8 0, i8 8, i8 0, i8 0 }, %struct.mtk_composite { i32 129, ptr @.str.147, ptr null, ptr @.str.128, i32 0, i32 0, i32 296, i32 300, i8 -1, i8 0, i8 18, i8 8, i8 8, i8 0, i8 0 }, %struct.mtk_composite { i32 130, ptr @.str.148, ptr null, ptr @.str.128, i32 0, i32 0, i32 296, i32 300, i8 -1, i8 0, i8 19, i8 16, i8 8, i8 0, i8 0 }, %struct.mtk_composite { i32 131, ptr @.str.149, ptr null, ptr @.str.128, i32 0, i32 0, i32 296, i32 300, i8 -1, i8 0, i8 20, i8 24, i8 8, i8 0, i8 0 }, %struct.mtk_composite { i32 132, ptr @.str.150, ptr null, ptr @.str.149, i32 0, i32 0, i32 300, i32 300, i8 -1, i8 0, i8 21, i8 4, i8 4, i8 0, i8 0 }, %struct.mtk_composite { i32 133, ptr @.str.151, ptr @i2s0_m_ck_parents, ptr null, i32 4, i32 288, i32 0, i32 0, i8 4, i8 1, i8 -1, i8 -1, i8 0, i8 0, i8 2 }, %struct.mtk_composite { i32 134, ptr @.str.152, ptr @i2s1_m_ck_parents, ptr null, i32 4, i32 288, i32 0, i32 0, i8 5, i8 1, i8 -1, i8 -1, i8 0, i8 0, i8 2 }, %struct.mtk_composite { i32 135, ptr @.str.153, ptr @i2s2_m_ck_parents, ptr null, i32 4, i32 288, i32 0, i32 0, i8 6, i8 1, i8 -1, i8 -1, i8 0, i8 0, i8 2 }, %struct.mtk_composite { i32 136, ptr @.str.154, ptr @i2s3_m_ck_parents, ptr null, i32 4, i32 288, i32 0, i32 0, i8 7, i8 1, i8 -1, i8 -1, i8 0, i8 0, i8 2 }, %struct.mtk_composite { i32 137, ptr @.str.155, ptr @i2s3_b_ck_parents, ptr null, i32 4, i32 288, i32 0, i32 0, i8 8, i8 1, i8 -1, i8 -1, i8 0, i8 0, i8 2 }], section ".init.rodata", align 4
@mt8173_clk_lock = internal global %struct.spinlock zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"\013%s(): could not register clock provider: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"clkph_mck_o\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"clk26m\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"usb_syspll_125m\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"dsi0_dig\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"dsi1_dig\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"lvds_pxl\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"lvdspll\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"lvds_cts\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"armca7pll_754m\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"armca7pll\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"armca7pll_502m\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"main_h546m\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"mainpll\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"main_h364m\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"main_h218p4m\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"main_h156m\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"tvdpll_445p5m\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"tvdpll\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"tvdpll_594m\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"univ_624m\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"univpll\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"univ_416m\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"univ_249p6m\00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c"univ_178p3m\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"univ_48m\00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"clkrtc_ext\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"clk32k\00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c"clkrtc_int\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"fpc_ck\00", align 1
@.str.31 = private unnamed_addr constant [13 x i8] c"hdmitxpll_d2\00", align 1
@.str.32 = private unnamed_addr constant [15 x i8] c"hdmitx_dig_cts\00", align 1
@.str.33 = private unnamed_addr constant [13 x i8] c"hdmitxpll_d3\00", align 1
@.str.34 = private unnamed_addr constant [13 x i8] c"armca7pll_d2\00", align 1
@.str.35 = private unnamed_addr constant [13 x i8] c"armca7pll_d3\00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c"apll1_ck\00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"apll1\00", align 1
@.str.38 = private unnamed_addr constant [9 x i8] c"apll2_ck\00", align 1
@.str.39 = private unnamed_addr constant [6 x i8] c"apll2\00", align 1
@.str.40 = private unnamed_addr constant [9 x i8] c"dmpll_ck\00", align 1
@.str.41 = private unnamed_addr constant [9 x i8] c"dmpll_d2\00", align 1
@.str.42 = private unnamed_addr constant [9 x i8] c"dmpll_d4\00", align 1
@.str.43 = private unnamed_addr constant [9 x i8] c"dmpll_d8\00", align 1
@.str.44 = private unnamed_addr constant [10 x i8] c"dmpll_d16\00", align 1
@.str.45 = private unnamed_addr constant [11 x i8] c"lvdspll_d2\00", align 1
@.str.46 = private unnamed_addr constant [11 x i8] c"lvdspll_d4\00", align 1
@.str.47 = private unnamed_addr constant [11 x i8] c"lvdspll_d8\00", align 1
@.str.48 = private unnamed_addr constant [9 x i8] c"mmpll_ck\00", align 1
@.str.49 = private unnamed_addr constant [6 x i8] c"mmpll\00", align 1
@.str.50 = private unnamed_addr constant [9 x i8] c"mmpll_d2\00", align 1
@.str.51 = private unnamed_addr constant [11 x i8] c"msdcpll_ck\00", align 1
@.str.52 = private unnamed_addr constant [8 x i8] c"msdcpll\00", align 1
@.str.53 = private unnamed_addr constant [11 x i8] c"msdcpll_d2\00", align 1
@.str.54 = private unnamed_addr constant [11 x i8] c"msdcpll_d4\00", align 1
@.str.55 = private unnamed_addr constant [12 x i8] c"msdcpll2_ck\00", align 1
@.str.56 = private unnamed_addr constant [9 x i8] c"msdcpll2\00", align 1
@.str.57 = private unnamed_addr constant [12 x i8] c"msdcpll2_d2\00", align 1
@.str.58 = private unnamed_addr constant [12 x i8] c"msdcpll2_d4\00", align 1
@.str.59 = private unnamed_addr constant [10 x i8] c"syspll_d2\00", align 1
@.str.60 = private unnamed_addr constant [11 x i8] c"syspll1_d2\00", align 1
@.str.61 = private unnamed_addr constant [11 x i8] c"syspll1_d4\00", align 1
@.str.62 = private unnamed_addr constant [11 x i8] c"syspll1_d8\00", align 1
@.str.63 = private unnamed_addr constant [12 x i8] c"syspll1_d16\00", align 1
@.str.64 = private unnamed_addr constant [10 x i8] c"syspll_d3\00", align 1
@.str.65 = private unnamed_addr constant [11 x i8] c"syspll2_d2\00", align 1
@.str.66 = private unnamed_addr constant [11 x i8] c"syspll2_d4\00", align 1
@.str.67 = private unnamed_addr constant [10 x i8] c"syspll_d5\00", align 1
@.str.68 = private unnamed_addr constant [11 x i8] c"syspll3_d2\00", align 1
@.str.69 = private unnamed_addr constant [11 x i8] c"syspll3_d4\00", align 1
@.str.70 = private unnamed_addr constant [10 x i8] c"syspll_d7\00", align 1
@.str.71 = private unnamed_addr constant [11 x i8] c"syspll4_d2\00", align 1
@.str.72 = private unnamed_addr constant [11 x i8] c"syspll4_d4\00", align 1
@.str.73 = private unnamed_addr constant [10 x i8] c"tvdpll_ck\00", align 1
@.str.74 = private unnamed_addr constant [10 x i8] c"tvdpll_d2\00", align 1
@.str.75 = private unnamed_addr constant [10 x i8] c"tvdpll_d4\00", align 1
@.str.76 = private unnamed_addr constant [10 x i8] c"tvdpll_d8\00", align 1
@.str.77 = private unnamed_addr constant [11 x i8] c"tvdpll_d16\00", align 1
@.str.78 = private unnamed_addr constant [11 x i8] c"univpll_d2\00", align 1
@.str.79 = private unnamed_addr constant [12 x i8] c"univpll1_d2\00", align 1
@.str.80 = private unnamed_addr constant [12 x i8] c"univpll1_d4\00", align 1
@.str.81 = private unnamed_addr constant [12 x i8] c"univpll1_d8\00", align 1
@.str.82 = private unnamed_addr constant [11 x i8] c"univpll_d3\00", align 1
@.str.83 = private unnamed_addr constant [12 x i8] c"univpll2_d2\00", align 1
@.str.84 = private unnamed_addr constant [12 x i8] c"univpll2_d4\00", align 1
@.str.85 = private unnamed_addr constant [12 x i8] c"univpll2_d8\00", align 1
@.str.86 = private unnamed_addr constant [11 x i8] c"univpll_d5\00", align 1
@.str.87 = private unnamed_addr constant [12 x i8] c"univpll3_d2\00", align 1
@.str.88 = private unnamed_addr constant [12 x i8] c"univpll3_d4\00", align 1
@.str.89 = private unnamed_addr constant [12 x i8] c"univpll3_d8\00", align 1
@.str.90 = private unnamed_addr constant [11 x i8] c"univpll_d7\00", align 1
@.str.91 = private unnamed_addr constant [12 x i8] c"univpll_d26\00", align 1
@.str.92 = private unnamed_addr constant [12 x i8] c"univpll_d52\00", align 1
@.str.93 = private unnamed_addr constant [13 x i8] c"vcodecpll_ck\00", align 1
@.str.94 = private unnamed_addr constant [10 x i8] c"vcodecpll\00", align 1
@.str.95 = private unnamed_addr constant [16 x i8] c"vcodecpll_370p5\00", align 1
@.str.96 = private unnamed_addr constant [11 x i8] c"vencpll_ck\00", align 1
@.str.97 = private unnamed_addr constant [8 x i8] c"vencpll\00", align 1
@.str.98 = private unnamed_addr constant [11 x i8] c"vencpll_d2\00", align 1
@.str.99 = private unnamed_addr constant [11 x i8] c"vencpll_d4\00", align 1
@.str.100 = private unnamed_addr constant [8 x i8] c"axi_sel\00", align 1
@axi_parents = internal constant [8 x ptr] [ptr @.str.3, ptr @.str.60, ptr @.str.67, ptr @.str.61, ptr @.str.86, ptr @.str.83, ptr @.str.41, ptr @.str.42], section ".init.rodata", align 4
@.str.101 = private unnamed_addr constant [8 x i8] c"mem_sel\00", align 1
@mem_parents = internal constant [2 x ptr] [ptr @.str.3, ptr @.str.40], section ".init.rodata", align 4
@.str.102 = private unnamed_addr constant [14 x i8] c"ddrphycfg_sel\00", align 1
@ddrphycfg_parents = internal constant [2 x ptr] [ptr @.str.3, ptr @.str.62], section ".init.rodata", align 4
@.str.103 = private unnamed_addr constant [7 x i8] c"mm_sel\00", align 1
@mm_parents = internal constant [9 x ptr] [ptr @.str.3, ptr @.str.98, ptr @.str.15, ptr @.str.60, ptr @.str.67, ptr @.str.61, ptr @.str.79, ptr @.str.83, ptr @.str.41], section ".init.rodata", align 4
@.str.104 = private unnamed_addr constant [8 x i8] c"pwm_sel\00", align 1
@pwm_parents = internal constant [4 x ptr] [ptr @.str.3, ptr @.str.84, ptr @.str.87, ptr @.str.80], section ".init.rodata", align 4
@.str.105 = private unnamed_addr constant [9 x i8] c"vdec_sel\00", align 1
@vdec_parents = internal constant [10 x ptr] [ptr @.str.3, ptr @.str.93, ptr @.str.18, ptr @.str.82, ptr @.str.98, ptr @.str.64, ptr @.str.79, ptr @.str.50, ptr @.str.41, ptr @.str.42], section ".init.rodata", align 4
@.str.106 = private unnamed_addr constant [9 x i8] c"venc_sel\00", align 1
@venc_parents = internal constant [10 x ptr] [ptr @.str.3, ptr @.str.93, ptr @.str.18, ptr @.str.82, ptr @.str.98, ptr @.str.64, ptr @.str.79, ptr @.str.83, ptr @.str.41, ptr @.str.42], section ".init.rodata", align 4
@.str.107 = private unnamed_addr constant [8 x i8] c"mfg_sel\00", align 1
@mfg_parents = internal constant [16 x ptr] [ptr @.str.3, ptr @.str.48, ptr @.str.40, ptr @.str.3, ptr @.str.3, ptr @.str.3, ptr @.str.3, ptr @.str.3, ptr @.str.3, ptr @.str.64, ptr @.str.60, ptr @.str.67, ptr @.str.82, ptr @.str.79, ptr @.str.86, ptr @.str.83], section ".init.rodata", align 4
@.str.108 = private unnamed_addr constant [10 x i8] c"camtg_sel\00", align 1
@camtg_parents = internal constant [6 x ptr] [ptr @.str.3, ptr @.str.91, ptr @.str.83, ptr @.str.68, ptr @.str.69, ptr @.str.80], section ".init.rodata", align 4
@.str.109 = private unnamed_addr constant [9 x i8] c"uart_sel\00", align 1
@uart_parents = internal constant [2 x ptr] [ptr @.str.3, ptr @.str.85], section ".init.rodata", align 4
@.str.110 = private unnamed_addr constant [8 x i8] c"spi_sel\00", align 1
@spi_parents = internal constant [7 x ptr] [ptr @.str.3, ptr @.str.68, ptr @.str.61, ptr @.str.71, ptr @.str.87, ptr @.str.84, ptr @.str.81], section ".init.rodata", align 4
@.str.111 = private unnamed_addr constant [10 x i8] c"usb20_sel\00", align 1
@usb20_parents = internal constant [3 x ptr] [ptr @.str.3, ptr @.str.81, ptr @.str.88], section ".init.rodata", align 4
@.str.112 = private unnamed_addr constant [10 x i8] c"usb30_sel\00", align 1
@usb30_parents = internal constant [4 x ptr] [ptr @.str.3, ptr @.str.87, ptr @.str.4, ptr @.str.84], section ".init.rodata", align 4
@.str.113 = private unnamed_addr constant [15 x i8] c"msdc50_0_h_sel\00", align 1
@msdc50_0_h_parents = internal constant [6 x ptr] [ptr @.str.3, ptr @.str.60, ptr @.str.65, ptr @.str.71, ptr @.str.86, ptr @.str.80], section ".init.rodata", align 4
@.str.114 = private unnamed_addr constant [13 x i8] c"msdc50_0_sel\00", align 1
@msdc50_0_parents = internal constant [15 x ptr] [ptr @.str.3, ptr @.str.51, ptr @.str.53, ptr @.str.80, ptr @.str.65, ptr @.str.70, ptr @.str.54, ptr @.str.99, ptr @.str.73, ptr @.str.78, ptr @.str.79, ptr @.str.48, ptr @.str.55, ptr @.str.57, ptr @.str.58], section ".init.rodata", align 4
@.str.115 = private unnamed_addr constant [13 x i8] c"msdc30_1_sel\00", align 1
@msdc30_1_parents = internal constant [8 x ptr] [ptr @.str.3, ptr @.str.83, ptr @.str.54, ptr @.str.80, ptr @.str.65, ptr @.str.70, ptr @.str.90, ptr @.str.99], section ".init.rodata", align 4
@.str.116 = private unnamed_addr constant [13 x i8] c"msdc30_2_sel\00", align 1
@msdc30_2_parents = internal constant [8 x ptr] [ptr @.str.3, ptr @.str.83, ptr @.str.54, ptr @.str.80, ptr @.str.65, ptr @.str.70, ptr @.str.90, ptr @.str.98], section ".init.rodata", align 4
@.str.117 = private unnamed_addr constant [13 x i8] c"msdc30_3_sel\00", align 1
@msdc30_3_parents = internal constant [14 x ptr] [ptr @.str.3, ptr @.str.55, ptr @.str.57, ptr @.str.83, ptr @.str.58, ptr @.str.54, ptr @.str.80, ptr @.str.65, ptr @.str.70, ptr @.str.90, ptr @.str.99, ptr @.str.51, ptr @.str.53, ptr @.str.54], section ".init.rodata", align 4
@.str.118 = private unnamed_addr constant [10 x i8] c"audio_sel\00", align 1
@audio_parents = internal constant [4 x ptr] [ptr @.str.3, ptr @.str.69, ptr @.str.72, ptr @.str.63], section ".init.rodata", align 4
@.str.119 = private unnamed_addr constant [15 x i8] c"aud_intbus_sel\00", align 1
@aud_intbus_parents = internal constant [7 x ptr] [ptr @.str.3, ptr @.str.61, ptr @.str.71, ptr @.str.87, ptr @.str.85, ptr @.str.42, ptr @.str.43], section ".init.rodata", align 4
@.str.120 = private unnamed_addr constant [12 x i8] c"pmicspi_sel\00", align 1
@pmicspi_parents = internal constant [8 x ptr] [ptr @.str.3, ptr @.str.62, ptr @.str.69, ptr @.str.63, ptr @.str.88, ptr @.str.91, ptr @.str.43, ptr @.str.44], section ".init.rodata", align 4
@.str.121 = private unnamed_addr constant [8 x i8] c"scp_sel\00", align 1
@scp_parents = internal constant [6 x ptr] [ptr @.str.3, ptr @.str.60, ptr @.str.86, ptr @.str.67, ptr @.str.41, ptr @.str.42], section ".init.rodata", align 4
@.str.122 = private unnamed_addr constant [8 x i8] c"atb_sel\00", align 1
@atb_parents = internal constant [4 x ptr] [ptr @.str.3, ptr @.str.60, ptr @.str.86, ptr @.str.41], section ".init.rodata", align 4
@.str.123 = private unnamed_addr constant [11 x i8] c"venclt_sel\00", align 1
@venc_lt_parents = internal constant [12 x ptr] [ptr @.str.3, ptr @.str.82, ptr @.str.93, ptr @.str.18, ptr @.str.98, ptr @.str.64, ptr @.str.79, ptr @.str.83, ptr @.str.60, ptr @.str.86, ptr @.str.95, ptr @.str.40], section ".init.rodata", align 4
@.str.124 = private unnamed_addr constant [9 x i8] c"dpi0_sel\00", align 1
@dpi0_parents = internal constant [7 x ptr] [ptr @.str.3, ptr @.str.74, ptr @.str.75, ptr @.str.3, ptr @.str.3, ptr @.str.76, ptr @.str.77], section ".init.rodata", align 4
@.str.125 = private unnamed_addr constant [9 x i8] c"irda_sel\00", align 1
@irda_parents = internal constant [3 x ptr] [ptr @.str.3, ptr @.str.84, ptr @.str.66], section ".init.rodata", align 4
@.str.126 = private unnamed_addr constant [11 x i8] c"cci400_sel\00", align 1
@cci400_parents = internal constant [8 x ptr] [ptr @.str.3, ptr @.str.96, ptr @.str.10, ptr @.str.12, ptr @.str.78, ptr @.str.59, ptr @.str.51, ptr @.str.40], section ".init.rodata", align 4
@.str.127 = private unnamed_addr constant [10 x i8] c"aud_1_sel\00", align 1
@aud_1_parents = internal constant [4 x ptr] [ptr @.str.3, ptr @.str.36, ptr @.str.84, ptr @.str.85], section ".init.rodata", align 4
@.str.128 = private unnamed_addr constant [10 x i8] c"aud_2_sel\00", align 1
@aud_2_parents = internal constant [4 x ptr] [ptr @.str.3, ptr @.str.38, ptr @.str.84, ptr @.str.85], section ".init.rodata", align 4
@.str.129 = private unnamed_addr constant [15 x i8] c"mem_mfg_in_sel\00", align 1
@mem_mfg_in_parents = internal constant [4 x ptr] [ptr @.str.3, ptr @.str.48, ptr @.str.40, ptr @.str.3], section ".init.rodata", align 4
@.str.130 = private unnamed_addr constant [15 x i8] c"axi_mfg_in_sel\00", align 1
@axi_mfg_in_parents = internal constant [3 x ptr] [ptr @.str.3, ptr @.str.100, ptr @.str.41], section ".init.rodata", align 4
@.str.131 = private unnamed_addr constant [9 x i8] c"scam_sel\00", align 1
@scam_parents = internal constant [4 x ptr] [ptr @.str.3, ptr @.str.68, ptr @.str.84, ptr @.str.42], section ".init.rodata", align 4
@.str.132 = private unnamed_addr constant [15 x i8] c"spinfi_ifr_sel\00", align 1
@spinfi_ifr_parents = internal constant [8 x ptr] [ptr @.str.3, ptr @.str.85, ptr @.str.88, ptr @.str.71, ptr @.str.84, ptr @.str.87, ptr @.str.61, ptr @.str.80], section ".init.rodata", align 4
@.str.133 = private unnamed_addr constant [9 x i8] c"hdmi_sel\00", align 1
@hdmi_parents = internal constant [4 x ptr] [ptr @.str.3, ptr @.str.32, ptr @.str.31, ptr @.str.33], section ".init.rodata", align 4
@.str.134 = private unnamed_addr constant [12 x i8] c"dpilvds_sel\00", align 1
@dpilvds_parents = internal constant [6 x ptr] [ptr @.str.3, ptr @.str.8, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.30], section ".init.rodata", align 4
@.str.135 = private unnamed_addr constant [15 x i8] c"msdc50_2_h_sel\00", align 1
@msdc50_2_h_parents = internal constant [6 x ptr] [ptr @.str.3, ptr @.str.60, ptr @.str.65, ptr @.str.71, ptr @.str.86, ptr @.str.80], section ".init.rodata", align 4
@.str.136 = private unnamed_addr constant [9 x i8] c"hdcp_sel\00", align 1
@hdcp_parents = internal constant [4 x ptr] [ptr @.str.3, ptr @.str.71, ptr @.str.69, ptr @.str.84], section ".init.rodata", align 4
@.str.137 = private unnamed_addr constant [13 x i8] c"hdcp_24m_sel\00", align 1
@hdcp_24m_parents = internal constant [4 x ptr] [ptr @.str.3, ptr @.str.91, ptr @.str.92, ptr @.str.85], section ".init.rodata", align 4
@.str.138 = private unnamed_addr constant [8 x i8] c"rtc_sel\00", align 1
@rtc_parents = internal constant [4 x ptr] [ptr @.str.29, ptr @.str.27, ptr @.str.3, ptr @.str.89], section ".init.rodata", align 4
@.str.139 = private unnamed_addr constant [11 x i8] c"apll1_div0\00", align 1
@.str.140 = private unnamed_addr constant [11 x i8] c"apll1_div1\00", align 1
@.str.141 = private unnamed_addr constant [11 x i8] c"apll1_div2\00", align 1
@.str.142 = private unnamed_addr constant [11 x i8] c"apll1_div3\00", align 1
@.str.143 = private unnamed_addr constant [11 x i8] c"apll1_div4\00", align 1
@.str.144 = private unnamed_addr constant [11 x i8] c"apll1_div5\00", align 1
@.str.145 = private unnamed_addr constant [11 x i8] c"apll2_div0\00", align 1
@.str.146 = private unnamed_addr constant [11 x i8] c"apll2_div1\00", align 1
@.str.147 = private unnamed_addr constant [11 x i8] c"apll2_div2\00", align 1
@.str.148 = private unnamed_addr constant [11 x i8] c"apll2_div3\00", align 1
@.str.149 = private unnamed_addr constant [11 x i8] c"apll2_div4\00", align 1
@.str.150 = private unnamed_addr constant [11 x i8] c"apll2_div5\00", align 1
@.str.151 = private unnamed_addr constant [14 x i8] c"i2s0_m_ck_sel\00", align 1
@i2s0_m_ck_parents = internal constant [2 x ptr] [ptr @.str.140, ptr @.str.146], section ".init.rodata", align 4
@.str.152 = private unnamed_addr constant [14 x i8] c"i2s1_m_ck_sel\00", align 1
@i2s1_m_ck_parents = internal constant [2 x ptr] [ptr @.str.141, ptr @.str.147], section ".init.rodata", align 4
@.str.153 = private unnamed_addr constant [14 x i8] c"i2s2_m_ck_sel\00", align 1
@i2s2_m_ck_parents = internal constant [2 x ptr] [ptr @.str.142, ptr @.str.148], section ".init.rodata", align 4
@.str.154 = private unnamed_addr constant [14 x i8] c"i2s3_m_ck_sel\00", align 1
@i2s3_m_ck_parents = internal constant [2 x ptr] [ptr @.str.143, ptr @.str.149], section ".init.rodata", align 4
@.str.155 = private unnamed_addr constant [14 x i8] c"i2s3_b_ck_sel\00", align 1
@i2s3_b_ck_parents = internal constant [2 x ptr] [ptr @.str.144, ptr @.str.150], section ".init.rodata", align 4
@mt8173_pll_clk_data = internal unnamed_addr global ptr null, section ".init.data", align 4
@infra_clks = internal constant [11 x %struct.mtk_gate] [%struct.mtk_gate { i32 1, ptr @.str.156, ptr @.str.100, ptr @infra_cg_regs, i32 0, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 2, ptr @.str.157, ptr @.str.103, ptr @infra_cg_regs, i32 1, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 3, ptr @.str.158, ptr @.str.119, ptr @infra_cg_regs, i32 5, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 4, ptr @.str.159, ptr @.str.100, ptr @infra_cg_regs, i32 6, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 5, ptr @.str.160, ptr @.str.100, ptr @infra_cg_regs, i32 7, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 6, ptr @.str.161, ptr @.str.101, ptr @infra_cg_regs, i32 8, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 7, ptr @.str.162, ptr @.str.163, ptr @infra_cg_regs, i32 15, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 8, ptr @.str.164, ptr @.str.100, ptr @infra_cg_regs, i32 16, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 9, ptr @.str.165, ptr @.str.3, ptr @infra_cg_regs, i32 18, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 10, ptr @.str.166, ptr @.str.120, ptr @infra_cg_regs, i32 22, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 11, ptr @.str.167, ptr @.str.100, ptr @infra_cg_regs, i32 23, ptr @mtk_clk_gate_ops_setclr, i32 0 }], section ".init.rodata", align 4
@infra_divs = internal constant [1 x %struct.mtk_fixed_factor] [%struct.mtk_fixed_factor { i32 12, ptr @.str.168, ptr @.str.3, i32 1, i32 2 }], section ".init.rodata", align 4
@cpu_muxes = internal constant [2 x %struct.mtk_composite] [%struct.mtk_composite { i32 13, ptr @.str.169, ptr @ca53_parents, ptr null, i32 4, i32 0, i32 0, i32 0, i8 0, i8 2, i8 -1, i8 -1, i8 0, i8 0, i8 4 }, %struct.mtk_composite { i32 14, ptr @.str.170, ptr @ca72_parents, ptr null, i32 4, i32 0, i32 0, i32 0, i8 2, i8 2, i8 -1, i8 -1, i8 0, i8 0, i8 4 }], section ".init.rodata", align 4
@__func__.mtk_infrasys_init = private unnamed_addr constant [18 x i8] c"mtk_infrasys_init\00", align 1
@.str.156 = private unnamed_addr constant [13 x i8] c"infra_dbgclk\00", align 1
@infra_cg_regs = internal constant %struct.mtk_gate_regs { i32 72, i32 68, i32 64 }, section ".init.rodata", align 4
@mtk_clk_gate_ops_setclr = external dso_local constant %struct.clk_ops, align 4
@.str.157 = private unnamed_addr constant [10 x i8] c"infra_smi\00", align 1
@.str.158 = private unnamed_addr constant [12 x i8] c"infra_audio\00", align 1
@.str.159 = private unnamed_addr constant [10 x i8] c"infra_gce\00", align 1
@.str.160 = private unnamed_addr constant [15 x i8] c"infra_l2c_sram\00", align 1
@.str.161 = private unnamed_addr constant [10 x i8] c"infra_m4u\00", align 1
@.str.162 = private unnamed_addr constant [11 x i8] c"infra_cpum\00", align 1
@.str.163 = private unnamed_addr constant [8 x i8] c"cpum_ck\00", align 1
@.str.164 = private unnamed_addr constant [9 x i8] c"infra_kp\00", align 1
@.str.165 = private unnamed_addr constant [10 x i8] c"infra_cec\00", align 1
@.str.166 = private unnamed_addr constant [14 x i8] c"infra_pmicspi\00", align 1
@.str.167 = private unnamed_addr constant [15 x i8] c"infra_pmicwrap\00", align 1
@.str.168 = private unnamed_addr constant [7 x i8] c"clk13m\00", align 1
@.str.169 = private unnamed_addr constant [15 x i8] c"infra_ca53_sel\00", align 1
@ca53_parents = internal constant [4 x ptr] [ptr @.str.3, ptr @.str.11, ptr @.str.14, ptr @.str.22], section ".init.rodata", align 4
@.str.170 = private unnamed_addr constant [15 x i8] c"infra_ca72_sel\00", align 1
@ca72_parents = internal constant [4 x ptr] [ptr @.str.3, ptr @.str.171, ptr @.str.14, ptr @.str.22], section ".init.rodata", align 4
@.str.171 = private unnamed_addr constant [11 x i8] c"armca15pll\00", align 1
@__func__.mtk_pericfg_init = private unnamed_addr constant [17 x i8] c"mtk_pericfg_init\00", align 1
@peri_gates = internal constant [35 x %struct.mtk_gate] [%struct.mtk_gate { i32 1, ptr @.str.172, ptr @.str.100, ptr @peri0_cg_regs, i32 0, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 2, ptr @.str.173, ptr @.str.100, ptr @peri0_cg_regs, i32 1, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 3, ptr @.str.174, ptr @.str.100, ptr @peri0_cg_regs, i32 2, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 4, ptr @.str.175, ptr @.str.100, ptr @peri0_cg_regs, i32 3, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 5, ptr @.str.176, ptr @.str.100, ptr @peri0_cg_regs, i32 4, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 6, ptr @.str.177, ptr @.str.100, ptr @peri0_cg_regs, i32 5, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 7, ptr @.str.178, ptr @.str.100, ptr @peri0_cg_regs, i32 6, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 8, ptr @.str.179, ptr @.str.100, ptr @peri0_cg_regs, i32 7, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 9, ptr @.str.180, ptr @.str.100, ptr @peri0_cg_regs, i32 8, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 10, ptr @.str.181, ptr @.str.100, ptr @peri0_cg_regs, i32 9, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 11, ptr @.str.182, ptr @.str.111, ptr @peri0_cg_regs, i32 10, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 12, ptr @.str.183, ptr @.str.111, ptr @peri0_cg_regs, i32 11, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 13, ptr @.str.184, ptr @.str.100, ptr @peri0_cg_regs, i32 12, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 14, ptr @.str.185, ptr @.str.114, ptr @peri0_cg_regs, i32 13, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 15, ptr @.str.186, ptr @.str.115, ptr @peri0_cg_regs, i32 14, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 16, ptr @.str.187, ptr @.str.116, ptr @peri0_cg_regs, i32 15, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 17, ptr @.str.188, ptr @.str.117, ptr @peri0_cg_regs, i32 16, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 18, ptr @.str.189, ptr @.str.100, ptr @peri0_cg_regs, i32 17, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 19, ptr @.str.190, ptr @.str.125, ptr @peri0_cg_regs, i32 18, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 20, ptr @.str.191, ptr @.str.100, ptr @peri0_cg_regs, i32 19, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 21, ptr @.str.192, ptr @.str.100, ptr @peri0_cg_regs, i32 20, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 22, ptr @.str.193, ptr @.str.100, ptr @peri0_cg_regs, i32 21, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 23, ptr @.str.194, ptr @.str.100, ptr @peri0_cg_regs, i32 22, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 24, ptr @.str.195, ptr @.str.100, ptr @peri0_cg_regs, i32 23, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 25, ptr @.str.196, ptr @.str.100, ptr @peri0_cg_regs, i32 24, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 26, ptr @.str.197, ptr @.str.100, ptr @peri0_cg_regs, i32 25, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 27, ptr @.str.198, ptr @.str.100, ptr @peri0_cg_regs, i32 26, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 28, ptr @.str.199, ptr @.str.100, ptr @peri0_cg_regs, i32 27, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 29, ptr @.str.200, ptr @.str.3, ptr @peri0_cg_regs, i32 28, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 30, ptr @.str.201, ptr @.str.110, ptr @peri0_cg_regs, i32 29, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 31, ptr @.str.202, ptr @.str.100, ptr @peri0_cg_regs, i32 30, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 32, ptr @.str.203, ptr @.str.100, ptr @peri0_cg_regs, i32 31, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 33, ptr @.str.204, ptr @.str.110, ptr @peri1_cg_regs, i32 0, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 34, ptr @.str.205, ptr @.str.110, ptr @peri1_cg_regs, i32 1, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 35, ptr @.str.206, ptr @.str.100, ptr @peri1_cg_regs, i32 2, ptr @mtk_clk_gate_ops_setclr, i32 0 }], section ".init.rodata", align 4
@peri_clks = internal constant [4 x %struct.mtk_composite] [%struct.mtk_composite { i32 36, ptr @.str.207, ptr @uart_ck_sel_parents, ptr null, i32 4, i32 1036, i32 0, i32 0, i8 0, i8 1, i8 -1, i8 -1, i8 0, i8 0, i8 2 }, %struct.mtk_composite { i32 37, ptr @.str.208, ptr @uart_ck_sel_parents, ptr null, i32 4, i32 1036, i32 0, i32 0, i8 1, i8 1, i8 -1, i8 -1, i8 0, i8 0, i8 2 }, %struct.mtk_composite { i32 38, ptr @.str.209, ptr @uart_ck_sel_parents, ptr null, i32 4, i32 1036, i32 0, i32 0, i8 2, i8 1, i8 -1, i8 -1, i8 0, i8 0, i8 2 }, %struct.mtk_composite { i32 39, ptr @.str.210, ptr @uart_ck_sel_parents, ptr null, i32 4, i32 1036, i32 0, i32 0, i8 3, i8 1, i8 -1, i8 -1, i8 0, i8 0, i8 2 }], section ".init.rodata", align 4
@.str.172 = private unnamed_addr constant [9 x i8] c"peri_nfi\00", align 1
@peri0_cg_regs = internal constant %struct.mtk_gate_regs { i32 24, i32 16, i32 8 }, section ".init.rodata", align 4
@.str.173 = private unnamed_addr constant [11 x i8] c"peri_therm\00", align 1
@.str.174 = private unnamed_addr constant [10 x i8] c"peri_pwm1\00", align 1
@.str.175 = private unnamed_addr constant [10 x i8] c"peri_pwm2\00", align 1
@.str.176 = private unnamed_addr constant [10 x i8] c"peri_pwm3\00", align 1
@.str.177 = private unnamed_addr constant [10 x i8] c"peri_pwm4\00", align 1
@.str.178 = private unnamed_addr constant [10 x i8] c"peri_pwm5\00", align 1
@.str.179 = private unnamed_addr constant [10 x i8] c"peri_pwm6\00", align 1
@.str.180 = private unnamed_addr constant [10 x i8] c"peri_pwm7\00", align 1
@.str.181 = private unnamed_addr constant [9 x i8] c"peri_pwm\00", align 1
@.str.182 = private unnamed_addr constant [10 x i8] c"peri_usb0\00", align 1
@.str.183 = private unnamed_addr constant [10 x i8] c"peri_usb1\00", align 1
@.str.184 = private unnamed_addr constant [12 x i8] c"peri_ap_dma\00", align 1
@.str.185 = private unnamed_addr constant [14 x i8] c"peri_msdc30_0\00", align 1
@.str.186 = private unnamed_addr constant [14 x i8] c"peri_msdc30_1\00", align 1
@.str.187 = private unnamed_addr constant [14 x i8] c"peri_msdc30_2\00", align 1
@.str.188 = private unnamed_addr constant [14 x i8] c"peri_msdc30_3\00", align 1
@.str.189 = private unnamed_addr constant [13 x i8] c"peri_nli_arb\00", align 1
@.str.190 = private unnamed_addr constant [10 x i8] c"peri_irda\00", align 1
@.str.191 = private unnamed_addr constant [11 x i8] c"peri_uart0\00", align 1
@.str.192 = private unnamed_addr constant [11 x i8] c"peri_uart1\00", align 1
@.str.193 = private unnamed_addr constant [11 x i8] c"peri_uart2\00", align 1
@.str.194 = private unnamed_addr constant [11 x i8] c"peri_uart3\00", align 1
@.str.195 = private unnamed_addr constant [10 x i8] c"peri_i2c0\00", align 1
@.str.196 = private unnamed_addr constant [10 x i8] c"peri_i2c1\00", align 1
@.str.197 = private unnamed_addr constant [10 x i8] c"peri_i2c2\00", align 1
@.str.198 = private unnamed_addr constant [10 x i8] c"peri_i2c3\00", align 1
@.str.199 = private unnamed_addr constant [10 x i8] c"peri_i2c4\00", align 1
@.str.200 = private unnamed_addr constant [12 x i8] c"peri_auxadc\00", align 1
@.str.201 = private unnamed_addr constant [10 x i8] c"peri_spi0\00", align 1
@.str.202 = private unnamed_addr constant [10 x i8] c"peri_i2c5\00", align 1
@.str.203 = private unnamed_addr constant [12 x i8] c"peri_nfiecc\00", align 1
@.str.204 = private unnamed_addr constant [9 x i8] c"peri_spi\00", align 1
@peri1_cg_regs = internal constant %struct.mtk_gate_regs { i32 28, i32 20, i32 12 }, section ".init.rodata", align 4
@.str.205 = private unnamed_addr constant [10 x i8] c"peri_irrx\00", align 1
@.str.206 = private unnamed_addr constant [10 x i8] c"peri_i2c6\00", align 1
@.str.207 = private unnamed_addr constant [13 x i8] c"uart0_ck_sel\00", align 1
@uart_ck_sel_parents = internal constant [2 x ptr] [ptr @.str.3, ptr @.str.109], section ".init.rodata", align 4
@.str.208 = private unnamed_addr constant [13 x i8] c"uart1_ck_sel\00", align 1
@.str.209 = private unnamed_addr constant [13 x i8] c"uart2_ck_sel\00", align 1
@.str.210 = private unnamed_addr constant [13 x i8] c"uart3_ck_sel\00", align 1
@__func__.mtk_apmixedsys_init = private unnamed_addr constant [20 x i8] c"mtk_apmixedsys_init\00", align 1
@plls = internal constant [14 x %struct.mtk_pll_data] [%struct.mtk_pll_data { i32 1, ptr @.str.171, i32 512, i32 524, i32 1, i32 516, i32 0, i32 0, i8 0, i32 24, i32 0, ptr null, i32 16777216, i32 0, i32 -1294967296, i32 21, i32 0, i32 516, i32 0, i32 0, ptr null, ptr null, i32 0, i8 0 }, %struct.mtk_pll_data { i32 2, ptr @.str.11, i32 528, i32 540, i32 1, i32 532, i32 0, i32 0, i8 0, i32 24, i32 0, ptr null, i32 16777216, i32 0, i32 -1294967296, i32 21, i32 0, i32 532, i32 0, i32 0, ptr null, ptr null, i32 0, i8 0 }, %struct.mtk_pll_data { i32 3, ptr @.str.14, i32 544, i32 556, i32 -268435199, i32 544, i32 0, i32 0, i8 0, i32 4, i32 1, ptr null, i32 16777216, i32 0, i32 -1294967296, i32 21, i32 0, i32 548, i32 0, i32 0, ptr null, ptr null, i32 0, i8 0 }, %struct.mtk_pll_data { i32 4, ptr @.str.22, i32 560, i32 572, i32 -33554431, i32 560, i32 0, i32 0, i8 0, i32 4, i32 1, ptr null, i32 16777216, i32 0, i32 -1294967296, i32 7, i32 0, i32 564, i32 14, i32 0, ptr null, ptr null, i32 0, i8 0 }, %struct.mtk_pll_data { i32 5, ptr @.str.49, i32 576, i32 588, i32 1, i32 580, i32 0, i32 0, i8 0, i32 24, i32 0, ptr null, i32 16777216, i32 0, i32 -1294967296, i32 21, i32 0, i32 580, i32 0, i32 0, ptr @mmpll_div_table, ptr null, i32 0, i8 0 }, %struct.mtk_pll_data { i32 6, ptr @.str.52, i32 592, i32 604, i32 1, i32 592, i32 0, i32 0, i8 0, i32 4, i32 0, ptr null, i32 16777216, i32 0, i32 -1294967296, i32 21, i32 0, i32 596, i32 0, i32 0, ptr null, ptr null, i32 0, i8 0 }, %struct.mtk_pll_data { i32 7, ptr @.str.97, i32 608, i32 620, i32 1, i32 608, i32 0, i32 0, i8 0, i32 4, i32 0, ptr null, i32 16777216, i32 0, i32 -1294967296, i32 21, i32 0, i32 612, i32 0, i32 0, ptr null, ptr null, i32 0, i8 0 }, %struct.mtk_pll_data { i32 8, ptr @.str.19, i32 624, i32 636, i32 1, i32 624, i32 0, i32 0, i8 0, i32 4, i32 0, ptr null, i32 16777216, i32 0, i32 -1294967296, i32 21, i32 0, i32 628, i32 0, i32 0, ptr null, ptr null, i32 0, i8 0 }, %struct.mtk_pll_data { i32 9, ptr @.str.213, i32 640, i32 652, i32 1, i32 640, i32 0, i32 0, i8 0, i32 4, i32 0, ptr null, i32 16777216, i32 0, i32 -1294967296, i32 21, i32 0, i32 644, i32 0, i32 0, ptr null, ptr null, i32 0, i8 0 }, %struct.mtk_pll_data { i32 10, ptr @.str.94, i32 656, i32 668, i32 1, i32 656, i32 0, i32 0, i8 0, i32 4, i32 0, ptr null, i32 16777216, i32 0, i32 -1294967296, i32 21, i32 0, i32 660, i32 0, i32 0, ptr null, ptr null, i32 0, i8 0 }, %struct.mtk_pll_data { i32 11, ptr @.str.37, i32 672, i32 688, i32 1, i32 672, i32 676, i32 0, i8 0, i32 4, i32 0, ptr null, i32 16777216, i32 0, i32 -1294967296, i32 31, i32 0, i32 676, i32 0, i32 0, ptr null, ptr null, i32 0, i8 0 }, %struct.mtk_pll_data { i32 12, ptr @.str.39, i32 692, i32 708, i32 1, i32 692, i32 696, i32 0, i8 0, i32 4, i32 0, ptr null, i32 16777216, i32 0, i32 -1294967296, i32 31, i32 0, i32 696, i32 0, i32 0, ptr null, ptr null, i32 0, i8 0 }, %struct.mtk_pll_data { i32 13, ptr @.str.8, i32 720, i32 732, i32 1, i32 720, i32 0, i32 0, i8 0, i32 4, i32 0, ptr null, i32 16777216, i32 0, i32 -1294967296, i32 21, i32 0, i32 724, i32 0, i32 0, ptr null, ptr null, i32 0, i8 0 }, %struct.mtk_pll_data { i32 14, ptr @.str.56, i32 752, i32 764, i32 1, i32 752, i32 0, i32 0, i8 0, i32 4, i32 0, ptr null, i32 16777216, i32 0, i32 -1294967296, i32 21, i32 0, i32 756, i32 0, i32 0, ptr null, ptr null, i32 0, i8 0 }], align 4
@.str.211 = private unnamed_addr constant [34 x i8] c"\013Failed to register clk %s: %ld\0A\00", align 1
@.str.212 = private unnamed_addr constant [9 x i8] c"hdmi_ref\00", align 1
@mmpll_div_table = internal constant [6 x %struct.mtk_pll_div_table] [%struct.mtk_pll_div_table { i32 0, i32 -1294967296 }, %struct.mtk_pll_div_table { i32 1, i32 1000000000 }, %struct.mtk_pll_div_table { i32 2, i32 702000000 }, %struct.mtk_pll_div_table { i32 3, i32 253500000 }, %struct.mtk_pll_div_table { i32 4, i32 126750000 }, %struct.mtk_pll_div_table zeroinitializer], align 4
@.str.213 = private unnamed_addr constant [5 x i8] c"mpll\00", align 1
@.str.214 = private unnamed_addr constant [11 x i8] c"ref2usb_tx\00", align 1
@img_clks = internal constant [7 x %struct.mtk_gate] [%struct.mtk_gate { i32 1, ptr @.str.215, ptr @.str.103, ptr @cg_regs_4_8_0, i32 0, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 2, ptr @.str.216, ptr @.str.103, ptr @cg_regs_4_8_0, i32 5, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 3, ptr @.str.217, ptr @.str.103, ptr @cg_regs_4_8_0, i32 6, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 4, ptr @.str.218, ptr @.str.108, ptr @cg_regs_4_8_0, i32 7, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 5, ptr @.str.219, ptr @.str.103, ptr @cg_regs_4_8_0, i32 8, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 6, ptr @.str.220, ptr @.str.103, ptr @cg_regs_4_8_0, i32 9, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 7, ptr @.str.221, ptr @.str.103, ptr @cg_regs_4_8_0, i32 11, ptr @mtk_clk_gate_ops_setclr, i32 0 }], section ".init.rodata", align 4
@__func__.mtk_imgsys_init = private unnamed_addr constant [16 x i8] c"mtk_imgsys_init\00", align 1
@.str.215 = private unnamed_addr constant [14 x i8] c"img_larb2_smi\00", align 1
@cg_regs_4_8_0 = internal constant %struct.mtk_gate_regs { i32 0, i32 8, i32 4 }, section ".init.rodata", align 4
@.str.216 = private unnamed_addr constant [12 x i8] c"img_cam_smi\00", align 1
@.str.217 = private unnamed_addr constant [12 x i8] c"img_cam_cam\00", align 1
@.str.218 = private unnamed_addr constant [11 x i8] c"img_sen_tg\00", align 1
@.str.219 = private unnamed_addr constant [12 x i8] c"img_sen_cam\00", align 1
@.str.220 = private unnamed_addr constant [11 x i8] c"img_cam_sv\00", align 1
@.str.221 = private unnamed_addr constant [7 x i8] c"img_fd\00", align 1
@vdec_clks = internal constant [2 x %struct.mtk_gate] [%struct.mtk_gate { i32 1, ptr @.str.222, ptr @.str.105, ptr @vdec0_cg_regs, i32 0, ptr @mtk_clk_gate_ops_setclr_inv, i32 0 }, %struct.mtk_gate { i32 2, ptr @.str.223, ptr @.str.103, ptr @vdec1_cg_regs, i32 0, ptr @mtk_clk_gate_ops_setclr_inv, i32 0 }], section ".init.rodata", align 4
@__func__.mtk_vdecsys_init = private unnamed_addr constant [17 x i8] c"mtk_vdecsys_init\00", align 1
@.str.222 = private unnamed_addr constant [10 x i8] c"vdec_cken\00", align 1
@vdec0_cg_regs = internal constant %struct.mtk_gate_regs { i32 0, i32 4, i32 0 }, section ".init.rodata", align 4
@mtk_clk_gate_ops_setclr_inv = external dso_local constant %struct.clk_ops, align 4
@.str.223 = private unnamed_addr constant [15 x i8] c"vdec_larb_cken\00", align 1
@vdec1_cg_regs = internal constant %struct.mtk_gate_regs { i32 8, i32 12, i32 8 }, section ".init.rodata", align 4
@venc_clks = internal constant [4 x %struct.mtk_gate] [%struct.mtk_gate { i32 1, ptr @.str.224, ptr @.str.103, ptr @cg_regs_4_8_0, i32 0, ptr @mtk_clk_gate_ops_setclr_inv, i32 0 }, %struct.mtk_gate { i32 2, ptr @.str.225, ptr @.str.106, ptr @cg_regs_4_8_0, i32 4, ptr @mtk_clk_gate_ops_setclr_inv, i32 0 }, %struct.mtk_gate { i32 3, ptr @.str.226, ptr @.str.106, ptr @cg_regs_4_8_0, i32 8, ptr @mtk_clk_gate_ops_setclr_inv, i32 0 }, %struct.mtk_gate { i32 4, ptr @.str.227, ptr @.str.106, ptr @cg_regs_4_8_0, i32 12, ptr @mtk_clk_gate_ops_setclr_inv, i32 0 }], section ".init.rodata", align 4
@__func__.mtk_vencsys_init = private unnamed_addr constant [17 x i8] c"mtk_vencsys_init\00", align 1
@.str.224 = private unnamed_addr constant [10 x i8] c"venc_cke0\00", align 1
@.str.225 = private unnamed_addr constant [10 x i8] c"venc_cke1\00", align 1
@.str.226 = private unnamed_addr constant [10 x i8] c"venc_cke2\00", align 1
@.str.227 = private unnamed_addr constant [10 x i8] c"venc_cke3\00", align 1
@venclt_clks = internal constant [2 x %struct.mtk_gate] [%struct.mtk_gate { i32 1, ptr @.str.228, ptr @.str.103, ptr @cg_regs_4_8_0, i32 0, ptr @mtk_clk_gate_ops_setclr_inv, i32 0 }, %struct.mtk_gate { i32 2, ptr @.str.229, ptr @.str.123, ptr @cg_regs_4_8_0, i32 4, ptr @mtk_clk_gate_ops_setclr_inv, i32 0 }], section ".init.rodata", align 4
@__func__.mtk_vencltsys_init = private unnamed_addr constant [19 x i8] c"mtk_vencltsys_init\00", align 1
@.str.228 = private unnamed_addr constant [12 x i8] c"venclt_cke0\00", align 1
@.str.229 = private unnamed_addr constant [12 x i8] c"venclt_cke1\00", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__of_table_mtk_apmixedsys, ptr @__of_table_mtk_imgsys, ptr @__of_table_mtk_infrasys, ptr @__of_table_mtk_pericfg, ptr @__of_table_mtk_topckgen, ptr @__of_table_mtk_vdecsys, ptr @__of_table_mtk_vencltsys, ptr @__of_table_mtk_vencsys], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @mtk_topckgen_init(ptr noundef %0) #0 section ".init.text" {
  %2 = tail call ptr @of_iomap(ptr noundef %0, i32 noundef 0) #3
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.mtk_topckgen_init) #4
  br label %13

6:                                                ; preds = %1
  %7 = tail call ptr @mtk_alloc_clk_data(i32 noundef 142) #3
  store ptr %7, ptr @mt8173_top_clk_data, align 4
  tail call void @mtk_clk_register_fixed_clks(ptr noundef nonnull @fixed_clks, i32 noundef 6, ptr noundef %7) #3
  tail call void @mtk_clk_register_factors(ptr noundef nonnull @top_divs, i32 noundef 77, ptr noundef %7) #3
  tail call void @mtk_clk_register_composites(ptr noundef nonnull @top_muxes, i32 noundef 56, ptr noundef nonnull %2, ptr noundef nonnull @mt8173_clk_lock, ptr noundef %7) #3
  %8 = tail call i32 @of_clk_add_provider(ptr noundef %0, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef %7) #3
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.mtk_topckgen_init, i32 noundef %8) #4
  br label %12

12:                                               ; preds = %10, %6
  tail call fastcc void @mtk_clk_enable_critical() #5
  br label %13

13:                                               ; preds = %12, %4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @mtk_infrasys_init(ptr noundef %0) #0 section ".init.text" {
  %2 = tail call ptr @mtk_alloc_clk_data(i32 noundef 15) #3
  %3 = tail call i32 @mtk_clk_register_gates(ptr noundef %0, ptr noundef nonnull @infra_clks, i32 noundef 11, ptr noundef %2) #3
  tail call void @mtk_clk_register_factors(ptr noundef nonnull @infra_divs, i32 noundef 1, ptr noundef %2) #3
  %4 = tail call i32 @mtk_clk_register_cpumuxes(ptr noundef %0, ptr noundef nonnull @cpu_muxes, i32 noundef 2, ptr noundef %2) #3
  %5 = tail call i32 @of_clk_add_provider(ptr noundef %0, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef %2) #3
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.mtk_infrasys_init, i32 noundef %5) #4
  br label %9

9:                                                ; preds = %7, %1
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
  %7 = tail call ptr @mtk_alloc_clk_data(i32 noundef 40) #3
  %8 = tail call i32 @mtk_clk_register_gates(ptr noundef %0, ptr noundef nonnull @peri_gates, i32 noundef 35, ptr noundef %7) #3
  tail call void @mtk_clk_register_composites(ptr noundef nonnull @peri_clks, i32 noundef 4, ptr noundef nonnull %2, ptr noundef nonnull @mt8173_clk_lock, ptr noundef %7) #3
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
  %2 = tail call ptr @of_iomap(ptr noundef %0, i32 noundef 0) #3
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.mtk_apmixedsys_init) #4
  br label %30

6:                                                ; preds = %1
  %7 = tail call ptr @mtk_alloc_clk_data(i32 noundef 17) #3
  store ptr %7, ptr @mt8173_pll_clk_data, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %6
  tail call void @iounmap(ptr noundef nonnull %2) #3
  br label %30

10:                                               ; preds = %6
  tail call void @mtk_clk_register_plls(ptr noundef %0, ptr noundef nonnull @plls, i32 noundef 14, ptr noundef nonnull %7) #3
  %11 = getelementptr i8, ptr %2, i32 8
  %12 = tail call ptr @mtk_clk_register_ref2usb_tx(ptr noundef nonnull @.str.214, ptr noundef nonnull @.str.3, ptr noundef %11) #3
  %13 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = ptrtoint ptr %12 to i32
  %16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.211, ptr noundef nonnull @.str.214, i32 noundef %15) #4
  br label %20

17:                                               ; preds = %10
  %18 = load ptr, ptr %7, align 4
  %19 = getelementptr ptr, ptr %18, i32 15
  store ptr %12, ptr %19, align 4
  br label %20

20:                                               ; preds = %17, %14
  %21 = getelementptr i8, ptr %2, i32 64
  %22 = tail call ptr @clk_register_divider_table(ptr noundef null, ptr noundef nonnull @.str.212, ptr noundef nonnull @.str.20, i32 noundef 0, ptr noundef %21, i8 noundef zeroext 16, i8 noundef zeroext 3, i8 noundef zeroext 2, ptr noundef null, ptr noundef null) #3
  %23 = load ptr, ptr %7, align 4
  %24 = getelementptr ptr, ptr %23, i32 16
  store ptr %22, ptr %24, align 4
  %25 = tail call i32 @of_clk_add_provider(ptr noundef %0, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef nonnull %7) #3
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %20
  %28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.mtk_apmixedsys_init, i32 noundef %25) #4
  br label %29

29:                                               ; preds = %27, %20
  tail call fastcc void @mtk_clk_enable_critical() #5
  br label %30

30:                                               ; preds = %29, %9, %4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @mtk_imgsys_init(ptr noundef %0) #0 section ".init.text" {
  %2 = tail call ptr @mtk_alloc_clk_data(i32 noundef 8) #3
  %3 = tail call i32 @mtk_clk_register_gates(ptr noundef %0, ptr noundef nonnull @img_clks, i32 noundef 7, ptr noundef %2) #3
  %4 = tail call i32 @of_clk_add_provider(ptr noundef %0, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef %2) #3
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.mtk_imgsys_init, i32 noundef %4) #4
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @mtk_vdecsys_init(ptr noundef %0) #0 section ".init.text" {
  %2 = tail call ptr @mtk_alloc_clk_data(i32 noundef 3) #3
  %3 = tail call i32 @mtk_clk_register_gates(ptr noundef %0, ptr noundef nonnull @vdec_clks, i32 noundef 2, ptr noundef %2) #3
  %4 = tail call i32 @of_clk_add_provider(ptr noundef %0, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef %2) #3
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.mtk_vdecsys_init, i32 noundef %4) #4
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @mtk_vencsys_init(ptr noundef %0) #0 section ".init.text" {
  %2 = tail call ptr @mtk_alloc_clk_data(i32 noundef 5) #3
  %3 = tail call i32 @mtk_clk_register_gates(ptr noundef %0, ptr noundef nonnull @venc_clks, i32 noundef 4, ptr noundef %2) #3
  %4 = tail call i32 @of_clk_add_provider(ptr noundef %0, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef %2) #3
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.mtk_vencsys_init, i32 noundef %4) #4
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @mtk_vencltsys_init(ptr noundef %0) #0 section ".init.text" {
  %2 = tail call ptr @mtk_alloc_clk_data(i32 noundef 3) #3
  %3 = tail call i32 @mtk_clk_register_gates(ptr noundef %0, ptr noundef nonnull @venclt_clks, i32 noundef 2, ptr noundef %2) #3
  %4 = tail call i32 @of_clk_add_provider(ptr noundef %0, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef %2) #3
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.mtk_vencltsys_init, i32 noundef %4) #4
  br label %8

8:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mtk_alloc_clk_data(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_clk_register_fixed_clks(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_clk_register_factors(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_clk_register_composites(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_onecell_get(ptr noundef, ptr noundef) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @mtk_clk_enable_critical() unnamed_addr #0 section ".init.text" {
  %1 = load ptr, ptr @mt8173_top_clk_data, align 4
  %2 = icmp ne ptr %1, null
  %3 = load ptr, ptr @mt8173_pll_clk_data, align 4
  %4 = icmp ne ptr %3, null
  %5 = select i1 %2, i1 %4, i1 false
  br i1 %5, label %6, label %71

6:                                                ; preds = %0
  %7 = load ptr, ptr %3, align 4
  %8 = getelementptr ptr, ptr %7, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 @clk_prepare(ptr noundef %9) #3
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %6
  %13 = tail call i32 @clk_enable(ptr noundef %9) #3
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %12
  tail call void @clk_unprepare(ptr noundef %9) #3
  br label %16

16:                                               ; preds = %15, %12, %6
  %17 = load ptr, ptr @mt8173_pll_clk_data, align 4
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr ptr, ptr %18, i32 2
  %20 = load ptr, ptr %19, align 4
  %21 = tail call i32 @clk_prepare(ptr noundef %20) #3
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %16
  %24 = tail call i32 @clk_enable(ptr noundef %20) #3
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %23
  tail call void @clk_unprepare(ptr noundef %20) #3
  br label %27

27:                                               ; preds = %26, %23, %16
  %28 = load ptr, ptr @mt8173_top_clk_data, align 4
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr ptr, ptr %29, i32 83
  %31 = load ptr, ptr %30, align 4
  %32 = tail call i32 @clk_prepare(ptr noundef %31) #3
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %27
  %35 = tail call i32 @clk_enable(ptr noundef %31) #3
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %34
  tail call void @clk_unprepare(ptr noundef %31) #3
  br label %38

38:                                               ; preds = %37, %34, %27
  %39 = load ptr, ptr @mt8173_top_clk_data, align 4
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr ptr, ptr %40, i32 84
  %42 = load ptr, ptr %41, align 4
  %43 = tail call i32 @clk_prepare(ptr noundef %42) #3
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %38
  %46 = tail call i32 @clk_enable(ptr noundef %42) #3
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %45
  tail call void @clk_unprepare(ptr noundef %42) #3
  br label %49

49:                                               ; preds = %48, %45, %38
  %50 = load ptr, ptr @mt8173_top_clk_data, align 4
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr ptr, ptr %51, i32 108
  %53 = load ptr, ptr %52, align 4
  %54 = tail call i32 @clk_prepare(ptr noundef %53) #3
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %49
  %57 = tail call i32 @clk_enable(ptr noundef %53) #3
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %56
  tail call void @clk_unprepare(ptr noundef %53) #3
  br label %60

60:                                               ; preds = %59, %56, %49
  %61 = load ptr, ptr @mt8173_top_clk_data, align 4
  %62 = load ptr, ptr %61, align 4
  %63 = getelementptr ptr, ptr %62, i32 120
  %64 = load ptr, ptr %63, align 4
  %65 = tail call i32 @clk_prepare(ptr noundef %64) #3
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %60
  %68 = tail call i32 @clk_enable(ptr noundef %64) #3
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %67
  tail call void @clk_unprepare(ptr noundef %64) #3
  br label %71

71:                                               ; preds = %70, %67, %60, %0
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_clk_register_gates(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_clk_register_cpumuxes(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_register_reset_controller(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_clk_register_plls(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mtk_clk_register_ref2usb_tx(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_divider_table(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { cold nounwind }
attributes #5 = { cold }

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
