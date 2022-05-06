; ModuleID = '/llk/IR/drivers/clk/mediatek/clk-mt7629.c_pt.bc'
source_filename = "../drivers/clk/mediatek/clk-mt7629.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.mtk_pll_data = type { i32, ptr, i32, i32, i32, i32, i32, i32, i8, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i8 }
%struct.mtk_gate = type { i32, ptr, ptr, ptr, i32, ptr, i32 }
%struct.mtk_gate_regs = type { i32, i32, i32 }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mtk_composite = type { i32, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8 }
%struct.mtk_fixed_clk = type { i32, ptr, ptr, i32 }
%struct.mtk_fixed_factor = type { i32, ptr, ptr, i32, i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }

@__initcall__kmod_clk_mt7629__162_716_clk_mt7629_init3 = internal global ptr @clk_mt7629_init, section ".initcall3.init", align 4
@clk_mt7629_drv = internal global %struct.platform_driver { ptr @clk_mt7629_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @of_match_clk_mt7629, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str = private unnamed_addr constant [11 x i8] c"clk-mt7629\00", align 1
@of_match_clk_mt7629 = internal constant [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt7629-apmixedsys\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mtk_apmixedsys_init }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt7629-infracfg\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mtk_infrasys_init }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt7629-topckgen\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mtk_topckgen_init }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt7629-pericfg\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mtk_pericfg_init }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"could not register clock provider: %s: %d\0A\00", align 1
@plls = internal constant [6 x %struct.mtk_pll_data] [%struct.mtk_pll_data { i32 0, ptr @.str.2, i32 512, i32 524, i32 1, i32 516, i32 0, i32 0, i8 0, i32 24, i32 0, ptr null, i32 16777216, i32 0, i32 -1794967296, i32 21, i32 0, i32 516, i32 0, i32 0, ptr null, ptr @.str.3, i32 0, i8 0 }, %struct.mtk_pll_data { i32 1, ptr @.str.4, i32 528, i32 540, i32 1, i32 532, i32 0, i32 0, i8 0, i32 24, i32 1, ptr null, i32 16777216, i32 0, i32 -1794967296, i32 21, i32 0, i32 532, i32 0, i32 0, ptr null, ptr @.str.3, i32 0, i8 0 }, %struct.mtk_pll_data { i32 2, ptr @.str.5, i32 544, i32 556, i32 1, i32 548, i32 0, i32 0, i8 0, i32 24, i32 1, ptr null, i32 16777216, i32 0, i32 -1794967296, i32 7, i32 0, i32 548, i32 14, i32 0, ptr null, ptr @.str.3, i32 0, i8 0 }, %struct.mtk_pll_data { i32 3, ptr @.str.6, i32 768, i32 784, i32 1, i32 768, i32 0, i32 0, i8 0, i32 1, i32 0, ptr null, i32 16777216, i32 0, i32 -1794967296, i32 21, i32 0, i32 772, i32 0, i32 0, ptr null, ptr @.str.3, i32 0, i8 0 }, %struct.mtk_pll_data { i32 4, ptr @.str.7, i32 788, i32 800, i32 1, i32 788, i32 0, i32 0, i8 0, i32 1, i32 0, ptr null, i32 16777216, i32 0, i32 -1794967296, i32 21, i32 0, i32 792, i32 0, i32 0, ptr null, ptr @.str.3, i32 0, i8 0 }, %struct.mtk_pll_data { i32 5, ptr @.str.8, i32 856, i32 872, i32 1, i32 856, i32 0, i32 0, i8 0, i32 1, i32 0, ptr null, i32 16777216, i32 0, i32 -1794967296, i32 21, i32 0, i32 860, i32 0, i32 0, ptr null, ptr @.str.3, i32 0, i8 0 }], align 4
@apmixed_clks = internal constant [1 x %struct.mtk_gate] [%struct.mtk_gate { i32 6, ptr @.str.9, ptr @.str.4, ptr @apmixed_cg_regs, i32 5, ptr @mtk_clk_gate_ops_no_setclr_inv, i32 0 }], align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"armpll\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"clk20m\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"mainpll\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"univ2pll\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"eth1pll\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"eth2pll\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"sgmipll\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"main_core_en\00", align 1
@apmixed_cg_regs = internal constant %struct.mtk_gate_regs { i32 8, i32 8, i32 8 }, align 4
@mtk_clk_gate_ops_no_setclr_inv = external dso_local constant %struct.clk_ops, align 4
@infra_clks = internal constant [5 x %struct.mtk_gate] [%struct.mtk_gate { i32 1, ptr @.str.10, ptr @.str.11, ptr @infra_cg_regs, i32 0, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 2, ptr @.str.12, ptr @.str.11, ptr @infra_cg_regs, i32 2, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 3, ptr @.str.13, ptr @.str.11, ptr @infra_cg_regs, i32 4, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 4, ptr @.str.14, ptr @.str.15, ptr @infra_cg_regs, i32 18, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 5, ptr @.str.16, ptr @.str.15, ptr @infra_cg_regs, i32 19, ptr @mtk_clk_gate_ops_setclr, i32 0 }], align 4
@infra_muxes = internal global [1 x %struct.mtk_composite] [%struct.mtk_composite { i32 0, ptr @.str.17, ptr @infra_mux1_parents, ptr null, i32 4, i32 0, i32 0, i32 0, i8 2, i8 2, i8 -1, i8 -1, i8 0, i8 0, i8 4 }], align 4
@.str.10 = private unnamed_addr constant [16 x i8] c"infra_dbgclk_pd\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"hd_faxi\00", align 1
@infra_cg_regs = internal constant %struct.mtk_gate_regs { i32 72, i32 68, i32 64 }, align 4
@mtk_clk_gate_ops_setclr = external dso_local constant %struct.clk_ops, align 4
@.str.12 = private unnamed_addr constant [14 x i8] c"infra_trng_pd\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"infra_devapc_pd\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"infra_apxgpt_pd\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"infrao_10m\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"infra_sej_pd\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"infra_mux1_sel\00", align 1
@infra_mux1_parents = internal constant [4 x ptr] [ptr @.str.18, ptr @.str.2, ptr @.str.9, ptr @.str.2], align 4
@.str.18 = private unnamed_addr constant [8 x i8] c"clkxtal\00", align 1
@top_fixed_clks = internal constant [10 x %struct.mtk_fixed_clk] [%struct.mtk_fixed_clk { i32 0, ptr @.str.19, ptr @.str.18, i32 31250000 }, %struct.mtk_fixed_clk { i32 1, ptr @.str.20, ptr @.str.18, i32 31250000 }, %struct.mtk_fixed_clk { i32 2, ptr @.str.21, ptr @.str.18, i32 125000000 }, %struct.mtk_fixed_clk { i32 3, ptr @.str.22, ptr @.str.18, i32 125000000 }, %struct.mtk_fixed_clk { i32 4, ptr @.str.23, ptr @.str.18, i32 250000000 }, %struct.mtk_fixed_clk { i32 5, ptr @.str.24, ptr @.str.18, i32 250000000 }, %struct.mtk_fixed_clk { i32 6, ptr @.str.25, ptr @.str.18, i32 33333333 }, %struct.mtk_fixed_clk { i32 7, ptr @.str.26, ptr @.str.18, i32 50000000 }, %struct.mtk_fixed_clk { i32 8, ptr @.str.27, ptr @.str.18, i32 50000000 }, %struct.mtk_fixed_clk { i32 9, ptr @.str.28, ptr @.str.18, i32 50000000 }], align 4
@top_divs = internal constant [63 x %struct.mtk_fixed_factor] [%struct.mtk_fixed_factor { i32 10, ptr @.str.29, ptr @.str.6, i32 1, i32 4 }, %struct.mtk_fixed_factor { i32 11, ptr @.str.30, ptr @.str.6, i32 1, i32 500 }, %struct.mtk_fixed_factor { i32 12, ptr @.str.31, ptr @.str.6, i32 1, i32 125 }, %struct.mtk_fixed_factor { i32 13, ptr @.str.32, ptr @.str.6, i32 1, i32 500 }, %struct.mtk_fixed_factor { i32 14, ptr @.str.33, ptr @.str.6, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 15, ptr @.str.34, ptr @.str.35, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 16, ptr @.str.36, ptr @.str.18, i32 1, i32 1024 }, %struct.mtk_fixed_factor { i32 17, ptr @.str.37, ptr @.str.18, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 18, ptr @.str.38, ptr @.str.39, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 19, ptr @.str.40, ptr @.str.18, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 20, ptr @.str.41, ptr @.str.18, i32 32, i32 1 }, %struct.mtk_fixed_factor { i32 21, ptr @.str.42, ptr @.str.41, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 22, ptr @.str.43, ptr @.str.41, i32 1, i32 4 }, %struct.mtk_fixed_factor { i32 23, ptr @.str.44, ptr @.str.41, i32 1, i32 8 }, %struct.mtk_fixed_factor { i32 24, ptr @.str.45, ptr @.str.4, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 25, ptr @.str.46, ptr @.str.4, i32 1, i32 4 }, %struct.mtk_fixed_factor { i32 26, ptr @.str.47, ptr @.str.4, i32 1, i32 8 }, %struct.mtk_fixed_factor { i32 27, ptr @.str.48, ptr @.str.4, i32 1, i32 16 }, %struct.mtk_fixed_factor { i32 28, ptr @.str.49, ptr @.str.4, i32 1, i32 32 }, %struct.mtk_fixed_factor { i32 29, ptr @.str.50, ptr @.str.4, i32 1, i32 6 }, %struct.mtk_fixed_factor { i32 30, ptr @.str.51, ptr @.str.4, i32 1, i32 12 }, %struct.mtk_fixed_factor { i32 31, ptr @.str.52, ptr @.str.4, i32 1, i32 24 }, %struct.mtk_fixed_factor { i32 32, ptr @.str.53, ptr @.str.4, i32 1, i32 5 }, %struct.mtk_fixed_factor { i32 33, ptr @.str.54, ptr @.str.4, i32 1, i32 10 }, %struct.mtk_fixed_factor { i32 34, ptr @.str.55, ptr @.str.4, i32 1, i32 20 }, %struct.mtk_fixed_factor { i32 35, ptr @.str.56, ptr @.str.4, i32 1, i32 7 }, %struct.mtk_fixed_factor { i32 36, ptr @.str.57, ptr @.str.4, i32 1, i32 14 }, %struct.mtk_fixed_factor { i32 37, ptr @.str.58, ptr @.str.4, i32 1, i32 28 }, %struct.mtk_fixed_factor { i32 38, ptr @.str.59, ptr @.str.4, i32 1, i32 112 }, %struct.mtk_fixed_factor { i32 39, ptr @.str.60, ptr @.str.5, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 40, ptr @.str.61, ptr @.str.60, i32 1, i32 4 }, %struct.mtk_fixed_factor { i32 41, ptr @.str.62, ptr @.str.60, i32 1, i32 8 }, %struct.mtk_fixed_factor { i32 42, ptr @.str.63, ptr @.str.60, i32 1, i32 16 }, %struct.mtk_fixed_factor { i32 43, ptr @.str.64, ptr @.str.60, i32 1, i32 3 }, %struct.mtk_fixed_factor { i32 44, ptr @.str.65, ptr @.str.60, i32 1, i32 6 }, %struct.mtk_fixed_factor { i32 45, ptr @.str.66, ptr @.str.60, i32 1, i32 12 }, %struct.mtk_fixed_factor { i32 46, ptr @.str.67, ptr @.str.60, i32 1, i32 24 }, %struct.mtk_fixed_factor { i32 47, ptr @.str.68, ptr @.str.60, i32 1, i32 48 }, %struct.mtk_fixed_factor { i32 48, ptr @.str.69, ptr @.str.60, i32 1, i32 5 }, %struct.mtk_fixed_factor { i32 49, ptr @.str.70, ptr @.str.60, i32 1, i32 10 }, %struct.mtk_fixed_factor { i32 50, ptr @.str.71, ptr @.str.60, i32 1, i32 20 }, %struct.mtk_fixed_factor { i32 51, ptr @.str.72, ptr @.str.60, i32 1, i32 80 }, %struct.mtk_fixed_factor { i32 52, ptr @.str.73, ptr @.str.60, i32 1, i32 7 }, %struct.mtk_fixed_factor { i32 53, ptr @.str.74, ptr @.str.60, i32 1, i32 320 }, %struct.mtk_fixed_factor { i32 54, ptr @.str.75, ptr @.str.60, i32 1, i32 25 }, %struct.mtk_fixed_factor { i32 55, ptr @.str.35, ptr @.str.8, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 56, ptr @.str.76, ptr @.str.18, i32 1, i32 4 }, %struct.mtk_fixed_factor { i32 57, ptr @.str.11, ptr @.str.77, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 58, ptr @.str.78, ptr @.str.77, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 59, ptr @.str.79, ptr @.str.80, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 60, ptr @.str.81, ptr @.str.48, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 61, ptr @.str.15, ptr @.str.82, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 62, ptr @.str.83, ptr @.str.84, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 63, ptr @.str.85, ptr @.str.86, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 64, ptr @.str.87, ptr @.str.88, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 65, ptr @.str.89, ptr @.str.90, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 66, ptr @.str.91, ptr @.str.92, i32 1, i32 4 }, %struct.mtk_fixed_factor { i32 67, ptr @.str.93, ptr @.str.77, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 68, ptr @.str.94, ptr @.str.95, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 69, ptr @.str.96, ptr @.str.77, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 70, ptr @.str.97, ptr @.str.95, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 71, ptr @.str.98, ptr @.str.92, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 72, ptr @.str.99, ptr @.str.92, i32 1, i32 1 }], align 4
@top_muxes = internal global [35 x %struct.mtk_composite] [%struct.mtk_composite { i32 73, ptr @.str.77, ptr @axi_parents, ptr null, i32 4, i32 64, i32 0, i32 64, i8 0, i8 3, i8 7, i8 -1, i8 0, i8 0, i8 8 }, %struct.mtk_composite { i32 74, ptr @.str.100, ptr @mem_parents, ptr null, i32 4, i32 64, i32 0, i32 64, i8 8, i8 1, i8 15, i8 -1, i8 0, i8 0, i8 2 }, %struct.mtk_composite { i32 75, ptr @.str.101, ptr @ddrphycfg_parents, ptr null, i32 4, i32 64, i32 0, i32 64, i8 16, i8 1, i8 23, i8 -1, i8 0, i8 0, i8 2 }, %struct.mtk_composite { i32 76, ptr @.str.102, ptr @eth_parents, ptr null, i32 4, i32 64, i32 0, i32 64, i8 24, i8 3, i8 31, i8 -1, i8 0, i8 0, i8 8 }, %struct.mtk_composite { i32 77, ptr @.str.103, ptr @pwm_parents, ptr null, i32 4, i32 80, i32 0, i32 80, i8 0, i8 2, i8 7, i8 -1, i8 0, i8 0, i8 2 }, %struct.mtk_composite { i32 78, ptr @.str.104, ptr @f10m_ref_parents, ptr null, i32 4, i32 80, i32 0, i32 80, i8 8, i8 1, i8 15, i8 -1, i8 0, i8 0, i8 2 }, %struct.mtk_composite { i32 79, ptr @.str.88, ptr @nfi_infra_parents, ptr null, i32 4, i32 80, i32 0, i32 80, i8 16, i8 4, i8 23, i8 -1, i8 0, i8 0, i8 16 }, %struct.mtk_composite { i32 80, ptr @.str.90, ptr @flash_parents, ptr null, i32 4, i32 80, i32 0, i32 80, i8 24, i8 3, i8 31, i8 -1, i8 0, i8 0, i8 8 }, %struct.mtk_composite { i32 81, ptr @.str.105, ptr @uart_parents, ptr null, i32 4, i32 96, i32 0, i32 96, i8 0, i8 1, i8 7, i8 -1, i8 0, i8 0, i8 2 }, %struct.mtk_composite { i32 82, ptr @.str.86, ptr @spi0_parents, ptr null, i32 4, i32 96, i32 0, i32 96, i8 8, i8 3, i8 15, i8 -1, i8 0, i8 0, i8 8 }, %struct.mtk_composite { i32 83, ptr @.str.106, ptr @spi1_parents, ptr null, i32 4, i32 96, i32 0, i32 96, i8 16, i8 3, i8 23, i8 -1, i8 0, i8 0, i8 8 }, %struct.mtk_composite { i32 84, ptr @.str.107, ptr @uart_parents, ptr null, i32 4, i32 96, i32 0, i32 96, i8 24, i8 3, i8 31, i8 -1, i8 0, i8 0, i8 2 }, %struct.mtk_composite { i32 85, ptr @.str.108, ptr @msdc30_0_parents, ptr null, i32 4, i32 112, i32 0, i32 112, i8 0, i8 3, i8 7, i8 -1, i8 0, i8 0, i8 3 }, %struct.mtk_composite { i32 86, ptr @.str.84, ptr @msdc30_1_parents, ptr null, i32 4, i32 112, i32 0, i32 112, i8 8, i8 3, i8 15, i8 -1, i8 0, i8 0, i8 8 }, %struct.mtk_composite { i32 87, ptr @.str.109, ptr @ap2wbmcu_parents, ptr null, i32 4, i32 112, i32 0, i32 112, i8 16, i8 3, i8 23, i8 -1, i8 0, i8 0, i8 8 }, %struct.mtk_composite { i32 88, ptr @.str.110, ptr @ap2wbmcu_parents, ptr null, i32 4, i32 112, i32 0, i32 112, i8 24, i8 3, i8 31, i8 -1, i8 0, i8 0, i8 8 }, %struct.mtk_composite { i32 89, ptr @.str.111, ptr @audio_parents, ptr null, i32 4, i32 128, i32 0, i32 128, i8 0, i8 2, i8 7, i8 -1, i8 0, i8 0, i8 4 }, %struct.mtk_composite { i32 90, ptr @.str.80, ptr @aud_intbus_parents, ptr null, i32 4, i32 128, i32 0, i32 128, i8 8, i8 2, i8 15, i8 -1, i8 0, i8 0, i8 4 }, %struct.mtk_composite { i32 91, ptr @.str.112, ptr @pmicspi_parents, ptr null, i32 4, i32 128, i32 0, i32 128, i8 16, i8 3, i8 23, i8 -1, i8 0, i8 0, i8 8 }, %struct.mtk_composite { i32 92, ptr @.str.113, ptr @scp_parents, ptr null, i32 4, i32 128, i32 0, i32 128, i8 24, i8 2, i8 31, i8 -1, i8 0, i8 0, i8 4 }, %struct.mtk_composite { i32 93, ptr @.str.114, ptr @atb_parents, ptr null, i32 4, i32 144, i32 0, i32 144, i8 0, i8 2, i8 7, i8 -1, i8 0, i8 0, i8 3 }, %struct.mtk_composite { i32 94, ptr @.str.95, ptr @hif_parents, ptr null, i32 4, i32 144, i32 0, i32 144, i8 8, i8 3, i8 15, i8 -1, i8 0, i8 0, i8 7 }, %struct.mtk_composite { i32 95, ptr @.str.92, ptr @sata_parents, ptr null, i32 4, i32 144, i32 0, i32 144, i8 16, i8 1, i8 23, i8 -1, i8 0, i8 0, i8 2 }, %struct.mtk_composite { i32 96, ptr @.str.115, ptr @usb20_parents, ptr null, i32 4, i32 144, i32 0, i32 144, i8 24, i8 2, i8 31, i8 -1, i8 0, i8 0, i8 3 }, %struct.mtk_composite { i32 97, ptr @.str.116, ptr @aud1_parents, ptr null, i32 4, i32 160, i32 0, i32 160, i8 0, i8 1, i8 7, i8 -1, i8 0, i8 0, i8 1 }, %struct.mtk_composite { i32 98, ptr @.str.117, ptr @aud1_parents, ptr null, i32 4, i32 160, i32 0, i32 160, i8 8, i8 1, i8 15, i8 -1, i8 0, i8 0, i8 1 }, %struct.mtk_composite { i32 99, ptr @.str.118, ptr @irrx_parents, ptr null, i32 4, i32 160, i32 0, i32 160, i8 16, i8 1, i8 23, i8 -1, i8 0, i8 0, i8 2 }, %struct.mtk_composite { i32 100, ptr @.str.119, ptr @irrx_parents, ptr null, i32 4, i32 160, i32 0, i32 160, i8 24, i8 1, i8 31, i8 -1, i8 0, i8 0, i8 2 }, %struct.mtk_composite { i32 101, ptr @.str.120, ptr @scp_parents, ptr null, i32 4, i32 176, i32 0, i32 176, i8 0, i8 2, i8 7, i8 -1, i8 0, i8 0, i8 4 }, %struct.mtk_composite { i32 102, ptr @.str.121, ptr @scp_parents, ptr null, i32 4, i32 176, i32 0, i32 176, i8 8, i8 2, i8 15, i8 -1, i8 0, i8 0, i8 4 }, %struct.mtk_composite { i32 103, ptr @.str.122, ptr @scp_parents, ptr null, i32 4, i32 176, i32 0, i32 176, i8 16, i8 2, i8 23, i8 -1, i8 0, i8 0, i8 4 }, %struct.mtk_composite { i32 104, ptr @.str.123, ptr @scp_parents, ptr null, i32 4, i32 176, i32 0, i32 176, i8 24, i8 2, i8 31, i8 -1, i8 0, i8 0, i8 4 }, %struct.mtk_composite { i32 105, ptr @.str.124, ptr @crypto_parents, ptr null, i32 4, i32 192, i32 0, i32 192, i8 0, i8 3, i8 7, i8 -1, i8 0, i8 0, i8 8 }, %struct.mtk_composite { i32 106, ptr @.str.125, ptr @f10m_ref_parents, ptr null, i32 4, i32 192, i32 0, i32 192, i8 8, i8 1, i8 15, i8 -1, i8 0, i8 0, i8 2 }, %struct.mtk_composite { i32 107, ptr @.str.82, ptr @gpt10m_parents, ptr null, i32 4, i32 192, i32 0, i32 192, i8 16, i8 1, i8 23, i8 -1, i8 0, i8 0, i8 2 }], align 4
@mt7629_clk_lock = internal global %struct.spinlock zeroinitializer, align 4
@.str.19 = private unnamed_addr constant [10 x i8] c"to_u2_phy\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"to_u2_phy_1p\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"pcie0_pipe_en\00", align 1
@.str.22 = private unnamed_addr constant [14 x i8] c"pcie1_pipe_en\00", align 1
@.str.23 = private unnamed_addr constant [13 x i8] c"ssusb_tx250m\00", align 1
@.str.24 = private unnamed_addr constant [16 x i8] c"ssusb_eq_rx250m\00", align 1
@.str.25 = private unnamed_addr constant [14 x i8] c"ssusb_cdr_ref\00", align 1
@.str.26 = private unnamed_addr constant [13 x i8] c"ssusb_cdr_fb\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"sata_asic\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"sata_rbc\00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c"to_usb3_sys\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c"p1_1mhz\00", align 1
@.str.31 = private unnamed_addr constant [14 x i8] c"free_run_4mhz\00", align 1
@.str.32 = private unnamed_addr constant [8 x i8] c"p0_1mhz\00", align 1
@.str.33 = private unnamed_addr constant [9 x i8] c"eth_500m\00", align 1
@.str.34 = private unnamed_addr constant [14 x i8] c"txclk_src_pre\00", align 1
@.str.35 = private unnamed_addr constant [12 x i8] c"sgmiipll_d2\00", align 1
@.str.36 = private unnamed_addr constant [4 x i8] c"rtc\00", align 1
@.str.37 = private unnamed_addr constant [12 x i8] c"pwm_qtr_26m\00", align 1
@.str.38 = private unnamed_addr constant [12 x i8] c"cpum_tck_in\00", align 1
@.str.39 = private unnamed_addr constant [9 x i8] c"cpum_tck\00", align 1
@.str.40 = private unnamed_addr constant [15 x i8] c"to_usb3_da_top\00", align 1
@.str.41 = private unnamed_addr constant [7 x i8] c"mempll\00", align 1
@.str.42 = private unnamed_addr constant [9 x i8] c"dmpll_ck\00", align 1
@.str.43 = private unnamed_addr constant [9 x i8] c"dmpll_d4\00", align 1
@.str.44 = private unnamed_addr constant [9 x i8] c"dmpll_d8\00", align 1
@.str.45 = private unnamed_addr constant [10 x i8] c"syspll_d2\00", align 1
@.str.46 = private unnamed_addr constant [11 x i8] c"syspll1_d2\00", align 1
@.str.47 = private unnamed_addr constant [11 x i8] c"syspll1_d4\00", align 1
@.str.48 = private unnamed_addr constant [11 x i8] c"syspll1_d8\00", align 1
@.str.49 = private unnamed_addr constant [12 x i8] c"syspll1_d16\00", align 1
@.str.50 = private unnamed_addr constant [11 x i8] c"syspll2_d2\00", align 1
@.str.51 = private unnamed_addr constant [11 x i8] c"syspll2_d4\00", align 1
@.str.52 = private unnamed_addr constant [11 x i8] c"syspll2_d8\00", align 1
@.str.53 = private unnamed_addr constant [10 x i8] c"syspll_d5\00", align 1
@.str.54 = private unnamed_addr constant [11 x i8] c"syspll3_d2\00", align 1
@.str.55 = private unnamed_addr constant [11 x i8] c"syspll3_d4\00", align 1
@.str.56 = private unnamed_addr constant [10 x i8] c"syspll_d7\00", align 1
@.str.57 = private unnamed_addr constant [11 x i8] c"syspll4_d2\00", align 1
@.str.58 = private unnamed_addr constant [11 x i8] c"syspll4_d4\00", align 1
@.str.59 = private unnamed_addr constant [12 x i8] c"syspll4_d16\00", align 1
@.str.60 = private unnamed_addr constant [8 x i8] c"univpll\00", align 1
@.str.61 = private unnamed_addr constant [12 x i8] c"univpll1_d2\00", align 1
@.str.62 = private unnamed_addr constant [12 x i8] c"univpll1_d4\00", align 1
@.str.63 = private unnamed_addr constant [12 x i8] c"univpll1_d8\00", align 1
@.str.64 = private unnamed_addr constant [11 x i8] c"univpll_d3\00", align 1
@.str.65 = private unnamed_addr constant [12 x i8] c"univpll2_d2\00", align 1
@.str.66 = private unnamed_addr constant [12 x i8] c"univpll2_d4\00", align 1
@.str.67 = private unnamed_addr constant [12 x i8] c"univpll2_d8\00", align 1
@.str.68 = private unnamed_addr constant [13 x i8] c"univpll2_d16\00", align 1
@.str.69 = private unnamed_addr constant [11 x i8] c"univpll_d5\00", align 1
@.str.70 = private unnamed_addr constant [12 x i8] c"univpll3_d2\00", align 1
@.str.71 = private unnamed_addr constant [12 x i8] c"univpll3_d4\00", align 1
@.str.72 = private unnamed_addr constant [13 x i8] c"univpll3_d16\00", align 1
@.str.73 = private unnamed_addr constant [11 x i8] c"univpll_d7\00", align 1
@.str.74 = private unnamed_addr constant [15 x i8] c"univpll_d80_d4\00", align 1
@.str.75 = private unnamed_addr constant [8 x i8] c"univ48m\00", align 1
@.str.76 = private unnamed_addr constant [11 x i8] c"clkxtal_d4\00", align 1
@.str.77 = private unnamed_addr constant [8 x i8] c"axi_sel\00", align 1
@.str.78 = private unnamed_addr constant [5 x i8] c"faxi\00", align 1
@.str.79 = private unnamed_addr constant [14 x i8] c"f_faud_intbus\00", align 1
@.str.80 = private unnamed_addr constant [15 x i8] c"aud_intbus_sel\00", align 1
@.str.81 = private unnamed_addr constant [14 x i8] c"ap2wbhif_hclk\00", align 1
@.str.82 = private unnamed_addr constant [11 x i8] c"gpt10m_sel\00", align 1
@.str.83 = private unnamed_addr constant [9 x i8] c"msdc30_1\00", align 1
@.str.84 = private unnamed_addr constant [13 x i8] c"msdc30_1_sel\00", align 1
@.str.85 = private unnamed_addr constant [4 x i8] c"spi\00", align 1
@.str.86 = private unnamed_addr constant [9 x i8] c"spi0_sel\00", align 1
@.str.87 = private unnamed_addr constant [3 x i8] c"sf\00", align 1
@.str.88 = private unnamed_addr constant [14 x i8] c"nfi_infra_sel\00", align 1
@.str.89 = private unnamed_addr constant [6 x i8] c"flash\00", align 1
@.str.90 = private unnamed_addr constant [10 x i8] c"flash_sel\00", align 1
@.str.91 = private unnamed_addr constant [12 x i8] c"to_usb3_ref\00", align 1
@.str.92 = private unnamed_addr constant [9 x i8] c"sata_sel\00", align 1
@.str.93 = private unnamed_addr constant [12 x i8] c"to_usb3_mcu\00", align 1
@.str.94 = private unnamed_addr constant [12 x i8] c"to_usb3_dma\00", align 1
@.str.95 = private unnamed_addr constant [8 x i8] c"hif_sel\00", align 1
@.str.96 = private unnamed_addr constant [13 x i8] c"from_top_ahb\00", align 1
@.str.97 = private unnamed_addr constant [13 x i8] c"from_top_axi\00", align 1
@.str.98 = private unnamed_addr constant [13 x i8] c"pcie1_mac_en\00", align 1
@.str.99 = private unnamed_addr constant [13 x i8] c"pcie0_mac_en\00", align 1
@axi_parents = internal constant [8 x ptr] [ptr @.str.18, ptr @.str.46, ptr @.str.53, ptr @.str.47, ptr @.str.69, ptr @.str.65, ptr @.str.73, ptr @.str.42], align 4
@.str.100 = private unnamed_addr constant [8 x i8] c"mem_sel\00", align 1
@mem_parents = internal constant [2 x ptr] [ptr @.str.18, ptr @.str.42], align 4
@.str.101 = private unnamed_addr constant [14 x i8] c"ddrphycfg_sel\00", align 1
@ddrphycfg_parents = internal constant [2 x ptr] [ptr @.str.18, ptr @.str.48], align 4
@.str.102 = private unnamed_addr constant [8 x i8] c"eth_sel\00", align 1
@eth_parents = internal constant [8 x ptr] [ptr @.str.18, ptr @.str.46, ptr @.str.61, ptr @.str.47, ptr @.str.69, ptr @.str.35, ptr @.str.73, ptr @.str.42], align 4
@.str.103 = private unnamed_addr constant [8 x i8] c"pwm_sel\00", align 1
@pwm_parents = internal constant [2 x ptr] [ptr @.str.18, ptr @.str.66], align 4
@.str.104 = private unnamed_addr constant [13 x i8] c"f10m_ref_sel\00", align 1
@f10m_ref_parents = internal constant [2 x ptr] [ptr @.str.18, ptr @.str.35], align 4
@nfi_infra_parents = internal constant [16 x ptr] [ptr @.str.18, ptr @.str.18, ptr @.str.18, ptr @.str.18, ptr @.str.18, ptr @.str.18, ptr @.str.67, ptr @.str.71, ptr @.str.48, ptr @.str.63, ptr @.str.57, ptr @.str.51, ptr @.str.66, ptr @.str.70, ptr @.str.47, ptr @.str.56], align 4
@flash_parents = internal constant [8 x ptr] [ptr @.str.18, ptr @.str.74, ptr @.str.52, ptr @.str.55, ptr @.str.71, ptr @.str.63, ptr @.str.51, ptr @.str.66], align 4
@.str.105 = private unnamed_addr constant [9 x i8] c"uart_sel\00", align 1
@uart_parents = internal constant [2 x ptr] [ptr @.str.18, ptr @.str.67], align 4
@spi0_parents = internal constant [8 x ptr] [ptr @.str.18, ptr @.str.54, ptr @.str.18, ptr @.str.51, ptr @.str.57, ptr @.str.66, ptr @.str.63, ptr @.str.18], align 4
@.str.106 = private unnamed_addr constant [9 x i8] c"spi1_sel\00", align 1
@spi1_parents = internal constant [8 x ptr] [ptr @.str.18, ptr @.str.54, ptr @.str.18, ptr @.str.58, ptr @.str.57, ptr @.str.66, ptr @.str.63, ptr @.str.18], align 4
@.str.107 = private unnamed_addr constant [13 x i8] c"msdc50_0_sel\00", align 1
@.str.108 = private unnamed_addr constant [13 x i8] c"msdc30_0_sel\00", align 1
@msdc30_0_parents = internal constant [3 x ptr] [ptr @.str.18, ptr @.str.68, ptr @.str.75], align 4
@msdc30_1_parents = internal constant [8 x ptr] [ptr @.str.18, ptr @.str.68, ptr @.str.75, ptr @.str.51, ptr @.str.66, ptr @.str.56, ptr @.str.50, ptr @.str.65], align 4
@.str.109 = private unnamed_addr constant [13 x i8] c"ap2wbmcu_sel\00", align 1
@ap2wbmcu_parents = internal constant [8 x ptr] [ptr @.str.18, ptr @.str.46, ptr @.str.75, ptr @.str.48, ptr @.str.66, ptr @.str.56, ptr @.str.50, ptr @.str.65], align 4
@.str.110 = private unnamed_addr constant [13 x i8] c"ap2wbhif_sel\00", align 1
@.str.111 = private unnamed_addr constant [10 x i8] c"audio_sel\00", align 1
@audio_parents = internal constant [4 x ptr] [ptr @.str.18, ptr @.str.55, ptr @.str.58, ptr @.str.49], align 4
@aud_intbus_parents = internal constant [4 x ptr] [ptr @.str.18, ptr @.str.47, ptr @.str.57, ptr @.str.43], align 4
@.str.112 = private unnamed_addr constant [12 x i8] c"pmicspi_sel\00", align 1
@pmicspi_parents = internal constant [8 x ptr] [ptr @.str.18, ptr @.str.48, ptr @.str.55, ptr @.str.49, ptr @.str.71, ptr @.str.18, ptr @.str.66, ptr @.str.44], align 4
@.str.113 = private unnamed_addr constant [8 x i8] c"scp_sel\00", align 1
@scp_parents = internal constant [4 x ptr] [ptr @.str.18, ptr @.str.48, ptr @.str.65, ptr @.str.66], align 4
@.str.114 = private unnamed_addr constant [8 x i8] c"atb_sel\00", align 1
@atb_parents = internal constant [3 x ptr] [ptr @.str.18, ptr @.str.46, ptr @.str.53], align 4
@hif_parents = internal constant [7 x ptr] [ptr @.str.18, ptr @.str.46, ptr @.str.61, ptr @.str.47, ptr @.str.69, ptr @.str.126, ptr @.str.73], align 4
@sata_parents = internal constant [2 x ptr] [ptr @.str.18, ptr @.str.66], align 4
@.str.115 = private unnamed_addr constant [10 x i8] c"usb20_sel\00", align 1
@usb20_parents = internal constant [3 x ptr] [ptr @.str.18, ptr @.str.71, ptr @.str.48], align 4
@.str.116 = private unnamed_addr constant [9 x i8] c"aud1_sel\00", align 1
@aud1_parents = internal constant [1 x ptr] [ptr @.str.18], align 4
@.str.117 = private unnamed_addr constant [9 x i8] c"aud2_sel\00", align 1
@.str.118 = private unnamed_addr constant [9 x i8] c"irrx_sel\00", align 1
@irrx_parents = internal constant [2 x ptr] [ptr @.str.18, ptr @.str.59], align 4
@.str.119 = private unnamed_addr constant [9 x i8] c"irtx_sel\00", align 1
@.str.120 = private unnamed_addr constant [13 x i8] c"sata_mcu_sel\00", align 1
@.str.121 = private unnamed_addr constant [14 x i8] c"pcie0_mcu_sel\00", align 1
@.str.122 = private unnamed_addr constant [14 x i8] c"pcie1_mcu_sel\00", align 1
@.str.123 = private unnamed_addr constant [14 x i8] c"ssusb_mcu_sel\00", align 1
@.str.124 = private unnamed_addr constant [11 x i8] c"crypto_sel\00", align 1
@crypto_parents = internal constant [8 x ptr] [ptr @.str.18, ptr @.str.64, ptr @.str.61, ptr @.str.46, ptr @.str.69, ptr @.str.53, ptr @.str.65, ptr @.str.45], align 4
@.str.125 = private unnamed_addr constant [16 x i8] c"sgmii_ref_1_sel\00", align 1
@gpt10m_parents = internal constant [2 x ptr] [ptr @.str.18, ptr @.str.76], align 4
@.str.126 = private unnamed_addr constant [9 x i8] c"clk_null\00", align 1
@peri_clks = internal constant [21 x %struct.mtk_gate] [%struct.mtk_gate { i32 1, ptr @.str.127, ptr @.str.37, ptr @peri0_cg_regs, i32 2, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 2, ptr @.str.128, ptr @.str.37, ptr @peri0_cg_regs, i32 3, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 3, ptr @.str.129, ptr @.str.37, ptr @peri0_cg_regs, i32 4, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 4, ptr @.str.130, ptr @.str.37, ptr @peri0_cg_regs, i32 5, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 5, ptr @.str.131, ptr @.str.37, ptr @peri0_cg_regs, i32 6, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 6, ptr @.str.132, ptr @.str.37, ptr @peri0_cg_regs, i32 7, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 7, ptr @.str.133, ptr @.str.37, ptr @peri0_cg_regs, i32 8, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 8, ptr @.str.134, ptr @.str.37, ptr @peri0_cg_regs, i32 9, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 9, ptr @.str.135, ptr @.str.78, ptr @peri0_cg_regs, i32 12, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 10, ptr @.str.136, ptr @.str.83, ptr @peri0_cg_regs, i32 14, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 11, ptr @.str.137, ptr @.str.78, ptr @peri0_cg_regs, i32 17, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 12, ptr @.str.138, ptr @.str.78, ptr @peri0_cg_regs, i32 18, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 13, ptr @.str.139, ptr @.str.78, ptr @peri0_cg_regs, i32 19, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 14, ptr @.str.140, ptr @.str.78, ptr @peri0_cg_regs, i32 20, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 15, ptr @.str.141, ptr @.str.78, ptr @peri0_cg_regs, i32 22, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 16, ptr @.str.142, ptr @.str.78, ptr @peri0_cg_regs, i32 23, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 17, ptr @.str.143, ptr @.str.85, ptr @peri0_cg_regs, i32 28, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 18, ptr @.str.144, ptr @.str.87, ptr @peri0_cg_regs, i32 29, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 19, ptr @.str.145, ptr @.str.78, ptr @peri0_cg_regs, i32 30, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 20, ptr @.str.146, ptr @.str.78, ptr @peri0_cg_regs, i32 31, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 21, ptr @.str.147, ptr @.str.89, ptr @peri1_cg_regs, i32 1, ptr @mtk_clk_gate_ops_setclr, i32 0 }], align 4
@peri_muxes = internal global [1 x %struct.mtk_composite] [%struct.mtk_composite { i32 0, ptr @.str.148, ptr @peribus_ck_parents, ptr null, i32 4, i32 92, i32 0, i32 0, i8 0, i8 1, i8 -1, i8 -1, i8 0, i8 0, i8 2 }], align 4
@.str.127 = private unnamed_addr constant [13 x i8] c"peri_pwm1_pd\00", align 1
@peri0_cg_regs = internal constant %struct.mtk_gate_regs { i32 24, i32 16, i32 8 }, align 4
@.str.128 = private unnamed_addr constant [13 x i8] c"peri_pwm2_pd\00", align 1
@.str.129 = private unnamed_addr constant [13 x i8] c"peri_pwm3_pd\00", align 1
@.str.130 = private unnamed_addr constant [13 x i8] c"peri_pwm4_pd\00", align 1
@.str.131 = private unnamed_addr constant [13 x i8] c"peri_pwm5_pd\00", align 1
@.str.132 = private unnamed_addr constant [13 x i8] c"peri_pwm6_pd\00", align 1
@.str.133 = private unnamed_addr constant [13 x i8] c"peri_pwm7_pd\00", align 1
@.str.134 = private unnamed_addr constant [12 x i8] c"peri_pwm_pd\00", align 1
@.str.135 = private unnamed_addr constant [15 x i8] c"peri_ap_dma_pd\00", align 1
@.str.136 = private unnamed_addr constant [14 x i8] c"peri_msdc30_1\00", align 1
@.str.137 = private unnamed_addr constant [14 x i8] c"peri_uart0_pd\00", align 1
@.str.138 = private unnamed_addr constant [14 x i8] c"peri_uart1_pd\00", align 1
@.str.139 = private unnamed_addr constant [14 x i8] c"peri_uart2_pd\00", align 1
@.str.140 = private unnamed_addr constant [14 x i8] c"peri_uart3_pd\00", align 1
@.str.141 = private unnamed_addr constant [13 x i8] c"peri_btif_pd\00", align 1
@.str.142 = private unnamed_addr constant [13 x i8] c"peri_i2c0_pd\00", align 1
@.str.143 = private unnamed_addr constant [13 x i8] c"peri_spi0_pd\00", align 1
@.str.144 = private unnamed_addr constant [13 x i8] c"peri_snfi_pd\00", align 1
@.str.145 = private unnamed_addr constant [12 x i8] c"peri_nfi_pd\00", align 1
@.str.146 = private unnamed_addr constant [15 x i8] c"peri_nfiecc_pd\00", align 1
@.str.147 = private unnamed_addr constant [14 x i8] c"peri_flash_pd\00", align 1
@peri1_cg_regs = internal constant %struct.mtk_gate_regs { i32 28, i32 20, i32 12 }, align 4
@.str.148 = private unnamed_addr constant [15 x i8] c"peribus_ck_sel\00", align 1
@peribus_ck_parents = internal constant [2 x ptr] [ptr @.str.48, ptr @.str.47], align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_clk_mt7629__162_716_clk_mt7629_init3], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_mt7629_init() #0 {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @clk_mt7629_drv, ptr noundef null) #3
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_mt7629_probe(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call ptr @of_device_get_match_data(ptr noundef %2) #3
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = tail call i32 %3(ptr noundef %0) #3
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %5
  %9 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.1, ptr noundef %9, i32 noundef %6) #4
  br label %10

10:                                               ; preds = %8, %5, %1
  %11 = phi i32 [ -22, %1 ], [ %6, %8 ], [ 0, %5 ]
  ret i32 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mtk_apmixedsys_init(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %3 = load ptr, ptr %2, align 8
  %4 = tail call ptr @mtk_alloc_clk_data(i32 noundef 7) #3
  %5 = icmp eq ptr %4, null
  br i1 %5, label %28, label %6

6:                                                ; preds = %1
  tail call void @mtk_clk_register_plls(ptr noundef %3, ptr noundef nonnull @plls, i32 noundef 6, ptr noundef nonnull %4) #3
  %7 = tail call i32 @mtk_clk_register_gates(ptr noundef %3, ptr noundef nonnull @apmixed_clks, i32 noundef 1, ptr noundef nonnull %4) #3
  %8 = load ptr, ptr %4, align 4
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
  %17 = load ptr, ptr %4, align 4
  %18 = getelementptr ptr, ptr %17, i32 6
  %19 = load ptr, ptr %18, align 4
  %20 = tail call i32 @clk_prepare(ptr noundef %19) #3
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %16
  %23 = tail call i32 @clk_enable(ptr noundef %19) #3
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %22
  tail call void @clk_unprepare(ptr noundef %19) #3
  br label %26

26:                                               ; preds = %25, %22, %16
  %27 = tail call i32 @of_clk_add_provider(ptr noundef %3, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef nonnull %4) #3
  br label %28

28:                                               ; preds = %26, %1
  %29 = phi i32 [ %27, %26 ], [ -12, %1 ]
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mtk_infrasys_init(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %3 = load ptr, ptr %2, align 8
  %4 = tail call ptr @mtk_alloc_clk_data(i32 noundef 6) #3
  %5 = tail call i32 @mtk_clk_register_gates(ptr noundef %3, ptr noundef nonnull @infra_clks, i32 noundef 5, ptr noundef %4) #3
  %6 = tail call i32 @mtk_clk_register_cpumuxes(ptr noundef %3, ptr noundef nonnull @infra_muxes, i32 noundef 1, ptr noundef %4) #3
  %7 = tail call i32 @of_clk_add_provider(ptr noundef %3, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef %4) #3
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mtk_topckgen_init(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %3 = load ptr, ptr %2, align 8
  %4 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #3
  %5 = icmp ugt ptr %4, inttoptr (i32 -4096 to ptr)
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = ptrtoint ptr %4 to i32
  br label %41

8:                                                ; preds = %1
  %9 = tail call ptr @mtk_alloc_clk_data(i32 noundef 108) #3
  tail call void @mtk_clk_register_fixed_clks(ptr noundef nonnull @top_fixed_clks, i32 noundef 10, ptr noundef %9) #3
  tail call void @mtk_clk_register_factors(ptr noundef nonnull @top_divs, i32 noundef 63, ptr noundef %9) #3
  tail call void @mtk_clk_register_composites(ptr noundef nonnull @top_muxes, i32 noundef 35, ptr noundef %4, ptr noundef nonnull @mt7629_clk_lock, ptr noundef %9) #3
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr ptr, ptr %10, i32 73
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 @clk_prepare(ptr noundef %12) #3
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %8
  %16 = tail call i32 @clk_enable(ptr noundef %12) #3
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %15
  tail call void @clk_unprepare(ptr noundef %12) #3
  br label %19

19:                                               ; preds = %18, %15, %8
  %20 = load ptr, ptr %9, align 4
  %21 = getelementptr ptr, ptr %20, i32 74
  %22 = load ptr, ptr %21, align 4
  %23 = tail call i32 @clk_prepare(ptr noundef %22) #3
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %19
  %26 = tail call i32 @clk_enable(ptr noundef %22) #3
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %25
  tail call void @clk_unprepare(ptr noundef %22) #3
  br label %29

29:                                               ; preds = %28, %25, %19
  %30 = load ptr, ptr %9, align 4
  %31 = getelementptr ptr, ptr %30, i32 75
  %32 = load ptr, ptr %31, align 4
  %33 = tail call i32 @clk_prepare(ptr noundef %32) #3
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = tail call i32 @clk_enable(ptr noundef %32) #3
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %35
  tail call void @clk_unprepare(ptr noundef %32) #3
  br label %39

39:                                               ; preds = %38, %35, %29
  %40 = tail call i32 @of_clk_add_provider(ptr noundef %3, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef %9) #3
  br label %41

41:                                               ; preds = %39, %6
  %42 = phi i32 [ %7, %6 ], [ %40, %39 ]
  ret i32 %42
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mtk_pericfg_init(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %3 = load ptr, ptr %2, align 8
  %4 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #3
  %5 = icmp ugt ptr %4, inttoptr (i32 -4096 to ptr)
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = ptrtoint ptr %4 to i32
  br label %23

8:                                                ; preds = %1
  %9 = tail call ptr @mtk_alloc_clk_data(i32 noundef 22) #3
  %10 = tail call i32 @mtk_clk_register_gates(ptr noundef %3, ptr noundef nonnull @peri_clks, i32 noundef 21, ptr noundef %9) #3
  tail call void @mtk_clk_register_composites(ptr noundef nonnull @peri_muxes, i32 noundef 1, ptr noundef %4, ptr noundef nonnull @mt7629_clk_lock, ptr noundef %9) #3
  %11 = tail call i32 @of_clk_add_provider(ptr noundef %3, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef %9) #3
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %8
  %14 = load ptr, ptr %9, align 4
  %15 = getelementptr ptr, ptr %14, i32 11
  %16 = load ptr, ptr %15, align 4
  %17 = tail call i32 @clk_prepare(ptr noundef %16) #3
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %13
  %20 = tail call i32 @clk_enable(ptr noundef %16) #3
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %19
  tail call void @clk_unprepare(ptr noundef %16) #3
  br label %23

23:                                               ; preds = %22, %19, %13, %8, %6
  %24 = phi i32 [ %7, %6 ], [ %11, %8 ], [ 0, %13 ], [ 0, %19 ], [ 0, %22 ]
  ret i32 %24
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mtk_alloc_clk_data(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_clk_register_plls(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_clk_register_gates(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

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
declare dso_local i32 @mtk_clk_register_cpumuxes(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_clk_register_fixed_clks(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_clk_register_factors(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_clk_register_composites(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
