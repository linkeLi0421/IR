; ModuleID = '/llk/IR/drivers/clk/mediatek/clk-mt2701.c_pt.bc'
source_filename = "../drivers/clk/mediatek/clk-mt2701.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.mtk_fixed_factor = type { i32, ptr, ptr, i32, i32 }
%struct.mtk_composite = type { i32, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8 }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mtk_fixed_clk = type { i32, ptr, ptr, i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.mtk_clk_divider = type { i32, ptr, ptr, i32, i32, i8, i8, i8, ptr }
%struct.mtk_gate = type { i32, ptr, ptr, ptr, i32, ptr, i32 }
%struct.mtk_gate_regs = type { i32, i32, i32 }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mtk_pll_data = type { i32, ptr, i32, i32, i32, i32, i32, i32, i8, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i8 }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.list_head = type { ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }

@__of_table_mtk_infra = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt2701-infracfg\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mtk_infra_of_clk_init_driver }, section "__clk_of_table", align 4
@__initcall__kmod_clk_mt2701__162_1035_clk_mt2701_init3 = internal global ptr @clk_mt2701_init, section ".initcall3.init", align 4
@infra_clk_data = internal unnamed_addr global ptr null, align 4
@infra_fixed_divs = internal constant [1 x %struct.mtk_fixed_factor] [%struct.mtk_fixed_factor { i32 19, ptr @.str.1, ptr @.str.2, i32 1, i32 2 }], align 4
@cpu_muxes = internal constant [1 x %struct.mtk_composite] [%struct.mtk_composite { i32 20, ptr @.str.3, ptr @cpu_parents, ptr null, i32 4, i32 0, i32 0, i32 0, i8 2, i8 2, i8 -1, i8 -1, i8 0, i8 0, i8 4 }], section ".init.rodata", align 4
@.str = private unnamed_addr constant [47 x i8] c"\013%s(): could not register clock provider: %d\0A\00", align 1
@__func__.mtk_infrasys_init_early = private unnamed_addr constant [24 x i8] c"mtk_infrasys_init_early\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"clk13m\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"clk26m\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"infra_cpu_sel\00", align 1
@cpu_parents = internal constant [4 x ptr] [ptr @.str.2, ptr @.str.4, ptr @.str.5, ptr @.str.6], align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"armpll\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"mainpll\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"mmpll\00", align 1
@clk_mt2701_drv = internal global %struct.platform_driver { ptr @clk_mt2701_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.7, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @of_match_clk_mt2701, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str.7 = private unnamed_addr constant [11 x i8] c"clk-mt2701\00", align 1
@of_match_clk_mt2701 = internal constant [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt2701-topckgen\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mtk_topckgen_init }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt2701-infracfg\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mtk_infrasys_init }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt2701-pericfg\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mtk_pericfg_init }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt2701-apmixedsys\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mtk_apmixedsys_init }, %struct.of_device_id zeroinitializer], align 4
@.str.8 = private unnamed_addr constant [43 x i8] c"could not register clock provider: %s: %d\0A\00", align 1
@top_fixed_clks = internal constant [13 x %struct.mtk_fixed_clk] [%struct.mtk_fixed_clk { i32 153, ptr @.str.9, ptr @.str.2, i32 108000000 }, %struct.mtk_fixed_clk { i32 43, ptr @.str.10, ptr @.str.2, i32 400000000 }, %struct.mtk_fixed_clk { i32 73, ptr @.str.11, ptr @.str.2, i32 295750000 }, %struct.mtk_fixed_clk { i32 61, ptr @.str.12, ptr @.str.2, i32 340000000 }, %struct.mtk_fixed_clk { i32 62, ptr @.str.13, ptr @.str.2, i32 340000000 }, %struct.mtk_fixed_clk { i32 63, ptr @.str.14, ptr @.str.2, i32 340000000 }, %struct.mtk_fixed_clk { i32 54, ptr @.str.15, ptr @.str.2, i32 27000000 }, %struct.mtk_fixed_clk { i32 152, ptr @.str.16, ptr @.str.2, i32 416000000 }, %struct.mtk_fixed_clk { i32 154, ptr @.str.17, ptr @.str.2, i32 143000000 }, %struct.mtk_fixed_clk { i32 60, ptr @.str.18, ptr @.str.2, i32 27000000 }, %struct.mtk_fixed_clk { i32 155, ptr @.str.19, ptr @.str.2, i32 0 }, %struct.mtk_fixed_clk { i32 156, ptr @.str.20, ptr @.str.2, i32 0 }, %struct.mtk_fixed_clk { i32 157, ptr @.str.21, ptr @.str.2, i32 0 }], align 4
@top_fixed_divs = internal constant [73 x %struct.mtk_fixed_factor] [%struct.mtk_fixed_factor { i32 1, ptr @.str.22, ptr @.str.5, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 2, ptr @.str.23, ptr @.str.5, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 3, ptr @.str.24, ptr @.str.5, i32 1, i32 3 }, %struct.mtk_fixed_factor { i32 4, ptr @.str.25, ptr @.str.5, i32 1, i32 5 }, %struct.mtk_fixed_factor { i32 5, ptr @.str.26, ptr @.str.5, i32 1, i32 7 }, %struct.mtk_fixed_factor { i32 6, ptr @.str.27, ptr @.str.23, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 7, ptr @.str.28, ptr @.str.23, i32 1, i32 4 }, %struct.mtk_fixed_factor { i32 8, ptr @.str.29, ptr @.str.23, i32 1, i32 8 }, %struct.mtk_fixed_factor { i32 9, ptr @.str.30, ptr @.str.23, i32 1, i32 16 }, %struct.mtk_fixed_factor { i32 10, ptr @.str.31, ptr @.str.24, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 11, ptr @.str.32, ptr @.str.24, i32 1, i32 4 }, %struct.mtk_fixed_factor { i32 12, ptr @.str.33, ptr @.str.24, i32 1, i32 8 }, %struct.mtk_fixed_factor { i32 13, ptr @.str.34, ptr @.str.25, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 14, ptr @.str.35, ptr @.str.25, i32 1, i32 4 }, %struct.mtk_fixed_factor { i32 15, ptr @.str.36, ptr @.str.26, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 16, ptr @.str.37, ptr @.str.26, i32 1, i32 4 }, %struct.mtk_fixed_factor { i32 17, ptr @.str.38, ptr @.str.39, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 18, ptr @.str.40, ptr @.str.39, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 19, ptr @.str.41, ptr @.str.39, i32 1, i32 3 }, %struct.mtk_fixed_factor { i32 20, ptr @.str.42, ptr @.str.39, i32 1, i32 5 }, %struct.mtk_fixed_factor { i32 21, ptr @.str.43, ptr @.str.39, i32 1, i32 7 }, %struct.mtk_fixed_factor { i32 22, ptr @.str.44, ptr @.str.39, i32 1, i32 26 }, %struct.mtk_fixed_factor { i32 23, ptr @.str.45, ptr @.str.39, i32 1, i32 52 }, %struct.mtk_fixed_factor { i32 24, ptr @.str.46, ptr @.str.39, i32 1, i32 108 }, %struct.mtk_fixed_factor { i32 25, ptr @.str.47, ptr @.str.39, i32 1, i32 26 }, %struct.mtk_fixed_factor { i32 26, ptr @.str.48, ptr @.str.40, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 27, ptr @.str.49, ptr @.str.40, i32 1, i32 4 }, %struct.mtk_fixed_factor { i32 28, ptr @.str.50, ptr @.str.40, i32 1, i32 8 }, %struct.mtk_fixed_factor { i32 151, ptr @.str.51, ptr @.str.40, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 29, ptr @.str.52, ptr @.str.41, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 30, ptr @.str.53, ptr @.str.41, i32 1, i32 4 }, %struct.mtk_fixed_factor { i32 31, ptr @.str.54, ptr @.str.41, i32 1, i32 8 }, %struct.mtk_fixed_factor { i32 32, ptr @.str.55, ptr @.str.41, i32 1, i32 16 }, %struct.mtk_fixed_factor { i32 33, ptr @.str.56, ptr @.str.41, i32 1, i32 32 }, %struct.mtk_fixed_factor { i32 34, ptr @.str.57, ptr @.str.42, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 35, ptr @.str.58, ptr @.str.42, i32 1, i32 4 }, %struct.mtk_fixed_factor { i32 36, ptr @.str.59, ptr @.str.42, i32 1, i32 8 }, %struct.mtk_fixed_factor { i32 37, ptr @.str.60, ptr @.str.61, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 38, ptr @.str.62, ptr @.str.61, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 39, ptr @.str.63, ptr @.str.61, i32 1, i32 4 }, %struct.mtk_fixed_factor { i32 40, ptr @.str.64, ptr @.str.61, i32 1, i32 8 }, %struct.mtk_fixed_factor { i32 41, ptr @.str.65, ptr @.str.6, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 42, ptr @.str.66, ptr @.str.6, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 44, ptr @.str.67, ptr @.str.10, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 45, ptr @.str.68, ptr @.str.10, i32 1, i32 4 }, %struct.mtk_fixed_factor { i32 46, ptr @.str.69, ptr @.str.10, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 47, ptr @.str.70, ptr @.str.71, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 48, ptr @.str.72, ptr @.str.71, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 49, ptr @.str.73, ptr @.str.71, i32 1, i32 4 }, %struct.mtk_fixed_factor { i32 72, ptr @.str.74, ptr @.str.75, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 50, ptr @.str.76, ptr @.str.77, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 51, ptr @.str.78, ptr @.str.77, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 74, ptr @.str.79, ptr @.str.9, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 55, ptr @.str.80, ptr @.str.9, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 56, ptr @.str.81, ptr @.str.9, i32 1, i32 4 }, %struct.mtk_fixed_factor { i32 57, ptr @.str.82, ptr @.str.83, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 58, ptr @.str.84, ptr @.str.83, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 59, ptr @.str.85, ptr @.str.83, i32 1, i32 3 }, %struct.mtk_fixed_factor { i32 75, ptr @.str.86, ptr @.str.4, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 66, ptr @.str.87, ptr @.str.88, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 67, ptr @.str.89, ptr @.str.88, i32 1, i32 4 }, %struct.mtk_fixed_factor { i32 68, ptr @.str.90, ptr @.str.88, i32 1, i32 8 }, %struct.mtk_fixed_factor { i32 69, ptr @.str.91, ptr @.str.88, i32 1, i32 16 }, %struct.mtk_fixed_factor { i32 70, ptr @.str.92, ptr @.str.88, i32 1, i32 24 }, %struct.mtk_fixed_factor { i32 64, ptr @.str.93, ptr @.str.94, i32 1, i32 3 }, %struct.mtk_fixed_factor { i32 65, ptr @.str.95, ptr @.str.96, i32 1, i32 3 }, %struct.mtk_fixed_factor { i32 52, ptr @.str.97, ptr @.str.98, i32 1, i32 3 }, %struct.mtk_fixed_factor { i32 53, ptr @.str.99, ptr @.str.98, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 71, ptr @.str.100, ptr @.str.101, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 150, ptr @.str.102, ptr @.str.2, i32 1, i32 8 }, %struct.mtk_fixed_factor { i32 148, ptr @.str.103, ptr @.str.2, i32 1, i32 793 }, %struct.mtk_fixed_factor { i32 149, ptr @.str.104, ptr @.str.105, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 158, ptr @.str.106, ptr @.str.107, i32 1, i32 4 }], align 4
@top_muxes = internal constant [54 x %struct.mtk_composite] [%struct.mtk_composite { i32 79, ptr @.str.107, ptr @axi_parents, ptr null, i32 2048, i32 64, i32 0, i32 64, i8 0, i8 3, i8 7, i8 -1, i8 0, i8 0, i8 8 }, %struct.mtk_composite { i32 78, ptr @.str.108, ptr @mem_parents, ptr null, i32 2048, i32 64, i32 0, i32 64, i8 8, i8 1, i8 15, i8 -1, i8 0, i8 0, i8 2 }, %struct.mtk_composite { i32 77, ptr @.str.109, ptr @ddrphycfg_parents, ptr null, i32 2048, i32 64, i32 0, i32 64, i8 16, i8 1, i8 23, i8 -1, i8 0, i8 0, i8 2 }, %struct.mtk_composite { i32 76, ptr @.str.110, ptr @mm_parents, ptr null, i32 4, i32 64, i32 0, i32 64, i8 24, i8 3, i8 31, i8 -1, i8 0, i8 0, i8 8 }, %struct.mtk_composite { i32 83, ptr @.str.111, ptr @pwm_parents, ptr null, i32 4, i32 80, i32 0, i32 80, i8 0, i8 2, i8 7, i8 -1, i8 0, i8 0, i8 4 }, %struct.mtk_composite { i32 82, ptr @.str.112, ptr @vdec_parents, ptr null, i32 4, i32 80, i32 0, i32 80, i8 8, i8 4, i8 15, i8 -1, i8 0, i8 0, i8 9 }, %struct.mtk_composite { i32 81, ptr @.str.113, ptr @mfg_parents, ptr null, i32 4, i32 80, i32 0, i32 80, i8 16, i8 3, i8 23, i8 -1, i8 0, i8 0, i8 8 }, %struct.mtk_composite { i32 80, ptr @.str.114, ptr @camtg_parents, ptr null, i32 4, i32 80, i32 0, i32 80, i8 24, i8 3, i8 31, i8 -1, i8 0, i8 0, i8 7 }, %struct.mtk_composite { i32 87, ptr @.str.115, ptr @uart_parents, ptr null, i32 4, i32 96, i32 0, i32 96, i8 0, i8 1, i8 7, i8 -1, i8 0, i8 0, i8 2 }, %struct.mtk_composite { i32 86, ptr @.str.116, ptr @spi_parents, ptr null, i32 4, i32 96, i32 0, i32 96, i8 8, i8 3, i8 15, i8 -1, i8 0, i8 0, i8 5 }, %struct.mtk_composite { i32 85, ptr @.str.117, ptr @usb20_parents, ptr null, i32 4, i32 96, i32 0, i32 96, i8 16, i8 2, i8 23, i8 -1, i8 0, i8 0, i8 3 }, %struct.mtk_composite { i32 84, ptr @.str.118, ptr @msdc30_parents, ptr null, i32 4, i32 96, i32 0, i32 96, i8 24, i8 3, i8 31, i8 -1, i8 0, i8 0, i8 6 }, %struct.mtk_composite { i32 91, ptr @.str.119, ptr @msdc30_parents, ptr null, i32 4, i32 112, i32 0, i32 112, i8 0, i8 3, i8 7, i8 -1, i8 0, i8 0, i8 6 }, %struct.mtk_composite { i32 90, ptr @.str.120, ptr @msdc30_parents, ptr null, i32 4, i32 112, i32 0, i32 112, i8 8, i8 3, i8 15, i8 -1, i8 0, i8 0, i8 6 }, %struct.mtk_composite { i32 89, ptr @.str.121, ptr @msdc30_parents, ptr null, i32 4, i32 112, i32 0, i32 112, i8 16, i8 1, i8 23, i8 -1, i8 0, i8 0, i8 6 }, %struct.mtk_composite { i32 88, ptr @.str.122, ptr @aud_intbus_parents, ptr null, i32 4, i32 112, i32 0, i32 112, i8 24, i8 3, i8 31, i8 -1, i8 0, i8 0, i8 6 }, %struct.mtk_composite { i32 95, ptr @.str.123, ptr @pmicspi_parents, ptr null, i32 4, i32 128, i32 0, i32 128, i8 0, i8 4, i8 7, i8 -1, i8 0, i8 0, i8 11 }, %struct.mtk_composite { i32 94, ptr @.str.124, ptr @scp_parents, ptr null, i32 4, i32 128, i32 0, i32 128, i8 8, i8 2, i8 15, i8 -1, i8 0, i8 0, i8 4 }, %struct.mtk_composite { i32 93, ptr @.str.125, ptr @dpi0_parents, ptr null, i32 4, i32 128, i32 0, i32 128, i8 16, i8 3, i8 23, i8 -1, i8 0, i8 0, i8 8 }, %struct.mtk_composite { i32 92, ptr @.str.126, ptr @dpi1_parents, ptr null, i32 0, i32 128, i32 0, i32 128, i8 24, i8 2, i8 31, i8 -1, i8 0, i8 16, i8 4 }, %struct.mtk_composite { i32 98, ptr @.str.127, ptr @tve_parents, ptr null, i32 4, i32 144, i32 0, i32 144, i8 0, i8 3, i8 7, i8 -1, i8 0, i8 0, i8 8 }, %struct.mtk_composite { i32 97, ptr @.str.128, ptr @hdmi_parents, ptr null, i32 4, i32 144, i32 0, i32 144, i8 8, i8 2, i8 15, i8 -1, i8 0, i8 0, i8 4 }, %struct.mtk_composite { i32 96, ptr @.str.129, ptr @apll_parents, ptr null, i32 4, i32 144, i32 0, i32 144, i8 16, i8 3, i8 23, i8 -1, i8 0, i8 0, i8 8 }, %struct.mtk_composite { i32 101, ptr @.str.130, ptr @rtc_parents, ptr null, i32 2048, i32 160, i32 0, i32 160, i8 0, i8 2, i8 7, i8 -1, i8 0, i8 0, i8 4 }, %struct.mtk_composite { i32 100, ptr @.str.131, ptr @nfi2x_parents, ptr null, i32 4, i32 160, i32 0, i32 160, i8 8, i8 3, i8 15, i8 -1, i8 0, i8 0, i8 8 }, %struct.mtk_composite { i32 99, ptr @.str.132, ptr @emmc_hclk_parents, ptr null, i32 4, i32 160, i32 0, i32 160, i8 24, i8 2, i8 31, i8 -1, i8 0, i8 0, i8 4 }, %struct.mtk_composite { i32 105, ptr @.str.133, ptr @flash_parents, ptr null, i32 4, i32 176, i32 0, i32 176, i8 0, i8 3, i8 7, i8 -1, i8 0, i8 0, i8 8 }, %struct.mtk_composite { i32 104, ptr @.str.134, ptr @di_parents, ptr null, i32 4, i32 176, i32 0, i32 176, i8 8, i8 2, i8 15, i8 -1, i8 0, i8 0, i8 4 }, %struct.mtk_composite { i32 103, ptr @.str.135, ptr @nr_osd_parents, ptr null, i32 4, i32 176, i32 0, i32 176, i8 16, i8 3, i8 23, i8 -1, i8 0, i8 0, i8 8 }, %struct.mtk_composite { i32 102, ptr @.str.136, ptr @nr_osd_parents, ptr null, i32 4, i32 176, i32 0, i32 176, i8 24, i8 3, i8 31, i8 -1, i8 0, i8 0, i8 8 }, %struct.mtk_composite { i32 109, ptr @.str.137, ptr @hdmirx_bist_parents, ptr null, i32 4, i32 192, i32 0, i32 192, i8 0, i8 3, i8 7, i8 -1, i8 0, i8 0, i8 8 }, %struct.mtk_composite { i32 108, ptr @.str.138, ptr @intdir_parents, ptr null, i32 4, i32 192, i32 0, i32 192, i8 8, i8 2, i8 15, i8 -1, i8 0, i8 0, i8 4 }, %struct.mtk_composite { i32 107, ptr @.str.139, ptr @asm_parents, ptr null, i32 4, i32 192, i32 0, i32 192, i8 16, i8 2, i8 23, i8 -1, i8 0, i8 0, i8 4 }, %struct.mtk_composite { i32 106, ptr @.str.140, ptr @asm_parents, ptr null, i32 4, i32 192, i32 0, i32 192, i8 24, i8 3, i8 31, i8 -1, i8 0, i8 0, i8 4 }, %struct.mtk_composite { i32 112, ptr @.str.141, ptr @asm_parents, ptr null, i32 4, i32 208, i32 0, i32 208, i8 0, i8 2, i8 7, i8 -1, i8 0, i8 0, i8 4 }, %struct.mtk_composite { i32 111, ptr @.str.142, ptr @ms_card_parents, ptr null, i32 4, i32 208, i32 0, i32 208, i8 16, i8 2, i8 23, i8 -1, i8 0, i8 0, i8 3 }, %struct.mtk_composite { i32 110, ptr @.str.143, ptr @ethif_parents, ptr null, i32 4, i32 208, i32 0, i32 208, i8 24, i8 3, i8 31, i8 -1, i8 0, i8 0, i8 8 }, %struct.mtk_composite { i32 116, ptr @.str.144, ptr @hdmirx_parents, ptr null, i32 4, i32 224, i32 0, i32 224, i8 0, i8 1, i8 7, i8 -1, i8 0, i8 0, i8 2 }, %struct.mtk_composite { i32 115, ptr @.str.145, ptr @msdc30_parents, ptr null, i32 4, i32 224, i32 0, i32 224, i8 8, i8 3, i8 15, i8 -1, i8 0, i8 0, i8 6 }, %struct.mtk_composite { i32 114, ptr @.str.146, ptr @cmsys_parents, ptr null, i32 4, i32 224, i32 0, i32 224, i8 16, i8 4, i8 23, i8 -1, i8 0, i8 0, i8 15 }, %struct.mtk_composite { i32 113, ptr @.str.147, ptr @spi_parents, ptr null, i32 4, i32 224, i32 0, i32 224, i8 24, i8 3, i8 31, i8 -1, i8 0, i8 0, i8 5 }, %struct.mtk_composite { i32 119, ptr @.str.148, ptr @spi_parents, ptr null, i32 4, i32 240, i32 0, i32 240, i8 0, i8 3, i8 7, i8 -1, i8 0, i8 0, i8 5 }, %struct.mtk_composite { i32 118, ptr @.str.149, ptr @clk_8bdac_parents, ptr null, i32 4, i32 240, i32 0, i32 240, i8 8, i8 2, i8 15, i8 -1, i8 0, i8 0, i8 4 }, %struct.mtk_composite { i32 117, ptr @.str.150, ptr @aud2dvd_parents, ptr null, i32 4, i32 240, i32 0, i32 240, i8 16, i8 1, i8 23, i8 -1, i8 0, i8 0, i8 2 }, %struct.mtk_composite { i32 129, ptr @.str.151, ptr @padmclk_parents, ptr null, i32 4, i32 256, i32 0, i32 0, i8 0, i8 3, i8 -1, i8 -1, i8 0, i8 0, i8 7 }, %struct.mtk_composite { i32 120, ptr @.str.152, ptr @aud_mux_parents, ptr null, i32 4, i32 300, i32 0, i32 0, i8 0, i8 3, i8 -1, i8 -1, i8 0, i8 0, i8 6 }, %struct.mtk_composite { i32 121, ptr @.str.153, ptr @aud_mux_parents, ptr null, i32 4, i32 300, i32 0, i32 0, i8 3, i8 3, i8 -1, i8 -1, i8 0, i8 0, i8 6 }, %struct.mtk_composite { i32 122, ptr @.str.88, ptr @aud_mux_parents, ptr null, i32 4, i32 300, i32 0, i32 0, i8 6, i8 3, i8 -1, i8 -1, i8 0, i8 0, i8 6 }, %struct.mtk_composite { i32 123, ptr @.str.154, ptr @aud_src_parents, ptr null, i32 4, i32 300, i32 0, i32 300, i8 15, i8 1, i8 23, i8 -1, i8 0, i8 0, i8 2 }, %struct.mtk_composite { i32 124, ptr @.str.155, ptr @aud_src_parents, ptr null, i32 4, i32 300, i32 0, i32 300, i8 16, i8 1, i8 24, i8 -1, i8 0, i8 0, i8 2 }, %struct.mtk_composite { i32 125, ptr @.str.156, ptr @aud_src_parents, ptr null, i32 4, i32 300, i32 0, i32 300, i8 17, i8 1, i8 25, i8 -1, i8 0, i8 0, i8 2 }, %struct.mtk_composite { i32 126, ptr @.str.157, ptr @aud_src_parents, ptr null, i32 4, i32 300, i32 0, i32 300, i8 18, i8 1, i8 26, i8 -1, i8 0, i8 0, i8 2 }, %struct.mtk_composite { i32 127, ptr @.str.158, ptr @aud_src_parents, ptr null, i32 4, i32 300, i32 0, i32 300, i8 19, i8 1, i8 27, i8 -1, i8 0, i8 0, i8 2 }, %struct.mtk_composite { i32 128, ptr @.str.159, ptr @aud_src_parents, ptr null, i32 4, i32 300, i32 0, i32 300, i8 20, i8 1, i8 28, i8 -1, i8 0, i8 0, i8 2 }], align 4
@mt2701_clk_lock = internal global %struct.spinlock zeroinitializer, align 4
@top_adj_divs = internal constant [10 x %struct.mtk_clk_divider] [%struct.mtk_clk_divider { i32 130, ptr @.str.163, ptr @.str.19, i32 0, i32 288, i8 0, i8 8, i8 0, ptr null }, %struct.mtk_clk_divider { i32 131, ptr @.str.164, ptr @.str.20, i32 0, i32 288, i8 8, i8 8, i8 0, ptr null }, %struct.mtk_clk_divider { i32 132, ptr @.str.165, ptr @.str.152, i32 0, i32 288, i8 16, i8 8, i8 0, ptr null }, %struct.mtk_clk_divider { i32 133, ptr @.str.166, ptr @.str.153, i32 0, i32 288, i8 24, i8 8, i8 0, ptr null }, %struct.mtk_clk_divider { i32 134, ptr @.str.167, ptr @.str.154, i32 0, i32 292, i8 0, i8 8, i8 0, ptr null }, %struct.mtk_clk_divider { i32 135, ptr @.str.168, ptr @.str.155, i32 0, i32 292, i8 8, i8 8, i8 0, ptr null }, %struct.mtk_clk_divider { i32 136, ptr @.str.169, ptr @.str.156, i32 0, i32 292, i8 16, i8 8, i8 0, ptr null }, %struct.mtk_clk_divider { i32 137, ptr @.str.170, ptr @.str.157, i32 0, i32 292, i8 24, i8 8, i8 0, ptr null }, %struct.mtk_clk_divider { i32 138, ptr @.str.171, ptr @.str.158, i32 0, i32 296, i8 0, i8 8, i8 0, ptr null }, %struct.mtk_clk_divider { i32 139, ptr @.str.172, ptr @.str.159, i32 0, i32 296, i8 8, i8 8, i8 0, ptr null }], align 4
@top_clks = internal constant [8 x %struct.mtk_gate] [%struct.mtk_gate { i32 146, ptr @.str.161, ptr @.str.165, ptr @top_aud_cg_regs, i32 21, ptr @mtk_clk_gate_ops_no_setclr, i32 0 }, %struct.mtk_gate { i32 147, ptr @.str.162, ptr @.str.166, ptr @top_aud_cg_regs, i32 22, ptr @mtk_clk_gate_ops_no_setclr, i32 0 }, %struct.mtk_gate { i32 140, ptr @.str.173, ptr @.str.167, ptr @top_aud_cg_regs, i32 23, ptr @mtk_clk_gate_ops_no_setclr, i32 0 }, %struct.mtk_gate { i32 141, ptr @.str.174, ptr @.str.168, ptr @top_aud_cg_regs, i32 24, ptr @mtk_clk_gate_ops_no_setclr, i32 0 }, %struct.mtk_gate { i32 142, ptr @.str.175, ptr @.str.169, ptr @top_aud_cg_regs, i32 25, ptr @mtk_clk_gate_ops_no_setclr, i32 0 }, %struct.mtk_gate { i32 143, ptr @.str.176, ptr @.str.170, ptr @top_aud_cg_regs, i32 26, ptr @mtk_clk_gate_ops_no_setclr, i32 0 }, %struct.mtk_gate { i32 144, ptr @.str.177, ptr @.str.171, ptr @top_aud_cg_regs, i32 27, ptr @mtk_clk_gate_ops_no_setclr, i32 0 }, %struct.mtk_gate { i32 145, ptr @.str.178, ptr @.str.172, ptr @top_aud_cg_regs, i32 28, ptr @mtk_clk_gate_ops_no_setclr, i32 0 }], align 4
@.str.9 = private unnamed_addr constant [7 x i8] c"dpi_ck\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"dmpll_ck\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"vencpll_ck\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"hdmi_0_pix340m\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"hdmi_0_deep340m\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"hdmi_0_pll340m\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"hadds2_fbclk\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"wbg_dig_ck_416m\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"dsi0_lntc_dsi\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"hdmi_scl_rx\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"aud_ext1\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"aud_ext2\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"nfi1x_pad\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"syspll_ck\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"syspll_d2\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"syspll_d3\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"syspll_d5\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"syspll_d7\00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"syspll1_d2\00", align 1
@.str.28 = private unnamed_addr constant [11 x i8] c"syspll1_d4\00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c"syspll1_d8\00", align 1
@.str.30 = private unnamed_addr constant [12 x i8] c"syspll1_d16\00", align 1
@.str.31 = private unnamed_addr constant [11 x i8] c"syspll2_d2\00", align 1
@.str.32 = private unnamed_addr constant [11 x i8] c"syspll2_d4\00", align 1
@.str.33 = private unnamed_addr constant [11 x i8] c"syspll2_d8\00", align 1
@.str.34 = private unnamed_addr constant [11 x i8] c"syspll3_d2\00", align 1
@.str.35 = private unnamed_addr constant [11 x i8] c"syspll3_d4\00", align 1
@.str.36 = private unnamed_addr constant [11 x i8] c"syspll4_d2\00", align 1
@.str.37 = private unnamed_addr constant [11 x i8] c"syspll4_d4\00", align 1
@.str.38 = private unnamed_addr constant [11 x i8] c"univpll_ck\00", align 1
@.str.39 = private unnamed_addr constant [8 x i8] c"univpll\00", align 1
@.str.40 = private unnamed_addr constant [11 x i8] c"univpll_d2\00", align 1
@.str.41 = private unnamed_addr constant [11 x i8] c"univpll_d3\00", align 1
@.str.42 = private unnamed_addr constant [11 x i8] c"univpll_d5\00", align 1
@.str.43 = private unnamed_addr constant [11 x i8] c"univpll_d7\00", align 1
@.str.44 = private unnamed_addr constant [12 x i8] c"univpll_d26\00", align 1
@.str.45 = private unnamed_addr constant [12 x i8] c"univpll_d52\00", align 1
@.str.46 = private unnamed_addr constant [13 x i8] c"univpll_d108\00", align 1
@.str.47 = private unnamed_addr constant [14 x i8] c"usb_phy48m_ck\00", align 1
@.str.48 = private unnamed_addr constant [12 x i8] c"univpll1_d2\00", align 1
@.str.49 = private unnamed_addr constant [12 x i8] c"univpll1_d4\00", align 1
@.str.50 = private unnamed_addr constant [12 x i8] c"univpll1_d8\00", align 1
@.str.51 = private unnamed_addr constant [9 x i8] c"8bdac_ck\00", align 1
@.str.52 = private unnamed_addr constant [12 x i8] c"univpll2_d2\00", align 1
@.str.53 = private unnamed_addr constant [12 x i8] c"univpll2_d4\00", align 1
@.str.54 = private unnamed_addr constant [12 x i8] c"univpll2_d8\00", align 1
@.str.55 = private unnamed_addr constant [13 x i8] c"univpll2_d16\00", align 1
@.str.56 = private unnamed_addr constant [13 x i8] c"univpll2_d32\00", align 1
@.str.57 = private unnamed_addr constant [12 x i8] c"univpll3_d2\00", align 1
@.str.58 = private unnamed_addr constant [12 x i8] c"univpll3_d4\00", align 1
@.str.59 = private unnamed_addr constant [12 x i8] c"univpll3_d8\00", align 1
@.str.60 = private unnamed_addr constant [11 x i8] c"msdcpll_ck\00", align 1
@.str.61 = private unnamed_addr constant [8 x i8] c"msdcpll\00", align 1
@.str.62 = private unnamed_addr constant [11 x i8] c"msdcpll_d2\00", align 1
@.str.63 = private unnamed_addr constant [11 x i8] c"msdcpll_d4\00", align 1
@.str.64 = private unnamed_addr constant [11 x i8] c"msdcpll_d8\00", align 1
@.str.65 = private unnamed_addr constant [9 x i8] c"mmpll_ck\00", align 1
@.str.66 = private unnamed_addr constant [9 x i8] c"mmpll_d2\00", align 1
@.str.67 = private unnamed_addr constant [9 x i8] c"dmpll_d2\00", align 1
@.str.68 = private unnamed_addr constant [9 x i8] c"dmpll_d4\00", align 1
@.str.69 = private unnamed_addr constant [9 x i8] c"dmpll_x2\00", align 1
@.str.70 = private unnamed_addr constant [10 x i8] c"tvdpll_ck\00", align 1
@.str.71 = private unnamed_addr constant [7 x i8] c"tvdpll\00", align 1
@.str.72 = private unnamed_addr constant [10 x i8] c"tvdpll_d2\00", align 1
@.str.73 = private unnamed_addr constant [10 x i8] c"tvdpll_d4\00", align 1
@.str.74 = private unnamed_addr constant [11 x i8] c"vdecpll_ck\00", align 1
@.str.75 = private unnamed_addr constant [8 x i8] c"vdecpll\00", align 1
@.str.76 = private unnamed_addr constant [11 x i8] c"tvd2pll_ck\00", align 1
@.str.77 = private unnamed_addr constant [8 x i8] c"tvd2pll\00", align 1
@.str.78 = private unnamed_addr constant [11 x i8] c"tvd2pll_d2\00", align 1
@.str.79 = private unnamed_addr constant [8 x i8] c"mipipll\00", align 1
@.str.80 = private unnamed_addr constant [11 x i8] c"mipipll_d2\00", align 1
@.str.81 = private unnamed_addr constant [11 x i8] c"mipipll_d4\00", align 1
@.str.82 = private unnamed_addr constant [11 x i8] c"hdmipll_ck\00", align 1
@.str.83 = private unnamed_addr constant [15 x i8] c"hdmitx_dig_cts\00", align 1
@.str.84 = private unnamed_addr constant [11 x i8] c"hdmipll_d2\00", align 1
@.str.85 = private unnamed_addr constant [11 x i8] c"hdmipll_d3\00", align 1
@.str.86 = private unnamed_addr constant [15 x i8] c"armpll_1p3g_ck\00", align 1
@.str.87 = private unnamed_addr constant [7 x i8] c"audpll\00", align 1
@.str.88 = private unnamed_addr constant [11 x i8] c"audpll_sel\00", align 1
@.str.89 = private unnamed_addr constant [10 x i8] c"audpll_d4\00", align 1
@.str.90 = private unnamed_addr constant [10 x i8] c"audpll_d8\00", align 1
@.str.91 = private unnamed_addr constant [11 x i8] c"audpll_d16\00", align 1
@.str.92 = private unnamed_addr constant [11 x i8] c"audpll_d24\00", align 1
@.str.93 = private unnamed_addr constant [15 x i8] c"aud1pll_98m_ck\00", align 1
@.str.94 = private unnamed_addr constant [8 x i8] c"aud1pll\00", align 1
@.str.95 = private unnamed_addr constant [15 x i8] c"aud2pll_90m_ck\00", align 1
@.str.96 = private unnamed_addr constant [8 x i8] c"aud2pll\00", align 1
@.str.97 = private unnamed_addr constant [14 x i8] c"hadds2pll_98m\00", align 1
@.str.98 = private unnamed_addr constant [10 x i8] c"hadds2pll\00", align 1
@.str.99 = private unnamed_addr constant [15 x i8] c"hadds2pll_294m\00", align 1
@.str.100 = private unnamed_addr constant [15 x i8] c"ethpll_500m_ck\00", align 1
@.str.101 = private unnamed_addr constant [7 x i8] c"ethpll\00", align 1
@.str.102 = private unnamed_addr constant [10 x i8] c"clk26m_d8\00", align 1
@.str.103 = private unnamed_addr constant [13 x i8] c"32k_internal\00", align 1
@.str.104 = private unnamed_addr constant [13 x i8] c"32k_external\00", align 1
@.str.105 = private unnamed_addr constant [7 x i8] c"rtc32k\00", align 1
@.str.106 = private unnamed_addr constant [10 x i8] c"axisel_d4\00", align 1
@.str.107 = private unnamed_addr constant [8 x i8] c"axi_sel\00", align 1
@axi_parents = internal constant [8 x ptr] [ptr @.str.2, ptr @.str.27, ptr @.str.25, ptr @.str.28, ptr @.str.42, ptr @.str.52, ptr @.str.66, ptr @.str.67], align 4
@.str.108 = private unnamed_addr constant [8 x i8] c"mem_sel\00", align 1
@mem_parents = internal constant [2 x ptr] [ptr @.str.2, ptr @.str.10], align 4
@.str.109 = private unnamed_addr constant [14 x i8] c"ddrphycfg_sel\00", align 1
@ddrphycfg_parents = internal constant [2 x ptr] [ptr @.str.2, ptr @.str.29], align 4
@.str.110 = private unnamed_addr constant [7 x i8] c"mm_sel\00", align 1
@mm_parents = internal constant [8 x ptr] [ptr @.str.2, ptr @.str.11, ptr @.str.27, ptr @.str.28, ptr @.str.42, ptr @.str.48, ptr @.str.52, ptr @.str.10], align 4
@.str.111 = private unnamed_addr constant [8 x i8] c"pwm_sel\00", align 1
@pwm_parents = internal constant [4 x ptr] [ptr @.str.2, ptr @.str.53, ptr @.str.57, ptr @.str.49], align 4
@.str.112 = private unnamed_addr constant [9 x i8] c"vdec_sel\00", align 1
@vdec_parents = internal constant [9 x ptr] [ptr @.str.2, ptr @.str.74, ptr @.str.25, ptr @.str.28, ptr @.str.42, ptr @.str.52, ptr @.str.11, ptr @.str.62, ptr @.str.66], align 4
@.str.113 = private unnamed_addr constant [8 x i8] c"mfg_sel\00", align 1
@mfg_parents = internal constant [8 x ptr] [ptr @.str.2, ptr @.str.65, ptr @.str.160, ptr @.str.60, ptr @.str.2, ptr @.str.24, ptr @.str.41, ptr @.str.48], align 4
@.str.114 = private unnamed_addr constant [10 x i8] c"camtg_sel\00", align 1
@camtg_parents = internal constant [7 x ptr] [ptr @.str.2, ptr @.str.44, ptr @.str.52, ptr @.str.34, ptr @.str.35, ptr @.str.62, ptr @.str.66], align 4
@.str.115 = private unnamed_addr constant [9 x i8] c"uart_sel\00", align 1
@uart_parents = internal constant [2 x ptr] [ptr @.str.2, ptr @.str.54], align 4
@.str.116 = private unnamed_addr constant [9 x i8] c"spi0_sel\00", align 1
@spi_parents = internal constant [5 x ptr] [ptr @.str.2, ptr @.str.34, ptr @.str.36, ptr @.str.53, ptr @.str.50], align 4
@.str.117 = private unnamed_addr constant [10 x i8] c"usb20_sel\00", align 1
@usb20_parents = internal constant [3 x ptr] [ptr @.str.2, ptr @.str.50, ptr @.str.58], align 4
@.str.118 = private unnamed_addr constant [13 x i8] c"msdc30_0_sel\00", align 1
@msdc30_parents = internal constant [6 x ptr] [ptr @.str.2, ptr @.str.62, ptr @.str.31, ptr @.str.28, ptr @.str.49, ptr @.str.53], align 4
@.str.119 = private unnamed_addr constant [13 x i8] c"msdc30_1_sel\00", align 1
@.str.120 = private unnamed_addr constant [13 x i8] c"msdc30_2_sel\00", align 1
@.str.121 = private unnamed_addr constant [10 x i8] c"audio_sel\00", align 1
@.str.122 = private unnamed_addr constant [15 x i8] c"aud_intbus_sel\00", align 1
@aud_intbus_parents = internal constant [6 x ptr] [ptr @.str.2, ptr @.str.28, ptr @.str.34, ptr @.str.36, ptr @.str.57, ptr @.str.53], align 4
@.str.123 = private unnamed_addr constant [12 x i8] c"pmicspi_sel\00", align 1
@pmicspi_parents = internal constant [11 x ptr] [ptr @.str.2, ptr @.str.29, ptr @.str.32, ptr @.str.36, ptr @.str.35, ptr @.str.33, ptr @.str.30, ptr @.str.58, ptr @.str.44, ptr @.str.67, ptr @.str.68], align 4
@.str.124 = private unnamed_addr constant [8 x i8] c"scp_sel\00", align 1
@scp_parents = internal constant [4 x ptr] [ptr @.str.2, ptr @.str.29, ptr @.str.67, ptr @.str.68], align 4
@.str.125 = private unnamed_addr constant [9 x i8] c"dpi0_sel\00", align 1
@dpi0_parents = internal constant [8 x ptr] [ptr @.str.2, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.2, ptr @.str.70, ptr @.str.72, ptr @.str.73], align 4
@.str.126 = private unnamed_addr constant [9 x i8] c"dpi1_sel\00", align 1
@dpi1_parents = internal constant [4 x ptr] [ptr @.str.2, ptr @.str.70, ptr @.str.72, ptr @.str.73], align 4
@.str.127 = private unnamed_addr constant [8 x i8] c"tve_sel\00", align 1
@tve_parents = internal constant [8 x ptr] [ptr @.str.2, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.2, ptr @.str.70, ptr @.str.72, ptr @.str.73], align 4
@.str.128 = private unnamed_addr constant [9 x i8] c"hdmi_sel\00", align 1
@hdmi_parents = internal constant [4 x ptr] [ptr @.str.2, ptr @.str.82, ptr @.str.84, ptr @.str.85], align 4
@.str.129 = private unnamed_addr constant [9 x i8] c"apll_sel\00", align 1
@apll_parents = internal constant [8 x ptr] [ptr @.str.2, ptr @.str.87, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.2, ptr @.str.2], align 4
@.str.130 = private unnamed_addr constant [8 x i8] c"rtc_sel\00", align 1
@rtc_parents = internal constant [4 x ptr] [ptr @.str.103, ptr @.str.104, ptr @.str.2, ptr @.str.59], align 4
@.str.131 = private unnamed_addr constant [10 x i8] c"nfi2x_sel\00", align 1
@nfi2x_parents = internal constant [8 x ptr] [ptr @.str.2, ptr @.str.31, ptr @.str.26, ptr @.str.57, ptr @.str.32, ptr @.str.58, ptr @.str.37, ptr @.str.2], align 4
@.str.132 = private unnamed_addr constant [14 x i8] c"emmc_hclk_sel\00", align 1
@emmc_hclk_parents = internal constant [4 x ptr] [ptr @.str.2, ptr @.str.27, ptr @.str.28, ptr @.str.31], align 4
@.str.133 = private unnamed_addr constant [10 x i8] c"flash_sel\00", align 1
@flash_parents = internal constant [8 x ptr] [ptr @.str.102, ptr @.str.2, ptr @.str.33, ptr @.str.35, ptr @.str.58, ptr @.str.36, ptr @.str.32, ptr @.str.53], align 4
@.str.134 = private unnamed_addr constant [7 x i8] c"di_sel\00", align 1
@di_parents = internal constant [4 x ptr] [ptr @.str.2, ptr @.str.76, ptr @.str.78, ptr @.str.2], align 4
@.str.135 = private unnamed_addr constant [7 x i8] c"nr_sel\00", align 1
@nr_osd_parents = internal constant [8 x ptr] [ptr @.str.2, ptr @.str.11, ptr @.str.27, ptr @.str.28, ptr @.str.42, ptr @.str.48, ptr @.str.52, ptr @.str.10], align 4
@.str.136 = private unnamed_addr constant [8 x i8] c"osd_sel\00", align 1
@.str.137 = private unnamed_addr constant [16 x i8] c"hdmirx_bist_sel\00", align 1
@hdmirx_bist_parents = internal constant [8 x ptr] [ptr @.str.2, ptr @.str.24, ptr @.str.2, ptr @.str.30, ptr @.str.36, ptr @.str.28, ptr @.str.11, ptr @.str.2], align 4
@.str.138 = private unnamed_addr constant [11 x i8] c"intdir_sel\00", align 1
@intdir_parents = internal constant [4 x ptr] [ptr @.str.2, ptr @.str.65, ptr @.str.23, ptr @.str.40], align 4
@.str.139 = private unnamed_addr constant [10 x i8] c"asm_i_sel\00", align 1
@asm_parents = internal constant [4 x ptr] [ptr @.str.2, ptr @.str.53, ptr @.str.52, ptr @.str.25], align 4
@.str.140 = private unnamed_addr constant [10 x i8] c"asm_m_sel\00", align 1
@.str.141 = private unnamed_addr constant [10 x i8] c"asm_h_sel\00", align 1
@.str.142 = private unnamed_addr constant [12 x i8] c"ms_card_sel\00", align 1
@ms_card_parents = internal constant [3 x ptr] [ptr @.str.2, ptr @.str.59, ptr @.str.37], align 4
@.str.143 = private unnamed_addr constant [10 x i8] c"ethif_sel\00", align 1
@ethif_parents = internal constant [8 x ptr] [ptr @.str.2, ptr @.str.27, ptr @.str.25, ptr @.str.28, ptr @.str.42, ptr @.str.48, ptr @.str.10, ptr @.str.67], align 4
@.str.144 = private unnamed_addr constant [16 x i8] c"hdmirx26_24_sel\00", align 1
@hdmirx_parents = internal constant [2 x ptr] [ptr @.str.2, ptr @.str.45], align 4
@.str.145 = private unnamed_addr constant [13 x i8] c"msdc30_3_sel\00", align 1
@.str.146 = private unnamed_addr constant [10 x i8] c"cmsys_sel\00", align 1
@cmsys_parents = internal constant [15 x ptr] [ptr @.str.2, ptr @.str.27, ptr @.str.48, ptr @.str.42, ptr @.str.25, ptr @.str.31, ptr @.str.28, ptr @.str.34, ptr @.str.32, ptr @.str.29, ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.2], align 4
@.str.147 = private unnamed_addr constant [9 x i8] c"spi2_sel\00", align 1
@.str.148 = private unnamed_addr constant [9 x i8] c"spi1_sel\00", align 1
@.str.149 = private unnamed_addr constant [10 x i8] c"8bdac_sel\00", align 1
@clk_8bdac_parents = internal constant [4 x ptr] [ptr @.str.103, ptr @.str.51, ptr @.str.2, ptr @.str.2], align 4
@.str.150 = private unnamed_addr constant [12 x i8] c"aud2dvd_sel\00", align 1
@aud2dvd_parents = internal constant [2 x ptr] [ptr @.str.161, ptr @.str.162], align 4
@.str.151 = private unnamed_addr constant [12 x i8] c"padmclk_sel\00", align 1
@padmclk_parents = internal constant [7 x ptr] [ptr @.str.2, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.54, ptr @.str.55, ptr @.str.56], align 4
@.str.152 = private unnamed_addr constant [13 x i8] c"aud_mux1_sel\00", align 1
@aud_mux_parents = internal constant [6 x ptr] [ptr @.str.2, ptr @.str.93, ptr @.str.95, ptr @.str.97, ptr @.str.163, ptr @.str.164], align 4
@.str.153 = private unnamed_addr constant [13 x i8] c"aud_mux2_sel\00", align 1
@.str.154 = private unnamed_addr constant [15 x i8] c"aud_k1_src_sel\00", align 1
@aud_src_parents = internal constant [2 x ptr] [ptr @.str.152, ptr @.str.153], align 4
@.str.155 = private unnamed_addr constant [15 x i8] c"aud_k2_src_sel\00", align 1
@.str.156 = private unnamed_addr constant [15 x i8] c"aud_k3_src_sel\00", align 1
@.str.157 = private unnamed_addr constant [15 x i8] c"aud_k4_src_sel\00", align 1
@.str.158 = private unnamed_addr constant [15 x i8] c"aud_k5_src_sel\00", align 1
@.str.159 = private unnamed_addr constant [15 x i8] c"aud_k6_src_sel\00", align 1
@.str.160 = private unnamed_addr constant [12 x i8] c"dmpll_x2_ck\00", align 1
@.str.161 = private unnamed_addr constant [12 x i8] c"a1sys_hp_ck\00", align 1
@.str.162 = private unnamed_addr constant [12 x i8] c"a2sys_hp_ck\00", align 1
@.str.163 = private unnamed_addr constant [14 x i8] c"audio_ext1_ck\00", align 1
@.str.164 = private unnamed_addr constant [14 x i8] c"audio_ext2_ck\00", align 1
@.str.165 = private unnamed_addr constant [13 x i8] c"aud_mux1_div\00", align 1
@.str.166 = private unnamed_addr constant [13 x i8] c"aud_mux2_div\00", align 1
@.str.167 = private unnamed_addr constant [15 x i8] c"aud_k1_src_div\00", align 1
@.str.168 = private unnamed_addr constant [15 x i8] c"aud_k2_src_div\00", align 1
@.str.169 = private unnamed_addr constant [15 x i8] c"aud_k3_src_div\00", align 1
@.str.170 = private unnamed_addr constant [15 x i8] c"aud_k4_src_div\00", align 1
@.str.171 = private unnamed_addr constant [15 x i8] c"aud_k5_src_div\00", align 1
@.str.172 = private unnamed_addr constant [15 x i8] c"aud_k6_src_div\00", align 1
@top_aud_cg_regs = internal constant %struct.mtk_gate_regs { i32 300, i32 0, i32 0 }, align 4
@mtk_clk_gate_ops_no_setclr = external dso_local constant %struct.clk_ops, align 4
@.str.173 = private unnamed_addr constant [14 x i8] c"aud_i2s1_mclk\00", align 1
@.str.174 = private unnamed_addr constant [14 x i8] c"aud_i2s2_mclk\00", align 1
@.str.175 = private unnamed_addr constant [14 x i8] c"aud_i2s3_mclk\00", align 1
@.str.176 = private unnamed_addr constant [14 x i8] c"aud_i2s4_mclk\00", align 1
@.str.177 = private unnamed_addr constant [14 x i8] c"aud_i2s5_mclk\00", align 1
@.str.178 = private unnamed_addr constant [14 x i8] c"aud_i2s6_mclk\00", align 1
@infra_clks = internal constant [18 x %struct.mtk_gate] [%struct.mtk_gate { i32 1, ptr @.str.179, ptr @.str.107, ptr @infra_cg_regs, i32 0, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 2, ptr @.str.180, ptr @.str.110, ptr @infra_cg_regs, i32 1, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 3, ptr @.str.181, ptr @.str.107, ptr @infra_cg_regs, i32 2, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 4, ptr @.str.182, ptr @.str.99, ptr @infra_cg_regs, i32 4, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 5, ptr @.str.183, ptr @.str.2, ptr @infra_cg_regs, i32 5, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 6, ptr @.str.184, ptr @.str.2, ptr @infra_cg_regs, i32 6, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 7, ptr @.str.185, ptr @.str.110, ptr @infra_cg_regs, i32 7, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 8, ptr @.str.186, ptr @.str.108, ptr @infra_cg_regs, i32 8, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 9, ptr @.str.187, ptr @.str.16, ptr @infra_cg_regs, i32 12, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 10, ptr @.str.188, ptr @.str.107, ptr @infra_cg_regs, i32 13, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 11, ptr @.str.189, ptr @.str.108, ptr @infra_cg_regs, i32 14, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 12, ptr @.str.190, ptr @.str.108, ptr @infra_cg_regs, i32 15, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 13, ptr @.str.191, ptr @.str.107, ptr @infra_cg_regs, i32 16, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 14, ptr @.str.192, ptr @.str.130, ptr @infra_cg_regs, i32 18, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 15, ptr @.str.193, ptr @.str.107, ptr @infra_cg_regs, i32 19, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 16, ptr @.str.194, ptr @.str.123, ptr @infra_cg_regs, i32 22, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 17, ptr @.str.195, ptr @.str.107, ptr @infra_cg_regs, i32 23, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 18, ptr @.str.196, ptr @.str.107, ptr @infra_cg_regs, i32 24, ptr @mtk_clk_gate_ops_setclr, i32 0 }], align 4
@.str.179 = private unnamed_addr constant [7 x i8] c"dbgclk\00", align 1
@infra_cg_regs = internal constant %struct.mtk_gate_regs { i32 72, i32 68, i32 64 }, align 4
@mtk_clk_gate_ops_setclr = external dso_local constant %struct.clk_ops, align 4
@.str.180 = private unnamed_addr constant [7 x i8] c"smi_ck\00", align 1
@.str.181 = private unnamed_addr constant [7 x i8] c"cm4_ck\00", align 1
@.str.182 = private unnamed_addr constant [16 x i8] c"audio_splin_bck\00", align 1
@.str.183 = private unnamed_addr constant [9 x i8] c"audio_ck\00", align 1
@.str.184 = private unnamed_addr constant [9 x i8] c"efuse_ck\00", align 1
@.str.185 = private unnamed_addr constant [12 x i8] c"l2c_sram_ck\00", align 1
@.str.186 = private unnamed_addr constant [7 x i8] c"m4u_ck\00", align 1
@.str.187 = private unnamed_addr constant [12 x i8] c"connsys_bus\00", align 1
@.str.188 = private unnamed_addr constant [8 x i8] c"trng_ck\00", align 1
@.str.189 = private unnamed_addr constant [12 x i8] c"rambufif_ck\00", align 1
@.str.190 = private unnamed_addr constant [8 x i8] c"cpum_ck\00", align 1
@.str.191 = private unnamed_addr constant [6 x i8] c"kp_ck\00", align 1
@.str.192 = private unnamed_addr constant [7 x i8] c"cec_ck\00", align 1
@.str.193 = private unnamed_addr constant [8 x i8] c"irrx_ck\00", align 1
@.str.194 = private unnamed_addr constant [11 x i8] c"pmicspi_ck\00", align 1
@.str.195 = private unnamed_addr constant [12 x i8] c"pmicwrap_ck\00", align 1
@.str.196 = private unnamed_addr constant [9 x i8] c"ddcci_ck\00", align 1
@peri_clks = internal constant [44 x %struct.mtk_gate] [%struct.mtk_gate { i32 32, ptr @.str.197, ptr @.str.107, ptr @peri0_cg_regs, i32 31, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 31, ptr @.str.198, ptr @.str.2, ptr @peri0_cg_regs, i32 30, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 30, ptr @.str.199, ptr @.str.116, ptr @peri0_cg_regs, i32 29, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 29, ptr @.str.200, ptr @.str.2, ptr @peri0_cg_regs, i32 28, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 28, ptr @.str.201, ptr @.str.2, ptr @peri0_cg_regs, i32 27, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 27, ptr @.str.202, ptr @.str.107, ptr @peri0_cg_regs, i32 26, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 26, ptr @.str.203, ptr @.str.107, ptr @peri0_cg_regs, i32 25, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 25, ptr @.str.204, ptr @.str.107, ptr @peri0_cg_regs, i32 24, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 24, ptr @.str.205, ptr @.str.107, ptr @peri0_cg_regs, i32 23, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 23, ptr @.str.206, ptr @.str.107, ptr @peri0_cg_regs, i32 22, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 22, ptr @.str.207, ptr @.str.107, ptr @peri0_cg_regs, i32 21, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 21, ptr @.str.208, ptr @.str.107, ptr @peri0_cg_regs, i32 20, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 20, ptr @.str.209, ptr @.str.107, ptr @peri0_cg_regs, i32 19, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 19, ptr @.str.210, ptr @.str.107, ptr @peri0_cg_regs, i32 18, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 18, ptr @.str.211, ptr @.str.132, ptr @peri0_cg_regs, i32 17, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 17, ptr @.str.212, ptr @.str.145, ptr @peri0_cg_regs, i32 16, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 16, ptr @.str.213, ptr @.str.120, ptr @peri0_cg_regs, i32 15, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 15, ptr @.str.214, ptr @.str.119, ptr @peri0_cg_regs, i32 14, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 14, ptr @.str.215, ptr @.str.118, ptr @peri0_cg_regs, i32 13, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 13, ptr @.str.216, ptr @.str.107, ptr @peri0_cg_regs, i32 12, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 12, ptr @.str.217, ptr @.str.117, ptr @peri0_cg_regs, i32 11, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 11, ptr @.str.218, ptr @.str.117, ptr @peri0_cg_regs, i32 10, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 10, ptr @.str.219, ptr @.str.107, ptr @peri0_cg_regs, i32 9, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 9, ptr @.str.220, ptr @.str.106, ptr @peri0_cg_regs, i32 8, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 8, ptr @.str.221, ptr @.str.106, ptr @peri0_cg_regs, i32 7, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 7, ptr @.str.222, ptr @.str.106, ptr @peri0_cg_regs, i32 6, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 6, ptr @.str.223, ptr @.str.106, ptr @peri0_cg_regs, i32 5, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 5, ptr @.str.224, ptr @.str.106, ptr @peri0_cg_regs, i32 4, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 4, ptr @.str.225, ptr @.str.106, ptr @peri0_cg_regs, i32 3, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 3, ptr @.str.226, ptr @.str.106, ptr @peri0_cg_regs, i32 2, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 2, ptr @.str.227, ptr @.str.107, ptr @peri0_cg_regs, i32 1, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 1, ptr @.str.228, ptr @.str.131, ptr @peri0_cg_regs, i32 0, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 44, ptr @.str.229, ptr @.str.142, ptr @peri1_cg_regs, i32 11, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 43, ptr @.str.230, ptr @.str.147, ptr @peri1_cg_regs, i32 10, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 42, ptr @.str.231, ptr @.str.148, ptr @peri1_cg_regs, i32 9, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 41, ptr @.str.232, ptr @.str.150, ptr @peri1_cg_regs, i32 8, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 40, ptr @.str.233, ptr @.str.116, ptr @peri1_cg_regs, i32 7, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 39, ptr @.str.234, ptr @.str.107, ptr @peri1_cg_regs, i32 6, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 38, ptr @.str.235, ptr @.str.131, ptr @peri1_cg_regs, i32 5, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 37, ptr @.str.236, ptr @.str.21, ptr @peri1_cg_regs, i32 4, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 36, ptr @.str.237, ptr @.str.21, ptr @peri1_cg_regs, i32 3, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 35, ptr @.str.238, ptr @.str.107, ptr @peri1_cg_regs, i32 2, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 34, ptr @.str.239, ptr @.str.107, ptr @peri1_cg_regs, i32 1, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 33, ptr @.str.240, ptr @.str.107, ptr @peri1_cg_regs, i32 0, ptr @mtk_clk_gate_ops_setclr, i32 0 }], align 4
@peri_muxs = internal constant [4 x %struct.mtk_composite] [%struct.mtk_composite { i32 45, ptr @.str.241, ptr @uart_ck_sel_parents, ptr null, i32 4, i32 1036, i32 0, i32 0, i8 0, i8 1, i8 -1, i8 -1, i8 0, i8 0, i8 2 }, %struct.mtk_composite { i32 46, ptr @.str.242, ptr @uart_ck_sel_parents, ptr null, i32 4, i32 1036, i32 0, i32 0, i8 1, i8 1, i8 -1, i8 -1, i8 0, i8 0, i8 2 }, %struct.mtk_composite { i32 47, ptr @.str.243, ptr @uart_ck_sel_parents, ptr null, i32 4, i32 1036, i32 0, i32 0, i8 2, i8 1, i8 -1, i8 -1, i8 0, i8 0, i8 2 }, %struct.mtk_composite { i32 48, ptr @.str.244, ptr @uart_ck_sel_parents, ptr null, i32 4, i32 1036, i32 0, i32 0, i8 3, i8 1, i8 -1, i8 -1, i8 0, i8 0, i8 2 }], align 4
@.str.197 = private unnamed_addr constant [12 x i8] c"usb0_mcu_ck\00", align 1
@peri0_cg_regs = internal constant %struct.mtk_gate_regs { i32 24, i32 16, i32 8 }, align 4
@.str.198 = private unnamed_addr constant [7 x i8] c"eth_ck\00", align 1
@.str.199 = private unnamed_addr constant [8 x i8] c"spi0_ck\00", align 1
@.str.200 = private unnamed_addr constant [10 x i8] c"auxadc_ck\00", align 1
@.str.201 = private unnamed_addr constant [8 x i8] c"i2c3_ck\00", align 1
@.str.202 = private unnamed_addr constant [8 x i8] c"i2c2_ck\00", align 1
@.str.203 = private unnamed_addr constant [8 x i8] c"i2c1_ck\00", align 1
@.str.204 = private unnamed_addr constant [8 x i8] c"i2c0_ck\00", align 1
@.str.205 = private unnamed_addr constant [9 x i8] c"bitif_ck\00", align 1
@.str.206 = private unnamed_addr constant [9 x i8] c"uart3_ck\00", align 1
@.str.207 = private unnamed_addr constant [9 x i8] c"uart2_ck\00", align 1
@.str.208 = private unnamed_addr constant [9 x i8] c"uart1_ck\00", align 1
@.str.209 = private unnamed_addr constant [9 x i8] c"uart0_ck\00", align 1
@.str.210 = private unnamed_addr constant [7 x i8] c"nli_ck\00", align 1
@.str.211 = private unnamed_addr constant [12 x i8] c"msdc50_3_ck\00", align 1
@.str.212 = private unnamed_addr constant [12 x i8] c"msdc30_3_ck\00", align 1
@.str.213 = private unnamed_addr constant [12 x i8] c"msdc30_2_ck\00", align 1
@.str.214 = private unnamed_addr constant [12 x i8] c"msdc30_1_ck\00", align 1
@.str.215 = private unnamed_addr constant [12 x i8] c"msdc30_0_ck\00", align 1
@.str.216 = private unnamed_addr constant [10 x i8] c"ap_dma_ck\00", align 1
@.str.217 = private unnamed_addr constant [8 x i8] c"usb1_ck\00", align 1
@.str.218 = private unnamed_addr constant [8 x i8] c"usb0_ck\00", align 1
@.str.219 = private unnamed_addr constant [7 x i8] c"pwm_ck\00", align 1
@.str.220 = private unnamed_addr constant [8 x i8] c"pwm7_ck\00", align 1
@.str.221 = private unnamed_addr constant [8 x i8] c"pwm6_ck\00", align 1
@.str.222 = private unnamed_addr constant [8 x i8] c"pwm5_ck\00", align 1
@.str.223 = private unnamed_addr constant [8 x i8] c"pwm4_ck\00", align 1
@.str.224 = private unnamed_addr constant [8 x i8] c"pwm3_ck\00", align 1
@.str.225 = private unnamed_addr constant [8 x i8] c"pwm2_ck\00", align 1
@.str.226 = private unnamed_addr constant [8 x i8] c"pwm1_ck\00", align 1
@.str.227 = private unnamed_addr constant [9 x i8] c"therm_ck\00", align 1
@.str.228 = private unnamed_addr constant [7 x i8] c"nfi_ck\00", align 1
@.str.229 = private unnamed_addr constant [7 x i8] c"fci_ck\00", align 1
@peri1_cg_regs = internal constant %struct.mtk_gate_regs { i32 28, i32 20, i32 12 }, align 4
@.str.230 = private unnamed_addr constant [8 x i8] c"spi2_ck\00", align 1
@.str.231 = private unnamed_addr constant [8 x i8] c"spi1_ck\00", align 1
@.str.232 = private unnamed_addr constant [14 x i8] c"host89_dvd_ck\00", align 1
@.str.233 = private unnamed_addr constant [14 x i8] c"host89_spi_ck\00", align 1
@.str.234 = private unnamed_addr constant [14 x i8] c"host89_int_ck\00", align 1
@.str.235 = private unnamed_addr constant [9 x i8] c"flash_ck\00", align 1
@.str.236 = private unnamed_addr constant [11 x i8] c"nfi_pad_ck\00", align 1
@.str.237 = private unnamed_addr constant [11 x i8] c"nfi_ecc_ck\00", align 1
@.str.238 = private unnamed_addr constant [8 x i8] c"gcpu_ck\00", align 1
@.str.239 = private unnamed_addr constant [10 x i8] c"usbslv_ck\00", align 1
@.str.240 = private unnamed_addr constant [12 x i8] c"usb1_mcu_ck\00", align 1
@.str.241 = private unnamed_addr constant [13 x i8] c"uart0_ck_sel\00", align 1
@uart_ck_sel_parents = internal constant [2 x ptr] [ptr @.str.2, ptr @.str.115], align 4
@.str.242 = private unnamed_addr constant [13 x i8] c"uart1_ck_sel\00", align 1
@.str.243 = private unnamed_addr constant [13 x i8] c"uart2_ck_sel\00", align 1
@.str.244 = private unnamed_addr constant [13 x i8] c"uart3_ck_sel\00", align 1
@apmixed_plls = internal constant [13 x %struct.mtk_pll_data] [%struct.mtk_pll_data { i32 1, ptr @.str.4, i32 512, i32 524, i32 -2147483647, i32 516, i32 0, i32 0, i8 0, i32 24, i32 2, ptr null, i32 134217728, i32 0, i32 2000000000, i32 21, i32 0, i32 516, i32 0, i32 0, ptr null, ptr null, i32 0, i8 0 }, %struct.mtk_pll_data { i32 2, ptr @.str.5, i32 528, i32 540, i32 -268435455, i32 528, i32 0, i32 0, i8 0, i32 4, i32 1, ptr null, i32 134217728, i32 0, i32 2000000000, i32 21, i32 0, i32 532, i32 0, i32 0, ptr null, ptr null, i32 0, i8 0 }, %struct.mtk_pll_data { i32 3, ptr @.str.39, i32 544, i32 556, i32 -218103807, i32 544, i32 0, i32 0, i8 0, i32 4, i32 1, ptr null, i32 134217728, i32 0, i32 2000000000, i32 7, i32 0, i32 548, i32 14, i32 0, ptr null, ptr null, i32 0, i8 0 }, %struct.mtk_pll_data { i32 4, ptr @.str.6, i32 560, i32 572, i32 1, i32 560, i32 0, i32 0, i8 0, i32 4, i32 0, ptr null, i32 134217728, i32 0, i32 2000000000, i32 21, i32 0, i32 564, i32 0, i32 0, ptr null, ptr null, i32 0, i8 0 }, %struct.mtk_pll_data { i32 5, ptr @.str.61, i32 576, i32 588, i32 1, i32 576, i32 0, i32 0, i8 0, i32 4, i32 0, ptr null, i32 134217728, i32 0, i32 2000000000, i32 21, i32 0, i32 580, i32 0, i32 0, ptr null, ptr null, i32 0, i8 0 }, %struct.mtk_pll_data { i32 6, ptr @.str.71, i32 592, i32 604, i32 1, i32 592, i32 0, i32 0, i8 0, i32 4, i32 0, ptr null, i32 134217728, i32 0, i32 2000000000, i32 21, i32 0, i32 596, i32 0, i32 0, ptr null, ptr null, i32 0, i8 0 }, %struct.mtk_pll_data { i32 7, ptr @.str.94, i32 624, i32 636, i32 1, i32 624, i32 0, i32 0, i8 0, i32 4, i32 0, ptr null, i32 134217728, i32 0, i32 2000000000, i32 31, i32 0, i32 628, i32 0, i32 0, ptr null, ptr null, i32 0, i8 0 }, %struct.mtk_pll_data { i32 8, ptr @.str.245, i32 640, i32 652, i32 1, i32 640, i32 0, i32 0, i8 0, i32 4, i32 0, ptr null, i32 134217728, i32 0, i32 2000000000, i32 31, i32 0, i32 644, i32 0, i32 0, ptr null, ptr null, i32 0, i8 0 }, %struct.mtk_pll_data { i32 9, ptr @.str.101, i32 656, i32 668, i32 1, i32 656, i32 0, i32 0, i8 0, i32 4, i32 0, ptr null, i32 134217728, i32 0, i32 2000000000, i32 31, i32 0, i32 660, i32 0, i32 0, ptr null, ptr null, i32 0, i8 0 }, %struct.mtk_pll_data { i32 10, ptr @.str.75, i32 672, i32 684, i32 1, i32 672, i32 0, i32 0, i8 0, i32 4, i32 0, ptr null, i32 134217728, i32 0, i32 2000000000, i32 31, i32 0, i32 676, i32 0, i32 0, ptr null, ptr null, i32 0, i8 0 }, %struct.mtk_pll_data { i32 11, ptr @.str.98, i32 688, i32 700, i32 1, i32 688, i32 0, i32 0, i8 0, i32 4, i32 0, ptr null, i32 134217728, i32 0, i32 2000000000, i32 31, i32 0, i32 692, i32 0, i32 0, ptr null, ptr null, i32 0, i8 0 }, %struct.mtk_pll_data { i32 12, ptr @.str.96, i32 704, i32 716, i32 1, i32 704, i32 0, i32 0, i8 0, i32 4, i32 0, ptr null, i32 134217728, i32 0, i32 2000000000, i32 31, i32 0, i32 708, i32 0, i32 0, ptr null, ptr null, i32 0, i8 0 }, %struct.mtk_pll_data { i32 13, ptr @.str.77, i32 720, i32 732, i32 1, i32 720, i32 0, i32 0, i8 0, i32 4, i32 0, ptr null, i32 134217728, i32 0, i32 2000000000, i32 21, i32 0, i32 724, i32 0, i32 0, ptr null, ptr null, i32 0, i8 0 }], align 4
@apmixed_fixed_divs = internal constant [1 x %struct.mtk_fixed_factor] [%struct.mtk_fixed_factor { i32 14, ptr @.str.246, ptr @.str.71, i32 1, i32 1 }], align 4
@.str.245 = private unnamed_addr constant [7 x i8] c"trgpll\00", align 1
@.str.246 = private unnamed_addr constant [9 x i8] c"hdmi_ref\00", align 1
@llvm.compiler.used = appending global [2 x ptr] [ptr @__initcall__kmod_clk_mt2701__162_1035_clk_mt2701_init3, ptr @__of_table_mtk_infra], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @mtk_infra_of_clk_init_driver(ptr noundef %0) #0 section ".init.text" {
  %2 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 10
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %2) #4
  tail call fastcc void @mtk_infrasys_init_early(ptr noundef %0) #5
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @clk_mt2701_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @clk_mt2701_drv, ptr noundef null) #4
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @mtk_infrasys_init_early(ptr noundef %0) unnamed_addr #0 section ".init.text" {
  %2 = load ptr, ptr @infra_clk_data, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %12

4:                                                ; preds = %1
  %5 = tail call ptr @mtk_alloc_clk_data(i32 noundef 21) #4
  store ptr %5, ptr @infra_clk_data, align 4
  br label %6

6:                                                ; preds = %6, %4
  %7 = phi i32 [ 0, %4 ], [ %10, %6 ]
  %8 = load ptr, ptr %5, align 4
  %9 = getelementptr ptr, ptr %8, i32 %7
  store ptr inttoptr (i32 -517 to ptr), ptr %9, align 4
  %10 = add nuw nsw i32 %7, 1
  %11 = icmp eq i32 %10, 21
  br i1 %11, label %12, label %6

12:                                               ; preds = %6, %1
  %13 = phi ptr [ %2, %1 ], [ %5, %6 ]
  tail call void @mtk_clk_register_factors(ptr noundef nonnull @infra_fixed_divs, i32 noundef 1, ptr noundef %13) #4
  %14 = load ptr, ptr @infra_clk_data, align 4
  %15 = tail call i32 @mtk_clk_register_cpumuxes(ptr noundef %0, ptr noundef nonnull @cpu_muxes, i32 noundef 1, ptr noundef %14) #4
  %16 = load ptr, ptr @infra_clk_data, align 4
  %17 = tail call i32 @of_clk_add_provider(ptr noundef %0, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef %16) #4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %12
  %20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.mtk_infrasys_init_early, i32 noundef %17) #6
  br label %21

21:                                               ; preds = %19, %12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mtk_alloc_clk_data(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_clk_register_factors(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_clk_register_cpumuxes(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_onecell_get(ptr noundef, ptr noundef) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_mt2701_probe(ptr noundef %0) #3 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call ptr @of_device_get_match_data(ptr noundef %2) #4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = tail call i32 %3(ptr noundef %0) #4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %5
  %9 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.8, ptr noundef %9, i32 noundef %6) #6
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
define internal i32 @mtk_topckgen_init(ptr noundef %0) #3 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %4 = load ptr, ptr %3, align 8
  %5 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #4
  %6 = tail call ptr @devm_ioremap_resource(ptr noundef %2, ptr noundef %5) #4
  %7 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = ptrtoint ptr %6 to i32
  br label %14

10:                                               ; preds = %1
  %11 = tail call ptr @mtk_alloc_clk_data(i32 noundef 159) #4
  tail call void @mtk_clk_register_fixed_clks(ptr noundef nonnull @top_fixed_clks, i32 noundef 13, ptr noundef %11) #4
  tail call void @mtk_clk_register_factors(ptr noundef nonnull @top_fixed_divs, i32 noundef 73, ptr noundef %11) #4
  tail call void @mtk_clk_register_composites(ptr noundef nonnull @top_muxes, i32 noundef 54, ptr noundef %6, ptr noundef nonnull @mt2701_clk_lock, ptr noundef %11) #4
  tail call void @mtk_clk_register_dividers(ptr noundef nonnull @top_adj_divs, i32 noundef 10, ptr noundef %6, ptr noundef nonnull @mt2701_clk_lock, ptr noundef %11) #4
  %12 = tail call i32 @mtk_clk_register_gates(ptr noundef %4, ptr noundef nonnull @top_clks, i32 noundef 8, ptr noundef %11) #4
  %13 = tail call i32 @of_clk_add_provider(ptr noundef %4, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef %11) #4
  br label %14

14:                                               ; preds = %10, %8
  %15 = phi i32 [ %9, %8 ], [ %13, %10 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mtk_infrasys_init(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr @infra_clk_data, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr %4, align 4
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, inttoptr (i32 -517 to ptr)
  br i1 %9, label %12, label %14

10:                                               ; preds = %1
  %11 = tail call ptr @mtk_alloc_clk_data(i32 noundef 21) #4
  store ptr %11, ptr @infra_clk_data, align 4
  br label %155

12:                                               ; preds = %6
  store ptr inttoptr (i32 -2 to ptr), ptr %7, align 4
  %13 = load ptr, ptr %4, align 4
  br label %14

14:                                               ; preds = %12, %6
  %15 = phi ptr [ %7, %6 ], [ %13, %12 ]
  %16 = getelementptr ptr, ptr %15, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, inttoptr (i32 -517 to ptr)
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  store ptr inttoptr (i32 -2 to ptr), ptr %16, align 4
  %20 = load ptr, ptr %4, align 4
  br label %21

21:                                               ; preds = %19, %14
  %22 = phi ptr [ %20, %19 ], [ %15, %14 ]
  %23 = getelementptr ptr, ptr %22, i32 2
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, inttoptr (i32 -517 to ptr)
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  store ptr inttoptr (i32 -2 to ptr), ptr %23, align 4
  %27 = load ptr, ptr %4, align 4
  br label %28

28:                                               ; preds = %26, %21
  %29 = phi ptr [ %27, %26 ], [ %22, %21 ]
  %30 = getelementptr ptr, ptr %29, i32 3
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, inttoptr (i32 -517 to ptr)
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  store ptr inttoptr (i32 -2 to ptr), ptr %30, align 4
  %34 = load ptr, ptr %4, align 4
  br label %35

35:                                               ; preds = %33, %28
  %36 = phi ptr [ %34, %33 ], [ %29, %28 ]
  %37 = getelementptr ptr, ptr %36, i32 4
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, inttoptr (i32 -517 to ptr)
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  store ptr inttoptr (i32 -2 to ptr), ptr %37, align 4
  %41 = load ptr, ptr %4, align 4
  br label %42

42:                                               ; preds = %40, %35
  %43 = phi ptr [ %41, %40 ], [ %36, %35 ]
  %44 = getelementptr ptr, ptr %43, i32 5
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, inttoptr (i32 -517 to ptr)
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  store ptr inttoptr (i32 -2 to ptr), ptr %44, align 4
  %48 = load ptr, ptr %4, align 4
  br label %49

49:                                               ; preds = %47, %42
  %50 = phi ptr [ %48, %47 ], [ %43, %42 ]
  %51 = getelementptr ptr, ptr %50, i32 6
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, inttoptr (i32 -517 to ptr)
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  store ptr inttoptr (i32 -2 to ptr), ptr %51, align 4
  %55 = load ptr, ptr %4, align 4
  br label %56

56:                                               ; preds = %54, %49
  %57 = phi ptr [ %55, %54 ], [ %50, %49 ]
  %58 = getelementptr ptr, ptr %57, i32 7
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, inttoptr (i32 -517 to ptr)
  br i1 %60, label %61, label %63

61:                                               ; preds = %56
  store ptr inttoptr (i32 -2 to ptr), ptr %58, align 4
  %62 = load ptr, ptr %4, align 4
  br label %63

63:                                               ; preds = %61, %56
  %64 = phi ptr [ %62, %61 ], [ %57, %56 ]
  %65 = getelementptr ptr, ptr %64, i32 8
  %66 = load ptr, ptr %65, align 4
  %67 = icmp eq ptr %66, inttoptr (i32 -517 to ptr)
  br i1 %67, label %68, label %70

68:                                               ; preds = %63
  store ptr inttoptr (i32 -2 to ptr), ptr %65, align 4
  %69 = load ptr, ptr %4, align 4
  br label %70

70:                                               ; preds = %68, %63
  %71 = phi ptr [ %69, %68 ], [ %64, %63 ]
  %72 = getelementptr ptr, ptr %71, i32 9
  %73 = load ptr, ptr %72, align 4
  %74 = icmp eq ptr %73, inttoptr (i32 -517 to ptr)
  br i1 %74, label %75, label %77

75:                                               ; preds = %70
  store ptr inttoptr (i32 -2 to ptr), ptr %72, align 4
  %76 = load ptr, ptr %4, align 4
  br label %77

77:                                               ; preds = %75, %70
  %78 = phi ptr [ %76, %75 ], [ %71, %70 ]
  %79 = getelementptr ptr, ptr %78, i32 10
  %80 = load ptr, ptr %79, align 4
  %81 = icmp eq ptr %80, inttoptr (i32 -517 to ptr)
  br i1 %81, label %82, label %84

82:                                               ; preds = %77
  store ptr inttoptr (i32 -2 to ptr), ptr %79, align 4
  %83 = load ptr, ptr %4, align 4
  br label %84

84:                                               ; preds = %82, %77
  %85 = phi ptr [ %83, %82 ], [ %78, %77 ]
  %86 = getelementptr ptr, ptr %85, i32 11
  %87 = load ptr, ptr %86, align 4
  %88 = icmp eq ptr %87, inttoptr (i32 -517 to ptr)
  br i1 %88, label %89, label %91

89:                                               ; preds = %84
  store ptr inttoptr (i32 -2 to ptr), ptr %86, align 4
  %90 = load ptr, ptr %4, align 4
  br label %91

91:                                               ; preds = %89, %84
  %92 = phi ptr [ %90, %89 ], [ %85, %84 ]
  %93 = getelementptr ptr, ptr %92, i32 12
  %94 = load ptr, ptr %93, align 4
  %95 = icmp eq ptr %94, inttoptr (i32 -517 to ptr)
  br i1 %95, label %96, label %98

96:                                               ; preds = %91
  store ptr inttoptr (i32 -2 to ptr), ptr %93, align 4
  %97 = load ptr, ptr %4, align 4
  br label %98

98:                                               ; preds = %96, %91
  %99 = phi ptr [ %97, %96 ], [ %92, %91 ]
  %100 = getelementptr ptr, ptr %99, i32 13
  %101 = load ptr, ptr %100, align 4
  %102 = icmp eq ptr %101, inttoptr (i32 -517 to ptr)
  br i1 %102, label %103, label %105

103:                                              ; preds = %98
  store ptr inttoptr (i32 -2 to ptr), ptr %100, align 4
  %104 = load ptr, ptr %4, align 4
  br label %105

105:                                              ; preds = %103, %98
  %106 = phi ptr [ %104, %103 ], [ %99, %98 ]
  %107 = getelementptr ptr, ptr %106, i32 14
  %108 = load ptr, ptr %107, align 4
  %109 = icmp eq ptr %108, inttoptr (i32 -517 to ptr)
  br i1 %109, label %110, label %112

110:                                              ; preds = %105
  store ptr inttoptr (i32 -2 to ptr), ptr %107, align 4
  %111 = load ptr, ptr %4, align 4
  br label %112

112:                                              ; preds = %110, %105
  %113 = phi ptr [ %111, %110 ], [ %106, %105 ]
  %114 = getelementptr ptr, ptr %113, i32 15
  %115 = load ptr, ptr %114, align 4
  %116 = icmp eq ptr %115, inttoptr (i32 -517 to ptr)
  br i1 %116, label %117, label %119

117:                                              ; preds = %112
  store ptr inttoptr (i32 -2 to ptr), ptr %114, align 4
  %118 = load ptr, ptr %4, align 4
  br label %119

119:                                              ; preds = %117, %112
  %120 = phi ptr [ %118, %117 ], [ %113, %112 ]
  %121 = getelementptr ptr, ptr %120, i32 16
  %122 = load ptr, ptr %121, align 4
  %123 = icmp eq ptr %122, inttoptr (i32 -517 to ptr)
  br i1 %123, label %124, label %126

124:                                              ; preds = %119
  store ptr inttoptr (i32 -2 to ptr), ptr %121, align 4
  %125 = load ptr, ptr %4, align 4
  br label %126

126:                                              ; preds = %124, %119
  %127 = phi ptr [ %125, %124 ], [ %120, %119 ]
  %128 = getelementptr ptr, ptr %127, i32 17
  %129 = load ptr, ptr %128, align 4
  %130 = icmp eq ptr %129, inttoptr (i32 -517 to ptr)
  br i1 %130, label %131, label %133

131:                                              ; preds = %126
  store ptr inttoptr (i32 -2 to ptr), ptr %128, align 4
  %132 = load ptr, ptr %4, align 4
  br label %133

133:                                              ; preds = %131, %126
  %134 = phi ptr [ %132, %131 ], [ %127, %126 ]
  %135 = getelementptr ptr, ptr %134, i32 18
  %136 = load ptr, ptr %135, align 4
  %137 = icmp eq ptr %136, inttoptr (i32 -517 to ptr)
  br i1 %137, label %138, label %140

138:                                              ; preds = %133
  store ptr inttoptr (i32 -2 to ptr), ptr %135, align 4
  %139 = load ptr, ptr %4, align 4
  br label %140

140:                                              ; preds = %138, %133
  %141 = phi ptr [ %139, %138 ], [ %134, %133 ]
  %142 = getelementptr ptr, ptr %141, i32 19
  %143 = load ptr, ptr %142, align 4
  %144 = icmp eq ptr %143, inttoptr (i32 -517 to ptr)
  br i1 %144, label %145, label %147

145:                                              ; preds = %140
  store ptr inttoptr (i32 -2 to ptr), ptr %142, align 4
  %146 = load ptr, ptr %4, align 4
  br label %147

147:                                              ; preds = %145, %140
  %148 = phi ptr [ %146, %145 ], [ %141, %140 ]
  %149 = getelementptr ptr, ptr %148, i32 20
  %150 = load ptr, ptr %149, align 4
  %151 = icmp eq ptr %150, inttoptr (i32 -517 to ptr)
  br i1 %151, label %152, label %153

152:                                              ; preds = %147
  store ptr inttoptr (i32 -2 to ptr), ptr %149, align 4
  br label %153

153:                                              ; preds = %152, %147
  %154 = load ptr, ptr @infra_clk_data, align 4
  br label %155

155:                                              ; preds = %153, %10
  %156 = phi ptr [ %154, %153 ], [ %11, %10 ]
  %157 = tail call i32 @mtk_clk_register_gates(ptr noundef %3, ptr noundef nonnull @infra_clks, i32 noundef 18, ptr noundef %156) #4
  %158 = load ptr, ptr @infra_clk_data, align 4
  tail call void @mtk_clk_register_factors(ptr noundef nonnull @infra_fixed_divs, i32 noundef 1, ptr noundef %158) #4
  %159 = load ptr, ptr @infra_clk_data, align 4
  %160 = tail call i32 @of_clk_add_provider(ptr noundef %3, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef %159) #4
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %155
  tail call void @mtk_register_reset_controller(ptr noundef %3, i32 noundef 2, i32 noundef 48) #4
  br label %163

163:                                              ; preds = %162, %155
  ret i32 %160
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mtk_pericfg_init(ptr noundef %0) #3 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %4 = load ptr, ptr %3, align 8
  %5 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #4
  %6 = tail call ptr @devm_ioremap_resource(ptr noundef %2, ptr noundef %5) #4
  %7 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = ptrtoint ptr %6 to i32
  br label %16

10:                                               ; preds = %1
  %11 = tail call ptr @mtk_alloc_clk_data(i32 noundef 49) #4
  %12 = tail call i32 @mtk_clk_register_gates(ptr noundef %4, ptr noundef nonnull @peri_clks, i32 noundef 44, ptr noundef %11) #4
  tail call void @mtk_clk_register_composites(ptr noundef nonnull @peri_muxs, i32 noundef 4, ptr noundef %6, ptr noundef nonnull @mt2701_clk_lock, ptr noundef %11) #4
  %13 = tail call i32 @of_clk_add_provider(ptr noundef %4, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef %11) #4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  tail call void @mtk_register_reset_controller(ptr noundef %4, i32 noundef 2, i32 noundef 0) #4
  br label %16

16:                                               ; preds = %15, %10, %8
  %17 = phi i32 [ %9, %8 ], [ 0, %15 ], [ %13, %10 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mtk_apmixedsys_init(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %3 = load ptr, ptr %2, align 8
  %4 = tail call ptr @mtk_alloc_clk_data(i32 noundef 15) #4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  tail call void @mtk_clk_register_plls(ptr noundef %3, ptr noundef nonnull @apmixed_plls, i32 noundef 13, ptr noundef nonnull %4) #4
  tail call void @mtk_clk_register_factors(ptr noundef nonnull @apmixed_fixed_divs, i32 noundef 1, ptr noundef nonnull %4) #4
  %7 = tail call i32 @of_clk_add_provider(ptr noundef %3, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef nonnull %4) #4
  br label %8

8:                                                ; preds = %6, %1
  %9 = phi i32 [ %7, %6 ], [ -12, %1 ]
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_clk_register_fixed_clks(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_clk_register_composites(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_clk_register_dividers(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_clk_register_gates(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_register_reset_controller(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_clk_register_plls(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { cold }
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
