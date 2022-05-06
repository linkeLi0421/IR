; ModuleID = '/llk/IR/drivers/clk/mmp/clk-of-mmp2.c_pt.bc'
source_filename = "../drivers/clk/mmp/clk-of-mmp2.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.mmp_param_fixed_rate_clk = type { i32, ptr, ptr, i32, i32 }
%struct.mmp_param_pll_clk = type { i32, ptr, i32, i32, i32, i32, i8, i32, i32, i32 }
%struct.mmp_param_fixed_factor_clk = type { i32, ptr, ptr, i32, i32, i32 }
%struct.mmp_clk_factor_masks = type { i32, i32, i32, i32, i32, i32 }
%struct.mmp_clk_factor_tbl = type { i32, i32 }
%struct.mmp_param_gate_clk = type { i32, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr }
%struct.mmp_param_mux_clk = type { i32, ptr, ptr, i8, i32, i32, i8, i8, i8, ptr }
%struct.mmp_clk_mix_config = type { %struct.mmp_clk_mix_reg_info, ptr, i32, ptr, ptr, i8, i8 }
%struct.mmp_clk_mix_reg_info = type { ptr, ptr, i8, i8, i8, i8, i8 }
%struct.mmp_param_div_clk = type { i32, ptr, ptr, i32, i32, i8, i8, i8, ptr }
%struct.mmp2_clk_unit = type { %struct.mmp_clk_unit, i32, %struct.genpd_onecell_data, [3 x ptr], ptr, ptr, ptr }
%struct.mmp_clk_unit = type { i32, ptr, %struct.clk_onecell_data }
%struct.clk_onecell_data = type { ptr, i32 }
%struct.genpd_onecell_data = type { ptr, i32, ptr }
%struct.mmp_clk_reset_cell = type { i32, ptr, i32, i32, ptr }

@__of_table_mmp2_clk = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,mmp2-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mmp2_clk_init }, section "__clk_of_table", align 4
@__of_table_mmp3_clk = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,mmp3-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mmp2_clk_init }, section "__clk_of_table", align 4
@.str = private unnamed_addr constant [19 x i8] c"marvell,mmp3-clock\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"\013failed to map mpmu registers\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"\013failed to map apmu registers\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"\013failed to map apbc registers\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"gpu\00", align 1
@gpu_lock = internal global %struct.spinlock zeroinitializer, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"audio\00", align 1
@audio_lock = internal global %struct.spinlock zeroinitializer, align 4
@.str.6 = private unnamed_addr constant [7 x i8] c"camera\00", align 1
@fixed_rate_clks = internal global [4 x %struct.mmp_param_fixed_rate_clk] [%struct.mmp_param_fixed_rate_clk { i32 1, ptr @.str.11, ptr null, i32 0, i32 32768 }, %struct.mmp_param_fixed_rate_clk { i32 2, ptr @.str.12, ptr null, i32 0, i32 26000000 }, %struct.mmp_param_fixed_rate_clk { i32 27, ptr @.str.13, ptr null, i32 0, i32 480000000 }, %struct.mmp_param_fixed_rate_clk { i32 0, ptr @.str.14, ptr null, i32 0, i32 99666667 }], align 4
@mmp3_pll_clks = internal global [5 x %struct.mmp_param_pll_clk] [%struct.mmp_param_pll_clk { i32 16, ptr @.str.15, i32 797330000, i32 8, i32 16384, i32 16, i8 0, i32 26000000, i32 92, i32 25 }, %struct.mmp_param_pll_clk { i32 16, ptr @.str.16, i32 0, i32 52, i32 768, i32 52, i8 10, i32 26000000, i32 1044, i32 25 }, %struct.mmp_param_pll_clk { i32 28, ptr @.str.17, i32 0, i32 104, i32 16, i32 0, i8 0, i32 797330000, i32 104, i32 0 }, %struct.mmp_param_pll_clk { i32 29, ptr @.str.18, i32 0, i32 104, i32 256, i32 52, i8 10, i32 26000000, i32 104, i32 5 }, %struct.mmp_param_pll_clk { i32 30, ptr @.str.19, i32 0, i32 80, i32 768, i32 80, i8 10, i32 26000000, i32 88, i32 25 }], align 4
@pll_clks = internal global [2 x %struct.mmp_param_pll_clk] [%struct.mmp_param_pll_clk { i32 3, ptr @.str.15, i32 797330000, i32 8, i32 16384, i32 16, i8 0, i32 0, i32 0, i32 0 }, %struct.mmp_param_pll_clk { i32 16, ptr @.str.16, i32 0, i32 52, i32 768, i32 52, i8 10, i32 0, i32 0, i32 0 }], align 4
@fixed_factor_clks = internal global [17 x %struct.mmp_param_fixed_factor_clk] [%struct.mmp_param_fixed_factor_clk { i32 8, ptr @.str.20, ptr @.str.15, i32 1, i32 2, i32 0 }, %struct.mmp_param_fixed_factor_clk { i32 9, ptr @.str.8, ptr @.str.20, i32 1, i32 2, i32 0 }, %struct.mmp_param_fixed_factor_clk { i32 10, ptr @.str.21, ptr @.str.8, i32 1, i32 2, i32 0 }, %struct.mmp_param_fixed_factor_clk { i32 11, ptr @.str.22, ptr @.str.21, i32 1, i32 2, i32 0 }, %struct.mmp_param_fixed_factor_clk { i32 15, ptr @.str.23, ptr @.str.8, i32 1, i32 5, i32 0 }, %struct.mmp_param_fixed_factor_clk { i32 12, ptr @.str.24, ptr @.str.15, i32 1, i32 3, i32 0 }, %struct.mmp_param_fixed_factor_clk { i32 13, ptr @.str.25, ptr @.str.24, i32 1, i32 2, i32 0 }, %struct.mmp_param_fixed_factor_clk { i32 14, ptr @.str.26, ptr @.str.25, i32 1, i32 2, i32 0 }, %struct.mmp_param_fixed_factor_clk { i32 17, ptr @.str.27, ptr @.str.16, i32 1, i32 2, i32 0 }, %struct.mmp_param_fixed_factor_clk { i32 18, ptr @.str.28, ptr @.str.27, i32 1, i32 2, i32 0 }, %struct.mmp_param_fixed_factor_clk { i32 19, ptr @.str.29, ptr @.str.28, i32 1, i32 2, i32 0 }, %struct.mmp_param_fixed_factor_clk { i32 20, ptr @.str.30, ptr @.str.29, i32 1, i32 2, i32 0 }, %struct.mmp_param_fixed_factor_clk { i32 21, ptr @.str.31, ptr @.str.16, i32 1, i32 3, i32 0 }, %struct.mmp_param_fixed_factor_clk { i32 22, ptr @.str.32, ptr @.str.31, i32 1, i32 2, i32 0 }, %struct.mmp_param_fixed_factor_clk { i32 23, ptr @.str.33, ptr @.str.32, i32 1, i32 2, i32 0 }, %struct.mmp_param_fixed_factor_clk { i32 24, ptr @.str.34, ptr @.str.12, i32 1, i32 2, i32 0 }, %struct.mmp_param_fixed_factor_clk { i32 25, ptr @.str.35, ptr @.str.34, i32 1, i32 2, i32 0 }], align 4
@.str.7 = private unnamed_addr constant [9 x i8] c"uart_pll\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"pll1_4\00", align 1
@uart_factor_masks = internal global %struct.mmp_clk_factor_masks { i32 2, i32 8191, i32 8191, i32 16, i32 0, i32 0 }, align 4
@uart_factor_tbl = internal global [2 x %struct.mmp_clk_factor_tbl] [%struct.mmp_clk_factor_tbl { i32 8125, i32 1536 }, %struct.mmp_clk_factor_tbl { i32 3521, i32 689 }], align 4
@.str.9 = private unnamed_addr constant [9 x i8] c"i2s0_pll\00", align 1
@i2s_factor_masks = internal global %struct.mmp_clk_factor_masks { i32 2, i32 32767, i32 8191, i32 0, i32 15, i32 -805306368 }, align 4
@i2s_factor_tbl = internal global [9 x %struct.mmp_clk_factor_tbl] [%struct.mmp_clk_factor_tbl { i32 24868, i32 511 }, %struct.mmp_clk_factor_tbl { i32 28003, i32 793 }, %struct.mmp_clk_factor_tbl { i32 24941, i32 1025 }, %struct.mmp_clk_factor_tbl { i32 28003, i32 1586 }, %struct.mmp_clk_factor_tbl { i32 31158, i32 2561 }, %struct.mmp_clk_factor_tbl { i32 16288, i32 1845 }, %struct.mmp_clk_factor_tbl { i32 20772, i32 2561 }, %struct.mmp_clk_factor_tbl { i32 8144, i32 1845 }, %struct.mmp_clk_factor_tbl { i32 10386, i32 2561 }], align 4
@.str.10 = private unnamed_addr constant [9 x i8] c"i2s1_pll\00", align 1
@mpmu_gate_clks = internal global [2 x %struct.mmp_param_gate_clk] [%struct.mmp_param_gate_clk { i32 31, ptr @.str.36, ptr @.str.9, i32 4, i32 4132, i32 2097152, i32 2097152, i32 0, i32 0, ptr @acgr_lock }, %struct.mmp_param_gate_clk { i32 32, ptr @.str.37, ptr @.str.10, i32 4, i32 4132, i32 1048576, i32 1048576, i32 0, i32 0, ptr @acgr_lock }], align 4
@.str.11 = private unnamed_addr constant [6 x i8] c"clk32\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"vctcxo\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"usb_pll\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"i2s_pll\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"pll1\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"pll2\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"pll1_p\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"pll2_p\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"pll3\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"pll1_2\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"pll1_8\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"pll1_16\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"pll1_20\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"pll1_3\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"pll1_6\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"pll1_12\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"pll2_2\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"pll2_4\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"pll2_8\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c"pll2_16\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"pll2_3\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"pll2_6\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"pll2_12\00", align 1
@.str.34 = private unnamed_addr constant [9 x i8] c"vctcxo_2\00", align 1
@.str.35 = private unnamed_addr constant [9 x i8] c"vctcxo_4\00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c"i2s0_clk\00", align 1
@acgr_lock = internal global %struct.spinlock zeroinitializer, align 4
@.str.37 = private unnamed_addr constant [9 x i8] c"i2s1_clk\00", align 1
@apbc_mux_clks = internal global [9 x %struct.mmp_param_mux_clk] [%struct.mmp_param_mux_clk { i32 0, ptr @.str.38, ptr @uart_parent_names, i8 2, i32 4, i32 44, i8 4, i8 3, i8 0, ptr @uart0_lock }, %struct.mmp_param_mux_clk { i32 0, ptr @.str.39, ptr @uart_parent_names, i8 2, i32 4, i32 48, i8 4, i8 3, i8 0, ptr @uart1_lock }, %struct.mmp_param_mux_clk { i32 0, ptr @.str.40, ptr @uart_parent_names, i8 2, i32 4, i32 52, i8 4, i8 3, i8 0, ptr @uart2_lock }, %struct.mmp_param_mux_clk { i32 0, ptr @.str.41, ptr @uart_parent_names, i8 2, i32 4, i32 136, i8 4, i8 3, i8 0, ptr @uart2_lock }, %struct.mmp_param_mux_clk { i32 0, ptr @.str.42, ptr @ssp_parent_names, i8 4, i32 4, i32 80, i8 4, i8 3, i8 0, ptr @ssp0_lock }, %struct.mmp_param_mux_clk { i32 0, ptr @.str.43, ptr @ssp_parent_names, i8 4, i32 4, i32 84, i8 4, i8 3, i8 0, ptr @ssp1_lock }, %struct.mmp_param_mux_clk { i32 0, ptr @.str.44, ptr @ssp_parent_names, i8 4, i32 4, i32 88, i8 4, i8 3, i8 0, ptr @ssp2_lock }, %struct.mmp_param_mux_clk { i32 0, ptr @.str.45, ptr @ssp_parent_names, i8 4, i32 4, i32 92, i8 4, i8 3, i8 0, ptr @ssp3_lock }, %struct.mmp_param_mux_clk { i32 0, ptr @.str.46, ptr @timer_parent_names, i8 4, i32 4, i32 36, i8 4, i8 3, i8 0, ptr @timer_lock }], align 4
@apbc_gate_clks = internal global [23 x %struct.mmp_param_gate_clk] [%struct.mmp_param_gate_clk { i32 60, ptr @.str.47, ptr @.str.12, i32 4, i32 4, i32 7, i32 3, i32 0, i32 0, ptr @reset_lock }, %struct.mmp_param_gate_clk { i32 61, ptr @.str.48, ptr @.str.12, i32 4, i32 8, i32 7, i32 3, i32 0, i32 0, ptr @reset_lock }, %struct.mmp_param_gate_clk { i32 62, ptr @.str.49, ptr @.str.12, i32 4, i32 12, i32 7, i32 3, i32 0, i32 0, ptr @reset_lock }, %struct.mmp_param_gate_clk { i32 63, ptr @.str.50, ptr @.str.12, i32 4, i32 16, i32 7, i32 3, i32 0, i32 0, ptr @reset_lock }, %struct.mmp_param_gate_clk { i32 64, ptr @.str.51, ptr @.str.12, i32 4, i32 124, i32 7, i32 3, i32 0, i32 0, ptr @reset_lock }, %struct.mmp_param_gate_clk { i32 65, ptr @.str.52, ptr @.str.12, i32 4, i32 128, i32 7, i32 3, i32 0, i32 0, ptr @reset_lock }, %struct.mmp_param_gate_clk { i32 66, ptr @.str.53, ptr @.str.12, i32 4, i32 56, i32 7, i32 3, i32 0, i32 0, ptr @reset_lock }, %struct.mmp_param_gate_clk { i32 67, ptr @.str.54, ptr @.str.11, i32 4, i32 24, i32 7, i32 3, i32 0, i32 1, ptr @reset_lock }, %struct.mmp_param_gate_clk { i32 68, ptr @.str.55, ptr @.str.11, i32 4, i32 0, i32 135, i32 131, i32 0, i32 1, ptr @reset_lock }, %struct.mmp_param_gate_clk { i32 69, ptr @.str.56, ptr @.str.57, i32 4, i32 60, i32 7, i32 3, i32 0, i32 0, ptr @reset_lock }, %struct.mmp_param_gate_clk { i32 70, ptr @.str.58, ptr @.str.57, i32 4, i32 64, i32 7, i32 3, i32 0, i32 0, ptr @reset_lock }, %struct.mmp_param_gate_clk { i32 71, ptr @.str.59, ptr @.str.57, i32 4, i32 68, i32 7, i32 3, i32 0, i32 0, ptr @reset_lock }, %struct.mmp_param_gate_clk { i32 72, ptr @.str.60, ptr @.str.57, i32 4, i32 72, i32 7, i32 3, i32 0, i32 0, ptr @reset_lock }, %struct.mmp_param_gate_clk { i32 73, ptr @.str.61, ptr @.str.38, i32 4, i32 44, i32 7, i32 3, i32 0, i32 0, ptr @uart0_lock }, %struct.mmp_param_gate_clk { i32 74, ptr @.str.62, ptr @.str.39, i32 4, i32 48, i32 7, i32 3, i32 0, i32 0, ptr @uart1_lock }, %struct.mmp_param_gate_clk { i32 75, ptr @.str.63, ptr @.str.40, i32 4, i32 52, i32 7, i32 3, i32 0, i32 0, ptr @uart2_lock }, %struct.mmp_param_gate_clk { i32 76, ptr @.str.64, ptr @.str.41, i32 4, i32 136, i32 7, i32 3, i32 0, i32 0, ptr @uart2_lock }, %struct.mmp_param_gate_clk { i32 77, ptr @.str.65, ptr @.str.42, i32 4, i32 80, i32 7, i32 3, i32 0, i32 0, ptr @ssp0_lock }, %struct.mmp_param_gate_clk { i32 78, ptr @.str.66, ptr @.str.43, i32 4, i32 84, i32 7, i32 3, i32 0, i32 0, ptr @ssp1_lock }, %struct.mmp_param_gate_clk { i32 79, ptr @.str.67, ptr @.str.44, i32 4, i32 88, i32 7, i32 3, i32 0, i32 0, ptr @ssp2_lock }, %struct.mmp_param_gate_clk { i32 80, ptr @.str.68, ptr @.str.45, i32 4, i32 92, i32 7, i32 3, i32 0, i32 0, ptr @ssp3_lock }, %struct.mmp_param_gate_clk { i32 81, ptr @.str.69, ptr @.str.46, i32 4, i32 36, i32 7, i32 3, i32 0, i32 0, ptr @timer_lock }, %struct.mmp_param_gate_clk { i32 82, ptr @.str.70, ptr @.str.12, i32 4, i32 144, i32 7, i32 3, i32 0, i32 1, ptr @reset_lock }], align 4
@mmp3_apbc_gate_clks = internal global [3 x %struct.mmp_param_gate_clk] [%struct.mmp_param_gate_clk { i32 83, ptr @.str.71, ptr @.str.12, i32 4, i32 152, i32 7, i32 3, i32 0, i32 1, ptr @reset_lock }, %struct.mmp_param_gate_clk { i32 84, ptr @.str.72, ptr @.str.12, i32 4, i32 156, i32 7, i32 3, i32 0, i32 1, ptr @reset_lock }, %struct.mmp_param_gate_clk { i32 85, ptr @.str.73, ptr @.str.12, i32 4, i32 160, i32 7, i32 3, i32 0, i32 1, ptr @reset_lock }], align 4
@.str.38 = private unnamed_addr constant [10 x i8] c"uart0_mux\00", align 1
@uart_parent_names = internal constant [2 x ptr] [ptr @.str.7, ptr @.str.12], align 4
@uart0_lock = internal global %struct.spinlock zeroinitializer, align 4
@.str.39 = private unnamed_addr constant [10 x i8] c"uart1_mux\00", align 1
@uart1_lock = internal global %struct.spinlock zeroinitializer, align 4
@.str.40 = private unnamed_addr constant [10 x i8] c"uart2_mux\00", align 1
@uart2_lock = internal global %struct.spinlock zeroinitializer, align 4
@.str.41 = private unnamed_addr constant [10 x i8] c"uart3_mux\00", align 1
@.str.42 = private unnamed_addr constant [9 x i8] c"ssp0_mux\00", align 1
@ssp_parent_names = internal constant [4 x ptr] [ptr @.str.35, ptr @.str.34, ptr @.str.12, ptr @.str.22], align 4
@ssp0_lock = internal global %struct.spinlock zeroinitializer, align 4
@.str.43 = private unnamed_addr constant [9 x i8] c"ssp1_mux\00", align 1
@ssp1_lock = internal global %struct.spinlock zeroinitializer, align 4
@.str.44 = private unnamed_addr constant [9 x i8] c"ssp2_mux\00", align 1
@ssp2_lock = internal global %struct.spinlock zeroinitializer, align 4
@.str.45 = private unnamed_addr constant [9 x i8] c"ssp3_mux\00", align 1
@ssp3_lock = internal global %struct.spinlock zeroinitializer, align 4
@.str.46 = private unnamed_addr constant [10 x i8] c"timer_mux\00", align 1
@timer_parent_names = internal constant [4 x ptr] [ptr @.str.11, ptr @.str.35, ptr @.str.34, ptr @.str.12], align 4
@timer_lock = internal global %struct.spinlock zeroinitializer, align 4
@.str.47 = private unnamed_addr constant [10 x i8] c"twsi0_clk\00", align 1
@reset_lock = internal global %struct.spinlock zeroinitializer, align 4
@.str.48 = private unnamed_addr constant [10 x i8] c"twsi1_clk\00", align 1
@.str.49 = private unnamed_addr constant [10 x i8] c"twsi2_clk\00", align 1
@.str.50 = private unnamed_addr constant [10 x i8] c"twsi3_clk\00", align 1
@.str.51 = private unnamed_addr constant [10 x i8] c"twsi4_clk\00", align 1
@.str.52 = private unnamed_addr constant [10 x i8] c"twsi5_clk\00", align 1
@.str.53 = private unnamed_addr constant [9 x i8] c"gpio_clk\00", align 1
@.str.54 = private unnamed_addr constant [8 x i8] c"kpc_clk\00", align 1
@.str.55 = private unnamed_addr constant [8 x i8] c"rtc_clk\00", align 1
@.str.56 = private unnamed_addr constant [9 x i8] c"pwm0_clk\00", align 1
@.str.57 = private unnamed_addr constant [8 x i8] c"pll1_48\00", align 1
@.str.58 = private unnamed_addr constant [9 x i8] c"pwm1_clk\00", align 1
@.str.59 = private unnamed_addr constant [9 x i8] c"pwm2_clk\00", align 1
@.str.60 = private unnamed_addr constant [9 x i8] c"pwm3_clk\00", align 1
@.str.61 = private unnamed_addr constant [10 x i8] c"uart0_clk\00", align 1
@.str.62 = private unnamed_addr constant [10 x i8] c"uart1_clk\00", align 1
@.str.63 = private unnamed_addr constant [10 x i8] c"uart2_clk\00", align 1
@.str.64 = private unnamed_addr constant [10 x i8] c"uart3_clk\00", align 1
@.str.65 = private unnamed_addr constant [9 x i8] c"ssp0_clk\00", align 1
@.str.66 = private unnamed_addr constant [9 x i8] c"ssp1_clk\00", align 1
@.str.67 = private unnamed_addr constant [9 x i8] c"ssp2_clk\00", align 1
@.str.68 = private unnamed_addr constant [9 x i8] c"ssp3_clk\00", align 1
@.str.69 = private unnamed_addr constant [10 x i8] c"timer_clk\00", align 1
@.str.70 = private unnamed_addr constant [13 x i8] c"thermal0_clk\00", align 1
@.str.71 = private unnamed_addr constant [13 x i8] c"thermal1_clk\00", align 1
@.str.72 = private unnamed_addr constant [13 x i8] c"thermal2_clk\00", align 1
@.str.73 = private unnamed_addr constant [13 x i8] c"thermal3_clk\00", align 1
@sdh_mix_config = internal global %struct.mmp_clk_mix_config { %struct.mmp_clk_mix_reg_info { ptr null, ptr null, i8 4, i8 10, i8 2, i8 8, i8 32 }, ptr null, i32 0, ptr null, ptr null, i8 0, i8 0 }, align 4
@.str.74 = private unnamed_addr constant [12 x i8] c"sdh_mix_clk\00", align 1
@sdh_parent_names = internal constant [4 x ptr] [ptr @.str.8, ptr @.str.16, ptr @.str.13, ptr @.str.15], align 4
@sdh_lock = internal global %struct.spinlock zeroinitializer, align 4
@ccic0_mix_config = internal global %struct.mmp_clk_mix_config { %struct.mmp_clk_mix_reg_info { ptr null, ptr null, i8 4, i8 17, i8 2, i8 6, i8 32 }, ptr null, i32 0, ptr null, ptr null, i8 0, i8 0 }, align 4
@.str.75 = private unnamed_addr constant [14 x i8] c"ccic0_mix_clk\00", align 1
@ccic_parent_names = internal constant [3 x ptr] [ptr @.str.20, ptr @.str.22, ptr @.str.12], align 4
@ccic0_lock = internal global %struct.spinlock zeroinitializer, align 4
@ccic1_mix_config = internal global %struct.mmp_clk_mix_config { %struct.mmp_clk_mix_reg_info { ptr null, ptr null, i8 4, i8 16, i8 2, i8 6, i8 32 }, ptr null, i32 0, ptr null, ptr null, i8 0, i8 0 }, align 4
@.str.76 = private unnamed_addr constant [14 x i8] c"ccic1_mix_clk\00", align 1
@ccic1_lock = internal global %struct.spinlock zeroinitializer, align 4
@apmu_mux_clks = internal global [2 x %struct.mmp_param_mux_clk] [%struct.mmp_param_mux_clk { i32 107, ptr @.str.79, ptr @disp_parent_names, i8 4, i32 4, i32 76, i8 6, i8 2, i8 0, ptr @disp0_lock }, %struct.mmp_param_mux_clk { i32 110, ptr @.str.80, ptr @disp_parent_names, i8 4, i32 4, i32 272, i8 6, i8 2, i8 0, ptr @disp1_lock }], align 4
@apmu_div_clks = internal global [5 x %struct.mmp_param_div_clk] [%struct.mmp_param_div_clk { i32 0, ptr @.str.81, ptr @.str.79, i32 4, i32 76, i8 8, i8 4, i8 1, ptr @disp0_lock }, %struct.mmp_param_div_clk { i32 0, ptr @.str.82, ptr @.str.79, i32 4, i32 76, i8 15, i8 5, i8 0, ptr @disp0_lock }, %struct.mmp_param_div_clk { i32 0, ptr @.str.83, ptr @.str.80, i32 4, i32 272, i8 8, i8 4, i8 1, ptr @disp1_lock }, %struct.mmp_param_div_clk { i32 0, ptr @.str.84, ptr @.str.75, i32 4, i32 80, i8 10, i8 5, i8 0, ptr @ccic0_lock }, %struct.mmp_param_div_clk { i32 0, ptr @.str.85, ptr @.str.76, i32 4, i32 244, i8 10, i8 5, i8 0, ptr @ccic1_lock }], align 4
@apmu_gate_clks = internal global [20 x %struct.mmp_param_gate_clk] [%struct.mmp_param_gate_clk { i32 105, ptr @.str.86, ptr @.str.13, i32 0, i32 92, i32 9, i32 9, i32 0, i32 0, ptr @usb_lock }, %struct.mmp_param_gate_clk { i32 121, ptr @.str.87, ptr @.str.13, i32 0, i32 248, i32 27, i32 27, i32 0, i32 0, ptr @usbhsic0_lock }, %struct.mmp_param_gate_clk { i32 122, ptr @.str.88, ptr @.str.13, i32 0, i32 252, i32 27, i32 27, i32 0, i32 0, ptr @usbhsic1_lock }, %struct.mmp_param_gate_clk { i32 101, ptr @.str.89, ptr @.str.74, i32 4, i32 84, i32 27, i32 27, i32 0, i32 0, ptr @sdh_lock }, %struct.mmp_param_gate_clk { i32 102, ptr @.str.90, ptr @.str.74, i32 4, i32 88, i32 27, i32 27, i32 0, i32 0, ptr @sdh_lock }, %struct.mmp_param_gate_clk { i32 103, ptr @.str.91, ptr @.str.74, i32 4, i32 232, i32 27, i32 27, i32 0, i32 0, ptr @sdh_lock }, %struct.mmp_param_gate_clk { i32 104, ptr @.str.92, ptr @.str.74, i32 4, i32 236, i32 27, i32 27, i32 0, i32 0, ptr @sdh_lock }, %struct.mmp_param_gate_clk { i32 106, ptr @.str.93, ptr @.str.81, i32 4, i32 76, i32 18, i32 18, i32 0, i32 0, ptr @disp0_lock }, %struct.mmp_param_gate_clk { i32 120, ptr @.str.94, ptr @.str.79, i32 4, i32 76, i32 9, i32 9, i32 0, i32 0, ptr @disp0_lock }, %struct.mmp_param_gate_clk { i32 108, ptr @.str.95, ptr @.str.82, i32 4, i32 76, i32 4132, i32 4132, i32 0, i32 0, ptr @disp0_lock }, %struct.mmp_param_gate_clk { i32 109, ptr @.str.96, ptr @.str.83, i32 4, i32 272, i32 9, i32 9, i32 0, i32 0, ptr @disp1_lock }, %struct.mmp_param_gate_clk { i32 111, ptr @.str.97, ptr @.str.12, i32 4, i32 80, i32 6144, i32 6144, i32 0, i32 0, ptr @ccic0_lock }, %struct.mmp_param_gate_clk { i32 112, ptr @.str.98, ptr @.str.75, i32 4, i32 80, i32 27, i32 27, i32 0, i32 0, ptr @ccic0_lock }, %struct.mmp_param_gate_clk { i32 114, ptr @.str.99, ptr @.str.75, i32 4, i32 80, i32 36, i32 36, i32 0, i32 0, ptr @ccic0_lock }, %struct.mmp_param_gate_clk { i32 115, ptr @.str.100, ptr @.str.84, i32 4, i32 80, i32 768, i32 768, i32 0, i32 0, ptr @ccic0_lock }, %struct.mmp_param_gate_clk { i32 116, ptr @.str.101, ptr @.str.76, i32 4, i32 244, i32 27, i32 27, i32 0, i32 0, ptr @ccic1_lock }, %struct.mmp_param_gate_clk { i32 118, ptr @.str.102, ptr @.str.76, i32 4, i32 244, i32 36, i32 36, i32 0, i32 0, ptr @ccic1_lock }, %struct.mmp_param_gate_clk { i32 119, ptr @.str.103, ptr @.str.85, i32 4, i32 244, i32 768, i32 768, i32 0, i32 0, ptr @ccic1_lock }, %struct.mmp_param_gate_clk { i32 123, ptr @.str.104, ptr @.str.78, i32 4, i32 204, i32 10, i32 10, i32 0, i32 1, ptr @gpu_lock }, %struct.mmp_param_gate_clk { i32 127, ptr @.str.105, ptr @.str.106, i32 4, i32 268, i32 18, i32 18, i32 0, i32 0, ptr @audio_lock }], align 4
@mmp3_apmu_mux_clks = internal global [3 x %struct.mmp_param_mux_clk] [%struct.mmp_param_mux_clk { i32 0, ptr @.str.78, ptr @mmp3_gpu_bus_parent_names, i8 4, i32 4, i32 204, i8 4, i8 2, i8 0, ptr @gpu_lock }, %struct.mmp_param_mux_clk { i32 0, ptr @.str.77, ptr @mmp3_gpu_gc_parent_names, i8 4, i32 4, i32 204, i8 6, i8 2, i8 0, ptr @gpu_lock }, %struct.mmp_param_mux_clk { i32 0, ptr @.str.107, ptr @mmp3_gpu_gc_parent_names, i8 4, i32 4, i32 204, i8 12, i8 2, i8 0, ptr @gpu_lock }], align 4
@mmp3_apmu_div_clks = internal global [2 x %struct.mmp_param_div_clk] [%struct.mmp_param_div_clk { i32 0, ptr @.str.108, ptr @.str.77, i32 4, i32 204, i8 24, i8 4, i8 0, ptr @gpu_lock }, %struct.mmp_param_div_clk { i32 0, ptr @.str.109, ptr @.str.107, i32 4, i32 204, i8 28, i8 4, i8 0, ptr @gpu_lock }], align 4
@mmp3_apmu_gate_clks = internal global [3 x %struct.mmp_param_gate_clk] [%struct.mmp_param_gate_clk { i32 126, ptr @.str.110, ptr @.str.74, i32 4, i32 348, i32 27, i32 27, i32 0, i32 0, ptr @sdh_lock }, %struct.mmp_param_gate_clk { i32 124, ptr @.str.111, ptr @.str.108, i32 4, i32 204, i32 5, i32 5, i32 0, i32 1, ptr @gpu_lock }, %struct.mmp_param_gate_clk { i32 125, ptr @.str.112, ptr @.str.109, i32 4, i32 204, i32 1835008, i32 1835008, i32 0, i32 1, ptr @gpu_lock }], align 4
@.str.77 = private unnamed_addr constant [11 x i8] c"gpu_3d_mux\00", align 1
@mmp2_gpu_gc_parent_names = internal constant [6 x ptr] [ptr @.str.20, ptr @.str.24, ptr @.str.27, ptr @.str.31, ptr @.str.16, ptr @.str.13], align 4
@mmp2_gpu_gc_parent_table = internal global [6 x i32] [i32 0, i32 64, i32 128, i32 192, i32 4096, i32 4160], align 4
@.str.78 = private unnamed_addr constant [12 x i8] c"gpu_bus_mux\00", align 1
@mmp2_gpu_bus_parent_names = internal constant [4 x ptr] [ptr @.str.8, ptr @.str.16, ptr @.str.27, ptr @.str.13], align 4
@mmp2_gpu_bus_parent_table = internal global [4 x i32] [i32 0, i32 32, i32 48, i32 16416], align 4
@mmp2_apmu_gate_clks = internal global [1 x %struct.mmp_param_gate_clk] [%struct.mmp_param_gate_clk { i32 124, ptr @.str.111, ptr @.str.77, i32 4, i32 204, i32 5, i32 5, i32 0, i32 1, ptr @gpu_lock }], align 4
@.str.79 = private unnamed_addr constant [10 x i8] c"disp0_mux\00", align 1
@disp_parent_names = internal constant [4 x ptr] [ptr @.str.15, ptr @.str.22, ptr @.str.16, ptr @.str.12], align 4
@disp0_lock = internal global %struct.spinlock zeroinitializer, align 4
@.str.80 = private unnamed_addr constant [10 x i8] c"disp1_mux\00", align 1
@disp1_lock = internal global %struct.spinlock zeroinitializer, align 4
@.str.81 = private unnamed_addr constant [10 x i8] c"disp0_div\00", align 1
@.str.82 = private unnamed_addr constant [15 x i8] c"disp0_sphy_div\00", align 1
@.str.83 = private unnamed_addr constant [10 x i8] c"disp1_div\00", align 1
@.str.84 = private unnamed_addr constant [15 x i8] c"ccic0_sphy_div\00", align 1
@.str.85 = private unnamed_addr constant [15 x i8] c"ccic1_sphy_div\00", align 1
@.str.86 = private unnamed_addr constant [8 x i8] c"usb_clk\00", align 1
@usb_lock = internal global %struct.spinlock zeroinitializer, align 4
@.str.87 = private unnamed_addr constant [13 x i8] c"usbhsic0_clk\00", align 1
@usbhsic0_lock = internal global %struct.spinlock zeroinitializer, align 4
@.str.88 = private unnamed_addr constant [13 x i8] c"usbhsic1_clk\00", align 1
@usbhsic1_lock = internal global %struct.spinlock zeroinitializer, align 4
@.str.89 = private unnamed_addr constant [9 x i8] c"sdh0_clk\00", align 1
@.str.90 = private unnamed_addr constant [9 x i8] c"sdh1_clk\00", align 1
@.str.91 = private unnamed_addr constant [9 x i8] c"sdh2_clk\00", align 1
@.str.92 = private unnamed_addr constant [9 x i8] c"sdh3_clk\00", align 1
@.str.93 = private unnamed_addr constant [10 x i8] c"disp0_clk\00", align 1
@.str.94 = private unnamed_addr constant [15 x i8] c"disp0_lcdc_clk\00", align 1
@.str.95 = private unnamed_addr constant [15 x i8] c"disp0_sphy_clk\00", align 1
@.str.96 = private unnamed_addr constant [10 x i8] c"disp1_clk\00", align 1
@.str.97 = private unnamed_addr constant [13 x i8] c"ccic_arbiter\00", align 1
@.str.98 = private unnamed_addr constant [10 x i8] c"ccic0_clk\00", align 1
@.str.99 = private unnamed_addr constant [14 x i8] c"ccic0_phy_clk\00", align 1
@.str.100 = private unnamed_addr constant [15 x i8] c"ccic0_sphy_clk\00", align 1
@.str.101 = private unnamed_addr constant [10 x i8] c"ccic1_clk\00", align 1
@.str.102 = private unnamed_addr constant [14 x i8] c"ccic1_phy_clk\00", align 1
@.str.103 = private unnamed_addr constant [15 x i8] c"ccic1_sphy_clk\00", align 1
@.str.104 = private unnamed_addr constant [12 x i8] c"gpu_bus_clk\00", align 1
@.str.105 = private unnamed_addr constant [10 x i8] c"audio_clk\00", align 1
@.str.106 = private unnamed_addr constant [14 x i8] c"audio_mix_clk\00", align 1
@mmp3_gpu_bus_parent_names = internal constant [4 x ptr] [ptr @.str.8, ptr @.str.25, ptr @.str.20, ptr @.str.27], align 4
@mmp3_gpu_gc_parent_names = internal constant [4 x ptr] [ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18], align 4
@.str.107 = private unnamed_addr constant [11 x i8] c"gpu_2d_mux\00", align 1
@.str.108 = private unnamed_addr constant [11 x i8] c"gpu_3d_div\00", align 1
@.str.109 = private unnamed_addr constant [11 x i8] c"gpu_2d_div\00", align 1
@.str.110 = private unnamed_addr constant [9 x i8] c"sdh4_clk\00", align 1
@.str.111 = private unnamed_addr constant [11 x i8] c"gpu_3d_clk\00", align 1
@.str.112 = private unnamed_addr constant [11 x i8] c"gpu_2d_clk\00", align 1
@llvm.compiler.used = appending global [2 x ptr] [ptr @__of_table_mmp2_clk, ptr @__of_table_mmp3_clk], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @mmp2_clk_init(ptr noundef %0) #0 section ".init.text" {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 56) #4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %135, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @of_device_is_compatible(ptr noundef %0, ptr noundef nonnull @.str) #5
  %7 = icmp ne i32 %6, 0
  %8 = zext i1 %7 to i32
  %9 = getelementptr inbounds %struct.mmp2_clk_unit, ptr %3, i32 0, i32 1
  store i32 %8, ptr %9, align 8
  %10 = tail call ptr @of_iomap(ptr noundef %0, i32 noundef 0) #5
  %11 = getelementptr inbounds %struct.mmp2_clk_unit, ptr %3, i32 0, i32 4
  store ptr %10, ptr %11, align 4
  %12 = icmp eq ptr %10, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %5
  %14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #6
  br label %134

15:                                               ; preds = %5
  %16 = tail call ptr @of_iomap(ptr noundef %0, i32 noundef 1) #5
  %17 = getelementptr inbounds %struct.mmp2_clk_unit, ptr %3, i32 0, i32 5
  store ptr %16, ptr %17, align 8
  %18 = icmp eq ptr %16, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #6
  br label %132

21:                                               ; preds = %15
  %22 = tail call ptr @of_iomap(ptr noundef %0, i32 noundef 2) #5
  %23 = getelementptr inbounds %struct.mmp2_clk_unit, ptr %3, i32 0, i32 6
  store ptr %22, ptr %23, align 4
  %24 = icmp eq ptr %22, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #6
  %27 = load ptr, ptr %17, align 8
  tail call void @iounmap(ptr noundef %27) #5
  br label %132

28:                                               ; preds = %21
  %29 = load i32, ptr %9, align 8
  %30 = icmp eq i32 %29, 1
  %31 = load ptr, ptr %17, align 8
  %32 = getelementptr i8, ptr %31, i32 204
  br i1 %30, label %33, label %35

33:                                               ; preds = %28
  %34 = tail call ptr @mmp_pm_domain_register(ptr noundef nonnull @.str.4, ptr noundef %32, i32 noundef 1536, i32 noundef 262147, i32 noundef 1572876, i32 noundef 0, ptr noundef nonnull @gpu_lock) #5
  br label %37

35:                                               ; preds = %28
  %36 = tail call ptr @mmp_pm_domain_register(ptr noundef nonnull @.str.4, ptr noundef %32, i32 noundef 34304, i32 noundef 3, i32 noundef 12, i32 noundef 1, ptr noundef nonnull @gpu_lock) #5
  br label %37

37:                                               ; preds = %35, %33
  %38 = phi ptr [ %34, %33 ], [ %36, %35 ]
  %39 = getelementptr inbounds %struct.mmp2_clk_unit, ptr %3, i32 0, i32 3
  store ptr %38, ptr %39, align 8
  %40 = getelementptr inbounds %struct.mmp2_clk_unit, ptr %3, i32 0, i32 2, i32 1
  %41 = load i32, ptr %40, align 8
  %42 = add i32 %41, 1
  store i32 %42, ptr %40, align 8
  %43 = load ptr, ptr %17, align 8
  %44 = getelementptr i8, ptr %43, i32 268
  %45 = tail call ptr @mmp_pm_domain_register(ptr noundef nonnull @.str.5, ptr noundef %44, i32 noundef 1536, i32 noundef 2, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @audio_lock) #5
  %46 = getelementptr %struct.mmp2_clk_unit, ptr %3, i32 0, i32 3, i32 1
  store ptr %45, ptr %46, align 4
  %47 = load i32, ptr %40, align 8
  %48 = add i32 %47, 1
  store i32 %48, ptr %40, align 8
  %49 = load i32, ptr %9, align 8
  %50 = icmp eq i32 %49, 1
  br i1 %50, label %51, label %58

51:                                               ; preds = %37
  %52 = load ptr, ptr %17, align 8
  %53 = getelementptr i8, ptr %52, i32 508
  %54 = tail call ptr @mmp_pm_domain_register(ptr noundef nonnull @.str.6, ptr noundef %53, i32 noundef 1536, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef null) #5
  %55 = getelementptr %struct.mmp2_clk_unit, ptr %3, i32 0, i32 3, i32 2
  store ptr %54, ptr %55, align 8
  %56 = load i32, ptr %40, align 8
  %57 = add i32 %56, 1
  store i32 %57, ptr %40, align 8
  br label %58

58:                                               ; preds = %51, %37
  %59 = getelementptr inbounds %struct.mmp2_clk_unit, ptr %3, i32 0, i32 2
  store ptr %39, ptr %59, align 4
  %60 = tail call i32 @of_genpd_add_provider_onecell(ptr noundef %0, ptr noundef %59) #5
  tail call void @mmp_clk_init(ptr noundef %0, ptr noundef nonnull %3, i32 noundef 200) #5
  tail call void @mmp_register_fixed_rate_clks(ptr noundef nonnull %3, ptr noundef nonnull @fixed_rate_clks, i32 noundef 4) #5
  %61 = load i32, ptr %9, align 8
  %62 = icmp eq i32 %61, 1
  %63 = load ptr, ptr %11, align 4
  br i1 %62, label %64, label %65

64:                                               ; preds = %58
  tail call void @mmp_register_pll_clks(ptr noundef nonnull %3, ptr noundef nonnull @mmp3_pll_clks, ptr noundef %63, i32 noundef 5) #5
  br label %66

65:                                               ; preds = %58
  tail call void @mmp_register_pll_clks(ptr noundef nonnull %3, ptr noundef nonnull @pll_clks, ptr noundef %63, i32 noundef 2) #5
  br label %66

66:                                               ; preds = %65, %64
  tail call void @mmp_register_fixed_factor_clks(ptr noundef nonnull %3, ptr noundef nonnull @fixed_factor_clks, i32 noundef 17) #5
  %67 = load ptr, ptr %11, align 4
  %68 = getelementptr i8, ptr %67, i32 20
  %69 = tail call ptr @mmp_clk_register_factor(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 4, ptr noundef %68, ptr noundef nonnull @uart_factor_masks, ptr noundef nonnull @uart_factor_tbl, i32 noundef 2, ptr noundef null) #5
  tail call void @mmp_clk_add(ptr noundef nonnull %3, i32 noundef 26, ptr noundef %69) #5
  %70 = load ptr, ptr %11, align 4
  %71 = getelementptr i8, ptr %70, i32 64
  %72 = tail call ptr @mmp_clk_register_factor(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.8, i32 noundef 4, ptr noundef %71, ptr noundef nonnull @i2s_factor_masks, ptr noundef nonnull @i2s_factor_tbl, i32 noundef 9, ptr noundef null) #5
  %73 = load ptr, ptr %11, align 4
  %74 = getelementptr i8, ptr %73, i32 68
  %75 = tail call ptr @mmp_clk_register_factor(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.8, i32 noundef 4, ptr noundef %74, ptr noundef nonnull @i2s_factor_masks, ptr noundef nonnull @i2s_factor_tbl, i32 noundef 9, ptr noundef null) #5
  %76 = load ptr, ptr %11, align 4
  tail call void @mmp_register_gate_clks(ptr noundef nonnull %3, ptr noundef nonnull @mpmu_gate_clks, ptr noundef %76, i32 noundef 2) #5
  %77 = load ptr, ptr %23, align 4
  tail call void @mmp_register_mux_clks(ptr noundef nonnull %3, ptr noundef nonnull @apbc_mux_clks, ptr noundef %77, i32 noundef 9) #5
  %78 = load ptr, ptr %23, align 4
  tail call void @mmp_register_gate_clks(ptr noundef nonnull %3, ptr noundef nonnull @apbc_gate_clks, ptr noundef %78, i32 noundef 23) #5
  %79 = load i32, ptr %9, align 8
  %80 = icmp eq i32 %79, 1
  br i1 %80, label %81, label %83

81:                                               ; preds = %66
  %82 = load ptr, ptr %23, align 4
  tail call void @mmp_register_gate_clks(ptr noundef nonnull %3, ptr noundef nonnull @mmp3_apbc_gate_clks, ptr noundef %82, i32 noundef 3) #5
  br label %83

83:                                               ; preds = %81, %66
  %84 = load ptr, ptr %17, align 8
  %85 = getelementptr i8, ptr %84, i32 84
  store ptr %85, ptr @sdh_mix_config, align 4
  %86 = tail call ptr @mmp_clk_register_mix(ptr noundef null, ptr noundef nonnull @.str.74, ptr noundef nonnull @sdh_parent_names, i8 noundef zeroext 4, i32 noundef 4, ptr noundef nonnull @sdh_mix_config, ptr noundef nonnull @sdh_lock) #5
  %87 = load ptr, ptr %17, align 8
  %88 = getelementptr i8, ptr %87, i32 80
  store ptr %88, ptr @ccic0_mix_config, align 4
  %89 = tail call ptr @mmp_clk_register_mix(ptr noundef null, ptr noundef nonnull @.str.75, ptr noundef nonnull @ccic_parent_names, i8 noundef zeroext 3, i32 noundef 4, ptr noundef nonnull @ccic0_mix_config, ptr noundef nonnull @ccic0_lock) #5
  tail call void @mmp_clk_add(ptr noundef nonnull %3, i32 noundef 113, ptr noundef %89) #5
  %90 = load ptr, ptr %17, align 8
  %91 = getelementptr i8, ptr %90, i32 244
  store ptr %91, ptr @ccic1_mix_config, align 4
  %92 = tail call ptr @mmp_clk_register_mix(ptr noundef null, ptr noundef nonnull @.str.76, ptr noundef nonnull @ccic_parent_names, i8 noundef zeroext 3, i32 noundef 4, ptr noundef nonnull @ccic1_mix_config, ptr noundef nonnull @ccic1_lock) #5
  tail call void @mmp_clk_add(ptr noundef nonnull %3, i32 noundef 117, ptr noundef %92) #5
  %93 = load ptr, ptr %17, align 8
  tail call void @mmp_register_mux_clks(ptr noundef nonnull %3, ptr noundef nonnull @apmu_mux_clks, ptr noundef %93, i32 noundef 2) #5
  %94 = load ptr, ptr %17, align 8
  tail call void @mmp_register_div_clks(ptr noundef nonnull %3, ptr noundef nonnull @apmu_div_clks, ptr noundef %94, i32 noundef 5) #5
  %95 = load ptr, ptr %17, align 8
  tail call void @mmp_register_gate_clks(ptr noundef nonnull %3, ptr noundef nonnull @apmu_gate_clks, ptr noundef %95, i32 noundef 20) #5
  %96 = load i32, ptr %9, align 8
  %97 = icmp eq i32 %96, 1
  %98 = load ptr, ptr %17, align 8
  br i1 %97, label %99, label %102

99:                                               ; preds = %83
  tail call void @mmp_register_mux_clks(ptr noundef nonnull %3, ptr noundef nonnull @mmp3_apmu_mux_clks, ptr noundef %98, i32 noundef 3) #5
  %100 = load ptr, ptr %17, align 8
  tail call void @mmp_register_div_clks(ptr noundef nonnull %3, ptr noundef nonnull @mmp3_apmu_div_clks, ptr noundef %100, i32 noundef 2) #5
  %101 = load ptr, ptr %17, align 8
  tail call void @mmp_register_gate_clks(ptr noundef nonnull %3, ptr noundef nonnull @mmp3_apmu_gate_clks, ptr noundef %101, i32 noundef 3) #5
  br label %109

102:                                              ; preds = %83
  %103 = getelementptr i8, ptr %98, i32 204
  %104 = tail call ptr @clk_register_mux_table(ptr noundef null, ptr noundef nonnull @.str.77, ptr noundef nonnull @mmp2_gpu_gc_parent_names, i8 noundef zeroext 6, i32 noundef 4, ptr noundef %103, i8 noundef zeroext 0, i32 noundef 4288, i8 noundef zeroext 0, ptr noundef nonnull @mmp2_gpu_gc_parent_table, ptr noundef nonnull @gpu_lock) #5
  %105 = load ptr, ptr %17, align 8
  %106 = getelementptr i8, ptr %105, i32 204
  %107 = tail call ptr @clk_register_mux_table(ptr noundef null, ptr noundef nonnull @.str.78, ptr noundef nonnull @mmp2_gpu_bus_parent_names, i8 noundef zeroext 4, i32 noundef 4, ptr noundef %106, i8 noundef zeroext 0, i32 noundef 16432, i8 noundef zeroext 0, ptr noundef nonnull @mmp2_gpu_bus_parent_table, ptr noundef nonnull @gpu_lock) #5
  %108 = load ptr, ptr %17, align 8
  tail call void @mmp_register_gate_clks(ptr noundef nonnull %3, ptr noundef nonnull @mmp2_apmu_gate_clks, ptr noundef %108, i32 noundef 1) #5
  br label %109

109:                                              ; preds = %102, %99
  %110 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %111 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %110, i32 noundef 3520, i32 noundef 460) #4
  %112 = icmp eq ptr %111, null
  br i1 %112, label %135, label %113

113:                                              ; preds = %109
  %114 = load ptr, ptr %23, align 4
  br label %115

115:                                              ; preds = %115, %113
  %116 = phi i32 [ 0, %113 ], [ %129, %115 ]
  %117 = getelementptr [23 x %struct.mmp_param_gate_clk], ptr @apbc_gate_clks, i32 0, i32 %116
  %118 = load i32, ptr %117, align 4
  %119 = getelementptr %struct.mmp_clk_reset_cell, ptr %111, i32 %116
  store i32 %118, ptr %119, align 4
  %120 = getelementptr [23 x %struct.mmp_param_gate_clk], ptr @apbc_gate_clks, i32 0, i32 %116, i32 4
  %121 = load i32, ptr %120, align 4
  %122 = getelementptr i8, ptr %114, i32 %121
  %123 = getelementptr %struct.mmp_clk_reset_cell, ptr %111, i32 %116, i32 1
  store ptr %122, ptr %123, align 4
  %124 = getelementptr %struct.mmp_clk_reset_cell, ptr %111, i32 %116, i32 3
  store i32 0, ptr %124, align 4
  %125 = getelementptr [23 x %struct.mmp_param_gate_clk], ptr @apbc_gate_clks, i32 0, i32 %116, i32 9
  %126 = load ptr, ptr %125, align 4
  %127 = getelementptr %struct.mmp_clk_reset_cell, ptr %111, i32 %116, i32 4
  store ptr %126, ptr %127, align 4
  %128 = getelementptr %struct.mmp_clk_reset_cell, ptr %111, i32 %116, i32 2
  store i32 4, ptr %128, align 4
  %129 = add nuw nsw i32 %116, 1
  %130 = icmp eq i32 %129, 23
  br i1 %130, label %131, label %115

131:                                              ; preds = %115
  tail call void @mmp_clk_reset_register(ptr noundef %0, ptr noundef nonnull %111, i32 noundef 23) #5
  br label %135

132:                                              ; preds = %25, %19
  %133 = load ptr, ptr %11, align 4
  tail call void @iounmap(ptr noundef %133) #5
  br label %134

134:                                              ; preds = %132, %13
  tail call void @kfree(ptr noundef nonnull %3) #5
  br label %135

135:                                              ; preds = %134, %131, %109, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmp_clk_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mmp_pm_domain_register(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_genpd_add_provider_onecell(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmp_register_fixed_rate_clks(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmp_register_pll_clks(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmp_register_fixed_factor_clks(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mmp_clk_register_factor(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmp_clk_add(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmp_register_gate_clks(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmp_register_mux_clks(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mmp_clk_register_mix(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmp_register_div_clks(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_mux_table(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmp_clk_reset_register(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind allocsize(2) }
attributes #5 = { nounwind }
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
