; ModuleID = '/llk/IR/drivers/clk/hisilicon/crg-hi3798cv200.c_pt.bc'
source_filename = "../drivers/clk/hisilicon/crg-hi3798cv200.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.hisi_crg_funcs = type { ptr, ptr }
%struct.hisi_phase_clock = type { i32, ptr, ptr, i32, i32, i8, i8, ptr, ptr, i8 }
%struct.hisi_fixed_rate_clock = type { i32, ptr, ptr, i32, i32 }
%struct.hisi_mux_clock = type { i32, ptr, ptr, i8, i32, i32, i8, i8, i8, ptr, ptr }
%struct.hisi_gate_clock = type { i32, ptr, ptr, i32, i32, i8, i8, ptr }
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

@__initcall__kmod_crg_hi3798cv200__162_392_hi3798cv200_crg_init1 = internal global ptr @hi3798cv200_crg_init, section ".initcall1.init", align 4
@hi3798cv200_crg_driver = internal global %struct.platform_driver { ptr @hi3798cv200_crg_probe, ptr @hi3798cv200_crg_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @hi3798cv200_crg_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_hi3798cv200_crg_exit = internal global ptr @hi3798cv200_crg_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file163 = internal constant [59 x i8] c"crg_hi3798cv200.file=drivers/clk/hisilicon/crg-hi3798cv200\00", section ".modinfo", align 1
@__UNIQUE_ID_license164 = internal constant [31 x i8] c"crg_hi3798cv200.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description165 = internal constant [61 x i8] c"crg_hi3798cv200.description=HiSilicon Hi3798CV200 CRG Driver\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [16 x i8] c"hi3798cv200-crg\00", align 1
@hi3798cv200_crg_match_table = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"hisilicon,hi3798cv200-crg\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @hi3798cv200_crg_funcs }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"hisilicon,hi3798cv200-sysctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @hi3798cv200_sysctrl_funcs }, %struct.of_device_id zeroinitializer], align 4
@hi3798cv200_crg_funcs = internal constant %struct.hisi_crg_funcs { ptr @hi3798cv200_clk_register, ptr @hi3798cv200_clk_unregister }, align 4
@hi3798cv200_sysctrl_funcs = internal constant %struct.hisi_crg_funcs { ptr @hi3798cv200_sysctrl_clk_register, ptr @hi3798cv200_sysctrl_clk_unregister }, align 4
@hi3798cv200_phase_clks = internal global [2 x %struct.hisi_phase_clock] [%struct.hisi_phase_clock { i32 20, ptr @.str.1, ptr @.str.2, i32 4, i32 160, i8 12, i8 3, ptr @mmc_phase_degrees, ptr @mmc_phase_regvals, i8 8 }, %struct.hisi_phase_clock { i32 19, ptr @.str.3, ptr @.str.2, i32 4, i32 160, i8 16, i8 3, ptr @mmc_phase_degrees, ptr @mmc_phase_regvals, i8 8 }], align 4
@hi3798cv200_fixed_rate_clks = internal constant [15 x %struct.hisi_fixed_rate_clock] [%struct.hisi_fixed_rate_clock { i32 0, ptr @.str.4, ptr null, i32 0, i32 24000000 }, %struct.hisi_fixed_rate_clock { i32 1, ptr @.str.5, ptr null, i32 0, i32 100000000 }, %struct.hisi_fixed_rate_clock { i32 2, ptr @.str.6, ptr null, i32 0, i32 200000000 }, %struct.hisi_fixed_rate_clock { i32 81, ptr @.str.7, ptr null, i32 0, i32 12000000 }, %struct.hisi_fixed_rate_clock { i32 65, ptr @.str.8, ptr null, i32 0, i32 24000000 }, %struct.hisi_fixed_rate_clock { i32 66, ptr @.str.9, ptr null, i32 0, i32 25000000 }, %struct.hisi_fixed_rate_clock { i32 82, ptr @.str.10, ptr null, i32 0, i32 48000000 }, %struct.hisi_fixed_rate_clock { i32 67, ptr @.str.11, ptr null, i32 0, i32 50000000 }, %struct.hisi_fixed_rate_clock { i32 83, ptr @.str.12, ptr null, i32 0, i32 60000000 }, %struct.hisi_fixed_rate_clock { i32 68, ptr @.str.13, ptr null, i32 0, i32 75000000 }, %struct.hisi_fixed_rate_clock { i32 69, ptr @.str.14, ptr null, i32 0, i32 100000000 }, %struct.hisi_fixed_rate_clock { i32 70, ptr @.str.15, ptr null, i32 0, i32 150000000 }, %struct.hisi_fixed_rate_clock { i32 84, ptr @.str.16, ptr null, i32 0, i32 165000000 }, %struct.hisi_fixed_rate_clock { i32 71, ptr @.str.17, ptr null, i32 0, i32 200000000 }, %struct.hisi_fixed_rate_clock { i32 72, ptr @.str.18, ptr null, i32 0, i32 250000000 }], align 4
@hi3798cv200_mux_clks = internal global [4 x %struct.hisi_mux_clock] [%struct.hisi_mux_clock { i32 75, ptr @.str.19, ptr @mmc_mux_p, i8 5, i32 4, i32 160, i8 8, i8 3, i8 0, ptr @mmc_mux_table, ptr null }, %struct.hisi_mux_clock { i32 86, ptr @.str.20, ptr @comphy_mux_p, i8 2, i32 4, i32 392, i8 2, i8 2, i8 0, ptr @comphy_mux_table, ptr null }, %struct.hisi_mux_clock { i32 80, ptr @.str.21, ptr @comphy_mux_p, i8 2, i32 4, i32 392, i8 10, i8 2, i8 0, ptr @comphy_mux_table, ptr null }, %struct.hisi_mux_clock { i32 85, ptr @.str.22, ptr @sdio_mux_p, i8 4, i32 4, i32 156, i8 8, i8 2, i8 0, ptr @sdio_mux_table, ptr null }], align 4
@hi3798cv200_gate_clks = internal constant [41 x %struct.hisi_gate_clock] [%struct.hisi_gate_clock { i32 4, ptr @.str.23, ptr @.str.13, i32 4, i32 104, i8 4, i8 0, ptr null }, %struct.hisi_gate_clock { i32 6, ptr @.str.24, ptr @.str.5, i32 4, i32 108, i8 4, i8 0, ptr null }, %struct.hisi_gate_clock { i32 7, ptr @.str.25, ptr @.str.5, i32 4, i32 108, i8 8, i8 0, ptr null }, %struct.hisi_gate_clock { i32 8, ptr @.str.26, ptr @.str.5, i32 4, i32 108, i8 12, i8 0, ptr null }, %struct.hisi_gate_clock { i32 9, ptr @.str.27, ptr @.str.5, i32 4, i32 108, i8 16, i8 0, ptr null }, %struct.hisi_gate_clock { i32 10, ptr @.str.28, ptr @.str.5, i32 4, i32 108, i8 20, i8 0, ptr null }, %struct.hisi_gate_clock { i32 12, ptr @.str.29, ptr @.str.5, i32 4, i32 112, i8 0, i8 0, ptr null }, %struct.hisi_gate_clock { i32 21, ptr @.str.30, ptr @.str.17, i32 4, i32 156, i8 0, i8 0, ptr null }, %struct.hisi_gate_clock { i32 22, ptr @.str.31, ptr @.str.22, i32 4, i32 156, i8 1, i8 0, ptr null }, %struct.hisi_gate_clock { i32 17, ptr @.str.32, ptr @.str.17, i32 4, i32 160, i8 0, i8 0, ptr null }, %struct.hisi_gate_clock { i32 18, ptr @.str.2, ptr @.str.19, i32 4, i32 160, i8 1, i8 0, ptr null }, %struct.hisi_gate_clock { i32 28, ptr @.str.33, ptr @.str.17, i32 4, i32 396, i8 0, i8 0, ptr null }, %struct.hisi_gate_clock { i32 27, ptr @.str.34, ptr @.str.14, i32 4, i32 396, i8 1, i8 0, ptr null }, %struct.hisi_gate_clock { i32 26, ptr @.str.35, ptr @.str.18, i32 4, i32 396, i8 2, i8 0, ptr null }, %struct.hisi_gate_clock { i32 25, ptr @.str.36, ptr @.str.8, i32 4, i32 396, i8 3, i8 0, ptr null }, %struct.hisi_gate_clock { i32 76, ptr @.str.37, ptr null, i32 4, i32 204, i8 5, i8 0, ptr null }, %struct.hisi_gate_clock { i32 77, ptr @.str.38, ptr @.str.37, i32 4, i32 204, i8 0, i8 0, ptr null }, %struct.hisi_gate_clock { i32 78, ptr @.str.39, ptr @.str.38, i32 4, i32 204, i8 1, i8 0, ptr null }, %struct.hisi_gate_clock { i32 79, ptr @.str.40, ptr @.str.38, i32 4, i32 204, i8 2, i8 0, ptr null }, %struct.hisi_gate_clock { i32 29, ptr @.str.41, ptr @.str.39, i32 4, i32 204, i8 3, i8 0, ptr null }, %struct.hisi_gate_clock { i32 30, ptr @.str.42, ptr @.str.39, i32 4, i32 204, i8 24, i8 0, ptr null }, %struct.hisi_gate_clock { i32 31, ptr @.str.43, ptr @.str.40, i32 4, i32 204, i8 4, i8 0, ptr null }, %struct.hisi_gate_clock { i32 32, ptr @.str.44, ptr @.str.40, i32 4, i32 204, i8 25, i8 0, ptr null }, %struct.hisi_gate_clock { i32 42, ptr @.str.45, ptr @.str.20, i32 4, i32 392, i8 0, i8 0, ptr null }, %struct.hisi_gate_clock { i32 33, ptr @.str.46, ptr @.str.21, i32 4, i32 392, i8 8, i8 0, ptr null }, %struct.hisi_gate_clock { i32 34, ptr @.str.47, ptr @.str.6, i32 4, i32 184, i8 0, i8 0, ptr null }, %struct.hisi_gate_clock { i32 35, ptr @.str.48, ptr @.str.12, i32 4, i32 184, i8 4, i8 0, ptr null }, %struct.hisi_gate_clock { i32 37, ptr @.str.49, ptr @.str.7, i32 4, i32 184, i8 2, i8 0, ptr null }, %struct.hisi_gate_clock { i32 38, ptr @.str.50, ptr @.str.10, i32 4, i32 184, i8 1, i8 0, ptr null }, %struct.hisi_gate_clock { i32 36, ptr @.str.51, ptr @.str.12, i32 4, i32 184, i8 5, i8 0, ptr null }, %struct.hisi_gate_clock { i32 39, ptr @.str.52, ptr @.str.12, i32 4, i32 184, i8 3, i8 0, ptr null }, %struct.hisi_gate_clock { i32 40, ptr @.str.53, ptr @.str.8, i32 4, i32 188, i8 0, i8 0, ptr null }, %struct.hisi_gate_clock { i32 41, ptr @.str.54, ptr @.str.8, i32 4, i32 188, i8 2, i8 0, ptr null }, %struct.hisi_gate_clock { i32 43, ptr @.str.55, ptr null, i32 4, i32 176, i8 0, i8 0, ptr null }, %struct.hisi_gate_clock { i32 44, ptr @.str.56, ptr null, i32 4, i32 176, i8 4, i8 0, ptr null }, %struct.hisi_gate_clock { i32 45, ptr @.str.57, ptr null, i32 4, i32 176, i8 3, i8 0, ptr null }, %struct.hisi_gate_clock { i32 46, ptr @.str.58, ptr null, i32 4, i32 176, i8 2, i8 0, ptr null }, %struct.hisi_gate_clock { i32 47, ptr @.str.59, ptr null, i32 4, i32 176, i8 16, i8 0, ptr null }, %struct.hisi_gate_clock { i32 48, ptr @.str.60, ptr null, i32 4, i32 176, i8 20, i8 0, ptr null }, %struct.hisi_gate_clock { i32 49, ptr @.str.61, ptr null, i32 4, i32 176, i8 19, i8 0, ptr null }, %struct.hisi_gate_clock { i32 50, ptr @.str.62, ptr null, i32 4, i32 176, i8 18, i8 0, ptr null }], align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"mmc_sample\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"clk_mmc_ciu\00", align 1
@mmc_phase_degrees = internal global [8 x i32] [i32 0, i32 45, i32 90, i32 135, i32 180, i32 225, i32 270, i32 315], align 4
@mmc_phase_regvals = internal global [8 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7], align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"mmc_drive\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"clk_osc\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"clk_apb\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"clk_ahb\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"12m\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"24m\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"25m\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"48m\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"50m\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"60m\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"75m\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"100m\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"150m\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"166p5m\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"200m\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"250m\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"mmc_mux\00", align 1
@mmc_mux_p = internal constant [5 x ptr] [ptr @.str.14, ptr @.str.11, ptr @.str.9, ptr @.str.17, ptr @.str.15], align 4
@mmc_mux_table = internal global [5 x i32] [i32 0, i32 1, i32 2, i32 3, i32 6], align 4
@.str.20 = private unnamed_addr constant [13 x i8] c"combphy0_mux\00", align 1
@comphy_mux_p = internal constant [2 x ptr] [ptr @.str.14, ptr @.str.9], align 4
@comphy_mux_table = internal global [2 x i32] [i32 2, i32 3], align 4
@.str.21 = private unnamed_addr constant [13 x i8] c"combphy1_mux\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"sdio0_mux\00", align 1
@sdio_mux_p = internal constant [4 x ptr] [ptr @.str.14, ptr @.str.11, ptr @.str.15, ptr @.str.16], align 4
@sdio_mux_table = internal global [4 x i32] [i32 0, i32 1, i32 2, i32 3], align 4
@.str.23 = private unnamed_addr constant [10 x i8] c"clk_uart2\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"clk_i2c0\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"clk_i2c1\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"clk_i2c2\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"clk_i2c3\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"clk_i2c4\00", align 1
@.str.29 = private unnamed_addr constant [9 x i8] c"clk_spi0\00", align 1
@.str.30 = private unnamed_addr constant [14 x i8] c"clk_sdio0_biu\00", align 1
@.str.31 = private unnamed_addr constant [14 x i8] c"clk_sdio0_ciu\00", align 1
@.str.32 = private unnamed_addr constant [12 x i8] c"clk_mmc_biu\00", align 1
@.str.33 = private unnamed_addr constant [13 x i8] c"clk_pcie_bus\00", align 1
@.str.34 = private unnamed_addr constant [13 x i8] c"clk_pcie_sys\00", align 1
@.str.35 = private unnamed_addr constant [14 x i8] c"clk_pcie_pipe\00", align 1
@.str.36 = private unnamed_addr constant [13 x i8] c"clk_pcie_aux\00", align 1
@.str.37 = private unnamed_addr constant [8 x i8] c"clk_pub\00", align 1
@.str.38 = private unnamed_addr constant [8 x i8] c"clk_bus\00", align 1
@.str.39 = private unnamed_addr constant [11 x i8] c"clk_bus_m0\00", align 1
@.str.40 = private unnamed_addr constant [11 x i8] c"clk_bus_m1\00", align 1
@.str.41 = private unnamed_addr constant [9 x i8] c"clk_mac0\00", align 1
@.str.42 = private unnamed_addr constant [11 x i8] c"clk_macif0\00", align 1
@.str.43 = private unnamed_addr constant [9 x i8] c"clk_mac1\00", align 1
@.str.44 = private unnamed_addr constant [11 x i8] c"clk_macif1\00", align 1
@.str.45 = private unnamed_addr constant [13 x i8] c"clk_combphy0\00", align 1
@.str.46 = private unnamed_addr constant [13 x i8] c"clk_combphy1\00", align 1
@.str.47 = private unnamed_addr constant [11 x i8] c"clk_u2_bus\00", align 1
@.str.48 = private unnamed_addr constant [11 x i8] c"clk_u2_phy\00", align 1
@.str.49 = private unnamed_addr constant [11 x i8] c"clk_u2_12m\00", align 1
@.str.50 = private unnamed_addr constant [11 x i8] c"clk_u2_48m\00", align 1
@.str.51 = private unnamed_addr constant [12 x i8] c"clk_u2_utmi\00", align 1
@.str.52 = private unnamed_addr constant [16 x i8] c"clk_u2_otg_utmi\00", align 1
@.str.53 = private unnamed_addr constant [16 x i8] c"clk_u2_phy1_ref\00", align 1
@.str.54 = private unnamed_addr constant [16 x i8] c"clk_u2_phy2_ref\00", align 1
@.str.55 = private unnamed_addr constant [11 x i8] c"clk_u3_bus\00", align 1
@.str.56 = private unnamed_addr constant [12 x i8] c"clk_u3_utmi\00", align 1
@.str.57 = private unnamed_addr constant [12 x i8] c"clk_u3_pipe\00", align 1
@.str.58 = private unnamed_addr constant [15 x i8] c"clk_u3_suspend\00", align 1
@.str.59 = private unnamed_addr constant [12 x i8] c"clk_u3_bus1\00", align 1
@.str.60 = private unnamed_addr constant [13 x i8] c"clk_u3_utmi1\00", align 1
@.str.61 = private unnamed_addr constant [13 x i8] c"clk_u3_pipe1\00", align 1
@.str.62 = private unnamed_addr constant [16 x i8] c"clk_u3_suspend1\00", align 1
@hi3798cv200_sysctrl_gate_clks = internal constant [3 x %struct.hisi_gate_clock] [%struct.hisi_gate_clock { i32 2, ptr @.str.63, ptr @.str.8, i32 4, i32 72, i8 4, i8 0, ptr null }, %struct.hisi_gate_clock { i32 3, ptr @.str.64, ptr @.str.8, i32 4, i32 72, i8 6, i8 0, ptr null }, %struct.hisi_gate_clock { i32 5, ptr @.str.65, ptr @.str.13, i32 4, i32 72, i8 10, i8 0, ptr null }], align 4
@.str.63 = private unnamed_addr constant [7 x i8] c"clk_ir\00", align 1
@.str.64 = private unnamed_addr constant [12 x i8] c"clk_timer01\00", align 1
@.str.65 = private unnamed_addr constant [10 x i8] c"clk_uart0\00", align 1
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID_description165, ptr @__UNIQUE_ID_file163, ptr @__UNIQUE_ID_license164, ptr @__exitcall_hi3798cv200_crg_exit, ptr @__initcall__kmod_crg_hi3798cv200__162_392_hi3798cv200_crg_init1, ptr @hi3798cv200_crg_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @hi3798cv200_crg_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @hi3798cv200_crg_driver, ptr noundef null) #4
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @hi3798cv200_crg_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @hi3798cv200_crg_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hi3798cv200_crg_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 12, i32 noundef 3264) #4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %21, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @of_device_get_match_data(ptr noundef %2) #4
  %7 = getelementptr inbounds %struct.hisi_crg_dev, ptr %3, i32 0, i32 2
  store ptr %6, ptr %7, align 4
  %8 = icmp eq ptr %6, null
  br i1 %8, label %21, label %9

9:                                                ; preds = %5
  %10 = tail call ptr @hisi_reset_init(ptr noundef %0) #4
  %11 = getelementptr inbounds %struct.hisi_crg_dev, ptr %3, i32 0, i32 1
  store ptr %10, ptr %11, align 4
  %12 = icmp eq ptr %10, null
  br i1 %12, label %21, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr %6, align 4
  %15 = tail call ptr %14(ptr noundef %0) #4
  store ptr %15, ptr %3, align 4
  %16 = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  tail call void @hisi_reset_exit(ptr noundef nonnull %10) #4
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
define internal i32 @hi3798cv200_crg_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.hisi_crg_dev, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  tail call void @hisi_reset_exit(ptr noundef %5) #4
  %6 = getelementptr inbounds %struct.hisi_crg_dev, ptr %3, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.hisi_crg_funcs, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void %9(ptr noundef %0) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hisi_reset_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hisi_reset_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @hi3798cv200_clk_register(ptr noundef %0) #2 {
  %2 = tail call ptr @hisi_clk_alloc(ptr noundef %0, i32 noundef 128) #4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %68, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %6 = tail call i32 @hisi_clk_register_phase(ptr noundef %5, ptr noundef nonnull @hi3798cv200_phase_clks, i32 noundef 2, ptr noundef nonnull %2) #4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %4
  %9 = inttoptr i32 %6 to ptr
  br label %68

10:                                               ; preds = %4
  %11 = tail call i32 @hisi_clk_register_fixed_rate(ptr noundef nonnull @hi3798cv200_fixed_rate_clks, i32 noundef 15, ptr noundef nonnull %2) #4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %10
  %14 = inttoptr i32 %11 to ptr
  br label %68

15:                                               ; preds = %10
  %16 = tail call i32 @hisi_clk_register_mux(ptr noundef nonnull @hi3798cv200_mux_clks, i32 noundef 4, ptr noundef nonnull %2) #4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %65

18:                                               ; preds = %15
  %19 = tail call i32 @hisi_clk_register_gate(ptr noundef nonnull @hi3798cv200_gate_clks, i32 noundef 41, ptr noundef nonnull %2) #4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %39

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %23 = load ptr, ptr %22, align 8
  %24 = tail call i32 @of_clk_add_provider(ptr noundef %23, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef nonnull %2) #4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %68, label %26

26:                                               ; preds = %21
  %27 = load ptr, ptr %2, align 4
  br label %28

28:                                               ; preds = %36, %26
  %29 = phi i32 [ %37, %36 ], [ 0, %26 ]
  %30 = getelementptr %struct.hisi_gate_clock, ptr @hi3798cv200_gate_clks, i32 %29
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr ptr, ptr %27, i32 %31
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %28
  tail call void @clk_unregister_gate(ptr noundef nonnull %33) #4
  br label %36

36:                                               ; preds = %35, %28
  %37 = add nuw nsw i32 %29, 1
  %38 = icmp eq i32 %37, 41
  br i1 %38, label %39, label %28

39:                                               ; preds = %36, %18
  %40 = phi i32 [ %19, %18 ], [ %24, %36 ]
  %41 = load ptr, ptr %2, align 4
  %42 = load i32, ptr @hi3798cv200_mux_clks, align 4
  %43 = getelementptr ptr, ptr %41, i32 %42
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %39
  tail call void @clk_unregister_mux(ptr noundef nonnull %44) #4
  br label %47

47:                                               ; preds = %46, %39
  %48 = load i32, ptr getelementptr inbounds ([4 x %struct.hisi_mux_clock], ptr @hi3798cv200_mux_clks, i32 0, i32 1), align 4
  %49 = getelementptr ptr, ptr %41, i32 %48
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %47
  tail call void @clk_unregister_mux(ptr noundef nonnull %50) #4
  br label %53

53:                                               ; preds = %52, %47
  %54 = load i32, ptr getelementptr inbounds ([4 x %struct.hisi_mux_clock], ptr @hi3798cv200_mux_clks, i32 0, i32 2), align 4
  %55 = getelementptr ptr, ptr %41, i32 %54
  %56 = load ptr, ptr %55, align 4
  %57 = icmp eq ptr %56, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %53
  tail call void @clk_unregister_mux(ptr noundef nonnull %56) #4
  br label %59

59:                                               ; preds = %58, %53
  %60 = load i32, ptr getelementptr inbounds ([4 x %struct.hisi_mux_clock], ptr @hi3798cv200_mux_clks, i32 0, i32 3), align 4
  %61 = getelementptr ptr, ptr %41, i32 %60
  %62 = load ptr, ptr %61, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %65, label %64

64:                                               ; preds = %59
  tail call void @clk_unregister_mux(ptr noundef nonnull %62) #4
  br label %65

65:                                               ; preds = %64, %59, %15
  %66 = phi i32 [ %16, %15 ], [ %40, %59 ], [ %40, %64 ]
  tail call fastcc void @hisi_clk_unregister_fixed_rate(ptr noundef nonnull %2)
  %67 = inttoptr i32 %66 to ptr
  br label %68

68:                                               ; preds = %65, %21, %13, %8, %1
  %69 = phi ptr [ %9, %8 ], [ %14, %13 ], [ %67, %65 ], [ %2, %21 ], [ inttoptr (i32 -12 to ptr), %1 ]
  ret ptr %69
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hi3798cv200_clk_unregister(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %5 = load ptr, ptr %4, align 8
  tail call void @of_clk_del_provider(ptr noundef %5) #4
  %6 = load ptr, ptr %3, align 4
  %7 = load ptr, ptr %6, align 4
  br label %8

8:                                                ; preds = %16, %1
  %9 = phi i32 [ %17, %16 ], [ 0, %1 ]
  %10 = getelementptr %struct.hisi_gate_clock, ptr @hi3798cv200_gate_clks, i32 %9
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr ptr, ptr %7, i32 %11
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %8
  tail call void @clk_unregister_gate(ptr noundef nonnull %13) #4
  br label %16

16:                                               ; preds = %15, %8
  %17 = add nuw nsw i32 %9, 1
  %18 = icmp eq i32 %17, 41
  br i1 %18, label %19, label %8

19:                                               ; preds = %16
  %20 = load ptr, ptr %3, align 4
  %21 = load ptr, ptr %20, align 4
  %22 = load i32, ptr @hi3798cv200_mux_clks, align 4
  %23 = getelementptr ptr, ptr %21, i32 %22
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %19
  tail call void @clk_unregister_mux(ptr noundef nonnull %24) #4
  br label %27

27:                                               ; preds = %26, %19
  %28 = load i32, ptr getelementptr inbounds ([4 x %struct.hisi_mux_clock], ptr @hi3798cv200_mux_clks, i32 0, i32 1), align 4
  %29 = getelementptr ptr, ptr %21, i32 %28
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %27
  tail call void @clk_unregister_mux(ptr noundef nonnull %30) #4
  br label %33

33:                                               ; preds = %32, %27
  %34 = load i32, ptr getelementptr inbounds ([4 x %struct.hisi_mux_clock], ptr @hi3798cv200_mux_clks, i32 0, i32 2), align 4
  %35 = getelementptr ptr, ptr %21, i32 %34
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %33
  tail call void @clk_unregister_mux(ptr noundef nonnull %36) #4
  br label %39

39:                                               ; preds = %38, %33
  %40 = load i32, ptr getelementptr inbounds ([4 x %struct.hisi_mux_clock], ptr @hi3798cv200_mux_clks, i32 0, i32 3), align 4
  %41 = getelementptr ptr, ptr %21, i32 %40
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %39
  tail call void @clk_unregister_mux(ptr noundef nonnull %42) #4
  br label %45

45:                                               ; preds = %44, %39
  %46 = load ptr, ptr %3, align 4
  tail call fastcc void @hisi_clk_unregister_fixed_rate(ptr noundef %46)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hisi_clk_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hisi_clk_register_phase(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

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

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @hisi_clk_unregister_fixed_rate(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = load ptr, ptr %0, align 4
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @clk_unregister_fixed_rate(ptr noundef nonnull %3) #4
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr ptr, ptr %2, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  tail call void @clk_unregister_fixed_rate(ptr noundef nonnull %8) #4
  br label %11

11:                                               ; preds = %10, %6
  %12 = getelementptr ptr, ptr %2, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  tail call void @clk_unregister_fixed_rate(ptr noundef nonnull %13) #4
  br label %16

16:                                               ; preds = %15, %11
  %17 = getelementptr ptr, ptr %2, i32 81
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  tail call void @clk_unregister_fixed_rate(ptr noundef nonnull %18) #4
  br label %21

21:                                               ; preds = %20, %16
  %22 = getelementptr ptr, ptr %2, i32 65
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  tail call void @clk_unregister_fixed_rate(ptr noundef nonnull %23) #4
  br label %26

26:                                               ; preds = %25, %21
  %27 = getelementptr ptr, ptr %2, i32 66
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  tail call void @clk_unregister_fixed_rate(ptr noundef nonnull %28) #4
  br label %31

31:                                               ; preds = %30, %26
  %32 = getelementptr ptr, ptr %2, i32 82
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %31
  tail call void @clk_unregister_fixed_rate(ptr noundef nonnull %33) #4
  br label %36

36:                                               ; preds = %35, %31
  %37 = getelementptr ptr, ptr %2, i32 67
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %36
  tail call void @clk_unregister_fixed_rate(ptr noundef nonnull %38) #4
  br label %41

41:                                               ; preds = %40, %36
  %42 = getelementptr ptr, ptr %2, i32 83
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %41
  tail call void @clk_unregister_fixed_rate(ptr noundef nonnull %43) #4
  br label %46

46:                                               ; preds = %45, %41
  %47 = getelementptr ptr, ptr %2, i32 68
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %46
  tail call void @clk_unregister_fixed_rate(ptr noundef nonnull %48) #4
  br label %51

51:                                               ; preds = %50, %46
  %52 = getelementptr ptr, ptr %2, i32 69
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %51
  tail call void @clk_unregister_fixed_rate(ptr noundef nonnull %53) #4
  br label %56

56:                                               ; preds = %55, %51
  %57 = getelementptr ptr, ptr %2, i32 70
  %58 = load ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %61, label %60

60:                                               ; preds = %56
  tail call void @clk_unregister_fixed_rate(ptr noundef nonnull %58) #4
  br label %61

61:                                               ; preds = %60, %56
  %62 = getelementptr ptr, ptr %2, i32 84
  %63 = load ptr, ptr %62, align 4
  %64 = icmp eq ptr %63, null
  br i1 %64, label %66, label %65

65:                                               ; preds = %61
  tail call void @clk_unregister_fixed_rate(ptr noundef nonnull %63) #4
  br label %66

66:                                               ; preds = %65, %61
  %67 = getelementptr ptr, ptr %2, i32 71
  %68 = load ptr, ptr %67, align 4
  %69 = icmp eq ptr %68, null
  br i1 %69, label %71, label %70

70:                                               ; preds = %66
  tail call void @clk_unregister_fixed_rate(ptr noundef nonnull %68) #4
  br label %71

71:                                               ; preds = %70, %66
  %72 = getelementptr ptr, ptr %2, i32 72
  %73 = load ptr, ptr %72, align 4
  %74 = icmp eq ptr %73, null
  br i1 %74, label %76, label %75

75:                                               ; preds = %71
  tail call void @clk_unregister_fixed_rate(ptr noundef nonnull %73) #4
  br label %76

76:                                               ; preds = %75, %71
  ret void
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
define internal ptr @hi3798cv200_sysctrl_clk_register(ptr noundef %0) #2 {
  %2 = tail call ptr @hisi_clk_alloc(ptr noundef %0, i32 noundef 16) #4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %32, label %4

4:                                                ; preds = %1
  %5 = tail call i32 @hisi_clk_register_gate(ptr noundef nonnull @hi3798cv200_sysctrl_gate_clks, i32 noundef 3, ptr noundef nonnull %2) #4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %4
  %8 = inttoptr i32 %5 to ptr
  br label %32

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %11 = load ptr, ptr %10, align 8
  %12 = tail call i32 @of_clk_add_provider(ptr noundef %11, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef nonnull %2) #4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %32, label %14

14:                                               ; preds = %9
  %15 = load ptr, ptr %2, align 4
  %16 = getelementptr ptr, ptr %15, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %14
  tail call void @clk_unregister_gate(ptr noundef nonnull %17) #4
  br label %20

20:                                               ; preds = %19, %14
  %21 = getelementptr ptr, ptr %15, i32 3
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  tail call void @clk_unregister_gate(ptr noundef nonnull %22) #4
  br label %25

25:                                               ; preds = %24, %20
  %26 = getelementptr ptr, ptr %15, i32 5
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  tail call void @clk_unregister_gate(ptr noundef nonnull %27) #4
  br label %30

30:                                               ; preds = %29, %25
  %31 = inttoptr i32 %12 to ptr
  br label %32

32:                                               ; preds = %30, %9, %7, %1
  %33 = phi ptr [ %8, %7 ], [ %31, %30 ], [ %2, %9 ], [ inttoptr (i32 -12 to ptr), %1 ]
  ret ptr %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hi3798cv200_sysctrl_clk_unregister(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %5 = load ptr, ptr %4, align 8
  tail call void @of_clk_del_provider(ptr noundef %5) #4
  %6 = load ptr, ptr %3, align 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr ptr, ptr %7, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  tail call void @clk_unregister_gate(ptr noundef nonnull %9) #4
  br label %12

12:                                               ; preds = %11, %1
  %13 = getelementptr ptr, ptr %7, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  tail call void @clk_unregister_gate(ptr noundef nonnull %14) #4
  br label %17

17:                                               ; preds = %16, %12
  %18 = getelementptr ptr, ptr %7, i32 5
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  tail call void @clk_unregister_gate(ptr noundef nonnull %19) #4
  br label %22

22:                                               ; preds = %21, %17
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }

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
