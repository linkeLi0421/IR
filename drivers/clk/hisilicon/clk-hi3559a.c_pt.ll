; ModuleID = '/llk/IR/drivers/clk/hisilicon/clk-hi3559a.c_pt.bc'
source_filename = "../drivers/clk/hisilicon/clk-hi3559a.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.hisi_crg_funcs = type { ptr, ptr }
%struct.hisi_fixed_rate_clock = type { i32, ptr, ptr, i32, i32 }
%struct.hi3559av100_pll_clock = type { i32, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8 }
%struct.hisi_mux_clock = type { i32, ptr, ptr, i8, i32, i32, i8, i8, i8, ptr, ptr }
%struct.hisi_gate_clock = type { i32, ptr, ptr, i32, i32, i8, i8, ptr }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hisi_divider_clock = type { i32, ptr, ptr, i32, i32, i8, i8, i8, ptr, ptr }
%struct.clk_div_table = type { i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
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
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.hisi_crg_dev = type { ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.hisi_clock_data = type { %struct.clk_onecell_data, ptr }
%struct.clk_onecell_data = type { ptr, i32 }
%struct.hi3559av100_clk_pll = type { %struct.clk_hw, i32, ptr, i8, i8, i8, i8, i8, i8, ptr, i8, i8, i8, i8 }
%struct.clk_hw = type { ptr, ptr, ptr }

@__initcall__kmod_clk_hi3559a__166_835_hi3559av100_crg_init1 = internal global ptr @hi3559av100_crg_init, section ".initcall1.init", align 4
@hi3559av100_crg_driver = internal global %struct.platform_driver { ptr @hi3559av100_crg_probe, ptr @hi3559av100_crg_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @hi3559av100_crg_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_hi3559av100_crg_exit = internal global ptr @hi3559av100_crg_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file167 = internal constant [51 x i8] c"clk_hi3559a.file=drivers/clk/hisilicon/clk-hi3559a\00", section ".modinfo", align 1
@__UNIQUE_ID_license168 = internal constant [27 x i8] c"clk_hi3559a.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description169 = internal constant [57 x i8] c"clk_hi3559a.description=HiSilicon Hi3559AV100 CRG Driver\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [18 x i8] c"hi3559av100-clock\00", align 1
@hi3559av100_crg_match_table = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"hisilicon,hi3559av100-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @hi3559av100_crg_funcs }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"hisilicon,hi3559av100-shub-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @hi3559av100_shub_crg_funcs }, %struct.of_device_id zeroinitializer], align 4
@hi3559av100_crg_funcs = internal constant %struct.hisi_crg_funcs { ptr @hi3559av100_clk_register, ptr @hi3559av100_clk_unregister }, align 4
@hi3559av100_shub_crg_funcs = internal constant %struct.hisi_crg_funcs { ptr @hi3559av100_shub_clk_register, ptr @hi3559av100_shub_clk_unregister }, align 4
@hi3559av100_fixed_rate_clks_crg = internal constant [45 x %struct.hisi_fixed_rate_clock] [%struct.hisi_fixed_rate_clock { i32 1, ptr @.str.1, ptr null, i32 0, i32 1188000000 }, %struct.hisi_fixed_rate_clock { i32 2, ptr @.str.2, ptr null, i32 0, i32 1000000000 }, %struct.hisi_fixed_rate_clock { i32 3, ptr @.str.3, ptr null, i32 0, i32 842000000 }, %struct.hisi_fixed_rate_clock { i32 4, ptr @.str.4, ptr null, i32 0, i32 792000000 }, %struct.hisi_fixed_rate_clock { i32 5, ptr @.str.5, ptr null, i32 0, i32 750000000 }, %struct.hisi_fixed_rate_clock { i32 6, ptr @.str.6, ptr null, i32 0, i32 710000000 }, %struct.hisi_fixed_rate_clock { i32 7, ptr @.str.7, ptr null, i32 0, i32 680000000 }, %struct.hisi_fixed_rate_clock { i32 8, ptr @.str.8, ptr null, i32 0, i32 667000000 }, %struct.hisi_fixed_rate_clock { i32 9, ptr @.str.9, ptr null, i32 0, i32 631000000 }, %struct.hisi_fixed_rate_clock { i32 10, ptr @.str.10, ptr null, i32 0, i32 600000000 }, %struct.hisi_fixed_rate_clock { i32 11, ptr @.str.11, ptr null, i32 0, i32 568000000 }, %struct.hisi_fixed_rate_clock { i32 12, ptr @.str.12, ptr null, i32 0, i32 500000000 }, %struct.hisi_fixed_rate_clock { i32 13, ptr @.str.13, ptr null, i32 0, i32 475000000 }, %struct.hisi_fixed_rate_clock { i32 14, ptr @.str.14, ptr null, i32 0, i32 428000000 }, %struct.hisi_fixed_rate_clock { i32 15, ptr @.str.15, ptr null, i32 0, i32 400000000 }, %struct.hisi_fixed_rate_clock { i32 16, ptr @.str.16, ptr null, i32 0, i32 396000000 }, %struct.hisi_fixed_rate_clock { i32 17, ptr @.str.17, ptr null, i32 0, i32 300000000 }, %struct.hisi_fixed_rate_clock { i32 18, ptr @.str.18, ptr null, i32 0, i32 250000000 }, %struct.hisi_fixed_rate_clock { i32 44, ptr @.str.19, ptr null, i32 0, i32 200000000 }, %struct.hisi_fixed_rate_clock { i32 19, ptr @.str.20, ptr null, i32 0, i32 198000000 }, %struct.hisi_fixed_rate_clock { i32 20, ptr @.str.21, ptr null, i32 0, i32 187500000 }, %struct.hisi_fixed_rate_clock { i32 21, ptr @.str.22, ptr null, i32 0, i32 150000000 }, %struct.hisi_fixed_rate_clock { i32 22, ptr @.str.23, ptr null, i32 0, i32 1485000000 }, %struct.hisi_fixed_rate_clock { i32 23, ptr @.str.24, ptr null, i32 0, i32 125000000 }, %struct.hisi_fixed_rate_clock { i32 24, ptr @.str.25, ptr null, i32 0, i32 107000000 }, %struct.hisi_fixed_rate_clock { i32 25, ptr @.str.26, ptr null, i32 0, i32 100000000 }, %struct.hisi_fixed_rate_clock { i32 26, ptr @.str.27, ptr null, i32 0, i32 99000000 }, %struct.hisi_fixed_rate_clock { i32 75, ptr @.str.28, ptr null, i32 0, i32 75000000 }, %struct.hisi_fixed_rate_clock { i32 27, ptr @.str.29, ptr null, i32 0, i32 74250000 }, %struct.hisi_fixed_rate_clock { i32 28, ptr @.str.30, ptr null, i32 0, i32 72000000 }, %struct.hisi_fixed_rate_clock { i32 29, ptr @.str.31, ptr null, i32 0, i32 60000000 }, %struct.hisi_fixed_rate_clock { i32 30, ptr @.str.32, ptr null, i32 0, i32 54000000 }, %struct.hisi_fixed_rate_clock { i32 31, ptr @.str.33, ptr null, i32 0, i32 50000000 }, %struct.hisi_fixed_rate_clock { i32 32, ptr @.str.34, ptr null, i32 0, i32 49500000 }, %struct.hisi_fixed_rate_clock { i32 33, ptr @.str.35, ptr null, i32 0, i32 37125000 }, %struct.hisi_fixed_rate_clock { i32 34, ptr @.str.36, ptr null, i32 0, i32 36000000 }, %struct.hisi_fixed_rate_clock { i32 35, ptr @.str.37, ptr null, i32 0, i32 32400000 }, %struct.hisi_fixed_rate_clock { i32 36, ptr @.str.38, ptr null, i32 0, i32 27000000 }, %struct.hisi_fixed_rate_clock { i32 37, ptr @.str.39, ptr null, i32 0, i32 25000000 }, %struct.hisi_fixed_rate_clock { i32 38, ptr @.str.40, ptr null, i32 0, i32 24000000 }, %struct.hisi_fixed_rate_clock { i32 39, ptr @.str.41, ptr null, i32 0, i32 12000000 }, %struct.hisi_fixed_rate_clock { i32 40, ptr @.str.42, ptr null, i32 0, i32 3000000 }, %struct.hisi_fixed_rate_clock { i32 41, ptr @.str.43, ptr null, i32 0, i32 1600000 }, %struct.hisi_fixed_rate_clock { i32 42, ptr @.str.44, ptr null, i32 0, i32 400000 }, %struct.hisi_fixed_rate_clock { i32 43, ptr @.str.45, ptr null, i32 0, i32 100000 }], align 4
@hi3559av100_pll_clks = internal global [2 x %struct.hi3559av100_pll_clock] [%struct.hi3559av100_pll_clock { i32 250, ptr @.str.47, ptr null, i32 0, i8 0, i8 24, i8 24, i8 3, i8 28, i8 3, i32 4, i8 0, i8 12, i8 12, i8 6 }, %struct.hi3559av100_pll_clock { i32 251, ptr @.str.48, ptr null, i32 32, i8 0, i8 24, i8 24, i8 3, i8 28, i8 3, i32 36, i8 0, i8 12, i8 12, i8 6 }], align 4
@hi3559av100_mux_clks_crg = internal global [9 x %struct.hisi_mux_clock] [%struct.hisi_mux_clock { i32 80, ptr @.str.49, ptr @fmc_mux_p, i8 8, i32 4, i32 368, i8 2, i8 3, i8 0, ptr @fmc_mux_table, ptr null }, %struct.hisi_mux_clock { i32 85, ptr @.str.50, ptr @mmc_mux_p, i8 8, i32 4, i32 424, i8 24, i8 3, i8 0, ptr @mmc_mux_table, ptr null }, %struct.hisi_mux_clock { i32 86, ptr @.str.51, ptr @mmc_mux_p, i8 8, i32 4, i32 492, i8 24, i8 3, i8 0, ptr @mmc_mux_table, ptr null }, %struct.hisi_mux_clock { i32 87, ptr @.str.52, ptr @mmc_mux_p, i8 8, i32 4, i32 532, i8 24, i8 3, i8 0, ptr @mmc_mux_table, ptr null }, %struct.hisi_mux_clock { i32 88, ptr @.str.53, ptr @mmc_mux_p, i8 8, i32 4, i32 572, i8 24, i8 3, i8 0, ptr @mmc_mux_table, ptr null }, %struct.hisi_mux_clock { i32 81, ptr @.str.54, ptr @sysapb_mux_p, i8 2, i32 4, i32 232, i8 3, i8 1, i8 0, ptr @sysapb_mux_table, ptr null }, %struct.hisi_mux_clock { i32 83, ptr @.str.55, ptr @sysbus_mux_p, i8 2, i32 4, i32 232, i8 0, i8 1, i8 0, ptr @sysbus_mux_table, ptr null }, %struct.hisi_mux_clock { i32 82, ptr @.str.56, ptr @uart_mux_p, i8 3, i32 4, i32 408, i8 28, i8 2, i8 0, ptr @uart_mux_table, ptr null }, %struct.hisi_mux_clock { i32 84, ptr @.str.57, ptr @a73_clksel_mux_p, i8 3, i32 4, i32 228, i8 0, i8 2, i8 0, ptr @a73_clksel_mux_table, ptr null }], align 4
@hi3559av100_gate_clks = internal global [38 x %struct.hisi_gate_clock] [%struct.hisi_gate_clock { i32 90, ptr @.str.58, ptr @.str.49, i32 4, i32 368, i8 1, i8 0, ptr null }, %struct.hisi_gate_clock { i32 96, ptr @.str.59, ptr @.str.50, i32 4, i32 424, i8 28, i8 0, ptr null }, %struct.hisi_gate_clock { i32 97, ptr @.str.60, ptr @.str.51, i32 4, i32 492, i8 28, i8 0, ptr null }, %struct.hisi_gate_clock { i32 98, ptr @.str.61, ptr @.str.52, i32 4, i32 532, i8 28, i8 0, ptr null }, %struct.hisi_gate_clock { i32 99, ptr @.str.62, ptr @.str.53, i32 4, i32 572, i8 28, i8 0, ptr null }, %struct.hisi_gate_clock { i32 91, ptr @.str.63, ptr @.str.56, i32 4, i32 408, i8 23, i8 0, ptr null }, %struct.hisi_gate_clock { i32 92, ptr @.str.64, ptr @.str.56, i32 4, i32 408, i8 24, i8 0, ptr null }, %struct.hisi_gate_clock { i32 93, ptr @.str.65, ptr @.str.56, i32 4, i32 408, i8 25, i8 0, ptr null }, %struct.hisi_gate_clock { i32 94, ptr @.str.66, ptr @.str.56, i32 4, i32 408, i8 26, i8 0, ptr null }, %struct.hisi_gate_clock { i32 95, ptr @.str.67, ptr @.str.56, i32 4, i32 408, i8 27, i8 0, ptr null }, %struct.hisi_gate_clock { i32 100, ptr @.str.68, ptr null, i32 4, i32 372, i8 1, i8 0, ptr null }, %struct.hisi_gate_clock { i32 101, ptr @.str.69, ptr null, i32 4, i32 372, i8 5, i8 0, ptr null }, %struct.hisi_gate_clock { i32 102, ptr @.str.70, ptr null, i32 4, i32 372, i8 3, i8 0, ptr null }, %struct.hisi_gate_clock { i32 103, ptr @.str.71, ptr null, i32 4, i32 372, i8 7, i8 0, ptr null }, %struct.hisi_gate_clock { i32 50, ptr @.str.72, ptr @.str.33, i32 4, i32 416, i8 16, i8 0, ptr null }, %struct.hisi_gate_clock { i32 51, ptr @.str.73, ptr @.str.33, i32 4, i32 416, i8 17, i8 0, ptr null }, %struct.hisi_gate_clock { i32 52, ptr @.str.74, ptr @.str.33, i32 4, i32 416, i8 18, i8 0, ptr null }, %struct.hisi_gate_clock { i32 53, ptr @.str.75, ptr @.str.33, i32 4, i32 416, i8 19, i8 0, ptr null }, %struct.hisi_gate_clock { i32 54, ptr @.str.76, ptr @.str.33, i32 4, i32 416, i8 20, i8 0, ptr null }, %struct.hisi_gate_clock { i32 55, ptr @.str.77, ptr @.str.33, i32 4, i32 416, i8 21, i8 0, ptr null }, %struct.hisi_gate_clock { i32 56, ptr @.str.78, ptr @.str.33, i32 4, i32 416, i8 22, i8 0, ptr null }, %struct.hisi_gate_clock { i32 57, ptr @.str.79, ptr @.str.33, i32 4, i32 416, i8 23, i8 0, ptr null }, %struct.hisi_gate_clock { i32 58, ptr @.str.80, ptr @.str.33, i32 4, i32 416, i8 24, i8 0, ptr null }, %struct.hisi_gate_clock { i32 59, ptr @.str.81, ptr @.str.33, i32 4, i32 416, i8 25, i8 0, ptr null }, %struct.hisi_gate_clock { i32 60, ptr @.str.82, ptr @.str.33, i32 4, i32 416, i8 26, i8 0, ptr null }, %struct.hisi_gate_clock { i32 61, ptr @.str.83, ptr @.str.33, i32 4, i32 416, i8 27, i8 0, ptr null }, %struct.hisi_gate_clock { i32 62, ptr @.str.84, ptr @.str.26, i32 4, i32 408, i8 16, i8 0, ptr null }, %struct.hisi_gate_clock { i32 63, ptr @.str.85, ptr @.str.26, i32 4, i32 408, i8 17, i8 0, ptr null }, %struct.hisi_gate_clock { i32 64, ptr @.str.86, ptr @.str.26, i32 4, i32 408, i8 18, i8 0, ptr null }, %struct.hisi_gate_clock { i32 65, ptr @.str.87, ptr @.str.26, i32 4, i32 408, i8 19, i8 0, ptr null }, %struct.hisi_gate_clock { i32 66, ptr @.str.88, ptr @.str.26, i32 4, i32 408, i8 20, i8 0, ptr null }, %struct.hisi_gate_clock { i32 67, ptr @.str.89, ptr @.str.26, i32 4, i32 408, i8 21, i8 0, ptr null }, %struct.hisi_gate_clock { i32 68, ptr @.str.90, ptr @.str.26, i32 4, i32 408, i8 22, i8 0, ptr null }, %struct.hisi_gate_clock { i32 70, ptr @.str.91, ptr null, i32 4, i32 364, i8 6, i8 0, ptr null }, %struct.hisi_gate_clock { i32 69, ptr @.str.92, ptr null, i32 4, i32 364, i8 5, i8 0, ptr null }, %struct.hisi_gate_clock { i32 72, ptr @.str.93, ptr null, i32 4, i32 364, i8 9, i8 0, ptr null }, %struct.hisi_gate_clock { i32 71, ptr @.str.94, ptr null, i32 4, i32 364, i8 8, i8 0, ptr null }, %struct.hisi_gate_clock { i32 73, ptr @.str.95, ptr null, i32 4, i32 332, i8 5, i8 0, ptr null }], align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"1188m\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"1000m\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"842m\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"792m\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"750m\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"710m\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"680m\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"667m\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"631m\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"600m\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"568m\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"500m\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"475m\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"428m\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"400m\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"396m\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"300m\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"250m\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"200m\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"198m\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"187p5m\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"150m\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"148p5m\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"125m\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"107m\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"100m\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"99m\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"75m\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"74p25m\00", align 1
@.str.30 = private unnamed_addr constant [4 x i8] c"72m\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c"60m\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"54m\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"50m\00", align 1
@.str.34 = private unnamed_addr constant [6 x i8] c"49p5m\00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c"37p125m\00", align 1
@.str.36 = private unnamed_addr constant [4 x i8] c"36m\00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"32p4m\00", align 1
@.str.38 = private unnamed_addr constant [4 x i8] c"27m\00", align 1
@.str.39 = private unnamed_addr constant [4 x i8] c"25m\00", align 1
@.str.40 = private unnamed_addr constant [4 x i8] c"24m\00", align 1
@.str.41 = private unnamed_addr constant [4 x i8] c"12m\00", align 1
@.str.42 = private unnamed_addr constant [3 x i8] c"3m\00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c"1p6m\00", align 1
@.str.44 = private unnamed_addr constant [5 x i8] c"400k\00", align 1
@.str.45 = private unnamed_addr constant [5 x i8] c"100k\00", align 1
@hisi_clk_pll_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_pll_recalc_rate, ptr null, ptr null, ptr null, ptr null, ptr @clk_pll_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.46 = private unnamed_addr constant [33 x i8] c"%s: failed to register clock %s\0A\00", align 1
@__func__.hisi_clk_register_pll = private unnamed_addr constant [22 x i8] c"hisi_clk_register_pll\00", align 1
@.str.47 = private unnamed_addr constant [5 x i8] c"apll\00", align 1
@.str.48 = private unnamed_addr constant [5 x i8] c"gpll\00", align 1
@.str.49 = private unnamed_addr constant [8 x i8] c"fmc_mux\00", align 1
@fmc_mux_p = internal global [8 x ptr] [ptr @.str.40, ptr @.str.28, ptr @.str.24, ptr @.str.22, ptr @.str.19, ptr @.str.18, ptr @.str.17, ptr @.str.15], align 4
@fmc_mux_table = internal constant [8 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7], align 4
@.str.50 = private unnamed_addr constant [9 x i8] c"mmc0_mux\00", align 1
@mmc_mux_p = internal global [8 x ptr] [ptr @.str.45, ptr @.str.39, ptr @.str.34, ptr @.str.27, ptr @.str.21, ptr @.str.22, ptr @.str.20, ptr @.str.44], align 4
@mmc_mux_table = internal constant [8 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7], align 4
@.str.51 = private unnamed_addr constant [9 x i8] c"mmc1_mux\00", align 1
@.str.52 = private unnamed_addr constant [9 x i8] c"mmc2_mux\00", align 1
@.str.53 = private unnamed_addr constant [9 x i8] c"mmc3_mux\00", align 1
@.str.54 = private unnamed_addr constant [11 x i8] c"sysapb_mux\00", align 1
@sysapb_mux_p = internal global [2 x ptr] [ptr @.str.40, ptr @.str.33], align 4
@sysapb_mux_table = internal constant [2 x i32] [i32 0, i32 1], align 4
@.str.55 = private unnamed_addr constant [11 x i8] c"sysbus_mux\00", align 1
@sysbus_mux_p = internal global [2 x ptr] [ptr @.str.40, ptr @.str.17], align 4
@sysbus_mux_table = internal constant [2 x i32] [i32 0, i32 1], align 4
@.str.56 = private unnamed_addr constant [9 x i8] c"uart_mux\00", align 1
@uart_mux_p = internal global [3 x ptr] [ptr @.str.33, ptr @.str.40, ptr @.str.42], align 4
@uart_mux_table = internal constant [3 x i32] [i32 0, i32 1, i32 2], align 4
@.str.57 = private unnamed_addr constant [8 x i8] c"a73_mux\00", align 1
@a73_clksel_mux_p = internal global [3 x ptr] [ptr @.str.40, ptr @.str.47, ptr @.str.2], align 4
@a73_clksel_mux_table = internal constant [3 x i32] [i32 0, i32 1, i32 2], align 4
@.str.58 = private unnamed_addr constant [8 x i8] c"clk_fmc\00", align 1
@.str.59 = private unnamed_addr constant [9 x i8] c"clk_mmc0\00", align 1
@.str.60 = private unnamed_addr constant [9 x i8] c"clk_mmc1\00", align 1
@.str.61 = private unnamed_addr constant [9 x i8] c"clk_mmc2\00", align 1
@.str.62 = private unnamed_addr constant [9 x i8] c"clk_mmc3\00", align 1
@.str.63 = private unnamed_addr constant [10 x i8] c"clk_uart0\00", align 1
@.str.64 = private unnamed_addr constant [10 x i8] c"clk_uart1\00", align 1
@.str.65 = private unnamed_addr constant [10 x i8] c"clk_uart2\00", align 1
@.str.66 = private unnamed_addr constant [10 x i8] c"clk_uart3\00", align 1
@.str.67 = private unnamed_addr constant [10 x i8] c"clk_uart4\00", align 1
@.str.68 = private unnamed_addr constant [8 x i8] c"clk_eth\00", align 1
@.str.69 = private unnamed_addr constant [14 x i8] c"clk_eth_macif\00", align 1
@.str.70 = private unnamed_addr constant [9 x i8] c"clk_eth1\00", align 1
@.str.71 = private unnamed_addr constant [15 x i8] c"clk_eth1_macif\00", align 1
@.str.72 = private unnamed_addr constant [9 x i8] c"clk_i2c0\00", align 1
@.str.73 = private unnamed_addr constant [9 x i8] c"clk_i2c1\00", align 1
@.str.74 = private unnamed_addr constant [9 x i8] c"clk_i2c2\00", align 1
@.str.75 = private unnamed_addr constant [9 x i8] c"clk_i2c3\00", align 1
@.str.76 = private unnamed_addr constant [9 x i8] c"clk_i2c4\00", align 1
@.str.77 = private unnamed_addr constant [9 x i8] c"clk_i2c5\00", align 1
@.str.78 = private unnamed_addr constant [9 x i8] c"clk_i2c6\00", align 1
@.str.79 = private unnamed_addr constant [9 x i8] c"clk_i2c7\00", align 1
@.str.80 = private unnamed_addr constant [9 x i8] c"clk_i2c8\00", align 1
@.str.81 = private unnamed_addr constant [9 x i8] c"clk_i2c9\00", align 1
@.str.82 = private unnamed_addr constant [10 x i8] c"clk_i2c10\00", align 1
@.str.83 = private unnamed_addr constant [10 x i8] c"clk_i2c11\00", align 1
@.str.84 = private unnamed_addr constant [9 x i8] c"clk_spi0\00", align 1
@.str.85 = private unnamed_addr constant [9 x i8] c"clk_spi1\00", align 1
@.str.86 = private unnamed_addr constant [9 x i8] c"clk_spi2\00", align 1
@.str.87 = private unnamed_addr constant [9 x i8] c"clk_spi3\00", align 1
@.str.88 = private unnamed_addr constant [9 x i8] c"clk_spi4\00", align 1
@.str.89 = private unnamed_addr constant [9 x i8] c"clk_spi5\00", align 1
@.str.90 = private unnamed_addr constant [9 x i8] c"clk_spi6\00", align 1
@.str.91 = private unnamed_addr constant [14 x i8] c"axi_clk_edmac\00", align 1
@.str.92 = private unnamed_addr constant [10 x i8] c"clk_edmac\00", align 1
@.str.93 = private unnamed_addr constant [15 x i8] c"axi_clk_edmac1\00", align 1
@.str.94 = private unnamed_addr constant [11 x i8] c"clk_edmac1\00", align 1
@.str.95 = private unnamed_addr constant [10 x i8] c"clk_vdmac\00", align 1
@hi3559av100_shub_fixed_rate_clks = internal global [13 x %struct.hisi_fixed_rate_clock] [%struct.hisi_fixed_rate_clock { i32 0, ptr @.str.96, ptr null, i32 0, i32 24000000 }, %struct.hisi_fixed_rate_clock { i32 1, ptr @.str.97, ptr null, i32 0, i32 200000000 }, %struct.hisi_fixed_rate_clock { i32 2, ptr @.str.98, ptr null, i32 0, i32 300000000 }, %struct.hisi_fixed_rate_clock { i32 3, ptr @.str.99, ptr null, i32 0, i32 192000000 }, %struct.hisi_fixed_rate_clock { i32 10, ptr @.str.100, ptr null, i32 0, i32 48000000 }, %struct.hisi_fixed_rate_clock { i32 11, ptr @.str.101, ptr null, i32 0, i32 48000000 }, %struct.hisi_fixed_rate_clock { i32 12, ptr @.str.102, ptr null, i32 0, i32 48000000 }, %struct.hisi_fixed_rate_clock { i32 13, ptr @.str.103, ptr null, i32 0, i32 48000000 }, %struct.hisi_fixed_rate_clock { i32 14, ptr @.str.104, ptr null, i32 0, i32 48000000 }, %struct.hisi_fixed_rate_clock { i32 15, ptr @.str.105, ptr null, i32 0, i32 48000000 }, %struct.hisi_fixed_rate_clock { i32 16, ptr @.str.106, ptr null, i32 0, i32 48000000 }, %struct.hisi_fixed_rate_clock { i32 17, ptr @.str.107, ptr null, i32 0, i32 48000000 }, %struct.hisi_fixed_rate_clock { i32 30, ptr @.str.108, ptr null, i32 0, i32 32000 }], align 4
@hi3559av100_shub_mux_clks = internal global [2 x %struct.hisi_mux_clock] [%struct.hisi_mux_clock { i32 4, ptr @.str.109, ptr @shub_source_clk_mux_p, i8 4, i32 0, i32 0, i8 0, i8 2, i8 0, ptr @shub_source_clk_mux_table, ptr null }, %struct.hisi_mux_clock { i32 31, ptr @.str.110, ptr @shub_uart_source_clk_mux_p, i8 4, i32 0, i32 28, i8 28, i8 2, i8 0, ptr @shub_uart_source_clk_mux_table, ptr null }], align 4
@hi3559av100_shub_div_clks = internal global [2 x %struct.hisi_divider_clock] [%struct.hisi_divider_clock { i32 20, ptr @.str.112, ptr @.str.109, i32 0, i32 32, i8 24, i8 2, i8 4, ptr @shub_spi_clk_table, ptr null }, %struct.hisi_divider_clock { i32 32, ptr @.str.111, ptr @.str.109, i32 0, i32 28, i8 28, i8 2, i8 4, ptr @shub_uart_div_clk_table, ptr null }], align 4
@hi3559av100_shub_gate_clks = internal global [11 x %struct.hisi_gate_clock] [%struct.hisi_gate_clock { i32 22, ptr @.str.113, ptr @.str.112, i32 0, i32 32, i8 1, i8 0, ptr null }, %struct.hisi_gate_clock { i32 23, ptr @.str.114, ptr @.str.112, i32 0, i32 32, i8 5, i8 0, ptr null }, %struct.hisi_gate_clock { i32 24, ptr @.str.115, ptr @.str.112, i32 0, i32 32, i8 9, i8 0, ptr null }, %struct.hisi_gate_clock { i32 33, ptr @.str.116, ptr @.str.110, i32 0, i32 28, i8 1, i8 0, ptr null }, %struct.hisi_gate_clock { i32 34, ptr @.str.117, ptr @.str.110, i32 0, i32 28, i8 5, i8 0, ptr null }, %struct.hisi_gate_clock { i32 35, ptr @.str.118, ptr @.str.110, i32 0, i32 28, i8 9, i8 0, ptr null }, %struct.hisi_gate_clock { i32 36, ptr @.str.119, ptr @.str.110, i32 0, i32 28, i8 13, i8 0, ptr null }, %struct.hisi_gate_clock { i32 37, ptr @.str.120, ptr @.str.110, i32 0, i32 28, i8 17, i8 0, ptr null }, %struct.hisi_gate_clock { i32 38, ptr @.str.121, ptr @.str.110, i32 0, i32 28, i8 21, i8 0, ptr null }, %struct.hisi_gate_clock { i32 39, ptr @.str.122, ptr @.str.110, i32 0, i32 28, i8 25, i8 0, ptr null }, %struct.hisi_gate_clock { i32 40, ptr @.str.123, ptr @.str.109, i32 0, i32 36, i8 4, i8 0, ptr null }], align 4
@.str.96 = private unnamed_addr constant [15 x i8] c"clk_source_24M\00", align 1
@.str.97 = private unnamed_addr constant [16 x i8] c"clk_source_200M\00", align 1
@.str.98 = private unnamed_addr constant [16 x i8] c"clk_source_300M\00", align 1
@.str.99 = private unnamed_addr constant [15 x i8] c"clk_source_PLL\00", align 1
@.str.100 = private unnamed_addr constant [14 x i8] c"clk_shub_i2c0\00", align 1
@.str.101 = private unnamed_addr constant [14 x i8] c"clk_shub_i2c1\00", align 1
@.str.102 = private unnamed_addr constant [14 x i8] c"clk_shub_i2c2\00", align 1
@.str.103 = private unnamed_addr constant [14 x i8] c"clk_shub_i2c3\00", align 1
@.str.104 = private unnamed_addr constant [14 x i8] c"clk_shub_i2c4\00", align 1
@.str.105 = private unnamed_addr constant [14 x i8] c"clk_shub_i2c5\00", align 1
@.str.106 = private unnamed_addr constant [14 x i8] c"clk_shub_i2c6\00", align 1
@.str.107 = private unnamed_addr constant [14 x i8] c"clk_shub_i2c7\00", align 1
@.str.108 = private unnamed_addr constant [13 x i8] c"clk_uart_32K\00", align 1
@.str.109 = private unnamed_addr constant [9 x i8] c"shub_clk\00", align 1
@shub_source_clk_mux_p = internal global [4 x ptr] [ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99], align 4
@shub_source_clk_mux_table = internal global [4 x i32] [i32 0, i32 1, i32 2, i32 3], align 4
@.str.110 = private unnamed_addr constant [21 x i8] c"shub_uart_source_clk\00", align 1
@shub_uart_source_clk_mux_p = internal global [4 x ptr] [ptr @.str.108, ptr @.str.111, ptr @.str.111, ptr @.str.96], align 4
@shub_uart_source_clk_mux_table = internal global [4 x i32] [i32 0, i32 1, i32 2, i32 3], align 4
@.str.111 = private unnamed_addr constant [17 x i8] c"clk_uart_div_clk\00", align 1
@.str.112 = private unnamed_addr constant [12 x i8] c"clk_spi_clk\00", align 1
@shub_spi_clk_table = internal global [3 x %struct.clk_div_table] [%struct.clk_div_table { i32 0, i32 8 }, %struct.clk_div_table { i32 1, i32 4 }, %struct.clk_div_table { i32 2, i32 2 }], align 4
@shub_uart_div_clk_table = internal global [2 x %struct.clk_div_table] [%struct.clk_div_table { i32 1, i32 8 }, %struct.clk_div_table { i32 2, i32 4 }], align 4
@.str.113 = private unnamed_addr constant [14 x i8] c"clk_shub_spi0\00", align 1
@.str.114 = private unnamed_addr constant [14 x i8] c"clk_shub_spi1\00", align 1
@.str.115 = private unnamed_addr constant [14 x i8] c"clk_shub_spi2\00", align 1
@.str.116 = private unnamed_addr constant [15 x i8] c"clk_shub_uart0\00", align 1
@.str.117 = private unnamed_addr constant [15 x i8] c"clk_shub_uart1\00", align 1
@.str.118 = private unnamed_addr constant [15 x i8] c"clk_shub_uart2\00", align 1
@.str.119 = private unnamed_addr constant [15 x i8] c"clk_shub_uart3\00", align 1
@.str.120 = private unnamed_addr constant [15 x i8] c"clk_shub_uart4\00", align 1
@.str.121 = private unnamed_addr constant [15 x i8] c"clk_shub_uart5\00", align 1
@.str.122 = private unnamed_addr constant [15 x i8] c"clk_shub_uart6\00", align 1
@.str.123 = private unnamed_addr constant [14 x i8] c"clk_shub_dmac\00", align 1
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID_description169, ptr @__UNIQUE_ID_file167, ptr @__UNIQUE_ID_license168, ptr @__exitcall_hi3559av100_crg_exit, ptr @__initcall__kmod_clk_hi3559a__166_835_hi3559av100_crg_init1, ptr @hi3559av100_crg_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @hi3559av100_crg_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @hi3559av100_crg_driver, ptr noundef null) #6
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @hi3559av100_crg_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @hi3559av100_crg_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hi3559av100_crg_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 12, i32 noundef 3264) #6
  %4 = icmp eq ptr %3, null
  br i1 %4, label %21, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @of_device_get_match_data(ptr noundef %2) #6
  %7 = getelementptr inbounds %struct.hisi_crg_dev, ptr %3, i32 0, i32 2
  store ptr %6, ptr %7, align 4
  %8 = icmp eq ptr %6, null
  br i1 %8, label %21, label %9

9:                                                ; preds = %5
  %10 = tail call ptr @hisi_reset_init(ptr noundef %0) #6
  %11 = getelementptr inbounds %struct.hisi_crg_dev, ptr %3, i32 0, i32 1
  store ptr %10, ptr %11, align 4
  %12 = icmp eq ptr %10, null
  br i1 %12, label %21, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr %6, align 4
  %15 = tail call ptr %14(ptr noundef %0) #6
  store ptr %15, ptr %3, align 4
  %16 = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  tail call void @hisi_reset_exit(ptr noundef nonnull %10) #6
  %18 = ptrtoint ptr %15 to i32
  br label %21

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %3, ptr %20, align 8
  br label %21

21:                                               ; preds = %19, %17, %9, %5, %1
  %22 = phi i32 [ %18, %17 ], [ 0, %19 ], [ -12, %1 ], [ -2, %5 ], [ -12, %9 ]
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hi3559av100_crg_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.hisi_crg_dev, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  tail call void @hisi_reset_exit(ptr noundef %5) #6
  %6 = getelementptr inbounds %struct.hisi_crg_dev, ptr %3, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.hisi_crg_funcs, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %9(ptr noundef %0) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hisi_reset_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hisi_reset_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @hi3559av100_clk_register(ptr noundef %0) #2 {
  %2 = alloca %struct.clk_init_data, align 4
  %3 = tail call ptr @hisi_clk_alloc(ptr noundef %0, i32 noundef 256) #6
  %4 = icmp eq ptr %3, null
  br i1 %4, label %203, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @hisi_clk_register_fixed_rate(ptr noundef nonnull @hi3559av100_fixed_rate_clks_crg, i32 noundef 45, ptr noundef nonnull %3) #6
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %5
  %9 = inttoptr i32 %6 to ptr
  br label %203

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %12 = getelementptr inbounds %struct.hisi_clock_data, ptr %3, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %2) #6
  %14 = getelementptr inbounds i8, ptr %2, i32 12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %14, i8 0, i32 12, i1 false) #6, !annotation !8
  %15 = tail call noalias ptr @devm_kmalloc(ptr noundef %11, i32 noundef 72, i32 noundef 3520) #6
  %16 = icmp eq ptr %15, null
  br i1 %16, label %107, label %17

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.clk_init_data, ptr %2, i32 0, i32 6
  %19 = getelementptr inbounds %struct.clk_init_data, ptr %2, i32 0, i32 2
  %20 = getelementptr inbounds %struct.clk_init_data, ptr %2, i32 0, i32 5
  %21 = getelementptr inbounds %struct.clk_init_data, ptr %2, i32 0, i32 1
  %22 = load ptr, ptr getelementptr inbounds ([2 x %struct.hi3559av100_pll_clock], ptr @hi3559av100_pll_clks, i32 0, i32 0, i32 1), align 4
  store ptr %22, ptr %2, align 4
  store i32 0, ptr %18, align 4
  %23 = load ptr, ptr getelementptr inbounds ([2 x %struct.hi3559av100_pll_clock], ptr @hi3559av100_pll_clks, i32 0, i32 0, i32 2), align 4
  %24 = icmp eq ptr %23, null
  %25 = select i1 %24, ptr null, ptr getelementptr inbounds ([2 x %struct.hi3559av100_pll_clock], ptr @hi3559av100_pll_clks, i32 0, i32 0, i32 2)
  store ptr %25, ptr %19, align 4
  %26 = icmp ne ptr %23, null
  %27 = zext i1 %26 to i8
  store i8 %27, ptr %20, align 4
  store ptr @hisi_clk_pll_ops, ptr %21, align 4
  %28 = load i32, ptr getelementptr inbounds ([2 x %struct.hi3559av100_pll_clock], ptr @hi3559av100_pll_clks, i32 0, i32 0, i32 3), align 4
  %29 = getelementptr i8, ptr %13, i32 %28
  %30 = getelementptr inbounds %struct.hi3559av100_clk_pll, ptr %15, i32 0, i32 2
  store ptr %29, ptr %30, align 4
  %31 = load i8, ptr getelementptr inbounds ([2 x %struct.hi3559av100_pll_clock], ptr @hi3559av100_pll_clks, i32 0, i32 0, i32 4), align 4
  %32 = getelementptr inbounds %struct.hi3559av100_clk_pll, ptr %15, i32 0, i32 3
  store i8 %31, ptr %32, align 4
  %33 = load i8, ptr getelementptr inbounds ([2 x %struct.hi3559av100_pll_clock], ptr @hi3559av100_pll_clks, i32 0, i32 0, i32 5), align 1
  %34 = getelementptr inbounds %struct.hi3559av100_clk_pll, ptr %15, i32 0, i32 4
  store i8 %33, ptr %34, align 1
  %35 = load i8, ptr getelementptr inbounds ([2 x %struct.hi3559av100_pll_clock], ptr @hi3559av100_pll_clks, i32 0, i32 0, i32 6), align 2
  %36 = getelementptr inbounds %struct.hi3559av100_clk_pll, ptr %15, i32 0, i32 5
  store i8 %35, ptr %36, align 2
  %37 = load i8, ptr getelementptr inbounds ([2 x %struct.hi3559av100_pll_clock], ptr @hi3559av100_pll_clks, i32 0, i32 0, i32 7), align 1
  %38 = getelementptr inbounds %struct.hi3559av100_clk_pll, ptr %15, i32 0, i32 6
  store i8 %37, ptr %38, align 1
  %39 = load i8, ptr getelementptr inbounds ([2 x %struct.hi3559av100_pll_clock], ptr @hi3559av100_pll_clks, i32 0, i32 0, i32 8), align 4
  %40 = getelementptr inbounds %struct.hi3559av100_clk_pll, ptr %15, i32 0, i32 7
  store i8 %39, ptr %40, align 4
  %41 = load i8, ptr getelementptr inbounds ([2 x %struct.hi3559av100_pll_clock], ptr @hi3559av100_pll_clks, i32 0, i32 0, i32 9), align 1
  %42 = getelementptr inbounds %struct.hi3559av100_clk_pll, ptr %15, i32 0, i32 8
  store i8 %41, ptr %42, align 1
  %43 = load i32, ptr getelementptr inbounds ([2 x %struct.hi3559av100_pll_clock], ptr @hi3559av100_pll_clks, i32 0, i32 0, i32 10), align 4
  %44 = getelementptr i8, ptr %13, i32 %43
  %45 = getelementptr inbounds %struct.hi3559av100_clk_pll, ptr %15, i32 0, i32 9
  store ptr %44, ptr %45, align 4
  %46 = load i8, ptr getelementptr inbounds ([2 x %struct.hi3559av100_pll_clock], ptr @hi3559av100_pll_clks, i32 0, i32 0, i32 11), align 4
  %47 = getelementptr inbounds %struct.hi3559av100_clk_pll, ptr %15, i32 0, i32 10
  store i8 %46, ptr %47, align 4
  %48 = load i8, ptr getelementptr inbounds ([2 x %struct.hi3559av100_pll_clock], ptr @hi3559av100_pll_clks, i32 0, i32 0, i32 12), align 1
  %49 = getelementptr inbounds %struct.hi3559av100_clk_pll, ptr %15, i32 0, i32 11
  store i8 %48, ptr %49, align 1
  %50 = load i8, ptr getelementptr inbounds ([2 x %struct.hi3559av100_pll_clock], ptr @hi3559av100_pll_clks, i32 0, i32 0, i32 13), align 2
  %51 = getelementptr inbounds %struct.hi3559av100_clk_pll, ptr %15, i32 0, i32 12
  store i8 %50, ptr %51, align 2
  %52 = load i8, ptr getelementptr inbounds ([2 x %struct.hi3559av100_pll_clock], ptr @hi3559av100_pll_clks, i32 0, i32 0, i32 14), align 1
  %53 = getelementptr inbounds %struct.hi3559av100_clk_pll, ptr %15, i32 0, i32 13
  store i8 %52, ptr %53, align 1
  %54 = getelementptr inbounds %struct.clk_hw, ptr %15, i32 0, i32 2
  store ptr %2, ptr %54, align 4
  %55 = call ptr @clk_register(ptr noundef null, ptr noundef nonnull %15) #6
  %56 = icmp ugt ptr %55, inttoptr (i32 -4096 to ptr)
  br i1 %56, label %57, label %59

57:                                               ; preds = %17
  call void @devm_kfree(ptr noundef %11, ptr noundef nonnull %15) #6
  %58 = load ptr, ptr getelementptr inbounds ([2 x %struct.hi3559av100_pll_clock], ptr @hi3559av100_pll_clks, i32 0, i32 0, i32 1), align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.46, ptr noundef nonnull @__func__.hisi_clk_register_pll, ptr noundef %58) #7
  br label %64

59:                                               ; preds = %17
  %60 = load ptr, ptr %3, align 4
  %61 = load i32, ptr @hi3559av100_pll_clks, align 4
  %62 = getelementptr ptr, ptr %60, i32 %61
  store ptr %55, ptr %62, align 4
  %63 = getelementptr %struct.hi3559av100_clk_pll, ptr %15, i32 1
  br label %64

64:                                               ; preds = %59, %57
  %65 = phi ptr [ %15, %57 ], [ %63, %59 ]
  %66 = load ptr, ptr getelementptr inbounds ([2 x %struct.hi3559av100_pll_clock], ptr @hi3559av100_pll_clks, i32 0, i32 1, i32 1), align 4
  store ptr %66, ptr %2, align 4
  store i32 0, ptr %18, align 4
  %67 = load ptr, ptr getelementptr inbounds ([2 x %struct.hi3559av100_pll_clock], ptr @hi3559av100_pll_clks, i32 0, i32 1, i32 2), align 4
  %68 = icmp eq ptr %67, null
  %69 = select i1 %68, ptr null, ptr getelementptr inbounds ([2 x %struct.hi3559av100_pll_clock], ptr @hi3559av100_pll_clks, i32 0, i32 1, i32 2)
  store ptr %69, ptr %19, align 4
  %70 = icmp ne ptr %67, null
  %71 = zext i1 %70 to i8
  store i8 %71, ptr %20, align 4
  store ptr @hisi_clk_pll_ops, ptr %21, align 4
  %72 = load i32, ptr getelementptr inbounds ([2 x %struct.hi3559av100_pll_clock], ptr @hi3559av100_pll_clks, i32 0, i32 1, i32 3), align 4
  %73 = getelementptr i8, ptr %13, i32 %72
  %74 = getelementptr inbounds %struct.hi3559av100_clk_pll, ptr %65, i32 0, i32 2
  store ptr %73, ptr %74, align 4
  %75 = load i8, ptr getelementptr inbounds ([2 x %struct.hi3559av100_pll_clock], ptr @hi3559av100_pll_clks, i32 0, i32 1, i32 4), align 4
  %76 = getelementptr inbounds %struct.hi3559av100_clk_pll, ptr %65, i32 0, i32 3
  store i8 %75, ptr %76, align 4
  %77 = load i8, ptr getelementptr inbounds ([2 x %struct.hi3559av100_pll_clock], ptr @hi3559av100_pll_clks, i32 0, i32 1, i32 5), align 1
  %78 = getelementptr inbounds %struct.hi3559av100_clk_pll, ptr %65, i32 0, i32 4
  store i8 %77, ptr %78, align 1
  %79 = load i8, ptr getelementptr inbounds ([2 x %struct.hi3559av100_pll_clock], ptr @hi3559av100_pll_clks, i32 0, i32 1, i32 6), align 2
  %80 = getelementptr inbounds %struct.hi3559av100_clk_pll, ptr %65, i32 0, i32 5
  store i8 %79, ptr %80, align 2
  %81 = load i8, ptr getelementptr inbounds ([2 x %struct.hi3559av100_pll_clock], ptr @hi3559av100_pll_clks, i32 0, i32 1, i32 7), align 1
  %82 = getelementptr inbounds %struct.hi3559av100_clk_pll, ptr %65, i32 0, i32 6
  store i8 %81, ptr %82, align 1
  %83 = load i8, ptr getelementptr inbounds ([2 x %struct.hi3559av100_pll_clock], ptr @hi3559av100_pll_clks, i32 0, i32 1, i32 8), align 4
  %84 = getelementptr inbounds %struct.hi3559av100_clk_pll, ptr %65, i32 0, i32 7
  store i8 %83, ptr %84, align 4
  %85 = load i8, ptr getelementptr inbounds ([2 x %struct.hi3559av100_pll_clock], ptr @hi3559av100_pll_clks, i32 0, i32 1, i32 9), align 1
  %86 = getelementptr inbounds %struct.hi3559av100_clk_pll, ptr %65, i32 0, i32 8
  store i8 %85, ptr %86, align 1
  %87 = load i32, ptr getelementptr inbounds ([2 x %struct.hi3559av100_pll_clock], ptr @hi3559av100_pll_clks, i32 0, i32 1, i32 10), align 4
  %88 = getelementptr i8, ptr %13, i32 %87
  %89 = getelementptr inbounds %struct.hi3559av100_clk_pll, ptr %65, i32 0, i32 9
  store ptr %88, ptr %89, align 4
  %90 = load i8, ptr getelementptr inbounds ([2 x %struct.hi3559av100_pll_clock], ptr @hi3559av100_pll_clks, i32 0, i32 1, i32 11), align 4
  %91 = getelementptr inbounds %struct.hi3559av100_clk_pll, ptr %65, i32 0, i32 10
  store i8 %90, ptr %91, align 4
  %92 = load i8, ptr getelementptr inbounds ([2 x %struct.hi3559av100_pll_clock], ptr @hi3559av100_pll_clks, i32 0, i32 1, i32 12), align 1
  %93 = getelementptr inbounds %struct.hi3559av100_clk_pll, ptr %65, i32 0, i32 11
  store i8 %92, ptr %93, align 1
  %94 = load i8, ptr getelementptr inbounds ([2 x %struct.hi3559av100_pll_clock], ptr @hi3559av100_pll_clks, i32 0, i32 1, i32 13), align 2
  %95 = getelementptr inbounds %struct.hi3559av100_clk_pll, ptr %65, i32 0, i32 12
  store i8 %94, ptr %95, align 2
  %96 = load i8, ptr getelementptr inbounds ([2 x %struct.hi3559av100_pll_clock], ptr @hi3559av100_pll_clks, i32 0, i32 1, i32 14), align 1
  %97 = getelementptr inbounds %struct.hi3559av100_clk_pll, ptr %65, i32 0, i32 13
  store i8 %96, ptr %97, align 1
  %98 = getelementptr inbounds %struct.clk_hw, ptr %65, i32 0, i32 2
  store ptr %2, ptr %98, align 4
  %99 = call ptr @clk_register(ptr noundef null, ptr noundef %65) #6
  %100 = icmp ugt ptr %99, inttoptr (i32 -4096 to ptr)
  br i1 %100, label %105, label %101

101:                                              ; preds = %64
  %102 = load ptr, ptr %3, align 4
  %103 = load i32, ptr getelementptr inbounds ([2 x %struct.hi3559av100_pll_clock], ptr @hi3559av100_pll_clks, i32 0, i32 1), align 4
  %104 = getelementptr ptr, ptr %102, i32 %103
  store ptr %99, ptr %104, align 4
  br label %107

105:                                              ; preds = %64
  call void @devm_kfree(ptr noundef %11, ptr noundef %65) #6
  %106 = load ptr, ptr getelementptr inbounds ([2 x %struct.hi3559av100_pll_clock], ptr @hi3559av100_pll_clks, i32 0, i32 1, i32 1), align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.46, ptr noundef nonnull @__func__.hisi_clk_register_pll, ptr noundef %106) #7
  br label %107

107:                                              ; preds = %105, %101, %10
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %2) #6
  %108 = call i32 @hisi_clk_register_mux(ptr noundef nonnull @hi3559av100_mux_clks_crg, i32 noundef 9, ptr noundef nonnull %3) #6
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %187

110:                                              ; preds = %107
  %111 = call i32 @hisi_clk_register_gate(ptr noundef nonnull @hi3559av100_gate_clks, i32 noundef 38, ptr noundef nonnull %3) #6
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %131

113:                                              ; preds = %110
  %114 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %115 = load ptr, ptr %114, align 8
  %116 = call i32 @of_clk_add_provider(ptr noundef %115, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef nonnull %3) #6
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %203, label %118

118:                                              ; preds = %113
  %119 = load ptr, ptr %3, align 4
  br label %120

120:                                              ; preds = %128, %118
  %121 = phi i32 [ %129, %128 ], [ 0, %118 ]
  %122 = getelementptr %struct.hisi_gate_clock, ptr @hi3559av100_gate_clks, i32 %121
  %123 = load i32, ptr %122, align 4
  %124 = getelementptr ptr, ptr %119, i32 %123
  %125 = load ptr, ptr %124, align 4
  %126 = icmp eq ptr %125, null
  br i1 %126, label %128, label %127

127:                                              ; preds = %120
  call void @clk_unregister_gate(ptr noundef nonnull %125) #6
  br label %128

128:                                              ; preds = %127, %120
  %129 = add nuw nsw i32 %121, 1
  %130 = icmp eq i32 %129, 38
  br i1 %130, label %131, label %120

131:                                              ; preds = %128, %110
  %132 = phi i32 [ %111, %110 ], [ %116, %128 ]
  %133 = load ptr, ptr %3, align 4
  %134 = load i32, ptr @hi3559av100_mux_clks_crg, align 4
  %135 = getelementptr ptr, ptr %133, i32 %134
  %136 = load ptr, ptr %135, align 4
  %137 = icmp eq ptr %136, null
  br i1 %137, label %139, label %138

138:                                              ; preds = %131
  call void @clk_unregister_mux(ptr noundef nonnull %136) #6
  br label %139

139:                                              ; preds = %138, %131
  %140 = load i32, ptr getelementptr inbounds ([9 x %struct.hisi_mux_clock], ptr @hi3559av100_mux_clks_crg, i32 0, i32 1), align 4
  %141 = getelementptr ptr, ptr %133, i32 %140
  %142 = load ptr, ptr %141, align 4
  %143 = icmp eq ptr %142, null
  br i1 %143, label %145, label %144

144:                                              ; preds = %139
  call void @clk_unregister_mux(ptr noundef nonnull %142) #6
  br label %145

145:                                              ; preds = %144, %139
  %146 = load i32, ptr getelementptr inbounds ([9 x %struct.hisi_mux_clock], ptr @hi3559av100_mux_clks_crg, i32 0, i32 2), align 4
  %147 = getelementptr ptr, ptr %133, i32 %146
  %148 = load ptr, ptr %147, align 4
  %149 = icmp eq ptr %148, null
  br i1 %149, label %151, label %150

150:                                              ; preds = %145
  call void @clk_unregister_mux(ptr noundef nonnull %148) #6
  br label %151

151:                                              ; preds = %150, %145
  %152 = load i32, ptr getelementptr inbounds ([9 x %struct.hisi_mux_clock], ptr @hi3559av100_mux_clks_crg, i32 0, i32 3), align 4
  %153 = getelementptr ptr, ptr %133, i32 %152
  %154 = load ptr, ptr %153, align 4
  %155 = icmp eq ptr %154, null
  br i1 %155, label %157, label %156

156:                                              ; preds = %151
  call void @clk_unregister_mux(ptr noundef nonnull %154) #6
  br label %157

157:                                              ; preds = %156, %151
  %158 = load i32, ptr getelementptr inbounds ([9 x %struct.hisi_mux_clock], ptr @hi3559av100_mux_clks_crg, i32 0, i32 4), align 4
  %159 = getelementptr ptr, ptr %133, i32 %158
  %160 = load ptr, ptr %159, align 4
  %161 = icmp eq ptr %160, null
  br i1 %161, label %163, label %162

162:                                              ; preds = %157
  call void @clk_unregister_mux(ptr noundef nonnull %160) #6
  br label %163

163:                                              ; preds = %162, %157
  %164 = load i32, ptr getelementptr inbounds ([9 x %struct.hisi_mux_clock], ptr @hi3559av100_mux_clks_crg, i32 0, i32 5), align 4
  %165 = getelementptr ptr, ptr %133, i32 %164
  %166 = load ptr, ptr %165, align 4
  %167 = icmp eq ptr %166, null
  br i1 %167, label %169, label %168

168:                                              ; preds = %163
  call void @clk_unregister_mux(ptr noundef nonnull %166) #6
  br label %169

169:                                              ; preds = %168, %163
  %170 = load i32, ptr getelementptr inbounds ([9 x %struct.hisi_mux_clock], ptr @hi3559av100_mux_clks_crg, i32 0, i32 6), align 4
  %171 = getelementptr ptr, ptr %133, i32 %170
  %172 = load ptr, ptr %171, align 4
  %173 = icmp eq ptr %172, null
  br i1 %173, label %175, label %174

174:                                              ; preds = %169
  call void @clk_unregister_mux(ptr noundef nonnull %172) #6
  br label %175

175:                                              ; preds = %174, %169
  %176 = load i32, ptr getelementptr inbounds ([9 x %struct.hisi_mux_clock], ptr @hi3559av100_mux_clks_crg, i32 0, i32 7), align 4
  %177 = getelementptr ptr, ptr %133, i32 %176
  %178 = load ptr, ptr %177, align 4
  %179 = icmp eq ptr %178, null
  br i1 %179, label %181, label %180

180:                                              ; preds = %175
  call void @clk_unregister_mux(ptr noundef nonnull %178) #6
  br label %181

181:                                              ; preds = %180, %175
  %182 = load i32, ptr getelementptr inbounds ([9 x %struct.hisi_mux_clock], ptr @hi3559av100_mux_clks_crg, i32 0, i32 8), align 4
  %183 = getelementptr ptr, ptr %133, i32 %182
  %184 = load ptr, ptr %183, align 4
  %185 = icmp eq ptr %184, null
  br i1 %185, label %187, label %186

186:                                              ; preds = %181
  call void @clk_unregister_mux(ptr noundef nonnull %184) #6
  br label %187

187:                                              ; preds = %186, %181, %107
  %188 = phi i32 [ %108, %107 ], [ %132, %186 ], [ %132, %181 ]
  %189 = load ptr, ptr %3, align 4
  br label %190

190:                                              ; preds = %198, %187
  %191 = phi i32 [ %199, %198 ], [ 0, %187 ]
  %192 = getelementptr %struct.hisi_fixed_rate_clock, ptr @hi3559av100_fixed_rate_clks_crg, i32 %191
  %193 = load i32, ptr %192, align 4
  %194 = getelementptr ptr, ptr %189, i32 %193
  %195 = load ptr, ptr %194, align 4
  %196 = icmp eq ptr %195, null
  br i1 %196, label %198, label %197

197:                                              ; preds = %190
  call void @clk_unregister_fixed_rate(ptr noundef nonnull %195) #6
  br label %198

198:                                              ; preds = %197, %190
  %199 = add nuw nsw i32 %191, 1
  %200 = icmp eq i32 %199, 45
  br i1 %200, label %201, label %190

201:                                              ; preds = %198
  %202 = inttoptr i32 %188 to ptr
  br label %203

203:                                              ; preds = %201, %113, %8, %1
  %204 = phi ptr [ %9, %8 ], [ %202, %201 ], [ %3, %113 ], [ inttoptr (i32 -12 to ptr), %1 ]
  ret ptr %204
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hi3559av100_clk_unregister(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %5 = load ptr, ptr %4, align 8
  tail call void @of_clk_del_provider(ptr noundef %5) #6
  %6 = load ptr, ptr %3, align 4
  %7 = load ptr, ptr %6, align 4
  br label %8

8:                                                ; preds = %16, %1
  %9 = phi i32 [ %17, %16 ], [ 0, %1 ]
  %10 = getelementptr %struct.hisi_gate_clock, ptr @hi3559av100_gate_clks, i32 %9
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr ptr, ptr %7, i32 %11
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %8
  tail call void @clk_unregister_gate(ptr noundef nonnull %13) #6
  br label %16

16:                                               ; preds = %15, %8
  %17 = add nuw nsw i32 %9, 1
  %18 = icmp eq i32 %17, 38
  br i1 %18, label %19, label %8

19:                                               ; preds = %16
  %20 = load ptr, ptr %3, align 4
  %21 = load ptr, ptr %20, align 4
  %22 = load i32, ptr @hi3559av100_mux_clks_crg, align 4
  %23 = getelementptr ptr, ptr %21, i32 %22
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %19
  tail call void @clk_unregister_mux(ptr noundef nonnull %24) #6
  br label %27

27:                                               ; preds = %26, %19
  %28 = load i32, ptr getelementptr inbounds ([9 x %struct.hisi_mux_clock], ptr @hi3559av100_mux_clks_crg, i32 0, i32 1), align 4
  %29 = getelementptr ptr, ptr %21, i32 %28
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %27
  tail call void @clk_unregister_mux(ptr noundef nonnull %30) #6
  br label %33

33:                                               ; preds = %32, %27
  %34 = load i32, ptr getelementptr inbounds ([9 x %struct.hisi_mux_clock], ptr @hi3559av100_mux_clks_crg, i32 0, i32 2), align 4
  %35 = getelementptr ptr, ptr %21, i32 %34
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %33
  tail call void @clk_unregister_mux(ptr noundef nonnull %36) #6
  br label %39

39:                                               ; preds = %38, %33
  %40 = load i32, ptr getelementptr inbounds ([9 x %struct.hisi_mux_clock], ptr @hi3559av100_mux_clks_crg, i32 0, i32 3), align 4
  %41 = getelementptr ptr, ptr %21, i32 %40
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %39
  tail call void @clk_unregister_mux(ptr noundef nonnull %42) #6
  br label %45

45:                                               ; preds = %44, %39
  %46 = load i32, ptr getelementptr inbounds ([9 x %struct.hisi_mux_clock], ptr @hi3559av100_mux_clks_crg, i32 0, i32 4), align 4
  %47 = getelementptr ptr, ptr %21, i32 %46
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %45
  tail call void @clk_unregister_mux(ptr noundef nonnull %48) #6
  br label %51

51:                                               ; preds = %50, %45
  %52 = load i32, ptr getelementptr inbounds ([9 x %struct.hisi_mux_clock], ptr @hi3559av100_mux_clks_crg, i32 0, i32 5), align 4
  %53 = getelementptr ptr, ptr %21, i32 %52
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %51
  tail call void @clk_unregister_mux(ptr noundef nonnull %54) #6
  br label %57

57:                                               ; preds = %56, %51
  %58 = load i32, ptr getelementptr inbounds ([9 x %struct.hisi_mux_clock], ptr @hi3559av100_mux_clks_crg, i32 0, i32 6), align 4
  %59 = getelementptr ptr, ptr %21, i32 %58
  %60 = load ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, null
  br i1 %61, label %63, label %62

62:                                               ; preds = %57
  tail call void @clk_unregister_mux(ptr noundef nonnull %60) #6
  br label %63

63:                                               ; preds = %62, %57
  %64 = load i32, ptr getelementptr inbounds ([9 x %struct.hisi_mux_clock], ptr @hi3559av100_mux_clks_crg, i32 0, i32 7), align 4
  %65 = getelementptr ptr, ptr %21, i32 %64
  %66 = load ptr, ptr %65, align 4
  %67 = icmp eq ptr %66, null
  br i1 %67, label %69, label %68

68:                                               ; preds = %63
  tail call void @clk_unregister_mux(ptr noundef nonnull %66) #6
  br label %69

69:                                               ; preds = %68, %63
  %70 = load i32, ptr getelementptr inbounds ([9 x %struct.hisi_mux_clock], ptr @hi3559av100_mux_clks_crg, i32 0, i32 8), align 4
  %71 = getelementptr ptr, ptr %21, i32 %70
  %72 = load ptr, ptr %71, align 4
  %73 = icmp eq ptr %72, null
  br i1 %73, label %75, label %74

74:                                               ; preds = %69
  tail call void @clk_unregister_mux(ptr noundef nonnull %72) #6
  br label %75

75:                                               ; preds = %74, %69
  %76 = load ptr, ptr %3, align 4
  %77 = load ptr, ptr %76, align 4
  br label %78

78:                                               ; preds = %86, %75
  %79 = phi i32 [ %87, %86 ], [ 0, %75 ]
  %80 = getelementptr %struct.hisi_fixed_rate_clock, ptr @hi3559av100_fixed_rate_clks_crg, i32 %79
  %81 = load i32, ptr %80, align 4
  %82 = getelementptr ptr, ptr %77, i32 %81
  %83 = load ptr, ptr %82, align 4
  %84 = icmp eq ptr %83, null
  br i1 %84, label %86, label %85

85:                                               ; preds = %78
  tail call void @clk_unregister_fixed_rate(ptr noundef nonnull %83) #6
  br label %86

86:                                               ; preds = %85, %78
  %87 = add nuw nsw i32 %79, 1
  %88 = icmp eq i32 %87, 45
  br i1 %88, label %89, label %78

89:                                               ; preds = %86
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hisi_clk_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hisi_clk_register_fixed_rate(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hisi_clk_register_mux(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hisi_clk_register_gate(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_onecell_get(ptr noundef, ptr noundef) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_pll_recalc_rate(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.hi3559av100_clk_pll, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #6, !srcloc !9
  %6 = getelementptr inbounds %struct.hi3559av100_clk_pll, ptr %0, i32 0, i32 3
  %7 = load i8, ptr %6, align 4
  %8 = zext i8 %7 to i32
  %9 = lshr i32 %5, %8
  %10 = getelementptr inbounds %struct.hi3559av100_clk_pll, ptr %0, i32 0, i32 4
  %11 = load i8, ptr %10, align 1
  %12 = zext i8 %11 to i32
  %13 = shl nsw i32 -1, %12
  %14 = xor i32 %13, -1
  %15 = and i32 %9, %14
  %16 = zext i32 %15 to i64
  %17 = load ptr, ptr %3, align 4
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #6, !srcloc !9
  %19 = getelementptr inbounds %struct.hi3559av100_clk_pll, ptr %0, i32 0, i32 5
  %20 = load i8, ptr %19, align 2
  %21 = zext i8 %20 to i32
  %22 = lshr i32 %18, %21
  %23 = getelementptr inbounds %struct.hi3559av100_clk_pll, ptr %0, i32 0, i32 6
  %24 = load i8, ptr %23, align 1
  %25 = zext i8 %24 to i32
  %26 = shl nsw i32 -1, %25
  %27 = xor i32 %26, -1
  %28 = and i32 %22, %27
  %29 = load ptr, ptr %3, align 4
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #6, !srcloc !9
  %31 = getelementptr inbounds %struct.hi3559av100_clk_pll, ptr %0, i32 0, i32 7
  %32 = load i8, ptr %31, align 4
  %33 = zext i8 %32 to i32
  %34 = lshr i32 %30, %33
  %35 = getelementptr inbounds %struct.hi3559av100_clk_pll, ptr %0, i32 0, i32 8
  %36 = load i8, ptr %35, align 1
  %37 = zext i8 %36 to i32
  %38 = shl nsw i32 -1, %37
  %39 = xor i32 %38, -1
  %40 = and i32 %34, %39
  %41 = getelementptr inbounds %struct.hi3559av100_clk_pll, ptr %0, i32 0, i32 9
  %42 = load ptr, ptr %41, align 4
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %42) #6, !srcloc !9
  %44 = getelementptr inbounds %struct.hi3559av100_clk_pll, ptr %0, i32 0, i32 10
  %45 = load i8, ptr %44, align 4
  %46 = zext i8 %45 to i32
  %47 = lshr i32 %43, %46
  %48 = getelementptr inbounds %struct.hi3559av100_clk_pll, ptr %0, i32 0, i32 11
  %49 = load i8, ptr %48, align 1
  %50 = zext i8 %49 to i32
  %51 = shl nsw i32 -1, %50
  %52 = xor i32 %51, -1
  %53 = and i32 %47, %52
  %54 = zext i32 %53 to i64
  %55 = load ptr, ptr %41, align 4
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %55) #6, !srcloc !9
  %57 = getelementptr inbounds %struct.hi3559av100_clk_pll, ptr %0, i32 0, i32 12
  %58 = load i8, ptr %57, align 2
  %59 = zext i8 %58 to i32
  %60 = lshr i32 %56, %59
  %61 = getelementptr inbounds %struct.hi3559av100_clk_pll, ptr %0, i32 0, i32 13
  %62 = load i8, ptr %61, align 1
  %63 = zext i8 %62 to i32
  %64 = shl nsw i32 -1, %63
  %65 = xor i32 %64, -1
  %66 = and i32 %60, %65
  %67 = mul nuw nsw i64 %54, 24000000
  %68 = mul nuw nsw i64 %16, 24000000
  %69 = lshr i64 %68, 24
  %70 = add nuw nsw i64 %67, %69
  %71 = icmp ult i64 %70, 4294967296
  br i1 %71, label %72, label %76, !prof !10

72:                                               ; preds = %2
  %73 = trunc i64 %70 to i32
  %74 = udiv i32 %73, %66
  %75 = zext i32 %74 to i64
  br label %79

76:                                               ; preds = %2
  %77 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %66, i64 %70) #8, !srcloc !11
  %78 = extractvalue { i64, i64 } %77, 1
  br label %79

79:                                               ; preds = %76, %72
  %80 = phi i64 [ %75, %72 ], [ %78, %76 ]
  %81 = mul i32 %40, %28
  %82 = icmp ult i64 %80, 4294967296
  br i1 %82, label %83, label %86, !prof !10

83:                                               ; preds = %79
  %84 = trunc i64 %80 to i32
  %85 = udiv i32 %84, %81
  br label %90

86:                                               ; preds = %79
  %87 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %81, i64 %80) #8, !srcloc !11
  %88 = extractvalue { i64, i64 } %87, 1
  %89 = trunc i64 %88 to i32
  br label %90

90:                                               ; preds = %86, %83
  %91 = phi i32 [ %85, %83 ], [ %89, %86 ]
  ret i32 %91
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_pll_set_rate(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = zext i32 %1 to i64
  %5 = shl nuw nsw i64 %4, 1
  %6 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %5) #8, !srcloc !12
  %7 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %5, i64 %6, i32 0) #8, !srcloc !13
  %8 = extractvalue { i64, i32 } %7, 0
  %9 = lshr i64 %8, 18
  %10 = trunc i64 %9 to i32
  %11 = lshr i64 %8, 21
  %12 = tail call i64 asm "umlal\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,0,~{cc}"(i64 6148914691236517205, i64 %11, i64 6148914691236517205) #8, !srcloc !14
  %13 = tail call i64 asm "umlal\09${0:R}, ${0:Q}, ${1:R}, ${2:Q}\0A\09umlal\09${0:R}, ${0:Q}, ${1:Q}, ${2:R}\0A\09mov\09${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${1:R}, ${2:R}", "=&r,r,r,0,~{cc}"(i64 6148914691236517205, i64 %11, i64 %12) #8, !srcloc !15
  %14 = trunc i64 %13 to i32
  %15 = mul i32 %14, -24
  %16 = add i32 %15, %10
  %17 = zext i32 %16 to i64
  %18 = shl nuw nsw i64 %17, 21
  %19 = tail call i64 asm "umlal\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,0,~{cc}"(i64 6148914691236517205, i64 %18, i64 6148914691236517205) #8, !srcloc !14
  %20 = tail call i64 asm "umlal\09${0:R}, ${0:Q}, ${1:R}, ${2:Q}\0A\09umlal\09${0:R}, ${0:Q}, ${1:Q}, ${2:R}\0A\09mov\09${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${1:R}, ${2:R}", "=&r,r,r,0,~{cc}"(i64 6148914691236517205, i64 %18, i64 %19) #8, !srcloc !15
  %21 = trunc i64 %20 to i32
  %22 = getelementptr inbounds %struct.hi3559av100_clk_pll, ptr %0, i32 0, i32 2
  %23 = load ptr, ptr %22, align 4
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #6, !srcloc !9
  %25 = getelementptr inbounds %struct.hi3559av100_clk_pll, ptr %0, i32 0, i32 4
  %26 = load i8, ptr %25, align 1
  %27 = zext i8 %26 to i32
  %28 = shl nsw i32 -1, %27
  %29 = xor i32 %28, -1
  %30 = getelementptr inbounds %struct.hi3559av100_clk_pll, ptr %0, i32 0, i32 3
  %31 = load i8, ptr %30, align 4
  %32 = zext i8 %31 to i32
  %33 = shl i32 %29, %32
  %34 = getelementptr inbounds %struct.hi3559av100_clk_pll, ptr %0, i32 0, i32 6
  %35 = load i8, ptr %34, align 1
  %36 = zext i8 %35 to i32
  %37 = shl nsw i32 -1, %36
  %38 = xor i32 %37, -1
  %39 = getelementptr inbounds %struct.hi3559av100_clk_pll, ptr %0, i32 0, i32 5
  %40 = load i8, ptr %39, align 2
  %41 = zext i8 %40 to i32
  %42 = shl i32 %38, %41
  %43 = or i32 %42, %33
  %44 = getelementptr inbounds %struct.hi3559av100_clk_pll, ptr %0, i32 0, i32 8
  %45 = load i8, ptr %44, align 1
  %46 = zext i8 %45 to i32
  %47 = shl nsw i32 -1, %46
  %48 = xor i32 %47, -1
  %49 = getelementptr inbounds %struct.hi3559av100_clk_pll, ptr %0, i32 0, i32 7
  %50 = load i8, ptr %49, align 4
  %51 = zext i8 %50 to i32
  %52 = shl i32 %48, %51
  %53 = or i32 %43, %52
  %54 = xor i32 %53, -1
  %55 = and i32 %24, %54
  %56 = shl i32 %21, %32
  %57 = shl i32 2, %41
  %58 = shl nuw i32 1, %51
  %59 = or i32 %57, %56
  %60 = or i32 %59, %58
  %61 = or i32 %60, %55
  %62 = load ptr, ptr %22, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %62, i32 %61) #6, !srcloc !16
  %63 = getelementptr inbounds %struct.hi3559av100_clk_pll, ptr %0, i32 0, i32 9
  %64 = load ptr, ptr %63, align 4
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %64) #6, !srcloc !9
  %66 = getelementptr inbounds %struct.hi3559av100_clk_pll, ptr %0, i32 0, i32 11
  %67 = load i8, ptr %66, align 1
  %68 = zext i8 %67 to i32
  %69 = shl nsw i32 -1, %68
  %70 = xor i32 %69, -1
  %71 = getelementptr inbounds %struct.hi3559av100_clk_pll, ptr %0, i32 0, i32 10
  %72 = load i8, ptr %71, align 4
  %73 = zext i8 %72 to i32
  %74 = shl i32 %70, %73
  %75 = getelementptr inbounds %struct.hi3559av100_clk_pll, ptr %0, i32 0, i32 13
  %76 = load i8, ptr %75, align 1
  %77 = zext i8 %76 to i32
  %78 = shl nsw i32 -1, %77
  %79 = xor i32 %78, -1
  %80 = getelementptr inbounds %struct.hi3559av100_clk_pll, ptr %0, i32 0, i32 12
  %81 = load i8, ptr %80, align 2
  %82 = zext i8 %81 to i32
  %83 = shl i32 %79, %82
  %84 = or i32 %83, %74
  %85 = xor i32 %84, -1
  %86 = and i32 %65, %85
  %87 = shl i32 %14, %73
  %88 = shl nuw i32 1, %82
  %89 = or i32 %88, %87
  %90 = or i32 %89, %86
  %91 = load ptr, ptr %63, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %91, i32 %90) #6, !srcloc !16
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unregister_gate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unregister_mux(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unregister_fixed_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_clk_del_provider(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @hi3559av100_shub_clk_register(ptr noundef %0) #2 {
  %2 = tail call ptr @ioremap(i32 noundef 402784256, i32 noundef 4096) #6
  %3 = getelementptr i8, ptr %2, i32 32
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #6, !srcloc !9
  %5 = or i32 %4, 33554432
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 %5) #6, !srcloc !16
  %6 = getelementptr i8, ptr %2, i32 28
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #6, !srcloc !9
  %8 = or i32 %7, 268435456
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %8) #6, !srcloc !16
  tail call void @iounmap(ptr noundef %2) #6
  %9 = tail call ptr @hisi_clk_alloc(ptr noundef %0, i32 noundef 50) #6
  %10 = icmp eq ptr %9, null
  br i1 %10, label %207, label %11

11:                                               ; preds = %1
  %12 = tail call i32 @hisi_clk_register_fixed_rate(ptr noundef nonnull @hi3559av100_shub_fixed_rate_clks, i32 noundef 13, ptr noundef nonnull %9) #6
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %11
  %15 = inttoptr i32 %12 to ptr
  br label %207

16:                                               ; preds = %11
  %17 = tail call i32 @hisi_clk_register_mux(ptr noundef nonnull @hi3559av100_shub_mux_clks, i32 noundef 2, ptr noundef nonnull %9) #6
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %125

19:                                               ; preds = %16
  %20 = tail call i32 @hisi_clk_register_divider(ptr noundef nonnull @hi3559av100_shub_div_clks, i32 noundef 2, ptr noundef nonnull %9) #6
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %111

22:                                               ; preds = %19
  %23 = tail call i32 @hisi_clk_register_gate(ptr noundef nonnull @hi3559av100_shub_gate_clks, i32 noundef 11, ptr noundef nonnull %9) #6
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %97

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %27 = load ptr, ptr %26, align 8
  %28 = tail call i32 @of_clk_add_provider(ptr noundef %27, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef nonnull %9) #6
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %207, label %30

30:                                               ; preds = %25
  %31 = load ptr, ptr %9, align 4
  %32 = load i32, ptr @hi3559av100_shub_gate_clks, align 4
  %33 = getelementptr ptr, ptr %31, i32 %32
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %30
  tail call void @clk_unregister_gate(ptr noundef nonnull %34) #6
  br label %37

37:                                               ; preds = %36, %30
  %38 = load i32, ptr getelementptr inbounds ([11 x %struct.hisi_gate_clock], ptr @hi3559av100_shub_gate_clks, i32 0, i32 1), align 4
  %39 = getelementptr ptr, ptr %31, i32 %38
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %37
  tail call void @clk_unregister_gate(ptr noundef nonnull %40) #6
  br label %43

43:                                               ; preds = %42, %37
  %44 = load i32, ptr getelementptr inbounds ([11 x %struct.hisi_gate_clock], ptr @hi3559av100_shub_gate_clks, i32 0, i32 2), align 4
  %45 = getelementptr ptr, ptr %31, i32 %44
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %43
  tail call void @clk_unregister_gate(ptr noundef nonnull %46) #6
  br label %49

49:                                               ; preds = %48, %43
  %50 = load i32, ptr getelementptr inbounds ([11 x %struct.hisi_gate_clock], ptr @hi3559av100_shub_gate_clks, i32 0, i32 3), align 4
  %51 = getelementptr ptr, ptr %31, i32 %50
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %49
  tail call void @clk_unregister_gate(ptr noundef nonnull %52) #6
  br label %55

55:                                               ; preds = %54, %49
  %56 = load i32, ptr getelementptr inbounds ([11 x %struct.hisi_gate_clock], ptr @hi3559av100_shub_gate_clks, i32 0, i32 4), align 4
  %57 = getelementptr ptr, ptr %31, i32 %56
  %58 = load ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %61, label %60

60:                                               ; preds = %55
  tail call void @clk_unregister_gate(ptr noundef nonnull %58) #6
  br label %61

61:                                               ; preds = %60, %55
  %62 = load i32, ptr getelementptr inbounds ([11 x %struct.hisi_gate_clock], ptr @hi3559av100_shub_gate_clks, i32 0, i32 5), align 4
  %63 = getelementptr ptr, ptr %31, i32 %62
  %64 = load ptr, ptr %63, align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %67, label %66

66:                                               ; preds = %61
  tail call void @clk_unregister_gate(ptr noundef nonnull %64) #6
  br label %67

67:                                               ; preds = %66, %61
  %68 = load i32, ptr getelementptr inbounds ([11 x %struct.hisi_gate_clock], ptr @hi3559av100_shub_gate_clks, i32 0, i32 6), align 4
  %69 = getelementptr ptr, ptr %31, i32 %68
  %70 = load ptr, ptr %69, align 4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %73, label %72

72:                                               ; preds = %67
  tail call void @clk_unregister_gate(ptr noundef nonnull %70) #6
  br label %73

73:                                               ; preds = %72, %67
  %74 = load i32, ptr getelementptr inbounds ([11 x %struct.hisi_gate_clock], ptr @hi3559av100_shub_gate_clks, i32 0, i32 7), align 4
  %75 = getelementptr ptr, ptr %31, i32 %74
  %76 = load ptr, ptr %75, align 4
  %77 = icmp eq ptr %76, null
  br i1 %77, label %79, label %78

78:                                               ; preds = %73
  tail call void @clk_unregister_gate(ptr noundef nonnull %76) #6
  br label %79

79:                                               ; preds = %78, %73
  %80 = load i32, ptr getelementptr inbounds ([11 x %struct.hisi_gate_clock], ptr @hi3559av100_shub_gate_clks, i32 0, i32 8), align 4
  %81 = getelementptr ptr, ptr %31, i32 %80
  %82 = load ptr, ptr %81, align 4
  %83 = icmp eq ptr %82, null
  br i1 %83, label %85, label %84

84:                                               ; preds = %79
  tail call void @clk_unregister_gate(ptr noundef nonnull %82) #6
  br label %85

85:                                               ; preds = %84, %79
  %86 = load i32, ptr getelementptr inbounds ([11 x %struct.hisi_gate_clock], ptr @hi3559av100_shub_gate_clks, i32 0, i32 9), align 4
  %87 = getelementptr ptr, ptr %31, i32 %86
  %88 = load ptr, ptr %87, align 4
  %89 = icmp eq ptr %88, null
  br i1 %89, label %91, label %90

90:                                               ; preds = %85
  tail call void @clk_unregister_gate(ptr noundef nonnull %88) #6
  br label %91

91:                                               ; preds = %90, %85
  %92 = load i32, ptr getelementptr inbounds ([11 x %struct.hisi_gate_clock], ptr @hi3559av100_shub_gate_clks, i32 0, i32 10), align 4
  %93 = getelementptr ptr, ptr %31, i32 %92
  %94 = load ptr, ptr %93, align 4
  %95 = icmp eq ptr %94, null
  br i1 %95, label %97, label %96

96:                                               ; preds = %91
  tail call void @clk_unregister_gate(ptr noundef nonnull %94) #6
  br label %97

97:                                               ; preds = %96, %91, %22
  %98 = phi i32 [ %23, %22 ], [ %28, %96 ], [ %28, %91 ]
  %99 = load ptr, ptr %9, align 4
  %100 = load i32, ptr @hi3559av100_shub_div_clks, align 4
  %101 = getelementptr ptr, ptr %99, i32 %100
  %102 = load ptr, ptr %101, align 4
  %103 = icmp eq ptr %102, null
  br i1 %103, label %105, label %104

104:                                              ; preds = %97
  tail call void @clk_unregister_divider(ptr noundef nonnull %102) #6
  br label %105

105:                                              ; preds = %104, %97
  %106 = load i32, ptr getelementptr inbounds ([2 x %struct.hisi_divider_clock], ptr @hi3559av100_shub_div_clks, i32 0, i32 1), align 4
  %107 = getelementptr ptr, ptr %99, i32 %106
  %108 = load ptr, ptr %107, align 4
  %109 = icmp eq ptr %108, null
  br i1 %109, label %111, label %110

110:                                              ; preds = %105
  tail call void @clk_unregister_divider(ptr noundef nonnull %108) #6
  br label %111

111:                                              ; preds = %110, %105, %19
  %112 = phi i32 [ %20, %19 ], [ %98, %105 ], [ %98, %110 ]
  %113 = load ptr, ptr %9, align 4
  %114 = load i32, ptr @hi3559av100_shub_mux_clks, align 4
  %115 = getelementptr ptr, ptr %113, i32 %114
  %116 = load ptr, ptr %115, align 4
  %117 = icmp eq ptr %116, null
  br i1 %117, label %119, label %118

118:                                              ; preds = %111
  tail call void @clk_unregister_mux(ptr noundef nonnull %116) #6
  br label %119

119:                                              ; preds = %118, %111
  %120 = load i32, ptr getelementptr inbounds ([2 x %struct.hisi_mux_clock], ptr @hi3559av100_shub_mux_clks, i32 0, i32 1), align 4
  %121 = getelementptr ptr, ptr %113, i32 %120
  %122 = load ptr, ptr %121, align 4
  %123 = icmp eq ptr %122, null
  br i1 %123, label %125, label %124

124:                                              ; preds = %119
  tail call void @clk_unregister_mux(ptr noundef nonnull %122) #6
  br label %125

125:                                              ; preds = %124, %119, %16
  %126 = phi i32 [ %17, %16 ], [ %112, %124 ], [ %112, %119 ]
  %127 = load ptr, ptr %9, align 4
  %128 = load i32, ptr @hi3559av100_shub_fixed_rate_clks, align 4
  %129 = getelementptr ptr, ptr %127, i32 %128
  %130 = load ptr, ptr %129, align 4
  %131 = icmp eq ptr %130, null
  br i1 %131, label %133, label %132

132:                                              ; preds = %125
  tail call void @clk_unregister_fixed_rate(ptr noundef nonnull %130) #6
  br label %133

133:                                              ; preds = %132, %125
  %134 = load i32, ptr getelementptr inbounds ([13 x %struct.hisi_fixed_rate_clock], ptr @hi3559av100_shub_fixed_rate_clks, i32 0, i32 1), align 4
  %135 = getelementptr ptr, ptr %127, i32 %134
  %136 = load ptr, ptr %135, align 4
  %137 = icmp eq ptr %136, null
  br i1 %137, label %139, label %138

138:                                              ; preds = %133
  tail call void @clk_unregister_fixed_rate(ptr noundef nonnull %136) #6
  br label %139

139:                                              ; preds = %138, %133
  %140 = load i32, ptr getelementptr inbounds ([13 x %struct.hisi_fixed_rate_clock], ptr @hi3559av100_shub_fixed_rate_clks, i32 0, i32 2), align 4
  %141 = getelementptr ptr, ptr %127, i32 %140
  %142 = load ptr, ptr %141, align 4
  %143 = icmp eq ptr %142, null
  br i1 %143, label %145, label %144

144:                                              ; preds = %139
  tail call void @clk_unregister_fixed_rate(ptr noundef nonnull %142) #6
  br label %145

145:                                              ; preds = %144, %139
  %146 = load i32, ptr getelementptr inbounds ([13 x %struct.hisi_fixed_rate_clock], ptr @hi3559av100_shub_fixed_rate_clks, i32 0, i32 3), align 4
  %147 = getelementptr ptr, ptr %127, i32 %146
  %148 = load ptr, ptr %147, align 4
  %149 = icmp eq ptr %148, null
  br i1 %149, label %151, label %150

150:                                              ; preds = %145
  tail call void @clk_unregister_fixed_rate(ptr noundef nonnull %148) #6
  br label %151

151:                                              ; preds = %150, %145
  %152 = load i32, ptr getelementptr inbounds ([13 x %struct.hisi_fixed_rate_clock], ptr @hi3559av100_shub_fixed_rate_clks, i32 0, i32 4), align 4
  %153 = getelementptr ptr, ptr %127, i32 %152
  %154 = load ptr, ptr %153, align 4
  %155 = icmp eq ptr %154, null
  br i1 %155, label %157, label %156

156:                                              ; preds = %151
  tail call void @clk_unregister_fixed_rate(ptr noundef nonnull %154) #6
  br label %157

157:                                              ; preds = %156, %151
  %158 = load i32, ptr getelementptr inbounds ([13 x %struct.hisi_fixed_rate_clock], ptr @hi3559av100_shub_fixed_rate_clks, i32 0, i32 5), align 4
  %159 = getelementptr ptr, ptr %127, i32 %158
  %160 = load ptr, ptr %159, align 4
  %161 = icmp eq ptr %160, null
  br i1 %161, label %163, label %162

162:                                              ; preds = %157
  tail call void @clk_unregister_fixed_rate(ptr noundef nonnull %160) #6
  br label %163

163:                                              ; preds = %162, %157
  %164 = load i32, ptr getelementptr inbounds ([13 x %struct.hisi_fixed_rate_clock], ptr @hi3559av100_shub_fixed_rate_clks, i32 0, i32 6), align 4
  %165 = getelementptr ptr, ptr %127, i32 %164
  %166 = load ptr, ptr %165, align 4
  %167 = icmp eq ptr %166, null
  br i1 %167, label %169, label %168

168:                                              ; preds = %163
  tail call void @clk_unregister_fixed_rate(ptr noundef nonnull %166) #6
  br label %169

169:                                              ; preds = %168, %163
  %170 = load i32, ptr getelementptr inbounds ([13 x %struct.hisi_fixed_rate_clock], ptr @hi3559av100_shub_fixed_rate_clks, i32 0, i32 7), align 4
  %171 = getelementptr ptr, ptr %127, i32 %170
  %172 = load ptr, ptr %171, align 4
  %173 = icmp eq ptr %172, null
  br i1 %173, label %175, label %174

174:                                              ; preds = %169
  tail call void @clk_unregister_fixed_rate(ptr noundef nonnull %172) #6
  br label %175

175:                                              ; preds = %174, %169
  %176 = load i32, ptr getelementptr inbounds ([13 x %struct.hisi_fixed_rate_clock], ptr @hi3559av100_shub_fixed_rate_clks, i32 0, i32 8), align 4
  %177 = getelementptr ptr, ptr %127, i32 %176
  %178 = load ptr, ptr %177, align 4
  %179 = icmp eq ptr %178, null
  br i1 %179, label %181, label %180

180:                                              ; preds = %175
  tail call void @clk_unregister_fixed_rate(ptr noundef nonnull %178) #6
  br label %181

181:                                              ; preds = %180, %175
  %182 = load i32, ptr getelementptr inbounds ([13 x %struct.hisi_fixed_rate_clock], ptr @hi3559av100_shub_fixed_rate_clks, i32 0, i32 9), align 4
  %183 = getelementptr ptr, ptr %127, i32 %182
  %184 = load ptr, ptr %183, align 4
  %185 = icmp eq ptr %184, null
  br i1 %185, label %187, label %186

186:                                              ; preds = %181
  tail call void @clk_unregister_fixed_rate(ptr noundef nonnull %184) #6
  br label %187

187:                                              ; preds = %186, %181
  %188 = load i32, ptr getelementptr inbounds ([13 x %struct.hisi_fixed_rate_clock], ptr @hi3559av100_shub_fixed_rate_clks, i32 0, i32 10), align 4
  %189 = getelementptr ptr, ptr %127, i32 %188
  %190 = load ptr, ptr %189, align 4
  %191 = icmp eq ptr %190, null
  br i1 %191, label %193, label %192

192:                                              ; preds = %187
  tail call void @clk_unregister_fixed_rate(ptr noundef nonnull %190) #6
  br label %193

193:                                              ; preds = %192, %187
  %194 = load i32, ptr getelementptr inbounds ([13 x %struct.hisi_fixed_rate_clock], ptr @hi3559av100_shub_fixed_rate_clks, i32 0, i32 11), align 4
  %195 = getelementptr ptr, ptr %127, i32 %194
  %196 = load ptr, ptr %195, align 4
  %197 = icmp eq ptr %196, null
  br i1 %197, label %199, label %198

198:                                              ; preds = %193
  tail call void @clk_unregister_fixed_rate(ptr noundef nonnull %196) #6
  br label %199

199:                                              ; preds = %198, %193
  %200 = load i32, ptr getelementptr inbounds ([13 x %struct.hisi_fixed_rate_clock], ptr @hi3559av100_shub_fixed_rate_clks, i32 0, i32 12), align 4
  %201 = getelementptr ptr, ptr %127, i32 %200
  %202 = load ptr, ptr %201, align 4
  %203 = icmp eq ptr %202, null
  br i1 %203, label %205, label %204

204:                                              ; preds = %199
  tail call void @clk_unregister_fixed_rate(ptr noundef nonnull %202) #6
  br label %205

205:                                              ; preds = %204, %199
  %206 = inttoptr i32 %126 to ptr
  br label %207

207:                                              ; preds = %205, %25, %14, %1
  %208 = phi ptr [ %15, %14 ], [ %206, %205 ], [ %9, %25 ], [ inttoptr (i32 -12 to ptr), %1 ]
  ret ptr %208
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hi3559av100_shub_clk_unregister(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %5 = load ptr, ptr %4, align 8
  tail call void @of_clk_del_provider(ptr noundef %5) #6
  %6 = load ptr, ptr %3, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = load i32, ptr @hi3559av100_shub_gate_clks, align 4
  %9 = getelementptr ptr, ptr %7, i32 %8
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  tail call void @clk_unregister_gate(ptr noundef nonnull %10) #6
  br label %13

13:                                               ; preds = %12, %1
  %14 = load i32, ptr getelementptr inbounds ([11 x %struct.hisi_gate_clock], ptr @hi3559av100_shub_gate_clks, i32 0, i32 1), align 4
  %15 = getelementptr ptr, ptr %7, i32 %14
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %13
  tail call void @clk_unregister_gate(ptr noundef nonnull %16) #6
  br label %19

19:                                               ; preds = %18, %13
  %20 = load i32, ptr getelementptr inbounds ([11 x %struct.hisi_gate_clock], ptr @hi3559av100_shub_gate_clks, i32 0, i32 2), align 4
  %21 = getelementptr ptr, ptr %7, i32 %20
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %19
  tail call void @clk_unregister_gate(ptr noundef nonnull %22) #6
  br label %25

25:                                               ; preds = %24, %19
  %26 = load i32, ptr getelementptr inbounds ([11 x %struct.hisi_gate_clock], ptr @hi3559av100_shub_gate_clks, i32 0, i32 3), align 4
  %27 = getelementptr ptr, ptr %7, i32 %26
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %25
  tail call void @clk_unregister_gate(ptr noundef nonnull %28) #6
  br label %31

31:                                               ; preds = %30, %25
  %32 = load i32, ptr getelementptr inbounds ([11 x %struct.hisi_gate_clock], ptr @hi3559av100_shub_gate_clks, i32 0, i32 4), align 4
  %33 = getelementptr ptr, ptr %7, i32 %32
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %31
  tail call void @clk_unregister_gate(ptr noundef nonnull %34) #6
  br label %37

37:                                               ; preds = %36, %31
  %38 = load i32, ptr getelementptr inbounds ([11 x %struct.hisi_gate_clock], ptr @hi3559av100_shub_gate_clks, i32 0, i32 5), align 4
  %39 = getelementptr ptr, ptr %7, i32 %38
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %37
  tail call void @clk_unregister_gate(ptr noundef nonnull %40) #6
  br label %43

43:                                               ; preds = %42, %37
  %44 = load i32, ptr getelementptr inbounds ([11 x %struct.hisi_gate_clock], ptr @hi3559av100_shub_gate_clks, i32 0, i32 6), align 4
  %45 = getelementptr ptr, ptr %7, i32 %44
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %43
  tail call void @clk_unregister_gate(ptr noundef nonnull %46) #6
  br label %49

49:                                               ; preds = %48, %43
  %50 = load i32, ptr getelementptr inbounds ([11 x %struct.hisi_gate_clock], ptr @hi3559av100_shub_gate_clks, i32 0, i32 7), align 4
  %51 = getelementptr ptr, ptr %7, i32 %50
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %49
  tail call void @clk_unregister_gate(ptr noundef nonnull %52) #6
  br label %55

55:                                               ; preds = %54, %49
  %56 = load i32, ptr getelementptr inbounds ([11 x %struct.hisi_gate_clock], ptr @hi3559av100_shub_gate_clks, i32 0, i32 8), align 4
  %57 = getelementptr ptr, ptr %7, i32 %56
  %58 = load ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %61, label %60

60:                                               ; preds = %55
  tail call void @clk_unregister_gate(ptr noundef nonnull %58) #6
  br label %61

61:                                               ; preds = %60, %55
  %62 = load i32, ptr getelementptr inbounds ([11 x %struct.hisi_gate_clock], ptr @hi3559av100_shub_gate_clks, i32 0, i32 9), align 4
  %63 = getelementptr ptr, ptr %7, i32 %62
  %64 = load ptr, ptr %63, align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %67, label %66

66:                                               ; preds = %61
  tail call void @clk_unregister_gate(ptr noundef nonnull %64) #6
  br label %67

67:                                               ; preds = %66, %61
  %68 = load i32, ptr getelementptr inbounds ([11 x %struct.hisi_gate_clock], ptr @hi3559av100_shub_gate_clks, i32 0, i32 10), align 4
  %69 = getelementptr ptr, ptr %7, i32 %68
  %70 = load ptr, ptr %69, align 4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %73, label %72

72:                                               ; preds = %67
  tail call void @clk_unregister_gate(ptr noundef nonnull %70) #6
  br label %73

73:                                               ; preds = %72, %67
  %74 = load ptr, ptr %3, align 4
  %75 = load ptr, ptr %74, align 4
  %76 = load i32, ptr @hi3559av100_shub_div_clks, align 4
  %77 = getelementptr ptr, ptr %75, i32 %76
  %78 = load ptr, ptr %77, align 4
  %79 = icmp eq ptr %78, null
  br i1 %79, label %81, label %80

80:                                               ; preds = %73
  tail call void @clk_unregister_divider(ptr noundef nonnull %78) #6
  br label %81

81:                                               ; preds = %80, %73
  %82 = load i32, ptr getelementptr inbounds ([2 x %struct.hisi_divider_clock], ptr @hi3559av100_shub_div_clks, i32 0, i32 1), align 4
  %83 = getelementptr ptr, ptr %75, i32 %82
  %84 = load ptr, ptr %83, align 4
  %85 = icmp eq ptr %84, null
  br i1 %85, label %87, label %86

86:                                               ; preds = %81
  tail call void @clk_unregister_divider(ptr noundef nonnull %84) #6
  br label %87

87:                                               ; preds = %86, %81
  %88 = load ptr, ptr %3, align 4
  %89 = load ptr, ptr %88, align 4
  %90 = load i32, ptr @hi3559av100_shub_mux_clks, align 4
  %91 = getelementptr ptr, ptr %89, i32 %90
  %92 = load ptr, ptr %91, align 4
  %93 = icmp eq ptr %92, null
  br i1 %93, label %95, label %94

94:                                               ; preds = %87
  tail call void @clk_unregister_mux(ptr noundef nonnull %92) #6
  br label %95

95:                                               ; preds = %94, %87
  %96 = load i32, ptr getelementptr inbounds ([2 x %struct.hisi_mux_clock], ptr @hi3559av100_shub_mux_clks, i32 0, i32 1), align 4
  %97 = getelementptr ptr, ptr %89, i32 %96
  %98 = load ptr, ptr %97, align 4
  %99 = icmp eq ptr %98, null
  br i1 %99, label %101, label %100

100:                                              ; preds = %95
  tail call void @clk_unregister_mux(ptr noundef nonnull %98) #6
  br label %101

101:                                              ; preds = %100, %95
  %102 = load ptr, ptr %3, align 4
  %103 = load ptr, ptr %102, align 4
  %104 = load i32, ptr @hi3559av100_shub_fixed_rate_clks, align 4
  %105 = getelementptr ptr, ptr %103, i32 %104
  %106 = load ptr, ptr %105, align 4
  %107 = icmp eq ptr %106, null
  br i1 %107, label %109, label %108

108:                                              ; preds = %101
  tail call void @clk_unregister_fixed_rate(ptr noundef nonnull %106) #6
  br label %109

109:                                              ; preds = %108, %101
  %110 = load i32, ptr getelementptr inbounds ([13 x %struct.hisi_fixed_rate_clock], ptr @hi3559av100_shub_fixed_rate_clks, i32 0, i32 1), align 4
  %111 = getelementptr ptr, ptr %103, i32 %110
  %112 = load ptr, ptr %111, align 4
  %113 = icmp eq ptr %112, null
  br i1 %113, label %115, label %114

114:                                              ; preds = %109
  tail call void @clk_unregister_fixed_rate(ptr noundef nonnull %112) #6
  br label %115

115:                                              ; preds = %114, %109
  %116 = load i32, ptr getelementptr inbounds ([13 x %struct.hisi_fixed_rate_clock], ptr @hi3559av100_shub_fixed_rate_clks, i32 0, i32 2), align 4
  %117 = getelementptr ptr, ptr %103, i32 %116
  %118 = load ptr, ptr %117, align 4
  %119 = icmp eq ptr %118, null
  br i1 %119, label %121, label %120

120:                                              ; preds = %115
  tail call void @clk_unregister_fixed_rate(ptr noundef nonnull %118) #6
  br label %121

121:                                              ; preds = %120, %115
  %122 = load i32, ptr getelementptr inbounds ([13 x %struct.hisi_fixed_rate_clock], ptr @hi3559av100_shub_fixed_rate_clks, i32 0, i32 3), align 4
  %123 = getelementptr ptr, ptr %103, i32 %122
  %124 = load ptr, ptr %123, align 4
  %125 = icmp eq ptr %124, null
  br i1 %125, label %127, label %126

126:                                              ; preds = %121
  tail call void @clk_unregister_fixed_rate(ptr noundef nonnull %124) #6
  br label %127

127:                                              ; preds = %126, %121
  %128 = load i32, ptr getelementptr inbounds ([13 x %struct.hisi_fixed_rate_clock], ptr @hi3559av100_shub_fixed_rate_clks, i32 0, i32 4), align 4
  %129 = getelementptr ptr, ptr %103, i32 %128
  %130 = load ptr, ptr %129, align 4
  %131 = icmp eq ptr %130, null
  br i1 %131, label %133, label %132

132:                                              ; preds = %127
  tail call void @clk_unregister_fixed_rate(ptr noundef nonnull %130) #6
  br label %133

133:                                              ; preds = %132, %127
  %134 = load i32, ptr getelementptr inbounds ([13 x %struct.hisi_fixed_rate_clock], ptr @hi3559av100_shub_fixed_rate_clks, i32 0, i32 5), align 4
  %135 = getelementptr ptr, ptr %103, i32 %134
  %136 = load ptr, ptr %135, align 4
  %137 = icmp eq ptr %136, null
  br i1 %137, label %139, label %138

138:                                              ; preds = %133
  tail call void @clk_unregister_fixed_rate(ptr noundef nonnull %136) #6
  br label %139

139:                                              ; preds = %138, %133
  %140 = load i32, ptr getelementptr inbounds ([13 x %struct.hisi_fixed_rate_clock], ptr @hi3559av100_shub_fixed_rate_clks, i32 0, i32 6), align 4
  %141 = getelementptr ptr, ptr %103, i32 %140
  %142 = load ptr, ptr %141, align 4
  %143 = icmp eq ptr %142, null
  br i1 %143, label %145, label %144

144:                                              ; preds = %139
  tail call void @clk_unregister_fixed_rate(ptr noundef nonnull %142) #6
  br label %145

145:                                              ; preds = %144, %139
  %146 = load i32, ptr getelementptr inbounds ([13 x %struct.hisi_fixed_rate_clock], ptr @hi3559av100_shub_fixed_rate_clks, i32 0, i32 7), align 4
  %147 = getelementptr ptr, ptr %103, i32 %146
  %148 = load ptr, ptr %147, align 4
  %149 = icmp eq ptr %148, null
  br i1 %149, label %151, label %150

150:                                              ; preds = %145
  tail call void @clk_unregister_fixed_rate(ptr noundef nonnull %148) #6
  br label %151

151:                                              ; preds = %150, %145
  %152 = load i32, ptr getelementptr inbounds ([13 x %struct.hisi_fixed_rate_clock], ptr @hi3559av100_shub_fixed_rate_clks, i32 0, i32 8), align 4
  %153 = getelementptr ptr, ptr %103, i32 %152
  %154 = load ptr, ptr %153, align 4
  %155 = icmp eq ptr %154, null
  br i1 %155, label %157, label %156

156:                                              ; preds = %151
  tail call void @clk_unregister_fixed_rate(ptr noundef nonnull %154) #6
  br label %157

157:                                              ; preds = %156, %151
  %158 = load i32, ptr getelementptr inbounds ([13 x %struct.hisi_fixed_rate_clock], ptr @hi3559av100_shub_fixed_rate_clks, i32 0, i32 9), align 4
  %159 = getelementptr ptr, ptr %103, i32 %158
  %160 = load ptr, ptr %159, align 4
  %161 = icmp eq ptr %160, null
  br i1 %161, label %163, label %162

162:                                              ; preds = %157
  tail call void @clk_unregister_fixed_rate(ptr noundef nonnull %160) #6
  br label %163

163:                                              ; preds = %162, %157
  %164 = load i32, ptr getelementptr inbounds ([13 x %struct.hisi_fixed_rate_clock], ptr @hi3559av100_shub_fixed_rate_clks, i32 0, i32 10), align 4
  %165 = getelementptr ptr, ptr %103, i32 %164
  %166 = load ptr, ptr %165, align 4
  %167 = icmp eq ptr %166, null
  br i1 %167, label %169, label %168

168:                                              ; preds = %163
  tail call void @clk_unregister_fixed_rate(ptr noundef nonnull %166) #6
  br label %169

169:                                              ; preds = %168, %163
  %170 = load i32, ptr getelementptr inbounds ([13 x %struct.hisi_fixed_rate_clock], ptr @hi3559av100_shub_fixed_rate_clks, i32 0, i32 11), align 4
  %171 = getelementptr ptr, ptr %103, i32 %170
  %172 = load ptr, ptr %171, align 4
  %173 = icmp eq ptr %172, null
  br i1 %173, label %175, label %174

174:                                              ; preds = %169
  tail call void @clk_unregister_fixed_rate(ptr noundef nonnull %172) #6
  br label %175

175:                                              ; preds = %174, %169
  %176 = load i32, ptr getelementptr inbounds ([13 x %struct.hisi_fixed_rate_clock], ptr @hi3559av100_shub_fixed_rate_clks, i32 0, i32 12), align 4
  %177 = getelementptr ptr, ptr %103, i32 %176
  %178 = load ptr, ptr %177, align 4
  %179 = icmp eq ptr %178, null
  br i1 %179, label %181, label %180

180:                                              ; preds = %175
  tail call void @clk_unregister_fixed_rate(ptr noundef nonnull %178) #6
  br label %181

181:                                              ; preds = %180, %175
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hisi_clk_register_divider(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unregister_divider(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { cold nounwind }
attributes #8 = { nounwind readnone }

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
!9 = !{i64 3985782}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i64 2148675308, i64 2148675588, i64 2148675922, i64 2148676256}
!12 = !{i64 1189477, i64 1189504}
!13 = !{i64 1190172, i64 1190199, i64 1190232, i64 1190253, i64 1190280, i64 1190306}
!14 = !{i64 1189647, i64 1189674}
!15 = !{i64 1189987, i64 1190014, i64 1190048, i64 1190069}
!16 = !{i64 3985364}
