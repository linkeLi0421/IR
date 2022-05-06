; ModuleID = '/llk/IR/drivers/clk/mediatek/clk-mt8516.c_pt.bc'
source_filename = "../drivers/clk/mediatek/clk-mt8516.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.mtk_fixed_clk = type { i32, ptr, ptr, i32 }
%struct.mtk_gate = type { i32, ptr, ptr, ptr, i32, ptr, i32 }
%struct.mtk_fixed_factor = type { i32, ptr, ptr, i32, i32 }
%struct.mtk_composite = type { i32, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.mtk_clk_divider = type { i32, ptr, ptr, i32, i32, i8, i8, i8, ptr }
%struct.mtk_gate_regs = type { i32, i32, i32 }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mtk_pll_data = type { i32, ptr, i32, i32, i32, i32, i32, i32, i8, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i8 }
%struct.mtk_pll_div_table = type { i32, i32 }

@__of_table_mtk_topckgen = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8516-topckgen\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mtk_topckgen_init }, section "__clk_of_table", align 4
@__of_table_mtk_infracfg = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8516-infracfg\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mtk_infracfg_init }, section "__clk_of_table", align 4
@__of_table_mtk_apmixedsys = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8516-apmixedsys\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mtk_apmixedsys_init }, section "__clk_of_table", align 4
@.str = private unnamed_addr constant [24 x i8] c"\013%s(): ioremap failed\0A\00", align 1
@__func__.mtk_topckgen_init = private unnamed_addr constant [18 x i8] c"mtk_topckgen_init\00", align 1
@fixed_clks = internal constant [3 x %struct.mtk_fixed_clk] [%struct.mtk_fixed_clk { i32 0, ptr @.str.2, ptr null, i32 0 }, %struct.mtk_fixed_clk { i32 1, ptr @.str.3, ptr @.str.2, i32 26000000 }, %struct.mtk_fixed_clk { i32 2, ptr @.str.4, ptr @.str.5, i32 800000000 }], section ".init.rodata", align 4
@top_clks = internal constant [86 x %struct.mtk_gate] [%struct.mtk_gate { i32 46, ptr @.str.6, ptr @.str.7, ptr @top1_cg_regs, i32 1, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 47, ptr @.str.8, ptr @.str.7, ptr @top1_cg_regs, i32 2, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 48, ptr @.str.9, ptr @.str.10, ptr @top1_cg_regs, i32 3, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 49, ptr @.str.11, ptr @.str.12, ptr @top1_cg_regs, i32 4, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 50, ptr @.str.13, ptr @.str.7, ptr @top1_cg_regs, i32 5, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 51, ptr @.str.14, ptr @.str.15, ptr @top1_cg_regs, i32 6, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 52, ptr @.str.16, ptr @.str.17, ptr @top1_cg_regs, i32 7, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 53, ptr @.str.18, ptr @.str.19, ptr @top1_cg_regs, i32 8, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 54, ptr @.str.20, ptr @.str.7, ptr @top1_cg_regs, i32 9, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 55, ptr @.str.21, ptr @.str.22, ptr @top1_cg_regs, i32 10, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 56, ptr @.str.23, ptr @.str.24, ptr @top1_cg_regs, i32 11, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 57, ptr @.str.25, ptr @.str.7, ptr @top1_cg_regs, i32 12, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 58, ptr @.str.26, ptr @.str.27, ptr @top1_cg_regs, i32 13, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 59, ptr @.str.28, ptr @.str.29, ptr @top1_cg_regs, i32 14, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 60, ptr @.str.30, ptr @.str.7, ptr @top1_cg_regs, i32 15, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 61, ptr @.str.31, ptr @.str.32, ptr @top1_cg_regs, i32 16, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 62, ptr @.str.33, ptr @.str.34, ptr @top1_cg_regs, i32 17, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 63, ptr @.str.35, ptr @.str.36, ptr @top1_cg_regs, i32 18, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 64, ptr @.str.37, ptr @.str.38, ptr @top1_cg_regs, i32 19, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 65, ptr @.str.39, ptr @.str.29, ptr @top1_cg_regs, i32 20, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 66, ptr @.str.40, ptr @.str.7, ptr @top1_cg_regs, i32 21, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 67, ptr @.str.41, ptr @.str.29, ptr @top1_cg_regs, i32 22, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 68, ptr @.str.42, ptr @.str.43, ptr @top1_cg_regs, i32 23, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 69, ptr @.str.44, ptr @.str.29, ptr @top1_cg_regs, i32 24, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 70, ptr @.str.45, ptr @.str.29, ptr @top1_cg_regs, i32 25, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 71, ptr @.str.46, ptr @.str.29, ptr @top1_cg_regs, i32 27, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 72, ptr @.str.47, ptr @.str.29, ptr @top1_cg_regs, i32 28, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 73, ptr @.str.48, ptr @.str.29, ptr @top1_cg_regs, i32 29, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 74, ptr @.str.49, ptr @.str.29, ptr @top1_cg_regs, i32 30, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 75, ptr @.str.50, ptr @.str.29, ptr @top1_cg_regs, i32 31, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 76, ptr @.str.51, ptr @.str.7, ptr @top2_cg_regs, i32 0, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 77, ptr @.str.52, ptr @.str.53, ptr @top2_cg_regs, i32 1, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 78, ptr @.str.54, ptr @.str.7, ptr @top2_cg_regs, i32 2, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 79, ptr @.str.55, ptr @.str.7, ptr @top2_cg_regs, i32 4, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 80, ptr @.str.56, ptr @.str.7, ptr @top2_cg_regs, i32 5, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 81, ptr @.str.57, ptr @.str.29, ptr @top2_cg_regs, i32 6, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 82, ptr @.str.58, ptr @.str.7, ptr @top2_cg_regs, i32 7, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 83, ptr @.str.59, ptr @.str.60, ptr @top2_cg_regs, i32 8, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 84, ptr @.str.61, ptr @.str.60, ptr @top2_cg_regs, i32 9, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 85, ptr @.str.62, ptr @.str.60, ptr @top2_cg_regs, i32 10, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 86, ptr @.str.63, ptr @.str.60, ptr @top2_cg_regs, i32 11, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 87, ptr @.str.64, ptr @.str.60, ptr @top2_cg_regs, i32 12, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 88, ptr @.str.65, ptr @.str.60, ptr @top2_cg_regs, i32 13, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 89, ptr @.str.66, ptr @.str.27, ptr @top2_cg_regs, i32 14, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 90, ptr @.str.67, ptr @.str.7, ptr @top2_cg_regs, i32 15, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 91, ptr @.str.68, ptr @.str.69, ptr @top2_cg_regs, i32 19, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 92, ptr @.str.70, ptr @.str.7, ptr @top2_cg_regs, i32 20, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 93, ptr @.str.71, ptr @.str.72, ptr @top2_cg_regs, i32 21, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 94, ptr @.str.73, ptr @.str.74, ptr @top2_cg_regs, i32 22, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 95, ptr @.str.75, ptr @.str.7, ptr @top2_cg_regs, i32 23, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 96, ptr @.str.76, ptr @.str.7, ptr @top2_cg_regs, i32 24, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 97, ptr @.str.77, ptr @.str.78, ptr @top2_cg_regs, i32 25, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 98, ptr @.str.79, ptr @.str.7, ptr @top2_cg_regs, i32 26, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 174, ptr @.str.80, ptr @.str.33, ptr @top2_cg_regs, i32 28, ptr @mtk_clk_gate_ops_setclr_inv, i32 0 }, %struct.mtk_gate { i32 175, ptr @.str.81, ptr @.str.35, ptr @top2_cg_regs, i32 29, ptr @mtk_clk_gate_ops_setclr_inv, i32 0 }, %struct.mtk_gate { i32 176, ptr @.str.82, ptr @.str.83, ptr @top2_cg_regs, i32 30, ptr @mtk_clk_gate_ops_setclr_inv, i32 0 }, %struct.mtk_gate { i32 173, ptr @.str.27, ptr @.str.84, ptr @top2_cg_regs, i32 31, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 99, ptr @.str.85, ptr @.str.86, ptr @top3_cg_regs, i32 0, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 100, ptr @.str.83, ptr @.str.87, ptr @top3_cg_regs, i32 1, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 101, ptr @.str.74, ptr @.str.88, ptr @top3_cg_regs, i32 2, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 102, ptr @.str.89, ptr @.str.90, ptr @top3_cg_regs, i32 8, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 103, ptr @.str.91, ptr @.str.92, ptr @top3_cg_regs, i32 9, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 104, ptr @.str.93, ptr @.str.94, ptr @top3_cg_regs, i32 10, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 105, ptr @.str.95, ptr @.str.96, ptr @top3_cg_regs, i32 11, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 106, ptr @.str.97, ptr @.str.98, ptr @top3_cg_regs, i32 12, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 107, ptr @.str.60, ptr @.str.99, ptr @top3_cg_regs, i32 13, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 108, ptr @.str.100, ptr @.str.101, ptr @top3_cg_regs, i32 14, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 109, ptr @.str.78, ptr @.str.102, ptr @top3_cg_regs, i32 15, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 110, ptr @.str.103, ptr @.str.104, ptr @top3_cg_regs, i32 16, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 111, ptr @.str.19, ptr @.str.105, ptr @top3_cg_regs, i32 17, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 112, ptr @.str.17, ptr @.str.106, ptr @top3_cg_regs, i32 18, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 113, ptr @.str.107, ptr @.str.108, ptr @top4_cg_regs, i32 8, ptr @mtk_clk_gate_ops_setclr_inv, i32 0 }, %struct.mtk_gate { i32 114, ptr @.str.109, ptr @.str.110, ptr @top4_cg_regs, i32 9, ptr @mtk_clk_gate_ops_setclr_inv, i32 0 }, %struct.mtk_gate { i32 115, ptr @.str.111, ptr @.str.112, ptr @top4_cg_regs, i32 10, ptr @mtk_clk_gate_ops_setclr_inv, i32 0 }, %struct.mtk_gate { i32 116, ptr @.str.113, ptr @.str.114, ptr @top4_cg_regs, i32 11, ptr @mtk_clk_gate_ops_setclr_inv, i32 0 }, %struct.mtk_gate { i32 117, ptr @.str.115, ptr @.str.116, ptr @top4_cg_regs, i32 12, ptr @mtk_clk_gate_ops_setclr_inv, i32 0 }, %struct.mtk_gate { i32 118, ptr @.str.117, ptr @.str.118, ptr @top4_cg_regs, i32 13, ptr @mtk_clk_gate_ops_setclr_inv, i32 0 }, %struct.mtk_gate { i32 119, ptr @.str.119, ptr @.str.120, ptr @top5_cg_regs, i32 0, ptr @mtk_clk_gate_ops_no_setclr, i32 0 }, %struct.mtk_gate { i32 120, ptr @.str.121, ptr @.str.122, ptr @top5_cg_regs, i32 1, ptr @mtk_clk_gate_ops_no_setclr, i32 0 }, %struct.mtk_gate { i32 121, ptr @.str.123, ptr @.str.124, ptr @top5_cg_regs, i32 2, ptr @mtk_clk_gate_ops_no_setclr, i32 0 }, %struct.mtk_gate { i32 122, ptr @.str.125, ptr @.str.126, ptr @top5_cg_regs, i32 3, ptr @mtk_clk_gate_ops_no_setclr, i32 0 }, %struct.mtk_gate { i32 123, ptr @.str.127, ptr @.str.128, ptr @top5_cg_regs, i32 4, ptr @mtk_clk_gate_ops_no_setclr, i32 0 }, %struct.mtk_gate { i32 124, ptr @.str.129, ptr @.str.130, ptr @top5_cg_regs, i32 5, ptr @mtk_clk_gate_ops_no_setclr, i32 0 }, %struct.mtk_gate { i32 125, ptr @.str.131, ptr @.str.132, ptr @top5_cg_regs, i32 6, ptr @mtk_clk_gate_ops_no_setclr, i32 0 }, %struct.mtk_gate { i32 126, ptr @.str.133, ptr @.str.134, ptr @top5_cg_regs, i32 7, ptr @mtk_clk_gate_ops_no_setclr, i32 0 }, %struct.mtk_gate { i32 127, ptr @.str.135, ptr @.str.136, ptr @top5_cg_regs, i32 8, ptr @mtk_clk_gate_ops_no_setclr, i32 0 }], section ".init.rodata", align 4
@top_divs = internal constant [43 x %struct.mtk_fixed_factor] [%struct.mtk_fixed_factor { i32 3, ptr @.str.137, ptr @.str.4, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 4, ptr @.str.138, ptr @.str.139, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 5, ptr @.str.140, ptr @.str.139, i32 1, i32 4 }, %struct.mtk_fixed_factor { i32 6, ptr @.str.141, ptr @.str.139, i32 1, i32 8 }, %struct.mtk_fixed_factor { i32 7, ptr @.str.142, ptr @.str.139, i32 1, i32 16 }, %struct.mtk_fixed_factor { i32 8, ptr @.str.143, ptr @.str.139, i32 1, i32 11 }, %struct.mtk_fixed_factor { i32 9, ptr @.str.144, ptr @.str.139, i32 1, i32 22 }, %struct.mtk_fixed_factor { i32 10, ptr @.str.145, ptr @.str.139, i32 1, i32 3 }, %struct.mtk_fixed_factor { i32 11, ptr @.str.146, ptr @.str.139, i32 1, i32 6 }, %struct.mtk_fixed_factor { i32 12, ptr @.str.147, ptr @.str.139, i32 1, i32 12 }, %struct.mtk_fixed_factor { i32 13, ptr @.str.148, ptr @.str.139, i32 1, i32 5 }, %struct.mtk_fixed_factor { i32 14, ptr @.str.149, ptr @.str.139, i32 1, i32 10 }, %struct.mtk_fixed_factor { i32 15, ptr @.str.150, ptr @.str.139, i32 1, i32 20 }, %struct.mtk_fixed_factor { i32 16, ptr @.str.151, ptr @.str.139, i32 1, i32 40 }, %struct.mtk_fixed_factor { i32 17, ptr @.str.152, ptr @.str.139, i32 1, i32 7 }, %struct.mtk_fixed_factor { i32 18, ptr @.str.153, ptr @.str.139, i32 1, i32 14 }, %struct.mtk_fixed_factor { i32 19, ptr @.str.154, ptr @.str.155, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 20, ptr @.str.156, ptr @.str.155, i32 1, i32 4 }, %struct.mtk_fixed_factor { i32 21, ptr @.str.157, ptr @.str.155, i32 1, i32 8 }, %struct.mtk_fixed_factor { i32 22, ptr @.str.158, ptr @.str.155, i32 1, i32 16 }, %struct.mtk_fixed_factor { i32 23, ptr @.str.159, ptr @.str.155, i32 1, i32 3 }, %struct.mtk_fixed_factor { i32 24, ptr @.str.160, ptr @.str.155, i32 1, i32 6 }, %struct.mtk_fixed_factor { i32 25, ptr @.str.53, ptr @.str.155, i32 1, i32 12 }, %struct.mtk_fixed_factor { i32 26, ptr @.str.161, ptr @.str.155, i32 1, i32 24 }, %struct.mtk_fixed_factor { i32 27, ptr @.str.162, ptr @.str.155, i32 1, i32 5 }, %struct.mtk_fixed_factor { i32 28, ptr @.str.163, ptr @.str.155, i32 1, i32 20 }, %struct.mtk_fixed_factor { i32 29, ptr @.str.164, ptr @.str.165, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 30, ptr @.str.166, ptr @.str.165, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 31, ptr @.str.167, ptr @.str.165, i32 1, i32 3 }, %struct.mtk_fixed_factor { i32 32, ptr @.str.168, ptr @.str.155, i32 1, i32 26 }, %struct.mtk_fixed_factor { i32 33, ptr @.str.169, ptr @.str.170, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 34, ptr @.str.108, ptr @.str.169, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 35, ptr @.str.110, ptr @.str.107, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 36, ptr @.str.112, ptr @.str.109, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 37, ptr @.str.171, ptr @.str.172, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 38, ptr @.str.114, ptr @.str.171, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 39, ptr @.str.116, ptr @.str.113, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 40, ptr @.str.118, ptr @.str.115, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 41, ptr @.str.29, ptr @.str.5, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 42, ptr @.str.173, ptr @.str.5, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 43, ptr @.str.69, ptr @.str.7, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 44, ptr @.str.174, ptr @.str.38, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 45, ptr @.str.175, ptr @.str.88, i32 1, i32 2 }], section ".init.rodata", align 4
@top_muxes = internal global [34 x %struct.mtk_composite] [%struct.mtk_composite { i32 128, ptr @.str.22, ptr @uart0_parents, ptr null, i32 4, i32 0, i32 0, i32 0, i8 0, i8 1, i8 -1, i8 -1, i8 0, i8 0, i8 2 }, %struct.mtk_composite { i32 130, ptr @.str.7, ptr @ahb_infra_parents, ptr null, i32 4, i32 0, i32 0, i32 0, i8 4, i8 4, i8 -1, i8 -1, i8 0, i8 0, i8 13 }, %struct.mtk_composite { i32 131, ptr @.str.34, ptr @msdc0_parents, ptr null, i32 4, i32 0, i32 0, i32 0, i8 11, i8 3, i8 -1, i8 -1, i8 0, i8 0, i8 8 }, %struct.mtk_composite { i32 132, ptr @.str.24, ptr @uart1_parents, ptr null, i32 4, i32 0, i32 0, i32 0, i8 19, i8 1, i8 -1, i8 -1, i8 0, i8 0, i8 2 }, %struct.mtk_composite { i32 133, ptr @.str.36, ptr @msdc1_parents, ptr null, i32 4, i32 0, i32 0, i32 0, i8 20, i8 3, i8 -1, i8 -1, i8 0, i8 0, i8 8 }, %struct.mtk_composite { i32 134, ptr @.str.176, ptr @pmicspi_parents, ptr null, i32 4, i32 0, i32 0, i32 0, i8 24, i8 2, i8 -1, i8 -1, i8 0, i8 0, i8 4 }, %struct.mtk_composite { i32 135, ptr @.str.177, ptr @qaxi_aud26m_parents, ptr null, i32 4, i32 0, i32 0, i32 0, i8 26, i8 1, i8 -1, i8 -1, i8 0, i8 0, i8 2 }, %struct.mtk_composite { i32 136, ptr @.str.178, ptr @aud_intbus_parents, ptr null, i32 4, i32 0, i32 0, i32 0, i8 27, i8 3, i8 -1, i8 -1, i8 0, i8 0, i8 5 }, %struct.mtk_composite { i32 137, ptr @.str.38, ptr @nfi2x_pad_parents, ptr null, i32 4, i32 4, i32 0, i32 0, i8 0, i8 7, i8 -1, i8 -1, i8 0, i8 0, i8 85 }, %struct.mtk_composite { i32 138, ptr @.str.15, ptr @nfi1x_pad_parents, ptr null, i32 4, i32 4, i32 0, i32 0, i8 7, i8 1, i8 -1, i8 -1, i8 0, i8 0, i8 2 }, %struct.mtk_composite { i32 140, ptr @.str.84, ptr @usb_78m_parents, ptr null, i32 4, i32 4, i32 0, i32 0, i8 20, i8 3, i8 -1, i8 -1, i8 0, i8 0, i8 5 }, %struct.mtk_composite { i32 141, ptr @.str.86, ptr @spinor_parents, ptr null, i32 4, i32 64, i32 0, i32 0, i8 0, i8 3, i8 -1, i8 -1, i8 0, i8 0, i8 8 }, %struct.mtk_composite { i32 142, ptr @.str.87, ptr @msdc2_parents, ptr null, i32 4, i32 64, i32 0, i32 0, i8 3, i8 3, i8 -1, i8 -1, i8 0, i8 0, i8 8 }, %struct.mtk_composite { i32 143, ptr @.str.88, ptr @eth_parents, ptr null, i32 4, i32 64, i32 0, i32 0, i8 6, i8 3, i8 -1, i8 -1, i8 0, i8 0, i8 5 }, %struct.mtk_composite { i32 144, ptr @.str.90, ptr @aud1_parents, ptr null, i32 4, i32 64, i32 0, i32 0, i8 22, i8 1, i8 -1, i8 -1, i8 0, i8 0, i8 2 }, %struct.mtk_composite { i32 145, ptr @.str.92, ptr @aud2_parents, ptr null, i32 4, i32 64, i32 0, i32 0, i8 23, i8 1, i8 -1, i8 -1, i8 0, i8 0, i8 2 }, %struct.mtk_composite { i32 146, ptr @.str.94, ptr @aud_engen1_parents, ptr null, i32 4, i32 64, i32 0, i32 0, i8 24, i8 2, i8 -1, i8 -1, i8 0, i8 0, i8 4 }, %struct.mtk_composite { i32 147, ptr @.str.96, ptr @aud_engen2_parents, ptr null, i32 4, i32 64, i32 0, i32 0, i8 26, i8 2, i8 -1, i8 -1, i8 0, i8 0, i8 4 }, %struct.mtk_composite { i32 148, ptr @.str.98, ptr @i2c_parents, ptr null, i32 4, i32 64, i32 0, i32 0, i8 28, i8 2, i8 -1, i8 -1, i8 0, i8 0, i8 4 }, %struct.mtk_composite { i32 149, ptr @.str.179, ptr @aud_i2s0_m_parents, ptr null, i32 4, i32 68, i32 0, i32 0, i8 12, i8 1, i8 -1, i8 -1, i8 0, i8 0, i8 2 }, %struct.mtk_composite { i32 150, ptr @.str.180, ptr @aud_i2s0_m_parents, ptr null, i32 4, i32 68, i32 0, i32 0, i8 13, i8 1, i8 -1, i8 -1, i8 0, i8 0, i8 2 }, %struct.mtk_composite { i32 151, ptr @.str.181, ptr @aud_i2s0_m_parents, ptr null, i32 4, i32 68, i32 0, i32 0, i8 14, i8 1, i8 -1, i8 -1, i8 0, i8 0, i8 2 }, %struct.mtk_composite { i32 152, ptr @.str.182, ptr @aud_i2s0_m_parents, ptr null, i32 4, i32 68, i32 0, i32 0, i8 15, i8 1, i8 -1, i8 -1, i8 0, i8 0, i8 2 }, %struct.mtk_composite { i32 153, ptr @.str.183, ptr @aud_i2s0_m_parents, ptr null, i32 4, i32 68, i32 0, i32 0, i8 16, i8 1, i8 -1, i8 -1, i8 0, i8 0, i8 2 }, %struct.mtk_composite { i32 154, ptr @.str.184, ptr @aud_i2s0_m_parents, ptr null, i32 4, i32 68, i32 0, i32 0, i8 17, i8 1, i8 -1, i8 -1, i8 0, i8 0, i8 2 }, %struct.mtk_composite { i32 155, ptr @.str.185, ptr @aud_i2s0_m_parents, ptr null, i32 4, i32 68, i32 0, i32 0, i8 18, i8 1, i8 -1, i8 -1, i8 0, i8 0, i8 2 }, %struct.mtk_composite { i32 156, ptr @.str.99, ptr @pwm_parents, ptr null, i32 4, i32 124, i32 0, i32 0, i8 0, i8 1, i8 -1, i8 -1, i8 0, i8 0, i8 2 }, %struct.mtk_composite { i32 157, ptr @.str.43, ptr @spi_parents, ptr null, i32 4, i32 124, i32 0, i32 0, i8 1, i8 2, i8 -1, i8 -1, i8 0, i8 0, i8 4 }, %struct.mtk_composite { i32 158, ptr @.str.101, ptr @aud_spdifin_parents, ptr null, i32 4, i32 124, i32 0, i32 0, i8 3, i8 1, i8 -1, i8 -1, i8 0, i8 0, i8 2 }, %struct.mtk_composite { i32 159, ptr @.str.102, ptr @uart2_parents, ptr null, i32 4, i32 124, i32 0, i32 0, i8 4, i8 1, i8 -1, i8 -1, i8 0, i8 0, i8 2 }, %struct.mtk_composite { i32 160, ptr @.str.104, ptr @bsi_parents, ptr null, i32 4, i32 124, i32 0, i32 0, i8 5, i8 2, i8 -1, i8 -1, i8 0, i8 0, i8 4 }, %struct.mtk_composite { i32 161, ptr @.str.105, ptr @dbg_atclk_parents, ptr null, i32 4, i32 124, i32 0, i32 0, i8 7, i8 3, i8 -1, i8 -1, i8 0, i8 0, i8 5 }, %struct.mtk_composite { i32 162, ptr @.str.186, ptr @csw_nfiecc_parents, ptr null, i32 4, i32 124, i32 0, i32 0, i8 10, i8 3, i8 -1, i8 -1, i8 0, i8 0, i8 5 }, %struct.mtk_composite { i32 163, ptr @.str.106, ptr @nfiecc_parents, ptr null, i32 4, i32 124, i32 0, i32 0, i8 13, i8 3, i8 -1, i8 -1, i8 0, i8 0, i8 5 }], section ".init.data", align 4
@mt8516_clk_lock = internal global %struct.spinlock zeroinitializer, align 4
@top_adj_divs = internal constant [9 x %struct.mtk_clk_divider] [%struct.mtk_clk_divider { i32 164, ptr @.str.120, ptr @.str.179, i32 0, i32 72, i8 0, i8 8, i8 0, ptr null }, %struct.mtk_clk_divider { i32 165, ptr @.str.122, ptr @.str.180, i32 0, i32 72, i8 8, i8 8, i8 0, ptr null }, %struct.mtk_clk_divider { i32 166, ptr @.str.124, ptr @.str.181, i32 0, i32 72, i8 16, i8 8, i8 0, ptr null }, %struct.mtk_clk_divider { i32 167, ptr @.str.126, ptr @.str.182, i32 0, i32 72, i8 24, i8 8, i8 0, ptr null }, %struct.mtk_clk_divider { i32 168, ptr @.str.128, ptr @.str.183, i32 0, i32 76, i8 0, i8 8, i8 0, ptr null }, %struct.mtk_clk_divider { i32 169, ptr @.str.130, ptr @.str.127, i32 0, i32 76, i8 8, i8 8, i8 0, ptr null }, %struct.mtk_clk_divider { i32 170, ptr @.str.132, ptr @.str.184, i32 0, i32 76, i8 16, i8 8, i8 0, ptr null }, %struct.mtk_clk_divider { i32 171, ptr @.str.134, ptr @.str.131, i32 0, i32 76, i8 24, i8 8, i8 0, ptr null }, %struct.mtk_clk_divider { i32 172, ptr @.str.136, ptr @.str.185, i32 0, i32 120, i8 0, i8 8, i8 0, ptr null }], align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"\013%s(): could not register clock provider: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"clk_null\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"i2s_infra_bck\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"mempll\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"clk26m\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"them\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"ahb_infra_sel\00", align 1
@top1_cg_regs = internal constant %struct.mtk_gate_regs { i32 36, i32 132, i32 84 }, align 4
@mtk_clk_gate_ops_setclr = external dso_local constant %struct.clk_ops, align 4
@.str.8 = private unnamed_addr constant [6 x i8] c"apdma\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"i2c0\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"ifr_i2c0_sel\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"i2c1\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"ifr_i2c1_sel\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"auxadc1\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"nfi\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"nfi1x_pad_sel\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"nfiecc\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"rg_nfiecc\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"debugsys\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"rg_dbg_atclk\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"pwm\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"uart0\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"uart0_sel\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"uart1\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"uart1_sel\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"btif\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"usb\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"usb_78m\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c"flashif_26m\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"clk26m_ck\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c"auxadc2\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"i2c2\00", align 1
@.str.32 = private unnamed_addr constant [13 x i8] c"ifr_i2c2_sel\00", align 1
@.str.33 = private unnamed_addr constant [6 x i8] c"msdc0\00", align 1
@.str.34 = private unnamed_addr constant [10 x i8] c"msdc0_sel\00", align 1
@.str.35 = private unnamed_addr constant [6 x i8] c"msdc1\00", align 1
@.str.36 = private unnamed_addr constant [10 x i8] c"msdc1_sel\00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"nfi2x\00", align 1
@.str.38 = private unnamed_addr constant [14 x i8] c"nfi2x_pad_sel\00", align 1
@.str.39 = private unnamed_addr constant [9 x i8] c"pwrap_ap\00", align 1
@.str.40 = private unnamed_addr constant [4 x i8] c"sej\00", align 1
@.str.41 = private unnamed_addr constant [13 x i8] c"memslp_dlyer\00", align 1
@.str.42 = private unnamed_addr constant [4 x i8] c"spi\00", align 1
@.str.43 = private unnamed_addr constant [8 x i8] c"spi_sel\00", align 1
@.str.44 = private unnamed_addr constant [7 x i8] c"apxgpt\00", align 1
@.str.45 = private unnamed_addr constant [6 x i8] c"audio\00", align 1
@.str.46 = private unnamed_addr constant [9 x i8] c"pwrap_md\00", align 1
@.str.47 = private unnamed_addr constant [11 x i8] c"pwrap_conn\00", align 1
@.str.48 = private unnamed_addr constant [10 x i8] c"pwrap_26m\00", align 1
@.str.49 = private unnamed_addr constant [8 x i8] c"aux_adc\00", align 1
@.str.50 = private unnamed_addr constant [7 x i8] c"aux_tp\00", align 1
@.str.51 = private unnamed_addr constant [6 x i8] c"msdc2\00", align 1
@top2_cg_regs = internal constant %struct.mtk_gate_regs { i32 60, i32 156, i32 108 }, align 4
@.str.52 = private unnamed_addr constant [6 x i8] c"rbist\00", align 1
@.str.53 = private unnamed_addr constant [12 x i8] c"univpll_d12\00", align 1
@.str.54 = private unnamed_addr constant [8 x i8] c"nfi_bus\00", align 1
@.str.55 = private unnamed_addr constant [4 x i8] c"gce\00", align 1
@.str.56 = private unnamed_addr constant [5 x i8] c"trng\00", align 1
@.str.57 = private unnamed_addr constant [8 x i8] c"sej_13m\00", align 1
@.str.58 = private unnamed_addr constant [4 x i8] c"aes\00", align 1
@.str.59 = private unnamed_addr constant [6 x i8] c"pwm_b\00", align 1
@.str.60 = private unnamed_addr constant [13 x i8] c"rg_pwm_infra\00", align 1
@.str.61 = private unnamed_addr constant [8 x i8] c"pwm1_fb\00", align 1
@.str.62 = private unnamed_addr constant [8 x i8] c"pwm2_fb\00", align 1
@.str.63 = private unnamed_addr constant [8 x i8] c"pwm3_fb\00", align 1
@.str.64 = private unnamed_addr constant [8 x i8] c"pwm4_fb\00", align 1
@.str.65 = private unnamed_addr constant [8 x i8] c"pwm5_fb\00", align 1
@.str.66 = private unnamed_addr constant [7 x i8] c"usb_1p\00", align 1
@.str.67 = private unnamed_addr constant [16 x i8] c"flashif_freerun\00", align 1
@.str.68 = private unnamed_addr constant [8 x i8] c"eth_66m\00", align 1
@.str.69 = private unnamed_addr constant [13 x i8] c"ahb_infra_d2\00", align 1
@.str.70 = private unnamed_addr constant [9 x i8] c"eth_133m\00", align 1
@.str.71 = private unnamed_addr constant [9 x i8] c"feth_25m\00", align 1
@.str.72 = private unnamed_addr constant [16 x i8] c"ifr_eth_25m_sel\00", align 1
@.str.73 = private unnamed_addr constant [9 x i8] c"feth_50m\00", align 1
@.str.74 = private unnamed_addr constant [7 x i8] c"rg_eth\00", align 1
@.str.75 = private unnamed_addr constant [12 x i8] c"flashif_axi\00", align 1
@.str.76 = private unnamed_addr constant [6 x i8] c"usbif\00", align 1
@.str.77 = private unnamed_addr constant [6 x i8] c"uart2\00", align 1
@.str.78 = private unnamed_addr constant [9 x i8] c"rg_uart2\00", align 1
@.str.79 = private unnamed_addr constant [4 x i8] c"bsi\00", align 1
@.str.80 = private unnamed_addr constant [12 x i8] c"msdc0_infra\00", align 1
@mtk_clk_gate_ops_setclr_inv = external dso_local constant %struct.clk_ops, align 4
@.str.81 = private unnamed_addr constant [12 x i8] c"msdc1_infra\00", align 1
@.str.82 = private unnamed_addr constant [12 x i8] c"msdc2_infra\00", align 1
@.str.83 = private unnamed_addr constant [9 x i8] c"rg_msdc2\00", align 1
@.str.84 = private unnamed_addr constant [12 x i8] c"usb_78m_sel\00", align 1
@.str.85 = private unnamed_addr constant [10 x i8] c"rg_spinor\00", align 1
@.str.86 = private unnamed_addr constant [11 x i8] c"spinor_sel\00", align 1
@top3_cg_regs = internal constant %struct.mtk_gate_regs { i32 112, i32 176, i32 160 }, align 4
@.str.87 = private unnamed_addr constant [10 x i8] c"msdc2_sel\00", align 1
@.str.88 = private unnamed_addr constant [8 x i8] c"eth_sel\00", align 1
@.str.89 = private unnamed_addr constant [8 x i8] c"rg_aud1\00", align 1
@.str.90 = private unnamed_addr constant [9 x i8] c"aud1_sel\00", align 1
@.str.91 = private unnamed_addr constant [8 x i8] c"rg_aud2\00", align 1
@.str.92 = private unnamed_addr constant [9 x i8] c"aud2_sel\00", align 1
@.str.93 = private unnamed_addr constant [14 x i8] c"rg_aud_engen1\00", align 1
@.str.94 = private unnamed_addr constant [15 x i8] c"aud_engen1_sel\00", align 1
@.str.95 = private unnamed_addr constant [14 x i8] c"rg_aud_engen2\00", align 1
@.str.96 = private unnamed_addr constant [15 x i8] c"aud_engen2_sel\00", align 1
@.str.97 = private unnamed_addr constant [7 x i8] c"rg_i2c\00", align 1
@.str.98 = private unnamed_addr constant [8 x i8] c"i2c_sel\00", align 1
@.str.99 = private unnamed_addr constant [8 x i8] c"pwm_sel\00", align 1
@.str.100 = private unnamed_addr constant [16 x i8] c"rg_aud_spdif_in\00", align 1
@.str.101 = private unnamed_addr constant [16 x i8] c"aud_spdifin_sel\00", align 1
@.str.102 = private unnamed_addr constant [10 x i8] c"uart2_sel\00", align 1
@.str.103 = private unnamed_addr constant [7 x i8] c"rg_bsi\00", align 1
@.str.104 = private unnamed_addr constant [8 x i8] c"bsi_sel\00", align 1
@.str.105 = private unnamed_addr constant [14 x i8] c"dbg_atclk_sel\00", align 1
@.str.106 = private unnamed_addr constant [11 x i8] c"nfiecc_sel\00", align 1
@.str.107 = private unnamed_addr constant [15 x i8] c"rg_apll1_d2_en\00", align 1
@.str.108 = private unnamed_addr constant [9 x i8] c"apll1_d2\00", align 1
@top4_cg_regs = internal constant %struct.mtk_gate_regs { i32 116, i32 180, i32 164 }, align 4
@.str.109 = private unnamed_addr constant [15 x i8] c"rg_apll1_d4_en\00", align 1
@.str.110 = private unnamed_addr constant [9 x i8] c"apll1_d4\00", align 1
@.str.111 = private unnamed_addr constant [15 x i8] c"rg_apll1_d8_en\00", align 1
@.str.112 = private unnamed_addr constant [9 x i8] c"apll1_d8\00", align 1
@.str.113 = private unnamed_addr constant [15 x i8] c"rg_apll2_d2_en\00", align 1
@.str.114 = private unnamed_addr constant [9 x i8] c"apll2_d2\00", align 1
@.str.115 = private unnamed_addr constant [15 x i8] c"rg_apll2_d4_en\00", align 1
@.str.116 = private unnamed_addr constant [9 x i8] c"apll2_d4\00", align 1
@.str.117 = private unnamed_addr constant [15 x i8] c"rg_apll2_d8_en\00", align 1
@.str.118 = private unnamed_addr constant [9 x i8] c"apll2_d8\00", align 1
@.str.119 = private unnamed_addr constant [12 x i8] c"apll12_div0\00", align 1
@.str.120 = private unnamed_addr constant [15 x i8] c"apll12_ck_div0\00", align 1
@top5_cg_regs = internal constant %struct.mtk_gate_regs { i32 68, i32 68, i32 68 }, align 4
@mtk_clk_gate_ops_no_setclr = external dso_local constant %struct.clk_ops, align 4
@.str.121 = private unnamed_addr constant [12 x i8] c"apll12_div1\00", align 1
@.str.122 = private unnamed_addr constant [15 x i8] c"apll12_ck_div1\00", align 1
@.str.123 = private unnamed_addr constant [12 x i8] c"apll12_div2\00", align 1
@.str.124 = private unnamed_addr constant [15 x i8] c"apll12_ck_div2\00", align 1
@.str.125 = private unnamed_addr constant [12 x i8] c"apll12_div3\00", align 1
@.str.126 = private unnamed_addr constant [15 x i8] c"apll12_ck_div3\00", align 1
@.str.127 = private unnamed_addr constant [12 x i8] c"apll12_div4\00", align 1
@.str.128 = private unnamed_addr constant [15 x i8] c"apll12_ck_div4\00", align 1
@.str.129 = private unnamed_addr constant [13 x i8] c"apll12_div4b\00", align 1
@.str.130 = private unnamed_addr constant [16 x i8] c"apll12_ck_div4b\00", align 1
@.str.131 = private unnamed_addr constant [12 x i8] c"apll12_div5\00", align 1
@.str.132 = private unnamed_addr constant [15 x i8] c"apll12_ck_div5\00", align 1
@.str.133 = private unnamed_addr constant [13 x i8] c"apll12_div5b\00", align 1
@.str.134 = private unnamed_addr constant [16 x i8] c"apll12_ck_div5b\00", align 1
@.str.135 = private unnamed_addr constant [12 x i8] c"apll12_div6\00", align 1
@.str.136 = private unnamed_addr constant [15 x i8] c"apll12_ck_div6\00", align 1
@.str.137 = private unnamed_addr constant [9 x i8] c"dmpll_ck\00", align 1
@.str.138 = private unnamed_addr constant [11 x i8] c"mainpll_d2\00", align 1
@.str.139 = private unnamed_addr constant [8 x i8] c"mainpll\00", align 1
@.str.140 = private unnamed_addr constant [11 x i8] c"mainpll_d4\00", align 1
@.str.141 = private unnamed_addr constant [11 x i8] c"mainpll_d8\00", align 1
@.str.142 = private unnamed_addr constant [12 x i8] c"mainpll_d16\00", align 1
@.str.143 = private unnamed_addr constant [12 x i8] c"mainpll_d11\00", align 1
@.str.144 = private unnamed_addr constant [12 x i8] c"mainpll_d22\00", align 1
@.str.145 = private unnamed_addr constant [11 x i8] c"mainpll_d3\00", align 1
@.str.146 = private unnamed_addr constant [11 x i8] c"mainpll_d6\00", align 1
@.str.147 = private unnamed_addr constant [12 x i8] c"mainpll_d12\00", align 1
@.str.148 = private unnamed_addr constant [11 x i8] c"mainpll_d5\00", align 1
@.str.149 = private unnamed_addr constant [12 x i8] c"mainpll_d10\00", align 1
@.str.150 = private unnamed_addr constant [12 x i8] c"mainpll_d20\00", align 1
@.str.151 = private unnamed_addr constant [12 x i8] c"mainpll_d40\00", align 1
@.str.152 = private unnamed_addr constant [11 x i8] c"mainpll_d7\00", align 1
@.str.153 = private unnamed_addr constant [12 x i8] c"mainpll_d14\00", align 1
@.str.154 = private unnamed_addr constant [11 x i8] c"univpll_d2\00", align 1
@.str.155 = private unnamed_addr constant [8 x i8] c"univpll\00", align 1
@.str.156 = private unnamed_addr constant [11 x i8] c"univpll_d4\00", align 1
@.str.157 = private unnamed_addr constant [11 x i8] c"univpll_d8\00", align 1
@.str.158 = private unnamed_addr constant [12 x i8] c"univpll_d16\00", align 1
@.str.159 = private unnamed_addr constant [11 x i8] c"univpll_d3\00", align 1
@.str.160 = private unnamed_addr constant [11 x i8] c"univpll_d6\00", align 1
@.str.161 = private unnamed_addr constant [12 x i8] c"univpll_d24\00", align 1
@.str.162 = private unnamed_addr constant [11 x i8] c"univpll_d5\00", align 1
@.str.163 = private unnamed_addr constant [12 x i8] c"univpll_d20\00", align 1
@.str.164 = private unnamed_addr constant [10 x i8] c"mmpll380m\00", align 1
@.str.165 = private unnamed_addr constant [6 x i8] c"mmpll\00", align 1
@.str.166 = private unnamed_addr constant [9 x i8] c"mmpll_d2\00", align 1
@.str.167 = private unnamed_addr constant [11 x i8] c"mmpll_200m\00", align 1
@.str.168 = private unnamed_addr constant [14 x i8] c"usb_phy48m_ck\00", align 1
@.str.169 = private unnamed_addr constant [9 x i8] c"apll1_ck\00", align 1
@.str.170 = private unnamed_addr constant [6 x i8] c"apll1\00", align 1
@.str.171 = private unnamed_addr constant [9 x i8] c"apll2_ck\00", align 1
@.str.172 = private unnamed_addr constant [6 x i8] c"apll2\00", align 1
@.str.173 = private unnamed_addr constant [10 x i8] c"clk26m_d2\00", align 1
@.str.174 = private unnamed_addr constant [9 x i8] c"nfi1x_ck\00", align 1
@.str.175 = private unnamed_addr constant [10 x i8] c"eth_d2_ck\00", align 1
@uart0_parents = internal constant [2 x ptr] [ptr @.str.29, ptr @.str.161], section ".init.rodata", align 4
@ahb_infra_parents = internal constant [13 x ptr] [ptr @.str.2, ptr @.str.29, ptr @.str.143, ptr @.str.2, ptr @.str.147, ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.149], section ".init.rodata", align 4
@msdc0_parents = internal constant [8 x ptr] [ptr @.str.29, ptr @.str.160, ptr @.str.141, ptr @.str.157, ptr @.str.142, ptr @.str.167, ptr @.str.147, ptr @.str.166], section ".init.rodata", align 4
@uart1_parents = internal constant [2 x ptr] [ptr @.str.29, ptr @.str.161], section ".init.rodata", align 4
@msdc1_parents = internal constant [8 x ptr] [ptr @.str.29, ptr @.str.160, ptr @.str.141, ptr @.str.157, ptr @.str.142, ptr @.str.167, ptr @.str.147, ptr @.str.166], section ".init.rodata", align 4
@.str.176 = private unnamed_addr constant [12 x i8] c"pmicspi_sel\00", align 1
@pmicspi_parents = internal constant [4 x ptr] [ptr @.str.163, ptr @.str.168, ptr @.str.158, ptr @.str.29], section ".init.rodata", align 4
@.str.177 = private unnamed_addr constant [16 x i8] c"qaxi_aud26m_sel\00", align 1
@qaxi_aud26m_parents = internal constant [2 x ptr] [ptr @.str.29, ptr @.str.7], section ".init.rodata", align 4
@.str.178 = private unnamed_addr constant [15 x i8] c"aud_intbus_sel\00", align 1
@aud_intbus_parents = internal constant [5 x ptr] [ptr @.str.2, ptr @.str.29, ptr @.str.144, ptr @.str.2, ptr @.str.143], section ".init.rodata", align 4
@nfi2x_pad_parents = internal constant [85 x ptr] [ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.29, ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.147, ptr @.str.141, ptr @.str.2, ptr @.str.146, ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.140, ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.149, ptr @.str.152, ptr @.str.2, ptr @.str.148], section ".init.rodata", align 4
@nfi1x_pad_parents = internal constant [2 x ptr] [ptr @.str.7, ptr @.str.174], section ".init.rodata", align 4
@usb_78m_parents = internal constant [5 x ptr] [ptr @.str.2, ptr @.str.29, ptr @.str.158, ptr @.str.2, ptr @.str.150], section ".init.rodata", align 4
@spinor_parents = internal constant [8 x ptr] [ptr @.str.173, ptr @.str.29, ptr @.str.151, ptr @.str.161, ptr @.str.163, ptr @.str.150, ptr @.str.142, ptr @.str.53], section ".init.rodata", align 4
@msdc2_parents = internal constant [8 x ptr] [ptr @.str.29, ptr @.str.160, ptr @.str.141, ptr @.str.157, ptr @.str.142, ptr @.str.167, ptr @.str.147, ptr @.str.166], section ".init.rodata", align 4
@eth_parents = internal constant [5 x ptr] [ptr @.str.29, ptr @.str.151, ptr @.str.161, ptr @.str.163, ptr @.str.150], section ".init.rodata", align 4
@aud1_parents = internal constant [2 x ptr] [ptr @.str.29, ptr @.str.169], section ".init.rodata", align 4
@aud2_parents = internal constant [2 x ptr] [ptr @.str.29, ptr @.str.171], section ".init.rodata", align 4
@aud_engen1_parents = internal constant [4 x ptr] [ptr @.str.29, ptr @.str.107, ptr @.str.109, ptr @.str.111], section ".init.rodata", align 4
@aud_engen2_parents = internal constant [4 x ptr] [ptr @.str.29, ptr @.str.113, ptr @.str.115, ptr @.str.117], section ".init.rodata", align 4
@i2c_parents = internal constant [4 x ptr] [ptr @.str.29, ptr @.str.163, ptr @.str.158, ptr @.str.53], section ".init.rodata", align 4
@.str.179 = private unnamed_addr constant [15 x i8] c"aud_i2s0_m_sel\00", align 1
@aud_i2s0_m_parents = internal constant [2 x ptr] [ptr @.str.89, ptr @.str.91], section ".init.rodata", align 4
@.str.180 = private unnamed_addr constant [15 x i8] c"aud_i2s1_m_sel\00", align 1
@.str.181 = private unnamed_addr constant [15 x i8] c"aud_i2s2_m_sel\00", align 1
@.str.182 = private unnamed_addr constant [15 x i8] c"aud_i2s3_m_sel\00", align 1
@.str.183 = private unnamed_addr constant [15 x i8] c"aud_i2s4_m_sel\00", align 1
@.str.184 = private unnamed_addr constant [15 x i8] c"aud_i2s5_m_sel\00", align 1
@.str.185 = private unnamed_addr constant [16 x i8] c"aud_spdif_b_sel\00", align 1
@pwm_parents = internal constant [2 x ptr] [ptr @.str.29, ptr @.str.53], section ".init.rodata", align 4
@spi_parents = internal constant [4 x ptr] [ptr @.str.29, ptr @.str.53, ptr @.str.157, ptr @.str.160], section ".init.rodata", align 4
@aud_spdifin_parents = internal constant [2 x ptr] [ptr @.str.29, ptr @.str.154], section ".init.rodata", align 4
@uart2_parents = internal constant [2 x ptr] [ptr @.str.29, ptr @.str.161], section ".init.rodata", align 4
@bsi_parents = internal constant [4 x ptr] [ptr @.str.29, ptr @.str.149, ptr @.str.147, ptr @.str.150], section ".init.rodata", align 4
@dbg_atclk_parents = internal constant [5 x ptr] [ptr @.str.2, ptr @.str.29, ptr @.str.148, ptr @.str.2, ptr @.str.162], section ".init.rodata", align 4
@.str.186 = private unnamed_addr constant [15 x i8] c"csw_nfiecc_sel\00", align 1
@csw_nfiecc_parents = internal constant [5 x ptr] [ptr @.str.2, ptr @.str.152, ptr @.str.146, ptr @.str.2, ptr @.str.148], section ".init.rodata", align 4
@nfiecc_parents = internal constant [5 x ptr] [ptr @.str.2, ptr @.str.38, ptr @.str.140, ptr @.str.2, ptr @.str.186], section ".init.rodata", align 4
@__func__.mtk_infracfg_init = private unnamed_addr constant [18 x i8] c"mtk_infracfg_init\00", align 1
@ifr_muxes = internal constant [5 x %struct.mtk_composite] [%struct.mtk_composite { i32 0, ptr @.str.187, ptr @ifr_mux1_parents, ptr null, i32 4, i32 0, i32 0, i32 0, i8 2, i8 2, i8 -1, i8 -1, i8 0, i8 0, i8 4 }, %struct.mtk_composite { i32 1, ptr @.str.72, ptr @ifr_eth_25m_parents, ptr null, i32 4, i32 128, i32 0, i32 0, i8 0, i8 1, i8 -1, i8 -1, i8 0, i8 0, i8 2 }, %struct.mtk_composite { i32 2, ptr @.str.10, ptr @ifr_i2c0_parents, ptr null, i32 4, i32 128, i32 0, i32 0, i8 1, i8 1, i8 -1, i8 -1, i8 0, i8 0, i8 2 }, %struct.mtk_composite { i32 3, ptr @.str.12, ptr @ifr_i2c0_parents, ptr null, i32 4, i32 128, i32 0, i32 0, i8 2, i8 1, i8 -1, i8 -1, i8 0, i8 0, i8 2 }, %struct.mtk_composite { i32 4, ptr @.str.32, ptr @ifr_i2c0_parents, ptr null, i32 4, i32 128, i32 0, i32 0, i8 3, i8 1, i8 -1, i8 -1, i8 0, i8 0, i8 2 }], section ".init.rodata", align 4
@.str.187 = private unnamed_addr constant [13 x i8] c"ifr_mux1_sel\00", align 1
@ifr_mux1_parents = internal constant [4 x ptr] [ptr @.str.29, ptr @.str.188, ptr @.str.155, ptr @.str.138], section ".init.rodata", align 4
@ifr_eth_25m_parents = internal constant [2 x ptr] [ptr @.str.175, ptr @.str.74], section ".init.rodata", align 4
@ifr_i2c0_parents = internal constant [2 x ptr] [ptr @.str.69, ptr @.str.97], section ".init.rodata", align 4
@.str.188 = private unnamed_addr constant [7 x i8] c"armpll\00", align 1
@__func__.mtk_apmixedsys_init = private unnamed_addr constant [20 x i8] c"mtk_apmixedsys_init\00", align 1
@plls = internal constant [6 x %struct.mtk_pll_data] [%struct.mtk_pll_data { i32 0, ptr @.str.188, i32 256, i32 272, i32 1, i32 260, i32 0, i32 0, i8 0, i32 24, i32 0, ptr null, i32 134217728, i32 0, i32 1502000000, i32 21, i32 0, i32 260, i32 0, i32 0, ptr null, ptr null, i32 0, i8 0 }, %struct.mtk_pll_data { i32 1, ptr @.str.139, i32 288, i32 304, i32 1, i32 292, i32 0, i32 0, i8 0, i32 24, i32 1, ptr null, i32 134217728, i32 0, i32 1502000000, i32 21, i32 0, i32 292, i32 0, i32 0, ptr null, ptr null, i32 0, i8 0 }, %struct.mtk_pll_data { i32 2, ptr @.str.155, i32 320, i32 336, i32 805306369, i32 324, i32 0, i32 0, i8 0, i32 24, i32 1, ptr null, i32 134217728, i32 0, i32 1502000000, i32 7, i32 0, i32 324, i32 0, i32 0, ptr null, ptr null, i32 0, i8 0 }, %struct.mtk_pll_data { i32 3, ptr @.str.165, i32 352, i32 368, i32 1, i32 356, i32 0, i32 0, i8 0, i32 24, i32 0, ptr null, i32 134217728, i32 0, i32 1502000000, i32 21, i32 0, i32 356, i32 0, i32 0, ptr @mmpll_div_table, ptr null, i32 0, i8 0 }, %struct.mtk_pll_data { i32 4, ptr @.str.170, i32 384, i32 400, i32 1, i32 384, i32 404, i32 0, i8 0, i32 1, i32 0, ptr null, i32 134217728, i32 0, i32 1502000000, i32 31, i32 0, i32 388, i32 0, i32 0, ptr null, ptr null, i32 0, i8 0 }, %struct.mtk_pll_data { i32 5, ptr @.str.172, i32 416, i32 432, i32 1, i32 416, i32 436, i32 0, i8 0, i32 1, i32 0, ptr null, i32 134217728, i32 0, i32 1502000000, i32 31, i32 0, i32 420, i32 0, i32 0, ptr null, ptr null, i32 0, i8 0 }], align 4
@mmpll_div_table = internal constant [6 x %struct.mtk_pll_div_table] [%struct.mtk_pll_div_table { i32 0, i32 1502000000 }, %struct.mtk_pll_div_table { i32 1, i32 1000000000 }, %struct.mtk_pll_div_table { i32 2, i32 604500000 }, %struct.mtk_pll_div_table { i32 3, i32 253500000 }, %struct.mtk_pll_div_table { i32 4, i32 126750000 }, %struct.mtk_pll_div_table zeroinitializer], align 4
@llvm.compiler.used = appending global [3 x ptr] [ptr @__of_table_mtk_apmixedsys, ptr @__of_table_mtk_infracfg, ptr @__of_table_mtk_topckgen], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @mtk_topckgen_init(ptr noundef %0) #0 section ".init.text" {
  %2 = tail call ptr @of_iomap(ptr noundef %0, i32 noundef 0) #3
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.mtk_topckgen_init) #4
  br label %13

6:                                                ; preds = %1
  %7 = tail call ptr @mtk_alloc_clk_data(i32 noundef 177) #3
  tail call void @mtk_clk_register_fixed_clks(ptr noundef nonnull @fixed_clks, i32 noundef 3, ptr noundef %7) #3
  %8 = tail call i32 @mtk_clk_register_gates(ptr noundef %0, ptr noundef nonnull @top_clks, i32 noundef 86, ptr noundef %7) #3
  tail call void @mtk_clk_register_factors(ptr noundef nonnull @top_divs, i32 noundef 43, ptr noundef %7) #3
  tail call void @mtk_clk_register_composites(ptr noundef nonnull @top_muxes, i32 noundef 34, ptr noundef nonnull %2, ptr noundef nonnull @mt8516_clk_lock, ptr noundef %7) #3
  tail call void @mtk_clk_register_dividers(ptr noundef nonnull @top_adj_divs, i32 noundef 9, ptr noundef nonnull %2, ptr noundef nonnull @mt8516_clk_lock, ptr noundef %7) #3
  %9 = tail call i32 @of_clk_add_provider(ptr noundef %0, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef %7) #3
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %6
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.mtk_topckgen_init, i32 noundef %9) #4
  br label %13

13:                                               ; preds = %11, %6, %4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @mtk_infracfg_init(ptr noundef %0) #0 section ".init.text" {
  %2 = tail call ptr @of_iomap(ptr noundef %0, i32 noundef 0) #3
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.mtk_infracfg_init) #4
  br label %12

6:                                                ; preds = %1
  %7 = tail call ptr @mtk_alloc_clk_data(i32 noundef 5) #3
  tail call void @mtk_clk_register_composites(ptr noundef nonnull @ifr_muxes, i32 noundef 5, ptr noundef nonnull %2, ptr noundef nonnull @mt8516_clk_lock, ptr noundef %7) #3
  %8 = tail call i32 @of_clk_add_provider(ptr noundef %0, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef %7) #3
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.mtk_infracfg_init, i32 noundef %8) #4
  br label %12

12:                                               ; preds = %10, %6, %4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @mtk_apmixedsys_init(ptr noundef %0) #0 section ".init.text" {
  %2 = tail call ptr @of_iomap(ptr noundef %0, i32 noundef 0) #3
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.mtk_apmixedsys_init) #4
  br label %12

6:                                                ; preds = %1
  %7 = tail call ptr @mtk_alloc_clk_data(i32 noundef 6) #3
  tail call void @mtk_clk_register_plls(ptr noundef %0, ptr noundef nonnull @plls, i32 noundef 6, ptr noundef %7) #3
  %8 = tail call i32 @of_clk_add_provider(ptr noundef %0, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef %7) #3
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.mtk_apmixedsys_init, i32 noundef %8) #4
  br label %12

12:                                               ; preds = %10, %6, %4
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
declare dso_local i32 @mtk_clk_register_gates(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_clk_register_factors(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_clk_register_composites(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_clk_register_dividers(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_onecell_get(ptr noundef, ptr noundef) #1

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
